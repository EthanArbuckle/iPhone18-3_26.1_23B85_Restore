@interface PDSUser
+ (PDSUser)userWithDSID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUser:(id)user;
- (PDSUser)initWithCoder:(id)coder;
- (PDSUser)initWithUserID:(id)d userType:(char)type;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PDSUser

- (unint64_t)hash
{
  userID = [(PDSUser *)self userID];
  v4 = [userID hash];
  userType = [(PDSUser *)self userType];

  return v4 ^ userType;
}

+ (PDSUser)userWithDSID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    [(PDSUser *)a2 userWithDSID:self];
  }

  v6 = [[self alloc] initWithUserID:dCopy userType:1];

  return v6;
}

- (PDSUser)initWithUserID:(id)d userType:(char)type
{
  typeCopy = type;
  dCopy = d;
  if (!dCopy)
  {
    [PDSUser initWithUserID:a2 userType:self];
  }

  if (typeCopy != 1)
  {
    [PDSUser initWithUserID:a2 userType:self];
  }

  v12.receiver = self;
  v12.super_class = PDSUser;
  v9 = [(PDSUser *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userID, d);
    v10->_userType = typeCopy;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PDSUser *)self isEqualToUser:equalCopy];

  return v5;
}

- (BOOL)isEqualToUser:(id)user
{
  userCopy = user;
  if (userCopy == self)
  {
    v8 = 1;
  }

  else
  {
    userType = [(PDSUser *)self userType];
    if (userType == [(PDSUser *)userCopy userType])
    {
      userID = [(PDSUser *)self userID];
      userID2 = [(PDSUser *)userCopy userID];
      v8 = [userID isEqualToString:userID2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  userID = [(PDSUser *)self userID];
  [coderCopy encodeObject:userID forKey:@"userID"];

  [coderCopy encodeInt32:-[PDSUser userType](self forKey:{"userType"), @"userType"}];
}

- (PDSUser)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
  v6 = [coderCopy decodeIntForKey:@"userType"];

  v7 = [(PDSUser *)self initWithUserID:v5 userType:v6];
  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  userID = [(PDSUser *)self userID];
  v6 = [v3 stringWithFormat:@"<%@: %p userID = %@; userType = %d>", v4, self, userID, -[PDSUser userType](self, "userType")];;

  return v6;
}

+ (void)userWithDSID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PDSUser.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"DSID"}];
}

- (void)initWithUserID:(uint64_t)a1 userType:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PDSUser.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"userID"}];
}

- (void)initWithUserID:(uint64_t)a1 userType:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PDSUser.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"userType == PDSUserTypeDSID"}];
}

@end