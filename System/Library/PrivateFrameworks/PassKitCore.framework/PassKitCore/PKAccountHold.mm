@interface PKAccountHold
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PKAccountHold)initWithCoder:(id)a3;
- (PKAccountHold)initWithRecord:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithRecord:(id)a3;
@end

@implementation PKAccountHold

- (PKAccountHold)initWithRecord:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = PKAccountHold;
  v5 = [(PKAccountHold *)&v48 init];
  if (!v5)
  {
    goto LABEL_40;
  }

  v6 = [v4 pk_encryptedStringForKey:@"holdIdentifier"];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [v4 pk_encryptedStringForKey:@"type"];
  v9 = v8;
  if (v8 == @"floatHold")
  {
    goto LABEL_5;
  }

  if (!v8)
  {
    goto LABEL_27;
  }

  v10 = [(__CFString *)v8 isEqualToString:@"floatHold"];

  if (v10)
  {
LABEL_5:
    v11 = 1;
    goto LABEL_28;
  }

  v12 = v9;
  if (v12 == @"checkHold" || (v13 = v12, v14 = [(__CFString *)v12 isEqualToString:@"checkHold"], v13, (v14 & 1) != 0))
  {
    v11 = 2;
    goto LABEL_28;
  }

  v15 = v13;
  if (v15 == @"exceptionReviewHold" || (v16 = v15, v17 = [(__CFString *)v15 isEqualToString:@"exceptionReviewHold"], v16, (v17 & 1) != 0))
  {
    v11 = 3;
    goto LABEL_28;
  }

  v18 = v16;
  if (v18 == @"childSupportObligationHold" || (v19 = v18, v20 = [(__CFString *)v18 isEqualToString:@"childSupportObligationHold"], v19, (v20 & 1) != 0))
  {
    v11 = 4;
    goto LABEL_28;
  }

  v21 = v19;
  if (v21 == @"permanentHold" || (v22 = v21, v23 = [(__CFString *)v21 isEqualToString:@"permanentHold"], v22, (v23 & 1) != 0))
  {
    v11 = 5;
    goto LABEL_28;
  }

  v24 = v22;
  if (v24 == @"fdicHold" || (v25 = v24, v26 = [(__CFString *)v24 isEqualToString:@"fdicHold"], v25, (v26 & 1) != 0))
  {
    v11 = 6;
    goto LABEL_28;
  }

  v27 = v25;
  if (v27 == @"garnishmentHold" || (v28 = v27, v29 = [(__CFString *)v27 isEqualToString:@"garnishmentHold"], v28, (v29 & 1) != 0))
  {
    v11 = 7;
    goto LABEL_28;
  }

  v30 = v28;
  if (v30 == @"provisionalHold" || (v31 = v30, v32 = [(__CFString *)v30 isEqualToString:@"provisionalHold"], v31, v32))
  {
    v11 = 8;
  }

  else
  {
LABEL_27:
    v11 = 0;
  }

LABEL_28:

  v5->_type = v11;
  v33 = [v4 pk_encryptedStringForKey:@"state"];
  v34 = v33;
  if (v33 == @"placed")
  {
LABEL_31:
    v36 = 1;
    goto LABEL_36;
  }

  if (!v33)
  {
    goto LABEL_35;
  }

  v35 = [(__CFString *)v33 isEqualToString:@"placed"];

  if (v35)
  {
    goto LABEL_31;
  }

  v37 = v34;
  if (v37 == @"removed" || (v38 = v37, v39 = [(__CFString *)v37 isEqualToString:@"removed"], v38, v39))
  {
    v36 = 2;
  }

  else
  {
LABEL_35:
    v36 = 0;
  }

LABEL_36:

  v5->_state = v36;
  v40 = [v4 pk_encryptedStringForKey:@"amount"];
  v41 = [v4 pk_encryptedStringForKey:@"currencyCode"];
  v42 = v41;
  if (v40 && v41)
  {
    v43 = [PKCurrencyAmount alloc];
    v44 = [MEMORY[0x1E696AB90] decimalNumberWithString:v40];
    v45 = [(PKCurrencyAmount *)v43 initWithAmount:v44 currency:v42 exponent:0];
    currencyAmount = v5->_currencyAmount;
    v5->_currencyAmount = v45;
  }

LABEL_40:
  return v5;
}

- (void)encodeWithRecord:(id)a3
{
  v11 = [a3 encryptedValues];
  if (PKApplePayContainerEnvironment() == 2)
  {
    [v11 setObject:self->_identifier forKey:@"holdIdentifier"];
    v4 = PKAccountHoldTypeToString(self->_type);
    [v11 setObject:v4 forKey:@"type"];

    state = self->_state;
    v6 = @"placed";
    if (state == 2)
    {
      v6 = @"removed";
    }

    if (state)
    {
      v7 = v6;
    }

    else
    {
      v7 = @"unknown";
    }

    [v11 setObject:v7 forKey:@"state"];
    v8 = [(PKCurrencyAmount *)self->_currencyAmount amount];
    v9 = [v8 stringValue];
    [v11 setObject:v9 forKey:@"amount"];

    v10 = [(PKCurrencyAmount *)self->_currencyAmount currency];
    [v11 setObject:v10 forKey:@"currencyCode"];
  }
}

- (PKAccountHold)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKAccountHold;
  v5 = [(PKAccountHold *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"holdIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v5->_state = [v4 decodeIntegerForKey:@"state"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    v10 = PKCurrencyAmountCreate(v8, v9, 0);
    currencyAmount = v5->_currencyAmount;
    v5->_currencyAmount = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"holdIdentifier"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeInteger:self->_state forKey:@"state"];
  v6 = [(PKCurrencyAmount *)self->_currencyAmount amount];
  [v5 encodeObject:v6 forKey:@"amount"];

  v7 = [(PKCurrencyAmount *)self->_currencyAmount currency];
  [v5 encodeObject:v7 forKey:@"currencyCode"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  identifier = self->_identifier;
  v6 = v4[1];
  if (identifier && v6)
  {
    if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (identifier != v6)
  {
    goto LABEL_14;
  }

  currencyAmount = self->_currencyAmount;
  v8 = v4[4];
  if (!currencyAmount || !v8)
  {
    if (currencyAmount == v8)
    {
      goto LABEL_12;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  if (![(PKCurrencyAmount *)currencyAmount isEqual:?])
  {
    goto LABEL_14;
  }

LABEL_12:
  if (self->_type != v4[2])
  {
    goto LABEL_14;
  }

  v9 = self->_state == v4[3];
LABEL_15:

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_currencyAmount];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_state - v5 + 32 * v5;

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  v4 = PKAccountHoldTypeToString(self->_type);
  [v3 appendFormat:@"type: '%@'; ", v4];

  state = self->_state;
  v6 = @"placed";
  if (state == 2)
  {
    v6 = @"removed";
  }

  if (state)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"unknown";
  }

  [v3 appendFormat:@"state: '%@'; ", v7];
  [v3 appendFormat:@"currencyAmount: '%@'; ", self->_currencyAmount];
  [v3 appendFormat:@">"];

  return v3;
}

@end