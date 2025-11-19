@interface EMGroupedSenderObjectID
- (BOOL)isEqual:(id)a3;
- (ECEmailAddressConvertible)emailAddress;
- (EMGroupedSenderObjectID)init;
- (EMGroupedSenderObjectID)initWithBusinessID:(int64_t)a3 threadScope:(id)a4;
- (EMGroupedSenderObjectID)initWithCoder:(id)a3;
- (EMGroupedSenderObjectID)initWithCollectionItemID:(id)a3 predicate:(id)a4 mailboxTypeResolver:(id)a5;
- (EMGroupedSenderObjectID)initWithCollectionItemID:(id)a3 threadScope:(id)a4;
- (id)debugDescription;
- (id)description;
- (int64_t)businessID;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMGroupedSenderObjectID

- (EMGroupedSenderObjectID)init
{
  v6.receiver = self;
  v6.super_class = EMGroupedSenderObjectID;
  v2 = [(EMObjectID *)&v6 initAsEphemeralID:1];
  if (v2)
  {
    v3 = [[EMGroupedSenderCollectionItemID alloc] initWithBusinessID:-1];
    collectionItemID = v2->_collectionItemID;
    v2->_collectionItemID = v3;
  }

  return v2;
}

- (EMGroupedSenderObjectID)initWithCollectionItemID:(id)a3 threadScope:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"EMGroupedSenderObjectID.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"threadScope"}];
  }

  v16.receiver = self;
  v16.super_class = EMGroupedSenderObjectID;
  v10 = [(EMObjectID *)&v16 initAsEphemeralID:0];
  v11 = v10;
  v12 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 5, a3);
    objc_storeStrong(v11 + 6, a4);
  }

  v13 = [v12 cachedSelf];

  return v13;
}

- (EMGroupedSenderObjectID)initWithCollectionItemID:(id)a3 predicate:(id)a4 mailboxTypeResolver:(id)a5
{
  v8 = a3;
  v9 = [EMMessageListItemPredicates threadScopeForPredicate:a4 withMailboxTypeResolver:a5];
  v10 = [(EMGroupedSenderObjectID *)self initWithCollectionItemID:v8 threadScope:v9];

  return v10;
}

- (EMGroupedSenderObjectID)initWithBusinessID:(int64_t)a3 threadScope:(id)a4
{
  v6 = a4;
  v7 = [[EMGroupedSenderCollectionItemID alloc] initWithBusinessID:a3];
  v8 = [(EMGroupedSenderObjectID *)self initWithCollectionItemID:v7 threadScope:v6];

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
        v12.super_class = EMGroupedSenderObjectID;
        v6 = [(EMObjectID *)&v12 isEqual:v5];
      }

      else
      {
        v7 = [(EMGroupedSenderObjectID *)self collectionItemID];
        v8 = [(EMGroupedSenderObjectID *)v5 collectionItemID];
        if ([v7 isEqual:v8])
        {
          v9 = [(EMGroupedSenderObjectID *)self threadScope];
          v10 = [(EMGroupedSenderObjectID *)v5 threadScope];
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

- (unint64_t)hash
{
  if ([(EMObjectID *)self isEphemeral])
  {
    v6.receiver = self;
    v6.super_class = EMGroupedSenderObjectID;
    return [(EMObjectID *)&v6 hash];
  }

  else
  {
    v4 = [(EMGroupedSenderObjectID *)self collectionItemID];
    v3 = [v4 hash];
  }

  return v3;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = EMGroupedSenderObjectID;
  v4 = [(EMObjectID *)&v11 description];
  v5 = [(EMGroupedSenderObjectID *)self collectionItemID];
  v6 = [v5 debugDescription];
  v7 = [(EMGroupedSenderObjectID *)self threadScope];
  v8 = [v7 debugDescription];
  v9 = [v3 initWithFormat:@"%@ %@ %@", v4, v6, v8];

  return v9;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = EMGroupedSenderObjectID;
  v4 = [(EMObjectID *)&v11 description];
  v5 = [(EMGroupedSenderObjectID *)self collectionItemID];
  v6 = [v5 description];
  v7 = [(EMGroupedSenderObjectID *)self threadScope];
  v8 = [v7 description];
  v9 = [v3 initWithFormat:@"%@ %@ %@", v4, v6, v8];

  return v9;
}

- (EMGroupedSenderObjectID)initWithCoder:(id)a3
{
  v8 = a3;
  v9 = self;
  v4 = self;
  v5 = v8;
  v6 = EFDecodeCacheableInstance();

  return v6;
}

id __41__EMGroupedSenderObjectID_initWithCoder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v12.receiver = v2;
  v12.super_class = EMGroupedSenderObjectID;
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

void __43__EMGroupedSenderObjectID_encodeWithCoder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7.receiver = *(a1 + 40);
  v7.super_class = EMGroupedSenderObjectID;
  objc_msgSendSuper2(&v7, sel_encodeWithCoder_, v2);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) collectionItemID];
  [v3 encodeObject:v4 forKey:@"EFPropertyKey_collectionItemID"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) threadScope];
  [v5 encodeObject:v6 forKey:@"EFPropertyKey_threadScope"];
}

- (ECEmailAddressConvertible)emailAddress
{
  v2 = [(EMGroupedSenderObjectID *)self collectionItemID];
  v3 = [v2 emailAddress];

  return v3;
}

- (int64_t)businessID
{
  v2 = [(EMGroupedSenderObjectID *)self collectionItemID];
  v3 = [v2 businessID];

  return v3;
}

@end