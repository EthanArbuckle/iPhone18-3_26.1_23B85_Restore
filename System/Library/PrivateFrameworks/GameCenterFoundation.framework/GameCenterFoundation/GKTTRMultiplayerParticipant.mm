@interface GKTTRMultiplayerParticipant
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
- (GKTTRMultiplayerParticipant)initWithPlayerID:(id)d pushToken:(id)token;
- (id)serverRepresentation;
- (unint64_t)hash;
@end

@implementation GKTTRMultiplayerParticipant

- (GKTTRMultiplayerParticipant)initWithPlayerID:(id)d pushToken:(id)token
{
  dCopy = d;
  tokenCopy = token;
  v11.receiver = self;
  v11.super_class = GKTTRMultiplayerParticipant;
  v8 = [(GKTTRMultiplayerParticipant *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(GKTTRMultiplayerParticipant *)v8 setPlayerID:dCopy];
    [(GKTTRMultiplayerParticipant *)v9 setPushToken:tokenCopy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    playerID = [v5 playerID];
    playerID2 = [(GKTTRMultiplayerParticipant *)self playerID];
    if ([playerID isEqualToString:playerID2])
    {
      pushToken = [v5 pushToken];
      pushToken2 = [(GKTTRMultiplayerParticipant *)self pushToken];
      v10 = [pushToken isEqualToData:pushToken2];
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
  playerID = [(GKTTRMultiplayerParticipant *)self playerID];
  v4 = [playerID hash];
  pushToken = [(GKTTRMultiplayerParticipant *)self pushToken];
  v6 = [pushToken hash];

  return v6 ^ v4;
}

- (id)serverRepresentation
{
  v18[2] = *MEMORY[0x277D85DE8];
  playerID = [(GKTTRMultiplayerParticipant *)self playerID];
  if (!playerID || (v4 = playerID, [(GKTTRMultiplayerParticipant *)self pushToken], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v6 = MEMORY[0x277CCACA8];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v8 = [v6 stringWithFormat:@"Invalid GKTTRMultiplayerParticipant for: %@. Call Stack: %@", self, callStackSymbols];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/gamed/GKMultiplayerServiceInterface.m"];
    lastPathComponent = [v9 lastPathComponent];
    v11 = [v6 stringWithFormat:@"%@ (self.playerID != nil && self.pushToken != nil)\n[%s (%s:%d)]", v8, "-[GKTTRMultiplayerParticipant serverRepresentation]", objc_msgSend(lastPathComponent, "UTF8String"), 245];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v11}];
  }

  v17[0] = @"id";
  playerID2 = [(GKTTRMultiplayerParticipant *)self playerID];
  v17[1] = @"push-token";
  v18[0] = playerID2;
  pushToken = [(GKTTRMultiplayerParticipant *)self pushToken];
  v18[1] = pushToken;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end