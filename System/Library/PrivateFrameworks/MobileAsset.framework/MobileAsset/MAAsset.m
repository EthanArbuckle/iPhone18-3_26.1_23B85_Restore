@interface MAAsset
+ (id)getLoadResultFromMessage:(id)a3;
+ (id)loadSync:(id)a3 allowingDifferences:(id)a4 withPurpose:(id)a5 error:(id *)a6;
+ (void)cancelCatalogDownload:(id)a3 withPurpose:(id)a4 then:(id)a5;
+ (void)startCatalogDownload:(id)a3 options:(id)a4 completionWithError:(id)a5;
+ (void)startCatalogDownload:(id)a3 options:(id)a4 then:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)overrideGarbageCollectionThreshold:(unint64_t)a3;
- (BOOL)refreshState;
- (BOOL)spaceCheck:(int64_t *)a3;
- (MAAsset)initWithAttributes:(id)a3;
- (id)absoluteAssetId;
- (id)assetServerUrl;
- (id)getBaseAssetRepositoryPath;
- (id)getLocalFilePath;
- (id)getLocalFileUrl;
- (id)hashToString:(id)a3;
- (int64_t)calculateTimeout;
- (int64_t)cancelDownloadSync;
- (int64_t)configDownloadSync:(id)a3;
- (int64_t)purgeSync;
- (void)_invokeClientDownloadCompletionAlreadyOnQueue:(int64_t)a3 asset:(id)a4 completionBlockWithError:(id)a5;
- (void)attachProgressCallBack:(id)a3;
- (void)cancelDownload:(id)a3;
- (void)commonAssetDownload:(id)a3 options:(id)a4 then:(id)a5;
- (void)configDownload:(id)a3 completion:(id)a4;
- (void)invokeClientDownloadCompletion:(int64_t)a3 asset:(id)a4 completionBlockWithError:(id)a5;
- (void)logAsset;
- (void)purge:(id)a3;
- (void)purgeWithError:(id)a3;
- (void)startDownload:(id)a3 completionWithError:(id)a4;
- (void)startDownload:(id)a3 then:(id)a4;
@end

@implementation MAAsset

- (id)getLocalFileUrl
{
  v2 = [(MAAsset *)self getLocalFilePath];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2 isDirectory:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)getLocalFilePath
{
  state = self->_state;
  assetType = self->_assetType;
  if (state == 5)
  {
    v5 = getLocalUrlFromTypeAndIdGivenDefaultRepoWithPurpose(assetType, self->_assetId, 5, 0, 0);
    v6 = [v5 path];
  }

  else
  {
    _MAensureExtension(assetType);
    v6 = _MAsendUpdateClientAccessGetPathWithPurposeSync(self->_assetType, self->_assetId, self->_state, self->_purpose);
  }

  return v6;
}

- (MAAsset)initWithAttributes:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MAAsset;
  v5 = [(MAAsset *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"AssetProperties"];
    attributes = v5->_attributes;
    v5->_attributes = v6;

    v8 = [(NSDictionary *)v5->_attributes objectForKey:@"AssetPurpose"];
    purpose = v5->_purpose;
    v5->_purpose = v8;

    v10 = [v4 objectForKey:@"AssetAddedProperties"];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKey:@"AssetState"];
      v13 = v12;
      if (v12)
      {
        v12 = [v12 integerValue];
      }

      v5->_state = v12;
      v14 = [v11 objectForKey:@"AssetType"];
      assetType = v5->_assetType;
      v5->_assetType = v14;

      v16 = [v11 objectForKey:@"AssetId"];
      assetId = v5->_assetId;
      v5->_assetId = v16;
    }
  }

  return v5;
}

+ (id)getLoadResultFromMessage:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  length = 0;
  data = xpc_dictionary_get_data(v3, [@"xmlData" UTF8String], &length);
  if (!data)
  {
    v10 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v20 = "load rawData is null skipping";
LABEL_21:
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
    }

LABEL_22:
    v13 = 0;
    v6 = 0;
    v8 = 0;
    v7 = 0;
LABEL_23:
    v19 = 0;
    v9 = 0;
    goto LABEL_24;
  }

  v5 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:data length:length freeWhenDone:0];
  if (!v5)
  {
    v10 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v20 = "load data is null skipping";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v6 = v5;
  v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v5 error:0];
  v8 = [v7 decodePropertyListForKey:*MEMORY[0x1E696A508]];
  [v7 finishDecoding];
  if (!v8)
  {
    v10 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, "load allData is null skipping", buf, 2u);
    }

    v13 = 0;
    v8 = 0;
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, "load allData is not a dictionary", buf, 2u);
    }

    v13 = 0;
    goto LABEL_23;
  }

  v9 = [v8 objectForKey:@"assetsToFrameWork"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v25;
      while (2)
      {
        v15 = 0;
        v16 = v13;
        do
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v13 = *(*(&v24 + 1) + 8 * v15);

          v17 = [MAAsset alloc];
          v18 = [(MAAsset *)v17 initWithAttributes:v13, v24];
          if (v18)
          {
            v19 = v18;
            goto LABEL_37;
          }

          ++v15;
          v16 = v13;
        }

        while (v12 != v15);
        v12 = [v10 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
    v19 = 0;
LABEL_37:
    v9 = v10;
  }

  else
  {
    v10 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, "attributes is nil", buf, 2u);
    }

    v13 = 0;
    v19 = 0;
  }

LABEL_24:

  v21 = v19;
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)loadSync:(id)a3 allowingDifferences:(id)a4 withPurpose:(id)a5 error:(id *)a6
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = [v10 assetType];
  xpc_dictionary_set_string(v13, "AssetType", [v14 UTF8String]);

  v51 = v12;
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v30 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v30, OS_LOG_TYPE_DEFAULT, "Asset load failed due to nil or invalid type", buf, 2u);
    }

    v52 = v11;

    if (a6)
    {
      v29 = MAError(@"com.apple.MobileAssetError.Query", 8, @"Asset load failed due to the absoluteId being nil or the wrong type", v31, v32, v33, v34, v35, v49);
      v18 = 0;
      v15 = 0;
      v21 = 0;
      v17 = 0;
      goto LABEL_16;
    }

    v18 = 0;
    v15 = 0;
    v21 = 0;
    v17 = 0;
LABEL_18:
    v36 = 0;
    v37 = 0;
    goto LABEL_33;
  }

  v15 = [v10 encodeAsPlist];
  addObjectToMessage(v15, v13, "loadAssetIdLength", "loadAssetId");
  xpc_dictionary_set_uint64(v13, "messageAction", 0x1BuLL);
  v16 = *MEMORY[0x1E695E480];
  v50 = getprogname();
  v17 = CFStringCreateWithFormat(v16, 0, @"%s");
  xpc_dictionary_set_string(v13, "clientName", [(__CFString *)v17 UTF8String]);
  if (v12)
  {
    xpc_dictionary_set_string(v13, "Purpose", [v12 UTF8String]);
  }

  if (!v11)
  {
    v11 = +[MAAssetDiff defaultAllowedDifferences];
  }

  v52 = v11;
  v18 = [v11 encodeAsPlist];
  addObjectToMessage(v18, v13, "allowedDifferencesLength", "allowedDifferences");
  v53 = 12;
  v19 = _getCommsManager();
  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[MAAsset loadSync:allowingDifferences:withPurpose:error:]"];
  v21 = [v19 sendSync:v13 gettingResponseCode:&v53 codeForXpcError:1 loggingName:v20];

  v22 = v53;
  if (v53 == 1)
  {
    v23 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v23, OS_LOG_TYPE_DEFAULT, "Asset load failed due to XPC", buf, 2u);
    }

    if (a6)
    {
      v29 = MAError(@"com.apple.MobileAssetError.Query", 1, @"Asset load failed due to an XPC error", v24, v25, v26, v27, v28, v50);
LABEL_16:
      v36 = 0;
      v37 = 0;
      *a6 = v29;
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  v38 = [a1 getLoadResultFromMessage:v21];
  v37 = v38;
  if (v38)
  {
    v39 = [v38 absoluteAssetId];
    v36 = [v39 description];
  }

  else
  {
    v36 = @"nothing";
  }

  if (v22 == 14)
  {
    v41 = [v37 absoluteAssetId];
    v40 = [v10 diffFrom:v41];

    v42 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544386;
      v55 = v10;
      v56 = 2048;
      v57 = 14;
      v58 = 2114;
      v59 = v36;
      v60 = 2114;
      v61 = v52;
      v62 = 2114;
      v63 = v40;
      _os_log_impl(&dword_197AD5000, v42, OS_LOG_TYPE_DEFAULT, "Asset load result for %{public}@: %ld (MAQueryHasAllowedDifferences). Found match %{public}@ within allowed differences %{public}@ (actual differences were %{public}@)", buf, 0x34u);
    }

    goto LABEL_29;
  }

  if (!v22)
  {
    v40 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v55 = v10;
      v56 = 2048;
      v57 = 0;
      v58 = 2114;
      v59 = v36;
      _os_log_impl(&dword_197AD5000, v40, OS_LOG_TYPE_DEFAULT, "Asset load result for %{public}@: %ld (MAQuerySuccessful). Found %{public}@.", buf, 0x20u);
    }

LABEL_29:

    goto LABEL_33;
  }

  v43 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = stringForMAQueryResult(v22);
    *buf = 138543874;
    v55 = v10;
    v56 = 2048;
    v57 = v22;
    v58 = 2114;
    v59 = v44;
    v45 = v44;
    _os_log_impl(&dword_197AD5000, v43, OS_LOG_TYPE_DEFAULT, "Asset load result for %{public}@: %ld (%{public}@)", buf, 0x20u);
  }

LABEL_33:
  v46 = v37;

  v47 = *MEMORY[0x1E69E9840];
  return v37;
}

- (id)assetServerUrl
{
  v3 = [(NSDictionary *)self->_attributes objectForKey:@"__RelativePath"];
  if (!v3)
  {
    v4 = 0;
    goto LABEL_5;
  }

  v4 = [(NSDictionary *)self->_attributes objectForKey:@"__BaseURL"];
  if (!v4)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
  v6 = [v5 URLByAppendingPathComponent:v3];

LABEL_6:
  v7 = v6;

  return v6;
}

- (void)attachProgressCallBack:(id)a3
{
  v4 = a3;
  v5 = _getCommsManager();
  [v5 attachProgressHandler:self->_assetType assetId:self->_assetId callBack:v4 withPurpose:self->_purpose];
}

- (void)logAsset
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    assetId = self->_assetId;
    state = self->_state;
    attributes = self->_attributes;
    v7 = purposeDirectoryName(self->_purpose);
    v11 = 138544130;
    v12 = assetId;
    v13 = 2048;
    v14 = state;
    v15 = 2114;
    v16 = attributes;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_197AD5000, v3, OS_LOG_TYPE_DEFAULT, "assetId: %{public}@ State: %ld attributes: %{public}@ purpose: %{public}@", &v11, 0x2Au);
  }

  if ([(MAAsset *)self wasLocal])
  {
    v8 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(MAAsset *)self getLocalUrl];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_DEFAULT, "The asset is installed at: %{public}@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)absoluteAssetId
{
  v3 = [MAAbsoluteAssetId alloc];
  v4 = [(MAAsset *)self assetId];
  v5 = [(MAAsset *)self assetType];
  v6 = [(MAAsset *)self attributes];
  v7 = [(MAAbsoluteAssetId *)v3 initWithAssetId:v4 forAssetType:v5 attributes:v6];

  return v7;
}

- (id)hashToString:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  v5 = [MEMORY[0x1E696AD60] string];
  if ([v3 length])
  {
    v6 = 0;
    do
    {
      [v5 appendFormat:@"%02x", *(v4 + v6++)];
    }

    while ([v3 length] > v6);
  }

  return v5;
}

- (void)startDownload:(id)a3 then:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__MAAsset_startDownload_then___block_invoke;
  v8[3] = &unk_1E74CA4A0;
  v9 = v6;
  v7 = v6;
  [(MAAsset *)self startDownload:a3 completionWithError:v8];
}

uint64_t __30__MAAsset_startDownload_then___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)startDownload:(id)a3 completionWithError:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  [(MAAsset *)self commonAssetDownload:0 options:v8 then:v6];
  objc_autoreleasePoolPop(v7);
}

- (int64_t)calculateTimeout
{
  v2 = [(NSDictionary *)self->_attributes objectForKey:@"_DownloadSize"];
  v3 = [v2 longLongValue];

  return calculateTimeout(v3);
}

- (void)_invokeClientDownloadCompletionAlreadyOnQueue:(int64_t)a3 asset:(id)a4 completionBlockWithError:(id)a5
{
  v18 = a4;
  v7 = a5;
  v8 = _getClientCallbackQueue();
  dispatch_assert_queue_V2(v8);

  if (isDownloadResultFailure(a3))
  {
    v9 = errorStringForMADownloadResult(a3);
    v10 = [v18 assetType];
    v17 = [v18 assetId];
    v16 = MAErrorForDownloadResultWithUnderlying(a3, 0, @"%@ (Asset download for %@ %@)", v11, v12, v13, v14, v15, v9);
  }

  else
  {
    v16 = 0;
  }

  v7[2](v7, a3, v16);
}

- (void)invokeClientDownloadCompletion:(int64_t)a3 asset:(id)a4 completionBlockWithError:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = _getClientCallbackQueue();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__MAAsset_invokeClientDownloadCompletion_asset_completionBlockWithError___block_invoke;
  v13[3] = &unk_1E74CA4C8;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)commonAssetDownload:(id)a3 options:(id)a4 then:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_assetId && self->_assetType)
  {
    if (!self->_purpose || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = [(MAAsset *)self assetProperty:@"__BaseURL"];
      v12 = [(MAAsset *)self assetProperty:@"__RelativePath"];
      v13 = [(NSDictionary *)self->_attributes objectForKey:@"_DownloadSize"];
      v14 = [v13 longLongValue];

      state = self->_state;
      if (state == 6)
      {
        v16 = self;
        v17 = 29;
      }

      else
      {
        if (state != 5)
        {
          v40 = v14;
          if (v9)
          {
            v20 = v9;
          }

          else
          {
            v20 = objc_opt_new();
          }

          v21 = v20;
          v22 = suAssetTypes();
          v23 = [v22 containsObject:self->_assetType];

          if (v23)
          {
            [v9 setAllowDaemonConnectionRetries:1];
          }

          if ([v9 discretionary] && !-[MAAsset nonUserInitiatedDownloadsAllowed](self, "nonUserInitiatedDownloadsAllowed"))
          {
            v33 = v11;
            v11 = v21;
            v34 = _MAClientLog(@"V2");
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              assetType = self->_assetType;
              assetId = self->_assetId;
              *buf = 138543618;
              v44 = assetType;
              v45 = 2114;
              v46 = assetId;
              _os_log_impl(&dword_197AD5000, v34, OS_LOG_TYPE_DEFAULT, "Cannot download %{public}@ %{public}@ unless the download is user-initiated (non-discretionary) as the user has turned off background system file updates (check first if nonUserInitiatedDownloadsAllowed).", buf, 0x16u);
            }

            [(MAAsset *)self invokeClientDownloadCompletion:34 asset:self completionBlockWithError:v10];
          }

          else
          {
            if ([v21 timeoutIntervalForResource] == -1)
            {
              [v21 setTimeoutIntervalForResource:{-[MAAsset calculateTimeout](self, "calculateTimeout")}];
            }

            v38 = v12;
            v39 = v11;
            v24 = [(NSDictionary *)self->_attributes objectForKey:@"__CanUseLocalCacheServer"];
            v25 = objc_opt_respondsToSelector();
            if (v9 && (v25 & 1) != 0)
            {
              [v21 setCanUseLocalCacheServer:{objc_msgSend(v24, "BOOLValue")}];
              v26 = _MAClientLog(@"V2");
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v28 = self->_assetType;
                v27 = self->_assetId;
                *buf = 138543874;
                v44 = v28;
                v45 = 2114;
                v46 = v27;
                v47 = 1024;
                v48 = [v21 canUseLocalCacheServer];
                _os_log_impl(&dword_197AD5000, v26, OS_LOG_TYPE_DEFAULT, "Using caching server for %{public}@ %{public}@ is enabled: %d", buf, 0x1Cu);
              }
            }

            v30 = self->_assetType;
            v29 = self->_assetId;
            v31 = v24;
            v11 = v21;
            purpose = self->_purpose;
            v41[0] = MEMORY[0x1E69E9820];
            v41[1] = 3221225472;
            v41[2] = __44__MAAsset_commonAssetDownload_options_then___block_invoke;
            v41[3] = &unk_1E74CA4F0;
            v41[4] = self;
            v42 = v10;
            _MAsendDownloadAsset(v11, v30, v29, v40, v39, v38, 0, v8, purpose, v41);
          }

          goto LABEL_31;
        }

        v16 = self;
        v17 = 15;
      }

      [(MAAsset *)v16 invokeClientDownloadCompletion:v17 asset:self completionBlockWithError:v10];

LABEL_31:
      goto LABEL_32;
    }

    v18 = self;
    v19 = 74;
  }

  else
  {
    v18 = self;
    v19 = 23;
  }

  [(MAAsset *)v18 invokeClientDownloadCompletion:v19 asset:self completionBlockWithError:v10];
LABEL_32:

  v37 = *MEMORY[0x1E69E9840];
}

void __44__MAAsset_commonAssetDownload_options_then___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 32) + 16);
      int64 = 1;
      v8 = stringForMADownloadResult(1uLL);
      v13 = 138543874;
      v14 = v10;
      v15 = 2048;
      v16 = 1;
      v17 = 2114;
      v18 = v8;
      v9 = "Error on the download asset reply for %{public}@, response: %ld (%{public}@) due to no xpc message";
      goto LABEL_9;
    }

LABEL_10:
    int64 = 1;
    goto LABEL_11;
  }

  if (MEMORY[0x19A8EC930](v3) == MEMORY[0x1E69E9E98])
  {
    v6 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1 + 32) + 16);
      int64 = 1;
      v8 = stringForMADownloadResult(1uLL);
      v13 = 138543874;
      v14 = v11;
      v15 = 2048;
      v16 = 1;
      v17 = 2114;
      v18 = v8;
      v9 = "Error on the download asset reply for %{public}@, response: %ld (%{public}@)";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  int64 = xpc_dictionary_get_int64(v4, "Result");
  v6 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 32) + 16);
    v8 = stringForMADownloadResult(int64);
    v13 = 138543874;
    v14 = v7;
    v15 = 2048;
    v16 = int64;
    v17 = 2114;
    v18 = v8;
    v9 = "Got the download asset reply for %{public}@, response: %ld (%{public}@)";
LABEL_9:
    _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_DEFAULT, v9, &v13, 0x20u);
  }

LABEL_11:

  [*(a1 + 32) _invokeClientDownloadCompletionAlreadyOnQueue:int64 asset:*(a1 + 32) completionBlockWithError:*(a1 + 40)];
  v12 = *MEMORY[0x1E69E9840];
}

+ (void)startCatalogDownload:(id)a3 options:(id)a4 then:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__MAAsset_startCatalogDownload_options_then___block_invoke;
  v9[3] = &unk_1E74CA4A0;
  v10 = v7;
  v8 = v7;
  [MAAsset startCatalogDownload:a3 options:a4 completionWithError:v9];
}

uint64_t __45__MAAsset_startCatalogDownload_options_then___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)startCatalogDownload:(id)a3 options:(id)a4 completionWithError:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 1;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;
  if ([v11 timeoutIntervalForResource] == -1)
  {
    [v12 setTimeoutIntervalForResource:900];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60__MAAsset_startCatalogDownload_options_completionWithError___block_invoke;
  v16[3] = &unk_1E74CA568;
  v20 = v21;
  v13 = v7;
  v17 = v13;
  v14 = v12;
  v18 = v14;
  v15 = v9;
  v19 = v15;
  _MAsendDownloadMetaData(v13, v14, v16);

  _Block_object_dispose(v21, 8);
  objc_autoreleasePoolPop(v10);
}

void __60__MAAsset_startCatalogDownload_options_completionWithError___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  *(*(*(a1 + 56) + 8) + 24) = 1;
  if (v3)
  {
    if (MEMORY[0x19A8EC930](v3) == MEMORY[0x1E69E9E98])
    {
      v5 = _MAClientLog(@"V2");
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      v12 = *(a1 + 32);
      v13 = *(*(*(a1 + 56) + 8) + 24);
      v8 = stringForMADownloadResult(v13);
      *buf = 138543874;
      v37 = v12;
      v38 = 2048;
      v39 = v13;
      v40 = 2114;
      v41 = v8;
      v9 = "Error on the download meta data reply for %{public}@, response: %ld (%{public}@)";
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = xpc_dictionary_get_int64(v4, "Result");
      v5 = _MAClientLog(@"V2");
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      v6 = *(a1 + 32);
      v7 = *(*(*(a1 + 56) + 8) + 24);
      v8 = stringForMADownloadResult(v7);
      *buf = 138543874;
      v37 = v6;
      v38 = 2048;
      v39 = v7;
      v40 = 2114;
      v41 = v8;
      v9 = "Got the download meta data reply for %{public}@, response: %ld (%{public}@)";
    }
  }

  else
  {
    v5 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v10 = *(a1 + 32);
    v11 = *(*(*(a1 + 56) + 8) + 24);
    v8 = stringForMADownloadResult(v11);
    *buf = 138543874;
    v37 = v10;
    v38 = 2048;
    v39 = v11;
    v40 = 2114;
    v41 = v8;
    v9 = "Error on the download meta data reply for %{public}@, response: %ld (%{public}@) due to not having an xpc message";
  }

  _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_DEFAULT, v9, buf, 0x20u);

LABEL_10:
  v14 = *(*(*(a1 + 56) + 8) + 24);
  if (v14 == 13)
  {
    v15 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      *buf = 138543618;
      v37 = v16;
      v38 = 2048;
      v39 = 2;
      _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_DEFAULT, "Will retry download meta data for %{public}@, after %ld seconds", buf, 0x16u);
    }

    v17 = dispatch_time(0, 2000000000);
    if (getRetryXpcDelayQueue_onceToken_0 != -1)
    {
      __60__MAAsset_startCatalogDownload_options_completionWithError___block_invoke_cold_1();
    }

    v18 = getRetryXpcDelayQueue_retryQueue_0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__MAAsset_startCatalogDownload_options_completionWithError___block_invoke_1153;
    block[3] = &unk_1E74CA540;
    v33 = *(a1 + 32);
    v34 = *(a1 + 40);
    v31 = *(a1 + 48);
    v19 = v31;
    v35 = v31;
    dispatch_after(v17, v18, block);

    v20 = v33;
    goto LABEL_21;
  }

  if (*(a1 + 48))
  {
    if (isDownloadResultFailure(v14))
    {
      v21 = *(*(*(a1 + 56) + 8) + 24);
      v22 = errorStringForMADownloadResult(v21);
      v30 = *(a1 + 32);
      v20 = MAErrorForDownloadResultWithUnderlying(v21, 0, @"%@ (Catalog download for %@)", v23, v24, v25, v26, v27, v22);
    }

    else
    {
      v20 = 0;
    }

    v28 = *(*(*(a1 + 56) + 8) + 24);
    (*(*(a1 + 48) + 16))();
LABEL_21:
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __60__MAAsset_startCatalogDownload_options_completionWithError___block_invoke_1153(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__MAAsset_startCatalogDownload_options_completionWithError___block_invoke_2;
  v4[3] = &unk_1E74CA518;
  v7 = *(a1 + 56);
  v5 = v2;
  v6 = *(a1 + 48);
  _MAsendDownloadMetaData(v5, v3, v4);
}

void __60__MAAsset_startCatalogDownload_options_completionWithError___block_invoke_2(void *a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  *(*(a1[6] + 8) + 24) = 1;
  if (!v3)
  {
    *(*(a1[6] + 8) + 24) = 24;
    v14 = *(*(a1[6] + 8) + 24);
    v15 = errorStringForMADownloadResult(v14);
    v40 = a1[4];
    v12 = MAErrorForDownloadResultWithUnderlying(v14, 0, @"%@ (Catalog download for %@)", v16, v17, v18, v19, v20, v15);

    v13 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v21 = a1[4];
    v22 = *(*(a1[6] + 8) + 24);
    v23 = stringForMADownloadResult(v22);
    *buf = 138543874;
    v43 = v21;
    v44 = 2048;
    v45 = v22;
    v46 = 2114;
    v47 = v23;
    v24 = "Error on the retry download meta data reply for %{public}@, response: %ld (%{public}@) due to not having an xpc message";
    goto LABEL_10;
  }

  if (MEMORY[0x19A8EC930](v3) == MEMORY[0x1E69E9E98])
  {
    *(*(a1[6] + 8) + 24) = 1;
    v25 = *(*(a1[6] + 8) + 24);
    v26 = errorStringForMADownloadResult(v25);
    v41 = a1[4];
    v12 = MAErrorForDownloadResultWithUnderlying(v25, 0, @"%@ (Catalog download for %@)", v27, v28, v29, v30, v31, v26);

    v13 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  *(*(a1[6] + 8) + 24) = xpc_dictionary_get_int64(v4, "Result");
  if (isDownloadResultFailure(*(*(a1[6] + 8) + 24)))
  {
    v5 = *(*(a1[6] + 8) + 24);
    v6 = errorStringForMADownloadResult(v5);
    v39 = a1[4];
    v12 = MAErrorForDownloadResultWithUnderlying(v5, 0, @"%@ (Catalog download for %@)", v7, v8, v9, v10, v11, v6);

    v13 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

LABEL_9:
    v32 = a1[4];
    v33 = *(*(a1[6] + 8) + 24);
    v23 = stringForMADownloadResult(v33);
    *buf = 138543874;
    v43 = v32;
    v44 = 2048;
    v45 = v33;
    v46 = 2114;
    v47 = v23;
    v24 = "Error on the retry download meta data reply for %{public}@, response: %ld (%{public}@)";
LABEL_10:
    _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_DEFAULT, v24, buf, 0x20u);

    goto LABEL_14;
  }

  v13 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v34 = a1[4];
    v35 = *(*(a1[6] + 8) + 24);
    v36 = stringForMADownloadResult(v35);
    *buf = 138543874;
    v43 = v34;
    v44 = 2048;
    v45 = v35;
    v46 = 2114;
    v47 = v36;
    _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_DEFAULT, "Got the retry download meta data reply for %{public}@, response: %ld (%{public}@)", buf, 0x20u);
  }

  v12 = 0;
LABEL_14:

  v37 = a1[5];
  if (v37)
  {
    (*(v37 + 16))(v37, *(*(a1[6] + 8) + 24), v12);
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)purge:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __17__MAAsset_purge___block_invoke;
  v6[3] = &unk_1E74CA4A0;
  v7 = v4;
  v5 = v4;
  [(MAAsset *)self purgeWithError:v6];
}

uint64_t __17__MAAsset_purge___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)purgeWithError:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  state = self->_state;
  if (state != 5)
  {
    assetType = self->_assetType;
    assetId = self->_assetId;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __26__MAAsset_purgeWithError___block_invoke_2;
    v11[3] = &unk_1E74CA4F0;
    v11[4] = self;
    v12 = v4;
    _MAsendPurgeAsset(assetType, assetId, state, v11);
    v8 = v12;
    goto LABEL_5;
  }

  if (v4)
  {
    v7 = _getClientCallbackQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__MAAsset_purgeWithError___block_invoke;
    block[3] = &unk_1E74CA590;
    v14 = v4;
    dispatch_async(v7, block);

    v8 = v14;
LABEL_5:
  }

  objc_autoreleasePoolPop(v5);
}

void __26__MAAsset_purgeWithError___block_invoke(uint64_t a1)
{
  v2 = errorStringForMAPurgeResult(7);
  v8 = MAError(@"com.apple.MobileAssetError.Purge", 7, @"%@", v3, v4, v5, v6, v7, v2);

  (*(*(a1 + 32) + 16))();
}

void __26__MAAsset_purgeWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MEMORY[0x19A8EC930]() == MEMORY[0x1E69E9E98])
  {
    v9 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 32) + 16);
      v11 = stringForMAPurgeResult(5uLL);
      *buf = 138543874;
      v21 = v10;
      v22 = 2048;
      v23 = 5;
      v24 = 2114;
      v25 = v11;
      _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_DEFAULT, "Error on the purge asset reply for %{public}@, response: %ld (%{public}@) due to XPC_TYPE_ERROR", buf, 0x20u);
    }

    int64 = 5;
  }

  else
  {
    int64 = xpc_dictionary_get_int64(v3, "Result");
    v5 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 16);
      v7 = stringForMAPurgeResult(int64);
      *buf = 138543874;
      v21 = v6;
      v22 = 2048;
      v23 = int64;
      v24 = 2114;
      v25 = v7;
      _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_DEFAULT, "Got the purge asset reply for %{public}@, response: %ld (%{public}@)", buf, 0x20u);
    }

    if (!int64)
    {
      v8 = 0;
      goto LABEL_10;
    }
  }

  v12 = errorStringForMAPurgeResult(int64);
  v8 = MAError(@"com.apple.MobileAssetError.Purge", int64, @"%@", v13, v14, v15, v16, v17, v12);

LABEL_10:
  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))(v18, int64, v8);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (int64_t)purgeSync
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_state == 5)
  {
    v2 = 7;
  }

  else
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v4, "AssetType", [(NSString *)self->_assetType UTF8String]);
    xpc_dictionary_set_string(v4, "AssetId", [(NSString *)self->_assetId UTF8String]);
    purpose = self->_purpose;
    if (purpose)
    {
      xpc_dictionary_set_string(v4, "Purpose", [(NSString *)purpose UTF8String]);
    }

    xpc_dictionary_set_uint64(v4, "messageAction", 5uLL);
    xpc_dictionary_set_uint64(v4, "assetState", self->_state);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", getprogname()];
    xpc_dictionary_set_string(v4, "clientName", [v6 UTF8String]);
    v15 = 5;
    v7 = _getCommsManager();
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MAAsset purgeSync]"];
    v9 = [v7 sendSync:v4 gettingResponseCode:&v15 codeForXpcError:5 loggingName:v8];

    v2 = v15;
    v10 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = stringForMAPurgeResult(v2);
      *buf = 134218242;
      v17 = v2;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, "Result from purge sync: %ld (%{public}@)", buf, 0x16u);
    }

    if (v2)
    {
      v12 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_DEFAULT, "Purge sync check failure server side", buf, 2u);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (void)cancelCatalogDownload:(id)a3 withPurpose:(id)a4 then:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__MAAsset_cancelCatalogDownload_withPurpose_then___block_invoke;
  v13[3] = &unk_1E74CA4F0;
  v11 = v7;
  v14 = v11;
  v12 = v9;
  v15 = v12;
  _MAsendCancelDownloadMetaData(v11, v8, v13);

  objc_autoreleasePoolPop(v10);
}

void __50__MAAsset_cancelCatalogDownload_withPurpose_then___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MEMORY[0x19A8EC930]() == MEMORY[0x1E69E9E98])
  {
    v5 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_DEFAULT, "Error on the cancel catalog asset reply", &v8, 2u);
    }
  }

  else
  {
    int64 = xpc_dictionary_get_int64(v3, "Result");
    v5 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138543618;
      v9 = v6;
      v10 = 2048;
      v11 = int64;
      _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_DEFAULT, "Got the cancel catalog reply for %{public}@, response: %ld", &v8, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
}

- (void)cancelDownload:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    state = self->_state;
    *buf = 134217984;
    v19 = state;
    _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_DEFAULT, "the current state is: %ld", buf, 0xCu);
  }

  if ((self->_state - 5) > 1)
  {
    assetType = self->_assetType;
    assetId = self->_assetId;
    purpose = self->_purpose;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __26__MAAsset_cancelDownload___block_invoke_2;
    v14[3] = &unk_1E74CA4F0;
    v14[4] = self;
    v15 = v4;
    _MAsendCancelDownload(assetType, assetId, purpose, v14);
    v9 = v15;
  }

  else
  {
    v8 = _getClientCallbackQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__MAAsset_cancelDownload___block_invoke;
    block[3] = &unk_1E74C9888;
    block[4] = self;
    v17 = v4;
    dispatch_async(v8, block);

    v9 = v17;
  }

  objc_autoreleasePoolPop(v5);
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __26__MAAsset_cancelDownload___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 32) == 5)
  {
    v1 = 6;
  }

  else
  {
    v1 = 7;
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v1);
}

void __26__MAAsset_cancelDownload___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MEMORY[0x19A8EC930]() == MEMORY[0x1E69E9E98])
  {
    v5 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      int64 = 4;
      goto LABEL_8;
    }

    v9 = *(*(a1 + 32) + 16);
    int64 = 4;
    v7 = stringForMACancelDownloadResult(4uLL);
    v13 = 138543874;
    v14 = v9;
    v15 = 2048;
    v16 = 4;
    v17 = 2114;
    v18 = v7;
    v8 = "Error on the cancel download asset reply for %{public}@, response: %ld (%{public}@)";
    goto LABEL_6;
  }

  int64 = xpc_dictionary_get_int64(v3, "Result");
  v5 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 16);
    v7 = stringForMACancelDownloadResult(int64);
    v13 = 138543874;
    v14 = v6;
    v15 = 2048;
    v16 = int64;
    v17 = 2114;
    v18 = v7;
    v8 = "Got the cancel download asset reply for %{public}@, response: %ld (%{public}@)";
LABEL_6:
    _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_DEFAULT, v8, &v13, 0x20u);
  }

LABEL_8:

  (*(*(a1 + 40) + 16))(*(a1 + 40), int64, v10, v11);
  v12 = *MEMORY[0x1E69E9840];
}

- (int64_t)cancelDownloadSync
{
  state = self->_state;
  if ((state - 5) > 1)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "AssetType", [(NSString *)self->_assetType UTF8String]);
    xpc_dictionary_set_string(v5, "AssetId", [(NSString *)self->_assetId UTF8String]);
    xpc_dictionary_set_uint64(v5, "messageAction", 6uLL);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", getprogname()];
    xpc_dictionary_set_string(v5, "clientName", [v6 UTF8String]);
    v13 = 4;
    v7 = _getCommsManager();
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MAAsset cancelDownloadSync]"];
    v9 = [v7 sendSync:v5 gettingResponseCode:&v13 codeForXpcError:4 loggingName:v8];

    v3 = v13;
    if (v13)
    {
      v10 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, "Cancel sync check failure server side", buf, 2u);
      }
    }
  }

  else if (state == 5)
  {
    return 6;
  }

  else
  {
    return 7;
  }

  return v3;
}

- (void)configDownload:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  assetType = self->_assetType;
  assetId = self->_assetId;
  purpose = self->_purpose;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __37__MAAsset_configDownload_completion___block_invoke;
  v13[3] = &unk_1E74CA4F0;
  v13[4] = self;
  v12 = v7;
  v14 = v12;
  _MAsendConfigDownload(assetType, assetId, purpose, v6, v13);

  objc_autoreleasePoolPop(v8);
}

void __37__MAAsset_configDownload_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MEMORY[0x19A8EC930]() == MEMORY[0x1E69E9E98])
  {
    v5 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      int64 = 2;
      _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_DEFAULT, "Error on the cancel download asset reply", &v10, 2u);
    }

    else
    {
      int64 = 2;
    }
  }

  else
  {
    int64 = xpc_dictionary_get_int64(v3, "Result");
    v5 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 16);
      v7 = stringForMAOperationResult(int64);
      v10 = 138543874;
      v11 = v6;
      v12 = 2048;
      v13 = int64;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_DEFAULT, "Got the config download reply for %{public}@, response: %ld (%{public}@)", &v10, 0x20u);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, int64);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (int64_t)configDownloadSync:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "AssetType", [(NSString *)self->_assetType UTF8String]);
  xpc_dictionary_set_string(v5, "AssetId", [(NSString *)self->_assetId UTF8String]);
  if (!isWellFormedPurpose(self->_purpose))
  {
    v13 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = 2;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_DEFAULT, "Config download failure due to invalid purpose", buf, 2u);
      v8 = 0;
      v7 = 0;
    }

    else
    {
      v8 = 0;
      v7 = 0;
      v12 = 2;
    }

LABEL_10:

    goto LABEL_11;
  }

  v6 = [(NSString *)self->_purpose UTF8String];
  if (v6)
  {
    xpc_dictionary_set_string(v5, "Purpose", v6);
  }

  xpc_dictionary_set_uint64(v5, "messageAction", 0x13uLL);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", getprogname()];
  xpc_dictionary_set_string(v5, "clientName", [v7 UTF8String]);
  v8 = [v4 encodeAsPlist];
  addObjectToMessage(v8, v5, "downloadConfigLength", "downloadConfig");
  v17 = 4;
  v9 = _getCommsManager();
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MAAsset configDownloadSync:]"];
  v11 = [v9 sendSync:v5 gettingResponseCode:&v17 codeForXpcError:1 loggingName:v10];

  v12 = v17;
  if (v17)
  {
    v13 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = stringForMAOperationResult(v12);
      *buf = 134218242;
      v19 = v12;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_DEFAULT, "Config download sync check failure server side: %lld (%{public}@)", buf, 0x16u);
    }

    goto LABEL_10;
  }

LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)overrideGarbageCollectionThreshold:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "AssetType", [(NSString *)self->_assetType UTF8String]);
  xpc_dictionary_set_string(v5, "AssetId", [(NSString *)self->_assetId UTF8String]);
  xpc_dictionary_set_uint64(v5, "GCOverrideDays", a3);
  xpc_dictionary_set_uint64(v5, "messageAction", 0x19uLL);
  v15 = 4;
  v6 = _getCommsManager();
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MAAsset overrideGarbageCollectionThreshold:]"];
  v8 = [v6 sendSync:v5 gettingResponseCode:&v15 codeForXpcError:1 loggingName:v7];

  v9 = v15;
  v10 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = stringForMAOperationResult(v9);
    *buf = 134218242;
    v17 = v9;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, "Result from overrideGarbageCollectionThreshold: %ld (%{public}@)", buf, 0x16u);
  }

  if (v9)
  {
    v12 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_DEFAULT, "overrideGarbageCollectionThreshold failure server side", buf, 2u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9 == 0;
}

- (id)getBaseAssetRepositoryPath
{
  if (self->_assetType)
  {
    v3 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
    v4 = normalizedAssetType(self->_assetType);
    v5 = [v3 stringByAppendingPathComponent:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)spaceCheck:(int64_t *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = xpc_dictionary_create(0, 0, 0);
  v20 = 0;
  if (determineUnarchiveSizeFromAttributes(self->_attributes, &v20))
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v20];
    xpc_dictionary_set_string(v5, [@"_UnarchivedSize" UTF8String], objc_msgSend(v6, "UTF8String"));
    xpc_dictionary_set_uint64(v5, "messageAction", 0x11uLL);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", getprogname()];
    xpc_dictionary_set_string(v5, "clientName", [v7 UTF8String]);
    v19 = 4;
    v8 = _getCommsManager();
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MAAsset spaceCheck:]"];
    v10 = [v8 sendSync:v5 gettingResponseCode:&v19 codeForXpcError:1 loggingName:v9];

    v11 = v19;
    v12 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = stringForMAOperationResult(v11);
      *buf = 134218242;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_DEFAULT, "Result from space check: %ld (%{public}@)", buf, 0x16u);
    }

    if (v11)
    {
      v14 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_197AD5000, v14, OS_LOG_TYPE_DEFAULT, "Space check failure server side", buf, 2u);
      }

      v15 = 0;
      if (!a3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = 1;
      if (!a3)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    *a3 = v20;
    goto LABEL_13;
  }

  v20 = 1000000;
  v16 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = v20;
    _os_log_impl(&dword_197AD5000, v16, OS_LOG_TYPE_DEFAULT, "Unable to get unarchived size for asset. Using default of %lld for non-local asset.", buf, 0xCu);
  }

  v15 = [(MAAsset *)self wasLocal];
  v7 = 0;
  v6 = 0;
  if (a3)
  {
    goto LABEL_12;
  }

LABEL_13:

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)refreshState
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "AssetType", [(NSString *)self->_assetType UTF8String]);
  xpc_dictionary_set_string(v3, "AssetId", [(NSString *)self->_assetId UTF8String]);
  xpc_dictionary_set_uint64(v3, "messageAction", 8uLL);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", getprogname()];
  xpc_dictionary_set_string(v3, "clientName", [v4 UTF8String]);
  purpose = self->_purpose;
  if (purpose)
  {
    xpc_dictionary_set_string(v3, "Purpose", [(NSString *)purpose UTF8String]);
    if (self->_purpose)
    {
      v6 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = self->_purpose;
        *buf = 138412290;
        v28 = v7;
        _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_DEBUG, "Refreshing with purpose: %@", buf, 0xCu);
      }
    }
  }

  v26 = 4;
  v8 = _getCommsManager();
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MAAsset refreshState]"];
  v10 = [v8 sendSync:v3 gettingResponseCode:&v26 codeForXpcError:1 loggingName:v9];

  v11 = v26;
  if (v26)
  {
    v12 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = stringForMAOperationResult(v11);
      *buf = 134218242;
      v28 = v11;
      v29 = 2114;
      v30 = v13;
      _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_DEFAULT, "State refresh failure server side: %ld (%{public}@)", buf, 0x16u);
    }

LABEL_9:
    v14 = 0;
    goto LABEL_16;
  }

  int64 = xpc_dictionary_get_int64(v10, "StateResult");
  v12 = _MAClientLog(@"V2");
  v16 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!int64)
  {
    if (v16)
    {
      assetType = self->_assetType;
      assetId = self->_assetId;
      state = self->_state;
      v25 = stringForMAAssetState(state);
      *buf = 138544130;
      v28 = assetType;
      v29 = 2114;
      v30 = assetId;
      v31 = 2048;
      v32 = state;
      v33 = 2114;
      v34 = v25;
      _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_DEFAULT, "Could not determine state for %{public}@ asset %{public}@; leaving state the same %ld (%{public}@).", buf, 0x2Au);
    }

    goto LABEL_9;
  }

  if (v16)
  {
    v17 = self->_state;
    v18 = stringForMAAssetState(v17);
    v19 = stringForMAAssetState(int64);
    *buf = 134218754;
    v28 = v17;
    v29 = 2114;
    v30 = v18;
    v31 = 2048;
    v32 = int64;
    v33 = 2114;
    v34 = v19;
    _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_DEFAULT, "Old state: %ld (%{public}@) --> new state: %lld (%{public}@)", buf, 0x2Au);
  }

  self->_state = int64;
  v12 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v28 = 0;
    v29 = 2112;
    v30 = @"YES";
    _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_DEFAULT, "Refresh state completed with result:%ld success:%@", buf, 0x16u);
  }

  v14 = 1;
LABEL_16:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MAAsset *)self assetId];
    v6 = [v4 assetId];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end