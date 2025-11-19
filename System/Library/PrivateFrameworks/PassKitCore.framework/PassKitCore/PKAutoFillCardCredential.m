@interface PKAutoFillCardCredential
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFPANCardCredential:(id)a3;
- (NSString)expiration;
- (PKAutoFillCardCredential)initWithCardholderName:(id)a3 pan:(id)a4 expiration:(id)a5 securityCode:(id)a6 billingAddress:(id)a7;
- (PKAutoFillCardCredential)initWithCardholderName:(id)a3 pan:(id)a4 expirationDate:(id)a5 securityCode:(id)a6 billingAddress:(id)a7;
- (PKAutoFillCardCredential)initWithCoder:(id)a3;
- (PKAutoFillCardCredential)initWithVirtualCard:(id)a3 credential:(id)a4;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_copyInto:(id)a3 zone:(_NSZone *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAutoFillCardCredential

- (id)_init
{
  v6.receiver = self;
  v6.super_class = PKAutoFillCardCredential;
  v2 = [(PKAutoFillCardCredential *)&v6 init];
  if (v2)
  {
    v3 = PKExpirationDateFormatter();
    expirationDateFormatter = v2->_expirationDateFormatter;
    v2->_expirationDateFormatter = v3;
  }

  return v2;
}

- (PKAutoFillCardCredential)initWithCardholderName:(id)a3 pan:(id)a4 expirationDate:(id)a5 securityCode:(id)a6 billingAddress:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(PKAutoFillCardCredential *)self _init];
  if (v17)
  {
    v18 = [v12 copy];
    cardholderName = v17->_cardholderName;
    v17->_cardholderName = v18;

    v20 = [v13 pk_zString];
    primaryAccountNumber = v17->_primaryAccountNumber;
    v17->_primaryAccountNumber = v20;

    objc_storeStrong(&v17->_expirationDate, a5);
    v22 = [v15 copy];
    v23 = [v22 pk_zString];
    securityCode = v17->_securityCode;
    v17->_securityCode = v23;

    v25 = [v16 copy];
    billingAddress = v17->_billingAddress;
    v17->_billingAddress = v25;
  }

  return v17;
}

- (PKAutoFillCardCredential)initWithCardholderName:(id)a3 pan:(id)a4 expiration:(id)a5 securityCode:(id)a6 billingAddress:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(PKAutoFillCardCredential *)self _init];
  v18 = v17;
  if (v17)
  {
    v19 = [v17[1] dateFromString:v14];
    v18 = [(PKAutoFillCardCredential *)v18 initWithCardholderName:v12 pan:v13 expirationDate:v19 securityCode:v15 billingAddress:v16];
  }

  return v18;
}

- (PKAutoFillCardCredential)initWithVirtualCard:(id)a3 credential:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKAutoFillCardCredential *)self _init];
  if (!v8)
  {
    goto LABEL_16;
  }

  v24 = [v6 cardholderName];
  v9 = [v24 copy];
  v23 = v9;
  if (v9)
  {
    v22 = 0;
  }

  else
  {
    v9 = [v6 nameFromSafari];
    if (!v9)
    {
      v22 = 1;
      v26 = PKMeContactFullName();
      v20 = 0;
      goto LABEL_7;
    }

    v22 = 0;
    v20 = v9;
  }

  v26 = v9;
LABEL_7:
  v21 = [v7 primaryAccountNumber];
  v10 = [v21 pk_zString];
  expirationDateFormatter = v8->_expirationDateFormatter;
  v12 = [v7 expiration];
  v13 = v12;
  if (!v12)
  {
    v13 = [v6 expiration];
  }

  v14 = [(NSDateFormatter *)expirationDateFormatter dateFromString:v13];
  v15 = [v7 cardSecurityCode];
  v16 = [v15 pk_zString];
  v25 = v6;
  v17 = [v6 billingAddress];
  v18 = [v17 copy];
  v8 = [(PKAutoFillCardCredential *)v8 initWithCardholderName:v26 pan:v10 expirationDate:v14 securityCode:v16 billingAddress:v18];

  if (!v12)
  {
  }

  if (v22)
  {
  }

  v6 = v25;
  if (!v23)
  {
  }

LABEL_16:
  return v8;
}

- (PKAutoFillCardCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKAutoFillCardCredential *)self _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardholderName"];
    cardholderName = v5->_cardholderName;
    v5->_cardholderName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pan"];
    v9 = [v8 pk_zString];
    primaryAccountNumber = v5->_primaryAccountNumber;
    v5->_primaryAccountNumber = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"securityCode"];
    v14 = [v13 pk_zString];
    securityCode = v5->_securityCode;
    v5->_securityCode = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"billingAddress"];
    billingAddress = v5->_billingAddress;
    v5->_billingAddress = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  cardholderName = self->_cardholderName;
  v5 = a3;
  [v5 encodeObject:cardholderName forKey:@"cardholderName"];
  [v5 encodeObject:self->_primaryAccountNumber forKey:@"pan"];
  [v5 encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [v5 encodeObject:self->_securityCode forKey:@"securityCode"];
  [v5 encodeObject:self->_billingAddress forKey:@"billingAddress"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"cardholderName: '%@'; ", self->_cardholderName];
  v7 = PKFPANSuffixFromFPAN(self->_primaryAccountNumber);
  [v6 appendFormat:@"pan: '%@'; ", v7];

  if (self->_expirationDate)
  {
    v8 = @"Yes";
  }

  else
  {
    v8 = @"No";
  }

  [v6 appendFormat:@"hasExpiration: '%@'; ", v8];
  if (self->_securityCode)
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = @"No";
  }

  [v6 appendFormat:@"hasSecurityCode: '%@'; ", v9];
  if (self->_billingAddress)
  {
    v10 = @"Yes";
  }

  else
  {
    v10 = @"No";
  }

  [v6 appendFormat:@"hasBillingAddress: '%@'; ", v10];
  [v6 appendFormat:@">"];
  v11 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_cardholderName)
  {
    [v3 addObject:?];
  }

  if (self->_primaryAccountNumber)
  {
    [v4 addObject:?];
  }

  if (self->_expirationDate)
  {
    [v4 addObject:?];
  }

  if (self->_securityCode)
  {
    [v4 addObject:?];
  }

  if (self->_billingAddress)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAutoFillCardCredential *)self isEqualToFPANCardCredential:v5];
  }

  return v6;
}

- (BOOL)isEqualToFPANCardCredential:(id)a3
{
  v4 = a3;
  cardholderName = self->_cardholderName;
  v6 = v4[3];
  if (cardholderName)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (cardholderName != v6)
    {
      goto LABEL_26;
    }
  }

  else if (([(NSString *)cardholderName isEqual:?]& 1) == 0)
  {
    goto LABEL_26;
  }

  primaryAccountNumber = self->_primaryAccountNumber;
  v9 = v4[4];
  if (primaryAccountNumber && v9)
  {
    if (([(NSString *)primaryAccountNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (primaryAccountNumber != v9)
  {
    goto LABEL_26;
  }

  expirationDate = self->_expirationDate;
  v11 = v4[2];
  if (expirationDate && v11)
  {
    if (([(NSDate *)expirationDate isEqual:?]& 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (expirationDate != v11)
  {
    goto LABEL_26;
  }

  securityCode = self->_securityCode;
  v13 = v4[5];
  if (!securityCode || !v13)
  {
    if (securityCode == v13)
    {
      goto LABEL_22;
    }

LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  if (([(NSString *)securityCode isEqual:?]& 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  billingAddress = self->_billingAddress;
  v15 = v4[6];
  if (billingAddress && v15)
  {
    v16 = [(CNContact *)billingAddress isEqual:?];
  }

  else
  {
    v16 = billingAddress == v15;
  }

LABEL_27:

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKAutoFillCardCredential allocWithZone:](PKAutoFillCardCredential _init];
  [(PKAutoFillCardCredential *)self _copyInto:v5 zone:a3];
  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [(PKAutoFillCardCredential *)[PKMutableAutofillCardCredential alloc] _init];
  [(PKAutoFillCardCredential *)self _copyInto:v5 zone:a3];
  return v5;
}

- (void)_copyInto:(id)a3 zone:(_NSZone *)a4
{
  cardholderName = self->_cardholderName;
  v7 = a3;
  v8 = [(NSString *)cardholderName copyWithZone:a4];
  v9 = v7[3];
  v7[3] = v8;

  v10 = [(NSString *)self->_primaryAccountNumber copyWithZone:a4];
  v11 = [v10 pk_zString];
  v12 = v7[4];
  v7[4] = v11;

  v13 = [(NSDate *)self->_expirationDate copyWithZone:a4];
  v14 = v7[2];
  v7[2] = v13;

  v15 = [(NSString *)self->_securityCode copyWithZone:a4];
  v16 = [v15 pk_zString];
  v17 = v7[5];
  v7[5] = v16;

  v18 = [(CNContact *)self->_billingAddress copyWithZone:a4];
  v19 = v7[6];
  v7[6] = v18;
}

- (NSString)expiration
{
  expirationDateFormatter = self->_expirationDateFormatter;
  v3 = [(PKAutoFillCardCredential *)self expirationDate];
  v4 = [(NSDateFormatter *)expirationDateFormatter stringFromDate:v3];

  return v4;
}

@end