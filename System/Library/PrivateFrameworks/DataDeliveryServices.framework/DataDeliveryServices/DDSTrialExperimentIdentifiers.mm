@interface DDSTrialExperimentIdentifiers
- (DDSTrialExperimentIdentifiers)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DDSTrialExperimentIdentifiers

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[TRIExperimentIdentifiers deploymentId](self forKey:{"deploymentId"), @"deploymentId"}];
  experimentId = [(TRIExperimentIdentifiers *)self experimentId];
  [coderCopy encodeObject:experimentId forKey:@"experimentId"];

  treatmentId = [(TRIExperimentIdentifiers *)self treatmentId];
  [coderCopy encodeObject:treatmentId forKey:@"treatmentId"];
}

- (DDSTrialExperimentIdentifiers)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt32ForKey:@"deploymentId"];
  if (v5 < 1)
  {
    selfCopy = 0;
  }

  else
  {
    v6 = v5;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"treatmentId"];
    if (v7)
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"experimentId"];
      if (v8)
      {
        self = [(DDSTrialExperimentIdentifiers *)self initWithExperimentId:v8 treatmentId:v7 deploymentId:v6];
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

@end