@interface IDSAppleUser
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAppleUser:(id)a3;
- (IDSAppleUser)initWithCoder:(id)a3;
- (IDSAppleUser)initWithUserName:(id)a3 DSID:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)realmPrefixedIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSAppleUser

- (IDSAppleUser)initWithUserName:(id)a3 DSID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSAppleUser;
  v9 = [(IDSAppleUser *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userName, a3);
    objc_storeStrong(&v10->_DSID, a4);
  }

  return v10;
}

- (id)realmPrefixedIdentifier
{
  v3 = [(IDSAppleUser *)self unprefixedIdentifier];
  if (v3)
  {
    v4 = [(IDSAppleUser *)self unprefixedIdentifier];
    v5 = [NSString stringWithFormat:@"%@%@", @"D:", v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(IDSAppleUser *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSAppleUser *)self isEqualToAppleUser:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToAppleUser:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = [(IDSAppleUser *)v4 uniqueIdentifier];
    v7 = [(IDSAppleUser *)self uniqueIdentifier];
    if (![v6 isEqualToString:v7])
    {
      v12 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v8 = [(IDSAppleUser *)v5 userName];
    v9 = [(IDSAppleUser *)self userName];
    if (v8 == v9)
    {
      [(IDSAppleUser *)v5 DSID:v19];
    }

    else
    {
      v10 = [(IDSAppleUser *)v5 userName];
      v11 = [(IDSAppleUser *)self userName];
      if (![v10 isEqual:v11])
      {
        v12 = 0;
LABEL_14:

LABEL_15:
        goto LABEL_16;
      }

      [(IDSAppleUser *)v5 DSID:v11];
    }
    v13 = ;
    v14 = [(IDSAppleUser *)self DSID];
    v15 = v14;
    if (v13 == v14)
    {

      v12 = 1;
    }

    else
    {
      v16 = [(IDSAppleUser *)v5 DSID];
      v17 = [(IDSAppleUser *)self DSID];
      v12 = [v16 isEqual:v17];
    }

    v11 = v20;
    v10 = v22;
    if (v8 == v9)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v12 = 1;
LABEL_17:

  return v12;
}

- (IDSAppleUser)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"username"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];

  v7 = [(IDSAppleUser *)self initWithUserName:v5 DSID:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  userName = self->_userName;
  v5 = a3;
  [v5 encodeObject:userName forKey:@"username"];
  [v5 encodeObject:self->_DSID forKey:@"dsid"];
}

- (id)copyWithZone:(_NSZone *)a3
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
  v4 = [(IDSAppleUser *)self uniqueIdentifier];
  v5 = [(IDSAppleUser *)self realmPrefixedIdentifier];
  v6 = [NSString stringWithFormat:@"<%@:%p> uid: %@ rpi: %@", v3, self, v4, v5];

  return v6;
}

@end