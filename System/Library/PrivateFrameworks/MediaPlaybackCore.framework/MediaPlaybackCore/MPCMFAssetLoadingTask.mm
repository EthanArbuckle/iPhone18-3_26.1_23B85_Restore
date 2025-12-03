@interface MPCMFAssetLoadingTask
+ (id)wrap:(id)wrap;
@end

@implementation MPCMFAssetLoadingTask

+ (id)wrap:(id)wrap
{
  wrapCopy = wrap;
  v5 = objc_alloc_init(MPCMFAssetLoadingTask);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_mfTask, wrap);
  }

  return v6;
}

@end