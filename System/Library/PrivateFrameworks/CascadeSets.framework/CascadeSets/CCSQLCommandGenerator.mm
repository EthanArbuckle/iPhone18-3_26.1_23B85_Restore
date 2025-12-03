@interface CCSQLCommandGenerator
+ (id)_generateCommaSeparatedPlaceholdersString:(unint64_t)string;
+ (id)_generateCommaSeparatedValuesString:(id)string;
+ (id)_generateJoinClause:(id)clause;
+ (id)_generateOrderByClause:(id)clause;
+ (id)_produceCriterionClause:(id)clause tableName:(id)name;
+ (id)_produceJoinCriterionClause:(id)clause;
+ (id)_produceSelectClauseWithTableName:(id)name columnNames:(id)names count:(BOOL)count;
+ (id)_produceSetValuesClauseForColumnNames:(id)names columnValues:(id)values;
+ (id)_removeEndingSemicolonFromCommandString:(id)string;
+ (id)deleteFromTableWithName:(id)name criterion:(id)criterion returningColumns:(id)columns;
+ (id)insertCommandStringWithTableName:(id)name columnNames:(id)names returningColumns:(id)columns onConflict:(id)conflict;
+ (id)prefixColumnName:(id)name withTableName:(id)tableName;
+ (id)updateWithTableName:(id)name columnNames:(id)names columnValues:(id)values criterion:(id)criterion returningColumns:(id)columns;
+ (void)addLimit:(id)limit offset:(id)offset forSelect:(id)select;
+ (void)replaceOffset:(id)offset forSelect:(id)select;
- (CCSQLCommandGenerator)init;
@end

@implementation CCSQLCommandGenerator

- (CCSQLCommandGenerator)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

+ (void)addLimit:(id)limit offset:(id)offset forSelect:(id)select
{
  selectCopy = select;
  offsetCopy = offset;
  limitCopy = limit;
  commandString = [selectCopy commandString];
  v10 = [commandString mutableCopy];

  parameters = [selectCopy parameters];
  v12 = [parameters mutableCopy];

  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@" LIMIT %@", @"?"];
  [v10 insertString:v13 atIndex:{objc_msgSend(v10, "length") - 1}];
  [v12 addObject:limitCopy];

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@" OFFSET %@", @"?"];
  [v10 insertString:v14 atIndex:{objc_msgSend(v10, "length") - 1}];
  [v12 addObject:offsetCopy];

  [selectCopy replaceParameters:v12];
  [selectCopy updateCommandString:v10];
}

+ (void)replaceOffset:(id)offset forSelect:(id)select
{
  selectCopy = select;
  offsetCopy = offset;
  parameters = [selectCopy parameters];
  v8 = [parameters mutableCopy];

  [v8 replaceObjectAtIndex:objc_msgSend(v8 withObject:{"count") - 1, offsetCopy}];
  [selectCopy updateParameters:v8];
}

+ (id)deleteFromTableWithName:(id)name criterion:(id)criterion returningColumns:(id)columns
{
  columnsCopy = columns;
  v9 = MEMORY[0x1E696AEC0];
  criterionCopy = criterion;
  nameCopy = name;
  nameCopy = [[v9 alloc] initWithFormat:@"DELETE FROM %@", nameCopy];
  v13 = [self _produceCriterionClause:criterionCopy tableName:nameCopy];

  if (v13)
  {
    clause = [v13 clause];
    v15 = [nameCopy stringByAppendingFormat:@" WHERE %@", clause];

    nameCopy = v15;
  }

  if ([columnsCopy count])
  {
    v16 = [columnsCopy componentsJoinedByString:{@", "}];
    v17 = [nameCopy stringByAppendingFormat:@" RETURNING %@", v16];

    nameCopy = v17;
  }

  v18 = [nameCopy stringByAppendingString:@""];;

  v19 = [CCDatabaseDelete alloc];
  parameters = [v13 parameters];
  v21 = [(CCDatabaseCommand *)v19 initWithCommandString:v18 parameters:parameters];

  return v21;
}

+ (id)updateWithTableName:(id)name columnNames:(id)names columnValues:(id)values criterion:(id)criterion returningColumns:(id)columns
{
  nameCopy = name;
  criterionCopy = criterion;
  columnsCopy = columns;
  v15 = MEMORY[0x1E696AEC0];
  valuesCopy = values;
  namesCopy = names;
  nameCopy = [[v15 alloc] initWithFormat:@"UPDATE %@", nameCopy];
  v19 = [self _produceSetValuesClauseForColumnNames:namesCopy columnValues:valuesCopy];

  if (v19)
  {
    clause = [v19 clause];
    v21 = [nameCopy stringByAppendingFormat:@" SET %@", clause];

    nameCopy = v21;
  }

  v22 = [self _produceCriterionClause:criterionCopy tableName:nameCopy];
  v23 = v22;
  if (v22)
  {
    clause2 = [v22 clause];
    v25 = [nameCopy stringByAppendingFormat:@" WHERE %@", clause2];

    nameCopy = v25;
  }

  if ([columnsCopy count])
  {
    v26 = [columnsCopy componentsJoinedByString:{@", "}];
    v27 = [nameCopy stringByAppendingFormat:@" RETURNING %@", v26];

    nameCopy = v27;
  }

  v28 = [nameCopy stringByAppendingString:@""];;

  parameters = [v19 parameters];
  v30 = [parameters count];
  parameters2 = [v23 parameters];
  v32 = [parameters2 count];

  v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:v32 + v30];
  parameters3 = [v19 parameters];
  [v33 addObjectsFromArray:parameters3];

  parameters4 = [v23 parameters];
  [v33 addObjectsFromArray:parameters4];

  v36 = [(CCDatabaseCommand *)[CCDatabaseUpdate alloc] initWithCommandString:v28 parameters:v33];

  return v36;
}

+ (id)insertCommandStringWithTableName:(id)name columnNames:(id)names returningColumns:(id)columns onConflict:(id)conflict
{
  columnsCopy = columns;
  namesCopy = names;
  nameCopy = name;
  type = [conflict type];
  if ((type - 1) > 2)
  {
    v14 = @"INSERT INTO %@ (%@) VALUES (%@)";
  }

  else
  {
    v14 = off_1E7C8B3A8[type - 1];
  }

  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = [namesCopy componentsJoinedByString:{@", "}];
  v17 = [namesCopy count];

  v18 = [self _generateCommaSeparatedPlaceholdersString:v17];
  v19 = [v15 initWithFormat:v14, nameCopy, v16, v18];

  if ([columnsCopy count])
  {
    v20 = [columnsCopy componentsJoinedByString:{@", "}];
    v21 = [v19 stringByAppendingFormat:@" RETURNING %@", v20];

    v19 = v21;
  }

  v22 = [v19 stringByAppendingString:@""];;

  return v22;
}

+ (id)_produceSetValuesClauseForColumnNames:(id)names columnValues:(id)values
{
  namesCopy = names;
  valuesCopy = values;
  v8 = [namesCopy count];
  if (v8 && (v9 = v8, [valuesCopy count] == v8))
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
    v11 = objc_opt_new();
    if ([namesCopy count])
    {
      v12 = 0;
      do
      {
        v13 = objc_alloc(MEMORY[0x1E696AEC0]);
        v14 = [namesCopy objectAtIndex:v12];
        v15 = [self _generateCommaSeparatedPlaceholdersString:1];
        v16 = [v13 initWithFormat:@"%@ = %@", v14, v15];
        [v10 addObject:v16];

        v17 = [valuesCopy objectAtIndex:v12];
        [v11 addObject:v17];

        ++v12;
      }

      while (v12 < [namesCopy count]);
    }

    if ([v10 count] <= 1)
    {
      v21 = [CCSQLCommandClause alloc];
      v18 = [v10 objectAtIndex:0];
      v19 = v21;
    }

    else
    {
      v18 = [v10 componentsJoinedByString:{@", "}];
      v19 = [CCSQLCommandClause alloc];
    }

    v20 = [(CCSQLCommandClause *)v19 initWithClause:v18 parameters:v11];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)_produceSelectClauseWithTableName:(id)name columnNames:(id)names count:(BOOL)count
{
  countCopy = count;
  nameCopy = name;
  namesCopy = names;
  v10 = namesCopy;
  if (countCopy)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT COUNT(*) FROM %@", nameCopy];
  }

  else
  {
    v11 = MEMORY[0x1E696AEC0];
    if (namesCopy)
    {
      v12 = [self _generateCommaSeparatedValuesString:namesCopy];
      nameCopy = [v11 stringWithFormat:@"SELECT %@ FROM %@", v12, nameCopy];

      goto LABEL_7;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT * FROM %@", nameCopy];
  }
  nameCopy = ;
LABEL_7:

  return nameCopy;
}

+ (id)_generateJoinClause:(id)clause
{
  v33 = *MEMORY[0x1E69E9840];
  clauseCopy = clause;
  v5 = clauseCopy;
  if (clauseCopy && [clauseCopy joinType])
  {
    v25 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [v5 joinTables];
    v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          joinCriterion = [v10 joinCriterion];
          v12 = [self _produceJoinCriterionClause:joinCriterion];

          joinType = [v5 joinType];
          if ((joinType - 1) <= 3)
          {
            v27 = off_1E7C8B3C0[joinType - 1];
            v14 = objc_alloc(MEMORY[0x1E696AEC0]);
            table = [v10 table];
            [v12 clause];
            v16 = v7;
            v17 = v8;
            selfCopy = self;
            v20 = v19 = v5;
            v21 = [v14 initWithFormat:v27, table, v20];

            v5 = v19;
            self = selfCopy;
            v8 = v17;
            v7 = v16;

            if (v21)
            {
              [v25 appendString:v21];
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v7);
    }

    v22 = [[CCSQLCommandClause alloc] initWithClause:v25 parameters:0];
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)prefixColumnName:(id)name withTableName:(id)tableName
{
  nameCopy = name;
  v6 = nameCopy;
  if (tableName)
  {
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", tableName, nameCopy];
  }

  else
  {
    nameCopy = nameCopy;
  }

  v8 = nameCopy;

  return v8;
}

+ (id)_produceJoinCriterionClause:(id)clause
{
  v37 = *MEMORY[0x1E69E9840];
  clauseCopy = clause;
  subCriteria = [clauseCopy subCriteria];
  sqlOperator = [clauseCopy sqlOperator];
  if (sqlOperator > 0x10)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  if (((1 << sqlOperator) & 0x1FBFD) != 0)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CCSQLCommandGenerator *)clauseCopy _produceJoinCriterionClause:v7];
    }

    goto LABEL_6;
  }

  if (sqlOperator == 1)
  {
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    columnName = [clauseCopy columnName];
    tableName = [clauseCopy tableName];
    v15 = [self prefixColumnName:columnName withTableName:tableName];
    comparingColumnName = [clauseCopy comparingColumnName];
    comparingTableName = [clauseCopy comparingTableName];
    v18 = [self prefixColumnName:comparingColumnName withTableName:comparingTableName];
    v8 = [v12 initWithFormat:@"%@ = %@", v15, v18];
  }

  else
  {
    v31 = clauseCopy;
    v19 = [subCriteria count];
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v19];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v30 = subCriteria;
    v21 = subCriteria;
    v22 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [self _produceJoinCriterionClause:*(*(&v32 + 1) + 8 * i)];
          if (v26)
          {
            v27 = objc_alloc(MEMORY[0x1E696AEC0]);
            clause = [v26 clause];
            v29 = [v27 initWithFormat:@"(%@)", clause];
            [v20 addObject:v29];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v23);
    }

    if ([v20 count])
    {
      v8 = [v20 componentsJoinedByString:@" AND "];
    }

    else
    {
      v8 = 0;
    }

    clauseCopy = v31;

    subCriteria = v30;
  }

LABEL_7:
  v9 = [[CCSQLCommandClause alloc] initWithClause:v8 parameters:0];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_produceCriterionClause:(id)clause tableName:(id)name
{
  v123 = *MEMORY[0x1E69E9840];
  clauseCopy = clause;
  nameCopy = name;
  if (clauseCopy)
  {
    columnName = [clauseCopy columnName];
    tableName = [clauseCopy tableName];
    v9 = [self prefixColumnName:columnName withTableName:tableName];

    comparingColumnName = [clauseCopy comparingColumnName];
    comparingTableName = [clauseCopy comparingTableName];
    v12 = [self prefixColumnName:comparingColumnName withTableName:comparingTableName];

    columnValues = [clauseCopy columnValues];
    subCriteria = [clauseCopy subCriteria];
    subQuery = [clauseCopy subQuery];
    v15 = objc_opt_new();
    switch([clauseCopy sqlOperator])
    {
      case 1:
        v16 = v15;
        comparingColumnName2 = [clauseCopy comparingColumnName];

        v18 = objc_alloc(MEMORY[0x1E696AEC0]);
        v19 = v18;
        if (!comparingColumnName2)
        {
          v67 = [self _generateCommaSeparatedPlaceholdersString:1];
          v68 = [v19 initWithFormat:@"%@ = %@", v9, v67];
          goto LABEL_60;
        }

        v103 = [v18 initWithFormat:@"%@ = %@", v9, v12];
        v21 = subQuery;
        v15 = v16;
        if (v103)
        {
          goto LABEL_68;
        }

        goto LABEL_57;
      case 2:
        v64 = objc_alloc(MEMORY[0x1E696AEC0]);
        [self _generateCommaSeparatedPlaceholdersString:1];
        v58 = v57 = v15;
        v59 = [v64 initWithFormat:@"%@ < %@", v9, v58];
        goto LABEL_32;
      case 3:
        v56 = objc_alloc(MEMORY[0x1E696AEC0]);
        [self _generateCommaSeparatedPlaceholdersString:1];
        v58 = v57 = v15;
        v59 = [v56 initWithFormat:@"%@ <= %@", v9, v58];
        goto LABEL_32;
      case 4:
        v61 = objc_alloc(MEMORY[0x1E696AEC0]);
        [self _generateCommaSeparatedPlaceholdersString:1];
        v58 = v57 = v15;
        v59 = [v61 initWithFormat:@"%@ >= %@", v9, v58];
LABEL_32:
        v103 = v59;

        v15 = v57;
        firstObject = [columnValues firstObject];
        [v57 addObject:firstObject];

        goto LABEL_67;
      case 5:
        v33 = v15;
        v34 = objc_alloc(MEMORY[0x1E696AEC0]);
        v35 = [self _generateCommaSeparatedPlaceholdersString:1];
        v103 = [v34 initWithFormat:@"%@ MATCH %@", nameCopy, v35];

        v36 = MEMORY[0x1E696AEC0];
        firstObject2 = [columnValues firstObject];
        v38 = [v36 stringWithFormat:@"%@ : %@", v9, firstObject2];

        [v33 addObject:v38];
        v15 = v33;
        goto LABEL_67;
      case 6:
        v16 = v15;
        v66 = objc_alloc(MEMORY[0x1E696AEC0]);
        v67 = [self _generateCommaSeparatedPlaceholdersString:1];
        v68 = [v66 initWithFormat:@"%@ != %@", v9, v67];
        goto LABEL_60;
      case 7:
        v78 = v15;
        v79 = objc_alloc(MEMORY[0x1E696AEC0]);
        v80 = [self _generateCommaSeparatedPlaceholdersString:1];
        [self _generateCommaSeparatedPlaceholdersString:1];
        v82 = v81 = subCriteria;
        v83 = v79;
        v15 = v78;
        v103 = [v83 initWithFormat:@"%@ BETWEEN (%@) AND (%@)", v9, v80, v82];

        subCriteria = v81;
        v40 = v78;
        goto LABEL_39;
      case 8:
        v110 = v12;
        v23 = v15;
        v62 = objc_alloc(MEMORY[0x1E696AEC0]);
        v21 = subQuery;
        if (subQuery)
        {
          commandString = [subQuery commandString];
          [self _removeEndingSemicolonFromCommandString:commandString];
          v27 = v26 = subCriteria;
          v102 = [v62 initWithFormat:@"%@ IN (%@)", v9, v27];
LABEL_30:
          v103 = v102;

          subCriteria = v26;
          parameters = [v21 parameters];
          [v23 addObjectsFromArray:parameters];

          v15 = v23;
        }

        else
        {
          v97 = [self _generateCommaSeparatedPlaceholdersString:{objc_msgSend(columnValues, "count")}];
          v103 = [v62 initWithFormat:@"%@ IN (%@)", v9, v97];

          v15 = v23;
          [v23 addObjectsFromArray:columnValues];
        }

LABEL_56:
        v12 = v110;
        if (v103)
        {
LABEL_68:
          v22 = [[CCSQLCommandClause alloc] initWithClause:v103 parameters:v15];
        }

        else
        {
LABEL_57:
          v22 = 0;
        }

LABEL_69:

        break;
      case 9:
        v16 = v15;
        v96 = objc_alloc(MEMORY[0x1E696AEC0]);
        v67 = [self _generateCommaSeparatedPlaceholdersString:1];
        v68 = [v96 initWithFormat:@"%@ LIKE %@", v9, v67];
LABEL_60:
        v103 = v68;

        firstObject3 = [columnValues firstObject];
        [v16 addObject:firstObject3];

        v15 = v16;
        goto LABEL_67;
      case 10:
        v41 = v12;
        v42 = v15;
        v108 = columnValues;
        v110 = v41;
        v104 = v9;
        v105 = clauseCopy;
        v43 = [subCriteria count];
        v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v43];
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        v106 = subCriteria;
        v45 = subCriteria;
        v46 = [v45 countByEnumeratingWithState:&v117 objects:v122 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v118;
          do
          {
            for (i = 0; i != v47; ++i)
            {
              if (*v118 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = [self _produceCriterionClause:*(*(&v117 + 1) + 8 * i) tableName:nameCopy];
              if (v50)
              {
                v51 = objc_alloc(MEMORY[0x1E696AEC0]);
                clause = [v50 clause];
                v53 = [v51 initWithFormat:@"(%@)", clause];
                [v44 addObject:v53];

                parameters2 = [v50 parameters];
                [v42 addObjectsFromArray:parameters2];
              }
            }

            v47 = [v45 countByEnumeratingWithState:&v117 objects:v122 count:16];
          }

          while (v47);
        }

        if (![v44 count])
        {
          goto LABEL_54;
        }

        v55 = @" AND ";
        goto LABEL_51;
      case 11:
        v84 = v12;
        v42 = v15;
        v108 = columnValues;
        v110 = v84;
        v104 = v9;
        v105 = clauseCopy;
        v85 = [subCriteria count];
        v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v85];
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v106 = subCriteria;
        v86 = subCriteria;
        v87 = [v86 countByEnumeratingWithState:&v113 objects:v121 count:16];
        if (v87)
        {
          v88 = v87;
          v89 = *v114;
          do
          {
            for (j = 0; j != v88; ++j)
            {
              if (*v114 != v89)
              {
                objc_enumerationMutation(v86);
              }

              v91 = [self _produceCriterionClause:*(*(&v113 + 1) + 8 * j) tableName:nameCopy];
              if (v91)
              {
                v92 = objc_alloc(MEMORY[0x1E696AEC0]);
                clause2 = [v91 clause];
                v94 = [v92 initWithFormat:@"(%@)", clause2];
                [v44 addObject:v94];

                parameters3 = [v91 parameters];
                [v42 addObjectsFromArray:parameters3];
              }
            }

            v88 = [v86 countByEnumeratingWithState:&v113 objects:v121 count:16];
          }

          while (v88);
        }

        if ([v44 count])
        {
          v55 = @" OR ";
LABEL_51:
          v103 = [v44 componentsJoinedByString:v55];
        }

        else
        {
LABEL_54:
          v103 = 0;
        }

        v9 = v104;
        subCriteria = v106;
        columnValues = v108;
        v21 = subQuery;
        v15 = v42;

        clauseCopy = v105;
        goto LABEL_56;
      case 12:
        v29 = v15;
        v30 = objc_alloc(MEMORY[0x1E696AEC0]);
        v31 = [self _generateCommaSeparatedPlaceholdersString:{objc_msgSend(columnValues, "count")}];
        v101 = v9;
        v103 = v31;
        v32 = @"%@ IS %@";
        goto LABEL_12;
      case 13:
        v29 = v15;
        v30 = objc_alloc(MEMORY[0x1E696AEC0]);
        v31 = [self _generateCommaSeparatedPlaceholdersString:{objc_msgSend(columnValues, "count")}];
        v101 = v9;
        v103 = v31;
        v32 = @"%@ IS NOT %@";
LABEL_12:
        v39 = v30;
        v15 = v29;
        v103 = [v39 initWithFormat:v32, v101, v103];

        v40 = v29;
LABEL_39:
        [v40 addObjectsFromArray:columnValues];
        goto LABEL_67;
      case 14:
        firstObject4 = [subCriteria firstObject];
        if (firstObject4)
        {
          v70 = v12;
          v71 = v15;
          v72 = [self _produceCriterionClause:firstObject4 tableName:nameCopy];
          if (v72)
          {
            v73 = v72;
            v107 = subCriteria;
            v109 = columnValues;
            v74 = objc_alloc(MEMORY[0x1E696AEC0]);
            clause3 = [v73 clause];
            v76 = [v74 initWithFormat:@"(%@)", clause3];

            parameters4 = [v73 parameters];
            [v71 addObjectsFromArray:parameters4];

            if (v76)
            {
              v103 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NOT %@", v76];
            }

            else
            {
              v103 = 0;
            }

            subCriteria = v107;
            columnValues = v109;
          }

          else
          {
            v103 = 0;
          }

          v15 = v71;
          v12 = v70;
        }

        else
        {
          v103 = 0;
        }

LABEL_67:
        v21 = subQuery;
        if (v103)
        {
          goto LABEL_68;
        }

        goto LABEL_57;
      case 15:
        v21 = subQuery;
        if (!subQuery)
        {
          goto LABEL_57;
        }

        v110 = v12;
        v23 = v15;
        v24 = objc_alloc(MEMORY[0x1E696AEC0]);
        commandString = [subQuery commandString];
        [self _removeEndingSemicolonFromCommandString:commandString];
        v27 = v26 = subCriteria;
        v102 = [v24 initWithFormat:@"EXISTS (%@)", v27, v102];
        goto LABEL_30;
      case 16:
        v21 = subQuery;
        if (!subQuery)
        {
          goto LABEL_57;
        }

        v110 = v12;
        v23 = v15;
        v60 = objc_alloc(MEMORY[0x1E696AEC0]);
        commandString = [subQuery commandString];
        [self _removeEndingSemicolonFromCommandString:commandString];
        v27 = v26 = subCriteria;
        v102 = [v60 initWithFormat:@"NOT EXISTS (%@)", v27, v102];
        goto LABEL_30;
      default:
        v22 = 0;
        v21 = subQuery;
        goto LABEL_69;
    }
  }

  else
  {
    v22 = 0;
  }

  v99 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)_generateOrderByClause:(id)clause
{
  clauseCopy = clause;
  v5 = clauseCopy;
  if (!clauseCopy)
  {
    v7 = 0;
    goto LABEL_11;
  }

  orderMode = [clauseCopy orderMode];
  switch(orderMode)
  {
    case 3:
      v12 = objc_alloc(MEMORY[0x1E696AEC0]);
      columnNames = [v5 columnNames];
      v10 = [self _generateCommaSeparatedValuesString:columnNames];
      v11 = [v12 initWithFormat:@"%@ DESC", v10];
      goto LABEL_10;
    case 2:
      v8 = objc_alloc(MEMORY[0x1E696AEC0]);
      columnNames = [v5 columnNames];
      v10 = [self _generateCommaSeparatedValuesString:columnNames];
      v11 = [v8 initWithFormat:@"%@ ASC", v10];
LABEL_10:
      v7 = v11;

      break;
    case 1:
      v7 = @"rank";
      break;
    default:
      v7 = 0;
      break;
  }

LABEL_11:

  return v7;
}

+ (id)_removeEndingSemicolonFromCommandString:(id)string
{
  stringCopy = string;
  if ([stringCopy hasSuffix:@";"])
  {
    v4 = [stringCopy substringToIndex:{objc_msgSend(stringCopy, "length") - 1}];
  }

  else
  {
    v4 = stringCopy;
  }

  v5 = v4;

  return v5;
}

+ (id)_generateCommaSeparatedPlaceholdersString:(unint64_t)string
{
  if (string)
  {
    stringCopy = string;
    if (string == 1)
    {
      v4 = @"?";
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:string];
      do
      {
        [v5 addObject:@"?"];
        --stringCopy;
      }

      while (stringCopy);
      v4 = [v5 componentsJoinedByString:{@", "}];
    }
  }

  else
  {
    v4 = &stru_1F2EBB700;
  }

  return v4;
}

+ (id)_generateCommaSeparatedValuesString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy count];
  if (v4)
  {
    if (v4 == 1)
    {
      [stringCopy objectAtIndex:0];
    }

    else
    {
      [stringCopy componentsJoinedByString:{@", "}];
    }
    v5 = ;
  }

  else
  {
    v5 = &stru_1F2EBB700;
  }

  return v5;
}

+ (void)_produceJoinCriterionClause:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 134217984;
  v5 = [a1 sqlOperator];
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Inavlid join criterion, sql operator not supported for join %ld", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end