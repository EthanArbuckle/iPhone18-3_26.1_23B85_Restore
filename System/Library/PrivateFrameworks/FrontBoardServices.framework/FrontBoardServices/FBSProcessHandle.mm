@interface FBSProcessHandle
+ (id)allocWithZone:(_NSZone *)a3;
@end

@implementation FBSProcessHandle

+ (id)allocWithZone:(_NSZone *)a3
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___FBSProcessHandle;
  return objc_msgSendSuper2(&v4, sel_allocWithZone_, a3);
}

@end