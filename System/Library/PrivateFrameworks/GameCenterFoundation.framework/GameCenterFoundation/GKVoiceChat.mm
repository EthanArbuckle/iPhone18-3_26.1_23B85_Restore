@interface GKVoiceChat
+ (BOOL)isVoIPAllowed;
- (BOOL)isActive;
- (GKVoiceChat)initWithViceroyVoiceChat:(id)chat players:(id)players;
- (NSArray)playerIDs;
- (NSString)name;
- (float)volume;
- (void)playerIDs;
- (void)setVolume:(float)volume;
- (void)start;
- (void)stateUpdate:(int64_t)update forPlayerID:(id)d;
- (void)stop;
@end

@implementation GKVoiceChat

- (GKVoiceChat)initWithViceroyVoiceChat:(id)chat players:(id)players
{
  chatCopy = chat;
  playersCopy = players;
  v14.receiver = self;
  v14.super_class = GKVoiceChat;
  v9 = [(GKVoiceChat *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_gkVoiceChat, chat);
    [(GKViceroyVoiceChat *)v10->_gkVoiceChat setStateUpdateDelegate:v10];
    [playersCopy _gkValidatePlayersForReturnFromAPI];
    objc_storeStrong(&v10->_players, players);
  }

  v11 = +[GKReporter reporter];
  [v11 reportEvent:@"com.apple.GameKit.match" type:@"voiceChatInit"];

  v12 = +[GKAPIReporter reporter];
  [v12 recordVoiceChat];

  return v10;
}

- (void)start
{
  gkVoiceChat = [(GKVoiceChat *)self gkVoiceChat];
  [gkVoiceChat start];
}

- (void)stop
{
  gkVoiceChat = [(GKVoiceChat *)self gkVoiceChat];
  [gkVoiceChat stop];
}

- (NSString)name
{
  gkVoiceChat = [(GKVoiceChat *)self gkVoiceChat];
  name = [gkVoiceChat name];

  return name;
}

- (BOOL)isActive
{
  gkVoiceChat = [(GKVoiceChat *)self gkVoiceChat];
  isActive = [gkVoiceChat isActive];

  return isActive;
}

- (void)setVolume:(float)volume
{
  gkVoiceChat = [(GKVoiceChat *)self gkVoiceChat];
  *&v4 = volume;
  [gkVoiceChat setVolume:v4];
}

- (float)volume
{
  gkVoiceChat = [(GKVoiceChat *)self gkVoiceChat];
  [gkVoiceChat volume];
  v4 = v3;

  return v4;
}

- (void)stateUpdate:(int64_t)update forPlayerID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  playerVoiceChatStateDidChangeHandler = [(GKVoiceChat *)self playerVoiceChatStateDidChangeHandler];

  if (playerVoiceChatStateDidChangeHandler)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__0;
    v26 = __Block_byref_object_dispose__0;
    v27 = 0;
    players = [(GKVoiceChat *)self players];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __39__GKVoiceChat_stateUpdate_forPlayerID___block_invoke;
    v19 = &unk_2785DD658;
    v9 = dCopy;
    v20 = v9;
    v21 = &v22;
    [players enumerateObjectsUsingBlock:&v16];

    if (v23[5])
    {
      v10 = [(GKVoiceChat *)self playerVoiceChatStateDidChangeHandler:v16];
      (v10[2].isa)(v10, v23[5], update);
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v13 = GKOSLoggers();
      }

      v10 = os_log_GKMatch;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = [(GKVoiceChat *)self players:v16];
        *buf = 138412546;
        v29 = v9;
        v30 = 2112;
        v31 = v14;
        _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "cannot find player for participant %@ (%@)", buf, 0x16u);
      }
    }

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    playerStateUpdateHandler = [(GKVoiceChat *)self playerStateUpdateHandler];

    if (playerStateUpdateHandler)
    {
      playerStateUpdateHandler2 = [(GKVoiceChat *)self playerStateUpdateHandler];
      (playerStateUpdateHandler2)[2](playerStateUpdateHandler2, dCopy, update);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __39__GKVoiceChat_stateUpdate_forPlayerID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 internal];
  v8 = [v7 playerID];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (BOOL)isVoIPAllowed
{
  if ((isVoIPAllowed_voipStatusIsCached & 1) == 0)
  {
    v2 = MGCopyAnswer();
    v3 = v2;
    if (v2)
    {
      isVoIPAllowed_voipIsAllowed = [v2 BOOLValue] ^ 1;
    }

    isVoIPAllowed_voipStatusIsCached = 1;
  }

  return isVoIPAllowed_voipIsAllowed;
}

- (NSArray)playerIDs
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (GKApplicationLinkedOnOrAfter(917504, 659456))
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    v4 = os_log_GKDeveloper;
    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [(GKVoiceChat *)v4 playerIDs];
    }

    v9[0] = @"playerID is no longer available";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    players = [(GKVoiceChat *)self players];
    v5 = [players _gkMapWithBlock:&__block_literal_global_0];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

id __24__GKVoiceChat_playerIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 internal];
  v3 = [v2 playerID];

  return v3;
}

- (void)playerIDs
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136446722;
  v3 = "[GKVoiceChat playerIDs]";
  v4 = 2114;
  v5 = @"14.0";
  v6 = 2114;
  v7 = @"11.0";
  _os_log_error_impl(&dword_227904000, log, OS_LOG_TYPE_ERROR, "WARNING: %{public}s is obsoleted. Game Center doesn't invoke this obsoleted method from iOS/tvOS %{public}@ and macOS %{public}@ onwards", &v2, 0x20u);
  v1 = *MEMORY[0x277D85DE8];
}

@end