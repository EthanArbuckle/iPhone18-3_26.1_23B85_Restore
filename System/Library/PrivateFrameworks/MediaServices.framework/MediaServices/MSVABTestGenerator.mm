@interface MSVABTestGenerator
- (MSVABTestGenerator)initWithProbabilityForOutcomeA:(float)a;
- (int64_t)lastOutcome;
- (int64_t)nextOutcome;
- (void)updateProbabilityForOutcomeA:(float)a;
@end

@implementation MSVABTestGenerator

- (int64_t)lastOutcome
{
  totalExperiments = self->_totalExperiments;
  probabilityForOutcomeA = self->_probabilityForOutcomeA;
  if (totalExperiments)
  {
    if (probabilityForOutcomeA >= 1.0)
    {
      return 0;
    }

    else
    {
      v4 = self->_totalForOutcomeA / totalExperiments;
      v5 = probabilityForOutcomeA <= 0.0;
      if (v4 >= probabilityForOutcomeA)
      {
        return 1;
      }
    }
  }

  else
  {
    return probabilityForOutcomeA <= 0.0;
  }

  return v5;
}

- (int64_t)nextOutcome
{
  p_totalForOutcomeA = &self->_totalForOutcomeA;
  totalForOutcomeA = self->_totalForOutcomeA;
  v4 = self->_totalExperiments + 1;
  self->_totalExperiments = v4;
  probabilityForOutcomeA = self->_probabilityForOutcomeA;
  if (probabilityForOutcomeA < 1.0 && (probabilityForOutcomeA <= 0.0 || (totalForOutcomeA / v4) >= probabilityForOutcomeA))
  {
    totalForOutcomeA = self->_totalForOutcomeB;
    v6 = 1;
    p_totalForOutcomeA = &self->_totalForOutcomeB;
  }

  else
  {
    v6 = 0;
  }

  *p_totalForOutcomeA = totalForOutcomeA + 1;
  return v6;
}

- (void)updateProbabilityForOutcomeA:(float)a
{
  self->_probabilityForOutcomeA = a;
  self->_totalForOutcomeA = 0;
  self->_totalForOutcomeB = 0;
  self->_totalExperiments = 0;
}

- (MSVABTestGenerator)initWithProbabilityForOutcomeA:(float)a
{
  v5.receiver = self;
  v5.super_class = MSVABTestGenerator;
  result = [(MSVABTestGenerator *)&v5 init];
  if (result)
  {
    result->_probabilityForOutcomeA = a;
    result->_totalExperiments = 0;
    result->_totalForOutcomeA = 0;
  }

  return result;
}

@end