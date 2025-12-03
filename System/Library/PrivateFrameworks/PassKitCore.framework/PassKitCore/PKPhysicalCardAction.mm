@interface PKPhysicalCardAction
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPhysicalCardAction:(id)action;
- (PKPhysicalCardAction)initWithActionType:(unint64_t)type;
- (PKPhysicalCardAction)initWithCoder:(id)coder;
- (id)_shippingAddressJSONRepresentation;
- (id)jsonRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPhysicalCardAction

- (PKPhysicalCardAction)initWithActionType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PKPhysicalCardAction;
  result = [(PKPhysicalCardAction *)&v5 init];
  if (result)
  {
    result->_actionType = type;
  }

  return result;
}

- (PKPhysicalCardAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKPhysicalCardAction;
  v5 = [(PKPhysicalCardAction *)&v17 init];
  if (v5)
  {
    v5->_actionType = [coderCopy decodeIntegerForKey:@"action"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activationCode"];
    activationCode = v5->_activationCode;
    v5->_activationCode = v6;

    v5->_reason = [coderCopy decodeIntegerForKey:@"reason"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artworkIdentifier"];
    artworkIdentifier = v5->_artworkIdentifier;
    v5->_artworkIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shippingAddress"];
    shippingAddress = v5->_shippingAddress;
    v5->_shippingAddress = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    nameOnCard = v5->_nameOnCard;
    v5->_nameOnCard = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"priceOption"];
    priceOption = v5->_priceOption;
    v5->_priceOption = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  actionType = self->_actionType;
  coderCopy = coder;
  [coderCopy encodeInteger:actionType forKey:@"action"];
  [coderCopy encodeObject:self->_activationCode forKey:@"activationCode"];
  [coderCopy encodeInteger:self->_reason forKey:@"reason"];
  [coderCopy encodeObject:self->_artworkIdentifier forKey:@"artworkIdentifier"];
  [coderCopy encodeObject:self->_shippingAddress forKey:@"shippingAddress"];
  [coderCopy encodeObject:self->_nameOnCard forKey:@"name"];
  [coderCopy encodeObject:self->_priceOption forKey:@"priceOption"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPhysicalCardAction *)self isEqualToPhysicalCardAction:v5];
  }

  return v6;
}

- (BOOL)isEqualToPhysicalCardAction:(id)action
{
  actionCopy = action;
  v5 = actionCopy[2];
  v6 = self->_activationCode;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_14;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_15;
    }
  }

  v11 = actionCopy[4];
  v6 = self->_artworkIdentifier;
  v12 = v11;
  v8 = v12;
  if (v6 != v12)
  {
    if (v6 && v12)
    {
      v13 = [(NSString *)v6 isEqualToString:v12];

      if (!v13)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_18:
  shippingAddress = self->_shippingAddress;
  v17 = actionCopy[5];
  if (shippingAddress && v17)
  {
    if (([(CNPostalAddress *)shippingAddress isEqual:?]& 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (shippingAddress != v17)
  {
    goto LABEL_15;
  }

  nameOnCard = self->_nameOnCard;
  v19 = actionCopy[6];
  if (nameOnCard && v19)
  {
    if (([(NSString *)nameOnCard isEqual:?]& 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (nameOnCard != v19)
  {
    goto LABEL_15;
  }

  priceOption = self->_priceOption;
  v21 = actionCopy[7];
  if (priceOption && v21)
  {
    if (![(PKPhysicalCardPriceOption *)priceOption isEqual:?])
    {
      goto LABEL_15;
    }
  }

  else if (priceOption != v21)
  {
    goto LABEL_15;
  }

  if (self->_actionType == actionCopy[1])
  {
    v14 = self->_reason == actionCopy[3];
    goto LABEL_16;
  }

LABEL_15:
  v14 = 0;
LABEL_16:

  return v14;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_activationCode];
  [v3 safelyAddObject:self->_artworkIdentifier];
  [v3 safelyAddObject:self->_shippingAddress];
  [v3 safelyAddObject:self->_nameOnCard];
  [v3 safelyAddObject:self->_priceOption];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_actionType - v4 + 32 * v4;
  v6 = self->_reason - v5 + 32 * v5;

  return v6;
}

- (id)jsonRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  v5 = self->_actionType - 1;
  if (v5 > 4)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79C51C8[v5];
  }

  [v3 setObject:v6 forKeyedSubscript:@"action"];
  actionType = self->_actionType;
  if (actionType == 5)
  {
    v8 = PKStringFromPhysicalCardOrderReason(self->_reason);
    [v4 setObject:v8 forKeyedSubscript:@"reason"];

    [v4 setObject:self->_artworkIdentifier forKeyedSubscript:@"artworkIdentifier"];
    _shippingAddressJSONRepresentation = [(PKPhysicalCardAction *)self _shippingAddressJSONRepresentation];
    [v4 setObject:_shippingAddressJSONRepresentation forKeyedSubscript:@"shippingAddress"];

    [v4 setObject:self->_nameOnCard forKeyedSubscript:@"name"];
    jsonDictionaryRepresentation = [(PKPhysicalCardPriceOption *)self->_priceOption jsonDictionaryRepresentation];
    [v4 setObject:jsonDictionaryRepresentation forKeyedSubscript:@"priceOption"];
  }

  else if (actionType == 4)
  {
    [v4 setObject:self->_activationCode forKeyedSubscript:@"activationCode"];
  }

  v11 = [v4 copy];

  return v11;
}

- (id)_shippingAddressJSONRepresentation
{
  if (self->_shippingAddress)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    street = [(CNPostalAddress *)self->_shippingAddress street];
    newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v6 = [street componentsSeparatedByCharactersInSet:newlineCharacterSet];

    firstObject = [v6 firstObject];
    [v3 setObject:firstObject forKeyedSubscript:@"addressLine1"];

    if ([v6 count] >= 2)
    {
      v8 = [v6 objectAtIndexedSubscript:1];
      [v3 setObject:v8 forKeyedSubscript:@"addressLine2"];
    }

    city = [(CNPostalAddress *)self->_shippingAddress city];
    [v3 setObject:city forKeyedSubscript:@"city"];

    state = [(CNPostalAddress *)self->_shippingAddress state];
    [v3 setObject:state forKeyedSubscript:@"state"];

    postalCode = [(CNPostalAddress *)self->_shippingAddress postalCode];
    [v3 setObject:postalCode forKeyedSubscript:@"postalCode"];

    iSOCountryCode = [(CNPostalAddress *)self->_shippingAddress ISOCountryCode];
    [v3 setObject:iSOCountryCode forKeyedSubscript:@"countryCode"];

    v13 = [v3 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end