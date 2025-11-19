@interface HMDRemovedUser
+ (id)removedUserWithUser:(id)a3;
- (BOOL)isEqualToUser:(id)a3;
- (BOOL)isEqualToUserID:(id)a3;
- (BOOL)isExpired;
- (HMDRemovedUser)initWithCoder:(id)a3;
- (HMDRemovedUser)initWithUser:(id)a3 expiration:(id)a4;
- (NSString)mergeID;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDRemovedUser

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDRemovedUser *)self user];
  [v4 encodeObject:v5 forKey:@"HM.user"];

  v6 = [(HMDRemovedUser *)self expirationDate];
  [v4 encodeObject:v6 forKey:@"HM.expiry"];
}

- (HMDRemovedUser)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.user"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.expiry"];

  v7 = [(HMDRemovedUser *)self initWithUser:v5 expiration:v6];
  return v7;
}

- (BOOL)isEqualToUser:(id)a3
{
  v4 = a3;
  v5 = [(HMDRemovedUser *)self user];

  if (v5 == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = [v4 userID];
    v7 = [(HMDRemovedUser *)self isEqualToUserID:v6];
  }

  return v7;
}

- (BOOL)isEqualToUserID:(id)a3
{
  v4 = a3;
  v5 = [(HMDRemovedUser *)self user];
  v6 = [v5 userID];
  v7 = [v6 isEqualToString:v4];

  return v7;
}

- (BOOL)isExpired
{
  v3 = [(HMDRemovedUser *)self user];

  if (!v3)
  {
    return 1;
  }

  v4 = [(HMDRemovedUser *)self expirationDate];
  [v4 timeIntervalSinceNow];
  v6 = v5 < 0.0;

  return v6;
}

- (NSString)mergeID
{
  v2 = [(HMDRemovedUser *)self user];
  v3 = [v2 account];
  v4 = [v3 senderCorrelationIdentifier];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HMDRemovedUser *)self user];
  v6 = [(HMDRemovedUser *)self expirationDate];
  v7 = [v3 stringWithFormat:@"<%@, User = %@, Expiration = %@>", v4, v5, v6];

  return v7;
}

- (HMDRemovedUser)initWithUser:(id)a3 expiration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDRemovedUser;
  v9 = [(HMDRemovedUser *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_user, a3);
    objc_storeStrong(&v10->_expirationDate, a4);
    v10->_removalInProgress = 0;
  }

  return v10;
}

+ (id)removedUserWithUser:(id)a3
{
  v3 = a3;
  v4 = [HMDRemovedUser alloc];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:2592000.0];
  v6 = [(HMDRemovedUser *)v4 initWithUser:v3 expiration:v5];

  return v6;
}

@end