@interface GKFriendRequestInternal
+ (id)secureCodedPropertyKeys;
@end

@implementation GKFriendRequestInternal

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__GKFriendRequestInternal_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (secureCodedPropertyKeys_onceToken_630 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_630, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_629;

  return v2;
}

void __50__GKFriendRequestInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___GKFriendRequestInternal;
  v1 = objc_msgSendSuper2(&v7, sel_secureCodedPropertyKeys);
  v2 = [v1 mutableCopy];

  v8[0] = @"date";
  v3 = objc_opt_class();
  v8[1] = @"message";
  v9[0] = v3;
  v9[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v2 addEntriesFromDictionary:v4];

  v5 = secureCodedPropertyKeys_sSecureCodedKeys_629;
  secureCodedPropertyKeys_sSecureCodedKeys_629 = v2;

  v6 = *MEMORY[0x277D85DE8];
}

@end