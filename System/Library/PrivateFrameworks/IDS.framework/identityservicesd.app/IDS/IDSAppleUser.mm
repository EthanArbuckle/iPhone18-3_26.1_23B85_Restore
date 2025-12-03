@interface IDSAppleUser
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAppleUser:(id)user;
- (IDSAppleUser)initWithCoder:(id)coder;
- (IDSAppleUser)initWithUserName:(id)name DSID:(id)d;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)realmPrefixedIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSAppleUser

- (IDSAppleUser)initWithUserName:(id)name DSID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = IDSAppleUser;
  v9 = [(IDSAppleUser *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userName, name);
    objc_storeStrong(&v10->_DSID, d);
  }

  return v10;
}

- (id)realmPrefixedIdentifier
{
  unprefixedIdentifier = [(IDSAppleUser *)self unprefixedIdentifier];
  if (unprefixedIdentifier)
  {
    unprefixedIdentifier2 = [(IDSAppleUser *)self unprefixedIdentifier];
    v5 = [NSString stringWithFormat:@"%@%@", @"D:", unprefixedIdentifier2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  uniqueIdentifier = [(IDSAppleUser *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSAppleUser *)self isEqualToAppleUser:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToAppleUser:(id)user
{
  userCopy = user;
  v5 = userCopy;
  if (self != userCopy)
  {
    uniqueIdentifier = [(IDSAppleUser *)userCopy uniqueIdentifier];
    uniqueIdentifier2 = [(IDSAppleUser *)self uniqueIdentifier];
    if (![uniqueIdentifier isEqualToString:uniqueIdentifier2])
    {
      v12 = 0;
LABEL_16:

      goto LABEL_17;
    }

    userName = [(IDSAppleUser *)v5 userName];
    userName2 = [(IDSAppleUser *)self userName];
    if (userName == userName2)
    {
      [(IDSAppleUser *)v5 DSID:v19];
    }

    else
    {
      userName3 = [(IDSAppleUser *)v5 userName];
      userName4 = [(IDSAppleUser *)self userName];
      if (![userName3 isEqual:userName4])
      {
        v12 = 0;
LABEL_14:

LABEL_15:
        goto LABEL_16;
      }

      [(IDSAppleUser *)v5 DSID:userName4];
    }
    v13 = ;
    dSID = [(IDSAppleUser *)self DSID];
    v15 = dSID;
    if (v13 == dSID)
    {

      v12 = 1;
    }

    else
    {
      dSID2 = [(IDSAppleUser *)v5 DSID];
      dSID3 = [(IDSAppleUser *)self DSID];
      v12 = [dSID2 isEqual:dSID3];
    }

    userName4 = v20;
    userName3 = v22;
    if (userName == userName2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v12 = 1;
LABEL_17:

  return v12;
}

- (IDSAppleUser)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"username"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];

  v7 = [(IDSAppleUser *)self initWithUserName:v5 DSID:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  userName = self->_userName;
  coderCopy = coder;
  [coderCopy encodeObject:userName forKey:@"username"];
  [coderCopy encodeObject:self->_DSID forKey:@"dsid"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IDSAppleUser alloc];
  v5 = [(NSString *)self->_userName copy];
  v6 = [(NSString *)self->_DSID copy];
  v7 = [(IDSAppleUser *)v4 initWithUserName:v5 DSID:v6];

  return v7;
}

- (NSString)description
{
  v3 = objc_opt_class();
  uniqueIdentifier = [(IDSAppleUser *)self uniqueIdentifier];
  realmPrefixedIdentifier = [(IDSAppleUser *)self realmPrefixedIdentifier];
  v6 = [NSString stringWithFormat:@"<%@:%p> uid: %@ rpi: %@", v3, self, uniqueIdentifier, realmPrefixedIdentifier];

  return v6;
}

@end