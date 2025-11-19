@interface MNDirectionsRequestManager
- (MNDirectionsRequestManager)init;
- (void)_logRoutes:(id)a3 error:(id)a4;
- (void)_requestDirectionsFromTraceWithPath:(id)a3 feedback:(id)a4 auditToken:(id)a5 finishedHandler:(id)a6;
- (void)_requestServerDirections:(id)a3 preferredRoute:(id)a4 withIdentifier:(id)a5 auditToken:(id)a6 finishedHandler:(id)a7;
- (void)cancelDirectionsRequestWithIdentifier:(id)a3;
- (void)requestDirections:(id)a3 withIdentifier:(id)a4 auditToken:(id)a5 finishedHandler:(id)a6;
@end

@implementation MNDirectionsRequestManager

- (void)_logRoutes:(id)a3 error:(id)a4
{
  *&v24[5] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [v5 firstObject];
    BOOL = GEOConfigGetBOOL();
    v9 = MNGetMNRouteLoggingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 route];
      v11 = v10;
      if (BOOL)
      {
        [v10 debugDescription];
      }

      else
      {
        [v10 description];
      }
      v12 = ;
      *buf = 138412290;
      *v24 = v12;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "Route 0: %@\n", buf, 0xCu);
    }

    v13 = GEOConfigGetBOOL();
    if ([v5 count] >= 2)
    {
      v21 = v7;
      v22 = v6;
      v14 = 1;
      do
      {
        v15 = [v5 objectAtIndexedSubscript:{v14, v21, v22}];
        v16 = MNGetMNRouteLoggingLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v15 route];
          v18 = v17;
          if (v13)
          {
            [v17 debugDescription];
          }

          else
          {
            [v17 description];
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

      while (v14 < [v5 count]);
      v7 = v21;
      v6 = v22;
    }
  }

  else
  {
    v7 = MNGetMNRouteLoggingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v24 = v6;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "Error loading routes: %@", buf, 0xCu);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_requestDirectionsFromTraceWithPath:(id)a3 feedback:(id)a4 auditToken:(id)a5 finishedHandler:(id)a6
{
  v77 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
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
  v16 = [(MNTraceLoader *)v14 loadTraceWithPath:v10 outError:&v64];
  v17 = v64;
  if (v17)
  {
    v18 = v17;
    [(MNDirectionsResponseInfo *)v15 setError:v17];
    v13[2](v13, v15);
  }

  else
  {
    v54 = self;
    v55 = v14;
    v57 = v16;
    v58 = v11;
    v56 = v10;
    v19 = [v16 directions];
    v20 = [v19 firstObject];

    v21 = [v20 request];
    v22 = [v21 copy];

    v23 = [v20 response];
    v24 = [v22 routeAttributes];
    Integer = GEOConfigGetInteger();
    v60 = v22;
    v61 = v12;
    v59 = v24;
    if (Integer)
    {
      v26 = Integer;
      v52 = v23;
      v27 = [MNDirectionsRequestDetails alloc];
      v28 = [v20 waypoints];
      v29 = MEMORY[0x1E69A2500];
      v30 = [v22 routeAttributes];
      v31 = [v29 defaultRouteAttributesForTransportType:{objc_msgSend(v30, "mainTransportType")}];
      v32 = [(MNDirectionsRequestDetails *)v27 initWithWaypoints:v28 routeAttributes:v31];

      if ([v22 mainTransportTypeMaxRouteCount])
      {
        v33 = [v22 mainTransportTypeMaxRouteCount];
      }

      else
      {
        v33 = 3;
      }

      v12 = v61;
      v14 = v55;
      [(MNDirectionsRequestDetails *)v32 setMaxRouteCount:v33, v52];
      v41 = objc_opt_new();
      [(MNDirectionsRequestDetails *)v32 setDirectionsRequestFeedback:v41];

      v42 = [(MNDirectionsRequestDetails *)v32 directionsRequestFeedback];
      [v42 setPurpose:1];

      v10 = v56;
      if (v26 == 2)
      {
        v43 = objc_alloc(MEMORY[0x1E69A2538]);
        v44 = [v20 waypoints];
        v45 = [v43 initWithWaypoints:v44 routeAttributes:v59 directionsResponse:v53 directionsRequest:v60];

        v46 = [v45 allRouteInfos];
        v47 = [v20 selectedRouteIndex];
        if (v47 >= [v46 count])
        {
          v36 = 0;
        }

        else
        {
          v48 = [v46 objectAtIndexedSubscript:{objc_msgSend(v20, "selectedRouteIndex")}];
          v36 = [v48 route];
        }

        v12 = v61;
      }

      else
      {
        v36 = 0;
      }

      v49 = [MEMORY[0x1E696AFB0] UUID];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __102__MNDirectionsRequestManager__requestDirectionsFromTraceWithPath_feedback_auditToken_finishedHandler___block_invoke;
      v62[3] = &unk_1E842B8B0;
      v63 = v13;
      [(MNDirectionsRequestManager *)v54 _requestServerDirections:v32 preferredRoute:v36 withIdentifier:v49 auditToken:v12 finishedHandler:v62];

      v18 = 0;
      v23 = v53;
    }

    else
    {
      v34 = objc_alloc(MEMORY[0x1E69A2538]);
      v35 = [v20 waypoints];
      v32 = [v34 initWithWaypoints:v35 routeAttributes:v24 directionsResponse:v23 directionsRequest:v22];

      v36 = [(MNDirectionsRequestDetails *)v32 allRouteInfos];
      [(MNDirectionsRequestManager *)v54 _logRoutes:v36 error:0];
      v18 = 0;
      v14 = v55;
      v10 = v56;
      if (![v36 count])
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
        v66[1] = v23;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
        v18 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:5 userInfo:v39];
      }

      [(MNDirectionsResponseInfo *)v15 setRouteInfos:v36];
      v40 = [v20 request];
      [(MNDirectionsResponseInfo *)v15 setRequest:v40];

      [(MNDirectionsResponseInfo *)v15 setResponse:v23];
      [(MNDirectionsResponseInfo *)v15 setError:v18];
      v13[2](v13, v15);
      v12 = v61;
    }

    v16 = v57;
    v11 = v58;
  }

  v50 = *MEMORY[0x1E69E9840];
}

void __102__MNDirectionsRequestManager__requestDirectionsFromTraceWithPath_feedback_auditToken_finishedHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTraceRecordingData:0];
  (*(*(a1 + 32) + 16))();
}

- (void)_requestServerDirections:(id)a3 preferredRoute:(id)a4 withIdentifier:(id)a5 auditToken:(id)a6 finishedHandler:(id)a7
{
  v86 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v59 = a5;
  v58 = a6;
  v14 = a7;
  if (!v14)
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
  v15 = [v12 waypoints];
  v16 = [(MNRouteAttributes *)v15 countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (v16)
  {
    v17 = *v71;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v71 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [*(*(&v70 + 1) + 8 * i) latLng];
        IsNilOrZero = _navigation_GEOLatLngIsNilOrZero(v19);

        if (IsNilOrZero)
        {
          v80[0] = @"MNDirectionsRequestDetails";
          v26 = v12;
          if (!v12)
          {
            v26 = [MEMORY[0x1E695DFB0] null];
          }

          v80[1] = *MEMORY[0x1E696A588];
          v81[0] = v26;
          v81[1] = @"Waypoint in request is nil or invalid";
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:2];
          if (!v12)
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
          v14[2](v14, *(*&v83[8] + 40));
          goto LABEL_33;
        }
      }

      v16 = [(MNRouteAttributes *)v15 countByEnumeratingWithState:&v70 objects:v82 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v12 routeAttributes];
  v21 = [v12 routeAttributes];
  v22 = [v21 mainTransportType];

  if ((v22 - 1) >= 3)
  {
    if (v22)
    {
      v78 = @"MNDirectionsRequestDetails";
      v79 = v12;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      v28 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:4 userInfo:v27];
      [*(*&v83[8] + 40) setError:v28];
      v14[2](v14, *(*&v83[8] + 40));
      goto LABEL_33;
    }

    v30 = [MNRouteAttributes alloc];
    v31 = [v12 waypoints];
    v23 = [(MNRouteAttributes *)v30 initWithAttributes:v15 waypoints:v31];

    if (GEOConfigGetBOOL())
    {
      [(MNRouteAttributes *)v23 addInitialPromptType:1];
    }
  }

  else
  {
    v23 = v15;
  }

  v24 = objc_alloc_init(MEMORY[0x1E69A1D30]);
  global_queue = geo_get_global_queue();
  [v24 setCallbackQueue:global_queue];

  if (v13)
  {
    [v24 setRequestType:15];
    [v24 setCurrentRoute:v13];
  }

  else
  {
    v32 = [v12 resumeRouteHandle];
    if (v32 && (v33 = [v12 isResumingMultipointRoute], v32, (v33 & 1) != 0))
    {
      [v24 setRequestType:12];
      v34 = [v12 resumeRouteHandle];
      [v24 setHasVisitedFirstStop:{objc_msgSend(v34, "hasVisitedFirstStop")}];
    }

    else
    {
      [v24 setRequestType:{1, v58}];
    }

    v35 = [v12 waypoints];
    [v24 setWaypoints:v35];
  }

  v36 = [MNFamiliarRouteProvider alloc];
  v37 = [v12 routeAttributes];
  v38 = [v37 anyDate];
  v39 = [(MNFamiliarRouteProvider *)v36 initWithPurpose:0 reason:@"Route Planning" date:v38];
  [v24 setFamiliarRouteProvider:v39];

  v40 = [v12 resumeRouteHandle];
  [v24 setResumeRouteHandle:v40];

  [v24 setTransportType:v22];
  [v24 setRouteAttributes:v23];
  v41 = [v12 traits];
  [v24 setTraits:v41];

  v42 = [v12 commonOptions];
  [v24 setCommonOptions:v42];

  [v24 setMaxRouteCount:{objc_msgSend(v12, "maxRouteCount")}];
  v43 = [v12 currentUserLocation];
  [v24 setCurrentLocation:v43];

  v44 = [v12 currentMapRegion];
  [v24 setVisibleRegion:v44];

  v45 = [v12 directionsRequestFeedback];
  [v24 setFeedback:v45];

  [v24 setAuditToken:v58];
  v46 = GEOConfigGetDate();
  [v24 setDodgeballOutsideOfMapsPredictedExitDate:v46];

  v47 = GEOConfigGetDate();
  [v24 setDodgeballOutsideOfMapsPredictedEntryDate:v47];

  v48 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    v49 = off_1E842B8D0[v22];
    *buf = 138412547;
    v75 = v59;
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
  v53 = v59;
  v63 = v53;
  v64 = self;
  v65 = v12;
  v69 = v51;
  v27 = v24;
  v66 = v27;
  v68 = v83;
  v67 = v14;
  v54 = [(GEODirectionsService *)directionsService requestDirections:v27 handler:v62];
  pendingRequestsIsolater = self->_pendingRequestsIsolater;
  v60 = v53;
  v61 = v54;
  geo_isolate_sync();

  v28 = v63;
  v15 = v23;
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

- (void)cancelDirectionsRequestWithIdentifier:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7336;
  v11 = __Block_byref_object_dispose__7337;
  v12 = 0;
  pendingRequestsIsolater = self->_pendingRequestsIsolater;
  v6 = v4;
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

- (void)requestDirections:(id)a3 withIdentifier:(id)a4 auditToken:(id)a5 finishedHandler:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
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

    v18 = [v10 tracePath];

    if (v18)
    {
      v19 = [v10 tracePath];
      v20 = [v10 directionsRequestFeedback];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __90__MNDirectionsRequestManager_requestDirections_withIdentifier_auditToken_finishedHandler___block_invoke;
      v30[3] = &unk_1E842B858;
      v21 = &v31;
      v31 = v17;
      v32[1] = v15;
      v22 = v32;
      v32[0] = v13;
      v23 = v17;
      [(MNDirectionsRequestManager *)self _requestDirectionsFromTraceWithPath:v19 feedback:v20 auditToken:v12 finishedHandler:v30];
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
      v29[0] = v13;
      v25 = v17;
      [(MNDirectionsRequestManager *)self _requestServerDirections:v10 preferredRoute:0 withIdentifier:v11 auditToken:v12 finishedHandler:v27];
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