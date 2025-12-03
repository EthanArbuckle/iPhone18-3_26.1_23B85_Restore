@interface PKAuxiliaryCapabilityRequirementKeyMaterial
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAuxiliaryCapabilityRequirementKey:(id)key;
- (PKAuxiliaryCapabilityRequirementKeyMaterial)initWithCoder:(id)coder;
- (PKAuxiliaryCapabilityRequirementKeyMaterial)initWithKeyMaterialContents:(id)contents;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAuxiliaryCapabilityRequirementKeyMaterial

- (PKAuxiliaryCapabilityRequirementKeyMaterial)initWithKeyMaterialContents:(id)contents
{
  contentsCopy = contents;
  v8.receiver = self;
  v8.super_class = PKAuxiliaryCapabilityRequirementKeyMaterial;
  v5 = [(PKAuxiliaryCapabilityRequirementKeyMaterial *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKAuxiliaryCapabilityRequirementKeyMaterial *)v5 setContents:contentsCopy];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"version: '%@'; ", self->_version];
  [v6 appendFormat:@"contents: '%@'; ", self->_contents];
  [v6 appendFormat:@"rootAttestation: '%@'; ", self->_rootAttestation];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = v3;
  if (self->_contents)
  {
    [v3 addObject:?];
  }

  if (self->_encryptedContents)
  {
    [v4 addObject:?];
  }

  if (self->_rootAttestation)
  {
    [v4 addObject:?];
  }

  if (self->_version)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAuxiliaryCapabilityRequirementKeyMaterial *)self isEqualToAuxiliaryCapabilityRequirementKey:v5];
  }

  return v6;
}

- (BOOL)isEqualToAuxiliaryCapabilityRequirementKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    goto LABEL_22;
  }

  rootAttestation = self->_rootAttestation;
  v6 = keyCopy[3];
  if (rootAttestation)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (rootAttestation != v6)
    {
      goto LABEL_22;
    }
  }

  else if (([(NSArray *)rootAttestation isEqual:?]& 1) == 0)
  {
    goto LABEL_22;
  }

  version = self->_version;
  v9 = keyCopy[4];
  if (version && v9)
  {
    if (([(NSString *)version isEqual:?]& 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (version != v9)
  {
    goto LABEL_22;
  }

  contents = self->_contents;
  v11 = keyCopy[1];
  if (!contents || !v11)
  {
    if (contents == v11)
    {
      goto LABEL_18;
    }

LABEL_22:
    v14 = 0;
    goto LABEL_23;
  }

  if (([(NSArray *)contents isEqual:?]& 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  encryptedContents = self->_encryptedContents;
  v13 = keyCopy[2];
  if (encryptedContents && v13)
  {
    v14 = [(NSArray *)encryptedContents isEqual:?];
  }

  else
  {
    v14 = encryptedContents == v13;
  }

LABEL_23:

  return v14;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NSArray *)self->_contents pk_arrayByApplyingBlock:&__block_literal_global_190_0];
  [v3 setObject:v4 forKeyedSubscript:@"contents"];

  v5 = [(NSArray *)self->_rootAttestation pk_arrayBySafelyApplyingBlock:&__block_literal_global_192];
  [v3 setObject:v5 forKeyedSubscript:@"rootAttestation"];

  v6 = [(NSArray *)self->_encryptedContents pk_arrayByApplyingBlock:&__block_literal_global_195_0];
  [v3 setObject:v6 forKeyedSubscript:@"encryptedContents"];

  [v3 setObject:self->_version forKeyedSubscript:@"version"];
  v7 = [v3 copy];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  contents = self->_contents;
  coderCopy = coder;
  [coderCopy encodeObject:contents forKey:@"contents"];
  [coderCopy encodeObject:self->_encryptedContents forKey:@"encryptedContents"];
  [coderCopy encodeObject:self->_rootAttestation forKey:@"rootAttestation"];
  [coderCopy encodeObject:self->_version forKey:@"version"];
}

- (PKAuxiliaryCapabilityRequirementKeyMaterial)initWithCoder:(id)coder
{
  v25[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_alloc(MEMORY[0x1E695DFD8]);
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v7 = [v5 initWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"contents"];

  v9 = [(PKAuxiliaryCapabilityRequirementKeyMaterial *)self initWithKeyMaterialContents:v8];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v12 = [v10 initWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"encryptedContents"];
    encryptedContents = v9->_encryptedContents;
    v9->_encryptedContents = v13;

    v15 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v17 = [v15 setWithArray:v16];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"rootAttestation"];
    rootAttestation = v9->_rootAttestation;
    v9->_rootAttestation = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v9->_version;
    v9->_version = v20;
  }

  return v9;
}

@end