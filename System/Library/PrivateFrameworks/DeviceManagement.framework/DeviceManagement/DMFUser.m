@interface DMFUser
- (BOOL)isEqual:(id)a3;
- (DMFUser)initWithCoder:(id)a3;
- (DMFUser)initWithUsername:(id)a3 dataQuota:(unint64_t)a4 dataUsed:(unint64_t)a5 hasDataToSync:(BOOL)a6 isCurrentUser:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFUser

- (DMFUser)initWithUsername:(id)a3 dataQuota:(unint64_t)a4 dataUsed:(unint64_t)a5 hasDataToSync:(BOOL)a6 isCurrentUser:(BOOL)a7
{
  v12 = a3;
  v17.receiver = self;
  v17.super_class = DMFUser;
  v13 = [(DMFUser *)&v17 init];
  if (v13)
  {
    v14 = [v12 copy];
    username = v13->_username;
    v13->_username = v14;

    v13->_dataQuota = a4;
    v13->_dataUsed = a5;
    v13->_hasDataToSync = a6;
    v13->_isCurrentUser = a7;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(DMFUser *)self username];
  v6 = [v4 initWithUsername:v5 dataQuota:-[DMFUser dataQuota](self dataUsed:"dataQuota") hasDataToSync:-[DMFUser dataUsed](self isCurrentUser:{"dataUsed"), -[DMFUser hasDataToSync](self, "hasDataToSync"), -[DMFUser isCurrentUser](self, "isCurrentUser")}];

  return v6;
}

- (DMFUser)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DMFUser;
  v5 = [(DMFUser *)&v14 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"username"];
    username = v5->_username;
    v5->_username = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataQuota"];
    v5->_dataQuota = [v9 unsignedLongLongValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataUsed"];
    v5->_dataUsed = [v10 unsignedLongLongValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasDataToSync"];
    v5->_hasDataToSync = [v11 BOOLValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isCurrentUser"];
    v5->_isCurrentUser = [v12 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DMFUser *)self username];
  [v4 encodeObject:v5 forKey:@"username"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DMFUser dataQuota](self, "dataQuota")}];
  [v4 encodeObject:v6 forKey:@"dataQuota"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DMFUser dataUsed](self, "dataUsed")}];
  [v4 encodeObject:v7 forKey:@"dataUsed"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFUser hasDataToSync](self, "hasDataToSync")}];
  [v4 encodeObject:v8 forKey:@"hasDataToSync"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFUser isCurrentUser](self, "isCurrentUser")}];
  [v4 encodeObject:v9 forKey:@"isCurrentUser"];
}

- (unint64_t)hash
{
  v3 = [(DMFUser *)self username];
  v4 = [v3 hash];
  v5 = [(DMFUser *)self dataQuota];
  v6 = v5 ^ [(DMFUser *)self dataUsed]^ v4;
  v7 = v6 ^ [(DMFUser *)self hasDataToSync];
  v8 = [(DMFUser *)self isCurrentUser];

  return v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DMFUser *)self username];
      v7 = [(DMFUser *)v5 username];
      v8 = v6;
      v9 = v7;
      if ((!(v8 | v9) || (v10 = [v8 isEqual:v9], v9, v8, v10)) && (v11 = -[DMFUser dataQuota](self, "dataQuota"), v11 == -[DMFUser dataQuota](v5, "dataQuota")) && (v12 = -[DMFUser dataUsed](self, "dataUsed"), v12 == -[DMFUser dataUsed](v5, "dataUsed")) && (v13 = -[DMFUser hasDataToSync](self, "hasDataToSync"), v13 == -[DMFUser hasDataToSync](v5, "hasDataToSync")))
      {
        v16 = [(DMFUser *)self isCurrentUser];
        v14 = v16 ^ [(DMFUser *)v5 isCurrentUser]^ 1;
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
  v4 = [(DMFUser *)self username];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(DMFUser *)self username];
    [v3 appendFormat:@"\tUsername         : “%@”\n", v6];
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