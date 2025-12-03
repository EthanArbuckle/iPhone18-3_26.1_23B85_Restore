@interface PKPeerPaymentAddress
+ (id)addressFromPostalAddress:(id)address;
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentAddress)initWithCoder:(id)coder;
- (PKPeerPaymentAddress)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)postalAddress;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentAddress

+ (id)addressFromPostalAddress:(id)address
{
  addressCopy = address;
  v4 = objc_alloc_init(PKPeerPaymentAddress);
  street = [addressCopy street];
  v6 = [street componentsSeparatedByString:@"\n"];

  v7 = [v6 objectAtIndexedSubscript:0];
  [(PKPeerPaymentAddress *)v4 setAddressLine1:v7];

  if ([v6 count] == 2)
  {
    v8 = [v6 objectAtIndexedSubscript:1];
    [(PKPeerPaymentAddress *)v4 setAddressLine2:v8];
  }

  city = [addressCopy city];
  [(PKPeerPaymentAddress *)v4 setCity:city];

  state = [addressCopy state];
  [(PKPeerPaymentAddress *)v4 setState:state];

  postalCode = [addressCopy postalCode];
  [(PKPeerPaymentAddress *)v4 setPostalCode:postalCode];

  [(PKPeerPaymentAddress *)v4 setValid:1];

  return v4;
}

- (PKPeerPaymentAddress)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = PKPeerPaymentAddress;
  v5 = [(PKPeerPaymentAddress *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"addressLine1"];
    v7 = [v6 copy];
    addressLine1 = v5->_addressLine1;
    v5->_addressLine1 = v7;

    v9 = [dictionaryCopy PKStringForKey:@"addressLine2"];
    v10 = [v9 copy];
    addressLine2 = v5->_addressLine2;
    v5->_addressLine2 = v10;

    v12 = [dictionaryCopy PKStringForKey:@"city"];
    v13 = [v12 copy];
    city = v5->_city;
    v5->_city = v13;

    v15 = [dictionaryCopy PKStringForKey:@"state"];
    v16 = [v15 copy];
    state = v5->_state;
    v5->_state = v16;

    v18 = [dictionaryCopy PKStringForKey:@"postalCode"];
    v19 = [v18 copy];
    postalCode = v5->_postalCode;
    v5->_postalCode = v19;

    v5->_valid = [dictionaryCopy PKBoolForKey:@"valid"];
    v21 = [dictionaryCopy PKStringForKey:@"source"];
    v5->_source = PKPaymentSetupFieldSourceFromString(v21);

    v22 = [dictionaryCopy PKDateForKey:@"restrictionDate"];
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

- (PKPeerPaymentAddress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKPeerPaymentAddress;
  v5 = [(PKPeerPaymentAddress *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"addressLine1"];
    addressLine1 = v5->_addressLine1;
    v5->_addressLine1 = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"addressLine2"];
    addressLine2 = v5->_addressLine2;
    v5->_addressLine2 = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"city"];
    city = v5->_city;
    v5->_city = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = v5->_state;
    v5->_state = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"postalCode"];
    postalCode = v5->_postalCode;
    v5->_postalCode = v14;

    v5->_valid = [coderCopy decodeBoolForKey:@"valid"];
    v5->_source = [coderCopy decodeIntegerForKey:@"source"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"restrictionDate"];
    restrictionDate = v5->_restrictionDate;
    v5->_restrictionDate = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  addressLine1 = self->_addressLine1;
  coderCopy = coder;
  [coderCopy encodeObject:addressLine1 forKey:@"addressLine1"];
  [coderCopy encodeObject:self->_addressLine2 forKey:@"addressLine2"];
  [coderCopy encodeObject:self->_city forKey:@"city"];
  [coderCopy encodeObject:self->_state forKey:@"state"];
  [coderCopy encodeObject:self->_postalCode forKey:@"postalCode"];
  [coderCopy encodeBool:self->_valid forKey:@"valid"];
  [coderCopy encodeInteger:self->_source forKey:@"source"];
  [coderCopy encodeObject:self->_restrictionDate forKey:@"restrictionDate"];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_addressLine1];
  [array safelyAddObject:self->_addressLine2];
  [array safelyAddObject:self->_city];
  [array safelyAddObject:self->_state];
  [array safelyAddObject:self->_postalCode];
  [array safelyAddObject:self->_restrictionDate];
  v4 = PKCombinedHash(17, array);
  v5 = self->_valid - v4 + 32 * v4;
  v6 = self->_source - v5 + 32 * v5;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_34;
  }

  addressLine1 = self->_addressLine1;
  v6 = equalCopy[2];
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
  v8 = equalCopy[3];
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
  v10 = equalCopy[4];
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
  v12 = equalCopy[5];
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
  v14 = equalCopy[6];
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
  v16 = equalCopy[7];
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
  if (self->_valid != *(equalCopy + 8))
  {
    goto LABEL_34;
  }

  v17 = self->_source == equalCopy[8];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPeerPaymentAddress allocWithZone:](PKPeerPaymentAddress init];
  v6 = [(NSString *)self->_addressLine1 copyWithZone:zone];
  addressLine1 = v5->_addressLine1;
  v5->_addressLine1 = v6;

  v8 = [(NSString *)self->_addressLine2 copyWithZone:zone];
  addressLine2 = v5->_addressLine2;
  v5->_addressLine2 = v8;

  v10 = [(NSString *)self->_city copyWithZone:zone];
  city = v5->_city;
  v5->_city = v10;

  v12 = [(NSString *)self->_state copyWithZone:zone];
  state = v5->_state;
  v5->_state = v12;

  v14 = [(NSString *)self->_postalCode copyWithZone:zone];
  postalCode = v5->_postalCode;
  v5->_postalCode = v14;

  v5->_valid = self->_valid;
  v5->_source = self->_source;
  objc_storeStrong(&v5->_restrictionDate, self->_restrictionDate);
  return v5;
}

@end