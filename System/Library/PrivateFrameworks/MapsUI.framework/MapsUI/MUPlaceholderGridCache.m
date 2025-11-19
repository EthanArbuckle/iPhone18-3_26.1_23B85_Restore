@interface MUPlaceholderGridCache
+ (id)unretainedInstance;
- (MUPlaceholderGridCache)init;
- (UIImage)darkGrid;
- (UIImage)lightGrid;
- (void)_cancelSnapshots;
- (void)_saveDarkGrid:(id)a3;
- (void)_saveLightGrid:(id)a3;
- (void)loadPlaceholderGridImages;
@end

@implementation MUPlaceholderGridCache

- (UIImage)darkGrid
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_darkGrid)
  {
    v3 = MUGetShareSheetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_INFO, "Loaded cached dark grid", v8, 2u);
    }
  }

  else
  {
    [(MUPlaceholderGridCache *)self _cancelSnapshots];
    v4 = createMapPlaceholderGrid(0, 300.0, 300.0);
    darkGrid = self->_darkGrid;
    self->_darkGrid = v4;
  }

  v6 = self->_darkGrid;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (UIImage)lightGrid
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lightGrid)
  {
    v3 = MUGetShareSheetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_INFO, "Loaded cached light grid", v8, 2u);
    }
  }

  else
  {
    [(MUPlaceholderGridCache *)self _cancelSnapshots];
    v4 = createMapPlaceholderGrid(1, 300.0, 300.0);
    lightGrid = self->_lightGrid;
    self->_lightGrid = v4;
  }

  v6 = self->_lightGrid;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)_cancelSnapshots
{
  [(MKMapSnapshotter *)self->_lightSnapshotter cancel];
  darkSnapshotter = self->_darkSnapshotter;

  [(MKMapSnapshotter *)darkSnapshotter cancel];
}

- (void)_saveDarkGrid:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (v5)
  {
    objc_storeStrong(&self->_darkGrid, a3);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_saveLightGrid:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (v5)
  {
    objc_storeStrong(&self->_lightGrid, a3);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)loadPlaceholderGridImages
{
  if (self->_lightGrid && self->_darkGrid)
  {
    v3 = MUGetShareSheetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_INFO, "Cache hit for both light and dark grid.", buf, 2u);
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_snapshotterLock);
    [(MUPlaceholderGridCache *)self _cancelSnapshots];
    if (_placeholderSnapshotQueue_onceToken != -1)
    {
      dispatch_once(&_placeholderSnapshotQueue_onceToken, &__block_literal_global_16812);
    }

    v3 = _placeholderSnapshotQueue_snapshotQueue;
    objc_initWeak(buf, self);
    if (!self->_lightGrid)
    {
      v4 = objc_alloc(MEMORY[0x1E696F2B8]);
      v5 = createPlaceholderSnapshotOptions(1, 300.0, 300.0);
      v6 = [v4 initWithOptions:v5];
      lightSnapshotter = self->_lightSnapshotter;
      self->_lightSnapshotter = v6;

      v8 = self->_lightSnapshotter;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __51__MUPlaceholderGridCache_loadPlaceholderGridImages__block_invoke;
      v16[3] = &unk_1E8219C78;
      objc_copyWeak(&v17, buf);
      [(MKMapSnapshotter *)v8 startWithQueue:v3 completionHandler:v16];
      objc_destroyWeak(&v17);
    }

    if (!self->_darkGrid)
    {
      v9 = objc_alloc(MEMORY[0x1E696F2B8]);
      v10 = createPlaceholderSnapshotOptions(0, 300.0, 300.0);
      v11 = [v9 initWithOptions:v10];
      darkSnapshotter = self->_darkSnapshotter;
      self->_darkSnapshotter = v11;

      v13 = self->_darkSnapshotter;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __51__MUPlaceholderGridCache_loadPlaceholderGridImages__block_invoke_14;
      v14[3] = &unk_1E8219C78;
      objc_copyWeak(&v15, buf);
      [(MKMapSnapshotter *)v13 startWithQueue:v3 completionHandler:v14];
      objc_destroyWeak(&v15);
    }

    os_unfair_lock_unlock(&self->_snapshotterLock);
    objc_destroyWeak(buf);
  }
}

void __51__MUPlaceholderGridCache_loadPlaceholderGridImages__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = MUGetShareSheetLog();
    v8 = v7;
    if (a3)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_ERROR, "Failed to render light placeholder grid", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_INFO, "Loaded and saving light grid", v9, 2u);
      }

      v8 = [v5 image];
      [WeakRetained _saveLightGrid:v8];
    }
  }
}

void __51__MUPlaceholderGridCache_loadPlaceholderGridImages__block_invoke_14(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = MUGetShareSheetLog();
    v8 = v7;
    if (a3)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_ERROR, "Failed to render dark placeholder grid", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_INFO, "Loaded and saving dark grid", v9, 2u);
      }

      v8 = [v5 image];
      [WeakRetained _saveDarkGrid:v8];
    }
  }
}

- (MUPlaceholderGridCache)init
{
  v3.receiver = self;
  v3.super_class = MUPlaceholderGridCache;
  result = [(MUPlaceholderGridCache *)&v3 init];
  if (result)
  {
    *&result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)unretainedInstance
{
  WeakRetained = objc_loadWeakRetained(&unretainedInstance__sharedInstance);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(MUPlaceholderGridCache);
    objc_storeWeak(&unretainedInstance__sharedInstance, WeakRetained);
  }

  return WeakRetained;
}

@end