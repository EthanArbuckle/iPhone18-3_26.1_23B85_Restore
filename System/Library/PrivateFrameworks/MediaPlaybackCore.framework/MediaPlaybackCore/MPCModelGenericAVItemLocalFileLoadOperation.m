@interface MPCModelGenericAVItemLocalFileLoadOperation
- (MPCModelGenericAVItemLocalFileLoadOperation)initWithEvaluation:(id)a3 properties:(id)a4;
- (void)execute;
@end

@implementation MPCModelGenericAVItemLocalFileLoadOperation

- (void)execute
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__MPCModelGenericAVItemLocalFileLoadOperation_execute__block_invoke;
  aBlock[3] = &unk_1E8233408;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(MPCModelGenericAVItemLocalFileLoadOperation *)self assetLoadProperties];
  v5 = [(MPCModelGenericAVItemLocalFileLoadOperation *)self fileAssetEvaluation];
  if ([v5 fileIsValid])
  {
    goto LABEL_2;
  }

  v14 = [v5 status];
  if (v14 > 3)
  {
    if ((v14 - 5) >= 2)
    {
      if (v14 != 4)
      {
        if (v14 == 7 && self->_requirePreferredAssetQuality)
        {
          v17 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:24 debugDescription:@"File asset not usable for vocal attenuation [HLS file]"];
          v3[2](v3, 0, v17);
        }

        goto LABEL_2;
      }

      v15 = MEMORY[0x1E696ABC0];
      v16 = 22;
LABEL_19:
      v6 = [v15 errorWithDomain:@"MPCError" code:v16 userInfo:0];
      v3[2](v3, 0, v6);
      goto LABEL_20;
    }

LABEL_18:
    v15 = MEMORY[0x1E696ABC0];
    v16 = 24;
    goto LABEL_19;
  }

  if (!v14 || v14 == 2)
  {
    goto LABEL_18;
  }

  if (v14 == 3)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = 20;
    goto LABEL_19;
  }

LABEL_2:
  v6 = [v5 fileAsset];
  if (([v5 fileMatchesRequiredQuality] & 1) == 0 && ((objc_msgSend(v5, "fileMatchesRequiredQuality") & 1) != 0 || self->_requirePreferredAssetQuality))
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:21 userInfo:0];
    v3[2](v3, 0, v10);
  }

  else
  {
    v7 = [v6 filePath];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __54__MPCModelGenericAVItemLocalFileLoadOperation_execute__block_invoke_2;
    v18[3] = &unk_1E8233430;
    v19 = v7;
    v20 = v5;
    v8 = v6;
    v21 = v8;
    v22 = self;
    v9 = v4;
    v23 = v9;
    v24 = v3;
    v10 = v7;
    v11 = _Block_copy(v18);
    v12 = [v9 itemIdentifiers];
    v13 = [objc_alloc(MEMORY[0x1E69707D8]) initWithFileAsset:v8 sourceItemIdentifiers:v12];
    [v13 setFileAsset:v8];
    [v13 setSourceItemIdentifiers:v12];
    [v13 performWithResponseHandler:v11];
  }

LABEL_20:
}

void __54__MPCModelGenericAVItemLocalFileLoadOperation_execute__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v6[37];
  v10 = v5;
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
    v8 = *(a1 + 32);
    v9 = *(v8 + 296);
    *(v8 + 296) = 0;

    v5 = v10;
    v6 = *(a1 + 32);
  }

  [v6 finishWithError:v5];
}

void __54__MPCModelGenericAVItemLocalFileLoadOperation_execute__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = 0;
  v46 = 0;
  if (a2)
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    if ([v7 fileExistsAtPath:*(a1 + 32) isDirectory:&v46])
    {
      if (v46 == 1)
      {
        v6 = [*(a1 + 40) fileIsHLS];
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = [*(a1 + 48) purchaseBundleFilePath];
  v9 = v8;
  if (!v6 || !v8)
  {
    if (!v6)
    {
LABEL_38:
      v11 = [*(a1 + 64) assetCacheProvider];
      v42 = [*(a1 + 64) genericObject];
      v16 = v42;
      if (v11 && v42)
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __54__MPCModelGenericAVItemLocalFileLoadOperation_execute__block_invoke_8;
        v44[3] = &unk_1E8238D28;
        v45 = *(a1 + 72);
        [v11 clearPlaybackAssetCacheFileAssetForGenericObject:v16 withCompletionHandler:v44];
        v17 = v45;
      }

      else
      {
        v43 = *(a1 + 72);
        v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:22 userInfo:0];
        (*(v43 + 16))(v43, 0, v17);
      }

      goto LABEL_42;
    }

    goto LABEL_17;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v8];
  if (![v10 length])
  {
    if ([*(a1 + 40) fileIsCached] && (objc_msgSend(*(a1 + 40), "fileIsHLS") & 1) == 0)
    {
      v39 = [*(a1 + 64) fileAsset];
      v30 = [v39 protectionType] == 0;
    }

    else
    {
      v30 = 1;
    }

    v40 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(a1 + 56);
      *buf = 138543874;
      v48 = v41;
      v49 = 2114;
      v50 = v9;
      v51 = 1024;
      v52 = v30;
      _os_log_impl(&dword_1C5C61000, v40, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: Skipping purchase bundle [data at path has length zero] purchaseBundlePath=%{public}@ isValidAsset=%{BOOL}u", buf, 0x1Cu);
    }

    if (!v30)
    {
      goto LABEL_38;
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  v11 = [MEMORY[0x1E696AE40] propertyListWithData:v10 options:0 format:0 error:0];
  if (!_NSIsNSDictionary() || ([v11 objectForKeyedSubscript:@"isPlaceholder"], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "BOOLValue"), v12, v13))
  {
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 56);
      *buf = 138543618;
      v48 = v15;
      v49 = 2114;
      v50 = v9;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "[AL] - %{public}@: Skipping local asset [invalid purchase bundle] purchaseBundlePath=%{public}@", buf, 0x16u);
    }

    goto LABEL_38;
  }

LABEL_18:
  v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(a1 + 32) isDirectory:0];
  v17 = objc_alloc_init(MPCModelGenericAVItemAssetLoadResult);
  [(MPCModelGenericAVItemAssetLoadResult *)v17 setAssetURL:v16];
  v18 = [v16 pathExtension];
  [(MPCModelGenericAVItemAssetLoadResult *)v17 setAssetPathExtension:v18];

  -[MPCModelGenericAVItemAssetLoadResult setAssetQualityType:](v17, "setAssetQualityType:", [*(a1 + 48) qualityType]);
  [(MPCModelGenericAVItemAssetLoadResult *)v17 setPurchaseBundleDictionary:v11];
  -[MPCModelGenericAVItemAssetLoadResult setIsHLSAsset:](v17, "setIsHLSAsset:", [*(a1 + 40) fileIsHLS]);
  v19 = MEMORY[0x1E695DFF8];
  v20 = [*(a1 + 48) hlsKeyServerURL];
  v21 = [v19 URLWithString:v20];
  [(MPCModelGenericAVItemAssetLoadResult *)v17 setStreamingKeyServerURL:v21];

  v22 = MEMORY[0x1E695DFF8];
  v23 = [*(a1 + 48) hlsKeyCertificateURL];
  v24 = [v22 URLWithString:v23];
  [(MPCModelGenericAVItemAssetLoadResult *)v17 setStreamingKeyCertificateURL:v24];

  v25 = [*(a1 + 48) hlsKeyServerProtocol];
  [(MPCModelGenericAVItemAssetLoadResult *)v17 setKeyServerProtocolType:v25];

  -[MPCModelGenericAVItemAssetLoadResult setAudioAssetType:](v17, "setAudioAssetType:", [*(a1 + 40) fileAssetType]);
  -[MPCModelGenericAVItemAssetLoadResult setDownloadedAsset:](v17, "setDownloadedAsset:", [*(a1 + 40) fileIsDownloaded]);
  [(MPCModelGenericAVItemAssetLoadResult *)v17 setSource:1];
  v26 = [*(a1 + 40) fileIsHLS];
  v27 = *(a1 + 48);
  if (v26)
  {
    v28 = [v27 hlsKeyServerProtocol];
    if ([v28 isEqualToString:*MEMORY[0x1E69703F0]])
    {
      v29 = 2;
    }

    else
    {
      v29 = [*(a1 + 48) protectionType];
    }
  }

  else
  {
    v29 = [v27 protectionType];
  }

  [(MPCModelGenericAVItemAssetLoadResult *)v17 setAssetProtectionType:v29];
  v31 = [*(a1 + 64) genericObject];
  v32 = [v31 identifiers];

  v33 = [v32 universalStore];
  v34 = [v33 assetAdamID];

  if (v34 || ([v32 universalStore], v35 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v35, "subscriptionAdamID"), v35, v34) || (objc_msgSend(v32, "universalStore"), v36 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v36, "adamID"), v36, v34) || (objc_msgSend(v32, "universalStore"), v37 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v37, "reportingAdamID"), v37, v34))
  {
    v38 = [MEMORY[0x1E696AD98] numberWithLongLong:v34];
    [(MPCModelGenericAVItemAssetLoadResult *)v17 setStreamingKeyAdamID:v38];
  }

  (*(*(a1 + 72) + 16))();

LABEL_42:
}

void __54__MPCModelGenericAVItemLocalFileLoadOperation_execute__block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:22 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (MPCModelGenericAVItemLocalFileLoadOperation)initWithEvaluation:(id)a3 properties:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MPCModelGenericAVItemLocalFileLoadOperation;
  v9 = [(MPAsyncOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileAssetEvaluation, a3);
    objc_storeStrong(&v10->_assetLoadProperties, a4);
  }

  return v10;
}

@end