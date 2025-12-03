@interface MNStartNavigationDetails
- (MNStartNavigationDetails)init;
- (MNStartNavigationDetails)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNStartNavigationDetails

- (id)description
{
  v62 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
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
  destination = [v5 destination];
  v7 = MEMORY[0x1E696AEC0];
  v55 = destination;
  humanDescriptionWithAddressAndLatLng = [destination humanDescriptionWithAddressAndLatLng];
  v9 = [v7 stringWithFormat:@"destination: %@", humanDescriptionWithAddressAndLatLng];
  [array addObject:v9];

  array2 = [MEMORY[0x1E695DF70] array];
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

        name = [*(*(&v57 + 1) + 8 * i) name];
        v17 = name;
        if (name)
        {
          v18 = name;
        }

        else
        {
          v18 = @"(no name)";
        }

        v19 = v18;

        [array2 addObject:v19];
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v13);
  }

  v20 = MEMORY[0x1E696AEC0];
  v21 = [array2 componentsJoinedByString:{@", "}];
  v22 = [v20 stringWithFormat:@"routes: %@", v21];
  [array addObject:v22];

  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"selectedRouteIndex: %d", self->_selectedRouteIndex];
  [array addObject:v23];

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
  [array addObject:v26];

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
  [array addObject:v30];

  v31 = MEMORY[0x1E696AEC0];
  transportType = [v56 transportType];
  if (transportType >= 7)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", transportType];
  }

  else
  {
    v33 = off_1E842A5B0[transportType];
  }

  v34 = [v31 stringWithFormat:@"transportType: %@", v33];
  [array addObject:v34];

  initialUserLocation = self->_initialUserLocation;
  if (initialUserLocation)
  {
    v36 = MEMORY[0x1E696AEC0];
    [(MNLocation *)initialUserLocation coordinate];
    v38 = v37;
    [(MNLocation *)self->_initialUserLocation coordinate];
    v40 = [v36 stringWithFormat:@"initialUserLocation: %f, %f", v38, v39];
    [array addObject:v40];
  }

  else
  {
    [array addObject:@"initialUserLocation: (none)"];
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
  [array addObject:v44];

  v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"isResumingMultipointRoute: %d", self->_isResumingMultipointRoute];
  [array addObject:v45];

  v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"tracePlaybackPath: %@", self->_tracePlaybackPath];
  [array addObject:v46];

  v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"traceRecordingData: %p", self->_traceRecordingData];
  [array addObject:v47];

  v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"traceRecordingNameOverride: %@", self->_traceRecordingNameOverride];
  [array addObject:v48];

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
  [array addObject:v51];

  v52 = [array componentsJoinedByString:@"\n\t"];

  v53 = *MEMORY[0x1E69E9840];

  return v52;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MNGetMNNavigationDetailsLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "StartNavigationDetailsEncoding", "", buf, 2u);
  }

  [coderCopy encodeInteger:self->_navigationType forKey:@"_navigationType"];
  [coderCopy encodeInteger:self->_guidanceType forKey:@"_guidanceType"];
  [coderCopy encodeObject:self->_routeAttributes forKey:@"_routeAttributes"];
  [coderCopy encodeObject:self->_directionsRequest forKey:@"_directionsRequest"];
  [coderCopy encodeObject:self->_directionsResponse forKey:@"_directionsResponse"];
  [coderCopy encodeObject:self->_requestingAppIdentifier forKey:@"_requestingAppIdentifier"];
  if ([(NSArray *)self->_routes count])
  {
    [coderCopy encodeObject:self->_routes forKey:@"_routes"];
    [coderCopy encodeObject:self->_traffic forKey:@"_traffic"];
  }

  [coderCopy encodeInteger:self->_selectedRouteIndex forKey:@"_selectedRouteIndex"];
  [coderCopy encodeObject:self->_initialUserLocation forKey:@"_initialUserLocation"];
  [coderCopy encodeInteger:self->_guidanceLevelOverride forKey:@"_guidanceLevelOverride"];
  [coderCopy encodeBool:self->_isResumingMultipointRoute forKey:@"_isResumingMultipointRoute"];
  [coderCopy encodeObject:self->_traits forKey:@"_traits"];
  [coderCopy encodeObject:self->_tracePlaybackPath forKey:@"_tracePlaybackPath"];
  [coderCopy encodeObject:self->_traceRecordingData forKey:@"_traceRecordingData"];
  [coderCopy encodeInteger:self->_simulationType forKey:@"_simulationType"];
  [coderCopy encodeObject:self->_traceRecordingNameOverride forKey:@"_traceRecordingNameOverride"];
  [coderCopy encodeObject:self->_reconnectionDetails forKey:@"_reconnectionDetails"];
  v9 = v8;
  v10 = v9;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v10, OS_SIGNPOST_INTERVAL_END, v6, "StartNavigationDetailsEncoding", "", v11, 2u);
  }
}

- (MNStartNavigationDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
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

    v5->_navigationType = [coderCopy decodeIntegerForKey:@"_navigationType"];
    v5->_guidanceType = [coderCopy decodeIntegerForKey:@"_guidanceType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_routeAttributes"];
    routeAttributes = v5->_routeAttributes;
    v5->_routeAttributes = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_directionsRequest"];
    directionsRequest = v5->_directionsRequest;
    v5->_directionsRequest = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_directionsResponse"];
    directionsResponse = v5->_directionsResponse;
    v5->_directionsResponse = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_requestingAppIdentifier"];
    requestingAppIdentifier = v5->_requestingAppIdentifier;
    v5->_requestingAppIdentifier = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"_routes"];
    routes = v5->_routes;
    v5->_routes = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = [v23 setWithObjects:{v24, v25, objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"_traffic"];
    traffic = v5->_traffic;
    v5->_traffic = v27;

    v5->_selectedRouteIndex = [coderCopy decodeIntegerForKey:@"_selectedRouteIndex"];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_initialUserLocation"];
    initialUserLocation = v5->_initialUserLocation;
    v5->_initialUserLocation = v29;

    v5->_guidanceLevelOverride = [coderCopy decodeIntegerForKey:@"_guidanceLevelOverride"];
    v5->_isResumingMultipointRoute = [coderCopy decodeBoolForKey:@"_isResumingMultipointRoute"];
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_traits"];
    traits = v5->_traits;
    v5->_traits = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_tracePlaybackPath"];
    tracePlaybackPath = v5->_tracePlaybackPath;
    v5->_tracePlaybackPath = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_traceRecordingData"];
    traceRecordingData = v5->_traceRecordingData;
    v5->_traceRecordingData = v35;

    v5->_simulationType = [coderCopy decodeIntegerForKey:@"_simulationType"];
    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_traceRecordingNameOverride"];
    traceRecordingNameOverride = v5->_traceRecordingNameOverride;
    v5->_traceRecordingNameOverride = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_reconnectionDetails"];
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

- (id)copyWithZone:(_NSZone *)zone
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