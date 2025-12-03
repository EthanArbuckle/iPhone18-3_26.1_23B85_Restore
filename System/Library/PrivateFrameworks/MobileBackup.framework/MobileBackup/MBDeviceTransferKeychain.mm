@interface MBDeviceTransferKeychain
- (MBDeviceTransferKeychain)init;
- (MBDeviceTransferKeychain)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (MBDeviceTransferKeychain)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = MBDeviceTransferKeychain;
  v5 = [(MBDeviceTransferKeychain *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    [(MBDeviceTransferKeychain *)v5 setUuid:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(MBDeviceTransferKeychain *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  uuid = [(MBDeviceTransferKeychain *)self uuid];
  v6 = [uuid copy];
  [v4 setUuid:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  uuid = [(MBDeviceTransferKeychain *)self uuid];
  v7 = [v3 stringWithFormat:@"<%s: %p uuid=%@>", Name, self, uuid];;

  return v7;
}

@end