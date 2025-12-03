@interface GKTurnBasedParticipant
+ (BOOL)instancesRespondToSelector:(SEL)selector;
+ (BOOL)matchOutcomeIsValidForDoneState:(int64_t)state;
+ (id)instanceMethodSignatureForSelector:(SEL)selector;
+ (id)stringForMatchOutcome:(int64_t)outcome totalParticipant:(int64_t)participant;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLocalPlayer;
- (BOOL)respondsToSelector:(SEL)selector;
- (GKPlayer)invitedBy;
- (GKPlayer)player;
- (GKTurnBasedParticipant)initWithInternalRepresentation:(id)representation;
- (GKTurnBasedParticipantStatus)status;
- (NSDate)lastTurnDate;
- (NSString)matchStatusString;
- (NSString)playerID;
- (id)basicMatchOutcomeString:(int64_t)string;
- (id)description;
- (id)matchOutcomeString:(int64_t)string;
- (id)matchOutcomeStringForLocalPlayer:(int64_t)player;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)setStatus:(int64_t)status;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation GKTurnBasedParticipant

- (GKTurnBasedParticipant)initWithInternalRepresentation:(id)representation
{
  representationCopy = representation;
  if (!representationCopy)
  {
    representationCopy = +[(GKInternalRepresentation *)GKTurnBasedParticipantInternal];
  }

  v8.receiver = self;
  v8.super_class = GKTurnBasedParticipant;
  v5 = [(GKTurnBasedParticipant *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_internal, representationCopy);
  }

  return v6;
}

- (unint64_t)hash
{
  internal = [(GKTurnBasedParticipant *)self internal];
  v3 = [internal hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    internal = [(GKTurnBasedParticipant *)self internal];
    internal2 = [equalCopy internal];
    v7 = [internal isEqual:internal2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  if (description_onceToken != -1)
  {
    [GKTurnBasedParticipant description];
  }

  v3 = description_playerStatusEnumLookupDict;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKTurnBasedParticipant status](self, "status")}];
  v5 = [v3 objectForKey:v4];

  v6 = description_matchOutcomeEnumLookupDict;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKTurnBasedParticipant matchOutcome](self, "matchOutcome")}];
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {
    if (([(GKTurnBasedParticipant *)self matchOutcome]& 0xFF0000) != 0)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Custom-%x", -[GKTurnBasedParticipant matchOutcome](self, "matchOutcome")];
    }

    else
    {
      v8 = @"INVALID";
    }
  }

  internal = [(GKTurnBasedParticipant *)self internal];
  player = [internal player];

  playerID = [player playerID];
  v23 = v8;
  if (player && [player isLocalPlayer])
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (local player)", playerID];

    playerID = v12;
  }

  if (v5)
  {
    v13 = v5;
  }

  else
  {
    v13 = @"INVALID";
  }

  v22 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  if ([MEMORY[0x277CCA8D8] _gkMainBundleIsGameCenterSystemProcess])
  {
    v16 = @" playerID:";
  }

  else
  {
    v16 = &stru_283AFD1E0;
  }

  if ([MEMORY[0x277CCA8D8] _gkMainBundleIsGameCenterSystemProcess])
  {
    v17 = playerID;
  }

  else
  {
    v17 = &stru_283AFD1E0;
  }

  lastTurnDate = [(GKTurnBasedParticipant *)self lastTurnDate];
  timeoutDate = [(GKTurnBasedParticipant *)self timeoutDate];
  v20 = [v22 stringWithFormat:@"<%@ %p -%@%@ status:%@ matchOutcome:%@ lastTurnDate:%@ timeoutDate:%@>", v15, self, v16, v17, v13, v23, lastTurnDate, timeoutDate];

  return v20;
}

void __37__GKTurnBasedParticipant_description__block_invoke()
{
  v0 = MEMORY[0x277CBEAC0];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:4];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:5];
  v7 = [v0 dictionaryWithObjectsAndKeys:{@"Unknown", v1, @"Invited", v2, @"Declined", v3, @"Matching", v4, @"Active", v5, @"Done", v6, 0}];
  v8 = description_playerStatusEnumLookupDict;
  description_playerStatusEnumLookupDict = v7;

  v21 = MEMORY[0x277CBEAC0];
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:4];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:5];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:6];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:7];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:9];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:16711680];
  v18 = [v21 dictionaryWithObjectsAndKeys:{@"None", v22, @"Quit", v20, @"Won", v9, @"Lost", v10, @"Tied", v11, @"TimeExpired", v12, @"First", v13, @"Second", v14, @"Third", v15, @"Fourth", v16, @"CustomRange", v17, 0}];
  v19 = description_matchOutcomeEnumLookupDict;
  description_matchOutcomeEnumLookupDict = v18;
}

- (GKTurnBasedParticipantStatus)status
{
  internal = [(GKTurnBasedParticipant *)self internal];
  status = [internal status];

  if ([status isEqualToString:@"Invited"])
  {
    v4 = GKTurnBasedParticipantStatusInvited;
  }

  else if ([status isEqualToString:@"Active"])
  {
    v4 = GKTurnBasedParticipantStatusActive;
  }

  else if ([status isEqualToString:@"Declined"])
  {
    v4 = GKTurnBasedParticipantStatusDeclined;
  }

  else if ([status isEqualToString:@"Inactive"])
  {
    v4 = GKTurnBasedParticipantStatusDone;
  }

  else if ([status isEqualToString:@"Matching"])
  {
    v4 = GKTurnBasedParticipantStatusMatching;
  }

  else
  {
    v4 = GKTurnBasedParticipantStatusUnknown;
  }

  return v4;
}

- (void)setStatus:(int64_t)status
{
  internal = [(GKTurnBasedParticipant *)self internal];
  if (status > 4)
  {
    v5 = @"Inactive";
  }

  else
  {
    v5 = off_2785E0288[status];
  }

  v6 = internal;
  [internal setStatus:v5];
}

+ (id)stringForMatchOutcome:(int64_t)outcome totalParticipant:(int64_t)participant
{
  outcomeCopy = outcome;
  v6 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_OUTCOME_NONE];
  v7 = outcomeCopy & 0xFF00FFFF;
  if ((outcomeCopy & 0xFF00FFFF) > 4)
  {
    if (v7 <= 6)
    {
      if (v7 == 5)
      {
        v8 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_OUTCOME_TIME_EXP];
        goto LABEL_22;
      }

      v9 = MEMORY[0x277CCACA8];
      v10 = +[_TtC20GameCenterFoundation23GCFLocalizedStringsDict TURN_BASED_OUTCOME_FIRST];
    }

    else
    {
      switch(v7)
      {
        case 7:
          v9 = MEMORY[0x277CCACA8];
          v10 = +[_TtC20GameCenterFoundation23GCFLocalizedStringsDict TURN_BASED_OUTCOME_SECOND];
          break;
        case 8:
          v9 = MEMORY[0x277CCACA8];
          v10 = +[_TtC20GameCenterFoundation23GCFLocalizedStringsDict TURN_BASED_OUTCOME_THIRD];
          break;
        case 9:
          v9 = MEMORY[0x277CCACA8];
          v10 = +[_TtC20GameCenterFoundation23GCFLocalizedStringsDict TURN_BASED_OUTCOME_FOURTH];
          break;
        default:
          goto LABEL_29;
      }
    }

    v12 = v10;
    participant = [v9 stringWithFormat:v10, participant];

    goto LABEL_25;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_OUTCOME_WON];
    }

    else
    {
      if (v7 == 3)
      {
        +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_OUTCOME_LOST];
      }

      else
      {
        +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_OUTCOME_TIED];
      }
      v8 = ;
    }

    goto LABEL_22;
  }

  if (!v7)
  {
    v8 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_OUTCOME_NONE];
    goto LABEL_22;
  }

  if (v7 == 1)
  {
    v8 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_OUTCOME_QUIT];
LABEL_22:
    participant = v8;

LABEL_25:
    v6 = participant;
    goto LABEL_26;
  }

LABEL_29:
  v14 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
    v14 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    +[GKTurnBasedParticipant stringForMatchOutcome:totalParticipant:];
  }

LABEL_26:

  return v6;
}

- (NSString)matchStatusString
{
  status = [(GKTurnBasedParticipant *)self status];
  v3 = @"invalid status";
  if (status > GKTurnBasedParticipantStatusDeclined)
  {
    switch(status)
    {
      case GKTurnBasedParticipantStatusMatching:
        v3 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_PARTICIPANT_STATUS_MATCHING];
        break;
      case GKTurnBasedParticipantStatusActive:
        v3 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_PARTICIPANT_STATUS_ACTIVE];
        break;
      case GKTurnBasedParticipantStatusDone:
        v3 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_PARTICIPANT_STATUS_DONE];
        break;
    }
  }

  else if (status)
  {
    if (status == GKTurnBasedParticipantStatusInvited)
    {
      v3 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_PARTICIPANT_STATUS_INVITED];
    }

    else if (status == GKTurnBasedParticipantStatusDeclined)
    {
      v3 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_PARTICIPANT_STATUS_DECLINED];
    }
  }

  else
  {
    v3 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_PARTICIPANT_STATUS_UNKNOWN];
  }

  return v3;
}

- (id)basicMatchOutcomeString:(int64_t)string
{
  matchOutcome = [(GKTurnBasedParticipant *)self matchOutcome];

  return [GKTurnBasedParticipant stringForMatchOutcome:matchOutcome totalParticipant:string];
}

- (id)matchOutcomeStringForLocalPlayer:(int64_t)player
{
  v5 = [(GKTurnBasedParticipant *)self matchOutcome]& 0xFF00FFFFLL;
  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 == 4)
      {
        v6 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_OUTCOME_YOU_TIED];
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v6 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_OUTCOME_YOU_LOST];
  }

  else
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v6 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_OUTCOME_YOU_WON];
        goto LABEL_11;
      }

LABEL_8:
      v6 = [(GKTurnBasedParticipant *)self matchOutcomeString:player];
      goto LABEL_11;
    }

    v6 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_OUTCOME_YOU_QUIT];
  }

LABEL_11:

  return v6;
}

- (id)matchOutcomeString:(int64_t)string
{
  v5 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_OUTCOME_NONE];
  if ([(GKTurnBasedParticipant *)self status]== GKTurnBasedParticipantStatusDone)
  {
    v6 = [(GKTurnBasedParticipant *)self basicMatchOutcomeString:string];
LABEL_5:
    v7 = v6;

    v5 = v7;
    goto LABEL_6;
  }

  if ([(GKTurnBasedParticipant *)self status]== GKTurnBasedParticipantStatusDeclined)
  {
    v6 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_PARTICIPANT_STATUS_DECLINED];
    goto LABEL_5;
  }

  if ([(GKTurnBasedParticipant *)self matchOutcome])
  {
    v9 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
      v9 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(GKTurnBasedParticipant *)v9 matchOutcomeString:string];
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_PARTICIPANT_STATUS_OUTCOME_FORMAT];
    matchStatusString = [(GKTurnBasedParticipant *)self matchStatusString];
    v14 = [(GKTurnBasedParticipant *)self basicMatchOutcomeString:string];
    v15 = [v11 stringWithFormat:v12, matchStatusString, v14];

    v5 = v15;
  }

LABEL_6:

  return v5;
}

- (NSDate)lastTurnDate
{
  internal = [(GKTurnBasedParticipant *)self internal];
  lastTurnDate = [internal lastTurnDate];

  [lastTurnDate timeIntervalSince1970];
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = lastTurnDate;
  }

  return v5;
}

+ (BOOL)matchOutcomeIsValidForDoneState:(int64_t)state
{
  v4 = (state & 0xFF00FFFF) - 1;
  if (v4 >= 9)
  {
    v5 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
      v5 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(GKTurnBasedParticipant *)v5 matchOutcomeIsValidForDoneState:state];
    }
  }

  return v4 < 9;
}

- (GKPlayer)invitedBy
{
  internal = [(GKTurnBasedParticipant *)self internal];
  invitedBy = [internal invitedBy];

  if (invitedBy)
  {
    v4 = [GKPlayer canonicalizedPlayerForInternal:invitedBy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (GKPlayer)player
{
  internal = [(GKTurnBasedParticipant *)self internal];
  player = [internal player];

  if (player)
  {
    v4 = [GKPlayer canonicalizedPlayerForInternal:player];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)playerID
{
  player = [(GKTurnBasedParticipant *)self player];
  internal = [player internal];
  playerID = [internal playerID];

  return playerID;
}

- (BOOL)isLocalPlayer
{
  internal = [(GKTurnBasedParticipant *)self internal];
  player = [internal player];
  isLocalPlayer = [player isLocalPlayer];

  return isLocalPlayer;
}

+ (id)instanceMethodSignatureForSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___GKTurnBasedParticipant;
  v4 = objc_msgSendSuper2(&v9, sel_instanceMethodSignatureForSelector_);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  }

  v7 = v6;

  return v7;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v10.receiver = self;
  v10.super_class = GKTurnBasedParticipant;
  v5 = [(GKTurnBasedParticipant *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKTurnBasedParticipant *)self forwardingTargetForSelector:selector];
    v7 = [v8 methodSignatureForSelector:selector];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = GKTurnBasedParticipant;
  if ([(GKTurnBasedParticipant *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKTurnBasedParticipant *)self forwardingTargetForSelector:selector];
    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

+ (BOOL)instancesRespondToSelector:(SEL)selector
{
  if (selector)
  {
    if (class_respondsToSelector(self, selector))
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = GKApplicationLinkedOnOrAfter(393216, 0);
      if (v4)
      {

        LOBYTE(v4) = [GKTurnBasedParticipantInternal instancesRespondToSelector:selector];
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  internal = [(GKTurnBasedParticipant *)self internal];
  v6 = [internal valueForKey:keyCopy];

  return v6;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  internal = [(GKTurnBasedParticipant *)self internal];
  [internal setValue:valueCopy forKey:keyCopy];
}

+ (void)stringForMatchOutcome:totalParticipant:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_227904000, v0, OS_LOG_TYPE_DEBUG, "GKTurnBasedMatch stringForMatchOutcome: a TURN_BASED_OUTCOME_NONE will be returned because an invalid outcome was encountered: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)matchOutcomeString:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 basicMatchOutcomeString:a3];
  OUTLINED_FUNCTION_0();
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_227904000, v5, OS_LOG_TYPE_DEBUG, "encountered matchOutcome %@ in a non done match: %@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)matchOutcomeIsValidForDoneState:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithInteger:a2];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_227904000, v4, OS_LOG_TYPE_DEBUG, "GKTurnBasedMatch matchOutcomeIsValidForDoneState: match outcome will be marked not valid as invalid outcome was encountered: %@", v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end