@interface PBUICachedSnapshotEffectProvider
- (PBUIBakedEffectSnapshotSource)makeBakedEffectSourceFrom:(uint64_t)from;
- (id)_effectConfigurationForObserver:(uint64_t)observer;
- (id)cacheKeyForConfiguration:(uint64_t)configuration;
- (id)compositeImage:(void *)image effectConfiguration:;
- (id)imageForConfiguration:(id *)configuration;
- (id)initForSnapshotProvider:(id)provider cacheIdentifier:(id)identifier;
- (id)snapshotSourceForObserver:(id)observer;
- (uint64_t)cache;
- (uint64_t)cacheIdentifier;
- (uint64_t)setCacheIdentifier:(void *)identifier;
- (void)dealloc;
- (void)invalidate;
- (void)setCache:(uint64_t)cache;
- (void)setNeedsSourceUpdate;
- (void)setSnapshotProvider:(id)provider;
@end

@implementation PBUICachedSnapshotEffectProvider

- (id)initForSnapshotProvider:(id)provider cacheIdentifier:(id)identifier
{
  providerCopy = provider;
  identifierCopy = identifier;
  v27.receiver = self;
  v27.super_class = PBUICachedSnapshotEffectProvider;
  v9 = [(PBUICachedSnapshotEffectProvider *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_snapshotProvider, provider);
    v11 = objc_alloc_init(PBUIBackdropCompositor);
    backdropCompositor = v10->_backdropCompositor;
    v10->_backdropCompositor = v11;

    v13 = objc_alloc_init(PBUIMaterialCompositor);
    materialCompositor = v10->_materialCompositor;
    v10->_materialCompositor = v13;

    defaultCacheManager = [getPUIMappedImageCacheManagerClass() defaultCacheManager];
    v16 = [defaultCacheManager checkoutImageCache:identifierCopy];
    cache = v10->_cache;
    v10->_cache = v16;

    v18 = [identifierCopy copy];
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

- (void)setSnapshotProvider:(id)provider
{
  providerCopy = provider;
  p_snapshotProvider = &self->_snapshotProvider;
  if (self->_snapshotProvider != providerCopy)
  {
    v7 = providerCopy;
    objc_storeStrong(p_snapshotProvider, provider);
    p_snapshotProvider = [(PBUICachedSnapshotEffectProvider *)self setNeedsSourceUpdate];
    providerCopy = v7;
  }

  MEMORY[0x2821F96F8](p_snapshotProvider, providerCopy);
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
  cacheIdentifier = [self cacheIdentifier];
  [(PBUICachedSnapshotEffectProvider *)a2 setCacheIdentifier:cacheIdentifier];
}

- (id)snapshotSourceForObserver:(id)observer
{
  v4 = [(PBUICachedSnapshotEffectProvider *)self _effectConfigurationForObserver:observer];
  v5 = [(PBUIBakedEffectSnapshotSource *)self->_currentSource copy];
  [v5 setEffectConfiguration:v4];
  v6 = [(PBUICachedSnapshotEffectProvider *)&self->super.isa imageForConfiguration:v4];
  [v5 setSnapshot:v6];

  return v5;
}

- (id)imageForConfiguration:(id *)configuration
{
  v3 = a2;
  if (configuration)
  {
    snapshot = [configuration[6] snapshot];
    if ([(PBUIFakeBlurAsset *)v3 imageURL]&& snapshot)
    {
      v6 = [(PBUICachedSnapshotEffectProvider *)configuration cacheKeyForConfiguration:v3];
      objc_initWeak(&location, configuration);
      v7 = configuration[8];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __58__PBUICachedSnapshotEffectProvider_imageForConfiguration___block_invoke;
      v8[3] = &unk_278362FD0;
      objc_copyWeak(&v10, &location);
      v9 = v3;
      configuration = [v7 imageForKey:v6 generatingIfNecessaryWithBlock:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    else
    {
      configuration = snapshot;
    }
  }

  return configuration;
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

- (id)compositeImage:(void *)image effectConfiguration:
{
  v5 = a2;
  v6 = v5;
  v7 = 0;
  if (self && v5)
  {
    imageCopy = image;
    requiresMaterialKitRendering = [(PBUIWallpaperEffectConfiguration *)imageCopy requiresMaterialKitRendering];
    v10 = 32;
    if (requiresMaterialKitRendering)
    {
      v10 = 40;
    }

    v11 = *(self + v10);
    v15 = 0;
    v7 = [v11 applyEffect:imageCopy toImage:v6 error:&v15];

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

- (uint64_t)setCacheIdentifier:(void *)identifier
{
  v3 = a2;
  v4 = v3;
  if (identifier)
  {
    v13 = v3;
    v3 = BSEqualStrings();
    v4 = v13;
    if ((v3 & 1) == 0)
    {
      defaultCacheManager = [getPUIMappedImageCacheManagerClass() defaultCacheManager];
      v6 = defaultCacheManager;
      if (v13)
      {
        v7 = [defaultCacheManager checkoutImageCache:?];
        v8 = identifier[8];
        identifier[8] = v7;

        v9 = [v13 copy];
      }

      else
      {
        v10 = identifier[8];
        identifier[8] = 0;

        v9 = 0;
      }

      v11 = identifier[7];
      identifier[7] = v9;

      [identifier setNeedsSourceUpdate];
      v4 = v13;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (PBUIBakedEffectSnapshotSource)makeBakedEffectSourceFrom:(uint64_t)from
{
  if (from)
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

- (id)_effectConfigurationForObserver:(uint64_t)observer
{
  v3 = a2;
  if (observer)
  {
    legibilitySettings = [*(observer + 48) legibilitySettings];
    contentColor = [legibilitySettings contentColor];

    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
    userInterfaceStyle = [currentTraitCollection userInterfaceStyle];

    if (objc_opt_respondsToSelector())
    {
      traitCollection = [v3 traitCollection];
      v9 = objc_opt_class();
      v10 = traitCollection;
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
        userInterfaceStyle = [v12 userInterfaceStyle];
      }
    }

    v13 = -[PBUIWallpaperEffectConfiguration initWithStyle:contentColor:userInterfaceStyle:]([PBUIWallpaperEffectConfiguration alloc], [v3 effectiveStyle], contentColor, userInterfaceStyle);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)cacheKeyForConfiguration:(uint64_t)configuration
{
  if (configuration)
  {
    v2 = MEMORY[0x277CCACA8];
    uniqueIdentifier = [(PBUIWallpaperEffectConfiguration *)a2 uniqueIdentifier];
    v4 = [v2 stringWithFormat:@"CachedSnapshot-%@", uniqueIdentifier];
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

- (void)setCache:(uint64_t)cache
{
  if (cache)
  {
    objc_storeStrong((cache + 64), a2);
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