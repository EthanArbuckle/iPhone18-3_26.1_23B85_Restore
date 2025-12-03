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
  identifier = [self identifier];

  if (identifier)
  {
    imageCache = [MEMORY[0x1E69B76B8] imageCache];
    identifier2 = [self identifier];
    v5 = [imageCache imageForKey:identifier2];
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
  identifier = [self identifier];

  if (identifier)
  {
    imageCache = [MEMORY[0x1E69B76B8] imageCache];
    identifier2 = [self identifier];
    if (v4)
    {
      [imageCache setImage:v4 forKey:identifier2];
    }

    else
    {
      [imageCache removeImageForKey:identifier2];
    }
  }

  else
  {
    imageCache = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(imageCache, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1D4171000, imageCache, OS_LOG_TYPE_DEFAULT, "Trying to set cached image, but the identifier is nil", v8, 2u);
    }
  }
}

- (BOOL)hasCachedImage
{
  cachedImage = [self cachedImage];
  v2 = cachedImage != 0;

  return v2;
}

- (id)orientedImageID
{
  identifier = [self identifier];

  if (identifier)
  {
    v3 = MEMORY[0x1E696AD60];
    identifier2 = [self identifier];
    v5 = [v3 stringWithString:identifier2];

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
  identifier = [self identifier];

  if (identifier)
  {
    imageCache = [MEMORY[0x1E69B76B8] imageCache];
    orientedImageID = [self orientedImageID];
    v5 = [imageCache imageForKey:orientedImageID];
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
  identifier = [self identifier];

  if (identifier)
  {
    imageCache = [MEMORY[0x1E69B76B8] imageCache];
    orientedImageID = [self orientedImageID];
    if (v4)
    {
      [imageCache setImage:v4 forKey:orientedImageID];
    }

    else
    {
      [imageCache removeImageForKey:orientedImageID];
    }
  }

  else
  {
    imageCache = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(imageCache, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1D4171000, imageCache, OS_LOG_TYPE_DEFAULT, "Trying to set cached oriented image, but the identifier is nil", v8, 2u);
    }
  }
}

- (void)orientedImageTransform
{
  attachment = [self attachment];
  if (attachment)
  {
    v8 = attachment;
    attachmentModel = [attachment attachmentModel];
    v5 = attachmentModel;
    if (attachmentModel)
    {
      [attachmentModel previewImageOrientationTransform];
    }

    else
    {
      a2[1] = 0u;
      a2[2] = 0u;
      *a2 = 0u;
    }

    attachment = v8;
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
  cachedOrientedImage = [self cachedOrientedImage];
  if (!cachedOrientedImage)
  {
    cachedOrientedImage = [self image];
    if (cachedOrientedImage)
    {
      previewImageOrientation = [self previewImageOrientation];
      if (previewImageOrientation)
      {
        v4 = previewImageOrientation;
        v5 = objc_alloc(MEMORY[0x1E69DCAB8]);
        ic_CGImage = [cachedOrientedImage ic_CGImage];
        [cachedOrientedImage scale];
        v7 = [v5 initWithCGImage:ic_CGImage scale:v4 orientation:?];

        cachedOrientedImage = v7;
      }
    }

    [self setCachedOrientedImage:cachedOrientedImage];
  }

  return cachedOrientedImage;
}

- (uint64_t)previewImageOrientation
{
  attachment = [self attachment];
  v2 = attachment;
  if (attachment)
  {
    attachmentModel = [attachment attachmentModel];
    previewImageOrientation = [attachmentModel previewImageOrientation];
  }

  else
  {
    previewImageOrientation = 0;
  }

  return previewImageOrientation;
}

- (id)imageWithBackground:()UI
{
  v5 = MEMORY[0x1E69B76B8];
  image = [self image];
  [self orientedImageTransform];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  v10[0] = *MEMORY[0x1E695EFD0];
  v10[1] = v7;
  v10[2] = *(MEMORY[0x1E695EFD0] + 32);
  v8 = [v5 orientedImage:image withTransform:v10 background:a3 backgroundTransform:v11];

  return v8;
}

- (id)orientedImageWithBackground:()UI
{
  v5 = MEMORY[0x1E69B76B8];
  image = [self image];
  [self orientedImageTransform];
  [self orientedImageTransform];
  v7 = [v5 orientedImage:image withTransform:v10 background:a3 backgroundTransform:&v9];

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
  cachedImage = [self cachedImage];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2;
  v35 = __Block_byref_object_dispose__2;
  v36 = 0;
  array = [MEMORY[0x1E695DF70] array];
  previewImageURL = [self previewImageURL];
  if (previewImageURL)
  {
    [array addObject:previewImageURL];
  }

  if ([self isPasswordProtected])
  {
    if (![self isAuthenticated])
    {
      goto LABEL_10;
    }

    decryptedImageData = [self decryptedImageData];
    v11 = [ICAttachmentPreviewImageLoader alloc];
    cachedOrientedImage = [self cachedOrientedImage];
    [self scale];
    v13 = [(ICAttachmentPreviewImageLoader *)v11 initWithOriginalImage:cachedImage orientedImage:cachedOrientedImage data:decryptedImageData scale:array previewImageURLs:a4 delayLoadingURLs:?];
    v14 = v32[5];
    v32[5] = v13;
  }

  else if (a4)
  {
    v15 = [ICAttachmentPreviewImageLoader alloc];
    decryptedImageData = [self cachedOrientedImage];
    [self scale];
    v16 = [(ICAttachmentPreviewImageLoader *)v15 initWithOriginalImage:cachedImage orientedImage:decryptedImageData data:0 scale:array previewImageURLs:1 delayLoadingURLs:?];
    v17 = v32[5];
    v32[5] = v16;
  }

  else
  {
    fileQueue = [self fileQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92__ICAttachmentPreviewImage_UI__newImageLoaderForUpdatingImageOnCompletion_asyncDataLoading___block_invoke;
    block[3] = &unk_1E84692A8;
    v30 = &v31;
    v27 = cachedImage;
    selfCopy = self;
    v29 = array;
    dispatch_sync(fileQueue, block);

    decryptedImageData = v27;
  }

LABEL_10:
  previewImageOrientation = [self previewImageOrientation];
  [v32[5] setImageOrientation:previewImageOrientation];
  if (a3)
  {
    imageID = [self imageID];
    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __92__ICAttachmentPreviewImage_UI__newImageLoaderForUpdatingImageOnCompletion_asyncDataLoading___block_invoke_2;
    v23[3] = &unk_1E84692F8;
    objc_copyWeak(v24, &location);
    v24[1] = imageID;
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
  identifier = [self identifier];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2;
  v33 = __Block_byref_object_dispose__2;
  imageCache = [MEMORY[0x1E69B76B8] imageCache];
  v34 = [imageCache imageForKey:identifier];

  if (!v30[5])
  {
    if (v7)
    {
      v7[2](v7);
    }

    v10 = [self newImageLoaderForUpdatingImageOnCompletion:0 asyncDataLoading:1];
    if ([v10 canLoadImage])
    {
      v27[0] = 0;
      v27[1] = v27;
      v27[2] = 0x2020000000;
      v28 = 0;
      fileQueue = [self fileQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__ICAttachmentPreviewImage_UI__asyncImage_aboutToLoadHandler___block_invoke;
      block[3] = &unk_1E8469348;
      v25 = v27;
      v26 = &v29;
      v22 = identifier;
      v23 = v10;
      v24 = v6;
      v12 = v10;
      dispatch_async(fileQueue, block);

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
      [self setNeedsToBeFetchedFromCloud:1];
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
  v4 = [self asyncImage:v7 aboutToLoadHandler:0];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (void)writeOrientedPreviewToDisk
{
  v6 = *MEMORY[0x1E69E9840];
  identifier = [self identifier];
  v4 = 138412290;
  v5 = identifier;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "Created oriented image for: %@", &v4, 0xCu);
}

@end