@interface DCDocCamPDFGenerator
+ (OS_dispatch_queue)fileQueue;
+ (OS_dispatch_queue)syncGeneratorQueue;
+ (id)blockingGeneratepdfURLForDocumentInfoCollection:(id)collection imageCache:(id)cache withProgress:(id)progress error:(id *)error;
+ (id)folderPathForDocumentInfoCollection:(id)collection;
+ (id)folderPathForDocumentInfoCollectionIdentifier:(id)identifier;
+ (id)pdfURLForDocumentInfoCollection:(id)collection;
+ (id)rootPDFFolderPath;
+ (id)versionPDFPathForDocumentInfoCollection:(id)collection;
+ (id)versionfolderPathForDocumentInfoCollection:(id)collection;
+ (void)createEmptyPDFFileAtURLIFNecessaryForDocumentInfoCollection:(id)collection;
+ (void)createTmpDirectory:(id)directory;
+ (void)deleteAllDocCamPDFs;
+ (void)deletePDFFolderIfExistsForDocumentInfoCollection:(id)collection;
+ (void)generatePDFsIfNecessaryForDocumentInfoCollection:(id)collection imageCache:(id)cache displayWindow:(id)window presentingViewController:(id)controller completionHandler:(id)handler;
+ (void)initialize;
+ (void)performPDFGenerationWithGenerator:(id)generator docInfoCollection:(id)collection imageCache:(id)cache progress:(id)progress;
@end

@implementation DCDocCamPDFGenerator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    rootPDFFolderPath = [self rootPDFFolderPath];
    fileManager = [self fileManager];
    [fileManager removeItemAtPath:rootPDFFolderPath error:0];
  }
}

+ (OS_dispatch_queue)syncGeneratorQueue
{
  if (syncGeneratorQueue_onceToken != -1)
  {
    +[DCDocCamPDFGenerator syncGeneratorQueue];
  }

  v3 = syncGeneratorQueue_sSyncGeneratorQueue;

  return v3;
}

void __42__DCDocCamPDFGenerator_syncGeneratorQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("PDF Sync Generator Queue", v2);
  v1 = syncGeneratorQueue_sSyncGeneratorQueue;
  syncGeneratorQueue_sSyncGeneratorQueue = v0;
}

+ (OS_dispatch_queue)fileQueue
{
  if (fileQueue_onceToken != -1)
  {
    +[DCDocCamPDFGenerator fileQueue];
  }

  v3 = fileQueue_sFileQueue;

  return v3;
}

void __33__DCDocCamPDFGenerator_fileQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("PDF File Queue", v2);
  v1 = fileQueue_sFileQueue;
  fileQueue_sFileQueue = v0;
}

+ (id)rootPDFFolderPath
{
  if (rootPDFFolderPath_onceToken != -1)
  {
    +[DCDocCamPDFGenerator rootPDFFolderPath];
  }

  v3 = rootPDFFolderPath_path;

  return v3;
}

void __41__DCDocCamPDFGenerator_rootPDFFolderPath__block_invoke()
{
  v2 = NSTemporaryDirectory();
  v0 = [v2 stringByAppendingPathComponent:@"docCamTempPDFFolder"];
  v1 = rootPDFFolderPath_path;
  rootPDFFolderPath_path = v0;
}

+ (id)folderPathForDocumentInfoCollectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  rootPDFFolderPath = [self rootPDFFolderPath];
  v6 = [rootPDFFolderPath stringByAppendingPathComponent:identifierCopy];

  return v6;
}

+ (id)folderPathForDocumentInfoCollection:(id)collection
{
  uniqueIdentifier = [collection uniqueIdentifier];
  v5 = [self folderPathForDocumentInfoCollectionIdentifier:uniqueIdentifier];

  return v5;
}

+ (id)versionfolderPathForDocumentInfoCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [self folderPathForDocumentInfoCollection:collectionCopy];
  v6 = MEMORY[0x277CCABB0];
  docCamPDFVersion = [collectionCopy docCamPDFVersion];

  v8 = [v6 numberWithInteger:docCamPDFVersion];
  stringValue = [v8 stringValue];
  v10 = [v5 stringByAppendingPathComponent:stringValue];

  return v10;
}

+ (id)versionPDFPathForDocumentInfoCollection:(id)collection
{
  collectionCopy = collection;
  title = [collectionCopy title];
  dc_sanitizedFilenameString = [title dc_sanitizedFilenameString];
  if (![(__CFString *)dc_sanitizedFilenameString length])
  {

    dc_sanitizedFilenameString = @"Scanned Documents";
  }

  v7 = [self versionfolderPathForDocumentInfoCollection:collectionCopy];
  v8 = [v7 stringByAppendingPathComponent:dc_sanitizedFilenameString];

  v9 = [v8 stringByAppendingPathExtension:@"pdf"];

  return v9;
}

+ (void)createEmptyPDFFileAtURLIFNecessaryForDocumentInfoCollection:(id)collection
{
  v4 = [self versionPDFPathForDocumentInfoCollection:collection];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  fileQueue = [self fileQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__DCDocCamPDFGenerator_createEmptyPDFFileAtURLIFNecessaryForDocumentInfoCollection___block_invoke;
  v8[3] = &unk_278F92CD8;
  v9 = v5;
  selfCopy = self;
  v7 = v5;
  dispatch_sync(fileQueue, v8);
}

void __84__DCDocCamPDFGenerator_createEmptyPDFFileAtURLIFNecessaryForDocumentInfoCollection___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) path];
    v4 = [v3 stringByDeletingLastPathComponent];
    [v2 createTmpDirectory:v4];

    v5 = [MEMORY[0x277CBEA90] data];
    [v5 writeToURL:*(a1 + 32) atomically:1];
  }
}

+ (void)createTmpDirectory:(id)directory
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DCDocCamPDFGenerator_createTmpDirectory___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v4 = createTmpDirectory__once;
  directoryCopy = directory;
  if (v4 != -1)
  {
    dispatch_once(&createTmpDirectory__once, block);
  }

  fileManager = [self fileManager];
  [fileManager createDirectoryAtPath:directoryCopy withIntermediateDirectories:1 attributes:0 error:0];
}

void __43__DCDocCamPDFGenerator_createTmpDirectory___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x277D76770];
  v4 = [MEMORY[0x277D75128] sharedApplication];
  [v5 addObserver:v2 selector:sel_applicationWillTerminate_ name:v3 object:v4];
}

+ (void)deletePDFFolderIfExistsForDocumentInfoCollection:(id)collection
{
  collectionCopy = collection;
  fileManager = [self fileManager];
  v5 = [self folderPathForDocumentInfoCollection:collectionCopy];

  if ([fileManager fileExistsAtPath:v5])
  {
    [fileManager removeItemAtPath:v5 error:0];
  }
}

+ (void)deleteAllDocCamPDFs
{
  fileQueue = [self fileQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DCDocCamPDFGenerator_deleteAllDocCamPDFs__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(fileQueue, block);

  v4 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[(DCDocCamPDFGenerator *)v4];
  }
}

void __43__DCDocCamPDFGenerator_deleteAllDocCamPDFs__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) fileManager];
  v2 = [*(a1 + 32) rootPDFFolderPath];
  [v3 removeItemAtPath:v2 error:0];
}

+ (id)pdfURLForDocumentInfoCollection:(id)collection
{
  collectionCopy = collection;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  fileQueue = [self fileQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DCDocCamPDFGenerator_pdfURLForDocumentInfoCollection___block_invoke;
  block[3] = &unk_278F932A0;
  v11 = &v13;
  selfCopy = self;
  v10 = collectionCopy;
  v6 = collectionCopy;
  dispatch_sync(fileQueue, block);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __56__DCDocCamPDFGenerator_pdfURLForDocumentInfoCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 48) versionPDFPathForDocumentInfoCollection:*(a1 + 32)];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2];
  if ([v3 isFileURL])
  {
    v4 = 0;
    if ([v3 getResourceValue:&v4 forKey:*MEMORY[0x277CBE838] error:0])
    {
      if ([v4 integerValue] >= 11 && objc_msgSend(v3, "checkResourceIsReachableAndReturnError:", 0))
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
      }
    }
  }
}

+ (void)generatePDFsIfNecessaryForDocumentInfoCollection:(id)collection imageCache:(id)cache displayWindow:(id)window presentingViewController:(id)controller completionHandler:(id)handler
{
  collectionCopy = collection;
  cacheCopy = cache;
  windowCopy = window;
  controllerCopy = controller;
  handlerCopy = handler;
  if (!windowCopy)
  {
    v16 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [DCDocCamPDFGenerator generatePDFsIfNecessaryForDocumentInfoCollection:v16 imageCache:? displayWindow:? presentingViewController:? completionHandler:?];
    }
  }

  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  docInfos = [collectionCopy docInfos];
  v18 = [docInfos count];

  if (v18)
  {
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v39 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    docInfos2 = [collectionCopy docInfos];
    v20 = [docInfos2 count];
    v35[3] = v20;

    v21 = [[DCLongRunningTaskController alloc] initWithWindow:windowCopy intervalBeforeOpeningProgressDialog:0.5];
    [(DCLongRunningTaskController *)v21 setProgressToStringTransformer:&__block_literal_global_30];
    [(DCLongRunningTaskController *)v21 setShouldShowCancelButton:1];
    [(DCLongRunningTaskController *)v21 setShouldShowCircularProgress:1];
    [(DCLongRunningTaskController *)v21 setViewControllerToPresentFrom:controllerCopy];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __141__DCDocCamPDFGenerator_generatePDFsIfNecessaryForDocumentInfoCollection_imageCache_displayWindow_presentingViewController_completionHandler___block_invoke_2;
    v27[3] = &unk_278F932C8;
    v31 = &v34;
    v28 = collectionCopy;
    v29 = cacheCopy;
    v32 = v38;
    v33 = v40;
    v22 = v21;
    v30 = v22;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __141__DCDocCamPDFGenerator_generatePDFsIfNecessaryForDocumentInfoCollection_imageCache_displayWindow_presentingViewController_completionHandler___block_invoke_3;
    v23[3] = &unk_278F93318;
    v26 = 0;
    v25 = v38;
    v24 = handlerCopy;
    [(DCLongRunningTaskController *)v22 startTask:v27 completionBlock:v23];

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(v38, 8);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
  }

  _Block_object_dispose(v40, 8);
}

void __141__DCDocCamPDFGenerator_generatePDFsIfNecessaryForDocumentInfoCollection_imageCache_displayWindow_presentingViewController_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setTotalUnitCount:*(*(*(a1 + 56) + 8) + 24)];
  v3 = [DCDocCamPDFGenerator blockingGeneratepdfURLForDocumentInfoCollection:*(a1 + 32) imageCache:*(a1 + 40) withProgress:v4 error:0];
  *(*(*(a1 + 64) + 8) + 24) = 1;
  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 48) isCancelled] ^ 1;
}

void __141__DCDocCamPDFGenerator_generatePDFsIfNecessaryForDocumentInfoCollection_imageCache_displayWindow_presentingViewController_completionHandler___block_invoke_3(uint64_t a1, char a2)
{
  if (*(a1 + 48) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __141__DCDocCamPDFGenerator_generatePDFsIfNecessaryForDocumentInfoCollection_imageCache_displayWindow_presentingViewController_completionHandler___block_invoke_4;
    v5[3] = &unk_278F932F0;
    v6 = *(a1 + 32);
    v7 = a2;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

+ (id)blockingGeneratepdfURLForDocumentInfoCollection:(id)collection imageCache:(id)cache withProgress:(id)progress error:(id *)error
{
  collectionCopy = collection;
  cacheCopy = cache;
  progressCopy = progress;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = [self pdfURLForDocumentInfoCollection:collectionCopy];
  v12 = v23[5];
  if (!v12)
  {
    syncGeneratorQueue = [self syncGeneratorQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__DCDocCamPDFGenerator_blockingGeneratepdfURLForDocumentInfoCollection_imageCache_withProgress_error___block_invoke;
    block[3] = &unk_278F93390;
    selfCopy = self;
    v17 = collectionCopy;
    v18 = cacheCopy;
    v19 = progressCopy;
    v20 = &v22;
    dispatch_sync(syncGeneratorQueue, block);

    v12 = v23[5];
  }

  v14 = v12;
  _Block_object_dispose(&v22, 8);

  return v14;
}

void __102__DCDocCamPDFGenerator_blockingGeneratepdfURLForDocumentInfoCollection_imageCache_withProgress_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 64) versionPDFPathForDocumentInfoCollection:*(a1 + 32)];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2];
  v4 = [*(a1 + 32) title];
  v5 = [*(a1 + 64) fileQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__DCDocCamPDFGenerator_blockingGeneratepdfURLForDocumentInfoCollection_imageCache_withProgress_error___block_invoke_2;
  block[3] = &unk_278F93340;
  v23 = *(a1 + 64);
  v21 = *(a1 + 32);
  v6 = v2;
  v22 = v6;
  dispatch_sync(v5, block);

  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v8 = [DCPDFGenerator alloc];
  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = &stru_285C55A80;
  }

  v10 = [(DCPDFGenerator *)v8 initWithMutableData:v7 pageRect:v9 title:*&kICPDFGeneratorDefaultPageRect, *algn_27EEE1788, *&qword_27EEE1790, unk_27EEE1798];
  [*(a1 + 64) performPDFGenerationWithGenerator:v10 docInfoCollection:*(a1 + 32) imageCache:*(a1 + 40) progress:*(a1 + 48)];
  if (v7)
  {
    v11 = [*(a1 + 64) fileQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __102__DCDocCamPDFGenerator_blockingGeneratepdfURLForDocumentInfoCollection_imageCache_withProgress_error___block_invoke_48;
    v15[3] = &unk_278F93368;
    v19 = *(a1 + 64);
    v16 = v3;
    v12 = v7;
    v13 = *(a1 + 56);
    v17 = v12;
    v18 = v13;
    dispatch_sync(v11, v15);

    v14 = v16;
  }

  else
  {
    v14 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __102__DCDocCamPDFGenerator_blockingGeneratepdfURLForDocumentInfoCollection_imageCache_withProgress_error___block_invoke_cold_1(v14);
    }
  }
}

void __102__DCDocCamPDFGenerator_blockingGeneratepdfURLForDocumentInfoCollection_imageCache_withProgress_error___block_invoke_2(uint64_t a1)
{
  [*(a1 + 48) deletePDFForDocumentInfoCollectionIfExists:*(a1 + 32)];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) stringByDeletingLastPathComponent];
  [v2 createTmpDirectory:v3];
}

void __102__DCDocCamPDFGenerator_blockingGeneratepdfURLForDocumentInfoCollection_imageCache_withProgress_error___block_invoke_48(uint64_t a1)
{
  v2 = [*(a1 + 56) fileManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];

  [*(a1 + 40) writeToURL:*(a1 + 32) atomically:1];
  v3 = *(a1 + 32);
  v4 = (*(*(a1 + 48) + 8) + 40);

  objc_storeStrong(v4, v3);
}

+ (void)performPDFGenerationWithGenerator:(id)generator docInfoCollection:(id)collection imageCache:(id)cache progress:(id)progress
{
  generatorCopy = generator;
  collectionCopy = collection;
  cacheCopy = cache;
  progressCopy = progress;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  [generatorCopy startGenerating];
  docInfos = [collectionCopy docInfos];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __96__DCDocCamPDFGenerator_performPDFGenerationWithGenerator_docInfoCollection_imageCache_progress___block_invoke;
  v20 = &unk_278F933E0;
  v14 = progressCopy;
  v21 = v14;
  v15 = cacheCopy;
  v22 = v15;
  v24 = v25;
  v16 = generatorCopy;
  v23 = v16;
  [docInfos enumerateObjectsUsingBlock:&v17];

  [v16 finishGenerating];
  _Block_object_dispose(v25, 8);
}

void __96__DCDocCamPDFGenerator_performPDFGenerationWithGenerator_docInfoCollection_imageCache_progress___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (v7 && [v7 isCancelled])
  {
    *a4 = 1;
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [v6 croppedAndFilteredImageUUID];
    v10 = [v8 getImage:v9];

    if (v10)
    {
      ++*(*(*(a1 + 56) + 8) + 24);
      v11 = *(a1 + 48);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __96__DCDocCamPDFGenerator_performPDFGenerationWithGenerator_docInfoCollection_imageCache_progress___block_invoke_2;
      v12[3] = &unk_278F933B8;
      v13 = v10;
      [v11 addPageWithRenderBlock:v12];
    }

    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
  }
}

void __96__DCDocCamPDFGenerator_performPDFGenerationWithGenerator_docInfoCollection_imageCache_progress___block_invoke_2(uint64_t a1, CGContext *a2, double a3, double a4, double a5, double a6)
{
  v35 = CGRectInset(*&a3, 32.0, 32.0);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  [*(a1 + 32) size];
  memset(&v34, 0, sizeof(v34));
  DCTransformFromImageOrientation([*(a1 + 32) imageOrientation], &v34, v12, v13);
  v14 = MEMORY[0x277D755B8];
  [*(a1 + 32) size];
  [v14 dc_aspectFitImageFrameForViewWithFrame:x imageSize:{y, width, height, v15, v16}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v32 = v34;
  CGAffineTransformInvert(&transform, &v32);
  v36.origin.x = v18;
  v36.origin.y = v20;
  v36.size.width = v22;
  v36.size.height = v24;
  v37 = CGRectApplyAffineTransform(v36, &transform);
  v25 = v37.origin.x;
  v26 = v37.origin.y;
  v27 = v37.size.width;
  v28 = v37.size.height;
  CGContextSaveGState(a2);
  transform = v34;
  CGContextConcatCTM(a2, &transform);
  v29 = UIImageJPEGRepresentation(*(a1 + 32), 0.6);
  v30 = CGDataProviderCreateWithCFData(v29);
  v31 = CGImageCreateWithJPEGDataProvider(v30, 0, 1, kCGRenderingIntentDefault);
  v38.origin.x = v25;
  v38.origin.y = v26;
  v38.size.width = v27;
  v38.size.height = v28;
  CGContextDrawImage(a2, v38, v31);
  CGContextRestoreGState(a2);
  CGDataProviderRelease(v30);
  CGImageRelease(v31);
}

+ (void)generatePDFsIfNecessaryForDocumentInfoCollection:(os_log_t)log imageCache:displayWindow:presentingViewController:completionHandler:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "displayWindow";
  _os_log_error_impl(&dword_249253000, log, OS_LOG_TYPE_ERROR, "invalid nil value for '%s'", &v1, 0xCu);
}

void __102__DCDocCamPDFGenerator_blockingGeneratepdfURLForDocumentInfoCollection_imageCache_withProgress_error___block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "data";
  _os_log_error_impl(&dword_249253000, log, OS_LOG_TYPE_ERROR, "invalid nil value for '%s'", &v1, 0xCu);
}

@end