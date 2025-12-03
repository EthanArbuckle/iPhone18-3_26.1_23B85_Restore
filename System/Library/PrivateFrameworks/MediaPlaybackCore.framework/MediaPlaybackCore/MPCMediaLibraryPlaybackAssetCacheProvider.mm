@interface MPCMediaLibraryPlaybackAssetCacheProvider
+ (id)_downloadedAssetDestinationDirectoryForMediaLibrary:(id)library;
+ (id)_highQualityCachedAssetDestinationDirectoryForMediaLibrary:(id)library;
+ (id)_lowQualityCachedAssetDestinationDirectoryForMediaLibrary:(id)library;
+ (id)deviceLibraryProviderWithUserIdentity:(id)identity;
+ (uint64_t)_increaseDailyAssetDownloadKB:(uint64_t)b;
+ (void)_sendDailyTotalDownloadSizeEventWithDays:(uint64_t)days sizeInKB:;
- (BOOL)isUnderDailyCacheAssetDownloadLimit;
- (id)_initWithMediaLibrary:(id)library;
- (int64_t)_persistentIDForModelObject:(id)object;
- (void)clearPlaybackAssetCacheFileAssetForGenericObject:(id)object withCompletionHandler:(id)handler;
- (void)didCacheNewAssetToDestinationURL:(id)l;
- (void)getPlaybackAssetDestinationURL:(id *)l sharedCacheURL:(id *)rL purgeable:(BOOL)purgeable purchaseBundleDestinationURL:(id *)uRL assetQualityType:(int64_t)type fileName:(id)name pathExtension:(id)extension;
- (void)setPlaybackAssetCacheFileAsset:(id)asset forGenericObject:(id)object withCompletionHandler:(id)handler;
@end

@implementation MPCMediaLibraryPlaybackAssetCacheProvider

- (int64_t)_persistentIDForModelObject:(id)object
{
  flattenedGenericObject = [object flattenedGenericObject];
  type = [flattenedGenericObject type];
  switch(type)
  {
    case 9:
      movie = [flattenedGenericObject movie];
      break;
    case 6:
      movie = [flattenedGenericObject tvEpisode];
      break;
    case 1:
      movie = [flattenedGenericObject song];
      break;
    default:
      persistentID = 0;
      goto LABEL_9;
  }

  v6 = movie;
  identifiers = [movie identifiers];
  library = [identifiers library];
  persistentID = [library persistentID];

LABEL_9:
  return persistentID;
}

- (void)didCacheNewAssetToDestinationURL:(id)l
{
  v31 = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [lCopy path];
  v22 = v29 = 0;
  v23 = defaultManager;
  v5 = [defaultManager attributesOfItemAtPath:? error:?];
  v6 = v29;
  if (v5)
  {
    v7 = [v5 objectForKey:*MEMORY[0x1E696A3D8]];
    if ([v7 isEqualToString:*MEMORY[0x1E696A3E0]])
    {
      v8 = [v23 enumeratorAtPath:v22];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (!v9)
      {

LABEL_15:
        goto LABEL_16;
      }

      v10 = v9;
      v19 = v7;
      v20 = v5;
      v21 = lCopy;
      longLongValue = 0;
      v12 = *v26;
      v13 = *MEMORY[0x1E696A3B8];
      do
      {
        v14 = 0;
        v15 = v6;
        do
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v16 = [v22 stringByAppendingPathComponent:{*(*(&v25 + 1) + 8 * v14), v19, v20, v21}];
          v24 = v15;
          v17 = [v23 attributesOfItemAtPath:v16 error:&v24];
          v6 = v24;

          v18 = [v17 objectForKey:v13];
          longLongValue += [v18 longLongValue];

          ++v14;
          v15 = v6;
        }

        while (v10 != v14);
        v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v10);
      v5 = v20;
      lCopy = v21;
      v7 = v19;
    }

    else
    {
      v8 = [v5 objectForKey:*MEMORY[0x1E696A3B8]];
      longLongValue = [v8 longLongValue];
    }

    if (longLongValue)
    {
      [MPCMediaLibraryPlaybackAssetCacheProvider _increaseDailyAssetDownloadKB:?];
    }

    goto LABEL_15;
  }

LABEL_16:
}

+ (uint64_t)_increaseDailyAssetDownloadKB:(uint64_t)b
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v4 = [MEMORY[0x1E695DF00] now];
  [v4 timeIntervalSince1970];
  v6 = v5 / 86400;

  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __75__MPCMediaLibraryPlaybackAssetCacheProvider__increaseDailyAssetDownloadKB___block_invoke;
  v19 = &__block_descriptor_48_e5_v8__0l;
  v20 = v6;
  v21 = v3;
  if (_increaseDailyAssetDownloadKB__onceToken != -1)
  {
    dispatch_once(&_increaseDailyAssetDownloadKB__onceToken, &v16);
  }

  v7 = __MPCDailyAssetDownloadCountDay;
  v8 = v6 - __MPCDailyAssetDownloadCountDay;
  if (v6 <= __MPCDailyAssetDownloadCountDay)
  {
    v9 = a2 + atomic_fetch_add_explicit(__MPCDailyAssetDownloadSizeInKB, a2, memory_order_relaxed);
    if (!a2)
    {
      return v9;
    }
  }

  else
  {
    __swp(__MPCDailyAssetDownloadCountDay, __MPCDailyAssetDownloadSizeInKB);
    [(MPCMediaLibraryPlaybackAssetCacheProvider *)v3 _sendDailyTotalDownloadSizeEventWithDays:v8 sizeInKB:v7];
    __MPCDailyAssetDownloadCountDay = v6;
    v9 = a2 + atomic_fetch_add_explicit(__MPCDailyAssetDownloadSizeInKB, a2, memory_order_relaxed);
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v24[0] = @"day";
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
  v25[0] = v11;
  v24[1] = @"sizeInKB";
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  v25[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  [standardUserDefaults setObject:v13 forKey:@"_MPCDailyAssetDownloadCurrentSize"];

  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v23 = v9;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "MPCMediaLibraryPlaybackAssetCacheProvider: Updated daily asset download size: %{public}ld KB", buf, 0xCu);
  }

  return v9;
}

void __75__MPCMediaLibraryPlaybackAssetCacheProvider__increaseDailyAssetDownloadKB___block_invoke(uint64_t a1)
{
  __MPCDailyAssetDownloadCountDay = *(a1 + 32);
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v9 = [v2 objectForKey:@"_MPCDailyAssetDownloadCurrentSize"];

  v3 = v9;
  if (v9)
  {
    v4 = [v9 objectForKeyedSubscript:@"day"];
    v5 = [v4 longLongValue];

    v6 = [v9 objectForKeyedSubscript:@"sizeInKB"];
    v7 = [v6 integerValue];

    v8 = *(a1 + 32);
    if (v8 == v5)
    {
      atomic_store(v7, &__MPCDailyAssetDownloadSizeInKB);
    }

    else
    {
      v3 = v9;
      if (v8 <= v5)
      {
        goto LABEL_7;
      }

      [(MPCMediaLibraryPlaybackAssetCacheProvider *)*(a1 + 40) _sendDailyTotalDownloadSizeEventWithDays:v7 sizeInKB:?];
    }

    v3 = v9;
  }

LABEL_7:
}

+ (void)_sendDailyTotalDownloadSizeEventWithDays:(uint64_t)days sizeInKB:
{
  objc_opt_self();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __95__MPCMediaLibraryPlaybackAssetCacheProvider__sendDailyTotalDownloadSizeEventWithDays_sizeInKB___block_invoke;
  v6[3] = &__block_descriptor_48_e19___NSDictionary_8__0l;
  v6[4] = a2;
  v6[5] = days;
  v5 = _Block_copy(v6);
  AnalyticsSendEventLazy();
}

id __95__MPCMediaLibraryPlaybackAssetCacheProvider__sendDailyTotalDownloadSizeEventWithDays_sizeInKB___block_invoke(uint64_t a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"appID";
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v10[0] = v3;
  v9[1] = @"days";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 32)];
  v10[1] = v4;
  v9[2] = @"totalKB";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v10[2] = v5;
  v9[3] = @"avgKBPerDay";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40) / *(a1 + 32)];
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (BOOL)isUnderDailyCacheAssetDownloadLimit
{
  v19 = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"_MPCDailyAssetDownloadLimitKB"];

  if ([v3 integerValue] < 1)
  {
    v6 = 1;
  }

  else
  {
    v4 = [MPCMediaLibraryPlaybackAssetCacheProvider _increaseDailyAssetDownloadKB:?];
    integerValue = [v3 integerValue];
    v6 = v4 < integerValue;
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v4 < integerValue;
      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      v11 = 134218754;
      v12 = v4;
      v13 = 2114;
      v14 = v3;
      v15 = 1024;
      v16 = v8;
      v17 = 2112;
      v18 = standardUserDefaults2;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "MPCMediaLibraryPlaybackAssetCacheProvider: Current daily asset download size: %ld KB, daily limit: %{public}@ KB, is under daily limit: %{BOOL}u %@", &v11, 0x26u);
    }
  }

  return v6;
}

- (void)setPlaybackAssetCacheFileAsset:(id)asset forGenericObject:(id)object withCompletionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  objectCopy = object;
  handlerCopy = handler;
  filePath = [assetCopy filePath];
  if ([filePath length])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x2020000000;
    v35 = [(MPCMediaLibraryPlaybackAssetCacheProvider *)self _persistentIDForModelObject:objectCopy];
    flattenedGenericObject = [objectCopy flattenedGenericObject];
    type = [flattenedGenericObject type];
    switch(type)
    {
      case 1:
        song = [flattenedGenericObject song];
        break;
      case 6:
        song = [flattenedGenericObject tvEpisode];
        break;
      case 9:
        song = [flattenedGenericObject movie];
        break;
      default:
        v17 = 0;
        goto LABEL_13;
    }

    v17 = song;
LABEL_13:
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __115__MPCMediaLibraryPlaybackAssetCacheProvider_setPlaybackAssetCacheFileAsset_forGenericObject_withCompletionHandler___block_invoke;
    aBlock[3] = &unk_1E82366A8;
    v28 = assetCopy;
    selfCopy = self;
    p_buf = &buf;
    v18 = handlerCopy;
    v31 = v18;
    v30 = filePath;
    v19 = _Block_copy(aBlock);
    if (*(*(&buf + 1) + 24))
    {
      v20 = qos_class_self();
      v21 = dispatch_get_global_queue(v20, 0);
      dispatch_async(v21, v19);
    }

    else
    {
      v21 = objc_alloc_init(MEMORY[0x1E69706C0]);
      [v21 setShouldLibraryAdd:0];
      v22 = objc_alloc_init(MEMORY[0x1E6970818]);
      [v22 appendSection:&stru_1F454A698];
      [v22 appendItem:v17];
      [v21 setModelObjects:v22];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __115__MPCMediaLibraryPlaybackAssetCacheProvider_setPlaybackAssetCacheFileAsset_forGenericObject_withCompletionHandler___block_invoke_4;
      v23[3] = &unk_1E82332B8;
      v26 = &buf;
      v24 = v19;
      v25 = v18;
      [v21 performWithResponseHandler:v23];
    }

    _Block_object_dispose(&buf, 8);
    goto LABEL_17;
  }

  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_ERROR, "%{public}@: File asset missing file path, finishing.", &buf, 0xCu);
  }

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCMediaLibraryPlaybackAssetCacheProviderErrorDomain" code:-1005 userInfo:0];
  (*(handlerCopy + 2))(handlerCopy, v16);

LABEL_17:
}

void __115__MPCMediaLibraryPlaybackAssetCacheProvider_setPlaybackAssetCacheFileAsset_forGenericObject_withCompletionHandler___block_invoke(uint64_t a1)
{
  v118 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) qualityType];
  v3 = [*(a1 + 32) traits];
  v4 = [*(*(a1 + 40) + 8) itemWithPersistentID:*(*(*(a1 + 64) + 8) + 24) verifyExistence:0];
  if (v4)
  {
    v5 = *MEMORY[0x1E696FA68];
    v6 = *MEMORY[0x1E696FA60];
    v7 = *MEMORY[0x1E696F9A0];
    v8 = *MEMORY[0x1E696F9A8];
    v100 = *MEMORY[0x1E696F9D0];
    v101 = *MEMORY[0x1E696F9E0];
    v103 = *MEMORY[0x1E696F9B8];
    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696FA68], *MEMORY[0x1E696FA60], *MEMORY[0x1E696F9A0], *MEMORY[0x1E696F9B8], *MEMORY[0x1E696F9D0], *MEMORY[0x1E696F9E0], *MEMORY[0x1E696F9A8], 0}];
    v10 = [(__CFString *)v4 valuesForProperties:v9];

    v102 = v7;
    v11 = [v10 objectForKey:v7];
    if ([v11 length])
    {
      v12 = [v10 objectForKey:v5];
      v13 = [v12 BOOLValue];

      if ((v13 & 1) == 0)
      {
        v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 40);
          v16 = *(*(*(a1 + 64) + 8) + 24);
          *buf = 138543618;
          v111 = v15;
          v112 = 2048;
          v113 = v16;
          _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Item asset file path is not set because the item has a downloaded asset persistentID=%lld", buf, 0x16u);
        }

        v17 = *(a1 + 56);
        v105 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCMediaLibraryPlaybackAssetCacheProviderErrorDomain" code:-1007 userInfo:0];
        (*(v17 + 16))(v17);
LABEL_82:

        goto LABEL_83;
      }
    }

    else
    {
    }

    v98 = v2;
    v99 = v6;
    v97 = v8;
    v20 = (4 * v3) & 0x20 | (v3 >> 4) & 3 | (16 * ((v3 >> 2) & 1)) | (4 * ((v3 >> 1) & 1));
    v105 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
    v104 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
    v21 = [v10 objectForKey:v103];
    v22 = [v21 integerValue];

    if (v20 == v22)
    {
LABEL_59:
      v52 = [*(a1 + 32) hlsKeyCertificateURL];
      if ([v52 length])
      {
        v53 = [v10 objectForKey:v100];
        if (!v53 || (v54 = v53, [v10 objectForKey:v100], v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v52, "isEqualToString:", v55), v55, v54, (v56 & 1) == 0))
        {
          [v105 addObject:v100];
          [v104 addObject:v52];
        }
      }

      v57 = [*(a1 + 32) hlsKeyServerURL];
      if ([v57 length])
      {
        v58 = [v10 objectForKey:v101];
        if (!v58 || (v59 = v58, [v10 objectForKey:v101], v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v57, "isEqualToString:", v60), v60, v59, (v61 & 1) == 0))
        {
          [v105 addObject:v101];
          [v104 addObject:v57];
        }
      }

      v62 = [*(a1 + 32) hlsKeyServerProtocol];
      if ([v62 length])
      {
        v63 = *MEMORY[0x1E696F9D8];
        v64 = [v10 objectForKey:*MEMORY[0x1E696F9D8]];
        if (!v64 || (v65 = v64, [v10 objectForKey:v63], v66 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend(v62, "isEqualToString:", v66), v66, v65, (v67 & 1) == 0))
        {
          [v105 addObject:v63];
          [v104 addObject:v62];
        }
      }

      v68 = *(*(a1 + 40) + 8);
      v69 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(*(a1 + 64) + 8) + 24)];
      v109 = v69;
      v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v109 count:1];
      [v68 setValues:v104 forProperties:v105 forItemPersistentIDs:v70];

      v71 = [v10 objectForKey:v102];
      v72 = [v71 length];

      if (!v72 || ([v10 objectForKey:v102], v73 = objc_claimAutoreleasedReturnValue(), v74 = objc_msgSend(v73, "isEqualToString:", *(a1 + 48)), v73, !v74) || (objc_msgSend(v10, "objectForKey:", v99), v75 = objc_claimAutoreleasedReturnValue(), v76 = objc_msgSend(v75, "BOOLValue"), v75, v76) && v98 == 2 || (objc_msgSend(*(a1 + 48), "pathExtension"), (v84 = objc_claimAutoreleasedReturnValue()) != 0) && (v85 = v84, MSVOfflineHLSFileExtensions(), v86 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 48), "pathExtension"), v87 = objc_claimAutoreleasedReturnValue(), v88 = objc_msgSend(v86, "containsObject:", v87), v87, v86, v85, v88) && (objc_msgSend(v10, "objectForKey:", v97), v89 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", MSVGetDiskUsageForPath()), v90 = objc_claimAutoreleasedReturnValue(), v91 = objc_msgSend(v89, "isEqualToNumber:", v90), v90, v89, (v91 & 1) == 0))
      {
        v77 = [*(a1 + 32) protectionType];
        if (v77 == 1)
        {
          v78 = 1;
        }

        else
        {
          v78 = 2 * (v77 == 2);
        }

        v79 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          v80 = *(a1 + 40);
          v81 = *(a1 + 48);
          *buf = 138543874;
          v111 = v80;
          v112 = 2114;
          v113 = v81;
          v114 = 2114;
          v115 = v4;
          _os_log_impl(&dword_1C5C61000, v79, OS_LOG_TYPE_DEFAULT, "%{public}@: Writing path %{public}@ for media item: %{public}@", buf, 0x20u);
        }

        v107[0] = MEMORY[0x1E69E9820];
        v107[1] = 3221225472;
        v107[2] = __115__MPCMediaLibraryPlaybackAssetCacheProvider_setPlaybackAssetCacheFileAsset_forGenericObject_withCompletionHandler___block_invoke_16;
        v107[3] = &unk_1E8233290;
        v82 = &v108;
        v83 = *(a1 + 48);
        v108 = *(a1 + 56);
        [(__CFString *)v4 populateLocationPropertiesWithPath:v83 assetProtectionType:v78 completionBlock:v107];
      }

      else
      {
        v82 = &v106;
        v106 = *(a1 + 56);
        msv_dispatch_on_main_queue();
      }

      goto LABEL_82;
    }

    v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
LABEL_58:

      [v105 addObject:v103];
      v51 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
      [v104 addObject:v51];

      goto LABEL_59;
    }

    v92 = (4 * v3) & 0x20;
    v95 = *(a1 + 40);
    v96 = v23;
    v24 = [*(a1 + 32) traits];
    v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:6];
    if (v24)
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"adm"];
      [v25 addObject:v33];

      if ((v24 & 2) == 0)
      {
LABEL_13:
        if ((v24 & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if ((v24 & 2) == 0)
    {
      goto LABEL_13;
    }

    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"lossless"];
    [v25 addObject:v34];

    if ((v24 & 4) == 0)
    {
LABEL_15:
      v94 = v22;
      if ((v24 & 8) != 0)
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"spatial"];
        [v25 addObject:v27];
      }

      v28 = 2 * v3;
      if ((v24 & 0x10) != 0)
      {
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"atmos"];
        [v25 addObject:v29];
      }

      v30 = v28 & 4;
      if ((v24 & 0x20) != 0)
      {
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"surround"];
        [v25 addObject:v31];

        v30 = v28 & 4;
      }

      if ([v25 count])
      {
        v32 = [v25 componentsJoinedByString:{@", "}];
      }

      else
      {
        v32 = @"None";
      }

      v93 = v32;
      v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:6];
      if (v30)
      {
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"lossless"];
        [v35 addObject:v36];
      }

      if (((4 * v3) & 0x10) != 0)
      {
        v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"high-res lossless"];
        [v35 addObject:v39];

        if (!v92)
        {
LABEL_31:
          if ((v3 & 0x10) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_38;
        }
      }

      else if (!v92)
      {
        goto LABEL_31;
      }

      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"spatial"];
      [v35 addObject:v40];

      if ((v3 & 0x10) == 0)
      {
LABEL_32:
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

LABEL_38:
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"atmos"];
      [v35 addObject:v41];

      if ((v3 & 0x20) == 0)
      {
LABEL_34:
        if ([v35 count])
        {
          v38 = [v35 componentsJoinedByString:{@", "}];
        }

        else
        {
          v38 = @"None";
        }

        v42 = v38;
        v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:6];
        if ((v94 & 8) != 0)
        {
          v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"lossy stereo"];
          [v43 addObject:v46];

          if ((v94 & 4) == 0)
          {
LABEL_43:
            if ((v94 & 0x10) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_52;
          }
        }

        else if ((v94 & 4) == 0)
        {
          goto LABEL_43;
        }

        v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"lossless"];
        [v43 addObject:v47];

        if ((v94 & 0x10) == 0)
        {
LABEL_44:
          if ((v94 & 0x20) == 0)
          {
            goto LABEL_45;
          }

          goto LABEL_53;
        }

LABEL_52:
        v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"high-res lossless"];
        [v43 addObject:v48];

        if ((v94 & 0x20) == 0)
        {
LABEL_45:
          if ((v94 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_54;
        }

LABEL_53:
        v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"spatial"];
        [v43 addObject:v49];

        if ((v94 & 1) == 0)
        {
LABEL_46:
          if ((v94 & 2) == 0)
          {
LABEL_48:
            if ([v43 count])
            {
              v45 = [v43 componentsJoinedByString:{@", "}];
            }

            else
            {
              v45 = @"None";
            }

            *buf = 138544130;
            v23 = v96;
            v111 = v95;
            v112 = 2114;
            v113 = v93;
            v114 = 2114;
            v115 = v42;
            v116 = 2114;
            v117 = v45;
            _os_log_impl(&dword_1C5C61000, v96, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: File traits translation from MPFileAsset to MPMediaItem: %{public}@ -> %{public}@ - Existing file traits: %{public}@", buf, 0x2Au);

            goto LABEL_58;
          }

LABEL_47:
          v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"surround"];
          [v43 addObject:v44];

          goto LABEL_48;
        }

LABEL_54:
        v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"atmos"];
        [v43 addObject:v50];

        if ((v94 & 2) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

LABEL_33:
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"surround"];
      [v35 addObject:v37];

      goto LABEL_34;
    }

LABEL_14:
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"high-res lossless"];
    [v25 addObject:v26];

    goto LABEL_15;
  }

  v18 = *(a1 + 56);
  v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCMediaLibraryPlaybackAssetCacheProviderErrorDomain" code:-1006 userInfo:0];
  (*(v18 + 16))(v18, v19);

LABEL_83:
}

void __115__MPCMediaLibraryPlaybackAssetCacheProvider_setPlaybackAssetCacheFileAsset_forGenericObject_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = [v6 identifiers];
  v8 = [v7 library];
  *(*(*(a1 + 48) + 8) + 24) = [v8 persistentID];

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v9 = qos_class_self();
    v10 = dispatch_get_global_queue(v9, 0);
    dispatch_async(v10, *(a1 + 32));
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = MEMORY[0x1E696ABC0];
    if (v5)
    {
      v15 = *MEMORY[0x1E696AA08];
      v16[0] = v5;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    }

    else
    {
      v13 = 0;
    }

    v14 = [v12 errorWithDomain:@"MPCMediaLibraryPlaybackAssetCacheProviderErrorDomain" code:-1003 userInfo:v13];
    (*(v11 + 16))(v11, v14);

    if (v5)
    {
    }
  }
}

void __115__MPCMediaLibraryPlaybackAssetCacheProvider_setPlaybackAssetCacheFileAsset_forGenericObject_withCompletionHandler___block_invoke_16(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = v4;
  msv_dispatch_on_main_queue();
}

void __115__MPCMediaLibraryPlaybackAssetCacheProvider_setPlaybackAssetCacheFileAsset_forGenericObject_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCMediaLibraryPlaybackAssetCacheProviderErrorDomain" code:-1004 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (void)getPlaybackAssetDestinationURL:(id *)l sharedCacheURL:(id *)rL purgeable:(BOOL)purgeable purchaseBundleDestinationURL:(id *)uRL assetQualityType:(int64_t)type fileName:(id)name pathExtension:(id)extension
{
  purgeableCopy = purgeable;
  nameCopy = name;
  extensionCopy = extension;
  if (purgeableCopy)
  {
    v16 = objc_opt_class();
    mediaLibrary = self->_mediaLibrary;
    if (type == 2)
    {
      [v16 _highQualityCachedAssetDestinationDirectoryForMediaLibrary:mediaLibrary];
    }

    else
    {
      [v16 _lowQualityCachedAssetDestinationDirectoryForMediaLibrary:mediaLibrary];
    }
    v18 = ;
  }

  else
  {
    v18 = [objc_opt_class() _downloadedAssetDestinationDirectoryForMediaLibrary:self->_mediaLibrary];
  }

  v19 = v18;
  v20 = [v18 stringByAppendingPathComponent:nameCopy];
  v21 = v20;
  if (l)
  {
    v22 = MEMORY[0x1E695DFF8];
    v23 = [v20 stringByAppendingPathExtension:extensionCopy];
    *l = [v22 fileURLWithPath:v23 isDirectory:0];
  }

  if (uRL)
  {
    v24 = MEMORY[0x1E695DFF8];
    v25 = [v21 stringByAppendingPathExtension:@"plist"];
    *uRL = [v24 fileURLWithPath:v25 isDirectory:0];
  }

  if (rL)
  {
    cloudAssetsSharedCacheFolderPath = [MEMORY[0x1E69B34E0] cloudAssetsSharedCacheFolderPath];
    v27 = MEMORY[0x1E695DFF8];
    v28 = [cloudAssetsSharedCacheFolderPath stringByAppendingPathComponent:nameCopy];
    v29 = [v28 stringByAppendingPathExtension:extensionCopy];
    *rL = [v27 fileURLWithPath:v29 isDirectory:0];
  }
}

- (void)clearPlaybackAssetCacheFileAssetForGenericObject:(id)object withCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = [(MPCMediaLibraryPlaybackAssetCacheProvider *)self _persistentIDForModelObject:object];
  if (v7)
  {
    v8 = v7;
    v9 = [(MPMediaLibrary *)self->_mediaLibrary itemWithPersistentID:v7 verifyExistence:0];
    v10 = *MEMORY[0x1E696FA68];
    v11 = *MEMORY[0x1E696F9A0];
    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696FA68], *MEMORY[0x1E696F9A0], 0}];
    v13 = [v9 valuesForProperties:v12];

    v14 = [v13 objectForKey:v11];
    if ([v14 length])
    {
      v15 = [v13 objectForKey:v10];
      bOOLValue = [v15 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy = self;
          v23 = 2048;
          v24 = v8;
          _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Item asset file path is not clear because the item has a downloaded asset persistentID=%lld", buf, 0x16u);
        }

        if (!handlerCopy)
        {
          goto LABEL_13;
        }

        v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCMediaLibraryPlaybackAssetCacheProviderErrorDomain" code:-1007 userInfo:0];
        handlerCopy[2](handlerCopy, v18);
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }
    }

    else
    {
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __116__MPCMediaLibraryPlaybackAssetCacheProvider_clearPlaybackAssetCacheFileAssetForGenericObject_withCompletionHandler___block_invoke;
    v19[3] = &unk_1E8233290;
    v20 = handlerCopy;
    [v9 populateLocationPropertiesWithPath:0 assetProtectionType:0 completionBlock:v19];
    v18 = v20;
    goto LABEL_12;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

LABEL_14:
}

uint64_t __116__MPCMediaLibraryPlaybackAssetCacheProvider_clearPlaybackAssetCacheFileAssetForGenericObject_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (id)_initWithMediaLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = MPCMediaLibraryPlaybackAssetCacheProvider;
  v6 = [(MPCMediaLibraryPlaybackAssetCacheProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaLibrary, library);
  }

  return v7;
}

+ (id)_downloadedAssetDestinationDirectoryForMediaLibrary:(id)library
{
  v18 = *MEMORY[0x1E69E9840];
  ml3Library = [library ml3Library];
  v4 = ml3Library;
  if (ml3Library)
  {
    autoupdatingSharedLibrary = ml3Library;
  }

  else
  {
    autoupdatingSharedLibrary = [MEMORY[0x1E69B34E0] autoupdatingSharedLibrary];
  }

  v6 = autoupdatingSharedLibrary;

  v7 = [v6 pathForResourceFileOrFolder:10];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([defaultManager fileExistsAtPath:v7] & 1) == 0)
  {
    v13 = 0;
    v9 = [defaultManager createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v13];
    v10 = v13;
    if ((v9 & 1) == 0)
    {
      v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543618;
        v15 = v7;
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_FAULT, "MPCMediaLibraryPlaybackAssetCacheProvider: Failed to create downloaded directory: %{public}@ error: %{public}@", buf, 0x16u);
      }
    }
  }

  return v7;
}

+ (id)_lowQualityCachedAssetDestinationDirectoryForMediaLibrary:(id)library
{
  v18 = *MEMORY[0x1E69E9840];
  ml3Library = [library ml3Library];
  v4 = ml3Library;
  if (ml3Library)
  {
    autoupdatingSharedLibrary = ml3Library;
  }

  else
  {
    autoupdatingSharedLibrary = [MEMORY[0x1E69B34E0] autoupdatingSharedLibrary];
  }

  v6 = autoupdatingSharedLibrary;

  v7 = [v6 pathForResourceFileOrFolder:9];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([defaultManager fileExistsAtPath:v7] & 1) == 0)
  {
    v13 = 0;
    v9 = [defaultManager createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v13];
    v10 = v13;
    if ((v9 & 1) == 0)
    {
      v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543618;
        v15 = v7;
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_FAULT, "MPCMediaLibraryPlaybackAssetCacheProvider: Failed to create low quality cache directory: %{public}@ error: %{public}@", buf, 0x16u);
      }
    }
  }

  return v7;
}

+ (id)_highQualityCachedAssetDestinationDirectoryForMediaLibrary:(id)library
{
  v18 = *MEMORY[0x1E69E9840];
  ml3Library = [library ml3Library];
  v4 = ml3Library;
  if (ml3Library)
  {
    autoupdatingSharedLibrary = ml3Library;
  }

  else
  {
    autoupdatingSharedLibrary = [MEMORY[0x1E69B34E0] autoupdatingSharedLibrary];
  }

  v6 = autoupdatingSharedLibrary;

  v7 = [v6 pathForResourceFileOrFolder:8];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([defaultManager fileExistsAtPath:v7] & 1) == 0)
  {
    v13 = 0;
    v9 = [defaultManager createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v13];
    v10 = v13;
    if ((v9 & 1) == 0)
    {
      v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543618;
        v15 = v7;
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_FAULT, "MPCMediaLibraryPlaybackAssetCacheProvider: Failed to create high quality cache directory: %{public}@ error: %{public}@", buf, 0x16u);
      }
    }
  }

  return v7;
}

+ (id)deviceLibraryProviderWithUserIdentity:(id)identity
{
  v3 = [MEMORY[0x1E69705E8] deviceMediaLibraryWithUserIdentity:identity];
  v4 = [[MPCMediaLibraryPlaybackAssetCacheProvider alloc] _initWithMediaLibrary:v3];

  return v4;
}

@end