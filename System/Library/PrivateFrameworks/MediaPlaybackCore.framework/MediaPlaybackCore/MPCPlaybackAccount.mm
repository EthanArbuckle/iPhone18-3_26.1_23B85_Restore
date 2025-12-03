@interface MPCPlaybackAccount
- (BOOL)canAutoPlay;
- (BOOL)hasCatalogPlaybackCapability;
- (BOOL)hasDelegationCapability;
- (BOOL)hasMigrationCapability;
- (BOOL)isEqual:(id)equal;
- (BOOL)usesLease;
- (MPCPlaybackAccount)initWithDelegatedUserIdentity:(id)identity;
- (MPCPlaybackAccount)initWithUserIdentity:(id)identity subscriptionStatus:(id)status;
- (NSString)shortHashedDSID;
- (id)_copyStreamerStorage:(id)storage;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)delegateTokenAWithError:(id *)error;
- (id)description;
- (unint64_t)hash;
- (void)getDelegateTokenEWithTokenB:(_MPCProtoDelegateInfoTokenB *)b completion:(id)completion;
@end

@implementation MPCPlaybackAccount

- (id)_copyStreamerStorage:(id)storage
{
  storageCopy = storage;
  selfCopy = self;
  sub_1C5C7DACC(storage, v14);

  v7 = v15;
  if (!v15)
  {
    return 0;
  }

  v8 = __swift_project_boxed_opaque_existential_0(v14, v15);
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = sub_1C6017850();
  (*(v9 + 8))(v11, v7);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v12;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  shortHashedDSID = [(MPCPlaybackAccount *)self shortHashedDSID];
  v6 = [v3 initWithFormat:@"<%@ hashedDSID=%@ ", v4, shortHashedDSID];

  if (self->_activeAccount)
  {
    [v6 appendString:@"active "];
  }

  if (self->_fallbackAccount)
  {
    [v6 appendString:@"fallback "];
  }

  if (self->_delegated)
  {
    [v6 appendString:@"delegated "];
  }

  [v6 appendString:@"status["];
  if ([(MPCPlaybackAccount *)self hasCatalogPlaybackCapability])
  {
    [v6 appendString:@"musicSubscription "];
  }

  if ([(MPCPlaybackAccount *)self canEnableCloudLibrary])
  {
    if ([(MPCPlaybackAccount *)self hasCloudLibraryEnabled])
    {
      v7 = @"cloudLibrary<enabled> ";
    }

    else
    {
      v7 = @"cloudLibrary<disabled> ";
    }

    [v6 appendString:v7];
  }

  if (self->_privateListeningEnabled)
  {
    [v6 appendString:@"privateListening "];
  }

  [v6 deleteCharactersInRange:{objc_msgSend(v6, "length") - 1, 1}];
  [v6 appendString:@"] "];
  [v6 appendFormat:@"identity=%@>", self->_userIdentity];

  return v6;
}

- (BOOL)canAutoPlay
{
  if (self->_delegated)
  {
    return 1;
  }

  canEnableCloudLibrary = [(MPCPlaybackAccount *)self canEnableCloudLibrary];
  radioConfiguration = [(ICURLBag *)self->_bag radioConfiguration];
  isContinueListeningAvailable = [radioConfiguration isContinueListeningAvailable];

  return canEnableCloudLibrary & [(MPCPlaybackAccount *)self hasCatalogPlaybackCapability]& isContinueListeningAvailable;
}

- (BOOL)hasCatalogPlaybackCapability
{
  if (self->_delegated)
  {
    return 1;
  }

  else
  {
    return [(ICMusicSubscriptionStatus *)self->_subscriptionStatus hasCapability:128];
  }
}

- (NSString)shortHashedDSID
{
  v3 = [(NSString *)self->_hashedDSID length];
  hashedDSID = self->_hashedDSID;
  if (v3 < 8)
  {
    v5 = hashedDSID;
  }

  else
  {
    v5 = [(NSString *)hashedDSID substringToIndex:7];
  }

  return v5;
}

- (id)delegateTokenAWithError:(id *)error
{
  selfCopy = self;
  v4 = sub_1C5CBB04C();

  return v4;
}

- (void)getDelegateTokenEWithTokenB:(_MPCProtoDelegateInfoTokenB *)b completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = b;
  v7[3] = v6;
  v7[4] = self;
  bCopy = b;
  selfCopy = self;

  sub_1C5E3A9D0(&unk_1C6035B98, v7);
}

- (BOOL)usesLease
{
  if (self->_delegated)
  {
    return 1;
  }

  v3 = [objc_alloc(MEMORY[0x1E6970A00]) initWithICSubscriptionStatus:self->_subscriptionStatus];
  shouldUseLease = [v3 shouldUseLease];

  return shouldUseLease;
}

- (BOOL)hasDelegationCapability
{
  if (self->_delegated)
  {
    return 0;
  }

  v4 = [(ICMusicSubscriptionStatus *)self->_subscriptionStatus hasCapability:256];
  return [(MPCPlaybackAccount *)self hasCatalogPlaybackCapability]& v4;
}

- (BOOL)hasMigrationCapability
{
  if (self->_delegated)
  {
    return 1;
  }

  v4 = [(ICMusicSubscriptionStatus *)self->_subscriptionStatus hasCapability:256];
  return v4 & [(MPCPlaybackAccount *)self hasCatalogPlaybackCapability];
}

- (id)copyWithZone:(_NSZone *)zone
{
  delegated = self->_delegated;
  v5 = [MPCPlaybackAccount alloc];
  userIdentity = self->_userIdentity;
  if (delegated)
  {
    v7 = [(MPCPlaybackAccount *)v5 initWithDelegatedUserIdentity:userIdentity];
  }

  else
  {
    v7 = [(MPCPlaybackAccount *)v5 initWithUserIdentity:userIdentity subscriptionStatus:self->_subscriptionStatus];
  }

  v8 = v7;
  v9 = [(NSString *)self->_hashedDSID copy];
  v10 = *(v8 + 32);
  *(v8 + 32) = v9;

  *(v8 + 8) = self->_hasCloudLibraryEnabled;
  v11 = [(NSString *)self->_storeFrontIdentifier copy];
  v12 = *(v8 + 40);
  *(v8 + 40) = v11;

  *(v8 + 9) = self->_activeAccount;
  *(v8 + 10) = self->_fallbackAccount;
  *(v8 + 11) = self->_privateListeningEnabled;
  objc_storeStrong((v8 + 48), self->_bag);
  objc_storeStrong((v8 + 56), self->__whaStreamerStorage);
  return v8;
}

- (id)debugDescription
{
  v12 = MEMORY[0x1E696AEC0];
  hashedDSID = self->_hashedDSID;
  userIdentity = self->_userIdentity;
  if (self->_activeAccount)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (self->_fallbackAccount)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_delegated)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_hasCloudLibraryEnabled)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_privateListeningEnabled)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(MPCPlaybackAccount *)self canAutoPlay])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  return [v12 stringWithFormat:@"<MPCPlaybackAccount:%p hashedDSID=%@ identity=%@ isActiveAccount=%@ isFallbackAccount=%@ isDelegated=%@ cloudLibraryEnabled=%@ privateListeningEnabled=%@ canAutoPlay=%@ storeFront=%@ subscriptionStatus=%@ bag=%@>", self, hashedDSID, userIdentity, v5, v6, v7, v8, v9, v10, self->_storeFrontIdentifier, self->_subscriptionStatus, self->_bag];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_12;
  }

  v5 = equalCopy;
  v6 = v5;
  if (self->_delegated != *(v5 + 12) || self->_activeAccount != *(v5 + 9) || self->_fallbackAccount != *(v5 + 10) || self->_hasCloudLibraryEnabled != *(v5 + 8) || self->_privateListeningEnabled != *(v5 + 11))
  {
    goto LABEL_9;
  }

  v7 = v5[3];
  v8 = self->_subscriptionStatus;
  v9 = v8;
  if (v8 == v7)
  {

LABEL_14:
    userIdentity = self->_userIdentity;
    v14 = v6[2];
    defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
    v16 = userIdentity;
    v17 = v14;
    v18 = defaultIdentityStore;
    v19 = v18;
    if (v16 == v17)
    {
    }

    else
    {
      if (!v16 || !v17)
      {

        v11 = 0;
        goto LABEL_32;
      }

      v20 = [(ICUserIdentity *)v16 isEqualToIdentity:v17 inStore:v18];

      if (!v20)
      {
        goto LABEL_27;
      }
    }

    v21 = v6[4];
    v22 = self->_hashedDSID;
    v23 = v22;
    if (v22 == v21)
    {
    }

    else
    {
      v24 = [(NSString *)v22 isEqual:v21];

      if (!v24)
      {
        goto LABEL_27;
      }
    }

    v25 = v6[5];
    v26 = self->_storeFrontIdentifier;
    v27 = v26;
    if (v26 == v25)
    {
    }

    else
    {
      v28 = [(NSString *)v26 isEqual:v25];

      if (!v28)
      {
LABEL_27:
        v11 = 0;
LABEL_33:

        goto LABEL_10;
      }
    }

    bag = self->_bag;
    v30 = v6[6];
    v31 = bag;
    v16 = v31;
    if (v31 == v30)
    {
      v11 = 1;
    }

    else
    {
      v11 = [(ICURLBag *)v31 isEqual:v30];
    }

LABEL_32:

    goto LABEL_33;
  }

  v10 = [(ICMusicSubscriptionStatus *)v8 isEqual:v7];

  if (v10)
  {
    goto LABEL_14;
  }

LABEL_9:
  v11 = 0;
LABEL_10:

LABEL_12:
  return v11;
}

- (unint64_t)hash
{
  userIdentity = self->_userIdentity;
  defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v4 = [(ICUserIdentity *)userIdentity hashInStore:defaultIdentityStore];

  return v4;
}

- (MPCPlaybackAccount)initWithDelegatedUserIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = MPCPlaybackAccount;
  v6 = [(MPCPlaybackAccount *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userIdentity, identity);
    *&v7->_privateListeningEnabled = 257;
  }

  return v7;
}

- (MPCPlaybackAccount)initWithUserIdentity:(id)identity subscriptionStatus:(id)status
{
  identityCopy = identity;
  statusCopy = status;
  v12.receiver = self;
  v12.super_class = MPCPlaybackAccount;
  v9 = [(MPCPlaybackAccount *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userIdentity, identity);
    objc_storeStrong(&v10->_subscriptionStatus, status);
  }

  return v10;
}

@end