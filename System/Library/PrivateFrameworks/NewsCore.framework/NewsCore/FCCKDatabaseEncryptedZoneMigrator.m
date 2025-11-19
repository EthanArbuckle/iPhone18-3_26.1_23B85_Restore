@interface FCCKDatabaseEncryptedZoneMigrator
- (BOOL)databaseMigrationShouldDropRecord:(id)a3 database:(id)a4;
- (id)databaseMigrationMigrateRecord:(id)a3 database:(id)a4 error:(id *)a5;
- (id)databaseMigrationRecordNamesToMigrateInZone:(id)a3 fromVersion:(int64_t)a4 toVersion:(int64_t)a5;
- (id)databaseMigrationZoneNamesFromVersion:(int64_t)a3 toVersion:(int64_t)a4;
- (id)initWithSchema:(void *)a3 recordEncryptionMiddleware:(void *)a4 deprecatedBlock:;
@end

@implementation FCCKDatabaseEncryptedZoneMigrator

- (id)initWithSchema:(void *)a3 recordEncryptionMiddleware:(void *)a4 deprecatedBlock:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = FCCKDatabaseEncryptedZoneMigrator;
    v11 = objc_msgSendSuper2(&v15, sel_init);
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      v12 = [v10 copy];
      v13 = a1[3];
      a1[3] = v12;
    }
  }

  return a1;
}

- (id)databaseMigrationZoneNamesFromVersion:(int64_t)a3 toVersion:(int64_t)a4
{
  if (self)
  {
    self = self->_schema;
  }

  return [(FCCKPrivateDatabaseSchema *)self zoneNamesWithChangesFromVersion:a3 toVersion:a4];
}

- (id)databaseMigrationRecordNamesToMigrateInZone:(id)a3 fromVersion:(int64_t)a4 toVersion:(int64_t)a5
{
  if ([a3 isEqualToString:*MEMORY[0x1E695B800]])
  {
    if (self)
    {
      schema = self->_schema;
    }

    else
    {
      schema = 0;
    }

    v9 = [(FCCKPrivateDatabaseSchema *)schema recordNamesInDefaultZoneChangedFromVersion:a4 toVersion:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)databaseMigrationShouldDropRecord:(id)a3 database:(id)a4
{
  v5 = a3;
  if (self)
  {
    v6 = self->_deprecatedBlock;
    if (v6)
    {
      v7 = v6;
      LOBYTE(self) = (*(self->_deprecatedBlock + 2))();
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (id)databaseMigrationMigrateRecord:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!self || !self->_recordEncryptionMiddleware)
  {
    v27[1] = MEMORY[0x1E69E9820];
    v27[2] = 3221225472;
    v27[3] = __83__FCCKDatabaseEncryptedZoneMigrator_databaseMigrationMigrateRecord_database_error___block_invoke;
    v27[4] = &unk_1E7C46520;
    v28 = v8;
    v23 = v28;
    v12 = v23;
    goto LABEL_11;
  }

  v10 = v8;
  v11 = self->_schema;
  v12 = v10;
  if (v9)
  {
    v13 = v9[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(FCCKPrivateDatabaseSchema *)v11 mappingFromRecord:v12 toVersion:v13];

  v15 = [v14 hasChanges];
  if (!v15)
  {
    v23 = 0;
    if (!a5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v16 = objc_autoreleasePoolPush();
  recordEncryptionMiddleware = self->_recordEncryptionMiddleware;
  v27[0] = 0;
  v18 = recordEncryptionMiddleware;
  v19 = [(FCCKDatabaseRecordMiddleware *)v18 serverToClientRecord:v12 inDatabase:v9 error:v27];
  v20 = v27[0];

  v21 = self->_recordEncryptionMiddleware;
  v26 = v20;
  v22 = v21;
  v12 = [(FCCKDatabaseRecordMiddleware *)v22 clientToServerRecord:v19 inDatabase:v9 error:&v26];
  v23 = v26;

  objc_autoreleasePoolPop(v16);
  if (a5)
  {
LABEL_10:
    v24 = v23;
    *a5 = v23;
  }

LABEL_11:

  return v12;
}

@end