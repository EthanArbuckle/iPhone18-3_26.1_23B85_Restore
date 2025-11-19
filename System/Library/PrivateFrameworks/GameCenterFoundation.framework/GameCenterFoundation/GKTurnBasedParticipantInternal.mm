@interface GKTurnBasedParticipantInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isAutomatchParticipant;
- (BOOL)isEqual:(id)a3;
- (NSString)playerID;
- (id)serverRepresentation;
@end

@implementation GKTurnBasedParticipantInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_275_0 != -1)
  {
    +[GKTurnBasedParticipantInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_274_0;

  return v3;
}

void __57__GKTurnBasedParticipantInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[9] = *MEMORY[0x277D85DE8];
  v3[0] = @"sessionID";
  v4[0] = objc_opt_class();
  v3[1] = @"lastTurnDate";
  v4[1] = objc_opt_class();
  v3[2] = @"timeoutDate";
  v4[2] = objc_opt_class();
  v3[3] = @"invitedBy";
  v4[3] = objc_opt_class();
  v3[4] = @"inviteMessage";
  v4[4] = objc_opt_class();
  v3[5] = @"status";
  v4[5] = objc_opt_class();
  v3[6] = @"matchOutcome";
  v4[6] = objc_opt_class();
  v3[7] = @"slot";
  v4[7] = objc_opt_class();
  v3[8] = @"player";
  v4[8] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:9];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_274_0;
  secureCodedPropertyKeys_sSecureCodedKeys_274_0 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (slot = self->_slot, slot == [v4 slot]))
  {
    sessionID = self->_sessionID;
    v7 = [v4 sessionID];
    if (sessionID == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = self->_sessionID;
      v9 = [v4 sessionID];
      v10 = [(NSString *)v8 isEqualToString:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)serverRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(GKTurnBasedParticipantInternal *)self status];
  [v3 setObject:v4 forKeyedSubscript:@"player-status"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKTurnBasedParticipantInternal matchOutcome](self, "matchOutcome")}];
  [v3 setObject:v5 forKeyedSubscript:@"player-status-code"];

  v6 = [(GKTurnBasedParticipantInternal *)self player];
  v7 = [v6 playerID];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(GKTurnBasedParticipantInternal *)self player];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v11 = [(GKTurnBasedParticipantInternal *)self player];
    v12 = v11;
    if (isKindOfClass)
    {
      v13 = [v11 guestIdentifier];
      [v3 setObject:v13 forKeyedSubscript:@"guest-id"];

      v14 = [v12 hostPlayerInternal];
      v15 = [v14 playerID];
      [v3 setObject:v15 forKeyedSubscript:@"player-id"];
    }

    else
    {
      v14 = [v11 playerID];
      [v3 setObject:v14 forKeyedSubscript:@"player-id"];
    }
  }

  return v3;
}

- (BOOL)isAutomatchParticipant
{
  v3 = [(GKTurnBasedParticipantInternal *)self player];
  v4 = [v3 isLocalPlayer];

  if (v4)
  {
    return 0;
  }

  v6 = [(GKTurnBasedParticipantInternal *)self player];
  v7 = [v6 playerID];
  v5 = [v7 length] == 0;

  return v5;
}

- (NSString)playerID
{
  v2 = [(GKTurnBasedParticipantInternal *)self player];
  v3 = [v2 playerID];

  return v3;
}

@end