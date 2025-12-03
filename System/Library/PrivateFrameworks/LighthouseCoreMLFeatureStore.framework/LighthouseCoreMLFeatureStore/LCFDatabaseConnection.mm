@interface LCFDatabaseConnection
- (BOOL)addColumn:(id)column;
- (BOOL)doQueryEachStep:(id)step statementStepHandler:(id)handler;
- (BOOL)doQueryExec:(id)exec;
- (BOOL)pruneFrom:(id)from endDate:(id)date;
- (BOOL)writeFeatures:(id)features;
- (id)getColumns;
- (id)init:(id)init databaseName:(id)name tableName:(id)tableName;
- (id)isDoubleArray:(id)array;
- (id)query:(id)query startDate:(id)date endDate:(id)endDate reversed:(BOOL)reversed;
- (void)dumpDatabase;
- (void)ensureDatabaseTable;
@end

@implementation LCFDatabaseConnection

- (id)init:(id)init databaseName:(id)name tableName:(id)tableName
{
  initCopy = init;
  nameCopy = name;
  tableNameCopy = tableName;
  v21.receiver = self;
  v21.super_class = LCFDatabaseConnection;
  v12 = [(LCFDatabaseConnection *)&v21 init];
  if (v12)
  {
    LCFLoggingUtilsInit();
    objc_storeStrong(&v12->_databaseBaseURL, init);
    objc_storeStrong(&v12->_databaseName, name);
    objc_storeStrong(&v12->_tableName, tableName);
    path = [(NSURL *)v12->_databaseBaseURL path];
    v14 = [path stringByAppendingPathComponent:v12->_databaseName];
    databaseNamePath = v12->_databaseNamePath;
    v12->_databaseNamePath = v14;

    v16 = [LCFDatabaseColumnConnection alloc];
    v17 = [tableNameCopy stringByAppendingString:@"_Columns"];
    v18 = [(LCFDatabaseColumnConnection *)v16 init:initCopy databaseName:nameCopy tableName:v17];
    dbColumnConnection = v12->_dbColumnConnection;
    v12->_dbColumnConnection = v18;

    [(LCFDatabaseConnection *)v12 ensureDatabaseTable];
  }

  return v12;
}

- (void)ensureDatabaseTable
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_255F22000, a2, a3, "sqlite3_exec failed %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)doQueryEachStep:(id)step statementStepHandler:(id)handler
{
  stepCopy = step;
  handlerCopy = handler;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  databaseNamePath = self->_databaseNamePath;
  p_databaseNamePath = &self->_databaseNamePath;
  if ([defaultManager fileExistsAtPath:databaseNamePath])
  {
    uTF8String = [(NSString *)*p_databaseNamePath UTF8String];
    ppDb = 0;
    if (sqlite3_open(uTF8String, &ppDb))
    {
      v12 = LCFLogDatabaseConnection;
      if (os_log_type_enabled(LCFLogDatabaseConnection, OS_LOG_TYPE_ERROR))
      {
        [(LCFDatabaseConnection *)p_databaseNamePath ensureDatabaseTable:v12];
      }
    }

    else
    {
      v21 = 0;
      sqlite3_prepare_v2(ppDb, [stepCopy UTF8String], -1, &v21, 0);
      while (1)
      {
        v19 = sqlite3_step(v21);
        if (v19 != 100)
        {
          break;
        }

        handlerCopy[2](handlerCopy, v21);
      }

      if (v19 != 101)
      {
        [LCFDatabaseConnection doQueryEachStep:statementStepHandler:];
      }

      sqlite3_close(ppDb);
    }
  }

  return 1;
}

- (BOOL)doQueryExec:(id)exec
{
  execCopy = exec;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  databaseNamePath = self->_databaseNamePath;
  p_databaseNamePath = &self->_databaseNamePath;
  if (![defaultManager fileExistsAtPath:databaseNamePath])
  {
LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  uTF8String = [(NSString *)*p_databaseNamePath UTF8String];
  ppDb = 0;
  if (sqlite3_open(uTF8String, &ppDb))
  {
    v9 = LCFLogDatabaseConnection;
    if (os_log_type_enabled(LCFLogDatabaseConnection, OS_LOG_TYPE_ERROR))
    {
      [(LCFDatabaseConnection *)p_databaseNamePath ensureDatabaseTable:v9];
    }

    goto LABEL_5;
  }

  sqlite3_exec(ppDb, "BEGIN", 0, 0, 0);
  v26 = 0;
  v18 = sqlite3_exec(ppDb, [execCopy UTF8String], 0, 0, &v26);
  v16 = v18 == 0;
  if (v18)
  {
    v19 = LCFLogDatabaseConnection;
    if (os_log_type_enabled(LCFLogDatabaseConnection, OS_LOG_TYPE_ERROR))
    {
      [(LCFDatabaseConnection *)execCopy ensureDatabaseTable:v19];
    }
  }

  sqlite3_exec(ppDb, "COMMIT", 0, 0, 0);
  sqlite3_close(ppDb);
LABEL_6:

  return v16;
}

- (id)getColumns
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"pragma table_info(%@)", self->_tableName];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__LCFDatabaseConnection_getColumns__block_invoke;
  v7[3] = &unk_279815EC0;
  v5 = v3;
  v8 = v5;
  [(LCFDatabaseConnection *)self doQueryEachStep:v4 statementStepHandler:v7];

  return v5;
}

void __35__LCFDatabaseConnection_getColumns__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_text(a2, 1);
  v5 = sqlite3_column_text(a2, 2);
  v6 = [LCFDatabaseColumn alloc];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  v11 = [(LCFDatabaseColumn *)v6 init:v7 typeDb:v8];

  v9 = *(a1 + 32);
  v10 = [v11 name];
  [v9 setValue:v11 forKey:v10];
}

- (BOOL)addColumn:(id)column
{
  selfCopy = self;
  v4 = MEMORY[0x277CCACA8];
  tableName = self->_tableName;
  columnCopy = column;
  name = [columnCopy name];
  typeDb = [columnCopy typeDb];

  v9 = [v4 stringWithFormat:@"alter table %@ ADD COLUMN %@ %@", tableName, name, typeDb];;

  LOBYTE(selfCopy) = [(LCFDatabaseConnection *)selfCopy doQueryExec:v9];
  return selfCopy;
}

- (BOOL)writeFeatures:(id)features
{
  v66 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  featureValues = [featuresCopy featureValues];
  itemIdentifier = [featuresCopy itemIdentifier];
  featureVersion = [featuresCopy featureVersion];
  v49 = featuresCopy;
  timestamp = [featuresCopy timestamp];
  selfCopy = self;
  getColumns = [(LCFDatabaseConnection *)self getColumns];
  allKeys = [getColumns allKeys];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v53 = featureValues;
  v8 = featureValues;
  v9 = allKeys;
  allKeys2 = [v8 allKeys];
  v11 = [allKeys2 countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v59;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v59 != v13)
        {
          objc_enumerationMutation(allKeys2);
        }

        v15 = *(*(&v58 + 1) + 8 * i);
        if (([v9 containsObject:v15] & 1) == 0)
        {
          v16 = [LCFDatabaseColumn alloc];
          v17 = [v53 objectForKeyedSubscript:v15];
          getTypeDBString = [v17 getTypeDBString];
          v19 = [(LCFDatabaseColumn *)v16 init:v15 typeDb:getTypeDBString];

          [(LCFDatabaseConnection *)selfCopy addColumn:v19];
        }
      }

      v12 = [allKeys2 countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v12);
  }

  v47 = v9;
  if (timestamp)
  {
    [timestamp timeIntervalSinceReferenceDate];
    v21 = v20;
  }

  else
  {
    v22 = [MEMORY[0x277CBEAA8] now];
    [v22 timeIntervalSinceReferenceDate];
    v21 = v23;
  }

  v24 = objc_alloc(MEMORY[0x277CBEB18]);
  v64[0] = @"_lcf_itemIdentifier";
  v64[1] = @"_lcf_featureVersion";
  v64[2] = @"_lcf_timestamp";
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:3];
  v26 = [v24 initWithArray:v25];

  v27 = objc_alloc(MEMORY[0x277CBEB18]);
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'", itemIdentifier];
  v63[0] = v28;
  v63[1] = featureVersion;
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
  v63[2] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:3];
  v31 = [v27 initWithArray:v30];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  allKeys3 = [v53 allKeys];
  v33 = [allKeys3 countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v55;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v55 != v35)
        {
          objc_enumerationMutation(allKeys3);
        }

        v37 = *(*(&v54 + 1) + 8 * j);
        v38 = [v53 objectForKeyedSubscript:v37];
        -[LCFDatabaseColumnConnection writeFeatures:featureValueType:](selfCopy->_dbColumnConnection, "writeFeatures:featureValueType:", v37, [v38 type]);
        [v26 addObject:v37];
        valueInString = [v38 valueInString];
        [v31 addObject:valueInString];
      }

      v34 = [allKeys3 countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v34);
  }

  v40 = MEMORY[0x277CCACA8];
  tableName = selfCopy->_tableName;
  v42 = [v26 componentsJoinedByString:{@", "}];
  v43 = [v31 componentsJoinedByString:{@", "}];
  v44 = [v40 stringWithFormat:@"INSERT INTO %@ (%@) VALUES(%@)", tableName, v42, v43];

  LOBYTE(v43) = [(LCFDatabaseConnection *)selfCopy doQueryExec:v44];
  v45 = *MEMORY[0x277D85DE8];
  return v43;
}

- (id)isDoubleArray:(id)array
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [array dataUsingEncoding:4];
  v19 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:&v19];
  v5 = v19;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v12 = 0;
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = v6;
LABEL_14:
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)query:(id)query startDate:(id)date endDate:(id)endDate reversed:(BOOL)reversed
{
  reversedCopy = reversed;
  v81 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  dateCopy = date;
  endDateCopy = endDate;
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  query = [(LCFDatabaseColumnConnection *)self->_dbColumnConnection query];
  v12 = [query countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v76;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v76 != v14)
        {
          objc_enumerationMutation(query);
        }

        v16 = *(*(&v75 + 1) + 8 * i);
        featureName = [v16 featureName];
        [v10 setObject:v16 forKeyedSubscript:featureName];
      }

      v13 = [query countByEnumeratingWithState:&v75 objects:v80 count:16];
    }

    while (v13);
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  getColumns = [(LCFDatabaseConnection *)self getColumns];
  v20 = getColumns;
  v63 = queryCopy;
  v61 = v18;
  if (queryCopy)
  {
    allKeys = [getColumns allKeys];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v22 = queryCopy;
    v23 = [v22 countByEnumeratingWithState:&v71 objects:v79 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v72;
      while (2)
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v72 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v71 + 1) + 8 * j);
          if (([allKeys containsObject:v27] & 1) == 0)
          {
            v31 = LCFLogDatabaseConnection;
            if (os_log_type_enabled(LCFLogDatabaseConnection, OS_LOG_TYPE_ERROR))
            {
              [(LCFDatabaseConnection *)v27 query:v31 startDate:v32 endDate:v33 reversed:v34, v35, v36, v37];
            }

            v38 = 0;
            v39 = v61;
            v30 = dateCopy;
            goto LABEL_40;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v71 objects:v79 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v22];
    v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v22];
    v30 = dateCopy;
    if (([v28 containsObject:@"_lcf_itemIdentifier"] & 1) == 0)
    {
      [v28 addObject:@"_lcf_itemIdentifier"];
    }

    if (([v28 containsObject:@"_lcf_featureVersion"] & 1) == 0)
    {
      [v28 addObject:@"_lcf_featureVersion"];
    }

    if (([v28 containsObject:@"_lcf_timestamp"] & 1) == 0)
    {
      [v28 addObject:@"_lcf_timestamp"];
    }

    allKeys = v29;
  }

  else
  {
    v40 = objc_alloc(MEMORY[0x277CBEB18]);
    allKeys2 = [v20 allKeys];
    v28 = [v40 initWithArray:allKeys2];

    v42 = objc_alloc(MEMORY[0x277CBEB18]);
    allKeys3 = [v20 allKeys];
    allKeys = [v42 initWithArray:allKeys3];

    [allKeys removeObject:@"_lcf_itemIdentifier"];
    [allKeys removeObject:@"_lcf_featureVersion"];
    [allKeys removeObject:@"_lcf_timestamp"];
    v30 = dateCopy;
  }

  v44 = MEMORY[0x277CCACA8];
  v45 = [v28 componentsJoinedByString:{@", "}];
  v46 = [v44 stringWithFormat:@"SELECT %@ FROM %@", v45, self->_tableName];

  if (v30 | endDateCopy)
  {
    v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ where ", v46];

    v48 = 0x277CCA000uLL;
    if (v30)
    {
      v49 = MEMORY[0x277CCACA8];
      v50 = MEMORY[0x277CCABB0];
      [v30 timeIntervalSinceReferenceDate];
      v51 = [v50 numberWithDouble:?];
      v52 = [v49 stringWithFormat:@"%@ %@ >= %@ ", v47, @"_lcf_timestamp", v51];

      if (!endDateCopy)
      {
LABEL_34:
        v47 = v52;
        goto LABEL_35;
      }

      v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ and ", v52];

      v48 = 0x277CCA000;
    }

    else if (!endDateCopy)
    {
LABEL_35:
      if (reversedCopy)
      {
        v56 = @"%@ order by %@ asc";
      }

      else
      {
        v56 = @"%@ order by %@ desc";
      }

      v46 = [MEMORY[0x277CCACA8] stringWithFormat:v56, v47, @"_lcf_timestamp"];

      goto LABEL_39;
    }

    v53 = MEMORY[0x277CCACA8];
    v54 = *(v48 + 2992);
    [endDateCopy timeIntervalSinceReferenceDate];
    v55 = [v54 numberWithDouble:?];
    v52 = [v53 stringWithFormat:@"%@ %@ <= %@ ", v47, @"_lcf_timestamp", v55];

    goto LABEL_34;
  }

LABEL_39:
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __58__LCFDatabaseConnection_query_startDate_endDate_reversed___block_invoke;
  v65[3] = &unk_279815EE8;
  v66 = v28;
  v67 = v20;
  v68 = v10;
  selfCopy = self;
  v39 = v61;
  v57 = v61;
  v70 = v57;
  v22 = v28;
  [(LCFDatabaseConnection *)self doQueryEachStep:v46 statementStepHandler:v65];
  v38 = v57;

LABEL_40:
  v58 = *MEMORY[0x277D85DE8];

  return v38;
}

void __58__LCFDatabaseConnection_query_startDate_endDate_reversed___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([*(a1 + 32) count])
  {
    v6 = 0;
    *&v5 = 138412802;
    v45 = v5;
    do
    {
      v7 = sqlite3_column_text(a2, v6);
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) objectAtIndexedSubscript:v6];
      v10 = [v8 objectForKeyedSubscript:v9];

      v11 = *(a1 + 48);
      v12 = [v10 name];
      v13 = [v11 objectForKeyedSubscript:v12];
      v14 = [v13 featureValueType];

      v15 = [v10 type];
      if (v15 <= 1)
      {
        if (v15 != 1)
        {
LABEL_16:
          v20 = [[LCFFeatureValue alloc] initEmpty];
          goto LABEL_17;
        }

        if (!v14)
        {
          goto LABEL_14;
        }

        if (v14 != 6)
        {
          if (v14 != 3)
          {
            v28 = LCFLogDatabaseConnection;
            if (os_log_type_enabled(LCFLogDatabaseConnection, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_41;
            }

            goto LABEL_42;
          }

LABEL_14:
          if (v7)
          {
            v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
            v19 = [[LCFFeatureValue alloc] initWithStringValue:v18];
            goto LABEL_29;
          }

          v20 = [[LCFFeatureValue alloc] initWithStringValue:0];
          goto LABEL_17;
        }

        if (v7)
        {
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
          v29 = [*(a1 + 56) isDoubleArray:v18];
          v21 = [[LCFFeatureValue alloc] initWithDoubleArray:v29];

          goto LABEL_30;
        }

        v20 = [[LCFFeatureValue alloc] initWithDoubleArray:0];
      }

      else
      {
        switch(v15)
        {
          case 2:
            if (!v14 || v14 == 5)
            {
              v26 = [LCFFeatureValue alloc];
              v27 = v26;
              if (v7)
              {
                v18 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(a2, v6)}];
                v19 = [(LCFFeatureValue *)v27 initWithTimeBucketValue:v18];
LABEL_29:
                v21 = v19;
LABEL_30:

                goto LABEL_43;
              }

              v20 = [(LCFFeatureValue *)v26 initWithTimeBucketValue:0];
            }

            else
            {
              if (v14 != 1)
              {
                v28 = LCFLogDatabaseConnection;
                if (os_log_type_enabled(LCFLogDatabaseConnection, OS_LOG_TYPE_FAULT))
                {
LABEL_41:
                  v30 = v28;
                  v31 = [v10 name];
                  v32 = [v10 type];
                  *buf = v45;
                  *&buf[4] = v31;
                  *&buf[12] = 2048;
                  *&buf[14] = v32;
                  *&buf[22] = 2048;
                  v47 = v14;
                  _os_log_fault_impl(&dword_255F22000, v30, OS_LOG_TYPE_FAULT, "Wrong feature value type is assigned featureName:%@ columnInDb.type:%ld featureValueType: %ld", buf, 0x20u);
                }

LABEL_42:
                v21 = 0;
                goto LABEL_43;
              }

              v22 = [LCFFeatureValue alloc];
              v23 = v22;
              if (v7)
              {
                v18 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(a2, v6)}];
                v19 = [(LCFFeatureValue *)v23 initWithIntValue:v18];
                goto LABEL_29;
              }

              v20 = [(LCFFeatureValue *)v22 initWithIntValue:0];
            }

            break;
          case 3:
            if (v14 && v14 != 2)
            {
              v28 = LCFLogDatabaseConnection;
              if (os_log_type_enabled(LCFLogDatabaseConnection, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_41;
              }

              goto LABEL_42;
            }

            v24 = [LCFFeatureValue alloc];
            v25 = v24;
            if (v7)
            {
              v18 = [MEMORY[0x277CCABB0] numberWithDouble:{sqlite3_column_double(a2, v6)}];
              v19 = [(LCFFeatureValue *)v25 initWithDoubleValue:v18];
              goto LABEL_29;
            }

            v20 = [(LCFFeatureValue *)v24 initWithDoubleValue:0];
            break;
          case 4:
            if (v14 != 4)
            {
              v28 = LCFLogDatabaseConnection;
              if (os_log_type_enabled(LCFLogDatabaseConnection, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_41;
              }

              goto LABEL_42;
            }

            v16 = [LCFFeatureValue alloc];
            v17 = v16;
            if (v7)
            {
              v18 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(a2, v6)}];
              v19 = [(LCFFeatureValue *)v17 initWithBoolValue:v18];
              goto LABEL_29;
            }

            v20 = [(LCFFeatureValue *)v16 initWithBoolValue:0];
            break;
          default:
            goto LABEL_16;
        }
      }

LABEL_17:
      v21 = v20;
LABEL_43:
      v33 = [v10 name];
      [v4 setValue:v21 forKey:v33];

      ++v6;
    }

    while ([*(a1 + 32) count] > v6);
  }

  v34 = [v4 objectForKeyedSubscript:@"_lcf_itemIdentifier"];
  v35 = [v34 stringValue];

  v36 = [v4 objectForKeyedSubscript:@"_lcf_featureVersion"];
  v37 = [v36 doubleValue];

  v38 = MEMORY[0x277CBEAA8];
  v39 = [v4 objectForKeyedSubscript:@"_lcf_timestamp"];
  v40 = [v39 doubleValue];
  [v40 doubleValue];
  v41 = [v38 dateWithTimeIntervalSinceReferenceDate:?];

  [v4 removeObjectForKey:@"_lcf_itemIdentifier"];
  [v4 removeObjectForKey:@"_lcf_featureVersion"];
  [v4 removeObjectForKey:@"_lcf_timestamp"];
  [v4 removeObjectForKey:@"ID"];
  v42 = *(a1 + 64);
  v43 = [[LCFFeatureSet alloc] initWithIdentifier:v35 featureVersion:v37 timestamp:v41 featureValues:v4];
  [v42 addObject:v43];

  v44 = *MEMORY[0x277D85DE8];
}

- (void)dumpDatabase
{
  getColumns = [(LCFDatabaseConnection *)self getColumns];
  allKeys = [getColumns allKeys];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT * FROM %@ limit 10", self->_tableName];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__LCFDatabaseConnection_dumpDatabase__block_invoke;
  v7[3] = &unk_279815EC0;
  v8 = allKeys;
  v6 = allKeys;
  [(LCFDatabaseConnection *)self doQueryEachStep:v5 statementStepHandler:v7];
}

void __37__LCFDatabaseConnection_dumpDatabase__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([*(a1 + 32) count])
  {
    v5 = 0;
    do
    {
      v6 = sqlite3_column_text(a2, v5);
      if (v6)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
        [v4 addObject:v7];
      }

      else
      {
        [v4 addObject:@"null"];
      }

      ++v5;
    }

    while ([*(a1 + 32) count] > v5);
  }

  v8 = LCFLogDatabaseConnection;
  if (os_log_type_enabled(LCFLogDatabaseConnection, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v4 componentsJoinedByString:{@", "}];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_255F22000, v9, OS_LOG_TYPE_INFO, "database %@", &v12, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)pruneFrom:(id)from endDate:(id)date
{
  fromCopy = from;
  dateCopy = date;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@", self->_tableName];
  if (!(fromCopy | dateCopy))
  {
    goto LABEL_7;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ where ", v8];

  if (fromCopy)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = MEMORY[0x277CCABB0];
    [fromCopy timeIntervalSinceReferenceDate];
    v12 = [v11 numberWithDouble:?];
    v8 = [v10 stringWithFormat:@"%@ %@ >= %@ ", v9, @"_lcf_timestamp", v12];

    if (!dateCopy)
    {
LABEL_7:
      v9 = v8;
      goto LABEL_8;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ and ", v8];

LABEL_6:
    v13 = MEMORY[0x277CCACA8];
    v14 = MEMORY[0x277CCABB0];
    [dateCopy timeIntervalSinceReferenceDate];
    v15 = [v14 numberWithDouble:?];
    v8 = [v13 stringWithFormat:@"%@ %@ <= %@ ", v9, @"_lcf_timestamp", v15];

    goto LABEL_7;
  }

  if (dateCopy)
  {
    goto LABEL_6;
  }

LABEL_8:
  v16 = [(LCFDatabaseConnection *)self doQueryExec:v9];

  return v16;
}

- (void)query:(uint64_t)a3 startDate:(uint64_t)a4 endDate:(uint64_t)a5 reversed:(uint64_t)a6 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_255F22000, a2, a3, "sqlite3_exec no column found - %@ ", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end