@interface MFMigrationPersistence
+ (BOOL)migrateDatabaseAtPath:(id)path;
- (MFMigrationPersistence)init;
@end

@implementation MFMigrationPersistence

- (MFMigrationPersistence)init
{
  v5.receiver = self;
  v5.super_class = MFMigrationPersistence;
  v2 = [(MFMigrationPersistence *)&v5 init];
  v3 = v2;
  if (v2)
  {
    MFSetUserAgent(v2);
  }

  return v3;
}

+ (BOOL)migrateDatabaseAtPath:(id)path
{
  pathCopy = path;
  v4 = objc_alloc_init(MEMORY[0x1E699B618]);
  v5 = [objc_alloc(MEMORY[0x1E699B930]) initWithAllowedProtocolPrefixes:0x1F2774C80];
  [MEMORY[0x1E699B610] registerAdditionalPropertiesForPropertyMapper:v5];
  v6 = [(EDProtectedDatabasePersistence *)[MFProtectedDatabasePersistence_iOS alloc] initWithBasePath:pathCopy hookRegistry:v4];
  v7 = [MFPersistenceDatabase_iOS alloc];
  v8 = +[(EDPersistenceDatabaseSchema *)MFPersistenceDatabaseSchema_iOS];
  v9 = +[(EDPersistenceDatabaseSchema *)MFPersistenceDatabaseSchema_iOS];
  v10 = [(MFPersistenceDatabase_iOS *)v7 initWithBasePath:pathCopy databaseName:@"Envelope Index" minimumCachedReaderConnections:3 schema:v8 protectedSchema:v9 propertyMapper:v5 protectedDatabasePersistence:v6];

  v11 = objc_autoreleasePoolPush();
  v12 = [(MFPersistenceDatabase_iOS *)v10 openConnectionIsWriter:0];
  v13 = v12;
  if (v12)
  {
    [v12 close];
  }

  objc_autoreleasePoolPop(v11);
  return v13 != 0;
}

@end