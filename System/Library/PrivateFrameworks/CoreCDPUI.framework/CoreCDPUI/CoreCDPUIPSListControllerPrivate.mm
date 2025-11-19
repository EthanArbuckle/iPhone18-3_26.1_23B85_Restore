@interface CoreCDPUIPSListControllerPrivate
+ (id)backgroundColor;
@end

@implementation CoreCDPUIPSListControllerPrivate

+ (id)backgroundColor
{
  v2 = [MEMORY[0x277D3FA48] appearance];
  v3 = [v2 backgroundColor];

  return v3;
}

@end