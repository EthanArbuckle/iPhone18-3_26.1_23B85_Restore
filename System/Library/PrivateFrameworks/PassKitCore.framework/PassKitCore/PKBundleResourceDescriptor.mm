@interface PKBundleResourceDescriptor
+ (id)withName:(id)a3 extension:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToBundleResourceDescriptor:(id)a3;
- (PKBundleResourceDescriptor)initWithCoder:(id)a3;
- (PKBundleResourceDescriptor)initWithName:(id)a3 extension:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKBundleResourceDescriptor

- (PKBundleResourceDescriptor)initWithName:(id)a3 extension:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PKBundleResourceDescriptor;
  v8 = [(PKBundleResourceDescriptor *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    extension = v8->_extension;
    v8->_extension = v11;
  }

  return v8;
}

- (PKBundleResourceDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKBundleResourceDescriptor;
  v5 = [(PKBundleResourceDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extension"];
    extension = v5->_extension;
    v5->_extension = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_extension forKey:@"extension"];
}

+ (id)withName:(id)a3 extension:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PKBundleResourceDescriptor alloc] initWithName:v6 extension:v5];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKBundleResourceDescriptor *)self isEqualToBundleResourceDescriptor:v4];

  return v5;
}

- (BOOL)isEqualToBundleResourceDescriptor:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    name = self->_name;
    v5 = a3;
    v6 = [v5 name];
    LODWORD(name) = [(NSString *)name isEqualToString:v6];

    extension = self->_extension;
    v8 = [v5 extension];

    v9 = name & [(NSString *)extension isEqualToString:v8];
  }

  return v9;
}

@end