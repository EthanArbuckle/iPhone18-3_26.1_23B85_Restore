@interface CKRecord
+ (id)secureSentinelRecordWithEncryptionKey:(uint64_t)key;
- (id)fc_secureSentinel_encryptionKey;
- (id)fc_sentinel_encryptionKey;
- (uint64_t)fc_sentinel_databaseVersion;
- (uint64_t)fc_sentinel_deletedToDatabaseVersion;
- (void)fc_sentinel_finishedDeletion;
- (void)fc_sentinel_finishedDeletionToVersion;
- (void)fc_sentinel_finishedMigration;
- (void)fc_sentinel_finishedMigrationToVersion;
- (void)fc_sentinel_finishedSubscriptionDeletion;
- (void)fc_sentinel_finishedSubscriptionMigration;
- (void)setFc_sentinel_databaseVersion:(void *)version;
- (void)setFc_sentinel_deletedToDatabaseVersion:(void *)version;
- (void)setFc_sentinel_encryptionKey:(void *)key;
- (void)setFc_sentinel_finishedDeletion:(void *)deletion;
- (void)setFc_sentinel_finishedDeletionToVersion:(void *)version;
- (void)setFc_sentinel_finishedMigration:(void *)migration;
- (void)setFc_sentinel_finishedMigrationToVersion:(void *)version;
- (void)setFc_sentinel_finishedSubscriptionDeletion:(void *)deletion;
- (void)setFc_sentinel_finishedSubscriptionMigration:(void *)migration;
- (void)setFc_sentinel_version:(void *)fc_sentinel_version;
@end

@implementation CKRecord

- (id)fc_sentinel_encryptionKey
{
  if (self)
  {
    encryptedValuesByKey = [self encryptedValuesByKey];
    v2 = [encryptedValuesByKey objectForKeyedSubscript:@"encryptionKey"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setFc_sentinel_encryptionKey:(void *)key
{
  if (key)
  {
    v3 = a2;
    encryptedValuesByKey = [key encryptedValuesByKey];
    [encryptedValuesByKey setObject:v3 forKeyedSubscript:@"encryptionKey"];
  }
}

- (void)fc_sentinel_finishedMigration
{
  if (result)
  {
    valuesByKey = [result valuesByKey];
    v2 = [valuesByKey objectForKeyedSubscript:@"migratedUnencryptedData"];
    bOOLValue = [v2 BOOLValue];

    return bOOLValue;
  }

  return result;
}

- (void)setFc_sentinel_finishedMigration:(void *)migration
{
  if (migration && [(CKRecord *)migration fc_sentinel_finishedMigration]!= a2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    valuesByKey = [migration valuesByKey];
    [valuesByKey setObject:v5 forKeyedSubscript:@"migratedUnencryptedData"];
  }
}

- (void)fc_sentinel_finishedDeletion
{
  if (result)
  {
    valuesByKey = [result valuesByKey];
    v2 = [valuesByKey objectForKeyedSubscript:@"deletedUnencryptedData"];
    bOOLValue = [v2 BOOLValue];

    return bOOLValue;
  }

  return result;
}

- (void)setFc_sentinel_finishedDeletion:(void *)deletion
{
  if (deletion && [(CKRecord *)deletion fc_sentinel_finishedDeletion]!= a2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    valuesByKey = [deletion valuesByKey];
    [valuesByKey setObject:v5 forKeyedSubscript:@"deletedUnencryptedData"];
  }
}

- (void)fc_sentinel_finishedSubscriptionMigration
{
  if (result)
  {
    valuesByKey = [result valuesByKey];
    v2 = [valuesByKey objectForKeyedSubscript:@"migratedSubscriptions"];
    bOOLValue = [v2 BOOLValue];

    return bOOLValue;
  }

  return result;
}

- (void)setFc_sentinel_finishedSubscriptionMigration:(void *)migration
{
  if (migration && [(CKRecord *)migration fc_sentinel_finishedSubscriptionMigration]!= a2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    valuesByKey = [migration valuesByKey];
    [valuesByKey setObject:v5 forKeyedSubscript:@"migratedSubscriptions"];
  }
}

- (void)fc_sentinel_finishedSubscriptionDeletion
{
  if (result)
  {
    valuesByKey = [result valuesByKey];
    v2 = [valuesByKey objectForKeyedSubscript:@"deletedSubscriptions"];
    bOOLValue = [v2 BOOLValue];

    return bOOLValue;
  }

  return result;
}

- (void)setFc_sentinel_finishedSubscriptionDeletion:(void *)deletion
{
  if (deletion && [(CKRecord *)deletion fc_sentinel_finishedSubscriptionDeletion]!= a2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    valuesByKey = [deletion valuesByKey];
    [valuesByKey setObject:v5 forKeyedSubscript:@"deletedSubscriptions"];
  }
}

- (void)fc_sentinel_finishedMigrationToVersion
{
  if (result)
  {
    encryptedValuesByKey = [result encryptedValuesByKey];
    v2 = [encryptedValuesByKey objectForKeyedSubscript:@"migratedToVersion"];
    unsignedIntegerValue = [v2 unsignedIntegerValue];

    return unsignedIntegerValue;
  }

  return result;
}

- (void)setFc_sentinel_finishedMigrationToVersion:(void *)version
{
  if (version && [(CKRecord *)version fc_sentinel_finishedMigrationToVersion]!= a2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    encryptedValuesByKey = [version encryptedValuesByKey];
    [encryptedValuesByKey setObject:v5 forKeyedSubscript:@"migratedToVersion"];
  }
}

- (void)fc_sentinel_finishedDeletionToVersion
{
  if (result)
  {
    encryptedValuesByKey = [result encryptedValuesByKey];
    v2 = [encryptedValuesByKey objectForKeyedSubscript:@"deletedToVersion"];
    integerValue = [v2 integerValue];

    return integerValue;
  }

  return result;
}

- (void)setFc_sentinel_finishedDeletionToVersion:(void *)version
{
  if (version && [(CKRecord *)version fc_sentinel_finishedDeletionToVersion]!= a2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    encryptedValuesByKey = [version encryptedValuesByKey];
    [encryptedValuesByKey setObject:v5 forKeyedSubscript:@"deletedToVersion"];
  }
}

- (void)setFc_sentinel_version:(void *)fc_sentinel_version
{
  if (fc_sentinel_version)
  {
    valuesByKey = [fc_sentinel_version valuesByKey];
    v5 = [valuesByKey objectForKeyedSubscript:@"version"];
    integerValue = [v5 integerValue];

    if (integerValue != a2)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
      valuesByKey2 = [fc_sentinel_version valuesByKey];
      [valuesByKey2 setObject:v8 forKeyedSubscript:@"version"];
    }
  }
}

+ (id)secureSentinelRecordWithEncryptionKey:(uint64_t)key
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc(MEMORY[0x1E695BA60]);
  v4 = +[CKRecordID fc_staticSecureSentinelRecordID];
  v5 = [v3 initWithRecordType:@"SentinelSecure" recordID:v4];

  if (v5)
  {
    v6 = v2;
    encryptedValuesByKey = [v5 encryptedValuesByKey];
    [encryptedValuesByKey setObject:v6 forKeyedSubscript:@"encryptionKey"];

    valuesByKey = [v5 valuesByKey];
    v9 = [valuesByKey objectForKeyedSubscript:@"version"];
    unsignedIntegerValue = [v9 unsignedIntegerValue];

    if (unsignedIntegerValue == 1)
    {
      goto LABEL_5;
    }

    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
    valuesByKey2 = [v5 valuesByKey];
    [valuesByKey2 setObject:v2 forKeyedSubscript:@"version"];
  }

LABEL_5:

  return v5;
}

- (id)fc_secureSentinel_encryptionKey
{
  if (self)
  {
    encryptedValuesByKey = [self encryptedValuesByKey];
    v2 = [encryptedValuesByKey objectForKeyedSubscript:@"encryptionKey"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)fc_sentinel_databaseVersion
{
  if (result)
  {
    v1 = result;
    if ([(CKRecord *)result fc_sentinel_finishedMigrationToVersion])
    {

      return [(CKRecord *)v1 fc_sentinel_finishedMigrationToVersion];
    }

    else if (([(CKRecord *)v1 fc_sentinel_finishedSubscriptionMigration]& 1) != 0)
    {
      return 2;
    }

    else
    {
      return [(CKRecord *)v1 fc_sentinel_finishedMigration];
    }
  }

  return result;
}

- (void)setFc_sentinel_databaseVersion:(void *)version
{
  if (version)
  {
    [(CKRecord *)version setFc_sentinel_finishedMigrationToVersion:a2];
    if (a2 <= 3)
    {
      [(CKRecord *)version setFc_sentinel_finishedMigration:?];

      [(CKRecord *)version setFc_sentinel_finishedSubscriptionMigration:?];
    }
  }
}

- (uint64_t)fc_sentinel_deletedToDatabaseVersion
{
  if (result)
  {
    v1 = result;
    if ([(CKRecord *)result fc_sentinel_finishedDeletionToVersion])
    {

      return [(CKRecord *)v1 fc_sentinel_finishedDeletionToVersion];
    }

    else if (([(CKRecord *)v1 fc_sentinel_finishedSubscriptionDeletion]& 1) != 0)
    {
      return 2;
    }

    else
    {
      return [(CKRecord *)v1 fc_sentinel_finishedDeletion];
    }
  }

  return result;
}

- (void)setFc_sentinel_deletedToDatabaseVersion:(void *)version
{
  if (version)
  {
    [(CKRecord *)version setFc_sentinel_finishedDeletionToVersion:a2];
    if (a2 <= 3)
    {
      [(CKRecord *)version setFc_sentinel_finishedDeletion:?];

      [(CKRecord *)version setFc_sentinel_finishedSubscriptionDeletion:?];
    }
  }
}

@end