@interface CKPRSPosterConfigurationSnapshotter
+ (void)createWatchSnapshotFromConfiguration:(id)configuration completion:(id)completion;
@end

@implementation CKPRSPosterConfigurationSnapshotter

+ (void)createWatchSnapshotFromConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  gotLoadHelper_x8__OBJC_CLASS___PRPosterSnapshotDefinition(v6);
  v8 = *(v7 + 824);
  configurationCopy = configuration;
  v10 = [[v8 alloc] initWithUniqueIdentifier:@"watch_background" includeHeaderElements:0 includesComplications:0 layerSet:0 isUnlocked:1 renderingContent:1 renderingMode:1 previewContent:1];
  gotLoadHelper_x8__OBJC_CLASS___PRUISMutablePosterSnapshotDescriptor(v11);
  v13 = [objc_alloc(*(v12 + 120)) initWithUserInterfaceStyle:2 interfaceOrientation:1 snapshotDefinition:v10];
  mainConfiguration = [MEMORY[0x1E699F7A8] mainConfiguration];
  [mainConfiguration pointScale];
  [v13 setPersistenceScale:2.0 / v15];
  [v13 setCanvasBounds:{0.0, 0.0, 410.0, 502.0}];
  gotLoadHelper_x8__OBJC_CLASS___PRUISPosterSnapshotRequest(v16);
  v18 = [objc_alloc(*(v17 + 248)) initWithPoster:configurationCopy snapshotDescriptor:v13];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v20 = [defaultManager URLsForDirectory:13 inDomains:1];
  firstObject = [v20 firstObject];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v23 = [firstObject URLByAppendingPathComponent:stringGUID isDirectory:1];

  if ([v23 checkResourceIsReachableAndReturnError:0])
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager2 removeItemAtURL:v23 error:0];
  }

  defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager3 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:0];

  gotLoadHelper_x8__OBJC_CLASS___PRUISPosterSnapshotController(v26);
  v28 = [objc_alloc(*(v27 + 224)) initWithCacheURL:v23];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __87__CKPRSPosterConfigurationSnapshotter_createWatchSnapshotFromConfiguration_completion___block_invoke;
  v32[3] = &unk_1E72F4BF0;
  v34 = v23;
  v35 = completionCopy;
  v33 = v28;
  v29 = v23;
  v30 = v28;
  v31 = completionCopy;
  [v30 executeSnapshotRequest:v18 completion:v32];
}

void __87__CKPRSPosterConfigurationSnapshotter_createWatchSnapshotFromConfiguration_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __87__CKPRSPosterConfigurationSnapshotter_createWatchSnapshotFromConfiguration_completion___block_invoke_cold_1(v9, v10);
    }

LABEL_4:

    (*(*(a1 + 48) + 16))();
    goto LABEL_11;
  }

  if (!v8)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __87__CKPRSPosterConfigurationSnapshotter_createWatchSnapshotFromConfiguration_completion___block_invoke_cold_2(v10);
    }

    goto LABEL_4;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Successfully executed snapshot request", v15, 2u);
    }
  }

  v12 = [v8 compositeLayerImage];
  (*(*(a1 + 48) + 16))();

LABEL_11:
  v13 = [*(a1 + 32) cache];
  [v13 invalidate];

  [*(a1 + 32) invalidate];
  v14 = [MEMORY[0x1E696AC08] defaultManager];
  [v14 removeItemAtURL:*(a1 + 40) error:0];
}

void __87__CKPRSPosterConfigurationSnapshotter_createWatchSnapshotFromConfiguration_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Error executing snapshot request for watch: %@", &v2, 0xCu);
}

@end