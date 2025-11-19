@interface MPCMFAssetLoadingTask
+ (id)wrap:(id)a3;
@end

@implementation MPCMFAssetLoadingTask

+ (id)wrap:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPCMFAssetLoadingTask);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_mfTask, a3);
  }

  return v6;
}

@end