@interface EFSQLQueryGenerator
+ (id)_createStatementForPredicate:(id)a3 propertyMapper:(id)a4 tablesUsed:(id)a5;
+ (id)countStatementForPredicate:(id)a3 propertyMapper:(id)a4 distinctBy:(id)a5;
+ (id)countStatementForPredicate:(id)a3 propertyMapper:(id)a4 distinctBy:(id)a5 groupBy:(id)a6 groupByTable:(id)a7;
+ (id)selectStatementForReturnObjectKeypaths:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 limit:(int64_t)a6 propertyMapper:(id)a7 protectedDataAvailable:(BOOL)a8;
@end

@implementation EFSQLQueryGenerator

void ___ef_log_EFSQLQueryGenerator_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EFSQLQueryGenerator");
  v1 = _ef_log_EFSQLQueryGenerator_log;
  _ef_log_EFSQLQueryGenerator_log = v0;
}

+ (id)selectStatementForReturnObjectKeypaths:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 limit:(int64_t)a6 propertyMapper:(id)a7 protectedDataAvailable:(BOOL)a8
{
  v8 = a8;
  v115 = *MEMORY[0x1E69E9840];
  obj = a3;
  v74 = a4;
  v73 = a5;
  v82 = a7;
  v14 = _ef_log_EFSQLQueryGenerator();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v114 = obj;
    _os_log_impl(&dword_1C6152000, v14, OS_LOG_TYPE_INFO, "selectStatementForReturnObjectKeypaths called for %@", buf, 0xCu);
  }

  v15 = a1;
  v81 = objc_opt_new();
  v72 = [obj count];
  if (!v72)
  {
    v16 = [v82 mainTable];
    v17 = [v16 name];

    [v82 keyPathMappers];
    if (v8)
      v18 = {;
      v19 = [v18 allKeys];

      obj = v19;
    }

    else
      v20 = {;
      v21 = [v20 allKeys];
      v105[0] = MEMORY[0x1E69E9820];
      v105[1] = 3221225472;
      v105[2] = __132__EFSQLQueryGenerator_selectStatementForReturnObjectKeypaths_predicate_sortDescriptors_limit_propertyMapper_protectedDataAvailable___block_invoke;
      v105[3] = &unk_1E8249F58;
      v106 = v82;
      v107 = v17;
      v22 = [v21 ef_filter:v105];

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
        v27 = [v82 keyPathMappers];
        v28 = [v27 objectForKeyedSubscript:v26];

        if (!v28)
        {
          v31 = [MEMORY[0x1E696AAA8] currentHandler];
          [v31 handleFailureInMethod:a2 object:v15 file:@"EFSQLQueryGenerator.m" lineNumber:56 description:{@"Asked to select keyPath %@ without mapper", v26}];
        }

        v29 = [v28 selectResultExpression];

        if (v29)
        {
          [v80 ef_addObjectIfAbsent:v28];
          v30 = [v28 tableName];
          [v81 addObject:v30];
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
  v76 = v73;
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
        v36 = [v82 keyPathMappers];
        v37 = [v35 key];
        v38 = [v36 objectForKeyedSubscript:v37];

        if (v38)
        {
          v39 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v35, "ascending")}];
          v40 = [EFPair pairWithFirst:v38 second:v39];

          [v79 ef_addObjectIfAbsentAccordingToEquals:v40];
          v41 = [v38 tableName];
          [v81 addObject:v41];
        }
      }

      v32 = [v76 countByEnumeratingWithState:&v97 objects:v111 count:16];
    }

    while (v32);
  }

  v42 = [v15 _createStatementForPredicate:v74 propertyMapper:v82 tablesUsed:v81];
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
        v47 = [v46 first];
        v48 = [v47 selectResultAlias];
        if (v48)
        {
          v49 = [v47 selectResultAlias];
          v50 = [EFSQLColumnExpression column:v49];
        }

        else
        {
          v50 = [v47 selectResultExpression];
        }

        v51 = [v46 second];
        [v42 orderBy:v50 ascending:{objc_msgSend(v51, "BOOLValue")}];
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
        v57 = [v56 selectResultExpression];

        if (v57)
        {
          v58 = [v56 selectResultExpression];
          v59 = [v56 selectResultAlias];
          [v42 addResult:v58 alias:v59];
        }
      }

      v53 = [v52 countByEnumeratingWithState:&v89 objects:v109 count:16];
    }

    while (v53);
  }

  if (!v72)
  {
    v60 = [v82 mainTable];
    v61 = [v60 name];

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v62 = [v82 additionalColumns];
    v63 = [v62 countByEnumeratingWithState:&v85 objects:v108 count:16];
    if (v63)
    {
      v64 = *v86;
      do
      {
        for (n = 0; n != v63; ++n)
        {
          if (*v86 != v64)
          {
            objc_enumerationMutation(v62);
          }

          [v42 addResultColumn:*(*(&v85 + 1) + 8 * n) fromTable:v61];
        }

        v63 = [v62 countByEnumeratingWithState:&v85 objects:v108 count:16];
      }

      while (v63);
    }

    v66 = [v82 additionalSelectExpressions];
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __132__EFSQLQueryGenerator_selectStatementForReturnObjectKeypaths_predicate_sortDescriptors_limit_propertyMapper_protectedDataAvailable___block_invoke_2;
    v83[3] = &unk_1E8249F80;
    v84 = v42;
    [v66 enumerateKeysAndObjectsUsingBlock:v83];
  }

  if (a6 >= 1)
  {
    [v42 setLimit:?];
  }

  v67 = _ef_log_EFSQLQueryGenerator();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
  {
    v68 = [v42 queryString];
    *buf = 138412290;
    v114 = v68;
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

+ (id)countStatementForPredicate:(id)a3 propertyMapper:(id)a4 distinctBy:(id)a5
{
  v5 = [a1 countStatementForPredicate:a3 propertyMapper:a4 distinctBy:a5 groupBy:0 groupByTable:0];

  return v5;
}

+ (id)countStatementForPredicate:(id)a3 propertyMapper:(id)a4 distinctBy:(id)a5 groupBy:(id)a6 groupByTable:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_opt_new();
  v18 = v17;
  if (v16)
  {
    [v17 addObject:v16];
  }

  v19 = [a1 _createStatementForPredicate:v12 propertyMapper:v13 tablesUsed:v18];
  if (v14)
  {
    [EFSQLAggregateFunction countDistinct:v14];
  }

  else
  {
    [EFSQLAggregateFunction count:0];
  }
  v20 = ;
  [v19 addResult:v20 alias:0];

  if (v15)
  {
    [v19 addResultColumn:v15 fromTable:v16];
    [v19 groupByColumn:v15 fromTable:v16];
  }

  return v19;
}

+ (id)_createStatementForPredicate:(id)a3 propertyMapper:(id)a4 tablesUsed:(id)a5
{
  v86 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v70 = a4;
  v62 = a5;
  v60 = v7;
  if ([v7 ef_matchesEverything])
  {
    v61 = 0;
  }

  else if ([v7 ef_matchesNothing])
  {
    v61 = MEMORY[0x1E695E110];
  }

  else
  {
    v8 = [v7 predicateNodeFromPropertyMapper:v70 addingTablesUsed:v62];
    v61 = [v8 sqlExpressable];
  }

  v9 = [v70 mainTable];
  v10 = [v9 name];

  v65 = v10;
  [v62 removeObject:v10];
  v71 = objc_opt_new();
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = [v62 allObjects];
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
          v14 = [v70 tableRelationships];
          v15 = [v14 objectForKeyedSubscript:v13];

          if (v15)
          {
            j = v15;
            goto LABEL_16;
          }

          v17 = [MEMORY[0x1E696AAA8] currentHandler];
          [v17 handleFailureInMethod:a2 object:a1 file:@"EFSQLQueryGenerator.m" lineNumber:155 description:{@"Query references table %@ without a table relationship", v13}];
          for (j = 0; ; j = v30)
          {

LABEL_16:
            v18 = [j sourceColumn];
            v19 = [v18 table];
            v20 = [v19 name];
            v21 = [v20 isEqualToString:v65];

            if (v21)
            {
              break;
            }

            v22 = _ef_log_EFSQLQueryGenerator();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = [j ef_publicDescription];
              *buf = 138543362;
              v82 = v23;
              _os_log_impl(&dword_1C6152000, v22, OS_LOG_TYPE_INFO, "Current tableRelationship %{public}@", buf, 0xCu);
            }

            if (!j)
            {
              v34 = [MEMORY[0x1E696AAA8] currentHandler];
              [v34 handleFailureInMethod:a2 object:a1 file:@"EFSQLQueryGenerator.m" lineNumber:159 description:{@"No existing table relationship exists to the main table", v13}];
            }

            v24 = [j sourceColumn];
            v25 = [v24 table];
            v17 = [v25 name];

            if ([v71 containsObject:v17])
            {

              break;
            }

            [v71 addObject:v17];
            v26 = [v70 tableRelationships];
            v27 = [j sourceColumn];
            v28 = [v27 table];
            v29 = [v28 name];
            v30 = [v26 objectForKeyedSubscript:v29];

            v31 = _ef_log_EFSQLQueryGenerator();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = [v30 ef_publicDescription];
              v33 = [v70 tableRelationships];
              *buf = 138543618;
              v82 = v32;
              v83 = 2112;
              v84 = v33;
              _os_log_impl(&dword_1C6152000, v31, OS_LOG_TYPE_INFO, "Iterating into tableRelationship: %{public}@ tableRelationships: %@", buf, 0x16u);
            }

            if (!v30)
            {
              v35 = [MEMORY[0x1E696AAA8] currentHandler];
              [v35 handleFailureInMethod:a2 object:a1 file:@"EFSQLQueryGenerator.m" lineNumber:170 description:{@"Query references table %@ without a table relationship", v13}];
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
        v39 = [v70 tableRelationships];
        v40 = [v39 objectForKeyedSubscript:v38];

        v41 = [v40 sourceColumn];
        v42 = [v41 columnExpressionWithFullName];

        v43 = [v40 tableAlias];
        v44 = v43;
        if (v43)
        {
          v45 = v43;
        }

        else
        {
          v46 = [v40 destinationColumn];
          v47 = [v46 table];
          v45 = [v47 name];
        }

        v48 = [EFSQLColumnExpression alloc];
        v49 = [v40 destinationColumn];
        v50 = [v49 name];
        v51 = [(EFSQLColumnExpression *)v48 initWithName:v50 table:v45];

        v52 = [v42 equalTo:v51];
        if ([v40 useLeftOuterJoin])
        {
          v53 = [v40 tableAlias];
          v54 = [(EFSQLSelectStatement *)v69 leftOuterJoin:v38 alias:v53 on:v52];
        }

        else
        {
          v53 = [v40 tableAlias];
          v55 = [(EFSQLSelectStatement *)v69 join:v38 alias:v53 on:v52];
        }
      }

      v36 = [obja countByEnumeratingWithState:&v72 objects:v80 count:16];
    }

    while (v36);
  }

  [(EFSQLSelectStatement *)v69 setWhere:v61];
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