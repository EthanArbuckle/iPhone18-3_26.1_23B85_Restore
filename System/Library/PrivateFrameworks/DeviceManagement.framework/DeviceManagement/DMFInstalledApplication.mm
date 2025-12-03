@interface DMFInstalledApplication
- (Class)classForCoder;
@end

@implementation DMFInstalledApplication

- (Class)classForCoder
{
  v4.receiver = self;
  v4.super_class = DMFInstalledApplication;
  classForCoder = [(DMFApplication *)&v4 classForCoder];

  return classForCoder;
}

@end