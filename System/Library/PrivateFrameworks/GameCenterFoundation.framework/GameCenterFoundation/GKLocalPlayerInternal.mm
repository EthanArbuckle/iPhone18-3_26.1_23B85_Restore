@interface GKLocalPlayerInternal
+ (id)minimalInternalFromSourcePlayer:(id)a3;
+ (id)secureCodedPropertyKeys;
- (BOOL)hasAcknowledgedLatestGDPR;
- (BOOL)isUnderage;
- (id)minimalInternal;
- (int)ageCategory;
- (void)setDefaultContactsIntegrationConsent:(BOOL)a3;
- (void)setDefaultNickname:(BOOL)a3;
- (void)setDefaultPrivacyVisibility:(BOOL)a3;
- (void)setFindable:(BOOL)a3;
- (void)setPhotoPending:(BOOL)a3;
- (void)setPurpleBuddyAccount:(BOOL)a3;
- (void)setUnderage:(BOOL)a3;
@end

@implementation GKLocalPlayerInternal

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__GKLocalPlayerInternal_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

+ (id)minimalInternalFromSourcePlayer:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() internalRepresentation];
  v5 = [v3 playerID];
  [v4 setPlayerID:v5];

  v6 = [v3 scopedIDs];
  [v4 setScopedIDs:v6];

  v7 = [v3 alias];
  [v4 setAlias:v7];

  v8 = [v3 firstName];
  [v4 setFirstName:v8];

  v9 = [v3 lastName];
  [v4 setLastName:v9];

  v10 = [v3 friendLevel];
  [v4 setFriendLevel:v10];

  v11 = [v3 friendBiDirectional];
  [v4 setFriendBiDirectional:v11];

  v12 = [v3 friendPlayedWith];
  [v4 setFriendPlayedWith:v12];

  v13 = [v3 friendPlayedNearby];
  [v4 setFriendPlayedNearby:v13];

  v14 = [v3 compositeName];
  [v4 setCompositeName:v14];

  v15 = [v3 accountName];
  [v4 setAccountName:v15];

  v16 = [v3 contactsAssociationID];
  [v4 setContactsAssociationID:v16];

  [v4 setContactsIntegrationConsent:{objc_msgSend(v3, "contactsIntegrationConsent")}];
  v17 = [v3 serviceLastUpdatedTimestamp];

  [v4 setServiceLastUpdatedTimestamp:v17];

  return v4;
}

- (void)setPurpleBuddyAccount:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->super.super.super._flags.var0 = (*&self->super.super.super._flags.var0 & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setDefaultNickname:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->super.super.super._flags.var0 = (*&self->super.super.super._flags.var0 & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setDefaultPrivacyVisibility:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->super.super.super._flags.var0 = (*&self->super.super.super._flags.var0 & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setDefaultContactsIntegrationConsent:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->super.super.super._flags.var0 = (*&self->super.super.super._flags.var0 & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (BOOL)isUnderage
{
  v3 = +[GKPreferences shared];
  v4 = [v3 forceUnderage];

  if (v4)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    return (*(&self->super.super.super._flags.var0 + 1) >> 1) & 1;
  }

  return v5;
}

- (void)setUnderage:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->super.super.super._flags.var0 = (*&self->super.super.super._flags.var0 & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (int)ageCategory
{
  v2 = +[GKPreferences shared];
  v3 = [v2 localPlayerAgeCategory];

  return v3;
}

- (void)setFindable:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->super.super.super._flags.var0 = (*&self->super.super.super._flags.var0 & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setPhotoPending:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->super.super.super._flags.var0 = (*&self->super.super.super._flags.var0 & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (BOOL)hasAcknowledgedLatestGDPR
{
  v2 = [(GKPlayerInternal *)self onboarding];
  v3 = [v2 hasAcknowledgedLatestGDPR];

  return v3;
}

@end