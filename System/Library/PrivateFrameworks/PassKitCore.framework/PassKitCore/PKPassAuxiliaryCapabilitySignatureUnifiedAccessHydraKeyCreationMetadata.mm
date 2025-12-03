@interface PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata
- (PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata)initWithCoder:(id)coder;
- (PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata

- (PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v12 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"readerGroupIdentifier"];
    pk_decodeHexadecimal = [v6 pk_decodeHexadecimal];
    readerGroupIdentifier = v5->_readerGroupIdentifier;
    v5->_readerGroupIdentifier = pk_decodeHexadecimal;

    v9 = [dictionaryCopy PKDictionaryForKey:@"serverParameters"];
    serverParameters = v5->_serverParameters;
    v5->_serverParameters = v9;

    if (!v5->_readerGroupIdentifier || !v5->_serverParameters)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)[PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata alloc] _init];
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self _copyInto:_init];
  v5 = [(NSData *)self->_readerGroupIdentifier copy];
  v6 = _init[1];
  _init[1] = v5;

  v7 = [(NSDictionary *)self->_serverParameters copy];
  v8 = _init[2];
  _init[2] = v7;

  return _init;
}

- (PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerGroupIdentifier"];
    readerGroupIdentifier = v5->_readerGroupIdentifier;
    v5->_readerGroupIdentifier = v6;

    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v8 initWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"serverParameters"];
    serverParameters = v5->_serverParameters;
    v5->_serverParameters = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata;
  coderCopy = coder;
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_readerGroupIdentifier forKey:{@"readerGroupIdentifier", v5.receiver, v5.super_class}];
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

  [v6 appendFormat:@"; serverParameters: '%@'", self->_serverParameters];
  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  hexEncoding = [(NSData *)self->_readerGroupIdentifier hexEncoding];
  [v3 setObject:hexEncoding forKeyedSubscript:@"readerGroupIdentifier"];

  [v3 setObject:self->_serverParameters forKeyedSubscript:@"serverParameters"];
  v5 = [v3 copy];

  return v5;
}

@end