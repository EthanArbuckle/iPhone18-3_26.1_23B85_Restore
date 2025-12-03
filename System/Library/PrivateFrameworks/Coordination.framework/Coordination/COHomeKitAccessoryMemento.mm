@interface COHomeKitAccessoryMemento
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHomeKitAccessoryMemento:(id)memento;
- (COHomeKitAccessoryMemento)initWithCoder:(id)coder;
- (COHomeKitAccessoryMemento)initWithHomeKitAccessory:(id)accessory;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COHomeKitAccessoryMemento

- (COHomeKitAccessoryMemento)initWithHomeKitAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v20.receiver = self;
  v20.super_class = COHomeKitAccessoryMemento;
  v5 = [(COHomeKitAccessoryMemento *)&v20 init];
  if (v5)
  {
    uniqueIdentifier = [accessoryCopy uniqueIdentifier];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = uniqueIdentifier;

    category = [accessoryCopy category];
    categoryType = [category categoryType];
    v10 = [categoryType copy];
    categoryType = v5->_categoryType;
    v5->_categoryType = v10;

    home = [accessoryCopy home];
    uniqueIdentifier2 = [home uniqueIdentifier];
    homeUniqueIdentifier = v5->_homeUniqueIdentifier;
    v5->_homeUniqueIdentifier = uniqueIdentifier2;

    device = [accessoryCopy device];
    idsIdentifier = [device idsIdentifier];
    uUIDString = [idsIdentifier UUIDString];
    IDSIdentifier = v5->_IDSIdentifier;
    v5->_IDSIdentifier = uUIDString;
  }

  return v5;
}

- (COHomeKitAccessoryMemento)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = COHomeKitAccessoryMemento;
  v5 = [(COHomeKitAccessoryMemento *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"categoryType"];
    categoryType = v5->_categoryType;
    v5->_categoryType = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeUniqueIdentifier"];
    homeUniqueIdentifier = v5->_homeUniqueIdentifier;
    v5->_homeUniqueIdentifier = v10;

    if (!v5->_uniqueIdentifier || !-[NSString length](v5->_categoryType, "length") || !v5->_homeUniqueIdentifier || ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsIdentifier"], v12 = objc_claimAutoreleasedReturnValue(), IDSIdentifier = v5->_IDSIdentifier, v5->_IDSIdentifier = v12, IDSIdentifier, !v5->_IDSIdentifier) && objc_msgSend(coderCopy, "containsValueForKey:", @"idsIdentifier"))
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
  uniqueIdentifier = [(COHomeKitAccessoryMemento *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  uTF8String = [uUIDString UTF8String];
  iDSIdentifier = [(COHomeKitAccessoryMemento *)self IDSIdentifier];
  if (iDSIdentifier)
  {
    iDSIdentifier2 = [(COHomeKitAccessoryMemento *)self IDSIdentifier];
    v11 = [v3 stringWithFormat:@"<%@: %p, id = %.8s, ids = %.8s>", v5, self, uTF8String, objc_msgSend(iDSIdentifier2, "UTF8String")];
  }

  else
  {
    v11 = [v3 stringWithFormat:@"<%@: %p, id = %.8s, ids = %.8s>", v5, self, uTF8String, "nil"];
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueIdentifier = [(COHomeKitAccessoryMemento *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  categoryType = [(COHomeKitAccessoryMemento *)self categoryType];
  [coderCopy encodeObject:categoryType forKey:@"categoryType"];

  homeUniqueIdentifier = [(COHomeKitAccessoryMemento *)self homeUniqueIdentifier];
  [coderCopy encodeObject:homeUniqueIdentifier forKey:@"homeUniqueIdentifier"];

  iDSIdentifier = [(COHomeKitAccessoryMemento *)self IDSIdentifier];
  if ([iDSIdentifier length])
  {
    [coderCopy encodeObject:iDSIdentifier forKey:@"idsIdentifier"];
  }
}

- (unint64_t)hash
{
  uniqueIdentifier = [(COHomeKitAccessoryMemento *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
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

- (BOOL)isEqualToHomeKitAccessoryMemento:(id)memento
{
  mementoCopy = memento;
  uniqueIdentifier = [(COHomeKitAccessoryMemento *)self uniqueIdentifier];
  uniqueIdentifier2 = [mementoCopy uniqueIdentifier];
  if ([uniqueIdentifier isEqual:uniqueIdentifier2])
  {
    homeUniqueIdentifier = [(COHomeKitAccessoryMemento *)self homeUniqueIdentifier];
    homeUniqueIdentifier2 = [mementoCopy homeUniqueIdentifier];
    if ([homeUniqueIdentifier isEqual:homeUniqueIdentifier2])
    {
      categoryType = [(COHomeKitAccessoryMemento *)self categoryType];
      categoryType2 = [mementoCopy categoryType];
      if ([categoryType isEqualToString:categoryType2])
      {
        iDSIdentifier = [(COHomeKitAccessoryMemento *)self IDSIdentifier];
        iDSIdentifier2 = [mementoCopy IDSIdentifier];
        if (iDSIdentifier == iDSIdentifier2)
        {
          v14 = 1;
        }

        else
        {
          iDSIdentifier3 = [(COHomeKitAccessoryMemento *)self IDSIdentifier];
          [mementoCopy IDSIdentifier];
          v13 = v17 = iDSIdentifier;
          v14 = [iDSIdentifier3 isEqualToString:v13];

          iDSIdentifier = v17;
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