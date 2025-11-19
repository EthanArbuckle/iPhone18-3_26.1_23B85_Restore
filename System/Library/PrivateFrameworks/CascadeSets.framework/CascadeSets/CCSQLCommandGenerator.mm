@interface CCSQLCommandGenerator
+ (id)_generateCommaSeparatedPlaceholdersString:(unint64_t)a3;
+ (id)_generateCommaSeparatedValuesString:(id)a3;
+ (id)_generateJoinClause:(id)a3;
+ (id)_generateOrderByClause:(id)a3;
+ (id)_produceCriterionClause:(id)a3 tableName:(id)a4;
+ (id)_produceJoinCriterionClause:(id)a3;
+ (id)_produceSelectClauseWithTableName:(id)a3 columnNames:(id)a4 count:(BOOL)a5;
+ (id)_produceSetValuesClauseForColumnNames:(id)a3 columnValues:(id)a4;
+ (id)_removeEndingSemicolonFromCommandString:(id)a3;
+ (id)deleteFromTableWithName:(id)a3 criterion:(id)a4 returningColumns:(id)a5;
+ (id)insertCommandStringWithTableName:(id)a3 columnNames:(id)a4 returningColumns:(id)a5 onConflict:(id)a6;
+ (id)prefixColumnName:(id)a3 withTableName:(id)a4;
+ (id)updateWithTableName:(id)a3 columnNames:(id)a4 columnValues:(id)a5 criterion:(id)a6 returningColumns:(id)a7;
+ (void)addLimit:(id)a3 offset:(id)a4 forSelect:(id)a5;
+ (void)replaceOffset:(id)a3 forSelect:(id)a4;
- (CCSQLCommandGenerator)init;
@end

@implementation CCSQLCommandGenerator

- (CCSQLCommandGenerator)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

+ (void)addLimit:(id)a3 offset:(id)a4 forSelect:(id)a5
{
  v15 = a5;
  v7 = a4;
  v8 = a3;
  v9 = [v15 commandString];
  v10 = [v9 mutableCopy];

  v11 = [v15 parameters];
  v12 = [v11 mutableCopy];

  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@" LIMIT %@", @"?"];
  [v10 insertString:v13 atIndex:{objc_msgSend(v10, "length") - 1}];
  [v12 addObject:v8];

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@" OFFSET %@", @"?"];
  [v10 insertString:v14 atIndex:{objc_msgSend(v10, "length") - 1}];
  [v12 addObject:v7];

  [v15 replaceParameters:v12];
  [v15 updateCommandString:v10];
}

+ (void)replaceOffset:(id)a3 forSelect:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 parameters];
  v8 = [v7 mutableCopy];

  [v8 replaceObjectAtIndex:objc_msgSend(v8 withObject:{"count") - 1, v6}];
  [v5 updateParameters:v8];
}

+ (id)deleteFromTableWithName:(id)a3 criterion:(id)a4 returningColumns:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x1E696AEC0];
  v10 = a4;
  v11 = a3;
  v12 = [[v9 alloc] initWithFormat:@"DELETE FROM %@", v11];
  v13 = [a1 _produceCriterionClause:v10 tableName:v11];

  if (v13)
  {
    v14 = [v13 clause];
    v15 = [v12 stringByAppendingFormat:@" WHERE %@", v14];

    v12 = v15;
  }

  if ([v8 count])
  {
    v16 = [v8 componentsJoinedByString:{@", "}];
    v17 = [v12 stringByAppendingFormat:@" RETURNING %@", v16];

    v12 = v17;
  }

  v18 = [v12 stringByAppendingString:@""];;

  v19 = [CCDatabaseDelete alloc];
  v20 = [v13 parameters];
  v21 = [(CCDatabaseCommand *)v19 initWithCommandString:v18 parameters:v20];

  return v21;
}

+ (id)updateWithTableName:(id)a3 columnNames:(id)a4 columnValues:(id)a5 criterion:(id)a6 returningColumns:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = MEMORY[0x1E696AEC0];
  v16 = a5;
  v17 = a4;
  v18 = [[v15 alloc] initWithFormat:@"UPDATE %@", v12];
  v19 = [a1 _produceSetValuesClauseForColumnNames:v17 columnValues:v16];

  if (v19)
  {
    v20 = [v19 clause];
    v21 = [v18 stringByAppendingFormat:@" SET %@", v20];

    v18 = v21;
  }

  v22 = [a1 _produceCriterionClause:v13 tableName:v12];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 clause];
    v25 = [v18 stringByAppendingFormat:@" WHERE %@", v24];

    v18 = v25;
  }

  if ([v14 count])
  {
    v26 = [v14 componentsJoinedByString:{@", "}];
    v27 = [v18 stringByAppendingFormat:@" RETURNING %@", v26];

    v18 = v27;
  }

  v28 = [v18 stringByAppendingString:@""];;

  v29 = [v19 parameters];
  v30 = [v29 count];
  v31 = [v23 parameters];
  v32 = [v31 count];

  v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:v32 + v30];
  v34 = [v19 parameters];
  [v33 addObjectsFromArray:v34];

  v35 = [v23 parameters];
  [v33 addObjectsFromArray:v35];

  v36 = [(CCDatabaseCommand *)[CCDatabaseUpdate alloc] initWithCommandString:v28 parameters:v33];

  return v36;
}

+ (id)insertCommandStringWithTableName:(id)a3 columnNames:(id)a4 returningColumns:(id)a5 onConflict:(id)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [a6 type];
  if ((v13 - 1) > 2)
  {
    v14 = @"INSERT INTO %@ (%@) VALUES (%@)";
  }

  else
  {
    v14 = off_1E7C8B3A8[v13 - 1];
  }

  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = [v11 componentsJoinedByString:{@", "}];
  v17 = [v11 count];

  v18 = [a1 _generateCommaSeparatedPlaceholdersString:v17];
  v19 = [v15 initWithFormat:v14, v12, v16, v18];

  if ([v10 count])
  {
    v20 = [v10 componentsJoinedByString:{@", "}];
    v21 = [v19 stringByAppendingFormat:@" RETURNING %@", v20];

    v19 = v21;
  }

  v22 = [v19 stringByAppendingString:@""];;

  return v22;
}

+ (id)_produceSetValuesClauseForColumnNames:(id)a3 columnValues:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8 && (v9 = v8, [v7 count] == v8))
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
    v11 = objc_opt_new();
    if ([v6 count])
    {
      v12 = 0;
      do
      {
        v13 = objc_alloc(MEMORY[0x1E696AEC0]);
        v14 = [v6 objectAtIndex:v12];
        v15 = [a1 _generateCommaSeparatedPlaceholdersString:1];
        v16 = [v13 initWithFormat:@"%@ = %@", v14, v15];
        [v10 addObject:v16];

        v17 = [v7 objectAtIndex:v12];
        [v11 addObject:v17];

        ++v12;
      }

      while (v12 < [v6 count]);
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

+ (id)_produceSelectClauseWithTableName:(id)a3 columnNames:(id)a4 count:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v5)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT COUNT(*) FROM %@", v8];
  }

  else
  {
    v11 = MEMORY[0x1E696AEC0];
    if (v9)
    {
      v12 = [a1 _generateCommaSeparatedValuesString:v9];
      v13 = [v11 stringWithFormat:@"SELECT %@ FROM %@", v12, v8];

      goto LABEL_7;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT * FROM %@", v8];
  }
  v13 = ;
LABEL_7:

  return v13;
}

+ (id)_generateJoinClause:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 joinType])
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
          v11 = [v10 joinCriterion];
          v12 = [a1 _produceJoinCriterionClause:v11];

          v13 = [v5 joinType];
          if ((v13 - 1) <= 3)
          {
            v27 = off_1E7C8B3C0[v13 - 1];
            v14 = objc_alloc(MEMORY[0x1E696AEC0]);
            v15 = [v10 table];
            [v12 clause];
            v16 = v7;
            v17 = v8;
            v18 = a1;
            v20 = v19 = v5;
            v21 = [v14 initWithFormat:v27, v15, v20];

            v5 = v19;
            a1 = v18;
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

+ (id)prefixColumnName:(id)a3 withTableName:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", a4, v5];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

+ (id)_produceJoinCriterionClause:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 subCriteria];
  v6 = [v4 sqlOperator];
  if (v6 > 0x10)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  if (((1 << v6) & 0x1FBFD) != 0)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CCSQLCommandGenerator *)v4 _produceJoinCriterionClause:v7];
    }

    goto LABEL_6;
  }

  if (v6 == 1)
  {
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = [v4 columnName];
    v14 = [v4 tableName];
    v15 = [a1 prefixColumnName:v13 withTableName:v14];
    v16 = [v4 comparingColumnName];
    v17 = [v4 comparingTableName];
    v18 = [a1 prefixColumnName:v16 withTableName:v17];
    v8 = [v12 initWithFormat:@"%@ = %@", v15, v18];
  }

  else
  {
    v31 = v4;
    v19 = [v5 count];
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v19];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v30 = v5;
    v21 = v5;
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

          v26 = [a1 _produceJoinCriterionClause:*(*(&v32 + 1) + 8 * i)];
          if (v26)
          {
            v27 = objc_alloc(MEMORY[0x1E696AEC0]);
            v28 = [v26 clause];
            v29 = [v27 initWithFormat:@"(%@)", v28];
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

    v4 = v31;

    v5 = v30;
  }

LABEL_7:
  v9 = [[CCSQLCommandClause alloc] initWithClause:v8 parameters:0];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_produceCriterionClause:(id)a3 tableName:(id)a4
{
  v123 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v112 = a4;
  if (v6)
  {
    v7 = [v6 columnName];
    v8 = [v6 tableName];
    v9 = [a1 prefixColumnName:v7 withTableName:v8];

    v10 = [v6 comparingColumnName];
    v11 = [v6 comparingTableName];
    v12 = [a1 prefixColumnName:v10 withTableName:v11];

    v13 = [v6 columnValues];
    v14 = [v6 subCriteria];
    v111 = [v6 subQuery];
    v15 = objc_opt_new();
    switch([v6 sqlOperator])
    {
      case 1:
        v16 = v15;
        v17 = [v6 comparingColumnName];

        v18 = objc_alloc(MEMORY[0x1E696AEC0]);
        v19 = v18;
        if (!v17)
        {
          v67 = [a1 _generateCommaSeparatedPlaceholdersString:1];
          v68 = [v19 initWithFormat:@"%@ = %@", v9, v67];
          goto LABEL_60;
        }

        v20 = [v18 initWithFormat:@"%@ = %@", v9, v12];
        v21 = v111;
        v15 = v16;
        if (v20)
        {
          goto LABEL_68;
        }

        goto LABEL_57;
      case 2:
        v64 = objc_alloc(MEMORY[0x1E696AEC0]);
        [a1 _generateCommaSeparatedPlaceholdersString:1];
        v58 = v57 = v15;
        v59 = [v64 initWithFormat:@"%@ < %@", v9, v58];
        goto LABEL_32;
      case 3:
        v56 = objc_alloc(MEMORY[0x1E696AEC0]);
        [a1 _generateCommaSeparatedPlaceholdersString:1];
        v58 = v57 = v15;
        v59 = [v56 initWithFormat:@"%@ <= %@", v9, v58];
        goto LABEL_32;
      case 4:
        v61 = objc_alloc(MEMORY[0x1E696AEC0]);
        [a1 _generateCommaSeparatedPlaceholdersString:1];
        v58 = v57 = v15;
        v59 = [v61 initWithFormat:@"%@ >= %@", v9, v58];
LABEL_32:
        v20 = v59;

        v15 = v57;
        v65 = [v13 firstObject];
        [v57 addObject:v65];

        goto LABEL_67;
      case 5:
        v33 = v15;
        v34 = objc_alloc(MEMORY[0x1E696AEC0]);
        v35 = [a1 _generateCommaSeparatedPlaceholdersString:1];
        v20 = [v34 initWithFormat:@"%@ MATCH %@", v112, v35];

        v36 = MEMORY[0x1E696AEC0];
        v37 = [v13 firstObject];
        v38 = [v36 stringWithFormat:@"%@ : %@", v9, v37];

        [v33 addObject:v38];
        v15 = v33;
        goto LABEL_67;
      case 6:
        v16 = v15;
        v66 = objc_alloc(MEMORY[0x1E696AEC0]);
        v67 = [a1 _generateCommaSeparatedPlaceholdersString:1];
        v68 = [v66 initWithFormat:@"%@ != %@", v9, v67];
        goto LABEL_60;
      case 7:
        v78 = v15;
        v79 = objc_alloc(MEMORY[0x1E696AEC0]);
        v80 = [a1 _generateCommaSeparatedPlaceholdersString:1];
        [a1 _generateCommaSeparatedPlaceholdersString:1];
        v82 = v81 = v14;
        v83 = v79;
        v15 = v78;
        v20 = [v83 initWithFormat:@"%@ BETWEEN (%@) AND (%@)", v9, v80, v82];

        v14 = v81;
        v40 = v78;
        goto LABEL_39;
      case 8:
        v110 = v12;
        v23 = v15;
        v62 = objc_alloc(MEMORY[0x1E696AEC0]);
        v21 = v111;
        if (v111)
        {
          v25 = [v111 commandString];
          [a1 _removeEndingSemicolonFromCommandString:v25];
          v27 = v26 = v14;
          v28 = [v62 initWithFormat:@"%@ IN (%@)", v9, v27];
LABEL_30:
          v20 = v28;

          v14 = v26;
          v63 = [v21 parameters];
          [v23 addObjectsFromArray:v63];

          v15 = v23;
        }

        else
        {
          v97 = [a1 _generateCommaSeparatedPlaceholdersString:{objc_msgSend(v13, "count")}];
          v20 = [v62 initWithFormat:@"%@ IN (%@)", v9, v97];

          v15 = v23;
          [v23 addObjectsFromArray:v13];
        }

LABEL_56:
        v12 = v110;
        if (v20)
        {
LABEL_68:
          v22 = [[CCSQLCommandClause alloc] initWithClause:v20 parameters:v15];
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
        v67 = [a1 _generateCommaSeparatedPlaceholdersString:1];
        v68 = [v96 initWithFormat:@"%@ LIKE %@", v9, v67];
LABEL_60:
        v20 = v68;

        v98 = [v13 firstObject];
        [v16 addObject:v98];

        v15 = v16;
        goto LABEL_67;
      case 10:
        v41 = v12;
        v42 = v15;
        v108 = v13;
        v110 = v41;
        v104 = v9;
        v105 = v6;
        v43 = [v14 count];
        v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v43];
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        v106 = v14;
        v45 = v14;
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

              v50 = [a1 _produceCriterionClause:*(*(&v117 + 1) + 8 * i) tableName:v112];
              if (v50)
              {
                v51 = objc_alloc(MEMORY[0x1E696AEC0]);
                v52 = [v50 clause];
                v53 = [v51 initWithFormat:@"(%@)", v52];
                [v44 addObject:v53];

                v54 = [v50 parameters];
                [v42 addObjectsFromArray:v54];
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
        v108 = v13;
        v110 = v84;
        v104 = v9;
        v105 = v6;
        v85 = [v14 count];
        v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v85];
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v106 = v14;
        v86 = v14;
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

              v91 = [a1 _produceCriterionClause:*(*(&v113 + 1) + 8 * j) tableName:v112];
              if (v91)
              {
                v92 = objc_alloc(MEMORY[0x1E696AEC0]);
                v93 = [v91 clause];
                v94 = [v92 initWithFormat:@"(%@)", v93];
                [v44 addObject:v94];

                v95 = [v91 parameters];
                [v42 addObjectsFromArray:v95];
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
          v20 = [v44 componentsJoinedByString:v55];
        }

        else
        {
LABEL_54:
          v20 = 0;
        }

        v9 = v104;
        v14 = v106;
        v13 = v108;
        v21 = v111;
        v15 = v42;

        v6 = v105;
        goto LABEL_56;
      case 12:
        v29 = v15;
        v30 = objc_alloc(MEMORY[0x1E696AEC0]);
        v31 = [a1 _generateCommaSeparatedPlaceholdersString:{objc_msgSend(v13, "count")}];
        v101 = v9;
        v103 = v31;
        v32 = @"%@ IS %@";
        goto LABEL_12;
      case 13:
        v29 = v15;
        v30 = objc_alloc(MEMORY[0x1E696AEC0]);
        v31 = [a1 _generateCommaSeparatedPlaceholdersString:{objc_msgSend(v13, "count")}];
        v101 = v9;
        v103 = v31;
        v32 = @"%@ IS NOT %@";
LABEL_12:
        v39 = v30;
        v15 = v29;
        v20 = [v39 initWithFormat:v32, v101, v103];

        v40 = v29;
LABEL_39:
        [v40 addObjectsFromArray:v13];
        goto LABEL_67;
      case 14:
        v69 = [v14 firstObject];
        if (v69)
        {
          v70 = v12;
          v71 = v15;
          v72 = [a1 _produceCriterionClause:v69 tableName:v112];
          if (v72)
          {
            v73 = v72;
            v107 = v14;
            v109 = v13;
            v74 = objc_alloc(MEMORY[0x1E696AEC0]);
            v75 = [v73 clause];
            v76 = [v74 initWithFormat:@"(%@)", v75];

            v77 = [v73 parameters];
            [v71 addObjectsFromArray:v77];

            if (v76)
            {
              v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NOT %@", v76];
            }

            else
            {
              v20 = 0;
            }

            v14 = v107;
            v13 = v109;
          }

          else
          {
            v20 = 0;
          }

          v15 = v71;
          v12 = v70;
        }

        else
        {
          v20 = 0;
        }

LABEL_67:
        v21 = v111;
        if (v20)
        {
          goto LABEL_68;
        }

        goto LABEL_57;
      case 15:
        v21 = v111;
        if (!v111)
        {
          goto LABEL_57;
        }

        v110 = v12;
        v23 = v15;
        v24 = objc_alloc(MEMORY[0x1E696AEC0]);
        v25 = [v111 commandString];
        [a1 _removeEndingSemicolonFromCommandString:v25];
        v27 = v26 = v14;
        v28 = [v24 initWithFormat:@"EXISTS (%@)", v27, v102];
        goto LABEL_30;
      case 16:
        v21 = v111;
        if (!v111)
        {
          goto LABEL_57;
        }

        v110 = v12;
        v23 = v15;
        v60 = objc_alloc(MEMORY[0x1E696AEC0]);
        v25 = [v111 commandString];
        [a1 _removeEndingSemicolonFromCommandString:v25];
        v27 = v26 = v14;
        v28 = [v60 initWithFormat:@"NOT EXISTS (%@)", v27, v102];
        goto LABEL_30;
      default:
        v22 = 0;
        v21 = v111;
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

+ (id)_generateOrderByClause:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v6 = [v4 orderMode];
  switch(v6)
  {
    case 3:
      v12 = objc_alloc(MEMORY[0x1E696AEC0]);
      v9 = [v5 columnNames];
      v10 = [a1 _generateCommaSeparatedValuesString:v9];
      v11 = [v12 initWithFormat:@"%@ DESC", v10];
      goto LABEL_10;
    case 2:
      v8 = objc_alloc(MEMORY[0x1E696AEC0]);
      v9 = [v5 columnNames];
      v10 = [a1 _generateCommaSeparatedValuesString:v9];
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

+ (id)_removeEndingSemicolonFromCommandString:(id)a3
{
  v3 = a3;
  if ([v3 hasSuffix:@";"])
  {
    v4 = [v3 substringToIndex:{objc_msgSend(v3, "length") - 1}];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

+ (id)_generateCommaSeparatedPlaceholdersString:(unint64_t)a3
{
  if (a3)
  {
    v3 = a3;
    if (a3 == 1)
    {
      v4 = @"?";
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
      do
      {
        [v5 addObject:@"?"];
        --v3;
      }

      while (v3);
      v4 = [v5 componentsJoinedByString:{@", "}];
    }
  }

  else
  {
    v4 = &stru_1F2EBB700;
  }

  return v4;
}

+ (id)_generateCommaSeparatedValuesString:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4)
  {
    if (v4 == 1)
    {
      [v3 objectAtIndex:0];
    }

    else
    {
      [v3 componentsJoinedByString:{@", "}];
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