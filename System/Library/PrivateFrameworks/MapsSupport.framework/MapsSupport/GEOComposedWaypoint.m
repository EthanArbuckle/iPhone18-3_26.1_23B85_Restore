@interface GEOComposedWaypoint
- (BOOL)needsAdditionalNavData;
- (id)hawkQueryRepresentation;
- (id)shortDescription;
@end

@implementation GEOComposedWaypoint

- (id)shortDescription
{
  v16 = objc_opt_class();
  v15 = [(GEOComposedWaypoint *)self muid];
  v3 = [(GEOComposedWaypoint *)self timezone];
  v4 = [(GEOComposedWaypoint *)self location];
  v5 = [(GEOComposedWaypoint *)self name];
  v6 = [(GEOComposedWaypoint *)self navDisplayName];
  v7 = [(GEOComposedWaypoint *)self navDisplayAddress];
  v8 = [(GEOComposedWaypoint *)self directionsListAddress];
  v9 = [(GEOComposedWaypoint *)self waypointCategory];
  if (v9 >= 0xE)
  {
    v10 = [NSString stringWithFormat:@"(unknown: %i)", v9];
  }

  else
  {
    v10 = *(&off_100085C80 + v9);
  }

  v11 = [(GEOComposedWaypoint *)self type];
  if (v11 >= 4)
  {
    v12 = [NSString stringWithFormat:@"(unknown: %i)", v11];
  }

  else
  {
    v12 = *(&off_100085CF0 + v11);
  }

  v13 = [NSString stringWithFormat:@"<%@:%p, muid: %llu, timezone: %@, location: %@, name: %@, navDisplayName: %@, navDisplayAddress: %@, directionsListAddress: %@, waypointCategory: %@, waypointType: %@, isCurrentLocation: %d, isServerProvidedWaypoint: %d>", v16, self, v15, v3, v4, v5, v6, v7, v8, v10, v12, [(GEOComposedWaypoint *)self isCurrentLocation], [(GEOComposedWaypoint *)self isServerProvidedWaypoint]];

  return v13;
}

- (id)hawkQueryRepresentation
{
  v3 = [(GEOComposedWaypoint *)self navDisplayAddress];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(GEOComposedWaypoint *)self bestLatLng];
    v7 = v6;
    if (v6)
    {
      [v6 coordinate];
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
  v3 = [(GEOComposedWaypoint *)self geoMapItem];
  v4 = [v3 _place];

  v5 = [v4 address];
  v6 = [v5 structuredAddress];

  if ([v6 hasSubThoroughfare])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v6 hasFullThoroughfare];
  }

  v8 = [(GEOComposedWaypoint *)self geoMapItem];
  if ([v8 _hasMUID])
  {
    v9 = [v4 hasSpokenName] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v10 = [(GEOComposedWaypoint *)self geoMapItem];
  [v10 coordinate];
  v12 = v11;
  v14 = v13;

  if (v7)
  {
    v15 = [v4 hasSpokenAddress] ^ 1;
    v16 = [v4 entryPoints];
    v17 = [v16 count];

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