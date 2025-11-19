@interface PKSecureElementCertificateSet
- (PKSecureElementCertificateSet)initWithCoder:(id)a3;
- (PKSecureElementCertificateSet)initWithDictionary:(id)a3;
- (PKSecureElementCertificateSet)initWithRSACertificate:(id)a3 ECDSACertificate:(id)a4;
- (id)certificateOfType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSecureElementCertificateSet

- (PKSecureElementCertificateSet)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9.receiver = self;
    v9.super_class = PKSecureElementCertificateSet;
    v5 = [(PKSecureElementCertificateSet *)&v9 init];
    if (v5)
    {
      v6 = [v4 copy];
      dictionary = v5->_dictionary;
      v5->_dictionary = v6;
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (PKSecureElementCertificateSet)initWithRSACertificate:(id)a3 ECDSACertificate:(id)a4
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionary];
  v10 = PKGetConstantStringNFSecureElementManagerSessionRSAACertificateKey();
  [v9 setObject:v8 forKeyedSubscript:v10];

  v11 = PKGetConstantStringNFSecureElementManagerSessionECDSACertificateKey();
  [v9 setObject:v7 forKeyedSubscript:v11];

  v12 = [(PKSecureElementCertificateSet *)self initWithDictionary:v9];
  return v12;
}

- (PKSecureElementCertificateSet)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKSecureElementCertificateSet;
  v5 = [(PKSecureElementCertificateSet *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodePropertyListForKey:@"dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    v5->_supportsLegacyFormats = [v4 decodeBoolForKey:@"supportsLegacyFormats"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSDictionary *)self->_dictionary copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_supportsLegacyFormats;
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  dictionary = self->_dictionary;
  v5 = a3;
  [v5 encodeObject:dictionary forKey:@"dictionary"];
  [v5 encodeBool:self->_supportsLegacyFormats forKey:@"supportsLegacyFormats"];
}

- (id)certificateOfType:(unint64_t)a3
{
  if (a3 == 1)
  {
    dictionary = self->_dictionary;
    v8 = PKGetConstantStringNFSecureElementManagerSessionRSAACertificateKey();
    v6 = [(NSDictionary *)dictionary objectForKeyedSubscript:v8];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v4 = self->_dictionary;
    v5 = PKGetConstantStringNFSecureElementManagerSessionECDSACertificateKey();
    v6 = [(NSDictionary *)v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      goto LABEL_8;
    }

    if (!self->_supportsLegacyFormats)
    {
LABEL_6:
      v6 = 0;
    }

    else
    {
      v6 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"ECC"];
    }
  }

LABEL_8:

  return v6;
}

@end