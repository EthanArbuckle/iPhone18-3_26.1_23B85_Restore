@interface HDHealthRecordsXPCServiceManager
- (HDHealthRecordsXPCServiceManager)initWithListener:(id)a3;
- (id)exportObjectForListener:(id)a3 client:(id)a4 error:(id *)a5;
@end

@implementation HDHealthRecordsXPCServiceManager

- (HDHealthRecordsXPCServiceManager)initWithListener:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HDHealthRecordsXPCServiceManager;
  v6 = [(HDHealthRecordsXPCServiceManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listener, a3);
    [v5 setDelegate:v7];
  }

  return v7;
}

- (id)exportObjectForListener:(id)a3 client:(id)a4 error:(id *)a5
{
  v5 = objc_alloc_init(HDHealthRecordsXPCService);

  return v5;
}

@end