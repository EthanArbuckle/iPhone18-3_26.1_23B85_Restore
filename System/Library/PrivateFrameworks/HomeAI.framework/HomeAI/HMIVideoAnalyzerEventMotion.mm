@interface HMIVideoAnalyzerEventMotion
- (BOOL)isEqual:(id)equal;
- (HMIVideoAnalyzerEventMotion)initWithCoder:(id)coder;
- (HMIVideoAnalyzerEventMotion)initWithConfidence:(id)confidence boundingBox:(CGRect)box motionScore:(float)score;
- (id)attributeDescriptions;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIVideoAnalyzerEventMotion

- (HMIVideoAnalyzerEventMotion)initWithConfidence:(id)confidence boundingBox:(CGRect)box motionScore:(float)score
{
  v7.receiver = self;
  v7.super_class = HMIVideoAnalyzerEventMotion;
  result = [(HMIVideoAnalyzerEvent *)&v7 initWithConfidence:confidence boundingBox:box.origin.x, box.origin.y, box.size.width, box.size.height];
  if (result)
  {
    result->_motionScore = score;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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
  attributeDescriptions = [(HMIVideoAnalyzerEvent *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerEventMotion *)self motionScore];
  v6 = [v5 numberWithFloat:?];
  v7 = [v4 initWithName:@"Motion score" value:v6];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [attributeDescriptions arrayByAddingObjectsFromArray:v8];

  return v9;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = HMIVideoAnalyzerEventMotion;
  shortDescription = [(HMIVideoAnalyzerEvent *)&v10 shortDescription];
  v5 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerEventMotion *)self motionScore];
  v6 = [v5 numberWithFloat:?];
  v7 = HMIFormatNumber(v6, 2);
  v8 = [v3 stringWithFormat:@"%@@(%@)", shortDescription, v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMIVideoAnalyzerEventMotion;
  coderCopy = coder;
  [(HMIVideoAnalyzerEvent *)&v6 encodeWithCoder:coderCopy];
  [(HMIVideoAnalyzerEventMotion *)self motionScore:v6.receiver];
  [coderCopy encodeDouble:@"HMIVAEM.ms" forKey:v5];
}

- (HMIVideoAnalyzerEventMotion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [[HMIVideoAnalyzerEvent alloc] initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"HMIVAEM.ms"];
    confidence = [(HMIVideoAnalyzerEvent *)v5 confidence];
    [(HMIVideoAnalyzerEvent *)v5 boundingBox];
    self = [HMIVideoAnalyzerEventMotion initWithConfidence:"initWithConfidence:boundingBox:motionScore:" boundingBox:confidence motionScore:?];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end