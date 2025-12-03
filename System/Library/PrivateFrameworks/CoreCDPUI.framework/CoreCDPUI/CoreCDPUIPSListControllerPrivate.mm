@interface CoreCDPUIPSListControllerPrivate
+ (id)backgroundColor;
@end

@implementation CoreCDPUIPSListControllerPrivate

+ (id)backgroundColor
{
  appearance = [MEMORY[0x277D3FA48] appearance];
  backgroundColor = [appearance backgroundColor];

  return backgroundColor;
}

@end