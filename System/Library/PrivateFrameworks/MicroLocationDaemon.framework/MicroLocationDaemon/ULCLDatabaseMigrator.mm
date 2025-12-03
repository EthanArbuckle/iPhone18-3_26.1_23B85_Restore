@interface ULCLDatabaseMigrator
- (BOOL)_migrateTableUsingPaging:(ULSqliteDatabase *)paging tableName:(const char *)name migrationLimit:(unsigned int)limit pageSize:(unsigned int)size copyPageBlock:(id)block;
- (BOOL)migrateCLDatabaseFromPath:(id)path;
- (ULCLDatabaseMigrator)initWithDbStore:(ULDatabaseStoreInterface *)store;
- (unique_ptr<CLSqliteDatabase,)_connectToLocationdDatabase:(const void *)database;
- (void)_logStatsForExportedDatabase:(ULSqliteDatabase *)database;
- (void)_logStatsForLocalDatabase;
@end

@implementation ULCLDatabaseMigrator

- (ULCLDatabaseMigrator)initWithDbStore:(ULDatabaseStoreInterface *)store
{
  v7.receiver = self;
  v7.super_class = ULCLDatabaseMigrator;
  v4 = [(ULCLDatabaseMigrator *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ULCLDatabaseMigrator *)v4 setDbStore:store];
  }

  return v5;
}

- (BOOL)migrateCLDatabaseFromPath:(id)path
{
  pathCopy = path;
  path = [pathCopy path];
  v6 = path;
  if (path)
  {
    [path stdString];
  }

  else
  {
    *__p = 0u;
    v12 = 0u;
  }

  if (BYTE8(v12))
  {
    [(ULCLDatabaseMigrator *)self _connectToLocationdDatabase:__p];
    if (CLSqliteDatabase::isDatabaseValid(*buf))
    {
      operator new();
    }

    v8 = *buf;
    *buf = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULCLDatabaseMigrator migrateCLDatabaseFromPath:];
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "Invalid db path for migration. path is nil", buf, 2u);
    }
  }

  if (BYTE8(v12) == 1 && SBYTE7(v12) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

- (unique_ptr<CLSqliteDatabase,)_connectToLocationdDatabase:(const void *)database
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = 0x100000002;
  v4 = 257;
  if (*(database + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *database, *(database + 1));
  }

  else
  {
    __p = *database;
  }

  operator new();
}

- (BOOL)_migrateTableUsingPaging:(ULSqliteDatabase *)paging tableName:(const char *)name migrationLimit:(unsigned int)limit pageSize:(unsigned int)size copyPageBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v13 = ![(ULCLDatabaseMigrator *)self migrateAllData];
  if (limit)
  {
    v13 = 0;
  }

  if (!size || v13)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULCLDatabaseMigrator _migrateTableUsingPaging:tableName:migrationLimit:pageSize:copyPageBlock:];
    }

    v14 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      v21 = 68289794;
      v22 = 2082;
      v23 = "";
      v24 = 1026;
      *v25 = limit;
      *&v25[4] = 1026;
      *&v25[6] = size;
      v26 = 2082;
      nameCopy = name;
      v15 = "{msg%{public}.0s:#dataMigrator, migrationLimit or pageSize is 0. skipping migration for table, migrationLimit:%{public}u, pageSize:%{public}u, tableName:%{public, location:escape_only}s}";
      v16 = v14;
      v17 = 40;
LABEL_15:
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_INFO, v15, &v21, v17);
    }
  }

  else
  {
    if (ULSqliteDatabase::tableExists(paging, name))
    {
      ULSqliteDatabase::numEntries(paging, name);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULCLDatabaseMigrator _migrateTableUsingPaging:tableName:migrationLimit:pageSize:copyPageBlock:];
    }

    v18 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      v21 = 68289282;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      *v25 = name;
      v15 = "{msg%{public}.0s:#dataMigrator, table is missing in imported db, tableName:%{public, location:escape_only}s}";
      v16 = v18;
      v17 = 28;
      goto LABEL_15;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_logStatsForExportedDatabase:(ULSqliteDatabase *)database
{
  v6 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULCLDatabaseMigrator _migrateTableUsingPaging:tableName:migrationLimit:pageSize:copyPageBlock:];
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    ULSqliteDatabase::numEntries(database, "MicroLocationRecordingEvents");
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_logStatsForLocalDatabase
{
  v68 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULCLDatabaseMigrator _migrateTableUsingPaging:tableName:migrationLimit:pageSize:copyPageBlock:];
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    dbStore = [(ULCLDatabaseMigrator *)self dbStore];
    v39 = (*(dbStore->var0 + 12))(dbStore);
    v34 = [v39 count];
    dbStore2 = [(ULCLDatabaseMigrator *)self dbStore];
    v38 = (*(dbStore2->var0 + 9))(dbStore2);
    v32 = [v38 count];
    dbStore3 = [(ULCLDatabaseMigrator *)self dbStore];
    v37 = (*(dbStore3->var0 + 6))(dbStore3);
    v31 = [v37 count];
    dbStore4 = [(ULCLDatabaseMigrator *)self dbStore];
    v36 = (*(dbStore4->var0 + 13))(dbStore4);
    v29 = [v36 count];
    dbStore5 = [(ULCLDatabaseMigrator *)self dbStore];
    v35 = (*(dbStore5->var0 + 8))(dbStore5);
    v28 = [v35 count];
    dbStore6 = [(ULCLDatabaseMigrator *)self dbStore];
    v33 = (*(dbStore6->var0 + 11))(dbStore6);
    v27 = [v33 count];
    dbStore7 = [(ULCLDatabaseMigrator *)self dbStore];
    v30 = (*(dbStore7->var0 + 3))(dbStore7);
    v26 = [v30 count];
    dbStore8 = [(ULCLDatabaseMigrator *)self dbStore];
    v12 = (*(dbStore8->var0 + 4))(dbStore8);
    v13 = [v12 count];
    dbStore9 = [(ULCLDatabaseMigrator *)self dbStore];
    v15 = (*(dbStore9->var0 + 5))(dbStore9);
    v16 = [v15 count];
    dbStore10 = [(ULCLDatabaseMigrator *)self dbStore];
    v18 = (*(dbStore10->var0 + 10))(dbStore10);
    v19 = [v18 count];
    dbStore11 = [(ULCLDatabaseMigrator *)self dbStore];
    v21 = (*(dbStore11->var0 + 14))(dbStore11);
    v22 = [v21 count];
    dbStore12 = [(ULCLDatabaseMigrator *)self dbStore];
    v24 = (*(dbStore12->var0 + 7))(dbStore12);
    *buf = 68292099;
    v41 = 0;
    v42 = 2082;
    v43 = "";
    v44 = 1025;
    v45 = v34;
    v46 = 1025;
    v47 = v32;
    v48 = 1025;
    v49 = v31;
    v50 = 1025;
    v51 = v29;
    v52 = 1025;
    v53 = v28;
    v54 = 1025;
    v55 = v27;
    v56 = 1025;
    v57 = v26;
    v58 = 1025;
    v59 = v13;
    v60 = 1025;
    v61 = v16;
    v62 = 1025;
    v63 = v19;
    v64 = 1025;
    v65 = v22;
    v66 = 1025;
    v67 = [v24 count];
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Local database stats, RecordingEvent:%{private}u, Measurement:%{private}u, Label:%{private}u, Service:%{private}u, LOI:%{private}u, Rapport:%{private}u, AssociatedState:%{private}u, BluetoothIdentity:%{private}u, Configuration:%{private}u, Model:%{private}u, CustomLOI:%{private}u, LoggedEvent:%{private}u}", buf, 0x5Au);
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end