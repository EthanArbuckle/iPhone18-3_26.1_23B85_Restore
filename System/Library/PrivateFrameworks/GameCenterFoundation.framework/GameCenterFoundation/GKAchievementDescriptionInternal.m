@interface GKAchievementDescriptionInternal
+ (id)secureCodedPropertyKeys;
@end

@implementation GKAchievementDescriptionInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_7 != -1)
  {
    +[GKAchievementDescriptionInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_7;

  return v3;
}

void __59__GKAchievementDescriptionInternal_secureCodedPropertyKeys__block_invoke()
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  v8[4] = objc_opt_class();
  v8[5] = objc_opt_class();
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0, @"identifier", @"title", @"achievedDescription", @"unachievedDescription", @"maximumPoints", @"hidden", @"icons"}];
  v8[6] = v3;
  v7[7] = @"replayable";
  v8[7] = objc_opt_class();
  v7[8] = @"groupIdentifier";
  v8[8] = objc_opt_class();
  v7[9] = @"rarityPercent";
  v8[9] = objc_opt_class();
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:10];
  v5 = secureCodedPropertyKeys_sSecureCodedKeys_7;
  secureCodedPropertyKeys_sSecureCodedKeys_7 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

@end