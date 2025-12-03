@interface BWFigCaptureDeviceVendor
+ (BOOL)videoCaptureDeviceFirmwareIsLoaded;
+ (id)sharedCaptureDeviceVendorWithDefaultDeviceCreateFunction:(void *)Function;
+ (void)initialize;
- (BOOL)_isRearCameraCalibrationValid;
- (BOOL)activeDefaultDeviceEquals:(id)equals;
- (BOOL)hasActiveForClientAssertion;
- (BOOL)rearCameraCalibrationValid;
- (BOOL)streamsInUseForDevice:(id)device;
- (BWFigCaptureDeviceVendor)initWithDefaultDeviceCreateFunction:(void *)function;
- (BWFigCaptureDeviceVendor)initWithDefaultDeviceCreateFunction:(void *)function cmioExtensionDeviceCreateFunction:(void *)createFunction cmioDiscoverySession:(id)session;
- (NSArray)deviceIDs;
- (float)structuredLightProjectorStandbyTemperatureWithError:(int *)error;
- (id)_copyStreamsFromDevice:(id)device positions:(id)positions deviceTypes:(id)types requestControl:(BOOL)control deviceClientPriority:(int)priority allowsStreamControlLoss:(BOOL)loss error:(int *)error;
- (id)_deviceWithID:(id)d;
- (id)_popLatestVictimizedDeviceClient;
- (id)_popLatestVictimizedDeviceClientThatCanShareWithFlashlight;
- (id)activeDeviceClient;
- (id)activeDeviceClients;
- (id)cameraPoseMatrixForStreamWithPosition:(int)position deviceType:(int)type deviceID:(id)d;
- (id)cmioDeviceCreationHistory;
- (id)controlledStreamsForDevice:(id)device;
- (id)copyDefaultDeviceForVibeMitigation:(int *)mitigation;
- (id)copyDeviceForPublishingWithID:(id)d error:(int *)error;
- (id)copyDeviceWithID:(id)d forClient:(int)client informClientWhenDeviceAvailableAgain:(BOOL)again error:(int *)error;
- (id)copyStreamFromDevice:(id)device position:(int)position deviceType:(int)type deviceClientPriority:(int)priority allowsStreamControlLoss:(BOOL)loss error:(int *)error;
- (id)copyStreamWithoutControlFromDevice:(id)device position:(int)position deviceType:(int)type error:(int *)error;
- (id)copyStreamsFromDevice:(id)device positions:(id)positions deviceTypes:(id)types deviceClientPriority:(int)priority allowsStreamControlLoss:(BOOL)loss error:(int *)error;
- (id)copyStreamsWithUniqueIDs:(id)ds forDevice:(id)device deviceClientPriority:(int)priority error:(int *)error;
- (id)copyStreamsWithoutControlFromDevice:(id)device positions:(id)positions deviceTypes:(id)types error:(int *)error;
- (id)defaultDeviceCreationHistory;
- (id)deviceWithID:(id)d;
- (id)osStatePropertyList;
- (id)registeredDeviceClientWithID:(int)d;
- (id)registeredDeviceClients;
- (id)streamsControlledByOtherClientsForDevice:(id)device;
- (id)victimizedDeviceClients;
- (int)activeClientPriority;
- (int)keepControlOfStreamsWithPositions:(id)positions deviceTypes:(id)types forDevice:(id)device;
- (int)registerClientWithPID:(int)d clientApplicationID:(id)iD clientDescription:(id)description clientPriority:(int)priority canStealFromClientsWithSamePriority:(BOOL)samePriority deviceSharingWithOtherClientsAllowed:(BOOL)allowed clientType:(int)type deviceAvailabilityChangedHandler:(id)self0;
- (int)requestControlOfStreams:(id)streams device:(id)device deviceClientPriority:(int)priority;
- (int)unregisterClient:(int)client;
- (int)usageCountForDevice:(id)device;
- (uint64_t)_activeDeviceClientWithClientID:(uint64_t)d;
- (uint64_t)_deviceStateForDeviceWithStream:(uint64_t)stream;
- (uint64_t)_dumpInventory;
- (uint64_t)_getGameModeEnabledOnDevice:(uint64_t)device;
- (uint64_t)_logISPStartupTimeToCoreAnalytics;
- (uint64_t)_registerForDeviceNotifications:(uint64_t)result;
- (uint64_t)_registerForStreamNotifications:(uint64_t)result;
- (uint64_t)_releasePowerAssertion;
- (uint64_t)_relinquishControlOfStreamsForDevice:(uint64_t)result;
- (uint64_t)_removeActiveDeviceClient:(int)client moveToVictimizedList:;
- (uint64_t)_removeDeviceClient:(int)client moveToVictimizedList:;
- (uint64_t)_removeRegisteredDeviceClientWithClientID:(uint64_t)result;
- (uint64_t)_removeVictimizedDeviceClientWithClientID:(uint64_t)result;
- (uint64_t)_setLowMemoryModeEnabledOnDevice:(uint64_t)device;
- (uint64_t)_takePowerAssertion;
- (uint64_t)_unregisterForDeviceNotifications:(uint64_t)result;
- (uint64_t)_unregisterFromStreamNotifications:(uint64_t)result;
- (uint64_t)_updateAFDriverShortStatisticsForStream:(uint64_t)result;
- (uint64_t)osStatePropertyList;
- (void)_createDevice:reason:clientPID:figCaptureDevice:;
- (void)_deviceAvailabilityChangedForClient:(uint64_t)client available:postNotification:reason:canShareWithFlashlight:;
- (void)_deviceAvailabilityChangedForClients:(char)clients available:(int)available postNotifications:(int)notifications reason:(char)reason canShareWithFlashlight:(uint64_t)flashlight cameraStolenInterruptor:;
- (void)_handleCMIOExtensionDevicesChangedNotification:(id)notification;
- (void)_handleDeviceNoLongerAvailable:(uint64_t)available;
- (void)_handleDeviceUnrecoverableError:(uint64_t)error fromDevice:;
- (void)_handleErrorForDevice:(uint64_t)device;
- (void)_handleStreamControlTakenByAnotherClientNotification:(uint64_t)notification;
- (void)_handleStreamFrameReceiveTimeoutNotification:(uint64_t)notification;
- (void)_handleStreamRelinquishedByAnotherClientNotification:(uint64_t)notification;
- (void)_invalidate:keepFigCaptureDeviceAlive:preserveTorchState:;
- (void)_logActiveDefaultDeviceClientAndDevice;
- (void)_performBlockOnDeviceQueue:(uint64_t)queue;
- (void)_performBlockOnDeviceQueueSynchronously:(uint64_t)synchronously;
- (void)_registeredDeviceClientWithID:(void *)result;
- (void)_requestControlOfStreams:(uint64_t)streams device:deviceClientPriority:;
- (void)_resetDeviceCloseTimerForDevice:(uint64_t)device;
- (void)_setupDeviceCloseTimerForDevice:(uint64_t)device;
- (void)_showISPLeftOnTapToRadarPromptIfNecessary:(uint64_t)necessary;
- (void)_updateCMIOExtensionDevices;
- (void)_updateDefaultDevicePriorStreamPortTypes:(uint64_t)types;
- (void)_updateTofAFEstimatorResultsForStream:(uint64_t)stream totalStreamingDuration:(uint64_t)duration;
- (void)dealloc;
- (void)invalidateVideoDevice:(id)device forPID:(int)d;
- (void)prewarmDefaultVideoDeviceForPID:(int)d completionHandler:(id)handler;
- (void)resumeSystemPressuredDevice;
- (void)shutDownSystemPressuredDevice:(id)device;
- (void)takeBackDevice:(id)device forClient:(int)client informClientWhenDeviceAvailableAgain:(BOOL)again prefersDeviceInvalidatedImmediately:(BOOL)immediately;
- (void)takeBackStreams:(id)streams device:(id)device totalStreamingDuration:(unsigned int)duration;
- (void)updateClientPriority:(int)priority clientPriority:(int)clientPriority;
@end

@implementation BWFigCaptureDeviceVendor

- (uint64_t)_logISPStartupTimeToCoreAnalytics
{
  if (result)
  {
    if (!OUTLINED_FUNCTION_79_4())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v2 = objc_alloc_init(BWISPStartupAnalyticsPayload);
    [(BWISPStartupAnalyticsPayload *)v2 setIspStartupTime:*(v1 + 120)];
    v3 = +[BWCoreAnalyticsReporter sharedInstance];

    return [(BWCoreAnalyticsReporter *)v3 sendEvent:v2];
  }

  return result;
}

- (uint64_t)_takePowerAssertion
{
  if (result)
  {
    if (!OUTLINED_FUNCTION_79_4())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (*(v1 + 96) == 1)
    {
      FigCaptureGetFrameworkRadarComponent();
      OUTLINED_FUNCTION_42_12();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v5 = OUTLINED_FUNCTION_36_0(os_log_and_send_and_compose_flags_and_os_log_type);
      if (OUTLINED_FUNCTION_5_24(v5))
      {
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_13_0();
      v13 = 0;
      v6 = OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_11();
      v7 = OUTLINED_FUNCTION_82();
      FigCapturePleaseFileRadar(v7, v8, v9, 0, v10, 3591, v11, v12, &v13);
      free(v6);
      [(BWFigCaptureDeviceVendor *)v1 _releasePowerAssertion];
    }

    result = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, [MEMORY[0x1E696AEC0] stringWithFormat:@"cameracaptured-idleSleepPreventionForBWFigCaptureDevice"], (v1 + 100));
    if (!result)
    {
      *(v1 + 96) = 1;
      if (dword_1ED844630)
      {
        OUTLINED_FUNCTION_42_12();
        v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v3 = os_log_type_enabled(v2, v14);
        if (OUTLINED_FUNCTION_6(v3))
        {
          OUTLINED_FUNCTION_91_7();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_7_4();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_54_1();
        }

        OUTLINED_FUNCTION_2_4();
        return OUTLINED_FUNCTION_17_8();
      }
    }
  }

  return result;
}

- (uint64_t)_dumpInventory
{
  if (result)
  {
    result = _FigIsCurrentDispatchQueue();
    if (!result)
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      return FigDebugAssert3();
    }
  }

  return result;
}

- (int)activeClientPriority
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__BWFigCaptureDeviceVendor_activeClientPriority__block_invoke;
  v4[3] = &unk_1E79904A0;
  v4[4] = self;
  v4[5] = &v5;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __48__BWFigCaptureDeviceVendor_activeClientPriority__block_invoke(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 40);
  result = [v2 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = *(*(*(a1 + 40) + 8) + 24);
        if (v8 <= [v7 clientPriority])
        {
          v10 = [v7 clientPriority];
          v9 = *(*(a1 + 40) + 8);
        }

        else
        {
          v9 = *(*(a1 + 40) + 8);
          v10 = *(v9 + 24);
        }

        *(v9 + 24) = v10;
        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v12 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (BOOL)rearCameraCalibrationValid
{
  os_unfair_lock_lock(&self->_calibrationStatusLock);
  calibrationStatusQueried = self->_calibrationStatusQueried;
  rearCameraCalibrationValid = self->_rearCameraCalibrationValid;
  os_unfair_lock_unlock(&self->_calibrationStatusLock);
  if (!calibrationStatusQueried)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return rearCameraCalibrationValid;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (id)sharedCaptureDeviceVendorWithDefaultDeviceCreateFunction:(void *)Function
{
  if (sharedCaptureDeviceVendorWithDefaultDeviceCreateFunction__sharedDeviceVendorLockOnce != -1)
  {
    +[BWFigCaptureDeviceVendor sharedCaptureDeviceVendorWithDefaultDeviceCreateFunction:];
  }

  FigSimpleMutexLock();
  if (!sharedCaptureDeviceVendorWithDefaultDeviceCreateFunction__sharedDeviceVendor)
  {
    if (objc_opt_class())
    {
      mEMORY[0x1E6963468] = [MEMORY[0x1E6963468] sharedInstance];
      v5 = CMIOExtensionFigCaptureDeviceCreate;
    }

    else
    {
      mEMORY[0x1E6963468] = 0;
      v5 = 0;
    }

    v6 = [BWFigCaptureDeviceVendor alloc];
    if (!Function)
    {
      Function = FigCaptureGetCaptureDeviceCreateFunction();
    }

    sharedCaptureDeviceVendorWithDefaultDeviceCreateFunction__sharedDeviceVendor = [(BWFigCaptureDeviceVendor *)v6 initWithDefaultDeviceCreateFunction:Function cmioExtensionDeviceCreateFunction:v5 cmioDiscoverySession:mEMORY[0x1E6963468]];
  }

  FigSimpleMutexUnlock();
  return sharedCaptureDeviceVendorWithDefaultDeviceCreateFunction__sharedDeviceVendor;
}

uint64_t __85__BWFigCaptureDeviceVendor_sharedCaptureDeviceVendorWithDefaultDeviceCreateFunction___block_invoke()
{
  result = FigSimpleMutexCreate();
  sharedCaptureDeviceVendorWithDefaultDeviceCreateFunction__sharedDeviceVendorLock = result;
  return result;
}

- (BWFigCaptureDeviceVendor)initWithDefaultDeviceCreateFunction:(void *)function
{
  if (objc_opt_class())
  {
    mEMORY[0x1E6963468] = [MEMORY[0x1E6963468] sharedInstance];
    v6 = CMIOExtensionFigCaptureDeviceCreate;
  }

  else
  {
    mEMORY[0x1E6963468] = 0;
    v6 = 0;
  }

  return [(BWFigCaptureDeviceVendor *)self initWithDefaultDeviceCreateFunction:function cmioExtensionDeviceCreateFunction:v6 cmioDiscoverySession:mEMORY[0x1E6963468]];
}

- (BWFigCaptureDeviceVendor)initWithDefaultDeviceCreateFunction:(void *)function cmioExtensionDeviceCreateFunction:(void *)createFunction cmioDiscoverySession:(id)session
{
  selfCopy = self;
  if (!(function | createFunction))
  {
    [BWFigCaptureDeviceVendor initWithDefaultDeviceCreateFunction:cmioExtensionDeviceCreateFunction:cmioDiscoverySession:];
LABEL_14:

    return 0;
  }

  v17.receiver = self;
  v17.super_class = BWFigCaptureDeviceVendor;
  selfCopy = [(BWFigCaptureDeviceVendor *)&v17 init];
  if (!selfCopy)
  {
    return selfCopy;
  }

  selfCopy->_devicesStatesByDeviceID = objc_alloc_init(MEMORY[0x1E695DF90]);
  selfCopy->_deviceCloseTimeoutSeconds = 5.0;
  selfCopy->_registeredDeviceClients = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy->_activeDeviceClients = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy->_victimizedDeviceClients = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  selfCopy->_deviceQueue = dispatch_queue_create("com.apple.bwgraph.devicevendor", v9);
  selfCopy->_notificationQueue = dispatch_queue_create("com.apple.bwgraph.devicevendor.notification", 0);
  selfCopy->_cameraPoseMatricesByPortTypeByDeviceID = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ((FigCaptureIsRunningInVirtualization() & 1) == 0 && !function)
  {
    [BWFigCaptureDeviceVendor initWithDefaultDeviceCreateFunction:cmioExtensionDeviceCreateFunction:cmioDiscoverySession:];
    goto LABEL_14;
  }

  selfCopy->_defaultDeviceCreateFunction = function;
  if (!createFunction)
  {
    goto LABEL_8;
  }

  if (!session)
  {
    [BWFigCaptureDeviceVendor initWithDefaultDeviceCreateFunction:cmioExtensionDeviceCreateFunction:cmioDiscoverySession:];
    goto LABEL_14;
  }

  selfCopy->_cmioDiscoverySession = session;
  selfCopy->_cmioExtensionDeviceCreateFunction = createFunction;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel__handleCMIOExtensionDevicesChangedNotification_ name:*MEMORY[0x1E6963418] object:0];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __119__BWFigCaptureDeviceVendor_initWithDefaultDeviceCreateFunction_cmioExtensionDeviceCreateFunction_cmioDiscoverySession___block_invoke;
  v16[3] = &unk_1E798F870;
  v16[4] = selfCopy;
  [(BWFigCaptureDeviceVendor *)selfCopy _performBlockOnDeviceQueueSynchronously:v16];
LABEL_8:
  selfCopy->_osStateHandle = [[FigCaptureOSStateHandle alloc] initWithTitle:@"BWFigCaptureDeviceVendor" queue:selfCopy->_deviceQueue dataProvider:selfCopy];
  selfCopy->_defaultDeviceCreationHistory = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
  selfCopy->_cmioDeviceCreationHistory = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
  v11 = objc_alloc_init(MEMORY[0x1E696AB78]);
  selfCopy->_deviceDateFormatter = v11;
  [(NSDateFormatter *)v11 setDateFormat:@"yyyy-MM-dd HH:mm:ssZ"];
  selfCopy->_defaultDevicePriorStreamPortTypes = 0;
  v12 = [FigCaptureGameModeMonitor alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __119__BWFigCaptureDeviceVendor_initWithDefaultDeviceCreateFunction_cmioExtensionDeviceCreateFunction_cmioDiscoverySession___block_invoke_2;
  v15[3] = &unk_1E798F870;
  v15[4] = selfCopy;
  selfCopy->_gameModeMonitor = [(FigCaptureGameModeMonitor *)v12 initWithStateChangeHandler:v15];
  selfCopy->_calibrationStatusLock._os_unfair_lock_opaque = 0;
  selfCopy->_calibrationStatusQueried = FigCaptureCurrentProcessIsCameracaptured() == 0;
  selfCopy->_rearCameraCalibrationValid = 1;
  if (FigCaptureCurrentProcessIsCameracaptured())
  {
    global_queue = dispatch_get_global_queue(21, 0);
    dispatch_async(global_queue, &__block_literal_global_268);
  }

  return selfCopy;
}

- (void)_performBlockOnDeviceQueueSynchronously:(uint64_t)synchronously
{
  if (synchronously)
  {
    if (a2)
    {
      v2 = *(synchronously + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__BWFigCaptureDeviceVendor__performBlockOnDeviceQueueSynchronously___block_invoke;
      block[3] = &unk_1E798FEA0;
      block[4] = a2;
      dispatch_sync(v2, block);
    }
  }
}

void __119__BWFigCaptureDeviceVendor_initWithDefaultDeviceCreateFunction_cmioExtensionDeviceCreateFunction_cmioDiscoverySession___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __119__BWFigCaptureDeviceVendor_initWithDefaultDeviceCreateFunction_cmioExtensionDeviceCreateFunction_cmioDiscoverySession___block_invoke_3;
  v2[3] = &unk_1E798F870;
  v2[4] = v1;
  [(BWFigCaptureDeviceVendor *)v1 _performBlockOnDeviceQueueSynchronously:v2];
}

uint64_t __119__BWFigCaptureDeviceVendor_initWithDefaultDeviceCreateFunction_cmioExtensionDeviceCreateFunction_cmioDiscoverySession___block_invoke_266()
{
  v0 = FigCaptureDeviceCoreRepairStatusesByKeys();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  result = [v0 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (result)
  {
    v2 = result;
    v3 = *v23;
    do
    {
      v4 = 0;
      do
      {
        if (*v23 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v22 + 1) + 8 * v4);
        v6 = [objc_msgSend(v0 objectForKeyedSubscript:{v5, v13, v14), "intValue"}];
        if (v6 == 3)
        {
          v20 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v11 = v20;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v12 = v11;
          }

          else
          {
            v12 = v11 & 0xFFFFFFFE;
          }

          if (!v12)
          {
            goto LABEL_18;
          }

LABEL_17:
          v15 = 136315394;
          v16 = "fcdv_validateCoreRepairStatuses";
          v17 = 2114;
          v18 = v5;
          LODWORD(v14) = 22;
          v13 = &v15;
          _os_log_send_and_compose_impl();
          goto LABEL_18;
        }

        if (v6 != 2)
        {
          goto LABEL_19;
        }

        v20 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v8 = v20;
        if (os_log_type_enabled(v7, type))
        {
          v9 = v8;
        }

        else
        {
          v9 = v8 & 0xFFFFFFFE;
        }

        if (v9)
        {
          goto LABEL_17;
        }

LABEL_18:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_19:
        ++v4;
      }

      while (v2 != v4);
      result = [v0 countByEnumeratingWithState:&v22 objects:v21 count:16];
      v2 = result;
    }

    while (result);
  }

  return result;
}

- (void)dealloc
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_devicesStatesByDeviceID allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        -[BWFigCaptureDeviceVendor invalidateVideoDevice:forPID:](self, "invalidateVideoDevice:forPID:", [*(*(&v10 + 1) + 8 * v7++) device], 0xFFFFFFFFLL);
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = BWFigCaptureDeviceVendor;
  [(BWFigCaptureDeviceVendor *)&v8 dealloc];
}

+ (BOOL)videoCaptureDeviceFirmwareIsLoaded
{
  CameraDriverService = FigCaptureGetCameraDriverService();
  if (!CameraDriverService)
  {
    return 0;
  }

  v3 = CameraDriverService;
  CFProperty = IORegistryEntryCreateCFProperty(CameraDriverService, @"FirmwareLoaded", *MEMORY[0x1E695E480], 0);
  if (CFProperty)
  {
    v5 = CFProperty;
    v6 = CFEqual(CFProperty, *MEMORY[0x1E695E4D0]) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  FigCaptureReleaseCameraDriverService(v3);
  return v6;
}

- (void)prewarmDefaultVideoDeviceForPID:(int)d completionHandler:(id)handler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__BWFigCaptureDeviceVendor_prewarmDefaultVideoDeviceForPID_completionHandler___block_invoke;
  v4[3] = &unk_1E79994B8;
  dCopy = d;
  v4[4] = self;
  v4[5] = handler;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueue:v4];
}

uint64_t __78__BWFigCaptureDeviceVendor_prewarmDefaultVideoDeviceForPID_completionHandler___block_invoke(uint64_t a1)
{
  if (dword_1ED844630)
  {
    v20 = 0;
    v19 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([*(*(a1 + 32) + 24) objectForKeyedSubscript:{0x1F21702D0, v13, v14}])
  {
    v6 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:0x1F21702D0];
    if (dword_1ED844630)
    {
      v7 = v6;
      v20 = 0;
      v19 = OS_LOG_TYPE_DEFAULT;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v9 = v20;
      if (os_log_type_enabled(v8, v19))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = [v7 device];
        v15 = 136315394;
        v16 = "[BWFigCaptureDeviceVendor prewarmDefaultVideoDeviceForPID:completionHandler:]_block_invoke";
        v17 = 2048;
        v18 = v11;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [BWFigCaptureDeviceVendor _resetDeviceCloseTimerForDevice:?];
  }

  else
  {
    [BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:];
    if ([*(*(a1 + 32) + 24) objectForKeyedSubscript:0x1F21702D0])
    {
      [(BWFigCaptureDeviceVendor *)*(a1 + 32) _setupDeviceCloseTimerForDevice:?];
    }

    else
    {
      v20 = 0;
      v19 = OS_LOG_TYPE_DEFAULT;
      v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v4 = v20;
      if (os_log_type_enabled(v3, v19))
      {
        v5 = v4;
      }

      else
      {
        v5 = v4 & 0xFFFFFFFE;
      }

      if (v5)
      {
        v15 = 136315138;
        v16 = "[BWFigCaptureDeviceVendor prewarmDefaultVideoDeviceForPID:completionHandler:]_block_invoke";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)_performBlockOnDeviceQueue:(uint64_t)queue
{
  if (queue)
  {
    if (a2)
    {
      v2 = *(queue + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__BWFigCaptureDeviceVendor__performBlockOnDeviceQueue___block_invoke;
      block[3] = &unk_1E798FEA0;
      block[4] = a2;
      dispatch_async(v2, block);
    }
  }
}

- (int)registerClientWithPID:(int)d clientApplicationID:(id)iD clientDescription:(id)description clientPriority:(int)priority canStealFromClientsWithSamePriority:(BOOL)samePriority deviceSharingWithOtherClientsAllowed:(BOOL)allowed clientType:(int)type deviceAvailabilityChangedHandler:(id)self0
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __220__BWFigCaptureDeviceVendor_registerClientWithPID_clientApplicationID_clientDescription_clientPriority_canStealFromClientsWithSamePriority_deviceSharingWithOtherClientsAllowed_clientType_deviceAvailabilityChangedHandler___block_invoke;
  v12[3] = &unk_1E79994E0;
  allowedCopy = allowed;
  v12[7] = handler;
  v12[8] = &v18;
  v12[4] = self;
  v12[5] = iD;
  v12[6] = description;
  dCopy = d;
  priorityCopy = priority;
  samePriorityCopy = samePriority;
  typeCopy = type;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v12];
  v10 = *(v19 + 6);
  _Block_object_dispose(&v18, 8);
  return v10;
}

void __220__BWFigCaptureDeviceVendor_registerClientWithPID_clientApplicationID_clientDescription_clientPriority_canStealFromClientsWithSamePriority_deviceSharingWithOtherClientsAllowed_clientType_deviceAvailabilityChangedHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 84) == 1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([*(*(a1 + 32) + 40) count])
    {
      [v2 addObjectsFromArray:*(*(a1 + 32) + 40)];
    }

    if ([*(*(a1 + 32) + 32) count])
    {
      [v2 addObject:{objc_msgSend(*(*(a1 + 32) + 32), "lastObject")}];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v18;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v18 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v17 + 1) + 8 * i);
          if ([v7 canShareRegistrationWithClientPID:*(a1 + 72) deviceAvailabilityChangedHandler:*(a1 + 56)])
          {
            *(*(*(a1 + 64) + 8) + 24) = [v7 clientID];
            if (![v7 deviceAvailabilityChangedHandler])
            {
              [v7 setDeviceAvailabilityChangedHandler:*(a1 + 56)];
            }

            goto LABEL_17;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v17 objects:v16 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  if (!*(*(*(a1 + 64) + 8) + 24))
  {
    v8 = [BWFigCaptureDeviceClient alloc];
    LODWORD(v11) = *(a1 + 80);
    v9 = [(BWFigCaptureDeviceClient *)v8 initWithPID:*(a1 + 72) clientApplicationID:*(a1 + 40) clientDescription:*(a1 + 48) clientPriority:*(a1 + 76) canStealFromClientsWithSamePriority:*(a1 + 85) deviceSharingWithOtherClientsAllowed:*(a1 + 84) clientType:v11 deviceAvailabilityChangedHandler:*(a1 + 56)];
    *(*(*(a1 + 64) + 8) + 24) = [(BWFigCaptureDeviceClient *)v9 clientID];
    if (dword_1ED844630)
    {
      v15 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [*(*(a1 + 32) + 32) addObject:{v9, v12, v13}];
  }
}

- (void)updateClientPriority:(int)priority clientPriority:(int)clientPriority
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__BWFigCaptureDeviceVendor_updateClientPriority_clientPriority___block_invoke;
  v4[3] = &unk_1E7990178;
  v4[4] = self;
  priorityCopy = priority;
  clientPriorityCopy = clientPriority;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueue:v4];
}

uint64_t __64__BWFigCaptureDeviceVendor_updateClientPriority_clientPriority___block_invoke(uint64_t a1)
{
  if (dword_1ED844630)
  {
    v35 = 0;
    v34 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 40) <= 0)
  {
    return __64__BWFigCaptureDeviceVendor_updateClientPriority_clientPriority___block_invoke_cold_1();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = *(*(a1 + 32) + 40);
  result = [v3 countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v31;
LABEL_6:
    v7 = 0;
    while (1)
    {
      if (*v31 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v30 + 1) + 8 * v7);
      if ([(__CFString *)v8 clientID:v19]== *(a1 + 40))
      {
        break;
      }

      if (v5 == ++v7)
      {
        result = [v3 countByEnumeratingWithState:&v30 objects:v29 count:16];
        v5 = result;
        if (result)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

    v13 = [(__CFString *)v8 clientPriority];
    result = [(__CFString *)v8 setClientPriority:*(a1 + 44)];
    if (!dword_1ED844630)
    {
      return result;
    }

    v35 = 0;
    v34 = OS_LOG_TYPE_DEFAULT;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v15 = v35;
    if (os_log_type_enabled(v14, v34))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (v16)
    {
      v17 = [(__CFString *)v8 clientPriority];
      v18 = [(BWFigCaptureDeviceClient *)v8 _stringForBWFigCaptureDeviceVendorClientPriority];
      v21 = 136315906;
      v22 = "[BWFigCaptureDeviceVendor updateClientPriority:clientPriority:]_block_invoke";
      v23 = 1024;
      v24 = v13;
      v25 = 1024;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
LABEL_12:
    if (!dword_1ED844630)
    {
      return result;
    }

    v35 = 0;
    v34 = OS_LOG_TYPE_DEFAULT;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v10 = v35;
    if (os_log_type_enabled(v9, v34))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      v12 = *(a1 + 40);
      v21 = 136315394;
      v22 = "[BWFigCaptureDeviceVendor updateClientPriority:clientPriority:]_block_invoke";
      v23 = 1024;
      v24 = v12;
      _os_log_send_and_compose_impl();
    }
  }

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

- (int)unregisterClient:(int)client
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__BWFigCaptureDeviceVendor_unregisterClient___block_invoke;
  v5[3] = &unk_1E7999508;
  clientCopy = client;
  v5[4] = self;
  v5[5] = &v7;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v5];
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __45__BWFigCaptureDeviceVendor_unregisterClient___block_invoke(uint64_t a1)
{
  if (dword_1ED844630)
  {
    v28 = 0;
    v27 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 48) <= 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = -12780;
    v28 = 0;
    v27 = OS_LOG_TYPE_DEFAULT;
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v14 = v28;
    if (os_log_type_enabled(v13, v27))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v18 = 136315138;
      v19 = "[BWFigCaptureDeviceVendor unregisterClient:]_block_invoke";
      _os_log_send_and_compose_impl();
    }

    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v3 = *(*(a1 + 32) + 40);
    v4 = [v3 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v24;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v23 + 1) + 8 * i) clientID] == *(a1 + 48))
          {
            *(*(*(a1 + 40) + 8) + 24) = -12780;
            v28 = 0;
            v27 = OS_LOG_TYPE_DEFAULT;
            v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v10 = v28;
            if (os_log_type_enabled(v9, v27))
            {
              v11 = v10;
            }

            else
            {
              v11 = v10 & 0xFFFFFFFE;
            }

            if (v11)
            {
              v12 = *(*(a1 + 32) + 40);
              v18 = 136315394;
              v19 = "[BWFigCaptureDeviceVendor unregisterClient:]_block_invoke";
              v20 = 2112;
              v21 = v12;
              _os_log_send_and_compose_impl();
            }

            return fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v23 objects:v22 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    [(BWFigCaptureDeviceVendor *)*(a1 + 32) _removeRegisteredDeviceClientWithClientID:?];
    return [(BWFigCaptureDeviceVendor *)*(a1 + 32) _removeVictimizedDeviceClientWithClientID:?];
  }
}

- (NSArray)deviceIDs
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__29;
  v9 = __Block_byref_object_dispose__29;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__BWFigCaptureDeviceVendor_deviceIDs__block_invoke;
  v4[3] = &unk_1E79904A0;
  v4[4] = self;
  v4[5] = &v5;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

id __37__BWFigCaptureDeviceVendor_deviceIDs__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(*(*(a1 + 32) + 24), "allKeys")}];
  v3 = v2;
  if (*(*(a1 + 32) + 8) && ([v2 containsObject:0x1F21702D0] & 1) == 0)
  {
    [v3 insertObject:0x1F21702D0 atIndex:0];
  }

  result = [MEMORY[0x1E695DEC8] arrayWithArray:v3];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)copyDeviceWithID:(id)d forClient:(int)client informClientWhenDeviceAvailableAgain:(BOOL)again error:(int *)error
{
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3052000000;
  v40 = __Block_byref_object_copy__29;
  v41 = __Block_byref_object_dispose__29;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__29;
  v31 = __Block_byref_object_dispose__29;
  array = [MEMORY[0x1E695DF70] array];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__29;
  v21 = __Block_byref_object_dispose__29;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__BWFigCaptureDeviceVendor_copyDeviceWithID_forClient_informClientWhenDeviceAvailableAgain_error___block_invoke;
  v14[3] = &unk_1E7999530;
  v14[4] = self;
  v14[5] = d;
  clientCopy = client;
  v14[6] = &v43;
  v14[7] = &v37;
  againCopy = again;
  v14[8] = &v17;
  v14[9] = &v27;
  v14[10] = &v33;
  v14[11] = &v23;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v14];
  [(BWFigCaptureDeviceVendor *)self _deviceAvailabilityChangedForClients:0 available:*(v34 + 24) postNotifications:0 reason:*(v24 + 24) canShareWithFlashlight:v18[5] cameraStolenInterruptor:?];
  [v28[5] removeAllObjects];
  if (!v38[5] && !*(v44 + 6))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(v44 + 6) = -12786;
  }

  if (error)
  {
    *error = *(v44 + 6);
  }

  v12 = v38[5];
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);
  return v12;
}

- (id)copyDeviceForPublishingWithID:(id)d error:(int *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__29;
  v12 = __Block_byref_object_dispose__29;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__BWFigCaptureDeviceVendor_copyDeviceForPublishingWithID_error___block_invoke;
  v7[3] = &unk_1E7997788;
  v7[4] = d;
  v7[5] = self;
  v7[6] = &v14;
  v7[7] = &v8;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v7];
  if (error)
  {
    *error = *(v15 + 6);
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v14, 8);
  return v5;
}

uint64_t __64__BWFigCaptureDeviceVendor_copyDeviceForPublishingWithID_error___block_invoke(void *a1)
{
  if (dword_1ED844630)
  {
    v26 = 0;
    v25 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = [*(a1[5] + 24) objectForKeyedSubscript:{a1[4], v20, v22}];
  if (v3)
  {
    v4 = v3;
    if (!dword_1ED844630)
    {
      goto LABEL_19;
    }

    v26 = 0;
    v25 = OS_LOG_TYPE_DEFAULT;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = v26;
    if (os_log_type_enabled(v5, v25))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (!v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = [v4 device];
    *v24 = 136315394;
    *&v24[4] = "[BWFigCaptureDeviceVendor copyDeviceForPublishingWithID:error:]_block_invoke";
    *&v24[12] = 2048;
    *&v24[14] = v13;
    LODWORD(v23) = 22;
    v21 = v24;
    _os_log_send_and_compose_impl();
LABEL_18:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_19;
  }

  v8 = a1[5];
  getpid();
  if (v8)
  {
    [BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:];
  }

  else
  {
    v9 = 0;
  }

  *(*(a1[6] + 8) + 24) = v9;
  v4 = [*(a1[5] + 24) objectForKeyedSubscript:a1[4]];
  if (dword_1ED844630)
  {
    v26 = 0;
    v25 = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v11 = v26;
    if (os_log_type_enabled(v10, v25))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_19:
  *(*(a1[7] + 8) + 40) = [v4 device];
  if (*(*(a1[7] + 8) + 40))
  {
    [v4 setDeviceUsageCount:{objc_msgSend(v4, "deviceUsageCount") + 1}];
    result = [v4 setInUseForPublishing:1];
  }

  else
  {
    v26 = 0;
    v25 = OS_LOG_TYPE_DEFAULT;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v17 = v26;
    if (os_log_type_enabled(v16, v25))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v19 = a1[4];
      *v24 = 136315394;
      *&v24[4] = "[BWFigCaptureDeviceVendor copyDeviceForPublishingWithID:error:]_block_invoke";
      *&v24[12] = 2112;
      *&v24[14] = v19;
      _os_log_send_and_compose_impl();
    }

    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(*(a1[7] + 8) + 40))
  {
    v15 = *(a1[6] + 8);
    if (!*(v15 + 24))
    {
      *(v15 + 24) = -12786;
    }
  }

  return result;
}

- (id)copyDefaultDeviceForVibeMitigation:(int *)mitigation
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__29;
  v11 = __Block_byref_object_dispose__29;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__BWFigCaptureDeviceVendor_copyDefaultDeviceForVibeMitigation___block_invoke;
  v6[3] = &unk_1E7990C68;
  v6[4] = self;
  v6[5] = &v13;
  v6[6] = &v7;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v6];
  if (mitigation)
  {
    *mitigation = *(v14 + 6);
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v13, 8);
  return v4;
}

uint64_t __63__BWFigCaptureDeviceVendor_copyDefaultDeviceForVibeMitigation___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:0x1F21702D0];
  if (v2)
  {
    v5 = v2;
    if (!dword_1ED844630)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = a1[4];
  getpid();
  if (v3)
  {
    [BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:];
  }

  else
  {
    v4 = 0;
  }

  *(*(a1[5] + 8) + 24) = v4;
  v5 = [*(a1[4] + 24) objectForKeyedSubscript:0x1F21702D0];
  if (dword_1ED844630)
  {
LABEL_7:
    v20 = 0;
    v19 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_8:
  v7 = a1[4];
  [v5 device];
  result = [BWFigCaptureDeviceVendor _getGameModeEnabledOnDevice:v7];
  if (result)
  {
    if (dword_1ED844630)
    {
      v20 = 0;
      v19 = OS_LOG_TYPE_DEFAULT;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v11 = v20;
      if (os_log_type_enabled(v10, v19))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        *v18 = 136315138;
        *&v18[4] = "[BWFigCaptureDeviceVendor copyDefaultDeviceForVibeMitigation:]_block_invoke";
        _os_log_send_and_compose_impl();
      }

      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(*(a1[5] + 8) + 24) = -12782;
  }

  else
  {
    *(*(a1[6] + 8) + 40) = [v5 device];
    if (*(*(a1[6] + 8) + 40))
    {
      [v5 setDeviceUsageCount:{objc_msgSend(v5, "deviceUsageCount") + 1}];
      result = [v5 setInUseForVibeMitigation:1];
    }

    else
    {
      v20 = 0;
      v19 = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v14 = v20;
      if (os_log_type_enabled(v13, v19))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        *v18 = 136315394;
        *&v18[4] = "[BWFigCaptureDeviceVendor copyDefaultDeviceForVibeMitigation:]_block_invoke";
        *&v18[12] = 2112;
        *&v18[14] = 0x1F21702D0;
        _os_log_send_and_compose_impl();
      }

      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (!*(*(a1[6] + 8) + 40))
  {
    v9 = *(a1[5] + 8);
    if (!*(v9 + 24))
    {
      *(v9 + 24) = -12786;
    }
  }

  return result;
}

- (id)copyStreamFromDevice:(id)device position:(int)position deviceType:(int)type deviceClientPriority:(int)priority allowsStreamControlLoss:(BOOL)loss error:(int *)error
{
  lossCopy = loss;
  v10 = *&priority;
  v11 = *&type;
  v19 = [MEMORY[0x1E696AD98] numberWithInt:*&position];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v18 = [MEMORY[0x1E696AD98] numberWithInt:v11];
  v15 = -[BWFigCaptureDeviceVendor copyStreamsFromDevice:positions:deviceTypes:deviceClientPriority:allowsStreamControlLoss:error:](self, "copyStreamsFromDevice:positions:deviceTypes:deviceClientPriority:allowsStreamControlLoss:error:", device, v14, [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1], v10, lossCopy, error);
  firstObject = [v15 firstObject];

  return firstObject;
}

- (id)copyStreamsFromDevice:(id)device positions:(id)positions deviceTypes:(id)types deviceClientPriority:(int)priority allowsStreamControlLoss:(BOOL)loss error:(int *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__29;
  v17 = __Block_byref_object_dispose__29;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __123__BWFigCaptureDeviceVendor_copyStreamsFromDevice_positions_deviceTypes_deviceClientPriority_allowsStreamControlLoss_error___block_invoke;
  v10[3] = &unk_1E7999558;
  v10[4] = self;
  v10[5] = device;
  v10[6] = positions;
  v10[7] = types;
  priorityCopy = priority;
  lossCopy = loss;
  v10[8] = &v13;
  v10[9] = error;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v10];
  v8 = v14[5];
  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t __123__BWFigCaptureDeviceVendor_copyStreamsFromDevice_positions_deviceTypes_deviceClientPriority_allowsStreamControlLoss_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyStreamsFromDevice:*(a1 + 40) positions:*(a1 + 48) deviceTypes:*(a1 + 56) requestControl:1 deviceClientPriority:*(a1 + 80) allowsStreamControlLoss:*(a1 + 84) error:*(a1 + 72)];
  *(*(*(a1 + 64) + 8) + 40) = result;
  return result;
}

- (id)copyStreamWithoutControlFromDevice:(id)device position:(int)position deviceType:(int)type error:(int *)error
{
  v7 = *&type;
  v15 = [MEMORY[0x1E696AD98] numberWithInt:*&position];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:v7];
  v11 = -[BWFigCaptureDeviceVendor copyStreamsWithoutControlFromDevice:positions:deviceTypes:error:](self, "copyStreamsWithoutControlFromDevice:positions:deviceTypes:error:", device, v10, [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1], error);
  firstObject = [v11 firstObject];

  return firstObject;
}

- (id)copyStreamsWithoutControlFromDevice:(id)device positions:(id)positions deviceTypes:(id)types error:(int *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__29;
  v13 = __Block_byref_object_dispose__29;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__BWFigCaptureDeviceVendor_copyStreamsWithoutControlFromDevice_positions_deviceTypes_error___block_invoke;
  v8[3] = &unk_1E7999580;
  v8[4] = self;
  v8[5] = device;
  v8[6] = positions;
  v8[7] = types;
  v8[8] = &v9;
  v8[9] = error;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __92__BWFigCaptureDeviceVendor_copyStreamsWithoutControlFromDevice_positions_deviceTypes_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyStreamsFromDevice:*(a1 + 40) positions:*(a1 + 48) deviceTypes:*(a1 + 56) requestControl:0 deviceClientPriority:1 allowsStreamControlLoss:0 error:*(a1 + 72)];
  *(*(*(a1 + 64) + 8) + 40) = result;
  return result;
}

- (id)_copyStreamsFromDevice:(id)device positions:(id)positions deviceTypes:(id)types requestControl:(BOOL)control deviceClientPriority:(int)priority allowsStreamControlLoss:(BOOL)loss error:(int *)error
{
  lossCopy = loss;
  controlCopy = control;
  v28[0] = 0;
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWFigCaptureDeviceVendor _copyStreamsFromDevice:positions:deviceTypes:requestControl:deviceClientPriority:allowsStreamControlLoss:error:];
  }

  if (dword_1ED844630)
  {
    v27 = 0;
    v26 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (device)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = [positions count];
    if (os_log_and_send_and_compose_flags_and_os_log_type == [types count])
    {
      os_log_and_send_and_compose_flags_and_os_log_type = -[NSMutableDictionary objectForKeyedSubscript:](self->_devicesStatesByDeviceID, "objectForKeyedSubscript:", [device deviceID]);
      if ([positions count] != 1 || objc_msgSend(objc_msgSend(positions, "objectAtIndexedSubscript:", 0), "intValue") || objc_msgSend(objc_msgSend(types, "objectAtIndexedSubscript:", 0), "intValue"))
      {
        v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(positions, "count", v24, v25)}];
        if ([positions count])
        {
          v17 = 0;
          while (1)
          {
            v18 = BWCaptureDevicePositionAndDeviceTypeToPortType([objc_msgSend(positions objectAtIndexedSubscript:{v17), "intValue"}], objc_msgSend(objc_msgSend(types, "objectAtIndexedSubscript:", v17), "intValue"));
            if (!v18)
            {
              break;
            }

            [v16 addObject:v18];
            if ([positions count] <= ++v17)
            {
              goto LABEL_14;
            }
          }

          v19 = 0;
          v21 = 0;
          v28[0] = -12780;
          goto LABEL_33;
        }

LABEL_14:
        v19 = [device copyStreamsWithPortTypes:v16 error:v28];
        if (v28[0])
        {
          [BWFigCaptureDeviceVendor _copyStreamsFromDevice:positions:deviceTypes:requestControl:deviceClientPriority:allowsStreamControlLoss:error:];
          v21 = 0;
          errorCopy4 = error;
LABEL_21:
          if (!v28[0])
          {
            goto LABEL_26;
          }

          goto LABEL_22;
        }

        errorCopy4 = error;
        if (lossCopy)
        {
          v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v19 = [objc_msgSend(device "streams")];
        v21 = 0;
        errorCopy4 = error;
      }

      if ([v21 count])
      {
        [-[NSObject portTypesAllowingStreamControlLoss](os_log_and_send_and_compose_flags_and_os_log_type "portTypesAllowingStreamControlLoss")];
      }

      if (controlCopy)
      {
        [BWFigCaptureDeviceVendor _requestControlOfStreams:? device:? deviceClientPriority:?];
        v28[0] = v23;
        if (!v23)
        {
          goto LABEL_26;
        }

        [BWFigCaptureDeviceVendor _copyStreamsFromDevice:positions:deviceTypes:requestControl:deviceClientPriority:allowsStreamControlLoss:error:];
      }

      goto LABEL_21;
    }
  }

  v19 = 0;
  v21 = 0;
  v28[0] = -12780;
LABEL_33:
  errorCopy4 = error;
LABEL_22:
  if ([v21 count] && v28[0] != -12681)
  {
    [-[NSObject portTypesAllowingStreamControlLoss](os_log_and_send_and_compose_flags_and_os_log_type "portTypesAllowingStreamControlLoss")];
  }

  v19 = 0;
LABEL_26:
  if (errorCopy4)
  {
    *errorCopy4 = v28[0];
  }

  return v19;
}

- (id)copyStreamsWithUniqueIDs:(id)ds forDevice:(id)device deviceClientPriority:(int)priority error:(int *)error
{
  v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(ds, "count")}];
  if (!device)
  {
    v22 = -12780;
    goto LABEL_25;
  }

  selfCopy = self;
  priorityCopy = priority;
  errorCopy = error;
  obj = ds;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = [ds countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        streams = [device streams];
        v17 = [streams countByEnumeratingWithState:&v30 objects:v29 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v31;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v31 != v19)
              {
                objc_enumerationMutation(streams);
              }

              v21 = *(*(&v30 + 1) + 8 * j);
              if ([objc_msgSend(v21 "uniqueID")])
              {
                [v28 addObject:v21];
                goto LABEL_17;
              }
            }

            v18 = [streams countByEnumeratingWithState:&v30 objects:v29 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
        ;
      }

      v12 = [obj countByEnumeratingWithState:&v35 objects:v34 count:16];
    }

    while (v12);
  }

  v22 = [(BWFigCaptureDeviceVendor *)selfCopy requestControlOfStreams:v28 device:device deviceClientPriority:priorityCopy];
  if (v22)
  {
    [BWFigCaptureDeviceVendor copyStreamsWithUniqueIDs:forDevice:deviceClientPriority:error:];
    error = errorCopy;
LABEL_25:

    v28 = 0;
    if (!error)
    {
      return v28;
    }

    goto LABEL_21;
  }

  error = errorCopy;
  if (errorCopy)
  {
LABEL_21:
    *error = v22;
  }

  return v28;
}

- (void)takeBackDevice:(id)device forClient:(int)client informClientWhenDeviceAvailableAgain:(BOOL)again prefersDeviceInvalidatedImmediately:(BOOL)immediately
{
  if (device)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3052000000;
    v19 = __Block_byref_object_copy__29;
    v20 = __Block_byref_object_dispose__29;
    v21 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __126__BWFigCaptureDeviceVendor_takeBackDevice_forClient_informClientWhenDeviceAvailableAgain_prefersDeviceInvalidatedImmediately___block_invoke;
    v8[3] = &unk_1E79995A8;
    clientCopy = client;
    v8[4] = device;
    v8[5] = self;
    immediatelyCopy = immediately;
    v8[6] = &v12;
    v8[7] = &v16;
    againCopy = again;
    v8[8] = &v22;
    [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v8];
    v7 = v17;
    if (!v13[3] && (v17[5] || (v23[3] & 1) != 0))
    {
      [BWFigCaptureDeviceVendor _deviceAvailabilityChangedForClient:? available:? postNotification:? reason:? canShareWithFlashlight:?];
      v7 = v17;
    }

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }
}

void __126__BWFigCaptureDeviceVendor_takeBackDevice_forClient_informClientWhenDeviceAvailableAgain_prefersDeviceInvalidatedImmediately___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (dword_1ED844630)
  {
    v92 = 0;
    v91 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = (a1 + 40);
  v5 = [(BWFigCaptureDeviceVendor *)*(a1 + 40) _activeDeviceClientWithClientID:?];
  v6 = [*(*(a1 + 40) + 24) objectForKeyedSubscript:{objc_msgSend(v2, "deviceID")}];
  if (v2 != [v6 device] && objc_msgSend(*(*v4 + 40), "containsObject:", v5) && objc_msgSend(v6, "device") && objc_msgSend(v5, "clientType") == 1)
  {
    if (dword_1ED844630)
    {
      v92 = 0;
      v91 = OS_LOG_TYPE_DEFAULT;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v8 = v92;
      if (os_log_type_enabled(v7, v91))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v10 = [v6 device];
        v71 = 136315650;
        v72 = "[BWFigCaptureDeviceVendor takeBackDevice:forClient:informClientWhenDeviceAvailableAgain:prefersDeviceInvalidatedImmediately:]_block_invoke";
        v73 = 2048;
        v74 = v2;
        v75 = 2048;
        *v76 = v10;
        LODWORD(v67) = 32;
        v64 = &v71;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v2 = [v6 device];
    [v2 resetTorchState];
  }

  if (v2 != [v6 device])
  {
    [v2 invalidate];
    return;
  }

  if (([(BWFigCaptureDeviceVendor *)*v4 _setLowMemoryModeEnabledOnDevice:v2]& 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(a1 + 76);
  }

  v70 = v11;
  [v6 setDeviceUsageCount:{objc_msgSend(v6, "deviceUsageCount") - 1}];
  *(*(*(a1 + 48) + 8) + 24) = [v6 deviceUsageCount];
  if (dword_1ED844630)
  {
    v92 = 0;
    v91 = OS_LOG_TYPE_DEFAULT;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v13 = v92;
    if (os_log_type_enabled(v12, v91))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      v15 = *(*(*(a1 + 48) + 8) + 24);
      v71 = 136315650;
      v72 = "[BWFigCaptureDeviceVendor takeBackDevice:forClient:informClientWhenDeviceAvailableAgain:prefersDeviceInvalidatedImmediately:]_block_invoke";
      v73 = 2048;
      v74 = v2;
      v75 = 1024;
      *v76 = v15;
      LODWORD(v67) = 28;
      v65 = &v71;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v16 = *(*(*(a1 + 48) + 8) + 24);
  if (!v16)
  {
    v21 = [v6 inUseForPublishing];
    if (v21 && dword_1ED844630)
    {
      v92 = 0;
      v91 = OS_LOG_TYPE_DEFAULT;
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v23 = v92;
      if (os_log_type_enabled(v22, v91))
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFE;
      }

      if (v24)
      {
        v71 = 136315394;
        v72 = "[BWFigCaptureDeviceVendor takeBackDevice:forClient:informClientWhenDeviceAvailableAgain:prefersDeviceInvalidatedImmediately:]_block_invoke";
        v73 = 2048;
        v74 = v2;
        LODWORD(v67) = 22;
        v65 = &v71;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v30 = [v6 inUseForVibeMitigation];
    if (v30 && dword_1ED844630)
    {
      v69 = v21;
      v92 = 0;
      v91 = OS_LOG_TYPE_DEFAULT;
      v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v32 = v92;
      if (os_log_type_enabled(v31, v91))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
        v71 = 136315394;
        v72 = "[BWFigCaptureDeviceVendor takeBackDevice:forClient:informClientWhenDeviceAvailableAgain:prefersDeviceInvalidatedImmediately:]_block_invoke";
        v73 = 2048;
        v74 = v2;
        LODWORD(v68) = 22;
        v66 = &v71;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v21 = v69;
    }

    [v6 setInUseForPublishing:{0, v66, v68}];
    [v6 setInUseForVibeMitigation:0];
    if ([*(*v4 + 40) count] == 1)
    {
      v34 = v30;
    }

    else
    {
      v34 = 1;
    }

    if ((v21 | v34))
    {
      if ((v70 & 1) == 0 || [*(*v4 + 48) count])
      {
        __126__BWFigCaptureDeviceVendor_takeBackDevice_forClient_informClientWhenDeviceAvailableAgain_prefersDeviceInvalidatedImmediately___block_invoke_cold_1(a1 + 40, v2);
      }

      else
      {
        v35 = *v4;
        [v2 deviceID];
        if (v35)
        {
          [BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:];
        }
      }

      goto LABEL_110;
    }

    v36 = [objc_msgSend(v6 "device")];
    v37 = *off_1E7989FE8;
    if ([v36 objectForKeyedSubscript:*off_1E7989FE8])
    {
      v38 = [v6 device];
      [v38 setProperty:v37 value:MEMORY[0x1E695E110]];
    }

    if ([objc_msgSend(v6 "streamsRequiringControlControlledByOtherClients")])
    {
      if ([v5 clientType] == 1)
      {
        [(BWFigCaptureDeviceVendor *)*(a1 + 40) _removeActiveDeviceClient:v5 moveToVictimizedList:*(a1 + 77)];
      }

      else
      {
        [v6 setTakeBackDeviceCalledForActiveClientID:*(a1 + 72)];
        if (dword_1ED844630)
        {
          v92 = 0;
          v91 = OS_LOG_TYPE_DEFAULT;
          v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v40 = v92;
          if (os_log_type_enabled(v39, v91))
          {
            v41 = v40;
          }

          else
          {
            v41 = v40 & 0xFFFFFFFE;
          }

          if (!v41)
          {
            goto LABEL_109;
          }

          v42 = [objc_msgSend(v6 "streamsControlledByOtherClients")];
          v71 = 136315394;
          v72 = "[BWFigCaptureDeviceVendor takeBackDevice:forClient:informClientWhenDeviceAvailableAgain:prefersDeviceInvalidatedImmediately:]_block_invoke";
          v73 = 1024;
          LODWORD(v74) = v42;
          goto LABEL_39;
        }
      }

      goto LABEL_110;
    }

    -[BWFigCaptureDeviceVendor _relinquishControlOfStreamsForDevice:](*v4, [v2 deviceID]);
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v48 = *(*v4 + 24);
    v49 = [v48 countByEnumeratingWithState:&v85 objects:v84 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = 0;
      v52 = *v86;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v86 != v52)
          {
            objc_enumerationMutation(v48);
          }

          v51 |= [objc_msgSend(*(*v4 + 24) objectForKeyedSubscript:{*(*(&v85 + 1) + 8 * i)), "deviceUsageCount"}] > 0;
        }

        v50 = [v48 countByEnumeratingWithState:&v85 objects:v84 count:16];
      }

      while (v50);
    }

    else
    {
      v51 = 0;
    }

    if ((v70 & 1) == 0 || [*(*v4 + 48) count])
    {
      __126__BWFigCaptureDeviceVendor_takeBackDevice_forClient_informClientWhenDeviceAvailableAgain_prefersDeviceInvalidatedImmediately___block_invoke_cold_1(a1 + 40, v2);
      if (v51)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v54 = *v4;
      [v2 deviceID];
      if (v54)
      {
        [BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:];
      }

      if (v51)
      {
LABEL_103:
        if (dword_1ED844630)
        {
          v92 = 0;
          v91 = OS_LOG_TYPE_DEFAULT;
          v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v56 = v92;
          if (os_log_type_enabled(v55, v91))
          {
            v57 = v56;
          }

          else
          {
            v57 = v56 & 0xFFFFFFFE;
          }

          if (!v57)
          {
            goto LABEL_109;
          }

          v58 = [objc_msgSend(*(*v4 + 40) "firstObject")];
          v71 = 136315394;
          v72 = "[BWFigCaptureDeviceVendor takeBackDevice:forClient:informClientWhenDeviceAvailableAgain:prefersDeviceInvalidatedImmediately:]_block_invoke";
          v73 = 1024;
          LODWORD(v74) = v58;
          goto LABEL_39;
        }

        goto LABEL_110;
      }
    }

    *(*(*(a1 + 56) + 8) + 40) = [(BWFigCaptureDeviceVendor *)*(a1 + 40) _popLatestVictimizedDeviceClient];
    [(BWFigCaptureDeviceVendor *)*(a1 + 40) _removeActiveDeviceClient:v5 moveToVictimizedList:*(a1 + 77)];
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v59 = *(*(a1 + 40) + 40);
    v60 = [v59 countByEnumeratingWithState:&v80 objects:v79 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v81;
      do
      {
        for (j = 0; j != v61; ++j)
        {
          if (*v81 != v62)
          {
            objc_enumerationMutation(v59);
          }

          [(BWFigCaptureDeviceVendor *)*v4 _removeActiveDeviceClient:0 moveToVictimizedList:?];
        }

        v61 = [v59 countByEnumeratingWithState:&v80 objects:v79 count:16];
      }

      while (v61);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    goto LABEL_110;
  }

  if (v16 < 1)
  {
    goto LABEL_47;
  }

  if ([*(*v4 + 40) count] > 1 || objc_msgSend(v5, "clientType") == 1)
  {
    [(BWFigCaptureDeviceVendor *)*(a1 + 40) _removeActiveDeviceClient:v5 moveToVictimizedList:*(a1 + 77)];
    if (dword_1ED844630)
    {
      v92 = 0;
      v91 = OS_LOG_TYPE_DEFAULT;
      v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v44 = v92;
      if (os_log_type_enabled(v43, v91))
      {
        v45 = v44;
      }

      else
      {
        v45 = v44 & 0xFFFFFFFE;
      }

      if (!v45)
      {
        goto LABEL_109;
      }

      v46 = *(*(*(a1 + 48) + 8) + 24);
      v47 = *(*(a1 + 40) + 40);
      v71 = 136316162;
      v72 = "[BWFigCaptureDeviceVendor takeBackDevice:forClient:informClientWhenDeviceAvailableAgain:prefersDeviceInvalidatedImmediately:]_block_invoke";
      v73 = 2048;
      v74 = v2;
      v75 = 1024;
      *v76 = v46;
      *&v76[4] = 2112;
      *&v76[6] = v5;
      v77 = 2112;
      v78 = v47;
      goto LABEL_39;
    }

    goto LABEL_110;
  }

  if (*(*(*(a1 + 48) + 8) + 24) < 1)
  {
LABEL_47:
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v92 = 0;
    v91 = OS_LOG_TYPE_DEFAULT;
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v27 = v92;
    if (os_log_type_enabled(v26, v91))
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 & 0xFFFFFFFE;
    }

    if (v28)
    {
      v71 = 136315394;
      v72 = "[BWFigCaptureDeviceVendor takeBackDevice:forClient:informClientWhenDeviceAvailableAgain:prefersDeviceInvalidatedImmediately:]_block_invoke";
      v73 = 2048;
      v74 = v2;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v89 = 134217984;
    v90 = v2;
    v29 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v29, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWFigCaptureDeviceVendor.m", 1525, @"LastShownDate:BWFigCaptureDeviceVendor.m:1525", @"LastShownBuild:BWFigCaptureDeviceVendor.m:1525", 0);
    free(v29);
    goto LABEL_110;
  }

  if (dword_1ED844630)
  {
    v92 = 0;
    v91 = OS_LOG_TYPE_DEFAULT;
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v18 = v92;
    if (os_log_type_enabled(v17, v91))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFE;
    }

    if (!v19)
    {
      goto LABEL_109;
    }

    v20 = *(*(*(a1 + 48) + 8) + 24);
    v71 = 136315650;
    v72 = "[BWFigCaptureDeviceVendor takeBackDevice:forClient:informClientWhenDeviceAvailableAgain:prefersDeviceInvalidatedImmediately:]_block_invoke";
    v73 = 2048;
    v74 = v2;
    v75 = 1024;
    *v76 = v20;
LABEL_39:
    _os_log_send_and_compose_impl();
LABEL_109:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_110:
  if (!*(*(*(a1 + 56) + 8) + 40) && *(*(*(a1 + 48) + 8) + 24) == 1 && [objc_msgSend(*(*v4 + 40) "firstObject")] == 1)
  {
    *(*(*(a1 + 56) + 8) + 40) = [(BWFigCaptureDeviceVendor *)*(a1 + 40) _popLatestVictimizedDeviceClientThatCanShareWithFlashlight];
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (void)invalidateVideoDevice:(id)device forPID:(int)d
{
  if (device)
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v14 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x3052000000;
    v10 = __Block_byref_object_copy__29;
    v11 = __Block_byref_object_dispose__29;
    v12 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __57__BWFigCaptureDeviceVendor_invalidateVideoDevice_forPID___block_invoke;
    v5[3] = &unk_1E79995D0;
    dCopy = d;
    v5[4] = device;
    v5[5] = self;
    v5[6] = &v7;
    v5[7] = v13;
    [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v5];
    [BWFigCaptureDeviceVendor _deviceAvailabilityChangedForClient:? available:? postNotification:? reason:? canShareWithFlashlight:?];

    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(v13, 8);
  }
}

- (int)keepControlOfStreamsWithPositions:(id)positions deviceTypes:(id)types forDevice:(id)device
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__BWFigCaptureDeviceVendor_keepControlOfStreamsWithPositions_deviceTypes_forDevice___block_invoke;
  v7[3] = &unk_1E7991D18;
  v7[4] = self;
  v7[5] = device;
  v7[6] = positions;
  v7[7] = types;
  v7[8] = &v8;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v7];
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)shutDownSystemPressuredDevice:(id)device
{
  if (device)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __58__BWFigCaptureDeviceVendor_shutDownSystemPressuredDevice___block_invoke;
    v3[3] = &unk_1E798F898;
    v3[4] = self;
    v3[5] = device;
    [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v3];
  }
}

- (void)resumeSystemPressuredDevice
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__BWFigCaptureDeviceVendor_resumeSystemPressuredDevice__block_invoke;
  v2[3] = &unk_1E798F870;
  v2[4] = self;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v2];
}

- (float)structuredLightProjectorStandbyTemperatureWithError:(int *)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__BWFigCaptureDeviceVendor_structuredLightProjectorStandbyTemperatureWithError___block_invoke;
  v6[3] = &unk_1E7990C68;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = &v11;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v6];
  if (error)
  {
    *error = *(v8 + 6);
  }

  v4 = v12[6];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __80__BWFigCaptureDeviceVendor_structuredLightProjectorStandbyTemperatureWithError___block_invoke(void *a1)
{
  v2 = a1 + 4;
  v3 = [*(a1[4] + 24) objectForKeyedSubscript:0x1F21702D0];
  if (!v3)
  {
    __80__BWFigCaptureDeviceVendor_structuredLightProjectorStandbyTemperatureWithError___block_invoke_cold_1(v2, 0x1F21702D0, &v8);
    v3 = v8;
  }

  v4 = [objc_msgSend(v3 "device")];
  v7 = v4;
  if (v4)
  {
    v5 = [v4 getProperty:*off_1E798C198 error:*(a1[5] + 8) + 24];
    if (!*(*(a1[5] + 8) + 24))
    {
      [v5 floatValue];
      *(*(a1[6] + 8) + 24) = v6;
    }

    [BWFigCaptureDeviceVendor _resetDeviceCloseTimerForDevice:?];
  }

  else
  {
    __80__BWFigCaptureDeviceVendor_structuredLightProjectorStandbyTemperatureWithError___block_invoke_cold_2();
  }
}

- (BOOL)activeDefaultDeviceEquals:(id)equals
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__BWFigCaptureDeviceVendor_activeDefaultDeviceEquals___block_invoke;
  v5[3] = &unk_1E79906C0;
  v5[4] = self;
  v5[5] = equals;
  v5[6] = &v6;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __54__BWFigCaptureDeviceVendor_activeDefaultDeviceEquals___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:0x1F21702D0];
  v3 = a1[5];
  if (v3)
  {
    result = [v2 device];
    v5 = v3 == result;
  }

  else
  {
    result = [v2 deviceUsageCount];
    if (result)
    {
      v6 = 0;
      goto LABEL_8;
    }

    result = [*(a1[4] + 40) count];
    v5 = result == 0;
  }

  v6 = v5;
LABEL_8:
  *(*(a1[6] + 8) + 24) = v6;
  return result;
}

- (id)cameraPoseMatrixForStreamWithPosition:(int)position deviceType:(int)type deviceID:(id)d
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__29;
  v15 = __Block_byref_object_dispose__29;
  v16 = 0;
  v7 = BWCaptureDevicePositionAndDeviceTypeToPortType(position, type);
  if (v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __86__BWFigCaptureDeviceVendor_cameraPoseMatrixForStreamWithPosition_deviceType_deviceID___block_invoke;
    v10[3] = &unk_1E79992F0;
    v10[4] = self;
    v10[5] = d;
    v10[6] = v7;
    v10[7] = &v11;
    [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v10];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __86__BWFigCaptureDeviceVendor_cameraPoseMatrixForStreamWithPosition_deviceType_deviceID___block_invoke(void *a1)
{
  result = [objc_msgSend(*(a1[4] + 104) objectForKeyedSubscript:{a1[5]), "objectForKeyedSubscript:", a1[6]}];
  *(*(a1[7] + 8) + 40) = result;
  return result;
}

uint64_t __60__BWFigCaptureDeviceVendor__setupDeviceCloseTimerForDevice___block_invoke_296(uint64_t a1)
{
  if (dword_1ED844630)
  {
    v19 = 0;
    v18 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 40);
  result = [*(a1 + 32) deviceCloseTimer];
  if (v3 == result)
  {
    v19 = 0;
    v18 = OS_LOG_TYPE_DEFAULT;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = v19;
    if (os_log_type_enabled(v5, v18))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) deviceCloseTimer];
      v12 = 136315650;
      v13 = "[BWFigCaptureDeviceVendor _setupDeviceCloseTimerForDevice:]_block_invoke";
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return [*(a1 + 32) setDeviceCloseTimer:0];
  }

  return result;
}

void __145__BWFigCaptureDeviceVendor__deviceAvailabilityChangedForClient_available_postNotification_reason_canShareWithFlashlight_cameraStolenInterruptor___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 52) == 1)
  {
    v20[0] = @"DeviceAvailable";
    v21[0] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 53)];
    v20[1] = @"DeviceAvailabilityChangedReason";
    v21[1] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
    v20[2] = @"DeviceSharingWithFlashlightAllowed";
    v21[2] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 54)];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  }

  else
  {
    v3 = 0;
  }

  if ([*(a1 + 32) deviceAvailabilityChangedHandler])
  {
    if (*(a1 + 53) == 1)
    {
      if (!dword_1ED844630)
      {
        goto LABEL_20;
      }
    }

    else if (!dword_1ED844630)
    {
      goto LABEL_20;
    }

    v19 = 0;
    v18 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1ED844630)
  {
    v19 = 0;
    v18 = OS_LOG_TYPE_DEFAULT;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = v19;
    if (os_log_type_enabled(v5, v18))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v8 = *(a1 + 52);
      *&v15[4] = "[BWFigCaptureDeviceVendor _deviceAvailabilityChangedForClient:available:postNotification:reason:canShareWithFlashlight:cameraStolenInterruptor:]_block_invoke";
      *v15 = 136315650;
      if (v8)
      {
        v9 = @"Sending";
      }

      else
      {
        v9 = @"Not sending";
      }

      *&v15[12] = 2112;
      *&v15[14] = v9;
      v16 = 2114;
      v17 = v3;
      LODWORD(v14) = 32;
      v13 = v15;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_20:
  if (*(a1 + 52) == 1 && (*(a1 + 53) & 1) == 0)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"DeviceAvailabilityChanged", 0, v3, 1u);
  }

  if ([*(a1 + 32) deviceAvailabilityChangedHandler])
  {
    v11 = [*(a1 + 32) deviceAvailabilityChangedHandler];
    (*(v11 + 16))(v11, [*(a1 + 32) clientID], *(a1 + 53), *(a1 + 48), *(a1 + 40));
  }

  if (*(a1 + 52) == 1 && *(a1 + 53) == 1)
  {
    v12 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(v12, @"DeviceAvailabilityChanged", 0, v3, 1u);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __81__BWFigCaptureDeviceVendor__handleStreamControlTakenByAnotherClientNotification___block_invoke_306()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t __81__BWFigCaptureDeviceVendor__handleStreamRelinquishedByAnotherClientNotification___block_invoke_308()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void __71__BWFigCaptureDeviceVendor__handleDeviceUnrecoverableError_fromDevice___block_invoke(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(*(a1 + 32) + 24) allValues];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 device] == *(a1 + 40))
        {
          if (v7)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v9 = *(a1 + 32);
            [objc_msgSend(v7 "device")];
            [BWFigCaptureDeviceVendor _handleErrorForDevice:v9];
          }

          return;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }
}

void __59__BWFigCaptureDeviceVendor__handleDeviceNoLongerAvailable___block_invoke(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(*(a1 + 32) + 24) allValues];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      if ([v7 device] == *(a1 + 40))
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  if ([v7 device] == *(a1 + 40))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = *(a1 + 32);
    [objc_msgSend(v7 "device")];
    [BWFigCaptureDeviceVendor _handleErrorForDevice:v9];
  }
}

- (int)requestControlOfStreams:(id)streams device:(id)device deviceClientPriority:(int)priority
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__BWFigCaptureDeviceVendor_requestControlOfStreams_device_deviceClientPriority___block_invoke;
  v7[3] = &unk_1E7999640;
  v7[4] = self;
  v7[5] = streams;
  v7[6] = device;
  v7[7] = &v9;
  priorityCopy = priority;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v7];
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __55__BWFigCaptureDeviceVendor__performBlockOnDeviceQueue___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __68__BWFigCaptureDeviceVendor__performBlockOnDeviceQueueSynchronously___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (id)deviceWithID:(id)d
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__29;
  v10 = __Block_byref_object_dispose__29;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__BWFigCaptureDeviceVendor_deviceWithID___block_invoke;
  v5[3] = &unk_1E7999668;
  v5[5] = d;
  v5[6] = &v6;
  v5[4] = self;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __41__BWFigCaptureDeviceVendor_deviceWithID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _deviceWithID:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (id)_deviceWithID:(id)d
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWFigCaptureDeviceVendor _deviceWithID:];
  }

  v5 = [(NSMutableDictionary *)self->_devicesStatesByDeviceID objectForKeyedSubscript:d];

  return [v5 device];
}

- (id)controlledStreamsForDevice:(id)device
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__29;
  v10 = __Block_byref_object_dispose__29;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__BWFigCaptureDeviceVendor_controlledStreamsForDevice___block_invoke;
  v5[3] = &unk_1E79906C0;
  v5[4] = self;
  v5[5] = device;
  v5[6] = &v6;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __55__BWFigCaptureDeviceVendor_controlledStreamsForDevice___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 24) objectForKeyedSubscript:{objc_msgSend(*(a1 + 40), "deviceID")), "controlledStreams"), "copy"}];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (id)streamsControlledByOtherClientsForDevice:(id)device
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__29;
  v10 = __Block_byref_object_dispose__29;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__BWFigCaptureDeviceVendor_streamsControlledByOtherClientsForDevice___block_invoke;
  v5[3] = &unk_1E79906C0;
  v5[4] = self;
  v5[5] = device;
  v5[6] = &v6;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __69__BWFigCaptureDeviceVendor_streamsControlledByOtherClientsForDevice___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 24) objectForKeyedSubscript:{objc_msgSend(*(a1 + 40), "deviceID")), "streamsControlledByOtherClients"), "copy"}];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (int)usageCountForDevice:(id)device
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__BWFigCaptureDeviceVendor_usageCountForDevice___block_invoke;
  v5[3] = &unk_1E7999668;
  v5[5] = device;
  v5[6] = &v6;
  v5[4] = self;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __48__BWFigCaptureDeviceVendor_usageCountForDevice___block_invoke(void *a1)
{
  result = [objc_msgSend(*(a1[4] + 24) objectForKeyedSubscript:{a1[5]), "deviceUsageCount"}];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (id)registeredDeviceClients
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__29;
  v9 = __Block_byref_object_dispose__29;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__BWFigCaptureDeviceVendor_registeredDeviceClients__block_invoke;
  v4[3] = &unk_1E798FAF8;
  v4[4] = self;
  v4[5] = &v5;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __51__BWFigCaptureDeviceVendor_registeredDeviceClients__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)registeredDeviceClientWithID:(int)d
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__29;
  v11 = __Block_byref_object_dispose__29;
  v12 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__BWFigCaptureDeviceVendor_registeredDeviceClientWithID___block_invoke;
  v5[3] = &unk_1E7999508;
  v5[4] = self;
  v5[5] = &v7;
  dCopy = d;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (id)activeDeviceClient
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__29;
  v9 = __Block_byref_object_dispose__29;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__BWFigCaptureDeviceVendor_activeDeviceClient__block_invoke;
  v4[3] = &unk_1E79904A0;
  v4[4] = self;
  v4[5] = &v5;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

id __46__BWFigCaptureDeviceVendor_activeDeviceClient__block_invoke(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      v8 = [v7 clientType];
      *(*(*(a1 + 40) + 8) + 40) = v7;
      if (v8 != 1)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        return *(*(*(a1 + 40) + 8) + 40);
      }
    }
  }

  return *(*(*(a1 + 40) + 8) + 40);
}

- (id)activeDeviceClients
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__29;
  v9 = __Block_byref_object_dispose__29;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__BWFigCaptureDeviceVendor_activeDeviceClients__block_invoke;
  v4[3] = &unk_1E798FAF8;
  v4[4] = self;
  v4[5] = &v5;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __47__BWFigCaptureDeviceVendor_activeDeviceClients__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)victimizedDeviceClients
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__29;
  v9 = __Block_byref_object_dispose__29;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__BWFigCaptureDeviceVendor_victimizedDeviceClients__block_invoke;
  v4[3] = &unk_1E798FAF8;
  v4[4] = self;
  v4[5] = &v5;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __51__BWFigCaptureDeviceVendor_victimizedDeviceClients__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)hasActiveForClientAssertion
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__BWFigCaptureDeviceVendor_hasActiveForClientAssertion__block_invoke;
  v4[3] = &unk_1E798FAF8;
  v4[4] = self;
  v4[5] = &v5;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)defaultDeviceCreationHistory
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__29;
  v9 = __Block_byref_object_dispose__29;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__BWFigCaptureDeviceVendor_defaultDeviceCreationHistory__block_invoke;
  v4[3] = &unk_1E798FAF8;
  v4[4] = self;
  v4[5] = &v5;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __56__BWFigCaptureDeviceVendor_defaultDeviceCreationHistory__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 144) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)cmioDeviceCreationHistory
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__29;
  v9 = __Block_byref_object_dispose__29;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__BWFigCaptureDeviceVendor_cmioDeviceCreationHistory__block_invoke;
  v4[3] = &unk_1E798FAF8;
  v4[4] = self;
  v4[5] = &v5;
  [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __53__BWFigCaptureDeviceVendor_cmioDeviceCreationHistory__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 152) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

uint64_t __76__BWFigCaptureDeviceVendor__createDevice_reason_clientPID_figCaptureDevice___block_invoke_334()
{
  v0 = FigCaptureDeviceIORegValuesByKeys();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  result = [v0 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (result)
  {
    v2 = result;
    v3 = *v32;
    do
    {
      v4 = 0;
      do
      {
        if (*v32 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v31 + 1) + 8 * v4);
        v6 = [objc_msgSend(v0 objectForKeyedSubscript:{v5, v22, v23), "intValue"}];
        if (v6 <= 3)
        {
          if (v6 == 2)
          {
            v29 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v20 = v29;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v21 = v20;
            }

            else
            {
              v21 = v20 & 0xFFFFFFFE;
            }

            if (!v21)
            {
              goto LABEL_38;
            }
          }

          else
          {
            if (v6 != 3)
            {
              goto LABEL_39;
            }

            v29 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v11 = v29;
            if (os_log_type_enabled(v10, type))
            {
              v12 = v11;
            }

            else
            {
              v12 = v11 & 0xFFFFFFFE;
            }

            if (!v12)
            {
              goto LABEL_38;
            }
          }

LABEL_37:
          v24 = 136315394;
          v25 = "fcdv_validateCalibrationStatuses";
          v26 = 2114;
          v27 = v5;
          LODWORD(v23) = 22;
          v22 = &v24;
          _os_log_send_and_compose_impl();
          goto LABEL_38;
        }

        if (v6 != 4)
        {
          if (v6 == 5)
          {
            v29 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v17 = v29;
            if (os_log_type_enabled(v16, type))
            {
              v18 = v17;
            }

            else
            {
              v18 = v17 & 0xFFFFFFFE;
            }

            if (!v18)
            {
              goto LABEL_38;
            }
          }

          else
          {
            if (v6 != 6)
            {
              goto LABEL_39;
            }

            v29 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v8 = v29;
            if (os_log_type_enabled(v7, type))
            {
              v9 = v8;
            }

            else
            {
              v9 = v8 & 0xFFFFFFFE;
            }

            if (!v9)
            {
              goto LABEL_38;
            }
          }

          goto LABEL_37;
        }

        if (!dword_1ED844630)
        {
          goto LABEL_39;
        }

        v29 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v14 = v29;
        if (os_log_type_enabled(v13, type))
        {
          v15 = v14;
        }

        else
        {
          v15 = v14 & 0xFFFFFFFE;
        }

        if (v15)
        {
          goto LABEL_37;
        }

LABEL_38:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_39:
        ++v4;
      }

      while (v2 != v4);
      result = [v0 countByEnumeratingWithState:&v31 objects:v30 count:16];
      v2 = result;
    }

    while (result);
  }

  return result;
}

void __69__BWFigCaptureDeviceVendor__updateDefaultDevicePriorStreamPortTypes___block_invoke(uint64_t a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v3 = *(a1 + 32);

  CFNotificationCenterPostNotification(LocalCenter, @"DefaultDeviceStreamsChanged", v3, 0, 0);
}

- (id)osStatePropertyList
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWFigCaptureDeviceVendor osStatePropertyList];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_defaultDeviceCreationHistory forKeyedSubscript:@"Default Device Creation History"];
  [dictionary setObject:self->_cmioDeviceCreationHistory forKeyedSubscript:@"CMIO Device Creation History"];
  return dictionary;
}

void __55__BWFigCaptureDeviceVendor__updateCMIOExtensionDevices__block_invoke(uint64_t a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v3 = *(a1 + 32);

  CFNotificationCenterPostNotification(LocalCenter, @"DevicesChanged", v3, 0, 1u);
}

- (void)_handleCMIOExtensionDevicesChangedNotification:(id)notification
{
  name = [notification name];
  if ([name isEqualToString:*MEMORY[0x1E6963418]])
  {
    if (dword_1ED844630)
    {
      v8 = 0;
      v7 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75__BWFigCaptureDeviceVendor__handleCMIOExtensionDevicesChangedNotification___block_invoke;
    v6[3] = &unk_1E798F870;
    v6[4] = self;
    [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueue:v6];
  }

  else
  {
    [BWFigCaptureDeviceVendor _handleCMIOExtensionDevicesChangedNotification:];
  }
}

- (void)_updateCMIOExtensionDevices
{
  if (self)
  {
    OUTLINED_FUNCTION_60();
    v2 = v1;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    obj = [MEMORY[0x1E695DF70] array];
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v4 = *(v2 + 24);
    v6 = OUTLINED_FUNCTION_64(array3, v5, &v153, v152);
    if (v6)
    {
      v7 = v6;
      v8 = *v154;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v154 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [*(v2 + 24) objectForKeyedSubscript:*(*(&v153 + 1) + 8 * i)];
          v11 = [objc_msgSend(objc_msgSend(v10 "device")];
          if ((v11 & 1) == 0)
          {
            v11 = [obj addObject:{objc_msgSend(objc_msgSend(v10, "device"), "deviceID")}];
          }
        }

        v7 = OUTLINED_FUNCTION_64(v11, v12, &v153, v152);
      }

      while (v7);
    }

    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    devices = [*(v2 + 128) devices];
    v14 = [devices countByEnumeratingWithState:&v148 objects:v147 count:16];
    v100 = v2;
    v94 = array;
    if (v14)
    {
      v16 = v14;
      v89 = 0;
      v98 = *v149;
      *&v15 = 136315650;
      *v93 = v15;
      do
      {
        v17 = 0;
        do
        {
          if (*v149 != v98)
          {
            objc_enumerationMutation(devices);
          }

          v18 = *(*(&v148 + 1) + 8 * v17);
          v19 = [objc_msgSend(v18 "deviceID")];
          v143 = 0u;
          v144 = 0u;
          v145 = 0u;
          v146 = 0u;
          streams = [v18 streams];
          v21 = [streams countByEnumeratingWithState:&v143 objects:v142 count:16];
          if (!v21)
          {
            goto LABEL_26;
          }

          v23 = v21;
          v24 = *v144;
          while (2)
          {
            v25 = 0;
            do
            {
              if (*v144 != v24)
              {
                objc_enumerationMutation(streams);
              }

              if (![*(*(&v143 + 1) + 8 * v25) direction])
              {
                if (![*(v2 + 24) objectForKeyedSubscript:v19])
                {
                  getpid();
                  [BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:];
                  if (v28)
                  {
                    v29 = v28;
                    OUTLINED_FUNCTION_56_11();
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                    {
                      v31 = v141;
                    }

                    else
                    {
                      v31 = v141 & 0xFFFFFFFE;
                    }

                    if (v31)
                    {
                      *v106 = v93[0];
                      OUTLINED_FUNCTION_26_15();
                      *&v106[14] = v19;
                      *&v106[22] = 1024;
                      LODWORD(v107) = v29;
                      OUTLINED_FUNCTION_23_17();
                      OUTLINED_FUNCTION_22_17();
                      _os_log_send_and_compose_impl();
                    }

                    OUTLINED_FUNCTION_1_4();
                    v21 = fig_log_call_emit_and_clean_up_after_send_and_compose();
                    array = v94;
                    goto LABEL_36;
                  }

                  [array2 addObject:v19];
                  v89 = 1;
                }

                v21 = [array addObject:v19];
                goto LABEL_36;
              }

              ++v25;
            }

            while (v23 != v25);
            v21 = [streams countByEnumeratingWithState:&v143 objects:v142 count:16];
            v23 = v21;
            if (v21)
            {
              continue;
            }

            break;
          }

LABEL_26:
          if (dword_1ED844630)
          {
            OUTLINED_FUNCTION_56_11();
            v26 = OUTLINED_FUNCTION_50_13();
            if (os_log_type_enabled(v26, type))
            {
              v27 = v141;
            }

            else
            {
              v27 = v141 & 0xFFFFFFFE;
            }

            if (v27)
            {
              *v106 = 136315394;
              OUTLINED_FUNCTION_26_15();
              *&v106[14] = v19;
              OUTLINED_FUNCTION_23_17();
              OUTLINED_FUNCTION_22_17();
              _os_log_send_and_compose_impl();
            }

            v2 = v100;
            array = v94;
            OUTLINED_FUNCTION_2_4();
            v21 = fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

LABEL_36:
          ++v17;
        }

        while (v17 != v16);
        v32 = OUTLINED_FUNCTION_52(v21, v22, &v148, v147);
        v16 = v32;
      }

      while (v32);
    }

    else
    {
      v89 = 0;
    }

    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    OUTLINED_FUNCTION_103_5();
    v33 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v33)
    {
      v34 = v33;
      v35 = *v133;
      v36 = array3;
      v37 = v89;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v133 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v132 + 1) + 8 * j);
          if (([array containsObject:v39] & 1) == 0)
          {
            [array3 addObject:v39];
            v37 = 1;
          }
        }

        OUTLINED_FUNCTION_103_5();
        v34 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v34);
    }

    else
    {
      v36 = array3;
      v37 = v89;
    }

    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    OUTLINED_FUNCTION_102_4();
    v40 = [v36 countByEnumeratingWithState:? objects:? count:?];
    HIDWORD(v88) = v37;
    if (v40)
    {
      v42 = v40;
      v92 = *v129;
      *&v41 = 136315650;
      *v96 = v41;
      do
      {
        v43 = 0;
        v91 = v42;
        do
        {
          if (*v129 != v92)
          {
            objc_enumerationMutation(v36);
          }

          v44 = *(*(&v128 + 1) + 8 * v43);
          v45 = [objc_msgSend(*(v2 + 24) objectForKeyedSubscript:{v44), "deviceUsageCount"}];
          OUTLINED_FUNCTION_100();
          [BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:];
          if (v45 >= 1)
          {
            v126 = 0u;
            v127 = 0u;
            v124 = 0u;
            v125 = 0u;
            v54 = *(v2 + 40);
            v55 = OUTLINED_FUNCTION_35_14(v46, v47, v48, v49, v50, v51, v52, v53, v84, v85, v86, array2, v88, array3, v91, v92, v43, v93[1], v94, obj, v96[0], v96[1], v97, v44, v100, v101, v102, v103, v104, v105, *v106, *&v106[8], *&v106[16], v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, 0);
            if (v55)
            {
              v56 = v55;
              v57 = *v125;
              do
              {
                for (k = 0; k != v56; ++k)
                {
                  if (*v125 != v57)
                  {
                    objc_enumerationMutation(v54);
                  }

                  v59 = *(*(&v124 + 1) + 8 * k);
                  if (dword_1ED844630)
                  {
                    OUTLINED_FUNCTION_56_11();
                    v60 = OUTLINED_FUNCTION_50_13();
                    v61 = os_log_type_enabled(v60, type);
                    if (OUTLINED_FUNCTION_12(v61))
                    {
                      *v106 = v96[0];
                      OUTLINED_FUNCTION_26_15();
                      *&v106[14] = v99;
                      *&v106[22] = v62;
                      v107 = v59;
                      OUTLINED_FUNCTION_23_17();
                      OUTLINED_FUNCTION_22_17();
                      _os_log_send_and_compose_impl();
                    }

                    OUTLINED_FUNCTION_39_0();
                    v2 = v100;
                  }

                  v63 = *(v2 + 80);
                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 3221225472;
                  block[2] = __145__BWFigCaptureDeviceVendor__deviceAvailabilityChangedForClient_available_postNotification_reason_canShareWithFlashlight_cameraStolenInterruptor___block_invoke;
                  block[3] = &unk_1E7999618;
                  v138 = 1;
                  v137 = 3;
                  v139 = 0;
                  block[4] = v59;
                  block[5] = 0;
                  dispatch_async(v63, block);
                }

                v56 = OUTLINED_FUNCTION_35_14(v64, v65, v66, v67, v68, v69, v70, v71, v84, v85, v86, array2, v88, array3, v91, v92, v93[0], v93[1], v94, obj, v96[0], v96[1], v97, v99, v100, v101, v102, v103, v104, v105, *v106, *&v106[8], *&v106[16], v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
              }

              while (v56);
            }

            [*(v2 + 40) removeAllObjects];
            v36 = array3;
            v42 = v91;
            array = v94;
            v43 = v93[0];
          }

          ++v43;
        }

        while (v43 != v42);
        OUTLINED_FUNCTION_102_4();
        v42 = [v36 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v42);
    }

    v72 = BYTE4(v88);
    if (dword_1ED844630)
    {
      OUTLINED_FUNCTION_56_11();
      v73 = OUTLINED_FUNCTION_50_13();
      v74 = os_log_type_enabled(v73, type);
      if (OUTLINED_FUNCTION_31(v74))
      {
        *v106 = 136315394;
        OUTLINED_FUNCTION_26_15();
        *&v106[14] = obj;
        OUTLINED_FUNCTION_23_17();
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_56_0();
      v72 = BYTE4(v88);
      if (dword_1ED844630)
      {
        OUTLINED_FUNCTION_56_11();
        v75 = OUTLINED_FUNCTION_50_13();
        v76 = os_log_type_enabled(v75, type);
        if (OUTLINED_FUNCTION_12(v76))
        {
          *v106 = 136315394;
          OUTLINED_FUNCTION_26_15();
          *&v106[14] = array;
          OUTLINED_FUNCTION_23_17();
          OUTLINED_FUNCTION_4_4();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0();
        v2 = v100;
        if (dword_1ED844630)
        {
          OUTLINED_FUNCTION_56_11();
          v77 = OUTLINED_FUNCTION_50_13();
          v78 = OUTLINED_FUNCTION_120_2(v77);
          if (OUTLINED_FUNCTION_5_24(v78))
          {
            *v106 = 136315394;
            OUTLINED_FUNCTION_26_15();
            *&v106[14] = array2;
            OUTLINED_FUNCTION_23_17();
            OUTLINED_FUNCTION_4_4();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_13_0();
          v2 = v100;
          if (dword_1ED844630)
          {
            OUTLINED_FUNCTION_56_11();
            v79 = OUTLINED_FUNCTION_50_13();
            v80 = OUTLINED_FUNCTION_120_2(v79);
            if (OUTLINED_FUNCTION_5_24(v80))
            {
              *v106 = 136315394;
              OUTLINED_FUNCTION_26_15();
              *&v106[14] = array3;
              OUTLINED_FUNCTION_23_17();
              OUTLINED_FUNCTION_4_4();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_13_0();
            v2 = v100;
          }
        }
      }
    }

    if (v72)
    {
      if (dword_1ED844630)
      {
        OUTLINED_FUNCTION_56_11();
        v81 = OUTLINED_FUNCTION_50_13();
        v82 = os_log_type_enabled(v81, type);
        if (OUTLINED_FUNCTION_5_24(v82))
        {
          *v106 = 136315138;
          *&v106[4] = "[BWFigCaptureDeviceVendor _updateCMIOExtensionDevices]";
          OUTLINED_FUNCTION_23_17();
          OUTLINED_FUNCTION_58_1();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_13_0();
        v2 = v100;
      }

      v83 = *(v2 + 80);
      v101 = MEMORY[0x1E69E9820];
      v102 = 3221225472;
      v103 = __55__BWFigCaptureDeviceVendor__updateCMIOExtensionDevices__block_invoke;
      v104 = &unk_1E798F870;
      v105 = v2;
      dispatch_async(v83, &v101);
    }

    OUTLINED_FUNCTION_128_0();
  }
}

void __119__BWFigCaptureDeviceVendor_initWithDefaultDeviceCreateFunction_cmioExtensionDeviceCreateFunction_cmioDiscoverySession___block_invoke_3(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) objectForKeyedSubscript:0x1F21702D0] || !*(a1 + 32))
  {
    goto LABEL_2;
  }

  [BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:];
  if (v2)
  {
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v5 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_12(v5))
    {
      OUTLINED_FUNCTION_91_7();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_58_1();
    }

    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_2;
  }

  if (!*(a1 + 32))
  {
LABEL_2:
    OUTLINED_FUNCTION_98();
    return;
  }

  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_98();

  [BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:];
}

- (void)_setupDeviceCloseTimerForDevice:(uint64_t)device
{
  if (device && (FigCaptureIsDebuggerOrSlowAllocationPathEnabled() & 1) == 0)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v4 = [*(device + 24) objectForKeyedSubscript:a2];
    if ([objc_msgSend(objc_msgSend(v4 "device")])
    {
      if (![v4 deviceCloseTimer] || dispatch_source_testcancel(objc_msgSend(v4, "deviceCloseTimer")))
      {
        if (dword_1ED844630)
        {
          v9 = OUTLINED_FUNCTION_86_5();
          if (os_log_type_enabled(v9, v18))
          {
            v10 = v19;
          }

          else
          {
            v10 = v19 & 0xFFFFFFFE;
          }

          if (v10)
          {
            v14 = 136315394;
            v15 = "[BWFigCaptureDeviceVendor _setupDeviceCloseTimerForDevice:]";
            v16 = 2048;
            device = [v4 device];
            OUTLINED_FUNCTION_34_16();
            OUTLINED_FUNCTION_13();
            OUTLINED_FUNCTION_141();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_39_0();
        }

        v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(device + 56));
        [v4 setDeviceCloseTimer:v11];
        [BWFigCaptureDeviceVendor _resetDeviceCloseTimerForDevice:device];
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __60__BWFigCaptureDeviceVendor__setupDeviceCloseTimerForDevice___block_invoke;
        handler[3] = &unk_1E798FE78;
        handler[4] = v4;
        handler[5] = device;
        handler[6] = a2;
        handler[7] = v11;
        dispatch_source_set_event_handler(v11, handler);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __60__BWFigCaptureDeviceVendor__setupDeviceCloseTimerForDevice___block_invoke_296;
        v12[3] = &unk_1E798F898;
        v12[4] = v4;
        v12[5] = v11;
        dispatch_source_set_cancel_handler(v11, v12);
        dispatch_resume(v11);
        dispatch_release(v11);
      }

      else if (dword_1ED844630)
      {
        v5 = OUTLINED_FUNCTION_86_5();
        os_log_type_enabled(v5, v18);
        OUTLINED_FUNCTION_39_7();
        if (v7)
        {
          v8 = v6;
        }

        else
        {
          v8 = v19;
        }

        if (v8)
        {
          v14 = 136315394;
          v15 = "[BWFigCaptureDeviceVendor _setupDeviceCloseTimerForDevice:]";
          v16 = 2048;
          device = [v4 device];
          OUTLINED_FUNCTION_34_16();
          OUTLINED_FUNCTION_58_1();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_17_8();
      }
    }
  }
}

- (void)_resetDeviceCloseTimerForDevice:(uint64_t)device
{
  if (device)
  {
    if (!OUTLINED_FUNCTION_59_9())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if ((FigCaptureIsDebuggerOrSlowAllocationPathEnabled() & 1) == 0)
    {
      v3 = [*(v2 + 24) objectForKeyedSubscript:v1];
      if ([v3 deviceCloseTimer])
      {
        v4 = (*(v2 + 72) * 1000000000.0);
        if (dword_1ED844630)
        {
          OUTLINED_FUNCTION_112();
          v5 = OUTLINED_FUNCTION_77();
          if (os_log_type_enabled(v5, v9))
          {
            v6 = v10;
          }

          else
          {
            v6 = v10 & 0xFFFFFFFE;
          }

          if (v6)
          {
            [v3 device];
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_13();
            OUTLINED_FUNCTION_141();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_56_0();
        }

        [v3 deviceCloseTimer];
        dispatch_time(0, v4);
        v7 = OUTLINED_FUNCTION_3_30();
        dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
      }
    }
  }
}

- (uint64_t)_removeRegisteredDeviceClientWithClientID:(uint64_t)result
{
  if (result)
  {
    if (!OUTLINED_FUNCTION_79_4())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    OUTLINED_FUNCTION_8_7();
    v6 = 3221225472;
    v7 = __70__BWFigCaptureDeviceVendor__removeRegisteredDeviceClientWithClientID___block_invoke;
    v8 = &__block_descriptor_36_e41_B32__0__BWFigCaptureDeviceClient_8Q16_B24l;
    v9 = a2;
    result = [v4 indexOfObjectPassingTest:v5];
    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      return [*(v2 + 32) removeObjectAtIndex:result];
    }
  }

  return result;
}

- (uint64_t)_removeVictimizedDeviceClientWithClientID:(uint64_t)result
{
  if (result)
  {
    if (!OUTLINED_FUNCTION_79_4())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    OUTLINED_FUNCTION_8_7();
    v6 = 3221225472;
    v7 = __70__BWFigCaptureDeviceVendor__removeVictimizedDeviceClientWithClientID___block_invoke;
    v8 = &__block_descriptor_36_e41_B32__0__BWFigCaptureDeviceClient_8Q16_B24l;
    v9 = a2;
    result = [v4 indexOfObjectPassingTest:v5];
    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      return [*(v2 + 48) removeObjectAtIndex:result];
    }
  }

  return result;
}

void __98__BWFigCaptureDeviceVendor_copyDeviceWithID_forClient_informClientWhenDeviceAvailableAgain_error___block_invoke()
{
  OUTLINED_FUNCTION_84();
  v1 = v0;
  v2 = [*(*(v0 + 32) + 24) objectForKeyedSubscript:*(v0 + 40)];
  v3 = [v2 device];
  v4 = [v2 deviceUsageCount];
  v128 = [MEMORY[0x1E695DF70] array];
  v5 = [v2 deviceCloseTimer];
  v6 = [(BWFigCaptureDeviceVendor *)*(v1 + 32) _registeredDeviceClientWithID:?];
  if (!v6)
  {
    if (*(v1 + 96) < sNextClientID)
    {
      OUTLINED_FUNCTION_5_21();
      *(v7 + 24) = -12785;
    }

    goto LABEL_95;
  }

  v8 = v6;
  if ([OUTLINED_FUNCTION_53_9() containsObject:v6] && objc_msgSend(v2, "device") && objc_msgSend(v8, "clientType") == 1)
  {
    OUTLINED_FUNCTION_93_2([v2 device], *(v1 + 56));
    goto LABEL_95;
  }

  source = v5;
  v9 = v2;
  v122 = v4;
  v121 = v3;
  v10 = [OUTLINED_FUNCTION_53_9() count];
  v125 = [(BWFigCaptureDeviceVendor *)*(v1 + 32) _deviceCanBeSharedWithClient:v8];
  v126 = v8;
  v11 = [OUTLINED_FUNCTION_53_9() containsObject:v8];
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v12 = *(*(v1 + 32) + 40);
  v13 = OUTLINED_FUNCTION_123_3();
  if (v13)
  {
    v15 = v13;
    v14 = 0;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        OUTLINED_FUNCTION_89();
        if (!v62)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v143 + 1) + 8 * i);
        if (v14 <= [v17 clientPriority])
        {
          v14 = [v17 clientPriority];
        }
      }

      v15 = OUTLINED_FUNCTION_123_3();
    }

    while (v15);
  }

  else
  {
    v14 = 0;
  }

  v18 = v126;
  v19 = [v126 canStealFromClientsWithSamePriority];
  v20 = [v126 clientPriority];
  if (v19)
  {
    v21 = v20 >= v14;
  }

  else
  {
    v21 = v20 > v14;
  }

  if (!((v10 == 0) | v11 & 1) && !(v125 | v21))
  {
    v4 = v122;
    v2 = v9;
    if (*(v1 + 100) == 1)
    {
      if (dword_1ED844630)
      {
        OUTLINED_FUNCTION_52_12();
        v22 = OUTLINED_FUNCTION_47_11();
        if (OUTLINED_FUNCTION_87_4(v22))
        {
          v23 = v142;
        }

        else
        {
          v23 = v142 & 0xFFFFFFFE;
        }

        if (v23)
        {
          v41 = [v9 device];
          [OUTLINED_FUNCTION_53_9() componentsJoinedByString:{@", "}];
          OUTLINED_FUNCTION_92_3(4.8153e-34);
          *(v42 + 4) = "[BWFigCaptureDeviceVendor copyDeviceWithID:forClient:informClientWhenDeviceAvailableAgain:error:]_block_invoke";
          v135 = 2048;
          *(v42 + 14) = v41;
          HIWORD(v138) = 2114;
          v139 = v43;
          LOWORD(v140) = 2114;
          *(v42 + 34) = v126;
          OUTLINED_FUNCTION_19_22();
          OUTLINED_FUNCTION_58_1();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0();
      }

      OUTLINED_FUNCTION_5_21();
      *(v44 + 24) = -12681;
      [(BWFigCaptureDeviceVendor *)*(v1 + 32) _removeDeviceClient:v126 moveToVictimizedList:1];
    }

    else
    {
      if (dword_1ED844630)
      {
        OUTLINED_FUNCTION_52_12();
        v27 = OUTLINED_FUNCTION_47_11();
        if (OUTLINED_FUNCTION_87_4(v27))
        {
          v28 = v142;
        }

        else
        {
          v28 = v142 & 0xFFFFFFFE;
        }

        if (v28)
        {
          [v9 device];
          v134[0] = 136315906;
          OUTLINED_FUNCTION_108_2();
          v135 = v45;
          *(v47 + 14) = v46;
          HIWORD(v138) = 2114;
          v139 = v48;
          LOWORD(v140) = 2114;
          *(v47 + 34) = v126;
          OUTLINED_FUNCTION_19_22();
          OUTLINED_FUNCTION_58_1();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0();
      }

      [*(*(v1 + 32) + 32) removeObject:v126];
    }

LABEL_68:
    v3 = v121;
    goto LABEL_95;
  }

  v4 = v122;
  v2 = v9;
  if (!v9)
  {
    v24 = *(v1 + 32);
    [v126 pid];
    if (v24)
    {
      OUTLINED_FUNCTION_82();
      [BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:];
    }

    OUTLINED_FUNCTION_5_21();
    *(v26 + 24) = v25;
    v2 = [*(*(v1 + 32) + 24) objectForKeyedSubscript:*(v1 + 40)];
    if (!v2)
    {
      goto LABEL_68;
    }
  }

  if (v10)
  {
    if (v125)
    {
      v3 = v121;
      if (dword_1ED844630)
      {
        v29 = v2;
        OUTLINED_FUNCTION_52_12();
        v30 = OUTLINED_FUNCTION_47_11();
        OUTLINED_FUNCTION_66_6(v30);
        OUTLINED_FUNCTION_39_7();
        if (v62)
        {
          v32 = v31;
        }

        else
        {
          v32 = v10;
        }

        if (v32)
        {
          [v29 device];
          OUTLINED_FUNCTION_92_3(4.8152e-34);
          OUTLINED_FUNCTION_15_27(v57, "[BWFigCaptureDeviceVendor copyDeviceWithID:forClient:informClientWhenDeviceAvailableAgain:error:]_block_invoke");
          OUTLINED_FUNCTION_58_1();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_17_8();
        v2 = v29;
      }

      [OUTLINED_FUNCTION_53_9() addObject:v126];
      goto LABEL_91;
    }

    if ([OUTLINED_FUNCTION_53_9() containsObject:v126])
    {
      v3 = v121;
      if (dword_1ED844630)
      {
        v37 = v2;
        OUTLINED_FUNCTION_52_12();
        v38 = OUTLINED_FUNCTION_47_11();
        OUTLINED_FUNCTION_66_6(v38);
        OUTLINED_FUNCTION_39_7();
        if (v62)
        {
          v40 = v39;
        }

        else
        {
          v40 = v10;
        }

        if (v40)
        {
          [v37 device];
          OUTLINED_FUNCTION_92_3(4.8152e-34);
          OUTLINED_FUNCTION_15_27(v76, "[BWFigCaptureDeviceVendor copyDeviceWithID:forClient:informClientWhenDeviceAvailableAgain:error:]_block_invoke");
          OUTLINED_FUNCTION_58_1();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_17_8();
        v2 = v37;
      }

      goto LABEL_72;
    }

    if (!v21)
    {
      v3 = v121;
      goto LABEL_72;
    }

    if (dword_1ED844630)
    {
      OUTLINED_FUNCTION_52_12();
      v53 = OUTLINED_FUNCTION_47_11();
      if (OUTLINED_FUNCTION_87_4(v53))
      {
        v54 = v142;
      }

      else
      {
        v54 = v142 & 0xFFFFFFFE;
      }

      if (v54)
      {
        [v2 device];
        v134[0] = 136315906;
        OUTLINED_FUNCTION_108_2();
        v135 = v77;
        *(v79 + 14) = v78;
        HIWORD(v138) = 2112;
        v139 = v80;
        LOWORD(v140) = 2112;
        *(v79 + 34) = v126;
        OUTLINED_FUNCTION_19_22();
        OUTLINED_FUNCTION_58_1();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    OUTLINED_FUNCTION_93_2([v126 applicationID], *(v1 + 64));
    mach_absolute_time();
    v81 = [MEMORY[0x1E695DF70] array];
    *v132 = 0u;
    v133 = 0u;
    *v130 = 0u;
    v131 = 0u;
    v82 = [*(*(v1 + 32) + 24) allKeys];
    v83 = [v82 countByEnumeratingWithState:v130 objects:v129 count:16];
    if (v83)
    {
      v85 = v83;
      v123 = 0;
      v84 = 0;
      v86 = *v131;
      v127 = v81;
      do
      {
        v87 = 0;
        do
        {
          if (*v131 != v86)
          {
            objc_enumerationMutation(v82);
          }

          v88 = *(v130[1] + 8 * v87);
          v89 = [*(*(v1 + 32) + 24) objectForKeyedSubscript:v88];
          v90 = [v89 deviceUsageCount];
          if (v90 >= 1)
          {
            v90 = [v89 inUseForPublishing];
            if ((v90 & 1) == 0)
            {
              if ([v89 deviceUsageCount] != 1 || (v90 = objc_msgSend(v89, "inUseForVibeMitigation"), (v90 & 1) == 0))
              {
                if ([v88 isEqualToString:0x1F21702D0])
                {
                  v92 = [*(v1 + 40) isEqualToString:0x1F21702D0];
                  v93 = [v126 canShareWithFlashlightAndVibeMitigation] & v92;
                  if (v92)
                  {
                    v94 = [objc_msgSend(*(*(v1 + 32) + 24) objectForKeyedSubscript:{0x1F21702D0), "figCaptureDevice"}];
                    if (v94)
                    {
                      v123 = CFRetain(v94);
                    }

                    else
                    {
                      v123 = 0;
                    }

                    v81 = v127;
                  }

                  else
                  {
                    v81 = v127;
                  }
                }

                else
                {
                  [v126 canShareWithFlashlightAndVibeMitigation];
                  LOBYTE(v93) = 0;
                }

                [BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:];
                v90 = [v81 addObject:v88];
                v84 |= v93;
              }
            }
          }

          ++v87;
        }

        while (v85 != v87);
        v95 = OUTLINED_FUNCTION_52(v90, v91, v130, v129);
        v85 = v95;
      }

      while (v95);
    }

    else
    {
      v123 = 0;
      v84 = 0;
    }

    if ([v81 containsObject:*(v1 + 40)])
    {
      [v126 pid];
      OUTLINED_FUNCTION_82();
      [BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:];
      OUTLINED_FUNCTION_5_21();
      *(v97 + 24) = v96;
    }

    mach_absolute_time();
    v98 = FigHostTimeToNanoseconds();
    if (dword_1ED844630)
    {
      v99 = v98;
      OUTLINED_FUNCTION_52_12();
      v100 = OUTLINED_FUNCTION_47_11();
      v101 = v142;
      if (OUTLINED_FUNCTION_87_4(v100))
      {
        v102 = v101;
      }

      else
      {
        v102 = v101 & 0xFFFFFFFE;
      }

      if (v102)
      {
        v134[0] = 136315650;
        *&v134[1] = "[BWFigCaptureDeviceVendor copyDeviceWithID:forClient:informClientWhenDeviceAvailableAgain:error:]_block_invoke";
        v135 = 1024;
        v136 = v99 / 1000000;
        v137 = 1024;
        v138 = v123 != 0;
        OUTLINED_FUNCTION_19_22();
        OUTLINED_FUNCTION_58_1();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v123)
    {
      CFRelease(v123);
    }

    v124 = [*(*(v1 + 32) + 24) objectForKeyedSubscript:*(v1 + 40)];
    [*(*(*(v1 + 72) + 8) + 40) addObjectsFromArray:*(*(v1 + 32) + 40)];
    v103 = *(*(*(v1 + 72) + 8) + 40);
    OUTLINED_FUNCTION_86_0();
    v108 = OUTLINED_FUNCTION_52(v104, v105, v106, v107);
    if (v108)
    {
      v109 = v108;
      v110 = MEMORY[0];
      do
      {
        v111 = 0;
        do
        {
          if (MEMORY[0] != v110)
          {
            objc_enumerationMutation(v103);
          }

          v112 = *(8 * v111);
          if ((v84 & 1) != 0 && [*(8 * v111) clientType] == 1)
          {
            if (dword_1ED844630)
            {
              OUTLINED_FUNCTION_52_12();
              v113 = OUTLINED_FUNCTION_47_11();
              v114 = os_log_type_enabled(v113, type);
              if (OUTLINED_FUNCTION_5_2(v114))
              {
                v134[0] = 136315138;
                *&v134[1] = "[BWFigCaptureDeviceVendor copyDeviceWithID:forClient:informClientWhenDeviceAvailableAgain:error:]_block_invoke";
                OUTLINED_FUNCTION_19_22();
                OUTLINED_FUNCTION_13();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_2_4();
              OUTLINED_FUNCTION_16_1();
            }

            [v128 addObject:v112];
          }

          else
          {
            [(BWFigCaptureDeviceVendor *)*(v1 + 32) _removeActiveDeviceClient:v112 moveToVictimizedList:1];
          }

          ++v111;
        }

        while (v109 != v111);
        OUTLINED_FUNCTION_86_0();
        v119 = OUTLINED_FUNCTION_52(v115, v116, v117, v118);
        v109 = v119;
      }

      while (v119);
    }

    v3 = v121;
    v4 = v122;
    v18 = v126;
    v2 = v124;
    if (!v124)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      goto LABEL_95;
    }
  }

  else if (dword_1ED844630)
  {
    v33 = v2;
    OUTLINED_FUNCTION_52_12();
    v34 = OUTLINED_FUNCTION_47_11();
    OUTLINED_FUNCTION_66_6(v34);
    OUTLINED_FUNCTION_39_7();
    if (v62)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    v3 = v121;
    if (v36)
    {
      [v33 device];
      OUTLINED_FUNCTION_92_3(4.8152e-34);
      OUTLINED_FUNCTION_15_27(v49, "[BWFigCaptureDeviceVendor copyDeviceWithID:forClient:informClientWhenDeviceAvailableAgain:error:]_block_invoke");
      OUTLINED_FUNCTION_58_1();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8();
    v2 = v33;
  }

  else
  {
    v3 = v121;
  }

  [OUTLINED_FUNCTION_53_9() addObject:v18];
  if ((v125 & 1) == 0)
  {
LABEL_72:
    if ([objc_msgSend(v2 "controlledStreams")])
    {
      OUTLINED_FUNCTION_52_12();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v51 = v142;
      if (OUTLINED_FUNCTION_87_4(os_log_and_send_and_compose_flags_and_os_log_type))
      {
        v52 = v51;
      }

      else
      {
        v52 = v51 & 0xFFFFFFFE;
      }

      if (v52)
      {
        [objc_msgSend(v2 "controlledStreams")];
        OUTLINED_FUNCTION_92_3(4.8151e-34);
        *(v55 + 4) = "[BWFigCaptureDeviceVendor copyDeviceWithID:forClient:informClientWhenDeviceAvailableAgain:error:]_block_invoke";
        v135 = 2112;
        *(v55 + 14) = v56;
        OUTLINED_FUNCTION_19_22();
        OUTLINED_FUNCTION_58_1();
      }

      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_13_0();
    }

    [(BWFigCaptureDeviceVendor *)*(v1 + 32) _relinquishControlOfStreamsForDevice:?];
  }

LABEL_91:
  OUTLINED_FUNCTION_93_2([v2 device], *(v1 + 56));
  [v2 setDeviceUsageCount:{objc_msgSend(v2, "deviceUsageCount") + objc_msgSend(v128, "count") + 1}];
  v58 = [objc_msgSend(v2 "device")];
  v59 = *off_1E7989FE8;
  if ([v58 objectForKeyedSubscript:*off_1E7989FE8])
  {
    v60 = [v2 device];
    [v60 setProperty:v59 value:MEMORY[0x1E695E118]];
  }

  if (source)
  {
    dispatch_source_cancel(source);
  }

LABEL_95:
  [(BWFigCaptureDeviceVendor *)*(v1 + 32) _dumpInventory];
  v61 = [v2 device];
  v62 = v4 == [v2 deviceUsageCount] && v3 == v61;
  if (!v62)
  {
    *(*(*(v1 + 80) + 8) + 24) = 1;
  }

  *(*(*(v1 + 88) + 8) + 24) = [OUTLINED_FUNCTION_53_9() count] != 0;
  v63 = *(*(v1 + 32) + 40);
  OUTLINED_FUNCTION_85();
  v68 = OUTLINED_FUNCTION_37(v64, v65, v66, v67);
  if (v68)
  {
    v69 = v68;
    v70 = MEMORY[0];
    do
    {
      for (j = 0; j != v69; ++j)
      {
        if (MEMORY[0] != v70)
        {
          objc_enumerationMutation(v63);
        }

        *(*(*(v1 + 88) + 8) + 24) &= [*(8 * j) canShareWithFlashlightAndVibeMitigation];
      }

      OUTLINED_FUNCTION_85();
      v69 = OUTLINED_FUNCTION_37(v72, v73, v74, v75);
    }

    while (v69);
  }

  OUTLINED_FUNCTION_81();
}

- (void)_registeredDeviceClientWithID:(void *)result
{
  if (result)
  {
    v4 = result;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v5 = OUTLINED_FUNCTION_43_13();
    v6 = v4[4];
    result = OUTLINED_FUNCTION_33_14(v7, v8, v16, v9, v10, v5);
    if (result)
    {
      OUTLINED_FUNCTION_81_4();
      while (1)
      {
        OUTLINED_FUNCTION_21_20();
        if (!v11)
        {
          objc_enumerationMutation(v6);
        }

        if ([OUTLINED_FUNCTION_75_6(v17) clientID] == a2)
        {
          break;
        }

        OUTLINED_FUNCTION_51_11();
        if (v11)
        {
          result = OUTLINED_FUNCTION_33_14(v12, v13, v16, v14, v15);
          if (!result)
          {
            return result;
          }
        }
      }

      return v2;
    }
  }

  return result;
}

- (uint64_t)_removeDeviceClient:(int)client moveToVictimizedList:
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    result = _FigIsCurrentDispatchQueue();
    if (result)
    {
      if (!v3)
      {
        return result;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      result = FigDebugAssert3();
      if (!v3)
      {
        return result;
      }
    }

    result = [*(v4 + 32) removeObject:v3];
    if (client)
    {
      result = [v3 deviceAvailabilityChangedHandler];
      if (result)
      {
        if ([v3 clientType] == 2 && objc_msgSend(v3, "clientPriority") <= 3)
        {
          reverseObjectEnumerator = [*(v4 + 48) reverseObjectEnumerator];
          if (![reverseObjectEnumerator countByEnumeratingWithState:v14 objects:v13 count:16])
          {
            return [*(v4 + 48) addObject:v3];
          }

          while (1)
          {
            OUTLINED_FUNCTION_89();
            if (!v7)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v8 = *v15;
            if (![*v15 clientType])
            {
              break;
            }

            OUTLINED_FUNCTION_95_6();
            if (v7 && !OUTLINED_FUNCTION_64(v9, v10, v14, v13))
            {
              return [*(v4 + 48) addObject:v3];
            }
          }

          v12 = [*(v4 + 48) indexOfObject:v8];
          if (v12 == -1)
          {
            return [*(v4 + 48) addObject:v3];
          }

          else
          {
            return [*(v4 + 48) insertObject:v3 atIndex:v12];
          }
        }

        else
        {
          v11 = *(v4 + 48);

          return [v11 addObject:v3];
        }
      }
    }
  }

  return result;
}

- (void)_invalidate:keepFigCaptureDeviceAlive:preserveTorchState:
{
  OUTLINED_FUNCTION_84();
  if (v0)
  {
    v4 = v3;
    v5 = v2;
    v6 = v1;
    v7 = v0;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v8 = [*(v7 + 24) objectForKeyedSubscript:v6];
    if (v8)
    {
      v9 = v8;
      if (dword_1ED844630)
      {
        v93 = 0;
        v92 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_39_7();
        if (v12)
        {
          v13 = v11;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          v88 = 136315394;
          v89 = "[BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:]";
          v90 = 2048;
          device = [v9 device];
          OUTLINED_FUNCTION_34_16();
          v44 = &v88;
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_17_8();
      }

      v53 = v6;
      v14 = [v6 isEqualToString:v44];
      v22 = 152;
      if (v14)
      {
        v22 = 144;
      }

      v23 = v7;
      v24 = *(v7 + v22);
      v25 = OUTLINED_FUNCTION_117_4(v14, v15, v16, v17, v18, v19, v20, v21, v45, v47, v49, 0x1F21702D0, __SPAIR64__(v5, v4), v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, 0);
      if (v25)
      {
        v26 = v25;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            OUTLINED_FUNCTION_89();
            if (!v12)
            {
              objc_enumerationMutation(v24);
            }

            v28 = [objc_msgSend(*(8 * i) objectForKeyedSubscript:{@"Description", "isEqualToString:", objc_msgSend(objc_msgSend(v9, "device"), "description")}];
            if (v28)
            {
              [*(v23 + 160) stringFromDate:{objc_msgSend(MEMORY[0x1E695DF00], "date")}];
              v28 = [OUTLINED_FUNCTION_7() setObject:? forKeyedSubscript:?];
            }
          }

          v26 = OUTLINED_FUNCTION_117_4(v28, v29, v30, v31, v32, v33, v34, v35, v46, v48, v50, v51, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v87);
        }

        while (v26);
      }

      [v9 device];
      [BWFigCaptureDeviceVendor _unregisterForDeviceNotifications:v23];
      device2 = [v9 device];
      if ((v52 & 0x100000000) != 0)
      {
        [(BWFigCaptureDeviceVendor *)v23 _setLowMemoryModeEnabledOnDevice:device2];
        [objc_msgSend(v9 "device")];
        [objc_msgSend(v9 "device")];
        v37 = OUTLINED_FUNCTION_3_30();
        [(BWFigCaptureDeviceVendor *)v37 _relinquishControlOfStreamsForDevice:v38];
      }

      else
      {
        [device2 deviceID];
        v39 = OUTLINED_FUNCTION_3_30();
        [(BWFigCaptureDeviceVendor *)v39 _relinquishControlOfStreamsForDevice:v40];
        [v9 device];
        v41 = OUTLINED_FUNCTION_3_30();
        [(BWFigCaptureDeviceVendor *)v41 _setLowMemoryModeEnabledOnDevice:v42];
        [objc_msgSend(v9 "device")];
      }

      if ([v9 deviceCloseTimer])
      {
        dispatch_source_cancel([v9 deviceCloseTimer]);
      }

      [*(v23 + 24) setObject:0 forKeyedSubscript:v54];
      if ((v52 & 0x100000000) == 0 && [OUTLINED_FUNCTION_40() isEqualToString:?])
      {

        *(v23 + 88) = 0;
        [(BWFigCaptureDeviceVendor *)v23 _releasePowerAssertion];
      }

      if ([OUTLINED_FUNCTION_40() isEqualToString:?])
      {
        v43 = *(v23 + 64);
        if (v43)
        {
          dispatch_source_cancel(v43);
          dispatch_release(*(v23 + 64));
          *(v23 + 64) = 0;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }
  }

  OUTLINED_FUNCTION_81();
}

- (void)_createDevice:reason:clientPID:figCaptureDevice:
{
  OUTLINED_FUNCTION_84();
  v4 = v3;
  cf = v2;
  if (v3)
  {
    v5 = v2;
    v6 = v1;
    v7 = v0;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (OUTLINED_FUNCTION_98_6())
    {
      if (v6 <= 0)
      {
        getpid();
      }

      v8 = FigOSTransactionCreate();
      v9 = v4[11];
      if (v9)
      {
        if (!v5)
        {
          OUTLINED_FUNCTION_4_60();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v43 = OUTLINED_FUNCTION_67_7(os_log_and_send_and_compose_flags_and_os_log_type);
          if (OUTLINED_FUNCTION_6(v43))
          {
            v44 = v4[11];
            v153[0] = 136315394;
            *&v153[1] = "[BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:]";
            v154 = 2112;
            v155 = v44;
            OUTLINED_FUNCTION_14_28();
            OUTLINED_FUNCTION_58_1();
          }

          OUTLINED_FUNCTION_1_4();
          OUTLINED_FUNCTION_17_8();
          [(BWFigCaptureDeviceVendor *)v4 _showISPLeftOnTapToRadarPromptIfNecessary:?];
          v9 = v4[11];
        }

        v5 = cf;
      }

      v4[11] = v8;
      if (!v5)
      {
        [(BWFigCaptureDeviceVendor *)v4 _takePowerAssertion];
      }
    }

    v144 = v4;
    if (OUTLINED_FUNCTION_98_6())
    {
      v10 = v4;
      v11 = v4[1];
      if (v10[8])
      {
        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
        OUTLINED_FUNCTION_4_60();
        v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v14 = OUTLINED_FUNCTION_67_7(v13);
        if (OUTLINED_FUNCTION_6(v14))
        {
          OUTLINED_FUNCTION_90_5(4.8149e-34);
          OUTLINED_FUNCTION_7_49(v15);
          OUTLINED_FUNCTION_58_1();
        }

        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_17_8();
        LOWORD(v160) = 0;
        v17 = OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_11();
        FigCapturePleaseFileRadar(FrameworkRadarComponent, v17, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWFigCaptureDeviceVendor.m", 2943, @"LastShownDate:BWFigCaptureDeviceVendor.m:2943", @"LastShownBuild:BWFigCaptureDeviceVendor.m:2943", &v160);
        free(v17);
        dispatch_source_cancel(v10[8]);
        dispatch_release(v10[8]);
        v10[8] = 0;
      }

      v18 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v10[7]);
      v19 = dispatch_time(0, 30000000000);
      dispatch_source_set_timer(v18, v19, 0x6FC23AC00uLL, 0x29A2241AF62C0000uLL);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __76__BWFigCaptureDeviceVendor__createDevice_reason_clientPID_figCaptureDevice___block_invoke;
      handler[3] = &unk_1E798F870;
      handler[4] = v10;
      dispatch_source_set_event_handler(v18, handler);
      v10[8] = v18;
      dispatch_activate(v18);
      v16 = @"com.apple.CMCapture";
    }

    else
    {
      v11 = v4[2];
      v16 = v7;
    }

    if (v11)
    {
      if (OUTLINED_FUNCTION_98_6())
      {
        mach_absolute_time();
        if (*MEMORY[0x1E695FF58])
        {
          v20 = fig_log_handle();
          if (os_signpost_enabled(v20))
          {
            LOWORD(v160) = 0;
            OUTLINED_FUNCTION_55_11();
            _os_signpost_emit_with_name_impl(v21, v20, OS_SIGNPOST_INTERVAL_BEGIN, v22, v23, v24, v25, 2u);
          }
        }
      }

      v143 = cf;
      if (cf)
      {
        if (dword_1ED844630)
        {
          OUTLINED_FUNCTION_4_60();
          v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v27 = OUTLINED_FUNCTION_30_8(v26);
          if (OUTLINED_FUNCTION_5_2(v27))
          {
            v153[0] = 136315394;
            OUTLINED_FUNCTION_108_2();
            v154 = v28;
            *(v30 + 14) = v29;
            OUTLINED_FUNCTION_14_28();
            OUTLINED_FUNCTION_7_4();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_61_7();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_16_1();
        }

LABEL_49:
        v47 = [BWFigCaptureDevice alloc];
        v48 = [(BWFigCaptureDevice *)v47 initWithFigCaptureDevice:cf deviceID:v7];
        v148 = v48;
        if (!v48)
        {
          OUTLINED_FUNCTION_4_60();
          v139 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v140 = OUTLINED_FUNCTION_30_8(v139);
          if (OUTLINED_FUNCTION_5_2(v140))
          {
            OUTLINED_FUNCTION_90_5(4.8149e-34);
            OUTLINED_FUNCTION_7_49(v141);
            OUTLINED_FUNCTION_7_4();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_61_7();
          }

          OUTLINED_FUNCTION_1_4();
          OUTLINED_FUNCTION_16_1();
          v111 = 0;
          v126 = 0;
          v125 = 0;
          if (v143)
          {
            goto LABEL_136;
          }

          goto LABEL_131;
        }

        v49 = v48;
        v50 = 0x1E695D000uLL;
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [dictionary setObject:objc_msgSend(v49 forKeyedSubscript:{"description"), @"Description"}];
        [dictionary setObject:objc_msgSend(v49 forKeyedSubscript:{"deviceID"), @"DeviceID"}];
        v52 = v144;
        [MEMORY[0x1E695DF00] date];
        [dictionary setObject:objc_msgSend(OUTLINED_FUNCTION_17() forKeyedSubscript:{"stringFromDate:"), @"CreationDate"}];
        v53 = OUTLINED_FUNCTION_98_6();
        v54 = 152;
        if (v53)
        {
          v54 = 144;
        }

        v55 = *(v144 + v54);
        if ([v55 count] >= 0xA)
        {
          if (v53)
          {
            firstObject = [v55 firstObject];
            if (![firstObject objectForKeyedSubscript:@"ReleaseDate"])
            {
              LODWORD(v162[0]) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v58 = os_log_type_enabled(v57, type[0]);
              if (OUTLINED_FUNCTION_31(v58))
              {
                v153[0] = 136315394;
                *&v153[1] = "[BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:]";
                v154 = 2112;
                v155 = firstObject;
                OUTLINED_FUNCTION_14_28();
                OUTLINED_FUNCTION_4_4();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_1_4();
              OUTLINED_FUNCTION_56_0();
              [(BWFigCaptureDeviceVendor *)v144 _showISPLeftOnTapToRadarPromptIfNecessary:?];
              v49 = v148;
              v50 = 0x1E695D000uLL;
            }

            [v55 removeObjectAtIndex:0];
            [v55 addObject:dictionary];
            goto LABEL_78;
          }

          v59 = [v55 count];
          v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
          OUTLINED_FUNCTION_86_0();
          v65 = OUTLINED_FUNCTION_37(v61, v62, v63, v64);
          if (v65)
          {
            v68 = v65;
            v69 = 0;
            do
            {
              for (i = 0; i != v68; ++i)
              {
                OUTLINED_FUNCTION_21_20();
                if (!v71)
                {
                  objc_enumerationMutation(v55);
                }

                if ([OUTLINED_FUNCTION_75_6(0) objectForKeyedSubscript:@"ReleaseDate"])
                {
                  [v60 addObject:v59];
                  if (v69 == v59 - 10)
                  {
                    goto LABEL_58;
                  }

                  ++v69;
                }
              }

              OUTLINED_FUNCTION_86_0();
              v68 = OUTLINED_FUNCTION_37(v72, v73, v74, v75);
            }

            while (v68);
          }

LABEL_58:
          v50 = 0x1E695D000;
          if ([v60 count])
          {
            [OUTLINED_FUNCTION_40() removeObjectsInArray:?];
          }

          v52 = v144;
          v49 = v148;
        }

        [v55 addObject:dictionary];
        if (!v53)
        {
          [BWFigCaptureDeviceVendor _registerForDeviceNotifications:v52];
          goto LABEL_119;
        }

LABEL_78:
        v142 = v7;
        mach_absolute_time();
        *(v52 + 120) = (FigHostTimeToNanoseconds() / 1000 + 999) / 1000;
        if (*MEMORY[0x1E695FF58])
        {
          v76 = fig_log_handle();
          if (os_signpost_enabled(v76))
          {
            v77 = *(v52 + 120);
            v160 = 67240192;
            v161 = v77;
            OUTLINED_FUNCTION_55_11();
            _os_signpost_emit_with_name_impl(v78, v76, OS_SIGNPOST_INTERVAL_END, v79, v80, v81, v82, 8u);
          }
        }

        [+[BWAggdDataReporter sharedInstance](BWAggdDataReporter reportISPCreateDuration:"reportISPCreateDuration:", *(v52 + 120)];
        [(BWFigCaptureDeviceVendor *)v52 _logISPStartupTimeToCoreAnalytics];
        [BWFigCaptureDeviceVendor _registerForDeviceNotifications:v52];
        v83 = objc_alloc_init(*(v50 + 3984));
        memset(v165, 0, 28);
        v164 = 0u;
        v163 = 1065353216;
        v165[0] = 1065353216;
        v165[5] = 1065353216;
        v84 = [MEMORY[0x1E695DEF0] dataWithBytes:&v163 length:48];
        memset(v162, 0, sizeof(v162));
        obj = [v49 streams];
        v85 = [obj countByEnumeratingWithState:v162 objects:&v160 count:16];
        if (v85)
        {
          v86 = v85;
          v87 = *off_1E798BD38;
          v147 = *off_1E798A0C0;
          v146 = *off_1E798A0E0;
          v145 = *off_1E798A0F8;
          do
          {
            v88 = 0;
            v149 = v86;
            do
            {
              OUTLINED_FUNCTION_89();
              if (!v71)
              {
                objc_enumerationMutation(obj);
              }

              v89 = *(v162[1] + 8 * v88);
              if (![objc_msgSend(v89 "supportedProperties")])
              {
                v92 = v84;
                v158 = 0u;
                v159 = 0u;
                *type = 0u;
                v157 = 0u;
                synchronizedStreamsGroups = [v49 synchronizedStreamsGroups];
                v94 = [synchronizedStreamsGroups countByEnumeratingWithState:type objects:v153 count:16];
                if (v94)
                {
                  v95 = v94;
LABEL_92:
                  v96 = 0;
                  while (1)
                  {
                    OUTLINED_FUNCTION_89();
                    if (!v71)
                    {
                      objc_enumerationMutation(synchronizedStreamsGroups);
                    }

                    v97 = *(*&type[8] + 8 * v96);
                    v98 = [objc_msgSend(v97 "streams")];
                    if (v98)
                    {
                      break;
                    }

                    if (v95 == ++v96)
                    {
                      v95 = OUTLINED_FUNCTION_37(v98, v99, type, v153);
                      if (v95)
                      {
                        goto LABEL_92;
                      }

                      goto LABEL_101;
                    }
                  }

                  v100 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v89, 0}];
                  v101 = [[BWFigVideoCaptureSynchronizedStreamsGroup alloc] initWithSynchronizedStreamsGroup:v97 activeStreams:v100 readOnly:1 baseZoomFactorOverrides:0 clientBaseZoomFactorsByPortType:0 error:0];

                  if (!v101)
                  {
                    goto LABEL_101;
                  }

                  [v89 portType];
                  v102 = [OUTLINED_FUNCTION_4() cameraPoseMatrixForPortType:?];
                  v84 = v92;
LABEL_105:
                  v86 = v149;
                  goto LABEL_106;
                }

LABEL_101:
                if ([objc_msgSend(v89 "portType")])
                {
                  v101 = 0;
                  v84 = v92;
                  v102 = v92;
                  goto LABEL_105;
                }

                v84 = v92;
                if ([objc_msgSend(v89 "portType")])
                {
                  v101 = 0;
                  v102 = v92;
                  goto LABEL_105;
                }

                v101 = 0;
                v102 = v92;
                v86 = v149;
                if ([objc_msgSend(v89 "portType")])
                {
LABEL_106:
                  [v83 setObject:v102 forKeyedSubscript:{objc_msgSend(v89, "portType")}];
                }

                v49 = v148;
                goto LABEL_108;
              }

              v90 = [v89 getProperty:v87 error:0];
              v91 = v84;
              if (v90)
              {
                v91 = BWInvertRowMajorViewMatrixData(v90);
              }

              [v83 setObject:v91 forKeyedSubscript:{objc_msgSend(v89, "portType")}];
LABEL_108:
              ++v88;
            }

            while (v88 != v86);
            v103 = [obj countByEnumeratingWithState:v162 objects:&v160 count:16];
            v86 = v103;
          }

          while (v103);
        }

        v104 = [v83 copy];

        v52 = v144;
        v7 = v142;
        [*(v144 + 104) setObject:v104 forKeyedSubscript:v142];

        [(BWFigCaptureDeviceVendor *)v144 _updateDefaultDevicePriorStreamPortTypes:v49];
        if (FigCaptureCurrentProcessIsCameracaptured())
        {
          os_unfair_lock_lock((v144 + 112));
          v105 = *(v144 + 116);
          v106 = *(v144 + 117);
          os_unfair_lock_unlock((v144 + 112));
          if (v105)
          {
            if (v106)
            {
              goto LABEL_119;
            }
          }

          else
          {
            isRearCameraCalibration = [(BWFigCaptureDeviceVendor *)v144 _isRearCameraCalibrationValid];
            os_unfair_lock_lock((v144 + 112));
            *(v144 + 117) = isRearCameraCalibration;
            *(v144 + 116) = 1;
            os_unfair_lock_unlock((v144 + 112));
            global_queue = dispatch_get_global_queue(21, 0);
            dispatch_async(global_queue, &__block_literal_global_336);
            if (isRearCameraCalibration)
            {
              goto LABEL_119;
            }
          }

          LODWORD(v162[0]) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v107 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v108 = OUTLINED_FUNCTION_30_8(v107);
          if (OUTLINED_FUNCTION_5_2(v108))
          {
            OUTLINED_FUNCTION_90_5(4.8149e-34);
            OUTLINED_FUNCTION_7_49(v109);
            OUTLINED_FUNCTION_7_4();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_61_7();
          }

          OUTLINED_FUNCTION_1_4();
          OUTLINED_FUNCTION_16_1();
          v49 = v148;
        }

LABEL_119:
        v110 = [BWFigCaptureDeviceVendorDeviceState alloc];
        v111 = [(BWFigCaptureDeviceVendorDeviceState *)v110 initWithDevice:v49 figCaptureDevice:cf];
        [*(v52 + 24) setObject:v111 forKeyedSubscript:v7];
        streams = [v49 streams];
        OUTLINED_FUNCTION_85();
        v114 = [v113 countByEnumeratingWithState:? objects:? count:?];
        if (v114)
        {
          v115 = v114;
          v116 = MEMORY[0];
          v117 = *off_1E798C218;
          v118 = *off_1E798BC98;
          do
          {
            for (j = 0; j != v115; ++j)
            {
              if (MEMORY[0] != v116)
              {
                objc_enumerationMutation(streams);
              }

              v120 = *(8 * j);
              if ([objc_msgSend(v120 "supportedProperties")])
              {
                [(BWFigCaptureDeviceVendorDeviceState *)v111 portTypesToCheckForToFAFEstimator];
                [v120 portType];
                [OUTLINED_FUNCTION_36() addObject:?];
              }

              if ([objc_msgSend(v120 "supportedProperties")])
              {
                [(BWFigCaptureDeviceVendorDeviceState *)v111 portTypesToCheckForAFDriverShortStatistics];
                [v120 portType];
                [OUTLINED_FUNCTION_36() addObject:?];
              }
            }

            OUTLINED_FUNCTION_85();
            v115 = OUTLINED_FUNCTION_37(v121, v122, v123, v124);
          }

          while (v115);
        }

        v125 = v148;
        if (v143)
        {
LABEL_133:
          v126 = v125;
          if (v111)
          {
LABEL_139:

            goto LABEL_140;
          }

          if (!OUTLINED_FUNCTION_98_6())
          {
            goto LABEL_137;
          }

LABEL_136:
          if (*MEMORY[0x1E695FF58])
          {
            v127 = fig_log_handle();
            if (os_signpost_enabled(v127))
            {
              LOWORD(v160) = 0;
              OUTLINED_FUNCTION_55_11();
              _os_signpost_emit_with_name_impl(v128, v127, OS_SIGNPOST_INTERVAL_END, v129, v130, v131, v132, 2u);
            }
          }

          *(v144 + 88) = 0;
          [(BWFigCaptureDeviceVendor *)v144 _releasePowerAssertion];
          v133 = *(v144 + 64);
          if (v133)
          {
            dispatch_source_cancel(v133);
            dispatch_release(*(v144 + 64));
            v111 = 0;
            *(v144 + 64) = 0;
          }

          else
          {
LABEL_137:
            v111 = 0;
          }

          v125 = v126;
          goto LABEL_139;
        }

LABEL_131:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_133;
      }

      if (dword_1ED844630)
      {
        OUTLINED_FUNCTION_4_60();
        v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v32 = OUTLINED_FUNCTION_67_7(v31);
        if (OUTLINED_FUNCTION_6(v32))
        {
          OUTLINED_FUNCTION_90_5(4.8149e-34);
          OUTLINED_FUNCTION_7_49(v33);
          OUTLINED_FUNCTION_58_1();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_17_8();
      }

      v34 = v11(*MEMORY[0x1E695E480], v16, &cf);
      if (dword_1ED844630)
      {
        OUTLINED_FUNCTION_4_60();
        v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v36 = OUTLINED_FUNCTION_30_8(v35);
        if (OUTLINED_FUNCTION_5_2(v36))
        {
          v153[0] = 136315394;
          OUTLINED_FUNCTION_108_2();
          v154 = v37;
          *(v39 + 14) = v38;
          OUTLINED_FUNCTION_14_28();
          OUTLINED_FUNCTION_7_4();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_61_7();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_16_1();
      }

      if (v34 != -536870174)
      {
        if (!v34)
        {
          goto LABEL_49;
        }

        if (OUTLINED_FUNCTION_98_6() && FigCaptureCurrentProcessIsCameracaptured() && (FigCaptureIsRunningInVirtualization() & 1) == 0)
        {
          OUTLINED_FUNCTION_4_60();
          v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v41 = OUTLINED_FUNCTION_30_8(v40);
          if (OUTLINED_FUNCTION_5_2(v41))
          {
            v153[0] = 136315394;
            *&v153[1] = "[BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:]";
            v154 = 1024;
            LODWORD(v155) = v34;
            OUTLINED_FUNCTION_14_28();
            OUTLINED_FUNCTION_7_4();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_61_7();
          }

          OUTLINED_FUNCTION_8_1();
          OUTLINED_FUNCTION_16_1();
          v160 = 67109120;
          v161 = v34;
          v45 = OUTLINED_FUNCTION_6_0();
          FigCaptureGetHxCameraNewBugsRadarComponent();
          OUTLINED_FUNCTION_11();
          FigCapturePleaseFileRadar(v46, v45, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWFigCaptureDeviceVendor.m", 2994, @"LastShownDate:BWFigCaptureDeviceVendor.m:2994", @"LastShownBuild:BWFigCaptureDeviceVendor.m:2994", &v160);
          free(v45);
        }
      }

      OUTLINED_FUNCTION_4_60();
      v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v67 = OUTLINED_FUNCTION_30_8(v66);
      if (OUTLINED_FUNCTION_5_2(v67))
      {
        v153[0] = 136315394;
        *&v153[1] = "[BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:]";
        v154 = 1024;
        LODWORD(v155) = v34;
        OUTLINED_FUNCTION_14_28();
        OUTLINED_FUNCTION_7_4();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_61_7();
      }
    }

    else
    {
      OUTLINED_FUNCTION_4_60();
      v136 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v137 = OUTLINED_FUNCTION_30_8(v136);
      if (OUTLINED_FUNCTION_5_2(v137))
      {
        OUTLINED_FUNCTION_90_5(4.8149e-34);
        OUTLINED_FUNCTION_7_49(v138);
        OUTLINED_FUNCTION_7_4();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_61_7();
      }
    }

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_16_1();
    v126 = 0;
    goto LABEL_136;
  }

LABEL_140:
  OUTLINED_FUNCTION_81();
}

- (uint64_t)_removeActiveDeviceClient:(int)client moveToVictimizedList:
{
  if (result)
  {
    v5 = result;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v6 = a2;
    [OUTLINED_FUNCTION_7() removeObject:?];
    if (dword_1ED844630)
    {
      OUTLINED_FUNCTION_112();
      v7 = OUTLINED_FUNCTION_77();
      v8 = OUTLINED_FUNCTION_15_1(v7);
      if (OUTLINED_FUNCTION_12(v8))
      {
        OUTLINED_FUNCTION_91_7();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_13();
        OUTLINED_FUNCTION_141();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0();
      if (client && dword_1ED844630)
      {
        OUTLINED_FUNCTION_112();
        v9 = OUTLINED_FUNCTION_77();
        v10 = OUTLINED_FUNCTION_15_1(v9);
        if (OUTLINED_FUNCTION_12(v10))
        {
          OUTLINED_FUNCTION_91_7();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_13();
          OUTLINED_FUNCTION_141();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0();
      }
    }

    return [(BWFigCaptureDeviceVendor *)v5 _removeDeviceClient:a2 moveToVictimizedList:client];
  }

  return result;
}

- (uint64_t)_relinquishControlOfStreamsForDevice:(uint64_t)result
{
  if (result)
  {
    if (!OUTLINED_FUNCTION_79_4())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v4 = [*(v2 + 24) objectForKeyedSubscript:a2];
    if ([objc_msgSend(v4 "controlledStreams")] || (result = objc_msgSend(objc_msgSend(v4, "streamsControlledByOtherClients"), "count")) != 0)
    {
      controlledStreams = [v4 controlledStreams];
      v6 = [controlledStreams countByEnumeratingWithState:v25 objects:v24 count:16];
      if (v6)
      {
        v7 = v6;
        do
        {
          v8 = 0;
          do
          {
            OUTLINED_FUNCTION_21_20();
            if (!v9)
            {
              objc_enumerationMutation(controlledStreams);
            }

            v10 = [BWFigCaptureDeviceVendor _unregisterFromStreamNotifications:v2];
            ++v8;
          }

          while (v7 != v8);
          v7 = OUTLINED_FUNCTION_64(v10, v11, v25, v24);
        }

        while (v7);
      }

      streamsControlledByOtherClients = [v4 streamsControlledByOtherClients];
      OUTLINED_FUNCTION_17_20();
      v14 = [v13 countByEnumeratingWithState:? objects:? count:?];
      if (v14)
      {
        v15 = v14;
        v16 = *v23;
        do
        {
          v17 = 0;
          do
          {
            OUTLINED_FUNCTION_29_11();
            if (v18 != v16)
            {
              objc_enumerationMutation(streamsControlledByOtherClients);
            }

            [BWFigCaptureDeviceVendor _unregisterFromStreamNotifications:v2];
            ++v17;
          }

          while (v15 != v17);
          OUTLINED_FUNCTION_17_20();
          v15 = OUTLINED_FUNCTION_64(v19, v20, v21, v22);
        }

        while (v15);
      }

      [v4 device];
      [v4 controlledStreams];
      [OUTLINED_FUNCTION_17() relinquishControlOfStreams:?];
      [objc_msgSend(v4 "controlledStreams")];
      [objc_msgSend(v4 "streamsControlledByOtherClients")];
      [objc_msgSend(v4 "streamsToKeepControlled")];
      return [objc_msgSend(v4 "streamsInUse")];
    }
  }

  return result;
}

- (void)_deviceAvailabilityChangedForClients:(char)clients available:(int)available postNotifications:(int)notifications reason:(char)reason canShareWithFlashlight:(uint64_t)flashlight cameraStolenInterruptor:
{
  if (self)
  {
    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_17_20();
    v12 = [v11 countByEnumeratingWithState:? objects:? count:?];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        v15 = 0;
        do
        {
          OUTLINED_FUNCTION_29_11();
          if (v16 != v14)
          {
            objc_enumerationMutation(a2);
          }

          OUTLINED_FUNCTION_10_35();
          v26 = v17;
          v27 = &unk_1E7999618;
          v31 = 0;
          clientsCopy2 = clients;
          notificationsCopy2 = notifications;
          reasonCopy = 0;
          v28 = v18;
          flashlightCopy = flashlight;
          dispatch_async(v19, block);
          ++v15;
        }

        while (v13 != v15);
        OUTLINED_FUNCTION_17_20();
        v13 = [a2 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v13);
    }

    if (available)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      OUTLINED_FUNCTION_16_29();
      v26 = v20;
      v27 = &unk_1E7999618;
      v31 = 1;
      clientsCopy2 = clients;
      notificationsCopy2 = notifications;
      reasonCopy = reason;
      v28 = 0;
      flashlightCopy = 0;
      dispatch_async(v21, block);
    }
  }
}

- (uint64_t)_getGameModeEnabledOnDevice:(uint64_t)device
{
  if (!device)
  {
    return 0;
  }

  if (!OUTLINED_FUNCTION_79_4())
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  v2 = *(v1 + 176);
  if (!v2)
  {
    return 0;
  }

  return [v2 isGameModeEnabled];
}

- (void)_requestControlOfStreams:(uint64_t)streams device:deviceClientPriority:
{
  if (streams)
  {
    OUTLINED_FUNCTION_60();
    v3 = v2;
    v5 = v4;
    v7 = v6;
    if (!OUTLINED_FUNCTION_79_4())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (([v5 invalidated] & 1) == 0)
    {
      if (dword_1ED844630)
      {
        v176 = 0;
        v175 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v9 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        if (OUTLINED_FUNCTION_31(v9))
        {
          v163 = 136315906;
          v164 = "[BWFigCaptureDeviceVendor _requestControlOfStreams:device:deviceClientPriority:]";
          v165 = 2112;
          v166 = v7;
          v167 = 2112;
          v168 = v5;
          v169 = 1024;
          v170 = v3;
          LODWORD(v80) = 38;
          v77 = &v163;
          OUTLINED_FUNCTION_58_1();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_56_0();
      }

      [v5 deviceID];
      v10 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
      if (![v10 device] || objc_msgSend(v10, "device") == v5)
      {
        array = [MEMORY[0x1E695DF70] array];
        v12 = OUTLINED_FUNCTION_121_2();
        if (v12)
        {
          v13 = v12;
          v14 = MEMORY[0];
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (MEMORY[0] != v14)
              {
                objc_enumerationMutation(v7);
              }

              v16 = *(8 * i);
              v17 = [objc_msgSend(v10 "controlledStreams")];
              streamsInUse = array;
              if (v17)
              {
                [objc_msgSend(v10 "streamsToKeepControlled")];
                streamsInUse = [v10 streamsInUse];
              }

              [streamsInUse addObject:v16];
            }

            v13 = OUTLINED_FUNCTION_121_2();
          }

          while (v13);
        }

        if ([array count])
        {
          v19 = [v5 requestControlOfStreams:array clientPriority:v3];
          if (v19 == -12681)
          {
            v176 = 0;
            v175 = OS_LOG_TYPE_DEFAULT;
            v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v31 = os_log_type_enabled(v30, v175);
            if (OUTLINED_FUNCTION_12(v31))
            {
              v163 = 136315394;
              v164 = "[BWFigCaptureDeviceVendor _requestControlOfStreams:device:deviceClientPriority:]";
              v165 = 2112;
              v166 = array;
              OUTLINED_FUNCTION_34_16();
              v78 = &v163;
              OUTLINED_FUNCTION_13();
              OUTLINED_FUNCTION_141();
            }

            OUTLINED_FUNCTION_1_4();
            OUTLINED_FUNCTION_39_0();
            OUTLINED_FUNCTION_102_4();
            v36 = OUTLINED_FUNCTION_64(v32, v33, v34, v35);
            if (v36)
            {
              while (1)
              {
                OUTLINED_FUNCTION_89();
                if (!v24)
                {
                  objc_enumerationMutation(array);
                }

                v44 = MEMORY[0];
                if (([objc_msgSend(v10 streamsControlledByOtherClients] & 1) == 0)
                {
                  [objc_msgSend(v10 "streamsControlledByOtherClients")];
                  [BWFigCaptureDeviceVendor _registerForStreamNotifications:v1];
                }

                OUTLINED_FUNCTION_95_6();
                if (v24)
                {
                  OUTLINED_FUNCTION_102_4();
                  v36 = OUTLINED_FUNCTION_64(v45, v46, v47, v48);
                  if (!v36)
                  {
                    break;
                  }
                }
              }
            }

            v49 = OUTLINED_FUNCTION_35_14(v36, v37, v38, v39, v40, v41, v42, v43, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, 0);
            if (v49)
            {
              v50 = v49;
              v51 = MEMORY[0];
              while (2)
              {
                for (j = 0; j != v50; ++j)
                {
                  if (MEMORY[0] != v51)
                  {
                    objc_enumerationMutation(array);
                  }

                  v53 = [objc_msgSend(v10 "portTypesAllowingStreamControlLoss")];
                  if (!v53)
                  {
                    v61 = [*(v1 + 40) copy];
                    OUTLINED_FUNCTION_54_8();
                    OUTLINED_FUNCTION_17_20();
                    if ([v62 countByEnumeratingWithState:? objects:? count:?])
                    {
                      OUTLINED_FUNCTION_57_9();
                      v64 = *v63;
                      do
                      {
                        v65 = 0;
                        do
                        {
                          OUTLINED_FUNCTION_29_11();
                          if (v66 != v64)
                          {
                            objc_enumerationMutation(v61);
                          }

                          v67 = *(v117 + 8 * v65);
                          clientType = [v67 clientType];
                          if (clientType != 1)
                          {
                            [(BWFigCaptureDeviceVendor *)v1 _removeActiveDeviceClient:v67 moveToVictimizedList:1];
                            v76 = *(v1 + 80);
                            v171[0] = MEMORY[0x1E69E9820];
                            v171[1] = 3221225472;
                            v171[2] = __145__BWFigCaptureDeviceVendor__deviceAvailabilityChangedForClient_available_postNotification_reason_canShareWithFlashlight_cameraStolenInterruptor___block_invoke;
                            v171[3] = &unk_1E7999618;
                            v173 = 1;
                            v172 = 0;
                            v174 = 1;
                            v171[4] = v67;
                            v171[5] = 0;
                            dispatch_async(v76, v171);
                          }

                          v65 = v65 + 1;
                        }

                        while (array != v65);
                        array = OUTLINED_FUNCTION_1_2(clientType, v69, v70, v71, v72, v73, v74, v75, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115);
                      }

                      while (array);
                    }

                    goto LABEL_60;
                  }
                }

                v50 = OUTLINED_FUNCTION_35_14(v53, v54, v55, v56, v57, v58, v59, v60, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v162);
                if (v50)
                {
                  continue;
                }

                break;
              }
            }
          }

          else if (!v19)
          {
            OUTLINED_FUNCTION_103_5();
            if (OUTLINED_FUNCTION_64(v20, v21, v22, v23))
            {
              while (1)
              {
                OUTLINED_FUNCTION_89();
                if (!v24)
                {
                  objc_enumerationMutation(array);
                }

                v25 = MEMORY[0];
                [MEMORY[0] flushPropertyCache];
                [objc_msgSend(v10 "streamsInUse")];
                if (([objc_msgSend(v10 "controlledStreams")] & 1) == 0)
                {
                  [objc_msgSend(v10 "controlledStreams")];
                  [BWFigCaptureDeviceVendor _registerForStreamNotifications:v1];
                }

                [objc_msgSend(v10 "streamsControlledByOtherClients")];
                OUTLINED_FUNCTION_95_6();
                if (v24)
                {
                  OUTLINED_FUNCTION_103_5();
                  if (!OUTLINED_FUNCTION_64(v26, v27, v28, v29))
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_60:
    OUTLINED_FUNCTION_128_0();
  }
}

- (uint64_t)_activeDeviceClientWithClientID:(uint64_t)d
{
  if (!d)
  {
    return 0;
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  v5 = OUTLINED_FUNCTION_43_13();
  v6 = *(d + 40);
  if (!OUTLINED_FUNCTION_33_14(v7, v8, v17, v9, v10, v5))
  {
    return 0;
  }

  OUTLINED_FUNCTION_81_4();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (!v11)
    {
      objc_enumerationMutation(v6);
    }

    if ([OUTLINED_FUNCTION_75_6(v18) clientID] == a2)
    {
      break;
    }

    OUTLINED_FUNCTION_51_11();
    if (v11 && !OUTLINED_FUNCTION_33_14(v12, v13, v17, v14, v15))
    {
      return 0;
    }
  }

  return v2;
}

- (uint64_t)_setLowMemoryModeEnabledOnDevice:(uint64_t)device
{
  deviceCopy = device;
  if (device)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v4 = *(deviceCopy + 176);
    if (v4)
    {
      deviceCopy = [v4 isGameModeEnabled];
      if (dword_1ED844630)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v6 = OUTLINED_FUNCTION_24_15(os_log_and_send_and_compose_flags_and_os_log_type);
        if (OUTLINED_FUNCTION_5_24(v6))
        {
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_4_4();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_13_0();
      }

      [a2 setPropertyIfSupported:*off_1E798A008 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", deviceCopy)}];
    }

    else
    {
      return 0;
    }
  }

  return deviceCopy;
}

- (id)_popLatestVictimizedDeviceClient
{
  if (!self)
  {
    return 0;
  }

  if (!OUTLINED_FUNCTION_79_4())
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  if (![*(v1 + 48) count])
  {
    return 0;
  }

  lastObject = [*(v1 + 48) lastObject];
  [*(v1 + 48) removeLastObject];
  return lastObject;
}

- (id)_popLatestVictimizedDeviceClientThatCanShareWithFlashlight
{
  if (!self)
  {
    return 0;
  }

  if (!OUTLINED_FUNCTION_79_4())
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  if (![objc_msgSend(*(v1 + 48) "lastObject")])
  {
    return 0;
  }

  lastObject = [*(v1 + 48) lastObject];
  [*(v1 + 48) removeLastObject];
  return lastObject;
}

- (void)_deviceAvailabilityChangedForClient:(uint64_t)client available:postNotification:reason:canShareWithFlashlight:
{
  if (client)
  {
    OUTLINED_FUNCTION_7_1();
    v5 = 3221225472;
    OUTLINED_FUNCTION_16_29();
    v6 = v1;
    v7 = &unk_1E7999618;
    OUTLINED_FUNCTION_104_4();
    v8 = v2;
    v9 = 0;
    dispatch_async(v3, block);
  }
}

- (BOOL)streamsInUseForDevice:(id)device
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (device)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__BWFigCaptureDeviceVendor_streamsInUseForDevice___block_invoke;
    v5[3] = &unk_1E79906C0;
    v5[4] = self;
    v5[5] = device;
    v5[6] = &v6;
    [(BWFigCaptureDeviceVendor *)self _performBlockOnDeviceQueueSynchronously:v5];
    v3 = *(v7 + 24);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

void *__50__BWFigCaptureDeviceVendor_streamsInUseForDevice___block_invoke(uint64_t a1)
{
  [*(a1 + 40) deviceID];
  result = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 40);
    result = [result device];
    if (v4 == result)
    {
      result = [objc_msgSend(v3 "streamsInUse")];
      *(*(*(a1 + 48) + 8) + 24) = result != 0;
    }
  }

  return result;
}

uint64_t __57__BWFigCaptureDeviceVendor_invalidateVideoDevice_forPID___block_invoke(uint64_t a1)
{
  if (dword_1ED844630)
  {
    v3 = OUTLINED_FUNCTION_37_10();
    v4 = OUTLINED_FUNCTION_29_4(v3);
    if (OUTLINED_FUNCTION_6(v4))
    {
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_58_1();
      OUTLINED_FUNCTION_54_1();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8();
  }

  [*(a1 + 32) deviceID];
  v5 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
  v6 = *(a1 + 32);
  if (v6 == [v5 device])
  {
    [v5 setDeviceUsageCount:{objc_msgSend(v5, "deviceUsageCount") - 1}];
    [v5 deviceUsageCount];
    v7 = *(a1 + 40);
    [*(a1 + 32) deviceID];
    if (v7)
    {
      OUTLINED_FUNCTION_100();
      [BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:];
    }

    v8 = [(BWFigCaptureDeviceVendor *)*(a1 + 40) _popLatestVictimizedDeviceClient];
    OUTLINED_FUNCTION_93_2(v8, *(a1 + 48));
    OUTLINED_FUNCTION_69_0();
    v9 = *(*(a1 + 40) + 40);
    if (OUTLINED_FUNCTION_1_2(v10, v11, v12, v13, v14, v15, v16, v17, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67))
    {
      OUTLINED_FUNCTION_57_9();
      v20 = *v19;
      while (1)
      {
        OUTLINED_FUNCTION_29_11();
        if (v21 != v20)
        {
          objc_enumerationMutation(v9);
        }

        if ([OUTLINED_FUNCTION_75_6(v69) pid] == *(a1 + 64))
        {
          break;
        }

        OUTLINED_FUNCTION_51_11();
        if (v30 && !OUTLINED_FUNCTION_1_2(v22, v23, v24, v25, v26, v27, v28, v29, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68))
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v1 = 0;
    }

    [(BWFigCaptureDeviceVendor *)*(a1 + 40) _removeActiveDeviceClient:v1 moveToVictimizedList:0];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return [(BWFigCaptureDeviceVendor *)*(a1 + 40) _dumpInventory];
}

void __84__BWFigCaptureDeviceVendor_keepControlOfStreamsWithPositions_deviceTypes_forDevice___block_invoke(uint64_t a1)
{
  v1 = a1;
  [*(a1 + 40) deviceID];
  v2 = [OUTLINED_FUNCTION_17() objectForKeyedSubscript:?];
  if (dword_1ED844630)
  {
    v3 = OUTLINED_FUNCTION_115_4();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_12(v4))
    {
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_141();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_39_0();
  }

  if (*(v1 + 40) && (v5 = [*(v1 + 48) count], v5 == objc_msgSend(*(v1 + 56), "count")))
  {
    v6 = *(v1 + 40);
    if (v6 == [v2 device])
    {
      v23 = *(*(v1 + 64) + 8) + 24;
      v7 = [*(v1 + 32) _copyStreamsFromDevice:*(v1 + 40) positions:*(v1 + 48) deviceTypes:*(v1 + 56) requestControl:0 deviceClientPriority:1 allowsStreamControlLoss:0 error:?];
      if (*(*(*(v1 + 64) + 8) + 24))
      {
        FigDebugAssert3();
      }

      else
      {
        v8 = [v2 controlledStreams];
        OUTLINED_FUNCTION_17_20();
        if ([v9 countByEnumeratingWithState:? objects:? count:?])
        {
          OUTLINED_FUNCTION_57_9();
          v11 = *v10;
          do
          {
            v12 = 0;
            do
            {
              OUTLINED_FUNCTION_29_11();
              if (v13 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(v42 + 8 * v12);
              v15 = [v7 containsObject:v14];
              if (v15)
              {
                v15 = [objc_msgSend(v2 "streamsToKeepControlled")];
                if ((v15 & 1) == 0)
                {
                  v15 = [objc_msgSend(v2 "streamsToKeepControlled")];
                }
              }

              ++v12;
            }

            while (v1 != v12);
            v1 = OUTLINED_FUNCTION_1_2(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
          }

          while (v1);
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    *(*(*(v1 + 64) + 8) + 24) = -12780;
  }
}

- (void)takeBackStreams:(id)streams device:(id)device totalStreamingDuration:(unsigned int)duration
{
  if (device)
  {
    OUTLINED_FUNCTION_33_0();
    v9[1] = 3221225472;
    v9[2] = __74__BWFigCaptureDeviceVendor_takeBackStreams_device_totalStreamingDuration___block_invoke;
    v9[3] = &unk_1E7999250;
    v9[4] = v5;
    v9[5] = v6;
    v9[6] = v7;
    v10 = v8;
    [(BWFigCaptureDeviceVendor *)v7 _performBlockOnDeviceQueueSynchronously:v9];
  }
}

uint64_t __74__BWFigCaptureDeviceVendor_takeBackStreams_device_totalStreamingDuration___block_invoke(uint64_t a1)
{
  if (dword_1ED844630)
  {
    OUTLINED_FUNCTION_112();
    v2 = OUTLINED_FUNCTION_77();
    v3 = os_log_type_enabled(v2, v49);
    if (OUTLINED_FUNCTION_6(v3))
    {
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_58_1();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8();
  }

  [*(a1 + 40) deviceID];
  v4 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
  result = [v4 device];
  if (result == *(a1 + 40))
  {
    v6 = [MEMORY[0x1E695DF70] array];
    OUTLINED_FUNCTION_54_8();
    v7 = *(a1 + 32);
    OUTLINED_FUNCTION_17_20();
    v12 = OUTLINED_FUNCTION_52(v8, v9, v10, v11);
    if (v12)
    {
      v13 = v12;
      v14 = *v48;
      do
      {
        v15 = 0;
        do
        {
          OUTLINED_FUNCTION_29_11();
          if (v16 != v14)
          {
            objc_enumerationMutation(v7);
          }

          v17 = *(v47 + 8 * v15);
          [objc_msgSend(v4 "streamsInUse")];
          [v4 portTypesToCheckForToFAFEstimator];
          OUTLINED_FUNCTION_126_3();
          if ([OUTLINED_FUNCTION_36() containsObject:?])
          {
            [(BWFigCaptureDeviceVendor *)*(a1 + 48) _updateTofAFEstimatorResultsForStream:v17 totalStreamingDuration:*(a1 + 56), v18, v19, v20, v21, v22, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48];
          }

          [v4 portTypesToCheckForAFDriverShortStatistics];
          OUTLINED_FUNCTION_126_3();
          if ([OUTLINED_FUNCTION_36() containsObject:?])
          {
            [BWFigCaptureDeviceVendor _updateAFDriverShortStatisticsForStream:?];
          }

          [v4 portTypesAllowingStreamControlLoss];
          OUTLINED_FUNCTION_126_3();
          if ([OUTLINED_FUNCTION_36() containsObject:?])
          {
            [BWFigCaptureDeviceVendor _unregisterFromStreamNotifications:?];
            [v4 portTypesAllowingStreamControlLoss];
            OUTLINED_FUNCTION_126_3();
            [OUTLINED_FUNCTION_36() removeObject:?];
            if ([objc_msgSend(v4 "streamsControlledByOtherClients")])
            {
              [objc_msgSend(v4 "streamsControlledByOtherClients")];
            }
          }

          if ([objc_msgSend(v4 "controlledStreams")] && (objc_msgSend(objc_msgSend(v4, "streamsToKeepControlled"), "containsObject:", v17) & 1) == 0)
          {
            [BWFigCaptureDeviceVendor _unregisterFromStreamNotifications:?];
            [objc_msgSend(v4 "controlledStreams")];
            [v6 addObject:v17];
          }

          ++v15;
        }

        while (v13 != v15);
        OUTLINED_FUNCTION_17_20();
        v27 = OUTLINED_FUNCTION_52(v23, v24, v25, v26);
        v13 = v27;
      }

      while (v27);
    }

    result = [v6 count];
    if (result)
    {
      return [*(a1 + 40) relinquishControlOfStreams:v6];
    }
  }

  return result;
}

- (void)_updateTofAFEstimatorResultsForStream:(uint64_t)stream totalStreamingDuration:(uint64_t)duration
{
  OUTLINED_FUNCTION_59_0();
  if (v32)
  {
    v33 = v31;
    if (!OUTLINED_FUNCTION_59_9())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v34 = [BWFigCaptureDeviceVendor _deviceStateForDeviceWithStream:v30];
    if (v34)
    {
      v35 = v34;
      v36 = [v29 getProperty:*off_1E798C218 error:0];
      if (v36)
      {
        [objc_msgSend(v35 "tofAFEstimatorResultsByPortType")];
        [objc_msgSend(v35 "tofAFEstimatorResultsStreamingTimeByPortType")];
        firstObject = [*(v30 + 40) firstObject];
        OUTLINED_FUNCTION_54_8();
        v38 = *(v30 + 40);
        OUTLINED_FUNCTION_17_20();
        v43 = OUTLINED_FUNCTION_64(v39, v40, v41, v42);
        if (v43)
        {
          v44 = v43;
          v45 = *a29;
          do
          {
            for (i = 0; i != v44; ++i)
            {
              OUTLINED_FUNCTION_29_11();
              if (v47 != v45)
              {
                objc_enumerationMutation(v38);
              }

              v48 = *(a28 + 8 * i);
              clientType = [v48 clientType];
              if (clientType > [firstObject clientType])
              {
                firstObject = v48;
              }
            }

            OUTLINED_FUNCTION_17_20();
            v44 = OUTLINED_FUNCTION_64(v50, v51, v52, v53);
          }

          while (v44);
        }

        [firstObject applicationID];
        [v35 tofAFEstimatorClientApplicationIDByPortType];
        [v29 portType];
        [OUTLINED_FUNCTION_40() setObject:? forKeyedSubscript:?];
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }
  }

  OUTLINED_FUNCTION_58_0();
}

- (uint64_t)_updateAFDriverShortStatisticsForStream:(uint64_t)result
{
  if (result)
  {
    if (!OUTLINED_FUNCTION_59_9())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v3 = [BWFigCaptureDeviceVendor _deviceStateForDeviceWithStream:v2];
    if (v3)
    {
      v4 = v3;
      result = [v1 getProperty:*off_1E798BC98 error:0];
      if (result)
      {
        v5 = result;
        afDriverShortStatisticsByPortType = [v4 afDriverShortStatisticsByPortType];
        portType = [v1 portType];

        return [afDriverShortStatisticsByPortType setObject:v5 forKeyedSubscript:portType];
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_3();
      return FigDebugAssert3();
    }
  }

  return result;
}

- (uint64_t)_unregisterFromStreamNotifications:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_40_14();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_40_14();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_40_14();

    return CMNotificationCenterRemoveListener();
  }

  return result;
}

uint64_t __58__BWFigCaptureDeviceVendor_shutDownSystemPressuredDevice___block_invoke(uint64_t a1)
{
  [*(a1 + 40) deviceID];
  v2 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
  v3 = *(a1 + 40);
  if (v3 == [v2 device])
  {
    [v2 setShutDownDueToSystemPressure:1];
    [(BWFigCaptureDeviceVendor *)*(a1 + 32) _deviceAvailabilityChangedForClients:0 available:1 postNotifications:1 reason:0 canShareWithFlashlight:0 cameraStolenInterruptor:?];
  }

  v4 = *(a1 + 32);

  return [(BWFigCaptureDeviceVendor *)v4 _dumpInventory];
}

void __55__BWFigCaptureDeviceVendor_resumeSystemPressuredDevice__block_invoke(uint64_t a1)
{
  memset(v8, 0, sizeof(v8));
  v3 = [*(*(a1 + 32) + 24) allValues];
  if ([v3 countByEnumeratingWithState:v8 objects:v7 count:16])
  {
    do
    {
      OUTLINED_FUNCTION_21_20();
      if (!v4)
      {
        objc_enumerationMutation(v3);
      }

      if ([OUTLINED_FUNCTION_75_6(*(&v8[0] + 1)) shutDownDueToSystemPressure])
      {
        [v1 setShutDownDueToSystemPressure:0];
        if (![OUTLINED_FUNCTION_53_9() count])
        {
          [(BWFigCaptureDeviceVendor *)*(a1 + 32) _popLatestVictimizedDeviceClient];
          [BWFigCaptureDeviceVendor _deviceAvailabilityChangedForClient:? available:? postNotification:? reason:? canShareWithFlashlight:?];
        }
      }

      OUTLINED_FUNCTION_51_11();
    }

    while (!v4 || OUTLINED_FUNCTION_37(v5, v6, v8, v7));
  }

  [(BWFigCaptureDeviceVendor *)*(a1 + 32) _dumpInventory];
  OUTLINED_FUNCTION_98();
}

void __60__BWFigCaptureDeviceVendor__setupDeviceCloseTimerForDevice___block_invoke(uint64_t a1)
{
  if (dword_1ED844630)
  {
    OUTLINED_FUNCTION_71_3();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v6);
    OUTLINED_FUNCTION_39_7();
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = v7;
    }

    if (v5)
    {
      [*(a1 + 32) device];
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_58_1();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8();
  }

  if ([objc_msgSend(*(a1 + 32) "tofAFEstimatorResultsByPortType")])
  {
    [(BWFigCaptureDeviceVendor *)*(a1 + 40) _logToFAFEstimatorResultsToCoreAnalyticsForDevice:?];
  }

  if ([objc_msgSend(*(a1 + 32) "afDriverShortStatisticsByPortType")])
  {
    [(BWFigCaptureDeviceVendor *)*(a1 + 40) _logAFDriverShortStatisticsToCoreAnalyticsForDevice:?];
  }

  if (*(a1 + 40))
  {
    OUTLINED_FUNCTION_100();
    [BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:];
  }

  dispatch_source_cancel(*(a1 + 56));
  if (![*(*(a1 + 40) + 40) count])
  {
    [(BWFigCaptureDeviceVendor *)*(a1 + 40) _popLatestVictimizedDeviceClient];
    [BWFigCaptureDeviceVendor _deviceAvailabilityChangedForClient:? available:? postNotification:? reason:? canShareWithFlashlight:?];
  }
}

- (uint64_t)_deviceStateForDeviceWithStream:(uint64_t)stream
{
  if (!stream)
  {
    return 0;
  }

  OUTLINED_FUNCTION_80();
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  allValues = [*(v2 + 24) allValues];
  if (![allValues countByEnumeratingWithState:v12 objects:v11 count:16])
  {
    return 0;
  }

  OUTLINED_FUNCTION_81_4();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (!v5)
    {
      objc_enumerationMutation(allValues);
    }

    if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_75_6(v13) "device")])
    {
      break;
    }

    OUTLINED_FUNCTION_51_11();
    if (v5 && !OUTLINED_FUNCTION_33_14(v6, v7, v12, v8, v9))
    {
      return 0;
    }
  }

  return v3;
}

- (void)_handleStreamControlTakenByAnotherClientNotification:(uint64_t)notification
{
  if (notification)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_105_3();
    v3 = OUTLINED_FUNCTION_0_78(v1, v2);
    OUTLINED_FUNCTION_101_4(v3, v4);
  }
}

uint64_t __81__BWFigCaptureDeviceVendor__handleStreamControlTakenByAnotherClientNotification___block_invoke(uint64_t a1)
{
  v2 = [BWFigCaptureDeviceVendor _deviceStateForDeviceWithStream:?];
  result = [objc_msgSend(v2 "controlledStreams")];
  if (result)
  {
    if (dword_1ED844630)
    {
      v163 = 0;
      v162 = 0;
      v4 = OUTLINED_FUNCTION_115_4();
      v5 = OUTLINED_FUNCTION_36_0(v4);
      if (OUTLINED_FUNCTION_5_24(v5))
      {
        v6 = *(a1 + 40);
        v7 = *(*(a1 + 32) + 40);
        v156 = 136315650;
        v157 = "[BWFigCaptureDeviceVendor _handleStreamControlTakenByAnotherClientNotification:]_block_invoke";
        v158 = 2114;
        v159 = v6;
        v160 = 2112;
        v161 = v7;
        LODWORD(v54) = 32;
        v50 = &v156;
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0();
    }

    if (([objc_msgSend(v2 streamsControlledByOtherClients] & 1) == 0)
    {
      [objc_msgSend(v2 "streamsControlledByOtherClients")];
    }

    [objc_msgSend(v2 "controlledStreams")];
    [objc_msgSend(v2 "streamsToKeepControlled")];
    v11 = *(*(a1 + 32) + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__BWFigCaptureDeviceVendor__handleStreamControlTakenByAnotherClientNotification___block_invoke_306;
    block[3] = &unk_1E798F870;
    block[4] = *(a1 + 40);
    dispatch_async(v11, block);
    result = [objc_msgSend(v2 "streamsRequiringControlControlledByOtherClients")];
    if (result == 1)
    {
      v12 = [MEMORY[0x1E695DF70] array];
      v13 = *(*(a1 + 32) + 40);
      if (OUTLINED_FUNCTION_35_14(v12, v14, v15, v16, v17, v18, v19, v20, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, 0))
      {
        do
        {
          OUTLINED_FUNCTION_89();
          if (!v21)
          {
            objc_enumerationMutation(v13);
          }

          v22 = MEMORY[0];
          if ([MEMORY[0] clientType] != 1)
          {
            [v12 addObject:v22];
          }

          OUTLINED_FUNCTION_95_6();
        }

        while (!v21 || OUTLINED_FUNCTION_35_14(v23, v24, v25, v26, v27, v28, v29, v30, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v154));
      }

      OUTLINED_FUNCTION_69_0();
      result = OUTLINED_FUNCTION_1_2(v31, v32, v33, v34, v35, v36, v37, v38, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106);
      if (result)
      {
        OUTLINED_FUNCTION_57_9();
        v40 = *v39;
        while (1)
        {
          OUTLINED_FUNCTION_29_11();
          if (v41 != v40)
          {
            objc_enumerationMutation(v12);
          }

          [(BWFigCaptureDeviceVendor *)*(a1 + 32) _removeActiveDeviceClient:1 moveToVictimizedList:?];
          [BWFigCaptureDeviceVendor _deviceAvailabilityChangedForClient:? available:? postNotification:? reason:? canShareWithFlashlight:?];
          OUTLINED_FUNCTION_51_11();
          if (v21)
          {
            result = OUTLINED_FUNCTION_1_2(v42, v43, v44, v45, v46, v47, v48, v49, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107);
            if (!result)
            {
              break;
            }
          }
        }
      }
    }
  }

  else if (dword_1ED844630)
  {
    v8 = OUTLINED_FUNCTION_37_10();
    v9 = OUTLINED_FUNCTION_29_4(v8);
    if (OUTLINED_FUNCTION_6(v9))
    {
      v10 = *(a1 + 40);
      v156 = 136315394;
      v157 = "[BWFigCaptureDeviceVendor _handleStreamControlTakenByAnotherClientNotification:]_block_invoke_2";
      v158 = 2114;
      v159 = v10;
      OUTLINED_FUNCTION_34_16();
      OUTLINED_FUNCTION_58_1();
      OUTLINED_FUNCTION_54_1();
    }

    OUTLINED_FUNCTION_2_4();
    return OUTLINED_FUNCTION_17_8();
  }

  return result;
}

- (void)_handleStreamRelinquishedByAnotherClientNotification:(uint64_t)notification
{
  if (notification)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_105_3();
    v3 = OUTLINED_FUNCTION_0_78(v1, v2);
    OUTLINED_FUNCTION_101_4(v3, v4);
  }
}

void __81__BWFigCaptureDeviceVendor__handleStreamRelinquishedByAnotherClientNotification___block_invoke(uint64_t a1)
{
  if (dword_1ED844630)
  {
    v2 = OUTLINED_FUNCTION_37_10();
    v3 = OUTLINED_FUNCTION_29_4(v2);
    if (OUTLINED_FUNCTION_6(v3))
    {
      v4 = *(a1 + 32);
      v28 = 136315394;
      v29 = "[BWFigCaptureDeviceVendor _handleStreamRelinquishedByAnotherClientNotification:]_block_invoke";
      v30 = 2114;
      v31 = v4;
      OUTLINED_FUNCTION_34_16();
      v25 = &v28;
      OUTLINED_FUNCTION_58_1();
      OUTLINED_FUNCTION_54_1();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8();
  }

  v5 = [BWFigCaptureDeviceVendor _deviceStateForDeviceWithStream:?];
  v6 = [objc_msgSend(v5 "streamsControlledByOtherClients")];
  v7 = *(*(a1 + 40) + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__BWFigCaptureDeviceVendor__handleStreamRelinquishedByAnotherClientNotification___block_invoke_308;
  block[3] = &unk_1E798F870;
  block[4] = *(a1 + 32);
  dispatch_async(v7, block);
  [v5 portTypesAllowingStreamControlLoss];
  [*(a1 + 32) portType];
  if ([OUTLINED_FUNCTION_7() containsObject:?])
  {
    [BWFigCaptureDeviceVendor _unregisterFromStreamNotifications:?];
    [objc_msgSend(v5 "streamsControlledByOtherClients")];
  }

  else if (v6 && ![objc_msgSend(v5 "device")])
  {
    if ([v5 takeBackDeviceCalledForActiveClientID])
    {
      v8 = *(a1 + 40);
      v9 = -[BWFigCaptureDeviceVendor _activeDeviceClientWithClientID:](v8, [v5 takeBackDeviceCalledForActiveClientID]);
      [(BWFigCaptureDeviceVendor *)v8 _removeActiveDeviceClient:v9 moveToVictimizedList:0];
      [v5 setTakeBackDeviceCalledForActiveClientID:0];
    }

    v10 = [(BWFigCaptureDeviceVendor *)*(a1 + 40) _popLatestVictimizedDeviceClient];
    [v5 device];
    [v5 streamsControlledByOtherClients];
    [OUTLINED_FUNCTION_7() relinquishControlOfStreams:?];
    v11 = [v5 streamsControlledByOtherClients];
    OUTLINED_FUNCTION_17_20();
    v13 = [v12 countByEnumeratingWithState:? objects:? count:?];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        v16 = 0;
        do
        {
          OUTLINED_FUNCTION_29_11();
          if (v17 != v15)
          {
            objc_enumerationMutation(v11);
          }

          [BWFigCaptureDeviceVendor _unregisterFromStreamNotifications:?];
          ++v16;
        }

        while (v14 != v16);
        OUTLINED_FUNCTION_17_20();
        v14 = OUTLINED_FUNCTION_52(v18, v19, v20, v21);
      }

      while (v14);
    }

    [objc_msgSend(v5 streamsControlledByOtherClients];
    v22 = *(a1 + 40);
    [v10 canShareWithFlashlightAndVibeMitigation];
    [BWFigCaptureDeviceVendor _deviceAvailabilityChangedForClient:v22 available:? postNotification:? reason:? canShareWithFlashlight:?];
    if (![*(*(a1 + 40) + 40) count])
    {
      v23 = *(a1 + 40);
      v24 = [objc_msgSend(v5 "device")];
      if (v10)
      {
        [(BWFigCaptureDeviceVendor *)v23 _setupDeviceCloseTimerForDevice:v24];
      }

      else if (v23)
      {
        OUTLINED_FUNCTION_100();
        [BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:];
      }
    }
  }
}

- (void)_handleStreamFrameReceiveTimeoutNotification:(uint64_t)notification
{
  if (notification)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_105_3();
    v3 = OUTLINED_FUNCTION_0_78(v1, v2);
    OUTLINED_FUNCTION_101_4(v3, v4);
  }
}

void __73__BWFigCaptureDeviceVendor__handleStreamFrameReceiveTimeoutNotification___block_invoke(uint64_t a1)
{
  v2 = [BWFigCaptureDeviceVendor _deviceStateForDeviceWithStream:?];
  if ([objc_msgSend(objc_msgSend(v2 "device")])
  {
    OUTLINED_FUNCTION_71_3();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v4 = OUTLINED_FUNCTION_24_15(os_log_and_send_and_compose_flags_and_os_log_type);
    if (OUTLINED_FUNCTION_5_24(v4))
    {
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_4_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_13_0();
    [objc_msgSend(v2 "device")];
    v5 = OUTLINED_FUNCTION_3_30();
    [BWFigCaptureDeviceVendor _handleErrorForDevice:v5];
  }
}

- (void)_handleErrorForDevice:(uint64_t)device
{
  if (device)
  {
    OUTLINED_FUNCTION_60();
    v3 = v2;
    if (!OUTLINED_FUNCTION_79_4())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v4 = [*(v1 + 24) objectForKeyedSubscript:v3];
    if (v4)
    {
      v5 = v4;
      array = [MEMORY[0x1E695DF70] array];
      v7 = [array addObjectsFromArray:*(v1 + 40)];
      memset(v78, 0, 64);
      v9 = OUTLINED_FUNCTION_37(v7, v8, v78, v77);
      if (v9)
      {
        v10 = v9;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            OUTLINED_FUNCTION_21_20();
            if (!v12)
            {
              objc_enumerationMutation(array);
            }

            v13 = [(BWFigCaptureDeviceVendor *)v1 _removeActiveDeviceClient:0 moveToVictimizedList:?];
          }

          v10 = OUTLINED_FUNCTION_37(v13, v14, v78, v77);
        }

        while (v10);
      }

      [objc_msgSend(v5 "device")];
      OUTLINED_FUNCTION_3_30();
      OUTLINED_FUNCTION_100();
      [BWFigCaptureDeviceVendor _invalidate:keepFigCaptureDeviceAlive:preserveTorchState:];
      OUTLINED_FUNCTION_69_0();
      if (OUTLINED_FUNCTION_1_2(v15, v16, v17, v18, v19, v20, v21, v22, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75))
      {
        OUTLINED_FUNCTION_57_9();
        v24 = *v23;
        do
        {
          for (j = 0; j != v5; ++j)
          {
            OUTLINED_FUNCTION_29_11();
            if (v26 != v24)
            {
              objc_enumerationMutation(array);
            }

            OUTLINED_FUNCTION_10_35();
            v79 = v27;
            v80 = &unk_1E7999618;
            OUTLINED_FUNCTION_99_3(v28, 1);
            OUTLINED_FUNCTION_10_35();
            v79 = v29;
            v80 = &unk_1E7999618;
            OUTLINED_FUNCTION_99_3(v30, 257);
          }

          v5 = OUTLINED_FUNCTION_1_2(v31, v32, v33, v34, v35, v36, v37, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76);
        }

        while (v5);
      }
    }

    OUTLINED_FUNCTION_128_0();
  }
}

- (void)_handleDeviceUnrecoverableError:(uint64_t)error fromDevice:
{
  if (error)
  {
    OUTLINED_FUNCTION_33_0();
    v2 = OUTLINED_FUNCTION_0_78(v1, COERCE_DOUBLE(3221225472));
    OUTLINED_FUNCTION_101_4(v2, v3);
  }
}

- (void)_handleDeviceNoLongerAvailable:(uint64_t)available
{
  if (available)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_105_3();
    v3 = OUTLINED_FUNCTION_0_78(v1, v2);
    OUTLINED_FUNCTION_101_4(v3, v4);
  }
}

- (uint64_t)_registerForStreamNotifications:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_25_17();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_25_17();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_25_17();

    return CMNotificationCenterAddListener();
  }

  return result;
}

- (uint64_t)_registerForDeviceNotifications:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_25_17();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_25_17();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

- (uint64_t)_unregisterForDeviceNotifications:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_40_14();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_40_14();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

- (void)_showISPLeftOnTapToRadarPromptIfNecessary:(uint64_t)necessary
{
  if (necessary)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    OUTLINED_FUNCTION_42_12();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v5 = OUTLINED_FUNCTION_36_0(os_log_and_send_and_compose_flags_and_os_log_type);
    if (OUTLINED_FUNCTION_5_24(v5))
    {
      OUTLINED_FUNCTION_91_7();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_4_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_13_0();
    v7 = 138412290;
    v8 = a2;
    v6 = OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_11();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v6, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWFigCaptureDeviceVendor.m", 3581, @"LastShownDate:BWFigCaptureDeviceVendor.m:3581", @"LastShownBuild:BWFigCaptureDeviceVendor.m:3581", &v7);
    free(v6);
    OUTLINED_FUNCTION_98();
  }
}

- (void)_logActiveDefaultDeviceClientAndDevice
{
  if (self)
  {
    OUTLINED_FUNCTION_84();
    v2 = v1;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v29 = v2;
    obj = *(v2 + 40);
    v3 = [obj countByEnumeratingWithState:&v45 objects:v44 count:16];
    v4 = &unk_1ED844000;
    if (v3)
    {
      v5 = v3;
      v6 = *v46;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          OUTLINED_FUNCTION_21_20();
          if (!v8)
          {
            objc_enumerationMutation(obj);
          }

          if (v4[396])
          {
            v9 = *(*(&v45 + 1) + 8 * i);
            v10 = OUTLINED_FUNCTION_46_13();
            v11 = v43;
            if (os_log_type_enabled(v10, type))
            {
              v12 = v11;
            }

            else
            {
              v12 = v11 & 0xFFFFFFFE;
            }

            if (v12)
            {
              applicationID = [v9 applicationID];
              v13 = [v9 pid];
              v14 = v5;
              v15 = v6;
              v16 = v4;
              clientID = [v9 clientID];
              clientDescription = [v9 clientDescription];
              v32 = 136316163;
              v33 = "[BWFigCaptureDeviceVendor _logActiveDefaultDeviceClientAndDevice]";
              v34 = 2114;
              v35 = applicationID;
              v36 = 1025;
              v37 = v13;
              v38 = 1024;
              v39 = clientID;
              v4 = v16;
              v6 = v15;
              v5 = v14;
              v40 = 2114;
              v41 = clientDescription;
              LODWORD(v28) = 44;
              v27 = &v32;
              OUTLINED_FUNCTION_13();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v5 = [obj countByEnumeratingWithState:&v45 objects:v44 count:16];
      }

      while (v5);
    }

    v19 = [*(v29 + 40) count];
    v20 = v4[396];
    if (!v19 && v20)
    {
      v21 = OUTLINED_FUNCTION_46_13();
      v22 = os_log_type_enabled(v21, type);
      if (OUTLINED_FUNCTION_6(v22))
      {
        v32 = 136315138;
        v33 = "[BWFigCaptureDeviceVendor _logActiveDefaultDeviceClientAndDevice]";
        OUTLINED_FUNCTION_58_1();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_17_8();
      v20 = dword_1ED844630;
    }

    if (v20)
    {
      v23 = OUTLINED_FUNCTION_46_13();
      v24 = v43;
      if (os_log_type_enabled(v23, type))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        v26 = [objc_msgSend(*(v29 + 24) objectForKeyedSubscript:{0x1F21702D0), "device"}];
        v32 = 136315394;
        v33 = "[BWFigCaptureDeviceVendor _logActiveDefaultDeviceClientAndDevice]";
        v34 = 2112;
        v35 = v26;
        OUTLINED_FUNCTION_34_16();
        OUTLINED_FUNCTION_58_1();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    OUTLINED_FUNCTION_81();
  }
}

- (void)_updateDefaultDevicePriorStreamPortTypes:(uint64_t)types
{
  if (types)
  {
    if ([objc_msgSend(a2 "deviceID")])
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      memset(v17, 0, sizeof(v17));
      streams = [a2 streams];
      if ([streams countByEnumeratingWithState:v17 objects:v16 count:16])
      {
        do
        {
          OUTLINED_FUNCTION_89();
          if (!v6)
          {
            objc_enumerationMutation(streams);
          }

          [*v17[1] portType];
          [OUTLINED_FUNCTION_4() addObject:?];
          OUTLINED_FUNCTION_95_6();
        }

        while (!v6 || OUTLINED_FUNCTION_64(v7, v8, v17, v16));
      }

      v9 = *(types + 168);
      if (v9)
      {
        if (([v9 isEqualToSet:v4] & 1) == 0)
        {
          [*(types + 168) setSet:v4];
          OUTLINED_FUNCTION_8_7();
          v12 = 3221225472;
          v13 = __69__BWFigCaptureDeviceVendor__updateDefaultDevicePriorStreamPortTypes___block_invoke;
          v14 = &unk_1E798F870;
          typesCopy = types;
          dispatch_async(v10, block);
        }
      }

      else
      {
        *(types + 168) = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v4];
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_3();
      FigDebugAssert3();
    }
  }
}

- (BOOL)_isRearCameraCalibrationValid
{
  if (result)
  {
    return FigCapturePlatformIdentifier() < 7 || !BWDeviceIsiPhone() || (MGGetBoolAnswer() & 1) != 0 || ([objc_msgSend(FigCaptureDeviceIORegValuesByKeys() objectForKeyedSubscript:{0x1F21ADBD0), "intValue"}] & 0xFFFFFFFE) != 2;
  }

  return result;
}

- (uint64_t)_releasePowerAssertion
{
  if (result)
  {
    result = OUTLINED_FUNCTION_79_4();
    if (!result)
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      result = FigDebugAssert3();
    }

    if (*(v1 + 96) == 1)
    {
      result = IOPMAssertionRelease(*(v1 + 100));
      *(v1 + 96) = 0;
      if (!result)
      {
        if (dword_1ED844630)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v3 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          if (OUTLINED_FUNCTION_5_2(v3))
          {
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_7_4();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          return OUTLINED_FUNCTION_16_1();
        }
      }
    }
  }

  return result;
}

- (uint64_t)initWithDefaultDeviceCreateFunction:cmioExtensionDeviceCreateFunction:cmioDiscoverySession:.cold.2()
{
  v0 = OUTLINED_FUNCTION_36_15();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("[BWFigCaptureDeviceVendor initWithDefaultDeviceCreateFunction:cmioExtensionDeviceCreateFunction:cmioDiscoverySession:]");
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_1_4();
  return OUTLINED_FUNCTION_16_1();
}

- (uint64_t)initWithDefaultDeviceCreateFunction:cmioExtensionDeviceCreateFunction:cmioDiscoverySession:.cold.3()
{
  v0 = OUTLINED_FUNCTION_36_15();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("[BWFigCaptureDeviceVendor initWithDefaultDeviceCreateFunction:cmioExtensionDeviceCreateFunction:cmioDiscoverySession:]");
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_1_4();
  return OUTLINED_FUNCTION_16_1();
}

uint64_t __64__BWFigCaptureDeviceVendor_updateClientPriority_clientPriority___block_invoke_cold_1()
{
  v0 = OUTLINED_FUNCTION_36_15();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("[BWFigCaptureDeviceVendor updateClientPriority:clientPriority:]_block_invoke");
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_1_4();
  return OUTLINED_FUNCTION_16_1();
}

- (uint64_t)_copyStreamsFromDevice:positions:deviceTypes:requestControl:deviceClientPriority:allowsStreamControlLoss:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

void __126__BWFigCaptureDeviceVendor_takeBackDevice_forClient_informClientWhenDeviceAvailableAgain_prefersDeviceInvalidatedImmediately___block_invoke_cold_1(uint64_t a1, void *a2)
{
  [a2 deviceID];
  v2 = OUTLINED_FUNCTION_3_30();
  [(BWFigCaptureDeviceVendor *)v2 _setupDeviceCloseTimerForDevice:v3];
}

uint64_t __80__BWFigCaptureDeviceVendor_structuredLightProjectorStandbyTemperatureWithError___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  [BWFigCaptureDeviceVendor _createDevice:reason:clientPID:figCaptureDevice:];
  result = [*(*a1 + 24) objectForKeyedSubscript:a2];
  *a3 = result;
  return result;
}

- (uint64_t)_deviceWithID:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)osStatePropertyList
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

@end