@interface MPCVideoViewControllerMediaFoundationImplementation
@end

@implementation MPCVideoViewControllerMediaFoundationImplementation

uint64_t __79___MPCVideoViewControllerMediaFoundationImplementation_initWithPlaybackEngine___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v1 = MEMORY[0x1E69E96A0];
  objc_copyWeak(&v4, &location);
  v2 = MSVLogAddStateHandler();
  objc_destroyWeak(&v4);

  objc_destroyWeak(&location);
  return v2;
}

void __79___MPCVideoViewControllerMediaFoundationImplementation_initWithPlaybackEngine___block_invoke_3(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [WeakRetained _stateDictionary];
    v23 = 138412290;
    v24 = v3;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_ERROR, "com.apple.mediaplaybackcore.videodebug: %@", &v23, 0xCu);
  }

  v4 = [WeakRetained internalController];
  v5 = [v4 view];
  v6 = [v5 layer];
  [v6 borderWidth];
  v8 = v7;

  if (v8 <= 0.0)
  {
    v13 = [MEMORY[0x1E69DC888] systemPinkColor];
    v14 = [WeakRetained view];
    [v14 setBackgroundColor:v13];

    v9 = [MEMORY[0x1E69DC888] redColor];
    v15 = [v9 CGColor];
    v10 = [WeakRetained internalController];
    v16 = [v10 view];
    v17 = [v16 layer];
    [v17 setBorderColor:v15];

    v12 = 2.0;
    v11 = 0.85;
  }

  else
  {
    v9 = [MEMORY[0x1E69DC888] clearColor];
    v10 = [WeakRetained view];
    [v10 setBackgroundColor:v9];
    v11 = 1.0;
    v12 = 0.0;
  }

  v18 = [WeakRetained internalController];
  v19 = [v18 view];
  v20 = [v19 layer];
  [v20 setBorderWidth:v12];

  v21 = [WeakRetained internalController];
  v22 = [v21 view];
  [v22 setAlpha:v11];
}

uint64_t __79___MPCVideoViewControllerMediaFoundationImplementation_initWithPlaybackEngine___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = [WeakRetained _stateDictionary];
      v9 = v5[2](v5, v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end