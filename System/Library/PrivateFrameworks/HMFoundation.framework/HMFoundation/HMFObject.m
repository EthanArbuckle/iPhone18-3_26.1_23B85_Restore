@interface HMFObject
+ (id)shortDescription;
- (NSString)privateDescription;
- (NSString)shortDescription;
@end

@implementation HMFObject

- (NSString)privateDescription
{
  if (qword_280AFC700 != -1)
  {
    dispatch_once(&qword_280AFC700, &__block_literal_global_98);
  }

  v3 = _MergedGlobals_76 | 2;

  return HMFObjectDescriptionWithOptions(self, v3);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

@end