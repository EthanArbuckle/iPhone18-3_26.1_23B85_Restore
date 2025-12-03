@interface CSMagSafePowerStatus
- (CSMagSafePowerStatus)init;
- (void)setPowerStatus:(unint64_t)status;
@end

@implementation CSMagSafePowerStatus

- (CSMagSafePowerStatus)init
{
  v3.receiver = self;
  v3.super_class = CSMagSafePowerStatus;
  result = [(CSMagSafePowerStatus *)&v3 init];
  if (result)
  {
    result->_chargeState = 0;
    result->_powerStatus = 0;
    result->_powerPercent = 0.0;
  }

  return result;
}

- (void)setPowerStatus:(unint64_t)status
{
  if (self->_powerStatus != status)
  {
    self->_powerStatus = status;
  }
}

@end