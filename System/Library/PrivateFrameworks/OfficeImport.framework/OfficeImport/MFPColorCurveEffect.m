@interface MFPColorCurveEffect
- (MFPColorCurveEffect)initWithAdjustment:(int)a3 channel:(int)a4 adjustValue:(int)a5;
@end

@implementation MFPColorCurveEffect

- (MFPColorCurveEffect)initWithAdjustment:(int)a3 channel:(int)a4 adjustValue:(int)a5
{
  v9.receiver = self;
  v9.super_class = MFPColorCurveEffect;
  result = [(MFPColorCurveEffect *)&v9 init];
  if (result)
  {
    result->mAdjustment = a3;
    result->mChannel = a4;
    result->mAdjustValue = a5;
  }

  return result;
}

@end