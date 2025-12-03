@interface DMFUser
- (BOOL)isEqual:(id)equal;
- (DMFUser)initWithCoder:(id)coder;
- (DMFUser)initWithUsername:(id)username dataQuota:(unint64_t)quota dataUsed:(unint64_t)used hasDataToSync:(BOOL)sync isCurrentUser:(BOOL)user;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFUser

- (DMFUser)initWithUsername:(id)username dataQuota:(unint64_t)quota dataUsed:(unint64_t)used hasDataToSync:(BOOL)sync isCurrentUser:(BOOL)user
{
  usernameCopy = username;
  v17.receiver = self;
  v17.super_class = DMFUser;
  v13 = [(DMFUser *)&v17 init];
  if (v13)
  {
    v14 = [usernameCopy copy];
    username = v13->_username;
    v13->_username = v14;

    v13->_dataQuota = quota;
    v13->_dataUsed = used;
    v13->_hasDataToSync = sync;
    v13->_isCurrentUser = user;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  username = [(DMFUser *)self username];
  v6 = [v4 initWithUsername:username dataQuota:-[DMFUser dataQuota](self dataUsed:"dataQuota") hasDataToSync:-[DMFUser dataUsed](self isCurrentUser:{"dataUsed"), -[DMFUser hasDataToSync](self, "hasDataToSync"), -[DMFUser isCurrentUser](self, "isCurrentUser")}];

  return v6;
}

- (DMFUser)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = DMFUser;
  v5 = [(DMFUser *)&v14 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"username"];
    username = v5->_username;
    v5->_username = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataQuota"];
    v5->_dataQuota = [v9 unsignedLongLongValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataUsed"];
    v5->_dataUsed = [v10 unsignedLongLongValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasDataToSync"];
    v5->_hasDataToSync = [v11 BOOLValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isCurrentUser"];
    v5->_isCurrentUser = [v12 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  username = [(DMFUser *)self username];
  [coderCopy encodeObject:username forKey:@"username"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DMFUser dataQuota](self, "dataQuota")}];
  [coderCopy encodeObject:v6 forKey:@"dataQuota"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DMFUser dataUsed](self, "dataUsed")}];
  [coderCopy encodeObject:v7 forKey:@"dataUsed"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFUser hasDataToSync](self, "hasDataToSync")}];
  [coderCopy encodeObject:v8 forKey:@"hasDataToSync"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFUser isCurrentUser](self, "isCurrentUser")}];
  [coderCopy encodeObject:v9 forKey:@"isCurrentUser"];
}

- (unint64_t)hash
{
  username = [(DMFUser *)self username];
  v4 = [username hash];
  dataQuota = [(DMFUser *)self dataQuota];
  v6 = dataQuota ^ [(DMFUser *)self dataUsed]^ v4;
  v7 = v6 ^ [(DMFUser *)self hasDataToSync];
  isCurrentUser = [(DMFUser *)self isCurrentUser];

  return v7 ^ isCurrentUser;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      username = [(DMFUser *)self username];
      username2 = [(DMFUser *)v5 username];
      v8 = username;
      v9 = username2;
      if ((!(v8 | v9) || (v10 = [v8 isEqual:v9], v9, v8, v10)) && (v11 = -[DMFUser dataQuota](self, "dataQuota"), v11 == -[DMFUser dataQuota](v5, "dataQuota")) && (v12 = -[DMFUser dataUsed](self, "dataUsed"), v12 == -[DMFUser dataUsed](v5, "dataUsed")) && (v13 = -[DMFUser hasDataToSync](self, "hasDataToSync"), v13 == -[DMFUser hasDataToSync](v5, "hasDataToSync")))
      {
        isCurrentUser = [(DMFUser *)self isCurrentUser];
        v14 = isCurrentUser ^ [(DMFUser *)v5 isCurrentUser]^ 1;
      }

      else
      {
        LOBYTE(v14) = 0;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  return v14;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  username = [(DMFUser *)self username];
  v5 = [username length];

  if (v5)
  {
    username2 = [(DMFUser *)self username];
    [v3 appendFormat:@"\tUsername         : “%@”\n", username2];
  }

  [v3 appendFormat:@"\tData Quota       : %llu\n", -[DMFUser dataQuota](self, "dataQuota")];
  [v3 appendFormat:@"\tData Used        : %llu\n", -[DMFUser dataUsed](self, "dataUsed")];
  if ([(DMFUser *)self hasDataToSync])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"\tHas Data to Sync : %@\n", v7];
  if ([(DMFUser *)self isCurrentUser])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"\tIs Current User  : %@\n", v8];
  [v3 appendString:@"}>"];
  v9 = [v3 copy];

  return v9;
}

@end