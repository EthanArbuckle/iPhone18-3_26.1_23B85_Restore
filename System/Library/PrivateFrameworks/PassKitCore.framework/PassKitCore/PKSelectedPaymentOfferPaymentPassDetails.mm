@interface PKSelectedPaymentOfferPaymentPassDetails
- (BOOL)isEqual:(id)a3;
- (PKSelectedPaymentOfferPaymentPassDetails)initWithCoder:(id)a3;
- (PKSelectedPaymentOfferPaymentPassDetails)initWithPaymentPass:(id)a3;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSelectedPaymentOfferPaymentPassDetails

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKSelectedPaymentOfferPaymentPassDetails;
  return [(PKSelectedPaymentOfferPaymentPassDetails *)&v3 init];
}

- (PKSelectedPaymentOfferPaymentPassDetails)initWithPaymentPass:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v19.receiver = self;
    v19.super_class = PKSelectedPaymentOfferPaymentPassDetails;
    v5 = [(PKSelectedPaymentOfferPaymentPassDetails *)&v19 init];
    if (v5)
    {
      v6 = [v4 uniqueID];
      passUniqueID = v5->_passUniqueID;
      v5->_passUniqueID = v6;

      v8 = [v4 passTypeIdentifier];
      passTypeIdentifier = v5->_passTypeIdentifier;
      v5->_passTypeIdentifier = v8;

      v10 = [v4 serialNumber];
      passSerialNumber = v5->_passSerialNumber;
      v5->_passSerialNumber = v10;

      v12 = [v4 devicePrimaryPaymentApplication];
      v13 = [v12 dpanIdentifier];
      dpanIdentifier = v5->_dpanIdentifier;
      v5->_dpanIdentifier = v13;

      v15 = [v4 primaryAccountIdentifier];
      primaryAccountIdentifier = v5->_primaryAccountIdentifier;
      v5->_primaryAccountIdentifier = v15;
    }

    self = v5;
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        passUniqueID = v6->_passUniqueID;
        v8 = self->_passUniqueID;
        v9 = passUniqueID;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          LOBYTE(v11) = 0;
          if (!v8 || !v9)
          {
            goto LABEL_35;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_36;
          }
        }

        dpanIdentifier = v6->_dpanIdentifier;
        v8 = self->_dpanIdentifier;
        v13 = dpanIdentifier;
        v10 = v13;
        if (v8 == v13)
        {
        }

        else
        {
          LOBYTE(v11) = 0;
          if (!v8 || !v13)
          {
            goto LABEL_35;
          }

          v11 = [(NSString *)v8 isEqualToString:v13];

          if (!v11)
          {
            goto LABEL_36;
          }
        }

        passTypeIdentifier = v6->_passTypeIdentifier;
        v8 = self->_passTypeIdentifier;
        v15 = passTypeIdentifier;
        v10 = v15;
        if (v8 == v15)
        {
        }

        else
        {
          LOBYTE(v11) = 0;
          if (!v8 || !v15)
          {
            goto LABEL_35;
          }

          v11 = [(NSString *)v8 isEqualToString:v15];

          if (!v11)
          {
            goto LABEL_36;
          }
        }

        passSerialNumber = v6->_passSerialNumber;
        v8 = self->_passSerialNumber;
        v17 = passSerialNumber;
        v10 = v17;
        if (v8 == v17)
        {

LABEL_30:
          primaryAccountIdentifier = self->_primaryAccountIdentifier;
          v19 = v6->_primaryAccountIdentifier;
          v8 = primaryAccountIdentifier;
          v20 = v19;
          v10 = v20;
          if (v8 == v20)
          {
            LOBYTE(v11) = 1;
          }

          else
          {
            LOBYTE(v11) = 0;
            if (v8 && v20)
            {
              LOBYTE(v11) = [(NSString *)v8 isEqualToString:v20];
            }
          }

          goto LABEL_35;
        }

        LOBYTE(v11) = 0;
        if (v8 && v17)
        {
          v11 = [(NSString *)v8 isEqualToString:v17];

          if (!v11)
          {
            goto LABEL_36;
          }

          goto LABEL_30;
        }

LABEL_35:

LABEL_36:
        goto LABEL_37;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_37:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_passUniqueID];
  [v3 safelyAddObject:self->_dpanIdentifier];
  [v3 safelyAddObject:self->_passSerialNumber];
  [v3 safelyAddObject:self->_passTypeIdentifier];
  [v3 safelyAddObject:self->_primaryAccountIdentifier];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"passUniqueID: '%@'; ", self->_passUniqueID];
  [v3 appendFormat:@"dpanIdentifier: '%@'; ", self->_dpanIdentifier];
  [v3 appendFormat:@"passSerialNumber: '%@'; ", self->_passSerialNumber];
  [v3 appendFormat:@"passTypeIdentifier: '%@'; ", self->_passTypeIdentifier];
  [v3 appendFormat:@"primaryAccountIdentifier: '%@'; ", self->_primaryAccountIdentifier];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKSelectedPaymentOfferPaymentPassDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKSelectedPaymentOfferPaymentPassDetails;
  v5 = [(PKSelectedPaymentOfferPaymentPassDetails *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueID"];
    passUniqueID = v5->_passUniqueID;
    v5->_passUniqueID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dpanIdentifier"];
    dpanIdentifier = v5->_dpanIdentifier;
    v5->_dpanIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passSerialNumber"];
    passSerialNumber = v5->_passSerialNumber;
    v5->_passSerialNumber = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryAccountIdentifier"];
    primaryAccountIdentifier = v5->_primaryAccountIdentifier;
    v5->_primaryAccountIdentifier = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  passUniqueID = self->_passUniqueID;
  v5 = a3;
  [v5 encodeObject:passUniqueID forKey:@"passUniqueID"];
  [v5 encodeObject:self->_dpanIdentifier forKey:@"dpanIdentifier"];
  [v5 encodeObject:self->_passSerialNumber forKey:@"passSerialNumber"];
  [v5 encodeObject:self->_passTypeIdentifier forKey:@"passTypeIdentifier"];
  [v5 encodeObject:self->_primaryAccountIdentifier forKey:@"primaryAccountIdentifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_passUniqueID copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_dpanIdentifier copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_passSerialNumber copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_passTypeIdentifier copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_primaryAccountIdentifier copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

@end