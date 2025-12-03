@interface MURealTimeEVChargerUtility
+ (id)evPlugIconWithConfiguration:(id)configuration;
+ (id)getRealTimeChargerInfoWithGarage:(id)garage charger:(id)charger;
- (MURealTimeEVChargerUtility)init;
@end

@implementation MURealTimeEVChargerUtility

+ (id)evPlugIconWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = _s6MapsUI24RealTimeEVChargerUtilityC10evPlugIcon13configurationSo7UIImageCSgSo0K13ConfigurationC_tFZ_0(configurationCopy);

  return v4;
}

+ (id)getRealTimeChargerInfoWithGarage:(id)garage charger:(id)charger
{
  garageCopy = garage;
  chargerCopy = charger;
  v8 = _s6MapsUI24RealTimeEVChargerUtilityC03getcD11ChargerInfo6garage7chargerSo06MURealdE0CSo15VGVirtualGarageCSg_So24GEOEVChargerAvailabilityCtFZ_0(garage, chargerCopy);

  return v8;
}

- (MURealTimeEVChargerUtility)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MURealTimeEVChargerUtility *)&v3 init];
}

@end