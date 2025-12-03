@interface DMFProvisioningProfile
- (BOOL)isEqual:(id)equal;
- (DMFProvisioningProfile)initWithCoder:(id)coder;
- (DMFProvisioningProfile)initWithUUID:(id)d name:(id)name expirationDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFProvisioningProfile

- (DMFProvisioningProfile)initWithUUID:(id)d name:(id)name expirationDate:(id)date
{
  dCopy = d;
  nameCopy = name;
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = DMFProvisioningProfile;
  v11 = [(DMFProvisioningProfile *)&v19 init];
  if (v11)
  {
    v12 = [dCopy copy];
    UUID = v11->_UUID;
    v11->_UUID = v12;

    v14 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v14;

    v16 = [dateCopy copy];
    expirationDate = v11->_expirationDate;
    v11->_expirationDate = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  uUID = [(DMFProvisioningProfile *)self UUID];
  name = [(DMFProvisioningProfile *)self name];
  expirationDate = [(DMFProvisioningProfile *)self expirationDate];
  v8 = [v4 initWithUUID:uUID name:name expirationDate:expirationDate];

  return v8;
}

- (DMFProvisioningProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = DMFProvisioningProfile;
  v5 = [(DMFProvisioningProfile *)&v16 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(DMFProvisioningProfile *)self UUID];
  [coderCopy encodeObject:uUID forKey:@"UUID"];

  name = [(DMFProvisioningProfile *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  expirationDate = [(DMFProvisioningProfile *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"expirationDate"];
}

- (unint64_t)hash
{
  uUID = [(DMFProvisioningProfile *)self UUID];
  v4 = [uUID hash];
  name = [(DMFProvisioningProfile *)self name];
  v6 = [name hash] ^ v4;
  expirationDate = [(DMFProvisioningProfile *)self expirationDate];
  v8 = [expirationDate hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uUID = [(DMFProvisioningProfile *)self UUID];
      uUID2 = [(DMFProvisioningProfile *)v5 UUID];
      v8 = uUID;
      v9 = uUID2;
      if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
      {
        v18 = 0;
      }

      else
      {
        name = [(DMFProvisioningProfile *)self name];
        name2 = [(DMFProvisioningProfile *)v5 name];
        v13 = name;
        v14 = name2;
        if (v13 | v14 && (v15 = [v13 isEqual:v14], v14, v13, !v15))
        {
          v18 = 0;
        }

        else
        {
          expirationDate = [(DMFProvisioningProfile *)self expirationDate];
          expirationDate2 = [(DMFProvisioningProfile *)v5 expirationDate];
          if (expirationDate | expirationDate2)
          {
            v18 = [expirationDate isEqual:expirationDate2];
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
  name = [(DMFProvisioningProfile *)self name];
  v5 = [name length];

  if (v5)
  {
    name2 = [(DMFProvisioningProfile *)self name];
    [v3 appendFormat:@"\tName            : “%@”\n", name2];
  }

  uUID = [(DMFProvisioningProfile *)self UUID];
  v8 = [uUID length];

  if (v8)
  {
    uUID2 = [(DMFProvisioningProfile *)self UUID];
    [v3 appendFormat:@"\tUUID            : %@\n", uUID2];
  }

  expirationDate = [(DMFProvisioningProfile *)self expirationDate];

  if (expirationDate)
  {
    expirationDate2 = [(DMFProvisioningProfile *)self expirationDate];
    [v3 appendFormat:@"\tExpiration Date : %@\n", expirationDate2];
  }

  [v3 appendString:@"}>"];
  v12 = [v3 copy];

  return v12;
}

@end