@interface PKPassTileStateDefault
- (BOOL)_setUpWithDictionary:(id)dictionary;
- (BOOL)isEqualToUnresolvedState:(id)state;
- (PKPassTileStateDefault)initWithCoder:(id)coder;
- (id)createResolvedStateWithBundle:(id)bundle privateBundle:(id)privateBundle;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileStateDefault

- (BOOL)_setUpWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = PKPassTileStateDefault;
  if (-[PKPassTileState _setUpWithDictionary:](&v17, sel__setUpWithDictionary_, dictionaryCopy) && ([dictionaryCopy PKStringForKey:@"title"], v5 = objc_claimAutoreleasedReturnValue(), title = self->_title, self->_title = v5, title, objc_msgSend(dictionaryCopy, "PKStringForKey:", @"body"), v7 = objc_claimAutoreleasedReturnValue(), body = self->_body, self->_body = v7, body, self->_body))
  {
    v9 = [dictionaryCopy PKDictionaryForKey:@"accessory"];
    if (v9 && (v10 = [PKPassTileAccessory _createForDictionary:v9], accessory = self->_accessory, self->_accessory = v10, accessory, !self->_accessory))
    {
      v15 = 0;
    }

    else
    {
      v12 = [dictionaryCopy PKDictionaryForKey:@"secondaryAccessory"];
      v15 = 1;
      if (v12)
      {
        v13 = [PKPassTileAccessory _createForDictionary:v12];
        secondaryAccessory = self->_secondaryAccessory;
        self->_secondaryAccessory = v13;

        if (!self->_secondaryAccessory)
        {
          v15 = 0;
        }
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)createResolvedStateWithBundle:(id)bundle privateBundle:(id)privateBundle
{
  v18.receiver = self;
  v18.super_class = PKPassTileStateDefault;
  privateBundleCopy = privateBundle;
  bundleCopy = bundle;
  v8 = [(PKPassTileState *)&v18 createResolvedStateWithBundle:bundleCopy privateBundle:privateBundleCopy];
  v9 = PKLocalizedPassStringForPassBundle(self->_title, bundleCopy, privateBundleCopy);
  v10 = v8[8];
  v8[8] = v9;

  v11 = PKLocalizedPassStringForPassBundle(self->_body, bundleCopy, privateBundleCopy);
  v12 = v8[9];
  v8[9] = v11;

  v13 = [(PKPassTileAccessory *)self->_accessory createResolvedAccessoryWithBundle:bundleCopy privateBundle:privateBundleCopy, v18.receiver, v18.super_class];
  v14 = v8[10];
  v8[10] = v13;

  v15 = [(PKPassTileAccessory *)self->_secondaryAccessory createResolvedAccessoryWithBundle:bundleCopy privateBundle:privateBundleCopy];
  v16 = v8[11];
  v8[11] = v15;

  return v8;
}

- (PKPassTileStateDefault)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKPassTileStateDefault;
  v5 = [(PKPassTileState *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    body = v5->_body;
    v5->_body = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
    accessory = v5->_accessory;
    v5->_accessory = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryAccessory"];
    secondaryAccessory = v5->_secondaryAccessory;
    v5->_secondaryAccessory = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassTileStateDefault;
  coderCopy = coder;
  [(PKPassTileState *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_title forKey:{@"title", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_body forKey:@"body"];
  [coderCopy encodeObject:self->_accessory forKey:@"accessory"];
  [coderCopy encodeObject:self->_secondaryAccessory forKey:@"secondaryAccessory"];
}

- (BOOL)isEqualToUnresolvedState:(id)state
{
  stateCopy = state;
  v22.receiver = self;
  v22.super_class = PKPassTileStateDefault;
  if ([(PKPassTileState *)&v22 isEqualToUnresolvedState:stateCopy])
  {
    v5 = stateCopy;
    title = self->_title;
    v7 = v5[8];
    v8 = title;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
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
        goto LABEL_17;
      }

      v11 = [(NSString *)v7 isEqualToString:v8];

      if (!v11)
      {
        goto LABEL_18;
      }
    }

    body = self->_body;
    v7 = v5[9];
    v14 = body;
    v9 = v14;
    if (v7 == v14)
    {

LABEL_23:
      v18 = v5[10];
      accessory = self->_accessory;
      if (v18)
      {
        if (!accessory || ([v18 isEqualToUnresolvedAccessory:?] & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_28:
        v20 = v5[11];
        secondaryAccessory = self->_secondaryAccessory;
        if (v20 && secondaryAccessory)
        {
          v12 = [(PKPassTileAccessory *)v20 isEqualToUnresolvedAccessory:?];
        }

        else
        {
          v12 = v20 == secondaryAccessory;
        }

        goto LABEL_19;
      }

      if (!accessory)
      {
        goto LABEL_28;
      }

LABEL_18:
      v12 = 0;
LABEL_19:

      goto LABEL_20;
    }

    if (v7)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v17 = [(NSString *)v7 isEqualToString:v14];

      if (!v17)
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

LABEL_17:

    goto LABEL_18;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

@end