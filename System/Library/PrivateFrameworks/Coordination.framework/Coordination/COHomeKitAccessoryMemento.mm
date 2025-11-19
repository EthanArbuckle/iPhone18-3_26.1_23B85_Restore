@interface COHomeKitAccessoryMemento
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHomeKitAccessoryMemento:(id)a3;
- (COHomeKitAccessoryMemento)initWithCoder:(id)a3;
- (COHomeKitAccessoryMemento)initWithHomeKitAccessory:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COHomeKitAccessoryMemento

- (COHomeKitAccessoryMemento)initWithHomeKitAccessory:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = COHomeKitAccessoryMemento;
  v5 = [(COHomeKitAccessoryMemento *)&v20 init];
  if (v5)
  {
    v6 = [v4 uniqueIdentifier];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    v8 = [v4 category];
    v9 = [v8 categoryType];
    v10 = [v9 copy];
    categoryType = v5->_categoryType;
    v5->_categoryType = v10;

    v12 = [v4 home];
    v13 = [v12 uniqueIdentifier];
    homeUniqueIdentifier = v5->_homeUniqueIdentifier;
    v5->_homeUniqueIdentifier = v13;

    v15 = [v4 device];
    v16 = [v15 idsIdentifier];
    v17 = [v16 UUIDString];
    IDSIdentifier = v5->_IDSIdentifier;
    v5->_IDSIdentifier = v17;
  }

  return v5;
}

- (COHomeKitAccessoryMemento)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = COHomeKitAccessoryMemento;
  v5 = [(COHomeKitAccessoryMemento *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"categoryType"];
    categoryType = v5->_categoryType;
    v5->_categoryType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeUniqueIdentifier"];
    homeUniqueIdentifier = v5->_homeUniqueIdentifier;
    v5->_homeUniqueIdentifier = v10;

    if (!v5->_uniqueIdentifier || !-[NSString length](v5->_categoryType, "length") || !v5->_homeUniqueIdentifier || ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"idsIdentifier"], v12 = objc_claimAutoreleasedReturnValue(), IDSIdentifier = v5->_IDSIdentifier, v5->_IDSIdentifier = v12, IDSIdentifier, !v5->_IDSIdentifier) && objc_msgSend(v4, "containsValueForKey:", @"idsIdentifier"))
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(COHomeKitAccessoryMemento *)self uniqueIdentifier];
  v7 = [v6 UUIDString];
  v8 = [v7 UTF8String];
  v9 = [(COHomeKitAccessoryMemento *)self IDSIdentifier];
  if (v9)
  {
    v10 = [(COHomeKitAccessoryMemento *)self IDSIdentifier];
    v11 = [v3 stringWithFormat:@"<%@: %p, id = %.8s, ids = %.8s>", v5, self, v8, objc_msgSend(v10, "UTF8String")];
  }

  else
  {
    v11 = [v3 stringWithFormat:@"<%@: %p, id = %.8s, ids = %.8s>", v5, self, v8, "nil"];
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(COHomeKitAccessoryMemento *)self uniqueIdentifier];
  [v8 encodeObject:v4 forKey:@"uniqueIdentifier"];

  v5 = [(COHomeKitAccessoryMemento *)self categoryType];
  [v8 encodeObject:v5 forKey:@"categoryType"];

  v6 = [(COHomeKitAccessoryMemento *)self homeUniqueIdentifier];
  [v8 encodeObject:v6 forKey:@"homeUniqueIdentifier"];

  v7 = [(COHomeKitAccessoryMemento *)self IDSIdentifier];
  if ([v7 length])
  {
    [v8 encodeObject:v7 forKey:@"idsIdentifier"];
  }
}

- (unint64_t)hash
{
  v2 = [(COHomeKitAccessoryMemento *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(COHomeKitAccessoryMemento *)self isEqualToHomeKitAccessoryMemento:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)isEqualToHomeKitAccessoryMemento:(id)a3
{
  v4 = a3;
  v5 = [(COHomeKitAccessoryMemento *)self uniqueIdentifier];
  v6 = [v4 uniqueIdentifier];
  if ([v5 isEqual:v6])
  {
    v7 = [(COHomeKitAccessoryMemento *)self homeUniqueIdentifier];
    v8 = [v4 homeUniqueIdentifier];
    if ([v7 isEqual:v8])
    {
      v9 = [(COHomeKitAccessoryMemento *)self categoryType];
      v10 = [v4 categoryType];
      if ([v9 isEqualToString:v10])
      {
        v11 = [(COHomeKitAccessoryMemento *)self IDSIdentifier];
        v12 = [v4 IDSIdentifier];
        if (v11 == v12)
        {
          v14 = 1;
        }

        else
        {
          v16 = [(COHomeKitAccessoryMemento *)self IDSIdentifier];
          [v4 IDSIdentifier];
          v13 = v17 = v11;
          v14 = [v16 isEqualToString:v13];

          v11 = v17;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end