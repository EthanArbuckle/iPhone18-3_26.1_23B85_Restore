@interface CRKClassroomConfiguration
+ (id)configurationSource;
+ (id)setOfActiveRestrictionUUIDs:(id)a3;
+ (void)fetchConfiguration:(id)a3;
+ (void)setConfiguration:(id)a3 completion:(id)a4;
@end

@implementation CRKClassroomConfiguration

+ (id)configurationSource
{
  v2 = NSStringFromClass(a1);
  v3 = [v2 UTF8String];
  v4 = dispatch_queue_create(v3, MEMORY[0x277D85CD8]);

  v5 = [[CRKCurrentPlatformProfileConfigurationSource alloc] initWithCallbackQueue:v4];

  return v5;
}

+ (void)setConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 configurationSource];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__CRKClassroomConfiguration_setConfiguration_completion___block_invoke;
  v10[3] = &unk_278DC0FE0;
  v11 = v6;
  v9 = v6;
  [v8 setConfiguration:v7 completion:v10];
}

uint64_t __57__CRKClassroomConfiguration_setConfiguration_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)fetchConfiguration:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 configurationSource];
    [v5 fetchConfiguration:v4];
  }
}

+ (id)setOfActiveRestrictionUUIDs:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 crk_isStudentdInstalled];

  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [v6 setOfActiveRestrictionUUIDs:v3];
  }

  else
  {
    v7 = objc_opt_new();
  }

  return v7;
}

@end