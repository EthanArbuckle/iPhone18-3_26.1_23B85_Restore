@interface PKAccountCreditTermsUpdate
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PKAccountCreditTermsUpdate)initWithCoder:(id)coder;
- (PKAccountCreditTermsUpdate)initWithRecord:(id)record;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithRecord:(id)record;
@end

@implementation PKAccountCreditTermsUpdate

- (PKAccountCreditTermsUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKAccountCreditTermsUpdate;
  v5 = [(PKAccountCreditTermsUpdate *)&v15 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_initiator = [coderCopy decodeIntegerForKey:@"initiator"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestIdentifier"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adverseActionContentIdentifier"];
    adverseActionContentIdentifier = v5->_adverseActionContentIdentifier;
    v5->_adverseActionContentIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creditLimit"];
    creditLimit = v5->_creditLimit;
    v5->_creditLimit = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rates"];
    rates = v5->_rates;
    v5->_rates = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeInteger:self->_initiator forKey:@"initiator"];
  [coderCopy encodeObject:self->_requestIdentifier forKey:@"requestIdentifier"];
  [coderCopy encodeObject:self->_adverseActionContentIdentifier forKey:@"adverseActionContentIdentifier"];
  [coderCopy encodeObject:self->_creditLimit forKey:@"creditLimit"];
  [coderCopy encodeObject:self->_rates forKey:@"rates"];
}

- (PKAccountCreditTermsUpdate)initWithRecord:(id)record
{
  recordCopy = record;
  v41.receiver = self;
  v41.super_class = PKAccountCreditTermsUpdate;
  v5 = [(PKAccountCreditTermsUpdate *)&v41 init];
  if (v5)
  {
    v6 = [recordCopy pk_encryptedStringForKey:@"currencyCode"];
    v7 = [recordCopy pk_encryptedDecimalNumberForKey:@"creditLimit"];
    v8 = v7;
    if (v6 && v7)
    {
      v9 = PKCurrencyAmountCreate(v7, v6, 0);
      creditLimit = v5->_creditLimit;
      v5->_creditLimit = v9;
    }

    v11 = [recordCopy pk_encryptedDictionaryForKey:@"rates"];
    v12 = [[PKCreditAccountRates alloc] initWithDictionary:v11];
    rates = v5->_rates;
    v5->_rates = v12;

    v14 = [recordCopy pk_encryptedStringForKey:@"requestIdentifier"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v14;

    v16 = [recordCopy pk_encryptedStringForKey:@"adverseActionContentIdentifier"];
    adverseActionContentIdentifier = v5->_adverseActionContentIdentifier;
    v5->_adverseActionContentIdentifier = v16;

    v18 = [recordCopy pk_encryptedStringForKey:@"initiator"];
    lowercaseString = [v18 lowercaseString];
    v20 = lowercaseString;
    if (lowercaseString == @"system")
    {
      goto LABEL_8;
    }

    if (!lowercaseString)
    {
      goto LABEL_12;
    }

    v21 = [(__CFString *)lowercaseString isEqualToString:@"system"];

    if (v21)
    {
LABEL_8:
      v22 = 1;
      goto LABEL_13;
    }

    v23 = v20;
    if (v23 == @"customer" || (v24 = v23, v25 = [(__CFString *)v23 isEqualToString:@"customer"], v24, v25))
    {
      v22 = 2;
    }

    else
    {
LABEL_12:
      v22 = 0;
    }

LABEL_13:

    v5->_initiator = v22;
    v26 = [recordCopy pk_encryptedStringForKey:@"type"];
    lowercaseString2 = [v26 lowercaseString];
    v28 = lowercaseString2;
    if (lowercaseString2 != @"creditlimitincreased")
    {
      if (lowercaseString2)
      {
        v29 = [(__CFString *)lowercaseString2 isEqualToString:@"creditlimitincreased"];

        if (v29)
        {
          goto LABEL_16;
        }

        v31 = v28;
        if (v31 == @"creditlimitdecreased" || (v32 = v31, v33 = [(__CFString *)v31 isEqualToString:@"creditlimitdecreased"], v32, (v33 & 1) != 0))
        {
          v30 = 2;
          goto LABEL_27;
        }

        v34 = v32;
        if (v34 == @"creditlimitincreaserequest" || (v35 = v34, v36 = [(__CFString *)v34 isEqualToString:@"creditlimitincreaserequest"], v35, (v36 & 1) != 0))
        {
          v30 = 3;
          goto LABEL_27;
        }

        v37 = v35;
        if (v37 == @"creditlimitdecreaserequest" || (v38 = v37, v39 = [(__CFString *)v37 isEqualToString:@"creditlimitdecreaserequest"], v38, v39))
        {
          v30 = 4;
          goto LABEL_27;
        }
      }

      v30 = 0;
      goto LABEL_27;
    }

LABEL_16:
    v30 = 1;
LABEL_27:

    v5->_type = v30;
  }

  return v5;
}

- (void)encodeWithRecord:(id)record
{
  encryptedValues = [record encryptedValues];
  currency = [(PKCurrencyAmount *)self->_creditLimit currency];
  [encryptedValues setObject:currency forKey:@"currencyCode"];

  amount = [(PKCurrencyAmount *)self->_creditLimit amount];
  stringValue = [amount stringValue];
  [encryptedValues setObject:stringValue forKey:@"creditLimit"];

  jsonString = [(PKCreditAccountRates *)self->_rates jsonString];
  [encryptedValues setObject:jsonString forKey:@"rates"];

  [encryptedValues setObject:self->_requestIdentifier forKey:@"requestIdentifier"];
  [encryptedValues setObject:self->_adverseActionContentIdentifier forKey:@"adverseActionContentIdentifier"];
  initiator = self->_initiator;
  if (initiator > 2)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E79C8DC8[initiator];
  }

  [encryptedValues setObject:v9 forKey:@"initiator"];
  type = self->_type;
  if (type > 4)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = off_1E79C8DA0[type];
  }

  [encryptedValues setObject:v11 forKey:@"type"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_24;
  }

  creditLimit = self->_creditLimit;
  v6 = equalCopy[5];
  if (creditLimit && v6)
  {
    if (![(PKCurrencyAmount *)creditLimit isEqual:?])
    {
      goto LABEL_24;
    }
  }

  else if (creditLimit != v6)
  {
    goto LABEL_24;
  }

  rates = self->_rates;
  v8 = equalCopy[6];
  if (rates && v8)
  {
    if (![(PKCreditAccountRates *)rates isEqual:?])
    {
      goto LABEL_24;
    }
  }

  else if (rates != v8)
  {
    goto LABEL_24;
  }

  requestIdentifier = self->_requestIdentifier;
  v10 = equalCopy[3];
  if (requestIdentifier && v10)
  {
    if (([(NSString *)requestIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (requestIdentifier != v10)
  {
    goto LABEL_24;
  }

  adverseActionContentIdentifier = self->_adverseActionContentIdentifier;
  v12 = equalCopy[4];
  if (!adverseActionContentIdentifier || !v12)
  {
    if (adverseActionContentIdentifier == v12)
    {
      goto LABEL_22;
    }

LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  if (([(NSString *)adverseActionContentIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (self->_type != equalCopy[1])
  {
    goto LABEL_24;
  }

  v13 = self->_initiator == equalCopy[2];
LABEL_25:

  return v13;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_creditLimit];
  [array safelyAddObject:self->_requestIdentifier];
  [array safelyAddObject:self->_adverseActionContentIdentifier];
  [array safelyAddObject:self->_rates];
  v4 = PKCombinedHash(17, array);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_initiator - v5 + 32 * v5;

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  type = self->_type;
  if (type > 4)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79C8DA0[type];
  }

  [v3 appendFormat:@"type: '%@'; ", v6];
  initiator = self->_initiator;
  if (initiator > 2)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E79C8DC8[initiator];
  }

  [v4 appendFormat:@"initiator: '%@'; ", v8];
  [v4 appendFormat:@"creditLimit: '%@'; ", self->_creditLimit];
  [v4 appendFormat:@"requestIdentifier: '%@'; ", self->_requestIdentifier];
  [v4 appendFormat:@"adverseIdentifier: '%@'; ", self->_adverseActionContentIdentifier];
  [v4 appendFormat:@"rates: '%@'; ", self->_rates];
  [v4 appendFormat:@">"];

  return v4;
}

@end