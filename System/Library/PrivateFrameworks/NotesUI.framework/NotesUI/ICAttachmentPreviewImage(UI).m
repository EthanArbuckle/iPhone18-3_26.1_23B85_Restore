@interface ICAttachmentPreviewImage(UI)
+ (id)imageCache;
+ (id)orientedImage:()UI withTransform:background:backgroundTransform:;
- (BOOL)hasCachedImage;
- (id)asyncImage:()UI aboutToLoadHandler:;
- (id)cachedImage;
- (id)cachedOrientedImage;
- (id)image;
- (id)imageWithBackground:()UI;
- (id)newImageLoaderForUpdatingImageOnCompletion:()UI asyncDataLoading:;
- (id)orientedImage;
- (id)orientedImageID;
- (id)orientedImageWithBackground:()UI;
- (uint64_t)previewImageOrientation;
- (void)orientedImageTransform;
- (void)setCachedImage:()UI;
- (void)setCachedOrientedImage:()UI;
- (void)writeOrientedPreviewToDisk;
@end

@implementation ICAttachmentPreviewImage(UI)

+ (id)imageCache
{
  if (imageCache_onceToken != -1)
  {
    +[ICAttachmentPreviewImage(UI) imageCache];
  }

  v1 = imageCache_imageCache;

  return v1;
}

- (id)cachedImage
{
  v2 = [a1 identifier];

  if (v2)
  {
    v3 = [MEMORY[0x1E69B76B8] imageCache];
    v4 = [a1 identifier];
    v5 = [v3 imageForKey:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1D4171000, v6, OS_LOG_TYPE_DEFAULT, "Trying to get cached image, but the identifier is nil", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)setCachedImage:()UI
{
  v4 = a3;
  v5 = [a1 identifier];

  if (v5)
  {
    v6 = [MEMORY[0x1E69B76B8] imageCache];
    v7 = [a1 identifier];
    if (v4)
    {
      [v6 setImage:v4 forKey:v7];
    }

    else
    {
      [v6 removeImageForKey:v7];
    }
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1D4171000, v6, OS_LOG_TYPE_DEFAULT, "Trying to set cached image, but the identifier is nil", v8, 2u);
    }
  }
}

- (BOOL)hasCachedImage
{
  v1 = [a1 cachedImage];
  v2 = v1 != 0;

  return v2;
}

- (id)orientedImageID
{
  v2 = [a1 identifier];

  if (v2)
  {
    v3 = MEMORY[0x1E696AD60];
    v4 = [a1 identifier];
    v5 = [v3 stringWithString:v4];

    [v5 appendString:*MEMORY[0x1E69B7418]];
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1D4171000, v6, OS_LOG_TYPE_DEFAULT, "Trying to get oriented image ID, but the identifier is nil", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)cachedOrientedImage
{
  v2 = [a1 identifier];

  if (v2)
  {
    v3 = [MEMORY[0x1E69B76B8] imageCache];
    v4 = [a1 orientedImageID];
    v5 = [v3 imageForKey:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1D4171000, v6, OS_LOG_TYPE_DEFAULT, "Trying to get cached oriented image, but the identifier is nil", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)setCachedOrientedImage:()UI
{
  v4 = a3;
  v5 = [a1 identifier];

  if (v5)
  {
    v6 = [MEMORY[0x1E69B76B8] imageCache];
    v7 = [a1 orientedImageID];
    if (v4)
    {
      [v6 setImage:v4 forKey:v7];
    }

    else
    {
      [v6 removeImageForKey:v7];
    }
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1D4171000, v6, OS_LOG_TYPE_DEFAULT, "Trying to set cached oriented image, but the identifier is nil", v8, 2u);
    }
  }
}

- (void)orientedImageTransform
{
  v3 = [a1 attachment];
  if (v3)
  {
    v8 = v3;
    v4 = [v3 attachmentModel];
    v5 = v4;
    if (v4)
    {
      [v4 previewImageOrientationTransform];
    }

    else
    {
      a2[1] = 0u;
      a2[2] = 0u;
      *a2 = 0u;
    }

    v3 = v8;
  }

  else
  {
    v6 = MEMORY[0x1E695EFD0];
    v7 = *(MEMORY[0x1E695EFD0] + 16);
    *a2 = *MEMORY[0x1E695EFD0];
    a2[1] = v7;
    a2[2] = *(v6 + 32);
  }
}

- (id)orientedImage
{
  v2 = [a1 cachedOrientedImage];
  if (!v2)
  {
    v2 = [a1 image];
    if (v2)
    {
      v3 = [a1 previewImageOrientation];
      if (v3)
      {
        v4 = v3;
        v5 = objc_alloc(MEMORY[0x1E69DCAB8]);
        v6 = [v2 ic_CGImage];
        [v2 scale];
        v7 = [v5 initWithCGImage:v6 scale:v4 orientation:?];

        v2 = v7;
      }
    }

    [a1 setCachedOrientedImage:v2];
  }

  return v2;
}

- (uint64_t)previewImageOrientation
{
  v1 = [a1 attachment];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 attachmentModel];
    v4 = [v3 previewImageOrientation];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)imageWithBackground:()UI
{
  v5 = MEMORY[0x1E69B76B8];
  v6 = [a1 image];
  [a1 orientedImageTransform];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  v10[0] = *MEMORY[0x1E695EFD0];
  v10[1] = v7;
  v10[2] = *(MEMORY[0x1E695EFD0] + 32);
  v8 = [v5 orientedImage:v6 withTransform:v10 background:a3 backgroundTransform:v11];

  return v8;
}

- (id)orientedImageWithBackground:()UI
{
  v5 = MEMORY[0x1E69B76B8];
  v6 = [a1 image];
  [a1 orientedImageTransform];
  [a1 orientedImageTransform];
  v7 = [v5 orientedImage:v6 withTransform:v10 background:a3 backgroundTransform:&v9];

  return v7;
}

+ (id)orientedImage:()UI withTransform:background:backgroundTransform:
{
  v6 = a4[1];
  v11[0] = *a4;
  v11[1] = v6;
  v11[2] = a4[2];
  v7 = a6[1];
  v10[0] = *a6;
  v10[1] = v7;
  v10[2] = a6[2];
  v8 = [ICAttachmentPreviewImageLoader orientedImage:a3 withTransform:v11 background:a5 backgroundTransform:v10];

  return v8;
}

- (id)newImageLoaderForUpdatingImageOnCompletion:()UI asyncDataLoading:
{
  v7 = [a1 cachedImage];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2;
  v35 = __Block_byref_object_dispose__2;
  v36 = 0;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [a1 previewImageURL];
  if (v9)
  {
    [v8 addObject:v9];
  }

  if ([a1 isPasswordProtected])
  {
    if (![a1 isAuthenticated])
    {
      goto LABEL_10;
    }

    v10 = [a1 decryptedImageData];
    v11 = [ICAttachmentPreviewImageLoader alloc];
    v12 = [a1 cachedOrientedImage];
    [a1 scale];
    v13 = [(ICAttachmentPreviewImageLoader *)v11 initWithOriginalImage:v7 orientedImage:v12 data:v10 scale:v8 previewImageURLs:a4 delayLoadingURLs:?];
    v14 = v32[5];
    v32[5] = v13;
  }

  else if (a4)
  {
    v15 = [ICAttachmentPreviewImageLoader alloc];
    v10 = [a1 cachedOrientedImage];
    [a1 scale];
    v16 = [(ICAttachmentPreviewImageLoader *)v15 initWithOriginalImage:v7 orientedImage:v10 data:0 scale:v8 previewImageURLs:1 delayLoadingURLs:?];
    v17 = v32[5];
    v32[5] = v16;
  }

  else
  {
    v18 = [a1 fileQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92__ICAttachmentPreviewImage_UI__newImageLoaderForUpdatingImageOnCompletion_asyncDataLoading___block_invoke;
    block[3] = &unk_1E84692A8;
    v30 = &v31;
    v27 = v7;
    v28 = a1;
    v29 = v8;
    dispatch_sync(v18, block);

    v10 = v27;
  }

LABEL_10:
  v19 = [a1 previewImageOrientation];
  [v32[5] setImageOrientation:v19];
  if (a3)
  {
    v20 = [a1 imageID];
    objc_initWeak(&location, a1);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __92__ICAttachmentPreviewImage_UI__newImageLoaderForUpdatingImageOnCompletion_asyncDataLoading___block_invoke_2;
    v23[3] = &unk_1E84692F8;
    objc_copyWeak(v24, &location);
    v24[1] = v20;
    [v32[5] setImageDidLoadBlock:v23];
    objc_destroyWeak(v24);
    objc_destroyWeak(&location);
  }

  v21 = v32[5];

  _Block_object_dispose(&v31, 8);
  return v21;
}

- (id)asyncImage:()UI aboutToLoadHandler:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 identifier];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2;
  v33 = __Block_byref_object_dispose__2;
  v9 = [MEMORY[0x1E69B76B8] imageCache];
  v34 = [v9 imageForKey:v8];

  if (!v30[5])
  {
    if (v7)
    {
      v7[2](v7);
    }

    v10 = [a1 newImageLoaderForUpdatingImageOnCompletion:0 asyncDataLoading:1];
    if ([v10 canLoadImage])
    {
      v27[0] = 0;
      v27[1] = v27;
      v27[2] = 0x2020000000;
      v28 = 0;
      v11 = [a1 fileQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__ICAttachmentPreviewImage_UI__asyncImage_aboutToLoadHandler___block_invoke;
      block[3] = &unk_1E8469348;
      v25 = v27;
      v26 = &v29;
      v22 = v8;
      v23 = v10;
      v24 = v6;
      v12 = v10;
      dispatch_async(v11, block);

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __62__ICAttachmentPreviewImage_UI__asyncImage_aboutToLoadHandler___block_invoke_3;
      aBlock[3] = &unk_1E8469370;
      aBlock[4] = v27;
      v13 = _Block_copy(aBlock);

      _Block_object_dispose(v27, 8);
      if (v13)
      {
        goto LABEL_9;
      }
    }

    else
    {
      [a1 setNeedsToBeFetchedFromCloud:1];
    }
  }

  v14 = dispatch_get_global_queue(0, 0);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__ICAttachmentPreviewImage_UI__asyncImage_aboutToLoadHandler___block_invoke_4;
  v17[3] = &unk_1E8469398;
  v18 = v6;
  v19 = &v29;
  dispatch_async(v14, v17);

  v13 = 0;
LABEL_9:
  v15 = _Block_copy(v13);

  _Block_object_dispose(&v29, 8);

  return v15;
}

- (id)image
{
  v2 = dispatch_semaphore_create(0);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2;
  v14 = __Block_byref_object_dispose__2;
  v15 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__ICAttachmentPreviewImage_UI__image__block_invoke;
  v7[3] = &unk_1E84693C0;
  v9 = &v10;
  v3 = v2;
  v8 = v3;
  v4 = [a1 asyncImage:v7 aboutToLoadHandler:0];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (void)writeOrientedPreviewToDisk
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "Created oriented image for: %@", &v4, 0xCu);
}

@end