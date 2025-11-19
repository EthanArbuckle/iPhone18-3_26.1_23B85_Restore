@interface FedStatsSQLiteCategoryDatabase
+ (FedStatsSQLiteCategoryDatabase)databaseWithFileURL:(id)a3 minIndex:(unint64_t)a4 maxIndex:(unint64_t)a5 checkForPrimaryKey:(BOOL)a6 error:(id *)a7;
+ (id)categoryDatabaseAt:(id)a3 withCategories:(id)a4 tableName:(id)a5 categoryColumnName:(id)a6 indexColumnName:(id)a7 error:(id *)a8;
- (FedStatsSQLiteCategoryDatabase)initWithSQLiteDatabase:(id)a3 tableName:(id)a4 categoryColumnName:(id)a5 indexColumnName:(id)a6 minIndex:(unint64_t)a7 maxIndex:(unint64_t)a8;
- (id)decode:(unint64_t)a3 error:(id *)a4;
- (id)encode:(id)a3 error:(id *)a4;
- (id)encodeCategories:(id)a3 error:(id *)a4;
@end

@implementation FedStatsSQLiteCategoryDatabase

- (FedStatsSQLiteCategoryDatabase)initWithSQLiteDatabase:(id)a3 tableName:(id)a4 categoryColumnName:(id)a5 indexColumnName:(id)a6 minIndex:(unint64_t)a7 maxIndex:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v22.receiver = self;
  v22.super_class = FedStatsSQLiteCategoryDatabase;
  v18 = [(FedStatsSQLiteCategoryDatabase *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sqliteDB, a3);
    objc_storeStrong(&v19->_tableName, a4);
    objc_storeStrong(&v19->_categoryColumnName, a5);
    objc_storeStrong(&v19->_indexColumnName, a6);
    v19->_minIndex = a7;
    v19->_maxIndex = a8;
  }

  return v19;
}

+ (FedStatsSQLiteCategoryDatabase)databaseWithFileURL:(id)a3 minIndex:(unint64_t)a4 maxIndex:(unint64_t)a5 checkForPrimaryKey:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v12 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v85 = 0;
    v13 = [FedStatsSQLiteDatabase databaseWithURL:v12 mode:114 error:&v85];
    v14 = v85;
    if (!v13)
    {
      if (a7)
      {
        v37 = [FedStatsError errorWithCode:302 underlyingError:v14 description:@"Cannot open database"];
LABEL_23:
        v36 = 0;
        *a7 = v37;
LABEL_25:

        goto LABEL_26;
      }

LABEL_24:
      v36 = 0;
      goto LABEL_25;
    }

    v80 = a4;
    v15 = MEMORY[0x277CCACA8];
    v16 = v13;
    v17 = [v15 stringWithFormat:@"SELECT COUNT(*) AS %@ FROM SQLITE_MASTER WHERE type == 'table'", @"tableCount"];
    v86 = 0;
    v18 = [v16 runQuery:v17 error:&v86];

    if (v18)
    {
      v79 = a5;
      v19 = [v18 next];
      if (v19)
      {
        v20 = v19;
        v78 = a1;
        v21 = [v19 objectForKey:@"tableCount"];
        if (v21)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v77 = v13;
            v22 = [v21 unsignedIntegerValue];

            v23 = v22 == 1;
            v13 = v77;
            if (!v23)
            {
LABEL_21:
              if (a7)
              {
                v37 = [FedStatsError errorWithCode:302 description:@"Database does not have exactly one table"];
                goto LABEL_23;
              }

              goto LABEL_24;
            }

            v24 = MEMORY[0x277CCACA8];
            v25 = v16;
            v26 = [v24 stringWithFormat:@"SELECT %@ FROM SQLITE_MASTER WHERE type == 'table'", @"name"];
            v86 = 0;
            v27 = [v25 runQuery:v26 error:&v86];

            v28 = v86;
            if (v27)
            {
              v75 = v25;
              v29 = [v27 next];
              v30 = v29;
              v74 = v26;
              if (v29)
              {
                v31 = [v29 objectForKey:@"name"];
                v32 = v31;
                v33 = v28;
                if (v31)
                {
                  v34 = v31;
                  v35 = v14;
                }

                else
                {
                  v35 = [FedStatsError errorWithCode:302 underlyingError:v28 description:@"Cannot lookup table name"];
                  v43 = v35;
                }

                v42 = v32;
              }

              else
              {
                v33 = v28;
                v35 = [FedStatsError errorWithCode:302 underlyingError:v28 description:@"Cannot check query result"];
                v41 = v35;
                v42 = 0;
              }

              v40 = v42;
              v26 = v74;
              v25 = v75;
            }

            else
            {
              [FedStatsError errorWithCode:302 underlyingError:v28 description:@"Cannot query database"];
              v35 = v33 = v28;
              v39 = v35;
              v40 = 0;
            }

            v44 = v35;
            v45 = v40;
            if (!v40)
            {
              if (a7)
              {
                [FedStatsError errorWithCode:302 underlyingError:v44 description:@"Cannot get table name from database"];
                *a7 = v36 = 0;
              }

              else
              {
                v36 = 0;
              }

              v13 = v77;
              goto LABEL_79;
            }

            v46 = MEMORY[0x277CCACA8];
            v47 = v25;
            v48 = [v46 stringWithFormat:@"SELECT COUNT(*) AS %@ FROM PRAGMA_TABLE_XINFO('%@')", @"columnCount", v45];
            v86 = 0;
            v49 = [v47 runQuery:v48 error:&v86];

            if (!v49)
            {

              v13 = v77;
              goto LABEL_63;
            }

            v50 = v44;
            v51 = [v49 next];
            v13 = v77;
            if (v51)
            {
              v52 = v51;
              v76 = v45;
              v53 = [v51 objectForKey:@"columnCount"];
              if (v53)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v54 = [v53 unsignedIntegerValue];

                  v23 = v54 == 2;
                  v45 = v76;
                  v13 = v77;
                  v44 = v50;
                  if (!v23)
                  {
LABEL_63:
                    if (a7)
                    {
                      v73 = @"Database table does not have exactly two columns";
LABEL_65:
                      [FedStatsError errorWithCode:302 description:v73];
                      *a7 = v36 = 0;
LABEL_79:

                      v14 = v44;
                      goto LABEL_25;
                    }

                    goto LABEL_78;
                  }

                  if (!v8)
                  {
                    goto LABEL_48;
                  }

                  v55 = MEMORY[0x277CCACA8];
                  v56 = v47;
                  v57 = [v55 stringWithFormat:@"SELECT COUNT(*) AS %@ FROM PRAGMA_INDEX_LIST('%@') AS indices, PRAGMA_INDEX_XINFO(indices.name) AS index_info WHERE indices.origin == 'pk' AND index_info.key == 1", @"indexColumnCount", v76];;
                  v86 = 0;
                  v58 = [v56 runQuery:v57 error:&v86];

                  if (v58)
                  {
                    v59 = [v58 next];
                    if (v59)
                    {
                      v60 = v59;
                      v61 = [v59 objectForKey:@"indexColumnCount"];
                      if (v61)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v62 = [v61 unsignedIntegerValue];

                          v23 = v62 == 2;
                          v45 = v76;
                          v13 = v77;
                          v44 = v50;
                          if (!v23)
                          {
LABEL_76:
                            if (a7)
                            {
                              v73 = @"Database table does not have primary key with the two columns";
                              goto LABEL_65;
                            }

LABEL_78:
                            v36 = 0;
                            goto LABEL_79;
                          }

LABEL_48:
                          v84 = v44;
                          v63 = getColumnName(v47, v45, @"TEXT", &v84);
                          v64 = v84;

                          if (!v63)
                          {
                            if (a7)
                            {
                              [FedStatsError errorWithCode:302 underlyingError:v64 description:@"Cannot get text-typed column name from table"];
                              *a7 = v36 = 0;
                            }

                            else
                            {
                              v36 = 0;
                            }

                            goto LABEL_87;
                          }

                          v83 = v64;
                          v65 = getColumnName(v47, v45, @"INTEGER", &v83);
                          v66 = v83;

                          v67 = v65;
                          if (v65)
                          {
                            v68 = v79;
                            if (v80 == 0x7FFFFFFFFFFFFFFFLL)
                            {
                              v69 = 1;
                            }

                            else
                            {
                              v69 = v80;
                            }

                            if (v79 == 0x7FFFFFFFFFFFFFFFLL)
                            {
                              v81 = v67;
                              v82 = v66;
                              v70 = getColumnMaxValue(v47, v45, v67, &v82);
                              v71 = v82;

                              if (!v70)
                              {
                                if (a7)
                                {
                                  [FedStatsError errorWithCode:302 underlyingError:v71 description:@"Cannot get number of rows from database"];
                                  *a7 = v36 = 0;
                                }

                                else
                                {
                                  v36 = 0;
                                }

                                v66 = v71;
                                v45 = v76;
                                v13 = v77;
                                v67 = v81;
                                goto LABEL_86;
                              }

                              v72 = [v70 unsignedIntegerValue];

                              v68 = v72;
                              v66 = v71;
                              v67 = v81;
                            }

                            v36 = [[v78 alloc] initWithSQLiteDatabase:v47 tableName:v45 categoryColumnName:v63 indexColumnName:v67 minIndex:v69 maxIndex:v68];
                          }

                          else if (a7)
                          {
                            [FedStatsError errorWithCode:302 underlyingError:v66 description:@"Cannot get text-typed column name from table"];
                            *a7 = v36 = 0;
                          }

                          else
                          {
                            v36 = 0;
                          }

LABEL_86:

                          v64 = v66;
LABEL_87:

                          v44 = v64;
                          goto LABEL_79;
                        }
                      }

                      v45 = v76;
                      v13 = v77;
LABEL_75:
                      v44 = v50;
                      goto LABEL_76;
                    }
                  }

                  v13 = v77;
                  goto LABEL_75;
                }
              }

              v45 = v76;
            }

            else
            {
            }

            v44 = v50;
            goto LABEL_63;
          }
        }
      }
    }

    goto LABEL_21;
  }

  if (a7)
  {
    [FedStatsError errorWithCode:302 description:@"SQLite categories database requires a path in URL"];
    *a7 = v36 = 0;
  }

  else
  {
    v36 = 0;
  }

LABEL_26:

  return v36;
}

- (id)encode:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [(FedStatsSQLiteCategoryDatabase *)self indexColumnName];
    v9 = [(FedStatsSQLiteCategoryDatabase *)self tableName];
    v10 = [(FedStatsSQLiteCategoryDatabase *)self categoryColumnName];
    v11 = [v7 stringWithFormat:@"SELECT %@ FROM '%@' WHERE %@ == %@ ORDER BY RANDOM() LIMIT 1", v8, v9, v10, v6];

    v12 = [(FedStatsSQLiteCategoryDatabase *)self sqliteDB];
    v20 = 0;
    v13 = [v12 runQuery:v11 error:&v20];
    v14 = v20;

    if (v13)
    {
      v15 = [v13 next];
      if (v15)
      {
        v16 = [(FedStatsSQLiteCategoryDatabase *)self indexColumnName];
        v17 = [v15 objectForKey:v16];

        if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "unsignedIntegerValue") - -[FedStatsSQLiteCategoryDatabase minIndex](self, "minIndex") + 1}];
        }

        else if (a4)
        {
          [FedStatsError errorWithCode:900 description:@"Database columns are malformed"];
          *a4 = v18 = 0;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = &unk_285E12DB8;
      }
    }

    else if (a4)
    {
      [FedStatsError errorWithCode:401 underlyingError:v14 description:@"Failed to lookup category in the database"];
      *a4 = v18 = 0;
    }

    else
    {
      v18 = 0;
    }
  }

  else if (a4)
  {
    [FedStatsError errorWithCode:401 description:@"Input category should be a string"];
    *a4 = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)encodeCategories:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v38;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", *(*(&v37 + 1) + 8 * i)];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v10);
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = [v7 componentsJoinedByString:{@", "}];
  v16 = [v14 stringWithFormat:@"(%@)", v15];

  v17 = MEMORY[0x277CCACA8];
  v18 = [(FedStatsSQLiteCategoryDatabase *)self tableName];
  v19 = [(FedStatsSQLiteCategoryDatabase *)self categoryColumnName];
  v20 = [v17 stringWithFormat:@"SELECT * FROM '%@' WHERE %@ in %@", v18, v19, v16];

  v21 = [(FedStatsSQLiteCategoryDatabase *)self sqliteDB];
  v36 = 0;
  v22 = [v21 runQuery:v20 error:&v36];
  v23 = v36;

  if (v22)
  {
    v24 = [MEMORY[0x277CBEB38] dictionary];
    v25 = [v22 next];
    if (v25)
    {
      v26 = v25;
      v34 = v23;
      v35 = v16;
      do
      {
        v27 = [(FedStatsSQLiteCategoryDatabase *)self indexColumnName];
        v28 = [v26 objectForKey:v27];

        v29 = [(FedStatsSQLiteCategoryDatabase *)self categoryColumnName];
        v30 = [v26 objectForKey:v29];

        [v24 setObject:v28 forKeyedSubscript:v30];
        v31 = [v22 next];

        v26 = v31;
      }

      while (v31);
      v23 = v34;
      v16 = v35;
    }
  }

  else if (a4)
  {
    [FedStatsError errorWithCode:401 underlyingError:v23 description:@"Failed to lookup categories in the database"];
    *a4 = v24 = 0;
  }

  else
  {
    v24 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)decode:(unint64_t)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = [(FedStatsSQLiteCategoryDatabase *)self categoryColumnName:a3];
  v8 = [(FedStatsSQLiteCategoryDatabase *)self tableName];
  v9 = [(FedStatsSQLiteCategoryDatabase *)self indexColumnName];
  v10 = [v6 stringWithFormat:@"SELECT %@ FROM '%@' WHERE %@ == %lu ORDER BY RANDOM() LIMIT 1", v7, v8, v9, a3];

  v11 = [(FedStatsSQLiteCategoryDatabase *)self sqliteDB];
  v18 = 0;
  v12 = [v11 runQuery:v10 error:&v18];

  if (v12)
  {
    v13 = [v12 next];
    if (v13)
    {
      v14 = [(FedStatsSQLiteCategoryDatabase *)self categoryColumnName];
      v15 = [v13 objectForKey:v14];

      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = @"FedStatsCategoricalDataOutOfBounds";
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)categoryDatabaseAt:(id)a3 withCategories:(id)a4 tableName:(id)a5 categoryColumnName:(id)a6 indexColumnName:(id)a7 error:(id *)a8
{
  v50 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a8)
    {
LABEL_23:
      [FedStatsError errorWithCode:302 description:v35];
      *a8 = v34 = 0;
      goto LABEL_32;
    }

LABEL_31:
    v34 = 0;
    goto LABEL_32;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a8)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

  v39 = v17;
  v40 = v16;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v18 = v14;
  v19 = [v18 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v46;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v45 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a8)
            *a8 = {;
          }

          v34 = 0;
          goto LABEL_27;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v44 = 0;
  v24 = [FedStatsSQLiteDatabase databaseWithURL:v13 mode:119 error:&v44];
  v25 = v44;
  if (!v24)
  {
    v17 = v39;
    v16 = v40;
    if (a8)
    {
      *a8 = [FedStatsError errorWithCode:302 underlyingError:v25 description:@"Cannot create new database"];
    }

    goto LABEL_31;
  }

  v17 = v39;
  v16 = v40;
  v42 = v15;
  [MEMORY[0x277CCACA8] stringWithFormat:@"CREATE TABLE '%@' ('%@' INTEGER, '%@' TEXT, PRIMARY KEY('%@', '%@')) WITHOUT ROWID", v15, v39, v40, v39, v40];
  v38 = v43[1] = v25;
  v26 = [v24 execute:? error:?];
  v27 = v25;

  if (v26)
  {
    v41 = v24;
    v28 = 0;
    v29 = 1;
    do
    {
      if (v29 - 1 >= [v18 count])
      {

        v34 = +[FedStatsSQLiteCategoryDatabase databaseWithFileURL:minIndex:maxIndex:checkForPrimaryKey:error:](FedStatsSQLiteCategoryDatabase, "databaseWithFileURL:minIndex:maxIndex:checkForPrimaryKey:error:", v13, 1, [v18 count], 1, a8);
        goto LABEL_39;
      }

      v30 = MEMORY[0x277CCACA8];
      v31 = [v18 objectAtIndex:v29 - 1];
      v32 = [v30 stringWithFormat:@"INSERT INTO '%@' VALUES (%lu, %@)", v42, v29, v31];

      v43[0] = v27;
      LOBYTE(v31) = [v41 execute:v32 error:v43];
      v33 = v43[0];

      ++v29;
      v27 = v33;
      v28 = v32;
    }

    while ((v31 & 1) != 0);
    if (a8)
    {
      *a8 = [FedStatsError errorWithCode:302 underlyingError:v33 description:@"Cannot insert elements into the table"];
    }

    v34 = 0;
LABEL_39:
    v15 = v42;
LABEL_27:
    v17 = v39;
    v16 = v40;
  }

  else
  {
    if (a8)
      *a8 = {;
    }

    v34 = 0;
    v15 = v42;
  }

LABEL_32:

  v36 = *MEMORY[0x277D85DE8];

  return v34;
}

@end