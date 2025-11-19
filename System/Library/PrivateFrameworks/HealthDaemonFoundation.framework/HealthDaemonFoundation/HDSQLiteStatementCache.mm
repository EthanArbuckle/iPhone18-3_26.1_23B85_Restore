@interface HDSQLiteStatementCache
- (HDSQLiteStatementCache)init;
- (HDSQLiteStatementCache)initWithDatabase:(sqlite3 *)a3;
- (NSSet)allStatmentSQLStrings;
- (char)_statementStorage;
- (const)_cachedStatementForKey:(BOOL *)a3 active:;
- (const)_cachedStatementForSQL:(BOOL *)a3 active:;
- (int64_t)count;
- (sqlite3_stmt)_prepareStatementForSQL:(void *)a3 error:;
- (sqlite3_stmt)checkOutCachedStatementForKey:(const char *)a3 SQLGenerator:(id)a4 error:(id *)a5;
- (sqlite3_stmt)checkOutStatementForSQL:(id)a3 shouldCache:(BOOL)a4 error:(id *)a5;
- (void)_activateStatement:(char)a3 cached:;
- (void)_assertNoActiveStatements;
- (void)_clearTransactionStorage;
- (void)_setCachedStatement:(const void *)a3 forKey:;
- (void)_setCachedStatement:forSQL:;
- (void)beginTransaction;
- (void)checkInStatement:(sqlite3_stmt *)a3;
- (void)clearCachedStatements;
- (void)dealloc;
- (void)endTransaction;
@end

@implementation HDSQLiteStatementCache

- (void)beginTransaction
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"_inTransaction == NO" object:? file:? lineNumber:? description:?];
}

- (char)_statementStorage
{
  if (a1)
  {
    v2 = a1;
    if (a1[48] == 1)
    {
      v4 = (a1 + 24);
      v3 = *(a1 + 3);
      if (v3)
      {
LABEL_7:
        a1 = v3;
        v1 = vars8;
        goto LABEL_8;
      }

      v5 = [[_HDSQLiteStatementCacheStorage alloc] initWithParentStorage:?];
      v6 = *(v2 + 3);
      *(v2 + 3) = v5;
    }

    else
    {
      v4 = (a1 + 16);
    }

    v3 = *v4;
    goto LABEL_7;
  }

LABEL_8:

  return a1;
}

- (void)endTransaction
{
  if (!self->_inTransaction)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    OUTLINED_FUNCTION_1();
    [v4 handleFailureInMethod:@"_inTransaction" object:? file:? lineNumber:? description:?];
  }

  [(HDSQLiteStatementCache *)self _assertNoActiveStatements];
  self->_inTransaction = 0;

  [(HDSQLiteStatementCache *)self _clearTransactionStorage];
}

- (void)_assertNoActiveStatements
{
  if (a1)
  {
    CFSetApplyFunction(*(a1 + 32), logActiveStatement, 0);
    if (CFSetGetCount(*(a1 + 32)))
    {
      v2 = [MEMORY[0x277CCA890] currentHandler];
      OUTLINED_FUNCTION_1();
      [v3 handleFailureInMethod:@"CFSetGetCount(_activeStatements) == 0" object:? file:? lineNumber:? description:?];
    }

    if (CFSetGetCount(*(a1 + 40)))
    {
      v5 = [MEMORY[0x277CCA890] currentHandler];
      OUTLINED_FUNCTION_1();
      [v4 handleFailureInMethod:@"CFSetGetCount(_uncachedActiveStatements) == 0" object:? file:? lineNumber:? description:?];
    }
  }
}

- (void)_clearTransactionStorage
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      CFDictionaryRemoveAllValues(*(v2 + 16));
      CFDictionaryRemoveAllValues(*(v2 + 24));
      v3 = *(a1 + 24);
      *(a1 + 24) = 0;
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

- (HDSQLiteStatementCache)initWithDatabase:(sqlite3 *)a3
{
  v9.receiver = self;
  v9.super_class = HDSQLiteStatementCache;
  v4 = [(HDSQLiteStatementCache *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_db = a3;
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
  v4 = [(_HDSQLiteStatementCacheStorage *)&self->_defaultStatementStorage->super.isa allStatementSQLStrings];
  [v3 addObjectsFromArray:v4];

  transactionStatementStorage = self->_transactionStatementStorage;
  if (transactionStatementStorage)
  {
    v8 = [(_HDSQLiteStatementCacheStorage *)&transactionStatementStorage->super.isa allStatementSQLStrings];
    [v3 addObjectsFromArray:v8];
  }

  v6 = [v3 copy];

  return v6;
}

- (sqlite3_stmt)checkOutStatementForSQL:(id)a3 shouldCache:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  v13 = 0;
  v9 = [(HDSQLiteStatementCache *)self _cachedStatementForSQL:v8 active:&v13];
  v10 = a4 && !v13;
  if (!v9 || (v11 = v9, v13))
  {
    v11 = [(HDSQLiteStatementCache *)self _prepareStatementForSQL:v8 error:a5];
    if (((v11 != 0) & v10) == 1)
    {
      [HDSQLiteStatementCache _setCachedStatement:forSQL:];
    }
  }

  [(HDSQLiteStatementCache *)self _activateStatement:v11 cached:v10];

  return v11;
}

- (void)_activateStatement:(char)a3 cached:
{
  if (a1)
  {
    if (value)
    {
      CFSetAddValue(*(a1 + 32), value);
      if ((a3 & 1) == 0)
      {
        v6 = *(a1 + 40);

        CFSetAddValue(v6, value);
      }
    }
  }
}

- (sqlite3_stmt)checkOutCachedStatementForKey:(const char *)a3 SQLGenerator:(id)a4 error:(id *)a5
{
  v8 = a4;
  v14 = 0;
  v9 = [(HDSQLiteStatementCache *)self _cachedStatementForKey:a3 active:&v14];
  if (!v9 || (v10 = v14))
  {
    v13 = v8[2](v8);
    v11 = [(HDSQLiteStatementCache *)self _prepareStatementForSQL:v13 error:a5];

    v10 = v14;
    if (v11 && !v14)
    {
      [(HDSQLiteStatementCache *)self _setCachedStatement:v11 forKey:a3];
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

- (void)checkInStatement:(sqlite3_stmt *)a3
{
  if (!CFSetContainsValue(self->_activeStatements, a3))
  {
    [HDSQLiteStatementCache checkInStatement:];
  }

  CFSetRemoveValue(self->_activeStatements, a3);
  if (CFSetContainsValue(self->_uncachedActiveStatements, a3))
  {
    CFSetRemoveValue(self->_uncachedActiveStatements, a3);

    sqlite3_finalize(a3);
  }

  else
  {
    sqlite3_clear_bindings(a3);

    sqlite3_reset(a3);
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

- (const)_cachedStatementForSQL:(BOOL *)a3 active:
{
  v5 = a2;
  if (a1)
  {
    v6 = [(HDSQLiteStatementCache *)a1 _statementStorage];
    v7 = [(_HDSQLiteStatementCacheStorage *)v6 statementForSQL:v5];

    if (a3)
    {
      *a3 = CFSetContainsValue(*(a1 + 32), v7) != 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (sqlite3_stmt)_prepareStatementForSQL:(void *)a3 error:
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    ppStmt = 0;
    v6 = objc_autoreleasePoolPush();
    v7 = [v5 length];
    if (v7 >= 0x7FFFFFFF)
    {
      v32 = [MEMORY[0x277CCA890] currentHandler];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HDSQLiteStatementCache _prepareStatementForSQL:error:]"];
      v34 = NSStringFromSelector(sel__prepareStatementForSQL_error_);
      [v32 handleFailureInFunction:v33 file:@"HDSQLiteStatementCache.m" lineNumber:170 description:{@"NSString passed to %@ (%lu bytes) is larger than maximum allowed SQLite statement string (%lu bytes)", v34, v7, 0x7FFFFFFFLL}];
    }

    v8 = MEMORY[0x277CCC2A0];
    while (1)
    {
      *pzTail = 0;
      v9 = sqlite3_prepare_v2(*(a1 + 8), [v5 UTF8String], v7, &ppStmt, pzTail);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      if ((v9 - 5) >= 2)
      {
        ++*(a1 + 56);
        v11 = sqlite3_errmsg(*(a1 + 8));
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: [%d, %s]", v5, sqlite3_extended_errcode(*(a1 + 8)), v11];
        v13 = HDSQLiteErrorFromDatabase(*(a1 + 8), 0, v12);
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
          v15 = [MEMORY[0x277CCA9B8] hk_transactionInterruptedError];

          v14 = v15;
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
      v35 = [MEMORY[0x277CCA890] currentHandler];
      [v35 handleFailureInMethod:sel__prepareStatementForSQL_error_ object:a1 file:@"HDSQLiteStatementCache.m" lineNumber:180 description:{@"SQL strings must contain only a single statement; remaining statements will not be executed: %s", *pzTail}];
    }

    v14 = 0;
    ++*(a1 + 56);
LABEL_19:
    objc_autoreleasePoolPop(v6);
    v18 = ppStmt;
    if (!(ppStmt | v14))
    {
      v19 = [v5 hk_trimWhitespaceAndNewlines];
      v20 = [v19 length];

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
        if (a3)
        {
          v29 = v27;
          *a3 = v28;
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
    v3 = [(HDSQLiteStatementCache *)v1 _statementStorage];
    v4 = v3;
    if (v3)
    {
      CFDictionarySetValue(*(v3 + 16), key, v0);
    }
  }
}

- (const)_cachedStatementForKey:(BOOL *)a3 active:
{
  if (!a1)
  {
    return 0;
  }

  v6 = [(HDSQLiteStatementCache *)a1 _statementStorage];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
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

  if (a3)
  {
    *a3 = CFSetContainsValue(*(a1 + 32), v10) != 0;
  }

  return v10;
}

- (void)_setCachedStatement:(const void *)a3 forKey:
{
  if (a1)
  {
    v5 = [(HDSQLiteStatementCache *)a1 _statementStorage];
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(v5[3], a3, a2);
      v5 = v6;
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