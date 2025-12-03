@interface MPCMediaFoundationTranslator
- (BOOL)canSkipInDirection:(int64_t)direction fromItem:(id)item;
- (BOOL)queueSupportsTransitionSettings;
- (BOOL)transitionsEnabled;
- (MPCMediaFoundationTranslator)initWithPlaybackEngine:(id)engine;
- (MPCPlaybackEngine)playbackEngine;
- (NSString)targetContentItemID;
- (double)crossfadeDuration;
- (id)MPAVItemForMFPlayerItem:(id)item;
- (id)_MPAVItemForContentItemID:(id)d allowReuse:(BOOL)reuse;
- (id)cachedQueueItemForContentItemID:(id)d;
- (id)contentItemIDsFromOffset:(int64_t)offset toOffset:(int64_t)toOffset nowPlayingIndex:(int64_t *)index;
- (id)queueItemForContentItemID:(id)d allowReuse:(BOOL)reuse error:(id *)error;
- (id)queueItemForPlayerItem:(id)item allowReuse:(BOOL)reuse;
- (int64_t)transitionStyle;
- (void)invalidateCache;
- (void)invalidateCacheWithContentItemID:(id)d;
- (void)setMPAVItem:(id)item forMFPlayerItem:(id)playerItem;
- (void)updatePlayerPlaybackCoordinator:(id)coordinator;
@end

@implementation MPCMediaFoundationTranslator

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (double)crossfadeDuration
{
  playbackEngine = [(MPCMediaFoundationTranslator *)self playbackEngine];
  queueController = [playbackEngine queueController];
  transitionTogglable = [queueController transitionTogglable];

  if (transitionTogglable)
  {
    [transitionTogglable crossfadeDuration];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (int64_t)transitionStyle
{
  playbackEngine = [(MPCMediaFoundationTranslator *)self playbackEngine];
  queueController = [playbackEngine queueController];
  transitionTogglable = [queueController transitionTogglable];

  if (transitionTogglable)
  {
    transitionStyle = [transitionTogglable transitionStyle];
  }

  else
  {
    transitionStyle = 0;
  }

  return transitionStyle;
}

- (BOOL)transitionsEnabled
{
  playbackEngine = [(MPCMediaFoundationTranslator *)self playbackEngine];
  queueController = [playbackEngine queueController];
  transitionTogglable = [queueController transitionTogglable];

  if (transitionTogglable)
  {
    transitionsEnabled = [transitionTogglable transitionsEnabled];
  }

  else
  {
    transitionsEnabled = 0;
  }

  return transitionsEnabled;
}

- (BOOL)queueSupportsTransitionSettings
{
  playbackEngine = [(MPCMediaFoundationTranslator *)self playbackEngine];
  queueController = [playbackEngine queueController];
  transitionTogglable = [queueController transitionTogglable];

  return transitionTogglable != 0;
}

- (id)_MPAVItemForContentItemID:(id)d allowReuse:(BOOL)reuse
{
  reuseCopy = reuse;
  dCopy = d;
  if (!reuseCopy || (-[MPCMediaFoundationTranslator mapping](self, "mapping"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKey:dCopy], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    playbackEngine = [(MPCMediaFoundationTranslator *)self playbackEngine];
    queueController = [playbackEngine queueController];
    v8 = [queueController itemForContentItemID:dCopy allowReuse:reuseCopy];

    if (v8)
    {
      mapping = [(MPCMediaFoundationTranslator *)self mapping];
      [mapping setObject:v8 forKey:dCopy];
    }
  }

  return v8;
}

- (void)updatePlayerPlaybackCoordinator:(id)coordinator
{
  v21 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  objc_storeStrong(&self->_playbackCoordinator, coordinator);
  playbackEngine = [(MPCMediaFoundationTranslator *)self playbackEngine];
  queueController = [playbackEngine queueController];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [playbackEngine engineID];
    sessionID = [queueController sessionID];
    musicSharePlay = [queueController musicSharePlay];
    v13 = 138544130;
    v14 = engineID;
    v15 = 2114;
    v16 = sessionID;
    v17 = 2114;
    v18 = coordinatorCopy;
    v19 = 2114;
    v20 = musicSharePlay;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] updatePlayerPlaybackCoordinator:… | updating playback coordinator [engine update] playbackCoordinator=%{public}@ musicSharePlayBehavior=%{public}@", &v13, 0x2Au);
  }

  musicSharePlay2 = [queueController musicSharePlay];
  [musicSharePlay2 updatePlaybackCoordinator:coordinatorCopy];
}

- (BOOL)canSkipInDirection:(int64_t)direction fromItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMediaFoundationTranslator.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"[(MPAVItem *)queueItem isKindOfClass:[MPAVItem class]]"}];
  }

  playbackEngine = [(MPCMediaFoundationTranslator *)self playbackEngine];
  queueController = [playbackEngine queueController];

  if (direction)
  {
    if (direction != 1)
    {
      v12 = 0;
      goto LABEL_9;
    }

    contentItemID = [itemCopy contentItemID];
    v11 = [queueController canNextTrackForContentItemID:contentItemID reason:0];
  }

  else
  {
    contentItemID = [itemCopy contentItemID];
    v11 = [queueController canPreviousTrackForContentItemID:contentItemID reason:0];
  }

  v12 = v11;

LABEL_9:
  return v12;
}

- (id)queueItemForPlayerItem:(id)item allowReuse:(BOOL)reuse
{
  reuseCopy = reuse;
  contentItemID = [item contentItemID];
  v7 = [(MPCMediaFoundationTranslator *)self _MPAVItemForContentItemID:contentItemID allowReuse:reuseCopy];

  return v7;
}

- (void)invalidateCache
{
  mapping = [(MPCMediaFoundationTranslator *)self mapping];
  [mapping removeAllObjects];
}

- (void)invalidateCacheWithContentItemID:(id)d
{
  dCopy = d;
  mapping = [(MPCMediaFoundationTranslator *)self mapping];
  [mapping removeObjectForKey:dCopy];
}

- (id)cachedQueueItemForContentItemID:(id)d
{
  dCopy = d;
  mapping = [(MPCMediaFoundationTranslator *)self mapping];
  v6 = [mapping objectForKey:dCopy];

  return v6;
}

- (id)queueItemForContentItemID:(id)d allowReuse:(BOOL)reuse error:(id *)error
{
  reuseCopy = reuse;
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  playbackEngine = [(MPCMediaFoundationTranslator *)self playbackEngine];
  queueController = [playbackEngine queueController];
  v11 = [(MPCMediaFoundationTranslator *)self _MPAVItemForContentItemID:dCopy allowReuse:reuseCopy];
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [playbackEngine engineID];
    sessionID = [queueController sessionID];
    *buf = 138544386;
    v17 = engineID;
    v18 = 2114;
    v19 = sessionID;
    v20 = 2114;
    v21 = dCopy;
    v22 = 1024;
    v23 = reuseCopy;
    v24 = 2114;
    v25 = v11;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] queueItemForContentItemID:%{public}@ allowReuse:%{BOOL}u | receive queue item [] item=%{public}@", buf, 0x30u);
  }

  if (error && !v11)
  {
    *error = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3007 debugDescription:{@"Failed to resolve queue item with contentItemID:%@ allowReuse:%d", dCopy, reuseCopy}];
  }

  return v11;
}

- (id)contentItemIDsFromOffset:(int64_t)offset toOffset:(int64_t)toOffset nowPlayingIndex:(int64_t *)index
{
  v30 = *MEMORY[0x1E69E9840];
  playbackEngine = [(MPCMediaFoundationTranslator *)self playbackEngine];
  v9 = playbackEngine;
  if (playbackEngine)
  {
    queueController = [playbackEngine queueController];
    v11 = [queueController contentItemIDsFromOffset:offset toOffset:toOffset mode:3 nowPlayingIndex:index];
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [v9 engineID];
      sessionID = [queueController sessionID];
      v15 = *index;
      msv_compactDescription = [v11 msv_compactDescription];
      v18 = 138544642;
      v19 = engineID;
      v20 = 2114;
      v21 = sessionID;
      v22 = 2048;
      offsetCopy = offset;
      v24 = 2048;
      toOffsetCopy = toOffset;
      v26 = 2048;
      v27 = v15;
      v28 = 2114;
      v29 = msv_compactDescription;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] contentItemIDsFromOffset:%ld toOffset:%ld nowPlayingIndex:%ld | receive natural playback items [] contentItemIDs=[%{public}@]", &v18, 0x3Eu);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)targetContentItemID
{
  playbackEngine = [(MPCMediaFoundationTranslator *)self playbackEngine];
  queueController = [playbackEngine queueController];
  targetContentItemID = [queueController targetContentItemID];

  return targetContentItemID;
}

- (void)setMPAVItem:(id)item forMFPlayerItem:(id)playerItem
{
  itemCopy = item;
  playerItemCopy = playerItem;
  mapping = [(MPCMediaFoundationTranslator *)self mapping];
  contentItemID = [playerItemCopy contentItemID];

  if (itemCopy)
  {
    [mapping setObject:itemCopy forKey:contentItemID];
  }

  else
  {
    [mapping removeObjectForKey:contentItemID];
  }
}

- (id)MPAVItemForMFPlayerItem:(id)item
{
  contentItemID = [item contentItemID];
  v5 = [(MPCMediaFoundationTranslator *)self _MPAVItemForContentItemID:contentItemID allowReuse:1];

  return v5;
}

- (MPCMediaFoundationTranslator)initWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v9.receiver = self;
  v9.super_class = MPCMediaFoundationTranslator;
  v5 = [(MPCMediaFoundationTranslator *)&v9 init];
  if (v5)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    mapping = v5->_mapping;
    v5->_mapping = strongToWeakObjectsMapTable;

    objc_storeWeak(&v5->_playbackEngine, engineCopy);
  }

  return v5;
}

@end