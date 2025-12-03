@interface MLDDatabaseIntegrityCheckOperation
- (MLDDatabaseIntegrityCheckOperation)initWithDatabasePath:(id)path repairFaults:(BOOL)faults;
- (id)_createSQLiteErrorWithCode:(int)code description:(id)description;
- (void)main;
@end

@implementation MLDDatabaseIntegrityCheckOperation

- (id)_createSQLiteErrorWithCode:(int)code description:(id)description
{
  codeCopy = code;
  v9 = NSLocalizedDescriptionKey;
  descriptionCopy = description;
  descriptionCopy2 = description;
  v6 = [NSDictionary dictionaryWithObjects:&descriptionCopy forKeys:&v9 count:1];
  v7 = [NSError errorWithDomain:@"NSSQLiteErrorDomain" code:codeCopy userInfo:v6];

  return v7;
}

- (void)main
{
  selfCopy = self;
  ppDb = 0;
  v3 = sqlite3_open_v2([(NSString *)self->_databasePath fileSystemRepresentation], &ppDb, 16777218, 0);
  if (v3)
  {
    v4 = [(MLDDatabaseIntegrityCheckOperation *)selfCopy _createSQLiteErrorWithCode:v3 description:@"failed to open DB file"];
  }

  else
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = sqlite3_exec(ppDb, "pragma integrity_check", sub_10001BDC4, v5, 0);
    if (v6)
    {
      v4 = [(MLDDatabaseIntegrityCheckOperation *)selfCopy _createSQLiteErrorWithCode:v6 description:@"failed to collect integrity check results"];
    }

    else
    {
      v41 = selfCopy;
      v42 = objc_alloc_init(NSMutableArray);
      v7 = [NSRegularExpression regularExpressionWithPattern:@"index (\\w+)" options:0 error:0];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v40 = v5;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v48 objects:v58 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v49;
        v12 = &selRef_setQualityOfService_;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v49 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v48 + 1) + 8 * i);
            if (([v14 isEqualToString:@"ok"] & 1) == 0)
            {
              v15 = [v7 firstMatchInString:v14 options:0 range:{0, objc_msgSend(v14, "length")}];
              v16 = v15;
              if (v15 && [v15 numberOfRanges] >= 2)
              {
                v17 = v8;
                v18 = v12;
                v19 = v7;
                v20 = [v16 rangeAtIndex:1];
                v22 = [v14 substringWithRange:{v20, v21}];
                v23 = [[MLDIndexIntegrityFault alloc] initWithIndex:v22];
                v24 = os_log_create("com.apple.amp.medialibraryd", "Default");
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v54 = v23;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[DatabaseIntegrityCheck] Encountered index fault: %{public}@", buf, 0xCu);
                }

                [v42 addObject:v23];
                v7 = v19;
                v12 = v18;
                v8 = v17;
              }

              else
              {
                v22 = [objc_alloc((v12 + 411)) initWithFaultString:v14];
                v25 = os_log_create("com.apple.amp.medialibraryd", "Default");
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v54 = v22;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[DatabaseIntegrityCheck] Encountered unknown fault: %{public}@", buf, 0xCu);
                }

                [v42 addObject:v22];
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v48 objects:v58 count:16];
        }

        while (v10);
      }

      v26 = os_log_create("com.apple.amp.medialibraryd", "Default");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v42 count];
        *buf = 134217984;
        v54 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Integrity check found %lu faults with database file", buf, 0xCu);
      }

      selfCopy = v41;
      if (v41->_repairFaults)
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v28 = v42;
        v29 = [v28 countByEnumeratingWithState:&v44 objects:v57 count:16];
        if (v29)
        {
          v30 = v29;
          v4 = 0;
          v31 = *v45;
          while (2)
          {
            v32 = 0;
            v33 = v4;
            do
            {
              if (*v45 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v34 = *(*(&v44 + 1) + 8 * v32);
              v43 = v33;
              v35 = [(MLDIndexIntegrityFault *)v34 attemptRecoveryUsingHandle:ppDb withError:&v43];
              v4 = v43;

              if ((v35 & 1) == 0)
              {
                v36 = os_log_create("com.apple.amp.medialibraryd", "Default");
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v54 = v34;
                  v55 = 2114;
                  v56 = v4;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Failed to repair integrity fault %{public}@. err=%{public}@", buf, 0x16u);
                }

                goto LABEL_40;
              }

              v32 = v32 + 1;
              v33 = v4;
            }

            while (v30 != v32);
            v30 = [v28 countByEnumeratingWithState:&v44 objects:v57 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }

          v28 = sub_1000065EC();
          v5 = v40;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Successfully repaired integrity faults", buf, 2u);
          }
        }

        else
        {
          v4 = 0;
LABEL_40:
          v5 = v40;
        }
      }

      else
      {
        v4 = 0;
        v5 = v40;
      }

      v37 = objc_alloc_init(MLDDatabaseIntegrityCheck);
      check = v41->_check;
      v41->_check = v37;

      [(MLDDatabaseIntegrityCheck *)v41->_check setDatabasePath:v41->_databasePath];
      [(MLDDatabaseIntegrityCheck *)v41->_check setFaults:v42];
    }
  }

  if (ppDb)
  {
    sqlite3_close_v2(ppDb);
    ppDb = 0;
  }

  error = selfCopy->_error;
  selfCopy->_error = v4;
}

- (MLDDatabaseIntegrityCheckOperation)initWithDatabasePath:(id)path repairFaults:(BOOL)faults
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = MLDDatabaseIntegrityCheckOperation;
  v7 = [(MLDDatabaseIntegrityCheckOperation *)&v11 init];
  if (v7)
  {
    v8 = [pathCopy copy];
    databasePath = v7->_databasePath;
    v7->_databasePath = v8;

    v7->_repairFaults = faults;
  }

  return v7;
}

@end