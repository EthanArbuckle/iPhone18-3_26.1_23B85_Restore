@interface HMIVideoAnalyzerEventMotion
- (BOOL)isEqual:(id)a3;
- (HMIVideoAnalyzerEventMotion)initWithCoder:(id)a3;
- (HMIVideoAnalyzerEventMotion)initWithConfidence:(id)a3 boundingBox:(CGRect)a4 motionScore:(float)a5;
- (id)attributeDescriptions;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMIVideoAnalyzerEventMotion

- (HMIVideoAnalyzerEventMotion)initWithConfidence:(id)a3 boundingBox:(CGRect)a4 motionScore:(float)a5
{
  v7.receiver = self;
  v7.super_class = HMIVideoAnalyzerEventMotion;
  result = [(HMIVideoAnalyzerEvent *)&v7 initWithConfidence:a3 boundingBox:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  if (result)
  {
    result->_motionScore = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v12.receiver = self, v12.super_class = HMIVideoAnalyzerEventMotion, [(HMIVideoAnalyzerEvent *)&v12 isEqual:v6]))
  {
    [(HMIVideoAnalyzerEventMotion *)self motionScore];
    v8 = v7;
    [v6 motionScore];
    v10 = v8 == v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMIVideoAnalyzerEventMotion;
  v3 = [(HMIVideoAnalyzerEvent *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerEventMotion *)self motionScore];
  v6 = [v5 numberWithFloat:?];
  v7 = [v4 initWithName:@"Motion score" value:v6];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [v3 arrayByAddingObjectsFromArray:v8];

  return v9;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = HMIVideoAnalyzerEventMotion;
  v4 = [(HMIVideoAnalyzerEvent *)&v10 shortDescription];
  v5 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerEventMotion *)self motionScore];
  v6 = [v5 numberWithFloat:?];
  v7 = HMIFormatNumber(v6, 2);
  v8 = [v3 stringWithFormat:@"%@@(%@)", v4, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMIVideoAnalyzerEventMotion;
  v4 = a3;
  [(HMIVideoAnalyzerEvent *)&v6 encodeWithCoder:v4];
  [(HMIVideoAnalyzerEventMotion *)self motionScore:v6.receiver];
  [v4 encodeDouble:@"HMIVAEM.ms" forKey:v5];
}

- (HMIVideoAnalyzerEventMotion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [[HMIVideoAnalyzerEvent alloc] initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"HMIVAEM.ms"];
    v6 = [(HMIVideoAnalyzerEvent *)v5 confidence];
    [(HMIVideoAnalyzerEvent *)v5 boundingBox];
    self = [HMIVideoAnalyzerEventMotion initWithConfidence:"initWithConfidence:boundingBox:motionScore:" boundingBox:v6 motionScore:?];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end