@interface NSManagedObjectContext(HMDCoreDataCloudTransformInternal)
- (uint64_t)hmd_fakeRecordsEnabled;
- (uint64_t)hmd_homeManagerApplicationDataChanged;
- (void)hmd_cloudPrivateStoreIdentifier;
- (void)hmd_cloudSharedStoreIdentifier;
- (void)hmd_currentChangeSet;
- (void)hmd_homeManagerContext;
- (void)hmd_workingStoreIdentifier;
- (void)setHmd_cloudPrivateStoreIdentifier:()HMDCoreDataCloudTransformInternal;
- (void)setHmd_cloudSharedStoreIdentifier:()HMDCoreDataCloudTransformInternal;
- (void)setHmd_currentChangeSet:()HMDCoreDataCloudTransformInternal;
- (void)setHmd_fakeRecordsEnabled:()HMDCoreDataCloudTransformInternal;
- (void)setHmd_homeManagerApplicationDataChanged:()HMDCoreDataCloudTransformInternal;
- (void)setHmd_homeManagerContext:()HMDCoreDataCloudTransformInternal;
- (void)setHmd_workingStoreIdentifier:()HMDCoreDataCloudTransformInternal;
@end

@implementation NSManagedObjectContext(HMDCoreDataCloudTransformInternal)

- (void)setHmd_homeManagerApplicationDataChanged:()HMDCoreDataCloudTransformInternal
{
  if (a3)
  {
    v3 = MEMORY[0x277CBEC38];
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  userInfo = [self userInfo];
  [userInfo setObject:v3 forKeyedSubscript:@"ctui_hmadc"];
}

- (void)hmd_currentChangeSet
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"ctui_ccs"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setHmd_currentChangeSet:()HMDCoreDataCloudTransformInternal
{
  v4 = a3;
  userInfo = [self userInfo];
  [userInfo setObject:v4 forKeyedSubscript:@"ctui_ccs"];
}

- (uint64_t)hmd_homeManagerApplicationDataChanged
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"ctui_hmadc"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (void)setHmd_fakeRecordsEnabled:()HMDCoreDataCloudTransformInternal
{
  if (a3)
  {
    v3 = MEMORY[0x277CBEC38];
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  userInfo = [self userInfo];
  [userInfo setObject:v3 forKeyedSubscript:@"ctui_fre"];
}

- (uint64_t)hmd_fakeRecordsEnabled
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"ctui_fre"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (void)setHmd_homeManagerContext:()HMDCoreDataCloudTransformInternal
{
  v4 = a3;
  userInfo = [self userInfo];
  [userInfo setObject:v4 forKeyedSubscript:@"ctui_hmc"];
}

- (void)hmd_homeManagerContext
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"ctui_hmc"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setHmd_workingStoreIdentifier:()HMDCoreDataCloudTransformInternal
{
  v4 = a3;
  userInfo = [self userInfo];
  [userInfo setObject:v4 forKeyedSubscript:@"ctui_wsi"];
}

- (void)hmd_workingStoreIdentifier
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"ctui_wsi"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setHmd_cloudSharedStoreIdentifier:()HMDCoreDataCloudTransformInternal
{
  v4 = a3;
  userInfo = [self userInfo];
  [userInfo setObject:v4 forKeyedSubscript:@"ctui_cssi"];
}

- (void)hmd_cloudSharedStoreIdentifier
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"ctui_cssi"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setHmd_cloudPrivateStoreIdentifier:()HMDCoreDataCloudTransformInternal
{
  v4 = a3;
  userInfo = [self userInfo];
  [userInfo setObject:v4 forKeyedSubscript:@"ctui_cpsi"];
}

- (void)hmd_cloudPrivateStoreIdentifier
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"ctui_cpsi"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end