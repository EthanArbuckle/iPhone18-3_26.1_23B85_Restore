@interface EFSQLQueryGenerator
+ (id)_createStatementForPredicate:(id)predicate propertyMapper:(id)mapper tablesUsed:(id)used;
+ (id)countStatementForPredicate:(id)predicate propertyMapper:(id)mapper distinctBy:(id)by;
+ (id)countStatementForPredicate:(id)predicate propertyMapper:(id)mapper distinctBy:(id)by groupBy:(id)groupBy groupByTable:(id)table;
+ (id)selectStatementForReturnObjectKeypaths:(id)keypaths predicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit propertyMapper:(id)mapper protectedDataAvailable:(BOOL)available;
@end

@implementation EFSQLQueryGenerator

void ___ef_log_EFSQLQueryGenerator_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EFSQLQueryGenerator");
  v1 = _ef_log_EFSQLQueryGenerator_log;
  _ef_log_EFSQLQueryGenerator_log = v0;
}

+ (id)selectStatementForReturnObjectKeypaths:(id)keypaths predicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit propertyMapper:(id)mapper protectedDataAvailable:(BOOL)available
{
  availableCopy = available;
  v115 = *MEMORY[0x1E69E9840];
  obj = keypaths;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  mapperCopy = mapper;
  v14 = _ef_log_EFSQLQueryGenerator();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v114 = obj;
    _os_log_impl(&dword_1C6152000, v14, OS_LOG_TYPE_INFO, "selectStatementForReturnObjectKeypaths called for %@", buf, 0xCu);
  }

  selfCopy = self;
  v81 = objc_opt_new();
  v72 = [obj count];
  if (!v72)
  {
    mainTable = [mapperCopy mainTable];
    name = [mainTable name];

    [mapperCopy keyPathMappers];
    if (availableCopy)
      v18 = {;
      allKeys = [v18 allKeys];

      obj = allKeys;
    }

    else
      v20 = {;
      allKeys2 = [v20 allKeys];
      v105[0] = MEMORY[0x1E69E9820];
      v105[1] = 3221225472;
      v105[2] = __132__EFSQLQueryGenerator_selectStatementForReturnObjectKeypaths_predicate_sortDescriptors_limit_propertyMapper_protectedDataAvailable___block_invoke;
      v105[3] = &unk_1E8249F58;
      v106 = mapperCopy;
      v107 = name;
      v22 = [allKeys2 ef_filter:v105];

      v18 = v106;
      obj = v22;
    }
  }

  v80 = objc_opt_new();
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  obja = obj;
  v23 = [obja countByEnumeratingWithState:&v101 objects:v112 count:16];
  if (v23)
  {
    v24 = *v102;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v102 != v24)
        {
          objc_enumerationMutation(obja);
        }

        v26 = *(*(&v101 + 1) + 8 * i);
        keyPathMappers = [mapperCopy keyPathMappers];
        v28 = [keyPathMappers objectForKeyedSubscript:v26];

        if (!v28)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"EFSQLQueryGenerator.m" lineNumber:56 description:{@"Asked to select keyPath %@ without mapper", v26}];
        }

        selectResultExpression = [v28 selectResultExpression];

        if (selectResultExpression)
        {
          [v80 ef_addObjectIfAbsent:v28];
          tableName = [v28 tableName];
          [v81 addObject:tableName];
        }
      }

      v23 = [obja countByEnumeratingWithState:&v101 objects:v112 count:16];
    }

    while (v23);
  }

  v79 = objc_opt_new();
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v76 = descriptorsCopy;
  v32 = [v76 countByEnumeratingWithState:&v97 objects:v111 count:16];
  if (v32)
  {
    v33 = *v98;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v98 != v33)
        {
          objc_enumerationMutation(v76);
        }

        v35 = *(*(&v97 + 1) + 8 * j);
        keyPathMappers2 = [mapperCopy keyPathMappers];
        v37 = [v35 key];
        v38 = [keyPathMappers2 objectForKeyedSubscript:v37];

        if (v38)
        {
          v39 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v35, "ascending")}];
          v40 = [EFPair pairWithFirst:v38 second:v39];

          [v79 ef_addObjectIfAbsentAccordingToEquals:v40];
          tableName2 = [v38 tableName];
          [v81 addObject:tableName2];
        }
      }

      v32 = [v76 countByEnumeratingWithState:&v97 objects:v111 count:16];
    }

    while (v32);
  }

  v42 = [selfCopy _createStatementForPredicate:predicateCopy propertyMapper:mapperCopy tablesUsed:v81];
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v75 = v79;
  v43 = [v75 countByEnumeratingWithState:&v93 objects:v110 count:16];
  if (v43)
  {
    v44 = *v94;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v94 != v44)
        {
          objc_enumerationMutation(v75);
        }

        v46 = *(*(&v93 + 1) + 8 * k);
        first = [v46 first];
        selectResultAlias = [first selectResultAlias];
        if (selectResultAlias)
        {
          selectResultAlias2 = [first selectResultAlias];
          selectResultExpression2 = [EFSQLColumnExpression column:selectResultAlias2];
        }

        else
        {
          selectResultExpression2 = [first selectResultExpression];
        }

        second = [v46 second];
        [v42 orderBy:selectResultExpression2 ascending:{objc_msgSend(second, "BOOLValue")}];
      }

      v43 = [v75 countByEnumeratingWithState:&v93 objects:v110 count:16];
    }

    while (v43);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v52 = v80;
  v53 = [v52 countByEnumeratingWithState:&v89 objects:v109 count:16];
  if (v53)
  {
    v54 = *v90;
    do
    {
      for (m = 0; m != v53; ++m)
      {
        if (*v90 != v54)
        {
          objc_enumerationMutation(v52);
        }

        v56 = *(*(&v89 + 1) + 8 * m);
        selectResultExpression3 = [v56 selectResultExpression];

        if (selectResultExpression3)
        {
          selectResultExpression4 = [v56 selectResultExpression];
          selectResultAlias3 = [v56 selectResultAlias];
          [v42 addResult:selectResultExpression4 alias:selectResultAlias3];
        }
      }

      v53 = [v52 countByEnumeratingWithState:&v89 objects:v109 count:16];
    }

    while (v53);
  }

  if (!v72)
  {
    mainTable2 = [mapperCopy mainTable];
    name2 = [mainTable2 name];

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    additionalColumns = [mapperCopy additionalColumns];
    v63 = [additionalColumns countByEnumeratingWithState:&v85 objects:v108 count:16];
    if (v63)
    {
      v64 = *v86;
      do
      {
        for (n = 0; n != v63; ++n)
        {
          if (*v86 != v64)
          {
            objc_enumerationMutation(additionalColumns);
          }

          [v42 addResultColumn:*(*(&v85 + 1) + 8 * n) fromTable:name2];
        }

        v63 = [additionalColumns countByEnumeratingWithState:&v85 objects:v108 count:16];
      }

      while (v63);
    }

    additionalSelectExpressions = [mapperCopy additionalSelectExpressions];
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __132__EFSQLQueryGenerator_selectStatementForReturnObjectKeypaths_predicate_sortDescriptors_limit_propertyMapper_protectedDataAvailable___block_invoke_2;
    v83[3] = &unk_1E8249F80;
    v84 = v42;
    [additionalSelectExpressions enumerateKeysAndObjectsUsingBlock:v83];
  }

  if (limit >= 1)
  {
    [v42 setLimit:?];
  }

  v67 = _ef_log_EFSQLQueryGenerator();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
  {
    queryString = [v42 queryString];
    *buf = 138412290;
    v114 = queryString;
    _os_log_impl(&dword_1C6152000, v67, OS_LOG_TYPE_INFO, "selectStatementForReturnObjectKeypaths returning: %@", buf, 0xCu);
  }

  v69 = *MEMORY[0x1E69E9840];

  return v42;
}

uint64_t __132__EFSQLQueryGenerator_selectStatementForReturnObjectKeypaths_predicate_sortDescriptors_limit_propertyMapper_protectedDataAvailable___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) keyPathMappers];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [v5 tableName];
  v7 = v6;
  if (v6 && ([v6 isEqualToString:*(a1 + 40)] & 1) == 0)
  {
    v9 = [*(a1 + 32) tableRelationships];
    v10 = [v9 objectForKeyedSubscript:v7];
    v8 = [v10 isProtectedTable] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (id)countStatementForPredicate:(id)predicate propertyMapper:(id)mapper distinctBy:(id)by
{
  v5 = [self countStatementForPredicate:predicate propertyMapper:mapper distinctBy:by groupBy:0 groupByTable:0];

  return v5;
}

+ (id)countStatementForPredicate:(id)predicate propertyMapper:(id)mapper distinctBy:(id)by groupBy:(id)groupBy groupByTable:(id)table
{
  predicateCopy = predicate;
  mapperCopy = mapper;
  byCopy = by;
  groupByCopy = groupBy;
  tableCopy = table;
  v17 = objc_opt_new();
  v18 = v17;
  if (tableCopy)
  {
    [v17 addObject:tableCopy];
  }

  v19 = [self _createStatementForPredicate:predicateCopy propertyMapper:mapperCopy tablesUsed:v18];
  if (byCopy)
  {
    [EFSQLAggregateFunction countDistinct:byCopy];
  }

  else
  {
    [EFSQLAggregateFunction count:0];
  }
  v20 = ;
  [v19 addResult:v20 alias:0];

  if (groupByCopy)
  {
    [v19 addResultColumn:groupByCopy fromTable:tableCopy];
    [v19 groupByColumn:groupByCopy fromTable:tableCopy];
  }

  return v19;
}

+ (id)_createStatementForPredicate:(id)predicate propertyMapper:(id)mapper tablesUsed:(id)used
{
  v86 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  mapperCopy = mapper;
  usedCopy = used;
  v60 = predicateCopy;
  if ([predicateCopy ef_matchesEverything])
  {
    sqlExpressable = 0;
  }

  else if ([predicateCopy ef_matchesNothing])
  {
    sqlExpressable = MEMORY[0x1E695E110];
  }

  else
  {
    v8 = [predicateCopy predicateNodeFromPropertyMapper:mapperCopy addingTablesUsed:usedCopy];
    sqlExpressable = [v8 sqlExpressable];
  }

  mainTable = [mapperCopy mainTable];
  name = [mainTable name];

  v65 = name;
  [usedCopy removeObject:name];
  v71 = objc_opt_new();
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = [usedCopy allObjects];
  v11 = [obj countByEnumeratingWithState:&v76 objects:v85 count:16];
  if (v11)
  {
    v66 = *v77;
    do
    {
      v68 = v11;
      for (i = 0; i != v68; i = i + 1)
      {
        if (*v77 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v76 + 1) + 8 * i);
        if (([v71 containsObject:v13] & 1) == 0)
        {
          tableRelationships = [mapperCopy tableRelationships];
          v15 = [tableRelationships objectForKeyedSubscript:v13];

          if (v15)
          {
            j = v15;
            goto LABEL_16;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLQueryGenerator.m" lineNumber:155 description:{@"Query references table %@ without a table relationship", v13}];
          for (j = 0; ; j = v30)
          {

LABEL_16:
            sourceColumn = [j sourceColumn];
            table = [sourceColumn table];
            name2 = [table name];
            v21 = [name2 isEqualToString:v65];

            if (v21)
            {
              break;
            }

            v22 = _ef_log_EFSQLQueryGenerator();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              ef_publicDescription = [j ef_publicDescription];
              *buf = 138543362;
              v82 = ef_publicDescription;
              _os_log_impl(&dword_1C6152000, v22, OS_LOG_TYPE_INFO, "Current tableRelationship %{public}@", buf, 0xCu);
            }

            if (!j)
            {
              currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler2 handleFailureInMethod:a2 object:self file:@"EFSQLQueryGenerator.m" lineNumber:159 description:{@"No existing table relationship exists to the main table", v13}];
            }

            sourceColumn2 = [j sourceColumn];
            table2 = [sourceColumn2 table];
            currentHandler = [table2 name];

            if ([v71 containsObject:currentHandler])
            {

              break;
            }

            [v71 addObject:currentHandler];
            tableRelationships2 = [mapperCopy tableRelationships];
            sourceColumn3 = [j sourceColumn];
            table3 = [sourceColumn3 table];
            name3 = [table3 name];
            v30 = [tableRelationships2 objectForKeyedSubscript:name3];

            v31 = _ef_log_EFSQLQueryGenerator();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              ef_publicDescription2 = [v30 ef_publicDescription];
              tableRelationships3 = [mapperCopy tableRelationships];
              *buf = 138543618;
              v82 = ef_publicDescription2;
              v83 = 2112;
              v84 = tableRelationships3;
              _os_log_impl(&dword_1C6152000, v31, OS_LOG_TYPE_INFO, "Iterating into tableRelationship: %{public}@ tableRelationships: %@", buf, 0x16u);
            }

            if (!v30)
            {
              currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler3 handleFailureInMethod:a2 object:self file:@"EFSQLQueryGenerator.m" lineNumber:170 description:{@"Query references table %@ without a table relationship", v13}];
            }
          }

          [v71 addObject:v13];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v76 objects:v85 count:16];
    }

    while (v11);
  }

  v69 = [[EFSQLSelectStatement alloc] initWithTable:v65];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obja = v71;
  v36 = [obja countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (v36)
  {
    v67 = *v73;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v73 != v67)
        {
          objc_enumerationMutation(obja);
        }

        v38 = *(*(&v72 + 1) + 8 * k);
        tableRelationships4 = [mapperCopy tableRelationships];
        v40 = [tableRelationships4 objectForKeyedSubscript:v38];

        sourceColumn4 = [v40 sourceColumn];
        columnExpressionWithFullName = [sourceColumn4 columnExpressionWithFullName];

        tableAlias = [v40 tableAlias];
        v44 = tableAlias;
        if (tableAlias)
        {
          name4 = tableAlias;
        }

        else
        {
          destinationColumn = [v40 destinationColumn];
          table4 = [destinationColumn table];
          name4 = [table4 name];
        }

        v48 = [EFSQLColumnExpression alloc];
        destinationColumn2 = [v40 destinationColumn];
        name5 = [destinationColumn2 name];
        v51 = [(EFSQLColumnExpression *)v48 initWithName:name5 table:name4];

        v52 = [columnExpressionWithFullName equalTo:v51];
        if ([v40 useLeftOuterJoin])
        {
          tableAlias2 = [v40 tableAlias];
          v54 = [(EFSQLSelectStatement *)v69 leftOuterJoin:v38 alias:tableAlias2 on:v52];
        }

        else
        {
          tableAlias2 = [v40 tableAlias];
          v55 = [(EFSQLSelectStatement *)v69 join:v38 alias:tableAlias2 on:v52];
        }
      }

      v36 = [obja countByEnumeratingWithState:&v72 objects:v80 count:16];
    }

    while (v36);
  }

  [(EFSQLSelectStatement *)v69 setWhere:sqlExpressable];
  v56 = *MEMORY[0x1E69E9840];

  return v69;
}

+ (void)_createStatementForPredicate:(void *)a1 propertyMapper:(uint8_t *)buf tablesUsed:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6152000, log, OS_LOG_TYPE_ERROR, "Exception occurred when mapping predicate:\n%{public}@", buf, 0xCu);
}

@end