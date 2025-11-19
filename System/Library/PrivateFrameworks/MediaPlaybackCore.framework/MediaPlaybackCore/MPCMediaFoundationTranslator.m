@interface MPCMediaFoundationTranslator
- (BOOL)canSkipInDirection:(int64_t)a3 fromItem:(id)a4;
- (BOOL)queueSupportsTransitionSettings;
- (BOOL)transitionsEnabled;
- (MPCMediaFoundationTranslator)initWithPlaybackEngine:(id)a3;
- (MPCPlaybackEngine)playbackEngine;
- (NSString)targetContentItemID;
- (double)crossfadeDuration;
- (id)MPAVItemForMFPlayerItem:(id)a3;
- (id)_MPAVItemForContentItemID:(id)a3 allowReuse:(BOOL)a4;
- (id)cachedQueueItemForContentItemID:(id)a3;
- (id)contentItemIDsFromOffset:(int64_t)a3 toOffset:(int64_t)a4 nowPlayingIndex:(int64_t *)a5;
- (id)queueItemForContentItemID:(id)a3 allowReuse:(BOOL)a4 error:(id *)a5;
- (id)queueItemForPlayerItem:(id)a3 allowReuse:(BOOL)a4;
- (int64_t)transitionStyle;
- (void)invalidateCache;
- (void)invalidateCacheWithContentItemID:(id)a3;
- (void)setMPAVItem:(id)a3 forMFPlayerItem:(id)a4;
- (void)updatePlayerPlaybackCoordinator:(id)a3;
@end

@implementation MPCMediaFoundationTranslator

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (double)crossfadeDuration
{
  v2 = [(MPCMediaFoundationTranslator *)self playbackEngine];
  v3 = [v2 queueController];
  v4 = [v3 transitionTogglable];

  if (v4)
  {
    [v4 crossfadeDuration];
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
  v2 = [(MPCMediaFoundationTranslator *)self playbackEngine];
  v3 = [v2 queueController];
  v4 = [v3 transitionTogglable];

  if (v4)
  {
    v5 = [v4 transitionStyle];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)transitionsEnabled
{
  v2 = [(MPCMediaFoundationTranslator *)self playbackEngine];
  v3 = [v2 queueController];
  v4 = [v3 transitionTogglable];

  if (v4)
  {
    v5 = [v4 transitionsEnabled];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)queueSupportsTransitionSettings
{
  v2 = [(MPCMediaFoundationTranslator *)self playbackEngine];
  v3 = [v2 queueController];
  v4 = [v3 transitionTogglable];

  return v4 != 0;
}

- (id)_MPAVItemForContentItemID:(id)a3 allowReuse:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v4 || (-[MPCMediaFoundationTranslator mapping](self, "mapping"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKey:v6], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v9 = [(MPCMediaFoundationTranslator *)self playbackEngine];
    v10 = [v9 queueController];
    v8 = [v10 itemForContentItemID:v6 allowReuse:v4];

    if (v8)
    {
      v11 = [(MPCMediaFoundationTranslator *)self mapping];
      [v11 setObject:v8 forKey:v6];
    }
  }

  return v8;
}

- (void)updatePlayerPlaybackCoordinator:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_playbackCoordinator, a3);
  v6 = [(MPCMediaFoundationTranslator *)self playbackEngine];
  v7 = [v6 queueController];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 engineID];
    v10 = [v7 sessionID];
    v11 = [v7 musicSharePlay];
    v13 = 138544130;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    v17 = 2114;
    v18 = v5;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] updatePlayerPlaybackCoordinator:… | updating playback coordinator [engine update] playbackCoordinator=%{public}@ musicSharePlayBehavior=%{public}@", &v13, 0x2Au);
  }

  v12 = [v7 musicSharePlay];
  [v12 updatePlaybackCoordinator:v5];
}

- (BOOL)canSkipInDirection:(int64_t)a3 fromItem:(id)a4
{
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MPCMediaFoundationTranslator.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"[(MPAVItem *)queueItem isKindOfClass:[MPAVItem class]]"}];
  }

  v8 = [(MPCMediaFoundationTranslator *)self playbackEngine];
  v9 = [v8 queueController];

  if (a3)
  {
    if (a3 != 1)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v10 = [v7 contentItemID];
    v11 = [v9 canNextTrackForContentItemID:v10 reason:0];
  }

  else
  {
    v10 = [v7 contentItemID];
    v11 = [v9 canPreviousTrackForContentItemID:v10 reason:0];
  }

  v12 = v11;

LABEL_9:
  return v12;
}

- (id)queueItemForPlayerItem:(id)a3 allowReuse:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 contentItemID];
  v7 = [(MPCMediaFoundationTranslator *)self _MPAVItemForContentItemID:v6 allowReuse:v4];

  return v7;
}

- (void)invalidateCache
{
  v2 = [(MPCMediaFoundationTranslator *)self mapping];
  [v2 removeAllObjects];
}

- (void)invalidateCacheWithContentItemID:(id)a3
{
  v4 = a3;
  v5 = [(MPCMediaFoundationTranslator *)self mapping];
  [v5 removeObjectForKey:v4];
}

- (id)cachedQueueItemForContentItemID:(id)a3
{
  v4 = a3;
  v5 = [(MPCMediaFoundationTranslator *)self mapping];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)queueItemForContentItemID:(id)a3 allowReuse:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(MPCMediaFoundationTranslator *)self playbackEngine];
  v10 = [v9 queueController];
  v11 = [(MPCMediaFoundationTranslator *)self _MPAVItemForContentItemID:v8 allowReuse:v6];
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 engineID];
    v14 = [v10 sessionID];
    *buf = 138544386;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    v20 = 2114;
    v21 = v8;
    v22 = 1024;
    v23 = v6;
    v24 = 2114;
    v25 = v11;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] queueItemForContentItemID:%{public}@ allowReuse:%{BOOL}u | receive queue item [] item=%{public}@", buf, 0x30u);
  }

  if (a5 && !v11)
  {
    *a5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:3007 debugDescription:{@"Failed to resolve queue item with contentItemID:%@ allowReuse:%d", v8, v6}];
  }

  return v11;
}

- (id)contentItemIDsFromOffset:(int64_t)a3 toOffset:(int64_t)a4 nowPlayingIndex:(int64_t *)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = [(MPCMediaFoundationTranslator *)self playbackEngine];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 queueController];
    v11 = [v10 contentItemIDsFromOffset:a3 toOffset:a4 mode:3 nowPlayingIndex:a5];
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v9 engineID];
      v14 = [v10 sessionID];
      v15 = *a5;
      v16 = [v11 msv_compactDescription];
      v18 = 138544642;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      v22 = 2048;
      v23 = a3;
      v24 = 2048;
      v25 = a4;
      v26 = 2048;
      v27 = v15;
      v28 = 2114;
      v29 = v16;
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
  v2 = [(MPCMediaFoundationTranslator *)self playbackEngine];
  v3 = [v2 queueController];
  v4 = [v3 targetContentItemID];

  return v4;
}

- (void)setMPAVItem:(id)a3 forMFPlayerItem:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(MPCMediaFoundationTranslator *)self mapping];
  v8 = [v6 contentItemID];

  if (v9)
  {
    [v7 setObject:v9 forKey:v8];
  }

  else
  {
    [v7 removeObjectForKey:v8];
  }
}

- (id)MPAVItemForMFPlayerItem:(id)a3
{
  v4 = [a3 contentItemID];
  v5 = [(MPCMediaFoundationTranslator *)self _MPAVItemForContentItemID:v4 allowReuse:1];

  return v5;
}

- (MPCMediaFoundationTranslator)initWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPCMediaFoundationTranslator;
  v5 = [(MPCMediaFoundationTranslator *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    mapping = v5->_mapping;
    v5->_mapping = v6;

    objc_storeWeak(&v5->_playbackEngine, v4);
  }

  return v5;
}

@end