@interface MRNowPlayingPlayerClient
- (BOOL)hasReceivedCommandRecently;
- (BOOL)invalidatingPlaybackQueue;
- (BOOL)isPictureInPictureEnabled;
- (BOOL)removePendingPlaybackSessionMigrateEvent:(id)event;
- (MRContentItem)nowPlayingContentItem;
- (MRNowPlayingArtwork)nowPlayingArtwork;
- (MRNowPlayingPlayerClient)initWithPlayerPath:(id)path;
- (MRPlaybackQueue)playbackQueue;
- (NSArray)nowPlayingAnimatedArtworkFormats;
- (NSArray)supportedCommands;
- (NSDate)activeRequestedDate;
- (NSDictionary)nowPlayingInfo;
- (NSString)nowPlayingArtworkID;
- (double)invalidatationTimestamp;
- (id)debugDescription;
- (id)description;
- (id)homeUserIdentifiers;
- (id)nowPlayingAnimatedArtworkForFormat:(id)format;
- (id)resolveCommandOptions:(unsigned int)options options:(id)a4;
- (unint64_t)capabilities;
- (unsigned)playbackState;
- (unsigned)resolveCommand:(unsigned int)command;
- (void)_handePlaybackSessionMigrateRequest:(void *)request request:(void *)a4 completion:;
- (void)_onQueue_cacheContentItemChangesForPendingRequests:(uint64_t)requests;
- (void)_onQueue_enqueueContentItemChangesForPendingPlaybackQueueInvalidation:(uint64_t)invalidation;
- (void)_onQueue_updateCacheWithContentItems:(uint64_t)items;
- (void)_onQueue_updateCacheWithPlaybackQueue:(uint64_t)queue;
- (void)addPendingPlaybackSessionMigrateEvent:(id)event;
- (void)addPendingRequest:(id)request;
- (void)appendHomeUserIdentifier:(id)identifier;
- (void)clearCachedContentItemArtworkForItems:(id)items;
- (void)clearHomeUserIdentifiers;
- (void)flushPendingPlaybackSessionMigrateEvents:(id)events;
- (void)invalidatePlaybackQueue;
- (void)invalidatePlaybackQueueWithPlaybackQueue:(id)queue;
- (void)preProcessChangePlaybackRateCommandWithOptions:(uint64_t)options;
- (void)restoreNowPlayingClientState;
- (void)sendContentItemChanges:(id)changes;
- (void)setActiveRequestedDate:(id)date;
- (void)setCanBeNowPlayingPlayer:(BOOL)player;
- (void)setCapabilities:(unint64_t)capabilities;
- (void)setHomeUserIdentifier:(id)identifier;
- (void)setInvalidatingPlaybackQueue:(BOOL)queue;
- (void)setNowPlayingAnimatedArtwork:(id)artwork forFormat:(id)format;
- (void)setNowPlayingArtwork:(id)artwork;
- (void)setNowPlayingArtworkID:(id)d;
- (void)setNowPlayingInfo:(id)info;
- (void)setPictureInPictureEnabled:(BOOL)enabled;
- (void)setPlaybackQueue:(id)queue;
- (void)setPlayerPath:(id)path;
- (void)setSupportedCommands:(id)commands queue:(id)queue completion:(id)completion;
- (void)startCachingContentItemUpdatesForItem:(id)item forPendingRequest:(id)request;
- (void)updatePlaybackQueueWithCachedUpdates:(id)updates forPendingRequest:(id)request;
- (void)updatePlaybackState:(unsigned int)state date:(id)date;
- (void)updatePlayer:(id)player;
@end

@implementation MRNowPlayingPlayerClient

- (NSDate)activeRequestedDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__43;
  v10 = __Block_byref_object_dispose__43;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__MRNowPlayingPlayerClient_activeRequestedDate__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)supportedCommands
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__43;
  v9 = __Block_byref_object_dispose__43;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __45__MRNowPlayingPlayerClient_supportedCommands__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unsigned)playbackState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__MRNowPlayingPlayerClient_playbackState__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __47__MRNowPlayingPlayerClient_homeUserIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 168) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (double)invalidatationTimestamp
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

double __51__MRNowPlayingPlayerClient_invalidatationTimestamp__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 136);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)homeUserIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__43;
  v10 = __Block_byref_object_dispose__43;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__MRNowPlayingPlayerClient_homeUserIdentifiers__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (MRNowPlayingPlayerClient)initWithPlayerPath:(id)path
{
  pathCopy = path;
  v27.receiver = self;
  v27.super_class = MRNowPlayingPlayerClient;
  v6 = [(MRNowPlayingPlayerClient *)&v27 init];
  if (v6)
  {
    if (([pathCopy isResolved] & 1) == 0)
    {
      [(MRNowPlayingPlayerClient *)a2 initWithPlayerPath:v6, pathCopy];
    }

    v7 = [pathCopy copy];
    playerPath = v6->_playerPath;
    v6->_playerPath = v7;

    v9 = objc_opt_class();
    Name = class_getName(v9);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(Name, v11);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("replayQueue", v14);
    replayQueue = v6->_replayQueue;
    v6->_replayQueue = v15;

    v17 = [[MRPlaybackQueueSubscriptionController alloc] initWithPlayerPath:v6->_playerPath];
    subscriptionController = v6->_subscriptionController;
    v6->_subscriptionController = v17;

    v19 = [[MRNowPlayingPlayerClientCallbacks alloc] initWithPlayerPath:v6->_playerPath queue:v6->_serialQueue];
    clientCallbacks = v6->_clientCallbacks;
    v6->_clientCallbacks = v19;

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v6->_invalidatationTimestamp = v21;
    origin = [(MRPlayerPath *)v6->_playerPath origin];
    LODWORD(v11) = [origin isLocallyHosted];

    if (v11)
    {
      objc_initWeak(&location, v6);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __47__MRNowPlayingPlayerClient_initWithPlayerPath___block_invoke;
      v24[3] = &unk_1E76A3880;
      objc_copyWeak(&v25, &location);
      [(MRNowPlayingPlayerClientCallbacks *)v6->_clientCallbacks setPlaybackSessionMigrateRequestCallback:v24];
      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }
  }

  return v6;
}

void __47__MRNowPlayingPlayerClient_initWithPlayerPath___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [(MRNowPlayingPlayerClient *)WeakRetained _handePlaybackSessionMigrateRequest:v12 request:v7 completion:v8];
  }

  else
  {
    Error = MRMediaRemoteCreateError(4);
    (*(v8 + 2))(v8, v7, Error);
  }
}

double __55__MRNowPlayingPlayerClient_setInvalidatationTimestamp___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 136) = result;
  return result;
}

- (BOOL)invalidatingPlaybackQueue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (void)setCanBeNowPlayingPlayer:(BOOL)player
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__MRNowPlayingPlayerClient_setCanBeNowPlayingPlayer___block_invoke;
  v4[3] = &unk_1E769BBE0;
  playerCopy = player;
  v4[4] = self;
  dispatch_sync(serialQueue, v4);
}

uint64_t __53__MRNowPlayingPlayerClient_setCanBeNowPlayingPlayer___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 24))
  {
    v3 = result;
    *(v2 + 24) = v1;
    if (*(result + 40) == 1)
    {
      result = [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      *(*(v3 + 32) + 32) = v4;
    }
  }

  return result;
}

- (void)setInvalidatingPlaybackQueue:(BOOL)queue
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__43;
  v13 = __Block_byref_object_dispose__43;
  v14 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MRNowPlayingPlayerClient_setInvalidatingPlaybackQueue___block_invoke;
  block[3] = &unk_1E76A38A8;
  queueCopy = queue;
  block[4] = self;
  block[5] = &v9;
  dispatch_sync(serialQueue, block);
  if ([v10[5] count])
  {
    v5 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingPlayerClient] Sending enqueued contentItemChanges due to finished PlaybackQueueInvalidation", v6, 2u);
    }

    MRMediaRemotePlaybackQueueDataSourceSendContentItemsChangedForPlayer(v10[5], self);
  }

  _Block_object_dispose(&v9, 8);
}

void __57__MRNowPlayingPlayerClient_setInvalidatingPlaybackQueue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 129))
  {
    *(v2 + 129) = v1;
    if ((*(a1 + 48) & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 160));
      v4 = *(a1 + 32);
      v5 = *(v4 + 160);
      *(v4 + 160) = 0;
    }
  }
}

- (void)setNowPlayingInfo:(id)info
{
  infoCopy = info;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__MRNowPlayingPlayerClient_setNowPlayingInfo___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_sync(serialQueue, v7);
}

uint64_t __46__MRNowPlayingPlayerClient_setNowPlayingInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  v5 = *(*(a1 + 32) + 192);

  return [v5 registerNowPlayingInfoBackedPlaybackQueueDataSourceCallbacks];
}

- (NSDictionary)nowPlayingInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__43;
  v10 = __Block_byref_object_dispose__43;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__MRNowPlayingPlayerClient_nowPlayingInfo__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__MRNowPlayingPlayerClient_nowPlayingInfo__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setNowPlayingArtworkID:(id)d
{
  dCopy = d;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MRNowPlayingPlayerClient_setNowPlayingArtworkID___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(serialQueue, v7);
}

- (NSString)nowPlayingArtworkID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__43;
  v10 = __Block_byref_object_dispose__43;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__MRNowPlayingPlayerClient_nowPlayingArtworkID__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setNowPlayingArtwork:(id)artwork
{
  artworkCopy = artwork;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__MRNowPlayingPlayerClient_setNowPlayingArtwork___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = artworkCopy;
  v6 = artworkCopy;
  dispatch_sync(serialQueue, v7);
}

uint64_t __49__MRNowPlayingPlayerClient_setNowPlayingArtwork___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
  v2 = *(*(a1 + 32) + 192);

  return [v2 registerNowPlayingInfoBackedPlaybackQueueDataSourceCallbacks];
}

- (MRNowPlayingArtwork)nowPlayingArtwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__43;
  v10 = __Block_byref_object_dispose__43;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__MRNowPlayingPlayerClient_nowPlayingArtwork__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)nowPlayingAnimatedArtworkFormats
{
  if (_os_feature_enabled_impl())
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__43;
    v11 = __Block_byref_object_dispose__43;
    v12 = 0;
    serialQueue = self->_serialQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__MRNowPlayingPlayerClient_nowPlayingAnimatedArtworkFormats__block_invoke;
    v6[3] = &unk_1E769A2A0;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(serialQueue, v6);
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

void __60__MRNowPlayingPlayerClient_nowPlayingAnimatedArtworkFormats__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 80) allKeys];
  v2 = [v5 sortedArrayUsingSelector:sel_compare_];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)nowPlayingAnimatedArtworkForFormat:(id)format
{
  formatCopy = format;
  if (_os_feature_enabled_impl())
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__43;
    v15 = __Block_byref_object_dispose__43;
    v16 = 0;
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__MRNowPlayingPlayerClient_nowPlayingAnimatedArtworkForFormat___block_invoke;
    block[3] = &unk_1E769BBB8;
    v10 = &v11;
    block[4] = self;
    v9 = formatCopy;
    dispatch_sync(serialQueue, block);
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __63__MRNowPlayingPlayerClient_nowPlayingAnimatedArtworkForFormat___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setNowPlayingAnimatedArtwork:(id)artwork forFormat:(id)format
{
  artworkCopy = artwork;
  formatCopy = format;
  if (_os_feature_enabled_impl())
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__MRNowPlayingPlayerClient_setNowPlayingAnimatedArtwork_forFormat___block_invoke;
    block[3] = &unk_1E769BA00;
    block[4] = self;
    v10 = formatCopy;
    v11 = artworkCopy;
    dispatch_sync(serialQueue, block);
  }
}

uint64_t __67__MRNowPlayingPlayerClient_setNowPlayingAnimatedArtwork_forFormat___block_invoke(void *a1)
{
  v2 = *(a1[4] + 80);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = a1[4];
    v5 = *(v4 + 80);
    *(v4 + 80) = v3;

    v2 = *(a1[4] + 80);
  }

  [v2 setObject:a1[6] forKeyedSubscript:a1[5]];
  v6 = *(a1[4] + 192);

  return [v6 registerNowPlayingInfoBackedPlaybackQueueDataSourceCallbacks];
}

- (void)updatePlaybackState:(unsigned int)state date:(id)date
{
  dateCopy = date;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MRNowPlayingPlayerClient_updatePlaybackState_date___block_invoke;
  block[3] = &unk_1E769BCF8;
  stateCopy = state;
  block[4] = self;
  v10 = dateCopy;
  v8 = dateCopy;
  dispatch_sync(serialQueue, block);
}

void __53__MRNowPlayingPlayerClient_updatePlaybackState_date___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  if (*(v1 + 88) != v2)
  {
    *(v1 + 88) = v2;
    objc_storeStrong((*(a1 + 32) + 96), *(a1 + 40));
  }
}

- (void)setPlayerPath:(id)path
{
  pathCopy = path;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__MRNowPlayingPlayerClient_setPlayerPath___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = pathCopy;
  v6 = pathCopy;
  dispatch_sync(serialQueue, v7);
}

void __42__MRNowPlayingPlayerClient_setPlayerPath___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 40) player];
  v2 = [v3 copy];
  [*(*(a1 + 32) + 176) setPlayer:v2];
}

- (void)updatePlayer:(id)player
{
  playerCopy = player;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__MRNowPlayingPlayerClient_updatePlayer___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = playerCopy;
  selfCopy = self;
  v6 = playerCopy;
  dispatch_sync(serialQueue, v7);
}

void __41__MRNowPlayingPlayerClient_updatePlayer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) player];
  v4 = [v2 copy];

  v3 = [*(*(a1 + 40) + 176) player];
  [v3 mergeFrom:v4];
}

- (void)setCapabilities:(unint64_t)capabilities
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__MRNowPlayingPlayerClient_setCapabilities___block_invoke;
  v4[3] = &unk_1E769C018;
  v4[4] = self;
  v4[5] = capabilities;
  dispatch_sync(serialQueue, v4);
}

- (unint64_t)capabilities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__MRNowPlayingPlayerClient_capabilities__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setPlaybackQueue:(id)queue
{
  queueCopy = queue;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__MRNowPlayingPlayerClient_setPlaybackQueue___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_sync(serialQueue, v7);
}

- (MRPlaybackQueue)playbackQueue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__43;
  v9 = __Block_byref_object_dispose__43;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __41__MRNowPlayingPlayerClient_playbackQueue__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (MRContentItem)nowPlayingContentItem
{
  playbackQueue = [(MRNowPlayingPlayerClient *)self playbackQueue];
  v3 = [playbackQueue contentItemWithOffset:0];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)isPictureInPictureEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__MRNowPlayingPlayerClient_isPictureInPictureEnabled__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setPictureInPictureEnabled:(BOOL)enabled
{
  v14[1] = *MEMORY[0x1E69E9840];
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__MRNowPlayingPlayerClient_setPictureInPictureEnabled___block_invoke;
  block[3] = &unk_1E769BBE0;
  block[4] = self;
  enabledCopy = enabled;
  dispatch_sync(serialQueue, block);
  playerPath = self->_playerPath;
  v13 = @"kMRNowPlayingPlayerPathUserInfoKey";
  v14[0] = playerPath;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v7 = +[MRMediaRemoteServiceClient sharedServiceClient];
  notificationClient = [v7 notificationClient];
  v9 = MRCreateDecodedUserInfo(v6);
  [notificationClient dispatchNotification:@"kMRMediaRemotePlayerPictureInPictureDidChange" userInfo:v9 object:0];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setActiveRequestedDate:(id)date
{
  dateCopy = date;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MRNowPlayingPlayerClient_setActiveRequestedDate___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_sync(serialQueue, v7);
}

float __75__MRNowPlayingPlayerClient_preProcessChangePlaybackRateCommandWithOptions___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 0.0;
    if (a2 == 1)
    {
      v2 = 2.0;
    }

    if (a2 == 2)
    {
      return 0.5;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDefaultPlaybackRate"];
    v5 = v4;
    if (v4)
    {
      [v4 floatValue];
      v3 = v6;
    }

    else
    {
      v3 = 1.0;
    }
  }

  return v3;
}

id __75__MRNowPlayingPlayerClient_preProcessChangePlaybackRateCommandWithOptions___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) nowPlayingContentItem];
  *&v3 = MRContentItemGetPlaybackRate(v2);
  v4 = [v1 numberWithFloat:v3];

  return v4;
}

id __75__MRNowPlayingPlayerClient_preProcessChangePlaybackRateCommandWithOptions___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = *(*(a1 + 32) + 48);
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = *v11;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v10 + 1) + 8 * i);
        if ([v5 command] == 19)
        {
          v6 = [v5 options];
          v7 = [v6 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedPlaybackRates"];

          v2 = [v7 sortedArrayUsingSelector:sel_compare_];

          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v2;
}

float __75__MRNowPlayingPlayerClient_preProcessChangePlaybackRateCommandWithOptions___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDefaultPlaybackRate"];
  v8 = [v7 intValue];
  if (v8 == 2)
  {
    [v5 floatValue];
    v9 = v17;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [v6 reverseObjectEnumerator];
    v18 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
LABEL_16:
      v21 = 0;
      while (1)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v24 + 1) + 8 * v21) floatValue];
        if (v9 > v16)
        {
          goto LABEL_23;
        }

        if (v19 == ++v21)
        {
          v19 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v19)
          {
            goto LABEL_16;
          }

          break;
        }
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v8 == 1)
  {
    [v5 floatValue];
    v9 = v10;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
LABEL_7:
      v15 = 0;
      while (1)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v28 + 1) + 8 * v15) floatValue];
        if (v9 < v16)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v13)
          {
            goto LABEL_7;
          }

          goto LABEL_24;
        }
      }

LABEL_23:
      v9 = v16;
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  v9 = 0.0;
  if (!v8)
  {
    v9 = (*(*(a1 + 40) + 16))();
  }

LABEL_25:

  v22 = *MEMORY[0x1E69E9840];
  return v9;
}

- (unsigned)resolveCommand:(unsigned int)command
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  commandCopy = command;
  if (MRMediaRemoteCommandIsContextual(command))
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__MRNowPlayingPlayerClient_resolveCommand___block_invoke;
    block[3] = &unk_1E76A3970;
    commandCopy2 = command;
    block[4] = self;
    block[5] = &v10;
    dispatch_sync(serialQueue, block);
  }

  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void __43__MRNowPlayingPlayerClient_resolveCommand___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) nowPlayingInfo];
  v9 = v2;
  if (v2)
  {
    v3 = [v2 objectForKey:@"kMRMediaRemoteNowPlayingInfoTotalChapterCount"];
    v4 = [v3 intValue] > 1;

    v2 = v9;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 48);
  if (v5 == 110)
  {
    v6 = 5;
    if (v4)
    {
      v7 = MRMediaRemoteSupportsCommand(*(*(a1 + 32) + 48), 110) == 0;
      v2 = v9;
      v8 = 101;
LABEL_10:
      if (!v7)
      {
        v6 = v8;
      }
    }
  }

  else
  {
    if (v5 != 109)
    {
      goto LABEL_13;
    }

    v6 = 4;
    if (v4)
    {
      v7 = MRMediaRemoteSupportsCommand(*(*(a1 + 32) + 48), 109) == 0;
      v2 = v9;
      v8 = 100;
      goto LABEL_10;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
LABEL_13:
}

- (id)resolveCommandOptions:(unsigned int)options options:(id)a4
{
  v6 = [a4 mutableCopy];
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MRNowPlayingPlayerClient_resolveCommandOptions_options___block_invoke;
  block[3] = &unk_1E769BCF8;
  optionsCopy = options;
  block[4] = self;
  v8 = v6;
  v13 = v8;
  dispatch_sync(serialQueue, block);
  v9 = v13;
  v10 = v8;

  return v8;
}

void __58__MRNowPlayingPlayerClient_resolveCommandOptions_options___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 19)
  {
    __58__MRNowPlayingPlayerClient_resolveCommandOptions_options___block_invoke_cold_1(a1);
  }

  [*(a1 + 40) setObject:0 forKeyedSubscript:@"kMRMediaRemoteOptionSourceID"];
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;
}

- (BOOL)hasReceivedCommandRecently
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__MRNowPlayingPlayerClient_hasReceivedCommandRecently__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__54__MRNowPlayingPlayerClient_hasReceivedCommandRecently__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 112);
  if (result)
  {
    result = [result timeIntervalSinceNow];
    v4 = fabs(v3) < 5.0;
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

- (void)setHomeUserIdentifier:(id)identifier
{
  identifierCopy = identifier;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__MRNowPlayingPlayerClient_setHomeUserIdentifier___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(serialQueue, v7);
}

void __50__MRNowPlayingPlayerClient_setHomeUserIdentifier___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{*(a1 + 40), 0}];
  v3 = *(a1 + 32);
  v4 = *(v3 + 168);
  *(v3 + 168) = v2;
}

- (void)appendHomeUserIdentifier:(id)identifier
{
  identifierCopy = identifier;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__MRNowPlayingPlayerClient_appendHomeUserIdentifier___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(serialQueue, v7);
}

uint64_t __53__MRNowPlayingPlayerClient_appendHomeUserIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 168);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 168);
    *(v4 + 168) = v3;

    v2 = *(*(a1 + 32) + 168);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)clearHomeUserIdentifiers
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MRNowPlayingPlayerClient_clearHomeUserIdentifiers__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

void __52__MRNowPlayingPlayerClient_clearHomeUserIdentifiers__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 168);
  *(v1 + 168) = 0;
}

- (void)restoreNowPlayingClientState
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MRNowPlayingPlayerClient_restoreNowPlayingClientState__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_sync(serialQueue, block);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__MRNowPlayingPlayerClient_restoreNowPlayingClientState__block_invoke_2;
  v4[3] = &unk_1E76A3998;
  v4[4] = self;
  [(MRNowPlayingPlayerClient *)self flushPendingPlaybackSessionMigrateEvents:v4];
}

void __56__MRNowPlayingPlayerClient_restoreNowPlayingClientState__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) == 1)
  {
    v3 = MRGetSharedService();
    MRMediaRemoteServiceSetCanBeNowPlayingAppForPlayer(v3, 1, *(*(a1 + 32) + 176), *(*(a1 + 32) + 32));
    v2 = *(a1 + 32);
  }

  if (*(v2 + 104))
  {
    v4 = MRGetSharedService();
    MRMediaRemoteServiceSetNowPlayingPlaybackQueueCapabilities(v4, *(*(a1 + 32) + 176), *(*(a1 + 32) + 104), 0, 0);
    v2 = *(a1 + 32);
  }

  if (*(v2 + 40))
  {
    v5 = MRGetSharedService();
    MRMediaRemoteServiceSetNowPlayingPlaybackQueue(v5, *(*(a1 + 32) + 176), *(*(a1 + 32) + 40), 0, 0);
    v2 = *(a1 + 32);
  }

  if (*(v2 + 48))
  {
    v6 = MRGetSharedService();
    MRMediaRemoteServiceSetSupportedCommands(v6, *(*(a1 + 32) + 48), *(*(a1 + 32) + 176), 0, 0);
    v2 = *(a1 + 32);
  }

  if (*(v2 + 88))
  {
    v7 = MRGetSharedService();
    v8 = *(a1 + 32);
    v9 = *(v8 + 176);
    v10 = *(v8 + 88);
    [*(v8 + 96) timeIntervalSinceReferenceDate];
    MRMediaRemoteServiceSetPlaybackState(v7, v9, v10, 0, 0, v11);
    v2 = *(a1 + 32);
  }

  if (*(v2 + 128) == 1)
  {
    v12 = MRGetSharedService();
    MRMediaRemoteServiceSetPictureInPictureEnabledForPlayer(v12, *(*(a1 + 32) + 176), *(*(a1 + 32) + 128), 0, 0);
    v2 = *(a1 + 32);
  }

  v14 = [*(v2 + 176) player];
  if ([v14 hasAuxiliaryProperties])
  {
    v13 = MRGetSharedService();
    MRMediaRemoteServiceUpdatePlayerProperties(v13, *(*(a1 + 32) + 176), 0, 0);
  }
}

void __56__MRNowPlayingPlayerClient_restoreNowPlayingClientState__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 192);
  v3 = a2;
  v5 = [v2 playbackSessionMigrateFinalizeCallback];
  v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:1 format:@"mediaremoted exited in the middle of a migration attempt"];
  v5[2](v5, v3, 0, v4, &__block_literal_global_92);
}

- (void)addPendingRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    [MRNowPlayingPlayerClient addPendingRequest:];
  }

  requestIdentifier = [requestCopy requestIdentifier];
  if (!requestIdentifier)
  {
    [MRNowPlayingPlayerClient addPendingRequest:];
  }

  serialQueue = self->_serialQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__MRNowPlayingPlayerClient_addPendingRequest___block_invoke;
  v8[3] = &unk_1E769A4A0;
  v8[4] = self;
  v9 = requestIdentifier;
  v7 = requestIdentifier;
  dispatch_sync(serialQueue, v8);
}

void __46__MRNowPlayingPlayerClient_addPendingRequest___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 152))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 152);
    *(v3 + 152) = v2;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [*(*(a1 + 32) + 152) setValue:v5 forKey:*(a1 + 40)];
}

- (void)startCachingContentItemUpdatesForItem:(id)item forPendingRequest:(id)request
{
  itemCopy = item;
  requestCopy = request;
  if (!requestCopy)
  {
    [MRNowPlayingPlayerClient startCachingContentItemUpdatesForItem:forPendingRequest:];
  }

  requestIdentifier = [requestCopy requestIdentifier];
  if (!requestIdentifier)
  {
    [MRNowPlayingPlayerClient startCachingContentItemUpdatesForItem:forPendingRequest:];
  }

  serialQueue = self->_serialQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__MRNowPlayingPlayerClient_startCachingContentItemUpdatesForItem_forPendingRequest___block_invoke;
  v13[3] = &unk_1E769FC08;
  v13[4] = self;
  v14 = requestIdentifier;
  v15 = itemCopy;
  v16 = requestCopy;
  v10 = requestCopy;
  v11 = itemCopy;
  v12 = requestIdentifier;
  dispatch_sync(serialQueue, v13);
}

void __84__MRNowPlayingPlayerClient_startCachingContentItemUpdatesForItem_forPendingRequest___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 152) objectForKey:*(a1 + 40)];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = v18 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v16 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v15 + 1) + 8 * v6);
      v8 = *(a1 + 48);
      v9 = [v7 item];
      LOBYTE(v8) = MRContentItemIdentifierIsEqual(v8, v9);

      if (v8)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v7;

    if (!v10)
    {
      goto LABEL_12;
    }

    v11 = MRContentItemCreateFromRequest(*(a1 + 48), *(a1 + 56));
    v12 = [(MRContentItemRequest *)v10 item];
    MRContentItemMerge(v12, v11);

    v13 = [(MRContentItemRequest *)v10 request];
    [v13 mergeFrom:*(a1 + 56)];
  }

  else
  {
LABEL_9:

LABEL_12:
    v10 = [[MRContentItemRequest alloc] initWithItem:*(a1 + 48) request:*(a1 + 56)];
    [v2 addObject:v10];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __79__MRNowPlayingPlayerClient__onQueue_cacheContentItemChangesForPendingRequests___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v21 = *v28;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v8 = v22;
        v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v24;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v24 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v23 + 1) + 8 * j);
              v14 = [v13 item];
              IsEqual = MRContentItemIdentifierIsEqual(v7, v14);

              if (IsEqual)
              {
                v16 = [v13 request];
                v17 = MRContentItemCreateFromRequest(v7, v16);

                v18 = [v13 item];
                MRContentItemMerge(v18, v17);

                goto LABEL_16;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v5);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)clearCachedContentItemArtworkForItems:(id)items
{
  itemsCopy = items;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__MRNowPlayingPlayerClient_clearCachedContentItemArtworkForItems___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = itemsCopy;
  v6 = itemsCopy;
  dispatch_sync(serialQueue, v7);
}

void __66__MRNowPlayingPlayerClient_clearCachedContentItemArtworkForItems___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 152);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __66__MRNowPlayingPlayerClient_clearCachedContentItemArtworkForItems___block_invoke_2;
  v2[3] = &unk_1E76A39C0;
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void __66__MRNowPlayingPlayerClient_clearCachedContentItemArtworkForItems___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v19 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v8 = v20;
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v22;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v21 + 1) + 8 * j);
              v14 = [v13 item];
              IsEqual = MRContentItemIdentifierIsEqual(v7, v14);

              if (IsEqual)
              {
                v16 = [v13 item];
                MRContentItemSetArtworkData(v16, 0);

                goto LABEL_16;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)updatePlaybackQueueWithCachedUpdates:(id)updates forPendingRequest:(id)request
{
  updatesCopy = updates;
  requestCopy = request;
  if (!requestCopy)
  {
    [MRNowPlayingPlayerClient updatePlaybackQueueWithCachedUpdates:forPendingRequest:];
  }

  requestIdentifier = [requestCopy requestIdentifier];
  if (!requestIdentifier)
  {
    [MRNowPlayingPlayerClient updatePlaybackQueueWithCachedUpdates:forPendingRequest:];
  }

  serialQueue = self->_serialQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__MRNowPlayingPlayerClient_updatePlaybackQueueWithCachedUpdates_forPendingRequest___block_invoke;
  v13[3] = &unk_1E769FC08;
  v13[4] = self;
  v14 = requestIdentifier;
  v15 = updatesCopy;
  v16 = requestCopy;
  v10 = requestCopy;
  v11 = updatesCopy;
  v12 = requestIdentifier;
  dispatch_sync(serialQueue, v13);
}

void __83__MRNowPlayingPlayerClient_updatePlaybackQueueWithCachedUpdates_forPendingRequest___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v20 = [*(*(a1 + 32) + 152) objectForKey:*(a1 + 40)];
  if (!v20)
  {
    v2 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __83__MRNowPlayingPlayerClient_updatePlaybackQueueWithCachedUpdates_forPendingRequest___block_invoke_cold_1();
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [*(a1 + 48) contentItems];
  v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v19 = *v28;
    do
    {
      v3 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v3;
        v4 = *(*(&v27 + 1) + 8 * v3);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v5 = v20;
        v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v24;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v24 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v23 + 1) + 8 * i);
              v11 = [v4 identifier];
              v12 = [v10 item];
              v13 = [v12 identifier];
              v14 = [v11 isEqualToString:v13];

              if (v14)
              {
                v15 = [v10 item];
                MRContentItemMerge(v4, v15);
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v7);
        }

        v3 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  [*(*(v17 + 32) + 152) removeObjectForKey:*(v17 + 40)];
  v16 = *MEMORY[0x1E69E9840];
}

- (void)addPendingPlaybackSessionMigrateEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    [MRNowPlayingPlayerClient addPendingPlaybackSessionMigrateEvent:];
  }

  requestIdentifier = [eventCopy requestIdentifier];

  if (!requestIdentifier)
  {
    [MRNowPlayingPlayerClient addPendingPlaybackSessionMigrateEvent:];
  }

  serialQueue = self->_serialQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__MRNowPlayingPlayerClient_addPendingPlaybackSessionMigrateEvent___block_invoke;
  v8[3] = &unk_1E769A4A0;
  v8[4] = self;
  v9 = eventCopy;
  v7 = eventCopy;
  dispatch_sync(serialQueue, v8);
}

void __66__MRNowPlayingPlayerClient_addPendingPlaybackSessionMigrateEvent___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 144);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 144);
    *(v4 + 144) = v3;

    v2 = *(*(a1 + 32) + 144);
  }

  v6 = *(a1 + 40);
  v7 = [v6 requestIdentifier];
  [v2 setObject:v6 forKeyedSubscript:v7];
}

- (BOOL)removePendingPlaybackSessionMigrateEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    [MRNowPlayingPlayerClient removePendingPlaybackSessionMigrateEvent:];
  }

  requestIdentifier = [eventCopy requestIdentifier];

  if (!requestIdentifier)
  {
    [MRNowPlayingPlayerClient removePendingPlaybackSessionMigrateEvent:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__MRNowPlayingPlayerClient_removePendingPlaybackSessionMigrateEvent___block_invoke;
  block[3] = &unk_1E769D1B8;
  block[4] = self;
  v11 = eventCopy;
  v12 = &v13;
  v7 = eventCopy;
  dispatch_sync(serialQueue, block);
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

void __69__MRNowPlayingPlayerClient_removePendingPlaybackSessionMigrateEvent___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 144);
  v3 = [*(a1 + 40) requestIdentifier];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 144);
    v6 = [*(a1 + 40) requestIdentifier];
    [v5 setObject:0 forKeyedSubscript:v6];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)flushPendingPlaybackSessionMigrateEvents:(id)events
{
  v23 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  if (eventsCopy)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__43;
    v20 = __Block_byref_object_dispose__43;
    v21 = 0;
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__MRNowPlayingPlayerClient_flushPendingPlaybackSessionMigrateEvents___block_invoke;
    block[3] = &unk_1E769A2A0;
    block[4] = self;
    block[5] = &v16;
    dispatch_sync(serialQueue, block);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v17[5];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          eventsCopy[2](eventsCopy, *(*(&v11 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
      }

      while (v7);
    }

    _Block_object_dispose(&v16, 8);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __69__MRNowPlayingPlayerClient_flushPendingPlaybackSessionMigrateEvents___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 144) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 144);

  return [v5 removeAllObjects];
}

- (void)invalidatePlaybackQueue
{
  kdebug_trace();
  [(MRNowPlayingPlayerClient *)self setInvalidatingPlaybackQueue:1];
  v3 = +[MRPlaybackQueueRequest defaultPlaybackQueueRequest];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v6 = [@"PlaybackQueueInvalidation-" stringByAppendingString:uUIDString];
  [v3 setRequestIdentifier:v6];

  playerPath = self->_playerPath;
  v8 = +[MRMediaRemoteServiceClient sharedServiceClient];
  playbackQueueDispatchQueue = [v8 playbackQueueDispatchQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__MRNowPlayingPlayerClient_invalidatePlaybackQueue__block_invoke;
  v10[3] = &unk_1E769C6B8;
  v10[4] = self;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync(v3, playerPath, playbackQueueDispatchQueue, v10);
}

uint64_t __51__MRNowPlayingPlayerClient_invalidatePlaybackQueue__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) invalidatePlaybackQueueWithPlaybackQueue:a2];
  v3 = *(a1 + 32);

  return [v3 setInvalidatingPlaybackQueue:0];
}

- (void)invalidatePlaybackQueueWithPlaybackQueue:(id)queue
{
  queueCopy = queue;
  playerPath = [(MRNowPlayingPlayerClient *)self playerPath];
  MRMediaRemoteSetPlaybackQueue(playerPath, queueCopy, 0, 0);
}

- (void)sendContentItemChanges:(id)changes
{
  v22 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__43;
  v19 = __Block_byref_object_dispose__43;
  v20 = [MRContentItem mergeContentItems:changesCopy];
  v5 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    playerPath = self->_playerPath;
    v7 = MRContentItemsCopyMinimalReadableDescription(v16[5], 0);
    [(MRNowPlayingPlayerClient *)playerPath sendContentItemChanges:v7, buf, v5];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MRNowPlayingPlayerClient_sendContentItemChanges___block_invoke;
  block[3] = &unk_1E769BFF0;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v11;
  dispatch_sync(serialQueue, block);
  if (*(v12 + 24) == 1)
  {
    MRMediaRemotePlaybackQueueDataSourceSendContentItemsChangedForPlayer(v16[5], self);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setSupportedCommands:(id)commands queue:(id)queue completion:(id)completion
{
  v67 = *MEMORY[0x1E69E9840];
  commandsCopy = commands;
  queueCopy = queue;
  completionCopy = completion;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__43;
  v63 = __Block_byref_object_dispose__43;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__43;
  v57 = __Block_byref_object_dispose__43;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__43;
  v51 = __Block_byref_object_dispose__43;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MRNowPlayingPlayerClient_setSupportedCommands_queue_completion___block_invoke;
  block[3] = &unk_1E76A39E8;
  v12 = commandsCopy;
  v37 = v12;
  selfCopy = self;
  v39 = &v59;
  v40 = &v53;
  v41 = &v47;
  v42 = &v43;
  dispatch_sync(serialQueue, block);
  playerPath = self->_playerPath;
  p_playerPath = &self->_playerPath;
  if ([(MRPlayerPath *)playerPath isLocal])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    MRAddPlayerPathToUserInfo(v15, *p_playerPath);
    v16 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [MRNowPlayingPlayerClient setSupportedCommands:v16 queue:? completion:?];
    }

    v17 = +[MRMediaRemoteServiceClient sharedServiceClient];
    notificationClient = [v17 notificationClient];
    v19 = MRCreateDecodedUserInfo(v15);
    [notificationClient dispatchNotification:@"kMRMediaRemotePlayerSupportedCommandsDidChangeNotification" userInfo:v19 object:0];
  }

  if (*(v44 + 24) == 1)
  {
    v20 = MRGetSharedService();
    v21 = *p_playerPath;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __66__MRNowPlayingPlayerClient_setSupportedCommands_queue_completion___block_invoke_60;
    v34[3] = &unk_1E769AD30;
    v35 = completionCopy;
    MRMediaRemoteServiceSetSupportedCommands(v20, v12, v21, queueCopy, v34);
    if ([v60[5] count])
    {
      v22 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        allKeys = [v60[5] allKeys];
        v24 = [allKeys msv_map:&__block_literal_global_64];
        *buf = 138412290;
        v66 = v24;
        _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingPlayerClient] Added SupportedCommands: %@", buf, 0xCu);
      }
    }

    if ([v54[5] count])
    {
      v25 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        allKeys2 = [v54[5] allKeys];
        v27 = [allKeys2 msv_map:&__block_literal_global_67_1];
        *buf = 138412290;
        v66 = v27;
        _os_log_impl(&dword_1A2860000, v25, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingPlayerClient] Removed SupportedCommands: %@", buf, 0xCu);
      }
    }

    if ([v48[5] count])
    {
      v28 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        allKeys3 = [v48[5] allKeys];
        v30 = [allKeys3 msv_map:&__block_literal_global_70_0];
        *buf = 138412290;
        v66 = v30;
        _os_log_impl(&dword_1A2860000, v28, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingPlayerClient] Changed SupportedCommands: %@", buf, 0xCu);
      }
    }

    v31 = v35;
  }

  else
  {
    v31 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *p_playerPath;
      *buf = 138543362;
      v66 = v32;
      _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingPlayerClient] Setting identical supportedCommands for %{public}@. Skipping update", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

  v33 = *MEMORY[0x1E69E9840];
}

void __66__MRNowPlayingPlayerClient_setSupportedCommands_queue_completion___block_invoke(uint64_t a1)
{
  if ((MRSupportedCommandsIsEqual(*(a1 + 32), *(*(a1 + 40) + 48)) & 1) == 0)
  {
    if (MSVDeviceOSIsInternalInstall())
    {
      v2 = *(a1 + 32);
      v3 = *(*(a1 + 40) + 48);
      v4 = *(*(a1 + 48) + 8);
      v5 = *(v4 + 40);
      v6 = *(*(a1 + 56) + 8);
      v12 = *(v6 + 40);
      obj = v5;
      v7 = *(*(a1 + 64) + 8);
      v11 = *(v7 + 40);
      MRSupportedCommandsCalculateDeltas(v3, v2, &obj, &v12, &v11);
      objc_storeStrong((v4 + 40), obj);
      objc_storeStrong((v6 + 40), v12);
      objc_storeStrong((v7 + 40), v11);
    }

    v8 = [*(a1 + 32) copy];
    v9 = *(a1 + 40);
    v10 = *(v9 + 48);
    *(v9 + 48) = v8;

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }
}

uint64_t __66__MRNowPlayingPlayerClient_setSupportedCommands_queue_completion___block_invoke_60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id __66__MRNowPlayingPlayerClient_setSupportedCommands_queue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MRMediaRemoteCopyCommandDescription([a2 intValue]);

  return v2;
}

id __66__MRNowPlayingPlayerClient_setSupportedCommands_queue_completion___block_invoke_65(uint64_t a1, void *a2)
{
  v2 = MRMediaRemoteCopyCommandDescription([a2 intValue]);

  return v2;
}

id __66__MRNowPlayingPlayerClient_setSupportedCommands_queue_completion___block_invoke_68(uint64_t a1, void *a2)
{
  v2 = MRMediaRemoteCopyCommandDescription([a2 intValue]);

  return v2;
}

void __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[4])
  {
    if (!MRMediaRemoteCommandInfoSupportedCommandIsEnabled(a1[5], 133))
    {
      v29 = objc_alloc(MEMORY[0x1E696ABC0]);
      v30 = MRMediaRemoteCopyCommandDescription(133);
      v31 = [a1[6] playerPath];
      v6 = [v29 initWithMRError:3 format:{@"%@ not supported and/or enabled for %@", v30, v31}];

      (v4)[2](v4, v6);
LABEL_14:

      goto LABEL_15;
    }

    v5 = [a1[7] startEvent:@"SetPlaybackSession" role:4];
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [a1[7] requestID];
    v9 = [v7 initWithFormat:@"migrationPlaybackSession<%@>", v8];
    [v6 setObject:v9 forKeyedSubscript:@"kMRMediaRemoteOptionRemoteControlInterfaceIdentifier"];

    v10 = [a1[4] data];
    [v6 setObject:v10 forKeyedSubscript:@"kMRMediaRemoteOptionPlaybackSessionData"];

    v11 = [a1[7] contentItem];
    v12 = [v11 identifier];
    if (v12)
    {
      v13 = v12;
      v14 = [a1[7] contentItem];
      v15 = [v14 metadata];
      v16 = [v15 isAlwaysLive];

      if (v16)
      {
LABEL_7:
        [a1[7] playbackPosition];
        if (v18 > 0.0)
        {
          v19 = MEMORY[0x1E696AD98];
          [a1[7] playbackPosition];
          v20 = [v19 numberWithDouble:?];
          [v6 setObject:v20 forKeyedSubscript:@"kMRMediaRemoteOptionPlaybackPosition"];
        }

        [a1[7] playbackRate];
        if (v21 > 0.0)
        {
          v22 = MEMORY[0x1E696AD98];
          [a1[7] playbackRate];
          v23 = [v22 numberWithDouble:?];
          [v6 setObject:v23 forKeyedSubscript:@"kMRMediaRemoteOptionPlaybackRate"];
        }

        v24 = MSVNanoIDCreateTaggedPointer();
        [v6 setObject:v24 forKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
        [a1[7] addEventInput:v24 withKey:@"commandID" toEventID:v5];
        v25 = [a1[7] requestID];
        [v6 setObject:v25 forKeyedSubscript:@"kMRMediaRemoteOptionContextID"];

        v26 = a1[6];
        v27 = v26[22];
        v28 = v26[1];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_2;
        v32[3] = &unk_1E76A3A30;
        v33 = a1[7];
        v35 = v5;
        v34 = v4;
        MRMediaRemoteSendCommandToPlayerWithResult(133, v6, v27, 0, v28, v32);

        goto LABEL_14;
      }

      v11 = [a1[7] contentItem];
      v17 = [v11 identifier];
      [v6 setObject:v17 forKeyedSubscript:@"kMRMediaRemoteOptionContentItemID"];
    }

    goto LABEL_7;
  }

  (*(v3 + 2))(v3, 0);
LABEL_15:
}

void __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 error];
  v4 = [v3 resultStatuses];

  v5 = [v4 firstObject];
  [*(a1 + 32) setSetPlaybackSessionCommandStatus:v5];

  v6 = [*(a1 + 32) setPlaybackSessionCommandStatus];
  LODWORD(v4) = [v6 statusCode];

  if (v4)
  {
    v7 = @"Failed";
  }

  else
  {
    v7 = @"Success";
  }

  [*(a1 + 32) addEventOutput:v7 withKey:@"status" toEventID:*(a1 + 48)];
  [*(a1 + 32) endEventWithID:*(a1 + 48) error:v8];
  (*(*(a1 + 40) + 16))();
}

void __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_3(id *a1, void *a2)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1[4] contentItem];

  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [a1[4] contentItem];
  v6 = [v5 metadata];
  v7 = [v6 isAlwaysLive];

  if (v7 || ([a1[4] contentItem], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1[5], "nowPlayingContentItem"), v9 = objc_claimAutoreleasedReturnValue(), IsEqual = MRContentItemIdentifierIsEqual(v8, v9), v9, v8, IsEqual) || !MRMediaRemoteCommandInfoSupportedCommandIsEnabled(a1[6], 131))
  {
LABEL_6:
    v3[2](v3, 0);
  }

  else
  {
    v11 = [a1[4] startEvent:@"PlayItemInQueue" role:3];
    v12 = [MRPlaybackQueueRequest alloc];
    v13 = [a1[4] contentItem];
    v14 = [v13 identifier];
    v27[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v16 = [(MRPlaybackQueueRequest *)v12 initWithIdentifiers:v15];

    v17 = a1[5];
    v18 = v17[22];
    v19 = v17[1];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_4;
    v22[3] = &unk_1E76A3A80;
    v23 = a1[4];
    v26 = v11;
    v20 = v3;
    v24 = a1[5];
    v25 = v20;
    MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync(v16, v18, v19, v22);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_5;
  v25[3] = &unk_1E769D978;
  v26 = *(a1 + 32);
  v28 = *(a1 + 56);
  v27 = *(a1 + 48);
  v4 = a2;
  v5 = MEMORY[0x1A58E3570](v25);
  v6 = [*(a1 + 32) contentItem];
  v7 = [v6 identifier];
  v8 = [v4 contentItemForIdentifier:v7];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = [*(a1 + 32) requestID];
    v12 = [v10 initWithFormat:@"migrationPlaybackSession<%@>", v11];
    [v9 setObject:v12 forKeyedSubscript:@"kMRMediaRemoteOptionRemoteControlInterfaceIdentifier"];

    v13 = [*(a1 + 32) contentItem];
    v14 = [v13 identifier];
    [v9 setObject:v14 forKeyedSubscript:@"kMRMediaRemoteOptionContentItemID"];

    v15 = [*(a1 + 32) requestID];
    [v9 setObject:v15 forKeyedSubscript:@"kMRMediaRemoteOptionContextID"];

    v16 = *(a1 + 40);
    v17 = *(v16 + 176);
    v18 = *(v16 + 8);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_6;
    v23[3] = &unk_1E769F1D0;
    v24 = v5;
    MRMediaRemoteSendCommandToPlayer(131, v9, v17, 0, v18, v23);
    ErrorWithDescription = v24;
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    v21 = [*(a1 + 32) contentItem];
    v22 = MRContentItemCopyMinimalReadableDescription(v21);
    v9 = [v20 initWithFormat:@"ContentItemID %@ was not found in the playbackQueue for %@", v22, *(*(a1 + 40) + 176)];

    ErrorWithDescription = MRMediaRemoteCreateErrorWithDescription(2, v9);
    (v5)[2](v5, ErrorWithDescription);
  }
}

void __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 endEventWithID:v4 error:v5];
  (*(*(a1 + 40) + 16))();
}

void __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MRMediaRemoteErrorFromCommandStatuses(a2, a3);
  (*(*(a1 + 32) + 16))();
}

void __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) playbackPosition];
  if (v4 == 0.0 || !MRMediaRemoteCommandInfoSupportedCommandIsEnabled(*(a1 + 40), 24))
  {
    v3[2](v3, 0);
  }

  else
  {
    v5 = [*(a1 + 32) startEvent:@"Seek" role:3];
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = MEMORY[0x1E696AD98];
    [*(a1 + 32) playbackPosition];
    v8 = [v7 numberWithDouble:?];
    [v6 setObject:v8 forKeyedSubscript:@"kMRMediaRemoteOptionPlaybackPosition"];

    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = [*(a1 + 32) requestID];
    v11 = MRMediaRemotePlaybackSessionMigratePlayerOptionsCopyDescription(16);
    v12 = [v9 initWithFormat:@"migrationPlaybackSession<%@> for option %@", v10, v11];
    [v6 setObject:v12 forKeyedSubscript:@"kMRMediaRemoteOptionRemoteControlInterfaceIdentifier"];

    v13 = [*(a1 + 32) requestID];
    [v6 setObject:v13 forKeyedSubscript:@"kMRMediaRemoteOptionContextID"];

    v14 = *(a1 + 48);
    v15 = *(v14 + 176);
    v16 = *(v14 + 8);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_8;
    v17[3] = &unk_1E769DB80;
    v18 = *(a1 + 32);
    v20 = v5;
    v19 = v3;
    MRMediaRemoteSendCommandToPlayer(24, v6, v15, 0, v16, v17);
  }
}

void __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MRMediaRemoteErrorFromCommandStatuses(a2, a3);
  [*(a1 + 32) endEventWithID:*(a1 + 48) error:v4];
  (*(*(a1 + 40) + 16))();
}

void __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) playbackRate];
  if (v4 == 0.0 || ([*(a1 + 32) playbackRate], v5 == 1.0) || !MRMediaRemoteCommandInfoSupportedCommandIsEnabled(*(a1 + 40), 19))
  {
    v3[2](v3, 0);
  }

  else
  {
    v6 = [*(a1 + 32) startEvent:@"SetRate" role:3];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = MEMORY[0x1E696AD98];
    [*(a1 + 32) playbackRate];
    v9 = [v8 numberWithDouble:?];
    [v7 setObject:v9 forKeyedSubscript:@"kMRMediaRemoteOptionPlaybackRate"];

    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = [*(a1 + 32) requestID];
    v12 = MRMediaRemotePlaybackSessionMigratePlayerOptionsCopyDescription(32);
    v13 = [v10 initWithFormat:@"migrationPlaybackSession<%@> for option %@", v11, v12];
    [v7 setObject:v13 forKeyedSubscript:@"kMRMediaRemoteOptionRemoteControlInterfaceIdentifier"];

    v14 = [*(a1 + 32) requestID];
    [v7 setObject:v14 forKeyedSubscript:@"kMRMediaRemoteOptionContextID"];

    v15 = *(a1 + 48);
    v16 = *(v15 + 176);
    v17 = *(v15 + 8);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_10;
    v18[3] = &unk_1E769DB80;
    v19 = *(a1 + 32);
    v21 = v6;
    v20 = v3;
    MRMediaRemoteSendCommandToPlayer(19, v7, v16, 0, v17, v18);
  }
}

void __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MRMediaRemoteErrorFromCommandStatuses(a2, a3);
  [*(a1 + 32) endEventWithID:*(a1 + 48) error:v4];
  (*(*(a1 + 40) + 16))();
}

void __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) allowFadeTransition])
  {
    v4 = [*(a1 + 32) startEvent:@"FadeIn" role:3];
    v5 = [[MRNowPlayingRequest alloc] initWithPlayerPath:*(*(a1 + 40) + 176)];
    v6 = *(*(a1 + 40) + 8);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_12;
    v7[3] = &unk_1E769D978;
    v8 = *(a1 + 32);
    v10 = v4;
    v9 = v3;
    [(MRNowPlayingRequest *)v5 triggerAudioFadeInWithReplyQueue:v6 completion:v7];
  }

  else
  {
    (*(v3 + 2))(v3, 0);
  }
}

void __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_12_cold_1(v3, v4);
    }
  }

  [*(a1 + 32) endEventWithID:*(a1 + 48) error:v3];
  (*(*(a1 + 40) + 16))();
}

void __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_119(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) playbackState] == 1 && MRMediaRemoteCommandInfoSupportedCommandIsEnabled(*(a1 + 40), 0))
  {
    v4 = [*(a1 + 32) startEvent:@"Play" role:3];
    if (([*(a1 + 32) playerOptions] & 4) != 0)
    {
      v5 = 4;
    }

    else
    {
      v5 = 2;
    }

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [*(a1 + 32) requestID];
    v9 = MRMediaRemotePlaybackSessionMigratePlayerOptionsCopyDescription(v5);
    v10 = [v7 initWithFormat:@"migrationPlaybackSession<%@> for option %@", v8, v9];
    [v6 setObject:v10 forKeyedSubscript:@"kMRMediaRemoteOptionRemoteControlInterfaceIdentifier"];

    v11 = [*(a1 + 32) requestID];
    [v6 setObject:v11 forKeyedSubscript:@"kMRMediaRemoteOptionContextID"];

    v12 = *(a1 + 48);
    v13 = *(v12 + 176);
    v14 = *(v12 + 8);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_2_123;
    v15[3] = &unk_1E769DB80;
    v16 = *(a1 + 32);
    v18 = v4;
    v17 = v3;
    MRMediaRemoteSendCommandToPlayer(0, v6, v13, 0, v14, v15);
  }

  else
  {
    (*(v3 + 2))(v3, 0);
  }
}

void __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_2_123(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MRMediaRemoteErrorFromCommandStatuses(a2, a3);
  [*(a1 + 32) endEventWithID:*(a1 + 48) error:v4];
  (*(*(a1 + 40) + 16))();
}

void __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_3_124(uint64_t a1, void *a2)
{
  v3 = a2;
  v21 = [*(a1 + 32) startEvent:@"ResetOutputContext" role:3];
  v4 = [MRRequestDetails alloc];
  v5 = [*(a1 + 32) requestID];
  v6 = [(MRRequestDetails *)v4 initWithInitiator:@"RoutePicker" requestID:v5 reason:@"resetOutputContext"];

  v7 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:v6 type:3 outputDeviceUIDs:0];
  [(MRGroupTopologyModificationRequest *)v7 setShouldClearPredictedRoutes:1];
  v8 = [*(a1 + 40) playerPath];
  v9 = [v8 origin];
  v10 = [MRDeviceInfoRequest cachedDeviceInfoForOrigin:v9];

  v11 = MRCreateXPCMessage(0x300000000000028uLL);
  v12 = [(MRGroupTopologyModificationRequest *)v7 data];
  MRAddDataToXPCMessage(v11, v12, "MRXPC_CONTEXT_MODIFICATION_DATA_KEY");

  v13 = [v10 routingContextID];
  MRAddStringToXPCMessage(v11, v13, "MRXPC_ROUTING_CONTEXT_UID_KEY");

  v14 = [*(a1 + 32) requestID];
  MRAddStringToXPCMessage(v11, v14, "MRXPC_MESSAGE_CUSTOM_ID_KEY");

  v15 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v16 = [v15 service];
  v17 = [v16 mrXPCConnection];
  v18 = *(*(a1 + 40) + 8);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_4_137;
  v22[3] = &unk_1E76A3AD0;
  v19 = *(a1 + 32);
  v25 = v21;
  v23 = v19;
  v24 = v3;
  v20 = v3;
  [v17 sendMessage:v11 queue:v18 reply:v22];
}

uint64_t __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_4_137(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) endEventWithID:*(a1 + 48) error:a3];
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)description
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__43;
  v9 = __Block_byref_object_dispose__43;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __39__MRNowPlayingPlayerClient_description__block_invoke(uint64_t a1)
{
  v6.receiver = *(a1 + 32);
  v6.super_class = MRNowPlayingPlayerClient;
  v2 = objc_msgSendSuper2(&v6, sel_description);
  v3 = [v2 stringByAppendingFormat:@"PlayerPath: %@ Supported Commands: %@ PlaybackQueue %@", *(*(a1 + 32) + 176), *(*(a1 + 32) + 48), *(*(a1 + 32) + 40)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)debugDescription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__43;
  v9 = __Block_byref_object_dispose__43;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __44__MRNowPlayingPlayerClient_debugDescription__block_invoke(uint64_t a1)
{
  v29 = MEMORY[0x1E696AEC0];
  v30 = *(a1 + 32);
  v2 = v30[22];
  v31 = [v2 player];
  v28 = MRCreateIndentedDebugDescriptionFromArray(*(*(a1 + 32) + 48));
  v3 = MRCreateIndentedDebugDescriptionFromObject(*(*(a1 + 32) + 56));
  v4 = *(a1 + 32);
  v26 = *(v4 + 72);
  v27 = v3;
  v25 = *(v4 + 80);
  v5 = MRMediaRemoteCopyPlaybackStateDescription(*(v4 + 88));
  v6 = *(a1 + 32);
  v23 = *(v6 + 96);
  v24 = v5;
  v7 = MRCreateIndentedDebugDescriptionFromObject(*(v6 + 40));
  v8 = *(a1 + 32);
  v9 = *(v8 + 104);
  v10 = @"YES";
  if (*(v8 + 129))
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = *(v8 + 136);
  v13 = MRCreateIndentedDebugDescriptionFromObject(*(v8 + 152));
  v14 = *(a1 + 32);
  if (*(v14 + 128))
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = [MEMORY[0x1E696AB78] localizedStringFromDate:*(v14 + 120) dateStyle:2 timeStyle:2];
  v17 = *(a1 + 32);
  if (!*(v17 + 24))
  {
    v10 = @"NO";
  }

  v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*(v17 + 32)];
  v19 = [v29 stringWithFormat:@"    playerPath = %@\n    player = %@\n    supportedCommands = %@\n    nowPlayingInfo = %@\n    nowPlayingArtwork = %@\n    nowPlayingAnimatedArtwork = %@\n    playbackState = %@\n    playbackStateDate= %@\n    playbackQueue = %@\n    capabilities = %ld\n    triggerInvalidation = %@\n    invalidatationTimestamp = %lf\n    cachedContentItemUpdates = %@\n    pictureInPictureEnabled = %@\n    activeRequestDate = %@\n    canBeNowPlaying = %@\n    canBeNowPlayingTimestamp = %@\n    homeUserIdentifiers = %@", v2, v31, v28, v27, v26, v25, v24, v23, v7, v9, v11, v12, v13, v15, v16, v10, v18, *(*(a1 + 32) + 168)];
  v20 = MRCreateFormattedDebugDescriptionFromClass(v30, v19);
  v21 = *(*(a1 + 40) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;
}

- (void)_handePlaybackSessionMigrateRequest:(void *)request request:(void *)a4 completion:
{
  v7 = a2;
  requestCopy = request;
  v9 = a4;
  v10 = v9;
  if (self)
  {
    v44 = v9;
    supportedCommands = [self supportedCommands];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke;
    v74[3] = &unk_1E76A3A58;
    v46 = v7;
    v12 = v7;
    v75 = v12;
    v13 = supportedCommands;
    v76 = v13;
    selfCopy = self;
    v45 = requestCopy;
    v14 = requestCopy;
    v78 = v14;
    v15 = MEMORY[0x1A58E3570](v74);
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_3;
    v70[3] = &unk_1E769D9F0;
    v16 = v14;
    v71 = v16;
    selfCopy2 = self;
    v17 = v13;
    v73 = v17;
    v48 = MEMORY[0x1A58E3570](v70);
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_7;
    v66[3] = &unk_1E769D9F0;
    v18 = v16;
    v67 = v18;
    v19 = v17;
    v68 = v19;
    selfCopy3 = self;
    v47 = MEMORY[0x1A58E3570](v66);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_9;
    v62[3] = &unk_1E769D9F0;
    v20 = v18;
    v63 = v20;
    v21 = v19;
    v64 = v21;
    selfCopy4 = self;
    v22 = MEMORY[0x1A58E3570](v62);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_11;
    v59[3] = &unk_1E76A3AA8;
    v23 = v20;
    v60 = v23;
    selfCopy5 = self;
    v24 = MEMORY[0x1A58E3570](v59);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_119;
    v55[3] = &unk_1E769D9F0;
    v25 = v23;
    v56 = v25;
    v26 = v21;
    v57 = v26;
    selfCopy6 = self;
    v27 = MEMORY[0x1A58E3570](v55);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_3_124;
    v52[3] = &unk_1E76A3AA8;
    v28 = v25;
    v53 = v28;
    selfCopy7 = self;
    v29 = MEMORY[0x1A58E3570](v52);
    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = v15;
    if (!v12)
    {
      v32 = [v24 copy];
      v33 = MEMORY[0x1A58E3570]();
      OUTLINED_FUNCTION_2_13(v33);

      v34 = [v48 copy];
      v35 = MEMORY[0x1A58E3570]();
      OUTLINED_FUNCTION_2_13(v35);

      v36 = [v47 copy];
      v37 = MEMORY[0x1A58E3570]();
      OUTLINED_FUNCTION_2_13(v37);

      v38 = [v29 copy];
      v39 = MEMORY[0x1A58E3570]();
      OUTLINED_FUNCTION_2_13(v39);

      v40 = [v27 copy];
      v41 = MEMORY[0x1A58E3570]();
      OUTLINED_FUNCTION_2_13(v41);

      v31 = v22;
    }

    v42 = [v31 copy];
    v43 = MEMORY[0x1A58E3570]();
    OUTLINED_FUNCTION_2_13(v43);

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_5_139;
    v49[3] = &unk_1E769AB50;
    v10 = v44;
    v51 = v44;
    v50 = v28;
    MRPerformAsyncOperationsUntilError(v30, v49);

    requestCopy = v45;
    v7 = v46;
  }
}

- (void)_onQueue_updateCacheWithPlaybackQueue:(uint64_t)queue
{
  v34 = *MEMORY[0x1E69E9840];
  v21 = a2;
  if (queue)
  {
    dispatch_assert_queue_V2(*(queue + 8));
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [*(queue + 40) contentItems];
    v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v22)
    {
      v20 = *v29;
      do
      {
        v3 = 0;
        do
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v23 = v3;
          v4 = *(*(&v28 + 1) + 8 * v3);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          contentItems = [v21 contentItems];
          v6 = [contentItems countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v25;
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v25 != v8)
                {
                  objc_enumerationMutation(contentItems);
                }

                v10 = *(*(&v24 + 1) + 8 * i);
                identifier = [v10 identifier];
                identifier2 = [v4 identifier];
                v13 = [identifier isEqualToString:identifier2];

                if (v13)
                {
                  range = [*(queue + 40) range];
                  v16 = [MRPlaybackQueueRequest defaultPlaybackQueueRequestWithRange:range, v15];
                  v17 = MRContentItemCreateFromRequest(v10, v16);
                  MRContentItemMerge(v4, v17);
                }
              }

              v7 = [contentItems countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v7);
          }

          v3 = v23 + 1;
        }

        while (v23 + 1 != v22);
        v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v22);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_onQueue_updateCacheWithContentItems:(uint64_t)items
{
  v3 = a2;
  if (items)
  {
    v6 = v3;
    dispatch_assert_queue_V2(*(items + 8));
    v3 = v6;
    if (v6)
    {
      v4 = [v6 count];
      v3 = v6;
      if (v4)
      {
        v5 = [[MRPlaybackQueue alloc] initWithContentItems:v6];
        [(MRNowPlayingPlayerClient *)items _onQueue_updateCacheWithPlaybackQueue:v5];

        v3 = v6;
      }
    }
  }
}

- (void)preProcessChangePlaybackRateCommandWithOptions:(uint64_t)options
{
  v3 = a2;
  v4 = v3;
  if (options)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __75__MRNowPlayingPlayerClient_preProcessChangePlaybackRateCommandWithOptions___block_invoke;
    v28[3] = &unk_1E76A38D0;
    v5 = v3;
    v29 = v5;
    v6 = MEMORY[0x1A58E3570](v28);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __75__MRNowPlayingPlayerClient_preProcessChangePlaybackRateCommandWithOptions___block_invoke_2;
    v27[3] = &unk_1E76A38F8;
    v27[4] = options;
    v7 = MEMORY[0x1A58E3570](v27);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __75__MRNowPlayingPlayerClient_preProcessChangePlaybackRateCommandWithOptions___block_invoke_3;
    v26[3] = &unk_1E76A3920;
    v26[4] = options;
    v8 = MEMORY[0x1A58E3570](v26);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __75__MRNowPlayingPlayerClient_preProcessChangePlaybackRateCommandWithOptions___block_invoke_4;
    v23[3] = &unk_1E76A3948;
    v9 = v5;
    v24 = v9;
    v10 = v6;
    v25 = v10;
    v11 = MEMORY[0x1A58E3570](v23);
    v12 = [v9 objectForKeyedSubscript:@"kMRMediaRemoteOptionPlaybackRate"];
    [v12 floatValue];
    v14 = v13;
    v15 = [v9 objectForKeyedSubscript:@"kMRMediaRemoteOptionPredefinedPlaybackRate"];
    if (v15)
    {
      v22 = v4;
      v17 = v7[2](v7);
      [v17 floatValue];
      v19 = v8;
      if (v18 == 0.0)
      {
        v14 = (*(v10 + 2))(v10, [v15 intValue]);
      }

      else
      {
        v20 = (*(v8 + 16))(v8);
        v14 = (v11)[2](v11, v17, v20);
      }

      v4 = v22;
    }

    else
    {
      v19 = v8;
    }

    *&v16 = v14;
    v21 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    [v9 setObject:v21 forKeyedSubscript:@"kMRMediaRemoteOptionPlaybackRate"];
  }
}

- (void)_onQueue_cacheContentItemChangesForPendingRequests:(uint64_t)requests
{
  v3 = a2;
  if (requests)
  {
    dispatch_assert_queue_V2(*(requests + 8));
    v4 = *(requests + 152);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __79__MRNowPlayingPlayerClient__onQueue_cacheContentItemChangesForPendingRequests___block_invoke;
    v5[3] = &unk_1E76A39C0;
    v6 = v3;
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void __51__MRNowPlayingPlayerClient_sendContentItemChanges___block_invoke(uint64_t a1)
{
  v1 = a1;
  v86 = *MEMORY[0x1E69E9840];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v2 = [*(a1 + 32) playbackQueue];
  v3 = [v2 contentItems];

  obj = v3;
  v65 = [v3 countByEnumeratingWithState:&v79 objects:v85 count:16];
  if (v65)
  {
    v64 = *v80;
    v5 = 0x1E7698000uLL;
    *&v4 = 138412290;
    v68 = v4;
    v67 = v1;
    do
    {
      v6 = 0;
      do
      {
        if (*v80 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v66 = v6;
        v7 = *(*(&v79 + 1) + 8 * v6);
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        OUTLINED_FUNCTION_5_9();
        v71 = [*(v8 + 40) copy];
        v9 = [v71 countByEnumeratingWithState:&v75 objects:v84 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v76;
          v69 = *v76;
          do
          {
            v12 = 0;
            v70 = v10;
            do
            {
              if (*v76 != v11)
              {
                objc_enumerationMutation(v71);
              }

              v13 = *(*(&v75 + 1) + 8 * v12);
              v14 = [v7 identifier];
              v15 = [v13 identifier];
              v16 = [v14 isEqualToString:v15];

              if (v16)
              {
                v17 = *(v5 + 3360);
                v83[0] = v7;
                v83[1] = v13;
                v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
                v19 = [v17 mergeContentItems:v18];
                v20 = [v19 firstObject];

                if ([v7 isEffectivelyEqual:v20])
                {
                  OUTLINED_FUNCTION_5_9();
                  v22 = [*(v21 + 40) mutableCopy];
                  [v22 removeObject:v13];
                  OUTLINED_FUNCTION_5_9();
                  objc_storeStrong((v23 + 40), v22);
                  v24 = _MRLogForCategory(1uLL);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    v25 = MRContentItemCopyMinimalReadableDescription(v13);
                    OUTLINED_FUNCTION_1_23(v25, v26, v27, v28, v29, v30, v31, v32, v62, obj, v64, v65, v66, v67, v68);
                    _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingPlayerClient] Sending identical contentItemChange for %@. Skipping update", v33, 0xCu);
                  }
                }

                else
                {
                  v34 = [v7 metadata];
                  v35 = [v34 dictionaryRepresentation];
                  v36 = [v13 metadata];
                  v37 = [v36 dictionaryRepresentation];
                  v73 = 0;
                  v74 = 0;
                  v72 = 0;
                  MRDictionaryCalculateDeltas(v35, v37, &v74, &v73, &v72);
                  v22 = v74;
                  v24 = v73;
                  v38 = v72;

                  if ([v22 count])
                  {
                    v39 = _MRLogForCategory(1uLL);
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                    {
                      v40 = [v22 description];
                      OUTLINED_FUNCTION_1_23(v40, v41, v42, v43, v44, v45, v46, v47, v62, obj, v64, v65, v66, v67, v68);
                      _os_log_impl(&dword_1A2860000, v39, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingPlayerClient] Added Fields: %@", v48, 0xCu);
                    }
                  }

                  v1 = v67;
                  v5 = 0x1E7698000;
                  v11 = v69;
                  if ([v38 count])
                  {
                    v49 = _MRLogForCategory(1uLL);
                    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                    {
                      v50 = [v38 description];
                      OUTLINED_FUNCTION_1_23(v50, v51, v52, v53, v54, v55, v56, v57, v62, obj, v64, v65, v66, v67, v68);
                      _os_log_impl(&dword_1A2860000, v49, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingPlayerClient] Updated Values: %@", v58, 0xCu);

                      v11 = v69;
                    }
                  }
                }

                v10 = v70;
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [v71 countByEnumeratingWithState:&v75 objects:v84 count:16];
          }

          while (v10);
        }

        v6 = v66 + 1;
      }

      while (v66 + 1 != v65);
      v65 = [obj countByEnumeratingWithState:&v79 objects:v85 count:16];
    }

    while (v65);
  }

  [(MRNowPlayingPlayerClient *)v1[4] _onQueue_updateCacheWithContentItems:?];
  [(MRNowPlayingPlayerClient *)v1[4] _onQueue_cacheContentItemChangesForPendingRequests:?];
  if (*(v1[4] + 129) == 1)
  {
    OUTLINED_FUNCTION_5_9();
    [(MRNowPlayingPlayerClient *)v61 _onQueue_enqueueContentItemChangesForPendingPlaybackQueueInvalidation:?];
  }

  else
  {
    *(*(v1[6] + 8) + 24) = 1;
  }

  v59 = *MEMORY[0x1E69E9840];
}

- (void)_onQueue_enqueueContentItemChangesForPendingPlaybackQueueInvalidation:(uint64_t)invalidation
{
  v3 = a2;
  if (invalidation)
  {
    dispatch_assert_queue_V2(*(invalidation + 8));
    if ((*(invalidation + 129) & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__onQueue_enqueueContentItemChangesForPendingPlaybackQueueInvalidation_ object:invalidation file:@"MRNowPlayingPlayerClient.m" lineNumber:850 description:@"Cannot enqueue contentItemChanges when the playback queue is not invalidating"];
    }

    v4 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingPlayerClient] Enqueing contentItemChange due to pending PlaybackQueueInvalidation", v8, 2u);
    }

    if ([v3 count] && !*(invalidation + 160))
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = *(invalidation + 160);
      *(invalidation + 160) = v5;
    }

    [*(invalidation + 160) addObjectsFromArray:v3];
  }
}

- (void)initWithPlayerPath:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MRNowPlayingPlayerClient.m" lineNumber:75 description:{@"Trying to instantiate an unresolved MRNowPlayingPlayerClient %@", a3}];
}

- (void)addPendingRequest:.cold.1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingPlayerClient addPendingRequest:]"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

- (void)addPendingRequest:.cold.2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingPlayerClient addPendingRequest:]"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

- (void)startCachingContentItemUpdatesForItem:forPendingRequest:.cold.1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingPlayerClient startCachingContentItemUpdatesForItem:forPendingRequest:]"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

- (void)startCachingContentItemUpdatesForItem:forPendingRequest:.cold.2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingPlayerClient startCachingContentItemUpdatesForItem:forPendingRequest:]"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

- (void)updatePlaybackQueueWithCachedUpdates:forPendingRequest:.cold.1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingPlayerClient updatePlaybackQueueWithCachedUpdates:forPendingRequest:]"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

- (void)updatePlaybackQueueWithCachedUpdates:forPendingRequest:.cold.2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingPlayerClient updatePlaybackQueueWithCachedUpdates:forPendingRequest:]"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void __83__MRNowPlayingPlayerClient_updatePlaybackQueueWithCachedUpdates_forPendingRequest___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_6();
  v10 = *MEMORY[0x1E69E9840];
  v3 = [*(v2 + 48) minimalReadableDescription];
  v4 = *(v1 + 56);
  v6 = 138412546;
  v7 = v3;
  v8 = 2114;
  v9 = v4;
  _os_log_error_impl(&dword_1A2860000, v0, OS_LOG_TYPE_ERROR, "[MRNowPlayingPlayerClient] Attempting to update playbackQueue response %@ without a pending request %{public}@", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)addPendingPlaybackSessionMigrateEvent:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

- (void)addPendingPlaybackSessionMigrateEvent:.cold.2()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"request.requestIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)removePendingPlaybackSessionMigrateEvent:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

- (void)removePendingPlaybackSessionMigrateEvent:.cold.2()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"request.requestIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)sendContentItemChanges:(uint8_t *)buf .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1A2860000, log, OS_LOG_TYPE_DEBUG, "[MRNowPlayingPlayerClient] Attempting to send contentItemChange for path %{public}@ %@", buf, 0x16u);
}

- (void)setSupportedCommands:(uint64_t *)a1 queue:(NSObject *)a2 completion:.cold.1(uint64_t *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412546;
  v5 = @"kMRMediaRemotePlayerSupportedCommandsDidChangeNotification";
  v6 = 2112;
  v7 = v2;
  _os_log_debug_impl(&dword_1A2860000, a2, OS_LOG_TYPE_DEBUG, "Sending short circuted notification %@ for %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __83__MRNowPlayingPlayerClient__handePlaybackSessionMigrateRequest_request_completion___block_invoke_12_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "[MRNowPlayingPlayerClient] Fade in trigger failed with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end