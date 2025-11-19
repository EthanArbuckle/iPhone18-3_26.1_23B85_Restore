@interface GKChallenge
+ (BOOL)instancesRespondToSelector:(SEL)a3;
+ (id)challengeForGame:(id)a3 andPlayer:(id)a4 withAchievement:(id)a5;
+ (id)challengeForGame:(id)a3 andPlayer:(id)a4 withScore:(id)a5;
+ (id)challengeForInternalRepresentation:(id)a3;
+ (id)instanceMethodSignatureForSelector:(SEL)a3;
+ (id)stringForState:(int64_t)a3;
+ (void)getCountOfChallenges:(id)a3;
+ (void)loadChallengesForGame:(id)a3 receivingPlayer:(id)a4 withCompletionHandler:(id)a5;
+ (void)loadReceivedChallengesWithCompletionHandler:(void *)completionHandler;
+ (void)loadReceivedPendingChallengesWithCompletionHandler:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (GKChallenge)initWithCoder:(id)a3;
- (GKChallenge)initWithInternalRepresentation:(id)a3;
- (GKGame)game;
- (GKPlayer)issuingPlayer;
- (GKPlayer)receivingPlayer;
- (NSString)issuingPlayerID;
- (NSString)receivingPlayerID;
- (id)infoTextForIssuingPlayer:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)hash;
- (void)declineWithCompletionHandler:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)issueToPlayers:(id)a3 message:(id)a4;
- (void)issuingPlayerID;
- (void)loadDetailsWithCompletionHandler:(id)a3;
- (void)loadUIDetailsWithHandler:(id)a3;
- (void)receivingPlayerID;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation GKChallenge

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(GKChallenge *)self internal];
    v7 = [v5 internal];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(GKChallenge *)self internal];
  v3 = [v2 hash];

  return v3;
}

- (GKChallenge)initWithInternalRepresentation:(id)a3
{
  v4.receiver = self;
  v4.super_class = GKChallenge;
  return [(GKChallenge *)&v4 init];
}

- (GKChallenge)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"internal"];

  v6 = [(GKChallenge *)self initWithInternalRepresentation:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GKChallenge *)self internal];
  [v4 encodeObject:v5 forKey:@"internal"];
}

+ (id)stringForState:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"GKChallengeStateInvalid";
  }

  else
  {
    return off_2785E0B98[a3 - 1];
  }
}

+ (id)challengeForInternalRepresentation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_2785DBD08;
LABEL_5:
    v5 = [objc_alloc(*v4) initWithInternalRepresentation:v3];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_2785DB838;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)challengeForGame:(id)a3 andPlayer:(id)a4 withScore:(id)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 leaderboardIdentifier];
  if (!v10 || (v11 = v10, [v9 leaderboardIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", &stru_283AFD1E0), v12, v11, v13))
  {
    if (v9)
    {
      v24 = @"score";
      v25[0] = v9;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    }

    else
    {
      v22 = 0;
    }

    v23 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"GKScore must have a defined category" userInfo:v22];
    objc_exception_throw(v23);
  }

  v14 = +[GKScoreChallengeInternal internalRepresentation];
  v15 = [v7 internal];
  [v14 setGame:v15];

  v16 = [v7 bundleIdentifier];
  [v14 setBundleID:v16];

  v17 = [v8 internal];
  [v14 setIssuingPlayer:v17];

  v18 = [v9 internal];
  [v14 setScore:v18];

  v19 = [[GKScoreChallenge alloc] initWithInternalRepresentation:v14];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)challengeForGame:(id)a3 andPlayer:(id)a4 withAchievement:(id)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 identifier];
  if (!v10 || (v11 = v10, [v9 identifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", &stru_283AFD1E0), v12, v11, v13))
  {
    if (v9)
    {
      v24 = @"achievement";
      v25[0] = v9;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    }

    else
    {
      v22 = 0;
    }

    v23 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"GKAchievement must have a defined identifier" userInfo:v22];
    objc_exception_throw(v23);
  }

  v14 = +[GKAchievementChallengeInternal internalRepresentation];
  v15 = [v7 internal];
  [v14 setGame:v15];

  v16 = [v7 bundleIdentifier];
  [v14 setBundleID:v16];

  v17 = [v8 internal];
  [v14 setIssuingPlayer:v17];

  v18 = [v9 internal];
  [v14 setAchievement:v18];

  v19 = [[GKAchievementChallenge alloc] initWithInternalRepresentation:v14];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (void)getCountOfChallenges:(id)a3
{
  v3 = a3;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 challengeServicePrivate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__GKChallenge_getCountOfChallenges___block_invoke;
  v7[3] = &unk_2785DFB80;
  v8 = v3;
  v6 = v3;
  [v5 getCountOfChallengesWithHandler:v7];
}

uint64_t __36__GKChallenge_getCountOfChallenges___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)loadChallengesForGame:(id)a3 receivingPlayer:(id)a4 withCompletionHandler:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKChallenge.m", 188, "+[GKChallenge loadChallengesForGame:receivingPlayer:withCompletionHandler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__GKChallenge_loadChallengesForGame_receivingPlayer_withCompletionHandler___block_invoke;
  v16[3] = &unk_2785E0AE8;
  v10 = v6;
  v17 = v10;
  v11 = v9;
  v18 = v11;
  v12 = v7;
  v19 = v12;
  [v11 perform:v16];
  if (v12)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __75__GKChallenge_loadChallengesForGame_receivingPlayer_withCompletionHandler___block_invoke_5;
    v13[3] = &unk_2785DDC10;
    v15 = v12;
    v14 = v11;
    [v14 notifyOnMainQueueWithBlock:v13];
  }
}

void __75__GKChallenge_loadChallengesForGame_receivingPlayer_withCompletionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 challengeService];
  v6 = [a1[4] gameDescriptorDictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__GKChallenge_loadChallengesForGame_receivingPlayer_withCompletionHandler___block_invoke_2;
  v8[3] = &unk_2785E0AC0;
  v9 = a1[5];
  v11 = a1[6];
  v12 = v3;
  v10 = a1[4];
  v7 = v3;
  [v5 getChallengesForGameDescriptor:v6 handler:v8];
}

void __75__GKChallenge_loadChallengesForGame_receivingPlayer_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(a1 + 32) setError:a3];
  if (*(a1 + 48) && [v5 count])
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * v11);
          v13 = *(a1 + 40);
          if (v13)
          {
            v14 = [v13 internal];
            [v12 setGame:v14];
          }

          v15 = [GKChallenge challengeForInternalRepresentation:v12];
          if (v15)
          {
            [v6 addObject:v15];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    v16 = [v6 _gkMapWithBlock:&__block_literal_global_40];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __75__GKChallenge_loadChallengesForGame_receivingPlayer_withCompletionHandler___block_invoke_4;
    v19[3] = &unk_2785DE948;
    v20 = *(a1 + 32);
    v21 = v6;
    v22 = *(a1 + 56);
    v17 = v6;
    [v16 _gkUpdateInternalPlayersScopedIDs:v19];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

id __75__GKChallenge_loadChallengesForGame_receivingPlayer_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 score];
    v4 = [v3 internal];
    v5 = [v4 player];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __75__GKChallenge_loadChallengesForGame_receivingPlayer_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"challenges"];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __75__GKChallenge_loadChallengesForGame_receivingPlayer_withCompletionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"challenges"];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

+ (void)loadReceivedPendingChallengesWithCompletionHandler:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__GKChallenge_loadReceivedPendingChallengesWithCompletionHandler___block_invoke;
  v5[3] = &unk_2785DDCB0;
  v6 = v3;
  v4 = v3;
  [GKChallenge loadReceivedChallengesWithCompletionHandler:v5];
}

void __66__GKChallenge_loadReceivedPendingChallengesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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
      __66__GKChallenge_loadReceivedPendingChallengesWithCompletionHandler___block_invoke_cold_1(v6, v8);
    }
  }

  v9 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_61];
  v10 = [v5 filteredArrayUsingPredicate:v9];
  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v10, v6);
  }
}

+ (void)loadReceivedChallengesWithCompletionHandler:(void *)completionHandler
{
  v3 = completionHandler;
  v4 = +[GKGame currentGame];
  v5 = +[GKLocalPlayer localPlayer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__GKChallenge_loadReceivedChallengesWithCompletionHandler___block_invoke;
  v7[3] = &unk_2785DDCB0;
  v8 = v3;
  v6 = v3;
  [GKChallenge loadChallengesForGame:v4 receivingPlayer:v5 withCompletionHandler:v7];
}

void __59__GKChallenge_loadReceivedChallengesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

- (void)issueToPlayers:(id)a3 message:(id)a4
{
  v24[3] = *MEMORY[0x277D85DE8];
  v22 = a3;
  v6 = a4;
  v7 = [v22 count];
  if (!v22 || !v7)
  {
    v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"players must be provided to issue a challenge" userInfo:{0, v22}];
    objc_exception_throw(v15);
  }

  v8 = +[GKLocalPlayer localPlayer];
  v9 = [v22 containsObject:v8];

  if (v9)
  {
    v16 = MEMORY[0x277CBEAD8];
    v17 = *MEMORY[0x277CBE660];
    v23[0] = @"challenge";
    v23[1] = @"players";
    v24[0] = self;
    v24[1] = v22;
    v23[2] = @"localPlayer";
    v18 = +[GKLocalPlayer localPlayer];
    v24[2] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
    v20 = [v16 exceptionWithName:v17 reason:@"Issuing challenges to yourself is not allowed" userInfo:v19];
    v21 = v20;

    objc_exception_throw(v20);
  }

  if ([v22 count])
  {
    [(GKChallenge *)self setMessage:v6];
    v10 = [v22 _gkMapWithBlock:&__block_literal_global_81];
    v11 = +[GKDaemonProxy proxyForLocalPlayer];
    v12 = [v11 challengeService];
    v13 = [(GKChallenge *)self internal];
    [v12 issueChallenge:v13 toPlayers:v10 handler:&__block_literal_global_84];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)declineWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(GKChallenge *)self state]!= GKChallengeStatePending)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE660];
    v16 = @"invalidChallenge";
    v17[0] = self;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v13 = [v10 exceptionWithName:v11 reason:@"Canceling challenges that are not currently pending is not allowed" userInfo:v12];
    v14 = v13;

    objc_exception_throw(v13);
  }

  v5 = +[GKDaemonProxy proxyForLocalPlayer];
  v6 = [v5 challengeService];
  v7 = [(GKChallenge *)self internal];
  v15 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  [v6 abortChallenges:v8 handler:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (GKGame)game
{
  v3 = [GKGame alloc];
  v4 = [(GKChallenge *)self internal];
  v5 = [v4 game];
  v6 = [(GKGame *)v3 initWithInternalRepresentation:v5];

  return v6;
}

- (NSString)issuingPlayerID
{
  if (GKApplicationLinkedOnOrAfter(917504, 659456))
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    v4 = os_log_GKDeveloper;
    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [(GKChallenge *)v4 issuingPlayerID];
    }

    v5 = @"playerID is no longer available";
  }

  else
  {
    v6 = [(GKChallenge *)self internal];
    v7 = [v6 issuingPlayer];
    v5 = [v7 playerID];
  }

  return v5;
}

- (NSString)receivingPlayerID
{
  if (GKApplicationLinkedOnOrAfter(917504, 659456))
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    v4 = os_log_GKDeveloper;
    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [(GKChallenge *)v4 receivingPlayerID];
    }

    v5 = @"playerID is no longer available";
  }

  else
  {
    v6 = [(GKChallenge *)self internal];
    v7 = [v6 receivingPlayer];
    v5 = [v7 playerID];
  }

  return v5;
}

- (GKPlayer)issuingPlayer
{
  v2 = [(GKChallenge *)self internal];
  v3 = [v2 issuingPlayer];
  v4 = [GKPlayer canonicalizedPlayerForInternal:v3];

  return v4;
}

- (GKPlayer)receivingPlayer
{
  v3 = [(GKChallenge *)self internal];
  v4 = [v3 receivingPlayer];
  if (v4)
  {
    v5 = [(GKChallenge *)self internal];
    v6 = [v5 receivingPlayer];
    v7 = [GKPlayer canonicalizedPlayerForInternal:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)instanceMethodSignatureForSelector:(SEL)a3
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___GKChallenge;
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
  v10.super_class = GKChallenge;
  v5 = [(GKChallenge *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKChallenge *)self forwardingTargetForSelector:a3];
    v7 = [v8 methodSignatureForSelector:a3];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = GKChallenge;
  if ([(GKChallenge *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKChallenge *)self forwardingTargetForSelector:a3];
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

        LOBYTE(v4) = [GKChallengeInternal instancesRespondToSelector:a3];
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
  v5 = [(GKChallenge *)self internal];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKChallenge *)self internal];
  [v8 setValue:v7 forKey:v6];
}

- (void)loadUIDetailsWithHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (id)infoTextForIssuingPlayer:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_DETAIL_GOAL_FORMAT];
  v6 = [v4 displayNameWithOptions:0];

  v7 = [v3 stringWithFormat:v5, v6];

  return v7;
}

- (void)loadDetailsWithCompletionHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

void __66__GKChallenge_loadReceivedPendingChallengesWithCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_227904000, a2, OS_LOG_TYPE_ERROR, "cannot load received challenges due to error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)issuingPlayerID
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136446722;
  v3 = "[GKChallenge issuingPlayerID]";
  v4 = 2114;
  v5 = @"14.0";
  v6 = 2114;
  v7 = @"11.0";
  _os_log_error_impl(&dword_227904000, log, OS_LOG_TYPE_ERROR, "WARNING: %{public}s is obsoleted. Game Center doesn't invoke this obsoleted method from iOS/tvOS %{public}@ and macOS %{public}@ onwards", &v2, 0x20u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)receivingPlayerID
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136446722;
  v3 = "[GKChallenge receivingPlayerID]";
  v4 = 2114;
  v5 = @"14.0";
  v6 = 2114;
  v7 = @"11.0";
  _os_log_error_impl(&dword_227904000, log, OS_LOG_TYPE_ERROR, "WARNING: %{public}s is obsoleted. Game Center doesn't invoke this obsoleted method from iOS/tvOS %{public}@ and macOS %{public}@ onwards", &v2, 0x20u);
  v1 = *MEMORY[0x277D85DE8];
}

@end