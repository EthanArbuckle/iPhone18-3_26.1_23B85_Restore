@interface HDDataProvenanceManager
- (HDDataProvenanceManager)initWithProfile:(id)a3;
- (NSString)description;
- (id)_localTimeZoneName;
- (id)deviceNoneID;
- (id)localDataProvenanceForSourceEntity:(id)a3 version:(id)a4 deviceEntity:(id)a5;
- (id)localDataProvenanceForSourceEntity:(id)a3 version:(id)a4 deviceEntity:(id)a5 timezone:(id)a6 OSVersion:(id *)a7;
- (id)localDeviceID;
- (id)localSourceID;
- (id)noneContributorReference;
- (id)originProvenanceForPersistentID:(id)a3 transaction:(id)a4 error:(id *)a5;
- (id)primaryUserContributorReference;
- (id)provenanceEntityForProvenance:(id)a3 error:(id *)a4;
- (id)provenanceEntityForProvenance:(id)a3 transaction:(id)a4 error:(id *)a5;
- (void)_loadDefaults;
@end

@implementation HDDataProvenanceManager

- (void)_loadDefaults
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_14;
  }

  v2 = atomic_load((a1 + 72));
  if (v2)
  {
    goto LABEL_14;
  }

  v3 = [(HDDataProvenanceManager *)a1 noneContributorReference];

  if (!v3)
  {
    v4 = +[HDContributorReference contributorReferenceForNoContributor];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v7 = *(a1 + 24);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __56__HDDataProvenanceManager__setNoneContributorReference___block_invoke;
      v26 = &unk_278613920;
      v27 = a1;
      v8 = v6;
      v28 = v8;
      [v7 hk_withLock:buf];
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if ([WeakRetained profileType] == 1)
  {
    goto LABEL_8;
  }

  v10 = [(HDDataProvenanceManager *)a1 primaryUserContributorReference];

  if (!v10)
  {
    v18 = +[HDContributorReference contributorReferenceForPrimaryUser];
    if (v18)
    {
      v19 = v18;
      v20 = *(a1 + 24);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __63__HDDataProvenanceManager__setPrimaryUserContributorReference___block_invoke;
      v26 = &unk_278613920;
      v27 = a1;
      WeakRetained = v19;
      v28 = WeakRetained;
      [v20 hk_withLock:buf];
    }

    else
    {
      WeakRetained = 0;
    }

LABEL_8:
  }

  v11 = objc_loadWeakRetained((a1 + 8));
  v12 = [v11 database];
  v13 = +[HDDatabaseTransactionContext contextForWriting];
  v23[4] = a1;
  v24 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __40__HDDataProvenanceManager__loadDefaults__block_invoke;
  v23[3] = &unk_278616048;
  v14 = [v12 performTransactionWithContext:v13 error:&v24 block:v23 inaccessibilityHandler:0];
  v15 = v24;

  if ((v14 & 1) == 0)
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v21 = v16;
      v22 = objc_opt_class();
      *buf = 138412546;
      *&buf[4] = v22;
      *&buf[12] = 2114;
      *&buf[14] = v15;
      _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%@: Failed to load data provenance default values: %{public}@", buf, 0x16u);
    }
  }

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];
}

- (id)localSourceID
{
  if (a1)
  {
    v1 = atomic_load((a1 + 72));
    if (v1)
    {
      v2 = *(a1 + 32);
    }

    else
    {
      v6 = 0;
      v7 = &v6;
      v8 = 0x3032000000;
      v9 = __Block_byref_object_copy__84;
      v10 = __Block_byref_object_dispose__84;
      v11 = 0;
      v3 = *(a1 + 24);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __40__HDDataProvenanceManager_localSourceID__block_invoke;
      v5[3] = &unk_278613990;
      v5[4] = a1;
      v5[5] = &v6;
      [v3 hk_withLock:v5];
      v2 = v7[5];
      _Block_object_dispose(&v6, 8);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_localTimeZoneName
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v2 = [WeakRetained daemon];
    v3 = [v2 behavior];
    v4 = [v3 localTimeZone];
    v5 = [v4 name];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)deviceNoneID
{
  if (a1)
  {
    v1 = atomic_load((a1 + 72));
    if (v1)
    {
      v2 = *(a1 + 48);
    }

    else
    {
      v6 = 0;
      v7 = &v6;
      v8 = 0x3032000000;
      v9 = __Block_byref_object_copy__84;
      v10 = __Block_byref_object_dispose__84;
      v11 = 0;
      v3 = *(a1 + 24);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __39__HDDataProvenanceManager_deviceNoneID__block_invoke;
      v5[3] = &unk_278613990;
      v5[4] = a1;
      v5[5] = &v6;
      [v3 hk_withLock:v5];
      v2 = v7[5];
      _Block_object_dispose(&v6, 8);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (HDDataProvenanceManager)initWithProfile:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = HDDataProvenanceManager;
  v5 = [(HDDataProvenanceManager *)&v29 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    propertyLock = v5->_propertyLock;
    v5->_propertyLock = v6;

    v8 = objc_storeWeak(&v5->_profile, v4);
    v9 = [v4 daemon];
    v10 = [v9 behavior];

    v11 = [v10 currentOSBuild];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = @"UnknownBuild";
    }

    objc_storeStrong(&v5->_localSystemBuild, v13);

    v14 = [v10 currentDeviceProductType];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = @"UnknownDevice";
    }

    objc_storeStrong(&v5->_localProductType, v16);

    v17 = [v10 currentOSVersion];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &stru_283BF39C8;
    }

    objc_storeStrong(&v5->_localSourceVersion, v19);

    v20 = [HDDatabaseValueCache alloc];
    v21 = [(HDDataProvenanceManager *)v5 hk_classNameWithTag:@"persistent-ids"];
    v22 = [(HDDatabaseValueCache *)v20 initWithName:v21];
    persistentIDsByProvenanceKey = v5->_persistentIDsByProvenanceKey;
    v5->_persistentIDsByProvenanceKey = v22;

    v24 = [HDDatabaseValueCache alloc];
    v25 = [(HDDataProvenanceManager *)v5 hk_classNameWithTag:@"provenances"];
    v26 = [(HDDatabaseValueCache *)v24 initWithName:v25 cacheScope:2];
    originProvenanceByPersistentID = v5->_originProvenanceByPersistentID;
    v5->_originProvenanceByPersistentID = v26;
  }

  return v5;
}

- (id)provenanceEntityForProvenance:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__84;
  v20 = __Block_byref_object_dispose__84;
  v21 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__HDDataProvenanceManager_provenanceEntityForProvenance_error___block_invoke;
  v13[3] = &unk_278614288;
  v15 = &v16;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  LODWORD(a4) = [(HDHealthEntity *)HDDataProvenanceEntity performWriteTransactionWithHealthDatabase:v8 error:a4 block:v13];

  if (a4)
  {
    v10 = v17[5];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  _Block_object_dispose(&v16, 8);

  return v11;
}

BOOL __63__HDDataProvenanceManager_provenanceEntityForProvenance_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) provenanceEntityForProvenance:*(a1 + 40) transaction:a2 error:a3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

- (id)provenanceEntityForProvenance:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!self)
  {
    goto LABEL_21;
  }

  [(HDDataProvenanceManager *)self _loadDefaults];
  v10 = [v8 sourceVersion];
  v11 = [v10 length];

  if (!v11)
  {
    [v8 setSourceVersion:&stru_283BF39C8];
  }

  v12 = [v8 deviceID];

  if (!v12)
  {
    v13 = [(HDDataProvenanceManager *)self deviceNoneID];
    [v8 setDeviceID:v13];
  }

  v14 = [v8 contributorReference];

  if (!v14)
  {
    v15 = [(HDDataProvenanceManager *)self noneContributorReference];
    [v8 setContributorReference:v15];
  }

  v16 = [v8 sourceID];
  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = v16;
  v18 = [v8 deviceID];
  if (!v18)
  {

    goto LABEL_14;
  }

  v19 = v18;
  v20 = [v8 contributorReference];

  if (!v20)
  {
LABEL_14:
    v42 = MEMORY[0x277CCA9B8];
    v43 = [v8 sourceID];
    v44 = [v8 deviceID];
    v45 = [v8 contributorReference];
    [v42 hk_assignError:a5 code:3 format:{@"Missing data provenance source (%@), device (%@) id or contributor (%@)", v43, v44, v45}];

    self = 0;
    goto LABEL_21;
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v22 = [WeakRetained contributorManager];
  v23 = [v8 contributorReference];
  v54 = 0;
  v24 = [v22 insertOrLookupContributorEntityWithReference:v23 transaction:v9 error:&v54];
  v25 = v54;

  if (!v24)
  {
    v31 = v25;
    if (v31)
    {
      if (a5)
      {
        v46 = v31;
        self = 0;
        *a5 = v31;
        goto LABEL_20;
      }

      _HKLogDroppedError();
    }

    self = 0;
    goto LABEL_20;
  }

  v49 = v25;
  localSystemBuild = self->_localSystemBuild;
  v27 = self->_localProductType;
  v28 = localSystemBuild;
  v29 = v27;
  v30 = v8;
  objc_opt_self();
  v31 = objc_alloc_init(_HDDataProvenanceKey);
  v32 = [v30 copy];

  dataProvenance = v31->_dataProvenance;
  v31->_dataProvenance = v32;

  v34 = [(NSString *)v29 copy];
  localProductType = v31->_localProductType;
  v31->_localProductType = v34;

  v36 = [(NSString *)v28 copy];
  v37 = v31->_localSystemBuild;
  v31->_localSystemBuild = v36;

  v38 = [(HDDataOriginProvenance *)v31->_dataProvenance hash];
  v39 = [(NSString *)v31->_localProductType hash]^ v38;
  v31->_hash = v39 ^ [(NSString *)v31->_localSystemBuild hash];

  persistentIDsByProvenanceKey = self->_persistentIDsByProvenanceKey;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __71__HDDataProvenanceManager__lookupOrInsertProvenance_transaction_error___block_invoke;
  v50[3] = &unk_27861FE88;
  v51 = v30;
  v52 = self;
  v53 = v24;
  v41 = persistentIDsByProvenanceKey;
  v25 = v49;
  self = [(HDDatabaseValueCache *)v41 fetchObjectForKey:v31 transaction:v9 error:a5 faultHandler:v50];

LABEL_20:
LABEL_21:

  if (self)
  {
    v47 = [(HDSQLiteEntity *)[HDDataProvenanceEntity alloc] initWithPersistentID:[(HDDataProvenanceManager *)self longLongValue]];
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

- (id)noneContributorReference
{
  if (a1)
  {
    v1 = atomic_load((a1 + 72));
    if (v1)
    {
      v2 = *(a1 + 56);
    }

    else
    {
      v6 = 0;
      v7 = &v6;
      v8 = 0x3032000000;
      v9 = __Block_byref_object_copy__84;
      v10 = __Block_byref_object_dispose__84;
      v11 = 0;
      v3 = *(a1 + 24);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __51__HDDataProvenanceManager_noneContributorReference__block_invoke;
      v5[3] = &unk_278613990;
      v5[4] = a1;
      v5[5] = &v6;
      [v3 hk_withLock:v5];
      v2 = v7[5];
      _Block_object_dispose(&v6, 8);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __71__HDDataProvenanceManager__lookupOrInsertProvenance_transaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [*(a1 + 32) syncProvenance];
  v21 = [*(a1 + 32) syncIdentity];
  v23 = [*(a1 + 32) productType];
  v22 = [*(a1 + 32) systemBuild];
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 operatingSystemVersion];
  }

  else
  {
    memset(v24, 0, 24);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v9 = v7 + 12;
    v7 = v7[12];
    v8 = v9[1];
  }

  else
  {
    v8 = 0;
  }

  v10 = *(a1 + 32);
  v11 = v7;
  v19 = v8;
  v17 = [v10 sourceVersion];
  v12 = [*(a1 + 32) timeZoneName];
  v13 = [*(a1 + 32) sourceID];
  v18 = [*(a1 + 32) deviceID];
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 48), "persistentID")}];
  v15 = [HDDataProvenanceEntity insertOrLookupDataProvenanceForSyncProvenance:v5 syncIdentity:v21 originProductType:v23 originSystemBuild:v22 originOSVersion:v24 localProductType:v19 localSystemBuild:v11 sourceVersion:v17 timeZoneName:v12 sourceID:v13 deviceID:v18 contributorID:v14 transaction:v4 error:a3];

  if (v15)
  {
    [*(*(a1 + 40) + 88) setObject:*(a1 + 32) forKey:v15 transaction:v4];
  }

  return v15;
}

- (id)localDataProvenanceForSourceEntity:(id)a3 version:(id)a4 deviceEntity:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  [(HDDataProvenanceManager *)self _loadDefaults];
  if (v8)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "persistentID")}];
    if (v9)
    {
LABEL_3:
      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v9, "persistentID")}];
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = [(HDDataProvenanceManager *)self primaryUserContributorReference];
  v14 = v11;
  v43 = v10;
  v15 = v12;
  v16 = v13;
  v17 = v16;
  v42 = v14;
  if (self)
  {
    v18 = v14;
    if (!v14)
    {
      v18 = [(HDDataProvenanceManager *)self localSourceID];
    }

    v19 = v15;
    if (!v15)
    {
      v19 = [(HDDataProvenanceManager *)self deviceNoneID];
    }

    v20 = v17;
    if (!v17)
    {
      v20 = [(HDDataProvenanceManager *)self noneContributorReference];
    }

    if (v18 && v19 && v20)
    {
      memset(buf, 0, sizeof(buf));
      v21 = [MEMORY[0x277CCAC38] processInfo];
      v22 = v21;
      v38 = v9;
      v39 = v8;
      v37 = v15;
      v40 = v17;
      if (v21)
      {
        [v21 operatingSystemVersion];
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v25 = [WeakRetained currentSyncIdentityPersistentID];
      localSystemBuild = self->_localSystemBuild;
      localProductType = self->_localProductType;
      localSourceVersion = v43;
      if (!v43)
      {
        localSourceVersion = self->_localSourceVersion;
      }

      v29 = [(HDDataProvenanceManager *)self _localTimeZoneName];
      v44 = *buf;
      v45 = *&buf[16];
      self = [HDDataOriginProvenance dataProvenanceWithSyncProvenance:0 syncIdentity:v25 productType:localProductType systemBuild:localSystemBuild operatingSystemVersion:&v44 sourceVersion:localSourceVersion timeZoneName:v29 sourceID:v18 deviceID:v19 contributorReference:v20];

      v9 = v38;
      v8 = v39;
      v15 = v37;
      v17 = v40;
    }

    else
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v32 = v23;
        v33 = [(HDDataProvenanceManager *)self localSourceID];
        [(HDDataProvenanceManager *)self deviceNoneID];
        v34 = v41 = v17;
        [(HDDataProvenanceManager *)self noneContributorReference];
        v36 = v35 = v15;
        *buf = 138543874;
        *&buf[4] = v33;
        *&buf[12] = 2114;
        *&buf[14] = v34;
        *&buf[22] = 2114;
        v47 = v36;
        _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "Missing local source (%{public}@), device (%{public}@) id or contributor (%{public}@)", buf, 0x20u);

        v15 = v35;
        v17 = v41;
      }

      self = 0;
    }
  }

  else
  {
    v20 = v16;
    v19 = v15;
    v18 = v14;
  }

  v30 = *MEMORY[0x277D85DE8];

  return self;
}

- (id)primaryUserContributorReference
{
  if (a1)
  {
    v1 = atomic_load((a1 + 72));
    if (v1)
    {
      v2 = *(a1 + 64);
    }

    else
    {
      v6 = 0;
      v7 = &v6;
      v8 = 0x3032000000;
      v9 = __Block_byref_object_copy__84;
      v10 = __Block_byref_object_dispose__84;
      v11 = 0;
      v3 = *(a1 + 24);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __58__HDDataProvenanceManager_primaryUserContributorReference__block_invoke;
      v5[3] = &unk_278613990;
      v5[4] = a1;
      v5[5] = &v6;
      [v3 hk_withLock:v5];
      v2 = v7[5];
      _Block_object_dispose(&v6, 8);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)localDataProvenanceForSourceEntity:(id)a3 version:(id)a4 deviceEntity:(id)a5 timezone:(id)a6 OSVersion:(id *)a7
{
  v57 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a4;
  [(HDDataProvenanceManager *)self _loadDefaults];
  if (v12)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v12, "persistentID")}];
    if (v13)
    {
LABEL_3:
      v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v13, "persistentID")}];
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  v52 = v13;
  v18 = [(HDDataProvenanceManager *)self primaryUserContributorReference];
  v53 = *&a7->var0;
  var2 = a7->var2;
  v19 = v16;
  v20 = v15;
  v21 = v17;
  v22 = v14;
  v23 = v18;
  v24 = v23;
  v50 = v21;
  v51 = v19;
  if (self)
  {
    v25 = v19;
    if (!v19)
    {
      v25 = [(HDDataProvenanceManager *)self localSourceID];
    }

    v26 = v21;
    if (!v21)
    {
      v26 = [(HDDataProvenanceManager *)self deviceNoneID];
    }

    v27 = v24;
    if (!v24)
    {
      v27 = [(HDDataProvenanceManager *)self noneContributorReference];
    }

    if (v25 && v26 && v27)
    {
      v48 = v12;
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v29 = [WeakRetained currentSyncIdentityPersistentID];
      localSystemBuild = self->_localSystemBuild;
      localProductType = self->_localProductType;
      localSourceVersion = v20;
      if (!v20)
      {
        localSourceVersion = self->_localSourceVersion;
      }

      v33 = v22;
      if (!v22)
      {
        v34 = self;
        v35 = v29;
        v36 = self->_localProductType;
        v47 = v24;
        v37 = v20;
        v38 = localSystemBuild;
        v39 = [(HDDataProvenanceManager *)v34 _localTimeZoneName];
        localSystemBuild = v38;
        v20 = v37;
        v24 = v47;
        localProductType = v36;
        v29 = v35;
        v33 = v39;
      }

      *buf = v53;
      *&buf[16] = var2;
      self = [HDDataOriginProvenance dataProvenanceWithSyncProvenance:0 syncIdentity:v29 productType:localProductType systemBuild:localSystemBuild operatingSystemVersion:buf sourceVersion:localSourceVersion timeZoneName:v33 sourceID:v25 deviceID:v26 contributorReference:v27];
      if (!v22)
      {
      }

      v12 = v48;
    }

    else
    {
      _HKInitializeLogging();
      v40 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v43 = v40;
        v44 = [(HDDataProvenanceManager *)self localSourceID];
        [(HDDataProvenanceManager *)self deviceNoneID];
        v45 = v49 = v12;
        v46 = [(HDDataProvenanceManager *)self noneContributorReference];
        *buf = 138543874;
        *&buf[4] = v44;
        *&buf[12] = 2114;
        *&buf[14] = v45;
        *&buf[22] = 2114;
        v56 = v46;
        _os_log_error_impl(&dword_228986000, v43, OS_LOG_TYPE_ERROR, "Missing local source (%{public}@), device (%{public}@) id or contributor (%{public}@)", buf, 0x20u);

        v12 = v49;
      }

      self = 0;
    }
  }

  else
  {
    v27 = v23;
    v25 = v19;
    v26 = v21;
  }

  v41 = *MEMORY[0x277D85DE8];

  return self;
}

- (id)originProvenanceForPersistentID:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  originProvenanceByPersistentID = self->_originProvenanceByPersistentID;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__HDDataProvenanceManager_originProvenanceForPersistentID_transaction_error___block_invoke;
  v13[3] = &unk_27861FEB0;
  v14 = v8;
  v10 = v8;
  v11 = [(HDDatabaseValueCache *)originProvenanceByPersistentID fetchObjectForKey:v10 transaction:a4 error:a5 faultHandler:v13];

  return v11;
}

id __77__HDDataProvenanceManager_originProvenanceForPersistentID_transaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v7 = +[HDDataProvenanceEntity originProvenanceForPersistentID:database:error:](HDDataProvenanceEntity, "originProvenanceForPersistentID:database:error:", [*(a1 + 32) longLongValue], v6, a3);

  return v7;
}

uint64_t __40__HDDataProvenanceManager__loadDefaults__block_invoke(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [(HDDataProvenanceManager *)*(a1 + 32) deviceNoneID];

  if (v4)
  {
    v5 = 0;
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v7 = [WeakRetained deviceManager];
  v50 = 0;
  v8 = [v7 deviceEntityForNoDeviceWithError:&v50];
  v5 = v50;

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "persistentID")}];
    v11 = v10;
    if (v9)
    {
      v12 = *(v9 + 24);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __44__HDDataProvenanceManager__setDeviceNoneID___block_invoke;
      v52 = &unk_278613920;
      v53 = v9;
      v54 = v10;
      [v12 hk_withLock:buf];
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2A0];
    if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v36 = *(a1 + 32);
    v11 = v13;
    v37 = objc_opt_class();
    *buf = 138412546;
    *&buf[4] = v37;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%@: Failed to get device Entity for no device: %{public}@", buf, 0x16u);
  }

LABEL_9:
LABEL_10:
  v14 = [(HDDataProvenanceManager *)*(a1 + 32) localSourceID];

  if (v14)
  {
    v15 = v5;
    goto LABEL_19;
  }

  v16 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v17 = [v16 sourceManager];
  v49 = v5;
  v18 = [v17 localDeviceSourceWithError:&v49];
  v15 = v49;

  if (v18)
  {
    v19 = *(a1 + 32);
    v20 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v18, "persistentID")}];
    v21 = v20;
    if (v19)
    {
      v22 = *(v19 + 24);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __45__HDDataProvenanceManager__setLocalSourceID___block_invoke;
      v52 = &unk_278613920;
      v53 = v19;
      v54 = v20;
      [v22 hk_withLock:buf];
    }
  }

  else
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC2A0];
    if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v38 = *(a1 + 32);
    v21 = v23;
    v39 = objc_opt_class();
    *buf = 138412546;
    *&buf[4] = v39;
    *&buf[12] = 2114;
    *&buf[14] = v15;
    _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%@: Failed to get local device source: %{public}@", buf, 0x16u);
  }

LABEL_18:
LABEL_19:
  v24 = [(HDDataProvenanceManager *)*(a1 + 32) localDeviceID];

  if (!v24)
  {
    v26 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v27 = [v26 deviceManager];
    v48 = v15;
    v28 = [v27 currentDeviceEntityWithError:&v48];
    v25 = v48;

    if (v28)
    {
      v29 = *(a1 + 32);
      v30 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v28, "persistentID")}];
      v31 = v30;
      if (v29)
      {
        v32 = *(v29 + 24);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __45__HDDataProvenanceManager__setLocalDeviceID___block_invoke;
        v52 = &unk_278613920;
        v53 = v29;
        v54 = v30;
        [v32 hk_withLock:buf];
      }
    }

    else
    {
      _HKInitializeLogging();
      v33 = *MEMORY[0x277CCC2A0];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v40 = *(a1 + 32);
      v31 = v33;
      v41 = objc_opt_class();
      *buf = 138412546;
      *&buf[4] = v41;
      *&buf[12] = 2114;
      *&buf[14] = v25;
      _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "%@: Failed to get current device entity: %{public}@", buf, 0x16u);
    }

LABEL_27:
    goto LABEL_28;
  }

  v25 = v15;
LABEL_28:
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __40__HDDataProvenanceManager__loadDefaults__block_invoke_313;
  v46[3] = &unk_278613968;
  v47 = *(a1 + 32);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __40__HDDataProvenanceManager__loadDefaults__block_invoke_2;
  v42[3] = &unk_27861FF00;
  v42[4] = v47;
  v43 = v4 == 0;
  v44 = v14 == 0;
  v45 = v24 == 0;
  [v3 onCommit:v46 orRollback:v42];

  v34 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)localDeviceID
{
  if (a1)
  {
    v1 = atomic_load((a1 + 72));
    if (v1)
    {
      v2 = *(a1 + 40);
    }

    else
    {
      v6 = 0;
      v7 = &v6;
      v8 = 0x3032000000;
      v9 = __Block_byref_object_copy__84;
      v10 = __Block_byref_object_dispose__84;
      v11 = 0;
      v3 = *(a1 + 24);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __40__HDDataProvenanceManager_localDeviceID__block_invoke;
      v5[3] = &unk_278613990;
      v5[4] = a1;
      v5[5] = &v6;
      [v3 hk_withLock:v5];
      v2 = v7[5];
      _Block_object_dispose(&v6, 8);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __40__HDDataProvenanceManager__loadDefaults__block_invoke_313(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = atomic_load((v1 + 72));
    if ((v2 & 1) == 0)
    {
      v5[0] = 0;
      v5[1] = v5;
      v5[2] = 0x2020000000;
      v6 = 0;
      v3 = *(v1 + 24);
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __47__HDDataProvenanceManager__checkDefaultsLoaded__block_invoke;
      v4[3] = &unk_278613990;
      v4[4] = v1;
      v4[5] = v5;
      [v3 hk_withLock:v4];
      _Block_object_dispose(v5, 8);
    }
  }
}

uint64_t __40__HDDataProvenanceManager__loadDefaults__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__HDDataProvenanceManager__loadDefaults__block_invoke_3;
  v4[3] = &unk_27861FED8;
  v5 = *(a1 + 40);
  v4[4] = v1;
  v6 = *(a1 + 41);
  return [v2 hk_withLock:v4];
}

void __40__HDDataProvenanceManager__loadDefaults__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 48);
    *(v2 + 48) = 0;
  }

  if (*(a1 + 41) == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;
  }

  if (*(a1 + 42) == 1)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HDDataProvenanceManager *)self localSourceID];
  v6 = [(HDDataProvenanceManager *)self localDeviceID];
  v14 = *&self->_localSystemBuild;
  localSourceVersion = self->_localSourceVersion;
  v8 = [(HDDataProvenanceManager *)self _localTimeZoneName];
  v9 = [(HDDataProvenanceManager *)self deviceNoneID];
  v10 = [(HDDataProvenanceManager *)self noneContributorReference];
  v11 = [(HDDataProvenanceManager *)self primaryUserContributorReference];
  v12 = [v3 stringWithFormat:@"<%@:%p source=%@, device=%@, build=%@, productType=%@, sourceVersion=%@, tz=%@, noneDevice=%@, noneContributor=%@, primaryUserContributor=%@>", v4, self, v5, v6, v14, localSourceVersion, v8, v9, v10, v11];

  return v12;
}

uint64_t __47__HDDataProvenanceManager__checkDefaultsLoaded__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = v1[4] && v1[5] && v1[6] && v1[7] != 0;
  *(*(*(result + 40) + 8) + 24) = v2;
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    atomic_store(1u, (*(result + 32) + 72));
  }

  return result;
}

uint64_t __45__HDDataProvenanceManager__setLocalSourceID___block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 32))
  {
    v2 = result;
    v3 = [*(result + 40) copy];
    v4 = *(v2 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

uint64_t __45__HDDataProvenanceManager__setLocalDeviceID___block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 40))
  {
    v2 = result;
    v3 = [*(result + 40) copy];
    v4 = *(v2 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

uint64_t __44__HDDataProvenanceManager__setDeviceNoneID___block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 48))
  {
    v2 = result;
    v3 = [*(result + 40) copy];
    v4 = *(v2 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

uint64_t __56__HDDataProvenanceManager__setNoneContributorReference___block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 56))
  {
    v2 = result;
    v3 = [*(result + 40) copy];
    v4 = *(v2 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

uint64_t __63__HDDataProvenanceManager__setPrimaryUserContributorReference___block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 64))
  {
    v2 = result;
    v3 = [*(result + 40) copy];
    v4 = *(v2 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

@end