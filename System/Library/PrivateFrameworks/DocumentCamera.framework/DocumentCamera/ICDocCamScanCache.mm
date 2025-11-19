@interface ICDocCamScanCache
+ (void)setCachedItem:(id)a3;
@end

@implementation ICDocCamScanCache

+ (void)setCachedItem:(id)a3
{
  v3 = a3;
  if (sCachedItem)
  {
    [sCachedItem deleteCacheImages];
  }

  v4 = sCachedItem;
  sCachedItem = v3;
}

@end