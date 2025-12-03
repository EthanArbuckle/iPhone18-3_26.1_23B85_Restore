@interface PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata
- (PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata)initWithCoder:(id)coder;
- (PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata)initWithDictionary:(id)dictionary;
- (PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata)initWithSubcredentialIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata

- (PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v9 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"subcredentialIdentifier"];
    subcredentialIdentifier = v5->_subcredentialIdentifier;
    v5->_subcredentialIdentifier = v6;

    if (!v5->_subcredentialIdentifier)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata)initWithSubcredentialIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata;
  _init = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, identifier);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)[PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata alloc] _init];
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self _copyInto:_init];
  v5 = [(NSString *)self->_subcredentialIdentifier copy];
  v6 = _init[1];
  _init[1] = v5;

  v7 = [(NSString *)self->_existingAccountKeyIdentifier copy];
  v8 = _init[2];
  _init[2] = v7;

  return _init;
}

- (PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subcredentialIdentifier"];
    subcredentialIdentifier = v5->_subcredentialIdentifier;
    v5->_subcredentialIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"existingAccountKeyIdentifier"];
    existingAccountKeyIdentifier = v5->_existingAccountKeyIdentifier;
    v5->_existingAccountKeyIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata;
  coderCopy = coder;
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_subcredentialIdentifier forKey:{@"subcredentialIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_existingAccountKeyIdentifier forKey:@"existingAccountKeyIdentifier"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@"; subcredentialIdentifier: '%@'", self->_subcredentialIdentifier];
  [v6 appendFormat:@"; existingAccountKeyIdentifier: '%@'", self->_existingAccountKeyIdentifier];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_subcredentialIdentifier forKeyedSubscript:@"subcredentialIdentifier"];
  [v3 setObject:self->_existingAccountKeyIdentifier forKeyedSubscript:@"existingAccountKeyIdentifier"];
  v4 = [v3 copy];

  return v4;
}

@end