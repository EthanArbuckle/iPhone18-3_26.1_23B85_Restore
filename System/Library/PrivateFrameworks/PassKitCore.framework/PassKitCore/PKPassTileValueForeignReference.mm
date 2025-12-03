@interface PKPassTileValueForeignReference
- (BOOL)_isEqual:(id)equal;
- (BOOL)_setUpWithDictionary:(id)dictionary;
- (PKPassTileValueForeignReference)initWithCoder:(id)coder;
- (id)createResolvedValueWithBundle:(id)bundle privateBundle:(id)privateBundle;
- (id)displayableStringWithPassState:(id)state inContext:(int64_t)context;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileValueForeignReference

- (BOOL)_setUpWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PKPassTileValueForeignReference;
  if (-[PKPassTileValue _setUpWithDictionary:](&v10, sel__setUpWithDictionary_, dictionaryCopy) && ([dictionaryCopy PKStringForKey:@"content"], v5 = objc_claimAutoreleasedReturnValue(), content = self->_content, self->_content = v5, content, self->_content))
  {
    v7 = [dictionaryCopy PKStringForKey:@"foreignReferenceType"];
    v8 = PKPassTileForeignReferenceTypeFromString(v7);
    self->_foreignReferenceType = v8;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)createResolvedValueWithBundle:(id)bundle privateBundle:(id)privateBundle
{
  v7.receiver = self;
  v7.super_class = PKPassTileValueForeignReference;
  v5 = [(PKPassTileValue *)&v7 createResolvedValueWithBundle:bundle privateBundle:privateBundle];
  objc_storeStrong(v5 + 3, self->_content);
  v5[4] = self->_foreignReferenceType;
  return v5;
}

- (id)displayableStringWithPassState:(id)state inContext:(int64_t)context
{
  stateCopy = state;
  v7 = stateCopy;
  if (self->_foreignReferenceType != 1 || !self->_content)
  {
    v11 = 0;
    goto LABEL_14;
  }

  balanceModel = [stateCopy balanceModel];
  v9 = [balanceModel balanceForIdentifier:self->_content];

  if (v9)
  {
    switch(context)
    {
      case 2:
        localizedDescription = [v9 localizedDescription];
        goto LABEL_12;
      case 1:
        localizedDescription = [v9 formattedValue];
        goto LABEL_12;
      case 0:
        localizedDescription = [v9 localizedTitle];
LABEL_12:
        v11 = localizedDescription;
        goto LABEL_13;
    }
  }

  v11 = 0;
LABEL_13:

LABEL_14:

  return v11;
}

- (PKPassTileValueForeignReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKPassTileValueForeignReference;
  v5 = [(PKPassTileValue *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    content = v5->_content;
    v5->_content = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"foreignReferenceType"];
    v5->_foreignReferenceType = PKPassTileForeignReferenceTypeFromString(v8);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PKPassTileValueForeignReference;
  coderCopy = coder;
  [(PKPassTileValue *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_content forKey:{@"content", v6.receiver, v6.super_class}];
  if (self->_foreignReferenceType == 1)
  {
    v5 = @"balance";
  }

  else
  {
    v5 = 0;
  }

  [coderCopy encodeObject:v5 forKey:@"foreignReferenceType"];
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = PKPassTileValueForeignReference;
  v7 = [(PKPassTileValue *)&v6 hash];
  v3 = [(NSString *)self->_content hash];
  foreignReferenceType = self->_foreignReferenceType;
  v8 = v3;
  v9 = foreignReferenceType;
  return SipHash();
}

- (BOOL)_isEqual:(id)equal
{
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = PKPassTileValueForeignReference;
  if ([(PKPassTileValue *)&v14 _isEqual:equalCopy])
  {
    v5 = equalCopy;
    content = self->_content;
    v7 = v5[3];
    v8 = content;
    v9 = v8;
    if (v7 != v8)
    {
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
      }

      else
      {
        v12 = [(NSString *)v7 isEqualToString:v8];

        if (v12)
        {
          goto LABEL_12;
        }
      }

      v11 = 0;
      goto LABEL_14;
    }

LABEL_12:
    v11 = v5[4] == self->_foreignReferenceType;
LABEL_14:

    goto LABEL_15;
  }

  v11 = 0;
LABEL_15:

  return v11;
}

@end