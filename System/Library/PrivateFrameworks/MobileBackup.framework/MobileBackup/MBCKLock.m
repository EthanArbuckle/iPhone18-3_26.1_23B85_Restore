@interface MBCKLock
+ (id)recordNameWithDeviceUUID:(id)a3;
- (BOOL)_saveWithAccount:(id)a3 timeout:(unint64_t)a4 pluginFields:(id)a5 error:(id *)a6;
- (MBCKLock)initWithDeviceUUID:(id)a3 databaseManager:(id)a4;
- (id)_getRecordIDString;
- (id)recordRepresentation;
- (void)refreshWithRecord:(id)a3;
@end

@implementation MBCKLock

+ (id)recordNameWithDeviceUUID:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    __assert_rtn("+[MBCKLock recordNameWithDeviceUUID:]", "MBCKLock.m", 27, "deviceUUID");
  }

  v4 = v3;
  v5 = [[NSString alloc] initWithFormat:@"%@:Lock", v3];

  return v5;
}

- (MBCKLock)initWithDeviceUUID:(id)a3 databaseManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MBCKLock;
  v8 = [(MBCKModel *)&v11 initWithRecord:0 cache:0];
  v9 = v8;
  if (v8)
  {
    [(MBCKLock *)v8 setDeviceUUID:v6];
    [(MBCKLock *)v9 setDatabaseManager:v7];
  }

  return v9;
}

- (id)_getRecordIDString
{
  v3 = objc_opt_class();
  v4 = [(MBCKLock *)self deviceUUID];
  v5 = [v3 recordNameWithDeviceUUID:v4];

  return v5;
}

- (void)refreshWithRecord:(id)a3
{
  v3.receiver = self;
  v3.super_class = MBCKLock;
  [(MBCKModel *)&v3 refreshWithRecord:a3];
}

- (id)recordRepresentation
{
  v16.receiver = self;
  v16.super_class = MBCKLock;
  v3 = [(MBCKModel *)&v16 recordRepresentation];
  v4 = [(MBCKLock *)self owner];
  if (!v4)
  {
    v4 = MBDeviceUUID();
    if (!v4)
    {
      __assert_rtn("[MBCKLock recordRepresentation]", "MBCKLock.m", 56, "owner");
    }
  }

  v5 = v4;
  v6 = objc_opt_new();
  v19[0] = @"owner";
  v19[1] = @"duration";
  v20[0] = v5;
  v7 = [NSNumber numberWithUnsignedLongLong:[(MBCKLock *)self duration]];
  v20[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v6 addEntriesFromDictionary:v8];

  v9 = [(MBCKLock *)self pluginFields];

  if (v9)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(MBCKLock *)self pluginFields];
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Merging pluginFields from delegate for lock: %{public}@", buf, 0xCu);

      v15 = [(MBCKLock *)self pluginFields];
      _MBLog();
    }

    v12 = [(MBCKLock *)self pluginFields];
    [v6 addEntriesFromDictionary:v12];
  }

  [v3 setPluginFields:{v6, v15}];
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Lock record representation: %{public}@", buf, 0xCu);
    _MBLog();
  }

  return v3;
}

- (BOOL)_saveWithAccount:(id)a3 timeout:(unint64_t)a4 pluginFields:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  if (!v10)
  {
    __assert_rtn("[MBCKLock _saveWithAccount:timeout:pluginFields:error:]", "MBCKLock.m", 69, "account");
  }

  if (!a6)
  {
    __assert_rtn("[MBCKLock _saveWithAccount:timeout:pluginFields:error:]", "MBCKLock.m", 70, "error");
  }

  v12 = v11;
  v13 = +[MBCKOperationPolicy expensiveCellularPolicy];
  v14 = [(MBCKLock *)self databaseManager];
  v15 = [MBCKOperationTracker operationTrackerWithAccount:v10 databaseManager:v14 policy:v13 error:a6];

  if (v15)
  {
    v16 = [(MBCKLock *)self ckOperationGroup];
    [v15 setCkOperationGroup:v16];

    [(MBCKLock *)self setDuration:a4];
    [(MBCKLock *)self setPluginFields:v12];
    v17 = [(MBCKModel *)self saveWithOperationTracker:v15 error:a6];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end