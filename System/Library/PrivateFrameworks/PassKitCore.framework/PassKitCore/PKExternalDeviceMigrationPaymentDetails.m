@interface PKExternalDeviceMigrationPaymentDetails
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToExternalDeviceMigrationPaymentDetails:(id)a3;
- (PKExternalDeviceMigrationPaymentDetails)initWithCoder:(id)a3;
- (PKExternalDeviceMigrationPaymentDetails)initWithFPAN:(id)a3 expiration:(id)a4 cvv:(id)a5 cardholder:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKExternalDeviceMigrationPaymentDetails

- (PKExternalDeviceMigrationPaymentDetails)initWithFPAN:(id)a3 expiration:(id)a4 cvv:(id)a5 cardholder:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = PKExternalDeviceMigrationPaymentDetails;
  v14 = [(PKExternalDeviceMigrationPaymentDetails *)&v22 init];
  if (v14)
  {
    v15 = [v10 pk_zString];
    fpan = v14->_fpan;
    v14->_fpan = v15;

    v17 = [v11 pk_zString];
    expiration = v14->_expiration;
    v14->_expiration = v17;

    v19 = [v12 pk_zString];
    cvv = v14->_cvv;
    v14->_cvv = v19;

    objc_storeStrong(&v14->_cardholder, a6);
  }

  return v14;
}

- (PKExternalDeviceMigrationPaymentDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKExternalDeviceMigrationPaymentDetails;
  v5 = [(PKExternalDeviceMigrationPaymentDetails *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fpan"];
    v7 = [v6 pk_zString];
    fpan = v5->_fpan;
    v5->_fpan = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
    v10 = [v9 pk_zString];
    expiration = v5->_expiration;
    v5->_expiration = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cvv"];
    v13 = [v12 pk_zString];
    cvv = v5->_cvv;
    v5->_cvv = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardholder"];
    cardholder = v5->_cardholder;
    v5->_cardholder = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  fpan = self->_fpan;
  v5 = a3;
  [v5 encodeObject:fpan forKey:@"fpan"];
  [v5 encodeObject:self->_expiration forKey:@"expiration"];
  [v5 encodeObject:self->_cvv forKey:@"cvv"];
  [v5 encodeObject:self->_cardholder forKey:@"cardholder"];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKExternalDeviceMigrationPaymentDetails *)self isEqualToExternalDeviceMigrationPaymentDetails:v5];
  }

  return v6;
}

- (BOOL)isEqualToExternalDeviceMigrationPaymentDetails:(id)a3
{
  v4 = a3;
  fpan = self->_fpan;
  v6 = v4[1];
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
  v9 = v4[2];
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
  v11 = v4[3];
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
  v13 = v4[4];
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