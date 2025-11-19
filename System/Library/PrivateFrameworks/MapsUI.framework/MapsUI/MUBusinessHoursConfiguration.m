@interface MUBusinessHoursConfiguration
- (MUBusinessHoursConfiguration)initWithBusinessHours:(id)a3 timeZone:(id)a4;
@end

@implementation MUBusinessHoursConfiguration

- (MUBusinessHoursConfiguration)initWithBusinessHours:(id)a3 timeZone:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MUBusinessHoursConfiguration;
  v9 = [(MUBusinessHoursConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_businessHours, a3);
    objc_storeStrong(&v10->_placeTimeZone, a4);
  }

  return v10;
}

@end