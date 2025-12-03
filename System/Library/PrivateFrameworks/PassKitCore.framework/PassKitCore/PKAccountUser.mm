@interface PKAccountUser
+ (BOOL)currentUser:(id)user canShareZone:(id)zone withAccountUser:(id)accountUser;
+ (BOOL)currentUser:(id)user shouldRequestZoneShareForZone:(id)zone;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccountUser:(id)user;
- (BOOL)supportsMonthlySpendLimit;
- (BOOL)supportsPhysicalCardActivation;
- (BOOL)supportsRequestPhysicalCard;
- (NSPersonNameComponents)nameComponents;
- (PKAccountUser)initWithCoder:(id)coder;
- (PKAccountUser)initWithDictionary:(id)dictionary;
- (id)_featureWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountUser

- (PKAccountUser)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v39.receiver = self;
  v39.super_class = PKAccountUser;
  v5 = [(PKAccountUser *)&v39 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"accessLevel"];
    v5->_accessLevel = PKAccountAccessLevelFromString(v6);

    v7 = [dictionaryCopy PKStringForKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v7;

    v9 = [dictionaryCopy PKStringForKey:@"state"];
    v5->_accountState = PKAccountStateFromString(v9);

    v10 = [dictionaryCopy PKStringForKey:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v10;

    v12 = [dictionaryCopy PKStringForKey:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v12;

    v14 = [dictionaryCopy PKStringForKey:@"appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v14;

    v16 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"addressableHandles"];
    addressableHandles = v5->_addressableHandles;
    v5->_addressableHandles = v16;

    v18 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"supportedFeatures"];
    v19 = [v18 pk_setByApplyingBlock:&__block_literal_global_93];
    supportedFeatures = v5->_supportedFeatures;
    v5->_supportedFeatures = v19;

    v21 = [PKAccountUserPreferences alloc];
    v22 = [dictionaryCopy PKDictionaryForKey:@"preferences"];
    v23 = [(PKAccountUserPreferences *)v21 initWithDictionary:v22];
    preferences = v5->_preferences;
    v5->_preferences = v23;

    v25 = [dictionaryCopy PKStringForKey:@"identityStatus"];
    v26 = v25;
    if (v25 != @"verified")
    {
      if (v25)
      {
        v27 = [(__CFString *)v25 isEqualToString:@"verified"];

        if (v27)
        {
          goto LABEL_5;
        }

        v29 = v26;
        if (v29 == @"notVerified" || (v30 = v29, v31 = [(__CFString *)v29 isEqualToString:@"notVerified"], v30, (v31 & 1) != 0))
        {
          v28 = 2;
          goto LABEL_16;
        }

        v32 = v30;
        if (v32 == @"verificationPending" || (v33 = v32, v34 = [(__CFString *)v32 isEqualToString:@"verificationPending"], v33, (v34 & 1) != 0))
        {
          v28 = 3;
          goto LABEL_16;
        }

        v35 = v33;
        if (v35 == @"notEligible" || (v36 = v35, v37 = [(__CFString *)v35 isEqualToString:@"notEligible"], v36, v37))
        {
          v28 = 4;
          goto LABEL_16;
        }
      }

      v28 = 0;
      goto LABEL_16;
    }

LABEL_5:
    v28 = 1;
LABEL_16:

    v5->_identityStatus = v28;
  }

  return v5;
}

PKCreditAccountFeatureDescriptor *__36__PKAccountUser_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKCreditAccountFeatureDescriptor alloc] initWithDictionary:v2];

  return v3;
}

- (NSPersonNameComponents)nameComponents
{
  if (self->_firstName && self->_lastName)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    [v3 setGivenName:self->_firstName];
    [v3 setFamilyName:self->_lastName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)currentUser:(id)user canShareZone:(id)zone withAccountUser:(id)accountUser
{
  userCopy = user;
  zoneCopy = zone;
  accountUserCopy = accountUser;
  if ([userCopy accountState] == 4 || !objc_msgSend(userCopy, "accountState") || objc_msgSend(accountUserCopy, "accountState") == 4 || !objc_msgSend(accountUserCopy, "accountState"))
  {
    goto LABEL_29;
  }

  accountIdentifier = [zoneCopy accountIdentifier];
  accountIdentifier2 = [accountUserCopy accountIdentifier];
  v12 = accountIdentifier;
  v13 = accountIdentifier2;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if (!v12 || !v13)
    {
      goto LABEL_28;
    }

    v15 = [v12 isEqualToString:v13];

    if ((v15 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  accountIdentifier3 = [userCopy accountIdentifier];
  accountIdentifier4 = [accountUserCopy accountIdentifier];
  v12 = accountIdentifier3;
  v18 = accountIdentifier4;
  v14 = v18;
  if (v12 == v18)
  {
  }

  else
  {
    if (!v12 || !v18)
    {
      goto LABEL_28;
    }

    v19 = [v12 isEqualToString:v18];

    if ((v19 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  accountIdentifier5 = [zoneCopy accountIdentifier];
  accountIdentifier6 = [userCopy accountIdentifier];
  v12 = accountIdentifier5;
  v22 = accountIdentifier6;
  v14 = v22;
  if (v12 == v22)
  {
  }

  else
  {
    if (!v12 || !v22)
    {
      goto LABEL_28;
    }

    v23 = [v12 isEqualToString:v22];

    if ((v23 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  originatorAltDSID = [zoneCopy originatorAltDSID];
  altDSID = [userCopy altDSID];
  v12 = originatorAltDSID;
  v26 = altDSID;
  v14 = v26;
  if (v12 != v26)
  {
    if (v12 && v26)
    {
      v27 = [v12 isEqualToString:v26];

      if ((v27 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }

LABEL_28:

    goto LABEL_29;
  }

LABEL_32:
  sharedUsersAltDSIDs = [zoneCopy sharedUsersAltDSIDs];
  altDSID2 = [accountUserCopy altDSID];
  v32 = [sharedUsersAltDSIDs containsObject:altDSID2];

  if (v32)
  {
    v28 = [zoneCopy access] == 1;
    goto LABEL_30;
  }

LABEL_29:
  v28 = 0;
LABEL_30:

  return v28;
}

+ (BOOL)currentUser:(id)user shouldRequestZoneShareForZone:(id)zone
{
  userCopy = user;
  zoneCopy = zone;
  if ([userCopy accountState] == 4 || !objc_msgSend(userCopy, "accountState"))
  {
    goto LABEL_13;
  }

  accountIdentifier = [zoneCopy accountIdentifier];
  accountIdentifier2 = [userCopy accountIdentifier];
  v9 = accountIdentifier;
  v10 = accountIdentifier2;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if (!v9 || !v10)
    {

      goto LABEL_13;
    }

    v12 = [v9 isEqualToString:v10];

    if ((v12 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if ([zoneCopy access] != 2)
  {
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v17 = 0;
  zoneName = [zoneCopy zoneName];
  v16 = 0;
  [PKCloudStoreZone zoneValueForZoneName:zoneName outZoneType:&v17 outAccountIdentifier:&v16 altDSID:0];

  if ((v17 - 5) >= 2)
  {
    if (v17 == 4)
    {
      v14 = [userCopy accessLevel] == 1;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v14 = ([userCopy accessLevel] - 1) < 2;
LABEL_14:

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountUser *)self isEqualToAccountUser:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountUser:(id)user
{
  userCopy = user;
  v5 = userCopy;
  if (!userCopy || self->_accessLevel != *(userCopy + 2))
  {
    goto LABEL_48;
  }

  altDSID = self->_altDSID;
  v7 = *(v5 + 3);
  if (altDSID && v7)
  {
    if (([(NSString *)altDSID isEqual:?]& 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (altDSID != v7)
  {
    goto LABEL_48;
  }

  if (self->_accountState != *(v5 + 4) || self->_currentUser != v5[8] || self->_identityStatus != *(v5 + 9))
  {
    goto LABEL_48;
  }

  firstName = self->_firstName;
  v9 = *(v5 + 14);
  if (firstName && v9)
  {
    if (([(NSString *)firstName isEqual:?]& 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (firstName != v9)
  {
    goto LABEL_48;
  }

  lastName = self->_lastName;
  v11 = *(v5 + 15);
  if (lastName && v11)
  {
    if (([(NSString *)lastName isEqual:?]& 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (lastName != v11)
  {
    goto LABEL_48;
  }

  appleID = self->_appleID;
  v13 = *(v5 + 5);
  if (appleID && v13)
  {
    if (([(NSString *)appleID isEqual:?]& 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (appleID != v13)
  {
    goto LABEL_48;
  }

  addressableHandles = self->_addressableHandles;
  v15 = *(v5 + 6);
  if (addressableHandles && v15)
  {
    if (([(NSSet *)addressableHandles isEqual:?]& 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (addressableHandles != v15)
  {
    goto LABEL_48;
  }

  supportedFeatures = self->_supportedFeatures;
  v17 = *(v5 + 7);
  if (supportedFeatures && v17)
  {
    if (([(NSSet *)supportedFeatures isEqual:?]& 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (supportedFeatures != v17)
  {
    goto LABEL_48;
  }

  transactionSourceIdentifiers = self->_transactionSourceIdentifiers;
  v19 = *(v5 + 11);
  if (transactionSourceIdentifiers && v19)
  {
    if (([(NSSet *)transactionSourceIdentifiers isEqual:?]& 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (transactionSourceIdentifiers != v19)
  {
    goto LABEL_48;
  }

  accountIdentifier = self->_accountIdentifier;
  v21 = *(v5 + 12);
  if (!accountIdentifier || !v21)
  {
    if (accountIdentifier == v21)
    {
      goto LABEL_44;
    }

LABEL_48:
    v24 = 0;
    goto LABEL_49;
  }

  if (([(NSString *)accountIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_44:
  preferences = self->_preferences;
  v23 = *(v5 + 8);
  if (preferences && v23)
  {
    v24 = [(PKAccountUserPreferences *)preferences isEqual:?];
  }

  else
  {
    v24 = preferences == v23;
  }

LABEL_49:

  return v24;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_altDSID];
  [v3 safelyAddObject:self->_firstName];
  [v3 safelyAddObject:self->_lastName];
  [v3 safelyAddObject:self->_supportedFeatures];
  [v3 safelyAddObject:self->_transactionSourceIdentifiers];
  [v3 safelyAddObject:self->_accountIdentifier];
  [v3 safelyAddObject:self->_addressableHandles];
  [v3 safelyAddObject:self->_appleID];
  [v3 safelyAddObject:self->_preferences];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_accessLevel - v4 + 32 * v4;
  v6 = self->_accountState - v5 + 32 * v5;
  v7 = self->_currentUser - v6 + 32 * v6;
  v8 = self->_identityStatus - v7 + 32 * v7;

  return v8;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"altDSID: '%@'; ", self->_altDSID];
  if (self->_currentUser)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"isCurrentUser: '%@'; ", v4];
  v5 = PKAccountAccessLevelToString(self->_accessLevel);
  [v3 appendFormat:@"accessLevel: '%@'; ", v5];

  v6 = PKAccountStateToString(self->_accountState);
  [v3 appendFormat:@"state: '%@'; ", v6];

  [v3 appendFormat:@"firstName: '%@'; ", self->_firstName];
  [v3 appendFormat:@"lastName: '%@'; ", self->_lastName];
  [v3 appendFormat:@"appleID: '%@'; ", self->_appleID];
  identityStatus = self->_identityStatus;
  if (identityStatus > 4)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E79D24E8[identityStatus];
  }

  [v3 appendFormat:@"identityStatus: '%@'; ", v8];
  [v3 appendFormat:@"supportedFeatures: '%@'; ", self->_supportedFeatures];
  [v3 appendFormat:@"accountIdentifier: '%@'; ", self->_accountIdentifier];
  [v3 appendFormat:@"transactionSourceIdentifiers: '%@'; ", self->_transactionSourceIdentifiers];
  [v3 appendFormat:@"preferences: '%@'; ", self->_preferences];
  [v3 appendFormat:@"addressableHandles: '%@'; ", self->_addressableHandles];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKAccountUser)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = PKAccountUser;
  v5 = [(PKAccountUser *)&v36 init];
  if (v5)
  {
    v5->_accessLevel = [coderCopy decodeIntegerForKey:@"accessLevel"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v5->_accountState = [coderCopy decodeIntegerForKey:@"state"];
    v5->_currentUser = [coderCopy decodeIntegerForKey:@"currentUser"] != 0;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"supportedFeatures"];
    supportedFeatures = v5->_supportedFeatures;
    v5->_supportedFeatures = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"transactionSourceIdentifier"];
    transactionSourceIdentifiers = v5->_transactionSourceIdentifiers;
    v5->_transactionSourceIdentifiers = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"addressableHandles"];
    addressableHandles = v5->_addressableHandles;
    v5->_addressableHandles = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferences"];
    preferences = v5->_preferences;
    v5->_preferences = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notificationSettings"];
    notificationSettings = v5->_notificationSettings;
    v5->_notificationSettings = v33;

    v5->_identityStatus = [coderCopy decodeIntegerForKey:@"identityStatus"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  accessLevel = self->_accessLevel;
  coderCopy = coder;
  [coderCopy encodeInteger:accessLevel forKey:@"accessLevel"];
  [coderCopy encodeObject:self->_altDSID forKey:@"altDSID"];
  [coderCopy encodeInteger:self->_accountState forKey:@"state"];
  [coderCopy encodeInteger:self->_currentUser forKey:@"currentUser"];
  [coderCopy encodeObject:self->_firstName forKey:@"firstName"];
  [coderCopy encodeObject:self->_lastName forKey:@"lastName"];
  [coderCopy encodeObject:self->_supportedFeatures forKey:@"supportedFeatures"];
  [coderCopy encodeObject:self->_transactionSourceIdentifiers forKey:@"transactionSourceIdentifier"];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeObject:self->_appleID forKey:@"appleID"];
  [coderCopy encodeObject:self->_addressableHandles forKey:@"addressableHandles"];
  [coderCopy encodeObject:self->_preferences forKey:@"preferences"];
  [coderCopy encodeObject:self->_notificationSettings forKey:@"notificationSettings"];
  [coderCopy encodeInteger:self->_identityStatus forKey:@"identityStatus"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKAccountUser allocWithZone:](PKAccountUser init];
  v5->_accessLevel = self->_accessLevel;
  v6 = [(NSString *)self->_altDSID copyWithZone:zone];
  altDSID = v5->_altDSID;
  v5->_altDSID = v6;

  v5->_accountState = self->_accountState;
  v5->_currentUser = self->_currentUser;
  v5->_identityStatus = self->_identityStatus;
  v8 = [(NSString *)self->_firstName copyWithZone:zone];
  firstName = v5->_firstName;
  v5->_firstName = v8;

  v10 = [(NSString *)self->_lastName copyWithZone:zone];
  lastName = v5->_lastName;
  v5->_lastName = v10;

  v12 = [(NSSet *)self->_supportedFeatures copyWithZone:zone];
  supportedFeatures = v5->_supportedFeatures;
  v5->_supportedFeatures = v12;

  v14 = [(NSSet *)self->_transactionSourceIdentifiers copyWithZone:zone];
  transactionSourceIdentifiers = v5->_transactionSourceIdentifiers;
  v5->_transactionSourceIdentifiers = v14;

  v16 = [(NSString *)self->_accountIdentifier copyWithZone:zone];
  accountIdentifier = v5->_accountIdentifier;
  v5->_accountIdentifier = v16;

  v18 = [(NSString *)self->_appleID copyWithZone:zone];
  appleID = v5->_appleID;
  v5->_appleID = v18;

  v20 = [(NSSet *)self->_addressableHandles copyWithZone:zone];
  addressableHandles = v5->_addressableHandles;
  v5->_addressableHandles = v20;

  v22 = [(PKAccountUserPreferences *)self->_preferences copyWithZone:zone];
  preferences = v5->_preferences;
  v5->_preferences = v22;

  return v5;
}

- (BOOL)supportsRequestPhysicalCard
{
  requestPhysicalCardFeatureDescriptor = [(PKAccountUser *)self requestPhysicalCardFeatureDescriptor];
  v3 = requestPhysicalCardFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsMonthlySpendLimit
{
  monthlySpendLimitFeatureDescriptor = [(PKAccountUser *)self monthlySpendLimitFeatureDescriptor];
  v3 = monthlySpendLimitFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsPhysicalCardActivation
{
  physicalCardActivationFeatureDescriptor = [(PKAccountUser *)self physicalCardActivationFeatureDescriptor];
  v3 = physicalCardActivationFeatureDescriptor != 0;

  return v3;
}

- (id)_featureWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  supportedFeatures = [(PKAccountUser *)self supportedFeatures];
  v6 = [supportedFeatures countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(supportedFeatures);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [supportedFeatures countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end