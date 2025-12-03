@interface MUBusinessHoursConfiguration
- (MUBusinessHoursConfiguration)initWithBusinessHours:(id)hours timeZone:(id)zone;
@end

@implementation MUBusinessHoursConfiguration

- (MUBusinessHoursConfiguration)initWithBusinessHours:(id)hours timeZone:(id)zone
{
  hoursCopy = hours;
  zoneCopy = zone;
  v12.receiver = self;
  v12.super_class = MUBusinessHoursConfiguration;
  v9 = [(MUBusinessHoursConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_businessHours, hours);
    objc_storeStrong(&v10->_placeTimeZone, zone);
  }

  return v10;
}

@end