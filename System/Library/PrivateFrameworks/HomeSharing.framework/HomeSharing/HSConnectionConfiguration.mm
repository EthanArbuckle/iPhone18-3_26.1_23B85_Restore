@interface HSConnectionConfiguration
- (HSConnectionConfiguration)init;
- (HSConnectionConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HSConnectionConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HSConnectionConfiguration);
  objc_storeStrong(&v4->_userIdentity, self->_userIdentity);
  objc_storeStrong(&v4->_userIdentityStore, self->_userIdentityStore);
  v5 = [(NSURL *)self->_baseURL copy];
  baseURL = v4->_baseURL;
  v4->_baseURL = v5;

  v7 = [(NSString *)self->_libraryBagKey copy];
  libraryBagKey = v4->_libraryBagKey;
  v4->_libraryBagKey = v7;

  v9 = [(NSString *)self->_buildIdentifier copy];
  buildIdentifier = v4->_buildIdentifier;
  v4->_buildIdentifier = v9;

  v11 = [(NSString *)self->_purchaseClientIdentifier copy];
  purchaseClientIdentifier = v4->_purchaseClientIdentifier;
  v4->_purchaseClientIdentifier = v11;

  v4->_requestReason = self->_requestReason;
  objc_storeStrong(&v4->_familyMemberStoreID, self->_familyMemberStoreID);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  userIdentity = self->_userIdentity;
  userIdentityStore = self->_userIdentityStore;
  coderCopy = coder;
  [coderCopy ic_encodeUserIdentity:userIdentity withStore:userIdentityStore forKey:@"userIdentity"];
  [coderCopy encodeObject:self->_userIdentityStore forKey:@"userIdentityStore"];
  [coderCopy encodeObject:self->_baseURL forKey:@"baseURL"];
  [coderCopy encodeObject:self->_libraryBagKey forKey:@"libraryBagKey"];
  [coderCopy encodeObject:self->_buildIdentifier forKey:@"buildIdentifier"];
  [coderCopy encodeObject:self->_purchaseClientIdentifier forKey:@"purchaseClientIdentifier"];
  [coderCopy encodeInt64:self->_requestReason forKey:@"requestReason"];
  [coderCopy encodeObject:self->_familyMemberStoreID forKey:@"familyMemberStoreID"];
}

- (HSConnectionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = HSConnectionConfiguration;
  v5 = [(HSConnectionConfiguration *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userIdentity"];
    userIdentity = v5->_userIdentity;
    v5->_userIdentity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userIdentityStore"];
    userIdentityStore = v5->_userIdentityStore;
    v5->_userIdentityStore = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    baseURL = v5->_baseURL;
    v5->_baseURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryBagKey"];
    libraryBagKey = v5->_libraryBagKey;
    v5->_libraryBagKey = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buildIdentifier"];
    buildIdentifier = v5->_buildIdentifier;
    v5->_buildIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchaseClientIdentifier"];
    purchaseClientIdentifier = v5->_purchaseClientIdentifier;
    v5->_purchaseClientIdentifier = v16;

    v5->_requestReason = [coderCopy decodeInt64ForKey:@"requestReason"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"familyMemberStoreID"];
    familyMemberStoreID = v5->_familyMemberStoreID;
    v5->_familyMemberStoreID = v18;
  }

  return v5;
}

- (HSConnectionConfiguration)init
{
  v15.receiver = self;
  v15.super_class = HSConnectionConfiguration;
  v2 = [(HSConnectionConfiguration *)&v15 init];
  if (v2)
  {
    activeLockerAccount = [MEMORY[0x277D7FCA0] activeLockerAccount];
    userIdentity = v2->_userIdentity;
    v2->_userIdentity = activeLockerAccount;

    defaultIdentityStore = [MEMORY[0x277D7FCA8] defaultIdentityStore];
    userIdentityStore = v2->_userIdentityStore;
    v2->_userIdentityStore = defaultIdentityStore;

    v7 = MGCopyAnswer();
    if (![(__CFString *)v7 length])
    {

      v7 = @"UNKNOWN";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", @"1.3", v7];
    buildIdentifier = v2->_buildIdentifier;
    v2->_buildIdentifier = v8;

    v10 = MEMORY[0x277CCACA8];
    v11 = HSGetCloudDAAPClientPrefix();
    v12 = [v10 stringWithFormat:@"%@/%@%@", @"1.1", v11, v7];
    purchaseClientIdentifier = v2->_purchaseClientIdentifier;
    v2->_purchaseClientIdentifier = v12;

    v2->_requestReason = 0;
  }

  return v2;
}

@end