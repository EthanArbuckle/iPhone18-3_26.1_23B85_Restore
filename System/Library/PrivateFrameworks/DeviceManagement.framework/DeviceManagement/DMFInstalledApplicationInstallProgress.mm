@interface DMFInstalledApplicationInstallProgress
- (Class)classForCoder;
@end

@implementation DMFInstalledApplicationInstallProgress

- (Class)classForCoder
{
  v4.receiver = self;
  v4.super_class = DMFInstalledApplicationInstallProgress;
  classForCoder = [(DMFInstalledApplicationInstallProgress *)&v4 classForCoder];

  return classForCoder;
}

@end