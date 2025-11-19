@interface GKTurnBasedParticipant
+ (BOOL)instancesRespondToSelector:(SEL)a3;
+ (BOOL)matchOutcomeIsValidForDoneState:(int64_t)a3;
+ (id)instanceMethodSignatureForSelector:(SEL)a3;
+ (id)stringForMatchOutcome:(int64_t)a3 totalParticipant:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLocalPlayer;
- (BOOL)respondsToSelector:(SEL)a3;
- (GKPlayer)invitedBy;
- (GKPlayer)player;
- (GKTurnBasedParticipant)initWithInternalRepresentation:(id)a3;
- (GKTurnBasedParticipantStatus)status;
- (NSDate)lastTurnDate;
- (NSString)matchStatusString;
- (NSString)playerID;
- (id)basicMatchOutcomeString:(int64_t)a3;
- (id)description;
- (id)matchOutcomeString:(int64_t)a3;
- (id)matchOutcomeStringForLocalPlayer:(int64_t)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)hash;
- (void)setStatus:(int64_t)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation GKTurnBasedParticipant

- (GKTurnBasedParticipant)initWithInternalRepresentation:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[(GKInternalRepresentation *)GKTurnBasedParticipantInternal];
  }

  v8.receiver = self;
  v8.super_class = GKTurnBasedParticipant;
  v5 = [(GKTurnBasedParticipant *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_internal, v4);
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(GKTurnBasedParticipant *)self internal];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(GKTurnBasedParticipant *)self internal];
    v6 = [v4 internal];
    v7 = [v5 isEqual:v6];
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

  v9 = [(GKTurnBasedParticipant *)self internal];
  v10 = [v9 player];

  v11 = [v10 playerID];
  v23 = v8;
  if (v10 && [v10 isLocalPlayer])
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (local player)", v11];

    v11 = v12;
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
    v17 = v11;
  }

  else
  {
    v17 = &stru_283AFD1E0;
  }

  v18 = [(GKTurnBasedParticipant *)self lastTurnDate];
  v19 = [(GKTurnBasedParticipant *)self timeoutDate];
  v20 = [v22 stringWithFormat:@"<%@ %p -%@%@ status:%@ matchOutcome:%@ lastTurnDate:%@ timeoutDate:%@>", v15, self, v16, v17, v13, v23, v18, v19];

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
  v2 = [(GKTurnBasedParticipant *)self internal];
  v3 = [v2 status];

  if ([v3 isEqualToString:@"Invited"])
  {
    v4 = GKTurnBasedParticipantStatusInvited;
  }

  else if ([v3 isEqualToString:@"Active"])
  {
    v4 = GKTurnBasedParticipantStatusActive;
  }

  else if ([v3 isEqualToString:@"Declined"])
  {
    v4 = GKTurnBasedParticipantStatusDeclined;
  }

  else if ([v3 isEqualToString:@"Inactive"])
  {
    v4 = GKTurnBasedParticipantStatusDone;
  }

  else if ([v3 isEqualToString:@"Matching"])
  {
    v4 = GKTurnBasedParticipantStatusMatching;
  }

  else
  {
    v4 = GKTurnBasedParticipantStatusUnknown;
  }

  return v4;
}

- (void)setStatus:(int64_t)a3
{
  v4 = [(GKTurnBasedParticipant *)self internal];
  if (a3 > 4)
  {
    v5 = @"Inactive";
  }

  else
  {
    v5 = off_2785E0288[a3];
  }

  v6 = v4;
  [v4 setStatus:v5];
}

+ (id)stringForMatchOutcome:(int64_t)a3 totalParticipant:(int64_t)a4
{
  v5 = a3;
  v6 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_OUTCOME_NONE];
  v7 = v5 & 0xFF00FFFF;
  if ((v5 & 0xFF00FFFF) > 4)
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
    v11 = [v9 stringWithFormat:v10, a4];

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
    v11 = v8;

LABEL_25:
    v6 = v11;
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
  v2 = [(GKTurnBasedParticipant *)self status];
  v3 = @"invalid status";
  if (v2 > GKTurnBasedParticipantStatusDeclined)
  {
    switch(v2)
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

  else if (v2)
  {
    if (v2 == GKTurnBasedParticipantStatusInvited)
    {
      v3 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_PARTICIPANT_STATUS_INVITED];
    }

    else if (v2 == GKTurnBasedParticipantStatusDeclined)
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

- (id)basicMatchOutcomeString:(int64_t)a3
{
  v4 = [(GKTurnBasedParticipant *)self matchOutcome];

  return [GKTurnBasedParticipant stringForMatchOutcome:v4 totalParticipant:a3];
}

- (id)matchOutcomeStringForLocalPlayer:(int64_t)a3
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
      v6 = [(GKTurnBasedParticipant *)self matchOutcomeString:a3];
      goto LABEL_11;
    }

    v6 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_OUTCOME_YOU_QUIT];
  }

LABEL_11:

  return v6;
}

- (id)matchOutcomeString:(int64_t)a3
{
  v5 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_OUTCOME_NONE];
  if ([(GKTurnBasedParticipant *)self status]== GKTurnBasedParticipantStatusDone)
  {
    v6 = [(GKTurnBasedParticipant *)self basicMatchOutcomeString:a3];
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
      [(GKTurnBasedParticipant *)v9 matchOutcomeString:a3];
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings TURN_BASED_PARTICIPANT_STATUS_OUTCOME_FORMAT];
    v13 = [(GKTurnBasedParticipant *)self matchStatusString];
    v14 = [(GKTurnBasedParticipant *)self basicMatchOutcomeString:a3];
    v15 = [v11 stringWithFormat:v12, v13, v14];

    v5 = v15;
  }

LABEL_6:

  return v5;
}

- (NSDate)lastTurnDate
{
  v2 = [(GKTurnBasedParticipant *)self internal];
  v3 = [v2 lastTurnDate];

  [v3 timeIntervalSince1970];
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

+ (BOOL)matchOutcomeIsValidForDoneState:(int64_t)a3
{
  v4 = (a3 & 0xFF00FFFF) - 1;
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
      [(GKTurnBasedParticipant *)v5 matchOutcomeIsValidForDoneState:a3];
    }
  }

  return v4 < 9;
}

- (GKPlayer)invitedBy
{
  v2 = [(GKTurnBasedParticipant *)self internal];
  v3 = [v2 invitedBy];

  if (v3)
  {
    v4 = [GKPlayer canonicalizedPlayerForInternal:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (GKPlayer)player
{
  v2 = [(GKTurnBasedParticipant *)self internal];
  v3 = [v2 player];

  if (v3)
  {
    v4 = [GKPlayer canonicalizedPlayerForInternal:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)playerID
{
  v2 = [(GKTurnBasedParticipant *)self player];
  v3 = [v2 internal];
  v4 = [v3 playerID];

  return v4;
}

- (BOOL)isLocalPlayer
{
  v2 = [(GKTurnBasedParticipant *)self internal];
  v3 = [v2 player];
  v4 = [v3 isLocalPlayer];

  return v4;
}

+ (id)instanceMethodSignatureForSelector:(SEL)a3
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___GKTurnBasedParticipant;
  v4 = objc_msgSendSuper2(&v9, sel_instanceMethodSignatureForSelector_);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  }

  v7 = v6;

  return v7;
}

- (id)methodSignatureForSelector:(SEL)a3
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
    v8 = [(GKTurnBasedParticipant *)self forwardingTargetForSelector:a3];
    v7 = [v8 methodSignatureForSelector:a3];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = GKTurnBasedParticipant;
  if ([(GKTurnBasedParticipant *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKTurnBasedParticipant *)self forwardingTargetForSelector:a3];
    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

+ (BOOL)instancesRespondToSelector:(SEL)a3
{
  if (a3)
  {
    if (class_respondsToSelector(a1, a3))
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = GKApplicationLinkedOnOrAfter(393216, 0);
      if (v4)
      {

        LOBYTE(v4) = [GKTurnBasedParticipantInternal instancesRespondToSelector:a3];
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(GKTurnBasedParticipant *)self internal];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKTurnBasedParticipant *)self internal];
  [v8 setValue:v7 forKey:v6];
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