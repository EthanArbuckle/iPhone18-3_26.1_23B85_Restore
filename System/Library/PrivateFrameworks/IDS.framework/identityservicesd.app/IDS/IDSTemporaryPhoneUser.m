@interface IDSTemporaryPhoneUser
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTemporaryPhoneUser:(id)a3;
- (BOOL)isIdenticalToUser:(id)a3;
- (IDSTemporaryPhoneUser)initWithCoder:(id)a3;
- (IDSTemporaryPhoneUser)initWithPhoneUser:(id)a3;
- (IDSTemporaryPhoneUser)initWithPhoneUser:(id)a3 expirationDate:(id)a4 finishedRegistration:(BOOL)a5;
- (IDSTemporaryPhoneUser)temporaryPhoneUserWithFinishedRegistration;
- (IDSTemporaryPhoneUser)temporaryPhoneUserWithNotifiedSuccess;
- (IDSTemporaryPhoneUser)temporaryPhoneUserWithUpdatedExpirationDate:(id)a3;
- (NSString)countryCode;
- (NSString)description;
- (NSString)labelID;
- (NSString)networkCode;
- (NSString)phoneNumber;
- (id)copyWithZone:(_NSZone *)a3;
- (id)realmPrefixedIdentifier;
- (id)storageIdentifier;
- (id)uniqueIdentifier;
- (id)unprefixedIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSTemporaryPhoneUser

- (IDSTemporaryPhoneUser)initWithPhoneUser:(id)a3
{
  v4 = a3;
  v5 = [NSDate dateWithTimeIntervalSinceNow:300.0];
  v6 = [(IDSTemporaryPhoneUser *)self initWithPhoneUser:v4 expirationDate:v5 finishedRegistration:0];

  return v6;
}

- (IDSTemporaryPhoneUser)initWithPhoneUser:(id)a3 expirationDate:(id)a4 finishedRegistration:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = IDSTemporaryPhoneUser;
  v11 = [(IDSTemporaryPhoneUser *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_phoneUser, a3);
    objc_storeStrong(&v12->_expirationDate, a4);
    v12->_finishedRegistration = a5;
  }

  return v12;
}

- (IDSTemporaryPhoneUser)temporaryPhoneUserWithUpdatedExpirationDate:(id)a3
{
  v4 = a3;
  v5 = [(IDSTemporaryPhoneUser *)self copy];
  [v5 setExpirationDate:v4];

  [v5 setHasBeenProvisioned:1];

  return v5;
}

- (IDSTemporaryPhoneUser)temporaryPhoneUserWithFinishedRegistration
{
  v2 = [(IDSTemporaryPhoneUser *)self copy];
  [v2 setFinishedRegistration:1];

  return v2;
}

- (IDSTemporaryPhoneUser)temporaryPhoneUserWithNotifiedSuccess
{
  v2 = [(IDSTemporaryPhoneUser *)self copy];
  [v2 setHasNotifiedSuccess:1];

  return v2;
}

- (id)uniqueIdentifier
{
  v3 = [(IDSTemporaryPhoneUser *)self phoneNumber];
  v4 = v3;
  v5 = &stru_100C06028;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [(IDSTemporaryPhoneUser *)self phoneUser];
  v8 = [v7 uniqueIdentifier];
  v9 = [@"tp" stringByAppendingString:v8];
  v10 = [v9 stringByAppendingString:v6];

  return v10;
}

- (id)realmPrefixedIdentifier
{
  v2 = [(IDSTemporaryPhoneUser *)self phoneUser];
  v3 = [v2 realmPrefixedIdentifier];

  return v3;
}

- (id)unprefixedIdentifier
{
  v2 = [(IDSTemporaryPhoneUser *)self phoneUser];
  v3 = [v2 unprefixedIdentifier];

  return v3;
}

- (id)storageIdentifier
{
  v2 = [(IDSTemporaryPhoneUser *)self phoneUser];
  v3 = [v2 storageIdentifier];
  v4 = [@"tp" stringByAppendingString:v3];

  return v4;
}

- (NSString)phoneNumber
{
  v3 = [(IDSTemporaryPhoneUser *)self phoneUser];
  v4 = [v3 phoneNumber];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(IDSTemporaryPhoneUser *)self phoneUser];
    v6 = [v7 phoneBookNumber];
  }

  return v6;
}

- (NSString)countryCode
{
  v2 = [(IDSTemporaryPhoneUser *)self phoneUser];
  v3 = [v2 countryCode];

  return v3;
}

- (NSString)networkCode
{
  v2 = [(IDSTemporaryPhoneUser *)self phoneUser];
  v3 = [v2 networkCode];

  return v3;
}

- (NSString)labelID
{
  v2 = [(IDSTemporaryPhoneUser *)self phoneUser];
  v3 = [v2 labelID];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(IDSTemporaryPhoneUser *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSTemporaryPhoneUser *)self isEqualToTemporaryPhoneUser:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToTemporaryPhoneUser:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v6 = [(IDSTemporaryPhoneUser *)v4 uniqueIdentifier];
    v7 = [(IDSTemporaryPhoneUser *)self uniqueIdentifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(IDSTemporaryPhoneUser *)v5 phoneNumber];
      v9 = [(IDSTemporaryPhoneUser *)self phoneNumber];
      v10 = [v8 isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)isIdenticalToUser:(id)a3
{
  v4 = a3;
  if ([(IDSTemporaryPhoneUser *)self isEqualToUser:v4])
  {
    v5 = v4;
    v6 = [v5 expirationDate];
    v7 = [(IDSTemporaryPhoneUser *)self expirationDate];
    if ([v6 isEqualToDate:v7] && (v8 = objc_msgSend(v5, "finishedRegistration"), v8 == -[IDSTemporaryPhoneUser finishedRegistration](self, "finishedRegistration")) && (v9 = objc_msgSend(v5, "hasBeenProvisioned"), v9 == -[IDSTemporaryPhoneUser hasBeenProvisioned](self, "hasBeenProvisioned")))
    {
      v12 = [v5 hasNotifiedSuccess];
      v10 = v12 ^ [(IDSTemporaryPhoneUser *)self hasNotifiedSuccess]^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (IDSTemporaryPhoneUser)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneUser"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"finished"];
  v8 = [v7 BOOLValue];

  v9 = [v4 decodeBoolForKey:@"Provisioned"];
  v10 = [v4 decodeBoolForKey:@"notifiedSuccess"];

  v11 = [(IDSTemporaryPhoneUser *)self initWithPhoneUser:v5 expirationDate:v6 finishedRegistration:v8];
  [(IDSTemporaryPhoneUser *)v11 setHasBeenProvisioned:v9];
  [(IDSTemporaryPhoneUser *)v11 setHasNotifiedSuccess:v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(IDSTemporaryPhoneUser *)self phoneUser];
  [v7 encodeObject:v4 forKey:@"phoneUser"];

  v5 = [(IDSTemporaryPhoneUser *)self expirationDate];
  [v7 encodeObject:v5 forKey:@"expiration"];

  v6 = [NSNumber numberWithBool:[(IDSTemporaryPhoneUser *)self finishedRegistration]];
  [v7 encodeObject:v6 forKey:@"finished"];

  [v7 encodeBool:-[IDSTemporaryPhoneUser hasBeenProvisioned](self forKey:{"hasBeenProvisioned"), @"Provisioned"}];
  [v7 encodeBool:-[IDSTemporaryPhoneUser hasNotifiedSuccess](self forKey:{"hasNotifiedSuccess"), @"notifiedSuccess"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(IDSTemporaryPhoneUser *)self phoneUser];
  v6 = [v5 copy];
  v7 = [(IDSTemporaryPhoneUser *)self expirationDate];
  v8 = [v4 initWithPhoneUser:v6 expirationDate:v7 finishedRegistration:{-[IDSTemporaryPhoneUser finishedRegistration](self, "finishedRegistration")}];

  [v8 setHasNotifiedSuccess:{-[IDSTemporaryPhoneUser hasNotifiedSuccess](self, "hasNotifiedSuccess")}];
  [v8 setHasBeenProvisioned:{-[IDSTemporaryPhoneUser hasBeenProvisioned](self, "hasBeenProvisioned")}];
  return v8;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(IDSTemporaryPhoneUser *)self uniqueIdentifier];
  v5 = [(IDSTemporaryPhoneUser *)self phoneNumber];
  v6 = [(IDSTemporaryPhoneUser *)self expirationDate];
  v7 = [(IDSTemporaryPhoneUser *)self finishedRegistration];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [NSString stringWithFormat:@"<%@:%p> uid: %@, pn: %@, expiration: %@, finished : %@", v3, self, v4, v5, v6, v8];

  return v9;
}

@end