@interface PKPeerPaymentPaymentModeIdentifiers
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentPaymentModeIdentifiers)initWithCoder:(id)coder;
- (PKPeerPaymentPaymentModeIdentifiers)initWithDictionary:(id)dictionary;
- (id)description;
- (id)identifierForPaymentMode:(unint64_t)mode;
- (unint64_t)hash;
@end

@implementation PKPeerPaymentPaymentModeIdentifiers

- (PKPeerPaymentPaymentModeIdentifiers)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PKPeerPaymentPaymentModeIdentifiers;
  v5 = [(PKPeerPaymentPaymentModeIdentifiers *)&v10 init];
  if (v5)
  {
    v6 = PKPeerPaymentPaymentModeToString(2);
    v7 = [dictionaryCopy PKStringForKey:v6];
    deviceTap = v5->_deviceTap;
    v5->_deviceTap = v7;
  }

  return v5;
}

- (id)identifierForPaymentMode:(unint64_t)mode
{
  if (mode == 2)
  {
    v4 = self->_deviceTap;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKPeerPaymentPaymentModeIdentifiers)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentPaymentModeIdentifiers;
  v5 = [(PKPeerPaymentPaymentModeIdentifiers *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceTap"];
    deviceTap = v5->_deviceTap;
    v5->_deviceTap = v6;
  }

  return v5;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_deviceTap];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    deviceTap = self->_deviceTap;
    v6 = equalCopy[1];
    if (deviceTap && v6)
    {
      v7 = [(NSString *)deviceTap isEqual:?];
    }

    else
    {
      v7 = deviceTap == v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"deviceTap: '%@'; ", self->_deviceTap];
  [v3 appendFormat:@">"];

  return v3;
}

@end