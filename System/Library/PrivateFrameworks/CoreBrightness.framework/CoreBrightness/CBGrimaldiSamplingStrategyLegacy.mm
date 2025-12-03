@interface CBGrimaldiSamplingStrategyLegacy
- (CBGrimaldiSamplingStrategyLegacy)init;
- (unsigned)getNextNumberOfSamplesFromNewLux:(float)lux withLastLux:(id)lastLux;
@end

@implementation CBGrimaldiSamplingStrategyLegacy

- (CBGrimaldiSamplingStrategyLegacy)init
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CBGrimaldiSamplingStrategyLegacy;
  selfCopy = [(CBGrimaldiSamplingStrategyLegacy *)&v3 init];
  if (selfCopy)
  {
    selfCopy->_currentNumSamples = 4;
  }

  return selfCopy;
}

- (unsigned)getNextNumberOfSamplesFromNewLux:(float)lux withLastLux:(id)lastLux
{
  currentNumSamples = self->_currentNumSamples;
  if (lux < 0.0)
  {
    return self->_currentNumSamples;
  }

  if (lastLux)
  {
    if (self->_currentNumSamples == 4)
    {
      if (lux <= 750.0)
      {
        return 3;
      }
    }

    else if (lux > 850.0)
    {
      return 4;
    }
  }

  else if (lux > 800.0)
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