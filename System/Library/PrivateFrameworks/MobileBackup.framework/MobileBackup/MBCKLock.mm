@interface MBCKLock
+ (id)recordNameWithDeviceUUID:(id)d;
- (BOOL)_saveWithAccount:(id)account timeout:(unint64_t)timeout pluginFields:(id)fields error:(id *)error;
- (MBCKLock)initWithDeviceUUID:(id)d databaseManager:(id)manager;
- (id)_getRecordIDString;
- (id)recordRepresentation;
- (void)refreshWithRecord:(id)record;
@end

@implementation MBCKLock

+ (id)recordNameWithDeviceUUID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    __assert_rtn("+[MBCKLock recordNameWithDeviceUUID:]", "MBCKLock.m", 27, "deviceUUID");
  }

  v4 = dCopy;
  dCopy = [[NSString alloc] initWithFormat:@"%@:Lock", dCopy];

  return dCopy;
}

- (MBCKLock)initWithDeviceUUID:(id)d databaseManager:(id)manager
{
  dCopy = d;
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = MBCKLock;
  v8 = [(MBCKModel *)&v11 initWithRecord:0 cache:0];
  v9 = v8;
  if (v8)
  {
    [(MBCKLock *)v8 setDeviceUUID:dCopy];
    [(MBCKLock *)v9 setDatabaseManager:managerCopy];
  }

  return v9;
}

- (id)_getRecordIDString
{
  v3 = objc_opt_class();
  deviceUUID = [(MBCKLock *)self deviceUUID];
  v5 = [v3 recordNameWithDeviceUUID:deviceUUID];

  return v5;
}

- (void)refreshWithRecord:(id)record
{
  v3.receiver = self;
  v3.super_class = MBCKLock;
  [(MBCKModel *)&v3 refreshWithRecord:record];
}

- (id)recordRepresentation
{
  v16.receiver = self;
  v16.super_class = MBCKLock;
  recordRepresentation = [(MBCKModel *)&v16 recordRepresentation];
  owner = [(MBCKLock *)self owner];
  if (!owner)
  {
    owner = MBDeviceUUID();
    if (!owner)
    {
      __assert_rtn("[MBCKLock recordRepresentation]", "MBCKLock.m", 56, "owner");
    }
  }

  v5 = owner;
  v6 = objc_opt_new();
  v19[0] = @"owner";
  v19[1] = @"duration";
  v20[0] = v5;
  v7 = [NSNumber numberWithUnsignedLongLong:[(MBCKLock *)self duration]];
  v20[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v6 addEntriesFromDictionary:v8];

  pluginFields = [(MBCKLock *)self pluginFields];

  if (pluginFields)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      pluginFields2 = [(MBCKLock *)self pluginFields];
      *buf = 138543362;
      v18 = pluginFields2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Merging pluginFields from delegate for lock: %{public}@", buf, 0xCu);

      pluginFields3 = [(MBCKLock *)self pluginFields];
      _MBLog();
    }

    pluginFields4 = [(MBCKLock *)self pluginFields];
    [v6 addEntriesFromDictionary:pluginFields4];
  }

  [recordRepresentation setPluginFields:{v6, pluginFields3}];
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v18 = recordRepresentation;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Lock record representation: %{public}@", buf, 0xCu);
    _MBLog();
  }

  return recordRepresentation;
}

- (BOOL)_saveWithAccount:(id)account timeout:(unint64_t)timeout pluginFields:(id)fields error:(id *)error
{
  accountCopy = account;
  fieldsCopy = fields;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKLock _saveWithAccount:timeout:pluginFields:error:]", "MBCKLock.m", 69, "account");
  }

  if (!error)
  {
    __assert_rtn("[MBCKLock _saveWithAccount:timeout:pluginFields:error:]", "MBCKLock.m", 70, "error");
  }

  v12 = fieldsCopy;
  v13 = +[MBCKOperationPolicy expensiveCellularPolicy];
  databaseManager = [(MBCKLock *)self databaseManager];
  v15 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v13 error:error];

  if (v15)
  {
    ckOperationGroup = [(MBCKLock *)self ckOperationGroup];
    [v15 setCkOperationGroup:ckOperationGroup];

    [(MBCKLock *)self setDuration:timeout];
    [(MBCKLock *)self setPluginFields:v12];
    v17 = [(MBCKModel *)self saveWithOperationTracker:v15 error:error];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end