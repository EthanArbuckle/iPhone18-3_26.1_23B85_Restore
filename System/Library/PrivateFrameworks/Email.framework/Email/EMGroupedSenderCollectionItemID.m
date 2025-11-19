@interface EMGroupedSenderCollectionItemID
- (BOOL)isEqual:(id)a3;
- (EMGroupedSenderCollectionItemID)initWithBusinessID:(int64_t)a3;
- (EMGroupedSenderCollectionItemID)initWithCoder:(id)a3;
- (NSString)description;
- (id)cachedSelf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMGroupedSenderCollectionItemID

- (id)cachedSelf
{
  if (cachedSelf_onceToken_0 != -1)
  {
    [EMGroupedSenderCollectionItemID(EFCacheable) cachedSelf];
  }

  os_unfair_lock_lock(&cachedSelf_sTableLock_0);
  v3 = [cachedSelf_sUniqueObjectIDs_0 ef_uniquedObject:self];
  os_unfair_lock_unlock(&cachedSelf_sTableLock_0);

  return v3;
}

void __58__EMGroupedSenderCollectionItemID_EFCacheable__cachedSelf__block_invoke()
{
  cachedSelf_sTableLock_0 = 0;
  v0 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
  v1 = cachedSelf_sUniqueObjectIDs_0;
  cachedSelf_sUniqueObjectIDs_0 = v0;
}

void ___ef_log_EMGroupedSenderCollectionItemID_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EMGroupedSenderCollectionItemID");
  v1 = _ef_log_EMGroupedSenderCollectionItemID_log;
  _ef_log_EMGroupedSenderCollectionItemID_log = v0;
}

- (EMGroupedSenderCollectionItemID)initWithBusinessID:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = EMGroupedSenderCollectionItemID;
  v4 = [(EMGroupedSenderCollectionItemID *)&v11 init];
  if (v4)
  {
    if (!a3)
    {
      v5 = _ef_log_EMGroupedSenderCollectionItemID();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        [(EMGroupedSenderCollectionItemID *)v7 initWithBusinessID:v4, buf, v5];
      }

      memset(__b, 170, sizeof(__b));
      __b[8] = 0;
      *v15 = 0xE00000001;
      v16 = 1;
      v17 = getpid();
      v12 = 648;
      if (!sysctl(v15, 4u, __b, &v12, 0, 0) && (__b[8] & 0x800) != 0)
      {
        __debugbreak();
      }
    }

    v4->_businessID = a3;
  }

  v8 = [(EMGroupedSenderCollectionItemID *)v4 cachedSelf];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if (([(EMGroupedSenderCollectionItemID *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = v4;
    v6 = [(EMGroupedSenderCollectionItemID *)self businessID];
    v7 = v6 == [(EMGroupedSenderCollectionItemID *)v5 businessID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(EMGroupedSenderCollectionItemID *)self businessID];

  return MEMORY[0x1EEE02BA8](v2);
}

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"businessID:%llu", -[EMGroupedSenderCollectionItemID businessID](self, "businessID")];

  return v2;
}

- (EMGroupedSenderCollectionItemID)initWithCoder:(id)a3
{
  v8 = a3;
  v3 = v8;
  v4 = self;
  v5 = EFDecodeCacheableInstance();

  return v5;
}

id __49__EMGroupedSenderCollectionItemID_initWithCoder___block_invoke(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = EMGroupedSenderCollectionItemID;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  if (v2)
  {
    *(*(a1 + 32) + 8) = [*(a1 + 40) decodeInt64ForKey:@"EFPropertyKey_businessID"];
  }

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v3 = v4;
  EFEncodeCacheableInstance();
}

uint64_t __51__EMGroupedSenderCollectionItemID_encodeWithCoder___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) businessID];

  return [v1 encodeInt64:v2 forKey:@"EFPropertyKey_businessID"];
}

- (void)initWithBusinessID:(uint8_t *)buf .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412802;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a2;
  *(buf + 11) = 2048;
  *(buf + 3) = 0;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "<%@: %p> Creating collection item id with invalid business id: %lld", buf, 0x20u);
}

@end