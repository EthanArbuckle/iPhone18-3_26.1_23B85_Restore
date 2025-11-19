@interface HKHealthRecordsStore(HRBrandImageManager)
- (id)hk_brandImageManager;
@end

@implementation HKHealthRecordsStore(HRBrandImageManager)

- (id)hk_brandImageManager
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = objc_getAssociatedObject(v1, sel_hk_brandImageManager);
  if (!v2)
  {
    v2 = [HRBrandImageManager imageManagerWithHealthRecordsStore:v1];
    objc_setAssociatedObject(v1, sel_hk_brandImageManager, v2, 1);
  }

  objc_sync_exit(v1);

  return v2;
}

@end