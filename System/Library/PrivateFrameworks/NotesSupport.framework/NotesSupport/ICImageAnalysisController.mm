@interface ICImageAnalysisController
+ (ICImageAnalysisController)sharedController;
- (ICImageAnalysisController)init;
- (void)analyzeSearchableItems:(id)items completion:(id)completion;
@end

@implementation ICImageAnalysisController

+ (ICImageAnalysisController)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[ICImageAnalysisController sharedController];
  }

  v3 = sharedController_instance;

  return v3;
}

uint64_t __45__ICImageAnalysisController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(ICImageAnalysisController);
  v1 = sharedController_instance;
  sharedController_instance = v0;

  Helper_x8__OBJC_CLASS___PHPhotoLibrary = gotLoadHelper_x8__OBJC_CLASS___PHPhotoLibrary(v2);
  v5 = *(v4 + 2472);

  return [v5 enableMultiLibraryMode];
}

- (ICImageAnalysisController)init
{
  v7.receiver = self;
  v7.super_class = ICImageAnalysisController;
  v2 = [(ICImageAnalysisController *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.notes.search.photoLibraryQueue", v3);
    photoLibraryQueue = v2->_photoLibraryQueue;
    v2->_photoLibraryQueue = v4;
  }

  return v2;
}

- (void)analyzeSearchableItems:(id)items completion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  v8 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICImageAnalysisController analyzeSearchableItems:itemsCopy completion:?];
  }

  photoLibraryQueue = [(ICImageAnalysisController *)self photoLibraryQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__ICImageAnalysisController_analyzeSearchableItems_completion___block_invoke;
  v12[3] = &unk_1E8484B48;
  v13 = itemsCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = itemsCopy;
  dispatch_async(photoLibraryQueue, v12);
}

void __63__ICImageAnalysisController_analyzeSearchableItems_completion___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__ICImageAnalysisController_analyzeSearchableItems_completion___block_invoke_cold_1(a1);
  }

  Helper_x8__OBJC_CLASS___PHPhotoLibrary = gotLoadHelper_x8__OBJC_CLASS___PHPhotoLibrary(v3);
  v6 = *(v5 + 2472);
  v33 = 0;
  v7 = [v6 openPhotoLibraryWithWellKnownIdentifier:3 error:{&v33, Helper_x8__OBJC_CLASS___PHPhotoLibrary}];
  v8 = v33;
  v9 = v8;
  if (!v7 || v8)
  {
    obj = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      __63__ICImageAnalysisController_analyzeSearchableItems_completion___block_invoke_cold_2(v9, obj);
    }
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = *(a1 + 32);
    v10 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v26 = a1;
      v9 = 0;
      v12 = *v30;
      while (1)
      {
        v13 = 0;
        do
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v29 + 1) + 8 * v13);

          v15 = [v14 uniqueIdentifier];
          v16 = [MEMORY[0x1E696AAE8] mainBundle];
          v17 = [v16 bundleIdentifier];
          v28 = 0;
          v18 = [v7 processUniversalSearchJITForCoreSpotlightUniqueIdentifier:v15 bundleID:v17 processingTypes:3 error:&v28];
          v9 = v28;

          v19 = os_log_create("com.apple.notes", "SearchIndexer");
          v20 = v19;
          if (v18)
          {
            v21 = v9 == 0;
          }

          else
          {
            v21 = 0;
          }

          if (v21)
          {
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_17;
            }

            v22 = [v14 uniqueIdentifier];
            *buf = 138412546;
            v35 = v22;
            v36 = 2112;
            v37 = v18;
            _os_log_debug_impl(&dword_1D4576000, v20, OS_LOG_TYPE_DEBUG, "[JIT] Processed item (%@): %@", buf, 0x16u);
          }

          else
          {
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_17;
            }

            v22 = [v14 uniqueIdentifier];
            *buf = 138412546;
            v35 = v22;
            v36 = 2112;
            v37 = v9;
            _os_log_error_impl(&dword_1D4576000, v20, OS_LOG_TYPE_ERROR, "[JIT] Failed processing item (%@): %@", buf, 0x16u);
          }

LABEL_17:
          ++v13;
        }

        while (v11 != v13);
        v23 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
        v11 = v23;
        if (!v23)
        {
          a1 = v26;
          goto LABEL_26;
        }
      }
    }

    v9 = 0;
  }

LABEL_26:

  v24 = *(a1 + 40);
  if (v24)
  {
    v25 = dispatch_get_global_queue(0, 0);
    dispatch_async(v25, v24);
  }
}

void __63__ICImageAnalysisController_analyzeSearchableItems_completion___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4576000, a2, OS_LOG_TYPE_ERROR, "[JIT] Skipping image analysis because the photo library cannot be opened: %@", &v2, 0xCu);
}

@end