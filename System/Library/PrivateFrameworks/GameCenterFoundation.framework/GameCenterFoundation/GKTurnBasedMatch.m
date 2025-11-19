@interface GKTurnBasedMatch
+ (BOOL)instancesRespondToSelector:(SEL)a3;
+ (id)_localizableMessageWithKey:(id)a3 arguments:(id)a4 defaultMessage:(id)a5;
+ (id)instanceMethodSignatureForSelector:(SEL)a3;
+ (id)matchesWithInternalRepresentations:(id)a3;
+ (void)findMatchForRequest:(GKMatchRequest *)request withCompletionHandler:(void *)completionHandler;
+ (void)getTurnBasedBadgeCountWithHandler:(id)a3;
+ (void)loadMatchWithID:(NSString *)matchID withCompletionHandler:(void *)completionHandler;
+ (void)loadMatchesIncludingCompatibleBundleID:(BOOL)a3 withCompletionHandler:(id)a4;
+ (void)loadTurnBasedMatchDetailsForMatchIDs:(id)a3 loadGameData:(BOOL)a4 withCompletionHandler:(id)a5;
+ (void)loadTurnBasedMatchWithDetailsForMatchID:(id)a3 withCompletionHandler:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMyTurn;
- (BOOL)respondsToSelector:(SEL)a3;
- (GKGame)game;
- (GKPlayer)currentPlayer;
- (GKPlayer)showcasePlayer;
- (GKTurnBasedMatch)initWithInternalRepresentation:(id)a3;
- (GKTurnBasedMatchStatus)status;
- (GKTurnBasedParticipant)currentParticipant;
- (GKTurnBasedParticipant)firstWinnerOrTiedOrLastLoser;
- (GKTurnBasedParticipant)localPlayerParticipant;
- (GKTurnBasedParticipant)playingWithParticipantOrFirstKnownPlayer;
- (GKTurnBasedParticipant)previousParticipant;
- (GKTurnBasedParticipant)previousParticipantOrFirstKnownPlayer;
- (NSArray)activeExchanges;
- (NSArray)completedExchanges;
- (NSDate)dateSortKey;
- (NSString)description;
- (NSString)message;
- (NSUInteger)exchangeDataMaximumSize;
- (NSUInteger)exchangeMaxInitiatedExchangesPerPlayer;
- (NSUInteger)matchDataMaximumSize;
- (id)_exchangesForInternalRepresentation:(id)a3 participants:(id)a4;
- (id)_participantsForInternalRepresentation:(id)a3;
- (id)exchangeForID:(id)a3;
- (id)indexesForParticipants:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)valueForUndefinedKey:(id)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (unsigned)state;
- (void)_updateWithInternal:(id)a3;
- (void)acceptInviteWithCompletionHandler:(void *)completionHandler;
- (void)declineInviteWithCompletionHandler:(void *)completionHandler;
- (void)endMatchInTurnWithMatchData:(NSData *)matchData leaderboardScores:(NSArray *)scores achievements:(NSArray *)achievements completionHandler:(void *)completionHandler;
- (void)endMatchInTurnWithMatchData:(NSData *)matchData scores:(NSArray *)scores achievements:(NSArray *)achievements completionHandler:(void *)completionHandler;
- (void)endTurnWithNextParticipant:(GKTurnBasedParticipant *)nextParticipant matchData:(NSData *)matchData completionHandler:(void *)completionHandler;
- (void)endTurnWithNextParticipants:(NSArray *)nextParticipants turnTimeout:(NSTimeInterval)timeout matchData:(NSData *)matchData completionHandler:(void *)completionHandler;
- (void)loadMatchDataWithCompletionHandler:(void *)completionHandler;
- (void)loadURLWithMatchRequest:(id)a3 completionHandler:(id)a4;
- (void)participantQuitInTurnWithOutcome:(GKTurnBasedMatchOutcome)matchOutcome nextParticipant:(GKTurnBasedParticipant *)nextParticipant matchData:(NSData *)matchData completionHandler:(void *)completionHandler;
- (void)participantQuitInTurnWithOutcome:(GKTurnBasedMatchOutcome)matchOutcome nextParticipants:(NSArray *)nextParticipants turnTimeout:(NSTimeInterval)timeout matchData:(NSData *)matchData completionHandler:(void *)completionHandler;
- (void)participantQuitOutOfTurnWithOutcome:(GKTurnBasedMatchOutcome)matchOutcome withCompletionHandler:(void *)completionHandler;
- (void)rematchWithCompletionHandler:(void *)completionHandler;
- (void)removeWithCompletionHandler:(void *)completionHandler;
- (void)reserveShareParticipantSlots:(int64_t)a3 minPlayerCount:(int64_t)a4 maxPlayerCount:(int64_t)a5 andInvitePlayers:(id)a6 withMessage:(id)a7 handler:(id)a8;
- (void)saveCurrentTurnWithMatchData:(NSData *)matchData completionHandler:(void *)completionHandler;
- (void)saveMergedMatchData:(NSData *)matchData withResolvedExchanges:(NSArray *)exchanges completionHandler:(void *)completionHandler;
- (void)sendExchangeToParticipants:(NSArray *)participants data:(NSData *)data localizableMessageKey:(NSString *)key arguments:(NSArray *)arguments timeout:(NSTimeInterval)timeout completionHandler:(void *)completionHandler;
- (void)sendReminderToParticipants:(NSArray *)participants localizableMessageKey:(NSString *)key arguments:(NSArray *)arguments completionHandler:(void *)completionHandler;
- (void)setCurrentParticipant:(id)a3;
- (void)setInternal:(id)a3;
- (void)setLocalizableMessageWithKey:(NSString *)key arguments:(NSArray *)arguments;
- (void)setMessage:(NSString *)message;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)state;
@end

@implementation GKTurnBasedMatch

- (NSUInteger)matchDataMaximumSize
{
  v2 = +[GKPreferences shared];
  v3 = [v2 maxGameStateSizeTurnBased];

  return v3;
}

- (NSUInteger)exchangeDataMaximumSize
{
  v2 = +[GKPreferences shared];
  v3 = [v2 exchangeDataMaximumSize];

  return v3;
}

- (NSUInteger)exchangeMaxInitiatedExchangesPerPlayer
{
  v2 = +[GKPreferences shared];
  v3 = [v2 exchangeMaxInitiatedExchangesPerPlayer];

  return v3;
}

+ (void)getTurnBasedBadgeCountWithHandler:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[GKDaemonProxy proxyForLocalPlayer];
    v5 = [v4 turnBasedServicePrivate];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__GKTurnBasedMatch_getTurnBasedBadgeCountWithHandler___block_invoke;
    v6[3] = &unk_2785DFB80;
    v7 = v3;
    [v5 getTurnBasedBadgeCountWithHandler:v6];
  }
}

+ (id)matchesWithInternalRepresentations:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 count];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
  }

  else
  {
    v5 = 0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 matchID];

        if (v12)
        {
          v13 = [[GKTurnBasedMatch alloc] initWithInternalRepresentation:v11];
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)findMatchForRequest:(GKMatchRequest *)request withCompletionHandler:(void *)completionHandler
{
  v5 = request;
  v6 = completionHandler;
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 710, "+[GKTurnBasedMatch findMatchForRequest:withCompletionHandler:]"];
    v8 = [GKDispatchGroup dispatchGroupWithName:v7];

    v9 = [(GKMatchRequest *)v5 validateForTurnBased];
    if (v9)
    {
      [v8 setError:v9];
    }

    else
    {
      v10 = +[GKPreferences shared];
      v11 = [v10 multiplayerAllowedPlayerType];

      if (v11)
      {
        if (![(GKMatchRequest *)v5 isIncorrectlyInvitingPlayers])
        {
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __62__GKTurnBasedMatch_findMatchForRequest_withCompletionHandler___block_invoke;
          v20[3] = &unk_2785DD898;
          v21 = v5;
          v22 = v8;
          [v22 perform:v20];

          goto LABEL_10;
        }

        v12 = MEMORY[0x277CCA9B8];
        v13 = 30;
      }

      else
      {
        v12 = MEMORY[0x277CCA9B8];
        v13 = 10;
      }

      v14 = [v12 userErrorForCode:v13 underlyingError:0];
      [v8 setError:v14];
    }

LABEL_10:
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__GKTurnBasedMatch_findMatchForRequest_withCompletionHandler___block_invoke_4;
    v17[3] = &unk_2785DDC10;
    v18 = v8;
    v19 = v6;
    v15 = v8;
    [v15 notifyOnMainQueueWithBlock:v17];
    v16 = +[GKReporter reporter];
    [v16 reportEvent:@"com.apple.GameKit.turnBased" type:@"matchFind"];
  }
}

void __62__GKTurnBasedMatch_findMatchForRequest_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__GKTurnBasedMatch_findMatchForRequest_withCompletionHandler___block_invoke_2;
  v6[3] = &unk_2785DE568;
  v7 = v4;
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = v3;
  [v7 loadRecipientsWithCompletionHandler:v6];
}

void __62__GKTurnBasedMatch_findMatchForRequest_withCompletionHandler___block_invoke_2(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 code] == 10)
  {
    [a1[5] setError:v4];
    (*(a1[6] + 2))();
  }

  else
  {
    v5 = +[GKDaemonProxy proxyForLocalPlayer];
    v6 = [v5 turnBasedServicePrivate];
    v7 = [a1[4] internal];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__GKTurnBasedMatch_findMatchForRequest_withCompletionHandler___block_invoke_3;
    v8[3] = &unk_2785E00E0;
    v9 = a1[5];
    v10 = a1[6];
    [v6 createTurnBasedGameForMatchRequest:v7 individualMessages:0 handler:v8];
  }
}

void __62__GKTurnBasedMatch_findMatchForRequest_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = [[GKTurnBasedMatch alloc] initWithInternalRepresentation:v6];

    [v5 setObject:v7 forKeyedSubscript:@"match"];
  }

  [*(a1 + 32) setError:v8];
  (*(*(a1 + 40) + 16))();
}

void __62__GKTurnBasedMatch_findMatchForRequest_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"match"];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

+ (void)loadMatchesIncludingCompatibleBundleID:(BOOL)a3 withCompletionHandler:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 757, "+[GKTurnBasedMatch loadMatchesIncludingCompatibleBundleID:withCompletionHandler:]"];
  v7 = [GKDispatchGroup dispatchGroupWithName:v6];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__GKTurnBasedMatch_loadMatchesIncludingCompatibleBundleID_withCompletionHandler___block_invoke;
  v14[3] = &unk_2785E0108;
  v16 = a3;
  v8 = v7;
  v15 = v8;
  [v8 perform:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__GKTurnBasedMatch_loadMatchesIncludingCompatibleBundleID_withCompletionHandler___block_invoke_3;
  v11[3] = &unk_2785DDC10;
  v12 = v8;
  v13 = v5;
  v9 = v8;
  v10 = v5;
  [v9 notifyOnMainQueueWithBlock:v11];
}

void __81__GKTurnBasedMatch_loadMatchesIncludingCompatibleBundleID_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__GKTurnBasedMatch_loadMatchesIncludingCompatibleBundleID_withCompletionHandler___block_invoke_2;
  v6[3] = &unk_2785DDC38;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  [GKTurnBasedMatch loadTurnBasedMatchSummariesIncludingCompatibleBundleID:v4 withCompletionHandler:v6];
}

uint64_t __81__GKTurnBasedMatch_loadMatchesIncludingCompatibleBundleID_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"items"];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __81__GKTurnBasedMatch_loadMatchesIncludingCompatibleBundleID_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) error];

    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (v2)
    {
      v7 = [v3 error];
      (*(v4 + 16))(v4, 0, v7);
    }

    else
    {
      v5 = [v3 objectForKeyedSubscript:@"items"];
      v7 = v5;
      if (v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = MEMORY[0x277CBEBF8];
      }

      (*(v4 + 16))(v4, v6, 0);
    }
  }
}

void __97__GKTurnBasedMatch_loadTurnBasedMatchSummariesIncludingCompatibleBundleID_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [GKTurnBasedMatch matchesWithInternalRepresentations:a2];
  (*(v4 + 16))(v4, v6, v5);
}

+ (void)loadTurnBasedMatchDetailsForMatchIDs:(id)a3 loadGameData:(BOOL)a4 withCompletionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 count];
  if (!v9 && GKApplicationLinkedOnOrAfter(458752, 657920))
  {
    v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Must pass in a non-nil and non-empty array of matchIDs" userInfo:0];
    objc_exception_throw(v14);
  }

  if (v8)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 804, "+[GKTurnBasedMatch loadTurnBasedMatchDetailsForMatchIDs:loadGameData:withCompletionHandler:]"];
    v11 = [GKDispatchGroup dispatchGroupWithName:v10];

    if (v9)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __92__GKTurnBasedMatch_loadTurnBasedMatchDetailsForMatchIDs_loadGameData_withCompletionHandler___block_invoke;
      v18[3] = &unk_2785DECC0;
      v19 = v7;
      v21 = a4;
      v20 = v11;
      [v20 perform:v18];
    }

    else
    {
      v12 = [MEMORY[0x277CCA9B8] userErrorForCode:17 underlyingError:0];
      [v11 setError:v12];
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __92__GKTurnBasedMatch_loadTurnBasedMatchDetailsForMatchIDs_loadGameData_withCompletionHandler___block_invoke_3;
    v15[3] = &unk_2785DDC10;
    v16 = v11;
    v17 = v8;
    v13 = v11;
    [v13 notifyOnMainQueueWithBlock:v15];
  }
}

void __92__GKTurnBasedMatch_loadTurnBasedMatchDetailsForMatchIDs_loadGameData_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 turnBasedService];
  v6 = *(a1 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __92__GKTurnBasedMatch_loadTurnBasedMatchDetailsForMatchIDs_loadGameData_withCompletionHandler___block_invoke_2;
  v9[3] = &unk_2785DDC38;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v3;
  v8 = v3;
  [v5 getDetailsForTurnBasedMatchIDs:v7 includeGameData:v6 handler:v9];
}

uint64_t __92__GKTurnBasedMatch_loadTurnBasedMatchDetailsForMatchIDs_loadGameData_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [GKTurnBasedMatch matchesWithInternalRepresentations:a2];
  [v5 setObject:v7 forKeyedSubscript:@"matches"];

  [*(a1 + 32) setError:v6];
  v8 = *(*(a1 + 40) + 16);

  return v8();
}

void __92__GKTurnBasedMatch_loadTurnBasedMatchDetailsForMatchIDs_loadGameData_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"matches"];
    v3 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v4, v3);
  }
}

+ (void)loadMatchWithID:(NSString *)matchID withCompletionHandler:(void *)completionHandler
{
  v5 = matchID;
  v6 = completionHandler;
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:@"GKInvalidArgumentException" format:@"Must specify a non-nil matchID"];
  }

  if (v6)
  {
    v7 = [MEMORY[0x277CBEA60] arrayWithObject:v5];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__GKTurnBasedMatch_loadMatchWithID_withCompletionHandler___block_invoke;
    v8[3] = &unk_2785DDCB0;
    v9 = v6;
    [GKTurnBasedMatch loadTurnBasedMatchDetailsForMatchIDs:v7 loadGameData:1 withCompletionHandler:v8];
  }
}

void __58__GKTurnBasedMatch_loadMatchWithID_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = [a2 lastObject];
  v6 = [v5 bundleID];

  if (v6)
  {
    v7 = v8;
  }

  else
  {

    v7 = v8;
    if (!v8)
    {
      v7 = [MEMORY[0x277CCA9B8] userErrorForCode:17 underlyingError:0];
    }

    v5 = 0;
  }

  v9 = v7;
  (*(*(a1 + 32) + 16))();
}

- (GKTurnBasedMatch)initWithInternalRepresentation:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[(GKInternalRepresentation *)GKTurnBasedMatchInternal];
  }

  v8.receiver = self;
  v8.super_class = GKTurnBasedMatch;
  v5 = [(GKTurnBasedMatch *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_internal, v4);
    [(GKTurnBasedMatch *)v6 _updateWithInternal:v4];
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(GKTurnBasedMatch *)self internal];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(GKTurnBasedMatch *)self internal];
    v6 = [v4 internal];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setInternal:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_internal != v6)
  {
    objc_storeStrong(&v5->_internal, a3);
    [(GKTurnBasedMatch *)v5 _updateWithInternal:v6];
  }

  objc_sync_exit(v5);
}

- (void)_updateWithInternal:(id)a3
{
  v4 = a3;
  v5 = [(GKTurnBasedMatch *)self _participantsForInternalRepresentation:v4];
  participants = self->_participants;
  self->_participants = v5;

  v7 = [(GKTurnBasedMatch *)self _exchangesForInternalRepresentation:v4 participants:self->_participants];

  exchanges = self->_exchanges;
  self->_exchanges = v7;
}

- (id)_participantsForInternalRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 participants];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v3 participants];
    v7 = [v6 _gkMapWithBlock:&__block_literal_global_276];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

GKTurnBasedParticipant *__59__GKTurnBasedMatch__participantsForInternalRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GKTurnBasedParticipant alloc] initWithInternalRepresentation:v2];

  return v3;
}

- (id)_exchangesForInternalRepresentation:(id)a3 participants:(id)a4
{
  v5 = a3;
  v6 = [v5 exchanges];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(GKTurnBasedMatch *)self participants];
    v9 = [v8 count];
    v10 = [v5 exchanges];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__GKTurnBasedMatch__exchangesForInternalRepresentation_participants___block_invoke;
    v14[3] = &unk_2785E01A0;
    v14[4] = self;
    v15 = v8;
    v16 = v9;
    v11 = v8;
    v12 = [v10 _gkMapWithBlock:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

GKTurnBasedExchange *__69__GKTurnBasedMatch__exchangesForInternalRepresentation_participants___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [GKTurnBasedExchange alloc];
  v5 = [*(a1 + 32) daemonProxy];
  v6 = [(GKTurnBasedExchange *)v4 initWithInternalRepresentation:v3 daemonProxy:v5];

  [(GKTurnBasedExchange *)v6 setMatch:*(a1 + 32)];
  v7 = [*(a1 + 40) objectAtIndex:{objc_msgSend(v3, "senderIndex")}];
  [(GKTurnBasedExchange *)v6 setSender:v7];

  v8 = [v3 recipientIndexes];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__GKTurnBasedMatch__exchangesForInternalRepresentation_participants___block_invoke_2;
  v21[3] = &unk_2785E0150;
  v9 = *(a1 + 40);
  v23 = *(a1 + 48);
  v22 = v9;
  v10 = [v8 _gkMapWithBlock:v21];
  [(GKTurnBasedExchange *)v6 setRecipients:v10];

  v11 = [v3 replies];

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __69__GKTurnBasedMatch__exchangesForInternalRepresentation_participants___block_invoke_3;
  v18 = &unk_2785E0178;
  v12 = *(a1 + 40);
  v19 = *(a1 + 32);
  v20 = v12;
  v13 = [v11 _gkMapWithBlock:&v15];
  [(GKTurnBasedExchange *)v6 setReplies:v13, v15, v16, v17, v18, v19];

  return v6;
}

uint64_t __69__GKTurnBasedMatch__exchangesForInternalRepresentation_participants___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = v3;
  if (v3 < 0 || v3 >= *(a1 + 40))
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"recipientIndex %ld is invalid", v3];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKTurnBasedMatch.m"];
    v8 = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (recipientIndex >= 0 && recipientIndex < participantCount)\n[%s (%s:%d)]", v6, "-[GKTurnBasedMatch _exchangesForInternalRepresentation:participants:]_block_invoke_2", objc_msgSend(v8, "UTF8String"), 928];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  v10 = *(a1 + 32);

  return [v10 objectAtIndex:v4];
}

GKTurnBasedExchangeReply *__69__GKTurnBasedMatch__exchangesForInternalRepresentation_participants___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [GKTurnBasedExchangeReply alloc];
  v5 = [*(a1 + 32) daemonProxy];
  v6 = [(GKTurnBasedExchangeReply *)v4 initWithInternalRepresentation:v3 daemonProxy:v5];

  v7 = *(a1 + 40);
  v8 = [v3 recipientIndex];

  v9 = [v7 objectAtIndex:v8];
  [(GKTurnBasedExchangeReply *)v6 setRecipient:v9];

  [(GKTurnBasedExchangeReply *)v6 setMatch:*(a1 + 32)];

  return v6;
}

- (BOOL)isMyTurn
{
  v2 = [(GKTurnBasedMatch *)self internal];
  v3 = [v2 currentPlayer];
  v4 = [v3 isLocalPlayer];

  return v4;
}

- (GKGame)game
{
  v3 = [GKGame alloc];
  v4 = [(GKTurnBasedMatch *)self internal];
  v5 = [v4 game];
  v6 = [(GKGame *)v3 initWithInternalRepresentation:v5];

  return v6;
}

+ (id)instanceMethodSignatureForSelector:(SEL)a3
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___GKTurnBasedMatch;
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
  v10.super_class = GKTurnBasedMatch;
  v5 = [(GKTurnBasedMatch *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKTurnBasedMatch *)self forwardingTargetForSelector:a3];
    v7 = [v8 methodSignatureForSelector:a3];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = GKTurnBasedMatch;
  if ([(GKTurnBasedMatch *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKTurnBasedMatch *)self forwardingTargetForSelector:a3];
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
      v4 = GKApplicationLinkedOnOrAfter(393216, 0);
      if (v4)
      {

        LOBYTE(v4) = [GKTurnBasedMatchInternal instancesRespondToSelector:a3];
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
  v5 = [(GKTurnBasedMatch *)self internal];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKTurnBasedMatch *)self internal];
  [v8 setValue:v7 forKey:v6];
}

- (NSString)message
{
  v3 = [(GKTurnBasedMatch *)self internal];
  v4 = [(GKTurnBasedMatch *)self daemonProxy];
  v5 = [v3 localizableMessage];
  v6 = [(GKTurnBasedMatch *)self bundleID];
  v7 = [v4 localizedMessageFromDictionary:v5 forBundleID:v6];

  if (!v7)
  {
    v7 = [v3 message];
  }

  return v7;
}

- (void)setMessage:(NSString *)message
{
  v5 = message;
  v4 = [(GKTurnBasedMatch *)self internal];
  [v4 setMessage:v5];

  [(GKTurnBasedMatch *)self setLocalizableMessageWithKey:v5 arguments:0];
}

+ (id)_localizableMessageWithKey:(id)a3 arguments:(id)a4 defaultMessage:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v33 = a5;
  v9 = [MEMORY[0x277CBEB18] array];
  if (!v7)
  {
    v32 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"nil key" userInfo:0];
    objc_exception_throw(v32);
  }

  v10 = v9;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v8;
  v12 = [(__CFString *)v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v22 = MEMORY[0x277CBEAD8];
            v23 = *MEMORY[0x277CBE660];
            v40[0] = @"key";
            v40[1] = @"arguments";
            v28 = @"nil";
            if (v11)
            {
              v28 = v11;
            }

            v41[0] = v7;
            v41[1] = v28;
            v25 = MEMORY[0x277CBEAC0];
            v26 = v41;
            v27 = v40;
LABEL_25:
            v29 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:2];
            v30 = [v22 exceptionWithName:v23 reason:@"localized message arguments must be strings or implement stringValue" userInfo:v29];
            v31 = v30;

            objc_exception_throw(v30);
          }

          v17 = [v16 stringValue];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v22 = MEMORY[0x277CBEAD8];
            v23 = *MEMORY[0x277CBE660];
            v42[0] = @"key";
            v42[1] = @"arguments";
            v24 = @"nil";
            if (v11)
            {
              v24 = v11;
            }

            v43[0] = v7;
            v43[1] = v24;
            v25 = MEMORY[0x277CBEAC0];
            v26 = v43;
            v27 = v42;
            goto LABEL_25;
          }

          v16 = v17;
        }

        [v10 addObject:v16];
      }

      v13 = [(__CFString *)v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v13);
  }

  v38[0] = @"loc-key";
  v38[1] = @"loc-args";
  v39[0] = v7;
  v39[1] = v10;
  v38[2] = @"loc-default";
  if (v33)
  {
    v18 = v33;
  }

  else
  {
    v18 = &stru_283AFD1E0;
  }

  v39[2] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)setLocalizableMessageWithKey:(NSString *)key arguments:(NSArray *)arguments
{
  v13 = key;
  v6 = arguments;
  if (v13)
  {
    v7 = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = v7;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = MEMORY[0x277CBEBF8];
    }

    v10 = [v7 _gkLocalizedStringForKey:v13 defaultValue:v13 arguments:v9];
    v11 = [GKTurnBasedMatch _localizableMessageWithKey:v13 arguments:v6 defaultMessage:v10];
    v12 = [(GKTurnBasedMatch *)self internal];
    [v12 setLocalizableMessage:v11];
  }

  else
  {
    v8 = [(GKTurnBasedMatch *)self internal];
    [v8 setLocalizableMessage:0];
  }
}

- (unsigned)state
{
  result = self->_state;
  if (!result)
  {
    v4 = [(GKTurnBasedMatch *)self activeExchanges];
    if ([v4 count])
    {
      v5 = 2;
LABEL_30:
      self->_state = v5;

      return self->_state;
    }

    v6 = [(GKTurnBasedMatch *)self status];
    if (v6 != GKTurnBasedMatchStatusMatching)
    {
      if (v6 == GKTurnBasedMatchStatusEnded)
      {
        v5 = 5;
        goto LABEL_30;
      }

      if (v6 != GKTurnBasedMatchStatusOpen)
      {
        if (!os_log_GKGeneral)
        {
          v17 = GKOSLoggers();
        }

        v18 = os_log_GKError;
        if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
        {
          [(GKTurnBasedMatch *)v18 state];
        }

        v5 = 3;
        goto LABEL_30;
      }
    }

    v7 = [(GKTurnBasedMatch *)self currentParticipant];
    v8 = [v7 player];

    v9 = [(GKTurnBasedMatch *)self localPlayerParticipant];
    v10 = v9;
    if (v9 && [v9 status] == 5)
    {
      v5 = 5;
LABEL_29:

      goto LABEL_30;
    }

    v11 = [v8 internal];
    if ([v11 isGuestPlayer])
    {
      v26 = [v8 internal];
      v12 = [v26 hostPlayerInternal];
      v13 = [v12 playerID];
      v14 = +[GKLocalPlayer localPlayer];
      v15 = [v14 internal];
      v16 = [v15 playerID];
      v25 = [v13 isEqualToString:v16];

      if (v25)
      {
        v5 = 6;
        goto LABEL_29;
      }
    }

    else
    {
    }

    if ([v8 isLocalPlayer])
    {
      v19 = [(GKTurnBasedMatch *)self currentParticipant];
      v20 = [v19 status];

      if (v20 == 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = 3;
      }
    }

    else
    {
      v21 = [(GKTurnBasedMatch *)self participants];
      if ([v21 count])
      {

        v5 = 4;
      }

      else
      {
        v22 = [(GKTurnBasedMatch *)self internal];
        v23 = [v22 currentPlayer];
        v24 = [v23 isLocalPlayer];

        if (v24)
        {
          v5 = 3;
        }

        else
        {
          v5 = 4;
        }
      }
    }

    goto LABEL_29;
  }

  return result;
}

- (GKPlayer)currentPlayer
{
  v2 = [(GKTurnBasedMatch *)self internal];
  v3 = [v2 currentPlayer];

  if (v3)
  {
    v4 = [GKPlayer canonicalizedPlayerForInternal:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)description
{
  if (description_onceToken_329 != -1)
  {
    [GKTurnBasedMatch description];
  }

  v3 = description_matchStatusEnumLookupDict;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKTurnBasedMatch status](self, "status")}];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"INVALID";
  }

  v25 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v30 = [(GKTurnBasedMatch *)self matchID];
  v9 = [(GKTurnBasedMatch *)self bundleID];
  v10 = @"<nil>";
  v26 = v9;
  if (v9)
  {
    v10 = v9;
  }

  v24 = v10;
  v11 = [(GKTurnBasedMatch *)self message];
  v27 = v8;
  v28 = v6;
  if (v11)
  {
    v12 = MEMORY[0x277CCACA8];
    v23 = [(GKTurnBasedMatch *)self message];
    v29 = [v12 stringWithFormat:@"'%@'", v23];
  }

  else
  {
    v29 = 0;
  }

  v13 = [(GKTurnBasedMatch *)self creationDate];
  v14 = [(GKTurnBasedMatch *)self currentParticipant];
  v15 = [(GKTurnBasedMatch *)self participants];
  v16 = [v15 componentsJoinedByString:{@", "}];
  v17 = [(GKTurnBasedMatch *)self matchData];
  v18 = [v17 length];
  v19 = [(GKTurnBasedMatch *)self matchDataMaximumSize];
  v20 = [(GKTurnBasedMatch *)self exchanges];
  v21 = [v25 stringWithFormat:@"<%@ %p - matchID:%@ bundleID:%@ status:%@ message:%@ creationDate:%@ currentParticipant:%@ participants:%@ matchData.length:%ld matchDataMaximumSize:%ld exchanges:%@ state:%u>", v27, self, v30, v24, v28, v29, v13, v14, v16, v18, v19, v20, -[GKTurnBasedMatch state](self, "state")];

  if (v11)
  {
  }

  return v21;
}

void __31__GKTurnBasedMatch_description__block_invoke()
{
  v0 = MEMORY[0x277CBEAC0];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v4 = [v0 dictionaryWithObjectsAndKeys:{@"GKTurnBasedMatchStatusUnknown", v6, @"GKTurnBasedMatchStatusOpen", v1, @"GKTurnBasedMatchStatusEnded", v2, @"GKTurnBasedMatchStatusMatching", v3, 0}];
  v5 = description_matchStatusEnumLookupDict;
  description_matchStatusEnumLookupDict = v4;
}

- (GKTurnBasedMatchStatus)status
{
  v2 = [(GKTurnBasedMatch *)self internal];
  v3 = [v2 status];

  if (v3)
  {
    if ([v3 isEqualToString:@"Active"])
    {
      v4 = GKTurnBasedMatchStatusOpen;
    }

    else if ([v3 isEqualToString:@"Complete"])
    {
      v4 = GKTurnBasedMatchStatusEnded;
    }

    else if ([v3 isEqualToString:@"Matching"])
    {
      v4 = GKTurnBasedMatchStatusMatching;
    }

    else
    {
      v4 = GKTurnBasedMatchStatusUnknown;
    }
  }

  else
  {
    v4 = GKTurnBasedMatchStatusUnknown;
  }

  return v4;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(GKTurnBasedMatch *)self state];
  v6 = [v4 state];
  if (v5 == v6)
  {
    v7 = [(GKTurnBasedMatch *)self dateSortKey];
    v8 = [v4 dateSortKey];
    v9 = -[v7 compare:v8];
  }

  else if (v5 < v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (NSDate)dateSortKey
{
  v3 = [(GKTurnBasedMatch *)self internal];
  v4 = [v3 lastTurnDate];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(GKTurnBasedMatch *)self internal];
    v6 = [v7 creationDate];
  }

  return v6;
}

- (void)rematchWithCompletionHandler:(void *)completionHandler
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = completionHandler;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 1207, "-[GKTurnBasedMatch rematchWithCompletionHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v7 = [(GKTurnBasedMatch *)self participants];
  v8 = [v7 valueForKeyPath:@"player"];

  v9 = [(GKTurnBasedMatch *)self participants];
  v10 = [v9 count];

  if (![GKMatchmaker canPlayMultiplayerGameWithPlayers:v8])
  {
    v31 = [MEMORY[0x277CCA9B8] userErrorForCode:10 userInfo:0];
LABEL_21:
    v32 = v31;
    [v6 setError:v31];

    goto LABEL_22;
  }

  if (v10 < 2 || [(GKTurnBasedMatch *)self status]!= GKTurnBasedMatchStatusEnded)
  {
    v31 = [MEMORY[0x277CCA9B8] userErrorForCode:13 underlyingError:0];
    goto LABEL_21;
  }

  v37 = v6;
  v38 = v8;
  v39 = v4;
  v11 = objc_alloc_init(GKMatchRequest);
  [(GKMatchRequest *)v11 setMinPlayers:v10];
  [(GKMatchRequest *)v11 setMaxPlayers:v10];
  v36 = v11;
  v12 = [(GKMatchRequest *)v11 internal];
  [v12 setMatchType:2];

  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:v10 - 1];
  v14 = [MEMORY[0x277CBEB58] set];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v15 = [(GKTurnBasedMatch *)self participants];
  v16 = [v15 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v47;
    do
    {
      v19 = 0;
      do
      {
        if (*v47 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v46 + 1) + 8 * v19) player];
        v21 = v20;
        if (v20)
        {
          v22 = [v20 internal];
          v23 = [v22 playerID];
          if (v23 && ![v21 isLocalPlayer])
          {
            v24 = [v14 containsObject:v21];

            if ((v24 & 1) == 0)
            {
              v25 = [v21 internal];
              v26 = [v25 playerID];
              [v13 addObject:v26];

              [v14 addObject:v21];
            }
          }

          else
          {
          }
        }

        ++v19;
      }

      while (v17 != v19);
      v27 = [v15 countByEnumeratingWithState:&v46 objects:v50 count:16];
      v17 = v27;
    }

    while (v27);
  }

  v28 = [v14 allObjects];
  [(GKMatchRequest *)v36 setRecipients:v28];

  v29 = [(GKMatchRequest *)v36 internal];
  [v29 setRecipientPlayerIDs:v13];

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __49__GKTurnBasedMatch_rematchWithCompletionHandler___block_invoke;
  v43[3] = &unk_2785DD898;
  v44 = v36;
  v6 = v37;
  v45 = v37;
  v30 = v36;
  [v45 perform:v43];

  v8 = v38;
  v4 = v39;
LABEL_22:
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __49__GKTurnBasedMatch_rematchWithCompletionHandler___block_invoke_3;
  v40[3] = &unk_2785DE540;
  v41 = v6;
  v42 = v4;
  v33 = v4;
  v34 = v6;
  [v34 notifyOnMainQueueWithBlock:v40];

  v35 = *MEMORY[0x277D85DE8];
}

void __49__GKTurnBasedMatch_rematchWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 turnBasedService];
  v6 = [*(a1 + 32) internal];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__GKTurnBasedMatch_rematchWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_2785E00E0;
  v9 = *(a1 + 40);
  v10 = v3;
  v7 = v3;
  [v5 createTurnBasedGameForMatchRequest:v6 individualMessages:0 handler:v8];
}

void __49__GKTurnBasedMatch_rematchWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v10 = v5;
  if (a2 && !v5)
  {
    v7 = *(a1 + 32);
    v8 = a2;
    v9 = [[GKTurnBasedMatch alloc] initWithInternalRepresentation:v8];

    [v7 setObject:v9 forKeyedSubscript:@"match"];
    v6 = v10;
  }

  [*(a1 + 32) setError:v6];
  (*(*(a1 + 40) + 16))();
}

void __49__GKTurnBasedMatch_rematchWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"match"];
  v4 = [v3 matchID];
  [v2 postNotificationName:@"GKInternalTurnBasedGameEvent" object:v4];

  v5 = *(a1 + 40);
  if (v5)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:@"match"];
    v6 = [*(a1 + 32) error];
    (*(v5 + 16))(v5, v7, v6);
  }
}

- (void)acceptInviteWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 1260, "-[GKTurnBasedMatch acceptInviteWithCompletionHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v7 = +[GKPreferences shared];
  v8 = [v7 multiplayerAllowedPlayerType];

  if (!v8)
  {
    v10 = [MEMORY[0x277CCA9B8] userErrorForCode:10 underlyingError:0];
    [v6 setError:v10];

    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__GKTurnBasedMatch_acceptInviteWithCompletionHandler___block_invoke;
  v14[3] = &unk_2785DD898;
  v14[4] = self;
  v15 = v6;
  [v15 perform:v14];

  if (v4)
  {
LABEL_3:
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__GKTurnBasedMatch_acceptInviteWithCompletionHandler___block_invoke_3;
    v11[3] = &unk_2785DE540;
    v12 = v6;
    v13 = v4;
    [v12 notifyOnMainQueueWithBlock:v11];
  }

LABEL_4:
  v9 = +[GKReporter reporter];
  [v9 reportEvent:@"com.apple.GameKit.turnBased" type:@"matchAccept"];
}

void __54__GKTurnBasedMatch_acceptInviteWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 turnBasedService];
  v6 = [*(a1 + 32) internal];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__GKTurnBasedMatch_acceptInviteWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_2785E01C8;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v7;
  v11 = v3;
  v8 = v3;
  [v5 acceptInviteForTurnBasedMatch:v6 handler:v9];
}

void __54__GKTurnBasedMatch_acceptInviteWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    [*(a1 + 32) setInternal:v8];
    if (!v5)
    {
      v6 = *(a1 + 40);
      v7 = [[GKTurnBasedMatch alloc] initWithInternalRepresentation:v8];
      [v6 setObject:v7 forKeyedSubscript:@"match"];
    }
  }

  [*(a1 + 40) setError:v5];
  (*(*(a1 + 48) + 16))();
}

void __54__GKTurnBasedMatch_acceptInviteWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"match"];
  v4 = [v3 matchID];
  [v2 postNotificationName:@"GKInternalTurnBasedGameEvent" object:v4];

  v5 = *(a1 + 40);
  v7 = [*(a1 + 32) objectForKeyedSubscript:@"match"];
  v6 = [*(a1 + 32) error];
  (*(v5 + 16))(v5, v7, v6);
}

- (void)declineInviteWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = +[GKDaemonProxy proxyForLocalPlayer];
  v6 = [v5 turnBasedService];
  v7 = [(GKTurnBasedMatch *)self internal];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __55__GKTurnBasedMatch_declineInviteWithCompletionHandler___block_invoke;
  v13 = &unk_2785E00E0;
  v14 = self;
  v15 = v4;
  v8 = v4;
  [v6 declineInviteForTurnBasedMatch:v7 handler:&v10];

  v9 = [GKReporter reporter:v10];
  [v9 reportEvent:@"com.apple.GameKit.turnBased" type:@"matchDecline"];
}

void __55__GKTurnBasedMatch_declineInviteWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    [*(a1 + 32) setInternal:v9];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  v7 = [MEMORY[0x277CCA9A0] defaultCenter];
  v8 = [*(a1 + 32) matchID];
  [v7 postNotificationName:@"GKInternalTurnBasedGameEvent" object:v8];
}

- (GKTurnBasedParticipant)currentParticipant
{
  v3 = [(GKTurnBasedMatch *)self internal];
  v4 = [v3 currentParticipant];

  if (v4 < 0 || (-[GKTurnBasedMatch participants](self, "participants"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= v4))
  {
    v8 = 0;
  }

  else
  {
    v7 = [(GKTurnBasedMatch *)self participants];
    v8 = [v7 objectAtIndex:v4];
  }

  return v8;
}

- (void)setCurrentParticipant:(id)a3
{
  v6 = [a3 internal];
  v4 = [v6 slot];
  v5 = [(GKTurnBasedMatch *)self internal];
  [v5 setCurrentParticipant:v4];
}

- (GKTurnBasedParticipant)previousParticipant
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [(GKTurnBasedMatch *)self participants];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 lastTurnDate];

        if (v9)
        {
          if (!v5 || ([v8 lastTurnDate], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "lastTurnDate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "compare:", v11), v11, v10, v12 == 1))
          {
            v13 = v8;

            v5 = v13;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (GKTurnBasedParticipant)previousParticipantOrFirstKnownPlayer
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(GKTurnBasedMatch *)self previousParticipant];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_3;
  }

  v5 = [v3 internal];
  v6 = [v5 player];
  v7 = [v6 isLocalPlayer];

  v8 = v4;
  if (v7)
  {
LABEL_3:
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [(GKTurnBasedMatch *)self participants];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    v8 = v4;
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [v14 internal];
          v16 = [v15 player];

          if (v16 && ([v16 isLocalPlayer] & 1) == 0)
          {
            v8 = v14;

            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v8 = v4;
    }

LABEL_14:

    if (!v8)
    {
      v8 = v4;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (GKTurnBasedParticipant)playingWithParticipantOrFirstKnownPlayer
{
  v3 = [(GKTurnBasedMatch *)self currentParticipant];
  if (!v3)
  {
    v3 = [(GKTurnBasedMatch *)self firstWinnerOrTiedOrLastLoser];
  }

  v4 = [v3 internal];
  v5 = [v4 player];
  v6 = [v5 isLocalPlayer];

  if (v6)
  {
    v7 = [(GKTurnBasedMatch *)self previousParticipantOrFirstKnownPlayer];

    v3 = v7;
  }

  return v3;
}

- (GKTurnBasedParticipant)localPlayerParticipant
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(GKTurnBasedMatch *)self participants];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 internal];
        v8 = [v7 player];
        v9 = [v8 isLocalPlayer];

        if (v9)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (GKPlayer)showcasePlayer
{
  if ([(GKTurnBasedMatch *)self state]== 1)
  {
    v3 = [(GKTurnBasedMatch *)self currentParticipant];
    [v3 invitedBy];
  }

  else
  {
    v3 = [(GKTurnBasedMatch *)self playingWithParticipantOrFirstKnownPlayer];
    [v3 player];
  }
  v4 = ;

  if (!v4)
  {
    v4 = +[GKPlayer automatchPlayer];
  }

  return v4;
}

- (GKTurnBasedParticipant)firstWinnerOrTiedOrLastLoser
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = [(GKTurnBasedMatch *)self participants];
  v25 = [v2 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v25)
  {

    v3 = 0;
LABEL_27:
    v3 = v3;
    v4 = v3;
    goto LABEL_29;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  obj = v2;
  v24 = *v27;
  do
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v27 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v26 + 1) + 8 * i);
      if ([v7 isWinner])
      {
        if (v5)
        {
          v8 = [v7 lastTurnDate];
          v9 = [v5 lastTurnDate];
          v10 = [v8 compare:v9];

          v11 = v5;
          v12 = v3;
          v13 = v4;
          v14 = v7;
LABEL_12:
          if (v10 != -1)
          {
            continue;
          }
        }

        else
        {
          v11 = 0;
          v12 = v3;
          v13 = v4;
          v14 = v7;
        }

LABEL_21:
        v20 = v7;

        v3 = v12;
        v4 = v13;
        v5 = v14;
        continue;
      }

      if ([v7 matchOutcome] == 4)
      {
        if (v4)
        {
          v15 = [v7 lastTurnDate];
          v16 = [v4 lastTurnDate];
          v10 = [v15 compare:v16];

          v11 = v4;
          v12 = v3;
          v13 = v7;
          v14 = v5;
          goto LABEL_12;
        }

        v11 = 0;
        v12 = v3;
        v13 = v7;
        goto LABEL_20;
      }

      if (!v3)
      {
        v11 = 0;
        v12 = v7;
        v13 = v4;
LABEL_20:
        v14 = v5;
        goto LABEL_21;
      }

      v17 = [v7 lastTurnDate];
      v18 = [v3 lastTurnDate];
      v19 = [v17 compare:v18];

      v11 = v3;
      v12 = v7;
      v13 = v4;
      v14 = v5;
      if (v19 == 1)
      {
        goto LABEL_21;
      }
    }

    v25 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v25);

  if (v5)
  {

    v4 = v5;
    goto LABEL_29;
  }

  if (!v4)
  {
    goto LABEL_27;
  }

LABEL_29:

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSArray)activeExchanges
{
  v37 = *MEMORY[0x277D85DE8];
  if ([(GKTurnBasedMatch *)self status]== GKTurnBasedMatchStatusOpen)
  {
    v3 = [(GKTurnBasedMatch *)self localPlayerParticipant];
    v26 = [MEMORY[0x277CBEB18] array];
    v4 = [(GKTurnBasedMatch *)self exchanges];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v32;
      v24 = *v32;
      v25 = v4;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v31 + 1) + 8 * i);
          if ([v9 status] == 1)
          {
            v10 = [v9 recipients];
            v11 = [v10 indexOfObject:v3];

            if (v11 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v12 = [v9 replies];
              v27 = 0u;
              v28 = 0u;
              v29 = 0u;
              v30 = 0u;
              v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (!v13)
              {
                goto LABEL_17;
              }

              v14 = v13;
              v15 = 0;
              v16 = *v28;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v28 != v16)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v18 = [*(*(&v27 + 1) + 8 * j) recipient];
                  v19 = v18 == v3;

                  v15 |= v19;
                }

                v14 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
              }

              while (v14);
              v7 = v24;
              v4 = v25;
              if ((v15 & 1) == 0)
              {
LABEL_17:
                [v26 addObject:v9];
              }
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v6);
    }

    if ([v26 count])
    {
      v20 = v26;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (NSArray)completedExchanges
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(GKTurnBasedMatch *)self status]== GKTurnBasedMatchStatusOpen)
  {
    v3 = [(GKTurnBasedMatch *)self localPlayerParticipant];
    v4 = [(GKTurnBasedMatch *)self currentParticipant];
    if (v3 == v4)
    {
      v6 = [MEMORY[0x277CBEB18] array];
      v7 = [(GKTurnBasedMatch *)self exchanges];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * i);
            if ([v12 status] == 2)
            {
              [v6 addObject:v12];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }

      if ([v6 count])
      {
        v13 = v6;
      }

      else
      {
        v13 = 0;
      }

      v5 = v13;
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

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)removeWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 1461, "-[GKTurnBasedMatch removeWithCompletionHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v7 = [(GKTurnBasedMatch *)self localPlayerParticipant];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__GKTurnBasedMatch_removeWithCompletionHandler___block_invoke;
  v15[3] = &unk_2785DD910;
  v16 = v7;
  v17 = self;
  v8 = v6;
  v18 = v8;
  v9 = v7;
  [v8 perform:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__GKTurnBasedMatch_removeWithCompletionHandler___block_invoke_4;
  v12[3] = &unk_2785DE478;
  v13 = v8;
  v14 = v4;
  v12[4] = self;
  v10 = v8;
  v11 = v4;
  [v10 notifyOnMainQueueWithBlock:v12];
}

void __48__GKTurnBasedMatch_removeWithCompletionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] status] == 1 && objc_msgSend(a1[5], "status") == 3)
  {
    v4 = a1[5];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __48__GKTurnBasedMatch_removeWithCompletionHandler___block_invoke_2;
    v14[3] = &unk_2785DE008;
    v5 = &v15;
    v15 = v3;
    v6 = v3;
    [v4 declineInviteWithCompletionHandler:v14];
  }

  else
  {
    v7 = +[GKDaemonProxy proxyForLocalPlayer];
    v8 = [v7 turnBasedService];
    v9 = [a1[5] internal];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__GKTurnBasedMatch_removeWithCompletionHandler___block_invoke_3;
    v11[3] = &unk_2785DD8E8;
    v5 = &v12;
    v12 = a1[6];
    v13 = v3;
    v10 = v3;
    [v8 removeTurnBasedMatch:v9 handler:v11];
  }
}

uint64_t __48__GKTurnBasedMatch_removeWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __48__GKTurnBasedMatch_removeWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v3 = [*(a1 + 32) matchID];
  [v2 postNotificationName:@"GKInternalTurnBasedGameEvent" object:v3];

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = [*(a1 + 40) error];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)loadMatchDataWithCompletionHandler:(void *)completionHandler
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = completionHandler;
  v5 = +[GKDaemonProxy proxyForLocalPlayer];
  v6 = [v5 turnBasedService];
  v7 = [(GKTurnBasedMatch *)self matchID];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__GKTurnBasedMatch_loadMatchDataWithCompletionHandler___block_invoke;
  v11[3] = &unk_2785DDC38;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  [v6 getDetailsForTurnBasedMatchIDs:v8 includeGameData:1 handler:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __55__GKTurnBasedMatch_loadMatchDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 count])
  {
    v6 = [v9 objectAtIndex:0];
    [*(a1 + 32) setInternal:v6];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = [*(a1 + 32) matchData];
    (*(v7 + 16))(v7, v8, v5);
  }
}

+ (void)loadTurnBasedMatchWithDetailsForMatchID:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 1495, "+[GKTurnBasedMatch loadTurnBasedMatchWithDetailsForMatchID:withCompletionHandler:]"];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__GKTurnBasedMatch_loadTurnBasedMatchWithDetailsForMatchID_withCompletionHandler___block_invoke;
  v10[3] = &unk_2785DE540;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [GKActivity named:v7 execute:v10];
}

void __82__GKTurnBasedMatch_loadTurnBasedMatchWithDetailsForMatchID_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 1496, "+[GKTurnBasedMatch loadTurnBasedMatchWithDetailsForMatchID:withCompletionHandler:]_block_invoke"];
  v3 = [GKDispatchGroup dispatchGroupWithName:v2];

  v4 = *(a1 + 32);
  if (v4)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __82__GKTurnBasedMatch_loadTurnBasedMatchWithDetailsForMatchID_withCompletionHandler___block_invoke_369;
    v15[3] = &unk_2785DD898;
    v16 = v4;
    v17 = v3;
    [v17 perform:v15];

    v5 = v16;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __82__GKTurnBasedMatch_loadTurnBasedMatchWithDetailsForMatchID_withCompletionHandler___block_invoke_cold_1(v7);
    }

    if (GKApplicationLinkedOnOrAfter(458752, 657920))
    {
      v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"nil matchID" userInfo:0];
      objc_exception_throw(v11);
    }

    v5 = [MEMORY[0x277CCA9B8] userErrorForCode:17 underlyingError:0];
    [v3 setError:v5];
  }

  if (*(a1 + 40))
  {
    v8 = [MEMORY[0x277CCA9A0] defaultCenter];
    v9 = [v3 objectForKeyedSubscript:@"match"];
    v10 = [v9 matchID];
    [v8 postNotificationName:@"GKInternalTurnBasedGameEvent" object:v10];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __82__GKTurnBasedMatch_loadTurnBasedMatchWithDetailsForMatchID_withCompletionHandler___block_invoke_370;
    v12[3] = &unk_2785DDC10;
    v14 = *(a1 + 40);
    v13 = v3;
    [v13 notifyOnMainQueueWithBlock:v12];
  }
}

void __82__GKTurnBasedMatch_loadTurnBasedMatchWithDetailsForMatchID_withCompletionHandler___block_invoke_369(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 turnBasedService];
  v13[0] = *(a1 + 32);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__GKTurnBasedMatch_loadTurnBasedMatchWithDetailsForMatchID_withCompletionHandler___block_invoke_2;
  v9[3] = &unk_2785DE568;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v3;
  v7 = v3;
  [v5 getDetailsForTurnBasedMatchIDs:v6 includeGameData:1 handler:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __82__GKTurnBasedMatch_loadTurnBasedMatchWithDetailsForMatchID_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __82__GKTurnBasedMatch_loadTurnBasedMatchWithDetailsForMatchID_withCompletionHandler___block_invoke_2_cold_1(a1, v6, v8);
    }
  }

  v9 = [GKTurnBasedMatch matchesWithInternalRepresentations:v5];
  v10 = *(a1 + 40);
  v11 = [v9 lastObject];
  [v10 setObject:v11 forKeyedSubscript:@"match"];

  [*(a1 + 40) setError:v6];
  (*(*(a1 + 48) + 16))();
}

void __82__GKTurnBasedMatch_loadTurnBasedMatchWithDetailsForMatchID_withCompletionHandler___block_invoke_370(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"match"];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)loadURLWithMatchRequest:(id)a3 completionHandler:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__GKTurnBasedMatch_loadURLWithMatchRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_2785DE008;
  v8 = v7;
  v37 = v8;
  v9 = _Block_copy(aBlock);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __62__GKTurnBasedMatch_loadURLWithMatchRequest_completionHandler___block_invoke_2;
  v34[3] = &unk_2785DF930;
  v10 = v9;
  v35 = v10;
  v11 = _Block_copy(v34);
  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_INFO, "GKMatchmaker: matchWithRequest: currentMatch: - Check for Local Player Authentication", buf, 2u);
  }

  v14 = +[GKLocalPlayer localPlayer];
  v15 = [v14 isAuthenticated];

  if (v15)
  {
    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    v17 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v17, OS_LOG_TYPE_INFO, "GKMatchmaker: matchWithRequest: currentMatch: - Check parental controls", buf, 2u);
    }

    v18 = +[GKPreferences shared];
    v19 = [v18 multiplayerAllowedPlayerType];

    if (v19)
    {
      v20 = [v6 validateForTurnBased];
      if (v20)
      {
        if (!os_log_GKGeneral)
        {
          v21 = GKOSLoggers();
        }

        v22 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v39 = v6;
          _os_log_impl(&dword_227904000, v22, OS_LOG_TYPE_INFO, "TBGame - isTurnBasedValid: NO, request = %@", buf, 0xCu);
        }

        (*(v10 + 2))(v10, v20);
      }

      else
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 1568, "-[GKTurnBasedMatch loadURLWithMatchRequest:completionHandler:]"];
        v24 = [GKDispatchGroup dispatchGroupWithName:v23];

        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __62__GKTurnBasedMatch_loadURLWithMatchRequest_completionHandler___block_invoke_373;
        v31[3] = &unk_2785DD910;
        v31[4] = self;
        v32 = v6;
        v25 = v24;
        v33 = v25;
        [v25 perform:v31];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __62__GKTurnBasedMatch_loadURLWithMatchRequest_completionHandler___block_invoke_376;
        v28[3] = &unk_2785DDC10;
        v29 = v25;
        v30 = v8;
        v26 = v25;
        [v26 notifyOnMainQueueWithBlock:v28];
      }
    }

    else
    {
      v11[2](v11, 10);
    }
  }

  else
  {
    v11[2](v11, 6);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __62__GKTurnBasedMatch_loadURLWithMatchRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
  {
    __62__GKTurnBasedMatch_loadURLWithMatchRequest_completionHandler___block_invoke_cold_1(v5, v3);
  }

  if (*(a1 + 32))
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__GKTurnBasedMatch_loadURLWithMatchRequest_completionHandler___block_invoke_371;
    v6[3] = &unk_2785DDC10;
    v8 = *(a1 + 32);
    v7 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __62__GKTurnBasedMatch_loadURLWithMatchRequest_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userErrorForCode:a2 underlyingError:0];
  (*(v2 + 16))(v2, v3);
}

void __62__GKTurnBasedMatch_loadURLWithMatchRequest_completionHandler___block_invoke_373(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 turnBasedService];
  v6 = [a1[4] internal];
  v7 = +[GKLocalPlayer localPlayer];
  v8 = [v7 internal];
  v9 = [a1[5] internal];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__GKTurnBasedMatch_loadURLWithMatchRequest_completionHandler___block_invoke_2_374;
  v11[3] = &unk_2785E01F0;
  v12 = a1[6];
  v13 = v3;
  v10 = v3;
  [v5 loadURLWithTBGMatch:v6 player:v8 matchRequest:v9 handler:v11];
}

void __62__GKTurnBasedMatch_loadURLWithMatchRequest_completionHandler___block_invoke_2_374(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "TBGame - turnBasedService loadURLWithTBGMatch result, url = %@, error = %@", &v10, 0x16u);
  }

  [*(a1 + 32) setResult:v5];
  [*(a1 + 32) setError:v6];
  (*(*(a1 + 40) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

void __62__GKTurnBasedMatch_loadURLWithMatchRequest_completionHandler___block_invoke_376(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v4 = [*(a1 + 32) result];
    v3 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v4, v3);
  }
}

- (void)reserveShareParticipantSlots:(int64_t)a3 minPlayerCount:(int64_t)a4 maxPlayerCount:(int64_t)a5 andInvitePlayers:(id)a6 withMessage:(id)a7 handler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v19 = +[GKDaemonProxy proxyForLocalPlayer];
  v17 = [v19 turnBasedService];
  v18 = [(GKTurnBasedMatch *)self internal];
  [v17 reserveShareParticipantSlots:a3 minPlayerCount:a4 maxPlayerCount:a5 andInvitePlayers:v16 withMessage:v15 forMatch:v18 handler:v14];
}

- (void)endTurnWithNextParticipant:(GKTurnBasedParticipant *)nextParticipant matchData:(NSData *)matchData completionHandler:(void *)completionHandler
{
  v8 = MEMORY[0x277CBEA60];
  v9 = completionHandler;
  v10 = matchData;
  v11 = [v8 arrayWithObject:nextParticipant];
  [(GKTurnBasedMatch *)self endTurnWithNextParticipants:v11 turnTimeout:v10 matchData:v9 completionHandler:GKTurnTimeoutDefault];
}

- (id)indexesForParticipants:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v17 = v4;
      v9 = *v19;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [(GKTurnBasedMatch *)self participants];
          v13 = [v12 indexOfObject:v11];

          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {

            v5 = 0;
            goto LABEL_12;
          }

          v14 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
          [v5 addObject:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

LABEL_12:
      v4 = v17;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)endTurnWithNextParticipants:(NSArray *)nextParticipants turnTimeout:(NSTimeInterval)timeout matchData:(NSData *)matchData completionHandler:(void *)completionHandler
{
  v39[1] = *MEMORY[0x277D85DE8];
  v10 = nextParticipants;
  v11 = matchData;
  v12 = completionHandler;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 1616, "-[GKTurnBasedMatch endTurnWithNextParticipants:turnTimeout:matchData:completionHandler:]"];
  v14 = [GKDispatchGroup dispatchGroupWithName:v13];

  v15 = +[GKPreferences shared];
  v16 = [v15 multiplayerAllowedPlayerType];

  if (v16)
  {
    v17 = [(GKTurnBasedMatch *)self indexesForParticipants:v10];
    if (GKApplicationLinkedOnOrAfter(458752, 657920))
    {
      if (!v11)
      {
        v24 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"nil matchData" userInfo:0];
        objc_exception_throw(v24);
      }

      if (!v17)
      {
        v25 = MEMORY[0x277CBEAD8];
        v26 = *MEMORY[0x277CBE660];
        if (v10)
        {
          v27 = v10;
        }

        else
        {
          v27 = @"nil";
        }

        v38 = @"nextParticipants";
        v39[0] = v27;
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
        v29 = [v25 exceptionWithName:v26 reason:@"invalid list of nextParticipants" userInfo:v28];
        v30 = v29;

        objc_exception_throw(v29);
      }
    }

    if (v11 && v17)
    {
      v18 = [(NSArray *)v10 objectAtIndex:0];
      [(GKTurnBasedMatch *)self setCurrentParticipant:v18];

      v19 = [(GKTurnBasedMatch *)self internal];
      [v19 setMatchData:v11];

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __88__GKTurnBasedMatch_endTurnWithNextParticipants_turnTimeout_matchData_completionHandler___block_invoke;
      v34[3] = &unk_2785DDBE8;
      v34[4] = self;
      v35 = v17;
      v37 = timeout;
      v36 = v14;
      [v36 perform:v34];
    }

    else
    {
      v20 = [MEMORY[0x277CCA9B8] userErrorForCode:17 underlyingError:0];
      [v14 setError:v20];
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] userErrorForCode:10 underlyingError:0];
    [v14 setError:v17];
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __88__GKTurnBasedMatch_endTurnWithNextParticipants_turnTimeout_matchData_completionHandler___block_invoke_3;
  v31[3] = &unk_2785DE478;
  v32 = v14;
  v33 = v12;
  v31[4] = self;
  v21 = v14;
  v22 = v12;
  [v21 notifyOnMainQueueWithBlock:v31];

  v23 = *MEMORY[0x277D85DE8];
}

void __88__GKTurnBasedMatch_endTurnWithNextParticipants_turnTimeout_matchData_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 turnBasedService];
  v6 = [*(a1 + 32) internal];
  v7 = *(a1 + 56);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__GKTurnBasedMatch_endTurnWithNextParticipants_turnTimeout_matchData_completionHandler___block_invoke_2;
  v10[3] = &unk_2785E01C8;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = *(a1 + 48);
  v12 = v3;
  v9 = v3;
  [v5 submitTurnForTurnBasedMatch:v6 nextParticipantIndexes:v8 turnTimeout:v10 handler:v7];
}

void __88__GKTurnBasedMatch_endTurnWithNextParticipants_turnTimeout_matchData_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setInternal:a2];
  }

  [*(a1 + 40) setError:v5];
  (*(*(a1 + 48) + 16))();
}

void __88__GKTurnBasedMatch_endTurnWithNextParticipants_turnTimeout_matchData_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v3 = [*(a1 + 32) matchID];
  [v2 postNotificationName:@"GKInternalTurnBasedGameEvent" object:v3];

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = [*(a1 + 40) error];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)participantQuitInTurnWithOutcome:(GKTurnBasedMatchOutcome)matchOutcome nextParticipant:(GKTurnBasedParticipant *)nextParticipant matchData:(NSData *)matchData completionHandler:(void *)completionHandler
{
  v10 = MEMORY[0x277CBEA60];
  v11 = completionHandler;
  v12 = matchData;
  v13 = [v10 arrayWithObject:nextParticipant];
  [(GKTurnBasedMatch *)self participantQuitInTurnWithOutcome:matchOutcome nextParticipants:v13 turnTimeout:v12 matchData:v11 completionHandler:GKTurnTimeoutDefault];
}

- (void)participantQuitInTurnWithOutcome:(GKTurnBasedMatchOutcome)matchOutcome nextParticipants:(NSArray *)nextParticipants turnTimeout:(NSTimeInterval)timeout matchData:(NSData *)matchData completionHandler:(void *)completionHandler
{
  v40[1] = *MEMORY[0x277D85DE8];
  v12 = nextParticipants;
  v13 = matchData;
  v14 = completionHandler;
  v15 = [(GKTurnBasedMatch *)self indexesForParticipants:v12];
  v16 = [GKTurnBasedParticipant matchOutcomeIsValidForDoneState:matchOutcome];
  if (GKApplicationLinkedOnOrAfter(458752, 657920))
  {
    if (!v13)
    {
      v21 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"nil matchData" userInfo:0];
      objc_exception_throw(v21);
    }

    if (!v16)
    {
      v22 = MEMORY[0x277CBEAD8];
      v23 = *MEMORY[0x277CBE660];
      v39 = @"matchOutcome";
      v24 = [(GKTurnBasedMatch *)self participants];
      v25 = +[GKTurnBasedParticipant stringForMatchOutcome:totalParticipant:](GKTurnBasedParticipant, "stringForMatchOutcome:totalParticipant:", matchOutcome, [v24 count]);
      v40[0] = v25;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      v27 = [v22 exceptionWithName:v23 reason:@"invalid matchOutcome" userInfo:v26];
      v28 = v27;

      objc_exception_throw(v27);
    }

    if (!v15)
    {
      v29 = MEMORY[0x277CBEAD8];
      v30 = *MEMORY[0x277CBE660];
      if (v12)
      {
        v31 = v12;
      }

      else
      {
        v31 = @"nil";
      }

      v37 = @"nextParticipants";
      v38 = v31;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v33 = [v29 exceptionWithName:v30 reason:@"invalid nextParticipants" userInfo:v32];
      v34 = v33;

      objc_exception_throw(v33);
    }
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v18 = [(GKTurnBasedMatch *)self currentParticipant];
    [v18 setStatus:5];

    v19 = [(GKTurnBasedMatch *)self currentParticipant];
    [v19 setMatchOutcome:matchOutcome];

    [(GKTurnBasedMatch *)self endTurnWithNextParticipants:v12 turnTimeout:v13 matchData:v14 completionHandler:timeout];
  }

  else if (v14)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __110__GKTurnBasedMatch_participantQuitInTurnWithOutcome_nextParticipants_turnTimeout_matchData_completionHandler___block_invoke;
    block[3] = &unk_2785DE540;
    block[4] = self;
    v36 = v14;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __110__GKTurnBasedMatch_participantQuitInTurnWithOutcome_nextParticipants_turnTimeout_matchData_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v3 = [*(a1 + 32) matchID];
  [v2 postNotificationName:@"GKInternalTurnBasedGameEvent" object:v3];

  v4 = *(a1 + 40);
  v5 = [MEMORY[0x277CCA9B8] userErrorForCode:17 underlyingError:0];
  (*(v4 + 16))(v4, v5);
}

- (void)participantQuitOutOfTurnWithOutcome:(GKTurnBasedMatchOutcome)matchOutcome withCompletionHandler:(void *)completionHandler
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = completionHandler;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 1687, "-[GKTurnBasedMatch participantQuitOutOfTurnWithOutcome:withCompletionHandler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  if ([GKTurnBasedParticipant matchOutcomeIsValidForDoneState:matchOutcome])
  {
    v9 = [(GKTurnBasedMatch *)self localPlayerParticipant];
    v10 = [(GKTurnBasedMatch *)self currentParticipant];
    if ([v10 isEqual:v9])
    {
      if (GKApplicationLinkedOnOrAfter(458752, 657920))
      {
        v23 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"current turn holder can not quit out of turn" userInfo:0];
        objc_exception_throw(v23);
      }

      v11 = [MEMORY[0x277CCA9B8] userErrorForCode:17 underlyingError:0];
      [v8 setError:v11];
    }

    else
    {
      [v9 setStatus:5];
      [v9 setMatchOutcome:matchOutcome];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __78__GKTurnBasedMatch_participantQuitOutOfTurnWithOutcome_withCompletionHandler___block_invoke;
      v27[3] = &unk_2785DE6E0;
      v27[4] = self;
      v29 = matchOutcome;
      v28 = v8;
      [v28 perform:v27];
    }
  }

  else
  {
    if (GKApplicationLinkedOnOrAfter(458752, 657920))
    {
      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE660];
      v30 = @"matchOutcome";
      v18 = [(GKTurnBasedMatch *)self participants];
      v19 = +[GKTurnBasedParticipant stringForMatchOutcome:totalParticipant:](GKTurnBasedParticipant, "stringForMatchOutcome:totalParticipant:", matchOutcome, [v18 count]);
      v31[0] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v21 = [v16 exceptionWithName:v17 reason:@"invalid matchOutcome" userInfo:v20];
      v22 = v21;

      objc_exception_throw(v21);
    }

    v12 = [MEMORY[0x277CCA9B8] userErrorForCode:17 underlyingError:0];
    [v8 setError:v12];
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __78__GKTurnBasedMatch_participantQuitOutOfTurnWithOutcome_withCompletionHandler___block_invoke_3;
  v24[3] = &unk_2785DE478;
  v25 = v8;
  v26 = v6;
  v24[4] = self;
  v13 = v8;
  v14 = v6;
  [v13 notifyOnMainQueueWithBlock:v24];

  v15 = *MEMORY[0x277D85DE8];
}

void __78__GKTurnBasedMatch_participantQuitOutOfTurnWithOutcome_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 turnBasedService];
  v6 = [*(a1 + 32) internal];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__GKTurnBasedMatch_participantQuitOutOfTurnWithOutcome_withCompletionHandler___block_invoke_2;
  v10[3] = &unk_2785E01C8;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10[4] = *(a1 + 32);
  v11 = v7;
  v12 = v3;
  v9 = v3;
  [v5 resignFromTurnBasedGame:v6 outcome:v8 handler:v10];
}

void __78__GKTurnBasedMatch_participantQuitOutOfTurnWithOutcome_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = [v9 game];

    if (!v6)
    {
      v7 = [*(a1 + 32) internal];
      v8 = [v7 game];
      [v9 setGame:v8];
    }

    [*(a1 + 32) setInternal:v9];
  }

  [*(a1 + 40) setError:v5];
  (*(*(a1 + 48) + 16))();
}

void __78__GKTurnBasedMatch_participantQuitOutOfTurnWithOutcome_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v3 = [*(a1 + 32) matchID];
  [v2 postNotificationName:@"GKInternalTurnBasedGameEvent" object:v3];

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = [*(a1 + 40) error];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)endMatchInTurnWithMatchData:(NSData *)matchData scores:(NSArray *)scores achievements:(NSArray *)achievements completionHandler:(void *)completionHandler
{
  v69 = *MEMORY[0x277D85DE8];
  v10 = matchData;
  v11 = scores;
  v12 = achievements;
  v13 = completionHandler;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 1730, "-[GKTurnBasedMatch endMatchInTurnWithMatchData:scores:achievements:completionHandler:]"];
  v15 = [GKDispatchGroup dispatchGroupWithName:v14];

  v16 = "nge received alert without further action";
  if (v10)
  {
    v48 = self;
    v49 = v11;
    v47 = v10;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v17 = [(GKTurnBasedMatch *)self participants];
    v18 = [v17 countByEnumeratingWithState:&v61 objects:v68 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v62;
LABEL_4:
      v21 = 0;
      while (1)
      {
        if (*v62 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v61 + 1) + 8 * v21);
        if (([(__CFString *)v22 status]& 0xFFFFFFFFFFFFFFFELL) == 4 && ![GKTurnBasedParticipant matchOutcomeIsValidForDoneState:[(__CFString *)v22 matchOutcome]])
        {
          if (GKApplicationLinkedOnOrAfter(458752, 657920))
          {
            v37 = MEMORY[0x277CBEAD8];
            v38 = *MEMORY[0x277CBE660];
            v39 = @"nil";
            if (v22)
            {
              v39 = v22;
            }

            v67[0] = v39;
            v66[0] = @"participant";
            v66[1] = @"matchOutcome";
            v40 = [(__CFString *)v22 matchOutcome];
            v41 = [(GKTurnBasedMatch *)v48 participants];
            v42 = +[GKTurnBasedParticipant stringForMatchOutcome:totalParticipant:](GKTurnBasedParticipant, "stringForMatchOutcome:totalParticipant:", v40, [v41 count]);
            v67[1] = v42;
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:2];
            v44 = [v37 exceptionWithName:v38 reason:@"invalid matchOutcome for participant" userInfo:v43];
            v45 = v44;

            objc_exception_throw(v44);
          }

          v23 = [MEMORY[0x277CCA9B8] userErrorForCode:17 underlyingError:0];
          [v15 setError:v23];
        }

        v24 = [v15 error];

        if (v24)
        {
          break;
        }

        if (v19 == ++v21)
        {
          v19 = [v17 countByEnumeratingWithState:&v61 objects:v68 count:16];
          if (v19)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v25 = [v15 error];

    v10 = v47;
    self = v48;
    v11 = v49;
    v16 = "Close the challenge received alert without further action" + 16;
    if (!v25)
    {
      v26 = [(GKTurnBasedMatch *)v48 currentParticipant];
      [v26 setStatus:5];

      v27 = [(GKTurnBasedMatch *)v48 internal];
      [v27 setMatchData:v47];

      v59 = 0u;
      v60 = 0u;
      v58 = 0u;
      v57 = 0u;
      v28 = [(GKTurnBasedMatch *)v48 participants];
      v29 = [v28 countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v58;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v58 != v31)
            {
              objc_enumerationMutation(v28);
            }

            [*(*(&v57 + 1) + 8 * i) setStatus:5];
          }

          v30 = [v28 countByEnumeratingWithState:&v57 objects:v65 count:16];
        }

        while (v30);
      }

      v53[0] = MEMORY[0x277D85DD0];
      v16 = "nge received alert without further action";
      v53[1] = 3221225472;
      v53[2] = __86__GKTurnBasedMatch_endMatchInTurnWithMatchData_scores_achievements_completionHandler___block_invoke;
      v53[3] = &unk_2785DE4C8;
      v53[4] = v48;
      v11 = v49;
      v54 = v49;
      v55 = v12;
      v56 = v15;
      [v56 perform:v53];
    }
  }

  else
  {
    if (GKApplicationLinkedOnOrAfter(458752, 657920))
    {
      v46 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"nil matchData" userInfo:0];
      objc_exception_throw(v46);
    }

    v33 = [MEMORY[0x277CCA9B8] userErrorForCode:17 underlyingError:0];
    [v15 setError:v33];
  }

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = *(v16 + 434);
  v50[2] = __86__GKTurnBasedMatch_endMatchInTurnWithMatchData_scores_achievements_completionHandler___block_invoke_3;
  v50[3] = &unk_2785DE478;
  v51 = v15;
  v52 = v13;
  v50[4] = self;
  v34 = v15;
  v35 = v13;
  [v34 notifyOnMainQueueWithBlock:v50];

  v36 = *MEMORY[0x277D85DE8];
}

void __86__GKTurnBasedMatch_endMatchInTurnWithMatchData_scores_achievements_completionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 turnBasedService];
  v6 = [a1[4] internal];
  v7 = [a1[5] _gkValuesForKeyPath:@"internal"];
  v8 = [a1[6] _gkValuesForKeyPath:@"internal"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__GKTurnBasedMatch_endMatchInTurnWithMatchData_scores_achievements_completionHandler___block_invoke_2;
  v12[3] = &unk_2785E01C8;
  v9 = a1[7];
  v10 = a1[4];
  v13 = v9;
  v14 = v10;
  v15 = v3;
  v11 = v3;
  [v5 completeTurnBasedMatch:v6 scores:v7 achievements:v8 handler:v12];
}

void __86__GKTurnBasedMatch_endMatchInTurnWithMatchData_scores_achievements_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) setError:a3];
  if (v5)
  {
    [*(a1 + 40) setInternal:v5];
  }

  (*(*(a1 + 48) + 16))();
}

void __86__GKTurnBasedMatch_endMatchInTurnWithMatchData_scores_achievements_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v3 = [*(a1 + 32) matchID];
  [v2 postNotificationName:@"GKInternalTurnBasedGameEvent" object:v3];

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = [*(a1 + 40) error];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)endMatchInTurnWithMatchData:(NSData *)matchData leaderboardScores:(NSArray *)scores achievements:(NSArray *)achievements completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v11 = achievements;
  v12 = matchData;
  v13 = [GKLeaderboardScore convertToGKScore:scores];
  [(GKTurnBasedMatch *)self endMatchInTurnWithMatchData:v12 scores:v13 achievements:v11 completionHandler:v10];
}

- (void)saveCurrentTurnWithMatchData:(NSData *)matchData completionHandler:(void *)completionHandler
{
  v6 = matchData;
  v7 = completionHandler;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 1791, "-[GKTurnBasedMatch saveCurrentTurnWithMatchData:completionHandler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  if (!v6)
  {
    if (GKApplicationLinkedOnOrAfter(458752, 657920))
    {
      v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"nil matchData" userInfo:0];
      objc_exception_throw(v18);
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = 17;
    goto LABEL_7;
  }

  v10 = +[GKPreferences shared];
  v11 = [v10 multiplayerAllowedPlayerType];

  if (!v11)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = 10;
LABEL_7:
    v15 = [v13 userErrorForCode:v14 underlyingError:0];
    [v9 setError:v15];

    goto LABEL_8;
  }

  v12 = [(GKTurnBasedMatch *)self internal];
  [v12 setMatchData:v6];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __67__GKTurnBasedMatch_saveCurrentTurnWithMatchData_completionHandler___block_invoke;
  v22[3] = &unk_2785DD898;
  v22[4] = self;
  v23 = v9;
  [v23 perform:v22];

LABEL_8:
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__GKTurnBasedMatch_saveCurrentTurnWithMatchData_completionHandler___block_invoke_3;
  v19[3] = &unk_2785DE478;
  v20 = v9;
  v21 = v7;
  v19[4] = self;
  v16 = v9;
  v17 = v7;
  [v16 notifyOnMainQueueWithBlock:v19];
}

void __67__GKTurnBasedMatch_saveCurrentTurnWithMatchData_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 turnBasedService];
  v6 = [*(a1 + 32) internal];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__GKTurnBasedMatch_saveCurrentTurnWithMatchData_completionHandler___block_invoke_2;
  v9[3] = &unk_2785E01C8;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v7;
  v11 = v3;
  v8 = v3;
  [v5 saveDataForTurnBasedMatch:v6 resolvedExchangeIDs:MEMORY[0x277CBEBF8] handler:v9];
}

void __67__GKTurnBasedMatch_saveCurrentTurnWithMatchData_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setInternal:a2];
  }

  [*(a1 + 40) setError:v5];
  (*(*(a1 + 48) + 16))();
}

void __67__GKTurnBasedMatch_saveCurrentTurnWithMatchData_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v3 = [*(a1 + 32) matchID];
  [v2 postNotificationName:@"GKInternalTurnBasedGameEvent" object:v3];

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = [*(a1 + 40) error];
    (*(v4 + 16))(v4, v5);
  }
}

- (id)exchangeForID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(GKTurnBasedMatch *)self exchanges];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 exchangeID];
        v11 = [v4 isEqualToString:v10];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)saveMergedMatchData:(NSData *)matchData withResolvedExchanges:(NSArray *)exchanges completionHandler:(void *)completionHandler
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = matchData;
  v9 = exchanges;
  v10 = completionHandler;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 1833, "-[GKTurnBasedMatch saveMergedMatchData:withResolvedExchanges:completionHandler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  if (!v8)
  {
    if (GKApplicationLinkedOnOrAfter(458752, 657920))
    {
      v30 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"nil matchData" userInfo:0];
      objc_exception_throw(v30);
    }

    v24 = MEMORY[0x277CCA9B8];
    v25 = 17;
    goto LABEL_14;
  }

  v13 = +[GKPreferences shared];
  v14 = [v13 multiplayerAllowedPlayerType];

  if (!v14)
  {
    v24 = MEMORY[0x277CCA9B8];
    v25 = 10;
LABEL_14:
    v26 = [v24 userErrorForCode:v25 underlyingError:0];
    [v12 setError:v26];

    goto LABEL_15;
  }

  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v9, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v31 = v9;
  v16 = v9;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v39;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v38 + 1) + 8 * i) exchangeID];
        [v15 addObject:v21];
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v18);
  }

  v22 = [(GKTurnBasedMatch *)self internal];
  [v22 setMatchData:v8];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __80__GKTurnBasedMatch_saveMergedMatchData_withResolvedExchanges_completionHandler___block_invoke;
  v35[3] = &unk_2785DD910;
  v35[4] = self;
  v36 = v15;
  v37 = v12;
  v23 = v15;
  [v37 perform:v35];

  v9 = v31;
LABEL_15:
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __80__GKTurnBasedMatch_saveMergedMatchData_withResolvedExchanges_completionHandler___block_invoke_3;
  v32[3] = &unk_2785DE478;
  v33 = v12;
  v34 = v10;
  v32[4] = self;
  v27 = v12;
  v28 = v10;
  [v27 notifyOnMainQueueWithBlock:v32];

  v29 = *MEMORY[0x277D85DE8];
}

void __80__GKTurnBasedMatch_saveMergedMatchData_withResolvedExchanges_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 turnBasedService];
  v6 = [*(a1 + 32) internal];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__GKTurnBasedMatch_saveMergedMatchData_withResolvedExchanges_completionHandler___block_invoke_2;
  v9[3] = &unk_2785E01C8;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = v3;
  v8 = v3;
  [v5 saveDataForTurnBasedMatch:v6 resolvedExchangeIDs:v7 handler:v9];
}

void __80__GKTurnBasedMatch_saveMergedMatchData_withResolvedExchanges_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setInternal:a2];
  }

  [*(a1 + 40) setError:v5];
  (*(*(a1 + 48) + 16))();
}

void __80__GKTurnBasedMatch_saveMergedMatchData_withResolvedExchanges_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v3 = [*(a1 + 32) matchID];
  [v2 postNotificationName:@"GKInternalTurnBasedGameEvent" object:v3];

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = [*(a1 + 40) error];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)sendExchangeToParticipants:(NSArray *)participants data:(NSData *)data localizableMessageKey:(NSString *)key arguments:(NSArray *)arguments timeout:(NSTimeInterval)timeout completionHandler:(void *)completionHandler
{
  v48[1] = *MEMORY[0x277D85DE8];
  v14 = participants;
  v15 = data;
  v16 = key;
  v17 = arguments;
  v18 = completionHandler;
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 1870, "-[GKTurnBasedMatch sendExchangeToParticipants:data:localizableMessageKey:arguments:timeout:completionHandler:]"];
  v20 = [GKDispatchGroup dispatchGroupWithName:v19];

  v21 = +[GKPreferences shared];
  v22 = [v21 multiplayerAllowedPlayerType];

  if (v22)
  {
    if (!v16)
    {
      v29 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"nil or invalid localizable message key" userInfo:0];
      objc_exception_throw(v29);
    }

    v23 = [(GKTurnBasedMatch *)self indexesForParticipants:v14];
    if (!v23)
    {
      v30 = MEMORY[0x277CBEAD8];
      v31 = *MEMORY[0x277CBE660];
      if (v14)
      {
        v32 = v14;
      }

      else
      {
        v32 = @"nil";
      }

      v47 = @"participants";
      v48[0] = v32;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      v34 = [v30 exceptionWithName:v31 reason:@"invalid list of recipient participants" userInfo:v33];
      v35 = v34;

      objc_exception_throw(v34);
    }

    v24 = v23;
    if (!v17)
    {
      v17 = MEMORY[0x277CBEBF8];
    }

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __110__GKTurnBasedMatch_sendExchangeToParticipants_data_localizableMessageKey_arguments_timeout_completionHandler___block_invoke;
    v39[3] = &unk_2785E0240;
    v40 = v16;
    v17 = v17;
    v41 = v17;
    v42 = v24;
    v46 = timeout;
    v43 = v15;
    v44 = self;
    v45 = v20;
    v25 = v24;
    [v45 perform:v39];
  }

  else
  {
    v25 = [MEMORY[0x277CCA9B8] userErrorForCode:10 underlyingError:0];
    [v20 setError:v25];
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __110__GKTurnBasedMatch_sendExchangeToParticipants_data_localizableMessageKey_arguments_timeout_completionHandler___block_invoke_3;
  v36[3] = &unk_2785DE478;
  v37 = v20;
  v38 = v18;
  v36[4] = self;
  v26 = v20;
  v27 = v18;
  [v26 notifyOnMainQueueWithBlock:v36];

  v28 = *MEMORY[0x277D85DE8];
}

void __110__GKTurnBasedMatch_sendExchangeToParticipants_data_localizableMessageKey_arguments_timeout_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 _gkLocalizedStringForKey:*(a1 + 32) defaultValue:*(a1 + 32) arguments:*(a1 + 40)];
  v6 = [GKTurnBasedMatch _localizableMessageWithKey:*(a1 + 32) arguments:*(a1 + 40) defaultMessage:v5];
  v7 = +[GKDaemonProxy proxyForLocalPlayer];
  v8 = [v7 turnBasedService];
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 80);
  v12 = [*(a1 + 64) internal];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __110__GKTurnBasedMatch_sendExchangeToParticipants_data_localizableMessageKey_arguments_timeout_completionHandler___block_invoke_2;
  v15[3] = &unk_2785E0218;
  v13 = *(a1 + 72);
  v15[4] = *(a1 + 64);
  v16 = v13;
  v17 = v3;
  v14 = v3;
  [v8 sendExchangeToParticipants:v9 data:v10 message:v6 timeout:v12 match:v15 handler:v11];
}

void __110__GKTurnBasedMatch_sendExchangeToParticipants_data_localizableMessageKey_arguments_timeout_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a3)
  {
    v19 = v8;
    [*(a1 + 32) setInternal:a3];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [*(a1 + 32) exchanges];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [v15 exchangeID];
          v17 = [v7 isEqualToString:v16];

          if (v17)
          {
            [*(a1 + 40) setObject:v15 forKeyedSubscript:@"exchange"];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    v9 = v19;
  }

  [*(a1 + 40) setError:v9];
  (*(*(a1 + 48) + 16))();

  v18 = *MEMORY[0x277D85DE8];
}

void __110__GKTurnBasedMatch_sendExchangeToParticipants_data_localizableMessageKey_arguments_timeout_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v3 = [*(a1 + 32) matchID];
  [v2 postNotificationName:@"GKInternalTurnBasedGameEvent" object:v3];

  v4 = *(a1 + 48);
  if (v4)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"exchange"];
    v5 = [*(a1 + 40) error];
    (*(v4 + 16))(v4, v6, v5);
  }
}

- (void)sendReminderToParticipants:(NSArray *)participants localizableMessageKey:(NSString *)key arguments:(NSArray *)arguments completionHandler:(void *)completionHandler
{
  v43[1] = *MEMORY[0x277D85DE8];
  v10 = participants;
  v11 = key;
  v12 = arguments;
  v13 = completionHandler;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 1914, "-[GKTurnBasedMatch sendReminderToParticipants:localizableMessageKey:arguments:completionHandler:]"];
  v15 = [GKDispatchGroup dispatchGroupWithName:v14];

  v16 = +[GKPreferences shared];
  v17 = [v16 multiplayerAllowedPlayerType];

  if (!v17)
  {
    v23 = [MEMORY[0x277CCA9B8] userErrorForCode:10 underlyingError:0];
    [v15 setError:v23];

    if (!v13)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __97__GKTurnBasedMatch_sendReminderToParticipants_localizableMessageKey_arguments_completionHandler___block_invoke;
  v40[3] = &unk_2785E0268;
  v18 = v10;
  v41 = v18;
  [(NSArray *)v18 enumerateObjectsUsingBlock:v40];
  v19 = [(GKTurnBasedMatch *)self indexesForParticipants:v18];
  if (!v19)
  {
    v24 = MEMORY[0x277CBEAD8];
    v25 = *MEMORY[0x277CBE660];
    if (v18)
    {
      v26 = v18;
    }

    else
    {
      v26 = @"nil";
    }

    v42 = @"participants";
    v43[0] = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v28 = [v24 exceptionWithName:v25 reason:@"invalid list of recipient participants" userInfo:v27];
    v29 = v28;

    objc_exception_throw(v28);
  }

  if (!v11)
  {
    v30 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"nil or invalid localizable message key" userInfo:0];
    objc_exception_throw(v30);
  }

  v20 = v19;
  if (!v12)
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __97__GKTurnBasedMatch_sendReminderToParticipants_localizableMessageKey_arguments_completionHandler___block_invoke_2;
  v34[3] = &unk_2785DF868;
  v35 = v11;
  v12 = v12;
  v36 = v12;
  v37 = v20;
  v38 = self;
  v39 = v15;
  v21 = v20;
  [v39 perform:v34];

  if (v13)
  {
LABEL_7:
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __97__GKTurnBasedMatch_sendReminderToParticipants_localizableMessageKey_arguments_completionHandler___block_invoke_4;
    v31[3] = &unk_2785DDC10;
    v33 = v13;
    v32 = v15;
    [v32 notifyOnMainQueueWithBlock:v31];
  }

LABEL_8:

  v22 = *MEMORY[0x277D85DE8];
}

void __97__GKTurnBasedMatch_sendReminderToParticipants_localizableMessageKey_arguments_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v3 = [v13 player];
  v4 = +[GKLocalPlayer localPlayer];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    v9 = *(a1 + 32);
    v14 = @"participants";
    v15[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v11 = [v7 exceptionWithName:v8 reason:@"localPlayer is not a valid participant for reminder" userInfo:v10];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __97__GKTurnBasedMatch_sendReminderToParticipants_localizableMessageKey_arguments_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 _gkLocalizedStringForKey:*(a1 + 32) defaultValue:*(a1 + 32) arguments:*(a1 + 40)];
  v6 = [GKTurnBasedMatch _localizableMessageWithKey:*(a1 + 32) arguments:*(a1 + 40) defaultMessage:v5];
  v7 = +[GKDaemonProxy proxyForLocalPlayer];
  v8 = [v7 turnBasedService];
  v9 = *(a1 + 48);
  v10 = [*(a1 + 56) internal];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__GKTurnBasedMatch_sendReminderToParticipants_localizableMessageKey_arguments_completionHandler___block_invoke_3;
  v12[3] = &unk_2785DD8E8;
  v13 = *(a1 + 64);
  v14 = v3;
  v11 = v3;
  [v8 sendReminderToParticipants:v9 message:v6 match:v10 handler:v12];
}

uint64_t __97__GKTurnBasedMatch_sendReminderToParticipants_localizableMessageKey_arguments_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __97__GKTurnBasedMatch_sendReminderToParticipants_localizableMessageKey_arguments_completionHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)state
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v5[0] = 67109378;
  v5[1] = [a2 status];
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_227904000, v3, OS_LOG_TYPE_ERROR, "Unexpected match status encountered: %d for match:%@", v5, 0x12u);

  v4 = *MEMORY[0x277D85DE8];
}

void __82__GKTurnBasedMatch_loadTurnBasedMatchWithDetailsForMatchID_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_227904000, log, OS_LOG_TYPE_ERROR, "loadTurnBasedMatchWithDetailsForMatchID:Failed to get details for TBG MatchID:%@ .Error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __62__GKTurnBasedMatch_loadURLWithMatchRequest_completionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 debugDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_227904000, v3, OS_LOG_TYPE_ERROR, "GKTurnBasedMatch loadURLWithMatchRequest completed with error: %@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end