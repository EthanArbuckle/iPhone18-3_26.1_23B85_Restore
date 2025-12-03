@interface LNPhotoItem
- (BOOL)isEqual:(id)equal;
- (LNPhotoItem)initWithCoder:(id)coder;
- (LNPhotoItem)initWithIdentifier:(id)identifier type:(id)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNPhotoItem

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNPhotoItem *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  type = [(LNPhotoItem *)self type];
  [coderCopy encodeObject:type forKey:@"type"];
}

- (LNPhotoItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LNPhotoItem *)self initWithIdentifier:v5 type:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_20:

      goto LABEL_21;
    }

    identifier = [(LNPhotoItem *)self identifier];
    identifier2 = [(LNPhotoItem *)v6 identifier];
    v9 = identifier;
    v10 = identifier2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    type = [(LNPhotoItem *)self type];
    type2 = [(LNPhotoItem *)v6 type];
    v14 = type;
    v17 = type2;
    v13 = v17;
    if (v14 == v17)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v14 && v17)
      {
        LOBYTE(v12) = [v14 isEqual:v17];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v12) = 1;
LABEL_21:

  return v12;
}

- (LNPhotoItem)initWithIdentifier:(id)identifier type:(id)type
{
  identifierCopy = identifier;
  typeCopy = type;
  v10 = typeCopy;
  if (identifierCopy)
  {
    if (typeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNPhotoItemCollection.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNPhotoItemCollection.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"type"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = LNPhotoItem;
  v11 = [(LNPhotoItem *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    objc_storeStrong(&v12->_type, type);
  }

  return v12;
}

@end