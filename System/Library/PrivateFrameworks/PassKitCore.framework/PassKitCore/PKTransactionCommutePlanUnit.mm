@interface PKTransactionCommutePlanUnit
- (BOOL)isEqual:(id)a3;
- (PKTransactionCommutePlanUnit)initWithCoder:(id)a3;
- (PKTransactionCommutePlanUnit)initWithCountPlanIdentifier:(id)a3 currencyCode:(id)a4 value:(id)a5 label:(id)a6;
- (PKTransactionCommutePlanUnit)initWithDictionary:(id)a3;
- (PKTransactionCommutePlanUnit)initWithTimedPlanIdentifier:(id)a3 label:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKTransactionCommutePlanUnit

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKTransactionCommutePlanUnit allocWithZone:](PKTransactionCommutePlanUnit init];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v5->_planType = self->_planType;
  v8 = [(PKCurrencyAmount *)self->_valueCount copyWithZone:a3];
  valueCount = v5->_valueCount;
  v5->_valueCount = v8;

  v10 = [(NSString *)self->_label copyWithZone:a3];
  label = v5->_label;
  v5->_label = v10;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_valueCount forKey:@"valueCount"];
  [v5 encodeInteger:self->_planType forKey:@"planType"];
  [v5 encodeObject:self->_label forKey:@"label"];
}

- (PKTransactionCommutePlanUnit)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKTransactionCommutePlanUnit;
  v5 = [(PKTransactionCommutePlanUnit *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"valueCount"];
    valueCount = v5->_valueCount;
    v5->_valueCount = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v5->_planType = [v4 decodeIntegerForKey:@"planType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v10;
  }

  return v5;
}

- (PKTransactionCommutePlanUnit)initWithTimedPlanIdentifier:(id)a3 label:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKTransactionCommutePlanUnit;
  v9 = [(PKTransactionCommutePlanUnit *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    v10->_planType = 0;
    objc_storeStrong(&v10->_label, a4);
  }

  return v10;
}

- (PKTransactionCommutePlanUnit)initWithCountPlanIdentifier:(id)a3 currencyCode:(id)a4 value:(id)a5 label:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = PKTransactionCommutePlanUnit;
  v15 = [(PKTransactionCommutePlanUnit *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    v16->_planType = 1;
    v17 = PKCurrencyAmountCreate(v13, v12, 0);
    valueCount = v16->_valueCount;
    v16->_valueCount = v17;

    objc_storeStrong(&v16->_label, a6);
  }

  return v16;
}

- (PKTransactionCommutePlanUnit)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKIntegerForKey:@"value"];
  v6 = [v4 PKStringForKey:@"currencyCode"];
  v7 = [v4 PKStringForKey:@"localizedTitle"];
  if (!v7)
  {
    v7 = [v4 PKStringForKey:@"label"];
  }

  v8 = [v4 PKStringForKey:@"identifier"];
  if (v8)
  {
    if (v6 && v5)
    {
      v9 = [MEMORY[0x1E696AB90] numberWithInteger:v5];
      self = [(PKTransactionCommutePlanUnit *)self initWithCountPlanIdentifier:v8 currencyCode:v6 value:v9 label:v7];

      v10 = self;
    }

    else
    {
      self = [(PKTransactionCommutePlanUnit *)self initWithTimedPlanIdentifier:v8 label:v7];
      v10 = self;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  planType = self->_planType;
  v4 = MEMORY[0x1E696AEC0];
  if (planType == 1)
  {
    identifier = self->_identifier;
    label = self->_label;
    v7 = [(PKCurrencyAmount *)self->_valueCount currency];
    v8 = [(PKCurrencyAmount *)self->_valueCount amount];
    v9 = [v4 stringWithFormat:@"Plan Type: %@, Identifier: %@, Label: %@, Currency: %@, Value: %ld", @"count plan", identifier, label, v7, objc_msgSend(v8, "integerValue")];
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
  v4 = [(PKCurrencyAmount *)self->_valueCount currency];
  [v3 setObject:v4 forKeyedSubscript:@"currencyCode"];

  v5 = MEMORY[0x1E696AD98];
  v6 = [(PKCurrencyAmount *)self->_valueCount amount];
  v7 = [v5 numberWithInteger:{objc_msgSend(v6, "integerValue")}];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_valueCount];
  [v3 safelyAddObject:self->_label];
  [v3 safelyAddObject:self->_identifier];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_planType - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    v6 = [v4 identifier];
    v7 = identifier;
    v8 = v6;
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
    v13 = [v4 label];
    v14 = label;
    v15 = v13;
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
    if (planType != [v4 planType])
    {
      LOBYTE(v10) = 0;
LABEL_24:

      goto LABEL_25;
    }

    valueCount = self->_valueCount;
    v18 = [v4 valueCount];
    v14 = v18;
    if (valueCount && v18)
    {
      LOBYTE(v10) = [(PKCurrencyAmount *)valueCount isEqual:v18];
    }

    else
    {
      LOBYTE(v10) = valueCount == v18;
    }

LABEL_23:

    goto LABEL_24;
  }

  LOBYTE(v10) = 0;
LABEL_26:

  return v10;
}

@end