@interface CAMLibrarySelectionSignalResult
+ (BOOL)currentLocation:(id)location isContainedInCircularRegions:(id)regions;
+ (CAMLibrarySelectionSignalResult)librarySelectionSignalResultWithIdentitiesInProximity:(id)proximity currentLocation:(id)location locationAuthorizationStatus:(int)status homeLocations:(id)locations frequentLocations:(id)frequentLocations;
+ (double)distanceBetweenLocation:(id)location andCircularRegion:(id)region atDate:(id)date;
- (BOOL)currentLocationCloseToHome;
- (BOOL)isOnTrip;
- (BOOL)suggestsSharing;
- (CAMLibrarySelectionSignalResult)initWithIdentitiesInProximity:(id)proximity currentLocation:(id)location locationAuthorizationStatus:(int)status homeLocations:(id)locations frequentLocations:(id)frequentLocations;
- (id)_diagnosticsForRegions:(id)regions;
- (id)description;
- (id)frequentLocationRegionContainingLocation:(id)location;
- (id)resultDiagnostics;
@end

@implementation CAMLibrarySelectionSignalResult

+ (CAMLibrarySelectionSignalResult)librarySelectionSignalResultWithIdentitiesInProximity:(id)proximity currentLocation:(id)location locationAuthorizationStatus:(int)status homeLocations:(id)locations frequentLocations:(id)frequentLocations
{
  v8 = *&status;
  frequentLocationsCopy = frequentLocations;
  locationsCopy = locations;
  locationCopy = location;
  proximityCopy = proximity;
  v16 = [[self alloc] initWithIdentitiesInProximity:proximityCopy currentLocation:locationCopy locationAuthorizationStatus:v8 homeLocations:locationsCopy frequentLocations:frequentLocationsCopy];

  return v16;
}

- (CAMLibrarySelectionSignalResult)initWithIdentitiesInProximity:(id)proximity currentLocation:(id)location locationAuthorizationStatus:(int)status homeLocations:(id)locations frequentLocations:(id)frequentLocations
{
  proximityCopy = proximity;
  locationCopy = location;
  locationsCopy = locations;
  frequentLocationsCopy = frequentLocations;
  v26.receiver = self;
  v26.super_class = CAMLibrarySelectionSignalResult;
  v16 = [(CAMLibrarySelectionSignalResult *)&v26 init];
  if (v16)
  {
    v17 = [proximityCopy copy];
    v18 = v17;
    v19 = MEMORY[0x1E695E0F0];
    if (v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v16->_identitiesInProximity, v20);

    objc_storeStrong(&v16->_currentLocation, location);
    v16->_locationAuthorizationStatus = status;
    if (locationsCopy)
    {
      v21 = locationsCopy;
    }

    else
    {
      v21 = v19;
    }

    objc_storeStrong(&v16->_homeLocations, v21);
    if (frequentLocationsCopy)
    {
      v22 = frequentLocationsCopy;
    }

    else
    {
      v22 = v19;
    }

    v23 = [locationsCopy arrayByAddingObjectsFromArray:v22];
    frequentAndHomeLocations = v16->_frequentAndHomeLocations;
    v16->_frequentAndHomeLocations = v23;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = CAMLibrarySelectionSignalResult;
  v4 = [(CAMLibrarySelectionSignalResult *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: identitiesInProximity: %@, currentLocation: %@, locationAuthorizationStatus: %d, homeLocations: %@, number of frequent and home locations: %lu", v4, self->_identitiesInProximity, self->_currentLocation, self->_locationAuthorizationStatus, self->_homeLocations, -[NSArray count](self->_frequentAndHomeLocations, "count")];

  return v5;
}

- (BOOL)isOnTrip
{
  v22 = *MEMORY[0x1E69E9840];
  frequentAndHomeLocations = [(CAMLibrarySelectionSignalResult *)self frequentAndHomeLocations];
  if (![frequentAndHomeLocations count])
  {

    return 0;
  }

  currentLocation = [(CAMLibrarySelectionSignalResult *)self currentLocation];

  if (!currentLocation)
  {
    return 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  frequentAndHomeLocations2 = [(CAMLibrarySelectionSignalResult *)self frequentAndHomeLocations];
  v6 = [frequentAndHomeLocations2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(frequentAndHomeLocations2);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = objc_opt_class();
        currentLocation2 = [(CAMLibrarySelectionSignalResult *)self currentLocation];
        [v11 distanceBetweenLocation:currentLocation2 andCircularRegion:v10 atDate:0];
        v14 = v13;

        if (v14 < 50000.0)
        {
          v15 = 0;
          goto LABEL_15;
        }
      }

      v7 = [frequentAndHomeLocations2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_15:

  return v15;
}

- (BOOL)currentLocationCloseToHome
{
  v3 = objc_opt_class();
  currentLocation = [(CAMLibrarySelectionSignalResult *)self currentLocation];
  homeLocations = [(CAMLibrarySelectionSignalResult *)self homeLocations];
  LOBYTE(v3) = [v3 currentLocation:currentLocation isContainedInCircularRegions:homeLocations];

  return v3;
}

- (id)frequentLocationRegionContainingLocation:(id)location
{
  v21 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  frequentAndHomeLocations = [(CAMLibrarySelectionSignalResult *)self frequentAndHomeLocations];
  v6 = [frequentAndHomeLocations countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(frequentAndHomeLocations);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_opt_class();
        v19 = v10;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
        LOBYTE(v11) = [v11 currentLocation:locationCopy isContainedInCircularRegions:v12];

        if (v11)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [frequentAndHomeLocations countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)suggestsSharing
{
  v35 = *MEMORY[0x1E69E9840];
  suggestsSharingValue = self->_suggestsSharingValue;
  if (suggestsSharingValue)
  {
    return [(NSNumber *)suggestsSharingValue BOOLValue];
  }

  v4 = +[CAMUserPreferences preferences];
  locationAuthorizationStatus = [(CAMLibrarySelectionSignalResult *)self locationAuthorizationStatus];
  if (locationAuthorizationStatus)
  {
    v6 = locationAuthorizationStatus == -1;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (v6 || ![(CAMLibrarySelectionSignalResult *)self cameraHasAccessToLocation])
  {
    v15 = 0;
    v16 = 0;
    LODWORD(currentLocation2) = 0;
  }

  else
  {
    currentLocation = [(CAMLibrarySelectionSignalResult *)self currentLocation];
    [currentLocation coordinate];
    v10 = v9;
    v12 = v11;

    currentLocation2 = [(CAMLibrarySelectionSignalResult *)self currentLocation];
    if (currentLocation2)
    {
      v36.latitude = v10;
      v36.longitude = v12;
      v14 = CLLocationCoordinate2DIsValid(v36);

      if (v14)
      {
        LODWORD(currentLocation2) = [(CAMLibrarySelectionSignalResult *)self currentLocationCloseToHome];
        v15 = 1;
      }

      else
      {
        v15 = 0;
        LODWORD(currentLocation2) = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = 1;
  }

  v17 = [v4 shareWhenAtHomeEnabled] & currentLocation2;
  identitiesInProximity = [(CAMLibrarySelectionSignalResult *)self identitiesInProximity];
  v19 = [identitiesInProximity count];

  if ((v17 & 1) == 0 && v19)
  {
    if (v7 & 1) != 0 || ((v16 ^ 1))
    {
      if (v7)
      {
LABEL_25:
        v17 = v15 & (currentLocation2 ^ 1);
        goto LABEL_28;
      }
    }

    else
    {
      homeLocations = [(CAMLibrarySelectionSignalResult *)self homeLocations];
      if ([homeLocations count])
      {
        shareWhenAtHomeEnabled = [v4 shareWhenAtHomeEnabled];

        if (shareWhenAtHomeEnabled)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

LABEL_27:
    v17 = 1;
  }

LABEL_28:
  v22 = os_log_create("com.apple.camera", "SharedLibrary");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v26[0] = 67110144;
    v26[1] = v17;
    v27 = 1024;
    v28 = v7;
    v29 = 1024;
    v30 = v16;
    v31 = 1024;
    v32 = currentLocation2;
    v33 = 1024;
    v34 = v19 != 0;
    _os_log_impl(&dword_1A3640000, v22, OS_LOG_TYPE_INFO, "[CAMLibrarySelectionSignalResult] suggestsSharing: %d, cameraLocationAuthorizationPending: %d, cameraHasAccessToLocation: %d, currentLocationCloseToHome: %d, hasIdentitiesInProximity: %d", v26, 0x20u);
  }

  v23 = [MEMORY[0x1E696AD98] numberWithBool:v17];
  v24 = self->_suggestsSharingValue;
  self->_suggestsSharingValue = v23;

  suggestsSharingValue = self->_suggestsSharingValue;
  return [(NSNumber *)suggestsSharingValue BOOLValue];
}

- (id)resultDiagnostics
{
  v31[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = MEMORY[0x1E696AD98];
  identitiesInProximity = [(CAMLibrarySelectionSignalResult *)self identitiesInProximity];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(identitiesInProximity, "count")}];
  [v3 setObject:v6 forKeyedSubscript:@"countOfIdentitiesInProximity"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAMLibrarySelectionSignalResult suggestsSharing](self, "suggestsSharing")}];
  [v3 setObject:v7 forKeyedSubscript:@"suggestsSharing"];

  currentLocation = [(CAMLibrarySelectionSignalResult *)self currentLocation];
  v9 = currentLocation;
  if (currentLocation)
  {
    v30[0] = @"coordinateIsValid";
    v10 = MEMORY[0x1E696AD98];
    [currentLocation coordinate];
    v11 = [v10 numberWithBool:CLLocationCoordinate2DIsValid(v33)];
    v30[1] = @"horizontalAccuracy";
    v31[0] = v11;
    v12 = MEMORY[0x1E696AD98];
    [v9 horizontalAccuracy];
    v13 = [v12 numberWithDouble:?];
    v31[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
    [v3 setObject:v14 forKeyedSubscript:@"currentLocation"];
  }

  else
  {
    [v3 setObject:&unk_1F16C9010 forKeyedSubscript:@"currentLocation"];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMLibrarySelectionSignalResult locationAuthorizationStatus](self, "locationAuthorizationStatus")}];
  [v3 setObject:v15 forKeyedSubscript:@"locationAuthorizationStatus"];

  homeLocations = [(CAMLibrarySelectionSignalResult *)self homeLocations];
  v17 = [(CAMLibrarySelectionSignalResult *)self _diagnosticsForRegions:homeLocations];
  [v3 setObject:v17 forKeyedSubscript:@"homeLocationsDiagnostics"];

  frequentAndHomeLocations = [(CAMLibrarySelectionSignalResult *)self frequentAndHomeLocations];
  v19 = [(CAMLibrarySelectionSignalResult *)self _diagnosticsForRegions:frequentAndHomeLocations];
  [v3 setObject:v19 forKeyedSubscript:@"frequentLocationsDiagnostics"];

  v20 = objc_opt_class();
  homeLocations2 = [(CAMLibrarySelectionSignalResult *)self homeLocations];
  v22 = [v20 currentLocation:v9 isContainedInCircularRegions:homeLocations2];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:v22];
  [v3 setObject:v23 forKeyedSubscript:@"closeToHomeLocation"];

  v24 = objc_opt_class();
  frequentAndHomeLocations2 = [(CAMLibrarySelectionSignalResult *)self frequentAndHomeLocations];
  v26 = [v24 currentLocation:v9 isContainedInCircularRegions:frequentAndHomeLocations2];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:v26];
  [v3 setObject:v27 forKeyedSubscript:@"closeToFrequentLocation"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAMLibrarySelectionSignalResult isOnTrip](self, "isOnTrip")}];
  [v3 setObject:v28 forKeyedSubscript:@"isOnTrip"];

  return v3;
}

- (id)_diagnosticsForRegions:(id)regions
{
  v30 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(regionsCopy, "count")}];
  currentLocation = [(CAMLibrarySelectionSignalResult *)self currentLocation];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = regionsCopy;
  v7 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    v10 = *MEMORY[0x1E6985C30];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = v10;
        if (currentLocation)
        {
          [objc_opt_class() distanceBetweenLocation:currentLocation andCircularRegion:v12 atDate:0];
          v13 = v14;
        }

        v27[0] = @"coordinateIsValid";
        v15 = MEMORY[0x1E696AD98];
        [v12 center];
        v16 = [v15 numberWithBool:CLLocationCoordinate2DIsValid(v32)];
        v28[0] = v16;
        v27[1] = @"radius";
        v17 = MEMORY[0x1E696AD98];
        [v12 radius];
        v18 = [v17 numberWithDouble:?];
        v28[1] = v18;
        v27[2] = @"distanceFromCurrentLocation";
        v19 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
        v28[2] = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
        [v5 addObject:v20];
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (double)distanceBetweenLocation:(id)location andCircularRegion:(id)region atDate:(id)date
{
  locationCopy = location;
  regionCopy = region;
  dateCopy = date;
  [locationCopy coordinate];
  if (locationCopy && CLLocationCoordinate2DIsValid(*&v10) && (!dateCopy ? (v15 = 0.0) : ([locationCopy timestamp], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dateCopy, "timeIntervalSinceDate:", v12), v14 = v13, v12, v14 <= 60.0) ? (v15 = 0.0) : (v15 = v14 * 30.0), objc_msgSend(locationCopy, "horizontalAccuracy"), v17 = v16, objc_msgSend(regionCopy, "center"), CLLocationCoordinate2DIsValid(v21)))
  {
    CLLocationCoordinate2DGetDistanceFrom();
    v19 = fmin(v18, fmax(v18 - (v15 + v17), 0.0));
  }

  else
  {
    v19 = *MEMORY[0x1E6985C30];
  }

  return v19;
}

+ (BOOL)currentLocation:(id)location isContainedInCircularRegions:(id)regions
{
  v23 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  regionsCopy = regions;
  v8 = [regionsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(regionsCopy);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        [self distanceBetweenLocation:locationCopy andCircularRegion:v12 atDate:{0, v18}];
        v14 = v13;
        [v12 radius];
        if (v14 < fmin(fmax(v15, 50.0), 750.0))
        {
          v16 = 1;
          goto LABEL_11;
        }
      }

      v9 = [regionsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

@end