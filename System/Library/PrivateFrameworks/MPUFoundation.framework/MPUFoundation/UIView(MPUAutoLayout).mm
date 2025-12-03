@interface UIView(MPUAutoLayout)
- (void)initForAutolayout;
@end

@implementation UIView(MPUAutoLayout)

- (void)initForAutolayout
{
  v1 = [self initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v2 = v1;
  if (v1)
  {
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v2;
}

@end