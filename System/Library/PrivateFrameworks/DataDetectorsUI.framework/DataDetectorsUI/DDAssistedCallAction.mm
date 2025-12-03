@interface DDAssistedCallAction
+ (BOOL)isAvailable;
@end

@implementation DDAssistedCallAction

+ (BOOL)isAvailable
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___DDAssistedCallAction;
  v2 = objc_msgSendSuper2(&v4, sel_isAvailable);
  if (v2)
  {
    LOBYTE(v2) = _AXSSoftwareTTYEnabled() != 0;
  }

  return v2;
}

@end