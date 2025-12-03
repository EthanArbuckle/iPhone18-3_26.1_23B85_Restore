@interface EMThreadObjectID
- (BOOL)isEqual:(id)equal;
- (EMThreadObjectID)init;
- (EMThreadObjectID)initWithCoder:(id)coder;
- (EMThreadObjectID)initWithCollectionItemID:(id)d threadScope:(id)scope;
- (EMThreadObjectID)initWithConversationID:(int64_t)d threadScope:(id)scope;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (id)cachedSelf;
- (int64_t)conversationID;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMThreadObjectID

- (id)cachedSelf
{
  if (cachedSelf_onceToken_44 != -1)
  {
    [EMThreadObjectID cachedSelf];
  }

  os_unfair_lock_lock(&cachedSelf_sTableLock_42);
  v3 = [cachedSelf_sUniqueObjectIDs_43 ef_uniquedObject:self];
  os_unfair_lock_unlock(&cachedSelf_sTableLock_42);

  return v3;
}

- (unint64_t)hash
{
  if ([(EMObjectID *)self isEphemeral])
  {
    v8.receiver = self;
    v8.super_class = EMThreadObjectID;
    return [(EMObjectID *)&v8 hash];
  }

  else
  {
    collectionItemID = [(EMThreadObjectID *)self collectionItemID];
    v5 = [collectionItemID hash];

    threadScope = [(EMThreadObjectID *)self threadScope];
    v3 = 33 * v5 + [threadScope hash] + 5859909;
  }

  return v3;
}

void __30__EMThreadObjectID_cachedSelf__block_invoke()
{
  cachedSelf_sTableLock_42 = 0;
  v0 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:10000];
  v1 = cachedSelf_sUniqueObjectIDs_43;
  cachedSelf_sUniqueObjectIDs_43 = v0;
}

- (int64_t)conversationID
{
  _threadCollectionItemID = [(EMThreadObjectID *)self _threadCollectionItemID];
  v3 = _threadCollectionItemID;
  if (_threadCollectionItemID)
  {
    conversationID = [_threadCollectionItemID conversationID];
  }

  else
  {
    conversationID = -1;
  }

  return conversationID;
}

- (NSString)ef_publicDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = EMThreadObjectID;
  v4 = [(EMObjectID *)&v11 description];
  collectionItemID = [(EMThreadObjectID *)self collectionItemID];
  v6 = [collectionItemID description];
  threadScope = [(EMThreadObjectID *)self threadScope];
  ef_publicDescription = [threadScope ef_publicDescription];
  v9 = [v3 initWithFormat:@"%@ %@, %@", v4, v6, ef_publicDescription];

  return v9;
}

- (EMThreadObjectID)init
{
  v7.receiver = self;
  v7.super_class = EMThreadObjectID;
  v2 = [(EMObjectID *)&v7 initAsEphemeralID:1];
  if (v2)
  {
    v3 = [[EMThreadCollectionItemID alloc] initWithConversationID:-1];
    v4 = v2[5];
    v2[5] = v3;
  }

  cachedSelf = [v2 cachedSelf];

  return cachedSelf;
}

- (EMThreadObjectID)initWithCollectionItemID:(id)d threadScope:(id)scope
{
  dCopy = d;
  scopeCopy = scope;
  v14.receiver = self;
  v14.super_class = EMThreadObjectID;
  v9 = [(EMObjectID *)&v14 initAsEphemeralID:0];
  v10 = v9;
  v11 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 5, d);
    objc_storeStrong(v10 + 6, scope);
  }

  cachedSelf = [v11 cachedSelf];

  return cachedSelf;
}

- (EMThreadObjectID)initWithConversationID:(int64_t)d threadScope:(id)scope
{
  scopeCopy = scope;
  v7 = [[EMThreadCollectionItemID alloc] initWithConversationID:d];
  v8 = [(EMThreadObjectID *)self initWithCollectionItemID:v7 threadScope:scopeCopy];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (([(EMThreadObjectID *)equalCopy isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = equalCopy;
    if ([(EMObjectID *)self isEphemeral])
    {
      v12.receiver = self;
      v12.super_class = EMThreadObjectID;
      v6 = [(EMObjectID *)&v12 isEqual:v5];
    }

    else
    {
      collectionItemID = [(EMThreadObjectID *)self collectionItemID];
      collectionItemID2 = [(EMThreadObjectID *)v5 collectionItemID];
      if ([collectionItemID isEqual:collectionItemID2])
      {
        threadScope = [(EMThreadObjectID *)self threadScope];
        threadScope2 = [(EMThreadObjectID *)v5 threadScope];
        v6 = [threadScope isEqual:threadScope2];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (EMThreadObjectID)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  selfCopy2 = self;
  v5 = coderCopy;
  v6 = EFDecodeCacheableInstance();

  return v6;
}

id __34__EMThreadObjectID_initWithCoder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v12.receiver = v2;
  v12.super_class = EMThreadObjectID;
  v4 = objc_msgSendSuper2(&v12, sel_initWithCoder_, v3);
  if (v4)
  {
    v5 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_collectionItemID"];
    v6 = *(a1 + 40);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_threadScope"];
    v9 = *(a1 + 40);
    v10 = *(v9 + 48);
    *(v9 + 48) = v8;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v3 = coderCopy;
  EFEncodeCacheableInstance();
}

void __36__EMThreadObjectID_encodeWithCoder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7.receiver = *(a1 + 40);
  v7.super_class = EMThreadObjectID;
  objc_msgSendSuper2(&v7, sel_encodeWithCoder_, v2);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) collectionItemID];
  [v3 encodeObject:v4 forKey:@"EFPropertyKey_collectionItemID"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) threadScope];
  [v5 encodeObject:v6 forKey:@"EFPropertyKey_threadScope"];
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = EMThreadObjectID;
  v4 = [(EMObjectID *)&v11 description];
  collectionItemID = [(EMThreadObjectID *)self collectionItemID];
  v6 = [collectionItemID debugDescription];
  threadScope = [(EMThreadObjectID *)self threadScope];
  v8 = [threadScope debugDescription];
  v9 = [v3 initWithFormat:@"%@ %@, %@", v4, v6, v8];

  return v9;
}

@end