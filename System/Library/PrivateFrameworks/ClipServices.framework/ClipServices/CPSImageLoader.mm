@interface CPSImageLoader
- (CPSImageLoader)init;
- (void)loadImageForGEOStyleAttributes:(id)attributes completionHandler:(id)handler;
- (void)loadImageForMapItemMUID:(unint64_t)d completionHandler:(id)handler;
- (void)loadImageWithURL:(id)l completionHandler:(id)handler;
@end

@implementation CPSImageLoader

- (CPSImageLoader)init
{
  v11.receiver = self;
  v11.super_class = CPSImageLoader;
  v2 = [(CPSImageLoader *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(CPSImageDownloader);
    imageDownloader = v2->_imageDownloader;
    v2->_imageDownloader = v3;

    v5 = [[CPSMapsImageLoader alloc] initWithImageDownloader:v2->_imageDownloader];
    mapsImageLoader = v2->_mapsImageLoader;
    v2->_mapsImageLoader = v5;

    v7 = objc_alloc_init(CPSImageStore);
    imageStore = v2->_imageStore;
    v2->_imageStore = v7;

    v9 = v2;
  }

  return v2;
}

- (void)loadImageWithURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  imageStore = [(CPSImageLoader *)self imageStore];
  v16 = 0;
  v9 = [objc_opt_class() keyForImageURL:lCopy error:&v16];
  v10 = v16;

  if (v10)
  {
    handlerCopy[2](handlerCopy, 0, v10);
  }

  else
  {
    imageDownloader = [(CPSImageLoader *)self imageDownloader];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__CPSImageLoader_loadImageWithURL_completionHandler___block_invoke;
    v12[3] = &unk_278DCEE38;
    v15 = handlerCopy;
    v12[4] = self;
    v13 = v9;
    v14 = lCopy;
    [imageDownloader downloadImageWithURL:v14 completionHandler:v12];
  }
}

void __53__CPSImageLoader_loadImageWithURL_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) imageStore];
    v7 = *(a1 + 40);
    v12 = 0;
    v8 = [v6 storeImageData:v5 forKey:v7 error:&v12];
    v9 = v12;

    if (v9)
    {
      v10 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __53__CPSImageLoader_loadImageWithURL_completionHandler___block_invoke_cold_1(a1, v10);
      }

      v11 = *(*(a1 + 56) + 16);
    }

    else
    {
      v11 = *(*(a1 + 56) + 16);
    }

    v11();
  }
}

- (void)loadImageForGEOStyleAttributes:(id)attributes completionHandler:(id)handler
{
  attributesCopy = attributes;
  handlerCopy = handler;
  imageStore = [(CPSImageLoader *)self imageStore];
  v18 = 0;
  v9 = [objc_opt_class() keyForGEOStyleAttributes:attributesCopy error:&v18];
  v10 = v18;

  if (v10)
  {
    handlerCopy[2](handlerCopy, 0, v10);
  }

  else
  {
    imageStore2 = [(CPSImageLoader *)self imageStore];
    v12 = [imageStore2 storedImageForKey:v9];

    if (v12)
    {
      (handlerCopy)[2](handlerCopy, v12, 0);
    }

    else
    {
      mapsImageLoader = [(CPSImageLoader *)self mapsImageLoader];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __67__CPSImageLoader_loadImageForGEOStyleAttributes_completionHandler___block_invoke;
      v14[3] = &unk_278DCEE38;
      v17 = handlerCopy;
      v14[4] = self;
      v15 = v9;
      v16 = attributesCopy;
      [mapsImageLoader loadImageForGEOStyleAttributes:v16 completionHandler:v14];
    }
  }
}

void __67__CPSImageLoader_loadImageForGEOStyleAttributes_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) imageStore];
    v7 = *(a1 + 40);
    v12 = 0;
    v8 = [v6 storeImageData:v5 forKey:v7 error:&v12];
    v9 = v12;

    if (v9)
    {
      v10 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __67__CPSImageLoader_loadImageForGEOStyleAttributes_completionHandler___block_invoke_cold_1(a1, v10);
      }

      v11 = *(*(a1 + 56) + 16);
    }

    else
    {
      v11 = *(*(a1 + 56) + 16);
    }

    v11();
  }
}

- (void)loadImageForMapItemMUID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  imageStore = [(CPSImageLoader *)self imageStore];
  v17 = 0;
  v8 = [objc_opt_class() keyForPOIMuid:d error:&v17];
  v9 = v17;

  if (v9)
  {
    handlerCopy[2](handlerCopy, 0, v9);
  }

  else
  {
    imageStore2 = [(CPSImageLoader *)self imageStore];
    v11 = [imageStore2 storedImageForKey:v8];

    if (v11)
    {
      (handlerCopy)[2](handlerCopy, v11, 0);
    }

    else
    {
      mapsImageLoader = [(CPSImageLoader *)self mapsImageLoader];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __60__CPSImageLoader_loadImageForMapItemMUID_completionHandler___block_invoke;
      v13[3] = &unk_278DCEE60;
      v15 = handlerCopy;
      v13[4] = self;
      v14 = v8;
      dCopy = d;
      [mapsImageLoader loadImageForMapItemMUID:d completionHandler:v13];
    }
  }
}

void __60__CPSImageLoader_loadImageForMapItemMUID_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) imageStore];
    v7 = *(a1 + 40);
    v12 = 0;
    v8 = [v6 storeImageData:v5 forKey:v7 error:&v12];
    v9 = v12;

    if (v9)
    {
      v10 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __60__CPSImageLoader_loadImageForMapItemMUID_completionHandler___block_invoke_cold_1(a1, v10);
      }

      v11 = *(*(a1 + 48) + 16);
    }

    else
    {
      v11 = *(*(a1 + 48) + 16);
    }

    v11();
  }
}

void __53__CPSImageLoader_loadImageWithURL_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = a2;
  v4 = [0 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_2436ED000, v5, v6, "Failed to store image for imageURL %{sensitive}@ - %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __67__CPSImageLoader_loadImageForGEOStyleAttributes_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = a2;
  v4 = [0 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_2436ED000, v5, v6, "Failed to store image for style attributes %@ - %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __60__CPSImageLoader_loadImageForMapItemMUID_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = a2;
  v4 = [0 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_2436ED000, v5, v6, "Failed to store image for map item with MUID %{private}llu - %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

@end