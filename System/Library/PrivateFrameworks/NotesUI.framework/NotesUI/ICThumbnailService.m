@interface ICThumbnailService
+ (ICThumbnailService)sharedThumbnailService;
- (ICThumbnailService)init;
- (ICThumbnailService)initWithViewContext:(id)a3 workerContext:(id)a4;
- (id)managedObjectContextChangeController:(id)a3 managedObjectIDsToUpdateForUpdatedManagedObjects:(id)a4;
- (id)thumbnailGeneratorForConfiguration:(id)a3;
- (id)thumbnailWithConfiguration:(id)a3;
- (void)attachmentPreviewImagesDidUpdate:(id)a3;
- (void)dealloc;
- (void)managedObjectContextChangeController:(id)a3 performUpdatesForManagedObjectIDs:(id)a4;
- (void)processThumbnailDescriptionResult:(id)a3;
- (void)thumbnailWithConfiguration:(id)a3 completion:(id)a4;
- (void)thumbnailsWithConfigurations:(id)a3 completion:(id)a4;
@end

@implementation ICThumbnailService

+ (ICThumbnailService)sharedThumbnailService
{
  if (sharedThumbnailService_onceToken != -1)
  {
    +[ICThumbnailService sharedThumbnailService];
  }

  v3 = sharedThumbnailService_instance;

  return v3;
}

uint64_t __44__ICThumbnailService_sharedThumbnailService__block_invoke()
{
  sharedThumbnailService_instance = objc_alloc_init(ICThumbnailService);

  return MEMORY[0x1EEE66BB8]();
}

- (ICThumbnailService)init
{
  v3 = [MEMORY[0x1E69B7800] sharedContext];
  v4 = [v3 managedObjectContext];

  v5 = [MEMORY[0x1E69B7800] sharedContext];
  v6 = [v5 workerManagedObjectContext];

  v7 = [(ICThumbnailService *)self initWithViewContext:v4 workerContext:v6];
  return v7;
}

- (ICThumbnailService)initWithViewContext:(id)a3 workerContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v31.receiver = self;
  v31.super_class = ICThumbnailService;
  v9 = [(ICThumbnailService *)&v31 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workerContext, a4);
    objc_storeStrong(&v10->_viewContext, a3);
    v11 = [MEMORY[0x1E695DF90] dictionary];
    callbacks = v10->_callbacks;
    v10->_callbacks = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INITIATED, -1);

    v15 = dispatch_queue_create("com.apple.notes.thumbnail-service-scheduler", v14);
    schedulingSerialQueue = v10->_schedulingSerialQueue;
    v10->_schedulingSerialQueue = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_USER_INITIATED, -1);

    v19 = dispatch_queue_create("com.apple.notes.thumbnail-service-background", v18);
    backgroundQueue = v10->_backgroundQueue;
    v10->_backgroundQueue = v19;

    v21 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    thumbnailGenerationQueue = v10->_thumbnailGenerationQueue;
    v10->_thumbnailGenerationQueue = v21;

    [(NSOperationQueue *)v10->_thumbnailGenerationQueue setQualityOfService:25];
    [(NSOperationQueue *)v10->_thumbnailGenerationQueue setMaxConcurrentOperationCount:2];
    [(NSOperationQueue *)v10->_thumbnailGenerationQueue setName:@"com.apple.notes.thumbnail-service-generation"];
    v23 = +[ICThumbnailCache shared];
    cache = v10->_cache;
    v10->_cache = v23;

    v25 = [ICManagedObjectContextChangeController alloc];
    v26 = [MEMORY[0x1E695DFD8] ic_setFromNonNilObject:v10->_viewContext];
    v27 = [(ICManagedObjectContextChangeController *)v25 initWithManagedObjectContexts:v26 delegate:v10];
    managedObjectChangeController = v10->_managedObjectChangeController;
    v10->_managedObjectChangeController = v27;

    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    [v29 addObserver:v10 selector:sel_attachmentPreviewImagesDidUpdate_ name:*MEMORY[0x1E69B7420] object:0];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICThumbnailService;
  [(ICThumbnailService *)&v4 dealloc];
}

- (void)thumbnailWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF00] now];
  v9 = [(ICThumbnailService *)self cache];
  v10 = [v9 objectForKeyedSubscript:v6];

  if (v10)
  {
    v11 = [MEMORY[0x1E695DF00] now];
    [v11 timeIntervalSinceDate:v8];
    [v10 setFetchDuration:?];

    if (v7)
    {
      v7[2](v7, v10);
    }
  }

  else
  {
    v12 = [(ICThumbnailService *)self backgroundQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__ICThumbnailService_thumbnailWithConfiguration_completion___block_invoke;
    v13[3] = &unk_1E846E020;
    v13[4] = self;
    v14 = v6;
    v16 = v7;
    v15 = v8;
    dispatch_async(v12, v13);
  }
}

void __60__ICThumbnailService_thumbnailWithConfiguration_completion___block_invoke(id *a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v2 = [a1[4] schedulingSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__ICThumbnailService_thumbnailWithConfiguration_completion___block_invoke_2;
  block[3] = &unk_1E846DFA8;
  v3 = a1[5];
  block[4] = a1[4];
  v15 = v3;
  v16 = a1[7];
  v17 = &v18;
  dispatch_sync(v2, block);

  if ((v19[3] & 1) == 0)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AAE0]);
    objc_initWeak(&location, v4);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__ICThumbnailService_thumbnailWithConfiguration_completion___block_invoke_3;
    v8[3] = &unk_1E846DFF8;
    objc_copyWeak(&v12, &location);
    v9 = a1[5];
    v5 = a1[6];
    v6 = a1[4];
    v10 = v5;
    v11 = v6;
    [v4 addExecutionBlock:v8];
    v7 = [a1[4] thumbnailGenerationQueue];
    [v7 addOperation:v4];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v18, 8);
}

void __60__ICThumbnailService_thumbnailWithConfiguration_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) callbacks];
  v3 = [*(a1 + 40) uniqueKey];
  v10 = [v2 objectForKeyedSubscript:v3];

  if (v10)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = _Block_copy(v4);
      [v10 addObject:v5];
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v6 = MEMORY[0x1E695DF70];
    v7 = _Block_copy(*(a1 + 48));
    v10 = [v6 arrayWithObject:v7];

    v8 = [*(a1 + 32) callbacks];
    v9 = [*(a1 + 40) uniqueKey];
    [v8 setObject:v10 forKeyedSubscript:v9];
  }
}

void __60__ICThumbnailService_thumbnailWithConfiguration_completion___block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = [WeakRetained isCancelled];

  if (v3)
  {
    v11 = [[ICThumbnailDescription alloc] initWithConfiguration:a1[4]];
    v4 = [MEMORY[0x1E695DF00] now];
    [v4 timeIntervalSinceDate:a1[5]];
    [(ICThumbnailDescription *)v11 setFetchDuration:?];

    [(ICThumbnailDescription *)v11 setCreationDate:a1[5]];
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = [v5 initWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    [(ICThumbnailDescription *)v11 setError:v6];

    [a1[6] processThumbnailDescriptionResult:v11];
  }

  else
  {
    v7 = [a1[6] thumbnailGeneratorForConfiguration:a1[4]];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__ICThumbnailService_thumbnailWithConfiguration_completion___block_invoke_4;
    v12[3] = &unk_1E846DFD0;
    v8 = a1[4];
    v13 = a1[5];
    v9 = a1[4];
    v10 = a1[6];
    v14 = v9;
    v15 = v10;
    [v7 generateThumbnailWithConfiguration:v8 completion:v12];
  }
}

void __60__ICThumbnailService_thumbnailWithConfiguration_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [MEMORY[0x1E695DF00] now];
  [v3 timeIntervalSinceDate:*(a1 + 32)];
  [v7 setFetchDuration:?];

  [v7 setCreationDate:*(a1 + 32)];
  v4 = [v7 image];
  if (!v4)
  {
    v5 = [*(a1 + 40) fallbackBlock];

    if (!v5)
    {
      goto LABEL_5;
    }

    v4 = [*(a1 + 40) fallbackBlock];
    [*(a1 + 40) scale];
    v6 = v4[2](v4);
    [v7 setImage:v6];
  }

LABEL_5:
  [*(a1 + 48) processThumbnailDescriptionResult:v7];
}

- (id)thumbnailWithConfiguration:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 thumbnailType] == 8 && objc_msgSend(MEMORY[0x1E696AF00], "isMainThread"))
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"![NSThread isMainThread]" functionName:"-[ICThumbnailService thumbnailWithConfiguration:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from main thread"];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__74;
  v22 = __Block_byref_object_dispose__74;
  v23 = 0;
  v5 = dispatch_semaphore_create(0);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __49__ICThumbnailService_thumbnailWithConfiguration___block_invoke;
  v15 = &unk_1E846B3F8;
  v17 = &v18;
  v6 = v5;
  v16 = v6;
  [(ICThumbnailService *)self thumbnailWithConfiguration:v4 completion:&v12];
  v7 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    v8 = os_log_create("com.apple.notes", "Thumbnails");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v4 associatedObjectIdentifier];
      [(ICThumbnailService *)v9 thumbnailWithConfiguration:buf, v8];
    }
  }

  v10 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v10;
}

void __49__ICThumbnailService_thumbnailWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)thumbnailsWithConfigurations:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_group_create();
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.notes.mention-avatar", v9);

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__ICThumbnailService_thumbnailsWithConfigurations_completion___block_invoke;
  block[3] = &unk_1E8469CB0;
  objc_copyWeak(&v18, &location);
  v15 = v6;
  v16 = v8;
  v17 = v7;
  v11 = v7;
  v12 = v8;
  v13 = v6;
  dispatch_async(v10, block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __62__ICThumbnailService_thumbnailsWithConfigurations_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        dispatch_group_enter(*(a1 + 40));
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __62__ICThumbnailService_thumbnailsWithConfigurations_completion___block_invoke_2;
        v16[3] = &unk_1E846DFD0;
        v17 = v2;
        v18 = v8;
        v19 = *(a1 + 40);
        [WeakRetained thumbnailWithConfiguration:v8 completion:v16];

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__ICThumbnailService_thumbnailsWithConfigurations_completion___block_invoke_3;
  block[3] = &unk_1E8468CD0;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v14 = v2;
  v15 = v10;
  v11 = v2;
  dispatch_group_notify(v9, MEMORY[0x1E69E96A0], block);
}

void __62__ICThumbnailService_thumbnailsWithConfigurations_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 image];

  if (v3)
  {
    v4 = [v8 image];
    v5 = [v4 copy];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) associatedObjectIdentifier];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)attachmentPreviewImagesDidUpdate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v6 = ICCheckedDynamicCast();

  v7 = [(ICThumbnailService *)self workerContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__ICThumbnailService_attachmentPreviewImagesDidUpdate___block_invoke;
  v9[3] = &unk_1E8468F80;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 performBlock:v9];
}

void __55__ICThumbnailService_attachmentPreviewImagesDidUpdate___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x1E695DFA8] set];
  v2 = [*(a1 + 32) workerContext];
  v3 = [v2 ic_existingObjectWithID:*(a1 + 40)];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 identifier];
    [v8 ic_addNonNilObject:v4];

    v5 = [v3 note];
    v6 = [v5 identifier];
    [v8 ic_addNonNilObject:v6];
  }

  v7 = [*(a1 + 32) cache];
  [v7 invalidateForObjectIdentifiers:v8];
}

- (id)managedObjectContextChangeController:(id)a3 managedObjectIDsToUpdateForUpdatedManagedObjects:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = [MEMORY[0x1E695DFA8] set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    v20 = v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v13 = [v12 changedValues];
          v14 = [v13 allKeys];
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v22[0] = __108__ICThumbnailService_managedObjectContextChangeController_managedObjectIDsToUpdateForUpdatedManagedObjects___block_invoke;
          v22[1] = &unk_1E846E048;
          v15 = v12;
          v23 = v15;
          if ([v14 ic_containsObjectPassingTest:v21])
          {
            [v15 objectID];
            v17 = v16 = v6;
            [v5 ic_addNonNilObject:v17];

            v6 = v16;
          }

          goto LABEL_13;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        v15 = [v11 note];
        v13 = [v15 objectID];
        [v5 ic_addNonNilObject:v13];
LABEL_13:

        continue;
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v18 = [v5 copy];

  return v18;
}

uint64_t __108__ICThumbnailService_managedObjectContextChangeController_managedObjectIDsToUpdateForUpdatedManagedObjects___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 noteCellKeyPaths];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (void)managedObjectContextChangeController:(id)a3 performUpdatesForManagedObjectIDs:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a4;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v16 = 0;
        v17 = &v16;
        v18 = 0x3032000000;
        v19 = __Block_byref_object_copy__74;
        v20 = __Block_byref_object_dispose__74;
        v21 = 0;
        v10 = [(ICThumbnailService *)self viewContext];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __93__ICThumbnailService_managedObjectContextChangeController_performUpdatesForManagedObjectIDs___block_invoke;
        v15[3] = &unk_1E8469640;
        v15[5] = v9;
        v15[6] = &v16;
        v15[4] = self;
        [v10 performBlockAndWait:v15];

        if (v17[5])
        {
          v11 = [(ICThumbnailService *)self cache];
          v12 = [MEMORY[0x1E695DFD8] setWithObject:v17[5]];
          [v11 invalidateForObjectIdentifiers:v12];
        }

        _Block_object_dispose(&v16, 8);

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }
}

void __93__ICThumbnailService_managedObjectContextChangeController_performUpdatesForManagedObjectIDs___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v7 = [*(a1 + 32) viewContext];
  v2 = [v7 ic_existingObjectWithID:*(a1 + 40)];
  v3 = ICDynamicCast();
  v4 = [v3 identifier];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)processThumbnailDescriptionResult:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 image];

  if (v5)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      v6 = [v4 configuration];
      v7 = [v6 prepareThumbnail];

      v8 = [v4 image];
      v9 = v8;
      if (v7)
      {
        v10 = [v4 image];
        [v10 size];
        v11 = [v9 imageByPreparingThumbnailOfSize:?];
        [v4 setImage:v11];
      }

      else
      {
        v10 = [v8 ic_decodeInBackground];
        [v4 setImage:v10];
      }
    }

    v12 = [(ICThumbnailService *)self cache];
    v13 = [v4 configuration];
    [v12 setObject:v4 forKeyedSubscript:v13];
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__74;
  v32 = __Block_byref_object_dispose__74;
  v33 = 0;
  v14 = [(ICThumbnailService *)self schedulingSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__ICThumbnailService_processThumbnailDescriptionResult___block_invoke;
  block[3] = &unk_1E8469640;
  v27 = &v28;
  block[4] = self;
  v15 = v4;
  v26 = v15;
  dispatch_sync(v14, block);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = v29[5];
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v34 count:16];
  if (v17)
  {
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v21 + 1) + 8 * v19);
        if (v20)
        {
          (*(v20 + 16))(v20, v15);
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v21 objects:v34 count:16];
    }

    while (v17);
  }

  _Block_object_dispose(&v28, 8);
}

void __56__ICThumbnailService_processThumbnailDescriptionResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callbacks];
  v3 = [*(a1 + 40) configuration];
  v4 = [v3 uniqueKey];
  v5 = [v2 objectForKeyedSubscript:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v10 = [*(a1 + 32) callbacks];
  v8 = [*(a1 + 40) configuration];
  v9 = [v8 uniqueKey];
  [v10 removeObjectForKey:v9];
}

- (id)thumbnailGeneratorForConfiguration:(id)a3
{
  v5 = [a3 thumbnailType];
  if (v5 <= 4)
  {
    if (v5 <= 1)
    {
      if (v5)
      {
        if (v5 != 1)
        {
          goto LABEL_20;
        }

        v6 = ICThumbnailGeneratorNote;
      }

      else
      {
        v6 = ICThumbnailGeneratorAttachment;
      }

      goto LABEL_18;
    }

    if ((v5 - 2) < 2)
    {
      v6 = ICThumbnailGeneratorNoteAttachments;
LABEL_18:
      v10 = [v6 alloc];
      v8 = [(ICThumbnailService *)self workerContext];
      v3 = [v10 initWithManagedObjectContext:v8];
      goto LABEL_19;
    }

    if (v5 != 4)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v5 > 9)
  {
    if ((v5 - 10) < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v5 != 5)
    {
      if (v5 != 7)
      {
        if (v5 != 8)
        {
          goto LABEL_20;
        }

        v6 = ICThumbnailGeneratorAvatar;
        goto LABEL_18;
      }

LABEL_16:
      v7 = [ICThumbnailGeneratorSystemPaper alloc];
      v8 = [(ICThumbnailService *)self workerContext];
      v9 = +[ICAssetThumbnailCache shared];
      v3 = [(ICThumbnailGeneratorSystemPaper *)v7 initWithManagedObjectContext:v8 cache:v9];

LABEL_19:
      goto LABEL_20;
    }

    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICThumbnailService thumbnailGeneratorForConfiguration:]" simulateCrash:1 showAlert:0 format:@"Cannot generate System Paper backdrop thumbnail"];
    v3 = 0;
  }

LABEL_20:

  return v3;
}

- (void)thumbnailWithConfiguration:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = &unk_1F4FC4388;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_1D4171000, log, OS_LOG_TYPE_ERROR, "ICThumbnailService timed out generating thumbnail synchronously after %@s for: %@.", buf, 0x16u);
}

@end