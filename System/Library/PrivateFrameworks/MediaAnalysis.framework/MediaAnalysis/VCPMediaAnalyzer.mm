@interface VCPMediaAnalyzer
+ (BOOL)isBridgeVersionCompatible;
+ (Class)_getDistanceDescriptorClass;
+ (id)classifyFaceObservation:(id)observation withPersonsModel:(id)model error:(id *)error;
+ (id)loadPersonModelAtPath:(id)path error:(id *)error;
+ (id)personModelFilepathForPhotoLibrary:(id)library;
+ (id)sharedMediaAnalyzer;
+ (unint64_t)faceprintRevisionForPersonModel:(id)model;
+ (void)getEmbeddingFormatForVersion:(unint64_t)version dimension:(int *)dimension type:(unint64_t *)type error:(id *)error;
- ($AFC8CF76A46F37F9FB23C20884F4FD99)postProcessMovieHighlightDuration:(SEL)duration withOptions:(id)options;
- (BOOL)cancelAnalysisWithRequestID:(int)d;
- (VCPMediaAnalyzer)init;
- (id)_addClassificationResults:(id)results analysis:(id)analysis;
- (id)_analyzeOndemand:(id)ondemand forAnalysisTypes:(unint64_t)types withExistingAnalysis:(id)analysis andOptions:(id)options storeAnalysis:(BOOL)storeAnalysis cancelBlock:(id)block;
- (id)_databaseForPhotoLibrary:(id)library;
- (id)_postProcessMovieHighlights:(id)highlights analysis:(id)analysis withOptions:(id)options;
- (id)_queryDistanceDescriptor:(Class)descriptor ofAsset:(id)asset withExistingAnalysis:(id)analysis andDatabase:(id)database timeRange:(id *)range lastFeature:(BOOL)feature isDegraded:(BOOL *)degraded;
- (id)_requestAnalysis:(unint64_t)analysis forAsset:(id)asset withExistingAnalysis:(id)existingAnalysis andDatabase:(id)database andOptions:(id)options cancelBlock:(id)block;
- (id)analyzeOndemand:(id)ondemand pairedURL:(id)l forAnalysisTypes:(unint64_t)types error:(id *)error;
- (id)connection;
- (id)curateMovieAssetsForCollection:(id)collection withAlreadyCuratedAssets:(id)assets andDesiredCount:(unint64_t)count allowOnDemand:(BOOL)demand;
- (id)findTimeRangesFor:(id)for inAsset:(id)asset withOptions:(id)options results:(id)results andError:(id *)error;
- (id)getAnalysisResultsForURLAsset:(id)asset;
- (id)getFaceIDRanges:(id)ranges asset:(id)asset;
- (id)getOverlapPersonRanges:(id)ranges;
- (id)getThumbnailTimerange:(id)timerange;
- (id)getTimeRangesForActionIDs:(id)ds withResults:(id)results;
- (id)getTimeRangesForSceneIdentifiers:(id)identifiers withResults:(id)results;
- (id)getTimeRangesForSoundIdentifiers:(id)identifiers withResults:(id)results;
- (id)getTimeRangesForThumbnailIdentifiers:(id)identifiers withResults:(id)results;
- (id)getTimeRangesInAsset:(id)asset forAnimals:(id)animals withAnalysis:(id)analysis;
- (id)getTimeRangesInAsset:(id)asset forFaces:(id)faces withAnalysis:(id)analysis;
- (id)getTimeRangesInAsset:(id)asset forPersonLocalIdentifiers:(id)identifiers withAnalysis:(id)analysis;
- (id)getTimeRangesWithSearchResults:(id)results;
- (id)loadAssetsFromPhotoLibrary:(id)library withAssetIdentifiers:(id)identifiers;
- (id)loadEmbeddingSearchResultWithContext:(id)context forPhotoLibraryURL:(id)l fromAssets:(id)assets withOptions:(id)options;
- (id)loadVideoAssetsFromPhotoLibraryURL:(id)l withAssetIdentifiers:(id)identifiers;
- (id)mergeTimeRanges:(id)ranges mergeGap:(id)gap;
- (id)postProcessTimeRanges:(id)ranges options:(id)options;
- (id)prepareContextsQueryEmbedding:(id)embedding;
- (id)rankAssetsWithContext:(id)context forAssetIdentifiers:(id)identifiers forPhotoLibraryURL:(id)l withOptions:(id)options error:(id *)error;
- (id)requestAnalysis:(unint64_t)analysis forAssets:(id)assets withOptions:(id)options andProgressHandler:(id)handler andError:(id *)error;
- (id)requestAnalysisTypes:(unint64_t)types forAssetWithResourceURLs:(id)ls withOptions:(id)options error:(id *)error;
- (id)requestAnalysisTypes:(unint64_t)types forAssets:(id)assets allowOndemand:(BOOL)ondemand progressHandler:(id)handler error:(id *)error;
- (id)requestLivePhotoEffectsForAssets:(id)assets allowOnDemand:(BOOL)demand flags:(unint64_t)flags;
- (id)requestMovieHighlightsForAssets:(id)assets withOptions:(id)options;
- (id)requestSearchResultsForAssets:(id)assets forPhotoLibraryURL:(id)l withQueryEmbeddings:(id)embeddings matchingScoreOnly:(BOOL)only options:(id)options;
- (id)requestSearchResultsForAssets:(id)assets forPhotoLibraryURL:(id)l withQueryEmbeddings:(id)embeddings options:(id)options;
- (id)searchForQuery:(id)query forAssets:(id)assets withOptions:(id)options matchingScoreOnly:(BOOL)only isURLAsset:(BOOL)asset analyses:(id)analyses;
- (int)findTimeRangesFor:(id)for inAsset:(id)asset withOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)findTimeRangesFor:(id)for inURLAsset:(id)asset withOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)findTimeRangesWithContext:(id)context inAsset:(id)asset withOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)findTimeRangesWithContext:(id)context inURLAsset:(id)asset withOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestAnalysesForAssets:(id)assets analysisTypes:(unint64_t)types allowOndemand:(BOOL)ondemand progressHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestAnalysis:(unint64_t)analysis forAssets:(id)assets withOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestAnalysisForAsset:(id)asset analysisTypes:(unint64_t)types progressHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestAnalysisTypes:(unint64_t)types forAssets:(id)assets withOptions:(id)options andProgressHandler:(id)handler cancelBlock:(id)block analyses:(id)analyses;
- (int64_t)_getDatabaseSandboxExtensionForPhotoLibraryURL:(id)l;
- (int64_t)_getSandboxExtensionForMediaAnalysisDatabaseWithPhotoLibraryURL:(id)l;
- (unint64_t)_typesToRemove:(unint64_t)remove requested:(unint64_t)requested;
- (void)_checkDuplicate:(id)duplicate withAsset:(id)asset duplicate:(int64_t *)a5;
- (void)_getSceneDescriptors:(id)descriptors asDescriptorClass:(Class)class withSceneRange:(id *)range andAnalysisResults:(id)results;
- (void)_setupMediaAnalysisServiceConnection;
- (void)addVideoRankingSignalsToDictionary:(id)dictionary fromPhotoLibraryURL:(id)l amongAssets:(id)assets;
- (void)assetsFromPhotoLibrary:(id)library analyzedSinceDate:(id)date completionHandler:(id)handler;
- (void)dealloc;
- (void)distanceFromAsset:(id)asset timeRange:(id *)range toAsset:(id)toAsset timeRange:(id *)timeRange duplicate:(int64_t *)duplicate distance:(float *)distance;
- (void)distanceFromAsset:(id)asset toAsset:(id)toAsset duplicate:(int64_t *)duplicate distance:(float *)distance;
@end

@implementation VCPMediaAnalyzer

- (VCPMediaAnalyzer)init
{
  v29.receiver = self;
  v29.super_class = VCPMediaAnalyzer;
  v2 = [(VCPMediaAnalyzer *)&v29 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mediaanalysis.ondemand", 0);
    analysisQueue = v2->_analysisQueue;
    v2->_analysisQueue = v3;

    v5 = dispatch_queue_create("com.apple.mediaanalysis.storage", 0);
    storageQueue = v2->_storageQueue;
    v2->_storageQueue = v5;

    v7 = dispatch_queue_create("com.apple.mediaanalysis.search", 0);
    searchQueue = v2->_searchQueue;
    v2->_searchQueue = v7;

    v9 = dispatch_group_create();
    storageGroup = v2->_storageGroup;
    v2->_storageGroup = v9;

    standalone = v2->_standalone;
    v2->_standalone = 0;

    noResultStrip = v2->_noResultStrip;
    v2->_noResultStrip = 0;

    connection = v2->_connection;
    v2->_connection = 0;

    mediaAnalysisServiceConnection = v2->_mediaAnalysisServiceConnection;
    v2->_mediaAnalysisServiceConnection = 0;

    v15 = dispatch_queue_create("com.apple.mediaanalysis.VCPMediaAnalyzer.sandboxQueue", 0);
    sandboxQueue = v2->_sandboxQueue;
    v2->_sandboxQueue = v15;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    sandboxHandles = v2->_sandboxHandles;
    v2->_sandboxHandles = dictionary;

    atomic_store(0, &v2->_nextRequestID);
    v19 = dispatch_queue_create("com.apple.mediaanalysis.VCPMediaAnalyzer.cancelQueue", 0);
    cancelQueue = v2->_cancelQueue;
    v2->_cancelQueue = v19;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    cancelTokens = v2->_cancelTokens;
    v2->_cancelTokens = dictionary2;

    if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      v23 = objc_alloc_init(VCPTextEncoder);
      textEncoder = v2->_textEncoder;
      v2->_textEncoder = v23;

      v25 = objc_alloc_init(VCPFreeFormSearch);
      freeFormSearch = v2->_freeFormSearch;
      v2->_freeFormSearch = v25;
    }

    v27 = v2;
  }

  return v2;
}

+ (id)sharedMediaAnalyzer
{
  if (+[VCPMediaAnalyzer sharedMediaAnalyzer]::once != -1)
  {
    +[VCPMediaAnalyzer sharedMediaAnalyzer];
  }

  v3 = +[VCPMediaAnalyzer sharedMediaAnalyzer]::instance;

  return v3;
}

void __39__VCPMediaAnalyzer_sharedMediaAnalyzer__block_invoke()
{
  v0 = objc_alloc_init(VCPMediaAnalyzer);
  v1 = +[VCPMediaAnalyzer sharedMediaAnalyzer]::instance;
  +[VCPMediaAnalyzer sharedMediaAnalyzer]::instance = v0;
}

+ (BOOL)isBridgeVersionCompatible
{
  getUnifiedEmbeddingVersion = [self getUnifiedEmbeddingVersion];
  v3 = objc_alloc_init(_MADObjCModelCatalogModel);
  LOBYTE(getUnifiedEmbeddingVersion) = [VCPImageBackboneAnalyzer isBridgeVersion:[VCPVideoTransformerBackbone embeddingVersionForRevision:[(_MADObjCModelCatalogModel *)v3 getBridgeEmbeddingVersion]] compatibleWithEmbeddingVersion:getUnifiedEmbeddingVersion];

  return getUnifiedEmbeddingVersion;
}

+ (void)getEmbeddingFormatForVersion:(unint64_t)version dimension:(int *)dimension type:(unint64_t *)type error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ((version & 0xFFFFFFFFFFFFFFFDLL) == 5)
  {
    if (dimension)
    {
      *dimension = 512;
    }

    if (type)
    {
      *type = 1;
    }
  }

  else if (error)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"version %d is not supported", dimension, type, version, *MEMORY[0x1E696A578]];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [v7 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v9];
  }
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_sandboxHandles allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v6) longLongValue];
        sandbox_extension_release();
        ++v6;
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [(NSXPCConnection *)self->_connection invalidate];
  [(NSXPCConnection *)self->_mediaAnalysisServiceConnection invalidate];
  v7.receiver = self;
  v7.super_class = VCPMediaAnalyzer;
  [(VCPMediaAnalyzer *)&v7 dealloc];
}

- (void)_setupMediaAnalysisServiceConnection
{
  if (!self->_mediaAnalysisServiceConnection)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.mediaanalysisd.analysis" options:0];
    mediaAnalysisServiceConnection = self->_mediaAnalysisServiceConnection;
    self->_mediaAnalysisServiceConnection = v3;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4A19D30];
    [(NSXPCConnection *)self->_mediaAnalysisServiceConnection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)self->_mediaAnalysisServiceConnection setInterruptionHandler:&__block_literal_global_890];
    objc_initWeak(&location, self);
    v6 = self->_mediaAnalysisServiceConnection;
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __56__VCPMediaAnalyzer__setupMediaAnalysisServiceConnection__block_invoke_891;
    v10 = &unk_1E834D098;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)v6 setInvalidationHandler:&v7];
    [(NSXPCConnection *)self->_mediaAnalysisServiceConnection resume:v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __56__VCPMediaAnalyzer__setupMediaAnalysisServiceConnection__block_invoke()
{
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *v0 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPMediaAnalyzer] Client XPC connection interrupted", v0, 2u);
  }
}

void __56__VCPMediaAnalyzer__setupMediaAnalysisServiceConnection__block_invoke_891(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VCPMediaAnalyzer] Client XPC connection invalidated", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[10];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__VCPMediaAnalyzer__setupMediaAnalysisServiceConnection__block_invoke_892;
    block[3] = &unk_1E834BDC0;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

void __56__VCPMediaAnalyzer__setupMediaAnalysisServiceConnection__block_invoke_892(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  *(v1 + 72) = 0;
}

- (int64_t)_getSandboxExtensionForMediaAnalysisDatabaseWithPhotoLibraryURL:(id)l
{
  lCopy = l;
  [(VCPMediaAnalyzer *)self _setupMediaAnalysisServiceConnection];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPMediaAnalyzer] Acquiring media analysis directory sandbox extension...", buf, 2u);
  }

  *buf = 0;
  v18 = buf;
  v19 = 0x2020000000;
  v20 = -1;
  v5 = dispatch_semaphore_create(0);
  mediaAnalysisServiceConnection = self->_mediaAnalysisServiceConnection;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__VCPMediaAnalyzer__getSandboxExtensionForMediaAnalysisDatabaseWithPhotoLibraryURL___block_invoke;
  v15[3] = &unk_1E834C9A0;
  v7 = v5;
  v16 = v7;
  v8 = [(NSXPCConnection *)mediaAnalysisServiceConnection remoteObjectProxyWithErrorHandler:v15];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__VCPMediaAnalyzer__getSandboxExtensionForMediaAnalysisDatabaseWithPhotoLibraryURL___block_invoke_894;
  v12[3] = &unk_1E8350C00;
  v14 = buf;
  v9 = v7;
  v13 = v9;
  [v8 requestMediaAnalysisDatabaseAccessSandboxExtensionWithPhotoLibraryURL:lCopy andReply:v12];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = *(v18 + 3);

  _Block_object_dispose(buf, 8);
  return v10;
}

void __84__VCPMediaAnalyzer__getSandboxExtensionForMediaAnalysisDatabaseWithPhotoLibraryURL___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v3 description];
    v5 = 138412546;
    v6 = @"com.apple.mediaanalysisd.analysis";
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VCPMediaAnalyzer] Failed to establish connection or connection lost to service %@; %@", &v5, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __84__VCPMediaAnalyzer__getSandboxExtensionForMediaAnalysisDatabaseWithPhotoLibraryURL___block_invoke_894(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 UTF8String];
    *(*(*(a1 + 40) + 8) + 24) = sandbox_extension_consume();
    if ((*(*(*(a1 + 40) + 8) + 24) & 0x8000000000000000) != 0)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v5 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v6 = MEMORY[0x1E69E9C10];
          v7 = "[VCPMediaAnalyzer] Failed to consume media analysis directory sandbox extension";
          v8 = buf;
          goto LABEL_9;
        }
      }
    }

    else if (MediaAnalysisLogLevel() >= 7)
    {
      v5 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v9 = 0;
        v6 = MEMORY[0x1E69E9C10];
        v7 = "[VCPMediaAnalyzer] Consumed media analysis directory sandbox extension";
        v8 = &v9;
LABEL_9:
        _os_log_impl(&dword_1C9B70000, v6, v5, v7, v8, 2u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.mediaanalysisd.photos" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4A19EB0];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_connection resume];
    connection = self->_connection;
  }

  return connection;
}

- (int64_t)_getDatabaseSandboxExtensionForPhotoLibraryURL:(id)l
{
  lCopy = l;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -1;
  v5 = dispatch_semaphore_create(0);
  connection = [(VCPMediaAnalyzer *)self connection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__VCPMediaAnalyzer__getDatabaseSandboxExtensionForPhotoLibraryURL___block_invoke;
  v15[3] = &unk_1E834C9A0;
  v7 = v5;
  v16 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v15];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__VCPMediaAnalyzer__getDatabaseSandboxExtensionForPhotoLibraryURL___block_invoke_905;
  v12[3] = &unk_1E8350C00;
  v14 = &v17;
  v9 = v7;
  v13 = v9;
  [v8 registerClient:@"VCPMediaAnalyzer" forPhotoLibraryURL:lCopy withReply:v12];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v10;
}

intptr_t __67__VCPMediaAnalyzer__getDatabaseSandboxExtensionForPhotoLibraryURL___block_invoke(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] failed to get database sandbox extension", v3, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void __67__VCPMediaAnalyzer__getDatabaseSandboxExtensionForPhotoLibraryURL___block_invoke_905(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 UTF8String];
    *(*(*(a1 + 40) + 8) + 24) = sandbox_extension_consume();
    if ((*(*(*(a1 + 40) + 8) + 24) & 0x8000000000000000) != 0)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v5 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v6 = MEMORY[0x1E69E9C10];
          v7 = "[MediaAnalysis] failed to consume sandbox extension";
          v8 = buf;
          goto LABEL_9;
        }
      }
    }

    else if (MediaAnalysisLogLevel() >= 7)
    {
      v5 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v9 = 0;
        v6 = MEMORY[0x1E69E9C10];
        v7 = "[MediaAnalysis] Consumed sandbox extension";
        v8 = &v9;
LABEL_9:
        _os_log_impl(&dword_1C9B70000, v6, v5, v7, v8, 2u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_databaseForPhotoLibrary:(id)library
{
  libraryCopy = library;
  sandboxQueue = self->_sandboxQueue;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __45__VCPMediaAnalyzer__databaseForPhotoLibrary___block_invoke;
  v12 = &unk_1E834D238;
  v6 = libraryCopy;
  v13 = v6;
  selfCopy = self;
  dispatch_sync(sandboxQueue, &v9);
  v7 = [VCPClientDatabaseManager sharedDatabaseForPhotoLibrary:v6, v9, v10, v11, v12];

  return v7;
}

void __45__VCPMediaAnalyzer__databaseForPhotoLibrary___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 photoLibraryURL];
  }

  else
  {
    [MEMORY[0x1E69789B0] vcp_defaultURL];
  }
  v3 = ;
  v4 = [*(*(a1 + 40) + 88) objectForKeyedSubscript:v3];

  if (!v4)
  {
    v5 = [*(a1 + 40) _getSandboxExtensionForMediaAnalysisDatabaseWithPhotoLibraryURL:v3];
    if (v5 < 0)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v3 path];
        v8 = 138412290;
        v9 = v7;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Failed to obtain analysis sandbox extension for Photo Library (%@); client may not be able to open analysis database", &v8, 0xCu);
      }
    }

    else
    {
      v6 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
      [*(*(a1 + 40) + 88) setObject:v6 forKeyedSubscript:v3];
    }
  }
}

- (id)_addClassificationResults:(id)results analysis:(id)analysis
{
  v35 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  analysisCopy = analysis;
  if (resultsCopy && ([resultsCopy vcp_modificationDate], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    sceneClassifications = [resultsCopy sceneClassifications];
    v9 = [sceneClassifications countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v9)
    {
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(sceneClassifications);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          [v12 confidence];
          if (v13 != 0.0 && [v12 extendedSceneIdentifier])
          {
            v14 = MEMORY[0x1E696AD98];
            [v12 confidence];
            v15 = [v14 numberWithDouble:?];
            v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v12, "extendedSceneIdentifier")}];
            stringValue = [v16 stringValue];
            [dictionary setObject:v15 forKey:stringValue];
          }
        }

        v9 = [sceneClassifications countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v9);
    }

    if (dictionary && [dictionary count])
    {
      if (analysisCopy)
      {
        v18 = [analysisCopy mutableCopy];
      }

      else
      {
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        [dictionary2 vcp_setVersion:75];
        vcp_modificationDate = [resultsCopy vcp_modificationDate];
        [dictionary2 vcp_setDateModified:vcp_modificationDate];

        date = [MEMORY[0x1E695DF00] date];
        [dictionary2 vcp_setDateAnalyzed:date];

        v18 = dictionary2;
        [dictionary2 vcp_setFlags:0];
      }

      v31 = @"attributes";
      v32 = dictionary;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v33 = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
      [v18 vcp_setResult:v24 forKey:@"ClassificationResults"];

      [v18 vcp_addTypes:0x4000];
    }

    else
    {
      v18 = analysisCopy;
    }

    v19 = analysisCopy;
  }

  else
  {
    v19 = analysisCopy;
    v18 = analysisCopy;
  }

  return v18;
}

- (unint64_t)_typesToRemove:(unint64_t)remove requested:(unint64_t)requested
{
  v4 = remove & ~requested & 0xFFFFFFFFFFFFFF33;
  if ((remove & 0xC) == 4)
  {
    v5 = v4 | 4;
  }

  else
  {
    v5 = remove & ~requested & 0xFFFFFFFFFFFFFF33;
  }

  if ((requested & 0xC) == 0)
  {
    v4 |= 0xCuLL;
  }

  if ((requested & 0xC) == 8)
  {
    v4 = v5;
  }

  if ((remove & 0xC0) == 0x40)
  {
    v6 = v4 | 0x40;
  }

  else
  {
    v6 = v4;
  }

  if ((requested & 0xC0) == 0)
  {
    v4 |= 0xC0uLL;
  }

  if ((requested & 0xC0) == 0x80)
  {
    v4 = v6;
  }

  if ((requested & 0x8000000000000) != 0)
  {
    return v4 & 0xFFFFF7FFBFFFFFF7;
  }

  else
  {
    return v4;
  }
}

- (id)_postProcessMovieHighlights:(id)highlights analysis:(id)analysis withOptions:(id)options
{
  v167 = *MEMORY[0x1E69E9840];
  highlightsCopy = highlights;
  analysisCopy = analysis;
  optionsCopy = options;
  v10 = optionsCopy;
  v111 = analysisCopy;
  if (analysisCopy)
  {
    v109 = optionsCopy;
    v114 = [optionsCopy objectForKeyedSubscript:@"MaxHighlightDuration"];
    v108 = [v10 objectForKeyedSubscript:@"HighlightBestTrim"];
    v113 = [v10 objectForKeyedSubscript:@"HighlightContexts"];
    v11 = [v10 objectForKeyedSubscript:@"HighlightPreferredRange"];
    memset(&v147, 0, sizeof(v147));
    v102 = v11;
    if (v11)
    {
      CMTimeRangeMakeFromDictionary(&v147, v11);
    }

    else
    {
      v12 = *(MEMORY[0x1E6960CA8] + 16);
      *&v147.start.value = *MEMORY[0x1E6960CA8];
      *&v147.start.epoch = v12;
      *&v147.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
    }

    v107 = [v10 objectForKeyedSubscript:@"HighlightTargetDuration"];
    v104 = [v10 objectForKeyedSubscript:@"HighlightTolerance"];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Movie Highlights post processing with input options", &buf, 2u);
      }
    }

    if (v114)
    {
      [v114 floatValue];
      if (v15 > 10.0)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.start.value) = 134218240;
          *(&buf.start.value + 4) = 10.0;
          LOWORD(buf.start.flags) = 2048;
          *(&buf.start.flags + 2) = 10.0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Requested max highlight duration longer than %.2fs, fall back to %.2fs", &buf, 0x16u);
        }

        LODWORD(v16) = 1092616192;
        v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];

        v114 = v17;
      }
    }

    else
    {
      v114 = 0;
    }

    vcp_results = [v111 vcp_results];
    v19 = [vcp_results objectForKeyedSubscript:@"MovieHighlightResults"];
    if (v19 || v113 && [v113 count])
    {
    }

    else if ((v147.start.flags & 1) != 0 && (v147.duration.flags & 1) != 0 && !v147.duration.epoch && (v147.duration.value & 0x8000000000000000) == 0)
    {
      buf.start = v147.duration;
      *&time2.start.value = *MEMORY[0x1E6960CC0];
      time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
      v28 = CMTimeCompare(&buf.start, &time2.start) == 0;

      if (v28)
      {
        analysisCopy = v111;
LABEL_131:

        v10 = v109;
        goto LABEL_132;
      }

LABEL_19:
      if (([highlightsCopy vcp_isVideoSlowmo] & 1) != 0 || v113 && objc_msgSend(v113, "count") || (v147.start.flags & 1) == 0 || (v147.duration.flags & 1) == 0 || v147.duration.epoch || v147.duration.value < 0)
      {
        v20 = 10.0;
      }

      else
      {
        buf.start = v147.duration;
        *&time2.start.value = *MEMORY[0x1E6960CC0];
        time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
        v20 = 10.0;
        if (!CMTimeCompare(&buf.start, &time2.start) && !v107)
        {
          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          vcp_results2 = [v111 vcp_results];
          v30 = [vcp_results2 objectForKeyedSubscript:@"MovieHighlightResults"];

          v31 = [v30 countByEnumeratingWithState:&v143 objects:v166 count:16];
          if (v31)
          {
            v32 = *v144;
            v20 = 0.0;
            while (2)
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v144 != v32)
                {
                  objc_enumerationMutation(v30);
                }

                v34 = *(*(&v143 + 1) + 8 * i);
                memset(&buf, 0, sizeof(buf));
                CMTimeRangeMakeFromDictionary(&buf, v34);
                if (v114)
                {
                  time2.start = buf.duration;
                  Seconds = CMTimeGetSeconds(&time2.start);
                  [v114 floatValue];
                  if (Seconds > v36)
                  {

                    goto LABEL_24;
                  }
                }

                time2.start = buf.duration;
                v37 = CMTimeGetSeconds(&time2.start);
                if (v20 < v37)
                {
                  v20 = v37;
                }
              }

              v31 = [v30 countByEnumeratingWithState:&v143 objects:v166 count:16];
              if (v31)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v20 = 0.0;
          }

          if (!v108 || ![v108 BOOLValue])
          {
            array = [MEMORY[0x1E695DF70] array];
            v123 = 0u;
            v124 = 0u;
            v121 = 0u;
            v122 = 0u;
            vcp_results3 = [v111 vcp_results];
            v91 = [vcp_results3 objectForKeyedSubscript:@"MovieHighlightResults"];

            v92 = [v91 countByEnumeratingWithState:&v121 objects:v148 count:16];
            if (v92)
            {
              v93 = *v122;
              do
              {
                for (j = 0; j != v92; ++j)
                {
                  if (*v122 != v93)
                  {
                    objc_enumerationMutation(v91);
                  }

                  v95 = *(*(&v121 + 1) + 8 * j);
                  memset(&buf, 0, sizeof(buf));
                  CMTimeRangeMakeFromDictionary(&buf, v95);
                  time2.start = buf.duration;
                  v96 = CMTimeGetSeconds(&time2.start);
                  [(NSNumber *)self->_minHighlightDuration floatValue];
                  if (v96 >= v97)
                  {
                    [array addObject:v95];
                  }
                }

                v92 = [v91 countByEnumeratingWithState:&v121 objects:v148 count:16];
              }

              while (v92);
            }

            v98 = [v111 mutableCopy];
            [v98 vcp_setResult:array forKey:@"MovieHighlightResults"];
            analysisCopy = v111;

            goto LABEL_131;
          }
        }
      }

LABEL_24:
      if (v113 && [v113 count])
      {
        v21 = [v113 objectForKeyedSubscript:@"SearchQueryString"];
        v22 = v21 == 0;

        if (v22)
        {
          v25 = 0;
        }

        else
        {
          v23 = [v109 mutableCopy];
          v24 = [v113 objectForKeyedSubscript:@"SearchQueryString"];
          [v23 setObject:v24 forKeyedSubscript:@"SearchQueryString"];

          v25 = v23;
        }

        v103 = v25;
        if (MediaAnalysisLogLevel() >= 6)
        {
          v38 = MEMORY[0x1E69E9C10];
          v39 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            localIdentifier = [highlightsCopy localIdentifier];
            LODWORD(buf.start.value) = 138412290;
            *(&buf.start.value + 4) = localIdentifier;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis][%@] find time ranges matching highlight contexts", &buf, 0xCu);
          }
        }

        v41 = VCPSignPostLog();
        spid = os_signpost_id_generate(v41);

        v42 = VCPSignPostLog();
        v43 = v42;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
        {
          LOWORD(buf.start.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v43, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMovieHighlightContexts", "", &buf, 2u);
        }

        allKeys = [v113 allKeys];
        v45 = [allKeys containsObject:&unk_1F49BDF78];

        if (v45)
        {
          v163 = &unk_1F49BDF78;
          v46 = [v113 objectForKeyedSubscript:&unk_1F49BDF78];
          v164 = v46;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];

          if (!v25)
          {
            v25 = v109;
          }

          v162 = v111;
          v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v162 count:1];
          v142 = 0;
          v49 = [(VCPMediaAnalyzer *)self findTimeRangesFor:v113 inAsset:highlightsCopy withOptions:v25 results:v48 andError:&v142];
          v50 = v142;

          v106 = [(VCPMediaAnalyzer *)self postProcessTimeRanges:v49 options:v25];
          v51 = [v113 mutableCopy];
          [v51 removeObjectForKey:&unk_1F49BDF78];
          v52 = v51;

          v53 = [(VCPMediaAnalyzer *)self getOverlapPersonRanges:v106];

          v105 = v53;
          v113 = v52;
        }

        else
        {
          v50 = 0;
          v105 = 0;
        }

        if (v103)
        {
          v54 = v103;
        }

        else
        {
          v54 = v109;
        }

        v161 = v111;
        v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v161 count:1];
        v141 = v50;
        v100 = [(VCPMediaAnalyzer *)self findTimeRangesFor:v113 inAsset:highlightsCopy withOptions:v54 results:v55 andError:&v141];
        v101 = v141;

        v117 = [(VCPMediaAnalyzer *)self postProcessTimeRanges:v100 options:v54];
        if (v105 && [v105 count])
        {
          array2 = [MEMORY[0x1E695DF70] array];
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          obj = v105;
          v116 = [obj countByEnumeratingWithState:&v137 objects:v160 count:16];
          if (v116)
          {
            v115 = *v138;
            do
            {
              for (k = 0; k != v116; ++k)
              {
                if (*v138 != v115)
                {
                  objc_enumerationMutation(obj);
                }

                v56 = *(*(&v137 + 1) + 8 * k);
                memset(&buf, 0, sizeof(buf));
                CMTimeRangeMakeFromDictionary(&buf, v56);
                v135 = 0u;
                v136 = 0u;
                v133 = 0u;
                v134 = 0u;
                v119 = v117;
                v57 = [v119 countByEnumeratingWithState:&v133 objects:v159 count:16];
                if (v57)
                {
                  v58 = *v134;
                  do
                  {
                    for (m = 0; m != v57; ++m)
                    {
                      if (*v134 != v58)
                      {
                        objc_enumerationMutation(v119);
                      }

                      v60 = *(*(&v133 + 1) + 8 * m);
                      memset(&time2, 0, sizeof(time2));
                      CMTimeRangeMakeFromDictionary(&time2, v60);
                      range = time2;
                      memset(&v131, 0, sizeof(v131));
                      otherRange = buf;
                      CMTimeRangeGetIntersection(&v131, &range, &otherRange);
                      if ((v131.start.flags & 1) != 0 && (v131.duration.flags & 1) != 0 && !v131.duration.epoch && (v131.duration.value & 0x8000000000000000) == 0)
                      {
                        range.start = v131.duration;
                        *&otherRange.start.value = *MEMORY[0x1E6960CC0];
                        otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
                        if (!CMTimeCompare(&range.start, &otherRange.start))
                        {
                          continue;
                        }
                      }

                      v157[0] = @"start";
                      *&range.start.value = *&v131.start.value;
                      range.start.epoch = v131.start.epoch;
                      v61 = CMTimeCopyAsDictionary(&range.start, 0);
                      v158[0] = v61;
                      v157[1] = @"duration";
                      range.start = v131.duration;
                      v62 = CMTimeCopyAsDictionary(&range.start, 0);
                      v158[1] = v62;
                      v157[2] = @"quality";
                      v63 = MEMORY[0x1E696AD98];
                      [(__CFDictionary *)v60 vcp_quality];
                      v65 = [v63 numberWithDouble:(v64 + 0.5) * 0.5];
                      v158[2] = v65;
                      v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v158 forKeys:v157 count:3];
                      [array2 addObject:v66];
                    }

                    v57 = [v119 countByEnumeratingWithState:&v133 objects:v159 count:16];
                  }

                  while (v57);
                }
              }

              v116 = [obj countByEnumeratingWithState:&v137 objects:v160 count:16];
            }

            while (v116);
          }

          if (![array2 count])
          {
            v127 = 0u;
            v128 = 0u;
            v125 = 0u;
            v126 = 0u;
            v67 = obj;
            v68 = [v67 countByEnumeratingWithState:&v125 objects:v156 count:16];
            if (v68)
            {
              v69 = *v126;
              do
              {
                for (n = 0; n != v68; ++n)
                {
                  if (*v126 != v69)
                  {
                    objc_enumerationMutation(v67);
                  }

                  v71 = [*(*(&v125 + 1) + 8 * n) mutableCopy];
                  [v71 setObject:&unk_1F49BB228 forKeyedSubscript:@"quality"];
                  [array2 addObject:v71];
                }

                v68 = [v67 countByEnumeratingWithState:&v125 objects:v156 count:16];
              }

              while (v68);
            }
          }
        }

        v72 = VCPSignPostLog();
        v73 = v72;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
        {
          LOWORD(buf.start.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v73, OS_SIGNPOST_INTERVAL_END, spid, "VCPMovieHighlightContexts", "", &buf, 2u);
        }

        if (!v114)
        {
          LODWORD(v74) = 1092616192;
          v114 = [MEMORY[0x1E696AD98] numberWithFloat:v74];
        }

        v108 = MEMORY[0x1E695E118];
        v27 = v100;
      }

      else
      {
        if ((v147.start.flags & 1) != 0 && (v147.duration.flags & 1) != 0 && !v147.duration.epoch && (v147.duration.value & 0x8000000000000000) == 0)
        {
          buf.start = v147.duration;
          *&time2.start.value = *MEMORY[0x1E6960CC0];
          time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
          if (!CMTimeCompare(&buf.start, &time2.start))
          {
            v105 = 0;
            v117 = 0;
            goto LABEL_114;
          }
        }

        v153[0] = @"start";
        *&buf.start.value = *&v147.start.value;
        buf.start.epoch = v147.start.epoch;
        v154[0] = CMTimeCopyAsDictionary(&buf.start, 0);
        v153[1] = @"duration";
        buf.start = v147.duration;
        v101 = v154[0];
        v26 = CMTimeCopyAsDictionary(&buf.start, 0);
        v153[2] = @"quality";
        v154[1] = v26;
        v154[2] = &unk_1F49BB6F8;
        v103 = v26;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v154 forKeys:v153 count:3];
        v155 = v27;
        v117 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v155 count:1];
        v105 = 0;
      }

LABEL_114:
      v151[0] = @"HighlightMaxDuration";
      v75 = v114;
      if (!v114)
      {
        v75 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
      }

      v76 = MEMORY[0x1E695E110];
      if (v108)
      {
        v76 = v108;
      }

      v152[0] = v75;
      v152[1] = v76;
      v151[1] = @"HighlightBestTrim";
      v151[2] = @"HighlightFullResult";
      v151[3] = @"HighlightContexts";
      v77 = v117;
      if (!v117)
      {
        v77 = MEMORY[0x1E695E0F0];
      }

      v152[2] = MEMORY[0x1E695E118];
      v152[3] = v77;
      v78 = v109;
      v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v152 forKeys:v151 count:4];
      if (!v114)
      {

        v78 = v109;
      }

      if (v107)
      {
        v80 = [v79 mutableCopy];
        [v80 removeObjectForKey:@"HighlightMaxDuration"];
        [v80 removeObjectForKey:@"HighlightBestTrim"];
        v149[0] = @"HighlightTargetDuration";
        v149[1] = @"HighlightTolerance";
        v81 = &unk_1F49BB238;
        if (v104)
        {
          v81 = v104;
        }

        v150[0] = v107;
        v150[1] = v81;
        v149[2] = @"HighlightIndex";
        v150[2] = &unk_1F49BDF90;
        v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v150 forKeys:v149 count:3];
        [v80 addEntriesFromDictionary:v82];

        v78 = v109;
      }

      else
      {
        v80 = v79;
      }

      v83 = [v78 objectForKeyedSubscript:@"AllowOnDemand"];
      bOOLValue = [v83 BOOLValue];

      pixelWidth = [highlightsCopy pixelWidth];
      pixelHeight = [highlightsCopy pixelHeight];
      if (bOOLValue)
      {
        v87 = highlightsCopy;
      }

      else
      {
        v87 = 0;
      }

      analysisCopy = MediaAnalysisPostProcessMovieHighlights(v111, v80, v87, pixelWidth, pixelHeight);

      goto LABEL_131;
    }

    goto LABEL_19;
  }

LABEL_132:

  return analysisCopy;
}

- (id)getOverlapPersonRanges:(id)ranges
{
  v60 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = rangesCopy;
  v4 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v4)
  {
    v5 = *v53;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v53 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v52 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:@"faceIdentifier"];
        if (v8)
        {
          allKeys = [dictionary allKeys];
          v10 = [allKeys containsObject:v8];

          if (v10)
          {
            v11 = [dictionary objectForKeyedSubscript:v8];
            [v11 addObject:v7];
          }

          else
          {
            v11 = [MEMORY[0x1E695DF70] arrayWithObject:v7];
            [dictionary setObject:v11 forKeyedSubscript:v8];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v4);
  }

  allKeys2 = [dictionary allKeys];
  v13 = [allKeys2 count] < 2;

  if (v13)
  {
    v36 = obj;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    allKeys3 = [dictionary allKeys];
    v15 = [allKeys3 objectAtIndexedSubscript:0];
    v16 = [dictionary objectForKeyedSubscript:v15];

    v17 = 1;
    v18 = MEMORY[0x1E6960CC0];
    v36 = v16;
    while (v17 < [allKeys3 count])
    {
      v19 = [allKeys3 objectAtIndexedSubscript:v17];
      v31 = v17;
      v33 = [dictionary objectForKeyedSubscript:v19];

      array2 = [MEMORY[0x1E695DF70] array];
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v34 = v33;
      v21 = [v34 countByEnumeratingWithState:&v48 objects:v58 count:16];
      if (v21)
      {
        v35 = *v49;
        do
        {
          v38 = v21;
          for (j = 0; j != v38; ++j)
          {
            if (*v49 != v35)
            {
              objc_enumerationMutation(v34);
            }

            v23 = *(*(&v48 + 1) + 8 * j);
            memset(&v47, 0, sizeof(v47));
            CMTimeRangeMakeFromDictionary(&v47, v23);
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v24 = v36;
            v25 = [v24 countByEnumeratingWithState:&v43 objects:v57 count:16];
            if (v25)
            {
              v26 = *v44;
              do
              {
                for (k = 0; k != v25; ++k)
                {
                  if (*v44 != v26)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v28 = *(*(&v43 + 1) + 8 * k);
                  memset(&v42, 0, sizeof(v42));
                  CMTimeRangeMakeFromDictionary(&v42, v28);
                  range = v47;
                  otherRange = v42;
                  memset(&v41, 0, sizeof(v41));
                  CMTimeRangeGetIntersection(&v41, &range, &otherRange);
                  if ((v41.start.flags & 1) != 0 && (v41.duration.flags & 1) != 0 && !v41.duration.epoch && (v41.duration.value & 0x8000000000000000) == 0)
                  {
                    range.start = v41.duration;
                    *&otherRange.start.value = *v18;
                    otherRange.start.epoch = *(v18 + 16);
                    if (!CMTimeCompare(&range.start, &otherRange.start))
                    {
                      continue;
                    }
                  }

                  range = v41;
                  v29 = CMTimeRangeCopyAsDictionary(&range, 0);
                  [array2 addObject:v29];
                }

                v25 = [v24 countByEnumeratingWithState:&v43 objects:v57 count:16];
              }

              while (v25);
            }
          }

          v21 = [v34 countByEnumeratingWithState:&v48 objects:v58 count:16];
        }

        while (v21);
      }

      v17 = v31 + 1;
      v36 = array2;
    }
  }

  return v36;
}

- (id)_analyzeOndemand:(id)ondemand forAnalysisTypes:(unint64_t)types withExistingAnalysis:(id)analysis andOptions:(id)options storeAnalysis:(BOOL)storeAnalysis cancelBlock:(id)block
{
  storeAnalysisCopy = storeAnalysis;
  ondemandCopy = ondemand;
  analysisCopy = analysis;
  optionsCopy = options;
  blockCopy = block;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__53;
  v49 = __Block_byref_object_dispose__53;
  v50 = 0;
  analysisQueue = self->_analysisQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__VCPMediaAnalyzer__analyzeOndemand_forAnalysisTypes_withExistingAnalysis_andOptions_storeAnalysis_cancelBlock___block_invoke;
  block[3] = &unk_1E8350C28;
  v19 = ondemandCopy;
  v39 = v19;
  v20 = optionsCopy;
  v40 = v20;
  typesCopy = types;
  v21 = analysisCopy;
  v41 = v21;
  v43 = &v45;
  v22 = blockCopy;
  v42 = v22;
  dispatch_sync(analysisQueue, block);
  if (storeAnalysisCopy)
  {
    v23 = v46[5];
    if (v23)
    {
      if ([v23 vcp_types] && !-[NSNumber BOOLValue](self->_standalone, "BOOLValue"))
      {
        dispatch_group_enter(self->_storageGroup);
        storageQueue = self->_storageQueue;
        v31 = MEMORY[0x1E69E9820];
        v32 = 3221225472;
        v33 = __112__VCPMediaAnalyzer__analyzeOndemand_forAnalysisTypes_withExistingAnalysis_andOptions_storeAnalysis_cancelBlock___block_invoke_2;
        v34 = &unk_1E834D210;
        v37 = &v45;
        v35 = v19;
        selfCopy = self;
        dispatch_async(storageQueue, &v31);
      }
    }
  }

  v25 = [v20 objectForKeyedSubscript:{@"ScaledSlomoTime", v31, v32, v33, v34}];
  [v25 floatValue];
  if (v26 != 0.0)
  {
    vcp_isVideoSlowmo = [v19 vcp_isVideoSlowmo];

    if (!vcp_isVideoSlowmo)
    {
      goto LABEL_10;
    }

    v28 = MediaAnalysisPostProcessAnalysis(v19, v46[5], 0);
    v25 = v46[5];
    v46[5] = v28;
  }

LABEL_10:
  v29 = v46[5];

  _Block_object_dispose(&v45, 8);

  return v29;
}

void __112__VCPMediaAnalyzer__analyzeOndemand_forAnalysisTypes_withExistingAnalysis_andOptions_storeAnalysis_cancelBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E69786D0] vcp_allAcceptableResourcesForAsset:*(a1 + 32)];
  v4 = [*(a1 + 32) vcp_fullAnalysisTypesForResources:v3];
  v5 = [*(a1 + 40) objectForKeyedSubscript:@"AllowStreaming"];
  if ([v5 BOOLValue] && (*(a1 + 72) & ~v4) != 0)
  {
    v7 = [*(a1 + 32) photoLibrary];
    if ([v7 vcp_allowsCloudLibraryResourceDownload])
    {
      v6 = [*(a1 + 32) vcp_eligibleForVideoDownload:v3];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  if (![*(a1 + 32) isVideo])
  {
    if (![*(a1 + 32) isPhoto])
    {
      goto LABEL_16;
    }

    v8 = [[VCPPhotoAnalyzer alloc] initWithPHAsset:*(a1 + 32) withExistingAnalysis:*(a1 + 48) forAnalysisTypes:*(a1 + 72)];
    [(VCPPhotoAnalyzer *)v8 setAllowStreaming:v6];
    [(VCPPhotoAnalyzer *)v8 setRequiresOnDemandDownload:1];
    v17 = [(VCPPhotoAnalyzer *)v8 analyzeAsset:*(a1 + 56) withOptions:0];
    goto LABEL_14;
  }

  if ((v6 & 1) != 0 || [VCPMovieAnalyzer canAnalyzeUndegraded:*(a1 + 32) withResources:v3])
  {
    v8 = [[VCPMovieAnalyzer alloc] initWithPHAsset:*(a1 + 32) withExistingAnalysis:*(a1 + 48) forAnalysisTypes:*(a1 + 72)];
    [(VCPPhotoAnalyzer *)v8 setAllowStreaming:v6];
    [(VCPPhotoAnalyzer *)v8 setRequiresOnDemandDownload:1];
    v9 = [(VCPPhotoAnalyzer *)v8 analyzeAsset:*(a1 + 56) streamed:0];
    v11 = *(a1 + 64);
    v10 = a1 + 64;
    v12 = *(v11 + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v9;

    v14 = MediaAnalysisStripKeyframeResourceResultsFromAnalysis(*(*(*v10 + 8) + 40));
    v15 = *(*v10 + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = MediaAnalysisStripVideoThumbnailResourceResultsFromAnalysis(*(*(*v10 + 8) + 40));
LABEL_15:
    v18 = *(*v10 + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    goto LABEL_16;
  }

  if ((*(a1 + 73) & 8) != 0 && [v3 vcp_hasLocalPhoto:{objc_msgSend(*(a1 + 32), "hasAdjustments")}])
  {
    v8 = [[VCPPhotoAnalyzer alloc] initWithPHAsset:*(a1 + 32) withExistingAnalysis:*(a1 + 48) forAnalysisTypes:2048];
    v17 = [(VCPPhotoAnalyzer *)v8 analyzeAsset:*(a1 + 56) withOptions:0];
LABEL_14:
    v10 = a1 + 64;
    goto LABEL_15;
  }

LABEL_16:

  objc_autoreleasePoolPop(v2);
}

void __112__VCPMediaAnalyzer__analyzeOndemand_forAnalysisTypes_withExistingAnalysis_andOptions_storeAnalysis_cancelBlock___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v2];
    v4 = MEMORY[0x1E695DF90];
    v5 = [v3 vcp_results];
    v6 = [v4 dictionaryWithDictionary:v5];

    v7 = [v3 vcp_types];
    [v6 removeObjectForKey:@"FaceQualityResults"];
    [v6 removeObjectForKey:@"ParallaxResults"];
    [v6 removeObjectForKey:@"WallpaperExportResults"];
    [v6 removeObjectForKey:@"WatchFaceResults"];
    [v6 removeObjectForKey:@"PetsResults"];
    [v6 removeObjectForKey:@"PetsFaceResults"];
    [v6 removeObjectForKey:@"VideoThumbnailResourcesResults"];
    [v3 removeObjectForKey:@"metadataRanges"];
    if ([v6 count])
    {
      [v3 vcp_setResults:v6];
    }

    [v3 vcp_setTypes:v7 & 0xFFFFFF67FFFDFFFFLL];
  }

  else
  {
    v3 = 0;
  }

  if ([v3 vcp_types])
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) localIdentifier];
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis][%@] Storing on-demand analysis", buf, 0xCu);
    }

    v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.mediaanalysisd.photos" options:0];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4A19EB0];
    [v9 setRemoteObjectInterface:v10];

    [v9 resume];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __112__VCPMediaAnalyzer__analyzeOndemand_forAnalysisTypes_withExistingAnalysis_andOptions_storeAnalysis_cancelBlock___block_invoke_922;
    v19[3] = &unk_1E8350C50;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v20 = v11;
    v21 = v12;
    v13 = [v9 remoteObjectProxyWithErrorHandler:v19];
    v14 = [*(a1 + 32) localIdentifier];
    v15 = [*(a1 + 32) photoLibrary];
    v16 = [v15 photoLibraryURL];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __112__VCPMediaAnalyzer__analyzeOndemand_forAnalysisTypes_withExistingAnalysis_andOptions_storeAnalysis_cancelBlock___block_invoke_923;
    v18[3] = &unk_1E834BDC0;
    v18[4] = *(a1 + 40);
    [v13 storeAnalysis:v3 forAsset:v14 fromPhotoLibraryURL:v16 withReply:v18];

    dispatch_group_wait(*(*(a1 + 40) + 32), 0xFFFFFFFFFFFFFFFFLL);
    [v9 invalidate];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v17 = [*(a1 + 32) localIdentifier];
      *buf = 138412290;
      v23 = v17;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis][%@] No valid on-demand analysis; skipping", buf, 0xCu);
    }

    dispatch_group_leave(*(*(a1 + 40) + 32));
  }
}

void __112__VCPMediaAnalyzer__analyzeOndemand_forAnalysisTypes_withExistingAnalysis_andOptions_storeAnalysis_cancelBlock___block_invoke_922(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) localIdentifier];
    v5 = 138412546;
    v6 = v4;
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis][%@] Failed to store on-demand analysis - %@", &v5, 0x16u);
  }

  dispatch_group_leave(*(*(a1 + 40) + 32));
}

- (id)requestAnalysisTypes:(unint64_t)types forAssetWithResourceURLs:(id)ls withOptions:(id)options error:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__53;
  v14 = __Block_byref_object_dispose__53;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__VCPMediaAnalyzer_requestAnalysisTypes_forAssetWithResourceURLs_withOptions_error___block_invoke;
  v9[3] = &unk_1E8350C78;
  v9[4] = &v10;
  v9[5] = error;
  v6 = [VCPFullAnalysisURLProcessingTask taskForURLAsset:ls withOptions:options analysisTypes:types progressHandler:0 completionHandler:v9];
  [v6 run];
  v7 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v7;
}

void __84__VCPMediaAnalyzer_requestAnalysisTypes_forAssetWithResourceURLs_withOptions_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  v8 = a3;
  v7 = v8;
  **(a1 + 40) = v8;
}

- (id)analyzeOndemand:(id)ondemand pairedURL:(id)l forAnalysisTypes:(unint64_t)types error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  ondemandCopy = ondemand;
  lCopy = l;
  v24 = 0;
  v11 = *MEMORY[0x1E695DAA0];
  [ondemandCopy getResourceValue:&v24 forKey:*MEMORY[0x1E695DAA0] error:0];
  v12 = v24;
  v13 = *MEMORY[0x1E6982EE8];
  if (([v12 conformsToType:*MEMORY[0x1E6982EE8]] & 1) != 0 || (v14 = *MEMORY[0x1E6983080], objc_msgSend(v12, "conformsToType:", *MEMORY[0x1E6983080])))
  {
    v15 = [VCPURLAsset movieAssetWithURL:ondemandCopy];
    if (v15)
    {
      v16 = [VCPMovieAnalyzer analyzerWithVCPAsset:v15 withExistingAnalysis:0 forAnalysisTypes:types withOptions:0];
      v17 = [v16 analyzeAsset:&__block_literal_global_929_0 streamed:0];
      if ([v16 status] == 2)
      {
        v18 = 0;
      }

      else
      {
        v18 = -18;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = ondemandCopy;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis][%@]Unable to open movie", buf, 0xCu);
      }

      v17 = 0;
      v18 = -50;
    }

LABEL_13:
    if (!v18)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (![v12 conformsToType:*MEMORY[0x1E6982E30]])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] [MediaAnalyzer requestAnalysisTypes] call with invalid resourceURLs", buf, 2u);
    }

    v17 = 0;
    v18 = -50;
    goto LABEL_14;
  }

  if (lCopy)
  {
    v23 = 0;
    [lCopy getResourceValue:&v23 forKey:v11 error:0];
    v20 = v23;
    if (([v20 conformsToType:v13] & 1) == 0 && !objc_msgSend(v20, "conformsToType:", v14))
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] [MediaAnalyzer requestAnalysisTypes] call with invalid resourceURLs", buf, 2u);
      }

      goto LABEL_39;
    }

    v21 = [VCPURLAsset livePhotoAssetWithImageURL:ondemandCopy andMovieURL:lCopy];

    if (v21)
    {
LABEL_23:
      v22 = [VCPPhotoAnalyzer analyzerWithVCPAsset:v21 forAnalysisTypes:types];
      v17 = [v22 analyzeAsset:&__block_literal_global_932 withOptions:0];
      if ([v22 status] == 2)
      {
        v18 = 0;
      }

      else
      {
        v18 = -18;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v21 = [VCPURLAsset imageAssetWithURL:ondemandCopy];
    if (v21)
    {
      goto LABEL_23;
    }
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v26 = ondemandCopy;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis][%@]Failed to create asset", buf, 0xCu);
  }

LABEL_39:
  v17 = 0;
  v18 = -50;
LABEL_14:
  *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v18 userInfo:0];

  v17 = 0;
LABEL_15:

  return v17;
}

- (id)_requestAnalysis:(unint64_t)analysis forAsset:(id)asset withExistingAnalysis:(id)existingAnalysis andDatabase:(id)database andOptions:(id)options cancelBlock:(id)block
{
  v127[5] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  existingAnalysisCopy = existingAnalysis;
  databaseCopy = database;
  optionsCopy = options;
  blockCopy = block;
  localIdentifier = [assetCopy localIdentifier];
  v16 = [optionsCopy objectForKeyedSubscript:@"AllowOnDemand"];
  bOOLValue = [v16 BOOLValue];

  v17 = [optionsCopy objectForKeyedSubscript:@"SkipMetaDataOnDemand"];
  bOOLValue2 = [v17 BOOLValue];

  v18 = [optionsCopy objectForKeyedSubscript:@"ScaledSlomoTime"];
  bOOLValue3 = [v18 BOOLValue];

  [assetCopy fetchPropertySetsIfNeeded];
  if (analysis && MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v20 = MediaAnalysisTypeDescription(analysis);
    *buf = 138412546;
    v119 = localIdentifier;
    v120 = 2112;
    v121 = v20;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MediaAnalysis][%@] Received analysis request: %@", buf, 0x16u);
  }

  if ([(NSNumber *)self->_standalone BOOLValue])
  {

LABEL_7:
    existingAnalysisCopy = 0;
    goto LABEL_8;
  }

  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    photoLibrary = [assetCopy photoLibrary];
    mad_fetchRequest = [photoLibrary mad_fetchRequest];

    v117 = 0;
    v116 = 0;
    if ([assetCopy vcp_isLongMovie])
    {
      v32 = _os_feature_enabled_impl();
    }

    else
    {
      v32 = 0;
    }

    v114 = 0;
    v115 = 0;
    localIdentifier2 = [assetCopy localIdentifier];
    if (v32)
    {
      v50 = 254;
    }

    else
    {
      v50 = 1;
    }

    [mad_fetchRequest fetchProcessingStatus:&v117 attempts:&v116 lastAttemptDate:&v115 nextAttemptDate:&v114 localIdentifier:localIdentifier2 taskID:v50];
    v51 = v115;
    v52 = v114;

    if (v117)
    {
      v53 = [MEMORY[0x1E695DF00] now];
      v54 = [v52 compare:v53] == 1;

      if (v54)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v119 = localIdentifier;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis][%@] Analysis requested for failed asset", buf, 0xCu);
        }

        v126[0] = @"version";
        v55 = [MEMORY[0x1E696AD98] numberWithInt:75];
        v127[0] = v55;
        v126[1] = @"dateModified";
        vcp_modificationDate = [assetCopy vcp_modificationDate];
        v127[1] = vcp_modificationDate;
        v127[2] = v51;
        v126[2] = @"dateAnalyzed";
        v126[3] = @"performedAnalysisTypes";
        v126[4] = @"flags";
        v127[3] = &unk_1F49BDFA8;
        v127[4] = &unk_1F49BDFC0;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v127 forKeys:v126 count:5];

        goto LABEL_96;
      }
    }

LABEL_51:
    if ([existingAnalysisCopy vcp_version] < 7)
    {

      existingAnalysisCopy = 0;
    }

    v57 = MediaAnalysisPostProcessAnalysis(assetCopy, existingAnalysisCopy, bOOLValue3 ^ 1);

    if ((analysis & 0x40000) == 0 || ([v57 vcp_types] & 0x40000) == 0)
    {
      existingAnalysisCopy = v57;
      goto LABEL_80;
    }

    v58 = VCPSignPostLog();
    v59 = os_signpost_id_generate(v58);

    v60 = VCPSignPostLog();
    v61 = v60;
    v62 = v59 - 1;
    if (v59 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v61, OS_SIGNPOST_INTERVAL_BEGIN, v59, "VCPPostProcessMovieHighlights", "", buf, 2u);
    }

    v63 = [optionsCopy objectForKeyedSubscript:@"CaptionWithHighlight"];
    if ([v63 BOOLValue])
    {
      vcp_results = [v57 vcp_results];
      v65 = [vcp_results objectForKeyedSubscript:@"MiCaVideoCaptionResults"];
      if (![v65 count])
      {
        vcp_results2 = [v57 vcp_results];
        v66 = [vcp_results2 objectForKeyedSubscript:@"VideoSegmentCaptionResults"];
        if (![v66 count])
        {
          [v57 vcp_results];
          v105 = v104 = v59;
          v102 = [v105 objectForKeyedSubscript:@"VideoCaptionResults"];
          v103 = [v102 count] == 0;

          v59 = v104;
          if (v103)
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalyzer]Early termination - no caption available, set results to nil", buf, 2u);
            }

            existingAnalysisCopy = 0;
            goto LABEL_74;
          }

LABEL_65:
          v67 = [(VCPMediaAnalyzer *)self _postProcessMovieHighlights:assetCopy analysis:v57 withOptions:optionsCopy];

          v68 = [optionsCopy objectForKeyedSubscript:@"CaptionWithHighlight"];
          bOOLValue4 = [v68 BOOLValue];

          if (bOOLValue4)
          {
            v70 = MediaAnalysisAddCaptionToHighlightResults(v67);

            v57 = v70;
          }

          else
          {
            v57 = v67;
          }

          v71 = [optionsCopy objectForKeyedSubscript:@"PersonIDWithHighlight"];
          bOOLValue5 = [v71 BOOLValue];

          if (bOOLValue5)
          {
            v73 = [(VCPMediaAnalyzer *)self getFaceIDRanges:v57 asset:assetCopy];
            v74 = MediaAnalysisAddFaceIDToHighlightResults(v57, v73);

            v57 = v74;
          }

          v75 = [optionsCopy objectForKeyedSubscript:@"MetadataWithHighlight"];
          bOOLValue6 = [v75 BOOLValue];

          if (bOOLValue6)
          {
            v77 = [(VCPMediaAnalyzer *)self getFaceIDRanges:v57 asset:assetCopy];
            v78 = MediaAnalysisAddMetadataToHighlightResults(v57, v77);

            v57 = v78;
          }

          v79 = [optionsCopy objectForKeyedSubscript:@"VideoSpeedControl"];
          bOOLValue7 = [v79 BOOLValue];

          if (!bOOLValue7)
          {
            existingAnalysisCopy = v57;
LABEL_76:
            v81 = VCPSignPostLog();
            v82 = v81;
            if (v62 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v82, OS_SIGNPOST_INTERVAL_END, v59, "VCPPostProcessMovieHighlights", "", buf, 2u);
            }

LABEL_80:
            if ((analysis & 0x4000) != 0 && [assetCopy isPhoto])
            {
              v83 = [(VCPMediaAnalyzer *)self _addClassificationResults:assetCopy analysis:existingAnalysisCopy];

              existingAnalysisCopy = v83;
            }

            if (existingAnalysisCopy)
            {
              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
              {
                localIdentifier3 = [assetCopy localIdentifier];
                vcp_typeDescription = [assetCopy vcp_typeDescription];
                v86 = [existingAnalysisCopy vcp_analysisDescriptionWithResultDetails:1];
                *buf = 138412802;
                v119 = localIdentifier3;
                v120 = 2112;
                v121 = vcp_typeDescription;
                v122 = 2112;
                v123 = v86;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@][%@] existing analysis: %@", buf, 0x20u);
              }

              vcp_dateModified = [existingAnalysisCopy vcp_dateModified];
              vcp_modificationDate2 = [assetCopy vcp_modificationDate];
              v89 = [vcp_dateModified isEqualToDate:vcp_modificationDate2];

              if ((v89 & 1) == 0)
              {
                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                {
                  vcp_dateModified2 = [existingAnalysisCopy vcp_dateModified];
                  v94 = [vcp_dateModified2 description];
                  v95 = v94;
                  uTF8String = [v94 UTF8String];
                  vcp_modificationDate3 = [assetCopy vcp_modificationDate];
                  v98 = [vcp_modificationDate3 description];
                  v99 = v98;
                  uTF8String2 = [v98 UTF8String];
                  *buf = 138412802;
                  v119 = localIdentifier;
                  v120 = 2080;
                  v121 = uTF8String;
                  v122 = 2080;
                  v123 = uTF8String2;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MediaAnalysis][%@] Existing analysis based on old modification - (%s vs %s)", buf, 0x20u);
                }

                goto LABEL_7;
              }

              if (!analysis)
              {
                goto LABEL_95;
              }

              if (bOOLValue)
              {
                v90 = MediaAnalysisStripOutdatedAnalysis(assetCopy, existingAnalysisCopy);

                existingAnalysisCopy = v90;
              }

              if ((analysis & ~[existingAnalysisCopy vcp_types]) == 0)
              {
                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                {
                  v91 = MediaAnalysisTypeDescription([existingAnalysisCopy vcp_types]);
                  *buf = 138412546;
                  v119 = localIdentifier;
                  v120 = 2112;
                  v121 = v91;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MediaAnalysis][%@] Existing analysis satisfies request (%@)", buf, 0x16u);
                }

                goto LABEL_95;
              }

              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
              {
                v101 = MediaAnalysisTypeDescription([existingAnalysisCopy vcp_types]);
                *buf = 138412546;
                v119 = localIdentifier;
                v120 = 2112;
                v121 = v101;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MediaAnalysis][%@] Existing analysis doesn't satisfy request (%@)", buf, 0x16u);
              }

              analysis &= ~[existingAnalysisCopy vcp_types];
            }

LABEL_8:
            if (bOOLValue)
            {
              analysisCopy = analysis;
            }

            else
            {
              analysisCopy = 0;
            }

            if (((bOOLValue | bOOLValue2) & 1) == 0)
            {
              analysisCopy = [(VCPMediaAnalyzer *)self _metaAnalysisTypesForAsset:assetCopy]& analysis;
            }

            if (analysisCopy)
            {
              if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                v22 = MediaAnalysisTypeDescription(analysisCopy);
                *buf = 138412546;
                v119 = localIdentifier;
                v120 = 2112;
                v121 = v22;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis][%@] Generating analysis on-demand: %@", buf, 0x16u);
              }

              v23 = [(VCPMediaAnalyzer *)self _analyzeOndemand:assetCopy forAnalysisTypes:analysisCopy withExistingAnalysis:existingAnalysisCopy andOptions:optionsCopy storeAnalysis:bOOLValue cancelBlock:blockCopy];
              if ((analysisCopy & 0x40000) != 0)
              {
                v24 = [(VCPMediaAnalyzer *)self _postProcessMovieHighlights:assetCopy analysis:v23 withOptions:optionsCopy];

                v23 = v24;
              }

              v25 = MediaAnalysisMergeAnalysis(existingAnalysisCopy, v23);
              v26 = [optionsCopy objectForKeyedSubscript:@"CaptionWithHighlight"];
              bOOLValue8 = [v26 BOOLValue];

              if (bOOLValue8)
              {
                v28 = MediaAnalysisAddCaptionToHighlightResults(v25);

                v29 = v28;
              }

              else
              {
                v29 = v25;
              }

              v37 = [optionsCopy objectForKeyedSubscript:@"PersonIDWithHighlight"];
              bOOLValue9 = [v37 BOOLValue];

              if (bOOLValue9)
              {
                v39 = [(VCPMediaAnalyzer *)self getFaceIDRanges:v29 asset:assetCopy];
                v40 = MediaAnalysisAddFaceIDToHighlightResults(v29, v39);

                v29 = v40;
              }

              v41 = [optionsCopy objectForKeyedSubscript:@"MetadataWithHighlight"];
              bOOLValue10 = [v41 BOOLValue];

              if (bOOLValue10)
              {
                v43 = [(VCPMediaAnalyzer *)self getFaceIDRanges:v29 asset:assetCopy];
                v44 = MediaAnalysisAddMetadataToHighlightResults(v29, v43);

                v29 = v44;
              }

              v45 = [optionsCopy objectForKeyedSubscript:@"VideoSpeedControl"];
              bOOLValue11 = [v45 BOOLValue];

              if (bOOLValue11)
              {
                v47 = MediaAnalysisAddVideoSpeedControlResults(v29);

                v29 = v47;
              }

              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
              {
                v48 = MediaAnalysisTypeDescription([v29 vcp_types]);
                *buf = 138412546;
                v119 = localIdentifier;
                v120 = 2112;
                v121 = v48;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MediaAnalysis][%@] Analysis served: (%@)", buf, 0x16u);
              }

              v36 = v29;

              goto LABEL_96;
            }

LABEL_95:
            existingAnalysisCopy = existingAnalysisCopy;
            v36 = existingAnalysisCopy;
            goto LABEL_96;
          }

          existingAnalysisCopy = MediaAnalysisAddVideoSpeedControlResults(v57);
LABEL_74:

          goto LABEL_76;
        }
      }
    }

    goto LABEL_65;
  }

  v113 = 0;
  v33 = [databaseCopy isAssetBlacklisted:localIdentifier blacklistDate:&v113];
  mad_fetchRequest = v113;
  if (!v33)
  {
    goto LABEL_51;
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v119 = localIdentifier;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis][%@] Analysis requested for blacklisted asset", buf, 0xCu);
  }

  v124[0] = @"version";
  v34 = [MEMORY[0x1E696AD98] numberWithInt:75];
  v125[0] = v34;
  v124[1] = @"dateModified";
  vcp_modificationDate4 = [assetCopy vcp_modificationDate];
  v125[1] = vcp_modificationDate4;
  v125[2] = mad_fetchRequest;
  v124[2] = @"dateAnalyzed";
  v124[3] = @"performedAnalysisTypes";
  v124[4] = @"flags";
  v125[3] = &unk_1F49BDFA8;
  v125[4] = &unk_1F49BDFC0;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v125 forKeys:v124 count:5];

LABEL_96:

  return v36;
}

- (id)getFaceIDRanges:(id)ranges asset:(id)asset
{
  v46[1] = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  assetCopy = asset;
  photoLibrary = [assetCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v26 = librarySpecificFetchOptions;
  [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  v46[0] = *MEMORY[0x1E6978D68];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v7];

  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BEFC8];
  [librarySpecificFetchOptions setIncludeMediaAnalysisProcessingRangeTypes:3];
  v25 = [MEMORY[0x1E69787D0] fetchFacesInAsset:assetCopy options:librarySpecificFetchOptions];
  if ([v25 count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v25;
    v8 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v8)
    {
      v31 = *v39;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v39 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v38 + 1) + 8 * i);
          personLocalIdentifier = [v10 personLocalIdentifier];
          v12 = personLocalIdentifier == 0;

          if (!v12)
          {
            if ([v10 detectionType] == 1)
            {
              v44 = v10;
              v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
              [(VCPMediaAnalyzer *)self getTimeRangesInAsset:assetCopy forFaces:v13 withAnalysis:rangesCopy];
            }

            else
            {
              v43 = v10;
              v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
              [(VCPMediaAnalyzer *)self getTimeRangesInAsset:assetCopy forAnimals:v13 withAnalysis:rangesCopy];
            }
            v14 = ;

            array = [MEMORY[0x1E695DF70] array];
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v16 = v14;
            v17 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v17)
            {
              v18 = *v35;
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v35 != v18)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v20 = MEMORY[0x1E696B098];
                  CMTimeRangeMakeFromDictionary(&v33, *(*(&v34 + 1) + 8 * j));
                  v21 = [v20 valueWithCMTimeRange:&v33];
                  [array addObject:v21];
                }

                v17 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
              }

              while (v17);
            }

            if ([v16 count])
            {
              v22 = [(VCPMediaAnalyzer *)self mergeTimeRanges:array mergeGap:0];
              personLocalIdentifier2 = [v10 personLocalIdentifier];
              [dictionary setObject:v22 forKeyedSubscript:personLocalIdentifier2];
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v8);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33.start.value) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalyzer]People UUID add to Highlight - no face results", &v33, 2u);
    }

    dictionary = 0;
  }

  return dictionary;
}

- (int)requestAnalysisForAsset:(id)asset analysisTypes:(unint64_t)types progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v25 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  completionHandlerCopy = completionHandler;
  sharedMediaAnalyzer = [objc_opt_class() sharedMediaAnalyzer];

  if (sharedMediaAnalyzer == self)
  {
    photoLibrary = [assetCopy photoLibrary];
    v13 = [(VCPMediaAnalyzer *)self _databaseForPhotoLibrary:photoLibrary];

    if (v13)
    {
      v14 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __92__VCPMediaAnalyzer_requestAnalysisForAsset_analysisTypes_progressHandler_completionHandler___block_invoke;
      block[3] = &unk_1E8350CA0;
      v18 = assetCopy;
      v19 = v13;
      selfCopy = self;
      typesCopy = types;
      v21 = completionHandlerCopy;
      dispatch_async(v14, block);
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier = [assetCopy localIdentifier];
        *buf = 138412290;
        v24 = localIdentifier;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] Failed to obtain database for Photo Library %@", buf, 0xCu);
      }

      (*(completionHandlerCopy + 2))(completionHandlerCopy, 0);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] [MediaAnalyzer requestAnalysisForAsset] call from invalid instance", buf, 2u);
    }

    (*(completionHandlerCopy + 2))(completionHandlerCopy, 0);
  }

  return -1;
}

void __92__VCPMediaAnalyzer_requestAnalysisForAsset_analysisTypes_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    v2 = [*(a1 + 32) photoLibrary];
    v3 = [v2 mad_fetchRequest];

    v4 = [*(a1 + 32) localIdentifier];
    v5 = [v3 fetchAnalysisWithLocalIdentifier:v4 predicate:0];
  }

  else
  {
    v6 = *(a1 + 40);
    v3 = [*(a1 + 32) localIdentifier];
    v5 = [v6 queryAnalysisForAsset:v3];
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  v10 = *(a1 + 32);
  v16 = @"AllowOnDemand";
  v17[0] = MEMORY[0x1E695E118];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v12 = [v8 _requestAnalysis:v9 forAsset:v10 withExistingAnalysis:v5 andDatabase:v7 andOptions:v11 cancelBlock:&__block_literal_global_952];

  v13 = *(a1 + 56);
  v14 = [*(*(a1 + 48) + 56) BOOLValue];
  v15 = v12;
  if ((v14 & 1) == 0)
  {
    v15 = MediaAnalysisStripInternalResultsFromAnalysis(v12);
  }

  (*(v13 + 16))(v13, v15);
  if ((v14 & 1) == 0)
  {
  }
}

- (BOOL)cancelAnalysisWithRequestID:(int)d
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  cancelQueue = self->_cancelQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__VCPMediaAnalyzer_cancelAnalysisWithRequestID___block_invoke;
  block[3] = &unk_1E8350CC8;
  dCopy = d;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(cancelQueue, block);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __48__VCPMediaAnalyzer_cancelAnalysisWithRequestID___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 112);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    [v4 cancel];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    if (MediaAnalysisLogLevel() >= 7)
    {
      v5 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v6 = *(a1 + 48);
        v10 = 67109120;
        v11 = v6;
        v7 = MEMORY[0x1E69E9C10];
        v8 = "[MediaAnalysis] Cancelling request %d";
LABEL_8:
        _os_log_impl(&dword_1C9B70000, v7, v5, v8, &v10, 8u);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 4)
  {
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      v10 = 67109120;
      v11 = v9;
      v7 = MEMORY[0x1E69E9C10];
      v8 = "[MediaAnalysis] Failed to find request %d; cannot cancel";
      goto LABEL_8;
    }
  }
}

- (void)assetsFromPhotoLibrary:(id)library analyzedSinceDate:(id)date completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  dateCopy = date;
  handlerCopy = handler;
  sharedMediaAnalyzer = [objc_opt_class() sharedMediaAnalyzer];

  if (sharedMediaAnalyzer != self)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] [MediaAnalyzer assetsAnalyzedSinceDate] call from invalid instance", buf, 2u);
    }

    goto LABEL_6;
  }

  if (![(NSNumber *)self->_standalone BOOLValue])
  {
    v12 = [(VCPMediaAnalyzer *)self _databaseForPhotoLibrary:libraryCopy];
    if (!v12)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        photoLibraryURL = [libraryCopy photoLibraryURL];
        path = [photoLibraryURL path];
        *buf = 138412290;
        v26 = path;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] Failed to obtain database for Photo Library (%@)", buf, 0xCu);
      }

      goto LABEL_6;
    }

    if (+[MADManagedPhotosAsset isMACDReadEnabled])
    {
      if (dateCopy)
      {
        dateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"dateAnalyzed >= %@", dateCopy];
      }

      else
      {
        dateCopy = 0;
      }

      mad_fetchRequest = [libraryCopy mad_fetchRequest];
      v23 = [mad_fetchRequest fetchAnalysesWithLocalIdentifiers:0 predicate:dateCopy];

      allKeys = [v23 allKeys];

      if (!allKeys)
      {
        goto LABEL_20;
      }
    }

    else
    {
      allKeys = [v12 queryAssetsAnalyzedSince:dateCopy];
      if (!allKeys)
      {
LABEL_20:

        goto LABEL_6;
      }
    }

    v17 = [libraryCopy fetchOptionsForMediaProcessingTaskID:PHMediaProcessingTaskIDForVCPTaskID(255) priority:0 algorithmVersion:0 sceneConfidenceThreshold:0 processed:0 exactVersionMatch:0 error:0.0];
    v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
    v24 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    [v17 setSortDescriptors:v19];

    v20 = [MEMORY[0x1E6978628] fetchAssetsWithLocalIdentifiers:allKeys options:v17];
    fetchedObjects = [v20 fetchedObjects];
    handlerCopy[2](handlerCopy, fetchedObjects);

    goto LABEL_7;
  }

LABEL_6:
  handlerCopy[2](handlerCopy, 0);
LABEL_7:
}

- (void)_checkDuplicate:(id)duplicate withAsset:(id)asset duplicate:(int64_t *)a5
{
  duplicateCopy = duplicate;
  assetCopy = asset;
  v8 = dispatch_semaphore_create(0);
  v9 = [duplicateCopy vcp_fingerprint:v8];
  v10 = [assetCopy vcp_fingerprint:v8];
  v11 = v10;
  v12 = -1;
  if (v9 && v10)
  {
    v12 = [v9 isEqualToFingerprint:v10];
  }

  *a5 = v12;
}

- (void)_getSceneDescriptors:(id)descriptors asDescriptorClass:(Class)class withSceneRange:(id *)range andAnalysisResults:(id)results
{
  v41 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  resultsCopy = results;
  v10 = MEMORY[0x1E6960CC0];
  v37 = **&MEMORY[0x1E6960CC0];
  v11 = objc_opt_class();
  v12 = &MediaAnalysisResultSceneprintAttributeKey;
  classCopy = class;
  if (v11 != class)
  {
    v12 = &MediaAnalysisResultFeatureVectorAttributeKey;
  }

  v31 = *v12;
  v13 = 0;
  *&v14 = 138413058;
  v28 = v14;
  while ([resultsCopy count] > v13)
  {
    if (v13 == [resultsCopy count] - 1)
    {
      v15 = *&range->var0.var3;
      *&range.start.value = *&range->var0.var0;
      *&range.start.epoch = v15;
      *&range.duration.timescale = *&range->var1.var1;
      CMTimeRangeGetEnd(&time1.start, &range);
      start = time1.start;
    }

    else
    {
      v16 = [resultsCopy objectAtIndexedSubscript:v13 + 1];
      v17 = [v16 objectForKeyedSubscript:@"start"];
      CMTimeMakeFromDictionary(&range.start, v17);
      start = range.start;
    }

    time1.start = v37;
    v18 = *&range->var0.var3;
    *&range.start.value = *&range->var0.var0;
    *&range.start.epoch = v18;
    *&range.duration.timescale = *&range->var1.var1;
    CMTimeRangeGetEnd(&time2.start, &range);
    if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
    {
      break;
    }

    time1.start = v37;
    lhs.start = start;
    memset(&range, 0, sizeof(range));
    rhs = v37;
    CMTimeSubtract(&time2.start, &lhs.start, &rhs);
    CMTimeRangeMake(&range, &time1.start, &time2.start);
    time2 = range;
    v19 = *&range->var0.var3;
    *&lhs.start.value = *&range->var0.var0;
    *&lhs.start.epoch = v19;
    *&lhs.duration.timescale = *&range->var1.var1;
    memset(&time1, 0, sizeof(time1));
    CMTimeRangeGetIntersection(&time1, &time2, &lhs);
    if ((time1.start.flags & 1) != 0 && (time1.duration.flags & 1) != 0 && !time1.duration.epoch && (time1.duration.value & 0x8000000000000000) == 0)
    {
      time2.start = time1.duration;
      *&lhs.start.value = *v10;
      lhs.start.epoch = *(v10 + 16);
      if (CMTimeCompare(&time2.start, &lhs.start))
      {
        v20 = [resultsCopy objectAtIndexedSubscript:v13];
        v21 = [v20 objectForKeyedSubscript:@"attributes"];
        v22 = [v21 objectForKeyedSubscript:v31];

        if (v22)
        {
          v23 = [(objc_class *)classCopy descriptorWithData:v22];
          if (!v23 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v24 = [v22 length];
            v25 = [v22 description];
            LODWORD(time2.start.value) = v28;
            *(&time2.start.value + 4) = classCopy;
            LOWORD(time2.start.flags) = 2112;
            *(&time2.start.flags + 2) = v31;
            HIWORD(time2.start.epoch) = 2048;
            time2.duration.value = v24;
            LOWORD(time2.duration.timescale) = 2112;
            *(&time2.duration.timescale + 2) = v25;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Cannot load %@ for %@, NSData length: %lu, content: %@", &time2, 0x2Au);
          }

          v38[0] = @"duration";
          time2.start = time1.duration;
          v26 = CMTimeCopyAsDictionary(&time2.start, 0);
          v38[1] = @"attributes";
          v39[0] = v26;
          v39[1] = v23;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
          [descriptorsCopy addObject:v27];
        }
      }
    }

    v37 = start;
    ++v13;
  }
}

- (id)_queryDistanceDescriptor:(Class)descriptor ofAsset:(id)asset withExistingAnalysis:(id)analysis andDatabase:(id)database timeRange:(id *)range lastFeature:(BOOL)feature isDegraded:(BOOL *)degraded
{
  featureCopy = feature;
  v66[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  analysisCopy = analysis;
  databaseCopy = database;
  if (!assetCopy)
  {
    array = 0;
    goto LABEL_70;
  }

  array = [MEMORY[0x1E695DF70] array];
  if (objc_opt_class() == descriptor && -[objc_class usePHAssetData](descriptor, "usePHAssetData") && [assetCopy mediaType] == 1)
  {
    [assetCopy fetchPropertySetsIfNeeded];
    if (objc_opt_class() == descriptor)
    {
      sceneprintProperties = [assetCopy sceneprintProperties];
      sceneprint = [sceneprintProperties sceneprint];

      if (!sceneprint)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      sceneprint = [assetCopy distanceIdentity];
      if (!sceneprint)
      {
        goto LABEL_17;
      }
    }

    v18 = [(objc_class *)descriptor descriptorWithData:sceneprint];
    if (v18)
    {
      v65[0] = @"duration";
      CMTimeMake(&time1.start, 1, 1);
      *&time.start.value = *&time1.start.value;
      time.start.epoch = time1.start.epoch;
      v19 = CMTimeCopyAsDictionary(&time.start, 0);
      v65[1] = @"attributes";
      v66[0] = v19;
      v66[1] = v18;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
      [array addObject:v20];

      if (degraded)
      {
        *degraded = 0;
      }

      goto LABEL_69;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = [sceneprint length];
      [sceneprint description];
      LODWORD(time.start.value) = 138412802;
      *(&time.start.value + 4) = descriptor;
      LOWORD(time.start.flags) = 2048;
      *(&time.start.flags + 2) = v21;
      time.duration.value = HIWORD(time.start.epoch) = 2112;
      value = time.duration.value;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Cannot load %@ from PHAsset, NSData length: %lu, content: %@", &time, 0x20u);
    }

    goto LABEL_17;
  }

LABEL_18:
  sceneprint = analysisCopy;
  if (!sceneprint)
  {
    if ([(NSNumber *)self->_standalone BOOLValue])
    {
      sceneprint = 0;
      goto LABEL_64;
    }

    if (objc_opt_class() == descriptor)
    {
      v31 = 46;
    }

    else
    {
      v31 = 12;
    }

    v32 = MEMORY[0x1E695DFA8];
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v31];
    v34 = [v32 setWithObject:v33];

    if ([assetCopy mediaType] == 2)
    {
      [v34 addObject:&unk_1F49BE020];
    }

    if (+[MADManagedPhotosAsset isMACDReadEnabled])
    {
      photoLibrary = [assetCopy photoLibrary];
      mad_fetchRequest = [photoLibrary mad_fetchRequest];

      localIdentifier = [assetCopy localIdentifier];
      sceneprint = [mad_fetchRequest fetchAnalysisWithLocalIdentifier:localIdentifier predicate:0 resultTypes:v34];
    }

    else
    {
      mad_fetchRequest = [assetCopy localIdentifier];
      sceneprint = [databaseCopy queryAnalysisForAsset:mad_fetchRequest withTypes:v34];
    }

    if (!sceneprint)
    {
      goto LABEL_64;
    }
  }

  if ([sceneprint vcp_version] >= 7)
  {
    vcp_modificationDate = [assetCopy vcp_modificationDate];
    vcp_dateModified = [sceneprint vcp_dateModified];
    v25 = [vcp_modificationDate isEqualToDate:vcp_dateModified];

    if (v25)
    {
      v26 = objc_opt_class();
      v27 = &MediaAnalysisSceneprintResultsKey;
      if (v26 != descriptor)
      {
        v27 = &MediaAnalysisFeatureVectorResultsKey;
      }

      v54 = *v27;
      v28 = [sceneprint objectForKeyedSubscript:@"metadataRanges"];
      v29 = [v28 objectForKeyedSubscript:v54];

      if ([assetCopy mediaType] == 2)
      {
        v30 = [sceneprint objectForKeyedSubscript:@"metadataRanges"];
        v55 = [v30 objectForKeyedSubscript:@"SceneResults"];

        if (!v29)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v55 = 0;
        if (!v29)
        {
LABEL_63:

          goto LABEL_64;
        }
      }

      if ([v29 count])
      {
        if (v55)
        {
          if (featureCopy)
          {
            [v55 lastObject];
          }

          else
          {
            [v55 firstObject];
          }
          v38 = ;
          memset(&time, 0, sizeof(time));
          rangeCopy = range;
          if ((range->var0.var2 & 1) == 0 || (range->var1.var2 & 1) == 0 || range->var1.var3 || range->var1.var0 < 0 || (*&time1.start.value = *&range->var1.var0, time1.start.epoch = range->var1.var3, time2 = **&MEMORY[0x1E6960CC0], v52 = CMTimeCompare(&time1.start, &time2), rangeCopy = range, v52))
          {
            v40 = *&rangeCopy->var0.var3;
            *&time.start.value = *&rangeCopy->var0.var0;
            *&time.start.epoch = v40;
            *&time.duration.timescale = *&rangeCopy->var1.var1;
          }

          else
          {
            CMTimeRangeMakeFromDictionary(&time, v38);
          }

          time1 = time;
          [(VCPMediaAnalyzer *)self _getSceneDescriptors:array asDescriptorClass:descriptor withSceneRange:&time1 andAnalysisResults:v29];
        }

        else
        {
          if (featureCopy)
          {
            [v29 lastObject];
          }

          else
          {
            [v29 firstObject];
          }
          v38 = ;
          v41 = objc_opt_class();
          v42 = &MediaAnalysisResultSceneprintAttributeKey;
          if (v41 != descriptor)
          {
            v42 = &MediaAnalysisResultFeatureVectorAttributeKey;
          }

          v57 = *v42;
          v43 = [(__CFDictionary *)v38 objectForKeyedSubscript:@"attributes"];
          v44 = [v43 objectForKeyedSubscript:v57];

          if (v44)
          {
            v45 = [(objc_class *)descriptor descriptorWithData:v44];
            if (v45)
            {
              v62[0] = @"duration";
              CMTimeMake(&time.start, 1, 1);
              v46 = CMTimeToNSDictionary(&time.start);
              v62[1] = @"attributes";
              v63[0] = v46;
              v63[1] = v45;
              v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
              [array addObject:v47];
            }

            else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v53 = [v44 length];
              v48 = [v44 description];
              LODWORD(time.start.value) = 138413058;
              *(&time.start.value + 4) = descriptor;
              LOWORD(time.start.flags) = 2112;
              *(&time.start.flags + 2) = v54;
              HIWORD(time.start.epoch) = 2048;
              time.duration.value = v53;
              LOWORD(time.duration.timescale) = 2112;
              *(&time.duration.timescale + 2) = v48;
              v49 = v48;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Cannot load %@ for %@, NSData length: %lu, content: %@", &time, 0x2Au);
            }
          }

          v55 = 0;
        }
      }

      goto LABEL_63;
    }
  }

LABEL_64:
  if (degraded)
  {
    if ([assetCopy isVideo])
    {
      v50 = (~[sceneprint vcp_types] & 0x880) != 0;
    }

    else
    {
      v50 = 0;
    }

    *degraded = v50;
  }

LABEL_69:

LABEL_70:

  return array;
}

+ (Class)_getDistanceDescriptorClass
{
  {
    +[VCPMediaAnalyzer _getDistanceDescriptorClass]::descriptorClass = objc_opt_class();
  }

  v2 = +[VCPMediaAnalyzer _getDistanceDescriptorClass]::descriptorClass;

  return v2;
}

- (void)distanceFromAsset:(id)asset toAsset:(id)toAsset duplicate:(int64_t *)duplicate distance:(float *)distance
{
  assetCopy = asset;
  toAssetCopy = toAsset;
  {
    [VCPMediaAnalyzer distanceFromAsset:toAsset:duplicate:distance:]::kDescriptorClass = +[VCPMediaAnalyzer _getDistanceDescriptorClass];
  }

  sharedMediaAnalyzer = [objc_opt_class() sharedMediaAnalyzer];

  if (sharedMediaAnalyzer == self)
  {
    photoLibrary = [assetCopy photoLibrary];
    v14 = [(VCPMediaAnalyzer *)self _databaseForPhotoLibrary:photoLibrary];

    if (+[MADManagedPhotosAsset isMACDReadEnabled])
    {
      v44 = v14;
      *buf = 0;
      v52 = 0;
      distanceCopy = distance;
      if ([assetCopy vcp_isLongMovie])
      {
        if (_os_feature_enabled_impl())
        {
          v15 = 254;
        }

        else
        {
          v15 = 1;
        }
      }

      else
      {
        v15 = 1;
      }

      photoLibrary2 = [assetCopy photoLibrary];
      mad_fetchRequest = [photoLibrary2 mad_fetchRequest];

      v51 = 0;
      v50 = 0;
      localIdentifier = [assetCopy localIdentifier];
      [mad_fetchRequest fetchProcessingStatus:buf attempts:&v52 lastAttemptDate:&v51 nextAttemptDate:&v50 localIdentifier:localIdentifier taskID:v15];
      v20 = v51;
      v21 = v50;

      bOOLValue = [(NSNumber *)self->_standalone BOOLValue];
      if (*buf)
      {
        v23 = bOOLValue;
      }

      else
      {
        v23 = 1;
      }

      if ((v23 & 1) == 0)
      {
        v24 = [MEMORY[0x1E695DF00] now];
        v25 = [v21 compare:v24];

        if (v25 == 1)
        {
          goto LABEL_32;
        }
      }

      if ([toAssetCopy vcp_isLongMovie])
      {
        v26 = _os_feature_enabled_impl();
      }

      else
      {
        v26 = 0;
      }

      v48 = v21;
      v49 = v20;
      localIdentifier2 = [toAssetCopy localIdentifier];
      if (v26)
      {
        v28 = 254;
      }

      else
      {
        v28 = 1;
      }

      [mad_fetchRequest fetchProcessingStatus:buf attempts:&v52 lastAttemptDate:&v49 nextAttemptDate:&v48 localIdentifier:localIdentifier2 taskID:v28];
      v29 = v49;

      v30 = v48;
      bOOLValue2 = [(NSNumber *)self->_standalone BOOLValue];
      if (*buf)
      {
        v32 = bOOLValue2;
      }

      else
      {
        v32 = 1;
      }

      if ((v32 & 1) == 0)
      {
        v33 = [MEMORY[0x1E695DF00] now];
        v34 = [v30 compare:v33];

        if (v34 == 1)
        {
          v20 = v29;
          v21 = v30;
LABEL_32:
          *duplicate = -1;
          *distanceCopy = -1.0;

LABEL_47:
          v14 = v44;
          goto LABEL_48;
        }
      }

      distance = distanceCopy;
      v14 = v44;
LABEL_34:
      [(VCPMediaAnalyzer *)self _checkDuplicate:assetCopy withAsset:toAssetCopy duplicate:duplicate];
      if (*duplicate == 1)
      {
        *distance = 0.0;
LABEL_48:

        goto LABEL_49;
      }

      v44 = v14;
      v35 = objc_alloc_init(VCPInterAssetAnalyzer);
      if (v35)
      {
        v36 = MEMORY[0x1E6960CA8];
        v37 = *(MEMORY[0x1E6960CA8] + 16);
        *buf = *MEMORY[0x1E6960CA8];
        v46 = v37;
        v47 = *(MEMORY[0x1E6960CA8] + 32);
        v38 = [(VCPMediaAnalyzer *)self _queryDistanceDescriptor:[VCPMediaAnalyzer distanceFromAsset:toAsset:duplicate:distance:]::kDescriptorClass ofAsset:assetCopy withExistingAnalysis:0 andDatabase:v14 timeRange:buf lastFeature:1 isDegraded:0];
        v39 = v36[1];
        *buf = *v36;
        v46 = v39;
        v47 = v36[2];
        v40 = [(VCPMediaAnalyzer *)self _queryDistanceDescriptor:[VCPMediaAnalyzer distanceFromAsset:toAsset:duplicate:distance:]::kDescriptorClass ofAsset:toAssetCopy withExistingAnalysis:0 andDatabase:v14 timeRange:buf lastFeature:0 isDegraded:0];
        if ([v38 count] && objc_msgSend(v40, "count"))
        {
          [(VCPInterAssetAnalyzer *)v35 computeDistance:distance fromArray:v38 toArray:v40];
LABEL_46:

          goto LABEL_47;
        }

        if (![(VCPInterAssetAnalyzer *)v35 computeDistance:distance withDescriptorClass:[VCPMediaAnalyzer distanceFromAsset:toAsset:duplicate:distance:]::kDescriptorClass fromAsset:assetCopy toAsset:toAssetCopy])
        {
          goto LABEL_46;
        }
      }

      else
      {
        v38 = 0;
        v40 = 0;
      }

      *distance = -1.0;
      goto LABEL_46;
    }

    if ([(NSNumber *)self->_standalone BOOLValue])
    {
      goto LABEL_34;
    }

    localIdentifier3 = [assetCopy localIdentifier];
    if ([v14 isAssetBlacklisted:localIdentifier3 blacklistDate:0])
    {
    }

    else
    {
      localIdentifier4 = [toAssetCopy localIdentifier];
      v42 = [v14 isAssetBlacklisted:localIdentifier4 blacklistDate:0];

      if (!v42)
      {
        goto LABEL_34;
      }
    }

    *duplicate = -1;
    *distance = -1.0;
    goto LABEL_48;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] [MediaAnalyzer distanceFromAsset] call from invalid instance", buf, 2u);
  }

LABEL_49:
}

- (void)distanceFromAsset:(id)asset timeRange:(id *)range toAsset:(id)toAsset timeRange:(id *)timeRange duplicate:(int64_t *)duplicate distance:(float *)distance
{
  assetCopy = asset;
  toAssetCopy = toAsset;
  {
    [VCPMediaAnalyzer distanceFromAsset:timeRange:toAsset:timeRange:duplicate:distance:]::kDescriptorClass = +[VCPMediaAnalyzer _getDistanceDescriptorClass];
  }

  sharedMediaAnalyzer = [objc_opt_class() sharedMediaAnalyzer];

  if (sharedMediaAnalyzer == self)
  {
    photoLibrary = [assetCopy photoLibrary];
    v17 = [(VCPMediaAnalyzer *)self _databaseForPhotoLibrary:photoLibrary];

    if (+[MADManagedPhotosAsset isMACDReadEnabled])
    {
      v46 = v17;
      photoLibrary2 = [assetCopy photoLibrary];
      mad_fetchRequest = [photoLibrary2 mad_fetchRequest];

      buf.start.value = 0;
      LODWORD(range2.start.value) = 0;
      if ([assetCopy vcp_isLongMovie])
      {
        v19 = _os_feature_enabled_impl();
      }

      else
      {
        v19 = 0;
      }

      v53 = 0;
      v54[0] = 0;
      localIdentifier = [assetCopy localIdentifier];
      if (v19)
      {
        v22 = 254;
      }

      else
      {
        v22 = 1;
      }

      [mad_fetchRequest fetchProcessingStatus:&buf attempts:&range2 lastAttemptDate:v54 nextAttemptDate:&v53 localIdentifier:localIdentifier taskID:v22];
      v23 = v54[0];
      v24 = v53;

      bOOLValue = [(NSNumber *)self->_standalone BOOLValue];
      if (buf.start.value)
      {
        v26 = bOOLValue;
      }

      else
      {
        v26 = 1;
      }

      if ((v26 & 1) == 0 && ([MEMORY[0x1E695DF00] now], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v24, "compare:", v27), v27, v28 == 1) || ((buf.start.value = 0, LODWORD(range2.start.value) = 0, v23, v24, !objc_msgSend(toAssetCopy, "vcp_isLongMovie")) ? (v29 = 0) : (v29 = _os_feature_enabled_impl()), (v51 = 0, v52 = 0, objc_msgSend(toAssetCopy, "localIdentifier"), v30 = objc_claimAutoreleasedReturnValue(), !v29) ? (v31 = 1) : (v31 = 254), (objc_msgSend(mad_fetchRequest, "fetchProcessingStatus:attempts:lastAttemptDate:nextAttemptDate:localIdentifier:taskID:", &buf, &range2, &v52, &v51, v30, v31), v23 = v52, v24 = v51, v30, v32 = -[NSNumber BOOLValue](self->_standalone, "BOOLValue"), !buf.start.value) ? (v33 = 1) : (v33 = v32), (v33 & 1) == 0 && (objc_msgSend(MEMORY[0x1E695DF00], "now"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v24, "compare:", v34), v34, v35 == 1)))
      {
        *duplicate = -1;
        *distance = -1.0;

        v17 = v46;
LABEL_50:

        goto LABEL_51;
      }

      v17 = v46;
LABEL_34:
      [(VCPMediaAnalyzer *)self _checkDuplicate:assetCopy withAsset:toAssetCopy duplicate:duplicate];
      if (*duplicate)
      {
        if ([assetCopy mediaType] == 2)
        {
          v36 = *&range->var0.var3;
          *&buf.start.value = *&range->var0.var0;
          *&buf.start.epoch = v36;
          *&buf.duration.timescale = *&range->var1.var1;
          v37 = *&timeRange->var0.var3;
          *&range2.start.value = *&timeRange->var0.var0;
          *&range2.start.epoch = v37;
          *&range2.duration.timescale = *&timeRange->var1.var1;
          v38 = CMTimeRangeEqual(&buf, &range2);
          *duplicate = v38 != 0;
          if (v38)
          {
LABEL_37:
            *distance = 0.0;
            goto LABEL_50;
          }
        }

        else if (*duplicate == 1)
        {
          goto LABEL_37;
        }
      }

      v39 = objc_alloc_init(VCPInterAssetAnalyzer);
      if (v39)
      {
        v40 = *&range->var0.var3;
        *&buf.start.value = *&range->var0.var0;
        *&buf.start.epoch = v40;
        *&buf.duration.timescale = *&range->var1.var1;
        v41 = [(VCPMediaAnalyzer *)self _queryDistanceDescriptor:[VCPMediaAnalyzer distanceFromAsset:timeRange:toAsset:timeRange:duplicate:distance:]::kDescriptorClass ofAsset:assetCopy withExistingAnalysis:0 andDatabase:v17 timeRange:&buf lastFeature:1 isDegraded:0];
        v42 = *&timeRange->var0.var3;
        *&buf.start.value = *&timeRange->var0.var0;
        *&buf.start.epoch = v42;
        *&buf.duration.timescale = *&timeRange->var1.var1;
        v43 = [(VCPMediaAnalyzer *)self _queryDistanceDescriptor:[VCPMediaAnalyzer distanceFromAsset:timeRange:toAsset:timeRange:duplicate:distance:]::kDescriptorClass ofAsset:toAssetCopy withExistingAnalysis:0 andDatabase:v17 timeRange:&buf lastFeature:0 isDegraded:0];
        if ([v41 count] && objc_msgSend(v43, "count"))
        {
          [(VCPInterAssetAnalyzer *)v39 computeDistance:distance fromArray:v41 toArray:v43];
LABEL_47:

          goto LABEL_50;
        }

        if (![(VCPInterAssetAnalyzer *)v39 computeDistance:distance withDescriptorClass:[VCPMediaAnalyzer distanceFromAsset:timeRange:toAsset:timeRange:duplicate:distance:]::kDescriptorClass fromAsset:assetCopy toAsset:toAssetCopy])
        {
          goto LABEL_47;
        }
      }

      else
      {
        v41 = 0;
        v43 = 0;
      }

      *distance = -1.0;
      goto LABEL_47;
    }

    if ([(NSNumber *)self->_standalone BOOLValue])
    {
      goto LABEL_34;
    }

    localIdentifier2 = [assetCopy localIdentifier];
    if ([v17 isAssetBlacklisted:localIdentifier2 blacklistDate:0])
    {
    }

    else
    {
      localIdentifier3 = [toAssetCopy localIdentifier];
      v45 = [v17 isAssetBlacklisted:localIdentifier3 blacklistDate:0];

      if (!v45)
      {
        goto LABEL_34;
      }
    }

    *duplicate = -1;
    *distance = -1.0;
    goto LABEL_50;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.start.value) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] [MediaAnalyzer distanceFromAsset] call from invalid instance", &buf, 2u);
  }

LABEL_51:
}

- (int)requestAnalysisTypes:(unint64_t)types forAssets:(id)assets withOptions:(id)options andProgressHandler:(id)handler cancelBlock:(id)block analyses:(id)analyses
{
  v191 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  optionsCopy = options;
  handlerCopy = handler;
  blockCopy = block;
  analysesCopy = analyses;
  v149 = optionsCopy;
  v13 = [optionsCopy objectForKeyedSubscript:@"AllowOnDemand"];
  bOOLValue = [v13 BOOLValue];

  v148 = [optionsCopy objectForKeyedSubscript:@"HighlightContexts"];
  v141 = [optionsCopy objectForKeyedSubscript:@"HighlightPreferredRange"];
  if (v148 && [v148 count])
  {
    v14 = types & 0xFFFFFFFBFEBDF363 | 0x40142089CLL;
    goto LABEL_6;
  }

  v15 = [optionsCopy objectForKeyedSubscript:@"HighlightPreferredRange"];

  if (v15)
  {
    v14 = types & 0xFFFFFFFBFEBDF363 | 0x40142089CLL;
    if (v148)
    {
LABEL_6:
      if ([v148 count])
      {
        v14 = types & 0xFFFEF7FBFEBDF363 | 0x108040142089CLL;
      }
    }
  }

  else
  {
    v14 = types & 0xFFFFFFFFFFFFFBFFLL;
  }

  v16 = [optionsCopy objectForKeyedSubscript:@"CaptionWithHighlight"];
  bOOLValue2 = [v16 BOOLValue];

  if (bOOLValue2)
  {
    if (+[VCPVideoCaptionAnalyzer mode]== 1)
    {
      v14 |= 0x2200000000000uLL;
    }

    else if (MediaAnalysisLogLevel() >= 4)
    {
      v18 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Caption disabled, NO caption will be returned with Highlight!", buf, 2u);
      }
    }
  }

  v20 = [optionsCopy objectForKeyedSubscript:@"PersonIDWithHighlight"];
  bOOLValue3 = [v20 BOOLValue];

  if (bOOLValue3)
  {
    v14 |= 0x20008uLL;
  }

  v22 = [optionsCopy objectForKeyedSubscript:@"MetadataWithHighlight"];
  bOOLValue4 = [v22 BOOLValue];

  v24 = v14 | 0x80000024008;
  if (!bOOLValue4)
  {
    v24 = v14;
  }

  if ((v24 & 0x8000000000000) != 0)
  {
    v25 = v24 | 0x80040004088;
  }

  else
  {
    v25 = v24;
  }

  allKeys = [v148 allKeys];
  v27 = [allKeys containsObject:@"SearchQueryString"];

  if (v27)
  {
    v28 = [(VCPMediaAnalyzer *)self prepareContextsQueryEmbedding:v148];

    v29 = [v149 mutableCopy];
    [v29 setObject:v28 forKeyedSubscript:@"HighlightContexts"];
    v30 = v29;

    v148 = v28;
    v31 = v30;
  }

  else
  {
    v31 = v149;
  }

  v150 = v31;
  if ((types & 0x400) != 0)
  {
    v32 = objc_alloc_init(VCPInterAssetAnalyzer);
    if (v25)
    {
      v25 |= 0x800uLL;
    }

    else
    {
      v25 = 0;
    }

    v138 = v32;
    if (!v32)
    {
      v163 = 0;
      v164 = 0;
      v154 = 0;
      v155 = 0;
      v165 = 0;
      v41 = 0;
      v156 = 0;
      v134 = -18;
      goto LABEL_196;
    }
  }

  else
  {
    v138 = 0;
  }

  v142 = 0;
  if (v25 && v25 != 0xFFFFFFFFFFBFFLL)
  {
    v142 = MediaAnalysisResultsTypesForAnalysisTypes(v25);
  }

  if (bOOLValue && !+[VCPDeviceInformation canRenderVariation])
  {
    v25 &= ~0x100000uLL;
  }

  v33 = [assetsCopy objectAtIndexedSubscript:0];
  photoLibrary = [v33 photoLibrary];
  v139 = v25;
  v143 = [(VCPMediaAnalyzer *)self _databaseForPhotoLibrary:photoLibrary];

  if (!v143 && MediaAnalysisLogLevel() >= 4)
  {
    v35 = MEMORY[0x1E69E9C10];
    v36 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Failed to obtain database for assets", buf, 2u);
    }
  }

  v158 = [VCPDatabaseBatchIterator iteratorForAssets:assetsCopy withDatabaseReader:v143 resultTypes:v142 batchSize:100];
  if (!v158)
  {
    v163 = 0;
    v164 = 0;
    v154 = 0;
    v155 = 0;
    v165 = 0;
    v41 = 0;
    v156 = 0;
    goto LABEL_194;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, types, 0.0);
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  v154 = 0;
  v155 = 0;
  v40 = 0;
  v165 = 0;
  v41 = 0;
  v156 = 0;
  v42 = bOOLValue;
  if (!v148)
  {
    v42 = 1;
  }

  v137 = v42;
  while (1)
  {
    v163 = v39;
    v164 = v40;
    if (![v158 next] || objc_msgSend(assetsCopy, "count") <= v37)
    {
      break;
    }

    context = objc_autoreleasePoolPush();
    asset = [v158 asset];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v175 = 0;

    v159 = v37 + 1;
    if (!dictionary)
    {
      v45 = 0;
      v162 = 0;
      v46 = 0;
      v165 = 0;
      v41 = 0;
      goto LABEL_119;
    }

    if (([asset isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      goto LABEL_94;
    }

    vcp_modificationDate = [asset vcp_modificationDate];
    v44 = vcp_modificationDate == 0;

    if (v44)
    {
      goto LABEL_94;
    }

    if (blockCopy && (blockCopy[2]() & 1) != 0)
    {
      v45 = 0;
      v162 = 0;
      v46 = 0;
    }

    else
    {
      v47 = v139;
      if (v139)
      {
        v48 = [v150 mutableCopy];
        [v48 removeObjectForKey:@"HighlightPreferredRange"];
        if ([v141 count] > v37)
        {
          v49 = [v141 objectAtIndexedSubscript:v37];
          [v48 setObject:v49 forKeyedSubscript:@"HighlightPreferredRange"];

          v47 = v139;
        }

        if ((v137 & 1) == 0 && [v148 count])
        {
          [v48 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SkipMetaDataOnDemand"];
        }

        analysis = [v158 analysis];
        v51 = [(VCPMediaAnalyzer *)self _requestAnalysis:v47 forAsset:asset withExistingAnalysis:analysis andDatabase:v143 andOptions:v48 cancelBlock:blockCopy];

        if (v51)
        {
          [dictionary addEntriesFromDictionary:v51];
          if (([dictionary vcp_flags] & 0x80000000) != 0)
          {

            goto LABEL_94;
          }

          v52 = [dictionary objectForKeyedSubscript:@"metadataRanges"];
        }

        else
        {
          v52 = 0;
        }
      }

      else
      {
        v52 = 0;
      }

      if (!blockCopy || (blockCopy[2]() & 1) == 0)
      {
        if ((types & 0x400) == 0)
        {
          v45 = 0;
          v162 = 0;
          v165 = 0;
          v41 = 0;
          v54 = 1;
          goto LABEL_95;
        }

        if (!v52)
        {
          dictionary2 = [MEMORY[0x1E695DF90] dictionary];
          if (dictionary2)
          {
            v52 = dictionary2;
            [dictionary setObject:? forKey:?];
            goto LABEL_80;
          }

LABEL_94:
          v45 = 0;
          v162 = 0;
          v52 = 0;
          v54 = 0;
          v165 = 0;
          v41 = 0;
LABEL_95:
          v66 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:dictionary];
          v46 = v52;
          if (types == 0x10000)
          {
            v67 = 0;
          }

          else
          {
            v67 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v52];
          }

          [v66 removeObjectForKey:@"metadataRanges"];
          v68 = [v66 objectForKey:@"quality"];
          v69 = v68 == 0;

          if (!v69)
          {
            [v66 vcp_addTypes:0x10000];
          }

          if (v67)
          {
            if ([v67 count])
            {
              v70 = -[VCPMediaAnalyzer _typesToRemove:requested:](self, "_typesToRemove:requested:", [v66 vcp_types], types);
              v168 = 0u;
              v169 = 0u;
              v166 = 0u;
              v167 = 0u;
              v71 = MediaAnalysisResultsKeysForAnalysisTypes(v70 & 0xFFFFFFFFFFFFF3FFLL);
              v72 = [v71 countByEnumeratingWithState:&v166 objects:v176 count:16];
              if (v72)
              {
                v73 = *v167;
                do
                {
                  for (i = 0; i != v72; ++i)
                  {
                    if (*v167 != v73)
                    {
                      objc_enumerationMutation(v71);
                    }

                    [v67 removeObjectForKey:*(*(&v166 + 1) + 8 * i)];
                  }

                  v72 = [v71 countByEnumeratingWithState:&v166 objects:v176 count:16];
                }

                while (v72);
              }

              if ((types & 0x400) == 0)
              {
                [v67 removeObjectForKey:@"DistanceResults"];
              }
            }

            if ([v67 count])
            {
              [v66 setObject:v67 forKey:@"metadataRanges"];
            }
          }

          bOOLValue5 = [(NSNumber *)self->_noResultStrip BOOLValue];
          v76 = v66;
          if (!bOOLValue5)
          {
            v144 = MediaAnalysisStripInternalResultsFromAnalysis(v66);
            v76 = v144;
          }

          [analysesCopy addObject:v76];
          if (!bOOLValue5)
          {
          }

          if (v54)
          {
            v41 = v41;

            v165 = v165;
            v77 = asset;

            v78 = dictionary;
            v45 = v45;

            v163 = v45;
            v164 = v77;
            v38 = v175;
            v154 = v78;
            v155 = v165;
            v156 = v41;
LABEL_120:
            if (handlerCopy)
            {
              handlerCopy[2](handlerCopy, types, v159 * 100.0 / [assetsCopy count]);
            }

            v53 = 1;
            goto LABEL_123;
          }

LABEL_119:

          v38 = 0;
          v163 = 0;
          v164 = 0;
          v154 = 0;
          v155 = 0;
          v156 = 0;
          goto LABEL_120;
        }

LABEL_80:
        v56 = v52;
        if (v164 && [v164 mediaType] == 2)
        {
          v57 = v154;
          if (!v139)
          {
            v57 = 0;
          }

          v162 = v57;
          v58 = objc_opt_class();
          v59 = *(MEMORY[0x1E6960CA8] + 16);
          *buf = *MEMORY[0x1E6960CA8];
          v189 = v59;
          v190 = *(MEMORY[0x1E6960CA8] + 32);
          v60 = [(VCPMediaAnalyzer *)self _queryDistanceDescriptor:v58 ofAsset:v164 withExistingAnalysis:v162 andDatabase:v143 timeRange:buf lastFeature:1 isDegraded:0];

          v155 = v60;
          v61 = objc_opt_class();
          v62 = *(MEMORY[0x1E6960CA8] + 16);
          *buf = *MEMORY[0x1E6960CA8];
          v189 = v62;
          v190 = *(MEMORY[0x1E6960CA8] + 32);
          v63 = [(VCPMediaAnalyzer *)self _queryDistanceDescriptor:v61 ofAsset:v164 withExistingAnalysis:v162 andDatabase:v143 timeRange:buf lastFeature:1 isDegraded:0];

          v156 = v63;
          if (!bOOLValue || [v63 count] && objc_msgSend(v155, "count"))
          {
            goto LABEL_92;
          }

          v64 = v163;
          if (!v163)
          {
            v64 = [MEMORY[0x1E69786D0] vcp_allAcceptableResourcesForAsset:asset];
          }

          v163 = v64;
          if (![VCPInterAssetAnalyzer canUseLastFrameOfAsset:v164 withResources:?])
          {
            goto LABEL_92;
          }

          if ([v155 count])
          {
            goto LABEL_91;
          }

          v174 = 0;
          v94 = [(VCPInterAssetAnalyzer *)v138 generateDistanceDescriptor:&v174 withDescriptorClass:objc_opt_class() forAsset:v164 withResources:v163 lastFrame:1];
          v95 = v174;
          v96 = v95;
          if (v94)
          {
LABEL_158:

            goto LABEL_159;
          }

          if (v95)
          {
            v116 = MEMORY[0x1E695DEC8];
            v186[0] = @"duration";
            CMTimeMake(buf, 1, 1);
            v117 = CMTimeToNSDictionary(buf);
            v186[1] = @"attributes";
            v187[0] = v117;
            v187[1] = v96;
            v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v187 forKeys:v186 count:2];
            v119 = [v116 arrayWithObject:v118];

            v155 = v119;
LABEL_91:
            if ([v156 count])
            {
LABEL_92:
              v65 = v162;
              goto LABEL_126;
            }

            v173 = 0;
            v101 = [(VCPInterAssetAnalyzer *)v138 generateDistanceDescriptor:&v173 withDescriptorClass:objc_opt_class() forAsset:v164 withResources:v163 lastFrame:1];
            v95 = v173;
            v102 = v95;
            if (v101)
            {
              goto LABEL_158;
            }

            if (v95)
            {
              v123 = MEMORY[0x1E695DEC8];
              v184[0] = @"duration";
              CMTimeMake(buf, 1, 1);
              v124 = CMTimeToNSDictionary(buf);
              v184[1] = @"attributes";
              v185[0] = v124;
              v185[1] = v102;
              v125 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v185 forKeys:v184 count:2];
              v126 = [v123 arrayWithObject:v125];

              v156 = v126;
              goto LABEL_92;
            }

            if (MediaAnalysisLogLevel() >= 3)
            {
              v130 = MEMORY[0x1E69E9C10];
              v131 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
              {
                localIdentifier = [asset localIdentifier];
                *buf = 138412290;
                *&buf[4] = localIdentifier;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to generate asset descriptor", buf, 0xCu);
              }

              goto LABEL_182;
            }
          }

          else if (MediaAnalysisLogLevel() >= 3)
          {
            v127 = MEMORY[0x1E69E9C10];
            v128 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
            {
              localIdentifier2 = [asset localIdentifier];
              *buf = 138412290;
              *&buf[4] = localIdentifier2;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to generate asset descriptor", buf, 0xCu);
            }

LABEL_182:
          }

LABEL_159:
          v45 = 0;
          v54 = 0;
          v165 = 0;
          v41 = 0;
LABEL_160:
          v52 = v56;
          goto LABEL_95;
        }

        v65 = 0;
LABEL_126:
        v79 = dictionary;
        if (!v139)
        {
          v79 = 0;
        }

        v162 = v79;

        v52 = v56;
        v80 = objc_opt_class();
        v81 = *(MEMORY[0x1E6960CA8] + 16);
        *buf = *MEMORY[0x1E6960CA8];
        v189 = v81;
        v190 = *(MEMORY[0x1E6960CA8] + 32);
        v165 = [(VCPMediaAnalyzer *)self _queryDistanceDescriptor:v80 ofAsset:asset withExistingAnalysis:v162 andDatabase:v143 timeRange:buf lastFeature:0 isDegraded:0];
        v82 = objc_opt_class();
        v83 = *(MEMORY[0x1E6960CA8] + 16);
        *buf = *MEMORY[0x1E6960CA8];
        v189 = v83;
        v190 = *(MEMORY[0x1E6960CA8] + 32);
        v84 = [(VCPMediaAnalyzer *)self _queryDistanceDescriptor:v82 ofAsset:asset withExistingAnalysis:v162 andDatabase:v143 timeRange:buf lastFeature:0 isDegraded:&v175];
        v41 = v84;
        if (!bOOLValue || [v84 count] && objc_msgSend(v165, "count"))
        {
          v45 = 0;
LABEL_132:
          v54 = 1;
          if (v156 && v41 && [v156 count] && objc_msgSend(v41, "count") && v155 && v165 && objc_msgSend(v155, "count") && objc_msgSend(v165, "count"))
          {
            *buf = 0;
            v170 = 0;
            if ([(VCPInterAssetAnalyzer *)v138 computeDistance:buf fromArray:v156 toArray:v41]|| [(VCPInterAssetAnalyzer *)v138 computeDistance:&v170 fromArray:v155 toArray:v165])
            {
              v54 = 0;
            }

            else
            {
              dictionary3 = [MEMORY[0x1E695DF90] dictionary];
              v108 = dictionary3;
              v136 = dictionary3 != 0;
              if (dictionary3)
              {
                if ((v38 & 1) != 0 || v175 == 1)
                {
                  [dictionary3 setObject:&unk_1F49BE038 forKey:@"flags"];
                }

                v178[0] = @"distance";
                LODWORD(v107) = *buf;
                v109 = [MEMORY[0x1E696AD98] numberWithFloat:v107];
                v179[0] = v109;
                v178[1] = @"sceneprintDistance";
                LODWORD(v110) = v170;
                v111 = [MEMORY[0x1E696AD98] numberWithFloat:v110];
                v179[1] = v111;
                v178[2] = @"neighbor";
                localIdentifier3 = [v164 localIdentifier];
                v179[2] = localIdentifier3;
                v178[3] = @"neighborDateModified";
                vcp_modificationDate2 = [v164 vcp_modificationDate];
                v179[3] = vcp_modificationDate2;
                v114 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v179 forKeys:v178 count:4];
                [v108 setObject:v114 forKey:@"attributes"];

                v177 = v108;
                v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v177 count:1];
                [v56 setObject:v115 forKey:@"DistanceResults"];

                [dictionary vcp_addTypes:1024];
              }

              v52 = v56;
              v54 = v136;
            }
          }

          goto LABEL_95;
        }

        v45 = [MEMORY[0x1E69786D0] vcp_allAcceptableResourcesForAsset:asset];
        if (![v45 vcp_hasLocalPhoto:{objc_msgSend(asset, "hasAdjustments")}])
        {
          goto LABEL_132;
        }

        if ([v165 count])
        {
LABEL_145:
          if ([v41 count])
          {
            goto LABEL_132;
          }

          v171 = 0;
          v85 = [(VCPInterAssetAnalyzer *)v138 generateDistanceDescriptor:&v171 withDescriptorClass:objc_opt_class() forAsset:asset withResources:v45 lastFrame:0];
          v86 = v171;
          v87 = v86;
          if (v85)
          {
LABEL_149:

            goto LABEL_150;
          }

          if (v86)
          {
            v97 = MEMORY[0x1E695DEC8];
            v180[0] = @"duration";
            CMTimeMake(buf, 1, 1);
            v98 = CMTimeToNSDictionary(buf);
            v180[1] = @"attributes";
            v181[0] = v98;
            v181[1] = v87;
            v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v181 forKeys:v180 count:2];
            v100 = [v97 arrayWithObject:v99];

            v41 = v100;
            v52 = v56;
            goto LABEL_132;
          }

          if (MediaAnalysisLogLevel() >= 3)
          {
            v120 = MEMORY[0x1E69E9C10];
            v121 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
            {
              localIdentifier4 = [asset localIdentifier];
              *buf = 138412290;
              *&buf[4] = localIdentifier4;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to generate asset descriptor", buf, 0xCu);
            }

LABEL_164:
          }
        }

        else
        {
          v172 = 0;
          v88 = [(VCPInterAssetAnalyzer *)v138 generateDistanceDescriptor:&v172 withDescriptorClass:objc_opt_class() forAsset:asset withResources:v45 lastFrame:0];
          v86 = v172;
          v89 = v86;
          if (v88)
          {
            goto LABEL_149;
          }

          if (v86)
          {
            v90 = MEMORY[0x1E695DEC8];
            v182[0] = @"duration";
            CMTimeMake(buf, 1, 1);
            v91 = CMTimeToNSDictionary(buf);
            v182[1] = @"attributes";
            v183[0] = v91;
            v183[1] = v89;
            v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v183 forKeys:v182 count:2];
            v93 = [v90 arrayWithObject:v92];

            v165 = v93;
            v52 = v56;
            goto LABEL_145;
          }

          if (MediaAnalysisLogLevel() >= 3)
          {
            v103 = MEMORY[0x1E69E9C10];
            v104 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
            {
              localIdentifier5 = [asset localIdentifier];
              *buf = 138412290;
              *&buf[4] = localIdentifier5;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to generate asset descriptor", buf, 0xCu);
            }

            goto LABEL_164;
          }
        }

LABEL_150:
        v54 = 0;
        goto LABEL_160;
      }

      v46 = v52;
      v45 = 0;
      v162 = 0;
    }

    v53 = 0;
    v165 = 0;
    v41 = 0;
LABEL_123:

    v39 = v163;
    v40 = v164;
    objc_autoreleasePoolPop(context);
    v37 = v159;
    if ((v53 & 1) == 0)
    {
      v134 = -128;
      goto LABEL_195;
    }
  }

  v133 = [assetsCopy count];
  if (v133 == [analysesCopy count])
  {
    v134 = 0;
    goto LABEL_195;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] failed to request analyses", buf, 2u);
  }

LABEL_194:
  v134 = -18;
LABEL_195:

LABEL_196:
  return v134;
}

- (int)requestAnalysesForAssets:(id)assets analysisTypes:(unint64_t)types allowOndemand:(BOOL)ondemand progressHandler:(id)handler completionHandler:(id)completionHandler
{
  ondemandCopy = ondemand;
  v19[1] = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v18 = @"AllowOnDemand";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:ondemandCopy];
  v19[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  LODWORD(types) = [(VCPMediaAnalyzer *)self requestAnalysis:types forAssets:assetsCopy withOptions:v16 andProgressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];

  return types;
}

- (int)requestAnalysis:(unint64_t)analysis forAssets:(id)assets withOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  assetsCopy = assets;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  sharedMediaAnalyzer = [objc_opt_class() sharedMediaAnalyzer];

  if (sharedMediaAnalyzer != self)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] [requestAnalysesForAssets] call from invalid instance", buf, 2u);
    }

    goto LABEL_15;
  }

  if (!assetsCopy || ![assetsCopy count])
  {
LABEL_15:
    completionHandlerCopy[2](completionHandlerCopy, 0);
    add = -1;
    goto LABEL_16;
  }

  v17 = [optionsCopy objectForKeyedSubscript:@"AllowOnDemand"];
  bOOLValue = [v17 BOOLValue];

  if (!self->_standalone || ([optionsCopy objectForKeyedSubscript:@"Standalone"], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
  {
    v20 = [optionsCopy objectForKeyedSubscript:@"Standalone"];
    standalone = self->_standalone;
    self->_standalone = v20;
  }

  if (!self->_noResultStrip || ([optionsCopy objectForKeyedSubscript:@"KeepPrivateResults"], v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
  {
    v23 = [optionsCopy objectForKeyedSubscript:@"KeepPrivateResults"];
    noResultStrip = self->_noResultStrip;
    self->_noResultStrip = v23;
  }

  if (!(bOOLValue & 1 | ![(NSNumber *)self->_standalone BOOLValue]))
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] [requestAnalysesForAssets] in standalone mode but on-demand not allowed", buf, 2u);
    }

    goto LABEL_15;
  }

  add = atomic_fetch_add(&self->_nextRequestID.__a_.__a_value, 1u);
  v26 = objc_alloc_init(VCPCancelToken);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__VCPMediaAnalyzer_requestAnalysis_forAssets_withOptions_andProgressHandler_andCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E834C078;
  v27 = v26;
  v46 = v27;
  v28 = _Block_copy(aBlock);
  cancelQueue = self->_cancelQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__VCPMediaAnalyzer_requestAnalysis_forAssets_withOptions_andProgressHandler_andCompletionHandler___block_invoke_2;
  block[3] = &unk_1E8350CF0;
  v44 = add;
  block[4] = self;
  v43 = v27;
  v30 = v27;
  dispatch_sync(cancelQueue, block);
  v31 = dispatch_get_global_queue(0, 0);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __98__VCPMediaAnalyzer_requestAnalysis_forAssets_withOptions_andProgressHandler_andCompletionHandler___block_invoke_3;
  v34[3] = &unk_1E8350D18;
  v34[4] = self;
  analysisCopy = analysis;
  v35 = assetsCopy;
  v36 = optionsCopy;
  v37 = handlerCopy;
  v38 = v28;
  v39 = completionHandlerCopy;
  v41 = add;
  v32 = v28;
  dispatch_async(v31, v34);

LABEL_16:
  return add;
}

void __98__VCPMediaAnalyzer_requestAnalysis_forAssets_withOptions_andProgressHandler_andCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 112);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  [v2 setObject:v1 forKeyedSubscript:?];
}

void __98__VCPMediaAnalyzer_requestAnalysis_forAssets_withOptions_andProgressHandler_andCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  if ([*(a1 + 32) requestAnalysisTypes:*(a1 + 80) forAssets:*(a1 + 40) withOptions:*(a1 + 48) andProgressHandler:*(a1 + 56) cancelBlock:*(a1 + 64) analyses:v2])
  {

    v2 = 0;
  }

  (*(*(a1 + 72) + 16))();
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __98__VCPMediaAnalyzer_requestAnalysis_forAssets_withOptions_andProgressHandler_andCompletionHandler___block_invoke_4;
  v5[3] = &unk_1E834C978;
  v5[4] = v3;
  v6 = *(a1 + 88);
  dispatch_sync(v4, v5);
}

void __98__VCPMediaAnalyzer_requestAnalysis_forAssets_withOptions_andProgressHandler_andCompletionHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 112);
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  [v1 removeObjectForKey:?];
}

- (id)requestAnalysisTypes:(unint64_t)types forAssets:(id)assets allowOndemand:(BOOL)ondemand progressHandler:(id)handler error:(id *)error
{
  ondemandCopy = ondemand;
  v19[1] = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  handlerCopy = handler;
  v18 = @"AllowOnDemand";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:ondemandCopy];
  v19[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v16 = [(VCPMediaAnalyzer *)self requestAnalysis:types forAssets:assetsCopy withOptions:v15 andProgressHandler:handlerCopy andError:error];

  return v16;
}

- (id)requestAnalysis:(unint64_t)analysis forAssets:(id)assets withOptions:(id)options andProgressHandler:(id)handler andError:(id *)error
{
  assetsCopy = assets;
  optionsCopy = options;
  handlerCopy = handler;
  v15 = [optionsCopy objectForKeyedSubscript:@"AllowOnDemand"];
  bOOLValue = [v15 BOOLValue];

  if (!self->_standalone || ([optionsCopy objectForKeyedSubscript:@"Standalone"], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
  {
    v18 = [optionsCopy objectForKeyedSubscript:@"Standalone"];
    standalone = self->_standalone;
    self->_standalone = v18;
  }

  if (!self->_noResultStrip || ([optionsCopy objectForKeyedSubscript:@"KeepPrivateResults"], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
  {
    v21 = [optionsCopy objectForKeyedSubscript:@"KeepPrivateResults"];
    noResultStrip = self->_noResultStrip;
    self->_noResultStrip = v21;
  }

  sharedMediaAnalyzer = [objc_opt_class() sharedMediaAnalyzer];

  if (sharedMediaAnalyzer != self)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] call from invalid instance", buf, 2u);
    }

    array = 0;
    v25 = -18;
    goto LABEL_12;
  }

  if (![assetsCopy count])
  {
LABEL_15:
    array = 0;
    goto LABEL_16;
  }

  if (!(bOOLValue & 1 | ![(NSNumber *)self->_standalone BOOLValue]))
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v27 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] on-demand analysis requested in standalone mode", v27, 2u);
    }

    array = 0;
    v25 = -50;
    goto LABEL_12;
  }

  array = [MEMORY[0x1E695DF70] array];
  v25 = [(VCPMediaAnalyzer *)self requestAnalysisTypes:analysis forAssets:assetsCopy withOptions:optionsCopy andProgressHandler:handlerCopy cancelBlock:&__block_literal_global_972 analyses:array];
  if (v25)
  {
LABEL_12:
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v25 userInfo:0];
    }

    goto LABEL_15;
  }

LABEL_16:

  return array;
}

- (id)curateMovieAssetsForCollection:(id)collection withAlreadyCuratedAssets:(id)assets andDesiredCount:(unint64_t)count allowOnDemand:(BOOL)demand
{
  demandCopy = demand;
  v107 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  assetsCopy = assets;
  v64 = collectionCopy;
  {
    [VCPMediaAnalyzer curateMovieAssetsForCollection:withAlreadyCuratedAssets:andDesiredCount:allowOnDemand:]::kDescriptorClass = +[VCPMediaAnalyzer _getDistanceDescriptorClass];
  }

  reverseObjectEnumerator = 0;
  if (collectionCopy && count)
  {
    if (demandCopy && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Warning: On demand analysis is not supported.", buf, 2u);
    }

    photoLibrary = [collectionCopy photoLibrary];
    v11 = [(VCPMediaAnalyzer *)self _databaseForPhotoLibrary:?];
    if (v11)
    {
      v78 = v11;
      array = [MEMORY[0x1E695DF70] array];
      v59 = [MEMORY[0x1E6978628] vcp_fetchOptionsForLibrary:photoLibrary forTaskID:1];
      v60 = [MEMORY[0x1E6978628] fetchAssetsInAssetCollection:collectionCopy options:?];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      if (+[MADManagedPhotosAsset isMACDReadEnabled])
      {
        photoLibrary2 = [collectionCopy photoLibrary];
        mad_fetchRequest = [photoLibrary2 mad_fetchRequest];
      }

      else
      {
        mad_fetchRequest = 0;
      }

      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      obj = v60;
      v14 = [obj countByEnumeratingWithState:&v95 objects:v106 count:16];
      if (v14)
      {
        v15 = *v96;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v96 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v95 + 1) + 8 * i);
            v18 = objc_autoreleasePoolPush();
            if ([v17 isVideo] && (objc_msgSend(assetsCopy, "containsObject:", v17) & 1) == 0)
            {
              [v17 fetchPropertySetsIfNeeded];
              localIdentifier = [v17 localIdentifier];
              if (+[MADManagedPhotosAsset isMACDReadEnabled])
              {
                [mad_fetchRequest fetchAnalysisWithLocalIdentifier:localIdentifier predicate:0];
              }

              else
              {
                [v78 queryAnalysisForAsset:localIdentifier];
              }
              v20 = ;
              v21 = MediaAnalysisPostProcessCurationScore(v17, v20);

              if (v21)
              {
                if (([v21 vcp_types] & 0x80) != 0 && (objc_msgSend(v21, "vcp_flags") & 0x80000000) == 0)
                {
                  [v21 vcp_quality];
                  *&v22 = v22;
                  if (*&v22 > 0.4)
                  {
                    v23 = [MEMORY[0x1E696AD98] numberWithFloat:?];
                    v24 = [dictionary objectForKey:v23];
                    if (!v24)
                    {
                      v24 = [MEMORY[0x1E695DFA8] set];
                      [dictionary setObject:v24 forKey:v23];
                    }

                    [v24 addObject:v17];
                  }
                }
              }
            }

            objc_autoreleasePoolPop(v18);
          }

          v14 = [obj countByEnumeratingWithState:&v95 objects:v106 count:16];
        }

        while (v14);
      }

      allKeys = [dictionary allKeys];
      v61 = [allKeys sortedArrayUsingSelector:sel_compare_];

      array2 = [MEMORY[0x1E695DF70] array];
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v27 = assetsCopy;
      v28 = [v27 countByEnumeratingWithState:&v91 objects:v105 count:16];
      v29 = MEMORY[0x1E6960CA8];
      if (v28)
      {
        v30 = *v92;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v92 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v91 + 1) + 8 * j);
            v33 = objc_autoreleasePoolPush();
            v34 = v29[1];
            *buf = *v29;
            v103 = v34;
            v104 = v29[2];
            v35 = [(VCPMediaAnalyzer *)self _queryDistanceDescriptor:[VCPMediaAnalyzer curateMovieAssetsForCollection:withAlreadyCuratedAssets:andDesiredCount:allowOnDemand:]::kDescriptorClass ofAsset:v32 withExistingAnalysis:0 andDatabase:v78 timeRange:buf lastFeature:0 isDegraded:0];
            if ([v35 count])
            {
              if ([v35 count] >= 0xB)
              {
                v36 = [v35 subarrayWithRange:{0, 10}];

                v35 = v36;
              }

              [array2 addObject:v35];
            }

            objc_autoreleasePoolPop(v33);
          }

          v28 = [v27 countByEnumeratingWithState:&v91 objects:v105 count:16];
        }

        while (v28);
      }

      v75 = objc_alloc_init(VCPInterAssetAnalyzer);
      if (!v75)
      {
        goto LABEL_88;
      }

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v68 = array2;
      reverseObjectEnumerator = [v61 reverseObjectEnumerator];
      v69 = reverseObjectEnumerator;
      v56 = [reverseObjectEnumerator countByEnumeratingWithState:&v87 objects:v101 count:16];
      if (v56)
      {
        v63 = 0;
        v57 = *v88;
        do
        {
          for (k = 0; k != v56; ++k)
          {
            if (*v88 != v57)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v37 = *(*(&v87 + 1) + 8 * k);
            v83 = 0u;
            v84 = 0u;
            v85 = 0u;
            v86 = 0u;
            v38 = [dictionary objectForKey:v37];
            v67 = v38;
            v39 = [v38 countByEnumeratingWithState:&v83 objects:v100 count:16];
            if (v39)
            {
              v71 = *v84;
              do
              {
                v40 = 0;
                v72 = v39;
                do
                {
                  if (*v84 != v71)
                  {
                    objc_enumerationMutation(v67);
                  }

                  v41 = *(*(&v83 + 1) + 8 * v40);
                  context = objc_autoreleasePoolPush();
                  v42 = v29[1];
                  *buf = *v29;
                  v103 = v42;
                  v104 = v29[2];
                  v43 = [(VCPMediaAnalyzer *)self _queryDistanceDescriptor:[VCPMediaAnalyzer curateMovieAssetsForCollection:withAlreadyCuratedAssets:andDesiredCount:allowOnDemand:]::kDescriptorClass ofAsset:v41 withExistingAnalysis:0 andDatabase:v78 timeRange:buf lastFeature:0 isDegraded:0];
                  if (![v43 count])
                  {
                    v52 = 0;
                    v53 = 16;
                    goto LABEL_76;
                  }

                  if ([v43 count] >= 0xB)
                  {
                    v44 = [v43 subarrayWithRange:{0, 10}];

                    v43 = v44;
                  }

                  v81 = 0u;
                  v82 = 0u;
                  v79 = 0u;
                  v80 = 0u;
                  v45 = array2;
                  v46 = [v45 countByEnumeratingWithState:&v79 objects:v99 count:16];
                  if (!v46)
                  {
                    goto LABEL_69;
                  }

                  v47 = *v80;
                  while (2)
                  {
                    for (m = 0; m != v46; ++m)
                    {
                      if (*v80 != v47)
                      {
                        objc_enumerationMutation(v45);
                      }

                      v49 = *(*(&v79 + 1) + 8 * m);
                      *buf = 0;
                      v50 = [(VCPInterAssetAnalyzer *)v75 computeDistance:buf fromArray:v43 toArray:v49];
                      v52 = v50 != 0;
                      if (v50)
                      {
                        v53 = 12;
                        v63 = v50;
LABEL_74:

                        array2 = v68;
                        reverseObjectEnumerator = v69;
                        goto LABEL_76;
                      }

                      LODWORD(v51) = *buf;
                      if (*buf < 0.1)
                      {
                        v53 = 0;
                        goto LABEL_74;
                      }
                    }

                    v46 = [v45 countByEnumeratingWithState:&v79 objects:v99 count:{16, v51}];
                    array2 = v68;
                    if (v46)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_69:

                  reverseObjectEnumerator = v69;
                  [array addObject:v41];
                  if ([array count] == count)
                  {
                    v63 = 0;
                    v53 = 12;
                    v52 = 1;
                  }

                  else
                  {
                    [v45 addObject:v43];
                    v52 = 0;
                    v53 = 0;
                  }

LABEL_76:

                  objc_autoreleasePoolPop(context);
                  if ((v53 | 0x10) != 0x10)
                  {

                    if (!v52)
                    {
LABEL_93:

LABEL_94:
                      v11 = v78;
                      goto LABEL_95;
                    }

LABEL_87:
                    if (v63)
                    {
LABEL_88:
                      v54 = 0;
                    }

                    else if ([array count])
                    {
                      v54 = array;
                    }

                    else
                    {
                      v54 = 0;
                    }

                    reverseObjectEnumerator = v54;
                    goto LABEL_93;
                  }

                  ++v40;
                }

                while (v40 != v72);
                v38 = v67;
                v39 = [v67 countByEnumeratingWithState:&v83 objects:v100 count:16];
              }

              while (v39);
            }
          }

          v56 = [reverseObjectEnumerator countByEnumeratingWithState:&v87 objects:v101 count:16];
        }

        while (v56);
      }

      else
      {
        v63 = 0;
      }

      goto LABEL_87;
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v78 = 0;
      localIdentifier2 = [collectionCopy localIdentifier];
      *buf = 138412290;
      *&buf[4] = localIdentifier2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Failed to obtain database for collection %@", buf, 0xCu);

      reverseObjectEnumerator = 0;
      goto LABEL_94;
    }

    reverseObjectEnumerator = 0;
LABEL_95:
  }

  return reverseObjectEnumerator;
}

- (id)requestMovieHighlightsForAssets:(id)assets withOptions:(id)options
{
  v71 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  optionsCopy = options;
  v59 = assetsCopy;
  if ([assetsCopy count])
  {
    v6 = [assetsCopy objectAtIndexedSubscript:0];
    photoLibrary = [v6 photoLibrary];
    v8 = [(VCPMediaAnalyzer *)self _databaseForPhotoLibrary:photoLibrary];

    v52 = v8;
    if (v8)
    {
      v9 = [optionsCopy objectForKeyedSubscript:@"AllowOnDemand"];
      bOOLValue = [v9 BOOLValue];

      v10 = [optionsCopy objectForKeyedSubscript:@"ScaledSlomoTime"];
      bOOLValue2 = [v10 BOOLValue];

      v50 = [optionsCopy objectForKeyedSubscript:@"HighlightContexts"];
      allKeys = [v50 allKeys];
      v12 = [allKeys containsObject:@"SearchQueryString"];

      if (v12)
      {
        v13 = [(VCPMediaAnalyzer *)self prepareContextsQueryEmbedding:v50];

        v14 = [optionsCopy mutableCopy];
        [v14 setObject:v13 forKeyedSubscript:@"HighlightContexts"];

        v50 = v13;
        optionsCopy = v14;
      }

      if (+[MADManagedPhotosAsset isMACDReadEnabled])
      {
        firstObject = [v59 firstObject];
        photoLibrary2 = [firstObject photoLibrary];
        mad_fetchRequest = [photoLibrary2 mad_fetchRequest];
      }

      else
      {
        mad_fetchRequest = 0;
      }

      array = [MEMORY[0x1E695DF70] array];
      for (i = 0; [v59 count] > i; ++i)
      {
        v61 = [v59 objectAtIndexedSubscript:?];
        context = objc_autoreleasePoolPush();
        v17 = v61;
        [v61 fetchPropertySetsIfNeeded];
        v18 = [[VCPMovieCurationResults alloc] initWithPHAsset:v61];
        if ([v61 isVideo] && (objc_msgSend(v61, "vcp_isShortMovie") & 1) == 0)
        {
          if ([(NSNumber *)self->_standalone BOOLValue])
          {
            v19 = 0;
            v57 = 0;
          }

          else
          {
            if (+[MADManagedPhotosAsset isMACDReadEnabled])
            {
              localIdentifier = [v61 localIdentifier];
              [mad_fetchRequest fetchAnalysisWithLocalIdentifier:localIdentifier predicate:0];
            }

            else
            {
              localIdentifier = [v61 localIdentifier];
              [v52 queryAnalysisForAsset:localIdentifier];
            }
            v57 = ;

            v17 = v61;
            if (([v57 vcp_types] & 0x80000040000) != 0)
            {
              v21 = MediaAnalysisPostProcessAnalysis(v61, v57, bOOLValue2 ^ 1);

              v22 = VCPSignPostLog();
              v23 = os_signpost_id_generate(v22);

              v24 = VCPSignPostLog();
              v25 = v24;
              if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
              {
                LOWORD(buf.start.value) = 0;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "VCPPostProcessMovieHighlights", "", &buf, 2u);
              }

              v19 = [(VCPMediaAnalyzer *)self _postProcessMovieHighlights:v61 analysis:v21 withOptions:optionsCopy];
              v26 = VCPSignPostLog();
              v27 = v26;
              if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
              {
                LOWORD(buf.start.value) = 0;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_END, v23, "VCPPostProcessMovieHighlights", "", &buf, 2u);
              }

              v57 = v21;
              v17 = v61;
            }

            else
            {
              v19 = 0;
            }
          }

          if (((v19 == 0) & bOOLValue) == 1)
          {
            v28 = [(VCPMediaAnalyzer *)self _analyzeOndemand:v17 forAnalysisTypes:0x80000040000 withExistingAnalysis:v57 andOptions:optionsCopy storeAnalysis:1 cancelBlock:&__block_literal_global_977_0];
            v19 = [(VCPMediaAnalyzer *)self _postProcessMovieHighlights:v17 analysis:v28 withOptions:optionsCopy];
          }

          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          vcp_results = [v19 vcp_results];
          obj = [vcp_results objectForKeyedSubscript:@"MovieHighlightResults"];

          v30 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
          if (v30)
          {
            v31 = *v67;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v67 != v31)
                {
                  objc_enumerationMutation(obj);
                }

                v33 = *(*(&v66 + 1) + 8 * j);
                memset(&buf, 0, sizeof(buf));
                CMTimeRangeMakeFromDictionary(&buf, v33);
                v34 = [(__CFDictionary *)v33 objectForKeyedSubscript:@"quality"];
                [v34 floatValue];
                v36 = v35;

                v37 = [(__CFDictionary *)v33 objectForKeyedSubscript:@"attributes"];
                memset(&v64, 0, sizeof(v64));
                v38 = [v37 objectForKeyedSubscript:@"keyFrameTime"];
                CMTimeMakeFromDictionary(&v64, v38);

                v39 = [v37 objectForKeyedSubscript:@"keyFrameScore"];
                [v39 floatValue];
                v41 = v40;

                v42 = [VCPVideoKeyFrameResult alloc];
                v63.start = v64;
                v43 = [(VCPVideoKeyFrameResult *)v42 initWithTime:&v63 andScore:COERCE_DOUBLE(__PAIR64__(HIDWORD(v64.value), v41))];
                highlights = [(VCPMovieCurationResults *)v18 highlights];
                v45 = [VCPMovieHighlightResult alloc];
                v63 = buf;
                v46 = [(VCPMovieHighlightResult *)v45 initWithTimeRange:&v63 score:v43 andKeyFrame:COERCE_DOUBLE(__PAIR64__(buf.duration.flags, v36))];
                [highlights addObject:v46];

                v47 = [v19 mutableCopy];
                [(VCPMovieCurationResults *)v18 setResults:v47];
              }

              v30 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
            }

            while (v30);
          }
        }

        [array addObject:v18];

        objc_autoreleasePoolPop(context);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Failed to obtain database for assets", &buf, 2u);
      }

      array = 0;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.start.value) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis][requestMovieHighlightsForAssets] 0 Assets", &buf, 2u);
    }

    array = 0;
  }

  return array;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)postProcessMovieHighlightDuration:(SEL)duration withOptions:(id)options
{
  v76 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v7 = a5;
  v54 = [v7 objectForKeyedSubscript:@"HighlightTargetDuration"];
  v51 = [v7 objectForKeyedSubscript:@"HighlightTolerance"];
  v55 = [v7 objectForKeyedSubscript:@"HighlightIndex"];
  *&v56 = [v7 objectForKeyedSubscript:@"MaxHighlightDuration"];
  *(&v56 + 1) = [v7 objectForKeyedSubscript:@"HighlightBestTrim"];
  if (optionsCopy)
  {
    vcp_results = [optionsCopy vcp_results];
    v9 = [vcp_results objectForKeyedSubscript:@"MovieHighlightResults"];
  }

  else
  {
    v9 = 0;
  }

  v52 = [v7 objectForKeyedSubscript:@"HighlightStartRange"];
  v53 = [v7 objectForKeyedSubscript:@"HighlightSpeedGuide"];
  if (!v9 || ![v9 count])
  {
    goto LABEL_32;
  }

  v10 = v56;
  if (v56 != 0)
  {
    if (v56)
    {
      v73[0] = @"HighlightMaxDuration";
    }

    else
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      vcp_results2 = [optionsCopy vcp_results];
      v16 = [vcp_results2 objectForKeyedSubscript:@"MovieHighlightResults"];

      v17 = [v16 countByEnumeratingWithState:&v64 objects:v75 count:16];
      if (v17)
      {
        v18 = *v65;
        v19 = 0.0;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v65 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v64 + 1) + 8 * i);
            memset(&v63, 0, sizeof(v63));
            CMTimeRangeMakeFromDictionary(&v63, v21);
            time = v63.duration;
            Seconds = CMTimeGetSeconds(&time);
            if (v19 < Seconds)
            {
              v19 = Seconds;
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v64 objects:v75 count:16];
        }

        while (v17);
      }

      else
      {
        v19 = 0.0;
      }

      v73[0] = @"HighlightMaxDuration";
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
    }

    v41 = *(&v56 + 1);
    if (!*(&v56 + 1))
    {
      v41 = MEMORY[0x1E695E110];
    }

    v74[0] = v10;
    v74[1] = v41;
    v73[1] = @"HighlightBestTrim";
    v73[2] = @"HighlightIndex";
    v42 = &unk_1F49BDF90;
    if (v55)
    {
      v42 = v55;
    }

    v74[2] = v42;
    v74[3] = MEMORY[0x1E695E110];
    v73[3] = @"HighlightFullResult";
    v73[4] = @"HighlightSpeedGuide";
    v43 = v53;
    if (!v53)
    {
      v43 = &unk_1F49BB708;
    }

    v74[4] = v43;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:5];
    if (!v56)
    {
    }

LABEL_61:
    v44 = MediaAnalysisPostProcessMovieHighlights(optionsCopy, v28, 0, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
    v45 = v44;
    if (v44 && ([v44 objectForKeyedSubscript:@"MovieHighlightResults"], v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "objectAtIndexedSubscript:", 0), v47 = objc_claimAutoreleasedReturnValue(), v46, v47))
    {
      CMTimeRangeMakeFromDictionary(retstr, v47);
    }

    else
    {
      v47 = 0;
      v48 = MEMORY[0x1E6960CA8];
      v49 = *(MEMORY[0x1E6960CA8] + 16);
      *&retstr->var0.var0 = *MEMORY[0x1E6960CA8];
      *&retstr->var0.var3 = v49;
      *&retstr->var1.var1 = *(v48 + 32);
    }

    goto LABEL_66;
  }

  if (v54)
  {
    v11 = &unk_1F49BB238;
    v12 = &unk_1F49BDF90;
    v13 = &unk_1F49BB708;
    if (v52)
    {
      v70[0] = @"HighlightStartRange";
      v70[1] = @"HighlightTargetDuration";
      v71[0] = v52;
      v71[1] = v54;
      if (v51)
      {
        v11 = v51;
      }

      v70[2] = @"HighlightTolerance";
      v70[3] = @"HighlightIndex";
      if (v55)
      {
        v12 = v55;
      }

      v71[2] = v11;
      v71[3] = v12;
      v70[4] = @"HighlightFullResult";
      v70[5] = @"HighlightSpeedGuide";
      if (v53)
      {
        v13 = v53;
      }

      v71[4] = MEMORY[0x1E695E110];
      v71[5] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:6];
    }

    else
    {
      v68[0] = @"HighlightTargetDuration";
      v68[1] = @"HighlightTolerance";
      if (v51)
      {
        v11 = v51;
      }

      v69[0] = v54;
      v69[1] = v11;
      if (v55)
      {
        v12 = v55;
      }

      v68[2] = @"HighlightIndex";
      v68[3] = @"HighlightFullResult";
      v69[2] = v12;
      v69[3] = MEMORY[0x1E695E110];
      v68[4] = @"HighlightSpeedGuide";
      v27 = v53;
      if (!v53)
      {
        v27 = &unk_1F49BB708;
      }

      v69[4] = v27;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:5];
    }

    v28 = v14;
    goto LABEL_61;
  }

  if (v55)
  {
    if (([v55 intValue] & 0x80000000) == 0)
    {
      intValue = [v55 intValue];
      if ([v9 count] > intValue)
      {
        v24 = [v9 objectAtIndexedSubscript:{objc_msgSend(v55, "intValue")}];
        CMTimeRangeMakeFromDictionary(retstr, v24);

        goto LABEL_66;
      }
    }

LABEL_32:
    v25 = MEMORY[0x1E6960C98];
    v26 = *(MEMORY[0x1E6960C98] + 16);
    *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
    *&retstr->var0.var3 = v26;
    *&retstr->var1.var1 = *(v25 + 32);
    goto LABEL_66;
  }

  v29 = MEMORY[0x1E6960C98];
  v30 = *(MEMORY[0x1E6960C98] + 16);
  *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
  *&retstr->var0.var3 = v30;
  *&retstr->var1.var1 = *(v29 + 32);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v31 = v9;
  v32 = [v31 countByEnumeratingWithState:&v58 objects:v72 count:16];
  if (v32)
  {
    v33 = *v59;
    v34 = 0.0;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v59 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v58 + 1) + 8 * j);
        v37 = [v36 objectForKeyedSubscript:@"quality"];
        [v37 floatValue];
        v39 = v38;

        if (v34 < v39)
        {
          CMTimeRangeMakeFromDictionary(&v63, v36);
          v40 = *&v63.start.epoch;
          *&retstr->var0.var0 = *&v63.start.value;
          *&retstr->var0.var3 = v40;
          *&retstr->var1.var1 = *&v63.duration.timescale;
          v34 = v39;
        }
      }

      v32 = [v31 countByEnumeratingWithState:&v58 objects:v72 count:16];
    }

    while (v32);
  }

LABEL_66:
  return result;
}

- (id)requestLivePhotoEffectsForAssets:(id)assets allowOnDemand:(BOOL)demand flags:(unint64_t)flags
{
  demandCopy = demand;
  assetsCopy = assets;
  sharedMediaAnalyzer = [objc_opt_class() sharedMediaAnalyzer];

  if (sharedMediaAnalyzer != self)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_13;
    }

    v9 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "[MediaAnalysis] [requestLivePhotoEffectsForAssets] call from invalid instance";
LABEL_5:
    _os_log_impl(&dword_1C9B70000, v10, v9, v11, buf, 2u);
LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  if (!assetsCopy || ![assetsCopy count])
  {
    goto LABEL_13;
  }

  if ([(NSNumber *)self->_standalone BOOLValue]&& !demandCopy)
  {
    if (MediaAnalysisLogLevel() < 4)
    {
      goto LABEL_13;
    }

    v9 = OS_LOG_TYPE_DEFAULT;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "[MediaAnalysis] [requestLivePhotoEffectsForAssets] in standalone mode but on-demand not allowed";
    goto LABEL_5;
  }

  v67 = assetsCopy;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v68 = dictionary;
  v61 = MediaAnalysisResultsTypesForAnalysisTypes(0x100000);
  v15 = [assetsCopy objectAtIndexedSubscript:0];
  photoLibrary = [v15 photoLibrary];

  v69 = photoLibrary;
  [(VCPMediaAnalyzer *)self _databaseForPhotoLibrary:photoLibrary];
  v60 = v65 = demandCopy;
  v17 = [VCPDatabaseBatchIterator iteratorForAssets:assetsCopy withDatabaseReader:v60 resultTypes:v61 batchSize:100];
  v64 = 0;
  v18 = -1;
  v66 = v17;
  do
  {
    if (![v17 next])
    {
      break;
    }

    if ([assetsCopy count] <= ++v18)
    {
      break;
    }

    v19 = objc_autoreleasePoolPush();
    asset = [v17 asset];
    [asset fetchPropertySetsIfNeeded];
    analysis = [v17 analysis];
    vcp_results = [analysis vcp_results];
    v23 = [vcp_results objectForKeyedSubscript:@"LivePhotoEffectsResults"];

    v71 = v23;
    vcp_types = [analysis vcp_types];
    v25 = [v23 count];
    v26 = v25 != 0;
    v70 = v19;
    if (v25)
    {
      v27 = [v23 objectAtIndexedSubscript:0];
      v28 = [v27 objectForKeyedSubscript:@"attributes"];

      v29 = [v28 objectForKeyedSubscript:@"loopSuggestionState"];
      LODWORD(v27) = [v29 intValue];

      v30 = [v28 objectForKeyedSubscript:@"longExposureSuggestionState"];
      LODWORD(v33) = [v30 intValue];

      v31 = [v28 objectForKeyedSubscript:@"livePhotoEffectsRecipe"];
      v32 = v27;
      v33 = v33;
    }

    else
    {
      v31 = 0;
      v33 = 0;
      v32 = 0;
    }

    if (!v65 || v31)
    {
      goto LABEL_41;
    }

    librarySpecificFetchOptions = [v69 librarySpecificFetchOptions];
    [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BEFE0];
    v63 = [MEMORY[0x1E69787D0] fetchFacesInAsset:asset options:librarySpecificFetchOptions];
    v35 = [v63 count];
    v36 = v35 != 0;
    if (!v35 && (vcp_types & 0xC) != 0)
    {
      vcp_results2 = [analysis vcp_results];
      v38 = [vcp_results2 objectForKeyedSubscript:@"FaceResults"];
      v36 = v38 != 0;
    }

    v39 = [[VCPEffectsAnalyzer alloc] initWithFlagHasFaceOrPet:v36];
    if (v39)
    {
      *buf = 0;
      v62 = asset;
      v40 = [VCPPhotosAsset assetWithPHAsset:asset];
      v72 = 0;
      v41 = [(VCPEffectsAnalyzer *)v39 analyzeAsset:v40 onDemand:1 cancel:&__block_literal_global_988 statsFlags:buf results:&v72];
      v42 = v72;

      v43 = v41 ? v41 : v64;
      v64 = v43;
      if (v41)
      {
        v31 = 0;
        v44 = 10;
      }

      else
      {
        v45 = [v42 objectForKeyedSubscript:@"LivePhotoEffectsResults"];
        if ([v45 count])
        {
          v59 = v45;
          v46 = [v45 objectAtIndexedSubscript:0];
          v47 = [v46 objectForKeyedSubscript:@"attributes"];

          v48 = [v47 objectForKeyedSubscript:@"loopSuggestionState"];
          intValue = [v48 intValue];

          v50 = [v47 objectForKeyedSubscript:@"longExposureSuggestionState"];
          LODWORD(v48) = [v50 intValue];

          v31 = [v47 objectForKeyedSubscript:@"livePhotoEffectsRecipe"];
          v32 = intValue;
          v51 = v47;
          v33 = v48;

          v26 = 1;
          v45 = v59;
        }

        else
        {
          v31 = 0;
        }

        v44 = 0;
      }

      asset = v62;
    }

    else
    {
      v31 = 0;
      v44 = 10;
      v64 = -108;
    }

    if (!v44)
    {
LABEL_41:
      if (v26)
      {
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v32];
        [dictionary2 setObject:v53 forKey:@"loopSuggestionState"];

        v54 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v33];
        [dictionary2 setObject:v54 forKey:@"longExposureSuggestionState"];

        if (v31)
        {
          v55 = [[VCPProtoLivePhotoEffectsRecipe alloc] initWithData:v31];
          exportToLegacyDictionary = [(VCPProtoLivePhotoEffectsRecipe *)v55 exportToLegacyDictionary];
          [dictionary2 setObject:exportToLegacyDictionary forKey:@"livePhotoEffectsRecipe"];
        }

        localIdentifier = [asset localIdentifier];
        [v68 setObject:dictionary2 forKey:localIdentifier];
      }

      v44 = 0;
    }

    v17 = v66;
    assetsCopy = v67;
    dictionary = v68;
    photoLibrary = v69;
    objc_autoreleasePoolPop(v70);
  }

  while (!v44);
  if (v64)
  {
    v58 = 0;
  }

  else
  {
    v58 = dictionary;
  }

  v12 = v58;

LABEL_14:

  return v12;
}

+ (id)personModelFilepathForPhotoLibrary:(id)library
{
  v3 = [library vcp_vipModelFilepathForVIPType:0];

  return v3;
}

+ (id)loadPersonModelAtPath:(id)path error:(id *)error
{
  v4 = [VCPFaceIDModel loadVIPModelAtPath:path withVIPType:0 error:error];

  return v4;
}

+ (unint64_t)faceprintRevisionForPersonModel:(id)model
{
  configuration = [model configuration];
  faceprintRequestRevision = [configuration faceprintRequestRevision];

  return faceprintRequestRevision;
}

+ (id)classifyFaceObservation:(id)observation withPersonsModel:(id)model error:(id *)error
{
  v5 = [VCPFaceIDModel classifyFaceObservation:observation withModel:model error:error];

  return v5;
}

- (id)getTimeRangesForSceneIdentifiers:(id)identifiers withResults:(id)results
{
  v63 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  resultsCopy = results;
  v36 = identifiersCopy;
  if ([identifiersCopy count])
  {
    v6 = [identifiersCopy objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      array = [MEMORY[0x1E695DF70] array];
      v31 = [MEMORY[0x1E695DFD8] setWithArray:v36];
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = [resultsCopy objectForKeyedSubscript:@"ClassificationResults"];
      v29 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
      if (v29)
      {
        v30 = *v52;
        *&v8 = 134218240;
        v27 = v8;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v52 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v51 + 1) + 8 * i);
            v41 = [MEMORY[0x1E695DFA8] set];
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            dictionaryRepresentation = v9;
            v37 = [(__CFDictionary *)v9 objectForKeyedSubscript:@"attributes"];
            v10 = [v37 countByEnumeratingWithState:&v47 objects:v61 count:16];
            if (v10)
            {
              v38 = *v48;
              do
              {
                v39 = v10;
                for (j = 0; j != v39; ++j)
                {
                  if (*v48 != v38)
                  {
                    objc_enumerationMutation(v37);
                  }

                  v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(*(&v47 + 1) + 8 * j), "intValue")}];
                  [v41 addObject:v12];
                  v13 = [dictionary objectForKeyedSubscript:v12];
                  v14 = v13 == 0;

                  if (v14)
                  {
                    vcp_sharedTaxonomy = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
                    v17 = [vcp_sharedTaxonomy mad_allAncestorsForSceneId:{objc_msgSend(v12, "unsignedIntValue")}];

                    if (v17)
                    {
                      v18 = [MEMORY[0x1E695DFA8] set];
                      v45 = 0u;
                      v46 = 0u;
                      v43 = 0u;
                      v44 = 0u;
                      v15 = v17;
                      v19 = [v15 countByEnumeratingWithState:&v43 objects:v60 count:16];
                      if (v19)
                      {
                        v20 = *v44;
                        do
                        {
                          for (k = 0; k != v19; ++k)
                          {
                            if (*v44 != v20)
                            {
                              objc_enumerationMutation(v15);
                            }

                            v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*(*(&v43 + 1) + 8 * k), "sceneClassId")}];
                            [v18 addObject:v22];
                          }

                          v19 = [v15 countByEnumeratingWithState:&v43 objects:v60 count:16];
                        }

                        while (v19);
                      }

                      [dictionary setObject:v18 forKeyedSubscript:v12];
                      [v41 unionSet:v18];
                    }

                    else
                    {
                      v15 = 0;
                    }
                  }

                  else
                  {
                    v15 = [dictionary objectForKeyedSubscript:v12];
                    [v41 unionSet:v15];
                  }
                }

                v10 = [v37 countByEnumeratingWithState:&v47 objects:v61 count:16];
              }

              while (v10);
            }

            if ([v31 intersectsSet:v41])
            {
              memset(&v42, 0, sizeof(v42));
              CMTimeRangeMakeFromDictionary(&v42, dictionaryRepresentation);
              range = v42;
              v23 = CMTimeRangeCopyAsDictionary(&range, 0);
              [array addObject:v23];

              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
              {
                *&range.start.value = *&v42.start.value;
                range.start.epoch = v42.start.epoch;
                Seconds = CMTimeGetSeconds(&range.start);
                range.start = v42.duration;
                v25 = CMTimeGetSeconds(&range.start);
                *buf = v27;
                v57 = Seconds;
                v58 = 2048;
                v59 = v25;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MediaAnalysis] metadata 1-up timeranges add scene range : [%f,  %f]", buf, 0x16u);
              }
            }
          }

          v29 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
        }

        while (v29);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(range.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "sceneIdentifer type expected to be NSNumber", &range, 2u);
      }

      array = 0;
    }
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

- (id)getTimeRangesForActionIDs:(id)ds withResults:(id)results
{
  v56 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  resultsCopy = results;
  v36 = dsCopy;
  if ([dsCopy count])
  {
    v6 = [dsCopy objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      array = [MEMORY[0x1E695DF70] array];
      [resultsCopy objectForKeyedSubscript:@"HumanActionClassificationResults"];
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      obj = v46 = 0u;
      v35 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (v35)
      {
        v34 = *v46;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v46 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v45 + 1) + 8 * i);
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v39 = v36;
            v9 = [v39 countByEnumeratingWithState:&v41 objects:v54 count:16];
            if (v9)
            {
              v10 = *v42;
              do
              {
                for (j = 0; j != v9; ++j)
                {
                  if (*v42 != v10)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v12 = *(*(&v41 + 1) + 8 * j);
                  v13 = [v8 objectForKeyedSubscript:@"attributes"];
                  v14 = [v13 objectForKeyedSubscript:@"humanActions"];

                  stringValue = [v12 stringValue];
                  v16 = [v14 objectForKeyedSubscript:stringValue];
                  v17 = v16 == 0;

                  if (!v17)
                  {
                    stringValue2 = [v12 stringValue];
                    v19 = [v14 objectForKeyedSubscript:stringValue2];
                    [v19 floatValue];
                    v21 = v20;

                    stringValue3 = [v12 stringValue];
                    v23 = VCPHumanActionOperatingPointFromActionID(stringValue3);
                    if (v23)
                    {
                      stringValue4 = [v12 stringValue];
                      v25 = VCPHumanActionOperatingPointFromActionID(stringValue4);
                      [v25 floatValue];
                      v27 = v21 > v26;

                      if (v27)
                      {
                        memset(&v40, 0, sizeof(v40));
                        CMTimeRangeMakeFromDictionary(&v40, v8);
                        range = v40;
                        v28 = CMTimeRangeCopyAsDictionary(&range, 0);
                        [array addObject:v28];

                        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                        {
                          *&range.start.value = *&v40.start.value;
                          range.start.epoch = v40.start.epoch;
                          Seconds = CMTimeGetSeconds(&range.start);
                          range.start = v40.duration;
                          v30 = CMTimeGetSeconds(&range.start);
                          *buf = 134218240;
                          v51 = Seconds;
                          v52 = 2048;
                          v53 = v30;
                          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MediaAnalysis] metadata 1-up timeranges add action range : [%f,  %f]", buf, 0x16u);
                        }
                      }
                    }

                    else
                    {
                    }
                  }
                }

                v9 = [v39 countByEnumeratingWithState:&v41 objects:v54 count:16];
              }

              while (v9);
            }
          }

          v35 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
        }

        while (v35);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(range.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "actionID type expected to be NSNumber", &range, 2u);
      }

      array = 0;
    }
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

- (id)getTimeRangesForSoundIdentifiers:(id)identifiers withResults:(id)results
{
  v58 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  resultsCopy = results;
  v28 = identifiersCopy;
  if ([identifiersCopy count])
  {
    v6 = [identifiersCopy objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v33 = [objc_opt_class() mad_audioTaxonomy:0 useResultsKey:1];
      array = [MEMORY[0x1E695DF70] array];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = resultsCopy;
      v25 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
      if (v25)
      {
        v26 = *v47;
        v9 = MEMORY[0x1E69E9C10];
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v47 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v46 + 1) + 8 * i);
            allValues = [v33 allValues];
            v35 = v10;
            v12 = [allValues containsObject:v10];

            if (v12)
            {
              v44 = 0u;
              v45 = 0u;
              v42 = 0u;
              v43 = 0u;
              v31 = v28;
              v34 = [v31 countByEnumeratingWithState:&v42 objects:v56 count:16];
              if (v34)
              {
                v32 = *v43;
                do
                {
                  for (j = 0; j != v34; ++j)
                  {
                    if (*v43 != v32)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v13 = [v33 objectForKeyedSubscript:*(*(&v42 + 1) + 8 * j)];
                    v14 = [v13 isEqualToString:v35];

                    if (v14)
                    {
                      v15 = [obj objectForKeyedSubscript:v35];
                      v40 = 0u;
                      v41 = 0u;
                      v38 = 0u;
                      v39 = 0u;
                      v16 = v15;
                      v17 = [v16 countByEnumeratingWithState:&v38 objects:v55 count:16];
                      if (v17)
                      {
                        v18 = *v39;
                        do
                        {
                          for (k = 0; k != v17; ++k)
                          {
                            if (*v39 != v18)
                            {
                              objc_enumerationMutation(v16);
                            }

                            v20 = *(*(&v38 + 1) + 8 * k);
                            memset(&v37, 0, sizeof(v37));
                            CMTimeRangeMakeFromDictionary(&v37, v20);
                            range = v37;
                            v21 = CMTimeRangeCopyAsDictionary(&range, 0);
                            [array addObject:v21];

                            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
                            {
                              *&range.start.value = *&v37.start.value;
                              range.start.epoch = v37.start.epoch;
                              Seconds = CMTimeGetSeconds(&range.start);
                              range.start = v37.duration;
                              v23 = CMTimeGetSeconds(&range.start);
                              *buf = 134218240;
                              v52 = Seconds;
                              v53 = 2048;
                              v54 = v23;
                              _os_log_impl(&dword_1C9B70000, v9, OS_LOG_TYPE_DEBUG, "[MediaAnalysis] metadata 1-up timeranges add sound range : [%f,  %f]", buf, 0x16u);
                            }
                          }

                          v17 = [v16 countByEnumeratingWithState:&v38 objects:v55 count:16];
                        }

                        while (v17);
                      }
                    }
                  }

                  v34 = [v31 countByEnumeratingWithState:&v42 objects:v56 count:16];
                }

                while (v34);
              }
            }
          }

          v25 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
        }

        while (v25);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(range.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "soundIdentifier type expected to be NSNumber", &range, 2u);
      }

      array = 0;
    }
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

- (id)getTimeRangesForThumbnailIdentifiers:(id)identifiers withResults:(id)results
{
  v31 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  resultsCopy = results;
  v21 = identifiersCopy;
  if ([identifiersCopy count])
  {
    v6 = [identifiersCopy objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      array = [MEMORY[0x1E695DF70] array];
      firstObject = [identifiersCopy firstObject];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = [resultsCopy objectForKeyedSubscript:@"VideoThumbnailResults"];
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v10)
      {
        v11 = *v26;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v25 + 1) + 8 * i);
            v14 = [v13 objectForKeyedSubscript:@"attributes"];
            v15 = [v14 objectForKeyedSubscript:@"thumbnailID"];

            if ([v15 isEqualToString:firstObject])
            {
              memset(&v24, 0, sizeof(v24));
              v16 = [v13 objectForKeyedSubscript:@"start"];
              CMTimeMakeFromDictionary(&v24, v16);

              if (v24.flags)
              {
                buf.start = v24;
                CMTimeMake(&duration, 1000, 1000);
                CMTimeRangeMake(&v23, &buf.start, &duration);
                buf = v23;
                v17 = CMTimeRangeCopyAsDictionary(&buf, 0);
                [array addObject:v17];
              }

              goto LABEL_20;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_20:
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "soundIdentifier type expected to be NSNumber", &buf, 2u);
      }

      array = 0;
    }
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

- (id)getTimeRangesInAsset:(id)asset forPersonLocalIdentifiers:(id)identifiers withAnalysis:(id)analysis
{
  v45[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  identifiersCopy = identifiers;
  analysisCopy = analysis;
  if ([identifiersCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    photoLibrary = [assetCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v30 = librarySpecificFetchOptions;
    [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
    v45[0] = *MEMORY[0x1E6978D68];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v10];

    [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BEFF8];
    [librarySpecificFetchOptions setIncludeMediaAnalysisProcessingRangeTypes:3];
    [MEMORY[0x1E69787D0] fetchFacesInAsset:assetCopy options:librarySpecificFetchOptions];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    obj = v37 = 0u;
    v11 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v11)
    {
      v12 = *v37;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v37 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v36 + 1) + 8 * i);
          personLocalIdentifier = [v14 personLocalIdentifier];
          v16 = personLocalIdentifier == 0;

          if (!v16)
          {
            personLocalIdentifier2 = [v14 personLocalIdentifier];
            personLocalIdentifier3 = [v14 personLocalIdentifier];
            v19 = [personLocalIdentifier3 componentsSeparatedByString:@"/"];

            if ([v19 count])
            {
              firstObject = [v19 firstObject];

              personLocalIdentifier2 = firstObject;
            }

            personLocalIdentifier4 = [v14 personLocalIdentifier];
            if ([identifiersCopy containsObject:personLocalIdentifier4])
            {

              goto LABEL_13;
            }

            v22 = [identifiersCopy containsObject:personLocalIdentifier2];

            if (v22)
            {
LABEL_13:
              if ([v14 detectionType] == 1)
              {
                v23 = array;
              }

              else
              {
                v23 = array2;
              }

              [v23 addObject:v14];
            }

            continue;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v11);
    }

    if (![array count] && !objc_msgSend(array2, "count") && MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      localIdentifier = [assetCopy localIdentifier];
      *buf = 138412546;
      v41 = identifiersCopy;
      v42 = 2112;
      v43 = localIdentifier;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "MediaAnalyzer : no PHFaces found for persons %@ in asset %@", buf, 0x16u);
    }

    array3 = [MEMORY[0x1E695DF70] array];
    if ([array count])
    {
      v26 = [(VCPMediaAnalyzer *)self getTimeRangesInAsset:assetCopy forFaces:array withAnalysis:analysisCopy];
      [array3 addObjectsFromArray:v26];
    }

    if ([array2 count])
    {
      v27 = [(VCPMediaAnalyzer *)self getTimeRangesInAsset:assetCopy forAnimals:array2 withAnalysis:analysisCopy];
      [array3 addObjectsFromArray:v27];
    }
  }

  else
  {
    array3 = MEMORY[0x1E695E0F0];
  }

  return array3;
}

- (id)getTimeRangesInAsset:(id)asset forFaces:(id)faces withAnalysis:(id)analysis
{
  v125 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  facesCopy = faces;
  analysisCopy = analysis;
  v7 = [facesCopy count];
  v8 = MEMORY[0x1E695E0F0];
  if (analysisCopy && v7)
  {
    array = [MEMORY[0x1E695DF70] array];
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    obj = facesCopy;
    v9 = [obj countByEnumeratingWithState:&v103 objects:v124 count:16];
    if (v9)
    {
      v80 = 0;
      v74 = *v104;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v104 != v74)
          {
            objc_enumerationMutation(obj);
          }

          v85 = *(*(&v103 + 1) + 8 * i);
          if ([v85 detectionType] == 1)
          {
            [v85 fetchPropertySetsIfNeeded];
            v10 = [analysisCopy objectForKeyedSubscript:@"metadataRanges"];
            v11 = [v10 objectForKeyedSubscript:@"FacePrintResults"];

            v101 = 0u;
            v102 = 0u;
            v99 = 0u;
            v100 = 0u;
            v83 = v11;
            v12 = [v83 countByEnumeratingWithState:&v99 objects:v123 count:16];
            if (v12)
            {
              v84 = *v100;
              intValue = -1;
              v13 = 1.0;
              while (2)
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v100 != v84)
                  {
                    objc_enumerationMutation(v83);
                  }

                  v15 = *(*(&v99 + 1) + 8 * j);
                  v16 = [v15 objectForKeyedSubscript:@"attributes"];
                  v88 = [v16 objectForKeyedSubscript:@"facePrint"];

                  v87 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v88 error:0];
                  v86 = [v87 decodeObjectOfClass:objc_opt_class() forKey:@"facePrint"];
                  faceClusteringProperties = [v85 faceClusteringProperties];
                  faceprint = [faceClusteringProperties faceprint];
                  faceprintData = [faceprint faceprintData];

                  if (faceprintData)
                  {
                    v20 = objc_alloc(MEMORY[0x1E6984520]);
                    v98 = 0;
                    v21 = [v20 initWithState:faceprintData error:&v98];
                    v22 = v98;
                    if (!v21)
                    {
                      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        localIdentifier = [v85 localIdentifier];
                        LODWORD(buf.start.value) = 138412546;
                        *(&buf.start.value + 4) = localIdentifier;
                        LOWORD(buf.start.flags) = 2112;
                        *(&buf.start.flags + 2) = v22;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MediaAnalyzer : failed to initalize faceprint data for face: %@. Error: %@", &buf, 0x16u);
                      }

                      v71 = 0;
                      v72 = array;
                      goto LABEL_80;
                    }

                    faceprint2 = [v21 faceprint];
                    v97 = v22;
                    v24 = [faceprint2 computeDistance:v86 withDistanceFunction:0 error:&v97];
                    v25 = v97;

                    if (v24)
                    {
                      [v24 floatValue];
                      v27 = v26;
                      if (v26 < v13)
                      {
                        v28 = [v15 objectForKeyedSubscript:@"attributes"];
                        v29 = [v28 objectForKeyedSubscript:@"faceId"];
                        intValue = [v29 intValue];

                        v13 = v27;
                      }
                    }

                    else
                    {
                      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        localIdentifier2 = [v85 localIdentifier];
                        LODWORD(buf.start.value) = 138412546;
                        *(&buf.start.value + 4) = localIdentifier2;
                        LOWORD(buf.start.flags) = 2112;
                        *(&buf.start.flags + 2) = v25;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MediaAnalyzer : failed to compute distance for face: %@. Error: %@", &buf, 0x16u);
                      }

                      v80 = -18;
                    }

                    if (!v24)
                    {

                      goto LABEL_77;
                    }
                  }

                  else
                  {
                    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                    {
                      localIdentifier3 = [v85 localIdentifier];
                      LODWORD(buf.start.value) = 138412290;
                      *(&buf.start.value + 4) = localIdentifier3;
                      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "MediaAnalyzer : Failed to get faceClusteringProperties.faceprint.faceprintData for face %@", &buf, 0xCu);
                    }
                  }
                }

                v12 = [v83 countByEnumeratingWithState:&v99 objects:v123 count:16];
                if (v12)
                {
                  continue;
                }

                break;
              }

              if (v13 < 0.1)
              {
                v95 = 0u;
                v96 = 0u;
                v93 = 0u;
                v94 = 0u;
                v32 = [analysisCopy objectForKeyedSubscript:@"metadataRanges"];
                v33 = [v32 objectForKeyedSubscript:@"FaceResults"];

                v34 = [v33 countByEnumeratingWithState:&v93 objects:v122 count:16];
                if (v34)
                {
                  v35 = *v94;
                  do
                  {
                    for (k = 0; k != v34; ++k)
                    {
                      if (*v94 != v35)
                      {
                        objc_enumerationMutation(v33);
                      }

                      v37 = *(*(&v93 + 1) + 8 * k);
                      v38 = [v37 objectForKeyedSubscript:@"attributes"];
                      v39 = [v38 objectForKeyedSubscript:@"faceId"];
                      v40 = v39 == 0;

                      if (v40)
                      {
                        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                        {
                          localIdentifier4 = [assetCopy localIdentifier];
                          LODWORD(buf.start.value) = 138412290;
                          *(&buf.start.value + 4) = localIdentifier4;
                          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "MediaAnalyzer getTimeRangesInAsset : video faceID not available for asset %@", &buf, 0xCu);
                        }
                      }

                      else
                      {
                        v41 = [v37 objectForKeyedSubscript:@"attributes"];
                        v42 = [v41 objectForKeyedSubscript:@"faceId"];
                        intValue2 = [v42 intValue];

                        if (intValue2 == intValue)
                        {
                          memset(&buf, 0, sizeof(buf));
                          CMTimeRangeMakeFromDictionary(&buf, v37);
                          personLocalIdentifier = [v85 personLocalIdentifier];
                          v45 = personLocalIdentifier == 0;

                          if (v45)
                          {
                            v117[0] = @"start";
                            time = buf.start;
                            v46 = CMTimeCopyAsDictionary(&time, 0);
                            v118[0] = v46;
                            v117[1] = @"duration";
                            time = buf.duration;
                            v47 = CMTimeCopyAsDictionary(&time, 0);
                            v118[1] = v47;
                            personLocalIdentifier2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:2];
                            [array addObject:personLocalIdentifier2];
                          }

                          else
                          {
                            v119[0] = @"start";
                            time = buf.start;
                            v46 = CMTimeCopyAsDictionary(&time, 0);
                            v120[0] = v46;
                            v119[1] = @"duration";
                            time = buf.duration;
                            v47 = CMTimeCopyAsDictionary(&time, 0);
                            v120[1] = v47;
                            v119[2] = @"faceIdentifier";
                            personLocalIdentifier2 = [v85 personLocalIdentifier];
                            v120[2] = personLocalIdentifier2;
                            v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:v119 count:3];
                            [array addObject:v49];
                          }

                          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                          {
                            time = buf.start;
                            Seconds = CMTimeGetSeconds(&time);
                            time = buf.duration;
                            v52 = CMTimeGetSeconds(&time);
                            *v113 = 134218240;
                            v114 = Seconds;
                            v115 = 2048;
                            v116 = v52;
                            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MediaAnalysis] metadata 1-up timeranges add person range : [%f,  %f]", v113, 0x16u);
                          }
                        }
                      }
                    }

                    v34 = [v33 countByEnumeratingWithState:&v93 objects:v122 count:16];
                  }

                  while (v34);
                }

                if ([objc_opt_class() includeTorsoOnlyForOneUP])
                {
                  v91 = 0u;
                  v92 = 0u;
                  v89 = 0u;
                  v90 = 0u;
                  v53 = [analysisCopy objectForKeyedSubscript:@"metadataRanges"];
                  v54 = [v53 objectForKeyedSubscript:@"TorsoResults"];

                  v55 = [v54 countByEnumeratingWithState:&v89 objects:v112 count:16];
                  if (v55)
                  {
                    v56 = *v90;
                    do
                    {
                      for (m = 0; m != v55; ++m)
                      {
                        if (*v90 != v56)
                        {
                          objc_enumerationMutation(v54);
                        }

                        v58 = *(*(&v89 + 1) + 8 * m);
                        v59 = [v58 objectForKeyedSubscript:@"attributes"];
                        v60 = [v59 objectForKeyedSubscript:@"faceId"];
                        intValue3 = [v60 intValue];

                        if (intValue3 == intValue)
                        {
                          memset(&buf, 0, sizeof(buf));
                          CMTimeRangeMakeFromDictionary(&buf, v58);
                          personLocalIdentifier3 = [v85 personLocalIdentifier];
                          v63 = personLocalIdentifier3 == 0;

                          if (v63)
                          {
                            v108[0] = @"start";
                            time = buf.start;
                            v64 = CMTimeCopyAsDictionary(&time, 0);
                            v109[0] = v64;
                            v108[1] = @"duration";
                            time = buf.duration;
                            v65 = CMTimeCopyAsDictionary(&time, 0);
                            v109[1] = v65;
                            personLocalIdentifier4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:v108 count:2];
                            [array addObject:personLocalIdentifier4];
                          }

                          else
                          {
                            v110[0] = @"start";
                            time = buf.start;
                            v64 = CMTimeCopyAsDictionary(&time, 0);
                            v111[0] = v64;
                            v110[1] = @"duration";
                            time = buf.duration;
                            v65 = CMTimeCopyAsDictionary(&time, 0);
                            v111[1] = v65;
                            v110[2] = @"faceIdentifier";
                            personLocalIdentifier4 = [v85 personLocalIdentifier];
                            v111[2] = personLocalIdentifier4;
                            v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:v110 count:3];
                            [array addObject:v67];
                          }

                          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                          {
                            time = buf.start;
                            v68 = CMTimeGetSeconds(&time);
                            time = buf.duration;
                            v69 = CMTimeGetSeconds(&time);
                            *v113 = 134218240;
                            v114 = v68;
                            v115 = 2048;
                            v116 = v69;
                            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MediaAnalysis] metadata 1-up timeranges add torso range : [%f,  %f]", v113, 0x16u);
                          }
                        }
                      }

                      v55 = [v54 countByEnumeratingWithState:&v89 objects:v112 count:16];
                    }

                    while (v55);
                  }

                  goto LABEL_66;
                }
              }
            }

            else
            {
              v54 = v83;
LABEL_66:
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v103 objects:v124 count:16];
      }

      while (v9);
    }

    else
    {
      v80 = 0;
    }

LABEL_77:

    v72 = array;
    if (v80)
    {
      v71 = 0;
    }

    else
    {
      v71 = array;
    }

LABEL_80:
    v8 = v71;
  }

  return v8;
}

- (id)getTimeRangesInAsset:(id)asset forAnimals:(id)animals withAnalysis:(id)analysis
{
  v98 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  animalsCopy = animals;
  analysisCopy = analysis;
  v7 = [animalsCopy count];
  v8 = MEMORY[0x1E695E0F0];
  if (analysisCopy && v7)
  {
    array = [MEMORY[0x1E695DF70] array];
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    obj = animalsCopy;
    v61 = [obj countByEnumeratingWithState:&v86 objects:v96 count:16];
    if (v61)
    {
      v68 = 0;
      v62 = *v87;
      v60 = @"AnimalResults";
      v9 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v61; ++i)
        {
          if (*v87 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v72 = *(*(&v86 + 1) + 8 * i);
          if ([v72 detectionType] == 3 || objc_msgSend(v72, "detectionType") == 4)
          {
            [v72 fetchPropertySetsIfNeeded];
            v10 = [analysisCopy objectForKeyedSubscript:@"metadataRanges"];
            v11 = [v10 objectForKeyedSubscript:@"AnimalPrintResults"];

            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            v71 = v11;
            v12 = [v71 countByEnumeratingWithState:&v82 objects:v95 count:16];
            if (v12)
            {
              v73 = *v83;
              intValue = -1;
              v13 = 1.0;
              while (2)
              {
                v74 = v12;
                for (j = 0; j != v74; ++j)
                {
                  if (*v83 != v73)
                  {
                    objc_enumerationMutation(v71);
                  }

                  v15 = *(*(&v82 + 1) + 8 * j);
                  v16 = [v15 objectForKeyedSubscript:@"attributes"];
                  v17 = [v16 objectForKeyedSubscript:@"animalPrint"];

                  if (v17)
                  {
                    v18 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v17 error:0];
                    v19 = [v18 decodeObjectOfClass:objc_opt_class() forKey:@"animalPrint"];
                    faceClusteringProperties = [v72 faceClusteringProperties];
                    faceprint = [faceClusteringProperties faceprint];
                    faceprintData = [faceprint faceprintData];

                    if (faceprintData)
                    {
                      v23 = objc_alloc(MEMORY[0x1E6984408]);
                      v81 = 0;
                      v24 = [v23 initWithState:faceprintData error:&v81];
                      v25 = v81;
                      v26 = v25;
                      if (!v24)
                      {
                        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          localIdentifier = [v72 localIdentifier];
                          LODWORD(buf.start.value) = 138412546;
                          *(&buf.start.value + 4) = localIdentifier;
                          LOWORD(buf.start.flags) = 2112;
                          *(&buf.start.flags + 2) = v26;
                          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MediaAnalyzer : failed to initalize animalprint data for animal: %@. Error: %@", &buf, 0x16u);
                        }

                        v57 = 0;
                        v58 = array;
                        goto LABEL_70;
                      }

                      v80 = v25;
                      v27 = [v24 computeDistance:v19 withDistanceFunction:0 error:&v80];
                      v28 = v80;

                      if (v27)
                      {
                        [v27 floatValue];
                        v30 = v29;
                        if (v29 < v13)
                        {
                          v31 = [v15 objectForKeyedSubscript:@"attributes"];
                          v32 = [v31 objectForKeyedSubscript:@"animalId"];
                          intValue = [v32 intValue];

                          v13 = v30;
                        }
                      }

                      else
                      {
                        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          localIdentifier2 = [v72 localIdentifier];
                          LODWORD(buf.start.value) = 138412546;
                          *(&buf.start.value + 4) = localIdentifier2;
                          LOWORD(buf.start.flags) = 2112;
                          *(&buf.start.flags + 2) = v28;
                          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MediaAnalyzer : failed to compute distance for animal: %@. Error: %@", &buf, 0x16u);
                        }

                        v68 = -18;
                      }

                      if (!v27)
                      {

                        goto LABEL_67;
                      }
                    }

                    else
                    {
                      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                      {
                        localIdentifier3 = [v72 localIdentifier];
                        LODWORD(buf.start.value) = 138412290;
                        *(&buf.start.value + 4) = localIdentifier3;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "MediaAnalyzer : Failed to get faceClusteringProperties.faceprint.faceprintData for face %@", &buf, 0xCu);
                      }
                    }
                  }

                  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                  {
                    localIdentifier4 = [assetCopy localIdentifier];
                    LODWORD(buf.start.value) = 138412290;
                    *(&buf.start.value + 4) = localIdentifier4;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "MediaAnalyzer : animal print data for asset is nil %@, ignore", &buf, 0xCu);
                  }
                }

                v12 = [v71 countByEnumeratingWithState:&v82 objects:v95 count:16];
                if (v12)
                {
                  continue;
                }

                break;
              }

              if (v13 < 0.1)
              {
                v78 = 0u;
                v79 = 0u;
                v76 = 0u;
                v77 = 0u;
                v36 = [analysisCopy objectForKeyedSubscript:@"metadataRanges"];
                v37 = [v36 objectForKeyedSubscript:v60];

                v38 = [v37 countByEnumeratingWithState:&v76 objects:v94 count:16];
                if (v38)
                {
                  v39 = *v77;
                  do
                  {
                    for (k = 0; k != v38; ++k)
                    {
                      if (*v77 != v39)
                      {
                        objc_enumerationMutation(v37);
                      }

                      v41 = *(*(&v76 + 1) + 8 * k);
                      v42 = [v41 objectForKeyedSubscript:@"attributes"];
                      v43 = [v42 objectForKeyedSubscript:@"animalId"];
                      v44 = v43 == 0;

                      if (v44)
                      {
                        v53 = MediaAnalysisLogLevel();
                        v54 = MEMORY[0x1E69E9C10];
                        if (v53 >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                        {
                          localIdentifier5 = [assetCopy localIdentifier];
                          LODWORD(buf.start.value) = 138412290;
                          *(&buf.start.value + 4) = localIdentifier5;
                          _os_log_impl(&dword_1C9B70000, v54, OS_LOG_TYPE_DEFAULT, "MediaAnalyzer getTimeRangesInAsset : video animalID not available for asset %@", &buf, 0xCu);
                        }
                      }

                      else
                      {
                        v45 = [v41 objectForKeyedSubscript:@"attributes"];
                        v46 = [v45 objectForKeyedSubscript:@"animalId"];
                        intValue2 = [v46 intValue];

                        if (intValue2 == intValue)
                        {
                          memset(&v75, 0, sizeof(v75));
                          CMTimeRangeMakeFromDictionary(&v75, v41);
                          buf = v75;
                          v48 = CMTimeRangeCopyAsDictionary(&buf, 0);
                          [array addObject:v48];

                          v49 = MediaAnalysisLogLevel();
                          v50 = MEMORY[0x1E69E9C10];
                          if (v49 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                          {
                            *&buf.start.value = *&v75.start.value;
                            buf.start.epoch = v75.start.epoch;
                            Seconds = CMTimeGetSeconds(&buf.start);
                            buf.start = v75.duration;
                            v52 = CMTimeGetSeconds(&buf.start);
                            *v90 = 134218240;
                            v91 = Seconds;
                            v92 = 2048;
                            v93 = v52;
                            _os_log_impl(&dword_1C9B70000, v50, OS_LOG_TYPE_DEBUG, "[MediaAnalysis] metadata 1-up timeranges add person range : [%f,  %f]", v90, 0x16u);
                          }
                        }
                      }
                    }

                    v38 = [v37 countByEnumeratingWithState:&v76 objects:v94 count:16];
                  }

                  while (v38);
                }

                goto LABEL_53;
              }
            }

            else
            {
              v37 = v71;
LABEL_53:
            }

            v9 = MEMORY[0x1E69E9C10];
          }

          else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.start.value) = 0;
            _os_log_impl(&dword_1C9B70000, v9, OS_LOG_TYPE_DEFAULT, "MediaAnalyzer : Pet face is not Dog or Cat, ignore", &buf, 2u);
          }
        }

        v61 = [obj countByEnumeratingWithState:&v86 objects:v96 count:16];
      }

      while (v61);
    }

    else
    {
      v68 = 0;
    }

LABEL_67:

    v58 = array;
    if (v68)
    {
      v57 = 0;
    }

    else
    {
      v57 = array;
    }

LABEL_70:
    v8 = v57;
  }

  return v8;
}

- (id)getTimeRangesWithSearchResults:(id)results
{
  v51 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  +[VCPFreeFormSearch getMinSimilarity];
  v4 = v3;
  +[VCPFreeFormSearch getMinSimilarityHighRecall];
  v6 = v5;
  +[VCPFreeFormSearch getMaxSimilarityDiffFor1UP];
  v8 = v7;
  +[VCPFreeFormSearch getHighSimilarityThreshold];
  v10 = v9;
  array = [MEMORY[0x1E695DF70] array];
  memset(&v43, 0, sizeof(v43));
  if ([resultsCopy count])
  {
    lastObject = [resultsCopy lastObject];
    CMTimeRangeMakeFromDictionary(&range, lastObject);
    CMTimeRangeGetEnd(&v43, &range);
  }

  else
  {
    v43 = **&MEMORY[0x1E6960CC0];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = resultsCopy;
  v13 = [v12 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v13)
  {
    v14 = *v39;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v38 + 1) + 8 * i) vcp_quality];
        *&v17 = v17;
        v15 = fmaxf(*&v17, v15);
      }

      v13 = [v12 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v13);
  }

  else
  {
    v15 = 0.0;
  }

  if (v15 >= v4)
  {
    *&v18 = v4;
  }

  else
  {
    *&v18 = v6;
  }

  if (v15 >= *&v18)
  {
    v20 = 0;
    v21 = fmaxf(*&v18, v15 - v8);
    *&v18 = 134218496;
    v33 = v18;
    while (1)
    {
      if ([v12 count] <= v20)
      {
        goto LABEL_17;
      }

      v22 = [v12 objectAtIndexedSubscript:v20];
      memset(&range, 0, sizeof(range));
      CMTimeRangeMakeFromDictionary(&range, v22);
      [(__CFDictionary *)v22 vcp_quality];
      v24 = v23;
      if (v21 <= v24 || v10 < v24)
      {
        break;
      }

LABEL_34:

      ++v20;
    }

    memset(&v37, 0, sizeof(v37));
    lhs = range.start;
    rhs = range.duration;
    CMTimeAdd(&v37, &lhs, &rhs);
    if ([v12 count] - 1 > v20 && (CMTimeMake(&v36, 1, 1), lhs = v43, rhs = v36, CMTimeSubtract(&v44, &lhs, &rhs), lhs = v37, rhs = v44, CMTimeCompare(&lhs, &rhs) < 0))
    {
      CMTimeMake(&v36, 1, 1);
      rhs = v37;
      v44 = v36;
      CMTimeAdd(&lhs, &rhs, &v44);
      v37 = lhs;
      if (!v20)
      {
        goto LABEL_31;
      }
    }

    else if (!v20)
    {
LABEL_31:
      lhs = v37;
      rhs = range.start;
      CMTimeSubtract(&v44, &lhs, &rhs);
      range.duration = v44;
      v48[0] = @"start";
      lhs = range.start;
      v26 = CMTimeCopyAsDictionary(&lhs, 0);
      v49[0] = v26;
      v48[1] = @"duration";
      lhs = range.duration;
      v27 = CMTimeCopyAsDictionary(&lhs, 0);
      v49[1] = v27;
      v48[2] = @"quality";
      *&v28 = v24;
      v29 = [MEMORY[0x1E696AD98] numberWithFloat:v28];
      v49[2] = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:3];
      [array addObject:v30];

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        rhs = range.start;
        Seconds = CMTimeGetSeconds(&rhs);
        rhs = range.duration;
        v32 = CMTimeGetSeconds(&rhs);
        LODWORD(lhs.value) = v33;
        *(&lhs.value + 4) = Seconds;
        LOWORD(lhs.flags) = 2048;
        *(&lhs.flags + 2) = v32;
        HIWORD(lhs.epoch) = 2048;
        v47 = v24;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MediaAnalysis] embedding 1-up timeranges, add [%f, %f], score %f", &lhs, 0x20u);
      }

      goto LABEL_34;
    }

    CMTimeMake(&v36, 1, 1);
    rhs = range.start;
    v44 = v36;
    CMTimeSubtract(&lhs, &rhs, &v44);
    range.start = lhs;
    goto LABEL_31;
  }

LABEL_17:

  return array;
}

- (id)getAnalysisResultsForURLAsset:(id)asset
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];

  return dictionary;
}

- (id)searchForQuery:(id)query forAssets:(id)assets withOptions:(id)options matchingScoreOnly:(BOOL)only isURLAsset:(BOOL)asset analyses:(id)analyses
{
  assetCopy = asset;
  v71 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  assetsCopy = assets;
  optionsCopy = options;
  analysesCopy = analyses;
  v58 = queryCopy;
  v14 = [analysesCopy count];
  if (v14 != [assetsCopy count])
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 134218240;
    *&buf[4] = [analysesCopy count];
    *&buf[12] = 2048;
    *&buf[14] = [assetsCopy count];
    v16 = MEMORY[0x1E69E9C10];
    v17 = "Analyses vs assets acount mismatch: %lu vs %lu";
    v18 = OS_LOG_TYPE_ERROR;
    v19 = 22;
LABEL_8:
    _os_log_impl(&dword_1C9B70000, v16, v18, v17, buf, v19);
    goto LABEL_46;
  }

  if (v58 && [v58 length])
  {
    MediaAnalysisConvertFloat16ToFloat32(v58);
    v54 = v15 = v58;
    goto LABEL_13;
  }

  v20 = [optionsCopy objectForKeyedSubscript:@"SearchQueryString"];

  if (!v20)
  {
LABEL_46:
    v50 = 0;
    v51 = v58;
    goto LABEL_47;
  }

  textEncoder = self->_textEncoder;
  if (!textEncoder)
  {
    v22 = objc_alloc_init(VCPTextEncoder);
    v23 = self->_textEncoder;
    self->_textEncoder = v22;

    textEncoder = self->_textEncoder;
    if (!textEncoder)
    {
      if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      *buf = 0;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "Failed to create text encoder";
      v18 = OS_LOG_TYPE_DEFAULT;
      v19 = 2;
      goto LABEL_8;
    }
  }

  v15 = [optionsCopy objectForKeyedSubscript:@"SearchQueryString"];
  v54 = [(VCPTextEncoder *)textEncoder textEmbeddingForQuery:v15 useFP16:0];

LABEL_13:
  if (self->_freeFormSearch || (v24 = objc_alloc_init(VCPFreeFormSearch), freeFormSearch = self->_freeFormSearch, self->_freeFormSearch = v24, freeFormSearch, self->_freeFormSearch))
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v26 = 0;
    *&v27 = 138412290;
    v53 = v27;
    while (1)
    {
      if ([analysesCopy count] <= v26)
      {
        v44 = [optionsCopy objectForKeyedSubscript:@"MaxSearchResults"];
        if (v44)
        {
          v45 = [optionsCopy objectForKeyedSubscript:@"MaxSearchResults"];
          intValue = [v45 intValue];
        }

        else
        {
          intValue = -1;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v68 = __Block_byref_object_copy__53;
        v69 = __Block_byref_object_dispose__53;
        v70 = 0;
        allKeys = [dictionary allKeys];
        v48 = [allKeys count] == 0;

        if (!v48)
        {
          searchQueue = self->_searchQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __95__VCPMediaAnalyzer_searchForQuery_forAssets_withOptions_matchingScoreOnly_isURLAsset_analyses___block_invoke;
          block[3] = &unk_1E8350D40;
          block[4] = self;
          v62 = dictionary;
          v64 = buf;
          v63 = v54;
          onlyCopy = only;
          v65 = intValue;
          dispatch_sync(searchQueue, block);
        }

        v50 = *(*&buf[8] + 40);
        _Block_object_dispose(buf, 8);

        goto LABEL_38;
      }

      if (assetCopy)
      {
        vcp_results = [analysesCopy objectAtIndexedSubscript:v26];
      }

      else
      {
        v29 = [analysesCopy objectAtIndexedSubscript:v26];
        vcp_results = [v29 vcp_results];

        v30 = [analysesCopy objectAtIndexedSubscript:v26];
        LOBYTE(v29) = [v30 vcp_version] < 64;

        if (v29)
        {
          goto LABEL_31;
        }
      }

      if (+[VCPMovieAnalyzer enableAudioVideoFusion](VCPMovieAnalyzer, "enableAudioVideoFusion") && +[MADEmbeddingStore includeAudioFusedVideoEmbeddings](MADEmbeddingStore, "includeAudioFusedVideoEmbeddings") && ([vcp_results objectForKeyedSubscript:@"AudioFusedVideoEmbeddingResults"], v31 = objc_claimAutoreleasedReturnValue(), v32 = v31 == 0, v31, !v32))
      {
        v33 = [vcp_results objectForKeyedSubscript:@"AudioFusedVideoEmbeddingResults"];
        v34 = [assetsCopy objectAtIndexedSubscript:v26];
        [dictionary setObject:v33 forKeyedSubscript:v34];
      }

      else
      {
        v35 = [vcp_results objectForKeyedSubscript:@"VideoEmbeddingResults"];
        v36 = v35 == 0;

        if (v36)
        {
          v39 = [vcp_results objectForKeyedSubscript:@"ImageEmbeddingResults"];
          v40 = v39 == 0;

          if (v40)
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v43 = [assetsCopy objectAtIndexedSubscript:v26];
              *buf = v53;
              *&buf[4] = v43;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "searchForQuery : missing embedding results for asset %@", buf, 0xCu);
            }
          }

          else
          {
            v41 = [vcp_results objectForKeyedSubscript:@"ImageEmbeddingResults"];
            v42 = [assetsCopy objectAtIndexedSubscript:v26];
            [dictionary setObject:v41 forKeyedSubscript:v42];
          }
        }

        else
        {
          v37 = [vcp_results objectForKeyedSubscript:@"VideoEmbeddingResults"];
          v38 = [assetsCopy objectAtIndexedSubscript:v26];
          [dictionary setObject:v37 forKeyedSubscript:v38];
        }
      }

LABEL_31:

      ++v26;
    }
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to initialize search", buf, 2u);
  }

  v50 = 0;
LABEL_38:
  v51 = v54;
LABEL_47:

  return v50;
}

void __95__VCPMediaAnalyzer_searchForQuery_forAssets_withOptions_matchingScoreOnly_isURLAsset_analyses___block_invoke(uint64_t a1)
{
  if (![*(*(a1 + 32) + 128) loadEmbeddings:*(a1 + 40)])
  {
    v2 = [*(*(a1 + 32) + 128) searchForQuery:*(a1 + 48) matchingScoreOnly:*(a1 + 68) topK:*(a1 + 64)];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)loadAssetsFromPhotoLibrary:(id)library withAssetIdentifiers:(id)identifiers
{
  v29 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  identifiersCopy = identifiers;
  allKeys = identifiersCopy;
  if (!libraryCopy)
  {
    libraryCopy = [MEMORY[0x1E69789B0] vcp_defaultPhotoLibrary];
    if (!allKeys)
    {
      goto LABEL_5;
    }

LABEL_10:
    v12 = [MEMORY[0x1E6978628] vcp_fetchOptionsForLibrary:libraryCopy forTaskID:1];
    v13 = [MEMORY[0x1E6978628] fetchAssetsWithLocalIdentifiers:allKeys options:v12];
    if ([v13 count])
    {
      array = [MEMORY[0x1E695DF70] array];
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        v17 = *v23;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v15);
            }

            [array addObject:{*(*(&v22 + 1) + 8 * i), v22}];
          }

          v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v16);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] No available assets for search", buf, 2u);
      }

      array = 0;
    }

    goto LABEL_24;
  }

  if (identifiersCopy)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    mad_fetchRequest = [libraryCopy mad_fetchRequest];
    v10 = [mad_fetchRequest fetchAnalysesWithLocalIdentifiers:0 predicate:0];
    allKeys = [v10 allKeys];

LABEL_9:
    goto LABEL_10;
  }

  v11 = [(VCPMediaAnalyzer *)self _databaseForPhotoLibrary:libraryCopy];
  mad_fetchRequest = v11;
  if (v11)
  {
    allKeys = [v11 queryAssetsAnalyzedSince:0];
    goto LABEL_9;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    photoLibraryURL = [libraryCopy photoLibraryURL];
    path = [photoLibraryURL path];
    *buf = 138412290;
    v28 = path;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] Failed to obtain database for Photo Library (%@)", buf, 0xCu);
  }

  array = 0;
LABEL_24:

  return array;
}

- (id)requestSearchResultsForAssets:(id)assets forPhotoLibraryURL:(id)l withQueryEmbeddings:(id)embeddings options:(id)options
{
  assetsCopy = assets;
  lCopy = l;
  embeddingsCopy = embeddings;
  optionsCopy = options;
  v14 = -[VCPMediaAnalyzer requestSearchResultsForAssets:forPhotoLibraryURL:withQueryEmbeddings:matchingScoreOnly:options:](self, "requestSearchResultsForAssets:forPhotoLibraryURL:withQueryEmbeddings:matchingScoreOnly:options:", assetsCopy, lCopy, embeddingsCopy, [assetsCopy count] == 1, optionsCopy);

  return v14;
}

- (id)requestSearchResultsForAssets:(id)assets forPhotoLibraryURL:(id)l withQueryEmbeddings:(id)embeddings matchingScoreOnly:(BOOL)only options:(id)options
{
  onlyCopy = only;
  v51 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  lCopy = l;
  embeddingsCopy = embeddings;
  optionsCopy = options;
  v38 = assetsCopy;
  v39 = embeddingsCopy;
  dictionary = [MEMORY[0x1E695DF20] dictionary];
  if ([embeddingsCopy count] || (objc_msgSend(optionsCopy, "objectForKeyedSubscript:", @"SearchQueryString"), v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    if ([assetsCopy count])
    {
      v35 = [assetsCopy mutableCopy];
      [MEMORY[0x1E695DF70] array];
    }

    else
    {
      if (lCopy)
      {
        vcp_defaultPhotoLibrary = [objc_alloc(MEMORY[0x1E69789B0]) initWithPhotoLibraryURL:lCopy];
      }

      else
      {
        vcp_defaultPhotoLibrary = [MEMORY[0x1E69789B0] vcp_defaultPhotoLibrary];
      }

      v17 = vcp_defaultPhotoLibrary;
      v18 = [(VCPMediaAnalyzer *)self loadAssetsFromPhotoLibrary:vcp_defaultPhotoLibrary withAssetIdentifiers:0];
      v37 = [v18 mutableCopy];

      [MEMORY[0x1E695DF70] array];
    }
    v19 = ;
    v20 = onlyCopy;
    array = [MEMORY[0x1E695DF70] array];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v22 = v36;
    v23 = [v22 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v23)
    {
      v24 = *v44;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v44 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v43 + 1) + 8 * i);
          localIdentifier = [v26 localIdentifier];
          v28 = localIdentifier == 0;

          if (!v28)
          {
            localIdentifier2 = [v26 localIdentifier];
            [array addObject:localIdentifier2];
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v23);
    }

    v48 = @"AllowOnDemand";
    v49 = MEMORY[0x1E695E110];
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v31 = [(VCPMediaAnalyzer *)self requestAnalysisTypes:0x1080000000000 forAssets:v22 withOptions:v30 andProgressHandler:0 cancelBlock:&__block_literal_global_1005_0 analyses:v19];

    if (v31)
    {
      v32 = 0;
    }

    else
    {
      firstObject = [v39 firstObject];
      v32 = [(VCPMediaAnalyzer *)self searchForQuery:firstObject forAssets:array withOptions:optionsCopy matchingScoreOnly:v20 isURLAsset:0 analyses:v19];

      dictionary = v32;
    }

    v16 = v32;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[FreeFromSearch] No query input for search", buf, 2u);
    }

    v16 = 0;
  }

  return v16;
}

- (id)findTimeRangesFor:(id)for inAsset:(id)asset withOptions:(id)options results:(id)results andError:(id *)error
{
  v135 = *MEMORY[0x1E69E9840];
  forCopy = for;
  assetCopy = asset;
  optionsCopy = options;
  resultsCopy = results;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = forCopy;
  v12 = [obj countByEnumeratingWithState:&v115 objects:v134 count:16];
  v13 = 0;
  if (!v12)
  {
    goto LABEL_25;
  }

  v14 = *v116;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v116 != v14)
      {
        objc_enumerationMutation(obj);
      }

      intValue = [*(*(&v115 + 1) + 8 * i) intValue];
      v17 = intValue;
      if (intValue > 3)
      {
        switch(intValue)
        {
          case 4:
            v13 |= 0x200010uLL;
            continue;
          case 5:
            v13 |= 0x1080000000000uLL;
            continue;
          case 6:
            v13 |= 0x8000000000000uLL;
            continue;
        }
      }

      else
      {
        switch(intValue)
        {
          case 1:
            v13 |= 0x20008uLL;
            continue;
          case 2:
            v13 |= 0x4000uLL;
            continue;
          case 3:
            v13 |= 0x40000000uLL;
            continue;
        }
      }

      if (MediaAnalysisLogLevel() >= 4)
      {
        v18 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v123 = v17;
          _os_log_impl(&dword_1C9B70000, v18, OS_LOG_TYPE_DEFAULT, "Unknown query type %ld", buf, 0xCu);
        }
      }
    }

    v12 = [obj countByEnumeratingWithState:&v115 objects:v134 count:16];
  }

  while (v12);
LABEL_25:

  v19 = [optionsCopy objectForKeyedSubscript:@"SearchQueryString"];
  v20 = v19 == 0;

  if (v20)
  {
    v21 = v13;
  }

  else
  {
    v21 = v13 | 0x1080000000000;
  }

  if (!v21)
  {
LABEL_96:
    v82 = 0;
    goto LABEL_97;
  }

  if (![resultsCopy count])
  {
    v83 = +[VCPMediaAnalyzer sharedMediaAnalyzer];
    v133 = assetCopy;
    v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v133 count:1];
    v85 = [v83 requestAnalysis:v21 forAssets:v84 withOptions:0 andProgressHandler:0 andError:error];

    resultsCopy = v85;
    if (*error || ![v85 count])
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier = [assetCopy localIdentifier];
        *buf = 138412290;
        v123 = localIdentifier;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MediaAnalyzer failed to get results for asset %@", buf, 0xCu);
      }

      goto LABEL_96;
    }
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v92 = obj;
  v91 = [v92 countByEnumeratingWithState:&v111 objects:v132 count:16];
  if (!v91)
  {
    goto LABEL_87;
  }

  v90 = *v112;
  *&v22 = 134218754;
  v88 = v22;
  while (2)
  {
    v94 = 0;
    while (2)
    {
      if (*v112 != v90)
      {
        objc_enumerationMutation(v92);
      }

      v23 = *(*(&v111 + 1) + 8 * v94);
      intValue2 = [v23 intValue];
      v25 = intValue2;
      if (intValue2 > 3)
      {
        switch(intValue2)
        {
          case 4:
            v41 = [v92 objectForKeyedSubscript:v23];
            firstObject = [resultsCopy firstObject];
            v43 = [firstObject objectForKeyedSubscript:@"metadataRanges"];
            v29 = [(VCPMediaAnalyzer *)self getTimeRangesForSoundIdentifiers:v41 withResults:v43];

            if (v29)
            {
              v44 = [MEMORY[0x1E696AD98] numberWithInteger:4];
              stringValue = [v44 stringValue];
              [dictionary setObject:v29 forKeyedSubscript:stringValue];
            }

            break;
          case 5:
            array = [MEMORY[0x1E695DF70] array];
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v93 = [v92 objectForKeyedSubscript:v23];
            v97 = [v93 countByEnumeratingWithState:&v107 objects:v131 count:16];
            if (v97)
            {
              v95 = *v108;
              while (2)
              {
                for (j = 0; j != v97; ++j)
                {
                  if (*v108 != v95)
                  {
                    objc_enumerationMutation(v93);
                  }

                  v52 = *(*(&v107 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    vectors = [v52 vectors];
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                      {
                        v65 = objc_opt_class();
                        v66 = NSStringFromClass(v65);
                        v67 = objc_opt_class();
                        v68 = NSStringFromClass(v67);
                        v69 = objc_opt_class();
                        v70 = NSStringFromClass(v69);
                        *buf = v88;
                        v123 = 5;
                        v124 = 2112;
                        v125 = v66;
                        v126 = 2112;
                        v127 = v68;
                        v128 = 2112;
                        v129 = v70;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Mismatch data type for query %ld, skip. Expect %@ or %@. Got %@", buf, 0x2Au);
                      }

                      goto LABEL_84;
                    }

                    v130 = v52;
                    vectors = [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1];
                  }

                  v105 = 0u;
                  v106 = 0u;
                  v103 = 0u;
                  v104 = 0u;
                  v54 = vectors;
                  v55 = [v54 countByEnumeratingWithState:&v103 objects:v121 count:16];
                  if (v55)
                  {
                    v56 = *v104;
                    do
                    {
                      for (k = 0; k != v55; ++k)
                      {
                        if (*v104 != v56)
                        {
                          objc_enumerationMutation(v54);
                        }

                        v58 = *(*(&v103 + 1) + 8 * k);
                        localIdentifier2 = [assetCopy localIdentifier];
                        v120 = localIdentifier2;
                        v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
                        v61 = [(VCPMediaAnalyzer *)self searchForQuery:v58 forAssets:v60 withOptions:optionsCopy matchingScoreOnly:1 isURLAsset:0 analyses:resultsCopy];

                        localIdentifier3 = [assetCopy localIdentifier];
                        v63 = [v61 objectForKeyedSubscript:localIdentifier3];
                        v64 = [(VCPMediaAnalyzer *)self getTimeRangesWithSearchResults:v63];

                        if (v64)
                        {
                          [array addObjectsFromArray:v64];
                        }
                      }

                      v55 = [v54 countByEnumeratingWithState:&v103 objects:v121 count:16];
                    }

                    while (v55);
                  }
                }

                v97 = [v93 countByEnumeratingWithState:&v107 objects:v131 count:16];
                if (v97)
                {
                  continue;
                }

                break;
              }
            }

LABEL_84:

            v71 = [MEMORY[0x1E696AD98] numberWithInteger:5];
            stringValue2 = [v71 stringValue];
            [dictionary setObject:array forKeyedSubscript:stringValue2];

            goto LABEL_85;
          case 6:
            v32 = [v92 objectForKeyedSubscript:v23];
            firstObject2 = [resultsCopy firstObject];
            v34 = [firstObject2 objectForKeyedSubscript:@"metadataRanges"];
            v29 = [(VCPMediaAnalyzer *)self getTimeRangesForThumbnailIdentifiers:v32 withResults:v34];

            if (v29)
            {
              v35 = [MEMORY[0x1E696AD98] numberWithInteger:6];
              stringValue3 = [v35 stringValue];
              [dictionary setObject:v29 forKeyedSubscript:stringValue3];
            }

            break;
          default:
            goto LABEL_54;
        }

LABEL_59:

        goto LABEL_85;
      }

      switch(intValue2)
      {
        case 1:
          v37 = [v92 objectForKeyedSubscript:v23];
          firstObject3 = [resultsCopy firstObject];
          v29 = [(VCPMediaAnalyzer *)self getTimeRangesInAsset:assetCopy forPersonLocalIdentifiers:v37 withAnalysis:firstObject3];

          if (v29)
          {
            v39 = [MEMORY[0x1E696AD98] numberWithInteger:1];
            stringValue4 = [v39 stringValue];
            [dictionary setObject:v29 forKeyedSubscript:stringValue4];
          }

          goto LABEL_59;
        case 2:
          v46 = [v92 objectForKeyedSubscript:v23];
          firstObject4 = [resultsCopy firstObject];
          v48 = [firstObject4 objectForKeyedSubscript:@"metadataRanges"];
          v29 = [(VCPMediaAnalyzer *)self getTimeRangesForSceneIdentifiers:v46 withResults:v48];

          if (v29)
          {
            v49 = [MEMORY[0x1E696AD98] numberWithInteger:2];
            stringValue5 = [v49 stringValue];
            [dictionary setObject:v29 forKeyedSubscript:stringValue5];
          }

          goto LABEL_59;
        case 3:
          v26 = [v92 objectForKeyedSubscript:v23];
          firstObject5 = [resultsCopy firstObject];
          v28 = [firstObject5 objectForKeyedSubscript:@"metadataRanges"];
          v29 = [(VCPMediaAnalyzer *)self getTimeRangesForActionIDs:v26 withResults:v28];

          if (v29)
          {
            v30 = [MEMORY[0x1E696AD98] numberWithInteger:3];
            stringValue6 = [v30 stringValue];
            [dictionary setObject:v29 forKeyedSubscript:stringValue6];
          }

          goto LABEL_59;
      }

LABEL_54:
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v123 = v25;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unknown query type %ld", buf, 0xCu);
      }

LABEL_85:
      if (++v94 != v91)
      {
        continue;
      }

      break;
    }

    v91 = [v92 countByEnumeratingWithState:&v111 objects:v132 count:16];
    if (v91)
    {
      continue;
    }

    break;
  }

LABEL_87:

  v73 = [optionsCopy objectForKeyedSubscript:@"SearchQueryString"];
  v74 = v73 == 0;

  if (!v74)
  {
    localIdentifier4 = [assetCopy localIdentifier];
    v119 = localIdentifier4;
    v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
    v77 = [(VCPMediaAnalyzer *)self searchForQuery:0 forAssets:v76 withOptions:optionsCopy matchingScoreOnly:1 isURLAsset:0 analyses:resultsCopy];

    localIdentifier5 = [assetCopy localIdentifier];
    v79 = [v77 objectForKeyedSubscript:localIdentifier5];
    v80 = [(VCPMediaAnalyzer *)self getTimeRangesWithSearchResults:v79];

    if (v80)
    {
      stringValue7 = [&unk_1F49BE050 stringValue];
      [dictionary setObject:v80 forKeyedSubscript:stringValue7];
    }
  }

  v82 = dictionary;
LABEL_97:

  return v82;
}

- (int)findTimeRangesFor:(id)for inAsset:(id)asset withOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  forCopy = for;
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (forCopy && assetCopy && ([assetCopy isVideo] & 1) != 0)
  {
    add = atomic_fetch_add(&self->_nextRequestID.__a_.__a_value, 1u);
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0.0);
    }

    v18 = dispatch_get_global_queue(0, 0);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __98__VCPMediaAnalyzer_findTimeRangesFor_inAsset_withOptions_andProgressHandler_andCompletionHandler___block_invoke;
    v20[3] = &unk_1E8350D68;
    v20[4] = self;
    v21 = forCopy;
    v22 = assetCopy;
    v23 = optionsCopy;
    v24 = handlerCopy;
    v25 = completionHandlerCopy;
    dispatch_async(v18, v20);
  }

  else
  {
    (*(completionHandlerCopy + 2))(completionHandlerCopy, 0, 0);
    add = -1;
  }

  return add;
}

void __98__VCPMediaAnalyzer_findTimeRangesFor_inAsset_withOptions_andProgressHandler_andCompletionHandler___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = *(a1 + 32);
  v3 = *(v1 + 40);
  v1 += 32;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v46 = 0;
  v34 = [v2 findTimeRangesFor:v3 inAsset:v4 withOptions:v5 results:0 andError:&v46];
  v35 = v46;
  v32 = [*v1 postProcessTimeRanges:v34 options:*(v1 + 24)];
  v6 = a1;
  v7 = [*(a1 + 32) getThumbnailTimerange:v34];
  v8 = *(a1 + 64);
  if (v8)
  {
    (*(v8 + 16))(100.0);
  }

  if (!v35 && ([v32 count] || objc_msgSend(v7, "count")))
  {
    v31 = v7;
    v10 = [MEMORY[0x1E695DF70] array];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v11 = v32;
    v12 = [v11 countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v12)
    {
      v13 = *v43;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = MEMORY[0x1E696B098];
          CMTimeRangeMakeFromDictionary(&buf, *(*(&v42 + 1) + 8 * i));
          v16 = [v15 valueWithCMTimeRange:&buf];
          [v10 addObject:v16];
        }

        v12 = [v11 countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v12);
    }

    v17 = *(a1 + 32);
    v18 = [*(a1 + 56) objectForKeyedSubscript:@"MinTimeRangeGap"];
    v19 = [v17 mergeTimeRanges:v10 mergeGap:v18];

    if (v31)
    {
      v20 = [v31 arrayByAddingObjectsFromArray:v19];

      v19 = v20;
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v21 = [*(a1 + 48) localIdentifier];
      LODWORD(buf.start.value) = 138412290;
      *(&buf.start.value + 4) = v21;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "MediaAnalysis findTimeRanges for asset %@", &buf, 0xCu);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v22 = v19;
    v23 = [v22 countByEnumeratingWithState:&v38 objects:v51 count:16];
    if (v23)
    {
      v24 = *v39;
      v25 = MEMORY[0x1E69E9C10];
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v39 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v38 + 1) + 8 * j);
          if (MediaAnalysisLogLevel() >= 6)
          {
            v28 = v25;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              if (v27)
              {
                [v27 CMTimeRangeValue];
              }

              else
              {
                memset(&buf, 0, sizeof(buf));
              }

              time[0] = buf.start;
              Seconds = CMTimeGetSeconds(time);
              if (v27)
              {
                [v27 CMTimeRangeValue];
              }

              else
              {
                memset(time, 0, sizeof(time));
              }

              v37 = time[1];
              v30 = CMTimeGetSeconds(&v37);
              *v47 = 134218240;
              v48 = Seconds;
              v49 = 2048;
              v50 = v30;
              _os_log_impl(&dword_1C9B70000, v25, OS_LOG_TYPE_INFO, "[%f, %f]", v47, 0x16u);
            }
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v38 objects:v51 count:16];
      }

      while (v23);
    }

    (*(*(a1 + 72) + 16))();
    v7 = v31;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v9 = [*(a1 + 48) localIdentifier];
      LODWORD(buf.start.value) = 138412290;
      *(&buf.start.value + 4) = v9;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "No matching timeranges found for asset %@", &buf, 0xCu);

      v6 = a1;
    }

    (*(*(v6 + 72) + 16))();
  }
}

- (int)findTimeRangesFor:(id)for inURLAsset:(id)asset withOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  v75 = *MEMORY[0x1E69E9840];
  forCopy = for;
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v38 = forCopy;
  v39 = assetCopy;
  if (forCopy && assetCopy)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = assetCopy;
      *&buf[12] = 2112;
      *&buf[14] = forCopy;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Received timeRange request for asset: %@ with query: %@", buf, 0x16u);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v15 = forCopy;
    v37 = completionHandlerCopy;
    v16 = [v15 countByEnumeratingWithState:&v66 objects:v74 count:16];
    selfCopy = self;
    v17 = 0;
    if (v16)
    {
      v18 = *v67;
      v19 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v67 != v18)
          {
            objc_enumerationMutation(v15);
          }

          intValue = [*(*(&v66 + 1) + 8 * i) intValue];
          v22 = intValue;
          if (intValue > 3)
          {
            switch(intValue)
            {
              case 4:
                v17 |= 0x200010uLL;
                continue;
              case 5:
                v17 |= 0x1080000000000uLL;
                continue;
              case 6:
                v17 |= 0x8000000000000uLL;
                continue;
            }
          }

          else
          {
            switch(intValue)
            {
              case 1:
                v17 |= 8uLL;
                continue;
              case 2:
                v17 |= 0x4000uLL;
                continue;
              case 3:
                v17 |= 0x40000000uLL;
                continue;
            }
          }

          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v22;
            _os_log_impl(&dword_1C9B70000, v19, OS_LOG_TYPE_DEFAULT, "Unknown query type %ld", buf, 0xCu);
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v66 objects:v74 count:16];
      }

      while (v16);
    }

    if (handlerCopy)
    {
      handlerCopy[2](0.0);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v71 = __Block_byref_object_copy__53;
    v72 = __Block_byref_object_dispose__53;
    v73 = 0;
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x3032000000;
    v64[3] = __Block_byref_object_copy__53;
    v64[4] = __Block_byref_object_dispose__53;
    v65 = 0;
    v23 = dispatch_semaphore_create(0);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __101__VCPMediaAnalyzer_findTimeRangesFor_inURLAsset_withOptions_andProgressHandler_andCompletionHandler___block_invoke;
    aBlock[3] = &unk_1E8350D90;
    v63 = buf;
    v24 = v23;
    v62 = v24;
    v25 = _Block_copy(aBlock);
    add = atomic_fetch_add(&selfCopy->_nextRequestID.__a_.__a_value, 1u);
    v27 = objc_alloc_init(VCPCancelToken);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __101__VCPMediaAnalyzer_findTimeRangesFor_inURLAsset_withOptions_andProgressHandler_andCompletionHandler___block_invoke_2;
    v59[3] = &unk_1E834C078;
    v28 = v27;
    v60 = v28;
    v29 = _Block_copy(v59);
    cancelQueue = selfCopy->_cancelQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __101__VCPMediaAnalyzer_findTimeRangesFor_inURLAsset_withOptions_andProgressHandler_andCompletionHandler___block_invoke_3;
    block[3] = &unk_1E8350CF0;
    v58 = add;
    block[4] = selfCopy;
    v57 = v28;
    v42 = v28;
    dispatch_sync(cancelQueue, block);
    v31 = dispatch_get_global_queue(0, 0);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __101__VCPMediaAnalyzer_findTimeRangesFor_inURLAsset_withOptions_andProgressHandler_andCompletionHandler___block_invoke_4;
    v43[3] = &unk_1E8350DB8;
    v52 = buf;
    v43[4] = selfCopy;
    v44 = v39;
    v48 = v25;
    v49 = v29;
    v45 = optionsCopy;
    v46 = v24;
    v53 = v64;
    v54 = v17;
    v47 = v15;
    v50 = handlerCopy;
    v51 = v37;
    v55 = add;
    v32 = v24;
    v33 = v29;
    v34 = v25;
    dispatch_async(v31, v43);

    _Block_object_dispose(v64, 8);
    _Block_object_dispose(buf, 8);

    completionHandlerCopy = v37;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] [MediaAnalyzer findTimeRangesFor:inURLAsset] call with nil queries or resourceURL", buf, 2u);
    }

    (*(completionHandlerCopy + 2))(completionHandlerCopy, 0, 0);
    add = -1;
  }

  return add;
}

void __101__VCPMediaAnalyzer_findTimeRangesFor_inURLAsset_withOptions_andProgressHandler_andCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x1E69E9848];
    v8 = [v5 description];
    fprintf(v7, "[ERROR] Analyze file failed (%s)\n", [v8 UTF8String]);
  }

  v9 = [v12 objectForKeyedSubscript:@"metadataRanges"];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __101__VCPMediaAnalyzer_findTimeRangesFor_inURLAsset_withOptions_andProgressHandler_andCompletionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 112);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  [v2 setObject:v1 forKeyedSubscript:?];
}

void __101__VCPMediaAnalyzer_findTimeRangesFor_inURLAsset_withOptions_andProgressHandler_andCompletionHandler___block_invoke_4(uint64_t a1)
{
  v128[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) getAnalysisResultsForURLAsset:*(a1 + 40)];
  v3 = *(*(a1 + 104) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 104) + 8) + 40);
  if (!v5 || ![v5 count])
  {
    v6 = [*(a1 + 48) objectForKeyedSubscript:@"AllowOnDemand"];
    if (v6)
    {
      v7 = [*(a1 + 48) objectForKeyedSubscript:@"AllowOnDemand"];
      v8 = [v7 BOOLValue];

      if (v8)
      {
        v128[0] = *(a1 + 40);
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:1];
        v10 = [VCPFullAnalysisURLProcessingTask taskForURLAsset:v9 withOptions:*(a1 + 48) analysisTypes:*(a1 + 120) progressHandler:0 completionHandler:*(a1 + 72)];

        [v10 runWithCancelBlock:*(a1 + 80)];
        dispatch_semaphore_wait(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }

  v80 = [MEMORY[0x1E695DF90] dictionary];
  if (!*(*(*(a1 + 112) + 8) + 40) && [*(*(*(a1 + 104) + 8) + 40) count])
  {
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    obj = *(a1 + 64);
    v82 = [obj countByEnumeratingWithState:&v111 objects:v127 count:16];
    if (!v82)
    {
      goto LABEL_69;
    }

    v81 = *v112;
    while (1)
    {
      for (i = 0; i != v82; ++i)
      {
        if (*v112 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v111 + 1) + 8 * i);
        v12 = [v11 intValue];
        v13 = v12;
        if (v12 > 3)
        {
          switch(v12)
          {
            case 4:
              v25 = *(a1 + 32);
              v26 = [*(a1 + 64) objectForKeyedSubscript:v11];
              v16 = [v25 getTimeRangesForSoundIdentifiers:v26 withResults:*(*(*(a1 + 104) + 8) + 40)];

              if (v16)
              {
                v27 = [MEMORY[0x1E696AD98] numberWithInteger:4];
                v28 = [v27 stringValue];
                [v80 setObject:v16 forKeyedSubscript:v28];
              }

              goto LABEL_41;
            case 5:
              v90 = [MEMORY[0x1E695DF70] array];
              v109 = 0u;
              v110 = 0u;
              v107 = 0u;
              v108 = 0u;
              v83 = [*(a1 + 64) objectForKeyedSubscript:v11];
              v86 = [v83 countByEnumeratingWithState:&v107 objects:v126 count:16];
              if (v86)
              {
                v85 = *v108;
                while (2)
                {
                  for (j = 0; j != v86; ++j)
                  {
                    if (*v108 != v85)
                    {
                      objc_enumerationMutation(v83);
                    }

                    v33 = *(*(&v107 + 1) + 8 * j);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v34 = [v33 vectors];
                    }

                    else
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                        {
                          v48 = objc_opt_class();
                          v49 = NSStringFromClass(v48);
                          v50 = objc_opt_class();
                          v51 = NSStringFromClass(v50);
                          LODWORD(buf.start.value) = 134218498;
                          *(&buf.start.value + 4) = 5;
                          LOWORD(buf.start.flags) = 2112;
                          *(&buf.start.flags + 2) = v49;
                          HIWORD(buf.start.epoch) = 2112;
                          buf.duration.value = v51;
                          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Mismatch data type for query %ld, skip. Expect %@ or %@", &buf, 0x20u);
                        }

                        goto LABEL_66;
                      }

                      v125 = v33;
                      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v125 count:1];
                    }

                    v105 = 0u;
                    v106 = 0u;
                    v103 = 0u;
                    v104 = 0u;
                    v88 = v34;
                    v35 = [v88 countByEnumeratingWithState:&v103 objects:v124 count:16];
                    if (v35)
                    {
                      v36 = *v104;
                      do
                      {
                        for (k = 0; k != v35; ++k)
                        {
                          if (*v104 != v36)
                          {
                            objc_enumerationMutation(v88);
                          }

                          v38 = *(*(&v103 + 1) + 8 * k);
                          v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", *(a1 + 40)];
                          v40 = *(a1 + 32);
                          v123 = v39;
                          v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:1];
                          v42 = *(a1 + 48);
                          v122 = *(*(*(a1 + 104) + 8) + 40);
                          v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1];
                          v44 = [v40 searchForQuery:v38 forAssets:v41 withOptions:v42 matchingScoreOnly:1 isURLAsset:1 analyses:v43];

                          v45 = *(a1 + 32);
                          v46 = [v44 objectForKeyedSubscript:v39];
                          v47 = [v45 getTimeRangesWithSearchResults:v46];

                          if (v47)
                          {
                            [v90 addObjectsFromArray:v47];
                          }
                        }

                        v35 = [v88 countByEnumeratingWithState:&v103 objects:v124 count:16];
                      }

                      while (v35);
                    }
                  }

                  v86 = [v83 countByEnumeratingWithState:&v107 objects:v126 count:16];
                  if (v86)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_66:

              v52 = [MEMORY[0x1E696AD98] numberWithInteger:5];
              v53 = [v52 stringValue];
              [v80 setObject:v90 forKeyedSubscript:v53];

              continue;
            case 6:
              v19 = *(a1 + 32);
              v20 = [*(a1 + 64) objectForKeyedSubscript:v11];
              v16 = [v19 getTimeRangesForThumbnailIdentifiers:v20 withResults:*(*(*(a1 + 104) + 8) + 40)];

              if (v16)
              {
                v21 = [MEMORY[0x1E696AD98] numberWithInteger:6];
                v22 = [v21 stringValue];
                [v80 setObject:v16 forKeyedSubscript:v22];
              }

              goto LABEL_41;
          }

          goto LABEL_35;
        }

        if (v12 != 1)
        {
          if (v12 == 2)
          {
            v29 = *(a1 + 32);
            v30 = [*(a1 + 64) objectForKeyedSubscript:v11];
            v16 = [v29 getTimeRangesForSceneIdentifiers:v30 withResults:*(*(*(a1 + 104) + 8) + 40)];

            if (v16)
            {
              v31 = [MEMORY[0x1E696AD98] numberWithInteger:2];
              v32 = [v31 stringValue];
              [v80 setObject:v16 forKeyedSubscript:v32];
            }

            goto LABEL_41;
          }

          if (v12 == 3)
          {
            v14 = *(a1 + 32);
            v15 = [*(a1 + 64) objectForKeyedSubscript:v11];
            v16 = [v14 getTimeRangesForActionIDs:v15 withResults:*(*(*(a1 + 104) + 8) + 40)];

            if (v16)
            {
              v17 = [MEMORY[0x1E696AD98] numberWithInteger:3];
              v18 = [v17 stringValue];
              [v80 setObject:v16 forKeyedSubscript:v18];
            }

LABEL_41:

            continue;
          }

LABEL_35:
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.start.value) = 134217984;
            *(&buf.start.value + 4) = v13;
            v23 = MEMORY[0x1E69E9C10];
            v24 = "Unknown query type %ld";
            goto LABEL_38;
          }

          continue;
        }

        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.start.value) = 134217984;
          *(&buf.start.value + 4) = 1;
          v23 = MEMORY[0x1E69E9C10];
          v24 = "Query type not supported as of now (%ld)";
LABEL_38:
          _os_log_impl(&dword_1C9B70000, v23, OS_LOG_TYPE_DEFAULT, v24, &buf, 0xCu);
          continue;
        }
      }

      v82 = [obj countByEnumeratingWithState:&v111 objects:v127 count:16];
      if (!v82)
      {
LABEL_69:

        goto LABEL_70;
      }
    }
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.start.value) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] [MediaAnalyzer searchFor:inURLAsset] analysis failed", &buf, 2u);
  }

LABEL_70:
  v54 = *(a1 + 88);
  if (v54)
  {
    (*(v54 + 16))(100.0);
  }

  if (*(*(*(a1 + 112) + 8) + 40))
  {
    (*(*(a1 + 96) + 16))();
  }

  else
  {
    v55 = [MEMORY[0x1E695DF70] array];
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v56 = [*(a1 + 32) postProcessTimeRanges:v80 options:*(a1 + 48)];
    v57 = [v56 countByEnumeratingWithState:&v99 objects:v121 count:16];
    if (v57)
    {
      v58 = *v100;
      do
      {
        for (m = 0; m != v57; ++m)
        {
          if (*v100 != v58)
          {
            objc_enumerationMutation(v56);
          }

          v60 = MEMORY[0x1E696B098];
          CMTimeRangeMakeFromDictionary(&buf, *(*(&v99 + 1) + 8 * m));
          v61 = [v60 valueWithCMTimeRange:&buf];
          [v55 addObject:v61];
        }

        v57 = [v56 countByEnumeratingWithState:&v99 objects:v121 count:16];
      }

      while (v57);
    }

    v62 = *(a1 + 32);
    v63 = [*(a1 + 48) objectForKeyedSubscript:@"MinTimeRangeGap"];
    v64 = [v62 mergeTimeRanges:v55 mergeGap:v63];

    v65 = [*(a1 + 32) getThumbnailTimerange:v80];
    v89 = v65;
    if (v65)
    {
      v66 = [v65 arrayByAddingObjectsFromArray:v64];

      v64 = v66;
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v67 = *(a1 + 40);
      LODWORD(buf.start.value) = 138412290;
      *(&buf.start.value + 4) = v67;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "MediaAnalysis findTimeRanges for url %@", &buf, 0xCu);
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v68 = v64;
    v69 = [v68 countByEnumeratingWithState:&v95 objects:v119 count:16];
    if (v69)
    {
      v70 = *v96;
      v71 = MEMORY[0x1E69E9C10];
      do
      {
        for (n = 0; n != v69; ++n)
        {
          if (*v96 != v70)
          {
            objc_enumerationMutation(v68);
          }

          v73 = *(*(&v95 + 1) + 8 * n);
          if (MediaAnalysisLogLevel() >= 6)
          {
            v74 = v71;
            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              if (v73)
              {
                [v73 CMTimeRangeValue];
              }

              else
              {
                memset(&buf, 0, sizeof(buf));
              }

              time[0] = buf.start;
              Seconds = CMTimeGetSeconds(time);
              if (v73)
              {
                [v73 CMTimeRangeValue];
              }

              else
              {
                memset(time, 0, sizeof(time));
              }

              v94 = time[1];
              v76 = CMTimeGetSeconds(&v94);
              *v115 = 134218240;
              v116 = Seconds;
              v117 = 2048;
              v118 = v76;
              _os_log_impl(&dword_1C9B70000, v71, OS_LOG_TYPE_INFO, "[%f, %f]", v115, 0x16u);
            }
          }
        }

        v69 = [v68 countByEnumeratingWithState:&v95 objects:v119 count:16];
      }

      while (v69);
    }

    (*(*(a1 + 96) + 16))();
  }

  v77 = *(a1 + 32);
  v78 = *(v77 + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__VCPMediaAnalyzer_findTimeRangesFor_inURLAsset_withOptions_andProgressHandler_andCompletionHandler___block_invoke_1014;
  block[3] = &unk_1E834C978;
  block[4] = v77;
  v92 = *(a1 + 128);
  dispatch_sync(v78, block);
}

void __101__VCPMediaAnalyzer_findTimeRangesFor_inURLAsset_withOptions_andProgressHandler_andCompletionHandler___block_invoke_1014(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 112);
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  [v1 removeObjectForKey:?];
}

- (int)findTimeRangesWithContext:(id)context inAsset:(id)asset withOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  entities = [context entities];
  LODWORD(self) = [(VCPMediaAnalyzer *)self findTimeRangesFor:entities inAsset:assetCopy withOptions:optionsCopy andProgressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];

  return self;
}

- (int)findTimeRangesWithContext:(id)context inURLAsset:(id)asset withOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  entities = [context entities];
  LODWORD(self) = [(VCPMediaAnalyzer *)self findTimeRangesFor:entities inURLAsset:assetCopy withOptions:optionsCopy andProgressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];

  return self;
}

- (id)postProcessTimeRanges:(id)ranges options:(id)options
{
  v41 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [rangesCopy allKeys];
  v6 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v6)
  {
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        stringValue = [&unk_1F49BE068 stringValue];
        v11 = [v9 isEqual:stringValue];

        if ((v11 & 1) == 0)
        {
          stringValue2 = [&unk_1F49BE050 stringValue];
          v13 = [v9 isEqual:stringValue2];

          if (v13)
          {
            v32 = 0uLL;
            v33 = 0uLL;
            v30 = 0uLL;
            v31 = 0uLL;
            v14 = [rangesCopy objectForKeyedSubscript:v9];
            v15 = [v14 countByEnumeratingWithState:&v30 objects:v39 count:16];
            if (v15)
            {
              v16 = *v31;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v31 != v16)
                  {
                    objc_enumerationMutation(v14);
                  }

                  [array2 addObject:*(*(&v30 + 1) + 8 * j)];
                }

                v15 = [v14 countByEnumeratingWithState:&v30 objects:v39 count:16];
              }

              while (v15);
            }
          }

          else
          {
            v28 = 0uLL;
            v29 = 0uLL;
            v26 = 0uLL;
            v27 = 0uLL;
            v14 = [rangesCopy objectForKeyedSubscript:v9];
            v18 = [v14 countByEnumeratingWithState:&v26 objects:v38 count:16];
            if (v18)
            {
              v19 = *v27;
              do
              {
                for (k = 0; k != v18; ++k)
                {
                  if (*v27 != v19)
                  {
                    objc_enumerationMutation(v14);
                  }

                  [array addObject:*(*(&v26 + 1) + 8 * k)];
                }

                v18 = [v14 countByEnumeratingWithState:&v26 objects:v38 count:16];
              }

              while (v18);
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v6);
  }

  if ([array2 count])
  {
    v21 = array2;
  }

  else
  {
    v21 = array;
  }

  v22 = v21;

  return v21;
}

- (id)getThumbnailTimerange:(id)timerange
{
  v12[1] = *MEMORY[0x1E69E9840];
  timerangeCopy = timerange;
  stringValue = [&unk_1F49BE068 stringValue];
  v5 = [timerangeCopy objectForKeyedSubscript:stringValue];

  if ([v5 count])
  {
    memset(&v11, 0, sizeof(v11));
    firstObject = [v5 firstObject];
    CMTimeRangeMakeFromDictionary(&v11, firstObject);

    v10 = v11;
    v7 = [MEMORY[0x1E696B098] valueWithCMTimeRange:&v10];
    v12[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)mergeTimeRanges:(id)ranges mergeGap:(id)gap
{
  v39 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  gapCopy = gap;
  v23 = gapCopy;
  {
    CMTimeMakeWithSeconds(&[VCPMediaAnalyzer mergeTimeRanges:mergeGap:]::kMergeGap, 1.0, 600);
  }

  v34 = [VCPMediaAnalyzer mergeTimeRanges:mergeGap:]::kMergeGap;
  epoch = qword_1EC431560;
  if (gapCopy)
  {
    [gapCopy floatValue];
    CMTimeMakeWithSeconds(&v29.start, fmaxf(v7, 0.0), 600);
    v34 = *&v29.start.value;
    epoch = v29.start.epoch;
  }

  if ([rangesCopy count] <= 1)
  {
    v8 = rangesCopy;
    array = v8;
    goto LABEL_25;
  }

  v10 = [rangesCopy sortedArrayUsingComparator:&__block_literal_global_1019_0];

  array = [MEMORY[0x1E695DF70] array];
  value = *MEMORY[0x1E6960CA8];
  flags = *(MEMORY[0x1E6960CA8] + 12);
  timescale = *(MEMORY[0x1E6960CA8] + 8);
  v12 = *(MEMORY[0x1E6960CA8] + 16);
  v13 = *(MEMORY[0x1E6960CA8] + 24);
  v24 = *(MEMORY[0x1E6960CA8] + 32);
  v14 = *(MEMORY[0x1E6960CA8] + 40);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v10;
  v15 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = *v31;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v31 != v16)
      {
        objc_enumerationMutation(v8);
      }

      v18 = *(*(&v30 + 1) + 8 * i);
      memset(&v29, 0, sizeof(v29));
      if (v18)
      {
        [v18 CMTimeRangeValue];
      }

      if ((flags & 1) != 0 && (v24 & 0x100000000) != 0 && !v14 && (v13 & 0x8000000000000000) == 0)
      {
        time1.start.value = v13;
        *&time1.start.timescale = v24;
        time1.start.epoch = 0;
        *&time2.start.value = *MEMORY[0x1E6960CC0];
        time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
        if (!CMTimeCompare(&time1.start, &time2.start))
        {
          goto LABEL_20;
        }
      }

      time1.start.value = value;
      time1.start.timescale = timescale;
      time1.start.flags = flags;
      time1.start.epoch = v12;
      time1.duration.value = v13;
      *&time1.duration.timescale = v24;
      time1.duration.epoch = v14;
      CMTimeRangeGetEnd(&v28, &time1);
      *&time1.start.value = *&v29.start.value;
      time1.start.epoch = v29.start.epoch;
      time2.start = v28;
      CMTimeSubtract(&v25.start, &time1.start, &time2.start);
      *&time1.start.value = *&v25.start.value;
      time1.start.epoch = v25.start.epoch;
      *&time2.start.value = v34;
      time2.start.epoch = epoch;
      if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
      {
        time1.start.value = value;
        time1.start.timescale = timescale;
        time1.start.flags = flags;
        time1.start.epoch = v12;
        time1.duration.value = v13;
        *&time1.duration.timescale = v24;
        time1.duration.epoch = v14;
        v19 = [MEMORY[0x1E696B098] valueWithCMTimeRange:&time1];
        [array addObject:v19];

LABEL_20:
        value = v29.start.value;
        flags = v29.start.flags;
        timescale = v29.start.timescale;
        v20 = *&v29.start.epoch;
        v14 = v29.duration.epoch;
        v24 = *&v29.duration.timescale;
        goto LABEL_22;
      }

      time2.start.value = value;
      time2.start.timescale = timescale;
      time2.start.flags = flags;
      time2.start.epoch = v12;
      time2.duration.value = v13;
      *&time2.duration.timescale = v24;
      time2.duration.epoch = v14;
      v25 = v29;
      CMTimeRangeGetUnion(&time1, &time2, &v25);
      value = time1.start.value;
      flags = time1.start.flags;
      timescale = time1.start.timescale;
      v20 = *&time1.start.epoch;
      v24 = *&time1.duration.timescale;
      v14 = time1.duration.epoch;
LABEL_22:
      v13 = *(&v20 + 1);
      v12 = v20;
    }

    v15 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
  }

  while (v15);
LABEL_24:

  v29.start.value = value;
  *&v29.start.timescale = __PAIR64__(flags, timescale);
  v29.start.epoch = v12;
  v29.duration.value = v13;
  *&v29.duration.timescale = v24;
  v29.duration.epoch = v14;
  v21 = [MEMORY[0x1E696B098] valueWithCMTimeRange:&v29];
  [array addObject:v21];

LABEL_25:

  return array;
}

uint64_t __45__VCPMediaAnalyzer_mergeTimeRanges_mergeGap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    [v4 CMTimeRangeValue];
  }

  else
  {
    v11 = 0u;
    memset(time1, 0, sizeof(time1));
  }

  v12 = *time1;
  v13 = *&time1[16];
  if (v5)
  {
    [v5 CMTimeRangeValue];
  }

  else
  {
    v11 = 0u;
    memset(time1, 0, sizeof(time1));
  }

  *&v9.value = *time1;
  v6 = *&time1[16];
  v9.epoch = *&time1[16];
  *time1 = v12;
  *&time1[16] = v13;
  *&time2.value = *&v9.value;
  time2.epoch = v6;
  if (CMTimeCompare(time1, &time2))
  {
    *time1 = v12;
    *&time1[16] = v13;
    time2 = v9;
    if (CMTimeCompare(time1, &time2) < 0)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)loadVideoAssetsFromPhotoLibraryURL:(id)l withAssetIdentifiers:(id)identifiers
{
  v30 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifiersCopy = identifiers;
  v8 = [objc_alloc(MEMORY[0x1E69789B0]) initWithPhotoLibraryURL:lCopy];
  if (identifiersCopy)
  {
    goto LABEL_7;
  }

  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    mad_fetchRequest = [v8 mad_fetchRequest];
    v10 = [mad_fetchRequest fetchAnalysesWithLocalIdentifiers:0 predicate:0];
    identifiersCopy = [v10 allKeys];

LABEL_6:
LABEL_7:
    v12 = [MEMORY[0x1E6978628] vcp_fetchOptionsForLibrary:v8 forTaskID:1];
    v13 = [MEMORY[0x1E696AE18] vcp_moviesPredicate:0];
    [v12 setPredicate:v13];

    v14 = [MEMORY[0x1E6978628] fetchAssetsWithLocalIdentifiers:identifiersCopy options:v12];
    if ([v14 count])
    {
      array = [MEMORY[0x1E695DF70] array];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v17)
      {
        v18 = *v24;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v16);
            }

            [array addObject:{*(*(&v23 + 1) + 8 * i), v23}];
          }

          v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v17);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] No available assets for search", buf, 2u);
      }

      array = 0;
    }

    goto LABEL_21;
  }

  v11 = [(VCPMediaAnalyzer *)self _databaseForPhotoLibrary:v8];
  mad_fetchRequest = v11;
  if (v11)
  {
    identifiersCopy = [v11 queryAssetsAnalyzedSince:0];
    goto LABEL_6;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    photoLibraryURL = [v8 photoLibraryURL];
    path = [photoLibraryURL path];
    *buf = 138412290;
    v29 = path;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] Failed to obtain database for Photo Library (%@)", buf, 0xCu);
  }

  array = 0;
LABEL_21:

  return array;
}

- (id)loadEmbeddingSearchResultWithContext:(id)context forPhotoLibraryURL:(id)l fromAssets:(id)assets withOptions:(id)options
{
  v55 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  lCopy = l;
  assetsCopy = assets;
  optionsCopy = options;
  v34 = contextCopy;
  if (contextCopy && ([contextCopy entities], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    [contextCopy entities];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    obj = v43 = 0u;
    v11 = 0;
    v12 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v12)
    {
      v36 = *v43;
      do
      {
        v13 = 0;
        v35 = v12;
        do
        {
          if (*v43 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v42 + 1) + 8 * v13);
          intValue = [v14 intValue];
          if (intValue == 5)
          {
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v16 = [obj objectForKeyedSubscript:v14];
            v17 = [v16 countByEnumeratingWithState:&v38 objects:v53 count:16];
            if (v17)
            {
              v18 = *v39;
              v19 = v11;
              while (2)
              {
                v20 = 0;
                v11 = v19;
                do
                {
                  if (*v39 != v18)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v38 + 1) + 8 * v20);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    vectors = [v21 vectors];
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                      {
                        v24 = objc_opt_class();
                        v25 = NSStringFromClass(v24);
                        v26 = objc_opt_class();
                        v27 = NSStringFromClass(v26);
                        *buf = 134218498;
                        v47 = 5;
                        v48 = 2112;
                        v49 = v25;
                        v50 = 2112;
                        v51 = v27;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Mismatch data type for query %ld, skip. Expect %@ or %@", buf, 0x20u);
                      }

                      goto LABEL_27;
                    }

                    v52 = v21;
                    vectors = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
                  }

                  v19 = vectors;

                  ++v20;
                  v11 = v19;
                }

                while (v17 != v20);
                v17 = [v16 countByEnumeratingWithState:&v38 objects:v53 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
LABEL_27:
              v19 = v11;
            }

            v11 = v19;
            v12 = v35;
          }

          else if (MediaAnalysisLogLevel() >= 4)
          {
            v23 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v47 = intValue;
              _os_log_impl(&dword_1C9B70000, v23, OS_LOG_TYPE_DEFAULT, "Unsupport query type %ld in search context for ranking", buf, 0xCu);
            }
          }

          ++v13;
        }

        while (v13 != v12);
        v12 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
      }

      while (v12);
    }

    v28 = [(VCPMediaAnalyzer *)self requestSearchResultsForAssets:assetsCopy forPhotoLibraryURL:lCopy withQueryEmbeddings:v11 matchingScoreOnly:1 options:optionsCopy];
  }

  else
  {
    v28 = [(VCPMediaAnalyzer *)self requestSearchResultsForAssets:assetsCopy forPhotoLibraryURL:lCopy withQueryEmbeddings:MEMORY[0x1E695E0F0] matchingScoreOnly:1 options:optionsCopy];
  }

  return v28;
}

- (void)addVideoRankingSignalsToDictionary:(id)dictionary fromPhotoLibraryURL:(id)l amongAssets:(id)assets
{
  v94 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  lCopy = l;
  assetsCopy = assets;
  if (![assetsCopy count] && MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VideoRankingSignals] No assets to search; skipping", buf, 2u);
  }

  v66 = [VCPClientDatabaseManager sharedDatabaseForPhotoLibraryURL:lCopy];
  v70 = MediaAnalysisResultsTypesForAnalysisTypes(128);
  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    firstObject = [assetsCopy firstObject];
    photoLibrary = [firstObject photoLibrary];
    mad_fetchRequest = [photoLibrary mad_fetchRequest];
  }

  else
  {
    mad_fetchRequest = 0;
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = assetsCopy;
  v9 = [obj countByEnumeratingWithState:&v81 objects:v93 count:16];
  if (v9)
  {
    v69 = *v82;
    do
    {
      v10 = 0;
      v71 = v9;
      do
      {
        if (*v82 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v81 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        localIdentifier = [v11 localIdentifier];
        if (+[MADManagedPhotosAsset isMACDReadEnabled])
        {
          [mad_fetchRequest fetchAnalysisWithLocalIdentifier:localIdentifier predicate:0 resultTypes:v70];
        }

        else
        {
          [v66 queryAnalysisForAsset:localIdentifier withTypes:v70];
        }
        v14 = ;
        v15 = v14;
        if (v14)
        {
          vcp_results = [v14 vcp_results];
          v17 = [vcp_results objectForKeyedSubscript:@"InterestingnessResults"];
          v18 = v17 == 0;

          if (v18)
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v92 = localIdentifier;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VideoRankingSignals][%@] Missing video signal interestingness from full analysis results", buf, 0xCu);
            }
          }

          else
          {
            vcp_results2 = [v15 vcp_results];
            v20 = [vcp_results2 objectForKeyedSubscript:@"InterestingnessResults"];

            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            v21 = v20;
            v22 = [v21 countByEnumeratingWithState:&v77 objects:v90 count:16];
            if (v22)
            {
              v23 = *v78;
              v24 = 0.0;
              do
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v78 != v23)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = [*(*(&v77 + 1) + 8 * i) objectForKeyedSubscript:@"quality"];
                  [v26 floatValue];
                  v28 = v27;

                  v24 = v24 + v28;
                }

                v22 = [v21 countByEnumeratingWithState:&v77 objects:v90 count:16];
              }

              while (v22);
            }

            else
            {
              v24 = 0.0;
            }

            v31 = [v21 count];
            if (v31 <= 1)
            {
              v32 = 1;
            }

            else
            {
              v32 = v31;
            }

            v33 = [dictionaryCopy objectForKeyedSubscript:localIdentifier];
            v34 = v33 == 0;

            if (v34)
            {
              v88 = @"InterestingnessScore";
              *&v35 = v24 / v32;
              v37 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
              v89 = v37;
              v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
              [dictionaryCopy setObject:v40 forKey:localIdentifier];
            }

            else
            {
              v36 = [dictionaryCopy objectForKeyedSubscript:localIdentifier];
              v37 = [v36 mutableCopy];

              *&v38 = v24 / v32;
              v39 = [MEMORY[0x1E696AD98] numberWithFloat:v38];
              [v37 setObject:v39 forKeyedSubscript:@"InterestingnessScore"];

              [dictionaryCopy setObject:v37 forKeyedSubscript:localIdentifier];
            }
          }

          vcp_results3 = [v15 vcp_results];
          v42 = [vcp_results3 objectForKeyedSubscript:@"QualityResults"];
          v43 = v42 == 0;

          if (v43)
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v92 = localIdentifier;
              v29 = MEMORY[0x1E69E9C10];
              v30 = "[VideoRankingSignals][%@] Missing video signal quality from full analysis results";
              goto LABEL_52;
            }
          }

          else
          {
            vcp_results4 = [v15 vcp_results];
            v45 = [vcp_results4 objectForKeyedSubscript:@"QualityResults"];

            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v46 = v45;
            v47 = [v46 countByEnumeratingWithState:&v73 objects:v87 count:16];
            if (v47)
            {
              v48 = *v74;
              v49 = 0.0;
              do
              {
                for (j = 0; j != v47; ++j)
                {
                  if (*v74 != v48)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v51 = [*(*(&v73 + 1) + 8 * j) objectForKeyedSubscript:@"quality"];
                  [v51 floatValue];
                  v53 = v52;

                  v49 = v49 + v53;
                }

                v47 = [v46 countByEnumeratingWithState:&v73 objects:v87 count:16];
              }

              while (v47);
            }

            else
            {
              v49 = 0.0;
            }

            v54 = [v46 count];
            if (v54 <= 1)
            {
              v55 = 1;
            }

            else
            {
              v55 = v54;
            }

            v56 = [dictionaryCopy objectForKeyedSubscript:localIdentifier];
            v57 = v56 == 0;

            if (v57)
            {
              v85 = @"QualityScore";
              *&v58 = v49 / v55;
              v60 = [MEMORY[0x1E696AD98] numberWithFloat:v58];
              v86 = v60;
              v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
              [dictionaryCopy setObject:v63 forKey:localIdentifier];
            }

            else
            {
              v59 = [dictionaryCopy objectForKeyedSubscript:localIdentifier];
              v60 = [v59 mutableCopy];

              *&v61 = v49 / v55;
              v62 = [MEMORY[0x1E696AD98] numberWithFloat:v61];
              [v60 setObject:v62 forKeyedSubscript:@"QualityScore"];

              [dictionaryCopy setObject:v60 forKeyedSubscript:localIdentifier];
            }
          }
        }

        else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v92 = localIdentifier;
          v29 = MEMORY[0x1E69E9C10];
          v30 = "[VideoRankingSignals][%@] No analysis results from MAD database, skip fetching";
LABEL_52:
          _os_log_impl(&dword_1C9B70000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 0xCu);
        }

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v10 != v71);
      v9 = [obj countByEnumeratingWithState:&v81 objects:v93 count:16];
    }

    while (v9);
  }
}

- (id)rankAssetsWithContext:(id)context forAssetIdentifiers:(id)identifiers forPhotoLibraryURL:(id)l withOptions:(id)options error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  identifiersCopy = identifiers;
  lCopy = l;
  v33 = identifiersCopy;
  optionsCopy = options;
  if (contextCopy)
  {
    entities = [contextCopy entities];
    if (entities)
    {

LABEL_5:
      if (lCopy)
      {
        systemPhotoLibraryURL = lCopy;
      }

      else
      {
        systemPhotoLibraryURL = [MEMORY[0x1E69789B0] systemPhotoLibraryURL];
      }

      v18 = systemPhotoLibraryURL;
      v19 = [(VCPMediaAnalyzer *)self loadVideoAssetsFromPhotoLibraryURL:systemPhotoLibraryURL withAssetIdentifiers:identifiersCopy];
      v20 = v19;
      if (v19 && [v19 count])
      {
        v21 = [(VCPMediaAnalyzer *)self loadEmbeddingSearchResultWithContext:contextCopy forPhotoLibraryURL:v18 fromAssets:v20 withOptions:optionsCopy];
        v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v23 = [[VideoRanker alloc] initWithCorpus:v21];
        v24 = v23;
        if (v23)
        {
          rankingScores = [(VideoRanker *)v23 rankingScores];
          v26 = [rankingScores mutableCopy];

          v22 = v26;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to initialize BM25 video ranker, allow to skip adding BM25 ranking scores.", buf, 2u);
          }

          if (error)
          {
            v32 = MEMORY[0x1E696ABC0];
            v36 = *MEMORY[0x1E696A578];
            v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to initialize BM25 video ranker."];
            v37 = v31;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
            *error = [v32 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:?];
          }
        }

        [(VCPMediaAnalyzer *)self addVideoRankingSignalsToDictionary:v22 fromPhotoLibraryURL:v18 amongAssets:v20];
        goto LABEL_29;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Empty search in assets fetched for videos.", buf, 2u);
      }

      if (error)
      {
        v27 = MEMORY[0x1E696ABC0];
        v38 = *MEMORY[0x1E696A578];
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Empty search in assets fetched for videos."];
        v39 = v21;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        [v27 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v24];
        *error = v22 = 0;
LABEL_29:

        goto LABEL_30;
      }

      v22 = 0;
LABEL_30:

      goto LABEL_31;
    }
  }

  v16 = [optionsCopy objectForKeyedSubscript:@"SearchQueryString"];

  if (v16)
  {
    goto LABEL_5;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Empty search context and no query string for search ranking.", buf, 2u);
  }

  if (error)
  {
    v28 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Empty search context and no query string for search ranking."];
    v41[0] = v18;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    [v28 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v20];
    *error = v22 = 0;
    goto LABEL_30;
  }

  v22 = 0;
LABEL_31:

  return v22;
}

- (id)prepareContextsQueryEmbedding:(id)embedding
{
  v21 = *MEMORY[0x1E69E9840];
  embeddingCopy = embedding;
  if (self->_textEncoder || (v5 = objc_alloc_init(VCPTextEncoder), textEncoder = self->_textEncoder, self->_textEncoder = v5, textEncoder, self->_textEncoder))
  {
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [embeddingCopy objectForKeyedSubscript:{@"SearchQueryString", 0}];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [(VCPTextEncoder *)self->_textEncoder textEmbeddingForQuery:*(*(&v15 + 1) + 8 * i) useFP16:1];
          [array addObject:v12];
        }

        v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }

    v13 = [embeddingCopy mutableCopy];
    if ([array count])
    {
      [v13 setObject:array forKey:&unk_1F49BE050];
    }

    [v13 removeObjectForKey:@"SearchQueryString"];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to create text encoder", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

@end