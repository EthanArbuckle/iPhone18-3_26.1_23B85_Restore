@interface CAMLibrarySelectionSignalResult
+ (BOOL)currentLocation:(id)a3 isContainedInCircularRegions:(id)a4;
+ (CAMLibrarySelectionSignalResult)librarySelectionSignalResultWithIdentitiesInProximity:(id)a3 currentLocation:(id)a4 locationAuthorizationStatus:(int)a5 homeLocations:(id)a6 frequentLocations:(id)a7;
+ (double)distanceBetweenLocation:(id)a3 andCircularRegion:(id)a4 atDate:(id)a5;
- (BOOL)currentLocationCloseToHome;
- (BOOL)isOnTrip;
- (BOOL)suggestsSharing;
- (CAMLibrarySelectionSignalResult)initWithIdentitiesInProximity:(id)a3 currentLocation:(id)a4 locationAuthorizationStatus:(int)a5 homeLocations:(id)a6 frequentLocations:(id)a7;
- (id)_diagnosticsForRegions:(id)a3;
- (id)description;
- (id)frequentLocationRegionContainingLocation:(id)a3;
- (id)resultDiagnostics;
@end

@implementation CAMLibrarySelectionSignalResult

+ (CAMLibrarySelectionSignalResult)librarySelectionSignalResultWithIdentitiesInProximity:(id)a3 currentLocation:(id)a4 locationAuthorizationStatus:(int)a5 homeLocations:(id)a6 frequentLocations:(id)a7
{
  v8 = *&a5;
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [[a1 alloc] initWithIdentitiesInProximity:v15 currentLocation:v14 locationAuthorizationStatus:v8 homeLocations:v13 frequentLocations:v12];

  return v16;
}

- (CAMLibrarySelectionSignalResult)initWithIdentitiesInProximity:(id)a3 currentLocation:(id)a4 locationAuthorizationStatus:(int)a5 homeLocations:(id)a6 frequentLocations:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = CAMLibrarySelectionSignalResult;
  v16 = [(CAMLibrarySelectionSignalResult *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
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

    objc_storeStrong(&v16->_currentLocation, a4);
    v16->_locationAuthorizationStatus = a5;
    if (v14)
    {
      v21 = v14;
    }

    else
    {
      v21 = v19;
    }

    objc_storeStrong(&v16->_homeLocations, v21);
    if (v15)
    {
      v22 = v15;
    }

    else
    {
      v22 = v19;
    }

    v23 = [v14 arrayByAddingObjectsFromArray:v22];
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
  v3 = [(CAMLibrarySelectionSignalResult *)self frequentAndHomeLocations];
  if (![v3 count])
  {

    return 0;
  }

  v4 = [(CAMLibrarySelectionSignalResult *)self currentLocation];

  if (!v4)
  {
    return 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(CAMLibrarySelectionSignalResult *)self frequentAndHomeLocations];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = objc_opt_class();
        v12 = [(CAMLibrarySelectionSignalResult *)self currentLocation];
        [v11 distanceBetweenLocation:v12 andCircularRegion:v10 atDate:0];
        v14 = v13;

        if (v14 < 50000.0)
        {
          v15 = 0;
          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  v4 = [(CAMLibrarySelectionSignalResult *)self currentLocation];
  v5 = [(CAMLibrarySelectionSignalResult *)self homeLocations];
  LOBYTE(v3) = [v3 currentLocation:v4 isContainedInCircularRegions:v5];

  return v3;
}

- (id)frequentLocationRegionContainingLocation:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(CAMLibrarySelectionSignalResult *)self frequentAndHomeLocations];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_opt_class();
        v19 = v10;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
        LOBYTE(v11) = [v11 currentLocation:v4 isContainedInCircularRegions:v12];

        if (v11)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
  v5 = [(CAMLibrarySelectionSignalResult *)self locationAuthorizationStatus];
  if (v5)
  {
    v6 = v5 == -1;
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
    LODWORD(v13) = 0;
  }

  else
  {
    v8 = [(CAMLibrarySelectionSignalResult *)self currentLocation];
    [v8 coordinate];
    v10 = v9;
    v12 = v11;

    v13 = [(CAMLibrarySelectionSignalResult *)self currentLocation];
    if (v13)
    {
      v36.latitude = v10;
      v36.longitude = v12;
      v14 = CLLocationCoordinate2DIsValid(v36);

      if (v14)
      {
        LODWORD(v13) = [(CAMLibrarySelectionSignalResult *)self currentLocationCloseToHome];
        v15 = 1;
      }

      else
      {
        v15 = 0;
        LODWORD(v13) = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = 1;
  }

  v17 = [v4 shareWhenAtHomeEnabled] & v13;
  v18 = [(CAMLibrarySelectionSignalResult *)self identitiesInProximity];
  v19 = [v18 count];

  if ((v17 & 1) == 0 && v19)
  {
    if (v7 & 1) != 0 || ((v16 ^ 1))
    {
      if (v7)
      {
LABEL_25:
        v17 = v15 & (v13 ^ 1);
        goto LABEL_28;
      }
    }

    else
    {
      v20 = [(CAMLibrarySelectionSignalResult *)self homeLocations];
      if ([v20 count])
      {
        v21 = [v4 shareWhenAtHomeEnabled];

        if (v21)
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
    v32 = v13;
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
  v5 = [(CAMLibrarySelectionSignalResult *)self identitiesInProximity];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  [v3 setObject:v6 forKeyedSubscript:@"countOfIdentitiesInProximity"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAMLibrarySelectionSignalResult suggestsSharing](self, "suggestsSharing")}];
  [v3 setObject:v7 forKeyedSubscript:@"suggestsSharing"];

  v8 = [(CAMLibrarySelectionSignalResult *)self currentLocation];
  v9 = v8;
  if (v8)
  {
    v30[0] = @"coordinateIsValid";
    v10 = MEMORY[0x1E696AD98];
    [v8 coordinate];
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

  v16 = [(CAMLibrarySelectionSignalResult *)self homeLocations];
  v17 = [(CAMLibrarySelectionSignalResult *)self _diagnosticsForRegions:v16];
  [v3 setObject:v17 forKeyedSubscript:@"homeLocationsDiagnostics"];

  v18 = [(CAMLibrarySelectionSignalResult *)self frequentAndHomeLocations];
  v19 = [(CAMLibrarySelectionSignalResult *)self _diagnosticsForRegions:v18];
  [v3 setObject:v19 forKeyedSubscript:@"frequentLocationsDiagnostics"];

  v20 = objc_opt_class();
  v21 = [(CAMLibrarySelectionSignalResult *)self homeLocations];
  v22 = [v20 currentLocation:v9 isContainedInCircularRegions:v21];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:v22];
  [v3 setObject:v23 forKeyedSubscript:@"closeToHomeLocation"];

  v24 = objc_opt_class();
  v25 = [(CAMLibrarySelectionSignalResult *)self frequentAndHomeLocations];
  v26 = [v24 currentLocation:v9 isContainedInCircularRegions:v25];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:v26];
  [v3 setObject:v27 forKeyedSubscript:@"closeToFrequentLocation"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAMLibrarySelectionSignalResult isOnTrip](self, "isOnTrip")}];
  [v3 setObject:v28 forKeyedSubscript:@"isOnTrip"];

  return v3;
}

- (id)_diagnosticsForRegions:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [(CAMLibrarySelectionSignalResult *)self currentLocation];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
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
        if (v6)
        {
          [objc_opt_class() distanceBetweenLocation:v6 andCircularRegion:v12 atDate:0];
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

+ (double)distanceBetweenLocation:(id)a3 andCircularRegion:(id)a4 atDate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v7 coordinate];
  if (v7 && CLLocationCoordinate2DIsValid(*&v10) && (!v9 ? (v15 = 0.0) : ([v7 timestamp], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "timeIntervalSinceDate:", v12), v14 = v13, v12, v14 <= 60.0) ? (v15 = 0.0) : (v15 = v14 * 30.0), objc_msgSend(v7, "horizontalAccuracy"), v17 = v16, objc_msgSend(v8, "center"), CLLocationCoordinate2DIsValid(v21)))
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

+ (BOOL)currentLocation:(id)a3 isContainedInCircularRegions:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        [a1 distanceBetweenLocation:v6 andCircularRegion:v12 atDate:{0, v18}];
        v14 = v13;
        [v12 radius];
        if (v14 < fmin(fmax(v15, 50.0), 750.0))
        {
          v16 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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