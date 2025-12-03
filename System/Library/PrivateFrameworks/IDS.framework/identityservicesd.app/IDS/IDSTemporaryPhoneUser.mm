@interface IDSTemporaryPhoneUser
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTemporaryPhoneUser:(id)user;
- (BOOL)isIdenticalToUser:(id)user;
- (IDSTemporaryPhoneUser)initWithCoder:(id)coder;
- (IDSTemporaryPhoneUser)initWithPhoneUser:(id)user;
- (IDSTemporaryPhoneUser)initWithPhoneUser:(id)user expirationDate:(id)date finishedRegistration:(BOOL)registration;
- (IDSTemporaryPhoneUser)temporaryPhoneUserWithFinishedRegistration;
- (IDSTemporaryPhoneUser)temporaryPhoneUserWithNotifiedSuccess;
- (IDSTemporaryPhoneUser)temporaryPhoneUserWithUpdatedExpirationDate:(id)date;
- (NSString)countryCode;
- (NSString)description;
- (NSString)labelID;
- (NSString)networkCode;
- (NSString)phoneNumber;
- (id)copyWithZone:(_NSZone *)zone;
- (id)realmPrefixedIdentifier;
- (id)storageIdentifier;
- (id)uniqueIdentifier;
- (id)unprefixedIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSTemporaryPhoneUser

- (IDSTemporaryPhoneUser)initWithPhoneUser:(id)user
{
  userCopy = user;
  v5 = [NSDate dateWithTimeIntervalSinceNow:300.0];
  v6 = [(IDSTemporaryPhoneUser *)self initWithPhoneUser:userCopy expirationDate:v5 finishedRegistration:0];

  return v6;
}

- (IDSTemporaryPhoneUser)initWithPhoneUser:(id)user expirationDate:(id)date finishedRegistration:(BOOL)registration
{
  userCopy = user;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = IDSTemporaryPhoneUser;
  v11 = [(IDSTemporaryPhoneUser *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_phoneUser, user);
    objc_storeStrong(&v12->_expirationDate, date);
    v12->_finishedRegistration = registration;
  }

  return v12;
}

- (IDSTemporaryPhoneUser)temporaryPhoneUserWithUpdatedExpirationDate:(id)date
{
  dateCopy = date;
  v5 = [(IDSTemporaryPhoneUser *)self copy];
  [v5 setExpirationDate:dateCopy];

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
  phoneNumber = [(IDSTemporaryPhoneUser *)self phoneNumber];
  v4 = phoneNumber;
  v5 = &stru_100C06028;
  if (phoneNumber)
  {
    v5 = phoneNumber;
  }

  v6 = v5;

  phoneUser = [(IDSTemporaryPhoneUser *)self phoneUser];
  uniqueIdentifier = [phoneUser uniqueIdentifier];
  v9 = [@"tp" stringByAppendingString:uniqueIdentifier];
  v10 = [v9 stringByAppendingString:v6];

  return v10;
}

- (id)realmPrefixedIdentifier
{
  phoneUser = [(IDSTemporaryPhoneUser *)self phoneUser];
  realmPrefixedIdentifier = [phoneUser realmPrefixedIdentifier];

  return realmPrefixedIdentifier;
}

- (id)unprefixedIdentifier
{
  phoneUser = [(IDSTemporaryPhoneUser *)self phoneUser];
  unprefixedIdentifier = [phoneUser unprefixedIdentifier];

  return unprefixedIdentifier;
}

- (id)storageIdentifier
{
  phoneUser = [(IDSTemporaryPhoneUser *)self phoneUser];
  storageIdentifier = [phoneUser storageIdentifier];
  v4 = [@"tp" stringByAppendingString:storageIdentifier];

  return v4;
}

- (NSString)phoneNumber
{
  phoneUser = [(IDSTemporaryPhoneUser *)self phoneUser];
  phoneNumber = [phoneUser phoneNumber];
  v5 = phoneNumber;
  if (phoneNumber)
  {
    phoneBookNumber = phoneNumber;
  }

  else
  {
    phoneUser2 = [(IDSTemporaryPhoneUser *)self phoneUser];
    phoneBookNumber = [phoneUser2 phoneBookNumber];
  }

  return phoneBookNumber;
}

- (NSString)countryCode
{
  phoneUser = [(IDSTemporaryPhoneUser *)self phoneUser];
  countryCode = [phoneUser countryCode];

  return countryCode;
}

- (NSString)networkCode
{
  phoneUser = [(IDSTemporaryPhoneUser *)self phoneUser];
  networkCode = [phoneUser networkCode];

  return networkCode;
}

- (NSString)labelID
{
  phoneUser = [(IDSTemporaryPhoneUser *)self phoneUser];
  labelID = [phoneUser labelID];

  return labelID;
}

- (unint64_t)hash
{
  uniqueIdentifier = [(IDSTemporaryPhoneUser *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSTemporaryPhoneUser *)self isEqualToTemporaryPhoneUser:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToTemporaryPhoneUser:(id)user
{
  userCopy = user;
  v5 = userCopy;
  if (self == userCopy)
  {
    v10 = 1;
  }

  else
  {
    uniqueIdentifier = [(IDSTemporaryPhoneUser *)userCopy uniqueIdentifier];
    uniqueIdentifier2 = [(IDSTemporaryPhoneUser *)self uniqueIdentifier];
    if ([uniqueIdentifier isEqualToString:uniqueIdentifier2])
    {
      phoneNumber = [(IDSTemporaryPhoneUser *)v5 phoneNumber];
      phoneNumber2 = [(IDSTemporaryPhoneUser *)self phoneNumber];
      v10 = [phoneNumber isEqualToString:phoneNumber2];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)isIdenticalToUser:(id)user
{
  userCopy = user;
  if ([(IDSTemporaryPhoneUser *)self isEqualToUser:userCopy])
  {
    v5 = userCopy;
    expirationDate = [v5 expirationDate];
    expirationDate2 = [(IDSTemporaryPhoneUser *)self expirationDate];
    if ([expirationDate isEqualToDate:expirationDate2] && (v8 = objc_msgSend(v5, "finishedRegistration"), v8 == -[IDSTemporaryPhoneUser finishedRegistration](self, "finishedRegistration")) && (v9 = objc_msgSend(v5, "hasBeenProvisioned"), v9 == -[IDSTemporaryPhoneUser hasBeenProvisioned](self, "hasBeenProvisioned")))
    {
      hasNotifiedSuccess = [v5 hasNotifiedSuccess];
      v10 = hasNotifiedSuccess ^ [(IDSTemporaryPhoneUser *)self hasNotifiedSuccess]^ 1;
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

- (IDSTemporaryPhoneUser)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneUser"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"finished"];
  bOOLValue = [v7 BOOLValue];

  v9 = [coderCopy decodeBoolForKey:@"Provisioned"];
  v10 = [coderCopy decodeBoolForKey:@"notifiedSuccess"];

  v11 = [(IDSTemporaryPhoneUser *)self initWithPhoneUser:v5 expirationDate:v6 finishedRegistration:bOOLValue];
  [(IDSTemporaryPhoneUser *)v11 setHasBeenProvisioned:v9];
  [(IDSTemporaryPhoneUser *)v11 setHasNotifiedSuccess:v10];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  phoneUser = [(IDSTemporaryPhoneUser *)self phoneUser];
  [coderCopy encodeObject:phoneUser forKey:@"phoneUser"];

  expirationDate = [(IDSTemporaryPhoneUser *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"expiration"];

  v6 = [NSNumber numberWithBool:[(IDSTemporaryPhoneUser *)self finishedRegistration]];
  [coderCopy encodeObject:v6 forKey:@"finished"];

  [coderCopy encodeBool:-[IDSTemporaryPhoneUser hasBeenProvisioned](self forKey:{"hasBeenProvisioned"), @"Provisioned"}];
  [coderCopy encodeBool:-[IDSTemporaryPhoneUser hasNotifiedSuccess](self forKey:{"hasNotifiedSuccess"), @"notifiedSuccess"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  phoneUser = [(IDSTemporaryPhoneUser *)self phoneUser];
  v6 = [phoneUser copy];
  expirationDate = [(IDSTemporaryPhoneUser *)self expirationDate];
  v8 = [v4 initWithPhoneUser:v6 expirationDate:expirationDate finishedRegistration:{-[IDSTemporaryPhoneUser finishedRegistration](self, "finishedRegistration")}];

  [v8 setHasNotifiedSuccess:{-[IDSTemporaryPhoneUser hasNotifiedSuccess](self, "hasNotifiedSuccess")}];
  [v8 setHasBeenProvisioned:{-[IDSTemporaryPhoneUser hasBeenProvisioned](self, "hasBeenProvisioned")}];
  return v8;
}

- (NSString)description
{
  v3 = objc_opt_class();
  uniqueIdentifier = [(IDSTemporaryPhoneUser *)self uniqueIdentifier];
  phoneNumber = [(IDSTemporaryPhoneUser *)self phoneNumber];
  expirationDate = [(IDSTemporaryPhoneUser *)self expirationDate];
  finishedRegistration = [(IDSTemporaryPhoneUser *)self finishedRegistration];
  v8 = @"NO";
  if (finishedRegistration)
  {
    v8 = @"YES";
  }

  v9 = [NSString stringWithFormat:@"<%@:%p> uid: %@, pn: %@, expiration: %@, finished : %@", v3, self, uniqueIdentifier, phoneNumber, expirationDate, v8];

  return v9;
}

@end