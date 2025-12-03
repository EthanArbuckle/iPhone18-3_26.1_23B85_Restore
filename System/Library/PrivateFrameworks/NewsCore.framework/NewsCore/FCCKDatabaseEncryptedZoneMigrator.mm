@interface FCCKDatabaseEncryptedZoneMigrator
- (BOOL)databaseMigrationShouldDropRecord:(id)record database:(id)database;
- (id)databaseMigrationMigrateRecord:(id)record database:(id)database error:(id *)error;
- (id)databaseMigrationRecordNamesToMigrateInZone:(id)zone fromVersion:(int64_t)version toVersion:(int64_t)toVersion;
- (id)databaseMigrationZoneNamesFromVersion:(int64_t)version toVersion:(int64_t)toVersion;
- (id)initWithSchema:(void *)schema recordEncryptionMiddleware:(void *)middleware deprecatedBlock:;
@end

@implementation FCCKDatabaseEncryptedZoneMigrator

- (id)initWithSchema:(void *)schema recordEncryptionMiddleware:(void *)middleware deprecatedBlock:
{
  v8 = a2;
  schemaCopy = schema;
  middlewareCopy = middleware;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = FCCKDatabaseEncryptedZoneMigrator;
    v11 = objc_msgSendSuper2(&v15, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(self + 2, schema);
      v12 = [middlewareCopy copy];
      v13 = self[3];
      self[3] = v12;
    }
  }

  return self;
}

- (id)databaseMigrationZoneNamesFromVersion:(int64_t)version toVersion:(int64_t)toVersion
{
  if (self)
  {
    self = self->_schema;
  }

  return [(FCCKPrivateDatabaseSchema *)self zoneNamesWithChangesFromVersion:version toVersion:toVersion];
}

- (id)databaseMigrationRecordNamesToMigrateInZone:(id)zone fromVersion:(int64_t)version toVersion:(int64_t)toVersion
{
  if ([zone isEqualToString:*MEMORY[0x1E695B800]])
  {
    if (self)
    {
      schema = self->_schema;
    }

    else
    {
      schema = 0;
    }

    v9 = [(FCCKPrivateDatabaseSchema *)schema recordNamesInDefaultZoneChangedFromVersion:version toVersion:toVersion];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)databaseMigrationShouldDropRecord:(id)record database:(id)database
{
  recordCopy = record;
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

- (id)databaseMigrationMigrateRecord:(id)record database:(id)database error:(id *)error
{
  recordCopy = record;
  databaseCopy = database;
  if (!self || !self->_recordEncryptionMiddleware)
  {
    v27[1] = MEMORY[0x1E69E9820];
    v27[2] = 3221225472;
    v27[3] = __83__FCCKDatabaseEncryptedZoneMigrator_databaseMigrationMigrateRecord_database_error___block_invoke;
    v27[4] = &unk_1E7C46520;
    v28 = recordCopy;
    v23 = v28;
    v12 = v23;
    goto LABEL_11;
  }

  v10 = recordCopy;
  v11 = self->_schema;
  v12 = v10;
  if (databaseCopy)
  {
    v13 = databaseCopy[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(FCCKPrivateDatabaseSchema *)v11 mappingFromRecord:v12 toVersion:v13];

  hasChanges = [v14 hasChanges];
  if (!hasChanges)
  {
    v23 = 0;
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v16 = objc_autoreleasePoolPush();
  recordEncryptionMiddleware = self->_recordEncryptionMiddleware;
  v27[0] = 0;
  v18 = recordEncryptionMiddleware;
  v19 = [(FCCKDatabaseRecordMiddleware *)v18 serverToClientRecord:v12 inDatabase:databaseCopy error:v27];
  v20 = v27[0];

  v21 = self->_recordEncryptionMiddleware;
  v26 = v20;
  v22 = v21;
  v12 = [(FCCKDatabaseRecordMiddleware *)v22 clientToServerRecord:v19 inDatabase:databaseCopy error:&v26];
  v23 = v26;

  objc_autoreleasePoolPop(v16);
  if (error)
  {
LABEL_10:
    v24 = v23;
    *error = v23;
  }

LABEL_11:

  return v12;
}

@end