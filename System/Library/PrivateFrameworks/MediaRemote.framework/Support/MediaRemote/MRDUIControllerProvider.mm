@interface MRDUIControllerProvider
+ (id)bannerUIControllerWithDelegate:(id)delegate;
+ (id)groupSessionUIControllerWithDelegate:(id)delegate;
+ (id)lockScreenUIControllerWithDelegate:(id)delegate;
+ (id)volumeHUDController;
@end

@implementation MRDUIControllerProvider

+ (id)lockScreenUIControllerWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = +[MRSharedSettings currentSettings];
  if ([v4 supportSessionBasedLockScreenPlatter])
  {
    v5 = [[MRDXPCUIController alloc] initWithDelegate:delegateCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)bannerUIControllerWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [[MRDUIController alloc] initWithDelegate:delegateCopy];

  return v4;
}

+ (id)groupSessionUIControllerWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [[MRDXPCUIController alloc] initWithDelegate:delegateCopy];

  return v4;
}

+ (id)volumeHUDController
{
  v2 = [[MRDUIController alloc] initWithDelegate:0];

  return v2;
}

@end