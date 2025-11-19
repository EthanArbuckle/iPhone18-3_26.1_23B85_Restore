@interface EFSQLDisqualifiedColumnExpression
- (BOOL)isEqual:(id)a3;
- (id)cachedSelf;
- (unint64_t)hash;
- (void)ef_renderSQLExpressionInto:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else if (([(EFSQLDisqualifiedColumnExpression *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = v4;
    v6 = [(EFSQLColumnExpression *)self name];
    v7 = [(EFSQLColumnExpression *)v5 name];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(EFSQLColumnExpression *)self tableName];
      v9 = [(EFSQLColumnExpression *)v5 tableName];
      v10 = EFObjectsAreEqual(v8, v9);
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

- (void)ef_renderSQLExpressionInto:(id)a3
{
  v4 = a3;
  [v4 appendString:@"+"];
  v5.receiver = self;
  v5.super_class = EFSQLDisqualifiedColumnExpression;
  [(EFSQLColumnExpression *)&v5 ef_renderSQLExpressionInto:v4];
}

@end