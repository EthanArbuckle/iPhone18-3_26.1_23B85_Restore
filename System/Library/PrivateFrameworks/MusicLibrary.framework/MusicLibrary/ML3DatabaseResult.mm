@interface ML3DatabaseResult
- (BOOL)hasAtLeastOneRow;
- (ML3DatabaseResult)init;
- (ML3DatabaseResult)initWithStatement:(id)statement connection:(id)connection;
- (id)columnNameIndexMap;
- (id)objectForFirstRowAndColumn;
- (id)objectsInColumn:(unint64_t)column;
- (id)rows;
- (id)stringValueForFirstRowAndColumn;
- (int64_t)int64ValueForFirstRowAndColumn;
- (unint64_t)indexForColumnName:(id)name;
- (void)enumerateRowsWithBlock:(id)block;
- (void)setLimitProperty:(id)property;
- (void)setLimitProperty:(id)property limitValue:(int64_t)value;
@end

@implementation ML3DatabaseResult

void __47__ML3DatabaseResult_objectForFirstRowAndColumn__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (!a3)
  {
    v6 = [a2 objectAtIndexedSubscript:?];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  *a4 = 1;
}

- (id)objectForFirstRowAndColumn
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__23316;
  v9 = __Block_byref_object_dispose__23317;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__ML3DatabaseResult_objectForFirstRowAndColumn__block_invoke;
  v4[3] = &unk_2787653C8;
  v4[4] = &v5;
  [(ML3DatabaseResult *)self enumerateRowsWithBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (int64_t)int64ValueForFirstRowAndColumn
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__ML3DatabaseResult_int64ValueForFirstRowAndColumn__block_invoke;
  v4[3] = &unk_2787653C8;
  v4[4] = &v5;
  [(ML3DatabaseResult *)self enumerateRowsWithBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __51__ML3DatabaseResult_int64ValueForFirstRowAndColumn__block_invoke(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (!a3)
  {
    v5 = result;
    result = [a2 int64ForColumnIndex:?];
    *(*(*(v5 + 32) + 8) + 24) = result;
  }

  *a4 = 1;
  return result;
}

- (BOOL)hasAtLeastOneRow
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__ML3DatabaseResult_hasAtLeastOneRow__block_invoke;
  v4[3] = &unk_2787653C8;
  v4[4] = &v5;
  [(ML3DatabaseResult *)self enumerateRowsWithBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)objectsInColumn:(unint64_t)column
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__23316;
  v12 = __Block_byref_object_dispose__23317;
  array = [MEMORY[0x277CBEB18] array];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ML3DatabaseResult_objectsInColumn___block_invoke;
  v7[3] = &unk_2787653F0;
  v7[4] = &v8;
  v7[5] = column;
  [(ML3DatabaseResult *)self enumerateRowsWithBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __37__ML3DatabaseResult_objectsInColumn___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    *a4 = 1;
  }

  else
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = [a2 objectAtIndexedSubscript:*(a1 + 40)];
    v8 = v6;
    if (v6)
    {
      [v5 addObject:v6];
    }

    else
    {
      v7 = [MEMORY[0x277CBEB68] null];
      [v5 addObject:v7];
    }
  }
}

- (id)stringValueForFirstRowAndColumn
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__23316;
  v9 = __Block_byref_object_dispose__23317;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__ML3DatabaseResult_stringValueForFirstRowAndColumn__block_invoke;
  v4[3] = &unk_2787653C8;
  v4[4] = &v5;
  [(ML3DatabaseResult *)self enumerateRowsWithBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __52__ML3DatabaseResult_stringValueForFirstRowAndColumn__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (!a3)
  {
    v6 = [a2 stringForColumnIndex:?];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  *a4 = 1;
}

uint64_t __37__ML3DatabaseResult_hasAtLeastOneRow__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a2 && !a3)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  *a4 = 1;
  return result;
}

- (id)rows
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __25__ML3DatabaseResult_rows__block_invoke;
  v6[3] = &unk_278766118;
  v4 = v3;
  v7 = v4;
  [(ML3DatabaseResult *)self enumerateRowsWithBlock:v6];

  return v4;
}

void __25__ML3DatabaseResult_rows__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3DatabaseCachedRow alloc];
  v5 = [v3 arrayRepresentation];

  v6 = [(ML3DatabaseCachedRow *)v4 initWithArray:v5];
  [*(a1 + 32) addObject:v6];
}

- (void)enumerateRowsWithBlock:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  statement = self->_statement;
  if (!statement)
  {
    goto LABEL_35;
  }

  sqliteStatement = [(ML3DatabaseStatement *)statement sqliteStatement];
  v23 = [[ML3DatabaseRow alloc] initWithParentResult:self];
  v7 = self->_connection;
  v24 = 0;
  [(ML3DatabaseConnection *)v7 _ensureConnectionIsOpen];
  [(ML3DatabaseStatement *)self->_statement setIsExecuting:1];
  v22 = 0;
  v21 = 0;
  while (1)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = sqlite3_step(sqliteStatement);
    v24 = 0;
    if (v9 > 0x19u)
    {
      break;
    }

    if (v9 <= 0xAu)
    {
      if (v9 - 5 < 2)
      {
        v13 = v9;
        if ([(ML3DatabaseConnection *)v7 _handleBusyLockWithNumberOfRetries:v22])
        {
          sqliteError = [(ML3DatabaseConnection *)v7 sqliteError];
          v18 = _ML3LogCategoryDefault();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = "locked";
            *buf = 136315650;
            if (v13 == 5)
            {
              v19 = "busy";
            }

            v26 = v19;
            v27 = 1024;
            *v28 = v22;
            *&v28[4] = 2114;
            *&v28[6] = sqliteError;
            _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_DEFAULT, "(enumerateRowsWithBlock:) SQLite was %s after %u retries. %{public}@", buf, 0x1Cu);
          }

          goto LABEL_30;
        }

        ++v22;
        objc_autoreleasePoolPop(v8);
      }

      else
      {
        if (v9)
        {
          if (v9 != 10)
          {
LABEL_25:
            sqliteError = [(ML3DatabaseConnection *)v7 sqliteError];
            goto LABEL_26;
          }

          sqliteError = ML3DatabaseCreateDiskIOError();
LABEL_29:
          blockCopy[2](blockCopy, 0, sqliteError, &v24);
          goto LABEL_30;
        }

LABEL_18:
        if (self->_limitProperty)
        {
          v21 += sqlite3_column_int64(sqliteStatement, self->_limitIndex);
          if (v21 > self->_limitValue)
          {
            goto LABEL_40;
          }
        }

        (blockCopy)[2](blockCopy, v23, 0, &v24);
        v12 = v24;
        objc_autoreleasePoolPop(v8);
        if (v12)
        {
          sqliteError = 0;
          goto LABEL_31;
        }
      }
    }

    else
    {
      if (v9 != 11)
      {
        goto LABEL_25;
      }

LABEL_8:
      if ([(ML3DatabaseConnection *)v7 _alreadyAttemptedCorruptionRecovery])
      {
        goto LABEL_24;
      }

      v10 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "Attempting corruption recovery using disk IO recovery routine", buf, 2u);
      }

      _handleDiskIOError = [(ML3DatabaseConnection *)v7 _handleDiskIOError];
      [(ML3DatabaseConnection *)v7 _setAlreadyAttemptedCorruptionRecovery:1];
      if (!_handleDiskIOError)
      {
LABEL_24:
        sqliteError = ML3DatabaseCreateCorruptionError();
        [(ML3DatabaseConnection *)v7 _handleDatabaseCorruption];
        if (!sqliteError)
        {
          goto LABEL_25;
        }

LABEL_26:
        v14 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = objc_opt_class();
          v16 = self->_statement;
          *buf = 138543874;
          v26 = v15;
          v27 = 2114;
          *v28 = v16;
          *&v28[8] = 2114;
          *&v28[10] = sqliteError;
          v17 = v15;
          _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error while enumerating rows for statement %{public}@. %{public}@", buf, 0x20u);
        }

        goto LABEL_29;
      }

      [(ML3DatabaseStatement *)self->_statement reset];
      objc_autoreleasePoolPop(v8);
    }
  }

  if (v9 == 26)
  {
    goto LABEL_8;
  }

  if (v9 != 101)
  {
    if (v9 != 100)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  if ([(ML3DatabaseStatement *)self->_statement clearBindingsAfterRunning])
  {
    [(ML3DatabaseStatement *)self->_statement clearBindings];
  }

LABEL_40:
  sqliteError = 0;
LABEL_30:
  objc_autoreleasePoolPop(v8);
LABEL_31:
  [(ML3DatabaseStatement *)self->_statement setIsExecuting:0];
  if ([sqliteError code] == 500)
  {
    [(ML3DatabaseConnection *)v7 _handleDiskIOError];
  }

  else
  {
    [(ML3DatabaseStatement *)self->_statement reset];
  }

LABEL_35:
}

- (id)columnNameIndexMap
{
  columnNameIndexMap = self->_columnNameIndexMap;
  if (!columnNameIndexMap)
  {
    v4 = sqlite3_column_count([(ML3DatabaseStatement *)self->_statement sqliteStatement]);
    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v4];
    if (v4 >= 1)
    {
      v6 = 0;
      do
      {
        v7 = sqlite3_column_name([(ML3DatabaseStatement *)self->_statement sqliteStatement], v6);
        v8 = [MEMORY[0x277CCABB0] numberWithInt:v6];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
        [(NSDictionary *)v5 setObject:v8 forKeyedSubscript:v9];

        v6 = (v6 + 1);
      }

      while (v4 != v6);
    }

    v10 = self->_columnNameIndexMap;
    self->_columnNameIndexMap = v5;

    columnNameIndexMap = self->_columnNameIndexMap;
  }

  return columnNameIndexMap;
}

- (unint64_t)indexForColumnName:(id)name
{
  nameCopy = name;
  columnNameIndexMap = [(ML3DatabaseResult *)self columnNameIndexMap];
  v6 = [columnNameIndexMap objectForKeyedSubscript:nameCopy];

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)setLimitProperty:(id)property limitValue:(int64_t)value
{
  [(ML3DatabaseResult *)self setLimitProperty:property];

  [(ML3DatabaseResult *)self setLimitValue:value];
}

- (void)setLimitProperty:(id)property
{
  v4 = [property copy];
  limitProperty = self->_limitProperty;
  self->_limitProperty = v4;

  pathExtension = [(NSString *)self->_limitProperty pathExtension];
  self->_limitIndex = [(ML3DatabaseResult *)self indexForColumnName:pathExtension];
}

- (ML3DatabaseResult)initWithStatement:(id)statement connection:(id)connection
{
  statementCopy = statement;
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = ML3DatabaseResult;
  v9 = [(ML3DatabaseResult *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_statement, statement);
    objc_storeStrong(&v10->_connection, connection);
    columnNameIndexMap = v10->_columnNameIndexMap;
    v10->_columnNameIndexMap = 0;
  }

  return v10;
}

- (ML3DatabaseResult)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"-[%@ init] is unsupported. Use -[%@ initWithStatement:] instead.", v4, v4}];

  return 0;
}

@end