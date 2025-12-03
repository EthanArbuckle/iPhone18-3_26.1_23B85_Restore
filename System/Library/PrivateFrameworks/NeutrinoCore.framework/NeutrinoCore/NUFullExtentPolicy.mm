@interface NUFullExtentPolicy
- ($41299696D20B6C925B74A5D5E4D5CC87)extentForImageExtent:(SEL)extent;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation NUFullExtentPolicy

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)extentForImageExtent:(SEL)extent
{
  var1 = a4->var1;
  retstr->var0 = a4->var0;
  retstr->var1 = var1;
  return self;
}

@end