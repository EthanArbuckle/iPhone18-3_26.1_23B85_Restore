@interface ICDocCamScanCache
+ (void)setCachedItem:(id)item;
@end

@implementation ICDocCamScanCache

+ (void)setCachedItem:(id)item
{
  itemCopy = item;
  if (sCachedItem)
  {
    [sCachedItem deleteCacheImages];
  }

  v4 = sCachedItem;
  sCachedItem = itemCopy;
}

@end