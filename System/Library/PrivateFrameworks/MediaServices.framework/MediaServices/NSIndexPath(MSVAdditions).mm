@interface NSIndexPath(MSVAdditions)
+ (id)msv_indexPathForItem:()MSVAdditions inSection:;
- (uint64_t)msv_item;
@end

@implementation NSIndexPath(MSVAdditions)

- (uint64_t)msv_item
{
  if ([self length] < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [self indexAtPosition:1];
}

+ (id)msv_indexPathForItem:()MSVAdditions inSection:
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = a4;
  v7[1] = a3;
  v4 = [objc_opt_class() indexPathWithIndexes:v7 length:2];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end