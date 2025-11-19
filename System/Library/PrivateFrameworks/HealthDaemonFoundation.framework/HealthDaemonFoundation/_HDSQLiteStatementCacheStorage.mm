@interface _HDSQLiteStatementCacheStorage
- (CFDictionaryRef)allStatementSQLStrings;
- (const)statementForSQL:(uint64_t)a1;
- (void)clearStatements;
- (void)dealloc;
- (void)initWithParentStorage:(void *)a1;
@end

@implementation _HDSQLiteStatementCacheStorage

- (void)dealloc
{
  CFRelease(self->_statementsBySQL);
  CFRelease(self->_statementsByKey);
  v3.receiver = self;
  v3.super_class = _HDSQLiteStatementCacheStorage;
  [(_HDSQLiteStatementCacheStorage *)&v3 dealloc];
}

- (CFDictionaryRef)allStatementSQLStrings
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    CFDictionaryApplyFunction(v1[3], collectStatementStrings, v2);
    CFDictionaryApplyFunction(v1[2], collectStatementStrings, v2);
    v1 = [v2 copy];
  }

  return v1;
}

- (void)clearStatements
{
  if (a1)
  {
    CFDictionaryRemoveAllValues(*(a1 + 16));
    v2 = *(a1 + 24);

    CFDictionaryRemoveAllValues(v2);
  }
}

- (const)statementForSQL:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    Value = CFDictionaryGetValue(*(a1 + 16), v3);
    if (!Value)
    {
      Value = [(_HDSQLiteStatementCacheStorage *)*(a1 + 8) statementForSQL:v3];
    }
  }

  else
  {
    Value = 0;
  }

  return Value;
}

- (void)initWithParentStorage:(void *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = _HDSQLiteStatementCacheStorage;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      a1[2] = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], &kSQLite3StatementDictionaryValueCallbacks);
      a1[3] = CFDictionaryCreateMutable(0, 0, 0, &kSQLite3StatementDictionaryValueCallbacks);
    }
  }

  return a1;
}

@end