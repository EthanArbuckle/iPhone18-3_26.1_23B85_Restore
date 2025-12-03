@interface CBDisplayRamps
- (BOOL)isDisplayRampRunning;
- (CBDisplayRamps)init;
- (void)handleRampEnd:(id)end;
- (void)handleRampStart:(id)start;
@end

@implementation CBDisplayRamps

- (BOOL)isDisplayRampRunning
{
  if (self->_ammoliteRamp == 1)
  {
    return 1;
  }

  if (self->_twilightRamp == 1)
  {
    return 1;
  }

  return self->_minimumIndicatorRamp == 1 || self->_clockAdapterRamp == 1;
}

- (CBDisplayRamps)init
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CBDisplayRamps;
  selfCopy = [(CBDisplayRamps *)&v3 init];
  if (!selfCopy)
  {
    return 0;
  }

  selfCopy->_ammoliteRamp = 0;
  selfCopy->_twilightRamp = 0;
  selfCopy->_minimumIndicatorRamp = 0;
  selfCopy->_clockAdapterRamp = 0;
  return selfCopy;
}

- (void)handleRampStart:(id)start
{
  if ([start isEqualToString:@"Ammolite"])
  {
    self->_ammoliteRamp = 1;
  }

  else if ([start isEqualToString:@"Twilight"])
  {
    self->_twilightRamp = 1;
  }

  else if ([start isEqualToString:@"IndicatorBrightness"])
  {
    self->_minimumIndicatorRamp = 1;
  }

  else if ([start isEqualToString:@"CBDisplayClockAdapterRamp"])
  {
    self->_clockAdapterRamp = 1;
  }
}

- (void)handleRampEnd:(id)end
{
  if ([end isEqualToString:@"Ammolite"])
  {
    self->_ammoliteRamp = 2;
  }

  else if ([end isEqualToString:@"Twilight"])
  {
    self->_twilightRamp = 2;
  }

  else if ([end isEqualToString:@"IndicatorBrightness"])
  {
    self->_minimumIndicatorRamp = 2;
  }

  else if ([end isEqualToString:@"CBDisplayClockAdapterRamp"])
  {
    self->_clockAdapterRamp = 2;
  }
}

@end