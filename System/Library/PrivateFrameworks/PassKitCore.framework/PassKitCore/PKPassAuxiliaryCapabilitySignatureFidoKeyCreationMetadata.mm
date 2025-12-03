@interface PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata
- (PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata)initWithCoder:(id)coder;
- (PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata

- (PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v14 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [PKFidoProfile alloc];
    v7 = [dictionaryCopy PKDictionaryForKey:@"fidoProfile"];
    v8 = [(PKFidoProfile *)v6 initWithDictionary:v7];
    fidoProfile = v5->_fidoProfile;
    v5->_fidoProfile = v8;

    v10 = [dictionaryCopy PKStringForKey:@"fidoChallenge"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)[PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata alloc] _init];
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self _copyInto:_init];
  v5 = [(NSData *)self->_fidoChallenge copy];
  v6 = *(_init + 2);
  *(_init + 2) = v5;

  objc_storeStrong(_init + 3, self->_externalizedAuth);
  return _init;
}

- (PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fidoProfile"];
    fidoProfile = v5->_fidoProfile;
    v5->_fidoProfile = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fidoChallenge"];
    fidoChallenge = v5->_fidoChallenge;
    v5->_fidoChallenge = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalizedAuth"];
    externalizedAuth = v5->_externalizedAuth;
    v5->_externalizedAuth = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassAuxiliaryCapabilitySignatureFidoKeyCreationMetadata;
  coderCopy = coder;
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_fidoProfile forKey:{@"fidoProfile", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_fidoChallenge forKey:@"fidoChallenge"];
  [coderCopy encodeObject:self->_externalizedAuth forKey:@"externalizedAuth"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@"; fidoProfile: '%@'", self->_fidoProfile];
  hexEncoding = [(NSData *)self->_fidoChallenge hexEncoding];
  [v6 appendFormat:@"; fidoChallenge: '%@'", hexEncoding];

  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  dictionaryRepresentation = [(PKFidoProfile *)self->_fidoProfile dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"fidoProfile"];

  hexEncoding = [(NSData *)self->_fidoChallenge hexEncoding];
  [v3 setObject:hexEncoding forKeyedSubscript:@"fidoChallenge"];

  v6 = [v3 copy];

  return v6;
}

@end