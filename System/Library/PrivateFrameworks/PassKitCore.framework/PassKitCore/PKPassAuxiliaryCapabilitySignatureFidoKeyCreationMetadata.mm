@interface PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata
- (PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata)initWithCoder:(id)a3;
- (PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata

- (PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v14 initWithDictionary:v4];
  if (v5)
  {
    v6 = [PKFidoProfile alloc];
    v7 = [v4 PKDictionaryForKey:@"fidoProfile"];
    v8 = [(PKFidoProfile *)v6 initWithDictionary:v7];
    fidoProfile = v5->_fidoProfile;
    v5->_fidoProfile = v8;

    v10 = [v4 PKStringForKey:@"fidoChallenge"];
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v10 options:0];
      fidoChallenge = v5->_fidoChallenge;
      v5->_fidoChallenge = v11;
    }

    if (!v5->_fidoProfile || !v5->_fidoChallenge)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)[PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata alloc] _init];
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self _copyInto:v4];
  v5 = [(NSData *)self->_fidoChallenge copy];
  v6 = *(v4 + 2);
  *(v4 + 2) = v5;

  objc_storeStrong(v4 + 3, self->_externalizedAuth);
  return v4;
}

- (PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fidoProfile"];
    fidoProfile = v5->_fidoProfile;
    v5->_fidoProfile = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fidoChallenge"];
    fidoChallenge = v5->_fidoChallenge;
    v5->_fidoChallenge = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalizedAuth"];
    externalizedAuth = v5->_externalizedAuth;
    v5->_externalizedAuth = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata;
  v4 = a3;
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_fidoProfile forKey:{@"fidoProfile", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_fidoChallenge forKey:@"fidoChallenge"];
  [v4 encodeObject:self->_externalizedAuth forKey:@"externalizedAuth"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@"; fidoProfile: '%@'", self->_fidoProfile];
  v7 = [(NSData *)self->_fidoChallenge hexEncoding];
  [v6 appendFormat:@"; fidoChallenge: '%@'", v7];

  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PKFidoProfile *)self->_fidoProfile dictionaryRepresentation];
  [v3 setObject:v4 forKeyedSubscript:@"fidoProfile"];

  v5 = [(NSData *)self->_fidoChallenge hexEncoding];
  [v3 setObject:v5 forKeyedSubscript:@"fidoChallenge"];

  v6 = [v3 copy];

  return v6;
}

@end