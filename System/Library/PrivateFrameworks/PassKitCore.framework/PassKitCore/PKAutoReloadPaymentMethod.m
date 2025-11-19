@interface PKAutoReloadPaymentMethod
- (PKAutoReloadPaymentMethod)initWithCoder:(id)a3;
- (PKAutoReloadPaymentMethod)initWithDictionary:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAutoReloadPaymentMethod

- (PKAutoReloadPaymentMethod)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKAutoReloadPaymentMethod;
  v5 = [(PKAutoReloadPaymentMethod *)&v20 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 PKStringForKey:@"suffix"];
    suffix = v5->_suffix;
    v5->_suffix = v8;

    v10 = [v4 PKStringForKey:@"fpanIdentifier"];
    fpanIdentifier = v5->_fpanIdentifier;
    v5->_fpanIdentifier = v10;

    v12 = [v4 PKStringForKey:@"merchantTokenIdentifier"];
    merchantTokenIdentifier = v5->_merchantTokenIdentifier;
    v5->_merchantTokenIdentifier = v12;

    v14 = [v4 PKStringForKey:@"imageName"];
    imageName = v5->_imageName;
    v5->_imageName = v14;

    v16 = [v4 PKURLForKey:@"managementURL"];
    managementURL = v5->_managementURL;
    v5->_managementURL = v16;

    v18 = [v4 PKStringForKey:@"type"];
    if ([v18 isEqualToString:@"pre_paid"])
    {
      v5->_type = 0;
    }
  }

  return v5;
}

- (PKAutoReloadPaymentMethod)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKAutoReloadPaymentMethod;
  v5 = [(PKAutoReloadPaymentMethod *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suffix"];
    suffix = v5->_suffix;
    v5->_suffix = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fpanIdentifier"];
    fpanIdentifier = v5->_fpanIdentifier;
    v5->_fpanIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantTokenIdentifier"];
    merchantTokenIdentifier = v5->_merchantTokenIdentifier;
    v5->_merchantTokenIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
    imageName = v5->_imageName;
    v5->_imageName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"managementURL"];
    managementURL = v5->_managementURL;
    v5->_managementURL = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v18 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_suffix forKey:@"suffix"];
  [v5 encodeObject:self->_fpanIdentifier forKey:@"fpanIdentifier"];
  [v5 encodeObject:self->_merchantTokenIdentifier forKey:@"merchantTokenIdentifier"];
  [v5 encodeObject:self->_imageName forKey:@"imageName"];
  [v5 encodeObject:self->_managementURL forKey:@"managementURL"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  [v5 encodeObject:v6 forKey:@"type"];
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