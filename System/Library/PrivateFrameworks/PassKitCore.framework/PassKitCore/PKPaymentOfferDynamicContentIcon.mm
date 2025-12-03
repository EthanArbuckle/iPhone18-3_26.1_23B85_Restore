@interface PKPaymentOfferDynamicContentIcon
- (BOOL)isEqual:(id)equal;
- (PKPaymentOfferDynamicContentIcon)initWithCoder:(id)coder;
- (PKPaymentOfferDynamicContentIcon)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)urlForScreenScale:(double)scale appearance:(int64_t)appearance;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentOfferDynamicContentIcon

- (PKPaymentOfferDynamicContentIcon)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[PKPaymentOfferDynamicContentIconVariant alloc] initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKDictionaryForKey:@"darkVariant"];
    v7 = [dictionaryCopy PKDictionaryForKey:@"lightVariant"];
    v16.receiver = self;
    v16.super_class = PKPaymentOfferDynamicContentIcon;
    v8 = [(PKPaymentOfferDynamicContentIcon *)&v16 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_defaultVariant, v5);
      if (v6)
      {
        v10 = [[PKPaymentOfferDynamicContentIconVariant alloc] initWithDictionary:v6];
        darkVariant = v9->_darkVariant;
        v9->_darkVariant = v10;
      }

      if (v7)
      {
        v12 = [[PKPaymentOfferDynamicContentIconVariant alloc] initWithDictionary:v7];
        lightVariant = v9->_lightVariant;
        v9->_lightVariant = v12;
      }
    }

    self = v9;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  dictionaryRepresentation = [(PKPaymentOfferDynamicContentIconVariant *)self->_defaultVariant dictionaryRepresentation];
  [v3 addEntriesFromDictionary:dictionaryRepresentation];

  darkVariant = self->_darkVariant;
  if (darkVariant)
  {
    dictionaryRepresentation2 = [(PKPaymentOfferDynamicContentIconVariant *)darkVariant dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKeyedSubscript:@"darkVariant"];
  }

  lightVariant = self->_lightVariant;
  if (lightVariant)
  {
    dictionaryRepresentation3 = [(PKPaymentOfferDynamicContentIconVariant *)lightVariant dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKeyedSubscript:@"lightVariant"];
  }

  v9 = [v3 copy];

  return v9;
}

- (id)urlForScreenScale:(double)scale appearance:(int64_t)appearance
{
  v7 = [(PKPaymentOfferDynamicContentIconVariant *)self->_defaultVariant urlForScreenScale:?];
  v8 = v7;
  if (appearance == 2)
  {
    darkVariant = self->_darkVariant;
    goto LABEL_6;
  }

  if (appearance == 1)
  {
    darkVariant = self->_lightVariant;
LABEL_6:
    v11 = [(PKPaymentOfferDynamicContentIconVariant *)darkVariant urlForScreenScale:scale];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    v9 = v13;

    goto LABEL_10;
  }

  v9 = v7;
LABEL_10:

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        defaultVariant = self->_defaultVariant;
        v8 = v6->_defaultVariant;
        if (defaultVariant && v8)
        {
          if (![(PKPaymentOfferDynamicContentIconVariant *)defaultVariant isEqual:?])
          {
            goto LABEL_18;
          }
        }

        else if (defaultVariant != v8)
        {
          goto LABEL_18;
        }

        lightVariant = self->_lightVariant;
        v11 = v6->_lightVariant;
        if (lightVariant && v11)
        {
          if ([(PKPaymentOfferDynamicContentIconVariant *)lightVariant isEqual:?])
          {
LABEL_14:
            darkVariant = self->_darkVariant;
            v13 = v6->_darkVariant;
            if (darkVariant && v13)
            {
              v9 = [(PKPaymentOfferDynamicContentIconVariant *)darkVariant isEqual:?];
            }

            else
            {
              v9 = darkVariant == v13;
            }

            goto LABEL_19;
          }
        }

        else if (lightVariant == v11)
        {
          goto LABEL_14;
        }

LABEL_18:
        v9 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v9 = 0;
  }

LABEL_20:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_defaultVariant];
  [v3 safelyAddObject:self->_lightVariant];
  [v3 safelyAddObject:self->_darkVariant];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  if (self->_defaultVariant)
  {
    [v3 appendFormat:@"defaultVariant: '%@'; ", self->_defaultVariant];
  }

  if (self->_lightVariant)
  {
    [v3 appendFormat:@"lightVariant: '%@'; ", self->_lightVariant];
  }

  if (self->_darkVariant)
  {
    [v3 appendFormat:@"darkVariant: '%@'; ", self->_darkVariant];
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferDynamicContentIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKPaymentOfferDynamicContentIcon;
  v5 = [(PKPaymentOfferDynamicContentIcon *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultVariant"];
    defaultVariant = v5->_defaultVariant;
    v5->_defaultVariant = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lightVariant"];
    lightVariant = v5->_lightVariant;
    v5->_lightVariant = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"darkVariant"];
    darkVariant = v5->_darkVariant;
    v5->_darkVariant = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  defaultVariant = self->_defaultVariant;
  coderCopy = coder;
  [coderCopy encodeObject:defaultVariant forKey:@"defaultVariant"];
  [coderCopy encodeObject:self->_lightVariant forKey:@"lightVariant"];
  [coderCopy encodeObject:self->_darkVariant forKey:@"darkVariant"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentOfferDynamicContentIcon allocWithZone:](PKPaymentOfferDynamicContentIcon init];
  v6 = [(PKPaymentOfferDynamicContentIconVariant *)self->_defaultVariant copyWithZone:zone];
  defaultVariant = v5->_defaultVariant;
  v5->_defaultVariant = v6;

  v8 = [(PKPaymentOfferDynamicContentIconVariant *)self->_lightVariant copyWithZone:zone];
  lightVariant = v5->_lightVariant;
  v5->_lightVariant = v8;

  v10 = [(PKPaymentOfferDynamicContentIconVariant *)self->_darkVariant copyWithZone:zone];
  darkVariant = v5->_darkVariant;
  v5->_darkVariant = v10;

  return v5;
}

@end