@interface CKSnapshotUtilities
+ (BOOL)_shouldInvertSnapshots;
+ (BOOL)_snapshotExistsForKey:(id)a3;
+ (BOOL)snapshotExistsForGUID:(id)a3;
+ (BOOL)snapshotExistsForGUID:(id)a3 interfaceStyle:(int64_t)a4;
+ (id)_invertImage:(id)a3;
+ (id)_snapshotForKey:(id)a3 interfaceStyle:(int64_t)a4;
+ (id)_snapshotViewForGUID:(id)a3;
+ (id)snapshotForGUID:(id)a3;
+ (id)snapshotForGUID:(id)a3 interfaceStyle:(int64_t)a4;
+ (int64_t)_convertUserInterfaceStyle:(int64_t)a3;
+ (int64_t)_keyWindowInterfaceStyle;
+ (void)_cacheSnapshot:(id)a3 postChangeNotification:(BOOL)a4;
+ (void)_cacheSnapshotView:(id)a3 forGUID:(id)a4;
+ (void)cachePreLuckSnapshot:(id)a3 guid:(id)a4 messageTintColor:(IMColorComponents)a5 postChangeNotification:(BOOL)a6;
+ (void)cachePreLuckSnapshot:(id)a3 interfaceStyle:(int64_t)a4 guid:(id)a5 messageTintColor:(IMColorComponents)a6 postChangeNotification:(BOOL)a7;
+ (void)cacheSnapshot:(id)a3 guid:(id)a4 messageTintColor:(IMColorComponents)a5 postChangeNotification:(BOOL)a6;
+ (void)cacheSnapshot:(id)a3 interfaceStyle:(int64_t)a4 guid:(id)a5 messageTintColor:(IMColorComponents)a6 postChangeNotification:(BOOL)a7;
@end

@implementation CKSnapshotUtilities

+ (BOOL)snapshotExistsForGUID:(id)a3
{
  v3 = a3;
  v4 = +[CKSnapshotUtilities snapshotExistsForGUID:interfaceStyle:](CKSnapshotUtilities, "snapshotExistsForGUID:interfaceStyle:", v3, +[CKSnapshotUtilities _keyWindowInterfaceStyle]);

  return v4;
}

+ (id)snapshotForGUID:(id)a3
{
  v4 = a3;
  v5 = [a1 snapshotForGUID:v4 interfaceStyle:{+[CKSnapshotUtilities _keyWindowInterfaceStyle](CKSnapshotUtilities, "_keyWindowInterfaceStyle")}];

  return v5;
}

+ (void)cacheSnapshot:(id)a3 guid:(id)a4 messageTintColor:(IMColorComponents)a5 postChangeNotification:(BOOL)a6
{
  v6 = a6;
  alpha = a5.alpha;
  blue = a5.blue;
  green = a5.green;
  red = a5.red;
  v13 = a4;
  v14 = a3;
  [a1 cacheSnapshot:v14 interfaceStyle:+[CKSnapshotUtilities _keyWindowInterfaceStyle](CKSnapshotUtilities guid:"_keyWindowInterfaceStyle") messageTintColor:v13 postChangeNotification:{v6, red, green, blue, alpha}];
}

+ (void)cachePreLuckSnapshot:(id)a3 guid:(id)a4 messageTintColor:(IMColorComponents)a5 postChangeNotification:(BOOL)a6
{
  v6 = a6;
  alpha = a5.alpha;
  blue = a5.blue;
  green = a5.green;
  red = a5.red;
  v13 = a4;
  v14 = a3;
  [a1 cachePreLuckSnapshot:v14 interfaceStyle:+[CKSnapshotUtilities _keyWindowInterfaceStyle](CKSnapshotUtilities guid:"_keyWindowInterfaceStyle") messageTintColor:v13 postChangeNotification:{v6, red, green, blue, alpha}];
}

+ (BOOL)snapshotExistsForGUID:(id)a3 interfaceStyle:(int64_t)a4
{
  v5 = a3;
  v6 = [CKSnapshot preLuckSnapshotKeyWithGUID:v5 interfaceStyle:a4];
  if ([CKSnapshotUtilities _snapshotExistsForKey:v6])
  {
    v7 = 1;
  }

  else
  {
    v8 = [CKSnapshot snapshotKeyWithGUID:v5 interfaceStyle:a4];
    v7 = [CKSnapshotUtilities _snapshotExistsForKey:v8];
  }

  return v7;
}

+ (id)snapshotForGUID:(id)a3 interfaceStyle:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 _shouldInvertSnapshots];
  v8 = [CKSnapshot preLuckSnapshotKeyWithGUID:v6 interfaceStyle:a4];
  v9 = [CKSnapshotUtilities _snapshotForKey:v8 interfaceStyle:a4];
  if (v9)
  {
    v10 = v9;
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = [CKSnapshot snapshotKeyWithGUID:v6 interfaceStyle:a4];

  v10 = [CKSnapshotUtilities _snapshotForKey:v14 interfaceStyle:a4];
  v8 = v14;
  if (v7)
  {
LABEL_3:
    v11 = [v10 image];
    v12 = [CKSnapshotUtilities _invertImage:v11];

    [v10 setImage:v12];
  }

LABEL_4:

  return v10;
}

+ (void)cacheSnapshot:(id)a3 interfaceStyle:(int64_t)a4 guid:(id)a5 messageTintColor:(IMColorComponents)a6 postChangeNotification:(BOOL)a7
{
  v7 = a7;
  v9 = [CKSnapshot snapshotWithGUID:a5 interfaceStyle:a4 image:a3 messageTintColor:a6.red, a6.green, a6.blue, a6.alpha];
  [a1 _cacheSnapshot:v9 postChangeNotification:v7];
}

+ (void)cachePreLuckSnapshot:(id)a3 interfaceStyle:(int64_t)a4 guid:(id)a5 messageTintColor:(IMColorComponents)a6 postChangeNotification:(BOOL)a7
{
  v7 = a7;
  v9 = [CKSnapshot snapshotWithGUID:a5 interfaceStyle:a4 image:a3 messageTintColor:a6.red, a6.green, a6.blue, a6.alpha];
  [v9 setPreLuckSnapshot:1];
  [a1 _cacheSnapshot:v9 postChangeNotification:v7];
}

+ (void)_cacheSnapshot:(id)a3 postChangeNotification:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v6 startTimingForKey:@"CKSnapshotUtilities-CacheSnapshot"];
  v7 = +[CKPreviewDispatchCache snapshotCache];
  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__CKSnapshotUtilities__cacheSnapshot_postChangeNotification___block_invoke;
    block[3] = &unk_1E72EBA18;
    v19 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v8 = [v5 key];
  [v7 setCachedPreview:v5 key:v8];

  v9 = [v5 key];
  v10 = IMPluginSnapshotCachesFileURL();

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__CKSnapshotUtilities__cacheSnapshot_postChangeNotification___block_invoke_2;
  v14[3] = &unk_1E72EB880;
  v15 = v10;
  v16 = v5;
  v17 = v6;
  v11 = v6;
  v12 = v5;
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

+ (BOOL)_snapshotExistsForKey:(id)a3
{
  v3 = a3;
  v4 = 0;
  if (v3 && !__CurrentTestName)
  {
    v5 = +[CKPreviewDispatchCache snapshotCache];
    v6 = [v5 cachedPreviewForKey:v3];
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

+ (id)_snapshotForKey:(id)a3 interfaceStyle:(int64_t)a4
{
  v5 = a3;
  v6 = 0;
  if (v5 && !__CurrentTestName)
  {
    v7 = +[CKPreviewDispatchCache snapshotCache];
    v8 = [v7 cachedPreviewForKey:v5];
    if (v8)
    {
      v6 = v8;
    }

    else
    {
      v9 = IMPluginSnapshotCachesFileURL();
      v6 = [CKSnapshot snapshotWithGUID:v5 interfaceStyle:a4 dataURL:v9];
      if (v6)
      {
        [v7 setCachedPreview:v6 key:v5];
        v10 = v6;
      }
    }
  }

  return v6;
}

+ (void)_cacheSnapshotView:(id)a3 forGUID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = +[CKPreviewDispatchCache snapshotCache];
  v7 = +[CKSnapshot snapshotKeyWithGUID:interfaceStyle:](CKSnapshot, "snapshotKeyWithGUID:interfaceStyle:", v5, +[CKSnapshotUtilities _keyWindowInterfaceStyle]);

  [v8 setCachedPreview:v6 key:v7];
}

+ (id)_snapshotViewForGUID:(id)a3
{
  v3 = a3;
  v4 = +[CKSnapshot snapshotKeyWithGUID:interfaceStyle:](CKSnapshot, "snapshotKeyWithGUID:interfaceStyle:", v3, +[CKSnapshotUtilities _keyWindowInterfaceStyle]);

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
  v3 = [MEMORY[0x1E69DD2E8] keyWindow];
  v4 = [v3 traitCollection];
  v5 = [v4 userInterfaceStyle];

  return [a1 _convertUserInterfaceStyle:v5];
}

+ (int64_t)_convertUserInterfaceStyle:(int64_t)a3
{
  result = a3;
  if (a3 >= 3)
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
  v2 = [MEMORY[0x1E69A60F0] sharedInstance];
  v3 = [v2 isInternalInstall];

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"InvertPluginSnapshots"];

  return v3 & v5;
}

+ (id)_invertImage:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695F658]) initWithImage:v3];
  v5 = [MEMORY[0x1E695F648] colorInvertFilter];
  v6 = v5;
  if (v5)
  {
    [v5 setValue:v4 forKey:*MEMORY[0x1E695FAB0]];
    v7 = [v6 outputImage];
    if (v7)
    {
      v8 = [MEMORY[0x1E695F620] contextWithOptions:0];
      [v7 extent];
      v9 = [v8 createCGImage:v7 fromRect:?];
      v10 = MEMORY[0x1E69DCAB8];
      [v3 scale];
      v12 = [v10 imageWithCGImage:v9 scale:objc_msgSend(v3 orientation:{"imageOrientation"), v11}];
      if (v9)
      {
        CFRelease(v9);
      }
    }

    else
    {
      v12 = v3;
    }
  }

  else
  {
    v12 = v3;
  }

  return v12;
}

@end