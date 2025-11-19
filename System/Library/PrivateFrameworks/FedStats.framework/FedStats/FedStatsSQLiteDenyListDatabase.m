@interface FedStatsSQLiteDenyListDatabase
+ (id)databaseWithFileURL:(id)a3 tableName:(id)a4 columnName:(id)a5 error:(id *)a6;
- (BOOL)isInDenyList:(id)a3 partialMatch:(BOOL)a4;
- (FedStatsSQLiteDenyListDatabase)initWithDenyList:(id)a3 tableName:(id)a4 columnName:(id)a5;
@end

@implementation FedStatsSQLiteDenyListDatabase

- (FedStatsSQLiteDenyListDatabase)initWithDenyList:(id)a3 tableName:(id)a4 columnName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FedStatsSQLiteDenyListDatabase;
  v12 = [(FedStatsSQLiteDenyListDatabase *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_denyListDB, a3);
    objc_storeStrong(&v13->_tableName, a4);
    objc_storeStrong(&v13->_columnName, a5);
  }

  return v13;
}

+ (id)databaseWithFileURL:(id)a3 tableName:(id)a4 columnName:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [MEMORY[0x277CBEBC0] URLWithString:v10];
LABEL_5:
    v14 = v13;
    v52 = 0;
    v15 = [FedStatsSQLiteDatabase databaseWithURL:v10 mode:114 error:&v52];
    v16 = v52;
    v17 = v16;
    if (!v15)
    {
      if (a6)
      {
        [FedStatsError errorWithCode:101 underlyingError:v16 description:@"The URL cannot be loaded as a database"];
        *a6 = v41 = 0;
      }

      else
      {
        v41 = 0;
      }

      goto LABEL_41;
    }

    v48 = a1;
    v49 = v16;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (a6 && (isKindOfClass & 1) == 0)
    {
      v20 = v19 = v14;
      *a6 = [FedStatsError errorWithCode:101 description:v20];

      v14 = v19;
    }

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT COUNT(1) AS %@ FROM SQLITE_MASTER WHERE type == 'table' AND name == '%@'", @"tableCount", v11];
    v51 = 0;
    v22 = [v15 runQuery:v21 error:&v51];
    v23 = v51;
    if (!v22 || ([v22 next], (v24 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (a6)
      {
        *a6 = [FedStatsError errorWithCode:101 underlyingError:v23 description:@"Cannot query list of tables in deny list database"];
      }

      goto LABEL_28;
    }

    v25 = v24;
    v46 = v12;
    v47 = v14;
    v26 = [v24 objectForKey:@"tableCount"];
    v27 = v26;
    if (v26)
    {
      v28 = [v26 unsignedIntegerValue];
      v29 = v28;
      if (!a6 || v28 == 1)
      {

        if (v29 == 1)
        {
          objc_opt_class();
          v12 = v46;
          v30 = objc_opt_isKindOfClass();
          if (a6 && (v30 & 1) == 0)
            v31 = {;
            *a6 = [FedStatsError errorWithCode:101 description:v31];
          }

          v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT COUNT(1) AS %@ FROM PRAGMA_TABLE_XINFO('%@') WHERE name == '%@'", @"columnCount", v11, v46];
          v50 = 0;
          v33 = [v15 runQuery:v32 error:&v50];
          v34 = v50;
          v14 = v47;
          if (v33)
          {
            v35 = [v33 next];
            if (v35)
            {
              v36 = v35;
              v45 = v34;
              v37 = [v35 objectForKey:@"columnCount"];
              v38 = v37;
              if (v37)
              {
                v39 = [v37 unsignedIntegerValue];
                v40 = v39;
                if (!a6 || v39 == 1)
                {

                  if (v40 == 1)
                  {
                    v41 = [[v48 alloc] initWithDenyList:v15 tableName:v11 columnName:v46];
LABEL_39:
                    v14 = v47;
                    goto LABEL_40;
                  }

LABEL_51:
                  v41 = 0;
                  goto LABEL_39;
                }
              }

              else if (!a6)
              {
LABEL_50:

                goto LABEL_51;
              }
              v44 = ;
              *a6 = [FedStatsError errorWithCode:101 description:v44];

              goto LABEL_50;
            }
          }

          if (a6)
          {
            *a6 = [FedStatsError errorWithCode:101 underlyingError:v34 description:@"Cannot query list of columns in deny list database table"];
          }

LABEL_28:
          v41 = 0;
LABEL_40:
          v17 = v49;
LABEL_41:

          goto LABEL_42;
        }

LABEL_38:
        v41 = 0;
        v12 = v46;
        goto LABEL_39;
      }
    }

    else if (!a6)
    {
LABEL_37:

      goto LABEL_38;
    }
    v42 = ;
    *a6 = [FedStatsError errorWithCode:101 description:v42];

    goto LABEL_37;
  }

  if (a6)
  {
    [FedStatsError errorWithCode:101 description:@"The parameter fileURL is not a URL or path string"];
    *a6 = v41 = 0;
  }

  else
  {
    v41 = 0;
  }

LABEL_42:

  return v41;
}

- (BOOL)isInDenyList:(id)a3 partialMatch:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = MEMORY[0x277CCACA8];
  [(FedStatsSQLiteDenyListDatabase *)self tableName];
  if (v4)
    v8 = {;
    v9 = [(FedStatsSQLiteDenyListDatabase *)self columnName];
    [v7 stringWithFormat:@"SELECT COUNT(1) AS %@ FROM '%@' WHERE '%@' LIKE '%%' || %@ || '%%'", @"matchCount", v8, v6, v9];
  }

  else
    v8 = {;
    v9 = [(FedStatsSQLiteDenyListDatabase *)self columnName];
    [v7 stringWithFormat:@"SELECT COUNT(1) AS %@ FROM '%@' WHERE %@ == %@", @"matchCount", v8, v9, v6];
  }
  v10 = ;

  v11 = [(FedStatsSQLiteDenyListDatabase *)self denyListDB];
  v12 = [v11 runQuery:v10 error:0];

  if (v12 && ([v12 next], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    v15 = [v13 objectForKey:@"matchCount"];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 unsignedIntegerValue] != 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end