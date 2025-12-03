@interface PKAppleAccountInformation
- (BOOL)aidaAccountAvailable;
- (BOOL)aidaAccountRequiresAuthentication;
- (NSString)authorizationHeader;
- (PKAppleAccountInformation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAppleAccountInformation

- (BOOL)aidaAccountAvailable
{
  aidaAlternateDSID = self->_aidaAlternateDSID;
  if (aidaAlternateDSID)
  {
    if (self->_aidaToken)
    {
      aidaAlternateDSID = [(NSString *)aidaAlternateDSID length];
      if (aidaAlternateDSID)
      {
        LOBYTE(aidaAlternateDSID) = [(NSString *)self->_aidaToken length]!= 0;
      }
    }

    else
    {
      LOBYTE(aidaAlternateDSID) = 0;
    }
  }

  return aidaAlternateDSID;
}

- (NSString)authorizationHeader
{
  authorizationHeader = self->_authorizationHeader;
  if (!authorizationHeader)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AppleToken %@:%@", self->_aidaAlternateDSID, self->_aidaToken];
    v5 = self->_authorizationHeader;
    self->_authorizationHeader = v4;

    authorizationHeader = self->_authorizationHeader;
  }

  return authorizationHeader;
}

- (PKAppleAccountInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = PKAppleAccountInformation;
  v5 = [(PKAppleAccountInformation *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aidaAlternateDSID"];
    aidaAlternateDSID = v5->_aidaAlternateDSID;
    v5->_aidaAlternateDSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aidaToken"];
    aidaToken = v5->_aidaToken;
    v5->_aidaToken = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aaDSID"];
    aaDSID = v5->_aaDSID;
    v5->_aaDSID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aaAlternateDSID"];
    aaAlternateDSID = v5->_aaAlternateDSID;
    v5->_aaAlternateDSID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v14;

    v5->_isSandboxAccount = [coderCopy decodeBoolForKey:@"isSandboxAccount"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"email"];
    primaryEmailAddress = v5->_primaryEmailAddress;
    v5->_primaryEmailAddress = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v22;

    v5->_isManagedAppleAccount = [coderCopy decodeBoolForKey:@"isManagedAppleAccount"];
    v5->_isWalletEnabledOnManagedAppleAccount = [coderCopy decodeBoolForKey:@"isWalletEnabledOnManagedAppleAccount"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ageCategory"];
    if ([@"under13" isEqualToString:v24])
    {
      v25 = 1;
    }

    else if ([@"under18" isEqualToString:v24])
    {
      v25 = 2;
    }

    else if ([@"adult" isEqualToString:v24])
    {
      v25 = 3;
    }

    else if ([@"managedAppleAccount" isEqualToString:v24])
    {
      v25 = 4;
    }

    else
    {
      v25 = 0;
    }

    v5->_ageCategory = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  aidaAlternateDSID = self->_aidaAlternateDSID;
  coderCopy = coder;
  [coderCopy encodeObject:aidaAlternateDSID forKey:@"aidaAlternateDSID"];
  [coderCopy encodeObject:self->_aidaToken forKey:@"aidaToken"];
  [coderCopy encodeObject:self->_aaDSID forKey:@"aaDSID"];
  [coderCopy encodeObject:self->_aaAlternateDSID forKey:@"aaAlternateDSID"];
  [coderCopy encodeObject:self->_appleID forKey:@"appleID"];
  [coderCopy encodeBool:self->_isSandboxAccount forKey:@"isSandboxAccount"];
  [coderCopy encodeObject:self->_firstName forKey:@"firstName"];
  [coderCopy encodeObject:self->_lastName forKey:@"lastName"];
  [coderCopy encodeObject:self->_primaryEmailAddress forKey:@"email"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeBool:self->_isManagedAppleAccount forKey:@"isManagedAppleAccount"];
  [coderCopy encodeBool:self->_isWalletEnabledOnManagedAppleAccount forKey:@"isWalletEnabledOnManagedAppleAccount"];
  v5 = self->_ageCategory - 1;
  if (v5 > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E79D1B60[v5];
  }

  [coderCopy encodeObject:v6 forKey:@"ageCategory"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PKAppleAccountInformation allocWithZone:?]];
  objc_storeStrong(&v4->_aidaAlternateDSID, self->_aidaAlternateDSID);
  objc_storeStrong(&v4->_aidaToken, self->_aidaToken);
  objc_storeStrong(&v4->_aaDSID, self->_aaDSID);
  objc_storeStrong(&v4->_aaAlternateDSID, self->_aaAlternateDSID);
  objc_storeStrong(&v4->_appleID, self->_appleID);
  v4->_isSandboxAccount = self->_isSandboxAccount;
  objc_storeStrong(&v4->_lastName, self->_lastName);
  objc_storeStrong(&v4->_firstName, self->_firstName);
  objc_storeStrong(&v4->_primaryEmailAddress, self->_primaryEmailAddress);
  objc_storeStrong(&v4->_creationDate, self->_creationDate);
  v4->_isManagedAppleAccount = self->_isManagedAppleAccount;
  v4->_isWalletEnabledOnManagedAppleAccount = self->_isWalletEnabledOnManagedAppleAccount;
  v4->_ageCategory = self->_ageCategory;
  return v4;
}

- (BOOL)aidaAccountRequiresAuthentication
{
  aidaAlternateDSID = self->_aidaAlternateDSID;
  if (aidaAlternateDSID)
  {
    v4 = [(NSString *)aidaAlternateDSID length]!= 0;
  }

  else
  {
    v4 = 0;
  }

  aidaToken = self->_aidaToken;
  if (aidaToken)
  {
    v6 = [(NSString *)aidaToken length]== 0;
  }

  else
  {
    v6 = 1;
  }

  return v4 && v6;
}

@end