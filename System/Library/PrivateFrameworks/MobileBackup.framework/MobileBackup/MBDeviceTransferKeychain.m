@interface MBDeviceTransferKeychain
- (MBDeviceTransferKeychain)init;
- (MBDeviceTransferKeychain)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MBDeviceTransferKeychain

- (MBDeviceTransferKeychain)init
{
  v6.receiver = self;
  v6.super_class = MBDeviceTransferKeychain;
  v2 = [(MBDeviceTransferKeychain *)&v6 init];
  if (v2)
  {
    v3 = MBRandomUUID();
    uuid = v2->_uuid;
    v2->_uuid = v3;
  }

  return v2;
}

- (MBDeviceTransferKeychain)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MBDeviceTransferKeychain;
  v5 = [(MBDeviceTransferKeychain *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    [(MBDeviceTransferKeychain *)v5 setUuid:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MBDeviceTransferKeychain *)self uuid];
  [v4 encodeObject:v5 forKey:@"uuid"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(MBDeviceTransferKeychain *)self uuid];
  v6 = [v5 copy];
  [v4 setUuid:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  v6 = [(MBDeviceTransferKeychain *)self uuid];
  v7 = [v3 stringWithFormat:@"<%s: %p uuid=%@>", Name, self, v6];;

  return v7;
}

@end