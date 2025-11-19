@interface GKPlayerInternal
+ (Class)classForFamiliarity:(int)a3;
+ (id)compositeNameForFirstName:(id)a3 lastName:(id)a4;
+ (id)displayNameWithOptions:(unsigned __int8)a3 alias:(id)a4 composite:(id)a5;
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFriendInvitationInContacts;
- (BOOL)isLoaded;
- (GKPlayerInternal)initWithSanitizeBeforeEncodingBlock:(id)a3;
- (id)conciseDescription;
- (id)debugDescription;
- (id)minimalInternal;
- (id)serverRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)sanitize;
- (void)setMessagesID:(id)a3;
@end

@implementation GKPlayerInternal

- (GKPlayerInternal)initWithSanitizeBeforeEncodingBlock:(id)a3
{
  v4 = a3;
  v5 = [(GKPlayerInternal *)self init];
  if (v5)
  {
    v6 = _Block_copy(v4);
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GKPlayerInternal *)self sanitizeBeforeEncoding];
  if (v5)
  {
    v6 = v5;
    v7 = [(GKPlayerInternal *)self sanitizeBeforeEncoding];
    v8 = v7[2]();

    if (v8)
    {
      [(GKPlayerInternal *)self sanitize];
    }
  }

  v9.receiver = self;
  v9.super_class = GKPlayerInternal;
  [(GKInternalRepresentation *)&v9 encodeWithCoder:v4];
}

- (id)conciseDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(GKPlayerInternal *)self playerID];
  v5 = [(GKPlayerInternal *)self alias];
  v6 = [(GKPlayerInternal *)self friendLevel];
  v7 = [v3 stringWithFormat:@"playerID:%@ alias:%@ FL%@", v4, v5, v6];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (self == v5)
    {
      v8 = 1;
    }

    else
    {
      v6 = [(GKPlayerInternal *)self playerID];
      v7 = [(GKPlayerInternal *)v5 playerID];
      v8 = [v6 isEqualToString:v7];
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
  v2 = [(GKPlayerInternal *)self playerID];
  v3 = [v2 hash];

  return v3;
}

- (id)minimalInternal
{
  v3 = [objc_opt_class() internalRepresentation];
  v4 = [(GKPlayerInternal *)self playerID];
  [v3 setPlayerID:v4];

  v5 = [(GKPlayerInternal *)self scopedIDs];
  [v3 setScopedIDs:v5];

  v6 = [(GKPlayerInternal *)self alias];
  [v3 setAlias:v6];

  v7 = [(GKPlayerInternal *)self firstName];
  [v3 setFirstName:v7];

  v8 = [(GKPlayerInternal *)self lastName];
  [v3 setLastName:v8];

  v9 = [(GKPlayerInternal *)self friendLevel];
  [v3 setFriendLevel:v9];

  v10 = [(GKPlayerInternal *)self friendBiDirectional];
  [v3 setFriendBiDirectional:v10];

  v11 = [(GKPlayerInternal *)self friendPlayedWith];
  [v3 setFriendPlayedWith:v11];

  v12 = [(GKPlayerInternal *)self friendPlayedNearby];
  [v3 setFriendPlayedNearby:v12];

  v13 = [(GKPlayerInternal *)self acceptedGameInviteFromThisFriend];
  [v3 setAcceptedGameInviteFromThisFriend:v13];

  v14 = [(GKPlayerInternal *)self initiatedGameInviteToThisFriend];
  [v3 setInitiatedGameInviteToThisFriend:v14];

  v15 = [(GKPlayerInternal *)self automatchedTogether];
  [v3 setAutomatchedTogether:v15];

  v16 = [(GKPlayerInternal *)self compositeName];
  [v3 setCompositeName:v16];

  [v3 setAchievementsVisibility:{-[GKPlayerInternal achievementsVisibility](self, "achievementsVisibility")}];
  [v3 setFriendsVisibility:{-[GKPlayerInternal friendsVisibility](self, "friendsVisibility")}];
  [v3 setGamesPlayedVisibility:{-[GKPlayerInternal gamesPlayedVisibility](self, "gamesPlayedVisibility")}];
  [v3 setGlobalFriendListAccess:{-[GKPlayerInternal globalFriendListAccess](self, "globalFriendListAccess")}];
  [v3 setIsArcadeSubscriber:{-[GKPlayerInternal isArcadeSubscriber](self, "isArcadeSubscriber")}];
  [v3 setIsChallengeable:{-[GKPlayerInternal isChallengeable](self, "isChallengeable")}];
  [v3 setSupportsMultiplayerActivities:{-[GKPlayerInternal supportsMultiplayerActivities](self, "supportsMultiplayerActivities")}];

  return v3;
}

+ (id)compositeNameForFirstName:(id)a3 lastName:(id)a4
{
  if (a3 | a4)
  {
    v5 = MEMORY[0x277CBDB38];
    v6 = a4;
    v7 = a3;
    v8 = objc_alloc_init(v5);
    [v8 setContactType:0];
    [v8 setGivenName:v7];

    [v8 setFamilyName:v6];
    v9 = [MEMORY[0x277CBDA78] stringFromContact:v8 style:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)displayNameWithOptions:(unsigned __int8)a3 alias:(id)a4 composite:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10 && (a3 & 1) == 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12;

  return v13;
}

+ (Class)classForFamiliarity:(int)a3
{
  if ((a3 - 1) > 3)
  {
    v4 = off_2785DBC78;
  }

  else
  {
    v4 = off_2785E2660[a3 - 1];
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

- (void)setMessagesID:(id)a3
{
  if (self->_messagesID != a3)
  {
    v4 = [a3 lowercaseString];
    messagesID = self->_messagesID;
    self->_messagesID = v4;

    MEMORY[0x2821F96F8](v4, messagesID);
  }
}

- (BOOL)isFriendInvitationInContacts
{
  if ([(GKPlayerInternal *)self isInContacts])
  {
    return 1;
  }

  v4 = [(GKPlayerInternal *)self contact];
  v3 = v4 != 0;

  return v3;
}

- (id)debugDescription
{
  v3 = [(GKPlayerInternal *)self playerID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"nil";
  }

  v6 = v5;

  v7 = [(GKPlayerInternal *)self alias];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"nil";
  }

  v10 = v9;

  v11 = [(GKPlayerInternal *)self accountName];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"nil";
  }

  v14 = v13;

  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = [MEMORY[0x277CCABB0] numberWithInt:self->_achievementsVisibility];
  v18 = [(GKPlayerInternal *)self scopedIDs];
  v19 = [v15 stringWithFormat:@"%@(%p)(playerID:%@, alias:%@, accountName: %@, _achievementsVisibility:%@, scopedIDs: %@)", v16, self, v6, v10, v14, v17, v18];

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