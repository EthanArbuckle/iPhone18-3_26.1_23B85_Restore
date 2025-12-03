@interface PKRemoteCloudStoreAssetManifestItem
- (NSString)recordName;
- (void)downloadAssetWithCloudStoreCoordinatorDelegate:(id)delegate tryCount:(unint64_t)count completion:(id)completion;
@end

@implementation PKRemoteCloudStoreAssetManifestItem

- (NSString)recordName
{
  remoteURL = [(PKRemoteAssetManifestItem *)self remoteURL];
  resourceSpecifier = [remoteURL resourceSpecifier];

  return resourceSpecifier;
}

- (void)downloadAssetWithCloudStoreCoordinatorDelegate:(id)delegate tryCount:(unint64_t)count completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!delegateCopy)
    {
      if (PKRunningInPassd())
      {
        delegateCopy = 0;
      }

      else
      {
        delegateCopy = +[PKCloudStoreService sharedInstance];
      }
    }

    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__80;
    v34 = __Block_byref_object_dispose__80;
    v35 = 0;
    if (delegateCopy)
    {
      v10 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        recordName = [(PKRemoteCloudStoreAssetManifestItem *)self recordName];
        *buf = 138412290;
        v37 = recordName;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Downloading recordName from cloudkit %@", buf, 0xCu);
      }

      recordName2 = [(PKRemoteCloudStoreAssetManifestItem *)self recordName];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __106__PKRemoteCloudStoreAssetManifestItem_downloadAssetWithCloudStoreCoordinatorDelegate_tryCount_completion___block_invoke;
      v25[3] = &unk_1E79E2220;
      v28 = &v30;
      countCopy = count;
      v25[4] = self;
      v26 = delegateCopy;
      v27 = completionCopy;
      [v26 itemOfItemType:4 recordName:recordName2 qualityOfService:25 completion:v25];
    }

    else
    {
      recordName3 = [(PKRemoteCloudStoreAssetManifestItem *)self recordName];
      v21 = PKValidationErrorWithReason(@"A cloudStoreCoordinatorDelegate is not set on the PKRemoteCloudStoreAssetManifestItem with recordName %@. Cannot download remote cloud asset.", v14, v15, v16, v17, v18, v19, v20, recordName3);
      v22 = v31[5];
      v31[5] = v21;

      v23 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v31[5];
        *buf = 138412290;
        v37 = v24;
        _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0, v31[5]);
    }

    _Block_object_dispose(&v30, 8);
  }
}

void __106__PKRemoteCloudStoreAssetManifestItem_downloadAssetWithCloudStoreCoordinatorDelegate_tryCount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = a2;
  v5 = a3;
  if (PKForceCloudStoreRecordDownloadFailure())
  {
    v13 = PKValidationErrorWithReason(@"PKForceCloudStoreRecordDownloadFailure enabled", v6, v7, v8, v9, v10, v11, v12, v37);

    v5 = v13;
  }

  if (v5)
  {
    v14 = [v5 localizedDescription];
    v22 = PKValidationErrorWithReason(@"Couldn't download remote cloud store asset. Error: %@", v15, v16, v17, v18, v19, v20, v21, v14);
    v23 = *(*(a1 + 56) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

LABEL_8:
    v32 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = PKValidationErrorWithReason(@"Invalid PKCloudRecordObject %@ returned when downloading remote cloud store asset.", v25, v26, v27, v28, v29, v30, v31, v38);
    v34 = *(*(a1 + 56) + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = v33;

    goto LABEL_8;
  }

  v32 = [v38 assetData];
LABEL_9:
  if (*(*(*(a1 + 56) + 8) + 40) && [*(a1 + 32) isRequired] && (v36 = *(a1 + 64), v36 <= 2))
  {
    [*(a1 + 32) downloadAssetWithCloudStoreCoordinatorDelegate:*(a1 + 40) tryCount:v36 + 1 completion:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

@end