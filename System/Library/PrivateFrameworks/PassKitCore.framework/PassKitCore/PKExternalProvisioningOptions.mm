@interface PKExternalProvisioningOptions
+ (id)mockOptions;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToExternalProvisioningOptions:(id)options;
- (PKExternalProvisioningOptions)initWithCoder:(id)coder;
- (PKExternalProvisioningOptions)initWithDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKExternalProvisioningOptions

- (PKExternalProvisioningOptions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v18.receiver = self;
    v18.super_class = PKExternalProvisioningOptions;
    v5 = [(PKExternalProvisioningOptions *)&v18 init];
    if (v5)
    {
      v6 = [PKExternalProvisioningPolicy alloc];
      v7 = [dictionaryCopy PKDictionaryForKey:@"provisioningPolicy"];
      v8 = [(PKExternalProvisioningPolicy *)v6 initWithDictionary:v7];
      policy = v5->_policy;
      v5->_policy = v8;

      v10 = [dictionaryCopy objectForKeyedSubscript:@"authorizationType"];

      if (v10)
      {
        v11 = [dictionaryCopy PKStringForKey:@"authorizationType"];
        v5->_authorizationType = PKExternalProvisioningAuthorizationTypeFromString(v11);
      }

      else
      {
        v5->_authorizationType = 1;
      }

      v13 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"devices"];
      v14 = [v13 pk_arrayBySafelyApplyingBlock:&__block_literal_global_220];
      devices = v5->_devices;
      v5->_devices = v14;

      v16 = v5->_devices;
      if (!v16 || ![(NSArray *)v16 count])
      {

        v5 = 0;
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

PKExternalDestinationDevice *__52__PKExternalProvisioningOptions_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKExternalDestinationDevice alloc] initWithDictionary:v2];

  return v3;
}

+ (id)mockOptions
{
  v2 = [[PKExternalProvisioningOptions alloc] initWithDictionary:&unk_1F23B6E68];

  return v2;
}

- (PKExternalProvisioningOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKExternalProvisioningOptions;
  v5 = [(PKExternalProvisioningOptions *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"policy"];
    policy = v5->_policy;
    v5->_policy = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorizationType"];
    v5->_authorizationType = PKExternalProvisioningAuthorizationTypeFromString(v8);

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"devices"];
    devices = v5->_devices;
    v5->_devices = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  policy = self->_policy;
  coderCopy = coder;
  [coderCopy encodeObject:policy forKey:@"policy"];
  authorizationType = self->_authorizationType;
  v6 = @"none";
  if (authorizationType != 1)
  {
    v6 = 0;
  }

  if (authorizationType == 2)
  {
    v7 = @"dpan";
  }

  else
  {
    v7 = v6;
  }

  [coderCopy encodeObject:v7 forKey:@"authorizationType"];
  [coderCopy encodeObject:self->_devices forKey:@"devices"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"policy: '%@'; ", self->_policy];
  [v6 appendFormat:@"devices: '%@'; ", self->_devices];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_policy];
  [v3 safelyAddObject:self->_devices];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_authorizationType - v4 + 32 * v4;

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKExternalProvisioningOptions *)self isEqualToExternalProvisioningOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToExternalProvisioningOptions:(id)options
{
  optionsCopy = options;
  if (!optionsCopy)
  {
    goto LABEL_14;
  }

  policy = self->_policy;
  v6 = optionsCopy[1];
  if (policy)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if ([(PKExternalProvisioningPolicy *)policy isEqual:?])
    {
      goto LABEL_10;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  if (policy != v6)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (self->_authorizationType != optionsCopy[2])
  {
    goto LABEL_14;
  }

  devices = self->_devices;
  v9 = optionsCopy[3];
  if (devices && v9)
  {
    v10 = [(NSArray *)devices isEqual:?];
  }

  else
  {
    v10 = devices == v9;
  }

LABEL_15:

  return v10;
}

@end