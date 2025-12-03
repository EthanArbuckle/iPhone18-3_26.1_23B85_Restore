@interface HKAppImageManager
+ (id)defaultAppIcon;
+ (id)defaultAppIconTableUI;
+ (id)defaultDeviceIconTableUIForSource:(id)source;
+ (id)sharedImageManager;
- (HKAppImageManager)init;
- (id)MindfulnessAppIconForVisionPro:(id)pro;
- (id)_queue_fetchIconFromLaunchServicesWithIdentifier:(id)identifier;
- (id)_queue_researchStudyIconForSource:(id)source;
- (id)_queue_synchronousLoadIconForSource:(id)source productType:(id)type;
- (id)iconForDevice:(id)device;
- (id)iconForSource:(id)source productType:(id)type;
- (id)researchStudyIconForSource:(id)source;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)_dispatchResponsesForAppIconForIdentifier:(id)identifier appImage:(id)image;
- (void)_enqueueRequestForAppIconForIdentifier:(id)identifier productType:(id)type;
- (void)_queue_cacheAppIcon:(id)icon forIdentifier:(id)identifier productType:(id)type;
- (void)_queue_loadAppIconForSource:(id)source productType:(id)type onCompletion:(id)completion;
- (void)cacheAppIcon:(id)icon forIdentifier:(id)identifier;
- (void)clearImageCache;
- (void)loadAppImageAtURL:(id)l productType:(id)type crop:(int64_t)crop completionHandler:(id)handler;
- (void)loadIconForSource:(id)source productType:(id)type completionHandler:(id)handler;
- (void)loadIconForSource:(id)source productType:(id)type syncHandler:(id)handler asyncHandler:(id)asyncHandler;
- (void)loadIconForSource:(id)source syncHandler:(id)handler asyncHandler:(id)asyncHandler;
@end

@implementation HKAppImageManager

+ (id)sharedImageManager
{
  if (sharedImageManager_onceToken != -1)
  {
    +[HKAppImageManager sharedImageManager];
  }

  v3 = sharedImageManager___appImageManager;

  return v3;
}

uint64_t __39__HKAppImageManager_sharedImageManager__block_invoke()
{
  v0 = objc_alloc_init(HKAppImageManager);
  v1 = sharedImageManager___appImageManager;
  sharedImageManager___appImageManager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (HKAppImageManager)init
{
  v21.receiver = self;
  v21.super_class = HKAppImageManager;
  v2 = [(HKAppImageManager *)&v21 init];
  if (v2)
  {
    v3 = MEMORY[0x1E696AF78];
    defaultSessionConfiguration = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v6 = [v3 sessionWithConfiguration:defaultSessionConfiguration delegate:v2 delegateQueue:mainQueue];
    session = v2->_session;
    v2->_session = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    iconCacheByProductType = v2->_iconCacheByProductType;
    v2->_iconCacheByProductType = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    outstandingRequests = v2->_outstandingRequests;
    v2->_outstandingRequests = v10;

    v12 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:0];
    containers = v2->_containers;
    v2->_containers = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    urlConnections = v2->_urlConnections;
    v2->_urlConnections = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = HKCreateSerialDispatchQueue();
    managerQueue = v2->_managerQueue;
    v2->_managerQueue = v18;
  }

  return v2;
}

+ (id)defaultAppIcon
{
  if (defaultAppIcon_onceToken != -1)
  {
    +[HKAppImageManager defaultAppIcon];
  }

  v3 = defaultAppIcon___defaultAppIcon;

  return v3;
}

void __35__HKAppImageManager_defaultAppIcon__block_invoke()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 scale];
  v2 = v1;

  v10 = [MEMORY[0x1E69A8A00] genericApplicationIcon];
  v3 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A78]];
  [v3 setScale:v2];
  v4 = [v10 prepareImageForDescriptor:v3];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E69DCAB8];
    v7 = [v4 CGImage];
    [v5 scale];
    v8 = [v6 imageWithCGImage:v7 scale:0 orientation:?];
    v9 = defaultAppIcon___defaultAppIcon;
    defaultAppIcon___defaultAppIcon = v8;
  }
}

+ (id)defaultAppIconTableUI
{
  if (defaultAppIconTableUI_onceToken != -1)
  {
    +[HKAppImageManager defaultAppIconTableUI];
  }

  v3 = defaultAppIconTableUI___defaultAppIconTableUI;

  return v3;
}

void __42__HKAppImageManager_defaultAppIconTableUI__block_invoke()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 scale];
  v2 = v1;

  v10 = [MEMORY[0x1E69A8A00] genericApplicationIcon];
  v3 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8AA0]];
  [v3 setScale:v2];
  v4 = [v10 prepareImageForDescriptor:v3];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E69DCAB8];
    v7 = [v4 CGImage];
    [v5 scale];
    v8 = [v6 imageWithCGImage:v7 scale:0 orientation:?];
    v9 = defaultAppIconTableUI___defaultAppIconTableUI;
    defaultAppIconTableUI___defaultAppIconTableUI = v8;
  }
}

+ (id)defaultDeviceIconTableUIForSource:(id)source
{
  v3 = MEMORY[0x1E69DCAD8];
  v4 = MEMORY[0x1E69DC888];
  sourceCopy = source;
  systemBlueColor = [v4 systemBlueColor];
  v7 = [v3 configurationWithHierarchicalColor:systemBlueColor];

  LODWORD(systemBlueColor) = [sourceCopy _isAppleWatch];
  if (systemBlueColor)
  {
    v8 = @"Watch1,2";
  }

  else
  {
    v8 = @"iPhone10,6";
  }

  v9 = [MEMORY[0x1E6982C40] _typeWithDeviceModelCode:v8];
  v10 = MEMORY[0x1E69A8A40];
  identifier = [v9 identifier];
  v17 = 0;
  v12 = [v10 symbolForTypeIdentifier:identifier error:&v17];

  if (v12)
  {
    v13 = MEMORY[0x1E69DCAB8];
    name = [v12 name];
    v15 = [v13 _systemImageNamed:name withConfiguration:v7];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)clearImageCache
{
  dispatch_assert_queue_not_V2(self->_managerQueue);
  managerQueue = self->_managerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__HKAppImageManager_clearImageCache__block_invoke;
  block[3] = &unk_1E81B55A8;
  block[4] = self;
  dispatch_sync(managerQueue, block);
}

- (void)cacheAppIcon:(id)icon forIdentifier:(id)identifier
{
  iconCopy = icon;
  identifierCopy = identifier;
  dispatch_assert_queue_not_V2(self->_managerQueue);
  managerQueue = self->_managerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__HKAppImageManager_cacheAppIcon_forIdentifier___block_invoke;
  block[3] = &unk_1E81B5A10;
  block[4] = self;
  v12 = iconCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = iconCopy;
  dispatch_sync(managerQueue, block);
}

void __48__HKAppImageManager_cacheAppIcon_forIdentifier___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = [MEMORY[0x1E696C608] currentDeviceProductType];
  [v1 _queue_cacheAppIcon:v2 forIdentifier:v3 productType:v4];
}

- (void)loadIconForSource:(id)source productType:(id)type completionHandler:(id)handler
{
  sourceCopy = source;
  typeCopy = type;
  handlerCopy = handler;
  managerQueue = self->_managerQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__HKAppImageManager_loadIconForSource_productType_completionHandler___block_invoke;
  v15[3] = &unk_1E81BB750;
  v16 = sourceCopy;
  v17 = typeCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = typeCopy;
  v13 = handlerCopy;
  v14 = sourceCopy;
  dispatch_async(managerQueue, v15);
}

void __69__HKAppImageManager_loadIconForSource_productType_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x1E696C4A8] bundleIdentifierForIconForSource:?];
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = [*(a1 + 32) bundleIdentifier];
    }

    v14 = v4;

    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = [MEMORY[0x1E696C608] currentDeviceProductType];
    }

    v8 = v7;
    if (v14 && ([*(a1 + 48) iconCacheByProductType], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", v8), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", v14), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v11))
    {
      (*(*(a1 + 56) + 16))();
    }

    else if ([*(a1 + 32) _isApplication])
    {
      [*(a1 + 48) _queue_loadAppIconForSource:*(a1 + 32) productType:v8 onCompletion:*(a1 + 56)];
    }

    else
    {
      v12 = *(a1 + 56);
      v13 = [*(a1 + 48) _queue_synchronousLoadIconForSource:*(a1 + 32) productType:v8];
      (*(v12 + 16))(v12, v13, 0, 1, 0);
    }
  }

  else
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }
}

- (id)iconForSource:(id)source productType:(id)type
{
  sourceCopy = source;
  typeCopy = type;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__25;
  v21 = __Block_byref_object_dispose__25;
  v22 = 0;
  dispatch_assert_queue_not_V2(self->_managerQueue);
  managerQueue = self->_managerQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__HKAppImageManager_iconForSource_productType___block_invoke;
  v13[3] = &unk_1E81BB778;
  v13[4] = self;
  v14 = sourceCopy;
  v15 = typeCopy;
  v16 = &v17;
  v9 = typeCopy;
  v10 = sourceCopy;
  dispatch_sync(managerQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __47__HKAppImageManager_iconForSource_productType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_synchronousLoadIconForSource:*(a1 + 40) productType:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)loadIconForSource:(id)source syncHandler:(id)handler asyncHandler:(id)asyncHandler
{
  v8 = MEMORY[0x1E696C608];
  asyncHandlerCopy = asyncHandler;
  handlerCopy = handler;
  sourceCopy = source;
  currentDeviceProductType = [v8 currentDeviceProductType];
  [(HKAppImageManager *)self loadIconForSource:sourceCopy productType:currentDeviceProductType syncHandler:handlerCopy asyncHandler:asyncHandlerCopy];
}

- (void)loadIconForSource:(id)source productType:(id)type syncHandler:(id)handler asyncHandler:(id)asyncHandler
{
  sourceCopy = source;
  typeCopy = type;
  handlerCopy = handler;
  asyncHandlerCopy = asyncHandler;
  dispatch_assert_queue_not_V2(self->_managerQueue);
  if (sourceCopy)
  {
    v14 = [(HKAppImageManager *)self iconForSource:sourceCopy productType:typeCopy];
    if (v14)
    {
      handlerCopy[2](handlerCopy, v14);
      managerQueue = self->_managerQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __76__HKAppImageManager_loadIconForSource_productType_syncHandler_asyncHandler___block_invoke_2;
      block[3] = &unk_1E81B77A0;
      v16 = &v22;
      v22 = asyncHandlerCopy;
      dispatch_async(managerQueue, block);
    }

    else
    {
      defaultAppIconTableUI = [objc_opt_class() defaultAppIconTableUI];
      handlerCopy[2](handlerCopy, defaultAppIconTableUI);

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __76__HKAppImageManager_loadIconForSource_productType_syncHandler_asyncHandler___block_invoke_3;
      v19[3] = &unk_1E81BB7A0;
      v16 = &v20;
      v20 = asyncHandlerCopy;
      [(HKAppImageManager *)self loadIconForSource:sourceCopy productType:typeCopy completionHandler:v19];
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
    v17 = self->_managerQueue;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __76__HKAppImageManager_loadIconForSource_productType_syncHandler_asyncHandler___block_invoke;
    v23[3] = &unk_1E81B77A0;
    v24 = asyncHandlerCopy;
    dispatch_async(v17, v23);
    v14 = v24;
  }
}

- (id)_queue_synchronousLoadIconForSource:(id)source productType:(id)type
{
  sourceCopy = source;
  typeCopy = type;
  if (!sourceCopy)
  {
    v11 = 0;
    goto LABEL_30;
  }

  v8 = [MEMORY[0x1E696C4A8] bundleIdentifierForIconForSource:sourceCopy];
  v9 = v8;
  if (v8)
  {
    bundleIdentifier = v8;
  }

  else
  {
    bundleIdentifier = [sourceCopy bundleIdentifier];
  }

  v12 = bundleIdentifier;

  if (typeCopy)
  {
    if (!v12)
    {
      goto LABEL_11;
    }

LABEL_10:
    v13 = [(NSMutableDictionary *)self->_iconCacheByProductType objectForKeyedSubscript:typeCopy];
    v11 = [v13 objectForKeyedSubscript:v12];

    if (v11)
    {
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  typeCopy = [MEMORY[0x1E696C608] currentDeviceProductType];
  if (v12)
  {
    goto LABEL_10;
  }

LABEL_11:
  if ([sourceCopy _isPeripheralSource])
  {
    _productType = [sourceCopy _productType];
    v15 = [HKUIIconUtilties appleDeviceIconForHardwareVersion:_productType];

    if (!v15)
    {
      v16 = HKBluetoothIcon();
LABEL_19:
      v11 = v16;

      goto LABEL_29;
    }

LABEL_18:
    v16 = v15;
    goto LABEL_19;
  }

  if ([sourceCopy _isConnectedGymSource])
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x1E696B940];
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
    {
      [HKAppImageManager _queue_synchronousLoadIconForSource:v17 productType:?];
    }

    _productType2 = [sourceCopy _productType];
    v15 = [HKUIIconUtilties appleDeviceIconForHardwareVersion:_productType2];

    if (!v15)
    {
      v16 = HKDeviceImage(@"watch");
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ([sourceCopy _isResearchStudy])
  {
    v19 = [(HKAppImageManager *)self _queue_researchStudyIconForSource:sourceCopy];
  }

  else if ([sourceCopy _isApplication])
  {
    v19 = [(HKAppImageManager *)self _queue_fetchIconFromLaunchServicesWithIdentifier:v12];
  }

  else
  {
    if ([sourceCopy _isPreferredSource] && (objc_msgSend(sourceCopy, "_isApplication") & 1) == 0)
    {
      v21 = MEMORY[0x1E6982C40];
      _productType3 = [sourceCopy _productType];
      v23 = [v21 _typeWithDeviceModelCode:_productType3];

      v24 = MEMORY[0x1E69A8A40];
      identifier = [v23 identifier];
      v32 = 0;
      v26 = [v24 symbolForTypeIdentifier:identifier error:&v32];

      v27 = MEMORY[0x1E69DCAD8];
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      v29 = [v27 configurationWithHierarchicalColor:systemBlueColor];

      if (!v26 || (v30 = MEMORY[0x1E69DCAB8], [v26 name], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "_systemImageNamed:withConfiguration:", v31, v29), v11 = objc_claimAutoreleasedReturnValue(), v31, !v11))
      {
        v11 = [objc_opt_class() defaultDeviceIconTableUIForSource:sourceCopy];
      }

      goto LABEL_29;
    }

    v19 = HKBluetoothIcon();
  }

  v11 = v19;
LABEL_29:

LABEL_30:

  return v11;
}

- (void)loadAppImageAtURL:(id)l productType:(id)type crop:(int64_t)crop completionHandler:(id)handler
{
  lCopy = l;
  typeCopy = type;
  handlerCopy = handler;
  managerQueue = self->_managerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__HKAppImageManager_loadAppImageAtURL_productType_crop_completionHandler___block_invoke;
  block[3] = &unk_1E81BB7F0;
  block[4] = self;
  v18 = lCopy;
  v19 = typeCopy;
  v20 = handlerCopy;
  cropCopy = crop;
  v14 = typeCopy;
  v15 = handlerCopy;
  v16 = lCopy;
  dispatch_async(managerQueue, block);
}

void __74__HKAppImageManager_loadAppImageAtURL_productType_crop_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696C608] currentDeviceProductType];
  v3 = [*(a1 + 32) iconCacheByProductType];
  v4 = [v3 objectForKeyedSubscript:v2];
  v5 = [*(a1 + 40) absoluteString];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = objc_alloc_init(_HKAppImageManagerContainer);
    v8 = v7;
    if (*(a1 + 48))
    {
      [(_HKAppImageManagerContainer *)v7 setProductType:?];
    }

    else
    {
      v9 = [MEMORY[0x1E696C608] currentDeviceProductType];
      [(_HKAppImageManagerContainer *)v8 setProductType:v9];
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF88]);
    [(_HKAppImageManagerContainer *)v8 setData:v10];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __74__HKAppImageManager_loadAppImageAtURL_productType_crop_completionHandler___block_invoke_2;
    v22[3] = &unk_1E81BB7C8;
    v11 = *(a1 + 32);
    v26 = *(a1 + 64);
    v22[4] = v11;
    v23 = v2;
    v24 = *(a1 + 40);
    v25 = *(a1 + 56);
    [(_HKAppImageManagerContainer *)v8 setCompletionHandler:v22];
    v12 = [*(a1 + 40) absoluteString];
    [(_HKAppImageManagerContainer *)v8 setUrlString:v12];

    v13 = *(*(a1 + 32) + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__HKAppImageManager_loadAppImageAtURL_productType_crop_completionHandler___block_invoke_3;
    block[3] = &unk_1E81B5FD0;
    v14 = *(a1 + 40);
    v15 = *(a1 + 32);
    v18 = v14;
    v19 = v15;
    v20 = v8;
    v21 = *(a1 + 56);
    v16 = v8;
    dispatch_async(v13, block);
  }
}

void __74__HKAppImageManager_loadAppImageAtURL_productType_crop_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v44 = a2;
  v7 = a5;
  if (!v44)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (*(a1 + 64) == 1)
  {
    v8 = [v44 hk_watchIconImage];
    if (!v8)
    {
      goto LABEL_20;
    }

LABEL_19:
    v41 = [*(a1 + 32) iconCacheByProductType];
    v42 = [v41 objectForKeyedSubscript:*(a1 + 40)];
    v43 = [*(a1 + 48) absoluteString];
    [v42 setObject:v8 forKeyedSubscript:v43];

    goto LABEL_20;
  }

  v9 = MEMORY[0x1E69DCAB8];
  v10 = v44;
  v11 = [v44 CGImage];
  v12 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v12 scale];
  v14 = [v9 imageWithCGImage:v11 scale:objc_msgSend(v44 orientation:{"imageOrientation"), v13}];

  [v14 size];
  v16 = v15;
  v18 = v17;
  v19 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v19 scale];
  v21 = v20;
  v46.width = v16;
  v46.height = v18;
  UIGraphicsBeginImageContextWithOptions(v46, 0, v21);

  [v14 size];
  v23 = v22;
  [v14 size];
  v25 = v24;
  v26 = MEMORY[0x1E69DC728];
  [v14 size];
  if (v28 >= v27)
  {
    v27 = v28;
  }

  v29 = [v26 _bezierPathWithPillRect:0.0 cornerRadius:{0.0, v23, v25, v27 / 57.0 * 13.5}];
  [v14 size];
  if (v31 >= v30)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  v33 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v33 scale];
  if (v32 <= 29.0)
  {
    v35 = v34 * 0.100000001;
  }

  else
  {
    v35 = v34;
  }

  [v29 setLineWidth:v35];
  [v29 addClip];
  [v14 drawInRect:{0.0, 0.0, v23, v25}];
  v36 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.200000003];
  [v36 set];

  [v14 size];
  if (v38 >= v37)
  {
    v37 = v38;
  }

  v39 = v37 > 29.0;
  v40 = 0.600000024;
  if (v39)
  {
    v40 = 1.0;
  }

  [v29 strokeWithBlendMode:0 alpha:v40];
  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  if (v8)
  {
    goto LABEL_19;
  }

LABEL_20:
  (*(*(a1 + 56) + 16))();
}

void __74__HKAppImageManager_loadAppImageAtURL_productType_crop_completionHandler___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x1E696AF68]) initWithURL:*(a1 + 32) cachePolicy:0 timeoutInterval:5.0];
  v4 = [*(*(a1 + 40) + 8) dataTaskWithRequest:v3];
  if (v4 && ([*(a1 + 32) absoluteString], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    [*(*(a1 + 40) + 16) setObject:*(a1 + 48) forKey:v4];
    v6 = *(*(a1 + 40) + 24);
    v7 = [*(a1 + 32) absoluteString];
    [v6 setObject:v4 forKey:v7];

    _HKInitializeLogging();
    v8 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1C3942000, v8, OS_LOG_TYPE_DEFAULT, "Begining data task for url %@.", &v12, 0xCu);
    }

    [v4 resume];
  }

  else
  {
    v10 = *(a1 + 56);
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HKAppImageManager" code:1001 userInfo:0];
    (*(v10 + 16))(v10, 0, 0, 0, v11);
  }

  objc_autoreleasePoolPop(v2);
}

- (id)iconForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy _isConnectedGymDevice])
  {
    v4 = [HKUIConnectedGymIconUtilties iconForConnectedGymDevice:deviceCopy preferredIconWidth:29.0];

    if (v4)
    {
      v5 = v4;
LABEL_6:
      v8 = v5;
      goto LABEL_10;
    }

    v9 = HKDeviceImage(@"watch");
  }

  else
  {
    hardwareVersion = [deviceCopy hardwareVersion];

    v7 = [HKUIIconUtilties appleDeviceIconForHardwareVersion:hardwareVersion];

    if (v7)
    {
      v5 = v7;
      goto LABEL_6;
    }

    v9 = HKBluetoothIcon();
  }

  v8 = v9;
  v5 = 0;
LABEL_10:

  return v8;
}

- (id)researchStudyIconForSource:(id)source
{
  sourceCopy = source;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__25;
  v16 = __Block_byref_object_dispose__25;
  v17 = 0;
  managerQueue = self->_managerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__HKAppImageManager_researchStudyIconForSource___block_invoke;
  block[3] = &unk_1E81BB818;
  v10 = sourceCopy;
  v11 = &v12;
  block[4] = self;
  v6 = sourceCopy;
  dispatch_sync(managerQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __48__HKAppImageManager_researchStudyIconForSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_researchStudyIconForSource:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)_queue_researchStudyIconForSource:(id)source
{
  sourceCopy = source;
  currentDeviceProductType = [MEMORY[0x1E696C608] currentDeviceProductType];
  iconCacheByProductType = [(HKAppImageManager *)self iconCacheByProductType];
  v7 = [iconCacheByProductType objectForKeyedSubscript:currentDeviceProductType];
  bundleIdentifier = [sourceCopy bundleIdentifier];
  v9 = [v7 objectForKeyedSubscript:bundleIdentifier];

  if (v9)
  {
    defaultAppIconTableUI = v9;
  }

  else
  {
    v18 = 0;
    v11 = [sourceCopy _fetchBundleWithError:&v18];
    v12 = v18;
    if (v12)
    {
      _HKInitializeLogging();
      v13 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(HKAppImageManager *)v12 _queue_researchStudyIconForSource:v13];
      }

      defaultAppIconTableUI = [objc_opt_class() defaultAppIconTableUI];
    }

    else
    {
      v14 = [MEMORY[0x1E69DCAB8] imageNamed:@"Icon" inBundle:v11];
      v15 = v14;
      if (v14)
      {
        defaultAppIconTableUI = [v14 imageByPreparingThumbnailOfSize:{29.0, 29.0}];
        bundleIdentifier2 = [sourceCopy bundleIdentifier];
        [(HKAppImageManager *)self _queue_cacheAppIcon:defaultAppIconTableUI forIdentifier:bundleIdentifier2 productType:currentDeviceProductType];
      }

      else
      {
        defaultAppIconTableUI = [objc_opt_class() defaultAppIconTableUI];
      }
    }
  }

  return defaultAppIconTableUI;
}

- (void)_queue_cacheAppIcon:(id)icon forIdentifier:(id)identifier productType:(id)type
{
  typeCopy = type;
  iconCacheByProductType = self->_iconCacheByProductType;
  identifierCopy = identifier;
  iconCopy = icon;
  v11 = [(NSMutableDictionary *)iconCacheByProductType objectForKeyedSubscript:typeCopy];

  if (!v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    [(NSMutableDictionary *)self->_iconCacheByProductType setObject:v12 forKeyedSubscript:typeCopy];
  }

  v13 = [(NSMutableDictionary *)self->_iconCacheByProductType objectForKeyedSubscript:typeCopy];
  [v13 setObject:iconCopy forKeyedSubscript:identifierCopy];
}

- (void)_queue_loadAppIconForSource:(id)source productType:(id)type onCompletion:(id)completion
{
  sourceCopy = source;
  typeCopy = type;
  completionCopy = completion;
  bundleIdentifier = [sourceCopy bundleIdentifier];
  v12 = [(HKAppImageManager *)self _queue_fetchIconFromLaunchServicesWithIdentifier:bundleIdentifier];

  if (v12)
  {
    (*(completionCopy + 2))(completionCopy, v12, 0, 1, 0);
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__HKAppImageManager__queue_loadAppIconForSource_productType_onCompletion___block_invoke;
    v13[3] = &unk_1E81BB868;
    v13[4] = self;
    v14 = typeCopy;
    v16 = completionCopy;
    v15 = sourceCopy;
    [HKSourceListDataSource fetchIconForSource:v15 completion:v13];
  }
}

void __74__HKAppImageManager__queue_loadAppIconForSource_productType_onCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__HKAppImageManager__queue_loadAppIconForSource_productType_onCompletion___block_invoke_2;
  block[3] = &unk_1E81BB840;
  v9 = *(a1 + 40);
  v10 = v3;
  v13 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __74__HKAppImageManager__queue_loadAppIconForSource_productType_onCompletion___block_invoke_2(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) hasPrefix:*MEMORY[0x1E696BC28]];
  if (!*(a1 + 40) || (v3 & 1) != 0)
  {
    v4 = [MEMORY[0x1E696C4A8] bundleIdentifierForIconForSource:*(a1 + 48)];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [*(a1 + 48) bundleIdentifier];
    }

    v7 = v6;

    v8 = [*(a1 + 56) outstandingRequests];
    v9 = [v8 objectForKeyedSubscript:v7];

    v10 = [*(a1 + 64) copy];
    v11 = v10;
    if (v9)
    {
      v12 = _Block_copy(v10);
      [v9 addObject:v12];
    }

    else
    {
      v16[0] = v10;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      v14 = [v13 mutableCopy];
      v15 = [*(a1 + 56) outstandingRequests];
      [v15 setObject:v14 forKeyedSubscript:v7];

      [*(a1 + 56) _enqueueRequestForAppIconForIdentifier:v7 productType:*(a1 + 32)];
    }
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

- (id)_queue_fetchIconFromLaunchServicesWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v11];
  if (v5)
  {
    v6 = MEMORY[0x1E69DCAB8];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v8 = [v6 _applicationIconImageForBundleIdentifier:identifierCopy format:0 scale:?];

    if (v8)
    {
      currentDeviceProductType = [MEMORY[0x1E696C608] currentDeviceProductType];
      [(HKAppImageManager *)self _queue_cacheAppIcon:v8 forIdentifier:identifierCopy productType:currentDeviceProductType];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_dispatchResponsesForAppIconForIdentifier:(id)identifier appImage:(id)image
{
  identifierCopy = identifier;
  imageCopy = image;
  v8 = imageCopy;
  if (identifierCopy && imageCopy)
  {
    managerQueue = self->_managerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__HKAppImageManager__dispatchResponsesForAppIconForIdentifier_appImage___block_invoke;
    block[3] = &unk_1E81B5A10;
    v12 = imageCopy;
    selfCopy = self;
    v14 = identifierCopy;
    dispatch_async(managerQueue, block);
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x1E696B978];
    if (os_log_type_enabled(*MEMORY[0x1E696B978], OS_LOG_TYPE_ERROR))
    {
      [(HKAppImageManager *)identifierCopy _dispatchResponsesForAppIconForIdentifier:v8 appImage:v10];
    }
  }
}

void __72__HKAppImageManager__dispatchResponsesForAppIconForIdentifier_appImage___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x1E696C608] currentDeviceProductType];
    [*(a1 + 40) _queue_cacheAppIcon:*(a1 + 32) forIdentifier:*(a1 + 48) productType:v2];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(a1 + 40) outstandingRequests];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 48)];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = [*(a1 + 40) outstandingRequests];
  [v9 removeObjectForKey:*(a1 + 48)];
}

- (void)_enqueueRequestForAppIconForIdentifier:(id)identifier productType:(id)type
{
  v40[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  typeCopy = type;
  currentDeviceProductType = [MEMORY[0x1E696C608] currentDeviceProductType];
  v9 = *MEMORY[0x1E696BC28];
  v10 = [currentDeviceProductType hasPrefix:*MEMORY[0x1E696BC28]];
  v11 = *MEMORY[0x1E696C930];
  if ([identifierCopy isEqualToString:*MEMORY[0x1E696C930]])
  {
    v12 = [(HKAppImageManager *)self MindfulnessAppIconForVisionPro:currentDeviceProductType];
    v13 = v12;
    if (v12)
    {
      managerQueue = self->_managerQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__HKAppImageManager__enqueueRequestForAppIconForIdentifier_productType___block_invoke;
      block[3] = &unk_1E81BA058;
      block[4] = self;
      v13 = v12;
      v34 = v13;
      v15 = identifierCopy;
      v35 = v15;
      v36 = typeCopy;
      dispatch_async(managerQueue, block);
      [(HKAppImageManager *)self _dispatchResponsesForAppIconForIdentifier:v15 appImage:v13];
    }

    else
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x1E696B978];
      if (os_log_type_enabled(*MEMORY[0x1E696B978], OS_LOG_TYPE_ERROR))
      {
        [HKAppImageManager _enqueueRequestForAppIconForIdentifier:v11 productType:v26];
      }
    }
  }

  else
  {
    v16 = [typeCopy hasPrefix:v9];
    v17 = MEMORY[0x1E698C7D8];
    bagSubProfile = [MEMORY[0x1E698C9E0] bagSubProfile];
    bagSubProfileVersion = [MEMORY[0x1E698C9E0] bagSubProfileVersion];
    v13 = [v17 bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

    v20 = objc_alloc(MEMORY[0x1E698C9E0]);
    v21 = [v20 initWithType:0 clientIdentifier:*MEMORY[0x1E696C860] clientVersion:@"1" bag:v13];
    v40[0] = identifierCopy;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [v21 setBundleIdentifiers:v22];

    if (v16)
    {
      v39 = *MEMORY[0x1E698C6B0];
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
      [v21 setAdditionalPlatforms:v23];
    }

    perform = [v21 perform];
    _HKInitializeLogging();
    v25 = *MEMORY[0x1E696B978];
    if (os_log_type_enabled(*MEMORY[0x1E696B978], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = identifierCopy;
      _os_log_impl(&dword_1C3942000, v25, OS_LOG_TYPE_DEFAULT, "Enqueuing request to download App information for identifier %@", buf, 0xCu);
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __72__HKAppImageManager__enqueueRequestForAppIconForIdentifier_productType___block_invoke_372;
    v27[3] = &unk_1E81BB8B8;
    v28 = identifierCopy;
    selfCopy = self;
    v31 = v16;
    v32 = v10;
    v30 = typeCopy;
    [perform addFinishBlock:v27];
  }
}

void __72__HKAppImageManager__enqueueRequestForAppIconForIdentifier_productType___block_invoke_372(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B978], OS_LOG_TYPE_ERROR))
    {
      __72__HKAppImageManager__enqueueRequestForAppIconForIdentifier_productType___block_invoke_372_cold_1();
    }

    v34 = a1 + 32;
    v32 = *(a1 + 32);
    v33 = *(v34 + 8);
    v18 = [objc_opt_class() defaultAppIcon];
    [v33 _dispatchResponsesForAppIconForIdentifier:v32 appImage:v18];
  }

  else
  {
    if (*(a1 + 56))
    {
      v8 = @"xros";
    }

    else
    {
      v8 = @"ios";
    }

    v9 = MEMORY[0x1E698C9B0];
    v10 = v8;
    v11 = [v9 alloc];
    v12 = [v5 responseDataItems];
    v13 = [v12 firstObject];
    v14 = [v13 objectForKeyedSubscript:@"attributes"];
    v15 = [v14 objectForKeyedSubscript:@"platformAttributes"];
    v16 = [v15 objectForKeyedSubscript:v10];

    v17 = [v16 objectForKeyedSubscript:@"artwork"];
    v18 = [v11 initWithDictionary:v17];

    if (*(a1 + 57))
    {
      v19 = 32.0;
    }

    else
    {
      v19 = 29.0;
    }

    v20 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v20 scale];
    v22 = v19 * v21;
    v23 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v23 scale];
    v25 = [v18 URLWithSize:*MEMORY[0x1E698C608] cropStyle:*MEMORY[0x1E698C610] format:{v22, v19 * v24}];

    v26 = [*(a1 + 32) hasPrefix:@"com.apple.Nano"];
    v27 = *(a1 + 40);
    v28 = *(a1 + 48);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __72__HKAppImageManager__enqueueRequestForAppIconForIdentifier_productType___block_invoke_392;
    v35[3] = &unk_1E81BB890;
    v29 = *(a1 + 32);
    v30 = *(a1 + 40);
    v31 = *(a1 + 48);
    v36 = v29;
    v37 = v30;
    v38 = v31;
    [v27 loadAppImageAtURL:v25 productType:v28 crop:v26 completionHandler:v35];
  }
}

void __72__HKAppImageManager__enqueueRequestForAppIconForIdentifier_productType___block_invoke_392(id *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a5;
  _HKInitializeLogging();
  v9 = *MEMORY[0x1E696B978];
  v10 = *MEMORY[0x1E696B978];
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __72__HKAppImageManager__enqueueRequestForAppIconForIdentifier_productType___block_invoke_392_cold_1();
    }

    v11 = 0;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v9;
      [v7 size];
      v14 = v13;
      [v7 size];
      *buf = 134218240;
      v27 = v14;
      v28 = 2048;
      v29 = v15;
      _os_log_impl(&dword_1C3942000, v12, OS_LOG_TYPE_DEFAULT, "app image size from loadAppImage: %f %f", buf, 0x16u);
    }

    v11 = v7;
    if (v7)
    {
      v16 = a1[5];
      v17 = *(v16 + 4);
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __72__HKAppImageManager__enqueueRequestForAppIconForIdentifier_productType___block_invoke_393;
      v21 = &unk_1E81BA058;
      v22 = v16;
      v11 = v7;
      v23 = v11;
      v24 = a1[4];
      v25 = a1[6];
      dispatch_async(v17, &v18);
    }
  }

  [a1[5] _dispatchResponsesForAppIconForIdentifier:a1[4] appImage:{v11, v18, v19, v20, v21, v22}];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  taskCopy = task;
  dataCopy = data;
  managerQueue = self->_managerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__HKAppImageManager_URLSession_dataTask_didReceiveData___block_invoke;
  block[3] = &unk_1E81B5A10;
  block[4] = self;
  v13 = taskCopy;
  v14 = dataCopy;
  v10 = dataCopy;
  v11 = taskCopy;
  dispatch_async(managerQueue, block);
}

void __56__HKAppImageManager_URLSession_dataTask_didReceiveData___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  if (v2)
  {
    v4 = v2;
    v3 = [v2 data];
    [v3 appendData:a1[6]];

    v2 = v4;
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  managerQueue = self->_managerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__HKAppImageManager_URLSession_task_didCompleteWithError___block_invoke;
  block[3] = &unk_1E81B5A10;
  block[4] = self;
  v13 = taskCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = taskCopy;
  dispatch_async(managerQueue, block);
}

void __58__HKAppImageManager_URLSession_task_didCompleteWithError___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1[4] + 16) objectForKey:a1[5]];
  v4 = v3;
  if (a1[6])
  {
    if (!v3)
    {
      goto LABEL_14;
    }

    v5 = *(a1[4] + 40);
    v6 = [v3 productType];
    v7 = [v5 objectForKeyedSubscript:v6];
    v8 = [v4 urlString];
    v9 = [v7 objectForKeyedSubscript:v8];

    v10 = [v4 completionHandler];
    v11 = v10;
    if (v9)
    {
      v12 = v9;
      v13 = 1;
      v14 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    (*(v10 + 16))(v10, v12, v13, v14, a1[6]);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_14;
    }

    v9 = [v3 data];
    if ([v9 length] && (objc_msgSend(MEMORY[0x1E69DCAB8], "imageWithData:", v9), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = v15;
      v16 = [v4 completionHandler];
      v16[2](v16, v11, 0, 1, 0);
    }

    else
    {
      v11 = [v4 completionHandler];
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HKAppImageManager" code:1002 userInfo:0];
      v11[2](v11, 0, 0, 0, v16);
    }
  }

  v17 = *(a1[4] + 24);
  v18 = [v4 urlString];
  [v17 removeObjectForKey:v18];

  [*(a1[4] + 16) removeObjectForKey:a1[5]];
LABEL_14:

  objc_autoreleasePoolPop(v2);
}

- (id)MindfulnessAppIconForVisionPro:(id)pro
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = HKHealthUIFrameworkBundle();
  v5 = [v3 imageNamed:@"mindfulness_app_icon" inBundle:v4];

  return v5;
}

- (void)_queue_researchStudyIconForSource:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Failed to load bundle with error %@", &v2, 0xCu);
}

- (void)_dispatchResponsesForAppIconForIdentifier:(NSObject *)a3 appImage:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_3(&dword_1C3942000, a2, a3, "_dispatchResponsesForAppIconForIdentifier identifier: %@ appImage: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)_enqueueRequestForAppIconForIdentifier:(uint64_t)a1 productType:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Failed to create app image for %@ identifier", &v2, 0xCu);
}

@end