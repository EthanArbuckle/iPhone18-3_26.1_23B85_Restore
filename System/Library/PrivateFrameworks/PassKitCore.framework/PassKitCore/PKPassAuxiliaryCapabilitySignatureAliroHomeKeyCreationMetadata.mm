@interface PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata
- (PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata)initWithCoder:(id)coder;
- (PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata)initWithReaderIdentifier:(id)identifier readerPublicKey:(id)key homeIdentifier:(id)homeIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata

- (PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata)initWithReaderIdentifier:(id)identifier readerPublicKey:(id)key homeIdentifier:(id)homeIdentifier
{
  identifierCopy = identifier;
  keyCopy = key;
  homeIdentifierCopy = homeIdentifier;
  v15.receiver = self;
  v15.super_class = PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata;
  _init = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v15 _init];
  v13 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, identifier);
    objc_storeStrong(&v13->_readerPublicKey, key);
    objc_storeStrong(&v13->_homeIdentifier, homeIdentifier);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)[PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata alloc] _init];
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self _copyInto:_init];
  v5 = [(NSData *)self->_readerIdentifier copy];
  v6 = _init[1];
  _init[1] = v5;

  v7 = [(NSData *)self->_readerPublicKey copy];
  v8 = _init[2];
  _init[2] = v7;

  v9 = [(NSUUID *)self->_homeIdentifier copy];
  v10 = _init[3];
  _init[3] = v9;

  return _init;
}

- (PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v5->_readerIdentifier;
    v5->_readerIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerPublicKey"];
    readerPublicKey = v5->_readerPublicKey;
    v5->_readerPublicKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeIdentifier"];
    homeIdentifier = v5->_homeIdentifier;
    v5->_homeIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata;
  coderCopy = coder;
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_readerIdentifier forKey:{@"readerIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_readerPublicKey forKey:@"readerPublicKey"];
  [coderCopy encodeObject:self->_homeIdentifier forKey:@"homeIdentifier"];
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

  uUIDString = [(NSUUID *)self->_homeIdentifier UUIDString];
  [v6 appendFormat:@"; homeIdentifier: '%@'", uUIDString];

  [v6 appendFormat:@">"];
  v10 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v10;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  hexEncoding = [(NSData *)self->_readerIdentifier hexEncoding];
  [v3 setObject:hexEncoding forKeyedSubscript:@"readerIdentifier"];

  hexEncoding2 = [(NSData *)self->_readerPublicKey hexEncoding];
  [v3 setObject:hexEncoding2 forKeyedSubscript:@"readerPublicKey"];

  uUIDString = [(NSUUID *)self->_homeIdentifier UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"homeIdentifier"];

  v7 = [v3 copy];

  return v7;
}

@end