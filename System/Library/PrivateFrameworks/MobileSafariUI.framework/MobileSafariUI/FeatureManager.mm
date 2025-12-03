@interface FeatureManager
+ (id)sharedFeatureManager;
- (BOOL)areSharedTabGroupsEnabled;
- (BOOL)areTabGroupSuggestionsEnabled;
- (FeatureManager)init;
- (void)_updateAccessLevel;
@end

@implementation FeatureManager

+ (id)sharedFeatureManager
{
  if (sharedFeatureManager_onceToken != -1)
  {
    +[FeatureManager sharedFeatureManager];
  }

  v3 = sharedFeatureManagerObject;

  return v3;
}

void __38__FeatureManager_sharedFeatureManager__block_invoke()
{
  v0 = objc_alloc_init(FeatureManager);
  v1 = sharedFeatureManagerObject;
  sharedFeatureManagerObject = v0;
}

- (FeatureManager)init
{
  v6.receiver = self;
  v6.super_class = FeatureManager;
  v2 = [(WBUFeatureManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(FeatureManager *)v2 _updateAccessLevel];
    v4 = v3;
  }

  return v3;
}

- (void)_updateAccessLevel
{
  self->_customTabGroupsEnabled = 1;
  self->_addToHomeScreenAvailable = 1;
  if ((+[(WBUFeatureManager *)FeatureManager]- 1) <= 1)
  {
    self->_addToHomeScreenAvailable = 0;
    self->_customTabGroupsEnabled = 0;
  }
}

- (BOOL)areTabGroupSuggestionsEnabled
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [safari_browserDefaults BOOLForKey:*MEMORY[0x277D29020]];

  return v3;
}

- (BOOL)areSharedTabGroupsEnabled
{
  isCloudAccountHSA2 = [(WBUFeatureManager *)self isCloudAccountHSA2];
  if (isCloudAccountHSA2)
  {

    LOBYTE(isCloudAccountHSA2) = [(WBUFeatureManager *)self isSafariSyncEnabled];
  }

  return isCloudAccountHSA2;
}

@end