@interface ULCLDatabaseMigrator
- (BOOL)_migrateTableUsingPaging:(ULSqliteDatabase *)a3 tableName:(const char *)a4 migrationLimit:(unsigned int)a5 pageSize:(unsigned int)a6 copyPageBlock:(id)a7;
- (BOOL)migrateCLDatabaseFromPath:(id)a3;
- (ULCLDatabaseMigrator)initWithDbStore:(ULDatabaseStoreInterface *)a3;
- (unique_ptr<CLSqliteDatabase,)_connectToLocationdDatabase:(const void *)a3;
- (void)_logStatsForExportedDatabase:(ULSqliteDatabase *)a3;
- (void)_logStatsForLocalDatabase;
@end

@implementation ULCLDatabaseMigrator

- (ULCLDatabaseMigrator)initWithDbStore:(ULDatabaseStoreInterface *)a3
{
  v7.receiver = self;
  v7.super_class = ULCLDatabaseMigrator;
  v4 = [(ULCLDatabaseMigrator *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ULCLDatabaseMigrator *)v4 setDbStore:a3];
  }

  return v5;
}

- (BOOL)migrateCLDatabaseFromPath:(id)a3
{
  v4 = a3;
  v5 = [v4 path];
  v6 = v5;
  if (v5)
  {
    [v5 stdString];
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

- (unique_ptr<CLSqliteDatabase,)_connectToLocationdDatabase:(const void *)a3
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = 0x100000002;
  v4 = 257;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 1));
  }

  else
  {
    __p = *a3;
  }

  operator new();
}

- (BOOL)_migrateTableUsingPaging:(ULSqliteDatabase *)a3 tableName:(const char *)a4 migrationLimit:(unsigned int)a5 pageSize:(unsigned int)a6 copyPageBlock:(id)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = a7;
  v13 = ![(ULCLDatabaseMigrator *)self migrateAllData];
  if (a5)
  {
    v13 = 0;
  }

  if (!a6 || v13)
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
      *v25 = a5;
      *&v25[4] = 1026;
      *&v25[6] = a6;
      v26 = 2082;
      v27 = a4;
      v15 = "{msg%{public}.0s:#dataMigrator, migrationLimit or pageSize is 0. skipping migration for table, migrationLimit:%{public}u, pageSize:%{public}u, tableName:%{public, location:escape_only}s}";
      v16 = v14;
      v17 = 40;
LABEL_15:
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_INFO, v15, &v21, v17);
    }
  }

  else
  {
    if (ULSqliteDatabase::tableExists(a3, a4))
    {
      ULSqliteDatabase::numEntries(a3, a4);
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
      *v25 = a4;
      v15 = "{msg%{public}.0s:#dataMigrator, table is missing in imported db, tableName:%{public, location:escape_only}s}";
      v16 = v18;
      v17 = 28;
      goto LABEL_15;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_logStatsForExportedDatabase:(ULSqliteDatabase *)a3
{
  v6 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULCLDatabaseMigrator _migrateTableUsingPaging:tableName:migrationLimit:pageSize:copyPageBlock:];
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    ULSqliteDatabase::numEntries(a3, "MicroLocationRecordingEvents");
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
    v4 = [(ULCLDatabaseMigrator *)self dbStore];
    v39 = (*(v4->var0 + 12))(v4);
    v34 = [v39 count];
    v5 = [(ULCLDatabaseMigrator *)self dbStore];
    v38 = (*(v5->var0 + 9))(v5);
    v32 = [v38 count];
    v6 = [(ULCLDatabaseMigrator *)self dbStore];
    v37 = (*(v6->var0 + 6))(v6);
    v31 = [v37 count];
    v7 = [(ULCLDatabaseMigrator *)self dbStore];
    v36 = (*(v7->var0 + 13))(v7);
    v29 = [v36 count];
    v8 = [(ULCLDatabaseMigrator *)self dbStore];
    v35 = (*(v8->var0 + 8))(v8);
    v28 = [v35 count];
    v9 = [(ULCLDatabaseMigrator *)self dbStore];
    v33 = (*(v9->var0 + 11))(v9);
    v27 = [v33 count];
    v10 = [(ULCLDatabaseMigrator *)self dbStore];
    v30 = (*(v10->var0 + 3))(v10);
    v26 = [v30 count];
    v11 = [(ULCLDatabaseMigrator *)self dbStore];
    v12 = (*(v11->var0 + 4))(v11);
    v13 = [v12 count];
    v14 = [(ULCLDatabaseMigrator *)self dbStore];
    v15 = (*(v14->var0 + 5))(v14);
    v16 = [v15 count];
    v17 = [(ULCLDatabaseMigrator *)self dbStore];
    v18 = (*(v17->var0 + 10))(v17);
    v19 = [v18 count];
    v20 = [(ULCLDatabaseMigrator *)self dbStore];
    v21 = (*(v20->var0 + 14))(v20);
    v22 = [v21 count];
    v23 = [(ULCLDatabaseMigrator *)self dbStore];
    v24 = (*(v23->var0 + 7))(v23);
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