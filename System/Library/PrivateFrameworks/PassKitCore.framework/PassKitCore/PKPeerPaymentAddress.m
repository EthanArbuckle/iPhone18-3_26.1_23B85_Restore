@interface PKPeerPaymentAddress
+ (id)addressFromPostalAddress:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentAddress)initWithCoder:(id)a3;
- (PKPeerPaymentAddress)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)postalAddress;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentAddress

+ (id)addressFromPostalAddress:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKPeerPaymentAddress);
  v5 = [v3 street];
  v6 = [v5 componentsSeparatedByString:@"\n"];

  v7 = [v6 objectAtIndexedSubscript:0];
  [(PKPeerPaymentAddress *)v4 setAddressLine1:v7];

  if ([v6 count] == 2)
  {
    v8 = [v6 objectAtIndexedSubscript:1];
    [(PKPeerPaymentAddress *)v4 setAddressLine2:v8];
  }

  v9 = [v3 city];
  [(PKPeerPaymentAddress *)v4 setCity:v9];

  v10 = [v3 state];
  [(PKPeerPaymentAddress *)v4 setState:v10];

  v11 = [v3 postalCode];
  [(PKPeerPaymentAddress *)v4 setPostalCode:v11];

  [(PKPeerPaymentAddress *)v4 setValid:1];

  return v4;
}

- (PKPeerPaymentAddress)initWithDictionary:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PKPeerPaymentAddress;
  v5 = [(PKPeerPaymentAddress *)&v25 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"addressLine1"];
    v7 = [v6 copy];
    addressLine1 = v5->_addressLine1;
    v5->_addressLine1 = v7;

    v9 = [v4 PKStringForKey:@"addressLine2"];
    v10 = [v9 copy];
    addressLine2 = v5->_addressLine2;
    v5->_addressLine2 = v10;

    v12 = [v4 PKStringForKey:@"city"];
    v13 = [v12 copy];
    city = v5->_city;
    v5->_city = v13;

    v15 = [v4 PKStringForKey:@"state"];
    v16 = [v15 copy];
    state = v5->_state;
    v5->_state = v16;

    v18 = [v4 PKStringForKey:@"postalCode"];
    v19 = [v18 copy];
    postalCode = v5->_postalCode;
    v5->_postalCode = v19;

    v5->_valid = [v4 PKBoolForKey:@"valid"];
    v21 = [v4 PKStringForKey:@"source"];
    v5->_source = PKPaymentSetupFieldSourceFromString(v21);

    v22 = [v4 PKDateForKey:@"restrictionDate"];
    restrictionDate = v5->_restrictionDate;
    v5->_restrictionDate = v22;
  }

  return v5;
}

- (id)postalAddress
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([(NSString *)self->_addressLine1 length])
  {
    [v3 appendString:self->_addressLine1];
  }

  if ([(NSString *)self->_addressLine2 length])
  {
    [v3 appendString:@"\n"];
    [v3 appendString:self->_addressLine2];
  }

  v4 = objc_alloc_init(MEMORY[0x1E695CF30]);
  [v4 setStreet:v3];
  [v4 setCity:self->_city];
  [v4 setState:self->_state];
  [v4 setPostalCode:self->_postalCode];

  return v4;
}

- (PKPeerPaymentAddress)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKPeerPaymentAddress;
  v5 = [(PKPeerPaymentAddress *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"addressLine1"];
    addressLine1 = v5->_addressLine1;
    v5->_addressLine1 = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"addressLine2"];
    addressLine2 = v5->_addressLine2;
    v5->_addressLine2 = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"city"];
    city = v5->_city;
    v5->_city = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = v5->_state;
    v5->_state = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"postalCode"];
    postalCode = v5->_postalCode;
    v5->_postalCode = v14;

    v5->_valid = [v4 decodeBoolForKey:@"valid"];
    v5->_source = [v4 decodeIntegerForKey:@"source"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"restrictionDate"];
    restrictionDate = v5->_restrictionDate;
    v5->_restrictionDate = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  addressLine1 = self->_addressLine1;
  v5 = a3;
  [v5 encodeObject:addressLine1 forKey:@"addressLine1"];
  [v5 encodeObject:self->_addressLine2 forKey:@"addressLine2"];
  [v5 encodeObject:self->_city forKey:@"city"];
  [v5 encodeObject:self->_state forKey:@"state"];
  [v5 encodeObject:self->_postalCode forKey:@"postalCode"];
  [v5 encodeBool:self->_valid forKey:@"valid"];
  [v5 encodeInteger:self->_source forKey:@"source"];
  [v5 encodeObject:self->_restrictionDate forKey:@"restrictionDate"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_addressLine1];
  [v3 safelyAddObject:self->_addressLine2];
  [v3 safelyAddObject:self->_city];
  [v3 safelyAddObject:self->_state];
  [v3 safelyAddObject:self->_postalCode];
  [v3 safelyAddObject:self->_restrictionDate];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_valid - v4 + 32 * v4;
  v6 = self->_source - v5 + 32 * v5;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_34;
  }

  addressLine1 = self->_addressLine1;
  v6 = v4[2];
  if (addressLine1 && v6)
  {
    if (([(NSString *)addressLine1 isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (addressLine1 != v6)
  {
    goto LABEL_34;
  }

  addressLine2 = self->_addressLine2;
  v8 = v4[3];
  if (addressLine2 && v8)
  {
    if (([(NSString *)addressLine2 isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (addressLine2 != v8)
  {
    goto LABEL_34;
  }

  city = self->_city;
  v10 = v4[4];
  if (city && v10)
  {
    if (([(NSString *)city isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (city != v10)
  {
    goto LABEL_34;
  }

  state = self->_state;
  v12 = v4[5];
  if (state && v12)
  {
    if (([(NSString *)state isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (state != v12)
  {
    goto LABEL_34;
  }

  postalCode = self->_postalCode;
  v14 = v4[6];
  if (postalCode && v14)
  {
    if (([(NSString *)postalCode isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (postalCode != v14)
  {
    goto LABEL_34;
  }

  restrictionDate = self->_restrictionDate;
  v16 = v4[7];
  if (!restrictionDate || !v16)
  {
    if (restrictionDate == v16)
    {
      goto LABEL_32;
    }

LABEL_34:
    v17 = 0;
    goto LABEL_35;
  }

  if (([(NSDate *)restrictionDate isEqual:?]& 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_32:
  if (self->_valid != *(v4 + 8))
  {
    goto LABEL_34;
  }

  v17 = self->_source == v4[8];
LABEL_35:

  return v17;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"addressLine1: '%@'; ", self->_addressLine1];
  [v3 appendFormat:@"addressLine2: '%@'; ", self->_addressLine2];
  [v3 appendFormat:@"city: '%@'; ", self->_city];
  [v3 appendFormat:@"state: '%@'; ", self->_state];
  [v3 appendFormat:@"postalCode: '%@'; ", self->_postalCode];
  [v3 appendFormat:@"valid: '%d'; ", self->_valid];
  [v3 appendFormat:@"restrictionDate: '%@'; ", self->_restrictionDate];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPeerPaymentAddress allocWithZone:](PKPeerPaymentAddress init];
  v6 = [(NSString *)self->_addressLine1 copyWithZone:a3];
  addressLine1 = v5->_addressLine1;
  v5->_addressLine1 = v6;

  v8 = [(NSString *)self->_addressLine2 copyWithZone:a3];
  addressLine2 = v5->_addressLine2;
  v5->_addressLine2 = v8;

  v10 = [(NSString *)self->_city copyWithZone:a3];
  city = v5->_city;
  v5->_city = v10;

  v12 = [(NSString *)self->_state copyWithZone:a3];
  state = v5->_state;
  v5->_state = v12;

  v14 = [(NSString *)self->_postalCode copyWithZone:a3];
  postalCode = v5->_postalCode;
  v5->_postalCode = v14;

  v5->_valid = self->_valid;
  v5->_source = self->_source;
  objc_storeStrong(&v5->_restrictionDate, self->_restrictionDate);
  return v5;
}

@end