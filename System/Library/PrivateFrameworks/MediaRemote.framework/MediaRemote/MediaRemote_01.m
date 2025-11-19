void sub_1A2887808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MRMediaRemoteEndpointFeaturesDescription(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = v2;
  if (a1)
  {
    [v2 appendString:@"Audio|"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 appendString:@"Screen|"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 appendString:@"Video|"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  [v3 appendString:@"RemoteControl|"];
  if ((a1 & 0x10) != 0)
  {
LABEL_6:
    [v3 appendString:@"Companion|"];
  }

LABEL_7:
  if ([v3 hasSuffix:@"|"])
  {
    [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 1, 1}];
  }

  return v3;
}

CFStringRef MRMediaRemoteCopyRouteDiscoveryModeDescription(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"Unknown";
  }

  else
  {
    v1 = off_1E76A4BB0[a1];
  }

  return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
}

void sub_1A288842C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void MRMediaRemoteServiceGetHostedRoutingXPCEndpoint(void *a1, unsigned int a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (a3 && v7)
  {
    v9 = a1;
    v10 = a3;
    v11 = MRCreateXPCMessage(0x30000000000000DuLL);
    xpc_dictionary_set_int64(v11, "MRXPC_DISCOVERY_FEATURES_KEY", a2);
    v12 = [v9 connection];

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __MRMediaRemoteServiceGetHostedRoutingXPCEndpoint_block_invoke;
    handler[3] = &unk_1E769C4D0;
    v14 = v8;
    xpc_connection_send_message_with_reply(v12, v11, v10, handler);
  }
}

void sub_1A2888670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A28889C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MRMediaRemoteServiceGetHostedRoutingXPCEndpoint_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E9E18];
  v5 = a2;
  v6 = v5;
  if (a2 == v4 || a2 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();

    v10 = 0;
    uint64 = 1;
LABEL_8:
    v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:uint64];
    goto LABEL_9;
  }

  v10 = xpc_dictionary_get_value(v5, "MRXPC_CUSTOM_XPC_ENDPOINT_KEY");
  uint64 = xpc_dictionary_get_uint64(v6, "MRXPC_ERROR_CODE_KEY");

  if (uint64 > 0)
  {
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:
  (*(*(a1 + 32) + 16))();
}

void sub_1A28892FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void MRAVEndpointGetOutputDeviceUIDVolumeControlCapabilities(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MRAVEndpointGetOutputDeviceUIDVolumeControlCapabilities_block_invoke;
  v11[3] = &unk_1E769E1B8;
  v10 = v8;
  v12 = v10;
  [a1 outputDeviceVolumeControlCapabilities:a2 queue:v7 completion:v11];

  objc_autoreleasePoolPop(v9);
}

uint64_t OUTLINED_FUNCTION_21_0(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 40);
  return result;
}

void sub_1A2889688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2889B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2889C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MRMediaRemoteVolumeControlCapabilitiesDescription(int a1)
{
  v1 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(a1);

  return v1;
}

void MRAVEndpointGetOutputDeviceUIDVolume(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MRAVEndpointGetOutputDeviceUIDVolume_block_invoke;
  v11[3] = &unk_1E76A0540;
  v10 = v8;
  v12 = v10;
  [a1 outputDeviceVolume:a2 queue:v7 completion:v11];

  objc_autoreleasePoolPop(v9);
}

id OUTLINED_FUNCTION_8_2(void *a1)
{
  v3 = *(*(*(v1 + 48) + 8) + 24);

  return a1;
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

void OUTLINED_FUNCTION_8_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_8_6(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  return result;
}

void sub_1A2889FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MRActiveEndpointTypeForCurrentApplication()
{
  if (MRActiveEndpointTypeForCurrentApplication_onceToken != -1)
  {
    MRAVEndpointResolveActiveSystemEndpointWithTimeout_cold_1();
  }

  return MRActiveEndpointTypeForCurrentApplication_type;
}

void __MRActiveEndpointTypeForCurrentApplication_block_invoke()
{
  v0 = +[MRUserSettings currentSettings];
  v1 = [v0 supportGroupSessionActiveEndpoint];

  if (v1)
  {
    v2 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v2 bundleIdentifier];

    MRActiveEndpointTypeForCurrentApplication_type = MRActiveEndpointTypeForBundleIdentifier(v3);
  }
}

void MRAVEndpointResolveActiveSystemEndpointWithType(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a3;
  v8 = a2;
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MRAVEndpointResolveActiveSystemEndpointWithType_block_invoke;
  v11[3] = &unk_1E76A1C38;
  v12 = v7;
  v10 = v7;
  [v9 resolveActiveSystemEndpointWithType:a1 timeout:v8 queue:v11 completion:a4];
}

uint64_t MRMediaRemoteActiveEndpointTypeCopyDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1E76A1C58[a1];
  }

  return [(__CFString *)v1 copy];
}

void _MRMediaRemoteRegisterForNowPlayingNotificationsEx(void *a1, uint64_t a2)
{
  v3 = a1;
  v5 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v4 = [v5 notificationClient];
  [v4 registerForNowPlayingNotificationsWithQueue:v3 force:a2];
}

void *MRNowPlayingPlayerPathGetOrigin(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerPathGetOrigin_cold_1();
    }
  }

  v2 = [v1 origin];

  return v2;
}

void MRMediaRemoteServiceGetActiveSystemEndpointUID(void *a1, int64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x300000000000010uLL);
  xpc_dictionary_set_int64(v10, "MRXPC_ROUTE_OPTIONS_KEY", a2);
  v11 = [v9 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetActiveSystemEndpointUID_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v14 = v7;
  v12 = v7;
  xpc_connection_send_message_with_reply(v11, v10, v8, handler);
}

void MRAddStringToXPCMessage(void *a1, id a2, const char *a3)
{
  if (a1 && a2)
  {
    v6 = a2;
    xdict = a1;
    xpc_dictionary_set_string(xdict, a3, [a2 UTF8String]);
  }
}

void *MRMediaRemoteGetLocalOrigin()
{
  v0 = +[MROrigin localOrigin];

  return v0;
}

uint64_t MROriginIsLocalOrigin(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MROriginIsLocalOrigin_cold_1();
    }
  }

  v2 = [v1 isLocal];

  return v2;
}

void __MRMediaRemoteServiceGetActiveSystemEndpointUID_block_invoke(uint64_t a1, void *a2)
{
  if (a2 == MEMORY[0x1E69E9E18] || a2 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    v4 = 0;
  }

  else
  {
    v4 = MRCreateStringFromXPCMessage(a2, "MRXPC_ROUTE_UID_KEY");
  }

  v5 = v4;
  (*(*(a1 + 32) + 16))();
  kdebug_trace();
}

uint64_t MRNowPlayingClientCreate(uint64_t a1, uint64_t a2)
{
  v4 = [MRClient alloc];

  return [(MRClient *)v4 initWithProcessIdentifier:a1 bundleIdentifier:a2];
}

uint64_t MRNowPlayingPlayerCreate(uint64_t a1, uint64_t a2)
{
  v4 = [MRPlayer alloc];

  return [(MRPlayer *)v4 initWithIdentifier:a1 displayName:a2];
}

uint64_t MRNowPlayingPlayerPathCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MRPlayerPath alloc];

  return [(MRPlayerPath *)v6 initWithOrigin:a1 client:a2 player:a3];
}

void *MRNowPlayingPlayerPathGetClient(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerPathGetClient_cold_1();
    }
  }

  v2 = [v1 client];

  return v2;
}

void *MRNowPlayingClientGetBundleIdentifier(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingClientGetBundleIdentifier_cold_1();
    }
  }

  v2 = [v1 bundleIdentifier];

  return v2;
}

void *MRNowPlayingPlayerPathGetPlayer(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerPathGetPlayer_cold_1();
    }
  }

  v2 = [v1 player];

  return v2;
}

void *MRNowPlayingPlayerGetIdentifier(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerGetIdentifier_cold_1();
    }
  }

  v2 = [v1 identifier];

  return v2;
}

uint64_t MRNowPlayingPlayerPathCopy(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerPathCopy_cold_1();
    }
  }

  v2 = [v1 copy];

  return v2;
}

uint64_t MRNowPlayingClientGetProcessIdentifier(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingClientGetProcessIdentifier_cold_1();
    }
  }

  v2 = [v1 processIdentifier];

  return v2;
}

uint64_t MRMediaRemoteAddPlayerPathInvalidationHandler(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[MRNowPlayingPlayerPathInvalidationHandler alloc] initWithPlayerPath:a1 invalidateImmediatlyIfInvalid:1 queue:v6 invalidationCallback:v5];

  v8 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v9 = [v8 addPlayerPathInvalidationHandler:v7];

  return v9;
}

void MRMediaRemoteNowPlayingResolvePlayerPath(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MRMediaRemoteNowPlayingResolvePlayerPath_block_invoke;
  v7[3] = &unk_1E769C590;
  v8 = v5;
  v6 = v5;
  MRMediaRemoteNowPlayingResolvePlayerPathWithID(a1, 0, 1, a2, v7);
}

uint64_t __MRMediaRemoteNowPlayingResolvePlayerPathWithID_block_invoke_5(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 client];
  [v5 resolvePlaceholdersForDeviceInfo:v4];

  v6 = a1[4];
  v7 = a1[6];
  v8 = *(a1[5] + 16);

  return v8();
}

uint64_t MRAVOutputContextCopyOutputDevices(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 outputDevices];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRAVOutputContextCopyPredictedOutputDevice(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 predictedOutputDevice];
  objc_autoreleasePoolPop(v2);
  return v3;
}

void *MRComputeBaseRouteUID(void *a1, _DWORD *a2)
{
  v3 = a1;
  v4 = [v3 componentsSeparatedByString:@"-"];
  if ([v4 count] < 2)
  {
    v9 = 0;
    v8 = 0;
    if (a2)
    {
LABEL_8:
      *a2 = v9;
    }
  }

  else
  {
    v5 = [v4 lastObject];
    v6 = [&unk_1F1577B40 objectForKeyedSubscript:v5];
    if (v6)
    {
      v7 = [v4 subarrayWithRange:{0, objc_msgSend(v4, "count") - 1}];
      v8 = [v7 componentsJoinedByString:@"-"];

      v9 = [v6 unsignedIntValue];
    }

    else
    {
      v8 = v3;
      v9 = 0;
    }

    if (a2)
    {
      goto LABEL_8;
    }
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v3;
  }

  v11 = v10;

  return v10;
}

id MRLogCategoryDiscovery()
{
  if (MRLogCategoryDiscovery__once != -1)
  {
    MRLogCategoryDiscovery_cold_1();
  }

  v1 = MRLogCategoryDiscovery__log;

  return v1;
}

uint64_t MRAVOutputDeviceCopyName(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 name];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRAVOutputDeviceCopyModelSpecificInformation(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 modelSpecificInfo];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRAVOutputDeviceHasBatteryLevel(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 hasBatteryLevel];
  objc_autoreleasePoolPop(v2);
  return v3;
}

void _processNotification(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = _MRLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = a3;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRMediaSuggestionPreferences] Updating because of notification %@.", &v8, 0xCu);
  }

  v6 = a2;
  if ([(MRMediaSuggestionPreferences *)v6 _updateGlobalToggleState])
  {
    [(MRMediaSuggestionPreferences *)v6 _notifyListener];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1A288B8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A288BC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A288C598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MRLogCategoryDiscoveryUpdates()
{
  if (MRLogCategoryDiscoveryUpdates_onceToken != -1)
  {
    MRLogCategoryDiscoveryUpdates_cold_1();
  }

  v1 = MRLogCategoryDiscoveryUpdates_log;

  return v1;
}

void __MRLogCategoryDiscoveryUpdates_block_invoke()
{
  v0 = os_log_create("com.apple.amp.mediaremote.verbose", "Discovery");
  v1 = MRLogCategoryDiscoveryUpdates_log;
  MRLogCategoryDiscoveryUpdates_log = v0;
}

void sub_1A288CC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_6_0(uint64_t a1, ...)
{
  va_start(va, a1);

  [(MRMediaSuggestion *)v2 _playIntent:v1 completion:va];
}

void OUTLINED_FUNCTION_6_8(uint64_t a1)
{
  v2 = *(a1 + 16);

  dispatch_assert_queue_V2(v2);
}

uint64_t __MRMediaRemoteNowPlayingResolvePlayerPath_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRMediaRemoteSetWantsSupportedCommandsChangedNotifications(int a1)
{
  v2 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v3 = MRMediaRemoteSetWantsSupportedCommandsChangedNotifications___supportedCommandsObservers;
  if (a1)
  {
    ++MRMediaRemoteSetWantsSupportedCommandsChangedNotifications___supportedCommandsObservers;
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  --MRMediaRemoteSetWantsSupportedCommandsChangedNotifications___supportedCommandsObservers;
  if (v3 == 1)
  {
LABEL_3:
    v5 = v2;
    v4 = [v2 notificationClient];
    [v4 setReceivesSupportedCommandsNotifications:a1 != 0];

    v2 = v5;
  }

LABEL_4:
}

__CFString *NSStringFromMRAVEndpointConnectionType(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E76A3080[a1];
  }
}

__CFString *MRAVOutputDeviceTypeCopyDescription(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E76A34A8[a1];
  }
}

__CFString *MRAVOutputDeviceSubtypeCopyDescription(unsigned int a1)
{
  if (a1 > 0x15)
  {
    return 0;
  }

  else
  {
    return off_1E76A34D8[a1];
  }
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t result, float a2)
{
  *(v3 - 160) = a2;
  v4 = v3 - 160;
  *(v4 + 4) = v2;
  *(v3 - 148) = 2114;
  *(v4 + 14) = result;
  *(v3 - 138) = 2112;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1)
{

  return [v2 postNotificationName:v3 object:v1 userInfo:a1];
}

uint64_t OUTLINED_FUNCTION_4_4(void *a1, const char *a2)
{
  v4 = *(v2 + 48);

  return [a1 timeIntervalSinceDate:v4];
}

void OUTLINED_FUNCTION_4_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_DEFAULT, a4, (v5 - 32), 2u);
}

void OUTLINED_FUNCTION_4_10(uint64_t a1@<X8>)
{
  v3 = v2 - 160;
  *(v3 + 4) = a1;
  *(v2 - 148) = 2114;
  *(v3 + 14) = v1;
  *(v2 - 138) = 2112;
}

__n128 OUTLINED_FUNCTION_4_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  *(v11 - 144) = a9.n128_u32[0];
  *(v9 + 4) = v10;
  return result;
}

uint64_t _MRDiscoverySessionConfigurationProtobufReadFrom(uint64_t a1, void *a2)
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
        v59 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v59 & 0x7F) << v5;
        if ((v59 & 0x80) == 0)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 != 7)
          {
            if (v13 != 8)
            {
LABEL_85:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_105;
            }

            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 40) |= 8u;
            while (1)
            {
              v61 = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v61 & 0x7F) << v24;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                LOBYTE(v23) = 0;
                goto LABEL_103;
              }
            }

            v23 = (v26 != 0) & ~[a2 hasError];
LABEL_103:
            v57 = 37;
            goto LABEL_104;
          }

          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            v65 = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v65 & 0x7F) << v49;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v11 = v50++ >= 9;
            if (v11)
            {
              v36 = 0;
              goto LABEL_98;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v51;
          }

LABEL_98:
          v56 = 32;
          goto LABEL_99;
        }

        if (v13 == 5)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 40) |= 0x20u;
          while (1)
          {
            v62 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v62 & 0x7F) << v37;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              LOBYTE(v23) = 0;
              goto LABEL_92;
            }
          }

          v23 = (v39 != 0) & ~[a2 hasError];
LABEL_92:
          v57 = 39;
LABEL_104:
          *(a1 + v57) = v23;
          goto LABEL_105;
        }

        if (v13 != 6)
        {
          goto LABEL_85;
        }

        v14 = PBReaderReadString();
        v15 = 16;
      }

      else
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 40) |= 0x10u;
            while (1)
            {
              v64 = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v64 & 0x7F) << v43;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                LOBYTE(v23) = 0;
                goto LABEL_94;
              }
            }

            v23 = (v45 != 0) & ~[a2 hasError];
LABEL_94:
            v57 = 38;
          }

          else
          {
            if (v13 != 4)
            {
              goto LABEL_85;
            }

            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 40) |= 4u;
            while (1)
            {
              v63 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v63 & 0x7F) << v17;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                LOBYTE(v23) = 0;
                goto LABEL_101;
              }
            }

            v23 = (v19 != 0) & ~[a2 hasError];
LABEL_101:
            v57 = 36;
          }

          goto LABEL_104;
        }

        if (v13 == 1)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v60 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v60 & 0x7F) << v30;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v36 = 0;
              goto LABEL_90;
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

LABEL_90:
          v56 = 8;
LABEL_99:
          *(a1 + v56) = v36;
          goto LABEL_105;
        }

        if (v13 != 2)
        {
          goto LABEL_85;
        }

        v14 = PBReaderReadString();
        v15 = 24;
      }

      v16 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_105:
      v58 = [a2 position];
    }

    while (v58 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void MRMediaRemoteGetSupportedCommandsForPlayer(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v5 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];

  v10 = [MEMORY[0x1E695DF00] date];
  v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"supportedCommands", v9];
  v12 = v11;
  if (a1)
  {
    [v11 appendFormat:@" for %@", a1];
  }

  v13 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v12;
    _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v14 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v15 = [v14 workerQueue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __MRMediaRemoteGetSupportedCommandsForPlayer_block_invoke;
  v21[3] = &unk_1E769B2A0;
  v22 = v9;
  v23 = v10;
  v24 = v5;
  v25 = v6;
  v16 = v6;
  v17 = v5;
  v18 = v10;
  v19 = v9;
  MRMediaRemoteNowPlayingResolvePlayerPath(a1, v15, v21);

  v20 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteGetPlaybackStateForPlayer(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];

  v9 = [MEMORY[0x1E695DF00] date];
  v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"playbackState", v8];
  v11 = v10;
  if (a1)
  {
    [v10 appendFormat:@" for %@", a1];
  }

  v12 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v11;
    _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v13 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v14 = [v13 workerQueue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __MRMediaRemoteGetPlaybackStateForPlayer_block_invoke;
  v20[3] = &unk_1E769AD08;
  v21 = v8;
  v22 = v9;
  v23 = v5;
  v24 = v6;
  v15 = v6;
  v16 = v5;
  v17 = v9;
  v18 = v8;
  MRMediaRemoteNowPlayingResolvePlayerPathWithID(a1, v18, 0, v14, v20);

  v19 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteGetSupportedCommandsForPlayer_block_invoke(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __MRMediaRemoteGetSupportedCommandsForPlayer_block_invoke_2;
  v21[3] = &unk_1E769B278;
  v6 = v5;
  v22 = v6;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v23 = v12;
  v24 = v11;
  v13 = MEMORY[0x1A58E3570](v21);
  if ([v6 isResolved])
  {
    v14 = [v6 isLocal];
    v15 = +[MRNowPlayingOriginClientManager sharedManager];
    v16 = v15;
    if (v14)
    {
      v17 = [v15 playerClientForPlayerPath:v6];

      v18 = [v17 supportedCommands];
      (v13)[2](v13, v18, 0);
    }

    else
    {
      v17 = [v15 playerClientRequestsForPlayerPath:v6];

      [v17 handleSupportedCommandsRequestWithCompletion:v13];
    }
  }

  else if (a3)
  {
    Error = MRMediaRemoteNowPlayingPlayerPathCreateError(v6);
    (v13)[2](v13, 0, Error);
  }

  else
  {
    v20 = MRGetSharedService();
    MRMediaRemoteServiceGetSupportedCommands(v20, v6, a1[6], v13);
  }
}

void sub_1A288F608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MRMediaRemoteGetSupportedCommandsForPlayer_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld commands", objc_msgSend(v5, "count")];
  v8 = *(a1 + 32);
  v9 = _MRLogForCategory(0xAuLL);
  v10 = v9;
  if (!v6 && v7)
  {
    v11 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v11)
      {
        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138544386;
        v41 = @"supportedCommands";
        v42 = 2114;
        v43 = v12;
        v44 = 2112;
        v45 = v7;
        v46 = 2114;
        v47 = v13;
        v48 = 2048;
        v49 = v15;
        v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v17 = v10;
        v18 = 52;
LABEL_16:
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v11)
    {
      goto LABEL_22;
    }

    v27 = *(a1 + 40);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138544130;
    v41 = @"supportedCommands";
    v42 = 2114;
    v43 = v27;
    v44 = 2112;
    v45 = v7;
    v46 = 2048;
    v47 = v28;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v17 = v10;
    v18 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v19 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (v19)
      {
        v21 = *(a1 + 32);
        v20 = *(a1 + 40);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138544386;
        v41 = @"supportedCommands";
        v42 = 2114;
        v43 = v20;
        v44 = 2114;
        v45 = v6;
        v46 = 2114;
        v47 = v21;
        v48 = 2048;
        v49 = v22;
        _os_log_error_impl(&dword_1A2860000, v10, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v19)
    {
      __MRMediaRemoteGetSupportedCommandsForPlayer_block_invoke_2_cold_1(a1);
    }

    goto LABEL_22;
  }

  v23 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (!v23)
    {
      goto LABEL_22;
    }

    v29 = *(a1 + 40);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138543874;
    v41 = @"supportedCommands";
    v42 = 2114;
    v43 = v29;
    v44 = 2048;
    v45 = v30;
    v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v17 = v10;
    v18 = 32;
    goto LABEL_16;
  }

  if (v23)
  {
    v25 = *(a1 + 32);
    v24 = *(a1 + 40);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138544130;
    v41 = @"supportedCommands";
    v42 = 2114;
    v43 = v24;
    v44 = 2114;
    v45 = v25;
    v46 = 2048;
    v47 = v26;
    v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MRMediaRemoteGetSupportedCommandsForPlayer_block_invoke_41;
  block[3] = &unk_1E769B250;
  v37 = v5;
  v31 = *(a1 + 56);
  v32 = *(a1 + 64);
  v38 = v6;
  v39 = v32;
  v33 = v6;
  v34 = v5;
  dispatch_async(v31, block);

  v35 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteGetPlaybackStateForPlayer_block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __MRMediaRemoteGetPlaybackStateForPlayer_block_invoke_2;
  v23[3] = &unk_1E769ACE0;
  v7 = v5;
  v24 = v7;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v25 = v13;
  v26 = v12;
  v14 = MEMORY[0x1A58E3570](v23);
  if ([v7 isResolved])
  {
    v15 = [v7 isLocal];
    v16 = +[MRNowPlayingOriginClientManager sharedManager];
    v17 = v16;
    if (v15)
    {
      v18 = [v16 playerClientForPlayerPath:v7];

      v19 = [v18 playbackState];
      if (v19)
      {
        v14[2](v14, v19, 0);
      }

      else
      {
        v21 = +[MRNowPlayingOriginClientManager sharedManager];
        v22 = [v21 playerClientRequestsForPlayerPath:v7];

        [v22 handlePlaybackStateRequestWithCompletion:v14];
      }
    }

    else
    {
      v18 = [v16 playerClientRequestsForPlayerPath:v7];

      [v18 handlePlaybackStateRequestWithCompletion:v14];
    }
  }

  else
  {
    if (v6)
    {
      v18 = 0;
      Error = v6;
    }

    else
    {
      Error = MRMediaRemoteNowPlayingPlayerPathCreateError(v7);
      v18 = Error;
    }

    v14[2](v14, 0, Error);
  }
}

uint64_t MRPlaybackQueueRequestGetRange(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestGetRange_cold_1();
    }
  }

  v2 = a1;
  v3 = [v2 location];
  [v2 length];

  return v3;
}

uint64_t MRNowPlayingPlayerPathIsLocal(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerPathIsLocal_cold_1();
    }
  }

  v2 = [v1 isLocal];

  return v2;
}

void MRMediaRemoteServiceGetPlaybackState(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  kdebug_trace();
  v10 = a1;
  v11 = MRCreateXPCMessage(0x200000000000012uLL);
  MRAddPlayerPathToXPCMessage(v11, v9);

  v12 = [v10 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetPlaybackState_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = v7;
  v13 = v7;
  xpc_connection_send_message_with_reply(v12, v11, v8, handler);
}

uint64_t __MRMediaRemoteGetSupportedCommandsForPlayer_block_invoke_41(void *a1)
{
  result = a1[6];
  if (result)
  {
    if (a1[4])
    {
      v3 = a1[4];
    }

    else
    {
      v3 = MEMORY[0x1E695E0F0];
    }

    return (*(result + 16))(result, v3, a1[5]);
  }

  return result;
}

void __MRMediaRemoteServiceGetPlaybackState_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v8 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    uint64 = 0;
    v6 = 0;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(v3, "MRXPC_PLAYBACK_STATE_KEY");
    v6 = MRCreateClientErrorFromXPCMessage(v8);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, uint64, v6);
  }

  kdebug_trace();
}

uint64_t _MRAVEndpointDescriptorProtobufReadFrom(uint64_t a1, void *a2)
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
            v22 = PBReaderReadString();
            v23 = 24;
            goto LABEL_52;
          }

          if (v13 == 7)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 68) |= 8u;
            while (1)
            {
              LOBYTE(v47[0]) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v47[0] & 0x7F) << v24;
              if ((v47[0] & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_79;
              }
            }

            v20 = (v26 != 0) & ~[a2 hasError];
LABEL_79:
            v44 = 66;
            goto LABEL_88;
          }

          goto LABEL_76;
        }

        if (v13 == 8)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 68) |= 1u;
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
              v37 = 0;
              goto LABEL_83;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v33;
          }

LABEL_83:
          *(a1 + 8) = v37;
          goto LABEL_89;
        }

        if (v13 == 9)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 68) |= 2u;
          while (1)
          {
            LOBYTE(v47[0]) = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v47[0] & 0x7F) << v38;
            if ((v47[0] & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_87;
            }
          }

          v20 = (v40 != 0) & ~[a2 hasError];
LABEL_87:
          v44 = 64;
          goto LABEL_88;
        }

        if (v13 != 10)
        {
          goto LABEL_76;
        }

        v21 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
        [a1 addPersonalOutputDevices:v21];
      }

      else
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v22 = PBReaderReadString();
            v23 = 32;
            goto LABEL_52;
          }

          if (v13 == 2)
          {
            v22 = PBReaderReadString();
            v23 = 56;
LABEL_52:
            v30 = *(a1 + v23);
            *(a1 + v23) = v22;

            goto LABEL_89;
          }

          goto LABEL_76;
        }

        switch(v13)
        {
          case 3:
            v21 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
            [a1 addOutputDevices:v21];
            break;
          case 4:
            v21 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
            objc_storeStrong((a1 + 16), v21);
            break;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 68) |= 4u;
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
                LOBYTE(v20) = 0;
                goto LABEL_85;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_85:
            v44 = 65;
LABEL_88:
            *(a1 + v44) = v20;
            goto LABEL_89;
          default:
LABEL_76:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }

            goto LABEL_89;
        }
      }

      v47[0] = 0;
      v47[1] = 0;
      if (!PBReaderPlaceMark() || !_MRAVOutputDeviceDescriptorProtobufReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_89:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRAVOutputDeviceDescriptorProtobufReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v346) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v346 & 0x7F) << v6;
      if ((v346 & 0x80) == 0)
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
        v15 = 200;
        goto LABEL_426;
      case 2u:
        v14 = PBReaderReadString();
        v15 = 272;
        goto LABEL_426;
      case 3u:
        v14 = PBReaderReadString();
        v15 = 136;
        goto LABEL_426;
      case 4u:
        v14 = PBReaderReadString();
        v15 = 184;
        goto LABEL_426;
      case 5u:
        v14 = PBReaderReadData();
        v15 = 176;
        goto LABEL_426;
      case 6u:
        v201 = 0;
        v202 = 0;
        v203 = 0;
        *(a1 + 336) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v204 = [a2 position] + 1;
          if (v204 >= [a2 position] && (v205 = objc_msgSend(a2, "position") + 1, v205 <= objc_msgSend(a2, "length")))
          {
            v206 = [a2 data];
            [v206 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v203 |= (v346 & 0x7F) << v201;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v201 += 7;
          v12 = v202++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_610;
          }
        }

        v29 = (v203 != 0) & ~[a2 hasError];
LABEL_610:
        v340 = 290;
        goto LABEL_656;
      case 7u:
        v225 = 0;
        v226 = 0;
        v227 = 0;
        *(a1 + 336) |= 0x200000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v228 = [a2 position] + 1;
          if (v228 >= [a2 position] && (v229 = objc_msgSend(a2, "position") + 1, v229 <= objc_msgSend(a2, "length")))
          {
            v230 = [a2 data];
            [v230 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v227 |= (v346 & 0x7F) << v225;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v225 += 7;
          v12 = v226++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_618;
          }
        }

        v29 = (v227 != 0) & ~[a2 hasError];
LABEL_618:
        v340 = 311;
        goto LABEL_656;
      case 8u:
        v177 = 0;
        v178 = 0;
        v179 = 0;
        *(a1 + 336) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v180 = [a2 position] + 1;
          if (v180 >= [a2 position] && (v181 = objc_msgSend(a2, "position") + 1, v181 <= objc_msgSend(a2, "length")))
          {
            v182 = [a2 data];
            [v182 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v179 |= (v346 & 0x7F) << v177;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v177 += 7;
          v12 = v178++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_600;
          }
        }

        v29 = (v179 != 0) & ~[a2 hasError];
LABEL_600:
        v340 = 305;
        goto LABEL_656;
      case 9u:
        v243 = 0;
        v244 = 0;
        v245 = 0;
        *(a1 + 336) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v246 = [a2 position] + 1;
          if (v246 >= [a2 position] && (v247 = objc_msgSend(a2, "position") + 1, v247 <= objc_msgSend(a2, "length")))
          {
            v248 = [a2 data];
            [v248 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v245 |= (v346 & 0x7F) << v243;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v243 += 7;
          v12 = v244++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_627;
          }
        }

        v29 = (v245 != 0) & ~[a2 hasError];
LABEL_627:
        v340 = 306;
        goto LABEL_656;
      case 0xAu:
        v153 = 0;
        v154 = 0;
        v155 = 0;
        *(a1 + 336) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v156 = [a2 position] + 1;
          if (v156 >= [a2 position] && (v157 = objc_msgSend(a2, "position") + 1, v157 <= objc_msgSend(a2, "length")))
          {
            v158 = [a2 data];
            [v158 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v155 |= (v346 & 0x7F) << v153;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v153 += 7;
          v12 = v154++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_592;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v155;
        }

LABEL_592:
        v339 = 108;
        goto LABEL_625;
      case 0xBu:
        v237 = 0;
        v238 = 0;
        v239 = 0;
        *(a1 + 336) |= 8uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v240 = [a2 position] + 1;
          if (v240 >= [a2 position] && (v241 = objc_msgSend(a2, "position") + 1, v241 <= objc_msgSend(a2, "length")))
          {
            v242 = [a2 data];
            [v242 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v239 |= (v346 & 0x7F) << v237;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v237 += 7;
          v12 = v238++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_624;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v239;
        }

LABEL_624:
        v339 = 104;
        goto LABEL_625;
      case 0xCu:
        v14 = PBReaderReadData();
        v15 = 192;
        goto LABEL_426;
      case 0xDu:
        *(a1 + 336) |= 1uLL;
        LODWORD(v346) = 0;
        v151 = [a2 position] + 4;
        if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 4, v152 <= objc_msgSend(a2, "length")))
        {
          v341 = [a2 data];
          [v341 getBytes:&v346 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v342 = v346;
        v343 = 48;
        goto LABEL_664;
      case 0xEu:
        v219 = 0;
        v220 = 0;
        v221 = 0;
        *(a1 + 336) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v222 = [a2 position] + 1;
          if (v222 >= [a2 position] && (v223 = objc_msgSend(a2, "position") + 1, v223 <= objc_msgSend(a2, "length")))
          {
            v224 = [a2 data];
            [v224 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v221 |= (v346 & 0x7F) << v219;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v219 += 7;
          v12 = v220++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_616;
          }
        }

        v29 = (v221 != 0) & ~[a2 hasError];
LABEL_616:
        v340 = 308;
        goto LABEL_656;
      case 0xFu:
        v108 = 0;
        v109 = 0;
        v110 = 0;
        *(a1 + 336) |= 0x200000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v111 = [a2 position] + 1;
          if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
          {
            v113 = [a2 data];
            [v113 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v110 |= (v346 & 0x7F) << v108;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v108 += 7;
          v12 = v109++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_574;
          }
        }

        v29 = (v110 != 0) & ~[a2 hasError];
LABEL_574:
        v340 = 323;
        goto LABEL_656;
      case 0x10u:
        v171 = 0;
        v172 = 0;
        v173 = 0;
        *(a1 + 336) |= 0x10000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v174 = [a2 position] + 1;
          if (v174 >= [a2 position] && (v175 = objc_msgSend(a2, "position") + 1, v175 <= objc_msgSend(a2, "length")))
          {
            v176 = [a2 data];
            [v176 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v173 |= (v346 & 0x7F) << v171;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v171 += 7;
          v12 = v172++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_598;
          }
        }

        v29 = (v173 != 0) & ~[a2 hasError];
LABEL_598:
        v340 = 318;
        goto LABEL_656;
      case 0x11u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 336) |= 0x20000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v346 & 0x7F) << v90;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v12 = v91++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_568;
          }
        }

        v29 = (v92 != 0) & ~[a2 hasError];
LABEL_568:
        v340 = 319;
        goto LABEL_656;
      case 0x12u:
        v144 = objc_alloc_init(_MRAVOutputDeviceSourceInfoProtobuf);
        objc_storeStrong((a1 + 256), v144);
        v346 = 0;
        v347 = 0;
        if (!PBReaderPlaceMark() || (_MRAVOutputDeviceSourceInfoProtobufReadFrom(v144, a2) & 1) == 0)
        {
          goto LABEL_666;
        }

        goto LABEL_533;
      case 0x13u:
        v231 = 0;
        v232 = 0;
        v233 = 0;
        *(a1 + 336) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v234 = [a2 position] + 1;
          if (v234 >= [a2 position] && (v235 = objc_msgSend(a2, "position") + 1, v235 <= objc_msgSend(a2, "length")))
          {
            v236 = [a2 data];
            [v236 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v233 |= (v346 & 0x7F) << v231;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v231 += 7;
          v12 = v232++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_620;
          }
        }

        v29 = (v233 != 0) & ~[a2 hasError];
LABEL_620:
        v340 = 304;
        goto LABEL_656;
      case 0x14u:
        v267 = 0;
        v268 = 0;
        v269 = 0;
        *(a1 + 336) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v270 = [a2 position] + 1;
          if (v270 >= [a2 position] && (v271 = objc_msgSend(a2, "position") + 1, v271 <= objc_msgSend(a2, "length")))
          {
            v272 = [a2 data];
            [v272 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v269 |= (v346 & 0x7F) << v267;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v267 += 7;
          v12 = v268++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_635;
          }
        }

        v29 = (v269 != 0) & ~[a2 hasError];
LABEL_635:
        v340 = 294;
        goto LABEL_656;
      case 0x15u:
        v14 = PBReaderReadString();
        v15 = 168;
        goto LABEL_426;
      case 0x16u:
        v213 = 0;
        v214 = 0;
        v215 = 0;
        *(a1 + 336) |= 0x100000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v216 = [a2 position] + 1;
          if (v216 >= [a2 position] && (v217 = objc_msgSend(a2, "position") + 1, v217 <= objc_msgSend(a2, "length")))
          {
            v218 = [a2 data];
            [v218 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v215 |= (v346 & 0x7F) << v213;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v213 += 7;
          v12 = v214++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_614;
          }
        }

        v29 = (v215 != 0) & ~[a2 hasError];
LABEL_614:
        v340 = 310;
        goto LABEL_656;
      case 0x17u:
        v14 = PBReaderReadString();
        v15 = 128;
        goto LABEL_426;
      case 0x18u:
        *(a1 + 336) |= 0x100uLL;
        LODWORD(v346) = 0;
        v280 = [a2 position] + 4;
        if (v280 >= [a2 position] && (v281 = objc_msgSend(a2, "position") + 4, v281 <= objc_msgSend(a2, "length")))
        {
          v344 = [a2 data];
          [v344 getBytes:&v346 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v342 = v346;
        v343 = 280;
        goto LABEL_664;
      case 0x19u:
        v165 = 0;
        v166 = 0;
        v167 = 0;
        *(a1 + 336) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v168 = [a2 position] + 1;
          if (v168 >= [a2 position] && (v169 = objc_msgSend(a2, "position") + 1, v169 <= objc_msgSend(a2, "length")))
          {
            v170 = [a2 data];
            [v170 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v167 |= (v346 & 0x7F) << v165;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v165 += 7;
          v12 = v166++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_596;
          }
        }

        v29 = (v167 != 0) & ~[a2 hasError];
LABEL_596:
        v340 = 312;
        goto LABEL_656;
      case 0x1Au:
        v159 = 0;
        v160 = 0;
        v161 = 0;
        *(a1 + 336) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v162 = [a2 position] + 1;
          if (v162 >= [a2 position] && (v163 = objc_msgSend(a2, "position") + 1, v163 <= objc_msgSend(a2, "length")))
          {
            v164 = [a2 data];
            [v164 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v161 |= (v346 & 0x7F) << v159;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v159 += 7;
          v12 = v160++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_594;
          }
        }

        v29 = (v161 != 0) & ~[a2 hasError];
LABEL_594:
        v340 = 289;
        goto LABEL_656;
      case 0x1Bu:
        v300 = 0;
        v301 = 0;
        v302 = 0;
        *(a1 + 336) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v303 = [a2 position] + 1;
          if (v303 >= [a2 position] && (v304 = objc_msgSend(a2, "position") + 1, v304 <= objc_msgSend(a2, "length")))
          {
            v305 = [a2 data];
            [v305 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v302 |= (v346 & 0x7F) << v300;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v300 += 7;
          v12 = v301++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_645;
          }
        }

        v29 = (v302 != 0) & ~[a2 hasError];
LABEL_645:
        v340 = 291;
        goto LABEL_656;
      case 0x1Cu:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        *(a1 + 336) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v81 = [a2 position] + 1;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
          {
            v83 = [a2 data];
            [v83 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v80 |= (v346 & 0x7F) << v78;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v12 = v79++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_564;
          }
        }

        v29 = (v80 != 0) & ~[a2 hasError];
LABEL_564:
        v340 = 299;
        goto LABEL_656;
      case 0x1Du:
        v282 = 0;
        v283 = 0;
        v284 = 0;
        *(a1 + 336) |= 0x80000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v285 = [a2 position] + 1;
          if (v285 >= [a2 position] && (v286 = objc_msgSend(a2, "position") + 1, v286 <= objc_msgSend(a2, "length")))
          {
            v287 = [a2 data];
            [v287 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v284 |= (v346 & 0x7F) << v282;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v282 += 7;
          v12 = v283++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_639;
          }
        }

        v29 = (v284 != 0) & ~[a2 hasError];
LABEL_639:
        v340 = 321;
        goto LABEL_656;
      case 0x1Eu:
        v288 = 0;
        v289 = 0;
        v290 = 0;
        *(a1 + 336) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v291 = [a2 position] + 1;
          if (v291 >= [a2 position] && (v292 = objc_msgSend(a2, "position") + 1, v292 <= objc_msgSend(a2, "length")))
          {
            v293 = [a2 data];
            [v293 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v290 |= (v346 & 0x7F) << v288;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v288 += 7;
          v12 = v289++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_641;
          }
        }

        v29 = (v290 != 0) & ~[a2 hasError];
LABEL_641:
        v340 = 293;
        goto LABEL_656;
      case 0x1Fu:
        v249 = 0;
        v250 = 0;
        v251 = 0;
        *(a1 + 336) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v252 = [a2 position] + 1;
          if (v252 >= [a2 position] && (v253 = objc_msgSend(a2, "position") + 1, v253 <= objc_msgSend(a2, "length")))
          {
            v254 = [a2 data];
            [v254 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v251 |= (v346 & 0x7F) << v249;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v249 += 7;
          v12 = v250++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_629;
          }
        }

        v29 = (v251 != 0) & ~[a2 hasError];
LABEL_629:
        v340 = 292;
        goto LABEL_656;
      case 0x20u:
        v183 = 0;
        v184 = 0;
        v185 = 0;
        *(a1 + 336) |= 0x2000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v186 = [a2 position] + 1;
          if (v186 >= [a2 position] && (v187 = objc_msgSend(a2, "position") + 1, v187 <= objc_msgSend(a2, "length")))
          {
            v188 = [a2 data];
            [v188 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v185 |= (v346 & 0x7F) << v183;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v183 += 7;
          v12 = v184++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_602;
          }
        }

        v29 = (v185 != 0) & ~[a2 hasError];
LABEL_602:
        v340 = 315;
        goto LABEL_656;
      case 0x21u:
        v255 = 0;
        v256 = 0;
        v257 = 0;
        *(a1 + 336) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v258 = [a2 position] + 1;
          if (v258 >= [a2 position] && (v259 = objc_msgSend(a2, "position") + 1, v259 <= objc_msgSend(a2, "length")))
          {
            v260 = [a2 data];
            [v260 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v257 |= (v346 & 0x7F) << v255;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v255 += 7;
          v12 = v256++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_631;
          }
        }

        v29 = (v257 != 0) & ~[a2 hasError];
LABEL_631:
        v340 = 301;
        goto LABEL_656;
      case 0x22u:
        v14 = PBReaderReadString();
        v15 = 208;
        goto LABEL_426;
      case 0x23u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 336) |= 0x800000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v346 & 0x7F) << v84;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_566;
          }
        }

        v29 = (v86 != 0) & ~[a2 hasError];
LABEL_566:
        v340 = 313;
        goto LABEL_656;
      case 0x24u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 336) |= 0x400000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v346 & 0x7F) << v60;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v12 = v61++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_556;
          }
        }

        v29 = (v62 != 0) & ~[a2 hasError];
LABEL_556:
        v340 = 300;
        goto LABEL_656;
      case 0x25u:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(a1 + 336) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v69 = [a2 position] + 1;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
          {
            v71 = [a2 data];
            [v71 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v68 |= (v346 & 0x7F) << v66;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v12 = v67++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_560;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v68;
        }

LABEL_560:
        v339 = 284;
        goto LABEL_625;
      case 0x26u:
        v14 = PBReaderReadString();
        v15 = 56;
        goto LABEL_426;
      case 0x27u:
        v294 = 0;
        v295 = 0;
        v296 = 0;
        *(a1 + 336) |= 0x400000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v297 = [a2 position] + 1;
          if (v297 >= [a2 position] && (v298 = objc_msgSend(a2, "position") + 1, v298 <= objc_msgSend(a2, "length")))
          {
            v299 = [a2 data];
            [v299 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v296 |= (v346 & 0x7F) << v294;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v294 += 7;
          v12 = v295++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_643;
          }
        }

        v29 = (v296 != 0) & ~[a2 hasError];
LABEL_643:
        v340 = 324;
        goto LABEL_656;
      case 0x28u:
        v261 = 0;
        v262 = 0;
        v263 = 0;
        *(a1 + 336) |= 0x10000000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v264 = [a2 position] + 1;
          if (v264 >= [a2 position] && (v265 = objc_msgSend(a2, "position") + 1, v265 <= objc_msgSend(a2, "length")))
          {
            v266 = [a2 data];
            [v266 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v263 |= (v346 & 0x7F) << v261;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v261 += 7;
          v12 = v262++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_633;
          }
        }

        v29 = (v263 != 0) & ~[a2 hasError];
LABEL_633:
        v340 = 330;
        goto LABEL_656;
      case 0x29u:
        v144 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
        [a1 addClusterComposition:v144];
        goto LABEL_476;
      case 0x2Au:
        v189 = 0;
        v190 = 0;
        v191 = 0;
        *(a1 + 336) |= 2uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v192 = [a2 position] + 1;
          if (v192 >= [a2 position] && (v193 = objc_msgSend(a2, "position") + 1, v193 <= objc_msgSend(a2, "length")))
          {
            v194 = [a2 data];
            [v194 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v191 |= (v346 & 0x7F) << v189;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v189 += 7;
          v12 = v190++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_606;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v191;
        }

LABEL_606:
        v339 = 80;
        goto LABEL_625;
      case 0x2Bu:
        v14 = PBReaderReadString();
        v15 = 232;
        goto LABEL_426;
      case 0x2Cu:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 336) |= 4uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v346 & 0x7F) << v16;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_540;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_540:
        v339 = 84;
        goto LABEL_625;
      case 0x2Du:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        *(a1 + 336) |= 0x4000000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            v107 = [a2 data];
            [v107 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v104 |= (v346 & 0x7F) << v102;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v12 = v103++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_572;
          }
        }

        v29 = (v104 != 0) & ~[a2 hasError];
LABEL_572:
        v340 = 328;
        goto LABEL_656;
      case 0x2Eu:
        v14 = PBReaderReadString();
        v15 = 88;
        goto LABEL_426;
      case 0x2Fu:
        v144 = PBReaderReadString();
        if (v144)
        {
          [a1 addAvailableBluetoothListeningModes:v144];
        }

        goto LABEL_534;
      case 0x30u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 336) |= 0x1000000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v346 & 0x7F) << v42;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_548;
          }
        }

        v29 = (v44 != 0) & ~[a2 hasError];
LABEL_548:
        v340 = 326;
        goto LABEL_656;
      case 0x31u:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        *(a1 + 336) |= 0x4000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v117 = [a2 position] + 1;
          if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 1, v118 <= objc_msgSend(a2, "length")))
          {
            v119 = [a2 data];
            [v119 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v116 |= (v346 & 0x7F) << v114;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v12 = v115++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_576;
          }
        }

        v29 = (v116 != 0) & ~[a2 hasError];
LABEL_576:
        v340 = 316;
        goto LABEL_656;
      case 0x32u:
        v138 = 0;
        v139 = 0;
        v140 = 0;
        *(a1 + 336) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v141 = [a2 position] + 1;
          if (v141 >= [a2 position] && (v142 = objc_msgSend(a2, "position") + 1, v142 <= objc_msgSend(a2, "length")))
          {
            v143 = [a2 data];
            [v143 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v140 |= (v346 & 0x7F) << v138;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v138 += 7;
          v12 = v139++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_586;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v140;
        }

LABEL_586:
        v339 = 160;
        goto LABEL_625;
      case 0x33u:
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_426;
      case 0x34u:
        v332 = 0;
        v333 = 0;
        v334 = 0;
        *(a1 + 336) |= 0x8000000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v335 = [a2 position] + 1;
          if (v335 >= [a2 position] && (v336 = objc_msgSend(a2, "position") + 1, v336 <= objc_msgSend(a2, "length")))
          {
            v337 = [a2 data];
            [v337 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v334 |= (v346 & 0x7F) << v332;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v332 += 7;
          v12 = v333++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_655;
          }
        }

        v29 = (v334 != 0) & ~[a2 hasError];
LABEL_655:
        v340 = 329;
        goto LABEL_656;
      case 0x35u:
        *(a1 + 336) |= 0x20uLL;
        LODWORD(v346) = 0;
        v318 = [a2 position] + 4;
        if (v318 >= [a2 position] && (v319 = objc_msgSend(a2, "position") + 4, v319 <= objc_msgSend(a2, "length")))
        {
          v345 = [a2 data];
          [v345 getBytes:&v346 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v342 = v346;
        v343 = 112;
LABEL_664:
        *(a1 + v343) = v342;
        goto LABEL_657;
      case 0x36u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 336) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v346 & 0x7F) << v36;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_546;
          }
        }

        v29 = (v38 != 0) & ~[a2 hasError];
LABEL_546:
        v340 = 297;
        goto LABEL_656;
      case 0x37u:
        v144 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
        [a1 addActivatedClusterMembers:v144];
        goto LABEL_476;
      case 0x38u:
        v312 = 0;
        v313 = 0;
        v314 = 0;
        *(a1 + 336) |= 0x1000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v315 = [a2 position] + 1;
          if (v315 >= [a2 position] && (v316 = objc_msgSend(a2, "position") + 1, v316 <= objc_msgSend(a2, "length")))
          {
            v317 = [a2 data];
            [v317 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v314 |= (v346 & 0x7F) << v312;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v312 += 7;
          v12 = v313++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_649;
          }
        }

        v29 = (v314 != 0) & ~[a2 hasError];
LABEL_649:
        v340 = 314;
        goto LABEL_656;
      case 0x39u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 336) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v346 & 0x7F) << v48;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_552;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v50;
        }

LABEL_552:
        v339 = 264;
LABEL_625:
        *(a1 + v339) = v22;
        goto LABEL_657;
      case 0x3Au:
        v14 = PBReaderReadString();
        v15 = 72;
        goto LABEL_426;
      case 0x3Bu:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        *(a1 + 336) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v123 = [a2 position] + 1;
          if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
          {
            v125 = [a2 data];
            [v125 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v122 |= (v346 & 0x7F) << v120;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v12 = v121++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_578;
          }
        }

        v29 = (v122 != 0) & ~[a2 hasError];
LABEL_578:
        v340 = 303;
        goto LABEL_656;
      case 0x3Cu:
        v274 = 0;
        v275 = 0;
        v276 = 0;
        *(a1 + 336) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v277 = [a2 position] + 1;
          if (v277 >= [a2 position] && (v278 = objc_msgSend(a2, "position") + 1, v278 <= objc_msgSend(a2, "length")))
          {
            v279 = [a2 data];
            [v279 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v276 |= (v346 & 0x7F) << v274;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v274 += 7;
          v12 = v275++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_637;
          }
        }

        v29 = (v276 != 0) & ~[a2 hasError];
LABEL_637:
        v340 = 302;
        goto LABEL_656;
      case 0x3Du:
        v14 = PBReaderReadString();
        v15 = 216;
        goto LABEL_426;
      case 0x3Eu:
        v14 = PBReaderReadString();
        v15 = 240;
        goto LABEL_426;
      case 0x3Fu:
        v14 = PBReaderReadString();
        v15 = 248;
        goto LABEL_426;
      case 0x40u:
        v144 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
        [a1 addAllClusterMembers:v144];
LABEL_476:
        v346 = 0;
        v347 = 0;
        if (!PBReaderPlaceMark() || (_MRAVOutputDeviceDescriptorProtobufReadFrom(v144, a2) & 1) == 0)
        {
          goto LABEL_666;
        }

        goto LABEL_533;
      case 0x41u:
        v145 = 0;
        v146 = 0;
        v147 = 0;
        *(a1 + 336) |= 0x100000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v148 = [a2 position] + 1;
          if (v148 >= [a2 position] && (v149 = objc_msgSend(a2, "position") + 1, v149 <= objc_msgSend(a2, "length")))
          {
            v150 = [a2 data];
            [v150 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v147 |= (v346 & 0x7F) << v145;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v145 += 7;
          v12 = v146++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_588;
          }
        }

        v29 = (v147 != 0) & ~[a2 hasError];
LABEL_588:
        v340 = 322;
        goto LABEL_656;
      case 0x42u:
        v207 = 0;
        v208 = 0;
        v209 = 0;
        *(a1 + 336) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v210 = [a2 position] + 1;
          if (v210 >= [a2 position] && (v211 = objc_msgSend(a2, "position") + 1, v211 <= objc_msgSend(a2, "length")))
          {
            v212 = [a2 data];
            [v212 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v209 |= (v346 & 0x7F) << v207;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v207 += 7;
          v12 = v208++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_612;
          }
        }

        v29 = (v209 != 0) & ~[a2 hasError];
LABEL_612:
        v340 = 295;
        goto LABEL_656;
      case 0x43u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 336) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v346 & 0x7F) << v23;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_542;
          }
        }

        v29 = (v25 != 0) & ~[a2 hasError];
LABEL_542:
        v340 = 298;
        goto LABEL_656;
      case 0x44u:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        *(a1 + 336) |= 0x20000000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v99 = [a2 position] + 1;
          if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
          {
            v101 = [a2 data];
            [v101 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v98 |= (v346 & 0x7F) << v96;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v12 = v97++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_570;
          }
        }

        v29 = (v98 != 0) & ~[a2 hasError];
LABEL_570:
        v340 = 331;
        goto LABEL_656;
      case 0x45u:
        v144 = objc_alloc_init(_MRGroupSessionInfoProtobuf);
        objc_storeStrong((a1 + 144), v144);
        v346 = 0;
        v347 = 0;
        if (PBReaderPlaceMark() && (_MRGroupSessionInfoProtobufReadFrom(v144, a2) & 1) != 0)
        {
LABEL_533:
          PBReaderRecallMark();
LABEL_534:

LABEL_657:
          v4 = a2;
          continue;
        }

LABEL_666:

        return 0;
      case 0x46u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 336) |= 0x40000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v346 & 0x7F) << v72;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v12 = v73++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_562;
          }
        }

        v29 = (v74 != 0) & ~[a2 hasError];
LABEL_562:
        v340 = 320;
        goto LABEL_656;
      case 0x47u:
        v14 = PBReaderReadString();
        v15 = 96;
        goto LABEL_426;
      case 0x48u:
        v14 = PBReaderReadString();
        v15 = 224;
        goto LABEL_426;
      case 0x49u:
        v306 = 0;
        v307 = 0;
        v308 = 0;
        *(a1 + 336) |= 0x2000000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v309 = [a2 position] + 1;
          if (v309 >= [a2 position] && (v310 = objc_msgSend(a2, "position") + 1, v310 <= objc_msgSend(a2, "length")))
          {
            v311 = [a2 data];
            [v311 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v308 |= (v346 & 0x7F) << v306;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v306 += 7;
          v12 = v307++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_647;
          }
        }

        v29 = (v308 != 0) & ~[a2 hasError];
LABEL_647:
        v340 = 327;
        goto LABEL_656;
      case 0x4Au:
        v320 = 0;
        v321 = 0;
        v322 = 0;
        *(a1 + 336) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v323 = [a2 position] + 1;
          if (v323 >= [a2 position] && (v324 = objc_msgSend(a2, "position") + 1, v324 <= objc_msgSend(a2, "length")))
          {
            v325 = [a2 data];
            [v325 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v322 |= (v346 & 0x7F) << v320;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v320 += 7;
          v12 = v321++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_651;
          }
        }

        v29 = (v322 != 0) & ~[a2 hasError];
LABEL_651:
        v340 = 309;
        goto LABEL_656;
      case 0x4Bu:
        v326 = 0;
        v327 = 0;
        v328 = 0;
        *(a1 + 336) |= 0x800000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v329 = [a2 position] + 1;
          if (v329 >= [a2 position] && (v330 = objc_msgSend(a2, "position") + 1, v330 <= objc_msgSend(a2, "length")))
          {
            v331 = [a2 data];
            [v331 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v328 |= (v346 & 0x7F) << v326;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v326 += 7;
          v12 = v327++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_653;
          }
        }

        v29 = (v328 != 0) & ~[a2 hasError];
LABEL_653:
        v340 = 325;
        goto LABEL_656;
      case 0x4Cu:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 336) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v346 & 0x7F) << v54;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v12 = v55++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_554;
          }
        }

        v29 = (v56 != 0) & ~[a2 hasError];
LABEL_554:
        v340 = 288;
        goto LABEL_656;
      case 0x4Du:
        v195 = 0;
        v196 = 0;
        v197 = 0;
        *(a1 + 336) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v198 = [a2 position] + 1;
          if (v198 >= [a2 position] && (v199 = objc_msgSend(a2, "position") + 1, v199 <= objc_msgSend(a2, "length")))
          {
            v200 = [a2 data];
            [v200 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v197 |= (v346 & 0x7F) << v195;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v195 += 7;
          v12 = v196++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_608;
          }
        }

        v29 = (v197 != 0) & ~[a2 hasError];
LABEL_608:
        v340 = 307;
        goto LABEL_656;
      case 0x4Eu:
        v14 = PBReaderReadString();
        v15 = 152;
        goto LABEL_426;
      case 0x4Fu:
        v144 = PBReaderReadString();
        if (v144)
        {
          [a1 addDnsNames:v144];
        }

        goto LABEL_534;
      case 0x50u:
        v14 = PBReaderReadString();
        v15 = 32;
LABEL_426:
        v273 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_657;
      case 0x51u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 336) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v346 & 0x7F) << v30;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_544;
          }
        }

        v29 = (v32 != 0) & ~[a2 hasError];
LABEL_544:
        v340 = 296;
        goto LABEL_656;
      case 0x52u:
        v132 = 0;
        v133 = 0;
        v134 = 0;
        *(a1 + 336) |= 0x40000000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v135 = [a2 position] + 1;
          if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 1, v136 <= objc_msgSend(a2, "length")))
          {
            v137 = [a2 data];
            [v137 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v134 |= (v346 & 0x7F) << v132;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v12 = v133++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_582;
          }
        }

        v29 = (v134 != 0) & ~[a2 hasError];
LABEL_582:
        v340 = 332;
        goto LABEL_656;
      case 0x53u:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        *(a1 + 336) |= 0x8000000000uLL;
        while (1)
        {
          LOBYTE(v346) = 0;
          v129 = [a2 position] + 1;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
          {
            v131 = [a2 data];
            [v131 getBytes:&v346 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v128 |= (v346 & 0x7F) << v126;
          if ((v346 & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v12 = v127++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_580;
          }
        }

        v29 = (v128 != 0) & ~[a2 hasError];
LABEL_580:
        v340 = 317;
LABEL_656:
        *(a1 + v340) = v29;
        goto LABEL_657;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_657;
    }
  }
}

uint64_t _MRAVOutputDeviceSourceInfoProtobufReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_32;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void __MRMediaRemoteGetPlaybackStateForPlayer_block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 - 1) > 4)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_1E769ADE0[a2 - 1];
  }

  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (!v5)
  {
    v15 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v15)
      {
        goto LABEL_17;
      }

      v17 = *(a1 + 32);
      v16 = *(a1 + 40);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v30 = @"playbackState";
      v31 = 2114;
      v32 = v16;
      v33 = 2112;
      v34 = v6;
      v35 = 2114;
      v36 = v17;
      v37 = 2048;
      v38 = v18;
      v19 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v20 = v9;
      v21 = 52;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_17;
      }

      v22 = *(a1 + 40);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544130;
      v30 = @"playbackState";
      v31 = 2114;
      v32 = v22;
      v33 = 2112;
      v34 = v6;
      v35 = 2048;
      v36 = v23;
      v19 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v20 = v9;
      v21 = 42;
    }

    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
    goto LABEL_16;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v10)
    {
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v30 = @"playbackState";
      v31 = 2114;
      v32 = v11;
      v33 = 2114;
      v34 = v5;
      v35 = 2114;
      v36 = v12;
      v37 = 2048;
      v38 = v14;
      _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_16:
    }
  }

  else if (v10)
  {
    __MRMediaRemoteGetPlaybackStateForPlayer_block_invoke_2_cold_1();
  }

LABEL_17:

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __MRMediaRemoteGetPlaybackStateForPlayer_block_invoke_594;
  v26[3] = &unk_1E769ACB8;
  v24 = *(a1 + 56);
  v27 = *(a1 + 64);
  v28 = a2;
  dispatch_async(v24, v26);

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __MRMediaRemoteGetPlaybackStateForPlayer_block_invoke_594(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

uint64_t MRNowPlayingClientCopyBundleIdentifierHierarchy(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingClientCopyBundleIdentifierHierarchy_cold_1();
    }
  }

  v2 = [v1 bundleIdentifierHierarchy];

  return v2;
}

void *MRNowPlayingClientGetParentAppBundleIdentifier(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingClientGetParentAppBundleIdentifier_cold_1();
    }
  }

  v2 = [v1 parentApplicationBundleIdentifier];

  return v2;
}

void MRPlaybackQueueRequestSetIdentifiers(void *a1, uint64_t a2)
{
  v6 = a1;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [v6 contentItemIdentifiers];

  if (v4)
  {
    v5 = [v6 contentItemIdentifiers];
    [v3 addObjectsFromArray:v5];
  }

  if (a2)
  {
    [v3 addObjectsFromArray:a2];
  }

  [v6 setContentItemIdentifiers:v3];
}

uint64_t __MRAVEndpointGetOutputDeviceUIDVolumeControlCapabilities_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __MRAVEndpointGetOutputDeviceUIDVolume_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayer(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayer_block_invoke;
  v9[3] = &unk_1E769FDA0;
  v10 = v7;
  v8 = v7;
  _MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayer(a1, a2, a3, v9);
}

uint64_t __MRAVEndpointResolveActiveSystemEndpointWithType_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void _MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayer(void *a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v9 = MEMORY[0x1E69E96A0];
    v11 = MEMORY[0x1E69E96A0];
  }

  v12 = [MEMORY[0x1E695DF00] date];
  if (!v7)
  {
    v7 = +[MRPlaybackQueueRequest defaultPlaybackQueueRequest];
  }

  v13 = [v7 requestIdentifier];

  if (!v13)
  {
    v14 = [MEMORY[0x1E696AFB0] UUID];
    v15 = [v14 UUIDString];
    [v7 setRequestIdentifier:v15];
  }

  v16 = [v7 label];

  if (!v16)
  {
    v17 = objc_alloc(MEMORY[0x1E696AEC0]);
    v18 = [MEMORY[0x1E696AE30] processInfo];
    v19 = [v18 processName];
    v20 = [v17 initWithFormat:@"%@-%d", v19, getpid()];
    [v7 setLabel:v20];
  }

  v21 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"playbackQueue", v7];
  v22 = v21;
  if (v8)
  {
    [v21 appendFormat:@" for %@", v8];
  }

  v23 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v22;
    _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = ___MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayer_block_invoke;
  v30[3] = &unk_1E769FD78;
  v31 = v7;
  v32 = v12;
  v33 = v9;
  v34 = v10;
  v24 = v9;
  v25 = v10;
  v26 = v12;
  v27 = v7;
  v28 = MEMORY[0x1A58E3570](v30);
  _MRResolveAndRequestPlaybackQueue(v27, v8, v28);

  v29 = *MEMORY[0x1E69E9840];
}

void _MRResolveAndRequestPlaybackQueue(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v5)
  {
    _MRResolveAndRequestPlaybackQueue_cold_1();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    _MRResolveAndRequestPlaybackQueue_cold_2();
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v10 = [v9 workerQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___MRResolveAndRequestPlaybackQueue_block_invoke;
  v13[3] = &unk_1E769C1F8;
  v14 = v5;
  v15 = v8;
  v11 = v8;
  v12 = v5;
  MRMediaRemoteNowPlayingResolvePlayerPath(v6, v10, v13);
}

void _MRRequestPlaybackQueue(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:
    _MRRequestPlaybackQueue_cold_2();
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  _MRRequestPlaybackQueue_cold_1();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v6)
  {
    goto LABEL_4;
  }

LABEL_14:
  _MRRequestPlaybackQueue_cold_3();
LABEL_4:
  v7 = [a1 copy];
  v8 = [v5 subscriptionController];
  [v8 addRequest:v7];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___MRRequestPlaybackQueue_block_invoke;
  v22[3] = &unk_1E769FD28;
  v9 = v5;
  v23 = v9;
  v10 = v7;
  v24 = v10;
  v11 = v6;
  v25 = v11;
  v12 = MEMORY[0x1A58E3570](v22);
  v13 = [v9 playerPath];
  v14 = [v13 isLocal];

  if (v14)
  {
    v15 = [v9 playerPath];
    MRServiceClientPlaybackQueueRequestCallback(v15, v10, v12);
  }

  else
  {
    v16 = [v9 playbackQueue];
    v17 = [v9 playerPath];
    v15 = MRPlaybackQueueCreateFromCache(v16, v10, 0, v17);

    if (v15)
    {
      (v12)[2](v12, v15, 0);
    }

    else if ([v10 isLegacyNowPlayingInfoRequest])
    {
      [v9 enqueuePlaybackQueueRequest:v10 completion:v12];
    }

    else
    {
      v18 = MRGetSharedService();
      v19 = [v9 playerPath];
      v20 = +[MRMediaRemoteServiceClient sharedServiceClient];
      v21 = [v20 workerQueue];
      MRMediaRemoteServiceRequestNowPlayingPlaybackQueue(v18, v10, v19, v21, v12);
    }
  }
}

void MRServiceClientPlaybackQueueRequestCallback(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6)
  {
    MRServiceClientPlaybackQueueRequestCallback_cold_1();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    MRServiceClientPlaybackQueueRequestCallback_cold_2();
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __MRServiceClientPlaybackQueueRequestCallback_block_invoke;
  v12[3] = &unk_1E769FD28;
  v13 = v5;
  v14 = v6;
  v15 = v8;
  v9 = v8;
  v10 = v6;
  v11 = v5;
  _MREnqueueAndHandlePlaybackQueueRequest(v11, v10, v12);
}

void _MRHandlePlaybackQueueRequest(void *a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_14:
    _MRHandlePlaybackQueueRequest_cold_2();
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  _MRHandlePlaybackQueueRequest_cold_1();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v7)
  {
    goto LABEL_4;
  }

LABEL_15:
  _MRHandlePlaybackQueueRequest_cold_3();
LABEL_4:
  if (([v5 isResolved] & 1) == 0)
  {
    _MRHandlePlaybackQueueRequest_cold_4();
  }

  v8 = [MEMORY[0x1E695DF00] now];
  v9 = +[MRUserSettings currentSettings];
  v10 = [v9 verbosePlaybackQueueRequestLogging];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E696AD60]);
    v12 = [v6 requestIdentifier];
    v13 = [v11 initWithFormat:@"%@<%@>", @"MRHandlePlaybackQueueRequest", v12];

    if (v5)
    {
      [v13 appendFormat:@" for %@", v5];
    }

    v14 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v48 = v13;
      _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }
  }

  v15 = +[MRNowPlayingOriginClientManager sharedManager];
  v16 = [v15 playerClientForPlayerPath:v5];

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = ___MRHandlePlaybackQueueRequest_block_invoke;
  v41[3] = &unk_1E76A4340;
  v17 = v5;
  v42 = v17;
  v18 = v16;
  v43 = v18;
  v19 = v6;
  v44 = v19;
  v45 = v8;
  v46 = v7;
  v20 = v7;
  v21 = v8;
  v22 = MEMORY[0x1A58E3570](v41);
  v23 = objc_alloc(MEMORY[0x1E696AEC0]);
  v24 = [v19 requestIdentifier];
  v25 = [v23 initWithFormat:@"com.apple.mediaremote.serviceclient.playbackqueue.%@", v24];
  v26 = [v25 UTF8String];
  v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v28 = dispatch_queue_create(v26, v27);

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MRHandlePlaybackQueueRequest_block_invoke_100;
  block[3] = &unk_1E769C388;
  v39 = v28;
  v40 = v22;
  v36 = v18;
  v37 = v19;
  v38 = v17;
  v29 = v28;
  v30 = v17;
  v31 = v19;
  v32 = v22;
  v33 = v18;
  dispatch_async(v29, block);

  v34 = *MEMORY[0x1E69E9840];
}

void sub_1A2895BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _onQueue_MRHandlePlaybackQueueRequest(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_25:
    _onQueue_MRHandlePlaybackQueueRequest_cold_2();
    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  _onQueue_MRHandlePlaybackQueueRequest_cold_1();
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_26:
  _onQueue_MRHandlePlaybackQueueRequest_cold_3();
LABEL_4:
  v38 = v10;
  if (([v10 isResolved] & 1) == 0)
  {
    _onQueue_MRHandlePlaybackQueueRequest_cold_4();
  }

  v37 = v12;
  v14 = [v11 hasRange];
  v15 = [v11 contentItemIdentifiers];
  v35 = v15;
  if (v15)
  {
    v16 = [v15 count] != 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v9 clientCallbacks];
  v18 = [v17 createItemForOffsetCallbacks];
  v39 = [v18 callbacks];

  v19 = [v9 clientCallbacks];
  v20 = [v19 createPlaybackQueueForRequestCallbacks];
  v21 = [v20 callbacks];

  v22 = [v9 clientCallbacks];
  v23 = [v22 createItemForIdentifierCallbacks];
  v24 = [v23 callbacks];

  if (v14)
  {
    if ([v21 count])
    {
      v25 = _onQueue_MRCreatePlaybackQueueForRequest(v11, v21);
LABEL_16:
      v26 = v25;
      Error = 0;
      goto LABEL_18;
    }

    if ([v39 count])
    {
      v25 = _onQueue_MRCreatePlaybackQueueForOffset(v11, v39);
      goto LABEL_16;
    }
  }

  if (v16)
  {
    v25 = _onQueue_MRCreatePlaybackQueueForIdentifier(v11, v24);
    goto LABEL_16;
  }

  Error = MRMediaRemoteCreateError(14);
  v26 = 0;
LABEL_18:
  v28 = v24;
  if (!(Error | v26))
  {
    v33 = [MRPlaybackQueue alloc];
    v26 = [(MRPlaybackQueue *)v33 initWithContentItems:MEMORY[0x1E695E0F0]];
    goto LABEL_22;
  }

  if (!Error)
  {
LABEL_22:
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = ___onQueue_MRHandlePlaybackQueueRequest_block_invoke;
    v42[3] = &unk_1E769AB50;
    v29 = &v44;
    v44 = v13;
    v30 = &v43;
    v26 = v26;
    v43 = v26;
    v34 = v13;
    v32 = v37;
    _MRLoadContentItemAssets(v9, v11, v26, v37, v42);
    goto LABEL_23;
  }

  v29 = &v41;
  v41 = v13;
  v30 = &v40;
  v40 = Error;
  v31 = v13;
  v32 = v37;
  msv_dispatch_async_on_queue();
LABEL_23:
}

id _onQueue_MRCreatePlaybackQueueForRequest(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    _onQueue_MRCreatePlaybackQueueForRequest_cold_1();
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__47;
  v25 = __Block_byref_object_dispose__47;
  v26 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v5)
  {
    v6 = *v18;
LABEL_5:
    v7 = 0;
    while (1)
    {
      if (*v18 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v17 + 1) + 8 * v7);
      v9 = [v8 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___onQueue_MRCreatePlaybackQueueForRequest_block_invoke;
      block[3] = &unk_1E76A1B68;
      block[4] = v8;
      v16 = &v21;
      v15 = v3;
      dispatch_sync(v9, block);

      LOBYTE(v9) = v22[5] == 0;
      if ((v9 & 1) == 0)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
        if (v5)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v10 = v22[5];
  _Block_object_dispose(&v21, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void sub_1A28961F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL MRMediaRemoteIsMusicAppInstalled()
{
  v0 = MRGetSharedService();

  return MRMediaRemoteServiceIsMusicAppInstalled(v0);
}

BOOL MRMediaRemoteServiceIsMusicAppInstalled(void *a1)
{
  kdebug_trace();
  v2 = [a1 mrXPCConnection];
  v7 = 0;
  v3 = [v2 sendSyncMessageWithType:0x100000000000017 error:&v7];
  v4 = v7;

  kdebug_trace();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = xpc_dictionary_get_BOOL(v3, "MRXPC_APP_INSTALLED_KEY");
  }

  return v5;
}

uint64_t __MRMediaRemoteServiceSetDefaultSupportedCommands_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  return kdebug_trace();
}

void *MROriginGetDisplayName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MROriginGetDisplayName_cold_1();
    }
  }

  v2 = [v1 displayName];

  return v2;
}

uint64_t MROriginGetUniqueIdentifier(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MROriginGetUniqueIdentifier_cold_1();
    }
  }

  v2 = [v1 identifier];

  return v2;
}

uint64_t MRMediaRemoteCopyPickableRoutesForCategory(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MRMediaRemoteCopyPickableRoutesForCategory_block_invoke;
  v7[3] = &unk_1E76A4A28;
  v9 = &v10;
  v4 = v2;
  v8 = v4;
  [v3 fetchPickableRoutesWithCategory:a1 completion:v7];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_1A2896D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MRMediaRemoteServiceCopyPickableRoutes_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    v6 = 0;
  }

  else
  {
    length = 0;
    data = xpc_dictionary_get_data(v3, "MRXPC_ROUTES_DATA_KEY", &length);
    if (data)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:data length:length freeWhenDone:0];
      v6 = [MEMORY[0x1E696AE40] propertyListWithData:v8 options:0 format:0 error:0];
    }

    else
    {
      v8 = _MRLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Didn't receive any pickable routes from the reply.", v10, 2u);
      }

      v6 = 0;
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v6);
  }

  kdebug_trace();
}

void MRMediaRemoteServiceCopyPickableRoutes(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x300000000000002uLL);
  if (a2)
  {
    UTF8String = _MRServiceGetUTF8String(a2);
    xpc_dictionary_set_string(v10, "MRXPC_ROUTE_CATEGORY_KEY", UTF8String);
  }

  v12 = [v9 connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceCopyPickableRoutes_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = v7;
  v13 = v7;
  xpc_connection_send_message_with_reply(v12, v10, v8, handler);
}

intptr_t __MRMediaRemoteCopyPickableRoutesForCategory_block_invoke(uint64_t a1, const __CFArray *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = CFArrayCreateCopy(*MEMORY[0x1E695E480], a2);
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

void MRMediaRemoteSetWantsNowPlayingNotifications(int a1)
{
  v4 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v2 = [v4 notificationClient];
  v3 = v2;
  if (a1)
  {
    [v2 registerForNowPlayingNotificationsWithQueue:0];
  }

  else
  {
    [v2 unregisterForNowPlayingNotifications];
  }
}

void MRMediaRemoteGetPlaybackStateForClient(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [[MRPlayerPath alloc] initWithOrigin:a2 client:a1 player:0];
  MRMediaRemoteGetPlaybackStateForPlayer(v9, v8, v7);
}

uint64_t MRPlaybackQueueRequestCreate(uint64_t a1, uint64_t a2)
{
  v4 = [MRPlaybackQueueRequest alloc];

  return [(MRPlaybackQueueRequest *)v4 initWithRange:a1, a2];
}

uint64_t MRPlaybackQueueRequestSetIncludeLanguageOptions(void *a1, uint64_t a2)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestSetIncludeLanguageOptions_cold_1();
    }
  }

  return [a1 setIncludeLanguageOptions:a2];
}

uint64_t MRMediaRemoteApplicationIsAirPlayReceiver(uint64_t a1)
{
  if (MRMediaRemoteApplicationIsAirPlayReceiver___once != -1)
  {
    MRMediaRemoteApplicationIsAirPlayReceiver_cold_1();
  }

  v2 = MRMediaRemoteApplicationIsAirPlayReceiver___receivers;

  return [v2 containsObject:a1];
}

void MRMediaRemoteGetActiveOrigin(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    if (!v3)
    {
      v3 = MEMORY[0x1E69E96A0];
      v5 = MEMORY[0x1E69E96A0];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __MRMediaRemoteGetActiveOrigin_block_invoke;
    v13[3] = &unk_1E76A4DC8;
    v3 = v3;
    v14 = v3;
    v15 = v4;
    v6 = MEMORY[0x1A58E3570](v13);
    v7 = +[MRMediaRemoteServiceClient sharedServiceClient];
    v8 = [v7 activePlayerPath];

    if (v8)
    {
      v9 = [v8 origin];
      (v6)[2](v6, 1, v9);
    }

    else
    {
      v10 = MRGetSharedService();
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __MRMediaRemoteGetActiveOrigin_block_invoke_3;
      v11[3] = &unk_1E769D570;
      v12 = v6;
      MRMediaRemoteServiceGetActiveOrigin(v10, v3, v11);
      v9 = v12;
    }
  }
}

void __MRMediaRemoteGetActiveOrigin_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v6 = v4;
  msv_dispatch_async_on_queue();
}

void __MRMediaRemoteGetActiveOrigin_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  if (*(a1 + 32))
  {
    v3 = *(v1 + 16);
    v4 = *(a1 + 40);

    v3(v4, v2);
  }

  else
  {
    v5 = +[MROrigin localOrigin];
    (*(v1 + 16))(v1, v2, v5);
  }
}

void sub_1A2897D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MRMediaRemoteServiceGetLastPlayingDateForPlayer(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  kdebug_trace();
  v10 = a1;
  v11 = MRCreateXPCMessage(0x200000000000036uLL);
  MRAddPlayerPathToXPCMessage(v11, v9);

  v12 = [v10 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetLastPlayingDateForPlayer_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = v7;
  v13 = v7;
  xpc_connection_send_message_with_reply(v12, v11, v8, handler);
}

void __MRMediaRemoteServiceGetLastPlayingDateForPlayer_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v8 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{xpc_dictionary_get_double(v3, "MRXPC_TIMESTAMP")}];
    Error = MRCreateClientErrorFromXPCMessage(v8);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, Error);
  }

  kdebug_trace();
}

void MRMediaRemoteRemovePlayerPathInvalidationHandler(uint64_t a1)
{
  v2 = +[MRMediaRemoteServiceClient sharedServiceClient];
  [v2 removeInvalidationHandler:a1];
}

id MRPlaybackQueueCreateFromCache(void *a1, void *a2, int a3, void *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = [v8 hasRange];
  v11 = [v8 range];
  v13 = v12;
  v14 = [v8 contentItemIdentifiers];
  if (!v7)
  {
    v27 = 0;
    goto LABEL_40;
  }

  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __MRPlaybackQueueCreateFromCache_block_invoke;
  v56[3] = &unk_1E7699FE0;
  v57 = v9;
  v15 = MEMORY[0x1A58E3570](v56);
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:v13];
  v17 = v16;
  if (v10)
  {
    if (v11 >= v11 + v13)
    {
      if ([v16 count] == v13)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }

    v47 = v10;
    v49 = a3;
    v50 = v9;
    v51 = v14;
    v18 = v13;
    v45 = v13;
    v48 = v11;
    v19 = v11;
    do
    {
      v20 = [v7 contentItemWithOffset:{v19, v45}];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 identifier];
        v23 = [v51 containsObject:v22];

        if (v23)
        {
          v24 = [MRPlaybackQueueRequest alloc];
          v25 = [(MRPlaybackQueueRequest *)v24 initWithIdentifiers:MEMORY[0x1E695E0F0]];
          v26 = MRContentItemCreateFromRequest(v21, v25);
          [v17 addObject:v26];
        }

        else if ((v15)[2](v15, v21, v8))
        {
          [v17 addObject:v21];
        }
      }

      ++v19;
      --v18;
    }

    while (v18);
  }

  else
  {
    if (!v14)
    {
      v36 = [v16 count];
LABEL_35:
      v37 = [v14 count];
      if (a3 != 3 && v36 != v37)
      {
        goto LABEL_37;
      }

LABEL_38:
      v38 = [[MRPlaybackQueue alloc] initWithContentItems:v17 location:v11];
      v39 = [v7 queueIdentifier];
      [(MRPlaybackQueue *)v38 setQueueIdentifier:v39];

      v40 = [v7 properties];
      [(MRPlaybackQueue *)v38 setProperties:v40];

      v41 = [v7 auxiliaryNowPlayingInfo];
      [(MRPlaybackQueue *)v38 setAuxiliaryNowPlayingInfo:v41];

      v42 = [v7 homeUserIdentifiers];
      [(MRPlaybackQueue *)v38 setHomeUserIdentifiers:v42];

      v27 = MRPlaybackQueueCreateFromRequest(v38, v8);
      goto LABEL_39;
    }

    v45 = v13;
    v47 = 0;
    v48 = v11;
    v49 = a3;
    v50 = v9;
    v51 = v14;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v28 = v14;
    v29 = [v28 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v53;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v53 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [v7 contentItemForIdentifier:{*(*(&v52 + 1) + 8 * i), v45}];
          if (v33 && (v15)[2](v15, v33, v8))
          {
            [v17 addObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v30);
    }
  }

  v34 = [v17 count];
  if (v34 == v46)
  {
    v35 = v47;
  }

  else
  {
    v35 = 0;
  }

  v9 = v50;
  v14 = v51;
  a3 = v49;
  v11 = v48;
  if (v35)
  {
    goto LABEL_38;
  }

  v36 = v34;
  if ((v47 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_32:
  if (a3 == 3)
  {
    goto LABEL_38;
  }

LABEL_37:
  v27 = 0;
LABEL_39:

LABEL_40:
  v43 = *MEMORY[0x1E69E9840];

  return v27;
}

uint64_t _MRPlaybackQueueRequestProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v109) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v109 & 0x7F) << v5;
      if ((v109 & 0x80) == 0)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 124) |= 0x10u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v109 & 0x7F) << v13;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_178:
            v102 = 60;
            goto LABEL_183;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_178;
      case 2u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 124) |= 8u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v109 & 0x7F) << v58;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v11 = v59++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_182;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v60;
        }

LABEL_182:
        v102 = 56;
        goto LABEL_183;
      case 3u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 124) |= 0x400u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v109 & 0x7F) << v42;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_172;
          }
        }

        v26 = (v44 != 0) & ~[a2 hasError];
LABEL_172:
        v101 = 117;
        goto LABEL_196;
      case 4u:
        *(a1 + 124) |= 2u;
        v109 = 0;
        v50 = [a2 position] + 8;
        if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 8, v51 <= objc_msgSend(a2, "length")))
        {
          v107 = [a2 data];
          [v107 getBytes:&v109 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v105 = v109;
        v106 = 16;
        goto LABEL_203;
      case 5u:
        *(a1 + 124) |= 1u;
        v109 = 0;
        v34 = [a2 position] + 8;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
        {
          v104 = [a2 data];
          [v104 getBytes:&v109 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v105 = v109;
        v106 = 8;
LABEL_203:
        *(a1 + v106) = v105;
        goto LABEL_197;
      case 6u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 124) |= 0x200u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v109 & 0x7F) << v70;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v11 = v71++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_187;
          }
        }

        v26 = (v72 != 0) & ~[a2 hasError];
LABEL_187:
        v101 = 116;
        goto LABEL_196;
      case 7u:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 124) |= 0x1000u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v109 & 0x7F) << v82;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v11 = v83++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_191;
          }
        }

        v26 = (v84 != 0) & ~[a2 hasError];
LABEL_191:
        v101 = 119;
        goto LABEL_196;
      case 8u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 124) |= 0x80u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v109 & 0x7F) << v52;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v11 = v53++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_174;
          }
        }

        v26 = (v54 != 0) & ~[a2 hasError];
LABEL_174:
        v101 = 114;
        goto LABEL_196;
      case 9u:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 124) |= 0x100u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v98 = [a2 position] + 1;
          if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
          {
            v100 = [a2 data];
            [v100 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v97 |= (v109 & 0x7F) << v95;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v11 = v96++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_195;
          }
        }

        v26 = (v97 != 0) & ~[a2 hasError];
LABEL_195:
        v101 = 115;
        goto LABEL_196;
      case 0xAu:
        v33 = objc_alloc_init(_MRPlaybackQueueContextProtobuf);
        objc_storeStrong((a1 + 40), v33);
        v109 = 0;
        v110 = 0;
        if (!PBReaderPlaceMark() || !_MRPlaybackQueueContextProtobufReadFrom(v33, a2))
        {
          goto LABEL_205;
        }

        goto LABEL_124;
      case 0xBu:
        v48 = PBReaderReadString();
        v49 = 72;
        goto LABEL_144;
      case 0xCu:
        v33 = PBReaderReadString();
        if (v33)
        {
          [a1 addContentItemIdentifiers:v33];
        }

        goto LABEL_160;
      case 0xDu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 124) |= 0x4000u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v109 & 0x7F) << v36;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_170;
          }
        }

        v26 = (v38 != 0) & ~[a2 hasError];
LABEL_170:
        v101 = 121;
        goto LABEL_196;
      case 0xEu:
        v33 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
        objc_storeStrong((a1 + 64), v33);
        v109 = 0;
        v110 = 0;
        if (PBReaderPlaceMark() && _MRNowPlayingPlayerPathProtobufReadFrom(&v33->super.super.isa, a2))
        {
LABEL_124:
          PBReaderRecallMark();
LABEL_160:

LABEL_197:
          v103 = [a2 position];
          if (v103 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_205:

        return 0;
      case 0xFu:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 124) |= 4u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v109 & 0x7F) << v27;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_168;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v29;
        }

LABEL_168:
        v102 = 24;
LABEL_183:
        *(a1 + v102) = v19;
        goto LABEL_197;
      case 0x10u:
        v48 = PBReaderReadString();
        v49 = 48;
LABEL_144:
        v94 = *(a1 + v49);
        *(a1 + v49) = v48;

        goto LABEL_197;
      case 0x11u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 124) |= 0x2000u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v109 & 0x7F) << v20;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_164;
          }
        }

        v26 = (v22 != 0) & ~[a2 hasError];
LABEL_164:
        v101 = 120;
        goto LABEL_196;
      case 0x12u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 124) |= 0x800u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v109 & 0x7F) << v64;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v11 = v65++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_185;
          }
        }

        v26 = (v66 != 0) & ~[a2 hasError];
LABEL_185:
        v101 = 118;
        goto LABEL_196;
      case 0x13u:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(a1 + 124) |= 0x40u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            v93 = [a2 data];
            [v93 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v90 |= (v109 & 0x7F) << v88;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v11 = v89++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_193;
          }
        }

        v26 = (v90 != 0) & ~[a2 hasError];
LABEL_193:
        v101 = 113;
        goto LABEL_196;
      case 0x14u:
        v33 = PBReaderReadString();
        if (v33)
        {
          [a1 addRequestedArtworkFormats:v33];
        }

        goto LABEL_160;
      case 0x15u:
        v33 = PBReaderReadString();
        if (v33)
        {
          [a1 addRequestedRemoteArtworkFormats:v33];
        }

        goto LABEL_160;
      case 0x16u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 124) |= 0x20u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v109 & 0x7F) << v76;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v11 = v77++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_189;
          }
        }

        v26 = (v78 != 0) & ~[a2 hasError];
LABEL_189:
        v101 = 112;
LABEL_196:
        *(a1 + v101) = v26;
        goto LABEL_197;
      case 0x17u:
        v33 = PBReaderReadString();
        if (v33)
        {
          [a1 addRequestedAnimatedArtworkPreviewFrameFormats:v33];
        }

        goto LABEL_160;
      case 0x18u:
        v33 = PBReaderReadString();
        if (v33)
        {
          [a1 addRequestedAnimatedArtworkAssetURLFormats:v33];
        }

        goto LABEL_160;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_197;
    }
  }
}

void MRAddPlaybackQueueRequestToXPCMessage(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1;
    v5 = [a2 data];
    v4 = v5;
    xpc_dictionary_set_data(v3, "MRXPC_NOWPLAYING_PLAYBACK_QUEUE_REQUEST_KEY", [v5 bytes], objc_msgSend(v5, "length"));
  }
}

MRPlaybackQueueRequest *MRCreatePlaybackQueueRequestFromXPCMessage(void *a1)
{
  v1 = MRCreateDataFromXPCMessage(a1, "MRXPC_NOWPLAYING_PLAYBACK_QUEUE_REQUEST_KEY");
  v2 = [[MRPlaybackQueueRequest alloc] initWithData:v1];

  return v2;
}

__CFString *_MRContentItemsCopyReadableDescription(void *a1, uint64_t a2, char a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a1;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD60] string];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if (a3)
          {
            v12 = MRContentItemCopyMinimalReadableDescription(v11);
          }

          else
          {
            v12 = [v11 description];
          }

          v13 = v12;
          [v5 appendString:{v12, v17}];
          [v5 appendString:@"\n"];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v14 = [v5 copy];
  }

  else
  {
    v14 = @"NULL";
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void MRMediaRemoteGetNowPlayingClientForOrigin(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  if (!v9)
  {
    v9 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
  }

  v6 = a3;
  v7 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  v8 = MRGetSharedService();
  MRMediaRemoteServiceGetNowPlayingClient(v8, v7, v9, v6);
}

void MRMediaRemoteServiceGetNowPlayingClient(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x200000000000021uLL);
  MRAddPlayerPathToXPCMessage(v10, a2);
  v11 = [v9 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetNowPlayingClient_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v14 = v7;
  v12 = v7;
  xpc_connection_send_message_with_reply(v11, v10, v8, handler);
}

uint64_t MRMediaRemoteCopyDeviceUID()
{
  if (MRProcessIsMediaRemoteDaemon_onceToken != -1)
  {
    MRMediaRemoteRequestDeviceUID_cold_3();
  }

  v0 = MRProcessIsMediaRemoteDaemon_isDaemon;
  v1 = +[MROrigin localOrigin];
  if (v0 != 1)
  {
    v2 = [MRDeviceInfoRequest deviceInfoForOrigin:v1];

    goto LABEL_7;
  }

  v2 = [MRDeviceInfoRequest cachedDeviceInfoForOrigin:v1];

  if (v2)
  {
LABEL_7:
    v3 = [v2 deviceUID];
    goto LABEL_8;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

void MRAddClientToXPCMessage(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = a1;
    v5 = [a2 data];
    v4 = v5;
    xpc_dictionary_set_data(v3, "MRXPC_NOWPLAYING_CLIENT_DATA_KEY", [v5 bytes], objc_msgSend(v5, "length"));
  }
}

void __MRMediaRemoteServiceGetNowPlayingClient_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v8 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
    v6 = 0;
  }

  else
  {
    Error = MRCreateClientErrorFromXPCMessage(v3);
    v6 = MRCreateClientFromXPCMessage(v8);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6, Error);
  }

  kdebug_trace();
}

MRClient *MRCreateClientFromXPCMessage(void *a1)
{
  v1 = MRCreateDataFromXPCMessage(a1, "MRXPC_NOWPLAYING_CLIENT_DATA_KEY");
  if (v1)
  {
    v2 = [[MRClient alloc] initWithData:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayer_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRMediaRemoteServiceRequestNowPlayingPlaybackQueue(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  kdebug_trace();
  v11 = a1;
  v12 = MRCreateXPCMessage(0x200000000000007uLL);
  MRAddPlayerPathToXPCMessage(v12, a3);
  MRAddPlaybackQueueRequestToXPCMessage(v12, a2);
  v13 = [v11 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceRequestNowPlayingPlaybackQueue_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v16 = v9;
  v14 = v9;
  xpc_connection_send_message_with_reply(v13, v12, v10, handler);
}

uint64_t MRAVOutputDeviceCopyLocalDeviceLocalizedName()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[MRAVOutputDevice localDeviceLocalizedName];
  v2 = [v1 copy];

  objc_autoreleasePoolPop(v0);
  return v2;
}

uint64_t MRAVOutputDeviceCopySourceInfo(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 sourceInfo];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceIsLocalDevice(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 isLocalDevice];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceGetType(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 deviceType];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceCopyModelID(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 modelID];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRAVOutputDeviceTypeFromAVType(unint64_t a1)
{
  if (a1 < 5)
  {
    return (a1 + 1);
  }

  else
  {
    return 0;
  }
}

void __MRDictionaryCalculateDeltas_block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] objectForKey:v5];
  v8 = v7;
  if (v7)
  {
    if (([v7 isEqual:v6] & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = 0;
        v27 = 0;
        v25 = 0;
        MRDictionaryCalculateDeltas(v6, v8, &v27, &v26, &v25);
        v9 = v27;
        v10 = v26;
        v11 = v25;
        v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v10, "count") + objc_msgSend(v9, "count") + objc_msgSend(v11, "count")}];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __MRDictionaryCalculateDeltas_block_invoke_2;
        v23[3] = &unk_1E769EC90;
        v13 = v12;
        v24 = v13;
        [v9 enumerateKeysAndObjectsUsingBlock:v23];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __MRDictionaryCalculateDeltas_block_invoke_3;
        v21[3] = &unk_1E769EC90;
        v14 = v13;
        v22 = v14;
        [v10 enumerateKeysAndObjectsUsingBlock:v21];
        v16 = MEMORY[0x1E69E9820];
        v17 = 3221225472;
        v18 = __MRDictionaryCalculateDeltas_block_invoke_4;
        v19 = &unk_1E769EC90;
        v20 = v14;
        v15 = v14;
        [v11 enumerateKeysAndObjectsUsingBlock:&v16];
        [a1[5] setObject:v15 forKeyedSubscript:{v5, v16, v17, v18, v19}];
      }

      else
      {
        v9 = [objc_alloc(MEMORY[0x1E69B1470]) initWithFirst:v6 second:v8];
        [a1[5] setObject:v9 forKeyedSubscript:v5];
      }
    }
  }

  else
  {
    [a1[6] setObject:v6 forKeyedSubscript:v5];
  }
}

id MRCreateIndentedDebugDescriptionFromArray(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __MRCreateIndentedDebugDescriptionFromArray_block_invoke;
    v9[3] = &unk_1E76A0F48;
    v4 = v3;
    v10 = v4;
    [v1 enumerateObjectsUsingBlock:v9];

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 componentsJoinedByString:@"\n"];
  v6 = MRCreateFormattedDebugDescriptionFromClass(v1, v5);
  v7 = MRCreateIndentedDebugDescriptionFromObject(v6);

  return v7;
}

void __MRCreateIndentedDebugDescriptionFromArray_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = _MRCreateIndentedDebugDescriptionFrom(a2);
  [v2 addObject:v3];
}

id _MRCreateIndentedDebugDescriptionFrom(void *a1)
{
  v1 = a1;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MRCreateIndentedDebugDescriptionFromArray(v1);
  }

  else
  {
    objc_opt_class();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = MRCreateIndentedDebugDescriptionFromDictionary(v1);
    }

    else
    {
      objc_opt_class();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = [v1 allObjects];
        v4 = (MRCreateIndentedDebugDescriptionFromArray)();

        goto LABEL_9;
      }

      v2 = MRCreateIndentedDebugDescriptionFromObject(v1);
    }
  }

  v4 = v2;
LABEL_9:

  return v4;
}

id MRCreateIndentedDebugDescriptionFromObject(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [v1 debugDescription];
    v4 = [v3 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n    " options:0 range:{0, objc_msgSend(v3, "length") - 1}];

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id MRCreateFormattedDebugDescriptionFromClass(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v6 = [v8 initWithFormat:@"<%@:%p> {\n%@\n}", v10, v3, v5];

    objc_autoreleasePoolPop(v7);
  }

  return v6;
}

uint64_t __MRMediaRemoteGetNowPlayingInfoForPlayer_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRAddArrayToXPCMessage(void *a1, const char *a2, void *a3, void *a4)
{
  xdict = a1;
  v7 = MRCreateDataFromArray(a3, a4);
  v8 = v7;
  if (v7)
  {
    xpc_dictionary_set_data(xdict, a2, [v7 bytes], objc_msgSend(v7, "length"));
  }
}

MROrigin *MRCreateOriginFromXPCMessage(void *a1)
{
  v1 = MRCreateDataFromXPCMessage(a1, "MRXPC_ORIGIN_DATA_KEY");
  if (v1)
  {
    v2 = [[MROrigin alloc] initWithData:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1A289E5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void MRMediaRemoteServiceGetAudioFormatContentInfoForOrigin(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  kdebug_trace();
  v10 = a1;
  v11 = MRCreateXPCMessage(0x20000000000003BuLL);
  MRAddOriginToXPCMessage(v11, v9);

  v12 = [v10 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetAudioFormatContentInfoForOrigin_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = v7;
  v13 = v7;
  xpc_connection_send_message_with_reply(v12, v11, v8, handler);
}

void MRAddOriginToXPCMessage(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = a1;
    v5 = [a2 data];
    v4 = v5;
    xpc_dictionary_set_data(v3, "MRXPC_ORIGIN_DATA_KEY", [v5 bytes], objc_msgSend(v5, "length"));
  }
}

void __MRMediaRemoteServiceGetAudioFormatContentInfoForOrigin_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
    v7 = 0;
  }

  else
  {
    v8 = MRCreateDataFromXPCMessage(v3, "MRXPC_AUDIO_FORMAT_CONTENT_INFO");
    v9 = v8;
    if (v8)
    {
      v7 = MRCreateArrayFromData(v8, &__block_literal_global_197);
    }

    else
    {
      v10 = _MRLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "Didn't receive the audio format content info from the reply.", v12, 2u);
      }

      v7 = 0;
    }

    Error = MRCreateClientErrorFromXPCMessage(v4);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v7, Error);
  }

  kdebug_trace();
}

MRNowPlayingAudioFormatContentInfo *__MRMediaRemoteServiceGetAudioFormatContentInfoForOrigin_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRNowPlayingAudioFormatContentInfo alloc] initWithData:v2];

  return v3;
}

uint64_t _MRMRNowPlayingAudioFormatContentInfoProtobufReadFrom(uint64_t a1, void *a2)
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
        v77 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v77 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v77 & 0x7F) << v5;
        if ((v77 & 0x80) == 0)
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 != 1)
          {
            if (v13 != 2)
            {
LABEL_115:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_151;
            }

            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 84) |= 2u;
            while (1)
            {
              v81 = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v81 & 0x7F) << v29;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_120;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v31;
            }

LABEL_120:
            v74 = 16;
            goto LABEL_150;
          }

          v21 = PBReaderReadString();
          v22 = 72;
        }

        else
        {
          if (v13 == 3)
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 84) |= 1u;
            while (1)
            {
              v80 = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                v60 = [a2 data];
                [v60 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v80 & 0x7F) << v55;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v11 = v56++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_134;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v57;
            }

LABEL_134:
            v74 = 8;
            goto LABEL_150;
          }

          if (v13 == 4)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 84) |= 4u;
            while (1)
            {
              v79 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v79 & 0x7F) << v36;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_124;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v38;
            }

LABEL_124:
            v74 = 24;
LABEL_150:
            *(a1 + v74) = v20;
            goto LABEL_151;
          }

          if (v13 != 5)
          {
            goto LABEL_115;
          }

          v21 = PBReaderReadString();
          v22 = 64;
        }

        v35 = *(a1 + v22);
        *(a1 + v22) = v21;
      }

      else
      {
        if (v13 > 8)
        {
          switch(v13)
          {
            case 9:
              v67 = 0;
              v68 = 0;
              v69 = 0;
              *(a1 + 84) |= 0x40u;
              while (1)
              {
                v85 = 0;
                v70 = [a2 position] + 1;
                if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
                {
                  v72 = [a2 data];
                  [v72 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v69 |= (v85 & 0x7F) << v67;
                if ((v85 & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                v11 = v68++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_149;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v69;
              }

LABEL_149:
              v74 = 56;
              break;
            case 0xA:
              v49 = 0;
              v50 = 0;
              v51 = 0;
              *(a1 + 84) |= 0x10u;
              while (1)
              {
                v78 = 0;
                v52 = [a2 position] + 1;
                if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
                {
                  v54 = [a2 data];
                  [v54 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v51 |= (v78 & 0x7F) << v49;
                if ((v78 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                v11 = v50++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_130;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v51;
              }

LABEL_130:
              v74 = 40;
              break;
            case 0xB:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 84) |= 0x20u;
              while (1)
              {
                v84 = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v84 & 0x7F) << v23;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v11 = v24++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_142;
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

LABEL_142:
              v74 = 48;
              break;
            default:
              goto LABEL_115;
          }

          goto LABEL_150;
        }

        switch(v13)
        {
          case 6:
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(a1 + 84) |= 0x80u;
            while (1)
            {
              v83 = 0;
              v64 = [a2 position] + 1;
              if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
              {
                v66 = [a2 data];
                [v66 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v63 |= (v83 & 0x7F) << v61;
              if ((v83 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v11 = v62++ >= 9;
              if (v11)
              {
                LOBYTE(v48) = 0;
                goto LABEL_144;
              }
            }

            v48 = (v63 != 0) & ~[a2 hasError];
LABEL_144:
            v75 = 80;
            break;
          case 7:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            *(a1 + 84) |= 0x100u;
            while (1)
            {
              v82 = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v82 & 0x7F) << v42;
              if ((v82 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                LOBYTE(v48) = 0;
                goto LABEL_126;
              }
            }

            v48 = (v44 != 0) & ~[a2 hasError];
LABEL_126:
            v75 = 81;
            break;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 84) |= 8u;
            while (1)
            {
              v86 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v86 & 0x7F) << v14;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_138;
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

LABEL_138:
            v74 = 32;
            goto LABEL_150;
          default:
            goto LABEL_115;
        }

        *(a1 + v75) = v48;
      }

LABEL_151:
      v76 = [a2 position];
    }

    while (v76 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void MRMediaRemoteGetNowPlayingInfoForClient(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = [[MRPlayerPath alloc] initWithOrigin:a2 client:a1 player:0];
  MRMediaRemoteGetNowPlayingInfoForPlayer(v11, a3, v10, v9);
}

void MRMediaRemoteGetNowPlayingInfoForPlayer(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __MRMediaRemoteGetNowPlayingInfoForPlayer_block_invoke;
  v14[3] = &unk_1E769F0D8;
  v15 = v8;
  v9 = v7;
  v10 = v14;
  v11 = v8;
  v12 = +[MRPlaybackQueueRequest defaultPlaybackQueueRequest];
  [v12 setCachingPolicy:2];
  [v12 setLegacyNowPlayingInfoRequest:1];
  if (a2)
  {
    [v12 setArtworkWidth:600.0];
    [v12 setArtworkHeight:600.0];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___MRGetNowPlayingInfo_block_invoke;
  v16[3] = &unk_1E769C1F8;
  v17 = v9;
  v18 = v10;
  v13 = v9;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync(v12, a1, v13, v16);
}

id MRLogCategoryOutputContextUpdates()
{
  if (MRLogCategoryOutputContextUpdates_onceToken != -1)
  {
    MRLogCategoryOutputContextUpdates_cold_1();
  }

  v1 = MRLogCategoryOutputContextUpdates_log;

  return v1;
}

BOOL OUTLINED_FUNCTION_29_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_33(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char block, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a15 = a1;
  a16 = v16;

  dispatch_async(v17, &block);
}

void sub_1A289FFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A28A0140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A28A0250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return [v0 minusSet:v1];
}

uint64_t OUTLINED_FUNCTION_7_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  v4 = *(*(*(result + 40) + 8) + 40);
  return result;
}

void sub_1A28A05A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MRDeviceClassFromMGDeviceClass(int a1)
{
  if ((a1 - 1) > 0xA)
  {
    return -1;
  }

  else
  {
    return qword_1A2B80E48[a1 - 1];
  }
}

uint64_t MRMediaRemoteCopyLocalAirPlaySenderDefaultGroupIdentity()
{
  v4[0] = 0;
  result = AirPlaySupportLibrary();
  if (result)
  {
    v1 = AirPlaySupportLibrary();
    result = dlsym(v1, "APSCopyDefaultGroupUUID");
    if (result)
    {
      v6 = 0;
      v7 = &v6;
      v8 = 0x2020000000;
      v2 = getAPSCopyDefaultGroupUUIDSymbolLoc_ptr;
      v9 = getAPSCopyDefaultGroupUUIDSymbolLoc_ptr;
      if (!getAPSCopyDefaultGroupUUIDSymbolLoc_ptr)
      {
        v4[1] = MEMORY[0x1E69E9820];
        v4[2] = 3221225472;
        v4[3] = __getAPSCopyDefaultGroupUUIDSymbolLoc_block_invoke;
        v4[4] = &unk_1E769ADA8;
        v5 = &v6;
        v3 = AirPlaySupportLibrary();
        v7[3] = dlsym(v3, "APSCopyDefaultGroupUUID");
        getAPSCopyDefaultGroupUUIDSymbolLoc_ptr = *(v5[1] + 24);
        v2 = v7[3];
      }

      _Block_object_dispose(&v6, 8);
      if (!v2)
      {
        MRMediaRemoteCopyLocalAirPlaySenderDefaultGroupIdentity_cold_1();
      }

      v2(v4);
      return v4[0];
    }
  }

  return result;
}

void sub_1A28A074C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MRMediaRemoteCopyLocalClusterID()
{
  if (MRProcessIsMediaRemoteDaemon_onceToken != -1)
  {
    MRMediaRemoteRequestDeviceUID_cold_3();
  }

  if (MRProcessIsMediaRemoteDaemon_isDaemon)
  {
    return 0;
  }

  v1 = +[MROrigin localOrigin];
  v2 = [MRDeviceInfoRequest deviceInfoForOrigin:v1];

  v0 = [v2 clusterID];

  return v0;
}

uint64_t MRMediaRemoteCopyLocalClusterLeaderIdentity()
{
  if (MRProcessIsMediaRemoteDaemon_onceToken != -1)
  {
    MRMediaRemoteRequestDeviceUID_cold_3();
  }

  if (MRProcessIsMediaRemoteDaemon_isDaemon)
  {
    return 0;
  }

  v1 = +[MROrigin localOrigin];
  v2 = [MRDeviceInfoRequest deviceInfoForOrigin:v1];

  v0 = [v2 preferredClusterLeaderID];

  return v0;
}

uint64_t MRMediaRemoteCopyLocalAirPlayReceiverClusterType()
{
  if (MRProcessIsMediaRemoteDaemon_onceToken != -1)
  {
    MRMediaRemoteRequestDeviceUID_cold_3();
  }

  if (MRProcessIsMediaRemoteDaemon_isDaemon)
  {
    return 0;
  }

  v1 = +[MROrigin localOrigin];
  v2 = [MRDeviceInfoRequest deviceInfoForOrigin:v1];

  v3 = [v2 clusterType];
  return v3;
}

void sub_1A28A0A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MRMediaRemoteCreateError(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);

  return [v2 initWithMRError:a1];
}

uint64_t MRMediaRemoteAirPlayReceiverCopyGroupIdentity()
{
  v0 = +[MRUserSettings currentSettings];
  v1 = [v0 supportMultiplayerHost];

  if (v1)
  {
    [0 length];
  }

  return 0;
}

BOOL OUTLINED_FUNCTION_30(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

id MRComputeBaseGroupID(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v5 = 0;
    soft_APSParseGroupID(v1, 0, 0, &v5);
    v3 = v5;
    if (!v5)
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *MRAVEndpointCreateUniqueIdentifier(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = 0;
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        [MEMORY[0x1E696AEC0] stringWithFormat:@"airplay://%@", v6, v9];
        break;
      case 5:
        [MEMORY[0x1E696AEC0] stringWithFormat:@"remote-hosted://%@/%@", v5, v6];
        break;
      case 6:
        [MEMORY[0x1E696AEC0] stringWithFormat:@"local-hosted://%@/%@", v5, v6];
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v7 = @"LOCAL";
        goto LABEL_15;
      case 2:
        [MEMORY[0x1E696AEC0] stringWithFormat:@"direct://%@", v5, v9];
        break;
      case 3:
        [MEMORY[0x1E696AEC0] stringWithFormat:@"relay://%@/%@", v5, v6];
        break;
      default:
        goto LABEL_15;
    }
  }
  v7 = ;
LABEL_15:

  return v7;
}

void sub_1A28A1704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MRLogCategoryConnections()
{
  if (MRLogCategoryConnections__once != -1)
  {
    MRLogCategoryConnections_cold_1();
  }

  v1 = MRLogCategoryConnections__log;

  return v1;
}

id MRComputeGroupContextID(id a1)
{
  if (a1)
  {
    var8[0] = 0;
    soft_APSParseGroupID(a1, 0, var8, 0);
    a1 = var8[0];
    v1 = var8[2];
  }

  return a1;
}

void sub_1A28A22F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MRContentItemGetHasMetadata(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 metadata];

  if (v2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [v1 metadata];
    v4 = [v3 dictionaryRepresentation];

    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (([v9 hasPrefix:@"custom:"] & 1) == 0 && !objc_msgSend(v9, "isEqualToString:", @"inferredTimestamp"))
          {
            v10 = 1;
            goto LABEL_14;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_14:
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void __MRServiceClientPlaybackQueueRequestCallback_block_invoke_2(uint64_t a1)
{
  v2 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v2 playerClientForPlayerPath:*(a1 + 32)];

  [v6 updatePlaybackQueueWithCachedUpdates:*(a1 + 40) forPendingRequest:*(a1 + 48)];
  if (*(a1 + 56) || (v4 = *(a1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = MRPlaybackQueueCreateFromRequest(v4, *(a1 + 48));
    v5 = *(a1 + 56);
  }

  (*(*(a1 + 64) + 16))();
}

uint64_t MRPlaybackQueueRequestGetIncludeMetadata(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestGetIncludeMetadata_cold_1();
    }
  }

  return [a1 includeMetadata];
}

uint64_t MRPlaybackQueueRequestGetIncludeSections(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestGetIncludeSections_cold_1();
    }
  }

  return [a1 includeSections];
}

BOOL MRPlaybackQueueRequestGetIncludeArtwork(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestGetIncludeArtwork_cold_1();
    }
  }

  v2 = a1;
  [v2 artworkHeight];
  if (fabs(v3) <= 2.22044605e-16)
  {
    v5 = 0;
  }

  else
  {
    [v2 artworkWidth];
    v5 = fabs(v4) > 2.22044605e-16;
  }

  return v5;
}

uint64_t MRPlaybackQueueRequestGetIncludeLanguageOptions(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestGetIncludeLanguageOptions_cold_1();
    }
  }

  return [a1 includeLanguageOptions];
}

uint64_t MRPlaybackQueueRequestGetIncludeInfo(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestGetIncludeInfo_cold_1();
    }
  }

  return [a1 includeInfo];
}

void MRAddPlaybackQueueToXPCMessage(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1;
    v5 = [a2 data];
    v4 = v5;
    xpc_dictionary_set_data(v3, "MRXPC_NOWPLAYING_PLAYBACK_QUEUE_KEY", [v5 bytes], objc_msgSend(v5, "length"));
  }
}

void *MRPlaybackQueueCreateFromRequest(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v4 = [v3 contentItems];
  v5 = MRContentItemsCreateFromRequest(v4, a2);

  v6 = [v3 hasLocation];
  v7 = [MRPlaybackQueue alloc];
  if (v6)
  {
    v8 = -[MRPlaybackQueue initWithContentItems:location:](v7, "initWithContentItems:location:", v5, [v3 location]);
  }

  else
  {
    v8 = [(MRPlaybackQueue *)v7 initWithContentItems:v5];
  }

  v9 = v8;
  v10 = [v3 context];
  [v9 setContext:v10];

  v11 = [v3 queueIdentifier];
  [v9 setQueueIdentifier:v11];

  v12 = [v3 properties];
  [v9 setProperties:v12];

  v13 = [v3 auxiliaryNowPlayingInfo];
  [v9 setAuxiliaryNowPlayingInfo:v13];

  v14 = [v3 requestIdentifier];
  [v9 setRequestIdentifier:v14];

  v15 = [v3 resolvedPlayerPath];
  [v9 setResolvedPlayerPath:v15];

  v16 = [v3 homeUserIdentifiers];
  [v9 setHomeUserIdentifiers:v16];

  return v9;
}

void *MRContentItemsCreateFromRequest(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = MRContentItemCreateFromRequest(*(*(&v13 + 1) + 8 * i), a2);
          [v4 addObject:{v10, v13}];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t __MRPlaybackQueueCreateFromCache_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v111 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MRContentItemIsEmpty(v5) && [v6 shouldRequestItem])
  {
    v7 = MRContentItemCopyMinimalReadableDescription(v5);
    v8 = [(__CFString *)v7 stringByAppendingFormat:@" %@", @"Cached ContentItem is empty"];
    v9 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138544130;
      v104 = @"playbackQueue";
      v105 = 2114;
      v106 = v6;
      v107 = 2112;
      v108 = v8;
      v109 = 2112;
      v110 = v10;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "Cache Miss: Request: %{public}@<%{public}@> for %@ %@", buf, 0x2Au);
    }

LABEL_85:

    v17 = 0;
    goto LABEL_86;
  }

  if ([v6 includeRemoteArtwork])
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v11 = [v6 requestedRemoteArtworkFormats];
    v7 = [v11 countByEnumeratingWithState:&v97 objects:v102 count:16];
    if (v7)
    {
      v12 = a1;
      v13 = *v98;
      while (2)
      {
        for (i = 0; i != v7; i = (i + 1))
        {
          if (*v98 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v97 + 1) + 8 * i);
          v16 = [v5 remoteArtworks];
          v17 = [v16 objectForKeyedSubscript:v15];

          if (!v17)
          {
            v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No remote artwork for requested format: %@", v15];
            goto LABEL_17;
          }
        }

        v7 = [v11 countByEnumeratingWithState:&v97 objects:v102 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

      v17 = 1;
LABEL_17:
      a1 = v12;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v7 = 0;
    v17 = 1;
  }

  if ([v6 includeArtwork])
  {
    v18 = [v6 requestedArtworkFormats];
    v19 = [v18 count];

    if (v19)
    {
      [v6 artworkHeight];
      v91 = a1;
      v90 = v17;
      if (v20 == -1.0 && ([v6 artworkWidth], v21 == -1.0))
      {

        v22 = 0;
        v7 = @"artwork dimensions both -1";
      }

      else
      {
        v22 = 1;
      }

      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v23 = [v6 requestedArtworkFormats];
      v24 = [v23 countByEnumeratingWithState:&v93 objects:v101 count:16];
      if (v24)
      {
        v25 = v24;
        obj = v23;
        v26 = v7;
        v27 = *v94;
        while (2)
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v94 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v93 + 1) + 8 * j);
            v30 = [v5 artworks];
            v31 = [v30 objectForKeyedSubscript:v29];

            if (!v31)
            {
              if (![v29 isEqualToString:@"MRContentItemArtworkFormatStandard"] || (objc_msgSend(v5, "artwork"), v32 = objc_claimAutoreleasedReturnValue(), v32, !v32))
              {
                v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No artwork for requested format: %@", v29];
                a1 = v91;
                v7 = v26;
                LODWORD(v17) = v90;
                v23 = obj;
                goto LABEL_48;
              }
            }

            [v31 dimensions];
            v34 = v33;
            [v31 dimensions];
            v36 = v35;
            [v6 artworkWidth];
            if (v37 > v36 && v36 >= 1)
            {
              v39 = MEMORY[0x1E696AEC0];
              [v6 artworkWidth];
              v41 = [v39 stringWithFormat:@"RequestedWidth %ld > ArtworkWidth %ld", v40, v36];

              v22 = 0;
              v26 = v41;
            }

            [v6 artworkHeight];
            if (v34 >= 1 && v42 > v34)
            {
              v44 = MEMORY[0x1E696AEC0];
              [v6 artworkHeight];
              v46 = [v44 stringWithFormat:@"RequestedHeight %ld > ArtworkHeight %ld", v45, v34];

              v22 = 0;
              v26 = v46;
            }
          }

          v25 = [obj countByEnumeratingWithState:&v93 objects:v101 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }

        a1 = v91;
        v7 = v26;
        LODWORD(v17) = v90;
        v23 = obj;
      }

      goto LABEL_52;
    }

    v48 = [v5 artworks];
    v23 = [v48 objectForKeyedSubscript:@"MRContentItemArtworkFormatStandard"];

    if ((MRContentItemGetHasArtworkData(v5) & 1) != 0 || v23)
    {
      if (MRContentItemGetArtworkData(v5) | v23)
      {
        if (v23)
        {
          [v23 dimensions];
          v73 = v23;
          ArtworkDataWidth = v74;
          v76 = v73;
          [v73 dimensions];
          ArtworkDataHeight = v77;
        }

        else
        {
          v76 = 0;
          ArtworkDataWidth = MRContentItemGetArtworkDataWidth(v5);
          ArtworkDataHeight = MRContentItemGetArtworkDataHeight(v5);
        }

        [v6 artworkWidth];
        v80 = ArtworkDataWidth >= 1 && ArtworkDataWidth < v79;
        v22 = !v80;
        if (v80)
        {
          v81 = MEMORY[0x1E696AEC0];
          [v6 artworkWidth];
          v83 = [v81 stringWithFormat:@"RequestedWidth %ld > ArtworkWidth %ld", v82, ArtworkDataWidth];

          v7 = v83;
        }

        v23 = v76;
        [v6 artworkHeight];
        if (ArtworkDataHeight >= 1 && ArtworkDataHeight < v84)
        {
          v85 = MEMORY[0x1E696AEC0];
          [v6 artworkHeight];
          v87 = [v85 stringWithFormat:@"RequestedHeight %ld > ArtworkHeight %ld", v86, ArtworkDataHeight];

          v22 = 0;
          v7 = v87;
        }

        [v6 artworkHeight];
        if (v88 != -1.0)
        {
          goto LABEL_52;
        }

        [v6 artworkWidth];
        if (v89 != -1.0)
        {
          goto LABEL_52;
        }

        v47 = @"artwork dimensions both -1";
      }

      else
      {
        v47 = @"no artwork in item";
      }

LABEL_48:

      v22 = 0;
      v7 = v47;
    }

    else
    {
      v22 = 1;
    }

LABEL_52:

    if (v17 & v22)
    {
      v17 = 1;
    }

    else
    {
      v49 = MRContentItemCopyMinimalReadableDescription(v5);
      v50 = [v49 stringByAppendingFormat:@" %@", v7];
      v51 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = *(a1 + 32);
        *buf = 138544130;
        v104 = @"playbackQueue";
        v105 = 2114;
        v106 = v6;
        v107 = 2112;
        v108 = v50;
        v109 = 2112;
        v110 = v52;
        _os_log_impl(&dword_1A2860000, v51, OS_LOG_TYPE_DEFAULT, "Cache Miss: Request: %{public}@<%{public}@> for %@ %@", buf, 0x2Au);
      }

      v17 = 0;
    }
  }

  if ([v6 includeInfo] && MRContentItemGetHasInfo(v5) && !MRContentItemGetInfo(v5))
  {
    v53 = MRContentItemCopyMinimalReadableDescription(v5);
    v54 = [v53 stringByAppendingFormat:@" %@", @"has no info"];
    v55 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = *(a1 + 32);
      *buf = 138544130;
      v104 = @"playbackQueue";
      v105 = 2114;
      v106 = v6;
      v107 = 2112;
      v108 = v54;
      v109 = 2112;
      v110 = v56;
      _os_log_impl(&dword_1A2860000, v55, OS_LOG_TYPE_DEFAULT, "Cache Miss: Request: %{public}@<%{public}@> for %@ %@", buf, 0x2Au);
    }

    v17 = 0;
  }

  if ([v6 includeAlignments] && MRContentItemGetHasTranscriptAlignments(v5) && !MRContentItemGetTranscriptAlignments(v5))
  {
    v57 = MRContentItemCopyMinimalReadableDescription(v5);
    v58 = [v57 stringByAppendingFormat:@" %@", @"has no transcript alignments"];
    v59 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = *(a1 + 32);
      *buf = 138544130;
      v104 = @"playbackQueue";
      v105 = 2114;
      v106 = v6;
      v107 = 2112;
      v108 = v58;
      v109 = 2112;
      v110 = v60;
      _os_log_impl(&dword_1A2860000, v59, OS_LOG_TYPE_DEFAULT, "Cache Miss: Request: %{public}@<%{public}@> for %@ %@", buf, 0x2Au);
    }

    v17 = 0;
  }

  if ([v6 includeLyrics])
  {
    v61 = MRContentItemCopyMinimalReadableDescription(v5);
    v62 = [v61 stringByAppendingFormat:@" %@", @"has no lyrics"];
    v63 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v64 = *(a1 + 32);
      *buf = 138544130;
      v104 = @"playbackQueue";
      v105 = 2114;
      v106 = v6;
      v107 = 2112;
      v108 = v62;
      v109 = 2112;
      v110 = v64;
      _os_log_impl(&dword_1A2860000, v63, OS_LOG_TYPE_DEFAULT, "Cache Miss: Request: %{public}@<%{public}@> for %@ %@", buf, 0x2Au);
    }

    v17 = 0;
  }

  if ([v6 includeLanguageOptions] && MRContentItemGetHasLanguageOptions(v5) && (!MRContentItemGetCurrentLanguageOptions(v5) || !MRContentItemGetAvailableLanguageOptions(v5)))
  {
    v65 = MRContentItemCopyMinimalReadableDescription(v5);
    v66 = [v65 stringByAppendingFormat:@" %@", @"has no languageOptions"];
    v67 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = *(a1 + 32);
      *buf = 138544130;
      v104 = @"playbackQueue";
      v105 = 2114;
      v106 = v6;
      v107 = 2112;
      v108 = v66;
      v109 = 2112;
      v110 = v68;
      _os_log_impl(&dword_1A2860000, v67, OS_LOG_TYPE_DEFAULT, "Cache Miss: Request: %{public}@<%{public}@> for %@ %@", buf, 0x2Au);
    }

    v17 = 0;
  }

  if ([v6 includeSections] && MRContentItemGetNumberOfSections(v5) >= 1)
  {
    v8 = MRContentItemCopyMinimalReadableDescription(v5);
    v9 = [v8 stringByAppendingFormat:@" %@", @"has no sections"];
    v69 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = *(a1 + 32);
      *buf = 138544130;
      v104 = @"playbackQueue";
      v105 = 2114;
      v106 = v6;
      v107 = 2112;
      v108 = v9;
      v109 = 2112;
      v110 = v70;
      _os_log_impl(&dword_1A2860000, v69, OS_LOG_TYPE_DEFAULT, "Cache Miss: Request: %{public}@<%{public}@> for %@ %@", buf, 0x2Au);
    }

    goto LABEL_85;
  }

LABEL_86:

  v71 = *MEMORY[0x1E69E9840];
  return v17;
}

BOOL MRContentItemIsEmpty(void *a1)
{
  v1 = a1;
  v2 = [v1 metadata];
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v4 = [v1 info];
    if (v4)
    {
      v3 = 0;
    }

    else
    {
      v5 = [v1 currentLanguageOptions];
      if (v5)
      {
        v3 = 0;
      }

      else
      {
        v6 = [v1 availableLanguageOptions];
        if (v6)
        {
          v3 = 0;
        }

        else
        {
          v7 = [v1 sections];
          if (v7)
          {
            v3 = 0;
          }

          else
          {
            v8 = [v1 artwork];
            v9 = [v8 imageData];
            v3 = v9 == 0;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t MRContentItemGetHasLanguageOptions(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 languageOptionsAvailable];

  return v2;
}

void *MRContentItemCreateFromRequest(void *a1, void *a2)
{
  v89 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v5 = 0;
    goto LABEL_66;
  }

  v5 = MRContentItemCopy(v3);
  if (v4)
  {
    if ((MRPlaybackQueueRequestGetIncludeMetadata(v4) & 1) == 0)
    {
      [v5 setMetadata:0];
    }

    if ((MRPlaybackQueueRequestGetIncludeLanguageOptions(v4) & 1) == 0)
    {
      [v5 setCurrentLanguageOptions:0];
      [v5 setAvailableLanguageOptions:0];
    }

    if ((MRPlaybackQueueRequestGetIncludeInfo(v4) & 1) == 0)
    {
      [v5 setInfo:0];
    }

    if (MRPlaybackQueueRequestGetIncludeSections(v4))
    {
      v6 = [v5 sections];

      if (v6)
      {
        v7 = [v3 sections];
        v8 = MRContentItemsCreateFromRequest(v7, v4);

        v9 = [v8 mutableCopy];
        [v5 setSections:v9];
      }
    }

    else
    {
      [v5 setSections:0];
    }

    if (([v4 includeAvailableArtworkFormats] & 1) == 0)
    {
      [v5 setAvailableArtworkFormats:0];
      [v5 setAvailableAnimatedArtworkFormats:0];
    }

    v76 = v5;
    if ([v4 includeRemoteArtwork])
    {
      if ([v4 includeRemoteArtwork])
      {
        v10 = [MEMORY[0x1E695DF90] dictionary];
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v11 = v4;
        v12 = [v4 requestedRemoteArtworkFormats];
        v13 = [v12 countByEnumeratingWithState:&v83 objects:v88 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v84;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v84 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v83 + 1) + 8 * i);
              v18 = [v3 remoteArtworks];
              v19 = [v18 objectForKeyedSubscript:v17];
              [v10 setObject:v19 forKeyedSubscript:v17];
            }

            v14 = [v12 countByEnumeratingWithState:&v83 objects:v88 count:16];
          }

          while (v14);
        }

        v20 = [v10 copy];
        v5 = v76;
        [v76 setRemoteArtworks:v20];

        v4 = v11;
      }
    }

    else
    {
      [v5 setRemoteArtworks:0];
    }

    if (!MRPlaybackQueueRequestGetIncludeArtwork(v4))
    {
      [v5 setArtwork:0];
      [v5 setArtworks:0];
      goto LABEL_66;
    }

    if (MRPlaybackQueueRequestGetIncludeArtwork(v4))
    {
      v21 = [v4 requestedArtworkFormats];
      v22 = [v21 count];

      if (v22)
      {
        [v4 artworkWidth];
        v24 = v23;
        [v4 artworkHeight];
        v26 = v25;
        v27 = [MEMORY[0x1E695DF90] dictionary];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v75 = v4;
        obj = [v4 requestedArtworkFormats];
        v28 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v80;
          v31 = v24 == -1.0;
          if (v26 != -1.0)
          {
            v31 = 0;
          }

          v77 = v31;
          do
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v80 != v30)
              {
                objc_enumerationMutation(obj);
              }

              v33 = *(*(&v79 + 1) + 8 * j);
              v34 = [v5 artworks];
              v35 = [v34 objectForKeyedSubscript:v33];

              if (v35)
              {
                goto LABEL_38;
              }

              if ([v33 isEqualToString:@"MRContentItemArtworkFormatStandard"])
              {
                v43 = [v3 artwork];

                if (v43)
                {
                  v44 = [MRDataArtwork alloc];
                  v45 = [v3 artwork];
                  v46 = [v45 imageData];
                  v35 = [(MRDataArtwork *)v44 initWithImageData:v46];

                  v5 = v76;
                  if (v35)
                  {
LABEL_38:
                    [(MRDataArtwork *)v35 dimensions];
                    v37 = v36;
                    [(MRDataArtwork *)v35 dimensions];
                    if (v24 + 0.5 >= v37 && v26 + 0.5 >= v38)
                    {
                      goto LABEL_60;
                    }

                    v40 = v38;
                    v41 = v37;
                    if (!v77)
                    {
                      v42 = v37 / v38;
                      if (v24 == -1.0)
                      {
                        v41 = v26 * v42;
                        v40 = v26;
                      }

                      else
                      {
                        v40 = v26;
                        v41 = v24;
                        if (v26 == -1.0)
                        {
                          v41 = v24;
                          v40 = v24 / v42;
                        }
                      }
                    }

                    if (v41 + 0.5 < v37 || v40 + 0.5 < v38)
                    {
                      v48 = [(MRDataArtwork *)v35 imageData];
                      v49 = [MRImageUtilities resizeImageData:v48 forFittingSize:0 error:v41, v40];
                      if (v49)
                      {
                        v50 = [[MRDataArtwork alloc] initWithImageData:v49];
                        [v27 setObject:v50 forKeyedSubscript:v33];

                        v5 = v76;
                      }
                    }

                    else
                    {
LABEL_60:
                      [v27 setObject:v35 forKeyedSubscript:v33];
                    }
                  }
                }
              }
            }

            v29 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
          }

          while (v29);
        }

        v51 = [v27 copy];
        [v76 setArtworks:v51];

        v5 = v76;
        [v76 setArtwork:0];

        v4 = v75;
        goto LABEL_66;
      }

      v54 = [v3 artwork];
      if (!v54)
      {
        v55 = [v3 artworks];
        v56 = [v55 objectForKeyedSubscript:@"MRContentItemArtworkFormatStandard"];

        if (v56)
        {
          v57 = [MRArtwork alloc];
          v58 = [v3 artworks];
          v59 = [v58 objectForKeyedSubscript:@"MRContentItemArtworkFormatStandard"];
          v60 = [v59 imageData];
          v54 = [(MRArtwork *)v57 initWithImageData:v60 height:0 width:0];
        }

        else
        {
          v54 = 0;
        }

        v5 = v76;
      }

      v61 = [(MRArtwork *)v54 width];
      v62 = [(MRArtwork *)v54 height];
      if (!v54 || v61 < 1 || v62 < 1 || (v65 = v61, v66 = v62, MRPlaybackQueueRequestGetArtworkWidth(v4), v68 = v67, MRPlaybackQueueRequestGetArtworkHeight(v4), v68 + 0.5 >= v61) && (v64 = v63 + 0.5, v63 + 0.5 >= v66))
      {
LABEL_89:
        [v5 setArtwork:{v54, v63, v64}];
        [v5 setArtworks:0];

        goto LABEL_66;
      }

      if (v68 != -1.0 || (v69 = v61, v70 = v66, v63 != -1.0))
      {
        v71 = v65 / v66;
        if (v68 == -1.0)
        {
          v69 = v71 * v63;
        }

        else
        {
          if (v63 == -1.0)
          {
            v69 = v68;
            v70 = v68 / v71;
            goto LABEL_84;
          }

          v69 = v68;
        }

        v70 = v63;
      }

LABEL_84:
      v64 = v69 + 0.5;
      if (v69 + 0.5 < v65 || (v63 = v70 + 0.5, v70 + 0.5 < v66))
      {
        MRContentItemSetArtworkData(v5, 0);
        MRContentItemSetArtworkDataSize(v5, 0, 0);
        v72 = [(MRArtwork *)v54 imageData];
        v73 = [MRImageUtilities resizeImageData:v72 forFittingSize:0 error:v69, v70];
        if (v73)
        {
          v74 = [[MRArtwork alloc] initWithImageData:v73 height:v70 width:v69];

          v54 = v74;
          v5 = v76;
        }
      }

      goto LABEL_89;
    }
  }

LABEL_66:

  v52 = *MEMORY[0x1E69E9840];
  return v5;
}