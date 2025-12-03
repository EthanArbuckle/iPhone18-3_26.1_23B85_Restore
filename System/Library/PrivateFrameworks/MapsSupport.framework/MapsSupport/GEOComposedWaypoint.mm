@interface GEOComposedWaypoint
- (BOOL)needsAdditionalNavData;
- (id)hawkQueryRepresentation;
- (id)shortDescription;
@end

@implementation GEOComposedWaypoint

- (id)shortDescription
{
  v16 = objc_opt_class();
  muid = [(GEOComposedWaypoint *)self muid];
  timezone = [(GEOComposedWaypoint *)self timezone];
  location = [(GEOComposedWaypoint *)self location];
  name = [(GEOComposedWaypoint *)self name];
  navDisplayName = [(GEOComposedWaypoint *)self navDisplayName];
  navDisplayAddress = [(GEOComposedWaypoint *)self navDisplayAddress];
  directionsListAddress = [(GEOComposedWaypoint *)self directionsListAddress];
  waypointCategory = [(GEOComposedWaypoint *)self waypointCategory];
  if (waypointCategory >= 0xE)
  {
    v10 = [NSString stringWithFormat:@"(unknown: %i)", waypointCategory];
  }

  else
  {
    v10 = *(&off_100085C80 + waypointCategory);
  }

  type = [(GEOComposedWaypoint *)self type];
  if (type >= 4)
  {
    v12 = [NSString stringWithFormat:@"(unknown: %i)", type];
  }

  else
  {
    v12 = *(&off_100085CF0 + type);
  }

  v13 = [NSString stringWithFormat:@"<%@:%p, muid: %llu, timezone: %@, location: %@, name: %@, navDisplayName: %@, navDisplayAddress: %@, directionsListAddress: %@, waypointCategory: %@, waypointType: %@, isCurrentLocation: %d, isServerProvidedWaypoint: %d>", v16, self, muid, timezone, location, name, navDisplayName, navDisplayAddress, directionsListAddress, v10, v12, [(GEOComposedWaypoint *)self isCurrentLocation], [(GEOComposedWaypoint *)self isServerProvidedWaypoint]];

  return v13;
}

- (id)hawkQueryRepresentation
{
  navDisplayAddress = [(GEOComposedWaypoint *)self navDisplayAddress];
  v4 = navDisplayAddress;
  if (navDisplayAddress)
  {
    v5 = navDisplayAddress;
  }

  else
  {
    bestLatLng = [(GEOComposedWaypoint *)self bestLatLng];
    v7 = bestLatLng;
    if (bestLatLng)
    {
      [bestLatLng coordinate];
      v9 = v8;
      v10 = [NSNumber numberWithDouble:?];
      v11 = [NSNumber numberWithDouble:v9];
      v12 = [NSString stringWithFormat:@"%@, %@", v10, v11];
    }

    v5 = @"<invalid>";
  }

  return v5;
}

- (BOOL)needsAdditionalNavData
{
  geoMapItem = [(GEOComposedWaypoint *)self geoMapItem];
  _place = [geoMapItem _place];

  address = [_place address];
  structuredAddress = [address structuredAddress];

  if ([structuredAddress hasSubThoroughfare])
  {
    hasFullThoroughfare = 1;
  }

  else
  {
    hasFullThoroughfare = [structuredAddress hasFullThoroughfare];
  }

  geoMapItem2 = [(GEOComposedWaypoint *)self geoMapItem];
  if ([geoMapItem2 _hasMUID])
  {
    v9 = [_place hasSpokenName] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  geoMapItem3 = [(GEOComposedWaypoint *)self geoMapItem];
  [geoMapItem3 coordinate];
  v12 = v11;
  v14 = v13;

  if (hasFullThoroughfare)
  {
    v15 = [_place hasSpokenAddress] ^ 1;
    entryPoints = [_place entryPoints];
    v17 = [entryPoints count];

    if (v17)
    {
      v18 = v15;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = fabs(v12);
  if (fabs(v14) > 180.0)
  {
    v20 = 1;
  }

  else
  {
    v20 = v9;
  }

  if (v19 > 90.0)
  {
    v20 = 1;
  }

  v21 = v20 | v18;

  return v21 & 1;
}

@end