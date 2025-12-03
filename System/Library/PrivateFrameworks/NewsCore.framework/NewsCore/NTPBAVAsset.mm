@interface NTPBAVAsset
- (id)resolvedCacheURL;
@end

@implementation NTPBAVAsset

- (id)resolvedCacheURL
{
  selfCopy = self;
  if (self)
  {
    bookmark = [self bookmark];
    if (!bookmark)
    {
      selfCopy = 0;
LABEL_11:

      goto LABEL_12;
    }

    v12 = 0;
    v3 = [MEMORY[0x1E695DFF8] URLByResolvingBookmarkData:bookmark options:0 relativeToURL:0 bookmarkDataIsStale:0 error:&v12];
    v4 = v12;
    v5 = v4;
    if (v3)
    {
      if ([v3 checkResourceIsReachableAndReturnError:0])
      {
        selfCopy = v3;
LABEL_10:

        goto LABEL_11;
      }

      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __41__NTPBAVAsset_Bookmark__resolvedCacheURL__block_invoke_138;
      v8[3] = &unk_1E7C397D0;
      v8[4] = selfCopy;
      v9 = v5;
      selfCopy = __41__NTPBAVAsset_Bookmark__resolvedCacheURL__block_invoke_138(v8);
      v6 = v9;
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __41__NTPBAVAsset_Bookmark__resolvedCacheURL__block_invoke_2;
      v10[3] = &unk_1E7C397D0;
      v10[4] = selfCopy;
      v11 = v4;
      selfCopy = __41__NTPBAVAsset_Bookmark__resolvedCacheURL__block_invoke_2(v10);
      v6 = v11;
    }

    goto LABEL_10;
  }

LABEL_12:

  return selfCopy;
}

uint64_t __41__NTPBAVAsset_Bookmark__resolvedCacheURL__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v7 = [v5 identifier];
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "AV asset cache failed to turn bookmark data into bookmark for %{public}@ with error: %{public}@", &v9, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __41__NTPBAVAsset_Bookmark__resolvedCacheURL__block_invoke_138(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v7 = [v5 identifier];
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "AV asset cache found bookmark whose file isn't reachable for %{public}@ with error: %{public}@", &v9, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __47__NTPBAVAsset_Bookmark__resolvedFileResourceID__block_invoke_2(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
  {
    v5 = a1[4];
    v6 = v2;
    v7 = [v5 identifier];
    v8 = a1[5];
    v9 = a1[6];
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "AV asset cache failed to look up resource ID, assetID=%{public}@, url=%{public}@, error=%{public}@", &v10, 0x20u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

@end