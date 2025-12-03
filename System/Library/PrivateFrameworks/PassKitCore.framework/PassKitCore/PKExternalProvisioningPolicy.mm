@interface PKExternalProvisioningPolicy
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToExternalProvisioningPolicy:(id)policy;
- (PKExternalProvisioningPolicy)initWithCoder:(id)coder;
- (PKExternalProvisioningPolicy)initWithDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKExternalProvisioningPolicy

- (PKExternalProvisioningPolicy)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v13.receiver = self;
    v13.super_class = PKExternalProvisioningPolicy;
    v5 = [(PKExternalProvisioningPolicy *)&v13 init];
    if (v5)
    {
      v6 = [dictionaryCopy PKStringForKey:@"type"];
      type = v5->_type;
      v5->_type = v6;

      v8 = objc_opt_class();
      v9 = [dictionaryCopy PKDictionaryOfKeyClass:v8 valueClass:objc_opt_class() ForKey:@"deviceLimits"];
      deviceLimits = v5->_deviceLimits;
      v5->_deviceLimits = v9;
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

- (PKExternalProvisioningPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKExternalProvisioningPolicy;
  v5 = [(PKExternalProvisioningPolicy *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"deviceLimits"];
    deviceLimits = v5->_deviceLimits;
    v5->_deviceLimits = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeObject:type forKey:@"type"];
  [coderCopy encodeObject:self->_deviceLimits forKey:@"deviceLimits"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"type: '%@'; ", self->_type];
  [v6 appendFormat:@"deviceLimits: '%@'; ", self->_deviceLimits];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_type];
  [v3 safelyAddObject:self->_deviceLimits];
  v4 = PKCombinedHash(17, v3);

  return v4;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKExternalProvisioningPolicy *)self isEqualToExternalProvisioningPolicy:v5];
  }

  return v6;
}

- (BOOL)isEqualToExternalProvisioningPolicy:(id)policy
{
  policyCopy = policy;
  if (!policyCopy)
  {
    goto LABEL_8;
  }

  type = self->_type;
  v6 = policyCopy[1];
  if (type)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (([(NSString *)type isEqual:?]& 1) != 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if (type != v6)
  {
    goto LABEL_8;
  }

LABEL_11:
  deviceLimits = self->_deviceLimits;
  v11 = policyCopy[2];
  if (deviceLimits && v11)
  {
    v8 = [(NSDictionary *)deviceLimits isEqual:?];
  }

  else
  {
    v8 = deviceLimits == v11;
  }

LABEL_9:

  return v8;
}

@end