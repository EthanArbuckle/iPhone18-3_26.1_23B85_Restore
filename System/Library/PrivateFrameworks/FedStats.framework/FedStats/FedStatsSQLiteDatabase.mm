@interface FedStatsSQLiteDatabase
+ (FedStatsSQLiteDatabase)databaseWithURL:(id)l mode:(char)mode error:(id *)error;
- (BOOL)execute:(id)execute error:(id *)error;
- (FedStatsSQLiteDatabase)initWithDatabase:(sqlite3 *)database;
- (id)runQuery:(id)query error:(id *)error;
- (void)dealloc;
@end

@implementation FedStatsSQLiteDatabase

- (FedStatsSQLiteDatabase)initWithDatabase:(sqlite3 *)database
{
  v5.receiver = self;
  v5.super_class = FedStatsSQLiteDatabase;
  result = [(FedStatsSQLiteDatabase *)&v5 init];
  if (result)
  {
    result->_database = database;
  }

  return result;
}

- (void)dealloc
{
  sqlite3_close_v2([(FedStatsSQLiteDatabase *)self database]);
  v3.receiver = self;
  v3.super_class = FedStatsSQLiteDatabase;
  [(FedStatsSQLiteDatabase *)&v3 dealloc];
}

+ (FedStatsSQLiteDatabase)databaseWithURL:(id)l mode:(char)mode error:(id *)error
{
  modeCopy = mode;
  v39[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    v38 = 0;
    if (modeCopy == 97)
    {
      path = [lCopy path];
      v27 = [defaultManager fileExistsAtPath:path isDirectory:&v38];

      if ((v27 & 1) == 0)
      {
        if (error)
        {
          goto LABEL_30;
        }

        goto LABEL_40;
      }

      if (v38 != 1)
      {
        v17 = 33554498;
LABEL_35:
        ppDb = 0;
        v30 = [v10 URL];
        absoluteString = [v30 absoluteString];
        v32 = sqlite3_open_v2([absoluteString UTF8String], &ppDb, v17, 0);

        if (!v32)
        {
          v35 = [self alloc];
          v18 = [v35 initWithDatabase:ppDb];
          goto LABEL_41;
        }

        if (!error)
        {
          goto LABEL_40;
        }

        uRLByDeletingLastPathComponent = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot load database: %s", sqlite3_errmsg(ppDb)];
        v25 = uRLByDeletingLastPathComponent;
        goto LABEL_38;
      }

      goto LABEL_20;
    }

    if (modeCopy != 119)
    {
      if (modeCopy != 114)
      {
        if (error)
        {
          v28 = @"Mode can be one of 'r', 'w', 'a'";
          goto LABEL_30;
        }

        goto LABEL_40;
      }

      path2 = [lCopy path];
      v12 = [defaultManager fileExistsAtPath:path2 isDirectory:&v38];

      if ((v12 & 1) == 0)
      {
        if (error)
        {
          goto LABEL_30;
        }

        goto LABEL_40;
      }

      if (v38 != 1)
      {
        path3 = [lCopy path];
        v14 = [defaultManager isReadableFileAtPath:path3];

        if (v14)
        {
          uRLByDeletingLastPathComponent = [MEMORY[0x277CCAD18] queryItemWithName:@"nolock" value:@"1"];
          v39[0] = uRLByDeletingLastPathComponent;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
          [v10 setQueryItems:v16];
          v17 = 33554497;
LABEL_33:

          goto LABEL_34;
        }

        if (!error)
        {
          goto LABEL_40;
        }

LABEL_30:
        [FedStatsError errorWithCode:302 description:v28];
        *error = v18 = 0;
LABEL_41:

        goto LABEL_42;
      }

LABEL_20:
      if (error)
      {
        goto LABEL_30;
      }

LABEL_40:
      v18 = 0;
      goto LABEL_41;
    }

    uRLByResolvingSymlinksInPath = [lCopy URLByResolvingSymlinksInPath];
    uRLByDeletingLastPathComponent = [uRLByResolvingSymlinksInPath URLByDeletingLastPathComponent];

    path4 = [(__CFString *)uRLByDeletingLastPathComponent path];
    v21 = [defaultManager fileExistsAtPath:path4 isDirectory:&v38];
    v22 = v38;

    if (v21 && v22)
    {
      v17 = 33554502;
      path5 = [lCopy path];
      v24 = [defaultManager fileExistsAtPath:path5 isDirectory:&v38];

      if (!v24)
      {
LABEL_34:

        goto LABEL_35;
      }

      if (v38 != 1)
      {
        v37 = 0;
        v29 = [defaultManager removeItemAtURL:lCopy error:&v37];
        v16 = v37;
        if ((v29 & 1) == 0)
        {
          if (error)
            *error = {;
          }

          goto LABEL_39;
        }

        goto LABEL_33;
      }

      if (error)
      {
LABEL_38:
        *error = [FedStatsError errorWithCode:302 description:v25];
      }
    }

    else if (error)
    {
      v25 = @"The directory for the URL does not exist";
      goto LABEL_38;
    }

LABEL_39:

    goto LABEL_40;
  }

  if (error)
  {
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_42:

  v33 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)runQuery:(id)query error:(id *)error
{
  queryCopy = query;
  ppStmt = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      *error = v9 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v7 = sqlite3_prepare_v2(-[FedStatsSQLiteDatabase database](self, "database"), [queryCopy UTF8String], -1, &ppStmt, 0);
  if (v7)
  {
    if (error)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot prepare query: %s", sqlite3_errstr(v7)];
      *error = [FedStatsError errorWithCode:302 description:v8];
    }

LABEL_7:
    v9 = 0;
    goto LABEL_9;
  }

  v10 = [FedStatsSQLiteDatabaseQueryResult alloc];
  v9 = [(FedStatsSQLiteDatabaseQueryResult *)v10 initWithQueryStatement:ppStmt];
LABEL_9:

  return v9;
}

- (BOOL)execute:(id)execute error:(id *)error
{
  errmsg = 0;
  executeCopy = execute;
  database = [(FedStatsSQLiteDatabase *)self database];
  uTF8String = [executeCopy UTF8String];

  v9 = sqlite3_exec(database, uTF8String, 0, 0, &errmsg);
  v10 = v9;
  if (error && v9)
  {
    errmsg = [MEMORY[0x277CCACA8] stringWithFormat:@"Database execute error: %s", errmsg];
    *error = [FedStatsError errorWithCode:302 description:errmsg];
  }

  return v10 == 0;
}

@end