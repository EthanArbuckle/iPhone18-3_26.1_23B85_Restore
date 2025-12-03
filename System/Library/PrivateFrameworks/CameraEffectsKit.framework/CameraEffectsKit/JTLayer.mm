@interface JTLayer
- (JTLayer)initWithDebugEnabled;
@end

@implementation JTLayer

- (JTLayer)initWithDebugEnabled
{
  v5.receiver = self;
  v5.super_class = JTLayer;
  v2 = [(JTLayer *)&v5 init];
  if (v2)
  {
    greenColor = [MEMORY[0x277D75348] greenColor];
    -[JTLayer setBorderColor:](v2, "setBorderColor:", [greenColor CGColor]);

    [(JTLayer *)v2 setBorderWidth:2.0];
    [(JTLayer *)v2 setDebuggingUIEnabled:1];
  }

  return v2;
}

@end