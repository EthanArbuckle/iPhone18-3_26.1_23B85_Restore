@interface EMThreadScope
- (BOOL)isEqual:(id)equal;
- (EMThreadScope)initWithCoder:(id)coder;
- (EMThreadScope)initWithMailboxScope:(id)scope filterPredicate:(id)predicate;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (id)cachedSelf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  mailboxScope = [(EMThreadScope *)self mailboxScope];
  v4 = [mailboxScope hash];

  filterPredicate = [(EMThreadScope *)self filterPredicate];
  v6 = [filterPredicate hash] + 5859909;

  return 33 * v4 + v6;
}

- (NSString)ef_publicDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  mailboxScope = [(EMThreadScope *)self mailboxScope];
  ef_publicDescription = [mailboxScope ef_publicDescription];
  filterPredicate = [(EMThreadScope *)self filterPredicate];
  ef_publicDescription2 = [filterPredicate ef_publicDescription];
  v9 = [v3 initWithFormat:@"%@: %@ filterPredicate: %@", v4, ef_publicDescription, ef_publicDescription2];

  return v9;
}

- (EMThreadScope)initWithMailboxScope:(id)scope filterPredicate:(id)predicate
{
  scopeCopy = scope;
  predicateCopy = predicate;
  v14.receiver = self;
  v14.super_class = EMThreadScope;
  v9 = [(EMThreadScope *)&v14 init];
  v10 = v9;
  v11 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mailboxScope, scope);
    objc_storeStrong(&v10->_filterPredicate, predicate);
  }

  cachedSelf = [(EMThreadScope *)v11 cachedSelf];

  return cachedSelf;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if (([(EMThreadScope *)equalCopy isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = equalCopy;
    mailboxScope = [(EMThreadScope *)self mailboxScope];
    mailboxScope2 = [(EMThreadScope *)v5 mailboxScope];
    if ([mailboxScope isEqual:mailboxScope2])
    {
      filterPredicate = [(EMThreadScope *)self filterPredicate];
      filterPredicate2 = [(EMThreadScope *)v5 filterPredicate];
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

- (EMThreadScope)initWithCoder:(id)coder
{
  coderCopy = coder;
  v3 = coderCopy;
  selfCopy = self;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v3 = coderCopy;
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
  filterPredicate = [(EMThreadScope *)self filterPredicate];

  if (filterPredicate)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    filterPredicate2 = [(EMThreadScope *)self filterPredicate];
    v6 = [filterPredicate2 debugDescription];
    v7 = [v4 initWithFormat:@"\nfilterPredicate: %@", v6];
  }

  else
  {
    v7 = &stru_1F45FD218;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  mailboxScope = [(EMThreadScope *)self mailboxScope];
  v11 = [mailboxScope debugDescription];
  v12 = [v8 stringWithFormat:@"%@: %@%@", v9, v11, v7];

  return v12;
}

@end