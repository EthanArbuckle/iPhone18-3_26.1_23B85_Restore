@interface CAFCachedDescription
- (CAFCacheableDescription)cacheable;
- (CAFCachedDescription)initWithCacheable:(id)a3 lazyRefreshDescription:(BOOL)a4;
- (id)description;
- (void)_lock_refreshDescriptionIfNeeded;
- (void)setNeedsRefreshDescription;
@end

@implementation CAFCachedDescription

- (CAFCachedDescription)initWithCacheable:(id)a3 lazyRefreshDescription:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CAFCachedDescription;
  v7 = [(CAFCachedDescription *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_cacheLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v7->_cacheable, v6);
    if (v4)
    {
      v8->_lazyRefreshDescription = 1;
    }

    else
    {
      v9 = CAFGeneralLogging();
      v8->_lazyRefreshDescription = !os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    }

    [(CAFCachedDescription *)v8 setNeedsRefreshDescription];
  }

  return v8;
}

- (void)setNeedsRefreshDescription
{
  os_unfair_lock_lock(&self->_cacheLock);
  [(CAFCachedDescription *)self setNeedsRefresh:1];
  if (![(CAFCachedDescription *)self lazyRefreshDescription])
  {
    [(CAFCachedDescription *)self _lock_refreshDescriptionIfNeeded];
  }

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (id)description
{
  os_unfair_lock_lock(&self->_cacheLock);
  [(CAFCachedDescription *)self _lock_refreshDescriptionIfNeeded];
  v3 = [(CAFCachedDescription *)self cachedDescription];
  os_unfair_lock_unlock(&self->_cacheLock);

  return v3;
}

- (void)_lock_refreshDescriptionIfNeeded
{
  if ([(CAFCachedDescription *)self needsRefresh])
  {
    v3 = [(CAFCachedDescription *)self cacheable];
    v4 = [v3 currentDescriptionForCache:self];
    v5 = [v4 copy];
    [(CAFCachedDescription *)self setCachedDescription:v5];
  }

  [(CAFCachedDescription *)self setNeedsRefresh:0];
}

- (CAFCacheableDescription)cacheable
{
  WeakRetained = objc_loadWeakRetained(&self->_cacheable);

  return WeakRetained;
}

@end