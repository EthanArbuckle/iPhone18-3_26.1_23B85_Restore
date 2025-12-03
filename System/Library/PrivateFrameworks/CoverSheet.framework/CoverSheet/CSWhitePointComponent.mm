@interface CSWhitePointComponent
- (CSWhitePointComponent)init;
- (void)setLighterReduction:(int64_t)reduction;
@end

@implementation CSWhitePointComponent

- (CSWhitePointComponent)init
{
  v5.receiver = self;
  v5.super_class = CSWhitePointComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:18];
    [(CSWhitePointComponent *)v3 setLighterReduction:0x7FFFFFFFFFFFFFFFLL];
  }

  return v3;
}

- (void)setLighterReduction:(int64_t)reduction
{
  if ([(CSComponent *)self flag]!= reduction)
  {

    [(CSComponent *)self setFlag:reduction];
  }
}

@end