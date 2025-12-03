@interface CKMediaObjectAddToLibraryAssetActionPerformer
+ (BOOL)canPerformWithActionManager:(id)manager selectionSnapshot:(id)snapshot;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
- (void)performUserInteractionTask;
@end

@implementation CKMediaObjectAddToLibraryAssetActionPerformer

+ (BOOL)canPerformWithActionManager:(id)manager selectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  chatItem = [manager chatItem];
  if ([chatItem canPerformQuickAction])
  {
    isAnyItemSelected = [snapshotCopy isAnyItemSelected];
  }

  else
  {
    isAnyItemSelected = 0;
  }

  return isAnyItemSelected;
}

- (void)performUserInteractionTask
{
  v26 = *MEMORY[0x1E69E9840];
  selectionSnapshot = [(PXAssetActionPerformer *)self selectionSnapshot];
  if ([selectionSnapshot isAnyItemSelected])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    allItemsEnumerator = [selectionSnapshot allItemsEnumerator];
    v6 = [allItemsEnumerator countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v6)
    {
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(allItemsEnumerator);
          }

          mediaObject = [*(*(&v19 + 1) + 8 * i) mediaObject];
          if (mediaObject)
          {
            [v4 addObject:mediaObject];
          }
        }

        v6 = [allItemsEnumerator countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v6);
    }

    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v4 count];
      *buf = 134217984;
      v24 = v11;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Saving %lu media objects", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __75__CKMediaObjectAddToLibraryAssetActionPerformer_performUserInteractionTask__block_invoke;
    v17[3] = &unk_1E72EC460;
    objc_copyWeak(&v18, buf);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__CKMediaObjectAddToLibraryAssetActionPerformer_performUserInteractionTask__block_invoke_3;
    v15[3] = &unk_1E72F7C40;
    objc_copyWeak(&v16, buf);
    v12 = [CKUtilities quickSaveConfirmationAlertForMediaObjects:v4 momentShareURL:0 popoverSource:0 metricsSource:*MEMORY[0x1E69A7650] cancelHandler:v17 preSaveHandler:&__block_literal_global_266 postSaveHandler:v15];
    if (v12)
    {
      if ([(PXActionPerformer *)self presentViewController:v12])
      {
LABEL_20:

        objc_destroyWeak(&v16);
        objc_destroyWeak(&v18);
        objc_destroyWeak(buf);

        goto LABEL_21;
      }

      v13 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"CKMediaObjectAddToLibraryAssetActionPerformer: Failed to present save alert"];
      [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v13];
    }

    else
    {
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(CKMediaObjectAddToLibraryAssetActionPerformer *)v13 performUserInteractionTask];
      }
    }

    goto LABEL_20;
  }

  v14 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"CKMediaObjectAddToLibraryAssetActionPerformer: No items selected for add to library action"];
  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v14];

LABEL_21:
}

void __75__CKMediaObjectAddToLibraryAssetActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeUserInteractionTaskWithSuccess:1 error:0];
}

void __75__CKMediaObjectAddToLibraryAssetActionPerformer_performUserInteractionTask__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeUserInteractionTaskWithSuccess:a2 error:v5];
}

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"SAVE_TO_PHOTO_LIBRARY" value:&stru_1F04268F8 table:@"ChatKit"];

  return v5;
}

@end