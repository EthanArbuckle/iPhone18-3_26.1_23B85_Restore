@interface FCAVAssetResourceLoader
- (BOOL)_isHLSURL:(id)l;
- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource;
- (FCAVAssetResourceLoader)init;
- (FCAVAssetResourceLoader)initWithCacheDirectory:(id)directory networkReachability:(id)reachability;
- (void)prefetchMasterPlaylistForAssetURL:(id)l completionHandler:(id)handler;
- (void)registerAVURLAssetForAutomaticResourceManagement:(id)management;
@end

@implementation FCAVAssetResourceLoader

- (FCAVAssetResourceLoader)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCAVAssetResourceLoader init]";
    v10 = 2080;
    v11 = "FCAVAssetResourceLoader.m";
    v12 = 1024;
    v13 = 34;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCAVAssetResourceLoader init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCAVAssetResourceLoader)initWithCacheDirectory:(id)directory networkReachability:(id)reachability
{
  directoryCopy = directory;
  reachabilityCopy = reachability;
  v14.receiver = self;
  v14.super_class = FCAVAssetResourceLoader;
  v8 = [(FCAVAssetResourceLoader *)&v14 init];
  if (v8)
  {
    v9 = [[FCAssetManager alloc] initWithName:@"playlists" directory:directoryCopy keyManager:0 avAssetFactory:0 resourceURLGenerator:0 networkBehaviorMonitor:0 networkReachability:reachabilityCopy];
    assetManager = v8->_assetManager;
    v8->_assetManager = v9;

    v11 = objc_alloc_init(FCThreadSafeMutableSet);
    whitelistedMasterPlaylistURLs = v8->_whitelistedMasterPlaylistURLs;
    v8->_whitelistedMasterPlaylistURLs = v11;
  }

  return v8;
}

- (void)registerAVURLAssetForAutomaticResourceManagement:(id)management
{
  managementCopy = management;
  v4 = [managementCopy URL];
  v5 = [(FCAVAssetResourceLoader *)self _isHLSURL:v4];

  if (v5)
  {
    whitelistedMasterPlaylistURLs = [(FCAVAssetResourceLoader *)self whitelistedMasterPlaylistURLs];
    v7 = [managementCopy URL];
    [whitelistedMasterPlaylistURLs addObject:v7];

    resourceLoader = [managementCopy resourceLoader];
    v9 = FCAVWorkQueue();
    [resourceLoader setDelegate:self queue:v9];
  }
}

- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource
{
  v37 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  request = [resourceCopy request];
  v7 = [request URL];
  pathExtension = [v7 pathExtension];

  whitelistedMasterPlaylistURLs = [(FCAVAssetResourceLoader *)self whitelistedMasterPlaylistURLs];
  v10 = [request URL];
  v11 = [whitelistedMasterPlaylistURLs containsObject:v10];

  if (v11)
  {
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __82__FCAVAssetResourceLoader_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke;
    v32 = &unk_1E7C450F8;
    v33 = resourceCopy;
    v34 = pathExtension;
    v12 = _Block_copy(&v29);
    v13 = [(FCAVAssetResourceLoader *)self assetManager:v29];
    v14 = [request URL];
    v15 = [v13 assetHandleForURL:v14 lifetimeHint:0];

    dataProvider = [v15 dataProvider];

    v17 = FCAVAssetLog;
    v18 = os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT);
    if (dataProvider)
    {
      if (v18)
      {
        v19 = v17;
        v20 = [request URL];
        lastPathComponent = [v20 lastPathComponent];
        *buf = 138543362;
        v36 = lastPathComponent;
        _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "returning master playlist %{public}@ from cache", buf, 0xCu);
      }

      dataProvider2 = [v15 dataProvider];
      v12[2](v12, dataProvider2, 0);
    }

    else
    {
      if (v18)
      {
        v23 = v17;
        v24 = [request URL];
        lastPathComponent2 = [v24 lastPathComponent];
        *buf = 138543362;
        v36 = lastPathComponent2;
        _os_log_impl(&dword_1B63EF000, v23, OS_LOG_TYPE_DEFAULT, "fetching master playlist %{public}@ from network", buf, 0xCu);
      }

      v26 = [v15 fetchDataProviderWithCompletion:v12];
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v11;
}

void __82__FCAVAssetResourceLoader_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = *(a1 + 32);
    v16 = v6;
    [v15 finishLoadingWithError:{v16, v14, 3221225472, __82__FCAVAssetResourceLoader_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_2, &unk_1E7C36C58}];
  }

  else
  {
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], *(a1 + 40), 0);
    v8 = [*(a1 + 32) contentInformationRequest];
    [v8 setContentType:PreferredIdentifierForTag];

    v9 = [v5 data];
    v10 = [v9 length];
    v11 = [*(a1 + 32) contentInformationRequest];
    [v11 setContentLength:v10];

    v12 = [*(a1 + 32) dataRequest];
    v13 = [v5 data];
    [v12 respondWithData:v13];

    [*(a1 + 32) finishLoading];
  }
}

- (void)prefetchMasterPlaylistForAssetURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if ([(FCAVAssetResourceLoader *)self _isHLSURL:lCopy])
  {
    v8 = FCAVWorkQueue();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__FCAVAssetResourceLoader_prefetchMasterPlaylistForAssetURL_completionHandler___block_invoke_2;
    v13[3] = &unk_1E7C38FF0;
    v13[4] = self;
    v14 = lCopy;
    v15 = handlerCopy;
    v9 = handlerCopy;
    dispatch_async(v8, v13);

    v10 = v14;
  }

  else
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __79__FCAVAssetResourceLoader_prefetchMasterPlaylistForAssetURL_completionHandler___block_invoke;
    v19 = &unk_1E7C379C8;
    v20 = handlerCopy;
    v11 = handlerCopy[2];
    v12 = handlerCopy;
    v11(v12, 0, MEMORY[0x1E695E0F0], 0);
    v10 = handlerCopy;
  }
}

void __79__FCAVAssetResourceLoader_prefetchMasterPlaylistForAssetURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) assetManager];
  v3 = [v2 assetHandleForURL:*(a1 + 40) lifetimeHint:0];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__FCAVAssetResourceLoader_prefetchMasterPlaylistForAssetURL_completionHandler___block_invoke_3;
  v5[3] = &unk_1E7C45120;
  v6 = *(a1 + 48);
  v4 = [v3 fetchDataProviderWithCompletion:v5];
}

void __79__FCAVAssetResourceLoader_prefetchMasterPlaylistForAssetURL_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = a2;
    v8 = [v6 data];
    v7 = [FCHLSPlaylist playlistParsingData:v8 error:0];
    (*(v3 + 16))(v3, v7, v6, v5);
  }
}

- (BOOL)_isHLSURL:(id)l
{
  lCopy = l;
  pathExtension = [lCopy pathExtension];
  if ([pathExtension isEqualToString:@"m3u8"])
  {
    v5 = 1;
  }

  else
  {
    pathExtension2 = [lCopy pathExtension];
    v5 = [pathExtension2 isEqualToString:@"m3u"];
  }

  return v5;
}

@end