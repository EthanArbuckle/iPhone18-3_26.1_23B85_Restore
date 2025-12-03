@interface CPUIDimmingEffectView
- (CPUIDimmingEffectView)init;
@end

@implementation CPUIDimmingEffectView

- (CPUIDimmingEffectView)init
{
  v8.receiver = self;
  v8.super_class = CPUIDimmingEffectView;
  v2 = [(CPUIDimmingEffectView *)&v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v2)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    v4 = [blackColor colorWithAlphaComponent:0.15];
    [(CPUIDimmingEffectView *)v2 setBackgroundColor:v4];

    v5 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5D8]];
    layer = [(CPUIDimmingEffectView *)v2 layer];
    [layer setCompositingFilter:v5];

    [(CPUIDimmingEffectView *)v2 setUserInteractionEnabled:0];
  }

  return v2;
}

@end