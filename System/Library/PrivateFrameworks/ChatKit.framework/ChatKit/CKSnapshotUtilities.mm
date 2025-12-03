@interface CKSnapshotUtilities
+ (BOOL)_shouldInvertSnapshots;
+ (BOOL)_snapshotExistsForKey:(id)key;
+ (BOOL)snapshotExistsForGUID:(id)d;
+ (BOOL)snapshotExistsForGUID:(id)d interfaceStyle:(int64_t)style;
+ (id)_invertImage:(id)image;
+ (id)_snapshotForKey:(id)key interfaceStyle:(int64_t)style;
+ (id)_snapshotViewForGUID:(id)d;
+ (id)snapshotForGUID:(id)d;
+ (id)snapshotForGUID:(id)d interfaceStyle:(int64_t)style;
+ (int64_t)_convertUserInterfaceStyle:(int64_t)style;
+ (int64_t)_keyWindowInterfaceStyle;
+ (void)_cacheSnapshot:(id)snapshot postChangeNotification:(BOOL)notification;
+ (void)_cacheSnapshotView:(id)view forGUID:(id)d;
+ (void)cachePreLuckSnapshot:(id)snapshot guid:(id)guid messageTintColor:(IMColorComponents)color postChangeNotification:(BOOL)notification;
+ (void)cachePreLuckSnapshot:(id)snapshot interfaceStyle:(int64_t)style guid:(id)guid messageTintColor:(IMColorComponents)color postChangeNotification:(BOOL)notification;
+ (void)cacheSnapshot:(id)snapshot guid:(id)guid messageTintColor:(IMColorComponents)color postChangeNotification:(BOOL)notification;
+ (void)cacheSnapshot:(id)snapshot interfaceStyle:(int64_t)style guid:(id)guid messageTintColor:(IMColorComponents)color postChangeNotification:(BOOL)notification;
@end

@implementation CKSnapshotUtilities

+ (BOOL)snapshotExistsForGUID:(id)d
{
  dCopy = d;
  v4 = +[CKSnapshotUtilities snapshotExistsForGUID:interfaceStyle:](CKSnapshotUtilities, "snapshotExistsForGUID:interfaceStyle:", dCopy, +[CKSnapshotUtilities _keyWindowInterfaceStyle]);

  return v4;
}

+ (id)snapshotForGUID:(id)d
{
  dCopy = d;
  v5 = [self snapshotForGUID:dCopy interfaceStyle:{+[CKSnapshotUtilities _keyWindowInterfaceStyle](CKSnapshotUtilities, "_keyWindowInterfaceStyle")}];

  return v5;
}

+ (void)cacheSnapshot:(id)snapshot guid:(id)guid messageTintColor:(IMColorComponents)color postChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  alpha = color.alpha;
  blue = color.blue;
  green = color.green;
  red = color.red;
  guidCopy = guid;
  snapshotCopy = snapshot;
  [self cacheSnapshot:snapshotCopy interfaceStyle:+[CKSnapshotUtilities _keyWindowInterfaceStyle](CKSnapshotUtilities guid:"_keyWindowInterfaceStyle") messageTintColor:guidCopy postChangeNotification:{notificationCopy, red, green, blue, alpha}];
}

+ (void)cachePreLuckSnapshot:(id)snapshot guid:(id)guid messageTintColor:(IMColorComponents)color postChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  alpha = color.alpha;
  blue = color.blue;
  green = color.green;
  red = color.red;
  guidCopy = guid;
  snapshotCopy = snapshot;
  [self cachePreLuckSnapshot:snapshotCopy interfaceStyle:+[CKSnapshotUtilities _keyWindowInterfaceStyle](CKSnapshotUtilities guid:"_keyWindowInterfaceStyle") messageTintColor:guidCopy postChangeNotification:{notificationCopy, red, green, blue, alpha}];
}

+ (BOOL)snapshotExistsForGUID:(id)d interfaceStyle:(int64_t)style
{
  dCopy = d;
  v6 = [CKSnapshot preLuckSnapshotKeyWithGUID:dCopy interfaceStyle:style];
  if ([CKSnapshotUtilities _snapshotExistsForKey:v6])
  {
    v7 = 1;
  }

  else
  {
    v8 = [CKSnapshot snapshotKeyWithGUID:dCopy interfaceStyle:style];
    v7 = [CKSnapshotUtilities _snapshotExistsForKey:v8];
  }

  return v7;
}

+ (id)snapshotForGUID:(id)d interfaceStyle:(int64_t)style
{
  dCopy = d;
  _shouldInvertSnapshots = [self _shouldInvertSnapshots];
  v8 = [CKSnapshot preLuckSnapshotKeyWithGUID:dCopy interfaceStyle:style];
  v9 = [CKSnapshotUtilities _snapshotForKey:v8 interfaceStyle:style];
  if (v9)
  {
    v10 = v9;
    if (!_shouldInvertSnapshots)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = [CKSnapshot snapshotKeyWithGUID:dCopy interfaceStyle:style];

  v10 = [CKSnapshotUtilities _snapshotForKey:v14 interfaceStyle:style];
  v8 = v14;
  if (_shouldInvertSnapshots)
  {
LABEL_3:
    image = [v10 image];
    v12 = [CKSnapshotUtilities _invertImage:image];

    [v10 setImage:v12];
  }

LABEL_4:

  return v10;
}

+ (void)cacheSnapshot:(id)snapshot interfaceStyle:(int64_t)style guid:(id)guid messageTintColor:(IMColorComponents)color postChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  v9 = [CKSnapshot snapshotWithGUID:guid interfaceStyle:style image:snapshot messageTintColor:color.red, color.green, color.blue, color.alpha];
  [self _cacheSnapshot:v9 postChangeNotification:notificationCopy];
}

+ (void)cachePreLuckSnapshot:(id)snapshot interfaceStyle:(int64_t)style guid:(id)guid messageTintColor:(IMColorComponents)color postChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  v9 = [CKSnapshot snapshotWithGUID:guid interfaceStyle:style image:snapshot messageTintColor:color.red, color.green, color.blue, color.alpha];
  [v9 setPreLuckSnapshot:1];
  [self _cacheSnapshot:v9 postChangeNotification:notificationCopy];
}

+ (void)_cacheSnapshot:(id)snapshot postChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  snapshotCopy = snapshot;
  v6 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v6 startTimingForKey:@"CKSnapshotUtilities-CacheSnapshot"];
  v7 = +[CKPreviewDispatchCache snapshotCache];
  if (notificationCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__CKSnapshotUtilities__cacheSnapshot_postChangeNotification___block_invoke;
    block[3] = &unk_1E72EBA18;
    v19 = snapshotCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v8 = [snapshotCopy key];
  [v7 setCachedPreview:snapshotCopy key:v8];

  v9 = [snapshotCopy key];
  v10 = IMPluginSnapshotCachesFileURL();

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__CKSnapshotUtilities__cacheSnapshot_postChangeNotification___block_invoke_2;
  v14[3] = &unk_1E72EB880;
  v15 = v10;
  v16 = snapshotCopy;
  v17 = v6;
  v11 = v6;
  v12 = snapshotCopy;
  v13 = v10;
  [v7 enqueueSaveBlock:v14 withPriority:0];
}

void __61__CKSnapshotUtilities__cacheSnapshot_postChangeNotification___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = @"CKSnapshotChangedMessageGUIDKey";
  v3 = [*(a1 + 32) guid];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 postNotificationName:@"CKSnapshotChangedNotification" object:0 userInfo:v4];
}

void __61__CKSnapshotUtilities__cacheSnapshot_postChangeNotification___block_invoke_2(id *a1)
{
  if (a1[4])
  {
    v2 = a1[5];
    v3 = a1[4];
    v4 = a1[6];
    im_perform_with_task_assertion();
  }
}

void __61__CKSnapshotUtilities__cacheSnapshot_postChangeNotification___block_invoke_3(id *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] createEncodedData];
  if (v2)
  {
    v3 = [a1[5] URLByDeletingLastPathComponent];
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = 0;
    v5 = [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v12];
    v6 = v12;

    if ((v5 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(3);
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v14 = v3;
          v15 = 2112;
          v16 = v6;
          _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Failed to create preview directory URL: %@ with error: %@", buf, 0x16u);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
      {
        v10 = v3;
        v11 = v6;
        _CKLogExternal();
      }
    }

    CKFreeSpaceWriteDataToURL(v2, a1[5], 1);
  }

  [a1[6] stopTimingForKey:{@"CKSnapshotUtilities-CacheSnapshot", v10, v11}];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(3);
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = a1[6];
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "CKSnapshotUtilities-CacheSnapshot timing: %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
  {
    _CKLogExternal();
  }
}

+ (BOOL)_snapshotExistsForKey:(id)key
{
  keyCopy = key;
  v4 = 0;
  if (keyCopy && !__CurrentTestName)
  {
    v5 = +[CKPreviewDispatchCache snapshotCache];
    v6 = [v5 cachedPreviewForKey:keyCopy];
    if (v6)
    {
      v4 = 1;
    }

    else
    {
      v4 = IMPluginSnapshotExistsInCache();
    }
  }

  return v4;
}

+ (id)_snapshotForKey:(id)key interfaceStyle:(int64_t)style
{
  keyCopy = key;
  v6 = 0;
  if (keyCopy && !__CurrentTestName)
  {
    v7 = +[CKPreviewDispatchCache snapshotCache];
    v8 = [v7 cachedPreviewForKey:keyCopy];
    if (v8)
    {
      v6 = v8;
    }

    else
    {
      v9 = IMPluginSnapshotCachesFileURL();
      v6 = [CKSnapshot snapshotWithGUID:keyCopy interfaceStyle:style dataURL:v9];
      if (v6)
      {
        [v7 setCachedPreview:v6 key:keyCopy];
        v10 = v6;
      }
    }
  }

  return v6;
}

+ (void)_cacheSnapshotView:(id)view forGUID:(id)d
{
  dCopy = d;
  viewCopy = view;
  v8 = +[CKPreviewDispatchCache snapshotCache];
  v7 = +[CKSnapshot snapshotKeyWithGUID:interfaceStyle:](CKSnapshot, "snapshotKeyWithGUID:interfaceStyle:", dCopy, +[CKSnapshotUtilities _keyWindowInterfaceStyle]);

  [v8 setCachedPreview:viewCopy key:v7];
}

+ (id)_snapshotViewForGUID:(id)d
{
  dCopy = d;
  v4 = +[CKSnapshot snapshotKeyWithGUID:interfaceStyle:](CKSnapshot, "snapshotKeyWithGUID:interfaceStyle:", dCopy, +[CKSnapshotUtilities _keyWindowInterfaceStyle]);

  v5 = +[CKPreviewDispatchCache snapshotCache];
  v6 = [v5 cachedPreviewForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (int64_t)_keyWindowInterfaceStyle
{
  keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
  traitCollection = [keyWindow traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  return [self _convertUserInterfaceStyle:userInterfaceStyle];
}

+ (int64_t)_convertUserInterfaceStyle:(int64_t)style
{
  result = style;
  if (style >= 3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Missing a new UIUserInterfaceStyle - we rely on IMUserInterfaceStyleMax to delete all cached snapshots on disk", v5, 2u);
      }
    }

    return 1;
  }

  return result;
}

+ (BOOL)_shouldInvertSnapshots
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults BOOLForKey:@"InvertPluginSnapshots"];

  return isInternalInstall & v5;
}

+ (id)_invertImage:(id)image
{
  imageCopy = image;
  v4 = [objc_alloc(MEMORY[0x1E695F658]) initWithImage:imageCopy];
  colorInvertFilter = [MEMORY[0x1E695F648] colorInvertFilter];
  v6 = colorInvertFilter;
  if (colorInvertFilter)
  {
    [colorInvertFilter setValue:v4 forKey:*MEMORY[0x1E695FAB0]];
    outputImage = [v6 outputImage];
    if (outputImage)
    {
      v8 = [MEMORY[0x1E695F620] contextWithOptions:0];
      [outputImage extent];
      v9 = [v8 createCGImage:outputImage fromRect:?];
      v10 = MEMORY[0x1E69DCAB8];
      [imageCopy scale];
      v12 = [v10 imageWithCGImage:v9 scale:objc_msgSend(imageCopy orientation:{"imageOrientation"), v11}];
      if (v9)
      {
        CFRelease(v9);
      }
    }

    else
    {
      v12 = imageCopy;
    }
  }

  else
  {
    v12 = imageCopy;
  }

  return v12;
}

@end