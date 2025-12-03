@interface EFSQLDisqualifiedColumnExpression
- (BOOL)isEqual:(id)equal;
- (id)cachedSelf;
- (unint64_t)hash;
- (void)ef_renderSQLExpressionInto:(id)into;
@end

@implementation EFSQLDisqualifiedColumnExpression

- (id)cachedSelf
{
  if (cachedSelf_onceToken_133 != -1)
  {
    [EFSQLDisqualifiedColumnExpression(EFCacheable) cachedSelf];
  }

  os_unfair_lock_lock(&cachedSelf_sTableLock_131);
  v3 = [cachedSelf_sUniqueObjectIDs_132 ef_uniquedObject:self];
  os_unfair_lock_unlock(&cachedSelf_sTableLock_131);

  return v3;
}

void __60__EFSQLDisqualifiedColumnExpression_EFCacheable__cachedSelf__block_invoke()
{
  cachedSelf_sTableLock_131 = 0;
  v0 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
  v1 = cachedSelf_sUniqueObjectIDs_132;
  cachedSelf_sUniqueObjectIDs_132 = v0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if (([(EFSQLDisqualifiedColumnExpression *)equalCopy isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = equalCopy;
    name = [(EFSQLColumnExpression *)self name];
    name2 = [(EFSQLColumnExpression *)v5 name];
    if ([name isEqualToString:name2])
    {
      tableName = [(EFSQLColumnExpression *)self tableName];
      tableName2 = [(EFSQLColumnExpression *)v5 tableName];
      v10 = EFObjectsAreEqual(tableName, tableName2);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = EFSQLDisqualifiedColumnExpression;
  return 33 * [(EFSQLColumnExpression *)&v3 hash]+ 1;
}

- (void)ef_renderSQLExpressionInto:(id)into
{
  intoCopy = into;
  [intoCopy appendString:@"+"];
  v5.receiver = self;
  v5.super_class = EFSQLDisqualifiedColumnExpression;
  [(EFSQLColumnExpression *)&v5 ef_renderSQLExpressionInto:intoCopy];
}

@end