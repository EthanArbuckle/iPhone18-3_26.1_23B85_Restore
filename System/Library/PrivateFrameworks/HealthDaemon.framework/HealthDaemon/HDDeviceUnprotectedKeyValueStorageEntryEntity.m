@interface HDDeviceUnprotectedKeyValueStorageEntryEntity
+ (id)_propertiesForEntity;
+ (id)foreignKeys;
+ (void)binderHandlerForBinder:(HDSQLiteStatementBinder *)a3 key:(id)a4 domain:(id)a5 object:(id)a6 syncEntityIdentity:(int64_t)a7 deviceContext:(int64_t)a8 modificationDate:(id)a9;
+ (void)binderHandlerForBinder:(HDSQLiteStatementBinder *)a3 syncEntityIdentity:(int64_t)a4 deviceContext:(int64_t)a5;
@end

@implementation HDDeviceUnprotectedKeyValueStorageEntryEntity

+ (id)_propertiesForEntity
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = @"sync_identity_id";
  v5[1] = @"device_record_id";
  v5[2] = @"domain";
  v5[3] = @"key";
  v5[4] = @"value";
  v5[5] = @"date_modified";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"device_record_id";
  v2 = +[(HDHealthEntity *)HDDeviceContextEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (void)binderHandlerForBinder:(HDSQLiteStatementBinder *)a3 key:(id)a4 domain:(id)a5 object:(id)a6 syncEntityIdentity:(int64_t)a7 deviceContext:(int64_t)a8 modificationDate:(id)a9
{
  v15 = a9;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  MEMORY[0x22AAC6B90](a3, @"sync_identity_id", a7);
  MEMORY[0x22AAC6B90](a3, @"device_record_id", a8);
  MEMORY[0x22AAC6BD0](a3, @"domain", v17);

  MEMORY[0x22AAC6BD0](a3, @"key", v18);
  MEMORY[0x22AAC6B40](a3, @"value", v16);

  [v15 timeIntervalSinceReferenceDate];

  JUMPOUT(0x22AAC6B60);
}

+ (void)binderHandlerForBinder:(HDSQLiteStatementBinder *)a3 syncEntityIdentity:(int64_t)a4 deviceContext:(int64_t)a5
{
  MEMORY[0x22AAC6B90](a3, @"sync_identity_id", a4);

  JUMPOUT(0x22AAC6B90);
}

@end