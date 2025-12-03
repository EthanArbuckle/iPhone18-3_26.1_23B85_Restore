@interface GKLeaderboard
+ (BOOL)instancesRespondToSelector:(SEL)selector;
+ (id)instanceMethodSignatureForSelector:(SEL)selector;
+ (id)leaderboardEntriesHandlerForGroup:(id)group gameBundleID:(id)d proxy:(id)proxy done:(id)done;
+ (void)loadCategoriesWithCompletionHandler:(void *)completionHandler;
+ (void)loadHighlightsWithPlayerScope:(int64_t)scope timeScope:(int64_t)timeScope game:(id)game handler:(id)handler;
+ (void)loadHighlightsWithPlayerScope:(int64_t)scope timeScope:(int64_t)timeScope handler:(id)handler;
+ (void)loadLeaderboardWithIdentifier:(id)identifier forGame:(id)game withPlayer:(id)player withCompletionHandler:(id)handler;
+ (void)loadLeaderboardsForGame:(id)game forSet:(id)set withPlayer:(id)player withCompletionHandler:(id)handler;
+ (void)loadLeaderboardsForGame:(id)game withCompletionHandler:(id)handler;
+ (void)loadLeaderboardsWithCompletionHandler:(void *)completionHandler;
+ (void)loadLeaderboardsWithIDs:(NSArray *)leaderboardIDs completionHandler:(void *)completionHandler;
+ (void)loadLeaderboardsWithIDs:(id)ds game:(id)game completionHandler:(id)handler;
+ (void)loadLeaderboardsWithIDs:(id)ds setIdentifier:(id)identifier completionHandler:(id)handler;
+ (void)loadLeaderboardsWithIDs:(id)ds setIdentifier:(id)identifier game:(id)game completionHandler:(id)handler;
+ (void)setDefaultLeaderboard:(NSString *)leaderboardIdentifier withCompletionHandler:(void *)completionHandler;
+ (void)submitScore:(NSInteger)score context:(NSUInteger)context player:(GKPlayer *)player leaderboardIDs:(NSArray *)leaderboardIDs completionHandler:(void *)completionHandler;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHidden;
- (BOOL)respondsToSelector:(SEL)selector;
- (GKLeaderboard)init;
- (GKLeaderboard)initWithInternalRepresentation:(id)representation;
- (GKLeaderboard)initWithPlayerIDs:(NSArray *)playerIDs;
- (GKLeaderboard)initWithPlayers:(NSArray *)players;
- (GKLeaderboardDelegate)delegate;
- (NSRange)range;
- (NSTimeInterval)duration;
- (id)creator;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)scoreRequestForGame:(id)game;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)deleteWithHandler:(id)handler;
- (void)endWithHandler:(id)handler;
- (void)loadEntriesForPlayerScope:(int64_t)scope timeScope:(int64_t)timeScope range:(_NSRange)range locale:(id)locale completionHandler:(id)handler;
- (void)loadEntriesForPlayers:(id)players timeScope:(int64_t)scope locale:(id)locale completionHandler:(id)handler;
- (void)loadEntriesWithGameDescriptor:(id)descriptor fetchOptions:(unint64_t)options playerScope:(int64_t)scope timeScope:(int64_t)timeScope range:(_NSRange)range completionHandler:(id)handler;
- (void)loadEntriesWithGameDescriptor:(id)descriptor playerScope:(int64_t)scope timeScope:(int64_t)timeScope range:(_NSRange)range locale:(id)locale completionHandler:(id)handler;
- (void)loadPreviousOccurrenceWithCompletionHandler:(void *)completionHandler;
- (void)loadPreviousOccurrenceWithGameDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)loadScoresForGame:(id)game withCompletionHandler:(id)handler;
- (void)loadScoresForRequest:(id)request handler:(id)handler;
- (void)loadScoresWithCompletionHandler:(void *)completionHandler;
- (void)loadSummaryWithTimeScope:(int64_t)scope completionHandler:(id)handler;
- (void)setRange:(NSRange)range;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)startWithHandler:(id)handler;
- (void)submitScore:(NSInteger)score context:(NSUInteger)context player:(GKPlayer *)player completionHandler:(void *)completionHandler;
@end

@implementation GKLeaderboard

- (GKLeaderboard)initWithInternalRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = GKLeaderboard;
  v6 = [(GKLeaderboard *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 2) = xmmword_227A9FEB0;
    *(v6 + 72) = xmmword_227A9FEC0;
    objc_storeStrong(v6 + 6, representation);
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (GKLeaderboard)init
{
  v3 = +[(GKInternalRepresentation *)GKLeaderboardInternal];
  v4 = [(GKLeaderboard *)self initWithInternalRepresentation:v3];

  return v4;
}

- (GKLeaderboard)initWithPlayers:(NSArray *)players
{
  v5 = players;
  if (!v5 && GKApplicationLinkedOnOrAfter(393216, 0))
  {
    [MEMORY[0x277CBEAD8] raise:@"GKInvalidParameter" format:@"players argument is nil -- you must pass a valid player array to -[GKLeaderboard initWithPlayers:]. Or use -[GKLeaderboard init] instead."];
  }

  v6 = +[(GKInternalRepresentation *)GKLeaderboardInternal];
  v7 = [(GKLeaderboard *)self initWithInternalRepresentation:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_players, players);
  }

  return v7;
}

- (GKLeaderboard)initWithPlayerIDs:(NSArray *)playerIDs
{
  _gkIncompletePlayersFromPlayerIDs = [(NSArray *)playerIDs _gkIncompletePlayersFromPlayerIDs];
  v5 = [(GKLeaderboard *)self initWithPlayers:_gkIncompletePlayersFromPlayerIDs];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    timeScope = [(GKLeaderboard *)self timeScope];
    if (timeScope == [v5 timeScope])
    {
      playerScope = [(GKLeaderboard *)self playerScope];
      if (playerScope == [v5 playerScope])
      {
        range = [(GKLeaderboard *)self range];
        v10 = v9;
        v12 = 0;
        if (range != [v5 range] || v10 != v11)
        {
          goto LABEL_11;
        }

        identifier = [(GKLeaderboard *)self identifier];
        identifier2 = [v5 identifier];
        v15 = [identifier isEqual:identifier2];

        if (v15)
        {
          players = [(GKLeaderboard *)self players];
          players2 = [v5 players];
          if (players == players2)
          {
            v12 = 1;
          }

          else
          {
            players3 = [(GKLeaderboard *)self players];
            players4 = [v5 players];
            v12 = [players3 isEqual:players4];
          }

          goto LABEL_11;
        }
      }
    }

    v12 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v12 = 0;
LABEL_12:

  return v12 & 1;
}

- (unint64_t)hash
{
  identifier = [(GKLeaderboard *)self identifier];
  v4 = [identifier hash];

  timeScope = [(GKLeaderboard *)self timeScope];
  v6 = timeScope ^ [(GKLeaderboard *)self playerScope]^ v4;
  range = [(GKLeaderboard *)self range];
  [(GKLeaderboard *)self range];
  return v6 ^ range ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = GKLeaderboard;
  v4 = [(GKLeaderboard *)&v14 description];
  baseLeaderboardID = [(GKLeaderboard *)self baseLeaderboardID];
  title = [(GKLeaderboard *)self title];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKLeaderboard type](self, "type")}];
  startDate = [(GKLeaderboard *)self startDate];
  nextStartDate = [(GKLeaderboard *)self nextStartDate];
  v10 = MEMORY[0x277CCABB0];
  [(GKLeaderboard *)self duration];
  v11 = [v10 numberWithDouble:?];
  v12 = [v3 stringWithFormat:@"%@ baseLeaderboardID:%@ title:%@ type:%@ startDate:%@ nextStartDate:%@ duration:%@", v4, baseLeaderboardID, title, v7, startDate, nextStartDate, v11];

  return v12;
}

- (void)setRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  players = [(GKLeaderboard *)self players];

  if (!players)
  {
    if (!location || length >= 0x65)
    {
      v7 = MEMORY[0x277CBEAD8];
      v8 = *MEMORY[0x277CBE730];
      v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings LEADERBOARD_RANGE_LIMITS_EXECPTION];
      [v7 raise:v8 format:{v9, location, length, 1, 100}];
    }

    self->_range.location = location;
    self->_range.length = length;
  }
}

- (NSRange)range
{
  os_unfair_lock_lock(&self->_lock);
  location = self->_range.location;
  length = self->_range.length;
  os_unfair_lock_unlock(&self->_lock);
  v5 = location;
  v6 = length;
  result.length = v6;
  result.location = v5;
  return result;
}

- (NSTimeInterval)duration
{
  internal = [(GKLeaderboard *)self internal];
  [internal duration];
  v4 = v3;

  v5 = GKApplicationLinkedOnOrAfter(918016, 721152);
  result = v4 / 1000.0;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (BOOL)isHidden
{
  internal = [(GKLeaderboard *)self internal];
  visibility = [internal visibility];
  v4 = [visibility isEqualToString:@"HIDE_FOR_ALL"];

  return v4;
}

- (void)loadScoresWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = +[GKGame currentGame];
  [(GKLeaderboard *)self loadScoresForGame:v5 withCompletionHandler:v4];
}

- (id)scoreRequestForGame:(id)game
{
  gameCopy = game;
  players = [(GKLeaderboard *)self players];
  _gkInternalsFromPlayers = [players _gkInternalsFromPlayers];

  players2 = [(GKLeaderboard *)self players];
  if (players2)
  {
    [GKLeaderboardScoreRequest requestForPlayerInternals:_gkInternalsFromPlayers];
  }

  else
  {
    range = [(GKLeaderboard *)self range];
    [GKLeaderboardScoreRequest requestForRankRange:range, v9];
  }
  v10 = ;

  v11 = +[GKLocalPlayer localPlayer];
  internal = [v11 internal];
  minimalInternal = [internal minimalInternal];
  [v10 setPlayerInternal:minimalInternal];

  bundleIdentifier = [gameCopy bundleIdentifier];

  [v10 setGameBundleID:bundleIdentifier];
  identifier = [(GKLeaderboard *)self identifier];
  [v10 setIdentifier:identifier];

  groupIdentifier = [(GKLeaderboard *)self groupIdentifier];
  [v10 setGroupIdentifier:groupIdentifier];

  [v10 setTimeScope:{-[GKLeaderboard timeScope](self, "timeScope")}];
  [v10 setFriendsOnly:{-[GKLeaderboard playerScope](self, "playerScope") == GKLeaderboardPlayerScopeFriendsOnly}];

  return v10;
}

- (void)loadScoresForRequest:(id)request handler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  v8 = +[GKDaemonProxy proxyForLocalPlayer];
  gameStatService = [v8 gameStatService];
  [gameStatService getLeaderboardForRequest:requestCopy handler:handlerCopy];
}

- (void)loadScoresForGame:(id)game withCompletionHandler:(id)handler
{
  gameCopy = game;
  handlerCopy = handler;
  [(GKLeaderboard *)self incrementLoadingCountAtomically];
  delegate = [(GKLeaderboard *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate leaderboardDidBeginLoading:self];
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboard.m", 215, "-[GKLeaderboard loadScoresForGame:withCompletionHandler:]"];
  v10 = [GKDispatchGroup dispatchGroupWithName:v9];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__GKLeaderboard_loadScoresForGame_withCompletionHandler___block_invoke;
  v18[3] = &unk_2785DD910;
  v18[4] = self;
  v19 = gameCopy;
  v11 = v10;
  v20 = v11;
  v12 = gameCopy;
  [v11 perform:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__GKLeaderboard_loadScoresForGame_withCompletionHandler___block_invoke_4;
  v15[3] = &unk_2785DE478;
  v16 = v11;
  v17 = handlerCopy;
  v15[4] = self;
  v13 = v11;
  v14 = handlerCopy;
  [v13 notifyOnMainQueueWithBlock:v15];
}

void __57__GKLeaderboard_loadScoresForGame_withCompletionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] scoreRequestForGame:a1[5]];
  v5 = a1[4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__GKLeaderboard_loadScoresForGame_withCompletionHandler___block_invoke_2;
  v8[3] = &unk_2785DE450;
  v8[4] = v5;
  v9 = a1[5];
  v10 = v4;
  v11 = a1[6];
  v12 = v3;
  v6 = v3;
  v7 = v4;
  [v5 loadScoresForRequest:v7 handler:v8];
}

void __57__GKLeaderboard_loadScoresForGame_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) setInternal:v5];
    v7 = [v5 scores];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [v5 scores];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __57__GKLeaderboard_loadScoresForGame_withCompletionHandler___block_invoke_3;
      v19[3] = &unk_2785DE428;
      v20 = *(a1 + 40);
      v10 = [v9 _gkMapConcurrentlyWithBlock:v19];
    }

    else
    {
      v10 = 0;
    }

    [*(a1 + 32) setScores:v10];
    v11 = [v5 playerScore];

    if (!v11 || (v12 = [GKScore alloc], [v5 playerScore], v13 = objc_claimAutoreleasedReturnValue(), v14 = -[GKScore initWithInternalRepresentation:](v12, "initWithInternalRepresentation:", v13), v13, -[GKScore setGame:](v14, "setGame:", *(a1 + 40)), !v14))
    {
      if (GKApplicationLinkedOnOrAfter(262656, 657920))
      {
        v14 = 0;
      }

      else
      {
        v15 = +[(GKInternalRepresentation *)GKScoreInternal];
        v16 = [*(a1 + 48) identifier];
        [v15 setLeaderboardIdentifier:v16];

        v17 = [*(a1 + 48) groupIdentifier];
        [v15 setGroupLeaderboardIdentifier:v17];

        v18 = [*(a1 + 48) playerInternal];
        [v15 setPlayer:v18];

        v14 = [[GKScore alloc] initWithInternalRepresentation:v15];
      }
    }

    [*(a1 + 32) setLocalPlayerScore:v14];
  }

  [*(a1 + 56) setError:v6];
  (*(*(a1 + 64) + 16))();
}

GKScore *__57__GKLeaderboard_loadScoresForGame_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[GKScore alloc] initWithInternalRepresentation:v3];

  [(GKScore *)v4 setGame:*(a1 + 32)];

  return v4;
}

void __57__GKLeaderboard_loadScoresForGame_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) decrementLoadingCountAtomically];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 leaderboardDidFinishLoading:*(a1 + 32)];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v7 = [*(a1 + 32) scores];
    v6 = [*(a1 + 40) error];
    (*(v5 + 16))(v5, v7, v6);
  }
}

+ (void)loadCategoriesWithCompletionHandler:(void *)completionHandler
{
  v3 = completionHandler;
  v4 = +[GKGame currentGame];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__GKLeaderboard_loadCategoriesWithCompletionHandler___block_invoke;
  v6[3] = &unk_2785DE4A0;
  v7 = v3;
  v5 = v3;
  [GKLeaderboard loadLeaderboardsForGame:v4 withCompletionHandler:v6];
}

void __53__GKLeaderboard_loadCategoriesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a4;
  v7 = [v5 count];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v15 identifier];
        if (v16)
        {
          v17 = v16;
          v18 = [v15 localizedTitle];

          if (v18)
          {
            v19 = [v15 identifier];
            [v8 addObject:v19];

            v20 = [v15 localizedTitle];
            [v9 addObject:v20];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    (*(v21 + 16))(v21, v8, v9, v6);
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (void)loadLeaderboardsWithCompletionHandler:(void *)completionHandler
{
  v3 = completionHandler;
  v4 = +[GKGame currentGame];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__GKLeaderboard_loadLeaderboardsWithCompletionHandler___block_invoke;
  v6[3] = &unk_2785DE4A0;
  v7 = v3;
  v5 = v3;
  [GKLeaderboard loadLeaderboardsForGame:v4 withCompletionHandler:v6];
}

void __55__GKLeaderboard_loadLeaderboardsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = *(a1 + 32);
  if (v10)
  {
    if (v8)
    {
      (*(v10 + 16))(v10, 0, v8);
    }

    else if (v12)
    {
      (*(v10 + 16))(v10, v12, 0);
    }

    else
    {
      v11 = [MEMORY[0x277CBEA60] array];
      (*(v10 + 16))(v10, v11, 0);
    }
  }
}

+ (void)loadLeaderboardsForGame:(id)game forSet:(id)set withPlayer:(id)player withCompletionHandler:(id)handler
{
  gameCopy = game;
  setCopy = set;
  playerCopy = player;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboard.m", 314, "+[GKLeaderboard loadLeaderboardsForGame:forSet:withPlayer:withCompletionHandler:]"];
    v14 = [GKDispatchGroup dispatchGroupWithName:v13];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __81__GKLeaderboard_loadLeaderboardsForGame_forSet_withPlayer_withCompletionHandler___block_invoke;
    v25[3] = &unk_2785DE4C8;
    v26 = gameCopy;
    v15 = playerCopy;
    v27 = v15;
    v28 = setCopy;
    v16 = v14;
    v29 = v16;
    [v16 perform:v25];
    if ([v15 isLocalPlayer])
    {
      v17 = v15;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __81__GKLeaderboard_loadLeaderboardsForGame_forSet_withPlayer_withCompletionHandler___block_invoke_3;
      v22[3] = &unk_2785DD898;
      v23 = v17;
      v24 = v16;
      [v24 perform:v22];
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __81__GKLeaderboard_loadLeaderboardsForGame_forSet_withPlayer_withCompletionHandler___block_invoke_5;
    v19[3] = &unk_2785DE540;
    v20 = v16;
    v21 = handlerCopy;
    v18 = v16;
    [v18 notifyOnMainQueueWithBlock:v19];
  }
}

void __81__GKLeaderboard_loadLeaderboardsForGame_forSet_withPlayer_withCompletionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameStatService];
  v6 = [a1[4] gameDescriptor];
  v7 = [a1[5] internal];
  v8 = [a1[6] identifier];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__GKLeaderboard_loadLeaderboardsForGame_forSet_withPlayer_withCompletionHandler___block_invoke_2;
  v10[3] = &unk_2785DDC38;
  v11 = a1[7];
  v12 = v3;
  v9 = v3;
  [v5 getLeaderboardsForGameDescriptor:v6 player:v7 setIdentifier:v8 handler:v10];
}

uint64_t __81__GKLeaderboard_loadLeaderboardsForGame_forSet_withPlayer_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"results"];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __81__GKLeaderboard_loadLeaderboardsForGame_forSet_withPlayer_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__GKLeaderboard_loadLeaderboardsForGame_forSet_withPlayer_withCompletionHandler___block_invoke_4;
  v6[3] = &unk_2785DE4F0;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 loadDefaultLeaderboardIdentifierWithCompletionHandler:v6];
}

uint64_t __81__GKLeaderboard_loadLeaderboardsForGame_forSet_withPlayer_withCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:@"default"];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __81__GKLeaderboard_loadLeaderboardsForGame_forSet_withPlayer_withCompletionHandler___block_invoke_5(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"default"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"results"];
  if ([v3 count])
  {
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __81__GKLeaderboard_loadLeaderboardsForGame_forSet_withPlayer_withCompletionHandler___block_invoke_6;
    v12 = &unk_2785DE518;
    v13 = v2;
    v14 = &v15;
    v4 = [v3 _gkMapConcurrentlyWithBlock:&v9];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  v6 = v16[3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v4 objectAtIndex:v16[3]];
  }

  v8 = [*(a1 + 32) error];
  (*(v5 + 16))(v5, v4, v7, v8);

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  _Block_object_dispose(&v15, 8);
}

GKLeaderboard *__81__GKLeaderboard_loadLeaderboardsForGame_forSet_withPlayer_withCompletionHandler___block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[GKLeaderboard alloc] initWithInternalRepresentation:v5];

  v7 = [(GKLeaderboard *)v6 identifier];
  if ([v7 isEqualToString:*(a1 + 32)])
  {
  }

  else
  {
    v8 = [(GKLeaderboard *)v6 groupIdentifier];
    v9 = [v8 isEqualToString:*(a1 + 32)];

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a3;
LABEL_5:

  return v6;
}

+ (void)loadLeaderboardWithIdentifier:(id)identifier forGame:(id)game withPlayer:(id)player withCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  gameCopy = game;
  playerCopy = player;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboard.m", 362, "+[GKLeaderboard loadLeaderboardWithIdentifier:forGame:withPlayer:withCompletionHandler:]"];
    v14 = [GKDispatchGroup dispatchGroupWithName:v13];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __88__GKLeaderboard_loadLeaderboardWithIdentifier_forGame_withPlayer_withCompletionHandler___block_invoke;
    v20[3] = &unk_2785DE4C8;
    v21 = gameCopy;
    v22 = playerCopy;
    v23 = identifierCopy;
    v15 = v14;
    v24 = v15;
    [v15 perform:v20];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__GKLeaderboard_loadLeaderboardWithIdentifier_forGame_withPlayer_withCompletionHandler___block_invoke_3;
    v17[3] = &unk_2785DDC10;
    v18 = v15;
    v19 = handlerCopy;
    v16 = v15;
    [v16 notifyOnMainQueueWithBlock:v17];
  }
}

void __88__GKLeaderboard_loadLeaderboardWithIdentifier_forGame_withPlayer_withCompletionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameStatService];
  v6 = [a1[4] gameDescriptor];
  v7 = [a1[5] internal];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__GKLeaderboard_loadLeaderboardWithIdentifier_forGame_withPlayer_withCompletionHandler___block_invoke_2;
  v9[3] = &unk_2785DE568;
  v10 = a1[6];
  v11 = a1[7];
  v12 = v3;
  v8 = v3;
  [v5 getLeaderboardsForGameDescriptor:v6 player:v7 setIdentifier:0 handler:v9];
}

void __88__GKLeaderboard_loadLeaderboardWithIdentifier_forGame_withPlayer_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 groupIdentifier];
        if ([v13 isEqualToString:*(a1 + 32)])
        {

LABEL_12:
          v16 = *(a1 + 40);
          v17 = [[GKLeaderboard alloc] initWithInternalRepresentation:v12];
          [v16 setObject:v17 forKeyedSubscript:@"leaderboard"];

          goto LABEL_13;
        }

        v14 = [v12 identifier];
        v15 = [v14 isEqualToString:*(a1 + 32)];

        if (v15)
        {
          goto LABEL_12;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  [*(a1 + 40) setError:v6];
  (*(*(a1 + 48) + 16))();

  v18 = *MEMORY[0x277D85DE8];
}

void __88__GKLeaderboard_loadLeaderboardWithIdentifier_forGame_withPlayer_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"leaderboard"];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

+ (void)loadLeaderboardsForGame:(id)game withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  gameCopy = game;
  v7 = +[GKLocalPlayer localPlayer];
  [GKLeaderboard loadLeaderboardsForGame:gameCopy withPlayer:v7 withCompletionHandler:handlerCopy];
}

+ (void)setDefaultLeaderboard:(NSString *)leaderboardIdentifier withCompletionHandler:(void *)completionHandler
{
  v5 = completionHandler;
  v6 = leaderboardIdentifier;
  v7 = +[GKLocalPlayer localPlayer];
  [v7 setDefaultLeaderboardIdentifier:v6 completionHandler:v5];
}

+ (void)loadLeaderboardsWithIDs:(NSArray *)leaderboardIDs completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = leaderboardIDs;
  v8 = +[GKGame currentGame];
  [self loadLeaderboardsWithIDs:v7 game:v8 completionHandler:v6];
}

+ (void)loadLeaderboardsWithIDs:(id)ds game:(id)game completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__GKLeaderboard_loadLeaderboardsWithIDs_game_completionHandler___block_invoke;
  v10[3] = &unk_2785DDCB0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [self loadLeaderboardsWithIDs:ds setIdentifier:0 game:game completionHandler:v10];
}

void __64__GKLeaderboard_loadLeaderboardsWithIDs_game_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

+ (void)loadLeaderboardsWithIDs:(id)ds setIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  dsCopy = ds;
  v11 = +[GKGame currentGame];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__GKLeaderboard_loadLeaderboardsWithIDs_setIdentifier_completionHandler___block_invoke;
  v13[3] = &unk_2785DDCB0;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [self loadLeaderboardsWithIDs:dsCopy setIdentifier:identifierCopy game:v11 completionHandler:v13];
}

void __73__GKLeaderboard_loadLeaderboardsWithIDs_setIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

+ (void)loadLeaderboardsWithIDs:(id)ds setIdentifier:(id)identifier game:(id)game completionHandler:(id)handler
{
  dsCopy = ds;
  identifierCopy = identifier;
  gameCopy = game;
  handlerCopy = handler;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboard.m", 451, "+[GKLeaderboard loadLeaderboardsWithIDs:setIdentifier:game:completionHandler:]"];
  v14 = [GKDispatchGroup dispatchGroupWithName:v13];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __78__GKLeaderboard_loadLeaderboardsWithIDs_setIdentifier_game_completionHandler___block_invoke;
  v24[3] = &unk_2785DE4C8;
  v25 = dsCopy;
  v26 = gameCopy;
  v27 = identifierCopy;
  v15 = v14;
  v28 = v15;
  v16 = identifierCopy;
  v17 = gameCopy;
  v18 = dsCopy;
  [v15 perform:v24];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __78__GKLeaderboard_loadLeaderboardsWithIDs_setIdentifier_game_completionHandler___block_invoke_4;
  v21[3] = &unk_2785DDC10;
  v22 = v15;
  v23 = handlerCopy;
  v19 = v15;
  v20 = handlerCopy;
  [v19 notifyOnMainQueueWithBlock:v21];
}

void __78__GKLeaderboard_loadLeaderboardsWithIDs_setIdentifier_game_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 32)];
  v5 = +[GKDaemonProxy proxyForLocalPlayer];
  v6 = [v5 gameStatService];
  v7 = [*(a1 + 40) gameDescriptor];
  v8 = +[GKLocalPlayer local];
  v9 = [v8 internal];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__GKLeaderboard_loadLeaderboardsWithIDs_setIdentifier_game_completionHandler___block_invoke_2;
  v12[3] = &unk_2785DDC38;
  v10 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = v3;
  v11 = v3;
  [v6 getLeaderboardsForGameDescriptor:v7 player:v9 leaderboardIDs:v4 setIdentifier:v10 handler:v12];
}

void __78__GKLeaderboard_loadLeaderboardsWithIDs_setIdentifier_game_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 count])
  {
    v6 = [v7 _gkMapWithBlock:&__block_literal_global_20];
    [*(a1 + 32) setResult:v6];
  }

  [*(a1 + 32) setError:v5];
  (*(*(a1 + 40) + 16))();
}

GKLeaderboard *__78__GKLeaderboard_loadLeaderboardsWithIDs_setIdentifier_game_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GKLeaderboard alloc] initWithInternalRepresentation:v2];

  return v3;
}

void __78__GKLeaderboard_loadLeaderboardsWithIDs_setIdentifier_game_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)loadPreviousOccurrenceWithGameDescriptor:(id)descriptor completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  handlerCopy = handler;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboard.m", 475, "-[GKLeaderboard loadPreviousOccurrenceWithGameDescriptor:completionHandler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__GKLeaderboard_loadPreviousOccurrenceWithGameDescriptor_completionHandler___block_invoke;
  v17[3] = &unk_2785DD910;
  v17[4] = self;
  v18 = descriptorCopy;
  v10 = v9;
  v19 = v10;
  v11 = descriptorCopy;
  [v10 perform:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__GKLeaderboard_loadPreviousOccurrenceWithGameDescriptor_completionHandler___block_invoke_3;
  v14[3] = &unk_2785DDC10;
  v15 = v10;
  v16 = handlerCopy;
  v12 = v10;
  v13 = handlerCopy;
  [v12 notifyOnMainQueueWithBlock:v14];
}

void __76__GKLeaderboard_loadPreviousOccurrenceWithGameDescriptor_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameStatService];
  v6 = [*(a1 + 32) internal];
  v7 = *(a1 + 40);
  v8 = +[GKLocalPlayer local];
  v9 = [v8 internal];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__GKLeaderboard_loadPreviousOccurrenceWithGameDescriptor_completionHandler___block_invoke_2;
  v11[3] = &unk_2785DE5B0;
  v12 = *(a1 + 48);
  v13 = v3;
  v10 = v3;
  [v5 getPreviousInstanceForLeaderboard:v6 gameDescriptor:v7 player:v9 handler:v11];
}

void __76__GKLeaderboard_loadPreviousOccurrenceWithGameDescriptor_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    v5 = a2;
    v6 = [[GKLeaderboard alloc] initWithInternalRepresentation:v5];

    [*(a1 + 32) setResult:v6];
  }

  [*(a1 + 32) setError:v7];
  (*(*(a1 + 40) + 16))();
}

void __76__GKLeaderboard_loadPreviousOccurrenceWithGameDescriptor_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)loadPreviousOccurrenceWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboard.m", 496, "-[GKLeaderboard loadPreviousOccurrenceWithCompletionHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__GKLeaderboard_loadPreviousOccurrenceWithCompletionHandler___block_invoke;
  v13[3] = &unk_2785DD898;
  v13[4] = self;
  v7 = v6;
  v14 = v7;
  [v7 perform:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__GKLeaderboard_loadPreviousOccurrenceWithCompletionHandler___block_invoke_3;
  v10[3] = &unk_2785DDC10;
  v11 = v7;
  v12 = v4;
  v8 = v7;
  v9 = v4;
  [v8 notifyOnMainQueueWithBlock:v10];
}

void __61__GKLeaderboard_loadPreviousOccurrenceWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameStatService];
  v6 = [*(a1 + 32) internal];
  v7 = +[GKGame currentGame];
  v8 = [v7 gameDescriptor];
  v9 = +[GKLocalPlayer local];
  v10 = [v9 internal];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__GKLeaderboard_loadPreviousOccurrenceWithCompletionHandler___block_invoke_2;
  v12[3] = &unk_2785DE5B0;
  v13 = *(a1 + 40);
  v14 = v3;
  v11 = v3;
  [v5 getPreviousInstanceForLeaderboard:v6 gameDescriptor:v8 player:v10 handler:v12];
}

void __61__GKLeaderboard_loadPreviousOccurrenceWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    v5 = a2;
    v6 = [[GKLeaderboard alloc] initWithInternalRepresentation:v5];

    [*(a1 + 32) setResult:v6];
  }

  [*(a1 + 32) setError:v7];
  (*(*(a1 + 40) + 16))();
}

void __61__GKLeaderboard_loadPreviousOccurrenceWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

+ (void)submitScore:(NSInteger)score context:(NSUInteger)context player:(GKPlayer *)player leaderboardIDs:(NSArray *)leaderboardIDs completionHandler:(void *)completionHandler
{
  v11 = player;
  v12 = leaderboardIDs;
  v13 = completionHandler;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboard.m", 521, "+[GKLeaderboard submitScore:context:player:leaderboardIDs:completionHandler:]"];
  v15 = [GKDispatchGroup dispatchGroupWithName:v14];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __77__GKLeaderboard_submitScore_context_player_leaderboardIDs_completionHandler___block_invoke;
  v22[3] = &unk_2785DE5D8;
  v26 = score;
  v27 = context;
  v16 = v12;
  v23 = v16;
  v17 = v11;
  v24 = v17;
  v18 = v15;
  v25 = v18;
  [v18 perform:v22];
  if (v13)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__GKLeaderboard_submitScore_context_player_leaderboardIDs_completionHandler___block_invoke_3;
    v19[3] = &unk_2785DDC10;
    v21 = v13;
    v20 = v18;
    [v20 notifyOnMainQueueWithBlock:v19];
  }
}

void __77__GKLeaderboard_submitScore_context_player_leaderboardIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameStatService];
  v13 = *(a1 + 64);
  v14 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) internal];
  v8 = v7;
  if (!v7)
  {
    v12 = +[GKLocalPlayer local];
    v8 = [v12 internal];
  }

  v9 = +[GKGame currentGame];
  v10 = [v9 gameDescriptor];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__GKLeaderboard_submitScore_context_player_leaderboardIDs_completionHandler___block_invoke_2;
  v15[3] = &unk_2785DD8E8;
  v16 = *(a1 + 48);
  v17 = v3;
  v11 = v3;
  [v5 submitScore:v14 context:v13 leaderboardIDs:v6 forPlayer:v8 whileScreeningChallenges:0 withEligibleChallenges:0 gameDescriptor:v10 handler:v15];

  if (!v7)
  {
  }
}

uint64_t __77__GKLeaderboard_submitScore_context_player_leaderboardIDs_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __77__GKLeaderboard_submitScore_context_player_leaderboardIDs_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)submitScore:(NSInteger)score context:(NSUInteger)context player:(GKPlayer *)player completionHandler:(void *)completionHandler
{
  v25[1] = *MEMORY[0x277D85DE8];
  v10 = player;
  v11 = completionHandler;
  if ([(GKLeaderboard *)self type])
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboard.m", 553, "-[GKLeaderboard submitScore:context:player:completionHandler:]"];
    v13 = [GKDispatchGroup dispatchGroupWithName:v12];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __62__GKLeaderboard_submitScore_context_player_completionHandler___block_invoke;
    v20[3] = &unk_2785DE5D8;
    v23 = score;
    v24 = context;
    v20[4] = self;
    v21 = v10;
    baseLeaderboardID = v13;
    v22 = baseLeaderboardID;
    [baseLeaderboardID perform:v20];
    if (v11)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __62__GKLeaderboard_submitScore_context_player_completionHandler___block_invoke_3;
      v17[3] = &unk_2785DDC10;
      v19 = v11;
      v18 = baseLeaderboardID;
      [v18 notifyOnMainQueueWithBlock:v17];
    }
  }

  else
  {
    baseLeaderboardID = [(GKLeaderboard *)self baseLeaderboardID];
    v25[0] = baseLeaderboardID;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    [GKLeaderboard submitScore:score context:context player:v10 leaderboardIDs:v15 completionHandler:v11];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __62__GKLeaderboard_submitScore_context_player_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameStatService];
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = [*(a1 + 32) internal];
  v9 = [*(a1 + 40) internal];
  v10 = v9;
  if (!v9)
  {
    v12 = +[GKLocalPlayer local];
    v10 = [v12 internal];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__GKLeaderboard_submitScore_context_player_completionHandler___block_invoke_2;
  v13[3] = &unk_2785DD8E8;
  v14 = *(a1 + 48);
  v15 = v3;
  v11 = v3;
  [v5 submitInstanceScore:v6 context:v7 leaderboard:v8 forPlayer:v10 whileScreeningChallenges:0 withEligibleChallenges:0 handler:v13];
  if (!v9)
  {
  }
}

uint64_t __62__GKLeaderboard_submitScore_context_player_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __62__GKLeaderboard_submitScore_context_player_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)loadEntriesForPlayerScope:(int64_t)scope timeScope:(int64_t)timeScope range:(_NSRange)range locale:(id)locale completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  localeCopy = locale;
  handlerCopy = handler;
  if (!location || length >= 0x65)
  {
    v14 = MEMORY[0x277CBEAD8];
    v15 = *MEMORY[0x277CBE730];
    v16 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings LEADERBOARD_RANGE_LIMITS_EXECPTION];
    [v14 raise:v15 format:{v16, location, length, 1, 100}];
  }

  v17 = +[GKGame currentGame];
  gameDescriptor = [v17 gameDescriptor];
  [(GKLeaderboard *)self loadEntriesWithGameDescriptor:gameDescriptor playerScope:scope timeScope:timeScope range:location locale:length completionHandler:localeCopy, handlerCopy];
}

+ (id)leaderboardEntriesHandlerForGroup:(id)group gameBundleID:(id)d proxy:(id)proxy done:(id)done
{
  groupCopy = group;
  doneCopy = done;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__GKLeaderboard_leaderboardEntriesHandlerForGroup_gameBundleID_proxy_done___block_invoke;
  v13[3] = &unk_2785DE620;
  v14 = groupCopy;
  v15 = doneCopy;
  v9 = doneCopy;
  v10 = groupCopy;
  v11 = _Block_copy(v13);

  return v11;
}

void __75__GKLeaderboard_leaderboardEntriesHandlerForGroup_gameBundleID_proxy_done___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  if (a5)
  {
    [*(a1 + 32) setError:a5];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:@"totalPlayerCount"];

    v12 = [MEMORY[0x277CBEB18] array];
    v13 = [v9 player];
    v14 = [v13 playerID];

    if (v14)
    {
      v15 = [v9 player];
      v16 = [v15 playerID];
      [v12 addObject:v16];
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = v10;
    v17 = v10;
    v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v34;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v33 + 1) + 8 * i);
          v23 = [v22 player];
          v24 = [v23 playerID];

          if (v24)
          {
            v25 = [v22 player];
            v26 = [v25 playerID];
            [v12 addObject:v26];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v19);
    }

    if (v9)
    {
      v27 = [[GKLeaderboardEntry alloc] initWithInternalRepresentation:v9];
      [*(a1 + 32) setObject:v27 forKeyedSubscript:@"localPlayerEntry"];
    }

    v28 = [v17 _gkMapWithBlock:&__block_literal_global_69];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = MEMORY[0x277CBEBF8];
    }

    [*(a1 + 32) setObject:v30 forKeyedSubscript:@"entries"];
    (*(*(a1 + 40) + 16))();

    v10 = v32;
  }

  v31 = *MEMORY[0x277D85DE8];
}

GKLeaderboardEntry *__75__GKLeaderboard_leaderboardEntriesHandlerForGroup_gameBundleID_proxy_done___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GKLeaderboardEntry alloc] initWithInternalRepresentation:v2];

  return v3;
}

- (void)loadEntriesWithGameDescriptor:(id)descriptor playerScope:(int64_t)scope timeScope:(int64_t)timeScope range:(_NSRange)range locale:(id)locale completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  descriptorCopy = descriptor;
  localeCopy = locale;
  handlerCopy = handler;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboard.m", 657, "-[GKLeaderboard loadEntriesWithGameDescriptor:playerScope:timeScope:range:locale:completionHandler:]"];
  v18 = [GKDispatchGroup dispatchGroupWithName:v17];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __100__GKLeaderboard_loadEntriesWithGameDescriptor_playerScope_timeScope_range_locale_completionHandler___block_invoke;
  v27[3] = &unk_2785DE648;
  v27[4] = self;
  v28 = descriptorCopy;
  timeScopeCopy = timeScope;
  v33 = location;
  v34 = length;
  scopeCopy = scope;
  v29 = localeCopy;
  v19 = v18;
  v30 = v19;
  v20 = localeCopy;
  v21 = descriptorCopy;
  [v19 perform:v27];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __100__GKLeaderboard_loadEntriesWithGameDescriptor_playerScope_timeScope_range_locale_completionHandler___block_invoke_2;
  v24[3] = &unk_2785DDC10;
  v25 = v19;
  v26 = handlerCopy;
  v22 = v19;
  v23 = handlerCopy;
  [v22 notifyOnMainQueueWithBlock:v24];
}

void __100__GKLeaderboard_loadEntriesWithGameDescriptor_playerScope_timeScope_range_locale_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = +[GKDaemonProxy proxyForLocalPlayer];
  v14 = [v15 gameStatService];
  v12 = [*(a1 + 32) internal];
  v13 = *(a1 + 40);
  v4 = +[GKLocalPlayer local];
  v5 = [v4 internal];
  v7 = *(a1 + 64);
  v6 = *(a1 + 72);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = [*(a1 + 40) bundleIdentifier];
  v11 = [GKLeaderboard leaderboardEntriesHandlerForGroup:v9 gameBundleID:v10 proxy:v15 done:v3];

  [v14 getEntriesForLeaderboard:v12 gameDescriptor:v13 localPlayer:v5 playerScope:v7 timeScope:v6 range:*(a1 + 80) players:*(a1 + 88) locale:0 handler:{v8, v11}];
}

void __100__GKLeaderboard_loadEntriesWithGameDescriptor_playerScope_timeScope_range_locale_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) error];

    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (v2)
    {
      v7 = [v3 error];
      (*(v4 + 16))(v4, 0, 0, 0);
    }

    else
    {
      v7 = [v3 objectForKeyedSubscript:@"localPlayerEntry"];
      v5 = [*(a1 + 32) objectForKeyedSubscript:@"entries"];
      v6 = [*(a1 + 32) objectForKeyedSubscript:@"totalPlayerCount"];
      (*(v4 + 16))(v4, v7, v5, [v6 integerValue], 0);
    }
  }
}

- (void)loadEntriesWithGameDescriptor:(id)descriptor fetchOptions:(unint64_t)options playerScope:(int64_t)scope timeScope:(int64_t)timeScope range:(_NSRange)range completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  descriptorCopy = descriptor;
  handlerCopy = handler;
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboard.m", 698, "-[GKLeaderboard loadEntriesWithGameDescriptor:fetchOptions:playerScope:timeScope:range:completionHandler:]"];
  v17 = [GKDispatchGroup dispatchGroupWithName:v16];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __106__GKLeaderboard_loadEntriesWithGameDescriptor_fetchOptions_playerScope_timeScope_range_completionHandler___block_invoke;
  v25[3] = &unk_2785DE670;
  v25[4] = self;
  v26 = descriptorCopy;
  optionsCopy = options;
  scopeCopy = scope;
  timeScopeCopy = timeScope;
  v31 = location;
  v32 = length;
  v18 = v17;
  v27 = v18;
  v19 = descriptorCopy;
  [v18 perform:v25];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __106__GKLeaderboard_loadEntriesWithGameDescriptor_fetchOptions_playerScope_timeScope_range_completionHandler___block_invoke_2;
  v22[3] = &unk_2785DDC10;
  v23 = v18;
  v24 = handlerCopy;
  v20 = v18;
  v21 = handlerCopy;
  [v20 notifyOnMainQueueWithBlock:v22];
}

void __106__GKLeaderboard_loadEntriesWithGameDescriptor_fetchOptions_playerScope_timeScope_range_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = +[GKDaemonProxy proxyForLocalPlayer];
  v14 = [v15 gameStatServicePrivate];
  v4 = [*(a1 + 32) internal];
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  v5 = +[GKLocalPlayer local];
  v6 = [v5 internal];
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 48);
  v10 = [*(a1 + 40) bundleIdentifier];
  v11 = [GKLeaderboard leaderboardEntriesHandlerForGroup:v9 gameBundleID:v10 proxy:v15 done:v3];

  [v14 getEntriesForLeaderboard:v4 fetchOptions:v13 gameDescriptor:v12 localPlayer:v6 playerScope:v7 timeScope:v8 range:*(a1 + 80) players:*(a1 + 88) handler:{0, v11}];
}

void __106__GKLeaderboard_loadEntriesWithGameDescriptor_fetchOptions_playerScope_timeScope_range_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) error];

    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (v2)
    {
      v7 = [v3 error];
      (*(v4 + 16))(v4, 0, 0, 0);
    }

    else
    {
      v7 = [v3 objectForKeyedSubscript:@"localPlayerEntry"];
      v5 = [*(a1 + 32) objectForKeyedSubscript:@"entries"];
      v6 = [*(a1 + 32) objectForKeyedSubscript:@"totalPlayerCount"];
      (*(v4 + 16))(v4, v7, v5, [v6 integerValue], 0);
    }
  }
}

- (void)loadEntriesForPlayers:(id)players timeScope:(int64_t)scope locale:(id)locale completionHandler:(id)handler
{
  playersCopy = players;
  handlerCopy = handler;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboard.m", 739, "-[GKLeaderboard loadEntriesForPlayers:timeScope:locale:completionHandler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__GKLeaderboard_loadEntriesForPlayers_timeScope_locale_completionHandler___block_invoke;
  v20[3] = &unk_2785DDBE8;
  v21 = playersCopy;
  selfCopy = self;
  scopeCopy = scope;
  v13 = v12;
  v23 = v13;
  v14 = playersCopy;
  [v13 perform:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__GKLeaderboard_loadEntriesForPlayers_timeScope_locale_completionHandler___block_invoke_3;
  v17[3] = &unk_2785DDC10;
  v18 = v13;
  v19 = handlerCopy;
  v15 = v13;
  v16 = handlerCopy;
  [v15 notifyOnMainQueueWithBlock:v17];
}

void __74__GKLeaderboard_loadEntriesForPlayers_timeScope_locale_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v19 = [v3 _gkMapWithBlock:&__block_literal_global_76];
  v5 = +[GKDaemonProxy proxyForLocalPlayer];
  v6 = +[GKGame currentGame];
  v7 = [v6 gameDescriptor];

  v17 = [v5 gameStatService];
  v16 = [*(a1 + 40) internal];
  v18 = +[GKGame currentGame];
  v8 = [v18 gameDescriptor];
  v9 = +[GKLocalPlayer local];
  v10 = [v9 internal];
  v13 = a1 + 48;
  v12 = *(a1 + 48);
  v11 = *(v13 + 8);
  v14 = [v7 bundleIdentifier];
  v15 = [GKLeaderboard leaderboardEntriesHandlerForGroup:v12 gameBundleID:v14 proxy:v5 done:v4];

  [v17 getEntriesForLeaderboard:v16 gameDescriptor:v8 localPlayer:v10 playerScope:0 timeScope:v11 range:1 players:0 handler:{v19, v15}];
}

void __74__GKLeaderboard_loadEntriesForPlayers_timeScope_locale_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) error];

    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (v2)
    {
      v6 = [v3 error];
      (*(v4 + 16))(v4, 0, 0);
    }

    else
    {
      v6 = [v3 objectForKeyedSubscript:@"localPlayerEntry"];
      v5 = [*(a1 + 32) objectForKeyedSubscript:@"entries"];
      (*(v4 + 16))(v4, v6, v5, 0);
    }
  }
}

- (void)loadSummaryWithTimeScope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboard.m", 772, "-[GKLeaderboard loadSummaryWithTimeScope:completionHandler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__GKLeaderboard_loadSummaryWithTimeScope_completionHandler___block_invoke;
  v15[3] = &unk_2785DE6E0;
  v15[4] = self;
  scopeCopy = scope;
  v9 = v8;
  v16 = v9;
  [v9 perform:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__GKLeaderboard_loadSummaryWithTimeScope_completionHandler___block_invoke_3;
  v12[3] = &unk_2785DDC10;
  v13 = v9;
  v14 = handlerCopy;
  v10 = v9;
  v11 = handlerCopy;
  [v10 notifyOnMainQueueWithBlock:v12];
}

void __60__GKLeaderboard_loadSummaryWithTimeScope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = +[GKDaemonProxy proxyForLocalPlayer];
  v13 = [v15 gameStatService];
  v14 = +[GKGame currentGame];
  v4 = [v14 gameDescriptor];
  v5 = +[GKLocalPlayer local];
  v6 = [v5 internal];
  v7 = [*(a1 + 32) internal];
  v8 = [v7 baseLeaderboardID];
  v9 = [*(a1 + 32) internal];
  v10 = [v9 identifier];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__GKLeaderboard_loadSummaryWithTimeScope_completionHandler___block_invoke_2;
  v16[3] = &unk_2785DE6B8;
  v11 = *(a1 + 48);
  v17 = *(a1 + 40);
  v18 = v3;
  v12 = v3;
  [v13 getLeaderboardSummaryForGameDescriptor:v4 localPlayer:v6 baseLeaderboardID:v8 leaderboardID:v10 timeScope:v11 handler:v16];
}

void __60__GKLeaderboard_loadSummaryWithTimeScope_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v6 = a2;
    v7 = [[GKLeaderboardSummary alloc] initWithInternalRepresentation:v6];

    [*(a1 + 32) setResult:v7];
    v5 = 0;
  }

  [*(a1 + 32) setError:v5];
  (*(*(a1 + 40) + 16))();
}

void __60__GKLeaderboard_loadSummaryWithTimeScope_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

+ (void)loadHighlightsWithPlayerScope:(int64_t)scope timeScope:(int64_t)timeScope handler:(id)handler
{
  handlerCopy = handler;
  v9 = +[GKGame currentGame];
  [self loadHighlightsWithPlayerScope:scope timeScope:timeScope game:v9 handler:handlerCopy];
}

+ (void)loadHighlightsWithPlayerScope:(int64_t)scope timeScope:(int64_t)timeScope game:(id)game handler:(id)handler
{
  v24[1] = *MEMORY[0x277D85DE8];
  gameCopy = game;
  handlerCopy = handler;
  v11 = +[GKLocalPlayer localPlayer];
  v12 = [GKGameRecord gameRecordForPlayer:v11 game:gameCopy];

  defaultLeaderboardIdentifier = [v12 defaultLeaderboardIdentifier];
  if (defaultLeaderboardIdentifier)
  {
    defaultLeaderboardIdentifier2 = [v12 defaultLeaderboardIdentifier];
    v24[0] = defaultLeaderboardIdentifier2;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  }

  else
  {
    v15 = 0;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__GKLeaderboard_loadHighlightsWithPlayerScope_timeScope_game_handler___block_invoke;
  v19[3] = &unk_2785DE758;
  scopeCopy = scope;
  timeScopeCopy = timeScope;
  v20 = gameCopy;
  v21 = handlerCopy;
  v16 = handlerCopy;
  v17 = gameCopy;
  [GKLeaderboard loadLeaderboardsWithIDs:v15 game:v17 completionHandler:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __70__GKLeaderboard_loadHighlightsWithPlayerScope_timeScope_game_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    if (*(a1 + 48) == 1)
    {
      v5 = 600;
    }

    else
    {
      v5 = 100;
    }

    v6 = [*(a1 + 32) gameDescriptor];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__GKLeaderboard_loadHighlightsWithPlayerScope_timeScope_game_handler___block_invoke_2;
    v11[3] = &unk_2785DE730;
    v14 = v7;
    v9 = *(a1 + 40);
    v12 = v4;
    v13 = v9;
    v10 = v4;
    [v10 loadEntriesWithGameDescriptor:v6 playerScope:v7 timeScope:v8 range:1 completionHandler:{v5, v11}];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __70__GKLeaderboard_loadHighlightsWithPlayerScope_timeScope_game_handler___block_invoke_2(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (!v9 || v10)
  {
    v14 = a1[4];
    (*(a1[5] + 16))();
  }

  else
  {
    if (a1[6] == 1)
    {
      v27[0] = 0;
      v27[1] = v27;
      v27[2] = 0x2020000000;
      v27[3] = 1;
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __70__GKLeaderboard_loadHighlightsWithPlayerScope_timeScope_game_handler___block_invoke_3;
      v24 = &unk_2785DE708;
      v26 = v27;
      v25 = v8;
      v12 = [v9 _gkFilterWithBlock:&v21];

      [v12 count];
      _Block_object_dispose(v27, 8);
      v9 = v12;
    }

    if ([v9 count])
    {
      v13 = [v9 objectAtIndexedSubscript:0];
    }

    else
    {
      v13 = 0;
    }

    if ([v8 rank] >= 1 && (v15 = objc_msgSend(v8, "rank"), v15 <= objc_msgSend(v9, "count")))
    {
      if ([v8 rank] < 2)
      {
        v17 = 0;
      }

      else
      {
        v17 = [v9 objectAtIndexedSubscript:{objc_msgSend(v8, "rank") - 2}];
      }

      v18 = [v8 rank];
      if (v18 >= [v9 count])
      {
        v19 = 0;
      }

      else
      {
        v19 = [v9 objectAtIndexedSubscript:{objc_msgSend(v8, "rank")}];
      }

      v20 = a1[4];
      (*(a1[5] + 16))();
    }

    else
    {
      v16 = a1[4];
      (*(a1[5] + 16))();
    }
  }
}

id __70__GKLeaderboard_loadHighlightsWithPlayerScope_timeScope_game_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 player];
  v5 = [v4 isLocalPlayer];

  v6 = [v3 player];
  v7 = [v6 friendBiDirectional];
  v8 = [v7 isEqualToNumber:&unk_283B33208];

  if ((v8 & 1) != 0 || v5)
  {
    v10 = *(*(*(a1 + 40) + 8) + 24);
    v11 = [v3 internal];
    [v11 setRank:v10];

    if (v5)
    {
      v12 = *(*(*(a1 + 40) + 8) + 24);
      v13 = [*(a1 + 32) internal];
      [v13 setRank:v12];
    }

    ++*(*(*(a1 + 40) + 8) + 24);
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)creator
{
  v3 = [GKPlayer alloc];
  internal = [(GKLeaderboard *)self internal];
  creator = [internal creator];
  v6 = [(GKPlayer *)v3 initWithInternalRepresentation:creator];

  return v6;
}

- (void)startWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboard.m", 859, "-[GKLeaderboard startWithHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __34__GKLeaderboard_startWithHandler___block_invoke;
  v11[3] = &unk_2785DD898;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [v7 perform:v11];
  if (handlerCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __34__GKLeaderboard_startWithHandler___block_invoke_3;
    v8[3] = &unk_2785DDC10;
    v10 = handlerCopy;
    v9 = v7;
    [v9 notifyOnMainQueueWithBlock:v8];
  }
}

void __34__GKLeaderboard_startWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameStatService];
  v6 = [*(a1 + 32) internal];
  v7 = [v6 identifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__GKLeaderboard_startWithHandler___block_invoke_2;
  v9[3] = &unk_2785DD8E8;
  v10 = *(a1 + 40);
  v11 = v3;
  v8 = v3;
  [v5 startLeaderboardWithID:v7 handler:v9];
}

uint64_t __34__GKLeaderboard_startWithHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __34__GKLeaderboard_startWithHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)endWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboard.m", 876, "-[GKLeaderboard endWithHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __32__GKLeaderboard_endWithHandler___block_invoke;
  v11[3] = &unk_2785DD898;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [v7 perform:v11];
  if (handlerCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__GKLeaderboard_endWithHandler___block_invoke_3;
    v8[3] = &unk_2785DDC10;
    v10 = handlerCopy;
    v9 = v7;
    [v9 notifyOnMainQueueWithBlock:v8];
  }
}

void __32__GKLeaderboard_endWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameStatService];
  v6 = [*(a1 + 32) internal];
  v7 = [v6 identifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32__GKLeaderboard_endWithHandler___block_invoke_2;
  v9[3] = &unk_2785DD8E8;
  v10 = *(a1 + 40);
  v11 = v3;
  v8 = v3;
  [v5 endLeaderboardWithID:v7 handler:v9];
}

uint64_t __32__GKLeaderboard_endWithHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __32__GKLeaderboard_endWithHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)deleteWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboard.m", 893, "-[GKLeaderboard deleteWithHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  internal = [(GKLeaderboard *)self internal];
  creator = [internal creator];
  playerID = [creator playerID];
  v10 = +[GKLocalPlayer localPlayer];
  internal2 = [v10 internal];
  playerID2 = [internal2 playerID];
  v13 = [playerID isEqualToString:playerID2];

  if (v13)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __35__GKLeaderboard_deleteWithHandler___block_invoke;
    v18[3] = &unk_2785DD898;
    v18[4] = self;
    v19 = v6;
    [v19 perform:v18];

    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = [MEMORY[0x277CCA9B8] userErrorForCode:32 underlyingError:0];
  [v6 setError:v14];

  if (handlerCopy)
  {
LABEL_5:
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __35__GKLeaderboard_deleteWithHandler___block_invoke_3;
    v15[3] = &unk_2785DDC10;
    v17 = handlerCopy;
    v16 = v6;
    [v16 notifyOnMainQueueWithBlock:v15];
  }

LABEL_6:
}

void __35__GKLeaderboard_deleteWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameStatService];
  v6 = [*(a1 + 32) internal];
  v7 = [v6 identifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__GKLeaderboard_deleteWithHandler___block_invoke_2;
  v9[3] = &unk_2785DD8E8;
  v10 = *(a1 + 40);
  v11 = v3;
  v8 = v3;
  [v5 deleteLeaderboardWithID:v7 handler:v9];
}

uint64_t __35__GKLeaderboard_deleteWithHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __35__GKLeaderboard_deleteWithHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

+ (id)instanceMethodSignatureForSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___GKLeaderboard;
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
  v10.super_class = GKLeaderboard;
  v5 = [(GKLeaderboard *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKLeaderboard *)self forwardingTargetForSelector:selector];
    v7 = [v8 methodSignatureForSelector:selector];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = GKLeaderboard;
  if ([(GKLeaderboard *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKLeaderboard *)self forwardingTargetForSelector:selector];
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

        LOBYTE(v4) = [GKLeaderboardInternal instancesRespondToSelector:selector];
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
  internal = [(GKLeaderboard *)self internal];
  v6 = [internal valueForKey:keyCopy];

  return v6;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  internal = [(GKLeaderboard *)self internal];
  [internal setValue:valueCopy forKey:keyCopy];
}

- (GKLeaderboardDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end