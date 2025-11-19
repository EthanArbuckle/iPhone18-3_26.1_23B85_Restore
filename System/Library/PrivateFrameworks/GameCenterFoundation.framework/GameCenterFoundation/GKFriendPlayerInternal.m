@interface GKFriendPlayerInternal
+ (id)secureCodedPropertyKeys;
@end

@implementation GKFriendPlayerInternal

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__GKFriendPlayerInternal_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (secureCodedPropertyKeys_onceToken_516 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_516, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_515;

  return v2;
}

void __49__GKFriendPlayerInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v6.receiver = *(a1 + 32);
  v6.super_class = &OBJC_METACLASS___GKFriendPlayerInternal;
  v1 = objc_msgSendSuper2(&v6, sel_secureCodedPropertyKeys);
  v2 = [v1 mutableCopy];

  v7[0] = @"status";
  v8[0] = objc_opt_class();
  v7[1] = @"lastPlayedDate";
  v8[1] = objc_opt_class();
  v7[2] = @"lastPlayedGame";
  v8[2] = objc_opt_class();
  v7[3] = @"challengedTogether";
  v8[3] = objc_opt_class();
  v7[4] = @"lastChallengedDate";
  v8[4] = objc_opt_class();
  v7[5] = @"lastChallengedGame";
  v8[5] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:6];
  [v2 addEntriesFromDictionary:v3];

  v4 = secureCodedPropertyKeys_sSecureCodedKeys_515;
  secureCodedPropertyKeys_sSecureCodedKeys_515 = v2;

  v5 = *MEMORY[0x277D85DE8];
}

@end