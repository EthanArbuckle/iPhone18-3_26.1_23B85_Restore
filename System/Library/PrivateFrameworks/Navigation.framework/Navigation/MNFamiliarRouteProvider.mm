@interface MNFamiliarRouteProvider
- (MNFamiliarRouteProvider)initWithPurpose:(int64_t)purpose reason:(id)reason date:(id)date;
- (id)_descriptionForLearnedRoute:(id)route;
- (id)_descriptionForLearnedRoutes:(id)routes;
- (id)_familiarRouteForLearnedRoute:(id)route;
- (id)_fetchOptionsForWaypoints:(id)waypoints;
- (id)_rawPathGeometryForLearnedRouteLocations:(id)locations;
- (int)_transportTypeForRouteTravelMode:(int64_t)mode;
- (void)_fetchFamiliarRouteWithWaypoints:(id)waypoints handler:(id)handler;
- (void)fetchFamiliarRouteWithWaypoints:(id)waypoints handler:(id)handler;
@end

@implementation MNFamiliarRouteProvider

- (id)_descriptionForLearnedRoute:(id)route
{
  routeCopy = route;
  travelModeRoutes = [routeCopy travelModeRoutes];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__MNFamiliarRouteProvider__descriptionForLearnedRoute___block_invoke;
  v16[3] = &unk_1E842FCB0;
  v16[4] = self;
  v6 = [travelModeRoutes _geo_map:v16];

  v7 = MEMORY[0x1E696AEC0];
  learnedRouteIdentifier = [routeCopy learnedRouteIdentifier];
  [routeCopy travelledDistanceEstimateForEntireRouteInMeters];
  v10 = v9;
  [routeCopy travelTimeEstimateForEntireRouteInSeconds];
  v12 = v11;

  v13 = [v6 componentsJoinedByString:@"\n\t\t"];
  v14 = [v7 stringWithFormat:@"%@ | %d meters, %d seconds:\n\t\t%@", learnedRouteIdentifier, v10, v12, v13];

  return v14;
}

id __55__MNFamiliarRouteProvider__descriptionForLearnedRoute___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 learnedRouteLocations];
  v5 = [v4 firstObject];

  v6 = [v3 learnedRouteLocations];
  v7 = [v6 lastObject];

  v8 = [*(a1 + 32) _transportTypeForRouteTravelMode:{objc_msgSend(v3, "routeTravelMode")}];
  v9 = MEMORY[0x1E696AD60];
  if (v8 >= 7)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
  }

  else
  {
    v10 = off_1E842FCD0[v8];
  }

  [v3 meanTravelTimeEstimateInSeconds];
  v12 = v11;
  [v3 meanTravelledDistanceEstimateInMeters];
  v14 = [v9 stringWithFormat:@"%@ | %0.1fs, %0.1fm", v10, *&v12, v13];

  if (v5 && v7)
  {
    [v5 latitude];
    v16 = v15;
    [v5 longitude];
    v18 = v17;
    [v7 latitude];
    v20 = v19;
    [v7 longitude];
    [v14 appendFormat:@" | (%f, %f) to (%f, %f)", v16, v18, v20, v21];
  }

  return v14;
}

- (id)_descriptionForLearnedRoutes:(id)routes
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__MNFamiliarRouteProvider__descriptionForLearnedRoutes___block_invoke;
  v10[3] = &unk_1E842FC88;
  v10[4] = self;
  routesCopy = routes;
  v4 = [routesCopy _geo_map:v10];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [routesCopy count];

  v7 = [v4 componentsJoinedByString:@"\n\t"];
  v8 = [v5 stringWithFormat:@"%d learned route(s) found:\n\t%@", v6, v7];

  return v8;
}

- (int)_transportTypeForRouteTravelMode:(int64_t)mode
{
  if ((mode - 1) > 2)
  {
    return 4;
  }

  else
  {
    return dword_1D328D4D8[mode - 1];
  }
}

- (id)_rawPathGeometryForLearnedRouteLocations:(id)locations
{
  locationsCopy = locations;
  if ([locationsCopy count])
  {
    v4 = malloc_type_calloc([locationsCopy count], 0x28uLL, 0x100004074F221ECuLL);
    if ([locationsCopy count])
    {
      v5 = 0;
      v6 = v4 + 16;
      do
      {
        v7 = [locationsCopy objectAtIndexedSubscript:v5];
        [v7 latitude];
        *(v6 - 2) = v8;
        [v7 longitude];
        *(v6 - 1) = v9;
        *v6 = 0x7FEFFFFFFFFFFFFFLL;
        [v7 course];
        *(v6 + 1) = v10;
        v6[16] = [v7 followedByUTurn];

        ++v5;
        v6 += 40;
      }

      while (v5 < [locationsCopy count]);
    }

    v11 = [objc_alloc(MEMORY[0x1E69A2410]) initWithCoordinates:v4 count:objc_msgSend(locationsCopy allSupportPoints:"count") isLearnedRoute:{1, 1}];
    free(v4);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_familiarRouteForLearnedRoute:(id)route
{
  v18 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  travelModeRoutes = [routeCopy travelModeRoutes];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__MNFamiliarRouteProvider__familiarRouteForLearnedRoute___block_invoke;
  v15[3] = &unk_1E842FC60;
  v15[4] = self;
  v6 = [travelModeRoutes _geo_compactMap:v15];

  v7 = MNGetMNFamiliarRouteProviderLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 count];
    *buf = 67109120;
    v17 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "Creating familiar route with %d segments.", buf, 8u);
  }

  v9 = objc_alloc(MEMORY[0x1E69A1D20]);
  learnedRouteIdentifier = [routeCopy learnedRouteIdentifier];

  uUIDString = [learnedRouteIdentifier UUIDString];
  v12 = [v9 initWithFamiliarRouteUUID:uUIDString segments:v6];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

id __57__MNFamiliarRouteProvider__familiarRouteForLearnedRoute___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 learnedRouteLocations];
  v6 = [v3 _rawPathGeometryForLearnedRouteLocations:v5];

  v7 = [*(a1 + 32) _transportTypeForRouteTravelMode:{objc_msgSend(v4, "routeTravelMode")}];
  [v4 meanTravelTimeEstimateInSeconds];
  v9 = v8;
  [v4 meanTravelledDistanceEstimateInMeters];
  v11 = v10;

  v12 = [objc_alloc(MEMORY[0x1E69A1D28]) initWithPathGeometry:v6 transportType:v7 travelDuration:v9 length:v11];

  return v12;
}

- (id)_fetchOptionsForWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  firstObject = [waypointsCopy firstObject];
  clLocation = [firstObject clLocation];

  lastObject = [waypointsCopy lastObject];

  clLocation2 = [lastObject clLocation];

  date = self->_date;
  if (date)
  {
    v10 = date;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF00] now];
  }

  v11 = v10;
  purpose = self->_purpose;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v13 = getRTLearnedRouteFetchOptionsClass_softClass;
  v24 = getRTLearnedRouteFetchOptionsClass_softClass;
  if (!getRTLearnedRouteFetchOptionsClass_softClass)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __getRTLearnedRouteFetchOptionsClass_block_invoke;
    v20[3] = &unk_1E842FE88;
    v20[4] = &v21;
    __getRTLearnedRouteFetchOptionsClass_block_invoke(v20);
    v13 = v22[3];
  }

  v14 = v13;
  _Block_object_dispose(&v21, 8);
  v15 = [v14 alloc];
  LODWORD(v19) = 0;
  if (purpose == 1)
  {
    v16 = [v15 initWithBundlePath:@"/System/Library/LocationBundles/NavdLocationBundleiOS.bundle" routeOriginLocation:clLocation routeDestinationLocation:clLocation2 routeDate:v11 routeFetchType:1 fetchAllRouteLocations:0 routeOriginType:v19];
  }

  else
  {
    v16 = [v15 initWithBundleIdentifier:@"com.apple.Maps" routeOriginLocation:clLocation routeDestinationLocation:clLocation2 routeDate:v11 routeFetchType:1 fetchAllRouteLocations:0 routeOriginType:v19];
  }

  v17 = v16;

  return v17;
}

- (void)_fetchFamiliarRouteWithWaypoints:(id)waypoints handler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  waypointsCopy = waypoints;
  v8 = [(MNFamiliarRouteProvider *)self _fetchOptionsForWaypoints:waypointsCopy];
  firstObject = [waypointsCopy firstObject];
  [firstObject coordinate];
  v11 = v10;
  v13 = v12;

  lastObject = [waypointsCopy lastObject];

  [lastObject coordinate];
  v16 = v15;
  v18 = v17;

  v19 = objc_opt_new();
  [v19 setDateStyle:1];
  [v19 setTimeStyle:1];
  v20 = MNGetMNFamiliarRouteProviderLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    reason = self->_reason;
    v22 = [v19 stringFromDate:self->_date];
    *buf = 138413571;
    v29 = reason;
    v30 = 2049;
    v31 = v11;
    v32 = 2049;
    v33 = v13;
    v34 = 2049;
    v35 = v16;
    v36 = 2049;
    v37 = v18;
    v38 = 2112;
    v39 = v22;
    _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_DEFAULT, "Checking learned routes for reason %@, from %{private}0.6f, %{private}0.6f to %{private}0.6f, %{private}0.6f on %@.", buf, 0x3Eu);
  }

  defaultManager = [getRTRoutineManagerClass() defaultManager];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __68__MNFamiliarRouteProvider__fetchFamiliarRouteWithWaypoints_handler___block_invoke;
  v26[3] = &unk_1E842FC38;
  v26[4] = self;
  v27 = handlerCopy;
  v24 = handlerCopy;
  [defaultManager fetchLearnedRoutesWithOptions:v8 handler:v26];

  v25 = *MEMORY[0x1E69E9840];
}

void __68__MNFamiliarRouteProvider__fetchFamiliarRouteWithWaypoints_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v9 = a4;
  v11 = *(a1 + 40);
  v10 = *(a1 + 32);
  v7 = v6;
  v8 = v9;
  geo_dispatch_async_qos();
}

void __68__MNFamiliarRouteProvider__fetchFamiliarRouteWithWaypoints_handler___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = MNGetMNFamiliarRouteProviderLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "Error fetching learned routes: %@", &v13, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) _descriptionForLearnedRoutes:*(a1 + 48)];
      v13 = 138477827;
      v14 = v6;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "%{private}@", &v13, 0xCu);
    }

    v7 = [*(a1 + 48) firstObject];
    if (v7)
    {
      v8 = [*(a1 + 40) _familiarRouteForLearnedRoute:v7];
      v9 = *(a1 + 40);
      v10 = *(v9 + 32);
      *(v9 + 32) = v8;
      v11 = v8;

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)fetchFamiliarRouteWithWaypoints:(id)waypoints handler:(id)handler
{
  waypointsCopy = waypoints;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (MapsFeature_IsEnabled_LocationIntelligenceMaps())
    {
      if ([waypointsCopy count] == 2)
      {
        objc_initWeak(location, self);
        purpose = self->_purpose;
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __67__MNFamiliarRouteProvider_fetchFamiliarRouteWithWaypoints_handler___block_invoke;
        v10[3] = &unk_1E842FC10;
        objc_copyWeak(&v13, location);
        v12 = handlerCopy;
        v11 = waypointsCopy;
        [MNFamiliarRouteAuthorizationChecker checkAuthorizationForPurpose:purpose completionHandler:v10];

        objc_destroyWeak(&v13);
        objc_destroyWeak(location);
        goto LABEL_9;
      }
    }

    else
    {
      v9 = MNGetMNFamiliarRouteProviderLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_INFO, "Maps location intelligence is not enabled. Not returning familiar routes.", location, 2u);
      }
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_9:
}

void __67__MNFamiliarRouteProvider_fetchFamiliarRouteWithWaypoints_handler___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_7:
    (*(*(a1 + 40) + 16))();
    goto LABEL_8;
  }

  if (!a2)
  {
    v6 = MNGetMNFamiliarRouteProviderLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "Not checking for learned routes because user has not provided authorization.", v7, 2u);
    }

    goto LABEL_7;
  }

  [WeakRetained _fetchFamiliarRouteWithWaypoints:*(a1 + 32) handler:*(a1 + 40)];
LABEL_8:
}

- (MNFamiliarRouteProvider)initWithPurpose:(int64_t)purpose reason:(id)reason date:(id)date
{
  reasonCopy = reason;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = MNFamiliarRouteProvider;
  v11 = [(MNFamiliarRouteProvider *)&v14 init];
  if (v11)
  {
    +[MNFamiliarRouteAuthorizationChecker shared];

    v11->_purpose = purpose;
    objc_storeStrong(&v11->_reason, reason);
    objc_storeStrong(&v11->_date, date);
    v12 = v11;
  }

  return v11;
}

@end