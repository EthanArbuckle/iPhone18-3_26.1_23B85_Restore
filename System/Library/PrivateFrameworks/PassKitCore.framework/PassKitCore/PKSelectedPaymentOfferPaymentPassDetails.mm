@interface PKSelectedPaymentOfferPaymentPassDetails
- (BOOL)isEqual:(id)equal;
- (PKSelectedPaymentOfferPaymentPassDetails)initWithCoder:(id)coder;
- (PKSelectedPaymentOfferPaymentPassDetails)initWithPaymentPass:(id)pass;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSelectedPaymentOfferPaymentPassDetails

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKSelectedPaymentOfferPaymentPassDetails;
  return [(PKSelectedPaymentOfferPaymentPassDetails *)&v3 init];
}

- (PKSelectedPaymentOfferPaymentPassDetails)initWithPaymentPass:(id)pass
{
  passCopy = pass;
  if (passCopy)
  {
    v19.receiver = self;
    v19.super_class = PKSelectedPaymentOfferPaymentPassDetails;
    v5 = [(PKSelectedPaymentOfferPaymentPassDetails *)&v19 init];
    if (v5)
    {
      uniqueID = [passCopy uniqueID];
      passUniqueID = v5->_passUniqueID;
      v5->_passUniqueID = uniqueID;

      passTypeIdentifier = [passCopy passTypeIdentifier];
      passTypeIdentifier = v5->_passTypeIdentifier;
      v5->_passTypeIdentifier = passTypeIdentifier;

      serialNumber = [passCopy serialNumber];
      passSerialNumber = v5->_passSerialNumber;
      v5->_passSerialNumber = serialNumber;

      devicePrimaryPaymentApplication = [passCopy devicePrimaryPaymentApplication];
      dpanIdentifier = [devicePrimaryPaymentApplication dpanIdentifier];
      dpanIdentifier = v5->_dpanIdentifier;
      v5->_dpanIdentifier = dpanIdentifier;

      primaryAccountIdentifier = [passCopy primaryAccountIdentifier];
      primaryAccountIdentifier = v5->_primaryAccountIdentifier;
      v5->_primaryAccountIdentifier = primaryAccountIdentifier;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if (equalCopy)
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

- (PKSelectedPaymentOfferPaymentPassDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKSelectedPaymentOfferPaymentPassDetails;
  v5 = [(PKSelectedPaymentOfferPaymentPassDetails *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueID"];
    passUniqueID = v5->_passUniqueID;
    v5->_passUniqueID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dpanIdentifier"];
    dpanIdentifier = v5->_dpanIdentifier;
    v5->_dpanIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passSerialNumber"];
    passSerialNumber = v5->_passSerialNumber;
    v5->_passSerialNumber = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryAccountIdentifier"];
    primaryAccountIdentifier = v5->_primaryAccountIdentifier;
    v5->_primaryAccountIdentifier = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  passUniqueID = self->_passUniqueID;
  coderCopy = coder;
  [coderCopy encodeObject:passUniqueID forKey:@"passUniqueID"];
  [coderCopy encodeObject:self->_dpanIdentifier forKey:@"dpanIdentifier"];
  [coderCopy encodeObject:self->_passSerialNumber forKey:@"passSerialNumber"];
  [coderCopy encodeObject:self->_passTypeIdentifier forKey:@"passTypeIdentifier"];
  [coderCopy encodeObject:self->_primaryAccountIdentifier forKey:@"primaryAccountIdentifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_passUniqueID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_dpanIdentifier copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_passSerialNumber copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_passTypeIdentifier copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_primaryAccountIdentifier copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

@end