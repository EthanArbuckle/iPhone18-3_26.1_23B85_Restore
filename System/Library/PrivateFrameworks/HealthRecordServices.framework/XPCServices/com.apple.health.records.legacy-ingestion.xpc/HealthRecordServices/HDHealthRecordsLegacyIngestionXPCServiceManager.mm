@interface HDHealthRecordsLegacyIngestionXPCServiceManager
- (HDHealthRecordsLegacyIngestionXPCServiceManager)init;
- (HDHealthRecordsLegacyIngestionXPCServiceManager)initWithListener:(id)listener;
- (id)exportObjectForListener:(id)listener client:(id)client error:(id *)error;
- (void)resume;
@end

@implementation HDHealthRecordsLegacyIngestionXPCServiceManager

- (HDHealthRecordsLegacyIngestionXPCServiceManager)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDHealthRecordsLegacyIngestionXPCServiceManager)initWithListener:(id)listener
{
  listenerCopy = listener;
  v9.receiver = self;
  v9.super_class = HDHealthRecordsLegacyIngestionXPCServiceManager;
  v6 = [(HDHealthRecordsLegacyIngestionXPCServiceManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listener, listener);
    [listenerCopy setDelegate:v7];
  }

  return v7;
}

- (void)resume
{
  _HKInitializeLogging();
  v3 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = +[NSProcessInfo processInfo];
    processName = [v7 processName];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = processName;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ is resuming in process %{public}@", &v9, 0x16u);
  }

  [(HDXPCListener *)self->_listener resume];
}

- (id)exportObjectForListener:(id)listener client:(id)client error:(id *)error
{
  v5 = objc_alloc_init(HDHealthRecordsLegacyIngestionXPCService);

  return v5;
}

@end