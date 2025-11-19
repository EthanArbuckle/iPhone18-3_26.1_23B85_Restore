@interface MPCSingleTrackAudioProcessor
- (BOOL)configureQueueItem:(id)a3;
- (MPCPlaybackEngine)playbackEngine;
- (MPCSingleTrackAudioProcessor)initWithPlaybackEngine:(id)a3;
- (opaqueMTAudioProcessingTap)audioProcessingTap;
- (void)_createAudioTap;
- (void)_destroyAudioTap;
- (void)dealloc;
- (void)recreateAudioTap;
@end

@implementation MPCSingleTrackAudioProcessor

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (void)_destroyAudioTap
{
  audioProcessingTap = self->_audioProcessingTap;
  if (audioProcessingTap)
  {
    CFRelease(audioProcessingTap);
    self->_audioProcessingTap = 0;
  }
}

- (void)_createAudioTap
{
  v23[1] = *MEMORY[0x1E69E9840];
  callbacks.version = 0;
  callbacks.clientInfo = self;
  callbacks.init = _MPCAudioTapInit_1816;
  callbacks.finalize = _MPCAudioTapFinalize_1815;
  callbacks.prepare = _MPCAudioTapPrepareCallback_1814;
  callbacks.process = _MPCAudioTapProcess_1809;
  callbacks.unprepare = _MPCAudioTapUnprepareCallback_1808;
  v3 = [(MPCSingleTrackAudioProcessor *)self creationFlags];
  tapOut = 0;
  v4 = MTAudioProcessingTapCreate(*MEMORY[0x1E695E480], &callbacks, v3, &tapOut);
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = v4;
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  v8 = v4;
  v22 = *MEMORY[0x1E696A578];
  memset(v21, 0, 20);
  v9 = bswap32(v4);
  *(v21 + 1) = v9;
  v10 = MEMORY[0x1E69E9830];
  if ((v9 & 0x80) != 0)
  {
    if (!__maskrune(v9, 0x40000uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000) == 0)
  {
    goto LABEL_19;
  }

  v11 = v9 >> 8;
  if ((v9 & 0x8000) != 0)
  {
    if (!__maskrune(v11, 0x40000uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v10 + 4 * v11 + 60) & 0x40000) == 0)
  {
    goto LABEL_19;
  }

  if (SHIBYTE(v21[0]) < 0)
  {
    if (!__maskrune(SHIBYTE(v21[0]), 0x40000uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v10 + 4 * SHIBYTE(v21[0]) + 60) & 0x40000) == 0)
  {
    goto LABEL_19;
  }

  if (SLOBYTE(v21[1]) < 0)
  {
    if (__maskrune(SLOBYTE(v21[1]), 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v10 + 4 * SLOBYTE(v21[1]) + 60) & 0x40000) != 0)
  {
LABEL_17:
    strcpy(&v21[1] + 1, "'");
    LOBYTE(v21[0]) = 39;
    goto LABEL_20;
  }

LABEL_19:
  __sprintf_chk(v21, 0, 0x14uLL, "%d", v5);
LABEL_20:
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v21];
  v23[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v14 = [v6 errorWithDomain:v7 code:v8 userInfo:v13];
  v15 = v14;

  v16 = v14;
  if (!v16)
  {
LABEL_24:
    objc_storeStrong(&self->_selfRef, self);
    v17 = 0;
    self->_audioProcessingTap = tapOut;
    goto LABEL_25;
  }

  v17 = v16;
  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v21[0] = 138543618;
    *&v21[1] = self;
    LOWORD(v21[3]) = 2114;
    *(&v21[3] + 2) = v17;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "[AP] - %{public}@ - Error creating audio tap: %{public}@", v21, 0x16u);
  }

LABEL_25:
}

- (void)recreateAudioTap
{
  [(MPCSingleTrackAudioProcessor *)self _destroyAudioTap];

  [(MPCSingleTrackAudioProcessor *)self _createAudioTap];
}

- (BOOL)configureQueueItem:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isAssetLoaded] && -[MPCSingleTrackAudioProcessor shouldAttachAudioTapToItem:](self, "shouldAttachAudioTapToItem:", v4))
  {
    v5 = [(MPCSingleTrackAudioProcessor *)self audioProcessingTap];
    v37 = [v4 playerItem];
    v6 = [v37 asset];
    v7 = dispatch_semaphore_create(0);
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__1817;
    v51 = __Block_byref_object_dispose__1818;
    v52 = 0;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __51__MPCSingleTrackAudioProcessor_configureQueueItem___block_invoke;
    v42[3] = &unk_1E8239078;
    v45 = &v53;
    v8 = v6;
    v43 = v8;
    v46 = &v47;
    v9 = v7;
    v44 = v9;
    [v8 loadValuesAsynchronouslyForKeys:&unk_1F45997D8 completionHandler:v42];
    v10 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v9, v10))
    {
      v11 = 0;
LABEL_42:

      _Block_object_dispose(&v47, 8);
      _Block_object_dispose(&v53, 8);

      goto LABEL_43;
    }

    v12 = v54[3];
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (v12 == 2)
    {
      v20 = v13;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v59 = self;
        v60 = 2114;
        v61 = v4;
        _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Tracks loaded for %{public}@ - Setting up audio tap", buf, 0x16u);
      }

      v35 = [MEMORY[0x1E6988040] audioMixInputParameters];
      v21 = [v8 tracks];
      v22 = [v21 firstObject];
      -[NSObject setTrackID:](v35, "setTrackID:", [v22 trackID]);

      [v35 setAudioTapProcessor:v5];
      v34 = [v37 audioMix];
      v33 = [MEMORY[0x1E6988038] audioMix];
      v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v34)
      {
        v23 = _MPCLogCategoryPlayback();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v34 inputParameters];
          *buf = 138543874;
          v59 = self;
          v60 = 2114;
          v61 = v4;
          v62 = 2114;
          v63 = v24;
          _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Found existing audio mix on %{public}@ - Input parameters: %{public}@", buf, 0x20u);
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v25 = [v34 inputParameters];
        v26 = [v25 countByEnumeratingWithState:&v38 objects:v57 count:16];
        if (v26)
        {
          v27 = *v39;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v39 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v29 = *(*(&v38 + 1) + 8 * i);
              if ([v29 audioTapProcessor] && objc_msgSend(v29, "audioTapProcessor") == v5)
              {
                v31 = _MPCLogCategoryPlayback();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v59 = self;
                  v60 = 2114;
                  v61 = v4;
                  _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Audio tap already setup [Not changing existing audio mix] - item: %{public}@", buf, 0x16u);
                }

                goto LABEL_40;
              }

              if (![v29 audioTapProcessor])
              {
                [v36 addObject:v29];
              }
            }

            v26 = [v25 countByEnumeratingWithState:&v38 objects:v57 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }
      }

      [v36 addObject:v35];
      [v33 setInputParameters:v36];
      [v37 setAudioMix:v33];

LABEL_40:
      v11 = 1;
      v15 = v35;
      goto LABEL_41;
    }

    if (v12 == 3)
    {
      v15 = v13;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v17 = v48[5];
        *buf = 138543874;
        v59 = self;
        v60 = 2114;
        v61 = v4;
        v62 = 2114;
        v63 = v17;
        v16 = "[AP] - %{public}@ - Error loading tracks [No audio tap setup possible] - item: %{public}@ - error: %{public}@";
        v18 = v15;
        v19 = 32;
LABEL_35:
        _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, v16, buf, v19);
      }
    }

    else
    {
      v14 = v12 == 4;
      v15 = v13;
      if (!v14)
      {
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        *buf = 138543618;
        v59 = self;
        v60 = 2114;
        v61 = v4;
        v16 = "[AP] - %{public}@ - Tracks loading failed without reason [No audio tap setup possible] - item: %{public}@";
        goto LABEL_34;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v59 = self;
        v60 = 2114;
        v61 = v4;
        v16 = "[AP] - %{public}@ - Tracks loading cancelled [No audio tap setup possible] - item: %{public}@";
LABEL_34:
        v18 = v15;
        v19 = 22;
        goto LABEL_35;
      }
    }

LABEL_36:
    v11 = 0;
LABEL_41:

    goto LABEL_42;
  }

  v11 = 0;
LABEL_43:

  return v11;
}

intptr_t __51__MPCSingleTrackAudioProcessor_configureQueueItem___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [v2 statusOfValueForKey:@"tracks" error:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v4;
  return dispatch_semaphore_signal(*(a1 + 40));
}

- (opaqueMTAudioProcessingTap)audioProcessingTap
{
  result = self->_audioProcessingTap;
  if (!result)
  {
    [(MPCSingleTrackAudioProcessor *)self _createAudioTap];
    return self->_audioProcessingTap;
  }

  return result;
}

- (void)dealloc
{
  [(MPCSingleTrackAudioProcessor *)self _destroyAudioTap];
  v3.receiver = self;
  v3.super_class = MPCSingleTrackAudioProcessor;
  [(MPCSingleTrackAudioProcessor *)&v3 dealloc];
}

- (MPCSingleTrackAudioProcessor)initWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MPCSingleTrackAudioProcessor;
  v5 = [(MPCSingleTrackAudioProcessor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playbackEngine, v4);
  }

  return v6;
}

@end