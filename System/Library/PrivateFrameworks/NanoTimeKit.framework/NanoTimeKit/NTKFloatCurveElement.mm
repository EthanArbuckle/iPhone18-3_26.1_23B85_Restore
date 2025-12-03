@interface NTKFloatCurveElement
- (NTKFloatCurveElement)initWithFloatValue:(double)value fraction:(double)fraction;
@end

@implementation NTKFloatCurveElement

- (NTKFloatCurveElement)initWithFloatValue:(double)value fraction:(double)fraction
{
  v10.receiver = self;
  v10.super_class = NTKFloatCurveElement;
  v6 = [(NTKFloatCurveElement *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(NTKFloatCurveElement *)v6 setFloatValue:value];
    [(NTKFloatCurveElement *)v7 setFraction:fraction];
    [(NTKFloatCurveElement *)v7 setCurve:0];
    v8 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [(NTKFloatCurveElement *)v7 setTimingFunction:v8];
  }

  return v7;
}

@end