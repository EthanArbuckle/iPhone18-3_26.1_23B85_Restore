@interface CBGrimaldiSamplingStrategyLegacy
- (CBGrimaldiSamplingStrategyLegacy)init;
- (unsigned)getNextNumberOfSamplesFromNewLux:(float)a3 withLastLux:(id)a4;
@end

@implementation CBGrimaldiSamplingStrategyLegacy

- (CBGrimaldiSamplingStrategyLegacy)init
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CBGrimaldiSamplingStrategyLegacy;
  v5 = [(CBGrimaldiSamplingStrategyLegacy *)&v3 init];
  if (v5)
  {
    v5->_currentNumSamples = 4;
  }

  return v5;
}

- (unsigned)getNextNumberOfSamplesFromNewLux:(float)a3 withLastLux:(id)a4
{
  currentNumSamples = self->_currentNumSamples;
  if (a3 < 0.0)
  {
    return self->_currentNumSamples;
  }

  if (a4)
  {
    if (self->_currentNumSamples == 4)
    {
      if (a3 <= 750.0)
      {
        return 3;
      }
    }

    else if (a3 > 850.0)
    {
      return 4;
    }
  }

  else if (a3 > 800.0)
  {
    return 4;
  }

  else
  {
    return 3;
  }

  return currentNumSamples;
}

@end