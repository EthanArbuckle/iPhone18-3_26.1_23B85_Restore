@interface DDSMAAutoAssetProvider
+ (id)fetchAssetUpdateStatusDateForAutoAsset:(id)asset;
+ (void)setFetchAssetUpdateStatusDateForAutoAsset:(id)asset;
- (id)autoAssetForAssetSelector:(id)selector;
- (id)lockAutoAssetSync:(id)sync forReason:(id)reason error:(id *)error;
- (void)eliminateInterestForAutoAsset:(id)asset;
- (void)fetchLockReasonCountForAutoAsset:(id)asset callback:(id)callback;
- (void)fetchUpdateStatusForAutoAsset:(id)asset completion:(id)completion;
- (void)interestInContentForAutoAsset:(id)asset completion:(id)completion;
- (void)lockAutoAsset:(id)asset forReason:(id)reason withTimeout:(int64_t)timeout completion:(id)completion;
- (void)unlockAutoAsset:(id)asset forReason:(id)reason;
- (void)updateAutoAsset:(id)asset forReason:(id)reason completion:(id)completion;
@end

@implementation DDSMAAutoAssetProvider

- (id)autoAssetForAssetSelector:(id)selector
{
  selectorCopy = selector;
  v4 = objc_alloc(MEMORY[0x1E69B18F8]);
  assetSelector = [selectorCopy assetSelector];
  v11 = 0;
  v6 = [v4 initForClientName:@"com.apple.DataDeliveryServices" selectingAsset:assetSelector error:&v11];
  v7 = v11;

  if (v7)
  {
    v8 = AutoAssetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [DDSMAAutoAssetProvider autoAssetForAssetSelector:selectorCopy];
    }

    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

- (void)fetchLockReasonCountForAutoAsset:(id)asset callback:(id)callback
{
  assetCopy = asset;
  callbackCopy = callback;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__DDSMAAutoAssetProvider_fetchLockReasonCountForAutoAsset_callback___block_invoke;
  v9[3] = &unk_1E86C5E80;
  v10 = assetCopy;
  v11 = callbackCopy;
  v7 = callbackCopy;
  v8 = assetCopy;
  [v8 currentStatus:v9];
}

void __68__DDSMAAutoAssetProvider_fetchLockReasonCountForAutoAsset_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 code] == 6301)
  {
    v8 = AutoAssetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) assetSelector];
      v21 = 138543362;
      v22 = v9;
      _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "Auto asset status is not available for assetSelector: %{public}@", &v21, 0xCu);
    }

    v10 = *(*(a1 + 40) + 16);
LABEL_13:
    v10();
    goto LABEL_14;
  }

  v11 = AutoAssetLog();
  v12 = v11;
  if (!v5)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __68__DDSMAAutoAssetProvider_fetchLockReasonCountForAutoAsset_callback___block_invoke_cold_1(a1);
    }

    v10 = *(*(a1 + 40) + 16);
    goto LABEL_13;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v5 currentLockUsage];
    v14 = [v13 count];
    v15 = [*(a1 + 32) assetSelector];
    v21 = 134218242;
    v22 = v14;
    v23 = 2114;
    v24 = v15;
    _os_log_impl(&dword_1DF7C6000, v12, OS_LOG_TYPE_DEFAULT, "Auto asset lock reason count: %lu for assetSelector: %{public}@", &v21, 0x16u);
  }

  v16 = *(a1 + 40);
  v17 = MEMORY[0x1E696AD98];
  v18 = [v5 currentLockUsage];
  v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
  (*(v16 + 16))(v16, v19, 0);

LABEL_14:
  v20 = *MEMORY[0x1E69E9840];
}

- (void)lockAutoAsset:(id)asset forReason:(id)reason withTimeout:(int64_t)timeout completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  completionCopy = completion;
  reasonCopy = reason;
  v12 = AutoAssetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    assetSelector = [assetCopy assetSelector];
    *buf = 138412290;
    v22 = assetSelector;
    _os_log_impl(&dword_1DF7C6000, v12, OS_LOG_TYPE_DEFAULT, "Lock auto asset: %@", buf, 0xCu);
  }

  v14 = objc_alloc_init(MEMORY[0x1E69B1908]);
  [v14 setUserInitiated:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__DDSMAAutoAssetProvider_lockAutoAsset_forReason_withTimeout_completion___block_invoke;
  v18[3] = &unk_1E86C5EA8;
  v19 = assetCopy;
  v20 = completionCopy;
  v15 = completionCopy;
  v16 = assetCopy;
  [v16 lockContent:reasonCopy withUsagePolicy:v14 withTimeout:timeout completion:v18];

  v17 = *MEMORY[0x1E69E9840];
}

void __73__DDSMAAutoAssetProvider_lockAutoAsset_forReason_withTimeout_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a6;
  v10 = AutoAssetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v11)
    {
      v12 = [*(a1 + 32) assetSelector];
      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_1DF7C6000, v10, OS_LOG_TYPE_DEFAULT, "Auto asset: %{public}@ present at path: %{public}@", &v15, 0x16u);
    }
  }

  else if (v11)
  {
    v13 = [*(a1 + 32) assetSelector];
    v15 = 138543618;
    v16 = v13;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_1DF7C6000, v10, OS_LOG_TYPE_DEFAULT, "Failed to get content localContentURL for: %{public}@ with error: %{public}@", &v15, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x1E69E9840];
}

- (id)lockAutoAssetSync:(id)sync forReason:(id)reason error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v7 = [syncCopy lockContentSync:reason withTimeout:0 lockedAssetSelector:&v32 newerInProgress:&v31 error:&v30];
  v8 = v32;
  v9 = v31;
  v10 = v30;
  v11 = AutoAssetLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v12)
    {
      assetSelector = [syncCopy assetSelector];
      *buf = 138412546;
      v34 = assetSelector;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_1DF7C6000, v11, OS_LOG_TYPE_DEFAULT, "lockContentSync completed for auto asset: %@ with error: %@", buf, 0x16u);
    }

    v29 = v10;
    v11 = [objc_alloc(MEMORY[0x1E69B18F8]) initForClientName:@"data-delivery-service" selectingAsset:v8 error:&v29];
    v14 = v29;

    if (!v11)
    {
      v15 = AutoAssetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v34 = v8;
        v35 = 2112;
        v36 = v14;
        _os_log_impl(&dword_1DF7C6000, v15, OS_LOG_TYPE_DEFAULT, "Cannot create auto asset instance with selector: %@, error: %@", buf, 0x16u);
      }

      v20 = 0;
      v10 = v14;
      goto LABEL_24;
    }

    v28 = v14;
    v15 = [v11 currentStatusSync:&v28];
    v10 = v28;

    if (!v15)
    {
      v16 = AutoAssetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        assetSelector2 = [v11 assetSelector];
        *buf = 138412546;
        v34 = assetSelector2;
        v35 = 2112;
        v36 = v10;
        _os_log_impl(&dword_1DF7C6000, v16, OS_LOG_TYPE_DEFAULT, "Fetch status for locked auto asset: %@ completed with error: %@", buf, 0x16u);
      }

      v20 = 0;
      goto LABEL_23;
    }

    v16 = objc_opt_new();
    availableForUseAttributes = [v15 availableForUseAttributes];

    if (availableForUseAttributes)
    {
      availableForUseAttributes2 = [v15 availableForUseAttributes];
    }

    else
    {
      newerVersionAttributes = [v15 newerVersionAttributes];

      if (!newerVersionAttributes)
      {
LABEL_20:
        v24 = AutoAssetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          assetSelector3 = [v11 assetSelector];
          *buf = 138412546;
          v34 = assetSelector3;
          v35 = 2112;
          v36 = v16;
          _os_log_impl(&dword_1DF7C6000, v24, OS_LOG_TYPE_DEFAULT, "Auto Asset: %@, Attributes: %@", buf, 0x16u);
        }

        v20 = [[DDSAsset alloc] initWithAttributes:v16 localURL:v7];
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      availableForUseAttributes2 = [v15 newerVersionAttributes];
    }

    v23 = availableForUseAttributes2;
    [v16 addEntriesFromDictionary:availableForUseAttributes2];

    goto LABEL_20;
  }

  if (v12)
  {
    assetSelector4 = [syncCopy assetSelector];
    *buf = 138412546;
    v34 = assetSelector4;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&dword_1DF7C6000, v11, OS_LOG_TYPE_DEFAULT, "lockContentSync failed for auto asset: %@ with error: %@", buf, 0x16u);
  }

  v20 = 0;
LABEL_25:

  v26 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)unlockAutoAsset:(id)asset forReason:(id)reason
{
  assetCopy = asset;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__DDSMAAutoAssetProvider_unlockAutoAsset_forReason___block_invoke;
  v7[3] = &unk_1E86C5ED0;
  v8 = assetCopy;
  v6 = assetCopy;
  [v6 endLockUsage:reason completion:v7];
}

void __52__DDSMAAutoAssetProvider_unlockAutoAsset_forReason___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = AutoAssetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = [*(a1 + 32) assetSelector];
      v13 = 138543362;
      v14 = v8;
      v9 = "Auto asset: %{public}@ unlocked successfully";
      v10 = v6;
      v11 = 12;
LABEL_6:
      _os_log_impl(&dword_1DF7C6000, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
    }
  }

  else if (v7)
  {
    v8 = [*(a1 + 32) assetSelector];
    v13 = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = v5;
    v9 = "End lock for auto asset: %{public}@ failed with error: %{public}@";
    v10 = v6;
    v11 = 22;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)interestInContentForAutoAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__DDSMAAutoAssetProvider_interestInContentForAutoAsset_completion___block_invoke;
  v9[3] = &unk_1E86C5EF8;
  v10 = assetCopy;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = assetCopy;
  [v8 interestInContent:@"dds-auto-asset-interest" completion:v9];
}

void __67__DDSMAAutoAssetProvider_interestInContentForAutoAsset_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = AutoAssetLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "interestInContent successful for asset selector: %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __67__DDSMAAutoAssetProvider_interestInContentForAutoAsset_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x1E69E9840];
}

- (void)eliminateInterestForAutoAsset:(id)asset
{
  assetCopy = asset;
  v4 = MEMORY[0x1E69B18F8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__DDSMAAutoAssetProvider_eliminateInterestForAutoAsset___block_invoke;
  v6[3] = &unk_1E86C5ED0;
  v7 = assetCopy;
  v5 = assetCopy;
  [v4 eliminateAllForSelector:v5 completion:v6];
}

void __56__DDSMAAutoAssetProvider_eliminateInterestForAutoAsset___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AutoAssetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "eliminateAllForSelector successful for asset selector: %@", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__DDSMAAutoAssetProvider_eliminateInterestForAutoAsset___block_invoke_cold_1(a1, v5);
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)setFetchAssetUpdateStatusDateForAutoAsset:(id)asset
{
  v18 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v4 = MEMORY[0x1E696AEC0];
  assetSelector = [assetCopy assetSelector];
  assetType = [assetSelector assetType];
  assetSelector2 = [assetCopy assetSelector];
  assetSpecifier = [assetSelector2 assetSpecifier];
  v9 = [v4 stringWithFormat:@"%@-%@-%@", @"DDSAutoAssetPreferences", assetType, assetSpecifier];

  date = [MEMORY[0x1E695DF00] date];
  v11 = AutoAssetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    assetSelector3 = [assetCopy assetSelector];
    *buf = 138412546;
    v15 = assetSelector3;
    v16 = 2112;
    v17 = date;
    _os_log_impl(&dword_1DF7C6000, v11, OS_LOG_TYPE_DEFAULT, "Did server lookup for auto asset: %@ on %@", buf, 0x16u);
  }

  DDSSetPreferenceObjectForKey(v9, date);
  v13 = *MEMORY[0x1E69E9840];
}

+ (id)fetchAssetUpdateStatusDateForAutoAsset:(id)asset
{
  v3 = MEMORY[0x1E696AEC0];
  assetCopy = asset;
  assetSelector = [assetCopy assetSelector];
  assetType = [assetSelector assetType];
  assetSelector2 = [assetCopy assetSelector];

  assetSpecifier = [assetSelector2 assetSpecifier];
  v9 = [v3 stringWithFormat:@"%@-%@-%@", @"DDSAutoAssetPreferences", assetType, assetSpecifier];

  v10 = DDSGetPreferenceObjectForKey(v9);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (void)fetchUpdateStatusForAutoAsset:(id)asset completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  completionCopy = completion;
  v7 = AutoAssetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    assetSelector = [assetCopy assetSelector];
    *buf = 138412290;
    v24 = assetSelector;
    _os_log_impl(&dword_1DF7C6000, v7, OS_LOG_TYPE_DEFAULT, "Fetch asset update status for auto asset: %@", buf, 0xCu);
  }

  v9 = [DDSMAAutoAssetProvider fetchAssetUpdateStatusDateForAutoAsset:assetCopy];
  v10 = v9;
  if (v9 && ([v9 timeIntervalSinceNow], v11 > -86400.0))
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __67__DDSMAAutoAssetProvider_fetchUpdateStatusForAutoAsset_completion___block_invoke;
    v21[3] = &unk_1E86C5F20;
    v12 = &v22;
    v22 = completionCopy;
    v13 = completionCopy;
    [assetCopy currentStatus:v21];
  }

  else
  {
    v14 = AutoAssetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [DDSMAAutoAssetProvider fetchUpdateStatusForAutoAsset:assetCopy completion:v14];
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __67__DDSMAAutoAssetProvider_fetchUpdateStatusForAutoAsset_completion___block_invoke_36;
    v18[3] = &unk_1E86C5F48;
    v12 = &v19;
    v15 = assetCopy;
    v19 = v15;
    v20 = completionCopy;
    v16 = completionCopy;
    [v15 determineIfAvailable:@"dds-asset-download-ui-determine-if-available" withTimeout:-2 completion:v18];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __67__DDSMAAutoAssetProvider_fetchUpdateStatusForAutoAsset_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = [a2 notifications];
    (*(v6 + 16))(v6, [v7 newerVersionDiscovered], 0);
  }

  else
  {
    v8 = AutoAssetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "Cannot fetch the current status of auto asset due to error: %@", &v10, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __67__DDSMAAutoAssetProvider_fetchUpdateStatusForAutoAsset_completion___block_invoke_36(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (a3)
  {
    v17 = 0;
    v9 = [objc_alloc(MEMORY[0x1E69B18F8]) initForClientName:@"com.apple.DataDeliveryServices" selectingAsset:v7 error:&v17];
    v10 = v17;
    if (v9)
    {
      [DDSMAAutoAssetProvider setFetchAssetUpdateStatusDateForAutoAsset:v9];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __67__DDSMAAutoAssetProvider_fetchUpdateStatusForAutoAsset_completion___block_invoke_37;
      v15[3] = &unk_1E86C5F20;
      v16 = *(a1 + 40);
      [v9 currentStatus:v15];
    }

    else
    {
      v13 = AutoAssetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v19 = v7;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_1DF7C6000, v13, OS_LOG_TYPE_DEFAULT, "Cannot create auto asset for asset selector: %@ due to error: %@", buf, 0x16u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v11 = AutoAssetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) assetSelector];
      *buf = 138412546;
      v19 = v12;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_1DF7C6000, v11, OS_LOG_TYPE_DEFAULT, "Auto asset: %@, determineIfAvailable failed with error: %@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
    if ([v8 code] == 6201)
    {
      [DDSMAAutoAssetProvider setFetchAssetUpdateStatusDateForAutoAsset:*(a1 + 32)];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __67__DDSMAAutoAssetProvider_fetchUpdateStatusForAutoAsset_completion___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = [a2 notifications];
    (*(v6 + 16))(v6, [v7 newerVersionDiscovered], 0);
  }

  else
  {
    v8 = AutoAssetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "Cannot fetch the current status of auto asset due to error: %@", &v10, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)updateAutoAsset:(id)asset forReason:(id)reason completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  reasonCopy = reason;
  completionCopy = completion;
  v11 = AutoAssetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    assetSelector = [assetCopy assetSelector];
    *buf = 138412290;
    v20 = assetSelector;
    _os_log_impl(&dword_1DF7C6000, v11, OS_LOG_TYPE_DEFAULT, "Download latest version of auto asset: %@", buf, 0xCu);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__DDSMAAutoAssetProvider_updateAutoAsset_forReason_completion___block_invoke;
  v16[3] = &unk_1E86C5F98;
  v17 = reasonCopy;
  v18 = completionCopy;
  v16[4] = self;
  v13 = reasonCopy;
  v14 = completionCopy;
  [assetCopy determineIfAvailable:v13 withTimeout:-2 completion:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __63__DDSMAAutoAssetProvider_updateAutoAsset_forReason_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v17 = 0;
    v8 = [objc_alloc(MEMORY[0x1E69B18F8]) initForClientName:@"com.apple.DataDeliveryServices" selectingAsset:v6 error:&v17];
    v9 = v17;
    if (v8)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __63__DDSMAAutoAssetProvider_updateAutoAsset_forReason_completion___block_invoke_39;
      v15[3] = &unk_1E86C5F70;
      v16 = *(a1 + 48);
      [v10 lockAutoAsset:v8 forReason:v11 withTimeout:-1 completion:v15];
    }

    else
    {
      v13 = AutoAssetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v19 = v6;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_1DF7C6000, v13, OS_LOG_TYPE_DEFAULT, "Cannot create auto asset for asset selector: %@ due to error: %@", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v12 = AutoAssetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_1DF7C6000, v12, OS_LOG_TYPE_DEFAULT, "Cannot determine the latest auto asset version due to error: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)autoAssetForAssetSelector:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 assetSelector];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __68__DDSMAAutoAssetProvider_fetchLockReasonCountForAutoAsset_callback___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) assetSelector];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __67__DDSMAAutoAssetProvider_interestInContentForAutoAsset_completion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [*(a1 + 32) assetSelector];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void __56__DDSMAAutoAssetProvider_eliminateInterestForAutoAsset___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_ERROR, "eliminateAllForSelector failed for auto asset selector: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)fetchUpdateStatusForAutoAsset:(void *)a1 completion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 assetSelector];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_DEBUG, "Determine latest version of auto asset: %@ on server", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end