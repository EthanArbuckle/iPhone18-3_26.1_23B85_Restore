@interface GKSignInVisibilityManager(UISingletons)
+ (id)shared;
+ (id)sharedWithoutPersistence;
@end

@implementation GKSignInVisibilityManager(UISingletons)

+ (id)shared
{
  if (shared_onceToken_0 != -1)
  {
    +[GKSignInVisibilityManager(UISingletons) shared];
  }

  v1 = shared_sharedInstance_0;

  return v1;
}

+ (id)sharedWithoutPersistence
{
  if (sharedWithoutPersistence_onceToken != -1)
  {
    +[GKSignInVisibilityManager(UISingletons) sharedWithoutPersistence];
  }

  v1 = sharedWithoutPersistence_sharedInstance;

  return v1;
}

@end