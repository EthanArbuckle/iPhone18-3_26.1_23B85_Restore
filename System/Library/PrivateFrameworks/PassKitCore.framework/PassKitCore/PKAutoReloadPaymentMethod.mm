@interface PKAutoReloadPaymentMethod
- (PKAutoReloadPaymentMethod)initWithCoder:(id)coder;
- (PKAutoReloadPaymentMethod)initWithDictionary:(id)dictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAutoReloadPaymentMethod

- (PKAutoReloadPaymentMethod)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = PKAutoReloadPaymentMethod;
  v5 = [(PKAutoReloadPaymentMethod *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [dictionaryCopy PKStringForKey:@"suffix"];
    suffix = v5->_suffix;
    v5->_suffix = v8;

    v10 = [dictionaryCopy PKStringForKey:@"fpanIdentifier"];
    fpanIdentifier = v5->_fpanIdentifier;
    v5->_fpanIdentifier = v10;

    v12 = [dictionaryCopy PKStringForKey:@"merchantTokenIdentifier"];
    merchantTokenIdentifier = v5->_merchantTokenIdentifier;
    v5->_merchantTokenIdentifier = v12;

    v14 = [dictionaryCopy PKStringForKey:@"imageName"];
    imageName = v5->_imageName;
    v5->_imageName = v14;

    v16 = [dictionaryCopy PKURLForKey:@"managementURL"];
    managementURL = v5->_managementURL;
    v5->_managementURL = v16;

    v18 = [dictionaryCopy PKStringForKey:@"type"];
    if ([v18 isEqualToString:@"pre_paid"])
    {
      v5->_type = 0;
    }
  }

  return v5;
}

- (PKAutoReloadPaymentMethod)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = PKAutoReloadPaymentMethod;
  v5 = [(PKAutoReloadPaymentMethod *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suffix"];
    suffix = v5->_suffix;
    v5->_suffix = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fpanIdentifier"];
    fpanIdentifier = v5->_fpanIdentifier;
    v5->_fpanIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantTokenIdentifier"];
    merchantTokenIdentifier = v5->_merchantTokenIdentifier;
    v5->_merchantTokenIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
    imageName = v5->_imageName;
    v5->_imageName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"managementURL"];
    managementURL = v5->_managementURL;
    v5->_managementURL = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v18 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_suffix forKey:@"suffix"];
  [coderCopy encodeObject:self->_fpanIdentifier forKey:@"fpanIdentifier"];
  [coderCopy encodeObject:self->_merchantTokenIdentifier forKey:@"merchantTokenIdentifier"];
  [coderCopy encodeObject:self->_imageName forKey:@"imageName"];
  [coderCopy encodeObject:self->_managementURL forKey:@"managementURL"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  [coderCopy encodeObject:v6 forKey:@"type"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"name: %@; ", self->_name];
  [v3 appendFormat:@"suffix: %@; ", self->_suffix];
  [v3 appendFormat:@"fpanIdentifier: %@; ", self->_fpanIdentifier];
  [v3 appendFormat:@"merchantTokenIdentifier: %@; ", self->_merchantTokenIdentifier];
  [v3 appendFormat:@"imageName: %@; ", self->_imageName];
  [v3 appendFormat:@"managementURL: %@; ", self->_managementURL];
  [v3 appendFormat:@"type: %lu; ", self->_type];
  [v3 appendFormat:@">"];

  return v3;
}

@end