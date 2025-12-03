@interface MNTraceRecorder
- (BOOL)_isTracePathValid:(id)valid;
- (BOOL)_recordInfo;
- (MNTraceRecorder)init;
- (double)timeSinceRecordingBegan;
- (void)_closeTraceDB;
- (void)_dispatchWrite:(id)write;
- (void)_executeStatementForQuery:(id)query handler:(id)handler;
- (void)_initializeTraceDB;
- (void)_logError:(id)error resultCode:(int)code;
- (void)_logSqliteErrorWithResult:(int)result file:(const char *)file line:(int)line;
- (void)_prepareStatements;
- (void)_recordLocationEvent:(int64_t)event recordingTimestamp:(double)timestamp location:(id)location correctedLocation:(id)correctedLocation;
- (void)_recordNavigationUpdate:(int64_t)update parameters:(id)parameters;
- (void)_updateForExistingTrace;
- (void)beginTransaction;
- (void)endTransaction;
- (void)recordAudioSetting:(BOOL)setting voiceGuidance:(int64_t)guidance;
- (void)recordCompassHeading:(double)heading magneticHeading:(double)magneticHeading accuracy:(double)accuracy timestamp:(id)timestamp;
- (void)recordDebugSetting:(id)setting settingValue:(id)value;
- (void)recordDepartWaypoint:(id)waypoint legIndex:(unint64_t)index departureReason:(unint64_t)reason;
- (void)recordDirectionsRequest:(id)request response:(id)response error:(id)error waypoints:(id)waypoints selectedRouteIndex:(unint64_t)index requestTimestamp:(double)timestamp responseTimestamp:(double)responseTimestamp;
- (void)recordETAURequest:(id)request response:(id)response error:(id)error destinationName:(id)name requestTimestamp:(double)timestamp responseTimestamp:(double)responseTimestamp;
- (void)recordEnvironmentInfo:(id)info value:(id)value;
- (void)recordError:(id)error;
- (void)recordInitialCourse:(double)course;
- (void)recordLocation:(id)location correctedLocation:(id)correctedLocation;
- (void)recordLocation:(id)location rawLocation:(id)rawLocation;
- (void)recordLocation:(id)location rawLocation:(id)rawLocation timestamp:(double)timestamp;
- (void)recordLocationUpdatePause;
- (void)recordLocationUpdateResume;
- (void)recordMiscInfo:(id)info value:(id)value;
- (void)recordMotionUpdate:(unint64_t)update exitType:(unint64_t)type confidence:(unint64_t)confidence;
- (void)recordNavigationEvent:(int64_t)event description:(id)description;
- (void)recordRouteChangeWithIndex:(unint64_t)index directionsResponseID:(id)d etauResponseID:(id)iD rerouteReason:(unint64_t)reason;
- (void)recordRouteCreationAction:(unint64_t)action request:(id)request response:(id)response error:(id)error anchorPoints:(id)points requestDate:(id)date responseDate:(id)responseDate;
- (void)recordStylesheet:(id)stylesheet data:(id)data;
- (void)recordTransitUpdateError:(id)error;
- (void)recordTransitUpdateRequest:(id)request withTimestamp:(double)timestamp;
- (void)recordTransitUpdateResponse:(id)response;
- (void)recordVehicleHeading:(double)heading timestamp:(id)timestamp;
- (void)recordVehicleSpeed:(double)speed timestamp:(id)timestamp;
- (void)recordVirtualGarageVehicleState:(id)state isDifferentVehicle:(BOOL)vehicle;
- (void)resetLocationsForSimulation;
- (void)saveTraceSynchronously;
- (void)saveTraceWithCompletionHandler:(id)handler;
- (void)setIsSimulation:(BOOL)simulation;
- (void)setNavigationEndDate:(id)date;
- (void)setNavigationStartDate:(id)date;
- (void)setRecordingStartDate:(id)date;
- (void)setRouteGenius:(BOOL)genius;
- (void)startWritingTraceToPath:(id)path traceType:(int64_t)type withErrorHandler:(id)handler;
@end

@implementation MNTraceRecorder

- (double)timeSinceRecordingBegan
{
  recordingStartDate = self->_recordingStartDate;
  if (!recordingStartDate)
  {
    return 0.0;
  }

  [(NSDate *)recordingStartDate timeIntervalSinceNow];
  return -v3;
}

- (void)_executeStatementForQuery:(id)query handler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (queryCopy)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __53__MNTraceRecorder__executeStatementForQuery_handler___block_invoke;
      v9[3] = &unk_1E842F448;
      v9[4] = self;
      v10 = queryCopy;
      v11 = handlerCopy;
      [(MNTraceRecorder *)self _dispatchWrite:v9];
    }

    else
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "_prepareStatementForQuery was called with a nil query.", buf, 2u);
      }
    }
  }
}

void __53__MNTraceRecorder__executeStatementForQuery_handler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v2 = sqlite3_prepare_v2([*(*(a1 + 32) + 8) db], objc_msgSend(*(a1 + 40), "UTF8String"), objc_msgSend(*(a1 + 40), "length"), &ppStmt, 0);
  if (v2)
  {
    v3 = v2;
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = sqlite3_errmsg([*(*(a1 + 32) + 8) db]);
      *buf = 138412802;
      v15 = v5;
      v16 = 1024;
      v17 = v3;
      v18 = 2080;
      v19 = v6;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "Error preparing statement for query %@: %d | %s", buf, 0x1Cu);
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v7 = sqlite3_step(ppStmt);
    if (v7 != 101)
    {
      v8 = v7;
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 40);
        v11 = sqlite3_errmsg([*(*(a1 + 32) + 8) db]);
        *buf = 138412802;
        v15 = v10;
        v16 = 1024;
        v17 = v8;
        v18 = 2080;
        v19 = v11;
        _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Error executing statement for query %@: %d | %s", buf, 0x1Cu);
      }
    }

    sqlite3_finalize(ppStmt);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_recordNavigationUpdate:(int64_t)update parameters:(id)parameters
{
  v20 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  if (self->_closed)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "!_closed";
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  [(MNTraceRecorder *)self timeSinceRecordingBegan];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__MNTraceRecorder__recordNavigationUpdate_parameters___block_invoke;
  v12[3] = &unk_1E842AAC0;
  v14 = v7;
  updateCopy = update;
  v12[4] = self;
  v13 = parametersCopy;
  v8 = parametersCopy;
  [(MNTraceRecorder *)self _dispatchWrite:v12];

  v9 = *MEMORY[0x1E69E9840];
}

void __54__MNTraceRecorder__recordNavigationUpdate_parameters___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    [*(v1 + 232) bind:1 double:*(a1 + 48)];
    [*(*(a1 + 32) + 232) bind:2 int:*(a1 + 56)];
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v4 + 232);
    if (v3)
    {
      v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];
      [v5 bind:3 data:v6];
    }

    else
    {
      [*(v4 + 232) bindNull:3];
    }

    if (([*(*(a1 + 32) + 232) execute] & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording navigation update"];
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "result";
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v10, 0x16u);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)recordRouteCreationAction:(unint64_t)action request:(id)request response:(id)response error:(id)error anchorPoints:(id)points requestDate:(id)date responseDate:(id)responseDate
{
  v51 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  responseCopy = response;
  errorCopy = error;
  pointsCopy = points;
  dateCopy = date;
  responseDateCopy = responseDate;
  if (self->_traceType != 2)
    v29 = {;
    v30 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v42 = "[MNTraceRecorder recordRouteCreationAction:request:response:error:anchorPoints:requestDate:responseDate:]";
      v43 = 2080;
      v44 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
      v45 = 1024;
      v46 = 1229;
      v47 = 2080;
      v48 = "_traceType == MNTraceTypeCustomRouteCreation";
      v49 = 2112;
      v50 = v29;
      _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
    }
  }

  if (self->_closed)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v32 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "!_closed";
      v43 = 2112;
      v44 = v31;
      _os_log_impl(&dword_1D311E000, v32, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  [dateCopy timeIntervalSinceDate:self->_recordingStartDate];
  v22 = v21;
  [responseDateCopy timeIntervalSinceDate:self->_recordingStartDate];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __106__MNTraceRecorder_recordRouteCreationAction_request_response_error_anchorPoints_requestDate_responseDate___block_invoke;
  v33[3] = &unk_1E842AB60;
  v38 = v22;
  v39 = v23;
  v33[4] = self;
  v34 = requestCopy;
  actionCopy = action;
  v35 = responseCopy;
  v36 = pointsCopy;
  v37 = errorCopy;
  v24 = errorCopy;
  v25 = pointsCopy;
  v26 = responseCopy;
  v27 = requestCopy;
  [(MNTraceRecorder *)self _dispatchWrite:v33];

  v28 = *MEMORY[0x1E69E9840];
}

void __106__MNTraceRecorder_recordRouteCreationAction_request_response_error_anchorPoints_requestDate_responseDate___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    v3 = *(v1 + 240);
    if (!v3)
    {
      v4 = *(v1 + 8);
      v23 = 0;
      v5 = [v4 prepareStatement:@"INSERT INTO custom_route_creation_actions (request_timestamp outError:{response_timestamp, request_data, response_data, response_error_data, anchor_points_data, action) VALUES (:request_time, :response_time, :request, :response, :error, :anchor_points, :action)", &v23}];
      v6 = v23;
      v7 = *(a1 + 32);
      v8 = *(v7 + 240);
      *(v7 + 240) = v5;

      if (v6)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error creating record route creation action statement: %@", v6];
        v10 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v25 = "[MNTraceRecorder recordRouteCreationAction:request:response:error:anchorPoints:requestDate:responseDate:]_block_invoke";
          v26 = 2080;
          v27 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
          v28 = 1024;
          v29 = 1244;
          v30 = 2080;
          v31 = "NO";
          v32 = 2112;
          v33 = v9;
          _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
        }

        v11 = *(a1 + 32);
        v12 = *(v11 + 240);
        *(v11 + 240) = 0;

        *(*(a1 + 32) + 48) = 1;
      }

      v3 = *(*(a1 + 32) + 240);
    }

    [v3 bindParameter:@":request_time" double:*(a1 + 72)];
    [*(*(a1 + 32) + 240) bindParameter:@":response_time" double:*(a1 + 80)];
    v13 = *(*(a1 + 32) + 240);
    v14 = [*(a1 + 40) data];
    [v13 bindParameter:@":request" data:v14];

    v15 = *(*(a1 + 32) + 240);
    v16 = [*(a1 + 48) data];
    [v15 bindParameter:@":response" data:v16];

    [*(*(a1 + 32) + 240) bindParameter:@":action" int:*(a1 + 88)];
    v17 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:*(a1 + 56) requiringSecureCoding:1 error:0];
    [*(*(a1 + 32) + 240) bindParameter:@":anchor_points" data:v17];
    v18 = *(a1 + 64);
    if (v18)
    {
      v19 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v18 requiringSecureCoding:1 error:0];
      [*(*(a1 + 32) + 240) bindParameter:@":error" data:v19];
    }

    if (([*(*(a1 + 32) + 240) execute] & 1) == 0)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording route creation action."];
      v22 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v25 = "result";
        v26 = 2112;
        v27 = v21;
        _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_logError:(id)error resultCode:(int)code
{
  v12 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (code != 101)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543618;
      v9 = errorCopy;
      v10 = 1024;
      codeCopy = code;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "%{public}@: %d", &v8, 0x12u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)recordVirtualGarageVehicleState:(id)state isDifferentVehicle:(BOOL)vehicle
{
  v21 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (self->_closed)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "!_closed";
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  [(MNTraceRecorder *)self timeSinceRecordingBegan];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__MNTraceRecorder_recordVirtualGarageVehicleState_isDifferentVehicle___block_invoke;
  v12[3] = &unk_1E842AB38;
  v13 = stateCopy;
  selfCopy = self;
  v15 = v7;
  vehicleCopy = vehicle;
  v8 = stateCopy;
  [(MNTraceRecorder *)self _dispatchWrite:v12];

  v9 = *MEMORY[0x1E69E9840];
}

void __70__MNTraceRecorder_recordVirtualGarageVehicleState_isDifferentVehicle___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) currentVehicleState];
  [*(*(a1 + 40) + 216) bind:1 double:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 216);
  v4 = [*(a1 + 32) lastStateUpdateDate];
  [v4 timeIntervalSinceReferenceDate];
  [v3 bind:2 double:?];

  v5 = *(*(a1 + 40) + 216);
  v6 = [v2 identifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"(unknown)";
  }

  [v5 bind:3 string:v8];

  v9 = *(*(a1 + 40) + 216);
  v10 = [v2 currentEVRange];
  v11 = [MEMORY[0x1E696B058] meters];
  v12 = [v10 measurementByConvertingToUnit:v11];
  [v12 doubleValue];
  [v9 bind:4 double:?];

  v13 = *(*(a1 + 40) + 216);
  v14 = [v2 maxEVRange];
  v15 = [MEMORY[0x1E696B058] meters];
  v16 = [v14 measurementByConvertingToUnit:v15];
  [v16 doubleValue];
  [v13 bind:5 double:?];

  v17 = *(*(a1 + 40) + 216);
  v18 = [v2 batteryPercentage];
  [v18 doubleValue];
  [v17 bind:6 double:?];

  v19 = *(*(a1 + 40) + 216);
  v20 = [v2 minBatteryCapacity];
  v21 = [MEMORY[0x1E696B030] kilowattHours];
  v22 = [v20 measurementByConvertingToUnit:v21];
  [v22 doubleValue];
  [v19 bind:7 double:?];

  v23 = *(*(a1 + 40) + 216);
  v24 = [v2 currentBatteryCapacity];
  v25 = [MEMORY[0x1E696B030] kilowattHours];
  v26 = [v24 measurementByConvertingToUnit:v25];
  [v26 doubleValue];
  [v23 bind:8 double:?];

  v27 = *(*(a1 + 40) + 216);
  v28 = [v2 maxBatteryCapacity];
  v29 = [MEMORY[0x1E696B030] kilowattHours];
  v30 = [v28 measurementByConvertingToUnit:v29];
  [v30 doubleValue];
  [v27 bind:9 double:?];

  v31 = *(*(a1 + 40) + 216);
  v32 = [v2 consumptionArguments];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = @"(unknown)";
  }

  [v31 bind:10 string:v34];

  v35 = *(*(a1 + 40) + 216);
  v36 = [v2 chargingArguments];
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = @"(unknown)";
  }

  [v35 bind:11 string:v38];

  [*(*(a1 + 40) + 216) bind:12 int:{objc_msgSend(v2, "isCharging")}];
  [*(*(a1 + 40) + 216) bind:13 int:{objc_msgSend(v2, "activeConnector")}];
  [*(*(a1 + 40) + 216) bind:14 int:{objc_msgSend(v2, "origin")}];
  if (*(a1 + 56) == 1)
  {
    v39 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:*(a1 + 32) requiringSecureCoding:1 error:0];
    if (v39)
    {
      [*(*(a1 + 40) + 216) bind:15 data:v39];
    }
  }

  if (([*(*(a1 + 40) + 216) execute] & 1) == 0)
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording EV data"];
    v42 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = 136315394;
      v44 = "result";
      v45 = 2112;
      v46 = v41;
      _os_log_impl(&dword_1D311E000, v42, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v43, 0x16u);
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)recordCompassHeading:(double)heading magneticHeading:(double)magneticHeading accuracy:(double)accuracy timestamp:(id)timestamp
{
  v28 = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  if (self->_closed)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "!_closed";
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  date = [MEMORY[0x1E695DF00] date];
  v12 = date;
  if (!self->_recordingCompassHeadingLastDate || ([date timeIntervalSinceDate:?], v13 >= 1.0))
  {
    objc_storeStrong(&self->_recordingCompassHeadingLastDate, v12);
    [(MNTraceRecorder *)self timeSinceRecordingBegan];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__MNTraceRecorder_recordCompassHeading_magneticHeading_accuracy_timestamp___block_invoke;
    v18[3] = &unk_1E842AB10;
    v18[4] = self;
    v20 = v14;
    v19 = timestampCopy;
    headingCopy = heading;
    magneticHeadingCopy = magneticHeading;
    accuracyCopy = accuracy;
    [(MNTraceRecorder *)self _dispatchWrite:v18];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __75__MNTraceRecorder_recordCompassHeading_magneticHeading_accuracy_timestamp___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    [*(v1 + 208) bind:1 double:*(a1 + 48)];
    v3 = *(*(a1 + 32) + 208);
    [*(a1 + 40) timeIntervalSinceReferenceDate];
    [v3 bind:2 double:?];
    [*(*(a1 + 32) + 208) bind:3 double:*(a1 + 56)];
    [*(*(a1 + 32) + 208) bind:4 double:*(a1 + 64)];
    [*(*(a1 + 32) + 208) bind:5 double:*(a1 + 72)];
    if (([*(*(a1 + 32) + 208) execute] & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording compass heading"];
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "result";
        v9 = 2112;
        v10 = v5;
        _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v7, 0x16u);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)recordMotionUpdate:(unint64_t)update exitType:(unint64_t)type confidence:(unint64_t)confidence
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_closed)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "!_closed";
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  [(MNTraceRecorder *)self timeSinceRecordingBegan];
  v10 = v9;
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceReferenceDate];
  v13 = v12;

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__MNTraceRecorder_recordMotionUpdate_exitType_confidence___block_invoke;
  v17[3] = &unk_1E842AAE8;
  v17[4] = self;
  v17[5] = v10;
  v17[6] = v13;
  v17[7] = update;
  v17[8] = type;
  v17[9] = confidence;
  [(MNTraceRecorder *)self _dispatchWrite:v17];
  v14 = *MEMORY[0x1E69E9840];
}

void __58__MNTraceRecorder_recordMotionUpdate_exitType_confidence___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    [*(v1 + 200) bind:1 double:*(a1 + 40)];
    [*(*(a1 + 32) + 200) bind:2 double:*(a1 + 48)];
    [*(*(a1 + 32) + 200) bind:3 int:*(a1 + 56)];
    [*(*(a1 + 32) + 200) bind:4 int:*(a1 + 64)];
    [*(*(a1 + 32) + 200) bind:5 int:*(a1 + 72)];
    if (([*(*(a1 + 32) + 200) execute] & 1) == 0)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording motion update"];
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "result";
        v8 = 2112;
        v9 = v4;
        _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v6, 0x16u);
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)recordVehicleHeading:(double)heading timestamp:(id)timestamp
{
  v20 = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  if (self->_closed)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "!_closed";
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  [(MNTraceRecorder *)self timeSinceRecordingBegan];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__MNTraceRecorder_recordVehicleHeading_timestamp___block_invoke;
  v12[3] = &unk_1E842AAC0;
  v12[4] = self;
  v13 = timestampCopy;
  v14 = v7;
  headingCopy = heading;
  v8 = timestampCopy;
  [(MNTraceRecorder *)self _dispatchWrite:v12];

  v9 = *MEMORY[0x1E69E9840];
}

void __50__MNTraceRecorder_recordVehicleHeading_timestamp___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    [*(v1 + 192) bind:1 double:*(a1 + 48)];
    v3 = *(*(a1 + 32) + 192);
    [*(a1 + 40) timeIntervalSinceReferenceDate];
    [v3 bind:2 double:?];
    [*(*(a1 + 32) + 192) bind:3 double:*(a1 + 56)];
    if (([*(*(a1 + 32) + 192) execute] & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording vehicle heading"];
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "result";
        v9 = 2112;
        v10 = v5;
        _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v7, 0x16u);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)recordVehicleSpeed:(double)speed timestamp:(id)timestamp
{
  v20 = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  if (self->_closed)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "!_closed";
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  [(MNTraceRecorder *)self timeSinceRecordingBegan];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__MNTraceRecorder_recordVehicleSpeed_timestamp___block_invoke;
  v12[3] = &unk_1E842AAC0;
  v12[4] = self;
  v13 = timestampCopy;
  v14 = v7;
  speedCopy = speed;
  v8 = timestampCopy;
  [(MNTraceRecorder *)self _dispatchWrite:v12];

  v9 = *MEMORY[0x1E69E9840];
}

void __48__MNTraceRecorder_recordVehicleSpeed_timestamp___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    [*(v1 + 184) bind:1 double:*(a1 + 48)];
    v3 = *(*(a1 + 32) + 184);
    [*(a1 + 40) timeIntervalSinceReferenceDate];
    [v3 bind:2 double:?];
    [*(*(a1 + 32) + 184) bind:3 double:*(a1 + 56)];
    if (([*(*(a1 + 32) + 184) execute] & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording vehicle speed"];
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "result";
        v9 = 2112;
        v10 = v5;
        _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v7, 0x16u);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)recordTransitUpdateError:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_closed)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "!_closed";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  [(MNTraceRecorder *)self timeSinceRecordingBegan];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__MNTraceRecorder_recordTransitUpdateError___block_invoke;
  v10[3] = &unk_1E84309E8;
  v12 = v5;
  v10[4] = self;
  v11 = errorCopy;
  v6 = errorCopy;
  [(MNTraceRecorder *)self _dispatchWrite:v10];

  v7 = *MEMORY[0x1E69E9840];
}

void __44__MNTraceRecorder_recordTransitUpdateError___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    [*(v1 + 176) bind:1 double:*(a1 + 48)];
    v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:*(a1 + 40) requiringSecureCoding:0 error:0];
    [*(*(a1 + 32) + 176) bind:2 data:v3];
    if (([*(*(a1 + 32) + 176) execute] & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording realtime transit update error"];
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "result";
        v9 = 2112;
        v10 = v5;
        _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v7, 0x16u);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)recordTransitUpdateResponse:(id)response
{
  v19 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  if (self->_closed)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "!_closed";
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  [(MNTraceRecorder *)self timeSinceRecordingBegan];
  v6 = v5;
  data = [responseCopy data];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__MNTraceRecorder_recordTransitUpdateResponse___block_invoke;
  v12[3] = &unk_1E84309E8;
  v14 = v6;
  v12[4] = self;
  v13 = data;
  v8 = data;
  [(MNTraceRecorder *)self _dispatchWrite:v12];

  v9 = *MEMORY[0x1E69E9840];
}

void __47__MNTraceRecorder_recordTransitUpdateResponse___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    [*(v1 + 168) bind:1 double:*(a1 + 48)];
    [*(*(a1 + 32) + 168) bind:2 data:*(a1 + 40)];
    if (([*(*(a1 + 32) + 168) execute] & 1) == 0)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording realtime transit update response"];
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "result";
        v8 = 2112;
        v9 = v4;
        _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v6, 0x16u);
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)recordTransitUpdateRequest:(id)request withTimestamp:(double)timestamp
{
  v19 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (self->_closed)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "!_closed";
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  data = [requestCopy data];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__MNTraceRecorder_recordTransitUpdateRequest_withTimestamp___block_invoke;
  v12[3] = &unk_1E84309E8;
  timestampCopy = timestamp;
  v12[4] = self;
  v13 = data;
  v8 = data;
  [(MNTraceRecorder *)self _dispatchWrite:v12];

  v9 = *MEMORY[0x1E69E9840];
}

void __60__MNTraceRecorder_recordTransitUpdateRequest_withTimestamp___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    [*(v1 + 160) bind:1 double:*(a1 + 48)];
    [*(*(a1 + 32) + 160) bind:2 data:*(a1 + 40)];
    if (([*(*(a1 + 32) + 160) execute] & 1) == 0)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording realtime transit update request"];
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "result";
        v8 = 2112;
        v9 = v4;
        _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v6, 0x16u);
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)recordETAURequest:(id)request response:(id)response error:(id)error destinationName:(id)name requestTimestamp:(double)timestamp responseTimestamp:(double)responseTimestamp
{
  v36 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  responseCopy = response;
  errorCopy = error;
  nameCopy = name;
  if (self->_closed)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v24 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "!_closed";
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __103__MNTraceRecorder_recordETAURequest_response_error_destinationName_requestTimestamp_responseTimestamp___block_invoke;
  v25[3] = &unk_1E842AA98;
  timestampCopy = timestamp;
  responseTimestampCopy = responseTimestamp;
  v25[4] = self;
  v26 = requestCopy;
  v27 = responseCopy;
  v28 = errorCopy;
  v29 = nameCopy;
  v18 = nameCopy;
  v19 = errorCopy;
  v20 = responseCopy;
  v21 = requestCopy;
  [(MNTraceRecorder *)self _dispatchWrite:v25];

  v22 = *MEMORY[0x1E69E9840];
}

void __103__MNTraceRecorder_recordETAURequest_response_error_destinationName_requestTimestamp_responseTimestamp___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    [*(v1 + 152) bind:1 double:*(a1 + 72)];
    [*(*(a1 + 32) + 152) bind:2 double:*(a1 + 80)];
    v3 = *(*(a1 + 32) + 152);
    v4 = [*(a1 + 40) data];
    [v3 bind:3 data:v4];

    v5 = *(*(a1 + 32) + 152);
    v6 = [*(a1 + 48) data];
    [v5 bind:4 data:v6];

    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:0 error:0];
      [*(*(a1 + 32) + 152) bind:5 data:v8];
    }

    [*(*(a1 + 32) + 152) bind:6 string:*(a1 + 64)];
    if (([*(*(a1 + 32) + 152) execute] & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording ETA update"];
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "result";
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v12, 0x16u);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)recordInitialCourse:(double)course
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_closed)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "!_closed";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__MNTraceRecorder_recordInitialCourse___block_invoke;
  v8[3] = &unk_1E8430A10;
  v8[4] = self;
  *&v8[5] = course;
  [(MNTraceRecorder *)self _dispatchWrite:v8];
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __39__MNTraceRecorder_recordInitialCourse___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if ((*(result + 48) & 1) == 0)
  {
    ppStmt = 0;
    v3 = [result trace];
    v4 = sqlite3_prepare_v2([v3 db], "UPDATE info SET initial_course = ?", 34, &ppStmt, 0);

    if (v4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error preparing statement to record initial course"];
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "result == SQLITE_OK";
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
      }
    }

    v5 = sqlite3_bind_double(ppStmt, 1, *(a1 + 40));
    if (v5)
    {
      result = [*(a1 + 32) _logSqliteErrorWithResult:v5 file:"/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m" line:1024];
    }

    else
    {
      if (sqlite3_step(ppStmt) != 101)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording initial course"];
        v10 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v13 = "result == SQLITE_DONE";
          v14 = 2112;
          v15 = v9;
          _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
        }
      }

      result = sqlite3_finalize(ppStmt);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)recordDirectionsRequest:(id)request response:(id)response error:(id)error waypoints:(id)waypoints selectedRouteIndex:(unint64_t)index requestTimestamp:(double)timestamp responseTimestamp:(double)responseTimestamp
{
  v41 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  responseCopy = response;
  errorCopy = error;
  waypointsCopy = waypoints;
  if (self->_closed)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v27 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v38 = "!_closed";
      v39 = 2112;
      v40 = v26;
      _os_log_impl(&dword_1D311E000, v27, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  routeRequestCount = self->_routeRequestCount;
  self->_routeRequestCount = routeRequestCount + 1;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __122__MNTraceRecorder_recordDirectionsRequest_response_error_waypoints_selectedRouteIndex_requestTimestamp_responseTimestamp___block_invoke;
  v28[3] = &unk_1E842AA70;
  timestampCopy = timestamp;
  responseTimestampCopy = responseTimestamp;
  v28[4] = self;
  v29 = requestCopy;
  v30 = responseCopy;
  v31 = errorCopy;
  v32 = waypointsCopy;
  indexCopy = index;
  v36 = routeRequestCount == 0;
  v21 = waypointsCopy;
  v22 = errorCopy;
  v23 = responseCopy;
  v24 = requestCopy;
  [(MNTraceRecorder *)self _dispatchWrite:v28];

  v25 = *MEMORY[0x1E69E9840];
}

void __122__MNTraceRecorder_recordDirectionsRequest_response_error_waypoints_selectedRouteIndex_requestTimestamp_responseTimestamp___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    [*(v1 + 144) bind:1 int:*(v1 + 248)];
    [*(*(a1 + 32) + 144) bind:2 double:*(a1 + 72)];
    [*(*(a1 + 32) + 144) bind:3 double:*(a1 + 80)];
    v3 = [*(a1 + 40) data];
    [*(*(a1 + 32) + 144) bind:4 data:v3];
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = [v4 copy];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = [v5 routes];
      v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v20;
        do
        {
          v10 = 0;
          do
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v19 + 1) + 8 * v10++) setUnpackedLatLngVertices:0];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v8);
      }

      v11 = [v5 data];
      [*(*(a1 + 32) + 144) bind:5 data:v11];
    }

    v12 = *(a1 + 56);
    if (v12)
    {
      v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v12 requiringSecureCoding:0 error:0];
      [*(*(a1 + 32) + 144) bind:6 data:v13];
    }

    v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:*(a1 + 64) requiringSecureCoding:0 error:0];
    [*(*(a1 + 32) + 144) bind:7 data:v14];
    [*(*(a1 + 32) + 144) bind:8 int:*(a1 + 88)];
    if (([*(*(a1 + 32) + 144) execute] & 1) == 0)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording directions request"];
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "result";
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
      }
    }

    if (*(a1 + 96) == 1)
    {
      [*(*(a1 + 32) + 32) timeIntervalSinceReferenceDate];
      [*(*(a1 + 32) + 64) bindParameter:@":directions_start_time" double:*(a1 + 72) + v15];
      [*(*(a1 + 32) + 64) execute];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)recordDepartWaypoint:(id)waypoint legIndex:(unint64_t)index departureReason:(unint64_t)reason
{
  v15[3] = *MEMORY[0x1E69E9840];
  v15[0] = waypoint;
  v14[0] = @"waypoint";
  v14[1] = @"legIndex";
  v8 = MEMORY[0x1E696AD98];
  waypointCopy = waypoint;
  v10 = [v8 numberWithUnsignedInteger:index];
  v15[1] = v10;
  v14[2] = @"reason";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
  v15[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  [(MNTraceRecorder *)self _recordNavigationUpdate:2 parameters:v12];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)recordRouteChangeWithIndex:(unint64_t)index directionsResponseID:(id)d etauResponseID:(id)iD rerouteReason:(unint64_t)reason
{
  dCopy = d;
  iDCopy = iD;
  v11 = objc_opt_new();
  if (dCopy)
  {
    [v11 setObject:dCopy forKeyedSubscript:@"directionsResponseID"];
  }

  if (iDCopy)
  {
    [v11 setObject:iDCopy forKeyedSubscript:@"etauResponseID"];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  [v11 setObject:v12 forKeyedSubscript:@"routeIndex"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
  [v11 setObject:v13 forKeyedSubscript:@"reason"];

  [(MNTraceRecorder *)self _recordNavigationUpdate:1 parameters:v11];
}

- (void)setNavigationEndDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (dateCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__MNTraceRecorder_setNavigationEndDate___block_invoke;
    v6[3] = &unk_1E8430D50;
    v6[4] = self;
    v7 = dateCopy;
    [(MNTraceRecorder *)self _dispatchWrite:v6];
  }
}

uint64_t __40__MNTraceRecorder_setNavigationEndDate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  [v2 bindParameter:@":navigation_end_time" double:?];
  v3 = *(*(a1 + 32) + 80);

  return [v3 execute];
}

- (void)setNavigationStartDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (dateCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__MNTraceRecorder_setNavigationStartDate___block_invoke;
    v6[3] = &unk_1E8430D50;
    v6[4] = self;
    v7 = dateCopy;
    [(MNTraceRecorder *)self _dispatchWrite:v6];
  }
}

uint64_t __42__MNTraceRecorder_setNavigationStartDate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  [v2 bindParameter:@":navigation_start_time" double:?];
  v3 = *(*(a1 + 32) + 72);

  return [v3 execute];
}

- (void)endTransaction
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_closed)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "!_closed";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__MNTraceRecorder_endTransaction__block_invoke;
  v6[3] = &unk_1E8430ED8;
  v6[4] = self;
  [(MNTraceRecorder *)self _dispatchWrite:v6];
  v3 = *MEMORY[0x1E69E9840];
}

void __33__MNTraceRecorder_endTransaction__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[48] & 1) == 0)
  {
    v3 = [v2 trace];
    sqlite3_exec([v3 db], "COMMIT;", 0, 0, 0);
  }
}

- (void)beginTransaction
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_closed)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "!_closed";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__MNTraceRecorder_beginTransaction__block_invoke;
  v6[3] = &unk_1E8430ED8;
  v6[4] = self;
  [(MNTraceRecorder *)self _dispatchWrite:v6];
  v3 = *MEMORY[0x1E69E9840];
}

void __35__MNTraceRecorder_beginTransaction__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[48] & 1) == 0)
  {
    v3 = [v2 trace];
    sqlite3_exec([v3 db], "BEGIN TRANSACTION;", 0, 0, 0);
  }
}

- (void)resetLocationsForSimulation
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_closed)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "!_closed";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__MNTraceRecorder_resetLocationsForSimulation__block_invoke;
  v6[3] = &unk_1E8430ED8;
  v6[4] = self;
  [(MNTraceRecorder *)self _dispatchWrite:v6];
  v3 = *MEMORY[0x1E69E9840];
}

void __46__MNTraceRecorder_resetLocationsForSimulation__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[48] & 1) == 0)
  {
    v3 = [v2 trace];
    sqlite3_exec([v3 db], "DELETE FROM locations;", 0, 0, 0);

    v4 = [*(a1 + 32) trace];
    sqlite3_exec([v4 db], "UPDATE info SET simulation = 1;", 0, 0, 0);

    v5 = [*(a1 + 32) trace];
    sqlite3_exec([v5 db], "UPDATE info SET cl_mapmatch = 0;", 0, 0, 0);
  }
}

- (void)setRouteGenius:(BOOL)genius
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_closed)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "!_closed";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__MNTraceRecorder_setRouteGenius___block_invoke;
  v8[3] = &unk_1E8430928;
  v8[4] = self;
  geniusCopy = genius;
  [(MNTraceRecorder *)self _dispatchWrite:v8];
  v5 = *MEMORY[0x1E69E9840];
}

void __34__MNTraceRecorder_setRouteGenius___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if ((v3[48] & 1) == 0)
  {
    v4 = *(a1 + 40);
    v7 = [v3 trace];
    v5 = [v7 db];
    if (v4)
    {
      v6 = "UPDATE info SET route_genius = 1;";
    }

    else
    {
      v6 = "UPDATE info SET route_genius = 0;";
    }

    sqlite3_exec(v5, v6, 0, 0, 0);
  }
}

- (void)setIsSimulation:(BOOL)simulation
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_closed)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "!_closed";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__MNTraceRecorder_setIsSimulation___block_invoke;
  v8[3] = &unk_1E8430928;
  v8[4] = self;
  simulationCopy = simulation;
  [(MNTraceRecorder *)self _dispatchWrite:v8];
  v5 = *MEMORY[0x1E69E9840];
}

void __35__MNTraceRecorder_setIsSimulation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    v3 = *(v1 + 8);
    v6 = 0;
    v4 = [MNTracePreparedStatement preparedStatementForTrace:v3 statement:@"UPDATE info SET simulation = ?" outError:&v6];
    v5 = v4;
    if (!v6)
    {
      [v4 bind:1 int:*(a1 + 40)];
      [v5 execute];
      [v5 finalize];
    }
  }
}

- (void)recordError:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_closed)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "!_closed";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  [(MNTraceRecorder *)self timeSinceRecordingBegan];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __31__MNTraceRecorder_recordError___block_invoke;
  v10[3] = &unk_1E84309E8;
  v12 = v5;
  v10[4] = self;
  v11 = errorCopy;
  v6 = errorCopy;
  [(MNTraceRecorder *)self _dispatchWrite:v10];

  v7 = *MEMORY[0x1E69E9840];
}

void __31__MNTraceRecorder_recordError___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    [*(v1 + 128) bind:1 double:*(a1 + 48)];
    v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:*(a1 + 40) requiringSecureCoding:0 error:0];
    [*(*(a1 + 32) + 128) bind:2 data:v3];
    if (([*(*(a1 + 32) + 128) execute] & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording location error."];
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "result";
        v9 = 2112;
        v10 = v5;
        _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v7, 0x16u);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)recordLocationUpdateResume
{
  [(MNTraceRecorder *)self timeSinceRecordingBegan];

  [(MNTraceRecorder *)self _recordLocationEvent:2 recordingTimestamp:0 location:0 correctedLocation:?];
}

- (void)recordLocationUpdatePause
{
  [(MNTraceRecorder *)self timeSinceRecordingBegan];

  [(MNTraceRecorder *)self _recordLocationEvent:1 recordingTimestamp:0 location:0 correctedLocation:?];
}

- (void)recordLocation:(id)location correctedLocation:(id)correctedLocation
{
  correctedLocationCopy = correctedLocation;
  locationCopy = location;
  [(MNTraceRecorder *)self timeSinceRecordingBegan];
  [(MNTraceRecorder *)self _recordLocationEvent:0 recordingTimestamp:locationCopy location:correctedLocationCopy correctedLocation:?];
}

- (void)_recordLocationEvent:(int64_t)event recordingTimestamp:(double)timestamp location:(id)location correctedLocation:(id)correctedLocation
{
  locationCopy = location;
  correctedLocationCopy = correctedLocation;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (locationCopy)
  {
    [locationCopy coordinate];
    v51.latitude = v11;
    v51.longitude = v12;
    [locationCopy rawCoordinate];
  }

  else
  {
    v51 = CLLocationCoordinate2DMake(0.0, 0.0);
    v15 = CLLocationCoordinate2DMake(0.0, 0.0);
    longitude = v15.longitude;
    latitude = v15.latitude;
  }

  v49 = longitude;
  v50 = latitude;
  timestamp = [locationCopy timestamp];
  [timestamp timeIntervalSinceReferenceDate];
  v48 = v17;
  if (locationCopy)
  {
    [locationCopy horizontalAccuracy];
    v47 = v18;
    [locationCopy verticalAccuracy];
    v46 = v19;
    [locationCopy altitude];
    v45 = v20;
    [locationCopy speed];
    v22 = v21;
    [locationCopy _navigation_speedAccuracy];
    v24 = v23;
    [locationCopy course];
    v26 = v25;
    [locationCopy rawCourse];
    v28 = v27;
    type = [locationCopy type];
    [locationCopy courseAccuracy];
    v31 = v30;
    if (correctedLocationCopy)
    {
      goto LABEL_6;
    }

LABEL_9:
    v37 = 0;
    v42 = CLLocationCoordinate2DMake(0.0, 0.0);
    v33 = v42.latitude;
    v35 = v42.longitude;
    if (isKindOfClass)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  type = [0 type];
  v28 = 0;
  v24 = 0;
  v45 = 0;
  v46 = 0.0;
  v47 = 0.0;
  v22 = 0;
  v26 = 0;
  v31 = 0;
  if (!correctedLocationCopy)
  {
    goto LABEL_9;
  }

LABEL_6:
  [correctedLocationCopy coordinate];
  v33 = v32;
  v35 = v34;
  [correctedLocationCopy course];
  v37 = v36;
  if (isKindOfClass)
  {
LABEL_7:
    state = [correctedLocationCopy state];
    matchInfo = [locationCopy matchInfo];
    speedLimit = [correctedLocationCopy speedLimit];
    shieldText = [correctedLocationCopy shieldText];
    LODWORD(v44) = [correctedLocationCopy shieldType];
    LODWORD(v43) = speedLimit;
    [(MNTraceRecorder *)self _recordLocationEvent:event recordingTimestamp:type coordinate:state rawCoordinate:4 timestamp:matchInfo horizontalAccuracy:correctedLocationCopy verticalAccuracy:timestamp altitude:v51 speed:v50 speedAccuracy:v49 course:v48 rawCourse:v47 type:v46 courseAccuracy:v45 correctedCoordinate:v22 correctedCourse:v24 matchType:v26 activeTransportType:v28 matchInfo:v31 correctedLocation:*&v33 speedLimit:*&v35 shieldText:v37 shieldType:v43, shieldText, v44];

    goto LABEL_11;
  }

LABEL_10:
  matchInfo = [locationCopy matchInfo];
  LODWORD(v44) = -1;
  LODWORD(v43) = -1;
  [(MNTraceRecorder *)self _recordLocationEvent:event recordingTimestamp:type coordinate:0xFFFFFFFFLL rawCoordinate:4 timestamp:matchInfo horizontalAccuracy:correctedLocationCopy verticalAccuracy:timestamp altitude:v51 speed:v50 speedAccuracy:v49 course:v48 rawCourse:v47 type:v46 courseAccuracy:v45 correctedCoordinate:v22 correctedCourse:v24 matchType:v26 activeTransportType:v28 matchInfo:v31 correctedLocation:*&v33 speedLimit:*&v35 shieldText:v37 shieldType:v43, 0, v44];
LABEL_11:
}

void __323__MNTraceRecorder__recordLocationEvent_recordingTimestamp_coordinate_rawCoordinate_timestamp_horizontalAccuracy_verticalAccuracy_altitude_speed_speedAccuracy_course_rawCourse_type_courseAccuracy_correctedCoordinate_correctedCourse_matchType_activeTransportType_matchInfo_correctedLocation_speedLimit_shieldText_shieldType___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    [*(v1 + 120) bind:1 double:*(a1 + 64)];
    [*(*(a1 + 32) + 120) bind:2 double:*(a1 + 72)];
    [*(*(a1 + 32) + 120) bind:3 double:*(a1 + 80)];
    [*(*(a1 + 32) + 120) bind:4 double:*(a1 + 88)];
    [*(*(a1 + 32) + 120) bind:5 double:*(a1 + 96)];
    [*(*(a1 + 32) + 120) bind:6 double:*(a1 + 104)];
    [*(*(a1 + 32) + 120) bind:7 double:*(a1 + 112)];
    [*(*(a1 + 32) + 120) bind:8 double:*(a1 + 120)];
    [*(*(a1 + 32) + 120) bind:9 double:*(a1 + 128)];
    [*(*(a1 + 32) + 120) bind:10 double:*(a1 + 136)];
    [*(*(a1 + 32) + 120) bind:11 double:*(a1 + 144)];
    [*(*(a1 + 32) + 120) bind:12 double:*(a1 + 152)];
    [*(*(a1 + 32) + 120) bind:13 double:*(a1 + 160)];
    [*(*(a1 + 32) + 120) bind:14 double:*(a1 + 168)];
    [*(*(a1 + 32) + 120) bind:15 int:*(a1 + 208)];
    [*(*(a1 + 32) + 120) bind:16 int:0];
    [*(*(a1 + 32) + 120) bind:17 int:0];
    [*(*(a1 + 32) + 120) bind:18 int:*(a1 + 176)];
    [*(*(a1 + 32) + 120) bind:19 double:*(a1 + 184)];
    [*(*(a1 + 32) + 120) bind:20 double:*(a1 + 192)];
    [*(*(a1 + 32) + 120) bind:21 double:*(a1 + 200)];
    [*(*(a1 + 32) + 120) bind:22 double:*(a1 + 212)];
    [*(*(a1 + 32) + 120) bind:23 int:*(a1 + 216)];
    [*(*(a1 + 32) + 120) bind:24 int:*(a1 + 220)];
    [*(*(a1 + 32) + 120) bind:25 string:*(a1 + 40)];
    [*(*(a1 + 32) + 120) bind:26 int:*(a1 + 224)];
    [*(*(a1 + 32) + 120) bind:27 int:{objc_msgSend(*(a1 + 48), "matchQuality")}];
    v3 = *(*(a1 + 32) + 120);
    [*(a1 + 48) matchCoordinate];
    [v3 bind:28 double:?];
    v4 = *(*(a1 + 32) + 120);
    [*(a1 + 48) matchCoordinate];
    [v4 bind:29 double:v5];
    v6 = *(*(a1 + 32) + 120);
    [*(a1 + 48) matchCourse];
    [v6 bind:30 double:?];
    [*(*(a1 + 32) + 120) bind:31 int:{objc_msgSend(*(a1 + 48), "matchFormOfWay")}];
    [*(*(a1 + 32) + 120) bind:32 int:{objc_msgSend(*(a1 + 48), "matchRoadClass")}];
    [*(*(a1 + 32) + 120) bind:33 int:{objc_msgSend(*(a1 + 48), "isMatchShifted")}];
    if (([*(*(a1 + 32) + 120) execute] & 1) == 0)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording location"];
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "result";
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v11, 0x16u);
      }
    }

    v7 = [*(a1 + 56) _navigation_detailedMatchInfo];

    if (v7)
    {
      [*(a1 + 32) _recordLocationMatchInfoOnWriteQueue:*(a1 + 56) forLocationID:{sqlite3_last_insert_rowid(objc_msgSend(*(*(a1 + 32) + 8), "db"))}];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)recordLocation:(id)location rawLocation:(id)rawLocation timestamp:(double)timestamp
{
  v23 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  rawLocationCopy = rawLocation;
  if (self->_closed)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "!_closed";
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__MNTraceRecorder_recordLocation_rawLocation_timestamp___block_invoke;
  v15[3] = &unk_1E842AA20;
  timestampCopy = timestamp;
  v15[4] = self;
  v16 = locationCopy;
  v17 = rawLocationCopy;
  v10 = rawLocationCopy;
  v11 = locationCopy;
  [(MNTraceRecorder *)self _dispatchWrite:v15];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)recordLocation:(id)location rawLocation:(id)rawLocation
{
  rawLocationCopy = rawLocation;
  locationCopy = location;
  [(MNTraceRecorder *)self timeSinceRecordingBegan];
  [(MNTraceRecorder *)self recordLocation:locationCopy rawLocation:rawLocationCopy timestamp:?];
}

- (void)recordNavigationEvent:(int64_t)event description:(id)description
{
  v25 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (self->_closed)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "!_closed";
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  [(MNTraceRecorder *)self timeSinceRecordingBegan];
  v8 = v7;
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceReferenceDate];
  v11 = v10;

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__MNTraceRecorder_recordNavigationEvent_description___block_invoke;
  v16[3] = &unk_1E842A9F8;
  v18 = v8;
  v19 = v11;
  eventCopy = event;
  v16[4] = self;
  v17 = descriptionCopy;
  v12 = descriptionCopy;
  [(MNTraceRecorder *)self _dispatchWrite:v16];

  v13 = *MEMORY[0x1E69E9840];
}

void __53__MNTraceRecorder_recordNavigationEvent_description___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    [*(v1 + 224) bindParameter:@":relative_timestamp" double:*(a1 + 48)];
    [*(*(a1 + 32) + 224) bindParameter:@":absolute_timestamp" double:*(a1 + 56)];
    [*(*(a1 + 32) + 224) bindParameter:@":event_id" int:*(a1 + 64)];
    [*(*(a1 + 32) + 224) bindParameter:@":event_description" string:*(a1 + 40)];
    if (([*(*(a1 + 32) + 224) execute] & 1) == 0)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording navigation event"];
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "result";
        v8 = 2112;
        v9 = v4;
        _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v6, 0x16u);
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)recordMiscInfo:(id)info value:(id)value
{
  infoCopy = info;
  valueCopy = value;
  v8 = valueCopy;
  if (infoCopy && valueCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__MNTraceRecorder_recordMiscInfo_value___block_invoke;
    v9[3] = &unk_1E842A9D0;
    v10 = valueCopy;
    v11 = infoCopy;
    selfCopy = self;
    [(MNTraceRecorder *)self _executeStatementForQuery:@"INSERT INTO misc_info (key handler:value) VALUES (?, ?)", v9];
  }
}

void __40__MNTraceRecorder_recordMiscInfo_value___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = *(a1 + 32);
    v5 = sqlite3_bind_text(a2, 1, [*(a1 + 40) UTF8String], -1, 0);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 48);
      v8 = 529;
LABEL_17:
      [v7 _logSqliteErrorWithResult:v6 file:"/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m" line:v8];
      goto LABEL_18;
    }

    v14 = v20;
    v15 = sqlite3_bind_text(a2, 2, [v20 UTF8String], objc_msgSend(v20, "length"), 0);
    if (v15)
    {
      v6 = v15;
      v7 = *(a1 + 48);
      v8 = 530;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = *(a1 + 32);
    v9 = sqlite3_bind_text(a2, 1, [*(a1 + 40) UTF8String], -1, 0);
    if (v9)
    {
      v6 = v9;
      v7 = *(a1 + 48);
      v8 = 533;
      goto LABEL_17;
    }

    if (CFNumberIsFloatType(v20))
    {
      [v20 doubleValue];
      v17 = sqlite3_bind_double(a2, 2, v16);
      if (v17)
      {
        v6 = v17;
        v7 = *(a1 + 48);
        v8 = 535;
        goto LABEL_17;
      }
    }

    else
    {
      v18 = sqlite3_bind_int(a2, 2, [v20 intValue]);
      if (v18)
      {
        v6 = v18;
        v7 = *(a1 + 48);
        v8 = 537;
        goto LABEL_17;
      }
    }

LABEL_18:
    v19 = *MEMORY[0x1E69E9840];

    return;
  }

  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    *buf = 138412546;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Error recording %@ to misc_info: Invalid type: %@", buf, 0x16u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)recordStylesheet:(id)stylesheet data:(id)data
{
  stylesheetCopy = stylesheet;
  dataCopy = data;
  if (stylesheetCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__MNTraceRecorder_recordStylesheet_data___block_invoke;
    v8[3] = &unk_1E842F128;
    v8[4] = self;
    v9 = stylesheetCopy;
    v10 = dataCopy;
    [(MNTraceRecorder *)self _dispatchWrite:v8];
  }
}

void __41__MNTraceRecorder_recordStylesheet_data___block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [*(a1[4] + 112) bind:1 string:a1[5]];
  [*(a1[4] + 112) bind:2 data:a1[6]];
  if (([*(a1[4] + 112) execute] & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording debug setting"];
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "result";
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v5, 0x16u);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)recordAudioSetting:(BOOL)setting voiceGuidance:(int64_t)guidance
{
  if (self->_lastPauseSpokenAudio != setting || self->_lastVoiceGuidanceSetting != guidance)
  {
    v8 = v4;
    v9 = v5;
    self->_lastPauseSpokenAudio = setting;
    self->_lastVoiceGuidanceSetting = guidance;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__MNTraceRecorder_recordAudioSetting_voiceGuidance___block_invoke;
    v6[3] = &unk_1E842A9A8;
    settingCopy = setting;
    v6[4] = self;
    v6[5] = guidance;
    [(MNTraceRecorder *)self _dispatchWrite:v6];
  }
}

void __52__MNTraceRecorder_recordAudioSetting_voiceGuidance___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[13];
  [v2 timeSinceRecordingBegan];
  [v3 bind:1 double:?];
  [*(*(a1 + 32) + 104) bind:2 int:*(a1 + 48)];
  [*(*(a1 + 32) + 104) bind:3 int:*(a1 + 40)];
  if (([*(*(a1 + 32) + 104) execute] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording audio setting"];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "result";
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v7, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)recordDebugSetting:(id)setting settingValue:(id)value
{
  settingCopy = setting;
  valueCopy = value;
  v8 = valueCopy;
  if (settingCopy && valueCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__MNTraceRecorder_recordDebugSetting_settingValue___block_invoke;
    v9[3] = &unk_1E842F128;
    v9[4] = self;
    v10 = settingCopy;
    v11 = v8;
    [(MNTraceRecorder *)self _dispatchWrite:v9];
  }
}

void __51__MNTraceRecorder_recordDebugSetting_settingValue___block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [*(a1[4] + 96) bind:1 string:a1[5]];
  [*(a1[4] + 96) bind:2 string:a1[6]];
  if (([*(a1[4] + 96) execute] & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording debug setting"];
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "result";
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v5, 0x16u);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)recordEnvironmentInfo:(id)info value:(id)value
{
  infoCopy = info;
  valueCopy = value;
  v8 = valueCopy;
  if (infoCopy && valueCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__MNTraceRecorder_recordEnvironmentInfo_value___block_invoke;
    v9[3] = &unk_1E842F128;
    v9[4] = self;
    v10 = infoCopy;
    v11 = v8;
    [(MNTraceRecorder *)self _dispatchWrite:v9];
  }
}

void __47__MNTraceRecorder_recordEnvironmentInfo_value___block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [*(a1[4] + 88) bind:1 string:a1[5]];
  [*(a1[4] + 88) bind:2 string:a1[6]];
  if (([*(a1[4] + 88) execute] & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording environment info"];
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "result";
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v5, 0x16u);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)setRecordingStartDate:(id)date
{
  v15 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if (dateCopy)
  {
    v5 = dateCopy;
    v6 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v14 = v5;
    v7 = "Setting recording start time to %@";
    v8 = v6;
    v9 = 12;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] now];
    v6 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v7 = "Setting recording start time to current time";
    v8 = v6;
    v9 = 2;
  }

  _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
LABEL_7:

  objc_storeStrong(&self->_recordingStartDate, v5);
  if (self->_trace)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__MNTraceRecorder_setRecordingStartDate___block_invoke;
    v11[3] = &unk_1E8430D50;
    v11[4] = self;
    v12 = v5;
    [(MNTraceRecorder *)self _dispatchWrite:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __41__MNTraceRecorder_setRecordingStartDate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  [v2 bindParameter:@":recording_start_time" double:?];
  v3 = *(*(a1 + 32) + 56);

  return [v3 execute];
}

- (void)_closeTraceDB
{
  trace = [(MNTraceRecorder *)self trace];
  v4 = [trace db];

  if (v4)
  {
    trace2 = [(MNTraceRecorder *)self trace];
    [trace2 closeTrace];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEBUG, "We are trying to close a trace when there is no trace db.", buf, 2u);
    }
  }
}

- (void)_prepareStatements
{
  v109 = *MEMORY[0x1E69E9840];
  if (!self->_corrupted)
  {
    trace = self->_trace;
    v98 = 0;
    v4 = [(MNTrace *)trace prepareStatement:@"UPDATE info SET recording_start_time = :recording_start_time" outError:&v98];
    v5 = v98;
    updateRecordingStartTimeStatement = self->_updateRecordingStartTimeStatement;
    self->_updateRecordingStartTimeStatement = v4;

    if (v5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v100 = "[MNTraceRecorder _prepareStatements]";
        v101 = 2080;
        v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
        v103 = 1024;
        v104 = 395;
        v105 = 2080;
        v106 = "NO";
        v107 = 2112;
        v108 = v7;
LABEL_71:
        _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
      }
    }

    else
    {
      v9 = self->_trace;
      v97 = 0;
      v10 = [(MNTrace *)v9 prepareStatement:@"UPDATE info SET directions_start_time = :directions_start_time" outError:&v97];
      v5 = v97;
      updateDirectionsStartTimeStatement = self->_updateDirectionsStartTimeStatement;
      self->_updateDirectionsStartTimeStatement = v10;

      if (v5)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
        v8 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v100 = "[MNTraceRecorder _prepareStatements]";
          v101 = 2080;
          v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
          v103 = 1024;
          v104 = 396;
          v105 = 2080;
          v106 = "NO";
          v107 = 2112;
          v108 = v7;
          goto LABEL_71;
        }
      }

      else
      {
        v12 = self->_trace;
        v96 = 0;
        v13 = [(MNTrace *)v12 prepareStatement:@"UPDATE info SET navigation_start_time = :navigation_start_time" outError:&v96];
        v5 = v96;
        updateNavigationStartTimeStatement = self->_updateNavigationStartTimeStatement;
        self->_updateNavigationStartTimeStatement = v13;

        if (v5)
        {
          v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
          v8 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v100 = "[MNTraceRecorder _prepareStatements]";
            v101 = 2080;
            v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
            v103 = 1024;
            v104 = 397;
            v105 = 2080;
            v106 = "NO";
            v107 = 2112;
            v108 = v7;
            goto LABEL_71;
          }
        }

        else
        {
          v15 = self->_trace;
          v95 = 0;
          v16 = [(MNTrace *)v15 prepareStatement:@"UPDATE info SET navigation_end_time = :navigation_end_time" outError:&v95];
          v5 = v95;
          updateNavigationEndTimeStatement = self->_updateNavigationEndTimeStatement;
          self->_updateNavigationEndTimeStatement = v16;

          if (v5)
          {
            v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
            v8 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v100 = "[MNTraceRecorder _prepareStatements]";
              v101 = 2080;
              v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
              v103 = 1024;
              v104 = 398;
              v105 = 2080;
              v106 = "NO";
              v107 = 2112;
              v108 = v7;
              goto LABEL_71;
            }
          }

          else
          {
            v18 = self->_trace;
            v94 = 0;
            v19 = [(MNTrace *)v18 prepareStatement:@"INSERT INTO environment_info (name outError:value) VALUES (?, ?)", &v94];
            v5 = v94;
            recordEnvironmentInfoStatement = self->_recordEnvironmentInfoStatement;
            self->_recordEnvironmentInfoStatement = v19;

            if (v5)
            {
              v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
              v8 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                *buf = 136316162;
                v100 = "[MNTraceRecorder _prepareStatements]";
                v101 = 2080;
                v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                v103 = 1024;
                v104 = 399;
                v105 = 2080;
                v106 = "NO";
                v107 = 2112;
                v108 = v7;
                goto LABEL_71;
              }
            }

            else
            {
              v21 = self->_trace;
              v93 = 0;
              v22 = [(MNTrace *)v21 prepareStatement:@"INSERT INTO debug_settings (setting_name outError:setting_value) VALUES (?, ?)", &v93];
              v5 = v93;
              recordDebugSettingStatement = self->_recordDebugSettingStatement;
              self->_recordDebugSettingStatement = v22;

              if (v5)
              {
                v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
                v8 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316162;
                  v100 = "[MNTraceRecorder _prepareStatements]";
                  v101 = 2080;
                  v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                  v103 = 1024;
                  v104 = 400;
                  v105 = 2080;
                  v106 = "NO";
                  v107 = 2112;
                  v108 = v7;
                  goto LABEL_71;
                }
              }

              else
              {
                v24 = self->_trace;
                v92 = 0;
                v25 = [(MNTrace *)v24 prepareStatement:@"INSERT INTO audio_settings (db_timestamp outError:pause_spoken_audio, volume_setting) VALUES (?, ?, ?)", &v92];
                v5 = v92;
                recordAudioSettingStatement = self->_recordAudioSettingStatement;
                self->_recordAudioSettingStatement = v25;

                if (v5)
                {
                  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
                  v8 = GEOFindOrCreateLog();
                  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136316162;
                    v100 = "[MNTraceRecorder _prepareStatements]";
                    v101 = 2080;
                    v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                    v103 = 1024;
                    v104 = 401;
                    v105 = 2080;
                    v106 = "NO";
                    v107 = 2112;
                    v108 = v7;
                    goto LABEL_71;
                  }
                }

                else
                {
                  v27 = self->_trace;
                  v91 = 0;
                  v28 = [(MNTrace *)v27 prepareStatement:@"INSERT INTO stylesheets (stylesheet_name outError:stylesheet_data) VALUES (?, ?)", &v91];
                  v5 = v91;
                  recordStylesheetStatement = self->_recordStylesheetStatement;
                  self->_recordStylesheetStatement = v28;

                  if (v5)
                  {
                    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
                    v8 = GEOFindOrCreateLog();
                    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136316162;
                      v100 = "[MNTraceRecorder _prepareStatements]";
                      v101 = 2080;
                      v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                      v103 = 1024;
                      v104 = 402;
                      v105 = 2080;
                      v106 = "NO";
                      v107 = 2112;
                      v108 = v7;
                      goto LABEL_71;
                    }
                  }

                  else
                  {
                    v30 = self->_trace;
                    v90 = 0;
                    v31 = [(MNTrace *)v30 prepareStatement:@"INSERT INTO locations (db_timestamp outError:cl_timestamp, latitude, longitude, raw_latitude, raw_longitude, horizontal_accuracy, vertical_accuracy, altitude, speed, speed_accuracy, course, raw_course, course_accuracy, type, reference_frame, raw_reference_frame, event_type, corrected_latitude, corrected_longitude, corrected_course, match_type, active_transport_type, speed_limit, shield_text, shield_type, match_info_quality, match_info_latitude, match_info_longitude, match_info_course, match_info_form_of_way, match_info_road_class, match_info_shifted) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", &v90];
                    v5 = v90;
                    recordLocationStatement = self->_recordLocationStatement;
                    self->_recordLocationStatement = v31;

                    if (v5)
                    {
                      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
                      v8 = GEOFindOrCreateLog();
                      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136316162;
                        v100 = "[MNTraceRecorder _prepareStatements]";
                        v101 = 2080;
                        v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                        v103 = 1024;
                        v104 = 403;
                        v105 = 2080;
                        v106 = "NO";
                        v107 = 2112;
                        v108 = v7;
                        goto LABEL_71;
                      }
                    }

                    else
                    {
                      v33 = self->_trace;
                      v89 = 0;
                      v34 = [(MNTrace *)v33 prepareStatement:@"INSERT INTO locations (db_timestamp outError:error_data) VALUES (?, ?)", &v89];
                      v5 = v89;
                      recordLocationErrorStatement = self->_recordLocationErrorStatement;
                      self->_recordLocationErrorStatement = v34;

                      if (v5)
                      {
                        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
                        v8 = GEOFindOrCreateLog();
                        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136316162;
                          v100 = "[MNTraceRecorder _prepareStatements]";
                          v101 = 2080;
                          v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                          v103 = 1024;
                          v104 = 404;
                          v105 = 2080;
                          v106 = "NO";
                          v107 = 2112;
                          v108 = v7;
                          goto LABEL_71;
                        }
                      }

                      else
                      {
                        v36 = self->_trace;
                        v88 = 0;
                        v37 = [(MNTrace *)v36 prepareStatement:@"INSERT INTO location_match_info (location_id outError:route_coordinate, step_index, form_of_way, route_match_score, distance_from_route, max_route_distance, route_distance_match_score, route_distance_weight, route_course_delta, max_route_course_delta, route_course_match_score, route_course_weight, road_width_on_route, distance_from_road, road_course_delta, distance_from_nearest_junction) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", &v88];
                        v5 = v88;
                        recordMatchInfoStatement = self->_recordMatchInfoStatement;
                        self->_recordMatchInfoStatement = v37;

                        if (v5)
                        {
                          v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
                          v8 = GEOFindOrCreateLog();
                          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136316162;
                            v100 = "[MNTraceRecorder _prepareStatements]";
                            v101 = 2080;
                            v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                            v103 = 1024;
                            v104 = 405;
                            v105 = 2080;
                            v106 = "NO";
                            v107 = 2112;
                            v108 = v7;
                            goto LABEL_71;
                          }
                        }

                        else
                        {
                          v39 = self->_trace;
                          v87 = 0;
                          v40 = [(MNTrace *)v39 prepareStatement:@"INSERT INTO directions (id outError:request_timestamp, response_timestamp, request_data, response_data, response_error_data, waypoints_data, selected_route_index) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", &v87];
                          v5 = v87;
                          recordDirectionsStatement = self->_recordDirectionsStatement;
                          self->_recordDirectionsStatement = v40;

                          if (v5)
                          {
                            v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
                            v8 = GEOFindOrCreateLog();
                            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136316162;
                              v100 = "[MNTraceRecorder _prepareStatements]";
                              v101 = 2080;
                              v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                              v103 = 1024;
                              v104 = 406;
                              v105 = 2080;
                              v106 = "NO";
                              v107 = 2112;
                              v108 = v7;
                              goto LABEL_71;
                            }
                          }

                          else
                          {
                            v42 = self->_trace;
                            v86 = 0;
                            v43 = [(MNTrace *)v42 prepareStatement:@"INSERT INTO eta_traffic_updates (request_timestamp outError:response_timestamp, request_data, response_data, response_error_data, destination_name) VALUES (?, ?, ?, ?, ?, ?)", &v86];
                            v5 = v86;
                            recordETAUStatement = self->_recordETAUStatement;
                            self->_recordETAUStatement = v43;

                            if (v5)
                            {
                              v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
                              v8 = GEOFindOrCreateLog();
                              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136316162;
                                v100 = "[MNTraceRecorder _prepareStatements]";
                                v101 = 2080;
                                v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                                v103 = 1024;
                                v104 = 407;
                                v105 = 2080;
                                v106 = "NO";
                                v107 = 2112;
                                v108 = v7;
                                goto LABEL_71;
                              }
                            }

                            else
                            {
                              v45 = self->_trace;
                              v85 = 0;
                              v46 = [(MNTrace *)v45 prepareStatement:@"INSERT INTO realtime_transit_updates (timestamp outError:request_data) VALUES (?, ?)", &v85];
                              v5 = v85;
                              recordRealtimeTransitUpdateRequest = self->_recordRealtimeTransitUpdateRequest;
                              self->_recordRealtimeTransitUpdateRequest = v46;

                              if (v5)
                              {
                                v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
                                v8 = GEOFindOrCreateLog();
                                if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 136316162;
                                  v100 = "[MNTraceRecorder _prepareStatements]";
                                  v101 = 2080;
                                  v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                                  v103 = 1024;
                                  v104 = 408;
                                  v105 = 2080;
                                  v106 = "NO";
                                  v107 = 2112;
                                  v108 = v7;
                                  goto LABEL_71;
                                }
                              }

                              else
                              {
                                v48 = self->_trace;
                                v84 = 0;
                                v49 = [(MNTrace *)v48 prepareStatement:@"INSERT INTO realtime_transit_updates (timestamp outError:response_data) VALUES (?, ?)", &v84];
                                v5 = v84;
                                recordRealtimeTransitUpdateResponse = self->_recordRealtimeTransitUpdateResponse;
                                self->_recordRealtimeTransitUpdateResponse = v49;

                                if (v5)
                                {
                                  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
                                  v8 = GEOFindOrCreateLog();
                                  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                                  {
                                    *buf = 136316162;
                                    v100 = "[MNTraceRecorder _prepareStatements]";
                                    v101 = 2080;
                                    v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                                    v103 = 1024;
                                    v104 = 409;
                                    v105 = 2080;
                                    v106 = "NO";
                                    v107 = 2112;
                                    v108 = v7;
                                    goto LABEL_71;
                                  }
                                }

                                else
                                {
                                  v51 = self->_trace;
                                  v83 = 0;
                                  v52 = [(MNTrace *)v51 prepareStatement:@"INSERT INTO realtime_transit_updates (timestamp outError:response_error_data) VALUES (?, ?)", &v83];
                                  v5 = v83;
                                  recordRealtimeTransitUpdateResponseError = self->_recordRealtimeTransitUpdateResponseError;
                                  self->_recordRealtimeTransitUpdateResponseError = v52;

                                  if (v5)
                                  {
                                    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
                                    v8 = GEOFindOrCreateLog();
                                    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                                    {
                                      *buf = 136316162;
                                      v100 = "[MNTraceRecorder _prepareStatements]";
                                      v101 = 2080;
                                      v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                                      v103 = 1024;
                                      v104 = 410;
                                      v105 = 2080;
                                      v106 = "NO";
                                      v107 = 2112;
                                      v108 = v7;
                                      goto LABEL_71;
                                    }
                                  }

                                  else
                                  {
                                    v54 = self->_trace;
                                    v82 = 0;
                                    v55 = [(MNTrace *)v54 prepareStatement:@"INSERT INTO vehicle_speed_data (relative_timestamp outError:absolute_timestamp, speed) VALUES (?, ?, ?)", &v82];
                                    v5 = v82;
                                    recordVehicleSpeed = self->_recordVehicleSpeed;
                                    self->_recordVehicleSpeed = v55;

                                    if (v5)
                                    {
                                      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
                                      v8 = GEOFindOrCreateLog();
                                      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                                      {
                                        *buf = 136316162;
                                        v100 = "[MNTraceRecorder _prepareStatements]";
                                        v101 = 2080;
                                        v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                                        v103 = 1024;
                                        v104 = 411;
                                        v105 = 2080;
                                        v106 = "NO";
                                        v107 = 2112;
                                        v108 = v7;
                                        goto LABEL_71;
                                      }
                                    }

                                    else
                                    {
                                      v57 = self->_trace;
                                      v81 = 0;
                                      v58 = [(MNTrace *)v57 prepareStatement:@"INSERT INTO vehicle_heading_data (relative_timestamp outError:absolute_timestamp, heading) VALUES(?, ?, ?)", &v81];
                                      v5 = v81;
                                      recordVehicleHeading = self->_recordVehicleHeading;
                                      self->_recordVehicleHeading = v58;

                                      if (v5)
                                      {
                                        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
                                        v8 = GEOFindOrCreateLog();
                                        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                                        {
                                          *buf = 136316162;
                                          v100 = "[MNTraceRecorder _prepareStatements]";
                                          v101 = 2080;
                                          v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                                          v103 = 1024;
                                          v104 = 412;
                                          v105 = 2080;
                                          v106 = "NO";
                                          v107 = 2112;
                                          v108 = v7;
                                          goto LABEL_71;
                                        }
                                      }

                                      else
                                      {
                                        v60 = self->_trace;
                                        v80 = 0;
                                        v61 = [(MNTrace *)v60 prepareStatement:@"INSERT INTO motion_data (relative_timestamp outError:absolute_timestamp, type, exit_type, confidence) VALUES(?, ?, ?, ?, ?)", &v80];
                                        v5 = v80;
                                        recordMotionData = self->_recordMotionData;
                                        self->_recordMotionData = v61;

                                        if (v5)
                                        {
                                          v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
                                          v8 = GEOFindOrCreateLog();
                                          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                                          {
                                            *buf = 136316162;
                                            v100 = "[MNTraceRecorder _prepareStatements]";
                                            v101 = 2080;
                                            v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                                            v103 = 1024;
                                            v104 = 413;
                                            v105 = 2080;
                                            v106 = "NO";
                                            v107 = 2112;
                                            v108 = v7;
                                            goto LABEL_71;
                                          }
                                        }

                                        else
                                        {
                                          v63 = self->_trace;
                                          v79 = 0;
                                          v64 = [(MNTrace *)v63 prepareStatement:@"INSERT INTO compass_heading_data (relative_timestamp outError:absolute_timestamp, true_heading, magnetic_heading, accuracy) VALUES(?, ?, ?, ?, ?)", &v79];
                                          v5 = v79;
                                          recordCompassHeading = self->_recordCompassHeading;
                                          self->_recordCompassHeading = v64;

                                          if (v5)
                                          {
                                            v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
                                            v8 = GEOFindOrCreateLog();
                                            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                                            {
                                              *buf = 136316162;
                                              v100 = "[MNTraceRecorder _prepareStatements]";
                                              v101 = 2080;
                                              v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                                              v103 = 1024;
                                              v104 = 414;
                                              v105 = 2080;
                                              v106 = "NO";
                                              v107 = 2112;
                                              v108 = v7;
                                              goto LABEL_71;
                                            }
                                          }

                                          else
                                          {
                                            v66 = self->_trace;
                                            v78 = 0;
                                            v67 = [(MNTrace *)v66 prepareStatement:@"INSERT INTO ev_data (relative_timestamp outError:absolute_timestamp, identifier, current_range_m, max_range_m, battery_percentage, min_battery_capacity_kwh, current_battery_capacity_kwh, max_battery_capacity_kwh, consumption_arguments, charging_arguments, is_charging, active_connector, vehicle_state_origin, vehicle_data) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", &v78];
                                            v5 = v78;
                                            recordVirtualGarageVehicleState = self->_recordVirtualGarageVehicleState;
                                            self->_recordVirtualGarageVehicleState = v67;

                                            if (v5)
                                            {
                                              v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
                                              v8 = GEOFindOrCreateLog();
                                              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                                              {
                                                *buf = 136316162;
                                                v100 = "[MNTraceRecorder _prepareStatements]";
                                                v101 = 2080;
                                                v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                                                v103 = 1024;
                                                v104 = 415;
                                                v105 = 2080;
                                                v106 = "NO";
                                                v107 = 2112;
                                                v108 = v7;
                                                goto LABEL_71;
                                              }
                                            }

                                            else
                                            {
                                              v69 = self->_trace;
                                              v77 = 0;
                                              v70 = [(MNTrace *)v69 prepareStatement:@"INSERT INTO navigation_events (relative_timestamp outError:absolute_timestamp, event_id, event_description) VALUES (:relative_timestamp, :absolute_timestamp, :event_id, :event_description)", &v77];
                                              v5 = v77;
                                              recordNavigationEvent = self->_recordNavigationEvent;
                                              self->_recordNavigationEvent = v70;

                                              if (v5)
                                              {
                                                v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
                                                v8 = GEOFindOrCreateLog();
                                                if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                                                {
                                                  *buf = 136316162;
                                                  v100 = "[MNTraceRecorder _prepareStatements]";
                                                  v101 = 2080;
                                                  v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                                                  v103 = 1024;
                                                  v104 = 416;
                                                  v105 = 2080;
                                                  v106 = "NO";
                                                  v107 = 2112;
                                                  v108 = v7;
                                                  goto LABEL_71;
                                                }
                                              }

                                              else
                                              {
                                                v72 = self->_trace;
                                                v76 = 0;
                                                v73 = [(MNTrace *)v72 prepareStatement:@"INSERT INTO navigation_updates (timestamp outError:type, parameters) VALUES (?, ?, ?)", &v76];
                                                v5 = v76;
                                                recordNavigationUpdate = self->_recordNavigationUpdate;
                                                self->_recordNavigationUpdate = v73;

                                                if (!v5)
                                                {
LABEL_73:

                                                  goto LABEL_74;
                                                }

                                                v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
                                                v8 = GEOFindOrCreateLog();
                                                if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                                                {
                                                  *buf = 136316162;
                                                  v100 = "[MNTraceRecorder _prepareStatements]";
                                                  v101 = 2080;
                                                  v102 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
                                                  v103 = 1024;
                                                  v104 = 417;
                                                  v105 = 2080;
                                                  v106 = "NO";
                                                  v107 = 2112;
                                                  v108 = v7;
                                                  goto LABEL_71;
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_73;
  }

LABEL_74:
  v75 = *MEMORY[0x1E69E9840];
}

- (BOOL)_recordInfo
{
  v26 = *MEMORY[0x1E69E9840];
  trace = self->_trace;
  v15 = 0;
  v4 = [(MNTrace *)trace prepareStatement:@"INSERT INTO info (trace_type outError:version, original_version, recording_start_time, directions_url, is_internal_install) VALUES (:trace_type, :version, :original_version, :recording_start_time, :directions_url, :is_internal_install)", &v15];
  v5 = v15;
  if (v5)
  {
    directionsURL = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
    absoluteString = GEOFindOrCreateLog();
    if (os_log_type_enabled(absoluteString, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v17 = "[MNTraceRecorder _recordInfo]";
      v18 = 2080;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
      v20 = 1024;
      v21 = 359;
      v22 = 2080;
      v23 = "NO";
      v24 = 2112;
      v25 = directionsURL;
      _os_log_impl(&dword_1D311E000, absoluteString, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
    }

    execute = 0;
  }

  else
  {
    [v4 bindParameter:@":trace_type" int:LODWORD(self->_traceType)];
    [v4 bindParameter:@":version" int:{+[MNTrace currentVersion](MNTrace, "currentVersion")}];
    [v4 bindParameter:@":original_version" int:{+[MNTrace currentVersion](MNTrace, "currentVersion")}];
    [(NSDate *)self->_recordingStartDate timeIntervalSinceReferenceDate];
    [v4 bindParameter:@":recording_start_time" double:?];
    mEMORY[0x1E69A1D18] = [MEMORY[0x1E69A1D18] sharedService];
    directionsURL = [mEMORY[0x1E69A1D18] directionsURL];

    absoluteString = [directionsURL absoluteString];
    if ([absoluteString length])
    {
      [v4 bindParameter:@":directions_url" string:absoluteString];
    }

    mEMORY[0x1E69A2398] = [MEMORY[0x1E69A2398] sharedPlatform];
    [v4 bindParameter:@":is_internal_install" int:{objc_msgSend(mEMORY[0x1E69A2398], "isInternalInstall")}];

    execute = [v4 execute];
    if ((execute & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error recording info statement."];
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v17 = "[MNTraceRecorder _recordInfo]";
        v18 = 2080;
        v19 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m";
        v20 = 1024;
        v21 = 377;
        v22 = 2080;
        v23 = "success";
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
      }
    }

    [v4 finalize];
  }

  v11 = *MEMORY[0x1E69E9840];
  return execute;
}

- (void)_updateForExistingTrace
{
  v25 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  if (!sqlite3_prepare_v2([(MNTrace *)self->_trace db], "SELECT cl_timestamp FROM locations ORDER BY db_timestamp ASC LIMIT 1", -1, &ppStmt, 0))
  {
    if ((sqlite3_step(ppStmt) - 102) > 0xFFFFFFFD)
    {
      v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(ppStmt, 0)}];
      recordingStartDate = self->_recordingStartDate;
      self->_recordingStartDate = v10;

      sqlite3_finalize(ppStmt);
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_recordingStartDate;
        *buf = 138412290;
        v24 = v13;
        _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_DEFAULT, "Trace recorder updating existing trace file. Recording start time set to: %@", buf, 0xCu);
      }

      pStmt = 0;
      if (sqlite3_prepare_v2([(MNTrace *)self->_trace db], "SELECT id FROM directions ORDER BY id DESC LIMIT 1", -1, &pStmt, 0))
      {
        v3 = GEOFindOrCreateLog();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_5;
        }

        v14 = sqlite3_errmsg([(MNTrace *)self->_trace db]);
        *buf = 136315138;
        v24 = v14;
        goto LABEL_4;
      }

      if ((sqlite3_step(pStmt) - 102) > 0xFFFFFFFD)
      {
        self->_routeRequestCount = sqlite3_column_int(pStmt, 0);
        sqlite3_finalize(pStmt);
        v20 = 0;
        if (sqlite3_prepare_v2([(MNTrace *)self->_trace db], "SELECT id FROM eta_traffic_updates ORDER BY id DESC LIMIT 1", -1, &v20, 0))
        {
          v3 = GEOFindOrCreateLog();
          if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_5;
          }

          v17 = sqlite3_errmsg([(MNTrace *)self->_trace db]);
          *buf = 136315138;
          v24 = v17;
          goto LABEL_4;
        }

        if ((sqlite3_step(v20) - 102) > 0xFFFFFFFD)
        {
          self->_etaTrafficUpdateCount = sqlite3_column_int(v20, 0);
        }

        else
        {
          v18 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = sqlite3_errmsg([(MNTrace *)self->_trace db]);
            *buf = 136315138;
            v24 = v19;
          }
        }

        v8 = v20;
      }

      else
      {
        v15 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = sqlite3_errmsg([(MNTrace *)self->_trace db]);
          *buf = 136315138;
          v24 = v16;
        }

        v8 = pStmt;
      }
    }

    else
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = sqlite3_errmsg([(MNTrace *)self->_trace db]);
        *buf = 136315138;
        v24 = v7;
      }

      v8 = ppStmt;
    }

    sqlite3_finalize(v8);
    goto LABEL_11;
  }

  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = sqlite3_errmsg([(MNTrace *)self->_trace db]);
    *buf = 136315138;
    v24 = v4;
LABEL_4:
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, v5, buf, 0xCu);
  }

LABEL_5:

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_initializeTraceDB
{
  v28 = *MEMORY[0x1E69E9840];
  if (!self->_corrupted)
  {
    v3 = +[MNTrace mainSchema];
    if (!v3)
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "Failed to load SQL setup script.", buf, 2u);
      }
    }

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Trace DB successfully initialized.", buf, 2u);
    }

    uTF8String = [v3 UTF8String];
    trace = [(MNTraceRecorder *)self trace];
    LODWORD(uTF8String) = sqlite3_exec([trace db], uTF8String, 0, 0, 0);

    if (uTF8String)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = sqlite3_errmsg([(MNTrace *)self->_trace db]);
        *buf = 136315138;
        v27 = v9;
        _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "Error executing trace schema: %s", buf, 0xCu);
      }
    }

    trace2 = [(MNTraceRecorder *)self trace];
    sqlite3_db_config([trace2 db], 1002, 1, 0);

    if ([(MNTraceRecorder *)self _recordInfo])
    {
      ppStmt = 0;
      trace3 = [(MNTraceRecorder *)self trace];
      v12 = sqlite3_prepare_v2([trace3 db], "INSERT OR IGNORE INTO navigation_event_types (event_id, event_name) VALUES (?, ?)", 81, &ppStmt, 0);

      if (v12)
      {
        v13 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = sqlite3_errmsg([(MNTrace *)self->_trace db]);
          *buf = 136315138;
          v27 = v14;
        }

LABEL_17:
        sqlite3_finalize(ppStmt);
      }

      else
      {
        v15 = 0;
        while (1)
        {
          v16 = off_1E842B208[v15];
          v17 = sqlite3_bind_int(ppStmt, 1, v15);
          if (v17)
          {
            v21 = v17;
            selfCopy2 = self;
            v23 = 282;
            goto LABEL_29;
          }

          v18 = sqlite3_bind_text(ppStmt, 2, [(__CFString *)v16 UTF8String], -1, 0);
          if (v18)
          {
            break;
          }

          if (sqlite3_step(ppStmt) != 101)
          {
            v19 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = sqlite3_errmsg([(MNTrace *)self->_trace db]);
              *buf = 136315138;
              v27 = v20;
            }
          }

          sqlite3_reset(ppStmt);

          if (++v15 == 31)
          {
            goto LABEL_17;
          }
        }

        v21 = v18;
        selfCopy2 = self;
        v23 = 283;
LABEL_29:
        [(MNTraceRecorder *)selfCopy2 _logSqliteErrorWithResult:v21 file:"/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTraceRecorder.m" line:v23];
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isTracePathValid:(id)valid
{
  v3 = MEMORY[0x1E696AE70];
  validCopy = valid;
  v5 = [v3 regularExpressionWithPattern:@"[\n\x00\\\\]+" options:0 error:0];
  v6 = [v5 numberOfMatchesInString:validCopy options:0 range:{0, objc_msgSend(validCopy, "length")}];

  return v6 == 0;
}

- (void)_logSqliteErrorWithResult:(int)result file:(const char *)file line:(int)line
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    trace = [(MNTraceRecorder *)self trace];
    v13 = 136446978;
    fileCopy = file;
    v15 = 1024;
    lineCopy = line;
    v17 = 1024;
    resultCopy = result;
    v19 = 2082;
    v20 = sqlite3_errmsg([trace db]);
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%d  SQL error: (%d) %{public}s", &v13, 0x22u);
  }

  if (!self->_corrupted)
  {
    self->_corrupted = 1;
    errorHandler = self->_errorHandler;
    if (errorHandler)
    {
      dispatch_async(MEMORY[0x1E69E96A0], errorHandler);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_dispatchWrite:(id)write
{
  writeCopy = write;
  trace = [(MNTraceRecorder *)self trace];
  writeGroup = [trace writeGroup];
  trace2 = [(MNTraceRecorder *)self trace];
  writeQueue = [trace2 writeQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__MNTraceRecorder__dispatchWrite___block_invoke;
  v10[3] = &unk_1E842F580;
  v10[4] = self;
  v11 = writeCopy;
  v9 = writeCopy;
  dispatch_group_async(writeGroup, writeQueue, v10);
}

void __34__MNTraceRecorder__dispatchWrite___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) trace];
  v3 = [v2 db];

  if (v3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (void)saveTraceSynchronously
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_closed)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "!_closed";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v8, 0x16u);
    }
  }

  [(MNTraceRecorder *)self saveTraceWithCompletionHandler:0];
  trace = [(MNTraceRecorder *)self trace];
  writeGroup = [trace writeGroup];
  dispatch_group_wait(writeGroup, 0xFFFFFFFFFFFFFFFFLL);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)saveTraceWithCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (self->_closed)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot complete operation on closed trace."];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "!_closed";
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    tracePath = self->_tracePath;
    *buf = 138477827;
    v15 = tracePath;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Closing trace: %{private}@", buf, 0xCu);
  }

  self->_closed = 1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__MNTraceRecorder_saveTraceWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E842F580;
  v12[4] = self;
  v13 = handlerCopy;
  v7 = handlerCopy;
  [(MNTraceRecorder *)self _dispatchWrite:v12];
  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  v9 = *MEMORY[0x1E69E9840];
}

void __50__MNTraceRecorder_saveTraceWithCompletionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _closeTraceDB];
  v2 = *(*(a1 + 32) + 16);
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
    v6 = *MEMORY[0x1E695DAE8];
    v7 = *MEMORY[0x1E695DAF0];
    v17 = 0;
    v8 = [v5 setResourceValue:v6 forKey:v7 error:&v17];
    v9 = v17;
    v10 = v9;
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543619;
        v19 = v10;
        v20 = 2113;
        v21 = v2;
        _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "Failed applying file protection to %{public}@, error: %{private}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v2;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "Failed applying file protection to %{public}@, error: File not found", buf, 0xCu);
    }
  }

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(*(a1 + 32) + 16);
    *buf = 138477827;
    v19 = v14;
    _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEFAULT, "Finished closing trace: %{private}@", buf, 0xCu);
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)startWritingTraceToPath:(id)path traceType:(int64_t)type withErrorHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  handlerCopy = handler;
  if (self->_trace)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"startWritingTraceToPath: called when trace was already created"];
    v24 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "_trace == nil";
      v33 = 2112;
      v34 = v23;
      _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  v11 = [(MNTraceRecorder *)self _isTracePathValid:pathCopy];
  v12 = GEOFindOrCreateLog();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v32 = pathCopy;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEFAULT, "Start writing trace to path: %{private}@", buf, 0xCu);
    }

    v14 = objc_alloc_init(MNTrace);
    trace = self->_trace;
    self->_trace = v14;

    objc_storeStrong(&self->_tracePath, path);
    self->_traceType = type;
    if (!self->_recordingStartDate)
    {
      v16 = [MEMORY[0x1E695DF00] now];
      recordingStartDate = self->_recordingStartDate;
      self->_recordingStartDate = v16;
    }

    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_DEFAULT, "Setting recording start time to current time", buf, 2u);
    }

    writeQueue = [(MNTrace *)self->_trace writeQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__MNTraceRecorder_startWritingTraceToPath_traceType_withErrorHandler___block_invoke;
    block[3] = &unk_1E842F448;
    v26 = pathCopy;
    selfCopy = self;
    v28 = handlerCopy;
    dispatch_async(writeQueue, block);

    v20 = v26;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138477827;
    v32 = pathCopy;
    _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_ERROR, "Error opening trace recorder due to invalid path: %{private}@", buf, 0xCu);
  }

  if (handlerCopy)
  {
    v29[0] = *MEMORY[0x1E696A578];
    v29[1] = @"path";
    v30[0] = @"Invalid path";
    v30[1] = pathCopy;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MNTraceErrorDomain" code:10 userInfo:v20];
    (*(handlerCopy + 2))(handlerCopy, v21);

LABEL_14:
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __70__MNTraceRecorder_startWritingTraceToPath_traceType_withErrorHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 fileExistsAtPath:*(a1 + 32)];

  if (v3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138477827;
      v21 = v5;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "File already exists at path: %{private}@. Attempting to append", buf, 0xCu);
    }
  }

  if ([*(*(a1 + 40) + 8) startWritingTraceToPath:*(a1 + 32)])
  {
    v6 = *(a1 + 40);
    if (v3)
    {
      [v6 _updateForExistingTrace];
    }

    else
    {
      [v6 _initializeTraceDB];
      v12 = *(a1 + 40);
      v13 = *(v12 + 56);
      [*(v12 + 32) timeIntervalSinceReferenceDate];
      [v13 bindParameter:@":recording_start_time" double:?];
      [*(*(a1 + 40) + 56) execute];
    }

    [*(a1 + 40) _prepareStatements];
  }

  else if (*(a1 + 48))
  {
    v18 = *MEMORY[0x1E696A578];
    v19 = @"Failed to begin writing trace to file.";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MNTraceErrorDomain" code:8 userInfo:v7];
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v8;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Error: %{public}@", buf, 0xCu);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__MNTraceRecorder_startWritingTraceToPath_traceType_withErrorHandler___block_invoke_37;
    v15[3] = &unk_1E842F580;
    v10 = *(a1 + 48);
    v16 = v8;
    v17 = v10;
    v11 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], v15);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (MNTraceRecorder)init
{
  v6.receiver = self;
  v6.super_class = MNTraceRecorder;
  v2 = [(MNTraceRecorder *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lastPauseSpokenAudio = 0;
    v2->_lastVoiceGuidanceSetting = -1;
    v2->_lastLaneEventHash = 0;
    v4 = v2;
  }

  return v3;
}

@end