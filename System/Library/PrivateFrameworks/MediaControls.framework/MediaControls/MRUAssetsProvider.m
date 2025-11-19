@interface MRUAssetsProvider
+ (MRUAssetsProvider)sharedAssetsProvider;
+ (UIImage)backward;
+ (UIImage)controlOtherSpeakers;
+ (UIImage)emptyArtwork;
+ (UIImage)forward;
+ (UIImage)pause;
+ (UIImage)play;
+ (UIImage)stop;
+ (UIImage)tvRemote;
+ (id)goBackwardForTimeInterval:(double)a3;
+ (id)goBackwardSymbolForTimeInterval:(double)a3;
+ (id)goForwardForTimeInterval:(double)a3;
+ (id)goForwardSymbolForTimeInterval:(double)a3;
+ (id)packageDescriptionWithName:(id)a3;
+ (id)packageWithName:(id)a3;
- (MRUAssetsProvider)init;
- (void)applicationIconForBundleIdentifier:(id)a3 size:(CGSize)a4 appearance:(int64_t)a5 completion:(id)a6;
- (void)applicationIconForBundleIdentifier:(id)a3 size:(CGSize)a4 traitCollection:(id)a5 completion:(id)a6;
- (void)imageForURL:(id)a3 completion:(id)a4;
@end

@implementation MRUAssetsProvider

+ (MRUAssetsProvider)sharedAssetsProvider
{
  if (sharedAssetsProvider___onceToken != -1)
  {
    +[MRUAssetsProvider sharedAssetsProvider];
  }

  v3 = sharedAssetsProvider___sharedAssetsProvider;

  return v3;
}

- (MRUAssetsProvider)init
{
  v10.receiver = self;
  v10.super_class = MRUAssetsProvider;
  v2 = [(MRUAssetsProvider *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    completionBlocks = v2->_completionBlocks;
    v2->_completionBlocks = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    imageCache = v2->_imageCache;
    v2->_imageCache = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    applicationCache = v2->_applicationCache;
    v2->_applicationCache = v7;
  }

  return v2;
}

uint64_t __41__MRUAssetsProvider_sharedAssetsProvider__block_invoke()
{
  v0 = objc_alloc_init(MRUAssetsProvider);
  v1 = sharedAssetsProvider___sharedAssetsProvider;
  sharedAssetsProvider___sharedAssetsProvider = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (UIImage)controlOtherSpeakers
{
  if (+[MRUFeatureFlagProvider isNewControlsEnabled])
  {
    v2 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"tv.and.hifispeaker.fill.fill"];
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"tv.and.hifispeaker.fill"];
    }

    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"tv.and.hifispeaker.fill"];
  }

  return v5;
}

+ (UIImage)play
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [a1 playSymbol];
  v4 = [v2 _systemImageNamed:v3];

  return v4;
}

+ (UIImage)pause
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [a1 pauseSymbol];
  v4 = [v2 _systemImageNamed:v3];

  return v4;
}

+ (UIImage)stop
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [a1 stopSymbol];
  v4 = [v2 _systemImageNamed:v3];

  return v4;
}

+ (UIImage)tvRemote
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [MEMORY[0x1E696AAE8] mediaRemoteUIBundle];
  v4 = [v2 imageNamed:@"appletvremote" inBundle:v3];

  return v4;
}

+ (UIImage)backward
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [a1 backwardSymbol];
  v4 = [v2 _systemImageNamed:v3];

  return v4;
}

+ (UIImage)forward
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [a1 forwardSymbol];
  v4 = [v2 _systemImageNamed:v3];

  return v4;
}

+ (id)goBackwardSymbolForTimeInterval:(double)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"gobackward.%i", llround(fabs(a3))];
  v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v3];
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"gobackward.minus";
  }

  v6 = v5;

  return v5;
}

+ (id)goForwardSymbolForTimeInterval:(double)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"goforward.%i", llround(fabs(a3))];
  v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v3];
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"goforward.plus";
  }

  v6 = v5;

  return v5;
}

+ (id)goBackwardForTimeInterval:(double)a3
{
  v3 = [a1 goBackwardSymbolForTimeInterval:a3];
  v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v3];

  return v4;
}

+ (id)goForwardForTimeInterval:(double)a3
{
  v3 = [a1 goForwardSymbolForTimeInterval:a3];
  v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v3];

  return v4;
}

+ (UIImage)emptyArtwork
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [MEMORY[0x1E696AAE8] mediaRemoteUIBundle];
  v4 = [v2 imageNamed:@"EmptyArtwork" inBundle:v3];

  return v4;
}

+ (id)packageWithName:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 mediaRemoteUIBundle];
  v6 = [v5 URLForResource:v4 withExtension:@"ca"];

  v7 = [MEMORY[0x1E6979400] packageWithContentsOfURL:v6 type:*MEMORY[0x1E6979EF8] options:0 error:0];

  return v7;
}

+ (id)packageDescriptionWithName:(id)a3
{
  v3 = MEMORY[0x1E6997248];
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = [v4 mediaRemoteUIBundle];
  v7 = [v3 descriptionForPackageNamed:v5 inBundle:v6];

  return v7;
}

- (void)applicationIconForBundleIdentifier:(id)a3 size:(CGSize)a4 traitCollection:(id)a5 completion:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = a3;
  -[MRUAssetsProvider applicationIconForBundleIdentifier:size:appearance:completion:](self, "applicationIconForBundleIdentifier:size:appearance:completion:", v12, [a5 userInterfaceStyle] == 2, v11, width, height);
}

- (void)applicationIconForBundleIdentifier:(id)a3 size:(CGSize)a4 appearance:(int64_t)a5 completion:(id)a6
{
  height = a4.height;
  width = a4.width;
  v37 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  v13 = v12;
  if (!v11)
  {
    (*(v12 + 2))(v12, 0);
    goto LABEL_22;
  }

  if (MRMediaRemoteApplicationIsSystemMediaApplication())
  {
    v14 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
LABEL_9:
    v15 = v14;

    v11 = v15;
    goto LABEL_10;
  }

  if (MRMediaRemoteApplicationIsSystemPodcastApplication())
  {
    v14 = MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
    goto LABEL_9;
  }

  if (MRMediaRemoteApplicationIsSystemAppleTVApplication())
  {
    v14 = MRMediaRemoteCopyLocalDeviceSystemAppleTVApplicationDisplayID();
    goto LABEL_9;
  }

LABEL_10:
  [(NSDate *)self->_purgeApplicationCacheDate timeIntervalSinceNow];
  if (-v16 >= 86400.0)
  {
    v17 = [MEMORY[0x1E695DF00] now];
    purgeApplicationCacheDate = self->_purgeApplicationCacheDate;
    self->_purgeApplicationCacheDate = v17;

    [(NSCache *)self->_applicationCache removeAllObjects];
  }

  v19 = [(NSCache *)self->_applicationCache objectForKey:v11];
  if (!v19)
  {
    v30 = 0;
    v20 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v11 allowPlaceholder:0 error:&v30];
    v21 = v30;
    v19 = [MEMORY[0x1E696AD98] numberWithInt:v20 != 0];
    [(NSCache *)self->_applicationCache setObject:v19 forKey:v11];
    if (v21)
    {
      v22 = MCLogCategoryDefault();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v32 = self;
        v33 = 2114;
        v34 = v11;
        v35 = 2114;
        v36 = v21;
        _os_log_impl(&dword_1A20FC000, v22, OS_LOG_TYPE_ERROR, "%{public}@ coudln't find application with bundle: %{public}@ | error: %{public}@ ", buf, 0x20u);
      }
    }
  }

  if ([v19 BOOLValue])
  {
    v23 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v11];
    v24 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v24 scale];
    v26 = v25;

    v27 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:width scale:{height, v26}];
    [v27 setAppearance:a5];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __83__MRUAssetsProvider_applicationIconForBundleIdentifier_size_appearance_completion___block_invoke;
    v28[3] = &unk_1E7666290;
    v29 = v13;
    [v23 getCGImageForImageDescriptor:v27 completion:v28];
  }

  else
  {
    v13[2](v13, 0);
  }

LABEL_22:
}

void __83__MRUAssetsProvider_applicationIconForBundleIdentifier_size_appearance_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__MRUAssetsProvider_applicationIconForBundleIdentifier_size_appearance_completion___block_invoke_2;
  v6[3] = &unk_1E7663FD8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)imageForURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRUAssetsProvider *)self imageCache];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v7[2](v7, v9, 0);
  }

  else
  {
    v10 = [(MRUAssetsProvider *)self completionBlocks];
    v9 = [v10 objectForKeyedSubscript:v6];

    if (v9)
    {
      v11 = _Block_copy(v7);
      v12 = [v9 setByAddingObject:v11];
      v13 = [(MRUAssetsProvider *)self completionBlocks];
      [v13 setObject:v12 forKeyedSubscript:v6];
    }

    else
    {
      v14 = objc_alloc(MEMORY[0x1E695DFD8]);
      v15 = _Block_copy(v7);
      v16 = [v14 initWithObjects:{v15, 0}];
      v17 = [(MRUAssetsProvider *)self completionBlocks];
      [v17 setObject:v16 forKeyedSubscript:v6];

      v11 = [MEMORY[0x1E696AF78] sharedSession];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __44__MRUAssetsProvider_imageForURL_completion___block_invoke;
      v19[3] = &unk_1E76662B8;
      v19[4] = self;
      v20 = v6;
      v18 = [v11 dataTaskWithURL:v20 completionHandler:v19];
      [v18 resume];
    }
  }
}

void __44__MRUAssetsProvider_imageForURL_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (a2 && !v6)
  {
    v9 = MEMORY[0x1E69DCAB8];
    v10 = a2;
    v8 = [[v9 alloc] initWithData:v10];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__MRUAssetsProvider_imageForURL_completion___block_invoke_2;
  v15[3] = &unk_1E7664F28;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v16 = v8;
  v17 = v11;
  v18 = v12;
  v19 = v7;
  v13 = v7;
  v14 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

void __44__MRUAssetsProvider_imageForURL_completion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) imageCache];
    [v2 setObject:*(a1 + 32) forKey:*(a1 + 48)];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(a1 + 40) completionBlocks];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 48)];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = [*(a1 + 40) completionBlocks];
  [v9 setObject:0 forKeyedSubscript:*(a1 + 48)];
}

@end