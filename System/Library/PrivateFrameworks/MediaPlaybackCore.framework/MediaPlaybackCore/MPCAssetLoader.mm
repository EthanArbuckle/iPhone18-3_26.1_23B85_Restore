@interface MPCAssetLoader
- (BOOL)_configureItem:(id)a3 playerItem:(id)a4 error:(id *)a5;
- (MPCAssetLoader)initWithDelegate:(id)a3;
- (MPCAssetLoaderDelegate)delegate;
- (double)unloadingPlaybackAssetsOnIdleDuration;
- (void)loadAssetFor:(id)a3 task:(id)a4 completion:(id)a5;
- (void)loadAssetValuesFor:(id)a3 keys:(id)a4 completion:(id)a5;
@end

@implementation MPCAssetLoader

- (MPCAssetLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_configureItem:(id)a3 playerItem:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  v11 = os_signpost_id_make_with_pointer(v10, v8);

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ConfigureItem", "", buf, 2u);
  }

  v14 = [(MPCAssetLoader *)self configurator];
  v24 = 0;
  [v14 configureQueueItem:v8 playerItem:v9 error:&v24];

  v15 = v24;
  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  v17 = v16;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v18 = [v8 analyticsContentType];
    v19 = [v18 UTF8String];
    v20 = [v8 analyticsFormatType];
    v21 = [v20 UTF8String];
    *buf = 136446466;
    v26 = v19;
    v27 = 2082;
    v28 = v21;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v17, OS_SIGNPOST_INTERVAL_END, v11, "ConfigureItem", " enableTelemetry=YES contentType=%{public, signpost.telemetry:string1, name=contentType}s format=%{public, signpost.telemetry:string2, name=format}s", buf, 0x16u);
  }

  if (a5 && v15)
  {
    v22 = v15;
    *a5 = v15;
  }

  return v15 == 0;
}

- (double)unloadingPlaybackAssetsOnIdleDuration
{
  v2 = [(MPCAssetLoader *)self configurator];
  v3 = [v2 resetPassthrougOutputStateIfEnabled];

  if (v3)
  {
    return 2.0;
  }

  v5 = [MEMORY[0x1E69708A8] standardUserDefaults];
  [v5 unloadingPlaybackAssetsOnIdleDuration];
  v7 = v6;

  return v7;
}

- (void)loadAssetValuesFor:(id)a3 keys:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 isAssetLoaded])
  {
    v10 = [v7 asset];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__MPCAssetLoader_loadAssetValuesFor_keys_completion___block_invoke;
    v11[3] = &unk_1E8239528;
    v12 = v9;
    [v10 loadValuesAsynchronouslyForKeys:v8 completionHandler:v11];
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:0 debugDescription:@"Asset is not loaded or was recently released due to MediaServices interruption"];
    (*(v9 + 2))(v9, v10);
  }
}

- (void)loadAssetFor:(id)a3 task:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MPCAssetLoader *)self configurator];

  if (!v12)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"MPCAssetLoader.m" lineNumber:68 description:@"MPCAssetLoader must have a configurator set to work properly"];
  }

  if (([v9 hasLoadableAsset] & 1) == 0)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"MPCAssetLoader.m" lineNumber:69 description:{@"Attempting to load an item which has no loadable asset: %@", v9}];
  }

  v13 = v9;
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __47__MPCAssetLoader_loadAssetFor_task_completion___block_invoke;
  v36 = &unk_1E82392C0;
  v37 = self;
  v38 = v13;
  msv_dispatch_on_main_queue();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__MPCAssetLoader_loadAssetFor_task_completion___block_invoke_2;
  aBlock[3] = &unk_1E8234FB0;
  v14 = v11;
  v32 = v14;
  v15 = v38;
  v30 = v15;
  v31 = self;
  v16 = _Block_copy(aBlock);
  if ([v10 isCancelled])
  {
    v17 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:28 debugDescription:{@"MPCAssetLoadingOperation - Asset loading cancelled - Item:%@", v15}];
    v16[2](v16, 0, v17);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      configurator = self->_configurator;
      v19 = v15;
      v20 = [(MPCPlayerItemConfigurator *)configurator audioAssetTypeSelector];
      [v19 setAudioAssetTypeSelector:v20];
    }

    v21 = [MPCMFAssetLoadingTask wrap:v10];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __47__MPCAssetLoader_loadAssetFor_task_completion___block_invoke_4;
    v24[3] = &unk_1E8234FD8;
    v25 = v10;
    v28 = v16;
    v26 = v15;
    v27 = self;
    [v26 _loadAssetAndPlayerItemWithTask:v21 completion:v24];

    v17 = v25;
  }
}

void __47__MPCAssetLoader_loadAssetFor_task_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 assetLoadingDidStartForItem:*(a1 + 40)];
}

void __47__MPCAssetLoader_loadAssetFor_task_completion___block_invoke_2(int8x16_t *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(a1[3].i64[0] + 16))();
  v7 = a1[2];
  v5 = v7.i64[0];
  v6 = v4;
  msv_dispatch_on_main_queue();
}

void __47__MPCAssetLoader_loadAssetFor_task_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) isCancelled])
  {
    v7 = *(a1 + 56);
    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:28 debugDescription:{@"MPCAssetLoadingOperation - Asset loading cancelled - Item:%@", *(a1 + 40)}];
    (*(v7 + 16))(v7, 0, v8);
  }

  else if (v5)
  {
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v15 = 0;
    [v9 _configureItem:v10 playerItem:v5 error:&v15];
    v11 = v15;
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (!v6)
    {
      v12 = [*(a1 + 40) itemError];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:24 debugDescription:{@"MPCAssetLoadingOperation - Asset loading failed [No AVPlayerItem] - Item:%@", *(a1 + 40)}];
      }

      v6 = v14;
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __47__MPCAssetLoader_loadAssetFor_task_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 assetLoadingDidCompleteForItem:*(a1 + 40) error:*(a1 + 48)];
}

- (MPCAssetLoader)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MPCAssetLoader;
  v5 = [(MPCAssetLoader *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

@end