@interface MBDeviceTransferPreflight
- (MBDeviceTransferPreflight)init;
- (MBDeviceTransferPreflight)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (MBDeviceTransferPreflight)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MBDeviceTransferPreflight;
  v5 = [(MBDeviceTransferPreflight *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    [(MBDeviceTransferPreflight *)v5 setUuid:v6];

    -[MBDeviceTransferPreflight setSourceDeviceDataSize:](v5, "setSourceDeviceDataSize:", [v4 decodeInt64ForKey:@"sourceDeviceDataSize"]);
    -[MBDeviceTransferPreflight setTargetDeviceFreeSpaceSize:](v5, "setTargetDeviceFreeSpaceSize:", [v4 decodeIntegerForKey:@"targetDeviceFreeSpaceSize"]);
    -[MBDeviceTransferPreflight setSourcePurgeableSpaceSize:](v5, "setSourcePurgeableSpaceSize:", [v4 decodeIntegerForKey:@"sourcePurgeableSpaceSize"]);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"appleIDs"];
    [(MBDeviceTransferPreflight *)v5 setAppleIDs:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeAppleID"];
    [(MBDeviceTransferPreflight *)v5 setActiveAppleID:v13];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MBDeviceTransferPreflight *)self uuid];
  [v4 encodeObject:v5 forKey:@"uuid"];

  [v4 encodeInt64:-[MBDeviceTransferPreflight sourceDeviceDataSize](self forKey:{"sourceDeviceDataSize"), @"sourceDeviceDataSize"}];
  [v4 encodeInt64:-[MBDeviceTransferPreflight targetDeviceFreeSpaceSize](self forKey:{"targetDeviceFreeSpaceSize"), @"targetDeviceFreeSpaceSize"}];
  [v4 encodeInt64:-[MBDeviceTransferPreflight sourcePurgeableSpaceSize](self forKey:{"sourcePurgeableSpaceSize"), @"sourcePurgeableSpaceSize"}];
  v6 = [(MBDeviceTransferPreflight *)self appleIDs];
  [v4 encodeObject:v6 forKey:@"appleIDs"];

  v7 = [(MBDeviceTransferPreflight *)self activeAppleID];
  [v4 encodeObject:v7 forKey:@"activeAppleID"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(MBDeviceTransferPreflight *)self uuid];
  v6 = [v5 copy];
  [v4 setUuid:v6];

  [v4 setSourceDeviceDataSize:{-[MBDeviceTransferPreflight sourceDeviceDataSize](self, "sourceDeviceDataSize")}];
  [v4 setTargetDeviceFreeSpaceSize:{-[MBDeviceTransferPreflight targetDeviceFreeSpaceSize](self, "targetDeviceFreeSpaceSize")}];
  [v4 setSourcePurgeableSpaceSize:{-[MBDeviceTransferPreflight sourcePurgeableSpaceSize](self, "sourcePurgeableSpaceSize")}];
  v7 = [(MBDeviceTransferPreflight *)self appleIDs];
  [v4 setAppleIDs:v7];

  v8 = [(MBDeviceTransferPreflight *)self activeAppleID];
  [v4 setActiveAppleID:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  v6 = [(MBDeviceTransferPreflight *)self uuid];
  v7 = [v3 stringWithFormat:@"<%s: %p uuid=%@, sourceDeviceDataSize=%llu, sourcePurgeableSpaceSize=%llu, targetDeviceFreeSpaceSize=%llu>", Name, self, v6, -[MBDeviceTransferPreflight sourceDeviceDataSize](self, "sourceDeviceDataSize"), -[MBDeviceTransferPreflight sourcePurgeableSpaceSize](self, "sourcePurgeableSpaceSize"), -[MBDeviceTransferPreflight targetDeviceFreeSpaceSize](self, "targetDeviceFreeSpaceSize")];;

  return v7;
}

@end