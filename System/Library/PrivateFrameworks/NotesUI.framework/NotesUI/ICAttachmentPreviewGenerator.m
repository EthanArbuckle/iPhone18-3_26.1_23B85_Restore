@interface ICAttachmentPreviewGenerator
+ (BOOL)docCamOCRGenerationEnabled;
+ (BOOL)imageClassificationEnabled;
+ (BOOL)imageOCRGenerationEnabled;
+ (ICAttachmentPreviewGenerator)sharedGenerator;
+ (void)purgeImageClassificationsInContext:(id)a3;
+ (void)purgeOCRInContext:(id)a3;
+ (void)setImageClassificationTemporarilyDisabled:(BOOL)a3;
- (BOOL)isPreviewGenerationSupported;
- (BOOL)previewOperationsIdle;
- (ICAttachmentPreviewGenerator)init;
- (id)progressForObjectID:(id)a3;
- (void)adjustUserTitleIfNecessaryForAttachment:(id)a3;
- (void)attachmentNeedsPostProcessingNotification:(id)a3;
- (void)attachmentNeedsPreviewGenerationNotification:(id)a3;
- (void)attachmentWillBeDeleted:(id)a3;
- (void)beginPostProcessingAfterDelayIfNecessaryWithForceDelay:(BOOL)a3;
- (void)cancelGenerationOfPendingPreviews;
- (void)cancelIfNeededForAttachment:(id)a3;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)disableAutomaticPreviewGeneration;
- (void)enableAutomaticPreviewGeneration;
- (void)fetchMissingOrOutdatedImageClassificationSummaryAttachmentIDsInContext:(id)a3 completion:(id)a4;
- (void)fetchMissingOrOutdatedMetaDataAttachmentIDsInContext:(id)a3 completion:(id)a4;
- (void)fetchMissingOrOutdatedOCRSummaryAttachmentIDsInContext:(id)a3 completion:(id)a4;
- (void)generateMissingOrOutdatedAttachmentMetaDataIfNeededInContext:(id)a3;
- (void)generatePendingPreviewForAttachment:(id)a3;
- (void)generatePendingPreviews;
- (void)generatePreviewIfNeededForAttachment:(id)a3;
- (void)generatePreviewIfNeededForAttachmentWithObjectID:(id)a3;
- (void)generatePreviewsIfNeeded;
- (void)mediaDidLoad:(id)a3;
- (void)operationComplete:(id)a3;
- (void)postProcessIfNeededForAttachment:(id)a3;
- (void)postProcessPendingPreviews;
- (void)postProcessPreviewForAttachment:(id)a3;
- (void)progressIndicatorTrackerStartAnimation;
- (void)progressIndicatorTrackerStopAnimation;
- (void)reachabilityChanged:(id)a3;
- (void)resume;
- (void)setProgress:(id)a3 forObjectID:(id)a4;
- (void)suspend;
@end

@implementation ICAttachmentPreviewGenerator

+ (ICAttachmentPreviewGenerator)sharedGenerator
{
  if (sharedGenerator_once != -1)
  {
    +[ICAttachmentPreviewGenerator sharedGenerator];
  }

  v3 = sharedGenerator;

  return v3;
}

uint64_t __47__ICAttachmentPreviewGenerator_sharedGenerator__block_invoke()
{
  v0 = objc_alloc_init(ICAttachmentPreviewGenerator);
  sharedGenerator = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (ICAttachmentPreviewGenerator)init
{
  v46 = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = ICAttachmentPreviewGenerator;
  v2 = [(ICAttachmentPreviewGenerator *)&v43 init];
  if (v2)
  {
    v3 = objc_alloc_init(ICAttachmentPreviewGeneratorOperationQueue);
    generatorQueue = v2->_generatorQueue;
    v2->_generatorQueue = v3;

    [(ICAttachmentPreviewGeneratorOperationQueue *)v2->_generatorQueue setName:@"Generator Queue"];
    [(ICAttachmentPreviewGeneratorOperationQueue *)v2->_generatorQueue setMaxConcurrentOperationCount:1];
    v5 = objc_alloc_init(ICAttachmentPreviewGeneratorOperationQueue);
    asyncGeneratorQueue = v2->_asyncGeneratorQueue;
    v2->_asyncGeneratorQueue = v5;

    [(ICAttachmentPreviewGeneratorOperationQueue *)v2->_asyncGeneratorQueue setName:@"Async Generator Queue"];
    [(ICAttachmentPreviewGeneratorOperationQueue *)v2->_asyncGeneratorQueue setMaxConcurrentOperationCount:2];
    v7 = objc_alloc_init(ICAttachmentPreviewGeneratorOperationQueue);
    costlyGeneratorQueue = v2->_costlyGeneratorQueue;
    v2->_costlyGeneratorQueue = v7;

    [(ICAttachmentPreviewGeneratorOperationQueue *)v2->_costlyGeneratorQueue setName:@"Costly Generator Queue"];
    [(ICAttachmentPreviewGeneratorOperationQueue *)v2->_costlyGeneratorQueue setMaxConcurrentOperationCount:1];
    v9 = objc_alloc_init(ICAttachmentPreviewGeneratorOperationQueue);
    postProcessingQueue = v2->_postProcessingQueue;
    v2->_postProcessingQueue = v9;

    [(ICAttachmentPreviewGeneratorOperationQueue *)v2->_postProcessingQueue setName:@"Attachment Post-Processing Queue"];
    [(ICAttachmentPreviewGeneratorOperationQueue *)v2->_postProcessingQueue setMaxConcurrentOperationCount:1];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.notes.preview-generator", v11);
    previewQueue = v2->_previewQueue;
    v2->_previewQueue = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.notes.preview-generator-progress", v14);
    previewProgressQueue = v2->_previewProgressQueue;
    v2->_previewProgressQueue = v15;

    v17 = NSClassFromString(&cfstr_Icprogressindi.isa);
    if (v17)
    {
      v18 = v17;
      v37 = MEMORY[0x1E69E9820];
      v38 = 3221225472;
      v39 = __36__ICAttachmentPreviewGenerator_init__block_invoke;
      v40 = &unk_1E846BA00;
      v41 = v2;
      v42 = v18;
      dispatch_async(MEMORY[0x1E69E96A0], &v37);
    }

    v19 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    lastOperationForAttachmentID = v2->_lastOperationForAttachmentID;
    v2->_lastOperationForAttachmentID = v19;

    v21 = [MEMORY[0x1E695DFA8] set];
    attachmentIDsPending = v2->_attachmentIDsPending;
    v2->_attachmentIDsPending = v21;

    v23 = [MEMORY[0x1E695DF90] dictionary];
    attachmentIDsProgress = v2->_attachmentIDsProgress;
    v2->_attachmentIDsProgress = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    postProcessingIDsPending = v2->_postProcessingIDsPending;
    v2->_postProcessingIDsPending = v25;

    [(ICAttachmentPreviewGenerator *)v2 enableAutomaticPreviewGeneration];
    v27 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      if ([objc_opt_class() docCamOCRGenerationEnabled])
      {
        v28 = @"enabled";
      }

      else
      {
        v28 = @"disabled";
      }

      *buf = 138412290;
      v45 = v28;
      _os_log_impl(&dword_1D4171000, v27, OS_LOG_TYPE_INFO, "DocCam OCR Generation is %@", buf, 0xCu);
    }

    v29 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      if ([objc_opt_class() imageOCRGenerationEnabled])
      {
        v30 = @"enabled";
      }

      else
      {
        v30 = @"disabled";
      }

      *buf = 138412290;
      v45 = v30;
      _os_log_impl(&dword_1D4171000, v29, OS_LOG_TYPE_INFO, "Image OCR Generation is %@", buf, 0xCu);
    }

    v31 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      if ([objc_opt_class() imageClassificationEnabled])
      {
        v32 = @"enabled";
      }

      else
      {
        v32 = @"disabled";
      }

      *buf = 138412290;
      v45 = v32;
      _os_log_impl(&dword_1D4171000, v31, OS_LOG_TYPE_INFO, "Image Classification is %@", buf, 0xCu);
    }

    v33 = [MEMORY[0x1E69B7800] sharedContext];
    v34 = [v33 workerManagedObjectContext];
    workerManagedObjectContext = v2->_workerManagedObjectContext;
    v2->_workerManagedObjectContext = v34;
  }

  return v2;
}

void __36__ICAttachmentPreviewGenerator_init__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 40)) initWithDelegate:*(a1 + 32)];
  [*(a1 + 32) setProgressTracker:v2];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICAttachmentPreviewGenerator;
  [(ICAttachmentPreviewGenerator *)&v4 dealloc];
}

- (void)progressIndicatorTrackerStartAnimation
{
  v2 = [(ICAttachmentPreviewGenerator *)self costlyGeneratorQueue];
  [v2 setSuspended:1];
}

- (void)progressIndicatorTrackerStopAnimation
{
  v2 = [(ICAttachmentPreviewGenerator *)self costlyGeneratorQueue];
  [v2 setSuspended:0];
}

- (BOOL)isPreviewGenerationSupported
{
  v2 = [MEMORY[0x1E69B7800] sharedContext];
  v3 = [v2 hasContextOptions:32];

  return v3;
}

- (BOOL)previewOperationsIdle
{
  v3 = [(ICAttachmentPreviewGenerator *)self attachmentIDsPending];
  v4 = [v3 count];

  v5 = [(ICAttachmentPreviewGenerator *)self generatorQueue];
  v6 = v4 | [v5 operationCount];

  v7 = [(ICAttachmentPreviewGenerator *)self costlyGeneratorQueue];
  v8 = [v7 operationCount];

  v9 = [(ICAttachmentPreviewGenerator *)self asyncGeneratorQueue];
  v10 = [v9 operationCount];

  return !v6 && (v8 | v10) == 0;
}

- (void)generatePreviewsIfNeeded
{
  if ([(ICAttachmentPreviewGenerator *)self isPreviewGenerationSupported])
  {
    v3 = [(ICAttachmentPreviewGenerator *)self previewQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__ICAttachmentPreviewGenerator_generatePreviewsIfNeeded__block_invoke;
    block[3] = &unk_1E8468BA0;
    block[4] = self;
    dispatch_async(v3, block);

    [(ICAttachmentPreviewGenerator *)self generatePendingPreviews];
  }
}

void __56__ICAttachmentPreviewGenerator_generatePreviewsIfNeeded__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) previewGenerationState] <= 1)
  {
    [*(a1 + 32) setPreviewGenerationState:2];
    v2 = [*(a1 + 32) attachmentIDsPending];
    [v2 removeAllObjects];
  }
}

+ (BOOL)docCamOCRGenerationEnabled
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"ICDocCamOCRDisabledDefaultsKey"];

  return v3 ^ 1;
}

+ (BOOL)imageOCRGenerationEnabled
{
  if ([a1 universalSearchProcessingLibraryEnabled])
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [v3 BOOLForKey:@"ICImageOCRDisabledDefaultsKey"] ^ 1;
  }

  return v2;
}

+ (BOOL)imageClassificationEnabled
{
  if ([a1 universalSearchProcessingLibraryEnabled])
  {
    return 0;
  }

  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"ICImageClassificationDisabledDefaultsKey"];
  v5 = v4 ^ 1;

  if ((v4 & 1) == 0)
  {
    objc_opt_class();
    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [v7 objectForKey:@"ICImageClassificationTemporarilyDisabledUntilDateDefaultsKey"];
    v9 = ICDynamicCast();

    if (v9)
    {
      v10 = [MEMORY[0x1E695DF00] date];
      v11 = [v10 compare:v9];

      if (v11 == -1)
      {
        v6 = 0;
        goto LABEL_10;
      }

      v12 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v12 removeObjectForKey:@"ICImageClassificationTemporarilyDisabledUntilDateDefaultsKey"];
    }

    v6 = 1;
LABEL_10:

    return v6 & v5;
  }

  v6 = 1;
  return v6 & v5;
}

+ (void)setImageClassificationTemporarilyDisabled:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:10800.0];
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v4 setObject:v3 forKey:@"ICImageClassificationTemporarilyDisabledUntilDateDefaultsKey"];

    v5 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1D4171000, v5, OS_LOG_TYPE_INFO, "image classification temporarily disabled until %@", &v7, 0xCu);
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v6 removeObjectForKey:@"ICImageClassificationTemporarilyDisabledUntilDateDefaultsKey"];

    v3 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1D4171000, v3, OS_LOG_TYPE_INFO, "image classification no longer temporarily disabled", &v7, 2u);
    }
  }
}

+ (void)purgeImageClassificationsInContext:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__ICAttachmentPreviewGenerator_purgeImageClassificationsInContext___block_invoke;
  v5[3] = &unk_1E8468BA0;
  v6 = v3;
  v4 = v3;
  [v4 performBlockAndWait:v5];
}

void __67__ICAttachmentPreviewGenerator_purgeImageClassificationsInContext___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69B7680] predicateForPasswordProtected:0];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(imageClassificationSummary != nil)"];
  v4 = MEMORY[0x1E696AB28];
  v8[0] = v2;
  v8[1] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v4 andPredicateWithSubpredicates:v5];

  v7 = [MEMORY[0x1E69B7680] attachmentsMatchingPredicate:v6 context:*(a1 + 32)];
  [v7 enumerateObjectsUsingBlock:&__block_literal_global_67];
}

void __67__ICAttachmentPreviewGenerator_purgeImageClassificationsInContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = objc_autoreleasePoolPush();
  [v3 setImageClassificationSummary:0];
  [v3 updateChangeCountWithReason:@"Purged image classification"];
  objc_autoreleasePoolPop(v2);
}

+ (void)purgeOCRInContext:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__ICAttachmentPreviewGenerator_purgeOCRInContext___block_invoke;
  v5[3] = &unk_1E8468BA0;
  v6 = v3;
  v4 = v3;
  [v4 performBlockAndWait:v5];
}

void __50__ICAttachmentPreviewGenerator_purgeOCRInContext___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69B7680] predicateForPasswordProtected:0];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(ocrSummary != nil)"];
  v4 = MEMORY[0x1E696AB28];
  v8[0] = v2;
  v8[1] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v4 andPredicateWithSubpredicates:v5];

  v7 = [MEMORY[0x1E69B7680] attachmentsMatchingPredicate:v6 context:*(a1 + 32)];
  [v7 enumerateObjectsUsingBlock:&__block_literal_global_75];
}

void __50__ICAttachmentPreviewGenerator_purgeOCRInContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = objc_autoreleasePoolPush();
  [v3 setOcrSummary:0];
  [v3 updateChangeCountWithReason:@"Purged OCR"];
  objc_autoreleasePoolPop(v2);
}

- (void)fetchMissingOrOutdatedImageClassificationSummaryAttachmentIDsInContext:(id)a3 completion:(id)a4
{
  v26[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(media != nil)"];
  v8 = [MEMORY[0x1E69B7680] predicateForPasswordProtected:0];
  v9 = [MEMORY[0x1E69B7680] notDeletedPredicate];
  v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(imageClassificationSummary == nil)"];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(imageClassificationSummaryVersion < %d)", *MEMORY[0x1E69B73C8]];
  v11 = MEMORY[0x1E696AB28];
  v26[0] = v20;
  v26[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v13 = [v11 orPredicateWithSubpredicates:v12];

  v14 = MEMORY[0x1E696AB28];
  v25[0] = v7;
  v25[1] = v9;
  v25[2] = v13;
  v25[3] = v8;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  v16 = [v14 andPredicateWithSubpredicates:v15];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __114__ICAttachmentPreviewGenerator_fetchMissingOrOutdatedImageClassificationSummaryAttachmentIDsInContext_completion___block_invoke;
  v21[3] = &unk_1E846BA48;
  v22 = v16;
  v23 = v5;
  v24 = v6;
  v17 = v6;
  v18 = v5;
  v19 = v16;
  [v18 performBlock:v21];
}

void __114__ICAttachmentPreviewGenerator_fetchMissingOrOutdatedImageClassificationSummaryAttachmentIDsInContext_completion___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E69B7680] ic_objectIDsMatchingPredicate:a1[4] context:a1[5]];
  (*(a1[6] + 16))();
}

- (void)fetchMissingOrOutdatedOCRSummaryAttachmentIDsInContext:(id)a3 completion:(id)a4
{
  v26[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(media != nil)"];
  v8 = [MEMORY[0x1E69B7680] predicateForPasswordProtected:0];
  v9 = [MEMORY[0x1E69B7680] notDeletedPredicate];
  v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(ocrSummary == nil)"];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(ocrSummaryVersion < %d)", *MEMORY[0x1E69B73D0]];
  v11 = MEMORY[0x1E696AB28];
  v26[0] = v20;
  v26[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v13 = [v11 orPredicateWithSubpredicates:v12];

  v14 = MEMORY[0x1E696AB28];
  v25[0] = v7;
  v25[1] = v13;
  v25[2] = v8;
  v25[3] = v9;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  v16 = [v14 andPredicateWithSubpredicates:v15];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __98__ICAttachmentPreviewGenerator_fetchMissingOrOutdatedOCRSummaryAttachmentIDsInContext_completion___block_invoke;
  v21[3] = &unk_1E846BA48;
  v22 = v16;
  v23 = v5;
  v24 = v6;
  v17 = v6;
  v18 = v5;
  v19 = v16;
  [v18 performBlock:v21];
}

void __98__ICAttachmentPreviewGenerator_fetchMissingOrOutdatedOCRSummaryAttachmentIDsInContext_completion___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E69B7680] ic_objectIDsMatchingPredicate:a1[4] context:a1[5]];
  (*(a1[6] + 16))();
}

- (void)fetchMissingOrOutdatedMetaDataAttachmentIDsInContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__ICAttachmentPreviewGenerator_fetchMissingOrOutdatedMetaDataAttachmentIDsInContext_completion___block_invoke;
  v10[3] = &unk_1E846BA98;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(ICAttachmentPreviewGenerator *)self fetchMissingOrOutdatedOCRSummaryAttachmentIDsInContext:v9 completion:v10];
}

void __96__ICAttachmentPreviewGenerator_fetchMissingOrOutdatedMetaDataAttachmentIDsInContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__ICAttachmentPreviewGenerator_fetchMissingOrOutdatedMetaDataAttachmentIDsInContext_completion___block_invoke_2;
  v7[3] = &unk_1E846BA70;
  v8 = v3;
  v9 = *(a1 + 48);
  v6 = v3;
  [v4 fetchMissingOrOutdatedImageClassificationSummaryAttachmentIDsInContext:v5 completion:v7];
}

void __96__ICAttachmentPreviewGenerator_fetchMissingOrOutdatedMetaDataAttachmentIDsInContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFA8];
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [v3 setWithArray:v4];
  [v7 addObjectsFromArray:v5];

  v6 = [v7 allObjects];
  (*(*(a1 + 40) + 16))();
}

- (void)generateMissingOrOutdatedAttachmentMetaDataIfNeededInContext:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __93__ICAttachmentPreviewGenerator_generateMissingOrOutdatedAttachmentMetaDataIfNeededInContext___block_invoke;
  v6[3] = &unk_1E846BAE8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(ICAttachmentPreviewGenerator *)self fetchMissingOrOutdatedMetaDataAttachmentIDsInContext:v5 completion:v6];
}

void __93__ICAttachmentPreviewGenerator_generateMissingOrOutdatedAttachmentMetaDataIfNeededInContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__ICAttachmentPreviewGenerator_generateMissingOrOutdatedAttachmentMetaDataIfNeededInContext___block_invoke_2;
  v8[3] = &unk_1E8468D98;
  v9 = v3;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  [v4 performBlock:v8];
}

void __93__ICAttachmentPreviewGenerator_generateMissingOrOutdatedAttachmentMetaDataIfNeededInContext___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __93__ICAttachmentPreviewGenerator_generateMissingOrOutdatedAttachmentMetaDataIfNeededInContext___block_invoke_3;
  v5[3] = &unk_1E846BAC0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v5];
}

void __93__ICAttachmentPreviewGenerator_generateMissingOrOutdatedAttachmentMetaDataIfNeededInContext___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E69B7680] ic_existingObjectWithID:v5 context:*(a1 + 32)];
  if ((([objc_opt_class() imageOCRGenerationEnabled] & 1) != 0 || objc_msgSend(objc_opt_class(), "imageClassificationEnabled")) && objc_msgSend(v4, "attachmentType") == 3)
  {
    [*(a1 + 40) postProcessIfNeededForAttachment:v4];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)generatePreviewIfNeededForAttachment:(id)a3
{
  v4 = a3;
  if ([(ICAttachmentPreviewGenerator *)self isPreviewGenerationSupported])
  {
    v5 = [v4 ic_permanentObjectID];
    v6 = [(ICAttachmentPreviewGenerator *)self previewQueue];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __69__ICAttachmentPreviewGenerator_generatePreviewIfNeededForAttachment___block_invoke;
    v11 = &unk_1E8468F80;
    v12 = self;
    v13 = v5;
    v7 = v5;
    dispatch_async(v6, &v8);

    [(ICAttachmentPreviewGenerator *)self generatePendingPreviews:v8];
    [(ICAttachmentPreviewGenerator *)self postProcessIfNeededForAttachment:v4];
  }
}

void __69__ICAttachmentPreviewGenerator_generatePreviewIfNeededForAttachment___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) previewGenerationState] <= 1)
  {
    [*(a1 + 32) setPreviewGenerationState:1];
    v2 = [*(a1 + 32) attachmentIDsPending];
    [v2 addObject:*(a1 + 40)];
  }
}

- (void)generatePreviewIfNeededForAttachmentWithObjectID:(id)a3
{
  v5 = a3;
  if ([(ICAttachmentPreviewGenerator *)self isPreviewGenerationSupported])
  {
    if ([v5 isTemporaryID])
    {
      v6 = MEMORY[0x1E69B7A38];
      v7 = NSStringFromSelector(a2);
      [v6 handleFailedAssertWithCondition:"!attachmentObjectID.isTemporaryID" functionName:"-[ICAttachmentPreviewGenerator generatePreviewIfNeededForAttachmentWithObjectID:]" simulateCrash:1 showAlert:0 format:{@"Can't send a temporary ID to %@", v7}];
    }

    v8 = [(ICAttachmentPreviewGenerator *)self previewQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__ICAttachmentPreviewGenerator_generatePreviewIfNeededForAttachmentWithObjectID___block_invoke;
    block[3] = &unk_1E8468F80;
    block[4] = self;
    v10 = v5;
    dispatch_async(v8, block);

    [(ICAttachmentPreviewGenerator *)self generatePendingPreviews];
  }
}

void __81__ICAttachmentPreviewGenerator_generatePreviewIfNeededForAttachmentWithObjectID___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) previewGenerationState] <= 1)
  {
    [*(a1 + 32) setPreviewGenerationState:1];
    v2 = [*(a1 + 32) attachmentIDsPending];
    [v2 addObject:*(a1 + 40)];
  }
}

- (void)attachmentNeedsPostProcessingNotification:(id)a3
{
  v4 = MEMORY[0x1E69B7680];
  v5 = [a3 object];
  v6 = [MEMORY[0x1E69B7800] sharedContext];
  v7 = [v6 managedObjectContext];
  v9 = [v4 ic_existingObjectWithID:v5 context:v7];

  v8 = v9;
  if (v9)
  {
    [(ICAttachmentPreviewGenerator *)self postProcessIfNeededForAttachment:v9];
    v8 = v9;
  }
}

- (void)postProcessIfNeededForAttachment:(id)a3
{
  v4 = a3;
  if (([objc_opt_class() docCamOCRGenerationEnabled] & 1) != 0 || (objc_msgSend(objc_opt_class(), "imageOCRGenerationEnabled") & 1) != 0 || objc_msgSend(objc_opt_class(), "imageClassificationEnabled"))
  {
    v5 = [v4 attachmentModel];
    v6 = [v5 needToPostProcessAttachment];

    if (v6)
    {
      v7 = [(ICAttachmentPreviewGenerator *)self postProcessingQueue];
      [v7 cancelOperationsForAttachment:v4];

      [v4 identifier];
      v8 = [(ICAttachmentPreviewGenerator *)self previewQueue];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __65__ICAttachmentPreviewGenerator_postProcessIfNeededForAttachment___block_invoke;
      v9[3] = &unk_1E8468F80;
      v9[4] = self;
      v10 = v4;
      dispatch_async(v8, v9);
    }
  }
}

uint64_t __65__ICAttachmentPreviewGenerator_postProcessIfNeededForAttachment___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) postProcessingIDsPending];
  v3 = [*(a1 + 40) objectID];
  [v2 addObject:v3];

  v4 = *(a1 + 32);

  return [v4 beginPostProcessingAfterDelayIfNecessaryWithForceDelay:1];
}

- (void)beginPostProcessingAfterDelayIfNecessaryWithForceDelay:(BOOL)a3
{
  if (([objc_opt_class() docCamOCRGenerationEnabled] & 1) != 0 || (objc_msgSend(objc_opt_class(), "imageOCRGenerationEnabled") & 1) != 0 || objc_msgSend(objc_opt_class(), "imageClassificationEnabled"))
  {
    v5 = [(ICAttachmentPreviewGenerator *)self previewQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __87__ICAttachmentPreviewGenerator_beginPostProcessingAfterDelayIfNecessaryWithForceDelay___block_invoke;
    v6[3] = &unk_1E846BB10;
    v6[4] = self;
    v7 = a3;
    dispatch_async(v5, v6);
  }
}

void __87__ICAttachmentPreviewGenerator_beginPostProcessingAfterDelayIfNecessaryWithForceDelay___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) postProcessingIDsPending];
  v3 = [v2 count];

  if (v3)
  {
    if ((*(a1 + 40) & 1) != 0 || ![*(a1 + 32) previewOperationsIdle])
    {
      v5 = *(a1 + 32);
      v6 = [v5 postProcessingRequestIndex] + 1;
      [v5 setPostProcessingRequestIndex:v6];
      v7 = dispatch_time(0, 2000000000);
      v8 = [*(a1 + 32) previewQueue];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __87__ICAttachmentPreviewGenerator_beginPostProcessingAfterDelayIfNecessaryWithForceDelay___block_invoke_2;
      v9[3] = &unk_1E84698E0;
      v9[4] = *(a1 + 32);
      v9[5] = v6;
      dispatch_after(v7, v8, v9);
    }

    else
    {
      v4 = *(a1 + 32);

      [v4 postProcessPendingPreviews];
    }
  }
}

void __87__ICAttachmentPreviewGenerator_beginPostProcessingAfterDelayIfNecessaryWithForceDelay___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) postProcessingRequestIndex] == *(a1 + 40))
  {
    v2 = [*(a1 + 32) postProcessingIDsPending];
    v3 = [v2 count];

    if (v3)
    {
      if ([*(a1 + 32) previewOperationsIdle])
      {
        v4 = *(a1 + 32);

        [v4 postProcessPendingPreviews];
      }
    }
  }
}

- (void)postProcessPendingPreviews
{
  if (([objc_opt_class() docCamOCRGenerationEnabled] & 1) != 0 || (objc_msgSend(objc_opt_class(), "imageOCRGenerationEnabled") & 1) != 0 || objc_msgSend(objc_opt_class(), "imageClassificationEnabled"))
  {
    v3 = [(ICAttachmentPreviewGenerator *)self previewQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__ICAttachmentPreviewGenerator_postProcessPendingPreviews__block_invoke;
    block[3] = &unk_1E8468BA0;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

void __58__ICAttachmentPreviewGenerator_postProcessPendingPreviews__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) previewOperationsIdle])
  {
    v2 = [*(a1 + 32) postProcessingIDsPending];
    v3 = [v2 firstObject];

    if (v3)
    {
      v4 = [*(a1 + 32) postProcessingIDsPending];
      [v4 removeObject:v3];

      v5 = [*(a1 + 32) workerManagedObjectContext];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __58__ICAttachmentPreviewGenerator_postProcessPendingPreviews__block_invoke_2;
      v7[3] = &unk_1E8468D98;
      v8 = v3;
      v9 = v5;
      v10 = *(a1 + 32);
      v6 = v5;
      [v6 performBlockAndWait:v7];
    }
  }
}

void __58__ICAttachmentPreviewGenerator_postProcessPendingPreviews__block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [MEMORY[0x1E69B7680] ic_existingObjectWithID:*(a1 + 32) context:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 attachmentModel];
    v6 = [v5 needToPostProcessAttachment];

    if (v6)
    {
      [*(a1 + 48) postProcessPreviewForAttachment:v4];
    }

    else
    {
      [v4 identifier];
    }

    if (([v4 hasChanges] & 1) == 0)
    {
      [*(a1 + 40) ic_refreshObject:v4 mergeChanges:0];
    }
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __58__ICAttachmentPreviewGenerator_postProcessPendingPreviews__block_invoke_2_cold_1(v2, v7);
    }
  }
}

- (void)postProcessPreviewForAttachment:(id)a3
{
  v18 = a3;
  [(ICAttachmentPreviewGenerator *)self adjustUserTitleIfNecessaryForAttachment:v18];
  v4 = [v18 attachmentModel];
  v5 = [v4 needToPostProcessAttachment];

  if (!v5)
  {
    goto LABEL_13;
  }

  v7 = [v18 attachmentModel];
  if (![(ICAttachmentPreviewGeneratorOCROperation *)v7 supportsOCR])
  {
    goto LABEL_9;
  }

  if ([objc_opt_class() docCamOCRGenerationEnabled] && (objc_msgSend(v18, "isChildOfDocumentGallery") & 1) != 0)
  {

    goto LABEL_8;
  }

  if (![objc_opt_class() imageOCRGenerationEnabled])
  {
LABEL_9:

    goto LABEL_10;
  }

  v8 = [v18 isImage];

  if (v8)
  {
LABEL_8:
    v9 = [ICAttachmentPreviewGeneratorOCROperation alloc];
    v10 = [v18 objectID];
    v7 = [(ICAttachmentPreviewGeneratorOperation *)v9 initWithAttachmentManagedObjectID:v10];

    v11 = [(ICAttachmentPreviewGenerator *)self postProcessingQueue];
    [v11 addOperation:v7];

    goto LABEL_9;
  }

LABEL_10:
  v6 = [objc_opt_class() imageClassificationEnabled];
  if (v6)
  {
    v12 = [v18 attachmentModel];
    v13 = [v12 supportsImageClassification];

    if (v13)
    {
      v14 = [ICAttachmentPreviewGeneratorImageClassificationOperation alloc];
      v15 = [v18 objectID];
      v16 = [(ICAttachmentPreviewGeneratorOperation *)v14 initWithAttachmentManagedObjectID:v15];

      v17 = [(ICAttachmentPreviewGenerator *)self postProcessingQueue];
      [v17 addOperation:v16];
    }
  }

LABEL_13:

  MEMORY[0x1EEE66BB8](v6);
}

- (void)adjustUserTitleIfNecessaryForAttachment:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 parentAttachment];
  v5 = [v4 title];
  v6 = [v4 defaultTitle];
  v7 = [v5 isEqualToString:v6];

  if ([v3 isChildOfDocumentGallery])
  {
    if ((v7 & 1) == 0)
    {
      v8 = [v4 userTitle];

      if (!v8)
      {
        v9 = [v3 parentAttachment];
        v10 = [v9 attachmentModel];

        objc_opt_class();
        v11 = ICDynamicCast();
        v21 = 0;
        v22 = &v21;
        v23 = 0x2020000000;
        v24 = 0;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __72__ICAttachmentPreviewGenerator_adjustUserTitleIfNecessaryForAttachment___block_invoke;
        v20[3] = &unk_1E846BB38;
        v20[4] = &v21;
        [v11 enumerateSubAttachmentsWithBlock:v20];
        if ((v22[3] & 1) == 0)
        {
          v12 = os_log_create("com.apple.notes", "PreviewGeneration");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = [v4 identifier];
            [(ICAttachmentPreviewGenerator *)v13 adjustUserTitleIfNecessaryForAttachment:buf, v12];
          }

          v14 = [v4 title];
          [v4 setUserTitle:v14];

          v15 = [v4 note];
          v16 = [v15 regenerateTitle:1 snippet:1];

          if (v16)
          {
            v17 = [v4 note];
            [v17 markShareDirtyIfNeededWithReason:@"Regenerated title from attachment OCR"];

            v18 = [v4 note];
            [v18 updateChangeCountWithReason:@"Regenerated title from attachment OCR"];
          }

          v19 = [v4 managedObjectContext];
          [v19 ic_save];
        }

        _Block_object_dispose(&v21, 8);
      }
    }
  }
}

void __72__ICAttachmentPreviewGenerator_adjustUserTitleIfNecessaryForAttachment___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = [a2 ocrSummary];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }
}

- (void)attachmentNeedsPreviewGenerationNotification:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B7800] sharedContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__ICAttachmentPreviewGenerator_attachmentNeedsPreviewGenerationNotification___block_invoke;
  v7[3] = &unk_1E8469020;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 performBackgroundTask:v7];
}

void __77__ICAttachmentPreviewGenerator_attachmentNeedsPreviewGenerationNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69B7680];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 object];
  v8 = [v3 ic_existingObjectWithID:v6 context:v5];

  v7 = v8;
  if (v8)
  {
    [*(a1 + 40) generatePreviewIfNeededForAttachment:v8];
    v7 = v8;
  }
}

- (void)attachmentWillBeDeleted:(id)a3
{
  v8 = [a3 object];
  v4 = [(ICAttachmentPreviewGenerator *)self generatorQueue];
  [v4 cancelOperationsForAttachment:v8];

  v5 = [(ICAttachmentPreviewGenerator *)self asyncGeneratorQueue];
  [v5 cancelOperationsForAttachment:v8];

  v6 = [(ICAttachmentPreviewGenerator *)self costlyGeneratorQueue];
  [v6 cancelOperationsForAttachment:v8];

  v7 = [(ICAttachmentPreviewGenerator *)self postProcessingQueue];
  [v7 cancelOperationsForAttachment:v8];
}

- (void)mediaDidLoad:(id)a3
{
  v4 = MEMORY[0x1E69B77E0];
  v5 = [a3 object];
  v6 = [MEMORY[0x1E69B7800] sharedContext];
  v7 = [v6 managedObjectContext];
  v9 = [v4 ic_existingObjectWithID:v5 context:v7];

  v8 = [v9 attachment];
  if (v8)
  {
    [(ICAttachmentPreviewGenerator *)self generatePreviewIfNeededForAttachment:v8];
  }
}

- (void)reachabilityChanged:(id)a3
{
  v4 = [MEMORY[0x1E69B7AA0] sharedReachabilityForInternetConnection];

  if (v4)
  {
    v5 = 1;
    atomic_compare_exchange_strong(&self->_shouldGenerateAttachmentsWhenReachable, &v5, 0);
    if (v5 == 1)
    {

      [(ICAttachmentPreviewGenerator *)self generatePreviewsIfNeeded];
    }
  }
}

- (void)cancelGenerationOfPendingPreviews
{
  v3 = [(ICAttachmentPreviewGenerator *)self generatorQueue];
  [v3 cancelAllOperations];

  v4 = [(ICAttachmentPreviewGenerator *)self asyncGeneratorQueue];
  [v4 cancelAllOperations];

  v5 = [(ICAttachmentPreviewGenerator *)self costlyGeneratorQueue];
  [v5 cancelAllOperations];

  v6 = [(ICAttachmentPreviewGenerator *)self postProcessingQueue];
  [v6 cancelAllOperations];
}

- (void)didReceiveMemoryWarning
{
  v3 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ICAttachmentPreviewGenerator *)v3 didReceiveMemoryWarning];
  }

  v4 = [(ICAttachmentPreviewGenerator *)self postProcessingQueue];
  [v4 cancelAllOperations];
}

- (void)enableAutomaticPreviewGeneration
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_attachmentDidLoad_ name:*MEMORY[0x1E69B73F0] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_attachmentNeedsPreviewGenerationNotification_ name:*MEMORY[0x1E69B7410] object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel_attachmentWillBeDeleted_ name:*MEMORY[0x1E69B7468] object:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:self selector:sel_mediaDidLoad_ name:*MEMORY[0x1E69B74B8] object:0];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = *MEMORY[0x1E695D350];
  v9 = [MEMORY[0x1E69B7800] sharedContext];
  v10 = [v9 managedObjectContext];
  [v7 addObserver:self selector:sel_managedObjectContextDidSave_ name:v8 object:v10];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:self selector:sel_reachabilityChanged_ name:*MEMORY[0x1E69B7B50] object:0];
}

- (void)disableAutomaticPreviewGeneration
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];
}

- (void)suspend
{
  v3 = [(ICAttachmentPreviewGenerator *)self previewQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__ICAttachmentPreviewGenerator_suspend__block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __39__ICAttachmentPreviewGenerator_suspend__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) generatorQueue];
  [v2 suspend];

  v3 = [*(a1 + 32) asyncGeneratorQueue];
  [v3 suspend];

  v4 = [*(a1 + 32) costlyGeneratorQueue];
  [v4 suspend];

  v5 = [*(a1 + 32) postProcessingQueue];
  [v5 suspend];
}

- (void)resume
{
  v3 = [(ICAttachmentPreviewGenerator *)self previewQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__ICAttachmentPreviewGenerator_resume__block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __38__ICAttachmentPreviewGenerator_resume__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) generatorQueue];
  [v2 resume];

  v3 = [*(a1 + 32) asyncGeneratorQueue];
  [v3 resume];

  v4 = [*(a1 + 32) costlyGeneratorQueue];
  [v4 resume];

  v5 = [*(a1 + 32) postProcessingQueue];
  [v5 resume];

  v6 = *(a1 + 32);

  return [v6 beginPostProcessingAfterDelayIfNecessaryWithForceDelay:0];
}

- (void)operationComplete:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentPreviewGenerator *)self previewQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__ICAttachmentPreviewGenerator_operationComplete___block_invoke;
  v7[3] = &unk_1E8468F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __50__ICAttachmentPreviewGenerator_operationComplete___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lastOperationForAttachmentID];
  v3 = [*(a1 + 40) attachmentID];
  v9 = [v2 objectForKey:v3];

  v4 = *(a1 + 40);
  if (v9 == v4)
  {
    v5 = [*(a1 + 32) lastOperationForAttachmentID];
    v6 = [*(a1 + 40) attachmentID];
    [v5 removeObjectForKey:v6];

    v4 = *(a1 + 40);
  }

  v7 = *(a1 + 32);
  v8 = [v4 type] != 2 && objc_msgSend(*(a1 + 40), "type") != 3;
  [v7 beginPostProcessingAfterDelayIfNecessaryWithForceDelay:v8];
}

- (void)setProgress:(id)a3 forObjectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICAttachmentPreviewGenerator *)self previewProgressQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__ICAttachmentPreviewGenerator_setProgress_forObjectID___block_invoke;
  block[3] = &unk_1E8468D98;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __56__ICAttachmentPreviewGenerator_setProgress_forObjectID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) attachmentIDsProgress];
  v4 = *(a1 + 48);
  v5 = v3;
  if (v2)
  {
    [v3 setObject:v2 forKeyedSubscript:v4];
  }

  else
  {
    [v3 removeObjectForKey:v4];
  }
}

- (id)progressForObjectID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__41;
  v16 = __Block_byref_object_dispose__41;
  v17 = 0;
  v5 = [(ICAttachmentPreviewGenerator *)self previewProgressQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__ICAttachmentPreviewGenerator_progressForObjectID___block_invoke;
  block[3] = &unk_1E8469640;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __52__ICAttachmentPreviewGenerator_progressForObjectID___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) attachmentIDsProgress];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)generatePendingPreviews
{
  if (_UIApplicationIsExtension())
  {
    v3 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(ICAttachmentPreviewGenerator *)v3 generatePendingPreviews];
    }
  }

  else
  {
    v4 = [(ICAttachmentPreviewGenerator *)self previewQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__ICAttachmentPreviewGenerator_generatePendingPreviews__block_invoke;
    block[3] = &unk_1E8468BA0;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

void __55__ICAttachmentPreviewGenerator_generatePendingPreviews__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) previewGenerationState])
  {
    if ([*(a1 + 32) previewGenerationState] == 1)
    {
      v2 = [*(a1 + 32) attachmentIDsPending];
      v3 = [v2 copy];
    }

    else
    {
      v3 = 0;
    }

    [*(a1 + 32) setPreviewGenerationState:0];
    v4 = [*(a1 + 32) attachmentIDsPending];
    [v4 removeAllObjects];

    v5 = [*(a1 + 32) workerManagedObjectContext];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__ICAttachmentPreviewGenerator_generatePendingPreviews__block_invoke_2;
    v8[3] = &unk_1E8468D98;
    v9 = v3;
    v10 = v5;
    v11 = *(a1 + 32);
    v6 = v5;
    v7 = v3;
    [v6 performBlockAndWait:v8];
  }
}

void __55__ICAttachmentPreviewGenerator_generatePendingPreviews__block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        v7 = 0;
        do
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * v7);
          v9 = objc_autoreleasePoolPush();
          v10 = [MEMORY[0x1E69B7680] ic_existingObjectWithID:v8 context:*(a1 + 40)];
          if (v10)
          {
            [*(a1 + 48) generatePendingPreviewForAttachment:v10];
            if (([v10 hasChanges] & 1) == 0)
            {
              [*(a1 + 40) ic_refreshObject:v10 mergeChanges:0];
            }
          }

          else
          {
            v11 = os_log_create("com.apple.notes", "PreviewGeneration");
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v20 = v8;
              _os_log_debug_impl(&dword_1D4171000, v11, OS_LOG_TYPE_DEBUG, "unable to find attachment for generating preview: %@", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v9);
          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__ICAttachmentPreviewGenerator_generatePendingPreviews__block_invoke_156;
    v13[3] = &unk_1E846BB60;
    v12 = *(a1 + 40);
    v14 = vextq_s8(v12, v12, 8uLL);
    [MEMORY[0x1E69B7680] enumerateAttachmentsInContext:v12.i64[0] batchSize:1 visibleOnly:1 saveAfterBatch:0 usingBlock:v13];
  }
}

void __55__ICAttachmentPreviewGenerator_generatePendingPreviews__block_invoke_156(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) generatePendingPreviewForAttachment:v3];
  if (([v3 hasChanges] & 1) == 0)
  {
    [*(a1 + 40) ic_refreshObject:v3 mergeChanges:0];
  }
}

- (void)generatePendingPreviewForAttachment:(id)a3
{
  v4 = a3;
  if ([(ICAttachmentPreviewGenerator *)self isPreviewGenerationSupported])
  {
    v5 = [v4 attachmentModel];
    v6 = [v5 tooLargeForPreviewGeneration];

    if ((v6 & 1) == 0)
    {
      v7 = [v4 managedObjectContext];
      v8 = [(ICAttachmentPreviewGenerator *)self previewQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__ICAttachmentPreviewGenerator_generatePendingPreviewForAttachment___block_invoke;
      block[3] = &unk_1E8468D98;
      v11 = v7;
      v12 = v4;
      v13 = self;
      v9 = v7;
      dispatch_async(v8, block);
    }
  }
}

void __68__ICAttachmentPreviewGenerator_generatePendingPreviewForAttachment___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__ICAttachmentPreviewGenerator_generatePendingPreviewForAttachment___block_invoke_2;
  v5[3] = &unk_1E8468D98;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  [v2 performBlockAndWait:v5];
}

uint64_t __68__ICAttachmentPreviewGenerator_generatePendingPreviewForAttachment___block_invoke_2(id *a1)
{
  v2 = a1 + 4;
  if (([a1[4] isDeleted] & 1) == 0 && (objc_msgSend(*v2, "markedForDeletion") & 1) == 0)
  {
    v3 = [*v2 attachmentModel];
    if ([v3 hasPreviews])
    {
      v4 = [*v2 note];
      v5 = [v4 isPasswordProtectedAndLocked];

      if (!v5)
      {
        v6 = [*v2 attachmentModel];
        v7 = [v6 requiresNetworkToGeneratePreview];

        if (v7 && ([MEMORY[0x1E69B7AA0] sharedReachabilityForInternetConnection], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "currentReachabilityStatus"), v8, !v9))
        {
          [a1[6] setShouldGenerateAttachmentsWhenReachable:1];
        }

        else
        {
          v10 = [MEMORY[0x1E696AAE8] mainBundle];
          if (([v10 ic_isAppExtension] & 1) == 0)
          {

LABEL_15:
            v16 = [*v2 attachmentModel];
            v17 = [v16 needToGeneratePreviews];

            if (v17)
            {
              v18 = [*v2 objectID];
              v19 = [*v2 attachmentModel];
              v20 = [v19 generateAsynchronousPreviews];

              if (v20)
              {
                v21 = [a1[6] asyncGeneratorQueue];
              }

              else
              {
                v22 = [a1[4] attachmentModel];
                v23 = [v22 generatePreviewsDuringCloudActivity];

                v24 = a1[6];
                if (v23)
                {
                  [v24 generatorQueue];
                }

                else
                {
                  [v24 costlyGeneratorQueue];
                }
                v21 = ;
              }

              v25 = v21;
              [v21 suspend];
              v26 = [a1[6] lastOperationForAttachmentID];
              v27 = [v26 objectForKey:v18];

              if (v27 && ([v27 dependencies], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "count"), v28, v29))
              {
                p_super = os_log_create("com.apple.notes", "PreviewGeneration");
                if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
                {
                  __68__ICAttachmentPreviewGenerator_generatePendingPreviewForAttachment___block_invoke_2_cold_1(v2, p_super);
                }
              }

              else
              {
                v31 = [[ICAttachmentPreviewGeneratorOperation alloc] initWithAttachmentManagedObjectID:v18];
                p_super = &v31->super.super;
                if (v27)
                {
                  [(ICAttachmentPreviewGeneratorOperation *)v31 addDependency:v27];
                }

                [v25 addOperation:p_super];
                v32 = [a1[6] lastOperationForAttachmentID];
                [v32 setObject:p_super forKey:v18];
              }

              v33 = [*v2 attachmentModel];
              v34 = [v33 requiresPostProcessing];

              if (v34)
              {
                [a1[6] postProcessIfNeededForAttachment:a1[4]];
              }

              [v25 resume];
            }

            return [a1[5] ic_refreshObject:a1[4] mergeChanges:0];
          }

          v11 = [*v2 note];
          v12 = [v11 markedForDeletion];

          if (v12)
          {
            goto LABEL_15;
          }
        }
      }
    }

    else
    {
    }
  }

  v14 = a1[4];
  v13 = a1[5];

  return [v13 ic_refreshObject:v14 mergeChanges:0];
}

- (void)cancelIfNeededForAttachment:(id)a3
{
  v41[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(ICAttachmentPreviewGenerator *)self suspend];
  v26 = v4;
  v5 = [v4 objectID];
  v6 = [(ICAttachmentPreviewGenerator *)self asyncGeneratorQueue];
  v41[0] = v6;
  v7 = [(ICAttachmentPreviewGenerator *)self costlyGeneratorQueue];
  v41[1] = v7;
  v8 = [(ICAttachmentPreviewGenerator *)self generatorQueue];
  v41[2] = v8;
  v25 = self;
  v9 = [(ICAttachmentPreviewGenerator *)self postProcessingQueue];
  v41[3] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v28 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v15 = [v14 operations];
        v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v32;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v32 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v31 + 1) + 8 * j);
              v21 = [v20 attachmentID];
              v22 = [v21 isEqual:v5];

              if (v22)
              {
                [v20 cancel];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v17);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  v23 = [(ICAttachmentPreviewGenerator *)v25 previewQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__ICAttachmentPreviewGenerator_cancelIfNeededForAttachment___block_invoke;
  block[3] = &unk_1E8468F80;
  block[4] = v25;
  v30 = v5;
  v24 = v5;
  dispatch_sync(v23, block);

  [(ICAttachmentPreviewGenerator *)v25 resume];
}

void __60__ICAttachmentPreviewGenerator_cancelIfNeededForAttachment___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attachmentIDsPending];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) postProcessingIDsPending];
  [v3 removeObject:*(a1 + 40)];
}

void __58__ICAttachmentPreviewGenerator_postProcessPendingPreviews__block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "unable to find attachment for post processing: %@", &v3, 0xCu);
}

- (void)adjustUserTitleIfNecessaryForAttachment:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1D4171000, log, OS_LOG_TYPE_DEBUG, "Clearing OCR generated user title from gallery attachment %@", buf, 0xCu);
}

void __68__ICAttachmentPreviewGenerator_generatePendingPreviewForAttachment___block_invoke_2_cold_1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*a1 shortLoggingDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "Existing preview generation operations existed, not adding more for %@", &v4, 0xCu);
}

@end