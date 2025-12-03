@interface HDCloudSyncRegistryRecord
+ (BOOL)hasFutureSchema:(id)schema;
+ (BOOL)isRegistryRecord:(id)record;
+ (BOOL)isRegistryRecordID:(id)d;
+ (id)recordIDWithZoneID:(id)d;
+ (id)sharedProfileIdentifierForOwnerProfileIdentifier:(id)identifier;
- (HDCloudSyncCodableProfileIdentifier)_codableProfileIdentifierWithProfileIdentifier:(uint64_t)identifier;
- (HDCloudSyncRegistryRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version;
- (HKProfileIdentifier)ownerProfileIdentifier;
- (HKProfileIdentifier)sharedProfileIdentifier;
- (NSArray)childHeaderRecordIDs;
- (NSDate)displayNameModificationDate;
- (NSSet)disabledOwnerIdentifiers;
- (NSSet)disabledSyncIdentities;
- (NSSet)ownerIdentifiers;
- (NSSet)syncIdentities;
- (id)_profileIdentifierWithCodableProfileIdentifier:(uint64_t)identifier;
- (id)initInZone:(id)zone ownerProfileIdentifier:(id)identifier;
- (id)initInZone:(id)zone ownerProfileIdentifier:(id)identifier sharedProfileIdentifier:(id)profileIdentifier;
- (id)storeIdentifiersForOwnerIdentifier:(id)identifier;
- (id)storeIdentifiersForSyncIdentity:(id)identity;
- (void)addStoreIdentifier:(id)identifier ownerIdentifier:(id)ownerIdentifier syncIdentity:(id)identity;
- (void)removeStoreIdentifier:(id)identifier ownerIdentifier:(id)ownerIdentifier syncIdentity:(id)identity;
- (void)setDisabledOwnerIdentifiers:(id)identifiers;
- (void)setDisabledSyncIdentities:(id)identities;
- (void)setDisplayNameModificationDate:(id)date;
- (void)setOwnerProfileIdentifier:(id)identifier;
- (void)setSharedProfileIdentifier:(id)identifier;
@end

@implementation HDCloudSyncRegistryRecord

+ (BOOL)hasFutureSchema:(id)schema
{
  v3 = [schema objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

+ (id)recordIDWithZoneID:(id)d
{
  v3 = MEMORY[0x277CBC5D0];
  dCopy = d;
  v5 = [[v3 alloc] initWithRecordName:@"CloudSyncRegistry" zoneID:dCopy];

  return v5;
}

+ (BOOL)isRegistryRecord:(id)record
{
  recordType = [record recordType];
  v4 = [recordType isEqualToString:@"CloudSyncRegistryRecord"];

  return v4;
}

+ (BOOL)isRegistryRecordID:(id)d
{
  recordName = [d recordName];
  v4 = [recordName isEqualToString:@"CloudSyncRegistry"];

  return v4;
}

+ (id)sharedProfileIdentifierForOwnerProfileIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  type = [identifierCopy type];
  if (type <= 2)
  {
    if (type == 1)
    {
      goto LABEL_10;
    }

    if (type != 2)
    {
      goto LABEL_11;
    }

LABEL_8:
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      v11 = v6;
      [identifierCopy type];
      v12 = HKStringFromProfileType();
      v13 = 138412290;
      v14 = v12;
      _os_log_fault_impl(&dword_228986000, v11, OS_LOG_TYPE_FAULT, "Owner profile identifier of unexpected type %@", &v13, 0xCu);
    }

    goto LABEL_10;
  }

  switch(type)
  {
    case 3:
      v3 = identifierCopy;
      break;
    case 4:
      goto LABEL_8;
    case 100:
LABEL_10:
      v7 = MEMORY[0x277CCD7C8];
      uUID = [MEMORY[0x277CCAD78] UUID];
      v3 = [v7 _profileWithUUID:uUID type:3];

      break;
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)initInZone:(id)zone ownerProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  zoneCopy = zone;
  v8 = [objc_opt_class() sharedProfileIdentifierForOwnerProfileIdentifier:identifierCopy];
  v9 = [(HDCloudSyncRegistryRecord *)self initInZone:zoneCopy ownerProfileIdentifier:identifierCopy sharedProfileIdentifier:v8];

  return v9;
}

- (id)initInZone:(id)zone ownerProfileIdentifier:(id)identifier sharedProfileIdentifier:(id)profileIdentifier
{
  identifierCopy = identifier;
  profileIdentifierCopy = profileIdentifier;
  zoneCopy = zone;
  v11 = [objc_opt_class() recordIDWithZoneID:zoneCopy];

  v12 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncRegistryRecord" recordID:v11];
  v13 = [(HDCloudSyncRegistryRecord *)self initWithCKRecord:v12 schemaVersion:1];
  v14 = v13;
  if (v13)
  {
    [(HDCloudSyncRegistryRecord *)v13 setOwnerProfileIdentifier:identifierCopy];
    [(HDCloudSyncRegistryRecord *)v14 setSharedProfileIdentifier:profileIdentifierCopy];
  }

  return v14;
}

- (HDCloudSyncRegistryRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncRegistryRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:record schemaVersion:version];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  underlyingMessage = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!underlyingMessage)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableRegistry);
    underlyingRegistry = v5->_underlyingRegistry;
    v5->_underlyingRegistry = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableRegistry alloc] initWithData:underlyingMessage];
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

- (void)setDisplayNameModificationDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
    underlyingRegistry = self->_underlyingRegistry;

    [(HDCloudSyncCodableRegistry *)underlyingRegistry setDisplayNameModificationDate:?];
  }

  else
  {
    v5 = self->_underlyingRegistry;

    [(HDCloudSyncCodableRegistry *)v5 setHasDisplayNameModificationDate:?];
  }
}

- (id)_profileIdentifierWithCodableProfileIdentifier:(uint64_t)identifier
{
  v2 = 0;
  if (identifier && a2)
  {
    v3 = MEMORY[0x277CCAD78];
    v4 = a2;
    identifier = [v4 identifier];
    v6 = [v3 hk_UUIDWithData:identifier];

    type = [v4 type];
    if (v6 && [MEMORY[0x277CCD7C8] isValidProfileType:type])
    {
      v2 = [MEMORY[0x277CCD7C8] _profileWithUUID:v6 type:type];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (HDCloudSyncCodableProfileIdentifier)_codableProfileIdentifierWithProfileIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    v2 = a2;
    v3 = objc_alloc_init(HDCloudSyncCodableProfileIdentifier);
    -[HDCloudSyncCodableProfileIdentifier setType:](v3, "setType:", [v2 type]);
    identifier = [v2 identifier];

    hk_dataForUUIDBytes = [identifier hk_dataForUUIDBytes];
    [(HDCloudSyncCodableProfileIdentifier *)v3 setIdentifier:hk_dataForUUIDBytes];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HKProfileIdentifier)ownerProfileIdentifier
{
  ownerProfileIdentifier = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry ownerProfileIdentifier];
  v4 = [(HDCloudSyncRegistryRecord *)self _profileIdentifierWithCodableProfileIdentifier:ownerProfileIdentifier];

  return v4;
}

- (void)setOwnerProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncRegistryRecord.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"profileIdentifier != nil"}];

    identifierCopy = 0;
  }

  v6 = [(HDCloudSyncRegistryRecord *)self _codableProfileIdentifierWithProfileIdentifier:identifierCopy];
  [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry setOwnerProfileIdentifier:v6];
}

- (HKProfileIdentifier)sharedProfileIdentifier
{
  sharedProfileIdentifier = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry sharedProfileIdentifier];
  v4 = [(HDCloudSyncRegistryRecord *)self _profileIdentifierWithCodableProfileIdentifier:sharedProfileIdentifier];

  return v4;
}

- (void)setSharedProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncRegistryRecord.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"profileIdentifier != nil"}];

    identifierCopy = 0;
  }

  v6 = [(HDCloudSyncRegistryRecord *)self _codableProfileIdentifierWithProfileIdentifier:identifierCopy];
  [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry setSharedProfileIdentifier:v6];
}

- (NSSet)disabledOwnerIdentifiers
{
  v2 = MEMORY[0x277CBEB98];
  disabledOwnerIdentifiers = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry disabledOwnerIdentifiers];
  v4 = [v2 setWithArray:disabledOwnerIdentifiers];
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

- (void)setDisabledOwnerIdentifiers:(id)identifiers
{
  allObjects = [identifiers allObjects];
  v4 = [allObjects mutableCopy];
  [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry setDisabledOwnerIdentifiers:v4];
}

- (NSSet)disabledSyncIdentities
{
  disabledSyncIdentities = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry disabledSyncIdentities];
  v4 = [disabledSyncIdentities count];

  if (v4)
  {
    disabledSyncIdentities2 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry disabledSyncIdentities];
    v6 = [disabledSyncIdentities2 hk_mapToSet:&__block_literal_global_223];
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

- (void)setDisabledSyncIdentities:(id)identities
{
  allObjects = [identities allObjects];
  v4 = [allObjects hk_map:&__block_literal_global_319_1];
  v5 = [v4 mutableCopy];
  [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry setDisabledSyncIdentities:v5];
}

- (NSSet)ownerIdentifiers
{
  stores = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];

  if (stores)
  {
    stores2 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];
    v5 = [stores2 hk_mapToSet:&__block_literal_global_322_3];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  return v5;
}

- (NSSet)syncIdentities
{
  stores = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];

  if (stores)
  {
    stores2 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];
    v5 = [stores2 hk_mapToSet:&__block_literal_global_324_5];
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
        ownerIdentifier = [v3 ownerIdentifier];
        v5 = objc_alloc(MEMORY[0x277CCAD78]);
        storeIdentifier = [v3 storeIdentifier];
        v7 = [v5 initWithUUIDString:storeIdentifier];
        recordID = [(HDCloudSyncRecord *)self recordID];
        zoneID = [recordID zoneID];
        v10 = [HDCloudSyncStoreRecord recordIDForOwnerIdentifier:ownerIdentifier storeIdentifier:v7 zoneID:zoneID];
        [v23 addObject:v10];

        ownerIdentifier2 = [v3 ownerIdentifier];
        v12 = objc_alloc(MEMORY[0x277CCAD78]);
        storeIdentifier2 = [v3 storeIdentifier];
        v14 = [v12 initWithUUIDString:storeIdentifier2];
        recordID2 = [(HDCloudSyncRecord *)self recordID];
        zoneID2 = [recordID2 zoneID];
        v17 = [HDCloudSyncSequenceRecord recordIDsForOwnerIdentifier:ownerIdentifier2 storeIdentifier:v14 zoneID:zoneID2];
        [v23 addObjectsFromArray:v17];
      }

      v24 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v24);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)storeIdentifiersForOwnerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  stores = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];

  if (stores)
  {
    stores2 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__HDCloudSyncRegistryRecord_storeIdentifiersForOwnerIdentifier___block_invoke;
    v9[3] = &unk_27862CD58;
    v10 = identifierCopy;
    v7 = [stores2 hk_mapToSet:v9];
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

- (id)storeIdentifiersForSyncIdentity:(id)identity
{
  identityCopy = identity;
  stores = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];

  if (stores)
  {
    stores2 = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__HDCloudSyncRegistryRecord_storeIdentifiersForSyncIdentity___block_invoke;
    v9[3] = &unk_27862CD58;
    v10 = identityCopy;
    v7 = [stores2 hk_mapToSet:v9];
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

- (void)addStoreIdentifier:(id)identifier ownerIdentifier:(id)ownerIdentifier syncIdentity:(id)identity
{
  identityCopy = identity;
  ownerIdentifierCopy = ownerIdentifier;
  identifierCopy = identifier;
  v13 = objc_alloc_init(HDCloudSyncCodableRegisteredStore);
  [(HDCloudSyncCodableRegisteredStore *)v13 setOwnerIdentifier:ownerIdentifierCopy];

  uUIDString = [identifierCopy UUIDString];

  [(HDCloudSyncCodableRegisteredStore *)v13 setStoreIdentifier:uUIDString];
  codableSyncIdentity = [identityCopy codableSyncIdentity];

  [(HDCloudSyncCodableRegisteredStore *)v13 setSyncIdentity:codableSyncIdentity];
  [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry addStores:v13];
}

- (void)removeStoreIdentifier:(id)identifier ownerIdentifier:(id)ownerIdentifier syncIdentity:(id)identity
{
  ownerIdentifierCopy = ownerIdentifier;
  identityCopy = identity;
  uUIDString = [identifier UUIDString];
  stores = [(HDCloudSyncCodableRegistry *)self->_underlyingRegistry stores];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__HDCloudSyncRegistryRecord_removeStoreIdentifier_ownerIdentifier_syncIdentity___block_invoke;
  v15[3] = &unk_27862CD80;
  v16 = identityCopy;
  v17 = uUIDString;
  v18 = ownerIdentifierCopy;
  v12 = ownerIdentifierCopy;
  v13 = uUIDString;
  v14 = identityCopy;
  [stores hk_removeObjectsPassingTest:v15];
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