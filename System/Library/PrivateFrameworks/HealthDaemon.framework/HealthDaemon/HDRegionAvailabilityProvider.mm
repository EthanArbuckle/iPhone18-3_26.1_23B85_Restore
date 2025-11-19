@interface HDRegionAvailabilityProvider
+ (id)anyCountryAvailability;
+ (id)uncheckedAvailability;
- (void)_initWithRegionAvailability:(void *)a1;
@end

@implementation HDRegionAvailabilityProvider

+ (id)uncheckedAvailability
{
  v2 = [HDRegionAvailabilityProvider alloc];
  v3 = [MEMORY[0x277CCD898] uncheckedAvailability];
  v4 = [(HDRegionAvailabilityProvider *)v2 _initWithRegionAvailability:v3];

  return v4;
}

- (void)_initWithRegionAvailability:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = HDRegionAvailabilityProvider;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

+ (id)anyCountryAvailability
{
  v2 = [HDRegionAvailabilityProvider alloc];
  v3 = [MEMORY[0x277CCD898] anyCountryAvailability];
  v4 = [(HDRegionAvailabilityProvider *)v2 _initWithRegionAvailability:v3];

  return v4;
}

@end