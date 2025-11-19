@interface MURealTimeEVCharger
- (MURealTimeEVCharger)initWithAvailable:(unint64_t)a3 total:(unint64_t)a4 status:(int)a5;
@end

@implementation MURealTimeEVCharger

- (MURealTimeEVCharger)initWithAvailable:(unint64_t)a3 total:(unint64_t)a4 status:(int)a5
{
  v9.receiver = self;
  v9.super_class = MURealTimeEVCharger;
  result = [(MURealTimeEVCharger *)&v9 init];
  if (result)
  {
    result->_status = a5;
    result->_total = a4;
    result->_available = a3;
  }

  return result;
}

@end