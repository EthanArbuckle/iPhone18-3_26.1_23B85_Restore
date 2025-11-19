@interface ACCUserDefaults
+ (id)sharedDefaults;
+ (id)sharedDefaultsIapd;
+ (id)sharedDefaultsLogging;
- (ACCUserDefaults)init;
@end

@implementation ACCUserDefaults

- (ACCUserDefaults)init
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector("sharedDefaults");
  v7 = NSStringFromSelector(a2);
  +[NSException raise:format:](NSException, "raise:format:", NSInternalInconsistencyException, @"Use +[%@ %@] instead of -%@.", v5, v6, v7);

  return 0;
}

+ (id)sharedDefaults
{
  if (sharedDefaults_once != -1)
  {
    +[ACCUserDefaults sharedDefaults];
  }

  v3 = sharedDefaults_sharedInstance;

  return v3;
}

void __33__ACCUserDefaults_sharedDefaults__block_invoke(id a1)
{
  sharedDefaults_sharedInstance = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.CoreAccessories"];

  _objc_release_x1();
}

+ (id)sharedDefaultsIapd
{
  if (sharedDefaultsIapd_once != -1)
  {
    +[ACCUserDefaults sharedDefaultsIapd];
  }

  v3 = sharedDefaultsIapd_sharedInstance;

  return v3;
}

void __37__ACCUserDefaults_sharedDefaultsIapd__block_invoke(id a1)
{
  sharedDefaultsIapd_sharedInstance = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.iapd"];

  _objc_release_x1();
}

+ (id)sharedDefaultsLogging
{
  if (sharedDefaultsLogging_once != -1)
  {
    +[ACCUserDefaults sharedDefaultsLogging];
  }

  v3 = sharedDefaultsLogging_sharedInstance;

  return v3;
}

void __40__ACCUserDefaults_sharedDefaultsLogging__block_invoke(id a1)
{
  sharedDefaultsLogging_sharedInstance = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.logging"];

  _objc_release_x1();
}

@end