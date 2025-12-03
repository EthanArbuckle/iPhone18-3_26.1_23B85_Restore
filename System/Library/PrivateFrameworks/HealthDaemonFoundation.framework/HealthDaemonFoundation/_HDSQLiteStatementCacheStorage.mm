@interface _HDSQLiteStatementCacheStorage
- (CFDictionaryRef)allStatementSQLStrings;
- (const)statementForSQL:(uint64_t)l;
- (void)clearStatements;
- (void)dealloc;
- (void)initWithParentStorage:(void *)storage;
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
  selfCopy = self;
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    CFDictionaryApplyFunction(selfCopy[3], collectStatementStrings, v2);
    CFDictionaryApplyFunction(selfCopy[2], collectStatementStrings, v2);
    selfCopy = [v2 copy];
  }

  return selfCopy;
}

- (void)clearStatements
{
  if (self)
  {
    CFDictionaryRemoveAllValues(*(self + 16));
    v2 = *(self + 24);

    CFDictionaryRemoveAllValues(v2);
  }
}

- (const)statementForSQL:(uint64_t)l
{
  v3 = a2;
  if (l)
  {
    Value = CFDictionaryGetValue(*(l + 16), v3);
    if (!Value)
    {
      Value = [(_HDSQLiteStatementCacheStorage *)*(l + 8) statementForSQL:v3];
    }
  }

  else
  {
    Value = 0;
  }

  return Value;
}

- (void)initWithParentStorage:(void *)storage
{
  v4 = a2;
  if (storage)
  {
    v7.receiver = storage;
    v7.super_class = _HDSQLiteStatementCacheStorage;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    storage = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      storage[2] = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], &kSQLite3StatementDictionaryValueCallbacks);
      storage[3] = CFDictionaryCreateMutable(0, 0, 0, &kSQLite3StatementDictionaryValueCallbacks);
    }
  }

  return storage;
}

@end