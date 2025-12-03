@interface HMIVideoAnalyzerEventPet
- (BOOL)isEqual:(id)equal;
- (HMIVideoAnalyzerEventPet)initWithConfidence:(id)confidence boundingBox:(CGRect)box;
@end

@implementation HMIVideoAnalyzerEventPet

- (HMIVideoAnalyzerEventPet)initWithConfidence:(id)confidence boundingBox:(CGRect)box
{
  v5.receiver = self;
  v5.super_class = HMIVideoAnalyzerEventPet;
  return [(HMIVideoAnalyzerEvent *)&v5 initWithConfidence:confidence boundingBox:box.origin.x, box.origin.y, box.size.width, box.size.height];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7.receiver = self;
      v7.super_class = HMIVideoAnalyzerEventPet;
      v5 = [(HMIVideoAnalyzerEvent *)&v7 isEqual:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end