@interface ML3DatabaseStatementRenderer
+ (id)defaultRenderer;
- (id)beginTransactionStatementWithBehaviorType:(unint64_t)type;
- (id)insertStatementForTableName:(id)name columnNames:(id)names;
- (id)insertStatementUsingDefaultValuesForTableName:(id)name;
- (id)insertStatementWithOptions:(id)options;
- (id)rollbackTransactionStatementToSavepointName:(id)name;
- (id)savepointReleaseStatementWithName:(id)name;
- (id)savepointStatementWithName:(id)name;
- (id)statementWithPrefix:(id)prefix inParameterCount:(unint64_t)count;
- (id)statementWithPrefix:(id)prefix inParameterCount:(unint64_t)count valueCount:(unint64_t)valueCount;
@end

@implementation ML3DatabaseStatementRenderer

+ (id)defaultRenderer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ML3DatabaseStatementRenderer_defaultRenderer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultRenderer___once != -1)
  {
    dispatch_once(&defaultRenderer___once, block);
  }

  v2 = defaultRenderer_defaultRenderer;

  return v2;
}

uint64_t __47__ML3DatabaseStatementRenderer_defaultRenderer__block_invoke()
{
  defaultRenderer_defaultRenderer = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (id)statementWithPrefix:(id)prefix inParameterCount:(unint64_t)count valueCount:(unint64_t)valueCount
{
  v6 = 2 * count - 1;
  prefixCopy = prefix;
  v8 = [&stru_28408B690 stringByPaddingToLength:v6 withString:@" startingAtIndex:{?", 1}];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@", (%@)", v8];

  v10 = [v9 length] * valueCount - 2;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v9];
  v12 = [&stru_28408B690 stringByPaddingToLength:v10 withString:v11 startingAtIndex:2];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", prefixCopy, v12];

  return v13;
}

- (id)statementWithPrefix:(id)prefix inParameterCount:(unint64_t)count
{
  v4 = 2 * count - 1;
  prefixCopy = prefix;
  v6 = [&stru_28408B690 stringByPaddingToLength:v4 withString:@" startingAtIndex:{?", 1}];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ IN (%@)", prefixCopy, v6];

  return v7;
}

- (id)insertStatementWithOptions:(id)options
{
  v50 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v6 = [optionsCopy objectForKeyedSubscript:@"ML3DatabaseInsertStatementOptionTableNameKey"];
  if (!v6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseStatementRenderer+Insertions.m" lineNumber:46 description:@"Must specify a table name to render insertion statement."];
  }

  v7 = [optionsCopy objectForKeyedSubscript:@"ML3DatabaseInsertStatementOptionFailureOptionKey"];

  if (v7)
  {
    v8 = [optionsCopy objectForKeyedSubscript:@"ML3DatabaseInsertStatementOptionFailureOptionKey"];
    unsignedIntegerValue = [v8 unsignedIntegerValue];

    if ((unsignedIntegerValue - 1) > 4)
    {
      v10 = @"FAIL";
    }

    else
    {
      v10 = off_2787654E0[unsignedIntegerValue - 1];
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT OR %@", v10];
  }

  else
  {
    v11 = @"INSERT";
  }

  v12 = [optionsCopy objectForKeyedSubscript:@"ML3DatabaseInsertStatementOptionDatabaseNameKey"];

  v13 = MEMORY[0x277CCACA8];
  if (v12)
  {
    v14 = [optionsCopy objectForKeyedSubscript:@"ML3DatabaseInsertStatementOptionDatabaseNameKey"];
    v15 = [v13 stringWithFormat:@"INTO %@.%@", v14, v6];
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"INTO %@", v6];
  }

  v16 = [optionsCopy objectForKeyedSubscript:@"ML3DatabaseInsertStatementOptionColumnNamesKey"];
  v17 = [optionsCopy objectForKeyedSubscript:@"ML3DatabaseInsertStatementOptionValuesKey"];
  v44 = v17;
  if (v16 | v17)
  {
    v18 = v17;
    if (v16)
    {
      v19 = [v16 componentsJoinedByString:{@", "}];
      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v19];

      if (v18)
      {
        v20 = [v16 count];
        if (v20 != [v18 count])
        {
          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"ML3DatabaseStatementRenderer+Insertions.m" lineNumber:108 description:@"Number of column names provided doesn't match the number of values provided."];
        }

        goto LABEL_19;
      }
    }

    else
    {
      v43 = 0;
      if (v17)
      {
LABEL_19:
        v39 = v16;
        v40 = v15;
        v41 = v11;
        v42 = v6;
        v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v18, "count")}];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v24 = v18;
        v25 = [v24 countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (!v25)
        {
          goto LABEL_31;
        }

        v26 = v25;
        v27 = *v46;
        while (1)
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v46 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v45 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              stringValue = [v29 stringValue];
            }

            else
            {
              objc_opt_class();
              v31 = @"NULL";
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_29;
              }

              stringValue = v29;
            }

            v31 = stringValue;
LABEL_29:
            [v23 addObject:v31];
          }

          v26 = [v24 countByEnumeratingWithState:&v45 objects:v49 count:16];
          if (!v26)
          {
LABEL_31:

            v32 = [v23 componentsJoinedByString:{@", "}];

            v6 = v42;
            v15 = v40;
            v11 = v41;
            v16 = v39;
            goto LABEL_33;
          }
        }
      }
    }

    v32 = [&stru_28408B690 stringByPaddingToLength:2 * objc_msgSend(v16 withString:"count") - 1 startingAtIndex:{@", ?", 1}];
LABEL_33:
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"VALUES (%@)", v32];
    v34 = v33;
    if (v43)
    {
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v43, v33];
    }

    else
    {
      v35 = v33;
    }

    v22 = v35;
  }

  else
  {
    v22 = @"DEFAULT VALUES";
  }

  v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", v11, v15, v22];

  return v36;
}

- (id)insertStatementUsingDefaultValuesForTableName:(id)name
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"ML3DatabaseInsertStatementOptionTableNameKey";
  v10[0] = name;
  v4 = MEMORY[0x277CBEAC0];
  nameCopy = name;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(ML3DatabaseStatementRenderer *)self insertStatementWithOptions:v6];

  return v7;
}

- (id)insertStatementForTableName:(id)name columnNames:(id)names
{
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  namesCopy = names;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(namesCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = namesCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@":%@", *(*(&v18 + 1) + 8 * i)];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v11);
  }

  v22[0] = @"ML3DatabaseInsertStatementOptionTableNameKey";
  v22[1] = @"ML3DatabaseInsertStatementOptionColumnNamesKey";
  v23[0] = nameCopy;
  v23[1] = v9;
  v22[2] = @"ML3DatabaseInsertStatementOptionValuesKey";
  v23[2] = v8;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v16 = [(ML3DatabaseStatementRenderer *)self insertStatementWithOptions:v15];

  return v16;
}

- (id)savepointReleaseStatementWithName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseStatementRenderer+Transactions.m" lineNumber:71 description:@"Must specify a savepoint name."];
  }

  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"RELEASE SAVEPOINT %@", nameCopy];

  return nameCopy;
}

- (id)savepointStatementWithName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseStatementRenderer+Transactions.m" lineNumber:64 description:@"Must specify a savepoint name."];
  }

  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"SAVEPOINT %@", nameCopy];

  return nameCopy;
}

- (id)rollbackTransactionStatementToSavepointName:(id)name
{
  if (name)
  {
    name = [MEMORY[0x277CCACA8] stringWithFormat:@"ROLLBACK TRANSACTION TO SAVEPOINT %@", name];
  }

  else
  {
    name = @"ROLLBACK TRANSACTION";
  }

  return name;
}

- (id)beginTransactionStatementWithBehaviorType:(unint64_t)type
{
  if (type > 2)
  {
    v4 = @"BEGIN TRANSACTION";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"BEGIN %@ TRANSACTION", off_278765508[type]];
  }

  return v4;
}

@end