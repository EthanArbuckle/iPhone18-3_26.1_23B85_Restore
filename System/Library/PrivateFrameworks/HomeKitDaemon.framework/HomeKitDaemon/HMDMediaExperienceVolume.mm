@interface HMDMediaExperienceVolume
+ (BOOL)getActiveCategoryVolume:(float *)a3 andName:(id *)a4;
@end

@implementation HMDMediaExperienceVolume

+ (BOOL)getActiveCategoryVolume:(float *)a3 andName:(id *)a4
{
  v6 = [MEMORY[0x277D26E58] sharedInstance];
  LOBYTE(a4) = [v6 getActiveCategoryVolume:a3 andName:a4];

  return a4;
}

@end