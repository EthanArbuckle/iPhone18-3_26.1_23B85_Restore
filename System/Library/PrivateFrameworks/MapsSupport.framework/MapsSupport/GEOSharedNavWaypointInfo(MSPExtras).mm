@interface GEOSharedNavWaypointInfo(MSPExtras)
- (id)name;
@end

@implementation GEOSharedNavWaypointInfo(MSPExtras)

- (id)name
{
  if ([a1 hasChargingStationInfo])
  {
    v2 = [a1 chargingStationInfo];
    v3 = [v2 name];
  }

  else
  {
    v2 = [a1 mapItemStorage];
    if ([v2 _placeDisplayType] == 3 || (objc_msgSend(v2, "name"), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v3 = [v2 shortAddress];
    }
  }

  v4 = v3;

  return v4;
}

@end