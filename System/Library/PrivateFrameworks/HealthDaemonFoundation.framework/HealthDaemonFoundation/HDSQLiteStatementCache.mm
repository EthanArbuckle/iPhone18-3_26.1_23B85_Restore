@interface HDSQLiteStatementCache
- (HDSQLiteStatementCache)init;
- (HDSQLiteStatementCache)initWithDatabase:(sqlite3 *)database;
- (NSSet)allStatmentSQLStrings;
- (char)_statementStorage;
- (const)_cachedStatementForKey:(BOOL *)key active:;
- (const)_cachedStatementForSQL:(BOOL *)l active:;
- (int64_t)count;
- (sqlite3_stmt)_prepareStatementForSQL:(void *)l error:;
- (sqlite3_stmt)checkOutCachedStatementForKey:(const char *)key SQLGenerator:(id)generator error:(id *)error;
- (sqlite3_stmt)checkOutStatementForSQL:(id)l shouldCache:(BOOL)cache error:(id *)error;
- (void)_activateStatement:(char)statement cached:;
- (void)_assertNoActiveStatements;
- (void)_clearTransactionStorage;
- (void)_setCachedStatement:(const void *)statement forKey:;
- (void)_setCachedStatement:forSQL:;
- (void)beginTransaction;
- (void)checkInStatement:(sqlite3_stmt *)statement;
- (void)clearCachedStatements;
- (void)dealloc;
- (void)endTransaction;
@end

@implementation HDSQLiteStatementCache

- (void)beginTransaction
{
  OUTLINED_FUNCTION_2_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"_inTransaction == NO" object:? file:? lineNumber:? description:?];
}

- (char)_statementStorage
{
  if (self)
  {
    selfCopy = self;
    if (self[48] == 1)
    {
      v4 = (self + 24);
      v3 = *(self + 3);
      if (v3)
      {
LABEL_7:
        self = v3;
        v1 = vars8;
        goto LABEL_8;
      }

      v5 = [[_HDSQLiteStatementCacheStorage alloc] initWithParentStorage:?];
      v6 = *(selfCopy + 3);
      *(selfCopy + 3) = v5;
    }

    else
    {
      v4 = (self + 16);
    }

    v3 = *v4;
    goto LABEL_7;
  }

LABEL_8:

  return self;
}

- (void)endTransaction
{
  if (!self->_inTransaction)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    OUTLINED_FUNCTION_1();
    [v4 handleFailureInMethod:@"_inTransaction" object:? file:? lineNumber:? description:?];
  }

  [(HDSQLiteStatementCache *)self _assertNoActiveStatements];
  self->_inTransaction = 0;

  [(HDSQLiteStatementCache *)self _clearTransactionStorage];
}

- (void)_assertNoActiveStatements
{
  if (self)
  {
    CFSetApplyFunction(*(self + 32), logActiveStatement, 0);
    if (CFSetGetCount(*(self + 32)))
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      OUTLINED_FUNCTION_1();
      [v3 handleFailureInMethod:@"CFSetGetCount(_activeStatements) == 0" object:? file:? lineNumber:? description:?];
    }

    if (CFSetGetCount(*(self + 40)))
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      OUTLINED_FUNCTION_1();
      [v4 handleFailureInMethod:@"CFSetGetCount(_uncachedActiveStatements) == 0" object:? file:? lineNumber:? description:?];
    }
  }
}

- (void)_clearTransactionStorage
{
  if (self)
  {
    v2 = *(self + 24);
    if (v2)
    {
      CFDictionaryRemoveAllValues(*(v2 + 16));
      CFDictionaryRemoveAllValues(*(v2 + 24));
      v3 = *(self + 24);
      *(self + 24) = 0;
    }
  }
}

- (HDSQLiteStatementCache)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDSQLiteStatementCache)initWithDatabase:(sqlite3 *)database
{
  v9.receiver = self;
  v9.super_class = HDSQLiteStatementCache;
  v4 = [(HDSQLiteStatementCache *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_db = database;
    v6 = objc_alloc_init(_HDSQLiteStatementCacheStorage);
    defaultStatementStorage = v5->_defaultStatementStorage;
    v5->_defaultStatementStorage = v6;

    v5->_activeStatements = CFSetCreateMutable(0, 0, 0);
    v5->_uncachedActiveStatements = CFSetCreateMutable(0, 0, 0);
  }

  return v5;
}

- (void)dealloc
{
  [(HDSQLiteStatementCache *)self _assertNoActiveStatements];
  [(HDSQLiteStatementCache *)self clearCachedStatements];
  uncachedActiveStatements = self->_uncachedActiveStatements;
  if (uncachedActiveStatements)
  {
    CFRelease(uncachedActiveStatements);
    self->_uncachedActiveStatements = 0;
  }

  activeStatements = self->_activeStatements;
  if (activeStatements)
  {
    CFRelease(activeStatements);
    self->_activeStatements = 0;
  }

  v5.receiver = self;
  v5.super_class = HDSQLiteStatementCache;
  [(HDSQLiteStatementCache *)&v5 dealloc];
}

- (NSSet)allStatmentSQLStrings
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  allStatementSQLStrings = [(_HDSQLiteStatementCacheStorage *)&self->_defaultStatementStorage->super.isa allStatementSQLStrings];
  [v3 addObjectsFromArray:allStatementSQLStrings];

  transactionStatementStorage = self->_transactionStatementStorage;
  if (transactionStatementStorage)
  {
    allStatementSQLStrings2 = [(_HDSQLiteStatementCacheStorage *)&transactionStatementStorage->super.isa allStatementSQLStrings];
    [v3 addObjectsFromArray:allStatementSQLStrings2];
  }

  v6 = [v3 copy];

  return v6;
}

- (sqlite3_stmt)checkOutStatementForSQL:(id)l shouldCache:(BOOL)cache error:(id *)error
{
  lCopy = l;
  v13 = 0;
  v9 = [(HDSQLiteStatementCache *)self _cachedStatementForSQL:lCopy active:&v13];
  v10 = cache && !v13;
  if (!v9 || (v11 = v9, v13))
  {
    v11 = [(HDSQLiteStatementCache *)self _prepareStatementForSQL:lCopy error:error];
    if (((v11 != 0) & v10) == 1)
    {
      [HDSQLiteStatementCache _setCachedStatement:forSQL:];
    }
  }

  [(HDSQLiteStatementCache *)self _activateStatement:v11 cached:v10];

  return v11;
}

- (void)_activateStatement:(char)statement cached:
{
  if (self)
  {
    if (value)
    {
      CFSetAddValue(*(self + 32), value);
      if ((statement & 1) == 0)
      {
        v6 = *(self + 40);

        CFSetAddValue(v6, value);
      }
    }
  }
}

- (sqlite3_stmt)checkOutCachedStatementForKey:(const char *)key SQLGenerator:(id)generator error:(id *)error
{
  generatorCopy = generator;
  v14 = 0;
  v9 = [(HDSQLiteStatementCache *)self _cachedStatementForKey:key active:&v14];
  if (!v9 || (v10 = v14))
  {
    v13 = generatorCopy[2](generatorCopy);
    v11 = [(HDSQLiteStatementCache *)self _prepareStatementForSQL:v13 error:error];

    v10 = v14;
    if (v11 && !v14)
    {
      [(HDSQLiteStatementCache *)self _setCachedStatement:v11 forKey:key];
      v10 = v14;
    }
  }

  else
  {
    v11 = v9;
  }

  [(HDSQLiteStatementCache *)self _activateStatement:v11 cached:!v10];

  return v11;
}

- (void)checkInStatement:(sqlite3_stmt *)statement
{
  if (!CFSetContainsValue(self->_activeStatements, statement))
  {
    [HDSQLiteStatementCache checkInStatement:];
  }

  CFSetRemoveValue(self->_activeStatements, statement);
  if (CFSetContainsValue(self->_uncachedActiveStatements, statement))
  {
    CFSetRemoveValue(self->_uncachedActiveStatements, statement);

    sqlite3_finalize(statement);
  }

  else
  {
    sqlite3_clear_bindings(statement);

    sqlite3_reset(statement);
  }
}

- (int64_t)count
{
  defaultStatementStorage = self->_defaultStatementStorage;
  if (defaultStatementStorage)
  {
    v4 = [(__CFDictionary *)defaultStatementStorage->_statementsBySQL count];
    v5 = [(__CFDictionary *)defaultStatementStorage->_statementsByKey count]+ v4;
  }

  else
  {
    v5 = 0;
  }

  transactionStatementStorage = self->_transactionStatementStorage;
  if (transactionStatementStorage)
  {
    v7 = [(__CFDictionary *)transactionStatementStorage->_statementsBySQL count];
    v8 = [(__CFDictionary *)transactionStatementStorage->_statementsByKey count]+ v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 + v5;
}

- (const)_cachedStatementForSQL:(BOOL *)l active:
{
  v5 = a2;
  if (self)
  {
    _statementStorage = [(HDSQLiteStatementCache *)self _statementStorage];
    v7 = [(_HDSQLiteStatementCacheStorage *)_statementStorage statementForSQL:v5];

    if (l)
    {
      *l = CFSetContainsValue(*(self + 32), v7) != 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (sqlite3_stmt)_prepareStatementForSQL:(void *)l error:
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    ppStmt = 0;
    v6 = objc_autoreleasePoolPush();
    v7 = [v5 length];
    if (v7 >= 0x7FFFFFFF)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HDSQLiteStatementCache _prepareStatementForSQL:error:]"];
      v34 = NSStringFromSelector(sel__prepareStatementForSQL_error_);
      [currentHandler handleFailureInFunction:v33 file:@"HDSQLiteStatementCache.m" lineNumber:170 description:{@"NSString passed to %@ (%lu bytes) is larger than maximum allowed SQLite statement string (%lu bytes)", v34, v7, 0x7FFFFFFFLL}];
    }

    v8 = MEMORY[0x277CCC2A0];
    while (1)
    {
      *pzTail = 0;
      v9 = sqlite3_prepare_v2(*(self + 8), [v5 UTF8String], v7, &ppStmt, pzTail);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      if ((v9 - 5) >= 2)
      {
        ++*(self + 56);
        v11 = sqlite3_errmsg(*(self + 8));
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: [%d, %s]", v5, sqlite3_extended_errcode(*(self + 8)), v11];
        v13 = HDSQLiteErrorFromDatabase(*(self + 8), 0, v12);
        v14 = HDSQLiteDatabaseErrorFromSQLiteError(v13);

        if (v10 == 1)
        {
          _HKInitializeLogging();
          v16 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_FAULT))
          {
            *pzTail = 138543362;
            *&pzTail[4] = v12;
            _os_log_fault_impl(&dword_25156C000, v16, OS_LOG_TYPE_FAULT, "Could not prepare statement: %{public}@", pzTail, 0xCu);
          }
        }

        else if (v10 == 9)
        {
          hk_transactionInterruptedError = [MEMORY[0x277CCA9B8] hk_transactionInterruptedError];

          v14 = hk_transactionInterruptedError;
        }

        else
        {
          _HKInitializeLogging();
          v17 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
          {
            *pzTail = 138543362;
            *&pzTail[4] = v12;
            _os_log_error_impl(&dword_25156C000, v17, OS_LOG_TYPE_ERROR, "Could not prepare statement: %{public}@", pzTail, 0xCu);
          }
        }

        ppStmt = 0;

        goto LABEL_19;
      }
    }

    if (*pzTail && **pzTail)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:sel__prepareStatementForSQL_error_ object:self file:@"HDSQLiteStatementCache.m" lineNumber:180 description:{@"SQL strings must contain only a single statement; remaining statements will not be executed: %s", *pzTail}];
    }

    v14 = 0;
    ++*(self + 56);
LABEL_19:
    objc_autoreleasePoolPop(v6);
    v18 = ppStmt;
    if (!(ppStmt | v14))
    {
      hk_trimWhitespaceAndNewlines = [v5 hk_trimWhitespaceAndNewlines];
      v20 = [hk_trimWhitespaceAndNewlines length];

      if (v20)
      {
        _HKInitializeLogging();
        v21 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_FAULT))
        {
          *pzTail = 138543362;
          *&pzTail[4] = v5;
          _os_log_fault_impl(&dword_25156C000, v21, OS_LOG_TYPE_FAULT, "Attempted to prepare SQL statement %{public}@, but could not and no error code was set", pzTail, 0xCu);
        }

        v22 = MEMORY[0x277CCA9B8];
        v37 = *MEMORY[0x277CCA450];
        v38 = @"Unknown error during sqlite3_prepare_v2";
        v23 = MEMORY[0x277CBEAC0];
        v24 = &v38;
        v25 = &v37;
      }

      else
      {
        v22 = MEMORY[0x277CCA9B8];
        v39 = *MEMORY[0x277CCA450];
        v40 = @"SQL string is empty";
        v23 = MEMORY[0x277CBEAC0];
        v24 = &v40;
        v25 = &v39;
      }

      v26 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
      v14 = [v22 errorWithDomain:@"com.apple.healthd.SQLite" code:5 userInfo:v26];

      v18 = ppStmt;
    }

    if (!v18)
    {
      v27 = v14;
      v28 = v27;
      if (v27)
      {
        if (l)
        {
          v29 = v27;
          *l = v28;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v18 = ppStmt;
    }
  }

  else
  {
    v18 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)_setCachedStatement:forSQL:
{
  OUTLINED_FUNCTION_2_0();
  key = v2;
  if (v1)
  {
    _statementStorage = [(HDSQLiteStatementCache *)v1 _statementStorage];
    v4 = _statementStorage;
    if (_statementStorage)
    {
      CFDictionarySetValue(*(_statementStorage + 16), key, v0);
    }
  }
}

- (const)_cachedStatementForKey:(BOOL *)key active:
{
  if (!self)
  {
    return 0;
  }

  _statementStorage = [(HDSQLiteStatementCache *)self _statementStorage];
  v7 = _statementStorage;
  if (_statementStorage)
  {
    v8 = _statementStorage;
    while (1)
    {
      Value = CFDictionaryGetValue(*(v8 + 24), a2);
      if (Value)
      {
        break;
      }

      v8 = *(v8 + 8);
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v10 = Value;
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

  if (key)
  {
    *key = CFSetContainsValue(*(self + 32), v10) != 0;
  }

  return v10;
}

- (void)_setCachedStatement:(const void *)statement forKey:
{
  if (self)
  {
    _statementStorage = [(HDSQLiteStatementCache *)self _statementStorage];
    if (_statementStorage)
    {
      v6 = _statementStorage;
      CFDictionarySetValue(_statementStorage[3], statement, a2);
      _statementStorage = v6;
    }
  }
}

- (void)clearCachedStatements
{
  [(HDSQLiteStatementCache *)self _assertNoActiveStatements];
  [(HDSQLiteStatementCache *)self _clearTransactionStorage];
  defaultStatementStorage = self->_defaultStatementStorage;

  [(_HDSQLiteStatementCacheStorage *)defaultStatementStorage clearStatements];
}

- (void)checkInStatement:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"CFSetContainsValue(_activeStatements object:stmt)" file:? lineNumber:? description:?];
}

@end