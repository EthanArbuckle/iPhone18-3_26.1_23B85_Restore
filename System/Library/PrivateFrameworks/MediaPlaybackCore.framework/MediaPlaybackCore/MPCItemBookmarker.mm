@interface MPCItemBookmarker
- (MPCItemBookmarker)initWithPlaybackEngine:(id)a3 translator:(id)a4;
- (MPCPlaybackEngine)engine;
- (void)currentItemWillChangeFromItem:(id)a3 toItem:(id)a4 time:(double)a5;
- (void)itemDidBecomeCurrent:(id)a3 time:(double)a4 rate:(float)a5;
- (void)itemDidPlayToEnd:(id)a3 time:(double)a4;
- (void)itemSmartTransitionDidEnd:(id)a3 time:(double)a4;
- (void)itemSmartTransitionWillBeginFrom:(id)a3 outgoingItemAveragePrePivotTransitionRate:(double)a4 time:(double)a5;
- (void)itemTransitionDidReachPivotPoint:(id)a3 to:(id)a4 incomingItemAveragePostPivotTransitionRate:(double)a5 time:(double)a6;
- (void)itemTransitionWillBeginFrom:(id)a3 to:(id)a4 type:(int64_t)a5 timeStamp:(id)a6;
- (void)playbackDidStartForItem:(id)a3 time:(double)a4 rate:(float)a5;
- (void)playbackDidStopForItem:(id)a3 time:(double)a4;
- (void)playbackRateDidChangeToRate:(float)a3 forItem:(id)a4 time:(double)a5;
- (void)playbackStateDidChangeFromState:(int64_t)a3 toState:(int64_t)a4 forItem:(id)a5 time:(double)a6 rate:(float)a7;
- (void)updateDurationSnapshotWithTime:(double)a3 forItem:(id)a4 rate:(float)a5;
@end

@implementation MPCItemBookmarker

- (MPCPlaybackEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

- (void)updateDurationSnapshotWithTime:(double)a3 forItem:(id)a4 rate:(float)a5
{
  v9 = a4;
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"item == nil || [(MPAVItem *)item isKindOfClass:[MPAVItem class]]"}];
    }
  }

  v10 = [(MPCItemBookmarker *)self engine];
  v18 = v9;
  *&v11 = a5;
  [v18 _setCurrentPlaybackRate:v11];
  if ([v18 conformsToProtocol:&unk_1F459C8B8])
  {
    v13 = [v10 player];
    v14 = [v13 state];
    *&v15 = a5;
    [v18 pod_updateDurationSnapshotWithElapsedTime:v14 playbackRate:a3 playbackState:v15];
  }

  else
  {
    *&v12 = a5;
    [v18 _updateDurationSnapshotWithElapsedTime:a3 playbackRate:v12];
  }

  v16 = [v10 mediaRemotePublisher];
  [v16 publishIfNeeded];
}

- (void)playbackStateDidChangeFromState:(int64_t)a3 toState:(int64_t)a4 forItem:(id)a5 time:(double)a6 rate:(float)a7
{
  v14 = a5;
  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"item == nil || [(MPAVItem *)item isKindOfClass:[MPAVItem class]]"}];
    }
  }

  if (a3 != 1 && a4 == 1)
  {
    *&v12 = a7;
    [v14 _setCurrentPlaybackRate:v12];
  }
}

- (void)playbackRateDidChangeToRate:(float)a3 forItem:(id)a4 time:(double)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (a3 == 0.0 || a3 == 1.0)
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 134218498;
      v13 = self;
      v14 = 2048;
      v15 = a3;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "MPCItemBookmarker %p - Unexpected rate change to %.1f received [Should be handled by playbackDidStart/Stop] - item=%{public}@", &v12, 0x20u);
    }
  }

  else
  {
    *&v9 = a3;
    [(MPCItemBookmarker *)self updateDurationSnapshotWithTime:v8 forItem:a5 rate:v9];
  }
}

- (void)playbackDidStopForItem:(id)a3 time:(double)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218498;
    v9 = self;
    v10 = 2114;
    v11 = v6;
    v12 = 2048;
    v13 = a4;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "MPCItemBookmarker %p - playbackDidStopForItem - item=%{public}@ - time:%.2fs", &v8, 0x20u);
  }

  [(MPCItemBookmarker *)self updateDurationSnapshotWithTime:v6 forItem:a4 rate:0.0];
}

- (void)playbackDidStartForItem:(id)a3 time:(double)a4 rate:(float)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v14 = self;
    v15 = 2114;
    v16 = v9;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "MPCItemBookmarker %p - playbackDidStartForItem - item=%{public}@ - time:%.2fs", buf, 0x20u);
  }

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"item == nil || [(MPAVItem *)item isKindOfClass:[MPAVItem class]]"}];
    }
  }

  *&v11 = a5;
  [(MPCItemBookmarker *)self updateDurationSnapshotWithTime:v9 forItem:a4 rate:v11];
}

- (void)itemSmartTransitionDidEnd:(id)a3 time:(double)a4
{
  v7 = a3;
  v11 = v7;
  if (v7)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v11;
    if ((isKindOfClass & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"incomingItem == nil || [(MPAVItem *)incomingItem isKindOfClass:[MPAVItem class]]"}];

      v7 = v11;
    }
  }

  LODWORD(v8) = 1.0;
  [(MPCItemBookmarker *)self updateDurationSnapshotWithTime:v7 forItem:a4 rate:v8];
}

- (void)itemTransitionDidReachPivotPoint:(id)a3 to:(id)a4 incomingItemAveragePostPivotTransitionRate:(double)a5 time:(double)a6
{
  v15 = a3;
  v11 = a4;
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"outgoingItem == nil || [(MPAVItem *)outgoingItem isKindOfClass:[MPAVItem class]]"}];

    if (!v11)
    {
      goto LABEL_6;
    }
  }

  else if (!v11)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"incomingItem == nil || [(MPAVItem *)incomingItem isKindOfClass:[MPAVItem class]]"}];
  }

LABEL_6:
  *&v12 = a5;
  [(MPCItemBookmarker *)self updateDurationSnapshotWithTime:v11 forItem:a6 rate:v12];
  [v15 notePlaybackFinishedByHittingEnd];
}

- (void)itemSmartTransitionWillBeginFrom:(id)a3 outgoingItemAveragePrePivotTransitionRate:(double)a4 time:(double)a5
{
  v9 = a3;
  v13 = v9;
  if (v9)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v9 = v13;
    if ((isKindOfClass & 1) == 0)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"outgoingItem == nil || [(MPAVItem *)outgoingItem isKindOfClass:[MPAVItem class]]"}];

      v9 = v13;
    }
  }

  *&v10 = a4;
  [(MPCItemBookmarker *)self updateDurationSnapshotWithTime:v9 forItem:a5 rate:v10];
}

- (void)itemTransitionWillBeginFrom:(id)a3 to:(id)a4 type:(int64_t)a5 timeStamp:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a6;
  v12 = v16;
  v13 = v11;
  if (v16)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v12 = v16;
    if ((isKindOfClass & 1) == 0)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"fromItem == nil || [(MPAVItem *)fromItem isKindOfClass:[MPAVItem class]]"}];

      v12 = v16;
    }
  }

  [v12 notePlaybackFinishedByHittingEnd];
}

- (void)itemDidPlayToEnd:(id)a3 time:(double)a4
{
  v6 = a3;
  v9 = v6;
  if (v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = v9;
    if ((isKindOfClass & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"item == nil || [(MPAVItem *)item isKindOfClass:[MPAVItem class]]"}];

      v6 = v9;
    }
  }

  [v6 notePlaybackFinishedByHittingEnd];
}

- (void)itemDidBecomeCurrent:(id)a3 time:(double)a4 rate:(float)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"item == nil || [(MPAVItem *)item isKindOfClass:[MPAVItem class]]"}];
    }
  }

  v10 = v9;
  if ([v10 isAssetLoaded])
  {
    [v10 reevaluateType];
    [v10 reevaluateHasProtectedContent];
    v11 = [v10 contentItem];
    *&v12 = a5;
    [v10 _updateDurationSnapshotWithElapsedTime:a4 playbackRate:v12];
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      v16 = self;
      v17 = 2114;
      v18 = v10;
      v19 = 2048;
      v20 = a4;
      v21 = 2048;
      v22 = a5;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "MPCItemBookmarker %p - Current loaded item bookmark data updated %{public}@ time:%.2fs rate:%.2f", buf, 0x2Au);
    }
  }
}

- (void)currentItemWillChangeFromItem:(id)a3 toItem:(id)a4 time:(double)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"fromItem == nil || [(MPAVItem *)fromItem isKindOfClass:[MPAVItem class]]"}];

    if (!v9)
    {
      goto LABEL_6;
    }
  }

  else if (!v9)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"toItem == nil || [(MPAVItem *)toItem isKindOfClass:[MPAVItem class]]"}];
  }

LABEL_6:
  v10 = v8;
  if ([v10 isAssetLoaded])
  {
    v11 = [v10 asset];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 URL];
      if (v12)
      {
        v13 = v12;
        [v12 isFileURL];
      }
    }

    v14 = [v10 playerItem];
    v15 = v14;
    if (v14)
    {
      [v14 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);

    if (Seconds == 0.0)
    {
      v17 = [v10 contentItem];
      [v17 elapsedTime];
      v19 = v18;

      if (v19 > 0.0)
      {
        v20 = [v10 contentItem];
        [v20 elapsedTime];
        Seconds = v21;
      }
    }

    [v10 _setCurrentPlaybackRate:0.0];
    [v10 _updateDurationSnapshotWithElapsedTime:Seconds playbackRate:0.0];
    v22 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(time.value) = 134218498;
      *(&time.value + 4) = self;
      LOWORD(time.flags) = 2114;
      *(&time.flags + 2) = v10;
      HIWORD(time.epoch) = 2048;
      v30 = Seconds;
      _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "MPCItemBookmarker %p - Previous loaded item bookmark data updated %{public}@ - PlaybackStoppedTime:%.2fs", &time, 0x20u);
    }

    v23 = v9;
    v24 = [v23 contentItemID];
    v25 = [v10 contentItemID];
    v26 = [v24 isEqualToString:v25];

    if (v26)
    {
      [v23 _pickupContentItemFrom:v10];
    }
  }
}

- (MPCItemBookmarker)initWithPlaybackEngine:(id)a3 translator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MPCItemBookmarker;
  v8 = [(MPCItemBookmarker *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_engine, v6);
    objc_storeStrong(&v9->_translator, a4);
  }

  return v9;
}

@end