@interface ULTapToRadar(ULExtensions)
+ (void)createRadarForDatabaseAccessFailure;
+ (void)createRadarForMigrationFailure;
@end

@implementation ULTapToRadar(ULExtensions)

+ (void)createRadarForMigrationFailure
{
  v0 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULTTROnMigrationErrorEnabled"];
  v3 = [defaultsDictionary objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = bOOLValue;

  if (v5)
  {
    v6 = MEMORY[0x277D28880];

    [v6 createMicroLocationTapToRadarWithTitle:@"MicroLocation - Migration Completed with Error" description:@"Migration error with status: ULMigrationStatusCompletedWithError" extensionIDs:&unk_286A73C80 displayReason:@"migration completed with error" completionHandler:&__block_literal_global_159];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      +[ULTapToRadar(ULExtensions) createRadarForMigrationFailure];
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "[ULTapToRadar:createRadarForMigrationFailure]: aborted. disabled in settings", v8, 2u);
    }
  }
}

+ (void)createRadarForDatabaseAccessFailure
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULTTROnDatabaseAccessErrorEnabled"];
  v3 = [defaultsDictionary objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = bOOLValue;

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.milod"];
    v7 = [v6 objectForKey:@"ULTTROnDatabaseAccessErrorLastTriggerDate"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v8 = v7) != 0)
    {
      v9 = v8;
      if (onceToken_MicroLocation_Default != -1)
      {
        +[ULTapToRadar(ULExtensions) createRadarForMigrationFailure];
      }

      v10 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v9;
        _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "[ULTapToRadar:createRadarForDatabaseAccessError]: aborted. already triggered at %@", buf, 0xCu);
      }
    }

    else
    {
      v12 = MEMORY[0x277D28880];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __65__ULTapToRadar_ULExtensions__createRadarForDatabaseAccessFailure__block_invoke;
      v14[3] = &unk_2798D5658;
      v15 = v6;
      [v12 createMicroLocationTapToRadarWithTitle:@"MicroLocation - Database access Error" description:@"Got Error on access to database while database is connected" extensionIDs:&unk_286A73C98 displayReason:@"access to database error" completionHandler:v14];

      v9 = 0;
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      +[ULTapToRadar(ULExtensions) createRadarForMigrationFailure];
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "[ULTapToRadar:createRadarForDatabaseAccessError]: aborted. disabled in settings", buf, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end