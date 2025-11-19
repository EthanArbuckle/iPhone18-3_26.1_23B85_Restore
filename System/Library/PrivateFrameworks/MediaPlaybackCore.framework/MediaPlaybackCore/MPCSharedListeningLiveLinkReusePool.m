@interface MPCSharedListeningLiveLinkReusePool
+ (MPCSharedListeningLiveLinkReusePool)sharedReusePool;
- (MPCSharedListeningLiveLinkReusePool)init;
- (id)liveLinkForSessionID:(id)a3;
- (void)storeLiveLink:(id)a3 forSessionID:(id)a4;
@end

@implementation MPCSharedListeningLiveLinkReusePool

- (void)storeLiveLink:(id)a3 forSessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_sessionIDLiveLinkMap setObject:v6 forKey:v7];

  os_unfair_lock_unlock(&self->_lock);
  v8 = dispatch_time(0, 60000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MPCSharedListeningLiveLinkReusePool_storeLiveLink_forSessionID___block_invoke;
  block[3] = &unk_1E8239298;
  v11 = v6;
  v9 = v6;
  dispatch_after(v8, MEMORY[0x1E69E96A0], block);
}

- (id)liveLinkForSessionID:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MPCSharedListeningLiveLinkReusePool.m" lineNumber:36 description:@"sessionIdentifier must not be nil"];
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMapTable *)self->_sessionIDLiveLinkMap objectForKey:v5];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (MPCSharedListeningLiveLinkReusePool)init
{
  v6.receiver = self;
  v6.super_class = MPCSharedListeningLiveLinkReusePool;
  v2 = [(MPCSharedListeningLiveLinkReusePool *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    sessionIDLiveLinkMap = v2->_sessionIDLiveLinkMap;
    v2->_sessionIDLiveLinkMap = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (MPCSharedListeningLiveLinkReusePool)sharedReusePool
{
  if (sharedReusePool_onceToken != -1)
  {
    dispatch_once(&sharedReusePool_onceToken, &__block_literal_global_17799);
  }

  v3 = sharedReusePool___sharedReusePool;

  return v3;
}

uint64_t __54__MPCSharedListeningLiveLinkReusePool_sharedReusePool__block_invoke()
{
  v0 = objc_alloc_init(MPCSharedListeningLiveLinkReusePool);
  v1 = sharedReusePool___sharedReusePool;
  sharedReusePool___sharedReusePool = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end