@interface DMFInstalledApplication
- (Class)classForCoder;
@end

@implementation DMFInstalledApplication

- (Class)classForCoder
{
  v4.receiver = self;
  v4.super_class = DMFInstalledApplication;
  v2 = [(DMFApplication *)&v4 classForCoder];

  return v2;
}

@end