@interface MXMOSLogDevice_Internal
- (MXMOSLogDevice_Internal)initWithName:(id)a3 identifier:(id)a4;
- (MXMOSLogDevice_Internal)initWithOSLogDevice:(id)a3;
@end

@implementation MXMOSLogDevice_Internal

- (MXMOSLogDevice_Internal)initWithOSLogDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MXMOSLogDevice_Internal;
  v6 = [(MXMOSLogDevice_Internal *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawDevice, a3);
  }

  return v7;
}

- (MXMOSLogDevice_Internal)initWithName:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MXMOSLogDevice_Internal;
  v9 = [(MXMOSLogDevice_Internal *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_identifier, a4);
  }

  return v10;
}

@end