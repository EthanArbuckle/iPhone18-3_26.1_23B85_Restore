@interface PKPassAuxiliaryCapabilityDecryptionISO18013KeyCreationMetadata
- (PKPassAuxiliaryCapabilityDecryptionISO18013KeyCreationMetadata)initWithCoder:(id)coder;
- (PKPassAuxiliaryCapabilityDecryptionISO18013KeyCreationMetadata)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassAuxiliaryCapabilityDecryptionISO18013KeyCreationMetadata

- (PKPassAuxiliaryCapabilityDecryptionISO18013KeyCreationMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PKPassAuxiliaryCapabilityDecryptionISO18013KeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v9 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"cardType"];
    v5->_cardType = PKPaymentCardTypeFromString(v6);

    v7 = [dictionaryCopy PKStringForKey:@"attestationType"];
    v5->_attestationType = PKPassAuxiliaryCapabilityKeyAttestationTypeFromString(v7);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)[PKPassAuxiliaryCapabilityDecryptionISO18013KeyCreationMetadata alloc] _init];
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self _copyInto:_init];
  _init[1] = self->_cardType;
  _init[2] = self->_attestationType;
  return _init;
}

- (PKPassAuxiliaryCapabilityDecryptionISO18013KeyCreationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPassAuxiliaryCapabilityDecryptionISO18013KeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardType"];
    v5->_cardType = PKPaymentCardTypeFromString(v6);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attestationType"];
    v5->_attestationType = PKPassAuxiliaryCapabilityKeyAttestationTypeFromString(v7);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKPassAuxiliaryCapabilityDecryptionISO18013KeyCreationMetadata;
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v7 encodeWithCoder:coderCopy];
  v5 = PKPaymentCardTypeToString(self->_cardType);
  [coderCopy encodeObject:v5 forKey:@"cardType"];

  attestationType = self->_attestationType;
  if (attestationType >= 3)
  {
    __break(1u);
  }

  else
  {
    [coderCopy encodeObject:qword_1E79D61D0[attestationType] forKey:@"attestationType"];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  v7 = PKPaymentCardTypeToString(self->_cardType);
  [v6 appendFormat:@"; cardType: %@", v7];

  attestationType = self->_attestationType;
  if (attestationType >= 3)
  {
    __break(1u);
  }

  else
  {
    [v6 appendFormat:@"; attestationType: %@", qword_1E79D61D0[attestationType]];
    [v6 appendFormat:@">"];
    v10 = [MEMORY[0x1E696AEC0] stringWithString:v6];

    return v10;
  }

  return result;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  result = self->_cardType;
  if (result)
  {
    v5 = PKPaymentCardTypeToString(result);
    [v3 setObject:v5 forKeyedSubscript:@"cardType"];
  }

  attestationType = self->_attestationType;
  if (attestationType)
  {
    if (attestationType == 1)
    {
      v7 = @"BAA";
    }

    else
    {
      if (attestationType != 2)
      {
        __break(1u);
        return result;
      }

      v7 = @"CASD";
    }

    [v3 setObject:v7 forKeyedSubscript:@"attestationType"];
  }

  v8 = [v3 copy];

  return v8;
}

@end