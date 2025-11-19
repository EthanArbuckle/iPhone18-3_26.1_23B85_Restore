@interface PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata
- (PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata)initWithCoder:(id)a3;
- (PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata

- (PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v12 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"readerGroupIdentifier"];
    v7 = [v6 pk_decodeHexadecimal];
    readerGroupIdentifier = v5->_readerGroupIdentifier;
    v5->_readerGroupIdentifier = v7;

    v9 = [v4 PKDictionaryForKey:@"serverParameters"];
    serverParameters = v5->_serverParameters;
    v5->_serverParameters = v9;

    if (!v5->_readerGroupIdentifier || !v5->_serverParameters)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)[PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata alloc] _init];
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self _copyInto:v4];
  v5 = [(NSData *)self->_readerGroupIdentifier copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSDictionary *)self->_serverParameters copy];
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

- (PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerGroupIdentifier"];
    readerGroupIdentifier = v5->_readerGroupIdentifier;
    v5->_readerGroupIdentifier = v6;

    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v8 initWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"serverParameters"];
    serverParameters = v5->_serverParameters;
    v5->_serverParameters = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassAuxiliaryCapabilitySignatureUnifiedAccessHydraKeyCreationMetadata;
  v4 = a3;
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_readerGroupIdentifier forKey:{@"readerGroupIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_serverParameters forKey:@"serverParameters"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  v7 = [(NSData *)self->_readerGroupIdentifier hexEncoding];
  [v6 appendFormat:@"; readerGroupIdentifier: '%@'", v7];

  [v6 appendFormat:@"; serverParameters: '%@'", self->_serverParameters];
  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NSData *)self->_readerGroupIdentifier hexEncoding];
  [v3 setObject:v4 forKeyedSubscript:@"readerGroupIdentifier"];

  [v3 setObject:self->_serverParameters forKeyedSubscript:@"serverParameters"];
  v5 = [v3 copy];

  return v5;
}

@end