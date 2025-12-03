@interface PKFeatureApplicationInvitationDetails
- (BOOL)isEqual:(id)equal;
- (NSPersonNameComponents)accountUserNameComponents;
- (NSPersonNameComponents)originatorNameComponents;
- (PKFeatureApplicationInvitationDetails)initWithAccountUserAltDSID:(id)d accessLevel:(unint64_t)level;
- (PKFeatureApplicationInvitationDetails)initWithCoder:(id)coder;
- (PKFeatureApplicationInvitationDetails)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)jsonRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFeatureApplicationInvitationDetails

- (PKFeatureApplicationInvitationDetails)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = PKFeatureApplicationInvitationDetails;
  v5 = [(PKFeatureApplicationInvitationDetails *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"accountUserAltDSID"];
    accountUserAltDSID = v5->_accountUserAltDSID;
    v5->_accountUserAltDSID = v6;

    v8 = [dictionaryCopy PKStringForKey:@"originatorAltDSID"];
    originatorAltDSID = v5->_originatorAltDSID;
    v5->_originatorAltDSID = v8;

    v10 = [dictionaryCopy PKStringForKey:@"accountUserAccessLevel"];
    v5->_accountUserAccessLevel = PKAccountAccessLevelFromString(v10);

    v11 = [dictionaryCopy PKStringForKey:@"originatorFirstName"];
    originatorFirstName = v5->_originatorFirstName;
    v5->_originatorFirstName = v11;

    v13 = [dictionaryCopy PKStringForKey:@"originatorLastName"];
    originatorLastName = v5->_originatorLastName;
    v5->_originatorLastName = v13;

    v15 = [dictionaryCopy PKStringForKey:@"accountUserFirstName"];
    accountUserFirstName = v5->_accountUserFirstName;
    v5->_accountUserFirstName = v15;

    v17 = [dictionaryCopy PKStringForKey:@"accountUserLastName"];
    accountUserLastName = v5->_accountUserLastName;
    v5->_accountUserLastName = v17;
  }

  return v5;
}

- (PKFeatureApplicationInvitationDetails)initWithAccountUserAltDSID:(id)d accessLevel:(unint64_t)level
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = PKFeatureApplicationInvitationDetails;
  v7 = [(PKFeatureApplicationInvitationDetails *)&v11 init];
  if (v7)
  {
    v8 = [dCopy copy];
    accountUserAltDSID = v7->_accountUserAltDSID;
    v7->_accountUserAltDSID = v8;

    v7->_accountUserAccessLevel = level;
  }

  return v7;
}

- (id)jsonRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_accountUserAltDSID forKeyedSubscript:@"accountUserAltDSID"];
  [v3 setObject:self->_originatorAltDSID forKeyedSubscript:@"originatorAltDSID"];
  accountUserAccessLevel = self->_accountUserAccessLevel;
  if (accountUserAccessLevel)
  {
    v5 = PKAccountAccessLevelToString(accountUserAccessLevel);
    [v3 setObject:v5 forKeyedSubscript:@"accountUserAccessLevel"];
  }

  [v3 setObject:self->_originatorFirstName forKeyedSubscript:@"originatorFirstName"];
  [v3 setObject:self->_originatorLastName forKeyedSubscript:@"originatorLastName"];
  [v3 setObject:self->_accountUserFirstName forKeyedSubscript:@"accountUserFirstName"];
  [v3 setObject:self->_accountUserLastName forKeyedSubscript:@"accountUserLastName"];
  v6 = [v3 copy];

  return v6;
}

- (NSPersonNameComponents)originatorNameComponents
{
  if (self->_accountUserFirstName && self->_accountUserLastName)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    [v3 setGivenName:self->_originatorFirstName];
    [v3 setFamilyName:self->_originatorLastName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSPersonNameComponents)accountUserNameComponents
{
  if (self->_accountUserFirstName && self->_accountUserLastName)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    [v3 setGivenName:self->_accountUserFirstName];
    [v3 setFamilyName:self->_accountUserLastName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        accountUserAltDSID = v6->_accountUserAltDSID;
        v8 = self->_accountUserAltDSID;
        v9 = accountUserAltDSID;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          LOBYTE(v11) = 0;
          if (!v8 || !v9)
          {
            goto LABEL_43;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_44;
          }
        }

        originatorAltDSID = v6->_originatorAltDSID;
        v8 = self->_originatorAltDSID;
        v13 = originatorAltDSID;
        v10 = v13;
        if (v8 == v13)
        {
        }

        else
        {
          LOBYTE(v11) = 0;
          if (!v8 || !v13)
          {
            goto LABEL_43;
          }

          v11 = [(NSString *)v8 isEqualToString:v13];

          if (!v11)
          {
            goto LABEL_44;
          }
        }

        if (self->_accountUserAccessLevel != v6->_accountUserAccessLevel)
        {
          LOBYTE(v11) = 0;
LABEL_44:

          goto LABEL_45;
        }

        originatorFirstName = v6->_originatorFirstName;
        v8 = self->_originatorFirstName;
        v15 = originatorFirstName;
        v10 = v15;
        if (v8 == v15)
        {
        }

        else
        {
          LOBYTE(v11) = 0;
          if (!v8 || !v15)
          {
            goto LABEL_43;
          }

          v11 = [(NSString *)v8 isEqualToString:v15];

          if (!v11)
          {
            goto LABEL_44;
          }
        }

        originatorLastName = v6->_originatorLastName;
        v8 = self->_originatorLastName;
        v17 = originatorLastName;
        v10 = v17;
        if (v8 == v17)
        {
        }

        else
        {
          LOBYTE(v11) = 0;
          if (!v8 || !v17)
          {
            goto LABEL_43;
          }

          v11 = [(NSString *)v8 isEqualToString:v17];

          if (!v11)
          {
            goto LABEL_44;
          }
        }

        accountUserFirstName = v6->_accountUserFirstName;
        v8 = self->_accountUserFirstName;
        v19 = accountUserFirstName;
        v10 = v19;
        if (v8 == v19)
        {

LABEL_38:
          accountUserLastName = self->_accountUserLastName;
          v21 = v6->_accountUserLastName;
          v8 = accountUserLastName;
          v22 = v21;
          v10 = v22;
          if (v8 == v22)
          {
            LOBYTE(v11) = 1;
          }

          else
          {
            LOBYTE(v11) = 0;
            if (v8 && v22)
            {
              LOBYTE(v11) = [(NSString *)v8 isEqualToString:v22];
            }
          }

          goto LABEL_43;
        }

        LOBYTE(v11) = 0;
        if (v8 && v19)
        {
          v11 = [(NSString *)v8 isEqualToString:v19];

          if (!v11)
          {
            goto LABEL_44;
          }

          goto LABEL_38;
        }

LABEL_43:

        goto LABEL_44;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_45:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_accountUserAltDSID];
  [v3 safelyAddObject:self->_originatorAltDSID];
  [v3 safelyAddObject:self->_originatorFirstName];
  [v3 safelyAddObject:self->_originatorLastName];
  [v3 safelyAddObject:self->_accountUserFirstName];
  [v3 safelyAddObject:self->_accountUserLastName];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_accountUserAccessLevel - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"accountUserAltDSID: '%@'; ", self->_accountUserAltDSID];
  [v3 appendFormat:@"originatorAltDSID: '%@'; ", self->_originatorAltDSID];
  v4 = PKAccountAccessLevelToString(self->_accountUserAccessLevel);
  [v3 appendFormat:@"accountUserAccessLevel: '%@'; ", v4];

  [v3 appendFormat:@"originatorFirstName: '%@'; ", self->_originatorFirstName];
  [v3 appendFormat:@"originatorLastName: '%@'; ", self->_originatorLastName];
  [v3 appendFormat:@"accountUserFirstName: '%@'; ", self->_accountUserFirstName];
  [v3 appendFormat:@"accountUserLastName: '%@'; ", self->_accountUserLastName];

  return v3;
}

- (PKFeatureApplicationInvitationDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKFeatureApplicationInvitationDetails;
  v5 = [(PKFeatureApplicationInvitationDetails *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountUserAltDSID"];
    accountUserAltDSID = v5->_accountUserAltDSID;
    v5->_accountUserAltDSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatorAltDSID"];
    originatorAltDSID = v5->_originatorAltDSID;
    v5->_originatorAltDSID = v8;

    v5->_accountUserAccessLevel = [coderCopy decodeIntegerForKey:@"accountUserAccessLevel"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatorFirstName"];
    originatorFirstName = v5->_originatorFirstName;
    v5->_originatorFirstName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatorLastName"];
    originatorLastName = v5->_originatorLastName;
    v5->_originatorLastName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountUserFirstName"];
    accountUserFirstName = v5->_accountUserFirstName;
    v5->_accountUserFirstName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountUserLastName"];
    accountUserLastName = v5->_accountUserLastName;
    v5->_accountUserLastName = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  accountUserAltDSID = self->_accountUserAltDSID;
  coderCopy = coder;
  [coderCopy encodeObject:accountUserAltDSID forKey:@"accountUserAltDSID"];
  [coderCopy encodeObject:self->_originatorAltDSID forKey:@"originatorAltDSID"];
  [coderCopy encodeInteger:self->_accountUserAccessLevel forKey:@"accountUserAccessLevel"];
  [coderCopy encodeObject:self->_originatorFirstName forKey:@"originatorFirstName"];
  [coderCopy encodeObject:self->_originatorLastName forKey:@"originatorLastName"];
  [coderCopy encodeObject:self->_accountUserFirstName forKey:@"accountUserFirstName"];
  [coderCopy encodeObject:self->_accountUserLastName forKey:@"accountUserLastName"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKFeatureApplicationInvitationDetails allocWithZone:](PKFeatureApplicationInvitationDetails init];
  v6 = [(NSString *)self->_accountUserAltDSID copyWithZone:zone];
  accountUserAltDSID = v5->_accountUserAltDSID;
  v5->_accountUserAltDSID = v6;

  v8 = [(NSString *)self->_originatorAltDSID copyWithZone:zone];
  originatorAltDSID = v5->_originatorAltDSID;
  v5->_originatorAltDSID = v8;

  v5->_accountUserAccessLevel = self->_accountUserAccessLevel;
  v10 = [(NSString *)self->_originatorFirstName copyWithZone:zone];
  originatorFirstName = v5->_originatorFirstName;
  v5->_originatorFirstName = v10;

  v12 = [(NSString *)self->_originatorLastName copyWithZone:zone];
  originatorLastName = v5->_originatorLastName;
  v5->_originatorLastName = v12;

  v14 = [(NSString *)self->_accountUserFirstName copyWithZone:zone];
  accountUserFirstName = v5->_accountUserFirstName;
  v5->_accountUserFirstName = v14;

  v16 = [(NSString *)self->_accountUserLastName copyWithZone:zone];
  accountUserLastName = v5->_accountUserLastName;
  v5->_accountUserLastName = v16;

  return v5;
}

@end