@interface IDSPhoneUser
- (BOOL)differsFromPhoneNumber:(id)number;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPhoneUser:(id)user;
- (BOOL)isIdenticalToUser:(id)user;
- (BOOL)shouldReplace:(id)replace;
- (IDSPhoneUser)initWithCoder:(id)coder;
- (IDSPhoneUser)initWithLabelID:(id)d;
- (IDSPhoneUser)initWithLabelID:(id)d phoneBookNumber:(id)number;
- (IDSPhoneUser)initWithLabelID:(id)d phoneBookNumber:(id)number isDefaultUser:(BOOL)user countryCode:(id)code networkCode:(id)networkCode;
- (IDSPhoneUser)phoneUserWithUpdatedDefaultUser:(BOOL)user countryCode:(id)code networkCode:(id)networkCode;
- (IDSPhoneUser)phoneUserWithUpdatedPhoneNumber:(id)number;
- (IDSPhoneUser)phoneUserWithUpdatedPhoneNumber:(id)number phoneBookNumber:(id)bookNumber;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)realmPrefixedIdentifier;
- (id)unprefixedIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSPhoneUser

- (id)realmPrefixedIdentifier
{
  unprefixedIdentifier = [(IDSPhoneUser *)self unprefixedIdentifier];

  if (unprefixedIdentifier)
  {
    unprefixedIdentifier2 = [(IDSPhoneUser *)self unprefixedIdentifier];
    v5 = IMFormatPhoneNumber();
    v6 = v5;
    if (v5)
    {
      unprefixedIdentifier3 = v5;
    }

    else
    {
      unprefixedIdentifier3 = [(IDSPhoneUser *)self unprefixedIdentifier];
    }

    v8 = unprefixedIdentifier3;

    unprefixedIdentifier = [NSString stringWithFormat:@"%@%@", @"P:", v8];
  }

  return unprefixedIdentifier;
}

- (id)unprefixedIdentifier
{
  phoneNumber = [(IDSPhoneUser *)self phoneNumber];
  v4 = phoneNumber;
  if (phoneNumber)
  {
    phoneBookNumber = phoneNumber;
  }

  else
  {
    phoneBookNumber = [(IDSPhoneUser *)self phoneBookNumber];
  }

  v6 = phoneBookNumber;

  return v6;
}

- (IDSPhoneUser)initWithLabelID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = IDSPhoneUser;
  v6 = [(IDSPhoneUser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_labelID, d);
  }

  return v7;
}

- (IDSPhoneUser)initWithLabelID:(id)d phoneBookNumber:(id)number
{
  dCopy = d;
  numberCopy = number;
  v12.receiver = self;
  v12.super_class = IDSPhoneUser;
  v9 = [(IDSPhoneUser *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_labelID, d);
    objc_storeStrong(&v10->_phoneBookNumber, number);
  }

  return v10;
}

- (IDSPhoneUser)initWithLabelID:(id)d phoneBookNumber:(id)number isDefaultUser:(BOOL)user countryCode:(id)code networkCode:(id)networkCode
{
  dCopy = d;
  numberCopy = number;
  codeCopy = code;
  networkCodeCopy = networkCode;
  v20.receiver = self;
  v20.super_class = IDSPhoneUser;
  v17 = [(IDSPhoneUser *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_labelID, d);
    objc_storeStrong(&v18->_phoneBookNumber, number);
    v18->_isDefaultUser = user;
    objc_storeStrong(&v18->_countryCode, code);
    objc_storeStrong(&v18->_networkCode, networkCode);
  }

  return v18;
}

- (IDSPhoneUser)phoneUserWithUpdatedPhoneNumber:(id)number phoneBookNumber:(id)bookNumber
{
  bookNumberCopy = bookNumber;
  numberCopy = number;
  v8 = [(IDSPhoneUser *)self copy];
  [v8 setPhoneNumber:numberCopy];

  [v8 setPhoneBookNumber:bookNumberCopy];

  return v8;
}

- (IDSPhoneUser)phoneUserWithUpdatedPhoneNumber:(id)number
{
  numberCopy = number;
  v5 = [(IDSPhoneUser *)self copy];
  [v5 setPhoneNumber:numberCopy];

  return v5;
}

- (IDSPhoneUser)phoneUserWithUpdatedDefaultUser:(BOOL)user countryCode:(id)code networkCode:(id)networkCode
{
  userCopy = user;
  networkCodeCopy = networkCode;
  codeCopy = code;
  v10 = [(IDSPhoneUser *)self copy];
  [v10 setIsDefaultUser:userCopy];
  [v10 setCountryCode:codeCopy];

  [v10 setNetworkCode:networkCodeCopy];

  return v10;
}

- (BOOL)shouldReplace:(id)replace
{
  replaceCopy = replace;
  if ([replaceCopy realm] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = 0;
  }

  else
  {
    phoneNumber = [replaceCopy phoneNumber];
    if (phoneNumber)
    {
      v6 = 0;
    }

    else
    {
      phoneNumber2 = [(IDSPhoneUser *)self phoneNumber];
      v6 = phoneNumber2 != 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  uniqueIdentifier = [(IDSPhoneUser *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSPhoneUser *)self isEqualToPhoneUser:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToPhoneUser:(id)user
{
  userCopy = user;
  v5 = userCopy;
  if (self != userCopy)
  {
    uniqueIdentifier = [(IDSPhoneUser *)userCopy uniqueIdentifier];
    uniqueIdentifier2 = [(IDSPhoneUser *)self uniqueIdentifier];
    if (![uniqueIdentifier isEqualToString:uniqueIdentifier2])
    {
      v12 = 0;
LABEL_16:

      goto LABEL_17;
    }

    phoneNumber = [(IDSPhoneUser *)v5 phoneNumber];
    phoneNumber2 = [(IDSPhoneUser *)self phoneNumber];
    if (phoneNumber == phoneNumber2)
    {
      [(IDSPhoneUser *)v5 phoneBookNumber:v19];
    }

    else
    {
      phoneNumber3 = [(IDSPhoneUser *)v5 phoneNumber];
      phoneNumber4 = [(IDSPhoneUser *)self phoneNumber];
      if (![phoneNumber3 isEqualToString:phoneNumber4])
      {
        v12 = 0;
LABEL_14:

LABEL_15:
        goto LABEL_16;
      }

      [(IDSPhoneUser *)v5 phoneBookNumber:phoneNumber4];
    }
    v13 = ;
    phoneBookNumber = [(IDSPhoneUser *)self phoneBookNumber];
    v15 = phoneBookNumber;
    if (v13 == phoneBookNumber)
    {

      v12 = 1;
    }

    else
    {
      phoneBookNumber2 = [(IDSPhoneUser *)v5 phoneBookNumber];
      phoneBookNumber3 = [(IDSPhoneUser *)self phoneBookNumber];
      v12 = [phoneBookNumber2 isEqualToString:phoneBookNumber3];
    }

    phoneNumber4 = v20;
    phoneNumber3 = v22;
    if (phoneNumber == phoneNumber2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v12 = 1;
LABEL_17:

  return v12;
}

- (BOOL)isIdenticalToUser:(id)user
{
  userCopy = user;
  if ([(IDSPhoneUser *)self isEqualToUser:userCopy])
  {
    v5 = userCopy;
    isDefaultUser = [v5 isDefaultUser];
    if (isDefaultUser == [(IDSPhoneUser *)self isDefaultUser])
    {
      countryCode = [v5 countryCode];
      countryCode2 = [(IDSPhoneUser *)self countryCode];
      if ([countryCode isEqualToString:countryCode2])
      {
        networkCode = [v5 networkCode];
        networkCode2 = [(IDSPhoneUser *)self networkCode];
        v7 = [networkCode isEqualToString:networkCode2];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)differsFromPhoneNumber:(id)number
{
  numberCopy = number;
  v5 = numberCopy;
  if ([numberCopy hasPrefix:@"+"])
  {
    v6 = [NSCharacterSet characterSetWithCharactersInString:@"+"];
    v5 = [numberCopy stringByRemovingCharactersFromSet:v6];
  }

  phoneNumber = [(IDSPhoneUser *)self phoneNumber];
  if (phoneNumber)
  {
    phoneNumber2 = [(IDSPhoneUser *)self phoneNumber];
    v9 = [IDSCTAdapter isPhoneNumber:phoneNumber2 equivalentToExistingPhoneNumber:v5]^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  phoneBookNumber = [(IDSPhoneUser *)self phoneBookNumber];
  if (phoneBookNumber)
  {
    phoneBookNumber2 = [(IDSPhoneUser *)self phoneBookNumber];
    v12 = [IDSCTAdapter isPhoneNumber:phoneBookNumber2 equivalentToExistingPhoneNumber:v5]^ 1;
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  return v9 & v12;
}

- (IDSPhoneUser)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"labelID"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneBookNumber"];
    v8 = [coderCopy decodeBoolForKey:@"defaultUser"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkCode"];
    v11 = [(IDSPhoneUser *)self initWithLabelID:v5];
    [(IDSPhoneUser *)v11 setPhoneNumber:v6];
    [(IDSPhoneUser *)v11 setPhoneBookNumber:v7];
    [(IDSPhoneUser *)v11 setIsDefaultUser:v8];
    [(IDSPhoneUser *)v11 setCountryCode:v9];
    [(IDSPhoneUser *)v11 setNetworkCode:v10];

    self = v11;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  labelID = self->_labelID;
  coderCopy = coder;
  [coderCopy encodeObject:labelID forKey:@"labelID"];
  [coderCopy encodeObject:self->_phoneNumber forKey:@"phoneNumber"];
  [coderCopy encodeObject:self->_phoneBookNumber forKey:@"phoneBookNumber"];
  [coderCopy encodeBool:self->_isDefaultUser forKey:@"defaultUser"];
  [coderCopy encodeObject:self->_countryCode forKey:@"countryCode"];
  [coderCopy encodeObject:self->_networkCode forKey:@"networkCode"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithLabelID:self->_labelID phoneBookNumber:self->_phoneBookNumber];
  [v4 setPhoneNumber:self->_phoneNumber];
  [v4 setIsDefaultUser:self->_isDefaultUser];
  [v4 setCountryCode:self->_countryCode];
  [v4 setNetworkCode:self->_networkCode];
  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  uniqueIdentifier = [(IDSPhoneUser *)self uniqueIdentifier];
  phoneNumber = [(IDSPhoneUser *)self phoneNumber];
  phoneBookNumber = [(IDSPhoneUser *)self phoneBookNumber];
  isDefaultUser = [(IDSPhoneUser *)self isDefaultUser];
  v8 = @"NO";
  if (isDefaultUser)
  {
    v8 = @"YES";
  }

  v9 = [NSString stringWithFormat:@"<%@:%p> uid: %@ pn: %@, pbn: %@, def: %@", v3, self, uniqueIdentifier, phoneNumber, phoneBookNumber, v8];

  return v9;
}

@end