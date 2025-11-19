@interface HKCountrySet(WristTemperatureMeasurements)
+ (id)localAvailabilityForWristTemperatureMeasurements;
@end

@implementation HKCountrySet(WristTemperatureMeasurements)

+ (id)localAvailabilityForWristTemperatureMeasurements
{
  v0 = [objc_alloc(MEMORY[0x277CCD260]) initWithCountryBitmasks:&unk_286378D20 compatibilityVersion:1 contentVersion:3 provenance:3];

  return v0;
}

@end