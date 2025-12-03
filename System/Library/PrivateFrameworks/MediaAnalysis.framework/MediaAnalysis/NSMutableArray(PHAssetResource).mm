@interface NSMutableArray(PHAssetResource)
- (unint64_t)vcp_sortBySize;
@end

@implementation NSMutableArray(PHAssetResource)

- (unint64_t)vcp_sortBySize
{
  result = [self count];
  if (result >= 2)
  {

    return [self sortUsingComparator:&__block_literal_global_5];
  }

  return result;
}

@end