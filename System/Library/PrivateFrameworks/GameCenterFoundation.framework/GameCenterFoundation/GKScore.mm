@interface GKScore
+ (BOOL)instancesRespondToSelector:(SEL)selector;
+ (id)instanceMethodSignatureForSelector:(SEL)selector;
+ (void)reportScores:(id)scores whileScreeningChallenges:(BOOL)challenges withEligibleChallenges:(id)eligibleChallenges withCompletionHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (BOOL)respondsToSelector:(SEL)selector;
- (GKPlayer)player;
- (GKScore)init;
- (GKScore)initWithCoder:(id)coder;
- (GKScore)initWithInternalRepresentation:(id)representation playerID:(id)d;
- (GKScore)initWithInternalRepresentation:(id)representation playerInternal:(id)internal;
- (GKScore)initWithLeaderboardIdentifier:(NSString *)identifier;
- (GKScore)initWithLeaderboardIdentifier:(NSString *)identifier forPlayer:(NSString *)playerID;
- (GKScore)initWithLeaderboardIdentifier:(NSString *)identifier player:(GKPlayer *)player;
- (NSString)playerID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)player;
- (void)reportScoreWithCompletionHandler:(void *)completionHandler;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation GKScore

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GKScore alloc];
  internal = [(GKScore *)self internal];
  v6 = [internal copy];
  v7 = [(GKScore *)v4 initWithInternalRepresentation:v6];

  return v7;
}

- (GKScore)initWithInternalRepresentation:(id)representation playerInternal:(id)internal
{
  representationCopy = representation;
  internalCopy = internal;
  v13.receiver = self;
  v13.super_class = GKScore;
  v8 = [(GKScore *)&v13 init];
  if (v8)
  {
    if (!representationCopy)
    {
      representationCopy = +[(GKInternalRepresentation *)GKScoreInternal];
    }

    objc_storeStrong(&v8->_internal, representationCopy);
    v9 = +[GKGame currentGame];
    game = v8->_game;
    v8->_game = v9;

    player = [(GKScoreInternal *)v8->_internal player];

    if (!player)
    {
      [(GKScoreInternal *)v8->_internal setPlayer:internalCopy];
    }
  }

  return v8;
}

- (GKScore)initWithInternalRepresentation:(id)representation playerID:(id)d
{
  representationCopy = representation;
  dCopy = d;
  player = [representationCopy player];
  if (!player)
  {
    if (dCopy)
    {
      alias = 0;
    }

    else
    {
      v11 = +[GKLocalPlayer localPlayer];
      internal = [v11 internal];
      dCopy = [internal playerID];

      alias = [v11 alias];

      if (!dCopy)
      {
        v9 = 0;
        goto LABEL_7;
      }
    }

    v9 = +[(GKInternalRepresentation *)GKPlayerInternal];
    [v9 setPlayerID:dCopy];
    [v9 setAlias:alias];
LABEL_7:

    goto LABEL_8;
  }

  v9 = player;
LABEL_8:
  v13 = [(GKScore *)self initWithInternalRepresentation:representationCopy playerInternal:v9];

  return v13;
}

- (GKScore)initWithLeaderboardIdentifier:(NSString *)identifier
{
  v4 = identifier;
  v5 = +[(GKInternalRepresentation *)GKScoreInternal];
  [v5 setLeaderboardIdentifier:v4];

  date = [MEMORY[0x277CBEAA8] date];
  [v5 setDate:date];

  v7 = [(GKScore *)self initWithInternalRepresentation:v5 playerID:0];
  return v7;
}

- (GKScore)initWithLeaderboardIdentifier:(NSString *)identifier player:(GKPlayer *)player
{
  v6 = player;
  v7 = identifier;
  v8 = +[(GKInternalRepresentation *)GKScoreInternal];
  [v8 setLeaderboardIdentifier:v7];

  date = [MEMORY[0x277CBEAA8] date];
  [v8 setDate:date];

  internal = [(GKPlayer *)v6 internal];

  minimalInternal = [internal minimalInternal];
  v12 = [(GKScore *)self initWithInternalRepresentation:v8 playerInternal:minimalInternal];

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

    selfCopy = 0;
  }

  else
  {
    v11 = +[(GKInternalRepresentation *)GKScoreInternal];
    [v11 setLeaderboardIdentifier:v6];
    date = [MEMORY[0x277CBEAA8] date];
    [v11 setDate:date];

    self = [(GKScore *)self initWithInternalRepresentation:v11 playerID:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (GKScore)init
{
  v3 = +[GKGame currentGame];
  defaultCategory = [v3 defaultCategory];
  v5 = [(GKScore *)self initWithLeaderboardIdentifier:defaultCategory];

  return v5;
}

- (GKScore)initWithCoder:(id)coder
{
  coderCopy = coder;
  internal = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"internal"];
  v6 = [(GKScore *)self initWithInternalRepresentation:internal];
  v7 = v6;
  if (!internal)
  {
    internal = [(GKScore *)v6 internal];
    [internal setValue:{objc_msgSend(coderCopy, "decodeInt64ForKey:", @"value"}];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formattedValue"];
    [internal setFormattedValue:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    [internal setLeaderboardIdentifier:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    [internal setDate:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playerID"];
    v12 = +[(GKInternalRepresentation *)GKPlayerInternal];
    [v12 setPlayerID:v11];
    [internal setPlayer:v12];
    [internal setRank:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"rank"}];
    [internal setContext:{objc_msgSend(coderCopy, "decodeInt64ForKey:", @"context"}];
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  internal = [(GKScore *)self internal];
  [coderCopy encodeObject:internal forKey:@"internal"];
}

- (NSString)playerID
{
  player = [(GKScoreInternal *)self->_internal player];
  playerID = [player playerID];

  return playerID;
}

- (GKPlayer)player
{
  player = [(GKScoreInternal *)self->_internal player];
  playerID = [player playerID];
  if (playerID && (v5 = playerID, [player alias], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [GKPlayer canonicalizedPlayerForInternal:player];
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

+ (void)reportScores:(id)scores whileScreeningChallenges:(BOOL)challenges withEligibleChallenges:(id)eligibleChallenges withCompletionHandler:(id)handler
{
  v50 = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  eligibleChallengesCopy = eligibleChallenges;
  handlerCopy = handler;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v9 = [scoresCopy countByEnumeratingWithState:&v45 objects:v49 count:16];
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
          objc_enumerationMutation(scoresCopy);
        }

        v14 = *(*(&v45 + 1) + 8 * v13);
        leaderboardIdentifier = [v14 leaderboardIdentifier];
        if (leaderboardIdentifier)
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

        player = [v14 player];
        v17 = player;
        if (player)
        {
          if ([player isLocalPlayer])
          {
            goto LABEL_22;
          }

          v18 = MEMORY[0x277CBEAD8];
          internal = [v17 internal];
          conciseDescription = [internal conciseDescription];
          [v18 raise:v11 format:{@"A GKScore can only be submitted for another player when ending a turn-based match (trying to submit score for %@)", conciseDescription}];
        }

        else
        {
          internal = [v14 playerID];
          if (internal)
          {
            v21 = v11;
            v22 = scoresCopy;
            v23 = +[GKLocalPlayer localPlayer];
            internal2 = [v23 internal];
            playerID = [internal2 playerID];
            v26 = [internal isEqualToString:playerID];

            if (v26)
            {
              scoresCopy = v22;
              v11 = v21;
            }

            else
            {
              v11 = v21;
              [MEMORY[0x277CBEAD8] raise:v21 format:{@"A GKScore can only be submitted for another player when ending a turn-based match (trying to submit score for %@)", internal}];
              scoresCopy = v22;
            }

            v12 = v36;
            v10 = v37;
          }
        }

LABEL_22:
        ++v13;
      }

      while (v10 != v13);
      v10 = [scoresCopy countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v10);
  }

  v27 = +[GKPreferences shared];
  isStoreDemoModeEnabled = [v27 isStoreDemoModeEnabled];

  if (!isStoreDemoModeEnabled)
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __94__GKScore_reportScores_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke_2;
    v38[3] = &unk_2785DFFA0;
    v31 = &v39;
    v39 = scoresCopy;
    challengesCopy = challenges;
    v29 = eligibleChallengesCopy;
    v40 = eligibleChallengesCopy;
    v30 = handlerCopy;
    v41 = handlerCopy;
    gk_dispatch_as_group(v38);

    goto LABEL_28;
  }

  v30 = handlerCopy;
  v29 = eligibleChallengesCopy;
  if (handlerCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__GKScore_reportScores_whileScreeningChallenges_withEligibleChallenges_withCompletionHandler___block_invoke;
    block[3] = &unk_2785DD710;
    v31 = &v44;
    v44 = handlerCopy;
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
  player = [(GKScore *)self player];
  internal = [player internal];
  conciseDescription = [internal conciseDescription];
  rank = [(GKScore *)self rank];
  date = [(GKScore *)self date];
  value = [(GKScore *)self value];
  formattedValue = [(GKScore *)self formattedValue];
  context = [(GKScore *)self context];
  leaderboardIdentifier = [(GKScore *)self leaderboardIdentifier];
  groupLeaderboardIdentifier = [(GKScore *)self groupLeaderboardIdentifier];
  v13 = [v15 stringByAppendingFormat:@"player:%@ rank:%ld date:%@ value:%lld formattedValue:%@ context:0x%llx leaderboard:%@ group:%@", conciseDescription, rank, date, value, formattedValue, context, leaderboardIdentifier, groupLeaderboardIdentifier];

  return v13;
}

- (unint64_t)hash
{
  internal = [(GKScore *)self internal];
  v3 = [internal hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    internal = [(GKScore *)self internal];
    internal2 = [equalCopy internal];
    v7 = [internal isEqual:internal2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)instanceMethodSignatureForSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___GKScore;
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
  v10.super_class = GKScore;
  v5 = [(GKScore *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKScore *)self forwardingTargetForSelector:selector];
    v7 = [v8 methodSignatureForSelector:selector];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = GKScore;
  if ([(GKScore *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKScore *)self forwardingTargetForSelector:selector];
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

        LOBYTE(v4) = [GKScoreInternal instancesRespondToSelector:selector];
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
  internal = [(GKScore *)self internal];
  v6 = [internal valueForKey:keyCopy];

  return v6;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  internal = [(GKScore *)self internal];
  [internal setValue:valueCopy forKey:keyCopy];
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
  selfCopy = self;
  _os_log_error_impl(&dword_227904000, a2, OS_LOG_TYPE_ERROR, "<GKScore %p> has a nil or invalid internal player, will return a nil player", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end