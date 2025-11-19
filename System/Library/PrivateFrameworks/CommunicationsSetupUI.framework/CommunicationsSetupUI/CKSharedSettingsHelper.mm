@interface CKSharedSettingsHelper
- (id)_syncManager;
@end

@implementation CKSharedSettingsHelper

- (id)_syncManager
{
  v2 = CUTWeakLinkClass();
  if (v2)
  {
    v2 = objc_alloc_init(v2);
  }

  return v2;
}

@end