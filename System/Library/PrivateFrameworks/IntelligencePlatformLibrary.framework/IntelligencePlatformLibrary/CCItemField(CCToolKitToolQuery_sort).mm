@interface CCItemField(CCToolKitToolQuery_sort)
- (uint64_t)toolKitToolQuerySort;
@end

@implementation CCItemField(CCToolKitToolQuery_sort)

- (uint64_t)toolKitToolQuerySort
{
  LODWORD(result) = [self uint32Value];
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end