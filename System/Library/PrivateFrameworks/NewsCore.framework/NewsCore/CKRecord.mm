@interface CKRecord
+ (id)secureSentinelRecordWithEncryptionKey:(uint64_t)a1;
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
- (void)setFc_sentinel_databaseVersion:(void *)a1;
- (void)setFc_sentinel_deletedToDatabaseVersion:(void *)a1;
- (void)setFc_sentinel_encryptionKey:(void *)a1;
- (void)setFc_sentinel_finishedDeletion:(void *)a1;
- (void)setFc_sentinel_finishedDeletionToVersion:(void *)a1;
- (void)setFc_sentinel_finishedMigration:(void *)a1;
- (void)setFc_sentinel_finishedMigrationToVersion:(void *)a1;
- (void)setFc_sentinel_finishedSubscriptionDeletion:(void *)a1;
- (void)setFc_sentinel_finishedSubscriptionMigration:(void *)a1;
- (void)setFc_sentinel_version:(void *)a1;
@end

@implementation CKRecord

- (id)fc_sentinel_encryptionKey
{
  if (a1)
  {
    v1 = [a1 encryptedValuesByKey];
    v2 = [v1 objectForKeyedSubscript:@"encryptionKey"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setFc_sentinel_encryptionKey:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    v4 = [a1 encryptedValuesByKey];
    [v4 setObject:v3 forKeyedSubscript:@"encryptionKey"];
  }
}

- (void)fc_sentinel_finishedMigration
{
  if (result)
  {
    v1 = [result valuesByKey];
    v2 = [v1 objectForKeyedSubscript:@"migratedUnencryptedData"];
    v3 = [v2 BOOLValue];

    return v3;
  }

  return result;
}

- (void)setFc_sentinel_finishedMigration:(void *)a1
{
  if (a1 && [(CKRecord *)a1 fc_sentinel_finishedMigration]!= a2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v4 = [a1 valuesByKey];
    [v4 setObject:v5 forKeyedSubscript:@"migratedUnencryptedData"];
  }
}

- (void)fc_sentinel_finishedDeletion
{
  if (result)
  {
    v1 = [result valuesByKey];
    v2 = [v1 objectForKeyedSubscript:@"deletedUnencryptedData"];
    v3 = [v2 BOOLValue];

    return v3;
  }

  return result;
}

- (void)setFc_sentinel_finishedDeletion:(void *)a1
{
  if (a1 && [(CKRecord *)a1 fc_sentinel_finishedDeletion]!= a2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v4 = [a1 valuesByKey];
    [v4 setObject:v5 forKeyedSubscript:@"deletedUnencryptedData"];
  }
}

- (void)fc_sentinel_finishedSubscriptionMigration
{
  if (result)
  {
    v1 = [result valuesByKey];
    v2 = [v1 objectForKeyedSubscript:@"migratedSubscriptions"];
    v3 = [v2 BOOLValue];

    return v3;
  }

  return result;
}

- (void)setFc_sentinel_finishedSubscriptionMigration:(void *)a1
{
  if (a1 && [(CKRecord *)a1 fc_sentinel_finishedSubscriptionMigration]!= a2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v4 = [a1 valuesByKey];
    [v4 setObject:v5 forKeyedSubscript:@"migratedSubscriptions"];
  }
}

- (void)fc_sentinel_finishedSubscriptionDeletion
{
  if (result)
  {
    v1 = [result valuesByKey];
    v2 = [v1 objectForKeyedSubscript:@"deletedSubscriptions"];
    v3 = [v2 BOOLValue];

    return v3;
  }

  return result;
}

- (void)setFc_sentinel_finishedSubscriptionDeletion:(void *)a1
{
  if (a1 && [(CKRecord *)a1 fc_sentinel_finishedSubscriptionDeletion]!= a2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v4 = [a1 valuesByKey];
    [v4 setObject:v5 forKeyedSubscript:@"deletedSubscriptions"];
  }
}

- (void)fc_sentinel_finishedMigrationToVersion
{
  if (result)
  {
    v1 = [result encryptedValuesByKey];
    v2 = [v1 objectForKeyedSubscript:@"migratedToVersion"];
    v3 = [v2 unsignedIntegerValue];

    return v3;
  }

  return result;
}

- (void)setFc_sentinel_finishedMigrationToVersion:(void *)a1
{
  if (a1 && [(CKRecord *)a1 fc_sentinel_finishedMigrationToVersion]!= a2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v4 = [a1 encryptedValuesByKey];
    [v4 setObject:v5 forKeyedSubscript:@"migratedToVersion"];
  }
}

- (void)fc_sentinel_finishedDeletionToVersion
{
  if (result)
  {
    v1 = [result encryptedValuesByKey];
    v2 = [v1 objectForKeyedSubscript:@"deletedToVersion"];
    v3 = [v2 integerValue];

    return v3;
  }

  return result;
}

- (void)setFc_sentinel_finishedDeletionToVersion:(void *)a1
{
  if (a1 && [(CKRecord *)a1 fc_sentinel_finishedDeletionToVersion]!= a2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v4 = [a1 encryptedValuesByKey];
    [v4 setObject:v5 forKeyedSubscript:@"deletedToVersion"];
  }
}

- (void)setFc_sentinel_version:(void *)a1
{
  if (a1)
  {
    v4 = [a1 valuesByKey];
    v5 = [v4 objectForKeyedSubscript:@"version"];
    v6 = [v5 integerValue];

    if (v6 != a2)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
      v7 = [a1 valuesByKey];
      [v7 setObject:v8 forKeyedSubscript:@"version"];
    }
  }
}

+ (id)secureSentinelRecordWithEncryptionKey:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc(MEMORY[0x1E695BA60]);
  v4 = +[CKRecordID fc_staticSecureSentinelRecordID];
  v5 = [v3 initWithRecordType:@"SentinelSecure" recordID:v4];

  if (v5)
  {
    v6 = v2;
    v7 = [v5 encryptedValuesByKey];
    [v7 setObject:v6 forKeyedSubscript:@"encryptionKey"];

    v8 = [v5 valuesByKey];
    v9 = [v8 objectForKeyedSubscript:@"version"];
    v10 = [v9 unsignedIntegerValue];

    if (v10 == 1)
    {
      goto LABEL_5;
    }

    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
    v11 = [v5 valuesByKey];
    [v11 setObject:v2 forKeyedSubscript:@"version"];
  }

LABEL_5:

  return v5;
}

- (id)fc_secureSentinel_encryptionKey
{
  if (a1)
  {
    v1 = [a1 encryptedValuesByKey];
    v2 = [v1 objectForKeyedSubscript:@"encryptionKey"];
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

- (void)setFc_sentinel_databaseVersion:(void *)a1
{
  if (a1)
  {
    [(CKRecord *)a1 setFc_sentinel_finishedMigrationToVersion:a2];
    if (a2 <= 3)
    {
      [(CKRecord *)a1 setFc_sentinel_finishedMigration:?];

      [(CKRecord *)a1 setFc_sentinel_finishedSubscriptionMigration:?];
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

- (void)setFc_sentinel_deletedToDatabaseVersion:(void *)a1
{
  if (a1)
  {
    [(CKRecord *)a1 setFc_sentinel_finishedDeletionToVersion:a2];
    if (a2 <= 3)
    {
      [(CKRecord *)a1 setFc_sentinel_finishedDeletion:?];

      [(CKRecord *)a1 setFc_sentinel_finishedSubscriptionDeletion:?];
    }
  }
}

@end