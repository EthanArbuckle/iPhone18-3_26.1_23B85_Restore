@interface HKCoreTelephonyUtilities
- (BOOL)isEmergencyServicePhoneNumber:(id)number;
- (HKCoreTelephonyUtilities)init;
- (__CTServerConnection)ctServerConnection;
- (void)ctServerConnection;
- (void)dealloc;
@end

@implementation HKCoreTelephonyUtilities

- (HKCoreTelephonyUtilities)init
{
  v6.receiver = self;
  v6.super_class = HKCoreTelephonyUtilities;
  v2 = [(HKCoreTelephonyUtilities *)&v6 init];
  if (v2)
  {
    v3 = HKCreateSerialDispatchQueue();
    ctServerQueue = v2->_ctServerQueue;
    v2->_ctServerQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    CFRelease(ctServerConnection);
  }

  v4.receiver = self;
  v4.super_class = HKCoreTelephonyUtilities;
  [(HKCoreTelephonyUtilities *)&v4 dealloc];
}

- (BOOL)isEmergencyServicePhoneNumber:(id)number
{
  numberCopy = number;
  v12 = 0;
  ctServerConnection = [(HKCoreTelephonyUtilities *)self ctServerConnection];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v6 = get_CTServerConnectionIsEmergencyNumberSymbolLoc_ptr;
  v21 = get_CTServerConnectionIsEmergencyNumberSymbolLoc_ptr;
  if (!get_CTServerConnectionIsEmergencyNumberSymbolLoc_ptr)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __get_CTServerConnectionIsEmergencyNumberSymbolLoc_block_invoke;
    v16 = &unk_1E81B5C18;
    v17 = &v18;
    v7 = CoreTelephonyLibrary();
    v19[3] = dlsym(v7, "_CTServerConnectionIsEmergencyNumber");
    get_CTServerConnectionIsEmergencyNumberSymbolLoc_ptr = *(v17[1] + 24);
    v6 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v6)
  {
    [HKCoreTelephonyUtilities isEmergencyServicePhoneNumber:];
  }

  v8 = v6(ctServerConnection, numberCopy, &v12);
  if (v8)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x1E696B940];
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
    {
      [(HKCoreTelephonyUtilities *)v8 isEmergencyServicePhoneNumber:v9];
    }
  }

  v10 = v12 != 0;

  return v10;
}

- (__CTServerConnection)ctServerConnection
{
  ctServerConnection = self->_ctServerConnection;
  if (!ctServerConnection)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v4 = get_CTServerConnectionAddIdentifierExceptionSymbolLoc_ptr;
    v14 = get_CTServerConnectionAddIdentifierExceptionSymbolLoc_ptr;
    if (!get_CTServerConnectionAddIdentifierExceptionSymbolLoc_ptr)
    {
      v5 = CoreTelephonyLibrary();
      v12[3] = dlsym(v5, "_CTServerConnectionAddIdentifierException");
      get_CTServerConnectionAddIdentifierExceptionSymbolLoc_ptr = v12[3];
      v4 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v4)
    {
      [HKCoreTelephonyUtilities ctServerConnection];
    }

    v4(@"com.apple.HealthUI.medicalID.ctserver");
    v6 = self->_ctServerQueue;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v7 = get_CTServerConnectionCreateOnTargetQueueSymbolLoc_ptr;
    v14 = get_CTServerConnectionCreateOnTargetQueueSymbolLoc_ptr;
    if (!get_CTServerConnectionCreateOnTargetQueueSymbolLoc_ptr)
    {
      v8 = CoreTelephonyLibrary();
      v12[3] = dlsym(v8, "_CTServerConnectionCreateOnTargetQueue");
      get_CTServerConnectionCreateOnTargetQueueSymbolLoc_ptr = v12[3];
      v7 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v7)
    {
      [HKCoreTelephonyUtilities ctServerConnection];
    }

    ctServerConnection = v7(*MEMORY[0x1E695E480], @"com.apple.HealthUI.medicalID.ctserver", v6, &__block_literal_global_36);

    self->_ctServerConnection = ctServerConnection;
    if (!ctServerConnection)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x1E696B940];
      if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
      {
        [(HKCoreTelephonyUtilities *)v9 ctServerConnection];
      }

      return self->_ctServerConnection;
    }
  }

  return ctServerConnection;
}

void __46__HKCoreTelephonyUtilities_ctServerConnection__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B940];
  if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
  {
    __46__HKCoreTelephonyUtilities_ctServerConnection__block_invoke_cold_1(a2, a3, v5);
  }
}

- (void)isEmergencyServicePhoneNumber:(os_log_t)log .cold.1(int a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = "[HKCoreTelephonyUtilities isEmergencyServicePhoneNumber:]";
  v5 = 1024;
  v6 = a1;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_1C3942000, log, OS_LOG_TYPE_ERROR, "%s - error from _CTServerConnectionIsEmergencyNumber; domain:%d, error:%d", &v3, 0x18u);
}

- (void)isEmergencyServicePhoneNumber:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CTError HKCTServerConnectionIsEmergencyNumber(CTServerConnectionRef, CFStringRef, Boolean *)"}];
  [v0 handleFailureInFunction:v1 file:@"HKCoreTelephonyUtilities.m" lineNumber:18 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)ctServerConnection
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void HKCTServerConnectionAddIdentifierException(CFStringRef)"];
  [currentHandler handleFailureInFunction:v1 file:@"HKCoreTelephonyUtilities.m" lineNumber:19 description:{@"%s", dlerror()}];

  __break(1u);
}

void __46__HKCoreTelephonyUtilities_ctServerConnection__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = "[HKCoreTelephonyUtilities ctServerConnection]_block_invoke";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1C3942000, log, OS_LOG_TYPE_ERROR, "%s notification:%@ info:%@", &v3, 0x20u);
}

@end