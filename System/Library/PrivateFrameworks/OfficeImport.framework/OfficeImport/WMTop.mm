@interface WMTop
- (Class)mapperClassForIndexing:(BOOL)a3;
- (void)initializeClasses;
@end

@implementation WMTop

- (void)initializeClasses
{
  objc_opt_class();
  objc_opt_class();
  v3.receiver = self;
  v3.super_class = WMTop;
  [(QLTop *)&v3 initializeClasses];
}

- (Class)mapperClassForIndexing:(BOOL)a3
{
  v3 = objc_opt_class();

  return v3;
}

@end