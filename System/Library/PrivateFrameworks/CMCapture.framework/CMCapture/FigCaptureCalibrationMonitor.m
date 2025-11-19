@interface FigCaptureCalibrationMonitor
+ (void)initializeSharedInstanceWithCaptureSourceBackings:(id)a3;
- (id)_runAndCreateDictionaryForCalibrationContext:(unsigned int)a3 deviceType:(unsigned int)a4 devicePosition:(_DWORD *)a5 errors:;
- (id)apsSphereInteractionCalibrationData;
- (id)autoFocusCalibrationData;
- (id)autoFocusPositionSensorCalibrationData;
- (id)runAutoFocusPositionSensorCalibrationAndGetResultsForDeviceType:(int)a3 devicePosition:(int)a4;
- (id)sphereCalibrationData;
- (id)sphereEndStopCalibrationData;
- (uint64_t)_calibrationShouldAbort;
- (void)_attemptToRunCalibrationForCalibrationContext:(int)a3 deviceType:(int)a4 devicePosition:(char)a5 disableHistoryChecking:(void *)a6 resultsBlock:;
- (void)_notifyOfDeviceMotion;
- (void)_setupActivityAndTriggers:(int)a3 interval:(int)a4 batteryLevel:(void *)a5 calibrationBlock:(char)a6 isRepeating:;
- (void)_setupCalibrationForContext:(uint64_t)a1;
- (void)_setupDuetTriggersAndScheduling;
- (void)_setupRepeatingCalibrationScheduling:(void *)a3 withCalibrationBlock:;
- (void)initWithCaptureSourceBackings:(void *)a1;
- (xpc_object_t)_createDefaultXPCSchedulingParametersWithInterval:(int)a3 batteryLevel:;
@end

@implementation FigCaptureCalibrationMonitor

- (id)autoFocusPositionSensorCalibrationData
{
  os_unfair_lock_lock(&self->_calibrationLock);
  v3 = [(FigCaptureCalibrationContext *)self->_autoFocusPositionSensorCalibrationContext lastSuccessfulCalibrationData];
  os_unfair_lock_unlock(&self->_calibrationLock);
  return v3;
}

- (id)autoFocusCalibrationData
{
  os_unfair_lock_lock(&self->_calibrationLock);
  v3 = [(FigCaptureCalibrationContext *)self->_autoFocusCalibrationContext lastSuccessfulCalibrationData];
  os_unfair_lock_unlock(&self->_calibrationLock);
  return v3;
}

- (id)apsSphereInteractionCalibrationData
{
  os_unfair_lock_lock(&self->_calibrationLock);
  v3 = [(FigCaptureCalibrationContext *)self->_apsSphereInteractionCalibrationContext lastSuccessfulCalibrationData];
  os_unfair_lock_unlock(&self->_calibrationLock);
  return v3;
}

+ (void)initializeSharedInstanceWithCaptureSourceBackings:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__FigCaptureCalibrationMonitor_initializeSharedInstanceWithCaptureSourceBackings___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = a3;
  if (initializeSharedInstanceWithCaptureSourceBackings__initSharedFCSCalibration != -1)
  {
    dispatch_once(&initializeSharedInstanceWithCaptureSourceBackings__initSharedFCSCalibration, block);
  }
}

void *__82__FigCaptureCalibrationMonitor_initializeSharedInstanceWithCaptureSourceBackings___block_invoke(uint64_t a1)
{
  result = [[FigCaptureCalibrationMonitor alloc] initWithCaptureSourceBackings:?];
  sFCCalibration = result;
  return result;
}

- (id)runAutoFocusPositionSensorCalibrationAndGetResultsForDeviceType:(int)a3 devicePosition:(int)a4
{
  v7 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__16;
  v23 = __Block_byref_object_dispose__16;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __111__FigCaptureCalibrationMonitor_runAutoFocusPositionSensorCalibrationAndGetResultsForDeviceType_devicePosition___block_invoke;
  v18[3] = &unk_1E7991B70;
  v18[4] = v7;
  v18[5] = &v19;
  calibrationRunQueue = self->_calibrationRunQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__FigCaptureCalibrationMonitor_runAutoFocusPositionSensorCalibrationAndGetResultsForDeviceType_devicePosition___block_invoke_2;
  block[3] = &unk_1E7991B98;
  v16 = a3;
  v17 = a4;
  block[4] = self;
  block[5] = v18;
  dispatch_async(calibrationRunQueue, block);
  v9 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v13[0] = @"Result";
    v13[1] = @"StatusCode";
    v14[0] = MEMORY[0x1E695E110];
    v14[1] = &unk_1F22439D8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v20[5] = v10;
  }

  dispatch_release(v7);
  v11 = v20[5];
  _Block_object_dispose(&v19, 8);
  return v11;
}

intptr_t __111__FigCaptureCalibrationMonitor_runAutoFocusPositionSensorCalibrationAndGetResultsForDeviceType_devicePosition___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[1] = @"StatusCode";
  v7[0] = [MEMORY[0x1E696AD98] numberWithBool:{a2, @"Result"}];
  v7[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_attemptToRunCalibrationForCalibrationContext:(int)a3 deviceType:(int)a4 devicePosition:(char)a5 disableHistoryChecking:(void *)a6 resultsBlock:
{
  if (a1)
  {
    FigSimpleMutexLock();
    os_unfair_lock_lock((a1 + 36));
    *(a1 + 32) = 0;
    os_unfair_lock_unlock((a1 + 36));
    v22 = 0;
    v23 = &v22;
    v24 = 0x3052000000;
    v25 = __Block_byref_object_copy__16;
    v26 = __Block_byref_object_dispose__16;
    v27 = objc_alloc_init(MEMORY[0x1E69634D0]);
    v12 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v13 = objc_alloc_init(MEMORY[0x1E69634C0]);
    v14 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v15 = [a6 copy];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __140__FigCaptureCalibrationMonitor__attemptToRunCalibrationForCalibrationContext_deviceType_devicePosition_disableHistoryChecking_resultsBlock___block_invoke;
    v21[3] = &unk_1E7991BE8;
    v21[4] = a1;
    [v13 startActivityUpdatesToQueue:v14 withHandler:v21];

    [v12 setMaxConcurrentOperationCount:1];
    *(a1 + 76) = 0;
    [v23[5] setDeviceMotionUpdateInterval:1.0];
    v16 = v23[5];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __140__FigCaptureCalibrationMonitor__attemptToRunCalibrationForCalibrationContext_deviceType_devicePosition_disableHistoryChecking_resultsBlock___block_invoke_2;
    v17[3] = &unk_1E7991C10;
    v17[7] = v15;
    v17[8] = &v22;
    v17[4] = a1;
    v17[5] = a2;
    v18 = a3;
    v19 = a4;
    v20 = a5;
    v17[6] = v13;
    [v16 startDeviceMotionUpdatesUsingReferenceFrame:4 toQueue:v12 withHandler:v17];

    _Block_object_dispose(&v22, 8);
  }
}

- (id)sphereCalibrationData
{
  os_unfair_lock_lock(&self->_calibrationLock);
  v3 = [(FigCaptureCalibrationContext *)self->_sphereCalibrationContext lastSuccessfulCalibrationData];
  os_unfair_lock_unlock(&self->_calibrationLock);
  return v3;
}

- (id)sphereEndStopCalibrationData
{
  os_unfair_lock_lock(&self->_calibrationLock);
  v3 = [(FigCaptureCalibrationContext *)self->_sphereEndStopCalibrationContext lastSuccessfulCalibrationData];
  os_unfair_lock_unlock(&self->_calibrationLock);
  return v3;
}

void __109__FigCaptureCalibrationMonitor__setupActivityAndTriggers_interval_batteryLevel_calibrationBlock_isRepeating___block_invoke(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    v8 = *(*(a1 + 40) + 16);

    v8();
  }

  else if (!state)
  {
    v5 = [(FigCaptureCalibrationMonitor *)*(a1 + 32) _createDefaultXPCSchedulingParametersWithInterval:*(a1 + 52) batteryLevel:?];
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x1E69E9D88], *(a1 + 56));
    v6 = xpc_activity_copy_criteria(activity);
    if (v6)
    {
      v7 = v6;
      if (!xpc_equal(v6, v5))
      {
        xpc_activity_set_criteria(activity, v5);
      }

      xpc_release(v7);
    }

    else
    {
      xpc_activity_set_criteria(activity, v5);
    }

    xpc_release(v5);
  }
}

- (xpc_object_t)_createDefaultXPCSchedulingParametersWithInterval:(int)a3 batteryLevel:
{
  if (!a1)
  {
    return 0;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, *MEMORY[0x1E69E9CB0], a2);
  xpc_dictionary_set_string(v5, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x1E69E9C40], 1);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x1E69E9DC0], 1);
  xpc_dictionary_set_string(v5, *MEMORY[0x1E69E9C70], *MEMORY[0x1E69E9D08]);
  v6 = xpc_dictionary_create(0, 0, 0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v7 = get_DASCTSMinBatteryLevelKeySymbolLoc_ptr;
  v15 = get_DASCTSMinBatteryLevelKeySymbolLoc_ptr;
  if (!get_DASCTSMinBatteryLevelKeySymbolLoc_ptr)
  {
    v8 = DuetActivitySchedulerLibrary();
    v13[3] = dlsym(v8, "_DASCTSMinBatteryLevelKey");
    get_DASCTSMinBatteryLevelKeySymbolLoc_ptr = v13[3];
    v7 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v7)
  {
    [FigCaptureCalibrationMonitor _createDefaultXPCSchedulingParametersWithInterval:batteryLevel:];
  }

  xpc_dictionary_set_int64(v6, [*v7 cStringUsingEncoding:4], a3);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v9 = get_DASCTSMagneticInterferenceSensitivityKeySymbolLoc_ptr;
  v15 = get_DASCTSMagneticInterferenceSensitivityKeySymbolLoc_ptr;
  if (!get_DASCTSMagneticInterferenceSensitivityKeySymbolLoc_ptr)
  {
    v10 = DuetActivitySchedulerLibrary();
    v13[3] = dlsym(v10, "_DASCTSMagneticInterferenceSensitivityKey");
    get_DASCTSMagneticInterferenceSensitivityKeySymbolLoc_ptr = v13[3];
    v9 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v9)
  {
    [FigCaptureCalibrationMonitor _createDefaultXPCSchedulingParametersWithInterval:batteryLevel:];
  }

  [(FigCaptureCalibrationMonitor *)v9 _createDefaultXPCSchedulingParametersWithInterval:v6 batteryLevel:v5];
  return v5;
}

- (void)_setupCalibrationForContext:(uint64_t)a1
{
  if (a1)
  {
    v3[0] = 0;
    v3[1] = v3;
    v3[2] = 0x3052000000;
    v3[3] = __Block_byref_object_copy__16;
    v3[4] = __Block_byref_object_dispose__16;
    v3[5] = a1;
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __60__FigCaptureCalibrationMonitor__setupCalibrationForContext___block_invoke;
    v2[3] = &unk_1E79907B0;
    v2[5] = a2;
    v2[6] = v3;
    v2[4] = a1;
    [(FigCaptureCalibrationMonitor *)a1 _setupRepeatingCalibrationScheduling:a2 withCalibrationBlock:v2];
    _Block_object_dispose(v3, 8);
  }
}

void __140__FigCaptureCalibrationMonitor__attemptToRunCalibrationForCalibrationContext_deviceType_devicePosition_disableHistoryChecking_resultsBlock___block_invoke(uint64_t a1, void *a2)
{
  if (([a2 stationary] & 1) == 0)
  {
    v3 = *(a1 + 32);

    [(FigCaptureCalibrationMonitor *)v3 _notifyOfDeviceMotion];
  }
}

uint64_t __140__FigCaptureCalibrationMonitor__attemptToRunCalibrationForCalibrationContext_deviceType_devicePosition_disableHistoryChecking_resultsBlock___block_invoke_2(uint64_t result, void *a2, uint64_t a3)
{
  if (!*(*(*(result + 64) + 8) + 40))
  {
    return result;
  }

  v3 = a3;
  v5 = result;
  v37 = 0;
  v36 = 0;
  v6 = *(result + 32);
  if (v6)
  {
    v7 = *(v6 + 88);
  }

  else
  {
    v7 = 0.0;
  }

  if (!a2)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *(v6 + 64) = 0;
    v11 = *(result + 32);
    v22 = 0u;
    v23 = 0u;
    v11[6] = 0;
    v11[7] = 0;
    v11[5] = 0;
    v20 = 0u;
    v21 = 0u;
    if (!a3)
    {
      goto LABEL_14;
    }

    v18 = 0uLL;
    v19 = 0uLL;
    goto LABEL_12;
  }

  [a2 magneticField];
  [a2 magneticField];
  [a2 magneticField];
  [a2 magneticField];
  [a2 magneticField];
  [a2 magneticField];
  *(*(v5 + 32) + 64) = sqrt(*(&v30 + 1) * *(&v28 + 1) + *&v34 * *&v32 + *&v27 * *&v25);
  v8 = *(v5 + 32);
  [a2 magneticField];
  *(v8 + 40) = v22;
  *(v8 + 56) = v23;
  [a2 magneticField];
  if (v3 || DWORD2(v21) == -1)
  {
    result = [a2 magneticField];
    if (DWORD2(v19) == -1)
    {
      v9 = *(v5 + 32);
      v10 = *(v9 + 76);
      if (v10 <= 1)
      {
        *(v9 + 76) = v10 + 1;
        return result;
      }
    }

LABEL_12:
    LOBYTE(v3) = 1;
    goto LABEL_14;
  }

  LOBYTE(v3) = 0;
LABEL_14:
  [*(*(*(v5 + 64) + 8) + 40) stopDeviceMotionUpdates];
  v12 = *(v5 + 32);
  if ((v3 & 1) != 0 || *(v12 + 64) >= v7)
  {
    v13 = 0;
    ++*(v12 + 72);
    v15 = *(v5 + 32);
    if (*(v15 + 64) >= v7)
    {
      LODWORD(v14) = 2;
    }

    else
    {
      LODWORD(v14) = 128;
    }
  }

  else
  {
    v17 = 0;
    v13 = [(FigCaptureCalibrationMonitor *)v12 _runAndCreateDictionaryForCalibrationContext:*(v5 + 72) deviceType:*(v5 + 76) devicePosition:&v17 errors:?];
    LODWORD(v14) = v17;
    *(*(v5 + 32) + 72) = 0;
    v15 = *(v5 + 32);
  }

  if ([(FigCaptureCalibrationMonitor *)v15 _calibrationShouldAbort])
  {
    v14 = v14 | 0x20;
  }

  else
  {
    v14 = v14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(v5 + 40) setDisableHistoryChecking:*(v5 + 80)];
  }

  [*(v5 + 40) updateWithNewCalibrationData:v13 orExternalErrors:v14 magneticFieldAttempts:*(*(v5 + 32) + 72) magneticField:&v37 isCalibrationValid:&v36 calibrationStatus:{*(*(v5 + 32) + 40), *(*(v5 + 32) + 48), *(*(v5 + 32) + 56)}];
  v16 = *(v5 + 56);
  if (v16)
  {
    (*(v16 + 16))(v16, v37, v36);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(v5 + 40) setDisableHistoryChecking:0];
  }

  [*(v5 + 48) stopActivityUpdates];
  *(*(*(v5 + 64) + 8) + 40) = 0;
  return FigSimpleMutexUnlock();
}

void __60__FigCaptureCalibrationMonitor__setupCalibrationForContext___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __60__FigCaptureCalibrationMonitor__setupCalibrationForContext___block_invoke_2;
  v2[3] = &unk_1E798FAF8;
  v3 = *(a1 + 40);
  dispatch_async(v1, v2);
}

- (void)initWithCaptureSourceBackings:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v70.receiver = a1;
  v70.super_class = FigCaptureCalibrationMonitor;
  v2 = objc_msgSendSuper2(&v70, sel_init);
  if (v2)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2[1] = v4;
    v12 = OUTLINED_FUNCTION_2_48(v4, v5, v6, v7, v8, v9, v10, v11, v30, v32, a2, v2, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, 0);
    if (v12)
    {
      v13 = v12;
      v14 = MEMORY[0];
      v33 = @"Sphere";
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (MEMORY[0] != v14)
          {
            objc_enumerationMutation(obja);
          }

          v16 = [*(8 * i) attributes];
          v17 = [objc_msgSend(v16 objectForKeyedSubscript:{@"DeviceType", "intValue"}];
          if (v17 <= 0xA && ((1 << v17) & 0x4AC) != 0)
          {
            v26 = v17;
            if (([objc_msgSend(v16 objectForKeyedSubscript:{@"Focus", "BOOLValue"}] & 1) != 0 || (v17 = objc_msgSend(objc_msgSend(v16, "objectForKeyedSubscript:", v33), "BOOLValue"), v17))
            {
              v27 = [MEMORY[0x1E695DF90] dictionary];
              [MEMORY[0x1E696AD98] numberWithInt:v26];
              [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
              [v16 objectForKeyedSubscript:@"NonLocalizedName"];
              [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
              [v16 objectForKeyedSubscript:@"Position"];
              [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
              [MEMORY[0x1E695DF70] array];
              [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
              v17 = [*(v36 + 8) addObject:v27];
            }
          }
        }

        v13 = OUTLINED_FUNCTION_2_48(v17, v18, v19, v20, v21, v22, v23, v24, v31, v33, obja, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v69);
      }

      while (v13);
    }

    v2 = v36;
    *(v36 + 16) = dispatch_queue_create("com.apple.coremedia.apscal", 0);
    *(v36 + 24) = FigSimpleMutexCreate();
    FigGetCFPreferenceDoubleWithDefault();
    *(v36 + 80) = v28;
    FigGetCFPreferenceDoubleWithDefault();
    *(v36 + 88) = v29;
    *(v36 + 72) = FigGetCFPreferenceNumberWithDefault();
    [(FigCaptureCalibrationMonitor *)v36 _setupDuetTriggersAndScheduling];
  }

  return v2;
}

- (void)_setupDuetTriggersAndScheduling
{
  if (a1)
  {
    v2 = a1;
    v44[0] = 0;
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
    v37 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
    if (v37)
    {
      v32 = v3;
      v33 = v4;
      v34 = v5;
      v35 = v6;
      v29 = v7;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v30 = v2;
      obj = *(v2 + 8);
      v8 = [obj countByEnumeratingWithState:&v40 objects:v39 count:16];
      if (v8)
      {
        v9 = v8;
        v36 = *v41;
        v10 = *off_1E798BC90;
        v11 = *off_1E798C160;
        v12 = *off_1E798BCD8;
        v13 = *off_1E798C168;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v41 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v40 + 1) + 8 * i);
            v16 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
            v17 = v16;
            v18 = v44[0];
            if (v44[0])
            {
              fig_log_get_emitter();
              v28 = v1;
              LODWORD(v27) = v18;
              FigDebugAssert3();

              v2 = v30;
              v7 = v29;
              goto LABEL_28;
            }

            [v15 setObject:objc_msgSend(v16 forKeyedSubscript:{"portType"), @"PortType"}];
            v19 = [v17 supportedProperties];
            v20 = [v15 objectForKeyedSubscript:@"DeviceName"];
            v21 = [v15 objectForKeyedSubscript:@"SupportedCalibrations"];
            if ([v19 objectForKeyedSubscript:v10])
            {
              [v21 addObject:v10];
              [v32 addObject:v20];
            }

            if ([v19 objectForKeyedSubscript:v11])
            {
              [v21 addObject:v11];
              [v33 addObject:v20];
            }

            if ([v19 objectForKeyedSubscript:v12])
            {
              [v21 addObject:v12];
              [v34 addObject:v20];
            }

            if ([v19 objectForKeyedSubscript:v13])
            {
              [v21 addObject:v13];
              [v35 addObject:v20];
            }
          }

          v9 = [obj countByEnumeratingWithState:&v40 objects:v39 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v2 = v30;
      if ([v32 count])
      {
        v22 = [[FigCaptureAutoFocusCalibrationContext alloc] initWithSupportedDeviceNames:v32];
        v30[13] = v22;
        [(FigCaptureCalibrationMonitor *)v30 _setupCalibrationForContext:v22];
      }

      if ([v33 count])
      {
        v23 = [[FigCaptureSphereCalibrationContext alloc] initWithSupportedDeviceNames:v33];
        v30[15] = v23;
        [(FigCaptureCalibrationMonitor *)v30 _setupCalibrationForContext:v23];
      }

      v7 = v29;
      if ([v34 count])
      {
        v24 = [[FigCaptureAPSSphereInteractionCalibrationContext alloc] initWithSupportedDeviceNames:v34];
        v30[14] = v24;
        [(FigCaptureCalibrationMonitor *)v30 _setupCalibrationForContext:v24];
      }

      if ([v35 count])
      {
        v25 = [[FigCaptureSphereEndStopCalibrationContext alloc] initWithSupportedDeviceNames:v35];
        v30[16] = v25;
        [(FigCaptureCalibrationMonitor *)v30 _setupCalibrationForContext:v25];
      }
    }

    else
    {
      fig_log_get_emitter();
      v28 = v1;
      LODWORD(v27) = 0;
      FigDebugAssert3();
    }

LABEL_28:
    if (v44[0])
    {
      v26 = *MEMORY[0x1E69E9CC8];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __63__FigCaptureCalibrationMonitor__setupDuetTriggersAndScheduling__block_invoke;
      v38[3] = &unk_1E798F870;
      v38[4] = v2;
      [(FigCaptureCalibrationMonitor *)v2 _setupActivityAndTriggers:v26 interval:50 batteryLevel:v38 calibrationBlock:0 isRepeating:?];
    }

    [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor sharedCaptureDeviceVendor];
  }
}

- (uint64_t)_calibrationShouldAbort
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 36));
    v2 = *(a1 + 32);
    os_unfair_lock_unlock((a1 + 36));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)_setupActivityAndTriggers:(int)a3 interval:(int)a4 batteryLevel:(void *)a5 calibrationBlock:(char)a6 isRepeating:
{
  if (a1)
  {
    v11 = [a5 copy];
    v12 = *MEMORY[0x1E69E9C50];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __109__FigCaptureCalibrationMonitor__setupActivityAndTriggers_interval_batteryLevel_calibrationBlock_isRepeating___block_invoke;
    v13[3] = &unk_1E7991BC0;
    v14 = a3;
    v15 = a4;
    v16 = a6;
    v13[4] = a1;
    v13[5] = v11;
    xpc_activity_register(a2, v12, v13);
  }
}

- (void)_setupRepeatingCalibrationScheduling:(void *)a3 withCalibrationBlock:
{
  if (a1)
  {
    v6 = [objc_msgSend(a2 "activityName")];
    v7 = [a2 interval];
    v8 = [a2 minimumBatteryLevelToRun];

    [(FigCaptureCalibrationMonitor *)a1 _setupActivityAndTriggers:v6 interval:v7 batteryLevel:v8 calibrationBlock:a3 isRepeating:1];
  }
}

- (void)_notifyOfDeviceMotion
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 36));
    *(a1 + 32) = 1;

    os_unfair_lock_unlock((a1 + 36));
  }
}

- (id)_runAndCreateDictionaryForCalibrationContext:(unsigned int)a3 deviceType:(unsigned int)a4 devicePosition:(_DWORD *)a5 errors:
{
  v60 = __PAIR64__(a4, a3);
  v61 = a2;
  if (!a1)
  {
    return 0;
  }

  v7 = 0x1E7988000uLL;
  v51 = 0;
  LODWORD(v50) = 0;
  v8 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  v9 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  if (!v9)
  {
    v46 = 0;
    v10 = 0;
    v45 = 64;
    goto LABEL_54;
  }

  v10 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  if (!v10)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    v45 = 0;
    goto LABEL_55;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = *(a1 + 8);
  v62 = [obj countByEnumeratingWithState:&v87 objects:v86 count:16];
  if (!v62)
  {
    v45 = 0;
    if (a5)
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  v56 = v11;
  v53 = a5;
  v54 = v9;
  HIDWORD(v55) = v8;
  HIDWORD(v57) = 0;
  v64 = *v88;
  if (v60)
  {
    v12 = HIDWORD(v60) == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  HIDWORD(v63) = v13;
  v58 = *off_1E798BCB8;
LABEL_12:
  v14 = 0;
  while (1)
  {
    if (*v88 != v64)
    {
      objc_enumerationMutation(obj);
    }

    v15 = *(*(&v87 + 1) + 8 * v14);
    v16 = [objc_msgSend(v15 objectForKeyedSubscript:{@"DeviceType", "intValue"}];
    v17 = [objc_msgSend(v15 objectForKeyedSubscript:{@"DevicePosition", "intValue"}];
    if (!HIDWORD(v63))
    {
      break;
    }

    if (v16 == v60 && v17 == HIDWORD(v60))
    {
      break;
    }

LABEL_40:
    if (++v14 == v62)
    {
      v62 = [obj countByEnumeratingWithState:&v87 objects:v86 count:16];
      if (!v62)
      {
        a5 = v53;
        v45 = HIDWORD(v57);
        if (HIDWORD(v57))
        {
          goto LABEL_48;
        }

        v7 = 0x1E7988000;
        v8 = HIDWORD(v55);
        v9 = v54;
        v11 = v56;
        if (v53)
        {
          goto LABEL_56;
        }

        goto LABEL_57;
      }

      goto LABEL_12;
    }
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v26 = OUTLINED_FUNCTION_1_53(v17, v18, v19, v20, v21, v22, v23, v24, v50, v51, v52, v53, v54, v55, v56, v57, v58, obj, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, 0);
  if (!v26)
  {
    goto LABEL_47;
  }

  v27 = v26;
  v28 = *v83;
  while (2)
  {
    for (i = 0; i != v27; ++i)
    {
      if (*v83 != v28)
      {
        objc_enumerationMutation(v10);
      }

      v30 = *(*(&v82 + 1) + 8 * i);
      v31 = [v30 portType];
      v32 = [v15 objectForKeyedSubscript:@"PortType"];
      if (v31 == v32)
      {
        if (!v30)
        {
          goto LABEL_47;
        }

        v40 = [v15 objectForKeyedSubscript:@"DeviceName"];
        if ([objc_msgSend(v15 objectForKeyedSubscript:{@"SupportedCalibrations", "containsObject:", objc_msgSend(v61, "propertyName")}])
        {
          if ([objc_msgSend(v61 "propertyName")])
          {
            v41 = [objc_msgSend(v61 "lastSuccessfulCalibrationData")];
            if (v41)
            {
              [v30 setProperty:objc_msgSend(v61 value:{"propertyName"), v41}];
            }
          }

          HIDWORD(v65) = 0;
          v42 = [v30 getProperty:objc_msgSend(v61 error:{"propertyName"), &v65 + 4}];
          if (HIDWORD(v65))
          {
            a5 = v53;
            v9 = v54;
            v7 = 0x1E7988000;
            v8 = HIDWORD(v55);
            v46 = v56;
            v47 = HIDWORD(v57);
            if (HIDWORD(v65) == -12688)
            {
              v48 = 64;
            }

            else
            {
              v48 = 0x80000000;
            }

            goto LABEL_53;
          }

          v43 = v42;
          v44 = [v42 length];
          if (v44 != [v61 expectedDataSize])
          {
            v48 = 0x80000000;
            a5 = v53;
            v9 = v54;
            v7 = 0x1E7988000uLL;
            v8 = HIDWORD(v55);
            v46 = v56;
            v47 = HIDWORD(v57);
LABEL_53:
            v45 = v47 | v48;
            goto LABEL_54;
          }

          if (v43)
          {
            [objc_opt_class() printDebugInfoForRawStreamCalibrationData:v43];
            [v56 setObject:v43 forKeyedSubscript:v40];
          }

          else
          {
            HIDWORD(v57) |= 0x80000000;
          }
        }

        goto LABEL_40;
      }
    }

    v27 = OUTLINED_FUNCTION_1_53(v32, v33, v34, v35, v36, v37, v38, v39, v50, v51, v52, v53, v54, v55, v56, v57, v58, obj, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
    if (v27)
    {
      continue;
    }

    break;
  }

LABEL_47:
  v45 = HIDWORD(v57) | 0x40;
  a5 = v53;
LABEL_48:
  v7 = 0x1E7988000;
  v8 = HIDWORD(v55);
  v9 = v54;
  v46 = v56;
LABEL_54:

LABEL_55:
  v11 = 0;
  if (a5)
  {
LABEL_56:
    *a5 = v45;
  }

LABEL_57:

  [objc_msgSend(*(v7 + 3776) "sharedCaptureDeviceVendor")];
  return v11;
}

- (void)_createDefaultXPCSchedulingParametersWithInterval:batteryLevel:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString *get_DASCTSMagneticInterferenceSensitivityKey(void)") description:{@"FigCaptureCalibrationMonitor.m", 49, @"%s", dlerror()}];
  __break(1u);
}

- (void)_createDefaultXPCSchedulingParametersWithInterval:batteryLevel:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString *get_DASCTSMinBatteryLevelKey(void)") description:{@"FigCaptureCalibrationMonitor.m", 50, @"%s", dlerror()}];
  __break(1u);
}

- (void)_createDefaultXPCSchedulingParametersWithInterval:(void *)a3 batteryLevel:.cold.3(id *a1, void *a2, void *a3)
{
  xpc_dictionary_set_BOOL(a2, [*a1 cStringUsingEncoding:4], 1);
  xpc_dictionary_set_value(a3, *MEMORY[0x1E69E9C80], a2);
  xpc_release(a2);
}

@end