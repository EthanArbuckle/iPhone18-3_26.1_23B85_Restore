@interface PKAccountCreditTermsUpdate
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PKAccountCreditTermsUpdate)initWithCoder:(id)a3;
- (PKAccountCreditTermsUpdate)initWithRecord:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithRecord:(id)a3;
@end

@implementation PKAccountCreditTermsUpdate

- (PKAccountCreditTermsUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKAccountCreditTermsUpdate;
  v5 = [(PKAccountCreditTermsUpdate *)&v15 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v5->_initiator = [v4 decodeIntegerForKey:@"initiator"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestIdentifier"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"adverseActionContentIdentifier"];
    adverseActionContentIdentifier = v5->_adverseActionContentIdentifier;
    v5->_adverseActionContentIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creditLimit"];
    creditLimit = v5->_creditLimit;
    v5->_creditLimit = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rates"];
    rates = v5->_rates;
    v5->_rates = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeInteger:self->_initiator forKey:@"initiator"];
  [v5 encodeObject:self->_requestIdentifier forKey:@"requestIdentifier"];
  [v5 encodeObject:self->_adverseActionContentIdentifier forKey:@"adverseActionContentIdentifier"];
  [v5 encodeObject:self->_creditLimit forKey:@"creditLimit"];
  [v5 encodeObject:self->_rates forKey:@"rates"];
}

- (PKAccountCreditTermsUpdate)initWithRecord:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = PKAccountCreditTermsUpdate;
  v5 = [(PKAccountCreditTermsUpdate *)&v41 init];
  if (v5)
  {
    v6 = [v4 pk_encryptedStringForKey:@"currencyCode"];
    v7 = [v4 pk_encryptedDecimalNumberForKey:@"creditLimit"];
    v8 = v7;
    if (v6 && v7)
    {
      v9 = PKCurrencyAmountCreate(v7, v6, 0);
      creditLimit = v5->_creditLimit;
      v5->_creditLimit = v9;
    }

    v11 = [v4 pk_encryptedDictionaryForKey:@"rates"];
    v12 = [[PKCreditAccountRates alloc] initWithDictionary:v11];
    rates = v5->_rates;
    v5->_rates = v12;

    v14 = [v4 pk_encryptedStringForKey:@"requestIdentifier"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v14;

    v16 = [v4 pk_encryptedStringForKey:@"adverseActionContentIdentifier"];
    adverseActionContentIdentifier = v5->_adverseActionContentIdentifier;
    v5->_adverseActionContentIdentifier = v16;

    v18 = [v4 pk_encryptedStringForKey:@"initiator"];
    v19 = [v18 lowercaseString];
    v20 = v19;
    if (v19 == @"system")
    {
      goto LABEL_8;
    }

    if (!v19)
    {
      goto LABEL_12;
    }

    v21 = [(__CFString *)v19 isEqualToString:@"system"];

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
    v26 = [v4 pk_encryptedStringForKey:@"type"];
    v27 = [v26 lowercaseString];
    v28 = v27;
    if (v27 != @"creditlimitincreased")
    {
      if (v27)
      {
        v29 = [(__CFString *)v27 isEqualToString:@"creditlimitincreased"];

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

- (void)encodeWithRecord:(id)a3
{
  v12 = [a3 encryptedValues];
  v4 = [(PKCurrencyAmount *)self->_creditLimit currency];
  [v12 setObject:v4 forKey:@"currencyCode"];

  v5 = [(PKCurrencyAmount *)self->_creditLimit amount];
  v6 = [v5 stringValue];
  [v12 setObject:v6 forKey:@"creditLimit"];

  v7 = [(PKCreditAccountRates *)self->_rates jsonString];
  [v12 setObject:v7 forKey:@"rates"];

  [v12 setObject:self->_requestIdentifier forKey:@"requestIdentifier"];
  [v12 setObject:self->_adverseActionContentIdentifier forKey:@"adverseActionContentIdentifier"];
  initiator = self->_initiator;
  if (initiator > 2)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E79C8DC8[initiator];
  }

  [v12 setObject:v9 forKey:@"initiator"];
  type = self->_type;
  if (type > 4)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = off_1E79C8DA0[type];
  }

  [v12 setObject:v11 forKey:@"type"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_24;
  }

  creditLimit = self->_creditLimit;
  v6 = v4[5];
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
  v8 = v4[6];
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
  v10 = v4[3];
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
  v12 = v4[4];
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
  if (self->_type != v4[1])
  {
    goto LABEL_24;
  }

  v13 = self->_initiator == v4[2];
LABEL_25:

  return v13;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_creditLimit];
  [v3 safelyAddObject:self->_requestIdentifier];
  [v3 safelyAddObject:self->_adverseActionContentIdentifier];
  [v3 safelyAddObject:self->_rates];
  v4 = PKCombinedHash(17, v3);
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