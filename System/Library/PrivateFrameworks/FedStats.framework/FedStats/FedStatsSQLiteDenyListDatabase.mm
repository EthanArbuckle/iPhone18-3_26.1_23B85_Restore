@interface FedStatsSQLiteDenyListDatabase
+ (id)databaseWithFileURL:(id)l tableName:(id)name columnName:(id)columnName error:(id *)error;
- (BOOL)isInDenyList:(id)list partialMatch:(BOOL)match;
- (FedStatsSQLiteDenyListDatabase)initWithDenyList:(id)list tableName:(id)name columnName:(id)columnName;
@end

@implementation FedStatsSQLiteDenyListDatabase

- (FedStatsSQLiteDenyListDatabase)initWithDenyList:(id)list tableName:(id)name columnName:(id)columnName
{
  listCopy = list;
  nameCopy = name;
  columnNameCopy = columnName;
  v15.receiver = self;
  v15.super_class = FedStatsSQLiteDenyListDatabase;
  v12 = [(FedStatsSQLiteDenyListDatabase *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_denyListDB, list);
    objc_storeStrong(&v13->_tableName, name);
    objc_storeStrong(&v13->_columnName, columnName);
  }

  return v13;
}

+ (id)databaseWithFileURL:(id)l tableName:(id)name columnName:(id)columnName error:(id *)error
{
  lCopy = l;
  nameCopy = name;
  columnNameCopy = columnName;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = lCopy;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [MEMORY[0x277CBEBC0] URLWithString:lCopy];
LABEL_5:
    v14 = v13;
    v52 = 0;
    v15 = [FedStatsSQLiteDatabase databaseWithURL:lCopy mode:114 error:&v52];
    v16 = v52;
    v17 = v16;
    if (!v15)
    {
      if (error)
      {
        [FedStatsError errorWithCode:101 underlyingError:v16 description:@"The URL cannot be loaded as a database"];
        *error = v41 = 0;
      }

      else
      {
        v41 = 0;
      }

      goto LABEL_41;
    }

    selfCopy = self;
    v49 = v16;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (error && (isKindOfClass & 1) == 0)
    {
      v20 = v19 = v14;
      *error = [FedStatsError errorWithCode:101 description:v20];

      v14 = v19;
    }

    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT COUNT(1) AS %@ FROM SQLITE_MASTER WHERE type == 'table' AND name == '%@'", @"tableCount", nameCopy];
    v51 = 0;
    v22 = [v15 runQuery:nameCopy error:&v51];
    v23 = v51;
    if (!v22 || ([v22 next], (v24 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (error)
      {
        *error = [FedStatsError errorWithCode:101 underlyingError:v23 description:@"Cannot query list of tables in deny list database"];
      }

      goto LABEL_28;
    }

    v25 = v24;
    v46 = columnNameCopy;
    v47 = v14;
    v26 = [v24 objectForKey:@"tableCount"];
    v27 = v26;
    if (v26)
    {
      unsignedIntegerValue = [v26 unsignedIntegerValue];
      v29 = unsignedIntegerValue;
      if (!error || unsignedIntegerValue == 1)
      {

        if (v29 == 1)
        {
          objc_opt_class();
          columnNameCopy = v46;
          v30 = objc_opt_isKindOfClass();
          if (error && (v30 & 1) == 0)
            v31 = {;
            *error = [FedStatsError errorWithCode:101 description:v31];
          }

          v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT COUNT(1) AS %@ FROM PRAGMA_TABLE_XINFO('%@') WHERE name == '%@'", @"columnCount", nameCopy, v46];
          v50 = 0;
          v33 = [v15 runQuery:v32 error:&v50];
          v34 = v50;
          v14 = v47;
          if (v33)
          {
            next = [v33 next];
            if (next)
            {
              v36 = next;
              v45 = v34;
              v37 = [next objectForKey:@"columnCount"];
              v38 = v37;
              if (v37)
              {
                unsignedIntegerValue2 = [v37 unsignedIntegerValue];
                v40 = unsignedIntegerValue2;
                if (!error || unsignedIntegerValue2 == 1)
                {

                  if (v40 == 1)
                  {
                    v41 = [[selfCopy alloc] initWithDenyList:v15 tableName:nameCopy columnName:v46];
LABEL_39:
                    v14 = v47;
                    goto LABEL_40;
                  }

LABEL_51:
                  v41 = 0;
                  goto LABEL_39;
                }
              }

              else if (!error)
              {
LABEL_50:

                goto LABEL_51;
              }
              v44 = ;
              *error = [FedStatsError errorWithCode:101 description:v44];

              goto LABEL_50;
            }
          }

          if (error)
          {
            *error = [FedStatsError errorWithCode:101 underlyingError:v34 description:@"Cannot query list of columns in deny list database table"];
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
        columnNameCopy = v46;
        goto LABEL_39;
      }
    }

    else if (!error)
    {
LABEL_37:

      goto LABEL_38;
    }
    v42 = ;
    *error = [FedStatsError errorWithCode:101 description:v42];

    goto LABEL_37;
  }

  if (error)
  {
    [FedStatsError errorWithCode:101 description:@"The parameter fileURL is not a URL or path string"];
    *error = v41 = 0;
  }

  else
  {
    v41 = 0;
  }

LABEL_42:

  return v41;
}

- (BOOL)isInDenyList:(id)list partialMatch:(BOOL)match
{
  matchCopy = match;
  listCopy = list;
  v7 = MEMORY[0x277CCACA8];
  [(FedStatsSQLiteDenyListDatabase *)self tableName];
  if (matchCopy)
    v8 = {;
    columnName = [(FedStatsSQLiteDenyListDatabase *)self columnName];
    [v7 stringWithFormat:@"SELECT COUNT(1) AS %@ FROM '%@' WHERE '%@' LIKE '%%' || %@ || '%%'", @"matchCount", v8, listCopy, columnName];
  }

  else
    v8 = {;
    columnName = [(FedStatsSQLiteDenyListDatabase *)self columnName];
    [v7 stringWithFormat:@"SELECT COUNT(1) AS %@ FROM '%@' WHERE %@ == %@", @"matchCount", v8, columnName, listCopy];
  }
  v10 = ;

  denyListDB = [(FedStatsSQLiteDenyListDatabase *)self denyListDB];
  v12 = [denyListDB runQuery:v10 error:0];

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