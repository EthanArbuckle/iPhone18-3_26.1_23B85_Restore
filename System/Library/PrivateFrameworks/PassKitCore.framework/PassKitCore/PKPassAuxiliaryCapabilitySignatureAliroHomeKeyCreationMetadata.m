@interface PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata
- (PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata)initWithCoder:(id)a3;
- (PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata)initWithReaderIdentifier:(id)a3 readerPublicKey:(id)a4 homeIdentifier:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata

- (PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata)initWithReaderIdentifier:(id)a3 readerPublicKey:(id)a4 homeIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata;
  v12 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v15 _init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 1, a3);
    objc_storeStrong(&v13->_readerPublicKey, a4);
    objc_storeStrong(&v13->_homeIdentifier, a5);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)[PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata alloc] _init];
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self _copyInto:v4];
  v5 = [(NSData *)self->_readerIdentifier copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSData *)self->_readerPublicKey copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSUUID *)self->_homeIdentifier copy];
  v10 = v4[3];
  v4[3] = v9;

  return v4;
}

- (PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata;
  v5 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v5->_readerIdentifier;
    v5->_readerIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerPublicKey"];
    readerPublicKey = v5->_readerPublicKey;
    v5->_readerPublicKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeIdentifier"];
    homeIdentifier = v5->_homeIdentifier;
    v5->_homeIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata;
  v4 = a3;
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_readerIdentifier forKey:{@"readerIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_readerPublicKey forKey:@"readerPublicKey"];
  [v4 encodeObject:self->_homeIdentifier forKey:@"homeIdentifier"];
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

  v9 = [(NSUUID *)self->_homeIdentifier UUIDString];
  [v6 appendFormat:@"; homeIdentifier: '%@'", v9];

  [v6 appendFormat:@">"];
  v10 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v10;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NSData *)self->_readerIdentifier hexEncoding];
  [v3 setObject:v4 forKeyedSubscript:@"readerIdentifier"];

  v5 = [(NSData *)self->_readerPublicKey hexEncoding];
  [v3 setObject:v5 forKeyedSubscript:@"readerPublicKey"];

  v6 = [(NSUUID *)self->_homeIdentifier UUIDString];
  [v3 setObject:v6 forKeyedSubscript:@"homeIdentifier"];

  v7 = [v3 copy];

  return v7;
}

@end