@interface HFCameraImageCache
- (BSUIMappedImageCache)imageCache;
- (HFCameraImageCache)initWithUniqueIdentifier:(id)a3;
- (id)imageForKey:(id)a3;
- (void)addImage:(id)a3 forKey:(id)a4;
- (void)purgeAllImages;
- (void)releaseRecoverableResources;
- (void)setImageCache:(id)a3;
@end

@implementation HFCameraImageCache

- (HFCameraImageCache)initWithUniqueIdentifier:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HFCameraImageCache;
  v5 = [(HFCameraImageCache *)&v23 init];
  v6 = v5;
  if (v5)
  {
    v5->_imageCacheLock._os_unfair_lock_opaque = 0;
    v7 = +[HFUtilities cachesDirectoryURL];
    v8 = [v7 URLByAppendingPathComponent:@"MappedImageCache"];
    v9 = [v8 URLByAppendingPathComponent:v4];

    if ([v9 checkResourceIsReachableAndReturnError:0])
    {
      v10 = HFLogForCategory(0x15uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v9 path];
        *buf = 136315394;
        v25 = "[HFCameraImageCache initWithUniqueIdentifier:]";
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "%s: existing image cache found. Attempting to remove it: %@", buf, 0x16u);
      }

      v12 = dispatch_get_global_queue(9, 0);
      if (v12)
      {
        imageCache = v12;
        objc_initWeak(buf, v6);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __47__HFCameraImageCache_initWithUniqueIdentifier___block_invoke;
        block[3] = &unk_277DFE388;
        v20 = v9;
        objc_copyWeak(&v22, buf);
        v21 = v4;
        dispatch_async(imageCache, block);

        objc_destroyWeak(&v22);
        objc_destroyWeak(buf);
LABEL_11:

        goto LABEL_12;
      }

      v14 = HFLogForCategory(0x15uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = [v9 path];
        *buf = 136315394;
        v25 = "[HFCameraImageCache initWithUniqueIdentifier:]";
        v26 = 2112;
        v27 = v18;
        _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "%s: Could not get a global queue with priority background to delete an image cache. Keeping the old one for now: %@", buf, 0x16u);
      }
    }

    v15 = [objc_alloc(MEMORY[0x277CF0D68]) initWithUniqueIdentifier:v4];
    imageCache = v6->_imageCache;
    v6->_imageCache = v15;
    goto LABEL_11;
  }

LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

void __47__HFCameraImageCache_initWithUniqueIdentifier___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = [v2 removeItemAtURL:v3 error:&v10];
  v5 = v10;

  if ((v4 & 1) == 0)
  {
    v6 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[HFCameraImageCache initWithUniqueIdentifier:]_block_invoke";
      v13 = 2112;
      v14 = v5;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "%s: error attempting to remove existing image cache: %@", buf, 0x16u);
    }
  }

  v7 = [objc_alloc(MEMORY[0x277CF0D68]) initWithUniqueIdentifier:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setImageCache:v7];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setImageCache:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_imageCacheLock);
  imageCache = self->_imageCache;
  self->_imageCache = v4;

  os_unfair_lock_unlock(&self->_imageCacheLock);
}

- (BSUIMappedImageCache)imageCache
{
  os_unfair_lock_lock(&self->_imageCacheLock);
  v3 = self->_imageCache;
  os_unfair_lock_unlock(&self->_imageCacheLock);

  return v3;
}

- (void)addImage:(id)a3 forKey:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HFCameraImageCache.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"image"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"HFCameraImageCache.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"key"}];

LABEL_3:
  v10 = [(HFCameraImageCache *)self imageCache];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __38__HFCameraImageCache_addImage_forKey___block_invoke;
  v17[3] = &unk_277DFE3B0;
  v18 = v7;
  v11 = v7;
  v12 = [v10 imageForKey:v9 generatingIfNecessaryWithBlock:v17];

  if (!v12)
  {
    v13 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "Unable to add image to CameraImageCache for key: %@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

id __38__HFCameraImageCache_addImage_forKey___block_invoke(uint64_t a1, uint64_t *a2)
{
  v4 = MGGetBoolAnswer();
  v5 = 4;
  if (!v4)
  {
    v5 = 0;
  }

  *a2 = v5;
  v6 = *(a1 + 32);

  return v6;
}

- (id)imageForKey:(id)a3
{
  v4 = a3;
  v5 = [(HFCameraImageCache *)self imageCache];
  v6 = [v5 imageForKey:v4 generatingIfNecessaryWithBlock:0];

  return v6;
}

- (void)releaseRecoverableResources
{
  v2 = [(HFCameraImageCache *)self imageCache];
  [v2 releaseRecoverableResources];
}

- (void)purgeAllImages
{
  v2 = [(HFCameraImageCache *)self imageCache];
  [v2 removeAllImagesWithCompletion:&__block_literal_global_161];
}

void __36__HFCameraImageCache_purgeAllImages__block_invoke()
{
  v0 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_debug_impl(&dword_20D9BF000, v0, OS_LOG_TYPE_DEBUG, "Purged all camera images from the cache.", v1, 2u);
  }
}

@end