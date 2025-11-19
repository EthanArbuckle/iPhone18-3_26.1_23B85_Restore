@interface ICAttachmentPreviewImage
@end

@implementation ICAttachmentPreviewImage

void __42__ICAttachmentPreviewImage_UI__imageCache__block_invoke()
{
  if (!imageCache_imageCache)
  {
    imageCache_imageCache = objc_alloc_init(MEMORY[0x1E69B7770]);

    MEMORY[0x1EEE66BB8]();
  }
}

void __92__ICAttachmentPreviewImage_UI__newImageLoaderForUpdatingImageOnCompletion_asyncDataLoading___block_invoke(uint64_t a1)
{
  v2 = [ICAttachmentPreviewImageLoader alloc];
  v3 = *(a1 + 32);
  v7 = [*(a1 + 40) cachedOrientedImage];
  [*(a1 + 40) scale];
  v4 = [(ICAttachmentPreviewImageLoader *)v2 initWithOriginalImage:v3 orientedImage:v7 data:0 scale:*(a1 + 48) previewImageURLs:0 delayLoadingURLs:?];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __92__ICAttachmentPreviewImage_UI__newImageLoaderForUpdatingImageOnCompletion_asyncDataLoading___block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__ICAttachmentPreviewImage_UI__newImageLoaderForUpdatingImageOnCompletion_asyncDataLoading___block_invoke_3;
  v9[3] = &unk_1E84692D0;
  objc_copyWeak(v11, (a1 + 32));
  v11[1] = *(a1 + 40);
  v12 = a3;
  v8 = v5;
  v10 = v8;
  [v7 performBlock:v9];

  objc_destroyWeak(v11);
}

void __92__ICAttachmentPreviewImage_UI__newImageLoaderForUpdatingImageOnCompletion_asyncDataLoading___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained imageID] == *(a1 + 48);
    WeakRetained = v5;
    if (v3)
    {
      v4 = *(a1 + 32);
      if (*(a1 + 56) == 1)
      {
        [v5 setCachedOrientedImage:v4];
      }

      else
      {
        [v5 setCachedImage:v4];
      }

      WeakRetained = v5;
    }
  }
}

void __62__ICAttachmentPreviewImage_UI__asyncImage_aboutToLoadHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69B76B8] concurrentFileLoadLimitSemaphore];
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v14 = [MEMORY[0x1E69B76B8] concurrentFileLoadLimitSemaphore];
    dispatch_semaphore_signal(v14);
  }

  else
  {
    v3 = [MEMORY[0x1E69B76B8] imageCache];
    v4 = [v3 imageForKey:*(a1 + 32)];
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v7 = [*(a1 + 40) loadImage];
      v8 = *(*(a1 + 64) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      if (*(*(*(a1 + 64) + 8) + 40))
      {
        v10 = [MEMORY[0x1E69B76B8] imageCache];
        [v10 setImage:*(*(*(a1 + 64) + 8) + 40) forKey:*(a1 + 32)];
      }
    }

    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__ICAttachmentPreviewImage_UI__asyncImage_aboutToLoadHandler___block_invoke_2;
    block[3] = &unk_1E8469320;
    *v15 = *(a1 + 48);
    v12 = v15[0];
    v17 = *v15;
    v18 = *(a1 + 64);
    dispatch_async(v11, block);

    v13 = [MEMORY[0x1E69B76B8] concurrentFileLoadLimitSemaphore];
    dispatch_semaphore_signal(v13);
  }
}

void *__62__ICAttachmentPreviewImage_UI__asyncImage_aboutToLoadHandler___block_invoke_2(void *result)
{
  if ((*(*(result[5] + 8) + 24) & 1) == 0)
  {
    return (*(result[4] + 16))(result[4], *(*(result[6] + 8) + 40));
  }

  return result;
}

void __37__ICAttachmentPreviewImage_UI__image__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

@end