@interface MRNowPlayingClient
- (BOOL)canBeNowPlaying;
- (BOOL)canBeNowPlayingForPlayer:(id)player;
- (BOOL)perPlayerCanBeNowPlaying;
- (MRClient)client;
- (MRNowPlayingClient)initWithPlayerPath:(id)path;
- (MRPlayerPath)activePlayerPath;
- (NSArray)playerClients;
- (id)debugDescription;
- (id)description;
- (id)nowPlayingPlayerClientForPlayerPath:(id)path;
- (void)_avSessionMediaServicesResetNotification:(id)notification;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)dealloc;
- (void)mergeClient:(id)client;
- (void)reevaluateActivePlayerWithReason:(id)reason completion:(id)completion;
- (void)removePlayer:(id)player;
- (void)requestActiveForPlayerPath:(id)path completion:(id)completion;
- (void)restoreNowPlayingClientState;
- (void)sendQueuedCommandsWithReason:(id)reason;
- (void)setActivePlayerPath:(id)path reason:(id)reason completion:(id)completion;
- (void)setCanBeNowPlaying:(BOOL)playing;
- (void)setClient:(id)client;
- (void)setPerPlayerCanBeNowPlaying:(BOOL)playing;
- (void)updateActivePlayerPath:(id)path completion:(id)completion;
@end

@implementation MRNowPlayingClient

- (NSArray)playerClients
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_playerClients copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (MRClient)client
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  client = [(MRPlayerPath *)selfCopy->_playerPath client];
  v4 = [client copy];

  objc_sync_exit(selfCopy);

  return v4;
}

- (BOOL)canBeNowPlaying
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_perPlayerCanBeNowPlaying)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = selfCopy->_playerClients;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = *v11;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v10 + 1) + 8 * v6) canBeNowPlayingPlayer])
          {

            canBeNowPlaying = 1;
            goto LABEL_13;
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    canBeNowPlaying = 0;
  }

  else
  {
    canBeNowPlaying = selfCopy->_canBeNowPlaying;
  }

LABEL_13:
  objc_sync_exit(selfCopy);

  v8 = *MEMORY[0x1E69E9840];
  return canBeNowPlaying & 1;
}

- (MRNowPlayingClient)initWithPlayerPath:(id)path
{
  pathCopy = path;
  v27.receiver = self;
  v27.super_class = MRNowPlayingClient;
  v5 = [(MRNowPlayingClient *)&v27 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.MediaRemote.MRNowPlayingOriginClient.avscQueue", v6);
    avscQueue = v5->_avscQueue;
    v5->_avscQueue = v7;

    v9 = [pathCopy copy];
    playerPath = v5->_playerPath;
    v5->_playerPath = v9;

    [(MRPlayerPath *)v5->_playerPath setPlayer:0];
    v11 = v5->_playerPath;
    if (!v11)
    {
      [(MRNowPlayingClient *)&v5->_playerPath initWithPlayerPath:?];
      v11 = v28;
    }

    client = [(MRPlayerPath *)v11 client];
    if (!client)
    {
      [MRNowPlayingClient initWithPlayerPath:];
    }

    bundleIdentifier = [client bundleIdentifier];

    if (!bundleIdentifier)
    {
      [MRNowPlayingClient initWithPlayerPath:];
    }

    if (![client processIdentifier])
    {
      [MRNowPlayingClient initWithPlayerPath:];
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    playerClients = v5->_playerClients;
    v5->_playerClients = v14;

    origin = [(MRPlayerPath *)v5->_playerPath origin];
    isLocal = [origin isLocal];

    if (isLocal)
    {
      v18 = v5->_avscQueue;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __41__MRNowPlayingClient_initWithPlayerPath___block_invoke;
      v25[3] = &unk_1E769A228;
      v26 = v5;
      dispatch_async(v18, v25);
    }

    v5->_isForeground = 1;
    v5->_useMediaRemoteActivePlayerHeuristic = 1;
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("replayQueue", v19);
    replayQueue = v5->_replayQueue;
    v5->_replayQueue = v20;

    array = [MEMORY[0x1E695DF70] array];
    commandQueue = v5->_commandQueue;
    v5->_commandQueue = array;
  }

  return v5;
}

void __41__MRNowPlayingClient_initWithPlayerPath___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [getAVSystemControllerClass_0() sharedAVSystemController];
  v3 = getAVSystemController_ServerConnectionDiedNotification();
  v10[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v5 = getAVSystemController_SubscribeToNotificationsAttribute();
  [v2 setAttribute:v4 forKey:v5 error:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = *(a1 + 32);
  v8 = getAVSystemController_ServerConnectionDiedNotification();
  [v6 addObserver:v7 selector:sel__avSessionMediaServicesResetNotification_ name:v8 object:0];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MRNowPlayingClient;
  [(MRNowPlayingClient *)&v2 dealloc];
}

- (void)setCanBeNowPlaying:(BOOL)playing
{
  playingCopy = playing;
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  if (obj->_canBeNowPlaying != playingCopy)
  {
    obj->_canBeNowPlaying = playingCopy;
    if (playingCopy)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v4 = obj;
      obj->_canBeNowPlayingTimestamp = v5;
      if (!obj->_perPlayerCanBeNowPlaying)
      {
        v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"canBeNowPlaying=YES for %@", obj->_playerPath];
        [(MRNowPlayingClient *)obj sendQueuedCommandsWithReason:v6];

        v4 = obj;
      }
    }
  }

  objc_sync_exit(v4);
}

- (void)setPerPlayerCanBeNowPlaying:(BOOL)playing
{
  playingCopy = playing;
  obj = self;
  objc_sync_enter(obj);
  obj->_perPlayerCanBeNowPlaying = playingCopy;
  if (playingCopy)
  {
    [(MRNowPlayingClient *)obj sendQueuedCommandsWithReason:@"perPlayCanBeNowPlaying=YES"];
  }

  objc_sync_exit(obj);
}

- (BOOL)perPlayerCanBeNowPlaying
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  perPlayerCanBeNowPlaying = selfCopy->_perPlayerCanBeNowPlaying;
  objc_sync_exit(selfCopy);

  return perPlayerCanBeNowPlaying;
}

- (void)setClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MRPlayerPath *)selfCopy->_playerPath setClient:clientCopy];
  objc_sync_exit(selfCopy);
}

- (void)mergeClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  client = [(MRPlayerPath *)selfCopy->_playerPath client];
  [client mergeFrom:clientCopy];

  objc_sync_exit(selfCopy);
}

- (void)requestActiveForPlayerPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(MRNowPlayingClient *)selfCopy nowPlayingPlayerClientForPlayerPath:pathCopy];
  v10 = [MEMORY[0x1E695DF00] now];
  [v9 setActiveRequestedDate:v10];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__MRNowPlayingClient_requestActiveForPlayerPath_completion___block_invoke;
  v14[3] = &unk_1E76A2B88;
  v14[4] = selfCopy;
  v11 = pathCopy;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v13 = completionCopy;
  v17 = v13;
  [(MRNowPlayingClient *)selfCopy reevaluateActivePlayerWithReason:@"Attempting to set now playing player if possible" completion:v14];

  objc_sync_exit(selfCopy);
}

void __60__MRNowPlayingClient_requestActiveForPlayerPath_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = [*(a1 + 32) activePlayerPath];
    if ([v4 isEqual:*(a1 + 40)])
    {
    }

    else
    {
      v5 = [*(a1 + 48) isPictureInPictureEnabled];

      if (v5)
      {
        v3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:41];
        goto LABEL_7;
      }
    }

    v3 = 0;
  }

LABEL_7:
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = v3;
    (*(v6 + 16))();
    v3 = v7;
  }
}

- (void)updateActivePlayerPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_useMediaRemoteActivePlayerHeuristic = 0;
  [(MRNowPlayingClient *)selfCopy setActivePlayerPath:pathCopy reason:@"API Usage" completion:completionCopy];
  objc_sync_exit(selfCopy);
}

- (void)setActivePlayerPath:(id)path reason:(id)reason completion:(id)completion
{
  v48 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  reasonCopy = reason;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activePlayer = selfCopy->_activePlayer;
  player = [pathCopy player];
  v14 = activePlayer;
  v15 = player;
  v16 = v15;
  if (v14 == v15)
  {
  }

  else
  {
    v17 = [(MRPlayer *)v14 isEqual:v15];

    if (!v17)
    {
      if (selfCopy->_activePlayer)
      {
        v18 = _MRLogForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = selfCopy->_activePlayer;
          player2 = [pathCopy player];
          *buf = 138544130;
          v41 = pathCopy;
          v42 = 2114;
          v43 = @"ActivePlayerPath";
          v44 = 2112;
          v45 = v19;
          v46 = 2112;
          v47 = player2;
          _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", buf, 0x2Au);
        }
      }

      else
      {
        v18 = _MRLogForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          player3 = [pathCopy player];
          *buf = 138543874;
          v41 = pathCopy;
          v42 = 2114;
          v43 = @"ActivePlayerPath";
          v44 = 2112;
          v45 = player3;
          _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", buf, 0x20u);
        }
      }

      player4 = [pathCopy player];
      v23 = selfCopy->_activePlayer;
      selfCopy->_activePlayer = player4;

      v24 = [MEMORY[0x1E695DF00] now];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];

      v27 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"setNowPlayingPlayer", uUIDString];
      v28 = v27;
      if (pathCopy)
      {
        [v27 appendFormat:@" for %@", pathCopy];
      }

      if (reasonCopy)
      {
        [v28 appendFormat:@" because %@", reasonCopy];
      }

      v29 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v41 = v28;
        _os_log_impl(&dword_1A2860000, v29, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
      }

      v30 = MRGetSharedService();
      v31 = dispatch_get_global_queue(0, 0);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __60__MRNowPlayingClient_setActivePlayerPath_reason_completion___block_invoke;
      v35[3] = &unk_1E769ABF0;
      v36 = pathCopy;
      v32 = uUIDString;
      v37 = v32;
      v33 = v24;
      v38 = v33;
      v39 = completionCopy;
      MRMediaRemoteServiceSetNowPlayingPlayer(v30, v36, v31, v35);

      goto LABEL_18;
    }
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_18:
  objc_sync_exit(selfCopy);

  v34 = *MEMORY[0x1E69E9840];
}

uint64_t __60__MRNowPlayingClient_setActivePlayerPath_reason_completion___block_invoke(void *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  v5 = _MRLogForCategory(0xAuLL);
  v6 = v5;
  if (!a2)
  {
    v12 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v14 = a1[4];
      v13 = a1[5];
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:a1[6]];
      v23 = 138544130;
      v24 = @"setNowPlayingPlayer";
      v25 = 2114;
      v26 = v13;
      v27 = 2114;
      v28 = v14;
      v29 = 2048;
      v30 = v15;
      v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v17 = v6;
      v18 = 42;
    }

    else
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v19 = a1[5];
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:a1[6]];
      v23 = 138543874;
      v24 = @"setNowPlayingPlayer";
      v25 = 2114;
      v26 = v19;
      v27 = 2048;
      v28 = v20;
      v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v17 = v6;
      v18 = 32;
    }

    _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, &v23, v18);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v9 = a1[4];
    v8 = a1[5];
    v10 = [MEMORY[0x1E695DF00] date];
    [v10 timeIntervalSinceDate:a1[6]];
    v23 = 138544386;
    v24 = @"setNowPlayingPlayer";
    v25 = 2114;
    v26 = v8;
    v27 = 2114;
    v28 = a2;
    v29 = 2114;
    v30 = v9;
    v31 = 2048;
    v32 = v11;
    _os_log_error_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v23, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    __60__MRNowPlayingClient_setActivePlayerPath_reason_completion___block_invoke_cold_1(a1);
  }

LABEL_14:

  result = a1[7];
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)reevaluateActivePlayerWithReason:(id)reason completion:(id)completion
{
  v25[1] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_useMediaRemoteActivePlayerHeuristic)
  {
    playerClients = [(MRNowPlayingClient *)selfCopy playerClients];
    v10 = [playerClients mr_filter:&__block_literal_global_89];

    v11 = MEMORY[0x1E696AEB0];
    v12 = NSStringFromSelector(sel_activeRequestedDate);
    v13 = [v11 sortDescriptorWithKey:v12 ascending:0];

    v25[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v15 = [v10 sortedArrayUsingDescriptors:v14];

    isForeground = selfCopy->_isForeground;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __66__MRNowPlayingClient_reevaluateActivePlayerWithReason_completion___block_invoke_2;
    v23[3] = &__block_descriptor_33_e34_B16__0__MRNowPlayingPlayerClient_8l;
    v24 = isForeground;
    v17 = [v15 mr_first:v23];
    if (!v17)
    {
      firstObject = [v15 firstObject];
      v19 = firstObject;
      if (firstObject)
      {
        v17 = firstObject;
      }

      else
      {
        playerClients2 = [(MRNowPlayingClient *)selfCopy playerClients];
        v17 = [playerClients2 mr_first:&__block_literal_global_286];
      }
    }

    playerPath = [v17 playerPath];
    [(MRNowPlayingClient *)selfCopy setActivePlayerPath:playerPath reason:reasonCopy completion:completionCopy];
  }

  objc_sync_exit(selfCopy);

  v22 = *MEMORY[0x1E69E9840];
}

BOOL __66__MRNowPlayingClient_reevaluateActivePlayerWithReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 playerPath];
  v4 = [v3 player];
  if ([v4 isDefaultPlayer])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v2 activeRequestedDate];
    v5 = v6 != 0;
  }

  return v5;
}

uint64_t __66__MRNowPlayingClient_reevaluateActivePlayerWithReason_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(a1 + 32) & 1) == 0)
  {
    if ([v3 isPictureInPictureEnabled])
    {
      v5 = 1;
      goto LABEL_7;
    }

    if ((*(a1 + 32) & 1) == 0)
    {
      v5 = 0;
      goto LABEL_7;
    }
  }

  v5 = [v4 isPictureInPictureEnabled] ^ 1;
LABEL_7:

  return v5;
}

uint64_t __66__MRNowPlayingClient_reevaluateActivePlayerWithReason_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 playerPath];
  v3 = [v2 player];
  v4 = [v3 isDefaultPlayer];

  return v4;
}

- (void)applicationWillEnterForeground
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isForeground = 1;
  [(MRNowPlayingClient *)obj reevaluateActivePlayerWithReason:@"Application will enter foreground" completion:0];
  objc_sync_exit(obj);
}

- (void)applicationDidEnterBackground
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isForeground = 0;
  [(MRNowPlayingClient *)obj reevaluateActivePlayerWithReason:@"Application did enter background" completion:0];
  objc_sync_exit(obj);
}

- (MRPlayerPath)activePlayerPath
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(MRPlayerPath *)selfCopy->_playerPath copy];
  v4 = [(MRPlayer *)selfCopy->_activePlayer copy];
  [v3 setPlayer:v4];

  objc_sync_exit(selfCopy);

  return v3;
}

- (id)nowPlayingPlayerClientForPlayerPath:(id)path
{
  v21 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = selfCopy->_playerClients;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      playerPath = [v10 playerPath];
      if ([playerPath isEqual:pathCopy])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v10;

    if (v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v12 = [[MRNowPlayingPlayerClient alloc] initWithPlayerPath:pathCopy];
  [(NSMutableArray *)selfCopy->_playerClients addObject:v12];
  pathCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"New player %@ was added", pathCopy];
  [(MRNowPlayingClient *)selfCopy reevaluateActivePlayerWithReason:pathCopy completion:0];

LABEL_12:
  objc_sync_exit(selfCopy);

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)removePlayer:(id)player
{
  v23 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = selfCopy->_playerClients;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = *v19;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v18 + 1) + 8 * i);
      playerPath = [v10 playerPath];
      if ([playerPath isEqual:playerCopy])
      {
        [(NSMutableArray *)selfCopy->_playerClients removeObject:v10];
        activePlayerPath = [(MRNowPlayingClient *)selfCopy activePlayerPath];
        v13 = playerCopy;
        v14 = v13;
        if (activePlayerPath == v13)
        {
        }

        else
        {
          v15 = [activePlayerPath isEqual:v13];

          if (!v15)
          {
            goto LABEL_15;
          }
        }

        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Active player %@ was removed", v14];
        [(MRNowPlayingClient *)selfCopy reevaluateActivePlayerWithReason:v16 completion:0];

LABEL_15:
        goto LABEL_16;
      }
    }

    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_16:

  objc_sync_exit(selfCopy);
  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)canBeNowPlayingForPlayer:(id)player
{
  playerCopy = player;
  v5 = playerCopy;
  if (self->_perPlayerCanBeNowPlaying || !self->_canBeNowPlaying)
  {
    playerClients = self->_playerClients;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__MRNowPlayingClient_canBeNowPlayingForPlayer___block_invoke;
    v10[3] = &unk_1E76A3758;
    v11 = playerCopy;
    v8 = [(NSMutableArray *)playerClients mr_first:v10];
    canBeNowPlayingPlayer = [v8 canBeNowPlayingPlayer];
  }

  else
  {
    canBeNowPlayingPlayer = 1;
  }

  return canBeNowPlayingPlayer;
}

uint64_t __47__MRNowPlayingClient_canBeNowPlayingForPlayer___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 playerPath];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __74__MRNowPlayingClient_enqueueCommand_options_playerPath_commandCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 playerPath];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __74__MRNowPlayingClient_enqueueCommand_options_playerPath_commandCompletion___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if ([*(*(a1 + 32) + 56) containsObject:*(a1 + 40)])
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = [*(a1 + 40) dateCreated];
    [v4 timeIntervalSinceNow];
    v6 = [v3 initWithFormat:@"Removing previously queued command because it timed out (enqueued for %f seconds)", v5];

    v7 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      *buf = 138543874;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v10 = [*(a1 + 40) commandCompletion];

    if (v10)
    {
      v11 = *(*(a1 + 32) + 48);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74__MRNowPlayingClient_enqueueCommand_options_playerPath_commandCompletion___block_invoke_310;
      block[3] = &unk_1E769A228;
      v14 = *(a1 + 40);
      dispatch_async(v11, block);
    }

    [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];
  }

  objc_sync_exit(v2);

  v12 = *MEMORY[0x1E69E9840];
}

void __74__MRNowPlayingClient_enqueueCommand_options_playerPath_commandCompletion___block_invoke_310(uint64_t a1)
{
  v2 = [*(a1 + 32) commandCompletion];
  v1 = [MRCommandResult commandResultWithSendError:17];
  v2[2](v2, v1);
}

- (void)sendQueuedCommandsWithReason:(id)reason
{
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableArray *)selfCopy->_commandQueue count])
  {
    v6 = [(NSMutableArray *)selfCopy->_commandQueue copy];
    [(NSMutableArray *)selfCopy->_commandQueue removeAllObjects];
    replayQueue = selfCopy->_replayQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__MRNowPlayingClient_sendQueuedCommandsWithReason___block_invoke;
    v9[3] = &unk_1E769A4A0;
    v10 = v6;
    v11 = reasonCopy;
    v8 = v6;
    dispatch_async(replayQueue, v9);
  }

  objc_sync_exit(selfCopy);
}

void __51__MRNowPlayingClient_sendQueuedCommandsWithReason___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 32);
  v1 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v1)
  {
    v2 = v1;
    v16 = *v19;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v18 + 1) + 8 * i);
        v5 = [v4 options];
        v6 = [v5 objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];

        v7 = MRMediaRemoteCopyCommandDescription([v4 command]);
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sending previously queued command because %@", *(a1 + 40)];
        v9 = _MRLogForCategory(0xAuLL);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v23 = v7;
          v24 = 2114;
          v25 = v6;
          v26 = 2112;
          v27 = v8;
          _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
        }

        v10 = [v4 playerPath];
        v11 = [v4 command];
        v12 = [v4 options];
        v13 = [v4 commandCompletion];
        MRServiceClientRemotePlayerPathCommandCallback(v10, v11, v12, v13);
      }

      v2 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v2);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_avSessionMediaServicesResetNotification:(id)notification
{
  v4 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingOriginClient] AVAudioSessionMediaServicesWereReset notification received -- restoring now playing app eligibility state", buf, 2u);
  }

  avscQueue = self->_avscQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MRNowPlayingClient__avSessionMediaServicesResetNotification___block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(avscQueue, block);
}

void __63__MRNowPlayingClient__avSessionMediaServicesResetNotification___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [getAVSystemControllerClass_0() sharedAVSystemController];
  v3 = getAVSystemController_ServerConnectionDiedNotification();
  v13[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v5 = getAVSystemController_SubscribeToNotificationsAttribute();
  [v2 setAttribute:v4 forKey:v5 error:0];

  if ([*(a1 + 32) canBeNowPlaying])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v6 = getAVSystemController_CanBeNowPlayingAppAttributeSymbolLoc_ptr_0;
    v12 = getAVSystemController_CanBeNowPlayingAppAttributeSymbolLoc_ptr_0;
    if (!getAVSystemController_CanBeNowPlayingAppAttributeSymbolLoc_ptr_0)
    {
      v7 = MediaExperienceLibrary_1();
      v10[3] = dlsym(v7, "AVSystemController_CanBeNowPlayingAppAttribute");
      getAVSystemController_CanBeNowPlayingAppAttributeSymbolLoc_ptr_0 = v10[3];
      v6 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (!v6)
    {
      __63__MRNowPlayingClient__avSessionMediaServicesResetNotification___block_invoke_cold_1();
    }

    [v2 setAttribute:MEMORY[0x1E695E118] forKey:*v6 error:0];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)restoreNowPlayingClientState
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_canBeNowPlaying)
  {
    v3 = MRGetSharedService();
    MRMediaRemoteServiceSetCanBeNowPlayingApp(v3, 1, selfCopy->_canBeNowPlayingTimestamp);
  }

  if (selfCopy->_activePlayer)
  {
    v4 = MRGetSharedService();
    activePlayerPath = [(MRNowPlayingClient *)selfCopy activePlayerPath];
    MRMediaRemoteServiceSetNowPlayingPlayer(v4, activePlayerPath, 0, 0);
  }

  client = [(MRPlayerPath *)selfCopy->_playerPath client];
  if ([client hasAuxiliaryProperties])
  {
    v7 = MRGetSharedService();
    MRMediaRemoteServiceUpdateClientProperties(v7, selfCopy->_playerPath, 0, 0);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = selfCopy->_playerClients;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v11++) restoreNowPlayingClientState];
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7.receiver = selfCopy;
  v7.super_class = MRNowPlayingClient;
  v3 = [(MRNowPlayingClient *)&v7 description];
  client = [(MRPlayerPath *)selfCopy->_playerPath client];
  v5 = [v3 stringByAppendingFormat:@"Client: %@ Players: %@", client, selfCopy->_playerClients];

  objc_sync_exit(selfCopy);

  return v5;
}

- (id)debugDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E696AEC0];
  playerPath = selfCopy->_playerPath;
  client = [(MRPlayerPath *)playerPath client];
  v21 = MRCreateIndentedDebugDescriptionFromObject(client);
  v20 = MRCreateIndentedDebugDescriptionFromObject(selfCopy->_activePlayer);
  if (selfCopy->_isForeground)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v19 = MRCreateIndentedDebugDescriptionFromObject(v5);
  if (selfCopy->_perPlayerCanBeNowPlaying)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = MRCreateIndentedDebugDescriptionFromObject(v6);
  if (selfCopy->_canBeNowPlaying)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = MRCreateIndentedDebugDescriptionFromObject(v8);
  v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:selfCopy->_canBeNowPlayingTimestamp];
  v11 = MRCreateIndentedDebugDescriptionFromObject(v10);
  if ([(MRNowPlayingClient *)selfCopy canBeNowPlaying])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = MRCreateIndentedDebugDescriptionFromObject(v12);
  v14 = MRCreateIndentedDebugDescriptionFromArray(selfCopy->_commandQueue);
  v15 = MRCreateIndentedDebugDescriptionFromArray(selfCopy->_playerClients);
  v16 = [v3 stringWithFormat:@"    playerPath = %@\n    client = %@\n    activePlayer = %@\n    isForeground = %@\n    perPlayerCanBeNowPlaying = %@\n    canBeNowPlaying = %@\n    canBeNowPlayingTimeStamp = %@\n    effectiveCanBeNowPlaying = %@\n    enqueueCommands = %@\n    playerClients = %@\n", playerPath, v21, v20, v19, v7, v9, v11, v13, v14, v15];
  v17 = MRCreateFormattedDebugDescriptionFromClass(selfCopy, v16);

  objc_sync_exit(selfCopy);

  return v17;
}

- (void)initWithPlayerPath:(void *)a1 .cold.1(void *a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingClient initWithPlayerPath:]"];
  [v4 handleFailureInFunction:v5 file:@"MRNowPlayingOriginClient.m" lineNumber:453 description:{@"Invalid parameter not satisfying: %@", @"_playerPath"}];

  *a2 = *a1;
}

- (void)initWithPlayerPath:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingClient initWithPlayerPath:]"];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (void)initWithPlayerPath:.cold.3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingClient initWithPlayerPath:]"];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (void)initWithPlayerPath:.cold.4()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRNowPlayingClient initWithPlayerPath:]"];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void __60__MRNowPlayingClient_setActivePlayerPath_reason_completion___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSinceDate:*(a1 + 48)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

void __63__MRNowPlayingClient__avSessionMediaServicesResetNotification___block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_CanBeNowPlayingAppAttribute(void)"];
  [v0 handleFailureInFunction:v1 file:@"MRNowPlayingOriginClient.m" lineNumber:36 description:{@"%s", dlerror()}];

  __break(1u);
}

@end