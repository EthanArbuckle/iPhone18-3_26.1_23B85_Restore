@interface SGColorCurveElement
- (SGColorCurveElement)initWithColor:(id)color fraction:(float)fraction;
@end

@implementation SGColorCurveElement

- (SGColorCurveElement)initWithColor:(id)color fraction:(float)fraction
{
  colorCopy = color;
  v13.receiver = self;
  v13.super_class = SGColorCurveElement;
  v7 = [(SGColorCurveElement *)&v13 init];
  v8 = v7;
  if (v7)
  {
    [(SGColorCurveElement *)v7 setColor:colorCopy];
    *&v9 = fraction;
    [(SGColorCurveElement *)v8 setFraction:v9];
    v10 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [(SGColorCurveElement *)v8 setTimingFunction:v10];

    v11 = v8;
  }

  return v8;
}

@end