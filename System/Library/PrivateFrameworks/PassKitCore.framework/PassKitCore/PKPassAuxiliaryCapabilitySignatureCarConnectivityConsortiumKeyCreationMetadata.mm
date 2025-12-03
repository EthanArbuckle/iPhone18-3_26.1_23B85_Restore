@interface PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata
- (PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata)initWithCoder:(id)coder;
- (PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata

- (PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v9 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [[PKSubcredentialEncryptedContainer alloc] initWithDictionary:dictionaryCopy];
    container = v5->_container;
    v5->_container = v6;

    if (!v5->_container)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)[PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata alloc] _init];
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self _copyInto:_init];
  v5 = [(PKSubcredentialEncryptedContainer *)self->_container copy];
  v6 = _init[1];
  _init[1] = v5;

  return _init;
}

- (PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"container"];
    container = v5->_container;
    v5->_container = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata;
  coderCopy = coder;
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_container forKey:{@"container", v5.receiver, v5.super_class}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@"; container: '%@'", self->_container];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  dictionaryRepresentation = [(PKSubcredentialEncryptedContainer *)self->_container dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"container"];

  v5 = [v3 copy];

  return v5;
}

@end