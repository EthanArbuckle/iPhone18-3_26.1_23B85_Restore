@interface PKRemoteImagePreparer
- (PKRemoteImagePreparer)init;
- (void)fetchRemoteImage:(id)a3 scaleToSize:(CGSize)a4 preheatBitmap:(BOOL)a5 completion:(id)a6;
@end

@implementation PKRemoteImagePreparer

- (PKRemoteImagePreparer)init
{
  v10.receiver = self;
  v10.super_class = PKRemoteImagePreparer;
  v2 = [(PKRemoteImagePreparer *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    preparedImageCache = v2->_preparedImageCache;
    v2->_preparedImageCache = v3;

    [(NSCache *)v2->_preparedImageCache setTotalCostLimit:10485760];
    v2->_completionsLock._os_unfair_lock_opaque = 0;
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v5;

    v7 = dispatch_queue_create("com.apple.PKRemoteImagePreparer", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v7;
  }

  return v2;
}

- (void)fetchRemoteImage:(id)a3 scaleToSize:(CGSize)a4 preheatBitmap:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v12 = a6;
  v13 = width != *MEMORY[0x1E695F060];
  if (height != *(MEMORY[0x1E695F060] + 8))
  {
    v13 = 1;
  }

  if (width == 1.79769313e308)
  {
    v13 = 0;
  }

  if (width == -1.79769313e308)
  {
    v13 = 0;
  }

  v14 = height != 1.79769313e308;
  if (height == -1.79769313e308)
  {
    v14 = 0;
  }

  v15 = v13 && v14;
  v16 = [v11 remoteURL];
  if (v15 == 1)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f-%.2f", *&width, *&height];
  }

  else
  {
    v17 = @"NativeSize";
  }

  v18 = @"RawData";
  if (v7)
  {
    v18 = @"Bitmap";
  }

  v19 = MEMORY[0x1E696AEC0];
  v20 = v18;
  v21 = [v16 absoluteString];
  v22 = [v19 stringWithFormat:@"%@_%@_%@", v21, v17, v20];

  v23 = [(NSCache *)self->_preparedImageCache objectForKey:v22];
  if (v23)
  {
    v12[2](v12, v23);
  }

  else
  {
    os_unfair_lock_lock(&self->_completionsLock);
    v24 = [(NSMutableDictionary *)self->_completionHandlers objectForKey:v22];
    if (!v24)
    {
      v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(NSMutableDictionary *)self->_completionHandlers setObject:v24 forKey:v22];
    }

    v25 = [v12 copy];
    v26 = _Block_copy(v25);
    [v24 addObject:v26];

    os_unfair_lock_unlock(&self->_completionsLock);
    objc_initWeak(&location, self);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __79__PKRemoteImagePreparer_fetchRemoteImage_scaleToSize_preheatBitmap_completion___block_invoke;
    v27[3] = &unk_1E79CDEB0;
    objc_copyWeak(v29, &location);
    v30 = v15;
    v29[1] = *&width;
    v29[2] = *&height;
    v31 = v7;
    v28 = v22;
    [v11 fetchImageWithCompletion:v27];

    objc_destroyWeak(v29);
    objc_destroyWeak(&location);
  }
}

void __79__PKRemoteImagePreparer_fetchRemoteImage_scaleToSize_preheatBitmap_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained[4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__PKRemoteImagePreparer_fetchRemoteImage_scaleToSize_preheatBitmap_completion___block_invoke_2;
  v8[3] = &unk_1E79CDE88;
  v13 = *(a1 + 64);
  v12 = *(a1 + 48);
  v9 = v3;
  v10 = WeakRetained;
  v11 = *(a1 + 32);
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_6;
  block[3] = &unk_1E79C4428;
  v15 = v6;
  v7 = v3;
  dispatch_async(v5, block);
}

void __79__PKRemoteImagePreparer_fetchRemoteImage_scaleToSize_preheatBitmap_completion___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(a1 + 72) == 1)
  {
    v3 = [PKImageResizingConstraints constraintsWithAspectFitToSize:*(a1 + 56), *(a1 + 64)];
    v4 = [*(a1 + 32) resizedImageWithConstraints:v3];

    v2 = v4;
  }

  if (*(a1 + 73) == 1)
  {
    [v2 preheatBitmapData];
  }

  if (v2)
  {
    v5 = [v2 imageRef];
    if (v5)
    {
      v6 = v5;
      BytesPerRow = CGImageGetBytesPerRow(v5);
      v8 = CGImageGetHeight(v6) * BytesPerRow;
    }

    else
    {
      v9 = [v2 imageData];
      v8 = [v9 length];
    }

    [*(*(a1 + 40) + 8) setObject:v2 forKey:*(a1 + 48) cost:v8];
  }

  os_unfair_lock_lock((*(a1 + 40) + 16));
  v10 = [*(*(a1 + 40) + 24) objectForKey:*(a1 + 48)];
  v11 = [v10 copy];
  [v10 removeAllObjects];
  os_unfair_lock_unlock((*(a1 + 40) + 16));
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        (*(*(*(&v17 + 1) + 8 * v16) + 16))(*(*(&v17 + 1) + 8 * v16));
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

@end