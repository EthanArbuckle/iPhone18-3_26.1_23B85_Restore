@interface PKPaymentApplicationAssociatedReaderCA
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToASCAssociatedReaderIDReaderCA:(id)a3;
- (PKPaymentApplicationAssociatedReaderCA)initWithCoder:(id)a3;
- (PKPaymentApplicationAssociatedReaderCA)initWithDictionary:(id)a3 success:(BOOL *)a4;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentApplicationAssociatedReaderCA

- (PKPaymentApplicationAssociatedReaderCA)initWithDictionary:(id)a3 success:(BOOL *)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 1;
    if (!v6)
    {
      v8 = 0;
      *a4 = 0;
      goto LABEL_12;
    }
  }

  else if (!v6)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v9 = [v6 PKStringForKey:@"scheme"];
  v10 = PKTerminalPublicKeySchemeFromString(v9);
  v8 = 0;
  if (v10)
  {
    v11 = v10;
    if (v10 == 1 && ([v7 PKStringForKey:@"publicKey"], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "pk_decodeHexadecimal"), v8 = objc_claimAutoreleasedReturnValue(), v12, !v8))
    {
      v8 = 0;
      if (a4)
      {
        *a4 = 0;
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
        objc_storeStrong(&v13->_publicKey, v8);
      }

      self = v14;

      v8 = self;
    }
  }

LABEL_12:
  return v8;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = PKTerminalPublicKeySchemeToString(self->_scheme);
  [v3 setObject:v4 forKeyedSubscript:@"scheme"];

  v5 = [(NSData *)self->_publicKey hexEncoding];
  [v3 setObject:v5 forKeyedSubscript:@"publicKey"];

  v6 = [v3 copy];

  return v6;
}

- (PKPaymentApplicationAssociatedReaderCA)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentApplicationAssociatedReaderCA;
  v5 = [(PKPaymentApplicationAssociatedReaderCA *)&v9 init];
  if (v5)
  {
    v5->_scheme = [v4 decodeIntegerForKey:@"scheme"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  scheme = self->_scheme;
  v5 = a3;
  [v5 encodeInteger:scheme forKey:@"scheme"];
  [v5 encodeObject:self->_publicKey forKey:@"publicKey"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = PKTerminalPublicKeySchemeToString(self->_scheme);
  v5 = [(NSData *)self->_publicKey hexEncoding];
  v6 = [v3 stringWithFormat:@"<scheme: '%@' publicKey: '%@';>", v4, v5];;

  return v6;
}

- (id)redactedDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = PKTerminalPublicKeySchemeToString(self->_scheme);
  v4 = [v2 stringWithFormat:@"<scheme: '%@' publicKey: '<private>';>", v3];;

  return v4;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentApplicationAssociatedReaderCA *)self isEqualToASCAssociatedReaderIDReaderCA:v5];
  }

  return v6;
}

- (BOOL)isEqualToASCAssociatedReaderIDReaderCA:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_scheme == v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentApplicationAssociatedReaderCA allocWithZone:](PKPaymentApplicationAssociatedReaderCA init];
  v5->_scheme = self->_scheme;
  v6 = [(NSData *)self->_publicKey copyWithZone:a3];
  publicKey = v5->_publicKey;
  v5->_publicKey = v6;

  return v5;
}

@end