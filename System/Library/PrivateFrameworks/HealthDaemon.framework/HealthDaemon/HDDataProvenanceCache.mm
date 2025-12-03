@interface HDDataProvenanceCache
- (HDDataProvenanceCache)initWithProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose;
- (id)allCodableObjectCollections;
- (id)allCodableObjectCollectionsByProvenance;
- (id)codableObjectCollectionForProvenance:(id)provenance profile:(id)profile;
- (id)codableProvenanceWithProvenance:(id)provenance;
- (id)codableSourceWithProvenance:(id)provenance profile:(id)profile;
- (id)contributorForReference:(id)reference profile:(id)profile error:(id *)error;
- (id)deviceForPersistentID:(id)d profile:(id)profile error:(id *)error;
- (id)deviceUUIDBytesWithProvenance:(id)provenance;
- (id)provenanceWithID:(id)d;
- (id)sourceRevisionForProvenanceID:(id)d dataProvenance:(id)provenance profile:(id)profile error:(id *)error;
- (void)clearCodableObjectCollections;
@end

@implementation HDDataProvenanceCache

- (id)allCodableObjectCollections
{
  codableObjectCollectionsByProvenance = self->_codableObjectCollectionsByProvenance;
  if (codableObjectCollectionsByProvenance)
  {
    allValues = [(NSMutableDictionary *)codableObjectCollectionsByProvenance allValues];
  }

  else
  {
    allValues = MEMORY[0x277CBEBF8];
  }

  return allValues;
}

- (void)clearCodableObjectCollections
{
  codableObjectCollectionsByProvenance = self->_codableObjectCollectionsByProvenance;
  self->_codableObjectCollectionsByProvenance = 0;
  MEMORY[0x2821F96F8]();
}

- (HDDataProvenanceCache)initWithProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose
{
  profileCopy = profile;
  transactionCopy = transaction;
  v33.receiver = self;
  v33.super_class = HDDataProvenanceCache;
  v10 = [(HDDataProvenanceCache *)&v33 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_profile, profileCopy);
    dataProvenanceManager = [profileCopy dataProvenanceManager];
    provenanceManager = v11->_provenanceManager;
    v11->_provenanceManager = dataProvenanceManager;

    objc_storeStrong(&v11->_transaction, transaction);
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

    v30 = [HDSourceEntity entityEncoderForProfile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:0 authorizationFilter:0];
    sourceEncoder = v11->_sourceEncoder;
    v11->_sourceEncoder = v30;
  }

  return v11;
}

- (id)provenanceWithID:(id)d
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_provenanceByID objectForKeyedSubscript:dCopy];
  if (v5)
  {
    v6 = v5;
    goto LABEL_23;
  }

  provenanceManager = self->_provenanceManager;
  transaction = self->_transaction;
  v36 = 0;
  v9 = [(HDDataProvenanceManager *)provenanceManager originProvenanceForPersistentID:dCopy transaction:transaction error:&v36];
  v10 = v36;
  if (!v9)
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v39 = dCopy;
      v40 = 2114;
      v41 = v10;
      _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "failed to find provenance for provenance %{public}@: %{public}@", buf, 0x16u);
    }

    v6 = 0;
    goto LABEL_22;
  }

  v11 = v9;
  contributorReference = [v11 contributorReference];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v37 = 0;
  v14 = [HDContributorEntity externalReferenceForContributorReference:contributorReference profile:WeakRetained error:&v37];
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
    syncProvenance = [v11 syncProvenance];
    syncIdentity = [v11 syncIdentity];
    productType = [v11 productType];
    systemBuild = [v11 systemBuild];
    [v11 operatingSystemVersion];
    sourceVersion = [v11 sourceVersion];
    [v11 timeZoneName];
    v24 = v34 = v15;
    [v11 sourceID];
    v25 = v33 = v10;
    deviceID = [v11 deviceID];
    v18 = [HDDataOriginProvenance dataProvenanceWithSyncProvenance:syncProvenance syncIdentity:syncIdentity productType:productType systemBuild:systemBuild operatingSystemVersion:buf sourceVersion:sourceVersion timeZoneName:v24 sourceID:v25 deviceID:deviceID contributorReference:v35];

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
    [(NSMutableDictionary *)self->_provenanceByID setObject:v18 forKeyedSubscript:dCopy];
    v6 = v18;
  }

  else
  {
    _HKInitializeLogging();
    v28 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v39 = dCopy;
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

- (id)codableSourceWithProvenance:(id)provenance profile:(id)profile
{
  v26 = *MEMORY[0x277D85DE8];
  provenanceCopy = provenance;
  profileCopy = profile;
  if ([(HDEntityEncoder *)self->_sourceEncoder purpose])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataProvenanceCache.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"[_sourceEncoder purpose] == HDEntityEncodingPurposeCodableObjectCreation"}];
  }

  sourceID = [provenanceCopy sourceID];
  v10 = [(NSMutableDictionary *)self->_codableSourcesByID objectForKeyedSubscript:sourceID];
  if (!v10)
  {
    v11 = -[HDSQLiteEntity initWithPersistentID:]([HDSourceEntity alloc], "initWithPersistentID:", [sourceID longLongValue]);
    unprotectedDatabase = [(HDDatabaseTransaction *)self->_transaction unprotectedDatabase];
    v13 = [(HDSQLiteEntity *)v11 existsInDatabase:unprotectedDatabase];

    if (v13)
    {
      transaction = self->_transaction;
      sourceEncoder = self->_sourceEncoder;
      v21 = 0;
      v10 = [(HDSourceEntity *)v11 codableSourceWithEncoder:sourceEncoder transaction:transaction profile:profileCopy error:&v21];
      v16 = v21;
      if (v10)
      {
        [(NSMutableDictionary *)self->_codableSourcesByID setObject:v10 forKeyedSubscript:sourceID];
      }

      else
      {
        _HKInitializeLogging();
        v17 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v23 = sourceID;
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

- (id)deviceUUIDBytesWithProvenance:(id)provenance
{
  v18 = *MEMORY[0x277D85DE8];
  deviceID = [provenance deviceID];
  hk_dataForUUIDBytes = [(NSMutableDictionary *)self->_deviceUUIDBytesByID objectForKeyedSubscript:deviceID];
  if (!hk_dataForUUIDBytes)
  {
    v6 = -[HDSQLiteEntity initWithPersistentID:]([HDDeviceEntity alloc], "initWithPersistentID:", [deviceID longLongValue]);
    unprotectedDatabase = [(HDDatabaseTransaction *)self->_transaction unprotectedDatabase];
    v13 = 0;
    v8 = [(HDDeviceEntity *)v6 deviceUUIDInDatabase:unprotectedDatabase error:&v13];
    v9 = v13;

    if (v8)
    {
      hk_dataForUUIDBytes = [v8 hk_dataForUUIDBytes];
      [(NSMutableDictionary *)self->_deviceUUIDBytesByID setObject:hk_dataForUUIDBytes forKeyedSubscript:deviceID];
    }

    else
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = deviceID;
        v16 = 2114;
        v17 = v9;
        _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Failed to find device %{public}@: %{public}@", buf, 0x16u);
      }

      hk_dataForUUIDBytes = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return hk_dataForUUIDBytes;
}

- (id)codableProvenanceWithProvenance:(id)provenance
{
  provenanceCopy = provenance;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [(HDDataProvenanceCache *)self codableSourceWithProvenance:provenanceCopy profile:WeakRetained];

  if (v6)
  {
    v7 = [(HDDataProvenanceCache *)self deviceUUIDBytesWithProvenance:provenanceCopy];
    sourceVersion = [provenanceCopy sourceVersion];
    v9 = objc_alloc_init(HDCodableProvenance);
    systemBuild = [provenanceCopy systemBuild];
    [(HDCodableProvenance *)v9 setOriginBuild:systemBuild];

    productType = [provenanceCopy productType];
    [(HDCodableProvenance *)v9 setOriginProductType:productType];

    timeZoneName = [provenanceCopy timeZoneName];
    [(HDCodableProvenance *)v9 setTimeZoneName:timeZoneName];

    uuid = [v6 uuid];
    [(HDCodableProvenance *)v9 setSourceUUID:uuid];

    [(HDCodableProvenance *)v9 setSourceVersion:sourceVersion];
    [(HDCodableProvenance *)v9 setDeviceUUID:v7];
    if (provenanceCopy)
    {
      [provenanceCopy operatingSystemVersion];
      [(HDCodableProvenance *)v9 setOriginMajorVersion:v23];
      [provenanceCopy operatingSystemVersion];
      [(HDCodableProvenance *)v9 setOriginMinorVersion:v22];
      [provenanceCopy operatingSystemVersion];
      v14 = v21;
    }

    else
    {
      [(HDCodableProvenance *)v9 setOriginMajorVersion:0];
      [(HDCodableProvenance *)v9 setOriginMinorVersion:0];
      v14 = 0;
    }

    [(HDCodableProvenance *)v9 setOriginPatchVersion:v14];
    contributorReference = [provenanceCopy contributorReference];
    contributorType = [contributorReference contributorType];

    if (contributorType != 2)
    {
      contributorReference2 = [provenanceCopy contributorReference];
      uUID = [contributorReference2 UUID];
      hk_dataForUUIDBytes = [uUID hk_dataForUUIDBytes];
      [(HDCodableProvenance *)v9 setContributorUUID:hk_dataForUUIDBytes];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)codableObjectCollectionForProvenance:(id)provenance profile:(id)profile
{
  v29 = *MEMORY[0x277D85DE8];
  provenanceCopy = provenance;
  profileCopy = profile;
  codableObjectCollectionsByProvenance = self->_codableObjectCollectionsByProvenance;
  if (!codableObjectCollectionsByProvenance)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = self->_codableObjectCollectionsByProvenance;
    self->_codableObjectCollectionsByProvenance = v9;

    codableObjectCollectionsByProvenance = self->_codableObjectCollectionsByProvenance;
  }

  v11 = [(NSMutableDictionary *)codableObjectCollectionsByProvenance objectForKeyedSubscript:provenanceCopy];
  if (v11)
  {
    goto LABEL_9;
  }

  v12 = [(HDDataProvenanceCache *)self codableSourceWithProvenance:provenanceCopy profile:profileCopy];
  if (!v12)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v13 = [(HDDataProvenanceCache *)self codableProvenanceWithProvenance:provenanceCopy];
  v11 = objc_alloc_init(HDCodableObjectCollection);
  [(HDCodableObjectCollection *)v11 setSource:v12];
  [(HDCodableObjectCollection *)v11 setProvenance:v13];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  syncIdentityManager = [WeakRetained syncIdentityManager];
  syncIdentity = [provenanceCopy syncIdentity];
  transaction = self->_transaction;
  v26 = 0;
  v18 = [syncIdentityManager identityForEntityID:syncIdentity transaction:transaction error:&v26];
  v19 = v26;

  if (v18)
  {
    identity = [v18 identity];
    codableSyncIdentity = [identity codableSyncIdentity];
    [(HDCodableObjectCollection *)v11 setSyncIdentity:codableSyncIdentity];

    [(NSMutableDictionary *)self->_codableObjectCollectionsByProvenance setObject:v11 forKeyedSubscript:provenanceCopy];
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

- (id)sourceRevisionForProvenanceID:(id)d dataProvenance:(id)provenance profile:(id)profile error:(id *)error
{
  dCopy = d;
  provenanceCopy = provenance;
  profileCopy = profile;
  if ([(HDEntityEncoder *)self->_sourceEncoder purpose]!= 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataProvenanceCache.m" lineNumber:260 description:{@"Invalid parameter not satisfying: %@", @"[_sourceEncoder purpose] == HDEntityEncodingPurposeObjectInstantiation"}];
  }

  v14 = [(NSMutableDictionary *)self->_sourceRevisionByDataProvenanceIDCache objectForKeyedSubscript:dCopy];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    sourceID = [provenanceCopy sourceID];
    v17 = profileCopy;
    if ([(HDEntityEncoder *)self->_sourceEncoder purpose]!= 1)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:sel__sourceForPersistentID_profile_error_ object:self file:@"HDDataProvenanceCache.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"[_sourceEncoder purpose] == HDEntityEncodingPurposeObjectInstantiation"}];
    }

    v18 = [(NSMutableDictionary *)self->_sourceByPersistentIDCache objectForKeyedSubscript:sourceID];
    if (!v18)
    {
      sourceManager = [v17 sourceManager];
      v18 = [sourceManager clientSourceForPersistentID:sourceID error:error];

      if (v18)
      {
        [(NSMutableDictionary *)self->_sourceByPersistentIDCache setObject:v18 forKeyedSubscript:sourceID];
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

      v40 = profileCopy;
      v43 = 0uLL;
      v44 = 0;
      if (provenanceCopy)
      {
        [provenanceCopy operatingSystemVersion];
      }

      sourceVersion = [provenanceCopy sourceVersion];
      productType = [provenanceCopy productType];
      v41 = v43;
      v42 = v44;
      v23 = HKNSOperatingSystemVersionString();
      v24 = @"<null>";
      if (sourceVersion)
      {
        v25 = sourceVersion;
      }

      else
      {
        v25 = @"<null>";
      }

      if (productType)
      {
        v26 = productType;
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
        if ([(__CFString *)sourceVersion isEqualToString:&stru_283BF39C8])
        {
          v29 = 0;
        }

        else
        {
          v29 = sourceVersion;
        }

        v39 = v20;
        v30 = v29;
        if ([(__CFString *)productType isEqualToString:@"UnknownDevice"])
        {
          v31 = 0;
        }

        else
        {
          v31 = productType;
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

      [(NSMutableDictionary *)self->_sourceRevisionByDataProvenanceIDCache setObject:v28 forKeyedSubscript:dCopy];
      v15 = v28;

      profileCopy = v40;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)deviceForPersistentID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  profileCopy = profile;
  v10 = [(NSMutableDictionary *)self->_deviceByPersistentIDCache objectForKeyedSubscript:dCopy];
  if (!v10)
  {
    deviceManager = [profileCopy deviceManager];
    v10 = [deviceManager deviceForPersistentID:dCopy error:error];

    if (v10)
    {
      [(NSMutableDictionary *)self->_deviceByPersistentIDCache setObject:v10 forKeyedSubscript:dCopy];
    }
  }

  return v10;
}

- (id)contributorForReference:(id)reference profile:(id)profile error:(id *)error
{
  referenceCopy = reference;
  profileCopy = profile;
  v10 = [(NSMutableDictionary *)self->_contributorByReferenceCache objectForKeyedSubscript:referenceCopy];
  if (!v10)
  {
    contributorManager = [profileCopy contributorManager];
    v10 = [contributorManager contributorForReference:referenceCopy error:error];

    if (v10)
    {
      [(NSMutableDictionary *)self->_contributorByReferenceCache setObject:v10 forKeyedSubscript:referenceCopy];
    }
  }

  return v10;
}

@end