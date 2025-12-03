@interface CPSMapsImageLoader
- (CPSMapsImageLoader)initWithImageDownloader:(id)downloader;
- (void)_loadImageForGEOFeatureStyleAttributes:(id)attributes completionHandler:(id)handler;
- (void)loadImageForGEOStyleAttributes:(id)attributes completionHandler:(id)handler;
- (void)loadImageForMapItemMUID:(unint64_t)d completionHandler:(id)handler;
@end

@implementation CPSMapsImageLoader

- (CPSMapsImageLoader)initWithImageDownloader:(id)downloader
{
  downloaderCopy = downloader;
  v14.receiver = self;
  v14.super_class = CPSMapsImageLoader;
  v6 = [(CPSMapsImageLoader *)&v14 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.ClipServices.%@.%p", objc_opt_class(), v6];
    uTF8String = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v10 = dispatch_queue_create(uTF8String, v9);
    queue = v6->_queue;
    v6->_queue = v10;

    objc_storeStrong(&v6->_imageDownloader, downloader);
    v12 = v6;
  }

  return v6;
}

- (void)loadImageForGEOStyleAttributes:(id)attributes completionHandler:(id)handler
{
  attributesCopy = attributes;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CPSMapsImageLoader_loadImageForGEOStyleAttributes_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  v12 = attributesCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = attributesCopy;
  dispatch_async(queue, block);
}

void __71__CPSMapsImageLoader_loadImageForGEOStyleAttributes_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D0EB18]) initWithPlaceStyleAttributes:*(a1 + 32)];
  [*(a1 + 40) _loadImageForGEOFeatureStyleAttributes:v2 completionHandler:*(a1 + 48)];
}

- (void)loadImageForMapItemMUID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CPSMapsImageLoader_loadImageForMapItemMUID_completionHandler___block_invoke;
  block[3] = &unk_278DCF328;
  v10 = handlerCopy;
  dCopy = d;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

void __64__CPSMapsImageLoader_loadImageForMapItemMUID_completionHandler___block_invoke(void *a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D0EBA8]) initWithMUID:a1[6] coordinate:{-180.0, -180.0}];
  v3 = [MEMORY[0x277D0EBD0] sharedService];
  v4 = [v3 defaultTraits];

  [v4 setWantsBrandIcon:1];
  v5 = [MEMORY[0x277D0EBD0] sharedService];
  v12[0] = v2;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [v5 ticketForIdentifiers:v6 resultProviderID:0 contentProvider:0 traits:v4];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__CPSMapsImageLoader_loadImageForMapItemMUID_completionHandler___block_invoke_2;
  v10[3] = &unk_278DCF300;
  v8 = a1[5];
  v10[4] = a1[4];
  v11 = v8;
  [v7 submitWithHandler:v10 networkActivity:0];

  v9 = *MEMORY[0x277D85DE8];
}

void __64__CPSMapsImageLoader_loadImageForMapItemMUID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = [v6 _bestAvatarBrandIconURLForSize:1 allowSmaller:{500.0, 500.0}];
  v8 = [v6 _styleAttributes];
  v9 = v8;
  if (v7)
  {
    [*(*(a1 + 32) + 16) downloadImageWithURL:v7 completionHandler:*(a1 + 40)];
  }

  else if (v8)
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__CPSMapsImageLoader_loadImageForMapItemMUID_completionHandler___block_invoke_3;
    block[3] = &unk_278DCDCF8;
    block[4] = v10;
    v23 = v8;
    v24 = *(a1 + 40);
    dispatch_async(v11, block);
  }

  else
  {
    v12 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __64__CPSMapsImageLoader_loadImageForMapItemMUID_completionHandler___block_invoke_2_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    v20 = *(a1 + 40);
    if (v5)
    {
      (*(v20 + 16))(v20, 0, v5);
    }

    else
    {
      v21 = [MEMORY[0x277CCA9B8] cps_errorWithCode:1];
      (*(v20 + 16))(v20, 0, v21);
    }
  }
}

- (void)_loadImageForGEOFeatureStyleAttributes:(id)attributes completionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  attributesCopy = attributes;
  dispatch_assert_queue_V2(queue);
  v9 = objc_alloc_init(MEMORY[0x277D78198]);
  [v9 setGlyphOnly:1];
  mEMORY[0x277D78190] = [MEMORY[0x277D78190] sharedManager];
  v11 = _CPSScreenScale();
  *&v11 = v11;
  v12 = [mEMORY[0x277D78190] imageForStyleAttributes:attributesCopy withStylesheetName:@"default-search" contentScale:9 sizeGroup:v9 modifiers:v11];

  mEMORY[0x277D78190]2 = [MEMORY[0x277D78190] sharedManager];
  v14 = _CPSScreenScale();
  *&v14 = v14;
  v15 = [mEMORY[0x277D78190]2 imageForStyleAttributes:attributesCopy withStylesheetName:@"default-search" contentScale:9 sizeGroup:0 modifiers:v14];

  image = [v12 image];
  if (v12 && v15)
  {
    v17 = image;
    [v15 imageSize];
    v19 = v18;
    v21 = v20;
    v22 = _CPSScreenScale();
    [v15 imageSize];
    v24 = v23;
    [v15 imageSize];
    v26 = CPSCreateImageFromImageAndBackgroundColor(v17, [v15 fillColor], v19, v21, v22, 0.0, 0.0, v24, v25);
    v27 = CPSImagePNGRepresentation(v26);
    if (v26)
    {
      CGImageRelease(v26);
    }

    if (v27)
    {
      handlerCopy[2](handlerCopy, v27, 0);
    }

    else
    {
      v36 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [(CPSMapsImageLoader *)v36 _loadImageForGEOFeatureStyleAttributes:v37 completionHandler:v38, v39, v40, v41, v42, v43];
      }

      v44 = [MEMORY[0x277CCA9B8] cps_errorWithCode:7];
      (handlerCopy)[2](handlerCopy, 0, v44);
    }
  }

  else
  {
    v28 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(CPSMapsImageLoader *)v28 _loadImageForGEOFeatureStyleAttributes:v29 completionHandler:v30, v31, v32, v33, v34, v35];
    }

    v27 = [MEMORY[0x277CCA9B8] cps_errorWithCode:7];
    (handlerCopy)[2](handlerCopy, 0, v27);
  }
}

@end