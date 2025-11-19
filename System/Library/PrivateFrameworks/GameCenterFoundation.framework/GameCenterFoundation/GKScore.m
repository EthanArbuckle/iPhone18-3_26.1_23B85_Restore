@interface GKScore
+ (BOOL)instancesRespondToSelector:(SEL)a3;
+ (id)instanceMethodSignatureForSelector:(SEL)a3;
+ (void)reportScores:(id)a3 whileScreeningChallenges:(BOOL)a4 withEligibleChallenges:(id)a5 withCompletionHandler:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (GKPlayer)player;
- (GKScore)init;
- (GKScore)initWithCoder:(id)a3;
- (GKScore)initWithInternalRepresentation:(id)a3 playerID:(id)a4;
- (GKScore)initWithInternalRepresentation:(id)a3 playerInternal:(id)a4;
- (GKScore)initWithLeaderboardIdentifier:(NSString *)identifier;
- (GKScore)initWithLeaderboardIdentifier:(NSString *)identifier forPlayer:(NSString *)playerID;
- (GKScore)initWithLeaderboardIdentifier:(NSString *)identifier player:(GKPlayer *)player;
- (NSString)playerID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)player;
- (void)reportScoreWithCompletionHandler:(void *)completionHandler;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation GKScore

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GKScore alloc];
  v5 = [(GKScore *)self internal];
  v6 = [v5 copy];
  v7 = [(GKScore *)v4 initWithInternalRepresentation:v6];

  return v7;
}

- (GKScore)initWithInternalRepresentation:(id)a3 playerInternal:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = GKScore;
  v8 = [(GKScore *)&v13 init];
  if (v8)
  {
    if (!v6)
    {
      v6 = +[(GKInternalRepresentation *)GKScoreInternal];
    }

    objc_storeStrong(&v8->_internal, v6);
    v9 = +[GKGame currentGame];
    game = v8->_game;
    v8->_game = v9;

    v11 = [(GKScoreInternal *)v8->_internal player];

    if (!v11)
    {
      [(GKScoreInternal *)v8->_internal setPlayer:v7];
    }
  }

  return v8;
}

- (GKScore)initWithInternalRepresentation:(id)a3 playerID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 player];
  if (!v8)
  {
    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v11 = +[GKLocalPlayer localPlayer];
      v12 = [v11 internal];
      v7 = [v12 playerID];

      v10 = [v11 alias];

      if (!v7)
      {
        v9 = 0;
        goto LABEL_7;
      }
    }

    v9 = +[(GKInternalRepresentation *)GKPlayerInternal];
    [v9 setPlayerID:v7];
    [v9 setAlias:v10];
LABEL_7:

    goto LABEL_8;
  }

  v9 = v8;
LABEL_8:
  v13 = [(GKScore *)self initWithInternalRepresentation:v6 playerInternal:v9];

  return v13;
}

- (GKScore)initWithLeaderboardIdentifier:(NSString *)identifier
{
  v4 = identifier;
  v5 = +[(GKInternalRepresentation *)GKScoreInternal];
  [v5 setLeaderboardIdentifier:v4];

  v6 = [MEMORY[0x277CBEAA8] date];
  [v5 setDate:v6];

  v7 = [(GKScore *)self initWithInternalRepresentation:v5 playerID:0];
  return v7;
}

- (GKScore)initWithLeaderboardIdentifier:(NSString *)identifier player:(GKPlayer *)player
{
  v6 = player;
  v7 = identifier;
  v8 = +[(GKInternalRepresentation *)GKScoreInternal];
  [v8 setLeaderboardIdentifier:v7];

  v9 = [MEMORY[0x277CBEAA8] date];
  [v8 setDate:v9];

  v10 = [(GKPlayer *)v6 internal];

  v11 = [v10 minimalInternal];
  v12 = [(GKScore *)self initWithInternalRepresentation:v8 playerInternal:v11];

  return v12;
}

- (GKScore)initWithLeaderboardIdentifier:(NSString *)identifier forPlayer:(NSString *)playerID
{
  v6 = identifier;
  v7 = playerID;
  if (GKApplicationLinkedOnOrAfter(917504, 659456))
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKDeveloper;
    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [GKScore initWithLeaderboardIdentifier:v9 forPlayer:?];
    }

    v10 = 0;
  }

  else
  {
    v11 = +[(GKInternalRepresentation *)GKScoreInternal];
    [v11 setLeaderboardIdentifier:v6];
    v12 = [MEMORY[0x277CBEAA8] date];
    [v11 setDate:v12];

    self = [(GKScore *)self initWithInternalRepresentation:v11 playerID:v7];
    v10 = self;
  }

  return v10;
}

- (GKScore)init
{
  v3 = +[GKGame currentGame];
  v4 = [v3 defaultCategory];
  v5 = [(GKScore *)self initWithLeaderboardIdentifier:v4];

  return v5;
}

- (GKScore)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"internal"];
  v6 = [(GKScore *)self initWithInternalRepresentation:v5];
  v7 = v6;
  if (!v5)
  {
    v5 = [(GKScore *)v6 internal];
    [v5 setValue:{objc_msgSend(v4, "decodeInt64ForKey:", @"value"}];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"formattedValue"];
    [v5 setFormattedValue:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    [v5 setLeaderboardIdentifier:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    [v5 setDate:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playerID"];
    v12 = +[(GKInternalRepresentation *)GKPlayerInternal];
    [v12 setPlayerID:v11];
    [v5 setPlayer:v12];
    [v5 setRank:{objc_msgSend(v4, "decodeIntegerForKey:", @"rank"}];
    [v5 setContext:{objc_msgSend(v4, "decodeInt64ForKey:", @"context"}];
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GKScore *)self internal];
  [v4 encodeObject:v5 forKey:@"internal"];
}

- (NSString)playerID
{
  v2 = [(GKScoreInternal *)self->_internal player];
  v3 = [v2 playerID];

  return v3;
}

- (GKPlayer)player
{
  v3 = [(GKScoreInternal *)self->_internal player];
  v4 = [v3 playerID];
  if (v4 && (v5 = v4, [v3 alias], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [GKPlayer canonicalizedPlayerForInternal:v3];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      [(GKScore *)self player];
    }

    v7 = 0;
  }

  return v7;
}

+ (void)reportScores:(id)a3 whileScreeningChallenges:(BOOL)a4 withEligibleChallenges:(id)a5 withCompletionHandler:(id)a6
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v35 = a5;
  v34 = a6;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = @"GKInvalidArgumentException";
    v12 = *v46;
    v36 = *v46;
    do
    {
      v13 = 0;
      v37 = v10;
      do
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v45 + 1) + 8 * v13);
        v15 = [v14 leaderboardIdentifier];
        if (v15)
        {
        }

        else if (GKApplicationLinkedOnOrAfter(262912, 0))
        {
          [MEMORY[0x277CBEAD8] raise:v11 format:@"A GKScore must specify a leaderboard."];
        }

        if (([v14 valueSet] & 1) == 0 && GKApplicationLinkedOnOrAfter(393216, 0))
        {
          [MEMORY[0x277CBEAD8] raise:v11 format:@"A GKScore must contain an initialized value."];
        }

        v16 = [v14 player];
        v17 = v16;
        if (v16)
        {
          if ([v16 isLocalPlayer])
          {
            goto LABEL_22;
          }

          v18 = MEMORY[0x277CBEAD8];
          v19 = [v17 internal];
          v20 = [v19 conciseDescription];
          [v18 raise:v11 format:{@"A GKScore can only be submitted for another player when ending a turn-based match (trying to submit score for %@)", v20}];
        }

        else
        {
          v19 = [v14 playerID];
          if (v19)
          {
            v21 = v11;
            v22 = v8;
            v23 = +[GKLocalPlayer localPlayer];
            v24 = [v23 internal];
            v25 = [v24 playerID];
            v26 = [v19 isEqualToString:v25];

            if (v26)
            {
              v8 = v22;
              v11 = v21;
            }

            else
            {
              v11 = v21;
              [MEMORY[0x277CBEAD8] raise:v21 format:{@"A GKScore can only be submitted for another player when ending a turn-based match (trying to submit score for %@)", v19}];
              v8 = v22;
            }

            v12 = v36;
            v10 = v37;
          }
        }

LABEL_22:
        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v10);
  }

  v27 = +[GKPreferences shared];
  v28 = [v27 isStoreDemoModeEnabled];

  if (!v28)
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __94__GKScore_reportScores_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_2;
    v38[3] = &unk_2785DFFA0;
    v31 = &v39;
    v39 = v8;
    v42 = a4;
    v29 = v35;
    v40 = v35;
    v30 = v34;
    v41 = v34;
    gk_dispatch_as_group(v38);

    goto LABEL_28;
  }

  v30 = v34;
  v29 = v35;
  if (v34)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__GKScore_reportScores_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke;
    block[3] = &unk_2785DD710;
    v31 = &v44;
    v44 = v34;
    dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_28:
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __94__GKScore_reportScores_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__8;
  v19[4] = __Block_byref_object_dispose__8;
  v20 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__GKScore_reportScores_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_50;
  aBlock[3] = &unk_2785DFF00;
  aBlock[4] = v19;
  v4 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__GKScore_reportScores_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_2_52;
  v13[3] = &unk_2785DFF50;
  v14 = *(a1 + 32);
  v17 = *(a1 + 56);
  v15 = *(a1 + 40);
  v5 = v4;
  v16 = v5;
  gk_dispatch_group_do(v3, v13);
  v6 = [*(a1 + 32) lastObject];
  if ([v6 shouldSetDefaultLeaderboard])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __94__GKScore_reportScores_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_4;
    v10[3] = &unk_2785DFF78;
    v11 = v6;
    v12 = v5;
    gk_dispatch_group_do(v3, v10);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__GKScore_reportScores_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_6;
  block[3] = &unk_2785DE8A8;
  v8 = *(a1 + 48);
  v9 = v19;
  dispatch_group_notify(v3, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v19, 8);
}

void __94__GKScore_reportScores_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_2_52(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameStatService];
  v6 = [*(a1 + 32) _gkValuesForKeyPath:@"internal"];
  v7 = *(a1 + 56);
  v8 = [*(a1 + 40) _gkValuesForKeyPath:@"challengeID"];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__GKScore_reportScores_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_3;
  v10[3] = &unk_2785DFF28;
  v11 = *(a1 + 48);
  v12 = v3;
  v9 = v3;
  [v5 submitScores:v6 whileScreeningChallenges:v7 withEligibleChallenges:v8 handler:v10];
}

uint64_t __94__GKScore_reportScores_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 32) + 16))();
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void __94__GKScore_reportScores_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKLocalPlayer localPlayer];
  v5 = [*(a1 + 32) leaderboardIdentifier];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __94__GKScore_reportScores_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_5;
  v7[3] = &unk_2785DFF28;
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  [v4 setDefaultLeaderboardIdentifier:v5 completionHandler:v7];
}

uint64_t __94__GKScore_reportScores_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 32) + 16))();
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t __94__GKScore_reportScores_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

- (void)reportScoreWithCompletionHandler:(void *)completionHandler
{
  v4 = MEMORY[0x277CBEA60];
  v5 = completionHandler;
  v6 = [v4 arrayWithObject:self];
  [GKScore reportScores:v6 withCompletionHandler:v5];
}

- (id)description
{
  v16.receiver = self;
  v16.super_class = GKScore;
  v15 = [(GKScore *)&v16 description];
  v3 = [(GKScore *)self player];
  v4 = [v3 internal];
  v5 = [v4 conciseDescription];
  v6 = [(GKScore *)self rank];
  v7 = [(GKScore *)self date];
  v8 = [(GKScore *)self value];
  v9 = [(GKScore *)self formattedValue];
  v10 = [(GKScore *)self context];
  v11 = [(GKScore *)self leaderboardIdentifier];
  v12 = [(GKScore *)self groupLeaderboardIdentifier];
  v13 = [v15 stringByAppendingFormat:@"player:%@ rank:%ld date:%@ value:%lld formattedValue:%@ context:0x%llx leaderboard:%@ group:%@", v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (unint64_t)hash
{
  v2 = [(GKScore *)self internal];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(GKScore *)self internal];
    v6 = [v4 internal];
    v7 = [v5 isEqual:v6];
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
  v9.super_class = &OBJC_METACLASS___GKScore;
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
  v10.super_class = GKScore;
  v5 = [(GKScore *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKScore *)self forwardingTargetForSelector:a3];
    v7 = [v8 methodSignatureForSelector:a3];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = GKScore;
  if ([(GKScore *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKScore *)self forwardingTargetForSelector:a3];
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

        LOBYTE(v4) = [GKScoreInternal instancesRespondToSelector:a3];
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
  v5 = [(GKScore *)self internal];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKScore *)self internal];
  [v8 setValue:v7 forKey:v6];
}

- (void)initWithLeaderboardIdentifier:(os_log_t)log forPlayer:.cold.1(os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136446722;
  v3 = "[GKScore initWithLeaderboardIdentifier:forPlayer:]";
  v4 = 2114;
  v5 = @"14.0";
  v6 = 2114;
  v7 = @"11.0";
  _os_log_error_impl(&dword_227904000, log, OS_LOG_TYPE_ERROR, "WARNING: %{public}s is obsoleted. Game Center doesn't invoke this obsoleted method from iOS/tvOS %{public}@ and macOS %{public}@ onwards", &v2, 0x20u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)player
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_227904000, a2, OS_LOG_TYPE_ERROR, "<GKScore %p> has a nil or invalid internal player, will return a nil player", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end