@interface GKAchievementThatAFriendHasInternal
+ (id)secureCodedPropertyKeys;
@end

@implementation GKAchievementThatAFriendHasInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_34 != -1)
  {
    +[GKAchievementThatAFriendHasInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_33;

  return v3;
}

void __62__GKAchievementThatAFriendHasInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"friendPlayer";
  v3[1] = @"timestamp";
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_33;
  secureCodedPropertyKeys_sSecureCodedKeys_33 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end