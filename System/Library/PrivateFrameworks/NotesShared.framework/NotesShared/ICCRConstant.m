@interface ICCRConstant
+ (id)constant;
- (BOOL)isEqual:(id)a3;
@end

@implementation ICCRConstant

+ (id)constant
{
  v2 = objc_alloc_init(ICCRConstant);

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end