@interface MBInfo
+ (id)info;
+ (id)infoWithDrive:(id)a3 path:(id)a4 error:(id *)a5;
- (MBInfo)init;
- (MBInfo)initWithDrive:(id)a3 path:(id)a4 error:(id *)a5;
- (MBInfo)initWithPropertyList:(id)a3;
- (NSDate)lastBackupDate;
- (NSString)displayName;
@end

@implementation MBInfo

+ (id)info
{
  v2 = objc_alloc_init(MBInfo);

  return v2;
}

+ (id)infoWithDrive:(id)a3 path:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[MBInfo alloc] initWithDrive:v8 path:v7 error:a5];

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

- (MBInfo)initWithPropertyList:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MBInfo;
  v5 = [(MBInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    plist = v5->_plist;
    v5->_plist = v6;
  }

  return v5;
}

- (MBInfo)initWithDrive:(id)a3 path:(id)a4 error:(id *)a5
{
  v6 = [a3 propertyListAtPath:a4 options:0 error:a5];
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
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
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
    v6 = [(MBInfo *)self deviceName];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
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