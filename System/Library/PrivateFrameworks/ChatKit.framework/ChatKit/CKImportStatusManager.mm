@interface CKImportStatusManager
- (int64_t)importStateForAsset:(id)asset;
@end

@implementation CKImportStatusManager

- (int64_t)importStateForAsset:(id)asset
{
  v33[1] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  assetCopy = asset;
  mediaObject = [assetCopy mediaObject];
  v6 = mediaObject;
  if (mediaObject)
  {
    syndicationIdentifier = [mediaObject syndicationIdentifier];
    if (syndicationIdentifier)
    {
      v8 = objc_alloc(MEMORY[0x1E695DFD8]);
      v33[0] = syndicationIdentifier;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
      v10 = [v8 initWithArray:v9];

      v11 = dispatch_semaphore_create(0);
      mEMORY[0x1E69A5C30] = [MEMORY[0x1E69A5C30] sharedInstance];
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __45__CKImportStatusManager_importStateForAsset___block_invoke;
      v25 = &unk_1E72EE700;
      v27 = &v28;
      v13 = v11;
      v26 = v13;
      [mEMORY[0x1E69A5C30] fetchInfoForSyndicationIdentifiersSavedToSystemPhotoLibrary:v10 completion:&v22];

      v14 = dispatch_time(0, 1000000000);
      if (dispatch_semaphore_wait(v13, v14))
      {
        v15 = IMLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = NSStringFromSelector(a2);
          syndicationIdentifier2 = [v6 syndicationIdentifier];
          [(CKImportStatusManager *)v16 importStateForAsset:syndicationIdentifier2, buf, v15];
        }
      }
    }

    else
    {
      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(a2);
        [(CKImportStatusManager *)v19 importStateForAsset:buf, v10];
      }
    }
  }

  else
  {
    syndicationIdentifier = IMLogHandleForCategory();
    if (os_log_type_enabled(syndicationIdentifier, OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      [(CKImportStatusManager *)v18 importStateForAsset:buf, syndicationIdentifier];
    }
  }

  v20 = v29[3];
  _Block_object_dispose(&v28, 8);

  return v20;
}

intptr_t __45__CKImportStatusManager_importStateForAsset___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 2;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)importStateForAsset:(uint8_t *)buf .cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "%@ - Timed out while fetching %@ saved state. Assuming NOT saved.", buf, 0x16u);
}

- (void)importStateForAsset:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "%@ - syndicationIdentifier for media object was nil. Assuming NOT saved.", buf, 0xCu);
}

- (void)importStateForAsset:(os_log_t)log .cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "%@ - media object was nil. Assuming NOT saved.", buf, 0xCu);
}

@end