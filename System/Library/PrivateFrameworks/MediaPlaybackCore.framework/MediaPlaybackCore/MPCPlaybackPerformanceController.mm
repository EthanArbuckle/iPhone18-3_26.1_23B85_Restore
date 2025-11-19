@interface MPCPlaybackPerformanceController
+ (MPCPlaybackPerformanceController)sharedController;
- (MPCPlaybackPerformanceController)init;
- (NSString)deploymentID;
- (NSString)experimentID;
- (NSString)treatmentID;
- (id)sortedExperiments;
- (void)loadAVAssetWithURL:(id)a3;
- (void)markCDNConnectionWarmed;
- (void)warmCDNConnection;
@end

@implementation MPCPlaybackPerformanceController

- (void)loadAVAssetWithURL:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "Warming asset CDN connection with URL: %@", buf, 0xCu);
  }

  v5 = [MEMORY[0x1E6988168] assetWithURL:v3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__MPCPlaybackPerformanceController_loadAVAssetWithURL___block_invoke;
  v7[3] = &unk_1E8239298;
  v8 = v5;
  v6 = v5;
  [v6 loadValuesAsynchronouslyForKeys:&unk_1F45998C8 completionHandler:v7];
}

void __55__MPCPlaybackPerformanceController_loadAVAssetWithURL___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "Completed warming asset CDN connection with asset: %{public}@", &v4, 0xCu);
  }
}

- (void)markCDNConnectionWarmed
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x1E695DF00] date];
  [(MPCPlaybackPerformanceController *)self setLastCDNWarming:v3];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)warmCDNConnection
{
  v3 = [(MPCPlaybackPerformanceController *)self trialExperimentWithNamespaceName:@"MUSIC_PLAYBACK_PERFORMANCE_WARMING_CDN"];
  if (v3)
  {
    v4 = MEMORY[0x1E695DFF8];
    v18 = v3;
    v5 = [v3 stringForFactor:@"assetURL1"];
    v6 = [v4 URLWithString:v5];

    v7 = MEMORY[0x1E695DFF8];
    v8 = [v18 stringForFactor:@"assetURL2"];
    v9 = [v7 URLWithString:v8];

    if (v6 | v9)
    {
      [v18 doubleForFactor:@"warmingInterval"];
      v11 = v10;
      v12 = [MEMORY[0x1E695DF00] date];
      os_unfair_lock_lock(&self->_lock);
      v13 = [(MPCPlaybackPerformanceController *)self lastCDNWarming];
      if (v13 && (v14 = v13, -[MPCPlaybackPerformanceController lastCDNWarming](self, "lastCDNWarming"), v15 = objc_claimAutoreleasedReturnValue(), [v12 timeIntervalSinceDate:v15], v17 = v16, v15, v14, v17 <= v11))
      {
        os_unfair_lock_unlock(&self->_lock);
      }

      else
      {
        [(MPCPlaybackPerformanceController *)self setLastCDNWarming:v12];
        os_unfair_lock_unlock(&self->_lock);
        if (v6)
        {
          [(MPCPlaybackPerformanceController *)self loadAVAssetWithURL:v6];
        }

        if (v9)
        {
          [(MPCPlaybackPerformanceController *)self loadAVAssetWithURL:v9];
        }
      }
    }

    v3 = v18;
  }
}

- (NSString)deploymentID
{
  v2 = [(MPCPlaybackPerformanceController *)self sortedExperiments];
  v3 = [v2 msv_compactMap:&__block_literal_global_16];

  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)treatmentID
{
  v2 = [(MPCPlaybackPerformanceController *)self sortedExperiments];
  v3 = [v2 msv_compactMap:&__block_literal_global_14];

  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)experimentID
{
  v2 = [(MPCPlaybackPerformanceController *)self sortedExperiments];
  v3 = [v2 msv_compactMap:&__block_literal_global_11_14085];

  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)sortedExperiments
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_trialExperiments allValues];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_8];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

uint64_t __53__MPCPlaybackPerformanceController_sortedExperiments__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 experimentID];
  v6 = [v4 experimentID];

  v7 = [v5 compare:v6];
  return v7;
}

- (MPCPlaybackPerformanceController)init
{
  v8.receiver = self;
  v8.super_class = MPCPlaybackPerformanceController;
  v2 = [(MPCPlaybackPerformanceController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E695DF90] dictionary];
    trialExperiments = v3->_trialExperiments;
    v3->_trialExperiments = v4;

    if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl() && (MSVDeviceIsAudioAccessory() & 1) == 0 && ICCurrentApplicationIsSystemApp())
    {
      v6 = [MEMORY[0x1E6988108] defaultController];
      [v6 permitReclamationWhileSuspended];
    }
  }

  return v3;
}

+ (MPCPlaybackPerformanceController)sharedController
{
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, &__block_literal_global_14099);
  }

  v3 = sharedController___sharedController;

  return v3;
}

uint64_t __52__MPCPlaybackPerformanceController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(MPCPlaybackPerformanceController);
  v1 = sharedController___sharedController;
  sharedController___sharedController = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end