@interface HMDMediaExperienceVolume
+ (BOOL)getActiveCategoryVolume:(float *)volume andName:(id *)name;
@end

@implementation HMDMediaExperienceVolume

+ (BOOL)getActiveCategoryVolume:(float *)volume andName:(id *)name
{
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedInstance];
  LOBYTE(name) = [mEMORY[0x277D26E58] getActiveCategoryVolume:volume andName:name];

  return name;
}

@end