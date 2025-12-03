@interface EMMessageObjectID
- (BOOL)isEqual:(id)equal;
- (EMMessageObjectID)init;
- (EMMessageObjectID)initWithCoder:(id)coder;
- (EMMessageObjectID)initWithCollectionItemID:(id)d mailboxScope:(id)scope;
- (EMMessageObjectID)initWithCollectionItemID:(id)d predicate:(id)predicate mailboxTypeResolver:(id)resolver;
- (EMMessageObjectID)initWithGlobalMessageID:(int64_t)d mailboxScope:(id)scope;
- (id)description;
- (int64_t)globalMessageID;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMessageObjectID

- (unint64_t)hash
{
  if ([(EMObjectID *)self isEphemeral])
  {
    v6.receiver = self;
    v6.super_class = EMMessageObjectID;
    return [(EMObjectID *)&v6 hash];
  }

  else
  {
    collectionItemID = [(EMMessageObjectID *)self collectionItemID];
    v3 = [collectionItemID hash];
  }

  return v3;
}

- (int64_t)globalMessageID
{
  collectionItemID = [(EMMessageObjectID *)self collectionItemID];
  globalMessageID = [collectionItemID globalMessageID];

  return globalMessageID;
}

- (EMMessageObjectID)init
{
  v6.receiver = self;
  v6.super_class = EMMessageObjectID;
  v2 = [(EMObjectID *)&v6 initAsEphemeralID:1];
  if (v2)
  {
    v3 = [[EMMessageCollectionItemID alloc] initWithGlobalMessageID:-1];
    collectionItemID = v2->_collectionItemID;
    v2->_collectionItemID = v3;
  }

  return v2;
}

- (EMMessageObjectID)initWithCollectionItemID:(id)d mailboxScope:(id)scope
{
  dCopy = d;
  scopeCopy = scope;
  v14.receiver = self;
  v14.super_class = EMMessageObjectID;
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

- (EMMessageObjectID)initWithCollectionItemID:(id)d predicate:(id)predicate mailboxTypeResolver:(id)resolver
{
  dCopy = d;
  v9 = [EMMessageListItemPredicates mailboxScopeForPredicate:predicate withMailboxTypeResolver:resolver];
  v10 = [(EMMessageObjectID *)self initWithCollectionItemID:dCopy mailboxScope:v9];

  return v10;
}

- (EMMessageObjectID)initWithGlobalMessageID:(int64_t)d mailboxScope:(id)scope
{
  scopeCopy = scope;
  v7 = [[EMMessageCollectionItemID alloc] initWithGlobalMessageID:d];
  v8 = [(EMMessageObjectID *)self initWithCollectionItemID:v7 mailboxScope:scopeCopy];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(EMObjectID *)self isEphemeral]|| [(EMObjectID *)v5 isEphemeral])
      {
        v12.receiver = self;
        v12.super_class = EMMessageObjectID;
        v6 = [(EMObjectID *)&v12 isEqual:v5];
      }

      else
      {
        collectionItemID = [(EMMessageObjectID *)self collectionItemID];
        collectionItemID2 = [(EMMessageObjectID *)v5 collectionItemID];
        if ([collectionItemID isEqual:collectionItemID2])
        {
          mailboxScope = [(EMMessageObjectID *)self mailboxScope];
          mailboxScope2 = [(EMMessageObjectID *)v5 mailboxScope];
          v6 = EFObjectsAreEqual();
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
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = EMMessageObjectID;
  v4 = [(EMObjectID *)&v11 description];
  collectionItemID = [(EMMessageObjectID *)self collectionItemID];
  v6 = [collectionItemID description];
  mailboxScope = [(EMMessageObjectID *)self mailboxScope];
  v8 = [mailboxScope description];
  v9 = [v3 initWithFormat:@"%@ %@ %@", v4, v6, v8];

  return v9;
}

- (EMMessageObjectID)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  selfCopy2 = self;
  v5 = coderCopy;
  v6 = EFDecodeCacheableInstance();

  return v6;
}

id __35__EMMessageObjectID_initWithCoder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v12.receiver = v2;
  v12.super_class = EMMessageObjectID;
  v4 = objc_msgSendSuper2(&v12, sel_initWithCoder_, v3);
  if (v4)
  {
    v5 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_collectionItemID"];
    v6 = *(a1 + 40);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_mailboxScope"];
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

void __37__EMMessageObjectID_encodeWithCoder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7.receiver = *(a1 + 40);
  v7.super_class = EMMessageObjectID;
  objc_msgSendSuper2(&v7, sel_encodeWithCoder_, v2);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) collectionItemID];
  [v3 encodeObject:v4 forKey:@"EFPropertyKey_collectionItemID"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) mailboxScope];
  [v5 encodeObject:v6 forKey:@"EFPropertyKey_mailboxScope"];
}

@end