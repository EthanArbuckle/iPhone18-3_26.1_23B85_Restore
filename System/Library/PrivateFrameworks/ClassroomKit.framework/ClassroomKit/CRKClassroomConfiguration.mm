@interface CRKClassroomConfiguration
+ (id)configurationSource;
+ (id)setOfActiveRestrictionUUIDs:(id)ds;
+ (void)fetchConfiguration:(id)configuration;
+ (void)setConfiguration:(id)configuration completion:(id)completion;
@end

@implementation CRKClassroomConfiguration

+ (id)configurationSource
{
  v2 = NSStringFromClass(self);
  uTF8String = [v2 UTF8String];
  v4 = dispatch_queue_create(uTF8String, MEMORY[0x277D85CD8]);

  v5 = [[CRKCurrentPlatformProfileConfigurationSource alloc] initWithCallbackQueue:v4];

  return v5;
}

+ (void)setConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  configurationSource = [self configurationSource];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__CRKClassroomConfiguration_setConfiguration_completion___block_invoke;
  v10[3] = &unk_278DC0FE0;
  v11 = completionCopy;
  v9 = completionCopy;
  [configurationSource setConfiguration:configurationCopy completion:v10];
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

+ (void)fetchConfiguration:(id)configuration
{
  if (configuration)
  {
    configurationCopy = configuration;
    configurationSource = [self configurationSource];
    [configurationSource fetchConfiguration:configurationCopy];
  }
}

+ (id)setOfActiveRestrictionUUIDs:(id)ds
{
  dsCopy = ds;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  crk_isStudentdInstalled = [defaultManager crk_isStudentdInstalled];

  if (crk_isStudentdInstalled)
  {
    v6 = objc_opt_new();
    v7 = [v6 setOfActiveRestrictionUUIDs:dsCopy];
  }

  else
  {
    v7 = objc_opt_new();
  }

  return v7;
}

@end