@interface PDSUser
+ (PDSUser)userWithDSID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUser:(id)a3;
- (PDSUser)initWithCoder:(id)a3;
- (PDSUser)initWithUserID:(id)a3 userType:(char)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PDSUser

- (unint64_t)hash
{
  v3 = [(PDSUser *)self userID];
  v4 = [v3 hash];
  v5 = [(PDSUser *)self userType];

  return v4 ^ v5;
}

+ (PDSUser)userWithDSID:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(PDSUser *)a2 userWithDSID:a1];
  }

  v6 = [[a1 alloc] initWithUserID:v5 userType:1];

  return v6;
}

- (PDSUser)initWithUserID:(id)a3 userType:(char)a4
{
  v4 = a4;
  v8 = a3;
  if (!v8)
  {
    [PDSUser initWithUserID:a2 userType:self];
  }

  if (v4 != 1)
  {
    [PDSUser initWithUserID:a2 userType:self];
  }

  v12.receiver = self;
  v12.super_class = PDSUser;
  v9 = [(PDSUser *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userID, a3);
    v10->_userType = v4;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PDSUser *)self isEqualToUser:v4];

  return v5;
}

- (BOOL)isEqualToUser:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = [(PDSUser *)self userType];
    if (v5 == [(PDSUser *)v4 userType])
    {
      v6 = [(PDSUser *)self userID];
      v7 = [(PDSUser *)v4 userID];
      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(PDSUser *)self userID];
  [v5 encodeObject:v4 forKey:@"userID"];

  [v5 encodeInt32:-[PDSUser userType](self forKey:{"userType"), @"userType"}];
}

- (PDSUser)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
  v6 = [v4 decodeIntForKey:@"userType"];

  v7 = [(PDSUser *)self initWithUserID:v5 userType:v6];
  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(PDSUser *)self userID];
  v6 = [v3 stringWithFormat:@"<%@: %p userID = %@; userType = %d>", v4, self, v5, -[PDSUser userType](self, "userType")];;

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