@interface HDCloudSyncMasterRecord
+ (BOOL)hasFutureSchema:(id)a3;
+ (BOOL)isMasterRecord:(id)a3;
+ (BOOL)isMasterRecordID:(id)a3;
+ (HDCloudSyncMasterRecord)recordWithCKRecord:(id)a3 error:(id *)a4;
+ (id)fieldsForUnprotectedSerialization;
+ (id)recordIDWithZoneID:(id)a3;
- (HDCloudSyncMasterRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4;
- (id)initInSyncCircle:(id)a3 disabledOwnerIdentifiers:(id)a4;
- (id)initInZone:(id)a3 disabledOwnerIdentifiers:(id)a4;
- (id)initWithCKRecord:(void *)a3 disabledOwnerIdentifiers:(uint64_t)a4 schemaVersion:;
- (void)setDisabledOwnerIdentifiers:(id)a3;
@end

@implementation HDCloudSyncMasterRecord

- (HDCloudSyncMasterRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (id)initInSyncCircle:(id)a3 disabledOwnerIdentifiers:(id)a4
{
  v6 = MEMORY[0x277CBC5F8];
  v7 = a4;
  v8 = [v6 hd_masterZoneIDForSyncCircleIdentifier:a3];
  v9 = [(HDCloudSyncMasterRecord *)self initInZone:v8 disabledOwnerIdentifiers:v7];

  return v9;
}

- (id)initInZone:(id)a3 disabledOwnerIdentifiers:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() recordIDWithZoneID:v7];

  v9 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncMasterRecord" recordID:v8];
  v10 = [(HDCloudSyncMasterRecord *)self initWithCKRecord:v9 disabledOwnerIdentifiers:v6 schemaVersion:1];

  return v10;
}

- (id)initWithCKRecord:(void *)a3 disabledOwnerIdentifiers:(uint64_t)a4 schemaVersion:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = HDCloudSyncMasterRecord;
    v9 = objc_msgSendSuper2(&v14, sel_initWithCKRecord_schemaVersion_, v7, a4);
    if (v9)
    {
      v10 = [v8 allObjects];
      [v7 setObject:v10 forKeyedSubscript:@"DeletedOwnerIdentifiers"];

      v11 = [v8 copy];
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

- (void)setDisabledOwnerIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  disabledOwnerIdentifiers = self->_disabledOwnerIdentifiers;
  self->_disabledOwnerIdentifiers = v5;

  v8 = [v4 allObjects];

  v7 = [(HDCloudSyncRecord *)self record];
  [v7 setObject:v8 forKeyedSubscript:@"DeletedOwnerIdentifiers"];
}

+ (id)fieldsForUnprotectedSerialization
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = a1;
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

+ (HDCloudSyncMasterRecord)recordWithCKRecord:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 recordType];
  v8 = [v7 isEqualToString:@"CloudSyncMasterRecord"];

  if (v8)
  {
    v9 = [v6 hd_requiredValueForKey:@"Version" type:objc_opt_class() error:a4];
    if (v9)
    {
      v10 = [v6 hd_requiredValueForKey:@"DeletedOwnerIdentifiers" type:objc_opt_class() error:a4];
      v11 = v10;
      if (v10)
      {
        v30 = v6;
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
                  if (a4)
                  {
                    v19 = v17;
                    *a4 = v18;
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
        v6 = v30;
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
    v25 = [v6 recordType];
    v26 = [v23 hk_errorForInvalidArgument:@"@" class:v24 selector:a2 format:{@"record has type (%@), but expected (%@)", v25, @"CloudSyncMasterRecord"}];
    if (v26)
    {
      if (a4)
      {
        v27 = v26;
        *a4 = v26;
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
  v5 = [[v3 alloc] initWithRecordName:@"CloudSyncMaster" zoneID:v4];

  return v5;
}

+ (BOOL)isMasterRecord:(id)a3
{
  v3 = [a3 recordType];
  v4 = [v3 isEqualToString:@"CloudSyncMasterRecord"];

  return v4;
}

+ (BOOL)isMasterRecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [v3 isEqualToString:@"CloudSyncMaster"];

  return v4;
}

@end