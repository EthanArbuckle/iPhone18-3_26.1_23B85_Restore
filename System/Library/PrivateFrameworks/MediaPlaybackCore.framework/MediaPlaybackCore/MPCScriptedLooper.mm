@interface MPCScriptedLooper
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_CMTimeForFrame:(SEL)a3;
- (MPCScriptedLooper)initWithAsset:(id)a3 audioSession:(id)a4;
- (MPCScriptedLooper)initWithAsset:(id)a3 sceneCollection:(id)a4 audioSession:(id)a5;
- (MPCScriptedLooper)initWithURL:(id)a3 sceneCollection:(id)a4 audioSession:(id)a5;
- (id)currentScene;
- (int64_t)frameForCMTime:(id *)a3;
- (void)_advanceScene;
- (void)_createSceneCollectionForAssetWithPreloadedKeys:(id)a3;
- (void)_executeCurrentScene;
- (void)_executeSceneCollection;
- (void)_loopIfNeeded;
- (void)_pause;
- (void)_sharedInitWithItem:(id)a3 audioSession:(id)a4;
- (void)_updateRateIfNeeded;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pauseScenes;
- (void)playScenes;
- (void)restartScenes;
- (void)seekToFrameIfNeeded:(int64_t)a3 completionHandler:(id)a4;
- (void)setTimeObserver:(id)a3;
@end

@implementation MPCScriptedLooper

- (void)_updateRateIfNeeded
{
  if ([(MPCScriptedLooper *)self isExecutingPauseScene]|| [(MPCScriptedLooper *)self isSceneExecutionPaused])
  {
    v3 = [(MPCScriptedLooper *)self player];
    [v3 pause];
  }

  else
  {
    v3 = [(MPCScriptedLooper *)self player];
    [v3 play];
  }
}

- (void)_pause
{
  [(MPCScriptedLooper *)self setExecutingPauseScene:1];
  v4 = [(MPCScriptedLooper *)self player];
  v5 = [v4 status];

  if (v5 == 1)
  {
    [(MPCScriptedLooper *)self _updateRateIfNeeded];
    v6 = [(MPCScriptedLooper *)self currentScene];
    v7 = [v6 iterations];

    if (v7)
    {
      v8 = [(MPCScriptedLooper *)self sceneCollection];
      [v8 frameRate];
      v10 = v9;

      if (v10 == 0.0)
      {
        v17 = [MEMORY[0x1E696AAA8] currentHandler];
        [v17 handleFailureInMethod:a2 object:self file:@"MPCScriptedLooper.m" lineNumber:452 description:@"Scene collection frame rate cannot be 0."];
      }

      v11 = [(MPCScriptedLooper *)self currentScene];
      v12 = [v11 iterations];
      v13 = [(MPCScriptedLooper *)self sceneCollection];
      [v13 frameRate];
      v15 = v12 / v14;

      v16 = dispatch_time(0, (v15 * 1000000000.0));
      v18 = [(MPCScriptedLooper *)self pauseFinishedBlock];
      dispatch_after(v16, MEMORY[0x1E69E96A0], v18);
    }
  }
}

- (void)_advanceScene
{
  v3 = [(MPCScriptedLooper *)self currentSceneIndex]+ 1;
  v4 = [(MPCSceneCollection *)self->_sceneCollection scenes];
  v5 = [v4 count];

  if (v3 >= v5)
  {

    [(MPCScriptedLooper *)self restartScenes];
  }

  else
  {
    [(MPCScriptedLooper *)self setCurrentSceneIndex:v3];

    [(MPCScriptedLooper *)self _executeCurrentScene];
  }
}

- (void)_loopIfNeeded
{
  v3 = [(MPCScriptedLooper *)self currentScene];
  v4 = [v3 iterations];

  if (v4 && (v5 = [(MPCScriptedLooper *)self currentLoopCount]+ 1, [(MPCScriptedLooper *)self setCurrentLoopCount:v5], v5 >= v4))
  {
    [(MPCScriptedLooper *)self setTimeObserver:0];
    [(MPCScriptedLooper *)self setItemDidPlayToEndObserver:0];

    [(MPCScriptedLooper *)self _advanceScene];
  }

  else
  {
    v6 = [(MPCScriptedLooper *)self currentScene];
    -[MPCScriptedLooper seekToFrameIfNeeded:completionHandler:](self, "seekToFrameIfNeeded:completionHandler:", [v6 startFrame], 0);
  }
}

- (void)_executeCurrentScene
{
  [(MPCScriptedLooper *)self setCurrentLoopCount:0];
  objc_initWeak(&location, self);
  v3 = [(MPCScriptedLooper *)self currentScene];
  v4 = [v3 startFrame];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__MPCScriptedLooper__executeCurrentScene__block_invoke;
  v5[3] = &unk_1E82395A0;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [(MPCScriptedLooper *)self seekToFrameIfNeeded:v4 completionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __41__MPCScriptedLooper__executeCurrentScene__block_invoke(uint64_t a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained currentScene];
  v4 = [v3 startFrame];
  v5 = [WeakRetained currentScene];
  v6 = [v5 endFrame];

  if (v4 == v6)
  {
    [WeakRetained _pause];
  }

  else
  {
    v7 = [WeakRetained currentScene];
    v8 = [v7 endFrame];

    if (v8 == -1)
    {
      v12 = objc_alloc(MEMORY[0x1E6970828]);
      v13 = [*(a1 + 32) player];
      v14 = [v13 currentItem];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __41__MPCScriptedLooper__executeCurrentScene__block_invoke_2;
      v27[3] = &unk_1E8239578;
      objc_copyWeak(&v28, (a1 + 40));
      v15 = [v12 initWithName:*MEMORY[0x1E6987A10] object:v14 handler:v27];
      [WeakRetained setItemDidPlayToEndObserver:v15];

      objc_destroyWeak(&v28);
    }

    else
    {
      v25 = 0uLL;
      v26 = 0;
      v9 = *(a1 + 32);
      v10 = [v9 currentScene];
      v11 = [v10 endFrame];
      if (v9)
      {
        [v9 _CMTimeForFrame:v11 + 1];
      }

      else
      {
        v25 = 0uLL;
        v26 = 0;
      }

      v16 = [*(a1 + 32) player];
      v23 = v25;
      v24 = v26;
      v17 = [MEMORY[0x1E696B098] valueWithCMTime:&v23];
      v29[0] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      v19 = MEMORY[0x1E69E96A0];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __41__MPCScriptedLooper__executeCurrentScene__block_invoke_3;
      v21[3] = &unk_1E8239500;
      objc_copyWeak(&v22, (a1 + 40));
      v20 = [v16 addBoundaryTimeObserverForTimes:v18 queue:MEMORY[0x1E69E96A0] usingBlock:v21];
      [WeakRetained setTimeObserver:v20];

      objc_destroyWeak(&v22);
    }
  }
}

void __41__MPCScriptedLooper__executeCurrentScene__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _loopIfNeeded];
    WeakRetained = v2;
  }
}

void __41__MPCScriptedLooper__executeCurrentScene__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _loopIfNeeded];
    WeakRetained = v2;
  }
}

- (void)_executeSceneCollection
{
  v3 = [(MPCScriptedLooper *)self sceneCollection];
  if (v3 && (v4 = v3, v5 = [objc_opt_class() isScriptedLoopingDisabled], v4, !v5))
  {

    [(MPCScriptedLooper *)self _executeCurrentScene];
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = objc_alloc(MEMORY[0x1E6970828]);
    v7 = [(MPCScriptedLooper *)self player];
    v8 = [v7 currentItem];
    v9 = *MEMORY[0x1E6987A10];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __44__MPCScriptedLooper__executeSceneCollection__block_invoke;
    v14 = &unk_1E8239578;
    objc_copyWeak(&v15, &location);
    v10 = [v6 initWithName:v9 object:v8 handler:&v11];
    [(MPCScriptedLooper *)self setItemDidPlayToEndObserver:v10, v11, v12, v13, v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __44__MPCScriptedLooper__executeSceneCollection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained seekToFrameIfNeeded:0 completionHandler:0];
    WeakRetained = v2;
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_CMTimeForFrame:(SEL)a3
{
  v5 = 1000 * a4;
  v8 = [(MPCScriptedLooper *)self sceneCollection];
  [v8 frameRate];
  CMTimeMake(retstr, v5, (v6 * 1000.0));

  return result;
}

- (void)_createSceneCollectionForAssetWithPreloadedKeys:(id)a3
{
  v45[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37 = 0;
  v5 = [v4 statusOfValueForKey:@"metadata" error:&v37];
  v6 = v37;
  v7 = v6;
  if (v5 > 2)
  {
    if (v5 == 4)
    {
      v21 = os_log_create("com.apple.amp.mediaplaybackcore", "ScriptedLooper");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v41 = self;
        _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_INFO, "MPCScriptedLooper %p: Cancelled preloading metadata.", buf, 0xCu);
      }

      v12 = self;
      v13 = 3;
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_40;
      }

      v9 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E696AA08];
      v45[0] = v6;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      v11 = [v9 errorWithDomain:@"MPCScriptedLooperErrorDomain" code:0 userInfo:v10];
      [(MPCScriptedLooper *)self setError:v11];

      v12 = self;
      v13 = 2;
    }

    [(MPCScriptedLooper *)v12 setStatus:v13];
    goto LABEL_40;
  }

  if (v5 < 2)
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "ScriptedLooper");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v41 = self;
      v42 = 2048;
      v43 = v5;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "MPCScriptedLooper %p: metadataStatus was %ld.", buf, 0x16u);
    }

LABEL_10:
    v36 = 0;
    v14 = [v4 statusOfValueForKey:@"playable" error:&v36];
    v15 = v36;
    v16 = v15;
    if (v14 > 2)
    {
      if (v14 == 4)
      {
        v27 = os_log_create("com.apple.amp.mediaplaybackcore", "ScriptedLooper");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v41 = self;
          _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_INFO, "MPCScriptedLooper %p: Cancelled preloading playable.", buf, 0xCu);
        }

        v25 = self;
        v26 = 3;
        goto LABEL_30;
      }

      if (v14 != 3)
      {
        goto LABEL_31;
      }

      v18 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696AA08];
      v39 = v15;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v20 = [v18 errorWithDomain:@"MPCScriptedLooperErrorDomain" code:1 userInfo:v19];
      [(MPCScriptedLooper *)self setError:v20];
    }

    else
    {
      if (v14 >= 2)
      {
        if (v14 != 2)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v17 = os_log_create("com.apple.amp.mediaplaybackcore", "ScriptedLooper");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v41 = self;
          v42 = 2048;
          v43 = v14;
          _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "MPCScriptedLooper %p: playableStatus was %ld.", buf, 0x16u);
        }
      }

      if ([v4 isPlayable])
      {
        v22 = [v4 metadata];
        v23 = [MPCScriptedSceneCollectionParser sceneCollectionForMetadataItems:v22];

        [(MPCScriptedLooper *)self setSceneCollection:v23];
        [(MPCScriptedLooper *)self setStatus:1];

        goto LABEL_31;
      }

      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCScriptedLooperErrorDomain" code:2 userInfo:0];
      [(MPCScriptedLooper *)self setError:v24];
    }

    v25 = self;
    v26 = 2;
LABEL_30:
    [(MPCScriptedLooper *)v25 setStatus:v26];
LABEL_31:
    v35 = 0;
    v28 = [v4 statusOfValueForKey:@"duration" error:&v35];
    v29 = v35;
    if (v28 == 4)
    {
      v30 = os_log_create("com.apple.amp.mediaplaybackcore", "ScriptedLooper");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v41 = self;
        v31 = "MPCScriptedLooper %p: Cancelled preloading duration.";
        v32 = v30;
        v33 = OS_LOG_TYPE_INFO;
        v34 = 12;
        goto LABEL_37;
      }
    }

    else
    {
      if (v28 != 3)
      {
LABEL_39:

        goto LABEL_40;
      }

      v30 = os_log_create("com.apple.amp.mediaplaybackcore", "ScriptedLooper");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v41 = self;
        v42 = 2114;
        v43 = v29;
        v31 = "MPCScriptedLooper %p: Failed to preload duration. error=%{public}@";
        v32 = v30;
        v33 = OS_LOG_TYPE_ERROR;
        v34 = 22;
LABEL_37:
        _os_log_impl(&dword_1C5C61000, v32, v33, v31, buf, v34);
      }
    }

    goto LABEL_39;
  }

  if (v5 == 2)
  {
    goto LABEL_10;
  }

LABEL_40:
  [(MPCScriptedLooper *)self _executeSceneCollection];
}

- (int64_t)frameForCMTime:(id *)a3
{
  v9 = *a3;
  Seconds = CMTimeGetSeconds(&v9);
  v5 = [(MPCScriptedLooper *)self sceneCollection];
  [v5 frameRate];
  v7 = (Seconds * v6);

  return v7;
}

- (void)seekToFrameIfNeeded:(int64_t)a3 completionHandler:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a4;
  memset(&v45, 0, sizeof(v45));
  v7 = [(MPCScriptedLooper *)self player];
  v8 = v7;
  if (v7)
  {
    [v7 currentTime];
  }

  else
  {
    memset(&v45, 0, sizeof(v45));
  }

  time1 = v45;
  v9 = [(MPCScriptedLooper *)self frameForCMTime:&time1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__MPCScriptedLooper_seekToFrameIfNeeded_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8239528;
  v34 = v6;
  v44 = v34;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (v9 + 1 == a3)
  {
    v10[2](v10);
  }

  value = *MEMORY[0x1E6960CC0];
  timescale = *(MEMORY[0x1E6960CC0] + 8);
  v12 = [(MPCScriptedLooper *)self sceneCollection];
  v13 = v12 == 0;

  epoch = *(MEMORY[0x1E6960CC0] + 16);
  v33 = epoch;
  if (v13)
  {
    flags = *(MEMORY[0x1E6960CC0] + 12);
    if (flags)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  [(MPCScriptedLooper *)self _CMTimeForFrame:a3];
  value = time1.value;
  flags = time1.flags;
  timescale = time1.timescale;
  epoch = time1.epoch;
  if ((time1.flags & 1) == 0)
  {
LABEL_10:
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCScriptedLooperErrorDomain" code:3 userInfo:0];
    [(MPCScriptedLooper *)self setError:v16];

    [(MPCScriptedLooper *)self setStatus:2];
    v11[2](v11);
  }

LABEL_11:
  time1 = v45;
  time2.value = value;
  time2.timescale = timescale;
  time2.flags = flags;
  time2.epoch = epoch;
  if (!CMTimeCompare(&time1, &time2))
  {
    v11[2](v11);
  }

  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v18 = os_signpost_id_generate(v17);

  v19 = *MEMORY[0x1E695E480];
  time1.value = value;
  time1.timescale = timescale;
  time1.flags = flags;
  time1.epoch = epoch;
  v35 = CMTimeCopyDescription(v19, &time1);
  time1 = v45;
  v20 = CMTimeCopyDescription(v19, &time1);
  v21 = [(MPCScriptedLooper *)self player];
  v22 = [v21 currentItem];
  v23 = [v22 asset];
  v24 = [v23 URL];

  v25 = os_log_create("com.apple.amp.mediaplaybackcore", "ScriptedLooper");
  v26 = v25;
  if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    v27 = [(MPCScriptedLooper *)self currentSceneIndex];
    v28 = [(MPCScriptedLooper *)self currentLoopCount];
    LODWORD(time1.value) = 138544642;
    *(&time1.value + 4) = v35;
    LOWORD(time1.flags) = 2114;
    *(&time1.flags + 2) = v20;
    HIWORD(time1.epoch) = 2048;
    v47 = v27;
    v48 = 2048;
    v49 = v28;
    v50 = 2114;
    v51 = v24;
    v52 = 2048;
    v53 = v18;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v18, "SeekToTime", "seekToTime: %{public}@ currentTime: %{public}@ currentSceneIndex: %ld currentLoopCount: %ld URL: %{public}@ signpostID: %llu", &time1, 0x3Eu);
  }

  if (![(MPCScriptedLooper *)self isSceneExecutionPaused])
  {
    v29 = [(MPCScriptedLooper *)self player];
    [v29 pause];
  }

  objc_initWeak(&location, self);
  v30 = [(MPCScriptedLooper *)self player];
  v31 = [v30 currentItem];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __59__MPCScriptedLooper_seekToFrameIfNeeded_completionHandler___block_invoke_68;
  v38[3] = &unk_1E8239550;
  v40[1] = v18;
  objc_copyWeak(v40, &location);
  v32 = v34;
  v39 = v32;
  time1.value = value;
  time1.timescale = timescale;
  time1.flags = flags;
  time1.epoch = epoch;
  *&time2.value = *MEMORY[0x1E6960CC0];
  time2.epoch = v33;
  v36 = *&time2.value;
  v37 = v33;
  [v31 seekToTime:&time1 toleranceBefore:&time2 toleranceAfter:&v36 completionHandler:v38];

  objc_destroyWeak(v40);
  objc_destroyWeak(&location);
}

uint64_t __59__MPCScriptedLooper_seekToFrameIfNeeded_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __59__MPCScriptedLooper_seekToFrameIfNeeded_completionHandler___block_invoke_68(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "ScriptedLooper");
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v10[0] = 67109120;
    v10[1] = a2;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SeekToTime", "finished: %{BOOL}d", v10, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained isSceneExecutionPaused] & 1) == 0)
  {
    v8 = [WeakRetained player];
    [v8 play];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2);
  }
}

- (void)setTimeObserver:(id)a3
{
  v5 = a3;
  timeObserver = self->_timeObserver;
  if (timeObserver != v5)
  {
    v8 = v5;
    if (timeObserver)
    {
      v7 = [(MPCScriptedLooper *)self player];
      [v7 removeTimeObserver:self->_timeObserver];
    }

    objc_storeStrong(&self->_timeObserver, a3);
    v5 = v8;
  }
}

- (id)currentScene
{
  v3 = [(MPCScriptedLooper *)self sceneCollection];
  v4 = [v3 scenes];
  v5 = [v4 objectAtIndexedSubscript:{-[MPCScriptedLooper currentSceneIndex](self, "currentSceneIndex")}];

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v32[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (MPCScriptedLooperPlayerStatusKVOContext == a6)
  {
    v22 = [(MPCScriptedLooper *)self player];
    v23 = [v22 status];

    if (v23 == 1)
    {
      if ([(MPCScriptedLooper *)self isExecutingPauseScene])
      {
        [(MPCScriptedLooper *)self _pause];
      }
    }

    else if (v23 == 2)
    {
      v24 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696AA08];
      v25 = [(MPCScriptedLooper *)self player];
      v26 = [v25 error];
      v32[0] = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      v28 = [v24 errorWithDomain:@"MPCScriptedLooperErrorDomain" code:4 userInfo:v27];
      [(MPCScriptedLooper *)self setError:v28];

      goto LABEL_8;
    }
  }

  else if (MPCScriptedLooperItemStatusKVOContext == a6)
  {
    v13 = [(MPCScriptedLooper *)self player];
    v14 = [v13 currentItem];
    v15 = [v14 status];

    if (v15 == 2)
    {
      v16 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696AA08];
      v17 = [(MPCScriptedLooper *)self player];
      v18 = [v17 currentItem];
      v19 = [v18 error];
      v30 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v21 = [v16 errorWithDomain:@"MPCScriptedLooperErrorDomain" code:5 userInfo:v20];
      [(MPCScriptedLooper *)self setError:v21];

LABEL_8:
      [(MPCScriptedLooper *)self setStatus:2];
      [(MPCScriptedLooper *)self pauseScenes];
    }
  }
}

- (void)pauseScenes
{
  [(MPCScriptedLooper *)self setSceneExecutionPaused:1];

  [(MPCScriptedLooper *)self _updateRateIfNeeded];
}

- (void)playScenes
{
  [(MPCScriptedLooper *)self setSceneExecutionPaused:0];

  [(MPCScriptedLooper *)self _updateRateIfNeeded];
}

- (void)restartScenes
{
  [(MPCScriptedLooper *)self setCurrentSceneIndex:0];
  [(MPCScriptedLooper *)self setCurrentLoopCount:0];
  if ([(MPCScriptedLooper *)self isExecutingPauseScene])
  {
    [(MPCScriptedLooper *)self setExecutingPauseScene:0];
    v3 = [(MPCScriptedLooper *)self pauseFinishedBlock];
    dispatch_block_cancel(v3);
  }

  [(MPCScriptedLooper *)self _executeSceneCollection];
}

- (void)dealloc
{
  v3 = [(MPCScriptedLooper *)self player];
  [v3 removeObserver:self forKeyPath:@"status"];

  v4 = [(MPCScriptedLooper *)self player];
  v5 = [v4 currentItem];
  [v5 removeObserver:self forKeyPath:@"status"];

  v6 = [(MPCScriptedLooper *)self player];
  v7 = [(MPCScriptedLooper *)self timeObserver];
  [v6 removeTimeObserver:v7];

  v8.receiver = self;
  v8.super_class = MPCScriptedLooper;
  [(MPCScriptedLooper *)&v8 dealloc];
}

- (void)_sharedInitWithItem:(id)a3 audioSession:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E6988098];
  v8 = a3;
  v9 = [v7 playerWithPlayerItem:0];
  v10 = v9;
  if (v6)
  {
    [(AVPlayer *)v9 setAudioSession:v6];
  }

  [(AVPlayer *)v10 replaceCurrentItemWithPlayerItem:v8];
  [(AVPlayer *)v10 setActionAtItemEnd:2];
  player = self->_player;
  self->_player = v10;
  v12 = v10;

  self->_sceneExecutionPaused = 1;
  [(AVPlayer *)v12 addObserver:self forKeyPath:@"status" options:1 context:MPCScriptedLooperPlayerStatusKVOContext];
  [v8 addObserver:self forKeyPath:@"status" options:1 context:MPCScriptedLooperItemStatusKVOContext];

  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__MPCScriptedLooper__sharedInitWithItem_audioSession___block_invoke;
  v15[3] = &unk_1E8239500;
  objc_copyWeak(&v16, &location);
  v13 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v15);
  pauseFinishedBlock = self->_pauseFinishedBlock;
  self->_pauseFinishedBlock = v13;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __54__MPCScriptedLooper__sharedInitWithItem_audioSession___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExecutingPauseScene:0];
  [WeakRetained _updateRateIfNeeded];
  [WeakRetained _advanceScene];
}

- (MPCScriptedLooper)initWithAsset:(id)a3 sceneCollection:(id)a4 audioSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = MPCScriptedLooper;
  v11 = [(MPCScriptedLooper *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sceneCollection, a4);
    v12->_status = 1;
    v13 = [MEMORY[0x1E69880B0] playerItemWithAsset:v8];
    [(MPCScriptedLooper *)v12 _sharedInitWithItem:v13 audioSession:v10];
    [(MPCScriptedLooper *)v12 _executeSceneCollection];
  }

  return v12;
}

- (MPCScriptedLooper)initWithURL:(id)a3 sceneCollection:(id)a4 audioSession:(id)a5
{
  v8 = MEMORY[0x1E6987E28];
  v9 = a5;
  v10 = a4;
  v11 = [v8 assetWithURL:a3];
  v12 = [(MPCScriptedLooper *)self initWithAsset:v11 sceneCollection:v10 audioSession:v9];

  return v12;
}

- (MPCScriptedLooper)initWithAsset:(id)a3 audioSession:(id)a4
{
  v18[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = MPCScriptedLooper;
  v8 = [(MPCScriptedLooper *)&v17 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E69880B0] playerItemWithAsset:v6];
    [(MPCScriptedLooper *)v8 _sharedInitWithItem:v9 audioSession:v7];
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__35168;
    v15[4] = __Block_byref_object_dispose__35169;
    v16 = v8;
    v18[0] = @"metadata";
    v18[1] = @"duration";
    v18[2] = @"playable";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__MPCScriptedLooper_initWithAsset_audioSession___block_invoke;
    v12[3] = &unk_1E82394D8;
    v14 = v15;
    v13 = v6;
    [v13 loadValuesAsynchronouslyForKeys:v10 completionHandler:v12];

    _Block_object_dispose(v15, 8);
  }

  return v8;
}

void __48__MPCScriptedLooper_initWithAsset_audioSession___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MPCScriptedLooper_initWithAsset_audioSession___block_invoke_2;
  block[3] = &unk_1E82394D8;
  v2 = *(a1 + 32);
  v1 = v2;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __48__MPCScriptedLooper_initWithAsset_audioSession___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    return [*(*(*(result + 40) + 8) + 40) _createSceneCollectionForAssetWithPreloadedKeys:*(result + 32)];
  }

  return result;
}

@end