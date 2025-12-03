@interface GKPlayerInternal
+ (Class)classForFamiliarity:(int)familiarity;
+ (id)compositeNameForFirstName:(id)name lastName:(id)lastName;
+ (id)displayNameWithOptions:(unsigned __int8)options alias:(id)alias composite:(id)composite;
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFriendInvitationInContacts;
- (BOOL)isLoaded;
- (GKPlayerInternal)initWithSanitizeBeforeEncodingBlock:(id)block;
- (id)conciseDescription;
- (id)debugDescription;
- (id)minimalInternal;
- (id)serverRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)sanitize;
- (void)setMessagesID:(id)d;
@end

@implementation GKPlayerInternal

- (GKPlayerInternal)initWithSanitizeBeforeEncodingBlock:(id)block
{
  blockCopy = block;
  v5 = [(GKPlayerInternal *)self init];
  if (v5)
  {
    v6 = _Block_copy(blockCopy);
    sanitizeBeforeEncoding = v5->_sanitizeBeforeEncoding;
    v5->_sanitizeBeforeEncoding = v6;
  }

  return v5;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_21 != -1)
  {
    +[GKPlayerInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_21;

  return v3;
}

void __43__GKPlayerInternal_secureCodedPropertyKeys__block_invoke()
{
  v8[35] = *MEMORY[0x277D85DE8];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  v8[4] = objc_opt_class();
  v8[5] = objc_opt_class();
  v8[6] = objc_opt_class();
  v8[7] = objc_opt_class();
  v8[8] = objc_opt_class();
  v8[9] = objc_opt_class();
  v8[10] = objc_opt_class();
  v8[11] = objc_opt_class();
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0, @"playerID", @"scopedIDs", @"alias", @"avatarArtwork", @"avatarType", @"friendLevel", @"friendBiDirectional", @"friendPlayedWith", @"friendPlayedNearby", @"acceptedGameInviteFromThisFriend", @"initiatedGameInviteToThisFriend", @"automatchedTogether", @"photos"}];
  v8[12] = v3;
  v7[13] = @"flags";
  v8[13] = objc_opt_class();
  v7[14] = @"numberOfFriends";
  v8[14] = objc_opt_class();
  v7[15] = @"numberOfFriendsInCommon";
  v8[15] = objc_opt_class();
  v7[16] = @"numberOfGames";
  v8[16] = objc_opt_class();
  v7[17] = @"numberOfGamesInCommon";
  v8[17] = objc_opt_class();
  v7[18] = @"numberOfAchievements";
  v8[18] = objc_opt_class();
  v7[19] = @"numberOfAchievementPoints";
  v8[19] = objc_opt_class();
  v7[20] = @"messagesID";
  v8[20] = objc_opt_class();
  v7[21] = @"onboarding";
  v8[21] = objc_opt_class();
  v7[22] = @"achievementsVisibility";
  v8[22] = objc_opt_class();
  v7[23] = @"gamesPlayedVisibility";
  v8[23] = objc_opt_class();
  v7[24] = @"friendsVisibility";
  v8[24] = objc_opt_class();
  v7[25] = @"globalFriendListAccess";
  v8[25] = objc_opt_class();
  v7[26] = @"isArcadeSubscriber";
  v8[26] = objc_opt_class();
  v7[27] = @"contactsIntegrationConsent";
  v8[27] = objc_opt_class();
  v7[28] = @"contactsAssociationID";
  v8[28] = objc_opt_class();
  v7[29] = @"inboxEntry";
  v8[29] = objc_opt_class();
  v7[30] = @"isInContacts";
  v8[30] = objc_opt_class();
  v7[31] = @"contact";
  v8[31] = objc_opt_class();
  v7[32] = @"serviceLastUpdatedTimestamp";
  v8[32] = objc_opt_class();
  v7[33] = @"isChallengeable";
  v8[33] = objc_opt_class();
  v7[34] = @"supportsMultiplayerActivities";
  v8[34] = objc_opt_class();
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:35];

  v5 = secureCodedPropertyKeys_sSecureCodedKeys_21;
  secureCodedPropertyKeys_sSecureCodedKeys_21 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sanitizeBeforeEncoding = [(GKPlayerInternal *)self sanitizeBeforeEncoding];
  if (sanitizeBeforeEncoding)
  {
    v6 = sanitizeBeforeEncoding;
    sanitizeBeforeEncoding2 = [(GKPlayerInternal *)self sanitizeBeforeEncoding];
    v8 = sanitizeBeforeEncoding2[2]();

    if (v8)
    {
      [(GKPlayerInternal *)self sanitize];
    }
  }

  v9.receiver = self;
  v9.super_class = GKPlayerInternal;
  [(GKInternalRepresentation *)&v9 encodeWithCoder:coderCopy];
}

- (id)conciseDescription
{
  v3 = MEMORY[0x277CCACA8];
  playerID = [(GKPlayerInternal *)self playerID];
  alias = [(GKPlayerInternal *)self alias];
  friendLevel = [(GKPlayerInternal *)self friendLevel];
  v7 = [v3 stringWithFormat:@"playerID:%@ alias:%@ FL%@", playerID, alias, friendLevel];

  return v7;
}

- (id)serverRepresentation
{
  v2 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
    v2 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [(GKPlayerInternal *)v2 serverRepresentation];
  }

  return MEMORY[0x277CBEC10];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self == v5)
    {
      v8 = 1;
    }

    else
    {
      playerID = [(GKPlayerInternal *)self playerID];
      playerID2 = [(GKPlayerInternal *)v5 playerID];
      v8 = [playerID isEqualToString:playerID2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  playerID = [(GKPlayerInternal *)self playerID];
  v3 = [playerID hash];

  return v3;
}

- (id)minimalInternal
{
  internalRepresentation = [objc_opt_class() internalRepresentation];
  playerID = [(GKPlayerInternal *)self playerID];
  [internalRepresentation setPlayerID:playerID];

  scopedIDs = [(GKPlayerInternal *)self scopedIDs];
  [internalRepresentation setScopedIDs:scopedIDs];

  alias = [(GKPlayerInternal *)self alias];
  [internalRepresentation setAlias:alias];

  firstName = [(GKPlayerInternal *)self firstName];
  [internalRepresentation setFirstName:firstName];

  lastName = [(GKPlayerInternal *)self lastName];
  [internalRepresentation setLastName:lastName];

  friendLevel = [(GKPlayerInternal *)self friendLevel];
  [internalRepresentation setFriendLevel:friendLevel];

  friendBiDirectional = [(GKPlayerInternal *)self friendBiDirectional];
  [internalRepresentation setFriendBiDirectional:friendBiDirectional];

  friendPlayedWith = [(GKPlayerInternal *)self friendPlayedWith];
  [internalRepresentation setFriendPlayedWith:friendPlayedWith];

  friendPlayedNearby = [(GKPlayerInternal *)self friendPlayedNearby];
  [internalRepresentation setFriendPlayedNearby:friendPlayedNearby];

  acceptedGameInviteFromThisFriend = [(GKPlayerInternal *)self acceptedGameInviteFromThisFriend];
  [internalRepresentation setAcceptedGameInviteFromThisFriend:acceptedGameInviteFromThisFriend];

  initiatedGameInviteToThisFriend = [(GKPlayerInternal *)self initiatedGameInviteToThisFriend];
  [internalRepresentation setInitiatedGameInviteToThisFriend:initiatedGameInviteToThisFriend];

  automatchedTogether = [(GKPlayerInternal *)self automatchedTogether];
  [internalRepresentation setAutomatchedTogether:automatchedTogether];

  compositeName = [(GKPlayerInternal *)self compositeName];
  [internalRepresentation setCompositeName:compositeName];

  [internalRepresentation setAchievementsVisibility:{-[GKPlayerInternal achievementsVisibility](self, "achievementsVisibility")}];
  [internalRepresentation setFriendsVisibility:{-[GKPlayerInternal friendsVisibility](self, "friendsVisibility")}];
  [internalRepresentation setGamesPlayedVisibility:{-[GKPlayerInternal gamesPlayedVisibility](self, "gamesPlayedVisibility")}];
  [internalRepresentation setGlobalFriendListAccess:{-[GKPlayerInternal globalFriendListAccess](self, "globalFriendListAccess")}];
  [internalRepresentation setIsArcadeSubscriber:{-[GKPlayerInternal isArcadeSubscriber](self, "isArcadeSubscriber")}];
  [internalRepresentation setIsChallengeable:{-[GKPlayerInternal isChallengeable](self, "isChallengeable")}];
  [internalRepresentation setSupportsMultiplayerActivities:{-[GKPlayerInternal supportsMultiplayerActivities](self, "supportsMultiplayerActivities")}];

  return internalRepresentation;
}

+ (id)compositeNameForFirstName:(id)name lastName:(id)lastName
{
  if (name | lastName)
  {
    v5 = MEMORY[0x277CBDB38];
    lastNameCopy = lastName;
    nameCopy = name;
    v8 = objc_alloc_init(v5);
    [v8 setContactType:0];
    [v8 setGivenName:nameCopy];

    [v8 setFamilyName:lastNameCopy];
    v9 = [MEMORY[0x277CBDA78] stringFromContact:v8 style:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)displayNameWithOptions:(unsigned __int8)options alias:(id)alias composite:(id)composite
{
  aliasCopy = alias;
  compositeCopy = composite;
  v9 = compositeCopy;
  if (compositeCopy)
  {
    v10 = aliasCopy == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10 && (options & 1) == 0)
  {
    v12 = compositeCopy;
  }

  else
  {
    v12 = aliasCopy;
  }

  v13 = v12;

  return v13;
}

+ (Class)classForFamiliarity:(int)familiarity
{
  if ((familiarity - 1) > 3)
  {
    v4 = off_2785DBC78;
  }

  else
  {
    v4 = off_2785E2660[familiarity - 1];
  }

  v5 = *v4;
  v6 = objc_opt_class();

  return v6;
}

- (BOOL)isLoaded
{
  v3 = [(NSString *)self->_playerID length];
  if (v3)
  {
    LOBYTE(v3) = [(NSString *)self->_alias length]!= 0;
  }

  return v3;
}

- (void)setMessagesID:(id)d
{
  if (self->_messagesID != d)
  {
    lowercaseString = [d lowercaseString];
    messagesID = self->_messagesID;
    self->_messagesID = lowercaseString;

    MEMORY[0x2821F96F8](lowercaseString, messagesID);
  }
}

- (BOOL)isFriendInvitationInContacts
{
  if ([(GKPlayerInternal *)self isInContacts])
  {
    return 1;
  }

  contact = [(GKPlayerInternal *)self contact];
  v3 = contact != 0;

  return v3;
}

- (id)debugDescription
{
  playerID = [(GKPlayerInternal *)self playerID];
  v4 = playerID;
  if (playerID)
  {
    v5 = playerID;
  }

  else
  {
    v5 = @"nil";
  }

  v6 = v5;

  alias = [(GKPlayerInternal *)self alias];
  v8 = alias;
  if (alias)
  {
    v9 = alias;
  }

  else
  {
    v9 = @"nil";
  }

  v10 = v9;

  accountName = [(GKPlayerInternal *)self accountName];
  v12 = accountName;
  if (accountName)
  {
    v13 = accountName;
  }

  else
  {
    v13 = @"nil";
  }

  v14 = v13;

  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = [MEMORY[0x277CCABB0] numberWithInt:self->_achievementsVisibility];
  scopedIDs = [(GKPlayerInternal *)self scopedIDs];
  v19 = [v15 stringWithFormat:@"%@(%p)(playerID:%@, alias:%@, accountName: %@, _achievementsVisibility:%@, scopedIDs: %@)", v16, self, v6, v10, v14, v17, scopedIDs];

  return v19;
}

- (void)sanitize
{
  [(GKPlayerInternal *)self setAccountName:0];
  [(GKPlayerInternal *)self setFriends:MEMORY[0x277CBEBF8]];
  [(GKPlayerInternal *)self setFirstName:0];
  [(GKPlayerInternal *)self setLastName:0];
  [(GKPlayerInternal *)self setCompositeName:0];
  [(GKPlayerInternal *)self setLastPlayedGame:0];
  [(GKPlayerInternal *)self setStatus:0];
  [(GKPlayerInternal *)self setLastPlayedDate:0];
  [(GKPlayerInternal *)self setContact:0];
  [(GKPlayerInternal *)self setContactsAssociationID:0];
  [(GKPlayerInternal *)self setContactsIntegrationConsent:2];
  [(GKPlayerInternal *)self setChallengedTogether:0];
  [(GKPlayerInternal *)self setLastChallengedDate:0];
  [(GKPlayerInternal *)self setLastChallengedGame:0];
  [(GKPlayerInternal *)self setAllowReceivingFriendInvites:0];
  [(GKPlayerInternal *)self setAllowChallengeFriendInvites:0];
  [(GKPlayerInternal *)self setAllowMultiplayerFriendInvites:0];
  [(GKPlayerInternal *)self setIsChallengeable:0];

  [(GKPlayerInternal *)self setSupportsMultiplayerActivities:0];
}

@end