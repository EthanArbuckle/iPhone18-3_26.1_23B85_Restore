@interface MURealTimeEVCharger
- (MURealTimeEVCharger)initWithAvailable:(unint64_t)available total:(unint64_t)total status:(int)status;
@end

@implementation MURealTimeEVCharger

- (MURealTimeEVCharger)initWithAvailable:(unint64_t)available total:(unint64_t)total status:(int)status
{
  v9.receiver = self;
  v9.super_class = MURealTimeEVCharger;
  result = [(MURealTimeEVCharger *)&v9 init];
  if (result)
  {
    result->_status = status;
    result->_total = total;
    result->_available = available;
  }

  return result;
}

@end