@interface GKMultiplayerGroupInternal
+ (id)secureCodedPropertyKeys;
- (id)description;
@end

@implementation GKMultiplayerGroupInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_5 != -1)
  {
    +[GKMultiplayerGroupInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_5;

  return v3;
}

void __53__GKMultiplayerGroupInternal_secureCodedPropertyKeys__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v6[0] = @"participants";
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v7[0] = v2;
  v6[1] = @"numberOfAutomached";
  v7[1] = objc_opt_class();
  v6[2] = @"playedAt";
  v7[2] = objc_opt_class();
  v6[3] = @"groupID";
  v7[3] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:4];
  v4 = secureCodedPropertyKeys_sSecureCodedKeys_5;
  secureCodedPropertyKeys_sSecureCodedKeys_5 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  groupID = [(GKMultiplayerGroupInternal *)self groupID];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKMultiplayerGroupInternal numberOfAutomached](self, "numberOfAutomached")}];
  participants = [(GKMultiplayerGroupInternal *)self participants];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{(-[GKMultiplayerGroupInternal playedAt](self, "playedAt") / 1000)}];
  v8 = [v3 stringWithFormat:@"groupID: %@, number of automatched: %@ participants: %@ playedAt: %@", groupID, v5, participants, v7];

  return v8;
}

@end