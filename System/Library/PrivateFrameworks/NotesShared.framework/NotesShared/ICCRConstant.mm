@interface ICCRConstant
+ (id)constant;
- (BOOL)isEqual:(id)equal;
@end

@implementation ICCRConstant

+ (id)constant
{
  v2 = objc_alloc_init(ICCRConstant);

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end