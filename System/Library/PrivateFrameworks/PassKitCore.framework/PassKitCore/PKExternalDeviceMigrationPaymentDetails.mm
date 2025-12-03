@interface PKExternalDeviceMigrationPaymentDetails
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToExternalDeviceMigrationPaymentDetails:(id)details;
- (PKExternalDeviceMigrationPaymentDetails)initWithCoder:(id)coder;
- (PKExternalDeviceMigrationPaymentDetails)initWithFPAN:(id)n expiration:(id)expiration cvv:(id)cvv cardholder:(id)cardholder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKExternalDeviceMigrationPaymentDetails

- (PKExternalDeviceMigrationPaymentDetails)initWithFPAN:(id)n expiration:(id)expiration cvv:(id)cvv cardholder:(id)cardholder
{
  nCopy = n;
  expirationCopy = expiration;
  cvvCopy = cvv;
  cardholderCopy = cardholder;
  v22.receiver = self;
  v22.super_class = PKExternalDeviceMigrationPaymentDetails;
  v14 = [(PKExternalDeviceMigrationPaymentDetails *)&v22 init];
  if (v14)
  {
    pk_zString = [nCopy pk_zString];
    fpan = v14->_fpan;
    v14->_fpan = pk_zString;

    pk_zString2 = [expirationCopy pk_zString];
    expiration = v14->_expiration;
    v14->_expiration = pk_zString2;

    pk_zString3 = [cvvCopy pk_zString];
    cvv = v14->_cvv;
    v14->_cvv = pk_zString3;

    objc_storeStrong(&v14->_cardholder, cardholder);
  }

  return v14;
}

- (PKExternalDeviceMigrationPaymentDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = PKExternalDeviceMigrationPaymentDetails;
  v5 = [(PKExternalDeviceMigrationPaymentDetails *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fpan"];
    pk_zString = [v6 pk_zString];
    fpan = v5->_fpan;
    v5->_fpan = pk_zString;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
    pk_zString2 = [v9 pk_zString];
    expiration = v5->_expiration;
    v5->_expiration = pk_zString2;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cvv"];
    pk_zString3 = [v12 pk_zString];
    cvv = v5->_cvv;
    v5->_cvv = pk_zString3;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardholder"];
    cardholder = v5->_cardholder;
    v5->_cardholder = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  fpan = self->_fpan;
  coderCopy = coder;
  [coderCopy encodeObject:fpan forKey:@"fpan"];
  [coderCopy encodeObject:self->_expiration forKey:@"expiration"];
  [coderCopy encodeObject:self->_cvv forKey:@"cvv"];
  [coderCopy encodeObject:self->_cardholder forKey:@"cardholder"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"cardholder: '%@'; ", self->_cardholder];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKExternalDeviceMigrationPaymentDetails *)self isEqualToExternalDeviceMigrationPaymentDetails:v5];
  }

  return v6;
}

- (BOOL)isEqualToExternalDeviceMigrationPaymentDetails:(id)details
{
  detailsCopy = details;
  fpan = self->_fpan;
  v6 = detailsCopy[1];
  if (fpan)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (fpan != v6)
    {
      goto LABEL_21;
    }
  }

  else if (([(NSString *)fpan isEqual:?]& 1) == 0)
  {
    goto LABEL_21;
  }

  expiration = self->_expiration;
  v9 = detailsCopy[2];
  if (expiration && v9)
  {
    if (([(NSString *)expiration isEqual:?]& 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (expiration != v9)
  {
    goto LABEL_21;
  }

  cvv = self->_cvv;
  v11 = detailsCopy[3];
  if (!cvv || !v11)
  {
    if (cvv == v11)
    {
      goto LABEL_17;
    }

LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

  if (([(NSString *)cvv isEqual:?]& 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  cardholder = self->_cardholder;
  v13 = detailsCopy[4];
  if (cardholder && v13)
  {
    v14 = [(NSString *)cardholder isEqual:?];
  }

  else
  {
    v14 = cardholder == v13;
  }

LABEL_22:

  return v14;
}

@end