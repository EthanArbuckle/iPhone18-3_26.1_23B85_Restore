@interface MNRouteEditor
+ (id)convertToNavigableRoute:(id)route finishedHandler:(id)handler;
+ (void)_addressForRoute:(id)route traits:(id)traits handler:(id)handler;
+ (void)_convertAnchorPointsToWaypoints:(id)waypoints routeEditorRequest:(id)request finishedHandler:(id)handler;
+ (void)_fetchWaypointsFromRouteGeometry:(id)geometry routeEditorRequest:(id)request finishedHandler:(id)handler;
+ (void)_handleWaypointStepFinishedWithOrigin:(id)origin destination:(id)destination address:(id)address error:(id)error finishedHandler:(id)handler;
+ (void)_requestFinalizedRouteWithWaypoints:(id)waypoints address:(id)address routeEditorRequest:(id)request finishedHandler:(id)handler;
+ (void)_waypointForAnchorPoint:(id)point traits:(id)traits clientAttributes:(id)attributes handler:(id)handler;
- (BOOL)_checkAnchorPointCount:(unint64_t)count action:(unint64_t)action finishedHandler:(id)handler;
- (MNRouteEditor)init;
- (MNRouteEditor)initWithTraceRecordingEnabled:(BOOL)enabled;
- (MNTraceRecorder)_traceRecorder;
- (id)requestRouteGeometry:(id)geometry finishedHandler:(id)handler;
- (void)_requestRouteGeometry:(id)geometry finishedHandler:(id)handler;
- (void)_validateAnchorPoints:(id)points finishedHandler:(id)handler;
- (void)_validateCountrySupportedForAnchorPoint:(id)point finishedHandler:(id)handler;
- (void)_validateRoadProximityForAnchorPoint:(id)point finishedHandler:(id)handler;
- (void)dealloc;
- (void)endSession;
- (void)validateAnchorPoint:(id)point handler:(id)handler;
@end

@implementation MNRouteEditor

- (void)_requestRouteGeometry:(id)geometry finishedHandler:(id)handler
{
  geometryCopy = geometry;
  handlerCopy = handler;
  routeAttributes = [geometryCopy routeAttributes];
  v8 = objc_opt_new();
  [v8 setCallbackQueue:MEMORY[0x1E69E96A0]];
  [v8 setRequestType:2];
  anchorPoints = [geometryCopy anchorPoints];
  [v8 setAnchorPoints:anchorPoints];

  [v8 setTransportType:{objc_msgSend(routeAttributes, "mainTransportType")}];
  [v8 setMaxRouteCount:1];
  [v8 setRouteAttributes:routeAttributes];
  currentRoute = [geometryCopy currentRoute];
  [v8 setCurrentRoute:currentRoute];

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy_;
  v18[4] = __Block_byref_object_dispose_;
  v19 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__MNRouteEditor__requestRouteGeometry_finishedHandler___block_invoke;
  v17[3] = &unk_1E8429FF8;
  v17[4] = v18;
  [v8 setRequestCallback:v17];
  mEMORY[0x1E69A1D18] = [MEMORY[0x1E69A1D18] sharedService];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__MNRouteEditor__requestRouteGeometry_finishedHandler___block_invoke_2;
  v14[3] = &unk_1E842A020;
  v16 = v18;
  v12 = handlerCopy;
  v15 = v12;
  v13 = [mEMORY[0x1E69A1D18] requestRoutes:v8 handler:v14];
  [geometryCopy setDirectionsServiceRequest:v13];

  _Block_object_dispose(v18, 8);
}

void __55__MNRouteEditor__requestRouteGeometry_finishedHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v11 = objc_opt_new();
  v10 = [v9 firstObject];

  [v11 setRoute:v10];
  [v11 setDirectionsRequest:*(*(*(a1 + 40) + 8) + 40)];
  [v11 setError:v8];

  [v11 setDirectionsError:v7];
  (*(*(a1 + 32) + 16))();
}

- (void)_validateAnchorPoints:(id)points finishedHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  handlerCopy = handler;
  v8 = dispatch_group_create();
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy_;
  v27[4] = __Block_byref_object_dispose_;
  v28 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [pointsCopy newAnchorPoints];
  v9 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  v15 = handlerCopy;
  if (v9)
  {
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        dispatch_group_enter(v8);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __55__MNRouteEditor__validateAnchorPoints_finishedHandler___block_invoke;
        v20[3] = &unk_1E8429FA8;
        v22 = v27;
        v21 = v8;
        [(MNRouteEditor *)self validateAnchorPoint:v12 handler:v20];
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v9);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__MNRouteEditor__validateAnchorPoints_finishedHandler___block_invoke_2;
  block[3] = &unk_1E8429FD0;
  v19 = v27;
  v18 = v15;
  v13 = v15;
  dispatch_group_notify(v8, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v27, 8);
  v14 = *MEMORY[0x1E69E9840];
}

void __55__MNRouteEditor__validateAnchorPoints_finishedHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 40) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  if (v7)
  {
    a2 = v6;
  }

  objc_storeStrong(v5, a2);
  v8 = v2;
  dispatch_group_leave(*(a1 + 32));
}

void __55__MNRouteEditor__validateAnchorPoints_finishedHandler___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setError:*(*(*(a1 + 40) + 8) + 40)];
  (*(*(a1 + 32) + 16))(*(a1 + 32), v2, *(*(*(a1 + 40) + 8) + 40) == 0);
}

- (BOOL)_checkAnchorPointCount:(unint64_t)count action:(unint64_t)action finishedHandler:(id)handler
{
  handlerCopy = handler;
  UInteger = GEOConfigGetUInteger();
  v9 = 2 * UInteger - 1;
  if (action != 102)
  {
    v9 = UInteger;
  }

  if (action == 103)
  {
    v10 = UInteger + 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10 < count)
  {
    v11 = [objc_alloc(MEMORY[0x1E69A1CF0]) initWithSingleProblemType:21];
    v12 = [MEMORY[0x1E696ABC0] _geo_errorWithDirectionsError:v11];
    handlerCopy[2](handlerCopy, 0, v12, v11);
  }

  return v10 >= count;
}

- (id)requestRouteGeometry:(id)geometry finishedHandler:(id)handler
{
  v52 = *MEMORY[0x1E69E9840];
  geometryCopy = geometry;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: finishedHandler != ((void*)0)", buf, 2u);
    }

    goto LABEL_18;
  }

  v8 = MNGetMNRouteEditorLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    anchorPoints = [geometryCopy anchorPoints];
    *buf = 67109120;
    v51 = [anchorPoints count];
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "Requesting route geometry with %d anchor points.", buf, 8u);
  }

  anchorPoints2 = [geometryCopy anchorPoints];
  v11 = [anchorPoints2 count];

  if (v11 > 1)
  {
    if (([geometryCopy action] == 1001 || objc_msgSend(geometryCopy, "action") == 1002) && (objc_msgSend(geometryCopy, "undoRedoRouteData"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
    {
      v14 = 1;
    }

    else
    {
      anchorPoints3 = [geometryCopy anchorPoints];
      v16 = -[MNRouteEditor _checkAnchorPointCount:action:finishedHandler:](self, "_checkAnchorPointCount:action:finishedHandler:", [anchorPoints3 count], objc_msgSend(geometryCopy, "action"), handlerCopy);

      if (!v16)
      {
        goto LABEL_18;
      }

      v14 = 0;
    }

    v17 = objc_opt_new();
    _traceRecorder = [(MNRouteEditor *)self _traceRecorder];
    v19 = [MEMORY[0x1E695DF00] now];
    v20 = [MNSequence alloc];
    global_queue = geo_get_global_queue();
    v22 = [(MNSequence *)v20 initWithQueue:global_queue];

    if (v14)
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __54__MNRouteEditor_requestRouteGeometry_finishedHandler___block_invoke;
      v47[3] = &unk_1E8429E68;
      v23 = &v48;
      v48 = v17;
      v49 = geometryCopy;
      [(MNSequence *)v22 addStep:v47];
      v24 = v49;
    }

    else
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __54__MNRouteEditor_requestRouteGeometry_finishedHandler___block_invoke_2;
      v44[3] = &unk_1E8429F30;
      v23 = v45;
      v25 = v17;
      v45[0] = v25;
      v45[1] = self;
      v26 = geometryCopy;
      v46 = v26;
      [(MNSequence *)v22 addStep:v44];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __54__MNRouteEditor_requestRouteGeometry_finishedHandler___block_invoke_3;
      v40[3] = &unk_1E8429F58;
      v41 = v25;
      selfCopy = self;
      v43 = v26;
      [(MNSequence *)v22 addStep:v40];

      v24 = v46;
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __54__MNRouteEditor_requestRouteGeometry_finishedHandler___block_invoke_4;
    v34[3] = &unk_1E8429F80;
    v27 = v17;
    v35 = v27;
    v36 = _traceRecorder;
    v37 = geometryCopy;
    v38 = v19;
    v39 = handlerCopy;
    v28 = v19;
    v29 = _traceRecorder;
    [(MNSequence *)v22 setSequenceFinalizeHandler:v34];
    [(MNSequence *)v22 start];
    v30 = v39;
    v31 = v27;

    goto LABEL_19;
  }

  v12 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:2 debugDescription:@"MNRouteEditorRequest needs at least two anchor points." underlyingError:0];
  (*(handlerCopy + 2))(handlerCopy, 0, v12, 0);

LABEL_18:
  v31 = 0;
LABEL_19:

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

void __54__MNRouteEditor_requestRouteGeometry_finishedHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v4 = objc_opt_new();
    v5 = objc_alloc(MEMORY[0x1E69A2510]);
    v6 = [*(a1 + 40) undoRedoRouteData];
    v7 = [v5 initWithPersistentData:v6];

    v8 = [v7 buildRoute];
    [v4 setRoute:v8];

    v9[2](v9, v4, 1);
  }
}

void __54__MNRouteEditor_requestRouteGeometry_finishedHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    [*(a1 + 40) _validateAnchorPoints:*(a1 + 48) finishedHandler:v4];
  }
}

void __54__MNRouteEditor_requestRouteGeometry_finishedHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    [*(a1 + 40) _requestRouteGeometry:*(a1 + 48) finishedHandler:v4];
  }
}

void __54__MNRouteEditor_requestRouteGeometry_finishedHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v4 = [v3 route];
    v5 = [v3 error];
    v6 = [v3 directionsError];
    v7 = MNGetMNRouteEditorLog();
    v8 = v7;
    if (!v4 || v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = v5;
        v37 = 2112;
        v38 = v6;
        v9 = "Error getting route with anchors: %@\nDirections error: %@";
        v10 = v8;
        v11 = OS_LOG_TYPE_ERROR;
        v12 = 22;
        goto LABEL_8;
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Successfully got route with anchors.";
      v10 = v8;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 2;
LABEL_8:
      _os_log_impl(&dword_1D311E000, v10, v11, v9, buf, v12);
    }

    v26 = *(a1 + 40);
    v13 = [*(a1 + 48) action];
    v14 = [v3 directionsRequest];
    v15 = [v4 routeInitializerData];
    v16 = [v15 directionsResponse];
    [*(a1 + 48) anchorPoints];
    v17 = v28 = v6;
    [v17 anchorPoints];
    v18 = v29 = v3;
    v27 = v4;
    v19 = *(a1 + 56);
    v20 = [MEMORY[0x1E695DF00] now];
    [v26 recordRouteCreationAction:v13 request:v14 response:v16 error:v5 anchorPoints:v18 requestDate:v19 responseDate:v20];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__MNRouteEditor_requestRouteGeometry_finishedHandler___block_invoke_127;
    block[3] = &unk_1E842FF40;
    v21 = *(a1 + 64);
    v31 = v27;
    v32 = v5;
    v33 = v28;
    v34 = v21;
    v22 = v28;
    v23 = v5;
    v24 = v27;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v3 = v29;
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_validateRoadProximityForAnchorPoint:(id)point finishedHandler:(id)handler
{
  pointCopy = point;
  handlerCopy = handler;
  [pointCopy coordinate];
  v9 = v8;
  v11 = v10;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  mapFeatureAccess = self->_mapFeatureAccess;
  maxDistanceFromRoads = self->_maxDistanceFromRoads;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__MNRouteEditor__validateRoadProximityForAnchorPoint_finishedHandler___block_invoke;
  v21[3] = &unk_1E8429EE0;
  v21[4] = v22;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__MNRouteEditor__validateRoadProximityForAnchorPoint_finishedHandler___block_invoke_2;
  v17[3] = &unk_1E8429F08;
  v20 = v22;
  v14 = pointCopy;
  v18 = v14;
  v15 = handlerCopy;
  v19 = v15;
  maxDistanceFromRoads = [(GEOMapFeatureAccess *)mapFeatureAccess findRoadsNear:v21 radius:v17 handler:v9 completionHandler:v11, maxDistanceFromRoads];

  _Block_object_dispose(v22, 8);
}

void __70__MNRouteEditor__validateRoadProximityForAnchorPoint_finishedHandler___block_invoke_2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  if (!*(*(a1[6] + 8) + 24))
  {
    v3 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:8 debugDescription:@"Too far from roads."];
    [v2 setError:v3];

    v4 = MNGetMNRouteEditorLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "No nearby road found for anchor point: %@", &v7, 0xCu);
    }
  }

  [v2 error];

  (*(a1[5] + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_validateCountrySupportedForAnchorPoint:(id)point finishedHandler:(id)handler
{
  handlerCopy = handler;
  v6 = MEMORY[0x1E69A1E70];
  pointCopy = point;
  v8 = [v6 alloc];
  [pointCopy locationCoordinate];
  v10 = v9;
  v12 = v11;

  v13 = [v8 initWithGEOCoordinate:{v10, v12}];
  v14 = MEMORY[0x1E69A1D18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__MNRouteEditor__validateCountrySupportedForAnchorPoint_finishedHandler___block_invoke;
  v16[3] = &unk_1E8429EB8;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [v14 customRouteCreationSupportedForLocation:v13 queue:MEMORY[0x1E69E96A0] handler:v16];
}

void __73__MNRouteEditor__validateCountrySupportedForAnchorPoint_finishedHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  if ((a2 & 1) == 0)
  {
    v7 = MEMORY[0x1E696ABC0];
    v12 = @"MNRouteEditorErrorUnsupportedCountriesKey";
    v8 = v5;
    if (!v5)
    {
      v8 = [MEMORY[0x1E695DFD8] set];
    }

    v13[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v7 _navigation_errorWithCode:9 userInfo:v9];
    [v6 setError:v10];

    if (!v5)
    {
    }
  }

  [v6 error];

  (*(*(a1 + 32) + 16))();
  v11 = *MEMORY[0x1E69E9840];
}

- (void)validateAnchorPoint:(id)point handler:(id)handler
{
  pointCopy = point;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = [MNSequence alloc];
    global_queue = geo_get_global_queue();
    v10 = [(MNSequence *)v8 initWithQueue:global_queue];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __45__MNRouteEditor_validateAnchorPoint_handler___block_invoke;
    v16[3] = &unk_1E8429E68;
    v16[4] = self;
    v11 = pointCopy;
    v17 = v11;
    [(MNSequence *)v10 addStep:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45__MNRouteEditor_validateAnchorPoint_handler___block_invoke_2;
    v14[3] = &unk_1E8429E68;
    v14[4] = self;
    v15 = v11;
    [(MNSequence *)v10 addStep:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__MNRouteEditor_validateAnchorPoint_handler___block_invoke_3;
    v12[3] = &unk_1E8429E90;
    v13 = handlerCopy;
    [(MNSequence *)v10 setSequenceFinalizeHandler:v12];
    [(MNSequence *)v10 start];
  }
}

void __45__MNRouteEditor_validateAnchorPoint_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__MNRouteEditor_validateAnchorPoint_handler___block_invoke_4;
  v6[3] = &unk_1E842F580;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __45__MNRouteEditor_validateAnchorPoint_handler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (MNTraceRecorder)_traceRecorder
{
  if (self->_isTraceRecordingEnabled)
  {
    traceRecorder = self->_traceRecorder;
    if (traceRecorder)
    {
      v4 = traceRecorder;
    }

    else
    {
      v5 = objc_opt_new();
      v6 = self->_traceRecorder;
      self->_traceRecorder = v5;

      [(MNTraceRecorder *)self->_traceRecorder setRecordingStartDate:self->_sessionStartDate];
      v7 = objc_opt_new();
      [v7 setDateFormat:@"yyyy-MM-dd-HHmmss"];
      localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
      [v7 setTimeZone:localTimeZone];

      recordingStartDate = [(MNTraceRecorder *)self->_traceRecorder recordingStartDate];
      v10 = [v7 stringFromDate:recordingStartDate];

      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RouteCreation_%@", v10];
      v12 = +[MNFilePaths customRouteCreationTraceExtension];
      v13 = +[MNFilePaths routeCreationTracesDirectoryPath];
      v14 = [MNFilePaths tracePathForTraceName:v11 extension:v12 directoryPath:v13];

      [(MNTraceRecorder *)self->_traceRecorder startWritingTraceToPath:v14 traceType:2 withErrorHandler:0];
      v4 = self->_traceRecorder;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)endSession
{
  [(MNTraceRecorder *)self->_traceRecorder saveTraceWithCompletionHandler:0];
  traceRecorder = self->_traceRecorder;
  self->_traceRecorder = 0;
}

- (void)dealloc
{
  [(MNRouteEditor *)self endSession];
  v3.receiver = self;
  v3.super_class = MNRouteEditor;
  [(MNRouteEditor *)&v3 dealloc];
}

- (MNRouteEditor)initWithTraceRecordingEnabled:(BOOL)enabled
{
  v4 = [(MNRouteEditor *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_isTraceRecordingEnabled = enabled;
    v6 = [MEMORY[0x1E695DF00] now];
    sessionStartDate = v5->_sessionStartDate;
    v5->_sessionStartDate = v6;

    v8 = v5;
  }

  return v5;
}

- (MNRouteEditor)init
{
  v10.receiver = self;
  v10.super_class = MNRouteEditor;
  v2 = [(MNRouteEditor *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69A2198]);
    global_queue = geo_get_global_queue();
    v5 = [v3 initWithQueue:global_queue];
    mapFeatureAccess = v2->_mapFeatureAccess;
    v2->_mapFeatureAccess = v5;

    [(GEOMapFeatureAccess *)v2->_mapFeatureAccess setAllowNetworkTileLoad:1];
    [(GEOMapFeatureAccess *)v2->_mapFeatureAccess setVisitDoubleTravelDirectionRoadsTwice:0];
    [(GEOMapFeatureAccess *)v2->_mapFeatureAccess setAllowStaleData:1];
    GEOConfigGetDouble();
    v2->_maxDistanceFromRoads = v7;
    v8 = v2;
  }

  return v2;
}

+ (void)_requestFinalizedRouteWithWaypoints:(id)waypoints address:(id)address routeEditorRequest:(id)request finishedHandler:(id)handler
{
  waypointsCopy = waypoints;
  addressCopy = address;
  requestCopy = request;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v24 = MEMORY[0x1E69E9C10];
    v25 = "Assertion failed: finishedHandler != nil";
LABEL_16:
    _os_log_fault_impl(&dword_1D311E000, v24, OS_LOG_TYPE_FAULT, v25, buf, 2u);
    goto LABEL_17;
  }

  v13 = handlerCopy;
  if ([waypointsCopy count] != 2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v24 = MEMORY[0x1E69E9C10];
    v25 = "Assertion failed: waypoints.count == 2";
    goto LABEL_16;
  }

  currentRoute = [requestCopy currentRoute];
  routeAttributes = [requestCopy routeAttributes];
  if (!currentRoute)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v24 = MEMORY[0x1E69E9C10];
    v25 = "Assertion failed: routeGeometry != nil";
    goto LABEL_16;
  }

  v16 = routeAttributes;
  if (!routeAttributes)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v24 = MEMORY[0x1E69E9C10];
      v25 = "Assertion failed: routeAttributes != nil";
      goto LABEL_16;
    }

LABEL_17:
    __break(1u);
    return;
  }

  v17 = objc_alloc_init(MEMORY[0x1E69A1D30]);
  [v17 setCallbackQueue:MEMORY[0x1E69E96A0]];
  [v17 setRequestType:3];
  [v17 setWaypoints:waypointsCopy];
  [v17 setTransportType:{objc_msgSend(currentRoute, "transportType")}];
  [v17 setMaxRouteCount:1];
  [v17 setRouteAttributes:v16];
  commonOptions = [requestCopy commonOptions];
  [v17 setCommonOptions:commonOptions];

  [v17 setCurrentRoute:currentRoute];
  traits = [requestCopy traits];
  [v17 setTraits:traits];

  v20 = MNGetMNRouteEditorLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_DEFAULT, "convertToNavigableRoute: Getting finalized route.", buf, 2u);
  }

  mEMORY[0x1E69A1D18] = [MEMORY[0x1E69A1D18] sharedService];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __96__MNRouteEditor__requestFinalizedRouteWithWaypoints_address_routeEditorRequest_finishedHandler___block_invoke;
  v26[3] = &unk_1E842EF50;
  v27 = v13;
  v22 = v13;
  v23 = [mEMORY[0x1E69A1D18] requestRoutes:v17 handler:v26];
}

void __96__MNRouteEditor__requestFinalizedRouteWithWaypoints_address_routeEditorRequest_finishedHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [a2 firstObject];
  v10 = objc_opt_new();
  if (!v9)
  {
    if (!v7)
    {
      v7 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:2 debugDescription:@"MNRouteEditorRequest got an unknown error when trying to convert to navigable route." underlyingError:0];
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_8;
  }

  v11 = MNGetMNRouteEditorLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "convertToNavigableRoute: Successfuly got route.", &v14, 2u);
  }

  [v10 setFinalizedRoute:v9];
  if (v7)
  {
LABEL_8:
    v12 = MNGetMNRouteEditorLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "convertToNavigableRoute: Error getting finalized route: %@", &v14, 0xCu);
    }

    [v10 setStepError:v7];
  }

LABEL_11:
  [v10 setDirectionsError:v8];
  (*(*(a1 + 32) + 16))();

  v13 = *MEMORY[0x1E69E9840];
}

+ (void)_handleWaypointStepFinishedWithOrigin:(id)origin destination:(id)destination address:(id)address error:(id)error finishedHandler:(id)handler
{
  v25[2] = *MEMORY[0x1E69E9840];
  originCopy = origin;
  destinationCopy = destination;
  addressCopy = address;
  errorCopy = error;
  handlerCopy = handler;
  v16 = objc_opt_new();
  v17 = MNGetMNRouteEditorLog();
  v18 = v17;
  if (originCopy && destinationCopy)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_DEFAULT, "convertToNavigableRoute: Successfully got waypoints.", &v23, 2u);
    }

    v25[0] = originCopy;
    v25[1] = destinationCopy;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    [v16 setWaypoints:v19];

    if (addressCopy)
    {
      v20 = MNGetMNRouteEditorLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_DEFAULT, "convertToNavigableRoute: Successfully got address.", &v23, 2u);
      }

      [v16 setAddress:addressCopy];
    }
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v23 = 138412290;
      v24 = errorCopy;
      _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_ERROR, "convertToNavigableRoute: Error getting origin or destination: %@", &v23, 0xCu);
    }

    if (!errorCopy)
    {
      v21 = MNGetMNRouteEditorLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_FAULT, "Unable to resolve waypoints and no error was found.", &v23, 2u);
      }

      errorCopy = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:3];
    }

    [v16 setStepError:errorCopy];
  }

  handlerCopy[2](handlerCopy, v16, 1);

  v22 = *MEMORY[0x1E69E9840];
}

+ (void)_convertAnchorPointsToWaypoints:(id)waypoints routeEditorRequest:(id)request finishedHandler:(id)handler
{
  waypointsCopy = waypoints;
  requestCopy = request;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v11 = handlerCopy;
    if ([waypointsCopy count] > 1)
    {
      v12 = dispatch_group_create();
      *buf = 0;
      v57 = buf;
      v58 = 0x3032000000;
      v59 = __Block_byref_object_copy_;
      v60 = __Block_byref_object_dispose_;
      v61 = 0;
      v54[0] = 0;
      v54[1] = v54;
      v54[2] = 0x3032000000;
      v54[3] = __Block_byref_object_copy_;
      v54[4] = __Block_byref_object_dispose_;
      v55 = 0;
      v52[0] = 0;
      v52[1] = v52;
      v52[2] = 0x3032000000;
      v52[3] = __Block_byref_object_copy_;
      v52[4] = __Block_byref_object_dispose_;
      v53 = 0;
      v50[0] = 0;
      v50[1] = v50;
      v50[2] = 0x3032000000;
      v50[3] = __Block_byref_object_copy_;
      v50[4] = __Block_byref_object_dispose_;
      v51 = 0;
      dispatch_group_enter(v12);
      firstObject = [waypointsCopy firstObject];
      traits = [requestCopy traits];
      clientAttributes = [requestCopy clientAttributes];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __84__MNRouteEditor__convertAnchorPointsToWaypoints_routeEditorRequest_finishedHandler___block_invoke;
      v45[3] = &unk_1E842A160;
      v48 = buf;
      v16 = waypointsCopy;
      v46 = v16;
      v49 = v50;
      v17 = v12;
      v47 = v17;
      [self _waypointForAnchorPoint:firstObject traits:traits clientAttributes:clientAttributes handler:v45];

      dispatch_group_enter(v17);
      lastObject = [v16 lastObject];
      traits2 = [requestCopy traits];
      clientAttributes2 = [requestCopy clientAttributes];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __84__MNRouteEditor__convertAnchorPointsToWaypoints_routeEditorRequest_finishedHandler___block_invoke_152;
      v40[3] = &unk_1E842A160;
      v43 = v54;
      v21 = v16;
      v41 = v21;
      v44 = v50;
      v22 = v17;
      v42 = v22;
      [self _waypointForAnchorPoint:lastObject traits:traits2 clientAttributes:clientAttributes2 handler:v40];

      dispatch_group_enter(v22);
      currentRoute = [requestCopy currentRoute];
      traits3 = [requestCopy traits];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __84__MNRouteEditor__convertAnchorPointsToWaypoints_routeEditorRequest_finishedHandler___block_invoke_153;
      v36[3] = &unk_1E842A188;
      v38 = v52;
      v39 = v50;
      v25 = v22;
      v37 = v25;
      [self _addressForRoute:currentRoute traits:traits3 handler:v36];

      global_queue = geo_get_global_queue();
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __84__MNRouteEditor__convertAnchorPointsToWaypoints_routeEditorRequest_finishedHandler___block_invoke_154;
      v30[3] = &unk_1E842A1B0;
      v33 = v54;
      v34 = v52;
      v35 = v50;
      v31 = v11;
      v32 = buf;
      v27 = v11;
      dispatch_group_notify(v25, global_queue, v30);

      _Block_object_dispose(v50, 8);
      _Block_object_dispose(v52, 8);

      _Block_object_dispose(v54, 8);
      _Block_object_dispose(buf, 8);

      return;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v28 = MEMORY[0x1E69E9C10];
      v29 = "Assertion failed: anchorPoints.count >= 2";
      goto LABEL_8;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "Assertion failed: finishedHandler != nil";
LABEL_8:
    _os_log_fault_impl(&dword_1D311E000, v28, OS_LOG_TYPE_FAULT, v29, buf, 2u);
  }

  __break(1u);
}

void __84__MNRouteEditor__convertAnchorPointsToWaypoints_routeEditorRequest_finishedHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = MNGetMNRouteEditorLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "convertToNavigableRoute: Got waypoint for origin.", &v17, 2u);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v9 = MNGetMNRouteEditorLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) firstObject];
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Error resolving origin for anchor point: %@\n%@", &v17, 0x16u);
    }
  }

  v11 = *(*(a1 + 56) + 8);
  v14 = *(v11 + 40);
  v12 = (v11 + 40);
  v13 = v14;
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = v7;
  }

  objc_storeStrong(v12, v15);
  dispatch_group_leave(*(a1 + 40));

  v16 = *MEMORY[0x1E69E9840];
}

void __84__MNRouteEditor__convertAnchorPointsToWaypoints_routeEditorRequest_finishedHandler___block_invoke_152(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = MNGetMNRouteEditorLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "convertToNavigableRoute: Got waypoint for destination.", &v17, 2u);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v9 = MNGetMNRouteEditorLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) lastObject];
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Error resolving destination for anchor point: %@\n%@", &v17, 0x16u);
    }
  }

  v11 = *(*(a1 + 56) + 8);
  v14 = *(v11 + 40);
  v12 = (v11 + 40);
  v13 = v14;
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = v7;
  }

  objc_storeStrong(v12, v15);
  dispatch_group_leave(*(a1 + 40));

  v16 = *MEMORY[0x1E69E9840];
}

void __84__MNRouteEditor__convertAnchorPointsToWaypoints_routeEditorRequest_finishedHandler___block_invoke_153(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = MNGetMNRouteEditorLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "convertToNavigableRoute: Got address.", &v17, 2u);
    }

    v9 = (*(*(a1 + 40) + 8) + 40);
    v10 = v5;
LABEL_10:
    v14 = v10;
    v15 = *v9;
    *v9 = v14;

    goto LABEL_11;
  }

  if (v6)
  {
    v11 = MNGetMNRouteEditorLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Error resolving address for anchor points: %@", &v17, 0xCu);
    }

    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    v9 = (v12 + 40);
    v10 = v13;
    if (!v13)
    {
      v10 = v7;
    }

    goto LABEL_10;
  }

LABEL_11:
  dispatch_group_leave(*(a1 + 32));

  v16 = *MEMORY[0x1E69E9840];
}

+ (void)_fetchWaypointsFromRouteGeometry:(id)geometry routeEditorRequest:(id)request finishedHandler:(id)handler
{
  geometryCopy = geometry;
  requestCopy = request;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v31 = handlerCopy;
    v11 = dispatch_group_create();
    *buf = 0;
    v59 = buf;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy_;
    v62 = __Block_byref_object_dispose_;
    v63 = 0;
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = __Block_byref_object_copy_;
    v56[4] = __Block_byref_object_dispose_;
    v57 = 0;
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x3032000000;
    v54[3] = __Block_byref_object_copy_;
    v54[4] = __Block_byref_object_dispose_;
    v55 = 0;
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x3032000000;
    v52[3] = __Block_byref_object_copy_;
    v52[4] = __Block_byref_object_dispose_;
    v53 = 0;
    dispatch_group_enter(v11);
    v12 = objc_alloc(MEMORY[0x1E69A1E70]);
    [geometryCopy pointAt:0];
    v13 = [v12 initWithGEOCoordinate:?];
    v14 = MEMORY[0x1E69A1CC8];
    traits = [requestCopy traits];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __85__MNRouteEditor__fetchWaypointsFromRouteGeometry_routeEditorRequest_finishedHandler___block_invoke;
    v47[3] = &unk_1E842A160;
    v50 = buf;
    v16 = v13;
    v48 = v16;
    v51 = v52;
    v17 = v11;
    v49 = v17;
    v18 = [v14 composedWaypointForLocation:v16 mapItem:0 traits:traits completionHandler:v47 networkActivityHandler:0];

    dispatch_group_enter(v17);
    v19 = objc_alloc(MEMORY[0x1E69A1E70]);
    [geometryCopy pointAt:{objc_msgSend(geometryCopy, "pointCount") - 1}];
    v20 = [v19 initWithGEOCoordinate:?];
    v21 = MEMORY[0x1E69A1CC8];
    traits2 = [requestCopy traits];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __85__MNRouteEditor__fetchWaypointsFromRouteGeometry_routeEditorRequest_finishedHandler___block_invoke_149;
    v42[3] = &unk_1E842A160;
    v45 = v56;
    v23 = v20;
    v43 = v23;
    v46 = v52;
    v24 = v17;
    v44 = v24;
    v25 = [v21 composedWaypointForLocation:v23 mapItem:0 traits:traits2 completionHandler:v42 networkActivityHandler:0];

    dispatch_group_enter(v24);
    currentRoute = [requestCopy currentRoute];
    traits3 = [requestCopy traits];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __85__MNRouteEditor__fetchWaypointsFromRouteGeometry_routeEditorRequest_finishedHandler___block_invoke_150;
    v38[3] = &unk_1E842A188;
    v40 = v54;
    v41 = v52;
    v28 = v24;
    v39 = v28;
    [self _addressForRoute:currentRoute traits:traits3 handler:v38];

    global_queue = geo_get_global_queue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__MNRouteEditor__fetchWaypointsFromRouteGeometry_routeEditorRequest_finishedHandler___block_invoke_151;
    block[3] = &unk_1E842A1B0;
    v35 = v56;
    v36 = v54;
    v37 = v52;
    v34 = buf;
    v33 = v31;
    v30 = v31;
    dispatch_group_notify(v28, global_queue, block);

    _Block_object_dispose(v52, 8);
    _Block_object_dispose(v54, 8);

    _Block_object_dispose(v56, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: finishedHandler != nil", buf, 2u);
    }

    __break(1u);
  }
}

void __85__MNRouteEditor__fetchWaypointsFromRouteGeometry_routeEditorRequest_finishedHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = MNGetMNRouteEditorLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "convertToNavigableRoute: Got waypoint for origin.", &v21, 2u);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v9 = MNGetMNRouteEditorLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) latLng];
      [v10 lat];
      v12 = v11;
      v13 = [*(a1 + 32) latLng];
      [v13 lng];
      v21 = 134284035;
      v22 = v12;
      v23 = 2049;
      v24 = v14;
      v25 = 2114;
      v26 = v7;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Error resolving origin for location: %{private}f, %{private}f\n%{public}@", &v21, 0x20u);
    }
  }

  v15 = *(*(a1 + 56) + 8);
  v18 = *(v15 + 40);
  v16 = (v15 + 40);
  v17 = v18;
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v7;
  }

  objc_storeStrong(v16, v19);
  dispatch_group_leave(*(a1 + 40));

  v20 = *MEMORY[0x1E69E9840];
}

void __85__MNRouteEditor__fetchWaypointsFromRouteGeometry_routeEditorRequest_finishedHandler___block_invoke_149(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = MNGetMNRouteEditorLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "convertToNavigableRoute: Got waypoint for destination.", &v21, 2u);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v9 = MNGetMNRouteEditorLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) latLng];
      [v10 lat];
      v12 = v11;
      v13 = [*(a1 + 32) latLng];
      [v13 lng];
      v21 = 134284035;
      v22 = v12;
      v23 = 2049;
      v24 = v14;
      v25 = 2114;
      v26 = v7;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Error resolving destination for location: %{private}f, %{private}f\n%{public}@", &v21, 0x20u);
    }
  }

  v15 = *(*(a1 + 56) + 8);
  v18 = *(v15 + 40);
  v16 = (v15 + 40);
  v17 = v18;
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v7;
  }

  objc_storeStrong(v16, v19);
  dispatch_group_leave(*(a1 + 40));

  v20 = *MEMORY[0x1E69E9840];
}

void __85__MNRouteEditor__fetchWaypointsFromRouteGeometry_routeEditorRequest_finishedHandler___block_invoke_150(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = MNGetMNRouteEditorLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "convertToNavigableRoute: Got address.", &v17, 2u);
    }

    v9 = (*(*(a1 + 40) + 8) + 40);
    v10 = v5;
LABEL_10:
    v14 = v10;
    v15 = *v9;
    *v9 = v14;

    goto LABEL_11;
  }

  if (v6)
  {
    v11 = MNGetMNRouteEditorLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Error resolving address for anchor points: %@", &v17, 0xCu);
    }

    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    v9 = (v12 + 40);
    v10 = v13;
    if (!v13)
    {
      v10 = v7;
    }

    goto LABEL_10;
  }

LABEL_11:
  dispatch_group_leave(*(a1 + 32));

  v16 = *MEMORY[0x1E69E9840];
}

+ (void)_addressForRoute:(id)route traits:(id)traits handler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  traitsCopy = traits;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: handler != nil", buf, 2u);
    }

    __break(1u);
  }

  v10 = handlerCopy;
  mEMORY[0x1E69A22E8] = [MEMORY[0x1E69A22E8] sharedNoCreate];
  if (!mEMORY[0x1E69A22E8])
  {
    goto LABEL_12;
  }

  v12 = mEMORY[0x1E69A22E8];
  mEMORY[0x1E69A22E8]2 = [MEMORY[0x1E69A22E8] sharedNoCreate];
  state = [mEMORY[0x1E69A22E8]2 state];
  if (state < 2)
  {
LABEL_11:

LABEL_12:
    [routeCopy distance];
    [routeCopy pointAtRouteCoordinate:{objc_msgSend(routeCopy, "routeCoordinateForDistanceAfterStart:", v17 * 0.5)}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
    v25 = [mEMORY[0x1E69A2208] ticketForReverseGeocodeCoordinate:0 shiftLocationsIfNeeded:traitsCopy traits:{v19, v21}];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __49__MNRouteEditor__addressForRoute_traits_handler___block_invoke;
    v27[3] = &unk_1E842A138;
    v29 = v19;
    v30 = v21;
    v31 = v19;
    v32 = v21;
    v33 = v23;
    v28 = v10;
    [v25 submitWithHandler:v27 networkActivity:0];

    goto LABEL_13;
  }

  if (state != 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v35 = state;
      _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Requesting route geometry with %d anchor points.", buf, 8u);
    }

    goto LABEL_11;
  }

  v15 = MNGetMNRouteEditorLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_DEFAULT, "Skipping address lookup.", buf, 2u);
  }

  v10[2](v10, 0, 0);
LABEL_13:

  v26 = *MEMORY[0x1E69E9840];
}

void __49__MNRouteEditor__addressForRoute_traits_handler___block_invoke(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = v6;
  if (v5 || !v6)
  {
    v8 = MNGetMNRouteEditorLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[5];
      v10 = a1[8];
      v14 = 134218498;
      v15 = v9;
      v16 = 2048;
      v17 = v10;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "Error resolving address for point: %f, %f\n%@", &v14, 0x20u);
    }
  }

  v11 = a1[4];
  v12 = [v7 addressObject];
  (*(v11 + 16))(v11, v12, v5);

  v13 = *MEMORY[0x1E69E9840];
}

+ (void)_waypointForAnchorPoint:(id)point traits:(id)traits clientAttributes:(id)attributes handler:(id)handler
{
  v51 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  traitsCopy = traits;
  attributesCopy = attributes;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    goto LABEL_24;
  }

  geoLocation = [pointCopy geoLocation];
  mapItemIdentifier = [pointCopy mapItemIdentifier];
  isValid = [mapItemIdentifier isValid];

  mEMORY[0x1E69A22E8] = [MEMORY[0x1E69A22E8] sharedNoCreate];
  if (mEMORY[0x1E69A22E8])
  {
    mapItemIdentifier2 = mEMORY[0x1E69A22E8];
    mEMORY[0x1E69A22E8]2 = [MEMORY[0x1E69A22E8] sharedNoCreate];
    state = [mEMORY[0x1E69A22E8]2 state];
    if (state >= 2)
    {
      if (state == 2)
      {

        mapItemIdentifier2 = [pointCopy mapItemIdentifier];
        isValid = [mapItemIdentifier2 isValidForOfflineUse];
LABEL_10:

        goto LABEL_11;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        LODWORD(v50) = state;
        _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Requesting route geometry with %d anchor points.", buf, 8u);
      }
    }

    goto LABEL_10;
  }

LABEL_11:
  if (([pointCopy isCoordinate] & 1) != 0 || !isValid)
  {
    isCurrentLocation = [pointCopy isCurrentLocation];
    v29 = MNGetMNRouteEditorLog();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (isCurrentLocation)
    {
      if (v30)
      {
        loggingDescription = [pointCopy loggingDescription];
        *buf = 138412290;
        v50 = loggingDescription;
        _os_log_impl(&dword_1D311E000, v29, OS_LOG_TYPE_DEFAULT, "Creating waypoint from current location for anchor point %@.", buf, 0xCu);
      }

      v32 = MEMORY[0x1E69A1CC8];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __73__MNRouteEditor__waypointForAnchorPoint_traits_clientAttributes_handler___block_invoke_146;
      v41[3] = &unk_1E842A0E8;
      v25 = &v42;
      v42 = pointCopy;
      v26 = &v43;
      v43 = handlerCopy;
      v33 = [v32 composedWaypointForCurrentLocation:geoLocation traits:traitsCopy completionHandler:v41 networkActivityHandler:0];
    }

    else
    {
      if (v30)
      {
        loggingDescription2 = [pointCopy loggingDescription];
        *buf = 138412290;
        v50 = loggingDescription2;
        _os_log_impl(&dword_1D311E000, v29, OS_LOG_TYPE_DEFAULT, "Creating waypoint from location for anchor point %@.", buf, 0xCu);
      }

      v35 = MEMORY[0x1E69A1CC8];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __73__MNRouteEditor__waypointForAnchorPoint_traits_clientAttributes_handler___block_invoke_147;
      v38[3] = &unk_1E842A0E8;
      v25 = &v39;
      v39 = pointCopy;
      v26 = &v40;
      v40 = handlerCopy;
      v36 = [v35 composedWaypointForLocation:geoLocation mapItem:0 traits:traitsCopy completionHandler:v38 networkActivityHandler:0];
    }
  }

  else
  {
    v21 = MNGetMNRouteEditorLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      loggingDescription3 = [pointCopy loggingDescription];
      *buf = 138412290;
      v50 = loggingDescription3;
      _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_DEFAULT, "Creating waypoint from identifier for anchor point %@.", buf, 0xCu);
    }

    v23 = MEMORY[0x1E69A1CC8];
    mapItemIdentifier3 = [pointCopy mapItemIdentifier];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __73__MNRouteEditor__waypointForAnchorPoint_traits_clientAttributes_handler___block_invoke;
    v44[3] = &unk_1E842A110;
    v25 = &v45;
    v45 = pointCopy;
    v26 = &v48;
    v48 = handlerCopy;
    v46 = geoLocation;
    v47 = traitsCopy;
    v27 = [v23 composedWaypointForIdentifier:mapItemIdentifier3 traits:v47 clientAttributes:attributesCopy completionHandler:v44 networkActivityHandler:0];
  }

LABEL_24:
  v37 = *MEMORY[0x1E69E9840];
}

void __73__MNRouteEditor__waypointForAnchorPoint_traits_clientAttributes_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = MNGetMNRouteEditorLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) loggingDescription];
      v12 = [*(a1 + 32) mapItemIdentifier];
      *buf = 138412802;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Error creating waypoint from identifier for anchor point %@. Falling back to location waypoint.\n\tIdentifier: %@\n\tError: %@", buf, 0x20u);
    }

    v13 = MEMORY[0x1E69A1CC8];
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __73__MNRouteEditor__waypointForAnchorPoint_traits_clientAttributes_handler___block_invoke_144;
    v18[3] = &unk_1E842A0E8;
    v19 = *(a1 + 32);
    v20 = *(a1 + 56);
    v16 = [v13 composedWaypointForLocation:v14 mapItem:0 traits:v15 completionHandler:v18 networkActivityHandler:0];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v5 geoMapItem];
    [v8 refineWithMapItem:v9];

    (*(*(a1 + 56) + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __73__MNRouteEditor__waypointForAnchorPoint_traits_clientAttributes_handler___block_invoke_146(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = MNGetMNRouteEditorLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) loggingDescription];
      v12 = [*(a1 + 32) mapItemIdentifier];
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Error creating waypoint from current location for anchor point %@.\n\tIdentifier: %@\n\tError: %@", &v14, 0x20u);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    v8 = [*(a1 + 32) styleAttributes];
    [v5 setStyleAttributes:v8];

    v9 = *(*(a1 + 40) + 16);
  }

  v9();

  v13 = *MEMORY[0x1E69E9840];
}

void __73__MNRouteEditor__waypointForAnchorPoint_traits_clientAttributes_handler___block_invoke_147(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = MNGetMNRouteEditorLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) loggingDescription];
      v12 = [*(a1 + 32) mapItemIdentifier];
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Error creating waypoint from location for anchor point %@.\n\tIdentifier: %@\n\tError: %@", &v14, 0x20u);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    v8 = [*(a1 + 32) styleAttributes];
    [v5 setStyleAttributes:v8];

    v9 = *(*(a1 + 40) + 16);
  }

  v9();

  v13 = *MEMORY[0x1E69E9840];
}

void __73__MNRouteEditor__waypointForAnchorPoint_traits_clientAttributes_handler___block_invoke_144(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = MNGetMNRouteEditorLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) loggingDescription];
      v12 = [*(a1 + 32) mapItemIdentifier];
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Error creating waypoint from location for anchor point %@.\n\tIdentifier: %@\n\tError: %@", &v14, 0x20u);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    v8 = [*(a1 + 32) styleAttributes];
    [v5 setStyleAttributes:v8];

    v9 = *(*(a1 + 40) + 16);
  }

  v9();

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)convertToNavigableRoute:(id)route finishedHandler:(id)handler
{
  v63 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  handlerCopy = handler;
  if (handlerCopy)
  {
    currentRoute = [routeCopy currentRoute];
    if (!currentRoute)
    {
      v12 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:2 debugDescription:@"MNRouteEditorRequest.currentRoute is missing." underlyingError:0];
      (*(handlerCopy + 2))(handlerCopy, 0, v12, 0);

LABEL_10:
      v13 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v9 = MNGetMNRouteEditorLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uniqueRouteID = [currentRoute uniqueRouteID];
      *buf = 138412290;
      v62 = uniqueRouteID;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "Converting route to navigable route. RouteID: %@", buf, 0xCu);
    }

    if ([currentRoute isNavigable])
    {
      v11 = MNGetMNRouteEditorLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "convertToNavigableRoute: Passed in route is already navigable.", buf, 2u);
      }

      (*(handlerCopy + 2))(handlerCopy, currentRoute, 0, 0);
      goto LABEL_10;
    }

    routeAttributes = [routeCopy routeAttributes];
    supportsDirections = [routeAttributes supportsDirections];

    if ((supportsDirections & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: [request.routeAttributes supportsDirections]", buf, 2u);
      }

      v44 = MEMORY[0x1E69A2500];
      routeAttributes2 = [routeCopy routeAttributes];
      v46 = [v44 defaultRouteAttributesForTransportType:{objc_msgSend(routeAttributes2, "mainTransportType")}];
      [routeCopy setRouteAttributes:v46];
    }

    v16 = MEMORY[0x1E69A2500];
    routeAttributes3 = [routeCopy routeAttributes];
    v18 = [v16 defaultRouteAttributesForTransportType:{objc_msgSend(routeAttributes3, "mainTransportType")}];
    [routeCopy setRouteAttributes:v18];

    routeAttributes4 = [routeCopy routeAttributes];
    LOBYTE(routeAttributes3) = [routeAttributes4 supportsDirections];

    if (routeAttributes3)
    {
      v20 = objc_opt_new();
      global_queue = geo_get_global_queue();
      v22 = [[MNSequence alloc] initWithQueue:global_queue];
      waypoints = [routeCopy waypoints];
      v24 = [waypoints count];

      if (v24 == 2)
      {
        v25 = MNGetMNRouteEditorLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          waypoints2 = [routeCopy waypoints];
          v27 = [waypoints2 count];
          *buf = 67109120;
          LODWORD(v62) = v27;
          _os_log_impl(&dword_1D311E000, v25, OS_LOG_TYPE_DEFAULT, "Converting to navigable route using %d waypoints.", buf, 8u);
        }

        v28 = v60;
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v29 = __57__MNRouteEditor_convertToNavigableRoute_finishedHandler___block_invoke;
      }

      else
      {
        anchorPoints = [currentRoute anchorPoints];
        v31 = [anchorPoints count];

        v32 = MNGetMNRouteEditorLog();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v31 < 2)
        {
          if (v33)
          {
            *buf = 0;
            _os_log_impl(&dword_1D311E000, v32, OS_LOG_TYPE_DEFAULT, "Converting to navigable route with no provided waypoints or anchor points. Creating waypoints from route geometry.", buf, 2u);
          }

          v28 = v58;
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v29 = __57__MNRouteEditor_convertToNavigableRoute_finishedHandler___block_invoke_140;
        }

        else
        {
          if (v33)
          {
            anchorPoints2 = [currentRoute anchorPoints];
            v35 = [anchorPoints2 count];
            *buf = 67109120;
            LODWORD(v62) = v35;
            _os_log_impl(&dword_1D311E000, v32, OS_LOG_TYPE_DEFAULT, "Converting to navigable route using %d anchor points.", buf, 8u);
          }

          v28 = v59;
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v29 = __57__MNRouteEditor_convertToNavigableRoute_finishedHandler___block_invoke_139;
        }
      }

      v28[2] = v29;
      v28[3] = &unk_1E842A070;
      v36 = v20;
      v28[4] = v36;
      v28[7] = self;
      v28[5] = currentRoute;
      v37 = routeCopy;
      v28[6] = v37;
      [(MNSequence *)v22 addStep:v28];

      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __57__MNRouteEditor_convertToNavigableRoute_finishedHandler___block_invoke_2_141;
      v53[3] = &unk_1E842A098;
      v38 = v36;
      v54 = v38;
      selfCopy = self;
      v55 = v37;
      v39 = handlerCopy;
      v56 = v39;
      [(MNSequence *)v22 addStep:v53];
      v47 = MEMORY[0x1E69E9820];
      v48 = 3221225472;
      v49 = __57__MNRouteEditor_convertToNavigableRoute_finishedHandler___block_invoke_3;
      v50 = &unk_1E842A0C0;
      v40 = v38;
      v51 = v40;
      v52 = v39;
      [(MNSequence *)v22 addStep:&v47];
      [(MNSequence *)v22 start:v47];
      v41 = v52;
      v13 = v40;

      goto LABEL_25;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: [request.routeAttributes supportsDirections]", buf, 2u);
    }

    __break(1u);
    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
LABEL_37:
    *buf = 0;
    _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: finishedHandler != ((void*)0)", buf, 2u);
  }

  v13 = 0;
LABEL_26:

  v42 = *MEMORY[0x1E69E9840];

  return v13;
}

void __57__MNRouteEditor_convertToNavigableRoute_finishedHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) traits];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__MNRouteEditor_convertToNavigableRoute_finishedHandler___block_invoke_2;
    v8[3] = &unk_1E842A048;
    v9 = *(a1 + 48);
    v10 = v4;
    [v5 _addressForRoute:v6 traits:v7 handler:v8];
  }
}

void __57__MNRouteEditor_convertToNavigableRoute_finishedHandler___block_invoke_139(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v4 = *(a1 + 56);
    v5 = [*(a1 + 40) anchorPoints];
    [v4 _convertAnchorPointsToWaypoints:v5 routeEditorRequest:*(a1 + 48) finishedHandler:v6];
  }
}

void __57__MNRouteEditor_convertToNavigableRoute_finishedHandler___block_invoke_140(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    [*(a1 + 56) _fetchWaypointsFromRouteGeometry:*(a1 + 40) routeEditorRequest:*(a1 + 48) finishedHandler:v4];
  }
}

void __57__MNRouteEditor_convertToNavigableRoute_finishedHandler___block_invoke_2_141(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v6 = [v9 waypoints];
    v7 = [v9 address];
    v8 = [v9 stepError];
    if (v8)
    {
      (*(v5 + 2))(v5, 0, 0);
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      [*(a1 + 56) _requestFinalizedRouteWithWaypoints:v6 address:v7 routeEditorRequest:*(a1 + 40) finishedHandler:v5];
    }
  }
}

void __57__MNRouteEditor_convertToNavigableRoute_finishedHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v3 = [v6 finalizedRoute];
    v4 = [v6 stepError];
    v5 = [v6 directionsError];
    (*(*(a1 + 40) + 16))();
  }
}

void __57__MNRouteEditor_convertToNavigableRoute_finishedHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v11 = [v5 waypoints];
  v8 = [v11 firstObject];
  v9 = [*(a1 + 32) waypoints];
  v10 = [v9 lastObject];
  [MNRouteEditor _handleWaypointStepFinishedWithOrigin:v8 destination:v10 address:v7 error:v6 finishedHandler:*(a1 + 40)];
}

@end