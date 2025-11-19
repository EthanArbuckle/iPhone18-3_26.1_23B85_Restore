@interface PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata
- (PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata)initWithCoder:(id)a3;
- (PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata

- (PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v9 initWithDictionary:v4];
  if (v5)
  {
    v6 = [[PKSubcredentialEncryptedContainer alloc] initWithDictionary:v4];
    container = v5->_container;
    v5->_container = v6;

    if (!v5->_container)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)[PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata alloc] _init];
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self _copyInto:v4];
  v5 = [(PKSubcredentialEncryptedContainer *)self->_container copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"container"];
    container = v5->_container;
    v5->_container = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassAuxiliaryCapabilitySignatureCarConnectivityConsortiumKeyCreationMetadata;
  v4 = a3;
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_container forKey:{@"container", v5.receiver, v5.super_class}];
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
  v4 = [(PKSubcredentialEncryptedContainer *)self->_container dictionaryRepresentation];
  [v3 setObject:v4 forKeyedSubscript:@"container"];

  v5 = [v3 copy];

  return v5;
}

@end