@interface EMThreadScope
- (BOOL)isEqual:(id)a3;
- (EMThreadScope)initWithCoder:(id)a3;
- (EMThreadScope)initWithMailboxScope:(id)a3 filterPredicate:(id)a4;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (id)cachedSelf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMThreadScope

- (id)cachedSelf
{
  if (cachedSelf_onceToken_5 != -1)
  {
    [EMThreadScope(EFCacheable) cachedSelf];
  }

  os_unfair_lock_lock(&cachedSelf_sTableLock_5);
  v3 = [cachedSelf_sUniqueObjectIDs_5 ef_uniquedObject:self];
  os_unfair_lock_unlock(&cachedSelf_sTableLock_5);

  return v3;
}

void __40__EMThreadScope_EFCacheable__cachedSelf__block_invoke()
{
  cachedSelf_sTableLock_5 = 0;
  v0 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
  v1 = cachedSelf_sUniqueObjectIDs_5;
  cachedSelf_sUniqueObjectIDs_5 = v0;
}

- (unint64_t)hash
{
  v3 = [(EMThreadScope *)self mailboxScope];
  v4 = [v3 hash];

  v5 = [(EMThreadScope *)self filterPredicate];
  v6 = [v5 hash] + 5859909;

  return 33 * v4 + v6;
}

- (NSString)ef_publicDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(EMThreadScope *)self mailboxScope];
  v6 = [v5 ef_publicDescription];
  v7 = [(EMThreadScope *)self filterPredicate];
  v8 = [v7 ef_publicDescription];
  v9 = [v3 initWithFormat:@"%@: %@ filterPredicate: %@", v4, v6, v8];

  return v9;
}

- (EMThreadScope)initWithMailboxScope:(id)a3 filterPredicate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = EMThreadScope;
  v9 = [(EMThreadScope *)&v14 init];
  v10 = v9;
  v11 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mailboxScope, a3);
    objc_storeStrong(&v10->_filterPredicate, a4);
  }

  v12 = [(EMThreadScope *)v11 cachedSelf];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else if (([(EMThreadScope *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = v4;
    v6 = [(EMThreadScope *)self mailboxScope];
    v7 = [(EMThreadScope *)v5 mailboxScope];
    if ([v6 isEqual:v7])
    {
      v8 = [(EMThreadScope *)self filterPredicate];
      v9 = [(EMThreadScope *)v5 filterPredicate];
      v10 = EFObjectsAreEqual();
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

- (EMThreadScope)initWithCoder:(id)a3
{
  v8 = a3;
  v3 = v8;
  v4 = self;
  v5 = EFDecodeCacheableInstance();

  return v5;
}

id __31__EMThreadScope_initWithCoder___block_invoke(uint64_t a1)
{
  v10.receiver = *(a1 + 32);
  v10.super_class = EMThreadScope;
  v2 = objc_msgSendSuper2(&v10, sel_init);
  if (v2)
  {
    v3 = [*(a1 + 40) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_mailboxScope"];
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v6 = [*(a1 + 40) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_filterPredicate"];
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = v6;

    [*(*(a1 + 32) + 16) allowEvaluation];
  }

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v3 = v4;
  EFEncodeCacheableInstance();
}

void __33__EMThreadScope_encodeWithCoder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) mailboxScope];
  [v2 encodeObject:? forKey:?];

  v3 = *(a1 + 32);
  v5 = [*(a1 + 40) filterPredicate];
  [v3 encodeObject:? forKey:?];
}

- (NSString)debugDescription
{
  v3 = [(EMThreadScope *)self filterPredicate];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [(EMThreadScope *)self filterPredicate];
    v6 = [v5 debugDescription];
    v7 = [v4 initWithFormat:@"\nfilterPredicate: %@", v6];
  }

  else
  {
    v7 = &stru_1F45FD218;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = [(EMThreadScope *)self mailboxScope];
  v11 = [v10 debugDescription];
  v12 = [v8 stringWithFormat:@"%@: %@%@", v9, v11, v7];

  return v12;
}

@end