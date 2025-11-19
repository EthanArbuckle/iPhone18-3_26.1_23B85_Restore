@interface CSWhitePointComponent
- (CSWhitePointComponent)init;
- (void)setLighterReduction:(int64_t)a3;
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

- (void)setLighterReduction:(int64_t)a3
{
  if ([(CSComponent *)self flag]!= a3)
  {

    [(CSComponent *)self setFlag:a3];
  }
}

@end