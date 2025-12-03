@interface GKTurnBasedParticipantInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isAutomatchParticipant;
- (BOOL)isEqual:(id)equal;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (slot = self->_slot, slot == [equalCopy slot]))
  {
    sessionID = self->_sessionID;
    sessionID = [equalCopy sessionID];
    if (sessionID == sessionID)
    {
      v10 = 1;
    }

    else
    {
      v8 = self->_sessionID;
      sessionID2 = [equalCopy sessionID];
      v10 = [(NSString *)v8 isEqualToString:sessionID2];
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  status = [(GKTurnBasedParticipantInternal *)self status];
  [dictionary setObject:status forKeyedSubscript:@"player-status"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKTurnBasedParticipantInternal matchOutcome](self, "matchOutcome")}];
  [dictionary setObject:v5 forKeyedSubscript:@"player-status-code"];

  player = [(GKTurnBasedParticipantInternal *)self player];
  playerID = [player playerID];
  v8 = [playerID length];

  if (v8)
  {
    player2 = [(GKTurnBasedParticipantInternal *)self player];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    player3 = [(GKTurnBasedParticipantInternal *)self player];
    v12 = player3;
    if (isKindOfClass)
    {
      guestIdentifier = [player3 guestIdentifier];
      [dictionary setObject:guestIdentifier forKeyedSubscript:@"guest-id"];

      hostPlayerInternal = [v12 hostPlayerInternal];
      playerID2 = [hostPlayerInternal playerID];
      [dictionary setObject:playerID2 forKeyedSubscript:@"player-id"];
    }

    else
    {
      hostPlayerInternal = [player3 playerID];
      [dictionary setObject:hostPlayerInternal forKeyedSubscript:@"player-id"];
    }
  }

  return dictionary;
}

- (BOOL)isAutomatchParticipant
{
  player = [(GKTurnBasedParticipantInternal *)self player];
  isLocalPlayer = [player isLocalPlayer];

  if (isLocalPlayer)
  {
    return 0;
  }

  player2 = [(GKTurnBasedParticipantInternal *)self player];
  playerID = [player2 playerID];
  v5 = [playerID length] == 0;

  return v5;
}

- (NSString)playerID
{
  player = [(GKTurnBasedParticipantInternal *)self player];
  playerID = [player playerID];

  return playerID;
}

@end