@interface GKTransportParticipant
+ (id)participantsFrom:(id)from withKey:(id)key;
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
- (GKTransportParticipant)initWithPlayerID:(id)d pseudonym:(id)pseudonym;
- (id)description;
- (id)serverRepresentation;
- (unint64_t)hash;
@end

@implementation GKTransportParticipant

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_19 != -1)
  {
    +[GKTransportParticipant secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_19;

  return v3;
}

void __49__GKTransportParticipant_secureCodedPropertyKeys__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"playerID";
  v3[1] = @"pseudonym";
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_19;
  secureCodedPropertyKeys_sSecureCodedKeys_19 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (GKTransportParticipant)initWithPlayerID:(id)d pseudonym:(id)pseudonym
{
  dCopy = d;
  pseudonymCopy = pseudonym;
  v11.receiver = self;
  v11.super_class = GKTransportParticipant;
  v8 = [(GKTransportParticipant *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(GKTransportParticipant *)v8 setPlayerID:dCopy];
    [(GKTransportParticipant *)v9 setPseudonym:pseudonymCopy];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  playerID = [(GKTransportParticipant *)self playerID];
  pseudonym = [(GKTransportParticipant *)self pseudonym];
  v6 = [v3 stringWithFormat:@"GKTransportParticipant<%p>[%@, %@]", self, playerID, pseudonym];

  return v6;
}

+ (id)participantsFrom:(id)from withKey:(id)key
{
  v34 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  keyCopy = key;
  v7 = [MEMORY[0x277CBEB58] set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v23 = keyCopy;
  v24 = fromCopy;
  v8 = [fromCopy objectForKeyedSubscript:keyCopy];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:@"pid"];
        v15 = [v13 objectForKeyedSubscript:@"ps"];
        v16 = v15;
        if (v14)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          if (!os_log_GKGeneral)
          {
            v18 = GKOSLoggers();
          }

          v19 = os_log_GKFastSync;
          if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v30 = v14;
            v31 = 2112;
            v32 = v16;
            _os_log_impl(&dword_227904000, v19, OS_LOG_TYPE_INFO, "UpdateAfterInviteeAcceptedUserInfo cannot init participant. playerID(%@) or pseudonym(%@) is nil.", buf, 0x16u);
          }
        }

        else
        {
          v20 = [[GKTransportParticipant alloc] initWithPlayerID:v14 pseudonym:v15];
          [v7 addObject:v20];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v10);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)serverRepresentation
{
  v16[2] = *MEMORY[0x277D85DE8];
  playerID = [(GKTransportParticipant *)self playerID];
  pseudonym = [(GKTransportParticipant *)self pseudonym];
  v5 = pseudonym;
  if (!playerID || !pseudonym)
  {
    v6 = MEMORY[0x277CCACA8];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v8 = [v6 stringWithFormat:@"Invalid participant info for: %@. Call Stack: %@", self, callStackSymbols];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/gamed/GKMultiplayerServiceInterface.m"];
    lastPathComponent = [v9 lastPathComponent];
    v11 = [v6 stringWithFormat:@"%@ (playerID != nil && pseudonym != nil)\n[%s (%s:%d)]", v8, "-[GKTransportParticipant serverRepresentation]", objc_msgSend(lastPathComponent, "UTF8String"), 132];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v11}];
  }

  v15[0] = @"pid";
  v15[1] = @"ps";
  v16[0] = playerID;
  v16[1] = v5;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    playerID = [v5 playerID];
    playerID2 = [(GKTransportParticipant *)self playerID];
    if ([playerID isEqualToString:playerID2])
    {
      pseudonym = [v5 pseudonym];
      pseudonym2 = [(GKTransportParticipant *)self pseudonym];
      v10 = [pseudonym isEqualToString:pseudonym2];
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
  playerID = [(GKTransportParticipant *)self playerID];
  v4 = [playerID hash];
  pseudonym = [(GKTransportParticipant *)self pseudonym];
  v6 = [pseudonym hash];

  return v6 ^ v4;
}

@end