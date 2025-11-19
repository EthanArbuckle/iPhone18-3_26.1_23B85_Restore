@interface HDCloudSyncRegistryRecord
+ (BOOL)hasFutureSchema:(id)a3;
+ (BOOL)isRegistryRecord:(id)a3;
+ (BOOL)isRegistryRecordID:(id)a3;
+ (id)recordIDWithZoneID:(id)a3;
+ (id)sharedProfileIdentifierForOwnerProfileIdentifier:(id)a3;
- (HDCloudSyncCodableProfileIdentifier)_codableProfileIdentifierWithProfileIdentifier:(uint64_t)a1;
- (HDCloudSyncRegistryRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4;
- (HKProfileIdentifier)ownerProfileIdentifier;
- (HKProfileIdentifier)sharedProfileIdentifier;
- (NSArray)childHeaderRecordIDs;
- (NSDate)displayNameModificationDate;
- (NSSet)disabledOwnerIdentifiers;
- (NSSet)disabledSyncIdentities;
- (NSSet)ownerIdentifiers;
- (NSSet)syncIdentities;
- (id)_profileIdentifierWithCodableProfileIdentifier:(uint64_t)a1;
- (id)initInZone:(id)a3 ownerProfileIdentifier:(id)a4;
- (id)initInZone:(id)a3 ownerProfileIdentifier:(id)a4 sharedProfileIdentifier:(id)a5;
- (id)storeIdentifiersForOwnerIdentifier:(id)a3;
- (id)storeIdentifiersForSyncIdentity:(id)a3;
- (void)addStoreIdentifier:(id)a3 ownerIdentifier:(id)a4 syncIdentity:(id)a5;
- (void)removeStoreIdentifier:(id)a3 ownerIdentifier:(id)a4 syncIdentity:(id)a5;
- (void)setDisabledOwnerIdentifiers:(id)a3;
- (void)setDisabledSyncIdentities:(id)a3;
- (void)setDisplayNameModificationDate:(id)a3;
- (void)setOwnerProfileIdentifier:(id)a3;
- (void)setSharedProfileIdentifier:(id)a3;
@end

@implementation HDCloudSyncRegistryRecord

+ (BOOL)hasFutureSchema:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

+ (id)recordIDWithZoneID:(id)a3
{
  v3 = MEMORY[0x277CBC5D0];
  v4 = a3;
  v5 = [[v3 alloc] initWithRecordName:@"CloudSyncRegistry" zoneID:v4];

  return v5;
}

+ (BOOL)isRegistryRecord:(id)a3
{
  v3 = [a3 recordType];
  v4 = [v3 isEqualToString:@"CloudSyncRegistryRecord"];

  return v4;
}

+ (BOOL)isRegistryRecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [v3 isEqualToString:@"CloudSyncRegistry"];

  return v4;
}

+ (id)sharedProfileIdentifierForOwnerProfileIdentifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 type];
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      goto LABEL_10;
    }

    if (v5 != 2)
    {
      goto LABEL_11;
    }

LABEL_8:
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      v11 = v6;
      [v4 type];
      v12 = HKStringFromProfileType();
      v13 = 138412290;
      v14 = v12;
      _os_log_fault_impl(&dword_228986000, v11, OS_LOG_TYPE_FAULT, "Owner profile identifier of unexpected type %@", &v13, 0xCu);
    }

    goto LABEL_10;
  }

  switch(v5)
  {
    case 3:
      v3 = v4;
      break;
    case 4:
      goto LABEL_8;
    case 100:
LABEL_10:
      v7 = MEMORY[0x277CCD7C8];
      v8 = [MEMORY[0x277CCAD78] UUID];
      v3 = [v7 _profileWithUUID:v8 type:3];

      break;
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)initInZone:(id)a3 ownerProfileIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() sharedProfileIdentifierForOwnerProfileIdentifier:v6];
  v9 = [(HDCloudSyncRegistryRecord *)self initInZone:v7 ownerProfileIdentifier:v6 sharedProfileIdentifier:v8];

  return v9;
}

- (id)initInZone:(id)a3 ownerProfileIdentifier:(id)a4 sharedProfileIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [objc_opt_class() recordIDWithZoneID:v10];

  v12 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncRegistryRecord" recordID:v11];
  v13 = [(HDCloudSyncRegistryRecord *)self initWithCKRecord:v12 schemaVersion:1];
  v14 = v13;
  if (v13)
  {
    [(HDCloudSyncRegistryRecord *)v13 setOwnerProfileIdentifier:v8];
    [(HDCloudSyncRegistryRecord *)v14 setSharedProfileIdentifier:v9];
  }

  return v14;
}

- (HDCloudSyncRegistryRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncRegistryRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:a3 schemaVersion:a4];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!v6)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableRegistry);
    underlyingRegistry = v5->_underlyingRegistry;
    v5->_underlyingRegistry = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableRegistry alloc] initWithData:v6];
  v8 = v5->_underlyingRegistry;
  v5->_underlyingRegistry = v7;

  if (v5->_underlyingRegistry)
  {
LABEL_8:

LABEL_9:
    v10 = v5;
    goto LABEL_10;
  }

  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
  {
    v14[0] = 0;
    _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "Failed to decode underlying registry.", v14, 2u);
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (NSDate)displayNameModificationDate
{
  if ([(HDCloudSyncCodableRegistry *)self->_underlyingRegistry hasDisplayNameModificationDate])
  {
    v3 = MEMORY[0x277CBEAA8];
    [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry displayNameModificationDate];
    v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDisplayNameModificationDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
    underlyingRegistry = self->_underlyingRegistry;

    [(HDCloudSyncCodableRegistry *)underlyingRegistry setDisplayNameModificationDate:?];
  }

  else
  {
    v5 = self->_underlyingRegistry;

    [(HDCloudSyncCodableRegistry *)v5 setHasDisplayNameModificationDate:?];
  }
}

- (id)_profileIdentifierWithCodableProfileIdentifier:(uint64_t)a1
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = MEMORY[0x277CCAD78];
    v4 = a2;
    v5 = [v4 identifier];
    v6 = [v3 hk_UUIDWithData:v5];

    v7 = [v4 type];
    if (v6 && [MEMORY[0x277CCD7C8] isValidProfileType:v7])
    {
      v2 = [MEMORY[0x277CCD7C8] _profileWithUUID:v6 type:v7];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (HDCloudSyncCodableProfileIdentifier)_codableProfileIdentifierWithProfileIdentifier:(uint64_t)a1
{
  if (a1)
  {
    v2 = a2;
    v3 = objc_alloc_init(HDCloudSyncCodableProfileIdentifier);
    -[HDCloudSyncCodableProfileIdentifier setType:](v3, "setType:", [v2 type]);
    v4 = [v2 identifier];

    v5 = [v4 hk_dataForUUIDBytes];
    [(HDCloudSyncCodableProfileIdentifier *)v3 setIdentifier:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HKProfileIdentifier)ownerProfileIdentifier
{
  v3 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry ownerProfileIdentifier];
  v4 = [(HDCloudSyncRegistryRecord *)self _profileIdentifierWithCodableProfileIdentifier:v3];

  return v4;
}

- (void)setOwnerProfileIdentifier:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HDCloudSyncRegistryRecord.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"profileIdentifier != nil"}];

    v5 = 0;
  }

  v6 = [(HDCloudSyncRegistryRecord *)self _codableProfileIdentifierWithProfileIdentifier:v5];
  [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry setOwnerProfileIdentifier:v6];
}

- (HKProfileIdentifier)sharedProfileIdentifier
{
  v3 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry sharedProfileIdentifier];
  v4 = [(HDCloudSyncRegistryRecord *)self _profileIdentifierWithCodableProfileIdentifier:v3];

  return v4;
}

- (void)setSharedProfileIdentifier:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HDCloudSyncRegistryRecord.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"profileIdentifier != nil"}];

    v5 = 0;
  }

  v6 = [(HDCloudSyncRegistryRecord *)self _codableProfileIdentifierWithProfileIdentifier:v5];
  [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry setSharedProfileIdentifier:v6];
}

- (NSSet)disabledOwnerIdentifiers
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry disabledOwnerIdentifiers];
  v4 = [v2 setWithArray:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  v7 = v6;

  return v7;
}

- (void)setDisabledOwnerIdentifiers:(id)a3
{
  v5 = [a3 allObjects];
  v4 = [v5 mutableCopy];
  [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry setDisabledOwnerIdentifiers:v4];
}

- (NSSet)disabledSyncIdentities
{
  v3 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry disabledSyncIdentities];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry disabledSyncIdentities];
    v6 = [v5 hk_mapToSet:&__block_literal_global_223];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

id __51__HDCloudSyncRegistryRecord_disabledSyncIdentities__block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v2 = [HDSyncIdentity syncIdentityWithCodable:a2 error:&v8];
  v3 = v8;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v10 = v3;
      _os_log_fault_impl(&dword_228986000, v5, OS_LOG_TYPE_FAULT, "Failed to decode codableIdentity with error: %{public}@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)setDisabledSyncIdentities:(id)a3
{
  v6 = [a3 allObjects];
  v4 = [v6 hk_map:&__block_literal_global_319_1];
  v5 = [v4 mutableCopy];
  [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry setDisabledSyncIdentities:v5];
}

- (NSSet)ownerIdentifiers
{
  v3 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];

  if (v3)
  {
    v4 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];
    v5 = [v4 hk_mapToSet:&__block_literal_global_322_3];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  return v5;
}

- (NSSet)syncIdentities
{
  v3 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];

  if (v3)
  {
    v4 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];
    v5 = [v4 hk_mapToSet:&__block_literal_global_324_5];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  return v5;
}

id __43__HDCloudSyncRegistryRecord_syncIdentities__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 hasSyncIdentity])
  {
    v3 = [v2 syncIdentity];
    v9 = 0;
    v4 = [HDSyncIdentity syncIdentityWithCodable:v3 error:&v9];
    v5 = v9;

    if (!v4)
    {
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v11 = v5;
        _os_log_fault_impl(&dword_228986000, v6, OS_LOG_TYPE_FAULT, "Failed to decode codableIdentity with error: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSArray)childHeaderRecordIDs
{
  v30 = *MEMORY[0x277D85DE8];
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];
  v24 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v24)
  {
    v21 = *v26;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v25 + 1) + 8 * i);
        v4 = [v3 ownerIdentifier];
        v5 = objc_alloc(MEMORY[0x277CCAD78]);
        v6 = [v3 storeIdentifier];
        v7 = [v5 initWithUUIDString:v6];
        v8 = [(HDCloudSyncRecord *)self recordID];
        v9 = [v8 zoneID];
        v10 = [HDCloudSyncStoreRecord recordIDForOwnerIdentifier:v4 storeIdentifier:v7 zoneID:v9];
        [v23 addObject:v10];

        v11 = [v3 ownerIdentifier];
        v12 = objc_alloc(MEMORY[0x277CCAD78]);
        v13 = [v3 storeIdentifier];
        v14 = [v12 initWithUUIDString:v13];
        v15 = [(HDCloudSyncRecord *)self recordID];
        v16 = [v15 zoneID];
        v17 = [HDCloudSyncSequenceRecord recordIDsForOwnerIdentifier:v11 storeIdentifier:v14 zoneID:v16];
        [v23 addObjectsFromArray:v17];
      }

      v24 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v24);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)storeIdentifiersForOwnerIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];

  if (v5)
  {
    v6 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__HDCloudSyncRegistryRecord_storeIdentifiersForOwnerIdentifier___block_invoke;
    v9[3] = &unk_27862CD58;
    v10 = v4;
    v7 = [v6 hk_mapToSet:v9];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] set];
  }

  return v7;
}

id __64__HDCloudSyncRegistryRecord_storeIdentifiersForOwnerIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 ownerIdentifier];
  LODWORD(a1) = [v4 isEqualToString:*(a1 + 32)];

  if (a1)
  {
    v5 = objc_alloc(MEMORY[0x277CCAD78]);
    v6 = [v3 storeIdentifier];
    v7 = [v5 initWithUUIDString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)storeIdentifiersForSyncIdentity:(id)a3
{
  v4 = a3;
  v5 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];

  if (v5)
  {
    v6 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__HDCloudSyncRegistryRecord_storeIdentifiersForSyncIdentity___block_invoke;
    v9[3] = &unk_27862CD58;
    v10 = v4;
    v7 = [v6 hk_mapToSet:v9];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] set];
  }

  return v7;
}

id __61__HDCloudSyncRegistryRecord_storeIdentifiersForSyncIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 syncIdentity];
  v5 = [*(a1 + 32) codableSyncIdentity];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    v8 = [v3 storeIdentifier];
    v9 = [v7 initWithUUIDString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)addStoreIdentifier:(id)a3 ownerIdentifier:(id)a4 syncIdentity:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = objc_alloc_init(HDCloudSyncCodableRegisteredStore);
  [(HDCloudSyncCodableRegisteredStore *)v13 setOwnerIdentifier:v9];

  v11 = [v10 UUIDString];

  [(HDCloudSyncCodableRegisteredStore *)v13 setStoreIdentifier:v11];
  v12 = [v8 codableSyncIdentity];

  [(HDCloudSyncCodableRegisteredStore *)v13 setSyncIdentity:v12];
  [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry addStores:v13];
}

- (void)removeStoreIdentifier:(id)a3 ownerIdentifier:(id)a4 syncIdentity:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 UUIDString];
  v11 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__HDCloudSyncRegistryRecord_removeStoreIdentifier_ownerIdentifier_syncIdentity___block_invoke;
  v15[3] = &unk_27862CD80;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  [v11 hk_removeObjectsPassingTest:v15];
}

uint64_t __80__HDCloudSyncRegistryRecord_removeStoreIdentifier_ownerIdentifier_syncIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 syncIdentity];

  if (v4)
  {
    v5 = [v3 syncIdentity];
    v6 = [*(a1 + 32) codableSyncIdentity];
    if ([v5 isEqual:v6])
    {
      v7 = [v3 storeIdentifier];
      v8 = [v7 isEqualToString:*(a1 + 40)];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v5 = [v3 ownerIdentifier];
    if (![v5 isEqualToString:*(a1 + 48)])
    {
      v8 = 0;
      goto LABEL_8;
    }

    v6 = [v3 storeIdentifier];
    v8 = [v6 isEqualToString:*(a1 + 40)];
  }

LABEL_8:
  return v8;
}

@end