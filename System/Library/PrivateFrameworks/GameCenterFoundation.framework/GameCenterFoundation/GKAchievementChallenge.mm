@interface GKAchievementChallenge
+ (BOOL)instancesRespondToSelector:(SEL)a3;
- (BOOL)detailsLoaded;
- (GKAchievementChallenge)initWithInternalRepresentation:(id)a3;
- (id)description;
- (id)detailGoalTextForPlayer:(id)a3 withAchievement:(id)a4;
- (id)titleText;
- (void)loadDetailsWithCompletionHandler:(id)a3;
- (void)setInternal:(id)a3;
@end

@implementation GKAchievementChallenge

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v14 = [(GKAchievementChallenge *)self challengeID];
  v17 = [(GKAchievementChallenge *)self achievement];
  v13 = [v17 identifier];
  v3 = [(GKAchievementChallenge *)self issueDate];
  v16 = [(GKChallenge *)self issuingPlayer];
  v4 = [v16 internal];
  v5 = [v4 conciseDescription];
  v6 = [(GKChallenge *)self receivingPlayer];
  v7 = [v6 internal];
  v8 = [v7 conciseDescription];
  v9 = [GKChallenge stringForState:[(GKAchievementChallenge *)self state]];
  v10 = [(GKAchievementChallenge *)self completionDate];
  v11 = [v15 stringWithFormat:@"%p GKAchievementChallenge %@ achievement:%@ issueDate: %@ issuingPlayer: %@ receivingPlayer: %@ state: %@ completedDate: %@", self, v14, v13, v3, v5, v8, v9, v10];

  return v11;
}

- (GKAchievementChallenge)initWithInternalRepresentation:(id)a3
{
  v4 = a3;
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

    if (!v4)
    {
      v4 = +[GKAchievementChallengeInternal internalRepresentation];
    }

    [(GKAchievementChallenge *)v5 setInternal:v4];
  }

  v6 = v5;
LABEL_8:

  return v6;
}

- (void)setInternal:(id)a3
{
  v4 = a3;
  v5 = [(GKChallenge *)self internal];
  v12.receiver = self;
  v12.super_class = GKAchievementChallenge;
  [(GKChallenge *)&v12 setInternal:v4];
  if (v5 != v4)
  {
    v6 = [v4 achievement];

    if (v6)
    {
      v7 = [GKAchievement alloc];
      v8 = [v4 achievement];
      v6 = [(GKAchievement *)v7 initWithInternalRepresentation:v8];

      v9 = [GKGame alloc];
      v10 = [v4 game];
      v11 = [(GKGame *)v9 initWithInternalRepresentation:v10];
      [(GKAchievement *)v6 setGame:v11];
    }

    [(GKAchievementChallenge *)self setAchievement:v6];
  }
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

        LOBYTE(v4) = [GKAchievementChallengeInternal instancesRespondToSelector:a3];
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
  v2 = [(GKAchievementChallenge *)self achievement];
  v3 = [v2 title];

  return v3;
}

- (id)detailGoalTextForPlayer:(id)a3 withAchievement:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  v7 = a3;
  v8 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings CHALLENGE_DETAIL_ACHIEVEMENT_GOAL_FORMAT];
  v9 = [v7 displayNameWithOptions:0];

  v10 = [v6 unachievedDescription];

  v11 = [v5 stringWithFormat:v8, v9, v10];

  return v11;
}

- (BOOL)detailsLoaded
{
  v2 = [(GKAchievementChallenge *)self achievement];
  v3 = [v2 unachievedDescription];
  v4 = v3 != 0;

  return v4;
}

- (void)loadDetailsWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKAchievementChallenge *)self achievement];
  v6 = [v5 identifier];

  v7 = [(GKChallenge *)self game];
  v8 = +[GKLocalPlayer localPlayer];
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__GKAchievementChallenge_loadDetailsWithCompletionHandler___block_invoke;
  v13[3] = &unk_2785E0B78;
  v14 = v6;
  v15 = self;
  v16 = v4;
  v10 = v4;
  v11 = v6;
  [GKAchievement loadAchievementsForGameV2:v7 players:v9 includeUnreported:1 includeHidden:1 withCompletionHandler:v13];

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