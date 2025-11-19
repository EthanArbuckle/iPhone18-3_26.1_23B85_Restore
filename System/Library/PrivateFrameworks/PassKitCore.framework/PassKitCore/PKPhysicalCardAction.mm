@interface PKPhysicalCardAction
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPhysicalCardAction:(id)a3;
- (PKPhysicalCardAction)initWithActionType:(unint64_t)a3;
- (PKPhysicalCardAction)initWithCoder:(id)a3;
- (id)_shippingAddressJSONRepresentation;
- (id)jsonRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPhysicalCardAction

- (PKPhysicalCardAction)initWithActionType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKPhysicalCardAction;
  result = [(PKPhysicalCardAction *)&v5 init];
  if (result)
  {
    result->_actionType = a3;
  }

  return result;
}

- (PKPhysicalCardAction)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKPhysicalCardAction;
  v5 = [(PKPhysicalCardAction *)&v17 init];
  if (v5)
  {
    v5->_actionType = [v4 decodeIntegerForKey:@"action"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activationCode"];
    activationCode = v5->_activationCode;
    v5->_activationCode = v6;

    v5->_reason = [v4 decodeIntegerForKey:@"reason"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"artworkIdentifier"];
    artworkIdentifier = v5->_artworkIdentifier;
    v5->_artworkIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shippingAddress"];
    shippingAddress = v5->_shippingAddress;
    v5->_shippingAddress = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    nameOnCard = v5->_nameOnCard;
    v5->_nameOnCard = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"priceOption"];
    priceOption = v5->_priceOption;
    v5->_priceOption = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  actionType = self->_actionType;
  v5 = a3;
  [v5 encodeInteger:actionType forKey:@"action"];
  [v5 encodeObject:self->_activationCode forKey:@"activationCode"];
  [v5 encodeInteger:self->_reason forKey:@"reason"];
  [v5 encodeObject:self->_artworkIdentifier forKey:@"artworkIdentifier"];
  [v5 encodeObject:self->_shippingAddress forKey:@"shippingAddress"];
  [v5 encodeObject:self->_nameOnCard forKey:@"name"];
  [v5 encodeObject:self->_priceOption forKey:@"priceOption"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPhysicalCardAction *)self isEqualToPhysicalCardAction:v5];
  }

  return v6;
}

- (BOOL)isEqualToPhysicalCardAction:(id)a3
{
  v4 = a3;
  v5 = v4[2];
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

  v11 = v4[4];
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
  v17 = v4[5];
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
  v19 = v4[6];
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
  v21 = v4[7];
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

  if (self->_actionType == v4[1])
  {
    v14 = self->_reason == v4[3];
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
    v9 = [(PKPhysicalCardAction *)self _shippingAddressJSONRepresentation];
    [v4 setObject:v9 forKeyedSubscript:@"shippingAddress"];

    [v4 setObject:self->_nameOnCard forKeyedSubscript:@"name"];
    v10 = [(PKPhysicalCardPriceOption *)self->_priceOption jsonDictionaryRepresentation];
    [v4 setObject:v10 forKeyedSubscript:@"priceOption"];
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
    v4 = [(CNPostalAddress *)self->_shippingAddress street];
    v5 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v6 = [v4 componentsSeparatedByCharactersInSet:v5];

    v7 = [v6 firstObject];
    [v3 setObject:v7 forKeyedSubscript:@"addressLine1"];

    if ([v6 count] >= 2)
    {
      v8 = [v6 objectAtIndexedSubscript:1];
      [v3 setObject:v8 forKeyedSubscript:@"addressLine2"];
    }

    v9 = [(CNPostalAddress *)self->_shippingAddress city];
    [v3 setObject:v9 forKeyedSubscript:@"city"];

    v10 = [(CNPostalAddress *)self->_shippingAddress state];
    [v3 setObject:v10 forKeyedSubscript:@"state"];

    v11 = [(CNPostalAddress *)self->_shippingAddress postalCode];
    [v3 setObject:v11 forKeyedSubscript:@"postalCode"];

    v12 = [(CNPostalAddress *)self->_shippingAddress ISOCountryCode];
    [v3 setObject:v12 forKeyedSubscript:@"countryCode"];

    v13 = [v3 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end