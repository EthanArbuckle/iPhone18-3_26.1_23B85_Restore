@interface EMMessageCollectionItemID
- (BOOL)isEqual:(id)equal;
- (EMMessageCollectionItemID)init;
- (EMMessageCollectionItemID)initWithCoder:(id)coder;
- (EMMessageCollectionItemID)initWithGlobalMessageID:(int64_t)d;
- (NSString)description;
- (id)cachedSelf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMessageCollectionItemID

- (id)cachedSelf
{
  if (cachedSelf_onceToken_2 != -1)
  {
    [EMMessageCollectionItemID(EFCacheable) cachedSelf];
  }

  os_unfair_lock_lock(&cachedSelf_sTableLock_2);
  v3 = [cachedSelf_sUniqueObjectIDs_2 ef_uniquedObject:self];
  os_unfair_lock_unlock(&cachedSelf_sTableLock_2);

  return v3;
}

- (unint64_t)hash
{
  globalMessageID = [(EMMessageCollectionItemID *)self globalMessageID];

  return MEMORY[0x1EEE02BA8](globalMessageID);
}

void __52__EMMessageCollectionItemID_EFCacheable__cachedSelf__block_invoke()
{
  cachedSelf_sTableLock_2 = 0;
  v0 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
  v1 = cachedSelf_sUniqueObjectIDs_2;
  cachedSelf_sUniqueObjectIDs_2 = v0;
}

- (EMMessageCollectionItemID)init
{
  v3.receiver = self;
  v3.super_class = EMMessageCollectionItemID;
  return [(EMMessageCollectionItemID *)&v3 init];
}

- (EMMessageCollectionItemID)initWithGlobalMessageID:(int64_t)d
{
  v8.receiver = self;
  v8.super_class = EMMessageCollectionItemID;
  v4 = [(EMMessageCollectionItemID *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_globalMessageID = d;
  }

  cachedSelf = [(EMMessageCollectionItemID *)v4 cachedSelf];

  return cachedSelf;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else if (([(EMMessageCollectionItemID *)equalCopy isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = equalCopy;
    globalMessageID = [(EMMessageCollectionItemID *)self globalMessageID];
    v7 = globalMessageID == [(EMMessageCollectionItemID *)v5 globalMessageID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"GlobalMessageID:%llu", -[EMMessageCollectionItemID globalMessageID](self, "globalMessageID")];

  return v2;
}

- (EMMessageCollectionItemID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v3 = coderCopy;
  selfCopy = self;
  v5 = EFDecodeCacheableInstance();

  return v5;
}

id __43__EMMessageCollectionItemID_initWithCoder___block_invoke(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = EMMessageCollectionItemID;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  if (v2)
  {
    *(*(a1 + 32) + 8) = [*(a1 + 40) decodeInt64ForKey:@"EFPropertyKey_globalMessageID"];
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v3 = coderCopy;
  EFEncodeCacheableInstance();
}

uint64_t __45__EMMessageCollectionItemID_encodeWithCoder___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) globalMessageID];

  return [v1 encodeInt64:v2 forKey:@"EFPropertyKey_globalMessageID"];
}

@end