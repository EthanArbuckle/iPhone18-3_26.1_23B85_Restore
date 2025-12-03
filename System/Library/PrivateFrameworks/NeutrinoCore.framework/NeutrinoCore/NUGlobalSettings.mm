@interface NUGlobalSettings
+ (BOOL)allAssetsCanUseHDRPipeline;
+ (BOOL)alwaysRequireHardwareVideoEncoder;
+ (BOOL)bufferStorageFactoryUsePool;
+ (BOOL)debugDumpStyleEngineInputs;
+ (BOOL)deviceDisableMetal;
+ (BOOL)devicePrintRenderer;
+ (BOOL)disableAuxiliaryImageCacheFromSource;
+ (BOOL)disableIOSurfacePortaitExport;
+ (BOOL)disableMeteorGainMapGeneration;
+ (BOOL)disablePacked10BitPixelFormats;
+ (BOOL)displayDisableColorMatching;
+ (BOOL)displayDisableDeepColor;
+ (BOOL)displayForceDeepColor;
+ (BOOL)enableFlexRange;
+ (BOOL)enableHDRSupport;
+ (BOOL)enableSpatialMediaEditing;
+ (BOOL)enforceMinimumBitRateForCinematicVideos;
+ (BOOL)enforceMinimumBitRateForExportedVideos;
+ (BOOL)forceMeteorGainMapGeneration;
+ (BOOL)forceMeteorPlusLinear;
+ (BOOL)forceMeteorPlusPlus;
+ (BOOL)forceSoftwareVideoEncoder;
+ (BOOL)imageLayerDebug;
+ (BOOL)imageRenderJobUseSurfaceRenderer;
+ (BOOL)imageRenderJobUseTextureRenderer;
+ (BOOL)imageSourceDisableCacheImmediately;
+ (BOOL)imageSourceDisableRAW;
+ (BOOL)inpaintDumpsInputImages;
+ (BOOL)inpaintSegmentationUsesConnectedComponents;
+ (BOOL)inpaintSegmentationUsesNonUniformScaling;
+ (BOOL)isViewDebugEnabled;
+ (BOOL)logPeakRenderCIUsuage;
+ (BOOL)mediaViewDisableLivePhoto;
+ (BOOL)overrideCleanupHardwareCheck;
+ (BOOL)overrideSemanticStylesHardwareCheck;
+ (BOOL)platformHasWideColor;
+ (BOOL)preserveSubjectsWhenInpainting;
+ (BOOL)renderEDRAsPQ;
+ (BOOL)renderJobDebug;
+ (BOOL)renderJobDebugCapture5PercentOfJobs;
+ (BOOL)renderJobDebugCaptureCanceledJobs;
+ (BOOL)renderJobDebugCaptureNodeCache;
+ (BOOL)renderJobDebugCaptureNodeGraphs;
+ (BOOL)renderJobDebugCaptureOnlyPerfStats;
+ (BOOL)renderJobDebugCapturePerfStatHistory;
+ (BOOL)renderJobDisableResultCache;
+ (BOOL)renderMeteorPlusAsHDR;
+ (BOOL)renderTransparencyOpaque;
+ (BOOL)renderTransparencyOverBlack;
+ (BOOL)renderVideoLive;
+ (BOOL)rendererClampToAlpha;
+ (BOOL)rendererUseHalfFloat;
+ (BOOL)rendererUseP3Linear;
+ (BOOL)resampleInSourceColorSpace;
+ (BOOL)runNeutrinoSynchronously;
+ (BOOL)semanticStyleAllowResidualsMismatch;
+ (BOOL)semanticStyleDisableDeltaMap;
+ (BOOL)semanticStyleDisableResiduals;
+ (BOOL)semanticStyleForceResiduals;
+ (BOOL)semanticStyleForceSyntheticNoise;
+ (BOOL)semanticStyleUseDynamicConfig;
+ (BOOL)semanticStyleUseFasterSystemOrder;
+ (BOOL)shouldEnableStylesForProRaw;
+ (BOOL)surfaceStorageFactoryUsePool;
+ (NSString)debugRenderBlue;
+ (NSString)debugRenderPurple;
+ (NSString)debugRenderYellow;
+ (NSString)inpaintSegmentationInputTensorsDumpPath;
+ (NSString)meteorGainMapExposureCompensationMode;
+ (NSString)tempDir;
+ (NSURL)cacheNodeDirectoryURL;
+ (NSURL)pipelineSourceURL;
+ (double)HLGOpticalScale;
+ (double)cacheNodeImageCompression;
+ (double)inpaintMaximumArea;
+ (double)inpaintMinimumArea;
+ (double)maxGainMapHeadroom;
+ (double)mediaViewRenderCoalescingInterval;
+ (double)overrideDisplayHeadroom;
+ (double)renderResourceEvictionDelay;
+ (double)semanticStyleInterpolationHalfWindowTime;
+ (double)storagePoolMigrationDelay;
+ (double)thresholdDisplayHeadroom;
+ (double)visionSessionEvictionDelay;
+ (id)globalSettings;
+ (int64_t)cacheNodeCacheSizeLimit;
+ (int64_t)cacheNodeFilePermissions;
+ (int64_t)debugSoftMemoryLimit;
+ (int64_t)deviceDefaultSampleMode;
+ (int64_t)imageTileBorder;
+ (int64_t)imageTileSize;
+ (int64_t)inpaintSegmentationMaxInputSize;
+ (int64_t)maxPixelCountForCacheImmediately;
+ (int64_t)rendererContextDefaultMemoryTarget;
+ (int64_t)rendererContextLargeMemoryTarget;
+ (int64_t)rendererContextLowMemoryTarget;
+ (int64_t)storagePoolNonPurgeableLimit;
+ (int64_t)storagePoolPurgeableLimit;
+ (unint64_t)videoCompositorDebugMode;
+ (void)reset;
+ (void)setAllAssetsCanUseHDRPipeline:(BOOL)pipeline;
+ (void)setAlwaysRequireHardwareVideoEncoder:(BOOL)encoder;
+ (void)setBufferStorageFactoryUsePool:(BOOL)pool;
+ (void)setCacheNodeCacheSizeLimit:(int64_t)limit;
+ (void)setCacheNodeDirectoryURL:(id)l;
+ (void)setCacheNodeFilePermissions:(int64_t)permissions;
+ (void)setCacheNodeImageCompression:(double)compression;
+ (void)setDebugDumpStyleEngineInputs:(BOOL)inputs;
+ (void)setDebugRenderBlue:(id)blue;
+ (void)setDebugRenderPurple:(id)purple;
+ (void)setDebugRenderYellow:(id)yellow;
+ (void)setDebugSoftMemoryLimit:(int64_t)limit;
+ (void)setDeviceDefaultSampleMode:(int64_t)mode;
+ (void)setDevicePrintRenderer:(BOOL)renderer;
+ (void)setDisableAuxiliaryImageCacheFromSource:(BOOL)source;
+ (void)setDisableIOSurfacePortaitExport:(BOOL)export;
+ (void)setDisableMeteorGainMapGeneration:(BOOL)generation;
+ (void)setDisablePacked10BitPixelFormats:(BOOL)formats;
+ (void)setDisplayDisableColorMatching:(BOOL)matching;
+ (void)setDisplayDisableDeepColor:(BOOL)color;
+ (void)setDisplayForceDeepColor:(BOOL)color;
+ (void)setEnableFlexRange:(BOOL)range;
+ (void)setEnableHDRSupport:(BOOL)support;
+ (void)setEnableSpatialMediaEditing:(BOOL)editing;
+ (void)setEnforceMinimumBitRateForCinematicVideos:(BOOL)videos;
+ (void)setEnforceMinimumBitRateForExportedVideos:(BOOL)videos;
+ (void)setForceMeteorGainMapGeneration:(BOOL)generation;
+ (void)setForceMeteorPlusLinear:(BOOL)linear;
+ (void)setForceMeteorPlusPlus:(BOOL)plus;
+ (void)setForceSoftwareVideoEncoder:(BOOL)encoder;
+ (void)setImageLayerDebug:(BOOL)debug;
+ (void)setImageRenderJobUseSurfaceRenderer:(BOOL)renderer;
+ (void)setImageRenderJobUseTextureRenderer:(BOOL)renderer;
+ (void)setImageSourceDisableCacheImmediately:(BOOL)immediately;
+ (void)setImageSourceDisableRAW:(BOOL)w;
+ (void)setImageTileBorder:(int64_t)border;
+ (void)setImageTileSize:(int64_t)size;
+ (void)setInpaintDumpsInputImages:(BOOL)images;
+ (void)setInpaintMaximumArea:(double)area;
+ (void)setInpaintMinimumArea:(double)area;
+ (void)setInpaintSegmentationInputTensorsDumpPath:(id)path;
+ (void)setInpaintSegmentationMaxInputSize:(int64_t)size;
+ (void)setInpaintSegmentationUsesConnectedComponents:(BOOL)components;
+ (void)setInpaintSegmentationUsesNonUniformScaling:(BOOL)scaling;
+ (void)setLogPeakRenderCIUsuage:(BOOL)usuage;
+ (void)setMaxGainMapHeadroom:(double)headroom;
+ (void)setMaxPixelCountForCacheImmediately:(int64_t)immediately;
+ (void)setMediaViewDisableLivePhoto:(BOOL)photo;
+ (void)setMediaViewRenderCoalescingInterval:(double)interval;
+ (void)setMeteorGainMapExposureCompensationMode:(id)mode;
+ (void)setOverrideCleanupHardwareCheck:(BOOL)check;
+ (void)setOverrideDisplayHeadroom:(double)headroom;
+ (void)setOverrideSemanticStylesHardwareCheck:(BOOL)check;
+ (void)setPipelineSourceURL:(id)l;
+ (void)setPlatformHasWideColor:(BOOL)color;
+ (void)setPreserveSubjectsWhenInpainting:(BOOL)inpainting;
+ (void)setRenderEDRAsPQ:(BOOL)q;
+ (void)setRenderJobDebug:(BOOL)debug;
+ (void)setRenderJobDebugCapture5PercentOfJobs:(BOOL)jobs;
+ (void)setRenderJobDebugCaptureCanceledJobs:(BOOL)jobs;
+ (void)setRenderJobDebugCaptureNodeCache:(BOOL)cache;
+ (void)setRenderJobDebugCaptureNodeGraphs:(BOOL)graphs;
+ (void)setRenderJobDebugCaptureOnlyPerfStats:(BOOL)stats;
+ (void)setRenderJobDebugCapturePerfStatHistory:(BOOL)history;
+ (void)setRenderJobDisableResultCache:(BOOL)cache;
+ (void)setRenderMeteorPlusAsHDR:(BOOL)r;
+ (void)setRenderResourceEvictionDelay:(double)delay;
+ (void)setRenderTransparencyOpaque:(BOOL)opaque;
+ (void)setRenderTransparencyOverBlack:(BOOL)black;
+ (void)setRenderVideoLive:(BOOL)live;
+ (void)setRendererClampToAlpha:(BOOL)alpha;
+ (void)setRendererContextDefaultMemoryTarget:(int64_t)target;
+ (void)setRendererContextLargeMemoryTarget:(int64_t)target;
+ (void)setRendererContextLowMemoryTarget:(int64_t)target;
+ (void)setRendererUseHalfFloat:(BOOL)float;
+ (void)setRendererUseP3Linear:(BOOL)linear;
+ (void)setResampleInSourceColorSpace:(BOOL)space;
+ (void)setRunNeutrinoSynchronously:(BOOL)synchronously;
+ (void)setSemanticStyleAllowResidualsMismatch:(BOOL)mismatch;
+ (void)setSemanticStyleDisableDeltaMap:(BOOL)map;
+ (void)setSemanticStyleDisableResiduals:(BOOL)residuals;
+ (void)setSemanticStyleForceResiduals:(BOOL)residuals;
+ (void)setSemanticStyleForceSyntheticNoise:(BOOL)noise;
+ (void)setSemanticStyleInterpolationHalfWindowTime:(double)time;
+ (void)setSemanticStyleUseDynamicConfig:(BOOL)config;
+ (void)setSemanticStyleUseFasterSystemOrder:(BOOL)order;
+ (void)setShouldEnableStylesForProRaw:(BOOL)raw;
+ (void)setStoragePoolMigrationDelay:(double)delay;
+ (void)setStoragePoolNonPurgeableLimit:(int64_t)limit;
+ (void)setStoragePoolPurgeableLimit:(int64_t)limit;
+ (void)setSurfaceStorageFactoryUsePool:(BOOL)pool;
+ (void)setTempDir:(id)dir;
+ (void)setThresholdDisplayHeadroom:(double)headroom;
+ (void)setUpCacheNodeDirectoryWithComponent:(id)component;
+ (void)setVideoCompositorDebugMode:(unint64_t)mode;
+ (void)setViewDebugEnabled:(BOOL)enabled;
+ (void)setVisionSessionEvictionDelay:(double)delay;
- (BOOL)BOOLSettingForKey:(id)key defaultValue:(id)value;
- (NUGlobalSettings)init;
- (double)doubleSettingForKey:(id)key defaultValue:(id)value;
- (id)_settingForKey:(id)key defaultValue:(id)value;
- (id)settingForKey:(id)key defaultValue:(id)value;
- (id)stringSettingForKey:(id)key defaultValue:(id)value;
- (id)urlSettingForKey:(id)key defaultValue:(id)value;
- (int64_t)integerSettingForKey:(id)key defaultValue:(id)value;
- (void)reset;
- (void)setSetting:(id)setting forKey:(id)key;
@end

@implementation NUGlobalSettings

+ (id)globalSettings
{
  if (globalSettings_onceToken != -1)
  {
    dispatch_once(&globalSettings_onceToken, &__block_literal_global_922);
  }

  v3 = globalSettings_globalSettings;

  return v3;
}

- (NUGlobalSettings)init
{
  v8.receiver = self;
  v8.super_class = NUGlobalSettings;
  v2 = [(NUGlobalSettings *)&v8 init];
  v3 = dispatch_queue_create("NUGlobalSettings", 0);
  queue = v2->_queue;
  v2->_queue = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  settings = v2->_settings;
  v2->_settings = v5;

  return v2;
}

uint64_t __34__NUGlobalSettings_globalSettings__block_invoke()
{
  globalSettings_globalSettings = objc_alloc_init(NUGlobalSettings);

  return MEMORY[0x1EEE66BB8]();
}

- (id)urlSettingForKey:(id)key defaultValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__NUGlobalSettings_urlSettingForKey_defaultValue___block_invoke;
  v12[3] = &unk_1E8109348;
  v13 = keyCopy;
  v14 = valueCopy;
  v8 = valueCopy;
  v9 = keyCopy;
  v10 = [(NUGlobalSettings *)self settingForKey:v9 defaultValue:v12];

  return v10;
}

id __50__NUGlobalSettings_urlSettingForKey_defaultValue___block_invoke(uint64_t a1)
{
  v2 = getStringEnv(*(a1 + 32));
  if (v2)
  {
    [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
  v3 = ;

  return v3;
}

- (id)stringSettingForKey:(id)key defaultValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__NUGlobalSettings_stringSettingForKey_defaultValue___block_invoke;
  v12[3] = &unk_1E8109320;
  v13 = keyCopy;
  v14 = valueCopy;
  v8 = valueCopy;
  v9 = keyCopy;
  v10 = [(NUGlobalSettings *)self settingForKey:v9 defaultValue:v12];

  return v10;
}

id __53__NUGlobalSettings_stringSettingForKey_defaultValue___block_invoke(uint64_t a1)
{
  v2 = getStringEnv(*(a1 + 32));
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = (*(*(a1 + 40) + 16))();
  }

  v5 = v4;

  return v5;
}

- (double)doubleSettingForKey:(id)key defaultValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __53__NUGlobalSettings_doubleSettingForKey_defaultValue___block_invoke;
  v17 = &unk_1E81092F8;
  v18 = keyCopy;
  v19 = valueCopy;
  v8 = valueCopy;
  v9 = keyCopy;
  v10 = [(NUGlobalSettings *)self settingForKey:v9 defaultValue:&v14];
  [v10 doubleValue];
  v12 = v11;

  return v12;
}

uint64_t __53__NUGlobalSettings_doubleSettingForKey_defaultValue___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = getStringEnv(v2);
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
  }

  else
  {
    v6 = v3[2](v3);
  }

  v7 = v6;

  return [v1 numberWithDouble:v7];
}

- (int64_t)integerSettingForKey:(id)key defaultValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __54__NUGlobalSettings_integerSettingForKey_defaultValue___block_invoke;
  v16 = &unk_1E81092F8;
  v17 = keyCopy;
  v18 = valueCopy;
  v8 = valueCopy;
  v9 = keyCopy;
  v10 = [(NUGlobalSettings *)self settingForKey:v9 defaultValue:&v13];
  integerValue = [v10 integerValue];

  return integerValue;
}

uint64_t __54__NUGlobalSettings_integerSettingForKey_defaultValue___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = getStringEnv(v2);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = v3[2](v3);
  }

  v7 = v6;

  return [v1 numberWithInteger:v7];
}

- (BOOL)BOOLSettingForKey:(id)key defaultValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __51__NUGlobalSettings_BOOLSettingForKey_defaultValue___block_invoke;
  v16 = &unk_1E81092F8;
  v17 = keyCopy;
  v18 = valueCopy;
  v8 = valueCopy;
  v9 = keyCopy;
  v10 = [(NUGlobalSettings *)self settingForKey:v9 defaultValue:&v13];
  bOOLValue = [v10 BOOLValue];

  return bOOLValue;
}

uint64_t __51__NUGlobalSettings_BOOLSettingForKey_defaultValue___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = getStringEnv(v2);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = v3[2](v3);
  }

  v7 = v6;

  return [v1 numberWithBool:v7];
}

- (void)setSetting:(id)setting forKey:(id)key
{
  settingCopy = setting;
  keyCopy = key;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__NUGlobalSettings_setSetting_forKey___block_invoke;
  block[3] = &unk_1E810B3A0;
  block[4] = self;
  v12 = keyCopy;
  v13 = settingCopy;
  v9 = settingCopy;
  v10 = keyCopy;
  dispatch_sync(queue, block);
}

- (id)_settingForKey:(id)key defaultValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v8 = [(NSMutableDictionary *)self->_settings objectForKeyedSubscript:keyCopy];
  if (!v8)
  {
    v8 = valueCopy[2](valueCopy);
    [(NSMutableDictionary *)self->_settings setObject:v8 forKeyedSubscript:keyCopy];
  }

  return v8;
}

- (id)settingForKey:(id)key defaultValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__727;
  v21 = __Block_byref_object_dispose__728;
  v22 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__NUGlobalSettings_settingForKey_defaultValue___block_invoke;
  v13[3] = &unk_1E810A120;
  v13[4] = self;
  v14 = keyCopy;
  v15 = valueCopy;
  v16 = &v17;
  v9 = valueCopy;
  v10 = keyCopy;
  dispatch_sync(queue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __47__NUGlobalSettings_settingForKey_defaultValue___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) _settingForKey:*(a1 + 40) defaultValue:*(a1 + 48)];

  return MEMORY[0x1EEE66BB8]();
}

- (void)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__NUGlobalSettings_reset__block_invoke;
  block[3] = &unk_1E810B9A8;
  block[4] = self;
  dispatch_sync(queue, block);
}

+ (void)setDebugSoftMemoryLimit:(int64_t)limit
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:limit];
  [globalSettings setSetting:v4 forKey:@"NU_DEBUG_SOFT_MEMORY_LIMIT"];
}

+ (int64_t)debugSoftMemoryLimit
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings integerSettingForKey:@"NU_DEBUG_SOFT_MEMORY_LIMIT" defaultValue:&__block_literal_global_517];

  return v3;
}

+ (void)setVisionSessionEvictionDelay:(double)delay
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:delay];
  [globalSettings setSetting:v4 forKey:@"NU_VISION_SESSION_EVICTION_DELAY"];
}

+ (double)visionSessionEvictionDelay
{
  globalSettings = [self globalSettings];
  [globalSettings doubleSettingForKey:@"NU_VISION_SESSION_EVICTION_DELAY" defaultValue:&__block_literal_global_512];
  v4 = v3;

  return v4;
}

+ (void)setRenderResourceEvictionDelay:(double)delay
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:delay];
  [globalSettings setSetting:v4 forKey:@"NU_RENDER_RESOURCE_EVICTION_DELAY"];
}

+ (double)renderResourceEvictionDelay
{
  globalSettings = [self globalSettings];
  [globalSettings doubleSettingForKey:@"NU_RENDER_RESOURCE_EVICTION_DELAY" defaultValue:&__block_literal_global_507];
  v4 = v3;

  return v4;
}

+ (void)setSemanticStyleUseFasterSystemOrder:(BOOL)order
{
  orderCopy = order;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:orderCopy];
  [globalSettings setSetting:v4 forKey:@"NU_STYLES_USE_FASTER_SYSTEM_ORDER"];
}

+ (BOOL)semanticStyleUseFasterSystemOrder
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_STYLES_USE_FASTER_SYSTEM_ORDER" defaultValue:&__block_literal_global_502];

  return v3;
}

+ (void)setSemanticStyleUseDynamicConfig:(BOOL)config
{
  configCopy = config;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:configCopy];
  [globalSettings setSetting:v4 forKey:@"NU_STYLES_USE_DYNAMIC_CONFIG"];
}

+ (BOOL)semanticStyleUseDynamicConfig
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_STYLES_USE_DYNAMIC_CONFIG" defaultValue:&__block_literal_global_493];

  return v3;
}

uint64_t __49__NUGlobalSettings_semanticStyleUseDynamicConfig__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.Preferences"];

  return v2;
}

+ (void)setDebugDumpStyleEngineInputs:(BOOL)inputs
{
  inputsCopy = inputs;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:inputsCopy];
  [globalSettings setSetting:v4 forKey:@"NU_DEBUG_DUMP_STYLE_ENGINE_INPUTS"];
}

+ (BOOL)debugDumpStyleEngineInputs
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_DEBUG_DUMP_STYLE_ENGINE_INPUTS" defaultValue:&__block_literal_global_488];

  return v3;
}

+ (void)setSemanticStyleForceSyntheticNoise:(BOOL)noise
{
  noiseCopy = noise;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:noiseCopy];
  [globalSettings setSetting:v4 forKey:@"NU_STYLES_FORCE_SYNTHETIC_NOISE"];
}

+ (BOOL)semanticStyleForceSyntheticNoise
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_STYLES_FORCE_SYNTHETIC_NOISE" defaultValue:&__block_literal_global_483];

  return v3;
}

+ (void)setSemanticStyleAllowResidualsMismatch:(BOOL)mismatch
{
  mismatchCopy = mismatch;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:mismatchCopy];
  [globalSettings setSetting:v4 forKey:@"NU_STYLES_ALLOW_RESIDUALS_MISMATCH"];
}

+ (BOOL)semanticStyleAllowResidualsMismatch
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_STYLES_ALLOW_RESIDUALS_MISMATCH" defaultValue:&__block_literal_global_478];

  return v3;
}

+ (void)setSemanticStyleForceResiduals:(BOOL)residuals
{
  residualsCopy = residuals;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:residualsCopy];
  [globalSettings setSetting:v4 forKey:@"NU_STYLES_FORCE_RESIDUALS"];
}

+ (BOOL)semanticStyleForceResiduals
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_STYLES_FORCE_RESIDUALS" defaultValue:&__block_literal_global_473];

  return v3;
}

+ (void)setSemanticStyleDisableResiduals:(BOOL)residuals
{
  residualsCopy = residuals;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:residualsCopy];
  [globalSettings setSetting:v4 forKey:@"NU_STYLES_DISABLE_RESIDUALS"];
}

+ (BOOL)semanticStyleDisableResiduals
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_STYLES_DISABLE_RESIDUALS" defaultValue:&__block_literal_global_468];

  return v3;
}

+ (void)setSemanticStyleDisableDeltaMap:(BOOL)map
{
  mapCopy = map;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:mapCopy];
  [globalSettings setSetting:v4 forKey:@"NU_STYLES_DISABLE_DELTA_MAP"];
}

+ (BOOL)semanticStyleDisableDeltaMap
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_STYLES_DISABLE_DELTA_MAP" defaultValue:&__block_literal_global_463];

  return v3;
}

+ (void)setOverrideSemanticStylesHardwareCheck:(BOOL)check
{
  checkCopy = check;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:checkCopy];
  [globalSettings setSetting:v4 forKey:@"NU_STYLES_OVERRIDE_HARDWARE"];
}

+ (BOOL)overrideSemanticStylesHardwareCheck
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_STYLES_OVERRIDE_HARDWARE" defaultValue:&__block_literal_global_458];

  return v3;
}

+ (void)setSemanticStyleInterpolationHalfWindowTime:(double)time
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  [globalSettings setSetting:v4 forKey:@"NU_STYLES_TEMPORAL_WINDOW_SIZE"];
}

+ (double)semanticStyleInterpolationHalfWindowTime
{
  globalSettings = [self globalSettings];
  [globalSettings doubleSettingForKey:@"NU_STYLES_TEMPORAL_WINDOW_SIZE" defaultValue:&__block_literal_global_453];
  v4 = v3;

  return v4;
}

+ (void)setShouldEnableStylesForProRaw:(BOOL)raw
{
  rawCopy = raw;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:rawCopy];
  [globalSettings setSetting:v4 forKey:@"NU_STYLES_SHOULD_ENABLE_ON_PRORAW"];
}

+ (BOOL)shouldEnableStylesForProRaw
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_STYLES_SHOULD_ENABLE_ON_PRORAW" defaultValue:&__block_literal_global_448];

  return v3;
}

+ (void)setInpaintSegmentationMaxInputSize:(int64_t)size
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:size];
  [globalSettings setSetting:v4 forKey:@"NU_INPAINT_SEGMENTATION_MAX_INPUT_SIZE"];
}

+ (int64_t)inpaintSegmentationMaxInputSize
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings integerSettingForKey:@"NU_INPAINT_SEGMENTATION_MAX_INPUT_SIZE" defaultValue:&__block_literal_global_443];

  return v3;
}

+ (void)setInpaintMaximumArea:(double)area
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:area];
  [globalSettings setSetting:v4 forKey:@"NU_INPAINT_MAX_AREA"];
}

+ (double)inpaintMaximumArea
{
  globalSettings = [self globalSettings];
  [globalSettings doubleSettingForKey:@"NU_INPAINT_MAX_AREA" defaultValue:&__block_literal_global_438];
  v4 = v3;

  return v4;
}

+ (void)setInpaintMinimumArea:(double)area
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:area];
  [globalSettings setSetting:v4 forKey:@"NU_INPAINT_MIN_AREA"];
}

+ (double)inpaintMinimumArea
{
  globalSettings = [self globalSettings];
  [globalSettings doubleSettingForKey:@"NU_INPAINT_MIN_AREA" defaultValue:&__block_literal_global_433];
  v4 = v3;

  return v4;
}

+ (void)setInpaintDumpsInputImages:(BOOL)images
{
  imagesCopy = images;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:imagesCopy];
  [globalSettings setSetting:v4 forKey:@"NU_INPAINT_DUMPS_INPUT_IMAGES"];
}

+ (BOOL)inpaintDumpsInputImages
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_INPAINT_DUMPS_INPUT_IMAGES" defaultValue:&__block_literal_global_428];

  return v3;
}

+ (void)setInpaintSegmentationInputTensorsDumpPath:(id)path
{
  pathCopy = path;
  globalSettings = [self globalSettings];
  [globalSettings setSetting:pathCopy forKey:@"NU_INPAINT_SEGMENT_INPUT_TENSOR_DUMP_PATH"];
}

+ (NSString)inpaintSegmentationInputTensorsDumpPath
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings settingForKey:@"NU_INPAINT_SEGMENT_INPUT_TENSOR_DUMP_PATH" defaultValue:&__block_literal_global_423];

  return v3;
}

id __59__NUGlobalSettings_inpaintSegmentationInputTensorsDumpPath__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"NU_INPAINT_SEGMENT_INPUT_TENSOR_DUMP_PATH"];

  return v1;
}

+ (void)setInpaintSegmentationUsesNonUniformScaling:(BOOL)scaling
{
  scalingCopy = scaling;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:scalingCopy];
  [globalSettings setSetting:v4 forKey:@"NU_INPAINT_SEGMENT_NONUNIFORM_SCALING"];
}

+ (BOOL)inpaintSegmentationUsesNonUniformScaling
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_INPAINT_SEGMENT_NONUNIFORM_SCALING" defaultValue:&__block_literal_global_417_804];

  return v3;
}

uint64_t __60__NUGlobalSettings_inpaintSegmentationUsesNonUniformScaling__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"NU_INPAINT_SEGMENT_NONUNIFORM_SCALING"];

  if (v1)
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

+ (void)setInpaintSegmentationUsesConnectedComponents:(BOOL)components
{
  componentsCopy = components;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:componentsCopy];
  [globalSettings setSetting:v4 forKey:@"NU_INPAINT_SEGMENT_CONNECTED_COMPONENTS"];
}

+ (BOOL)inpaintSegmentationUsesConnectedComponents
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_INPAINT_SEGMENT_CONNECTED_COMPONENTS" defaultValue:&__block_literal_global_412];

  return v3;
}

uint64_t __62__NUGlobalSettings_inpaintSegmentationUsesConnectedComponents__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"NU_INPAINT_SEGMENT_CONNECTED_COMPONENTS"];

  if (v1)
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

+ (void)setPreserveSubjectsWhenInpainting:(BOOL)inpainting
{
  inpaintingCopy = inpainting;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:inpaintingCopy];
  [globalSettings setSetting:v4 forKey:@"NU_INPAINT_PRESERVES_SUBJECTS"];
}

+ (BOOL)preserveSubjectsWhenInpainting
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_INPAINT_PRESERVES_SUBJECTS" defaultValue:&__block_literal_global_407];

  return v3;
}

+ (void)setOverrideCleanupHardwareCheck:(BOOL)check
{
  checkCopy = check;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:checkCopy];
  [globalSettings setSetting:v4 forKey:@"NU_CLEANUP_OVERRIDE_HARDWARE"];
}

+ (BOOL)overrideCleanupHardwareCheck
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_CLEANUP_OVERRIDE_HARDWARE" defaultValue:&__block_literal_global_402];

  return v3;
}

+ (void)setMaxPixelCountForCacheImmediately:(int64_t)immediately
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:immediately];
  [globalSettings setSetting:v4 forKey:@"NU_MAX_PIXEL_COUNT_FOR_CACHE_IMMEDIATELY"];
}

+ (int64_t)maxPixelCountForCacheImmediately
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings integerSettingForKey:@"NU_MAX_PIXEL_COUNT_FOR_CACHE_IMMEDIATELY" defaultValue:&__block_literal_global_397];

  return v3;
}

+ (void)setEnableSpatialMediaEditing:(BOOL)editing
{
  editingCopy = editing;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:editingCopy];
  [globalSettings setSetting:v4 forKey:@"NU_ENABLE_SPATIAL_MEDIA_EDITING"];
}

+ (BOOL)enableSpatialMediaEditing
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_ENABLE_SPATIAL_MEDIA_EDITING" defaultValue:&__block_literal_global_392];

  return v3;
}

+ (void)setMediaViewDisableLivePhoto:(BOOL)photo
{
  photoCopy = photo;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:photoCopy];
  [globalSettings setSetting:v4 forKey:@"NU_MEDIAVIEW_DISABLE_LIVE_PHOTO"];
}

+ (BOOL)mediaViewDisableLivePhoto
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_MEDIAVIEW_DISABLE_LIVE_PHOTO" defaultValue:&__block_literal_global_387];

  return v3;
}

+ (void)setMediaViewRenderCoalescingInterval:(double)interval
{
  globalSettings = [self globalSettings];
  interval = [MEMORY[0x1E696AD98] numberWithDouble:1.0 / interval];
  [globalSettings setSetting:interval forKey:@"NU_MEDIAVIEW_COALESCED_UPDATES_PER_SECOND"];
}

+ (double)mediaViewRenderCoalescingInterval
{
  globalSettings = [self globalSettings];
  [globalSettings doubleSettingForKey:@"NU_MEDIAVIEW_COALESCED_UPDATES_PER_SECOND" defaultValue:&__block_literal_global_382_808];
  v4 = v3;

  return 1.0 / v4;
}

double __53__NUGlobalSettings_mediaViewRenderCoalescingInterval__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"NU_MEDIAVIEW_COALESCED_UPDATES_PER_SECOND"];

  if (v1)
  {
    [v1 doubleValue];
    v3 = v2;
  }

  else
  {
    v3 = 30.0;
  }

  return v3;
}

+ (void)setDisableAuxiliaryImageCacheFromSource:(BOOL)source
{
  sourceCopy = source;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:sourceCopy];
  [globalSettings setSetting:v4 forKey:@"NU_DISABLE_AUXILIARY_IMAGE_CACHE_FROM_SOURCE"];
}

+ (BOOL)disableAuxiliaryImageCacheFromSource
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_DISABLE_AUXILIARY_IMAGE_CACHE_FROM_SOURCE" defaultValue:&__block_literal_global_377];

  return v3;
}

+ (void)setEnforceMinimumBitRateForCinematicVideos:(BOOL)videos
{
  videosCopy = videos;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:videosCopy];
  [globalSettings setSetting:v4 forKey:@"NU_ENFORCE_MIN_BITRATE_FOR_CINEMATIC_VIDEO"];
}

+ (BOOL)enforceMinimumBitRateForCinematicVideos
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_ENFORCE_MIN_BITRATE_FOR_CINEMATIC_VIDEO" defaultValue:&__block_literal_global_372];

  return v3;
}

uint64_t __59__NUGlobalSettings_enforceMinimumBitRateForCinematicVideos__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"NU_ENFORCE_MIN_BITRATE_FOR_CINEMATIC_VIDEO"];

  if (!v1)
  {
    return 1;
  }

  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"NU_ENFORCE_MIN_BITRATE_FOR_CINEMATIC_VIDEO"];

  return v3;
}

+ (void)setEnforceMinimumBitRateForExportedVideos:(BOOL)videos
{
  videosCopy = videos;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:videosCopy];
  [globalSettings setSetting:v4 forKey:@"NU_ENFORCE_MIN_BITRATE_FOR_VIDEO"];
}

+ (BOOL)enforceMinimumBitRateForExportedVideos
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_ENFORCE_MIN_BITRATE_FOR_VIDEO" defaultValue:&__block_literal_global_367];

  return v3;
}

uint64_t __58__NUGlobalSettings_enforceMinimumBitRateForExportedVideos__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"NU_ENFORCE_MIN_BITRATE_FOR_VIDEO"];

  return v1;
}

+ (void)setMeteorGainMapExposureCompensationMode:(id)mode
{
  modeCopy = mode;
  globalSettings = [self globalSettings];
  [globalSettings setSetting:modeCopy forKey:@"NU_METEOR_GAIN_MAP_EXPOSURE_COMPENSATION_MODE"];
}

+ (NSString)meteorGainMapExposureCompensationMode
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings stringSettingForKey:@"NU_METEOR_GAIN_MAP_EXPOSURE_COMPENSATION_MODE" defaultValue:&__block_literal_global_362];

  return v3;
}

+ (void)setForceMeteorGainMapGeneration:(BOOL)generation
{
  generationCopy = generation;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:generationCopy];
  [globalSettings setSetting:v4 forKey:@"NU_FORCE_METEOR_GAIN_MAP_GENERATION"];
}

+ (BOOL)forceMeteorGainMapGeneration
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_FORCE_METEOR_GAIN_MAP_GENERATION" defaultValue:&__block_literal_global_357];

  return v3;
}

+ (void)setDisableMeteorGainMapGeneration:(BOOL)generation
{
  generationCopy = generation;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:generationCopy];
  [globalSettings setSetting:v4 forKey:@"NU_DISABLE_METEOR_GAIN_MAP_GENERATION"];
}

+ (BOOL)disableMeteorGainMapGeneration
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_DISABLE_METEOR_GAIN_MAP_GENERATION" defaultValue:&__block_literal_global_352];

  return v3;
}

+ (void)setDebugRenderYellow:(id)yellow
{
  yellowCopy = yellow;
  globalSettings = [self globalSettings];
  [globalSettings setSetting:yellowCopy forKey:@"NU_DEBUG_RENDER_YELLOW"];
}

+ (NSString)debugRenderYellow
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings stringSettingForKey:@"NU_DEBUG_RENDER_YELLOW" defaultValue:&__block_literal_global_347];

  return v3;
}

+ (void)setDebugRenderPurple:(id)purple
{
  purpleCopy = purple;
  globalSettings = [self globalSettings];
  [globalSettings setSetting:purpleCopy forKey:@"NU_DEBUG_RENDER_PURPLE"];
}

+ (NSString)debugRenderPurple
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings stringSettingForKey:@"NU_DEBUG_RENDER_PURPLE" defaultValue:&__block_literal_global_342];

  return v3;
}

+ (void)setDebugRenderBlue:(id)blue
{
  blueCopy = blue;
  globalSettings = [self globalSettings];
  [globalSettings setSetting:blueCopy forKey:@"NU_DEBUG_RENDER_BLUE"];
}

+ (NSString)debugRenderBlue
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings stringSettingForKey:@"NU_DEBUG_RENDER_BLUE" defaultValue:&__block_literal_global_337];

  return v3;
}

+ (void)setAlwaysRequireHardwareVideoEncoder:(BOOL)encoder
{
  encoderCopy = encoder;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:encoderCopy];
  [globalSettings setSetting:v4 forKey:@"NU_ALWAYS_REQUIRE_HARDWARE_VIDEO_ENCODER"];
}

+ (BOOL)alwaysRequireHardwareVideoEncoder
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_ALWAYS_REQUIRE_HARDWARE_VIDEO_ENCODER" defaultValue:&__block_literal_global_332];

  return v3;
}

+ (void)setForceSoftwareVideoEncoder:(BOOL)encoder
{
  encoderCopy = encoder;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:encoderCopy];
  [globalSettings setSetting:v4 forKey:@"NU_FORCE_SOFTWARE_VIDEO_ENCODER"];
}

+ (BOOL)forceSoftwareVideoEncoder
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_FORCE_SOFTWARE_VIDEO_ENCODER" defaultValue:&__block_literal_global_327];

  return v3;
}

uint64_t __45__NUGlobalSettings_forceSoftwareVideoEncoder__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"NU_FORCE_SOFTWARE_VIDEO_ENCODER"];

  return v1;
}

+ (void)setVideoCompositorDebugMode:(unint64_t)mode
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:mode];
  [globalSettings setSetting:v4 forKey:@"NU_VIDEO_COMPOSITOR_DEBUG_MODE"];
}

+ (unint64_t)videoCompositorDebugMode
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings integerSettingForKey:@"NU_VIDEO_COMPOSITOR_DEBUG_MODE" defaultValue:&__block_literal_global_322];

  return v3;
}

+ (void)setThresholdDisplayHeadroom:(double)headroom
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:headroom];
  [globalSettings setSetting:v4 forKey:@"NU_THRESHOLD_DISPLAY_HEADROOM"];
}

+ (double)thresholdDisplayHeadroom
{
  globalSettings = [self globalSettings];
  [globalSettings doubleSettingForKey:@"NU_THRESHOLD_DISPLAY_HEADROOM" defaultValue:&__block_literal_global_317];
  v4 = v3;

  return v4;
}

double __44__NUGlobalSettings_thresholdDisplayHeadroom__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"NU_THRESHOLD_DISPLAY_HEADROOM"];

  if (v1)
  {
    [v1 doubleValue];
    v3 = v2;
  }

  else
  {
    v3 = 2.0;
  }

  return v3;
}

+ (void)setOverrideDisplayHeadroom:(double)headroom
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:headroom];
  [globalSettings setSetting:v4 forKey:@"NU_OVERRIDE_DISPLAY_HEADROOM"];
}

+ (double)overrideDisplayHeadroom
{
  globalSettings = [self globalSettings];
  [globalSettings doubleSettingForKey:@"NU_OVERRIDE_DISPLAY_HEADROOM" defaultValue:&__block_literal_global_312];
  v4 = v3;

  return v4;
}

double __43__NUGlobalSettings_overrideDisplayHeadroom__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 doubleForKey:@"NU_OVERRIDE_DISPLAY_HEADROOM"];
  v2 = v1;

  return v2;
}

+ (void)setDisablePacked10BitPixelFormats:(BOOL)formats
{
  formatsCopy = formats;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:formatsCopy];
  [globalSettings setSetting:v4 forKey:@"NU_DISABLE_PACKED_10BIT_PIXEL_FORMATS"];
}

+ (BOOL)disablePacked10BitPixelFormats
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_DISABLE_PACKED_10BIT_PIXEL_FORMATS" defaultValue:&__block_literal_global_307];

  return v3;
}

uint64_t __50__NUGlobalSettings_disablePacked10BitPixelFormats__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"NU_DISABLE_PACKED_10BIT_PIXEL_FORMATS"];

  return v1;
}

+ (void)setForceMeteorPlusLinear:(BOOL)linear
{
  linearCopy = linear;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:linearCopy];
  [globalSettings setSetting:v4 forKey:@"NU_FORCE_METEOR_PLUS_LINEAR"];
}

+ (BOOL)forceMeteorPlusLinear
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_FORCE_METEOR_PLUS_LINEAR" defaultValue:&__block_literal_global_302];

  return v3;
}

uint64_t __41__NUGlobalSettings_forceMeteorPlusLinear__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"NU_FORCE_METEOR_PLUS_LINEAR"];

  return v1;
}

+ (void)setForceMeteorPlusPlus:(BOOL)plus
{
  plusCopy = plus;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:plusCopy];
  [globalSettings setSetting:v4 forKey:@"NU_FORCE_METEOR_PLUS_PLUS"];
}

+ (BOOL)forceMeteorPlusPlus
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_FORCE_METEOR_PLUS_PLUS" defaultValue:&__block_literal_global_297];

  return v3;
}

uint64_t __39__NUGlobalSettings_forceMeteorPlusPlus__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"NU_FORCE_METEOR_PLUS_PLUS"];

  return v1;
}

+ (void)setRenderEDRAsPQ:(BOOL)q
{
  qCopy = q;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:qCopy];
  [globalSettings setSetting:v4 forKey:@"NU_RENDER_EDR_AS_PQ"];
}

+ (BOOL)renderEDRAsPQ
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_RENDER_EDR_AS_PQ" defaultValue:&__block_literal_global_292];

  return v3;
}

uint64_t __33__NUGlobalSettings_renderEDRAsPQ__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"NU_RENDER_EDR_AS_PQ"];

  return v1;
}

+ (void)setRenderMeteorPlusAsHDR:(BOOL)r
{
  rCopy = r;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:rCopy];
  [globalSettings setSetting:v4 forKey:@"NU_RENDER_METEOR_PLUS_AS_HDR"];
}

+ (BOOL)renderMeteorPlusAsHDR
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_RENDER_METEOR_PLUS_AS_HDR" defaultValue:&__block_literal_global_287];

  return v3;
}

uint64_t __41__NUGlobalSettings_renderMeteorPlusAsHDR__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"NU_RENDER_METEOR_PLUS_AS_HDR"];

  if (v1)
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

+ (void)setEnableFlexRange:(BOOL)range
{
  rangeCopy = range;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:rangeCopy];
  [globalSettings setSetting:v4 forKey:@"NU_ENABLE_FLEX_RANGE"];
}

+ (BOOL)enableFlexRange
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_ENABLE_FLEX_RANGE" defaultValue:&__block_literal_global_282];

  return v3;
}

uint64_t __35__NUGlobalSettings_enableFlexRange__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"NU_ENABLE_FLEX_RANGE"];

  if (v1)
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

+ (void)setMaxGainMapHeadroom:(double)headroom
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:headroom];
  [globalSettings setSetting:v4 forKey:@"NU_MAX_GAINMAP_HEADROOM"];
}

+ (double)maxGainMapHeadroom
{
  globalSettings = [self globalSettings];
  [globalSettings doubleSettingForKey:@"NU_MAX_GAINMAP_HEADROOM" defaultValue:&__block_literal_global_277];
  v4 = v3;

  return v4;
}

+ (double)HLGOpticalScale
{
  globalSettings = [self globalSettings];
  [globalSettings doubleSettingForKey:@"NU_HLG_OPTICAL_SCALE" defaultValue:&__block_literal_global_272];
  v4 = v3;

  return v4;
}

+ (void)setAllAssetsCanUseHDRPipeline:(BOOL)pipeline
{
  pipelineCopy = pipeline;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:pipelineCopy];
  [globalSettings setSetting:v4 forKey:@"NU_ALL_ASSETS_CAN_USE_HDR_PIPELINE"];
}

+ (BOOL)allAssetsCanUseHDRPipeline
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_ALL_ASSETS_CAN_USE_HDR_PIPELINE" defaultValue:&__block_literal_global_267];

  return v3;
}

uint64_t __46__NUGlobalSettings_allAssetsCanUseHDRPipeline__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"NU_ALL_ASSETS_CAN_USE_HDR_PIPELINE"];

  return v1;
}

+ (void)setEnableHDRSupport:(BOOL)support
{
  supportCopy = support;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:supportCopy];
  [globalSettings setSetting:v4 forKey:@"NU_ENABLE_HDR_SUPPORT"];
}

+ (BOOL)enableHDRSupport
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_ENABLE_HDR_SUPPORT" defaultValue:&__block_literal_global_262];

  return v3;
}

uint64_t __36__NUGlobalSettings_enableHDRSupport__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"NU_ENABLE_HDR_SUPPORT"];

  if (v1)
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

+ (void)setDisableIOSurfacePortaitExport:(BOOL)export
{
  exportCopy = export;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:exportCopy];
  [globalSettings setSetting:v4 forKey:@"NU_DISABLE_IOSURFACE_PORTRAIT_EXPORT"];
}

+ (BOOL)disableIOSurfacePortaitExport
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_DISABLE_IOSURFACE_PORTRAIT_EXPORT" defaultValue:&__block_literal_global_257];

  return v3;
}

uint64_t __49__NUGlobalSettings_disableIOSurfacePortaitExport__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"NU_DISABLE_IOSURFACE_PORTRAIT_EXPORT"];

  return v1;
}

+ (void)setRunNeutrinoSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:synchronouslyCopy];
  [globalSettings setSetting:v4 forKey:@"NU_RUN_SYNCHRONOUSLY"];
}

+ (BOOL)runNeutrinoSynchronously
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_RUN_SYNCHRONOUSLY" defaultValue:&__block_literal_global_252];

  return v3;
}

uint64_t __44__NUGlobalSettings_runNeutrinoSynchronously__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"NU_RUN_SYNCHRONOUSLY"];

  return v1;
}

+ (void)setLogPeakRenderCIUsuage:(BOOL)usuage
{
  usuageCopy = usuage;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:usuageCopy];
  [globalSettings setSetting:v4 forKey:@"NU_SHOW_PEAK_RENDER_MEMORY"];
}

+ (BOOL)logPeakRenderCIUsuage
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_SHOW_PEAK_RENDER_MEMORY" defaultValue:&__block_literal_global_247];

  return v3;
}

+ (void)setUpCacheNodeDirectoryWithComponent:(id)component
{
  v3 = MEMORY[0x1E696AC08];
  componentCopy = component;
  defaultManager = [v3 defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];
  v7 = [temporaryDirectory URLByAppendingPathComponent:componentCopy];

  [NUGlobalSettings setCacheNodeDirectoryURL:v7];
  [NUGlobalSettings setCacheNodeFilePermissions:511];
  +[NUCacheNode clearCacheDirectory];
}

+ (void)setRenderTransparencyOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:opaqueCopy];
  [globalSettings setSetting:v4 forKey:@"NU_RENDER_TRANSPARENCY_OPAQUE"];
}

+ (BOOL)renderTransparencyOpaque
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_RENDER_TRANSPARENCY_OPAQUE" defaultValue:&__block_literal_global_241];

  return v3;
}

+ (void)setRenderTransparencyOverBlack:(BOOL)black
{
  blackCopy = black;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:blackCopy];
  [globalSettings setSetting:v4 forKey:@"NU_RENDER_TRANSPARENCY_OVER_BLACK"];
}

+ (BOOL)renderTransparencyOverBlack
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_RENDER_TRANSPARENCY_OVER_BLACK" defaultValue:&__block_literal_global_236];

  return v3;
}

+ (void)setDisplayDisableColorMatching:(BOOL)matching
{
  matchingCopy = matching;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:matchingCopy];
  [globalSettings setSetting:v4 forKey:@"NU_DISPLAY_DISABLE_COLOR_MATCHING"];
}

+ (BOOL)displayDisableColorMatching
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_DISPLAY_DISABLE_COLOR_MATCHING" defaultValue:&__block_literal_global_231];

  return v3;
}

+ (void)setDisplayForceDeepColor:(BOOL)color
{
  colorCopy = color;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:colorCopy];
  [globalSettings setSetting:v4 forKey:@"NU_DISPLAY_FORCE_DEEP_COLOR"];
}

+ (BOOL)displayForceDeepColor
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_DISPLAY_FORCE_DEEP_COLOR" defaultValue:&__block_literal_global_226];

  return v3;
}

uint64_t __41__NUGlobalSettings_displayForceDeepColor__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"NU_DISPLAY_FORCE_DEEP_COLOR"];

  return v1;
}

+ (void)setDisplayDisableDeepColor:(BOOL)color
{
  colorCopy = color;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:colorCopy];
  [globalSettings setSetting:v4 forKey:@"NU_DISPLAY_DISABLE_DEEP_COLOR"];
}

+ (BOOL)displayDisableDeepColor
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_DISPLAY_DISABLE_DEEP_COLOR" defaultValue:&__block_literal_global_221];

  return v3;
}

+ (void)setImageLayerDebug:(BOOL)debug
{
  debugCopy = debug;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:debugCopy];
  [globalSettings setSetting:v4 forKey:@"NU_IMAGE_LAYER_DEBUG"];
}

+ (BOOL)imageLayerDebug
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_IMAGE_LAYER_DEBUG" defaultValue:&__block_literal_global_216];

  return v3;
}

+ (void)setPipelineSourceURL:(id)l
{
  lCopy = l;
  globalSettings = [self globalSettings];
  [globalSettings setSetting:lCopy forKey:@"NU_PIPELINE_SOURCE_URL"];
}

+ (NSURL)pipelineSourceURL
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings urlSettingForKey:@"NU_PIPELINE_SOURCE_URL" defaultValue:&__block_literal_global_211];

  return v3;
}

+ (void)setPlatformHasWideColor:(BOOL)color
{
  colorCopy = color;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:colorCopy];
  [globalSettings setSetting:v4 forKey:@"NU_PLATFORM_HAS_WIDE_COLOR"];
}

+ (BOOL)platformHasWideColor
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_PLATFORM_HAS_WIDE_COLOR" defaultValue:&__block_literal_global_203];

  return v3;
}

+ (void)setRenderVideoLive:(BOOL)live
{
  liveCopy = live;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:liveCopy];
  [globalSettings setSetting:v4 forKey:@"NU_PLATFORM_RENDER_VIDEO_LIVE"];
}

+ (BOOL)renderVideoLive
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_PLATFORM_RENDER_VIDEO_LIVE" defaultValue:&__block_literal_global_198];

  return v3;
}

uint64_t __35__NUGlobalSettings_renderVideoLive__block_invoke()
{
  v0 = +[NUPlatform currentPlatform];
  v1 = [v0 defaultSupportsLiveVideoRendering];

  return v1;
}

+ (void)setCacheNodeDirectoryURL:(id)l
{
  lCopy = l;
  globalSettings = [self globalSettings];
  [globalSettings setSetting:lCopy forKey:@"NU_CACHE_NODE_DIRECTORY"];
}

+ (NSURL)cacheNodeDirectoryURL
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings urlSettingForKey:@"NU_CACHE_NODE_DIRECTORY" defaultValue:&__block_literal_global_189];

  return v3;
}

id __41__NUGlobalSettings_cacheNodeDirectoryURL__block_invoke()
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = [v0 URLsForDirectory:13 inDomains:1];

  if ([v1 count])
  {
    v2 = [v1 firstObject];
  }

  else
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v2 = [v3 temporaryDirectory];
  }

  v4 = [v2 URLByAppendingPathComponent:@"com.apple.neutrino.cache.node"];

  return v4;
}

+ (void)setViewDebugEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [globalSettings setSetting:v4 forKey:@"NU_VIEW_DEBUG_ENABLED"];
}

+ (BOOL)isViewDebugEnabled
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_VIEW_DEBUG_ENABLED" defaultValue:&__block_literal_global_184_839];

  return v3;
}

+ (void)setCacheNodeImageCompression:(double)compression
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:compression];
  [globalSettings setSetting:v4 forKey:@"NU_CACHE_NODE_IMAGE_COMPRESSION"];
}

+ (double)cacheNodeImageCompression
{
  globalSettings = [self globalSettings];
  [globalSettings doubleSettingForKey:@"NU_CACHE_NODE_IMAGE_COMPRESSION" defaultValue:&__block_literal_global_179];
  v4 = v3;

  return v4;
}

+ (void)setCacheNodeFilePermissions:(int64_t)permissions
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:permissions];
  [globalSettings setSetting:v4 forKey:@"NU_CACHE_NODE_FILE_PERMISSIONS"];
}

+ (int64_t)cacheNodeFilePermissions
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings integerSettingForKey:@"NU_CACHE_NODE_FILE_PERMISSIONS" defaultValue:&__block_literal_global_174];

  return v3;
}

+ (void)setCacheNodeCacheSizeLimit:(int64_t)limit
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:limit];
  [globalSettings setSetting:v4 forKey:@"NU_CACHE_NODE_CACHE_SIZE_LIMIT"];
}

+ (int64_t)cacheNodeCacheSizeLimit
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings integerSettingForKey:@"NU_CACHE_NODE_CACHE_SIZE_LIMIT" defaultValue:&__block_literal_global_169];

  return v3;
}

+ (void)setImageSourceDisableCacheImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:immediatelyCopy];
  [globalSettings setSetting:v4 forKey:@"NU_IMAGE_SOURCE_DISABLE_CACHE_IMMEDIATELY"];
}

+ (BOOL)imageSourceDisableCacheImmediately
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_IMAGE_SOURCE_DISABLE_CACHE_IMMEDIATELY" defaultValue:&__block_literal_global_164];

  return v3;
}

+ (void)setImageSourceDisableRAW:(BOOL)w
{
  wCopy = w;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:wCopy];
  [globalSettings setSetting:v4 forKey:@"NU_IMAGE_SOURCE_DISABLE_RAW"];
}

+ (BOOL)imageSourceDisableRAW
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_IMAGE_SOURCE_DISABLE_RAW" defaultValue:&__block_literal_global_159];

  return v3;
}

+ (void)setImageTileBorder:(int64_t)border
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:border];
  [globalSettings setSetting:v4 forKey:@"NU_IMAGE_TILE_BORDER"];
}

+ (int64_t)imageTileBorder
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings integerSettingForKey:@"NU_IMAGE_TILE_BORDER" defaultValue:&__block_literal_global_154];

  return v3;
}

+ (void)setImageTileSize:(int64_t)size
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:size];
  [globalSettings setSetting:v4 forKey:@"NU_IMAGE_TILE_SIZE"];
}

+ (int64_t)imageTileSize
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings integerSettingForKey:@"NU_IMAGE_TILE_SIZE" defaultValue:&__block_literal_global_149];

  return v3;
}

+ (void)setRendererContextLowMemoryTarget:(int64_t)target
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:target];
  [globalSettings setSetting:v4 forKey:@"NU_RENDERER_CONTEXT_LOW_MEMORY_TARGET"];
}

+ (int64_t)rendererContextLowMemoryTarget
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings integerSettingForKey:@"NU_RENDERER_CONTEXT_LOW_MEMORY_TARGET" defaultValue:&__block_literal_global_144];

  return v3;
}

+ (void)setRendererContextLargeMemoryTarget:(int64_t)target
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:target];
  [globalSettings setSetting:v4 forKey:@"NU_RENDERER_CONTEXT_LARGE_MEMORY_TARGET"];
}

+ (int64_t)rendererContextLargeMemoryTarget
{
  rendererContextDefaultMemoryTarget = [self rendererContextDefaultMemoryTarget];
  globalSettings = [self globalSettings];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__NUGlobalSettings_rendererContextLargeMemoryTarget__block_invoke;
  v7[3] = &__block_descriptor_40_e5_q8__0l;
  v7[4] = rendererContextDefaultMemoryTarget;
  v5 = [globalSettings integerSettingForKey:@"NU_RENDERER_CONTEXT_LARGE_MEMORY_TARGET" defaultValue:v7];

  return v5;
}

+ (void)setRendererContextDefaultMemoryTarget:(int64_t)target
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:target];
  [globalSettings setSetting:v4 forKey:@"NU_RENDERER_CONTEXT_DEFAULT_MEMORY_TARGET"];
}

+ (int64_t)rendererContextDefaultMemoryTarget
{
  v3 = +[NUPlatform currentPlatform];
  supportsSemanticStyleRendering = [v3 supportsSemanticStyleRendering];

  if (supportsSemanticStyleRendering)
  {
    v5 = 384;
  }

  else
  {
    v5 = 256;
  }

  globalSettings = [self globalSettings];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__NUGlobalSettings_rendererContextDefaultMemoryTarget__block_invoke;
  v9[3] = &__block_descriptor_40_e5_q8__0l;
  v9[4] = v5;
  v7 = [globalSettings integerSettingForKey:@"NU_RENDERER_CONTEXT_DEFAULT_MEMORY_TARGET" defaultValue:v9];

  return v7;
}

+ (void)setRendererUseP3Linear:(BOOL)linear
{
  linearCopy = linear;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:linearCopy];
  [globalSettings setSetting:v4 forKey:@"NU_RENDERER_USE_P3_LINEAR"];
}

+ (BOOL)rendererUseP3Linear
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_RENDERER_USE_P3_LINEAR" defaultValue:&__block_literal_global_132];

  return v3;
}

+ (void)setRendererClampToAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:alphaCopy];
  [globalSettings setSetting:v4 forKey:@"NU_RENDERER_CLAMP_TO_ALPHA"];
}

+ (BOOL)rendererClampToAlpha
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_RENDERER_CLAMP_TO_ALPHA" defaultValue:&__block_literal_global_127];

  return v3;
}

+ (void)setRendererUseHalfFloat:(BOOL)float
{
  floatCopy = float;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:floatCopy];
  [globalSettings setSetting:v4 forKey:@"NU_RENDERER_USE_HALF_FLOAT"];
}

+ (BOOL)rendererUseHalfFloat
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_RENDERER_USE_HALF_FLOAT" defaultValue:&__block_literal_global_121];

  return v3;
}

+ (void)setImageRenderJobUseTextureRenderer:(BOOL)renderer
{
  rendererCopy = renderer;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:rendererCopy];
  [globalSettings setSetting:v4 forKey:@"NU_IMAGE_RENDER_JOB_USE_TEXTURE_RENDERER"];
}

+ (BOOL)imageRenderJobUseTextureRenderer
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_IMAGE_RENDER_JOB_USE_TEXTURE_RENDERER" defaultValue:&__block_literal_global_116];

  return v3;
}

+ (void)setImageRenderJobUseSurfaceRenderer:(BOOL)renderer
{
  rendererCopy = renderer;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:rendererCopy];
  [globalSettings setSetting:v4 forKey:@"NU_IMAGE_RENDER_JOB_USE_SURFACE_RENDERER"];
}

+ (BOOL)imageRenderJobUseSurfaceRenderer
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_IMAGE_RENDER_JOB_USE_SURFACE_RENDERER" defaultValue:&__block_literal_global_111];

  return v3;
}

+ (void)setBufferStorageFactoryUsePool:(BOOL)pool
{
  poolCopy = pool;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:poolCopy];
  [globalSettings setSetting:v4 forKey:@"NU_BUFFER_STORAGE_FACTORY_USE_POOL"];
}

+ (BOOL)bufferStorageFactoryUsePool
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_BUFFER_STORAGE_FACTORY_USE_POOL" defaultValue:&__block_literal_global_106];

  return v3;
}

+ (void)setSurfaceStorageFactoryUsePool:(BOOL)pool
{
  poolCopy = pool;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:poolCopy];
  [globalSettings setSetting:v4 forKey:@"NU_SURFACE_STORAGE_FACTORY_USE_POOL"];
}

+ (BOOL)surfaceStorageFactoryUsePool
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_SURFACE_STORAGE_FACTORY_USE_POOL" defaultValue:&__block_literal_global_101];

  return v3;
}

+ (void)setStoragePoolMigrationDelay:(double)delay
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:delay];
  [globalSettings setSetting:v4 forKey:@"NU_STORAGE_POOL_MIGRATION_DELAY"];
}

+ (double)storagePoolMigrationDelay
{
  globalSettings = [self globalSettings];
  [globalSettings doubleSettingForKey:@"NU_STORAGE_POOL_MIGRATION_DELAY" defaultValue:&__block_literal_global_96];
  v4 = v3;

  return v4;
}

+ (void)setStoragePoolPurgeableLimit:(int64_t)limit
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:limit];
  [globalSettings setSetting:v4 forKey:@"NU_STORAGE_POOL_PURGEABLE_LIMIT"];
}

+ (int64_t)storagePoolPurgeableLimit
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings integerSettingForKey:@"NU_STORAGE_POOL_PURGEABLE_LIMIT" defaultValue:&__block_literal_global_90];

  return v3;
}

+ (void)setStoragePoolNonPurgeableLimit:(int64_t)limit
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:limit];
  [globalSettings setSetting:v4 forKey:@"NU_STORAGE_POOL_NONPURGEABLE_LIMIT"];
}

+ (int64_t)storagePoolNonPurgeableLimit
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings integerSettingForKey:@"NU_STORAGE_POOL_NONPURGEABLE_LIMIT" defaultValue:&__block_literal_global_85];

  return v3;
}

+ (void)setResampleInSourceColorSpace:(BOOL)space
{
  spaceCopy = space;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:spaceCopy];
  [globalSettings setSetting:v4 forKey:@"NU_RESAMPLE_IN_SOURCE_COLOR_SPACE"];
}

+ (BOOL)resampleInSourceColorSpace
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_RESAMPLE_IN_SOURCE_COLOR_SPACE" defaultValue:&__block_literal_global_80];

  return v3;
}

+ (void)setDeviceDefaultSampleMode:(int64_t)mode
{
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  [globalSettings setSetting:v4 forKey:@"NU_DEVICE_DEFAULT_SAMPLE_MODE"];
}

+ (int64_t)deviceDefaultSampleMode
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings integerSettingForKey:@"NU_DEVICE_DEFAULT_SAMPLE_MODE" defaultValue:&__block_literal_global_75];

  return v3;
}

+ (void)setDevicePrintRenderer:(BOOL)renderer
{
  rendererCopy = renderer;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:rendererCopy];
  [globalSettings setSetting:v4 forKey:@"NU_DEVICE_PRINT_RENDERER"];
}

+ (BOOL)devicePrintRenderer
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_DEVICE_PRINT_RENDERER" defaultValue:&__block_literal_global_68];

  return v3;
}

uint64_t __39__NUGlobalSettings_devicePrintRenderer__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"NU_DEVICE_PRINT_RENDERER"];

  return v1;
}

+ (BOOL)deviceDisableMetal
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_DEVICE_DISABLE_METAL" defaultValue:&__block_literal_global_63];

  return v3;
}

+ (void)setTempDir:(id)dir
{
  dirCopy = dir;
  globalSettings = [self globalSettings];
  [globalSettings setSetting:dirCopy forKey:@"NU_TEMP_DIR"];
}

+ (NSString)tempDir
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings stringSettingForKey:@"NU_TEMP_DIR" defaultValue:&__block_literal_global_51];

  return v3;
}

id __27__NUGlobalSettings_tempDir__block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = NSTemporaryDirectory();
  v2 = [v0 stringWithFormat:@"%@%@", v1, @"/Neutrino"];

  return v2;
}

+ (void)setRenderJobDebugCapture5PercentOfJobs:(BOOL)jobs
{
  jobsCopy = jobs;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:jobsCopy];
  [globalSettings setSetting:v4 forKey:@"NU_RENDER_JOB_DEBUG_CAPTURE_5_PERCENT_OF_JOBS"];
}

+ (BOOL)renderJobDebugCapture5PercentOfJobs
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_RENDER_JOB_DEBUG_CAPTURE_5_PERCENT_OF_JOBS" defaultValue:&__block_literal_global_46];

  return v3;
}

+ (void)setRenderJobDebugCaptureOnlyPerfStats:(BOOL)stats
{
  statsCopy = stats;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:statsCopy];
  [globalSettings setSetting:v4 forKey:@"NU_RENDER_JOB_DEBUG_CAPTURE_ONLY_PERF_STATS"];
}

+ (BOOL)renderJobDebugCaptureOnlyPerfStats
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_RENDER_JOB_DEBUG_CAPTURE_ONLY_PERF_STATS" defaultValue:&__block_literal_global_41];

  return v3;
}

+ (void)setRenderJobDebugCapturePerfStatHistory:(BOOL)history
{
  historyCopy = history;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:historyCopy];
  [globalSettings setSetting:v4 forKey:@"NU_RENDER_JOB_DEBUG_CAPTURE_PERF_STAT_HISTORY"];
}

+ (BOOL)renderJobDebugCapturePerfStatHistory
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_RENDER_JOB_DEBUG_CAPTURE_PERF_STAT_HISTORY" defaultValue:&__block_literal_global_36];

  return v3;
}

+ (void)setRenderJobDebugCaptureNodeCache:(BOOL)cache
{
  cacheCopy = cache;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:cacheCopy];
  [globalSettings setSetting:v4 forKey:@"NU_RENDER_JOB_DEBUG_CAPTURE_NODE_CACHE"];
}

+ (BOOL)renderJobDebugCaptureNodeCache
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_RENDER_JOB_DEBUG_CAPTURE_NODE_CACHE" defaultValue:&__block_literal_global_31];

  return v3;
}

+ (void)setRenderJobDebugCaptureNodeGraphs:(BOOL)graphs
{
  graphsCopy = graphs;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:graphsCopy];
  [globalSettings setSetting:v4 forKey:@"NU_RENDER_JOB_DEBUG_CAPTURE_NODE_GRAPHS"];
}

+ (BOOL)renderJobDebugCaptureNodeGraphs
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_RENDER_JOB_DEBUG_CAPTURE_NODE_GRAPHS" defaultValue:&__block_literal_global_26];

  return v3;
}

+ (void)setRenderJobDebugCaptureCanceledJobs:(BOOL)jobs
{
  jobsCopy = jobs;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:jobsCopy];
  [globalSettings setSetting:v4 forKey:@"NU_RENDER_JOB_DEBUG_CAPTURE_CANCELED_JOBS"];
}

+ (BOOL)renderJobDebugCaptureCanceledJobs
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_RENDER_JOB_DEBUG_CAPTURE_CANCELED_JOBS" defaultValue:&__block_literal_global_21];

  return v3;
}

+ (void)setRenderJobDisableResultCache:(BOOL)cache
{
  cacheCopy = cache;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:cacheCopy];
  [globalSettings setSetting:v4 forKey:@"NU_RENDER_JOB_DISABLE_RESULT_CACHE"];
}

+ (BOOL)renderJobDisableResultCache
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_RENDER_JOB_DISABLE_RESULT_CACHE" defaultValue:&__block_literal_global_16_918];

  return v3;
}

+ (void)setRenderJobDebug:(BOOL)debug
{
  debugCopy = debug;
  globalSettings = [self globalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:debugCopy];
  [globalSettings setSetting:v4 forKey:@"NU_RENDER_JOB_DEBUG"];
}

+ (BOOL)renderJobDebug
{
  globalSettings = [self globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"NU_RENDER_JOB_DEBUG" defaultValue:&__block_literal_global_11];

  return v3;
}

+ (void)reset
{
  globalSettings = [self globalSettings];
  [globalSettings reset];
}

@end