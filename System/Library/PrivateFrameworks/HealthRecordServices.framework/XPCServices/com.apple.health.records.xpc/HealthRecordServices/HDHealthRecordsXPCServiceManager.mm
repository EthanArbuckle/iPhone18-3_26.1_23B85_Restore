@interface HDHealthRecordsXPCServiceManager
- (HDHealthRecordsXPCServiceManager)initWithListener:(id)listener;
- (id)exportObjectForListener:(id)listener client:(id)client error:(id *)error;
@end

@implementation HDHealthRecordsXPCServiceManager

- (HDHealthRecordsXPCServiceManager)initWithListener:(id)listener
{
  listenerCopy = listener;
  v9.receiver = self;
  v9.super_class = HDHealthRecordsXPCServiceManager;
  v6 = [(HDHealthRecordsXPCServiceManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listener, listener);
    [listenerCopy setDelegate:v7];
  }

  return v7;
}

- (id)exportObjectForListener:(id)listener client:(id)client error:(id *)error
{
  v5 = objc_alloc_init(HDHealthRecordsXPCService);

  return v5;
}

@end