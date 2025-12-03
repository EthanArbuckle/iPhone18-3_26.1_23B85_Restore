@interface PKTransactionCommutePlanUnit
- (BOOL)isEqual:(id)equal;
- (PKTransactionCommutePlanUnit)initWithCoder:(id)coder;
- (PKTransactionCommutePlanUnit)initWithCountPlanIdentifier:(id)identifier currencyCode:(id)code value:(id)value label:(id)label;
- (PKTransactionCommutePlanUnit)initWithDictionary:(id)dictionary;
- (PKTransactionCommutePlanUnit)initWithTimedPlanIdentifier:(id)identifier label:(id)label;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTransactionCommutePlanUnit

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKTransactionCommutePlanUnit allocWithZone:](PKTransactionCommutePlanUnit init];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v5->_planType = self->_planType;
  v8 = [(PKCurrencyAmount *)self->_valueCount copyWithZone:zone];
  valueCount = v5->_valueCount;
  v5->_valueCount = v8;

  v10 = [(NSString *)self->_label copyWithZone:zone];
  label = v5->_label;
  v5->_label = v10;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_valueCount forKey:@"valueCount"];
  [coderCopy encodeInteger:self->_planType forKey:@"planType"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
}

- (PKTransactionCommutePlanUnit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKTransactionCommutePlanUnit;
  v5 = [(PKTransactionCommutePlanUnit *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valueCount"];
    valueCount = v5->_valueCount;
    v5->_valueCount = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v5->_planType = [coderCopy decodeIntegerForKey:@"planType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v10;
  }

  return v5;
}

- (PKTransactionCommutePlanUnit)initWithTimedPlanIdentifier:(id)identifier label:(id)label
{
  identifierCopy = identifier;
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = PKTransactionCommutePlanUnit;
  v9 = [(PKTransactionCommutePlanUnit *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    v10->_planType = 0;
    objc_storeStrong(&v10->_label, label);
  }

  return v10;
}

- (PKTransactionCommutePlanUnit)initWithCountPlanIdentifier:(id)identifier currencyCode:(id)code value:(id)value label:(id)label
{
  identifierCopy = identifier;
  codeCopy = code;
  valueCopy = value;
  labelCopy = label;
  v20.receiver = self;
  v20.super_class = PKTransactionCommutePlanUnit;
  v15 = [(PKTransactionCommutePlanUnit *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    v16->_planType = 1;
    v17 = PKCurrencyAmountCreate(valueCopy, codeCopy, 0);
    valueCount = v16->_valueCount;
    v16->_valueCount = v17;

    objc_storeStrong(&v16->_label, label);
  }

  return v16;
}

- (PKTransactionCommutePlanUnit)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKIntegerForKey:@"value"];
  v6 = [dictionaryCopy PKStringForKey:@"currencyCode"];
  v7 = [dictionaryCopy PKStringForKey:@"localizedTitle"];
  if (!v7)
  {
    v7 = [dictionaryCopy PKStringForKey:@"label"];
  }

  v8 = [dictionaryCopy PKStringForKey:@"identifier"];
  if (v8)
  {
    if (v6 && v5)
    {
      v9 = [MEMORY[0x1E696AB90] numberWithInteger:v5];
      self = [(PKTransactionCommutePlanUnit *)self initWithCountPlanIdentifier:v8 currencyCode:v6 value:v9 label:v7];

      selfCopy2 = self;
    }

    else
    {
      self = [(PKTransactionCommutePlanUnit *)self initWithTimedPlanIdentifier:v8 label:v7];
      selfCopy2 = self;
    }
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (id)description
{
  planType = self->_planType;
  v4 = MEMORY[0x1E696AEC0];
  if (planType == 1)
  {
    identifier = self->_identifier;
    label = self->_label;
    currency = [(PKCurrencyAmount *)self->_valueCount currency];
    amount = [(PKCurrencyAmount *)self->_valueCount amount];
    v9 = [v4 stringWithFormat:@"Plan Type: %@, Identifier: %@, Label: %@, Currency: %@, Value: %ld", @"count plan", identifier, label, currency, objc_msgSend(amount, "integerValue")];
  }

  else
  {
    if (planType)
    {
      v10 = @"unknown plan";
    }

    else
    {
      v10 = @"timed plan";
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Plan Type: %@, Identifier: %@, Label: %@", v10, self->_identifier, self->_label];
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  currency = [(PKCurrencyAmount *)self->_valueCount currency];
  [v3 setObject:currency forKeyedSubscript:@"currencyCode"];

  v5 = MEMORY[0x1E696AD98];
  amount = [(PKCurrencyAmount *)self->_valueCount amount];
  v7 = [v5 numberWithInteger:{objc_msgSend(amount, "integerValue")}];
  [v3 setObject:v7 forKeyedSubscript:@"value"];

  label = self->_label;
  if (label)
  {
    [v3 setObject:label forKeyedSubscript:@"label"];
  }

  v9 = [v3 copy];

  return v9;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_valueCount];
  [array safelyAddObject:self->_label];
  [array safelyAddObject:self->_identifier];
  v4 = PKCombinedHash(17, array);
  v5 = self->_planType - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    identifier = [equalCopy identifier];
    v7 = identifier;
    v8 = identifier;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      LOBYTE(v10) = 0;
      if (!v7 || !v8)
      {
        v14 = v8;
        goto LABEL_23;
      }

      v11 = [(NSString *)v7 isEqualToString:v8];

      if (!v11)
      {
        LOBYTE(v10) = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    label = self->_label;
    label = [equalCopy label];
    v14 = label;
    v15 = label;
    v7 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      if (!v14 || !v15)
      {

        LOBYTE(v10) = 0;
        goto LABEL_23;
      }

      v10 = [(NSString *)v14 isEqualToString:v15];

      if (!v10)
      {
        goto LABEL_24;
      }
    }

    planType = self->_planType;
    if (planType != [equalCopy planType])
    {
      LOBYTE(v10) = 0;
LABEL_24:

      goto LABEL_25;
    }

    valueCount = self->_valueCount;
    valueCount = [equalCopy valueCount];
    v14 = valueCount;
    if (valueCount && valueCount)
    {
      LOBYTE(v10) = [(PKCurrencyAmount *)valueCount isEqual:valueCount];
    }

    else
    {
      LOBYTE(v10) = valueCount == valueCount;
    }

LABEL_23:

    goto LABEL_24;
  }

  LOBYTE(v10) = 0;
LABEL_26:

  return v10;
}

@end