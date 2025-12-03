@interface PKEncryptedDataObject
- (PKEncryptedDataObject)initWithCoder:(id)coder;
- (PKEncryptedDataObject)initWithWebServiceDictionary:(id)dictionary;
- (id)asWebServiceDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKEncryptedDataObject

- (id)asWebServiceDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NSData *)self->_publicKeyHash base64EncodedStringWithOptions:0];
  [v3 setObject:v4 forKey:@"publicKeyHash"];

  v5 = [(NSData *)self->_ephemeralPublicKey base64EncodedStringWithOptions:0];
  [v3 setObject:v5 forKey:@"ephemeralPublicKey"];

  v6 = [(NSData *)self->_data base64EncodedStringWithOptions:0];
  [v3 setObject:v6 forKey:@"data"];

  version = self->_version;
  v8 = @"Unknown";
  if (version)
  {
    v8 = 0;
  }

  if (version == 1)
  {
    v9 = @"EC_v3";
  }

  else
  {
    v9 = v8;
  }

  [v3 setObject:v9 forKey:@"version"];
  v10 = [v3 copy];

  return v10;
}

- (PKEncryptedDataObject)initWithWebServiceDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v19.receiver = self;
    v19.super_class = PKEncryptedDataObject;
    self = [(PKEncryptedDataObject *)&v19 init];
    if (self)
    {
      v5 = [dictionaryCopy PKStringForKey:@"publicKeyHash"];
      if (v5)
      {
        v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v5 options:0];
        publicKeyHash = self->_publicKeyHash;
        self->_publicKeyHash = v6;
      }

      v8 = [dictionaryCopy PKStringForKey:@"ephemeralPublicKey"];
      if (v8)
      {
        v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
        ephemeralPublicKey = self->_ephemeralPublicKey;
        self->_ephemeralPublicKey = v9;
      }

      v11 = [dictionaryCopy PKStringForKey:@"data"];
      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v11 options:0];
        data = self->_data;
        self->_data = v12;
      }

      v14 = [dictionaryCopy PKStringForKey:@"version"];
      v15 = v14;
      v17 = 1;
      if (v14 != @"EC_v3")
      {
        if (!v14 || (v16 = [(__CFString *)v14 caseInsensitiveCompare:@"EC_v3"], v15, v16))
        {
          v17 = 0;
        }
      }

      self->_version = v17;
    }
  }

  return self;
}

- (PKEncryptedDataObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKEncryptedDataObject;
  v5 = [(PKEncryptedDataObject *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyHash"];
    publicKeyHash = v5->_publicKeyHash;
    v5->_publicKeyHash = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ephemeralPublicKey"];
    ephemeralPublicKey = v5->_ephemeralPublicKey;
    v5->_ephemeralPublicKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    v5->_version = [v12 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  publicKeyHash = self->_publicKeyHash;
  coderCopy = coder;
  [coderCopy encodeObject:publicKeyHash forKey:@"publicKeyHash"];
  [coderCopy encodeObject:self->_ephemeralPublicKey forKey:@"ephemeralPublicKey"];
  [coderCopy encodeObject:self->_data forKey:@"data"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_version];
  [coderCopy encodeObject:v6 forKey:@"version"];
}

@end