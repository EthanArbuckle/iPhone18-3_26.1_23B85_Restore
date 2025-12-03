@interface NSManagedObjectContext(HMDCoreDataInternal)
- (id)hmd_coreData;
- (void)setHmd_coreData:()HMDCoreDataInternal;
@end

@implementation NSManagedObjectContext(HMDCoreDataInternal)

- (void)setHmd_coreData:()HMDCoreDataInternal
{
  v4 = MEMORY[0x277D0F948];
  v5 = a3;
  v7 = [[v4 alloc] initWithWeakObject:v5];

  userInfo = [self userInfo];
  [userInfo setObject:v7 forKeyedSubscript:@"hmdcd_wcd"];
}

- (id)hmd_coreData
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"hmdcd_wcd"];

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

  object = [v4 object];

  return object;
}

@end