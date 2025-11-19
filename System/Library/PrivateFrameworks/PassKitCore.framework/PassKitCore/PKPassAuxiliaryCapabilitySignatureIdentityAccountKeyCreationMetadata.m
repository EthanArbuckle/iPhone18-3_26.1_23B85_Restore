@interface PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata
- (PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata)initWithCoder:(id)a3;
- (PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata)initWithDictionary:(id)a3;
- (PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata)initWithSubcredentialIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata

- (PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v9 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"subcredentialIdentifier"];
    subcredentialIdentifier = v5->_subcredentialIdentifier;
    v5->_subcredentialIdentifier = v6;

    if (!v5->_subcredentialIdentifier)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata)initWithSubcredentialIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata;
  v6 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v9 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)[PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata alloc] _init];
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self _copyInto:v4];
  v5 = [(NSString *)self->_subcredentialIdentifier copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_existingAccountKeyIdentifier copy];
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

- (PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subcredentialIdentifier"];
    subcredentialIdentifier = v5->_subcredentialIdentifier;
    v5->_subcredentialIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"existingAccountKeyIdentifier"];
    existingAccountKeyIdentifier = v5->_existingAccountKeyIdentifier;
    v5->_existingAccountKeyIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata;
  v4 = a3;
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_subcredentialIdentifier forKey:{@"subcredentialIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_existingAccountKeyIdentifier forKey:@"existingAccountKeyIdentifier"];
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