@interface PKPassAuxiliaryRegistrationRequirements
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPassAuxiliaryRegistrationRequirements:(id)a3;
- (NSArray)allRequirements;
- (PKPassAuxiliaryRegistrationRequirements)initWithCoder:(id)a3;
- (PKPassAuxiliaryRegistrationRequirements)initWithDictionary:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassAuxiliaryRegistrationRequirements

- (PKPassAuxiliaryRegistrationRequirements)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12.receiver = self;
    v12.super_class = PKPassAuxiliaryRegistrationRequirements;
    v5 = [(PKPassAuxiliaryRegistrationRequirements *)&v12 init];
    if (v5)
    {
      self = [v4 PKArrayContaining:objc_opt_class() forKey:@"deviceSignatures"];
      v6 = [(PKPassAuxiliaryRegistrationRequirements *)self pk_arrayBySafelyApplyingBlock:&__block_literal_global_35];
      deviceSignatureRequirements = v5->_deviceSignatureRequirements;
      v5->_deviceSignatureRequirements = v6;

      v8 = [v4 PKArrayContaining:objc_opt_class() forKey:@"deviceDecryptions"];
      v9 = [v8 pk_arrayBySafelyApplyingBlock:&__block_literal_global_318];
      deviceDecryptionRequirements = v5->_deviceDecryptionRequirements;
      v5->_deviceDecryptionRequirements = v9;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

PKPassAuxiliaryRegistrationSignatureRequirement *__62__PKPassAuxiliaryRegistrationRequirements_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPassAuxiliaryRegistrationSignatureRequirement alloc] initWithDictionary:v2];

  return v3;
}

PKPassAuxiliaryRegistrationDecryptionRequirement *__62__PKPassAuxiliaryRegistrationRequirements_initWithDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPassAuxiliaryRegistrationDecryptionRequirement alloc] initWithDictionary:v2];

  return v3;
}

- (NSArray)allRequirements
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = v3;
  if (self->_deviceSignatureRequirements)
  {
    [(NSArray *)v3 addObjectsFromArray:?];
  }

  if (self->_deviceDecryptionRequirements)
  {
    [(NSArray *)v4 addObjectsFromArray:?];
  }

  if ([(NSArray *)v4 count])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (PKPassAuxiliaryRegistrationRequirements)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKPassAuxiliaryRegistrationRequirements;
  v5 = [(PKPassAuxiliaryRegistrationRequirements *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"deviceSignatureRequirements"];
    deviceSignatureRequirements = v5->_deviceSignatureRequirements;
    v5->_deviceSignatureRequirements = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"deviceDecryptionRequirements"];
    deviceDecryptionRequirements = v5->_deviceDecryptionRequirements;
    v5->_deviceDecryptionRequirements = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  deviceSignatureRequirements = self->_deviceSignatureRequirements;
  v5 = a3;
  [v5 encodeObject:deviceSignatureRequirements forKey:@"deviceSignatureRequirements"];
  [v5 encodeObject:self->_deviceDecryptionRequirements forKey:@"deviceDecryptionRequirements"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"deviceSignatureRequirements: '%@'; ", self->_deviceSignatureRequirements];
  [v6 appendFormat:@"deviceDecryptionRequirements: '%@'; ", self->_deviceDecryptionRequirements];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_deviceSignatureRequirements)
  {
    [v3 addObject:?];
  }

  if (self->_deviceDecryptionRequirements)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassAuxiliaryRegistrationRequirements *)self isEqualToPassAuxiliaryRegistrationRequirements:v5];
  }

  return v6;
}

- (BOOL)isEqualToPassAuxiliaryRegistrationRequirements:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  deviceSignatureRequirements = self->_deviceSignatureRequirements;
  v6 = v4[1];
  if (deviceSignatureRequirements)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (([(NSArray *)deviceSignatureRequirements isEqual:?]& 1) != 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if (deviceSignatureRequirements != v6)
  {
    goto LABEL_8;
  }

LABEL_11:
  deviceDecryptionRequirements = self->_deviceDecryptionRequirements;
  v11 = v4[2];
  if (deviceDecryptionRequirements && v11)
  {
    v8 = [(NSArray *)deviceDecryptionRequirements isEqual:?];
  }

  else
  {
    v8 = deviceDecryptionRequirements == v11;
  }

LABEL_9:

  return v8;
}

@end