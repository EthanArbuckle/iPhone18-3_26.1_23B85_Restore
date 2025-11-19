@interface _CHSDynamicColorCache
+ (_CHSDynamicColorCache)sharedInstance;
- (_CHSDynamicColorCache)init;
- (id)cachedObjectForObject:(id)a3;
@end

@implementation _CHSDynamicColorCache

- (_CHSDynamicColorCache)init
{
  v6.receiver = self;
  v6.super_class = _CHSDynamicColorCache;
  v2 = [(_CHSDynamicColorCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_cache = v2->_lock_cache;
    v2->_lock_cache = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (_CHSDynamicColorCache)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[_CHSDynamicColorCache sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

- (id)cachedObjectForObject:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__6;
  v14 = __Block_byref_object_dispose__6;
  v15 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47___CHSDynamicColorCache_cachedObjectForObject___block_invoke;
  v7[3] = &unk_1E7453A50;
  v7[4] = self;
  v8 = v15;
  v9 = &v10;
  v4 = v15;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __47___CHSDynamicColorCache_cachedObjectForObject___block_invoke(v7);
  os_unfair_lock_unlock(&self->_lock);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

@end