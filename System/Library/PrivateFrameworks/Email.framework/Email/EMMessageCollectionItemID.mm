@interface EMMessageCollectionItemID
- (BOOL)isEqual:(id)a3;
- (EMMessageCollectionItemID)init;
- (EMMessageCollectionItemID)initWithCoder:(id)a3;
- (EMMessageCollectionItemID)initWithGlobalMessageID:(int64_t)a3;
- (NSString)description;
- (id)cachedSelf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v2 = [(EMMessageCollectionItemID *)self globalMessageID];

  return MEMORY[0x1EEE02BA8](v2);
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

- (EMMessageCollectionItemID)initWithGlobalMessageID:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = EMMessageCollectionItemID;
  v4 = [(EMMessageCollectionItemID *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_globalMessageID = a3;
  }

  v6 = [(EMMessageCollectionItemID *)v4 cachedSelf];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if (([(EMMessageCollectionItemID *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = v4;
    v6 = [(EMMessageCollectionItemID *)self globalMessageID];
    v7 = v6 == [(EMMessageCollectionItemID *)v5 globalMessageID];
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

- (EMMessageCollectionItemID)initWithCoder:(id)a3
{
  v8 = a3;
  v3 = v8;
  v4 = self;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v3 = v4;
  EFEncodeCacheableInstance();
}

uint64_t __45__EMMessageCollectionItemID_encodeWithCoder___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) globalMessageID];

  return [v1 encodeInt64:v2 forKey:@"EFPropertyKey_globalMessageID"];
}

@end