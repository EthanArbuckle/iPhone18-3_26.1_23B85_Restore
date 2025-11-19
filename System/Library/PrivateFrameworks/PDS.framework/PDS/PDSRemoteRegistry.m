@interface PDSRemoteRegistry
+ (id)remoteVendorForClientID:(id)a3;
+ (void)registerGlobalVendor:(id)a3;
@end

@implementation PDSRemoteRegistry

+ (id)remoteVendorForClientID:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(PDSRemoteRegistry *)a2 remoteVendorForClientID:a1];
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
      v8 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      v9 = kVendors;
      kVendors = v8;

      v7 = kVendors;
    }

    v6 = [v7 objectForKey:v5];
    if (!v6)
    {
      v6 = [[PDSXPCConnector alloc] initWithClientID:v5];
      [kVendors setObject:v6 forKey:v5];
    }
  }

  os_unfair_lock_unlock(&kVendorsLock);

  return v6;
}

+ (void)registerGlobalVendor:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&kVendorsLock);
  v4 = kGlobalVendor;
  kGlobalVendor = v3;
  v5 = v3;

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