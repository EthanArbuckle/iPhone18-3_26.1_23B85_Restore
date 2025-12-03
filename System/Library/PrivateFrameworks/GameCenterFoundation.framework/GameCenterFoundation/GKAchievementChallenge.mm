@interface GKAchievementChallenge
+ (BOOL)instancesRespondToSelector:(SEL)selector;
- (BOOL)detailsLoaded;
- (GKAchievementChallenge)initWithInternalRepresentation:(id)representation;
- (id)description;
- (id)detailGoalTextForPlayer:(id)player withAchievement:(id)achievement;
- (id)titleText;
- (void)loadDetailsWithCompletionHandler:(id)handler;
- (void)setInternal:(id)internal;
@end

@implementation GKAchievementChallenge

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  challengeID = [(GKAchievementChallenge *)self challengeID];
  achievement = [(GKAchievementChallenge *)self achievement];
  identifier = [achievement identifier];
  issueDate = [(GKAchievementChallenge *)self issueDate];
  issuingPlayer = [(GKChallenge *)self issuingPlayer];
  internal = [issuingPlayer internal];
  conciseDescription = [internal conciseDescription];
  receivingPlayer = [(GKChallenge *)self receivingPlayer];
  internal2 = [receivingPlayer internal];
  conciseDescription2 = [internal2 conciseDescription];
  v9 = [GKChallenge stringForState:[(GKAchievementChallenge *)self state]];
  completionDate = [(GKAchievementChallenge *)self completionDate];
  v11 = [v15 stringWithFormat:@"%p GKAchievementChallenge %@ achievement:%@ issueDate: %@ issuingPlayer: %@ receivingPlayer: %@ state: %@ completedDate: %@", self, challengeID, identifier, issueDate, conciseDescription, conciseDescription2, v9, completionDate];

  return v11;
}

- (GKAchievementChallenge)initWithInternalRepresentation:(id)representation
{
  representationCopy = representation;
  v8.receiver = self;
  v8.super_class = GKAchievementChallenge;
  v5 = [(GKAchievementChallenge *)&v8 init];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_8;
    }

    if (!representationCopy)
    {
      representationCopy = +[GKAchievementChallengeInternal internalRepresentation];
    }

    [(GKAchievementChallenge *)v5 setInternal:representationCopy];
  }

  v6 = v5;
LABEL_8:

  return v6;
}

- (void)setInternal:(id)internal
{
  internalCopy = internal;
  internal = [(GKChallenge *)self internal];
  v12.receiver = self;
  v12.super_class = GKAchievementChallenge;
  [(GKChallenge *)&v12 setInternal:internalCopy];
  if (internal != internalCopy)
  {
    achievement = [internalCopy achievement];

    if (achievement)
    {
      v7 = [GKAchievement alloc];
      achievement2 = [internalCopy achievement];
      achievement = [(GKAchievement *)v7 initWithInternalRepresentation:achievement2];

      v9 = [GKGame alloc];
      game = [internalCopy game];
      v11 = [(GKGame *)v9 initWithInternalRepresentation:game];
      [(GKAchievement *)achievement setGame:v11];
    }

    [(GKAchievementChallenge *)self setAchievement:achievement];
  }
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

        LOBYTE(v4) = [GKAchievementChallengeInternal instancesRespondToSelector:selector];
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)titleText
{
  achievement = [(GKAchievementChallenge *)self achievement];
  title = [achievement title];

  return title;
}

- (id)detailGoalTextForPlayer:(id)player withAchievement:(id)achievement
{
  v5 = MEMORY[0x277CCACA8];
  achievementCopy = achievement;
  playerCopy = player;
  v8 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_DETAIL_ACHIEVEMENT_GOAL_FORMAT];
  v9 = [playerCopy displayNameWithOptions:0];

  unachievedDescription = [achievementCopy unachievedDescription];

  v11 = [v5 stringWithFormat:v8, v9, unachievedDescription];

  return v11;
}

- (BOOL)detailsLoaded
{
  achievement = [(GKAchievementChallenge *)self achievement];
  unachievedDescription = [achievement unachievedDescription];
  v4 = unachievedDescription != 0;

  return v4;
}

- (void)loadDetailsWithCompletionHandler:(id)handler
{
  v17[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  achievement = [(GKAchievementChallenge *)self achievement];
  identifier = [achievement identifier];

  game = [(GKChallenge *)self game];
  v8 = +[GKLocalPlayer localPlayer];
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__GKAchievementChallenge_loadDetailsWithCompletionHandler___block_invoke;
  v13[3] = &unk_2785E0B78;
  v14 = identifier;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = identifier;
  [GKAchievement loadAchievementsForGameV2:game players:v9 includeUnreported:1 includeHidden:1 withCompletionHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __59__GKAchievementChallenge_loadDetailsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [a2 allValues];
  v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v18)
  {
    v17 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v5 = v4;
        v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v20;
          while (2)
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v20 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v19 + 1) + 8 * j);
              v11 = [v10 identifier];
              if ([v11 isEqualToString:*(a1 + 32)])
              {

LABEL_17:
                [*(a1 + 40) setAchievement:v10];
                goto LABEL_18;
              }

              v12 = [v10 groupIdentifier];
              v13 = [v12 isEqualToString:*(a1 + 32)];

              if (v13)
              {
                goto LABEL_17;
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }

      v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

@end