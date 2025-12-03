@interface GKLocalPlayerInternal
+ (id)minimalInternalFromSourcePlayer:(id)player;
+ (id)secureCodedPropertyKeys;
- (BOOL)hasAcknowledgedLatestGDPR;
- (BOOL)isUnderage;
- (id)minimalInternal;
- (int)ageCategory;
- (void)setDefaultContactsIntegrationConsent:(BOOL)consent;
- (void)setDefaultNickname:(BOOL)nickname;
- (void)setDefaultPrivacyVisibility:(BOOL)visibility;
- (void)setFindable:(BOOL)findable;
- (void)setPhotoPending:(BOOL)pending;
- (void)setPurpleBuddyAccount:(BOOL)account;
- (void)setUnderage:(BOOL)underage;
@end

@implementation GKLocalPlayerInternal

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__GKLocalPlayerInternal_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (secureCodedPropertyKeys_onceToken_549_0 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_549_0, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_548_0;

  return v2;
}

void __48__GKLocalPlayerInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v6.receiver = *(a1 + 32);
  v6.super_class = &OBJC_METACLASS___GKLocalPlayerInternal;
  v1 = objc_msgSendSuper2(&v6, sel_secureCodedPropertyKeys);
  v2 = [v1 mutableCopy];

  v7[0] = @"accountName";
  v8[0] = objc_opt_class();
  v7[1] = @"numberOfRequests";
  v8[1] = objc_opt_class();
  v7[2] = @"numberOfTurns";
  v8[2] = objc_opt_class();
  v7[3] = @"numberOfChallenges";
  v8[3] = objc_opt_class();
  v7[4] = @"loginStatus";
  v8[4] = objc_opt_class();
  v7[5] = @"allowChallengeFriendInvites";
  v8[5] = objc_opt_class();
  v7[6] = @"allowMultiplayerFriendInvites";
  v8[6] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:7];
  [v2 addEntriesFromDictionary:v3];

  v4 = secureCodedPropertyKeys_sSecureCodedKeys_548_0;
  secureCodedPropertyKeys_sSecureCodedKeys_548_0 = v2;

  v5 = *MEMORY[0x277D85DE8];
}

- (id)minimalInternal
{
  v3 = objc_opt_class();

  return [v3 minimalInternalFromSourcePlayer:self];
}

+ (id)minimalInternalFromSourcePlayer:(id)player
{
  playerCopy = player;
  internalRepresentation = [objc_opt_class() internalRepresentation];
  playerID = [playerCopy playerID];
  [internalRepresentation setPlayerID:playerID];

  scopedIDs = [playerCopy scopedIDs];
  [internalRepresentation setScopedIDs:scopedIDs];

  alias = [playerCopy alias];
  [internalRepresentation setAlias:alias];

  firstName = [playerCopy firstName];
  [internalRepresentation setFirstName:firstName];

  lastName = [playerCopy lastName];
  [internalRepresentation setLastName:lastName];

  friendLevel = [playerCopy friendLevel];
  [internalRepresentation setFriendLevel:friendLevel];

  friendBiDirectional = [playerCopy friendBiDirectional];
  [internalRepresentation setFriendBiDirectional:friendBiDirectional];

  friendPlayedWith = [playerCopy friendPlayedWith];
  [internalRepresentation setFriendPlayedWith:friendPlayedWith];

  friendPlayedNearby = [playerCopy friendPlayedNearby];
  [internalRepresentation setFriendPlayedNearby:friendPlayedNearby];

  compositeName = [playerCopy compositeName];
  [internalRepresentation setCompositeName:compositeName];

  accountName = [playerCopy accountName];
  [internalRepresentation setAccountName:accountName];

  contactsAssociationID = [playerCopy contactsAssociationID];
  [internalRepresentation setContactsAssociationID:contactsAssociationID];

  [internalRepresentation setContactsIntegrationConsent:{objc_msgSend(playerCopy, "contactsIntegrationConsent")}];
  serviceLastUpdatedTimestamp = [playerCopy serviceLastUpdatedTimestamp];

  [internalRepresentation setServiceLastUpdatedTimestamp:serviceLastUpdatedTimestamp];

  return internalRepresentation;
}

- (void)setPurpleBuddyAccount:(BOOL)account
{
  v3 = 256;
  if (!account)
  {
    v3 = 0;
  }

  self->super.super.super._flags.var0 = (*&self->super.super.super._flags.var0 & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setDefaultNickname:(BOOL)nickname
{
  v3 = 4096;
  if (!nickname)
  {
    v3 = 0;
  }

  self->super.super.super._flags.var0 = (*&self->super.super.super._flags.var0 & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setDefaultPrivacyVisibility:(BOOL)visibility
{
  v3 = 0x2000;
  if (!visibility)
  {
    v3 = 0;
  }

  self->super.super.super._flags.var0 = (*&self->super.super.super._flags.var0 & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setDefaultContactsIntegrationConsent:(BOOL)consent
{
  v3 = 0x4000;
  if (!consent)
  {
    v3 = 0;
  }

  self->super.super.super._flags.var0 = (*&self->super.super.super._flags.var0 & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (BOOL)isUnderage
{
  v3 = +[GKPreferences shared];
  forceUnderage = [v3 forceUnderage];

  if (forceUnderage)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    return (*(&self->super.super.super._flags.var0 + 1) >> 1) & 1;
  }

  return v5;
}

- (void)setUnderage:(BOOL)underage
{
  v3 = 512;
  if (!underage)
  {
    v3 = 0;
  }

  self->super.super.super._flags.var0 = (*&self->super.super.super._flags.var0 & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (int)ageCategory
{
  v2 = +[GKPreferences shared];
  localPlayerAgeCategory = [v2 localPlayerAgeCategory];

  return localPlayerAgeCategory;
}

- (void)setFindable:(BOOL)findable
{
  v3 = 2048;
  if (!findable)
  {
    v3 = 0;
  }

  self->super.super.super._flags.var0 = (*&self->super.super.super._flags.var0 & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setPhotoPending:(BOOL)pending
{
  v3 = 1024;
  if (!pending)
  {
    v3 = 0;
  }

  self->super.super.super._flags.var0 = (*&self->super.super.super._flags.var0 & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (BOOL)hasAcknowledgedLatestGDPR
{
  onboarding = [(GKPlayerInternal *)self onboarding];
  hasAcknowledgedLatestGDPR = [onboarding hasAcknowledgedLatestGDPR];

  return hasAcknowledgedLatestGDPR;
}

@end