@interface CSCarKitUtils
+ (id)sharedInstance;
- (BOOL)_isValidLatencyCorrectionValue:(id)value;
- (BOOL)isBargeInDisabledForConnectedVehicle;
- (BOOL)isCarPlayConnected;
- (CSCarKitUtils)init;
- (id)_fetchCarCapabilitiesDict;
- (id)_userInfoValueForKey:(id)key;
- (id)potentiallyAddHWLatencyToOption:(id)option streamHandle:(unint64_t)handle voiceController:(id)controller;
- (void)_fetchCarCapabilitiesInBackgroundWithCompletion:(id)completion;
- (void)_invalidateCachedCarPlayCapabilities;
- (void)_recacheCarPlayCapabilitiesWithCompletion:(id)completion;
- (void)_startObservingCarCapabilitiesNotfication:(const __CFString *)notfication;
- (void)_updateCarPlayCapabilitiesDict;
- (void)dealloc;
- (void)handleCarCapabilitiesUpdatedWithCompletion:(id)completion;
- (void)handleHeadUnitConnectedWithAsyncCompletion:(id)completion;
@end

@implementation CSCarKitUtils

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1692 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1692, &__block_literal_global_1693);
  }

  v3 = sharedInstance_singleton;

  return v3;
}

- (BOOL)isCarPlayConnected
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[CSAudioRouteChangeMonitor sharedInstance];
  carPlayConnected = [v2 carPlayConnected];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = v4;
    v9 = [v7 numberWithBool:carPlayConnected];
    v10 = 136315394;
    v11 = "[CSCarKitUtils isCarPlayConnected]";
    v12 = 2112;
    v13 = v9;
    _os_log_debug_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEBUG, "%s CarPlay connected = %@.", &v10, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return carPlayConnected;
}

- (BOOL)isBargeInDisabledForConnectedVehicle
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(CSCarKitUtils *)self isCarPlayConnected])
  {
    v3 = [(CSCarKitUtils *)self _userInfoValueForKey:@"disableBargeInRequest"];
    if (!v3)
    {
      v3 = [(CSCarKitUtils *)self _userInfoValueForKey:@"disableFlexibleFollowup"];
    }

    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[CSCarKitUtils isBargeInDisabledForConnectedVehicle]";
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_INFO, "%s disabled = %@", &v9, 0x16u);
    }

    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315138;
      v10 = "[CSCarKitUtils isBargeInDisabledForConnectedVehicle]";
      _os_log_debug_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEBUG, "%s disabled = 0 because car play is not connected", &v9, 0xCu);
    }

    bOOLValue = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (id)_fetchCarCapabilitiesDict
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1665;
  v9 = __Block_byref_object_dispose__1666;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__CSCarKitUtils__fetchCarCapabilitiesDict__block_invoke;
  v4[3] = &unk_1E865C120;
  v4[4] = &v5;
  [CSUtils withElapsedTimeLogging:@"CRFetchCarPlayCapabilities" execute:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __42__CSCarKitUtils__fetchCarCapabilitiesDict__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__CSCarKitUtils__fetchCarCapabilitiesDict__block_invoke_2;
  v11[3] = &unk_1E865AA48;
  v13 = *(a1 + 32);
  v3 = v2;
  v12 = v3;
  v4 = v11;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v5 = getCRFetchCarPlayCapabilitiesSymbolLoc_ptr;
  v17 = getCRFetchCarPlayCapabilitiesSymbolLoc_ptr;
  if (!getCRFetchCarPlayCapabilitiesSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v19 = __getCRFetchCarPlayCapabilitiesSymbolLoc_block_invoke;
    v20 = &unk_1E865C120;
    v21 = &v14;
    v6 = CarKitLibrary();
    v7 = dlsym(v6, "CRFetchCarPlayCapabilities");
    *(v21[1] + 24) = v7;
    getCRFetchCarPlayCapabilitiesSymbolLoc_ptr = *(v21[1] + 24);
    v5 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v5)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v5(v4);

  v8 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v3, v8))
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[CSCarKitUtils _fetchCarCapabilitiesDict]_block_invoke";
      _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, "%s CarKit CRFetchCarPlayCapabilities timed out", &buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __42__CSCarKitUtils__fetchCarCapabilitiesDict__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[CSCarKitUtils _fetchCarCapabilitiesDict]_block_invoke_2";
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Error in CRFetchCarPlayCapabilities: %@", &v12, 0x16u);
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
  v11 = *MEMORY[0x1E69E9840];
}

- (id)_userInfoValueForKey:(id)key
{
  v25 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  os_unfair_lock_lock(&self->_carCapabilitiesLock);
  v5 = self->_carPlayCapabilitiesDict;
  os_unfair_lock_unlock(&self->_carCapabilitiesLock);
  if (v5)
  {
    os_unfair_lock_lock(&self->_carCapabilitiesLock);
    carPlayCapabilitiesDict = self->_carPlayCapabilitiesDict;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v7 = getCRCapabilitiesUserInfoKeySymbolLoc_ptr;
    v21 = getCRCapabilitiesUserInfoKeySymbolLoc_ptr;
    if (!getCRCapabilitiesUserInfoKeySymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCRCapabilitiesUserInfoKeySymbolLoc_block_invoke;
      v23 = &unk_1E865C120;
      v24 = &v18;
      v8 = CarKitLibrary();
      v9 = dlsym(v8, "CRCapabilitiesUserInfoKey");
      *(v24[1] + 24) = v9;
      getCRCapabilitiesUserInfoKeySymbolLoc_ptr = *(v24[1] + 24);
      v7 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v7)
    {
      dlerror();
      abort_report_np();
      __break(1u);
    }

    v10 = *v7;
    v11 = [(NSDictionary *)carPlayCapabilitiesDict objectForKey:v10];

    os_unfair_lock_unlock(&self->_carCapabilitiesLock);
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [v11 objectForKey:keyCopy];
      v13 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "[CSCarKitUtils _userInfoValueForKey:]";
        *&buf[12] = 2112;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        v23 = keyCopy;
        _os_log_debug_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEBUG, "%s returning %@ for key=%@.", buf, 0x20u);
      }
    }

    else
    {
      v14 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "[CSCarKitUtils _userInfoValueForKey:]";
        *&buf[12] = 2112;
        *&buf[14] = v11;
        *&buf[22] = 2112;
        v23 = keyCopy;
        _os_log_debug_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEBUG, "%s CarPlayCapabilities userInfo returned bad value: %@; returning nil for key=%@.", buf, 0x20u);
      }

      v12 = 0;
    }
  }

  else
  {
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "[CSCarKitUtils _userInfoValueForKey:]";
      *&buf[12] = 2112;
      *&buf[14] = keyCopy;
      _os_log_debug_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEBUG, "%s carPlayCapabilitiesDict is nil, background fetching and returning nil immediately for key=%@.", buf, 0x16u);
    }

    [(CSCarKitUtils *)self _fetchCarCapabilitiesInBackgroundWithCompletion:0];
    v12 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)_updateCarPlayCapabilitiesDict
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_carCapabilitiesLock);
  v3 = self->_carPlayCapabilitiesDict;
  os_unfair_lock_unlock(&self->_carCapabilitiesLock);
  if (v3)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "[CSCarKitUtils _updateCarPlayCapabilitiesDict]";
      v12 = 2112;
      v13 = v3;
      _os_log_debug_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEBUG, "%s Using cached CarPlayCapabilities: %@", &v10, 0x16u);
    }

LABEL_8:

    goto LABEL_9;
  }

  _fetchCarCapabilitiesDict = [(CSCarKitUtils *)self _fetchCarCapabilitiesDict];
  v6 = CSLogContextFacilityCoreSpeech;
  v7 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG);
  if (_fetchCarCapabilitiesDict)
  {
    if (v7)
    {
      v10 = 136315394;
      v11 = "[CSCarKitUtils _updateCarPlayCapabilitiesDict]";
      v12 = 2112;
      v13 = _fetchCarCapabilitiesDict;
      _os_log_debug_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEBUG, "%s Caching CarPlayCapabilities dictionary: %@", &v10, 0x16u);
    }

    os_unfair_lock_lock(&self->_carCapabilitiesLock);
    carPlayCapabilitiesDict = self->_carPlayCapabilitiesDict;
    self->_carPlayCapabilitiesDict = _fetchCarCapabilitiesDict;
    v3 = _fetchCarCapabilitiesDict;

    os_unfair_lock_unlock(&self->_carCapabilitiesLock);
    goto LABEL_8;
  }

  if (v7)
  {
    v10 = 136315138;
    v11 = "[CSCarKitUtils _updateCarPlayCapabilitiesDict]";
    _os_log_debug_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEBUG, "%s CRFetchCarPlayCapabilities returned nil", &v10, 0xCu);
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isValidLatencyCorrectionValue:(id)value
{
  if (value)
  {
    valueCopy = value;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)potentiallyAddHWLatencyToOption:(id)option streamHandle:(unint64_t)handle voiceController:(id)controller
{
  v31 = *MEMORY[0x1E69E9840];
  optionCopy = option;
  controllerCopy = controller;
  if (!+[CSUtils supportEarconRemoval])
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    *v30 = 136315138;
    *&v30[4] = "[CSCarKitUtils potentiallyAddHWLatencyToOption:streamHandle:voiceController:]";
    v13 = "%s Earcon removal feature flag disabled. Not adjusting latency from CS layer.";
LABEL_17:
    _os_log_debug_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEBUG, v13, v30, 0xCu);
    goto LABEL_18;
  }

  if (![(CSCarKitUtils *)self isCarPlayConnected])
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    *v30 = 136315138;
    *&v30[4] = "[CSCarKitUtils potentiallyAddHWLatencyToOption:streamHandle:voiceController:]";
    v13 = "%s Not CarPlay. Not adjusting latency from CS layer.";
    goto LABEL_17;
  }

  if (([optionCopy potentiallyNeedsCarPlayLatencyCorrection] & 1) == 0)
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    *v30 = 136315138;
    *&v30[4] = "[CSCarKitUtils potentiallyAddHWLatencyToOption:streamHandle:voiceController:]";
    v13 = "%s CarPlay latency correction not applicable. Not adjusting latency from CS layer.";
    goto LABEL_17;
  }

  startAlertBehavior = [optionCopy startAlertBehavior];
  if (!+[CSUtils supportStateFeedback])
  {
    v11 = 0;
    if (!startAlertBehavior)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (v11)
    {
      goto LABEL_22;
    }

    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
    {
      *v30 = 136315138;
      *&v30[4] = "[CSCarKitUtils potentiallyAddHWLatencyToOption:streamHandle:voiceController:]";
      v13 = "%s Alert behavior is either not Muted or is not Haptic with State Feedback enabled. Not adjusting latency from CS layer.";
      goto LABEL_17;
    }

LABEL_18:
    v14 = optionCopy;
    goto LABEL_19;
  }

  v11 = [optionCopy startAlertBehavior] == 1;
  if (startAlertBehavior)
  {
    goto LABEL_14;
  }

LABEL_22:
  _latencyCorrectionSecondsForHeadUnit = [(CSCarKitUtils *)self _latencyCorrectionSecondsForHeadUnit];
  v18 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    *v30 = 136315394;
    *&v30[4] = "[CSCarKitUtils potentiallyAddHWLatencyToOption:streamHandle:voiceController:]";
    *&v30[12] = 2112;
    *&v30[14] = _latencyCorrectionSecondsForHeadUnit;
    _os_log_debug_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_DEBUG, "%s CarCapabilities latencyCorrectionSeconds: %@", v30, 0x16u);
    v18 = CSLogContextFacilityCoreSpeech;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *v30 = 136315394;
    *&v30[4] = "[CSCarKitUtils potentiallyAddHWLatencyToOption:streamHandle:voiceController:]";
    *&v30[12] = 1024;
    *&v30[14] = _latencyCorrectionSecondsForHeadUnit != 0;
    _os_log_debug_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_DEBUG, "%s trackedHeadUnit: %d", v30, 0x12u);
  }

  v14 = [optionCopy copy];
  if (_latencyCorrectionSecondsForHeadUnit && [(CSCarKitUtils *)self _isValidLatencyCorrectionValue:_latencyCorrectionSecondsForHeadUnit])
  {
    v19 = [_latencyCorrectionSecondsForHeadUnit isEqualToNumber:&unk_1F5916778] ^ 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    *v30 = 136315394;
    *&v30[4] = "[CSCarKitUtils potentiallyAddHWLatencyToOption:streamHandle:voiceController:]";
    *&v30[12] = 1024;
    *&v30[14] = v19;
    _os_log_debug_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_DEBUG, "%s correctableHeadUnit: %d", v30, 0x12u);
  }

  if (_latencyCorrectionSecondsForHeadUnit)
  {
    v21 = v19;
  }

  else
  {
    v21 = 1;
  }

  if (v21 != 1)
  {
    v26 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
LABEL_43:
      [v14 setStartAlertBehavior:{2, *v30}];
      goto LABEL_44;
    }

    *v30 = 136315138;
    *&v30[4] = "[CSCarKitUtils potentiallyAddHWLatencyToOption:streamHandle:voiceController:]";
    v28 = "%s HeadUnit is recognized as having problematic latencies, but no correction available. Adding earcon.";
LABEL_42:
    _os_log_impl(&dword_1DDA4B000, v26, OS_LOG_TYPE_DEFAULT, v28, v30, 0xCu);
    goto LABEL_43;
  }

  [_latencyCorrectionSecondsForHeadUnit floatValue];
  v23 = v22;
  v24 = +[CSHardwareLatencyHelper sharedInstance];
  v25 = [v24 addHWLatencyToOption:optionCopy withCorrection:handle streamHandle:controllerCopy voiceController:v23];

  if ((v25 & 1) == 0)
  {
    v26 = CSLogContextFacilityCoreSpeech;
    v27 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
    if (!v19)
    {
      if (_latencyCorrectionSecondsForHeadUnit)
      {
        if (!v27)
        {
          goto LABEL_44;
        }

        *v30 = 136315138;
        *&v30[4] = "[CSCarKitUtils potentiallyAddHWLatencyToOption:streamHandle:voiceController:]";
        v29 = "%s HeadUnit is recognized as having problematic latencies, but didn't have a correction, and also failed to add AVF latencies";
      }

      else
      {
        if (!v27)
        {
          goto LABEL_44;
        }

        *v30 = 136315138;
        *&v30[4] = "[CSCarKitUtils potentiallyAddHWLatencyToOption:streamHandle:voiceController:]";
        v29 = "%s HeadUnit is not recognized as having problematic latencies, but we failed to add AVF latencies";
      }

      _os_log_impl(&dword_1DDA4B000, v26, OS_LOG_TYPE_DEFAULT, v29, v30, 0xCu);
      goto LABEL_44;
    }

    if (!v27)
    {
      goto LABEL_43;
    }

    *v30 = 136315138;
    *&v30[4] = "[CSCarKitUtils potentiallyAddHWLatencyToOption:streamHandle:voiceController:]";
    v28 = "%s HeadUnit is recognized as having problematic latencies, correction is available but failed to add AVF latencies. Adding earcon.";
    goto LABEL_42;
  }

LABEL_44:

LABEL_19:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)_recacheCarPlayCapabilitiesWithCompletion:(id)completion
{
  completionCopy = completion;
  [(CSCarKitUtils *)self _invalidateCachedCarPlayCapabilities];
  [(CSCarKitUtils *)self _fetchCarCapabilitiesInBackgroundWithCompletion:completionCopy];
}

- (void)_invalidateCachedCarPlayCapabilities
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[CSCarKitUtils _invalidateCachedCarPlayCapabilities]";
    _os_log_debug_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEBUG, "%s ", &v6, 0xCu);
  }

  os_unfair_lock_lock(&self->_carCapabilitiesLock);
  carPlayCapabilitiesDict = self->_carPlayCapabilitiesDict;
  self->_carPlayCapabilitiesDict = 0;

  os_unfair_lock_unlock(&self->_carCapabilitiesLock);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_fetchCarCapabilitiesInBackgroundWithCompletion:(id)completion
{
  completionCopy = completion;
  _delayBecauseCarKitSendsNotificationBeforeCapabilitiesActuallyReady = [(CSCarKitUtils *)self _delayBecauseCarKitSendsNotificationBeforeCapabilitiesActuallyReady];
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__CSCarKitUtils__fetchCarCapabilitiesInBackgroundWithCompletion___block_invoke;
  v8[3] = &unk_1E865CB90;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_after(_delayBecauseCarKitSendsNotificationBeforeCapabilitiesActuallyReady, queue, v8);
}

uint64_t __65__CSCarKitUtils__fetchCarCapabilitiesInBackgroundWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateCarPlayCapabilitiesDict];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)handleCarCapabilitiesUpdatedWithCompletion:(id)completion
{
  v9 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[CSCarKitUtils handleCarCapabilitiesUpdatedWithCompletion:]";
    _os_log_debug_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEBUG, "%s ", &v7, 0xCu);
  }

  [(CSCarKitUtils *)self _recacheCarPlayCapabilitiesWithCompletion:completionCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleHeadUnitConnectedWithAsyncCompletion:(id)completion
{
  v9 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[CSCarKitUtils handleHeadUnitConnectedWithAsyncCompletion:]";
    _os_log_debug_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEBUG, "%s ", &v7, 0xCu);
  }

  [(CSCarKitUtils *)self _recacheCarPlayCapabilitiesWithCompletion:completionCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_startObservingCarCapabilitiesNotfication:(const __CFString *)notfication
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, CRSessionStatusCapabilitiesUpdatedNotificationCallback, notfication, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v8 = "[CSCarKitUtils dealloc]";
    _os_log_debug_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v6.receiver = self;
  v6.super_class = CSCarKitUtils;
  [(CSCarKitUtils *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (CSCarKitUtils)init
{
  v8.receiver = self;
  v8.super_class = CSCarKitUtils;
  v2 = [(CSCarKitUtils *)&v8 init];
  v3 = v2;
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __21__CSCarKitUtils_init__block_invoke;
    block[3] = &unk_1E865CB68;
    v4 = v2;
    v7 = v4;
    if (init_onceToken != -1)
    {
      dispatch_once(&init_onceToken, block);
    }

    [(CSCarKitUtils *)v4 _startObservingCarCapabilitiesNotfication:@"CARSessionCarCapabilitiesReadyNotification"];
    [(CSCarKitUtils *)v4 _startObservingCarCapabilitiesNotfication:@"CARSessionCarCapabilitiesUpdatedNotification"];
  }

  return v3;
}

void __21__CSCarKitUtils_init__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_create("com.apple.CoreSpeech.CSCarKitUtilsQueue", 0);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  *(*(a1 + 32) + 16) = 0;
}

void __31__CSCarKitUtils_sharedInstance__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v1 = sharedInstance_singleton;
  sharedInstance_singleton = v0;

  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "+[CSCarKitUtils sharedInstance]_block_invoke";
    v6 = 2112;
    v7 = sharedInstance_singleton;
    _os_log_debug_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEBUG, "%s Created shared instance: %@", &v4, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end