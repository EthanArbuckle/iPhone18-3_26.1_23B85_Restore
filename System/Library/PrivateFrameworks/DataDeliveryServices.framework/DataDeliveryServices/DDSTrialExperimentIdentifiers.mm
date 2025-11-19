@interface DDSTrialExperimentIdentifiers
- (DDSTrialExperimentIdentifiers)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DDSTrialExperimentIdentifiers

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[TRIExperimentIdentifiers deploymentId](self forKey:{"deploymentId"), @"deploymentId"}];
  v5 = [(TRIExperimentIdentifiers *)self experimentId];
  [v4 encodeObject:v5 forKey:@"experimentId"];

  v6 = [(TRIExperimentIdentifiers *)self treatmentId];
  [v4 encodeObject:v6 forKey:@"treatmentId"];
}

- (DDSTrialExperimentIdentifiers)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt32ForKey:@"deploymentId"];
  if (v5 < 1)
  {
    v9 = 0;
  }

  else
  {
    v6 = v5;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"treatmentId"];
    if (v7)
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experimentId"];
      if (v8)
      {
        self = [(DDSTrialExperimentIdentifiers *)self initWithExperimentId:v8 treatmentId:v7 deploymentId:v6];
        v9 = self;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end