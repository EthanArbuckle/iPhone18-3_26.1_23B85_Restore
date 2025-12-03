@interface HKHealthRecordsStore(HRBrandImageManager)
- (id)hk_brandImageManager;
@end

@implementation HKHealthRecordsStore(HRBrandImageManager)

- (id)hk_brandImageManager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = objc_getAssociatedObject(selfCopy, sel_hk_brandImageManager);
  if (!v2)
  {
    v2 = [HRBrandImageManager imageManagerWithHealthRecordsStore:selfCopy];
    objc_setAssociatedObject(selfCopy, sel_hk_brandImageManager, v2, 1);
  }

  objc_sync_exit(selfCopy);

  return v2;
}

@end