@interface MRUImageLoader
- (BOOL)vendCachedImageIfPossible;
- (BOOL)wouldLoadNewImageForCatalog:(id)a3;
- (CGSize)deferredFittingSize;
- (CGSize)fittingSize;
- (CGSize)lastVendedScaledFittingSize;
- (CGSize)scaledFittingSize;
- (CGSize)targetFittingSizeForCurrentCatalogConfiguration;
- (MRUImageLoader)initWithDestination:(id)a3 imageHandler:(id)a4;
- (UIView)destination;
- (void)configureCatalog;
- (void)dealloc;
- (void)deferredUpdateFittingSize;
- (void)setLastVendedArtworkIdentifier:(id)a3;
- (void)setState:(int64_t)a3;
- (void)updateCatalog:(id)a3;
- (void)updateFittingSize:(CGSize)a3 scale:(double)a4;
- (void)withNoEscapeCheck:(id)a3;
@end

@implementation MRUImageLoader

- (MRUImageLoader)initWithDestination:(id)a3 imageHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MRUImageLoader;
  v8 = [(MRUImageLoader *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_destination, v6);
    v10 = [v7 copy];
    imageHandler = v9->_imageHandler;
    v9->_imageHandler = v10;

    v9->_cacheImages = +[MRUFeatureFlagProvider isImageCachingEnabled];
    v9->_formatImages = 1;
    v9->_state = 1;
    v12 = *MEMORY[0x1E695F060];
    v9->_lastVendedScaledFittingSize = *MEMORY[0x1E695F060];
    v9->_fittingSize = v12;
    v9->_failedLoadingCount = 0;
    v9->_scale = 1.0;
    if (+[MRUFeatureFlagProvider isImageCachingEnabled])
    {
      v13 = +[MRUImageLoaderCoordinator sharedCoordinator];
      [v13 registerLoader:v9];
    }
  }

  return v9;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69B0B08] currentSettings];
  v4 = [v3 verboseImageLoadingLogging];

  if (v4)
  {
    v5 = MCLogCategoryImageLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v9 = objc_opt_class();
      v10 = 2048;
      v11 = self;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> deallocating.", buf, 0x16u);
    }
  }

  v6 = +[MRUImageLoaderCoordinator sharedCoordinator];
  [v6 unregisterLoader:self];

  v7.receiver = self;
  v7.super_class = MRUImageLoader;
  [(MRUImageLoader *)&v7 dealloc];
}

- (BOOL)wouldLoadNewImageForCatalog:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(MRUImageLoader *)self destination];
  if (v5)
  {
    if ([(MRUImageLoader *)self state]== 2)
    {
      if (NSClassFromString(&cfstr_Mpcmrcontentit.isa) && ((objc_opt_isKindOfClass() & 1) != 0 || ([v5 artworkCatalog], v6 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0)))
      {
        v8 = [v5 artworkCatalog];
        if ([v4 isArtworkVisuallyIdenticalToCatalog:v8])
        {
          v9 = [v4 visualIdenticalityIdentifier];
          v10 = [v5 artworkCatalog];
          v11 = [v10 visualIdenticalityIdentifier];
          if (v9 == v11)
          {
            v12 = 1;
          }

          else
          {
            v12 = [v9 isEqual:v11];
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v8 = [v5 artworkCatalog];
        v12 = [v8 isArtworkVisuallyIdenticalToCatalog:v4];
      }

      [(MRUImageLoader *)self scaledFittingSize];
      v25 = v24;
      v27 = v26;
      [(MRUImageLoader *)self targetFittingSizeForCurrentCatalogConfiguration];
      v29 = v12 ^ 1;
      if (v25 != v30)
      {
        v29 = 1;
      }

      if (v27 == v28)
      {
        LOBYTE(v13) = v29;
      }

      else
      {
        LOBYTE(v13) = 1;
      }
    }

    else
    {
      [(MRUImageLoader *)self scaledFittingSize];
      v15 = v14;
      v17 = v16;
      [(MRUImageLoader *)self lastVendedScaledFittingSize];
      LOBYTE(v13) = 1;
      if (v15 == v19 && v17 == v18)
      {
        v20 = [v4 visualIdenticalityIdentifier];
        v21 = [v20 stringRepresentation];
        v22 = [(MRUImageLoader *)self lastVendedArtworkIdentifier];
        v23 = [v22 stringRepresentation];
        if (v21 == v23)
        {
          LOBYTE(v13) = 0;
        }

        else
        {
          v13 = [v21 isEqual:v23] ^ 1;
        }
      }
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (void)updateCatalog:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(MRUImageLoader *)self catalog];

  if (v5 != v4)
  {
    [(MRUImageLoader *)self setCatalog:v4];
    if ([(MRUImageLoader *)self wouldLoadNewImageForCatalog:v4])
    {
      v6 = [(MRUImageLoader *)self destination];
      if (v6)
      {
        if (v4)
        {
          if (![(MRUImageLoader *)self vendCachedImageIfPossible])
          {
            [(MRUImageLoader *)self configureCatalog];
          }
        }

        else
        {
          v7 = [MEMORY[0x1E69B0B08] currentSettings];
          v8 = [v7 verboseImageLoadingLogging];

          if (v8)
          {
            v9 = MCLogCategoryImageLoading();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v12 = 138412546;
              v13 = objc_opt_class();
              v14 = 2048;
              v15 = self;
              _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> update with nil catalog.", &v12, 0x16u);
            }
          }

          v10 = [(MRUImageLoader *)self destination];
          [v10 clearArtworkCatalogs];

          [(MRUImageLoader *)self setState:1];
          [(MRUImageLoader *)self setFailedLoadingCount:0];
          [(MRUImageLoader *)self setLastFailedArtworkIdentifier:0];
          [(MRUImageLoader *)self setLastVendedScaledFittingSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
          [(MRUImageLoader *)self setLastVendedArtworkIdentifier:0];
          v11 = [(MRUImageLoader *)self imageHandler];
          v11[2](v11, 0, 0);
        }
      }
    }
  }
}

- (void)updateFittingSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v27 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(MRUImageLoader *)self deferredFittingSize];
  v10 = v9 == width && v8 == height;
  if (!v10 || ([(MRUImageLoader *)self deferredScale], v11 != a4))
  {
    v12 = [MEMORY[0x1E69B0B08] currentSettings];
    v13 = [v12 verboseImageLoadingLogging];

    if (v13)
    {
      v14 = MCLogCategoryImageLoading();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v28.width = width;
        v28.height = height;
        v16 = NSStringFromCGSize(v28);
        *buf = 138413058;
        v20 = v15;
        v21 = 2048;
        v22 = self;
        v23 = 2112;
        v24 = v16;
        v25 = 2048;
        v26 = a4;
        _os_log_impl(&dword_1A20FC000, v14, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> update deferred fitting size: %@, scale: %lf.", buf, 0x2Au);
      }
    }

    [(MRUImageLoader *)self setDeferredFittingSize:width, height];
    [(MRUImageLoader *)self setDeferredScale:a4];
    if (![(MRUImageLoader *)self fittingSizeUpdateScheduled])
    {
      [(MRUImageLoader *)self setFittingSizeUpdateScheduled:1];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42__MRUImageLoader_updateFittingSize_scale___block_invoke;
      block[3] = &unk_1E7663898;
      block[4] = self;
      v17 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)deferredUpdateFittingSize
{
  v49 = *MEMORY[0x1E69E9840];
  [(MRUImageLoader *)self deferredFittingSize];
  v4 = v3;
  v6 = v5;
  [(MRUImageLoader *)self deferredScale];
  v8 = v7;
  [(MRUImageLoader *)self setFittingSizeUpdateScheduled:0];
  v9 = floor(v4);
  v10 = floor(v6);
  [(MRUImageLoader *)self fittingSize];
  v13 = v12 == v9 && v11 == v10;
  if (!v13 || ([(MRUImageLoader *)self scale], v14 != v8))
  {
    [(MRUImageLoader *)self setFittingSize:v9, v10];
    [(MRUImageLoader *)self setScale:v8];
    v15 = [MEMORY[0x1E69B0B08] currentSettings];
    v16 = [v15 verboseImageLoadingLogging];

    if (v16)
    {
      v17 = MCLogCategoryImageLoading();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        [(MRUImageLoader *)self fittingSize];
        v19 = NSStringFromCGSize(v50);
        [(MRUImageLoader *)self scale];
        *buf = 138413058;
        v42 = v18;
        v43 = 2048;
        v44 = self;
        v45 = 2112;
        v46 = v19;
        v47 = 2048;
        v48 = v20;
        _os_log_impl(&dword_1A20FC000, v17, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> update fitting size: %@, scale: %lf.", buf, 0x2Au);
      }
    }

    v21 = [(MRUImageLoader *)self destination];
    v22 = +[MRUImageLoaderCoordinator sharedCoordinator];
    [v22 registeredLoaderFittingSizeDidChange:self];

    if (v21 && ![(MRUImageLoader *)self vendCachedImageIfPossible])
    {
      v23 = [v21 artworkCatalog];
      v24 = [(MRUImageLoader *)self catalog];

      if (v24 == v23)
      {
        if (v23)
        {
          if (+[MRUFeatureFlagProvider isImageCachingEnabled])
          {
            v25 = +[MRUImageLoaderCoordinator sharedCoordinator];
            [v25 requestSize];
            v27 = v26;
            v29 = v28;
          }

          else
          {
            [(MRUImageLoader *)self scaledFittingSize];
            v27 = v30;
            v29 = v31;
          }

          v32 = [MEMORY[0x1E69B0B08] currentSettings];
          v33 = [v32 verboseImageLoadingLogging];

          if (v33)
          {
            v34 = MCLogCategoryImageLoading();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = objc_opt_class();
              v51.width = v27;
              v51.height = v29;
              v36 = NSStringFromCGSize(v51);
              *buf = 138413058;
              v42 = v35;
              v43 = 2048;
              v44 = self;
              v45 = 2112;
              v46 = v36;
              v47 = 2048;
              v48 = v23;
              _os_log_impl(&dword_1A20FC000, v34, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> update fitting size: %@ on associated catalog: %p", buf, 0x2Au);
            }
          }

          [(MRUImageLoader *)self scaledFittingSize];
          [(MRUImageLoader *)self setTargetFittingSizeForCurrentCatalogConfiguration:?];
          [(MRUImageLoader *)self setState:2];
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __43__MRUImageLoader_deferredUpdateFittingSize__block_invoke;
          v37[3] = &unk_1E7665B38;
          v38 = v23;
          v39 = v27;
          v40 = v29;
          [(MRUImageLoader *)self withNoEscapeCheck:v37];
        }
      }

      else
      {
        [(MRUImageLoader *)self configureCatalog];
      }
    }
  }
}

- (BOOL)vendCachedImageIfPossible
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(MRUImageLoader *)self catalog];
  v4 = [v3 overlayDelegate];

  if (v4)
  {
    +[MRUImageUtilities clearCache];
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(MRUImageLoader *)self destination];
    v5 = [(MRUImageLoader *)self catalog];
    v7 = [v5 visualIdenticalityIdentifier];
    v8 = [v7 stringRepresentation];

    LOBYTE(v5) = 0;
    if (v6)
    {
      if (v8)
      {
        [(MRUImageLoader *)self scaledFittingSize];
        v10 = v9;
        v12 = v11;
        v5 = [MRUImageUtilities formattedImageForIdentifier:v8 size:?];
        if (v5)
        {
          [v6 clearArtworkCatalogs];
          v13 = [MEMORY[0x1E69B0B08] currentSettings];
          v14 = [v13 verboseImageLoadingLogging];

          if (v14)
          {
            v15 = MCLogCategoryImageLoading();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v20 = 138413058;
              v21 = objc_opt_class();
              v22 = 2048;
              v23 = self;
              v24 = 2112;
              v25 = v5;
              v26 = 2112;
              v27 = v6;
              _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> Vending cached image %@ to destination %@.", &v20, 0x2Au);
            }
          }

          [(MRUImageLoader *)self setState:6];
          [(MRUImageLoader *)self setFailedLoadingCount:0];
          [(MRUImageLoader *)self setLastFailedArtworkIdentifier:0];
          v16 = [(MRUImageLoader *)self catalog];
          v17 = [v16 visualIdenticalityIdentifier];
          [(MRUImageLoader *)self setLastVendedArtworkIdentifier:v17];

          [(MRUImageLoader *)self setLastVendedScaledFittingSize:v10, v12];
          v18 = [(MRUImageLoader *)self imageHandler];
          (v18)[2](v18, v5, 0);

          LOBYTE(v5) = 1;
        }
      }
    }
  }

  return v5;
}

- (CGSize)scaledFittingSize
{
  [(MRUImageLoader *)self fittingSize];
  v10 = v4;
  v11 = v3;
  [(MRUImageLoader *)self scale];
  v6 = v5;
  [(MRUImageLoader *)self scale];
  CGAffineTransformMakeScale(&v12, v6, v7);
  v8 = vmlaq_n_f64(vmulq_n_f64(*&v12.c, v10), *&v12.a, v11);
  v9 = v8.f64[1];
  result.width = v8.f64[0];
  result.height = v9;
  return result;
}

- (void)setState:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69B0B08] currentSettings];
  v6 = [v5 verboseImageLoadingLogging];

  if (v6)
  {
    v7 = MCLogCategoryImageLoading();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = self->_state - 2;
      if (v9 > 4)
      {
        v10 = @"initial";
      }

      else
      {
        v10 = off_1E7665E68[v9];
      }

      if ((a3 - 2) > 4)
      {
        v11 = @"initial";
      }

      else
      {
        v11 = off_1E7665E68[a3 - 2];
      }

      v12 = 138413058;
      v13 = v8;
      v14 = 2048;
      v15 = self;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> transition %@ -> %@.", &v12, 0x2Au);
    }
  }

  self->_state = a3;
}

- (void)setLastVendedArtworkIdentifier:(id)a3
{
  objc_storeStrong(&self->_lastVendedArtworkIdentifier, a3);
  v5 = a3;
  v6 = +[MRUImageLoaderCoordinator sharedCoordinator];

  [v6 registeredLoaderArtworkIdentifierDidChange:self];
}

- (void)configureCatalog
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = [(MRUImageLoader *)self destination];
  v5 = [(MRUImageLoader *)self catalog];
  v6 = [v5 visualIdenticalityIdentifier];
  if ([(MRUImageLoader *)self state]== 4)
  {
    v7 = [v6 stringRepresentation];
    v2 = [(MRUImageLoader *)self lastFailedArtworkIdentifier];
    v8 = [v2 stringRepresentation];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [v7 isEqual:v8];

      if ((v10 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v17 = [MEMORY[0x1E69B0B08] currentSettings];
    v18 = [v17 verboseImageLoadingLogging];

    if (!v18)
    {
      goto LABEL_31;
    }

    v15 = MCLogCategoryImageLoading();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v33 = objc_opt_class();
      v34 = 2048;
      v35 = self;
      v36 = 2048;
      v37 = v5;
      _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> will not configure catalog %p vending oversized artwork.", buf, 0x20u);
    }

    goto LABEL_13;
  }

LABEL_4:
  v11 = [(MRUImageLoader *)self lastFailedArtworkIdentifier];
  v12 = v11;
  if (v6 == v11)
  {
  }

  else
  {
    v2 = [v6 isEqual:v11];

    if ((v2 & 1) == 0)
    {
      [(MRUImageLoader *)self setFailedLoadingCount:0];
      goto LABEL_14;
    }
  }

  if ([(MRUImageLoader *)self state]== 3 && [(MRUImageLoader *)self failedLoadingCount]>= 3)
  {
    v13 = [MEMORY[0x1E69B0B08] currentSettings];
    v14 = [v13 verboseImageLoadingLogging];

    if (!v14)
    {
      goto LABEL_31;
    }

    v15 = MCLogCategoryImageLoading();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v33 = objc_opt_class();
      v34 = 2048;
      v35 = self;
      v36 = 2048;
      v37 = v5;
      _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> exhausted retries, will not configure catalog %p.", buf, 0x20u);
    }

LABEL_13:

    goto LABEL_31;
  }

LABEL_14:
  if (v4 && v5)
  {
    objc_initWeak(&location, self);
    [(MRUImageLoader *)self setState:2];
    [(MRUImageLoader *)self scaledFittingSize];
    [(MRUImageLoader *)self setTargetFittingSizeForCurrentCatalogConfiguration:?];
    v16 = +[MRUFeatureFlagProvider isImageCachingEnabled];
    if (v16)
    {
      v2 = +[MRUImageLoaderCoordinator sharedCoordinator];
      [v2 requestSize];
    }

    else
    {
      [(MRUImageLoader *)self scaledFittingSize];
    }

    [v5 setFittingSize:?];
    if (v16)
    {
    }

    v19 = [MEMORY[0x1E69B0B08] currentSettings];
    v20 = [v19 verboseImageLoadingLogging];

    if (v20)
    {
      v21 = MCLogCategoryImageLoading();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        v23 = [v5 visualIdenticalityIdentifier];
        v24 = [v23 stringRepresentation];
        [v5 fittingSize];
        v25 = NSStringFromCGSize(v45);
        [(MRUImageLoader *)self scaledFittingSize];
        v26 = NSStringFromCGSize(v46);
        *buf = 138413570;
        v33 = v22;
        v34 = 2048;
        v35 = self;
        v36 = 2048;
        v37 = v5;
        v38 = 2112;
        v39 = v24;
        v40 = 2112;
        v41 = v25;
        v42 = 2112;
        v43 = v26;
        _os_log_impl(&dword_1A20FC000, v21, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> configuring catalog %p, with identifier: %@, request size: %@, scaled fitting size: %@.", buf, 0x3Eu);
      }
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __34__MRUImageLoader_configureCatalog__block_invoke;
    v27[3] = &unk_1E7665E48;
    v28 = v5;
    v29 = v4;
    objc_copyWeak(&v30, &location);
    [(MRUImageLoader *)self withNoEscapeCheck:v27];
    objc_destroyWeak(&v30);

    objc_destroyWeak(&location);
  }

LABEL_31:
}

void __34__MRUImageLoader_configureCatalog__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__MRUImageLoader_configureCatalog__block_invoke_2;
  v3[3] = &unk_1E7665E20;
  objc_copyWeak(&v4, (a1 + 48));
  [v1 setDestination:v2 configurationBlock:v3];
  objc_destroyWeak(&v4);
}

void __34__MRUImageLoader_configureCatalog__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [v5 artworkCatalog];
    if (v6)
    {
      [v6 size];
      v10 = v9;
      [v6 scale];
      v12 = v10 * v11;
      [v6 size];
      v14 = v13;
      [v6 scale];
      if (v12 <= 3000.0 && v14 * v15 <= 3000.0)
      {
        [WeakRetained scaledFittingSize];
        v17 = v16;
        v19 = v18;
        v20 = [v8 dataSource];
        NSClassFromString(&cfstr_Mpartworkcatal_1.isa);
        isKindOfClass = objc_opt_isKindOfClass();

        v22 = [v8 overlayDelegate];
        if (v22 || (isKindOfClass & 1) != 0)
        {
        }

        else if ([WeakRetained cacheImages])
        {
          if (![WeakRetained runningSynchronously])
          {
            v35 = 1;
LABEL_24:
            if ([WeakRetained formatImages])
            {
              v36 = [v8 visualIdenticalityIdentifier];
              v37 = [v36 stringRepresentation];
              v28 = [MRUImageUtilities formatImage:v6 withIdentifier:v37 forDisplayAtSize:v35 useCache:v17, v19];

              if (v28)
              {
LABEL_30:
                v40 = [MEMORY[0x1E69B0B08] currentSettings];
                v41 = [v40 verboseImageLoadingLogging];

                if (v41)
                {
                  v42 = MCLogCategoryImageLoading();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                  {
                    v43 = objc_opt_class();
                    v45 = 138413058;
                    v46 = v43;
                    v47 = 2048;
                    v48 = WeakRetained;
                    v49 = 2112;
                    v50 = v28;
                    v51 = 2112;
                    v52 = v5;
                    _os_log_impl(&dword_1A20FC000, v42, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> Vending formatted image %@ to destination %@.", &v45, 0x2Au);
                  }
                }

                [WeakRetained setState:5];
                [WeakRetained setFailedLoadingCount:0];
                [WeakRetained setLastFailedArtworkIdentifier:0];
                v44 = [v8 visualIdenticalityIdentifier];
                [WeakRetained setLastVendedArtworkIdentifier:v44];

                [WeakRetained setLastVendedScaledFittingSize:{v17, v19}];
                v34 = [WeakRetained imageHandler];
                (v34)[2](v34, v28, 0);
                goto LABEL_35;
              }

              v38 = MCLogCategoryImageLoading();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v39 = objc_opt_class();
                v45 = 138412546;
                v46 = v39;
                v47 = 2048;
                v48 = WeakRetained;
                _os_log_impl(&dword_1A20FC000, v38, OS_LOG_TYPE_ERROR, "[MRUImageLoader] %@<%p> Failed to format image. Will use original.", &v45, 0x16u);
              }
            }

            v28 = v6;
            goto LABEL_30;
          }

          v23 = [MEMORY[0x1E69B0B08] currentSettings];
          v24 = [v23 verboseImageLoadingLogging];

          if (v24)
          {
            v25 = MCLogCategoryImageLoading();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v45 = 138412802;
              v46 = objc_opt_class();
              v47 = 2048;
              v48 = WeakRetained;
              v49 = 2112;
              v50 = v6;
              _os_log_impl(&dword_1A20FC000, v25, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> skip caching for image that is already cached in catalog: %@.", &v45, 0x20u);
            }
          }
        }

        v35 = 0;
        goto LABEL_24;
      }

      [WeakRetained setLastVendedArtworkIdentifier:0];
      v32 = [v8 visualIdenticalityIdentifier];
      [WeakRetained setLastFailedArtworkIdentifier:v32];

      [WeakRetained setState:4];
      v33 = MCLogCategoryImageLoading();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v45 = 138412802;
        v46 = objc_opt_class();
        v47 = 2048;
        v48 = WeakRetained;
        v49 = 2048;
        v50 = v8;
        _os_log_impl(&dword_1A20FC000, v33, OS_LOG_TYPE_ERROR, "[MRUImageLoader] %@<%p> Disassociating catalog %p due to oversized artwork.", &v45, 0x20u);
      }

      [v5 clearArtworkCatalogs];
      v28 = [WeakRetained imageHandler];
      v29 = MEMORY[0x1E696ABC0];
      v30 = @"Image exceeds max allowed size.";
      v31 = 200;
    }

    else
    {
      [WeakRetained setLastVendedArtworkIdentifier:0];
      v26 = [v8 visualIdenticalityIdentifier];
      [WeakRetained setLastFailedArtworkIdentifier:v26];

      [WeakRetained setState:3];
      [WeakRetained setFailedLoadingCount:{objc_msgSend(WeakRetained, "failedLoadingCount") + 1}];
      if ([WeakRetained failedLoadingCount] >= 3)
      {
        v27 = MCLogCategoryImageLoading();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v45 = 138412802;
          v46 = objc_opt_class();
          v47 = 2048;
          v48 = WeakRetained;
          v49 = 2048;
          v50 = v8;
          _os_log_impl(&dword_1A20FC000, v27, OS_LOG_TYPE_ERROR, "[MRUImageLoader] %@<%p> Disassociating catalog %p due to repeated failures.", &v45, 0x20u);
        }

        [v5 clearArtworkCatalogs];
      }

      v28 = [WeakRetained imageHandler];
      v29 = MEMORY[0x1E696ABC0];
      v30 = @"Catalog returned nil image.";
      v31 = 100;
    }

    v34 = [v29 msv_errorWithDomain:@"MRUImageLoaderError" code:v31 debugDescription:v30];
    (*(v28 + 2))(v28, 0, v34);
LABEL_35:
  }
}

- (void)withNoEscapeCheck:(id)a3
{
  v4 = a3;
  [(MRUImageLoader *)self setRunningSynchronously:1];
  v4[2](v4);

  [(MRUImageLoader *)self setRunningSynchronously:0];
}

- (UIView)destination
{
  WeakRetained = objc_loadWeakRetained(&self->_destination);

  return WeakRetained;
}

- (CGSize)targetFittingSizeForCurrentCatalogConfiguration
{
  width = self->_targetFittingSizeForCurrentCatalogConfiguration.width;
  height = self->_targetFittingSizeForCurrentCatalogConfiguration.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)lastVendedScaledFittingSize
{
  width = self->_lastVendedScaledFittingSize.width;
  height = self->_lastVendedScaledFittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)fittingSize
{
  width = self->_fittingSize.width;
  height = self->_fittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)deferredFittingSize
{
  width = self->_deferredFittingSize.width;
  height = self->_deferredFittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end