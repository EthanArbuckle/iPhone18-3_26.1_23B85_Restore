id getINInteractionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getINInteractionClass_softClass_0;
  v7 = getINInteractionClass_softClass_0;
  if (!getINInteractionClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getINInteractionClass_block_invoke_0;
    v3[3] = &unk_1E769ADA8;
    v3[4] = &v4;
    __getINInteractionClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2861C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMPublisherOptionsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBMPublisherOptionsClass_softClass;
  v7 = getBMPublisherOptionsClass_softClass;
  if (!getBMPublisherOptionsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getBMPublisherOptionsClass_block_invoke;
    v3[3] = &unk_1E769ADA8;
    v3[4] = &v4;
    __getBMPublisherOptionsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2861D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getINPlayMediaIntentClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getINPlayMediaIntentClass_softClass;
  v7 = getINPlayMediaIntentClass_softClass;
  if (!getINPlayMediaIntentClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getINPlayMediaIntentClass_block_invoke;
    v3[3] = &unk_1E769ADA8;
    v3[4] = &v4;
    __getINPlayMediaIntentClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2861E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVSystemController_SubscribeToNotificationsAttribute()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAVSystemController_SubscribeToNotificationsAttributeSymbolLoc_ptr;
  v7 = getAVSystemController_SubscribeToNotificationsAttributeSymbolLoc_ptr;
  if (!getAVSystemController_SubscribeToNotificationsAttributeSymbolLoc_ptr)
  {
    v1 = MediaExperienceLibrary_1();
    v5[3] = dlsym(v1, "AVSystemController_SubscribeToNotificationsAttribute");
    getAVSystemController_SubscribeToNotificationsAttributeSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getAVSystemController_SubscribeToNotificationsAttribute_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A2861F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVSystemController_ServerConnectionDiedNotification()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAVSystemController_ServerConnectionDiedNotificationSymbolLoc_ptr;
  v7 = getAVSystemController_ServerConnectionDiedNotificationSymbolLoc_ptr;
  if (!getAVSystemController_ServerConnectionDiedNotificationSymbolLoc_ptr)
  {
    v1 = MediaExperienceLibrary_1();
    v5[3] = dlsym(v1, "AVSystemController_ServerConnectionDiedNotification");
    getAVSystemController_ServerConnectionDiedNotificationSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getAVSystemController_ServerConnectionDiedNotification_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A2862018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVSystemController_CanBeNowPlayingAppAttribute()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAVSystemController_CanBeNowPlayingAppAttributeSymbolLoc_ptr;
  v7 = getAVSystemController_CanBeNowPlayingAppAttributeSymbolLoc_ptr;
  if (!getAVSystemController_CanBeNowPlayingAppAttributeSymbolLoc_ptr)
  {
    v1 = MediaExperienceLibrary();
    v5[3] = dlsym(v1, "AVSystemController_CanBeNowPlayingAppAttribute");
    getAVSystemController_CanBeNowPlayingAppAttributeSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getAVSystemController_CanBeNowPlayingAppAttribute_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A286211C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVSystemControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVSystemControllerClass_softClass;
  v7 = getAVSystemControllerClass_softClass;
  if (!getAVSystemControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVSystemControllerClass_block_invoke;
    v3[3] = &unk_1E769ADA8;
    v3[4] = &v4;
    __getAVSystemControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A28621FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVSystemControllerClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVSystemControllerClass_softClass_0;
  v7 = getAVSystemControllerClass_softClass_0;
  if (!getAVSystemControllerClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVSystemControllerClass_block_invoke_0;
    v3[3] = &unk_1E769ADA8;
    v3[4] = &v4;
    __getAVSystemControllerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A28622DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _MRLogForCategory(unint64_t a1)
{
  if (a1 >= 0xF)
  {
    _MRLogForCategory_cold_2();
  }

  if (_MRLogForCategory_onceToken != -1)
  {
    _MRLogForCategory_cold_1();
  }

  v2 = _MRLogForCategory___logs[a1];

  return v2;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1)
{

  return [v1 addObject:a1];
}

void OUTLINED_FUNCTION_1_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_1_7(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_9(int a1@<W8>)
{
  *(*(v2[6] + 8) + 24) = v1;
  *(*(v2[7] + 8) + 24) = *(*(v2[6] + 8) + 24) != a1;
  v3 = v2[4];
}

void OUTLINED_FUNCTION_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_12(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_15(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_DEFAULT, a4, &buf, 8u);
}

void *OUTLINED_FUNCTION_1_17@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v4 = result[5];
  v3 = result[6];
  v5 = result[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_20()
{

  return objc_opt_class();
}

void OUTLINED_FUNCTION_1_21(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

uint64_t OUTLINED_FUNCTION_8(void *a1, const char *a2)
{
  v4 = *(v2 + 56);

  return [a1 timeIntervalSinceDate:v4];
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t result)
{
  v2 = *(*(v1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = result;
  return result;
}

void OUTLINED_FUNCTION_0_18(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_19(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_0_27(uint64_t result)
{
  *(result + 8) = *(v1 + 8);
  *(result + 9) = *(v1 + 9);
  *(result + 12) = *(v1 + 12);
  return result;
}

void sub_1A2863DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

MRMediaRemoteService *MRMediaRemoteServiceCreate()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, 2u, 0);
  v2 = dispatch_queue_create("com.apple.MediaRemote.connectionQueue", v1);

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, 2u, 0);
  v5 = dispatch_queue_create("com.apple.MediaRemote.clientCallbackPriorityQueue", v4);

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.MediaRemote.clientCallbackQueue", v6);

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.MediaRemote.browsableContentQueue", v8);

  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("com.apple.MediaRemote.voiceInputQueue", v10);

  mach_service = xpc_connection_create_mach_service("com.apple.mediaremoted.xpc", v2, 0);
  v13 = objc_alloc_init(MRMediaRemoteService);
  v14 = [MRXPCConnection alloc];
  v15 = [(MRXPCConnection *)v14 initWithConnection:mach_service queue:0 defaultReplyQueue:MEMORY[0x1E69E96A0]];
  [(MRMediaRemoteService *)v13 setMrXPCConnection:v15];

  [(MRMediaRemoteService *)v13 setConnection:mach_service];
  [(MRMediaRemoteService *)v13 setConnectionQueue:v2];
  [(MRMediaRemoteService *)v13 setClientCallbackQueue:v7];
  [(MRMediaRemoteService *)v13 setClientCallbackPriorityQueue:v5];
  [(MRMediaRemoteService *)v13 setBrowsableContentQueue:v9];
  [(MRMediaRemoteService *)v13 setVoiceInputQueue:v11];
  xpc_connection_set_context(mach_service, v13);

  return v13;
}

void sub_1A28640AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void MRMediaRemoteServiceSetInvalidationHandler(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  objc_initWeak(&location, v4);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MRMediaRemoteServiceSetInvalidationHandler_block_invoke;
  v7[3] = &unk_1E769C540;
  objc_copyWeak(&v9, &location);
  v5 = v3;
  v8 = v5;
  v6 = [v4 mrXPCConnection];
  [v6 setInvalidationHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void sub_1A2865090(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A28651A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MRGetSharedService()
{
  v0 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v1 = [v0 service];

  return v1;
}

void OUTLINED_FUNCTION_3_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_3_12()
{
  v2 = *(v0 + 3776);

  return objc_opt_class();
}

void sub_1A28655E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

id MRCreateXPCMessage(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "MRXPC_MESSAGE_ID_KEY", a1);

  return v2;
}

void MRAddPlayerPathToXPCMessage(void *a1, void *a2)
{
  v3 = a2;
  if (a1 && v3)
  {
    v6 = v3;
    v4 = a1;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRAddPlayerPathToXPCMessage_cold_1();
    }

    v5 = [v6 data];
    xpc_dictionary_set_data(v4, "MRXPC_NOWPLAYING_PLAYER_PATH_DATA_KEY", [v5 bytes], objc_msgSend(v5, "length"));

    v3 = v6;
  }
}

void MRMediaRemoteServiceSetResumeHandler(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  out_token = 0;
  objc_initWeak(&location, v4);
  v5 = [v4 connectionQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MRMediaRemoteServiceSetResumeHandler_block_invoke;
  v8[3] = &unk_1E769C568;
  objc_copyWeak(v11, &location);
  v11[1] = v4;
  v6 = v4;
  v9 = v6;
  v7 = v3;
  v10 = v7;
  notify_register_dispatch("com.apple.MRMediaRemote.didLaunch", &out_token, v5, v8);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void sub_1A2865860(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void MRMediaRemoteServiceStart(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  objc_initWeak(&location, v4);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MRMediaRemoteServiceStart_block_invoke;
  v7[3] = &unk_1E769C518;
  objc_copyWeak(v8, &location);
  v8[1] = v4;
  v5 = [v4 mrXPCConnection];
  [v5 setMessageHandler:v7];

  v6 = [v4 connection];
  xpc_connection_resume(v6);

  [v4 setIsRunning:1];
  v3[2](v3);
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void sub_1A286598C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void MRMediaRemoteServiceResolvePlayerPath(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  kdebug_trace();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __MRMediaRemoteServiceResolvePlayerPath_block_invoke;
  v10[3] = &unk_1E769C590;
  v11 = v7;
  v9 = v7;
  [a1 resolvePlayerPath:a2 queue:v8 completion:v10];
}

id MRAVEndpointGetLocalEndpoint(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:a1];
  objc_autoreleasePoolPop(v2);
  return v3;
}

CFStringRef MRAVOutputContextTypeCopyDescription(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1E769A1C8[a1];
  }

  return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
}

uint64_t MRProcessIsMediaRemoteDaemon()
{
  if (MRProcessIsMediaRemoteDaemon_onceToken != -1)
  {
    MRProcessIsMediaRemoteDaemon_cold_1();
  }

  return MRProcessIsMediaRemoteDaemon_isDaemon;
}

void __MRProcessIsMediaRemoteDaemon_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  MRProcessIsMediaRemoteDaemon_isDaemon = [v1 isEqualToString:@"mediaremoted"];
}

CFStringRef MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID()
{
  v0 = +[MRUserSettings currentSettings];
  if ([v0 sonicPodcastsEnabled])
  {
    v1 = @"com.apple.sonic.podcasts";
  }

  else
  {
    v1 = @"com.apple.podcasts";
  }

  v2 = *MEMORY[0x1E695E480];

  return CFStringCreateCopy(v2, v1);
}

uint64_t MRMediaRemoteApplicationIsSystemBooksApplication(uint64_t a1)
{
  if (MRMediaRemoteApplicationIsSystemBooksApplication___once != -1)
  {
    MRMediaRemoteApplicationIsSystemBooksApplication_cold_1();
  }

  v2 = MRMediaRemoteApplicationIsSystemBooksApplication___allKnownSystemBooksApplications;

  return [v2 containsObject:a1];
}

void __MRMediaRemoteApplicationIsSystemBooksApplication_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"com.apple.NanoBooks", @"com.apple.TVBooks", @"com.apple.iBooksX", @"com.apple.iBooks", @"(System Books Application)", 0}];
  v1 = MRMediaRemoteApplicationIsSystemBooksApplication___allKnownSystemBooksApplications;
  MRMediaRemoteApplicationIsSystemBooksApplication___allKnownSystemBooksApplications = v0;
}

uint64_t MRMediaRemoteApplicationIsSystemMediaApplication(uint64_t a1)
{
  if (MRMediaRemoteApplicationIsSystemMediaApplication___once != -1)
  {
    MRMediaRemoteApplicationIsSystemMediaApplication_cold_1();
  }

  v2 = MRMediaRemoteApplicationIsSystemMediaApplication___allKnownSystemMediaApplications;

  return [v2 containsObject:a1];
}

void __MRMediaRemoteApplicationIsSystemMediaApplication_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"com.apple.NanoMusic", @"com.apple.TVMusic", @"com.apple.Music", @"com.apple.iTunes", @"com.apple.sonic.music", @"(System Media Application)", @"(System Classical Room Application)", 0}];
  v1 = MRMediaRemoteApplicationIsSystemMediaApplication___allKnownSystemMediaApplications;
  MRMediaRemoteApplicationIsSystemMediaApplication___allKnownSystemMediaApplications = v0;
}

uint64_t MRMediaRemoteApplicationIsSystemPodcastApplication(uint64_t a1)
{
  if (MRMediaRemoteApplicationIsSystemPodcastApplication___once != -1)
  {
    MRMediaRemoteApplicationIsSystemPodcastApplication_cold_1();
  }

  v2 = MRMediaRemoteApplicationIsSystemPodcastApplication___allKnownSystemPodcastApplications;

  return [v2 containsObject:a1];
}

void __MRMediaRemoteApplicationIsSystemPodcastApplication_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"com.apple.podcasts", @"com.apple.iTunes", @"com.apple.sonic.podcasts", @"(System Podcast Application)", 0}];
  v1 = MRMediaRemoteApplicationIsSystemPodcastApplication___allKnownSystemPodcastApplications;
  MRMediaRemoteApplicationIsSystemPodcastApplication___allKnownSystemPodcastApplications = v0;
}

id MRMediaRemoteAddCommandHandlerForPlayer(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v5 playerClientForPlayerPath:v4];

  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];

  v9 = [v6 clientCallbacks];
  [v9 addCommandHandlerBlock:v3 forKey:v8];

  return v8;
}

Class __getAVSystemControllerClass_block_invoke(uint64_t a1)
{
  MediaExperienceLibrary();
  result = objc_getClass("AVSystemController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAVSystemControllerClass_block_invoke_cold_1();
  }

  getAVSystemControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAVSystemControllerClass_block_invoke_0(uint64_t a1)
{
  MediaExperienceLibrary_1();
  result = objc_getClass("AVSystemController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAVSystemControllerClass_block_invoke_cold_1_0();
  }

  getAVSystemControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MediaExperienceLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaExperienceLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E769ADC8;
    v5 = 0;
    MediaExperienceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaExperienceLibraryCore_frameworkLibrary;
  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    MediaExperienceLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t MediaExperienceLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaExperienceLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaExperienceLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E769EE40;
    v5 = 0;
    MediaExperienceLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = MediaExperienceLibraryCore_frameworkLibrary_0;
  if (!MediaExperienceLibraryCore_frameworkLibrary_0)
  {
    MediaExperienceLibrary_cold_1_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t MediaExperienceLibrary_1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaExperienceLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaExperienceLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E76A3778;
    v5 = 0;
    MediaExperienceLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = MediaExperienceLibraryCore_frameworkLibrary_1;
  if (!MediaExperienceLibraryCore_frameworkLibrary_1)
  {
    MediaExperienceLibrary_cold_1_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void MRMediaRemoteServiceSetNowPlayingPlayer(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x200000000000024uLL);
  MRAddPlayerPathToXPCMessage(v10, a2);
  v11 = [v9 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceSetNowPlayingPlayer_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v14 = v7;
  v12 = v7;
  xpc_connection_send_message_with_reply(v11, v10, v8, handler);
}

uint64_t MRBundlePermittedForGroupSessions(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.Music"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.proximitycontrold") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.MediaRemoteUI"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.springboard"];
  }

  return v2;
}

MRPlayerPath *MRCreatePlayerPathFromXPCMessage(void *a1)
{
  v1 = MRCreateDataFromXPCMessage(a1, "MRXPC_NOWPLAYING_PLAYER_PATH_DATA_KEY");
  if (v1 && (v2 = [[MRPlayerPath alloc] initWithData:v1]) != 0)
  {
    v3 = v2;
    v4 = [(MRPlayerPath *)v2 client];
    v5 = [v4 bundleIdentifier];
    v6 = [v4 processIdentifier];
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6 <= 0;
    }

    if (v7)
    {
      [(MRPlayerPath *)v3 setClient:0];
    }

    v8 = [(MRPlayerPath *)v3 player];
    v9 = [v8 identifier];

    if (!v9)
    {
      [(MRPlayerPath *)v3 setPlayer:0];
    }
  }

  else
  {
    v3 = objc_alloc_init(MRPlayerPath);
  }

  return v3;
}

const UInt8 *MRCreateDataFromXPCMessage(void *a1, const char *a2)
{
  length = 0;
  result = xpc_dictionary_get_data(a1, a2, &length);
  if (result)
  {
    return CFDataCreate(*MEMORY[0x1E695E480], result, length);
  }

  return result;
}

void MRMediaRemoteSetWantsExternalScreenTypeChangeNotifications(int a1)
{
  v2 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v3 = MRMediaRemoteSetWantsExternalScreenTypeChangeNotifications___externalScreenTypeChangeNotificationObservers;
  if (a1)
  {
    ++MRMediaRemoteSetWantsExternalScreenTypeChangeNotifications___externalScreenTypeChangeNotificationObservers;
    if (v3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = MRMediaRemoteSetWantsExternalScreenTypeChangeNotifications___externalScreenTypeChangeNotificationObservers == 1;
  if (MRMediaRemoteSetWantsExternalScreenTypeChangeNotifications___externalScreenTypeChangeNotificationObservers >= 1)
  {
    --MRMediaRemoteSetWantsExternalScreenTypeChangeNotifications___externalScreenTypeChangeNotificationObservers;
    if (v4)
    {
LABEL_7:
      v6 = v2;
      v5 = [v2 notificationClient];
      [v5 setReceivesExternalScreenTypeChangedNotifications:a1 != 0];

      v2 = v6;
    }
  }

LABEL_8:
}

void MRMediaRemoteGetExternalScreenType(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1;
  v4 = MRGetSharedService();
  MRMediaRemoteServiceGetExternalScreenType(v4, v5, v3);
}

void MRMediaRemoteServiceGetExternalScreenType(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  v7 = a1;
  v8 = MRCreateXPCMessage(0x300000000000006uLL);
  v9 = [v7 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetExternalScreenType_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v12 = v5;
  v10 = v5;
  xpc_connection_send_message_with_reply(v9, v8, v6, handler);
}

id MRMediaRemoteServiceCopyDeviceInfo(void *a1, void *a2)
{
  v3 = a2;
  if (MRProcessIsMediaRemoteDaemon())
  {
    MRMediaRemoteServiceCopyDeviceInfo_cold_1();
  }

  v4 = +[MRUserSettings currentSettings];
  v5 = [v4 supportsNativeThirdPartyApps];

  if (!v5)
  {
    goto LABEL_7;
  }

  if (MRMediaRemoteServiceCopyDeviceInfo_entitlementOnceToken != -1)
  {
    MRMediaRemoteServiceCopyDeviceInfo_cold_2();
  }

  v6 = [MRMediaRemoteServiceCopyDeviceInfo_entitlements objectForKeyedSubscript:@"com.apple.mediaremote.device-info"];
  v7 = [v6 BOOLValue];

  if (!v7)
  {
    v12 = 0;
  }

  else
  {
LABEL_7:
    v8 = a1;
    v9 = MRCreateXPCMessage(0x20000000000002CuLL);
    MRAddPlayerPathToXPCMessage(v9, v3);
    v10 = [v8 connection];

    v11 = xpc_connection_send_message_with_reply_sync(v10, v9);
    if (v11 == MEMORY[0x1E69E9E18] || v11 == MEMORY[0x1E69E9E20])
    {
      _MRServiceLogReplyError();
      v12 = 0;
    }

    else
    {
      v12 = MRCreateDeviceInfoFromXPCMessage(v11);
    }
  }

  return v12;
}

uint64_t _MRNowPlayingPlayerPathProtobufReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(_MRNowPlayingPlayerProtobuf);
        objc_storeStrong(a1 + 3, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerProtobufReadFrom(v14, a2))
        {
LABEL_32:

          return 0;
        }

        goto LABEL_28;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_MROriginProtobuf);
        objc_storeStrong(a1 + 2, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_MROriginProtobufReadFrom(v14, a2))
        {
          goto LABEL_32;
        }

LABEL_28:
        PBReaderRecallMark();

        goto LABEL_30;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_30:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(_MRNowPlayingClientProtobuf);
    objc_storeStrong(a1 + 1, v14);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_MRNowPlayingClientProtobufReadFrom(v14, a2))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MRCreateClientErrorFromXPCMessage(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == MEMORY[0x1E69E9E18])
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = @"XPC Interruption";
LABEL_10:
    Error = [v10 initWithMRError:1 description:v11];
    goto LABEL_11;
  }

  if (v1 == MEMORY[0x1E69E9E20])
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = @"XPC Invalidation";
    goto LABEL_10;
  }

  if (!v1)
  {
    goto LABEL_12;
  }

  length = 0;
  data = xpc_dictionary_get_data(v1, "MRXPC_CLIENT_ERROR_DATA_KEY", &length);
  if (!data || (v4 = data, v5 = objc_alloc(MEMORY[0x1E695DEF0]), v6 = [v5 initWithBytes:v4 length:length], v7 = MRCreateClientErrorFromExternalRepresentation(v6), v6, !v7))
  {
    uint64 = xpc_dictionary_get_uint64(v2, "MRXPC_ERROR_CODE_KEY");
    if (uint64)
    {
      Error = MRMediaRemoteCreateError(uint64);
LABEL_11:
      v7 = Error;
      goto LABEL_13;
    }

LABEL_12:
    v7 = 0;
  }

LABEL_13:

  return v7;
}

void sub_1A286CB18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak((v8 + 32));
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v10 - 160));
  objc_destroyWeak((v10 - 120));
  objc_destroyWeak((v10 - 112));
  _Unwind_Resume(a1);
}

void MRMediaRemoteNowPlayingResolvePlayerPathWithID(void *a1, void *a2, char a3, void *a4, void *a5)
{
  v57 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v10 = MEMORY[0x1E69E96A0];
    v12 = MEMORY[0x1E69E96A0];
  }

  v13 = [a1 copy];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = objc_alloc_init(MRPlayerPath);
  }

  v16 = v15;

  v17 = [MEMORY[0x1E695DF00] date];
  if (v9)
  {
    v18 = v9;
  }

  else
  {
    v19 = [MEMORY[0x1E696AFB0] UUID];
    v18 = [v19 UUIDString];
  }

  v20 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"resolvePlayerPath", v18];
  v21 = v20;
  if (v16)
  {
    [v20 appendFormat:@" for %@", v16];
  }

  v37 = v9;
  v22 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v56 = v21;
    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __MRMediaRemoteNowPlayingResolvePlayerPathWithID_block_invoke;
  v48[3] = &unk_1E76A1D30;
  v54 = v11;
  v23 = v16;
  v49 = v23;
  v50 = @"resolvePlayerPath";
  v24 = v18;
  v51 = v24;
  v52 = v17;
  v25 = v10;
  v53 = v25;
  v26 = v17;
  v27 = v11;
  v28 = MEMORY[0x1A58E3570](v48);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __MRMediaRemoteNowPlayingResolvePlayerPathWithID_block_invoke_4;
  v45[3] = &unk_1E76A1DA0;
  v46 = v25;
  v47 = &__block_literal_global_80;
  v29 = v25;
  v30 = MEMORY[0x1A58E3570](v45);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __MRMediaRemoteNowPlayingResolvePlayerPathWithID_block_invoke_6;
  v38[3] = &unk_1E76A1E18;
  v44 = a3;
  v39 = v23;
  v40 = @"resolvePlayerPath";
  v41 = v24;
  v42 = v28;
  v43 = v30;
  v31 = v30[2];
  v32 = v30;
  v33 = v24;
  v34 = v23;
  v35 = v28;
  v31(v32, v34, v38);

  v36 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteNowPlayingResolvePlayerPathWithID_block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = [v6 client];
  v8 = [v7 hasPlaceholder];

  if (v8)
  {
    v9 = [v6 origin];
    v10 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __MRMediaRemoteNowPlayingResolvePlayerPathWithID_block_invoke_5;
    v11[3] = &unk_1E76A1D78;
    v12 = v6;
    v13 = *(a1 + 40);
    v14 = v5;
    [MRDeviceInfoRequest deviceInfoForOrigin:v9 queue:v10 completion:v11];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __MRMediaRemoteNowPlayingResolvePlayerPathWithID_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 copy];
  if ([v5 isResolved])
  {
    v4[2](v4, v5, 0);
  }

  else
  {
    v6 = +[MRMediaRemoteServiceClient sharedServiceClient];
    v7 = [v6 activePlayerPath];

    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = [v5 origin];
    if (v8)
    {
      v9 = v8;
      v10 = [v5 origin];
      v11 = [v7 origin];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_11;
      }
    }

    v13 = [v5 client];
    if (v13)
    {
      v14 = v13;
      v15 = [v5 client];
      v16 = [v7 client];
      v17 = [v15 isEqual:v16];

      if (!v17)
      {
        goto LABEL_11;
      }
    }

    v18 = [v5 player];
    if (!v18)
    {
      goto LABEL_10;
    }

    v19 = v18;
    v20 = [v5 player];
    v21 = [v7 player];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
LABEL_10:
      v4[2](v4, v7, 0);
    }

    else
    {
LABEL_11:
      v23 = MRGetSharedService();
      v24 = +[MRMediaRemoteServiceClient sharedServiceClient];
      v25 = [v24 workerQueue];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __MRMediaRemoteNowPlayingResolvePlayerPathWithID_block_invoke_3;
      v26[3] = &unk_1E769C298;
      v27 = v4;
      MRMediaRemoteServiceResolvePlayerPath(v23, v5, v25, v26);
    }
  }
}

void sub_1A286DA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MRMediaRemoteNowPlayingPlayerPathCreateError(void *a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v9 = 0;
    v10 = 27;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRMediaRemoteNowPlayingPlayerPathCreateError_cold_1();
  }

  v2 = [v1 origin];

  if (!v2)
  {
    v9 = 0;
    v10 = 5;
    goto LABEL_15;
  }

  v3 = [v1 client];
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = v3;
  v5 = [v1 client];
  if (![v5 processIdentifier])
  {

    goto LABEL_14;
  }

  v6 = [v1 client];
  v7 = [v6 bundleIdentifier];

  if (!v7)
  {
LABEL_14:
    v9 = 0;
    v10 = 35;
    goto LABEL_15;
  }

  v8 = [v1 player];

  v9 = v8 != 0;
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 29;
  }

LABEL_15:
  v17 = @"playerPathDescription";
  v11 = [v1 description];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  if (!v11)
  {
  }

  if (v9)
  {
    ErrorWithUserInfo = 0;
  }

  else
  {
    ErrorWithUserInfo = MRMediaRemoteCreateErrorWithUserInfo(v10, v13);
  }

  v15 = *MEMORY[0x1E69E9840];
  return ErrorWithUserInfo;
}

uint64_t MRMediaRemoteCreateErrorWithUserInfo(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);

  return [v4 initWithMRError:a1 userInfo:a2];
}

void __MRMediaRemoteNowPlayingResolvePlayerPathWithID_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 72))
  {
    v7 = *(a1 + 32);
    v8 = _MRLogForCategory(0xAuLL);
    v9 = v8;
    if (!v5 || v6)
    {
      if (v6)
      {
        v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
        if (!v7)
        {
          if (v19)
          {
            __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_cold_1(a1, v6, v9);
          }

          goto LABEL_23;
        }

        if (v19)
        {
          v21 = *(a1 + 40);
          v20 = *(a1 + 48);
          v22 = *(a1 + 32);
          v14 = [MEMORY[0x1E695DF00] date];
          [v14 timeIntervalSinceDate:*(a1 + 56)];
          *buf = 138544386;
          v43 = v21;
          v44 = 2114;
          v45 = v20;
          v46 = 2114;
          v47 = v6;
          v48 = 2114;
          v49 = v22;
          v50 = 2048;
          v51 = v23;
          _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_18:

          goto LABEL_23;
        }

        goto LABEL_23;
      }

      v24 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (!v7)
      {
        if (!v24)
        {
          goto LABEL_23;
        }

        v32 = *(a1 + 40);
        v33 = *(a1 + 48);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138543874;
        v43 = v32;
        v44 = 2114;
        v45 = v33;
        v46 = 2048;
        v47 = v34;
        v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v17 = v9;
        v18 = 32;
        goto LABEL_17;
      }

      if (!v24)
      {
LABEL_23:

        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __MRMediaRemoteNowPlayingResolvePlayerPathWithID_block_invoke_84;
        v38[3] = &unk_1E769AC18;
        v35 = *(a1 + 64);
        v41 = *(a1 + 72);
        v39 = v5;
        v40 = v6;
        v36 = MRCreateDonatedQosBlock(v38);
        dispatch_async(v35, v36);

        goto LABEL_24;
      }

      v26 = *(a1 + 40);
      v25 = *(a1 + 48);
      v27 = *(a1 + 32);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v43 = v26;
      v44 = 2114;
      v45 = v25;
      v46 = 2114;
      v47 = v27;
      v48 = 2048;
      v49 = v28;
      v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    }

    else
    {
      v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v10)
        {
          v12 = *(a1 + 40);
          v11 = *(a1 + 48);
          v13 = *(a1 + 32);
          v14 = [MEMORY[0x1E695DF00] date];
          [v14 timeIntervalSinceDate:*(a1 + 56)];
          *buf = 138544386;
          v43 = v12;
          v44 = 2114;
          v45 = v11;
          v46 = 2112;
          v47 = v5;
          v48 = 2114;
          v49 = v13;
          v50 = 2048;
          v51 = v15;
          v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
          v17 = v9;
          v18 = 52;
LABEL_17:
          _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
          goto LABEL_18;
        }

        goto LABEL_23;
      }

      if (!v10)
      {
        goto LABEL_23;
      }

      v29 = *(a1 + 40);
      v30 = *(a1 + 48);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v43 = v29;
      v44 = 2114;
      v45 = v30;
      v46 = 2112;
      v47 = v5;
      v48 = 2048;
      v49 = v31;
      v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    }

    v17 = v9;
    v18 = 42;
    goto LABEL_17;
  }

LABEL_24:

  v37 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteNowPlayingResolvePlayerPathWithID_block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 origin];
  v8 = [v7 isLocal];

  if ((v8 & 1) == 0)
  {
    goto LABEL_8;
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    v9 = [*(a1 + 32) client];
    v10 = [v9 bundleIdentifier];
    if (v10)
    {

      goto LABEL_6;
    }

    v11 = [v5 client];
    v12 = [v11 bundleIdentifier];

    if (v12)
    {
      goto LABEL_6;
    }

LABEL_8:
    (*(*(a1 + 56) + 16))();
    goto LABEL_14;
  }

LABEL_6:
  v13 = MRMediaRemoteCopyLocalDeviceAirPlayReceiverBundleID();
  v14 = [v5 client];
  v15 = [v14 bundleIdentifier];
  v16 = [v15 isEqualToString:v13];

  if (v16)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v17 = +[MRAVClusterController sharedController];
    if ([v17 needsCommandRedirection])
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __MRMediaRemoteNowPlayingResolvePlayerPathWithID_block_invoke_7;
      v23[3] = &unk_1E76A1DF0;
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v20 = *(a1 + 56);
      *&v21 = *(a1 + 32);
      *(&v21 + 1) = v20;
      *&v22 = v18;
      *(&v22 + 1) = v19;
      v24 = v22;
      v25 = v21;
      v26 = *(a1 + 64);
      [v17 getClusterLeaderEndpoint:v23];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

LABEL_14:
}

CFStringRef MRMediaRemoteErrorCopyDescription(unint64_t a1)
{
  if (a1 > 0xCA)
  {
    v1 = @"Unknown Error";
  }

  else
  {
    v1 = off_1E76A1018[a1];
  }

  return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
}

id MRCreateArrayFromData(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x1E696AE40] propertyListWithData:a1 options:0 format:0 error:0];
    a1 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = v6;
    v8 = *v16;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [MEMORY[0x1E695DFB0] null];

        if (v10 == v11)
        {
          v12 = [MEMORY[0x1E695DFB0] null];
LABEL_11:
          [a1 addObject:v12];
          goto LABEL_12;
        }

        v12 = (v3)[2](v3, v10);
        if (v12)
        {
          goto LABEL_11;
        }

LABEL_12:
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (!v7)
      {
LABEL_14:

        break;
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return a1;
}

void MRRegisterTransaction(void *a1)
{
  v1 = a1;
  if (_MRRegisteredTransactionsInitialize_onceToken != -1)
  {
    MRRegisterTransaction_cold_1();
  }

  v2 = __registeredTransactionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MRRegisterTransaction_block_invoke;
  block[3] = &unk_1E769A228;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

uint64_t __MRRegisterTransaction_block_invoke(uint64_t a1)
{
  if (__transactionShutdownTriggered == 1)
  {
    return [*(a1 + 32) invalidateTransaction];
  }

  else
  {
    return [__registeredTransactions addObject:*(a1 + 32)];
  }
}

void sub_1A286F6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A286F848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1A58E3570](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__34(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1A58E3570](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__37(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__42(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1A58E3570](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__43(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__46(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__51(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A286FFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MRCreateFromData(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = MSVUnarchivedObjectOfClasses();
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id MRComputeBaseRouteUIDWithDefaultSuffixes(void *a1)
{
  v1 = a1;
  v2 = MRCopyPossibleRouteUIDSuffixes();
  v3 = MRComputeBaseRouteUIDWithSuffixes(v1);

  return v3;
}

id MRCopyPossibleRouteUIDSuffixes()
{
  if (MRCopyPossibleRouteUIDSuffixes_onceToken != -1)
  {
    MRCopyPossibleRouteUIDSuffixes_cold_1();
  }

  v1 = MRCopyPossibleRouteUIDSuffixes_suffixes;

  return v1;
}

id MRComputeBaseRouteUIDWithSuffixes(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MRCopyPossibleRouteUIDSuffixes();
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [v1 componentsSeparatedByString:@"-"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v2 containsObject:v9] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 componentsJoinedByString:@"-"];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __Block_byref_object_dispose__18(uint64_t a1)
{
}

{
}

void __Block_byref_object_dispose__22(uint64_t a1)
{
}

{
}

void MRMediaRemotePlaybackSessionSetMigrateBeginCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v4 playerClientForPlayerPath:a1];

  v5 = [v6 clientCallbacks];
  [v5 setPlaybackSessionMigrateBeginCallback:v3];
}

void MRMediaRemotePlaybackSessionSetMigrateEndCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v4 playerClientForPlayerPath:a1];

  v5 = [v6 clientCallbacks];
  [v5 setPlaybackSessionMigrateEndCallback:v3];
}

void *MRMediaRemotePlaybackQueueDataSourceAddCreateChildContentItemCallbackForPlayer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v10 = [v9 playerClientForPlayerPath:a1];

  v11 = [v10 clientCallbacks];
  v12 = [v11 createChildItemCallbacks];
  v13 = MEMORY[0x1E69B1400];
  v14 = MEMORY[0x1A58E3570](v7);

  v15 = [v13 callbackWithQueue:v8 block:v14];

  MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(v12, a2, v15);
  return v15;
}

void *MRMediaRemotePlaybackQueueDataSourceAddContentItemFormattedArtworkCallbackForPlayer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v10 = [v9 playerClientForPlayerPath:a1];

  v11 = [v10 clientCallbacks];
  v12 = [v11 formattedArtworkCallbacks];
  v13 = MEMORY[0x1E69B1400];
  v14 = MEMORY[0x1A58E3570](v7);

  v15 = [v13 callbackWithQueue:v8 block:v14];

  MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(v12, a2, v15);
  return v15;
}

void *MRMediaRemotePlaybackQueueDataSourceAddContentItemLyricsCallbackForPlayer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v10 = [v9 playerClientForPlayerPath:a1];

  v11 = [v10 clientCallbacks];
  v12 = [v11 lyricsCallbacks];
  v13 = MEMORY[0x1E69B1400];
  v14 = MEMORY[0x1A58E3570](v7);

  v15 = [v13 callbackWithQueue:v8 block:v14];

  MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(v12, a2, v15);
  return v15;
}

void *MRMediaRemotePlaybackQueueDataSourceAddContentItemInfoCallbackForPlayer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v10 = [v9 playerClientForPlayerPath:a1];

  v11 = [v10 clientCallbacks];
  v12 = [v11 infoCallbacks];
  v13 = MEMORY[0x1E69B1400];
  v14 = MEMORY[0x1A58E3570](v7);

  v15 = [v13 callbackWithQueue:v8 block:v14];

  MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(v12, a2, v15);
  return v15;
}

void *MRMediaRemotePlaybackQueueDataSourceAddContentItemTranscriptAlignmentsCallbackForPlayer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v10 = [v9 playerClientForPlayerPath:a1];

  v11 = [v10 clientCallbacks];
  v12 = [v11 transcriptAlignmentsCallbacks];
  v13 = MEMORY[0x1E69B1400];
  v14 = MEMORY[0x1A58E3570](v7);

  v15 = [v13 callbackWithQueue:v8 block:v14];

  MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(v12, a2, v15);
  return v15;
}

void MRMediaRemotePlaybackSessionSetMigrateFinalizeCallback(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[MRNowPlayingOriginClientManager sharedManager];
  v7 = [v5 playerClientForPlayerPath:v4];

  v6 = [v7 clientCallbacks];
  [v6 setPlaybackSessionMigrateFinalizeCallback:v3];
}

void MRMediaRemoteSetDefaultSupportedCommandsForClient(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(MRPlayerPath);
  v16 = v12;
  if (a2)
  {
    [(MRPlayerPath *)v12 setOrigin:a2];
    if (a1)
    {
LABEL_3:
      [(MRPlayerPath *)v16 setClient:a1];
      goto LABEL_6;
    }
  }

  else
  {
    v13 = +[MROrigin localOrigin];
    [(MRPlayerPath *)v16 setOrigin:v13];

    if (a1)
    {
      goto LABEL_3;
    }
  }

  v14 = +[MRClient localClient];
  [(MRPlayerPath *)v16 setClient:v14];

LABEL_6:
  v15 = MRGetSharedService();
  MRMediaRemoteServiceSetDefaultSupportedCommands(v15, v11, v16, v10, v9);
}

void MRMediaRemoteServiceSetDefaultSupportedCommands(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = MRCreateXPCMessage(0x200000000000033uLL);
  MRAddSupportedCommandsToXPCMessage(v14, v13);

  MRAddPlayerPathToXPCMessage(v14, v12);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __MRMediaRemoteServiceSetDefaultSupportedCommands_block_invoke;
  v18[3] = &unk_1E769AD30;
  v19 = v9;
  v15 = v9;
  v16 = _MRServiceCreateErrorHandlerBlock(v18);
  v17 = [v10 connection];

  xpc_connection_send_message_with_reply(v17, v14, v11, v16);
}

void MRAddSupportedCommandsToXPCMessage(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [MRCommandInfo dataFromCommandInfos:a2];
  MRAddDataToXPCMessage(v3, v4, "MRXPC_COMMAND_INFO_ARRAY_DATA_KEY");
}

id MRCreateDataFromArray(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v3;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v7;
    v9 = *v19;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [MEMORY[0x1E695DFB0] null];

        if (v11 == v12)
        {
          v13 = [MEMORY[0x1E695DFB0] null];
LABEL_11:
          [v5 addObject:v13];
          goto LABEL_12;
        }

        v13 = (v4)[2](v4, v11);
        if (v13)
        {
          goto LABEL_11;
        }

LABEL_12:
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (!v8)
      {
LABEL_14:

        v14 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:0];

        v3 = v17;
        goto LABEL_16;
      }
    }
  }

  v14 = 0;
LABEL_16:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

void MRMediaRemotePlaybackSessionSetRequestCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v4 playerClientForPlayerPath:a1];

  v5 = [v6 clientCallbacks];
  [v5 setPlaybackSessionCallback:v3];
}

void *MRMediaRemotePlaybackQueueDataSourceAddCreatePlaybackQueueForRequestCallbackForPlayer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v10 = [v9 playerClientForPlayerPath:a1];

  v11 = [v10 clientCallbacks];
  v12 = [v11 createPlaybackQueueForRequestCallbacks];
  v13 = MEMORY[0x1E69B1400];
  v14 = MEMORY[0x1A58E3570](v7);

  v15 = [v13 callbackWithQueue:v8 block:v14];

  MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(v12, a2, v15);
  v16 = [v10 playerPath];
  v17 = [v10 clientCallbacks];
  MRMediaRemoteSetPlaybackQueueCapabilities(v16, [v17 capabilities], 0, 0);

  return v15;
}

id MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (a2 == 2)
  {
    [v5 setLastCallback:v6];
  }

  else if (a2 == 1)
  {
    [v5 setFirstCallback:v6];
  }

  else
  {
    [v5 addCallback:v6];
  }

  return v6;
}

void MRMediaRemoteSetPlaybackQueueCapabilities(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v12 = [v9 playerClientForPlayerPath:a1];

  [v12 setCapabilities:a2];
  v10 = MRGetSharedService();
  v11 = [v12 playerPath];
  MRMediaRemoteServiceSetNowPlayingPlaybackQueueCapabilities(v10, v11, a2, v8, v7);
}

void MRMediaRemoteServiceSetNowPlayingPlaybackQueueCapabilities(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  kdebug_trace();
  v11 = a1;
  v12 = MRCreateXPCMessage(0x20000000000000AuLL);
  MRAddPlayerPathToXPCMessage(v12, a2);
  MRAddPlaybackQueueCapabilitiesToXPCMessage(v12, a3);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __MRMediaRemoteServiceSetNowPlayingPlaybackQueueCapabilities_block_invoke;
  v16[3] = &unk_1E769AD30;
  v17 = v9;
  v13 = v9;
  v14 = _MRServiceCreateErrorHandlerBlock(v16);
  v15 = [v11 connection];

  xpc_connection_send_message_with_reply(v15, v12, v10, v14);
}

void MRAddPlaybackQueueCapabilitiesToXPCMessage(void *a1, uint64_t value)
{
  if (value)
  {
    xpc_dictionary_set_uint64(a1, "MRXPC_NOWPLAYING_PLAYBACK_QUEUE_CAPABILITIES_KEY", value);
  }
}

void *MRMediaRemotePlaybackQueueDataSourceAddCreateContentItemForIdentifierCallbackForPlayer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v10 = [v9 playerClientForPlayerPath:a1];

  v11 = [v10 clientCallbacks];
  v12 = [v11 createItemForIdentifierCallbacks];
  v13 = MEMORY[0x1E69B1400];
  v14 = MEMORY[0x1A58E3570](v7);

  v15 = [v13 callbackWithQueue:v8 block:v14];

  MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(v12, a2, v15);
  v16 = [v10 playerPath];
  v17 = [v10 clientCallbacks];
  MRMediaRemoteSetPlaybackQueueCapabilities(v16, [v17 capabilities], 0, 0);

  return v15;
}

void *MRMediaRemotePlaybackQueueDataSourceAddContentItemMetadataCallbackForPlayer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v10 = [v9 playerClientForPlayerPath:a1];

  v11 = [v10 clientCallbacks];
  v12 = [v11 metadataCallbacks];
  v13 = MEMORY[0x1E69B1400];
  v14 = MEMORY[0x1A58E3570](v7);

  v15 = [v13 callbackWithQueue:v8 block:v14];

  MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(v12, a2, v15);
  return v15;
}

void *MRMediaRemotePlaybackQueueDataSourceAddContentItemArtworkCallbackForPlayer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v10 = [v9 playerClientForPlayerPath:a1];

  v11 = [v10 clientCallbacks];
  v12 = [v11 artworkCallbacks];
  v13 = MEMORY[0x1E69B1400];
  v14 = MEMORY[0x1A58E3570](v7);

  v15 = [v13 callbackWithQueue:v8 block:v14];

  MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(v12, a2, v15);
  return v15;
}

__CFString *MRMediaRemoteGetCommandDescription(uint64_t a1)
{
  v3 = a1;
  v4 = @"Play";
  switch(v3)
  {
    case 0:
      goto LABEL_231;
    case 1:
      v4 = @"Pause";

      break;
    case 2:
      v4 = @"TogglePlayPause";

      break;
    case 3:
      v4 = @"Stop";

      break;
    case 4:
      v4 = @"NextTrack";

      break;
    case 5:
      v4 = @"PreviousTrack";

      break;
    case 6:
      v4 = @"AdvanceShuffleMode";

      break;
    case 7:
      v4 = @"AdvanceRepeatMode";

      break;
    case 8:
      v4 = @"BeginFastForward";

      break;
    case 9:
      v4 = @"EndFastForward";

      break;
    case 10:
      v4 = @"BeginRewind";

      break;
    case 11:
      v4 = @"EndRewind";

      break;
    case 12:
      v4 = @"Rewind15Seconds";

      break;
    case 13:
      v4 = @"FastForward15Seconds";

      break;
    case 14:
      v4 = @"Rewind30Seconds";

      break;
    case 15:
      v4 = @"FastForward30Seconds";

      break;
    case 16:
      v4 = @"ToggleRecord";

      break;
    case 17:
      v4 = @"SkipForward";

      break;
    case 18:
      v4 = @"SkipBackward";

      break;
    case 19:
      v4 = @"ChangePlaybackRateCommand";

      break;
    case 20:
      v4 = @"RateTrack";

      break;
    case 21:
      v4 = @"LikeTrack";

      break;
    case 22:
      v4 = @"DislikeTrack";

      break;
    case 23:
      v4 = @"BookmarkTrack";

      break;
    case 24:
      v4 = @"SeekToPlaybackPosition";

      break;
    case 25:
      v4 = @"SetRepeatMode";

      break;
    case 26:
      v4 = @"SetShuffleMode";

      break;
    case 27:
      v4 = @"EnableLanguageOption";

      break;
    case 28:
      v4 = @"DisableLanguageOption";

      break;
    case 100:
      v4 = @"NextChapter";

      break;
    case 101:
      v4 = @"PreviousChapter";

      break;
    case 102:
      v4 = @"NextAlbum";

      break;
    case 103:
      v4 = @"PreviousAlbum";

      break;
    case 104:
      v4 = @"NextPlaylist";

      break;
    case 105:
      v4 = @"PreviousPlaylist";

      break;
    case 106:
      v4 = @"BanTrack";

      break;
    case 107:
      v4 = @"AddTrackToWishList";

      break;
    case 108:
      v4 = @"RemoveTrackFromWishList";

      break;
    case 109:
      v4 = @"NextInContext";

      break;
    case 110:
      v4 = @"PreviousInContext";

      break;
    case 111:
      v4 = @"Menu";

      break;
    case 112:
      v4 = @"Select";

      break;
    case 113:
      v4 = @"UpArrow";

      break;
    case 114:
      v4 = @"DownArrow";

      break;
    case 115:
      v4 = @"BacklightOff";

      break;
    case 116:
      v4 = @"ResetPlaybackTimeout";

      break;
    case 117:
      v4 = @"BuyTrack";

      break;
    case 118:
      v4 = @"BuyAlbum";

      break;
    case 119:
      v4 = @"PreOrderAlbum";

      break;
    case 120:
      v4 = @"CancelDownload";

      break;
    case 121:
      v4 = @"CreateRadioStation";

      break;
    case 122:
      v4 = @"SetPlaybackQueue";

      break;
    case 123:
      v4 = @"PresentUpNext";

      break;
    case 124:
      v4 = @"SetSleepTimer";

      break;
    case 125:
      v4 = @"InsertIntoPlaybackQueue";

      break;
    case 126:
      v4 = @"PresentSharingOptions";

      break;
    case 127:
      v4 = @"AddNowPlayingItemToLibrary";

      break;
    case 128:
      v4 = @"AddItemToLibrary";

      break;
    case 129:
      v4 = @"RemoveFromPlaybackQueue";

      break;
    case 130:
      v4 = @"ReorderPlaybackQueue";

      break;
    case 131:
      v4 = @"PlayItemInPlaybackQueue";

      break;
    case 132:
      v4 = @"PrepareForSetQueue";

      break;
    case 133:
      v4 = @"SetPlaybackSession";

      break;
    case 134:
      v4 = @"Reshuffle";

      break;
    case 135:
      v4 = @"ChangeQueueEndAction";

      break;
    case 136:
      v4 = @"PreloadPlaybackSession";

      break;
    case 137:
      v4 = @"SetPriorityForPlaybackSession";

      break;
    case 138:
      v4 = @"DiscardPlaybackSession";

      break;
    case 139:
      v4 = @"LeaveSharedPlaybackSession";

      break;
    case 140:
      v4 = @"PostEventNotice";

      break;
    case 142:
      v4 = @"VocalsControl";

      break;
    case 143:
      v4 = @"PrepareVocalsControl";

      break;
    case 144:
      v4 = @"ClearUpNextQueue";

      break;
    case 145:
      v4 = @"PerformDialogAction";

      break;
    case 146:
      v4 = @"DelegateAccount";

      break;
    case 147:
      v4 = @"EnhanceDialogue";

      break;
    case 149:
      v4 = @"ToggleTransitions";

      break;
    default:
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Unrecognized Command: %u>", a1];
LABEL_231:

      break;
  }

  return v4;
}

void MRAddDataToXPCMessage(void *a1, id a2, const char *a3)
{
  if (a2)
  {
    v6 = a2;
    v7 = a2;
    xdict = a1;
    v8 = [v7 bytes];
    v9 = [v7 length];

    xpc_dictionary_set_data(xdict, a3, v8, v9);
  }
}

id _MRServiceCreateErrorHandlerBlock(void *a1)
{
  v1 = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___MRServiceCreateErrorHandlerBlock_block_invoke;
  v5[3] = &unk_1E769C4D0;
  v6 = v1;
  v2 = v1;
  v3 = MEMORY[0x1A58E3570](v5);

  return v3;
}

uint64_t _MROriginProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40[0] & 0x7F) << v5;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          LOBYTE(v40[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v40[0] & 0x7F) << v23;
          if ((v40[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_59;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_59:
        v37 = 24;
LABEL_64:
        *(a1 + v37) = v29;
        goto LABEL_67;
      }

      if (v13 != 4)
      {
        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            LOBYTE(v40[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v40[0] & 0x7F) << v14;
            if ((v40[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_66;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_66:
          *(a1 + 32) = v20;
          goto LABEL_67;
        }

LABEL_54:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_67;
      }

      v30 = objc_alloc_init(_MRDeviceInfoMessageProtobuf);
      objc_storeStrong((a1 + 8), v30);
      v40[0] = 0;
      v40[1] = 0;
      if (!PBReaderPlaceMark() || !_MRDeviceInfoMessageProtobufReadFrom(v30, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_67:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v34 = [a2 position] + 1;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
        {
          v36 = [a2 data];
          [v36 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v33 |= (v40[0] & 0x7F) << v31;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v11 = v32++ >= 9;
        if (v11)
        {
          v29 = 0;
          goto LABEL_63;
        }
      }

      if ([a2 hasError])
      {
        v29 = 0;
      }

      else
      {
        v29 = v33;
      }

LABEL_63:
      v37 = 28;
      goto LABEL_64;
    }

    if (v13 == 2)
    {
      v21 = PBReaderReadString();
      v22 = *(a1 + 16);
      *(a1 + 16) = v21;

      goto LABEL_67;
    }

    goto LABEL_54;
  }

  return [a2 hasError] ^ 1;
}

id MRCreateDonatedQosBlock(void *a1)
{
  v1 = a1;
  v2 = qos_class_self();
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v2, 0, v1);

  return v3;
}

BOOL OUTLINED_FUNCTION_15(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t *OUTLINED_FUNCTION_5_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_2_5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_signpost_emit_with_name_impl(a1, v10, OS_SIGNPOST_INTERVAL_BEGIN, v9, a5, a6, &a9, 0x16u);
}

void OUTLINED_FUNCTION_2_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

uint64_t OUTLINED_FUNCTION_2_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{

  return [v24 countByEnumeratingWithState:&a9 objects:&a24 count:16];
}

void OUTLINED_FUNCTION_2_12(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + a2);
  *(v2 + a2) = a1;
}

uint64_t OUTLINED_FUNCTION_2_13(uint64_t a1)
{

  return [v1 addObject:a1];
}

uint64_t _MRNowPlayingClientProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v47[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47[0] & 0x7F) << v5;
        if ((v47[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v29 = objc_alloc_init(_MRColorProtobuf);
            objc_storeStrong((a1 + 64), v29);
            v47[0] = 0;
            v47[1] = 0;
            if (!PBReaderPlaceMark() || !_MRColorProtobufReadFrom(v29, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_58;
          }

          if (v13 == 7)
          {
            v21 = PBReaderReadString();
            v22 = 16;
            goto LABEL_55;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v29 = PBReaderReadString();
              if (v29)
              {
                [a1 addExtendedBundleIdentifierHierarchy:v29];
              }

LABEL_58:

              goto LABEL_94;
            case 9:
              v37 = 0;
              v38 = 0;
              v39 = 0;
              *(a1 + 76) |= 8u;
              while (1)
              {
                LOBYTE(v47[0]) = 0;
                v40 = [a2 position] + 1;
                if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
                {
                  v42 = [a2 data];
                  [v42 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v39 |= (v47[0] & 0x7F) << v37;
                if ((v47[0] & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v11 = v38++ >= 9;
                if (v11)
                {
                  LOBYTE(v43) = 0;
                  goto LABEL_93;
                }
              }

              v43 = (v39 != 0) & ~[a2 hasError];
LABEL_93:
              *(a1 + 72) = v43;
              goto LABEL_94;
            case 0xA:
              v21 = PBReaderReadString();
              v22 = 32;
LABEL_55:
              v30 = *(a1 + v22);
              *(a1 + v22) = v21;

              goto LABEL_94;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 76) |= 2u;
          while (1)
          {
            LOBYTE(v47[0]) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v47[0] & 0x7F) << v23;
            if ((v47[0] & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_82;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v25;
          }

LABEL_82:
          v44 = 56;
          goto LABEL_91;
        }

        if (v13 == 2)
        {
          v21 = PBReaderReadString();
          v22 = 8;
          goto LABEL_55;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = PBReaderReadString();
            v22 = 48;
            goto LABEL_55;
          case 4:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 76) |= 4u;
            while (1)
            {
              LOBYTE(v47[0]) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v47[0] & 0x7F) << v31;
              if ((v47[0] & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_90;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v33;
            }

LABEL_90:
            v44 = 60;
            goto LABEL_91;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 76) |= 1u;
            while (1)
            {
              LOBYTE(v47[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v47[0] & 0x7F) << v14;
              if ((v47[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_86;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_86:
            v44 = 40;
LABEL_91:
            *(a1 + v44) = v20;
            goto LABEL_94;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_94:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRNowPlayingPlayerProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = 0x1EB099000uLL;
    v6 = 0x1EB099000uLL;
    v7 = 0x1EB099000uLL;
    v8 = 0x1EB099000uLL;
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v53[0]) = 0;
        v12 = [a2 position] + 1;
        if (v12 >= [a2 position] && (v13 = objc_msgSend(a2, "position") + 1, v13 <= objc_msgSend(a2, "length")))
        {
          v14 = [a2 data];
          [v14 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v11 |= (v53[0] & 0x7F) << v9;
        if ((v53[0] & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [a2 hasError] ? 0 : v11;
LABEL_16:
      if (([a2 hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) > 4)
      {
        switch(v17)
        {
          case 5:
            if ((v16 & 7) == 2)
            {
              v53[0] = 0;
              v53[1] = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v28 = [a2 position];
                if (v28 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v29 = 0;
                v30 = 0;
                v31 = 0;
                while (1)
                {
                  v54 = 0;
                  v32 = [a2 position] + 1;
                  if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
                  {
                    v34 = [a2 data];
                    [v34 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v31 |= (v54 & 0x7F) << v29;
                  if ((v54 & 0x80) == 0)
                  {
                    break;
                  }

                  v29 += 7;
                  v15 = v30++ >= 9;
                  if (v15)
                  {
                    goto LABEL_50;
                  }
                }

                [a2 hasError];
LABEL_50:
                PBRepeatedInt64Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v44 = v7;
              v45 = v6;
              v46 = v5;
              v47 = 0;
              v48 = 0;
              v49 = 0;
              while (1)
              {
                LOBYTE(v53[0]) = 0;
                v50 = [a2 position] + 1;
                if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
                {
                  v52 = [a2 data];
                  [v52 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v49 |= (v53[0] & 0x7F) << v47;
                if ((v53[0] & 0x80) == 0)
                {
                  break;
                }

                v47 += 7;
                v15 = v48++ >= 9;
                if (v15)
                {
                  goto LABEL_86;
                }
              }

              [a2 hasError];
LABEL_86:
              PBRepeatedInt64Add();
              v5 = v46;
              v6 = v45;
              v7 = v44;
              v8 = 0x1EB099000;
            }

            goto LABEL_73;
          case 6:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + *(v7 + 1348)) |= 1u;
            while (1)
            {
              LOBYTE(v53[0]) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v53[0] & 0x7F) << v36;
              if ((v53[0] & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v15 = v37++ >= 9;
              if (v15)
              {
                v24 = 0;
                goto LABEL_71;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v38;
            }

LABEL_71:
            v42 = 32;
            goto LABEL_72;
          case 7:
            v25 = PBReaderReadString();
            v26 = 48;
LABEL_54:
            v35 = *(a1 + v26);
            *(a1 + v26) = v25;

            goto LABEL_73;
        }
      }

      else
      {
        switch(v17)
        {
          case 1:
            v25 = PBReaderReadString();
            v26 = *(v5 + 1340);
            goto LABEL_54;
          case 2:
            v25 = PBReaderReadString();
            v26 = *(v6 + 1344);
            goto LABEL_54;
          case 4:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            *(a1 + *(v7 + 1348)) |= 2u;
            while (1)
            {
              LOBYTE(v53[0]) = 0;
              v21 = [a2 position] + 1;
              if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
              {
                v23 = [a2 data];
                [v23 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v20 |= (v53[0] & 0x7F) << v18;
              if ((v53[0] & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v15 = v19++ >= 9;
              if (v15)
              {
                v24 = 0;
                goto LABEL_67;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v20;
            }

LABEL_67:
            v42 = *(v8 + 1352);
LABEL_72:
            *(a1 + v42) = v24;
            goto LABEL_73;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_73:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __MRMediaRemoteServiceGetExternalScreenType_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  if (xdict == MEMORY[0x1E69E9E18] || xdict == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
  }

  else
  {
    xpc_dictionary_get_uint64(xdict, "MRXPC_ROUTE_EXTERNAL_SCREEN_TYPE_KEY");
  }

  (*(*(a1 + 32) + 16))();

  return kdebug_trace();
}

void __MRMediaRemoteServiceStart_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained connectionQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MRMediaRemoteServiceStart_block_invoke_2;
  v8[3] = &unk_1E769C018;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

uint64_t __MRNotificationServiceClientPostNotificationCallback_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationClient];
  [v2 postNotification:*(a1 + 40) userInfo:*(a1 + 48) object:0];

  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void MRNotificationServiceClientPostNotificationCallback(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = a3;
  v10 = MRCreateDecodedUserInfo(a2);
  v11 = v10;
  if (v10)
  {
    v12 = [v10 objectForKey:@"kMRActiveNowPlayingPlayerPathUserInfoKey"];
    if (v12)
    {
      [v9 setActivePlayerPath:v12];
    }
  }

  v13 = [v9 notificationClient];
  v14 = [v13 notificationQueue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __MRNotificationServiceClientPostNotificationCallback_block_invoke;
  v20[3] = &unk_1E769D118;
  v21 = v9;
  v22 = v7;
  v23 = v11;
  v24 = v8;
  v15 = v8;
  v16 = v11;
  v17 = v7;
  v18 = v9;
  v19 = MRCreateDonatedQosBlock(v20);
  dispatch_async(v14, v19);
}

void _MRUnarchiveObjectForKey(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___MRUnarchiveObjectForKey_block_invoke;
  v9[3] = &unk_1E769EAE8;
  v10 = v7;
  v8 = v7;
  _MRDecodeObjectForKey(a1, a3, a4, v9);
}

char *MRCreateStringFromXPCMessage(void *a1, const char *a2)
{
  string = xpc_dictionary_get_string(a1, a2);
  if (string)
  {
    string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
  }

  return string;
}

uint64_t MRCreatePropertyListFromXPCMessage(void *a1, const char *a2)
{
  v2 = MRCreateDataFromXPCMessage(a1, a2);
  if (v2)
  {
    v7 = 0;
    v3 = [MEMORY[0x1E696AE40] propertyListWithData:v2 options:0 format:0 error:&v7];
    v4 = v7;
    if (v4)
    {
      v5 = _MRLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        MRCreatePropertyListFromXPCMessage_cold_1();
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void _MREncodeObjectForKey(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = [v7 objectForKey:a2];
  if (v9)
  {
    v10 = v8[2](v8, v9);
    if (v10)
    {
      [v7 setObject:v10 forKey:a3];
    }

    else
    {
      v11 = _MRLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        _MREncodeObjectForKey_cold_1();
      }
    }

    [v7 removeObjectForKey:a2];
  }
}

void MRAddPlayerPathToUserInfo(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (v4 && v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRAddPlayerPathToUserInfo_cold_1();
    }

    [v4 setObject:v3 forKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];
  }
}

id MRCreateDecodedUserInfo(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 mutableCopy];
    v4 = v3;
    if (v3)
    {
      _MRDecodeObjectForKey(v3, @"kMRNowPlayingPlayerPathUserInfoKey", @"kMRNowPlayingPlayerPathDataUserInfoKey", &__block_literal_global_89_0);
      v5 = [v4 objectForKey:@"kMRNowPlayingPlayerPathUserInfoKey"];
      v6 = v5;
      if (v5)
      {
        v7 = [v5 origin];

        if (v7)
        {
          v8 = [v6 origin];
          [v4 setObject:v8 forKey:@"kMRMediaRemoteOriginUserInfoKey"];
        }

        v9 = [v6 client];
        if (v9)
        {
          [v4 setObject:v9 forKey:@"kMRNowPlayingClientUserInfoKey"];
          v10 = [v9 displayName];
          if (v10)
          {
            [v4 setObject:v10 forKey:@"kMRMediaRemoteNowPlayingApplicationDisplayNameUserInfoKey"];
          }
        }

        v11 = [v6 player];

        if (v11)
        {
          v12 = [v6 player];
          [v4 setObject:v12 forKey:@"kMRNowPlayingPlayerUserInfoKey"];
        }
      }

      _MRDecodeObjectForKey(v4, @"kMRActiveNowPlayingPlayerPathUserInfoKey", @"kMRActiveNowPlayingPlayerPathDataUserInfoKey", &__block_literal_global_91);
      _MRDecodeObjectForKey(v4, @"kMROriginActiveNowPlayingPlayerPathUserInfoKey", @"kMROriginActiveNowPlayingPlayerPathDataUserInfoKey", &__block_literal_global_93);
      _MRDecodeObjectForKey(v4, @"kMRNowPlayingClientUserInfoKey", @"kMRNowPlayingClientDataUserInfoKey", &__block_literal_global_95);
      _MRDecodeObjectForKey(v4, @"kMRNowPlayingPlayerUserInfoKey", @"kMRNowPlayingPlayerDataUserInfoKey", &__block_literal_global_97);
      v13 = [v4 objectForKey:@"_kMRMediaRemotePlaybackErrorDataUserInfoKey"];
      v14 = v13;
      if (v13)
      {
        ErrorFromExternalRepresentation = MRMediaRemoteCreateErrorFromExternalRepresentation(v13);
        if (ErrorFromExternalRepresentation)
        {
          [v4 setObject:ErrorFromExternalRepresentation forKey:@"kMRMediaRemotePlaybackErrorUserInfoKey"];
        }

        else
        {
          v16 = _MRLogForCategory(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            MRCreateDecodedUserInfo_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
          }
        }
      }

      [v4 removeObjectForKey:@"_kMRMediaRemotePlaybackErrorDataUserInfoKey"];

      v24 = [v4 objectForKey:@"kMRApplicationActivityUserInfoDataKey"];
      v25 = v24;
      if (v24)
      {
        v26 = _MRApplicationActivityCreateWithExternalRepresentation(v24);
        if (v26)
        {
          [v4 setObject:v26 forKey:@"kMRApplicationActivityUserInfoKey"];
        }

        else
        {
          v27 = _MRLogForCategory(0);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            MRCreateDecodedUserInfo_cold_2(v27, v28, v29, v30, v31, v32, v33, v34);
          }
        }
      }

      [v4 removeObjectForKey:@"kMRApplicationActivityUserInfoDataKey"];

      _MRDecodeObjectForKey(v4, @"kMRPairedDeviceUserInfoKey", @"kMRPairedDeviceUserInfoDataKey", &__block_literal_global_100_0);
      _MRDecodeObjectForKey(v4, @"kMRPreviousPairedDeviceUserInfoKey", @"kMRPreviousPairedDeviceUserInfoDataKey", &__block_literal_global_103);
      _MRDecodeObjectForKey(v4, @"kMRMediaRemoteOriginUserInfoKey", @"kMRMediaRemoteOriginDataUserInfoKey", &__block_literal_global_106);
      v35 = [v4 objectForKey:@"kMRMediaRemoteUpdatedContentItemsDataUserInfoKey"];
      v36 = v35;
      if (v35)
      {
        v37 = MRContentItemsCreateFromExternalRepresentation(v35);
        if (v37)
        {
          [v4 setObject:v37 forKey:@"kMRMediaRemoteUpdatedContentItemsUserInfoKey"];
        }

        else
        {
          v38 = _MRLogForCategory(0);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            MRCreateDecodedUserInfo_cold_3(v38, v39, v40, v41, v42, v43, v44, v45);
          }
        }
      }

      [v4 removeObjectForKey:@"kMRMediaRemoteUpdatedContentItemsDataUserInfoKey"];

      _MRDecodeObjectForKey(v4, @"kMRPlaybackSessionRequestUserInfoKey", @"kMRPlaybackSessionRequestDataUserInfoKey", &__block_literal_global_110);
      _MRDecodeObjectForKey(v4, @"kMRPlaybackSessionUserInfoKey", @"kMRPlaybackSessionDataUserInfoKey", &__block_literal_global_114_1);
      _MRDecodeObjectForKey(v4, @"kMRPlaybackQueueRequestUserInfoKey", @"kMRPlaybackQueueRequestDataUserInfoKey", &__block_literal_global_117);
      _MRDecodeObjectForKey(v4, @"kMRPlaybackQueueUserInfoKey", @"kMRPlaybackQueueDataUserInfoKey", &__block_literal_global_120);
      _MRDecodeObjectForKey(v4, @"kMRSupportedCommandsUserInfoKey", @"kMRSupportedCommandsDataUserInfoKey", &__block_literal_global_123);
      _MRDecodeObjectForKey(v4, @"MRAVEndpointOutputDeviceUserInfoKey", @"MRAVEndpointOutputDeviceDataUserInfoKey", &__block_literal_global_125);
      v46 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
      _MRUnarchiveObjectForKey(v4, v46, @"MRActiveGroupSessionInfoUserInfoKey", @"_MRGroupSessionInfoDataUserInfoKey");

      v47 = MEMORY[0x1E695DFD8];
      v48 = objc_opt_class();
      v49 = objc_opt_class();
      v50 = [v47 setWithObjects:{v48, v49, objc_opt_class(), 0}];
      _MRUnarchiveObjectForKey(v4, v50, @"MRGroupSessionEligibilityStatusUserInfoKey", @"_MRGroupSessionEligibilityStatusDataUserInfoKey");

      v51 = [v4 objectForKey:@"kMRNowPlayingClientUserInfoKey"];
      if ([v51 processIdentifier] >= 1)
      {
        v52 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v51, "processIdentifier")}];
        [v4 setObject:v52 forKey:@"kMRMediaRemoteNowPlayingApplicationPIDUserInfoKey"];
      }

      v53 = [v4 objectForKey:@"kMRMediaRemotePlaybackStateUserInfoKey"];
      v54 = v53;
      if (v53)
      {
        v55 = [v53 intValue];
        v56 = [MEMORY[0x1E696AD98] numberWithBool:MRMediaRemotePlaybackStateIsAdvancing(v55)];
        [v4 setObject:v56 forKey:@"kMRMediaRemoteNowPlayingApplicationIsPlayingUserInfoKey"];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id MRGetOriginFromUserInfo(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"kMRMediaRemoteOriginUserInfoKey"];
  if (!v2)
  {
    v3 = [v1 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];
    v2 = [v3 origin];
  }

  return v2;
}

void _MRDecodeObjectForKey(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = [v7 objectForKey:a3];
  if (v9)
  {
    v10 = v8[2](v8, v9);
    if (v10)
    {
      [v7 setObject:v10 forKey:a2];
    }

    else
    {
      v11 = _MRLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        _MRDecodeObjectForKey_cold_1();
      }
    }
  }

  [v7 removeObjectForKey:a3];
}

uint64_t MRNowPlayingClientCopyBundleIdentifierExtendedHierarchy(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingClientCopyBundleIdentifierExtendedHierarchy_cold_1();
    }
  }

  v2 = [v1 extendedBundleIdentifierHierarchy];

  return v2;
}

id MRCreateEncodedUserInfo(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 mutableCopy];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v4 = v3;
  _MREncodeObjectForKey(v3, @"kMRMediaRemoteOriginUserInfoKey", @"kMRMediaRemoteOriginDataUserInfoKey", &__block_literal_global_136);
  _MREncodeObjectForKey(v4, @"kMRNowPlayingClientUserInfoKey", @"kMRNowPlayingClientDataUserInfoKey", &__block_literal_global_139);
  _MREncodeObjectForKey(v4, @"kMRNowPlayingPlayerUserInfoKey", @"kMRNowPlayingPlayerDataUserInfoKey", &__block_literal_global_142);
  _MREncodeObjectForKey(v4, @"kMRNowPlayingPlayerPathUserInfoKey", @"kMRNowPlayingPlayerPathDataUserInfoKey", &__block_literal_global_145);
  _MREncodeObjectForKey(v4, @"kMRActiveNowPlayingPlayerPathUserInfoKey", @"kMRActiveNowPlayingPlayerPathDataUserInfoKey", &__block_literal_global_147);
  _MREncodeObjectForKey(v4, @"kMROriginActiveNowPlayingPlayerPathUserInfoKey", @"kMROriginActiveNowPlayingPlayerPathDataUserInfoKey", &__block_literal_global_149);
  v5 = [v4 objectForKey:@"kMRMediaRemoteUpdatedContentItemsUserInfoKey"];
  if (v5)
  {
    ExternalRepresentation = MRContentItemsCreateExternalRepresentation(v5);
    if (ExternalRepresentation)
    {
      [v4 setObject:ExternalRepresentation forKey:@"kMRMediaRemoteUpdatedContentItemsDataUserInfoKey"];
    }

    else
    {
      v7 = _MRLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        _MREncodeObjectForKey_cold_1();
      }
    }

    [v4 removeObjectForKey:@"kMRMediaRemoteUpdatedContentItemsUserInfoKey"];
  }

  v8 = [v4 objectForKey:@"kMRMediaRemotePlaybackErrorUserInfoKey"];
  if (v8)
  {
    ErrorExternalRepresentation = MRMediaRemoteCreateErrorExternalRepresentation(v8);
    if (ErrorExternalRepresentation)
    {
      [v4 setObject:ErrorExternalRepresentation forKey:@"_kMRMediaRemotePlaybackErrorDataUserInfoKey"];
    }

    else
    {
      v10 = _MRLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        _MREncodeObjectForKey_cold_1();
      }
    }

    [v4 removeObjectForKey:@"kMRMediaRemotePlaybackErrorUserInfoKey"];
  }

  v11 = [v4 objectForKey:@"kMRApplicationActivityUserInfoKey"];
  if (v11)
  {
    v12 = _MRApplicationActivityCreateExternalRepresentation(v11);
    if (v12)
    {
      [v4 setObject:v12 forKey:@"kMRApplicationActivityUserInfoDataKey"];
    }

    else
    {
      v13 = _MRLogForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        _MREncodeObjectForKey_cold_1();
      }
    }

    [v4 removeObjectForKey:@"kMRApplicationActivityUserInfoKey"];
  }

  _MREncodeObjectForKey(v4, @"kMRPairedDeviceUserInfoKey", @"kMRPairedDeviceUserInfoDataKey", &__block_literal_global_153);
  _MREncodeObjectForKey(v4, @"kMRPreviousPairedDeviceUserInfoKey", @"kMRPreviousPairedDeviceUserInfoDataKey", &__block_literal_global_156);
  _MREncodeObjectForKey(v4, @"kMRPlaybackSessionRequestUserInfoKey", @"kMRPlaybackSessionRequestDataUserInfoKey", &__block_literal_global_160);
  _MREncodeObjectForKey(v4, @"kMRPlaybackSessionUserInfoKey", @"kMRPlaybackSessionDataUserInfoKey", &__block_literal_global_164_0);
  _MREncodeObjectForKey(v4, @"kMRPlaybackQueueRequestUserInfoKey", @"kMRPlaybackQueueRequestDataUserInfoKey", &__block_literal_global_168);
  _MREncodeObjectForKey(v4, @"kMRPlaybackQueueUserInfoKey", @"kMRPlaybackQueueDataUserInfoKey", &__block_literal_global_172);
  _MREncodeObjectForKey(v4, @"kMRSupportedCommandsUserInfoKey", @"kMRSupportedCommandsDataUserInfoKey", &__block_literal_global_175);
  _MREncodeObjectForKey(v4, @"MRAVEndpointOutputDeviceUserInfoKey", @"MRAVEndpointOutputDeviceDataUserInfoKey", &__block_literal_global_178);
  _MREncodeObjectForKey(v4, @"MRActiveGroupSessionInfoUserInfoKey", @"_MRGroupSessionInfoDataUserInfoKey", &__block_literal_global_181);
  _MREncodeObjectForKey(v4, @"MRGroupSessionEligibilityStatusUserInfoKey", @"_MRGroupSessionEligibilityStatusDataUserInfoKey", &__block_literal_global_184);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __MRCreateEncodedUserInfo_block_invoke_11;
  v16[3] = &unk_1E769EC90;
  v14 = v4;
  v17 = v14;
  [v14 enumerateKeysAndObjectsUsingBlock:v16];

  return v14;
}

void __MRMediaRemoteServiceStart_block_invoke_2(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "MRXPC_MESSAGE_ID_KEY");
  v3 = HIBYTE(uint64);
  if (HIBYTE(uint64) > 7)
  {
    if (v3 == 8)
    {
      v17 = *(a1 + 40);
      v5 = *(a1 + 32);
      v18 = v17;
      v7 = v18;
      v19 = v18[1];
      if (v19)
      {
        v9 = [v18 clientCallbackPriorityQueue];
        v20 = qos_class_self();
        *&block = MEMORY[0x1E69E9820];
        *(&block + 1) = 3221225472;
        v37 = ___MRServiceHandleClientPriorityMessage_block_invoke;
        v38 = &unk_1E769C018;
        v39 = v5;
        v40 = v19;
        v21 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v20, 0, &block);
        dispatch_async(v9, v21);

LABEL_25:
LABEL_26:

LABEL_49:
        goto LABEL_50;
      }

      v9 = _MRLogForCategory(0);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      LODWORD(block) = 138412290;
      *(&block + 4) = v5;
      goto LABEL_35;
    }

    if (v3 == 9)
    {
      v25 = *(a1 + 40);
      v5 = *(a1 + 32);
      v26 = v25;
      v7 = v26;
      v8 = v26[3];
      if (v8)
      {
        v9 = [v26 voiceInputQueue];
        *&block = MEMORY[0x1E69E9820];
        *(&block + 1) = 3221225472;
        v10 = ___MRServiceHandleVoiceInputMessage_block_invoke;
        goto LABEL_23;
      }

      v34 = _MRLogForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(block) = 138412290;
        *(&block + 4) = v5;
        _os_log_impl(&dword_1A2860000, v34, OS_LOG_TYPE_DEFAULT, "No voice recording endpoint registered to receive message: %@", &block, 0xCu);
      }

      v32 = v5;
      v33 = 21;
LABEL_48:
      _MRServiceSendReply(v32, v33);
      goto LABEL_49;
    }

    if (v3 != 10)
    {
      goto LABEL_16;
    }

    v11 = *(a1 + 40);
    v5 = *(a1 + 32);
    v12 = v11;
    v7 = v12;
    v13 = v12[5];
    if (!v13)
    {
      v30 = _MRLogForCategory(0);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
LABEL_41:

        v32 = v5;
        v33 = 24;
        goto LABEL_48;
      }

      LODWORD(block) = 138412290;
      *(&block + 4) = v5;
      v31 = "No agent endpoint registered to receive message: %@";
LABEL_40:
      _os_log_impl(&dword_1A2860000, v30, OS_LOG_TYPE_DEFAULT, v31, &block, 0xCu);
      goto LABEL_41;
    }

    v9 = [v12 agentQueue];
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v37 = ___MRServiceHandleAgentMessage_block_invoke;
    v38 = &unk_1E769C780;
    v39 = v5;
    v40 = v7;
    v41 = v13;
LABEL_24:
    dispatch_async(v9, &block);
    goto LABEL_25;
  }

  switch(v3)
  {
    case 5:
      v14 = *(a1 + 40);
      v5 = *(a1 + 32);
      v7 = v14;
      v15 = v7[2];
      v16 = xpc_dictionary_get_uint64(v5, "MRXPC_MESSAGE_ID_KEY");
      if (!v15)
      {
        v27 = _MRLogForCategory(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v16 - 0x500000000000001;
          if (v16 - 0x500000000000001 < 0xA && ((0x23Fu >> v28) & 1) != 0)
          {
            v29 = off_1E769C7A0[v28];
          }

          else
          {
            v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", v16];
          }

          LODWORD(block) = 138412290;
          *(&block + 4) = v29;
          _os_log_impl(&dword_1A2860000, v27, OS_LOG_TYPE_DEFAULT, "No browsableContent endpoint registered to handle API: %@", &block, 0xCu);
        }

        v32 = v5;
        v33 = 11;
        goto LABEL_48;
      }

      v9 = [v7 browsableContentQueue];
      *&block = MEMORY[0x1E69E9820];
      *(&block + 1) = 3221225472;
      v37 = ___MRServiceHandleBrowsableContentMessage_block_invoke;
      v38 = &unk_1E769C730;
      v40 = v16;
      v41 = v15;
      v39 = v5;
      v42 = v7;
      goto LABEL_24;
    case 6:
      v23 = *(a1 + 40);
      v5 = *(a1 + 32);
      v24 = v23;
      v7 = v24;
      v8 = v24[4];
      if (v8)
      {
        v9 = [v24 televisionQueue];
        *&block = MEMORY[0x1E69E9820];
        *(&block + 1) = 3221225472;
        v10 = ___MRSerivceHandleTelevisionMessage_block_invoke;
        goto LABEL_23;
      }

      v30 = _MRLogForCategory(0);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      LODWORD(block) = 138412290;
      *(&block + 4) = v5;
      v31 = "No television endpoint registered to receive message: %@";
      goto LABEL_40;
    case 7:
      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = v6;
      v8 = v6[1];
      if (v8)
      {
        v9 = [v6 clientCallbackQueue];
        *&block = MEMORY[0x1E69E9820];
        *(&block + 1) = 3221225472;
        v10 = ___MRServiceHandleClientMessage_block_invoke;
LABEL_23:
        v37 = v10;
        v38 = &unk_1E769C018;
        v39 = v5;
        v40 = v8;
        goto LABEL_24;
      }

      v9 = _MRLogForCategory(0);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      LODWORD(block) = 138412290;
      *(&block + 4) = v5;
LABEL_35:
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "No client module registered to receive message: %@", &block, 0xCu);
      goto LABEL_26;
  }

LABEL_16:
  v22 = _MRLogForCategory(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(block) = 134217984;
    *(&block + 4) = uint64;
    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "No client-side XPC message destination routed for message with ID %lu.", &block, 0xCu);
  }

LABEL_50:
  v35 = *MEMORY[0x1E69E9840];
}

void __MRCreateEncodedUserInfo_block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v6 conformsToProtocol:&unk_1F1578C48] & 1) == 0 && !CFPropertyListIsValid(v6, kCFPropertyListBinaryFormat_v1_0))
  {
    v7 = _MRLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __MRCreateEncodedUserInfo_block_invoke_11_cold_1();
    }

    [*(a1 + 32) removeObjectForKey:v5];
  }
}

__CFString *MRMediaRemoteCopyPlaybackStateDescription(int a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E769ADE0[a1 - 1];
  }
}

CFStringRef MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID()
{
  v0 = +[MRUserSettings currentSettings];
  if ([v0 sonicMusicEnabled])
  {
    v1 = @"com.apple.sonic.music";
  }

  else
  {
    v1 = @"com.apple.Music";
  }

  v2 = *MEMORY[0x1E695E480];

  return CFStringCreateCopy(v2, v1);
}

void MRAddPropertyListToXPCMessage(void *a1, uint64_t a2, const char *a3)
{
  v5 = a1;
  if (a2)
  {
    v9 = 0;
    v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:a2 format:200 options:0 error:&v9];
    v7 = v9;
    if (v6)
    {
      MRAddDataToXPCMessage(v5, v6, a3);
    }

    else
    {
      v8 = _MRLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        MRAddPropertyListToXPCMessage_cold_1();
      }
    }
  }
}

id MRGetClientFromUserInfo(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"kMRNowPlayingClientUserInfoKey"];
  if (!v2)
  {
    v3 = [v1 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];
    v2 = [v3 client];
  }

  return v2;
}

MRPlayerPath *__MRCreateDecodedUserInfo_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRPlayerPath alloc] initWithData:v2];

  return v3;
}

MRPlayerPath *__MRCreateDecodedUserInfo_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRPlayerPath alloc] initWithData:v2];

  return v3;
}

MRPlayerPath *__MRCreateDecodedUserInfo_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRPlayerPath alloc] initWithData:v2];

  return v3;
}

id MRGetPlayerFromUserInfo(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"kMRNowPlayingPlayerUserInfoKey"];
  if (!v2)
  {
    v3 = [v1 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];
    v2 = [v3 player];
  }

  return v2;
}

void *MRPlaybackQueueCapabilitiesCopyDescription(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AEC0]);
  v3 = v2;
  if (!a1)
  {
    v4 = @"None";
LABEL_10:
    v7 = [v3 stringByAppendingString:v4];

    return v7;
  }

  if ((a1 & 2) != 0)
  {
    v5 = [v2 stringByAppendingString:@"range|"];

    v3 = v5;
    if ((a1 & 4) == 0)
    {
LABEL_4:
      if ((a1 & 8) == 0)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_4;
  }

  v6 = [v3 stringByAppendingString:@"identifier|"];

  v3 = v6;
  if ((a1 & 8) != 0)
  {
LABEL_9:
    v4 = @"request";
    goto LABEL_10;
  }

  return v3;
}

uint64_t __MRMediaRemoteServiceSetNowPlayingPlaybackQueueCapabilities_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  return kdebug_trace();
}

void __MRMediaRemoteServiceSetNowPlayingPlayer_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v8 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
  }

  else
  {
    Error = MRCreateClientErrorFromXPCMessage(v3);
  }

  v6 = Error;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }

  kdebug_trace();
}

void MRMediaRemoteSetSupportedCommandsForPlayer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v7 = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
  }

  v10 = +[MRNowPlayingOriginClientManager sharedManager];
  v11 = [v10 playerClientForPlayerPath:a2];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MRMediaRemoteSetSupportedCommandsForPlayer_block_invoke;
  v13[3] = &unk_1E769AD80;
  v14 = v8;
  v12 = v8;
  [v11 setSupportedCommands:a1 queue:v7 completion:v13];
}

uint64_t MRSupportedCommandsIsEqual(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3 == v4)
  {
    v22 = 1;
  }

  else
  {
    v5 = [v3 count];
    if (v5 == [v4 count])
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v7 = v3;
      v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v31;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v31 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v30 + 1) + 8 * i);
            v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v12, "command")}];
            [v6 setObject:v12 forKeyedSubscript:v13];
          }

          v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v9);
      }

      v25 = v3;

      v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = v4;
      v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v27;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v26 + 1) + 8 * j);
            v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v20, "command")}];
            [v14 setObject:v20 forKeyedSubscript:v21];
          }

          v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v17);
      }

      v22 = [v6 isEqualToDictionary:v14];
      v3 = v25;
    }

    else
    {
      v22 = 0;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

void MRSupportedCommandsCalculateDeltas(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v29 = a4;
  v30 = a5;
  v28 = a3;
  v41 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = [v14 dictionaryRepresentation];
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v14, "command")}];
        [v8 setObject:v15 forKeyedSubscript:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
  }

  v27 = v9;

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = v7;
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v32;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v31 + 1) + 8 * j);
        v24 = [v23 dictionaryRepresentation];
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v23, "command")}];
        [v17 setObject:v24 forKeyedSubscript:v25];
      }

      v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v20);
  }

  MRDictionaryCalculateDeltas(v8, v17, v28, v29, v30);
  v26 = *MEMORY[0x1E69E9840];
}

void MRDictionaryCalculateDeltas(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __MRDictionaryCalculateDeltas_block_invoke;
  v25[3] = &unk_1E76A0F90;
  v14 = v10;
  v26 = v14;
  v15 = v13;
  v27 = v15;
  v16 = v12;
  v28 = v16;
  [v9 enumerateKeysAndObjectsUsingBlock:v25];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __MRDictionaryCalculateDeltas_block_invoke_5;
  v22[3] = &unk_1E76A0FB8;
  v23 = v9;
  v17 = v11;
  v24 = v17;
  v18 = v9;
  [v14 enumerateKeysAndObjectsUsingBlock:v22];
  if (a3)
  {
    v19 = v17;
    *a3 = v17;
  }

  if (a4)
  {
    v20 = v16;
    *a4 = v16;
  }

  if (a5)
  {
    v21 = v15;
    *a5 = v15;
  }
}

void __MRDictionaryCalculateDeltas_block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v7];
  if (!v6)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v7];
  }
}

void MRMediaRemoteServiceSetSupportedCommands(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  kdebug_trace();
  v11 = a1;
  v12 = MRCreateXPCMessage(0x200000000000032uLL);
  MRAddPlayerPathToXPCMessage(v12, a3);
  MRAddSupportedCommandsToXPCMessage(v12, a2);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __MRMediaRemoteServiceSetSupportedCommands_block_invoke;
  v16[3] = &unk_1E769AD30;
  v17 = v9;
  v13 = v9;
  v14 = _MRServiceCreateErrorHandlerBlock(v16);
  v15 = [v11 connection];

  xpc_connection_send_message_with_reply(v15, v12, v10, v14);
}

uint64_t MRMediaRemoteSetCanBeNowPlayingForPlayer(void *a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"YES";
    if (!a2)
    {
      v5 = @"NO";
    }

    v18 = 138412546;
    v19 = v3;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRNowPlaying] MRMediaRemoteSetCanBeNowPlayingForPlayer %@ set to %@", &v18, 0x16u);
  }

  v6 = +[MRNowPlayingOriginClientManager sharedManager];
  v7 = [v6 clientForPlayerPath:v3];

  v8 = [v7 canBeNowPlaying];
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v10 = [v9 playerClientForPlayerPath:v3];

  [v10 setCanBeNowPlayingPlayer:a2 != 0];
  [v7 setPerPlayerCanBeNowPlaying:1];
  if (v8 != [v7 canBeNowPlaying])
  {
    v11 = [getAVSystemControllerClass() sharedAVSystemController];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "canBeNowPlaying")}];
    v13 = getAVSystemController_CanBeNowPlayingAppAttribute();
    [v11 setAttribute:v12 forKey:v13 error:0];
  }

  v14 = MRGetSharedService();
  v15 = [v10 playerPath];
  MRMediaRemoteServiceSetCanBeNowPlayingAppForPlayer(v14, a2 != 0, v15, 0.0);

  v16 = *MEMORY[0x1E69E9840];
  return 1;
}

void MRMediaRemoteServiceSetCanBeNowPlayingAppForPlayer(void *a1, BOOL a2, void *a3, double a4)
{
  v7 = a1;
  v8 = a3;
  xdict = MRCreateXPCMessage(0x200000000000039uLL);
  MRAddPlayerPathToXPCMessage(xdict, v8);

  xpc_dictionary_set_BOOL(xdict, "MRXPC_NOWPLAYING_APP_ENABLED_KEY", a2);
  xpc_dictionary_set_double(xdict, "MRXPC_TIMESTAMP", a4);
  v9 = [v7 connection];

  xpc_connection_send_message(v9, xdict);
}

void sub_1A28794B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MRDeviceInfoMessageProtobuf_DeviceClassFromModel(uint64_t result)
{
  if ((result - 1) < 0xD)
  {
    return result;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t MRAVOutputDeviceSubtypeFromAVSubtype(uint64_t a1)
{
  if ((a1 - 1) > 0x13)
  {
    return 0;
  }

  else
  {
    return dword_1A2B81050[a1 - 1];
  }
}

void MRMediaRemoteSetWantsVolumeControlNotifications(int a1)
{
  v2 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v3 = MRMediaRemoteSetWantsVolumeControlNotifications___volumeControlNotificationObservers;
  if (a1)
  {
    ++MRMediaRemoteSetWantsVolumeControlNotifications___volumeControlNotificationObservers;
    if (v3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = MRMediaRemoteSetWantsVolumeControlNotifications___volumeControlNotificationObservers == 1;
  if (MRMediaRemoteSetWantsVolumeControlNotifications___volumeControlNotificationObservers >= 1)
  {
    --MRMediaRemoteSetWantsVolumeControlNotifications___volumeControlNotificationObservers;
    if (v4)
    {
LABEL_7:
      v6 = v2;
      v5 = [v2 notificationClient];
      [v5 setReceivesVolumeControlNotifications:a1 != 0];

      v2 = v6;
    }
  }

LABEL_8:
}

id MRAVOutputContextGetSharedAudioPresentationContext()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[MRAVOutputContext sharedAudioPresentationContext];
  objc_autoreleasePoolPop(v0);
  return v1;
}

void MRAddDeviceInfoToXPCMessage(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1;
    v4 = [a2 data];
    MRAddDataToXPCMessage(v3, v4, "MRXPC_PAIRED_EXTERNAL_DEVICE");
  }
}

MRDeviceInfo *MRCreateDeviceInfoFromXPCMessage(void *a1)
{
  v1 = MRCreateDataFromXPCMessage(a1, "MRXPC_PAIRED_EXTERNAL_DEVICE");
  v2 = [[MRDeviceInfo alloc] initWithData:v1];

  return v2;
}

uint64_t _MRDeviceInfoMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v186) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v186 & 0x7F) << v6;
      if ((v186 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 296;
        goto LABEL_289;
      case 2u:
        v14 = PBReaderReadString();
        v15 = 216;
        goto LABEL_289;
      case 3u:
        v14 = PBReaderReadString();
        v15 = 184;
        goto LABEL_289;
      case 4u:
        v14 = PBReaderReadString();
        v15 = 264;
        goto LABEL_289;
      case 5u:
        v14 = PBReaderReadString();
        v15 = 48;
        goto LABEL_289;
      case 6u:
        v14 = PBReaderReadString();
        v15 = 56;
        goto LABEL_289;
      case 7u:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        *(a1 + 324) |= 1u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v112 = [a2 position] + 1;
          if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
          {
            v114 = [a2 data];
            [v114 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v111 |= (v186 & 0x7F) << v109;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v12 = v110++ >= 9;
          if (v12)
          {
            v115 = 0;
            goto LABEL_341;
          }
        }

        if ([a2 hasError])
        {
          v115 = 0;
        }

        else
        {
          v115 = v111;
        }

LABEL_341:
        *(a1 + 8) = v115;
        goto LABEL_376;
      case 8u:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        *(a1 + 324) |= 0x20u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v119 = [a2 position] + 1;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
          {
            v121 = [a2 data];
            [v121 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v118 |= (v186 & 0x7F) << v116;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v12 = v117++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_345;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v118;
        }

LABEL_345:
        v184 = 164;
        goto LABEL_372;
      case 9u:
        v140 = 0;
        v141 = 0;
        v142 = 0;
        *(a1 + 324) |= 0x2000000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v143 = [a2 position] + 1;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
          {
            v145 = [a2 data];
            [v145 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v142 |= (v186 & 0x7F) << v140;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v140 += 7;
          v12 = v141++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_355;
          }
        }

        v22 = (v142 != 0) & ~[a2 hasError];
LABEL_355:
        v183 = 320;
        goto LABEL_375;
      case 0xAu:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *(a1 + 324) |= 0x200u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v137 = [a2 position] + 1;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
          {
            v139 = [a2 data];
            [v139 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v136 |= (v186 & 0x7F) << v134;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v12 = v135++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_353;
          }
        }

        v22 = (v136 != 0) & ~[a2 hasError];
LABEL_353:
        v183 = 304;
        goto LABEL_375;
      case 0xBu:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        *(a1 + 324) |= 0x400u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v81 = [a2 position] + 1;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
          {
            v83 = [a2 data];
            [v83 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v80 |= (v186 & 0x7F) << v78;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v12 = v79++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_327;
          }
        }

        v22 = (v80 != 0) & ~[a2 hasError];
LABEL_327:
        v183 = 305;
        goto LABEL_375;
      case 0xCu:
        v14 = PBReaderReadString();
        v15 = 272;
        goto LABEL_289;
      case 0xDu:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        *(a1 + 324) |= 0x100000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v99 = [a2 position] + 1;
          if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
          {
            v101 = [a2 data];
            [v101 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v98 |= (v186 & 0x7F) << v96;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v12 = v97++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_333;
          }
        }

        v22 = (v98 != 0) & ~[a2 hasError];
LABEL_333:
        v183 = 315;
        goto LABEL_375;
      case 0xEu:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 324) |= 0x1000000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v186 & 0x7F) << v72;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v12 = v73++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_325;
          }
        }

        v22 = (v74 != 0) & ~[a2 hasError];
LABEL_325:
        v183 = 319;
        goto LABEL_375;
      case 0xFu:
        v128 = 0;
        v129 = 0;
        v130 = 0;
        *(a1 + 324) |= 0x200000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v131 = [a2 position] + 1;
          if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 1, v132 <= objc_msgSend(a2, "length")))
          {
            v133 = [a2 data];
            [v133 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v130 |= (v186 & 0x7F) << v128;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v128 += 7;
          v12 = v129++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_351;
          }
        }

        v22 = (v130 != 0) & ~[a2 hasError];
LABEL_351:
        v183 = 316;
        goto LABEL_375;
      case 0x10u:
        v14 = PBReaderReadData();
        v15 = 64;
        goto LABEL_289;
      case 0x11u:
        v146 = 0;
        v147 = 0;
        v148 = 0;
        *(a1 + 324) |= 0x100u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v149 = [a2 position] + 1;
          if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
          {
            v151 = [a2 data];
            [v151 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v148 |= (v186 & 0x7F) << v146;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v12 = v147++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_359;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v148;
        }

LABEL_359:
        v184 = 248;
        goto LABEL_372;
      case 0x13u:
        v14 = PBReaderReadString();
        v15 = 120;
        goto LABEL_289;
      case 0x14u:
        v14 = PBReaderReadString();
        v15 = 200;
        goto LABEL_289;
      case 0x15u:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        *(a1 + 324) |= 8u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            v107 = [a2 data];
            [v107 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v104 |= (v186 & 0x7F) << v102;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v12 = v103++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_337;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v104;
        }

LABEL_337:
        v184 = 116;
        goto LABEL_372;
      case 0x16u:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        *(a1 + 324) |= 0x40u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v161 = [a2 position] + 1;
          if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 1, v162 <= objc_msgSend(a2, "length")))
          {
            v163 = [a2 data];
            [v163 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v160 |= (v186 & 0x7F) << v158;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v12 = v159++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_365;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v160;
        }

LABEL_365:
        v184 = 192;
        goto LABEL_372;
      case 0x17u:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(a1 + 324) |= 0x4000000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v69 = [a2 position] + 1;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
          {
            v71 = [a2 data];
            [v71 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v68 |= (v186 & 0x7F) << v66;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v12 = v67++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_323;
          }
        }

        v22 = (v68 != 0) & ~[a2 hasError];
LABEL_323:
        v183 = 321;
        goto LABEL_375;
      case 0x18u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 324) |= 0x20000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v186 & 0x7F) << v90;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v12 = v91++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_331;
          }
        }

        v22 = (v92 != 0) & ~[a2 hasError];
LABEL_331:
        v183 = 312;
        goto LABEL_375;
      case 0x19u:
        v14 = PBReaderReadString();
        v15 = 288;
        goto LABEL_289;
      case 0x1Au:
        v14 = PBReaderReadString();
        v15 = 144;
        goto LABEL_289;
      case 0x1Bu:
        v14 = PBReaderReadString();
        v15 = 128;
        goto LABEL_289;
      case 0x1Cu:
        v108 = objc_alloc_init(_MRDeviceInfoMessageProtobuf);
        [a1 addGroupedDevices:v108];
        goto LABEL_275;
      case 0x1Du:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        *(a1 + 324) |= 0x10000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v167 = [a2 position] + 1;
          if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
          {
            v169 = [a2 data];
            [v169 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v166 |= (v186 & 0x7F) << v164;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v12 = v165++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_367;
          }
        }

        v22 = (v166 != 0) & ~[a2 hasError];
LABEL_367:
        v183 = 311;
        goto LABEL_375;
      case 0x1Eu:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 324) |= 0x1000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v186 & 0x7F) << v84;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_329;
          }
        }

        v22 = (v86 != 0) & ~[a2 hasError];
LABEL_329:
        v183 = 307;
        goto LABEL_375;
      case 0x1Fu:
        v14 = PBReaderReadString();
        v15 = 280;
        goto LABEL_289;
      case 0x20u:
        v14 = PBReaderReadString();
        v15 = 240;
        goto LABEL_289;
      case 0x21u:
        v108 = PBReaderReadString();
        if (v108)
        {
          [a1 addAirplayReceivers:v108];
        }

        goto LABEL_278;
      case 0x22u:
        v14 = PBReaderReadString();
        v15 = 176;
        goto LABEL_289;
      case 0x23u:
        v14 = PBReaderReadString();
        v15 = 72;
        goto LABEL_289;
      case 0x24u:
        v14 = PBReaderReadString();
        v15 = 80;
        goto LABEL_289;
      case 0x25u:
        v170 = 0;
        v171 = 0;
        v172 = 0;
        *(a1 + 324) |= 2u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v173 = [a2 position] + 1;
          if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 1, v174 <= objc_msgSend(a2, "length")))
          {
            v175 = [a2 data];
            [v175 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v172 |= (v186 & 0x7F) << v170;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v12 = v171++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_371;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v172;
        }

LABEL_371:
        v184 = 88;
        goto LABEL_372;
      case 0x26u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 324) |= 0x2000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v186 & 0x7F) << v54;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v12 = v55++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_319;
          }
        }

        v22 = (v56 != 0) & ~[a2 hasError];
LABEL_319:
        v183 = 308;
        goto LABEL_375;
      case 0x27u:
        v14 = PBReaderReadString();
        v15 = 208;
        goto LABEL_289;
      case 0x28u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 324) |= 0x400000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v186 & 0x7F) << v48;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_317;
          }
        }

        v22 = (v50 != 0) & ~[a2 hasError];
LABEL_317:
        v183 = 317;
        goto LABEL_375;
      case 0x29u:
        v14 = PBReaderReadString();
        v15 = 232;
        goto LABEL_289;
      case 0x2Au:
        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_289;
      case 0x2Bu:
        v14 = PBReaderReadString();
        v15 = 256;
        goto LABEL_289;
      case 0x2Cu:
        v108 = objc_alloc_init(_MRDeviceInfoMessageProtobuf);
        [a1 addClusteredDevices:v108];
        goto LABEL_275;
      case 0x2Du:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 324) |= 0x40000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v186 & 0x7F) << v16;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_303;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_303:
        v183 = 313;
        goto LABEL_375;
      case 0x2Eu:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 324) |= 0x800u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v186 & 0x7F) << v60;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v12 = v61++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_321;
          }
        }

        v22 = (v62 != 0) & ~[a2 hasError];
LABEL_321:
        v183 = 306;
        goto LABEL_375;
      case 0x2Fu:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        *(a1 + 324) |= 0x10u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v125 = [a2 position] + 1;
          if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
          {
            v127 = [a2 data];
            [v127 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v124 |= (v186 & 0x7F) << v122;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v12 = v123++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_349;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v124;
        }

LABEL_349:
        v184 = 160;
        goto LABEL_372;
      case 0x30u:
        v108 = objc_alloc_init(_MRDeviceInfoMessageProtobuf);
        [a1 addAllClusteredDevices:v108];
        goto LABEL_275;
      case 0x31u:
        v177 = 0;
        v178 = 0;
        v179 = 0;
        *(a1 + 324) |= 0x800000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v180 = [a2 position] + 1;
          if (v180 >= [a2 position] && (v181 = objc_msgSend(a2, "position") + 1, v181 <= objc_msgSend(a2, "length")))
          {
            v182 = [a2 data];
            [v182 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v179 |= (v186 & 0x7F) << v177;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v177 += 7;
          v12 = v178++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_374;
          }
        }

        v22 = (v179 != 0) & ~[a2 hasError];
LABEL_374:
        v183 = 318;
        goto LABEL_375;
      case 0x32u:
        v14 = PBReaderReadString();
        v15 = 104;
        goto LABEL_289;
      case 0x33u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 324) |= 4u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v186 & 0x7F) << v42;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_315;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v44;
        }

LABEL_315:
        v184 = 112;
        goto LABEL_372;
      case 0x34u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 324) |= 0x80u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v186 & 0x7F) << v23;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_307;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_307:
        v184 = 224;
LABEL_372:
        *(a1 + v184) = v29;
        goto LABEL_376;
      case 0x35u:
        v108 = objc_alloc_init(_MRGroupSessionTokenProtobuf);
        objc_storeStrong((a1 + 136), v108);
        v186 = 0;
        v187 = 0;
        if (!PBReaderPlaceMark() || !_MRGroupSessionTokenProtobufReadFrom(v108, a2))
        {
          goto LABEL_378;
        }

        goto LABEL_277;
      case 0x36u:
        v108 = objc_alloc_init(_MRDeviceInfoMessageProtobuf);
        objc_storeStrong((a1 + 168), v108);
LABEL_275:
        v186 = 0;
        v187 = 0;
        if (PBReaderPlaceMark() && _MRDeviceInfoMessageProtobufReadFrom(v108, a2))
        {
LABEL_277:
          PBReaderRecallMark();
LABEL_278:

LABEL_376:
          v4 = a2;
          continue;
        }

LABEL_378:

        return 0;
      case 0x37u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 324) |= 0x4000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v186 & 0x7F) << v36;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_311;
          }
        }

        v22 = (v38 != 0) & ~[a2 hasError];
LABEL_311:
        v183 = 309;
        goto LABEL_375;
      case 0x38u:
        v14 = PBReaderReadString();
        v15 = 16;
LABEL_289:
        v176 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_376;
      case 0x39u:
        v152 = 0;
        v153 = 0;
        v154 = 0;
        *(a1 + 324) |= 0x8000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v155 = [a2 position] + 1;
          if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
          {
            v157 = [a2 data];
            [v157 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v154 |= (v186 & 0x7F) << v152;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v152 += 7;
          v12 = v153++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_361;
          }
        }

        v22 = (v154 != 0) & ~[a2 hasError];
LABEL_361:
        v183 = 310;
        goto LABEL_375;
      case 0x3Au:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 324) |= 0x80000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v186 & 0x7F) << v30;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_309;
          }
        }

        v22 = (v32 != 0) & ~[a2 hasError];
LABEL_309:
        v183 = 314;
LABEL_375:
        *(a1 + v183) = v22;
        goto LABEL_376;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_376;
    }
  }
}

void *MRAddDeviceInfoToUserInfo(void *a1, const char *a2)
{
  if (a1)
  {
    if (a2)
    {
      return [a1 setObject:a2 forKeyedSubscript:@"kMRPairedDeviceUserInfoKey"];
    }
  }

  return a1;
}

uint64_t MRDeviceClassFromProtobuf(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 0xD)
  {
    return v1 + 1;
  }

  else
  {
    return -1;
  }
}

BOOL MROutputDeviceIsAVOutputDeviceLocal(void *a1)
{
  v1 = a1;
  v2 = +[MROrigin localOrigin];
  v3 = [MRDeviceInfoRequest cachedDeviceInfoForOrigin:v2];
  v4 = [v1 deviceType];

  return v4 != 0;
}

void __MRCopyPossibleRouteUIDSuffixes_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F1577590];
  v1 = MRCopyPossibleRouteUIDSuffixes_suffixes;
  MRCopyPossibleRouteUIDSuffixes_suffixes = v0;
}

id MRCreateDataFromObject(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = MSVArchivedDataWithRootObject();
    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void MRMediaRemoteGetMediaPlaybackVolume(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[MROrigin localOrigin];
  MRMediaRemoteGetMediaPlaybackVolumeForOrigin(v5, v4, v3);
}

void MRMediaRemoteGetMediaPlaybackVolumeForOrigin(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v5 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  v9 = [MEMORY[0x1E695DF00] date];
  v10 = [MEMORY[0x1E696AFB0] UUID];
  v11 = [v10 UUIDString];

  v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"mediaPlaybackVolume", v11];
  v13 = v12;
  if (v8)
  {
    [v12 appendFormat:@" for %@", v8];
  }

  v14 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = v13;
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __MRMediaRemoteGetMediaPlaybackVolumeForOrigin_block_invoke;
  v30[3] = &unk_1E76A4B40;
  v15 = v8;
  v31 = v15;
  v32 = @"mediaPlaybackVolume";
  v16 = v11;
  v33 = v16;
  v17 = v9;
  v34 = v17;
  v18 = v5;
  v35 = v18;
  v19 = v6;
  v36 = v19;
  v20 = MEMORY[0x1A58E3570](v30);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __MRMediaRemoteGetMediaPlaybackVolumeForOrigin_block_invoke_2;
  v28[3] = &unk_1E769AC68;
  v21 = v20;
  v29 = v21;
  v22 = MEMORY[0x1A58E3570](v28);
  v23 = v22;
  if (a1)
  {
    (*(v22 + 16))(v22, v15);
  }

  else
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __MRMediaRemoteGetMediaPlaybackVolumeForOrigin_block_invoke_3;
    v25[3] = &unk_1E76A4AF0;
    v26 = v21;
    v27 = v23;
    MRMediaRemoteNowPlayingResolvePlayerPath(v15, v18, v25);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteGetMediaPlaybackVolumeForOrigin_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v5 = [v4 originClientRequestsForPlayerPath:v3];

  [v5 handleVolumeRequestWithCompletion:*(a1 + 32)];
}

void MRMediaRemoteServiceGetMediaPlaybackVolume(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  v7 = a1;
  v8 = MRCreateXPCMessage(0x100000000000004uLL);
  v9 = [v7 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetMediaPlaybackVolume_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v12 = v5;
  v10 = v5;
  xpc_connection_send_message_with_reply(v9, v8, v6, handler);
}

void MRMediaRemoteGetPickedRoutedVolumeControlCapabilities(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v5 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];

  v11 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __MRMediaRemoteGetPickedRoutedVolumeControlCapabilities_block_invoke;
  v29[3] = &unk_1E76A4AA0;
  v30 = @"volumeControlCapabilities";
  v12 = v10;
  v31 = v12;
  v13 = v8;
  v32 = v13;
  v14 = v5;
  v33 = v14;
  v15 = v6;
  v34 = v15;
  v16 = MEMORY[0x1A58E3570](v29);
  v17 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"volumeControlCapabilities", v12];
  v18 = v17;
  if (v11)
  {
    [v17 appendFormat:@" for %@", v11];
  }

  v19 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v18;
    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __MRMediaRemoteGetPickedRoutedVolumeControlCapabilities_block_invoke_94;
  v27[3] = &unk_1E769AC68;
  v20 = v16;
  v28 = v20;
  v21 = MEMORY[0x1A58E3570](v27);
  v22 = [(MRPlayerPath *)v11 origin];

  if (v22)
  {
    (v21)[2](v21, v11);
  }

  else
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __MRMediaRemoteGetPickedRoutedVolumeControlCapabilities_block_invoke_3;
    v24[3] = &unk_1E76A4AF0;
    v25 = v21;
    v26 = v20;
    MRMediaRemoteNowPlayingResolvePlayerPath(v11, v14, v24);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteGetPickedRoutedVolumeControlCapabilities_block_invoke_94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v5 = [v4 originClientRequestsForPlayerPath:v3];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MRMediaRemoteGetPickedRoutedVolumeControlCapabilities_block_invoke_2;
  v8[3] = &unk_1E76A4AC8;
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 handleVolumeCapabilitiesRequestWithCompletion:v8];
}

void MRMediaRemoteServiceGetPickedRouteVolumeControlCapabilities(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  kdebug_trace();
  v10 = a1;
  v11 = MRCreateXPCMessage(0x300000000000004uLL);
  MRAddPlayerPathToXPCMessage(v11, v9);

  v12 = [v10 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetPickedRouteVolumeControlCapabilities_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = v7;
  v13 = v7;
  xpc_connection_send_message_with_reply(v12, v11, v8, handler);
}

void OUTLINED_FUNCTION_16_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

void MRMediaRemoteGetSystemVolumeMuted(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E695DF00];
  v5 = a1;
  v6 = [v4 date];
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];

  v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"getSystemIsMuted", v8];
  v10 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v9;
    _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v11 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v12 = [v11 service];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __MRMediaRemoteGetSystemVolumeMuted_block_invoke;
  v17[3] = &unk_1E76A4B90;
  v18 = v8;
  v19 = v6;
  v20 = v3;
  v13 = v3;
  v14 = v6;
  v15 = v8;
  MRMediaRemoteServiceGetSystemIsMuted(v12, v5, v17);

  v16 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteServiceGetSystemIsMuted(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MRMediaRemoteServiceGetSystemIsMuted_block_invoke;
  v7[3] = &unk_1E769C5B8;
  v8 = v5;
  v6 = v5;
  _MRMediaRemoteServiceProtobuf(a1, 0x100000000000008uLL, 0, a2, v7);
}

void _MRMediaRemoteServiceProtobuf(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  v11 = a1;
  v12 = a4;
  v13 = MRCreateXPCMessage(a2);
  MRAddProtobufToXPCMessage(v13, v9);
  if (objc_opt_respondsToSelector())
  {
    MRAddPlayerPathToXPCMessage(v13, [v9 performSelector:sel_playerPath]);
  }

  v14 = [v11 mrXPCConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___MRMediaRemoteServiceProtobuf_block_invoke;
  v16[3] = &unk_1E769B338;
  v17 = v10;
  v15 = v10;
  [v14 sendMessage:v13 queue:v12 reply:v16];
}

void MRAddProtobufToXPCMessage(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 protobufData];
  MRAddDataToXPCMessage(v3, v4, "MRXPC_PROTOBUF_DATA_KEY");
}

uint64_t __MRMediaRemoteServiceGetMediaPlaybackVolume_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  if (xdict == MEMORY[0x1E69E9E18] || xdict == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    v4.n128_u64[0] = 0;
  }

  else
  {
    v4.n128_f64[0] = xpc_dictionary_get_double(xdict, "MRXPC_VOLUME_VALUE_KEY");
    v4.n128_f32[0] = v4.n128_f64[0];
  }

  (*(*(a1 + 32) + 16))(v4);

  return kdebug_trace();
}

void __MRMediaRemoteGetMediaPlaybackVolumeForOrigin_block_invoke(uint64_t a1, void *a2, float a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!v5)
  {
    *&v6 = a3;
    v15 = [MEMORY[0x1E696AD98] numberWithFloat:v6];

    v16 = *(a1 + 32);
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v28 = *(a1 + 40);
        v27 = *(a1 + 48);
        v29 = *(a1 + 32);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544130;
        v46 = v28;
        v47 = 2114;
        v48 = v27;
        v49 = 2114;
        v50 = v29;
        v51 = 2048;
        v52 = v30;
        v31 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v32 = v8;
        v33 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v37 = *(a1 + 40);
        v38 = *(a1 + 48);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138543874;
        v46 = v37;
        v47 = 2114;
        v48 = v38;
        v49 = 2048;
        v50 = v39;
        v31 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v32 = v8;
        v33 = 32;
      }

      _os_log_impl(&dword_1A2860000, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
      goto LABEL_20;
    }

    if (v16)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v19 = *(a1 + 40);
      v20 = *(a1 + 48);
      *&v18 = a3;
      v13 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
      v21 = *(a1 + 32);
      v22 = [MEMORY[0x1E695DF00] date];
      [v22 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v46 = v19;
      v47 = 2114;
      v48 = v20;
      v49 = 2112;
      v50 = v13;
      v51 = 2114;
      v52 = v21;
      v53 = 2048;
      v54 = v23;
      v24 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v25 = v8;
      v26 = 52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v34 = *(a1 + 40);
      v35 = *(a1 + 48);
      *&v18 = a3;
      v13 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
      v22 = [MEMORY[0x1E695DF00] date];
      [v22 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v46 = v34;
      v47 = 2114;
      v48 = v35;
      v49 = 2112;
      v50 = v13;
      v51 = 2048;
      v52 = v36;
      v24 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v25 = v8;
      v26 = 42;
    }

    _os_log_impl(&dword_1A2860000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);

    goto LABEL_20;
  }

  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      v12 = *(a1 + 32);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v46 = v11;
      v47 = 2114;
      v48 = v10;
      v49 = 2114;
      v50 = v5;
      v51 = 2114;
      v52 = v12;
      v53 = 2048;
      v54 = v14;
      _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:
    }
  }

  else if (v9)
  {
    __MRMediaRemoteGetMediaPlaybackVolumeForOrigin_block_invoke_cold_1(a1, v5, v8);
  }

LABEL_21:

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __MRMediaRemoteGetMediaPlaybackVolumeForOrigin_block_invoke_117;
  v42[3] = &unk_1E769ACB8;
  v40 = *(a1 + 64);
  v43 = *(a1 + 72);
  v44 = a3;
  dispatch_async(v40, v42);

  v41 = *MEMORY[0x1E69E9840];
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *(v10 + *(v11 + 3392));

  return [a10 addObserver:v10 selector:a4 name:a5 object:v13];
}

id OUTLINED_FUNCTION_11_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  return a4;
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_11_5(void *a1, const char *a2)
{
  v4 = *(v2 + 48);

  return [a1 timeIntervalSinceDate:v4];
}

void OUTLINED_FUNCTION_5_10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint8_t *a5)
{

  _os_log_impl(a1, v6, OS_LOG_TYPE_DEFAULT, v5, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5_11(void *a1, const char *a2)
{
  v4 = *(v2 + 40);

  return [a1 timeIntervalSinceDate:v4];
}

uint64_t __MRMediaRemoteServiceGetPickedRouteVolumeControlCapabilities_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  if (xdict == MEMORY[0x1E69E9E18] || xdict == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
  }

  else
  {
    xpc_dictionary_get_int64(xdict, "MRXPC_ROUTE_VOLUME_CONTROL_CAPABILITIES_KEY");
  }

  (*(*(a1 + 32) + 16))();

  return kdebug_trace();
}

void __MRMediaRemoteGetPickedRoutedVolumeControlCapabilities_block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(a3);
  v10 = _MRLogForCategory(0xAuLL);
  v11 = v10;
  if (!v8 && v9)
  {
    v12 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v12)
      {
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        v15 = [MEMORY[0x1E695DF00] date];
        [v15 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138544386;
        v40 = v13;
        v41 = 2114;
        v42 = v14;
        v43 = 2112;
        v44 = v9;
        v45 = 2114;
        v46 = v7;
        v47 = 2048;
        v48 = v16;
        v17 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v18 = v11;
        v19 = 52;
LABEL_16:
        _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v12)
    {
      goto LABEL_22;
    }

    v28 = *(a1 + 32);
    v29 = *(a1 + 40);
    v15 = [MEMORY[0x1E695DF00] date];
    [v15 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138544130;
    v40 = v28;
    v41 = 2114;
    v42 = v29;
    v43 = 2112;
    v44 = v9;
    v45 = 2048;
    v46 = v30;
    v17 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v18 = v11;
    v19 = 42;
    goto LABEL_16;
  }

  if (v8)
  {
    v20 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v20)
      {
        v21 = *(a1 + 32);
        v22 = *(a1 + 40);
        v15 = [MEMORY[0x1E695DF00] date];
        [v15 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138544386;
        v40 = v21;
        v41 = 2114;
        v42 = v22;
        v43 = 2114;
        v44 = v8;
        v45 = 2114;
        v46 = v7;
        v47 = 2048;
        v48 = v23;
        _os_log_error_impl(&dword_1A2860000, v11, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v20)
    {
      __MRMediaRemoteGetPickedRoutedVolumeControlCapabilities_block_invoke_cold_1(a1, v8, v11);
    }

    goto LABEL_22;
  }

  v24 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v24)
    {
      goto LABEL_22;
    }

    v31 = *(a1 + 32);
    v32 = *(a1 + 40);
    v15 = [MEMORY[0x1E695DF00] date];
    [v15 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138543874;
    v40 = v31;
    v41 = 2114;
    v42 = v32;
    v43 = 2048;
    v44 = v33;
    v17 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v18 = v11;
    v19 = 32;
    goto LABEL_16;
  }

  if (v24)
  {
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v15 = [MEMORY[0x1E695DF00] date];
    [v15 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138544130;
    v40 = v25;
    v41 = 2114;
    v42 = v26;
    v43 = 2114;
    v44 = v7;
    v45 = 2048;
    v46 = v27;
    v17 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __MRMediaRemoteGetPickedRoutedVolumeControlCapabilities_block_invoke_82;
  v36[3] = &unk_1E769ACB8;
  v34 = *(a1 + 56);
  v37 = *(a1 + 64);
  v38 = a3;
  dispatch_async(v34, v36);

  v35 = *MEMORY[0x1E69E9840];
}

uint64_t MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(int a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (!a1)
  {
    v4 = @"None";
LABEL_12:
    [v3 addObject:v4];
    goto LABEL_13;
  }

  if (a1)
  {
    [v2 addObject:@"Relative"];
    if ((a1 & 2) == 0)
    {
LABEL_4:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v3 addObject:@"Absolute"];
  if ((a1 & 4) == 0)
  {
LABEL_5:
    if ((a1 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_10:
  [v3 addObject:@"Adjustment"];
  if ((a1 & 8) != 0)
  {
LABEL_11:
    v4 = @"Mute";
    goto LABEL_12;
  }

LABEL_13:
  v5 = [v3 componentsJoinedByString:@" | "];

  return v5;
}

uint64_t OUTLINED_FUNCTION_13_0(void *a1, const char *a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);

  return [a1 countByEnumeratingWithState:va objects:va1 count:16];
}

void OUTLINED_FUNCTION_14(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_6(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 48);
  return result;
}

uint64_t __MRMediaRemoteGetMediaPlaybackVolumeForOrigin_block_invoke_117(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(*(a1 + 40));
  }

  return result;
}

uint64_t __MRMediaRemoteGetPickedRoutedVolumeControlCapabilities_block_invoke_82(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

BOOL OUTLINED_FUNCTION_31(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

id MRCreateProtobufFromXPCMessage(void *a1)
{
  v1 = MRCreateDataFromXPCMessage(a1, "MRXPC_PROTOBUF_DATA_KEY");
  if (v1)
  {
    v2 = [MRProtocolMessage protocolMessageWithProtobufData:v1 error:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _MRMediaRemoteMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v41) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v41 & 0x7F) << v6;
      if ((v41 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 864) |= 4u;
        while (1)
        {
          LOBYTE(v41) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v41 & 0x7F) << v14;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_356:
            v40 = 752;
            goto LABEL_361;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_356;
      case 2u:
        v22 = PBReaderReadString();
        v23 = 560;
        goto LABEL_233;
      case 3u:
        v22 = PBReaderReadString();
        v23 = 48;
        goto LABEL_233;
      case 4u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 864) |= 2u;
        while (1)
        {
          LOBYTE(v41) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v41 & 0x7F) << v24;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v12 = v25++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_360;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v26;
        }

LABEL_360:
        v40 = 160;
LABEL_361:
        *(a1 + v40) = v20;
        goto LABEL_350;
      case 5u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 864) |= 1u;
        while (1)
        {
          LOBYTE(v41) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v41 & 0x7F) << v30;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_365;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v32;
        }

LABEL_365:
        *(a1 + 8) = v36;
        goto LABEL_350;
      case 6u:
        v21 = objc_alloc_init(_MRSendCommandMessageProtobuf);
        objc_storeStrong((a1 + 584), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSendCommandMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 7u:
        v21 = objc_alloc_init(_MRSendCommandResultMessageProtobuf);
        objc_storeStrong((a1 + 592), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSendCommandResultMessageProtobufReadFrom(&v21->super.super.isa, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 8u:
        v21 = objc_alloc_init(_MRGetStateMessageProtobuf);
        objc_storeStrong((a1 + 216), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRGetStateMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 9u:
        v21 = objc_alloc_init(_MRSetStateMessageProtobuf);
        v38 = 712;
        goto LABEL_272;
      case 0xAu:
        v21 = objc_alloc_init(_MRSetArtworkMessageProtobuf);
        objc_storeStrong((a1 + 648), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSetArtworkMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0xBu:
        v21 = objc_alloc_init(_MRRegisterHIDDeviceMessageProtobuf);
        objc_storeStrong((a1 + 488), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRRegisterHIDDeviceMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0xCu:
        v21 = objc_alloc_init(_MRRegisterHIDDeviceResultMessageProtobuf);
        objc_storeStrong((a1 + 496), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRRegisterHIDDeviceResultMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0xDu:
        v21 = objc_alloc_init(_MRSendHIDEventMessageProtobuf);
        objc_storeStrong((a1 + 600), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSendHIDEventMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0xEu:
        v21 = objc_alloc_init(_MRSendHIDReportMessageProtobuf);
        objc_storeStrong((a1 + 608), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSendHIDReportMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0xFu:
        v21 = objc_alloc_init(_MRSendVirtualTouchEventMessageProtobuf);
        objc_storeStrong((a1 + 632), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSendVirtualTouchEventMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x10u:
        v21 = objc_alloc_init(_MRNotificationMessageProtobuf);
        objc_storeStrong((a1 + 336), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRNotificationMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x11u:
        v21 = objc_alloc_init(_MRPlaybackQueueProtobuf);
        objc_storeStrong((a1 + 80), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRPlaybackQueueProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x14u:
        v21 = objc_alloc_init(_MRDeviceInfoMessageProtobuf);
        objc_storeStrong((a1 + 120), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRDeviceInfoMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x15u:
        v21 = objc_alloc_init(_MRClientUpdatesConfigurationProtobuf);
        objc_storeStrong((a1 + 56), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRClientUpdatesConfigurationProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x16u:
        v21 = objc_alloc_init(_MRVolumeControlAvailabilityProtobuf);
        objc_storeStrong((a1 + 304), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRVolumeControlAvailabilityProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x17u:
        v21 = objc_alloc_init(_MRGameControllerMessageProtobuf);
        objc_storeStrong((a1 + 176), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRGameControllerMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x18u:
        v21 = objc_alloc_init(_MRRegisterGameControllerMessageProtobuf);
        objc_storeStrong((a1 + 472), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRRegisterGameControllerMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x19u:
        v21 = objc_alloc_init(_MRRegisterGameControllerResponseMessageProtobuf);
        objc_storeStrong((a1 + 480), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRRegisterGameControllerResponseMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x1Au:
        v21 = objc_alloc_init(_MRUnregisterGameControllerMessageProtobuf);
        objc_storeStrong((a1 + 768), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRUnregisterGameControllerMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x1Bu:
        v21 = objc_alloc_init(_MRRegisterForGameControllerEventsMessageProtobuf);
        objc_storeStrong((a1 + 464), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRRegisterForGameControllerEventsMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x1Cu:
        v21 = objc_alloc_init(_MRKeyboardMessageProtobuf);
        objc_storeStrong((a1 + 296), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRKeyboardMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x1Du:
        v21 = objc_alloc_init(_MRGetKeyboardSessionProtobuf);
        objc_storeStrong((a1 + 200), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRGetKeyboardSessionProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x1Eu:
        v21 = objc_alloc_init(_MRTextInputMessageProtobuf);
        objc_storeStrong((a1 + 736), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRTextInputMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x1Fu:
        v21 = objc_alloc_init(_MRGetVoiceInputDevicesMessageProtobuf);
        objc_storeStrong((a1 + 224), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRGetVoiceInputDevicesMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x20u:
        v21 = objc_alloc_init(_MRGetVoiceInputDevicesResponseMessageProtobuf);
        objc_storeStrong((a1 + 232), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRGetVoiceInputDevicesResponseMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x21u:
        v21 = objc_alloc_init(_MRRegisterVoiceInputDeviceMessageProtobuf);
        objc_storeStrong((a1 + 504), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRRegisterVoiceInputDeviceMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x22u:
        v21 = objc_alloc_init(_MRRegisterVoiceInputDeviceResponseMessageProtobuf);
        objc_storeStrong((a1 + 512), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRRegisterVoiceInputDeviceResponseMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x23u:
        v21 = objc_alloc_init(_MRSetRecordingStateMessageProtobuf);
        objc_storeStrong((a1 + 704), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSetRecordingStateMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x24u:
        v21 = objc_alloc_init(_MRSendVoiceInputMessageProtobuf);
        objc_storeStrong((a1 + 640), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSendVoiceInputMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x25u:
        v21 = objc_alloc_init(_MRPlaybackQueueRequestProtobuf);
        objc_storeStrong((a1 + 352), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRPlaybackQueueRequestProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x26u:
        v21 = objc_alloc_init(_MRTransactionMessageProtobuf);
        objc_storeStrong((a1 + 744), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRTransactionMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x27u:
        v21 = objc_alloc_init(_MRCryptoPairingMessageProtobuf);
        objc_storeStrong((a1 + 112), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRCryptoPairingMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x28u:
        v21 = objc_alloc_init(_MRGameControllerPropertiesMessageProtobuf);
        objc_storeStrong((a1 + 184), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRGameControllerPropertiesMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x29u:
        v21 = objc_alloc_init(_MRSetReadyStateMessageProtobuf);
        objc_storeStrong((a1 + 456), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSetReadyStateMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x2Au:
        v21 = objc_alloc_init(_MRSetConnectionStateMessageProtobuf);
        objc_storeStrong((a1 + 72), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSetConnectionStateMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x2Bu:
        v21 = objc_alloc_init(_MRSendButtonEventMessageProtobuf);
        objc_storeStrong((a1 + 576), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSendButtonEventMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x2Cu:
        v21 = objc_alloc_init(_MRSetHiliteModeMessageProtobuf);
        objc_storeStrong((a1 + 672), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSetHiliteModeMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x2Du:
        v21 = objc_alloc_init(_MRWakeDeviceMessageProtobuf);
        objc_storeStrong((a1 + 856), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRWakeDeviceMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x2Eu:
        v21 = objc_alloc_init(_MRGenericMessageProtobuf);
        objc_storeStrong((a1 + 192), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRGenericMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x2Fu:
        v21 = objc_alloc_init(_MRSendPackedVirtualTouchEventMessageProtobuf);
        objc_storeStrong((a1 + 624), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSendPackedVirtualTouchEventMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x30u:
        v21 = objc_alloc_init(_MRSendLyricsEventMessageProtobuf);
        objc_storeStrong((a1 + 616), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSendLyricsEventMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x32u:
        v21 = objc_alloc_init(_MRSetNowPlayingClientMessageProtobuf);
        objc_storeStrong((a1 + 688), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSetNowPlayingClientMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x33u:
        v21 = objc_alloc_init(_MRSetNowPlayingPlayerMessageProtobuf);
        objc_storeStrong((a1 + 696), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSetNowPlayingPlayerMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x34u:
        v21 = objc_alloc_init(_MRAVModifyOutputContextRequestProtobuf);
        objc_storeStrong((a1 + 328), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRAVModifyOutputContextRequestProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x35u:
        v21 = objc_alloc_init(_MRGetVolumeMessageProtobuf);
        objc_storeStrong((a1 + 256), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRGetVolumeMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x36u:
        v21 = objc_alloc_init(_MRGetVolumeResultMessageProtobuf);
        objc_storeStrong((a1 + 280), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRGetVolumeResultMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x37u:
        v21 = objc_alloc_init(_MRSetVolumeMessageProtobuf);
        objc_storeStrong((a1 + 720), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSetVolumeMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x38u:
        v21 = objc_alloc_init(_MRVolumeDidChangeMessageProtobuf);
        objc_storeStrong((a1 + 840), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRVolumeDidChangeMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x39u:
        v21 = objc_alloc_init(_MRRemoveClientMessageProtobuf);
        objc_storeStrong((a1 + 528), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRRemoveClientMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x3Au:
        v21 = objc_alloc_init(_MRRemovePlayerMessageProtobuf);
        objc_storeStrong((a1 + 552), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRRemovePlayerMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x3Bu:
        v21 = objc_alloc_init(_MRUpdateClientMessageProtobuf);
        objc_storeStrong((a1 + 784), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRUpdateClientMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x3Cu:
        v21 = objc_alloc_init(_MRUpdateContentItemMessageProtobuf);
        objc_storeStrong((a1 + 800), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRUpdateContentItemMessageProtobufReadFrom(&v21->super.super.isa, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x3Du:
        v21 = objc_alloc_init(_MRUpdateContentItemArtworkMessageProtobuf);
        objc_storeStrong((a1 + 792), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRUpdateContentItemArtworkMessageProtobufReadFrom(&v21->super.super.isa, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x3Eu:
        v21 = objc_alloc_init(_MRUpdatePlayerMessageProtobuf);
        objc_storeStrong((a1 + 824), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRUpdatePlayerMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x3Fu:
        v21 = objc_alloc_init(_MRPromptForRouteAuthorizationMessageProtobuf);
        objc_storeStrong((a1 + 440), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRPromptForRouteAuthorizationMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x40u:
        v21 = objc_alloc_init(_MRPromptForRouteAuthorizationResponseMessageProtobuf);
        objc_storeStrong((a1 + 448), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRPromptForRouteAuthorizationResponseMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x41u:
        v21 = objc_alloc_init(_MRPresentRouteAuthorizationStatusMessageProtobuf);
        objc_storeStrong((a1 + 432), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRPresentRouteAuthorizationStatusMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x42u:
        v21 = objc_alloc_init(_MRGetVolumeControlCapabilitiesMessageProtobuf);
        objc_storeStrong((a1 + 240), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRGetVolumeControlCapabilitiesMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x43u:
        v21 = objc_alloc_init(_MRGetVolumeControlCapabilitiesResultMessageProtobuf);
        objc_storeStrong((a1 + 248), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRGetVolumeControlCapabilitiesResultMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x44u:
        v21 = objc_alloc_init(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf);
        objc_storeStrong((a1 + 832), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRVolumeControlCapabilitiesDidChangeMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x45u:
        v21 = objc_alloc_init(_MRUpdateOutputDevicesMessageProtobuf);
        objc_storeStrong((a1 + 816), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRUpdateOutputDevicesMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x46u:
        v21 = objc_alloc_init(_MRRemoveOutputDevicesMessageProtobuf);
        objc_storeStrong((a1 + 544), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRRemoveOutputDevicesMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x47u:
        v21 = objc_alloc_init(_MRRemoteTextInputMessageProtobuf);
        objc_storeStrong((a1 + 520), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRRemoteTextInputMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x48u:
        v21 = objc_alloc_init(_MRGetRemoteTextInputSessionProtobuf);
        objc_storeStrong((a1 + 208), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRGetRemoteTextInputSessionProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x49u:
        v21 = objc_alloc_init(_MRPlaybackSessionRequestMessageProtobuf);
        objc_storeStrong((a1 + 400), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRPlaybackSessionRequestMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x4Au:
        v21 = objc_alloc_init(_MRPlaybackSessionResponseMessageProtobuf);
        objc_storeStrong((a1 + 408), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRPlaybackSessionResponseMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x4Bu:
        v21 = objc_alloc_init(_MRSetStateMessageProtobuf);
        v38 = 664;
LABEL_272:
        objc_storeStrong((a1 + v38), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSetStateMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x4Cu:
        v21 = objc_alloc_init(_MRPlaybackSessionMigrateRequestMessageProtobuf);
        objc_storeStrong((a1 + 384), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRPlaybackSessionMigrateRequestMessageProtobufReadFrom(&v21->super.super.isa, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x4Du:
        v21 = objc_alloc_init(_MRPlaybackSessionMigrateResponseMessageProtobuf);
        objc_storeStrong((a1 + 392), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRPlaybackSessionMigrateResponseMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x4Eu:
        v22 = PBReaderReadString();
        v23 = 168;
        goto LABEL_233;
      case 0x4Fu:
        v21 = objc_alloc_init(_MRPlaybackSessionMigrateBeginMessageProtobuf);
        objc_storeStrong((a1 + 360), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRPlaybackSessionMigrateBeginMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x50u:
        v21 = objc_alloc_init(_MRPlaybackSessionMigrateEndMessageProtobuf);
        objc_storeStrong((a1 + 368), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRPlaybackSessionMigrateEndMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x51u:
        v21 = objc_alloc_init(_MRUpdateActiveSystemEndpointMessageProtobuf);
        objc_storeStrong((a1 + 776), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRUpdateActiveSystemEndpointMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x52u:
        v21 = objc_alloc_init(_MRSetDiscoveryModeProtobufMessage);
        objc_storeStrong((a1 + 128), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSetDiscoveryModeProtobufMessageReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x53u:
        v21 = objc_alloc_init(_MRUpdateEndpointsMessageProtobuf);
        objc_storeStrong((a1 + 808), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRUpdateEndpointsMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x54u:
        v21 = objc_alloc_init(_MRRemoveEndpointsMessageProtobuf);
        objc_storeStrong((a1 + 536), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRRemoveEndpointsMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x55u:
        v22 = PBReaderReadString();
        v23 = 760;
LABEL_233:
        v37 = *(a1 + v23);
        *(a1 + v23) = v22;

        goto LABEL_350;
      case 0x56u:
        v21 = objc_alloc_init(_MRPlayerClientPropertiesMessageProtobuf);
        objc_storeStrong((a1 + 424), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRPlayerClientPropertiesMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x57u:
        v21 = objc_alloc_init(_MROriginClientPropertiesMessageProtobuf);
        objc_storeStrong((a1 + 344), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MROriginClientPropertiesMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x58u:
        v21 = objc_alloc_init(_MRAudioFadeMessageProtobuf);
        objc_storeStrong((a1 + 32), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRAudioFadeMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x59u:
        v21 = objc_alloc_init(_MRAudioFadeResponseMessageProtobuf);
        objc_storeStrong((a1 + 40), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRAudioFadeResponseMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x5Au:
        v21 = objc_alloc_init(_MRDiscoveryUpdateEndpointsProtobufMessage);
        objc_storeStrong((a1 + 136), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRDiscoveryUpdateEndpointsProtobufMessageReadFrom(&v21->super.super.isa, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x5Bu:
        v21 = objc_alloc_init(_MRDiscoveryUpdateOutputDevicesProtobufMessage);
        objc_storeStrong((a1 + 144), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRDiscoveryUpdateOutputDevicesProtobufMessageReadFrom(&v21->super.super.isa, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x5Cu:
        v21 = objc_alloc_init(_MRSetListeningModeMessageProtobuf);
        objc_storeStrong((a1 + 680), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSetListeningModeMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x5Du:
        v21 = objc_alloc_init(_MRErrorProtobuf);
        objc_storeStrong((a1 + 152), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRErrorProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x5Eu:
        v21 = objc_alloc_init(_MRConfigureConnectionMessageProtobuf);
        objc_storeStrong((a1 + 64), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRConfigureConnectionMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x5Fu:
        v21 = objc_alloc_init(_MRCreateHostedEndpointRequestProtobuf);
        objc_storeStrong((a1 + 96), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRCreateHostedEndpointRequestProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x60u:
        v21 = objc_alloc_init(_MRCreateHostedEndpointResponseProtobuf);
        objc_storeStrong((a1 + 104), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRCreateHostedEndpointResponseProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x61u:
        v21 = objc_alloc_init(_MRAdjustVolumeMessageProtobuf);
        objc_storeStrong((a1 + 16), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRAdjustVolumeMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x62u:
        v21 = objc_alloc_init(_MRGetVolumeMutedMessageProtobuf);
        objc_storeStrong((a1 + 264), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRGetVolumeMutedMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x63u:
        v21 = objc_alloc_init(_MRGetVolumeMutedResultMessageProtobuf);
        objc_storeStrong((a1 + 272), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRGetVolumeMutedResultMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x64u:
        v21 = objc_alloc_init(_MRSetVolumeMutedMessageProtobuf);
        objc_storeStrong((a1 + 728), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSetVolumeMutedMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x65u:
        v21 = objc_alloc_init(_MRVolumeMutedDidChangeMessageProtobuf);
        objc_storeStrong((a1 + 848), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRVolumeMutedDidChangeMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x66u:
        v21 = objc_alloc_init(_MRSetConversationDetectionEnabledMessageProtobuf);
        objc_storeStrong((a1 + 656), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRSetConversationDetectionEnabledMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x67u:
        v21 = objc_alloc_init(_MRPlayerClientParticipantsUpdateMessageProtobuf);
        objc_storeStrong((a1 + 416), v21);
        v41 = 0;
        v42 = 0;
        if (PBReaderPlaceMark() && (_MRPlayerClientParticipantsUpdateMessageProtobufReadFrom(&v21->super.super.isa, a2) & 1) != 0)
        {
          goto LABEL_349;
        }

        goto LABEL_367;
      case 0x68u:
        v21 = objc_alloc_init(_MRRequestGroupSessionMessageProtobuf);
        objc_storeStrong((a1 + 568), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRRequestGroupSessionMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x69u:
        v21 = objc_alloc_init(_MRCreateApplicationConnectionMessageProtobuf);
        objc_storeStrong((a1 + 88), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRCreateApplicationConnectionMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x6Au:
        v21 = objc_alloc_init(_MRApplicationConnectionProtocolMessageProtobuf);
        objc_storeStrong((a1 + 24), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRApplicationConnectionProtocolMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x6Bu:
        v21 = objc_alloc_init(_MRApplicationConnectionContextProtobuf);
        objc_storeStrong((a1 + 288), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRApplicationConnectionContextProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x6Cu:
        v21 = objc_alloc_init(_MRMicrophoneConnectionRequestMessageProtobuf);
        objc_storeStrong((a1 + 312), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRMicrophoneConnectionRequestMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x6Du:
        v21 = objc_alloc_init(_MRMicrophoneConnectionResponseMessageProtobuf);
        objc_storeStrong((a1 + 320), v21);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || (_MRMicrophoneConnectionResponseMessageProtobufReadFrom(v21, a2) & 1) == 0)
        {
          goto LABEL_367;
        }

        goto LABEL_349;
      case 0x6Eu:
        v21 = objc_alloc_init(_MRPlaybackSessionMigratePostMessageProtobuf);
        objc_storeStrong((a1 + 376), v21);
        v41 = 0;
        v42 = 0;
        if (PBReaderPlaceMark() && (_MRPlaybackSessionMigratePostMessageProtobufReadFrom(v21, a2) & 1) != 0)
        {
LABEL_349:
          PBReaderRecallMark();

LABEL_350:
          v4 = a2;
          continue;
        }

LABEL_367:

        return 0;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_350;
    }
  }
}

uint64_t _MRGetVolumeMutedResultMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void __MRMediaRemoteServiceGetSystemIsMuted_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v7 = v3;
    v4 = [v3 error];

    v5 = *(a1 + 32);
    if (v4)
    {
      v6 = [v7 error];
      (*(v5 + 16))(v5, 0, v6);
    }

    else
    {
      (*(v5 + 16))(v5, [v7 isMuted], 0);
    }

    v3 = v7;
  }
}

void __MRMediaRemoteGetSystemVolumeMuted_block_invoke(void *a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _MRLogForCategory(0xAuLL);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __MRMediaRemoteGetSystemVolumeMuted_block_invoke_cold_1(a1, v5, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    if (a2)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = [MEMORY[0x1E695DF00] date];
    [v10 timeIntervalSinceDate:a1[5]];
    v14 = 138544130;
    v15 = @"getSystemIsMuted";
    v16 = 2114;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2048;
    v21 = v11;
    _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", &v14, 0x2Au);
  }

  v12 = a1[6];
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v5);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t MRAVOutputContextCopyUniqueIdentifier(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 contextID];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

void MRMediaRemoteSetNowPlayingPlayer(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v5 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = a1;
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v10 = [v9 clientForPlayerPath:v8];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MRMediaRemoteSetNowPlayingPlayer_block_invoke;
  v13[3] = &unk_1E769AB50;
  v14 = v5;
  v15 = v6;
  v11 = v5;
  v12 = v6;
  [v10 updateActivePlayerPath:v8 completion:v13];
}

void __MRMediaRemoteSetNowPlayingPlayer_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __MRMediaRemoteSetNowPlayingPlayer_block_invoke_2;
    v6[3] = &unk_1E769AB28;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}