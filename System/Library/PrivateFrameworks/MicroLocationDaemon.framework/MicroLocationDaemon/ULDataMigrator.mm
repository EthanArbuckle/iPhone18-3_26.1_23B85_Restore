@interface ULDataMigrator
- (BOOL)_initializeMigrationStatusMetricsDict:(id)a3 forType:(int64_t)a4;
- (BOOL)_migrateMiloDataTransaction;
- (BOOL)migrateMiloData;
- (ULDataMigrator)initWithDbStore:(ULDatabaseStoreInterface *)a3 andDbManagement:(ULDatabaseManagementInterface *)a4;
- (int64_t)_getCAMigrationErrorTypeForLastMigrationStateAfterMaxFailures:(int)a3;
- (void)_sendCoreAnalyticsEventForMigrationIfNecessary:(int64_t)a3;
@end

@implementation ULDataMigrator

- (ULDataMigrator)initWithDbStore:(ULDatabaseStoreInterface *)a3 andDbManagement:(ULDatabaseManagementInterface *)a4
{
  v9.receiver = self;
  v9.super_class = ULDataMigrator;
  v6 = [(ULDataMigrator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(ULDataMigrator *)v6 setDbStore:a3];
    [(ULDataMigrator *)v7 setDbManagement:a4];
  }

  return v7;
}

- (BOOL)migrateMiloData
{
  v20 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULDataMigrator migrateMiloData];
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "Migrating milo data", buf, 2u);
  }

  v4 = [(ULDataMigrator *)self dbManagement];
  if ((*(v4->var0 + 8))(v4))
  {
    v5 = [(ULDataMigrator *)self dbStore];
    v6 = (*(v5->var0 + 15))(v5);
    v18 = cl::chrono::CFAbsoluteTimeClock::now();
    ULMigrationDO::ULMigrationDO(v19, 3, &v18);
    *buf = 0;
    v15 = 0;
    v16 = 0;
    std::vector<ULMigrationDO>::__init_with_size[abi:ne200100]<ULMigrationDO const*,ULMigrationDO const*>(buf, v19, &v20, 1uLL);
    [v6 insertDataObjects:buf];
    if (*buf)
    {
      v15 = *buf;
      operator delete(*buf);
    }

    v7 = +[ULEventLog shared];
    [v7 log:@"Data Migration Event"];

    *buf = 0;
    v15 = buf;
    v16 = 0x2020000000;
    v17 = 0;
    v8 = +[ULTransactionManager shared];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __33__ULDataMigrator_migrateMiloData__block_invoke;
    v13[3] = &unk_2798D44D8;
    v13[4] = self;
    v13[5] = buf;
    [v8 performUnderTransaction:@"com.apple.milod.migrateData" block:v13];

    v9 = v15[24];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULDataMigrator migrateMiloData];
    }

    v10 = logObject_MicroLocation_Default;
    v9 = 0;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "local milo database is not connected", buf, 2u);
      v9 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

uint64_t __33__ULDataMigrator_migrateMiloData__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _migrateMiloDataTransaction];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_migrateMiloDataTransaction
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [[ULBackupAndRestore alloc] initWithDbStore:[(ULDataMigrator *)self dbStore] andDbManagement:[(ULDataMigrator *)self dbManagement]];
  if ([MEMORY[0x277D28868] isMac])
  {
    goto LABEL_8;
  }

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [(ULBackupAndRestore *)v3 getBackupDatabasePath];
  v6 = [v4 fileExistsAtPath:v5];

  if (!v6)
  {
    goto LABEL_8;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULDataMigrator migrateMiloData];
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "Migrating data from milod restored iCloud backup file", buf, 2u);
  }

  if ([(ULBackupAndRestore *)v3 importiCloudBackup])
  {
LABEL_8:
    v8 = [(ULDataMigrator *)self dbStore];
    v9 = (*(v8->var0 + 15))(v8);
    v16 = cl::chrono::CFAbsoluteTimeClock::now();
    ULMigrationDO::ULMigrationDO(v19, 2, &v16);
    *buf = 0;
    *v18 = 0;
    *&v18[8] = 0;
    std::vector<ULMigrationDO>::__init_with_size[abi:ne200100]<ULMigrationDO const*,ULMigrationDO const*>(buf, v19, &v20, 1uLL);
    [v9 insertDataObjects:buf];
    if (*buf)
    {
      *v18 = *buf;
      operator delete(*buf);
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULDataMigrator migrateMiloData];
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "fail";
    *buf = 68289282;
    *&buf[4] = 0;
    *v18 = 2082;
    *&v18[2] = "";
    if (v10)
    {
      v12 = "success";
    }

    *&v18[10] = 2082;
    *&v18[12] = v12;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:data migration iteration status., result:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v13 = [(ULDataMigrator *)self dbManagement];
  if ((*(v13->var0 + 14))(v13, 1) - 3 <= 1)
  {
    [(ULDataMigrator *)self _sendCoreAnalyticsEventForMigrationIfNecessary:0];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_sendCoreAnalyticsEventForMigrationIfNecessary:(int64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnalyticsSendEventEnabled"];
  v8 = [v6 objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v10 = v9;

  if (v10)
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
    if ([(ULDataMigrator *)self _initializeMigrationStatusMetricsDict:v11 forType:a3])
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULDataMigrator migrateMiloData];
      }

      v12 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15[0] = 68289538;
        v15[1] = 0;
        v16 = 2082;
        v17 = "";
        v18 = 2082;
        v19 = [@"com.apple.MicroLocation.DataMigration" UTF8String];
        v20 = 2114;
        v21 = v11;
        _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sending Migration CoreAnalytics, Event name:%{public, location:escape_only}s, metricsDict:%{public, location:escape_only}@}", v15, 0x26u);
      }

      AnalyticsSendEvent();
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULDataMigrator migrateMiloData];
    }

    v13 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_DEFAULT, "#Data Migrator, CoreAnalytics Disabled", v15, 2u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (int64_t)_getCAMigrationErrorTypeForLastMigrationStateAfterMaxFailures:(int)a3
{
  if ((a3 - 1) > 0xA)
  {
    return 3;
  }

  else
  {
    return qword_25921D2C0[a3 - 1];
  }
}

- (BOOL)_initializeMigrationStatusMetricsDict:(id)a3 forType:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(ULDataMigrator *)self dbStore];
    v8 = (*(v7->var0 + 15))(v7);
    v9 = v8;
    if (v8)
    {
      [v8 fetchAllRecordsWithLimit:0];
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v34 = 0;
    }

    v11 = *__p;
    v12 = __p[0];
    if (__p[0] == __p[1])
    {
      v13 = 0;
LABEL_17:
      v16 = -1;
LABEL_28:
      v23 = *(&v11 + 1);
      while (v23 != v11)
      {
        v24 = (v23 - 16);
        v25 = *(v23 - 8);
        v23 -= 16;
        if (v25 == 3)
        {
          v26 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
          [v6 setObject:v26 forKeyedSubscript:@"MigrationType"];

          v27 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
          [v6 setObject:v27 forKeyedSubscript:@"MigrationAttampts"];

          if (!v13)
          {
            v28 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
            [v6 setObject:v28 forKeyedSubscript:@"MigrationErrorType"];
          }

          v29 = [MEMORY[0x277CCABB0] numberWithDouble:*__p[0] - *v24];
          [v6 setObject:v29 forKeyedSubscript:@"MigrationDuration"];

          v10 = 1;
          goto LABEL_39;
        }
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULDataMigrator migrateMiloData];
      }

      v30 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *v32 = 0;
        _os_log_impl(&dword_258FE9000, v30, OS_LOG_TYPE_ERROR, "unexpected Error, MigrationInit entry not found", v32, 2u);
      }
    }

    else
    {
      v13 = 0;
      v14 = __p[0];
      do
      {
        if (v14[2] == 3)
        {
          ++v13;
        }

        v14 += 4;
      }

      while (v14 != __p[1]);
      v15 = __p[0];
      do
      {
        if (v15[2] == 2)
        {
          if (v15 == __p[1])
          {
            break;
          }

          goto LABEL_17;
        }

        v15 += 4;
      }

      while (v15 != __p[1]);
      while (v12[2] != 1)
      {
        v12 += 4;
        if (v12 == __p[1])
        {
          goto LABEL_22;
        }
      }

      if (v12 != __p[1])
      {
        v13 = 0;
        v16 = 4;
        goto LABEL_28;
      }

LABEL_22:
      v17 = +[ULDefaultsSingleton shared];
      v18 = [v17 defaultsDictionary];

      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDataMigrationMaxAttempts"];
      v20 = [v18 objectForKey:v19];
      if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v21 = [v20 unsignedIntValue];
      }

      else
      {
        v21 = [&unk_286A717C0 unsignedIntValue];
      }

      v22 = v21;

      if (v13 >= v22)
      {
        v16 = [(ULDataMigrator *)self _getCAMigrationErrorTypeForLastMigrationStateAfterMaxFailures:*(__p[0] + 2)];
        v13 = 0;
        v11 = *__p;
        goto LABEL_28;
      }
    }

    v10 = 0;
LABEL_39:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end