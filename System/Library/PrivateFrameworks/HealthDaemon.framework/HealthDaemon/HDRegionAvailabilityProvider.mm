@interface HDRegionAvailabilityProvider
+ (id)anyCountryAvailability;
+ (id)uncheckedAvailability;
- (void)_initWithRegionAvailability:(void *)availability;
@end

@implementation HDRegionAvailabilityProvider

+ (id)uncheckedAvailability
{
  v2 = [HDRegionAvailabilityProvider alloc];
  uncheckedAvailability = [MEMORY[0x277CCD898] uncheckedAvailability];
  v4 = [(HDRegionAvailabilityProvider *)v2 _initWithRegionAvailability:uncheckedAvailability];

  return v4;
}

- (void)_initWithRegionAvailability:(void *)availability
{
  v3 = a2;
  if (availability)
  {
    v7.receiver = availability;
    v7.super_class = HDRegionAvailabilityProvider;
    availability = objc_msgSendSuper2(&v7, sel_init);
    if (availability)
    {
      v4 = [v3 copy];
      v5 = availability[1];
      availability[1] = v4;
    }
  }

  return availability;
}

+ (id)anyCountryAvailability
{
  v2 = [HDRegionAvailabilityProvider alloc];
  anyCountryAvailability = [MEMORY[0x277CCD898] anyCountryAvailability];
  v4 = [(HDRegionAvailabilityProvider *)v2 _initWithRegionAvailability:anyCountryAvailability];

  return v4;
}

@end