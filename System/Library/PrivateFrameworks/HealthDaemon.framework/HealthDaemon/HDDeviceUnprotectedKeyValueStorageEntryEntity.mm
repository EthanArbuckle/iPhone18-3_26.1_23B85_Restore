@interface HDDeviceUnprotectedKeyValueStorageEntryEntity
+ (id)_propertiesForEntity;
+ (id)foreignKeys;
+ (void)binderHandlerForBinder:(HDSQLiteStatementBinder *)binder key:(id)key domain:(id)domain object:(id)object syncEntityIdentity:(int64_t)identity deviceContext:(int64_t)context modificationDate:(id)date;
+ (void)binderHandlerForBinder:(HDSQLiteStatementBinder *)binder syncEntityIdentity:(int64_t)identity deviceContext:(int64_t)context;
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

+ (void)binderHandlerForBinder:(HDSQLiteStatementBinder *)binder key:(id)key domain:(id)domain object:(id)object syncEntityIdentity:(int64_t)identity deviceContext:(int64_t)context modificationDate:(id)date
{
  dateCopy = date;
  objectCopy = object;
  domainCopy = domain;
  keyCopy = key;
  MEMORY[0x22AAC6B90](binder, @"sync_identity_id", identity);
  MEMORY[0x22AAC6B90](binder, @"device_record_id", context);
  MEMORY[0x22AAC6BD0](binder, @"domain", domainCopy);

  MEMORY[0x22AAC6BD0](binder, @"key", keyCopy);
  MEMORY[0x22AAC6B40](binder, @"value", objectCopy);

  [dateCopy timeIntervalSinceReferenceDate];

  JUMPOUT(0x22AAC6B60);
}

+ (void)binderHandlerForBinder:(HDSQLiteStatementBinder *)binder syncEntityIdentity:(int64_t)identity deviceContext:(int64_t)context
{
  MEMORY[0x22AAC6B90](binder, @"sync_identity_id", identity);

  JUMPOUT(0x22AAC6B90);
}

@end