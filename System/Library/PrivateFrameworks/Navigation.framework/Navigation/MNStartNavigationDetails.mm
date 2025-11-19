@interface MNStartNavigationDetails
- (MNStartNavigationDetails)init;
- (MNStartNavigationDetails)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNStartNavigationDetails

- (id)description
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  selectedRouteIndex = self->_selectedRouteIndex;
  if (selectedRouteIndex >= [(NSArray *)self->_routes count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_routes objectAtIndexedSubscript:self->_selectedRouteIndex];
  }

  v56 = v5;
  v6 = [v5 destination];
  v7 = MEMORY[0x1E696AEC0];
  v55 = v6;
  v8 = [v6 humanDescriptionWithAddressAndLatLng];
  v9 = [v7 stringWithFormat:@"destination: %@", v8];
  [v3 addObject:v9];

  v10 = [MEMORY[0x1E695DF70] array];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v11 = self->_routes;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v58;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v58 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v57 + 1) + 8 * i) name];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = @"(no name)";
        }

        v19 = v18;

        [v10 addObject:v19];
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v13);
  }

  v20 = MEMORY[0x1E696AEC0];
  v21 = [v10 componentsJoinedByString:{@", "}];
  v22 = [v20 stringWithFormat:@"routes: %@", v21];
  [v3 addObject:v22];

  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"selectedRouteIndex: %d", self->_selectedRouteIndex];
  [v3 addObject:v23];

  v24 = self->_navigationType - 1;
  if (v24 > 3)
  {
    v25 = @"None";
  }

  else
  {
    v25 = off_1E842A590[v24];
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"navigationType: %@", v25];
  [v3 addObject:v26];

  guidanceType = self->_guidanceType;
  v28 = @"Full";
  if (guidanceType == 1)
  {
    v28 = @"Low";
  }

  if (guidanceType == 2)
  {
    v29 = @"RoutePreview";
  }

  else
  {
    v29 = v28;
  }

  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"guidanceType: %@", v29];
  [v3 addObject:v30];

  v31 = MEMORY[0x1E696AEC0];
  v32 = [v56 transportType];
  if (v32 >= 7)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v32];
  }

  else
  {
    v33 = off_1E842A5B0[v32];
  }

  v34 = [v31 stringWithFormat:@"transportType: %@", v33];
  [v3 addObject:v34];

  initialUserLocation = self->_initialUserLocation;
  if (initialUserLocation)
  {
    v36 = MEMORY[0x1E696AEC0];
    [(MNLocation *)initialUserLocation coordinate];
    v38 = v37;
    [(MNLocation *)self->_initialUserLocation coordinate];
    v40 = [v36 stringWithFormat:@"initialUserLocation: %f, %f", v38, v39];
    [v3 addObject:v40];
  }

  else
  {
    [v3 addObject:@"initialUserLocation: (none)"];
  }

  v41 = MEMORY[0x1E696AEC0];
  v42 = self->_guidanceLevelOverride + 1;
  if (v42 >= 4)
  {
    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", self->_guidanceLevelOverride];
  }

  else
  {
    v43 = off_1E842A5E8[v42];
  }

  v44 = [v41 stringWithFormat:@"guidanceLevelOverride: %@", v43];
  [v3 addObject:v44];

  v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"isResumingMultipointRoute: %d", self->_isResumingMultipointRoute];
  [v3 addObject:v45];

  v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"tracePlaybackPath: %@", self->_tracePlaybackPath];
  [v3 addObject:v46];

  v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"traceRecordingData: %p", self->_traceRecordingData];
  [v3 addObject:v47];

  v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"traceRecordingNameOverride: %@", self->_traceRecordingNameOverride];
  [v3 addObject:v48];

  v49 = self->_simulationType + 1;
  if (v49 > 5)
  {
    v50 = @"None";
  }

  else
  {
    v50 = off_1E842A608[v49];
  }

  v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"simulationType: %@", v50];
  [v3 addObject:v51];

  v52 = [v3 componentsJoinedByString:@"\n\t"];

  v53 = *MEMORY[0x1E69E9840];

  return v52;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = MNGetMNNavigationDetailsLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "StartNavigationDetailsEncoding", "", buf, 2u);
  }

  [v4 encodeInteger:self->_navigationType forKey:@"_navigationType"];
  [v4 encodeInteger:self->_guidanceType forKey:@"_guidanceType"];
  [v4 encodeObject:self->_routeAttributes forKey:@"_routeAttributes"];
  [v4 encodeObject:self->_directionsRequest forKey:@"_directionsRequest"];
  [v4 encodeObject:self->_directionsResponse forKey:@"_directionsResponse"];
  [v4 encodeObject:self->_requestingAppIdentifier forKey:@"_requestingAppIdentifier"];
  if ([(NSArray *)self->_routes count])
  {
    [v4 encodeObject:self->_routes forKey:@"_routes"];
    [v4 encodeObject:self->_traffic forKey:@"_traffic"];
  }

  [v4 encodeInteger:self->_selectedRouteIndex forKey:@"_selectedRouteIndex"];
  [v4 encodeObject:self->_initialUserLocation forKey:@"_initialUserLocation"];
  [v4 encodeInteger:self->_guidanceLevelOverride forKey:@"_guidanceLevelOverride"];
  [v4 encodeBool:self->_isResumingMultipointRoute forKey:@"_isResumingMultipointRoute"];
  [v4 encodeObject:self->_traits forKey:@"_traits"];
  [v4 encodeObject:self->_tracePlaybackPath forKey:@"_tracePlaybackPath"];
  [v4 encodeObject:self->_traceRecordingData forKey:@"_traceRecordingData"];
  [v4 encodeInteger:self->_simulationType forKey:@"_simulationType"];
  [v4 encodeObject:self->_traceRecordingNameOverride forKey:@"_traceRecordingNameOverride"];
  [v4 encodeObject:self->_reconnectionDetails forKey:@"_reconnectionDetails"];
  v9 = v8;
  v10 = v9;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v10, OS_SIGNPOST_INTERVAL_END, v6, "StartNavigationDetailsEncoding", "", v11, 2u);
  }
}

- (MNStartNavigationDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = MNStartNavigationDetails;
  v5 = [(MNStartNavigationDetails *)&v46 init];
  if (v5)
  {
    v6 = MNGetMNNavigationDetailsLog();
    v7 = os_signpost_id_generate(v6);
    v8 = v6;
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "StartNavigationDetailsDecoding", "", buf, 2u);
    }

    v5->_navigationType = [v4 decodeIntegerForKey:@"_navigationType"];
    v5->_guidanceType = [v4 decodeIntegerForKey:@"_guidanceType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_routeAttributes"];
    routeAttributes = v5->_routeAttributes;
    v5->_routeAttributes = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_directionsRequest"];
    directionsRequest = v5->_directionsRequest;
    v5->_directionsRequest = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_directionsResponse"];
    directionsResponse = v5->_directionsResponse;
    v5->_directionsResponse = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_requestingAppIdentifier"];
    requestingAppIdentifier = v5->_requestingAppIdentifier;
    v5->_requestingAppIdentifier = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"_routes"];
    routes = v5->_routes;
    v5->_routes = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = [v23 setWithObjects:{v24, v25, objc_opt_class(), 0}];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"_traffic"];
    traffic = v5->_traffic;
    v5->_traffic = v27;

    v5->_selectedRouteIndex = [v4 decodeIntegerForKey:@"_selectedRouteIndex"];
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_initialUserLocation"];
    initialUserLocation = v5->_initialUserLocation;
    v5->_initialUserLocation = v29;

    v5->_guidanceLevelOverride = [v4 decodeIntegerForKey:@"_guidanceLevelOverride"];
    v5->_isResumingMultipointRoute = [v4 decodeBoolForKey:@"_isResumingMultipointRoute"];
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_traits"];
    traits = v5->_traits;
    v5->_traits = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_tracePlaybackPath"];
    tracePlaybackPath = v5->_tracePlaybackPath;
    v5->_tracePlaybackPath = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_traceRecordingData"];
    traceRecordingData = v5->_traceRecordingData;
    v5->_traceRecordingData = v35;

    v5->_simulationType = [v4 decodeIntegerForKey:@"_simulationType"];
    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_traceRecordingNameOverride"];
    traceRecordingNameOverride = v5->_traceRecordingNameOverride;
    v5->_traceRecordingNameOverride = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_reconnectionDetails"];
    reconnectionDetails = v5->_reconnectionDetails;
    v5->_reconnectionDetails = v39;

    v41 = v9;
    v42 = v41;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v42, OS_SIGNPOST_INTERVAL_END, v7, "StartNavigationDetailsDecoding", "", buf, 2u);
    }

    v43 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[MNStartNavigationDetails allocWithZone:?]];
  v5 = v4;
  if (v4)
  {
    v4->_navigationType = self->_navigationType;
    v4->_guidanceType = self->_guidanceType;
    objc_storeStrong(&v4->_tracePlaybackPath, self->_tracePlaybackPath);
    objc_storeStrong(&v5->_traceRecordingData, self->_traceRecordingData);
    v5->_simulationType = self->_simulationType;
    objc_storeStrong(&v5->_traceRecordingNameOverride, self->_traceRecordingNameOverride);
    objc_storeStrong(&v5->_routeAttributes, self->_routeAttributes);
    objc_storeStrong(&v5->_directionsRequest, self->_directionsRequest);
    objc_storeStrong(&v5->_directionsResponse, self->_directionsResponse);
    objc_storeStrong(&v5->_requestingAppIdentifier, self->_requestingAppIdentifier);
    objc_storeStrong(&v5->_routes, self->_routes);
    v5->_selectedRouteIndex = self->_selectedRouteIndex;
    objc_storeStrong(&v5->_traffic, self->_traffic);
    v6 = [(MNLocation *)self->_initialUserLocation copy];
    initialUserLocation = v5->_initialUserLocation;
    v5->_initialUserLocation = v6;

    v5->_guidanceLevelOverride = self->_guidanceLevelOverride;
    v5->_isResumingMultipointRoute = self->_isResumingMultipointRoute;
    v8 = [(GEOMapServiceTraits *)self->_traits copy];
    traits = v5->_traits;
    v5->_traits = v8;

    v10 = [(MNStartNavigationReconnectionDetails *)self->_reconnectionDetails copy];
    reconnectionDetails = v5->_reconnectionDetails;
    v5->_reconnectionDetails = v10;

    v12 = v5;
  }

  return v5;
}

- (MNStartNavigationDetails)init
{
  v6.receiver = self;
  v6.super_class = MNStartNavigationDetails;
  v2 = [(MNStartNavigationDetails *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_guidanceType = 0;
    v2->_simulationType = 0;
    v2->_guidanceLevelOverride = -1;
    v4 = v2;
  }

  return v3;
}

@end