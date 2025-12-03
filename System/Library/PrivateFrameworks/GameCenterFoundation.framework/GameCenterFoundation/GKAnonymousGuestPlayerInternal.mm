@interface GKAnonymousGuestPlayerInternal
+ (id)secureCodedPropertyKeys;
- (GKAnonymousGuestPlayerInternal)initWithHostPlayerInternal:(id)internal guestIdentifier:(id)identifier;
- (id)playerID;
@end

@implementation GKAnonymousGuestPlayerInternal

- (GKAnonymousGuestPlayerInternal)initWithHostPlayerInternal:(id)internal guestIdentifier:(id)identifier
{
  internalCopy = internal;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = GKAnonymousGuestPlayerInternal;
  v9 = [(GKAnonymousGuestPlayerInternal *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_hostPlayerInternal, internal);
    v11 = [identifierCopy copy];
    guestIdentifier = v10->_guestIdentifier;
    v10->_guestIdentifier = v11;

    v13 = MEMORY[0x277CCACA8];
    v14 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings GUEST_DEFAULT_ALIAS_FORMAT];
    alias = [internalCopy alias];
    v16 = [v13 stringWithFormat:v14, alias];
    [(GKPlayerInternal *)v10 setAlias:v16];
  }

  return v10;
}

- (id)playerID
{
  v3 = MEMORY[0x277CCACA8];
  playerID = [(GKPlayerInternal *)self->_hostPlayerInternal playerID];
  v5 = [v3 stringWithFormat:@"%@%@%@", playerID, @"_", self->_guestIdentifier];

  return v5;
}

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__GKAnonymousGuestPlayerInternal_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (secureCodedPropertyKeys_onceToken_740 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_740, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_739;

  return v2;
}

void __57__GKAnonymousGuestPlayerInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___GKAnonymousGuestPlayerInternal;
  v1 = objc_msgSendSuper2(&v7, sel_secureCodedPropertyKeys);
  v2 = [v1 mutableCopy];

  v8[0] = @"guestIdentifier";
  v3 = objc_opt_class();
  v8[1] = @"hostPlayerInternal";
  v9[0] = v3;
  v9[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v2 addEntriesFromDictionary:v4];

  v5 = secureCodedPropertyKeys_sSecureCodedKeys_739;
  secureCodedPropertyKeys_sSecureCodedKeys_739 = v2;

  v6 = *MEMORY[0x277D85DE8];
}

@end