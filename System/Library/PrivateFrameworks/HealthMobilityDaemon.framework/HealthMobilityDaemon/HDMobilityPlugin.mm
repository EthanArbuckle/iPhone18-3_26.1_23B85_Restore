@interface HDMobilityPlugin
+ (BOOL)shouldLoadPluginForDaemon:(id)a3;
- (id)extensionForProfile:(id)a3;
- (id)taskServerClasses;
@end

@implementation HDMobilityPlugin

+ (BOOL)shouldLoadPluginForDaemon:(id)a3
{
  v3 = [a3 behavior];
  v4 = [v3 isRealityDevice];

  return v4 ^ 1;
}

- (id)extensionForProfile:(id)a3
{
  v3 = a3;
  if ([v3 profileType] == 1)
  {
    v4 = [[HDMobilityProfileExtension alloc] initWithProfile:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)taskServerClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end