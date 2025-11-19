@interface EMMessageObjectID
- (BOOL)isEqual:(id)a3;
- (EMMessageObjectID)init;
- (EMMessageObjectID)initWithCoder:(id)a3;
- (EMMessageObjectID)initWithCollectionItemID:(id)a3 mailboxScope:(id)a4;
- (EMMessageObjectID)initWithCollectionItemID:(id)a3 predicate:(id)a4 mailboxTypeResolver:(id)a5;
- (EMMessageObjectID)initWithGlobalMessageID:(int64_t)a3 mailboxScope:(id)a4;
- (id)description;
- (int64_t)globalMessageID;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
    v4 = [(EMMessageObjectID *)self collectionItemID];
    v3 = [v4 hash];
  }

  return v3;
}

- (int64_t)globalMessageID
{
  v2 = [(EMMessageObjectID *)self collectionItemID];
  v3 = [v2 globalMessageID];

  return v3;
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

- (EMMessageObjectID)initWithCollectionItemID:(id)a3 mailboxScope:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = EMMessageObjectID;
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

- (EMMessageObjectID)initWithCollectionItemID:(id)a3 predicate:(id)a4 mailboxTypeResolver:(id)a5
{
  v8 = a3;
  v9 = [EMMessageListItemPredicates mailboxScopeForPredicate:a4 withMailboxTypeResolver:a5];
  v10 = [(EMMessageObjectID *)self initWithCollectionItemID:v8 mailboxScope:v9];

  return v10;
}

- (EMMessageObjectID)initWithGlobalMessageID:(int64_t)a3 mailboxScope:(id)a4
{
  v6 = a4;
  v7 = [[EMMessageCollectionItemID alloc] initWithGlobalMessageID:a3];
  v8 = [(EMMessageObjectID *)self initWithCollectionItemID:v7 mailboxScope:v6];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(EMObjectID *)self isEphemeral]|| [(EMObjectID *)v5 isEphemeral])
      {
        v12.receiver = self;
        v12.super_class = EMMessageObjectID;
        v6 = [(EMObjectID *)&v12 isEqual:v5];
      }

      else
      {
        v7 = [(EMMessageObjectID *)self collectionItemID];
        v8 = [(EMMessageObjectID *)v5 collectionItemID];
        if ([v7 isEqual:v8])
        {
          v9 = [(EMMessageObjectID *)self mailboxScope];
          v10 = [(EMMessageObjectID *)v5 mailboxScope];
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
  v5 = [(EMMessageObjectID *)self collectionItemID];
  v6 = [v5 description];
  v7 = [(EMMessageObjectID *)self mailboxScope];
  v8 = [v7 description];
  v9 = [v3 initWithFormat:@"%@ %@ %@", v4, v6, v8];

  return v9;
}

- (EMMessageObjectID)initWithCoder:(id)a3
{
  v8 = a3;
  v9 = self;
  v4 = self;
  v5 = v8;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v3 = v4;
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