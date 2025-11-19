@interface EMThreadObjectID
- (BOOL)isEqual:(id)a3;
- (EMThreadObjectID)init;
- (EMThreadObjectID)initWithCoder:(id)a3;
- (EMThreadObjectID)initWithCollectionItemID:(id)a3 threadScope:(id)a4;
- (EMThreadObjectID)initWithConversationID:(int64_t)a3 threadScope:(id)a4;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (id)cachedSelf;
- (int64_t)conversationID;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
    v4 = [(EMThreadObjectID *)self collectionItemID];
    v5 = [v4 hash];

    v6 = [(EMThreadObjectID *)self threadScope];
    v3 = 33 * v5 + [v6 hash] + 5859909;
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
  v2 = [(EMThreadObjectID *)self _threadCollectionItemID];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 conversationID];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (NSString)ef_publicDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = EMThreadObjectID;
  v4 = [(EMObjectID *)&v11 description];
  v5 = [(EMThreadObjectID *)self collectionItemID];
  v6 = [v5 description];
  v7 = [(EMThreadObjectID *)self threadScope];
  v8 = [v7 ef_publicDescription];
  v9 = [v3 initWithFormat:@"%@ %@, %@", v4, v6, v8];

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

  v5 = [v2 cachedSelf];

  return v5;
}

- (EMThreadObjectID)initWithCollectionItemID:(id)a3 threadScope:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = EMThreadObjectID;
  v9 = [(EMObjectID *)&v14 initAsEphemeralID:0];
  v10 = v9;
  v11 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 5, a3);
    objc_storeStrong(v10 + 6, a4);
  }

  v12 = [v11 cachedSelf];

  return v12;
}

- (EMThreadObjectID)initWithConversationID:(int64_t)a3 threadScope:(id)a4
{
  v6 = a4;
  v7 = [[EMThreadCollectionItemID alloc] initWithConversationID:a3];
  v8 = [(EMThreadObjectID *)self initWithCollectionItemID:v7 threadScope:v6];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (([(EMThreadObjectID *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = v4;
    if ([(EMObjectID *)self isEphemeral])
    {
      v12.receiver = self;
      v12.super_class = EMThreadObjectID;
      v6 = [(EMObjectID *)&v12 isEqual:v5];
    }

    else
    {
      v7 = [(EMThreadObjectID *)self collectionItemID];
      v8 = [(EMThreadObjectID *)v5 collectionItemID];
      if ([v7 isEqual:v8])
      {
        v9 = [(EMThreadObjectID *)self threadScope];
        v10 = [(EMThreadObjectID *)v5 threadScope];
        v6 = [v9 isEqual:v10];
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

- (EMThreadObjectID)initWithCoder:(id)a3
{
  v8 = a3;
  v9 = self;
  v4 = self;
  v5 = v8;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v3 = v4;
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
  v5 = [(EMThreadObjectID *)self collectionItemID];
  v6 = [v5 debugDescription];
  v7 = [(EMThreadObjectID *)self threadScope];
  v8 = [v7 debugDescription];
  v9 = [v3 initWithFormat:@"%@ %@, %@", v4, v6, v8];

  return v9;
}

@end