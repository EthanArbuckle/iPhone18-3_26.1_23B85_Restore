@interface FHDatabaseEntity
- (BOOL)clearData;
- (BOOL)clearDataWithClauseBuilder:(id)a3;
- (BOOL)clearDataWithEntity:(id)a3;
- (FHDatabaseEntity)initWithEntity:(id)a3;
- (FHDatabaseEntity)initWithEntity:(id)a3 databaseManager:(id)a4;
- (FHDatabaseEntity)initWithEntity:(id)a3 joinClause:(id)a4 databaseManager:(id)a5;
- (FHDatabaseManager)databaseManagerWeak;
- (id)_availableFunctions:(int64_t)a3 functionTypeFilter:(id)a4;
- (id)_getDatabaseManager;
- (id)_initWithJoinClauseExpression:(id)a3 databaseManager:(id)a4 entities:(id)a5;
- (void)insertOrUpdateWithEntity:(id)a3 fieldValuePairsFromBuilder:(id)a4 upsert:(BOOL)a5;
- (void)queryDataWithBlock:(id)a3 logicalOperator:(id)a4 limit:(unint64_t)a5 selectFields:(id)a6 orderby:(id)a7 usingBlock:(id)a8;
- (void)queryDataWithBlock:(id)a3 logicalOperator:(id)a4 selectFields:(id)a5 usingBlock:(id)a6;
- (void)queryDataWithBlock:(id)a3 logicalOperator:(id)a4 usingBlock:(id)a5;
- (void)streamDataWithEntity:(id)a3 recordStreamHandler:(id)a4;
@end

@implementation FHDatabaseEntity

- (id)_getDatabaseManager
{
  WeakRetained = objc_loadWeakRetained(&self->_databaseManagerWeak);
  databaseManagerStrong = WeakRetained;
  if (!WeakRetained)
  {
    databaseManagerStrong = self->_databaseManagerStrong;
  }

  v5 = databaseManagerStrong;

  return databaseManagerStrong;
}

- (FHDatabaseEntity)initWithEntity:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];

  v7 = [(FHDatabaseEntity *)self _initWithJoinClauseExpression:0 databaseManager:0 entities:v6, v10, v11];
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (FHDatabaseEntity)initWithEntity:(id)a3 databaseManager:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v13 count:1];

  v10 = [(FHDatabaseEntity *)self _initWithJoinClauseExpression:0 databaseManager:v7 entities:v9, v13, v14];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (FHDatabaseEntity)initWithEntity:(id)a3 joinClause:(id)a4 databaseManager:(id)a5
{
  v8 = MEMORY[0x277CBEB40];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(v8);
  v13 = [v11 lowercaseString];

  [v12 addObject:v13];
  v14 = [v10 entities];
  v15 = [v14 copy];
  [v12 addObjectsFromArray:v15];

  v16 = [v10 clauses];

  v17 = [v16 componentsJoinedByString:@" "];

  v18 = [v12 array];
  v19 = [(FHDatabaseEntity *)self _initWithJoinClauseExpression:v17 databaseManager:v9 entities:v18];

  return v19;
}

- (id)_initWithJoinClauseExpression:(id)a3 databaseManager:(id)a4 entities:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v50.receiver = self;
  v50.super_class = FHDatabaseEntity;
  v11 = [(FHDatabaseEntity *)&v50 init];
  v12 = v11;
  if (v11)
  {
    if (v9)
    {
      objc_storeWeak(&v11->_databaseManagerWeak, v9);
    }

    else
    {
      v13 = [[FHDatabaseManager alloc] init:0];
      databaseManagerStrong = v12->_databaseManagerStrong;
      v12->_databaseManagerStrong = v13;
    }

    v15 = [(FHDatabaseEntity *)v12 _availableFunctions:2 functionTypeFilter:@"s"];
    scalarFunctions = v12->_scalarFunctions;
    v12->_scalarFunctions = v15;

    v17 = [(FHDatabaseEntity *)v12 _availableFunctions:2 functionTypeFilter:@"w"];
    windowFunctions = v12->_windowFunctions;
    v12->_windowFunctions = v17;

    objc_storeStrong(&v12->_entities, a5);
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__1;
    v48 = __Block_byref_object_dispose__1;
    v49 = objc_opt_new();
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__1;
    v42 = __Block_byref_object_dispose__1;
    v43 = objc_opt_new();
    v19 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [v19 appendString:@"select * from"];
    v30 = v10;
    v31 = [(NSArray *)v12->_entities firstObject];
    for (i = 0; i < [(NSArray *)v12->_entities count]; ++i)
    {
      v21 = [(NSArray *)v12->_entities objectAtIndex:i];
      if (!i)
      {
        [v19 appendString:@" "];
        [v19 appendString:v31];
      }

      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA TABLE_XINFO(%@)", v21];;
      objc_initWeak(&location, v12);
      v23 = [(FHDatabaseEntity *)v12 _getDatabaseManager];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __75__FHDatabaseEntity__initWithJoinClauseExpression_databaseManager_entities___block_invoke;
      v32[3] = &unk_2785CB7E0;
      v24 = v21;
      v33 = v24;
      objc_copyWeak(&v36, &location);
      v34 = &v44;
      v35 = &v38;
      [v23 streamQueryResults:v22 usingFetchHandler:v32];

      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
    }

    objc_storeStrong(&v12->_virtualEntities, v39[5]);
    if (v8)
    {
      [v19 appendString:v8];
    }

    v25 = [v19 copy];
    multiEntityJoinQuery = v12->_multiEntityJoinQuery;
    v12->_multiEntityJoinQuery = v25;

    v27 = [v45[5] copy];
    fieldsIndex = v12->_fieldsIndex;
    v12->_fieldsIndex = v27;

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v44, 8);

    v10 = v30;
  }

  return v12;
}

void __75__FHDatabaseEntity__initWithJoinClauseExpression_databaseManager_entities___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3 || ![v3 count])
  {
    v5 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 136315394;
      v20 = "[FHDatabaseEntity _initWithJoinClauseExpression:databaseManager:entities:]_block_invoke";
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_ERROR, "%s No schema found for table: %@", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = *(a1 + 32);
    v10 = [v4 objectAtIndex:1];
    v11 = [v10 stringValue];
    v12 = [v8 stringWithFormat:@"%@.%@", v9, v11];

    v13 = *(*(*(a1 + 40) + 8) + 40);
    v14 = [v12 lowercaseString];
    [v13 addObject:v14];

    if ([v4 intAtIndex:6])
    {
      v15 = *(a1 + 32);
      v16 = [v4 objectAtIndex:1];
      v17 = [v16 stringValue];
      LODWORD(v15) = [v15 isEqualToString:v17];

      if (v15)
      {
        [*(*(*(a1 + 48) + 8) + 40) addObject:*(a1 + 32)];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)streamDataWithEntity:(id)a3 recordStreamHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", @"select * from", v6];;
  objc_initWeak(&location, self);
  v9 = objc_opt_new();
  v10 = [(FHDatabaseEntity *)self _getDatabaseManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__FHDatabaseEntity_streamDataWithEntity_recordStreamHandler___block_invoke;
  v13[3] = &unk_2785CB808;
  objc_copyWeak(&v16, &location);
  v11 = v9;
  v14 = v11;
  v12 = v7;
  v15 = v12;
  [v10 streamQueryResults:v8 usingFetchHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __61__FHDatabaseEntity_streamDataWithEntity_recordStreamHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([v10 count])
    {
      v4 = 0;
      do
      {
        v5 = [WeakRetained[1] objectAtIndex:v4];
        v6 = *(a1 + 32);
        v7 = [v10 objectAtIndex:v4];
        [v6 setObject:v7 forKey:v5];

        ++v4;
      }

      while (v4 < [v10 count]);
    }

    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) copy];
    (*(v8 + 16))(v8, v9);

    [*(a1 + 32) removeAllObjects];
  }
}

- (void)queryDataWithBlock:(id)a3 logicalOperator:(id)a4 limit:(unint64_t)a5 selectFields:(id)a6 orderby:(id)a7 usingBlock:(id)a8
{
  v114[1] = *MEMORY[0x277D85DE8];
  v80 = a3;
  v76 = a4;
  v78 = a6;
  v81 = a7;
  v77 = a8;
  v85 = [MEMORY[0x277CBEB18] array];
  if (v78)
  {
    fieldsIndex = self->_fieldsIndex;
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __93__FHDatabaseEntity_queryDataWithBlock_logicalOperator_limit_selectFields_orderby_usingBlock___block_invoke;
    v101[3] = &unk_2785CB830;
    v13 = v78;
    v102 = v13;
    v79 = [(NSArray *)fieldsIndex indexesOfObjectsPassingTest:v101];
    v14 = [v79 count];
    if (v14 != [v13 count])
    {
      v15 = MEMORY[0x277CCA9B8];
      v113 = @"One or more invalid selectFields";
      v114[0] = v13;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:&v113 count:1];
      v17 = [v15 errorWithDomain:@"com.apple.FinHealth.Framework" code:10016 userInfo:v16];
      [v85 addObject:v17];

      v18 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = self->_fieldsIndex;
        *buf = 138412802;
        *&buf[4] = v79;
        *&buf[12] = 2112;
        *&buf[14] = v13;
        *&buf[22] = 2112;
        v112 = v19;
        _os_log_impl(&dword_226DD4000, v18, OS_LOG_TYPE_ERROR, "Invalid select fields: available fields=%@, selectFields=%@, fieldsIndex=%@", buf, 0x20u);
      }
    }
  }

  else
  {
    v79 = 0;
  }

  if (v81)
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v20 = v81;
    v21 = [v20 countByEnumeratingWithState:&v97 objects:v110 count:16];
    if (v21)
    {
      v22 = *v98;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v98 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v97 + 1) + 8 * i);
          v25 = [v24 featureLabel];
          if (![(NSArray *)self->_fieldsIndex containsObject:v25])
          {
            v26 = MEMORY[0x277CCA9B8];
            v108 = @"One or more invalid order by fields";
            v109 = v20;
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
            v28 = [v26 errorWithDomain:@"com.apple.FinHealth.Framework" code:10016 userInfo:v27];
            [v85 addObject:v28];
          }

          v29 = [v24 featureRank];
          v30 = [v29 integerValue];

          if (!v30)
          {
            v31 = MEMORY[0x277CCA9B8];
            v106 = @"One or more invalid orderings (NSOrderedSame)";
            v107 = v20;
            v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
            v33 = [v31 errorWithDomain:@"com.apple.FinHealth.Framework" code:10016 userInfo:v32];
            [v85 addObject:v33];
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v97 objects:v110 count:16];
      }

      while (v21);
    }
  }

  v82 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (v80)
  {
    v34 = [v80 clausesAndOperatorsInOrder];
    if ([v34 count])
    {
      for (j = 0; j < [v34 count]; ++j)
      {
        v36 = [v34 objectAtIndex:j];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v37 = [v36 comparisonOperator];
          v38 = v37 == @"MATCH";

          if (v38)
          {
            v42 = [v36 fieldName];
            v41 = [v42 componentsSeparatedByString:@"."];

            v43 = [v41 stringAtIndex:0];
            if (![(NSArray *)self->_virtualEntities containsObject:v43])
            {
              goto LABEL_31;
            }

            v44 = self->_fieldsIndex;
            v45 = [v36 fieldName];
            if ([(NSArray *)v44 containsObject:v45])
            {
LABEL_32:
            }

            else
            {
              entities = self->_entities;
              v47 = [v36 fieldName];
              LOBYTE(entities) = [(NSArray *)entities containsObject:v47];

              if ((entities & 1) == 0)
              {
LABEL_31:
                v45 = [v36 shortDescription];
                [v82 appendFormat:@"clause: %@, ", v45];
                goto LABEL_32;
              }
            }

            goto LABEL_34;
          }

          v39 = self->_fieldsIndex;
          v40 = [v36 fieldName];
          LOBYTE(v39) = [(NSArray *)v39 containsObject:v40];

          if ((v39 & 1) == 0)
          {
            v41 = [v36 shortDescription];
            [v82 appendFormat:@"clause: %@, ", v41];
LABEL_34:
          }
        }
      }
    }

    if ([v82 length])
    {
      v48 = MEMORY[0x277CCA9B8];
      v104 = @"Invalid clauses";
      v105 = v82;
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
      v50 = [v48 errorWithDomain:@"com.apple.FinHealth.Framework" code:10016 userInfo:v49];
      [v85 addObject:v50];

      v51 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v82;
        _os_log_impl(&dword_226DD4000, v51, OS_LOG_TYPE_ERROR, "Invalid clauses: %@", buf, 0xCu);
      }
    }
  }

  if ([v85 count])
  {
    v77[2](v77, 0, v85, 1);
  }

  else
  {
    v75 = [v80 expressionFromClausesAndOperators];
    if (v81)
    {
      v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v52 addObject:@" ORDER BY "];
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      obj = v81;
      v53 = [obj countByEnumeratingWithState:&v93 objects:v103 count:16];
      if (v53)
      {
        v54 = 0;
        v55 = *v94;
        do
        {
          v56 = 0;
          v83 = v54;
          v57 = -v54;
          do
          {
            if (*v94 != v55)
            {
              objc_enumerationMutation(obj);
            }

            v58 = *(*(&v93 + 1) + 8 * v56);
            v59 = [v58 featureLabel];
            v60 = [v58 featureRank];
            v61 = [v60 integerValue];

            if (v57 != v56)
            {
              [v52 addObject:{@", "}];
            }

            [v52 addObject:v59];
            if (v61 == -1)
            {
              v62 = @" ASC";
            }

            else
            {
              v62 = @" DESC";
            }

            [v52 addObject:v62];

            ++v56;
          }

          while (v53 != v56);
          v63 = [obj countByEnumeratingWithState:&v93 objects:v103 count:16];
          v54 = v83 + v53;
          v53 = v63;
        }

        while (v63);
      }

      v64 = MEMORY[0x277CCACA8];
      v65 = [v52 componentsJoinedByString:&stru_283A7B918];
      v66 = [v64 stringWithFormat:@"%@", v65];

      v67 = [v75 stringByAppendingString:v66];

      v75 = v67;
    }

    if (v80)
    {
      v68 = [v80 clausesAndOperatorsInOrder];
      if ([v68 count])
      {
        v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ WHERE %@", self->_multiEntityJoinQuery, v75];;
      }

      else
      {
        v69 = self->_multiEntityJoinQuery;
      }

      v70 = v69;
    }

    else
    {
      v70 = self->_multiEntityJoinQuery;
    }

    v71 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v70;
      _os_log_impl(&dword_226DD4000, v71, OS_LOG_TYPE_INFO, "clausesFromBuilder - sql: %@", buf, 0xCu);
    }

    objc_initWeak(&location, self);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v112 = 0;
    v72 = [(FHDatabaseEntity *)self _getDatabaseManager];
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __93__FHDatabaseEntity_queryDataWithBlock_logicalOperator_limit_selectFields_orderby_usingBlock___block_invoke_171;
    v87[3] = &unk_2785CB858;
    v90 = buf;
    v91[1] = a5;
    objc_copyWeak(v91, &location);
    v88 = v79;
    v89 = v77;
    [v72 streamQueryResults:v70 usingFetchHandler:v87];

    objc_destroyWeak(v91);
    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&location);
  }

  v73 = *MEMORY[0x277D85DE8];
}

void __93__FHDatabaseEntity_queryDataWithBlock_logicalOperator_limit_selectFields_orderby_usingBlock___block_invoke_171(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 48) + 8) + 24) != *(a1 + 64))
  {
    v9 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (v9 && WeakRetained)
    {
      ++*(*(*(a1 + 48) + 8) + 24);
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      if (v5)
      {
        v7 = [v9 objectsAtIndexes:?];
      }

      else
      {
        v7 = [v9 copy];
      }

      v8 = v7;
      (*(v6 + 16))(v6, v7, 0, 0);
    }

    v3 = v9;
  }
}

- (BOOL)clearDataWithClauseBuilder:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (!v4)
  {
    goto LABEL_18;
  }

  v6 = [v4 clausesAndOperatorsInOrder];
  if ([v6 count])
  {
    v7 = 0;
    do
    {
      v8 = [v6 objectAtIndex:v7];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        fieldsIndex = self->_fieldsIndex;
        v10 = [v8 fieldName];
        LOBYTE(fieldsIndex) = [(NSArray *)fieldsIndex containsObject:v10];

        if ((fieldsIndex & 1) == 0)
        {
          v11 = [v8 shortDescription];
          [v5 appendFormat:@"clause: %@, ", v11];
        }
      }

      ++v7;
    }

    while (v7 < [v6 count]);
  }

  if (![v5 length])
  {
    if ([(NSArray *)self->_entities count]== 1)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [(NSArray *)self->_entities firstObject];
      v16 = [v4 expressionFromClausesAndOperators];
      v12 = [v14 stringWithFormat:@"%@ %@ WHERE (%@)", @"delete from", v15, v16];;

      v17 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v12;
        _os_log_impl(&dword_226DD4000, v17, OS_LOG_TYPE_DEBUG, "clausesFromBuilder - sql: %@", buf, 0xCu);
      }

      v18 = [(FHDatabaseEntity *)self _getDatabaseManager];
      v13 = [v18 deleteWithSQL:v12];

      goto LABEL_16;
    }

LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v12 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&dword_226DD4000, v12, OS_LOG_TYPE_ERROR, "Invalid clauses: %@", buf, 0xCu);
  }

  v13 = 0;
LABEL_16:

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)queryDataWithBlock:(id)a3 logicalOperator:(id)a4 selectFields:(id)a5 usingBlock:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__FHDatabaseEntity_queryDataWithBlock_logicalOperator_selectFields_usingBlock___block_invoke;
  v12[3] = &unk_2785CB880;
  v13 = v10;
  v11 = v10;
  [(FHDatabaseEntity *)self queryDataWithBlock:a3 logicalOperator:a4 limit:-1 selectFields:a5 orderby:0 usingBlock:v12];
}

- (void)queryDataWithBlock:(id)a3 logicalOperator:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__FHDatabaseEntity_queryDataWithBlock_logicalOperator_usingBlock___block_invoke;
  v10[3] = &unk_2785CB880;
  v11 = v8;
  v9 = v8;
  [(FHDatabaseEntity *)self queryDataWithBlock:a3 logicalOperator:a4 limit:-1 selectFields:0 orderby:0 usingBlock:v10];
}

- (BOOL)clearData
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_entities count]== 1)
  {
    v3 = [(NSArray *)self->_entities firstObject];
    v4 = [(FHDatabaseEntity *)self clearDataWithEntity:v3];

    v5 = *MEMORY[0x277D85DE8];
    return v4;
  }

  else
  {
    v7 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(NSArray *)self->_entities count];
      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&dword_226DD4000, v7, OS_LOG_TYPE_ERROR, "clearDataWithEntity insertOrUpdate not supported, [_entities count] = %lu", &v10, 0xCu);
    }

    v9 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

- (void)insertOrUpdateWithEntity:(id)a3 fieldValuePairsFromBuilder:(id)a4 upsert:(BOOL)a5
{
  v5 = a5;
  v42 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  if (v8)
  {
    v12 = [v8 fieldValuePairList];

    if (v12)
    {
      v37 = v5;
      v38 = v8;
      v13 = [v8 fieldValuePairList];
      if ([v13 count] == 1)
      {
LABEL_7:
        v15 = [v13 lastObject];
        fieldsIndex = self->_fieldsIndex;
        v23 = [v15 fieldName];
        LODWORD(fieldsIndex) = [(NSArray *)fieldsIndex containsObject:v23];

        if (fieldsIndex)
        {
          v24 = [v15 fieldName];
          v25 = [v24 substringFromIndex:{objc_msgSend(v39, "length") + 1}];

          v26 = [v25 lowercaseString];
          [v9 appendString:v26];

          [v10 appendString:@"?"];
          v27 = [v15 fieldValue];
          [v11 addObject:v27];

          v28 = MEMORY[0x277CCACA8];
          if (v37)
          {
            v29 = @"insert or replace into";
          }

          else
          {
            v29 = @"insert into";
          }

          v30 = [v9 copy];
          v31 = [v10 copy];
          v32 = [v28 stringWithFormat:@"%@ %@ (%@) values (%@)", v29, v39, v30, v31];

          v33 = [(FHDatabaseEntity *)self _getDatabaseManager];
          v34 = [v11 copy];
          [v33 executeAsPreparedStatement:v32 values:v34];

          goto LABEL_18;
        }

        v35 = FinHealthLogObject(@"FinHealthCore");
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
LABEL_17:

LABEL_18:
          v8 = v38;
          goto LABEL_19;
        }

        *buf = 138412290;
        v41 = v15;
      }

      else
      {
        v14 = 0;
        while (1)
        {
          v15 = [v13 objectAtIndex:v14];
          v16 = self->_fieldsIndex;
          v17 = [v15 fieldName];
          LOBYTE(v16) = [(NSArray *)v16 containsObject:v17];

          if ((v16 & 1) == 0)
          {
            break;
          }

          v18 = [v15 fieldName];
          v19 = [v18 substringFromIndex:{objc_msgSend(v39, "length") + 1}];

          v20 = [v19 lowercaseString];
          [v9 appendString:v20];

          [v10 appendString:@"?"];
          [v9 appendString:{@", "}];
          [v10 appendString:{@", "}];
          v21 = [v15 fieldValue];
          [v11 addObject:v21];

          if (++v14 >= ([v13 count] - 1))
          {
            goto LABEL_7;
          }
        }

        v35 = FinHealthLogObject(@"FinHealthCore");
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

        *buf = 138412290;
        v41 = v15;
      }

      _os_log_impl(&dword_226DD4000, v35, OS_LOG_TYPE_ERROR, "Invalid fieldValuePair: %@", buf, 0xCu);
      goto LABEL_17;
    }
  }

LABEL_19:

  v36 = *MEMORY[0x277D85DE8];
}

- (BOOL)clearDataWithEntity:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", @"delete from", a3];
  v5 = [(FHDatabaseEntity *)self _getDatabaseManager];
  v6 = [v5 deleteWithSQL:v4];

  return v6;
}

- (id)_availableFunctions:(int64_t)a3 functionTypeFilter:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA function_list"];;
  v7 = objc_opt_new();
  objc_initWeak(&location, self);
  v8 = [(FHDatabaseEntity *)self _getDatabaseManager];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __59__FHDatabaseEntity__availableFunctions_functionTypeFilter___block_invoke;
  v16 = &unk_2785CB8A8;
  objc_copyWeak(&v19, &location);
  v9 = v5;
  v17 = v9;
  v10 = v7;
  v18 = v10;
  [v8 streamQueryResults:v6 usingFetchHandler:&v13];

  v11 = [v10 copy];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v11;
}

void __59__FHDatabaseEntity__availableFunctions_functionTypeFilter___block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [v3 objectAtIndex:0];
    v6 = [v5 stringValue];

    v7 = [v3 objectAtIndex:2];
    v8 = [v7 stringValue];

    v9 = [v3 objectAtIndex:4];
    v10 = [v9 intValue];

    if (v8)
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        if ([v11 isEqualToString:v8])
        {
          v12 = [*(a1 + 40) objectForKey:v6];
          v13 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
          v14 = v13;
          if (v12)
          {
            v19[0] = v13;
            v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
            v16 = [v15 arrayByAddingObjectsFromArray:v12];
          }

          else
          {
            v18 = v13;
            v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
          }

          [*(a1 + 40) setObject:v16 forKey:v6];
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (FHDatabaseManager)databaseManagerWeak
{
  WeakRetained = objc_loadWeakRetained(&self->_databaseManagerWeak);

  return WeakRetained;
}

@end