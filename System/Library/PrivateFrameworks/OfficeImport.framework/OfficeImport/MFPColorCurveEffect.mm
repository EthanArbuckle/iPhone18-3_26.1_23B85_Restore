@interface MFPColorCurveEffect
- (MFPColorCurveEffect)initWithAdjustment:(int)adjustment channel:(int)channel adjustValue:(int)value;
@end

@implementation MFPColorCurveEffect

- (MFPColorCurveEffect)initWithAdjustment:(int)adjustment channel:(int)channel adjustValue:(int)value
{
  v9.receiver = self;
  v9.super_class = MFPColorCurveEffect;
  result = [(MFPColorCurveEffect *)&v9 init];
  if (result)
  {
    result->mAdjustment = adjustment;
    result->mChannel = channel;
    result->mAdjustValue = value;
  }

  return result;
}

@end