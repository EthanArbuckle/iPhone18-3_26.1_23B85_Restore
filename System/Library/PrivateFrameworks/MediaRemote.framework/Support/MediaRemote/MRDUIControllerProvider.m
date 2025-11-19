@interface MRDUIControllerProvider
+ (id)bannerUIControllerWithDelegate:(id)a3;
+ (id)groupSessionUIControllerWithDelegate:(id)a3;
+ (id)lockScreenUIControllerWithDelegate:(id)a3;
+ (id)volumeHUDController;
@end

@implementation MRDUIControllerProvider

+ (id)lockScreenUIControllerWithDelegate:(id)a3
{
  v3 = a3;
  v4 = +[MRSharedSettings currentSettings];
  if ([v4 supportSessionBasedLockScreenPlatter])
  {
    v5 = [[MRDXPCUIController alloc] initWithDelegate:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)bannerUIControllerWithDelegate:(id)a3
{
  v3 = a3;
  v4 = [[MRDUIController alloc] initWithDelegate:v3];

  return v4;
}

+ (id)groupSessionUIControllerWithDelegate:(id)a3
{
  v3 = a3;
  v4 = [[MRDXPCUIController alloc] initWithDelegate:v3];

  return v4;
}

+ (id)volumeHUDController
{
  v2 = [[MRDUIController alloc] initWithDelegate:0];

  return v2;
}

@end