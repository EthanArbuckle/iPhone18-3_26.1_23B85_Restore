@interface NSObject(TCObjectAdditions)
+ (BOOL)tc_overridesClassMethod:()TCObjectAdditions;
@end

@implementation NSObject(TCObjectAdditions)

+ (BOOL)tc_overridesClassMethod:()TCObjectAdditions
{
  v5 = objc_opt_class();
  ClassMethod = class_getClassMethod(v5, a3);
  return ClassMethod != class_getClassMethod([a1 superclass], a3);
}

@end