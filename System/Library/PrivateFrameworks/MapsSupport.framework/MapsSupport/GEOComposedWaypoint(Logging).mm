@interface GEOComposedWaypoint(Logging)
- (__CFString)hawkQueryRepresentation;
- (id)shortDescription;
@end

@implementation GEOComposedWaypoint(Logging)

- (id)shortDescription
{
  v16 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  muid = [self muid];
  timezone = [self timezone];
  location = [self location];
  name = [self name];
  navDisplayName = [self navDisplayName];
  navDisplayAddress = [self navDisplayAddress];
  directionsListAddress = [self directionsListAddress];
  waypointCategory = [self waypointCategory];
  if (waypointCategory >= 0xE)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", waypointCategory];
  }

  else
  {
    v9 = off_279868840[waypointCategory];
  }

  type = [self type];
  if (type >= 4)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", type];
  }

  else
  {
    v11 = off_2798688B0[type];
  }

  v12 = [v16 stringWithFormat:@"<%@:%p, muid: %llu, timezone: %@, location: %@, name: %@, navDisplayName: %@, navDisplayAddress: %@, directionsListAddress: %@, waypointCategory: %@, waypointType: %@, isCurrentLocation: %d, isServerProvidedWaypoint: %d>", v15, self, muid, timezone, location, name, navDisplayName, navDisplayAddress, directionsListAddress, v9, v11, objc_msgSend(self, "isCurrentLocation"), objc_msgSend(self, "isServerProvidedWaypoint")];

  return v12;
}

- (__CFString)hawkQueryRepresentation
{
  navDisplayAddress = [self navDisplayAddress];
  v3 = navDisplayAddress;
  if (navDisplayAddress)
  {
    v4 = navDisplayAddress;
  }

  else
  {
    bestLatLng = [self bestLatLng];
    v6 = bestLatLng;
    if (bestLatLng)
    {
      [bestLatLng coordinate];
      v8 = v7;
      v9 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
      v12 = [v9 stringWithFormat:@"%@, %@", v10, v11];
    }

    v4 = @"<invalid>";
  }

  return v4;
}

@end