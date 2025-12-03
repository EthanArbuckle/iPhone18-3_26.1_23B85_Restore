@interface DMCManagedAppPayload
- (DMCManagedAppPayload)initWithManagedAppID:(id)d profile:(id)profile;
@end

@implementation DMCManagedAppPayload

- (DMCManagedAppPayload)initWithManagedAppID:(id)d profile:(id)profile
{
  dCopy = d;
  v7 = [(DMCManagedAppPayload *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_managedAppID, d);
  }

  return v8;
}

@end