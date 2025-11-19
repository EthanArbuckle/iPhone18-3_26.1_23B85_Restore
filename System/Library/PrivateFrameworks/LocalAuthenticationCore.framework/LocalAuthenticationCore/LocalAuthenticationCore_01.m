__CFString *NSStringFromLACLightweightUIMode(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown mode: %d", a1];
  }

  else
  {
    v2 = off_1E7A96E10[a1];
  }

  return v2;
}

uint64_t LACLightweightUIModeFromOptions(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:1087];
  v3 = [v1 objectForKeyedSubscript:v2];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v5 = [v1 objectForKeyedSubscript:&unk_1F26936A0];
    v4 = [v5 BOOLValue];
  }

  return v4;
}

void sub_1B027DB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B027DC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_1B027DE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B027E620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __LACLogABM_block_invoke()
{
  LACLogABM___logObj = os_log_create("com.apple.LocalAuthentication", "ABM");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LACLogACM_block_invoke()
{
  LACLogACM___logObj = os_log_create("com.apple.LocalAuthentication", "ACM");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogAirDB()
{
  if (LACLogAirDB_onceToken != -1)
  {
    LACLogAirDB_cold_1();
  }

  v1 = LACLogAirDB___logObj;

  return v1;
}

uint64_t __LACLogAirDB_block_invoke()
{
  LACLogAirDB___logObj = os_log_create("com.apple.LocalAuthentication", "AirDB");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogAlertUI()
{
  if (LACLogAlertUI_onceToken != -1)
  {
    LACLogAlertUI_cold_1();
  }

  v1 = LACLogAlertUI___logObj;

  return v1;
}

uint64_t __LACLogAlertUI_block_invoke()
{
  LACLogAlertUI___logObj = os_log_create("com.apple.LocalAuthentication", "AlertUI");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogAnalytics()
{
  if (LACLogAnalytics_onceToken != -1)
  {
    LACLogAnalytics_cold_1();
  }

  v1 = LACLogAnalytics___logObj;

  return v1;
}

uint64_t __LACLogAnalytics_block_invoke()
{
  LACLogAnalytics___logObj = os_log_create("com.apple.LocalAuthentication", "Analytics");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogAuthenticator()
{
  if (LACLogAuthenticator_onceToken != -1)
  {
    LACLogAuthenticator_cold_1();
  }

  v1 = LACLogAuthenticator___logObj;

  return v1;
}

uint64_t __LACLogAuthenticator_block_invoke()
{
  LACLogAuthenticator___logObj = os_log_create("com.apple.LocalAuthentication", "Authenticator");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogBiome()
{
  if (LACLogBiome_onceToken != -1)
  {
    LACLogBiome_cold_1();
  }

  v1 = LACLogBiome___logObj;

  return v1;
}

uint64_t __LACLogBiome_block_invoke()
{
  LACLogBiome___logObj = os_log_create("com.apple.LocalAuthentication", "Biome");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LACLogBiometry_block_invoke()
{
  LACLogBiometry___logObj = os_log_create("com.apple.LocalAuthentication", "Biometry");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogConcurrentEvaluations()
{
  if (LACLogConcurrentEvaluations_onceToken != -1)
  {
    LACLogConcurrentEvaluations_cold_1();
  }

  v1 = LACLogConcurrentEvaluations___logObj;

  return v1;
}

uint64_t __LACLogConcurrentEvaluations_block_invoke()
{
  LACLogConcurrentEvaluations___logObj = os_log_create("com.apple.LocalAuthentication", "ConcurrentEvaluations");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LACLogContext_block_invoke()
{
  LACLogContext___logObj = os_log_create("com.apple.LocalAuthentication", "Context");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogCredentials()
{
  if (LACLogCredentials_onceToken != -1)
  {
    LACLogCredentials_cold_1();
  }

  v1 = LACLogCredentials___logObj;

  return v1;
}

uint64_t __LACLogCredentials_block_invoke()
{
  LACLogCredentials___logObj = os_log_create("com.apple.LocalAuthentication", "Credentials");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LACLogDefault_block_invoke()
{
  LACLogDefault___logObj = os_log_create("com.apple.LocalAuthentication", "Default");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogDisk()
{
  if (LACLogDisk_onceToken != -1)
  {
    LACLogDisk_cold_1();
  }

  v1 = LACLogDisk___logObj;

  return v1;
}

uint64_t __LACLogDisk_block_invoke()
{
  LACLogDisk___logObj = os_log_create("com.apple.LocalAuthentication", "Disk");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LACLogEnvironment_block_invoke()
{
  LACLogEnvironment___logObj = os_log_create("com.apple.LocalAuthentication", "Environment");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogFaceIDUI()
{
  if (LACLogFaceIDUI_onceToken != -1)
  {
    LACLogFaceIDUI_cold_1();
  }

  v1 = LACLogFaceIDUI___logObj;

  return v1;
}

uint64_t __LACLogFaceIDUI_block_invoke()
{
  LACLogFaceIDUI___logObj = os_log_create("com.apple.LocalAuthentication", "FaceIDUI");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LACLogGestalt_block_invoke()
{
  LACLogGestalt___logObj = os_log_create("com.apple.LocalAuthentication", "Gestalt");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LACLogKeybag_block_invoke()
{
  LACLogKeybag___logObj = os_log_create("com.apple.LocalAuthentication", "Keybag");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogKeyboard()
{
  if (LACLogKeyboard_onceToken != -1)
  {
    LACLogKeyboard_cold_1();
  }

  v1 = LACLogKeyboard___logObj;

  return v1;
}

uint64_t __LACLogKeyboard_block_invoke()
{
  LACLogKeyboard___logObj = os_log_create("com.apple.LocalAuthentication", "Keyboard");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LACLogNotifications_block_invoke()
{
  LACLogNotifications___logObj = os_log_create("com.apple.LocalAuthentication", "Notifications");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogOTI()
{
  if (LACLogOTI_onceToken != -1)
  {
    LACLogOTI_cold_1();
  }

  v1 = LACLogOTI___logObj;

  return v1;
}

uint64_t __LACLogOTI_block_invoke()
{
  LACLogOTI___logObj = os_log_create("com.apple.LocalAuthentication", "OTI");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogPasscode()
{
  if (LACLogPasscode_onceToken != -1)
  {
    LACLogPasscode_cold_1();
  }

  v1 = LACLogPasscode___logObj;

  return v1;
}

uint64_t __LACLogPasscode_block_invoke()
{
  LACLogPasscode___logObj = os_log_create("com.apple.LocalAuthentication", "Passcode");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogPasscodeService()
{
  if (LACLogPasscodeService_onceToken != -1)
  {
    LACLogPasscodeService_cold_1();
  }

  v1 = LACLogPasscodeService___logObj;

  return v1;
}

uint64_t __LACLogPasscodeService_block_invoke()
{
  LACLogPasscodeService___logObj = os_log_create("com.apple.LocalAuthentication", "PasscodeService");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogPasscodeUI()
{
  if (LACLogPasscodeUI_onceToken != -1)
  {
    LACLogPasscodeUI_cold_1();
  }

  v1 = LACLogPasscodeUI___logObj;

  return v1;
}

uint64_t __LACLogPasscodeUI_block_invoke()
{
  LACLogPasscodeUI___logObj = os_log_create("com.apple.LocalAuthentication", "PasscodeUI");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogPreboard()
{
  if (LACLogPreboard_onceToken != -1)
  {
    LACLogPreboard_cold_1();
  }

  v1 = LACLogPreboard___logObj;

  return v1;
}

uint64_t __LACLogPreboard_block_invoke()
{
  LACLogPreboard___logObj = os_log_create("com.apple.LocalAuthentication", "Preboard");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogProcessor()
{
  if (LACLogProcessor_onceToken != -1)
  {
    LACLogProcessor_cold_1();
  }

  v1 = LACLogProcessor___logObj;

  return v1;
}

uint64_t __LACLogProcessor_block_invoke()
{
  LACLogProcessor___logObj = os_log_create("com.apple.LocalAuthentication", "Processor");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogServer()
{
  if (LACLogServer_onceToken != -1)
  {
    LACLogServer_cold_1();
  }

  v1 = LACLogServer___logObj;

  return v1;
}

uint64_t __LACLogServer_block_invoke()
{
  LACLogServer___logObj = os_log_create("com.apple.LocalAuthentication", "Server");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LACLogService_block_invoke()
{
  LACLogService___logObj = os_log_create("com.apple.LocalAuthentication", "Service");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogSessions()
{
  if (LACLogSessions_onceToken != -1)
  {
    LACLogSessions_cold_1();
  }

  v1 = LACLogSessions___logObj;

  return v1;
}

uint64_t __LACLogSessions_block_invoke()
{
  LACLogSessions___logObj = os_log_create("com.apple.LocalAuthentication", "Sessions");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LACLogSharedMode_block_invoke()
{
  LACLogSharedMode___logObj = os_log_create("com.apple.LocalAuthentication", "SharedMode");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LACLogStorage_block_invoke()
{
  LACLogStorage___logObj = os_log_create("com.apple.LocalAuthentication", "Storage");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LACLogTask_block_invoke()
{
  LACLogTask___logObj = os_log_create("com.apple.LocalAuthentication", "Task");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogTests()
{
  if (LACLogTests_onceToken != -1)
  {
    LACLogTests_cold_1();
  }

  v1 = LACLogTests___logObj;

  return v1;
}

uint64_t __LACLogTests_block_invoke()
{
  LACLogTests___logObj = os_log_create("com.apple.LocalAuthentication", "Tests");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogTouchIDUI()
{
  if (LACLogTouchIDUI_onceToken != -1)
  {
    LACLogTouchIDUI_cold_1();
  }

  v1 = LACLogTouchIDUI___logObj;

  return v1;
}

uint64_t __LACLogTouchIDUI_block_invoke()
{
  LACLogTouchIDUI___logObj = os_log_create("com.apple.LocalAuthentication", "TouchIDUI");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogUI()
{
  if (LACLogUI_onceToken != -1)
  {
    LACLogUI_cold_1();
  }

  v1 = LACLogUI___logObj;

  return v1;
}

uint64_t __LACLogUI_block_invoke()
{
  LACLogUI___logObj = os_log_create("com.apple.LocalAuthentication", "UI");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogUIAuthenticationSheet()
{
  if (LACLogUIAuthenticationSheet_onceToken != -1)
  {
    LACLogUIAuthenticationSheet_cold_1();
  }

  v1 = LACLogUIAuthenticationSheet___logObj;

  return v1;
}

uint64_t __LACLogUIAuthenticationSheet_block_invoke()
{
  LACLogUIAuthenticationSheet___logObj = os_log_create("com.apple.LocalAuthentication", "UIAuthenticationSheet");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogWatch()
{
  if (LACLogWatch_onceToken != -1)
  {
    LACLogWatch_cold_1();
  }

  v1 = LACLogWatch___logObj;

  return v1;
}

uint64_t __LACLogWatch_block_invoke()
{
  LACLogWatch___logObj = os_log_create("com.apple.LocalAuthentication", "Watch");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogXPC()
{
  if (LACLogXPC_onceToken != -1)
  {
    LACLogXPC_cold_1();
  }

  v1 = LACLogXPC___logObj;

  return v1;
}

uint64_t __LACLogXPC_block_invoke()
{
  LACLogXPC___logObj = os_log_create("com.apple.LocalAuthentication", "XPC");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogDTO()
{
  if (LACLogDTO_onceToken != -1)
  {
    LACLogDTO_cold_1();
  }

  v1 = LACLogDTO___logObj;

  return v1;
}

uint64_t __LACLogDTO_block_invoke()
{
  LACLogDTO___logObj = os_log_create("com.apple.LocalAuthentication", "DTO");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogDTOClient()
{
  if (LACLogDTOClient_onceToken != -1)
  {
    LACLogDTOClient_cold_1();
  }

  v1 = LACLogDTOClient___logObj;

  return v1;
}

uint64_t __LACLogDTOClient_block_invoke()
{
  LACLogDTOClient___logObj = os_log_create("com.apple.LocalAuthentication", "DTO_Client");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogDTOEnvironment()
{
  if (LACLogDTOEnvironment_onceToken != -1)
  {
    LACLogDTOEnvironment_cold_1();
  }

  v1 = LACLogDTOEnvironment___logObj;

  return v1;
}

uint64_t __LACLogDTOEnvironment_block_invoke()
{
  LACLogDTOEnvironment___logObj = os_log_create("com.apple.LocalAuthentication", "DTO_Environment");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogDTOEvaluation()
{
  if (LACLogDTOEvaluation_onceToken != -1)
  {
    LACLogDTOEvaluation_cold_1();
  }

  v1 = LACLogDTOEvaluation___logObj;

  return v1;
}

uint64_t __LACLogDTOEvaluation_block_invoke()
{
  LACLogDTOEvaluation___logObj = os_log_create("com.apple.LocalAuthentication", "DTO_Evaluation");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogDTOEvent()
{
  if (LACLogDTOEvent_onceToken != -1)
  {
    LACLogDTOEvent_cold_1();
  }

  v1 = LACLogDTOEvent___logObj;

  return v1;
}

uint64_t __LACLogDTOEvent_block_invoke()
{
  LACLogDTOEvent___logObj = os_log_create("com.apple.LocalAuthentication", "DTO_Event");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LACLogDTOFeature_block_invoke()
{
  LACLogDTOFeature___logObj = os_log_create("com.apple.LocalAuthentication", "DTO_Feature");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LACLogDTOLocation_block_invoke()
{
  LACLogDTOLocation___logObj = os_log_create("com.apple.LocalAuthentication", "DTO_Location");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogDTOLostMode()
{
  if (LACLogDTOLostMode_onceToken != -1)
  {
    LACLogDTOLostMode_cold_1();
  }

  v1 = LACLogDTOLostMode___logObj;

  return v1;
}

uint64_t __LACLogDTOLostMode_block_invoke()
{
  LACLogDTOLostMode___logObj = os_log_create("com.apple.LocalAuthentication", "DTO_LostMode");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogDTONotifications()
{
  if (LACLogDTONotifications_onceToken != -1)
  {
    LACLogDTONotifications_cold_1();
  }

  v1 = LACLogDTONotifications___logObj;

  return v1;
}

uint64_t __LACLogDTONotifications_block_invoke()
{
  LACLogDTONotifications___logObj = os_log_create("com.apple.LocalAuthentication", "DTO_Notifications");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogDTOProcessor()
{
  if (LACLogDTOProcessor_onceToken != -1)
  {
    LACLogDTOProcessor_cold_1();
  }

  v1 = LACLogDTOProcessor___logObj;

  return v1;
}

uint64_t __LACLogDTOProcessor_block_invoke()
{
  LACLogDTOProcessor___logObj = os_log_create("com.apple.LocalAuthentication", "DTO_Processor");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LACLogDTOSensor_block_invoke()
{
  LACLogDTOSensor___logObj = os_log_create("com.apple.LocalAuthentication", "DTO_Sensor");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogDTOState()
{
  if (LACLogDTOState_onceToken != -1)
  {
    LACLogDTOState_cold_1();
  }

  v1 = LACLogDTOState___logObj;

  return v1;
}

uint64_t __LACLogDTOState_block_invoke()
{
  LACLogDTOState___logObj = os_log_create("com.apple.LocalAuthentication", "DTO_State");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LACLogDTOStorage_block_invoke()
{
  LACLogDTOStorage___logObj = os_log_create("com.apple.LocalAuthentication", "DTO_Storage");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogDTOTimers()
{
  if (LACLogDTOTimers_onceToken != -1)
  {
    LACLogDTOTimers_cold_1();
  }

  v1 = LACLogDTOTimers___logObj;

  return v1;
}

uint64_t __LACLogDTOTimers_block_invoke()
{
  LACLogDTOTimers___logObj = os_log_create("com.apple.LocalAuthentication", "DTO_Timers");

  return MEMORY[0x1EEE66BB8]();
}

id LACLogDTOUI()
{
  if (LACLogDTOUI_onceToken != -1)
  {
    LACLogDTOUI_cold_1();
  }

  v1 = LACLogDTOUI___logObj;

  return v1;
}

uint64_t __LACLogDTOUI_block_invoke()
{
  LACLogDTOUI___logObj = os_log_create("com.apple.LocalAuthentication", "DTO_UI");

  return MEMORY[0x1EEE66BB8]();
}

__CFString *NSStringFromMechanismEvent(unint64_t a1)
{
  if (a1 > 0x14)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E7A96F68[a1];
  }
}

id NSStringFromMechanismEventAndValue(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = NSStringFromMechanismEvent(a1);
  v5 = v4;
  if (v3)
  {
    v6 = [v4 stringByAppendingFormat:@", value: %@", v3];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

__CFString *NSStringFromRemoteUIEvent(unint64_t a1)
{
  if (a1 >= 0xF)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid LARemoteUIEvent: %d", a1];
  }

  else
  {
    v2 = off_1E7A97010[a1];
  }

  return v2;
}

id NSStringFromRemoteUIEventAndOptions(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = NSStringFromRemoteUIEvent(a1);
  v5 = v4;
  if (v3)
  {
    v6 = [v4 stringByAppendingFormat:@", options: %@", v3];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

id getRTRoutineManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRTRoutineManagerClass_softClass;
  v7 = getRTRoutineManagerClass_softClass;
  if (!getRTRoutineManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getRTRoutineManagerClass_block_invoke;
    v3[3] = &unk_1E7A955D8;
    v3[4] = &v4;
    __getRTRoutineManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B0281180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0281724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getRTRoutineManagerClass_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!CoreRoutineLibraryCore_frameworkLibrary)
  {
    CoreRoutineLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("RTRoutineManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getRTRoutineManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreRoutineLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreRoutineLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B0281D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B0283458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0284468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0284760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B0284B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02859C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

unint64_t LACBiomeEvaluationRatchetStateFromLACDTORatchetStateRawValue(unint64_t a1)
{
  if (a1 < 5)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

id NSStringFromLACAuthenticationPriority(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    v1 = @"Lowest";
  }

  else
  {
    v1 = off_1E7A972A0[a1 - 1];
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%d)", v1, a1];

  return v2;
}

void sub_1B028AEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B028B530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028B848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028BB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028C7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1B028CEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028E430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028E61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028E844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028F670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028F814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028F968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028FAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028FC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028FE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromLACDTOLocationStateRawValue(uint64_t a1)
{
  if (!os_variant_allows_internal_security_policies())
  {
    return @"<private>";
  }

  if ((a1 + 1) > 3)
  {
    return &stru_1F2652748;
  }

  return off_1E7A976E0[a1 + 1];
}

__CFString *NSStringFromLACDTOSensorRepairFlag(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7A97700[a1 - 1];
  }
}

id getMCProfileConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMCProfileConnectionClass_softClass;
  v7 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMCProfileConnectionClass_block_invoke;
    v3[3] = &unk_1E7A955D8;
    v3[4] = &v4;
    __getMCProfileConnectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B02921C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B02923D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02925DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02927E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B02932E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B02934D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B02941D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B0294368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0294740(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1B02951EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B029679C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1B0296ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0296F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02973D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B02976B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1B0298114(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B0298644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getTKTokenAuthOperationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTKTokenAuthOperationClass_softClass;
  v7 = getTKTokenAuthOperationClass_softClass;
  if (!getTKTokenAuthOperationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTKTokenAuthOperationClass_block_invoke;
    v3[3] = &unk_1E7A955D8;
    v3[4] = &v4;
    __getTKTokenAuthOperationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B0298A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0299D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTKTokenAuthOperationClass_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!CryptoTokenKitLibraryCore_frameworkLibrary)
  {
    CryptoTokenKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("TKTokenAuthOperation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTKTokenAuthOperationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CryptoTokenKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CryptoTokenKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B029BDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B029C274(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __SetupAssistantLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "BYSetupAssistantNeedsToRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantNeedsToRunSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B029E178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B029E3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BiomeLibraryLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    BiomeLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = BiomeLibraryLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getBiomeLibrarySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getBiomeLibrarySymbolLoc_ptr;
  v6 = getBiomeLibrarySymbolLoc_ptr;
  if (!getBiomeLibrarySymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getBiomeLibrarySymbolLoc_block_invoke;
    v2[3] = &unk_1E7A955D8;
    v2[4] = &v3;
    __getBiomeLibrarySymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B029E594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __BiomeLibraryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getBiomeLibrarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BiomeLibraryLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "BiomeLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBiomeLibrarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMLocalAuthenticationEvaluationsClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibraryCore();
  result = objc_getClass("BMLocalAuthenticationEvaluations");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMLocalAuthenticationEvaluationsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMLocalAuthenticationEvaluationsMechanismClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibraryCore();
  result = objc_getClass("BMLocalAuthenticationEvaluationsMechanism");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMLocalAuthenticationEvaluationsMechanismClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B029EDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B029F174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B02A0094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B02A0364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02A067C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromLACAnalyticsAction(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid LACAnalyticsAction value: %d", a1];
  }

  else
  {
    v2 = off_1E7A97E58[a1];
  }

  return v2;
}

void sub_1B02A0A34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B02A0CB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1B02A1C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02A1F58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B02A256C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B02A2950(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B02A2E14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B02A32A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B02A3528(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B02A3A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02A3DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02A41A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 56));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromLACEventSimpleStatusTouchID(unint64_t a1)
{
  if (a1 >= 0xD)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid LACEventSimpleStatusTouchID: %d", a1];
  }

  else
  {
    v2 = off_1E7A98218[a1];
  }

  return v2;
}

void sub_1B02A4E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02A6C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t exclaveBatchValueInNSDictionary(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v5 = [v3 objectForKeyedSubscript:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v7 = [v3 objectForKeyedSubscript:v6];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1B02A9388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B02A9674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B02A9950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B02A9BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B02AA3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B02AA620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromLACUserInterfaceRequestIdentifier(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7A98460[a1 - 1];
  }
}

uint64_t key path getter for LACOnenessSessionProvider.isSessionActive : LACOnenessSessionProvider@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t key path setter for LACOnenessSessionProvider.isSessionActive : LACOnenessSessionProvider(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);

  return v3(v4);
}

uint64_t LACOnenessSessionProvider.isSessionActive.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = closure #1 in LACOnenessSessionProvider.isSessionActive.getter(v0);
    v2 = *(v0 + 16);
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t closure #1 in LACOnenessSessionProvider.isSessionActive.getter(uint64_t a1)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGMd, &_s7Combine10PublishersO10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGMR);
  v38 = *(v35 - 8);
  v15 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v33 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGSo17OS_dispatch_queueCGMR);
  v18 = *(v17 - 8);
  v36 = v17;
  v37 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  v40 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMR);
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  Publisher<>.removeDuplicates()();
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGMR);
  Publisher.compactMap<A>(_:)();
  (*(v6 + 8))(v9, v5);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CompactMap<Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>>, Bool> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGMd, &_s7Combine10PublishersO10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGMR);
  v22 = Publisher.share()();
  (*(v11 + 8))(v14, v10);
  v40 = v22;
  swift_allocObject();
  v23 = v33;
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Share<Publishers.CompactMap<Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>>, Bool>> and conformance Publishers.Share<A>, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGMR);
  v24 = v34;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  v40 = *(v23 + 24);
  v25 = v40;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v27 = v39;
  (*(*(v26 - 8) + 56))(v39, 1, 1, v26);
  type metadata accessor for OS_dispatch_queue();
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.Share<Publishers.CompactMap<Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>>, Bool>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGMR);
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue);
  v28 = v25;
  v29 = v35;
  Publisher.receive<A>(on:options:)();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v27);

  (*(v38 + 8))(v24, v29);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.HandleEvents<Publishers.Share<Publishers.CompactMap<Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>>, Bool>>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGSo17OS_dispatch_queueCGMR);
  v30 = v36;
  v31 = Publisher.eraseToAnyPublisher()();
  (*(v37 + 8))(v21, v30);
  return v31;
}

uint64_t closure #2 in closure #1 in LACOnenessSessionProvider.isSessionActive.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    LACOnenessSessionProvider.start()();
  }

  return result;
}

uint64_t LACOnenessSessionProvider.start()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  if (!*(v0 + 32))
  {
    LACOnenessSessionProvider.fetchCurrentState()();
    v13 = *(v0 + 24);
    v14 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in LACOnenessSessionProvider.start();
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned AKSEventType, @guaranteed CFDictionaryRef?) -> ();
    aBlock[3] = &block_descriptor;
    v15 = _Block_copy(aBlock);

    v16 = AKSEventsRegister();
    _Block_release(v15);
    *(v0 + 32) = v16;
    v17 = LACLogABM();
    Logger.init(_:)();
    v10 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v18))
    {
      v6 = v8;
      goto LABEL_8;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v18, "Mac Companion session listener subscribed", v12, 2u);
    v6 = v8;
    goto LABEL_6;
  }

  v9 = LACLogABM();
  Logger.init(_:)();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v11, "Mac Companion session subscriber already exists", v12, 2u);
LABEL_6:
    MEMORY[0x1B27246A0](v12, -1, -1);
  }

LABEL_8:

  return (*(v2 + 8))(v6, v1);
}

uint64_t closure #3 in closure #1 in LACOnenessSessionProvider.isSessionActive.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    LACOnenessSessionProvider.stop()();
  }

  return result;
}

uint64_t LACOnenessSessionProvider.stop()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  if (!*(v0 + 32))
  {
    v13 = LACLogABM();
    Logger.init(_:)();
    v10 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v14))
    {
      v8 = v6;
      goto LABEL_8;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v14, "Mac Companion session subscriber does not exist", v12, 2u);
    v8 = v6;
    goto LABEL_6;
  }

  AKSEventsUnregister();
  v9 = LACLogABM();
  Logger.init(_:)();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v11, "Mac Companion session listener unsubscribed", v12, 2u);
LABEL_6:
    MEMORY[0x1B27246A0](v12, -1, -1);
  }

LABEL_8:

  return (*(v2 + 8))(v8, v1);
}

uint64_t LACOnenessSessionProvider.isSessionActive.setter(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t (*LACOnenessSessionProvider.isSessionActive.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = LACOnenessSessionProvider.isSessionActive.getter();
  return LACOnenessSessionProvider.isSessionActive.modify;
}

uint64_t LACOnenessSessionProvider.isSessionActive.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
}

void *LACOnenessSessionProvider.__allocating_init(replyQueue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[4] = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMR);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v2[5] = CurrentValueSubject.init(_:)();
  v2[3] = a1;
  return v2;
}

void *LACOnenessSessionProvider.init(replyQueue:)(uint64_t a1)
{
  v1[2] = 0;
  v1[4] = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMR);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v1[5] = CurrentValueSubject.init(_:)();
  v1[3] = a1;
  return v1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t LACOnenessSessionProvider.refresh(completion:)(uint64_t (*a1)(void))
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = LACLogABM();
  Logger.init(_:)();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v11, "Mac Companion session asked to refresh", v12, 2u);
    MEMORY[0x1B27246A0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  result = LACOnenessSessionProvider.fetchCurrentState()();
  if (a1)
  {
    v14 = *(v2 + 40);

    CurrentValueSubject.value.getter();

    return a1(v15[15] & 1);
  }

  return result;
}

uint64_t LACOnenessSessionProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t LACOnenessSessionProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CFStringRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance LACEligibilityDomain(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance LACEligibilityDomain(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance LACEligibilityDomain@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x1B27229A0](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance LACEligibilityDomain()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x1B2722AF0](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LACEligibilityDomain()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LACEligibilityDomain()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance NSDataWritingOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance LACPreboardUseCase(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1B2722C50](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance LACPreboardUseCase(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LACEligibilityDomain(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACEligibilityDomain()
{
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACEligibilityDomain and conformance LACEligibilityDomain, type metadata accessor for LACEligibilityDomain);
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACEligibilityDomain and conformance LACEligibilityDomain, type metadata accessor for LACEligibilityDomain);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACPreboardUseCase()
{
  v2 = *v0;
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACPreboardUseCase and conformance LACPreboardUseCase, type metadata accessor for LACPreboardUseCase);
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACPreboardUseCase and conformance LACPreboardUseCase, type metadata accessor for LACPreboardUseCase);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACCompanionType()
{
  v2 = *v0;
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACCompanionType and conformance LACCompanionType, type metadata accessor for LACCompanionType);
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACCompanionType and conformance LACCompanionType, type metadata accessor for LACCompanionType);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACPolicy()
{
  v2 = *v0;
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACPolicy and conformance LACPolicy, type metadata accessor for LACPolicy);
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACPolicy and conformance LACPolicy, type metadata accessor for LACPolicy);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACPolicyOption()
{
  v2 = *v0;
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACPolicyOption and conformance LACPolicyOption, type metadata accessor for LACPolicyOption);
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACPolicyOption and conformance LACPolicyOption, type metadata accessor for LACPolicyOption);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LACEligibilityDomain@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1B27229A0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSFileAttributeKey()
{
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACStorageDomain()
{
  v2 = *v0;
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACStorageDomain and conformance LACStorageDomain, type metadata accessor for LACStorageDomain);
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACStorageDomain and conformance LACStorageDomain, type metadata accessor for LACStorageDomain);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACStorageKey()
{
  v2 = *v0;
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACStorageKey and conformance LACStorageKey, type metadata accessor for LACStorageKey);
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACStorageKey and conformance LACStorageKey, type metadata accessor for LACStorageKey);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Bool? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Bool? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Bool? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSbSgMd, &_sSbSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Bool? and conformance <A> A?);
  }

  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t outlined destroy of OS_dispatch_queue.SchedulerOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id LACPhoneIntegrationSessionProcessor.init(environmentProvider:monitor:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEnvironmentProvider:a1 monitor:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

{
  *(v2 + OBJC_IVAR___LACPhoneIntegrationSessionProcessor_environmentProvider) = a1;
  *(v2 + OBJC_IVAR___LACPhoneIntegrationSessionProcessor_monitor) = a2;
  v4.super_class = LACPhoneIntegrationSessionProcessor;
  return objc_msgSendSuper2(&v4, sel_init);
}

id LACPhoneIntegrationSessionProcessor.canProcessRequest(_:)()
{
  v1 = [objc_msgSend(v0 environmentProvider)];
  swift_unknownObjectRelease();
  v2 = [v1 isFeatureAvailable];

  return v2;
}

void LACPhoneIntegrationSessionProcessor.processRequest(_:configuration:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v5 canProcessRequest_])
  {
    v14 = LACLogABM();
    Logger.init(_:)();
    v15 = v5;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = a3;
      v19 = v18;
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v15;
      *v20 = v15;
      v21 = v15;
      _os_log_impl(&dword_1B0233000, v16, v17, "%@ refreshing availability", v19, 0xCu);
      outlined destroy of NSObject?(v20);
      MEMORY[0x1B27246A0](v20, -1, -1);
      v22 = v19;
      a3 = v30;
      MEMORY[0x1B27246A0](v22, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    v23 = [objc_msgSend(v15 monitor)];
    swift_unknownObjectRelease();
    if ((v23 & 1) == 0)
    {
      [objc_msgSend(v15 monitor)];
      swift_unknownObjectRelease();
    }

    v24 = [v15 monitor];
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = a3;
    v26[4] = a4;
    v26[5] = a1;
    aBlock[4] = partial apply for closure #1 in LACPhoneIntegrationSessionProcessor.processRequest(_:configuration:completion:);
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_0;
    v27 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    [v24 refreshWithCompletion_];
    _Block_release(v27);
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = [objc_opt_self() resultWithNext_];
    a3();
    v28 = v30;
  }
}

void closure #1 in LACPhoneIntegrationSessionProcessor.processRequest(_:configuration:completion:)(int a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v30 = a1;
    v16 = LACLogABM();
    Logger.init(_:)();
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v29[0] = a5;
      v21 = v20;
      v22 = swift_slowAlloc();
      v29[1] = a4;
      v23 = a3;
      v24 = v22;
      *v21 = 138412546;
      *(v21 + 4) = v17;
      *v22 = v15;
      *(v21 + 12) = 1024;
      *(v21 + 14) = v30 & 1;
      v25 = v17;
      _os_log_impl(&dword_1B0233000, v18, v19, "%@ did refresh availability to %{BOOL}d", v21, 0x12u);
      outlined destroy of NSObject?(v24);
      v26 = v24;
      a3 = v23;
      MEMORY[0x1B27246A0](v26, -1, -1);
      v27 = v21;
      a5 = v29[0];
      MEMORY[0x1B27246A0](v27, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    v28 = [objc_opt_self() resultWithNext_];
    a3();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

LACPhoneIntegrationSessionProcessor __swiftcall LACPhoneIntegrationSessionProcessor.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.monitor = v3;
  result.environmentProvider = v2;
  result.super.isa = v1;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t type metadata accessor for LACPhoneIntegrationSessionProcessor()
{
  result = lazy cache variable for type metadata for LACPhoneIntegrationSessionProcessor[0];
  if (!lazy cache variable for type metadata for LACPhoneIntegrationSessionProcessor[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, lazy cache variable for type metadata for LACPhoneIntegrationSessionProcessor);
  }

  return result;
}

void specialized LACPhoneIntegrationSessionProcessor.processRequest(_:configuration:completion:)(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  _Block_copy(a3);
  if ([a2 canProcessRequest_])
  {
    v12 = LACLogABM();
    Logger.init(_:)();
    v13 = a2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_1B0233000, v14, v15, "%@ refreshing availability", v16, 0xCu);
      outlined destroy of NSObject?(v17);
      MEMORY[0x1B27246A0](v17, -1, -1);
      MEMORY[0x1B27246A0](v16, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v19 = [objc_msgSend(v13 monitor)];
    swift_unknownObjectRelease();
    if ((v19 & 1) == 0)
    {
      [objc_msgSend(v13 monitor)];
      swift_unknownObjectRelease();
    }

    v20 = [v13 monitor];
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACEvaluationResult) -> ();
    v22[4] = v11;
    v22[5] = a1;
    aBlock[4] = closure #1 in LACPhoneIntegrationSessionProcessor.processRequest(_:configuration:completion:)partial apply;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_16;
    v23 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    [v20 refreshWithCompletion_];
    _Block_release(v23);

    swift_unknownObjectRelease();
  }

  else
  {
    v26 = [objc_opt_self() resultWithNext_];
    (a3)[2](a3, v26);

    v24 = v26;
  }
}

uint64_t objectdestroy_2Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id one-time initialization function for sharedInstance()
{
  result = [objc_allocWithZone(LACEligibilityHelper) init];
  static LACEligibilityHelper.sharedInstance = result;
  return result;
}

id LACEligibilityHelper.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  v1 = &v0[OBJC_IVAR___LACEligibilityHelper_cache];
  v2 = MEMORY[0x1E69E7CC0];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo20LACEligibilityDomaina_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v1 = 0;
  *(v1 + 1) = v3;
  *&v0[OBJC_IVAR___LACEligibilityHelper_registeredNotificationsForDomains] = v2;
  v4 = OBJC_IVAR___LACEligibilityHelper_darwinNotificationCenter;
  *&v0[v4] = [objc_opt_self() sharedInstance];
  v6.receiver = v0;
  v6.super_class = LACEligibilityHelper;
  return objc_msgSendSuper2(&v6, sel_init);
}

id static LACEligibilityHelper.shared.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v1 = static LACEligibilityHelper.sharedInstance;

  return v1;
}

Swift::Bool __swiftcall LACEligibilityHelper.isEligible(forDomain:)(__C::LACEligibilityDomain forDomain)
{
  v2 = v1;
  v82[3] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v76 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v76 - v13;
  v15 = LACEligibilityHelper.cachedValue(for:)(forDomain._rawValue);
  if (v15 == 2)
  {
    v81 = 0;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    if (v16 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v18 != v19)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    domain_answer = os_eligibility_get_domain_answer();
    v32 = LACLogDefault();
    if (domain_answer)
    {
      Logger.init(_:)();
      v33 = forDomain._rawValue;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v82[0] = v37;
        *v36 = 136315394;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v82);

        *(v36 + 4) = v40;
        *(v36 + 12) = 1024;
        *(v36 + 14) = domain_answer;
        _os_log_impl(&dword_1B0233000, v34, v35, "Eligibility call for domain: %s failed with status code: %d", v36, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x1B27246A0](v37, -1, -1);
        MEMORY[0x1B27246A0](v36, -1, -1);
      }

      (*(v5 + 8))(v9, v4);
      v21 = 0;
      goto LABEL_28;
    }

    Logger.init(_:)();
    v41 = forDomain._rawValue;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v79 = v41;
      v45 = v44;
      v77 = swift_slowAlloc();
      v82[0] = v77;
      *v45 = 136315394;
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v82);
      v78 = v4;
      v49 = v48;

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      swift_beginAccess();
      v80 = v81;
      type metadata accessor for os_eligibility_answer_t(0);
      v50 = String.init<A>(describing:)();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v82);

      *(v45 + 14) = v52;
      _os_log_impl(&dword_1B0233000, v42, v43, "Eligibility call for domain: %s returned result: %s", v45, 0x16u);
      v53 = v77;
      swift_arrayDestroy();
      MEMORY[0x1B27246A0](v53, -1, -1);
      v54 = v45;
      v41 = v79;
      MEMORY[0x1B27246A0](v54, -1, -1);

      (*(v5 + 8))(v12, v78);
    }

    else
    {

      (*(v5 + 8))(v12, v4);
    }

    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;
    if (v55 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v57 == v58)
    {
    }

    else
    {
      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v59 & 1) == 0)
      {
LABEL_27:
        swift_beginAccess();
        v21 = v81 == 4;
        v70 = &v2[OBJC_IVAR___LACEligibilityHelper_cache];
        os_unfair_lock_lock(v70);
        v71 = *&v70[2]._os_unfair_lock_opaque;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = *&v70[2]._os_unfair_lock_opaque;
        *&v70[2]._os_unfair_lock_opaque = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v41, isUniquelyReferenced_nonNull_native);
        v73 = *&v70[2]._os_unfair_lock_opaque;
        *&v70[2]._os_unfair_lock_opaque = v80;

        os_unfair_lock_unlock(v70);
        goto LABEL_28;
      }
    }

    v60 = [v2 registeredNotificationsForDomains];
    type metadata accessor for LACEligibilityDomain(0);
    v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v82[0] = v41;
    MEMORY[0x1EEE9AC00](v62);
    *(&v76 - 2) = v82;
    LOBYTE(v60) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v76 - 4), v61);

    if ((v60 & 1) == 0)
    {
      v63 = [v2 registeredNotificationsForDomains];
      v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1, v64);
      }

      v66 = v64[2];
      v65 = v64[3];
      if (v66 >= v65 >> 1)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v64);
      }

      v64[2] = v66 + 1;
      v64[v66 + 4] = v41;
      v67 = v41;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v2 setRegisteredNotificationsForDomains_];

      v69 = [v2 darwinNotificationCenter];
      [v69 addObserver:v2 notification:@"com.apple.os-eligibility-domain.change.tellurium"];
    }

    goto LABEL_27;
  }

  v21 = v15;
  v22 = LACLogDefault();
  Logger.init(_:)();
  v23 = forDomain._rawValue;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v82[0] = v27;
    *v26 = 67109378;
    *(v26 + 4) = v21 & 1;
    *(v26 + 8) = 2080;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v82);

    *(v26 + 10) = v30;
    _os_log_impl(&dword_1B0233000, v24, v25, "Returning cached eligibility result: %{BOOL}d for domain: %s", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1B27246A0](v27, -1, -1);
    MEMORY[0x1B27246A0](v26, -1, -1);
  }

  (*(v5 + 8))(v14, v4);
LABEL_28:
  v74 = *MEMORY[0x1E69E9840];
  return v21 & 1;
}

uint64_t LACEligibilityHelper.cachedValue(for:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___LACEligibilityHelper_cache;
  if (!os_unfair_lock_trylock((v1 + OBJC_IVAR___LACEligibilityHelper_cache)))
  {
    return 2;
  }

  v4 = *(v3 + 8);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + v5);
  }

  else
  {
    v7 = 2;
  }

  os_unfair_lock_unlock(v3);
  return v7;
}

void LACEligibilityHelper.notificationCenter(_:didReceive:)(uint64_t a1, const __CFString *a2)
{
  if (LACDarwinNotificationsEqual(a2, @"com.apple.os-eligibility-domain.change.tellurium"))
  {
    v3 = (v2 + OBJC_IVAR___LACEligibilityHelper_cache);
    os_unfair_lock_lock((v2 + OBJC_IVAR___LACEligibilityHelper_cache));
    specialized Dictionary.subscript.setter(2, @"LACEligibilityDomainPhoneIntegration");

    os_unfair_lock_unlock(v3);
  }
}

void specialized Dictionary.subscript.setter(char a1, void *a2)
{
  v3 = v2;
  if (a1 == 2)
  {
    v4 = *v2;
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v6)
    {
      v7 = v5;
      v8 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v15 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v10 = v15;
      }

      specialized _NativeDictionary._delete(at:)(v7, v10);
      *v3 = v10;
    }

    else
    {
    }
  }

  else
  {
    v12 = *v3;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1 & 1, a2, v13);

    *v3 = v16;
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native, specialized _NativeDictionary.copy(), &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLCGMR);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      specialized _NativeDictionary._delete(at:)(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native, specialized _NativeDictionary.copy(), &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF24ControllerPendingRequestCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF24ControllerPendingRequestCGMR);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      specialized _NativeDictionary._delete(at:)(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = specialized _NativeDictionary._delete(at:)(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v15)
      {
        v7 = a3;
        v8 = MEMORY[0x1B2722E50](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v17 = v8;
        v10 = a1(&v17);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      if (a3 < 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = a3;
      v13 = MEMORY[0x1B2722F00](v11);
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo20LACEligibilityDomainaGMd, &_ss23_ContiguousArrayStorageCySo20LACEligibilityDomainaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for LACEligibilityDomain(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSFileAttributeKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo18NSFileAttributeKeya_yptGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSFileAttributeKeya_yptMd, &_sSo18NSFileAttributeKeya_yptMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo20LACEligibilityDomainaSbGMd, &_ss18_DictionaryStorageCySo20LACEligibilityDomainaSbGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v37 = *(v21 + v20);
      if ((v36 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + v16) = v37;
      ++*(v8 + 16);
      v5 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        outlined init with take of Any((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        outlined init with copy of AnyHashable(v24, &v37);
        outlined init with copy of Any(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = outlined init with take of Any(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        outlined init with take of Any(v25, v37);
      }

      else
      {
        outlined init with copy of Any(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMd, &_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMR);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        outlined init with take of Any(v23, v38);
      }

      else
      {
        outlined init with copy of Any(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = outlined init with take of Any(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay23LocalAuthenticationCore37LACConcurrentEvaluationManagedRequest33_C817701C53905B142550A8026D25F95DLLCGGMd, &_ss18_DictionaryStorageCySSSay23LocalAuthenticationCore37LACConcurrentEvaluationManagedRequest33_C817701C53905B142550A8026D25F95DLLCGGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMd, &_ss18_DictionaryStorageCySS23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v49 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v52 = v14;
    v44 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v45 = (v11 + 16);
    v46 = v15;
    v47 = v10;
    v48 = v11;
    v50 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v51 = *(v48 + 72);
      v32 = v31 + v51 * v30;
      if (v49)
      {
        (*v50)(v52, v32, v10);
        v33 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v45)(v52, v32, v10);
        v33 = *(*(v15 + 56) + 8 * v30);
      }

      v34 = *(v18 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v35 = -1 << *(v18 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v25 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v25 + 8 * v37);
          if (v41 != -1)
          {
            v26 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v36) & ~*(v25 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v10 = v47;
      result = (*v50)(*(v18 + 48) + v51 * v26, v52, v47);
      *(*(v18 + 56) + 8 * v26) = v33;
      ++*(v18 + 16);
      v15 = v46;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v7 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v15 + 32);
    v7 = v44;
    if (v42 >= 64)
    {
      bzero(v20, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v42;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v17 = *v4;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for LACEligibilityDomain(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      specialized _NativeDictionary.copy()();
      result = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    *(v19[7] + result) = a1 & 1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  *(v19[7] + result) = a1 & 1;
  v20 = v19[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;

  return a2;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = *v4;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v22);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return outlined init with take of Any(a1, v17);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLCGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF24ControllerPendingRequestCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF24ControllerPendingRequestCGMR);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v7 = v6;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v32();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, a3 & 1, v33, v34);
    v28 = *v7;
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v22 & 1) == (v30 & 1))
    {
      v18 = v29;
      v24 = *v7;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v12 + 16))(v15, a2, v11);
      return specialized _NativeDictionary._insert(at:key:value:)(v18, v15, a1, v24);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v7;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = v24[7];
  v26 = *(v25 + 8 * v18);
  *(v25 + 8 * v18) = a1;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return outlined init with take of Any(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x1EEE66BB8](v11, v24);
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8](v11, v24);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo20LACEligibilityDomaina_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo20LACEligibilityDomainaSbGMd, &_ss18_DictionaryStorageCySo20LACEligibilityDomainaSbGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t type metadata accessor for LACEligibilityHelper()
{
  result = lazy cache variable for type metadata for LACEligibilityHelper;
  if (!lazy cache variable for type metadata for LACEligibilityHelper)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACEligibilityHelper);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiypGMd, &_ss18_DictionaryStorageCySiypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 40)
    {
      outlined init with copy of (String, Any)(i, &v11, &_sSi_yptMd, &_sSi_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_23LocalAuthenticationCore012LACCompanionF14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = static _DictionaryStorage.allocate(capacity:)();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      outlined init with copy of (String, Any)(v17, v13, a2, v28);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = type metadata accessor for UUID();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySiypGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMd, &_ss18_DictionaryStorageCySS23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t static LACLog.abm.getter()
{
  v0 = LACLogABM();

  return Logger.init(_:)();
}

uint64_t static LACLog.default.getter()
{
  v0 = LACLogDefault();

  return Logger.init(_:)();
}

uint64_t static LACLog.authenticator.getter()
{
  v0 = LACLogAuthenticator();

  return Logger.init(_:)();
}

uint64_t static LACLog.concurrentEvaluations.getter()
{
  v0 = LACLogConcurrentEvaluations();

  return Logger.init(_:)();
}

uint64_t static LACLog.credentials.getter()
{
  v0 = LACLogCredentials();

  return Logger.init(_:)();
}

uint64_t static LACLog.faceIDUI.getter()
{
  v0 = LACLogFaceIDUI();

  return Logger.init(_:)();
}

uint64_t static LACLog.ui.getter()
{
  v0 = LACLogUI();

  return Logger.init(_:)();
}

uint64_t static LACLog.processor.getter()
{
  v0 = LACLogProcessor();

  return Logger.init(_:)();
}

uint64_t static LACLog.dtoUI.getter()
{
  v0 = LACLogDTOUI();

  return Logger.init(_:)();
}

uint64_t static LACLog.dtoEvaluation.getter()
{
  v0 = LACLogDTOEvaluation();

  return Logger.init(_:)();
}

uint64_t static LACLog.dtoEnvironment.getter()
{
  v0 = LACLogDTOEnvironment();

  return Logger.init(_:)();
}

uint64_t static LACLog.oti.getter()
{
  v0 = LACLogOTI();

  return Logger.init(_:)();
}

uint64_t static LACLog.preboard.getter()
{
  v0 = LACLogPreboard();

  return Logger.init(_:)();
}

uint64_t static LACLog.tests.getter()
{
  v0 = LACLogTests();

  return Logger.init(_:)();
}

uint64_t getEnumTagSinglePayload for LACLog(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for LACLog(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void one-time initialization function for sharedInstance()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [objc_allocWithZone(LACAuthenticatorHelper) initWithUserProvider_];

  static LACAuthenticatorHelper.sharedInstance = v1;
}

id static LACAuthenticatorHelper.shared.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v1 = static LACAuthenticatorHelper.sharedInstance;

  return v1;
}

id LACAuthenticatorHelper.init(userProvider:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUserProvider_];
  swift_unknownObjectRelease();
  return v1;
}

{
  *(v1 + OBJC_IVAR___LACAuthenticatorHelper_userProvider) = a1;
  v3.super_class = LACAuthenticatorHelper;
  return objc_msgSendSuper2(&v3, sel_init);
}

BOOL LACAuthenticatorHelper.isAdministratorRequired(forUserID:authenticator:)(void *a1, uint64_t a2)
{
  if (a2 == 3 || a2 == 2)
  {
    return 1;
  }

  if (a2 != 4 || a1 == 0)
  {
    return 0;
  }

  v7 = [objc_msgSend(v2 userProvider)];
  swift_unknownObjectRelease();
  if (!v7)
  {
    [a1 integerValue];
    return 1;
  }

  v8 = [v7 userID];
  swift_unknownObjectRelease();
  return v8 != [a1 integerValue];
}

uint64_t LACAuthenticatorHelper.isRequirementMet(forUserID:authenticator:)(void *a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [objc_msgSend(v2 userProvider)];
    swift_unknownObjectRelease();
    if (a2 == 2 && (!v5 || ![v5 isAdministrator]))
    {
      v8 = "Current user is not admin";
LABEL_21:
      v10 = (v8 - 32) | 0x8000000000000000;
      v9 = 0xD000000000000019;
      goto LABEL_22;
    }

    if (!a1)
    {
      goto LABEL_15;
    }

    if (v5)
    {
      v6 = [v5 userID];
      v7 = [a1 integerValue];
      if (a2 == 1)
      {
        if (v6 == v7)
        {
LABEL_15:
          swift_unknownObjectRetain();
          v11 = v5;
          if (v5)
          {
            goto LABEL_16;
          }

LABEL_20:
          v8 = "No user with the given ID";
          goto LABEL_21;
        }

LABEL_13:
        v9 = 0xD000000000000018;
        v10 = 0x80000001B03547C0;
LABEL_22:
        closure #1 in LACAuthenticatorHelper.isRequirementMet(forUserID:authenticator:)(v9, v10, a1, a2);
LABEL_23:
        swift_unknownObjectRelease();
        return 0;
      }

      if (v6 == v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      [a1 integerValue];
      if (a2 == 1)
      {
        goto LABEL_13;
      }
    }

    v13 = a1;
    v11 = [objc_msgSend(v2 userProvider)];

    swift_unknownObjectRelease();
    if (v11)
    {
LABEL_16:
      if (![v2 isAdministratorRequiredForUserID:a1 authenticator:a2] || objc_msgSend(v11, sel_isAdministrator))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return 1;
      }

      closure #1 in LACAuthenticatorHelper.isRequirementMet(forUserID:authenticator:)(0xD000000000000011, 0x80000001B03547A0, a1, a2);
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  closure #1 in LACAuthenticatorHelper.isRequirementMet(forUserID:authenticator:)(0x6673697461736E55, 0xED0000656C626169, a1, 0);
  return 0;
}

uint64_t closure #1 in LACAuthenticatorHelper.isRequirementMet(forUserID:authenticator:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = LACLogAuthenticator();
  Logger.init(_:)();
  v14 = a3;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v9;
    v18 = a3;
    v19 = v17;
    v20 = swift_slowAlloc();
    v29 = v8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v23 = a4;
    v24 = a1;
    v25 = v22;
    v31 = v22;
    *v19 = 138412802;
    *(v19 + 4) = v14;
    *v21 = v18;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    v26 = v14;
    *(v19 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, a2, &v31);
    _os_log_impl(&dword_1B0233000, v15, v16, "UserID: %@ does not meet requirements of authenticator: %ld - %s", v19, 0x20u);
    outlined destroy of NSObject?(v21);
    MEMORY[0x1B27246A0](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1B27246A0](v25, -1, -1);
    MEMORY[0x1B27246A0](v19, -1, -1);

    return (*(v30 + 8))(v12, v29);
  }

  else
  {

    return (*(v9 + 8))(v12, v8);
  }
}

LACAuthenticatorHelper __swiftcall LACAuthenticatorHelper.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.userProvider = v2;
  result.super.isa = v1;
  return result;
}

unint64_t type metadata accessor for LACAuthenticatorHelper()
{
  result = lazy cache variable for type metadata for LACAuthenticatorHelper;
  if (!lazy cache variable for type metadata for LACAuthenticatorHelper)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACAuthenticatorHelper);
  }

  return result;
}

uint64_t LACPreboardUseCaseProviderAMFI.completeCurrentUseCase(success:)()
{
  [objc_opt_self() completeCurrentBootModeWithSuccess_];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized LACPreboardUseCaseProviderAMFI.preboardUseCase.getter()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 txmSecurityBootMode];

  v7 = LACLogPreboard();
  Logger.init(_:)();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v6;
    _os_log_impl(&dword_1B0233000, v8, v9, "TXM boot mode %ld", v10, 0xCu);
    MEMORY[0x1B27246A0](v10, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  if (v6)
  {
    return -1;
  }

  else
  {
    return [objc_opt_self() useCase];
  }
}

uint64_t dispatch thunk of LACPreboardStorageType.batchOptions(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of LACPreboardStorageType.batchOptions(for:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of LACPreboardStorageType.batchOptions(for:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of LACPreboardStorageType.clean(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of LACPreboardStorageType.enableBatch(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of LACPreboardStorageType.enableBatch(for:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of LACPreboardStorageType.enableVariable(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of LACPreboardStorageType.exchangeUPPSignature(for:useCase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 64);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of LACPreboardStorageType.exchangeUPPSignature(for:useCase:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of LACPreboardStorageType.exchangeUPPSignature(for:useCase:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t LACPhoneIntegrationSessionProvider.isSessionActive.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = closure #1 in LACPhoneIntegrationSessionProvider.isSessionActive.getter(v0);
    v2 = *(v0 + 16);
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t closure #1 in LACPhoneIntegrationSessionProvider.isSessionActive.getter(uint64_t a1)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGMd, &_s7Combine10PublishersO10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGMR);
  v38 = *(v35 - 8);
  v15 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v33 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGSo17OS_dispatch_queueCGMR);
  v18 = *(v17 - 8);
  v36 = v17;
  v37 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  v40 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMR);
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  Publisher<>.removeDuplicates()();
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGMR);
  Publisher.compactMap<A>(_:)();
  (*(v6 + 8))(v9, v5);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CompactMap<Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>>, Bool> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGMd, &_s7Combine10PublishersO10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGMR);
  v22 = Publisher.share()();
  (*(v11 + 8))(v14, v10);
  v40 = v22;
  swift_allocObject();
  v23 = v33;
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Share<Publishers.CompactMap<Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>>, Bool>> and conformance Publishers.Share<A>, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGMR);
  v24 = v34;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  v40 = *(v23 + 40);
  v25 = v40;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v27 = v39;
  (*(*(v26 - 8) + 56))(v39, 1, 1, v26);
  type metadata accessor for OS_dispatch_queue();
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.Share<Publishers.CompactMap<Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>>, Bool>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGMR);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v28 = v25;
  v29 = v35;
  Publisher.receive<A>(on:options:)();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v27);

  (*(v38 + 8))(v24, v29);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.HandleEvents<Publishers.Share<Publishers.CompactMap<Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>>, Bool>>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGSo17OS_dispatch_queueCGMR);
  v30 = v36;
  v31 = Publisher.eraseToAnyPublisher()();
  (*(v37 + 8))(v21, v30);
  return v31;
}

uint64_t closure #2 in closure #1 in LACPhoneIntegrationSessionProvider.isSessionActive.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    LACPhoneIntegrationSessionProvider.start()();
  }

  return result;
}

uint64_t LACPhoneIntegrationSessionProvider.start()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  if (*(v0 + 48))
  {
    v9 = LACLogABM();
    Logger.init(_:)();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      v8 = v6;
      goto LABEL_8;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v11, "Vision companion session subscriber already exists", v12, 2u);
    v8 = v6;
    goto LABEL_6;
  }

  *(v0 + 48) = 1;
  LACPhoneIntegrationSessionProvider.fetchCurrentState(completion:)(0, 0);
  v13 = LACLogABM();
  Logger.init(_:)();
  v10 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v14))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v14, "Vision companion session listener subscribed", v12, 2u);
LABEL_6:
    MEMORY[0x1B27246A0](v12, -1, -1);
  }

LABEL_8:

  return (*(v2 + 8))(v8, v1);
}

uint64_t closure #3 in closure #1 in LACPhoneIntegrationSessionProvider.isSessionActive.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    LACPhoneIntegrationSessionProvider.stop()();
  }

  return result;
}

uint64_t LACPhoneIntegrationSessionProvider.stop()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  if (*(v0 + 48) == 1)
  {
    *(v0 + 48) = 0;
    v9 = LACLogABM();
    Logger.init(_:)();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      v6 = v8;
      goto LABEL_8;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v11, "Vision companion session listener unsubscribed", v12, 2u);
    v6 = v8;
    goto LABEL_6;
  }

  v13 = LACLogABM();
  Logger.init(_:)();
  v10 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v14))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v14, "Vision companion session subscriber does not exist", v12, 2u);
LABEL_6:
    MEMORY[0x1B27246A0](v12, -1, -1);
  }

LABEL_8:

  return (*(v2 + 8))(v6, v1);
}

uint64_t LACPhoneIntegrationSessionProvider.isSessionActive.setter(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t (*LACPhoneIntegrationSessionProvider.isSessionActive.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = LACPhoneIntegrationSessionProvider.isSessionActive.getter();
  return LACOnenessSessionProvider.isSessionActive.modify;
}

id LACPhoneIntegrationSessionProvider.isAvailable.getter()
{
  v1 = [*(v0 + 24) environment];
  v2 = [v1 isFeatureAvailable];

  return v2;
}

uint64_t LACPhoneIntegrationSessionProvider.__allocating_init(environmentProvider:sharingManager:replyQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return specialized LACPhoneIntegrationSessionProvider.__allocating_init(environmentProvider:sharingManager:replyQueue:)(a1, a2, a3);
}

uint64_t LACPhoneIntegrationSessionProvider.init(environmentProvider:sharingManager:replyQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return specialized LACPhoneIntegrationSessionProvider.init(environmentProvider:sharingManager:replyQueue:)(a1, a2, a3, v3);
}

uint64_t LACPhoneIntegrationSessionProvider.refresh(completion:)(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = LACLogABM();
  Logger.init(_:)();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v11, "Vision Companion session asked to refresh", v12, 2u);
    MEMORY[0x1B27246A0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return LACPhoneIntegrationSessionProvider.fetchCurrentState(completion:)(a1, a2);
}

uint64_t LACPhoneIntegrationSessionProvider.fetchCurrentState(completion:)(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v30 = type metadata accessor for Logger();
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v30);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v15 = *(v3 + 24);

  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a1);
  v16 = [v15 environment];
  v17 = [v16 isFeatureAvailable];

  if (v17)
  {

    v18 = LACLogABM();
    Logger.init(_:)();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B0233000, v19, v20, "Vision fetching companion session state", v21, 2u);
      MEMORY[0x1B27246A0](v21, -1, -1);
    }

    (*(v6 + 8))(v12, v30);
    v22 = *(v3 + 32);
    aBlock[4] = partial apply for closure #1 in LACPhoneIntegrationSessionProvider.fetchCurrentState(completion:);
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_1;
    v23 = _Block_copy(aBlock);

    [v22 canAuthenticateWithCompanion:4 completion:v23];
    _Block_release(v23);
  }

  else
  {
    v24 = LACLogABM();
    Logger.init(_:)();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1B0233000, v25, v26, "Vision fetching companion session state skipped - companion not available", v27, 2u);
      MEMORY[0x1B27246A0](v27, -1, -1);
    }

    (*(v6 + 8))(v10, v30);
    closure #1 in LACPhoneIntegrationSessionProvider.fetchCurrentState(completion:)(0, v13, a1);
  }
}

uint64_t LACPhoneIntegrationSessionProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  v3 = *(v0 + 32);
  swift_unknownObjectRelease();

  v4 = *(v0 + 56);

  return v0;
}

uint64_t LACPhoneIntegrationSessionProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  v3 = *(v0 + 32);
  swift_unknownObjectRelease();

  v4 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t closure #1 in LACPhoneIntegrationSessionProvider.fetchCurrentState(completion:)(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = LACLogABM();
  Logger.init(_:)();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&dword_1B0233000, v11, v12, "Vision companion session is active: %{BOOL}d", v13, 8u);
    MEMORY[0x1B27246A0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + 56);

    v16[7] = a1 & 1;
    CurrentValueSubject.send(_:)();
  }

  if (a3)
  {
    return a3(a1 & 1);
  }

  return result;
}

uint64_t specialized LACPhoneIntegrationSessionProvider.__allocating_init(environmentProvider:sharingManager:replyQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LACPhoneIntegrationSessionProvider();
  v6 = swift_allocObject();

  return specialized LACPhoneIntegrationSessionProvider.init(environmentProvider:sharingManager:replyQueue:)(a1, a2, a3, v6);
}

uint64_t specialized LACPhoneIntegrationSessionProvider.init(environmentProvider:sharingManager:replyQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = 0;
  *(a4 + 48) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(a4 + 56) = CurrentValueSubject.init(_:)();
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  return a4;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue)
  {
    type metadata accessor for OS_dispatch_queue();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue);
  }

  return result;
}

id LACUserDefaultsPersistentStore.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  if (!a2 || (v5 = objc_allocWithZone(MEMORY[0x1E695E000]), v6 = MEMORY[0x1B27229A0](a1, a2), , v7 = [v5 initWithSuiteName_], v6, !v7))
  {
    v7 = [objc_opt_self() standardUserDefaults];
  }

  v2[14] = v7;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for LACUserDefaultsPersistentStore();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t LACUserDefaultsPersistentStore.data(forKey:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](LACUserDefaultsPersistentStore.data(forKey:), v2, 0);
}

uint64_t LACUserDefaultsPersistentStore.data(forKey:)()
{
  v1 = *(v0[4] + 112);
  v2 = MEMORY[0x1B27229A0](v0[2], v0[3]);
  v3 = [v1 dataForKey_];

  if (v3)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  v7 = v0[1];

  return v7(v4, v6);
}

uint64_t @objc closure #1 in LACUserDefaultsPersistentStore.data(forKey:)(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;

  return MEMORY[0x1EEE6DFA0](@objc closure #1 in LACUserDefaultsPersistentStore.data(forKey:), a3, 0);
}

uint64_t @objc closure #1 in LACUserDefaultsPersistentStore.data(forKey:)()
{
  v1 = v0[2];
  v2 = [*(v0[3] + 112) dataForKey_];

  v3 = v0[3];
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v4, v6);
  }

  else
  {
    v8 = v0[3];

    v7.super.isa = 0;
  }

  v9 = v0[4];
  (v9)[2](v9, v7.super.isa, 0);

  _Block_release(v9);
  v10 = v0[1];

  return v10();
}

uint64_t LACUserDefaultsPersistentStore.setData(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](LACUserDefaultsPersistentStore.setData(_:forKey:), v4, 0);
}

uint64_t LACUserDefaultsPersistentStore.setData(_:forKey:)()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(v0[6] + 112);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = MEMORY[0x1B27229A0](v3, v1);
  [v5 setObject:isa forKey:v7];

  v8 = v0[1];

  return v8();
}

uint64_t @objc closure #1 in LACUserDefaultsPersistentStore.setData(_:forKey:)(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v4[5] = v10;
  v4[6] = v12;

  return MEMORY[0x1EEE6DFA0](@objc closure #1 in LACUserDefaultsPersistentStore.setData(_:forKey:), a4, 0);
}

uint64_t @objc closure #1 in LACUserDefaultsPersistentStore.setData(_:forKey:)()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(v0[3] + 112);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v5 setObject:isa forKey:v4];

  outlined consume of Data._Representation(v1, v2);
  v3[2](v3, 0);
  _Block_release(v3);
  v7 = v0[1];

  return v7();
}

uint64_t LACUserDefaultsPersistentStore.removeObject(forKey:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](LACUserDefaultsPersistentStore.removeObject(forKey:), v2, 0);
}

uint64_t LACUserDefaultsPersistentStore.removeObject(forKey:)()
{
  v1 = *(v0[4] + 112);
  v2 = MEMORY[0x1B27229A0](v0[2], v0[3]);
  [v1 removeObjectForKey_];

  v3 = v0[1];

  return v3();
}

uint64_t @objc closure #1 in LACUserDefaultsPersistentStore.removeObject(forKey:)(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;

  return MEMORY[0x1EEE6DFA0](@objc closure #1 in LACUserDefaultsPersistentStore.removeObject(forKey:), a3, 0);
}

uint64_t @objc closure #1 in LACUserDefaultsPersistentStore.removeObject(forKey:)()
{
  v1 = v0[4];
  v2 = v0[2];
  [*(v0[3] + 112) removeObjectForKey_];

  v1[2](v1, 0);
  _Block_release(v1);
  v3 = v0[1];

  return v3();
}

void LACUserDefaultsPersistentStore.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void LACUserDefaultsPersistentStore.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t LACUserDefaultsPersistentStore.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of LACUserDefaultsPersistentStore.data(forKey:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of LACPreboardStorageType.exchangeUPPSignature(for:useCase:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of LACUserDefaultsPersistentStore.setData(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LACUserDefaultsPersistentStore.removeObject(forKey:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x78);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return v10(a1, a2);
}

uint64_t partial apply for @objc closure #1 in LACUserDefaultsPersistentStore.removeObject(forKey:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return @objc closure #1 in LACUserDefaultsPersistentStore.removeObject(forKey:)(v2, v3, v4);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t partial apply for @objc closure #1 in LACUserDefaultsPersistentStore.setData(_:forKey:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return @objc closure #1 in LACUserDefaultsPersistentStore.setData(_:forKey:)(v2, v3, v5, v4);
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in LACUserDefaultsPersistentStore.data(forKey:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return @objc closure #1 in LACUserDefaultsPersistentStore.data(forKey:)(v2, v3, v4);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t LACPhoneIntegrationEnvironmentProvider.isFeatureSupported.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (MEMORY[0x1EEE9AC00])();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 featureFlagPhoneIntegrationEnabled];

  if (v13)
  {
    if ([objc_opt_self() deviceHasFaceID])
    {
      v14 = [objc_msgSend(v0 eligibilityHelper)];
      swift_unknownObjectRelease();
      if (v14)
      {
        return 1;
      }

      v22 = LACLogABM();
      Logger.init(_:)();
      v17 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v17, v23))
      {
        goto LABEL_12;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B0233000, v17, v23, "Not eligible for authentication with Vision Pro", v19, 2u);
    }

    else
    {
      v20 = LACLogABM();
      Logger.init(_:)();
      v17 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v17, v21))
      {
        v6 = v9;
        goto LABEL_13;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B0233000, v17, v21, "Authentication with Vision Pro is available only for Face ID devices", v19, 2u);
      v11 = v9;
    }

LABEL_11:
    MEMORY[0x1B27246A0](v19, -1, -1);
LABEL_12:
    v6 = v11;
    goto LABEL_13;
  }

  v16 = LACLogABM();
  Logger.init(_:)();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1B0233000, v17, v18, "Authentication with Vision Pro is not enabled", v19, 2u);
    v11 = v6;
    goto LABEL_11;
  }

LABEL_13:

  (*(v2 + 8))(v6, v1);
  return 0;
}

id LACPhoneIntegrationEnvironmentProvider.environment.getter()
{
  v1 = [v0 isFeatureAvailable];
  v2 = LACPhoneIntegrationEnvironmentProvider.isFeatureSupported.getter();
  v3 = objc_allocWithZone(LACCompanionAuthenticationEnvironment);

  return [v3 initWithFeatureAvailable:v1 featureSupported:v2 & 1];
}

id LACPhoneIntegrationEnvironmentProvider.init(eligibilityHelper:sharingManager:work:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEligibilityHelper:a1 sharingManager:a2 workQueue:a3];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v4;
}

{
  *(v3 + OBJC_IVAR___LACPhoneIntegrationEnvironmentProvider_hasPairedDevices) = 0;
  *(v3 + OBJC_IVAR___LACPhoneIntegrationEnvironmentProvider_subscription) = 0;
  *(v3 + OBJC_IVAR___LACPhoneIntegrationEnvironmentProvider_eligibilityHelper) = a1;
  *(v3 + OBJC_IVAR___LACPhoneIntegrationEnvironmentProvider_sharingManager) = a2;
  *(v3 + OBJC_IVAR___LACPhoneIntegrationEnvironmentProvider_workQueue) = a3;
  v8.super_class = LACPhoneIntegrationEnvironmentProvider;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  LACPhoneIntegrationEnvironmentProvider.setup()();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v6;
}

uint64_t LACPhoneIntegrationEnvironmentProvider.setup()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = [objc_opt_self() deviceLockState];
  *(v12 + 16) = v13;
  if (!v13)
  {
    v26 = [v1 workQueue];
    v14 = swift_allocObject();
    v27 = v7;
    v15 = v14;
    swift_unknownObjectWeakInit();
    v34 = partial apply for closure #1 in LACPhoneIntegrationEnvironmentProvider.setup();
    v35 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v33 = &block_descriptor_23;
    v16 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v29 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
    v28 = v1;
    v17 = v8;
    v18 = v3;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v26;
    MEMORY[0x1B2722D20](0, v11, v6, v16);
    _Block_release(v16);

    (*(v18 + 8))(v6, v2);
    (*(v17 + 8))(v11, v27);
    v1 = v28;
  }

  v20 = [v1 workQueue];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v12;
  *(v22 + 24) = v21;
  v34 = partial apply for closure #2 in LACPhoneIntegrationEnvironmentProvider.setup();
  v35 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed (@unowned AKSEventType, @guaranteed CFDictionaryRef?) -> ();
  v33 = &block_descriptor_19;
  v23 = _Block_copy(&aBlock);

  v24 = AKSEventsRegister();
  _Block_release(v23);

  [v1 setSubscription_];
}

void __swiftcall LACPhoneIntegrationEnvironmentProvider.init()(LACPhoneIntegrationEnvironmentProvider *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void closure #1 in LACPhoneIntegrationEnvironmentProvider.setup()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (LACPhoneIntegrationEnvironmentProvider.isFeatureSupported.getter())
    {
      v2 = [v1 sharingManager];
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v4 = swift_allocObject();
      v4[3] = 0;
      v4[4] = 0;
      v4[2] = v3;
      aBlock[4] = closure #1 in LACPhoneIntegrationEnvironmentProvider.refreshAvailability(completion:)partial apply;
      aBlock[5] = v4;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [String]?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_31;
      v5 = _Block_copy(aBlock);

      [v2 pairedDevicesForCompanion:4 completion:v5];

      _Block_release(v5);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t LACPhoneIntegrationEnvironmentProvider.refresh()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](LACPhoneIntegrationEnvironmentProvider.refresh(), 0, 0);
}

{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = LACPhoneIntegrationEnvironmentProvider.refresh();

  return MEMORY[0x1EEE6DDE0]();
}

{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](LACPhoneIntegrationEnvironmentProvider.refresh(), 0, 0);
}

{
  return (*(v0 + 8))();
}

uint64_t closure #1 in LACPhoneIntegrationEnvironmentProvider.refresh()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, _sScCyyts5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - v9;
  v11 = *(v5 + 16);
  v11(aBlock - v9, a1, v4);
  v11(v8, v10, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v10, v4);
  if (LACPhoneIntegrationEnvironmentProvider.isFeatureSupported.getter())
  {
    (*(v5 + 8))(v8, v4);
    v14 = [a2 sharingManager];
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = partial apply for closure #1 in closure #1 in LACPhoneIntegrationEnvironmentProvider.refresh();
    v16[4] = v13;
    aBlock[4] = partial apply for closure #1 in LACPhoneIntegrationEnvironmentProvider.refreshAvailability(completion:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [String]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_2;
    v17 = _Block_copy(aBlock);

    [v14 pairedDevicesForCompanion:4 completion:v17];

    _Block_release(v17);
    return swift_unknownObjectRelease();
  }

  else
  {
    CheckedContinuation.resume(returning:)();

    return (*(v5 + 8))(v8, v4);
  }
}

unint64_t type metadata accessor for LACPhoneIntegrationEnvironmentProvider()
{
  result = lazy cache variable for type metadata for LACPhoneIntegrationEnvironmentProvider;
  if (!lazy cache variable for type metadata for LACPhoneIntegrationEnvironmentProvider)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACPhoneIntegrationEnvironmentProvider);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in LACPhoneIntegrationEnvironmentProvider.refresh()()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, _sScCyyts5NeverOGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return CheckedContinuation.resume(returning:)();
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id LACEvaluationRequestRootProcessor.__allocating_init(processor:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore33LACEvaluationRequestRootProcessor_processor] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id LACEvaluationRequestRootProcessor.init(processor:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC23LocalAuthenticationCore33LACEvaluationRequestRootProcessor_processor] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void LACEvaluationRequestRootProcessor.handle(_:completion:)(void *a1, void (*a2)(id), uint64_t a3)
{
  if ([*(v3 + OBJC_IVAR____TtC23LocalAuthenticationCore33LACEvaluationRequestRootProcessor_processor) canProcessRequest_])
  {

    LACEvaluationRequestRootProcessor.process(_:completion:)(a1, a2, a3);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = specialized static LACEvaluationRequestRootProcessor.noResultError(request:)(a1);
    v9 = _convertErrorToNSError(_:)();

    v10 = [v7 resultWithFailure_];
    a2(v10);
  }
}

id LACEvaluationRequestRootProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACEvaluationRequestRootProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LACEvaluationRequestRootProcessor.retry(request:for:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Logger();
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x1EEE9AC00]();
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = LACLogProcessor();
  Logger.init(_:)();
  v14 = v4;
  swift_unknownObjectRetain();
  v15 = a2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v38 = a4;
    v21 = v20;
    v36 = swift_slowAlloc();
    v40 = a1;
    v41 = v36;
    *v19 = 138412802;
    *(v19 + 4) = v14;
    *v21 = v14;
    *(v19 + 12) = 2080;
    v22 = v14;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20LACEvaluationRequest_pMd, _sSo20LACEvaluationRequest_pMR);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v41);
    v35 = v9;
    v26 = v25;

    *(v19 + 14) = v26;
    *(v19 + 22) = 2112;
    v27 = a2;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v28;
    v21[1] = v28;
    _os_log_impl(&dword_1B0233000, v16, v17, "%@ retrying request %s for error: %@", v19, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    v29 = v21;
    a4 = v38;
    MEMORY[0x1B27246A0](v29, -1, -1);
    v30 = v36;
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1B27246A0](v30, -1, -1);
    v31 = v19;
    a3 = v37;
    MEMORY[0x1B27246A0](v31, -1, -1);

    (*(v39 + 8))(v12, v35);
  }

  else
  {

    (*(v39 + 8))(v12, v9);
  }

  v32 = _convertErrorToNSError(_:)();
  [a1 setRetryingForError_];

  return LACEvaluationRequestRootProcessor.process(_:completion:)(a1, a3, a4);
}

id specialized static LACEvaluationRequestRootProcessor.noResultError(request:)(void *a1)
{
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(29);

  [a1 identifier];
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2722A80](v3);

  v4 = MEMORY[0x1B27229A0](0xD00000000000001BLL, 0x80000001B0355050);

  v5 = [v2 errorWithCode:-1000 debugDescription:v4];

  return v5;
}

uint64_t SerialTask.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC23LocalAuthenticationCore10SerialTask_continuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  SerialTask.start()();
  return v3;
}

uint64_t SerialTask.init()()
{
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCore10SerialTask_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  SerialTask.start()();
  return v0;
}

uint64_t SerialTask.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC23LocalAuthenticationCore10SerialTask_continuation;
  swift_beginAccess();
  if (!(*(v3 + 48))(v1 + v7, 1, v2))
  {
    (*(v3 + 16))(v6, v1 + v7, v2);
    AsyncStream.Continuation.finish()();
    (*(v3 + 8))(v6, v2);
  }

  outlined destroy of AsyncStream<()>.Continuation?(v1 + v7, &_sScS12ContinuationVyyyYac_GSgMd, &_sScS12ContinuationVyyyYac_GSgMR);
  return v1;
}

uint64_t SerialTask.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC23LocalAuthenticationCore10SerialTask_continuation;
  swift_beginAccess();
  if (!(*(v3 + 48))(v1 + v7, 1, v2))
  {
    (*(v3 + 16))(v6, v1 + v7, v2);
    AsyncStream.Continuation.finish()();
    (*(v3 + 8))(v6, v2);
  }

  outlined destroy of AsyncStream<()>.Continuation?(v1 + v7, &_sScS12ContinuationVyyyYac_GSgMd, &_sScS12ContinuationVyyyYac_GSgMR);
  v8 = *(*v1 + 48);
  v9 = *(*v1 + 52);
  return swift_deallocClassInstance();
}

uint64_t SerialTask.add(_:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GSgMd, &_sScS12ContinuationVyyyYac_GSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYac__GSgMd, &_sScS12ContinuationV11YieldResultOyyyYac__GSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v23 - v16;
  v18 = OBJC_IVAR____TtC23LocalAuthenticationCore10SerialTask_continuation;
  swift_beginAccess();
  outlined init with copy of AsyncStream<()>.Continuation?(v2 + v18, v13);
  if ((*(v6 + 48))(v13, 1, v5))
  {
    outlined destroy of AsyncStream<()>.Continuation?(v13, &_sScS12ContinuationVyyyYac_GSgMd, &_sScS12ContinuationVyyyYac_GSgMR);
    v19 = 1;
  }

  else
  {
    (*(v6 + 16))(v9, v13, v5);
    outlined destroy of AsyncStream<()>.Continuation?(v13, &_sScS12ContinuationVyyyYac_GSgMd, &_sScS12ContinuationVyyyYac_GSgMR);
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    v23[1] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @async () -> ();
    v23[2] = v20;

    AsyncStream.Continuation.yield(_:)();
    (*(v6 + 8))(v9, v5);
    v19 = 0;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYac__GMd, &_sScS12ContinuationV11YieldResultOyyyYac__GMR);
  (*(*(v21 - 8) + 56))(v17, v19, 1, v21);
  return outlined destroy of AsyncStream<()>.Continuation?(v17, &_sScS12ContinuationV11YieldResultOyyyYac__GSgMd, &_sScS12ContinuationV11YieldResultOyyyYac__GSgMR);
}

uint64_t thunk for @escaping @callee_guaranteed @async () -> ()(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return v6();
}

uint64_t SerialTask.start()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v21 = &v20 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYac__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYac__GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyyyYacGMd, &_sScSyyyYacGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syyYacMd, &_syyYacMR);
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8650], v3);
  AsyncStream.init(_:bufferingPolicy:_:)();

  v15 = type metadata accessor for TaskPriority();
  v16 = v21;
  (*(*(v15 - 8) + 56))(v21, 1, 1, v15);
  (*(v9 + 16))(v12, v14, v8);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v9 + 32))(v18 + v17, v12, v8);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #2 in SerialTask.start(), v18);

  return (*(v9 + 8))(v14, v8);
}

uint64_t outlined init with copy of AsyncStream<()>.Continuation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GSgMd, &_sScS12ContinuationVyyyYac_GSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async () -> ()(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return thunk for @escaping @callee_guaranteed @async () -> ()(a1, v5);
}

uint64_t type metadata accessor for SerialTask()
{
  result = type metadata singleton initialization cache for SerialTask;
  if (!type metadata singleton initialization cache for SerialTask)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SerialTask()
{
  type metadata accessor for AsyncStream<()>.Continuation?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for AsyncStream<()>.Continuation?()
{
  if (!lazy cache variable for type metadata for AsyncStream<()>.Continuation?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncStream<()>.Continuation?);
    }
  }
}

uint64_t closure #1 in SerialTask.start()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GSgMd, &_sScS12ContinuationVyyyYac_GSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, a1, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v10 = OBJC_IVAR____TtC23LocalAuthenticationCore10SerialTask_continuation;
    swift_beginAccess();
    outlined assign with take of AsyncStream<()>.Continuation?(v5, v7 + v10);
    swift_endAccess();
  }

  return result;
}

uint64_t closure #2 in SerialTask.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVyyyYac_GMd, &_sScS8IteratorVyyyYac_GMR);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in SerialTask.start(), 0, 0);
}

uint64_t closure #2 in SerialTask.start()()
{
  v1 = v0[7];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyyyYacGMd, &_sScSyyyYacGMR);
  AsyncStream.makeAsyncIterator()();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = closure #2 in SerialTask.start();
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #2 in SerialTask.start(), 0, 0);
}

{
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v6 = (v1 + *v1);
    v2 = v1[1];
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = closure #2 in SerialTask.start();

    return v6();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v5 = v0[1];

    return v5();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *v0;

  _sxRi_zRi0_zlyytIsegHr_SgWOe(v4);
  v6 = *(MEMORY[0x1E69E8678] + 4);
  v7 = swift_task_alloc();
  v1[8] = v7;
  *v7 = v5;
  v7[1] = closure #2 in SerialTask.start();
  v8 = v1[7];
  v9 = v1[5];

  return MEMORY[0x1EEE6D9C8](v1 + 2, 0, 0, v9);
}

uint64_t partial apply for closure #2 in SerialTask.start()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyyyYacGMd, &_sScSyyyYacGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return closure #2 in SerialTask.start()(a1, v6, v7, v1 + v5);
}

uint64_t _sxRi_zRi0_zlyytIsegHr_SgWOe(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined assign with take of AsyncStream<()>.Continuation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GSgMd, &_sScS12ContinuationVyyyYac_GSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void LACPhoneIntegrationController.canAuthenticateRequest(_:availabilityError:)(void *a1, void *a2)
{
  v3 = v2;
  v95 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for Logger();
  v88 = *(v6 - 8);
  v89 = v6;
  v7 = *(v88 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v87 = &v86 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v86 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v86 - v16;
  if (a2)
  {
    v18 = _convertErrorToNSError(_:)();
  }

  else
  {
    v18 = 0;
  }

  v91.receiver = v3;
  v91.super_class = LACPhoneIntegrationController;
  v92[0] = 0;
  v19 = objc_msgSendSuper2(&v91, sel_canAuthenticateRequest_availabilityError_error_, a1, v18, v92);

  if (!v19)
  {
    v28 = v92[0];
    _convertNSErrorToError(_:)();

    goto LABEL_13;
  }

  v20 = v92[0];
  v86 = a1;
  v21 = [a1 options];
  if (!v21)
  {
    goto LABEL_15;
  }

  v22 = v21;
  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v90 = 1092;
  AnyHashable.init<A>(_:)();
  if (!*(v23 + 16) || (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v92), (v25 & 1) == 0))
  {

    outlined destroy of AnyHashable(v92);
LABEL_15:
    v93 = 0u;
    v94 = 0u;
    goto LABEL_16;
  }

  outlined init with copy of Any(*(v23 + 56) + 32 * v24, &v93);
  outlined destroy of AnyHashable(v92);

  if (!*(&v94 + 1))
  {
LABEL_16:
    outlined destroy of AsyncStream<()>.Continuation?(&v93, &_sypSgMd, _sypSgMR);
    goto LABEL_17;
  }

  if (swift_dynamicCast() && (v92[0] & 1) != 0)
  {
    v26 = objc_opt_self();
    v27 = MEMORY[0x1B27229A0](0xD00000000000001ELL, 0x80000001B0355140);
    [v26 errorWithCode:-1000 subcode:6 debugDescription:v27];

LABEL_13:
    swift_willThrow();
    goto LABEL_32;
  }

LABEL_17:
  if (!a2)
  {
    goto LABEL_32;
  }

  v92[0] = a2;
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v30 = v93;
  v31 = objc_opt_self();
  v32 = v30;
  v33 = _convertErrorToNSError(_:)();

  v34 = [v31 error:v33 hasCode:-1004];
  if (!v34)
  {
LABEL_31:

    goto LABEL_32;
  }

  if (!specialized LACPhoneIntegrationController.isMechanismAvailable(_:nonInteractiveError:)(13, v32))
  {
    v87 = v31;
    v39 = LACLogABM();
    Logger.init(_:)();
    v40 = v86;
    swift_unknownObjectRetain_n();
    v32 = v32;
    v41 = v3;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138543874;
      *(v44 + 4) = v41;
      *v45 = v41;
      *(v44 + 12) = 1026;
      v46 = v41;
      v47 = [v40 identifier];
      swift_unknownObjectRelease();
      *(v44 + 14) = v47;
      swift_unknownObjectRelease();
      *(v44 + 18) = 2112;
      *(v44 + 20) = v32;
      v45[1] = v32;
      v48 = v32;
      _os_log_impl(&dword_1B0233000, v42, v43, "%{public}@ Companion not available for request: %{public}u error: %@", v44, 0x1Cu);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1B27246A0](v45, -1, -1);
      MEMORY[0x1B27246A0](v44, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease_n();
    }

    (*(v88 + 8))(v10, v89);
    v49 = MEMORY[0x1B27229A0](0xD000000000000017, 0x80000001B03550B0);
    v50 = [v87 errorWithCode:-1000 subcode:6 debugDescription:v49];
    goto LABEL_30;
  }

  v35 = specialized LACPhoneIntegrationController.mechanismTree(from:)(v32);
  v36 = v86;
  if (!v35)
  {
    v49 = MEMORY[0x1B27229A0](0xD00000000000001ELL, 0x80000001B03550D0);
    v50 = [v31 errorWithCode:-1000 subcode:6 debugDescription:v49];
LABEL_30:
    v50;

    swift_willThrow();
    goto LABEL_31;
  }

  v37 = v35;
  if (specialized LACPhoneIntegrationController.isMechanismAvailable(_:nonInteractiveError:)(7, v32))
  {
    v38 = v3;
    if (LACPhoneIntegrationController.isBiometryReplaceableByCompanion(tree:)(v37))
    {
    }

    else
    {
      v87 = v31;
      v61 = LACLogABM();
      Logger.init(_:)();
      v62 = v86;
      swift_unknownObjectRetain_n();
      v63 = v32;
      v64 = v38;
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = 138543874;
        *(v67 + 4) = v64;
        *v68 = v64;
        *(v67 + 12) = 1026;
        v69 = v64;
        v70 = v65;
        v71 = [v62 identifier];
        swift_unknownObjectRelease();
        *(v67 + 14) = v71;
        swift_unknownObjectRelease();
        *(v67 + 18) = 2112;
        *(v67 + 20) = v63;
        v68[1] = v63;
        v72 = v63;
        _os_log_impl(&dword_1B0233000, v70, v66, "%{public}@ Biometry is not replaceable by companion for request: %{public}u error: %@", v67, 0x1Cu);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x1B27246A0](v68, -1, -1);
        MEMORY[0x1B27246A0](v67, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      (*(v88 + 8))(v17, v89);
      v84 = MEMORY[0x1B27229A0](0xD000000000000028, 0x80000001B0355110);
      [v87 errorWithCode:-1000 subcode:6 debugDescription:v84];

      swift_willThrow();
    }
  }

  else
  {
    v52 = v3;
    if (LACPhoneIntegrationController.isSatisfiableByCompanion(tree:)(v37) & 1) != 0 || (LACPhoneIntegrationController.isCompanionRequired(tree:)(v37))
    {
      v53 = LACLogABM();
      Logger.init(_:)();
      v54 = v3;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v57 = 138543362;
        *(v57 + 4) = v54;
        *v58 = v54;
        v59 = v54;
        _os_log_impl(&dword_1B0233000, v55, v56, "%{public}@ Face ID not requested but request can be authenticated by companion", v57, 0xCu);
        outlined destroy of AsyncStream<()>.Continuation?(v58, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v58, -1, -1);
        MEMORY[0x1B27246A0](v57, -1, -1);
        v60 = v32;
      }

      else
      {
        v60 = v55;
        v55 = v32;
      }

      (*(v88 + 8))(v15, v89);
    }

    else
    {
      v73 = LACLogABM();
      Logger.init(_:)();
      swift_unknownObjectRetain_n();
      v74 = v32;
      v75 = v52;
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v78 = 138543874;
        *(v78 + 4) = v75;
        *v79 = v75;
        *(v78 + 12) = 1026;
        v80 = v75;
        v81 = v76;
        v82 = [v36 identifier];
        swift_unknownObjectRelease();
        *(v78 + 14) = v82;
        swift_unknownObjectRelease();
        *(v78 + 18) = 2112;
        *(v78 + 20) = v74;
        v79[1] = v74;
        v83 = v74;
        _os_log_impl(&dword_1B0233000, v81, v77, "%{public}@ Face ID not available for request: %{public}u error: %@", v78, 0x1Cu);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x1B27246A0](v79, -1, -1);
        MEMORY[0x1B27246A0](v78, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      (*(v88 + 8))(v87, v89);
      v85 = MEMORY[0x1B27229A0](0xD000000000000015, 0x80000001B03550F0);
      [v31 errorWithCode:-1000 subcode:6 debugDescription:v85];

      swift_willThrow();
    }
  }

LABEL_32:
  v51 = *MEMORY[0x1E69E9840];
}

unint64_t LACPhoneIntegrationController.isSatisfiableByCompanion(tree:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 isSatisfiableWithValue_];
  v9 = LACLogABM();
  Logger.init(_:)();
  v10 = v1;
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = 13;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = v8;
    v19 = v18;
    v32 = v18;
    *v15 = 138544130;
    *(v15 + 4) = v10;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v11;
    *v17 = v10;
    v17[1] = v11;
    *(v15 + 22) = 2080;
    if (v31)
    {
      v20 = 29545;
    }

    else
    {
      v20 = 0x746F6E207369;
    }

    v29 = v3;
    if (v31)
    {
      v21 = 0xE200000000000000;
    }

    else
    {
      v21 = 0xE600000000000000;
    }

    v22 = v10;
    v23 = v11;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v32);

    *(v15 + 24) = v24;
    *(v15 + 32) = 2048;
    *(v15 + 34) = v28;
    _os_log_impl(&dword_1B0233000, v12, v13, "%{public}@ Tree: %@ %s satisfiable by %ld", v15, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v25 = v19;
    v8 = v31;
    MEMORY[0x1B27246A0](v25, -1, -1);
    MEMORY[0x1B27246A0](v15, -1, -1);

    (*(v30 + 8))(v7, v29);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  return v8;
}

uint64_t LACPhoneIntegrationController.isCompanionRequired(tree:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [a1 isValueRequired_];
  v8 = LACLogABM();
  Logger.init(_:)();
  v9 = v1;
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v4;
    v17 = v16;
    v27 = v16;
    *v14 = 138544130;
    *(v14 + 4) = v9;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    *v15 = v9;
    v15[1] = v10;
    *(v14 + 22) = 2048;
    *(v14 + 24) = 13;
    *(v14 + 32) = 2080;
    if (v26)
    {
      v18 = 29545;
    }

    else
    {
      v18 = 0x746F6E207369;
    }

    if (v26)
    {
      v19 = 0xE200000000000000;
    }

    else
    {
      v19 = 0xE600000000000000;
    }

    v20 = v9;
    v21 = v10;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v27);

    *(v14 + 34) = v22;
    _os_log_impl(&dword_1B0233000, v11, v12, "%{public}@ Tree: %@ value: %ld %s required", v14, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1B27246A0](v17, -1, -1);
    MEMORY[0x1B27246A0](v14, -1, -1);

    (*(v24 + 8))(v7, v25);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  return v26;
}

unint64_t LACPhoneIntegrationController.isBiometryReplaceableByCompanion(tree:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 13;
  v8 = [a1 isValue:7 replaceableByValue:?];
  v9 = LACLogABM();
  Logger.init(_:)();
  v10 = v1;
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = v8;
    v19 = v18;
    v32 = v18;
    *v15 = 138544386;
    *(v15 + 4) = v10;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v11;
    *v17 = v10;
    v17[1] = v11;
    *(v15 + 22) = 2048;
    *(v15 + 24) = 7;
    *(v15 + 32) = 2080;
    if (v31)
    {
      v20 = 29545;
    }

    else
    {
      v20 = 0x746F6E207369;
    }

    if (v31)
    {
      v21 = 0xE200000000000000;
    }

    else
    {
      v21 = 0xE600000000000000;
    }

    v22 = v10;
    v23 = v11;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v32);

    *(v15 + 34) = v24;
    *(v15 + 42) = 2048;
    *(v15 + 44) = v30;
    _os_log_impl(&dword_1B0233000, v12, v13, "%{public}@ Tree: %@ and value %ld %s replaceable by %ld", v15, 0x34u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v25 = v19;
    v8 = v31;
    MEMORY[0x1B27246A0](v25, -1, -1);
    MEMORY[0x1B27246A0](v15, -1, -1);

    (*(v29 + 8))(v7, v28);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  return v8;
}

void LACPhoneIntegrationController.processRequest(_:configuration:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = v10;
  v11[5] = a1;
  aBlock[4] = partial apply for closure #1 in LACPhoneIntegrationController.processRequest(_:configuration:completion:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
  aBlock[3] = &block_descriptor_4;
  v12 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  v13.receiver = v5;
  v13.super_class = LACPhoneIntegrationController;
  objc_msgSendSuper2(&v13, sel_processRequest_configuration_completion_, a1, a2, v12);
  _Block_release(v12);
}

void closure #1 in LACPhoneIntegrationController.processRequest(_:configuration:completion:)(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  v116 = a5;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v115 = &v107 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v107 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v107 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v107 - v22;
  v24 = [a1 error];
  if (v24 && (v113 = v8, v114 = v9, v121[0] = v24, __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR), type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0), (swift_dynamicCast() & 1) != 0))
  {
    v110 = v13;
    v25 = v119;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = [v25 code];
      v112 = a3;
      if (v26 == -1000)
      {
        v109 = objc_opt_self();
        v27 = v25;
        v28 = _convertErrorToNSError(_:)();
        v107 = v27;

        LODWORD(v27) = [v109 error:v28 hasCode:-1000 subcode:6];
        if (v27)
        {
          v29 = v116;
          v30 = [v116 options];
          v108 = a2;
          if (v30)
          {
            v31 = v30;
            v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          }

          v59 = v114;
          *&v119 = -1000;
          AnyHashable.init<A>(_:)();
          v120 = MEMORY[0x1E69E6370];
          LOBYTE(v119) = 1;
          outlined init with take of Any(&v119, v118);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v117 = v32;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v118, v121, isUniquelyReferenced_nonNull_native);
          outlined destroy of AnyHashable(v121);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v29 updateOptions_];

          v62 = LACLogABM();
          Logger.init(_:)();
          v35 = v107;
          v63 = Strong;
          v37 = Strong;
          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            *v66 = 138543874;
            *(v66 + 4) = v37;
            *(v66 + 12) = 2112;
            *(v66 + 14) = v37;
            *v67 = v63;
            v67[1] = v63;
            *(v66 + 22) = 2112;
            *(v66 + 24) = v35;
            v67[2] = v35;
            v68 = v37;
            v69 = v35;
            v70 = v68;
            _os_log_impl(&dword_1B0233000, v64, v65, "%{public}@ %@ replaced error: %@ with concurrentBiometryAndCompanion option", v66, 0x20u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            swift_arrayDestroy();
            v71 = v67;
            v59 = v114;
            MEMORY[0x1B27246A0](v71, -1, -1);
            MEMORY[0x1B27246A0](v66, -1, -1);
          }

          (*(v59 + 8))(v21, v113);
          v45 = [objc_opt_self() resultWithNext_];
          v108();
LABEL_31:

          return;
        }
      }

      v109 = v25;
      if (v26 == -4)
      {
        v33 = a2;
        v34 = LACLogABM();
        Logger.init(_:)();
        v35 = v109;
        v36 = Strong;
        v37 = Strong;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = 138543874;
          *(v40 + 4) = v37;
          *(v40 + 12) = 2112;
          *(v40 + 14) = v37;
          *v41 = v36;
          v41[1] = v36;
          *(v40 + 22) = 2112;
          *(v40 + 24) = v35;
          v41[2] = v35;
          v42 = v37;
          v43 = v35;
          v44 = v42;
          _os_log_impl(&dword_1B0233000, v38, v39, "%{public}@ %@ replaced authentication error: %@ with next", v40, 0x20u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          swift_arrayDestroy();
          MEMORY[0x1B27246A0](v41, -1, -1);
          MEMORY[0x1B27246A0](v40, -1, -1);
        }

        (*(v114 + 8))(v18, v113);
        v45 = [objc_opt_self() resultWithNext_];
        v33();
        goto LABEL_31;
      }

      if (v26 != -1)
      {
        (a2)(a1);

LABEL_26:
        return;
      }

      v108 = a2;
      v50 = [v109 underlyingErrors];
      v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = *(v51 + 16);
      if (v52)
      {
        v53 = 0;
        while (1)
        {
          if (v53 >= *(v51 + 16))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            return;
          }

          v54 = *(v51 + 8 * v53 + 32);
          v55 = objc_opt_self();
          v56 = v54;
          v57 = _convertErrorToNSError(_:)();
          LOBYTE(v55) = [v55 isSharingError_];

          if (v55)
          {
            break;
          }

          ++v53;

          if (v52 == v53)
          {
            goto LABEL_22;
          }
        }

        v121[0] = v54;
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_41:
          v58 = v108;
          goto LABEL_42;
        }

        v107 = v119;
        v72 = [v119 underlyingErrors];
        v73 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v74 = 0;
        v75 = *(v73 + 16);
        do
        {
          if (v75 == v74)
          {

            goto LABEL_41;
          }

          if (v74 >= *(v73 + 16))
          {
            goto LABEL_46;
          }

          v76 = v74 + 1;
          v77 = *(v73 + 8 * v74 + 32);
          v78 = objc_opt_self();
          v79 = v77;
          v80 = _convertErrorToNSError(_:)();
          LOBYTE(v78) = [v78 error:v80 hasCode:-2];

          v74 = v76;
        }

        while ((v78 & 1) == 0);

        v81 = LACLogABM();
        v82 = v115;
        Logger.init(_:)();
        v83 = Strong;
        v84 = Strong;
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.default.getter();

        v87 = os_log_type_enabled(v85, v86);
        v88 = v113;
        if (v87)
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *v89 = 138543618;
          *(v89 + 4) = v84;
          *(v89 + 12) = 2112;
          *(v89 + 14) = v84;
          *v90 = v83;
          v90[1] = v83;
          v91 = v84;
          _os_log_impl(&dword_1B0233000, v85, v86, "%{public}@ %@ failing immediately because user explicitly cancelled authentication on companion", v89, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          swift_arrayDestroy();
          MEMORY[0x1B27246A0](v90, -1, -1);
          MEMORY[0x1B27246A0](v89, -1, -1);
        }

        (*(v114 + 8))(v82, v88);
        (v108)(a1);

        goto LABEL_26;
      }

LABEL_22:

      v58 = v108;
LABEL_42:
      v92 = Strong;
      v93 = v109;
      v94 = LACLogABM();
      Logger.init(_:)();
      v95 = v93;
      v96 = v92;
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.default.getter();

      v99 = os_log_type_enabled(v97, v98);
      v100 = v116;
      if (v99)
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *v101 = 138543874;
        *(v101 + 4) = v96;
        *(v101 + 12) = 2112;
        *(v101 + 14) = v96;
        *v102 = v92;
        v102[1] = v92;
        *(v101 + 22) = 2112;
        *(v101 + 24) = v95;
        v102[2] = v95;
        v103 = v96;
        v104 = v95;
        v105 = v103;
        _os_log_impl(&dword_1B0233000, v97, v98, "%{public}@ %@ replaced authentication error: %@ with next", v101, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x1B27246A0](v102, -1, -1);
        MEMORY[0x1B27246A0](v101, -1, -1);
      }

      (*(v114 + 8))(v110, v113);
      v106 = [objc_opt_self() resultWithNext_];
      v58();
    }

    else
    {
      v46 = LACLogABM();
      Logger.init(_:)();
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1B0233000, v47, v48, "Controller deallocated", v49, 2u);
        MEMORY[0x1B27246A0](v49, -1, -1);
      }

      else
      {
      }

      (*(v114 + 8))(v23, v113);
    }
  }

  else
  {
    (a2)(a1);
  }
}

id LACPhoneIntegrationController.init(authenticator:clientInfoProvider:environmentProvider:sessionMonitor:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAuthenticator:a1 clientInfoProvider:a2 environmentProvider:a3 sessionMonitor:a4 replyQueue:a5];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v6;
}

{
  v8.super_class = LACPhoneIntegrationController;
  v6 = objc_msgSendSuper2(&v8, sel_initWithAuthenticator_clientInfoProvider_environmentProvider_sessionMonitor_replyQueue_, a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

BOOL specialized LACPhoneIntegrationController.isMechanismAvailable(_:nonInteractiveError:)(uint64_t a1, id a2)
{
  v3 = [a2 userInfo];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v4 + 16))
  {

    goto LABEL_6;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  outlined init with copy of Any(*(v4 + 56) + 32 * v7, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v10 = v18;
LABEL_8:
  v11 = *(v10 + 16);
  v12 = 32;
  do
  {
    v13 = v11;
    if (v11-- == 0)
    {
      break;
    }

    v15 = *(v10 + v12);
    v12 += 8;
  }

  while (v15 != a1);
  v16 = v13 != 0;

  return v16;
}

id specialized LACPhoneIntegrationController.mechanismTree(from:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = _convertErrorToNSError(_:)();
  v9 = [v7 mechanismTreeFromError_];

  if (!v9)
  {
    v10 = LACLogABM();
    Logger.init(_:)();
    v11 = a1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      v16 = [v11 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = Dictionary.description.getter();
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v23);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_1B0233000, v12, v13, "Could not parse tree: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B27246A0](v15, -1, -1);
      MEMORY[0x1B27246A0](v14, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v9;
}

uint64_t type metadata accessor for NSError(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t LACPersistentStore.object<A>(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[24] = a6;
  v7[25] = v6;
  v7[22] = a3;
  v7[23] = a5;
  v7[20] = a1;
  v7[21] = a2;
  return MEMORY[0x1EEE6DFA0](LACPersistentStore.object<A>(forKey:), 0, 0);
}

uint64_t LACPersistentStore.object<A>(forKey:)()
{
  v1 = v0[25];
  v2 = MEMORY[0x1B27229A0](v0[21], v0[22]);
  v0[26] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = LACPersistentStore.object<A>(forKey:);
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation4DataVSgs5Error_pGMd, &_sSccy10Foundation4DataVSgs5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSError?) -> () with result type Data?;
  v0[13] = &block_descriptor_5;
  v0[14] = v3;
  [v1 dataForKey:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = LACPersistentStore.object<A>(forKey:);
  }

  else
  {
    v3 = LACPersistentStore.object<A>(forKey:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  if (v1 >> 60 == 15)
  {
    v3 = 1;
  }

  else
  {
    v5 = *(v0 + 184);
    v4 = *(v0 + 192);
    v6 = *(v0 + 160);
    v7 = type metadata accessor for JSONDecoder();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data?(v2, v1);

    v3 = 0;
  }

  (*(*(*(v0 + 184) - 8) + 56))(*(v0 + 160), v3, 1);
  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = v0[26];
  v2 = v0[27];
  swift_willThrow();

  v3 = v0[27];
  v4 = v0[1];

  return v4();
}

uint64_t @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSError?) -> () with result type Data?(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = a2;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xF000000000000000;
    }

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return swift_continuation_throwingResume();
  }
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t LACPersistentStore.set<A>(object:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[22] = a6;
  v7[23] = v6;
  v7[20] = a3;
  v7[21] = a5;
  v7[18] = a1;
  v7[19] = a2;
  return MEMORY[0x1EEE6DFA0](LACPersistentStore.set<A>(object:for:), 0, 0);
}

uint64_t LACPersistentStore.set<A>(object:for:)()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v0[24] = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[25] = v7;
  v8 = v0[23];
  v10 = v0[19];
  v9 = v0[20];

  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[26] = isa;
  v12 = MEMORY[0x1B27229A0](v10, v9);
  v0[27] = v12;
  v0[2] = v0;
  v0[3] = LACPersistentStore.set<A>(object:for:);
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_4;
  v0[14] = v13;
  [v8 setData:isa forKey:v12 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = LACPersistentStore.set<A>(object:for:);
  }

  else
  {
    v3 = LACPersistentStore.set<A>(object:for:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[26];
  v2 = v0[27];
  outlined consume of Data._Representation(v0[24], v0[25]);

  v3 = v0[1];

  return v3();
}

{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  swift_willThrow();
  outlined consume of Data._Representation(v5, v3);

  v6 = v0[28];
  v7 = v0[1];

  return v7();
}

uint64_t @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return swift_continuation_throwingResume();
  }
}

uint64_t LACDTOMutablePendingPolicyEvaluation.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier + 8);

  return v1;
}

uint64_t LACDTOMutablePendingPolicyEvaluation.isInvalidated.getter()
{
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_isInvalidated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LACDTOMutablePendingPolicyEvaluation.isInvalidated.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_isInvalidated;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path setter for LACDTOMutablePendingPolicyEvaluation.callbackURL : LACDTOMutablePendingPolicyEvaluation(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of (String, Any)(a1, &v9 - v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xC0))(v7);
}

uint64_t LACDTOMutablePendingPolicyEvaluation.callbackURL.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of (String, Any)(v4 + v8, a4, a2, a3);
}

uint64_t LACDTOMutablePendingPolicyEvaluation.callbackURL.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of URL?(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t key path setter for LACDTOMutablePendingPolicyEvaluation.notificationScheduledAt : LACDTOMutablePendingPolicyEvaluation(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of (String, Any)(a1, &v9 - v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xD8))(v7);
}

Class @objc LACDTOMutablePendingPolicyEvaluation.notificationScheduledAt.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = *a3;
  swift_beginAccess();
  outlined init with copy of (String, Any)(a1 + v9, v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v8, v10);
    v13 = isa;
  }

  return v13;
}

void @objc LACDTOMutablePendingPolicyEvaluation.notificationScheduledAt.setter(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = *a4;
  swift_beginAccess();
  v14 = a1;
  outlined assign with take of URL?(v10, a1 + v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();
}

uint64_t key path setter for LACDTOMutablePendingPolicyEvaluation.coolOffStarted : LACDTOMutablePendingPolicyEvaluation(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of (String, Any)(a1, &v9 - v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xF0))(v7);
}

id @objc LACDTOMutablePendingPolicyEvaluation.callbackReason.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;

    v6 = MEMORY[0x1B27229A0](v5, v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t LACDTOMutablePendingPolicyEvaluation.callbackReason.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t @objc LACDTOMutablePendingPolicyEvaluation.callbackReason.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t LACDTOMutablePendingPolicyEvaluation.callbackReason.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t LACDTOMutablePendingPolicyEvaluation.hasNotifiedUserAboutCompletion.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v17 - v12;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))(v11);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v14 = 0;
  }

  else
  {
    (*(v6 + 32))(v13, v4, v5);
    static Date.now.getter();
    v14 = static Date.< infix(_:_:)();
    v15 = *(v6 + 8);
    v15(v10, v5);
    v15(v13, v5);
  }

  return v14 & 1;
}

id LACDTOMutablePendingPolicyEvaluation.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_isInvalidated] = 0;
  v6 = &v5[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackReason];
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackURL;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(&v5[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_notificationScheduledAt;
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 56);
  v11(&v5[v9], 1, 1, v10);
  v11(&v5[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_coolOffStarted], 1, 1, v10);
  v12 = &v5[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_ratchetUUID];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v5[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier];
  *v13 = a1;
  v13[1] = a2;
  v15.receiver = v5;
  v15.super_class = v2;
  return objc_msgSendSuper2(&v15, sel_init);
}

id LACDTOMutablePendingPolicyEvaluation.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_isInvalidated] = 0;
  v5 = &v2[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackReason];
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackURL;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_notificationScheduledAt;
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 56);
  v10(&v2[v8], 1, 1, v9);
  v10(&v2[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_coolOffStarted], 1, 1, v9);
  v11 = &v2[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_ratchetUUID];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v2[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier];
  *v12 = a1;
  v12[1] = a2;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for LACDTOMutablePendingPolicyEvaluation();
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t type metadata accessor for LACDTOMutablePendingPolicyEvaluation()
{
  result = type metadata singleton initialization cache for LACDTOMutablePendingPolicyEvaluation;
  if (!type metadata singleton initialization cache for LACDTOMutablePendingPolicyEvaluation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LACDTOMutablePendingPolicyEvaluation.isNotificationScheduled(for:)(uint64_t a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
  v3 = *(*(v46 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v46);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
  v9 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v37 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v37 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v37 - v25;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD0))(v24);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v27 = 0;
    return v27 & 1;
  }

  v43 = a1;
  v42 = *(v16 + 32);
  v42(v26, v14, v15);
  Date.addingTimeInterval(_:)();
  Date.addingTimeInterval(_:)();
  v41 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v38 = v26;
    v39 = v23;
    v29 = *(v16 + 16);
    v29(v8, v23, v15);
    v30 = v46;
    v31 = &v8[*(v46 + 48)];
    v40 = v20;
    v29(v31, v20, v15);
    outlined init with copy of (String, Any)(v8, v6, &_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
    v32 = *(v30 + 48);
    v33 = v45;
    v34 = v42;
    v42(v45, v6, v15);
    v35 = *(v16 + 8);
    v35(&v6[v32], v15);
    outlined init with take of (lower: Date, upper: Date)(v8, v6);
    v34(v33 + *(v44 + 36), &v6[*(v30 + 48)], v15);
    v35(v6, v15);
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      v27 = dispatch thunk of static Comparable.<= infix(_:_:)();
    }

    else
    {
      v27 = 0;
    }

    v36 = v38;
    outlined destroy of AsyncStream<()>.Continuation?(v33, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
    v35(v40, v15);
    v35(v39, v15);
    v35(v36, v15);
    return v27 & 1;
  }

  __break(1u);
  return result;
}

uint64_t outlined init with take of (lower: Date, upper: Date)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id LACDTOMutablePendingPolicyEvaluation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27230B0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27230B0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x5366664F6C6F6F63;
  if (v1 != 5)
  {
    v3 = 0x5574656863746172;
  }

  v4 = 0x6B6361626C6C6163;
  if (v1 != 3)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x696C61766E497369;
  if (v1 != 1)
  {
    v5 = 0x6B6361626C6C6163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized LACDTOMutablePendingPolicyEvaluation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id LACDTOMutablePendingPolicyEvaluation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACDTOMutablePendingPolicyEvaluation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LACDTOMutablePendingPolicyEvaluation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationC10CodingKeys33_4BC7126A1542EEEDCA6425CD3A877DA1LLOGMd, &_ss22KeyedEncodingContainerVy23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationC10CodingKeys33_4BC7126A1542EEEDCA6425CD3A877DA1LLOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = *(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier);
  v21 = *(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier + 8);
  v51 = 0;
  v44 = v18;
  v22 = v43;
  v23 = KeyedEncodingContainer.encode(_:forKey:)();
  if (v22)
  {
    return (*(v15 + 8))(v44, v14);
  }

  v43 = v9;
  v25 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(v23);
  v50 = 1;
  v26 = KeyedEncodingContainer.encode(_:forKey:)();
  v27 = *((*v25 & *v2) + 0xA0);
  v40 = v2;
  v27(v26);
  v49 = 2;
  v41 = v14;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

  v29 = v40;
  (*((*v25 & *v40) + 0xB8))(v28);
  v48 = 3;
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v30 = outlined destroy of AsyncStream<()>.Continuation?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v31 = v15;
  v32 = v43;
  (*((*v25 & *v29) + 0xD0))(v30);
  v47 = 4;
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  v33 = v44;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v34 = outlined destroy of AsyncStream<()>.Continuation?(v32, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v35 = v42;
  (*((*v25 & *v40) + 0xE8))(v34);
  v46 = 5;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v36 = outlined destroy of AsyncStream<()>.Continuation?(v35, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*((*v25 & *v40) + 0x100))(v36);
  v37 = v33;
  v45 = 6;
  v38 = v41;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  (*(v31 + 8))(v37, v38);
}

unint64_t lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys;
  if (!lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys;
  if (!lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys;
  if (!lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys;
  if (!lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys);
  }

  return result;
}