@interface GKAchievement
+ (BOOL)instancesRespondToSelector:(SEL)selector;
+ (BOOL)shouldShowBannerOnReport:(id)report achievementDescription:(id)description reportedAchievements:(id)achievements uiFrameworkMethodsRequired:(BOOL)required;
+ (BOOL)showBannerIsSupported;
+ (id)descriptionForAchievement:(id)achievement achievementDescriptions:(id)descriptions;
+ (id)instanceMethodSignatureForSelector:(SEL)selector;
+ (void)loadAchievementWithID:(id)d forGame:(id)game players:(id)players complete:(id)complete;
+ (void)loadAchievementsForGameV2:(id)v2 players:(id)players includeUnreported:(BOOL)unreported includeHidden:(BOOL)hidden withCompletionHandler:(id)handler;
+ (void)loadAchievementsWithCompletionHandler:(void *)completionHandler;
+ (void)reportAchievements:(id)achievements whileScreeningChallenges:(BOOL)challenges withEligibleChallenges:(id)eligibleChallenges withCompletionHandler:(id)handler;
+ (void)resetAchievementsWithCompletionHandler:(void *)completionHandler;
- (BOOL)isEqual:(id)equal;
- (BOOL)respondsToSelector:(SEL)selector;
- (GKAchievement)initWithCoder:(id)coder;
- (GKAchievement)initWithIdentifier:(NSString *)identifier;
- (GKAchievement)initWithIdentifier:(NSString *)identifier forPlayer:(NSString *)playerID;
- (GKAchievement)initWithIdentifier:(NSString *)identifier player:(GKPlayer *)player;
- (GKAchievement)initWithIdentifier:(id)identifier player:(id)player percentComplete:(double)complete lastReportedDate:(id)date;
- (GKAchievement)initWithInternalRepresentation:(id)representation playerID:(id)d;
- (GKPlayer)player;
- (NSString)playerID;
- (id)_achievementDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)player;
- (void)playerID;
- (void)reportAchievementWithCompletionHandler:(void *)completionHandler;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation GKAchievement

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(GKAchievement *)self percentComplete];
    v7 = v6;
    [v5 percentComplete];
    if (v7 == v8)
    {
      internal = [(GKAchievement *)self internal];
      internal2 = [v5 internal];
      v11 = [internal isEqual:internal2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  internal = [(GKAchievement *)self internal];
  v3 = [internal hash];

  return v3;
}

- (GKAchievement)initWithInternalRepresentation:(id)representation playerID:(id)d
{
  representationCopy = representation;
  dCopy = d;
  if (!representationCopy)
  {
    representationCopy = +[(GKInternalRepresentation *)GKAchievementInternal];
  }

  v22.receiver = self;
  v22.super_class = GKAchievement;
  v8 = [(GKAchievement *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_internal, representationCopy);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([representationCopy gameHint], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = [GKGame alloc];
      gameHint = [representationCopy gameHint];
      v13 = [(GKGame *)v11 initWithInternalRepresentation:gameHint];
      game = v9->_game;
      v9->_game = v13;
    }

    else
    {
      v15 = +[GKGame currentGame];
      gameHint = v9->_game;
      v9->_game = v15;
    }

    v9->_showsCompletionBanner = 1;
    player = [(GKAchievementInternal *)v9->_internal player];

    if (!player)
    {
      if (dCopy)
      {
        alias = 0;
      }

      else
      {
        v18 = +[GKLocalPlayer localPlayer];
        internal = [v18 internal];
        dCopy = [internal playerID];

        alias = [v18 alias];
      }

      v20 = +[(GKInternalRepresentation *)GKPlayerInternal];
      [v20 setPlayerID:dCopy];
      [v20 setAlias:alias];
      [(GKAchievementInternal *)v9->_internal setPlayer:v20];
    }
  }

  return v9;
}

- (GKAchievement)initWithIdentifier:(NSString *)identifier
{
  v4 = identifier;
  v5 = +[(GKInternalRepresentation *)GKAchievementInternal];
  [v5 setIdentifier:v4];

  date = [MEMORY[0x277CBEAA8] date];
  [v5 setLastReportedDate:date];

  v7 = [(GKAchievement *)self initWithInternalRepresentation:v5];
  return v7;
}

- (GKAchievement)initWithIdentifier:(NSString *)identifier player:(GKPlayer *)player
{
  v6 = identifier;
  v7 = player;
  if (!v7)
  {
    v7 = +[GKLocalPlayer localPlayer];
  }

  v8 = +[(GKInternalRepresentation *)GKAchievementInternal];
  [v8 setIdentifier:v6];
  date = [MEMORY[0x277CBEAA8] date];
  [v8 setLastReportedDate:date];

  internal = [(GKPlayer *)v7 internal];
  minimalInternal = [internal minimalInternal];
  [v8 setPlayer:minimalInternal];

  v12 = [(GKAchievement *)self initWithInternalRepresentation:v8];
  return v12;
}

- (GKAchievement)initWithIdentifier:(id)identifier player:(id)player percentComplete:(double)complete lastReportedDate:(id)date
{
  identifierCopy = identifier;
  playerCopy = player;
  dateCopy = date;
  if (!playerCopy)
  {
    playerCopy = +[GKLocalPlayer localPlayer];
  }

  v13 = +[(GKInternalRepresentation *)GKAchievementInternal];
  [v13 setIdentifier:identifierCopy];
  [v13 setLastReportedDate:dateCopy];
  internal = [playerCopy internal];
  minimalInternal = [internal minimalInternal];
  [v13 setPlayer:minimalInternal];

  [v13 setPercentComplete:complete];
  v16 = [(GKAchievement *)self initWithInternalRepresentation:v13];

  return v16;
}

- (GKAchievement)initWithIdentifier:(NSString *)identifier forPlayer:(NSString *)playerID
{
  v6 = identifier;
  v7 = playerID;
  if (GKApplicationLinkedOnOrAfter(917504, 659456))
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [GKAchievement initWithIdentifier:forPlayer:];
    }

    selfCopy = 0;
  }

  else
  {
    v10 = +[(GKInternalRepresentation *)GKAchievementInternal];
    [v10 setIdentifier:v6];
    date = [MEMORY[0x277CBEAA8] date];
    [v10 setLastReportedDate:date];

    self = [(GKAchievement *)self initWithInternalRepresentation:v10 playerID:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSString)playerID
{
  if (GKApplicationLinkedOnOrAfter(917504, 659456))
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [GKAchievement playerID];
    }

    playerID = @"playerID is no longer available";
  }

  else
  {
    player = [(GKAchievementInternal *)self->_internal player];
    playerID = [player playerID];
  }

  return playerID;
}

- (GKPlayer)player
{
  player = [(GKAchievementInternal *)self->_internal player];
  playerID = [player playerID];
  if (playerID && (v4 = playerID, [player alias], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [GKPlayer canonicalizedPlayerForInternal:player];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      [GKAchievement player];
    }

    v6 = 0;
  }

  return v6;
}

- (GKAchievement)initWithCoder:(id)coder
{
  coderCopy = coder;
  internal = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"internal"];
  v6 = [(GKAchievement *)self initWithInternalRepresentation:internal];
  v7 = v6;
  if (v6)
  {
    if (!internal)
    {
      internal = [(GKAchievement *)v6 internal];
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
      [internal setIdentifier:v8];

      [coderCopy decodeDoubleForKey:@"percentComplete"];
      [internal setPercentComplete:?];
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastReportedDate"];
      [internal setLastReportedDate:v9];
    }

    -[GKAchievement setShowsCompletionBanner:](v7, "setShowsCompletionBanner:", [coderCopy decodeBoolForKey:@"showsCompletionBanner"]);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  internal = [(GKAchievement *)self internal];
  [coderCopy encodeObject:internal forKey:@"internal"];

  [coderCopy encodeBool:-[GKAchievement showsCompletionBanner](self forKey:{"showsCompletionBanner"), @"showsCompletionBanner"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GKAchievement alloc];
  internal = [(GKAchievement *)self internal];
  v6 = [internal copy];
  v7 = [(GKAchievement *)v4 initWithInternalRepresentation:v6];

  return v7;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = GKAchievement;
  v3 = [(GKAchievement *)&v8 description];
  identifier = [(GKAchievement *)self identifier];
  [(GKAchievement *)self percentComplete];
  v6 = [v3 stringByAppendingFormat:@"id: %@\t%f", identifier, v5];

  return v6;
}

+ (void)loadAchievementsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = +[GKLocalPlayer localPlayer];
  v6 = +[GKGame currentGame];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__GKAchievement_loadAchievementsWithCompletionHandler___block_invoke;
  v8[3] = &unk_2785DDCB0;
  v9 = v4;
  v7 = v4;
  [self loadAchievementsForGameV2:v6 player:v5 includeUnreported:0 includeHidden:1 withCompletionHandler:v8];
}

void __55__GKAchievement_loadAchievementsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v5)
    {
      (*(v7 + 16))(v7, 0, v5);
    }

    else if (v9)
    {
      (*(v7 + 16))(v7, v9, 0);
    }

    else
    {
      v8 = [MEMORY[0x277CBEA60] array];
      (*(v7 + 16))(v7, v8, 0);
    }
  }
}

void __104__GKAchievement_loadAchievementsForGameV2_player_includeUnreported_includeHidden_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = a3;
    v7 = a2;
    v9 = [v5 referenceKey];
    v8 = [v7 objectForKey:v9];

    (*(v3 + 16))(v3, v8, v6);
  }
}

+ (void)loadAchievementsForGameV2:(id)v2 players:(id)players includeUnreported:(BOOL)unreported includeHidden:(BOOL)hidden withCompletionHandler:(id)handler
{
  v2Copy = v2;
  playersCopy = players;
  handlerCopy = handler;
  v14 = [playersCopy count];
  v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v14];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKAchievement.m", 261, "+[GKAchievement loadAchievementsForGameV2:players:includeUnreported:includeHidden:withCompletionHandler:]"];
  v17 = [GKDispatchGroup dispatchGroupWithName:v16];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __105__GKAchievement_loadAchievementsForGameV2_players_includeUnreported_includeHidden_withCompletionHandler___block_invoke;
  v26[3] = &unk_2785DE280;
  v18 = v2Copy;
  v27 = v18;
  v19 = playersCopy;
  v28 = v19;
  unreportedCopy = unreported;
  hiddenCopy = hidden;
  v20 = v15;
  v29 = v20;
  v21 = v17;
  v30 = v21;
  [v21 perform:v26];
  if (handlerCopy)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __105__GKAchievement_loadAchievementsForGameV2_players_includeUnreported_includeHidden_withCompletionHandler___block_invoke_5;
    v22[3] = &unk_2785DD8C0;
    v25 = handlerCopy;
    v23 = v20;
    v24 = v21;
    [v24 notifyOnMainQueueWithBlock:v22];
  }
}

void __105__GKAchievement_loadAchievementsForGameV2_players_includeUnreported_includeHidden_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameStatService];
  v6 = [*(a1 + 32) gameDescriptor];
  v7 = [*(a1 + 40) _gkInternalsFromPlayers];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __105__GKAchievement_loadAchievementsForGameV2_players_includeUnreported_includeHidden_withCompletionHandler___block_invoke_2;
  v15[3] = &unk_2785DE258;
  v8 = *(a1 + 40);
  v19 = *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v16 = v13;
  v17 = v12;
  v18 = v3;
  v14 = v3;
  [v5 getAchievementsForGameDescriptor:v6 players:v7 handler:v15];
}

void __105__GKAchievement_loadAchievementsForGameV2_players_includeUnreported_includeHidden_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __105__GKAchievement_loadAchievementsForGameV2_players_includeUnreported_includeHidden_withCompletionHandler___block_invoke_3;
  v12 = &unk_2785DE230;
  v13 = v5;
  v16 = *(a1 + 72);
  v6 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v7 = v5;
  v8 = a3;
  [v6 enumerateObjectsUsingBlock:&v9];
  [*(a1 + 56) setError:{v8, v9, v10, v11, v12}];

  (*(*(a1 + 64) + 16))();
}

void __105__GKAchievement_loadAchievementsForGameV2_players_includeUnreported_includeHidden_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 internal];
  v5 = [v4 playerID];

  if ([v5 length])
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __105__GKAchievement_loadAchievementsForGameV2_players_includeUnreported_includeHidden_withCompletionHandler___block_invoke_4;
    v11[3] = &unk_2785DE208;
    v14 = *(a1 + 56);
    v12 = *(a1 + 40);
    v7 = v3;
    v13 = v7;
    v8 = [v6 _gkFilterWithBlock:v11];

    if (v8)
    {
      v9 = *(a1 + 48);
      v10 = [v7 referenceKey];
      [v9 setObject:v8 forKey:v10];
    }
  }
}

GKAchievement *__105__GKAchievement_loadAchievementsForGameV2_players_includeUnreported_includeHidden_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(a1 + 48) & 1) != 0 || ([v3 lastReportedDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if ((*(a1 + 49) & 1) != 0 || ![v4 isHidden] || objc_msgSend(v4, "isCompleted"))
    {
      v5 = [[GKAchievement alloc] initWithInternalRepresentation:v4];
      [(GKAchievement *)v5 setGame:*(a1 + 32)];
      v6 = [*(a1 + 40) internal];
      v7 = [v6 minimalInternal];
      v8 = [(GKAchievement *)v5 internal];
      [v8 setPlayer:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void __105__GKAchievement_loadAchievementsForGameV2_players_includeUnreported_includeHidden_withCompletionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) error];
  (*(v2 + 16))(v2, v1, v3);
}

+ (void)loadAchievementWithID:(id)d forGame:(id)game players:(id)players complete:(id)complete
{
  dCopy = d;
  gameCopy = game;
  playersCopy = players;
  completeCopy = complete;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKAchievement.m", 300, "+[GKAchievement loadAchievementWithID:forGame:players:complete:]"];
  v15 = [GKDispatchGroup dispatchGroupWithName:v14];

  v16 = [playersCopy count];
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v16];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __64__GKAchievement_loadAchievementWithID_forGame_players_complete___block_invoke;
  v27[3] = &unk_2785DE2D0;
  selfCopy = self;
  v18 = gameCopy;
  v28 = v18;
  v19 = playersCopy;
  v29 = v19;
  v20 = dCopy;
  v30 = v20;
  v21 = v17;
  v31 = v21;
  v22 = v15;
  v32 = v22;
  [v22 perform:v27];
  if (completeCopy)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __64__GKAchievement_loadAchievementWithID_forGame_players_complete___block_invoke_3;
    v23[3] = &unk_2785DD8C0;
    v26 = completeCopy;
    v24 = v21;
    v25 = v22;
    [v25 notifyOnMainQueueWithBlock:v23];
  }
}

void __64__GKAchievement_loadAchievementWithID_forGame_players_complete___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 72);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__GKAchievement_loadAchievementWithID_forGame_players_complete___block_invoke_2;
  v8[3] = &unk_2785DE2A8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = v3;
  v7 = v3;
  [v4 loadAchievementsForGameV2:v5 players:v6 includeUnreported:0 includeHidden:0 withCompletionHandler:v8];
}

void __64__GKAchievement_loadAchievementWithID_forGame_players_complete___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [a2 allValues];
  v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v19 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v22;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v21 + 1) + 8 * j);
              v13 = [v12 identifier];
              if ([v13 isEqualToString:*(a1 + 32)])
              {
              }

              else
              {
                v14 = [v12 groupIdentifier];
                v15 = [v14 isEqualToString:*(a1 + 32)];

                if (!v15)
                {
                  continue;
                }
              }

              [*(a1 + 40) addObject:v12];
            }

            v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v9);
        }
      }

      v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  [*(a1 + 48) setError:v17];
  (*(*(a1 + 56) + 16))();

  v16 = *MEMORY[0x277D85DE8];
}

void __64__GKAchievement_loadAchievementWithID_forGame_players_complete___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) error];
  (*(v2 + 16))(v2, v1, v3);
}

+ (void)resetAchievementsWithCompletionHandler:(void *)completionHandler
{
  v3 = completionHandler;
  v4 = +[GKPreferences shared];
  isStoreDemoModeEnabled = [v4 isStoreDemoModeEnabled];

  if (isStoreDemoModeEnabled)
  {
    if (v3)
    {
      v3[2](v3, 0);
    }
  }

  else
  {
    v6 = +[GKDaemonProxy proxyForLocalPlayer];
    gameStatService = [v6 gameStatService];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__GKAchievement_resetAchievementsWithCompletionHandler___block_invoke;
    v8[3] = &unk_2785DE008;
    v9 = v3;
    [gameStatService resetAchievementsWithHandler:v8];
  }
}

uint64_t __56__GKAchievement_resetAchievementsWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)reportAchievements:(id)achievements whileScreeningChallenges:(BOOL)challenges withEligibleChallenges:(id)eligibleChallenges withCompletionHandler:(id)handler
{
  v52 = *MEMORY[0x277D85DE8];
  achievementsCopy = achievements;
  eligibleChallengesCopy = eligibleChallenges;
  handlerCopy = handler;
  v12 = +[GKPreferences shared];
  isStoreDemoModeEnabled = [v12 isStoreDemoModeEnabled];

  if (isStoreDemoModeEnabled)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    challengesCopy = challenges;
    v35 = eligibleChallengesCopy;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    v45 = 0u;
    v14 = achievementsCopy;
    v15 = [v14 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v46;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v46 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v45 + 1) + 8 * i);
          player = [v19 player];
          if (player)
          {
            v21 = player;
            player2 = [v19 player];
            isLocalPlayer = [player2 isLocalPlayer];

            if ((isLocalPlayer & 1) == 0)
            {
              if (!os_log_GKGeneral)
              {
                v29 = GKOSLoggers();
              }

              eligibleChallengesCopy = v35;
              if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
              {
                +[GKAchievement reportAchievements:whileScreeningChallenges:withEligibleChallenges:withCompletionHandler:];
              }

              v30 = MEMORY[0x277CCA9B8];
              v49[0] = @"achievement";
              v49[1] = @"description";
              v50[0] = v19;
              v50[1] = @"A GKAchievement for another player can only be submitted when ending a turn-based match.";
              v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
              v32 = [v30 userErrorForCode:17 userInfo:v31];

              (handlerCopy)[2](handlerCopy, v32);
              goto LABEL_21;
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v45 objects:v51 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKAchievement.m", 367, "+[GKAchievement reportAchievements:whileScreeningChallenges:withEligibleChallenges:withCompletionHandler:]"];
    v25 = [GKDispatchGroup dispatchGroupWithName:v24];

    v26 = +[GKLocalPlayer localPlayer];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __106__GKAchievement_reportAchievements_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke;
    v39[3] = &unk_2785DE348;
    v27 = v26;
    v40 = v27;
    v28 = v25;
    v41 = v28;
    v42 = v14;
    v44 = challengesCopy;
    eligibleChallengesCopy = v35;
    v43 = v35;
    [v28 perform:v39];
    if (handlerCopy)
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __106__GKAchievement_reportAchievements_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_5;
      v36[3] = &unk_2785DDC10;
      v38 = handlerCopy;
      v37 = v28;
      [v37 notifyOnMainQueueWithBlock:v36];
    }
  }

LABEL_21:

  v33 = *MEMORY[0x277D85DE8];
}

void __106__GKAchievement_reportAchievements_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKGame currentGame];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __106__GKAchievement_reportAchievements_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_2;
  v12[3] = &unk_2785DE320;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v15 = v3;
  v7 = *(a1 + 48);
  v16 = *(a1 + 64);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v13 = v10;
  v14 = v9;
  v11 = v3;
  [GKAchievementDescription loadAchievementDescriptionsForGame:v4 withCompletionHandler:v12];
}

void __106__GKAchievement_reportAchievements_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKGame currentGame];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __106__GKAchievement_reportAchievements_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_3;
  v7[3] = &unk_2785DE2F8;
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = v3;
  v13 = *(a1 + 72);
  v11 = *(a1 + 56);
  v6 = v3;
  [GKAchievement loadAchievementsForGameV2:v4 player:v5 includeUnreported:1 includeHidden:1 withCompletionHandler:v7];
}

void __106__GKAchievement_reportAchievements_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) setError:a3];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = *(a1 + 40);
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [GKAchievement descriptionForAchievement:v11 achievementDescriptions:*(a1 + 48)];
          if (v12)
          {
            if ([GKAchievement shouldShowBannerOnReport:v11 achievementDescription:v12 reportedAchievements:v5])
            {
              [v12 showBanner];
            }

            v13 = [v12 rarityPercent];
            v14 = [v11 internal];
            [v14 setRarityPercent:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v8);
    }

    v15 = +[GKDaemonProxy proxyForLocalPlayer];
    v16 = [v15 gameStatService];
    v17 = [*(a1 + 40) _gkValuesForKeyPath:@"internal"];
    v18 = *(a1 + 72);
    v19 = [*(a1 + 56) _gkValuesForKeyPath:@"challengeID"];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __106__GKAchievement_reportAchievements_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_4;
    v21[3] = &unk_2785DD8E8;
    v22 = *(a1 + 32);
    v23 = *(a1 + 64);
    [v16 submitAchievements:v17 whileScreeningChallenges:v18 withEligibleChallenges:v19 handler:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __106__GKAchievement_reportAchievements_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __106__GKAchievement_reportAchievements_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

+ (id)descriptionForAchievement:(id)achievement achievementDescriptions:(id)descriptions
{
  achievementCopy = achievement;
  v6 = MEMORY[0x277CCAC30];
  descriptionsCopy = descriptions;
  identifier = [achievementCopy identifier];
  v9 = [v6 predicateWithFormat:@"identifier == %@", identifier];

  v10 = [descriptionsCopy filteredArrayUsingPredicate:v9];

  if ([v10 count])
  {
    if ([v10 count] >= 2)
    {
      if (!os_log_GKGeneral)
      {
        v11 = GKOSLoggers();
      }

      v12 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        [GKAchievement descriptionForAchievement:v12 achievementDescriptions:achievementCopy];
      }
    }

    firstObject = [v10 firstObject];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      [GKAchievement descriptionForAchievement:v15 achievementDescriptions:achievementCopy];
    }

    firstObject = 0;
  }

  return firstObject;
}

+ (BOOL)showBannerIsSupported
{
  if (showBannerIsSupported_supportsShowBannerOnceToken != -1)
  {
    +[GKAchievement showBannerIsSupported];
  }

  return showBannerIsSupported_supportsShowBanner;
}

uint64_t __38__GKAchievement_showBannerIsSupported__block_invoke()
{
  result = [objc_opt_class() instancesRespondToSelector:sel_showBanner];
  showBannerIsSupported_supportsShowBanner = result;
  return result;
}

+ (BOOL)shouldShowBannerOnReport:(id)report achievementDescription:(id)description reportedAchievements:(id)achievements uiFrameworkMethodsRequired:(BOOL)required
{
  requiredCopy = required;
  reportCopy = report;
  descriptionCopy = description;
  achievementsCopy = achievements;
  v13 = descriptionCopy && [descriptionCopy isReplayable] && +[GKUtils applicationLinkedOnOrAfter:macVersion:](GKUtils, "applicationLinkedOnOrAfter:macVersion:", 1179648, 983040);
  if ([reportCopy showsCompletionBanner] && objc_msgSend(reportCopy, "isCompleted") && (!requiredCopy || objc_msgSend(self, "showBannerIsSupported")))
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __113__GKAchievement_shouldShowBannerOnReport_achievementDescription_reportedAchievements_uiFrameworkMethodsRequired___block_invoke;
    v16[3] = &unk_2785DE370;
    v17 = reportCopy;
    v18 = &v20;
    v19 = v13;
    [achievementsCopy enumerateObjectsUsingBlock:v16];
    v14 = *(v21 + 24);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void __113__GKAchievement_shouldShowBannerOnReport_achievementDescription_reportedAchievements_uiFrameworkMethodsRequired___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 identifier];
  v7 = [*(a1 + 32) identifier];
  v8 = [v6 isEqualToString:v7];

  v9 = v12;
  if (v8)
  {
    v10 = [v12 isCompleted];
    v11 = 1;
    if (v10)
    {
      v11 = *(a1 + 48);
    }

    *(*(*(a1 + 40) + 8) + 24) = v11 & 1;
    *a4 = 1;
    v9 = v12;
  }
}

- (void)reportAchievementWithCompletionHandler:(void *)completionHandler
{
  v4 = MEMORY[0x277CBEA60];
  v5 = completionHandler;
  v6 = [v4 arrayWithObject:self];
  [GKAchievement reportAchievements:v6 withCompletionHandler:v5];
}

+ (id)instanceMethodSignatureForSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___GKAchievement;
  v4 = objc_msgSendSuper2(&v9, sel_instanceMethodSignatureForSelector_);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  }

  v7 = v6;

  return v7;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v10.receiver = self;
  v10.super_class = GKAchievement;
  v5 = [(GKAchievement *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKAchievement *)self forwardingTargetForSelector:selector];
    v7 = [v8 methodSignatureForSelector:selector];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = GKAchievement;
  if ([(GKAchievement *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKAchievement *)self forwardingTargetForSelector:selector];
    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

+ (BOOL)instancesRespondToSelector:(SEL)selector
{
  if (selector)
  {
    if (class_respondsToSelector(self, selector))
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = GKApplicationLinkedOnOrAfter(393216, 0);
      if (v4)
      {

        LOBYTE(v4) = [GKAchievementInternal instancesRespondToSelector:selector];
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  internal = [(GKAchievement *)self internal];
  v6 = [internal valueForKey:keyCopy];

  return v6;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  internal = [(GKAchievement *)self internal];
  [internal setValue:valueCopy forKey:keyCopy];
}

- (id)_achievementDescription
{
  game = [(GKAchievement *)self game];
  gameDescriptorDictionary = [game gameDescriptorDictionary];
  v5 = [GKContentPropertyList localPropertyListForGameDescriptor:gameDescriptorDictionary];

  if (v5 && (-[GKAchievement identifier](self, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), [v5 achievementDescriptionForIdentifier:v6], internal = objc_claimAutoreleasedReturnValue(), v6, internal))
  {
    v8 = [GKAchievementDescription _achievementDescriptionFromGame:game propertyListDictionary:internal];
  }

  else
  {
    v9 = [GKAchievementDescription alloc];
    internal = [(GKAchievement *)self internal];
    v8 = [(GKAchievementDescription *)v9 initWithInternalRepresentation:internal];
  }

  v10 = v8;

  return v10;
}

- (void)initWithIdentifier:forPlayer:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)playerID
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)player
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)reportAchievements:whileScreeningChallenges:withEligibleChallenges:withCompletionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)descriptionForAchievement:(void *)a1 achievementDescriptions:(void *)a2 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_1_5(&dword_227904000, v5, v6, "More than one AchievementDescription found for Achievement with ID: %@. Using the first one found.", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)descriptionForAchievement:(void *)a1 achievementDescriptions:(void *)a2 .cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_1_5(&dword_227904000, v5, v6, "No AchievementDescription could be found for Achievement with ID: %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

@end