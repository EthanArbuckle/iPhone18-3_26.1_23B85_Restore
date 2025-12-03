@interface GKFriendCodeDetailInternal
+ (id)secureCodedPropertyKeys;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation GKFriendCodeDetailInternal

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  creatorPlayerID = [(GKFriendCodeDetailInternal *)self creatorPlayerID];
  [v4 setCreatorPlayerID:creatorPlayerID];

  [v4 setFriendCodeState:{-[GKFriendCodeDetailInternal friendCodeState](self, "friendCodeState")}];
  [v4 setFriendCodeUsageCount:{-[GKFriendCodeDetailInternal friendCodeUsageCount](self, "friendCodeUsageCount")}];
  alreadyUsedPlayerIDs = [(GKFriendCodeDetailInternal *)self alreadyUsedPlayerIDs];
  [v4 setAlreadyUsedPlayerIDs:alreadyUsedPlayerIDs];

  return v4;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_18 != -1)
  {
    +[GKFriendCodeDetailInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_18;

  return v3;
}

void __53__GKFriendCodeDetailInternal_secureCodedPropertyKeys__block_invoke()
{
  v7[5] = *MEMORY[0x277D85DE8];
  v6[0] = @"creatorPlayerID";
  v7[0] = objc_opt_class();
  v6[1] = @"friendCode";
  v7[1] = objc_opt_class();
  v6[2] = @"friendCodeState";
  v7[2] = objc_opt_class();
  v6[3] = @"friendCodeUsageCount";
  v7[3] = objc_opt_class();
  v6[4] = @"alreadyUsedPlayerIDs";
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v7[4] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:5];
  v4 = secureCodedPropertyKeys_sSecureCodedKeys_18;
  secureCodedPropertyKeys_sSecureCodedKeys_18 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

@end