@interface PBUICachedSnapshotEffectProvider
- (PBUIBakedEffectSnapshotSource)makeBakedEffectSourceFrom:(uint64_t)a1;
- (id)_effectConfigurationForObserver:(uint64_t)a1;
- (id)cacheKeyForConfiguration:(uint64_t)a1;
- (id)compositeImage:(void *)a3 effectConfiguration:;
- (id)imageForConfiguration:(id *)a1;
- (id)initForSnapshotProvider:(id)a3 cacheIdentifier:(id)a4;
- (id)snapshotSourceForObserver:(id)a3;
- (uint64_t)cache;
- (uint64_t)cacheIdentifier;
- (uint64_t)setCacheIdentifier:(void *)a1;
- (void)dealloc;
- (void)invalidate;
- (void)setCache:(uint64_t)a1;
- (void)setNeedsSourceUpdate;
- (void)setSnapshotProvider:(id)a3;
@end

@implementation PBUICachedSnapshotEffectProvider

- (id)initForSnapshotProvider:(id)a3 cacheIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v27.receiver = self;
  v27.super_class = PBUICachedSnapshotEffectProvider;
  v9 = [(PBUICachedSnapshotEffectProvider *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_snapshotProvider, a3);
    v11 = objc_alloc_init(PBUIBackdropCompositor);
    backdropCompositor = v10->_backdropCompositor;
    v10->_backdropCompositor = v11;

    v13 = objc_alloc_init(PBUIMaterialCompositor);
    materialCompositor = v10->_materialCompositor;
    v10->_materialCompositor = v13;

    v15 = [getPUIMappedImageCacheManagerClass() defaultCacheManager];
    v16 = [v15 checkoutImageCache:v8];
    cache = v10->_cache;
    v10->_cache = v16;

    v18 = [v8 copy];
    cacheIdentifier = v10->_cacheIdentifier;
    v10->_cacheIdentifier = v18;

    objc_initWeak(&location, v10);
    v20 = [PBUIReplicaSourceObserverBox alloc];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __76__PBUICachedSnapshotEffectProvider_initForSnapshotProvider_cacheIdentifier___block_invoke;
    v24[3] = &unk_278362FA8;
    objc_copyWeak(&v25, &location);
    v21 = [(PBUIReplicaSourceObserverBox *)v20 initWithIdentifier:&stru_282FB34B0 activeStateDidChangeHandler:v24];
    observers = v10->_observers;
    v10->_observers = v21;

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __76__PBUICachedSnapshotEffectProvider_initForSnapshotProvider_cacheIdentifier___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    if (a2)
    {
      v4 = [WeakRetained[2] registerSnapshotSourceObserver:WeakRetained];
      v5 = v7[1];
      v7[1] = v4;

      [v7 setNeedsSourceUpdate];
    }

    else
    {
      [WeakRetained[1] invalidate];
      v6 = v7[1];
      v7[1] = 0;
    }

    WeakRetained = v7;
  }
}

- (void)setSnapshotProvider:(id)a3
{
  v5 = a3;
  p_snapshotProvider = &self->_snapshotProvider;
  if (self->_snapshotProvider != v5)
  {
    v7 = v5;
    objc_storeStrong(p_snapshotProvider, a3);
    p_snapshotProvider = [(PBUICachedSnapshotEffectProvider *)self setNeedsSourceUpdate];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](p_snapshotProvider, v5);
}

- (void)dealloc
{
  [(PBUICachedSnapshotEffectProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = PBUICachedSnapshotEffectProvider;
  [(PBUICachedSnapshotEffectProvider *)&v3 dealloc];
}

- (void)invalidate
{
  [(BSInvalidatable *)self->_snapshotSubscription invalidate];
  [(PBUIReplicaSourceObserverBox *)self->_observers invalidate];
  cache = self->_cache;
  self->_cache = 0;

  cacheIdentifier = self->_cacheIdentifier;
  self->_cacheIdentifier = 0;
}

- (void)setNeedsSourceUpdate
{
  v3 = [a1 cacheIdentifier];
  [(PBUICachedSnapshotEffectProvider *)a2 setCacheIdentifier:v3];
}

- (id)snapshotSourceForObserver:(id)a3
{
  v4 = [(PBUICachedSnapshotEffectProvider *)self _effectConfigurationForObserver:a3];
  v5 = [(PBUIBakedEffectSnapshotSource *)self->_currentSource copy];
  [v5 setEffectConfiguration:v4];
  v6 = [(PBUICachedSnapshotEffectProvider *)&self->super.isa imageForConfiguration:v4];
  [v5 setSnapshot:v6];

  return v5;
}

- (id)imageForConfiguration:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1[6] snapshot];
    if ([(PBUIFakeBlurAsset *)v3 imageURL]&& v4)
    {
      v6 = [(PBUICachedSnapshotEffectProvider *)a1 cacheKeyForConfiguration:v3];
      objc_initWeak(&location, a1);
      v7 = a1[8];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __58__PBUICachedSnapshotEffectProvider_imageForConfiguration___block_invoke;
      v8[3] = &unk_278362FD0;
      objc_copyWeak(&v10, &location);
      v9 = v3;
      a1 = [v7 imageForKey:v6 generatingIfNecessaryWithBlock:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    else
    {
      a1 = v4;
    }
  }

  return a1;
}

id __58__PBUICachedSnapshotEffectProvider_imageForConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v4 = MGGetBoolAnswer();
  v5 = 4;
  if (!v4)
  {
    v5 = 0;
  }

  *a2 |= v5;
  if (MGGetBoolAnswer())
  {
    *a2 |= 2uLL;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained[6] snapshot];
  v8 = [(PBUICachedSnapshotEffectProvider *)WeakRetained compositeImage:v7 effectConfiguration:*(a1 + 32)];

  return v8;
}

- (id)compositeImage:(void *)a3 effectConfiguration:
{
  v5 = a2;
  v6 = v5;
  v7 = 0;
  if (a1 && v5)
  {
    v8 = a3;
    v9 = [(PBUIWallpaperEffectConfiguration *)v8 requiresMaterialKitRendering];
    v10 = 32;
    if (v9)
    {
      v10 = 40;
    }

    v11 = *(a1 + v10);
    v15 = 0;
    v7 = [v11 applyEffect:v8 toImage:v6 error:&v15];

    v12 = v15;
    if (v12)
    {
      v13 = PBUILogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(PBUICachedSnapshotEffectProvider *)v6 compositeImage:v12 effectConfiguration:v13];
      }
    }
  }

  return v7;
}

- (uint64_t)setCacheIdentifier:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v13 = v3;
    v3 = BSEqualStrings();
    v4 = v13;
    if ((v3 & 1) == 0)
    {
      v5 = [getPUIMappedImageCacheManagerClass() defaultCacheManager];
      v6 = v5;
      if (v13)
      {
        v7 = [v5 checkoutImageCache:?];
        v8 = a1[8];
        a1[8] = v7;

        v9 = [v13 copy];
      }

      else
      {
        v10 = a1[8];
        a1[8] = 0;

        v9 = 0;
      }

      v11 = a1[7];
      a1[7] = v9;

      [a1 setNeedsSourceUpdate];
      v4 = v13;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (PBUIBakedEffectSnapshotSource)makeBakedEffectSourceFrom:(uint64_t)a1
{
  if (a1)
  {
    v2 = a2;
    v3 = [[PBUIBakedEffectSnapshotSource alloc] initWithSnapshotSource:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_effectConfigurationForObserver:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 48) legibilitySettings];
    v5 = [v4 contentColor];

    v6 = [MEMORY[0x277D75C80] currentTraitCollection];
    v7 = [v6 userInterfaceStyle];

    if (objc_opt_respondsToSelector())
    {
      v8 = [v3 traitCollection];
      v9 = objc_opt_class();
      v10 = v8;
      if (v9)
      {
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      if (v12)
      {
        v7 = [v12 userInterfaceStyle];
      }
    }

    v13 = -[PBUIWallpaperEffectConfiguration initWithStyle:contentColor:userInterfaceStyle:]([PBUIWallpaperEffectConfiguration alloc], [v3 effectiveStyle], v5, v7);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)cacheKeyForConfiguration:(uint64_t)a1
{
  if (a1)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [(PBUIWallpaperEffectConfiguration *)a2 uniqueIdentifier];
    v4 = [v2 stringWithFormat:@"CachedSnapshot-%@", v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)cacheIdentifier
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)cache
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (void)setCache:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

- (void)compositeImage:(os_log_t)log effectConfiguration:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_21E67D000, log, OS_LOG_TYPE_ERROR, "Error compositing image %@: %{public}@", &v3, 0x16u);
}

@end