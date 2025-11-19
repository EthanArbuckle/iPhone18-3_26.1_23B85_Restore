@interface FBApplicationDataStoreInProcessRepositoryClientInvalidationSentinel
+ (id)sentinel;
@end

@implementation FBApplicationDataStoreInProcessRepositoryClientInvalidationSentinel

+ (id)sentinel
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__FBApplicationDataStoreInProcessRepositoryClientInvalidationSentinel_sentinel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sentinel_onceToken != -1)
  {
    dispatch_once(&sentinel_onceToken, block);
  }

  v2 = sentinel_sentinel;

  return v2;
}

void __79__FBApplicationDataStoreInProcessRepositoryClientInvalidationSentinel_sentinel__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sentinel_sentinel;
  sentinel_sentinel = v1;
}

@end