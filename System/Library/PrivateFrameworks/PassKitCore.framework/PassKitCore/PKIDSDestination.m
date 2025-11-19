@interface PKIDSDestination
+ (id)destinationWithDeviceIdentifier:(id)a3 name:(id)a4;
- (PKIDSDestination)initWithDeviceIdentifier:(id)a3 name:(id)a4;
- (id)description;
@end

@implementation PKIDSDestination

- (PKIDSDestination)initWithDeviceIdentifier:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PKIDSDestination;
  v8 = [(PKIDSDestination *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    deviceIdentifier = v8->_deviceIdentifier;
    v8->_deviceIdentifier = v9;

    v11 = [v7 copy];
    name = v8->_name;
    v8->_name = v11;
  }

  return v8;
}

+ (id)destinationWithDeviceIdentifier:(id)a3 name:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithDeviceIdentifier:v6 name:v5];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p: name: %@ deviceIdentifier: %@>", v5, self, self->_name, self->_deviceIdentifier];;

  return v6;
}

@end