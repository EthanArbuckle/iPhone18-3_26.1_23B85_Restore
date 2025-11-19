@interface FBSOpenApplicationService(HealthDaemon)
+ (id)hd_defaultService;
+ (uint64_t)hd_canOpenApplication:()HealthDaemon reason:;
+ (void)hd_openApplication:()HealthDaemon optionsDictionary:completion:;
- (void)hd_openApplication:()HealthDaemon optionsDictionary:completion:;
@end

@implementation FBSOpenApplicationService(HealthDaemon)

+ (id)hd_defaultService
{
  if (HKIsUnitTesting())
  {
    v0 = 0;
  }

  else
  {
    v0 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  }

  return v0;
}

+ (void)hd_openApplication:()HealthDaemon optionsDictionary:completion:
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [a1 hd_defaultService];
  v11 = v10;
  if (v10)
  {
    [v10 hd_openApplication:v16 optionsDictionary:v8 completion:v9];
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v12 hk_error:100 format:{@"Missing default %@", v14}];
    v9[2](v9, 0, v15);
  }
}

- (void)hd_openApplication:()HealthDaemon optionsDictionary:completion:
{
  v8 = MEMORY[0x277D0AD60];
  v9 = a5;
  v10 = a3;
  v11 = [v8 optionsWithDictionary:a4];
  [a1 openApplication:v10 withOptions:v11 completion:v9];
}

+ (uint64_t)hd_canOpenApplication:()HealthDaemon reason:
{
  v6 = a3;
  v7 = [a1 hd_defaultService];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 canOpenApplication:v6 reason:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end