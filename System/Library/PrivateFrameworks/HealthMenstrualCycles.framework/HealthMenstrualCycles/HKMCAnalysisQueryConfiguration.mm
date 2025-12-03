@interface HKMCAnalysisQueryConfiguration
- (HKMCAnalysisQueryConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMCAnalysisQueryConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HKMCAnalysisQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setForceAnalysis:{-[HKMCAnalysisQueryConfiguration forceAnalysis](self, "forceAnalysis")}];
  return v4;
}

- (HKMCAnalysisQueryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKMCAnalysisQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_forceAnalysis = [coderCopy decodeBoolForKey:@"ForceAnalysis"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKMCAnalysisQueryConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_forceAnalysis forKey:{@"ForceAnalysis", v5.receiver, v5.super_class}];
}

@end