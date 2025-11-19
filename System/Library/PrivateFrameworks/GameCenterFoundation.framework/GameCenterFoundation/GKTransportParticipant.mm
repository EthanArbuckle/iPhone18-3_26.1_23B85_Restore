@interface GKTransportParticipant
+ (id)participantsFrom:(id)a3 withKey:(id)a4;
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)a3;
- (GKTransportParticipant)initWithPlayerID:(id)a3 pseudonym:(id)a4;
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

- (GKTransportParticipant)initWithPlayerID:(id)a3 pseudonym:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = GKTransportParticipant;
  v8 = [(GKTransportParticipant *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(GKTransportParticipant *)v8 setPlayerID:v6];
    [(GKTransportParticipant *)v9 setPseudonym:v7];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(GKTransportParticipant *)self playerID];
  v5 = [(GKTransportParticipant *)self pseudonym];
  v6 = [v3 stringWithFormat:@"GKTransportParticipant<%p>[%@, %@]", self, v4, v5];

  return v6;
}

+ (id)participantsFrom:(id)a3 withKey:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB58] set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v23 = v6;
  v24 = v5;
  v8 = [v5 objectForKeyedSubscript:v6];
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
  v3 = [(GKTransportParticipant *)self playerID];
  v4 = [(GKTransportParticipant *)self pseudonym];
  v5 = v4;
  if (!v3 || !v4)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCACC8] callStackSymbols];
    v8 = [v6 stringWithFormat:@"Invalid participant info for: %@. Call Stack: %@", self, v7];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/gamed/GKMultiplayerServiceInterface.m"];
    v10 = [v9 lastPathComponent];
    v11 = [v6 stringWithFormat:@"%@ (playerID != nil && pseudonym != nil)\n[%s (%s:%d)]", v8, "-[GKTransportParticipant serverRepresentation]", objc_msgSend(v10, "UTF8String"), 132];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v11}];
  }

  v15[0] = @"pid";
  v15[1] = @"ps";
  v16[0] = v3;
  v16[1] = v5;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 playerID];
    v7 = [(GKTransportParticipant *)self playerID];
    if ([v6 isEqualToString:v7])
    {
      v8 = [v5 pseudonym];
      v9 = [(GKTransportParticipant *)self pseudonym];
      v10 = [v8 isEqualToString:v9];
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
  v3 = [(GKTransportParticipant *)self playerID];
  v4 = [v3 hash];
  v5 = [(GKTransportParticipant *)self pseudonym];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end