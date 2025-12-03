@interface MPCItemBookmarker
- (MPCItemBookmarker)initWithPlaybackEngine:(id)engine translator:(id)translator;
- (MPCPlaybackEngine)engine;
- (void)currentItemWillChangeFromItem:(id)item toItem:(id)toItem time:(double)time;
- (void)itemDidBecomeCurrent:(id)current time:(double)time rate:(float)rate;
- (void)itemDidPlayToEnd:(id)end time:(double)time;
- (void)itemSmartTransitionDidEnd:(id)end time:(double)time;
- (void)itemSmartTransitionWillBeginFrom:(id)from outgoingItemAveragePrePivotTransitionRate:(double)rate time:(double)time;
- (void)itemTransitionDidReachPivotPoint:(id)point to:(id)to incomingItemAveragePostPivotTransitionRate:(double)rate time:(double)time;
- (void)itemTransitionWillBeginFrom:(id)from to:(id)to type:(int64_t)type timeStamp:(id)stamp;
- (void)playbackDidStartForItem:(id)item time:(double)time rate:(float)rate;
- (void)playbackDidStopForItem:(id)item time:(double)time;
- (void)playbackRateDidChangeToRate:(float)rate forItem:(id)item time:(double)time;
- (void)playbackStateDidChangeFromState:(int64_t)state toState:(int64_t)toState forItem:(id)item time:(double)time rate:(float)rate;
- (void)updateDurationSnapshotWithTime:(double)time forItem:(id)item rate:(float)rate;
@end

@implementation MPCItemBookmarker

- (MPCPlaybackEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

- (void)updateDurationSnapshotWithTime:(double)time forItem:(id)item rate:(float)rate
{
  itemCopy = item;
  if (itemCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"item == nil || [(MPAVItem *)item isKindOfClass:[MPAVItem class]]"}];
    }
  }

  engine = [(MPCItemBookmarker *)self engine];
  v18 = itemCopy;
  *&v11 = rate;
  [v18 _setCurrentPlaybackRate:v11];
  if ([v18 conformsToProtocol:&unk_1F459C8B8])
  {
    player = [engine player];
    state = [player state];
    *&v15 = rate;
    [v18 pod_updateDurationSnapshotWithElapsedTime:state playbackRate:time playbackState:v15];
  }

  else
  {
    *&v12 = rate;
    [v18 _updateDurationSnapshotWithElapsedTime:time playbackRate:v12];
  }

  mediaRemotePublisher = [engine mediaRemotePublisher];
  [mediaRemotePublisher publishIfNeeded];
}

- (void)playbackStateDidChangeFromState:(int64_t)state toState:(int64_t)toState forItem:(id)item time:(double)time rate:(float)rate
{
  itemCopy = item;
  if (itemCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"item == nil || [(MPAVItem *)item isKindOfClass:[MPAVItem class]]"}];
    }
  }

  if (state != 1 && toState == 1)
  {
    *&v12 = rate;
    [itemCopy _setCurrentPlaybackRate:v12];
  }
}

- (void)playbackRateDidChangeToRate:(float)rate forItem:(id)item time:(double)time
{
  v18 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (rate == 0.0 || rate == 1.0)
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 134218498;
      selfCopy = self;
      v14 = 2048;
      rateCopy = rate;
      v16 = 2114;
      v17 = itemCopy;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "MPCItemBookmarker %p - Unexpected rate change to %.1f received [Should be handled by playbackDidStart/Stop] - item=%{public}@", &v12, 0x20u);
    }
  }

  else
  {
    *&v9 = rate;
    [(MPCItemBookmarker *)self updateDurationSnapshotWithTime:itemCopy forItem:time rate:v9];
  }
}

- (void)playbackDidStopForItem:(id)item time:(double)time
{
  v14 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218498;
    selfCopy = self;
    v10 = 2114;
    v11 = itemCopy;
    v12 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "MPCItemBookmarker %p - playbackDidStopForItem - item=%{public}@ - time:%.2fs", &v8, 0x20u);
  }

  [(MPCItemBookmarker *)self updateDurationSnapshotWithTime:itemCopy forItem:time rate:0.0];
}

- (void)playbackDidStartForItem:(id)item time:(double)time rate:(float)rate
{
  v19 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy = self;
    v15 = 2114;
    v16 = itemCopy;
    v17 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "MPCItemBookmarker %p - playbackDidStartForItem - item=%{public}@ - time:%.2fs", buf, 0x20u);
  }

  if (itemCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"item == nil || [(MPAVItem *)item isKindOfClass:[MPAVItem class]]"}];
    }
  }

  *&v11 = rate;
  [(MPCItemBookmarker *)self updateDurationSnapshotWithTime:itemCopy forItem:time rate:v11];
}

- (void)itemSmartTransitionDidEnd:(id)end time:(double)time
{
  endCopy = end;
  v11 = endCopy;
  if (endCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    endCopy = v11;
    if ((isKindOfClass & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"incomingItem == nil || [(MPAVItem *)incomingItem isKindOfClass:[MPAVItem class]]"}];

      endCopy = v11;
    }
  }

  LODWORD(v8) = 1.0;
  [(MPCItemBookmarker *)self updateDurationSnapshotWithTime:endCopy forItem:time rate:v8];
}

- (void)itemTransitionDidReachPivotPoint:(id)point to:(id)to incomingItemAveragePostPivotTransitionRate:(double)rate time:(double)time
{
  pointCopy = point;
  toCopy = to;
  if (pointCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"outgoingItem == nil || [(MPAVItem *)outgoingItem isKindOfClass:[MPAVItem class]]"}];

    if (!toCopy)
    {
      goto LABEL_6;
    }
  }

  else if (!toCopy)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"incomingItem == nil || [(MPAVItem *)incomingItem isKindOfClass:[MPAVItem class]]"}];
  }

LABEL_6:
  *&v12 = rate;
  [(MPCItemBookmarker *)self updateDurationSnapshotWithTime:toCopy forItem:time rate:v12];
  [pointCopy notePlaybackFinishedByHittingEnd];
}

- (void)itemSmartTransitionWillBeginFrom:(id)from outgoingItemAveragePrePivotTransitionRate:(double)rate time:(double)time
{
  fromCopy = from;
  v13 = fromCopy;
  if (fromCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    fromCopy = v13;
    if ((isKindOfClass & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"outgoingItem == nil || [(MPAVItem *)outgoingItem isKindOfClass:[MPAVItem class]]"}];

      fromCopy = v13;
    }
  }

  *&v10 = rate;
  [(MPCItemBookmarker *)self updateDurationSnapshotWithTime:fromCopy forItem:time rate:v10];
}

- (void)itemTransitionWillBeginFrom:(id)from to:(id)to type:(int64_t)type timeStamp:(id)stamp
{
  fromCopy = from;
  toCopy = to;
  stampCopy = stamp;
  v12 = fromCopy;
  v13 = stampCopy;
  if (fromCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v12 = fromCopy;
    if ((isKindOfClass & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"fromItem == nil || [(MPAVItem *)fromItem isKindOfClass:[MPAVItem class]]"}];

      v12 = fromCopy;
    }
  }

  [v12 notePlaybackFinishedByHittingEnd];
}

- (void)itemDidPlayToEnd:(id)end time:(double)time
{
  endCopy = end;
  v9 = endCopy;
  if (endCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    endCopy = v9;
    if ((isKindOfClass & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"item == nil || [(MPAVItem *)item isKindOfClass:[MPAVItem class]]"}];

      endCopy = v9;
    }
  }

  [endCopy notePlaybackFinishedByHittingEnd];
}

- (void)itemDidBecomeCurrent:(id)current time:(double)time rate:(float)rate
{
  v23 = *MEMORY[0x1E69E9840];
  currentCopy = current;
  if (currentCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"item == nil || [(MPAVItem *)item isKindOfClass:[MPAVItem class]]"}];
    }
  }

  v10 = currentCopy;
  if ([v10 isAssetLoaded])
  {
    [v10 reevaluateType];
    [v10 reevaluateHasProtectedContent];
    contentItem = [v10 contentItem];
    *&v12 = rate;
    [v10 _updateDurationSnapshotWithElapsedTime:time playbackRate:v12];
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      selfCopy = self;
      v17 = 2114;
      v18 = v10;
      v19 = 2048;
      timeCopy = time;
      v21 = 2048;
      rateCopy = rate;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "MPCItemBookmarker %p - Current loaded item bookmark data updated %{public}@ time:%.2fs rate:%.2f", buf, 0x2Au);
    }
  }
}

- (void)currentItemWillChangeFromItem:(id)item toItem:(id)toItem time:(double)time
{
  v31 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  toItemCopy = toItem;
  if (itemCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"fromItem == nil || [(MPAVItem *)fromItem isKindOfClass:[MPAVItem class]]"}];

    if (!toItemCopy)
    {
      goto LABEL_6;
    }
  }

  else if (!toItemCopy)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPCItemBookmarker.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"toItem == nil || [(MPAVItem *)toItem isKindOfClass:[MPAVItem class]]"}];
  }

LABEL_6:
  v10 = itemCopy;
  if ([v10 isAssetLoaded])
  {
    asset = [v10 asset];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [asset URL];
      if (v12)
      {
        v13 = v12;
        [v12 isFileURL];
      }
    }

    playerItem = [v10 playerItem];
    v15 = playerItem;
    if (playerItem)
    {
      [playerItem currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);

    if (Seconds == 0.0)
    {
      contentItem = [v10 contentItem];
      [contentItem elapsedTime];
      v19 = v18;

      if (v19 > 0.0)
      {
        contentItem2 = [v10 contentItem];
        [contentItem2 elapsedTime];
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

    v23 = toItemCopy;
    contentItemID = [v23 contentItemID];
    contentItemID2 = [v10 contentItemID];
    v26 = [contentItemID isEqualToString:contentItemID2];

    if (v26)
    {
      [v23 _pickupContentItemFrom:v10];
    }
  }
}

- (MPCItemBookmarker)initWithPlaybackEngine:(id)engine translator:(id)translator
{
  engineCopy = engine;
  translatorCopy = translator;
  v11.receiver = self;
  v11.super_class = MPCItemBookmarker;
  v8 = [(MPCItemBookmarker *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_engine, engineCopy);
    objc_storeStrong(&v9->_translator, translator);
  }

  return v9;
}

@end