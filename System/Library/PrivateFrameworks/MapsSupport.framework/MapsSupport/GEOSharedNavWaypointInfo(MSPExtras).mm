@interface GEOSharedNavWaypointInfo(MSPExtras)
- (id)name;
@end

@implementation GEOSharedNavWaypointInfo(MSPExtras)

- (id)name
{
  if ([self hasChargingStationInfo])
  {
    chargingStationInfo = [self chargingStationInfo];
    name = [chargingStationInfo name];
  }

  else
  {
    chargingStationInfo = [self mapItemStorage];
    if ([chargingStationInfo _placeDisplayType] == 3 || (objc_msgSend(chargingStationInfo, "name"), (name = objc_claimAutoreleasedReturnValue()) == 0))
    {
      name = [chargingStationInfo shortAddress];
    }
  }

  v4 = name;

  return v4;
}

@end