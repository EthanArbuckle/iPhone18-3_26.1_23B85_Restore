@interface GKAchievementChallengeInternal
+ (id)internalRepresentation;
+ (id)secureCodedPropertyKeys;
- (id)serverRepresentationForReceivingPlayer:(id)player;
- (id)titleText;
@end

@implementation GKAchievementChallengeInternal

+ (id)internalRepresentation
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__GKAchievementChallengeInternal_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (secureCodedPropertyKeys_onceToken_215 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_215, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_214;

  return v2;
}

void __57__GKAchievementChallengeInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = &OBJC_METACLASS___GKAchievementChallengeInternal;
  v1 = objc_msgSendSuper2(&v4, sel_secureCodedPropertyKeys);
  v2 = [v1 mutableCopy];

  [v2 setObject:objc_opt_class() forKey:@"achievement"];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_214;
  secureCodedPropertyKeys_sSecureCodedKeys_214 = v2;
}

- (id)serverRepresentationForReceivingPlayer:(id)player
{
  selfCopy = self;
  v17[2] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = GKAchievementChallengeInternal;
  v5 = [(GKChallengeInternal *)&v15 serverRepresentationForReceivingPlayer:player];
  v6 = [v5 mutableCopy];

  [v6 setObject:&unk_283B33430 forKey:@"challenge-type"];
  v16[0] = @"achievement-id";
  achievement = [selfCopy achievement];
  identifier = [achievement identifier];
  v16[1] = @"timestamp";
  v17[0] = identifier;
  achievement2 = [selfCopy achievement];
  lastReportedDate = [achievement2 lastReportedDate];
  if (lastReportedDate)
  {
    selfCopy = [selfCopy achievement];
    lastReportedDate2 = [selfCopy lastReportedDate];
    [lastReportedDate2 _gkServerTimestamp];
  }

  else
  {
    [MEMORY[0x277CBEAA8] _gkServerTimestamp];
  }
  v11 = ;
  v17[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  if (lastReportedDate)
  {

    v11 = selfCopy;
  }

  [v6 setObject:v12 forKey:@"achievement"];
  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)titleText
{
  v3 = MEMORY[0x277CCACA8];
  v4 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings SHORT_CHALLENGE_ACHIEVEMENT_TITLE_FORMAT];
  achievement = [(GKAchievementChallengeInternal *)self achievement];
  title = [achievement title];
  v7 = [v3 stringWithFormat:v4, title];

  return v7;
}

@end