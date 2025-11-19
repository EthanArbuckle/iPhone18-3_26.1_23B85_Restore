@interface DMCManagedAppPayload
- (DMCManagedAppPayload)initWithManagedAppID:(id)a3 profile:(id)a4;
@end

@implementation DMCManagedAppPayload

- (DMCManagedAppPayload)initWithManagedAppID:(id)a3 profile:(id)a4
{
  v6 = a3;
  v7 = [(DMCManagedAppPayload *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_managedAppID, a3);
  }

  return v8;
}

@end