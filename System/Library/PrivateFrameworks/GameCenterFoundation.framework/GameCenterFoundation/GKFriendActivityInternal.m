@interface GKFriendActivityInternal
+ (id)secureCodedPropertyKeys;
- (GKFriendActivityInternal)initWithServerRepresentation:(id)a3;
@end

@implementation GKFriendActivityInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_620 != -1)
  {
    +[GKFriendActivityInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_619;

  return v3;
}

void __51__GKFriendActivityInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"playerID";
  v4[0] = objc_opt_class();
  v3[1] = @"context";
  v4[1] = objc_opt_class();
  v3[2] = @"imageURL";
  v4[2] = objc_opt_class();
  v3[3] = @"timestamp";
  v4[3] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_619;
  secureCodedPropertyKeys_sSecureCodedKeys_619 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (GKFriendActivityInternal)initWithServerRepresentation:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = GKFriendActivityInternal;
  v5 = [(GKFriendActivityInternal *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"player-id"];
    [(GKFriendActivityInternal *)v5 setPlayerID:v6];

    v7 = [v4 objectForKeyedSubscript:@"context"];
    [(GKFriendActivityInternal *)v5 setContext:v7];

    v8 = [v4 objectForKeyedSubscript:@"image-url"];
    [(GKFriendActivityInternal *)v5 setImageURL:v8];

    v9 = MEMORY[0x277CBEAA8];
    v10 = [v4 objectForKeyedSubscript:@"timestamp"];
    v11 = [v9 _gkDateFromServerTimestamp:v10];
    [(GKFriendActivityInternal *)v5 setTimestamp:v11];
  }

  return v5;
}

@end