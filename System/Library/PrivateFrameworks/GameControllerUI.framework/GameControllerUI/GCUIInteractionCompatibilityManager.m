@interface GCUIInteractionCompatibilityManager
@end

@implementation GCUIInteractionCompatibilityManager

void __54___GCUIInteractionCompatibilityManager_sharedInstance__block_invoke()
{
  v0 = [_GCUIInteractionCompatibilityManager alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = _GCUIInteractionCompatibilityManager;
    v0 = objc_msgSendSuper2(&v2, sel_init);
  }

  v1 = sharedInstance_SharedInstance;
  sharedInstance_SharedInstance = v0;
}

@end