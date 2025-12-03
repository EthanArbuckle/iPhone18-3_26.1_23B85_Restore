@interface MBInfo
+ (id)info;
+ (id)infoWithDrive:(id)drive path:(id)path error:(id *)error;
- (MBInfo)init;
- (MBInfo)initWithDrive:(id)drive path:(id)path error:(id *)error;
- (MBInfo)initWithPropertyList:(id)list;
- (NSDate)lastBackupDate;
- (NSString)displayName;
@end

@implementation MBInfo

+ (id)info
{
  v2 = objc_alloc_init(MBInfo);

  return v2;
}

+ (id)infoWithDrive:(id)drive path:(id)path error:(id *)error
{
  pathCopy = path;
  driveCopy = drive;
  v9 = [[MBInfo alloc] initWithDrive:driveCopy path:pathCopy error:error];

  return v9;
}

- (MBInfo)init
{
  v6.receiver = self;
  v6.super_class = MBInfo;
  v2 = [(MBInfo *)&v6 init];
  if (v2)
  {
    v3 = [[NSMutableDictionary alloc] initWithCapacity:0];
    plist = v2->_plist;
    v2->_plist = v3;
  }

  return v2;
}

- (MBInfo)initWithPropertyList:(id)list
{
  listCopy = list;
  v9.receiver = self;
  v9.super_class = MBInfo;
  v5 = [(MBInfo *)&v9 init];
  if (v5)
  {
    v6 = [listCopy mutableCopy];
    plist = v5->_plist;
    v5->_plist = v6;
  }

  return v5;
}

- (MBInfo)initWithDrive:(id)drive path:(id)path error:(id *)error
{
  v6 = [drive propertyListAtPath:path options:0 error:error];
  if (v6)
  {
    v12.receiver = self;
    v12.super_class = MBInfo;
    v7 = [(MBInfo *)&v12 init];
    if (v7)
    {
      v8 = [v6 mutableCopy];
      plist = v7->_plist;
      v7->_plist = v8;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)displayName
{
  v3 = [(NSMutableDictionary *)self->_plist objectForKeyedSubscript:@"Display Name"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    deviceName = [(MBInfo *)self deviceName];
    v7 = deviceName;
    if (deviceName)
    {
      v8 = deviceName;
    }

    else
    {
      v8 = MBDeviceClass();
    }

    v5 = v8;
  }

  return v5;
}

- (NSDate)lastBackupDate
{
  v2 = [(NSMutableDictionary *)self->_plist objectForKeyedSubscript:@"Last Backup Date"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NSDate date];
  }

  v5 = v4;

  return v5;
}

@end