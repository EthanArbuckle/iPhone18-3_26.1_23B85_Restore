@interface PKPaymentTransactionRewardsItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRewardsItem:(id)item;
- (PKPaymentTransactionRewardsItem)initWithCoder:(id)coder;
- (PKPaymentTransactionRewardsItem)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)jsonDictionaryRepresentation;
- (unint64_t)hash;
- (void)_initWithRewardsDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentTransactionRewardsItem

- (PKPaymentTransactionRewardsItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v9.receiver = self;
    v9.super_class = PKPaymentTransactionRewardsItem;
    v5 = [(PKPaymentTransactionRewardsItem *)&v9 init];
    v6 = v5;
    if (v5)
    {
      [(PKPaymentTransactionRewardsItem *)v5 _initWithRewardsDictionary:dictionaryCopy];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_initWithRewardsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [dictionaryCopy objectForKey:@"category"];
  self->_type = PKPaymentTransactionRewardsItemTypeFromString(v7);

  v8 = [dictionaryCopy objectForKey:@"state"];
  self->_state = PKPaymentTransactionRewardsItemStateFromString(v8);

  v9 = [dictionaryCopy objectForKey:@"eligibleValueUnit"];
  self->_eligibleValueUnit = PKPaymentTransactionRewardsItemValueUnitFromString(v9);

  v10 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"eligibleValue"];
  eligibleValue = self->_eligibleValue;
  self->_eligibleValue = v10;

  v12 = [dictionaryCopy objectForKey:@"promotionName"];
  promotionName = self->_promotionName;
  self->_promotionName = v12;

  v14 = [dictionaryCopy objectForKey:@"promotionIdentifier"];
  promotionIdentifier = self->_promotionIdentifier;
  self->_promotionIdentifier = v14;

  v16 = [dictionaryCopy objectForKey:@"programId"];
  programIdentifier = self->_programIdentifier;
  self->_programIdentifier = v16;

  v23 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"amount"];
  v18 = [dictionaryCopy objectForKey:@"currencyCode"];

  if (v23)
  {
    notANumber = [MEMORY[0x1E696AB90] notANumber];
    v20 = [v23 isEqualToNumber:notANumber];

    if ((v20 & 1) == 0)
    {
      if (v18)
      {
        v21 = [[PKCurrencyAmount alloc] initWithAmount:v23 currency:v18 exponent:0];
        currencyAmount = self->_currencyAmount;
        self->_currencyAmount = v21;
      }
    }
  }
}

- (id)jsonDictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  currencyAmount = self->_currencyAmount;
  if (currencyAmount)
  {
    currency = [(PKCurrencyAmount *)currencyAmount currency];
    amount = [(PKCurrencyAmount *)self->_currencyAmount amount];
    if (currency)
    {
      [v4 setObject:currency forKey:@"currencyCode"];
    }

    if (amount)
    {
      stringValue = [amount stringValue];
      [v4 setObject:stringValue forKey:@"amount"];
    }
  }

  v10 = PKPaymentTransactionRewardsItemTypeToString(self->_type);
  [v4 setObject:v10 forKey:@"category"];

  v11 = self->_state - 1;
  v12 = @"unknown";
  if (v11 <= 3)
  {
    v12 = off_1E79C9F70[v11];
  }

  [v4 setObject:v12 forKey:@"state"];
  eligibleValue = self->_eligibleValue;
  if (eligibleValue)
  {
    stringValue2 = [(NSDecimalNumber *)eligibleValue stringValue];
    [v4 setObject:stringValue2 forKey:@"eligibleValue"];
  }

  eligibleValueUnit = self->_eligibleValueUnit;
  v16 = @"cash";
  if (eligibleValueUnit != 2)
  {
    v16 = @"unknown";
  }

  if (eligibleValueUnit == 1)
  {
    v17 = @"percent";
  }

  else
  {
    v17 = v16;
  }

  [v4 setObject:v17 forKey:@"eligibleValueUnit"];
  promotionName = self->_promotionName;
  if (promotionName)
  {
    [v4 setObject:promotionName forKey:@"promotionName"];
  }

  promotionIdentifier = self->_promotionIdentifier;
  if (promotionIdentifier)
  {
    [v4 setObject:promotionIdentifier forKey:@"promotionIdentifier"];
  }

  programIdentifier = self->_programIdentifier;
  if (programIdentifier)
  {
    [v4 setObject:programIdentifier forKey:@"programId"];
  }

  v21 = [v4 copy];

  return v21;
}

- (PKPaymentTransactionRewardsItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = PKPaymentTransactionRewardsItem;
  v5 = [(PKPaymentTransactionRewardsItem *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyAmount"];
    currencyAmount = v5->_currencyAmount;
    v5->_currencyAmount = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    v5->_type = PKPaymentTransactionRewardsItemTypeFromString(v10);

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    v5->_state = PKPaymentTransactionRewardsItemStateFromString(v11);

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eligibleValueUnit"];
    v5->_eligibleValueUnit = PKPaymentTransactionRewardsItemValueUnitFromString(v12);

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eligibleValue"];
    eligibleValue = v5->_eligibleValue;
    v5->_eligibleValue = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"promotionName"];
    promotionName = v5->_promotionName;
    v5->_promotionName = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"promotionIdentifier"];
    promotionIdentifier = v5->_promotionIdentifier;
    v5->_promotionIdentifier = v17;

    v5->_hasEnhancedMerchantProgramIdentifier = [coderCopy decodeBoolForKey:@"hasEnhancedMerchantProgramIdentifier"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"programId"];
    programIdentifier = v5->_programIdentifier;
    v5->_programIdentifier = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_currencyAmount forKey:@"currencyAmount"];
  v4 = PKPaymentTransactionRewardsItemTypeToString(self->_type);
  [coderCopy encodeObject:v4 forKey:@"category"];

  v5 = self->_state - 1;
  v6 = @"unknown";
  if (v5 <= 3)
  {
    v6 = off_1E79C9F70[v5];
  }

  [coderCopy encodeObject:v6 forKey:@"state"];
  eligibleValueUnit = self->_eligibleValueUnit;
  v8 = @"cash";
  if (eligibleValueUnit != 2)
  {
    v8 = @"unknown";
  }

  if (eligibleValueUnit == 1)
  {
    v9 = @"percent";
  }

  else
  {
    v9 = v8;
  }

  [coderCopy encodeObject:v9 forKey:@"eligibleValueUnit"];
  [coderCopy encodeObject:self->_eligibleValue forKey:@"eligibleValue"];
  [coderCopy encodeObject:self->_promotionName forKey:@"promotionName"];
  [coderCopy encodeObject:self->_promotionIdentifier forKey:@"promotionIdentifier"];
  [coderCopy encodeBool:self->_hasEnhancedMerchantProgramIdentifier forKey:@"hasEnhancedMerchantProgramIdentifier"];
  [coderCopy encodeObject:self->_programIdentifier forKey:@"programId"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(PKCurrencyAmount *)self->_currencyAmount copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  *(v5 + 24) = self->_type;
  *(v5 + 32) = self->_state;
  *(v5 + 56) = self->_eligibleValueUnit;
  v10 = [(NSDecimalNumber *)self->_eligibleValue copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSString *)self->_promotionName copyWithZone:zone];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  v14 = [(NSString *)self->_promotionIdentifier copyWithZone:zone];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  *(v5 + 8) = self->_hasEnhancedMerchantProgramIdentifier;
  v16 = [(NSString *)self->_programIdentifier copyWithZone:zone];
  v17 = *(v5 + 80);
  *(v5 + 80) = v16;

  return v5;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_currencyAmount];
  [array safelyAddObject:self->_eligibleValue];
  [array safelyAddObject:self->_promotionName];
  [array safelyAddObject:self->_promotionIdentifier];
  [array safelyAddObject:self->_programIdentifier];
  v4 = PKCombinedHash(17, array);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_state - v5 + 32 * v5;
  v7 = self->_eligibleValueUnit - v6 + 32 * v6;
  v8 = self->_hasEnhancedMerchantProgramIdentifier - v7 + 32 * v7;

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentTransactionRewardsItem *)self isEqualToRewardsItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToRewardsItem:(id)item
{
  itemCopy = item;
  identifier = self->_identifier;
  v6 = itemCopy[2];
  if (identifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (identifier != v6)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v8 = [(NSString *)identifier isEqual:?];
    if ((v8 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  currencyAmount = self->_currencyAmount;
  v10 = itemCopy[5];
  if (currencyAmount && v10)
  {
    if (![(PKCurrencyAmount *)currencyAmount isEqual:?])
    {
      goto LABEL_38;
    }
  }

  else if (currencyAmount != v10)
  {
    goto LABEL_38;
  }

  eligibleValue = self->_eligibleValue;
  v12 = itemCopy[6];
  if (eligibleValue && v12)
  {
    if (([(NSDecimalNumber *)eligibleValue isEqual:?]& 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (eligibleValue != v12)
  {
    goto LABEL_38;
  }

  v13 = itemCopy[8];
  v14 = self->_promotionName;
  v15 = v13;
  v16 = v15;
  if (v14 == v15)
  {
  }

  else
  {
    if (!v14 || !v15)
    {
      goto LABEL_37;
    }

    v17 = [(NSString *)v14 isEqualToString:v15];

    if (!v17)
    {
      goto LABEL_38;
    }
  }

  v18 = itemCopy[9];
  v14 = self->_promotionIdentifier;
  v19 = v18;
  v16 = v19;
  if (v14 == v19)
  {
  }

  else
  {
    if (!v14 || !v19)
    {
      goto LABEL_37;
    }

    v20 = [(NSString *)v14 isEqualToString:v19];

    if (!v20)
    {
      goto LABEL_38;
    }
  }

  if (self->_hasEnhancedMerchantProgramIdentifier != *(itemCopy + 8))
  {
    goto LABEL_38;
  }

  v21 = itemCopy[10];
  v14 = self->_programIdentifier;
  v22 = v21;
  v16 = v22;
  if (v14 != v22)
  {
    if (v14 && v22)
    {
      v23 = [(NSString *)v14 isEqualToString:v22];

      if (!v23)
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }

LABEL_37:

    goto LABEL_38;
  }

LABEL_41:
  if (self->_type == itemCopy[3] && self->_state == itemCopy[4])
  {
    v24 = self->_eligibleValueUnit == itemCopy[7];
    goto LABEL_39;
  }

LABEL_38:
  v24 = 0;
LABEL_39:

  return v24;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  v4 = PKPaymentTransactionRewardsItemTypeToString(self->_type);
  [v3 appendFormat:@"type: '%@'; ", v4];

  v5 = self->_state - 1;
  v6 = @"unknown";
  if (v5 <= 3)
  {
    v6 = off_1E79C9F70[v5];
  }

  [v3 appendFormat:@"state: '%@'; ", v6];
  [v3 appendFormat:@"currencyAmount: '%@'; ", self->_currencyAmount];
  [v3 appendFormat:@"eligible value: '%@'; ", self->_eligibleValue];
  eligibleValueUnit = self->_eligibleValueUnit;
  v8 = @"cash";
  if (eligibleValueUnit != 2)
  {
    v8 = @"unknown";
  }

  if (eligibleValueUnit == 1)
  {
    v9 = @"percent";
  }

  else
  {
    v9 = v8;
  }

  [v3 appendFormat:@"eligible value unit: '%@'; ", v9];
  [v3 appendFormat:@"promotion name: '%@'; ", self->_promotionName];
  [v3 appendFormat:@"promotion identifier: '%@'; ", self->_promotionIdentifier];
  [v3 appendFormat:@"program identifier: '%@'; ", self->_programIdentifier];
  if (self->_hasEnhancedMerchantProgramIdentifier)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v3 appendFormat:@"has enhanced merchant program id: '%@'; ", v10];
  [v3 appendFormat:@">"];

  return v3;
}

@end