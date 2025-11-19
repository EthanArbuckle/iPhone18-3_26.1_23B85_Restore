@interface HDDataProvenanceCache
- (HDDataProvenanceCache)initWithProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5;
- (id)allCodableObjectCollections;
- (id)allCodableObjectCollectionsByProvenance;
- (id)codableObjectCollectionForProvenance:(id)a3 profile:(id)a4;
- (id)codableProvenanceWithProvenance:(id)a3;
- (id)codableSourceWithProvenance:(id)a3 profile:(id)a4;
- (id)contributorForReference:(id)a3 profile:(id)a4 error:(id *)a5;
- (id)deviceForPersistentID:(id)a3 profile:(id)a4 error:(id *)a5;
- (id)deviceUUIDBytesWithProvenance:(id)a3;
- (id)provenanceWithID:(id)a3;
- (id)sourceRevisionForProvenanceID:(id)a3 dataProvenance:(id)a4 profile:(id)a5 error:(id *)a6;
- (void)clearCodableObjectCollections;
@end

@implementation HDDataProvenanceCache

- (id)allCodableObjectCollections
{
  codableObjectCollectionsByProvenance = self->_codableObjectCollectionsByProvenance;
  if (codableObjectCollectionsByProvenance)
  {
    v4 = [(NSMutableDictionary *)codableObjectCollectionsByProvenance allValues];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (void)clearCodableObjectCollections
{
  codableObjectCollectionsByProvenance = self->_codableObjectCollectionsByProvenance;
  self->_codableObjectCollectionsByProvenance = 0;
  MEMORY[0x2821F96F8]();
}

- (HDDataProvenanceCache)initWithProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v33.receiver = self;
  v33.super_class = HDDataProvenanceCache;
  v10 = [(HDDataProvenanceCache *)&v33 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_profile, v8);
    v12 = [v8 dataProvenanceManager];
    provenanceManager = v11->_provenanceManager;
    v11->_provenanceManager = v12;

    objc_storeStrong(&v11->_transaction, a4);
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    provenanceByID = v11->_provenanceByID;
    v11->_provenanceByID = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    codableSourcesByID = v11->_codableSourcesByID;
    v11->_codableSourcesByID = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceUUIDBytesByID = v11->_deviceUUIDBytesByID;
    v11->_deviceUUIDBytesByID = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sourceByPersistentIDCache = v11->_sourceByPersistentIDCache;
    v11->_sourceByPersistentIDCache = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sourceRevisionByDataProvenanceIDCache = v11->_sourceRevisionByDataProvenanceIDCache;
    v11->_sourceRevisionByDataProvenanceIDCache = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sourceRevisionsDictionaryBySourceCache = v11->_sourceRevisionsDictionaryBySourceCache;
    v11->_sourceRevisionsDictionaryBySourceCache = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceByPersistentIDCache = v11->_deviceByPersistentIDCache;
    v11->_deviceByPersistentIDCache = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    contributorByReferenceCache = v11->_contributorByReferenceCache;
    v11->_contributorByReferenceCache = v28;

    v30 = [HDSourceEntity entityEncoderForProfile:v8 transaction:v9 purpose:a5 encodingOptions:0 authorizationFilter:0];
    sourceEncoder = v11->_sourceEncoder;
    v11->_sourceEncoder = v30;
  }

  return v11;
}

- (id)provenanceWithID:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_provenanceByID objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = v5;
    goto LABEL_23;
  }

  provenanceManager = self->_provenanceManager;
  transaction = self->_transaction;
  v36 = 0;
  v9 = [(HDDataProvenanceManager *)provenanceManager originProvenanceForPersistentID:v4 transaction:transaction error:&v36];
  v10 = v36;
  if (!v9)
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v39 = v4;
      v40 = 2114;
      v41 = v10;
      _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "failed to find provenance for provenance %{public}@: %{public}@", buf, 0x16u);
    }

    v6 = 0;
    goto LABEL_22;
  }

  v11 = v9;
  v12 = [v11 contributorReference];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v37 = 0;
  v14 = [HDContributorEntity externalReferenceForContributorReference:v12 profile:WeakRetained error:&v37];
  v15 = v37;

  v35 = v14;
  if (v14)
  {
    goto LABEL_14;
  }

  if (![v15 hk_isTransactionInterruptedError])
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v39 = v15;
      _os_log_fault_impl(&dword_228986000, v20, OS_LOG_TYPE_FAULT, "Failed to externalize contributor reference: %{public}@", buf, 0xCu);
    }

    v35 = +[HDContributorReference contributorReferenceForNoContributor];
LABEL_14:
    v32 = [v11 syncProvenance];
    v31 = [v11 syncIdentity];
    v21 = [v11 productType];
    v22 = [v11 systemBuild];
    [v11 operatingSystemVersion];
    v23 = [v11 sourceVersion];
    [v11 timeZoneName];
    v24 = v34 = v15;
    [v11 sourceID];
    v25 = v33 = v10;
    v26 = [v11 deviceID];
    v18 = [HDDataOriginProvenance dataProvenanceWithSyncProvenance:v32 syncIdentity:v31 productType:v21 systemBuild:v22 operatingSystemVersion:buf sourceVersion:v23 timeZoneName:v24 sourceID:v25 deviceID:v26 contributorReference:v35];

    v10 = v33;
    v15 = v34;

LABEL_15:
    v17 = v10;

    goto LABEL_16;
  }

  v16 = v15;
  if (!v16)
  {
    v35 = 0;
    v18 = 0;
    goto LABEL_15;
  }

  v17 = v16;
  v18 = 0;

LABEL_16:
  v27 = v17;

  if (v18)
  {
    [(NSMutableDictionary *)self->_provenanceByID setObject:v18 forKeyedSubscript:v4];
    v6 = v18;
  }

  else
  {
    _HKInitializeLogging();
    v28 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v39 = v4;
      v40 = 2114;
      v41 = v27;
      _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "failed to externalize contributor for provenance %{public}@: %{public}@", buf, 0x16u);
    }

    v6 = 0;
  }

  v10 = v27;
LABEL_22:

LABEL_23:
  v29 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)codableSourceWithProvenance:(id)a3 profile:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([(HDEntityEncoder *)self->_sourceEncoder purpose])
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"HDDataProvenanceCache.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"[_sourceEncoder purpose] == HDEntityEncodingPurposeCodableObjectCreation"}];
  }

  v9 = [v7 sourceID];
  v10 = [(NSMutableDictionary *)self->_codableSourcesByID objectForKeyedSubscript:v9];
  if (!v10)
  {
    v11 = -[HDSQLiteEntity initWithPersistentID:]([HDSourceEntity alloc], "initWithPersistentID:", [v9 longLongValue]);
    v12 = [(HDDatabaseTransaction *)self->_transaction unprotectedDatabase];
    v13 = [(HDSQLiteEntity *)v11 existsInDatabase:v12];

    if (v13)
    {
      transaction = self->_transaction;
      sourceEncoder = self->_sourceEncoder;
      v21 = 0;
      v10 = [(HDSourceEntity *)v11 codableSourceWithEncoder:sourceEncoder transaction:transaction profile:v8 error:&v21];
      v16 = v21;
      if (v10)
      {
        [(NSMutableDictionary *)self->_codableSourcesByID setObject:v10 forKeyedSubscript:v9];
      }

      else
      {
        _HKInitializeLogging();
        v17 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v23 = v9;
          v24 = 2114;
          v25 = v16;
          _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "Failed to get codable source for sourceID %{public}@: %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)deviceUUIDBytesWithProvenance:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [a3 deviceID];
  v5 = [(NSMutableDictionary *)self->_deviceUUIDBytesByID objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = -[HDSQLiteEntity initWithPersistentID:]([HDDeviceEntity alloc], "initWithPersistentID:", [v4 longLongValue]);
    v7 = [(HDDatabaseTransaction *)self->_transaction unprotectedDatabase];
    v13 = 0;
    v8 = [(HDDeviceEntity *)v6 deviceUUIDInDatabase:v7 error:&v13];
    v9 = v13;

    if (v8)
    {
      v5 = [v8 hk_dataForUUIDBytes];
      [(NSMutableDictionary *)self->_deviceUUIDBytesByID setObject:v5 forKeyedSubscript:v4];
    }

    else
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = v4;
        v16 = 2114;
        v17 = v9;
        _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Failed to find device %{public}@: %{public}@", buf, 0x16u);
      }

      v5 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)codableProvenanceWithProvenance:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [(HDDataProvenanceCache *)self codableSourceWithProvenance:v4 profile:WeakRetained];

  if (v6)
  {
    v7 = [(HDDataProvenanceCache *)self deviceUUIDBytesWithProvenance:v4];
    v8 = [v4 sourceVersion];
    v9 = objc_alloc_init(HDCodableProvenance);
    v10 = [v4 systemBuild];
    [(HDCodableProvenance *)v9 setOriginBuild:v10];

    v11 = [v4 productType];
    [(HDCodableProvenance *)v9 setOriginProductType:v11];

    v12 = [v4 timeZoneName];
    [(HDCodableProvenance *)v9 setTimeZoneName:v12];

    v13 = [v6 uuid];
    [(HDCodableProvenance *)v9 setSourceUUID:v13];

    [(HDCodableProvenance *)v9 setSourceVersion:v8];
    [(HDCodableProvenance *)v9 setDeviceUUID:v7];
    if (v4)
    {
      [v4 operatingSystemVersion];
      [(HDCodableProvenance *)v9 setOriginMajorVersion:v23];
      [v4 operatingSystemVersion];
      [(HDCodableProvenance *)v9 setOriginMinorVersion:v22];
      [v4 operatingSystemVersion];
      v14 = v21;
    }

    else
    {
      [(HDCodableProvenance *)v9 setOriginMajorVersion:0];
      [(HDCodableProvenance *)v9 setOriginMinorVersion:0];
      v14 = 0;
    }

    [(HDCodableProvenance *)v9 setOriginPatchVersion:v14];
    v15 = [v4 contributorReference];
    v16 = [v15 contributorType];

    if (v16 != 2)
    {
      v17 = [v4 contributorReference];
      v18 = [v17 UUID];
      v19 = [v18 hk_dataForUUIDBytes];
      [(HDCodableProvenance *)v9 setContributorUUID:v19];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)codableObjectCollectionForProvenance:(id)a3 profile:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  codableObjectCollectionsByProvenance = self->_codableObjectCollectionsByProvenance;
  if (!codableObjectCollectionsByProvenance)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = self->_codableObjectCollectionsByProvenance;
    self->_codableObjectCollectionsByProvenance = v9;

    codableObjectCollectionsByProvenance = self->_codableObjectCollectionsByProvenance;
  }

  v11 = [(NSMutableDictionary *)codableObjectCollectionsByProvenance objectForKeyedSubscript:v6];
  if (v11)
  {
    goto LABEL_9;
  }

  v12 = [(HDDataProvenanceCache *)self codableSourceWithProvenance:v6 profile:v7];
  if (!v12)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v13 = [(HDDataProvenanceCache *)self codableProvenanceWithProvenance:v6];
  v11 = objc_alloc_init(HDCodableObjectCollection);
  [(HDCodableObjectCollection *)v11 setSource:v12];
  [(HDCodableObjectCollection *)v11 setProvenance:v13];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [WeakRetained syncIdentityManager];
  v16 = [v6 syncIdentity];
  transaction = self->_transaction;
  v26 = 0;
  v18 = [v15 identityForEntityID:v16 transaction:transaction error:&v26];
  v19 = v26;

  if (v18)
  {
    v20 = [v18 identity];
    v21 = [v20 codableSyncIdentity];
    [(HDCodableObjectCollection *)v11 setSyncIdentity:v21];

    [(NSMutableDictionary *)self->_codableObjectCollectionsByProvenance setObject:v11 forKeyedSubscript:v6];
LABEL_8:

LABEL_9:
    v11 = v11;
    v22 = v11;
    goto LABEL_10;
  }

  _HKInitializeLogging();
  v25 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
  {
    *buf = 138543362;
    v28 = v19;
    _os_log_fault_impl(&dword_228986000, v25, OS_LOG_TYPE_FAULT, "Unable to create sync identity from HDDataOriginProvenance  %{public}@", buf, 0xCu);
  }

  v22 = 0;
LABEL_10:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)allCodableObjectCollectionsByProvenance
{
  if (self->_codableObjectCollectionsByProvenance)
  {
    return self->_codableObjectCollectionsByProvenance;
  }

  else
  {
    return MEMORY[0x277CBEC10];
  }
}

- (id)sourceRevisionForProvenanceID:(id)a3 dataProvenance:(id)a4 profile:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([(HDEntityEncoder *)self->_sourceEncoder purpose]!= 1)
  {
    v36 = [MEMORY[0x277CCA890] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"HDDataProvenanceCache.m" lineNumber:260 description:{@"Invalid parameter not satisfying: %@", @"[_sourceEncoder purpose] == HDEntityEncodingPurposeObjectInstantiation"}];
  }

  v14 = [(NSMutableDictionary *)self->_sourceRevisionByDataProvenanceIDCache objectForKeyedSubscript:v11];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v16 = [v12 sourceID];
    v17 = v13;
    if ([(HDEntityEncoder *)self->_sourceEncoder purpose]!= 1)
    {
      v37 = [MEMORY[0x277CCA890] currentHandler];
      [v37 handleFailureInMethod:sel__sourceForPersistentID_profile_error_ object:self file:@"HDDataProvenanceCache.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"[_sourceEncoder purpose] == HDEntityEncodingPurposeObjectInstantiation"}];
    }

    v18 = [(NSMutableDictionary *)self->_sourceByPersistentIDCache objectForKeyedSubscript:v16];
    if (!v18)
    {
      v19 = [v17 sourceManager];
      v18 = [v19 clientSourceForPersistentID:v16 error:a6];

      if (v18)
      {
        [(NSMutableDictionary *)self->_sourceByPersistentIDCache setObject:v18 forKeyedSubscript:v16];
      }
    }

    if (v18)
    {
      v20 = [(NSMutableDictionary *)self->_sourceRevisionsDictionaryBySourceCache objectForKeyedSubscript:v18];
      if (!v20)
      {
        v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(NSMutableDictionary *)self->_sourceRevisionsDictionaryBySourceCache setObject:v20 forKeyedSubscript:v18];
      }

      v40 = v13;
      v43 = 0uLL;
      v44 = 0;
      if (v12)
      {
        [v12 operatingSystemVersion];
      }

      v21 = [v12 sourceVersion];
      v22 = [v12 productType];
      v41 = v43;
      v42 = v44;
      v23 = HKNSOperatingSystemVersionString();
      v24 = @"<null>";
      if (v21)
      {
        v25 = v21;
      }

      else
      {
        v25 = @"<null>";
      }

      if (v22)
      {
        v26 = v22;
      }

      else
      {
        v26 = @"<null>";
      }

      if (v23)
      {
        v24 = v23;
      }

      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@\n%@", v25, v26, v24];
      v28 = [v20 objectForKeyedSubscript:v27];
      if (!v28)
      {
        if ([(__CFString *)v21 isEqualToString:&stru_283BF39C8])
        {
          v29 = 0;
        }

        else
        {
          v29 = v21;
        }

        v39 = v20;
        v30 = v29;
        if ([(__CFString *)v22 isEqualToString:@"UnknownDevice"])
        {
          v31 = 0;
        }

        else
        {
          v31 = v22;
        }

        v32 = MEMORY[0x277CCDA18];
        v38 = v23;
        v33 = v31;
        v34 = [v32 alloc];
        v41 = v43;
        v42 = v44;
        v28 = [v34 initWithSource:v18 version:v30 productType:v33 operatingSystemVersion:&v41];

        v23 = v38;
        v20 = v39;
        [v39 setObject:v28 forKeyedSubscript:v27];
      }

      [(NSMutableDictionary *)self->_sourceRevisionByDataProvenanceIDCache setObject:v28 forKeyedSubscript:v11];
      v15 = v28;

      v13 = v40;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)deviceForPersistentID:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_deviceByPersistentIDCache objectForKeyedSubscript:v8];
  if (!v10)
  {
    v11 = [v9 deviceManager];
    v10 = [v11 deviceForPersistentID:v8 error:a5];

    if (v10)
    {
      [(NSMutableDictionary *)self->_deviceByPersistentIDCache setObject:v10 forKeyedSubscript:v8];
    }
  }

  return v10;
}

- (id)contributorForReference:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_contributorByReferenceCache objectForKeyedSubscript:v8];
  if (!v10)
  {
    v11 = [v9 contributorManager];
    v10 = [v11 contributorForReference:v8 error:a5];

    if (v10)
    {
      [(NSMutableDictionary *)self->_contributorByReferenceCache setObject:v10 forKeyedSubscript:v8];
    }
  }

  return v10;
}

@end