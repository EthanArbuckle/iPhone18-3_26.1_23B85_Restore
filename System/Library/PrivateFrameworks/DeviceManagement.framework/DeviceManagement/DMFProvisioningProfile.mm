@interface DMFProvisioningProfile
- (BOOL)isEqual:(id)a3;
- (DMFProvisioningProfile)initWithCoder:(id)a3;
- (DMFProvisioningProfile)initWithUUID:(id)a3 name:(id)a4 expirationDate:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFProvisioningProfile

- (DMFProvisioningProfile)initWithUUID:(id)a3 name:(id)a4 expirationDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = DMFProvisioningProfile;
  v11 = [(DMFProvisioningProfile *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    UUID = v11->_UUID;
    v11->_UUID = v12;

    v14 = [v9 copy];
    name = v11->_name;
    v11->_name = v14;

    v16 = [v10 copy];
    expirationDate = v11->_expirationDate;
    v11->_expirationDate = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(DMFProvisioningProfile *)self UUID];
  v6 = [(DMFProvisioningProfile *)self name];
  v7 = [(DMFProvisioningProfile *)self expirationDate];
  v8 = [v4 initWithUUID:v5 name:v6 expirationDate:v7];

  return v8;
}

- (DMFProvisioningProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = DMFProvisioningProfile;
  v5 = [(DMFProvisioningProfile *)&v16 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DMFProvisioningProfile *)self UUID];
  [v4 encodeObject:v5 forKey:@"UUID"];

  v6 = [(DMFProvisioningProfile *)self name];
  [v4 encodeObject:v6 forKey:@"name"];

  v7 = [(DMFProvisioningProfile *)self expirationDate];
  [v4 encodeObject:v7 forKey:@"expirationDate"];
}

- (unint64_t)hash
{
  v3 = [(DMFProvisioningProfile *)self UUID];
  v4 = [v3 hash];
  v5 = [(DMFProvisioningProfile *)self name];
  v6 = [v5 hash] ^ v4;
  v7 = [(DMFProvisioningProfile *)self expirationDate];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DMFProvisioningProfile *)self UUID];
      v7 = [(DMFProvisioningProfile *)v5 UUID];
      v8 = v6;
      v9 = v7;
      if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
      {
        v18 = 0;
      }

      else
      {
        v11 = [(DMFProvisioningProfile *)self name];
        v12 = [(DMFProvisioningProfile *)v5 name];
        v13 = v11;
        v14 = v12;
        if (v13 | v14 && (v15 = [v13 isEqual:v14], v14, v13, !v15))
        {
          v18 = 0;
        }

        else
        {
          v16 = [(DMFProvisioningProfile *)self expirationDate];
          v17 = [(DMFProvisioningProfile *)v5 expirationDate];
          if (v16 | v17)
          {
            v18 = [v16 isEqual:v17];
          }

          else
          {
            v18 = 1;
          }
        }
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  v4 = [(DMFProvisioningProfile *)self name];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(DMFProvisioningProfile *)self name];
    [v3 appendFormat:@"\tName            : “%@”\n", v6];
  }

  v7 = [(DMFProvisioningProfile *)self UUID];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(DMFProvisioningProfile *)self UUID];
    [v3 appendFormat:@"\tUUID            : %@\n", v9];
  }

  v10 = [(DMFProvisioningProfile *)self expirationDate];

  if (v10)
  {
    v11 = [(DMFProvisioningProfile *)self expirationDate];
    [v3 appendFormat:@"\tExpiration Date : %@\n", v11];
  }

  [v3 appendString:@"}>"];
  v12 = [v3 copy];

  return v12;
}

@end