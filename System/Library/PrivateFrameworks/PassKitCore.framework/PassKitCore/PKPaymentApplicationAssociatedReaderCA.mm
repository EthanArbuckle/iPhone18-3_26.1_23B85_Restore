@interface PKPaymentApplicationAssociatedReaderCA
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToASCAssociatedReaderIDReaderCA:(id)a;
- (PKPaymentApplicationAssociatedReaderCA)initWithCoder:(id)coder;
- (PKPaymentApplicationAssociatedReaderCA)initWithDictionary:(id)dictionary success:(BOOL *)success;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentApplicationAssociatedReaderCA

- (PKPaymentApplicationAssociatedReaderCA)initWithDictionary:(id)dictionary success:(BOOL *)success
{
  dictionaryCopy = dictionary;
  v7 = dictionaryCopy;
  if (success)
  {
    *success = 1;
    if (!dictionaryCopy)
    {
      selfCopy = 0;
      *success = 0;
      goto LABEL_12;
    }
  }

  else if (!dictionaryCopy)
  {
    selfCopy = 0;
    goto LABEL_12;
  }

  v9 = [dictionaryCopy PKStringForKey:@"scheme"];
  v10 = PKTerminalPublicKeySchemeFromString(v9);
  selfCopy = 0;
  if (v10)
  {
    v11 = v10;
    if (v10 == 1 && ([v7 PKStringForKey:@"publicKey"], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "pk_decodeHexadecimal"), selfCopy = objc_claimAutoreleasedReturnValue(), v12, !selfCopy))
    {
      selfCopy = 0;
      if (success)
      {
        *success = 0;
      }
    }

    else
    {
      v16.receiver = self;
      v16.super_class = PKPaymentApplicationAssociatedReaderCA;
      v13 = [(PKPaymentApplicationAssociatedReaderCA *)&v16 init];
      v14 = v13;
      if (v13)
      {
        v13->_scheme = v11;
        objc_storeStrong(&v13->_publicKey, selfCopy);
      }

      self = v14;

      selfCopy = self;
    }
  }

LABEL_12:
  return selfCopy;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = PKTerminalPublicKeySchemeToString(self->_scheme);
  [v3 setObject:v4 forKeyedSubscript:@"scheme"];

  hexEncoding = [(NSData *)self->_publicKey hexEncoding];
  [v3 setObject:hexEncoding forKeyedSubscript:@"publicKey"];

  v6 = [v3 copy];

  return v6;
}

- (PKPaymentApplicationAssociatedReaderCA)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPaymentApplicationAssociatedReaderCA;
  v5 = [(PKPaymentApplicationAssociatedReaderCA *)&v9 init];
  if (v5)
  {
    v5->_scheme = [coderCopy decodeIntegerForKey:@"scheme"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  scheme = self->_scheme;
  coderCopy = coder;
  [coderCopy encodeInteger:scheme forKey:@"scheme"];
  [coderCopy encodeObject:self->_publicKey forKey:@"publicKey"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = PKTerminalPublicKeySchemeToString(self->_scheme);
  hexEncoding = [(NSData *)self->_publicKey hexEncoding];
  v6 = [v3 stringWithFormat:@"<scheme: '%@' publicKey: '%@';>", v4, hexEncoding];;

  return v6;
}

- (id)redactedDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = PKTerminalPublicKeySchemeToString(self->_scheme);
  v4 = [v2 stringWithFormat:@"<scheme: '%@' publicKey: '<private>';>", v3];;

  return v4;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentApplicationAssociatedReaderCA *)self isEqualToASCAssociatedReaderIDReaderCA:v5];
  }

  return v6;
}

- (BOOL)isEqualToASCAssociatedReaderIDReaderCA:(id)a
{
  aCopy = a;
  v5 = aCopy;
  if (aCopy && self->_scheme == aCopy[1])
  {
    publicKey = self->_publicKey;
    v7 = v5[2];
    if (publicKey && v7)
    {
      v8 = [(NSData *)publicKey isEqual:?];
    }

    else
    {
      v8 = publicKey == v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentApplicationAssociatedReaderCA allocWithZone:](PKPaymentApplicationAssociatedReaderCA init];
  v5->_scheme = self->_scheme;
  v6 = [(NSData *)self->_publicKey copyWithZone:zone];
  publicKey = v5->_publicKey;
  v5->_publicKey = v6;

  return v5;
}

@end