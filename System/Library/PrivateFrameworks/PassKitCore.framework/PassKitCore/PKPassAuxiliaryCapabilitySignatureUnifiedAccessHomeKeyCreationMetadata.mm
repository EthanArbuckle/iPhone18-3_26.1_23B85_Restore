@interface PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata
- (PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata)initWithCoder:(id)coder;
- (PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata)initWithReaderIdentifier:(id)identifier readerPublicKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata

- (PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata)initWithReaderIdentifier:(id)identifier readerPublicKey:(id)key
{
  identifierCopy = identifier;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata;
  _init = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v12 _init];
  v10 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, identifier);
    objc_storeStrong(&v10->_readerPublicKey, key);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)[PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata alloc] _init];
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self _copyInto:_init];
  v5 = [(NSData *)self->_readerIdentifier copy];
  v6 = _init[1];
  _init[1] = v5;

  v7 = [(NSData *)self->_readerPublicKey copy];
  v8 = _init[2];
  _init[2] = v7;

  return _init;
}

- (PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v5->_readerIdentifier;
    v5->_readerIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerPublicKey"];
    readerPublicKey = v5->_readerPublicKey;
    v5->_readerPublicKey = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata;
  coderCopy = coder;
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_readerIdentifier forKey:{@"readerIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_readerPublicKey forKey:@"readerPublicKey"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  hexEncoding = [(NSData *)self->_readerIdentifier hexEncoding];
  [v6 appendFormat:@"; readerIdentifier: '%@'", hexEncoding];

  hexEncoding2 = [(NSData *)self->_readerPublicKey hexEncoding];
  [v6 appendFormat:@"; readerPublicKey: '%@'", hexEncoding2];

  [v6 appendFormat:@">"];
  v9 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v9;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  hexEncoding = [(NSData *)self->_readerIdentifier hexEncoding];
  [v3 setObject:hexEncoding forKeyedSubscript:@"readerIdentifier"];

  hexEncoding2 = [(NSData *)self->_readerPublicKey hexEncoding];
  [v3 setObject:hexEncoding2 forKeyedSubscript:@"readerPublicKey"];

  v6 = [v3 copy];

  return v6;
}

@end