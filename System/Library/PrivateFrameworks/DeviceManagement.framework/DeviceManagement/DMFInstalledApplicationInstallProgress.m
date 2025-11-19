@interface DMFInstalledApplicationInstallProgress
- (Class)classForCoder;
@end

@implementation DMFInstalledApplicationInstallProgress

- (Class)classForCoder
{
  v4.receiver = self;
  v4.super_class = DMFInstalledApplicationInstallProgress;
  v2 = [(DMFInstalledApplicationInstallProgress *)&v4 classForCoder];

  return v2;
}

@end