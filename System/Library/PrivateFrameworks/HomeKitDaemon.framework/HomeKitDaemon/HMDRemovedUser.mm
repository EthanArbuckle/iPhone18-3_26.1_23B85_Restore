@interface HMDRemovedUser
+ (id)removedUserWithUser:(id)user;
- (BOOL)isEqualToUser:(id)user;
- (BOOL)isEqualToUserID:(id)d;
- (BOOL)isExpired;
- (HMDRemovedUser)initWithCoder:(id)coder;
- (HMDRemovedUser)initWithUser:(id)user expiration:(id)expiration;
- (NSString)mergeID;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDRemovedUser

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  user = [(HMDRemovedUser *)self user];
  [coderCopy encodeObject:user forKey:@"HM.user"];

  expirationDate = [(HMDRemovedUser *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"HM.expiry"];
}

- (HMDRemovedUser)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.user"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.expiry"];

  v7 = [(HMDRemovedUser *)self initWithUser:v5 expiration:v6];
  return v7;
}

- (BOOL)isEqualToUser:(id)user
{
  userCopy = user;
  user = [(HMDRemovedUser *)self user];

  if (user == userCopy)
  {
    v7 = 1;
  }

  else
  {
    userID = [userCopy userID];
    v7 = [(HMDRemovedUser *)self isEqualToUserID:userID];
  }

  return v7;
}

- (BOOL)isEqualToUserID:(id)d
{
  dCopy = d;
  user = [(HMDRemovedUser *)self user];
  userID = [user userID];
  v7 = [userID isEqualToString:dCopy];

  return v7;
}

- (BOOL)isExpired
{
  user = [(HMDRemovedUser *)self user];

  if (!user)
  {
    return 1;
  }

  expirationDate = [(HMDRemovedUser *)self expirationDate];
  [expirationDate timeIntervalSinceNow];
  v6 = v5 < 0.0;

  return v6;
}

- (NSString)mergeID
{
  user = [(HMDRemovedUser *)self user];
  account = [user account];
  senderCorrelationIdentifier = [account senderCorrelationIdentifier];

  return senderCorrelationIdentifier;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  user = [(HMDRemovedUser *)self user];
  expirationDate = [(HMDRemovedUser *)self expirationDate];
  v7 = [v3 stringWithFormat:@"<%@, User = %@, Expiration = %@>", v4, user, expirationDate];

  return v7;
}

- (HMDRemovedUser)initWithUser:(id)user expiration:(id)expiration
{
  userCopy = user;
  expirationCopy = expiration;
  v12.receiver = self;
  v12.super_class = HMDRemovedUser;
  v9 = [(HMDRemovedUser *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_user, user);
    objc_storeStrong(&v10->_expirationDate, expiration);
    v10->_removalInProgress = 0;
  }

  return v10;
}

+ (id)removedUserWithUser:(id)user
{
  userCopy = user;
  v4 = [HMDRemovedUser alloc];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:2592000.0];
  v6 = [(HMDRemovedUser *)v4 initWithUser:userCopy expiration:v5];

  return v6;
}

@end