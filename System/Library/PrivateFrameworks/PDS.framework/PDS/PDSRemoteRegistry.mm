@interface PDSRemoteRegistry
+ (id)remoteVendorForClientID:(id)d;
+ (void)registerGlobalVendor:(id)vendor;
@end

@implementation PDSRemoteRegistry

+ (id)remoteVendorForClientID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    [(PDSRemoteRegistry *)a2 remoteVendorForClientID:self];
  }

  os_unfair_lock_lock(&kVendorsLock);
  if (kGlobalVendor)
  {
    v6 = kGlobalVendor;
  }

  else
  {
    v7 = kVendors;
    if (!kVendors)
    {
      strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      v9 = kVendors;
      kVendors = strongToWeakObjectsMapTable;

      v7 = kVendors;
    }

    v6 = [v7 objectForKey:dCopy];
    if (!v6)
    {
      v6 = [[PDSXPCConnector alloc] initWithClientID:dCopy];
      [kVendors setObject:v6 forKey:dCopy];
    }
  }

  os_unfair_lock_unlock(&kVendorsLock);

  return v6;
}

+ (void)registerGlobalVendor:(id)vendor
{
  vendorCopy = vendor;
  os_unfair_lock_lock(&kVendorsLock);
  v4 = kGlobalVendor;
  kGlobalVendor = vendorCopy;
  v5 = vendorCopy;

  v6 = kVendors;
  kVendors = 0;

  os_unfair_lock_unlock(&kVendorsLock);
}

+ (void)remoteVendorForClientID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PDSRemoteConnector.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"clientID"}];
}

@end