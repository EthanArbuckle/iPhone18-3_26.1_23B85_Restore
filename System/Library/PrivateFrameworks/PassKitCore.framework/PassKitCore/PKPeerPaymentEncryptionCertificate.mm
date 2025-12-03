@interface PKPeerPaymentEncryptionCertificate
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentEncryptionCertificate)initWithCoder:(id)coder;
- (PKPeerPaymentEncryptionCertificate)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentEncryptionCertificate

- (PKPeerPaymentEncryptionCertificate)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = PKPeerPaymentEncryptionCertificate;
  v5 = [(PKPeerPaymentEncryptionCertificate *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"destination"];
    v5->_destination = PKPeerPaymentEncryptionCertificateDestinationFromString(v6);

    v7 = [dictionaryCopy PKStringForKey:@"encryptionVersion"];
    v5->_encryptionScheme = PKPrivacyEncryptionSchemeFromString(v7);

    v8 = [dictionaryCopy PKNumberForKey:@"certificatesVersion"];
    v5->_certificatesVersion = [v8 integerValue];

    v9 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"encryptionCertificates"];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__PKPeerPaymentEncryptionCertificate_initWithDictionary___block_invoke;
    v15[3] = &unk_1E79CC700;
    v16 = v10;
    v11 = v10;
    [v9 enumerateObjectsUsingBlock:v15];
    v12 = [v11 copy];
    encryptionCertificates = v5->_encryptionCertificates;
    v5->_encryptionCertificates = v12;
  }

  return v5;
}

void __57__PKPeerPaymentEncryptionCertificate_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DEF0];
  v4 = a2;
  v5 = [[v3 alloc] initWithBase64EncodedString:v4 options:0];

  [*(a1 + 32) safelyAddObject:v5];
}

- (PKPeerPaymentEncryptionCertificate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKPeerPaymentEncryptionCertificate;
  v5 = [(PKPeerPaymentEncryptionCertificate *)&v12 init];
  if (v5)
  {
    v5->_destination = [coderCopy decodeIntegerForKey:@"destination"];
    v5->_encryptionScheme = [coderCopy decodeIntegerForKey:@"encryptionVersion"];
    v5->_certificatesVersion = [coderCopy decodeIntegerForKey:@"certificatesVersion"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"encryptionCertificates"];
    encryptionCertificates = v5->_encryptionCertificates;
    v5->_encryptionCertificates = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  destination = self->_destination;
  coderCopy = coder;
  [coderCopy encodeInteger:destination forKey:@"destination"];
  [coderCopy encodeInteger:self->_encryptionScheme forKey:@"encryptionVersion"];
  [coderCopy encodeInteger:self->_certificatesVersion forKey:@"certificatesVersion"];
  [coderCopy encodeObject:self->_encryptionCertificates forKey:@"encryptionCertificates"];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_encryptionCertificates];
  v4 = PKCombinedHash(17, array);
  v5 = self->_destination - v4 + 32 * v4;
  v6 = self->_encryptionScheme - v5 + 32 * v5;
  v7 = self->_certificatesVersion - v6 + 32 * v6;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  encryptionCertificates = self->_encryptionCertificates;
  v6 = equalCopy[4];
  if (encryptionCertificates && v6)
  {
    if (([(NSArray *)encryptionCertificates isEqual:?]& 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (encryptionCertificates != v6)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if (self->_destination != equalCopy[1] || self->_encryptionScheme != equalCopy[2])
  {
    goto LABEL_10;
  }

  v7 = self->_certificatesVersion == equalCopy[3];
LABEL_11:

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_destination == 1)
  {
    v5 = @"recipientData";
  }

  else
  {
    v5 = @"unknown";
  }

  [v3 appendFormat:@"destination: '%@'; ", v5];
  v6 = PKPrivacyEncryptionSchemeToString(self->_encryptionScheme);
  [v4 appendFormat:@"encryptionScheme: '%@'; ", v6];

  [v4 appendFormat:@"certificatesVersion: '%ld'; ", self->_certificatesVersion];
  [v4 appendFormat:@"encryptionCertificates: '%@'; ", self->_encryptionCertificates];
  [v4 appendFormat:@">"];

  return v4;
}

- (id)debugDescription
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_destination == 1)
  {
    v5 = @"recipientData";
  }

  else
  {
    v5 = @"unknown";
  }

  [v3 appendFormat:@"destination: '%@'; ", v5];
  v6 = PKPrivacyEncryptionSchemeToString(self->_encryptionScheme);
  [v4 appendFormat:@"encryptionScheme: '%@'; ", v6];

  [v4 appendFormat:@"certificatesVersion: '%ld'; ", self->_certificatesVersion];
  [v4 appendFormat:@"encryptionCertificates: [\n"];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_encryptionCertificates;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) base64EncodedStringWithOptions:0];
        [v4 appendFormat:@"%@, \n", v12];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [v4 appendFormat:@"];>"];
  v13 = [v4 copy];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPeerPaymentEncryptionCertificate allocWithZone:](PKPeerPaymentEncryptionCertificate init];
  v5->_destination = self->_destination;
  v5->_encryptionScheme = self->_encryptionScheme;
  v5->_certificatesVersion = self->_certificatesVersion;
  v6 = [(NSArray *)self->_encryptionCertificates copyWithZone:zone];
  encryptionCertificates = v5->_encryptionCertificates;
  v5->_encryptionCertificates = v6;

  return v5;
}

@end