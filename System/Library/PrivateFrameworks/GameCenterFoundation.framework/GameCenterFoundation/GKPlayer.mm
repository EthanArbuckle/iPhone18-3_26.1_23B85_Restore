@interface GKPlayer
+ (BOOL)instancesRespondToSelector:(SEL)selector;
+ (BOOL)isGuestPlayerID:(id)d;
+ (GKPlayer)anonymousGuestPlayerWithIdentifier:(NSString *)guestIdentifier;
+ (id)anonymousPlayer;
+ (id)automatchPlayer;
+ (id)canonicalizedPlayerForInternal:(id)internal;
+ (id)gameBundleID;
+ (id)instanceMethodSignatureForSelector:(SEL)selector;
+ (id)playerFromPlayerID:(id)d;
+ (id)unknownPlayer;
+ (void)_loadPlayersForIdentifiers:(id)identifiers withCompletionHandler:(id)handler;
+ (void)loadCompletePlayersForPlayers:(id)players completionHandler:(id)handler;
+ (void)loadPlayersForIdentifiers:(NSArray *)identifiers withCompletionHandler:(void *)completionHandler;
+ (void)loadScopedIDsForPlayerIDs:(id)ds gameBundleID:(id)d handler:(id)handler;
- ($C4B24A06E922887A36692F481211F72A)stats;
- (BOOL)hasPhoto;
- (BOOL)hasValidScopedIDs;
- (BOOL)isArcadeGame;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFamiliarFriend;
- (BOOL)isFriendablePlayer;
- (BOOL)isInContacts;
- (BOOL)isInvitable;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)scopedIDsArePersistent;
- (GKGame)lastPlayedGame;
- (GKLocalPlayerInternal)localInternal;
- (GKPlayer)init;
- (GKPlayer)initWithCoder:(id)coder;
- (GKPlayer)initWithInternalRepresentation:(id)representation;
- (NSNumber)acceptedGameInviteFromThisFriend;
- (NSNumber)automatchedTogether;
- (NSNumber)friendBiDirectional;
- (NSNumber)friendLevel;
- (NSNumber)friendPlayedNearby;
- (NSNumber)friendPlayedWith;
- (NSNumber)initiatedGameInviteToThisFriend;
- (NSString)alias;
- (NSString)cacheKey;
- (NSString)gamePlayerID;
- (NSString)internalPlayerID;
- (NSString)messagesID;
- (NSString)playerID;
- (NSString)referenceKey;
- (NSString)teamPlayerID;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)minimalPlayer;
- (id)searchName;
- (id)sortName;
- (id)valueForUndefinedKey:(id)key;
- (id)vendibleScopedIDs;
- (int64_t)avatarType;
- (unint64_t)hash;
- (void)_postChangeNotification;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)loadCommonFriends:(BOOL)friends asPlayersWithCompletionHandler:(id)handler;
- (void)loadFriendsWithFilter:(id)filter withCompletionHandler:(id)handler;
- (void)loadGamesPlayedDetailsWithCompletionHandler:(id)handler;
- (void)loadGamesPlayedIncludingInstalledGames:(BOOL)games completionHandler:(id)handler;
- (void)loadProfileDiscardingStaleData:(BOOL)data completionHandler:(id)handler;
- (void)loadRecentMatchesForGame:(id)game block:(id)block;
- (void)logAndReportIllegalArcadeAccessTo:(id)to;
- (void)logAndReportScopedIDsError:(id)error;
- (void)postChangeNotification;
- (void)setAcceptedGameInviteFromThisFriend:(id)friend;
- (void)setAutomatchedTogether:(id)together;
- (void)setFriendBiDirectional:(id)directional;
- (void)setFriendLevel:(id)level;
- (void)setFriendPlayedNearby:(id)nearby;
- (void)setFriendPlayedWith:(id)with;
- (void)setInitiatedGameInviteToThisFriend:(id)friend;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)updateScopedIDs:(id)ds;
@end

@implementation GKPlayer

- (GKPlayer)init
{
  v3 = +[(GKInternalRepresentation *)GKPlayerInternal];
  v4 = [(GKPlayer *)self initWithInternalRepresentation:v3];

  return v4;
}

- (GKLocalPlayerInternal)localInternal
{
  v2 = self->_internal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected GKLocalPlayerInternal, got %@", objc_opt_class()];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKPlayer.m"];
    lastPathComponent = [v5 lastPathComponent];
    v7 = [v3 stringWithFormat:@"%@ ([result isKindOfClass:[GKLocalPlayerInternal class]])\n[%s (%s:%d)]", v4, "-[GKPlayer localInternal]", objc_msgSend(lastPathComponent, "UTF8String"), 52];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
  }

  return v2;
}

+ (id)anonymousPlayer
{
  v2 = [GKPlayer alloc];
  v3 = +[(GKInternalRepresentation *)GKAnonymousPlayerInternal];
  v4 = [(GKPlayer *)v2 initWithInternalRepresentation:v3];

  return v4;
}

+ (id)unknownPlayer
{
  v2 = [GKPlayer alloc];
  v3 = +[(GKInternalRepresentation *)GKUnknownPlayerInternal];
  v4 = [(GKPlayer *)v2 initWithInternalRepresentation:v3];

  return v4;
}

+ (id)automatchPlayer
{
  v2 = [GKPlayer alloc];
  v3 = +[(GKInternalRepresentation *)GKAutomatchPlayerInternal];
  v4 = [(GKPlayer *)v2 initWithInternalRepresentation:v3];

  return v4;
}

+ (GKPlayer)anonymousGuestPlayerWithIdentifier:(NSString *)guestIdentifier
{
  v3 = guestIdentifier;
  v4 = +[GKLocalPlayer localPlayer];
  v5 = [GKAnonymousGuestPlayerInternal alloc];
  internal = [v4 internal];
  v7 = [(GKAnonymousGuestPlayerInternal *)v5 initWithHostPlayerInternal:internal guestIdentifier:v3];

  v8 = [[GKPlayer alloc] initWithInternalRepresentation:v7];

  return v8;
}

- (GKPlayer)initWithInternalRepresentation:(id)representation
{
  representationCopy = representation;
  if ([representationCopy isLocalPlayer])
  {
    v6 = objc_alloc_init(GKLocalPlayer);
    [(GKPlayer *)v6 setInternal:representationCopy];
    v7 = +[GKLocalPlayer localPlayers];
    v8 = v7;
    if (v7 && (v9 = [v7 indexOfObject:v6], v9 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v10 = [v8 objectAtIndexedSubscript:v9];
    }

    else
    {
      if (GKApplicationLinkedOnOrAfter(525056, 657923))
      {
        goto LABEL_10;
      }

      v10 = +[GKLocalPlayer localPlayer];
    }

    v12 = v10;

    v6 = v12;
LABEL_10:
    scopedIDs = [representationCopy scopedIDs];
    if (scopedIDs)
    {
      v14 = scopedIDs;
      internal = [(GKPlayer *)v6 internal];
      scopedIDs2 = [internal scopedIDs];

      if (!scopedIDs2)
      {
        scopedIDs3 = [representationCopy scopedIDs];
        internal2 = [(GKPlayer *)v6 internal];
        [internal2 setScopedIDs:scopedIDs3];
      }
    }

    goto LABEL_14;
  }

  v22.receiver = self;
  v22.super_class = GKPlayer;
  v11 = [(GKPlayer *)&v22 init];
  v6 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_internal, representation);
  }

LABEL_14:
  v19 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v20 = GKOSLoggers();
    v19 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [GKPlayer initWithInternalRepresentation:];
  }

  return &v6->super;
}

- (GKPlayer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"internal"];

  v6 = [(GKPlayer *)self initWithInternalRepresentation:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  internal = [(GKPlayer *)self internal];
  [coderCopy encodeObject:internal forKey:@"internal"];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKPlayer;
  [(GKPlayer *)&v4 dealloc];
}

- (GKGame)lastPlayedGame
{
  v3 = [GKGame alloc];
  internal = [(GKPlayer *)self internal];
  lastPlayedGame = [internal lastPlayedGame];
  v6 = [(GKGame *)v3 initWithInternalRepresentation:lastPlayedGame];

  return v6;
}

- ($C4B24A06E922887A36692F481211F72A)stats
{
  internal = [(GKPlayer *)self internal];
  retstr->var0 = [internal numberOfFriends];
  retstr->var1 = [internal numberOfFriendsInCommon];
  retstr->var2 = [internal numberOfGames];
  retstr->var3 = [internal numberOfGamesInCommon];
  retstr->var4 = [internal numberOfAchievements];
  retstr->var5 = [internal numberOfAchievementPoints];
  retstr->var6 = [internal numberOfRequests];
  retstr->var7 = [internal numberOfChallenges];
  retstr->var8 = [internal numberOfTurns];

  return result;
}

- (NSString)messagesID
{
  internal = [(GKPlayer *)self internal];
  messagesID = [internal messagesID];

  return messagesID;
}

- (BOOL)isInContacts
{
  internal = [(GKPlayer *)self internal];
  isInContacts = [internal isInContacts];

  return isInContacts;
}

- (BOOL)isArcadeGame
{
  if (isArcadeGame_onceToken != -1)
  {
    [GKPlayer isArcadeGame];
  }

  return isArcadeGame_isArcadeGame;
}

void __24__GKPlayer_isArcadeGame__block_invoke()
{
  v0 = +[GKDaemonProxy proxyForLocalPlayer];
  v1 = [v0 profileService];

  [v1 getOcelotStateForCurrentAppWithHandler:&__block_literal_global_43_0];
}

- (NSString)playerID
{
  if ([(GKPlayer *)self isArcadeGame])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __20__GKPlayer_playerID__block_invoke;
    block[3] = &unk_2785DD760;
    block[4] = self;
    if (playerID_onceToken != -1)
    {
      dispatch_once(&playerID_onceToken, block);
    }

    playerID = @"playerID is not available for Arcade games";
  }

  else
  {
    internal = [(GKPlayer *)self internal];
    playerID = [internal playerID];
  }

  return playerID;
}

+ (id)gameBundleID
{
  v2 = +[GKGame currentGame];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (NSString)gamePlayerID
{
  vendibleScopedIDs = [(GKPlayer *)self vendibleScopedIDs];
  gamePlayerID = [vendibleScopedIDs gamePlayerID];

  return gamePlayerID;
}

- (NSString)teamPlayerID
{
  if ([(GKPlayer *)self isArcadeGame])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__GKPlayer_teamPlayerID__block_invoke;
    block[3] = &unk_2785DD760;
    block[4] = self;
    if (teamPlayerID_onceToken != -1)
    {
      dispatch_once(&teamPlayerID_onceToken, block);
    }
  }

  vendibleScopedIDs = [(GKPlayer *)self vendibleScopedIDs];
  teamPlayerID = [vendibleScopedIDs teamPlayerID];

  return teamPlayerID;
}

- (void)logAndReportIllegalArcadeAccessTo:(id)to
{
  v13[3] = *MEMORY[0x277D85DE8];
  toCopy = to;
  v4 = +[GKPreferences shared];
  isInternalBuild = [v4 isInternalBuild];

  v6 = os_log_GKGeneral;
  if (isInternalBuild)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
      v6 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [GKPlayer logAndReportIllegalArcadeAccessTo:];
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [GKPlayer logAndReportIllegalArcadeAccessTo:];
    }
  }

  v9 = +[GKAPIReporter reporter];
  v12[0] = @"eventType";
  v12[1] = @"apiType";
  v13[0] = @"deprecatedAPIUsage";
  v13[1] = @"property";
  v12[2] = @"apiName";
  v13[2] = toCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [v9 recordPerformanceMetrics:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)scopedIDsArePersistent
{
  vendibleScopedIDs = [(GKPlayer *)self vendibleScopedIDs];
  arePersistent = [vendibleScopedIDs arePersistent];

  return arePersistent;
}

- (id)vendibleScopedIDs
{
  hasValidScopedIDs = [(GKPlayer *)self hasValidScopedIDs];
  internal = [(GKPlayer *)self internal];
  scopedIDs = [internal scopedIDs];
  v6 = scopedIDs;
  if (hasValidScopedIDs)
  {

    goto LABEL_9;
  }

  if (v6)
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __29__GKPlayer_vendibleScopedIDs__block_invoke_2;
    v19 = &unk_2785DD760;
    selfCopy = self;
    if (vendibleScopedIDs_onceToken_75 == -1)
    {
      goto LABEL_8;
    }

    v14 = &vendibleScopedIDs_onceToken_75;
    p_block = &v16;
  }

  else
  {
    internal2 = [(GKPlayer *)self internal];
    playerID = [internal2 playerID];
    v9 = [GKScopedIDs availableForPlayerID:playerID];

    if (!v9)
    {
      goto LABEL_8;
    }

    block = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __29__GKPlayer_vendibleScopedIDs__block_invoke;
    v24 = &unk_2785DD760;
    selfCopy2 = self;
    if (vendibleScopedIDs_onceToken == -1)
    {
      goto LABEL_8;
    }

    v14 = &vendibleScopedIDs_onceToken;
    p_block = &block;
  }

  dispatch_once(v14, p_block);
LABEL_8:
  v10 = [(GKPlayer *)self internal:v16];
  playerID2 = [v10 playerID];
  v12 = +[GKPlayer gameBundleID];
  v6 = [GKScopedIDs makeNonpersistentWithPlayerID:playerID2 gameBundleID:v12];

LABEL_9:

  return v6;
}

- (BOOL)hasValidScopedIDs
{
  internal = [(GKPlayer *)self internal];
  scopedIDs = [internal scopedIDs];
  internal2 = [(GKPlayer *)self internal];
  playerID = [internal2 playerID];
  v7 = +[GKPlayer gameBundleID];
  v8 = [scopedIDs isForPlayerID:playerID gameBundleID:v7];

  return v8;
}

- (void)logAndReportScopedIDsError:(id)error
{
  v13[2] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = +[GKPreferences shared];
  isInternalBuild = [v5 isInternalBuild];

  if (isInternalBuild)
  {
    v7 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
      v7 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(GKPlayer *)errorCopy logAndReportScopedIDsError:v7, self];
    }
  }

  v9 = +[GKAPIReporter reporter];
  v12[0] = @"eventType";
  v12[1] = @"errorType";
  v13[0] = @"scopedIDsError";
  v13[1] = errorCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v9 recordPerformanceMetrics:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateScopedIDs:(id)ds
{
  v24 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  internal = [(GKPlayer *)self internal];
  playerID = [internal playerID];

  if ([GKScopedIDs availableForPlayerID:playerID])
  {
    v7 = +[GKPlayer gameBundleID];
    internal2 = [(GKPlayer *)self internal];
    scopedIDs = [internal2 scopedIDs];

    if ([scopedIDs arePersistent] && objc_msgSend(scopedIDs, "isForPlayerID:gameBundleID:", playerID, v7))
    {
      if (!os_log_GKGeneral)
      {
        v10 = GKOSLoggers();
      }

      v11 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v21 = playerID;
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&dword_227904000, v11, OS_LOG_TYPE_INFO, "Not updating persistent scoped ids for playerID: %@ gameBundleID: %@", buf, 0x16u);
      }

      dsCopy[2](dsCopy);
    }

    else
    {
      objc_initWeak(buf, self);
      v19 = playerID;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __28__GKPlayer_updateScopedIDs___block_invoke;
      v16[3] = &unk_2785DFC48;
      objc_copyWeak(&v18, buf);
      v16[4] = self;
      v17 = dsCopy;
      [GKPlayer loadScopedIDsForPlayerIDs:v14 gameBundleID:v7 handler:v16];

      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v12 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
      v12 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(GKPlayer *)v12 updateScopedIDs:?];
    }

    dsCopy[2](dsCopy);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __28__GKPlayer_updateScopedIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [v6 allValues];

  v9 = [v8 firstObject];
  v10 = [WeakRetained internal];
  [v10 setScopedIDs:v9];

  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __28__GKPlayer_updateScopedIDs___block_invoke_cold_1(a1, v12, v5);
    }
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)loadScopedIDsForPlayerIDs:(id)ds gameBundleID:(id)d handler:(id)handler
{
  v18[1] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  handlerCopy = handler;
  if ([dsCopy count])
  {
    v10 = +[GKDaemonProxy proxyForLocalPlayer];
    profileService = [v10 profileService];

    v18[0] = dCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__GKPlayer_loadScopedIDsForPlayerIDs_gameBundleID_handler___block_invoke;
    v14[3] = &unk_2785DE568;
    v15 = dsCopy;
    v16 = dCopy;
    v17 = handlerCopy;
    [profileService loadScopedPlayerIDs:v15 gameBundleIDs:v12 handler:v14];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEC10], 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __59__GKPlayer_loadScopedIDsForPlayerIDs_gameBundleID_handler___block_invoke(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
    v7 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = 138413058;
    v15 = v5;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_227904000, v7, OS_LOG_TYPE_DEBUG, "Loaded scoped ids: %@ for playerIDs: %@, gameBundleID: %@, error: %@", &v14, 0x2Au);
  }

  v9 = a1[6];
  if (v6)
  {
    (*(v9 + 16))(v9, MEMORY[0x277CBEC10], v6);
  }

  else
  {
    v10 = [GKScopedIDs makePlayerIDtoScopedIDsDictFromScopedIDs:v5];
    (*(v9 + 16))(v9, v10, 0);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSNumber)friendLevel
{
  internal = [(GKPlayer *)self internal];
  friendLevel = [internal friendLevel];

  return friendLevel;
}

- (NSNumber)friendBiDirectional
{
  internal = [(GKPlayer *)self internal];
  friendBiDirectional = [internal friendBiDirectional];

  return friendBiDirectional;
}

- (NSNumber)friendPlayedWith
{
  internal = [(GKPlayer *)self internal];
  friendPlayedWith = [internal friendPlayedWith];

  return friendPlayedWith;
}

- (NSNumber)friendPlayedNearby
{
  internal = [(GKPlayer *)self internal];
  friendPlayedNearby = [internal friendPlayedNearby];

  return friendPlayedNearby;
}

- (NSNumber)acceptedGameInviteFromThisFriend
{
  internal = [(GKPlayer *)self internal];
  acceptedGameInviteFromThisFriend = [internal acceptedGameInviteFromThisFriend];

  return acceptedGameInviteFromThisFriend;
}

- (NSNumber)initiatedGameInviteToThisFriend
{
  internal = [(GKPlayer *)self internal];
  initiatedGameInviteToThisFriend = [internal initiatedGameInviteToThisFriend];

  return initiatedGameInviteToThisFriend;
}

- (NSNumber)automatchedTogether
{
  internal = [(GKPlayer *)self internal];
  automatchedTogether = [internal automatchedTogether];

  return automatchedTogether;
}

- (NSString)alias
{
  internal = [(GKPlayer *)self internal];
  alias = [internal alias];

  if (![alias length])
  {
    if (alias_onceToken != -1)
    {
      [GKPlayer alias];
    }

    v4 = alias_sUnknownPlayerNickname;

    alias = v4;
  }

  return alias;
}

uint64_t __17__GKPlayer_alias__block_invoke()
{
  alias_sUnknownPlayerNickname = +[_TtC20GameCenterFoundation19GCFLocalizedStrings UNKNOWN_PLAYER_NICKNAME];

  return MEMORY[0x2821F96F8]();
}

- (int64_t)avatarType
{
  internal = [(GKPlayer *)self internal];
  avatarType = [internal avatarType];
  integerValue = [avatarType integerValue];

  return integerValue;
}

- (void)setFriendLevel:(id)level
{
  levelCopy = level;
  internal = [(GKPlayer *)self internal];
  [internal setFriendLevel:levelCopy];
}

- (void)setFriendBiDirectional:(id)directional
{
  directionalCopy = directional;
  internal = [(GKPlayer *)self internal];
  [internal setFriendBiDirectional:directionalCopy];
}

- (void)setFriendPlayedWith:(id)with
{
  withCopy = with;
  internal = [(GKPlayer *)self internal];
  [internal setFriendPlayedWith:withCopy];
}

- (void)setFriendPlayedNearby:(id)nearby
{
  nearbyCopy = nearby;
  internal = [(GKPlayer *)self internal];
  [internal setFriendPlayedNearby:nearbyCopy];
}

- (void)setAcceptedGameInviteFromThisFriend:(id)friend
{
  friendCopy = friend;
  internal = [(GKPlayer *)self internal];
  [internal setAcceptedGameInviteFromThisFriend:friendCopy];
}

- (void)setInitiatedGameInviteToThisFriend:(id)friend
{
  friendCopy = friend;
  internal = [(GKPlayer *)self internal];
  [internal setInitiatedGameInviteToThisFriend:friendCopy];
}

- (void)setAutomatchedTogether:(id)together
{
  togetherCopy = together;
  internal = [(GKPlayer *)self internal];
  [internal setAutomatchedTogether:togetherCopy];
}

- (BOOL)isInvitable
{
  internal = [(GKPlayer *)self internal];
  isLocalPlayer = [internal isLocalPlayer];

  if (isLocalPlayer)
  {
    return 0;
  }

  internal2 = [(GKPlayer *)self internal];
  friendBiDirectional = [internal2 friendBiDirectional];
  if ([friendBiDirectional isEqualToNumber:&unk_283B33280])
  {
    v5 = 1;
  }

  else
  {
    internal3 = [(GKPlayer *)self internal];
    friendPlayedWith = [internal3 friendPlayedWith];
    if ([friendPlayedWith isEqualToNumber:&unk_283B33280])
    {
      v5 = 1;
    }

    else
    {
      internal4 = [(GKPlayer *)self internal];
      friendPlayedNearby = [internal4 friendPlayedNearby];
      v5 = [friendPlayedNearby isEqualToNumber:&unk_283B33280];
    }
  }

  return v5;
}

- (id)description
{
  internal = [(GKPlayer *)self internal];
  if (internal && [MEMORY[0x277CCA8D8] _gkMainBundleIsGameCenterSystemProcess])
  {
    v4 = MEMORY[0x277CCACA8];
    internal2 = [(GKPlayer *)self internal];
    playerID = [internal2 playerID];
    v7 = [v4 stringWithFormat:@"playerID:%@ ", playerID];
  }

  else
  {
    v7 = &stru_283AFD1E0;
  }

  internal3 = [(GKPlayer *)self internal];

  if (internal3)
  {
    internal4 = [(GKPlayer *)self internal];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v43.receiver = self;
      v43.super_class = GKPlayer;
      v11 = [(GKPlayer *)&v43 description];
      alias = [(GKPlayer *)self alias];
      v13 = [(GKPlayer *)self displayNameWithOptions:0];
      internal5 = [(GKPlayer *)self internal];
      date = [internal5 date];
      internal6 = [(GKPlayer *)self internal];
      message = [internal6 message];
      v18 = [v11 stringByAppendingFormat:@"(%@alias:%@ name:%@ date:%@ message:%@)", v7, alias, v13, date, message];
    }

    else
    {
      v42.receiver = self;
      v42.super_class = GKPlayer;
      v30 = [(GKPlayer *)&v42 description];
      alias2 = [(GKPlayer *)self alias];
      v40 = +[GKPlayer gameBundleID];
      internal7 = [(GKPlayer *)self internal];
      scopedIDs = [internal7 scopedIDs];
      gamePlayerID = [scopedIDs gamePlayerID];
      internal8 = [(GKPlayer *)self internal];
      scopedIDs2 = [internal8 scopedIDs];
      teamPlayerID = [scopedIDs2 teamPlayerID];
      v19 = MEMORY[0x277CCABB0];
      internal9 = [(GKPlayer *)self internal];
      scopedIDs3 = [internal9 scopedIDs];
      v20 = [v19 numberWithBool:{objc_msgSend(scopedIDs3, "arePersistent")}];
      v29 = [(GKPlayer *)self displayNameWithOptions:0];
      [(GKPlayer *)self status];
      v28 = v39 = v7;
      friendBiDirectional = [(GKPlayer *)self friendBiDirectional];
      friendPlayedWith = [(GKPlayer *)self friendPlayedWith];
      friendPlayedNearby = [(GKPlayer *)self friendPlayedNearby];
      acceptedGameInviteFromThisFriend = [(GKPlayer *)self acceptedGameInviteFromThisFriend];
      initiatedGameInviteToThisFriend = [(GKPlayer *)self initiatedGameInviteToThisFriend];
      automatchedTogether = [(GKPlayer *)self automatchedTogether];
      v11 = v30;
      v18 = [v30 stringByAppendingFormat:@"(%@alias:%@ gameBundleID:%@ gamePlayerID:%@ teamPlayerID:%@ scopedIDsArePersistent:%@ name:%@ status:%@ friendBiDirectional:%@ friendPlayedWith:%@ friendPlayedNearby:%@ acceptedGameInviteFromThisFriend:%@ initiatedGameInviteToThisFriend:%@ automatchedTogether:%@)", v39, alias2, v40, gamePlayerID, teamPlayerID, v20, v29, v28, friendBiDirectional, friendPlayedWith, friendPlayedNearby, acceptedGameInviteFromThisFriend, initiatedGameInviteToThisFriend, automatchedTogether];

      v7 = v39;
    }
  }

  else
  {
    v44.receiver = self;
    v44.super_class = GKPlayer;
    v11 = [(GKPlayer *)&v44 description];
    v18 = [v11 stringByAppendingString:@" ****** EMPTY ******"];
  }

  return v18;
}

- (unint64_t)hash
{
  internal = [(GKPlayer *)self internal];
  v3 = [internal hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    internal = [(GKPlayer *)self internal];
    internal2 = [v5 internal];

    v8 = [internal isEqual:internal2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)cacheKey
{
  v3 = objc_opt_class();
  internal = [(GKPlayer *)self internal];
  playerID = [internal playerID];
  v6 = [v3 cacheKeyForPlayerID:playerID];

  return v6;
}

- (BOOL)hasPhoto
{
  internal = [(GKPlayer *)self internal];
  photos = [internal photos];
  v4 = [photos count] != 0;

  return v4;
}

- (BOOL)isFamiliarFriend
{
  internal = [(GKPlayer *)self internal];
  v3 = [internal defaultFamiliarity] == 2;

  return v3;
}

+ (void)loadPlayersForIdentifiers:(NSArray *)identifiers withCompletionHandler:(void *)completionHandler
{
  v6 = identifiers;
  v7 = completionHandler;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKPlayer.m", 527, "+[GKPlayer loadPlayersForIdentifiers:withCompletionHandler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__GKPlayer_loadPlayersForIdentifiers_withCompletionHandler___block_invoke;
  v17[3] = &unk_2785DFC98;
  v17[4] = v18;
  [v9 perform:v17];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__GKPlayer_loadPlayersForIdentifiers_withCompletionHandler___block_invoke_3;
  v12[3] = &unk_2785DFCC0;
  v15 = v18;
  v10 = v7;
  v14 = v10;
  selfCopy = self;
  v11 = v6;
  v13 = v11;
  [v9 notifyOnMainQueueWithBlock:v12];

  _Block_object_dispose(v18, 8);
}

void __60__GKPlayer_loadPlayersForIdentifiers_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 profileService];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__GKPlayer_loadPlayersForIdentifiers_withCompletionHandler___block_invoke_2;
  v8[3] = &unk_2785DFC70;
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 getOcelotStateForCurrentAppWithHandler:v8];
}

void __60__GKPlayer_loadPlayersForIdentifiers_withCompletionHandler___block_invoke_3(void *a1)
{
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v2 = [MEMORY[0x277CCA9B8] userErrorForCode:31 underlyingError:0];
    v3 = v2;
    if (a1[5])
    {
      if (!os_log_GKGeneral)
      {
        v4 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        __60__GKPlayer_loadPlayersForIdentifiers_withCompletionHandler___block_invoke_3_cold_1();
      }

      (*(a1[5] + 16))();

      return;
    }
  }

  v5 = a1[7];
  v6 = a1[4];
  v7 = a1[5];

  [v5 _loadPlayersForIdentifiers:v6 withCompletionHandler:v7];
}

+ (void)_loadPlayersForIdentifiers:(id)identifiers withCompletionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "GKPlayer: _loadPlayersForIdentifiers:", buf, 2u);
  }

  [identifiersCopy enumerateObjectsWithOptions:1 usingBlock:&__block_literal_global_121];
  v9 = [identifiersCopy count];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:v9];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:v9];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_2;
  v26[3] = &unk_2785DFD08;
  v12 = v11;
  v27 = v12;
  v13 = v10;
  v28 = v13;
  [identifiersCopy enumerateObjectsUsingBlock:v26];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKPlayer.m", 583, "+[GKPlayer _loadPlayersForIdentifiers:withCompletionHandler:]"];
  v15 = [GKDispatchGroup dispatchGroupWithName:v14];

  if (v9 < 1)
  {
    v16 = [MEMORY[0x277CCA9B8] userErrorForCode:17 underlyingError:0];
    [v15 setError:v16];
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_3;
    v20[3] = &unk_2785DFDA8;
    v21 = v13;
    v25 = v9;
    v22 = v12;
    v23 = identifiersCopy;
    v24 = v15;
    [v24 perform:v20];

    v16 = v21;
  }

  if (handlerCopy)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_137;
    v17[3] = &unk_2785DDC10;
    v19 = handlerCopy;
    v18 = v15;
    [v18 notifyOnMainQueueWithBlock:v17];
  }
}

void __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parameter: 'identifiers' parameter must contain an array of playerIDs as NSString objects, received %@ instead.", objc_opt_class()];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKPlayer.m"];
    v5 = [v4 lastPathComponent];
    v6 = [v2 stringWithFormat:@"%@ ([obj isKindOfClass:[NSString class]])\n[%s (%s:%d)]", v3, "+[GKPlayer _loadPlayersForIdentifiers:withCompletionHandler:]_block_invoke", objc_msgSend(v5, "UTF8String"), 561];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v6}];
  }
}

void __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [GKPlayer isGuestPlayerID:v5];
  v4 = 40;
  if (v3)
  {
    v4 = 32;
  }

  [*(a1 + v4) addObject:v5];
}

void __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKLocalPlayer localPlayer];
  v5 = +[GKDaemonProxy proxyForLocalPlayer];
  v6 = [v5 profileService];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_4;
  v10[3] = &unk_2785DFD80;
  v16 = *(a1 + 64);
  v11 = v4;
  v7 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = v3;
  v8 = v3;
  v9 = v4;
  [v6 getProfilesForPlayerIDs:v7 handler:v10];
}

void __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_4_cold_1();
    }
  }

  v8 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_130;
  v11[3] = &unk_2785DFD58;
  v19 = *(a1 + 72);
  v12 = *(a1 + 32);
  v13 = v5;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = v6;
  v18 = *(a1 + 64);
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, v11);
}

void __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_130(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:*(a1 + 88) + 1];
  v3 = [*(a1 + 32) internal];
  v4 = [v3 playerID];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 internal];
    v7 = [v6 playerID];
    [v2 setObject:v5 forKeyedSubscript:v7];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [[GKPlayer alloc] initWithInternalRepresentation:*(*(&v30 + 1) + 8 * i)];
        v14 = [(GKPlayer *)v13 internal];
        v15 = [v14 playerID];

        if (v15)
        {
          [v2 setObject:v13 forKeyedSubscript:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  v16 = *(a1 + 48);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_2_132;
  v28[3] = &unk_2785DFD30;
  v17 = v2;
  v29 = v17;
  [v16 enumerateObjectsUsingBlock:v28];
  v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a1 + 88)];
  v19 = *(a1 + 56);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_3_133;
  v25[3] = &unk_2785DFD08;
  v20 = v17;
  v26 = v20;
  v21 = v18;
  v27 = v21;
  [v19 enumerateObjectsUsingBlock:v25];
  v22 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v23 = GKOSLoggers();
    v22 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_130_cold_1((a1 + 48), v22, v21);
  }

  [*(a1 + 64) setObject:v21 forKeyedSubscript:@"players"];
  [*(a1 + 64) setError:*(a1 + 72)];
  (*(*(a1 + 80) + 16))();

  v24 = *MEMORY[0x277D85DE8];
}

void __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_2_132(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 componentsSeparatedByString:@"_"];
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:1];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (v6)
  {
    v7 = [GKAnonymousGuestPlayerInternal alloc];
    v8 = [v6 internal];
    v9 = [(GKAnonymousGuestPlayerInternal *)v7 initWithHostPlayerInternal:v8 guestIdentifier:v5];

    v10 = [[GKPlayer alloc] initWithInternalRepresentation:v9];
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v11];
  }
}

void __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_3_133(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
    v4 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
      v4 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_3_133_cold_1(v3, v4);
    }
  }
}

void __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_137(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"players"];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)_postChangeNotification
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__GKPlayer__postChangeNotification__block_invoke;
  block[3] = &unk_2785DD760;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __35__GKPlayer__postChangeNotification__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:GKPlayerDidChangeNotificationName object:*(a1 + 32)];
}

- (void)postChangeNotification
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];

  [(GKPlayer *)self performSelector:sel__postChangeNotification withObject:0 afterDelay:0.1];
}

- (void)loadFriendsWithFilter:(id)filter withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKPlayer.m", 677, "-[GKPlayer loadFriendsWithFilter:withCompletionHandler:]"];
  v7 = [GKDispatchGroup dispatchGroupWithName:v6];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__GKPlayer_loadFriendsWithFilter_withCompletionHandler___block_invoke;
  v15[3] = &unk_2785DD898;
  v15[4] = self;
  v8 = v7;
  v16 = v8;
  [v8 perform:v15];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__GKPlayer_loadFriendsWithFilter_withCompletionHandler___block_invoke_3;
  v11[3] = &unk_2785DE948;
  v12 = v8;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = v8;
  [v10 notifyOnMainQueueWithBlock:v11];
}

void __56__GKPlayer_loadFriendsWithFilter_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 friendServicePrivate];
  v6 = [*(a1 + 32) internal];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__GKPlayer_loadFriendsWithFilter_withCompletionHandler___block_invoke_2;
  v8[3] = &unk_2785DDC38;
  v9 = *(a1 + 40);
  v10 = v3;
  v7 = v3;
  [v5 getCommonFriendsForPlayer:v6 handler:v8];
}

uint64_t __56__GKPlayer_loadFriendsWithFilter_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"friends"];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __56__GKPlayer_loadFriendsWithFilter_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"friends"];
  v2 = [v6 _gkValuesForKeyPath:@"playerID"];
  [*(a1 + 40) setFriends:v2];

  [*(a1 + 40) postChangeNotification];
  v3 = [v6 _gkMapConcurrentlyWithBlock:&__block_literal_global_146];
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = [*(a1 + 32) error];
    (*(v4 + 16))(v4, v3, v5);
  }
}

GKPlayer *__56__GKPlayer_loadFriendsWithFilter_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GKPlayer alloc] initWithInternalRepresentation:v2];

  return v3;
}

- (void)loadCommonFriends:(BOOL)friends asPlayersWithCompletionHandler:(id)handler
{
  friendsCopy = friends;
  handlerCopy = handler;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKPlayer.m", 703, "-[GKPlayer loadCommonFriends:asPlayersWithCompletionHandler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  if (friendsCopy)
  {
    v9 = v19;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v10 = __61__GKPlayer_loadCommonFriends_asPlayersWithCompletionHandler___block_invoke;
  }

  else
  {
    v9 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v10 = __61__GKPlayer_loadCommonFriends_asPlayersWithCompletionHandler___block_invoke_3;
  }

  v9[2] = v10;
  v9[3] = &unk_2785DD898;
  v9[4] = self;
  v11 = v8;
  v9[5] = v11;
  [v11 perform:v9];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__GKPlayer_loadCommonFriends_asPlayersWithCompletionHandler___block_invoke_5;
  v14[3] = &unk_2785DE948;
  v15 = v11;
  selfCopy = self;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = v11;
  [v13 notifyOnMainQueueWithBlock:v14];
}

void __61__GKPlayer_loadCommonFriends_asPlayersWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 friendServicePrivate];
  v6 = [*(a1 + 32) internal];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__GKPlayer_loadCommonFriends_asPlayersWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_2785DDC38;
  v9 = *(a1 + 40);
  v10 = v3;
  v7 = v3;
  [v5 getCommonFriendsForPlayer:v6 handler:v8];
}

uint64_t __61__GKPlayer_loadCommonFriends_asPlayersWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"friends"];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __61__GKPlayer_loadCommonFriends_asPlayersWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 friendService];
  v6 = [*(a1 + 32) internal];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__GKPlayer_loadCommonFriends_asPlayersWithCompletionHandler___block_invoke_4;
  v8[3] = &unk_2785DDC38;
  v9 = *(a1 + 40);
  v10 = v3;
  v7 = v3;
  [v5 getFriendsForPlayer:v6 handler:v8];
}

uint64_t __61__GKPlayer_loadCommonFriends_asPlayersWithCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"friends"];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __61__GKPlayer_loadCommonFriends_asPlayersWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"friends"];
  v2 = [v6 _gkValuesForKeyPath:@"playerID"];
  [*(a1 + 40) setFriends:v2];

  [*(a1 + 40) postChangeNotification];
  v3 = [v6 _gkMapConcurrentlyWithBlock:&__block_literal_global_148];
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = [*(a1 + 32) error];
    (*(v4 + 16))(v4, v3, v5);
  }
}

GKPlayer *__61__GKPlayer_loadCommonFriends_asPlayersWithCompletionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GKPlayer alloc] initWithInternalRepresentation:v2];

  return v3;
}

- (void)loadRecentMatchesForGame:(id)game block:(id)block
{
  gameCopy = game;
  blockCopy = block;
  if (blockCopy)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKPlayer.m", 743, "-[GKPlayer loadRecentMatchesForGame:block:]"];
    v9 = [GKDispatchGroup dispatchGroupWithName:v8];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __43__GKPlayer_loadRecentMatchesForGame_block___block_invoke;
    v15[3] = &unk_2785DD910;
    v16 = gameCopy;
    selfCopy = self;
    v10 = v9;
    v18 = v10;
    [v10 perform:v15];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__GKPlayer_loadRecentMatchesForGame_block___block_invoke_4;
    v12[3] = &unk_2785DDC10;
    v13 = v10;
    v14 = blockCopy;
    v11 = v10;
    [v11 notifyOnMainQueueWithBlock:v12];
  }
}

void __43__GKPlayer_loadRecentMatchesForGame_block___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameStatService];
  v6 = [a1[4] gameDescriptor];
  v7 = [a1[5] isLocalPlayer];
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [a1[5] internal];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__GKPlayer_loadRecentMatchesForGame_block___block_invoke_2;
  v10[3] = &unk_2785DFE18;
  v11 = a1[6];
  v12 = a1[4];
  v13 = v3;
  v9 = v3;
  [v5 getRecentMatchesForGameDescriptor:v6 otherPlayer:v8 handler:v10];
  if ((v7 & 1) == 0)
  {
  }
}

void __43__GKPlayer_loadRecentMatchesForGame_block___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__GKPlayer_loadRecentMatchesForGame_block___block_invoke_3;
    v10[3] = &unk_2785DFDF0;
    v8 = *(a1 + 32);
    v11 = *(a1 + 40);
    v9 = [v6 _gkMapConcurrentlyWithBlock:v10];
    [v8 setObject:v9 forKeyedSubscript:@"matches"];
  }

  [*(a1 + 32) setError:v7];
  (*(*(a1 + 48) + 16))();
}

GKGameMatch *__43__GKPlayer_loadRecentMatchesForGame_block___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[GKGameMatch alloc] initWithInternalRepresentation:v3 game:*(a1 + 32)];

  return v4;
}

void __43__GKPlayer_loadRecentMatchesForGame_block___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"matches"];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)loadGamesPlayedIncludingInstalledGames:(BOOL)games completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKPlayer.m", 773, "-[GKPlayer loadGamesPlayedIncludingInstalledGames:completionHandler:]"];
    v8 = [GKDispatchGroup dispatchGroupWithName:v7];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__GKPlayer_loadGamesPlayedIncludingInstalledGames_completionHandler___block_invoke;
    v14[3] = &unk_2785DECC0;
    v14[4] = self;
    gamesCopy = games;
    v9 = v8;
    v15 = v9;
    [v9 perform:v14];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__GKPlayer_loadGamesPlayedIncludingInstalledGames_completionHandler___block_invoke_4;
    v11[3] = &unk_2785DDC10;
    v12 = v9;
    v13 = handlerCopy;
    v10 = v9;
    [v10 notifyOnMainQueueWithBlock:v11];
  }
}

void __69__GKPlayer_loadGamesPlayedIncludingInstalledGames_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameServicePrivate];
  v6 = [*(a1 + 32) internal];
  v7 = *(a1 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__GKPlayer_loadGamesPlayedIncludingInstalledGames_completionHandler___block_invoke_2;
  v11[3] = &unk_2785DFE18;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v12 = v8;
  v13 = v9;
  v14 = v3;
  v10 = v3;
  [v5 getGamesForPlayer:v6 includeInstalled:v7 handler:v11];
}

uint64_t __69__GKPlayer_loadGamesPlayedIncludingInstalledGames_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__GKPlayer_loadGamesPlayedIncludingInstalledGames_completionHandler___block_invoke_3;
  v12[3] = &unk_2785DFE40;
  v7 = *(a1 + 32);
  v12[4] = *(a1 + 40);
  v8 = a4;
  v9 = a3;
  v10 = [a2 _gkMapConcurrentlyWithBlock:v12];
  [v7 setObject:v10 forKeyedSubscript:@"games"];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"seed"];
  [*(a1 + 32) setError:v8];

  return (*(*(a1 + 48) + 16))();
}

GKGameRecord *__69__GKPlayer_loadGamesPlayedIncludingInstalledGames_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[GKGameRecord alloc] initWithInternalRepresentation:v3 player:*(a1 + 32)];

  return v4;
}

void __69__GKPlayer_loadGamesPlayedIncludingInstalledGames_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"games"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"seed"];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v5, v3, v4);
}

- (void)loadGamesPlayedDetailsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKPlayer.m", 796, "-[GKPlayer loadGamesPlayedDetailsWithCompletionHandler:]"];
    v6 = [GKDispatchGroup dispatchGroupWithName:v5];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__GKPlayer_loadGamesPlayedDetailsWithCompletionHandler___block_invoke;
    v12[3] = &unk_2785DD898;
    v12[4] = self;
    v7 = v6;
    v13 = v7;
    [v7 perform:v12];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__GKPlayer_loadGamesPlayedDetailsWithCompletionHandler___block_invoke_4;
    v9[3] = &unk_2785DDC10;
    v10 = v7;
    v11 = handlerCopy;
    v8 = v7;
    [v8 notifyOnMainQueueWithBlock:v9];
  }
}

void __56__GKPlayer_loadGamesPlayedDetailsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameServicePrivate];
  v6 = [*(a1 + 32) internal];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__GKPlayer_loadGamesPlayedDetailsWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_2785DFE18;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v13 = v3;
  v9 = v3;
  [v5 getGamesForPlayer:v6 includeInstalled:0 handler:v10];
}

uint64_t __56__GKPlayer_loadGamesPlayedDetailsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__GKPlayer_loadGamesPlayedDetailsWithCompletionHandler___block_invoke_3;
  v12[3] = &unk_2785DFE40;
  v7 = *(a1 + 32);
  v12[4] = *(a1 + 40);
  v8 = a4;
  v9 = a3;
  v10 = [a2 _gkMapConcurrentlyWithBlock:v12];
  [v7 setObject:v10 forKeyedSubscript:@"games"];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"seed"];
  [*(a1 + 32) setError:v8];

  return (*(*(a1 + 48) + 16))();
}

GKGameRecord *__56__GKPlayer_loadGamesPlayedDetailsWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[GKGameRecord alloc] initWithInternalRepresentation:v3 player:*(a1 + 32)];

  return v4;
}

void __56__GKPlayer_loadGamesPlayedDetailsWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"games"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"seed"];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v5, v3, v4);
}

- (void)loadProfileDiscardingStaleData:(BOOL)data completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKPlayer.m", 821, "-[GKPlayer loadProfileDiscardingStaleData:completionHandler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  internal = [(GKPlayer *)self internal];
  playerID = [internal playerID];

  if (!playerID)
  {
    v11 = [MEMORY[0x277CCA9B8] userErrorForCode:8 underlyingError:0];
    [v8 setError:v11];

    if (!handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__GKPlayer_loadProfileDiscardingStaleData_completionHandler___block_invoke;
  v15[3] = &unk_2785DFBA8;
  v15[4] = self;
  v16 = playerID;
  dataCopy = data;
  v17 = v8;
  [v17 perform:v15];

  if (handlerCopy)
  {
LABEL_3:
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__GKPlayer_loadProfileDiscardingStaleData_completionHandler___block_invoke_3;
    v12[3] = &unk_2785DDC10;
    v14 = handlerCopy;
    v13 = v8;
    [v13 notifyOnMainQueueWithBlock:v12];
  }

LABEL_4:
}

void __61__GKPlayer_loadProfileDiscardingStaleData_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = +[GKLocalPlayer localPlayer];
  }

  v6 = v5;
  v7 = [GKDaemonProxy proxyForPlayer:v5];
  v8 = [v7 profileService];
  v19[0] = *(a1 + 40);
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v10 = *(a1 + 56);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__GKPlayer_loadProfileDiscardingStaleData_completionHandler___block_invoke_2;
  v15[3] = &unk_2785DE568;
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v16 = v11;
  v17 = v12;
  v18 = v3;
  v13 = v3;
  [v8 getProfilesForPlayerIDs:v9 discardingStaleData:v10 handler:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __61__GKPlayer_loadProfileDiscardingStaleData_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  [*(a1 + 32) setError:a3];
  if ([v10 count])
  {
    v5 = [v10 firstObject];
    v6 = [*(a1 + 40) internal];
    v7 = [v6 onboarding];
    [v5 setOnboarding:v7];

    v8 = [*(a1 + 40) internal];
    v9 = [v8 accountName];
    [v5 setAccountName:v9];

    [*(a1 + 40) setInternal:v5];
    [*(a1 + 40) postChangeNotification];
  }

  (*(*(a1 + 48) + 16))();
}

void __61__GKPlayer_loadProfileDiscardingStaleData_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

+ (void)loadCompletePlayersForPlayers:(id)players completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [players _gkMapWithBlock:&__block_literal_global_165];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__GKPlayer_loadCompletePlayersForPlayers_completionHandler___block_invoke_2;
  v8[3] = &unk_2785DDCB0;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [GKPlayer loadPlayersForIdentifiersPrivate:v6 withCompletionHandler:v8];
}

id __60__GKPlayer_loadCompletePlayersForPlayers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 internal];
  v3 = [v2 playerID];

  return v3;
}

- (id)sortName
{
  v2 = [(GKPlayer *)self displayNameWithOptions:1];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v4;
}

- (id)searchName
{
  v2 = [(GKPlayer *)self displayNameWithOptions:0];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v4;
}

+ (id)instanceMethodSignatureForSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___GKPlayer;
  v4 = objc_msgSendSuper2(&v9, sel_instanceMethodSignatureForSelector_);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [GKPlayerInternal instanceMethodSignatureForSelector:selector];
  }

  v7 = v6;

  return v7;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v10.receiver = self;
  v10.super_class = GKPlayer;
  v5 = [(GKPlayer *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKPlayer *)self forwardingTargetForSelector:selector];
    v7 = [v8 methodSignatureForSelector:selector];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = GKPlayer;
  if ([(GKPlayer *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKPlayer *)self forwardingTargetForSelector:selector];
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

        LOBYTE(v4) = [GKPlayerInternal instancesRespondToSelector:selector];
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
  internal = [(GKPlayer *)self internal];
  v6 = [internal valueForKey:keyCopy];

  return v6;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  internal = [(GKPlayer *)self internal];
  [internal setValue:valueCopy forKey:keyCopy];
}

- (BOOL)isFriendablePlayer
{
  v3 = +[GKLocalPlayer localPlayer];
  if (v3 == self || ([(GKPlayer *)self isUnknownPlayer]& 1) != 0 || ([(GKPlayer *)self isAnonymousPlayer]& 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [(GKPlayer *)self isAutomatchPlayer]^ 1;
  }

  return v4;
}

+ (BOOL)isGuestPlayerID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  if (dCopy && [dCopy length])
  {
    v5 = [v4 rangeOfString:@"_"];
    v7 = v5 != 0x7FFFFFFFFFFFFFFFLL && v5 > 2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)playerFromPlayerID:(id)d
{
  dCopy = d;
  v4 = +[(GKInternalRepresentation *)GKPlayerInternal];
  [v4 setPlayerID:dCopy];

  v5 = [(GKPlayer *)_GKIncompletePlayer canonicalizedPlayerForInternal:v4];

  return v5;
}

+ (id)canonicalizedPlayerForInternal:(id)internal
{
  internalCopy = internal;
  v4 = +[GKLocalPlayer localPlayer];
  playerID = [internalCopy playerID];
  internal = [v4 internal];
  playerID2 = [internal playerID];
  v8 = [playerID isEqualToString:playerID2];

  if (v8)
  {
    internal2 = [v4 internal];
    isLocalPlayer = [internal2 isLocalPlayer];

    if ((isLocalPlayer & 1) == 0)
    {
      [v4 promotePlayerInternalToLocalPlayerInternal:v4];
    }

    v11 = v4;
  }

  else
  {
    v11 = [[GKPlayer alloc] initWithInternalRepresentation:internalCopy];
  }

  v12 = v11;

  return v12;
}

- (NSString)referenceKey
{
  internal = [(GKPlayer *)self internal];
  playerID = [internal playerID];

  return playerID;
}

- (id)minimalPlayer
{
  v3 = [GKPlayer alloc];
  internal = [(GKPlayer *)self internal];
  minimalInternal = [internal minimalInternal];
  v6 = [(GKPlayer *)v3 initWithInternalRepresentation:minimalInternal];

  return v6;
}

- (NSString)internalPlayerID
{
  internal = [(GKPlayer *)self internal];
  playerID = [internal playerID];

  return playerID;
}

- (void)initWithInternalRepresentation:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_227904000, v0, OS_LOG_TYPE_DEBUG, "Initialized player with internal representation: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)logAndReportIllegalArcadeAccessTo:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_227904000, v0, v1, "ERROR: Illegal access to '%{public}@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logAndReportIllegalArcadeAccessTo:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_227904000, v0, OS_LOG_TYPE_FAULT, "Arcade game is attempting to read '%@'", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)logAndReportScopedIDsError:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 internal];
  v7 = +[GKPlayer gameBundleID];
  v9 = 138412802;
  v10 = a1;
  v11 = 2112;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  _os_log_fault_impl(&dword_227904000, v5, OS_LOG_TYPE_FAULT, "%@ scoped ids for player: %@ game bundle id: %@", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateScopedIDs:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 internal];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_227904000, v3, OS_LOG_TYPE_DEBUG, "Attempting to load scoped ids for invalid internal: %@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __28__GKPlayer_updateScopedIDs___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 internal];
  v7 = [v6 playerID];
  v8 = +[GKPlayer gameBundleID];
  v10 = 138412802;
  v11 = v7;
  v12 = 2112;
  v13 = v8;
  v14 = 2112;
  v15 = a3;
  _os_log_error_impl(&dword_227904000, v5, OS_LOG_TYPE_ERROR, "Failed to load scoped ids for playerID: %@, gameBundleID: %@, error: %@", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

void __60__GKPlayer_loadPlayersForIdentifiers_withCompletionHandler___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_227904000, v0, v1, "***The current application is not allowed to use this API***:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_4_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_227904000, v0, v1, "GKPlayer: _loadPlayersForIdentifiers: - Failed to get profiles and scoped IDs for Player IDs due to error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_130_cold_1(void **a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a2;
  v7 = 134218240;
  v8 = [v4 count];
  v9 = 2048;
  v10 = [a3 count];
  _os_log_debug_impl(&dword_227904000, v5, OS_LOG_TYPE_DEBUG, "ScopedIDs number of Guests: %lu vs Friends: %lu", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __61__GKPlayer__loadPlayersForIdentifiers_withCompletionHandler___block_invoke_3_133_cold_1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 gamePlayerID];
  v5 = [a1 teamPlayerID];
  v7 = 138412802;
  v8 = a1;
  v9 = 2112;
  v10 = v4;
  v11 = 2112;
  v12 = v5;
  _os_log_debug_impl(&dword_227904000, v3, OS_LOG_TYPE_DEBUG, "ScopedIDs for Player: %@ gameID: %@ teamID: %@", &v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

@end