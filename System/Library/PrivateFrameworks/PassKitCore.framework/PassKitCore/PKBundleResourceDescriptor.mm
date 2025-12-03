@interface PKBundleResourceDescriptor
+ (id)withName:(id)name extension:(id)extension;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToBundleResourceDescriptor:(id)descriptor;
- (PKBundleResourceDescriptor)initWithCoder:(id)coder;
- (PKBundleResourceDescriptor)initWithName:(id)name extension:(id)extension;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKBundleResourceDescriptor

- (PKBundleResourceDescriptor)initWithName:(id)name extension:(id)extension
{
  nameCopy = name;
  extensionCopy = extension;
  v14.receiver = self;
  v14.super_class = PKBundleResourceDescriptor;
  v8 = [(PKBundleResourceDescriptor *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [extensionCopy copy];
    extension = v8->_extension;
    v8->_extension = v11;
  }

  return v8;
}

- (PKBundleResourceDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKBundleResourceDescriptor;
  v5 = [(PKBundleResourceDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extension"];
    extension = v5->_extension;
    v5->_extension = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_extension forKey:@"extension"];
}

+ (id)withName:(id)name extension:(id)extension
{
  extensionCopy = extension;
  nameCopy = name;
  v7 = [[PKBundleResourceDescriptor alloc] initWithName:nameCopy extension:extensionCopy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKBundleResourceDescriptor *)self isEqualToBundleResourceDescriptor:equalCopy];

  return v5;
}

- (BOOL)isEqualToBundleResourceDescriptor:(id)descriptor
{
  if (self == descriptor)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    name = self->_name;
    descriptorCopy = descriptor;
    name = [descriptorCopy name];
    LODWORD(name) = [(NSString *)name isEqualToString:name];

    extension = self->_extension;
    extension = [descriptorCopy extension];

    v9 = name & [(NSString *)extension isEqualToString:extension];
  }

  return v9;
}

@end