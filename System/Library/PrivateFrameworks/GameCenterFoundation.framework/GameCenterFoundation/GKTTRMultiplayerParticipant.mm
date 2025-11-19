@interface GKTTRMultiplayerParticipant
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)a3;
- (GKTTRMultiplayerParticipant)initWithPlayerID:(id)a3 pushToken:(id)a4;
- (id)serverRepresentation;
- (unint64_t)hash;
@end

@implementation GKTTRMultiplayerParticipant

- (GKTTRMultiplayerParticipant)initWithPlayerID:(id)a3 pushToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = GKTTRMultiplayerParticipant;
  v8 = [(GKTTRMultiplayerParticipant *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(GKTTRMultiplayerParticipant *)v8 setPlayerID:v6];
    [(GKTTRMultiplayerParticipant *)v9 setPushToken:v7];
  }

  return v9;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_281 != -1)
  {
    +[GKTTRMultiplayerParticipant secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_280;

  return v3;
}

void __54__GKTTRMultiplayerParticipant_secureCodedPropertyKeys__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0, @"playerID"}];
  v5[1] = @"pushToken";
  v6[0] = v0;
  v1 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_280;
  secureCodedPropertyKeys_sSecureCodedKeys_280 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 playerID];
    v7 = [(GKTTRMultiplayerParticipant *)self playerID];
    if ([v6 isEqualToString:v7])
    {
      v8 = [v5 pushToken];
      v9 = [(GKTTRMultiplayerParticipant *)self pushToken];
      v10 = [v8 isEqualToData:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(GKTTRMultiplayerParticipant *)self playerID];
  v4 = [v3 hash];
  v5 = [(GKTTRMultiplayerParticipant *)self pushToken];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)serverRepresentation
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = [(GKTTRMultiplayerParticipant *)self playerID];
  if (!v3 || (v4 = v3, [(GKTTRMultiplayerParticipant *)self pushToken], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCACC8] callStackSymbols];
    v8 = [v6 stringWithFormat:@"Invalid GKTTRMultiplayerParticipant for: %@. Call Stack: %@", self, v7];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/gamed/GKMultiplayerServiceInterface.m"];
    v10 = [v9 lastPathComponent];
    v11 = [v6 stringWithFormat:@"%@ (self.playerID != nil && self.pushToken != nil)\n[%s (%s:%d)]", v8, "-[GKTTRMultiplayerParticipant serverRepresentation]", objc_msgSend(v10, "UTF8String"), 245];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v11}];
  }

  v17[0] = @"id";
  v12 = [(GKTTRMultiplayerParticipant *)self playerID];
  v17[1] = @"push-token";
  v18[0] = v12;
  v13 = [(GKTTRMultiplayerParticipant *)self pushToken];
  v18[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end