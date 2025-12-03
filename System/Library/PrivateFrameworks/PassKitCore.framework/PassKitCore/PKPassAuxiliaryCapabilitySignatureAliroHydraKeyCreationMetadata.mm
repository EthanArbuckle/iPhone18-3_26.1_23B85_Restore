@interface PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata
- (PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata)initWithCoder:(id)coder;
- (PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata

- (PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v15 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"readerGroupIdentifier"];
    pk_decodeHexadecimal = [v6 pk_decodeHexadecimal];
    readerGroupIdentifier = v5->_readerGroupIdentifier;
    v5->_readerGroupIdentifier = pk_decodeHexadecimal;

    v9 = [dictionaryCopy PKStringForKey:@"readerGroupPublicKey"];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];
      readerGroupPublicKey = v5->_readerGroupPublicKey;
      v5->_readerGroupPublicKey = v10;
    }

    v12 = [dictionaryCopy PKDictionaryForKey:@"serverParameters"];
    serverParameters = v5->_serverParameters;
    v5->_serverParameters = v12;

    if (!v5->_readerGroupIdentifier || !v5->_readerGroupPublicKey || !v5->_serverParameters)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)[PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata alloc] _init];
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self _copyInto:_init];
  v5 = [(NSData *)self->_readerGroupIdentifier copy];
  v6 = _init[1];
  _init[1] = v5;

  v7 = [(NSData *)self->_readerGroupPublicKey copy];
  v8 = _init[2];
  _init[2] = v7;

  v9 = [(NSDictionary *)self->_serverParameters copy];
  v10 = _init[3];
  _init[3] = v9;

  return _init;
}

- (PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerGroupIdentifier"];
    readerGroupIdentifier = v5->_readerGroupIdentifier;
    v5->_readerGroupIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerGroupPublicKey"];
    readerGroupPublicKey = v5->_readerGroupPublicKey;
    v5->_readerGroupPublicKey = v8;

    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v10 initWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"serverParameters"];
    serverParameters = v5->_serverParameters;
    v5->_serverParameters = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata;
  coderCopy = coder;
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_readerGroupIdentifier forKey:{@"readerGroupIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_readerGroupPublicKey forKey:@"readerGroupPublicKey"];
  [coderCopy encodeObject:self->_serverParameters forKey:@"serverParameters"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  hexEncoding = [(NSData *)self->_readerGroupIdentifier hexEncoding];
  [v6 appendFormat:@"; readerGroupIdentifier: '%@'", hexEncoding];

  hexEncoding2 = [(NSData *)self->_readerGroupPublicKey hexEncoding];
  [v6 appendFormat:@"; readerGroupPublicKey: '%@'", hexEncoding2];

  [v6 appendFormat:@"; serverParameters: '%@'", self->_serverParameters];
  [v6 appendFormat:@">"];
  v9 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v9;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  hexEncoding = [(NSData *)self->_readerGroupIdentifier hexEncoding];
  [v3 setObject:hexEncoding forKeyedSubscript:@"readerGroupIdentifier"];

  hexEncoding2 = [(NSData *)self->_readerGroupPublicKey hexEncoding];
  [v3 setObject:hexEncoding2 forKeyedSubscript:@"readerGroupPublicKey"];

  [v3 setObject:self->_serverParameters forKeyedSubscript:@"serverParameters"];
  v6 = [v3 copy];

  return v6;
}

@end