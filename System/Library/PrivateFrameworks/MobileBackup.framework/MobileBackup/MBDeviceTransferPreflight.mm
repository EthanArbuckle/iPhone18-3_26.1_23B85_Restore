@interface MBDeviceTransferPreflight
- (MBDeviceTransferPreflight)init;
- (MBDeviceTransferPreflight)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MBDeviceTransferPreflight

- (MBDeviceTransferPreflight)init
{
  v6.receiver = self;
  v6.super_class = MBDeviceTransferPreflight;
  v2 = [(MBDeviceTransferPreflight *)&v6 init];
  if (v2)
  {
    v3 = MBRandomUUID();
    uuid = v2->_uuid;
    v2->_uuid = v3;
  }

  return v2;
}

- (MBDeviceTransferPreflight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MBDeviceTransferPreflight;
  v5 = [(MBDeviceTransferPreflight *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    [(MBDeviceTransferPreflight *)v5 setUuid:v6];

    -[MBDeviceTransferPreflight setSourceDeviceDataSize:](v5, "setSourceDeviceDataSize:", [coderCopy decodeInt64ForKey:@"sourceDeviceDataSize"]);
    -[MBDeviceTransferPreflight setTargetDeviceFreeSpaceSize:](v5, "setTargetDeviceFreeSpaceSize:", [coderCopy decodeIntegerForKey:@"targetDeviceFreeSpaceSize"]);
    -[MBDeviceTransferPreflight setSourcePurgeableSpaceSize:](v5, "setSourcePurgeableSpaceSize:", [coderCopy decodeIntegerForKey:@"sourcePurgeableSpaceSize"]);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"appleIDs"];
    [(MBDeviceTransferPreflight *)v5 setAppleIDs:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activeAppleID"];
    [(MBDeviceTransferPreflight *)v5 setActiveAppleID:v13];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(MBDeviceTransferPreflight *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  [coderCopy encodeInt64:-[MBDeviceTransferPreflight sourceDeviceDataSize](self forKey:{"sourceDeviceDataSize"), @"sourceDeviceDataSize"}];
  [coderCopy encodeInt64:-[MBDeviceTransferPreflight targetDeviceFreeSpaceSize](self forKey:{"targetDeviceFreeSpaceSize"), @"targetDeviceFreeSpaceSize"}];
  [coderCopy encodeInt64:-[MBDeviceTransferPreflight sourcePurgeableSpaceSize](self forKey:{"sourcePurgeableSpaceSize"), @"sourcePurgeableSpaceSize"}];
  appleIDs = [(MBDeviceTransferPreflight *)self appleIDs];
  [coderCopy encodeObject:appleIDs forKey:@"appleIDs"];

  activeAppleID = [(MBDeviceTransferPreflight *)self activeAppleID];
  [coderCopy encodeObject:activeAppleID forKey:@"activeAppleID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  uuid = [(MBDeviceTransferPreflight *)self uuid];
  v6 = [uuid copy];
  [v4 setUuid:v6];

  [v4 setSourceDeviceDataSize:{-[MBDeviceTransferPreflight sourceDeviceDataSize](self, "sourceDeviceDataSize")}];
  [v4 setTargetDeviceFreeSpaceSize:{-[MBDeviceTransferPreflight targetDeviceFreeSpaceSize](self, "targetDeviceFreeSpaceSize")}];
  [v4 setSourcePurgeableSpaceSize:{-[MBDeviceTransferPreflight sourcePurgeableSpaceSize](self, "sourcePurgeableSpaceSize")}];
  appleIDs = [(MBDeviceTransferPreflight *)self appleIDs];
  [v4 setAppleIDs:appleIDs];

  activeAppleID = [(MBDeviceTransferPreflight *)self activeAppleID];
  [v4 setActiveAppleID:activeAppleID];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  uuid = [(MBDeviceTransferPreflight *)self uuid];
  v7 = [v3 stringWithFormat:@"<%s: %p uuid=%@, sourceDeviceDataSize=%llu, sourcePurgeableSpaceSize=%llu, targetDeviceFreeSpaceSize=%llu>", Name, self, uuid, -[MBDeviceTransferPreflight sourceDeviceDataSize](self, "sourceDeviceDataSize"), -[MBDeviceTransferPreflight sourcePurgeableSpaceSize](self, "sourcePurgeableSpaceSize"), -[MBDeviceTransferPreflight targetDeviceFreeSpaceSize](self, "targetDeviceFreeSpaceSize")];;

  return v7;
}

@end