@interface PKSecureElementCertificateSet
- (PKSecureElementCertificateSet)initWithCoder:(id)coder;
- (PKSecureElementCertificateSet)initWithDictionary:(id)dictionary;
- (PKSecureElementCertificateSet)initWithRSACertificate:(id)certificate ECDSACertificate:(id)aCertificate;
- (id)certificateOfType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSecureElementCertificateSet

- (PKSecureElementCertificateSet)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v9.receiver = self;
    v9.super_class = PKSecureElementCertificateSet;
    v5 = [(PKSecureElementCertificateSet *)&v9 init];
    if (v5)
    {
      v6 = [dictionaryCopy copy];
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

- (PKSecureElementCertificateSet)initWithRSACertificate:(id)certificate ECDSACertificate:(id)aCertificate
{
  v6 = MEMORY[0x1E695DF90];
  aCertificateCopy = aCertificate;
  certificateCopy = certificate;
  dictionary = [v6 dictionary];
  v10 = PKGetConstantStringNFSecureElementManagerSessionRSAACertificateKey();
  [dictionary setObject:certificateCopy forKeyedSubscript:v10];

  v11 = PKGetConstantStringNFSecureElementManagerSessionECDSACertificateKey();
  [dictionary setObject:aCertificateCopy forKeyedSubscript:v11];

  v12 = [(PKSecureElementCertificateSet *)self initWithDictionary:dictionary];
  return v12;
}

- (PKSecureElementCertificateSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKSecureElementCertificateSet;
  v5 = [(PKSecureElementCertificateSet *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodePropertyListForKey:@"dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    v5->_supportsLegacyFormats = [coderCopy decodeBoolForKey:@"supportsLegacyFormats"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSDictionary *)self->_dictionary copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_supportsLegacyFormats;
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  dictionary = self->_dictionary;
  coderCopy = coder;
  [coderCopy encodeObject:dictionary forKey:@"dictionary"];
  [coderCopy encodeBool:self->_supportsLegacyFormats forKey:@"supportsLegacyFormats"];
}

- (id)certificateOfType:(unint64_t)type
{
  if (type == 1)
  {
    dictionary = self->_dictionary;
    v8 = PKGetConstantStringNFSecureElementManagerSessionRSAACertificateKey();
    v6 = [(NSDictionary *)dictionary objectForKeyedSubscript:v8];
  }

  else
  {
    if (type)
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