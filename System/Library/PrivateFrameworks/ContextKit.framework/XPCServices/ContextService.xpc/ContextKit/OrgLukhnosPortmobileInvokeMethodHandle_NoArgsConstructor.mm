@interface OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor
- (id)invokeExact;
- (void)dealloc;
@end

@implementation OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor

- (id)invokeExact
{
  clazz = self->clazz_;
  if (!clazz)
  {
    JreThrowNullPointerException();
  }

  return [(IOSClass *)clazz newInstance];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor;
  [(OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor *)&v3 dealloc];
}

@end