@interface MNDirectionsRequestManager
- (MNDirectionsRequestManager)init;
- (void)_logRoutes:(id)routes error:(id)error;
- (void)_requestDirectionsFromTraceWithPath:(id)path feedback:(id)feedback auditToken:(id)token finishedHandler:(id)handler;
- (void)_requestServerDirections:(id)directions preferredRoute:(id)route withIdentifier:(id)identifier auditToken:(id)token finishedHandler:(id)handler;
- (void)cancelDirectionsRequestWithIdentifier:(id)identifier;
- (void)requestDirections:(id)directions withIdentifier:(id)identifier auditToken:(id)token finishedHandler:(id)handler;
@end

@implementation MNDirectionsRequestManager

- (void)_logRoutes:(id)routes error:(id)error
{
  *&v24[5] = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  errorCopy = error;
  if ([routesCopy count])
  {
    firstObject = [routesCopy firstObject];
    BOOL = GEOConfigGetBOOL();
    v9 = MNGetMNRouteLoggingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      route = [firstObject route];
      v11 = route;
      if (BOOL)
      {
        [route debugDescription];
      }

      else
      {
        [route description];
      }
      v12 = ;
      *buf = 138412290;
      *v24 = v12;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "Route 0: %@\n", buf, 0xCu);
    }

    v13 = GEOConfigGetBOOL();
    if ([routesCopy count] >= 2)
    {
      v21 = firstObject;
      v22 = errorCopy;
      v14 = 1;
      do
      {
        v15 = [routesCopy objectAtIndexedSubscript:{v14, v21, v22}];
        v16 = MNGetMNRouteLoggingLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          route2 = [v15 route];
          v18 = route2;
          if (v13)
          {
            [route2 debugDescription];
          }

          else
          {
            [route2 description];
          }
          v19 = ;
          *buf = 67109378;
          v24[0] = v14;
          LOWORD(v24[1]) = 2112;
          *(&v24[1] + 2) = v19;
          _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_DEFAULT, "Route %d: %@\n", buf, 0x12u);
        }

        ++v14;
      }

      while (v14 < [routesCopy count]);
      firstObject = v21;
      errorCopy = v22;
    }
  }

  else
  {
    firstObject = MNGetMNRouteLoggingLog();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v24 = errorCopy;
      _os_log_impl(&dword_1D311E000, firstObject, OS_LOG_TYPE_ERROR, "Error loading routes: %@", buf, 0xCu);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_requestDirectionsFromTraceWithPath:(id)path feedback:(id)feedback auditToken:(id)token finishedHandler:(id)handler
{
  v77 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  feedbackCopy = feedback;
  tokenCopy = token;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v51 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v68 = "[MNDirectionsRequestManager _requestDirectionsFromTraceWithPath:feedback:auditToken:finishedHandler:]";
      v69 = 2080;
      v70 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNDirectionsRequestManager.m";
      v71 = 1024;
      v72 = 250;
      v73 = 2080;
      v74 = "finishedHandler != nil";
      _os_log_impl(&dword_1D311E000, v51, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
    }
  }

  v14 = objc_alloc_init(MNTraceLoader);
  v15 = objc_alloc_init(MNDirectionsResponseInfo);
  v64 = 0;
  v16 = [(MNTraceLoader *)v14 loadTraceWithPath:pathCopy outError:&v64];
  v17 = v64;
  if (v17)
  {
    v18 = v17;
    [(MNDirectionsResponseInfo *)v15 setError:v17];
    handlerCopy[2](handlerCopy, v15);
  }

  else
  {
    selfCopy = self;
    v55 = v14;
    v57 = v16;
    v58 = feedbackCopy;
    v56 = pathCopy;
    directions = [v16 directions];
    firstObject = [directions firstObject];

    request = [firstObject request];
    v22 = [request copy];

    response = [firstObject response];
    routeAttributes = [v22 routeAttributes];
    Integer = GEOConfigGetInteger();
    v60 = v22;
    v61 = tokenCopy;
    v59 = routeAttributes;
    if (Integer)
    {
      v26 = Integer;
      v52 = response;
      v27 = [MNDirectionsRequestDetails alloc];
      waypoints = [firstObject waypoints];
      v29 = MEMORY[0x1E69A2500];
      routeAttributes2 = [v22 routeAttributes];
      v31 = [v29 defaultRouteAttributesForTransportType:{objc_msgSend(routeAttributes2, "mainTransportType")}];
      v32 = [(MNDirectionsRequestDetails *)v27 initWithWaypoints:waypoints routeAttributes:v31];

      if ([v22 mainTransportTypeMaxRouteCount])
      {
        mainTransportTypeMaxRouteCount = [v22 mainTransportTypeMaxRouteCount];
      }

      else
      {
        mainTransportTypeMaxRouteCount = 3;
      }

      tokenCopy = v61;
      v14 = v55;
      [(MNDirectionsRequestDetails *)v32 setMaxRouteCount:mainTransportTypeMaxRouteCount, v52];
      v41 = objc_opt_new();
      [(MNDirectionsRequestDetails *)v32 setDirectionsRequestFeedback:v41];

      directionsRequestFeedback = [(MNDirectionsRequestDetails *)v32 directionsRequestFeedback];
      [directionsRequestFeedback setPurpose:1];

      pathCopy = v56;
      if (v26 == 2)
      {
        v43 = objc_alloc(MEMORY[0x1E69A2538]);
        waypoints2 = [firstObject waypoints];
        v45 = [v43 initWithWaypoints:waypoints2 routeAttributes:v59 directionsResponse:v53 directionsRequest:v60];

        allRouteInfos = [v45 allRouteInfos];
        selectedRouteIndex = [firstObject selectedRouteIndex];
        if (selectedRouteIndex >= [allRouteInfos count])
        {
          route = 0;
        }

        else
        {
          v48 = [allRouteInfos objectAtIndexedSubscript:{objc_msgSend(firstObject, "selectedRouteIndex")}];
          route = [v48 route];
        }

        tokenCopy = v61;
      }

      else
      {
        route = 0;
      }

      uUID = [MEMORY[0x1E696AFB0] UUID];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __102__MNDirectionsRequestManager__requestDirectionsFromTraceWithPath_feedback_auditToken_finishedHandler___block_invoke;
      v62[3] = &unk_1E842B8B0;
      v63 = handlerCopy;
      [(MNDirectionsRequestManager *)selfCopy _requestServerDirections:v32 preferredRoute:route withIdentifier:uUID auditToken:tokenCopy finishedHandler:v62];

      v18 = 0;
      response = v53;
    }

    else
    {
      v34 = objc_alloc(MEMORY[0x1E69A2538]);
      waypoints3 = [firstObject waypoints];
      v32 = [v34 initWithWaypoints:waypoints3 routeAttributes:routeAttributes directionsResponse:response directionsRequest:v22];

      route = [(MNDirectionsRequestDetails *)v32 allRouteInfos];
      [(MNDirectionsRequestManager *)selfCopy _logRoutes:route error:0];
      v18 = 0;
      v14 = v55;
      pathCopy = v56;
      if (![route count])
      {
        v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Recorded trace response has no routes and no errors."];
        v38 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v68 = "[MNDirectionsRequestManager _requestDirectionsFromTraceWithPath:feedback:auditToken:finishedHandler:]";
          v69 = 2080;
          v70 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNDirectionsRequestManager.m";
          v71 = 1024;
          v72 = 277;
          v73 = 2080;
          v74 = "NO";
          v75 = 2112;
          v76 = v37;
          _os_log_impl(&dword_1D311E000, v38, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
        }

        v65[0] = @"TracePath";
        v65[1] = @"GEODirectionsResponse";
        v66[0] = v56;
        v66[1] = response;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
        v18 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:5 userInfo:v39];
      }

      [(MNDirectionsResponseInfo *)v15 setRouteInfos:route];
      request2 = [firstObject request];
      [(MNDirectionsResponseInfo *)v15 setRequest:request2];

      [(MNDirectionsResponseInfo *)v15 setResponse:response];
      [(MNDirectionsResponseInfo *)v15 setError:v18];
      handlerCopy[2](handlerCopy, v15);
      tokenCopy = v61;
    }

    v16 = v57;
    feedbackCopy = v58;
  }

  v50 = *MEMORY[0x1E69E9840];
}

void __102__MNDirectionsRequestManager__requestDirectionsFromTraceWithPath_feedback_auditToken_finishedHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTraceRecordingData:0];
  (*(*(a1 + 32) + 16))();
}

- (void)_requestServerDirections:(id)directions preferredRoute:(id)route withIdentifier:(id)identifier auditToken:(id)token finishedHandler:(id)handler
{
  v86 = *MEMORY[0x1E69E9840];
  directionsCopy = directions;
  routeCopy = route;
  identifierCopy = identifier;
  tokenCopy = token;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v57 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *v83 = 136315906;
      *&v83[4] = "[MNDirectionsRequestManager _requestServerDirections:preferredRoute:withIdentifier:auditToken:finishedHandler:]";
      *&v83[12] = 2080;
      *&v83[14] = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNDirectionsRequestManager.m";
      *&v83[22] = 1024;
      LODWORD(v84) = 105;
      WORD2(v84) = 2080;
      *(&v84 + 6) = "finishedHandler != nil";
      _os_log_impl(&dword_1D311E000, v57, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", v83, 0x26u);
    }
  }

  *v83 = 0;
  *&v83[8] = v83;
  *&v83[16] = 0x3032000000;
  *&v84 = __Block_byref_object_copy__7336;
  *(&v84 + 1) = __Block_byref_object_dispose__7337;
  v85 = objc_alloc_init(MNDirectionsResponseInfo);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  waypoints = [directionsCopy waypoints];
  v16 = [(MNRouteAttributes *)waypoints countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (v16)
  {
    v17 = *v71;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v71 != v17)
        {
          objc_enumerationMutation(waypoints);
        }

        latLng = [*(*(&v70 + 1) + 8 * i) latLng];
        IsNilOrZero = _navigation_GEOLatLngIsNilOrZero(latLng);

        if (IsNilOrZero)
        {
          v80[0] = @"MNDirectionsRequestDetails";
          null = directionsCopy;
          if (!directionsCopy)
          {
            null = [MEMORY[0x1E695DFB0] null];
          }

          v80[1] = *MEMORY[0x1E696A588];
          v81[0] = null;
          v81[1] = @"Waypoint in request is nil or invalid";
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:2];
          if (!directionsCopy)
          {
          }

          v28 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:3 userInfo:v27];
          v29 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v75 = v28;
            _os_log_impl(&dword_1D311E000, v29, OS_LOG_TYPE_ERROR, "Error in fetching directions %@", buf, 0xCu);
          }

          [*(*&v83[8] + 40) setError:v28];
          handlerCopy[2](handlerCopy, *(*&v83[8] + 40));
          goto LABEL_33;
        }
      }

      v16 = [(MNRouteAttributes *)waypoints countByEnumeratingWithState:&v70 objects:v82 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  waypoints = [directionsCopy routeAttributes];
  routeAttributes = [directionsCopy routeAttributes];
  mainTransportType = [routeAttributes mainTransportType];

  if ((mainTransportType - 1) >= 3)
  {
    if (mainTransportType)
    {
      v78 = @"MNDirectionsRequestDetails";
      v79 = directionsCopy;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      v28 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:4 userInfo:v27];
      [*(*&v83[8] + 40) setError:v28];
      handlerCopy[2](handlerCopy, *(*&v83[8] + 40));
      goto LABEL_33;
    }

    v30 = [MNRouteAttributes alloc];
    waypoints2 = [directionsCopy waypoints];
    v23 = [(MNRouteAttributes *)v30 initWithAttributes:waypoints waypoints:waypoints2];

    if (GEOConfigGetBOOL())
    {
      [(MNRouteAttributes *)v23 addInitialPromptType:1];
    }
  }

  else
  {
    v23 = waypoints;
  }

  v24 = objc_alloc_init(MEMORY[0x1E69A1D30]);
  global_queue = geo_get_global_queue();
  [v24 setCallbackQueue:global_queue];

  if (routeCopy)
  {
    [v24 setRequestType:15];
    [v24 setCurrentRoute:routeCopy];
  }

  else
  {
    resumeRouteHandle = [directionsCopy resumeRouteHandle];
    if (resumeRouteHandle && (v33 = [directionsCopy isResumingMultipointRoute], resumeRouteHandle, (v33 & 1) != 0))
    {
      [v24 setRequestType:12];
      resumeRouteHandle2 = [directionsCopy resumeRouteHandle];
      [v24 setHasVisitedFirstStop:{objc_msgSend(resumeRouteHandle2, "hasVisitedFirstStop")}];
    }

    else
    {
      [v24 setRequestType:{1, tokenCopy}];
    }

    waypoints3 = [directionsCopy waypoints];
    [v24 setWaypoints:waypoints3];
  }

  v36 = [MNFamiliarRouteProvider alloc];
  routeAttributes2 = [directionsCopy routeAttributes];
  anyDate = [routeAttributes2 anyDate];
  v39 = [(MNFamiliarRouteProvider *)v36 initWithPurpose:0 reason:@"Route Planning" date:anyDate];
  [v24 setFamiliarRouteProvider:v39];

  resumeRouteHandle3 = [directionsCopy resumeRouteHandle];
  [v24 setResumeRouteHandle:resumeRouteHandle3];

  [v24 setTransportType:mainTransportType];
  [v24 setRouteAttributes:v23];
  traits = [directionsCopy traits];
  [v24 setTraits:traits];

  commonOptions = [directionsCopy commonOptions];
  [v24 setCommonOptions:commonOptions];

  [v24 setMaxRouteCount:{objc_msgSend(directionsCopy, "maxRouteCount")}];
  currentUserLocation = [directionsCopy currentUserLocation];
  [v24 setCurrentLocation:currentUserLocation];

  currentMapRegion = [directionsCopy currentMapRegion];
  [v24 setVisibleRegion:currentMapRegion];

  directionsRequestFeedback = [directionsCopy directionsRequestFeedback];
  [v24 setFeedback:directionsRequestFeedback];

  [v24 setAuditToken:tokenCopy];
  v46 = GEOConfigGetDate();
  [v24 setDodgeballOutsideOfMapsPredictedExitDate:v46];

  v47 = GEOConfigGetDate();
  [v24 setDodgeballOutsideOfMapsPredictedEntryDate:v47];

  v48 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    v49 = off_1E842B8D0[mainTransportType];
    *buf = 138412547;
    v75 = identifierCopy;
    v76 = 2113;
    v77 = v49;
    _os_log_impl(&dword_1D311E000, v48, OS_LOG_TYPE_INFO, "Requesting directions from server. identifier: %@ | transportType: %{private}@", buf, 0x16u);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v51 = v50;
  directionsService = self->_directionsService;
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __112__MNDirectionsRequestManager__requestServerDirections_preferredRoute_withIdentifier_auditToken_finishedHandler___block_invoke;
  v62[3] = &unk_1E842B888;
  v53 = identifierCopy;
  v63 = v53;
  selfCopy = self;
  v65 = directionsCopy;
  v69 = v51;
  v27 = v24;
  v66 = v27;
  v68 = v83;
  v67 = handlerCopy;
  v54 = [(GEODirectionsService *)directionsService requestDirections:v27 handler:v62];
  pendingRequestsIsolater = self->_pendingRequestsIsolater;
  v60 = v53;
  v61 = v54;
  geo_isolate_sync();

  v28 = v63;
  waypoints = v23;
LABEL_33:

  _Block_object_dispose(v83, 8);
  v56 = *MEMORY[0x1E69E9840];
}

void __112__MNDirectionsRequestManager__requestServerDirections_preferredRoute_withIdentifier_auditToken_finishedHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v65 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = MEMORY[0x1E695DF00];
  v16 = a2;
  [v15 timeIntervalSinceReferenceDate];
  v18 = v17;
  v19 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 32);
    *buf = 138412290;
    v56 = v20;
    _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_INFO, "Received directions response from server. identifier: %@", buf, 0xCu);
  }

  if (v13)
  {
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v13;
      _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_ERROR, "Received error from directions request: %@", buf, 0xCu);
    }
  }

  if (v14)
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v14;
      _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_ERROR, "Received directionsError from directions request: %@", buf, 0xCu);
    }
  }

  v23 = *(*(a1 + 40) + 16);
  v52 = *(a1 + 32);
  geo_isolate_sync();
  v24 = objc_alloc(MEMORY[0x1E69A2538]);
  v25 = [*(a1 + 48) routeAttributes];
  v26 = [v24 initWithWaypoints:v16 routeAttributes:v25 directionsResponse:v12 directionsRequest:v11];

  v27 = [v26 allRouteInfos];
  [*(a1 + 40) _logRoutes:v27 error:v13];
  if (GEOConfigGetBOOL())
  {
    v28 = objc_alloc_init(MNTraceRecordingData);
    v29 = [*(a1 + 48) waypoints];
    [(MNTraceRecordingData *)v28 setWaypoints:v29];

    [(MNTraceRecordingData *)v28 setInitialDirectionsRequest:v11];
    [(MNTraceRecordingData *)v28 setInitialDirectionsResponse:v12];
    [(MNTraceRecordingData *)v28 setInitialDirectionsRequestError:v13];
    [(MNTraceRecordingData *)v28 setInitialDirectionsRequestTimestamp:*(a1 + 80)];
    [(MNTraceRecordingData *)v28 setInitialDirectionsResponseTimestamp:v18];
    v30 = [MNLocation alloc];
    v31 = [*(a1 + 48) currentUserLocation];
    v32 = [(CLLocation *)v30 initWithGeoLocation:v31];

    [(MNTraceRecordingData *)v28 setInitialUserLocation:v32];
  }

  else
  {
    v28 = 0;
  }

  v33 = [v27 count];
  if (!v13 && !v33)
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Server response returned no response and no errors."];
    v35 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v56 = "[MNDirectionsRequestManager _requestServerDirections:preferredRoute:withIdentifier:auditToken:finishedHandler:]_block_invoke_2";
      v57 = 2080;
      v58 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNDirectionsRequestManager.m";
      v59 = 1024;
      v60 = 212;
      v61 = 2080;
      v62 = "NO";
      v63 = 2112;
      v64 = v34;
      _os_log_impl(&dword_1D311E000, v35, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
    }

    v36 = *(a1 + 48);
    v53[0] = @"MNDirectionsRequestDetails";
    v53[1] = @"GEODirectionsResponse";
    v54[0] = v36;
    v54[1] = v12;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];
    v13 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:5 userInfo:v37];
  }

  Integer = GEOConfigGetInteger();
  if (Integer)
  {
    v39 = Integer;
    if ([*(a1 + 56) requestType] == 1)
    {
      v50 = v14;
      v51 = v11;
      v40 = [v27 firstObject];
      v41 = [v40 route];
      [v41 distance];
      v43 = v42;

      v44 = [v27 firstObject];
      if ([v27 count] <= 1)
      {
        [v12 addFakeTrafficIncidentAlert:v39 targetLegIndex:0 mainRouteInfo:v44 alternateRouteInfo:0 currentDistance:v43];
      }

      else
      {
        v45 = [v27 objectAtIndexedSubscript:1];
        [v12 addFakeTrafficIncidentAlert:v39 targetLegIndex:0 mainRouteInfo:v44 alternateRouteInfo:v45 currentDistance:v43];
      }

      v14 = v50;
      v11 = v51;
    }
  }

  [*(*(*(a1 + 72) + 8) + 40) setRouteInfos:v27];
  [*(*(*(a1 + 72) + 8) + 40) setRequest:v11];
  [*(*(*(a1 + 72) + 8) + 40) setResponse:v12];
  [*(*(*(a1 + 72) + 8) + 40) setError:v13];
  [*(*(*(a1 + 72) + 8) + 40) setDirectionsError:v14];
  [*(*(*(a1 + 72) + 8) + 40) setTraceRecordingData:v28];
  v46 = v14;
  v47 = objc_alloc_init(MNNavigationTraceManager);
  [(MNNavigationTraceManager *)v47 saveRoutePlanningTrace:v28];
  v48 = *(*(*(a1 + 72) + 8) + 40);
  (*(*(a1 + 64) + 16))();

  v49 = *MEMORY[0x1E69E9840];
}

- (void)cancelDirectionsRequestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7336;
  v11 = __Block_byref_object_dispose__7337;
  v12 = 0;
  pendingRequestsIsolater = self->_pendingRequestsIsolater;
  v6 = identifierCopy;
  geo_isolate_sync();
  [v8[5] cancel];

  _Block_object_dispose(&v7, 8);
}

uint64_t __68__MNDirectionsRequestManager_cancelDirectionsRequestWithIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 8);

  return [v6 removeObjectForKey:v5];
}

- (void)requestDirections:(id)directions withIdentifier:(id)identifier auditToken:(id)token finishedHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  directionsCopy = directions;
  identifierCopy = identifier;
  tokenCopy = token;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v14 = MNGetMNDirectionsRequestLog();
    v15 = os_signpost_id_generate(v14);
    v16 = v14;
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "RequestDirections", "", buf, 2u);
    }

    tracePath = [directionsCopy tracePath];

    if (tracePath)
    {
      tracePath2 = [directionsCopy tracePath];
      directionsRequestFeedback = [directionsCopy directionsRequestFeedback];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __90__MNDirectionsRequestManager_requestDirections_withIdentifier_auditToken_finishedHandler___block_invoke;
      v30[3] = &unk_1E842B858;
      v21 = &v31;
      v31 = v17;
      v32[1] = v15;
      v22 = v32;
      v32[0] = handlerCopy;
      v23 = v17;
      [(MNDirectionsRequestManager *)self _requestDirectionsFromTraceWithPath:tracePath2 feedback:directionsRequestFeedback auditToken:tokenCopy finishedHandler:v30];
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __90__MNDirectionsRequestManager_requestDirections_withIdentifier_auditToken_finishedHandler___block_invoke_25;
      v27[3] = &unk_1E842B858;
      v21 = &v28;
      v28 = v17;
      v29[1] = v15;
      v22 = v29;
      v29[0] = handlerCopy;
      v25 = v17;
      [(MNDirectionsRequestManager *)self _requestServerDirections:directionsCopy preferredRoute:0 withIdentifier:identifierCopy auditToken:tokenCopy finishedHandler:v27];
    }

    v24 = *v21;
  }

  else
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"finishedHandler must be passed to requestDirections otherwise response will be unavailable."];
    v24 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v34 = "[MNDirectionsRequestManager requestDirections:withIdentifier:auditToken:finishedHandler:]";
      v35 = 2080;
      v36 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNDirectionsRequestManager.m";
      v37 = 1024;
      v38 = 64;
      v39 = 2080;
      v40 = "NO";
      v41 = 2112;
      v42 = v17;
      _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __90__MNDirectionsRequestManager_requestDirections_withIdentifier_auditToken_finishedHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v5, OS_SIGNPOST_INTERVAL_END, v6, "RequestDirections", "", v8, 2u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void __90__MNDirectionsRequestManager_requestDirections_withIdentifier_auditToken_finishedHandler___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v5, OS_SIGNPOST_INTERVAL_END, v6, "RequestDirections", "", v8, 2u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (MNDirectionsRequestManager)init
{
  v10.receiver = self;
  v10.super_class = MNDirectionsRequestManager;
  v2 = [(MNDirectionsRequestManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A1D18]);
    directionsService = v2->_directionsService;
    v2->_directionsService = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingRequests = v2->_pendingRequests;
    v2->_pendingRequests = v5;

    v7 = geo_isolater_create();
    pendingRequestsIsolater = v2->_pendingRequestsIsolater;
    v2->_pendingRequestsIsolater = v7;
  }

  return v2;
}

@end