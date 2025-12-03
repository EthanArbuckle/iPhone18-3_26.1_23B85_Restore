@interface FBSProcessHandle
+ (id)allocWithZone:(_NSZone *)zone;
@end

@implementation FBSProcessHandle

+ (id)allocWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___FBSProcessHandle;
  return objc_msgSendSuper2(&v4, sel_allocWithZone_, zone);
}

@end