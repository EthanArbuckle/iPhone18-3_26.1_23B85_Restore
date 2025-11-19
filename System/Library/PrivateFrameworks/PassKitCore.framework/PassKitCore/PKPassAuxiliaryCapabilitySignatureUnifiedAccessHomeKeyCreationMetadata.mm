@interface PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata
- (PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata)initWithCoder:(id)a3;
- (PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata)initWithReaderIdentifier:(id)a3 readerPublicKey:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata

- (PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata)initWithReaderIdentifier:(id)a3 readerPublicKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata;
  v9 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v12 _init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 1, a3);
    objc_storeStrong(&v10->_readerPublicKey, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)[PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata alloc] _init];
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self _copyInto:v4];
  v5 = [(NSData *)self->_readerIdentifier copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSData *)self->_readerPublicKey copy];
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

- (PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v5->_readerIdentifier;
    v5->_readerIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerPublicKey"];
    readerPublicKey = v5->_readerPublicKey;
    v5->_readerPublicKey = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata;
  v4 = a3;
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_readerIdentifier forKey:{@"readerIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_readerPublicKey forKey:@"readerPublicKey"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  v7 = [(NSData *)self->_readerIdentifier hexEncoding];
  [v6 appendFormat:@"; readerIdentifier: '%@'", v7];

  v8 = [(NSData *)self->_readerPublicKey hexEncoding];
  [v6 appendFormat:@"; readerPublicKey: '%@'", v8];

  [v6 appendFormat:@">"];
  v9 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v9;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NSData *)self->_readerIdentifier hexEncoding];
  [v3 setObject:v4 forKeyedSubscript:@"readerIdentifier"];

  v5 = [(NSData *)self->_readerPublicKey hexEncoding];
  [v3 setObject:v5 forKeyedSubscript:@"readerPublicKey"];

  v6 = [v3 copy];

  return v6;
}

@end