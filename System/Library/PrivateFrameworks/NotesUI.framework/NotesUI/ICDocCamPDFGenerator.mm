@interface ICDocCamPDFGenerator
+ (OS_dispatch_queue)fileQueue;
+ (OS_dispatch_queue)syncGeneratorQueue;
+ (id)blockingGeneratePDFDataForAttachment:(id)a3 withProgress:(id)a4 queue:(id)a5 error:(id *)a6;
+ (id)blockingGeneratePDFURLForAttachment:(id)a3 withProgress:(id)a4 error:(id *)a5;
+ (id)folderPathForAttachment:(id)a3;
+ (id)folderPathForAttachmentIdentifier:(id)a3 passwordProtected:(BOOL)a4;
+ (id)generatePDFURLForAttachment:(id)a3;
+ (id)pdfURLForAttachment:(id)a3;
+ (id)rootPDFFolderPath;
+ (id)rootPDFFolderPathForPWAttachments;
+ (id)versionFolderPathForAttachment:(id)a3;
+ (id)versionPDFPathForAttachment:(id)a3;
+ (void)createEmptyPDFFileAtURLIFNecessaryForAttachment:(id)a3;
+ (void)deleteAllDocCamPDFs;
+ (void)deleteAllDocCamPasswordProtectedPDFs;
+ (void)deletePDFFolderIfExistsForAttachment:(id)a3;
+ (void)generatePDFsIfNecessaryForGalleryAttachments:(id)a3 displayWindow:(id)a4 presentingViewController:(id)a5 completionHandler:(id)a6;
+ (void)performPDFGenerationWithGenerator:(id)a3 galleryModel:(id)a4 progress:(id)a5;
@end

@implementation ICDocCamPDFGenerator

+ (OS_dispatch_queue)syncGeneratorQueue
{
  if (syncGeneratorQueue_onceToken != -1)
  {
    +[ICDocCamPDFGenerator syncGeneratorQueue];
  }

  v3 = syncGeneratorQueue_sSyncGeneratorQueue;

  return v3;
}

void __42__ICDocCamPDFGenerator_syncGeneratorQueue__block_invoke()
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
    +[ICDocCamPDFGenerator fileQueue];
  }

  v3 = fileQueue_sFileQueue;

  return v3;
}

void __33__ICDocCamPDFGenerator_fileQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("PDF File Queue", v2);
  v1 = fileQueue_sFileQueue;
  fileQueue_sFileQueue = v0;
}

+ (id)rootPDFFolderPath
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = 0;
  v3 = [v2 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v8];
  v4 = v8;

  v5 = [v3 path];
  if (!v5)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICDocCamPDFGenerator rootPDFFolderPath]" simulateCrash:1 showAlert:0 format:{@"ICDocCamPDFGenerator: Failed get caches directory with error (falling back to NSTemporaryDirectory): %@", v4}];
    v5 = NSTemporaryDirectory();
  }

  v6 = [v5 stringByAppendingPathComponent:@"galleryTempPDFFolder"];

  return v6;
}

+ (id)rootPDFFolderPathForPWAttachments
{
  v2 = [a1 rootPDFFolderPath];
  v3 = [v2 stringByAppendingPathComponent:@"P"];

  return v3;
}

+ (id)folderPathForAttachmentIdentifier:(id)a3 passwordProtected:(BOOL)a4
{
  v6 = a3;
  if (a4)
  {
    [a1 rootPDFFolderPathForPWAttachments];
  }

  else
  {
    [a1 rootPDFFolderPath];
  }
  v7 = ;
  v8 = [v7 stringByAppendingPathComponent:v6];

  return v8;
}

+ (id)folderPathForAttachment:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [v4 managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__ICDocCamPDFGenerator_folderPathForAttachment___block_invoke;
  v9[3] = &unk_1E8468FF8;
  v11 = &v17;
  v6 = v4;
  v10 = v6;
  v12 = &v13;
  [v5 performBlockAndWait:v9];

  v7 = [a1 folderPathForAttachmentIdentifier:v18[5] passwordProtected:*(v14 + 24)];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v7;
}

uint64_t __48__ICDocCamPDFGenerator_folderPathForAttachment___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(a1 + 32) isPasswordProtected];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

+ (id)versionFolderPathForAttachment:(id)a3
{
  v4 = a3;
  v5 = [a1 folderPathForAttachment:v4];
  v6 = MEMORY[0x1E696AD98];
  v7 = [v4 docCamPDFVersion];

  v8 = [v6 numberWithInteger:v7];
  v9 = [v8 stringValue];
  v10 = [v5 stringByAppendingPathComponent:v9];

  return v10;
}

+ (id)versionPDFPathForAttachment:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  v5 = [v4 managedObjectContext];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __52__ICDocCamPDFGenerator_versionPDFPathForAttachment___block_invoke;
  v16 = &unk_1E8468FA8;
  v18 = &v19;
  v6 = v4;
  v17 = v6;
  [v5 performBlockAndWait:&v13];

  v7 = [v20[5] ic_sanitizedFilenameString];
  if (![v7 length])
  {
    v8 = [v6 defaultTitle];

    v7 = v8;
  }

  v9 = [a1 versionFolderPathForAttachment:v6];
  v10 = [v9 stringByAppendingPathComponent:v7];

  v11 = [v10 stringByAppendingPathExtension:@"pdf"];

  _Block_object_dispose(&v19, 8);

  return v11;
}

uint64_t __52__ICDocCamPDFGenerator_versionPDFPathForAttachment___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) title];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)createEmptyPDFFileAtURLIFNecessaryForAttachment:(id)a3
{
  v4 = [a1 versionPDFPathForAttachment:a3];
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  v6 = [a1 fileQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__ICDocCamPDFGenerator_createEmptyPDFFileAtURLIFNecessaryForAttachment___block_invoke;
  v8[3] = &unk_1E84698E0;
  v9 = v5;
  v10 = a1;
  v7 = v5;
  dispatch_sync(v6, v8);
}

void __72__ICDocCamPDFGenerator_createEmptyPDFFileAtURLIFNecessaryForAttachment___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v2 = [*(a1 + 40) fileManager];
    v3 = [*(a1 + 32) path];
    v4 = [v3 stringByDeletingLastPathComponent];
    [v2 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

    v5 = [MEMORY[0x1E695DEF0] data];
    [v5 writeToURL:*(a1 + 32) atomically:1];
  }
}

+ (void)deletePDFFolderIfExistsForAttachment:(id)a3
{
  v4 = a3;
  v6 = [a1 fileManager];
  v5 = [a1 folderPathForAttachment:v4];

  if ([v6 fileExistsAtPath:v5])
  {
    [v6 removeItemAtPath:v5 error:0];
  }
}

+ (void)deleteAllDocCamPDFs
{
  v3 = [a1 fileQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__ICDocCamPDFGenerator_deleteAllDocCamPDFs__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v3, block);

  v4 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[(ICDocCamPDFGenerator *)v4];
  }
}

void __43__ICDocCamPDFGenerator_deleteAllDocCamPDFs__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) fileManager];
  v2 = [*(a1 + 32) rootPDFFolderPath];
  [v3 removeItemAtPath:v2 error:0];
}

+ (void)deleteAllDocCamPasswordProtectedPDFs
{
  v3 = [a1 fileQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__ICDocCamPDFGenerator_deleteAllDocCamPasswordProtectedPDFs__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v3, block);

  v4 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[(ICDocCamPDFGenerator *)v4];
  }
}

void __60__ICDocCamPDFGenerator_deleteAllDocCamPasswordProtectedPDFs__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) fileManager];
  v2 = [*(a1 + 32) rootPDFFolderPathForPWAttachments];
  [v3 removeItemAtPath:v2 error:0];
}

+ (id)pdfURLForAttachment:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  v5 = [a1 fileQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__ICDocCamPDFGenerator_pdfURLForAttachment___block_invoke;
  block[3] = &unk_1E8469928;
  v11 = &v13;
  v12 = a1;
  v10 = v4;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __44__ICDocCamPDFGenerator_pdfURLForAttachment___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 48) versionPDFPathForAttachment:*(a1 + 32)];
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
  if ([v2 ic_fileSize] >= 11 && objc_msgSend(v2, "checkResourceIsReachableAndReturnError:", 0))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
  }
}

+ (id)generatePDFURLForAttachment:(id)a3
{
  v4 = a3;
  v5 = [a1 pdfURLForAttachment:v4];
  if (!v5)
  {
    objc_opt_class();
    v6 = [v4 attachmentModel];
    v7 = ICDynamicCast();

    if ([v4 attachmentType] == 11)
    {
      v8 = [ICDocCamPDFGenerator blockingGeneratePDFURLForAttachment:v4 withProgress:0 error:0];
    }

    else
    {
      if (!v7)
      {
        v5 = 0;
        goto LABEL_16;
      }

      [v7 generateFallbackPDFIfNecessary];
      if ([v4 isPasswordProtected] && objc_msgSend(v4, "attachmentType") == 15)
      {
        v9 = [v4 fallbackPDFData];
        if (v9)
        {
          v10 = MEMORY[0x1E695DFF8];
          v11 = [a1 versionPDFPathForAttachment:v4];
          v12 = [v10 fileURLWithPath:v11 isDirectory:0];

          v13 = [MEMORY[0x1E696AC08] defaultManager];
          [v13 removeItemAtURL:v12 error:0];
          v14 = [v12 URLByDeletingLastPathComponent];
          [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:0];

          v19 = 0;
          v15 = [v9 writeToURL:v12 options:1 error:&v19];
          v16 = v19;
          if ((v15 & 1) == 0)
          {
            v17 = os_log_create("com.apple.notes", "Export");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [(ICDocCamPDFGenerator *)v16 generatePDFURLForAttachment:v17];
            }
          }
        }
      }

      v8 = [v4 fallbackPDFURL];
    }

    v5 = v8;
LABEL_16:
  }

  return v5;
}

+ (void)generatePDFsIfNecessaryForGalleryAttachments:(id)a3 displayWindow:(id)a4 presentingViewController:(id)a5 completionHandler:(id)a6
{
  v99 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v51 = a5;
  v52 = v10;
  v53 = a6;
  if (!v10)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((displayWindow) != nil)" functionName:"+[ICDocCamPDFGenerator generatePDFsIfNecessaryForGalleryAttachments:displayWindow:presentingViewController:completionHandler:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "displayWindow"}];
  }

  v94[0] = 0;
  v94[1] = v94;
  v94[2] = 0x2020000000;
  v95 = 0;
  v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v90 objects:v98 count:16];
  if (v11)
  {
    v12 = *v91;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v91 != v12)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v14 = ICDynamicCast();
        objc_opt_class();
        v15 = [v14 attachmentModel];
        v16 = ICDynamicCast();

        if (v16)
        {
          v17 = [ICDocCamPDFGenerator pdfURLForAttachment:v14];
          v18 = v17 == 0;

          if (v18)
          {
            [v55 addObject:v16];
          }
        }

        objc_opt_class();
        v19 = [v14 attachmentModel];
        v20 = ICDynamicCast();

        if (v20 && ([v20 tooLargeForPreviewGeneration] & 1) == 0)
        {
          v21 = [v14 hasFallbackPDF];
          if ([v14 isPasswordProtected] && objc_msgSend(v14, "attachmentType") == 15)
          {
            v22 = [ICDocCamPDFGenerator pdfURLForAttachment:v14];
            v23 = v22 == 0;
          }

          else
          {
            v23 = 0;
          }

          v24 = [v14 previewImages];
          if ([v24 count])
          {
            v25 = [v14 previewUpdateDate];
            v26 = v25 == 0;
          }

          else
          {
            v26 = 0;
          }

          if (v23 || (v21 & 1) == 0 || v26)
          {
            [v54 addObject:v20];
          }
        }

        objc_opt_class();
        v27 = [v14 attachmentModel];
        v28 = ICDynamicCast();

        if (v28 && [v28 needToGeneratePreviews])
        {
          [v58 addObject:v28];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v90 objects:v98 count:16];
    }

    while (v11);
  }

  v29 = [v55 count];
  v30 = [v54 count];
  if (v30 + v29 + [v58 count])
  {
    v87 = 0;
    v88[0] = 0;
    v88[1] = v88;
    v88[2] = 0x2020000000;
    v89 = 0;
    v84 = 0;
    v85 = &v84;
    v86 = 0x2020000000;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v57 = v55;
    v31 = [v57 countByEnumeratingWithState:&v80 objects:v97 count:16];
    if (v31)
    {
      v32 = *v81;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v81 != v32)
          {
            objc_enumerationMutation(v57);
          }

          v34 = *(*(&v80 + 1) + 8 * j);
          v35 = [v34 attachment];
          v36 = [v35 managedObjectContext];
          v79[0] = MEMORY[0x1E69E9820];
          v79[1] = 3221225472;
          v79[2] = __126__ICDocCamPDFGenerator_generatePDFsIfNecessaryForGalleryAttachments_displayWindow_presentingViewController_completionHandler___block_invoke;
          v79[3] = &unk_1E8468FA8;
          v79[4] = v34;
          v79[5] = &v84;
          [v36 performBlockAndWait:v79];
        }

        v31 = [v57 countByEnumeratingWithState:&v80 objects:v97 count:16];
      }

      while (v31);
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v56 = v54;
    v37 = [v56 countByEnumeratingWithState:&v75 objects:v96 count:16];
    if (v37)
    {
      v38 = *v76;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v76 != v38)
          {
            objc_enumerationMutation(v56);
          }

          v40 = *(*(&v75 + 1) + 8 * k);
          v41 = [v40 attachment];
          v42 = [v41 managedObjectContext];
          v74[0] = MEMORY[0x1E69E9820];
          v74[1] = 3221225472;
          v74[2] = __126__ICDocCamPDFGenerator_generatePDFsIfNecessaryForGalleryAttachments_displayWindow_presentingViewController_completionHandler___block_invoke_2;
          v74[3] = &unk_1E8468FA8;
          v74[4] = v40;
          v74[5] = &v84;
          [v42 performBlockAndWait:v74];
        }

        v37 = [v56 countByEnumeratingWithState:&v75 objects:v96 count:16];
      }

      while (v37);
    }

    v43 = [v58 count];
    v85[3] += v43;
    v44 = [[ICLongRunningTaskController alloc] initWithWindow:v52 intervalBeforeOpeningProgressDialog:0.5];
    [(ICLongRunningTaskController *)v44 setAllowSingleUnitProgress:1];
    v45 = __ICLocalizedFrameworkString_impl(@"Preparing…", @"Preparing…", 0, 1);
    [(ICLongRunningTaskController *)v44 setProgressString:v45];
    [(ICLongRunningTaskController *)v44 setShouldShowCancelButton:1];
    [(ICLongRunningTaskController *)v44 setShouldShowCircularProgress:1];
    [(ICLongRunningTaskController *)v44 setViewControllerToPresentFrom:v51];
    v46 = [MEMORY[0x1E69B7800] sharedContext];
    v47 = [v46 workerManagedObjectContext];

    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __126__ICDocCamPDFGenerator_generatePDFsIfNecessaryForGalleryAttachments_displayWindow_presentingViewController_completionHandler___block_invoke_3;
    v64[3] = &unk_1E8469978;
    v70 = &v84;
    v65 = v57;
    v48 = v47;
    v66 = v48;
    v49 = v44;
    v67 = v49;
    v68 = v56;
    v73 = a1;
    v69 = v58;
    v71 = v88;
    v72 = v94;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __126__ICDocCamPDFGenerator_generatePDFsIfNecessaryForGalleryAttachments_displayWindow_presentingViewController_completionHandler___block_invoke_2_50;
    v60[3] = &unk_1E84699A0;
    v63 = 0;
    v62 = v88;
    v61 = v53;
    [(ICLongRunningTaskController *)v49 startTask:v64 completionBlock:v60];

    _Block_object_dispose(&v84, 8);
    _Block_object_dispose(v88, 8);
  }

  else if (v53)
  {
    (*(v53 + 2))(v53, 1);
  }

  _Block_object_dispose(v94, 8);
}

uint64_t __126__ICDocCamPDFGenerator_generatePDFsIfNecessaryForGalleryAttachments_displayWindow_presentingViewController_completionHandler___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) subAttachmentCount];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

unint64_t __126__ICDocCamPDFGenerator_generatePDFsIfNecessaryForGalleryAttachments_displayWindow_presentingViewController_completionHandler___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) paperPageCount];
  if (result <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  *(*(*(a1 + 40) + 8) + 24) += v3;
  return result;
}

void __126__ICDocCamPDFGenerator_generatePDFsIfNecessaryForGalleryAttachments_displayWindow_presentingViewController_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setTotalUnitCount:*(*(*(a1 + 72) + 8) + 24)];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v50;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v50 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v49 + 1) + 8 * v8);
      v10 = *(a1 + 40);
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __126__ICDocCamPDFGenerator_generatePDFsIfNecessaryForGalleryAttachments_displayWindow_presentingViewController_completionHandler___block_invoke_4;
      v45[3] = &unk_1E8468D98;
      v11 = v10;
      v46 = v11;
      v47 = v9;
      v48 = v3;
      [v11 performBlockAndWait:v45];
      LOBYTE(v11) = [*(a1 + 48) isCancelled];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v49 objects:v55 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = *(a1 + 56);
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
LABEL_11:
    v16 = 0;
    while (1)
    {
      if (*v42 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v41 + 1) + 8 * v16);
      v18 = *(a1 + 40);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __126__ICDocCamPDFGenerator_generatePDFsIfNecessaryForGalleryAttachments_displayWindow_presentingViewController_completionHandler___block_invoke_5;
      v36[3] = &unk_1E8469950;
      v19 = v18;
      v37 = v19;
      v38 = v17;
      v40 = *(a1 + 96);
      v39 = v3;
      [v19 performBlockAndWait:v36];
      LOBYTE(v19) = [*(a1 + 48) isCancelled];

      if (v19)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v41 objects:v54 count:16];
        if (v14)
        {
          goto LABEL_11;
        }

        break;
      }
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = *(a1 + 64);
  v21 = [v20 countByEnumeratingWithState:&v32 objects:v53 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    do
    {
      v24 = 0;
      do
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v32 + 1) + 8 * v24);
        v26 = *(a1 + 40);
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __126__ICDocCamPDFGenerator_generatePDFsIfNecessaryForGalleryAttachments_displayWindow_presentingViewController_completionHandler___block_invoke_48;
        v28[3] = &unk_1E8468D98;
        v27 = v26;
        v29 = v27;
        v30 = v25;
        v31 = v3;
        [v27 performBlockAndWait:v28];

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v32 objects:v53 count:16];
    }

    while (v22);
  }

  *(*(*(a1 + 80) + 8) + 24) = 1;
  *(*(*(a1 + 88) + 8) + 24) = [*(a1 + 48) isCancelled] ^ 1;
}

void __126__ICDocCamPDFGenerator_generatePDFsIfNecessaryForGalleryAttachments_displayWindow_presentingViewController_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) attachment];
  v4 = [v3 objectID];
  v6 = [v2 existingObjectWithID:v4 error:0];

  v5 = [ICDocCamPDFGenerator blockingGeneratePDFURLForAttachment:v6 withProgress:*(a1 + 48) error:0];
}

void __126__ICDocCamPDFGenerator_generatePDFsIfNecessaryForGalleryAttachments_displayWindow_presentingViewController_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) attachment];
  v4 = [v3 objectID];
  v5 = [v2 existingObjectWithID:v4 error:0];

  objc_opt_class();
  v6 = [v5 attachmentModel];
  v7 = ICDynamicCast();

  [v7 generateFallbackPDFIfNecessary];
  if ([v5 isPasswordProtected] && objc_msgSend(v5, "attachmentType") == 15)
  {
    v8 = [v5 fallbackPDFData];
    if (v8)
    {
      v9 = MEMORY[0x1E695DFF8];
      v10 = [*(a1 + 56) versionPDFPathForAttachment:v5];
      v11 = [v9 fileURLWithPath:v10 isDirectory:0];

      v12 = [MEMORY[0x1E696AC08] defaultManager];
      [v12 removeItemAtURL:v11 error:0];
      v13 = [v11 URLByDeletingLastPathComponent];
      [v12 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:0];

      v20 = 0;
      v14 = [v8 writeToURL:v11 options:1 error:&v20];
      v15 = v20;
      if ((v14 & 1) == 0)
      {
        v16 = os_log_create("com.apple.notes", "Export");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [(ICDocCamPDFGenerator *)v15 generatePDFURLForAttachment:v16];
        }
      }
    }
  }

  v17 = *(a1 + 48);
  v18 = [v7 paperPageCount];
  if (v18 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  [v17 setCompletedUnitCount:{objc_msgSend(v17, "completedUnitCount") + v19}];
}

void __126__ICDocCamPDFGenerator_generatePDFsIfNecessaryForGalleryAttachments_displayWindow_presentingViewController_completionHandler___block_invoke_48(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) attachment];
  v4 = [v3 objectID];
  v5 = [v2 existingObjectWithID:v4 error:0];

  objc_opt_class();
  v6 = [v5 attachmentModel];
  v7 = ICDynamicCast();

  v9 = 0;
  [v7 synchronouslyGenerateFallbackMediaDataIfNecessaryAndReturnError:&v9];
  v8 = v9;
  [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "completedUnitCount") + 1}];
}

void __126__ICDocCamPDFGenerator_generatePDFsIfNecessaryForGalleryAttachments_displayWindow_presentingViewController_completionHandler___block_invoke_2_50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __126__ICDocCamPDFGenerator_generatePDFsIfNecessaryForGalleryAttachments_displayWindow_presentingViewController_completionHandler___block_invoke_3_51;
    v4[3] = &unk_1E8468CD0;
    v6 = *(a1 + 32);
    v5 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

uint64_t __126__ICDocCamPDFGenerator_generatePDFsIfNecessaryForGalleryAttachments_displayWindow_presentingViewController_completionHandler___block_invoke_3_51(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) isCancelled];
  v3 = *(v1 + 16);

  return v3(v1, v2 ^ 1u);
}

+ (id)blockingGeneratePDFURLForAttachment:(id)a3 withProgress:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__7;
  v22 = __Block_byref_object_dispose__7;
  v23 = [a1 pdfURLForAttachment:v7];
  v9 = v19[5];
  if (!v9)
  {
    v10 = [a1 syncGeneratorQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__ICDocCamPDFGenerator_blockingGeneratePDFURLForAttachment_withProgress_error___block_invoke;
    v13[3] = &unk_1E84699F0;
    v17 = a1;
    v14 = v7;
    v15 = v8;
    v16 = &v18;
    dispatch_sync(v10, v13);

    v9 = v19[5];
  }

  v11 = v9;
  _Block_object_dispose(&v18, 8);

  return v11;
}

void __79__ICDocCamPDFGenerator_blockingGeneratePDFURLForAttachment_withProgress_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 56) versionPDFPathForAttachment:*(a1 + 32)];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__7;
  v37 = __Block_byref_object_dispose__7;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__7;
  v31 = __Block_byref_object_dispose__7;
  v32 = 0;
  v4 = [*(a1 + 32) managedObjectContext];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __79__ICDocCamPDFGenerator_blockingGeneratePDFURLForAttachment_withProgress_error___block_invoke_2;
  v23[3] = &unk_1E8468FF8;
  v25 = &v33;
  v24 = *(a1 + 32);
  v26 = &v27;
  [v4 performBlockAndWait:v23];

  v5 = [*(a1 + 56) fileQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__ICDocCamPDFGenerator_blockingGeneratePDFURLForAttachment_withProgress_error___block_invoke_3;
  block[3] = &unk_1E84699C8;
  v22 = *(a1 + 56);
  v20 = *(a1 + 32);
  v6 = v2;
  v21 = v6;
  dispatch_sync(v5, block);

  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v8 = objc_alloc(MEMORY[0x1E69B7828]);
  if (v28[5])
  {
    v9 = v28[5];
  }

  else
  {
    v9 = &stru_1F4F94F00;
  }

  v10 = [v8 initWithMutableData:v7 pageRect:v9 title:{*MEMORY[0x1E69B7980], *(MEMORY[0x1E69B7980] + 8), *(MEMORY[0x1E69B7980] + 16), *(MEMORY[0x1E69B7980] + 24)}];
  [*(a1 + 56) performPDFGenerationWithGenerator:v10 galleryModel:v34[5] progress:*(a1 + 40)];
  if (v7)
  {
    v11 = [*(a1 + 56) fileQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __79__ICDocCamPDFGenerator_blockingGeneratePDFURLForAttachment_withProgress_error___block_invoke_4;
    v14[3] = &unk_1E84699F0;
    v18 = *(a1 + 56);
    v15 = v3;
    v12 = v7;
    v13 = *(a1 + 48);
    v16 = v12;
    v17 = v13;
    dispatch_sync(v11, v14);
  }

  else
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((data) != nil)" functionName:"+[ICDocCamPDFGenerator blockingGeneratePDFURLForAttachment:withProgress:error:]_block_invoke" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "data"}];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
}

uint64_t __79__ICDocCamPDFGenerator_blockingGeneratePDFURLForAttachment_withProgress_error___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) attachmentModel];
  v3 = ICDynamicCast();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) title];

  return MEMORY[0x1EEE66BB8]();
}

void __79__ICDocCamPDFGenerator_blockingGeneratePDFURLForAttachment_withProgress_error___block_invoke_3(uint64_t a1)
{
  [*(a1 + 48) deletePDFForAttachmentIfExists:*(a1 + 32)];
  v3 = [*(a1 + 48) fileManager];
  v2 = [*(a1 + 40) stringByDeletingLastPathComponent];
  [v3 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0];
}

void __79__ICDocCamPDFGenerator_blockingGeneratePDFURLForAttachment_withProgress_error___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 56) fileManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];

  [*(a1 + 40) writeToURL:*(a1 + 32) atomically:1];
  v3 = *(a1 + 32);
  v4 = (*(*(a1 + 48) + 8) + 40);

  objc_storeStrong(v4, v3);
}

+ (id)blockingGeneratePDFDataForAttachment:(id)a3 withProgress:(id)a4 queue:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__7;
  v42 = __Block_byref_object_dispose__7;
  v43 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__7;
  v36[4] = __Block_byref_object_dispose__7;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__7;
  v34[4] = __Block_byref_object_dispose__7;
  v35 = 0;
  v12 = [v9 managedObjectContext];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __86__ICDocCamPDFGenerator_blockingGeneratePDFDataForAttachment_withProgress_queue_error___block_invoke;
  v30[3] = &unk_1E8468FF8;
  v32 = v36;
  v13 = v9;
  v31 = v13;
  v33 = v34;
  [v12 performBlockAndWait:v30];

  v14 = [MEMORY[0x1E69B7800] sharedContext];
  v15 = [v14 workerManagedObjectContext];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __86__ICDocCamPDFGenerator_blockingGeneratePDFDataForAttachment_withProgress_queue_error___block_invoke_61;
  v22[3] = &unk_1E8469A18;
  v16 = v15;
  v23 = v16;
  v17 = v13;
  v24 = v17;
  v27 = v34;
  v18 = v11;
  v25 = v18;
  v29 = a1;
  v19 = v10;
  v26 = v19;
  v28 = &v38;
  [v16 performBlockAndWait:v22];
  v20 = v39[5];

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);

  _Block_object_dispose(&v38, 8);

  return v20;
}

void __86__ICDocCamPDFGenerator_blockingGeneratePDFDataForAttachment_withProgress_queue_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v2 = [*(a1 + 32) attachmentModel];
  v3 = ICDynamicCast();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) title];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = os_log_create("com.apple.notes", "Export");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 32) identifier];
    v11 = [*(a1 + 32) docCamPDFVersion];
    v12 = 138412546;
    v13 = v10;
    v14 = 2048;
    v15 = v11;
    _os_log_impl(&dword_1D4171000, v9, OS_LOG_TYPE_INFO, "Generating PDF: %@:%ld", &v12, 0x16u);
  }
}

void __86__ICDocCamPDFGenerator_blockingGeneratePDFDataForAttachment_withProgress_queue_error___block_invoke_61(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectID];
  v4 = [v2 existingObjectWithID:v3 error:0];

  objc_opt_class();
  v5 = [v4 attachmentModel];
  v6 = ICDynamicCast();

  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v8 = objc_alloc(MEMORY[0x1E69B7828]);
  v9 = *(*(*(a1 + 64) + 8) + 40);
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E69B7680] defaultTitleForAttachmentType:6];
  }

  v11 = [v8 initWithMutableData:v7 pageRect:v10 title:{*MEMORY[0x1E69B7980], *(MEMORY[0x1E69B7980] + 8), *(MEMORY[0x1E69B7980] + 16), *(MEMORY[0x1E69B7980] + 24)}];
  if (!v9)
  {
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __86__ICDocCamPDFGenerator_blockingGeneratePDFDataForAttachment_withProgress_queue_error___block_invoke_2;
    v18 = &unk_1E8469950;
    v22 = *(a1 + 80);
    v19 = v11;
    v20 = v6;
    v21 = *(a1 + 56);
    dispatch_sync(v12, &v15);
  }

  else
  {
    [*(a1 + 80) performPDFGenerationWithGenerator:v11 galleryModel:v6 progress:*(a1 + 56)];
  }

  v13 = [v7 length];
  if (v13)
  {
    v14 = [v7 copy];
  }

  else
  {
    v14 = 0;
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), v14);
  if (v13)
  {
  }
}

+ (void)performPDFGenerationWithGenerator:(id)a3 galleryModel:(id)a4 progress:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF00] date];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  [v7 startGenerating];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __80__ICDocCamPDFGenerator_performPDFGenerationWithGenerator_galleryModel_progress___block_invoke;
  v21[3] = &unk_1E8469A68;
  v11 = v9;
  v22 = v11;
  v24 = v25;
  v12 = v7;
  v23 = v12;
  [v8 enumerateSubAttachmentsWithBlock:v21];
  v13 = [v8 attachment];
  v14 = [v13 identifier];

  v15 = os_log_create("com.apple.notes", "Export");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [MEMORY[0x1E695DF00] date];
    [v16 timeIntervalSinceDate:v10];
    v18 = v17;
    v19 = [v8 attachment];
    v20 = [v19 docCamPDFVersion];
    *buf = 134218498;
    v27 = v18;
    v28 = 2112;
    v29 = v14;
    v30 = 2048;
    v31 = v20;
    _os_log_impl(&dword_1D4171000, v15, OS_LOG_TYPE_INFO, "PDF Generation time: %f. ID: %@:%ld", buf, 0x20u);
  }

  [v12 finishGenerating];
  _Block_object_dispose(v25, 8);
}

void __80__ICDocCamPDFGenerator_performPDFGenerationWithGenerator_galleryModel_progress___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = *(a1 + 32);
  if (v10 && [v10 isCancelled])
  {
    *a5 = 1;
  }

  else
  {
    v11 = [v8 image];
    v12 = v11;
    if (v11)
    {
      ++*(*(*(a1 + 48) + 8) + 24);
      v13 = *(a1 + 40);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __80__ICDocCamPDFGenerator_performPDFGenerationWithGenerator_galleryModel_progress___block_invoke_2;
      v14[3] = &unk_1E8469A40;
      v15 = v11;
      [v13 addPageWithRenderBlock:v14];
    }

    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
  }
}

void __80__ICDocCamPDFGenerator_performPDFGenerationWithGenerator_galleryModel_progress___block_invoke_2(uint64_t a1, CGContext *a2, double a3, double a4, double a5, double a6)
{
  v33 = CGRectInset(*&a3, 32.0, 32.0);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  [*(a1 + 32) size];
  memset(&v32, 0, sizeof(v32));
  [*(a1 + 32) ic_imageOrientation];
  ICTransformFromImageOrientation();
  v12 = MEMORY[0x1E69DCAB8];
  [*(a1 + 32) size];
  [v12 ic_aspectFitImageFrameForViewWithFrame:x imageSize:{y, width, height, v13, v14}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  memset(&v30, 0, sizeof(v30));
  CGAffineTransformInvert(&transform, &v30);
  v34.origin.x = v16;
  v34.origin.y = v18;
  v34.size.width = v20;
  v34.size.height = v22;
  v35 = CGRectApplyAffineTransform(v34, &transform);
  v23 = v35.origin.x;
  v24 = v35.origin.y;
  v25 = v35.size.width;
  v26 = v35.size.height;
  CGContextSaveGState(a2);
  transform = v32;
  CGContextConcatCTM(a2, &transform);
  v27 = UIImageJPEGRepresentation(*(a1 + 32), 0.6);
  v28 = CGDataProviderCreateWithCFData(v27);
  v29 = CGImageCreateWithJPEGDataProvider(v28, 0, 1, kCGRenderingIntentDefault);
  v36.origin.x = v23;
  v36.origin.y = v24;
  v36.size.width = v25;
  v36.size.height = v26;
  CGContextDrawImage(a2, v36, v29);
  CGContextRestoreGState(a2);
  CGDataProviderRelease(v28);
  CGImageRelease(v29);
}

+ (void)generatePDFURLForAttachment:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Failed to copy fallback PDF data: %@", &v2, 0xCu);
}

@end