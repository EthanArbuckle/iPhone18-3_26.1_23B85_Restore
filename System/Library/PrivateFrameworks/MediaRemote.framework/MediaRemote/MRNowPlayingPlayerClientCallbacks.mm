@interface MRNowPlayingPlayerClientCallbacks
- (BOOL)hasPlaybackQueueCallbacks;
- (BOOL)removePlaybackQueueDataSourceCallback:(id)a3;
- (MRNowPlayingPlayerClientCallbacks)initWithPlayerPath:(id)a3 queue:(id)a4;
- (NSArray)commandHandlerBlocks;
- (id)audioAmplitudeSamplesCallback;
- (id)beginLyricsEventCallback;
- (id)endLyricsEventCallback;
- (id)playbackSessionCallback;
- (id)playbackSessionMigrateBeginCallback;
- (id)playbackSessionMigrateEndCallback;
- (id)playbackSessionMigrateFinalizeCallback;
- (id)playbackSessionMigratePostCallback;
- (id)playbackSessionMigrateRequestCallback;
- (id)videoThumbnailsCallback;
- (unint64_t)_onQueue_capabilities;
- (unint64_t)capabilities;
- (void)addCommandHandlerBlock:(id)a3 forKey:(id)a4;
- (void)registerNowPlayingInfoAnimatedArtworkCallback:(id)a3;
- (void)registerNowPlayingInfoArtworkAssetCallback:(id)a3;
- (void)registerNowPlayingInfoAssetCallbacks:(id)a3;
- (void)registerNowPlayingInfoBackedPlaybackQueueDataSourceCallbacks;
- (void)registerNowPlayingInfoCallbacks:(id)a3;
- (void)removeCommandHandlerBlockForKey:(id)a3;
- (void)setAudioAmplitudeSamplesCallback:(id)a3;
- (void)setBeginLyricsEventCallback:(id)a3;
- (void)setEndLyricsEventCallback:(id)a3;
- (void)setPlaybackSessionCallback:(id)a3;
- (void)setPlaybackSessionMigrateBeginCallback:(id)a3;
- (void)setPlaybackSessionMigrateEndCallback:(id)a3;
- (void)setPlaybackSessionMigrateFinalizeCallback:(id)a3;
- (void)setPlaybackSessionMigratePostCallback:(id)a3;
- (void)setPlaybackSessionMigrateRequestCallback:(id)a3;
- (void)setVideoThumbnailsCallback:(id)a3;
@end

@implementation MRNowPlayingPlayerClientCallbacks

- (unint64_t)capabilities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__MRNowPlayingPlayerClientCallbacks_capabilities__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)_onQueue_capabilities
{
  v3 = 8 * ([(MSVMultiCallback *)self->_createPlaybackQueueForRequestCallbacks count]!= 0);
  if (self->_createItemToken)
  {
    goto LABEL_2;
  }

  if ([(MSVMultiCallback *)self->_createItemForOffsetCallbacks count])
  {
    goto LABEL_5;
  }

  if (self->_createItemToken)
  {
LABEL_2:
    if ([(MSVMultiCallback *)self->_createItemForOffsetCallbacks count]< 2)
    {
      goto LABEL_6;
    }

LABEL_5:
    v3 |= 2uLL;
  }

LABEL_6:
  if (self->_createItemForIdentifierToken)
  {
    goto LABEL_7;
  }

  if (![(MSVMultiCallback *)self->_createItemForIdentifierCallbacks count])
  {
    if (!self->_createItemForIdentifierToken)
    {
      return v3;
    }

LABEL_7:
    if ([(MSVMultiCallback *)self->_createItemForIdentifierCallbacks count]< 2)
    {
      return v3;
    }
  }

  v3 |= 4uLL;
  return v3;
}

uint64_t __49__MRNowPlayingPlayerClientCallbacks_capabilities__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_capabilities];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (MRNowPlayingPlayerClientCallbacks)initWithPlayerPath:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v39.receiver = self;
  v39.super_class = MRNowPlayingPlayerClientCallbacks;
  v9 = [(MRNowPlayingPlayerClientCallbacks *)&v39 init];
  if (v9)
  {
    if (!v8)
    {
      [MRNowPlayingPlayerClientCallbacks initWithPlayerPath:queue:];
    }

    if (([v7 isResolved] & 1) == 0)
    {
      [MRNowPlayingPlayerClientCallbacks initWithPlayerPath:queue:];
    }

    objc_storeStrong(&v9->_serialQueue, a4);
    objc_storeStrong(&v9->_playerPath, a3);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    commandHandlerBlocks = v9->_commandHandlerBlocks;
    v9->_commandHandlerBlocks = v10;

    v12 = objc_alloc_init(MEMORY[0x1E69B1440]);
    createPlaybackQueueForRequestCallbacks = v9->_createPlaybackQueueForRequestCallbacks;
    v9->_createPlaybackQueueForRequestCallbacks = v12;

    v14 = objc_alloc_init(MEMORY[0x1E69B1440]);
    createItemForOffsetCallbacks = v9->_createItemForOffsetCallbacks;
    v9->_createItemForOffsetCallbacks = v14;

    v16 = objc_alloc_init(MEMORY[0x1E69B1440]);
    createItemForIdentifierCallbacks = v9->_createItemForIdentifierCallbacks;
    v9->_createItemForIdentifierCallbacks = v16;

    v18 = objc_alloc_init(MEMORY[0x1E69B1440]);
    createChildItemCallbacks = v9->_createChildItemCallbacks;
    v9->_createChildItemCallbacks = v18;

    v20 = objc_alloc_init(MEMORY[0x1E69B1440]);
    metadataCallbacks = v9->_metadataCallbacks;
    v9->_metadataCallbacks = v20;

    v22 = objc_alloc_init(MEMORY[0x1E69B1440]);
    languageOptionsCallbacks = v9->_languageOptionsCallbacks;
    v9->_languageOptionsCallbacks = v22;

    v24 = objc_alloc_init(MEMORY[0x1E69B1440]);
    infoCallbacks = v9->_infoCallbacks;
    v9->_infoCallbacks = v24;

    v26 = objc_alloc_init(MEMORY[0x1E69B1440]);
    transcriptAlignmentsCallbacks = v9->_transcriptAlignmentsCallbacks;
    v9->_transcriptAlignmentsCallbacks = v26;

    v28 = objc_alloc_init(MEMORY[0x1E69B1440]);
    lyricsCallbacks = v9->_lyricsCallbacks;
    v9->_lyricsCallbacks = v28;

    v30 = objc_alloc_init(MEMORY[0x1E69B1440]);
    artworkCallbacks = v9->_artworkCallbacks;
    v9->_artworkCallbacks = v30;

    v32 = objc_alloc_init(MEMORY[0x1E69B1440]);
    formattedArtworkCallbacks = v9->_formattedArtworkCallbacks;
    v9->_formattedArtworkCallbacks = v32;

    v34 = objc_alloc_init(MEMORY[0x1E69B1440]);
    availableArtworkFormatsCallbacks = v9->_availableArtworkFormatsCallbacks;
    v9->_availableArtworkFormatsCallbacks = v34;

    v36 = objc_alloc_init(MEMORY[0x1E69B1440]);
    animatedArtworkCallbacks = v9->_animatedArtworkCallbacks;
    v9->_animatedArtworkCallbacks = v36;
  }

  return v9;
}

- (id)videoThumbnailsCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__34;
  v9 = __Block_byref_object_dispose__34;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __60__MRNowPlayingPlayerClientCallbacks_videoThumbnailsCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 160));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setVideoThumbnailsCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __64__MRNowPlayingPlayerClientCallbacks_setVideoThumbnailsCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  *(v3 + 160) = v2;
}

- (id)audioAmplitudeSamplesCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__34;
  v9 = __Block_byref_object_dispose__34;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __66__MRNowPlayingPlayerClientCallbacks_audioAmplitudeSamplesCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 168));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setAudioAmplitudeSamplesCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __70__MRNowPlayingPlayerClientCallbacks_setAudioAmplitudeSamplesCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 168);
  *(v3 + 168) = v2;
}

- (id)playbackSessionCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__34;
  v9 = __Block_byref_object_dispose__34;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __60__MRNowPlayingPlayerClientCallbacks_playbackSessionCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 96));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPlaybackSessionCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __64__MRNowPlayingPlayerClientCallbacks_setPlaybackSessionCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;
}

- (id)playbackSessionMigrateBeginCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__34;
  v9 = __Block_byref_object_dispose__34;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __72__MRNowPlayingPlayerClientCallbacks_playbackSessionMigrateBeginCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 104));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPlaybackSessionMigrateBeginCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __76__MRNowPlayingPlayerClientCallbacks_setPlaybackSessionMigrateBeginCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;
}

- (id)playbackSessionMigrateEndCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__34;
  v9 = __Block_byref_object_dispose__34;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __70__MRNowPlayingPlayerClientCallbacks_playbackSessionMigrateEndCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 112));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPlaybackSessionMigrateEndCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __74__MRNowPlayingPlayerClientCallbacks_setPlaybackSessionMigrateEndCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;
}

- (id)playbackSessionMigrateFinalizeCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__34;
  v9 = __Block_byref_object_dispose__34;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __75__MRNowPlayingPlayerClientCallbacks_playbackSessionMigrateFinalizeCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 120));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPlaybackSessionMigrateFinalizeCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __79__MRNowPlayingPlayerClientCallbacks_setPlaybackSessionMigrateFinalizeCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;
}

- (id)playbackSessionMigrateRequestCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__34;
  v9 = __Block_byref_object_dispose__34;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __74__MRNowPlayingPlayerClientCallbacks_playbackSessionMigrateRequestCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 136));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPlaybackSessionMigrateRequestCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __78__MRNowPlayingPlayerClientCallbacks_setPlaybackSessionMigrateRequestCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 136);
  *(v3 + 136) = v2;
}

- (id)endLyricsEventCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__34;
  v9 = __Block_byref_object_dispose__34;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __59__MRNowPlayingPlayerClientCallbacks_endLyricsEventCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 152));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setBeginLyricsEventCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __65__MRNowPlayingPlayerClientCallbacks_setBeginLyricsEventCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  *(v3 + 152) = v2;
}

- (id)beginLyricsEventCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__34;
  v9 = __Block_byref_object_dispose__34;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __61__MRNowPlayingPlayerClientCallbacks_beginLyricsEventCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 144));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setEndLyricsEventCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __63__MRNowPlayingPlayerClientCallbacks_setEndLyricsEventCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 144);
  *(v3 + 144) = v2;
}

- (id)playbackSessionMigratePostCallback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__34;
  v9 = __Block_byref_object_dispose__34;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = MEMORY[0x1A58E3570](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __71__MRNowPlayingPlayerClientCallbacks_playbackSessionMigratePostCallback__block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1A58E3570](*(*(a1 + 32) + 128));
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPlaybackSessionMigratePostCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __75__MRNowPlayingPlayerClientCallbacks_setPlaybackSessionMigratePostCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 128);
  *(v3 + 128) = v2;
}

- (BOOL)hasPlaybackQueueCallbacks
{
  v3 = +[MRNowPlayingOriginClientManager sharedManager];
  v4 = [v3 originClientForPlayerPath:self->_playerPath];

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v5 = [v4 playbackQueueCallback];
  v6 = v5 != 0;

  v12 = v6;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  LOBYTE(self) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return self;
}

uint64_t __62__MRNowPlayingPlayerClientCallbacks_hasPlaybackQueueCallbacks__block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if (*(v1 + 24))
  {
    v2 = 1;
  }

  else
  {
    v3 = result;
    result = [*(result + 32) _onQueue_capabilities];
    v2 = result != 0;
    v1 = *(*(v3 + 40) + 8);
  }

  *(v1 + 24) = v2;
  return result;
}

- (void)addCommandHandlerBlock:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MRNowPlayingPlayerClientCallbacks_addCommandHandlerBlock_forKey___block_invoke;
  block[3] = &unk_1E769B250;
  v12 = v7;
  v13 = v6;
  block[4] = self;
  v9 = v7;
  v10 = v6;
  dispatch_sync(serialQueue, block);
}

void __67__MRNowPlayingPlayerClientCallbacks_addCommandHandlerBlock_forKey___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 176);
  v3 = [*(a1 + 48) copy];
  [v2 setObject:v3 forKey:*(a1 + 40)];
}

- (void)removeCommandHandlerBlockForKey:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__MRNowPlayingPlayerClientCallbacks_removeCommandHandlerBlockForKey___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (NSArray)commandHandlerBlocks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__21;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__MRNowPlayingPlayerClientCallbacks_commandHandlerBlocks__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __57__MRNowPlayingPlayerClientCallbacks_commandHandlerBlocks__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 176) allValues];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)registerNowPlayingInfoBackedPlaybackQueueDataSourceCallbacks
{
  if (registerNowPlayingInfoBackedPlaybackQueueDataSourceCallbacks_onceToken != -1)
  {
    [MRNowPlayingPlayerClientCallbacks registerNowPlayingInfoBackedPlaybackQueueDataSourceCallbacks];
  }

  [(MRNowPlayingPlayerClientCallbacks *)self registerNowPlayingInfoCallbacks:registerNowPlayingInfoBackedPlaybackQueueDataSourceCallbacks_queue];
  [(MRNowPlayingPlayerClientCallbacks *)self registerNowPlayingInfoAssetCallbacks:registerNowPlayingInfoBackedPlaybackQueueDataSourceCallbacks_queue];
  [(MRNowPlayingPlayerClientCallbacks *)self registerNowPlayingInfoArtworkAssetCallback:registerNowPlayingInfoBackedPlaybackQueueDataSourceCallbacks_queue];
  if (_os_feature_enabled_impl())
  {
    v3 = registerNowPlayingInfoBackedPlaybackQueueDataSourceCallbacks_queue;

    [(MRNowPlayingPlayerClientCallbacks *)self registerNowPlayingInfoAnimatedArtworkCallback:v3];
  }
}

void __97__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoBackedPlaybackQueueDataSourceCallbacks__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.MediaRemote.PlaybackQueueNowPlayingInfo.serialQueue", 0);
  v1 = registerNowPlayingInfoBackedPlaybackQueueDataSourceCallbacks_queue;
  registerNowPlayingInfoBackedPlaybackQueueDataSourceCallbacks_queue = v0;
}

- (void)registerNowPlayingInfoCallbacks:(id)a3
{
  v4 = a3;
  if (!self->_createItemToken)
  {
    objc_initWeak(&location, self);
    createItemForOffsetCallbacks = self->_createItemForOffsetCallbacks;
    v6 = MEMORY[0x1E69B1400];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __69__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoCallbacks___block_invoke;
    v19[3] = &unk_1E76A1A50;
    objc_copyWeak(&v20, &location);
    v7 = MEMORY[0x1A58E3570](v19);
    v8 = [v6 callbackWithQueue:v4 block:v7];
    v9 = MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(createItemForOffsetCallbacks, 2, v8);
    createItemToken = self->_createItemToken;
    self->_createItemToken = v9;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  if (!self->_createItemForIdentifierToken)
  {
    objc_initWeak(&location, self);
    createItemForIdentifierCallbacks = self->_createItemForIdentifierCallbacks;
    v12 = MEMORY[0x1E69B1400];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __69__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoCallbacks___block_invoke_2;
    v17[3] = &unk_1E76A1A78;
    objc_copyWeak(&v18, &location);
    v13 = MEMORY[0x1A58E3570](v17);
    v14 = [v12 callbackWithQueue:v4 block:v13];
    v15 = MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(createItemForIdentifierCallbacks, 2, v14);
    createItemForIdentifierToken = self->_createItemForIdentifierToken;
    self->_createItemForIdentifierToken = v15;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

uint64_t __69__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoCallbacks___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  v5 = 0;
  if (!a2 && WeakRetained)
  {
    v6 = +[MRNowPlayingOriginClientManager sharedManager];
    v7 = [v4 playerPath];
    v8 = [v6 playerClientForPlayerPath:v7];

    v9 = [v8 nowPlayingInfo];
    if (v9)
    {
      v10 = [MRContentItem extractedIdentifierFromNowPlayingInfo:v9];
      v5 = MRContentItemCreate(*MEMORY[0x1E695E480], v10);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

uint64_t __69__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoCallbacks___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  v5 = 0;
  if (a2 && WeakRetained)
  {
    v6 = +[MRNowPlayingOriginClientManager sharedManager];
    v7 = [v4 playerPath];
    v8 = [v6 playerClientForPlayerPath:v7];

    v9 = [v8 nowPlayingInfo];
    if (v9)
    {
      v10 = [MRContentItem extractedIdentifierFromNowPlayingInfo:v9];
      if ([v10 isEqualToString:a2])
      {
        v5 = MRContentItemCreate(*MEMORY[0x1E695E480], a2);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)registerNowPlayingInfoAssetCallbacks:(id)a3
{
  v4 = a3;
  if (!self->_metadataToken || !self->_languageToken)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E69B1400];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __74__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoAssetCallbacks___block_invoke;
    v15 = &unk_1E76A1AA0;
    objc_copyWeak(&v16, &location);
    v6 = MEMORY[0x1A58E3570](&v12);
    v7 = [v5 callbackWithQueue:v4 block:{v6, v12, v13, v14, v15}];

    if (!self->_metadataToken)
    {
      v8 = MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(self->_metadataCallbacks, 2, v7);
      metadataToken = self->_metadataToken;
      self->_metadataToken = v8;
    }

    if (!self->_languageToken)
    {
      v10 = MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(self->_languageOptionsCallbacks, 2, v7);
      languageToken = self->_languageToken;
      self->_languageToken = v10;
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __74__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoAssetCallbacks___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = +[MRNowPlayingOriginClientManager sharedManager];
    v12 = [WeakRetained playerPath];
    v13 = [v11 playerClientForPlayerPath:v12];

    v14 = [v13 nowPlayingInfo];
    if (v14)
    {
      v15 = [MRContentItem extractedIdentifierFromNowPlayingInfo:v14];
      v16 = [v8 identifier];
      if ([v15 isEqualToString:v16])
      {
        v17 = [v13 nowPlayingArtwork];

        if (v17)
        {
          MRContentItemSetHasArtworkData(v8, 1);
        }

        if (_os_feature_enabled_impl())
        {
          v18 = [v13 nowPlayingAnimatedArtworkFormats];
          if ([v18 count])
          {
            [v8 setAvailableAnimatedArtworkFormats:v18];
          }
        }

        [v8 setNowPlayingInfo:v14 policy:0 request:v7];
        Error = 0;
      }

      else
      {
        Error = MRMediaRemoteCreateError(15);
      }
    }

    else
    {
      Error = 0;
    }

    v19 = Error;
  }

  else
  {
    v19 = MRMediaRemoteCreateError(4);
  }

  v21 = v19;
  v9[2](v9);
}

- (void)registerNowPlayingInfoArtworkAssetCallback:(id)a3
{
  v4 = a3;
  if (!self->_artworkToken)
  {
    objc_initWeak(&location, self);
    artworkCallbacks = self->_artworkCallbacks;
    v6 = MEMORY[0x1E69B1400];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __80__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoArtworkAssetCallback___block_invoke;
    v14 = &unk_1E76A1AA0;
    objc_copyWeak(&v15, &location);
    v7 = MEMORY[0x1A58E3570](&v11);
    v8 = [v6 callbackWithQueue:v4 block:{v7, v11, v12, v13, v14}];
    v9 = MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(artworkCallbacks, 2, v8);
    artworkToken = self->_artworkToken;
    self->_artworkToken = v9;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __80__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoArtworkAssetCallback___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = +[MRNowPlayingOriginClientManager sharedManager];
    v9 = [WeakRetained playerPath];
    v10 = [v8 playerClientForPlayerPath:v9];

    v11 = [v10 nowPlayingArtwork];
    v12 = [v10 nowPlayingInfo];
    v13 = [MRContentItem extractedIdentifierFromNowPlayingInfo:v12];
    v14 = MRContentItemGetIdentifier(a3);
    if ([v13 isEqualToString:v14])
    {
      v20 = v13;
      v21 = [v11 copyImageData];
      MRContentItemSetArtworkData(a3, v21);
      v15 = [v12 objectForKey:@"kMRMediaRemoteNowPlayingInfoArtworkDataWidth"];
      v16 = [v15 longValue];
      v17 = [v12 objectForKey:@"kMRMediaRemoteNowPlayingInfoArtworkDataHeight"];
      MRContentItemSetArtworkDataSize(a3, v16, [v17 longValue]);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v11 mimeType];
        MRContentItemSetArtworkMIMEType(a3, v18);
      }

      Error = 0;
      v13 = v20;
    }

    else
    {
      Error = MRMediaRemoteCreateError(15);
    }

    v19 = Error;
  }

  else
  {
    v19 = MRMediaRemoteCreateError(4);
  }

  v23 = v19;
  v6[2](v6);
}

- (void)registerNowPlayingInfoAnimatedArtworkCallback:(id)a3
{
  v4 = a3;
  if (!self->_animatedArtworkToken)
  {
    objc_initWeak(&location, self);
    animatedArtworkCallbacks = self->_animatedArtworkCallbacks;
    v6 = MEMORY[0x1E69B1400];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __83__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoAnimatedArtworkCallback___block_invoke;
    v12[3] = &unk_1E76A1B40;
    objc_copyWeak(&v14, &location);
    v7 = v4;
    v13 = v7;
    v8 = MEMORY[0x1A58E3570](v12);
    v9 = [v6 callbackWithQueue:v7 block:v8];
    v10 = MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(animatedArtworkCallbacks, 2, v9);
    animatedArtworkToken = self->_animatedArtworkToken;
    self->_animatedArtworkToken = v10;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __83__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoAnimatedArtworkCallback___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v83 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v56 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = +[MRNowPlayingOriginClientManager sharedManager];
    v10 = [WeakRetained playerPath];
    v11 = [v9 playerClientForPlayerPath:v10];

    v12 = a2;
    v13 = a3;
    MRPlaybackQueueRequestGetArtworkWidth(v12);
    v15 = v14;
    MRPlaybackQueueRequestGetArtworkHeight(v12);
    v17 = v16;
    v18 = [v11 nowPlayingInfo];
    v19 = [MRContentItem extractedIdentifierFromNowPlayingInfo:v18];
    v20 = MRContentItemGetIdentifier(v13);
    if (v15 == 0.0 || v17 == 0.0)
    {
      v33 = 145;
    }

    else
    {
      if ([v19 isEqualToString:v20])
      {
        v47 = v20;
        v48 = v19;
        v49 = v18;
        v50 = v13;
        v51 = WeakRetained;
        v52 = v7;
        v21 = dispatch_group_create();
        v55 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v53 = v12;
        v22 = [v12 requestedAnimatedArtworkPreviewFrameFormats];
        v23 = [v22 countByEnumeratingWithState:&v77 objects:v82 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = 0;
          v26 = *v78;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v78 != v26)
              {
                objc_enumerationMutation(v22);
              }

              v28 = *(*(&v77 + 1) + 8 * i);
              v29 = [v11 nowPlayingAnimatedArtworkForFormat:v28];
              if (v29)
              {
                dispatch_group_enter(v21);
                v72[0] = MEMORY[0x1E69E9820];
                v72[1] = 3221225472;
                v72[2] = __83__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoAnimatedArtworkCallback___block_invoke_2;
                v72[3] = &unk_1E76A1AC8;
                v73 = *(v56 + 32);
                v74 = v55;
                v75 = v28;
                v76 = v21;
                [v29 previewFrameDataWithSize:v72 completion:{v15, v17}];

                v30 = v73;
              }

              else
              {
                Error = MRMediaRemoteCreateError(15);
                v30 = v25;
                v25 = Error;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v77 objects:v82 count:16];
          }

          while (v24);
        }

        else
        {
          v25 = 0;
        }

        v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v34 = [v53 requestedAnimatedArtworkAssetURLFormats];
        v35 = [v34 countByEnumeratingWithState:&v68 objects:v81 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v69;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v69 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v68 + 1) + 8 * j);
              v40 = [v11 nowPlayingAnimatedArtworkForFormat:v39];
              if (v40)
              {
                dispatch_group_enter(v21);
                v63[0] = MEMORY[0x1E69E9820];
                v63[1] = 3221225472;
                v63[2] = __83__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoAnimatedArtworkCallback___block_invoke_4;
                v63[3] = &unk_1E76A1AF0;
                v64 = *(v56 + 32);
                v65 = v54;
                v66 = v39;
                v67 = v21;
                [v40 artworkAssetFileURLWithSize:v63 completion:{v15, v17}];

                v41 = v64;
              }

              else
              {
                v42 = MRMediaRemoteCreateError(15);
                v41 = v25;
                v25 = v42;
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v68 objects:v81 count:16];
          }

          while (v36);
        }

        v43 = *(v56 + 32);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __83__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoAnimatedArtworkCallback___block_invoke_6;
        block[3] = &unk_1E76A1B18;
        v32 = v25;
        v58 = v32;
        v13 = v50;
        v59 = v50;
        v60 = v55;
        v61 = v54;
        v7 = v52;
        v62 = v52;
        v44 = v54;
        v45 = v55;
        dispatch_group_notify(v21, v43, block);

        WeakRetained = v51;
        v12 = v53;
        v19 = v48;
        v18 = v49;
        v20 = v47;
        goto LABEL_32;
      }

      v33 = 15;
    }

    v32 = MRMediaRemoteCreateError(v33);
    (*(v7 + 2))(v7, v32);
LABEL_32:

    goto LABEL_33;
  }

  v32 = MRMediaRemoteCreateError(4);
  (*(v7 + 2))(v7, v32);
LABEL_33:

  v46 = *MEMORY[0x1E69E9840];
}

void __83__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoAnimatedArtworkCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoAnimatedArtworkCallback___block_invoke_3;
  v9[3] = &unk_1E769FC08;
  v10 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v3;
  dispatch_async(v4, v9);
}

void __83__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoAnimatedArtworkCallback___block_invoke_3(uint64_t a1)
{
  v2 = [[MRDataArtwork alloc] initWithImageData:*(a1 + 32)];
  if (v2)
  {
    [*(a1 + 40) setObject:v2 forKeyedSubscript:*(a1 + 48)];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __83__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoAnimatedArtworkCallback___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoAnimatedArtworkCallback___block_invoke_5;
  v9[3] = &unk_1E769FC08;
  v10 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v3;
  dispatch_async(v4, v9);
}

void __83__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoAnimatedArtworkCallback___block_invoke_5(uint64_t a1)
{
  v3 = [[MRAnimatedArtwork alloc] initWithAssetFileURL:*(a1 + 32)];
  if (v3)
  {
    v2 = [[MRAnimatedArtwork alloc] initWithAssetFileURL:*(a1 + 32)];
    [*(a1 + 40) setObject:v2 forKeyedSubscript:*(a1 + 48)];
  }

  dispatch_group_leave(*(a1 + 56));
}

uint64_t __83__MRNowPlayingPlayerClientCallbacks_registerNowPlayingInfoAnimatedArtworkCallback___block_invoke_6(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    [*(a1 + 40) setAnimatedArtworkPreviewFrames:*(a1 + 48)];
    [*(a1 + 40) setAnimatedArtworks:*(a1 + 56)];
    v2 = *(a1 + 32);
  }

  v3 = *(*(a1 + 64) + 16);

  return v3();
}

- (BOOL)removePlaybackQueueDataSourceCallback:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__MRNowPlayingPlayerClientCallbacks_removePlaybackQueueDataSourceCallback___block_invoke;
  block[3] = &unk_1E76A1B68;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  LOBYTE(serialQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return serialQueue;
}

uint64_t __75__MRNowPlayingPlayerClientCallbacks_removePlaybackQueueDataSourceCallback___block_invoke(uint64_t a1)
{
  [*(a1 + 32) hasPlaybackQueueCallbacks];
  if ([*(*(a1 + 32) + 16) removeCallback:*(a1 + 40)] & 1) != 0 || (objc_msgSend(*(*(a1 + 32) + 32), "removeCallback:", *(a1 + 40)) & 1) != 0 || (objc_msgSend(*(*(a1 + 32) + 24), "removeCallback:", *(a1 + 40)) & 1) != 0 || (objc_msgSend(*(*(a1 + 32) + 40), "removeCallback:", *(a1 + 40)) & 1) != 0 || (objc_msgSend(*(*(a1 + 32) + 48), "removeCallback:", *(a1 + 40)) & 1) != 0 || (objc_msgSend(*(*(a1 + 32) + 64), "removeCallback:", *(a1 + 40)) & 1) != 0 || (objc_msgSend(*(*(a1 + 32) + 72), "removeCallback:", *(a1 + 40)) & 1) != 0 || (objc_msgSend(*(*(a1 + 32) + 56), "removeCallback:", *(a1 + 40)) & 1) != 0 || (objc_msgSend(*(*(a1 + 32) + 80), "removeCallback:", *(a1 + 40)))
  {
    v2 = 1;
  }

  else
  {
    v2 = [*(*(a1 + 32) + 88) removeCallback:*(a1 + 40)];
  }

  *(*(*(a1 + 48) + 8) + 24) = v2;
  v3 = *(a1 + 32);

  return [v3 hasPlaybackQueueCallbacks];
}

- (void)initWithPlayerPath:queue:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingPlayerClientCallbacks initWithPlayerPath:queue:]"];
  [v0 handleFailureInFunction:v1 file:@"MRNowPlayingPlayerClientCallbacks.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
}

- (void)initWithPlayerPath:queue:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingPlayerClientCallbacks initWithPlayerPath:queue:]"];
  [v0 handleFailureInFunction:v1 file:@"MRNowPlayingPlayerClientCallbacks.m" lineNumber:55 description:@"Attempting to use unresolved Player Path"];
}

@end