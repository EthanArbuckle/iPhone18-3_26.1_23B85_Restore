@interface PKPassTileValueForeignReference
- (BOOL)_isEqual:(id)a3;
- (BOOL)_setUpWithDictionary:(id)a3;
- (PKPassTileValueForeignReference)initWithCoder:(id)a3;
- (id)createResolvedValueWithBundle:(id)a3 privateBundle:(id)a4;
- (id)displayableStringWithPassState:(id)a3 inContext:(int64_t)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassTileValueForeignReference

- (BOOL)_setUpWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPassTileValueForeignReference;
  if (-[PKPassTileValue _setUpWithDictionary:](&v10, sel__setUpWithDictionary_, v4) && ([v4 PKStringForKey:@"content"], v5 = objc_claimAutoreleasedReturnValue(), content = self->_content, self->_content = v5, content, self->_content))
  {
    v7 = [v4 PKStringForKey:@"foreignReferenceType"];
    v8 = PKPassTileForeignReferenceTypeFromString(v7);
    self->_foreignReferenceType = v8;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)createResolvedValueWithBundle:(id)a3 privateBundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = PKPassTileValueForeignReference;
  v5 = [(PKPassTileValue *)&v7 createResolvedValueWithBundle:a3 privateBundle:a4];
  objc_storeStrong(v5 + 3, self->_content);
  v5[4] = self->_foreignReferenceType;
  return v5;
}

- (id)displayableStringWithPassState:(id)a3 inContext:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_foreignReferenceType != 1 || !self->_content)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v8 = [v6 balanceModel];
  v9 = [v8 balanceForIdentifier:self->_content];

  if (v9)
  {
    switch(a4)
    {
      case 2:
        v10 = [v9 localizedDescription];
        goto LABEL_12;
      case 1:
        v10 = [v9 formattedValue];
        goto LABEL_12;
      case 0:
        v10 = [v9 localizedTitle];
LABEL_12:
        v11 = v10;
        goto LABEL_13;
    }
  }

  v11 = 0;
LABEL_13:

LABEL_14:

  return v11;
}

- (PKPassTileValueForeignReference)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPassTileValueForeignReference;
  v5 = [(PKPassTileValue *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    content = v5->_content;
    v5->_content = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foreignReferenceType"];
    v5->_foreignReferenceType = PKPassTileForeignReferenceTypeFromString(v8);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKPassTileValueForeignReference;
  v4 = a3;
  [(PKPassTileValue *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_content forKey:{@"content", v6.receiver, v6.super_class}];
  if (self->_foreignReferenceType == 1)
  {
    v5 = @"balance";
  }

  else
  {
    v5 = 0;
  }

  [v4 encodeObject:v5 forKey:@"foreignReferenceType"];
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

- (BOOL)_isEqual:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPassTileValueForeignReference;
  if ([(PKPassTileValue *)&v14 _isEqual:v4])
  {
    v5 = v4;
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