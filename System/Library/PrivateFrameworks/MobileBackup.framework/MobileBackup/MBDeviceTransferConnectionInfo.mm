@interface MBDeviceTransferConnectionInfo
+ (int64_t)connectionTypeFromLinkType:(int)type;
- (MBDeviceTransferConnectionInfo)init;
- (MBDeviceTransferConnectionInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MBDeviceTransferConnectionInfo

+ (int64_t)connectionTypeFromLinkType:(int)type
{
  if ((type - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_1DEB93E90[type - 1];
  }
}

- (MBDeviceTransferConnectionInfo)init
{
  v5.receiver = self;
  v5.super_class = MBDeviceTransferConnectionInfo;
  v2 = [(MBDeviceTransferConnectionInfo *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MBDeviceTransferConnectionInfo *)v2 setConnectionState:0];
    [(MBDeviceTransferConnectionInfo *)v3 setConnectionType:0];
  }

  return v3;
}

- (MBDeviceTransferConnectionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MBDeviceTransferConnectionInfo;
  v5 = [(MBDeviceTransferConnectionInfo *)&v7 init];
  if (v5)
  {
    -[MBDeviceTransferConnectionInfo setConnectionState:](v5, "setConnectionState:", [coderCopy decodeIntegerForKey:@"connectionState"]);
    -[MBDeviceTransferConnectionInfo setConnectionType:](v5, "setConnectionType:", [coderCopy decodeIntegerForKey:@"connectionType"]);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setConnectionState:{-[MBDeviceTransferConnectionInfo connectionState](self, "connectionState")}];
  [v4 setConnectionType:{-[MBDeviceTransferConnectionInfo connectionType](self, "connectionType")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[MBDeviceTransferConnectionInfo connectionState](self forKey:{"connectionState"), @"connectionState"}];
  [coderCopy encodeInteger:-[MBDeviceTransferConnectionInfo connectionType](self forKey:{"connectionType"), @"connectionType"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%s: %p; connectionState=%ld, connectionType=%ld", class_getName(v4), self, -[MBDeviceTransferConnectionInfo connectionState](self, "connectionState"), -[MBDeviceTransferConnectionInfo connectionType](self, "connectionType")];
}

@end