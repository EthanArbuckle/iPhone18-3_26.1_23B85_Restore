@interface HDCloudSyncMasterRecord
+ (BOOL)hasFutureSchema:(id)schema;
+ (BOOL)isMasterRecord:(id)record;
+ (BOOL)isMasterRecordID:(id)d;
+ (HDCloudSyncMasterRecord)recordWithCKRecord:(id)record error:(id *)error;
+ (id)fieldsForUnprotectedSerialization;
+ (id)recordIDWithZoneID:(id)d;
- (HDCloudSyncMasterRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version;
- (id)initInSyncCircle:(id)circle disabledOwnerIdentifiers:(id)identifiers;
- (id)initInZone:(id)zone disabledOwnerIdentifiers:(id)identifiers;
- (id)initWithCKRecord:(void *)record disabledOwnerIdentifiers:(uint64_t)identifiers schemaVersion:;
- (void)setDisabledOwnerIdentifiers:(id)identifiers;
@end

@implementation HDCloudSyncMasterRecord

- (HDCloudSyncMasterRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (id)initInSyncCircle:(id)circle disabledOwnerIdentifiers:(id)identifiers
{
  v6 = MEMORY[0x277CBC5F8];
  identifiersCopy = identifiers;
  v8 = [v6 hd_masterZoneIDForSyncCircleIdentifier:circle];
  v9 = [(HDCloudSyncMasterRecord *)self initInZone:v8 disabledOwnerIdentifiers:identifiersCopy];

  return v9;
}

- (id)initInZone:(id)zone disabledOwnerIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  zoneCopy = zone;
  v8 = [objc_opt_class() recordIDWithZoneID:zoneCopy];

  v9 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncMasterRecord" recordID:v8];
  v10 = [(HDCloudSyncMasterRecord *)self initWithCKRecord:v9 disabledOwnerIdentifiers:identifiersCopy schemaVersion:1];

  return v10;
}

- (id)initWithCKRecord:(void *)record disabledOwnerIdentifiers:(uint64_t)identifiers schemaVersion:
{
  v7 = a2;
  recordCopy = record;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = HDCloudSyncMasterRecord;
    v9 = objc_msgSendSuper2(&v14, sel_initWithCKRecord_schemaVersion_, v7, identifiers);
    if (v9)
    {
      allObjects = [recordCopy allObjects];
      [v7 setObject:allObjects forKeyedSubscript:@"DeletedOwnerIdentifiers"];

      v11 = [recordCopy copy];
      v12 = v11;
      if (!v11)
      {
        v12 = [MEMORY[0x277CBEB98] set];
      }

      objc_storeStrong(v9 + 3, v12);
      if (!v11)
      {
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setDisabledOwnerIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [identifiersCopy copy];
  disabledOwnerIdentifiers = self->_disabledOwnerIdentifiers;
  self->_disabledOwnerIdentifiers = v5;

  allObjects = [identifiersCopy allObjects];

  record = [(HDCloudSyncRecord *)self record];
  [record setObject:allObjects forKeyedSubscript:@"DeletedOwnerIdentifiers"];
}

+ (id)fieldsForUnprotectedSerialization
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___HDCloudSyncMasterRecord;
  v2 = objc_msgSendSuper2(&v9, sel_fieldsForUnprotectedSerialization);
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v4 = [HDCloudSyncSerializedField fieldForKey:@"DeletedOwnerIdentifiers" classes:v3 encrypted:0];
  v11[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6 = [v2 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (HDCloudSyncMasterRecord)recordWithCKRecord:(id)record error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  recordType = [recordCopy recordType];
  v8 = [recordType isEqualToString:@"CloudSyncMasterRecord"];

  if (v8)
  {
    v9 = [recordCopy hd_requiredValueForKey:@"Version" type:objc_opt_class() error:error];
    if (v9)
    {
      v10 = [recordCopy hd_requiredValueForKey:@"DeletedOwnerIdentifiers" type:objc_opt_class() error:error];
      v11 = v10;
      if (v10)
      {
        v30 = recordCopy;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v12 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v32;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v32 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v31 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v17 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"master record's disabled owner identifiers has non-string member %@", v16}];
                v18 = v17;
                if (v17)
                {
                  if (error)
                  {
                    v19 = v17;
                    *error = v18;
                  }

                  else
                  {
                    _HKLogDroppedError();
                  }
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
          }

          while (v13);
        }

        v20 = [HDCloudSyncMasterRecord alloc];
        v21 = [MEMORY[0x277CBEB98] setWithArray:v11];
        recordCopy = v30;
        v22 = -[HDCloudSyncMasterRecord initWithCKRecord:disabledOwnerIdentifiers:schemaVersion:](v20, v30, v21, [v9 integerValue]);
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v23 = MEMORY[0x277CCA9B8];
    v24 = objc_opt_class();
    recordType2 = [recordCopy recordType];
    v26 = [v23 hk_errorForInvalidArgument:@"@" class:v24 selector:a2 format:{@"record has type (%@), but expected (%@)", recordType2, @"CloudSyncMasterRecord"}];
    if (v26)
    {
      if (error)
      {
        v27 = v26;
        *error = v26;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v22 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v22;
}

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
  v5 = [[v3 alloc] initWithRecordName:@"CloudSyncMaster" zoneID:dCopy];

  return v5;
}

+ (BOOL)isMasterRecord:(id)record
{
  recordType = [record recordType];
  v4 = [recordType isEqualToString:@"CloudSyncMasterRecord"];

  return v4;
}

+ (BOOL)isMasterRecordID:(id)d
{
  recordName = [d recordName];
  v4 = [recordName isEqualToString:@"CloudSyncMaster"];

  return v4;
}

@end