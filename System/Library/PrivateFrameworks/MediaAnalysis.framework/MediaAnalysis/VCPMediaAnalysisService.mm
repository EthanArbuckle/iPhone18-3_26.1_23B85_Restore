@interface VCPMediaAnalysisService
+ (BOOL)isEntitled;
+ (id)analysisService;
+ (id)defaultDeferredProcessingTypes;
+ (id)errorWithDescription:(id)description;
+ (id)sharedAnalysisService;
+ (int)queryProgress:(float *)progress forPhotoLibrary:(id)library andTaskID:(unint64_t)d withExtendTimeoutBlock:(id)block;
+ (int)queryProgressDetail:(id *)detail forPhotoLibrary:(id)library andTaskID:(unint64_t)d withExtendTimeoutBlock:(id)block;
+ (int)queryProgressDetail:(id *)detail forPhotoLibraryURL:(id)l andTaskID:(unint64_t)d;
+ (int)queryProgressDetail:(id *)detail forPhotoLibraryURL:(id)l andTaskID:(unint64_t)d withExtendTimeoutBlock:(id)block;
- (BOOL)requestDeferredProcessingTypes:(id)types assets:(id)assets error:(id *)error;
- (VCPMediaAnalysisService)init;
- (id)assetsPendingDeferredProcessingWithPhotoLibraryURL:(id)l error:(id *)error;
- (id)connection;
- (id)requestAnalysisXPCStoreListenerEndpointWithPhotoLibrary:(id)library error:(id *)error;
- (id)requestSystemXPCStoreListenerEndpointWithError:(id *)error;
- (int)downloadVideoEncoderWithCompletionHandler:(id)handler;
- (int)queryAutoCounterOptInStatusForPhotoLibraryURL:(id)l withPersonLocalIdentifiers:(id)identifiers completionHandler:(id)handler;
- (int)requestAnalysisTypes:(unint64_t)types forAssetWithResourceURLs:(id)ls withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestAnalysisTypes:(unint64_t)types forAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestAutoCounterAccuracyCalculationForPhotoLibraryURL:(id)l clusterStateURL:(id)rL groundTruthURL:(id)uRL completionHandler:(id)handler;
- (int)requestAutoCounterAccuracyCalculationForPhotoLibraryURL:(id)l completionHandler:(id)handler;
- (int)requestAutoCounterSIMLValidationForPhotoLibraryURL:(id)l simlGroundTruthURL:(id)rL completionHandler:(id)handler;
- (int)requestBackgroundAnalysisForAssets:(id)assets fromPhotoLibraryWithURL:(id)l realTime:(BOOL)time progessHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestBackgroundAnalysisForAssets:(id)assets realTime:(BOOL)time progessHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestBackgroundProcessingWithTaskID:(unint64_t)d forPhotoLibrary:(id)library progessHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestClusterCacheValidationWithPhotoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestCollectionThemeForAssetsWithLocalIdentifiers:(id)identifiers fromPhotoLibraryWithURL:(id)l withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestCollectionThemeVersionWithOptions:(id)options andCompletionHandler:(id)handler;
- (int)requestDatabaseRestoreFastPassProcessingWithCompletionHandler:(id)handler;
- (int)requestDumpAutoCounterForPhotoLibraryURL:(id)l completionHandler:(id)handler;
- (int)requestFRCForAssetURL:(id)l withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers:(id)identifiers photoLibraryURL:(id)l progessHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestFaceProcessingForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestForceDeferredProcessingWithProgessHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestFullImageOnlyProcessingForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestFullVideoProcessingForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestIdentificationOfFaces:(id)faces withCompletionHandler:(id)handler;
- (int)requestLivePhotoEffectsForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestOCRProcessingForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestOTAMaintenanceWithOptions:(id)options progessHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestOptInAutoCounterForPhotoLibraryURL:(id)l withPersons:(id)persons completionHandler:(id)handler;
- (int)requestPersonPreferenceForPhotoLibraryURL:(id)l completionHandler:(id)handler;
- (int)requestPersonProcessingForPhotoLibraryURL:(id)l options:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestPersonPromoterStatusWithAdvancedFlag:(BOOL)flag photoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestPhotosDeferredProcessingWithCompletionHandler:(id)handler;
- (int)requestPhotosFaceFastPassProcessingForPhotoLibraryURL:(id)l withCompletionHandler:(id)handler;
- (int)requestPhotosSceneFastPassProcessingForPhotoLibraryURL:(id)l withCompletionHandler:(id)handler;
- (int)requestProcessingTypes:(unint64_t)types forAssetsWithLocalIdentifiers:(id)identifiers fromPhotoLibraryWithURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestProcessingWithTaskID:(unint64_t)d forAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestProcessingWithTaskID:(unint64_t)d forPhotoLibrary:(id)library withOptions:(id)options progessHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestProgressReportWithCompletionHandler:(id)handler;
- (int)requestQuickFaceIdentificationForPhotoLibraryURL:(id)l withOptions:(id)options andCompletionHandler:(id)handler;
- (int)requestRebuildPersonsWithLocalIdentifiers:(id)identifiers photoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestRecentsProcessing:(unint64_t)processing photoLibrary:(id)library progressHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestReclusterFacesWithPhotoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestResetFaceClassificationModelForPhotoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestResetFaceClusteringStateWithPhotoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestResetPersons:(id)persons forPhotoLibraryURL:(id)l completionHandler:(id)handler;
- (int)requestResetPetClassificationModelForPhotoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestResetProcessingStatusWithTaskID:(unint64_t)d photoLibrary:(id)library options:(id)options completionHandler:(id)handler;
- (int)requestSceneProcessingForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestSceneprintProcessingForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestStaticStickerScoringForLibrary:(id)library options:(id)options completionHandler:(id)handler;
- (int)requestSuggestedMePersonIdentifierWithContext:(id)context photoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestSuggestedPersonsForPersonWithLocalIdentifier:(id)identifier toBeConfirmedPersonSuggestions:(id)suggestions toBeRejectedPersonSuggestions:(id)personSuggestions photoLibraryURL:(id)l progessHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestUpdateKeyFacesOfPersonsWithLocalIdentifiers:(id)identifiers forceUpdate:(BOOL)update photoLibraryURL:(id)l progessHandler:(id)handler completionHandler:(id)completionHandler;
- (int)requestVIPModelFilepathForPhotoLibraryURL:(id)l forModelType:(unint64_t)type completionHandler:(id)handler;
- (int)requestVideoCaptionForFrames:(id)frames withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestVideoStabilizationForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestVisualSearchProcessingForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)requestWallpaperUpgradeAtURL:(id)l toDestinationURL:(id)rL withOptions:(id)options andCompletionHandler:(id)handler;
- (void)cancelAllRequests;
- (void)cancelBackgroundActivity;
- (void)cancelRequest:(int)request;
- (void)invalidate;
- (void)notifyLibraryAvailableAtURL:(id)l;
- (void)reportProgress:(double)progress forRequest:(int)request;
- (void)requestInProcessMovieCurationAnalysisWithURL:(id)l cancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation VCPMediaAnalysisService

+ (id)analysisService
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (VCPMediaAnalysisService)init
{
  v13.receiver = self;
  v13.super_class = VCPMediaAnalysisService;
  v2 = [(VCPMediaAnalysisService *)&v13 init];
  v3 = v2;
  if (v2)
  {
    connection = v2->_connection;
    v2->_connection = 0;

    v5 = dispatch_queue_create("com.apple.mediaanalysis.service.management", 0);
    managementQueue = v3->_managementQueue;
    v3->_managementQueue = v5;

    v7 = dispatch_queue_create("com.apple.mediaanalysis.service.handler", 0);
    handlerQueue = v3->_handlerQueue;
    v3->_handlerQueue = v7;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    progressBlocks = v3->_progressBlocks;
    v3->_progressBlocks = dictionary;

    v3->_nextRequestID = 1;
    v11 = v3;
  }

  return v3;
}

+ (id)sharedAnalysisService
{
  if (+[VCPMediaAnalysisService sharedAnalysisService]::once != -1)
  {
    +[VCPMediaAnalysisService sharedAnalysisService];
  }

  v3 = +[VCPMediaAnalysisService sharedAnalysisService]::instance;

  return v3;
}

void __48__VCPMediaAnalysisService_sharedAnalysisService__block_invoke()
{
  v0 = objc_alloc_init(VCPMediaAnalysisService);
  v1 = +[VCPMediaAnalysisService sharedAnalysisService]::instance;
  +[VCPMediaAnalysisService sharedAnalysisService]::instance = v0;
}

+ (id)errorWithDescription:(id)description
{
  v9[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v4 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = descriptionCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:@"MediaAnalysisService" code:1 userInfo:v5];

  return v6;
}

- (id)connection
{
  v23[7] = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  if (!connection)
  {
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4A19D30];
    v5 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v23[2] = objc_opt_class();
    v23[3] = objc_opt_class();
    v23[4] = objc_opt_class();
    v23[5] = objc_opt_class();
    v23[6] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:7];
    v7 = [v5 setWithArray:v6];
    [v4 setClasses:v7 forSelector:sel_requestAssetProcessing_withTaskID_forLocalIdentifiers_fromPhotoLibraryWithURL_withOptions_andReply_ argumentIndex:0 ofReply:1];

    v8 = MEMORY[0x1E695DFD8];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v22[2] = objc_opt_class();
    v22[3] = objc_opt_class();
    v22[4] = objc_opt_class();
    v22[5] = objc_opt_class();
    v22[6] = objc_opt_class();
    v22[7] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:8];
    v10 = [v8 setWithArray:v9];
    [v4 setClasses:v10 forSelector:sel_requestURLAssetAnalysis_forAssetWithResourcePaths_withOptions_analysisTypes_sandboxTokens_withReply_ argumentIndex:0 ofReply:1];

    v11 = MEMORY[0x1E695DFD8];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v21[2] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
    v13 = [v11 setWithArray:v12];
    [v4 setClasses:v13 forSelector:sel_queryAssetsPendingDeferredProcessingWithPhotoLibraryURL_andReply_ argumentIndex:0 ofReply:1];

    v14 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.mediaanalysisd.analysis" options:0];
    v15 = self->_connection;
    self->_connection = v14;

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v4];
    v16 = self->_connection;
    v17 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F49C48B0];
    [(NSXPCConnection *)v16 setExportedInterface:v17];

    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_562];
    v18 = self->_connection;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __37__VCPMediaAnalysisService_connection__block_invoke_563;
    v20[3] = &unk_1E834BDC0;
    v20[4] = self;
    [(NSXPCConnection *)v18 setInvalidationHandler:v20];
    [(NSXPCConnection *)self->_connection resume];

    connection = self->_connection;
  }

  return connection;
}

void __37__VCPMediaAnalysisService_connection__block_invoke()
{
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *v0 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Media analysis client XPC connection interrupted", v0, 2u);
  }
}

void __37__VCPMediaAnalysisService_connection__block_invoke_563(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Media analysis client XPC connection invalidated", v4, 2u);
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

- (int)requestAnalysisTypes:(unint64_t)types forAssetWithResourceURLs:(id)ls withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  v61 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v39 = optionsCopy;
  if (lsCopy && ([lsCopy count] == 1 || objc_msgSend(lsCopy, "count") == 2))
  {
    v14 = [optionsCopy objectForKeyedSubscript:@"InProcess"];
    v37 = completionHandlerCopy;
    bOOLValue = [v14 BOOLValue];

    if (bOOLValue)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v59 = 0x2020000000;
      v60 = 0;
      managementQueue = self->_managementQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __122__VCPMediaAnalysisService_requestAnalysisTypes_forAssetWithResourceURLs_withOptions_progressHandler_andCompletionHandler___block_invoke;
      block[3] = &unk_1E834C4B0;
      block[4] = self;
      block[5] = &buf;
      dispatch_sync(managementQueue, block);
      v17 = [VCPFullAnalysisURLProcessingTask taskForURLAsset:lsCopy withOptions:optionsCopy analysisTypes:types progressHandler:0 completionHandler:completionHandlerCopy];
      [v17 run];
      v18 = *(*(&buf + 1) + 24);

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      typesCopy = types;
      array = [MEMORY[0x1E695DF70] array];
      array2 = [MEMORY[0x1E695DF70] array];
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = lsCopy;
      v21 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
      if (v21)
      {
        v22 = *v51;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v51 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v50 + 1) + 8 * i);
            path = [v24 path];
            v26 = path;
            [path UTF8String];
            v27 = sandbox_extension_issue_file();

            if (!v27)
            {
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                path2 = [v24 path];
                LODWORD(buf) = 138412290;
                *(&buf + 4) = path2;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to issue sandbox extension on %@", &buf, 0xCu);
              }

              v32 = MEMORY[0x1E696ABC0];
              v55 = *MEMORY[0x1E696A578];
              v56 = @"Error issuing sandbox extension";
              v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
              v34 = [v32 errorWithDomain:*MEMORY[0x1E696A768] code:1 userInfo:v33];

              (v37)[2](v37, 0, v34);
              v18 = 0;
              goto LABEL_23;
            }

            v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v27];
            [array addObject:v28];

            path3 = [v24 path];
            [array2 addObject:path3];

            free(v27);
          }

          v21 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v59 = 0x2020000000;
      v60 = 0;
      v30 = self->_managementQueue;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __122__VCPMediaAnalysisService_requestAnalysisTypes_forAssetWithResourceURLs_withOptions_progressHandler_andCompletionHandler___block_invoke_569;
      v42[3] = &unk_1E834C5E8;
      p_buf = &buf;
      v42[4] = self;
      v46 = handlerCopy;
      v47 = v37;
      v43 = array2;
      v44 = v39;
      v49 = typesCopy;
      v45 = array;
      dispatch_sync(v30, v42);
      v18 = *(*(&buf + 1) + 24);

      _Block_object_dispose(&buf, 8);
LABEL_23:
    }

    completionHandlerCopy = v37;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] [MediaAnalyzer requestAnalysisTypes] call with invalid resourceURLs", &buf, 2u);
    }

    (*(completionHandlerCopy + 2))(completionHandlerCopy, 0, 0);
    v18 = 0;
  }

  return v18;
}

uint64_t __122__VCPMediaAnalysisService_requestAnalysisTypes_forAssetWithResourceURLs_withOptions_progressHandler_andCompletionHandler___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = v2 + 1;
  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

void __122__VCPMediaAnalysisService_requestAnalysisTypes_forAssetWithResourceURLs_withOptions_progressHandler_andCompletionHandler___block_invoke_569(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 80) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 64))
  {
    v5 = *(a1 + 64);
  }

  else
  {
    v5 = &__block_literal_global_572;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 80) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  v8 = [*(a1 + 32) connection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __122__VCPMediaAnalysisService_requestAnalysisTypes_forAssetWithResourceURLs_withOptions_progressHandler_andCompletionHandler___block_invoke_3;
  v22[3] = &unk_1E834C548;
  v22[4] = *(a1 + 32);
  v18 = *(a1 + 72);
  v9 = v18;
  v23 = v18;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v22];
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  v13 = *(*(v11 + 8) + 24);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __122__VCPMediaAnalysisService_requestAnalysisTypes_forAssetWithResourceURLs_withOptions_progressHandler_andCompletionHandler___block_invoke_3_579;
  v19[3] = &unk_1E834C5C0;
  v17 = *(a1 + 32);
  v21 = v11;
  v19[4] = v17;
  v20 = *(a1 + 72);
  [v10 requestURLAssetAnalysis:v13 forAssetWithResourcePaths:v14 withOptions:v15 analysisTypes:v12 sandboxTokens:v16 withReply:v19];
}

void __122__VCPMediaAnalysisService_requestAnalysisTypes_forAssetWithResourceURLs_withOptions_progressHandler_andCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to background analysis service", buf, 2u);
  }

  NSLog(&cfstr_MediaanalysisE.isa);
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __122__VCPMediaAnalysisService_requestAnalysisTypes_forAssetWithResourceURLs_withOptions_progressHandler_andCompletionHandler___block_invoke_576;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __122__VCPMediaAnalysisService_requestAnalysisTypes_forAssetWithResourceURLs_withOptions_progressHandler_andCompletionHandler___block_invoke_576(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __122__VCPMediaAnalysisService_requestAnalysisTypes_forAssetWithResourceURLs_withOptions_progressHandler_andCompletionHandler___block_invoke_2_577;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __122__VCPMediaAnalysisService_requestAnalysisTypes_forAssetWithResourceURLs_withOptions_progressHandler_andCompletionHandler___block_invoke_3_579(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __122__VCPMediaAnalysisService_requestAnalysisTypes_forAssetWithResourceURLs_withOptions_progressHandler_andCompletionHandler___block_invoke_580;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __122__VCPMediaAnalysisService_requestAnalysisTypes_forAssetWithResourceURLs_withOptions_progressHandler_andCompletionHandler___block_invoke_580(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __122__VCPMediaAnalysisService_requestAnalysisTypes_forAssetWithResourceURLs_withOptions_progressHandler_andCompletionHandler___block_invoke_2_581;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (void)requestInProcessMovieCurationAnalysisWithURL:(id)l cancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler
{
  lCopy = l;
  blockCopy = block;
  completionHandlerCopy = completionHandler;
  v11 = qos_class_self();
  v12 = dispatch_get_global_queue(v11, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __118__VCPMediaAnalysisService_requestInProcessMovieCurationAnalysisWithURL_cancelBlock_progressHandler_completionHandler___block_invoke;
  block[3] = &unk_1E834C660;
  v18 = blockCopy;
  v19 = completionHandlerCopy;
  v17 = lCopy;
  v13 = lCopy;
  v14 = completionHandlerCopy;
  v15 = blockCopy;
  dispatch_async(v12, block);
}

void __118__VCPMediaAnalysisService_requestInProcessMovieCurationAnalysisWithURL_cancelBlock_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] now];
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = &__block_literal_global_585;
  }

  v4 = _Block_copy(v3);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __118__VCPMediaAnalysisService_requestInProcessMovieCurationAnalysisWithURL_cancelBlock_progressHandler_completionHandler___block_invoke_3;
  v12 = &unk_1E834C638;
  v5 = v2;
  v13 = v5;
  v14 = *(a1 + 48);
  v6 = _Block_copy(&v9);
  v15[0] = *(a1 + 32);
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:{1, v9, v10, v11, v12}];
  v8 = [VCPFullAnalysisURLProcessingTask taskForURLAsset:v7 withOptions:0 analysisTypes:0x40000 progressHandler:0 completionHandler:v6];
  [v8 runWithCancelBlock:v4];
}

void __118__VCPMediaAnalysisService_requestInProcessMovieCurationAnalysisWithURL_cancelBlock_progressHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) timeIntervalSinceNow];
  v8 = -v7;
  if (v6)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v22 = v8;
      v23 = 2048;
      v24 = [v6 code];
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MovieCurationAnalysis] Failed after %0.6fs (%ld)", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MovieCurationAnalysis] Finished analyzing after %0.6fs", buf, 0xCu);
    }

    v9 = MEMORY[0x1E695DFD8];
    v20[0] = @"MovieHighlightResults";
    v20[1] = @"MovieHighlightScoreResults";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v11 = [v9 setWithArray:v10];

    v12 = [MEMORY[0x1E695DF90] dictionary];
    v13 = [v5 vcp_results];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __118__VCPMediaAnalysisService_requestInProcessMovieCurationAnalysisWithURL_cancelBlock_progressHandler_completionHandler___block_invoke_586;
    v17[3] = &unk_1E834C610;
    v14 = v11;
    v18 = v14;
    v15 = v12;
    v19 = v15;
    [v13 enumerateKeysAndObjectsUsingBlock:v17];
    (*(*(a1 + 40) + 16))(*(a1 + 40), v15, 0, v16);
  }
}

void __118__VCPMediaAnalysisService_requestInProcessMovieCurationAnalysisWithURL_cancelBlock_progressHandler_completionHandler___block_invoke_586(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) containsObject:v5])
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MovieCurationAnalysis] Collecting results for %@", &v7, 0xCu);
    }

    [*(a1 + 40) setObject:v6 forKeyedSubscript:v5];
  }
}

- (int)requestAnalysisTypes:(unint64_t)types forAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  v66 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v44 = handlerCopy;
  v45 = completionHandlerCopy;
  v15 = [optionsCopy objectForKeyedSubscript:@"InProcess"];
  if ([v15 BOOLValue])
  {

LABEL_7:
    *&buf = 0;
    *(&buf + 1) = &buf;
    v64 = 0x2020000000;
    v65 = 0;
    managementQueue = self->_managementQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __107__VCPMediaAnalysisService_requestAnalysisTypes_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke;
    block[3] = &unk_1E834C4B0;
    block[4] = self;
    block[5] = &buf;
    dispatch_sync(managementQueue, block);
    v24 = [VCPFullAnalysisAssetProcessingTask taskWithAsset:assetsCopy andAnalysisTypes:types andOptions:optionsCopy andProgressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];
    [v24 run];
    v25 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
    goto LABEL_26;
  }

  v16 = [optionsCopy objectForKeyedSubscript:@"AllowOnDemand"];
  bOOLValue = [v16 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    goto LABEL_7;
  }

  v18 = [optionsCopy objectForKeyedSubscript:@"OutputPath"];

  if (v18)
  {
    v19 = [optionsCopy objectForKeyedSubscript:@"OutputPath"];
    [v19 UTF8String];
    v20 = sandbox_extension_issue_file();
    if (!v20)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v19;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to issue sandbox extension on %@", &buf, 0xCu);
      }

      v38 = MEMORY[0x1E696ABC0];
      v61 = *MEMORY[0x1E696A578];
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MediaAnalysis] Error issuing sandbox extension"];
      v62 = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v41 = [v38 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v40];

      (*(completionHandlerCopy + 2))(completionHandlerCopy, 0, v41);
      v25 = 0;
      goto LABEL_26;
    }

    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v20];
    free(v20);
    v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:optionsCopy];
    [v22 setValue:v21 forKey:@"OutputPathSandboxTokenKey"];
  }

  else
  {
    v22 = optionsCopy;
  }

  v26 = [MEMORY[0x1E695DFA8] set];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v27 = assetsCopy;
  v43 = v22;
  photoLibrary2 = 0;
  v29 = [v27 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v29)
  {
    v30 = *v56;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v56 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v55 + 1) + 8 * i);
        if (photoLibrary2)
        {
          photoLibrary = [*(*(&v55 + 1) + 8 * i) photoLibrary];
          v34 = photoLibrary == photoLibrary2;

          if (!v34)
          {
            v37 = [objc_opt_class() errorWithDescription:@"Assets from multiple libraries not supported"];
            (v45)[2](v45, 0, v37);

            v25 = 0;
            goto LABEL_21;
          }
        }

        else
        {
          photoLibrary2 = [*(*(&v55 + 1) + 8 * i) photoLibrary];
        }

        localIdentifier = [v32 localIdentifier];
        [v26 addObject:localIdentifier];
      }

      v29 = [v27 countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v29);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v64 = 0x2020000000;
  v65 = 0;
  v36 = self->_managementQueue;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __107__VCPMediaAnalysisService_requestAnalysisTypes_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_596;
  v47[3] = &unk_1E834C5E8;
  p_buf = &buf;
  v47[4] = self;
  v51 = v44;
  v52 = v45;
  v48 = v26;
  photoLibrary2 = photoLibrary2;
  v49 = photoLibrary2;
  v50 = v43;
  typesCopy = types;
  dispatch_sync(v36, v47);
  v25 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
LABEL_21:

  optionsCopy = v43;
LABEL_26:

  return v25;
}

uint64_t __107__VCPMediaAnalysisService_requestAnalysisTypes_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = v2 + 1;
  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

void __107__VCPMediaAnalysisService_requestAnalysisTypes_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_596(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 80) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 64))
  {
    v5 = *(a1 + 64);
  }

  else
  {
    v5 = &__block_literal_global_598;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 80) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  v8 = [*(a1 + 32) connection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __107__VCPMediaAnalysisService_requestAnalysisTypes_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_3;
  v21[3] = &unk_1E834C548;
  v21[4] = *(a1 + 32);
  v17 = *(a1 + 72);
  v9 = v17;
  v22 = v17;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v21];
  v11 = *(*(*(a1 + 80) + 8) + 24);
  v12 = [*(a1 + 40) allObjects];
  v13 = [*(a1 + 48) photoLibraryURL];
  v14 = *(a1 + 56);
  v15 = *(a1 + 88);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __107__VCPMediaAnalysisService_requestAnalysisTypes_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_3_601;
  v19[3] = &unk_1E834C5C0;
  v19[4] = *(a1 + 32);
  v18 = *(a1 + 72);
  v16 = v18;
  v20 = v18;
  [v10 requestAssetAnalysis:v11 forLocalIdentifiers:v12 fromPhotoLibraryWithURL:v13 withOptions:v14 analysisTypes:v15 withReply:v19];
}

void __107__VCPMediaAnalysisService_requestAnalysisTypes_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to background analysis service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__VCPMediaAnalysisService_requestAnalysisTypes_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_599;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __107__VCPMediaAnalysisService_requestAnalysisTypes_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_599(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __107__VCPMediaAnalysisService_requestAnalysisTypes_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_2_600;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __107__VCPMediaAnalysisService_requestAnalysisTypes_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_3_601(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__VCPMediaAnalysisService_requestAnalysisTypes_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_602;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __107__VCPMediaAnalysisService_requestAnalysisTypes_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_602(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__VCPMediaAnalysisService_requestAnalysisTypes_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_2_603;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestBackgroundAnalysisForAssets:(id)assets fromPhotoLibraryWithURL:(id)l realTime:(BOOL)time progessHandler:(id)handler completionHandler:(id)completionHandler
{
  assetsCopy = assets;
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (assetsCopy && [assetsCopy count])
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    managementQueue = self->_managementQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __128__VCPMediaAnalysisService_requestBackgroundAnalysisForAssets_fromPhotoLibraryWithURL_realTime_progessHandler_completionHandler___block_invoke;
    block[3] = &unk_1E834C688;
    v24 = &v26;
    block[4] = self;
    v22 = handlerCopy;
    v23 = completionHandlerCopy;
    v20 = lCopy;
    v21 = assetsCopy;
    timeCopy = time;
    dispatch_sync(managementQueue, block);
    v17 = *(v27 + 6);

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    (*(completionHandlerCopy + 2))(completionHandlerCopy, 0, 0);
    v17 = 0;
  }

  return v17;
}

void __128__VCPMediaAnalysisService_requestBackgroundAnalysisForAssets_fromPhotoLibraryWithURL_realTime_progessHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 72) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 56))
  {
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = &__block_literal_global_605;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 72) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  v8 = [*(a1 + 32) connection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __128__VCPMediaAnalysisService_requestBackgroundAnalysisForAssets_fromPhotoLibraryWithURL_realTime_progessHandler_completionHandler___block_invoke_3;
  v22[3] = &unk_1E834C548;
  v22[4] = *(a1 + 32);
  v18 = *(a1 + 64);
  v9 = v18;
  v23 = v18;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v22];
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(*(v12 + 8) + 24);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 80);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __128__VCPMediaAnalysisService_requestBackgroundAnalysisForAssets_fromPhotoLibraryWithURL_realTime_progessHandler_completionHandler___block_invoke_3_608;
  v19[3] = &unk_1E834C5C0;
  v17 = *(a1 + 32);
  v21 = v12;
  v19[4] = v17;
  v20 = v11;
  [v10 requestAssetAnalysis:v13 forPhotoLibraryURL:v14 withLocalIdentifiers:v15 realTime:v16 withReply:v19];
}

void __128__VCPMediaAnalysisService_requestBackgroundAnalysisForAssets_fromPhotoLibraryWithURL_realTime_progessHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to background analysis service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __128__VCPMediaAnalysisService_requestBackgroundAnalysisForAssets_fromPhotoLibraryWithURL_realTime_progessHandler_completionHandler___block_invoke_606;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __128__VCPMediaAnalysisService_requestBackgroundAnalysisForAssets_fromPhotoLibraryWithURL_realTime_progessHandler_completionHandler___block_invoke_606(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __128__VCPMediaAnalysisService_requestBackgroundAnalysisForAssets_fromPhotoLibraryWithURL_realTime_progessHandler_completionHandler___block_invoke_2_607;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __128__VCPMediaAnalysisService_requestBackgroundAnalysisForAssets_fromPhotoLibraryWithURL_realTime_progessHandler_completionHandler___block_invoke_3_608(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __128__VCPMediaAnalysisService_requestBackgroundAnalysisForAssets_fromPhotoLibraryWithURL_realTime_progessHandler_completionHandler___block_invoke_609;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __128__VCPMediaAnalysisService_requestBackgroundAnalysisForAssets_fromPhotoLibraryWithURL_realTime_progessHandler_completionHandler___block_invoke_609(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __128__VCPMediaAnalysisService_requestBackgroundAnalysisForAssets_fromPhotoLibraryWithURL_realTime_progessHandler_completionHandler___block_invoke_2_610;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestBackgroundAnalysisForAssets:(id)assets realTime:(BOOL)time progessHandler:(id)handler completionHandler:(id)completionHandler
{
  timeCopy = time;
  assetsCopy = assets;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  vcp_defaultURL = [MEMORY[0x1E69789B0] vcp_defaultURL];
  LODWORD(timeCopy) = [(VCPMediaAnalysisService *)self requestBackgroundAnalysisForAssets:assetsCopy fromPhotoLibraryWithURL:vcp_defaultURL realTime:timeCopy progessHandler:handlerCopy completionHandler:completionHandlerCopy];

  return timeCopy;
}

- (int)requestProcessingWithTaskID:(unint64_t)d forPhotoLibrary:(id)library withOptions:(id)options progessHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  libraryCopy = library;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__VCPMediaAnalysisService_requestProcessingWithTaskID_forPhotoLibrary_withOptions_progessHandler_andCompletionHandler___block_invoke;
  block[3] = &unk_1E834C6D8;
  v26 = completionHandlerCopy;
  v27 = &v29;
  dCopy = d;
  block[4] = self;
  v23 = libraryCopy;
  v24 = optionsCopy;
  v25 = handlerCopy;
  v17 = optionsCopy;
  v18 = libraryCopy;
  v19 = completionHandlerCopy;
  v20 = handlerCopy;
  dispatch_sync(managementQueue, block);
  LODWORD(d) = *(v30 + 6);

  _Block_object_dispose(&v29, 8);
  return d;
}

void __119__VCPMediaAnalysisService_requestProcessingWithTaskID_forPhotoLibrary_withOptions_progessHandler_andCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 72) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 56))
  {
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = &__block_literal_global_613;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 72) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  v8 = [*(a1 + 32) connection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __119__VCPMediaAnalysisService_requestProcessingWithTaskID_forPhotoLibrary_withOptions_progessHandler_andCompletionHandler___block_invoke_3;
  v20[3] = &unk_1E834C548;
  v20[4] = *(a1 + 32);
  v16 = *(a1 + 64);
  v9 = v16;
  v21 = v16;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v20];
  v11 = *(a1 + 80);
  v12 = *(*(*(a1 + 72) + 8) + 24);
  v13 = [*(a1 + 40) photoLibraryURL];
  v14 = *(a1 + 48);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __119__VCPMediaAnalysisService_requestProcessingWithTaskID_forPhotoLibrary_withOptions_progessHandler_andCompletionHandler___block_invoke_3_616;
  v18[3] = &unk_1E834C6B0;
  v18[4] = *(a1 + 32);
  v17 = *(a1 + 64);
  v15 = v17;
  v19 = v17;
  [v10 requestLibraryProcessing:v12 withTaskID:v11 forPhotoLibraryURL:v13 withOptions:v14 andReply:v18];
}

void __119__VCPMediaAnalysisService_requestProcessingWithTaskID_forPhotoLibrary_withOptions_progessHandler_andCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to Photos background analysis service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__VCPMediaAnalysisService_requestProcessingWithTaskID_forPhotoLibrary_withOptions_progessHandler_andCompletionHandler___block_invoke_614;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __119__VCPMediaAnalysisService_requestProcessingWithTaskID_forPhotoLibrary_withOptions_progessHandler_andCompletionHandler___block_invoke_614(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __119__VCPMediaAnalysisService_requestProcessingWithTaskID_forPhotoLibrary_withOptions_progessHandler_andCompletionHandler___block_invoke_2_615;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __119__VCPMediaAnalysisService_requestProcessingWithTaskID_forPhotoLibrary_withOptions_progessHandler_andCompletionHandler___block_invoke_3_616(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v14 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request %d has completed", buf, 8u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__VCPMediaAnalysisService_requestProcessingWithTaskID_forPhotoLibrary_withOptions_progessHandler_andCompletionHandler___block_invoke_617;
  block[3] = &unk_1E834C520;
  block[4] = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v11 = v3;
  v8 = v3;
  dispatch_async(v6, block);
}

void __119__VCPMediaAnalysisService_requestProcessingWithTaskID_forPhotoLibrary_withOptions_progessHandler_andCompletionHandler___block_invoke_617(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __119__VCPMediaAnalysisService_requestProcessingWithTaskID_forPhotoLibrary_withOptions_progessHandler_andCompletionHandler___block_invoke_2_618;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

- (int)requestResetProcessingStatusWithTaskID:(unint64_t)d photoLibrary:(id)library options:(id)options completionHandler:(id)handler
{
  libraryCopy = library;
  optionsCopy = options;
  handlerCopy = handler;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  managementQueue = self->_managementQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __105__VCPMediaAnalysisService_requestResetProcessingStatusWithTaskID_photoLibrary_options_completionHandler___block_invoke;
  v18[3] = &unk_1E834C728;
  v22 = &v24;
  dCopy = d;
  v18[4] = self;
  v19 = libraryCopy;
  v20 = optionsCopy;
  v21 = handlerCopy;
  v14 = optionsCopy;
  v15 = libraryCopy;
  v16 = handlerCopy;
  dispatch_sync(managementQueue, v18);
  LODWORD(d) = *(v25 + 6);

  _Block_object_dispose(&v24, 8);
  return d;
}

void __105__VCPMediaAnalysisService_requestResetProcessingStatusWithTaskID_photoLibrary_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 64) + 8) + 24) = v3;
  v4 = [*(a1 + 32) connection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __105__VCPMediaAnalysisService_requestResetProcessingStatusWithTaskID_photoLibrary_options_completionHandler___block_invoke_2;
  v16[3] = &unk_1E834C548;
  v16[4] = *(a1 + 32);
  v12 = *(a1 + 56);
  v5 = v12;
  v17 = v12;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v16];
  v7 = *(a1 + 72);
  v8 = *(*(*(a1 + 64) + 8) + 24);
  v9 = [*(a1 + 40) photoLibraryURL];
  v10 = *(a1 + 48);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __105__VCPMediaAnalysisService_requestResetProcessingStatusWithTaskID_photoLibrary_options_completionHandler___block_invoke_3;
  v14[3] = &unk_1E834C6B0;
  v14[4] = *(a1 + 32);
  v13 = *(a1 + 56);
  v11 = v13;
  v15 = v13;
  [v6 requestResetProcessingStatus:v8 taskID:v7 photoLibraryURL:v9 options:v10 reply:v14];
}

void __105__VCPMediaAnalysisService_requestResetProcessingStatusWithTaskID_photoLibrary_options_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to reset processing status %@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__VCPMediaAnalysisService_requestResetProcessingStatusWithTaskID_photoLibrary_options_completionHandler___block_invoke_619;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __105__VCPMediaAnalysisService_requestResetProcessingStatusWithTaskID_photoLibrary_options_completionHandler___block_invoke_619(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __105__VCPMediaAnalysisService_requestResetProcessingStatusWithTaskID_photoLibrary_options_completionHandler___block_invoke_2_620;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __105__VCPMediaAnalysisService_requestResetProcessingStatusWithTaskID_photoLibrary_options_completionHandler___block_invoke_3(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = *(*(a1[6] + 8) + 24);
    *buf = 67109120;
    v13 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request %d has completed", buf, 8u);
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = *(v6 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__VCPMediaAnalysisService_requestResetProcessingStatusWithTaskID_photoLibrary_options_completionHandler___block_invoke_621;
  block[3] = &unk_1E834C700;
  block[4] = v6;
  v10 = v3;
  v11 = v5;
  v8 = v3;
  dispatch_async(v7, block);
}

void __105__VCPMediaAnalysisService_requestResetProcessingStatusWithTaskID_photoLibrary_options_completionHandler___block_invoke_621(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __105__VCPMediaAnalysisService_requestResetProcessingStatusWithTaskID_photoLibrary_options_completionHandler___block_invoke_2_622;
  v3[3] = &unk_1E834C4F8;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);
}

- (int)requestBackgroundProcessingWithTaskID:(unint64_t)d forPhotoLibrary:(id)library progessHandler:(id)handler completionHandler:(id)completionHandler
{
  v17 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (d <= 7 && ((1 << d) & 0x8E) != 0)
  {
    v13 = [(VCPMediaAnalysisService *)self requestProcessingWithTaskID:d forPhotoLibrary:libraryCopy withOptions:0 progessHandler:handlerCopy andCompletionHandler:completionHandlerCopy];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v15 = 134217984;
      dCopy = d;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Unsupported task %lu", &v15, 0xCu);
    }

    v13 = -1;
  }

  return v13;
}

- (int)requestVideoCaptionForFrames:(id)frames withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  framesCopy = frames;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  managementQueue = self->_managementQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __105__VCPMediaAnalysisService_requestVideoCaptionForFrames_withOptions_progressHandler_andCompletionHandler___block_invoke;
  v20[3] = &unk_1E834C750;
  v24 = completionHandlerCopy;
  v25 = &v26;
  v20[4] = self;
  v21 = framesCopy;
  v22 = optionsCopy;
  v23 = handlerCopy;
  v15 = optionsCopy;
  v16 = framesCopy;
  v17 = completionHandlerCopy;
  v18 = handlerCopy;
  dispatch_sync(managementQueue, v20);
  LODWORD(self) = *(v27 + 6);

  _Block_object_dispose(&v26, 8);
  return self;
}

void __105__VCPMediaAnalysisService_requestVideoCaptionForFrames_withOptions_progressHandler_andCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 72) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 56))
  {
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = &__block_literal_global_624;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 72) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  v8 = [*(a1 + 32) connection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __105__VCPMediaAnalysisService_requestVideoCaptionForFrames_withOptions_progressHandler_andCompletionHandler___block_invoke_3;
  v21[3] = &unk_1E834C548;
  v21[4] = *(a1 + 32);
  v17 = *(a1 + 64);
  v9 = v17;
  v22 = v17;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v21];
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(*(v12 + 8) + 24);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __105__VCPMediaAnalysisService_requestVideoCaptionForFrames_withOptions_progressHandler_andCompletionHandler___block_invoke_3_627;
  v18[3] = &unk_1E834C5C0;
  v16 = *(a1 + 32);
  v20 = v12;
  v18[4] = v16;
  v19 = v11;
  [v10 requestVideoFramesProcessing:v13 withTaskID:15 frames:v14 options:v15 andReply:v18];
}

void __105__VCPMediaAnalysisService_requestVideoCaptionForFrames_withOptions_progressHandler_andCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to Photos background analysis service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__VCPMediaAnalysisService_requestVideoCaptionForFrames_withOptions_progressHandler_andCompletionHandler___block_invoke_625;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __105__VCPMediaAnalysisService_requestVideoCaptionForFrames_withOptions_progressHandler_andCompletionHandler___block_invoke_625(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __105__VCPMediaAnalysisService_requestVideoCaptionForFrames_withOptions_progressHandler_andCompletionHandler___block_invoke_2_626;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __105__VCPMediaAnalysisService_requestVideoCaptionForFrames_withOptions_progressHandler_andCompletionHandler___block_invoke_3_627(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Asset processing request %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__VCPMediaAnalysisService_requestVideoCaptionForFrames_withOptions_progressHandler_andCompletionHandler___block_invoke_628;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __105__VCPMediaAnalysisService_requestVideoCaptionForFrames_withOptions_progressHandler_andCompletionHandler___block_invoke_628(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__VCPMediaAnalysisService_requestVideoCaptionForFrames_withOptions_progressHandler_andCompletionHandler___block_invoke_2_629;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestRecentsProcessing:(unint64_t)processing photoLibrary:(id)library progressHandler:(id)handler completionHandler:(id)completionHandler
{
  libraryCopy = library;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  managementQueue = self->_managementQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __99__VCPMediaAnalysisService_requestRecentsProcessing_photoLibrary_progressHandler_completionHandler___block_invoke;
  v18[3] = &unk_1E834C778;
  v20 = handlerCopy;
  v21 = completionHandlerCopy;
  v22 = &v24;
  processingCopy = processing;
  v18[4] = self;
  v19 = libraryCopy;
  v14 = libraryCopy;
  v15 = completionHandlerCopy;
  v16 = handlerCopy;
  dispatch_sync(managementQueue, v18);
  LODWORD(self) = *(v25 + 6);

  _Block_object_dispose(&v24, 8);
  return self;
}

void __99__VCPMediaAnalysisService_requestRecentsProcessing_photoLibrary_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 64) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 48))
  {
    v5 = *(a1 + 48);
  }

  else
  {
    v5 = &__block_literal_global_631;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  v8 = [*(a1 + 32) connection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __99__VCPMediaAnalysisService_requestRecentsProcessing_photoLibrary_progressHandler_completionHandler___block_invoke_3;
  v19[3] = &unk_1E834C548;
  v19[4] = *(a1 + 32);
  v15 = *(a1 + 56);
  v9 = v15;
  v20 = v15;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v19];
  v11 = *(a1 + 72);
  v12 = *(*(*(a1 + 64) + 8) + 24);
  v13 = [*(a1 + 40) photoLibraryURL];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __99__VCPMediaAnalysisService_requestRecentsProcessing_photoLibrary_progressHandler_completionHandler___block_invoke_3_634;
  v17[3] = &unk_1E834C6B0;
  v17[4] = *(a1 + 32);
  v16 = *(a1 + 56);
  v14 = v16;
  v18 = v16;
  [v10 requestRecentsProcessing:v12 withTaskID:v11 photoLibraryWithURL:v13 reply:v17];
}

void __99__VCPMediaAnalysisService_requestRecentsProcessing_photoLibrary_progressHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to Photos background analysis service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__VCPMediaAnalysisService_requestRecentsProcessing_photoLibrary_progressHandler_completionHandler___block_invoke_632;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __99__VCPMediaAnalysisService_requestRecentsProcessing_photoLibrary_progressHandler_completionHandler___block_invoke_632(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __99__VCPMediaAnalysisService_requestRecentsProcessing_photoLibrary_progressHandler_completionHandler___block_invoke_2_633;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __99__VCPMediaAnalysisService_requestRecentsProcessing_photoLibrary_progressHandler_completionHandler___block_invoke_3_634(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v14 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Asset processing request %d has completed", buf, 8u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__VCPMediaAnalysisService_requestRecentsProcessing_photoLibrary_progressHandler_completionHandler___block_invoke_635;
  block[3] = &unk_1E834C520;
  block[4] = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v11 = v3;
  v8 = v3;
  dispatch_async(v6, block);
}

void __99__VCPMediaAnalysisService_requestRecentsProcessing_photoLibrary_progressHandler_completionHandler___block_invoke_635(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __99__VCPMediaAnalysisService_requestRecentsProcessing_photoLibrary_progressHandler_completionHandler___block_invoke_2_636;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

- (int)requestProcessingWithTaskID:(unint64_t)d forAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  v48 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v14 = [MEMORY[0x1E695DFA8] set];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v15 = assetsCopy;
  v16 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
  dCopy = d;
  photoLibrary2 = 0;
  if (v16)
  {
    v18 = *v44;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v44 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v43 + 1) + 8 * i);
        if (photoLibrary2)
        {
          photoLibrary = [*(*(&v43 + 1) + 8 * i) photoLibrary];
          v22 = photoLibrary == photoLibrary2;

          if (!v22)
          {
            v25 = [objc_opt_class() errorWithDescription:@"Assets from multiple libraries not supported"];
            completionHandlerCopy[2](completionHandlerCopy, 0, v25);

            v26 = 0;
            goto LABEL_13;
          }
        }

        else
        {
          photoLibrary2 = [*(*(&v43 + 1) + 8 * i) photoLibrary];
        }

        localIdentifier = [v20 localIdentifier];
        [v14 addObject:localIdentifier];
      }

      v16 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v16);
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__VCPMediaAnalysisService_requestProcessingWithTaskID_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke;
  block[3] = &unk_1E834C5E8;
  v37 = &v39;
  block[4] = self;
  v35 = handlerCopy;
  v36 = completionHandlerCopy;
  v38 = dCopy;
  v32 = v14;
  photoLibrary2 = photoLibrary2;
  v33 = photoLibrary2;
  v34 = optionsCopy;
  dispatch_sync(managementQueue, block);
  v26 = *(v40 + 6);

  _Block_object_dispose(&v39, 8);
LABEL_13:

  return v26;
}

void __114__VCPMediaAnalysisService_requestProcessingWithTaskID_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 80) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 64))
  {
    v5 = *(a1 + 64);
  }

  else
  {
    v5 = &__block_literal_global_638;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 80) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  v8 = [*(a1 + 32) connection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __114__VCPMediaAnalysisService_requestProcessingWithTaskID_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_3;
  v21[3] = &unk_1E834C548;
  v21[4] = *(a1 + 32);
  v17 = *(a1 + 72);
  v9 = v17;
  v22 = v17;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v21];
  v11 = *(a1 + 88);
  v12 = *(*(*(a1 + 80) + 8) + 24);
  v13 = [*(a1 + 40) allObjects];
  v14 = [*(a1 + 48) photoLibraryURL];
  v15 = *(a1 + 56);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __114__VCPMediaAnalysisService_requestProcessingWithTaskID_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_3_641;
  v19[3] = &unk_1E834C5C0;
  v19[4] = *(a1 + 32);
  v18 = *(a1 + 72);
  v16 = v18;
  v20 = v18;
  [v10 requestAssetProcessing:v12 withTaskID:v11 forLocalIdentifiers:v13 fromPhotoLibraryWithURL:v14 withOptions:v15 andReply:v19];
}

void __114__VCPMediaAnalysisService_requestProcessingWithTaskID_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to Photos background analysis service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__VCPMediaAnalysisService_requestProcessingWithTaskID_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_639;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __114__VCPMediaAnalysisService_requestProcessingWithTaskID_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_639(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __114__VCPMediaAnalysisService_requestProcessingWithTaskID_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_2_640;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __114__VCPMediaAnalysisService_requestProcessingWithTaskID_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_3_641(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Asset processing request %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__VCPMediaAnalysisService_requestProcessingWithTaskID_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_642;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __114__VCPMediaAnalysisService_requestProcessingWithTaskID_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_642(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__VCPMediaAnalysisService_requestProcessingWithTaskID_forAssets_withOptions_progressHandler_andCompletionHandler___block_invoke_2_643;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestLivePhotoEffectsForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __109__VCPMediaAnalysisService_requestLivePhotoEffectsForAssets_withOptions_progressHandler_andCompletionHandler___block_invoke;
  v13[3] = &unk_1E834C7A0;
  v14 = completionHandlerCopy;
  v11 = completionHandlerCopy;
  LODWORD(handler) = [(VCPMediaAnalysisService *)self requestProcessingWithTaskID:4 forAssets:assets withOptions:options progressHandler:handler andCompletionHandler:v13];

  return handler;
}

- (int)requestSceneProcessingForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __108__VCPMediaAnalysisService_requestSceneProcessingForAssets_withOptions_progressHandler_andCompletionHandler___block_invoke;
  v13[3] = &unk_1E834C7A0;
  v14 = completionHandlerCopy;
  v11 = completionHandlerCopy;
  LODWORD(handler) = [(VCPMediaAnalysisService *)self requestProcessingWithTaskID:2 forAssets:assets withOptions:options progressHandler:handler andCompletionHandler:v13];

  return handler;
}

- (int)requestFaceProcessingForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __107__VCPMediaAnalysisService_requestFaceProcessingForAssets_withOptions_progressHandler_andCompletionHandler___block_invoke;
  v13[3] = &unk_1E834C7A0;
  v14 = completionHandlerCopy;
  v11 = completionHandlerCopy;
  LODWORD(handler) = [(VCPMediaAnalysisService *)self requestProcessingWithTaskID:3 forAssets:assets withOptions:options progressHandler:handler andCompletionHandler:v13];

  return handler;
}

- (int)requestCollectionThemeForAssetsWithLocalIdentifiers:(id)identifiers fromPhotoLibraryWithURL:(id)l withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  identifiersCopy = identifiers;
  lCopy = l;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __152__VCPMediaAnalysisService_requestCollectionThemeForAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_withOptions_progressHandler_andCompletionHandler___block_invoke;
  block[3] = &unk_1E834C7C8;
  v29 = completionHandlerCopy;
  v30 = &v31;
  v27 = optionsCopy;
  v28 = handlerCopy;
  block[4] = self;
  v25 = identifiersCopy;
  v26 = lCopy;
  v18 = optionsCopy;
  v19 = lCopy;
  v20 = identifiersCopy;
  v21 = completionHandlerCopy;
  v22 = handlerCopy;
  dispatch_sync(managementQueue, block);
  LODWORD(self) = *(v32 + 6);

  _Block_object_dispose(&v31, 8);
  return self;
}

void __152__VCPMediaAnalysisService_requestCollectionThemeForAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_withOptions_progressHandler_andCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 80) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 64))
  {
    v5 = *(a1 + 64);
  }

  else
  {
    v5 = &__block_literal_global_645;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 80) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  v8 = [*(a1 + 32) connection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __152__VCPMediaAnalysisService_requestCollectionThemeForAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_withOptions_progressHandler_andCompletionHandler___block_invoke_3;
  v22[3] = &unk_1E834C548;
  v22[4] = *(a1 + 32);
  v18 = *(a1 + 72);
  v9 = v18;
  v23 = v18;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v22];
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(*(v12 + 8) + 24);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __152__VCPMediaAnalysisService_requestCollectionThemeForAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_withOptions_progressHandler_andCompletionHandler___block_invoke_3_648;
  v19[3] = &unk_1E834C5C0;
  v17 = *(a1 + 32);
  v21 = v12;
  v19[4] = v17;
  v20 = v11;
  [v10 requestCollectionTheme:v13 forLocalIdentifiers:v14 fromPhotoLibraryWithURL:v15 withOptions:v16 andReply:v19];
}

void __152__VCPMediaAnalysisService_requestCollectionThemeForAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_withOptions_progressHandler_andCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to Photos background analysis service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __152__VCPMediaAnalysisService_requestCollectionThemeForAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_withOptions_progressHandler_andCompletionHandler___block_invoke_646;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __152__VCPMediaAnalysisService_requestCollectionThemeForAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_withOptions_progressHandler_andCompletionHandler___block_invoke_646(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __152__VCPMediaAnalysisService_requestCollectionThemeForAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_withOptions_progressHandler_andCompletionHandler___block_invoke_2_647;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __152__VCPMediaAnalysisService_requestCollectionThemeForAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_withOptions_progressHandler_andCompletionHandler___block_invoke_3_648(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Collection theme processing request %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __152__VCPMediaAnalysisService_requestCollectionThemeForAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_withOptions_progressHandler_andCompletionHandler___block_invoke_649;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __152__VCPMediaAnalysisService_requestCollectionThemeForAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_withOptions_progressHandler_andCompletionHandler___block_invoke_649(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __152__VCPMediaAnalysisService_requestCollectionThemeForAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_withOptions_progressHandler_andCompletionHandler___block_invoke_2_650;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestCollectionThemeVersionWithOptions:(id)options andCompletionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  managementQueue = self->_managementQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__VCPMediaAnalysisService_requestCollectionThemeVersionWithOptions_andCompletionHandler___block_invoke;
  v12[3] = &unk_1E834C840;
  v14 = handlerCopy;
  v15 = &v16;
  v12[4] = self;
  v13 = optionsCopy;
  v9 = optionsCopy;
  v10 = handlerCopy;
  dispatch_sync(managementQueue, v12);
  LODWORD(optionsCopy) = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  return optionsCopy;
}

void __89__VCPMediaAnalysisService_requestCollectionThemeVersionWithOptions_andCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 56) + 8) + 24) = v3;
  v4 = [*(a1 + 32) connection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__VCPMediaAnalysisService_requestCollectionThemeVersionWithOptions_andCompletionHandler___block_invoke_2;
  v16[3] = &unk_1E834C548;
  v16[4] = *(a1 + 32);
  v12 = *(a1 + 48);
  v5 = v12;
  v17 = v12;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v16];
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(*(v8 + 8) + 24);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__VCPMediaAnalysisService_requestCollectionThemeVersionWithOptions_andCompletionHandler___block_invoke_3;
  v13[3] = &unk_1E834C818;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v15 = v8;
  v13[4] = v10;
  v14 = v7;
  [v6 requestCollectionThemeVersion:v9 withOptions:v11 andReply:v13];
}

void __89__VCPMediaAnalysisService_requestCollectionThemeVersionWithOptions_andCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to Photos background analysis service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__VCPMediaAnalysisService_requestCollectionThemeVersionWithOptions_andCompletionHandler___block_invoke_651;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __89__VCPMediaAnalysisService_requestCollectionThemeVersionWithOptions_andCompletionHandler___block_invoke_651(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __89__VCPMediaAnalysisService_requestCollectionThemeVersionWithOptions_andCompletionHandler___block_invoke_2_652;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __89__VCPMediaAnalysisService_requestCollectionThemeVersionWithOptions_andCompletionHandler___block_invoke_3(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(a1[6] + 8) + 24);
    *buf = 67109120;
    v18 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Collection theme version request %d has completed", buf, 8u);
  }

  v9 = a1[4];
  v8 = a1[5];
  v10 = *(v9 + 16);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__VCPMediaAnalysisService_requestCollectionThemeVersionWithOptions_andCompletionHandler___block_invoke_653;
  v13[3] = &unk_1E834C7F0;
  v13[4] = v9;
  v15 = v6;
  v16 = v8;
  v14 = v5;
  v11 = v6;
  v12 = v5;
  dispatch_async(v10, v13);
}

void __89__VCPMediaAnalysisService_requestCollectionThemeVersionWithOptions_andCompletionHandler___block_invoke_653(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__VCPMediaAnalysisService_requestCollectionThemeVersionWithOptions_andCompletionHandler___block_invoke_2_654;
  block[3] = &unk_1E834C570;
  v6 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  dispatch_async(v2, block);
}

- (int)requestQuickFaceIdentificationForPhotoLibraryURL:(id)l withOptions:(id)options andCompletionHandler:(id)handler
{
  lCopy = l;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = [optionsCopy objectForKeyedSubscript:@"InProcess"];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "In-Process quick face identification not supported", buf, 2u);
  }

  *buf = 0;
  v25 = buf;
  v26 = 0x2020000000;
  v27 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__VCPMediaAnalysisService_requestQuickFaceIdentificationForPhotoLibraryURL_withOptions_andCompletionHandler___block_invoke;
  block[3] = &unk_1E834C868;
  v22 = handlerCopy;
  v23 = buf;
  block[4] = self;
  v20 = lCopy;
  v21 = optionsCopy;
  v14 = optionsCopy;
  v15 = lCopy;
  v16 = handlerCopy;
  dispatch_sync(managementQueue, block);
  v17 = *(v25 + 6);

  _Block_object_dispose(buf, 8);
  return v17;
}

void __109__VCPMediaAnalysisService_requestQuickFaceIdentificationForPhotoLibraryURL_withOptions_andCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 64) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v4 setObject:&__block_literal_global_657 forKey:v5];

  v6 = [*(a1 + 32) connection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __109__VCPMediaAnalysisService_requestQuickFaceIdentificationForPhotoLibraryURL_withOptions_andCompletionHandler___block_invoke_3;
  v19[3] = &unk_1E834C548;
  v19[4] = *(a1 + 32);
  v15 = *(a1 + 56);
  v7 = v15;
  v20 = v15;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v19];
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(*(v10 + 8) + 24);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __109__VCPMediaAnalysisService_requestQuickFaceIdentificationForPhotoLibraryURL_withOptions_andCompletionHandler___block_invoke_3_660;
  v16[3] = &unk_1E834C6B0;
  v14 = *(a1 + 32);
  v18 = v10;
  v16[4] = v14;
  v17 = v9;
  [v8 requestLibraryProcessing:v11 withTaskID:8 forPhotoLibraryURL:v12 withOptions:v13 andReply:v16];
}

void __109__VCPMediaAnalysisService_requestQuickFaceIdentificationForPhotoLibraryURL_withOptions_andCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to Photos Quick Face Identification service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__VCPMediaAnalysisService_requestQuickFaceIdentificationForPhotoLibraryURL_withOptions_andCompletionHandler___block_invoke_658;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __109__VCPMediaAnalysisService_requestQuickFaceIdentificationForPhotoLibraryURL_withOptions_andCompletionHandler___block_invoke_658(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __109__VCPMediaAnalysisService_requestQuickFaceIdentificationForPhotoLibraryURL_withOptions_andCompletionHandler___block_invoke_2_659;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __109__VCPMediaAnalysisService_requestQuickFaceIdentificationForPhotoLibraryURL_withOptions_andCompletionHandler___block_invoke_3_660(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v14 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Asset processing request %d has completed", buf, 8u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__VCPMediaAnalysisService_requestQuickFaceIdentificationForPhotoLibraryURL_withOptions_andCompletionHandler___block_invoke_661;
  block[3] = &unk_1E834C520;
  block[4] = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v11 = v3;
  v8 = v3;
  dispatch_async(v6, block);
}

void __109__VCPMediaAnalysisService_requestQuickFaceIdentificationForPhotoLibraryURL_withOptions_andCompletionHandler___block_invoke_661(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __109__VCPMediaAnalysisService_requestQuickFaceIdentificationForPhotoLibraryURL_withOptions_andCompletionHandler___block_invoke_2_662;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

- (int)requestOCRProcessingForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __106__VCPMediaAnalysisService_requestOCRProcessingForAssets_withOptions_progressHandler_andCompletionHandler___block_invoke;
  v13[3] = &unk_1E834C7A0;
  v14 = completionHandlerCopy;
  v11 = completionHandlerCopy;
  LODWORD(handler) = [(VCPMediaAnalysisService *)self requestProcessingWithTaskID:10 forAssets:assets withOptions:options progressHandler:handler andCompletionHandler:v13];

  return handler;
}

- (int)requestVisualSearchProcessingForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __115__VCPMediaAnalysisService_requestVisualSearchProcessingForAssets_withOptions_progressHandler_andCompletionHandler___block_invoke;
  v13[3] = &unk_1E834C7A0;
  v14 = completionHandlerCopy;
  v11 = completionHandlerCopy;
  LODWORD(handler) = [(VCPMediaAnalysisService *)self requestProcessingWithTaskID:12 forAssets:assets withOptions:options progressHandler:handler andCompletionHandler:v13];

  return handler;
}

- (int)requestFullImageOnlyProcessingForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __116__VCPMediaAnalysisService_requestFullImageOnlyProcessingForAssets_withOptions_progressHandler_andCompletionHandler___block_invoke;
  v13[3] = &unk_1E834C7A0;
  v14 = completionHandlerCopy;
  v11 = completionHandlerCopy;
  LODWORD(handler) = [(VCPMediaAnalysisService *)self requestProcessingWithTaskID:255 forAssets:assets withOptions:options progressHandler:handler andCompletionHandler:v13];

  return handler;
}

- (int)requestFullVideoProcessingForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __112__VCPMediaAnalysisService_requestFullVideoProcessingForAssets_withOptions_progressHandler_andCompletionHandler___block_invoke;
  v13[3] = &unk_1E834C7A0;
  v14 = completionHandlerCopy;
  v11 = completionHandlerCopy;
  LODWORD(handler) = [(VCPMediaAnalysisService *)self requestProcessingWithTaskID:1 forAssets:assets withOptions:options progressHandler:handler andCompletionHandler:v13];

  return handler;
}

- (int)requestSceneprintProcessingForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  assetsCopy = assets;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v14 = [optionsCopy objectForKeyedSubscript:@"InProcess"];
  bOOLValue = [v14 BOOLValue];

  if (bOOLValue)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    managementQueue = self->_managementQueue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __113__VCPMediaAnalysisService_requestSceneprintProcessingForAssets_withOptions_progressHandler_andCompletionHandler___block_invoke;
    v20[3] = &unk_1E834C4B0;
    v20[4] = self;
    v20[5] = &v21;
    dispatch_sync(managementQueue, v20);
    v17 = [VCPPhotosSceneprintAssetProcessingTask taskWithAssets:assetsCopy options:optionsCopy andCompletionHandler:completionHandlerCopy];
    [v17 run];
    v18 = *(v22 + 6);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v18 = [(VCPMediaAnalysisService *)self requestProcessingWithTaskID:5 forAssets:assetsCopy withOptions:optionsCopy progressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];
  }

  return v18;
}

uint64_t __113__VCPMediaAnalysisService_requestSceneprintProcessingForAssets_withOptions_progressHandler_andCompletionHandler___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = v2 + 1;
  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

- (int)requestVideoStabilizationForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  assetsCopy = assets;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v14 = [optionsCopy objectForKeyedSubscript:@"InProcess"];
  bOOLValue = [v14 BOOLValue];

  if (bOOLValue)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    managementQueue = self->_managementQueue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __111__VCPMediaAnalysisService_requestVideoStabilizationForAssets_withOptions_progressHandler_andCompletionHandler___block_invoke;
    v20[3] = &unk_1E834C4B0;
    v20[4] = self;
    v20[5] = &v21;
    dispatch_sync(managementQueue, v20);
    v17 = [VCPVideoStabilizationAssetProcessingTask taskWithAssets:assetsCopy andOptions:optionsCopy andCompletionHandler:completionHandlerCopy];
    [v17 run];
    v18 = *(v22 + 6);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v18 = [(VCPMediaAnalysisService *)self requestProcessingWithTaskID:6 forAssets:assetsCopy withOptions:optionsCopy progressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];
  }

  return v18;
}

uint64_t __111__VCPMediaAnalysisService_requestVideoStabilizationForAssets_withOptions_progressHandler_andCompletionHandler___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = v2 + 1;
  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

- (int)requestFRCForAssetURL:(id)l withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  v66[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (!lCopy)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] requestFRCForAssetURL call with invalid assetURL", &buf, 2u);
    }

    v21 = MEMORY[0x1E696ABC0];
    v65 = *MEMORY[0x1E696A578];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MediaAnalysis] requestFRCForAssetURL call with invalid assetURL"];
    v66[0] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
    v24 = [v21 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v23];

    completionHandlerCopy[2](completionHandlerCopy, 0, v24);
    goto LABEL_15;
  }

  v14 = [optionsCopy objectForKeyedSubscript:@"InProcess"];
  bOOLValue = [v14 BOOLValue];

  if (!bOOLValue)
  {
    path = [lCopy path];
    [path UTF8String];
    v26 = sandbox_extension_issue_file();

    if (v26)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v26];
      path2 = [lCopy path];
      free(v26);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v61 = 0x2020000000;
      LODWORD(v62) = 0;
      managementQueue = self->_managementQueue;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __98__VCPMediaAnalysisService_requestFRCForAssetURL_withOptions_progressHandler_andCompletionHandler___block_invoke_669;
      v38[3] = &unk_1E834C7C8;
      p_buf = &buf;
      v38[4] = self;
      v42 = handlerCopy;
      v43 = completionHandlerCopy;
      v39 = path2;
      v40 = optionsCopy;
      v41 = v27;
      v30 = v27;
      v31 = path2;
      dispatch_sync(managementQueue, v38);
      v19 = *(*(&buf + 1) + 24);

      v20 = &buf;
      goto LABEL_10;
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      path3 = [lCopy path];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = path3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to issue sandbox extension on %@", &buf, 0xCu);
    }

    v33 = MEMORY[0x1E696ABC0];
    v57 = *MEMORY[0x1E696A578];
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MediaAnalysis] Error issuing sandbox extension"];
    v58 = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v36 = [v33 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v35];

    completionHandlerCopy[2](completionHandlerCopy, 0, v36);
LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__5;
  v63 = __Block_byref_object_dispose__5;
  v64 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__5;
  v51 = __Block_byref_object_dispose__5;
  v52 = 0;
  v16 = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__VCPMediaAnalysisService_requestFRCForAssetURL_withOptions_progressHandler_andCompletionHandler___block_invoke;
  block[3] = &unk_1E834C4B0;
  block[4] = self;
  block[5] = &v53;
  dispatch_sync(v16, block);
  v59 = lCopy;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __98__VCPMediaAnalysisService_requestFRCForAssetURL_withOptions_progressHandler_andCompletionHandler___block_invoke_2;
  v45[3] = &unk_1E834C890;
  v45[4] = &v47;
  v45[5] = &buf;
  v18 = [VCPFullAnalysisURLProcessingTask taskForURLAsset:v17 withOptions:optionsCopy analysisTypes:0x20000000 progressHandler:0 completionHandler:v45];

  [v18 run];
  completionHandlerCopy[2](completionHandlerCopy, v48[5], *(*(&buf + 1) + 40));
  v19 = *(v54 + 6);

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&buf, 8);

  v20 = &v53;
LABEL_10:
  _Block_object_dispose(v20, 8);
LABEL_16:

  return v19;
}

uint64_t __98__VCPMediaAnalysisService_requestFRCForAssetURL_withOptions_progressHandler_andCompletionHandler___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = v2 + 1;
  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

void __98__VCPMediaAnalysisService_requestFRCForAssetURL_withOptions_progressHandler_andCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [v16 vcp_results];
  v7 = [v6 objectForKeyedSubscript:@"InterpolationResults"];

  if ([v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v8 objectForKeyedSubscript:@"attributes"];
    v10 = [v9 objectForKeyedSubscript:@"interpolationURL"];

    v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v5;
}

void __98__VCPMediaAnalysisService_requestFRCForAssetURL_withOptions_progressHandler_andCompletionHandler___block_invoke_669(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 80) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 64))
  {
    v5 = *(a1 + 64);
  }

  else
  {
    v5 = &__block_literal_global_672;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 80) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  v8 = [*(a1 + 32) connection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __98__VCPMediaAnalysisService_requestFRCForAssetURL_withOptions_progressHandler_andCompletionHandler___block_invoke_3;
  v20[3] = &unk_1E834C548;
  v20[4] = *(a1 + 32);
  v16 = *(a1 + 72);
  v9 = v16;
  v21 = v16;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v20];
  v11 = *(*(*(a1 + 80) + 8) + 24);
  v23[0] = *(a1 + 40);
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v13 = *(a1 + 48);
  v22 = *(a1 + 56);
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __98__VCPMediaAnalysisService_requestFRCForAssetURL_withOptions_progressHandler_andCompletionHandler___block_invoke_3_675;
  v18[3] = &unk_1E834C8B8;
  v18[4] = *(a1 + 32);
  v17 = *(a1 + 72);
  v15 = v17;
  v19 = v17;
  [v10 requestURLAssetAnalysis:v11 forAssetWithResourcePaths:v12 withOptions:v13 analysisTypes:0x20000000 sandboxTokens:v14 withReply:v18];
}

void __98__VCPMediaAnalysisService_requestFRCForAssetURL_withOptions_progressHandler_andCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to FRC analysis service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__VCPMediaAnalysisService_requestFRCForAssetURL_withOptions_progressHandler_andCompletionHandler___block_invoke_673;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __98__VCPMediaAnalysisService_requestFRCForAssetURL_withOptions_progressHandler_andCompletionHandler___block_invoke_673(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __98__VCPMediaAnalysisService_requestFRCForAssetURL_withOptions_progressHandler_andCompletionHandler___block_invoke_2_674;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __98__VCPMediaAnalysisService_requestFRCForAssetURL_withOptions_progressHandler_andCompletionHandler___block_invoke_3_675(uint64_t a1, void *a2, void *a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 vcp_results];
  v8 = [v7 objectForKeyedSubscript:@"InterpolationResults"];

  if ([v8 count])
  {
    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = [v9 objectForKeyedSubscript:@"attributes"];
    v11 = [v10 objectForKeyedSubscript:@"interpolationURL"];

    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
  }

  else if (v6)
  {
    v12 = 0;
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FRC gating not passed"];
    v28[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v16 = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:0 userInfo:v15];

    v12 = 0;
    v6 = v16;
  }

  v17 = *(a1 + 32);
  v18 = *(v17 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__VCPMediaAnalysisService_requestFRCForAssetURL_withOptions_progressHandler_andCompletionHandler___block_invoke_4;
  block[3] = &unk_1E834C598;
  block[4] = v17;
  v22 = *(a1 + 40);
  v19 = v22;
  v26 = v22;
  v24 = v12;
  v25 = v6;
  v20 = v6;
  v21 = v12;
  dispatch_async(v18, block);
}

void __98__VCPMediaAnalysisService_requestFRCForAssetURL_withOptions_progressHandler_andCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__VCPMediaAnalysisService_requestFRCForAssetURL_withOptions_progressHandler_andCompletionHandler___block_invoke_5;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestWallpaperUpgradeAtURL:(id)l toDestinationURL:(id)rL withOptions:(id)options andCompletionHandler:(id)handler
{
  v52[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  optionsCopy = options;
  handlerCopy = handler;
  if (!lCopy || !rLCopy)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] requestWallpaperUpgradeAtURL call with invalid URL", &buf, 2u);
    }

    v23 = MEMORY[0x1E696ABC0];
    v51 = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MediaAnalysis] requestWallpaperUpgradeAtURL call with invalid URL"];
    v52[0] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    array = [v23 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v25];

    handlerCopy[2](handlerCopy, 0, array);
    goto LABEL_18;
  }

  array = [MEMORY[0x1E695DF70] array];
  path = [lCopy path];
  [path UTF8String];
  v16 = sandbox_extension_issue_file();

  if (!v16)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      path2 = [lCopy path];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = path2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to issue sandbox extension on %@", &buf, 0xCu);
    }

    v27 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A578];
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MediaAnalysis] Error issuing sandbox extension"];
    v50 = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v30 = [v27 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v29];

    handlerCopy[2](handlerCopy, 0, v30);
    goto LABEL_18;
  }

  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
  [array addObject:v17];

  free(v16);
  path3 = [rLCopy path];
  [path3 UTF8String];
  v19 = sandbox_extension_issue_file();

  if (!v19)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      path4 = [rLCopy path];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = path4;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to issue sandbox extension on %@", &buf, 0xCu);
    }

    v32 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A578];
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MediaAnalysis] Error issuing sandbox extension"];
    v48 = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v35 = [v32 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v34];

    handlerCopy[2](handlerCopy, 0, v35);
LABEL_18:
    v22 = 0;
    goto LABEL_19;
  }

  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v19];
  [array addObject:v20];

  free(v19);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v45 = 0x2020000000;
  v46 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__VCPMediaAnalysisService_requestWallpaperUpgradeAtURL_toDestinationURL_withOptions_andCompletionHandler___block_invoke;
  block[3] = &unk_1E834C8E0;
  p_buf = &buf;
  block[4] = self;
  v42 = handlerCopy;
  v38 = lCopy;
  v39 = rLCopy;
  v40 = optionsCopy;
  array = array;
  v41 = array;
  dispatch_sync(managementQueue, block);
  v22 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
LABEL_19:

  return v22;
}

void __106__VCPMediaAnalysisService_requestWallpaperUpgradeAtURL_toDestinationURL_withOptions_andCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 80) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 80) + 8) + 24)];
  [v4 setObject:&__block_literal_global_683 forKey:v5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__VCPMediaAnalysisService_requestWallpaperUpgradeAtURL_toDestinationURL_withOptions_andCompletionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v18 = *(a1 + 72);
  v6 = v18;
  v23 = v18;
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 32) connection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:v7];

  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(*(v11 + 8) + 24);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __106__VCPMediaAnalysisService_requestWallpaperUpgradeAtURL_toDestinationURL_withOptions_andCompletionHandler___block_invoke_3_686;
  v19[3] = &unk_1E834C5C0;
  v17 = *(a1 + 32);
  v21 = v11;
  v19[4] = v17;
  v20 = v10;
  [v9 requestWallpaperUpgrade:v12 atSourceURL:v13 toDestinationURL:v14 withOptions:v15 sandboxTokens:v16 andReply:v19];
}

void __106__VCPMediaAnalysisService_requestWallpaperUpgradeAtURL_toDestinationURL_withOptions_andCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to wallpaper upgrade service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__VCPMediaAnalysisService_requestWallpaperUpgradeAtURL_toDestinationURL_withOptions_andCompletionHandler___block_invoke_684;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __106__VCPMediaAnalysisService_requestWallpaperUpgradeAtURL_toDestinationURL_withOptions_andCompletionHandler___block_invoke_684(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __106__VCPMediaAnalysisService_requestWallpaperUpgradeAtURL_toDestinationURL_withOptions_andCompletionHandler___block_invoke_2_685;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __106__VCPMediaAnalysisService_requestWallpaperUpgradeAtURL_toDestinationURL_withOptions_andCompletionHandler___block_invoke_3_686(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Wallpaper upgrade %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__VCPMediaAnalysisService_requestWallpaperUpgradeAtURL_toDestinationURL_withOptions_andCompletionHandler___block_invoke_687;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __106__VCPMediaAnalysisService_requestWallpaperUpgradeAtURL_toDestinationURL_withOptions_andCompletionHandler___block_invoke_687(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__VCPMediaAnalysisService_requestWallpaperUpgradeAtURL_toDestinationURL_withOptions_andCompletionHandler___block_invoke_2_688;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (void)reportProgress:(double)progress forRequest:(int)request
{
  v14 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    requestCopy = request;
    v12 = 2048;
    progressCopy = progress;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MediaAnalysis] Request %d is %.2f%% complete", buf, 0x12u);
  }

  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__VCPMediaAnalysisService_reportProgress_forRequest___block_invoke;
  block[3] = &unk_1E834C930;
  block[4] = self;
  requestCopy2 = request;
  *&block[5] = progress;
  dispatch_async(managementQueue, block);
}

void __53__VCPMediaAnalysisService_reportProgress_forRequest___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__VCPMediaAnalysisService_reportProgress_forRequest___block_invoke_2;
    v6[3] = &unk_1E834C908;
    v7 = v4;
    v8 = *(a1 + 40);
    dispatch_async(v5, v6);
  }
}

- (void)cancelRequest:(int)request
{
  managementQueue = self->_managementQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__VCPMediaAnalysisService_cancelRequest___block_invoke;
  v4[3] = &unk_1E834C978;
  v4[4] = self;
  requestCopy = request;
  dispatch_sync(managementQueue, v4);
}

void __41__VCPMediaAnalysisService_cancelRequest___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  v3 = [v2 objectForKey:?];

  if (v3)
  {
    v7 = [*(a1 + 32) connection];
    v4 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_690];
    [v4 cancelRequest:*(a1 + 40)];
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 67109120;
    v9 = v5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Unknown analysis request %d; dropping cancellation request", buf, 8u);
  }
}

void __41__VCPMediaAnalysisService_cancelRequest___block_invoke_2()
{
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to background analysis service", v0, 2u);
  }
}

- (void)cancelAllRequests
{
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__VCPMediaAnalysisService_cancelAllRequests__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(managementQueue, block);
}

void __44__VCPMediaAnalysisService_cancelAllRequests__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 32) count])
  {
    v3 = [*(a1 + 32) connection];
    v2 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_692];
    [v2 cancelAllRequests];
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] No active analysis requests; dropping cancellation request", buf, 2u);
  }
}

void __44__VCPMediaAnalysisService_cancelAllRequests__block_invoke_2()
{
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to background analysis service", v0, 2u);
  }
}

- (void)cancelBackgroundActivity
{
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VCPMediaAnalysisService_cancelBackgroundActivity__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(managementQueue, block);
}

void __51__VCPMediaAnalysisService_cancelBackgroundActivity__block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__VCPMediaAnalysisService_cancelBackgroundActivity__block_invoke_2;
  aBlock[3] = &unk_1E834C9A0;
  v3 = v2;
  v14 = v3;
  v4 = _Block_copy(aBlock);
  v5 = [*(a1 + 32) connection];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __51__VCPMediaAnalysisService_cancelBackgroundActivity__block_invoke_693;
  v11 = &unk_1E834C9C8;
  v6 = v4;
  v12 = v6;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&v8];
  [v7 cancelBackgroundActivityWithReply:{v6, v8, v9, v10, v11}];

  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
}

void __51__VCPMediaAnalysisService_cancelBackgroundActivity__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "[MediaAnalysis] Failed to cancel background analysis: %@";
      v6 = 12;
LABEL_8:
      _os_log_impl(&dword_1C9B70000, v4, OS_LOG_TYPE_DEFAULT, v5, &v7, v6);
    }
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "[MediaAnalysis] Background analysis canceled";
    v6 = 2;
    goto LABEL_8;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)invalidate
{
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__VCPMediaAnalysisService_invalidate__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(managementQueue, block);
}

- (void)notifyLibraryAvailableAtURL:(id)l
{
  lCopy = l;
  connection = [(VCPMediaAnalysisService *)self connection];
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_695];
  [v5 notifyLibraryAvailableAtURL:lCopy];
}

void __55__VCPMediaAnalysisService_notifyLibraryAvailableAtURL___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3 = [v2 description];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to background analysis service: %@", &v4, 0xCu);
  }
}

+ (int)queryProgress:(float *)progress forPhotoLibrary:(id)library andTaskID:(unint64_t)d withExtendTimeoutBlock:(id)block
{
  blockCopy = block;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__VCPMediaAnalysisService_queryProgress_forPhotoLibrary_andTaskID_withExtendTimeoutBlock___block_invoke;
  v12[3] = &unk_1E834C9F0;
  v13 = blockCopy;
  v10 = blockCopy;
  LODWORD(d) = [VCPAnalysisProgressQuery queryAnalysisProgress:progress photoLibrary:library taskID:d cancelOrExtendTimeoutBlock:v12];

  return d;
}

+ (int)queryProgressDetail:(id *)detail forPhotoLibrary:(id)library andTaskID:(unint64_t)d withExtendTimeoutBlock:(id)block
{
  blockCopy = block;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__VCPMediaAnalysisService_queryProgressDetail_forPhotoLibrary_andTaskID_withExtendTimeoutBlock___block_invoke;
  v12[3] = &unk_1E834C9F0;
  v13 = blockCopy;
  v10 = blockCopy;
  LODWORD(d) = [VCPAnalysisProgressQuery queryProgressDetail:detail photoLibrary:library taskID:d cancelOrExtendTimeoutBlock:v12];

  return d;
}

+ (int)queryProgressDetail:(id *)detail forPhotoLibraryURL:(id)l andTaskID:(unint64_t)d
{
  lCopy = l;
  if ([MEMORY[0x1E69789B0] isMultiLibraryModeEnabled])
  {
    vcp_defaultPhotoLibrary = [objc_alloc(MEMORY[0x1E69789B0]) initWithPhotoLibraryURL:lCopy];
  }

  else
  {
    vcp_defaultPhotoLibrary = [MEMORY[0x1E69789B0] vcp_defaultPhotoLibrary];
  }

  v9 = vcp_defaultPhotoLibrary;
  v10 = [VCPAnalysisProgressQuery queryProgressDetail:detail photoLibrary:vcp_defaultPhotoLibrary taskID:d cancelOrExtendTimeoutBlock:0];

  return v10;
}

+ (int)queryProgressDetail:(id *)detail forPhotoLibraryURL:(id)l andTaskID:(unint64_t)d withExtendTimeoutBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  if ([MEMORY[0x1E69789B0] isMultiLibraryModeEnabled])
  {
    vcp_defaultPhotoLibrary = [objc_alloc(MEMORY[0x1E69789B0]) initWithPhotoLibraryURL:lCopy];
  }

  else
  {
    vcp_defaultPhotoLibrary = [MEMORY[0x1E69789B0] vcp_defaultPhotoLibrary];
  }

  v12 = vcp_defaultPhotoLibrary;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99__VCPMediaAnalysisService_queryProgressDetail_forPhotoLibraryURL_andTaskID_withExtendTimeoutBlock___block_invoke;
  v16[3] = &unk_1E834C9F0;
  v13 = blockCopy;
  v17 = v13;
  v14 = [VCPAnalysisProgressQuery queryProgressDetail:detail photoLibrary:v12 taskID:d cancelOrExtendTimeoutBlock:v16];

  return v14;
}

- (int)requestPersonPreferenceForPhotoLibraryURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  managementQueue = self->_managementQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__VCPMediaAnalysisService_requestPersonPreferenceForPhotoLibraryURL_completionHandler___block_invoke;
  v12[3] = &unk_1E834C840;
  v14 = handlerCopy;
  v15 = &v16;
  v12[4] = self;
  v13 = lCopy;
  v9 = lCopy;
  v10 = handlerCopy;
  dispatch_sync(managementQueue, v12);
  LODWORD(lCopy) = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  return lCopy;
}

void __87__VCPMediaAnalysisService_requestPersonPreferenceForPhotoLibraryURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 56) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v4 setObject:&__block_literal_global_698 forKey:v5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__VCPMediaAnalysisService_requestPersonPreferenceForPhotoLibraryURL_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v12 = *(a1 + 48);
  v6 = v12;
  v17 = v12;
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 32) connection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:v7];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__VCPMediaAnalysisService_requestPersonPreferenceForPhotoLibraryURL_completionHandler___block_invoke_3_701;
  v14[3] = &unk_1E834C5C0;
  v10 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v13 = *(a1 + 48);
  v11 = v13;
  v15 = v13;
  [v9 requestPersonPreferenceForPhotoLibraryURL:v10 andReply:v14];
}

void __87__VCPMediaAnalysisService_requestPersonPreferenceForPhotoLibraryURL_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request PersonPromoterStatus service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__VCPMediaAnalysisService_requestPersonPreferenceForPhotoLibraryURL_completionHandler___block_invoke_699;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __87__VCPMediaAnalysisService_requestPersonPreferenceForPhotoLibraryURL_completionHandler___block_invoke_699(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__VCPMediaAnalysisService_requestPersonPreferenceForPhotoLibraryURL_completionHandler___block_invoke_2_700;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __87__VCPMediaAnalysisService_requestPersonPreferenceForPhotoLibraryURL_completionHandler___block_invoke_3_701(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request Person Preference %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__VCPMediaAnalysisService_requestPersonPreferenceForPhotoLibraryURL_completionHandler___block_invoke_702;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __87__VCPMediaAnalysisService_requestPersonPreferenceForPhotoLibraryURL_completionHandler___block_invoke_702(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__VCPMediaAnalysisService_requestPersonPreferenceForPhotoLibraryURL_completionHandler___block_invoke_2_703;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestVIPModelFilepathForPhotoLibraryURL:(id)l forModelType:(unint64_t)type completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__VCPMediaAnalysisService_requestVIPModelFilepathForPhotoLibraryURL_forModelType_completionHandler___block_invoke;
  block[3] = &unk_1E834CA40;
  v16 = handlerCopy;
  v17 = &v19;
  block[4] = self;
  v15 = lCopy;
  typeCopy = type;
  v11 = lCopy;
  v12 = handlerCopy;
  dispatch_sync(managementQueue, block);
  LODWORD(self) = *(v20 + 6);

  _Block_object_dispose(&v19, 8);
  return self;
}

void __100__VCPMediaAnalysisService_requestVIPModelFilepathForPhotoLibraryURL_forModelType_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 56) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v4 setObject:&__block_literal_global_705 forKey:v5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__VCPMediaAnalysisService_requestVIPModelFilepathForPhotoLibraryURL_forModelType_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v13 = *(a1 + 48);
  v6 = v13;
  v18 = v13;
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 32) connection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:v7];

  v10 = *(a1 + 64);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __100__VCPMediaAnalysisService_requestVIPModelFilepathForPhotoLibraryURL_forModelType_completionHandler___block_invoke_3_708;
  v15[3] = &unk_1E834CA18;
  v11 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v14 = *(a1 + 48);
  v12 = v14;
  v16 = v14;
  [v9 requestVIPModelStorageFilepathForPhotoLibraryURL:v11 forModelType:v10 andReply:v15];
}

void __100__VCPMediaAnalysisService_requestVIPModelFilepathForPhotoLibraryURL_forModelType_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request PersonPromoterStatus service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__VCPMediaAnalysisService_requestVIPModelFilepathForPhotoLibraryURL_forModelType_completionHandler___block_invoke_706;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __100__VCPMediaAnalysisService_requestVIPModelFilepathForPhotoLibraryURL_forModelType_completionHandler___block_invoke_706(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __100__VCPMediaAnalysisService_requestVIPModelFilepathForPhotoLibraryURL_forModelType_completionHandler___block_invoke_2_707;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __100__VCPMediaAnalysisService_requestVIPModelFilepathForPhotoLibraryURL_forModelType_completionHandler___block_invoke_3_708(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request VIP model filepath Preference %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__VCPMediaAnalysisService_requestVIPModelFilepathForPhotoLibraryURL_forModelType_completionHandler___block_invoke_709;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __100__VCPMediaAnalysisService_requestVIPModelFilepathForPhotoLibraryURL_forModelType_completionHandler___block_invoke_709(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__VCPMediaAnalysisService_requestVIPModelFilepathForPhotoLibraryURL_forModelType_completionHandler___block_invoke_2_710;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestPhotosSceneFastPassProcessingForPhotoLibraryURL:(id)l withCompletionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  managementQueue = self->_managementQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __104__VCPMediaAnalysisService_requestPhotosSceneFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke;
  v12[3] = &unk_1E834C840;
  v14 = handlerCopy;
  v15 = &v16;
  v12[4] = self;
  v13 = lCopy;
  v9 = lCopy;
  v10 = handlerCopy;
  dispatch_sync(managementQueue, v12);
  LODWORD(lCopy) = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  return lCopy;
}

void __104__VCPMediaAnalysisService_requestPhotosSceneFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 56) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v4 setObject:&__block_literal_global_713 forKey:v5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __104__VCPMediaAnalysisService_requestPhotosSceneFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v15 = *(a1 + 48);
  v6 = v15;
  v20 = v15;
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 32) connection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:v7];

  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(*(v11 + 8) + 24);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __104__VCPMediaAnalysisService_requestPhotosSceneFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_3_716;
  v16[3] = &unk_1E834C6B0;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v18 = v11;
  v16[4] = v13;
  v17 = v10;
  [v9 requestPhotosSceneFastPassProcessing:v12 withPhotoLibraryURL:v14 andReply:v16];
}

void __104__VCPMediaAnalysisService_requestPhotosSceneFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request FastPass Scene Processing service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__VCPMediaAnalysisService_requestPhotosSceneFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_714;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __104__VCPMediaAnalysisService_requestPhotosSceneFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_714(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __104__VCPMediaAnalysisService_requestPhotosSceneFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_2_715;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __104__VCPMediaAnalysisService_requestPhotosSceneFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_3_716(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v14 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request FastPass Scene Processing %d has completed", buf, 8u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__VCPMediaAnalysisService_requestPhotosSceneFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_717;
  block[3] = &unk_1E834C520;
  block[4] = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v11 = v3;
  v8 = v3;
  dispatch_async(v6, block);
}

void __104__VCPMediaAnalysisService_requestPhotosSceneFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_717(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __104__VCPMediaAnalysisService_requestPhotosSceneFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_2_718;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

- (int)requestPhotosFaceFastPassProcessingForPhotoLibraryURL:(id)l withCompletionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  managementQueue = self->_managementQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103__VCPMediaAnalysisService_requestPhotosFaceFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke;
  v12[3] = &unk_1E834C840;
  v14 = handlerCopy;
  v15 = &v16;
  v12[4] = self;
  v13 = lCopy;
  v9 = lCopy;
  v10 = handlerCopy;
  dispatch_sync(managementQueue, v12);
  LODWORD(lCopy) = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  return lCopy;
}

void __103__VCPMediaAnalysisService_requestPhotosFaceFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 56) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v4 setObject:&__block_literal_global_720 forKey:v5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__VCPMediaAnalysisService_requestPhotosFaceFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v15 = *(a1 + 48);
  v6 = v15;
  v20 = v15;
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 32) connection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:v7];

  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(*(v11 + 8) + 24);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __103__VCPMediaAnalysisService_requestPhotosFaceFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_3_723;
  v16[3] = &unk_1E834C6B0;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v18 = v11;
  v16[4] = v13;
  v17 = v10;
  [v9 requestPhotosFaceFastPassProcessing:v12 withPhotoLibraryURL:v14 andReply:v16];
}

void __103__VCPMediaAnalysisService_requestPhotosFaceFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request FastPass Face Processing service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__VCPMediaAnalysisService_requestPhotosFaceFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_721;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __103__VCPMediaAnalysisService_requestPhotosFaceFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_721(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __103__VCPMediaAnalysisService_requestPhotosFaceFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_2_722;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __103__VCPMediaAnalysisService_requestPhotosFaceFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_3_723(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v14 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request FastPass Face Processing %d has completed", buf, 8u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__VCPMediaAnalysisService_requestPhotosFaceFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_724;
  block[3] = &unk_1E834C520;
  block[4] = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v11 = v3;
  v8 = v3;
  dispatch_async(v6, block);
}

void __103__VCPMediaAnalysisService_requestPhotosFaceFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_724(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __103__VCPMediaAnalysisService_requestPhotosFaceFastPassProcessingForPhotoLibraryURL_withCompletionHandler___block_invoke_2_725;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

- (int)requestDatabaseRestoreFastPassProcessingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__VCPMediaAnalysisService_requestDatabaseRestoreFastPassProcessingWithCompletionHandler___block_invoke;
  block[3] = &unk_1E834CA68;
  v9 = handlerCopy;
  v10 = &v11;
  block[4] = self;
  v6 = handlerCopy;
  dispatch_sync(managementQueue, block);
  LODWORD(managementQueue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return managementQueue;
}

void __89__VCPMediaAnalysisService_requestDatabaseRestoreFastPassProcessingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 48) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 48) + 8) + 24)];
  [v4 setObject:&__block_literal_global_727 forKey:v5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__VCPMediaAnalysisService_requestDatabaseRestoreFastPassProcessingWithCompletionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v14 = *(a1 + 40);
  v6 = v14;
  v19 = v14;
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 32) connection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:v7];

  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = *(*(v10 + 8) + 24);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__VCPMediaAnalysisService_requestDatabaseRestoreFastPassProcessingWithCompletionHandler___block_invoke_3_730;
  v15[3] = &unk_1E834C6B0;
  v13 = *(a1 + 32);
  v17 = v10;
  v15[4] = v13;
  v16 = v11;
  [v9 requestDatabaseRestoreFastPassProcessing:v12 reply:v15];
}

void __89__VCPMediaAnalysisService_requestDatabaseRestoreFastPassProcessingWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request database restore FastPass service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__VCPMediaAnalysisService_requestDatabaseRestoreFastPassProcessingWithCompletionHandler___block_invoke_728;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __89__VCPMediaAnalysisService_requestDatabaseRestoreFastPassProcessingWithCompletionHandler___block_invoke_728(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __89__VCPMediaAnalysisService_requestDatabaseRestoreFastPassProcessingWithCompletionHandler___block_invoke_2_729;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __89__VCPMediaAnalysisService_requestDatabaseRestoreFastPassProcessingWithCompletionHandler___block_invoke_3_730(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v14 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request database restore FastPass service %d has completed", buf, 8u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__VCPMediaAnalysisService_requestDatabaseRestoreFastPassProcessingWithCompletionHandler___block_invoke_731;
  block[3] = &unk_1E834C520;
  block[4] = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v11 = v3;
  v8 = v3;
  dispatch_async(v6, block);
}

void __89__VCPMediaAnalysisService_requestDatabaseRestoreFastPassProcessingWithCompletionHandler___block_invoke_731(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __89__VCPMediaAnalysisService_requestDatabaseRestoreFastPassProcessingWithCompletionHandler___block_invoke_2_732;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

- (int)requestSuggestedPersonsForPersonWithLocalIdentifier:(id)identifier toBeConfirmedPersonSuggestions:(id)suggestions toBeRejectedPersonSuggestions:(id)personSuggestions photoLibraryURL:(id)l progessHandler:(id)handler completionHandler:(id)completionHandler
{
  identifierCopy = identifier;
  suggestionsCopy = suggestions;
  personSuggestionsCopy = personSuggestions;
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  managementQueue = self->_managementQueue;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __206__VCPMediaAnalysisService_FaceSuggestions__requestSuggestedPersonsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_photoLibraryURL_progessHandler_completionHandler___block_invoke;
  v28[3] = &unk_1E834CB60;
  v34 = completionHandlerCopy;
  v35 = &v36;
  v28[4] = self;
  v29 = identifierCopy;
  v30 = suggestionsCopy;
  v31 = personSuggestionsCopy;
  v32 = lCopy;
  v33 = handlerCopy;
  v21 = lCopy;
  v22 = personSuggestionsCopy;
  v23 = suggestionsCopy;
  v24 = identifierCopy;
  v25 = completionHandlerCopy;
  v26 = handlerCopy;
  dispatch_sync(managementQueue, v28);
  LODWORD(managementQueue) = *(v37 + 6);

  _Block_object_dispose(&v36, 8);
  return managementQueue;
}

void __206__VCPMediaAnalysisService_FaceSuggestions__requestSuggestedPersonsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_photoLibraryURL_progessHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 88) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 72))
  {
    v5 = *(a1 + 72);
  }

  else
  {
    v5 = &__block_literal_global_879;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 88) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __206__VCPMediaAnalysisService_FaceSuggestions__requestSuggestedPersonsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_photoLibraryURL_progessHandler_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v20 = *(a1 + 80);
  v8 = v20;
  v25 = v20;
  v9 = _Block_copy(aBlock);
  v10 = [*(a1 + 32) connection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];

  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v14 = *(*(v13 + 8) + 24);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __206__VCPMediaAnalysisService_FaceSuggestions__requestSuggestedPersonsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_photoLibraryURL_progessHandler_completionHandler___block_invoke_3_882;
  v21[3] = &unk_1E834CB38;
  v19 = *(a1 + 32);
  v23 = v13;
  v21[4] = v19;
  v22 = v12;
  [v11 requestSuggestedPersons:v14 withPersonWithLocalIdentifier:v15 toBeConfirmedPersonSuggestions:v16 toBeRejectedPersonSuggestions:v17 andPhotoLibraryURL:v18 andReply:v21];
}

void __206__VCPMediaAnalysisService_FaceSuggestions__requestSuggestedPersonsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_photoLibraryURL_progessHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request SuggestedPersons service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __206__VCPMediaAnalysisService_FaceSuggestions__requestSuggestedPersonsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_photoLibraryURL_progessHandler_completionHandler___block_invoke_880;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __206__VCPMediaAnalysisService_FaceSuggestions__requestSuggestedPersonsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_photoLibraryURL_progessHandler_completionHandler___block_invoke_880(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __206__VCPMediaAnalysisService_FaceSuggestions__requestSuggestedPersonsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_photoLibraryURL_progessHandler_completionHandler___block_invoke_2_881;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __206__VCPMediaAnalysisService_FaceSuggestions__requestSuggestedPersonsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_photoLibraryURL_progessHandler_completionHandler___block_invoke_3_882(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request SuggestedPersons %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __206__VCPMediaAnalysisService_FaceSuggestions__requestSuggestedPersonsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_photoLibraryURL_progessHandler_completionHandler___block_invoke_883;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __206__VCPMediaAnalysisService_FaceSuggestions__requestSuggestedPersonsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_photoLibraryURL_progessHandler_completionHandler___block_invoke_883(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __206__VCPMediaAnalysisService_FaceSuggestions__requestSuggestedPersonsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_photoLibraryURL_progessHandler_completionHandler___block_invoke_2_884;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestUpdateKeyFacesOfPersonsWithLocalIdentifiers:(id)identifiers forceUpdate:(BOOL)update photoLibraryURL:(id)l progessHandler:(id)handler completionHandler:(id)completionHandler
{
  identifiersCopy = identifiers;
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __156__VCPMediaAnalysisService_FaceSuggestions__requestUpdateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_photoLibraryURL_progessHandler_completionHandler___block_invoke;
  block[3] = &unk_1E834C688;
  v27 = completionHandlerCopy;
  v28 = &v30;
  block[4] = self;
  v24 = identifiersCopy;
  updateCopy = update;
  v25 = lCopy;
  v26 = handlerCopy;
  v17 = lCopy;
  v18 = identifiersCopy;
  v19 = completionHandlerCopy;
  v20 = handlerCopy;
  dispatch_sync(managementQueue, block);
  v21 = *(v31 + 6);

  _Block_object_dispose(&v30, 8);
  return v21;
}

void __156__VCPMediaAnalysisService_FaceSuggestions__requestUpdateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_photoLibraryURL_progessHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 72) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 56))
  {
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = &__block_literal_global_887;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 72) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __156__VCPMediaAnalysisService_FaceSuggestions__requestUpdateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_photoLibraryURL_progessHandler_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v19 = *(a1 + 64);
  v8 = v19;
  v24 = v19;
  v9 = _Block_copy(aBlock);
  v10 = [*(a1 + 32) connection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];

  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(*(v13 + 8) + 24);
  v15 = *(a1 + 80);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __156__VCPMediaAnalysisService_FaceSuggestions__requestUpdateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_photoLibraryURL_progessHandler_completionHandler___block_invoke_3_890;
  v20[3] = &unk_1E834CBD8;
  v18 = *(a1 + 32);
  v22 = v13;
  v20[4] = v18;
  v21 = v12;
  [v11 requestUpdateKeyFacesOfPersons:v14 withLocalIdentifiers:v16 andForceUpdate:v15 andPhotoLibraryURL:v17 andReply:v20];
}

void __156__VCPMediaAnalysisService_FaceSuggestions__requestUpdateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_photoLibraryURL_progessHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request UpdateKeyFacesOfPersons service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __156__VCPMediaAnalysisService_FaceSuggestions__requestUpdateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_photoLibraryURL_progessHandler_completionHandler___block_invoke_888;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __156__VCPMediaAnalysisService_FaceSuggestions__requestUpdateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_photoLibraryURL_progessHandler_completionHandler___block_invoke_888(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __156__VCPMediaAnalysisService_FaceSuggestions__requestUpdateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_photoLibraryURL_progessHandler_completionHandler___block_invoke_2_889;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __156__VCPMediaAnalysisService_FaceSuggestions__requestUpdateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_photoLibraryURL_progessHandler_completionHandler___block_invoke_3_890(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v17 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request UpdateKeyFacesOfPersons %d has completed", buf, 8u);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __156__VCPMediaAnalysisService_FaceSuggestions__requestUpdateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_photoLibraryURL_progessHandler_completionHandler___block_invoke_891;
  block[3] = &unk_1E834CBB0;
  block[4] = v7;
  v11 = *(a1 + 40);
  v9 = v11;
  v14 = v11;
  v15 = a2;
  v13 = v5;
  v10 = v5;
  dispatch_async(v8, block);
}

void __156__VCPMediaAnalysisService_FaceSuggestions__requestUpdateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_photoLibraryURL_progessHandler_completionHandler___block_invoke_891(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __156__VCPMediaAnalysisService_FaceSuggestions__requestUpdateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_photoLibraryURL_progessHandler_completionHandler___block_invoke_2_892;
  block[3] = &unk_1E834CB88;
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v6 = *(a1 + 40);
  dispatch_async(v4, block);
}

- (int)requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers:(id)identifiers photoLibraryURL:(id)l progessHandler:(id)handler completionHandler:(id)completionHandler
{
  identifiersCopy = identifiers;
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  managementQueue = self->_managementQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __155__VCPMediaAnalysisService_FaceSuggestions__requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers_photoLibraryURL_progessHandler_completionHandler___block_invoke;
  v20[3] = &unk_1E834C750;
  v24 = completionHandlerCopy;
  v25 = &v26;
  v20[4] = self;
  v21 = identifiersCopy;
  v22 = lCopy;
  v23 = handlerCopy;
  v15 = lCopy;
  v16 = identifiersCopy;
  v17 = completionHandlerCopy;
  v18 = handlerCopy;
  dispatch_sync(managementQueue, v20);
  LODWORD(self) = *(v27 + 6);

  _Block_object_dispose(&v26, 8);
  return self;
}

void __155__VCPMediaAnalysisService_FaceSuggestions__requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers_photoLibraryURL_progessHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 72) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 56))
  {
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = &__block_literal_global_895;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 72) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __155__VCPMediaAnalysisService_FaceSuggestions__requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers_photoLibraryURL_progessHandler_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v18 = *(a1 + 64);
  v8 = v18;
  v23 = v18;
  v9 = _Block_copy(aBlock);
  v10 = [*(a1 + 32) connection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];

  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(*(v13 + 8) + 24);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __155__VCPMediaAnalysisService_FaceSuggestions__requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers_photoLibraryURL_progessHandler_completionHandler___block_invoke_3_898;
  v19[3] = &unk_1E834CB38;
  v17 = *(a1 + 32);
  v21 = v13;
  v19[4] = v17;
  v20 = v12;
  [v11 requestFaceCandidatesforKeyFace:v14 withPersonsWithLocalIdentifiers:v15 andPhotoLibraryURL:v16 andReply:v19];
}

void __155__VCPMediaAnalysisService_FaceSuggestions__requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers_photoLibraryURL_progessHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request FaceCandidatesforKeyFace service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __155__VCPMediaAnalysisService_FaceSuggestions__requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers_photoLibraryURL_progessHandler_completionHandler___block_invoke_896;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __155__VCPMediaAnalysisService_FaceSuggestions__requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers_photoLibraryURL_progessHandler_completionHandler___block_invoke_896(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __155__VCPMediaAnalysisService_FaceSuggestions__requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers_photoLibraryURL_progessHandler_completionHandler___block_invoke_2_897;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __155__VCPMediaAnalysisService_FaceSuggestions__requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers_photoLibraryURL_progessHandler_completionHandler___block_invoke_3_898(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request FaceCandidatesforKeyFace %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __155__VCPMediaAnalysisService_FaceSuggestions__requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers_photoLibraryURL_progessHandler_completionHandler___block_invoke_899;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __155__VCPMediaAnalysisService_FaceSuggestions__requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers_photoLibraryURL_progessHandler_completionHandler___block_invoke_899(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __155__VCPMediaAnalysisService_FaceSuggestions__requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers_photoLibraryURL_progessHandler_completionHandler___block_invoke_2_900;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestResetFaceClassificationModelForPhotoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __141__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetFaceClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke;
  block[3] = &unk_1E834CC00;
  v19 = completionHandlerCopy;
  v20 = &v21;
  v17 = lCopy;
  v18 = handlerCopy;
  block[4] = self;
  v12 = lCopy;
  v13 = completionHandlerCopy;
  v14 = handlerCopy;
  dispatch_sync(managementQueue, block);
  LODWORD(lCopy) = *(v22 + 6);

  _Block_object_dispose(&v21, 8);
  return lCopy;
}

void __141__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetFaceClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 64) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 48))
  {
    v5 = *(a1 + 48);
  }

  else
  {
    v5 = &__block_literal_global_908;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __141__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetFaceClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v17 = *(a1 + 56);
  v8 = v17;
  v22 = v17;
  v9 = _Block_copy(aBlock);
  v10 = [*(a1 + 32) connection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];

  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(*(v13 + 8) + 24);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __141__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetFaceClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3_911;
  v18[3] = &unk_1E834CBD8;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v20 = v13;
  v18[4] = v15;
  v19 = v12;
  [v11 requestResetFaceClassificationModel:v14 withPhotoLibraryURL:v16 andReply:v18];
}

void __141__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetFaceClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request ResetFaceClassificationModel service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __141__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetFaceClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_909;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __141__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetFaceClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_909(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __141__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetFaceClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_2_910;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __141__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetFaceClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3_911(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v17 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request ResetFaceClassificationModel %d has completed", buf, 8u);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __141__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetFaceClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_912;
  block[3] = &unk_1E834CBB0;
  block[4] = v7;
  v11 = *(a1 + 40);
  v9 = v11;
  v14 = v11;
  v15 = a2;
  v13 = v5;
  v10 = v5;
  dispatch_async(v8, block);
}

void __141__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetFaceClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_912(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __141__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetFaceClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_2_913;
  block[3] = &unk_1E834CB88;
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v6 = *(a1 + 40);
  dispatch_async(v4, block);
}

- (int)requestResetPetClassificationModelForPhotoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __140__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPetClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke;
  block[3] = &unk_1E834CC00;
  v19 = completionHandlerCopy;
  v20 = &v21;
  v17 = lCopy;
  v18 = handlerCopy;
  block[4] = self;
  v12 = lCopy;
  v13 = completionHandlerCopy;
  v14 = handlerCopy;
  dispatch_sync(managementQueue, block);
  LODWORD(lCopy) = *(v22 + 6);

  _Block_object_dispose(&v21, 8);
  return lCopy;
}

void __140__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPetClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 64) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 48))
  {
    v5 = *(a1 + 48);
  }

  else
  {
    v5 = &__block_literal_global_915;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __140__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPetClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v17 = *(a1 + 56);
  v8 = v17;
  v22 = v17;
  v9 = _Block_copy(aBlock);
  v10 = [*(a1 + 32) connection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];

  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(*(v13 + 8) + 24);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __140__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPetClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3_918;
  v18[3] = &unk_1E834CBD8;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v20 = v13;
  v18[4] = v15;
  v19 = v12;
  [v11 requestResetPetClassificationModel:v14 withPhotoLibraryURL:v16 andReply:v18];
}

void __140__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPetClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request ResetPetClassificationModel service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __140__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPetClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_916;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __140__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPetClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_916(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __140__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPetClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_2_917;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __140__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPetClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3_918(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v17 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request ResetPetClassificationModel %d has completed", buf, 8u);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __140__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPetClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_919;
  block[3] = &unk_1E834CBB0;
  block[4] = v7;
  v11 = *(a1 + 40);
  v9 = v11;
  v14 = v11;
  v15 = a2;
  v13 = v5;
  v10 = v5;
  dispatch_async(v8, block);
}

void __140__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPetClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_919(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __140__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPetClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke_2_920;
  block[3] = &unk_1E834CB88;
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v6 = *(a1 + 40);
  dispatch_async(v4, block);
}

- (int)requestSuggestedMePersonIdentifierWithContext:(id)context photoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  contextCopy = context;
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  managementQueue = self->_managementQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __149__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestSuggestedMePersonIdentifierWithContext_photoLibraryURL_progressHandler_completionHandler___block_invoke;
  v20[3] = &unk_1E834C750;
  v24 = completionHandlerCopy;
  v25 = &v26;
  v20[4] = self;
  v21 = contextCopy;
  v22 = lCopy;
  v23 = handlerCopy;
  v15 = lCopy;
  v16 = contextCopy;
  v17 = completionHandlerCopy;
  v18 = handlerCopy;
  dispatch_sync(managementQueue, v20);
  LODWORD(self) = *(v27 + 6);

  _Block_object_dispose(&v26, 8);
  return self;
}

void __149__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestSuggestedMePersonIdentifierWithContext_photoLibraryURL_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 72) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 56))
  {
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = &__block_literal_global_922;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 72) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __149__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestSuggestedMePersonIdentifierWithContext_photoLibraryURL_progressHandler_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v18 = *(a1 + 64);
  v8 = v18;
  v23 = v18;
  v9 = _Block_copy(aBlock);
  v10 = [*(a1 + 32) connection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];

  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(*(v13 + 8) + 24);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __149__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestSuggestedMePersonIdentifierWithContext_photoLibraryURL_progressHandler_completionHandler___block_invoke_3_925;
  v19[3] = &unk_1E834CA18;
  v17 = *(a1 + 32);
  v21 = v13;
  v19[4] = v17;
  v20 = v12;
  [v11 requestSuggestedMePersonIdentifier:v14 withContext:v15 andPhotoLibraryURL:v16 andReply:v19];
}

void __149__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestSuggestedMePersonIdentifierWithContext_photoLibraryURL_progressHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request SuggestedMePersonIdentifier service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __149__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestSuggestedMePersonIdentifierWithContext_photoLibraryURL_progressHandler_completionHandler___block_invoke_923;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __149__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestSuggestedMePersonIdentifierWithContext_photoLibraryURL_progressHandler_completionHandler___block_invoke_923(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __149__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestSuggestedMePersonIdentifierWithContext_photoLibraryURL_progressHandler_completionHandler___block_invoke_2_924;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __149__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestSuggestedMePersonIdentifierWithContext_photoLibraryURL_progressHandler_completionHandler___block_invoke_3_925(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request SuggestedMePersonIdentifier %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __149__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestSuggestedMePersonIdentifierWithContext_photoLibraryURL_progressHandler_completionHandler___block_invoke_926;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __149__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestSuggestedMePersonIdentifierWithContext_photoLibraryURL_progressHandler_completionHandler___block_invoke_926(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __149__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestSuggestedMePersonIdentifierWithContext_photoLibraryURL_progressHandler_completionHandler___block_invoke_2_927;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestPersonPromoterStatusWithAdvancedFlag:(BOOL)flag photoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  managementQueue = self->_managementQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __147__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonPromoterStatusWithAdvancedFlag_photoLibraryURL_progressHandler_completionHandler___block_invoke;
  v18[3] = &unk_1E834CC28;
  v21 = completionHandlerCopy;
  v22 = &v24;
  v19 = lCopy;
  v20 = handlerCopy;
  flagCopy = flag;
  v18[4] = self;
  v14 = lCopy;
  v15 = completionHandlerCopy;
  v16 = handlerCopy;
  dispatch_sync(managementQueue, v18);
  LODWORD(self) = *(v25 + 6);

  _Block_object_dispose(&v24, 8);
  return self;
}

void __147__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonPromoterStatusWithAdvancedFlag_photoLibraryURL_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 64) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 48))
  {
    v5 = *(a1 + 48);
  }

  else
  {
    v5 = &__block_literal_global_929;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __147__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonPromoterStatusWithAdvancedFlag_photoLibraryURL_progressHandler_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v18 = *(a1 + 56);
  v8 = v18;
  v23 = v18;
  v9 = _Block_copy(aBlock);
  v10 = [*(a1 + 32) connection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];

  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(*(v13 + 8) + 24);
  v15 = *(a1 + 72);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __147__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonPromoterStatusWithAdvancedFlag_photoLibraryURL_progressHandler_completionHandler___block_invoke_3_932;
  v19[3] = &unk_1E834C5C0;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v21 = v13;
  v19[4] = v16;
  v20 = v12;
  [v11 requestPersonPromoterStatus:v14 withAdvancedFlag:v15 andPhotoLibraryURL:v17 andReply:v19];
}

void __147__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonPromoterStatusWithAdvancedFlag_photoLibraryURL_progressHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request PersonPromoterStatus service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __147__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonPromoterStatusWithAdvancedFlag_photoLibraryURL_progressHandler_completionHandler___block_invoke_930;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __147__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonPromoterStatusWithAdvancedFlag_photoLibraryURL_progressHandler_completionHandler___block_invoke_930(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __147__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonPromoterStatusWithAdvancedFlag_photoLibraryURL_progressHandler_completionHandler___block_invoke_2_931;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __147__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonPromoterStatusWithAdvancedFlag_photoLibraryURL_progressHandler_completionHandler___block_invoke_3_932(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request PersonPromoterStatus %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __147__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonPromoterStatusWithAdvancedFlag_photoLibraryURL_progressHandler_completionHandler___block_invoke_933;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __147__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonPromoterStatusWithAdvancedFlag_photoLibraryURL_progressHandler_completionHandler___block_invoke_933(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __147__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonPromoterStatusWithAdvancedFlag_photoLibraryURL_progressHandler_completionHandler___block_invoke_2_934;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestPersonProcessingForPhotoLibraryURL:(id)l options:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler
{
  lCopy = l;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  managementQueue = self->_managementQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __137__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonProcessingForPhotoLibraryURL_options_progressHandler_completionHandler___block_invoke;
  v20[3] = &unk_1E834C750;
  v24 = completionHandlerCopy;
  v25 = &v26;
  v20[4] = self;
  v21 = optionsCopy;
  v22 = lCopy;
  v23 = handlerCopy;
  v15 = lCopy;
  v16 = optionsCopy;
  v17 = completionHandlerCopy;
  v18 = handlerCopy;
  dispatch_sync(managementQueue, v20);
  LODWORD(self) = *(v27 + 6);

  _Block_object_dispose(&v26, 8);
  return self;
}

void __137__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonProcessingForPhotoLibraryURL_options_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 72) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 56))
  {
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = &__block_literal_global_936;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 72) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __137__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonProcessingForPhotoLibraryURL_options_progressHandler_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v18 = *(a1 + 64);
  v8 = v18;
  v23 = v18;
  v9 = _Block_copy(aBlock);
  v10 = [*(a1 + 32) connection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];

  v12 = [*(a1 + 40) mutableCopy];
  [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ModifyPersonRequest"];
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(*(v14 + 8) + 24);
  v16 = *(a1 + 48);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __137__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonProcessingForPhotoLibraryURL_options_progressHandler_completionHandler___block_invoke_3_939;
  v19[3] = &unk_1E834C6B0;
  v17 = *(a1 + 32);
  v21 = v14;
  v19[4] = v17;
  v20 = v13;
  [v11 requestLibraryProcessing:v15 withTaskID:3 forPhotoLibraryURL:v16 withOptions:v12 andReply:v19];
}

void __137__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonProcessingForPhotoLibraryURL_options_progressHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request Face and Person workflow", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __137__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonProcessingForPhotoLibraryURL_options_progressHandler_completionHandler___block_invoke_937;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __137__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonProcessingForPhotoLibraryURL_options_progressHandler_completionHandler___block_invoke_937(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __137__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonProcessingForPhotoLibraryURL_options_progressHandler_completionHandler___block_invoke_2_938;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __137__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonProcessingForPhotoLibraryURL_options_progressHandler_completionHandler___block_invoke_3_939(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v14 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request Face and Person workflow %d has completed", buf, 8u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __137__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonProcessingForPhotoLibraryURL_options_progressHandler_completionHandler___block_invoke_940;
  block[3] = &unk_1E834C520;
  block[4] = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v11 = v3;
  v8 = v3;
  dispatch_async(v6, block);
}

void __137__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonProcessingForPhotoLibraryURL_options_progressHandler_completionHandler___block_invoke_940(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __137__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestPersonProcessingForPhotoLibraryURL_options_progressHandler_completionHandler___block_invoke_2_941;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

- (int)requestResetPersons:(id)persons forPhotoLibraryURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  managementQueue = self->_managementQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __110__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPersons_forPhotoLibraryURL_completionHandler___block_invoke;
  v13[3] = &unk_1E834C840;
  v15 = handlerCopy;
  v16 = &v17;
  v13[4] = self;
  v14 = lCopy;
  v10 = lCopy;
  v11 = handlerCopy;
  dispatch_sync(managementQueue, v13);
  LODWORD(lCopy) = *(v18 + 6);

  _Block_object_dispose(&v17, 8);
  return lCopy;
}

void __110__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPersons_forPhotoLibraryURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 56) + 8) + 24) = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPersons_forPhotoLibraryURL_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v13 = *(a1 + 48);
  v4 = v13;
  v18 = v13;
  v5 = _Block_copy(aBlock);
  v6 = [*(a1 + 32) connection];
  v7 = [v6 remoteObjectProxyWithErrorHandler:v5];

  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(*(v9 + 8) + 24);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __110__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPersons_forPhotoLibraryURL_completionHandler___block_invoke_3;
  v14[3] = &unk_1E834CBD8;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v16 = v9;
  v14[4] = v11;
  v15 = v8;
  [v7 requestResetPersons:v10 withPhotoLibraryURL:v12 andReply:v14];
}

void __110__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPersons_forPhotoLibraryURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request reset persons workflow", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPersons_forPhotoLibraryURL_completionHandler___block_invoke_942;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __110__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPersons_forPhotoLibraryURL_completionHandler___block_invoke_942(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __110__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPersons_forPhotoLibraryURL_completionHandler___block_invoke_2_943;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __110__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPersons_forPhotoLibraryURL_completionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v17 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request reset persons workflow %d has completed", buf, 8u);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPersons_forPhotoLibraryURL_completionHandler___block_invoke_944;
  block[3] = &unk_1E834CBB0;
  block[4] = v7;
  v11 = *(a1 + 40);
  v9 = v11;
  v14 = v11;
  v15 = a2;
  v13 = v5;
  v10 = v5;
  dispatch_async(v8, block);
}

void __110__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPersons_forPhotoLibraryURL_completionHandler___block_invoke_944(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__VCPMediaAnalysisService_PersonBuilderAndPromoter__requestResetPersons_forPhotoLibraryURL_completionHandler___block_invoke_2_945;
  block[3] = &unk_1E834CB88;
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v6 = *(a1 + 40);
  dispatch_async(v4, block);
}

- (int)requestClusterCacheValidationWithPhotoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125__VCPMediaAnalysisService_InternalTools__requestClusterCacheValidationWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke;
  block[3] = &unk_1E834CC00;
  v19 = completionHandlerCopy;
  v20 = &v21;
  v17 = lCopy;
  v18 = handlerCopy;
  block[4] = self;
  v12 = lCopy;
  v13 = completionHandlerCopy;
  v14 = handlerCopy;
  dispatch_sync(managementQueue, block);
  LODWORD(lCopy) = *(v22 + 6);

  _Block_object_dispose(&v21, 8);
  return lCopy;
}

void __125__VCPMediaAnalysisService_InternalTools__requestClusterCacheValidationWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 64) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 48))
  {
    v5 = *(a1 + 48);
  }

  else
  {
    v5 = &__block_literal_global_956;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __125__VCPMediaAnalysisService_InternalTools__requestClusterCacheValidationWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v17 = *(a1 + 56);
  v8 = v17;
  v22 = v17;
  v9 = _Block_copy(aBlock);
  v10 = [*(a1 + 32) connection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];

  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(*(v13 + 8) + 24);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __125__VCPMediaAnalysisService_InternalTools__requestClusterCacheValidationWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3_959;
  v18[3] = &unk_1E834C5C0;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v20 = v13;
  v18[4] = v15;
  v19 = v12;
  [v11 requestClusterCacheValidation:v14 withPhotoLibraryURL:v16 andReply:v18];
}

void __125__VCPMediaAnalysisService_InternalTools__requestClusterCacheValidationWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request ClusterCacheValidation service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125__VCPMediaAnalysisService_InternalTools__requestClusterCacheValidationWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_957;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __125__VCPMediaAnalysisService_InternalTools__requestClusterCacheValidationWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_957(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __125__VCPMediaAnalysisService_InternalTools__requestClusterCacheValidationWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_2_958;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __125__VCPMediaAnalysisService_InternalTools__requestClusterCacheValidationWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3_959(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request ClusterCacheValidation %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125__VCPMediaAnalysisService_InternalTools__requestClusterCacheValidationWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_960;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __125__VCPMediaAnalysisService_InternalTools__requestClusterCacheValidationWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_960(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125__VCPMediaAnalysisService_InternalTools__requestClusterCacheValidationWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_2_961;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestResetFaceClusteringStateWithPhotoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__VCPMediaAnalysisService_InternalTools__requestResetFaceClusteringStateWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke;
  block[3] = &unk_1E834CC00;
  v19 = completionHandlerCopy;
  v20 = &v21;
  v17 = lCopy;
  v18 = handlerCopy;
  block[4] = self;
  v12 = lCopy;
  v13 = completionHandlerCopy;
  v14 = handlerCopy;
  dispatch_sync(managementQueue, block);
  LODWORD(lCopy) = *(v22 + 6);

  _Block_object_dispose(&v21, 8);
  return lCopy;
}

void __127__VCPMediaAnalysisService_InternalTools__requestResetFaceClusteringStateWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 64) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 48))
  {
    v5 = *(a1 + 48);
  }

  else
  {
    v5 = &__block_literal_global_963;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__VCPMediaAnalysisService_InternalTools__requestResetFaceClusteringStateWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v17 = *(a1 + 56);
  v8 = v17;
  v22 = v17;
  v9 = _Block_copy(aBlock);
  v10 = [*(a1 + 32) connection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];

  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(*(v13 + 8) + 24);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __127__VCPMediaAnalysisService_InternalTools__requestResetFaceClusteringStateWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3_966;
  v18[3] = &unk_1E834CBD8;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v20 = v13;
  v18[4] = v15;
  v19 = v12;
  [v11 requestResetFaceClusteringState:v14 withPhotoLibraryURL:v16 andReply:v18];
}

void __127__VCPMediaAnalysisService_InternalTools__requestResetFaceClusteringStateWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request ResetFaceClusteringState service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__VCPMediaAnalysisService_InternalTools__requestResetFaceClusteringStateWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_964;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __127__VCPMediaAnalysisService_InternalTools__requestResetFaceClusteringStateWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_964(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __127__VCPMediaAnalysisService_InternalTools__requestResetFaceClusteringStateWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_2_965;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __127__VCPMediaAnalysisService_InternalTools__requestResetFaceClusteringStateWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3_966(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v17 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request ResetFaceClusteringState %d has completed", buf, 8u);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__VCPMediaAnalysisService_InternalTools__requestResetFaceClusteringStateWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_967;
  block[3] = &unk_1E834CBB0;
  block[4] = v7;
  v11 = *(a1 + 40);
  v9 = v11;
  v14 = v11;
  v15 = a2;
  v13 = v5;
  v10 = v5;
  dispatch_async(v8, block);
}

void __127__VCPMediaAnalysisService_InternalTools__requestResetFaceClusteringStateWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_967(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__VCPMediaAnalysisService_InternalTools__requestResetFaceClusteringStateWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_2_968;
  block[3] = &unk_1E834CB88;
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v6 = *(a1 + 40);
  dispatch_async(v4, block);
}

- (int)requestReclusterFacesWithPhotoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__VCPMediaAnalysisService_InternalTools__requestReclusterFacesWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke;
  block[3] = &unk_1E834CC00;
  v19 = completionHandlerCopy;
  v20 = &v21;
  v17 = lCopy;
  v18 = handlerCopy;
  block[4] = self;
  v12 = lCopy;
  v13 = completionHandlerCopy;
  v14 = handlerCopy;
  dispatch_sync(managementQueue, block);
  LODWORD(lCopy) = *(v22 + 6);

  _Block_object_dispose(&v21, 8);
  return lCopy;
}

void __117__VCPMediaAnalysisService_InternalTools__requestReclusterFacesWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 64) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 48))
  {
    v5 = *(a1 + 48);
  }

  else
  {
    v5 = &__block_literal_global_970;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __117__VCPMediaAnalysisService_InternalTools__requestReclusterFacesWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v17 = *(a1 + 56);
  v8 = v17;
  v22 = v17;
  v9 = _Block_copy(aBlock);
  v10 = [*(a1 + 32) connection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];

  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(*(v13 + 8) + 24);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __117__VCPMediaAnalysisService_InternalTools__requestReclusterFacesWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3_973;
  v18[3] = &unk_1E834CBD8;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v20 = v13;
  v18[4] = v15;
  v19 = v12;
  [v11 requestReclusterFaces:v14 withPhotoLibraryURL:v16 andReply:v18];
}

void __117__VCPMediaAnalysisService_InternalTools__requestReclusterFacesWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request ReclusterFaces service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__VCPMediaAnalysisService_InternalTools__requestReclusterFacesWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_971;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __117__VCPMediaAnalysisService_InternalTools__requestReclusterFacesWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_971(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __117__VCPMediaAnalysisService_InternalTools__requestReclusterFacesWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_2_972;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __117__VCPMediaAnalysisService_InternalTools__requestReclusterFacesWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_3_973(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v17 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request ReclusterFaces %d has completed", buf, 8u);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__VCPMediaAnalysisService_InternalTools__requestReclusterFacesWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_974;
  block[3] = &unk_1E834CBB0;
  block[4] = v7;
  v11 = *(a1 + 40);
  v9 = v11;
  v14 = v11;
  v15 = a2;
  v13 = v5;
  v10 = v5;
  dispatch_async(v8, block);
}

void __117__VCPMediaAnalysisService_InternalTools__requestReclusterFacesWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_974(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__VCPMediaAnalysisService_InternalTools__requestReclusterFacesWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke_2_975;
  block[3] = &unk_1E834CB88;
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v6 = *(a1 + 40);
  dispatch_async(v4, block);
}

- (int)requestRebuildPersonsWithLocalIdentifiers:(id)identifiers photoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  identifiersCopy = identifiers;
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  managementQueue = self->_managementQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __134__VCPMediaAnalysisService_InternalTools__requestRebuildPersonsWithLocalIdentifiers_photoLibraryURL_progressHandler_completionHandler___block_invoke;
  v20[3] = &unk_1E834C750;
  v24 = completionHandlerCopy;
  v25 = &v26;
  v20[4] = self;
  v21 = identifiersCopy;
  v22 = lCopy;
  v23 = handlerCopy;
  v15 = lCopy;
  v16 = identifiersCopy;
  v17 = completionHandlerCopy;
  v18 = handlerCopy;
  dispatch_sync(managementQueue, v20);
  LODWORD(self) = *(v27 + 6);

  _Block_object_dispose(&v26, 8);
  return self;
}

void __134__VCPMediaAnalysisService_InternalTools__requestRebuildPersonsWithLocalIdentifiers_photoLibraryURL_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 72) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 56))
  {
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = &__block_literal_global_977;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 72) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __134__VCPMediaAnalysisService_InternalTools__requestRebuildPersonsWithLocalIdentifiers_photoLibraryURL_progressHandler_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v18 = *(a1 + 64);
  v8 = v18;
  v23 = v18;
  v9 = _Block_copy(aBlock);
  v10 = [*(a1 + 32) connection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];

  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(*(v13 + 8) + 24);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __134__VCPMediaAnalysisService_InternalTools__requestRebuildPersonsWithLocalIdentifiers_photoLibraryURL_progressHandler_completionHandler___block_invoke_3_980;
  v19[3] = &unk_1E834CBD8;
  v17 = *(a1 + 32);
  v21 = v13;
  v19[4] = v17;
  v20 = v12;
  [v11 requestRebuildPersons:v14 withLocalIdentifiers:v15 andPhotoLibraryURL:v16 andReply:v19];
}

void __134__VCPMediaAnalysisService_InternalTools__requestRebuildPersonsWithLocalIdentifiers_photoLibraryURL_progressHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request RebuildPersons service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __134__VCPMediaAnalysisService_InternalTools__requestRebuildPersonsWithLocalIdentifiers_photoLibraryURL_progressHandler_completionHandler___block_invoke_978;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __134__VCPMediaAnalysisService_InternalTools__requestRebuildPersonsWithLocalIdentifiers_photoLibraryURL_progressHandler_completionHandler___block_invoke_978(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __134__VCPMediaAnalysisService_InternalTools__requestRebuildPersonsWithLocalIdentifiers_photoLibraryURL_progressHandler_completionHandler___block_invoke_2_979;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __134__VCPMediaAnalysisService_InternalTools__requestRebuildPersonsWithLocalIdentifiers_photoLibraryURL_progressHandler_completionHandler___block_invoke_3_980(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v17 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request RebuildPersons %d has completed", buf, 8u);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __134__VCPMediaAnalysisService_InternalTools__requestRebuildPersonsWithLocalIdentifiers_photoLibraryURL_progressHandler_completionHandler___block_invoke_981;
  block[3] = &unk_1E834CBB0;
  block[4] = v7;
  v11 = *(a1 + 40);
  v9 = v11;
  v14 = v11;
  v15 = a2;
  v13 = v5;
  v10 = v5;
  dispatch_async(v8, block);
}

void __134__VCPMediaAnalysisService_InternalTools__requestRebuildPersonsWithLocalIdentifiers_photoLibraryURL_progressHandler_completionHandler___block_invoke_981(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __134__VCPMediaAnalysisService_InternalTools__requestRebuildPersonsWithLocalIdentifiers_photoLibraryURL_progressHandler_completionHandler___block_invoke_2_982;
  block[3] = &unk_1E834CB88;
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v6 = *(a1 + 40);
  dispatch_async(v4, block);
}

- (int)queryAutoCounterOptInStatusForPhotoLibraryURL:(id)l withPersonLocalIdentifiers:(id)identifiers completionHandler:(id)handler
{
  lCopy = l;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __133__VCPMediaAnalysisService_InternalTools__queryAutoCounterOptInStatusForPhotoLibraryURL_withPersonLocalIdentifiers_completionHandler___block_invoke;
  block[3] = &unk_1E834C868;
  v19 = handlerCopy;
  v20 = &v21;
  block[4] = self;
  v17 = lCopy;
  v18 = identifiersCopy;
  v12 = identifiersCopy;
  v13 = lCopy;
  v14 = handlerCopy;
  dispatch_sync(managementQueue, block);
  LODWORD(lCopy) = *(v22 + 6);

  _Block_object_dispose(&v21, 8);
  return lCopy;
}

void __133__VCPMediaAnalysisService_InternalTools__queryAutoCounterOptInStatusForPhotoLibraryURL_withPersonLocalIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 64) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v4 setObject:&__block_literal_global_984 forKey:v5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __133__VCPMediaAnalysisService_InternalTools__queryAutoCounterOptInStatusForPhotoLibraryURL_withPersonLocalIdentifiers_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v16 = *(a1 + 56);
  v6 = v16;
  v21 = v16;
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 32) connection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:v7];

  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(*(v11 + 8) + 24);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __133__VCPMediaAnalysisService_InternalTools__queryAutoCounterOptInStatusForPhotoLibraryURL_withPersonLocalIdentifiers_completionHandler___block_invoke_3_987;
  v17[3] = &unk_1E834C5C0;
  v15 = *(a1 + 32);
  v19 = v11;
  v17[4] = v15;
  v18 = v10;
  [v9 queryAutoCounterOptInStatus:v12 withPhotoLibraryURL:v13 personLocalIdentifiers:v14 andReply:v17];
}

void __133__VCPMediaAnalysisService_InternalTools__queryAutoCounterOptInStatusForPhotoLibraryURL_withPersonLocalIdentifiers_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to query AutoCounter Opt-In status service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __133__VCPMediaAnalysisService_InternalTools__queryAutoCounterOptInStatusForPhotoLibraryURL_withPersonLocalIdentifiers_completionHandler___block_invoke_985;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __133__VCPMediaAnalysisService_InternalTools__queryAutoCounterOptInStatusForPhotoLibraryURL_withPersonLocalIdentifiers_completionHandler___block_invoke_985(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __133__VCPMediaAnalysisService_InternalTools__queryAutoCounterOptInStatusForPhotoLibraryURL_withPersonLocalIdentifiers_completionHandler___block_invoke_2_986;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __133__VCPMediaAnalysisService_InternalTools__queryAutoCounterOptInStatusForPhotoLibraryURL_withPersonLocalIdentifiers_completionHandler___block_invoke_3_987(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Query AutoCounter Opt-In status %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __133__VCPMediaAnalysisService_InternalTools__queryAutoCounterOptInStatusForPhotoLibraryURL_withPersonLocalIdentifiers_completionHandler___block_invoke_988;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __133__VCPMediaAnalysisService_InternalTools__queryAutoCounterOptInStatusForPhotoLibraryURL_withPersonLocalIdentifiers_completionHandler___block_invoke_988(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __133__VCPMediaAnalysisService_InternalTools__queryAutoCounterOptInStatusForPhotoLibraryURL_withPersonLocalIdentifiers_completionHandler___block_invoke_2_989;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestOptInAutoCounterForPhotoLibraryURL:(id)l withPersons:(id)persons completionHandler:(id)handler
{
  lCopy = l;
  personsCopy = persons;
  handlerCopy = handler;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__VCPMediaAnalysisService_InternalTools__requestOptInAutoCounterForPhotoLibraryURL_withPersons_completionHandler___block_invoke;
  block[3] = &unk_1E834C868;
  v19 = handlerCopy;
  v20 = &v21;
  block[4] = self;
  v17 = lCopy;
  v18 = personsCopy;
  v12 = personsCopy;
  v13 = lCopy;
  v14 = handlerCopy;
  dispatch_sync(managementQueue, block);
  LODWORD(lCopy) = *(v22 + 6);

  _Block_object_dispose(&v21, 8);
  return lCopy;
}

void __114__VCPMediaAnalysisService_InternalTools__requestOptInAutoCounterForPhotoLibraryURL_withPersons_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 64) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v4 setObject:&__block_literal_global_991 forKey:v5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __114__VCPMediaAnalysisService_InternalTools__requestOptInAutoCounterForPhotoLibraryURL_withPersons_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v16 = *(a1 + 56);
  v6 = v16;
  v21 = v16;
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 32) connection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:v7];

  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(*(v11 + 8) + 24);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __114__VCPMediaAnalysisService_InternalTools__requestOptInAutoCounterForPhotoLibraryURL_withPersons_completionHandler___block_invoke_3_994;
  v17[3] = &unk_1E834C5C0;
  v15 = *(a1 + 32);
  v19 = v11;
  v17[4] = v15;
  v18 = v10;
  [v9 requestOptInAutoCounter:v12 withPhotoLibraryURL:v13 persons:v14 andReply:v17];
}

void __114__VCPMediaAnalysisService_InternalTools__requestOptInAutoCounterForPhotoLibraryURL_withPersons_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request Opt-In AutoCounter", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__VCPMediaAnalysisService_InternalTools__requestOptInAutoCounterForPhotoLibraryURL_withPersons_completionHandler___block_invoke_992;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __114__VCPMediaAnalysisService_InternalTools__requestOptInAutoCounterForPhotoLibraryURL_withPersons_completionHandler___block_invoke_992(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __114__VCPMediaAnalysisService_InternalTools__requestOptInAutoCounterForPhotoLibraryURL_withPersons_completionHandler___block_invoke_2_993;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __114__VCPMediaAnalysisService_InternalTools__requestOptInAutoCounterForPhotoLibraryURL_withPersons_completionHandler___block_invoke_3_994(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request Opt-In AutoCounter %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__VCPMediaAnalysisService_InternalTools__requestOptInAutoCounterForPhotoLibraryURL_withPersons_completionHandler___block_invoke_995;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __114__VCPMediaAnalysisService_InternalTools__requestOptInAutoCounterForPhotoLibraryURL_withPersons_completionHandler___block_invoke_995(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__VCPMediaAnalysisService_InternalTools__requestOptInAutoCounterForPhotoLibraryURL_withPersons_completionHandler___block_invoke_2_996;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestDumpAutoCounterForPhotoLibraryURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  managementQueue = self->_managementQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __101__VCPMediaAnalysisService_InternalTools__requestDumpAutoCounterForPhotoLibraryURL_completionHandler___block_invoke;
  v12[3] = &unk_1E834C840;
  v14 = handlerCopy;
  v15 = &v16;
  v12[4] = self;
  v13 = lCopy;
  v9 = lCopy;
  v10 = handlerCopy;
  dispatch_sync(managementQueue, v12);
  LODWORD(lCopy) = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  return lCopy;
}

void __101__VCPMediaAnalysisService_InternalTools__requestDumpAutoCounterForPhotoLibraryURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 56) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v4 setObject:&__block_literal_global_998 forKey:v5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__VCPMediaAnalysisService_InternalTools__requestDumpAutoCounterForPhotoLibraryURL_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v15 = *(a1 + 48);
  v6 = v15;
  v20 = v15;
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 32) connection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:v7];

  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(*(v11 + 8) + 24);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __101__VCPMediaAnalysisService_InternalTools__requestDumpAutoCounterForPhotoLibraryURL_completionHandler___block_invoke_3_1001;
  v16[3] = &unk_1E834C5C0;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v18 = v11;
  v16[4] = v13;
  v17 = v10;
  [v9 requestDumpAutoCounter:v12 withPhotoLibraryURL:v14 andReply:v16];
}

void __101__VCPMediaAnalysisService_InternalTools__requestDumpAutoCounterForPhotoLibraryURL_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request AutoCounter dump", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__VCPMediaAnalysisService_InternalTools__requestDumpAutoCounterForPhotoLibraryURL_completionHandler___block_invoke_999;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __101__VCPMediaAnalysisService_InternalTools__requestDumpAutoCounterForPhotoLibraryURL_completionHandler___block_invoke_999(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __101__VCPMediaAnalysisService_InternalTools__requestDumpAutoCounterForPhotoLibraryURL_completionHandler___block_invoke_2_1000;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __101__VCPMediaAnalysisService_InternalTools__requestDumpAutoCounterForPhotoLibraryURL_completionHandler___block_invoke_3_1001(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request AutoCounter dump %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__VCPMediaAnalysisService_InternalTools__requestDumpAutoCounterForPhotoLibraryURL_completionHandler___block_invoke_1002;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __101__VCPMediaAnalysisService_InternalTools__requestDumpAutoCounterForPhotoLibraryURL_completionHandler___block_invoke_1002(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__VCPMediaAnalysisService_InternalTools__requestDumpAutoCounterForPhotoLibraryURL_completionHandler___block_invoke_2_1003;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestAutoCounterAccuracyCalculationForPhotoLibraryURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  managementQueue = self->_managementQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __116__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_completionHandler___block_invoke;
  v12[3] = &unk_1E834C840;
  v14 = handlerCopy;
  v15 = &v16;
  v12[4] = self;
  v13 = lCopy;
  v9 = lCopy;
  v10 = handlerCopy;
  dispatch_sync(managementQueue, v12);
  LODWORD(lCopy) = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  return lCopy;
}

void __116__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 56) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v4 setObject:&__block_literal_global_1005 forKey:v5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __116__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v15 = *(a1 + 48);
  v6 = v15;
  v20 = v15;
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 32) connection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:v7];

  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(*(v11 + 8) + 24);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __116__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_completionHandler___block_invoke_3_1008;
  v16[3] = &unk_1E834C5C0;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v18 = v11;
  v16[4] = v13;
  v17 = v10;
  [v9 requestAutoCounterAccuracyCalculation:v12 withPhotoLibraryURL:v14 andReply:v16];
}

void __116__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request AutoCounter calculation", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __116__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_completionHandler___block_invoke_1006;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __116__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_completionHandler___block_invoke_1006(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __116__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_completionHandler___block_invoke_2_1007;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __116__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_completionHandler___block_invoke_3_1008(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request AutoCounter calculation %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __116__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_completionHandler___block_invoke_1009;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __116__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_completionHandler___block_invoke_1009(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __116__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_completionHandler___block_invoke_2_1010;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestAutoCounterAccuracyCalculationForPhotoLibraryURL:(id)l clusterStateURL:(id)rL groundTruthURL:(id)uRL completionHandler:(id)handler
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  handlerCopy = handler;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  managementQueue = self->_managementQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __147__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_clusterStateURL_groundTruthURL_completionHandler___block_invoke;
  v20[3] = &unk_1E834CC50;
  v24 = handlerCopy;
  v25 = &v26;
  v20[4] = self;
  v21 = lCopy;
  v22 = rLCopy;
  v23 = uRLCopy;
  v15 = uRLCopy;
  v16 = rLCopy;
  v17 = lCopy;
  v18 = handlerCopy;
  dispatch_sync(managementQueue, v20);
  LODWORD(self) = *(v27 + 6);

  _Block_object_dispose(&v26, 8);
  return self;
}

void __147__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_clusterStateURL_groundTruthURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 72) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 72) + 8) + 24)];
  [v4 setObject:&__block_literal_global_1012 forKey:v5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __147__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_clusterStateURL_groundTruthURL_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v17 = *(a1 + 64);
  v6 = v17;
  v22 = v17;
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 32) connection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:v7];

  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(*(v11 + 8) + 24);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __147__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_clusterStateURL_groundTruthURL_completionHandler___block_invoke_3_1015;
  v18[3] = &unk_1E834C5C0;
  v16 = *(a1 + 32);
  v20 = v11;
  v18[4] = v16;
  v19 = v10;
  [v9 requestAutoCounterAccuracyCalculation:v12 withPhotoLibraryURL:v13 clusterStateURL:v14 groundTruthURL:v15 andReply:v18];
}

void __147__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_clusterStateURL_groundTruthURL_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request AutoCounter calculation", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __147__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_clusterStateURL_groundTruthURL_completionHandler___block_invoke_1013;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __147__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_clusterStateURL_groundTruthURL_completionHandler___block_invoke_1013(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __147__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_clusterStateURL_groundTruthURL_completionHandler___block_invoke_2_1014;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __147__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_clusterStateURL_groundTruthURL_completionHandler___block_invoke_3_1015(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request AutoCounter calculation %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __147__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_clusterStateURL_groundTruthURL_completionHandler___block_invoke_1016;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __147__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_clusterStateURL_groundTruthURL_completionHandler___block_invoke_1016(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __147__VCPMediaAnalysisService_InternalTools__requestAutoCounterAccuracyCalculationForPhotoLibraryURL_clusterStateURL_groundTruthURL_completionHandler___block_invoke_2_1017;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestAutoCounterSIMLValidationForPhotoLibraryURL:(id)l simlGroundTruthURL:(id)rL completionHandler:(id)handler
{
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __130__VCPMediaAnalysisService_InternalTools__requestAutoCounterSIMLValidationForPhotoLibraryURL_simlGroundTruthURL_completionHandler___block_invoke;
  block[3] = &unk_1E834C868;
  v19 = handlerCopy;
  v20 = &v21;
  block[4] = self;
  v17 = lCopy;
  v18 = rLCopy;
  v12 = rLCopy;
  v13 = lCopy;
  v14 = handlerCopy;
  dispatch_sync(managementQueue, block);
  LODWORD(lCopy) = *(v22 + 6);

  _Block_object_dispose(&v21, 8);
  return lCopy;
}

void __130__VCPMediaAnalysisService_InternalTools__requestAutoCounterSIMLValidationForPhotoLibraryURL_simlGroundTruthURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 64) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v4 setObject:&__block_literal_global_1019 forKey:v5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __130__VCPMediaAnalysisService_InternalTools__requestAutoCounterSIMLValidationForPhotoLibraryURL_simlGroundTruthURL_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E834C548;
  aBlock[4] = *(a1 + 32);
  v16 = *(a1 + 56);
  v6 = v16;
  v21 = v16;
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 32) connection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:v7];

  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(*(v11 + 8) + 24);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __130__VCPMediaAnalysisService_InternalTools__requestAutoCounterSIMLValidationForPhotoLibraryURL_simlGroundTruthURL_completionHandler___block_invoke_3_1022;
  v17[3] = &unk_1E834C5C0;
  v15 = *(a1 + 32);
  v19 = v11;
  v17[4] = v15;
  v18 = v10;
  [v9 requestAutoCounterSIMLValidation:v12 withPhotoLibraryURL:v13 simlGroundTruthURL:v14 andReply:v17];
}

void __130__VCPMediaAnalysisService_InternalTools__requestAutoCounterSIMLValidationForPhotoLibraryURL_simlGroundTruthURL_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to request AutoCounter calculation", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __130__VCPMediaAnalysisService_InternalTools__requestAutoCounterSIMLValidationForPhotoLibraryURL_simlGroundTruthURL_completionHandler___block_invoke_1020;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __130__VCPMediaAnalysisService_InternalTools__requestAutoCounterSIMLValidationForPhotoLibraryURL_simlGroundTruthURL_completionHandler___block_invoke_1020(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __130__VCPMediaAnalysisService_InternalTools__requestAutoCounterSIMLValidationForPhotoLibraryURL_simlGroundTruthURL_completionHandler___block_invoke_2_1021;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __130__VCPMediaAnalysisService_InternalTools__requestAutoCounterSIMLValidationForPhotoLibraryURL_simlGroundTruthURL_completionHandler___block_invoke_3_1022(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request AutoCounter SIML validation %d has completed", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __130__VCPMediaAnalysisService_InternalTools__requestAutoCounterSIMLValidationForPhotoLibraryURL_simlGroundTruthURL_completionHandler___block_invoke_1023;
  block[3] = &unk_1E834C598;
  block[4] = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v15 = v5;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void __130__VCPMediaAnalysisService_InternalTools__requestAutoCounterSIMLValidationForPhotoLibraryURL_simlGroundTruthURL_completionHandler___block_invoke_1023(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __130__VCPMediaAnalysisService_InternalTools__requestAutoCounterSIMLValidationForPhotoLibraryURL_simlGroundTruthURL_completionHandler___block_invoke_2_1024;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestIdentificationOfFaces:(id)faces withCompletionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  handlerCopy = handler;
  v8 = [facesCopy count];
  if (handlerCopy && v8)
  {
    array = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = facesCopy;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    selfCopy = self;
    photoLibrary2 = 0;
    if (v11)
    {
      v13 = *v34;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          if (photoLibrary2)
          {
            photoLibrary = [*(*(&v33 + 1) + 8 * i) photoLibrary];
            v17 = photoLibrary2 == photoLibrary;

            if (!v17)
            {
              v21 = MediaAnalysisLogLevel();
              if (v21 >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Faces must all be from the same Photo Library", buf, 2u);
              }

              v20 = 0;
              goto LABEL_23;
            }
          }

          else
          {
            photoLibrary2 = [*(*(&v33 + 1) + 8 * i) photoLibrary];
          }

          localIdentifier = [v15 localIdentifier];
          [array addObject:localIdentifier];
        }

        v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    *buf = 0;
    v30 = buf;
    v31 = 0x2020000000;
    v32 = 0;
    managementQueue = selfCopy->_managementQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__VCPMediaAnalysisService_Hubble__requestIdentificationOfFaces_withCompletionHandler___block_invoke;
    block[3] = &unk_1E834C868;
    v28 = buf;
    block[4] = selfCopy;
    v27 = handlerCopy;
    v25 = array;
    photoLibrary2 = photoLibrary2;
    v26 = photoLibrary2;
    dispatch_sync(managementQueue, block);
    v20 = *(v30 + 6);

    _Block_object_dispose(buf, 8);
LABEL_23:
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Faces must be non-empty and completion block must be non-nil", buf, 2u);
    }

    v20 = 0;
  }

  return v20;
}

void __86__VCPMediaAnalysisService_Hubble__requestIdentificationOfFaces_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 64) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v4 setObject:&__block_literal_global_1037 forKey:v5];

  v6 = [*(a1 + 32) connection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__VCPMediaAnalysisService_Hubble__requestIdentificationOfFaces_withCompletionHandler___block_invoke_3;
  v18[3] = &unk_1E834C548;
  v18[4] = *(a1 + 32);
  v14 = *(a1 + 56);
  v7 = v14;
  v19 = v14;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v18];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 48) photoLibraryURL];
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(*(v12 + 8) + 24);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__VCPMediaAnalysisService_Hubble__requestIdentificationOfFaces_withCompletionHandler___block_invoke_3_1040;
  v15[3] = &unk_1E834C8B8;
  v15[4] = *(a1 + 32);
  v17 = v12;
  v16 = v11;
  [v8 requestIdentificationOfFacesWithLocalIdentifiers:v9 fromPhotoLibraryWithURL:v10 withRequestID:v13 andReply:v15];
}

void __86__VCPMediaAnalysisService_Hubble__requestIdentificationOfFaces_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to Media Analysis", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__VCPMediaAnalysisService_Hubble__requestIdentificationOfFaces_withCompletionHandler___block_invoke_1038;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __86__VCPMediaAnalysisService_Hubble__requestIdentificationOfFaces_withCompletionHandler___block_invoke_1038(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__VCPMediaAnalysisService_Hubble__requestIdentificationOfFaces_withCompletionHandler___block_invoke_2_1039;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __86__VCPMediaAnalysisService_Hubble__requestIdentificationOfFaces_withCompletionHandler___block_invoke_3_1040(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__VCPMediaAnalysisService_Hubble__requestIdentificationOfFaces_withCompletionHandler___block_invoke_4;
  block[3] = &unk_1E834C598;
  block[4] = v7;
  v12 = *(a1 + 40);
  v9 = v12;
  v16 = v12;
  v14 = v5;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __86__VCPMediaAnalysisService_Hubble__requestIdentificationOfFaces_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__VCPMediaAnalysisService_Hubble__requestIdentificationOfFaces_withCompletionHandler___block_invoke_5;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestProcessingTypes:(unint64_t)types forAssetsWithLocalIdentifiers:(id)identifiers fromPhotoLibraryWithURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  identifiersCopy = identifiers;
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (types && (v16 = [identifiersCopy count], completionHandlerCopy) && lCopy && v16)
  {
    v17 = [MEMORY[0x1E695DFD8] setWithArray:identifiersCopy];
    v18 = MEMORY[0x1E6978628];
    v19 = [MEMORY[0x1E6978628] uuidsFromLocalIdentifiers:v17];
    v20 = [v18 localIdentifiersWithUUIDs:v19];

    if ([v20 count])
    {
      *buf = 0;
      v32 = buf;
      v33 = 0x2020000000;
      v34 = 0;
      managementQueue = self->_managementQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __146__VCPMediaAnalysisService_Hubble__requestProcessingTypes_forAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_progressHandler_completionHandler___block_invoke;
      block[3] = &unk_1E834C6D8;
      v29 = buf;
      block[4] = self;
      v27 = handlerCopy;
      v28 = completionHandlerCopy;
      typesCopy = types;
      v25 = v20;
      v26 = lCopy;
      dispatch_sync(managementQueue, block);
      v22 = *(v32 + 6);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Failed: empty asset localIdentifiers.", buf, 2u);
      }

      v22 = 0;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] nil specified for non-nullable parameter", buf, 2u);
    }

    v22 = 0;
  }

  return v22;
}

void __146__VCPMediaAnalysisService_Hubble__requestProcessingTypes_forAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 72) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 56))
  {
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = &__block_literal_global_1043;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 72) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  v8 = [*(a1 + 32) connection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __146__VCPMediaAnalysisService_Hubble__requestProcessingTypes_forAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_progressHandler_completionHandler___block_invoke_3;
  v21[3] = &unk_1E834C548;
  v21[4] = *(a1 + 32);
  v17 = *(a1 + 64);
  v9 = v17;
  v22 = v17;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v21];
  v11 = *(a1 + 80);
  v12 = [*(a1 + 40) allObjects];
  v13 = *(a1 + 48);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(*(v15 + 8) + 24);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __146__VCPMediaAnalysisService_Hubble__requestProcessingTypes_forAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_progressHandler_completionHandler___block_invoke_3_1046;
  v18[3] = &unk_1E834C548;
  v18[4] = *(a1 + 32);
  v20 = v15;
  v19 = v14;
  [v10 requestProcessingTypes:v11 forAssetsWithLocalIdentifiers:v12 fromPhotoLibraryWithURL:v13 withRequestID:v16 andReply:v18];
}

void __146__VCPMediaAnalysisService_Hubble__requestProcessingTypes_forAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_progressHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to Media Analysis", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __146__VCPMediaAnalysisService_Hubble__requestProcessingTypes_forAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_progressHandler_completionHandler___block_invoke_1044;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __146__VCPMediaAnalysisService_Hubble__requestProcessingTypes_forAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_progressHandler_completionHandler___block_invoke_1044(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __146__VCPMediaAnalysisService_Hubble__requestProcessingTypes_forAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_progressHandler_completionHandler___block_invoke_2_1045;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __146__VCPMediaAnalysisService_Hubble__requestProcessingTypes_forAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_progressHandler_completionHandler___block_invoke_3_1046(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __146__VCPMediaAnalysisService_Hubble__requestProcessingTypes_forAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_progressHandler_completionHandler___block_invoke_4;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __146__VCPMediaAnalysisService_Hubble__requestProcessingTypes_forAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_progressHandler_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __146__VCPMediaAnalysisService_Hubble__requestProcessingTypes_forAssetsWithLocalIdentifiers_fromPhotoLibraryWithURL_progressHandler_completionHandler___block_invoke_5;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

- (int)downloadVideoEncoderWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__VCPMediaAnalysisService_Accessibility__downloadVideoEncoderWithCompletionHandler___block_invoke;
  block[3] = &unk_1E834CA68;
  v9 = handlerCopy;
  v10 = &v11;
  block[4] = self;
  v6 = handlerCopy;
  dispatch_sync(managementQueue, block);
  LODWORD(managementQueue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return managementQueue;
}

void __84__VCPMediaAnalysisService_Accessibility__downloadVideoEncoderWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 48) + 8) + 24) = v3;
  v4 = [*(a1 + 32) connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__VCPMediaAnalysisService_Accessibility__downloadVideoEncoderWithCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E834C548;
  v12[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v8;
  v13 = v8;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__VCPMediaAnalysisService_Accessibility__downloadVideoEncoderWithCompletionHandler___block_invoke_3;
  v10[3] = &unk_1E834C548;
  v10[4] = *(a1 + 32);
  v9 = *(a1 + 40);
  v7 = v9;
  v11 = v9;
  [v6 downloadVideoEncoderIfNeededWithReply:v10];
}

void __84__VCPMediaAnalysisService_Accessibility__downloadVideoEncoderWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to Media Analysis", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__VCPMediaAnalysisService_Accessibility__downloadVideoEncoderWithCompletionHandler___block_invoke_1050;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __84__VCPMediaAnalysisService_Accessibility__downloadVideoEncoderWithCompletionHandler___block_invoke_1050(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__VCPMediaAnalysisService_Accessibility__downloadVideoEncoderWithCompletionHandler___block_invoke_2_1051;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __84__VCPMediaAnalysisService_Accessibility__downloadVideoEncoderWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__VCPMediaAnalysisService_Accessibility__downloadVideoEncoderWithCompletionHandler___block_invoke_4;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __84__VCPMediaAnalysisService_Accessibility__downloadVideoEncoderWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__VCPMediaAnalysisService_Accessibility__downloadVideoEncoderWithCompletionHandler___block_invoke_5;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

+ (id)defaultDeferredProcessingTypes
{
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  [indexSet addIndex:2];
  [indexSet addIndex:8];

  return indexSet;
}

- (BOOL)requestDeferredProcessingTypes:(id)types assets:(id)assets error:(id *)error
{
  v58[1] = *MEMORY[0x1E69E9840];
  typesCopy = types;
  assetsCopy = assets;
  if ([typesCopy count] && objc_msgSend(assetsCopy, "count"))
  {
    *buf = 0;
    v49 = buf;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__5;
    v52 = __Block_byref_object_dispose__5;
    v53 = 0;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __80__VCPMediaAnalysisService_Moments__requestDeferredProcessingTypes_assets_error___block_invoke;
    v47[3] = &unk_1E834CC78;
    v47[4] = buf;
    [typesCopy enumerateIndexesUsingBlock:v47];
    v6 = *(v49 + 5);
    if (v6)
    {
      v7 = 0;
      *error = [v6 copy];
    }

    else
    {
      firstObject = [assetsCopy firstObject];
      photoLibrary = [firstObject photoLibrary];
      photoLibraryURL = [photoLibrary photoLibraryURL];

      v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(assetsCopy, "count")}];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = assetsCopy;
      v13 = [obj countByEnumeratingWithState:&v43 objects:v56 count:16];
      if (v13)
      {
        v14 = *v44;
        v15 = *MEMORY[0x1E696A768];
        v16 = *MEMORY[0x1E696A578];
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v44 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v43 + 1) + 8 * i);
            v19 = objc_autoreleasePoolPush();
            photoLibrary2 = [v18 photoLibrary];
            photoLibraryURL2 = [photoLibrary2 photoLibraryURL];
            v22 = [photoLibraryURL2 isEqual:photoLibraryURL];

            if (v22)
            {
              localIdentifier = [v18 localIdentifier];
              [v30 addObject:localIdentifier];
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *v37 = 0;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] All requested assets must come from the same photo library", v37, 2u);
              }

              v24 = MEMORY[0x1E696ABC0];
              v54 = v16;
              localIdentifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MediaAnalysis] All requested assets must come from the same photo library"];
              v55 = localIdentifier;
              v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
              *error = [v24 errorWithDomain:v15 code:-50 userInfo:v25];
            }

            objc_autoreleasePoolPop(v19);
            if (!v22)
            {

              v7 = 0;
              goto LABEL_25;
            }
          }

          v13 = [obj countByEnumeratingWithState:&v43 objects:v56 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      *v37 = 0;
      v38 = v37;
      v39 = 0x3032000000;
      v40 = __Block_byref_object_copy__5;
      v41 = __Block_byref_object_dispose__5;
      v42 = 0;
      connection = [(VCPMediaAnalysisService *)self connection];
      v27 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1067];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __80__VCPMediaAnalysisService_Moments__requestDeferredProcessingTypes_assets_error___block_invoke_1068;
      v36[3] = &unk_1E834CCA0;
      v36[4] = v37;
      [v27 requestDeferredProcessingTypes:typesCopy forAssetsWithLocalIdentifiers:v30 withPhotoLibraryURL:photoLibraryURL andReply:v36];

      *error = [*(v38 + 5) copy];
      v7 = *(v38 + 5) == 0;
      _Block_object_dispose(v37, 8);

LABEL_25:
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] nil specified for non-nullable parameter", buf, 2u);
    }

    v8 = MEMORY[0x1E696ABC0];
    v57 = *MEMORY[0x1E696A578];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MediaAnalysis] nil specified for non-nullable parameter"];
    v58[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    *error = [v8 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v10];

    v7 = 0;
  }

  return v7;
}

void __80__VCPMediaAnalysisService_Moments__requestDeferredProcessingTypes_assets_error___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 != 2 && a2 != 8)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v15 = a2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] Invalid deferred processing type %u specified", buf, 8u);
    }

    v6 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MediaAnalysis] Invalid deferred processing type %u specified", a2];
    v13 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v9 = [v6 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v8];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a3 = 1;
  }
}

void __80__VCPMediaAnalysisService_Moments__requestDeferredProcessingTypes_assets_error___block_invoke_1065(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to Media Analysis: %@", &v3, 0xCu);
  }
}

void __80__VCPMediaAnalysisService_Moments__requestDeferredProcessingTypes_assets_error___block_invoke_1068(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)assetsPendingDeferredProcessingWithPhotoLibraryURL:(id)l error:(id *)error
{
  lCopy = l;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  connection = [(VCPMediaAnalysisService *)self connection];
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1070];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__VCPMediaAnalysisService_Moments__assetsPendingDeferredProcessingWithPhotoLibraryURL_error___block_invoke_1071;
  v11[3] = &unk_1E834C890;
  v11[4] = &v18;
  v11[5] = &v12;
  [v8 queryAssetsPendingDeferredProcessingWithPhotoLibraryURL:lCopy andReply:v11];

  *error = [v13[5] copy];
  v9 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v9;
}

void __93__VCPMediaAnalysisService_Moments__assetsPendingDeferredProcessingWithPhotoLibraryURL_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to Media Analysis: %@", &v3, 0xCu);
  }
}

void __93__VCPMediaAnalysisService_Moments__assetsPendingDeferredProcessingWithPhotoLibraryURL_error___block_invoke_1071(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v12 copy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 copy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (int)requestForceDeferredProcessingWithProgessHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  managementQueue = self->_managementQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __106__VCPMediaAnalysisService_Moments__requestForceDeferredProcessingWithProgessHandler_andCompletionHandler___block_invoke;
  v12[3] = &unk_1E834CCC8;
  v12[4] = self;
  v13 = handlerCopy;
  v14 = completionHandlerCopy;
  v15 = &v16;
  v9 = completionHandlerCopy;
  v10 = handlerCopy;
  dispatch_sync(managementQueue, v12);
  LODWORD(managementQueue) = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  return managementQueue;
}

void __106__VCPMediaAnalysisService_Moments__requestForceDeferredProcessingWithProgessHandler_andCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 56) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 40))
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = &__block_literal_global_1073;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  v8 = [*(a1 + 32) connection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __106__VCPMediaAnalysisService_Moments__requestForceDeferredProcessingWithProgessHandler_andCompletionHandler___block_invoke_3;
  v19[3] = &unk_1E834C548;
  v19[4] = *(a1 + 32);
  v15 = *(a1 + 48);
  v9 = v15;
  v20 = v15;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v19];
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(*(v12 + 8) + 24);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __106__VCPMediaAnalysisService_Moments__requestForceDeferredProcessingWithProgessHandler_andCompletionHandler___block_invoke_3_1076;
  v16[3] = &unk_1E834C6B0;
  v14 = *(a1 + 32);
  v18 = v12;
  v16[4] = v14;
  v17 = v11;
  [v10 requestForceDeferredProcessing:v13 andReply:v16];
}

void __106__VCPMediaAnalysisService_Moments__requestForceDeferredProcessingWithProgessHandler_andCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to Media Analysis: %@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__VCPMediaAnalysisService_Moments__requestForceDeferredProcessingWithProgessHandler_andCompletionHandler___block_invoke_1074;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __106__VCPMediaAnalysisService_Moments__requestForceDeferredProcessingWithProgessHandler_andCompletionHandler___block_invoke_1074(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __106__VCPMediaAnalysisService_Moments__requestForceDeferredProcessingWithProgessHandler_andCompletionHandler___block_invoke_2_1075;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __106__VCPMediaAnalysisService_Moments__requestForceDeferredProcessingWithProgessHandler_andCompletionHandler___block_invoke_3_1076(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v14 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request %d has completed", buf, 8u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__VCPMediaAnalysisService_Moments__requestForceDeferredProcessingWithProgessHandler_andCompletionHandler___block_invoke_1077;
  block[3] = &unk_1E834C520;
  block[4] = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v11 = v3;
  v8 = v3;
  dispatch_async(v6, block);
}

void __106__VCPMediaAnalysisService_Moments__requestForceDeferredProcessingWithProgessHandler_andCompletionHandler___block_invoke_1077(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __106__VCPMediaAnalysisService_Moments__requestForceDeferredProcessingWithProgessHandler_andCompletionHandler___block_invoke_2_1078;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

- (int)requestStaticStickerScoringForLibrary:(id)library options:(id)options completionHandler:(id)handler
{
  libraryCopy = library;
  optionsCopy = options;
  handlerCopy = handler;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__VCPMediaAnalysisService_Stickers__requestStaticStickerScoringForLibrary_options_completionHandler___block_invoke;
  block[3] = &unk_1E834C868;
  v19 = handlerCopy;
  v20 = &v21;
  block[4] = self;
  v17 = libraryCopy;
  v18 = optionsCopy;
  v12 = optionsCopy;
  v13 = libraryCopy;
  v14 = handlerCopy;
  dispatch_sync(managementQueue, block);
  LODWORD(libraryCopy) = *(v22 + 6);

  _Block_object_dispose(&v21, 8);
  return libraryCopy;
}

void __101__VCPMediaAnalysisService_Stickers__requestStaticStickerScoringForLibrary_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 64) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v4 setObject:&__block_literal_global_1091 forKey:v5];

  v6 = [*(a1 + 32) connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __101__VCPMediaAnalysisService_Stickers__requestStaticStickerScoringForLibrary_options_completionHandler___block_invoke_3;
  v17[3] = &unk_1E834C548;
  v17[4] = *(a1 + 32);
  v13 = *(a1 + 56);
  v7 = v13;
  v18 = v13;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v17];
  v9 = *(*(*(a1 + 64) + 8) + 24);
  v10 = [*(a1 + 40) photoLibraryURL];
  v11 = *(a1 + 48);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __101__VCPMediaAnalysisService_Stickers__requestStaticStickerScoringForLibrary_options_completionHandler___block_invoke_3_1094;
  v15[3] = &unk_1E834C6B0;
  v15[4] = *(a1 + 32);
  v14 = *(a1 + 56);
  v12 = v14;
  v16 = v14;
  [v8 requestStaticStickerScoring:v9 photoLibraryURL:v10 options:v11 reply:v15];
}

void __101__VCPMediaAnalysisService_Stickers__requestStaticStickerScoringForLibrary_options_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to Media Analysis: %@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__VCPMediaAnalysisService_Stickers__requestStaticStickerScoringForLibrary_options_completionHandler___block_invoke_1092;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __101__VCPMediaAnalysisService_Stickers__requestStaticStickerScoringForLibrary_options_completionHandler___block_invoke_1092(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __101__VCPMediaAnalysisService_Stickers__requestStaticStickerScoringForLibrary_options_completionHandler___block_invoke_2_1093;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __101__VCPMediaAnalysisService_Stickers__requestStaticStickerScoringForLibrary_options_completionHandler___block_invoke_3_1094(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = *(*(*(a1 + 48) + 8) + 24);
      v5 = [v3 description];
      *buf = 67109378;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis] Sticker score request %d failed (%@)", buf, 0x12u);
    }
  }

  else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v16 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Sticker score request %d completed", buf, 8u);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__VCPMediaAnalysisService_Stickers__requestStaticStickerScoringForLibrary_options_completionHandler___block_invoke_1095;
  block[3] = &unk_1E834C520;
  block[4] = v7;
  v11 = *(a1 + 40);
  v9 = v11;
  v14 = v11;
  v13 = v3;
  v10 = v3;
  dispatch_async(v8, block);
}

void __101__VCPMediaAnalysisService_Stickers__requestStaticStickerScoringForLibrary_options_completionHandler___block_invoke_1095(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __101__VCPMediaAnalysisService_Stickers__requestStaticStickerScoringForLibrary_options_completionHandler___block_invoke_2_1096;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

- (int)requestOTAMaintenanceWithOptions:(id)options progessHandler:(id)handler completionHandler:(id)completionHandler
{
  v26 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"[RequestOTAMaintenance]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Queuing request ...", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x2020000000;
  v25 = 0;
  managementQueue = self->_managementQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __98__VCPMediaAnalysisService_OTA__requestOTAMaintenanceWithOptions_progessHandler_completionHandler___block_invoke;
  v17[3] = &unk_1E834CD48;
  v17[4] = self;
  v18 = @"[RequestOTAMaintenance]";
  v21 = completionHandlerCopy;
  p_buf = &buf;
  v19 = optionsCopy;
  v20 = handlerCopy;
  v12 = optionsCopy;
  v13 = completionHandlerCopy;
  v14 = handlerCopy;
  dispatch_sync(managementQueue, v17);
  v15 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  return v15;
}

void __98__VCPMediaAnalysisService_OTA__requestOTAMaintenanceWithOptions_progessHandler_completionHandler___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 72) + 8) + 24) = v3;
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = *(*(*(a1 + 72) + 8) + 24);
    *buf = 138412546;
    v31 = v4;
    v32 = 1024;
    v33 = v5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Starting Request %d", buf, 0x12u);
  }

  v6 = *(*(a1 + 32) + 32);
  if (*(a1 + 56))
  {
    v7 = *(a1 + 56);
  }

  else
  {
    v7 = &__block_literal_global_1104;
  }

  v8 = _Block_copy(v7);
  v9 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 72) + 8) + 24)];
  [v6 setObject:v8 forKey:v9];

  v10 = [*(a1 + 32) connection];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __98__VCPMediaAnalysisService_OTA__requestOTAMaintenanceWithOptions_progessHandler_completionHandler___block_invoke_2;
  v26[3] = &unk_1E834CCF8;
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  v27 = v11;
  v28 = v12;
  v20 = *(a1 + 64);
  v13 = v20;
  v29 = v20;
  v14 = [v10 remoteObjectProxyWithErrorHandler:v26];
  v15 = *(*(*(a1 + 72) + 8) + 24);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __98__VCPMediaAnalysisService_OTA__requestOTAMaintenanceWithOptions_progessHandler_completionHandler___block_invoke_3;
  v22[3] = &unk_1E834CD20;
  v16 = *(a1 + 48);
  v17 = *(a1 + 40);
  v18 = *(a1 + 32);
  v23 = v17;
  v24 = v18;
  v21 = *(a1 + 64);
  v19 = v21;
  v25 = v21;
  [v14 requestOTAMaintenance:v15 options:v16 reply:v22];
}

void __98__VCPMediaAnalysisService_OTA__requestOTAMaintenanceWithOptions_progessHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    *buf = 138412546;
    v14 = v4;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Error connecting to MAD: %@", buf, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__VCPMediaAnalysisService_OTA__requestOTAMaintenanceWithOptions_progessHandler_completionHandler___block_invoke_1105;
  block[3] = &unk_1E834C520;
  block[4] = v5;
  v9 = *(a1 + 48);
  v7 = v9;
  v12 = v9;
  v11 = v3;
  v8 = v3;
  dispatch_async(v6, block);
}

void __98__VCPMediaAnalysisService_OTA__requestOTAMaintenanceWithOptions_progessHandler_completionHandler___block_invoke_1105(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __98__VCPMediaAnalysisService_OTA__requestOTAMaintenanceWithOptions_progessHandler_completionHandler___block_invoke_2_1106;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __98__VCPMediaAnalysisService_OTA__requestOTAMaintenanceWithOptions_progessHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(*(*(a1 + 56) + 8) + 24);
    *buf = 138412546;
    v15 = v4;
    v16 = 1024;
    v17 = v5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Request %d has completed", buf, 0x12u);
  }

  v6 = *(a1 + 40);
  v7 = *(v6 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__VCPMediaAnalysisService_OTA__requestOTAMaintenanceWithOptions_progessHandler_completionHandler___block_invoke_1107;
  block[3] = &unk_1E834C520;
  block[4] = v6;
  v10 = *(a1 + 48);
  v8 = v10;
  v13 = v10;
  v12 = v3;
  v9 = v3;
  dispatch_async(v7, block);
}

void __98__VCPMediaAnalysisService_OTA__requestOTAMaintenanceWithOptions_progessHandler_completionHandler___block_invoke_1107(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __98__VCPMediaAnalysisService_OTA__requestOTAMaintenanceWithOptions_progessHandler_completionHandler___block_invoke_2_1108;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

+ (BOOL)isEntitled
{
  if (+[VCPMediaAnalysisService(DataStore) isEntitled]::onceToken != -1)
  {
    +[VCPMediaAnalysisService(DataStore) isEntitled];
  }

  return +[VCPMediaAnalysisService(DataStore) isEntitled]::entitled;
}

const void **__48__VCPMediaAnalysisService_DataStore__isEntitled__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = SecTaskCreateFromSelf(0);
  v6 = v0;
  if (v0)
  {
    v1 = SecTaskCopyValueForEntitlement(v0, @"com.apple.mediaanalysisd.client", 0);
    *cf1 = v1;
    v3 = v1 && (v2 = CFGetTypeID(v1), v2 == CFBooleanGetTypeID()) && CFEqual(*cf1, *MEMORY[0x1E695E4D0]) != 0;
    +[VCPMediaAnalysisService(DataStore) isEntitled]::entitled = v3;
    CF<__CVBuffer *>::~CF(cf1);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    if (+[VCPMediaAnalysisService(DataStore) isEntitled]::entitled)
    {
      v4 = "Entitled";
    }

    else
    {
      v4 = "Not entitled";
    }

    *cf1 = 136315138;
    *&cf1[4] = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[SystemDataStore] Process is %s", cf1, 0xCu);
  }

  return CF<__CVBuffer *>::~CF(&v6);
}

- (id)requestSystemXPCStoreListenerEndpointWithError:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() isEntitled])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__5;
    v24 = __Block_byref_object_dispose__5;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__5;
    v18 = __Block_byref_object_dispose__5;
    v19 = 0;
    connection = [(VCPMediaAnalysisService *)self connection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__VCPMediaAnalysisService_DataStore__requestSystemXPCStoreListenerEndpointWithError___block_invoke;
    v13[3] = &unk_1E834CCA0;
    v13[4] = &v14;
    v6 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__VCPMediaAnalysisService_DataStore__requestSystemXPCStoreListenerEndpointWithError___block_invoke_1121;
    v12[3] = &unk_1E834CD70;
    v12[4] = &v20;
    v12[5] = &v14;
    [v6 requestSystemXPCStoreListenerEndpoint:v12];

    if (error)
    {
      v7 = v15[5];
      if (v7)
      {
        *error = [v7 copy];
      }
    }

    error = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPMediaAnalysisService(DataStore) requestSystemXPCStoreListenerEndpointWithError:];
    }

    if (error)
    {
      v8 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A578];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request not entitled"];
      v27[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      *error = [v8 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v10];

      error = 0;
    }
  }

  return error;
}

void __85__VCPMediaAnalysisService_DataStore__requestSystemXPCStoreListenerEndpointWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __85__VCPMediaAnalysisService_DataStore__requestSystemXPCStoreListenerEndpointWithError___block_invoke_cold_1();
  }

  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __85__VCPMediaAnalysisService_DataStore__requestSystemXPCStoreListenerEndpointWithError___block_invoke_1121(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[SystemDataStore] Received System XPC Store Listener Endpoint %@", &v12, 0xCu);
    }

    v7 = *(*(a1 + 32) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __85__VCPMediaAnalysisService_DataStore__requestSystemXPCStoreListenerEndpointWithError___block_invoke_1121_cold_1();
    }

    v10 = [v6 copy];
    v11 = *(*(a1 + 40) + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)requestAnalysisXPCStoreListenerEndpointWithPhotoLibrary:(id)library error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if ([objc_opt_class() isEntitled])
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__5;
    v27 = __Block_byref_object_dispose__5;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__5;
    v21 = __Block_byref_object_dispose__5;
    v22 = 0;
    connection = [(VCPMediaAnalysisService *)self connection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __100__VCPMediaAnalysisService_DataStore__requestAnalysisXPCStoreListenerEndpointWithPhotoLibrary_error___block_invoke;
    v16[3] = &unk_1E834CCA0;
    v16[4] = &v17;
    v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v16];
    photoLibraryURL = [libraryCopy photoLibraryURL];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __100__VCPMediaAnalysisService_DataStore__requestAnalysisXPCStoreListenerEndpointWithPhotoLibrary_error___block_invoke_1123;
    v15[3] = &unk_1E834CD70;
    v15[4] = &v23;
    v15[5] = &v17;
    [v8 requestAnalysisXPCStoreListenerEndpointWithPhotoLibraryURL:photoLibraryURL reply:v15];

    if (error)
    {
      v10 = v18[5];
      if (v10)
      {
        *error = [v10 copy];
      }
    }

    error = v24[5];
    _Block_object_dispose(&v17, 8);

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPMediaAnalysisService(DataStore) requestAnalysisXPCStoreListenerEndpointWithPhotoLibrary:error:];
    }

    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request not entitled"];
      v30[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      *error = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v13];

      error = 0;
    }
  }

  return error;
}

void __100__VCPMediaAnalysisService_DataStore__requestAnalysisXPCStoreListenerEndpointWithPhotoLibrary_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __100__VCPMediaAnalysisService_DataStore__requestAnalysisXPCStoreListenerEndpointWithPhotoLibrary_error___block_invoke_cold_1();
  }

  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __100__VCPMediaAnalysisService_DataStore__requestAnalysisXPCStoreListenerEndpointWithPhotoLibrary_error___block_invoke_1123(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[AnalysisDataStore] Received Analysis XPC Store Listener Endpoint %@", &v12, 0xCu);
    }

    v7 = *(*(a1 + 32) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __100__VCPMediaAnalysisService_DataStore__requestAnalysisXPCStoreListenerEndpointWithPhotoLibrary_error___block_invoke_1123_cold_1();
    }

    v10 = [v6 copy];
    v11 = *(*(a1 + 40) + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (int)requestPhotosDeferredProcessingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__VCPMediaAnalysisService_PhotosDeferred__requestPhotosDeferredProcessingWithCompletionHandler___block_invoke;
  block[3] = &unk_1E834CA68;
  v9 = handlerCopy;
  v10 = &v11;
  block[4] = self;
  v6 = handlerCopy;
  dispatch_sync(managementQueue, block);
  LODWORD(managementQueue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return managementQueue;
}

void __96__VCPMediaAnalysisService_PhotosDeferred__requestPhotosDeferredProcessingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 48) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 48) + 8) + 24)];
  [v4 setObject:&__block_literal_global_1131 forKey:v5];

  v6 = [*(a1 + 32) connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96__VCPMediaAnalysisService_PhotosDeferred__requestPhotosDeferredProcessingWithCompletionHandler___block_invoke_3;
  v17[3] = &unk_1E834C548;
  v17[4] = *(a1 + 32);
  v13 = *(a1 + 40);
  v7 = v13;
  v18 = v13;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v17];
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(*(v9 + 8) + 24);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__VCPMediaAnalysisService_PhotosDeferred__requestPhotosDeferredProcessingWithCompletionHandler___block_invoke_3_1134;
  v14[3] = &unk_1E834C6B0;
  v12 = *(a1 + 32);
  v16 = v9;
  v14[4] = v12;
  v15 = v10;
  [v8 requestPhotosDeferredProcessing:v11 reply:v14];
}

void __96__VCPMediaAnalysisService_PhotosDeferred__requestPhotosDeferredProcessingWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to Media Analysis: %@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__VCPMediaAnalysisService_PhotosDeferred__requestPhotosDeferredProcessingWithCompletionHandler___block_invoke_1132;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __96__VCPMediaAnalysisService_PhotosDeferred__requestPhotosDeferredProcessingWithCompletionHandler___block_invoke_1132(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __96__VCPMediaAnalysisService_PhotosDeferred__requestPhotosDeferredProcessingWithCompletionHandler___block_invoke_2_1133;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __96__VCPMediaAnalysisService_PhotosDeferred__requestPhotosDeferredProcessingWithCompletionHandler___block_invoke_3_1134(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v14 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request %d has completed", buf, 8u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__VCPMediaAnalysisService_PhotosDeferred__requestPhotosDeferredProcessingWithCompletionHandler___block_invoke_1135;
  block[3] = &unk_1E834C520;
  block[4] = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v11 = v3;
  v8 = v3;
  dispatch_async(v6, block);
}

void __96__VCPMediaAnalysisService_PhotosDeferred__requestPhotosDeferredProcessingWithCompletionHandler___block_invoke_1135(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __96__VCPMediaAnalysisService_PhotosDeferred__requestPhotosDeferredProcessingWithCompletionHandler___block_invoke_2_1136;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

- (int)requestProgressReportWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__VCPMediaAnalysisService_ProgressReporter__requestProgressReportWithCompletionHandler___block_invoke;
  block[3] = &unk_1E834CA68;
  v9 = handlerCopy;
  v10 = &v11;
  block[4] = self;
  v6 = handlerCopy;
  dispatch_sync(managementQueue, block);
  LODWORD(managementQueue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return managementQueue;
}

void __88__VCPMediaAnalysisService_ProgressReporter__requestProgressReportWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 48) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 48) + 8) + 24)];
  [v4 setObject:&__block_literal_global_1140 forKey:v5];

  v6 = [*(a1 + 32) connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__VCPMediaAnalysisService_ProgressReporter__requestProgressReportWithCompletionHandler___block_invoke_3;
  v17[3] = &unk_1E834C548;
  v17[4] = *(a1 + 32);
  v13 = *(a1 + 40);
  v7 = v13;
  v18 = v13;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v17];
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(*(v9 + 8) + 24);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__VCPMediaAnalysisService_ProgressReporter__requestProgressReportWithCompletionHandler___block_invoke_3_1143;
  v14[3] = &unk_1E834C6B0;
  v12 = *(a1 + 32);
  v16 = v9;
  v14[4] = v12;
  v15 = v10;
  [v8 requestProgressReport:v11 reply:v14];
}

void __88__VCPMediaAnalysisService_ProgressReporter__requestProgressReportWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Error connecting to Media Analysis: %@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__VCPMediaAnalysisService_ProgressReporter__requestProgressReportWithCompletionHandler___block_invoke_1141;
  block[3] = &unk_1E834C520;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __88__VCPMediaAnalysisService_ProgressReporter__requestProgressReportWithCompletionHandler___block_invoke_1141(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__VCPMediaAnalysisService_ProgressReporter__requestProgressReportWithCompletionHandler___block_invoke_2_1142;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __88__VCPMediaAnalysisService_ProgressReporter__requestProgressReportWithCompletionHandler___block_invoke_3_1143(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109120;
    v14 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis] Request %d has completed", buf, 8u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__VCPMediaAnalysisService_ProgressReporter__requestProgressReportWithCompletionHandler___block_invoke_1144;
  block[3] = &unk_1E834C520;
  block[4] = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v11 = v3;
  v8 = v3;
  dispatch_async(v6, block);
}

void __88__VCPMediaAnalysisService_ProgressReporter__requestProgressReportWithCompletionHandler___block_invoke_1144(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__VCPMediaAnalysisService_ProgressReporter__requestProgressReportWithCompletionHandler___block_invoke_2_1145;
  v5[3] = &unk_1E834C4F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __85__VCPMediaAnalysisService_DataStore__requestSystemXPCStoreListenerEndpointWithError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __85__VCPMediaAnalysisService_DataStore__requestSystemXPCStoreListenerEndpointWithError___block_invoke_1121_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __100__VCPMediaAnalysisService_DataStore__requestAnalysisXPCStoreListenerEndpointWithPhotoLibrary_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __100__VCPMediaAnalysisService_DataStore__requestAnalysisXPCStoreListenerEndpointWithPhotoLibrary_error___block_invoke_1123_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end