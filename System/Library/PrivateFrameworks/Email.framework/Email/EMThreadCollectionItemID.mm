@interface EMThreadCollectionItemID
- (BOOL)isEqual:(id)equal;
- (EMThreadCollectionItemID)initWithCoder:(id)coder;
- (EMThreadCollectionItemID)initWithConversationID:(int64_t)d;
- (NSString)description;
- (id)cachedSelf;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMThreadCollectionItemID

- (id)cachedSelf
{
  if (cachedSelf_onceToken_4 != -1)
  {
    [EMThreadCollectionItemID(EFCacheable) cachedSelf];
  }

  os_unfair_lock_lock(&cachedSelf_sTableLock_4);
  v3 = [cachedSelf_sUniqueObjectIDs_4 ef_uniquedObject:self];
  os_unfair_lock_unlock(&cachedSelf_sTableLock_4);

  return v3;
}

void __51__EMThreadCollectionItemID_EFCacheable__cachedSelf__block_invoke()
{
  cachedSelf_sTableLock_4 = 0;
  v0 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
  v1 = cachedSelf_sUniqueObjectIDs_4;
  cachedSelf_sUniqueObjectIDs_4 = v0;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  [(EMThreadCollectionItemID *)self conversationID];
  v4 = EFStringWithInt64();
  v5 = [v3 initWithFormat:@"ConversationID:%@", v4];

  return v5;
}

- (EMThreadCollectionItemID)initWithConversationID:(int64_t)d
{
  v8.receiver = self;
  v8.super_class = EMThreadCollectionItemID;
  v4 = [(EMThreadCollectionItemID *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_conversationID = d;
  }

  cachedSelf = [(EMThreadCollectionItemID *)v4 cachedSelf];

  return cachedSelf;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else if (([(EMThreadCollectionItemID *)equalCopy isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = equalCopy;
    conversationID = [(EMThreadCollectionItemID *)self conversationID];
    v7 = conversationID == [(EMThreadCollectionItemID *)v5 conversationID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (EMThreadCollectionItemID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v3 = coderCopy;
  selfCopy = self;
  v5 = EFDecodeCacheableInstance();

  return v5;
}

id __42__EMThreadCollectionItemID_initWithCoder___block_invoke(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = EMThreadCollectionItemID;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  if (v2)
  {
    *(*(a1 + 32) + 8) = [*(a1 + 40) decodeInt64ForKey:@"EFPropertyKey_conversationID"];
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v3 = coderCopy;
  EFEncodeCacheableInstance();
}

uint64_t __44__EMThreadCollectionItemID_encodeWithCoder___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) conversationID];

  return [v1 encodeInt64:v2 forKey:@"EFPropertyKey_conversationID"];
}

@end