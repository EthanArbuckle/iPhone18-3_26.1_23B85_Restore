@interface GEOComposedWaypoint(Logging)
- (__CFString)hawkQueryRepresentation;
- (id)shortDescription;
@end

@implementation GEOComposedWaypoint(Logging)

- (id)shortDescription
{
  v16 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v14 = [a1 muid];
  v2 = [a1 timezone];
  v3 = [a1 location];
  v4 = [a1 name];
  v5 = [a1 navDisplayName];
  v6 = [a1 navDisplayAddress];
  v7 = [a1 directionsListAddress];
  v8 = [a1 waypointCategory];
  if (v8 >= 0xE)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v8];
  }

  else
  {
    v9 = off_279868840[v8];
  }

  v10 = [a1 type];
  if (v10 >= 4)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v10];
  }

  else
  {
    v11 = off_2798688B0[v10];
  }

  v12 = [v16 stringWithFormat:@"<%@:%p, muid: %llu, timezone: %@, location: %@, name: %@, navDisplayName: %@, navDisplayAddress: %@, directionsListAddress: %@, waypointCategory: %@, waypointType: %@, isCurrentLocation: %d, isServerProvidedWaypoint: %d>", v15, a1, v14, v2, v3, v4, v5, v6, v7, v9, v11, objc_msgSend(a1, "isCurrentLocation"), objc_msgSend(a1, "isServerProvidedWaypoint")];

  return v12;
}

- (__CFString)hawkQueryRepresentation
{
  v2 = [a1 navDisplayAddress];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [a1 bestLatLng];
    v6 = v5;
    if (v5)
    {
      [v5 coordinate];
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