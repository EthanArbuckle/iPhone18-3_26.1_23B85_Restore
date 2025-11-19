@interface MNNavigationTraceManager
+ (void)_clearOldTracesInDirectory:(id)a3 matchingExpression:(id)a4 beforeDate:(id)a5;
+ (void)clearOldTraces;
- (GEOMotionContextProviderDelegate)motionDelegate;
- (MNLocationProviderDelegate)delegate;
- (MNNavigationTraceManagerDelegate)traceManagerDelegate;
- (MNVirtualGarageProviderDelegate)virtualGarageDelegate;
- (id)_defaultTraceNameForDestination:(id)a3 isSimulation:(BOOL)a4;
- (id)hardwareModel;
- (unint64_t)_startIndexForNavigation;
- (unint64_t)traceVersion;
- (void)_copyTraceToCrashReporterDirectory:(id)a3;
- (void)_createSymlinkForTracePath:(id)a3;
- (void)_recordEnvironmentInfo:(id)a3;
- (void)_recordStylesheet:(id)a3;
- (void)close;
- (void)dealloc;
- (void)openForPlaybackWithTracePath:(id)a3;
- (void)openForSimulationWithRoute:(id)a3 traceRecordingData:(id)a4 traceNameOverride:(id)a5;
- (void)saveRoutePlanningTrace:(id)a3;
- (void)startUpdatingLocation;
- (void)tracePlayer:(id)a3 didPlayAtTime:(double)a4;
- (void)tracePlayer:(id)a3 didReceiveLocationError:(id)a4;
- (void)tracePlayer:(id)a3 didSeekToTime:(double)a4 fromTime:(double)a5 location:(id)a6;
- (void)tracePlayer:(id)a3 didUpdateEVData:(id)a4;
- (void)tracePlayer:(id)a3 didUpdateHeading:(id)a4;
- (void)tracePlayer:(id)a3 didUpdateLocation:(id)a4;
- (void)tracePlayer:(id)a3 didUpdateMotion:(unint64_t)a4 exitType:(unint64_t)a5 confidence:(unint64_t)a6;
- (void)tracePlayer:(id)a3 didUpdateVehicleHeading:(double)a4 timestamp:(id)a5;
- (void)tracePlayer:(id)a3 didUpdateVehicleSpeed:(double)a4 timestamp:(id)a5;
- (void)tracePlayerDidPause:(id)a3;
- (void)tracePlayerDidPauseLocationUpdates:(id)a3;
- (void)tracePlayerDidResume:(id)a3;
- (void)tracePlayerDidResumeLocationUpdates:(id)a3;
- (void)updatedVehicleStateWithHandler:(id)a3;
@end

@implementation MNNavigationTraceManager

- (MNNavigationTraceManagerDelegate)traceManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_traceManagerDelegate);

  return WeakRetained;
}

- (MNVirtualGarageProviderDelegate)virtualGarageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_virtualGarageProviderDelegate);

  return WeakRetained;
}

- (GEOMotionContextProviderDelegate)motionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_motionContextProviderDelegate);

  return WeakRetained;
}

- (MNLocationProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_locationProviderDelegate);

  return WeakRetained;
}

- (void)updatedVehicleStateWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    if (self->_tracePlayer)
    {
      v5 = objc_alloc_init(MNTraceEVDataRow);
      [(MNTracePlayer *)self->_tracePlayer position];
      [(MNTraceEVDataRow *)v5 setTimestamp:?];
      v6 = [(MNTracePlayer *)self->_tracePlayer trace];
      v7 = [v6 evData];

      v8 = [v7 indexOfObject:v5 inSortedRange:0 options:objc_msgSend(v7 usingComparator:{"count"), 1024, &__block_literal_global_3378}];
      if (v8 >= [v7 count])
      {
        (*(v12 + 2))(v12, 0, 0);
      }

      else
      {
        v9 = [v7 objectAtIndexedSubscript:v8];
        v10 = [v9 vehicle];
        (*(v12 + 2))(v12, v10, 0);
        WeakRetained = objc_loadWeakRetained(&self->_virtualGarageProviderDelegate);
        [WeakRetained virtualGarageProvider:self didUpdateSelectedVehicle:v10];
      }
    }

    else
    {
      (*(v4 + 2))(v4, 0, 0);
    }

    v4 = v12;
  }
}

uint64_t __59__MNNavigationTraceManager_updatedVehicleStateWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (unint64_t)traceVersion
{
  v2 = [(MNTracePlayer *)self->_tracePlayer trace];
  v3 = [v2 originalVersion];

  return v3;
}

- (void)startUpdatingLocation
{
  if ((self->_navigationType & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v3 = [(MNNavigationTraceManager *)self _startIndexForNavigation];
    tracePlayer = self->_tracePlayer;

    [(MNTracePlayer *)tracePlayer startAtLocationIndex:v3];
  }

  else
  {
    [(MNTracePlayer *)self->_tracePlayer start];
    v5 = self->_tracePlayer;

    [(MNTracePlayer *)v5 pause];
  }
}

- (void)tracePlayer:(id)a3 didUpdateEVData:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_virtualGarageProviderDelegate);
  [WeakRetained virtualGarageProvider:self didUpdateSelectedVehicle:v5];
}

- (void)tracePlayer:(id)a3 didUpdateVehicleSpeed:(double)a4 timestamp:(id)a5
{
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_locationProviderDelegate);
  [WeakRetained locationProvider:self didUpdateVehicleSpeed:v7 timestamp:a4];
}

- (void)tracePlayer:(id)a3 didUpdateVehicleHeading:(double)a4 timestamp:(id)a5
{
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_locationProviderDelegate);
  [WeakRetained locationProvider:self didUpdateVehicleHeading:v7 timestamp:a4];
}

- (void)tracePlayer:(id)a3 didUpdateMotion:(unint64_t)a4 exitType:(unint64_t)a5 confidence:(unint64_t)a6
{
  WeakRetained = objc_loadWeakRetained(&self->_motionContextProviderDelegate);
  [WeakRetained motionContextProvider:self didUpdateMotion:a4 exitType:a5 confidence:a6];
}

- (void)tracePlayer:(id)a3 didUpdateHeading:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_locationProviderDelegate);
  [WeakRetained locationProvider:self didUpdateHeading:v5];
}

- (void)tracePlayerDidResumeLocationUpdates:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_locationProviderDelegate);
  [WeakRetained locationProviderDidResumeLocationUpdates:self];
}

- (void)tracePlayerDidPauseLocationUpdates:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_locationProviderDelegate);
  [WeakRetained locationProviderDidPauseLocationUpdates:self];
}

- (void)tracePlayer:(id)a3 didReceiveLocationError:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_locationProviderDelegate);
  [WeakRetained locationProvider:self didReceiveError:v5];
}

- (void)tracePlayer:(id)a3 didUpdateLocation:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_locationProviderDelegate);
  [WeakRetained locationProvider:self didUpdateLocation:v5];
}

- (void)tracePlayer:(id)a3 didPlayAtTime:(double)a4
{
  v7 = objc_alloc_init(MNTracePlaybackDetails);
  [(MNTracePlaybackDetails *)v7 setEventType:4];
  [(MNTracePlaybackDetails *)v7 setCurrentPosition:a4];
  WeakRetained = objc_loadWeakRetained(&self->_traceManagerDelegate);
  [WeakRetained navigationTraceManager:self didUpdateTracePlaybackDetails:v7];
}

- (void)tracePlayer:(id)a3 didSeekToTime:(double)a4 fromTime:(double)a5 location:(id)a6
{
  v9 = objc_alloc_init(MNTracePlaybackDetails);
  [(MNTracePlaybackDetails *)v9 setEventType:5];
  [(MNTracePlaybackDetails *)v9 setCurrentPosition:a4];
  WeakRetained = objc_loadWeakRetained(&self->_traceManagerDelegate);
  [WeakRetained navigationTraceManager:self didUpdateTracePlaybackDetails:v9];
}

- (void)tracePlayerDidResume:(id)a3
{
  v5 = objc_alloc_init(MNTracePlaybackDetails);
  [(MNTracePlaybackDetails *)v5 setEventType:2];
  WeakRetained = objc_loadWeakRetained(&self->_traceManagerDelegate);
  [WeakRetained navigationTraceManager:self didUpdateTracePlaybackDetails:v5];
}

- (void)tracePlayerDidPause:(id)a3
{
  v5 = objc_alloc_init(MNTracePlaybackDetails);
  [(MNTracePlaybackDetails *)v5 setEventType:3];
  WeakRetained = objc_loadWeakRetained(&self->_traceManagerDelegate);
  [WeakRetained navigationTraceManager:self didUpdateTracePlaybackDetails:v5];
}

- (void)_copyTraceToCrashReporterDirectory:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v4 fileExistsAtPath:v3])
  {
    v15 = 0;
    v5 = [v4 createDirectoryAtPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Maps/NavTraces" withIntermediateDirectories:1 attributes:0 error:&v15];
    v6 = v15;
    if (v5)
    {
      v7 = [v3 lastPathComponent];
      v8 = [@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Maps/NavTraces" stringByAppendingPathComponent:v7];

      if ([v4 fileExistsAtPath:v8])
      {
        v14 = v6;
        [v4 removeItemAtPath:v8 error:&v14];
        v9 = v14;

        v6 = v9;
      }

      if (v6 || (v13 = 0, [v4 copyItemAtPath:v3 toPath:v8 error:&v13], (v6 = v13) != 0))
      {
        v10 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v17 = v6;
          _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Error copying trace to CrashReporter directory: %@", buf, 0xCu);
        }
      }

      else
      {
        v6 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v17 = v3;
          v18 = 2112;
          v19 = v8;
          _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@ successfully copied to %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v6;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Error creating NavTraces directory in CrashReporter: %@", buf, 0xCu);
      }

      v8 = @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Maps/NavTraces";
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v3;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "Error copying trace to CrashReporter directory because origin trace does not exist: %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_createSymlinkForTracePath:(id)a3
{
  v9 = a3;
  if (GEOConfigGetBOOL())
  {
    v3 = +[MNFilePaths navTracesDirectoryPath];
    v4 = [v3 stringByAppendingPathComponent:@"LatestTrace.navtrace"];

    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v5 attributesOfItemAtPath:v4 error:0];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696A3D8]];
    v8 = *MEMORY[0x1E696A3F0];

    if (v7 == v8)
    {
      [v5 removeItemAtPath:v4 error:0];
    }

    [v5 createSymbolicLinkAtPath:v4 withDestinationPath:v9 error:0];
  }
}

- (void)_recordStylesheet:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = GEOResourcesPath();
  v14 = v3;
  v5 = [v3 contentsOfDirectoryAtPath:v4 error:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 hasPrefix:@"scene"] && objc_msgSend(v10, "hasSuffix:", @".styl"))
        {
          v11 = [v4 stringByAppendingPathComponent:v10];
          v12 = [v14 contentsAtPath:v11];

          [v15 recordStylesheet:v10 data:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_recordEnvironmentInfo:(id)a3
{
  v4 = MEMORY[0x1E69A2398];
  v5 = a3;
  v16 = [v4 sharedPlatform];
  v6 = *MEMORY[0x1E69A1A10];
  v7 = *(MEMORY[0x1E69A1A10] + 8);
  v8 = GEOConfigGetString();
  v9 = [MEMORY[0x1E69A2478] modernManager];
  v10 = [v9 activeTileGroup];
  v11 = [v10 releaseInfo];

  v12 = [v16 productName];
  [v5 recordEnvironmentInfo:@"ProductName" value:v12];

  v13 = [v16 buildVersion];
  [v5 recordEnvironmentInfo:@"BuildVersion" value:v13];

  v14 = [v16 hardwareIdentifier];
  [v5 recordEnvironmentInfo:@"HardwareIdentifier" value:v14];

  v15 = [(MNNavigationTraceManager *)self hardwareModel];
  [v5 recordEnvironmentInfo:@"HardwareModel" value:v15];

  [v5 recordEnvironmentInfo:@"EnvironmentName" value:v8];
  [v5 recordEnvironmentInfo:@"EnvironmentReleaseName" value:v11];
}

- (id)hardwareModel
{
  hardwareModel = self->_hardwareModel;
  if (!hardwareModel)
  {
    v4 = MGCopyAnswer();
    v5 = self->_hardwareModel;
    self->_hardwareModel = v4;

    hardwareModel = self->_hardwareModel;
  }

  return hardwareModel;
}

- (id)_defaultTraceNameForDestination:(id)a3 isSimulation:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E696AB78];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  [v7 setDateFormat:@"yyyy-MM-dd-HHmmss"];
  v8 = [MEMORY[0x1E695DFE8] localTimeZone];
  [v7 setTimeZone:v8];

  v9 = [MEMORY[0x1E695DF00] date];
  v10 = [v7 stringFromDate:v9];

  v11 = [v6 navDisplayName];

  v12 = [v11 stringByReplacingOccurrencesOfString:@"/" withString:@"-"];

  if (!v12)
  {
    v12 = @"Unknown";
  }

  if (v4)
  {
    v13 = @"%@_%@_(Simulation)";
  }

  else
  {
    v13 = @"%@_%@";
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:v13, v10, v12];

  return v14;
}

- (unint64_t)_startIndexForNavigation
{
  v2 = [(MNTracePlayer *)self->_tracePlayer trace];
  v3 = [v2 locations];
  v4 = [v3 count] > 1;

  return v4;
}

- (void)close
{
  v3 = [MEMORY[0x1E696AE30] processInfo];
  if ([v3 _navigation_isNavd])
  {
    v4 = +[MNLocationManager shared];
  }

  else
  {
    v4 = 0;
  }

  traceRecorder = self->_traceRecorder;
  if (traceRecorder)
  {
    v6 = [(MNTraceRecorder *)traceRecorder tracePath];
    v7 = self->_traceRecorder;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __33__MNNavigationTraceManager_close__block_invoke;
    v17 = &unk_1E8430D50;
    v18 = self;
    v19 = v6;
    v8 = v6;
    [(MNTraceRecorder *)v7 saveTraceWithCompletionHandler:&v14];
    [v4 setLocationRecorder:{0, v14, v15, v16, v17, v18}];
    v9 = +[MNVirtualGarageManager sharedManager];
    [v9 setTraceRecorder:0];

    v10 = self->_traceRecorder;
    self->_traceRecorder = 0;
  }

  else if (self->_tracePlayer)
  {
    v11 = +[MNVirtualGarageManager sharedManager];
    [v11 setProvider:0];

    [(MNTracePlayer *)self->_tracePlayer stop];
    [(MNTracePlayer *)self->_tracePlayer unregisterObserver:self];
    tracePlayer = self->_tracePlayer;
    self->_tracePlayer = 0;

    if (self->_initialNetworkState)
    {
      [MNTraceNetworkConditionHelper setCurrentState:?];
      initialNetworkState = self->_initialNetworkState;
      self->_initialNetworkState = 0;
    }
  }
}

void __33__MNNavigationTraceManager_close__block_invoke(uint64_t a1)
{
  *&v14[5] = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 24) & 1) == 0 && GEOConfigGetBOOL())
  {
    [*(a1 + 32) _copyTraceToCrashReporterDirectory:*(a1 + 40)];
  }

  v12 = 66053;
  v2 = fsctl([*(a1 + 40) fileSystemRepresentation], 0xC0084A44uLL, &v12, 0);
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      *buf = 67109378;
      v14[0] = v2;
      LOWORD(v14[1]) = 2114;
      *(&v14[1] + 2) = v5;
      v6 = "Error: Failed to mark nav trace as purgeable: %i -- %{public}@";
      v7 = v4;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 18;
LABEL_9:
      _os_log_impl(&dword_1D311E000, v7, v8, v6, buf, v9);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    *buf = 138543362;
    *v14 = v10;
    v6 = "Successfully marked nav trace as purgeable: %{public}@";
    v7 = v4;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 12;
    goto LABEL_9;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)saveRoutePlanningTrace:(id)a3
{
  v37 = a3;
  if (GEOConfigGetBOOL())
  {
    v4 = [v37 waypoints];
    v5 = [v4 lastObject];
    v6 = [(MNNavigationTraceManager *)self _defaultTraceNameForDestination:v5 isSimulation:0];

    v7 = +[MNFilePaths routePlanningTraceExtension];
    v8 = +[MNFilePaths routePlanningTracesDirectoryPath];
    v36 = v6;
    v9 = [MNFilePaths tracePathForTraceName:v6 extension:v7 directoryPath:v8];

    v10 = v9;
    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = v10;
    if ([v11 fileExistsAtPath:v10])
    {
      v13 = 2;
      v12 = v10;
      do
      {
        v14 = [v10 stringByDeletingPathExtension];
        v15 = [v14 stringByAppendingFormat:@" %u", v13];

        v16 = +[MNFilePaths routePlanningTraceExtension];
        v12 = [v15 stringByAppendingPathExtension:v16];

        v13 = (v13 + 1);
      }

      while (([v11 fileExistsAtPath:v12] & 1) != 0);
    }

    v17 = objc_alloc_init(MNTraceRecorder);
    traceRecorder = self->_traceRecorder;
    self->_traceRecorder = v17;

    [(MNTraceRecorder *)self->_traceRecorder startWritingTraceToPath:v12 traceType:1 withErrorHandler:0];
    v35 = [v37 initialUserLocation];
    v19 = [v35 timestamp];
    [(MNTraceRecorder *)self->_traceRecorder setRecordingStartDate:v19];

    v20 = [(MNTraceRecorder *)self->_traceRecorder recordingStartDate];
    [v20 timeIntervalSinceReferenceDate];
    v22 = v21;

    [v37 initialDirectionsRequestTimestamp];
    v23 = 0.0;
    v24 = 0.0;
    if (v25 > 0.0)
    {
      [v37 initialDirectionsRequestTimestamp];
      v24 = v26 - v22;
    }

    [v37 initialDirectionsResponseTimestamp];
    if (v27 > 0.0)
    {
      [v37 initialDirectionsResponseTimestamp];
      v23 = v28 - v22;
    }

    v29 = self->_traceRecorder;
    v30 = [v37 initialDirectionsRequest];
    v31 = [v37 initialDirectionsResponse];
    v32 = [v37 initialDirectionsRequestError];
    v33 = [v37 waypoints];
    v34 = [v37 initialDirectionsResponse];
    -[MNTraceRecorder recordDirectionsRequest:response:error:waypoints:selectedRouteIndex:requestTimestamp:responseTimestamp:](v29, "recordDirectionsRequest:response:error:waypoints:selectedRouteIndex:requestTimestamp:responseTimestamp:", v30, v31, v32, v33, [v34 selectedRouteIndex], v24, v23);

    [(MNTraceRecorder *)self->_traceRecorder recordLocation:v35 timestamp:0.0];
    [(MNNavigationTraceManager *)self close];
  }
}

- (void)openForSimulationWithRoute:(id)a3 traceRecordingData:(id)a4 traceNameOverride:(id)a5
{
  v68 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (self->_traceRecorder)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Trace recording already in progress."];
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v59 = "[MNNavigationTraceManager openForSimulationWithRoute:traceRecordingData:traceNameOverride:]";
      v60 = 2080;
      v61 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNNavigationTraceManager.m";
      v62 = 1024;
      v63 = 182;
      v64 = 2080;
      v65 = "NO";
      v66 = 2112;
      v67 = v12;
LABEL_7:
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (self->_tracePlayer)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Trace playback already in progress."];
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v59 = "[MNNavigationTraceManager openForSimulationWithRoute:traceRecordingData:traceNameOverride:]";
      v60 = 2080;
      v61 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNNavigationTraceManager.m";
      v62 = 1024;
      v63 = 187;
      v64 = 2080;
      v65 = "NO";
      v66 = 2112;
      v67 = v12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  v15 = @"LatestSimulation";
  v57 = v10;
  if (v10)
  {
    v15 = v10;
  }

  v16 = v15;
  v17 = +[MNFilePaths navTraceExtension];
  v18 = +[MNFilePaths navTracesDirectoryPath];
  v56 = v16;
  v19 = [MNFilePaths tracePathForTraceName:v16 extension:v17 directoryPath:v18];

  v20 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v20 fileExistsAtPath:v19])
  {
    [v20 removeItemAtPath:v19 error:0];
  }

  [(MNNavigationTraceManager *)self _createSymlinkForTracePath:v19, v20];
  self->_isSimulation = 1;
  v21 = objc_alloc_init(MNTraceRecorder);
  traceRecorder = self->_traceRecorder;
  self->_traceRecorder = v21;

  v55 = v19;
  [(MNTraceRecorder *)self->_traceRecorder startWritingTraceToPath:v19 traceType:0 withErrorHandler:0];
  [(MNTraceRecorder *)self->_traceRecorder setIsSimulation:1];
  [(MNTraceRecorder *)self->_traceRecorder resetLocationsForSimulation];
  [(MNNavigationTraceManager *)self _recordEnvironmentInfo:self->_traceRecorder];
  [(MNNavigationTraceManager *)self _recordStylesheet:self->_traceRecorder];
  v23 = [(MNTraceRecorder *)self->_traceRecorder recordingStartDate];
  [v23 timeIntervalSinceReferenceDate];
  v25 = v24;

  v26 = self->_traceRecorder;
  v27 = [v9 initialDirectionsRequest];
  v28 = [v9 initialDirectionsResponse];
  v29 = [v9 initialDirectionsRequestError];
  v30 = [v9 waypoints];
  v31 = [v8 route];
  v32 = [v31 indexInResponse];
  [v9 initialDirectionsRequestTimestamp];
  v34 = v33 - v25;
  [v9 initialDirectionsResponseTimestamp];
  [(MNTraceRecorder *)v26 recordDirectionsRequest:v27 response:v28 error:v29 waypoints:v30 selectedRouteIndex:v32 requestTimestamp:v34 responseTimestamp:v35 - v25];

  v36 = self->_traceRecorder;
  v37 = [v8 route];
  v38 = [v37 indexInResponse];
  v39 = [v9 initialDirectionsResponse];
  v40 = [v39 directionsResponseID];
  [(MNTraceRecorder *)v36 recordRouteChangeWithIndex:v38 directionsResponseID:v40 etauResponseID:0 rerouteReason:0];

  [(MNTraceRecorder *)self->_traceRecorder beginTransaction];
  v41 = objc_opt_new();
  [v41 setSimulationType:1];
  [v41 setInitialRoute:v8];
  v42 = [[MNSimulatedLocationGenerator alloc] initWithSimulationParameters:v41];
  v43 = [(MNSimulatedLocationGenerator *)v42 nextSimulatedLocationWithElapsedTime:0.0];
  [(MNTraceRecorder *)self->_traceRecorder timeSinceRecordingBegan];
  if (v43)
  {
    v45 = v44;
    do
    {
      [(MNTraceRecorder *)self->_traceRecorder recordLocation:v43 rawLocation:v43 timestamp:v45];
      v45 = v45 + 1.0;
      v46 = [(MNSimulatedLocationGenerator *)v42 nextSimulatedLocationWithElapsedTime:1.0];

      v43 = v46;
    }

    while (v46);
  }

  [(MNTraceRecorder *)self->_traceRecorder endTransaction];
  [(MNTraceRecorder *)self->_traceRecorder saveTraceSynchronously];
  v47 = self->_traceRecorder;
  self->_traceRecorder = 0;

  v48 = [[MNTracePlayer alloc] initWithPath:v55];
  tracePlayer = self->_tracePlayer;
  self->_tracePlayer = v48;

  GEOConfigGetDouble();
  [(MNTracePlayer *)self->_tracePlayer setSpeedMultiplier:?];
  [(MNTracePlayer *)self->_tracePlayer setShouldPlayETARequests:GEOConfigGetBOOL()];
  [(MNTracePlayer *)self->_tracePlayer setShouldUpdateRouteWhenJumping:0];
  [(MNTracePlayer *)self->_tracePlayer registerObserver:self];
  v50 = objc_alloc_init(MNTracePlaybackDetails);
  [(MNTracePlaybackDetails *)v50 setEventType:1];
  [(MNTracePlaybackDetails *)v50 setTracePath:v55];
  [(MNTracePlayer *)self->_tracePlayer duration];
  [(MNTracePlaybackDetails *)v50 setTraceDuration:?];
  v51 = [(MNTracePlayer *)self->_tracePlayer trace];
  v52 = [v51 serializableBookmarks];
  [(MNTracePlaybackDetails *)v50 setBookmarks:v52];

  WeakRetained = objc_loadWeakRetained(&self->_traceManagerDelegate);
  [WeakRetained navigationTraceManager:self didUpdateTracePlaybackDetails:v50];

  v11 = v57;
LABEL_9:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)openForPlaybackWithTracePath:(id)a3
{
  v4 = a3;
  v5 = +[MNTraceNetworkConditionHelper getCurrentState];
  initialNetworkState = self->_initialNetworkState;
  self->_initialNetworkState = v5;

  v7 = [[MNTracePlayer alloc] initWithPath:v4];
  tracePlayer = self->_tracePlayer;
  self->_tracePlayer = v7;

  GEOConfigGetDouble();
  [(MNTracePlayer *)self->_tracePlayer setSpeedMultiplier:?];
  [(MNTracePlayer *)self->_tracePlayer setShouldUpdateRouteWhenJumping:GEOConfigGetBOOL()];
  [(MNTracePlayer *)self->_tracePlayer setShouldPlayETARequests:GEOConfigGetBOOL()];
  [(MNTracePlayer *)self->_tracePlayer setShouldPlayNetworkEvents:GEOConfigGetBOOL()];
  [(MNTracePlayer *)self->_tracePlayer registerObserver:self];
  v25 = [(MNTracePlayer *)self->_tracePlayer trace];
  v9 = objc_alloc_init(MNTracePlaybackDetails);
  [(MNTracePlaybackDetails *)v9 setEventType:1];
  [(MNTracePlaybackDetails *)v9 setTracePath:v4];

  [(MNTracePlayer *)self->_tracePlayer duration];
  [(MNTracePlaybackDetails *)v9 setTraceDuration:?];
  v10 = [v25 serializableBookmarks];
  [(MNTracePlaybackDetails *)v9 setBookmarks:v10];

  v11 = [v25 locations];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [v25 miscInfo];
    v14 = [v13 objectForKeyedSubscript:@"pedestrian_trace_path"];

    v15 = [v25 miscInfo];
    v16 = [v15 objectForKeyedSubscript:@"pedestrian_trace_relative_timestamp"];

    if (v14 && v16)
    {
      v17 = [v14 stringValue];
      [(MNTracePlaybackDetails *)v9 setPedestrianTracePath:v17];

      v18 = [v25 locations];
      v19 = [v18 objectAtIndexedSubscript:1];

      [v16 doubleValue];
      v21 = v20;
      [v19 timestamp];
      [(MNTracePlaybackDetails *)v9 setPedestrianTraceStartRelativeTimestamp:v21 - v22];
    }
  }

  v23 = +[MNVirtualGarageManager sharedManager];
  [v23 setProvider:self];

  WeakRetained = objc_loadWeakRetained(&self->_traceManagerDelegate);
  [WeakRetained navigationTraceManager:self didUpdateTracePlaybackDetails:v9];
}

- (void)dealloc
{
  [(MNTracePlayer *)self->_tracePlayer unregisterObserver:self];
  if (self->_initialNetworkState)
  {
    [MNTraceNetworkConditionHelper setCurrentState:?];
  }

  v3.receiver = self;
  v3.super_class = MNNavigationTraceManager;
  [(MNNavigationTraceManager *)&v3 dealloc];
}

+ (void)_clearOldTracesInDirectory:(id)a3 matchingExpression:(id)a4 beforeDate:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v10 contentsOfDirectoryAtPath:v7 error:0];
  v30 = v8;
  v29 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self like %@", v8];
  v12 = [v11 filteredArrayUsingPredicate:?];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v12;
  v37 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v37)
  {
    v36 = *v40;
    v35 = *MEMORY[0x1E696A3D8];
    v34 = *MEMORY[0x1E696A3E0];
    v33 = *MEMORY[0x1E696A350];
    v31 = v9;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        v15 = [v7 stringByAppendingPathComponent:v14];
        v16 = [v10 attributesOfItemAtPath:v15 error:0];
        v17 = [v16 objectForKeyedSubscript:v35];

        if (v17 != v34)
        {
          v18 = [v16 objectForKeyedSubscript:v33];
          v19 = v18;
          if (v18)
          {
            if ([v18 compare:v9]== -1)
            {
              v20 = v7;
              v38 = 0;
              v21 = [v10 removeItemAtPath:v15 error:&v38];
              v22 = v38;
              v23 = GEOFindOrCreateLog();
              v24 = v23;
              if (v21)
              {
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v44 = v14;
                  v45 = 2112;
                  v46 = v19;
                  v25 = v24;
                  v26 = OS_LOG_TYPE_DEFAULT;
                  v27 = "Removed trace %@ because its last modified date is too old: %@";
                  goto LABEL_16;
                }
              }

              else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v44 = v14;
                v45 = 2112;
                v46 = v22;
                v25 = v24;
                v26 = OS_LOG_TYPE_ERROR;
                v27 = "Error removing trace %@: %@";
LABEL_16:
                _os_log_impl(&dword_1D311E000, v25, v26, v27, buf, 0x16u);
              }

              v7 = v20;
              v9 = v31;
LABEL_18:
            }

            goto LABEL_20;
          }

          v22 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v44 = v14;
            _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_ERROR, "%@ has no modification date. Ignoring.", buf, 0xCu);
          }

          goto LABEL_18;
        }

LABEL_20:
      }

      v37 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v37);
  }

  v28 = *MEMORY[0x1E69E9840];
}

+ (void)clearOldTraces
{
  global_queue = geo_get_global_queue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MNNavigationTraceManager_CleanTracesDirectory__clearOldTraces__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(global_queue, block);
}

void __64__MNNavigationTraceManager_CleanTracesDirectory__clearOldTraces__block_invoke(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v20 = 0;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_INFO, "Cleaning traces directory.", v20, 2u);
  }

  v3 = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = [MEMORY[0x1E695DF00] now];
  v5 = [v3 dateByAddingUnit:16 value:-1 toDate:v4 options:0];

  v6 = *(a1 + 32);
  v7 = +[MNFilePaths navTracesDirectoryPath];
  [v6 _clearOldTracesInDirectory:v7 matchingExpression:@"*-journal" beforeDate:v5];

  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [MEMORY[0x1E695DF00] now];
  v10 = [v8 dateByAddingUnit:0x2000 value:-1 toDate:v9 options:0];

  v11 = *(a1 + 32);
  v12 = +[MNFilePaths routePlanningTracesDirectoryPath];
  [v11 _clearOldTracesInDirectory:v12 matchingExpression:@"*" beforeDate:v10];

  v13 = *(a1 + 32);
  v14 = +[MNFilePaths routeCreationTracesDirectoryPath];
  [v13 _clearOldTracesInDirectory:v14 matchingExpression:@"*" beforeDate:v10];

  v15 = [MEMORY[0x1E695DEE8] currentCalendar];
  v16 = [MEMORY[0x1E695DF00] now];
  v17 = [v15 dateByAddingUnit:8 value:-3 toDate:v16 options:0];

  v18 = *(a1 + 32);
  v19 = +[MNFilePaths navTracesDirectoryPath];
  [v18 _clearOldTracesInDirectory:v19 matchingExpression:@"*" beforeDate:v17];
}

@end