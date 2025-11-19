@interface _OSLogStreamFilter
- (NSData)data;
- (_OSLogStreamFilter)initWithPredicate:(id)a3;
- (id)dictionaryForComparisonPredicate:(id)a3;
- (id)encodePredicate:(id)a3;
- (void)addCategory:(id)a3 flags:(unint64_t)a4 returningDict:(id *)a5;
- (void)addProcess:(id)a3 flags:(unint64_t)a4 returningDict:(id *)a5;
- (void)addProcessID:(id)a3 flags:(unint64_t)a4 returningDict:(id *)a5;
- (void)addProcessImagePath:(id)a3 flags:(unint64_t)a4 returningDict:(id *)a5;
- (void)addSubsystem:(id)a3 flags:(unint64_t)a4 returningDict:(id *)a5;
- (void)addUserID:(id)a3 flags:(unint64_t)a4 returningDict:(id *)a5;
- (void)processComparisonPredicate:(id)a3;
- (void)processLeftExpression:(id)a3 andRightExpression:(id)a4 flags:(unint64_t)a5 returningDict:(id *)a6;
- (void)reduceFilter:(id)a3;
- (void)visitPredicate:(id)a3;
@end

@implementation _OSLogStreamFilter

- (void)visitPredicate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_OSLogStreamFilter *)self processComparisonPredicate:v4];
  }
}

- (void)processComparisonPredicate:(id)a3
{
  v4 = a3;
  v7 = [v4 leftExpression];
  v5 = [v4 rightExpression];
  v6 = [(_OSLogStreamFilter *)self flagsForPredicate:v4];

  [(_OSLogStreamFilter *)self processLeftExpression:v7 andRightExpression:v5 flags:v6];
  [(_OSLogStreamFilter *)self processLeftExpression:v5 andRightExpression:v7 flags:v6];
}

- (id)dictionaryForComparisonPredicate:(id)a3
{
  v4 = a3;
  v5 = [v4 leftExpression];
  v6 = [v4 rightExpression];
  v7 = [(_OSLogStreamFilter *)self flagsForPredicate:v4];

  v11 = 0;
  [(_OSLogStreamFilter *)self processLeftExpression:v5 andRightExpression:v6 flags:v7 returningDict:&v11];
  v8 = v11;
  if (!v8)
  {
    v10 = 0;
    [(_OSLogStreamFilter *)self processLeftExpression:v6 andRightExpression:v5 flags:v7 returningDict:&v10];
    v8 = v10;
  }

  return v8;
}

- (void)processLeftExpression:(id)a3 andRightExpression:(id)a4 flags:(unint64_t)a5 returningDict:(id *)a6
{
  v13 = a3;
  v10 = a4;
  if ([v13 expressionType] == 3)
  {
    v11 = [v13 keyPath];
    if (([v11 isEqualToString:@"processID"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"processIdentifier"))
    {
      v12 = [v10 constantValue];
      [(_OSLogStreamFilter *)self addProcessID:v12 flags:a5 returningDict:a6];
    }

    else if ([v11 isEqualToString:@"process"])
    {
      v12 = [v10 constantValue];
      [(_OSLogStreamFilter *)self addProcess:v12 flags:a5 returningDict:a6];
    }

    else if ([v11 isEqualToString:@"processImagePath"])
    {
      v12 = [v10 constantValue];
      [(_OSLogStreamFilter *)self addProcessImagePath:v12 flags:a5 returningDict:a6];
    }

    else if (([v11 isEqualToString:@"userID"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"userIdentifier"))
    {
      v12 = [v10 constantValue];
      [(_OSLogStreamFilter *)self addUserID:v12 flags:a5 returningDict:a6];
    }

    else if ([v11 isEqualToString:@"subsystem"])
    {
      v12 = [v10 constantValue];
      [(_OSLogStreamFilter *)self addSubsystem:v12 flags:a5 returningDict:a6];
    }

    else
    {
      if (![v11 isEqualToString:@"category"])
      {
        goto LABEL_6;
      }

      v12 = [v10 constantValue];
      [(_OSLogStreamFilter *)self addCategory:v12 flags:a5 returningDict:a6];
    }

LABEL_6:
  }
}

- (void)addCategory:(id)a3 flags:(unint64_t)a4 returningDict:(id *)a5
{
  v8 = a3;
  if (a5 | self->_filter)
  {
    v17 = v8;
    if (a5)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      *a5 = v10;
    }

    else
    {
      categories = self->_categories;
      if (!categories)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v13 = self->_categories;
        self->_categories = v12;

        categories = self->_categories;
      }

      v9 = categories;
      v10 = self->_filter;
    }

    [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:@"category"];
    v14 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v17];
    v15 = [v14 unsignedLongLongValue];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15 | a4];
    [(NSMutableDictionary *)v9 setObject:v16 forKeyedSubscript:v17];

    v8 = v17;
  }
}

- (void)addSubsystem:(id)a3 flags:(unint64_t)a4 returningDict:(id *)a5
{
  v8 = a3;
  if (a5 | self->_filter)
  {
    v17 = v8;
    if (a5)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      *a5 = v10;
    }

    else
    {
      subsystems = self->_subsystems;
      if (!subsystems)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v13 = self->_subsystems;
        self->_subsystems = v12;

        subsystems = self->_subsystems;
      }

      v9 = subsystems;
      v10 = self->_filter;
    }

    [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:@"subsystem"];
    v14 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v17];
    v15 = [v14 unsignedLongLongValue];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15 | a4];
    [(NSMutableDictionary *)v9 setObject:v16 forKeyedSubscript:v17];

    v8 = v17;
  }
}

- (void)addUserID:(id)a3 flags:(unint64_t)a4 returningDict:(id *)a5
{
  v8 = a3;
  if (a5 | self->_filter)
  {
    v18 = v8;
    if (a5)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      *a5 = v10;
    }

    else
    {
      uids = self->_uids;
      if (!uids)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v13 = self->_uids;
        self->_uids = v12;

        uids = self->_uids;
      }

      v9 = uids;
      v10 = self->_filter;
    }

    [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:@"uid"];
    v14 = [v18 stringValue];
    v15 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v14];
    v16 = [v15 unsignedLongLongValue];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16 | a4];
    [(NSMutableDictionary *)v9 setObject:v17 forKeyedSubscript:v14];

    v8 = v18;
  }
}

- (void)addProcessImagePath:(id)a3 flags:(unint64_t)a4 returningDict:(id *)a5
{
  v8 = a3;
  if (a5 | self->_filter)
  {
    v17 = v8;
    if (a5)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      *a5 = v10;
    }

    else
    {
      processImagePaths = self->_processImagePaths;
      if (!processImagePaths)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v13 = self->_processImagePaths;
        self->_processImagePaths = v12;

        processImagePaths = self->_processImagePaths;
      }

      v9 = processImagePaths;
      v10 = self->_filter;
    }

    [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:@"processImagePath"];
    v14 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v17];
    v15 = [v14 unsignedLongLongValue];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15 | a4];
    [(NSMutableDictionary *)v9 setObject:v16 forKeyedSubscript:v17];

    v8 = v17;
  }
}

- (void)addProcess:(id)a3 flags:(unint64_t)a4 returningDict:(id *)a5
{
  v8 = a3;
  if (a5 | self->_filter)
  {
    v17 = v8;
    if (a5)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      *a5 = v10;
    }

    else
    {
      processes = self->_processes;
      if (!processes)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v13 = self->_processes;
        self->_processes = v12;

        processes = self->_processes;
      }

      v9 = processes;
      v10 = self->_filter;
    }

    [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:@"process"];
    v14 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v17];
    v15 = [v14 unsignedLongLongValue];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15 | a4];
    [(NSMutableDictionary *)v9 setObject:v16 forKeyedSubscript:v17];

    v8 = v17;
  }
}

- (void)addProcessID:(id)a3 flags:(unint64_t)a4 returningDict:(id *)a5
{
  v8 = a3;
  if (a5 | self->_filter)
  {
    v18 = v8;
    if (a5)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      *a5 = v10;
    }

    else
    {
      pids = self->_pids;
      if (!pids)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v13 = self->_pids;
        self->_pids = v12;

        pids = self->_pids;
      }

      v9 = pids;
      v10 = self->_filter;
    }

    [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:@"pid"];
    v14 = [v18 stringValue];
    v15 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v14];
    v16 = [v15 unsignedLongLongValue];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16 | a4];
    [(NSMutableDictionary *)v9 setObject:v17 forKeyedSubscript:v14];

    v8 = v18;
  }
}

- (NSData)data
{
  filter = self->_filter;
  if (filter)
  {
    filter = [filter count];
    if (filter)
    {
      filter = [MEMORY[0x277CCAC58] dataWithPropertyList:self->_filter format:200 options:0 error:0];
    }
  }

  return filter;
}

- (void)reduceFilter:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"logicalExp"];
  v6 = v5;
  if (v5)
  {
    v61 = v4;
    v62 = v5;
    v7 = [v5 objectForKeyedSubscript:@"subfilters"];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v79 objects:v85 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v80;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v80 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(_OSLogStreamFilter *)self reduceFilter:*(*(&v79 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v79 objects:v85 count:16];
      }

      while (v9);
    }

    if ([v7 count])
    {
      v12 = 0;
      do
      {
        v13 = [v7 objectAtIndexedSubscript:v12];
        v14 = [v13 count];

        if (!v14)
        {
          [v7 removeObjectAtIndex:v12--];
        }

        ++v12;
      }

      while (v12 < [v7 count]);
    }

    v4 = v61;
    v6 = v62;
    if ([v7 count])
    {
      v15 = [v62 objectForKeyedSubscript:@"operator"];
      v65 = v7;
      if (!v15)
      {
        goto LABEL_36;
      }

      v16 = v15;
      v17 = [v15 unsignedIntegerValue];

      if (v17)
      {
        if (v17 == 1)
        {
          if ([v7 count])
          {
            v18 = 0;
            do
            {
              v19 = [v7 objectAtIndexedSubscript:v18];
              v20 = [v19 objectForKeyedSubscript:@"logicalExp"];
              v21 = v20;
              if (v20)
              {
                v22 = [v20 objectForKeyedSubscript:@"operator"];
                if (v22)
                {
                  v23 = v22;
                  v24 = [v22 unsignedIntegerValue];

                  if (v24 == 1)
                  {
                    v25 = [v21 objectForKeyedSubscript:@"subfilters"];
                    [v65 removeObjectAtIndex:v18--];
                    [v65 addObjectsFromArray:v25];
                  }
                }
              }

              ++v18;
              v7 = v65;
            }

            while (v18 < [v65 count]);
          }

          v4 = v61;
          v6 = v62;
          if ([v7 count] != 1)
          {
            goto LABEL_70;
          }

          [v62 setObject:0 forKeyedSubscript:@"operator"];
          goto LABEL_36;
        }
      }

      else
      {
        v26 = [v7 objectAtIndexedSubscript:0];
        v27 = [v26 objectForKeyedSubscript:@"logicalExp"];
        if (!v27)
        {

          v4 = v61;
LABEL_69:
          v6 = v62;
          goto LABEL_70;
        }

        v28 = v27;
        v29 = [v27 objectForKeyedSubscript:@"operator"];
        v17 = v29;
        if (v29)
        {
          v30 = [v29 unsignedIntegerValue];

          if (v30)
          {
            v17 = 0;
          }

          else
          {
            v31 = [v28 objectForKeyedSubscript:@"subfilters"];
            v32 = [v31 objectAtIndexedSubscript:0];
            [v7 removeAllObjects];
            [v7 addObject:v32];
            [v62 setObject:0 forKeyedSubscript:@"operator"];

            v17 = 2;
          }
        }
      }

      v4 = v61;
      v6 = v62;
      if (v17 == 2)
      {
LABEL_36:
        [v6 setObject:0 forKeyedSubscript:@"operator"];
        if ([v7 count])
        {
          v68 = 0;
          v33 = 0;
          do
          {
            v34 = [v7 objectAtIndexedSubscript:v33];
            v35 = [v34 objectForKeyedSubscript:@"logicalExp"];
            if (v35)
            {
              v36 = v35;
              v37 = [v35 objectForKeyedSubscript:@"operator"];
              if (!v37 || (v38 = v37, v39 = v34, v40 = [v37 unsignedIntegerValue], v38, v41 = v40 == 2, v34 = v39, v41))
              {
                v58 = v36;
                v42 = [v36 objectForKeyedSubscript:@"subfilters"];
                [v7 removeObjectAtIndex:v33--];
                [v7 addObjectsFromArray:v42];
              }

              else
              {
                v58 = v36;
              }
            }

            else
            {
              if (v68)
              {
                v63 = v34;
                v64 = v33;
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                obj = v34;
                v67 = [obj countByEnumeratingWithState:&v75 objects:v84 count:16];
                if (v67)
                {
                  v66 = *v76;
                  do
                  {
                    v43 = 0;
                    do
                    {
                      if (*v76 != v66)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v70 = v43;
                      v44 = *(*(&v75 + 1) + 8 * v43);
                      v45 = [obj objectForKeyedSubscript:v44];
                      v46 = [v68 objectForKeyedSubscript:v44];
                      if (!v46)
                      {
                        v46 = objc_opt_new();
                        [v68 setObject:v46 forKeyedSubscript:v44];
                      }

                      v73 = 0u;
                      v74 = 0u;
                      v71 = 0u;
                      v72 = 0u;
                      v47 = v45;
                      v48 = [v47 countByEnumeratingWithState:&v71 objects:v83 count:16];
                      if (v48)
                      {
                        v49 = v48;
                        v50 = *v72;
                        do
                        {
                          for (j = 0; j != v49; ++j)
                          {
                            if (*v72 != v50)
                            {
                              objc_enumerationMutation(v47);
                            }

                            v52 = *(*(&v71 + 1) + 8 * j);
                            v53 = [v47 objectForKeyedSubscript:v52];
                            v54 = [v53 unsignedLongLongValue];

                            v55 = [v46 objectForKeyedSubscript:v52];
                            v56 = [v55 unsignedLongLongValue];

                            v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v56 | v54];
                            [v46 setObject:v57 forKeyedSubscript:v52];
                          }

                          v49 = [v47 countByEnumeratingWithState:&v71 objects:v83 count:16];
                        }

                        while (v49);
                      }

                      v43 = v70 + 1;
                    }

                    while (v70 + 1 != v67);
                    v67 = [obj countByEnumeratingWithState:&v75 objects:v84 count:16];
                  }

                  while (v67);
                }

                v7 = v65;
                [v65 removeObjectAtIndex:v64];
                v33 = v64 - 1;
                v34 = v63;
              }

              else
              {
                v68 = v34;
              }

              v58 = 0;
            }

            ++v33;
          }

          while (v33 < [v7 count]);
        }

        else
        {
          v68 = 0;
        }

        v4 = v61;
        if ([v7 count] == 1)
        {
          v59 = [v7 objectAtIndexedSubscript:0];
          [v61 removeAllObjects];
          [v61 addEntriesFromDictionary:v59];
        }

        goto LABEL_69;
      }
    }

    else
    {
      [v61 setObject:0 forKeyedSubscript:@"logicalExp"];
    }

LABEL_70:
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (id)encodePredicate:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_OSLogStreamFilter *)self dictionaryForComparisonPredicate:v4];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v5 setObject:v6 forKeyedSubscript:@"logicalExp"];
      v7 = v4;
      if ([v7 compoundPredicateType] != 2)
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "compoundPredicateType")}];
        [v6 setObject:v8 forKeyedSubscript:@"operator"];
      }

      v9 = MEMORY[0x277CBEB18];
      v10 = [v7 subpredicates];
      v11 = [v9 arrayWithCapacity:{objc_msgSend(v10, "count")}];

      v20 = v6;
      [v6 setObject:v11 forKeyedSubscript:@"subfilters"];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = [v7 subpredicates];
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [(_OSLogStreamFilter *)self encodePredicate:*(*(&v21 + 1) + 8 * i)];
            if (v17)
            {
              [v11 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v14);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (_OSLogStreamFilter)initWithPredicate:(id)a3
{
  v4 = a3;
  v5 = getenv("LOG_USE_STREAMFILTER");
  if (v5 && *v5 == 48 && !v5[1])
  {
    v15 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_2841B92A0];
    v7 = [MEMORY[0x277CBEB98] setWithArray:&unk_2841B92B8];
    v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_2841B92D0];
    v17.receiver = self;
    v17.super_class = _OSLogStreamFilter;
    v9 = [(_OSLogStreamFilter *)&v17 init];
    if (v9)
    {
      v10 = _OSLogGetSimplePredicate(v4, v6, v7, v8);
      if (requiresLogicalExpression(v10))
      {
        v11 = [(_OSLogStreamFilter *)v9 encodePredicate:v10];
        filter = v9->_filter;
        v9->_filter = v11;

        [(_OSLogStreamFilter *)v9 reduceFilter:v9->_filter];
      }

      else
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v14 = v9->_filter;
        v9->_filter = v13;

        [v10 acceptVisitor:v9 flags:0];
      }
    }

    self = v9;

    v15 = self;
  }

  return v15;
}

@end