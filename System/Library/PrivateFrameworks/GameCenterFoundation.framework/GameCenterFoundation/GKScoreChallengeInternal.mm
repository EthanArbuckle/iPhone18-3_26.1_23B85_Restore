@interface GKScoreChallengeInternal
+ (id)internalRepresentation;
+ (id)secureCodedPropertyKeys;
- (id)serverRepresentationForReceivingPlayer:(id)player;
- (id)titleText;
@end

@implementation GKScoreChallengeInternal

+ (id)internalRepresentation
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__GKScoreChallengeInternal_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (secureCodedPropertyKeys_onceToken_168 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_168, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_167;

  return v2;
}

void __51__GKScoreChallengeInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = &OBJC_METACLASS___GKScoreChallengeInternal;
  v1 = objc_msgSendSuper2(&v4, sel_secureCodedPropertyKeys);
  v2 = [v1 mutableCopy];

  [v2 setObject:objc_opt_class() forKey:@"score"];
  [v2 setObject:objc_opt_class() forKey:@"leaderboard"];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_167;
  secureCodedPropertyKeys_sSecureCodedKeys_167 = v2;
}

- (id)serverRepresentationForReceivingPlayer:(id)player
{
  v24[4] = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = GKScoreChallengeInternal;
  v5 = [(GKChallengeInternal *)&v22 serverRepresentationForReceivingPlayer:player];
  v6 = [v5 mutableCopy];

  [v6 setObject:&unk_283B33418 forKey:@"challenge-type"];
  v23[0] = @"value";
  v7 = MEMORY[0x277CCABB0];
  score = [(GKScoreChallengeInternal *)self score];
  v20 = [v7 numberWithLongLong:{objc_msgSend(score, "value")}];
  v24[0] = v20;
  v23[1] = @"leaderboard-id";
  score2 = [(GKScoreChallengeInternal *)self score];
  leaderboardIdentifier = [score2 leaderboardIdentifier];
  v24[1] = leaderboardIdentifier;
  v23[2] = @"timestamp";
  score3 = [(GKScoreChallengeInternal *)self score];
  date = [score3 date];
  if (date)
  {
    score4 = [(GKScoreChallengeInternal *)self score];
    date2 = [score4 date];
    [date2 _gkServerTimestamp];
  }

  else
  {
    [MEMORY[0x277CBEAA8] _gkServerTimestamp];
  }
  v12 = ;
  v24[2] = v12;
  v23[3] = @"context";
  v13 = MEMORY[0x277CCABB0];
  score5 = [(GKScoreChallengeInternal *)self score];
  v15 = [v13 numberWithLongLong:{objc_msgSend(score5, "context")}];
  v24[3] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];

  if (date)
  {

    v12 = score4;
  }

  [v6 setObject:v16 forKey:@"score"];
  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)titleText
{
  score = [(GKScoreChallengeInternal *)self score];
  formattedValue = [score formattedValue];

  if (formattedValue && (-[GKScoreChallengeInternal leaderboard](self, "leaderboard"), v5 = objc_claimAutoreleasedReturnValue(), [v5 title], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings SHORT_CHALLENGE_SCORE_TITLE_FORMAT];
    leaderboard = [(GKScoreChallengeInternal *)self leaderboard];
    title = [leaderboard title];
    v11 = [v7 stringWithFormat:v8, formattedValue, title];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end