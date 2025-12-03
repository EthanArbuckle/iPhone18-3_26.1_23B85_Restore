@interface HMBPreparedStatementsCache
- (HMBPreparedStatementsCache)init;
- (id)evictAllStatements;
- (sqlite3_stmt)_extractStatementForString:(id)string;
- (sqlite3_stmt)evictLeastRecentlyUsedStatement;
- (sqlite3_stmt)statementForString:(id)string;
- (unint64_t)count;
- (void)setStatement:(sqlite3_stmt *)statement forString:(id)string;
@end

@implementation HMBPreparedStatementsCache

- (id)evictAllStatements
{
  v3 = [MEMORY[0x277CCAC18] pointerArrayWithOptions:1282];
  os_unfair_lock_lock_with_options();
  if (self)
  {
    statementsByStatementString = self->_statementsByStatementString;
  }

  else
  {
    statementsByStatementString = 0;
  }

  v5 = statementsByStatementString;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__HMBPreparedStatementsCache_evictAllStatements__block_invoke;
  v12[3] = &unk_2786E1798;
  v6 = v3;
  v13 = v6;
  [(NSMutableDictionary *)v5 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v12];

  if (self)
  {
    v7 = self->_statementsByStatementString;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(NSMutableDictionary *)v8 removeAllObjects];

  if (self)
  {
    lruQueue = self->_lruQueue;
  }

  else
  {
    lruQueue = 0;
  }

  v10 = lruQueue;
  [(NSMutableArray *)v10 removeAllObjects];

  os_unfair_lock_unlock(&self->_lock.lock);

  return v6;
}

uint64_t __48__HMBPreparedStatementsCache_evictAllStatements__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 statement];

  return [v3 addPointer:v4];
}

- (sqlite3_stmt)evictLeastRecentlyUsedStatement
{
  os_unfair_lock_lock_with_options();
  if (self)
  {
    lruQueue = self->_lruQueue;
  }

  else
  {
    lruQueue = 0;
  }

  v4 = lruQueue;
  firstObject = [(NSMutableArray *)v4 firstObject];
  v6 = [(HMBPreparedStatementsCache *)self _extractStatementForString:firstObject];

  os_unfair_lock_unlock(&self->_lock.lock);
  return v6;
}

- (sqlite3_stmt)_extractStatementForString:(id)string
{
  stringCopy = string;
  v5 = objc_autoreleasePoolPush();
  if (self)
  {
    statementsByStatementString = self->_statementsByStatementString;
  }

  else
  {
    statementsByStatementString = 0;
  }

  v7 = [(NSMutableDictionary *)statementsByStatementString objectForKey:stringCopy];
  if (v7)
  {
    if (self)
    {
      [(NSMutableDictionary *)self->_statementsByStatementString removeObjectForKey:stringCopy];
      lruQueue = self->_lruQueue;
    }

    else
    {
      [0 removeObjectForKey:stringCopy];
      lruQueue = 0;
    }

    [(NSMutableArray *)lruQueue removeObject:stringCopy];
  }

  statement = [v7 statement];

  objc_autoreleasePoolPop(v5);
  return statement;
}

- (void)setStatement:(sqlite3_stmt *)statement forString:(id)string
{
  stringCopy = string;
  if (!statement)
  {
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!stringCopy)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  v18 = stringCopy;
  os_unfair_lock_lock_with_options();
  v4 = objc_autoreleasePoolPush();
  if (self)
  {
    statementsByStatementString = self->_statementsByStatementString;
    goto LABEL_5;
  }

LABEL_18:
  statementsByStatementString = 0;
LABEL_5:
  v9 = statementsByStatementString;
  v10 = [(NSMutableDictionary *)v9 objectForKey:v18];

  if (v10)
  {
    if (self)
    {
      lruQueue = self->_lruQueue;
    }

    else
    {
      lruQueue = 0;
    }

    v12 = lruQueue;
    [(NSMutableArray *)v12 removeObject:v18];
  }

  if (self)
  {
    v13 = self->_statementsByStatementString;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [[HMBSQLCachedPreparedStatement alloc] initWithStatement:statement];
  [(NSMutableDictionary *)v14 setObject:v15 forKey:v18];

  if (self)
  {
    v16 = self->_lruQueue;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  [(NSMutableArray *)v17 addObject:v18];

  objc_autoreleasePoolPop(v4);
  os_unfair_lock_unlock(&self->_lock.lock);
}

- (sqlite3_stmt)statementForString:(id)string
{
  stringCopy = string;
  os_unfair_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  if (self)
  {
    statementsByStatementString = self->_statementsByStatementString;
  }

  else
  {
    statementsByStatementString = 0;
  }

  v7 = statementsByStatementString;
  v8 = [(NSMutableDictionary *)v7 objectForKey:stringCopy];

  if (v8)
  {
    if (self)
    {
      lruQueue = self->_lruQueue;
    }

    else
    {
      lruQueue = 0;
    }

    v10 = lruQueue;
    [(NSMutableArray *)v10 removeObject:stringCopy];

    if (self)
    {
      v11 = self->_lruQueue;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    [(NSMutableArray *)v12 addObject:stringCopy];
  }

  statement = [v8 statement];

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_unlock(&self->_lock.lock);

  return statement;
}

- (unint64_t)count
{
  os_unfair_lock_lock_with_options();
  if (self)
  {
    statementsByStatementString = self->_statementsByStatementString;
  }

  else
  {
    statementsByStatementString = 0;
  }

  v4 = statementsByStatementString;
  v5 = [(NSMutableDictionary *)v4 count];

  os_unfair_lock_unlock(&self->_lock.lock);
  return v5;
}

- (HMBPreparedStatementsCache)init
{
  v8.receiver = self;
  v8.super_class = HMBPreparedStatementsCache;
  v2 = [(HMBPreparedStatementsCache *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    statementsByStatementString = v2->_statementsByStatementString;
    v2->_statementsByStatementString = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    lruQueue = v2->_lruQueue;
    v2->_lruQueue = v5;

    v2->_lock.lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

@end