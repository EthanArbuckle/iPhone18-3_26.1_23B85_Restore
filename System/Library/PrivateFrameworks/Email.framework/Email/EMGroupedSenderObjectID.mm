@interface EMGroupedSenderObjectID
- (BOOL)isEqual:(id)equal;
- (ECEmailAddressConvertible)emailAddress;
- (EMGroupedSenderObjectID)init;
- (EMGroupedSenderObjectID)initWithBusinessID:(int64_t)d threadScope:(id)scope;
- (EMGroupedSenderObjectID)initWithCoder:(id)coder;
- (EMGroupedSenderObjectID)initWithCollectionItemID:(id)d predicate:(id)predicate mailboxTypeResolver:(id)resolver;
- (EMGroupedSenderObjectID)initWithCollectionItemID:(id)d threadScope:(id)scope;
- (id)debugDescription;
- (id)description;
- (int64_t)businessID;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (EMGroupedSenderObjectID)initWithCollectionItemID:(id)d threadScope:(id)scope
{
  dCopy = d;
  scopeCopy = scope;
  if (!scopeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMGroupedSenderObjectID.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"threadScope"}];
  }

  v16.receiver = self;
  v16.super_class = EMGroupedSenderObjectID;
  v10 = [(EMObjectID *)&v16 initAsEphemeralID:0];
  v11 = v10;
  v12 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 5, d);
    objc_storeStrong(v11 + 6, scope);
  }

  cachedSelf = [v12 cachedSelf];

  return cachedSelf;
}

- (EMGroupedSenderObjectID)initWithCollectionItemID:(id)d predicate:(id)predicate mailboxTypeResolver:(id)resolver
{
  dCopy = d;
  v9 = [EMMessageListItemPredicates threadScopeForPredicate:predicate withMailboxTypeResolver:resolver];
  v10 = [(EMGroupedSenderObjectID *)self initWithCollectionItemID:dCopy threadScope:v9];

  return v10;
}

- (EMGroupedSenderObjectID)initWithBusinessID:(int64_t)d threadScope:(id)scope
{
  scopeCopy = scope;
  v7 = [[EMGroupedSenderCollectionItemID alloc] initWithBusinessID:d];
  v8 = [(EMGroupedSenderObjectID *)self initWithCollectionItemID:v7 threadScope:scopeCopy];

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
        v12.super_class = EMGroupedSenderObjectID;
        v6 = [(EMObjectID *)&v12 isEqual:v5];
      }

      else
      {
        collectionItemID = [(EMGroupedSenderObjectID *)self collectionItemID];
        collectionItemID2 = [(EMGroupedSenderObjectID *)v5 collectionItemID];
        if ([collectionItemID isEqual:collectionItemID2])
        {
          threadScope = [(EMGroupedSenderObjectID *)self threadScope];
          threadScope2 = [(EMGroupedSenderObjectID *)v5 threadScope];
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
    collectionItemID = [(EMGroupedSenderObjectID *)self collectionItemID];
    v3 = [collectionItemID hash];
  }

  return v3;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = EMGroupedSenderObjectID;
  v4 = [(EMObjectID *)&v11 description];
  collectionItemID = [(EMGroupedSenderObjectID *)self collectionItemID];
  v6 = [collectionItemID debugDescription];
  threadScope = [(EMGroupedSenderObjectID *)self threadScope];
  v8 = [threadScope debugDescription];
  v9 = [v3 initWithFormat:@"%@ %@ %@", v4, v6, v8];

  return v9;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = EMGroupedSenderObjectID;
  v4 = [(EMObjectID *)&v11 description];
  collectionItemID = [(EMGroupedSenderObjectID *)self collectionItemID];
  v6 = [collectionItemID description];
  threadScope = [(EMGroupedSenderObjectID *)self threadScope];
  v8 = [threadScope description];
  v9 = [v3 initWithFormat:@"%@ %@ %@", v4, v6, v8];

  return v9;
}

- (EMGroupedSenderObjectID)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  selfCopy2 = self;
  v5 = coderCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v3 = coderCopy;
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
  collectionItemID = [(EMGroupedSenderObjectID *)self collectionItemID];
  emailAddress = [collectionItemID emailAddress];

  return emailAddress;
}

- (int64_t)businessID
{
  collectionItemID = [(EMGroupedSenderObjectID *)self collectionItemID];
  businessID = [collectionItemID businessID];

  return businessID;
}

@end