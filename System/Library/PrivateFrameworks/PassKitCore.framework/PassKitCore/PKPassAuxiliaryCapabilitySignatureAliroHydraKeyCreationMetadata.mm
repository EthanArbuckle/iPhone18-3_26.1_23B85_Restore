@interface PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata
- (PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata)initWithCoder:(id)a3;
- (PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata

- (PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v15 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"readerGroupIdentifier"];
    v7 = [v6 pk_decodeHexadecimal];
    readerGroupIdentifier = v5->_readerGroupIdentifier;
    v5->_readerGroupIdentifier = v7;

    v9 = [v4 PKStringForKey:@"readerGroupPublicKey"];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];
      readerGroupPublicKey = v5->_readerGroupPublicKey;
      v5->_readerGroupPublicKey = v10;
    }

    v12 = [v4 PKDictionaryForKey:@"serverParameters"];
    serverParameters = v5->_serverParameters;
    v5->_serverParameters = v12;

    if (!v5->_readerGroupIdentifier || !v5->_readerGroupPublicKey || !v5->_serverParameters)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)[PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata alloc] _init];
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self _copyInto:v4];
  v5 = [(NSData *)self->_readerGroupIdentifier copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSData *)self->_readerGroupPublicKey copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSDictionary *)self->_serverParameters copy];
  v10 = v4[3];
  v4[3] = v9;

  return v4;
}

- (PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerGroupIdentifier"];
    readerGroupIdentifier = v5->_readerGroupIdentifier;
    v5->_readerGroupIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerGroupPublicKey"];
    readerGroupPublicKey = v5->_readerGroupPublicKey;
    v5->_readerGroupPublicKey = v8;

    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v10 initWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"serverParameters"];
    serverParameters = v5->_serverParameters;
    v5->_serverParameters = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassAuxiliaryCapabilitySignatureAliroHydraKeyCreationMetadata;
  v4 = a3;
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_readerGroupIdentifier forKey:{@"readerGroupIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_readerGroupPublicKey forKey:@"readerGroupPublicKey"];
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

  v8 = [(NSData *)self->_readerGroupPublicKey hexEncoding];
  [v6 appendFormat:@"; readerGroupPublicKey: '%@'", v8];

  [v6 appendFormat:@"; serverParameters: '%@'", self->_serverParameters];
  [v6 appendFormat:@">"];
  v9 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v9;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NSData *)self->_readerGroupIdentifier hexEncoding];
  [v3 setObject:v4 forKeyedSubscript:@"readerGroupIdentifier"];

  v5 = [(NSData *)self->_readerGroupPublicKey hexEncoding];
  [v3 setObject:v5 forKeyedSubscript:@"readerGroupPublicKey"];

  [v3 setObject:self->_serverParameters forKeyedSubscript:@"serverParameters"];
  v6 = [v3 copy];

  return v6;
}

@end