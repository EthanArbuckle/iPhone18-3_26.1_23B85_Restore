@interface GKGame
+ (BOOL)instancesRespondToSelector:(SEL)a3;
+ (BOOL)isFirstParty;
+ (BOOL)isGameCenter;
+ (BOOL)isNewsApp:(id)a3;
+ (BOOL)isPreferences;
+ (id)createNonStaticCurrentGame;
+ (id)currentGame;
+ (id)currentGameIncludingGameCenter:(BOOL)a3;
+ (id)instanceMethodSignatureForSelector:(SEL)a3;
+ (void)loadGamesWithBundleIDs:(id)a3 withCompletionHandler:(id)a4;
+ (void)setCurrentGameFromInternal:(id)a3 serverEnvironment:(int64_t)a4;
+ (void)setTestGameWith:(id)a3 protocolVersions:(id)a4 andCompletionHandler:(id)a5;
+ (void)updateGames:(id)a3 withCompletionHandler:(id)a4;
- (BOOL)isAppStore;
- (BOOL)isContacts;
- (BOOL)isDaemon;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGameCenter;
- (BOOL)isGameCenterHostingContainer;
- (BOOL)isGameControllerDaemon;
- (BOOL)isInternalTestApp;
- (BOOL)isNewsApp;
- (BOOL)isSpringBoard;
- (BOOL)respondsToSelector:(SEL)a3;
- (GKGame)init;
- (GKGame)initWithCoder:(id)a3;
- (GKGame)initWithInternalRepresentation:(id)a3;
- (GKGameDescriptor)gameDescriptor;
- (GKGameInfo)gameInfo;
- (GKUtilityService)utilityService;
- (NSDictionary)gameDescriptorDictionary;
- (NSURL)storeURL;
- (id)description;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)getGameMatchesForAchievement:(id)a3 handler:(id)a4;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation GKGame

- (NSURL)storeURL
{
  v2 = [(GKGame *)self internal];
  v3 = [v2 storeURL];

  return v3;
}

- (GKUtilityService)utilityService
{
  v2 = +[GKDaemonProxy daemonProxy];
  v3 = [v2 utilityService];

  return v3;
}

+ (BOOL)isPreferences
{
  if (isPreferences_onceToken != -1)
  {
    +[GKGame isPreferences];
  }

  return isPreferences_isPreferences;
}

void __23__GKGame_isPreferences__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  isPreferences_isPreferences = [v0 _gkIsPreferences];
}

+ (BOOL)isFirstParty
{
  if (isFirstParty_onceToken != -1)
  {
    +[GKGame isFirstParty];
  }

  return isFirstParty_isFirstParty;
}

void __22__GKGame_isFirstParty__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  isFirstParty_isFirstParty = [v0 _gkIsKnownFirstParty];
}

+ (BOOL)isGameCenter
{
  if (isGameCenter_sDispatchOnceToken != -1)
  {
    +[GKGame isGameCenter];
  }

  return isGameCenter_sGameCenter;
}

void __22__GKGame_isGameCenter__block_invoke()
{
  v0 = +[GKGame currentGame];
  isGameCenter_sGameCenter = [v0 isGameCenter];
}

+ (BOOL)isNewsApp:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"com.apple.news";
  v8[1] = @"com.apple.news.gamecentertest";
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v8 count:2];
  LOBYTE(v3) = [v5 containsObject:v4];

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)isSpringBoard
{
  v2 = [(GKGame *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.springboard"];

  return v3;
}

- (BOOL)isGameControllerDaemon
{
  v2 = [(GKGame *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.GameController.gamecontrollerd"];

  return v3;
}

- (BOOL)isDaemon
{
  v2 = [(GKGame *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.gamed"];

  return v3;
}

- (BOOL)isGameCenter
{
  v2 = [(GKGame *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.gamecenter"];

  return v3;
}

- (BOOL)isAppStore
{
  v3 = [(GKGame *)self bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.AppStore"];
  v5 = [(GKGame *)self bundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.TVAppStore"];

  return v4 | v6;
}

- (BOOL)isGameCenterHostingContainer
{
  v2 = [(GKGame *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.GameCenterUI.GameCenterHostingContainer"];

  return v3;
}

- (BOOL)isContacts
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = [(GKGame *)self bundleIdentifier];
  LOBYTE(v2) = [v2 _gkBundleIdentifierIsRelatedToContactsUI:v3];

  return v2;
}

- (BOOL)isInternalTestApp
{
  if (isInternalTestApp_onceToken != -1)
  {
    [GKGame isInternalTestApp];
  }

  v3 = isInternalTestApp_sInternalTestAppIdentifiers;
  v4 = [(GKGame *)self bundleIdentifier];
  LOBYTE(v3) = [v3 containsObject:v4];

  return v3;
}

void __27__GKGame_isInternalTestApp__block_invoke()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"com.iosframeworksqa.GameKitTester";
  v5[1] = @"com.apple.gamekit.GKTester2";
  v5[2] = @"com.iosframeworksqa.GKTester2";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v2 = [v0 setWithArray:v1];
  v3 = isInternalTestApp_sInternalTestAppIdentifiers;
  isInternalTestApp_sInternalTestAppIdentifiers = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)isNewsApp
{
  v2 = [(GKGame *)self bundleIdentifier];
  v3 = [GKGame isNewsApp:v2];

  return v3;
}

+ (id)currentGame
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __21__GKGame_currentGame__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (currentGame_sDispatchOnceToken != -1)
  {
    dispatch_once(&currentGame_sDispatchOnceToken, block);
  }

  v2 = currentGame_sCurrentGame;

  return v2;
}

uint64_t __21__GKGame_currentGame__block_invoke(uint64_t a1)
{
  currentGame_sCurrentGame = [*(a1 + 32) createNonStaticCurrentGame];

  return MEMORY[0x2821F96F8]();
}

+ (id)createNonStaticCurrentGame
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = +[(GKInternalRepresentation *)GKGameInternal];
  v4 = [v2 bundleIdentifier];
  [v3 setBundleIdentifier:v4];

  v5 = [v2 _gkBundleVersion];
  [v3 setBundleVersion:v5];

  v6 = [v2 _gkBundleShortVersion];
  [v3 setShortBundleVersion:v6];

  v7 = [v2 _gkLocalizedName];
  [v3 setName:v7];

  [v3 setPlatform:{+[GKGameDescriptor currentPlatform](GKGameDescriptor, "currentPlatform")}];
  v8 = [[GKGame alloc] initWithInternalRepresentation:v3];

  return v8;
}

+ (id)currentGameIncludingGameCenter:(BOOL)a3
{
  if (currentGameIncludingGameCenter__sDispatchOnceToken != -1)
  {
    +[GKGame currentGameIncludingGameCenter:];
  }

  if (currentGameIncludingGameCenter__isGameCenter == 1 && !a3)
  {
    v4 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
      v4 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [GKGame currentGameIncludingGameCenter:v4];
    }
  }

  v6 = currentGameIncludingGameCenter__sCurrentGame;

  return v6;
}

void __41__GKGame_currentGameIncludingGameCenter___block_invoke()
{
  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = +[(GKInternalRepresentation *)GKGameInternal];
  v1 = [v8 bundleIdentifier];
  [v0 setBundleIdentifier:v1];

  v2 = [v8 _gkBundleVersion];
  [v0 setBundleVersion:v2];

  v3 = [v8 _gkBundleShortVersion];
  [v0 setShortBundleVersion:v3];

  v4 = [v8 _gkLocalizedName];
  [v0 setName:v4];

  v5 = [v0 bundleIdentifier];
  currentGameIncludingGameCenter__isGameCenter = [v5 isEqualToString:@"com.apple.gamecenter"];

  [v0 setPlatform:{+[GKGameDescriptor currentPlatform](GKGameDescriptor, "currentPlatform")}];
  v6 = [[GKGame alloc] initWithInternalRepresentation:v0];
  v7 = currentGameIncludingGameCenter__sCurrentGame;
  currentGameIncludingGameCenter__sCurrentGame = v6;
}

+ (void)setCurrentGameFromInternal:(id)a3 serverEnvironment:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v8 = [a1 currentGame];
    [v8 setEnvironment:a4];
    [v8 setInternal:v6];
  }

  else
  {
    v9 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
      v9 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [GKGame setCurrentGameFromInternal:v6 serverEnvironment:v9];
    }
  }
}

- (GKGame)initWithInternalRepresentation:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[(GKInternalRepresentation *)GKGameInternal];
  }

  v8.receiver = self;
  v8.super_class = GKGame;
  v5 = [(GKGame *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_internal, v4);
  }

  return v6;
}

- (GKGame)init
{
  v3 = +[(GKInternalRepresentation *)GKGameInternal];
  v4 = [(GKGame *)self initWithInternalRepresentation:v3];

  return v4;
}

- (GKGame)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"internal"];
  v6 = [(GKGame *)self initWithInternalRepresentation:v5];
  if (v6)
  {
    v6->_environment = [v4 decodeIntegerForKey:@"environment"];
    v7 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(GKGame *)self internal];
  [v5 encodeObject:v4 forKey:@"internal"];

  [v5 encodeInteger:-[GKGame environment](self forKey:{"environment"), @"environment"}];
}

- (unint64_t)hash
{
  v2 = [(GKGame *)self internal];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(GKGame *)self internal];
    v7 = [v5 internal];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = GKGame;
  v3 = [(GKGame *)&v13 description];
  v4 = [(GKGame *)self bundleIdentifier];
  v5 = [(GKGame *)self adamID];
  v6 = [(GKGame *)self shortBundleVersion];
  v7 = [(GKGame *)self bundleVersion];
  v8 = [(GKGame *)self externalVersion];
  v9 = [(GKGame *)self name];
  if (v9)
  {
    v10 = [(GKGame *)self name];
    v11 = [v3 stringByAppendingFormat:@"bundleID:%@ adamID:%@ shortBundleVersion:%@ bundleVersion:%@ externalVersion:%@ (%@)", v4, v5, v6, v7, v8, v10];
  }

  else
  {
    v11 = [v3 stringByAppendingFormat:@"bundleID:%@ adamID:%@ shortBundleVersion:%@ bundleVersion:%@ externalVersion:%@ (%@)", v4, v5, v6, v7, v8, @"<no metadata>"];
  }

  return v11;
}

- (GKGameDescriptor)gameDescriptor
{
  v2 = [(GKGame *)self internal];
  v3 = [v2 gameDescriptor];

  return v3;
}

- (NSDictionary)gameDescriptorDictionary
{
  v2 = [(GKGame *)self internal];
  v3 = [v2 serverRepresentation];

  return v3;
}

- (GKGameInfo)gameInfo
{
  v5 = [(GKGame *)self internal];
  retstr->var0 = [v5 supportsLeaderboards];
  retstr->var1 = [v5 supportsLeaderboardSets];
  retstr->var2 = [v5 supportsAchievements];
  retstr->var3 = [v5 supportsMultiplayer];
  retstr->var5 = [v5 isArcadeGame];
  retstr->var6 = [v5 supportsChallenges];
  retstr->var7 = [v5 hasAggregateLeaderboard];
  retstr->var8 = [v5 numberOfCategories];
  retstr->var9 = [v5 numberOfLeaderboardSets];
  retstr->var10 = [v5 numberOfAchievements];
  retstr->var11 = [v5 maxAchievementPoints];
  retstr->var4 = [v5 supportsTurnBasedMultiplayer];

  return result;
}

+ (void)loadGamesWithBundleIDs:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKGame.m", 310, "+[GKGame loadGamesWithBundleIDs:withCompletionHandler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v9 = [v5 count];
  if (v9 >= 1)
  {
    v10 = v9;
    v11 = [MEMORY[0x277CBEB98] setWithArray:v5];
    v12 = [v11 allObjects];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__GKGame_loadGamesWithBundleIDs_withCompletionHandler___block_invoke;
    v17[3] = &unk_2785DDBE8;
    v18 = v12;
    v19 = v8;
    v21 = v10;
    v20 = v5;
    v13 = v12;
    [v19 perform:v17];
  }

  if (v6)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__GKGame_loadGamesWithBundleIDs_withCompletionHandler___block_invoke_3;
    v14[3] = &unk_2785DDC10;
    v16 = v6;
    v15 = v8;
    [v15 notifyOnMainQueueWithBlock:v14];
  }
}

void __55__GKGame_loadGamesWithBundleIDs_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameServicePrivate];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__GKGame_loadGamesWithBundleIDs_withCompletionHandler___block_invoke_2;
  v11[3] = &unk_2785DDBC0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v12 = v7;
  v15 = v8;
  v13 = v9;
  v14 = v3;
  v10 = v3;
  [v5 getGameMetadataForBundleIDs:v6 handler:v11];
}

void __55__GKGame_loadGamesWithBundleIDs_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(a1 + 32) setError:a3];
  if ([v5 count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 56)];
    v7 = [v5 _gkMapDictionaryWithKeyPath:@"bundleIdentifier"];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = a1;
    v8 = *(a1 + 40);
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v7 objectForKey:{v13, v17}];
          if (!v14)
          {
            v14 = objc_alloc_init(GKGameInternal);
            [(GKGameDescriptor *)v14 setBundleIdentifier:v13];
          }

          v15 = [[GKGame alloc] initWithInternalRepresentation:v14];
          [v6 addObject:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    a1 = v17;
    [*(v17 + 32) setObject:v6 forKeyedSubscript:@"games"];
  }

  (*(*(a1 + 48) + 16))();

  v16 = *MEMORY[0x277D85DE8];
}

void __55__GKGame_loadGamesWithBundleIDs_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"games"];
  v6 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v5);
}

+ (void)updateGames:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKGame.m", 351, "+[GKGame updateGames:withCompletionHandler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v9 = [v5 count];
  if (v9 >= 1)
  {
    v10 = v9;
    v11 = [v5 _gkDistinctValuesForKeyPath:@"bundleIdentifier"];
    v12 = [v11 allObjects];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __44__GKGame_updateGames_withCompletionHandler___block_invoke;
    v17[3] = &unk_2785DDBE8;
    v18 = v12;
    v21 = v10;
    v19 = v5;
    v20 = v8;
    v13 = v12;
    [v20 perform:v17];
  }

  if (v6)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__GKGame_updateGames_withCompletionHandler___block_invoke_3;
    v14[3] = &unk_2785DDC10;
    v16 = v6;
    v15 = v8;
    [v15 notifyOnMainQueueWithBlock:v14];
  }
}

void __44__GKGame_updateGames_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameServicePrivate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__GKGame_updateGames_withCompletionHandler___block_invoke_2;
  v8[3] = &unk_2785DDBC0;
  v12 = *(a1 + 56);
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = v3;
  v7 = v3;
  [v5 getGameMetadataForBundleIDs:v6 handler:v8];
}

void __44__GKGame_updateGames_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v24 = v6;
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:*(a1 + 56)];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          v14 = [v13 bundleIdentifier];
          if (v14)
          {
            [v7 setObject:v13 forKey:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v10);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = *(a1 + 32);
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * j);
          v21 = [v20 bundleIdentifier];
          if (v21)
          {
            v22 = [v7 objectForKey:v21];
            if (v22)
            {
              [v20 setInternal:v22];
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v17);
    }

    v6 = v24;
  }

  [*(a1 + 40) setError:v6];
  (*(*(a1 + 48) + 16))();

  v23 = *MEMORY[0x277D85DE8];
}

void __44__GKGame_updateGames_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

+ (id)instanceMethodSignatureForSelector:(SEL)a3
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___GKGame;
  v4 = objc_msgSendSuper2(&v9, sel_instanceMethodSignatureForSelector_);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  }

  v7 = v6;

  return v7;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v10.receiver = self;
  v10.super_class = GKGame;
  v5 = [(GKGame *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKGame *)self forwardingTargetForSelector:a3];
    v7 = [v8 methodSignatureForSelector:a3];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = GKGame;
  if ([(GKGame *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKGame *)self forwardingTargetForSelector:a3];
    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

+ (BOOL)instancesRespondToSelector:(SEL)a3
{
  if (a3)
  {
    if (class_respondsToSelector(a1, a3))
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = GKApplicationLinkedOnOrAfter(393216, 657920);
      if (v4)
      {

        LOBYTE(v4) = [GKGameInternal instancesRespondToSelector:a3];
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(GKGame *)self internal];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKGame *)self internal];
  [v8 setValue:v7 forKey:v6];
}

- (void)getGameMatchesForAchievement:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[GKDaemonProxy proxyForLocalPlayer];
  v9 = [v8 gameStatService];
  v10 = [(GKGame *)self gameDescriptor];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__GKGame_GKEntitled__getGameMatchesForAchievement_handler___block_invoke;
  v12[3] = &unk_2785DDC38;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v9 getRecentMatchesForGameDescriptor:v10 achievementIdentifier:v7 handler:v12];
}

void __59__GKGame_GKEntitled__getGameMatchesForAchievement_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          v15 = [GKGameMatch alloc];
          v16 = [(GKGameMatch *)v15 initWithInternalRepresentation:v14 game:*(a1 + 32), v19];
          [v8 addObject:v16];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = 0;
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v8, v6);
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)setTestGameWith:(id)a3 protocolVersions:(id)a4 andCompletionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[GKGame currentGame];
  v11 = [v10 internal];

  [v11 setBundleVersion:v7];
  [v11 setShortBundleVersion:v7];
  v12 = +[GKDaemonProxy daemonProxy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__GKGame_GameKitPrivate__setTestGameWith_protocolVersions_andCompletionHandler___block_invoke;
  v16[3] = &unk_2785DDC60;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  [v12 setTestGame:v11 protocolVersion:v14 reply:v16];
}

void __80__GKGame_GameKitPrivate__setTestGameWith_protocolVersions_andCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_GKGeneral;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __80__GKGame_GameKitPrivate__setTestGameWith_protocolVersions_andCompletionHandler___block_invoke_cold_1(a1);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
      v4 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __80__GKGame_GameKitPrivate__setTestGameWith_protocolVersions_andCompletionHandler___block_invoke_cold_2(a1);
    }
  }

  (*(*(a1 + 48) + 16))();
}

+ (void)currentGameIncludingGameCenter:(void *)a1 .cold.2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCACC8];
  v2 = a1;
  v3 = [v1 callStackSymbols];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_227904000, v2, OS_LOG_TYPE_DEBUG, "+[GKGame currentGame] called from Game Center %@.", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)setCurrentGameFromInternal:(uint64_t)a1 serverEnvironment:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_227904000, a2, OS_LOG_TYPE_DEBUG, "setCurrentGameFromInternal: ignoring -- nil bundleIdentifier :%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __80__GKGame_GameKitPrivate__setTestGameWith_protocolVersions_andCompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_227904000, v3, OS_LOG_TYPE_ERROR, "Failed to set test game with bundle version: %@, and protocols: %@", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __80__GKGame_GameKitPrivate__setTestGameWith_protocolVersions_andCompletionHandler___block_invoke_cold_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_227904000, v3, OS_LOG_TYPE_DEBUG, "Successfully set test game with bundle version: %@, and protocols: %@", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end