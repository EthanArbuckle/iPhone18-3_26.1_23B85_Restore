@interface WFContactStore
+ (id)new;
- (WFContactStore)init;
@end

@implementation WFContactStore

+ (id)new
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___WFContactStore;
  return objc_msgSendSuper2(&v3, "new");
}

- (WFContactStore)init
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v4 = objc_alloc_init(+[WFContactStore preferredConcreteSubclass]);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = WFContactStore;
    v4 = [(WFContactStore *)&v7 init];
    self = v4;
  }

  v5 = v4;

  return v5;
}

@end