@interface HMIVideoAnalyzerEventVehicle
- (BOOL)isEqual:(id)a3;
- (HMIVideoAnalyzerEventVehicle)initWithConfidence:(id)a3 boundingBox:(CGRect)a4;
@end

@implementation HMIVideoAnalyzerEventVehicle

- (HMIVideoAnalyzerEventVehicle)initWithConfidence:(id)a3 boundingBox:(CGRect)a4
{
  v5.receiver = self;
  v5.super_class = HMIVideoAnalyzerEventVehicle;
  return [(HMIVideoAnalyzerEvent *)&v5 initWithConfidence:a3 boundingBox:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7.receiver = self;
      v7.super_class = HMIVideoAnalyzerEventVehicle;
      v5 = [(HMIVideoAnalyzerEvent *)&v7 isEqual:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end