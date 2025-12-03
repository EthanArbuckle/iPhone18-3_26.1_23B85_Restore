@interface CoreEmbeddedSpeechRecognizer
+ (BOOL)purgeInstalledAssetsExceptLanguages:(id)languages assetType:(unint64_t)type error:(id *)error;
+ (id)dictionaryWithContentsProfilePathForLanguage:(id)language errorOut:(id *)out;
+ (id)profilePathForLanguage:(id)language errorOut:(id *)out;
+ (id)purgeInstalledAssetsExceptLanguages:(id)languages error:(id *)error;
+ (id)speechProfileDataLastModifiedDataForLanguage:(id)language;
+ (void)cleanupUnusedSubscriptions;
+ (void)compileAllAssetsWithType:(unint64_t)type completion:(id)completion;
+ (void)compilePrimaryAssistantAssetWithCompletion:(id)completion;
+ (void)forceCooldownIfIdle;
+ (void)handlePostInstallSubscriptions;
- (CoreEmbeddedSpeechRecognizer)initWithDelegate:(id)delegate instanceUUID:(unsigned __int8)d[16];
- (CoreEmbeddedSpeechRecognizerDelegate)delegate;
- (id)_connection;
- (id)_newConnection;
- (id)_service;
- (id)_serviceWithFunctionName:(id)name errorHandler:(id)handler;
- (id)_synchronousServiceWithErrorHandler:(id)handler;
- (id)modelPropertiesForAssetConfig:(id)config error:(id *)error;
- (void)addAudioPacket:(id)packet;
- (void)addAudioPacket:(id)packet packetRecordedTime:(id)time packetReadyUpstreamTime:(id)upstreamTime;
- (void)createSpeechProfileWithLanguage:(id)language modelOverridePath:(id)path JSONData:(id)data completion:(id)completion;
- (void)dealloc;
- (void)deleteAllDESRecordsForDictationPersonalization;
- (void)fetchUserDataForLanguage:(id)language completion:(id)completion;
- (void)finishAudio;
- (void)getOfflineAssetStatusIgnoringCache:(BOOL)cache assetType:(unint64_t)type withCompletion:(id)completion;
- (void)getOfflineAssetStatusIgnoringCache:(BOOL)cache assetType:(unint64_t)type withDetailedStatus:(BOOL)status withCompletion:(id)completion;
- (void)getOfflineDictationStatusIgnoringCache:(BOOL)cache withCompletion:(id)completion;
- (void)invalidate;
- (void)invalidatePersonalizedLM;
- (void)invalidateUaapLM;
- (void)pauseRecognition;
- (void)preheatSpeechRecognitionWithAssetConfig:(id)config preheatSource:(id)source modelOverrideURL:(id)l;
- (void)preheatSpeechRecognitionWithLanguage:(id)language modelOverrideURL:(id)l;
- (void)readProfileAndUserDataWithLanguage:(id)language allowOverride:(BOOL)override completion:(id)completion;
- (void)redecodeWithAudioDatas:(id)datas language:(id)language task:(id)task samplingRate:(unint64_t)rate completion:(id)completion;
- (void)removePersonalizedLMForFidesOnly:(BOOL)only;
- (void)requestEagerResult;
- (void)resetDESWithCompletion:(id)completion;
- (void)resumeRecognitionWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText;
- (void)runEvaluationWithDESRecordDatas:(id)datas language:(id)language recipe:(id)recipe attachments:(id)attachments fidesPersonalizedLMPath:(id)path fidesPersonalizedLMTrainingAsset:(id)asset scrubResult:(BOOL)result completion:(id)self0;
- (void)sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier;
- (void)speechServiceDidFinishRecognitionWithStatistics:(id)statistics error:(id)error;
- (void)speechServiceDidProcessAudioDuration:(double)duration;
- (void)speechServiceDidProduceEndpointFeaturesWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration eosLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior processedAudioDurationInMilliseconds:(int64_t)milliseconds acousticEndpointerScore:(double)score;
- (void)speechServiceDidProduceLoggablePackage:(id)package;
- (void)speechServiceDidRecognizeFinalResultCandidatePackage:(id)package;
- (void)speechServiceDidRecognizePackage:(id)package;
- (void)speechServiceDidRecognizePackage:(id)package withMetadata:(id)metadata;
- (void)speechServiceDidRecognizePartialPackage:(id)package withMetadata:(id)metadata;
- (void)speechServiceDidRecognizeRawEagerRecognitionCandidate:(id)candidate;
- (void)speechServiceDidRecognizeTokens:(id)tokens;
- (void)speechServiceDidRecognizeTokens:(id)tokens withMetadata:(id)metadata;
- (void)speechServiceDidRecognizeVoiceCommandCandidatePackage:(id)package withMetadata:(id)metadata;
- (void)speechServiceDidSelectRecognitionModelWithModelProperties:(id)properties;
- (void)startMissingAssetDownload;
- (void)startSpeechRecognitionWithParameters:(id)parameters didStartHandler:(id)handler;
- (void)startSpeechRecognitionWithParameters:(id)parameters didStartHandlerWithInfo:(id)info;
- (void)stopAudioDecoding;
- (void)updateSpeechProfileWithLanguage:(id)language modelOverridePath:(id)path completion:(id)completion;
- (void)writeUaapOovsForLanguage:(id)language bundleId:(id)id customProns:(id)prons newOovs:(id)oovs completion:(id)completion;
@end

@implementation CoreEmbeddedSpeechRecognizer

- (CoreEmbeddedSpeechRecognizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)invalidateUaapLM
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CoreEmbeddedSpeechRecognizer_invalidateUaapLM__block_invoke;
  block[3] = &unk_27857FFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __48__CoreEmbeddedSpeechRecognizer_invalidateUaapLM__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CoreEmbeddedSpeechRecognizer invalidateUaapLM]_block_invoke"];
  v2 = [v1 _serviceWithFunctionName:v3 errorHandler:&__block_literal_global_430];
  [v2 invalidateUaapLm];
}

void __48__CoreEmbeddedSpeechRecognizer_invalidateUaapLM__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[CoreEmbeddedSpeechRecognizer invalidateUaapLM]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_225EEB000, v3, OS_LOG_TYPE_ERROR, "%s UaaP: Invalidation error %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)removePersonalizedLMForFidesOnly:(BOOL)only
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__CoreEmbeddedSpeechRecognizer_removePersonalizedLMForFidesOnly___block_invoke;
  v4[3] = &unk_278580460;
  v4[4] = self;
  onlyCopy = only;
  dispatch_sync(queue, v4);
}

void __65__CoreEmbeddedSpeechRecognizer_removePersonalizedLMForFidesOnly___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _synchronousServiceWithErrorHandler:&__block_literal_global_425];
  [v2 removePersonalizedLMForFidesOnly:*(a1 + 40) completion:&__block_literal_global_428];
}

void __65__CoreEmbeddedSpeechRecognizer_removePersonalizedLMForFidesOnly___block_invoke_426()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[CoreEmbeddedSpeechRecognizer removePersonalizedLMForFidesOnly:]_block_invoke";
    _os_log_impl(&dword_225EEB000, v0, OS_LOG_TYPE_INFO, "%s PLM: Removed", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __65__CoreEmbeddedSpeechRecognizer_removePersonalizedLMForFidesOnly___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[CoreEmbeddedSpeechRecognizer removePersonalizedLMForFidesOnly:]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_225EEB000, v3, OS_LOG_TYPE_ERROR, "%s PLM: Removal error %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)invalidatePersonalizedLM
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CoreEmbeddedSpeechRecognizer_invalidatePersonalizedLM__block_invoke;
  block[3] = &unk_27857FFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __56__CoreEmbeddedSpeechRecognizer_invalidatePersonalizedLM__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CoreEmbeddedSpeechRecognizer invalidatePersonalizedLM]_block_invoke"];
  v2 = [v1 _serviceWithFunctionName:v3 errorHandler:&__block_literal_global_423];
  [v2 invalidatePersonalizedLM];
}

void __56__CoreEmbeddedSpeechRecognizer_invalidatePersonalizedLM__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[CoreEmbeddedSpeechRecognizer invalidatePersonalizedLM]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_225EEB000, v3, OS_LOG_TYPE_ERROR, "%s PLM: Invalidation error %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)writeUaapOovsForLanguage:(id)language bundleId:(id)id customProns:(id)prons newOovs:(id)oovs completion:(id)completion
{
  languageCopy = language;
  idCopy = id;
  pronsCopy = prons;
  oovsCopy = oovs;
  completionCopy = completion;
  queue = self->_queue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __97__CoreEmbeddedSpeechRecognizer_writeUaapOovsForLanguage_bundleId_customProns_newOovs_completion___block_invoke;
  v23[3] = &unk_278580438;
  v23[4] = self;
  v24 = languageCopy;
  v25 = idCopy;
  v26 = pronsCopy;
  v27 = oovsCopy;
  v28 = completionCopy;
  v18 = oovsCopy;
  v19 = pronsCopy;
  v20 = idCopy;
  v21 = languageCopy;
  v22 = completionCopy;
  dispatch_async(queue, v23);
}

void __97__CoreEmbeddedSpeechRecognizer_writeUaapOovsForLanguage_bundleId_customProns_newOovs_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CoreEmbeddedSpeechRecognizer writeUaapOovsForLanguage:bundleId:customProns:newOovs:completion:]_block_invoke"];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __97__CoreEmbeddedSpeechRecognizer_writeUaapOovsForLanguage_bundleId_customProns_newOovs_completion___block_invoke_2;
  v5[3] = &unk_278580080;
  v6 = *(a1 + 72);
  v4 = [v2 _serviceWithFunctionName:v3 errorHandler:v5];
  [v4 writeUaapOovsForLanguage:*(a1 + 40) bundleId:*(a1 + 48) customProns:*(a1 + 56) newOovs:*(a1 + 64) completion:*(a1 + 72)];
}

- (void)startMissingAssetDownload
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CoreEmbeddedSpeechRecognizer_startMissingAssetDownload__block_invoke;
  block[3] = &unk_27857FFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __57__CoreEmbeddedSpeechRecognizer_startMissingAssetDownload__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CoreEmbeddedSpeechRecognizer startMissingAssetDownload]_block_invoke"];
  v2 = [v1 _serviceWithFunctionName:v3 errorHandler:0];
  [v2 startMissingAssetDownload];
}

- (void)fetchUserDataForLanguage:(id)language completion:(id)completion
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (completion)
  {
    v4 = MEMORY[0x277CCA9B8];
    completionCopy = completion;
    v6 = [v4 alloc];
    v7 = *MEMORY[0x277CEF588];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = @"No API is available to fetch user data.";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v6 initWithDomain:v7 code:500 userInfo:v8];

    completionCopy[2](completionCopy, v9, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)speechServiceDidProduceLoggablePackage:(id)package
{
  packageCopy = package;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 localSpeechRecognizer:self didProduceLoggablePackage:packageCopy];
  }
}

- (void)speechServiceDidProduceEndpointFeaturesWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration eosLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior processedAudioDurationInMilliseconds:(int64_t)milliseconds acousticEndpointerScore:(double)score
{
  countsCopy = counts;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 localSpeechRecognizer:self didProduceEndpointFeaturesWithWordCount:count trailingSilenceDuration:duration eosLikelihood:countsCopy pauseCounts:milliseconds silencePosterior:likelihood processedAudioDurationInMilliseconds:posterior acousticEndpointerScore:score];
  }
}

- (void)speechServiceDidFinishRecognitionWithStatistics:(id)statistics error:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  statisticsCopy = statistics;
  errorCopy = error;
  if (!errorCopy)
  {
    if (self->_hasRecognizedAnything)
    {
      errorCopy = 0;
    }

    else
    {
      v8 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        v12 = 136315138;
        v13 = "[CoreEmbeddedSpeechRecognizer speechServiceDidFinishRecognitionWithStatistics:error:]";
        _os_log_impl(&dword_225EEB000, v8, OS_LOG_TYPE_INFO, "%s No speech recognized, synthesizing local speech error", &v12, 0xCu);
      }

      errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEF588] code:1110 userInfo:0];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSpeechRecognizer:self didCompletionRecognitionWithStatistics:statisticsCopy error:errorCopy];

  self->_recognitionActive = 0;
  recognitionError = self->_recognitionError;
  self->_recognitionError = errorCopy;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)speechServiceDidRecognizePackage:(id)package withMetadata:(id)metadata
{
  v25 = *MEMORY[0x277D85DE8];
  packageCopy = package;
  metadataCopy = metadata;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  recognition = [packageCopy recognition];
  utterances = [recognition utterances];

  v10 = [utterances countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(utterances);
        }

        interpretationIndices = [*(*(&v20 + 1) + 8 * i) interpretationIndices];
        v15 = [interpretationIndices count];

        if (v15)
        {
          self->_hasRecognizedAnything = 1;
          goto LABEL_11;
        }
      }

      v11 = [utterances countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 localSpeechRecognizer:self didRecognizePackage:packageCopy withMetadata:metadataCopy];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)speechServiceDidRecognizePackage:(id)package
{
  v20 = *MEMORY[0x277D85DE8];
  packageCopy = package;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  recognition = [packageCopy recognition];
  utterances = [recognition utterances];

  v7 = [utterances countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(utterances);
        }

        interpretationIndices = [*(*(&v15 + 1) + 8 * i) interpretationIndices];
        v12 = [interpretationIndices count];

        if (v12)
        {
          self->_hasRecognizedAnything = 1;
          goto LABEL_11;
        }
      }

      v8 = [utterances countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSpeechRecognizer:self didRecognizePackage:packageCopy];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)speechServiceDidRecognizeVoiceCommandCandidatePackage:(id)package withMetadata:(id)metadata
{
  packageCopy = package;
  metadataCopy = metadata;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 localSpeechRecognizer:self didRecognizeVoiceCommandCandidatePackage:packageCopy withMetadata:metadataCopy];
  }
}

- (void)speechServiceDidRecognizeFinalResultCandidatePackage:(id)package
{
  packageCopy = package;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 localSpeechRecognizer:self didRecognizeFinalResultCandidatePackage:packageCopy];
  }
}

- (void)speechServiceDidRecognizeRawEagerRecognitionCandidate:(id)candidate
{
  candidateCopy = candidate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSpeechRecognizer:self didRecognizeRawEagerRecognitionCandidate:candidateCopy];
}

- (void)speechServiceDidProcessAudioDuration:(double)duration
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSpeechRecognizer:self didProcessAudioDuration:duration];
}

- (void)speechServiceDidRecognizePartialPackage:(id)package withMetadata:(id)metadata
{
  packageCopy = package;
  metadataCopy = metadata;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 localSpeechRecognizer:self didRecognizePartialPackage:packageCopy withMetadata:metadataCopy];
  }
}

- (void)speechServiceDidRecognizeTokens:(id)tokens withMetadata:(id)metadata
{
  tokensCopy = tokens;
  metadataCopy = metadata;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 localSpeechRecognizer:self didRecognizeTokens:tokensCopy withMetadata:metadataCopy];
  }
}

- (void)speechServiceDidRecognizeTokens:(id)tokens
{
  tokensCopy = tokens;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSpeechRecognizer:self didRecognizeTokens:tokensCopy];
}

- (void)speechServiceDidSelectRecognitionModelWithModelProperties:(id)properties
{
  propertiesCopy = properties;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 localSpeechRecognizer:self didSelectRecognitionModelWithModelProperties:propertiesCopy];
  }
}

- (void)resumeRecognitionWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText
{
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__CoreEmbeddedSpeechRecognizer_resumeRecognitionWithPrefixText_postfixText_selectedText___block_invoke;
  v15[3] = &unk_27857FEF8;
  v15[4] = self;
  v16 = textCopy;
  v17 = postfixTextCopy;
  v18 = selectedTextCopy;
  v12 = selectedTextCopy;
  v13 = postfixTextCopy;
  v14 = textCopy;
  dispatch_async(queue, v15);
}

void __89__CoreEmbeddedSpeechRecognizer_resumeRecognitionWithPrefixText_postfixText_selectedText___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  [v2 resumeRecognitionWithPrefixText:*(a1 + 40) postfixText:*(a1 + 48) selectedText:*(a1 + 56)];
}

- (void)pauseRecognition
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CoreEmbeddedSpeechRecognizer_pauseRecognition__block_invoke;
  block[3] = &unk_27857FFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __48__CoreEmbeddedSpeechRecognizer_pauseRecognition__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _service];
  [v1 pauseRecognition];
}

- (void)deleteAllDESRecordsForDictationPersonalization
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__CoreEmbeddedSpeechRecognizer_deleteAllDESRecordsForDictationPersonalization__block_invoke;
  block[3] = &unk_27857FFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __78__CoreEmbeddedSpeechRecognizer_deleteAllDESRecordsForDictationPersonalization__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CoreEmbeddedSpeechRecognizer deleteAllDESRecordsForDictationPersonalization]_block_invoke"];
  v2 = [v1 _serviceWithFunctionName:v3 errorHandler:&__block_literal_global_399];
  [v2 deleteAllDESRecordsForDictationPersonalizationWithCompletion:&__block_literal_global_402];
}

void __78__CoreEmbeddedSpeechRecognizer_deleteAllDESRecordsForDictationPersonalization__block_invoke_400(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[CoreEmbeddedSpeechRecognizer deleteAllDESRecordsForDictationPersonalization]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s Failed to delete DES Records for Dictation Personalization with error=%@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __78__CoreEmbeddedSpeechRecognizer_deleteAllDESRecordsForDictationPersonalization__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[CoreEmbeddedSpeechRecognizer deleteAllDESRecordsForDictationPersonalization]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s Failed to delete DES Records for Dictation Personalization with error=%@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CoreEmbeddedSpeechRecognizer_invalidate__block_invoke;
  block[3] = &unk_27857FFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __42__CoreEmbeddedSpeechRecognizer_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;
  }
}

- (void)requestEagerResult
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CoreEmbeddedSpeechRecognizer_requestEagerResult__block_invoke;
  block[3] = &unk_27857FFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __50__CoreEmbeddedSpeechRecognizer_requestEagerResult__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _service];
  [v1 requestEagerResult];
}

- (void)stopAudioDecoding
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CoreEmbeddedSpeechRecognizer_stopAudioDecoding__block_invoke;
  block[3] = &unk_27857FFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __49__CoreEmbeddedSpeechRecognizer_stopAudioDecoding__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _service];
  [v1 stopAudioDecoding];
}

- (void)finishAudio
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CoreEmbeddedSpeechRecognizer_finishAudio__block_invoke;
  block[3] = &unk_27857FFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __43__CoreEmbeddedSpeechRecognizer_finishAudio__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _service];
  [v1 finishAudio];
}

- (void)addAudioPacket:(id)packet packetRecordedTime:(id)time packetReadyUpstreamTime:(id)upstreamTime
{
  packetCopy = packet;
  timeCopy = time;
  upstreamTimeCopy = upstreamTime;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__CoreEmbeddedSpeechRecognizer_addAudioPacket_packetRecordedTime_packetReadyUpstreamTime___block_invoke;
  v15[3] = &unk_27857FEF8;
  v15[4] = self;
  v16 = packetCopy;
  v17 = timeCopy;
  v18 = upstreamTimeCopy;
  v12 = upstreamTimeCopy;
  v13 = timeCopy;
  v14 = packetCopy;
  dispatch_async(queue, v15);
}

void __90__CoreEmbeddedSpeechRecognizer_addAudioPacket_packetRecordedTime_packetReadyUpstreamTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  [v2 addAudioPacket:*(a1 + 40) packetRecordedTime:*(a1 + 48) packetReadyUpstreamTime:*(a1 + 56)];
}

- (void)addAudioPacket:(id)packet
{
  packetCopy = packet;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CoreEmbeddedSpeechRecognizer_addAudioPacket___block_invoke;
  v7[3] = &unk_278580398;
  v7[4] = self;
  v8 = packetCopy;
  v6 = packetCopy;
  dispatch_async(queue, v7);
}

void __47__CoreEmbeddedSpeechRecognizer_addAudioPacket___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  [v2 addAudioPacket:*(a1 + 40)];
}

- (id)modelPropertiesForAssetConfig:(id)config error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  configCopy = config;
  language = [configCopy language];

  if (!language)
  {
    v10 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[CoreEmbeddedSpeechRecognizer modelPropertiesForAssetConfig:error:]";
      _os_log_error_impl(&dword_225EEB000, v10, OS_LOG_TYPE_ERROR, "%s Not fetching assets for nil language", &buf, 0xCu);
      if (error)
      {
        goto LABEL_7;
      }
    }

    else if (error)
    {
LABEL_7:
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEF588] code:401 userInfo:0];
      *error = v9 = 0;
      goto LABEL_10;
    }

    v9 = 0;
    goto LABEL_10;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4503;
  v26 = __Block_byref_object_dispose__4504;
  v27 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4503;
  v21 = __Block_byref_object_dispose__4504;
  v22 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__CoreEmbeddedSpeechRecognizer_modelPropertiesForAssetConfig_error___block_invoke;
  v13[3] = &unk_278580370;
  v13[4] = self;
  v15 = &v17;
  v14 = configCopy;
  p_buf = &buf;
  dispatch_sync(queue, v13);
  if (error)
  {
    *error = v18[5];
  }

  v9 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&buf, 8);

LABEL_10:
  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

void __68__CoreEmbeddedSpeechRecognizer_modelPropertiesForAssetConfig_error___block_invoke(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__CoreEmbeddedSpeechRecognizer_modelPropertiesForAssetConfig_error___block_invoke_2;
  v7[3] = &unk_278580258;
  v7[4] = a1[3].i64[0];
  v3 = [v2 _synchronousServiceWithErrorHandler:v7];
  v4 = a1[2].i64[1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__CoreEmbeddedSpeechRecognizer_modelPropertiesForAssetConfig_error___block_invoke_3;
  v5[3] = &unk_278580348;
  v6 = vextq_s8(a1[3], a1[3], 8uLL);
  [v3 fetchModelPropertiesForAssetConfig:v4 completion:v5];
}

void __68__CoreEmbeddedSpeechRecognizer_modelPropertiesForAssetConfig_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)resetDESWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CoreEmbeddedSpeechRecognizer_resetDESWithCompletion___block_invoke;
  block[3] = &unk_2785802D0;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, block);
}

void __55__CoreEmbeddedSpeechRecognizer_resetDESWithCompletion___block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4503;
  v14 = __Block_byref_object_dispose__4504;
  v15 = 0;
  dispatch_group_enter(v2);
  v3 = [objc_alloc(MEMORY[0x277D05630]) initWithBundleIdentifier:@"com.apple.fides.asr"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__CoreEmbeddedSpeechRecognizer_resetDESWithCompletion___block_invoke_2;
  v7[3] = &unk_278580320;
  v9 = &v10;
  v4 = v2;
  v8 = v4;
  [v3 deleteAllSavedRecordsWithCompletion:v7];

  v5 = dispatch_time(0, 300000000000);
  dispatch_group_wait(v4, v5);
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v11[5]);
  }

  _Block_object_dispose(&v10, 8);
}

void __55__CoreEmbeddedSpeechRecognizer_resetDESWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[CoreEmbeddedSpeechRecognizer resetDESWithCompletion:]_block_invoke_2";
      v11 = 2114;
      v12 = v3;
      _os_log_error_impl(&dword_225EEB000, v4, OS_LOG_TYPE_ERROR, "%s Error deleting all DES records (SPI v2): %{public}@", &v9, 0x16u);
    }
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
  v8 = *MEMORY[0x277D85DE8];
}

- (void)readProfileAndUserDataWithLanguage:(id)language allowOverride:(BOOL)override completion:(id)completion
{
  languageCopy = language;
  completionCopy = completion;
  v10 = completionCopy;
  if (languageCopy)
  {
    v11 = [languageCopy stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __92__CoreEmbeddedSpeechRecognizer_readProfileAndUserDataWithLanguage_allowOverride_completion___block_invoke_2;
    block[3] = &unk_2785802F8;
    block[4] = self;
    v16 = v11;
    v17 = v10;
    overrideCopy = override;
    v13 = v11;
    dispatch_async(queue, block);
  }

  else
  {
    v14 = self->_queue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __92__CoreEmbeddedSpeechRecognizer_readProfileAndUserDataWithLanguage_allowOverride_completion___block_invoke;
    v19[3] = &unk_2785802D0;
    v20 = completionCopy;
    dispatch_async(v14, v19);
    v13 = v20;
  }
}

void __92__CoreEmbeddedSpeechRecognizer_readProfileAndUserDataWithLanguage_allowOverride_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CoreEmbeddedSpeechRecognizer readProfileAndUserDataWithLanguage:allowOverride:completion:]_block_invoke_2"];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __92__CoreEmbeddedSpeechRecognizer_readProfileAndUserDataWithLanguage_allowOverride_completion___block_invoke_3;
  v5[3] = &unk_278580080;
  v6 = *(a1 + 48);
  v4 = [v2 _serviceWithFunctionName:v3 errorHandler:v5];
  [v4 readProfileAndUserDataWithLanguage:*(a1 + 40) allowOverride:*(a1 + 56) completion:*(a1 + 48)];
}

void __92__CoreEmbeddedSpeechRecognizer_readProfileAndUserDataWithLanguage_allowOverride_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[CoreEmbeddedSpeechRecognizer readProfileAndUserDataWithLanguage:allowOverride:completion:]_block_invoke_3";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_225EEB000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x277D85DE8];
}

- (void)redecodeWithAudioDatas:(id)datas language:(id)language task:(id)task samplingRate:(unint64_t)rate completion:(id)completion
{
  datasCopy = datas;
  languageCopy = language;
  taskCopy = task;
  completionCopy = completion;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4503;
  v31 = __Block_byref_object_dispose__4504;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4503;
  v25 = __Block_byref_object_dispose__4504;
  v26 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__CoreEmbeddedSpeechRecognizer_redecodeWithAudioDatas_language_task_samplingRate_completion___block_invoke;
  block[3] = &unk_278580280;
  block[4] = self;
  block[5] = &v21;
  block[6] = &v27;
  dispatch_sync(queue, block);
  if (v28[5])
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v17 = v22[5];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __93__CoreEmbeddedSpeechRecognizer_redecodeWithAudioDatas_language_task_samplingRate_completion___block_invoke_3;
    v18[3] = &unk_2785802A8;
    v19 = completionCopy;
    [v17 redecodeWithAudioDatas:datasCopy language:languageCopy task:taskCopy samplingRate:rate completion:v18];
  }

  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
}

void __93__CoreEmbeddedSpeechRecognizer_redecodeWithAudioDatas_language_task_samplingRate_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __93__CoreEmbeddedSpeechRecognizer_redecodeWithAudioDatas_language_task_samplingRate_completion___block_invoke_2;
  v6[3] = &unk_278580258;
  v6[4] = a1[6];
  v3 = [v2 _synchronousServiceWithErrorHandler:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __93__CoreEmbeddedSpeechRecognizer_redecodeWithAudioDatas_language_task_samplingRate_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[CoreEmbeddedSpeechRecognizer redecodeWithAudioDatas:language:task:samplingRate:completion:]_block_invoke_3";
      _os_log_impl(&dword_225EEB000, v7, OS_LOG_TYPE_INFO, "%s User edit ASR redecoding was successful", &v9, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)runEvaluationWithDESRecordDatas:(id)datas language:(id)language recipe:(id)recipe attachments:(id)attachments fidesPersonalizedLMPath:(id)path fidesPersonalizedLMTrainingAsset:(id)asset scrubResult:(BOOL)result completion:(id)self0
{
  datasCopy = datas;
  languageCopy = language;
  recipeCopy = recipe;
  attachmentsCopy = attachments;
  pathCopy = path;
  assetCopy = asset;
  completionCopy = completion;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__4503;
  v39 = __Block_byref_object_dispose__4504;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__4503;
  v33 = __Block_byref_object_dispose__4504;
  v34 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __172__CoreEmbeddedSpeechRecognizer_runEvaluationWithDESRecordDatas_language_recipe_attachments_fidesPersonalizedLMPath_fidesPersonalizedLMTrainingAsset_scrubResult_completion___block_invoke;
  block[3] = &unk_278580280;
  block[4] = self;
  block[5] = &v29;
  block[6] = &v35;
  dispatch_sync(queue, block);
  if (v36[5])
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v24 = v30[5];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __172__CoreEmbeddedSpeechRecognizer_runEvaluationWithDESRecordDatas_language_recipe_attachments_fidesPersonalizedLMPath_fidesPersonalizedLMTrainingAsset_scrubResult_completion___block_invoke_3;
    v26[3] = &unk_2785802A8;
    v27 = completionCopy;
    LOBYTE(v25) = result;
    [v24 runEvaluationWithDESRecordDatas:datasCopy language:languageCopy recipe:recipeCopy attachments:attachmentsCopy fidesPersonalizedLMPath:pathCopy fidesPersonalizedLMTrainingAsset:assetCopy scrubResult:v25 completion:v26];
  }

  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
}

void __172__CoreEmbeddedSpeechRecognizer_runEvaluationWithDESRecordDatas_language_recipe_attachments_fidesPersonalizedLMPath_fidesPersonalizedLMTrainingAsset_scrubResult_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __172__CoreEmbeddedSpeechRecognizer_runEvaluationWithDESRecordDatas_language_recipe_attachments_fidesPersonalizedLMPath_fidesPersonalizedLMTrainingAsset_scrubResult_completion___block_invoke_2;
  v6[3] = &unk_278580258;
  v6[4] = a1[6];
  v3 = [v2 _synchronousServiceWithErrorHandler:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __172__CoreEmbeddedSpeechRecognizer_runEvaluationWithDESRecordDatas_language_recipe_attachments_fidesPersonalizedLMPath_fidesPersonalizedLMTrainingAsset_scrubResult_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[CoreEmbeddedSpeechRecognizer runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke_3";
      _os_log_impl(&dword_225EEB000, v7, OS_LOG_TYPE_INFO, "%s DES recipe evaluation was successful", &v9, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void __163__CoreEmbeddedSpeechRecognizer_runCorrectedTextEvaluationWithAudioDatas_recordDatas_language_samplingRate_caseSensitive_skipLME_wordSenseAccessListSet_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __163__CoreEmbeddedSpeechRecognizer_runCorrectedTextEvaluationWithAudioDatas_recordDatas_language_samplingRate_caseSensitive_skipLME_wordSenseAccessListSet_completion___block_invoke_2;
  v6[3] = &unk_278580258;
  v6[4] = a1[6];
  v3 = [v2 _synchronousServiceWithErrorHandler:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __163__CoreEmbeddedSpeechRecognizer_runCorrectedTextEvaluationWithAudioDatas_recordDatas_language_samplingRate_caseSensitive_skipLME_wordSenseAccessListSet_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[CoreEmbeddedSpeechRecognizer runCorrectedTextEvaluationWithAudioDatas:recordDatas:language:samplingRate:caseSensitive:skipLME:wordSenseAccessListSet:completion:]_block_invoke_3";
      _os_log_impl(&dword_225EEB000, v7, OS_LOG_TYPE_INFO, "%s DES recipe evaluation was successful", &v9, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getOfflineDictationStatusIgnoringCache:(BOOL)cache withCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__CoreEmbeddedSpeechRecognizer_getOfflineDictationStatusIgnoringCache_withCompletion___block_invoke;
  block[3] = &unk_278580230;
  block[4] = self;
  v10 = completionCopy;
  cacheCopy = cache;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

void __86__CoreEmbeddedSpeechRecognizer_getOfflineDictationStatusIgnoringCache_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CoreEmbeddedSpeechRecognizer getOfflineDictationStatusIgnoringCache:withCompletion:]_block_invoke"];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __86__CoreEmbeddedSpeechRecognizer_getOfflineDictationStatusIgnoringCache_withCompletion___block_invoke_2;
  v5[3] = &unk_278580080;
  v6 = *(a1 + 40);
  v4 = [v2 _serviceWithFunctionName:v3 errorHandler:v5];
  [v4 getOfflineDictationStatusIgnoringCache:*(a1 + 48) withCompletion:*(a1 + 40)];
}

- (void)getOfflineAssetStatusIgnoringCache:(BOOL)cache assetType:(unint64_t)type withDetailedStatus:(BOOL)status withCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __111__CoreEmbeddedSpeechRecognizer_getOfflineAssetStatusIgnoringCache_assetType_withDetailedStatus_withCompletion___block_invoke;
  v13[3] = &unk_278580208;
  v13[4] = self;
  v14 = completionCopy;
  cacheCopy = cache;
  typeCopy = type;
  statusCopy = status;
  v12 = completionCopy;
  dispatch_async(queue, v13);
}

void __111__CoreEmbeddedSpeechRecognizer_getOfflineAssetStatusIgnoringCache_assetType_withDetailedStatus_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CoreEmbeddedSpeechRecognizer getOfflineAssetStatusIgnoringCache:assetType:withDetailedStatus:withCompletion:]_block_invoke"];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __111__CoreEmbeddedSpeechRecognizer_getOfflineAssetStatusIgnoringCache_assetType_withDetailedStatus_withCompletion___block_invoke_2;
  v5[3] = &unk_278580080;
  v6 = *(a1 + 40);
  v4 = [v2 _serviceWithFunctionName:v3 errorHandler:v5];
  [v4 getOfflineAssetStatusIgnoringCache:*(a1 + 56) assetType:*(a1 + 48) withDetailedStatus:*(a1 + 57) withCompletion:*(a1 + 40)];
}

- (void)getOfflineAssetStatusIgnoringCache:(BOOL)cache assetType:(unint64_t)type withCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __92__CoreEmbeddedSpeechRecognizer_getOfflineAssetStatusIgnoringCache_assetType_withCompletion___block_invoke;
  v11[3] = &unk_2785801E0;
  v11[4] = self;
  v12 = completionCopy;
  cacheCopy = cache;
  typeCopy = type;
  v10 = completionCopy;
  dispatch_async(queue, v11);
}

void __92__CoreEmbeddedSpeechRecognizer_getOfflineAssetStatusIgnoringCache_assetType_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CoreEmbeddedSpeechRecognizer getOfflineAssetStatusIgnoringCache:assetType:withCompletion:]_block_invoke"];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __92__CoreEmbeddedSpeechRecognizer_getOfflineAssetStatusIgnoringCache_assetType_withCompletion___block_invoke_2;
  v5[3] = &unk_278580080;
  v6 = *(a1 + 40);
  v4 = [v2 _serviceWithFunctionName:v3 errorHandler:v5];
  [v4 getOfflineAssetStatusIgnoringCache:*(a1 + 56) assetType:*(a1 + 48) withCompletion:*(a1 + 40)];
}

- (void)updateSpeechProfileWithLanguage:(id)language modelOverridePath:(id)path completion:(id)completion
{
  languageCopy = language;
  pathCopy = path;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__CoreEmbeddedSpeechRecognizer_updateSpeechProfileWithLanguage_modelOverridePath_completion___block_invoke;
  v15[3] = &unk_2785801B8;
  v16 = languageCopy;
  selfCopy = self;
  v18 = pathCopy;
  v19 = completionCopy;
  v12 = pathCopy;
  v13 = completionCopy;
  v14 = languageCopy;
  dispatch_async(queue, v15);
}

void __93__CoreEmbeddedSpeechRecognizer_updateSpeechProfileWithLanguage_modelOverridePath_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  v3 = SFReplacementLocaleCodeForLocaleIdentifier();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  v7 = [v6 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  v8 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__CoreEmbeddedSpeechRecognizer_updateSpeechProfileWithLanguage_modelOverridePath_completion___block_invoke_2;
  v10[3] = &unk_278580190;
  v10[4] = v8;
  v13 = *(a1 + 56);
  v11 = v7;
  v12 = *(a1 + 48);
  v9 = v7;
  [v8 readProfileAndUserDataWithLanguage:v9 allowOverride:0 completion:v10];
}

void __93__CoreEmbeddedSpeechRecognizer_updateSpeechProfileWithLanguage_modelOverridePath_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = a2;
  v9 = [v6 stringWithUTF8String:"-[CoreEmbeddedSpeechRecognizer updateSpeechProfileWithLanguage:modelOverridePath:completion:]_block_invoke_2"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __93__CoreEmbeddedSpeechRecognizer_updateSpeechProfileWithLanguage_modelOverridePath_completion___block_invoke_3;
  v16[3] = &unk_278580080;
  v17 = *(a1 + 56);
  v10 = [v5 _serviceWithFunctionName:v9 errorHandler:v16];
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93__CoreEmbeddedSpeechRecognizer_updateSpeechProfileWithLanguage_modelOverridePath_completion___block_invoke_4;
  v13[3] = &unk_278580168;
  v14 = v11;
  v15 = *(a1 + 56);
  [v10 updateSpeechProfileWithLanguage:v14 modelOverridePath:v12 existingProfile:v8 existingAssetPath:v7 completion:v13];
}

void __93__CoreEmbeddedSpeechRecognizer_updateSpeechProfileWithLanguage_modelOverridePath_completion___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7)
  {
    v25 = [v9 domain];
    if ([v25 isEqualToString:*MEMORY[0x277CEF588]])
    {
      v26 = [v10 code];

      if (v26 == 1114)
      {
        v27 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
        {
          v28 = *(a1 + 32);
          *v43 = 136315394;
          *&v43[4] = "[CoreEmbeddedSpeechRecognizer updateSpeechProfileWithLanguage:modelOverridePath:completion:]_block_invoke_4";
          *&v43[12] = 2112;
          *&v43[14] = v28;
          _os_log_impl(&dword_225EEB000, v27, OS_LOG_TYPE_INFO, "%s Update skipped for %@, not propagating an error", v43, 0x16u);
        }

        v29 = *(*(a1 + 40) + 16);
        goto LABEL_18;
      }
    }

    else
    {
    }

    v29 = *(*(a1 + 40) + 16);
LABEL_18:
    v29();
    goto LABEL_27;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v11;
  v35 = 0;
  v14 = [CoreEmbeddedSpeechRecognizer profilePathForLanguage:v12 errorOut:&v35];
  v15 = v35;
  if (v14)
  {
    v16 = [v12 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

    v42[0] = @"data";
    v42[1] = @"version";
    *v43 = v7;
    *&v43[8] = @"2.0";
    v42[2] = @"language";
    v42[3] = @"assetPath";
    *&v43[16] = v16;
    v44 = v8;
    v32 = v8;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];
    v34 = 0;
    v18 = [MEMORY[0x277CCAC58] dataWithPropertyList:v17 format:200 options:0 error:&v34];
    v19 = v34;

    v20 = MEMORY[0x277CEF0E8];
    v21 = *MEMORY[0x277CEF0E8];
    if (v18)
    {
      v31 = v17;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v37 = "WriteSpeechProfileData";
        v38 = 2112;
        v39 = v16;
        _os_log_impl(&dword_225EEB000, v21, OS_LOG_TYPE_INFO, "%s Serialization of %@ speech profile done.", buf, 0x16u);
      }

      v33 = v19;
      v22 = [v18 writeToFile:v14 options:0x40000000 error:&v33];
      v15 = v33;

      v23 = *v20;
      v24 = *v20;
      if (v22)
      {
        v17 = v31;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v37 = "WriteSpeechProfileData";
          v38 = 2112;
          v39 = v16;
          v40 = 2112;
          v41 = v14;
          _os_log_impl(&dword_225EEB000, v23, OS_LOG_TYPE_INFO, "%s Persisted %@ speech profile to path=%@", buf, 0x20u);
        }

        v19 = 0;
      }

      else
      {
        v17 = v31;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v37 = "WriteSpeechProfileData";
          v38 = 2112;
          v39 = v16;
          v40 = 2114;
          v41 = v15;
          _os_log_error_impl(&dword_225EEB000, v23, OS_LOG_TYPE_ERROR, "%s Persisting %@ speech profile to disk failed with error=%{public}@", buf, 0x20u);
        }

        v19 = v15;
      }
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v37 = "WriteSpeechProfileData";
        v38 = 2112;
        v39 = v16;
        v40 = 2114;
        v41 = v19;
        _os_log_error_impl(&dword_225EEB000, v21, OS_LOG_TYPE_ERROR, "%s Serialization of  %@ speech profile failed with error=%{public}@", buf, 0x20u);
      }

      v15 = v19;
    }

    v13[2](v13, v19);

    v8 = v32;
  }

  else
  {
    v13[2](v13, v15);
    v16 = v12;
  }

LABEL_27:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)createSpeechProfileWithLanguage:(id)language modelOverridePath:(id)path JSONData:(id)data completion:(id)completion
{
  languageCopy = language;
  pathCopy = path;
  dataCopy = data;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__CoreEmbeddedSpeechRecognizer_createSpeechProfileWithLanguage_modelOverridePath_JSONData_completion___block_invoke;
  block[3] = &unk_278580140;
  v22 = dataCopy;
  v23 = completionCopy;
  block[4] = self;
  v20 = languageCopy;
  v21 = pathCopy;
  v15 = dataCopy;
  v16 = pathCopy;
  v17 = languageCopy;
  v18 = completionCopy;
  dispatch_async(queue, block);
}

void __102__CoreEmbeddedSpeechRecognizer_createSpeechProfileWithLanguage_modelOverridePath_JSONData_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CoreEmbeddedSpeechRecognizer createSpeechProfileWithLanguage:modelOverridePath:JSONData:completion:]_block_invoke"];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __102__CoreEmbeddedSpeechRecognizer_createSpeechProfileWithLanguage_modelOverridePath_JSONData_completion___block_invoke_2;
  v5[3] = &unk_278580080;
  v6 = *(a1 + 64);
  v4 = [v2 _serviceWithFunctionName:v3 errorHandler:v5];
  [v4 createSpeechProfileWithLanguage:*(a1 + 40) modelOverridePath:*(a1 + 48) JSONData:*(a1 + 56) completion:*(a1 + 64)];
}

- (void)sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__CoreEmbeddedSpeechRecognizer_sendSpeechCorrectionInfo_interactionIdentifier___block_invoke;
  block[3] = &unk_27857FED0;
  block[4] = self;
  v12 = infoCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = infoCopy;
  dispatch_async(queue, block);
}

void __79__CoreEmbeddedSpeechRecognizer_sendSpeechCorrectionInfo_interactionIdentifier___block_invoke(void *a1)
{
  v2 = a1[4];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CoreEmbeddedSpeechRecognizer sendSpeechCorrectionInfo:interactionIdentifier:]_block_invoke"];
  v3 = [v2 _serviceWithFunctionName:v4 errorHandler:&__block_literal_global_384];
  [v3 sendSpeechCorrectionInfo:a1[5] interactionIdentifier:a1[6]];
}

void __79__CoreEmbeddedSpeechRecognizer_sendSpeechCorrectionInfo_interactionIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v4 = v3;
      v5 = [v2 localizedDescription];
      v7 = 136315394;
      v8 = "[CoreEmbeddedSpeechRecognizer sendSpeechCorrectionInfo:interactionIdentifier:]_block_invoke_2";
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_225EEB000, v4, OS_LOG_TYPE_INFO, "%s Failed to send speech correction info: %@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)startSpeechRecognitionWithParameters:(id)parameters didStartHandlerWithInfo:(id)info
{
  parametersCopy = parameters;
  infoCopy = info;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__CoreEmbeddedSpeechRecognizer_startSpeechRecognitionWithParameters_didStartHandlerWithInfo___block_invoke;
  block[3] = &unk_2785800F8;
  v12 = parametersCopy;
  v13 = infoCopy;
  block[4] = self;
  v9 = parametersCopy;
  v10 = infoCopy;
  dispatch_async(queue, block);
}

void __93__CoreEmbeddedSpeechRecognizer_startSpeechRecognitionWithParameters_didStartHandlerWithInfo___block_invoke(id *a1)
{
  v37[1] = *MEMORY[0x277D85DE8];
  if (*(a1[4] + 8) == 1)
  {
    v2 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v33 = "[CoreEmbeddedSpeechRecognizer startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]_block_invoke";
      _os_log_error_impl(&dword_225EEB000, v2, OS_LOG_TYPE_ERROR, "%s Local speech recognizer restarted while already recognizing", buf, 0xCu);
    }

    v3 = a1[6];
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEF588] code:1100 userInfo:0];
    v3[2](v3, 0, v4);
  }

  else
  {
    v4 = [a1[5] language];
    if (v4)
    {
      v5 = [a1[4] _service];
      [v5 startRequestActivityWithCompletion:&__block_literal_global_4548];

      objc_storeStrong(a1[4] + 7, v4);
      *(a1[4] + 8) = 1;
      *(a1[4] + 32) = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __93__CoreEmbeddedSpeechRecognizer_startSpeechRecognitionWithParameters_didStartHandlerWithInfo___block_invoke_375;
      aBlock[3] = &unk_2785800D0;
      v6 = a1[5];
      v7 = a1[4];
      v29 = v6;
      v30 = v7;
      v31 = a1[6];
      v8 = _Block_copy(aBlock);
      v9 = a1[4];
      v10 = v9[10];
      if (v10 || v9[9])
      {
        v11 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v33 = "[CoreEmbeddedSpeechRecognizer startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]_block_invoke";
          _os_log_impl(&dword_225EEB000, v11, OS_LOG_TYPE_INFO, "%s Using preheat-loaded speech profile", buf, 0xCu);
          v9 = a1[4];
          v10 = v9[10];
        }

        v8[2](v8, v10, v9[9]);
        v12 = a1[4];
        v13 = v12[9];
        v12[9] = 0;

        v14 = a1[4];
        v15 = v14[10];
        v14[10] = 0;
      }

      else
      {
        v23 = [v4 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
        v24 = SFReplacementLocaleCodeForLocaleIdentifier();
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = v23;
        }

        v15 = v26;

        v27 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v33 = "[CoreEmbeddedSpeechRecognizer startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]_block_invoke";
          v34 = 2112;
          v35 = v15;
          _os_log_impl(&dword_225EEB000, v27, OS_LOG_TYPE_INFO, "%s Loading speech profile for language %@", buf, 0x16u);
        }

        [a1[4] readProfileAndUserDataWithLanguage:v15 allowOverride:1 completion:v8];
      }

      v16 = v29;
    }

    else
    {
      v17 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v33 = "[CoreEmbeddedSpeechRecognizer startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]_block_invoke";
        _os_log_error_impl(&dword_225EEB000, v17, OS_LOG_TYPE_ERROR, "%s Invalid nil language", buf, 0xCu);
      }

      v18 = a1[6];
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CEF588];
      v36 = *MEMORY[0x277CCA470];
      v37[0] = @"Language is nil";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      v21 = [v19 errorWithDomain:v20 code:1107 userInfo:v16];
      v18[2](v18, 0, v21);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __93__CoreEmbeddedSpeechRecognizer_startSpeechRecognitionWithParameters_didStartHandlerWithInfo___block_invoke_375(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__CoreEmbeddedSpeechRecognizer_startSpeechRecognitionWithParameters_didStartHandlerWithInfo___block_invoke_2;
  v15[3] = &unk_278580058;
  v16 = v3;
  v5 = v3;
  v6 = [v4 mutatedCopyWithMutator:v15];
  v7 = *(a1 + 40);
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CoreEmbeddedSpeechRecognizer startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]_block_invoke"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93__CoreEmbeddedSpeechRecognizer_startSpeechRecognitionWithParameters_didStartHandlerWithInfo___block_invoke_3;
  v13[3] = &unk_278580080;
  v14 = *(a1 + 48);
  v9 = [v7 _serviceWithFunctionName:v8 errorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __93__CoreEmbeddedSpeechRecognizer_startSpeechRecognitionWithParameters_didStartHandlerWithInfo___block_invoke_4;
  v11[3] = &unk_2785800A8;
  v10 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v12 = v10;
  [v9 startSpeechRecognitionWithParameters:v6 didStartHandlerWithInfo:v11];
}

void __93__CoreEmbeddedSpeechRecognizer_startSpeechRecognitionWithParameters_didStartHandlerWithInfo___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = [v6 localizedDescription];
      v11 = 136315394;
      v12 = "[CoreEmbeddedSpeechRecognizer startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]_block_invoke_4";
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_225EEB000, v8, OS_LOG_TYPE_INFO, "%s Failed to start local recognition: %@", &v11, 0x16u);
    }

    *(*(a1 + 32) + 8) = 0;
  }

  (*(*(a1 + 40) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

void __93__CoreEmbeddedSpeechRecognizer_startSpeechRecognitionWithParameters_didStartHandlerWithInfo___block_invoke_374()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[CoreEmbeddedSpeechRecognizer startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]_block_invoke";
    _os_log_impl(&dword_225EEB000, v0, OS_LOG_TYPE_INFO, "%s Local speech recognition completed", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)startSpeechRecognitionWithParameters:(id)parameters didStartHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__CoreEmbeddedSpeechRecognizer_startSpeechRecognitionWithParameters_didStartHandler___block_invoke;
  v8[3] = &unk_278580010;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(CoreEmbeddedSpeechRecognizer *)self startSpeechRecognitionWithParameters:parameters didStartHandlerWithInfo:v8];
}

void __85__CoreEmbeddedSpeechRecognizer_startSpeechRecognitionWithParameters_didStartHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v6 modelVersion];
  v7 = [v6 modelType];

  (*(v4 + 16))(v4, v8, v7, v5);
}

- (void)preheatSpeechRecognitionWithAssetConfig:(id)config preheatSource:(id)source modelOverrideURL:(id)l
{
  configCopy = config;
  sourceCopy = source;
  lCopy = l;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __103__CoreEmbeddedSpeechRecognizer_preheatSpeechRecognitionWithAssetConfig_preheatSource_modelOverrideURL___block_invoke;
  v15[3] = &unk_27857FEF8;
  v16 = configCopy;
  selfCopy = self;
  v18 = sourceCopy;
  v19 = lCopy;
  v12 = lCopy;
  v13 = sourceCopy;
  v14 = configCopy;
  dispatch_async(queue, v15);
}

void __103__CoreEmbeddedSpeechRecognizer_preheatSpeechRecognitionWithAssetConfig_preheatSource_modelOverrideURL___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) language];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[CoreEmbeddedSpeechRecognizer preheatSpeechRecognitionWithAssetConfig:preheatSource:modelOverrideURL:]_block_invoke";
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s Preheat loading profile with language %@", buf, 0x16u);
  }

  v4 = *(a1 + 40);
  if (!v4[9] && !v4[10])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __103__CoreEmbeddedSpeechRecognizer_preheatSpeechRecognitionWithAssetConfig_preheatSource_modelOverrideURL___block_invoke_348;
    v7[3] = &unk_27857FEA8;
    v7[4] = v4;
    [v4 readProfileAndUserDataWithLanguage:v2 allowOverride:1 completion:v7];
    v4 = *(a1 + 40);
  }

  v5 = [v4 _service];
  [v5 preheatSpeechRecognitionWithAssetConfig:*(a1 + 32) preheatSource:*(a1 + 48) modelOverrideURL:*(a1 + 56)];

  v6 = *MEMORY[0x277D85DE8];
}

void __103__CoreEmbeddedSpeechRecognizer_preheatSpeechRecognitionWithAssetConfig_preheatSource_modelOverrideURL___block_invoke_348(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  v7 = *MEMORY[0x277CEF0E8];
  v8 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v8)
    {
      v16 = 136315138;
      v17 = "[CoreEmbeddedSpeechRecognizer preheatSpeechRecognitionWithAssetConfig:preheatSource:modelOverrideURL:]_block_invoke";
      _os_log_impl(&dword_225EEB000, v7, OS_LOG_TYPE_INFO, "%s Loaded preheat-loaded speech profile", &v16, 0xCu);
    }

    v9 = [v5 copy];
    v10 = *(a1 + 32);
    v11 = *(v10 + 80);
    *(v10 + 80) = v9;

    v12 = [v6 copy];
    v13 = *(a1 + 32);
    v14 = *(v13 + 72);
    *(v13 + 72) = v12;
  }

  else if (v8)
  {
    v16 = 136315138;
    v17 = "[CoreEmbeddedSpeechRecognizer preheatSpeechRecognitionWithAssetConfig:preheatSource:modelOverrideURL:]_block_invoke";
    _os_log_impl(&dword_225EEB000, v7, OS_LOG_TYPE_INFO, "%s Failed to load speech profile during preheat", &v16, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)preheatSpeechRecognitionWithLanguage:(id)language modelOverrideURL:(id)l
{
  languageCopy = language;
  lCopy = l;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__CoreEmbeddedSpeechRecognizer_preheatSpeechRecognitionWithLanguage_modelOverrideURL___block_invoke;
  block[3] = &unk_27857FED0;
  v12 = languageCopy;
  selfCopy = self;
  v14 = lCopy;
  v9 = lCopy;
  v10 = languageCopy;
  dispatch_async(queue, block);
}

void __86__CoreEmbeddedSpeechRecognizer_preheatSpeechRecognitionWithLanguage_modelOverrideURL___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    *buf = 136315394;
    v10 = "[CoreEmbeddedSpeechRecognizer preheatSpeechRecognitionWithLanguage:modelOverrideURL:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_225EEB000, v2, OS_LOG_TYPE_INFO, "%s Preheat loading profile with language %@", buf, 0x16u);
  }

  v4 = a1[5];
  if (!v4[9] && !v4[10])
  {
    v5 = a1[4];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __86__CoreEmbeddedSpeechRecognizer_preheatSpeechRecognitionWithLanguage_modelOverrideURL___block_invoke_346;
    v8[3] = &unk_27857FEA8;
    v8[4] = v4;
    [v4 readProfileAndUserDataWithLanguage:v5 allowOverride:1 completion:v8];
    v4 = a1[5];
  }

  v6 = [v4 _service];
  [v6 preheatSpeechRecognitionWithLanguage:a1[4] modelOverrideURL:a1[6]];

  v7 = *MEMORY[0x277D85DE8];
}

void __86__CoreEmbeddedSpeechRecognizer_preheatSpeechRecognitionWithLanguage_modelOverrideURL___block_invoke_346(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  v7 = *MEMORY[0x277CEF0E8];
  v8 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v8)
    {
      v16 = 136315138;
      v17 = "[CoreEmbeddedSpeechRecognizer preheatSpeechRecognitionWithLanguage:modelOverrideURL:]_block_invoke";
      _os_log_impl(&dword_225EEB000, v7, OS_LOG_TYPE_INFO, "%s Loaded preheat-loaded speech profile", &v16, 0xCu);
    }

    v9 = [v5 copy];
    v10 = *(a1 + 32);
    v11 = *(v10 + 80);
    *(v10 + 80) = v9;

    v12 = [v6 copy];
    v13 = *(a1 + 32);
    v14 = *(v13 + 72);
    *(v13 + 72) = v12;
  }

  else if (v8)
  {
    v16 = 136315138;
    v17 = "[CoreEmbeddedSpeechRecognizer preheatSpeechRecognitionWithLanguage:modelOverrideURL:]_block_invoke";
    _os_log_impl(&dword_225EEB000, v7, OS_LOG_TYPE_INFO, "%s Failed to load speech profile during preheat", &v16, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_synchronousServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _connection = [(CoreEmbeddedSpeechRecognizer *)self _connection];
  v6 = _connection;
  if (_connection)
  {
    v7 = [_connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEF588] code:601 userInfo:0];
    handlerCopy[2](handlerCopy, v8);

    v7 = 0;
  }

  return v7;
}

- (id)_serviceWithFunctionName:(id)name errorHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  _connection = [(CoreEmbeddedSpeechRecognizer *)self _connection];
  if (_connection)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__CoreEmbeddedSpeechRecognizer__serviceWithFunctionName_errorHandler___block_invoke;
    v12[3] = &unk_27857FE80;
    v13 = nameCopy;
    v14 = handlerCopy;
    v9 = [_connection remoteObjectProxyWithErrorHandler:v12];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEF588] code:601 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v10);

    v9 = 0;
  }

  return v9;
}

void __70__CoreEmbeddedSpeechRecognizer__serviceWithFunctionName_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[CoreEmbeddedSpeechRecognizer _serviceWithFunctionName:errorHandler:]_block_invoke";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_225EEB000, v4, OS_LOG_TYPE_INFO, "%s %@: Local speech recognition not reachable: %@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_service
{
  _connection = [(CoreEmbeddedSpeechRecognizer *)self _connection];
  remoteObjectProxy = [_connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)_connection
{
  if ((AFOfflineDictationCapable() & 1) != 0 || AFDeviceSupportsSiriUOD())
  {
    dispatch_assert_queue_V2(self->_queue);
    esConnection = self->_esConnection;
    if (!esConnection)
    {
      _newConnection = [(CoreEmbeddedSpeechRecognizer *)self _newConnection];
      v5 = self->_esConnection;
      self->_esConnection = _newConnection;

      objc_initWeak(&location, self);
      v6 = self->_esConnection;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __43__CoreEmbeddedSpeechRecognizer__connection__block_invoke;
      v12[3] = &unk_27857FE58;
      objc_copyWeak(&v13, &location);
      [(NSXPCConnection *)v6 setInterruptionHandler:v12];
      v7 = self->_esConnection;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __43__CoreEmbeddedSpeechRecognizer__connection__block_invoke_344;
      v10[3] = &unk_27857FE58;
      objc_copyWeak(&v11, &location);
      [(NSXPCConnection *)v7 setInvalidationHandler:v10];
      [(NSXPCConnection *)self->_esConnection resume];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
      esConnection = self->_esConnection;
    }

    v8 = esConnection;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __43__CoreEmbeddedSpeechRecognizer__connection__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[CoreEmbeddedSpeechRecognizer _connection]_block_invoke";
    v11 = 2112;
    v12 = @"com.apple.siri.embeddedspeech";
    _os_log_impl(&dword_225EEB000, v2, OS_LOG_TYPE_INFO, "%s %@ Interrupted", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] invalidate];
    v5 = v4[3];
    v4[3] = 0;

    if (*(v4 + 8) == 1)
    {
      v6 = objc_loadWeakRetained(v4 + 11);
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEF588] code:1107 userInfo:0];
      [v6 localSpeechRecognizer:v4 didCompletionRecognitionWithStatistics:0 error:v7];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __43__CoreEmbeddedSpeechRecognizer__connection__block_invoke_344(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[CoreEmbeddedSpeechRecognizer _connection]_block_invoke";
    v11 = 2112;
    v12 = @"com.apple.siri.embeddedspeech";
    _os_log_impl(&dword_225EEB000, v2, OS_LOG_TYPE_INFO, "%s %@ Invalidated", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[3];
    WeakRetained[3] = 0;

    if (*(v4 + 8) == 1)
    {
      v6 = objc_loadWeakRetained(v4 + 11);
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEF588] code:1101 userInfo:0];
      [v6 localSpeechRecognizer:v4 didCompletionRecognitionWithStatistics:0 error:v7];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_newConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.siri.embeddedspeech"];
  v4 = CESRSpeechServiceGetXPCInterface();
  [v3 setRemoteObjectInterface:v4];

  v5 = CESRSpeechServiceDelegateGetXPCInterface();
  [v3 setExportedInterface:v5];

  [v3 setExportedObject:self];
  [v3 _setQueue:self->_queue];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:self->_instanceUUID];
  [v3 _setUUID:v6];

  return v3;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[CoreEmbeddedSpeechRecognizer dealloc]";
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s CoreEmbeddedSpeechRecognizer Dealloc", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = CoreEmbeddedSpeechRecognizer;
  [(CoreEmbeddedSpeechRecognizer *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (CoreEmbeddedSpeechRecognizer)initWithDelegate:(id)delegate instanceUUID:(unsigned __int8)d[16]
{
  v27 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = CoreEmbeddedSpeechRecognizer;
  v7 = [(CoreEmbeddedSpeechRecognizer *)&v22 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    if ((AFDeviceSupportsSiriUOD() & 1) != 0 || AFOfflineDictationCapable())
    {
      mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
      infersQoSFromInstanceUUIDForEAR = [mEMORY[0x277CEF368] infersQoSFromInstanceUUIDForEAR];

      if (infersQoSFromInstanceUUIDForEAR)
      {
        QoSClassFromInstanceUUID = CoreEmbeddedSpeechRecognizerGetQoSClassFromInstanceUUID(d);
        if (QoSClassFromInstanceUUID)
        {
          v12 = QoSClassFromInstanceUUID;
          v13 = *MEMORY[0x277CEF0E8];
          if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v24 = "[CoreEmbeddedSpeechRecognizer initWithDelegate:instanceUUID:]";
            v25 = 1024;
            v26 = v12;
            _os_log_impl(&dword_225EEB000, v13, OS_LOG_TYPE_INFO, "%s ASR: Using QoS class %#02X.", buf, 0x12u);
          }

          v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v15 = dispatch_queue_attr_make_with_qos_class(v14, v12, 0);

          v16 = dispatch_queue_create("CoreEmbeddedSpeechRecognizer", v15);
          queue = v8->_queue;
          v8->_queue = v16;
        }
      }
    }

    if (!v8->_queue)
    {
      v18 = dispatch_queue_create("CoreEmbeddedSpeechRecognizer", 0);
      v19 = v8->_queue;
      v8->_queue = v18;
    }

    uuid_copy(v8->_instanceUUID, d);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

void __74__CoreEmbeddedSpeechRecognizer_offlineDictationStatusIgnoringCache_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__CoreEmbeddedSpeechRecognizer_offlineDictationStatusIgnoringCache_error___block_invoke_2;
  v6[3] = &unk_278580258;
  v6[4] = a1[6];
  v3 = [v2 _synchronousServiceWithErrorHandler:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __74__CoreEmbeddedSpeechRecognizer_offlineDictationStatusIgnoringCache_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (BOOL)purgeInstalledAssetsExceptLanguages:(id)languages assetType:(unint64_t)type error:(id *)error
{
  languagesCopy = languages;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4503;
  v29 = __Block_byref_object_dispose__4504;
  v30 = 0;
  v8 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__4503;
  v23 = __Block_byref_object_dispose__4504;
  v24 = 0;
  queue = v8->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__CoreEmbeddedSpeechRecognizer_purgeInstalledAssetsExceptLanguages_assetType_error___block_invoke;
  block[3] = &unk_278580280;
  v17 = &v19;
  v10 = v8;
  v16 = v10;
  v18 = &v25;
  dispatch_sync(queue, block);
  v11 = v20[5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__CoreEmbeddedSpeechRecognizer_purgeInstalledAssetsExceptLanguages_assetType_error___block_invoke_3;
  v14[3] = &unk_2785803E8;
  v14[4] = &v25;
  v14[5] = &v31;
  [v11 purgeInstalledAssetsExceptLanguages:languagesCopy assetType:type completion:v14];
  [(CoreEmbeddedSpeechRecognizer *)v10 invalidate];
  if (error)
  {
    *error = v26[5];
  }

  v12 = *(v32 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  return v12;
}

void __84__CoreEmbeddedSpeechRecognizer_purgeInstalledAssetsExceptLanguages_assetType_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__CoreEmbeddedSpeechRecognizer_purgeInstalledAssetsExceptLanguages_assetType_error___block_invoke_2;
  v6[3] = &unk_278580258;
  v6[4] = a1[6];
  v3 = [v2 _synchronousServiceWithErrorHandler:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __84__CoreEmbeddedSpeechRecognizer_purgeInstalledAssetsExceptLanguages_assetType_error___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

+ (id)purgeInstalledAssetsExceptLanguages:(id)languages error:(id *)error
{
  languagesCopy = languages;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__4503;
  v33 = __Block_byref_object_dispose__4504;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__4503;
  v27 = __Block_byref_object_dispose__4504;
  v28 = 0;
  v6 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4503;
  v21 = __Block_byref_object_dispose__4504;
  v22 = 0;
  queue = v6->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CoreEmbeddedSpeechRecognizer_purgeInstalledAssetsExceptLanguages_error___block_invoke;
  block[3] = &unk_278580280;
  v15 = &v17;
  v8 = v6;
  v14 = v8;
  v16 = &v23;
  dispatch_sync(queue, block);
  v9 = v18[5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__CoreEmbeddedSpeechRecognizer_purgeInstalledAssetsExceptLanguages_error___block_invoke_3;
  v12[3] = &unk_2785803C0;
  v12[4] = &v23;
  v12[5] = &v29;
  [v9 purgeInstalledAssetsExceptLanguages:languagesCopy completion:v12];
  [(CoreEmbeddedSpeechRecognizer *)v8 invalidate];
  if (error)
  {
    *error = v24[5];
  }

  v10 = v30[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);

  return v10;
}

void __74__CoreEmbeddedSpeechRecognizer_purgeInstalledAssetsExceptLanguages_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__CoreEmbeddedSpeechRecognizer_purgeInstalledAssetsExceptLanguages_error___block_invoke_2;
  v6[3] = &unk_278580258;
  v6[4] = a1[6];
  v3 = [v2 _synchronousServiceWithErrorHandler:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __74__CoreEmbeddedSpeechRecognizer_purgeInstalledAssetsExceptLanguages_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (id)dictionaryWithContentsProfilePathForLanguage:(id)language errorOut:(id *)out
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [self profilePathForLanguage:language errorOut:?];
  if (v5)
  {
    v6 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "+[CoreEmbeddedSpeechRecognizer dictionaryWithContentsProfilePathForLanguage:errorOut:]";
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_225EEB000, v6, OS_LOG_TYPE_INFO, "%s Using user profile from %@", &v12, 0x16u);
    }

    v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v5 options:0 error:out];
    if (v7)
    {
      v8 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:0 format:0 error:out];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v9 = v8;
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
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)profilePathForLanguage:(id)language errorOut:(id *)out
{
  v20[3] = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v5 = sysconf(71);
  if (v5 == -1)
  {
    v7 = 0;
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
    v18 = 0;
    if (getpwnam_r("mobile", &v19, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5, &v18))
    {
      v6 = 1;
    }

    else
    {
      v6 = v18 == 0;
    }

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v19.pw_dir];
      v20[0] = v9;
      v20[1] = @"Library";
      v20[2] = @"/Assistant";
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
      v11 = [v8 pathWithComponents:v10];

      if (v11)
      {
        v12 = [languageCopy stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

        v13 = [v11 stringByAppendingPathComponent:@"SpeechProfile"];
        v14 = [v13 stringByAppendingString:@"_"];
        v7 = [v14 stringByAppendingString:v12];

        languageCopy = v12;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)speechProfileDataLastModifiedDataForLanguage:(id)language
{
  v3 = [self profilePathForLanguage:language errorOut:0];
  if (v3)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [defaultManager attributesOfItemAtPath:v3 error:0];
    v6 = [v5 objectForKey:*MEMORY[0x277CCA150]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)forceCooldownIfIdle
{
  v2 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive];
  queue = v2->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CoreEmbeddedSpeechRecognizer_forceCooldownIfIdle__block_invoke;
  block[3] = &unk_27857FFE8;
  v6 = v2;
  v4 = v2;
  dispatch_async(queue, block);
}

void __51__CoreEmbeddedSpeechRecognizer_forceCooldownIfIdle__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "+[CoreEmbeddedSpeechRecognizer forceCooldownIfIdle]_block_invoke";
    _os_log_impl(&dword_225EEB000, v2, OS_LOG_TYPE_INFO, "%s Starting to cooldown", buf, 0xCu);
  }

  v3 = [*(a1 + 32) _service];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__CoreEmbeddedSpeechRecognizer_forceCooldownIfIdle__block_invoke_361;
  v5[3] = &unk_27857FFC0;
  v6 = *(a1 + 32);
  [v3 forceCooldownIfIdleWithCompletion:v5];

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __51__CoreEmbeddedSpeechRecognizer_forceCooldownIfIdle__block_invoke_361(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v5 = @"NOT";
    if (a2)
    {
      v5 = &stru_283946208;
    }

    v8 = 136315394;
    v9 = "+[CoreEmbeddedSpeechRecognizer forceCooldownIfIdle]_block_invoke";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_225EEB000, v4, OS_LOG_TYPE_INFO, "%s Forced cooldown and was %@successful", &v8, 0x16u);
  }

  result = [*(a1 + 32) invalidate];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)compilePrimaryAssistantAssetWithCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (AFDeviceHighestLanguageModelCapabilityIdentifier() > 9)
  {
    v5 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:CoreEmbeddedSpeechRecognizerInstanceUUIDBackground];
    v6 = SFEntitledAssetTypeToString();
    v7 = MEMORY[0x277CCACA8];
    lowercaseString = [v6 lowercaseString];
    v9 = [v7 stringWithFormat:@"com.apple.siri.embeddedspeech.compilation.%@.primary", lowercaseString];

    [v9 UTF8String];
    v10 = os_transaction_create();
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__CoreEmbeddedSpeechRecognizer_compilePrimaryAssistantAssetWithCompletion___block_invoke;
    aBlock[3] = &unk_27857FF70;
    v23 = v6;
    v11 = v5;
    v24 = v11;
    v25 = v10;
    v26 = completionCopy;
    v12 = v10;
    v13 = v6;
    v14 = _Block_copy(aBlock);
    queue = v11->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__CoreEmbeddedSpeechRecognizer_compilePrimaryAssistantAssetWithCompletion___block_invoke_360;
    block[3] = &unk_27857FF48;
    v20 = v11;
    v21 = v14;
    v16 = v14;
    v17 = v11;
    dispatch_async(queue, block);
  }

  else
  {
    v4 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v28 = "+[CoreEmbeddedSpeechRecognizer compilePrimaryAssistantAssetWithCompletion:]";
      _os_log_impl(&dword_225EEB000, v4, OS_LOG_TYPE_INFO, "%s Skipping model compilation as this device does not support ANE.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1, 0);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __75__CoreEmbeddedSpeechRecognizer_compilePrimaryAssistantAssetWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 136315650;
      v9 = "+[CoreEmbeddedSpeechRecognizer compilePrimaryAssistantAssetWithCompletion:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_225EEB000, v4, OS_LOG_TYPE_ERROR, "%s Error requesting model compilation for the primary %@ asset: %@", &v8, 0x20u);
    }
  }

  [*(a1 + 40) invalidate];
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, v3 == 0, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __75__CoreEmbeddedSpeechRecognizer_compilePrimaryAssistantAssetWithCompletion___block_invoke_360(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[CoreEmbeddedSpeechRecognizer compilePrimaryAssistantAssetWithCompletion:]_block_invoke"];
  v3 = [v2 _serviceWithFunctionName:v4 errorHandler:*(a1 + 40)];
  [v3 compilePrimaryAssistantAssetWithCompletion:*(a1 + 40)];
}

+ (void)compileAllAssetsWithType:(unint64_t)type completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (AFDeviceHighestLanguageModelCapabilityIdentifier() > 9)
  {
    v7 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:CoreEmbeddedSpeechRecognizerInstanceUUIDBackground];
    v8 = SFEntitledAssetTypeToString();
    v9 = MEMORY[0x277CCACA8];
    lowercaseString = [v8 lowercaseString];
    v11 = [v9 stringWithFormat:@"com.apple.siri.embeddedspeech.compilation.%@", lowercaseString];

    [v11 UTF8String];
    v12 = os_transaction_create();
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__CoreEmbeddedSpeechRecognizer_compileAllAssetsWithType_completion___block_invoke;
    aBlock[3] = &unk_27857FF70;
    v26 = v8;
    v13 = v7;
    v27 = v13;
    v28 = v12;
    v29 = completionCopy;
    v14 = v12;
    v15 = v8;
    v16 = _Block_copy(aBlock);
    queue = v13->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__CoreEmbeddedSpeechRecognizer_compileAllAssetsWithType_completion___block_invoke_356;
    block[3] = &unk_27857FF98;
    v22 = v13;
    v23 = v16;
    typeCopy = type;
    v18 = v16;
    v19 = v13;
    dispatch_async(queue, block);
  }

  else
  {
    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v31 = "+[CoreEmbeddedSpeechRecognizer compileAllAssetsWithType:completion:]";
      _os_log_impl(&dword_225EEB000, v6, OS_LOG_TYPE_INFO, "%s Skipping model compilation as this device does not support ANE.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __68__CoreEmbeddedSpeechRecognizer_compileAllAssetsWithType_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 136315650;
      v9 = "+[CoreEmbeddedSpeechRecognizer compileAllAssetsWithType:completion:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_225EEB000, v4, OS_LOG_TYPE_ERROR, "%s Error requesting model compilation for %@ assets: %@", &v8, 0x20u);
    }
  }

  [*(a1 + 40) invalidate];
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, v3 == 0, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __68__CoreEmbeddedSpeechRecognizer_compileAllAssetsWithType_completion___block_invoke_356(void *a1)
{
  v2 = a1[4];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[CoreEmbeddedSpeechRecognizer compileAllAssetsWithType:completion:]_block_invoke"];
  v3 = [v2 _serviceWithFunctionName:v4 errorHandler:a1[5]];
  [v3 compileAllAssetsWithType:a1[6] completion:a1[5]];
}

+ (void)cleanupUnusedSubscriptions
{
  v2 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:CoreEmbeddedSpeechRecognizerInstanceUUIDBackground];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__CoreEmbeddedSpeechRecognizer_cleanupUnusedSubscriptions__block_invoke;
  aBlock[3] = &unk_27857FF20;
  v3 = v2;
  v12 = v3;
  v4 = _Block_copy(aBlock);
  queue = v3->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CoreEmbeddedSpeechRecognizer_cleanupUnusedSubscriptions__block_invoke_352;
  block[3] = &unk_27857FF48;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(queue, block);
}

void __58__CoreEmbeddedSpeechRecognizer_cleanupUnusedSubscriptions__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v6 = v4;
      v7 = [v3 localizedDescription];
      v8 = 136315394;
      v9 = "+[CoreEmbeddedSpeechRecognizer cleanupUnusedSubscriptions]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s Error requesting daily subscriptions cleanup: %@", &v8, 0x16u);
    }
  }

  [*(a1 + 32) invalidate];

  v5 = *MEMORY[0x277D85DE8];
}

void __58__CoreEmbeddedSpeechRecognizer_cleanupUnusedSubscriptions__block_invoke_352(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[CoreEmbeddedSpeechRecognizer cleanupUnusedSubscriptions]_block_invoke"];
  v3 = [v2 _serviceWithFunctionName:v4 errorHandler:*(a1 + 40)];
  [v3 cleanupUnusedSubscriptions];
}

+ (void)handlePostInstallSubscriptions
{
  v2 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:CoreEmbeddedSpeechRecognizerInstanceUUIDBackground];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__CoreEmbeddedSpeechRecognizer_handlePostInstallSubscriptions__block_invoke;
  aBlock[3] = &unk_27857FF20;
  v3 = v2;
  v12 = v3;
  v4 = _Block_copy(aBlock);
  queue = v3->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__CoreEmbeddedSpeechRecognizer_handlePostInstallSubscriptions__block_invoke_350;
  block[3] = &unk_27857FF48;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(queue, block);
}

void __62__CoreEmbeddedSpeechRecognizer_handlePostInstallSubscriptions__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v6 = v4;
      v7 = [v3 localizedDescription];
      v8 = 136315394;
      v9 = "+[CoreEmbeddedSpeechRecognizer handlePostInstallSubscriptions]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s Error requesting post-install subscriptions: %@", &v8, 0x16u);
    }
  }

  [*(a1 + 32) invalidate];

  v5 = *MEMORY[0x277D85DE8];
}

void __62__CoreEmbeddedSpeechRecognizer_handlePostInstallSubscriptions__block_invoke_350(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[CoreEmbeddedSpeechRecognizer handlePostInstallSubscriptions]_block_invoke"];
  v3 = [v2 _serviceWithFunctionName:v4 errorHandler:*(a1 + 40)];
  [v3 handlePostInstallSubscriptions];
}

@end