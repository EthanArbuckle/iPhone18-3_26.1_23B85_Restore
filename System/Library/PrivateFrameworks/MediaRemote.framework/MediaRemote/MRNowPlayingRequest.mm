@interface MRNowPlayingRequest
+ (BOOL)isMostRecentMediaPlaybackRelevantWithinInterval:(double)interval;
+ (BOOL)localIsPlaying;
+ (MRContentItem)localNowPlayingItem;
+ (MRPlaybackQueue)localPlaybackQueue;
+ (MRPlayerPath)localNowPlayingPlayerPath;
+ (MSVPair)isMostRecentMediaPlaybackRelevantReason;
+ (NSArray)localSupportedCommands;
+ (NSDate)localLastPlayingDate;
+ (id)isMostRecentMediaPlaybackRelevantReasonWithinInternal:(double)internal;
+ (unsigned)localPlaybackState;
+ (void)homePlatterPreferredRouteIdentifier:(id)identifier;
+ (void)shouldUseQuickControlsToDisplayPlatterForRouteIdentifier:(id)identifier completion:(id)completion;
- (MRNowPlayingRequest)init;
- (MRNowPlayingRequest)initWithDestination:(id)destination;
- (MRNowPlayingRequest)initWithOrigin:(id)origin;
- (MRNowPlayingRequest)initWithPlayerPath:(id)path;
- (void)nowPlayingPlayerPathOnQueue:(id)queue completion:(id)completion;
- (void)nowPlayingPlayerPathWithCompletion:(id)completion;
- (void)requestClientPropertiesOnQueue:(id)queue completion:(id)completion;
- (void)requestClientPropertiesWithCompletion:(id)completion;
- (void)requestDeviceLastPlayingDateOnQueue:(id)queue completion:(id)completion;
- (void)requestDeviceLastPlayingDateWithCompletion:(id)completion;
- (void)requestIsPlayingOnQueue:(id)queue completion:(id)completion;
- (void)requestLastPlayingDateOnQueue:(id)queue completion:(id)completion;
- (void)requestLastPlayingDateWithCompletion:(id)completion;
- (void)requestNowPlayingInfoOnQueue:(id)queue completion:(id)completion;
- (void)requestNowPlayingInfoWithCompletion:(id)completion;
- (void)requestNowPlayingItemArtworkOnQueue:(id)queue completion:(id)completion;
- (void)requestNowPlayingItemArtworkWithCompletion:(id)completion;
- (void)requestNowPlayingItemLanguageOptionsOnQueue:(id)queue completion:(id)completion;
- (void)requestNowPlayingItemMetadataOnQueue:(id)queue completion:(id)completion;
- (void)requestNowPlayingItemMetadataWithCompletion:(id)completion;
- (void)requestPlaybackRateOnQueue:(id)queue completion:(id)completion;
- (void)requestPlaybackStateOnQueue:(id)queue completion:(id)completion;
- (void)requestProxiableSupportedCommandsOnQueue:(id)queue completion:(id)completion;
- (void)requestProxiableSupportedCommandsWithCompletion:(id)completion;
- (void)requestShuffleAndRepeatModeOnQueue:(id)queue completion:(id)completion;
- (void)requestSupportedCommandsOnQueue:(id)queue completion:(id)completion;
- (void)requestSupportedCommandsWithCompletion:(id)completion;
- (void)suspendDisconnectionPauseForConfiguration:(id)configuration queue:(id)queue completion:(id)completion;
- (void)triggerAudioFadeInWithReplyQueue:(id)queue completion:(id)completion;
- (void)triggerAudioFadeOutForNowPlayingApplicationWithReplyQueue:(id)queue completion:(id)completion;
@end

@implementation MRNowPlayingRequest

- (void)triggerAudioFadeOutForNowPlayingApplicationWithReplyQueue:(id)queue completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  completionCopy = completion;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  date = [MEMORY[0x1E695DF00] date];
  v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"[MRNowPlaying triggerAudioFadeOut]", uUIDString];
  destination = [(MRNowPlayingRequest *)self destination];

  if (destination)
  {
    destination2 = [(MRNowPlayingRequest *)self destination];
    [v11 appendFormat:@" for %@", destination2];
  }

  v14 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = v11;
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  destination3 = [(MRNowPlayingRequest *)self destination];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __103__MRNowPlayingRequest_AudioFade__triggerAudioFadeOutForNowPlayingApplicationWithReplyQueue_completion___block_invoke;
  v21[3] = &unk_1E769C068;
  v25 = date;
  v26 = completionCopy;
  v22 = @"[MRNowPlaying triggerAudioFadeOut]";
  v23 = uUIDString;
  v24 = queueCopy;
  v16 = date;
  v17 = queueCopy;
  v18 = uUIDString;
  v19 = completionCopy;
  [MRDestinationResolver resolveDestination:destination3 level:2 timeout:v21 completion:5.0];

  v20 = *MEMORY[0x1E69E9840];
}

void __103__MRNowPlayingRequest_AudioFade__triggerAudioFadeOutForNowPlayingApplicationWithReplyQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 playerPath];
  if (v6)
  {
    v7 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138543874;
      v25 = v8;
      v26 = 2114;
      v27 = v9;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v10 = [[MRAudioFadeMessage alloc] initWithPlayerPath:v6 fadeType:0];
    v11 = MRGetSharedService();
    v12 = *(a1 + 48);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __103__MRNowPlayingRequest_AudioFade__triggerAudioFadeOutForNowPlayingApplicationWithReplyQueue_completion___block_invoke_14;
    v20[3] = &unk_1E769C040;
    v13 = *(a1 + 64);
    v21 = v6;
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    *&v16 = *(a1 + 56);
    *(&v16 + 1) = v13;
    *&v17 = v14;
    *(&v17 + 1) = v15;
    v22 = v17;
    v23 = v16;
    MRMediaRemoteServiceTriggerAudioFade(v11, v10, v12, v20);
  }

  else
  {
    v18 = *(a1 + 64);
    if (v18)
    {
      (*(v18 + 16))(v18, 0, v5);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __103__MRNowPlayingRequest_AudioFade__triggerAudioFadeOutForNowPlayingApplicationWithReplyQueue_completion___block_invoke_14(void *a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1[8])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 fadeDuration];
    }

    (*(a1[8] + 16))();
    v7 = a1[4];
    v8 = _MRLogForCategory(0xAuLL);
    v9 = v8;
    if (v6)
    {
      v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (!v7)
      {
        if (v10)
        {
          __103__MRNowPlayingRequest_AudioFade__triggerAudioFadeOutForNowPlayingApplicationWithReplyQueue_completion___block_invoke_14_cold_1(a1);
        }

        goto LABEL_17;
      }

      if (v10)
      {
        v12 = a1[5];
        v11 = a1[6];
        v13 = a1[4];
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:a1[7]];
        v28 = 138544386;
        v29 = v12;
        v30 = 2114;
        v31 = v11;
        v32 = 2114;
        v33 = v6;
        v34 = 2114;
        v35 = v13;
        v36 = 2048;
        v37 = v15;
        _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v28, 0x34u);
LABEL_16:
      }

LABEL_17:

      goto LABEL_18;
    }

    v16 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v16)
      {
        goto LABEL_17;
      }

      v18 = a1[5];
      v17 = a1[6];
      v19 = a1[4];
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:a1[7]];
      v28 = 138544130;
      v29 = v18;
      v30 = 2114;
      v31 = v17;
      v32 = 2114;
      v33 = v19;
      v34 = 2048;
      v35 = v20;
      v21 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v22 = v9;
      v23 = 42;
    }

    else
    {
      if (!v16)
      {
        goto LABEL_17;
      }

      v24 = a1[5];
      v25 = a1[6];
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:a1[7]];
      v28 = 138543874;
      v29 = v24;
      v30 = 2114;
      v31 = v25;
      v32 = 2048;
      v33 = v26;
      v21 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v22 = v9;
      v23 = 32;
    }

    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, v21, &v28, v23);
    goto LABEL_16;
  }

LABEL_18:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)triggerAudioFadeInWithReplyQueue:(id)queue completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  completionCopy = completion;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  date = [MEMORY[0x1E695DF00] date];
  v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"[MRNowPlaying triggerAudioFadeIn]", uUIDString];
  destination = [(MRNowPlayingRequest *)self destination];

  if (destination)
  {
    destination2 = [(MRNowPlayingRequest *)self destination];
    [v11 appendFormat:@" for %@", destination2];
  }

  v14 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = v11;
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  destination3 = [(MRNowPlayingRequest *)self destination];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __78__MRNowPlayingRequest_AudioFade__triggerAudioFadeInWithReplyQueue_completion___block_invoke;
  v21[3] = &unk_1E769C068;
  v25 = date;
  v26 = completionCopy;
  v22 = @"[MRNowPlaying triggerAudioFadeIn]";
  v23 = uUIDString;
  v24 = queueCopy;
  v16 = date;
  v17 = queueCopy;
  v18 = uUIDString;
  v19 = completionCopy;
  [MRDestinationResolver resolveDestination:destination3 level:2 timeout:v21 completion:5.0];

  v20 = *MEMORY[0x1E69E9840];
}

void __78__MRNowPlayingRequest_AudioFade__triggerAudioFadeInWithReplyQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 playerPath];
  if (v6)
  {
    v7 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138543874;
      v25 = v8;
      v26 = 2114;
      v27 = v9;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v10 = [[MRAudioFadeMessage alloc] initWithPlayerPath:v6 fadeType:1];
    v11 = MRGetSharedService();
    v12 = *(a1 + 48);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __78__MRNowPlayingRequest_AudioFade__triggerAudioFadeInWithReplyQueue_completion___block_invoke_21;
    v20[3] = &unk_1E769C040;
    v13 = *(a1 + 64);
    v21 = v6;
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    *&v16 = *(a1 + 56);
    *(&v16 + 1) = v13;
    *&v17 = v14;
    *(&v17 + 1) = v15;
    v22 = v17;
    v23 = v16;
    MRMediaRemoteServiceTriggerAudioFade(v11, v10, v12, v20);
  }

  else
  {
    v18 = *(a1 + 64);
    if (v18)
    {
      (*(v18 + 16))(v18, v5);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __78__MRNowPlayingRequest_AudioFade__triggerAudioFadeInWithReplyQueue_completion___block_invoke_21(void *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = a1[8];
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
    v8 = a1[4];
    v9 = _MRLogForCategory(0xAuLL);
    v10 = v9;
    if (v6)
    {
      v11 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (!v8)
      {
        if (v11)
        {
          __103__MRNowPlayingRequest_AudioFade__triggerAudioFadeOutForNowPlayingApplicationWithReplyQueue_completion___block_invoke_14_cold_1(a1);
        }

        goto LABEL_15;
      }

      if (v11)
      {
        v13 = a1[5];
        v12 = a1[6];
        v14 = a1[4];
        v15 = [MEMORY[0x1E695DF00] date];
        [v15 timeIntervalSinceDate:a1[7]];
        v29 = 138544386;
        v30 = v13;
        v31 = 2114;
        v32 = v12;
        v33 = 2114;
        v34 = v6;
        v35 = 2114;
        v36 = v14;
        v37 = 2048;
        v38 = v16;
        _os_log_error_impl(&dword_1A2860000, v10, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v29, 0x34u);
LABEL_14:
      }

LABEL_15:

      goto LABEL_16;
    }

    v17 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (!v17)
      {
        goto LABEL_15;
      }

      v19 = a1[5];
      v18 = a1[6];
      v20 = a1[4];
      v15 = [MEMORY[0x1E695DF00] date];
      [v15 timeIntervalSinceDate:a1[7]];
      v29 = 138544130;
      v30 = v19;
      v31 = 2114;
      v32 = v18;
      v33 = 2114;
      v34 = v20;
      v35 = 2048;
      v36 = v21;
      v22 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v23 = v10;
      v24 = 42;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_15;
      }

      v25 = a1[5];
      v26 = a1[6];
      v15 = [MEMORY[0x1E695DF00] date];
      [v15 timeIntervalSinceDate:a1[7]];
      v29 = 138543874;
      v30 = v25;
      v31 = 2114;
      v32 = v26;
      v33 = 2048;
      v34 = v27;
      v22 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v23 = v10;
      v24 = 32;
    }

    _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, v22, &v29, v24);
    goto LABEL_14;
  }

LABEL_16:

  v28 = *MEMORY[0x1E69E9840];
}

- (MRNowPlayingRequest)init
{
  v3 = +[MRDestination localDestination];
  v4 = [(MRNowPlayingRequest *)self initWithDestination:v3];

  return v4;
}

- (MRNowPlayingRequest)initWithDestination:(id)destination
{
  destinationCopy = destination;
  v9.receiver = self;
  v9.super_class = MRNowPlayingRequest;
  v5 = [(MRNowPlayingRequest *)&v9 init];
  if (v5)
  {
    v6 = [destinationCopy copy];
    destination = v5->_destination;
    v5->_destination = v6;
  }

  return v5;
}

- (MRNowPlayingRequest)initWithPlayerPath:(id)path
{
  pathCopy = path;
  v5 = [[MRDestination alloc] initWithPlayerPath:pathCopy];

  v6 = [(MRNowPlayingRequest *)self initWithDestination:v5];
  return v6;
}

- (MRNowPlayingRequest)initWithOrigin:(id)origin
{
  originCopy = origin;
  v5 = [[MRPlayerPath alloc] initWithOrigin:originCopy client:0 player:0];

  v6 = [(MRNowPlayingRequest *)self initWithPlayerPath:v5];
  return v6;
}

- (void)requestIsPlayingOnQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__MRNowPlayingRequest_requestIsPlayingOnQueue_completion___block_invoke;
  v8[3] = &unk_1E769E1B8;
  v9 = completionCopy;
  v7 = completionCopy;
  [(MRNowPlayingRequest *)self requestPlaybackStateOnQueue:queue completion:v8];
}

void __58__MRNowPlayingRequest_requestIsPlayingOnQueue_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  IsAdvancing = MRMediaRemotePlaybackStateIsAdvancing(a2);
  (*(v4 + 16))(v4, IsAdvancing, v6);
}

- (void)requestPlaybackStateOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if (!completionCopy)
  {
    [MRNowPlayingRequest requestPlaybackStateOnQueue:completion:];
  }

  v8 = [MRNowPlayingControllerConfiguration alloc];
  destination = [(MRNowPlayingRequest *)self destination];
  v10 = [(MRNowPlayingControllerConfiguration *)v8 initWithDestination:destination];

  [(MRNowPlayingControllerConfiguration *)v10 setRequestPlaybackState:1];
  [(MRNowPlayingControllerConfiguration *)v10 setLabel:@"requestPlaybackState"];
  v11 = [[MRNowPlayingController alloc] initWithConfiguration:v10];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__MRNowPlayingRequest_requestPlaybackStateOnQueue_completion___block_invoke;
  v14[3] = &unk_1E769E1E0;
  v15 = queueCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = queueCopy;
  [(MRNowPlayingController *)v11 performRequestWithCompletion:v14];
}

void __62__MRNowPlayingRequest_requestPlaybackStateOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MRNowPlayingRequest_requestPlaybackStateOnQueue_completion___block_invoke_2;
  block[3] = &unk_1E769AC18;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __62__MRNowPlayingRequest_requestPlaybackStateOnQueue_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) playbackState];
  v4 = *(a1 + 40);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

- (void)requestPlaybackRateOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if (!completionCopy)
  {
    [MRNowPlayingRequest requestPlaybackRateOnQueue:completion:];
  }

  v8 = [MRNowPlayingControllerConfiguration alloc];
  destination = [(MRNowPlayingRequest *)self destination];
  v10 = [(MRNowPlayingControllerConfiguration *)v8 initWithDestination:destination];

  [(MRNowPlayingControllerConfiguration *)v10 setRequestPlaybackQueue:1];
  [(MRNowPlayingControllerConfiguration *)v10 setLabel:@"requestPlaybackRate"];
  v11 = [[MRNowPlayingController alloc] initWithConfiguration:v10];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__MRNowPlayingRequest_requestPlaybackRateOnQueue_completion___block_invoke;
  v14[3] = &unk_1E769E1E0;
  v15 = queueCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = queueCopy;
  [(MRNowPlayingController *)v11 performRequestWithCompletion:v14];
}

void __61__MRNowPlayingRequest_requestPlaybackRateOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MRNowPlayingRequest_requestPlaybackRateOnQueue_completion___block_invoke_2;
  block[3] = &unk_1E769AC18;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __61__MRNowPlayingRequest_requestPlaybackRateOnQueue_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  [*(a1 + 32) playbackRate];
  v3 = *(a1 + 40);
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)requestNowPlayingItemMetadataOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__MRNowPlayingRequest_requestNowPlayingItemMetadataOnQueue_completion___block_invoke;
  v10[3] = &unk_1E769E208;
  v11 = queueCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = queueCopy;
  [(MRNowPlayingRequest *)self requestNowPlayingItemMetadataWithCompletion:v10];
}

void __71__MRNowPlayingRequest_requestNowPlayingItemMetadataOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MRNowPlayingRequest_requestNowPlayingItemMetadataOnQueue_completion___block_invoke_2;
  block[3] = &unk_1E769AC18;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)requestNowPlayingItemMetadataWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [MRNowPlayingRequest requestNowPlayingItemMetadataWithCompletion:];
  }

  v5 = [MRNowPlayingControllerConfiguration alloc];
  destination = [(MRNowPlayingRequest *)self destination];
  v7 = [(MRNowPlayingControllerConfiguration *)v5 initWithDestination:destination];

  v8 = +[MRPlaybackQueueRequest defaultPlaybackQueueRequest];
  [(MRNowPlayingControllerConfiguration *)v7 setPlaybackQueueRequest:v8];

  [(MRNowPlayingControllerConfiguration *)v7 setLabel:@"requestNowPlayingItemMetadata"];
  v9 = [[MRNowPlayingController alloc] initWithConfiguration:v7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__MRNowPlayingRequest_requestNowPlayingItemMetadataWithCompletion___block_invoke;
  v11[3] = &unk_1E769E230;
  v12 = completionCopy;
  v10 = completionCopy;
  [(MRNowPlayingController *)v9 performRequestWithCompletion:v11];
}

void __67__MRNowPlayingRequest_requestNowPlayingItemMetadataWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v8 = [a2 playbackQueue];
  v6 = [v8 contentItemWithOffset:0];
  v7 = [v6 metadata];
  (*(v4 + 16))(v4, v7, v5);
}

- (void)requestNowPlayingItemLanguageOptionsOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if (!completionCopy)
  {
    [MRNowPlayingRequest requestNowPlayingItemLanguageOptionsOnQueue:completion:];
  }

  v8 = [MRNowPlayingControllerConfiguration alloc];
  destination = [(MRNowPlayingRequest *)self destination];
  v10 = [(MRNowPlayingControllerConfiguration *)v8 initWithDestination:destination];

  v11 = +[MRPlaybackQueueRequest defaultPlaybackQueueRequest];
  [(MRNowPlayingControllerConfiguration *)v10 setPlaybackQueueRequest:v11];

  playbackQueueRequest = [(MRNowPlayingControllerConfiguration *)v10 playbackQueueRequest];
  [playbackQueueRequest setIncludeLanguageOptions:1];

  [(MRNowPlayingControllerConfiguration *)v10 setLabel:@"requestNowPlayingItemLanguageOptions"];
  v13 = [[MRNowPlayingController alloc] initWithConfiguration:v10];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__MRNowPlayingRequest_requestNowPlayingItemLanguageOptionsOnQueue_completion___block_invoke;
  v16[3] = &unk_1E769E1E0;
  v17 = queueCopy;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = queueCopy;
  [(MRNowPlayingController *)v13 performRequestWithCompletion:v16];
}

void __78__MRNowPlayingRequest_requestNowPlayingItemLanguageOptionsOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__MRNowPlayingRequest_requestNowPlayingItemLanguageOptionsOnQueue_completion___block_invoke_2;
  block[3] = &unk_1E769B250;
  v12 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __78__MRNowPlayingRequest_requestNowPlayingItemLanguageOptionsOnQueue_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackQueue];
  v6 = [v2 contentItemWithOffset:0];

  v3 = *(a1 + 48);
  v4 = [v6 availableLanguageOptions];
  v5 = [v6 currentLanguageOptions];
  (*(v3 + 16))(v3, v4, v5, *(a1 + 40));
}

- (void)requestNowPlayingItemArtworkOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__MRNowPlayingRequest_requestNowPlayingItemArtworkOnQueue_completion___block_invoke;
  v10[3] = &unk_1E769E258;
  v11 = queueCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = queueCopy;
  [(MRNowPlayingRequest *)self requestNowPlayingItemArtworkWithCompletion:v10];
}

void __70__MRNowPlayingRequest_requestNowPlayingItemArtworkOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__MRNowPlayingRequest_requestNowPlayingItemArtworkOnQueue_completion___block_invoke_2;
  block[3] = &unk_1E769AC18;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)requestNowPlayingItemArtworkWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [MRNowPlayingRequest requestNowPlayingItemArtworkWithCompletion:];
  }

  v5 = [MRNowPlayingControllerConfiguration alloc];
  destination = [(MRNowPlayingRequest *)self destination];
  v7 = [(MRNowPlayingControllerConfiguration *)v5 initWithDestination:destination];

  v8 = [[MRPlaybackQueueRequest alloc] initWithRange:0, 1];
  [(MRPlaybackQueueRequest *)v8 setArtworkHeight:600.0];
  [(MRPlaybackQueueRequest *)v8 setArtworkWidth:600.0];
  [(MRNowPlayingControllerConfiguration *)v7 setPlaybackQueueRequest:v8];
  [(MRNowPlayingControllerConfiguration *)v7 setLabel:@"requestNowPlayingItemArtwork"];
  v9 = [[MRNowPlayingController alloc] initWithConfiguration:v7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__MRNowPlayingRequest_requestNowPlayingItemArtworkWithCompletion___block_invoke;
  v11[3] = &unk_1E769E230;
  v12 = completionCopy;
  v10 = completionCopy;
  [(MRNowPlayingController *)v9 performRequestWithCompletion:v11];
}

void __66__MRNowPlayingRequest_requestNowPlayingItemArtworkWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v8 = [a2 playbackQueue];
  v6 = [v8 contentItemWithOffset:0];
  v7 = [v6 artwork];
  (*(v4 + 16))(v4, v7, v5);
}

- (void)requestNowPlayingInfoOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__MRNowPlayingRequest_requestNowPlayingInfoOnQueue_completion___block_invoke;
  v10[3] = &unk_1E769E280;
  v11 = queueCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = queueCopy;
  [(MRNowPlayingRequest *)self requestNowPlayingInfoWithCompletion:v10];
}

void __63__MRNowPlayingRequest_requestNowPlayingInfoOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MRNowPlayingRequest_requestNowPlayingInfoOnQueue_completion___block_invoke_2;
  block[3] = &unk_1E769AC18;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)requestNowPlayingInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [MRNowPlayingRequest requestNowPlayingInfoWithCompletion:];
  }

  v5 = [MRNowPlayingControllerConfiguration alloc];
  destination = [(MRNowPlayingRequest *)self destination];
  v7 = [(MRNowPlayingControllerConfiguration *)v5 initWithDestination:destination];

  v8 = +[MRPlaybackQueueRequest defaultPlaybackQueueRequest];
  [(MRNowPlayingControllerConfiguration *)v7 setPlaybackQueueRequest:v8];

  [(MRNowPlayingControllerConfiguration *)v7 setLabel:@"requestNowPlayingInfo"];
  v9 = [[MRNowPlayingController alloc] initWithConfiguration:v7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__MRNowPlayingRequest_requestNowPlayingInfoWithCompletion___block_invoke;
  v11[3] = &unk_1E769E230;
  v12 = completionCopy;
  v10 = completionCopy;
  [(MRNowPlayingController *)v9 performRequestWithCompletion:v11];
}

void __59__MRNowPlayingRequest_requestNowPlayingInfoWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = [a2 playbackQueue];
  v6 = [v7 nowPlayingInfo];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)requestSupportedCommandsOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__MRNowPlayingRequest_requestSupportedCommandsOnQueue_completion___block_invoke;
  v10[3] = &unk_1E769E2A8;
  v11 = queueCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = queueCopy;
  [(MRNowPlayingRequest *)self requestSupportedCommandsWithCompletion:v10];
}

void __66__MRNowPlayingRequest_requestSupportedCommandsOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MRNowPlayingRequest_requestSupportedCommandsOnQueue_completion___block_invoke_2;
  block[3] = &unk_1E769AC18;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)requestSupportedCommandsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [MRNowPlayingRequest requestSupportedCommandsWithCompletion:];
  }

  v5 = [MRNowPlayingControllerConfiguration alloc];
  destination = [(MRNowPlayingRequest *)self destination];
  v7 = [(MRNowPlayingControllerConfiguration *)v5 initWithDestination:destination];

  [(MRNowPlayingControllerConfiguration *)v7 setRequestSupportedCommands:1];
  [(MRNowPlayingControllerConfiguration *)v7 setLabel:@"requestSupportedCommands"];
  v8 = [[MRNowPlayingController alloc] initWithConfiguration:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__MRNowPlayingRequest_requestSupportedCommandsWithCompletion___block_invoke;
  v10[3] = &unk_1E769E230;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MRNowPlayingController *)v8 performRequestWithCompletion:v10];
}

void __62__MRNowPlayingRequest_requestSupportedCommandsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 supportedCommands];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)requestShuffleAndRepeatModeOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if (!completionCopy)
  {
    [MRNowPlayingRequest requestShuffleAndRepeatModeOnQueue:completion:];
  }

  v8 = [MRNowPlayingControllerConfiguration alloc];
  destination = [(MRNowPlayingRequest *)self destination];
  v10 = [(MRNowPlayingControllerConfiguration *)v8 initWithDestination:destination];

  [(MRNowPlayingControllerConfiguration *)v10 setRequestSupportedCommands:1];
  [(MRNowPlayingControllerConfiguration *)v10 setRequestPlaybackQueue:1];
  [(MRNowPlayingControllerConfiguration *)v10 setLabel:@"requestShuffleAndRepeatModeOnQueue"];
  v11 = [[MRNowPlayingController alloc] initWithConfiguration:v10];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__MRNowPlayingRequest_requestShuffleAndRepeatModeOnQueue_completion___block_invoke;
  v14[3] = &unk_1E769E1E0;
  v15 = queueCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = queueCopy;
  [(MRNowPlayingController *)v11 performRequestWithCompletion:v14];
}

void __69__MRNowPlayingRequest_requestShuffleAndRepeatModeOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__MRNowPlayingRequest_requestShuffleAndRepeatModeOnQueue_completion___block_invoke_2;
  block[3] = &unk_1E769AC18;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __69__MRNowPlayingRequest_requestShuffleAndRepeatModeOnQueue_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) shuffleMode];
  v4 = [*(a1 + 32) repeatMode];
  v5 = *(a1 + 40);
  v6 = *(v2 + 16);

  return v6(v2, v3, v4, v5);
}

- (void)requestProxiableSupportedCommandsOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__MRNowPlayingRequest_requestProxiableSupportedCommandsOnQueue_completion___block_invoke;
  v10[3] = &unk_1E769E2A8;
  v11 = queueCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = queueCopy;
  [(MRNowPlayingRequest *)self requestProxiableSupportedCommandsWithCompletion:v10];
}

void __75__MRNowPlayingRequest_requestProxiableSupportedCommandsOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__MRNowPlayingRequest_requestProxiableSupportedCommandsOnQueue_completion___block_invoke_2;
  block[3] = &unk_1E769AC18;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)requestProxiableSupportedCommandsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [MRNowPlayingRequest requestProxiableSupportedCommandsWithCompletion:];
  }

  v5 = [MRNowPlayingControllerConfiguration alloc];
  destination = [(MRNowPlayingRequest *)self destination];
  v7 = [(MRNowPlayingControllerConfiguration *)v5 initWithDestination:destination];

  [(MRNowPlayingControllerConfiguration *)v7 setRequestSupportedCommands:1];
  [(MRNowPlayingControllerConfiguration *)v7 setLabel:@"requestProxiableSupportedCommands"];
  v8 = [[MRNowPlayingController alloc] initWithConfiguration:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__MRNowPlayingRequest_requestProxiableSupportedCommandsWithCompletion___block_invoke;
  v10[3] = &unk_1E769E230;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MRNowPlayingController *)v8 performRequestWithCompletion:v10];
}

void __71__MRNowPlayingRequest_requestProxiableSupportedCommandsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 proxiableSupportedCommands];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)requestLastPlayingDateOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__MRNowPlayingRequest_requestLastPlayingDateOnQueue_completion___block_invoke;
  v10[3] = &unk_1E769E2D0;
  v11 = queueCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = queueCopy;
  [(MRNowPlayingRequest *)self requestLastPlayingDateWithCompletion:v10];
}

void __64__MRNowPlayingRequest_requestLastPlayingDateOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MRNowPlayingRequest_requestLastPlayingDateOnQueue_completion___block_invoke_2;
  block[3] = &unk_1E769AC18;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)requestLastPlayingDateWithCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    [MRNowPlayingRequest requestLastPlayingDateWithCompletion:];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  date = [MEMORY[0x1E695DF00] date];
  v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"[MRNowPlaying requestLastPlayingDate]", uUIDString];
  destination = [(MRNowPlayingRequest *)self destination];

  if (destination)
  {
    destination2 = [(MRNowPlayingRequest *)self destination];
    [v8 appendFormat:@" for %@", destination2];
  }

  v11 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v8;
    _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  destination3 = [(MRNowPlayingRequest *)self destination];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__MRNowPlayingRequest_requestLastPlayingDateWithCompletion___block_invoke;
  v17[3] = &unk_1E769E320;
  v18 = @"[MRNowPlaying requestLastPlayingDate]";
  v19 = uUIDString;
  v20 = date;
  v21 = completionCopy;
  v13 = completionCopy;
  v14 = date;
  v15 = uUIDString;
  [MRDestinationResolver resolveDestination:destination3 level:2 timeout:v17 completion:5.0];

  v16 = *MEMORY[0x1E69E9840];
}

void __60__MRNowPlayingRequest_requestLastPlayingDateWithCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 playerPath];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __60__MRNowPlayingRequest_requestLastPlayingDateWithCompletion___block_invoke_2;
  v23[3] = &unk_1E769E2F8;
  v7 = v6;
  v24 = v7;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v25 = v13;
  v26 = v12;
  v14 = MEMORY[0x1A58E3570](v23);
  v15 = v14;
  if (v7)
  {
    v16 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = a1[4];
      v18 = a1[5];
      *buf = 138543874;
      v28 = v17;
      v29 = 2114;
      v30 = v18;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v19 = MRGetSharedService();
    v20 = dispatch_get_global_queue(0, 0);
    MRMediaRemoteServiceGetLastPlayingDateForPlayer(v19, v7, v20, v15);
  }

  else if (v5)
  {
    (*(v14 + 16))(v14, 0, v5);
  }

  else
  {
    v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:27];
    (v15)[2](v15, 0, v21);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __60__MRNowPlayingRequest_requestLastPlayingDateWithCompletion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = MEMORY[0x1E696AD98];
  [v5 timeIntervalSinceNow];
  v10 = [v8 numberWithDouble:-v9];
  v11 = [v7 stringWithFormat:@"lastPlayingDate = %@. Time since playing = %@ seconds.", v5, v10];

  v12 = a1[4];
  v13 = _MRLogForCategory(0xAuLL);
  v14 = v13;
  if (!v6 && v11)
  {
    v15 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v15)
      {
        v17 = a1[5];
        v16 = a1[6];
        v18 = a1[4];
        v19 = [MEMORY[0x1E695DF00] date];
        [v19 timeIntervalSinceDate:a1[7]];
        *buf = 138544386;
        v42 = v17;
        v43 = 2114;
        v44 = v16;
        v45 = 2112;
        v46 = v11;
        v47 = 2114;
        v48 = v18;
        v49 = 2048;
        v50 = v20;
        v21 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v22 = v14;
        v23 = 52;
LABEL_16:
        _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v15)
    {
      goto LABEL_22;
    }

    v34 = a1[5];
    v35 = a1[6];
    v19 = [MEMORY[0x1E695DF00] date];
    [v19 timeIntervalSinceDate:a1[7]];
    *buf = 138544130;
    v42 = v34;
    v43 = 2114;
    v44 = v35;
    v45 = 2112;
    v46 = v11;
    v47 = 2048;
    v48 = v36;
    v21 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v22 = v14;
    v23 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v24 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      if (v24)
      {
        v26 = a1[5];
        v25 = a1[6];
        v27 = a1[4];
        v19 = [MEMORY[0x1E695DF00] date];
        [v19 timeIntervalSinceDate:a1[7]];
        *buf = 138544386;
        v42 = v26;
        v43 = 2114;
        v44 = v25;
        v45 = 2114;
        v46 = v6;
        v47 = 2114;
        v48 = v27;
        v49 = 2048;
        v50 = v28;
        _os_log_error_impl(&dword_1A2860000, v14, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v24)
    {
      __103__MRNowPlayingRequest_AudioFade__triggerAudioFadeOutForNowPlayingApplicationWithReplyQueue_completion___block_invoke_14_cold_1(a1);
    }

    goto LABEL_22;
  }

  v29 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!v12)
  {
    if (!v29)
    {
      goto LABEL_22;
    }

    v37 = a1[5];
    v38 = a1[6];
    v19 = [MEMORY[0x1E695DF00] date];
    [v19 timeIntervalSinceDate:a1[7]];
    *buf = 138543874;
    v42 = v37;
    v43 = 2114;
    v44 = v38;
    v45 = 2048;
    v46 = v39;
    v21 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v22 = v14;
    v23 = 32;
    goto LABEL_16;
  }

  if (v29)
  {
    v31 = a1[5];
    v30 = a1[6];
    v32 = a1[4];
    v19 = [MEMORY[0x1E695DF00] date];
    [v19 timeIntervalSinceDate:a1[7]];
    *buf = 138544130;
    v42 = v31;
    v43 = 2114;
    v44 = v30;
    v45 = 2114;
    v46 = v32;
    v47 = 2048;
    v48 = v33;
    v21 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  (*(a1[8] + 16))();
  v40 = *MEMORY[0x1E69E9840];
}

- (void)requestDeviceLastPlayingDateOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__MRNowPlayingRequest_requestDeviceLastPlayingDateOnQueue_completion___block_invoke;
  v10[3] = &unk_1E769E2D0;
  v11 = queueCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = queueCopy;
  [(MRNowPlayingRequest *)self requestDeviceLastPlayingDateWithCompletion:v10];
}

void __70__MRNowPlayingRequest_requestDeviceLastPlayingDateOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__MRNowPlayingRequest_requestDeviceLastPlayingDateOnQueue_completion___block_invoke_2;
  block[3] = &unk_1E769AC18;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)requestDeviceLastPlayingDateWithCompletion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    [MRNowPlayingRequest requestDeviceLastPlayingDateWithCompletion:];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  date = [MEMORY[0x1E695DF00] date];
  v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"[MRNowPlaying requestDeviceLastPlayingDate]", uUIDString];
  destination = [(MRNowPlayingRequest *)self destination];

  if (destination)
  {
    destination2 = [(MRNowPlayingRequest *)self destination];
    [v8 appendFormat:@" for %@", destination2];
  }

  v11 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__15;
  v42 = __Block_byref_object_dispose__15;
  v43 = 0;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __66__MRNowPlayingRequest_requestDeviceLastPlayingDateWithCompletion___block_invoke;
  v33[3] = &unk_1E769E348;
  p_buf = &buf;
  v34 = @"[MRNowPlaying requestDeviceLastPlayingDate]";
  v12 = uUIDString;
  v35 = v12;
  v13 = date;
  v36 = v13;
  v14 = completionCopy;
  v37 = v14;
  v15 = MEMORY[0x1A58E3570](v33);
  destination3 = [(MRNowPlayingRequest *)self destination];
  isLocal = [destination3 isLocal];

  if (isLocal)
  {
    v18 = [MRPlayerPath alloc];
    v19 = +[MROrigin localOrigin];
    v20 = [(MRPlayerPath *)v18 initWithOrigin:v19 client:0 player:0];
    v21 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v20;

    v22 = *(*(&buf + 1) + 40);
    v23 = dispatch_get_global_queue(0, 0);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __66__MRNowPlayingRequest_requestDeviceLastPlayingDateWithCompletion___block_invoke_80;
    v29[3] = &unk_1E769E370;
    v32[1] = &buf;
    v32[0] = v15;
    v30 = @"[MRNowPlaying requestDeviceLastPlayingDate]";
    v31 = v12;
    MRMediaRemoteNowPlayingResolvePlayerPath(v22, v23, v29);

    v24 = v32;
  }

  else
  {
    destination4 = [(MRNowPlayingRequest *)self destination];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __66__MRNowPlayingRequest_requestDeviceLastPlayingDateWithCompletion___block_invoke_86;
    v27[3] = &unk_1E769E398;
    v28[0] = v15;
    v28[1] = &buf;
    v27[4] = self;
    [MRDestinationResolver resolveDestination:destination4 level:0 timeout:v27 completion:5.0];

    v24 = v28;
  }

  _Block_object_dispose(&buf, 8);
  v26 = *MEMORY[0x1E69E9840];
}

void __66__MRNowPlayingRequest_requestDeviceLastPlayingDateWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = MEMORY[0x1E696AD98];
  [v5 timeIntervalSinceNow];
  v10 = [v8 numberWithDouble:-v9];
  v11 = [v7 stringWithFormat:@"lastPlayingDate = %@. Time since playing = %@ seconds.", v5, v10];

  v12 = *(*(a1[8] + 8) + 40);
  v13 = _MRLogForCategory(0xAuLL);
  v14 = v13;
  if (!v6 && v11)
  {
    v15 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v15)
      {
        v16 = a1[4];
        v17 = a1[5];
        v18 = *(*(a1[8] + 8) + 40);
        v19 = [MEMORY[0x1E695DF00] date];
        [v19 timeIntervalSinceDate:a1[6]];
        *buf = 138544386;
        v42 = v16;
        v43 = 2114;
        v44 = v17;
        v45 = 2112;
        v46 = v11;
        v47 = 2114;
        v48 = v18;
        v49 = 2048;
        v50 = v20;
        v21 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v22 = v14;
        v23 = 52;
LABEL_16:
        _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v15)
    {
      goto LABEL_22;
    }

    v34 = a1[4];
    v35 = a1[5];
    v19 = [MEMORY[0x1E695DF00] date];
    [v19 timeIntervalSinceDate:a1[6]];
    *buf = 138544130;
    v42 = v34;
    v43 = 2114;
    v44 = v35;
    v45 = 2112;
    v46 = v11;
    v47 = 2048;
    v48 = v36;
    v21 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v22 = v14;
    v23 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v24 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      if (v24)
      {
        v25 = a1[4];
        v26 = a1[5];
        v27 = *(*(a1[8] + 8) + 40);
        v19 = [MEMORY[0x1E695DF00] date];
        [v19 timeIntervalSinceDate:a1[6]];
        *buf = 138544386;
        v42 = v25;
        v43 = 2114;
        v44 = v26;
        v45 = 2114;
        v46 = v6;
        v47 = 2114;
        v48 = v27;
        v49 = 2048;
        v50 = v28;
        _os_log_error_impl(&dword_1A2860000, v14, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v24)
    {
      __66__MRNowPlayingRequest_requestDeviceLastPlayingDateWithCompletion___block_invoke_cold_1(a1);
    }

    goto LABEL_22;
  }

  v29 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!v12)
  {
    if (!v29)
    {
      goto LABEL_22;
    }

    v37 = a1[4];
    v38 = a1[5];
    v19 = [MEMORY[0x1E695DF00] date];
    [v19 timeIntervalSinceDate:a1[6]];
    *buf = 138543874;
    v42 = v37;
    v43 = 2114;
    v44 = v38;
    v45 = 2048;
    v46 = v39;
    v21 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v22 = v14;
    v23 = 32;
    goto LABEL_16;
  }

  if (v29)
  {
    v30 = a1[4];
    v31 = a1[5];
    v32 = *(*(a1[8] + 8) + 40);
    v19 = [MEMORY[0x1E695DF00] date];
    [v19 timeIntervalSinceDate:a1[6]];
    *buf = 138544130;
    v42 = v30;
    v43 = 2114;
    v44 = v31;
    v45 = 2114;
    v46 = v32;
    v47 = 2048;
    v48 = v33;
    v21 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  (*(a1[7] + 16))();
  v40 = *MEMORY[0x1E69E9840];
}

void __66__MRNowPlayingRequest_requestDeviceLastPlayingDateWithCompletion___block_invoke_80(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v5 = [v4 originClientRequestsForPlayerPath:*(*(*(a1 + 56) + 8) + 40)];

  if ([a2 isResolved])
  {
    v6 = MRGetSharedService();
    v7 = *(*(*(a1 + 56) + 8) + 40);
    v8 = dispatch_get_global_queue(0, 0);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __66__MRNowPlayingRequest_requestDeviceLastPlayingDateWithCompletion___block_invoke_2;
    v15[3] = &unk_1E769E2D0;
    v16 = v5;
    v17 = *(a1 + 48);
    MRMediaRemoteServiceGetLastPlayingDateForPlayer(v6, v7, v8, v15);

    v9 = v16;
  }

  else
  {
    v10 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 138543874;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      v22 = 2112;
      v23 = @"Using cache.";
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v13 = +[MRNowPlayingOriginClientManager sharedManager];
    v9 = [v13 originClientRequestsForPlayerPath:*(*(*(a1 + 56) + 8) + 40)];

    [v9 handleLastPlayingDateRequestWithCompletion:*(a1 + 48)];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __66__MRNowPlayingRequest_requestDeviceLastPlayingDateWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 setLastPlayingDate:v7];
  (*(*(a1 + 40) + 16))();
}

void __66__MRNowPlayingRequest_requestDeviceLastPlayingDateWithCompletion___block_invoke_86(uint64_t a1, void *a2, void *a3)
{
  v17 = a3;
  v5 = [a2 origin];

  if (v5)
  {
    v6 = [MRPlayerPath alloc];
    v7 = [*(a1 + 32) destination];
    v8 = [v7 origin];
    v9 = [(MRPlayerPath *)v6 initWithOrigin:v8 client:0 player:0];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = MRGetSharedService();
    v13 = *(*(*(a1 + 48) + 8) + 40);
    v14 = dispatch_get_global_queue(0, 0);
    MRMediaRemoteServiceGetLastPlayingDateForPlayer(v12, v13, v14, *(a1 + 40));
  }

  else
  {
    v15 = *(a1 + 40);
    if (v17)
    {
      (*(v15 + 16))(v15, 0);
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:5];
      (*(v15 + 16))(v15, 0, v16);
    }
  }
}

- (void)requestClientPropertiesOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__MRNowPlayingRequest_requestClientPropertiesOnQueue_completion___block_invoke;
  v10[3] = &unk_1E769E3C0;
  v11 = queueCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = queueCopy;
  [(MRNowPlayingRequest *)self requestClientPropertiesWithCompletion:v10];
}

void __65__MRNowPlayingRequest_requestClientPropertiesOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MRNowPlayingRequest_requestClientPropertiesOnQueue_completion___block_invoke_2;
  block[3] = &unk_1E769AC18;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)requestClientPropertiesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [MRNowPlayingRequest requestClientPropertiesWithCompletion:];
  }

  v5 = [MRNowPlayingControllerConfiguration alloc];
  destination = [(MRNowPlayingRequest *)self destination];
  v7 = [(MRNowPlayingControllerConfiguration *)v5 initWithDestination:destination];

  [(MRNowPlayingControllerConfiguration *)v7 setRequestClientProperties:1];
  [(MRNowPlayingControllerConfiguration *)v7 setLabel:@"requestClientProperties"];
  v8 = [[MRNowPlayingController alloc] initWithConfiguration:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__MRNowPlayingRequest_requestClientPropertiesWithCompletion___block_invoke;
  v10[3] = &unk_1E769E230;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MRNowPlayingController *)v8 performRequestWithCompletion:v10];
}

void __61__MRNowPlayingRequest_requestClientPropertiesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 clientProperties];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)nowPlayingPlayerPathOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__MRNowPlayingRequest_nowPlayingPlayerPathOnQueue_completion___block_invoke;
  v10[3] = &unk_1E769C130;
  v11 = queueCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = queueCopy;
  [(MRNowPlayingRequest *)self nowPlayingPlayerPathWithCompletion:v10];
}

void __62__MRNowPlayingRequest_nowPlayingPlayerPathOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MRNowPlayingRequest_nowPlayingPlayerPathOnQueue_completion___block_invoke_2;
  block[3] = &unk_1E769AC18;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)nowPlayingPlayerPathWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [MRNowPlayingRequest nowPlayingPlayerPathWithCompletion:];
  }

  v5 = [MRNowPlayingControllerConfiguration alloc];
  destination = [(MRNowPlayingRequest *)self destination];
  v7 = [(MRNowPlayingControllerConfiguration *)v5 initWithDestination:destination];

  [(MRNowPlayingControllerConfiguration *)v7 setLabel:@"requestNowPlayingClient"];
  v8 = [[MRNowPlayingController alloc] initWithConfiguration:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__MRNowPlayingRequest_nowPlayingPlayerPathWithCompletion___block_invoke;
  v10[3] = &unk_1E769E230;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MRNowPlayingController *)v8 performRequestWithCompletion:v10];
}

void __58__MRNowPlayingRequest_nowPlayingPlayerPathWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 playerPath];
  (*(v4 + 16))(v4, v6, v5);
}

void __71__MRNowPlayingRequest_sendCommand_options_appOptions_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__MRNowPlayingRequest_sendCommand_options_appOptions_queue_completion___block_invoke_2;
    v6[3] = &unk_1E769AB28;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

+ (BOOL)localIsPlaying
{
  localPlaybackState = [self localPlaybackState];

  return MRMediaRemotePlaybackStateIsAdvancing(localPlaybackState);
}

+ (unsigned)localPlaybackState
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = 0x1E695D000uLL;
  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"NowPlayingRequest.localPlaybackState", uUIDString];
  v8 = +[MROrigin localOrigin];

  if (v8)
  {
    v9 = +[MROrigin localOrigin];
    [(__CFString *)v7 appendFormat:@" for %@", v9];
  }

  v10 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = v7;
    _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  localNowPlayingPlayerPath = [self localNowPlayingPlayerPath];
  if (![localNowPlayingPlayerPath isResolved])
  {
    LODWORD(uint64) = 0;
    goto LABEL_9;
  }

  v12 = +[MRNowPlayingOriginClientManager sharedManager];
  v13 = [v12 playerClientRequestsForPlayerPath:localNowPlayingPlayerPath];

  playbackState = [v13 playbackState];
  if (playbackState)
  {
    LODWORD(uint64) = playbackState;

    goto LABEL_9;
  }

  v30 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v49 = @"NowPlayingRequest.localPlaybackState";
    v50 = 2114;
    v51 = uUIDString;
    v52 = 2112;
    v53 = 0;
    v54 = 2112;
    v55 = date;
    _os_log_impl(&dword_1A2860000, v30, OS_LOG_TYPE_DEFAULT, "Cache Miss: Request: %{public}@<%{public}@> for %@ %@", buf, 0x2Au);
  }

  v31 = MRCreateXPCMessage(0x200000000000012uLL);
  MRAddPlayerPathToXPCMessage(v31, localNowPlayingPlayerPath);
  v32 = +[MRMediaRemoteServiceClient sharedServiceClient];
  service = [v32 service];
  mrXPCConnection = [service mrXPCConnection];
  v47 = 0;
  v35 = [mrXPCConnection sendSyncMessage:v31 error:&v47];
  v36 = v47;

  uint64 = xpc_dictionary_get_uint64(v35, "MRXPC_PLAYBACK_STATE_KEY");
  [v13 updatePlaybackStateIfUninitialized:uint64];

  if (!v36)
  {
    v3 = 0x1E695D000;
LABEL_9:
    v16 = MRMediaRemoteCopyPlaybackStateDescription(uint64);

    v17 = _MRLogForCategory(0xAuLL);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (localNowPlayingPlayerPath)
      {
        if (v18)
        {
          date3 = MRMediaRemoteCopyPlaybackStateDescription(uint64);
          date2 = [*(v3 + 3840) date];
          [date2 timeIntervalSinceDate:date];
          *buf = 138544386;
          v49 = @"NowPlayingRequest.localPlaybackState";
          v50 = 2114;
          v51 = uUIDString;
          v52 = 2112;
          v53 = date3;
          v54 = 2114;
          v55 = localNowPlayingPlayerPath;
          v56 = 2048;
          v57 = v21;
          v22 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
          v23 = v17;
          v24 = 52;
LABEL_18:
          _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);

LABEL_28:
        }
      }

      else if (v18)
      {
        date3 = MRMediaRemoteCopyPlaybackStateDescription(uint64);
        date2 = [*(v3 + 3840) date];
        [date2 timeIntervalSinceDate:date];
        *buf = 138544130;
        v49 = @"NowPlayingRequest.localPlaybackState";
        v50 = 2114;
        v51 = uUIDString;
        v52 = 2112;
        v53 = date3;
        v54 = 2048;
        v55 = v29;
        v22 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v23 = v17;
        v24 = 42;
        goto LABEL_18;
      }

LABEL_29:
      v36 = 0;
      goto LABEL_30;
    }

    if (localNowPlayingPlayerPath)
    {
      if (!v18)
      {
        goto LABEL_29;
      }

      date3 = [*(v3 + 3840) date];
      [date3 timeIntervalSinceDate:date];
      *buf = 138544130;
      v49 = @"NowPlayingRequest.localPlaybackState";
      v50 = 2114;
      v51 = uUIDString;
      v52 = 2114;
      v53 = localNowPlayingPlayerPath;
      v54 = 2048;
      v55 = v25;
      v26 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v27 = v17;
      v28 = 42;
    }

    else
    {
      if (!v18)
      {
        goto LABEL_29;
      }

      date3 = [*(v3 + 3840) date];
      [date3 timeIntervalSinceDate:date];
      *buf = 138543874;
      v49 = @"NowPlayingRequest.localPlaybackState";
      v50 = 2114;
      v51 = uUIDString;
      v52 = 2048;
      v53 = v43;
      v26 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v27 = v17;
      v28 = 32;
    }

    _os_log_impl(&dword_1A2860000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
    goto LABEL_28;
  }

  v17 = _MRLogForCategory(0xAuLL);
  v37 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (!localNowPlayingPlayerPath)
  {
    if (!v37)
    {
      goto LABEL_30;
    }

    date4 = [MEMORY[0x1E695DF00] date];
    [date4 timeIntervalSinceDate:date];
    *buf = 138544130;
    v49 = @"NowPlayingRequest.localPlaybackState";
    v50 = 2114;
    v51 = uUIDString;
    v52 = 2114;
    v53 = v36;
    v54 = 2048;
    v55 = v46;
    v40 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
    v41 = v17;
    v42 = 42;
LABEL_34:
    _os_log_error_impl(&dword_1A2860000, v41, OS_LOG_TYPE_ERROR, v40, buf, v42);

    goto LABEL_30;
  }

  if (v37)
  {
    date4 = [MEMORY[0x1E695DF00] date];
    [date4 timeIntervalSinceDate:date];
    *buf = 138544386;
    v49 = @"NowPlayingRequest.localPlaybackState";
    v50 = 2114;
    v51 = uUIDString;
    v52 = 2114;
    v53 = v36;
    v54 = 2114;
    v55 = localNowPlayingPlayerPath;
    v56 = 2048;
    v57 = v39;
    v40 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
    v41 = v17;
    v42 = 52;
    goto LABEL_34;
  }

LABEL_30:

  v44 = *MEMORY[0x1E69E9840];
  return uint64;
}

+ (NSArray)localSupportedCommands
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = 0x1E695D000uLL;
  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"NowPlayingRequest.localSupportedCommands", uUIDString];
  v8 = +[MROrigin localOrigin];

  if (v8)
  {
    v9 = +[MROrigin localOrigin];
    [(__CFString *)v7 appendFormat:@" for %@", v9];
  }

  v10 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = v7;
    _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  localNowPlayingPlayerPath = [self localNowPlayingPlayerPath];
  if (![localNowPlayingPlayerPath isResolved])
  {
    v15 = 0;
    goto LABEL_9;
  }

  v12 = +[MRNowPlayingOriginClientManager sharedManager];
  v13 = [v12 playerClientRequestsForPlayerPath:localNowPlayingPlayerPath];

  supportedCommands = [v13 supportedCommands];
  if (supportedCommands)
  {
    v15 = supportedCommands;

    goto LABEL_9;
  }

  v30 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v49 = @"NowPlayingRequest.localSupportedCommands";
    v50 = 2114;
    v51 = uUIDString;
    v52 = 2112;
    v53 = 0;
    v54 = 2112;
    v55 = date;
    _os_log_impl(&dword_1A2860000, v30, OS_LOG_TYPE_DEFAULT, "Cache Miss: Request: %{public}@<%{public}@> for %@ %@", buf, 0x2Au);
  }

  v31 = MRCreateXPCMessage(0x200000000000031uLL);
  MRAddPlayerPathToXPCMessage(v31, localNowPlayingPlayerPath);
  v32 = +[MRMediaRemoteServiceClient sharedServiceClient];
  service = [v32 service];
  mrXPCConnection = [service mrXPCConnection];
  v47 = 0;
  v35 = [mrXPCConnection sendSyncMessage:v31 error:&v47];
  v36 = v47;

  v15 = MRCreateSupportedCommandsFromXPCMessage(v35);
  [v13 updateSupportedCommandsIfUninitialized:v15];

  if (!v36)
  {
    v3 = 0x1E695D000;
LABEL_9:
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];

    v17 = _MRLogForCategory(0xAuLL);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (localNowPlayingPlayerPath)
      {
        if (v18)
        {
          date3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
          date2 = [*(v3 + 3840) date];
          [date2 timeIntervalSinceDate:date];
          *buf = 138544386;
          v49 = @"NowPlayingRequest.localSupportedCommands";
          v50 = 2114;
          v51 = uUIDString;
          v52 = 2112;
          v53 = date3;
          v54 = 2114;
          v55 = localNowPlayingPlayerPath;
          v56 = 2048;
          v57 = v21;
          v22 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
          v23 = v17;
          v24 = 52;
LABEL_18:
          _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);

LABEL_28:
        }
      }

      else if (v18)
      {
        date3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
        date2 = [*(v3 + 3840) date];
        [date2 timeIntervalSinceDate:date];
        *buf = 138544130;
        v49 = @"NowPlayingRequest.localSupportedCommands";
        v50 = 2114;
        v51 = uUIDString;
        v52 = 2112;
        v53 = date3;
        v54 = 2048;
        v55 = v29;
        v22 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v23 = v17;
        v24 = 42;
        goto LABEL_18;
      }

LABEL_29:
      v36 = 0;
      goto LABEL_30;
    }

    if (localNowPlayingPlayerPath)
    {
      if (!v18)
      {
        goto LABEL_29;
      }

      date3 = [*(v3 + 3840) date];
      [date3 timeIntervalSinceDate:date];
      *buf = 138544130;
      v49 = @"NowPlayingRequest.localSupportedCommands";
      v50 = 2114;
      v51 = uUIDString;
      v52 = 2114;
      v53 = localNowPlayingPlayerPath;
      v54 = 2048;
      v55 = v25;
      v26 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v27 = v17;
      v28 = 42;
    }

    else
    {
      if (!v18)
      {
        goto LABEL_29;
      }

      date3 = [*(v3 + 3840) date];
      [date3 timeIntervalSinceDate:date];
      *buf = 138543874;
      v49 = @"NowPlayingRequest.localSupportedCommands";
      v50 = 2114;
      v51 = uUIDString;
      v52 = 2048;
      v53 = v43;
      v26 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v27 = v17;
      v28 = 32;
    }

    _os_log_impl(&dword_1A2860000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
    goto LABEL_28;
  }

  v17 = _MRLogForCategory(0xAuLL);
  v37 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (localNowPlayingPlayerPath)
  {
    if (!v37)
    {
      goto LABEL_30;
    }

    date4 = [MEMORY[0x1E695DF00] date];
    [date4 timeIntervalSinceDate:date];
    *buf = 138544386;
    v49 = @"NowPlayingRequest.localSupportedCommands";
    v50 = 2114;
    v51 = uUIDString;
    v52 = 2114;
    v53 = v36;
    v54 = 2114;
    v55 = localNowPlayingPlayerPath;
    v56 = 2048;
    v57 = v39;
    v40 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
    v41 = v17;
    v42 = 52;
  }

  else
  {
    if (!v37)
    {
      goto LABEL_30;
    }

    date4 = [MEMORY[0x1E695DF00] date];
    [date4 timeIntervalSinceDate:date];
    *buf = 138544130;
    v49 = @"NowPlayingRequest.localSupportedCommands";
    v50 = 2114;
    v51 = uUIDString;
    v52 = 2114;
    v53 = v36;
    v54 = 2048;
    v55 = v46;
    v40 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
    v41 = v17;
    v42 = 42;
  }

  _os_log_error_impl(&dword_1A2860000, v41, OS_LOG_TYPE_ERROR, v40, buf, v42);

LABEL_30:
  v44 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (MRContentItem)localNowPlayingItem
{
  v70 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"NowPlayingRequest.localNowPlayingItem", uUIDString];
  v7 = +[MROrigin localOrigin];

  if (v7)
  {
    v8 = +[MROrigin localOrigin];
    [(__CFString *)v6 appendFormat:@" for %@", v8];
  }

  v9 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v61 = v6;
    _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  localNowPlayingPlayerPath = [self localNowPlayingPlayerPath];
  if (![localNowPlayingPlayerPath isResolved])
  {
    v24 = 0;
    goto LABEL_17;
  }

  v58 = uUIDString;
  v11 = +[MRPlaybackQueueRequest defaultPlaybackQueueRequest];
  uUID2 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString2 = [uUID2 UUIDString];
  [v11 setRequestIdentifier:uUIDString2];

  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  v17 = [v14 initWithFormat:@"sync-%@-%d", processName, getpid()];
  [v11 setLabel:v17];

  v18 = +[MRNowPlayingOriginClientManager sharedManager];
  v19 = [v18 playerClientRequestsForPlayerPath:localNowPlayingPlayerPath];

  playbackQueue = [v19 playbackQueue];
  v21 = MRPlaybackQueueCreateFromCache(playbackQueue, v11, 3, localNowPlayingPlayerPath);

  v22 = [v21 contentItemWithOffset:0];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
    v25 = 0;
  }

  else
  {
    v26 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v61 = @"NowPlayingRequest.localNowPlayingItem";
      v62 = 2114;
      v63 = v58;
      v64 = 2112;
      v65 = 0;
      v66 = 2112;
      v67 = date;
      _os_log_impl(&dword_1A2860000, v26, OS_LOG_TYPE_DEFAULT, "Cache Miss: Request: %{public}@<%{public}@> for %@ %@", buf, 0x2Au);
    }

    MRCreateXPCMessage(0x200000000000007uLL);
    v27 = v57 = date;
    MRAddPlayerPathToXPCMessage(v27, localNowPlayingPlayerPath);
    MRAddPlaybackQueueRequestToXPCMessage(v27, v11);
    v56 = +[MRMediaRemoteServiceClient sharedServiceClient];
    service = [v56 service];
    mrXPCConnection = [service mrXPCConnection];
    v59 = 0;
    v30 = [mrXPCConnection sendSyncMessage:v27 error:&v59];
    v25 = v59;

    v31 = MRCreatePlaybackQueueFromXPCMessage(v30);
    v24 = [(MRPlaybackQueue *)v31 contentItemWithOffset:0];
    [v19 updatePlaybackQueueIfUninitialized:v31];

    date = v57;
  }

  if (!v25)
  {
    uUIDString = v58;
LABEL_17:
    v39 = MRContentItemCopyMinimalReadableDescription(v24);

    v32 = _MRLogForCategory(0xAuLL);
    v40 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    if (v39)
    {
      if (localNowPlayingPlayerPath)
      {
        if (v40)
        {
          date3 = MRContentItemCopyMinimalReadableDescription(v24);
          date2 = [MEMORY[0x1E695DF00] date];
          [date2 timeIntervalSinceDate:date];
          *buf = 138544386;
          v61 = @"NowPlayingRequest.localNowPlayingItem";
          v62 = 2114;
          v63 = uUIDString;
          v64 = 2112;
          v65 = date3;
          v66 = 2114;
          v67 = localNowPlayingPlayerPath;
          v68 = 2048;
          v69 = v43;
          v44 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
          v45 = v32;
          v46 = 52;
LABEL_26:
          _os_log_impl(&dword_1A2860000, v45, OS_LOG_TYPE_DEFAULT, v44, buf, v46);

LABEL_33:
        }
      }

      else if (v40)
      {
        date3 = MRContentItemCopyMinimalReadableDescription(v24);
        date2 = [MEMORY[0x1E695DF00] date];
        [date2 timeIntervalSinceDate:date];
        *buf = 138544130;
        v61 = @"NowPlayingRequest.localNowPlayingItem";
        v62 = 2114;
        v63 = uUIDString;
        v64 = 2112;
        v65 = date3;
        v66 = 2048;
        v67 = v51;
        v44 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v45 = v32;
        v46 = 42;
        goto LABEL_26;
      }

LABEL_34:
      v25 = 0;
      goto LABEL_35;
    }

    if (localNowPlayingPlayerPath)
    {
      if (!v40)
      {
        goto LABEL_34;
      }

      date3 = [MEMORY[0x1E695DF00] date];
      [date3 timeIntervalSinceDate:date];
      *buf = 138544130;
      v61 = @"NowPlayingRequest.localNowPlayingItem";
      v62 = 2114;
      v63 = uUIDString;
      v64 = 2114;
      v65 = localNowPlayingPlayerPath;
      v66 = 2048;
      v67 = v47;
      v48 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v49 = v32;
      v50 = 42;
    }

    else
    {
      if (!v40)
      {
        goto LABEL_34;
      }

      date3 = [MEMORY[0x1E695DF00] date];
      [date3 timeIntervalSinceDate:date];
      *buf = 138543874;
      v61 = @"NowPlayingRequest.localNowPlayingItem";
      v62 = 2114;
      v63 = uUIDString;
      v64 = 2048;
      v65 = v53;
      v48 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v49 = v32;
      v50 = 32;
    }

    _os_log_impl(&dword_1A2860000, v49, OS_LOG_TYPE_DEFAULT, v48, buf, v50);
    goto LABEL_33;
  }

  v32 = _MRLogForCategory(0xAuLL);
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
  uUIDString = v58;
  if (localNowPlayingPlayerPath)
  {
    if (!v33)
    {
      goto LABEL_35;
    }

    date4 = [MEMORY[0x1E695DF00] date];
    [date4 timeIntervalSinceDate:date];
    *buf = 138544386;
    v61 = @"NowPlayingRequest.localNowPlayingItem";
    v62 = 2114;
    v63 = v58;
    v64 = 2114;
    v65 = v25;
    v66 = 2114;
    v67 = localNowPlayingPlayerPath;
    v68 = 2048;
    v69 = v35;
    v36 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
    v37 = v32;
    v38 = 52;
  }

  else
  {
    if (!v33)
    {
      goto LABEL_35;
    }

    date4 = [MEMORY[0x1E695DF00] date];
    [date4 timeIntervalSinceDate:date];
    *buf = 138544130;
    v61 = @"NowPlayingRequest.localNowPlayingItem";
    v62 = 2114;
    v63 = v58;
    v64 = 2114;
    v65 = v25;
    v66 = 2048;
    v67 = v52;
    v36 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
    v37 = v32;
    v38 = 42;
  }

  _os_log_error_impl(&dword_1A2860000, v37, OS_LOG_TYPE_ERROR, v36, buf, v38);

LABEL_35:
  v54 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (MRPlaybackQueue)localPlaybackQueue
{
  v8[1] = *MEMORY[0x1E69E9840];
  localNowPlayingItem = [self localNowPlayingItem];
  if (localNowPlayingItem)
  {
    v3 = [MRPlaybackQueue alloc];
    v8[0] = localNowPlayingItem;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v5 = [(MRPlaybackQueue *)v3 initWithContentItems:v4 location:0];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (NSDate)localLastPlayingDate
{
  v54 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"NowPlayingRequest.localLastPlayingDate", uUIDString];
  v6 = +[MROrigin localOrigin];

  if (v6)
  {
    v7 = +[MROrigin localOrigin];
    [(__CFString *)v5 appendFormat:@" for %@", v7];
  }

  v8 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v45 = v5;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v9 = [MRPlayerPath alloc];
  v10 = +[MROrigin localOrigin];
  v11 = [(MRPlayerPath *)v9 initWithOrigin:v10 client:0 player:0];

  v12 = MRGetSharedService();
  v43 = 0;
  v13 = MRMediaRemoteServiceGetLastPlayingDateForPlayerSync(v12, v11, &v43);
  v14 = v43;
  v15 = MEMORY[0x1E696AEC0];
  v16 = MEMORY[0x1E696AD98];
  [v13 timeIntervalSinceNow];
  v18 = [v16 numberWithDouble:-v17];
  v19 = [v15 stringWithFormat:@"deviceLastPlayingDate = %@. Time since playing = %@ seconds.", v13, v18];

  v20 = _MRLogForCategory(0xAuLL);
  v21 = v20;
  if (!v14 && v19)
  {
    v22 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v22)
      {
        date2 = [MEMORY[0x1E695DF00] date];
        [date2 timeIntervalSinceDate:date];
        *buf = 138544386;
        v45 = @"NowPlayingRequest.localLastPlayingDate";
        v46 = 2114;
        v47 = uUIDString;
        v48 = 2112;
        v49 = v19;
        v50 = 2114;
        v51 = v11;
        v52 = 2048;
        v53 = v24;
        v25 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v26 = v21;
        v27 = 52;
LABEL_20:
        _os_log_impl(&dword_1A2860000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      }

LABEL_21:

      distantPast = v13;
      goto LABEL_24;
    }

    if (!v22)
    {
      goto LABEL_21;
    }

    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceDate:date];
    *buf = 138544130;
    v45 = @"NowPlayingRequest.localLastPlayingDate";
    v46 = 2114;
    v47 = uUIDString;
    v48 = 2112;
    v49 = v19;
    v50 = 2048;
    v51 = v36;
    v25 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_19:
    v26 = v21;
    v27 = 42;
    goto LABEL_20;
  }

  if (!v14)
  {
    v34 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (!v11)
    {
      if (!v34)
      {
        goto LABEL_21;
      }

      date2 = [MEMORY[0x1E695DF00] date];
      [date2 timeIntervalSinceDate:date];
      *buf = 138543874;
      v45 = @"NowPlayingRequest.localLastPlayingDate";
      v46 = 2114;
      v47 = uUIDString;
      v48 = 2048;
      v49 = v41;
      v25 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v26 = v21;
      v27 = 32;
      goto LABEL_20;
    }

    if (!v34)
    {
      goto LABEL_21;
    }

    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceDate:date];
    *buf = 138544130;
    v45 = @"NowPlayingRequest.localLastPlayingDate";
    v46 = 2114;
    v47 = uUIDString;
    v48 = 2114;
    v49 = v11;
    v50 = 2048;
    v51 = v35;
    v25 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_19;
  }

  v28 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
  if (v11)
  {
    if (v28)
    {
      date3 = [MEMORY[0x1E695DF00] date];
      [date3 timeIntervalSinceDate:date];
      *buf = 138544386;
      v45 = @"NowPlayingRequest.localLastPlayingDate";
      v46 = 2114;
      v47 = uUIDString;
      v48 = 2114;
      v49 = v14;
      v50 = 2114;
      v51 = v11;
      v52 = 2048;
      v53 = v30;
      v31 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
      v32 = v21;
      v33 = 52;
LABEL_30:
      _os_log_error_impl(&dword_1A2860000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
    }
  }

  else if (v28)
  {
    date3 = [MEMORY[0x1E695DF00] date];
    [date3 timeIntervalSinceDate:date];
    *buf = 138544130;
    v45 = @"NowPlayingRequest.localLastPlayingDate";
    v46 = 2114;
    v47 = uUIDString;
    v48 = 2114;
    v49 = v14;
    v50 = 2048;
    v51 = v42;
    v31 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
    v32 = v21;
    v33 = 42;
    goto LABEL_30;
  }

  distantPast = [MEMORY[0x1E695DF00] distantPast];
LABEL_24:
  v38 = distantPast;

  v39 = *MEMORY[0x1E69E9840];

  return v38;
}

+ (MRPlayerPath)localNowPlayingPlayerPath
{
  v2 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v3 = [MRPlayerPath alloc];
  v4 = +[MROrigin localOrigin];
  v5 = [(MRPlayerPath *)v3 initWithOrigin:v4 client:0 player:0];

  activePlayerPath = [v2 activePlayerPath];
  if (activePlayerPath && (-[MRPlayerPath origin](v5, "origin"), v7 = objc_claimAutoreleasedReturnValue(), [activePlayerPath origin], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, v9))
  {
    v10 = activePlayerPath;
  }

  else
  {
    v11 = MRCreateXPCMessage(0x200000000000018uLL);
    MRAddPlayerPathToXPCMessage(v11, v5);
    service = [v2 service];
    mrXPCConnection = [service mrXPCConnection];
    v17 = 0;
    v14 = [mrXPCConnection sendSyncMessage:v11 error:&v17];
    v15 = v17;

    v10 = MRCreatePlayerPathFromXPCMessage(v14);
  }

  return v10;
}

+ (MSVPair)isMostRecentMediaPlaybackRelevantReason
{
  v3 = +[MRUserSettings currentSettings];
  [v3 mediaRecentlyPlayedInterval];
  v4 = [self isMostRecentMediaPlaybackRelevantReasonWithinInternal:?];

  return v4;
}

+ (BOOL)isMostRecentMediaPlaybackRelevantWithinInterval:(double)interval
{
  v3 = [self isMostRecentMediaPlaybackRelevantReasonWithinInternal:interval];
  first = [v3 first];
  bOOLValue = [first BOOLValue];

  return bOOLValue;
}

+ (id)isMostRecentMediaPlaybackRelevantReasonWithinInternal:(double)internal
{
  v59 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"NowPlayingRequest.isMostRecentMediaPlaybackRelevant", uUIDString];
  v9 = +[MROrigin localOrigin];

  if (v9)
  {
    v10 = +[MROrigin localOrigin];
    [(__CFString *)v8 appendFormat:@" for %@", v10];
  }

  v11 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v50 = v8;
    _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  localNowPlayingPlayerPath = [self localNowPlayingPlayerPath];
  client = [(__CFString *)localNowPlayingPlayerPath client];

  if (client)
  {
    client2 = [(__CFString *)localNowPlayingPlayerPath client];
    if ([client2 isAirPlay])
    {
    }

    else
    {
      localNowPlayingItem = [self localNowPlayingItem];

      if (!localNowPlayingItem)
      {
        v16 = @"no now playing item";
        goto LABEL_19;
      }
    }

    localLastPlayingDate = [self localLastPlayingDate];
    [localLastPlayingDate timeIntervalSinceNow];
    v19 = v18;

    if (internal <= 0.0 || (v20 = -v19, v20 <= internal))
    {
      if ([self localIsPlaying])
      {
        v16 = @"local is playing";
      }

      else
      {
        v16 = @"local was playing recently";
      }

      localNowPlayingItem = 1;
      goto LABEL_19;
    }

    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"no recent playback for %lf seconds", *&v20];
    if (v21)
    {
      v16 = v21;
      localNowPlayingItem = 0;
      goto LABEL_19;
    }

    v30 = [MEMORY[0x1E696AD98] numberWithBool:0];

    v22 = _MRLogForCategory(0xAuLL);
    v31 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v30)
    {
      if (localNowPlayingPlayerPath)
      {
        if (v31)
        {
          date3 = [MEMORY[0x1E696AD98] numberWithBool:0];
          date2 = [MEMORY[0x1E695DF00] date];
          [date2 timeIntervalSinceDate:date];
          *buf = 138544386;
          v50 = @"NowPlayingRequest.isMostRecentMediaPlaybackRelevant";
          v51 = 2114;
          v52 = uUIDString;
          v53 = 2112;
          v54 = date3;
          v55 = 2114;
          v56 = localNowPlayingPlayerPath;
          v57 = 2048;
          v58 = v34;
          v35 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
          v36 = v22;
          v37 = 52;
LABEL_34:
          _os_log_impl(&dword_1A2860000, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);

LABEL_38:
        }
      }

      else if (v31)
      {
        date3 = [MEMORY[0x1E696AD98] numberWithBool:0];
        date2 = [MEMORY[0x1E695DF00] date];
        [date2 timeIntervalSinceDate:date];
        *buf = 138544130;
        v50 = @"NowPlayingRequest.isMostRecentMediaPlaybackRelevant";
        v51 = 2114;
        v52 = uUIDString;
        v53 = 2112;
        v54 = date3;
        v55 = 2048;
        v56 = v42;
        v35 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v36 = v22;
        v37 = 42;
        goto LABEL_34;
      }

LABEL_39:
      v16 = 0;
      localNowPlayingItem = 0;
      goto LABEL_40;
    }

    if (localNowPlayingPlayerPath)
    {
      if (!v31)
      {
        goto LABEL_39;
      }

      date3 = [MEMORY[0x1E695DF00] date];
      [(__CFString *)date3 timeIntervalSinceDate:date];
      *buf = 138544130;
      v50 = @"NowPlayingRequest.isMostRecentMediaPlaybackRelevant";
      v51 = 2114;
      v52 = uUIDString;
      v53 = 2114;
      v54 = localNowPlayingPlayerPath;
      v55 = 2048;
      v56 = v38;
      v39 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v40 = v22;
      v41 = 42;
    }

    else
    {
      if (!v31)
      {
        goto LABEL_39;
      }

      date3 = [MEMORY[0x1E695DF00] date];
      [(__CFString *)date3 timeIntervalSinceDate:date];
      *buf = 138543874;
      v50 = @"NowPlayingRequest.isMostRecentMediaPlaybackRelevant";
      v51 = 2114;
      v52 = uUIDString;
      v53 = 2048;
      v54 = v43;
      v39 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v40 = v22;
      v41 = 32;
    }

    _os_log_impl(&dword_1A2860000, v40, OS_LOG_TYPE_DEFAULT, v39, buf, v41);
    goto LABEL_38;
  }

  localNowPlayingItem = 0;
  v16 = @"no now playing app";
LABEL_19:
  v22 = _MRLogForCategory(0xAuLL);
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
  if (localNowPlayingPlayerPath)
  {
    if (!v23)
    {
      goto LABEL_40;
    }

    date4 = [MEMORY[0x1E695DF00] date];
    [date4 timeIntervalSinceDate:date];
    *buf = 138544386;
    v50 = @"NowPlayingRequest.isMostRecentMediaPlaybackRelevant";
    v51 = 2114;
    v52 = uUIDString;
    v53 = 2114;
    v54 = v16;
    v55 = 2114;
    v56 = localNowPlayingPlayerPath;
    v57 = 2048;
    v58 = v25;
    v26 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
    v27 = v22;
    v28 = 52;
  }

  else
  {
    if (!v23)
    {
      goto LABEL_40;
    }

    date4 = [MEMORY[0x1E695DF00] date];
    [date4 timeIntervalSinceDate:date];
    *buf = 138544130;
    v50 = @"NowPlayingRequest.isMostRecentMediaPlaybackRelevant";
    v51 = 2114;
    v52 = uUIDString;
    v53 = 2114;
    v54 = v16;
    v55 = 2048;
    v56 = v29;
    v26 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
    v27 = v22;
    v28 = 42;
  }

  _os_log_error_impl(&dword_1A2860000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);

LABEL_40:
  v44 = objc_alloc(MEMORY[0x1E69B1470]);
  v45 = [MEMORY[0x1E696AD98] numberWithBool:localNowPlayingItem];
  v46 = [v44 initWithFirst:v45 second:v16];

  v47 = *MEMORY[0x1E69E9840];

  return v46;
}

+ (void)shouldUseQuickControlsToDisplayPlatterForRouteIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  date = [MEMORY[0x1E695DF00] date];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__MRNowPlayingRequest_Siri__shouldUseQuickControlsToDisplayPlatterForRouteIdentifier_completion___block_invoke;
  v18[3] = &unk_1E76A0920;
  v8 = identifierCopy;
  v19 = v8;
  v20 = date;
  v21 = completionCopy;
  v9 = completionCopy;
  v10 = date;
  v11 = MEMORY[0x1A58E3570](v18);
  v12 = +[MRNowPlayingOriginClientManager sharedManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__MRNowPlayingRequest_Siri__shouldUseQuickControlsToDisplayPlatterForRouteIdentifier_completion___block_invoke_9;
  v15[3] = &unk_1E76A0948;
  v16 = v8;
  v17 = v11;
  v13 = v11;
  v14 = v8;
  [v12 resolveActiveSystemEndpointWithType:1 timeout:MEMORY[0x1E69E96A0] queue:v15 completion:2.0];
}

uint64_t __97__MRNowPlayingRequest_Siri__shouldUseQuickControlsToDisplayPlatterForRouteIdentifier_completion___block_invoke(void *a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = _MRLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = [MEMORY[0x1E695DF00] date];
    [v6 timeIntervalSinceDate:a1[5]];
    v10 = 138543874;
    v11 = v5;
    v12 = 1024;
    v13 = a2;
    v14 = 2048;
    v15 = v7;
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingRequest] shouldUseQuickControlsToDisplayPlatterForRouteIdentifier: %{public}@ returned %{BOOL}u in %lf seconds.", &v10, 0x1Cu);
  }

  result = (*(a1[6] + 16))();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __97__MRNowPlayingRequest_Siri__shouldUseQuickControlsToDisplayPlatterForRouteIdentifier_completion___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 isEqualToString:@"MRNowPlayingRequestLocalRouteIdentifier"];
  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = [v4 isLocalEndpoint];
  }

  else
  {
    v7 = [v4 containsOutputDeviceWithUID:*(a1 + 32)];
  }

  v8 = v7;

  v9 = *(v6 + 16);

  return v9(v6, v8);
}

+ (void)homePlatterPreferredRouteIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF00];
  identifierCopy = identifier;
  date = [v3 date];
  v6 = +[MRNowPlayingOriginClientManager sharedManager];
  v7 = [v6 activeSystemEndpointOutputDeviceUIDForType:0];

  v8 = +[MRAVOutputDevice localDeviceUID];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {

    v7 = 0;
  }

  v10 = _MRLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceDate:date];
    v14 = 138543618;
    v15 = v7;
    v16 = 2048;
    v17 = v12;
    _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingRequest] homePlatterPreferredRouteIdentifier returned %{public}@ in %lf seconds.", &v14, 0x16u);
  }

  identifierCopy[2](identifierCopy, v7);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)suspendDisconnectionPauseForConfiguration:(id)configuration queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  configurationCopy = configuration;
  v10 = +[MRMediaRemoteServiceClient sharedServiceClient];
  service = [v10 service];

  [service suspendDisconnectionPauseForConfiguration:configurationCopy queue:queueCopy completion:completionCopy];
}

void __103__MRNowPlayingRequest_AudioFade__triggerAudioFadeOutForNowPlayingApplicationWithReplyQueue_completion___block_invoke_14_cold_1(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = a1[6];
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:a1[7]];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)requestPlaybackStateOnQueue:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)requestPlaybackRateOnQueue:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)requestNowPlayingItemMetadataWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)requestNowPlayingItemLanguageOptionsOnQueue:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)requestNowPlayingItemArtworkWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)requestNowPlayingInfoWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)requestSupportedCommandsWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)requestShuffleAndRepeatModeOnQueue:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)requestProxiableSupportedCommandsWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)requestLastPlayingDateWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)requestDeviceLastPlayingDateWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __66__MRNowPlayingRequest_requestDeviceLastPlayingDateWithCompletion___block_invoke_cold_1(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:a1[6]];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)requestClientPropertiesWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)nowPlayingPlayerPathWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

@end