@interface PKPassTileStateDefaultV2
- (BOOL)_setUpWithDictionary:(id)dictionary;
- (BOOL)isEqualToUnresolvedState:(id)state;
- (PKPassTileStateDefaultV2)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createResolvedStateWithBundle:(id)bundle privateBundle:(id)privateBundle;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileStateDefaultV2

- (BOOL)_setUpWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = PKPassTileStateDefaultV2;
  if ([(PKPassTileState *)&v26 _setUpWithDictionary:dictionaryCopy])
  {
    v5 = [dictionaryCopy PKDictionaryForKey:@"title"];
    v6 = [PKPassTileValue _createForDictionary:v5];
    title = self->_title;
    self->_title = v6;

    v8 = [dictionaryCopy PKDictionaryForKey:@"body"];
    v9 = [PKPassTileValue _createForDictionary:v8];
    body = self->_body;
    self->_body = v9;

    v11 = [dictionaryCopy PKDictionaryForKey:@"bodyImage"];
    v12 = [PKPassTileImage _createForDictionary:v11];
    bodyImage = self->_bodyImage;
    self->_bodyImage = v12;

    if (self->_body || self->_bodyImage)
    {
      v14 = [dictionaryCopy PKDictionaryForKey:@"footer"];
      v15 = [PKPassTileValue _createForDictionary:v14];
      footer = self->_footer;
      self->_footer = v15;

      v17 = [dictionaryCopy PKDictionaryForKey:@"accessory"];
      if (v17 && (v18 = [PKPassTileAccessory _createForDictionary:v17], accessory = self->_accessory, self->_accessory = v18, accessory, !self->_accessory))
      {
        v24 = 0;
      }

      else
      {
        v20 = [dictionaryCopy PKDictionaryForKey:@"secondaryAccessory"];
        if (v20 && (v21 = [PKPassTileAccessory _createForDictionary:v20], secondaryAccessory = self->_secondaryAccessory, self->_secondaryAccessory = v21, secondaryAccessory, !self->_secondaryAccessory))
        {
          v24 = 0;
        }

        else
        {
          v23 = [dictionaryCopy PKStringForKey:@"preferredStyle"];
          self->_preferredStyle = PKPassTileStateStyleFromString(v23);

          v24 = 1;
        }
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PKPassTileStateDefaultV2;
  v4 = [(PKPassTileState *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 8, self->_title);
  objc_storeStrong(v4 + 9, self->_body);
  objc_storeStrong(v4 + 10, self->_bodyImage);
  objc_storeStrong(v4 + 11, self->_footer);
  v4[12] = self->_preferredStyle;
  objc_storeStrong(v4 + 13, self->_accessory);
  objc_storeStrong(v4 + 14, self->_secondaryAccessory);
  return v4;
}

- (id)createResolvedStateWithBundle:(id)bundle privateBundle:(id)privateBundle
{
  v22.receiver = self;
  v22.super_class = PKPassTileStateDefaultV2;
  privateBundleCopy = privateBundle;
  bundleCopy = bundle;
  v8 = [(PKPassTileState *)&v22 createResolvedStateWithBundle:bundleCopy privateBundle:privateBundleCopy];
  v9 = [(PKPassTileValue *)self->_title createResolvedValueWithBundle:bundleCopy privateBundle:privateBundleCopy, v22.receiver, v22.super_class];
  v10 = v8[8];
  v8[8] = v9;

  v11 = [(PKPassTileValue *)self->_body createResolvedValueWithBundle:bundleCopy privateBundle:privateBundleCopy];
  v12 = v8[9];
  v8[9] = v11;

  v13 = [(PKPassTileImage *)self->_bodyImage createResolvedImageWithBundle:bundleCopy privateBundle:privateBundleCopy];
  v14 = v8[10];
  v8[10] = v13;

  v15 = [(PKPassTileValue *)self->_footer createResolvedValueWithBundle:bundleCopy privateBundle:privateBundleCopy];
  v16 = v8[11];
  v8[11] = v15;

  v8[12] = self->_preferredStyle;
  v17 = [(PKPassTileAccessory *)self->_accessory createResolvedAccessoryWithBundle:bundleCopy privateBundle:privateBundleCopy];
  v18 = v8[13];
  v8[13] = v17;

  v19 = [(PKPassTileAccessory *)self->_secondaryAccessory createResolvedAccessoryWithBundle:bundleCopy privateBundle:privateBundleCopy];
  v20 = v8[14];
  v8[14] = v19;

  return v8;
}

- (PKPassTileStateDefaultV2)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = PKPassTileStateDefaultV2;
  v5 = [(PKPassTileState *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    body = v5->_body;
    v5->_body = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bodyImage"];
    bodyImage = v5->_bodyImage;
    v5->_bodyImage = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"footer"];
    footer = v5->_footer;
    v5->_footer = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredStyle"];
    v5->_preferredStyle = PKPassTileStateStyleFromString(v14);

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
    accessory = v5->_accessory;
    v5->_accessory = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryAccessory"];
    secondaryAccessory = v5->_secondaryAccessory;
    v5->_secondaryAccessory = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKPassTileStateDefaultV2;
  [(PKPassTileState *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_body forKey:@"body"];
  [coderCopy encodeObject:self->_bodyImage forKey:@"bodyImage"];
  [coderCopy encodeObject:self->_footer forKey:@"footer"];
  v5 = self->_preferredStyle - 1;
  if (v5 > 4)
  {
    v6 = @"twoLineDefault";
  }

  else
  {
    v6 = off_1E79CDB40[v5];
  }

  [coderCopy encodeObject:v6 forKey:@"preferredStyle"];
  [coderCopy encodeObject:self->_accessory forKey:@"accessory"];
  [coderCopy encodeObject:self->_secondaryAccessory forKey:@"secondaryAccessory"];
}

- (BOOL)isEqualToUnresolvedState:(id)state
{
  stateCopy = state;
  v23.receiver = self;
  v23.super_class = PKPassTileStateDefaultV2;
  if ([(PKPassTileState *)&v23 isEqualToUnresolvedState:stateCopy])
  {
    v5 = stateCopy;
    v6 = v5[8];
    title = self->_title;
    if (v6)
    {
      v8 = title == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (v6 != title)
      {
        goto LABEL_40;
      }
    }

    else if (![(PKPassTileValue *)v6 isEqual:?])
    {
      goto LABEL_40;
    }

    v10 = v5[9];
    body = self->_body;
    if (v10)
    {
      v12 = body == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (v10 != body)
      {
        goto LABEL_40;
      }
    }

    else if (![(PKPassTileValue *)v10 isEqual:?])
    {
      goto LABEL_40;
    }

    v13 = v5[10];
    bodyImage = self->_bodyImage;
    if (v13)
    {
      v15 = bodyImage == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (v13 != bodyImage)
      {
        goto LABEL_40;
      }
    }

    else if (![(PKPassTileImage *)v13 isEqual:?])
    {
      goto LABEL_40;
    }

    v16 = v5[11];
    footer = self->_footer;
    if (v16 && footer)
    {
      if (![(PKPassTileValue *)v16 isEqual:?])
      {
        goto LABEL_40;
      }
    }

    else if (v16 != footer)
    {
      goto LABEL_40;
    }

    if (v5[12] == self->_preferredStyle)
    {
      v18 = v5[13];
      accessory = self->_accessory;
      if (v18)
      {
        if (!accessory || ([v18 isEqualToUnresolvedAccessory:?] & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_36:
        v20 = v5[14];
        secondaryAccessory = self->_secondaryAccessory;
        if (v20 && secondaryAccessory)
        {
          v9 = [(PKPassTileAccessory *)v20 isEqualToUnresolvedAccessory:?];
        }

        else
        {
          v9 = v20 == secondaryAccessory;
        }

        goto LABEL_41;
      }

      if (!accessory)
      {
        goto LABEL_36;
      }
    }

LABEL_40:
    v9 = 0;
LABEL_41:

    goto LABEL_42;
  }

  v9 = 0;
LABEL_42:

  return v9;
}

@end