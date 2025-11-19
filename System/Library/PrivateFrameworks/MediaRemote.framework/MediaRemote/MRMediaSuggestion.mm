@interface MRMediaSuggestion
+ (void)playSuggestionWithPlaybackIdentifier:(id)a3 completion:(id)a4;
+ (void)playSuggestionWithPlaybackIdentifier:(id)a3 onDeviceWithUID:(id)a4 completion:(id)a5;
- (BOOL)isEqual:(id)a3;
- (MRMediaSuggestion)initWithIntent:(id)a3 playbackIdentifier:(id)a4;
- (__CFString)_identifierForQueuePlayback;
- (dispatch_queue_t)_callbackQueue;
- (id)_intentForQueuePlayback;
- (id)_processedIntent;
- (id)_processedIntentWithRouteIdentifiers:(uint64_t)a1;
- (id)description;
- (uint64_t)_originatedFromSystemMediaApp;
- (unint64_t)hash;
- (void)_confirmIntent:(void *)a3 intentHandler:;
- (void)_handleIntentWithProxy:(void *)a3 completion:;
- (void)_playIntent:(void *)a3 completion:;
- (void)_playIntent:onEndpoint:queue:completion:;
- (void)_playIntentRemotelyAsPlaybackQueue:endpoint:queue:completion:;
- (void)_playIntentRemotelyWithAirPlay:(void *)a3 destinationDevices:(void *)a4 queue:(void *)a5 completion:;
- (void)playOnDeviceWithUID:(id)a3 completion:(id)a4;
- (void)playOnEndpoint:(id)a3 completion:(id)a4;
- (void)playWithAirPlayRouteIdentifiers:(id)a3 completion:(id)a4;
- (void)playWithCompletion:(id)a3;
- (void)setArtwork:(uint64_t)a1;
- (void)setBundleID:(uint64_t)a1;
@end

@implementation MRMediaSuggestion

- (MRMediaSuggestion)initWithIntent:(id)a3 playbackIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MRMediaSuggestion;
  v9 = [(MRMediaSuggestion *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_intent, a3);
    objc_storeStrong(&v10->_playbackIdentifier, a4);
    v11 = [(INPlayMediaIntent *)v10->_intent mediaContainer];
    container = v10->_container;
    v10->_container = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MRMediaSuggestion *)self identifier];
      v7 = [(MRMediaSuggestion *)v5 identifier];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(MRMediaSuggestion *)self identifier];
        v9 = [(MRMediaSuggestion *)v5 identifier];
        v10 = [v8 isEqualToString:v9];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(MRMediaSuggestion *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)_processedIntentWithRouteIdentifiers:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 40) copy];
    [v4 _setAirPlayRouteIds:v3];
    [v4 setMediaItems:0];
    [v4 setPlayShuffled:0];
    if ([(MRMediaSuggestion *)a1 _originatedFromSystemMediaApp])
    {
      v24 = v3;
      v5 = [v4 privatePlayMediaIntentData];
      v30 = 0;
      v31 = &v30;
      v32 = 0x2050000000;
      v6 = getINPrivatePlayMediaIntentDataClass_softClass;
      v33 = getINPrivatePlayMediaIntentDataClass_softClass;
      if (!getINPrivatePlayMediaIntentDataClass_softClass)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __getINPrivatePlayMediaIntentDataClass_block_invoke;
        v29[3] = &unk_1E769ADA8;
        v29[4] = &v30;
        __getINPrivatePlayMediaIntentDataClass_block_invoke(v29);
        v6 = v31[3];
      }

      v18 = v4;
      v7 = v6;
      _Block_object_dispose(&v30, 8);
      v23 = [v6 alloc];
      v26 = [v5 appSelectionEnabled];
      v28 = [v5 appInferred];
      v27 = [v5 audioSearchResults];
      v22 = [v5 privateMediaIntentData];
      v21 = [v5 appSelectionSignalsEnabled];
      v20 = [v5 appSelectionSignalsFrequencyDenominator];
      v25 = [v5 immediatelyStartPlayback];
      v19 = [v5 isAmbiguousPlay];
      v17 = [v5 isPersonalizedRequest];
      v16 = [v5 internalSignals];
      v15 = [v5 entityConfidenceSignalsEnabled];
      v14 = [v5 entityConfidenceSignalsFrequencyDenominatorInternal];
      v8 = [v5 entityConfidenceSignalsFrequencyDenominatorProd];
      v9 = [v5 entityConfidenceSignalsMaxItemsToDisambiguate];
      v10 = [v5 alternativeProviderBundleIdentifier];
      v11 = [v5 ampPAFDataSetID];
      v12 = [v23 initWithAppSelectionEnabled:v26 appInferred:v28 audioSearchResults:v27 privateMediaIntentData:v22 appSelectionSignalsEnabled:v21 appSelectionSignalsFrequencyDenominator:v20 shouldSuppressCommonWholeHouseAudioRoutes:MEMORY[0x1E695E118] immediatelyStartPlayback:v25 isAmbiguousPlay:v19 isPersonalizedRequest:v17 internalSignals:v16 entityConfidenceSignalsEnabled:v15 entityConfidenceSignalsFrequencyDenominatorInternal:v14 entityConfidenceSignalsFrequencyDenominatorProd:v8 entityConfidenceSignalsMaxItemsToDisambiguate:v9 alternativeProviderBundleIdentifier:v10 ampPAFDataSetID:v11];
      [v18 setPrivatePlayMediaIntentData:v12];

      v3 = v24;
      v4 = v18;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_intentForQueuePlayback
{
  if (a1)
  {
    v1 = [(MRMediaSuggestion *)a1 _processedIntent];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v2 = getINMediaItemClass_softClass;
    v29 = getINMediaItemClass_softClass;
    if (!getINMediaItemClass_softClass)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __getINMediaItemClass_block_invoke;
      v25[3] = &unk_1E769ADA8;
      v25[4] = &v26;
      __getINMediaItemClass_block_invoke(v25);
      v2 = v27[3];
    }

    v3 = v2;
    _Block_object_dispose(&v26, 8);
    v18 = [v2 alloc];
    v23 = [v1 mediaContainer];
    v22 = [v23 identifier];
    v24 = [v22 stringByAppendingString:@"&includePlaybackQueue=true"];
    v21 = [v1 mediaContainer];
    v16 = [v21 title];
    v20 = [v1 mediaContainer];
    v15 = [v20 type];
    v19 = [v1 mediaContainer];
    v4 = [v19 artwork];
    v17 = [v1 mediaContainer];
    v5 = [v17 artist];
    v6 = [v1 mediaContainer];
    v7 = [v6 topics];
    v8 = [v1 mediaContainer];
    v9 = [v8 namedEntities];
    v10 = [v1 mediaContainer];
    v11 = [v10 privateMediaItemValueData];
    v12 = v5;
    v13 = [v18 initWithIdentifier:v24 title:v16 type:v15 artwork:v4 artist:v5 topics:v7 namedEntities:v9 privateMediaItemValueData:v11];
    [v1 setMediaContainer:v13];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void __40__MRMediaSuggestion_playWithCompletion___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:a1[4]];
  v6 = v5;

  if (!v3)
  {
    v7 = _MRLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v10 = 138543618;
      v11 = v8;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRMediaSuggestion] %{public}@ began playback after %f seconds.", &v10, 0x16u);
    }
  }

  (*(a1[6] + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

void __52__MRMediaSuggestion_playOnDeviceWithUID_completion___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:a1[4]];
  v6 = v5;

  if (!v3)
  {
    v7 = _MRLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v10 = 138543618;
      v11 = v8;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRMediaSuggestion] %{public}@ began playback after %f seconds.", &v10, 0x16u);
    }
  }

  (*(a1[6] + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

void __52__MRMediaSuggestion_playOnDeviceWithUID_completion___block_invoke_17(uint64_t a1, void *a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  if (a3)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v8 = [v5 endpoint];
    if (!v8 || (__52__MRMediaSuggestion_playOnDeviceWithUID_completion___block_invoke_17_cold_1(a1, v8, v5) & 1) != 0)
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v12[0] = v5;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [(MRMediaSuggestion *)v9 _playIntentRemotelyWithAirPlay:v10 destinationDevices:v11 queue:*(a1 + 56) completion:*(a1 + 72)];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __64__MRMediaSuggestion_playWithAirPlayRouteIdentifiers_completion___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:a1[4]];
  v6 = v5;

  if (!v3)
  {
    v7 = _MRLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v10 = 138543618;
      v11 = v8;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRMediaSuggestion] %{public}@ began playback after %f seconds.", &v10, 0x16u);
    }
  }

  (*(a1[6] + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)playOnEndpoint:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isLocalEndpoint])
  {
    [(MRMediaSuggestion *)self playWithCompletion:v7];
  }

  else
  {
    [(MRMediaSuggestion *)self playOnEndpoint:v8 completion:v7, v6];
  }
}

void __47__MRMediaSuggestion_playOnEndpoint_completion___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:a1[4]];
  v6 = v5;

  if (!v3)
  {
    v7 = _MRLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v10 = 138543618;
      v11 = v8;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRMediaSuggestion] %{public}@ began playback after %f seconds.", &v10, 0x16u);
    }
  }

  (*(a1[6] + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)playSuggestionWithPlaybackIdentifier:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MRMediaSuggestionRequest defaultRequest];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__MRMediaSuggestion_playSuggestionWithPlaybackIdentifier_completion___block_invoke;
  v9[3] = &unk_1E769AED0;
  v10 = v5;
  v8 = v5;
  [v7 performWithPlaybackIdentifier:v6 completion:v9];
}

uint64_t __69__MRMediaSuggestion_playSuggestionWithPlaybackIdentifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return (*(v3 + 16))(*(a1 + 32), a3);
  }

  else
  {
    return [a2 playWithCompletion:v3];
  }
}

+ (void)playSuggestionWithPlaybackIdentifier:(id)a3 onDeviceWithUID:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = +[MRMediaSuggestionRequest defaultRequest];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__MRMediaSuggestion_playSuggestionWithPlaybackIdentifier_onDeviceWithUID_completion___block_invoke;
  v14[3] = &unk_1E769AF48;
  v16 = v9;
  v17 = a1;
  v15 = v8;
  v12 = v8;
  v13 = v9;
  [v11 performWithPlaybackIdentifier:v10 completion:v14];
}

void __85__MRMediaSuggestion_playSuggestionWithPlaybackIdentifier_onDeviceWithUID_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    __85__MRMediaSuggestion_playSuggestionWithPlaybackIdentifier_onDeviceWithUID_completion___block_invoke_cold_1(v5, v8, a1, v7);
  }
}

void __85__MRMediaSuggestion_playSuggestionWithPlaybackIdentifier_onDeviceWithUID_completion___block_invoke_2(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:a1[4]];
  v6 = v5;

  if (!v3)
  {
    v7 = _MRLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[6];
      v10 = 138543618;
      v11 = v8;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRMediaSuggestion] %{public}@ began playback after %f seconds.", &v10, 0x16u);
    }
  }

  (*(a1[5] + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

void __85__MRMediaSuggestion_playSuggestionWithPlaybackIdentifier_onDeviceWithUID_completion___block_invoke_23(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 32);
  if (a3)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    __85__MRMediaSuggestion_playSuggestionWithPlaybackIdentifier_onDeviceWithUID_completion___block_invoke_23_cold_1(a1);
  }
}

void __61__MRMediaSuggestion__playIntent_onEndpoint_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MRMediaSuggestion__playIntent_onEndpoint_queue_completion___block_invoke_2;
  block[3] = &unk_1E769AF70;
  v13 = v3;
  v16 = *(a1 + 64);
  v11 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v11;
  *(&v9 + 1) = v5;
  v14 = v9;
  v15 = v8;
  v10 = v3;
  dispatch_async(v4, block);
}

void __61__MRMediaSuggestion__playIntent_onEndpoint_queue_completion___block_invoke_2(void *a1)
{
  if (a1[4])
  {
    (*(a1[9] + 16))();
  }

  else
  {
    v2 = a1[5];
    v1 = a1[6];
    v3 = a1[7];
    v4 = a1[8];
    v5 = a1[9];
    [MRMediaSuggestion _playIntentRemotelyAsPlaybackQueue:endpoint:queue:completion:];
  }
}

void __82__MRMediaSuggestion__playIntentRemotelyAsPlaybackQueue_endpoint_queue_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v6 = *(a1 + 64);
    v7 = *(*(a1 + 64) + 16);
    v8 = *MEMORY[0x1E69E9840];

    v7();
  }

  else
  {
    v9 = [a4 objectForKeyedSubscript:@"kMRMediaRemoteOptionSystemAppPlaybackQueueData"];
    if (v9)
    {
      v11 = [MRClient alloc];
      v12 = [(MRMediaSuggestion *)*(a1 + 32) _identifierForQueuePlayback];
      v10 = [(MRClient *)v11 initWithBundleIdentifier:v12];

      v13 = [MRPlayerPath alloc];
      v14 = [*(a1 + 40) origin];
      v15 = [(MRPlayerPath *)v13 initWithOrigin:v14 client:v10 player:0];

      v25 = @"kMRMediaRemoteOptionSystemAppPlaybackQueueData";
      v26[0] = v9;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v17 = *(a1 + 48);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __82__MRMediaSuggestion__playIntentRemotelyAsPlaybackQueue_endpoint_queue_completion___block_invoke_2;
      v20[3] = &unk_1E769AFE8;
      v23 = *(a1 + 64);
      v20[4] = *(a1 + 32);
      v21 = v15;
      v22 = *(a1 + 56);
      v18 = v15;
      MRMediaRemoteSendCommandToPlayer(122, v16, v18, 1, v17, v20);
    }

    else
    {
      __82__MRMediaSuggestion__playIntentRemotelyAsPlaybackQueue_endpoint_queue_completion___block_invoke_cold_1(a1, &v24);
      v10 = v24;
    }

    v19 = *MEMORY[0x1E69E9840];
  }
}

void __82__MRMediaSuggestion__playIntentRemotelyAsPlaybackQueue_endpoint_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = MRMediaRemoteErrorFromCommandStatuses(a2, a3);
  if (v4)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = _MRLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRMediaSuggestion] %{public}@ successfully sent as queue to %{public}@.", buf, 0x16u);
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v8 = getINInteractionClass_softClass;
    v17 = getINInteractionClass_softClass;
    if (!getINInteractionClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getINInteractionClass_block_invoke;
      v19 = &unk_1E769ADA8;
      v20 = &v14;
      __getINInteractionClass_block_invoke(buf);
      v8 = v15[3];
    }

    v9 = v8;
    _Block_object_dispose(&v14, 8);
    v10 = [[v8 alloc] initWithIntent:*(a1 + 48) response:0];
    v11 = [*(a1 + 32) bundleID];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __82__MRMediaSuggestion__playIntentRemotelyAsPlaybackQueue_endpoint_queue_completion___block_invoke_32;
    v13[3] = &unk_1E769AFC0;
    v13[4] = *(a1 + 32);
    [v10 _donateInteractionWithBundleId:v11 completion:v13];

    (*(*(a1 + 56) + 16))();
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __82__MRMediaSuggestion__playIntentRemotelyAsPlaybackQueue_endpoint_queue_completion___block_invoke_32(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      __82__MRMediaSuggestion__playIntentRemotelyAsPlaybackQueue_endpoint_queue_completion___block_invoke_32_cold_1(a1);
    }
  }

  else if (v5)
  {
    __82__MRMediaSuggestion__playIntentRemotelyAsPlaybackQueue_endpoint_queue_completion___block_invoke_32_cold_2(a1);
  }
}

- (void)_confirmIntent:(void *)a3 intentHandler:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v7 = getINCExtensionConnectionClass_softClass;
    v21 = getINCExtensionConnectionClass_softClass;
    if (!getINCExtensionConnectionClass_softClass)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __getINCExtensionConnectionClass_block_invoke;
      v17[3] = &unk_1E769ADA8;
      v17[4] = &v18;
      __getINCExtensionConnectionClass_block_invoke(v17);
      v7 = v19[3];
    }

    v8 = v7;
    _Block_object_dispose(&v18, 8);
    v9 = [[v7 alloc] initWithIntent:v5];
    [v9 setRequiresTCC:0];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__MRMediaSuggestion__confirmIntent_intentHandler___block_invoke;
    v15[3] = &unk_1E769AD80;
    v10 = v6;
    v16 = v10;
    [v9 setInterruptionHandler:v15];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__MRMediaSuggestion__confirmIntent_intentHandler___block_invoke_2;
    v12[3] = &unk_1E769B0D8;
    v13 = v9;
    v14 = v10;
    v11 = v9;
    [v11 resumeWithCompletionHandler:v12];
  }
}

void __88__MRMediaSuggestion__playIntentRemotelyWithAirPlay_destinationDevices_queue_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    __88__MRMediaSuggestion__playIntentRemotelyWithAirPlay_destinationDevices_queue_completion___block_invoke_cold_1(a1);
  }
}

void __44__MRMediaSuggestion__playIntent_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [(MRMediaSuggestion *)*(a1 + 32) _handleIntentWithProxy:a3 completion:*(a1 + 40)];
  }
}

void __55__MRMediaSuggestion__handleIntentWithProxy_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 underlyingError];
    if (v6)
    {
      v11 = *MEMORY[0x1E696AA08];
      v7 = [v5 underlyingError];
      v12[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    }

    else
    {
      v8 = 0;
    }

    v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:172 userInfo:v8];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __50__MRMediaSuggestion__confirmIntent_intentHandler___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = *MEMORY[0x1E696AA08];
    v9[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:173 userInfo:v5];
  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

void __50__MRMediaSuggestion__confirmIntent_intentHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) reset];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__MRMediaSuggestion__confirmIntent_intentHandler___block_invoke_3;
    v7[3] = &unk_1E769B0B0;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    v9 = v5;
    [v9 confirmIntentWithCompletionHandler:v7];
  }
}

void __50__MRMediaSuggestion__confirmIntent_intentHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 underlyingError];
    if (v8)
    {
      v28 = *MEMORY[0x1E696AA08];
      v9 = [v7 underlyingError];
      v29[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    }

    else
    {
      v10 = 0;
    }

    v17 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:171 userInfo:v10];
    [*(a1 + 32) reset];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v11 = getINPlayMediaIntentResponseClass_softClass;
    v27 = getINPlayMediaIntentResponseClass_softClass;
    if (!getINPlayMediaIntentResponseClass_softClass)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __getINPlayMediaIntentResponseClass_block_invoke;
      v23[3] = &unk_1E769ADA8;
      v23[4] = &v24;
      __getINPlayMediaIntentResponseClass_block_invoke(v23);
      v11 = v25[3];
    }

    v12 = v11;
    _Block_object_dispose(&v24, 8);
    if (objc_opt_isKindOfClass())
    {
      v10 = v5;
      if ([v10 code] == 1 || objc_msgSend(v10, "code") == 4)
      {
        v13 = *(a1 + 32);
        v16 = a1 + 40;
        v14 = *(a1 + 40);
        v15 = *(v16 + 8);
        v17 = [v10 nowPlayingInfo];
        (*(v15 + 16))(v15, v13, v14, v17, 0);
      }

      else
      {
        [*(a1 + 32) reset];
        v22 = *(a1 + 48);
        v17 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:171 format:{@"Intent cannot be handled by extension. Expected response code INPlayMediaIntentResponseCodeReady or INPlayMediaIntentResponseCodeSuccess, got %ld.", objc_msgSend(v10, "code")}];
        (*(v22 + 16))(v22, 0, 0, 0, v17);
      }
    }

    else
    {
      [*(a1 + 32) reset];
      v18 = *(a1 + 48);
      v19 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20 = objc_opt_class();
      v10 = NSStringFromClass(v20);
      v17 = [v19 initWithMRError:171 format:{@"Expected response of type INPlayMediaIntentResponse. Got %@.", v10}];
      (*(v18 + 16))(v18, 0, 0, 0, v17);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = objc_opt_class();
  v19 = [(MRMediaSuggestion *)self bundleID];
  v18 = [(MRMediaSuggestion *)self identifier];
  v3 = [(MRMediaSuggestion *)self title];
  v4 = [(MRMediaSuggestion *)self artist];
  v5 = [(MRMediaSuggestion *)self playbackIdentifier];
  if (self)
  {
    intent = self->_intent;
  }

  else
  {
    intent = 0;
  }

  v7 = [(INPlayMediaIntent *)intent mediaContainer];
  v8 = [v7 artwork];
  v9 = @"YES";
  if (v8)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [(MRMediaSuggestion *)self artwork];
  if (!v11)
  {
    v9 = @"NO";
  }

  v12 = [(MRMediaSuggestion *)self artwork];
  v13 = [v12 imageData];
  v14 = [v17 initWithFormat:@"<%@: source=%@, identifier=%@, title=%@, artist=%@, playbackIdentifier=%@ intentHasArt=%@, artLoaded=%@, artSize: %ld>", v16, v19, v18, v3, v4, v5, v10, v9, objc_msgSend(v13, "length")];

  return v14;
}

- (uint64_t)_originatedFromSystemMediaApp
{
  if (result)
  {
    v1 = [result bundleID];

    if (MRMediaRemoteApplicationIsSystemMediaApplication(v1))
    {
      return 1;
    }

    else
    {

      return MRMediaRemoteApplicationIsSystemPodcastApplication(v1);
    }
  }

  return result;
}

- (__CFString)_identifierForQueuePlayback
{
  if (a1)
  {
    v2 = [(__CFString *)a1 bundleID];

    if (MRMediaRemoteApplicationIsSystemMediaApplication(v2))
    {
      v3 = kMRMediaRemoteSystemMediaApplicationDisplayIdentifier;
    }

    else if (MRMediaRemoteApplicationIsSystemPodcastApplication(v2))
    {
      v3 = kMRMediaRemoteSystemPodcastApplicationDisplayIdentifier;
    }

    else
    {
      if (!MRMediaRemoteApplicationIsSystemBooksApplication(v2))
      {
        a1 = 0;
        goto LABEL_9;
      }

      v3 = kMRMediaRemoteSystemBooksApplicationDisplayIdentifier;
    }

    a1 = *v3;
LABEL_9:
    v1 = vars8;
  }

  return a1;
}

- (id)_processedIntent
{
  if (a1)
  {
    v1 = [*(a1 + 40) copy];
    [v1 _setAirPlayRouteIds:0];
    [v1 setMediaItems:0];
    [v1 setPlayShuffled:0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (dispatch_queue_t)_callbackQueue
{
  if (a1)
  {
    v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("com.apple.mediaremote.MRMediaSuggestion.callbackQueue", v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)playWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MRMediaSuggestion *)self _processedIntent];
  v6 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_2();
  v9 = v7;
  v10 = v4;
  v8 = v4;
  OUTLINED_FUNCTION_6_0(v6);
}

- (void)_playIntent:(void *)a3 completion:
{
  v5 = a3;
  if (a1)
  {
    OUTLINED_FUNCTION_1_0();
    v6[1] = 3221225472;
    v6[2] = __44__MRMediaSuggestion__playIntent_completion___block_invoke;
    v6[3] = &unk_1E769B060;
    v6[4] = a1;
    v7 = v5;
    [(MRMediaSuggestion *)a1 _confirmIntent:a2 intentHandler:v6];
  }
}

- (void)playOnDeviceWithUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MRMediaSuggestion *)self _processedIntent];
  v9 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  v10 = [(MRMediaSuggestion *)self _callbackQueue];
  v11 = [MEMORY[0x1E695DF00] date];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __52__MRMediaSuggestion_playOnDeviceWithUID_completion___block_invoke;
  v30[3] = &unk_1E769AE80;
  v31 = v11;
  v32 = self;
  v12 = v6;
  v33 = v12;
  v13 = v11;
  MEMORY[0x1A58E3570](v30);
  OUTLINED_FUNCTION_0_3();
  v21 = 3221225472;
  v22 = __52__MRMediaSuggestion_playOnDeviceWithUID_completion___block_invoke_17;
  v23 = &unk_1E769AEA8;
  v24 = v9;
  v25 = self;
  v26 = v8;
  v27 = v10;
  v28 = v12;
  v29 = v14;
  v15 = v14;
  v16 = v10;
  v17 = v8;
  v18 = v12;
  v19 = v9;
  [(MRAVLightweightReconnaissanceSession *)v19 searchForOutputDeviceUID:v7 timeout:@"Searching for output device to play MRMediaSuggestion." reason:v16 queue:v20 completion:5.0];
}

- (void)_playIntent:onEndpoint:queue:completion:
{
  OUTLINED_FUNCTION_5_1();
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = v4;
  v6 = v0;
  v7 = v1;
  v8 = v2;
  if (v3)
  {
    v17 = @"MREndpointConnectionReasonUserInfoKey";
    v18[0] = @"MRMediaSuggestion";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    OUTLINED_FUNCTION_1_0();
    v11[1] = 3221225472;
    v11[2] = __61__MRMediaSuggestion__playIntent_onEndpoint_queue_completion___block_invoke;
    v11[3] = &unk_1E769AF98;
    v12 = v7;
    v16 = v8;
    v13 = v3;
    v14 = v5;
    v15 = v6;
    [v15 connectToExternalDeviceWithUserInfo:v9 completion:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_playIntentRemotelyWithAirPlay:(void *)a3 destinationDevices:(void *)a4 queue:(void *)a5 completion:
{
  v9 = a2;
  v10 = a5;
  if (a1)
  {
    v11 = a4;
    v12 = a3;
    v13 = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:0];
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_3_2();
    v15 = __88__MRMediaSuggestion__playIntentRemotelyWithAirPlay_destinationDevices_queue_completion___block_invoke;
    v16 = &unk_1E769B038;
    v19 = v10;
    v17 = a1;
    v18 = v9;
    [v13 setOutputDevices:v12 initiator:@"MRMediaSuggestion setting output devices." withReplyQueue:v11 completion:v14];
  }
}

- (void)playWithAirPlayRouteIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(MRMediaSuggestion *)self _processedIntentWithRouteIdentifiers:a3];
  v8 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_2();
  v11 = v9;
  v12 = v6;
  v10 = v6;
  OUTLINED_FUNCTION_6_0(v8);
}

- (void)_playIntentRemotelyAsPlaybackQueue:endpoint:queue:completion:
{
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  v6 = v0;
  v7 = v1;
  v8 = v2;
  if (v3)
  {
    v9 = [(MRMediaSuggestion *)v3 _intentForQueuePlayback];
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_3_2();
    v11 = __82__MRMediaSuggestion__playIntentRemotelyAsPlaybackQueue_endpoint_queue_completion___block_invoke;
    v12 = &unk_1E769B010;
    v17 = v8;
    v13 = v3;
    v14 = v6;
    v15 = v7;
    v16 = v5;
    [(MRMediaSuggestion *)v3 _confirmIntent:v9 intentHandler:v10];
  }
}

- (void)_handleIntentWithProxy:(void *)a3 completion:
{
  v5 = a3;
  if (a1)
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_3_2();
    v7 = __55__MRMediaSuggestion__handleIntentWithProxy_completion___block_invoke;
    v8 = &unk_1E769B088;
    v9 = v5;
    [a2 handleIntentWithCompletionHandler:v6];
  }
}

- (void)setBundleID:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

- (void)setArtwork:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

uint64_t __52__MRMediaSuggestion_playOnDeviceWithUID_completion___block_invoke_17_cold_1(uint64_t *a1, void *a2, void *a3)
{
  v6 = [(MRMediaSuggestion *)a1[5] _originatedFromSystemMediaApp];

  if (!v6)
  {
    return 1;
  }

  v8 = a1[5];
  v9 = a1[6];
  v10 = [a3 endpoint];
  v11 = a1[7];
  v12 = a1[9];
  [MRMediaSuggestion _playIntent:onEndpoint:queue:completion:];

  return 0;
}

- (void)playOnEndpoint:(void *)a3 completion:(void *)a4 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [(MRMediaSuggestion *)a1 _processedIntent];
  [MEMORY[0x1E695DF00] date];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_0();
  *(a2 + 8) = 3221225472;
  *(a2 + 16) = __47__MRMediaSuggestion_playOnEndpoint_completion___block_invoke;
  *(a2 + 24) = &unk_1E769AE80;
  v10 = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = a1;
  *(a2 + 48) = a3;
  v11 = MEMORY[0x1A58E3570](a2);
  if ([(MRMediaSuggestion *)a1 _originatedFromSystemMediaApp])
  {
    v12 = [(MRMediaSuggestion *)a1 _callbackQueue];
    [MRMediaSuggestion _playIntent:onEndpoint:queue:completion:];
  }

  else
  {
    v13 = MEMORY[0x1E695DF70];
    v14 = [a4 outputDevices];
    v12 = [v13 arrayWithArray:v14];

    if ([a4 isProxyGroupPlayer])
    {
      v15 = [a4 designatedGroupLeader];
      [v12 removeObject:v15];
    }

    v16 = [(MRMediaSuggestion *)a1 _callbackQueue];
    [(MRMediaSuggestion *)a1 _playIntentRemotelyWithAirPlay:v8 destinationDevices:v12 queue:v16 completion:v11];
  }
}

void __85__MRMediaSuggestion_playSuggestionWithPlaybackIdentifier_onDeviceWithUID_completion___block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  v9 = [(MRMediaSuggestion *)a1 _callbackQueue];
  v10 = [MEMORY[0x1E695DF00] date];
  *a2 = MEMORY[0x1E69E9820];
  *(a2 + 8) = 3221225472;
  *(a2 + 16) = __85__MRMediaSuggestion_playSuggestionWithPlaybackIdentifier_onDeviceWithUID_completion___block_invoke_2;
  *(a2 + 24) = &unk_1E769AEF8;
  *(a2 + 32) = v10;
  v18 = *(a3 + 40);
  v11 = v18;
  *(a2 + 40) = v18;
  v12 = v10;
  v13 = MEMORY[0x1A58E3570](a2);
  v14 = *(a3 + 32);
  OUTLINED_FUNCTION_2_0();
  *(a4 + 8) = 3221225472;
  *(a4 + 16) = __85__MRMediaSuggestion_playSuggestionWithPlaybackIdentifier_onDeviceWithUID_completion___block_invoke_23;
  *(a4 + 24) = &unk_1E769AF20;
  *(a4 + 32) = v8;
  *(a4 + 64) = *(a3 + 40);
  *(a4 + 40) = a1;
  *(a4 + 48) = v9;
  *(a4 + 72) = v13;
  *(a4 + 56) = *(a3 + 32);
  v15 = v13;
  v16 = v9;
  v17 = v8;
  [(MRAVLightweightReconnaissanceSession *)v17 searchEndpointsForOutputDeviceUID:v14 timeout:@"Searching for output device to play MRMediaSuggestion." reason:v16 queue:a4 completion:5.0];
}

void __85__MRMediaSuggestion_playSuggestionWithPlaybackIdentifier_onDeviceWithUID_completion___block_invoke_23_cold_1(uint64_t *a1)
{
  v2 = [(MRMediaSuggestion *)a1[5] _originatedFromSystemMediaApp];
  v3 = a1[5];
  if (v2)
  {
    v9 = [(MRMediaSuggestion *)a1[5] _processedIntent];
    v7 = a1[6];
    v8 = a1[9];
    [MRMediaSuggestion _playIntent:onEndpoint:queue:completion:];
  }

  else
  {
    v4 = a1[7];
    v5 = a1[9];
    v6 = a1[5];

    [v6 playOnDeviceWithUID:v4 completion:v5];
  }
}

void __82__MRMediaSuggestion__playIntentRemotelyAsPlaybackQueue_endpoint_queue_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = _MRLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRMediaSuggestion] %{public}@ did not receive queue data. Falling back to AirPlay path.", &v11, 0xCu);
  }

  v6 = MEMORY[0x1E695DF70];
  v7 = [*(a1 + 40) outputDevices];
  v8 = [v6 arrayWithArray:v7];
  *a2 = v8;

  if ([*(a1 + 40) isProxyGroupPlayer])
  {
    v9 = [*(a1 + 40) designatedGroupLeader];
    [v8 removeObject:v9];
  }

  [(MRMediaSuggestion *)*(a1 + 32) _playIntentRemotelyWithAirPlay:v8 destinationDevices:*(a1 + 48) queue:*(a1 + 64) completion:?];
  v10 = *MEMORY[0x1E69E9840];
}

void __82__MRMediaSuggestion__playIntentRemotelyAsPlaybackQueue_endpoint_queue_completion___block_invoke_32_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 40);
  }

  OUTLINED_FUNCTION_4_0();
  v8 = v3;
  v9 = v4;
  _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRMediaSuggestion] %{public}@ failed to re-donate intent %{public}@ with error %{public}@", v7, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void __82__MRMediaSuggestion__playIntentRemotelyAsPlaybackQueue_endpoint_queue_completion___block_invoke_32_cold_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 40);
  }

  OUTLINED_FUNCTION_4_0();
  _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRMediaSuggestion] %{public}@ re-donated intent %{public}@", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end