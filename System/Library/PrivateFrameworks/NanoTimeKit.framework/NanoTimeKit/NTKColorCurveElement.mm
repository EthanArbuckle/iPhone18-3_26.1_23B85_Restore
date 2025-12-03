@interface NTKColorCurveElement
- (NTKColorCurveElement)initWithColor:(id)color fraction:(float)fraction;
@end

@implementation NTKColorCurveElement

- (NTKColorCurveElement)initWithColor:(id)color fraction:(float)fraction
{
  colorCopy = color;
  v13.receiver = self;
  v13.super_class = NTKColorCurveElement;
  v7 = [(NTKColorCurveElement *)&v13 init];
  v8 = v7;
  if (v7)
  {
    [(NTKColorCurveElement *)v7 setColor:colorCopy];
    *&v9 = fraction;
    [(NTKColorCurveElement *)v8 setFraction:v9];
    v10 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [(NTKColorCurveElement *)v8 setTimingFunction:v10];

    v11 = v8;
  }

  return v8;
}

@end