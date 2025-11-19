uint64_t _MRGetKeyboardSessionProtobufReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_1A2A10AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double MRTimeUtilitiesGetProcessorTimeScale()
{
  if (MRTimeUtilitiesGetProcessorTimeScale_sOnceToken != -1)
  {
    MRTimeUtilitiesGetProcessorTimeScale_cold_1();
  }

  return *&MRTimeUtilitiesGetProcessorTimeScale_timeScale;
}

double __MRTimeUtilitiesGetProcessorTimeScale_block_invoke()
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result / v1;
    MRTimeUtilitiesGetProcessorTimeScale_timeScale = *&result;
  }

  return result;
}

unint64_t MRTimeUtilsGetCurrentNanoseconds()
{
  v0 = mach_absolute_time();
  if (MRTimeUtilitiesGetProcessorTimeScale_sOnceToken != -1)
  {
    MRTimeUtilitiesGetProcessorTimeScale_cold_1();
  }

  return (*&MRTimeUtilitiesGetProcessorTimeScale_timeScale * v0);
}

uint64_t _MRCreateHostedEndpointResponseProtobufReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
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
        break;
      }

      if ((v12 >> 3) == 1)
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

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void _MRReadNowPlayingInfoString(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 objectForKeyedSubscript:a2];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected type %@ found for key '%@' (expecting a NSString)", objc_opt_class(), a2];
      v8 = _MRLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        _MRReadNowPlayingInfoString_cold_1(v7, v8);
      }

      v9 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        _MRReadNowPlayingInfoString_cold_2(v7, v9);
      }

      if (objc_opt_respondsToSelector())
      {
        v10 = [v6 stringValue];

        v6 = v10;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5[2](v5, v6);
    }
  }
}

uint64_t MRMediaRemoteCommandInfoCopyValueForKey(void *a1, uint64_t a2)
{
  v3 = [a1 options];
  v4 = [v3 objectForKeyedSubscript:a2];

  return v4;
}

uint64_t MRMediaRemoteCommandInfoGetIntegerValueForKey(void *a1, uint64_t a2)
{
  v2 = MRMediaRemoteCommandInfoCopyValueForKey(a1, a2);
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 intValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void MRMediaRemoteCommandInfoEnumerateSupportedCommandsWithHandler(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a1;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v3[2](v3, [*(*(&v10 + 1) + 8 * v8) command], *(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

id MRMediaRemoteCommandInfoCopySupportedCommandsWithPredicate(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __MRMediaRemoteCommandInfoCopySupportedCommandsWithPredicate_block_invoke;
  v10[3] = &unk_1E76A0EA8;
  v12 = v3;
  v5 = v4;
  v11 = v5;
  v6 = v3;
  MRMediaRemoteCommandInfoEnumerateSupportedCommandsWithHandler(a1, v10);
  v7 = v11;
  v8 = v5;

  return v8;
}

uint64_t __MRMediaRemoteCommandInfoCopySupportedCommandsWithPredicate_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addObject:a3];
  }

  return result;
}

uint64_t MRMediaRemoteCommandInfoSupportedCommandIsEnabled(void *a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 command] == a2 && (objc_msgSend(v8, "isEnabled") & 1) != 0)
        {
          v9 = 1;
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_12:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t MRMediaRemoteCommandInfoCreateFromExternalRepresentation(uint64_t a1, uint64_t a2)
{
  v3 = [MRCommandInfo alloc];

  return [(MRCommandInfo *)v3 initWithPropertyListData:a2];
}

void MRMediaRemotePostClientNotification(void *a1, void *a2)
{
  v4 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v5 = [v4 service];

  MRMediaRemoteServicePostNotification(v5, a1, a2);
}

void MRMediaRemotePostDelayedNotification(void *a1, double a2)
{
  v4 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v5 = [v4 service];

  MRMediaRemoteServicePostDelayedNotification(v5, a1, a2);
}

void MRMediaRemotePostOriginClientNotification(void *a1, uint64_t a2, void *a3)
{
  v5 = [[MRPlayerPath alloc] initWithOrigin:a2 client:0 player:0];
  MRMediaRemotePostPlayerClientNotification(a1, v5, a3);
}

void MRMediaRemotePostPlayerClientNotification(void *a1, void *a2, void *a3)
{
  if (a3)
  {
    v5 = [a3 mutableCopy];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
  }

  v6 = v5;
  MRAddPlayerPathToUserInfo(v5, a2);
  MRMediaRemotePostClientNotification(a1, v6);
}

CFDataRef MRMediaRemoteCreateErrorExternalRepresentation(__CFError *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:CFErrorGetCode(a1)];
    [v2 setObject:v3 forKey:@"_kMRErrorRepErrorCodeKey"];

    v4 = CFErrorGetDomain(a1);
    if (v4)
    {
      [v2 setObject:v4 forKey:@"_kMRErrorRepErrorDomainKey"];
    }

    v5 = CFErrorCopyUserInfo(a1);
    if (v5)
    {
      v20 = v4;
      v21 = v2;
      v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[__CFDictionary count](v5, "count")}];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v7 = v5;
      v8 = [(__CFDictionary *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v8)
      {
        goto LABEL_20;
      }

      v9 = v8;
      v10 = *v23;
      v11 = *MEMORY[0x1E696AA08];
      while (1)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          if (CFPropertyListIsValid(v13, kCFPropertyListBinaryFormat_v1_0))
          {
            v14 = [(__CFDictionary *)v7 objectForKey:v13];
            if ([v13 isEqualToString:v11])
            {
              ErrorExternalRepresentation = MRMediaRemoteCreateErrorExternalRepresentation(v14);
LABEL_15:
              v16 = ErrorExternalRepresentation;
              if (ErrorExternalRepresentation)
              {
                [v6 setObject:ErrorExternalRepresentation forKey:v13];
              }
            }

            else if (CFPropertyListIsValid(v14, kCFPropertyListBinaryFormat_v1_0))
            {
              ErrorExternalRepresentation = v14;
              goto LABEL_15;
            }

            continue;
          }
        }

        v9 = [(__CFDictionary *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (!v9)
        {
LABEL_20:

          v2 = v21;
          if ([v6 count])
          {
            [v21 setObject:v6 forKey:@"_kMRErrorRepErrorUserInfoKey"];
          }

          v4 = v20;
          break;
        }
      }
    }

    Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], v2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  }

  else
  {
    Data = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return Data;
}

const __CFData *MRMediaRemoteCreateErrorFromExternalRepresentation(const __CFData *result)
{
  if (result)
  {
    v1 = *MEMORY[0x1E695E480];
    v2 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], result, 0, 0, 0);
    v3 = [v2 objectForKey:@"_kMRErrorRepErrorCodeKey"];
    v4 = [v3 unsignedIntegerValue];

    v5 = [v2 objectForKey:@"_kMRErrorRepErrorDomainKey"];
    v6 = [v2 objectForKey:@"_kMRErrorRepErrorUserInfoKey"];
    v7 = [v6 mutableCopy];

    v8 = *MEMORY[0x1E696AA08];
    v9 = [v7 objectForKey:*MEMORY[0x1E696AA08]];
    v10 = v9;
    if (v9)
    {
      ErrorFromExternalRepresentation = MRMediaRemoteCreateErrorFromExternalRepresentation(v9);
      if (ErrorFromExternalRepresentation)
      {
        [v7 setObject:ErrorFromExternalRepresentation forKey:v8];
      }

      else
      {
        [v7 removeObjectForKey:v8];
      }
    }

    v12 = CFErrorCreate(v1, v5, v4, v7);

    return v12;
  }

  return result;
}

uint64_t MRMediaRemoteNowPlayingInfoIsEqual(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = [a1 mutableCopy];
  v4 = [a2 mutableCopy];
  if (v3)
  {
    [v3 removeObjectForKey:@"kMRMediaRemoteNowPlayingInfoContentItemIdentifier"];
  }

  if (v4)
  {
    [v4 removeObjectForKey:@"kMRMediaRemoteNowPlayingInfoContentItemIdentifier"];
  }

  v5 = [v3 MR_isEqualToNowPlayingInfo:v4];

  return v5;
}

uint64_t MRMediaRemoteNowPlayingInfoIsEmpty(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = [a1 mutableCopy];
  [v1 removeObjectForKey:@"kMRMediaRemoteNowPlayingInfoContentItemIdentifier"];
  [v1 removeObjectForKey:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
  v2 = [v1 count] == 0;

  return v2;
}

uint64_t MRProcessIsMediaServerDaemon()
{
  if (MRProcessIsMediaServerDaemon_onceToken != -1)
  {
    MRProcessIsMediaServerDaemon_cold_1();
  }

  return MRProcessIsMediaServerDaemon_isMediaServer;
}

void __MRProcessIsMediaServerDaemon_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  MRProcessIsMediaServerDaemon_isMediaServer = [v1 isEqualToString:@"mediaserverd"];
}

uint64_t MRProcessIsAirPlayDaemon()
{
  if (MRProcessIsAirPlayDaemon_onceToken != -1)
  {
    MRProcessIsAirPlayDaemon_cold_1();
  }

  return MRProcessIsAirPlayDaemon_isDaemon;
}

void __MRProcessIsAirPlayDaemon_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v2 = [v0 processName];

  v1 = MRMediaRemoteCopyLocalDeviceAirPlayReceiverDisplayID();
  MRProcessIsAirPlayDaemon_isDaemon = [v2 isEqualToString:v1];
}

uint64_t MRProcessIsUIService()
{
  if (MRProcessIsUIService_onceToken != -1)
  {
    MRProcessIsUIService_cold_1();
  }

  return MRProcessIsUIService_isService;
}

void __MRProcessIsUIService_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  MRProcessIsUIService_isService = [v1 isEqualToString:@"com.apple.MediaRemoteUIService"];
}

uint64_t MRProcessIsHomePodCannedDemo()
{
  if (MRProcessIsHomePodCannedDemo_onceToken != -1)
  {
    MRProcessIsHomePodCannedDemo_cold_1();
  }

  return MRProcessIsHomePodCannedDemo_isChannelDemo;
}

void __MRProcessIsHomePodCannedDemo_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 containsString:@"HomePodCannedDemo"];
  MRProcessIsHomePodCannedDemo_isChannelDemo = (v0 | [v1 containsString:@"ChannelDemoCap"]) & 1;
}

CFStringRef MRErrorCopyDescription(__CFError *Code)
{
  if (Code)
  {
    Code = CFErrorGetCode(Code);
    v1 = vars8;
  }

  return MRMediaRemoteErrorCopyDescription(Code);
}

__CFString *MRArrayCopySingleLineDescription(void *a1)
{
  if (!a1)
  {
    return @"<null>";
  }

  v1 = a1;
  v2 = [MEMORY[0x1E696AD60] string];
  [v2 appendString:@"{"];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __MRArrayCopySingleLineDescription_block_invoke;
  v10 = &unk_1E76A0ED0;
  v11 = v2;
  v12 = v1;
  v3 = v1;
  v4 = v2;
  [v3 enumerateObjectsUsingBlock:&v7];
  [v4 appendString:{@"}", v7, v8, v9, v10}];
  v5 = [v4 copy];

  return v5;
}

uint64_t __MRArrayCopySingleLineDescription_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 description];
  [v5 appendString:v6];

  result = [*(a1 + 40) count];
  if (result - 1 != a3)
  {
    v8 = *(a1 + 32);

    return [v8 appendString:{@", "}];
  }

  return result;
}

BOOL MRMediaRemoteErrorIsInformational(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:@"kMRMediaRemoteFrameworkErrorDomain"];

  v4 = v3 && [v1 code] >= 200 && objc_msgSend(v1, "code") < 300;
  return v4;
}

uint64_t MRMediaRemoteCopyApplicationEntitlements(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFD8] setWithArray:a2];
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
    v5 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:a1];
    v6 = [v5 entitlementValuesForKeys:v3];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v6 objectForKey:{v12, v17}];
          if (v13)
          {
            [v4 setObject:v13 forKeyedSubscript:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = [v4 copy];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

__SecTask *MRMediaRemoteCopyEntitlements(const __CFArray *a1)
{
  result = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (result)
  {
    v3 = result;
    v4 = SecTaskCopyValuesForEntitlements(result, a1, 0);
    CFRelease(v3);
    return v4;
  }

  return result;
}

void MRMediaRemoteRequestDeviceUID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    MRMediaRemoteRequestDeviceUID_cold_1();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  MRMediaRemoteRequestDeviceUID_cold_2();
LABEL_3:
  if (MRProcessIsMediaRemoteDaemon_onceToken != -1)
  {
    MRMediaRemoteRequestDeviceUID_cold_3();
  }

  if (MRProcessIsMediaRemoteDaemon_isDaemon == 1)
  {
    v6 = MRMediaRemoteCopyDeviceUID();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __MRMediaRemoteRequestDeviceUID_block_invoke;
    block[3] = &unk_1E769AB28;
    v13 = v6;
    v14 = v5;
    v7 = v5;
    v8 = v6;
    dispatch_async(v3, block);
  }

  else
  {
    v9 = +[MROrigin localOrigin];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __MRMediaRemoteRequestDeviceUID_block_invoke_2;
    v10[3] = &unk_1E76A09A8;
    v11 = v5;
    v8 = v5;
    [MRDeviceInfoRequest deviceInfoForOrigin:v9 queue:v3 completion:v10];

    v7 = v11;
  }
}

void __MRMediaRemoteRequestDeviceUID_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 deviceUID];
  (*(v2 + 16))(v2, v3);
}

void _MRMediaRemoteGetDeviceUIDWithRetryIntervals(void *a1, unint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (_MRMediaRemoteGetDeviceUIDWithRetryIntervals_onceToken != -1)
  {
    _MRMediaRemoteGetDeviceUIDWithRetryIntervals_cold_1();
  }

  if ([v7 count] >= a2)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = ___MRMediaRemoteGetDeviceUIDWithRetryIntervals_block_invoke_2;
    v24[3] = &unk_1E76A0EF8;
    v11 = &v25;
    v25 = v8;
    v27 = v9;
    v28 = a2;
    v12 = v7;
    v26 = v12;
    v13 = MEMORY[0x1A58E3570](v24);
    v14 = v13;
    if (a2)
    {
      v15 = [v12 objectAtIndexedSubscript:a2 - 1];
      [v15 doubleValue];
      v17 = v16;

      v18 = dispatch_time(0, (v17 * 1000000000.0));
      v19 = _MRMediaRemoteGetDeviceUIDWithRetryIntervals_workerQueue;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = ___MRMediaRemoteGetDeviceUIDWithRetryIntervals_block_invoke_457;
      v20[3] = &unk_1E76A0F20;
      v22 = a2;
      v23 = v17;
      v21 = v14;
      dispatch_after(v18, v19, v20);
    }

    else
    {
      (*(v13 + 16))(v13);
    }
  }

  else
  {
    v10 = _MRLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _MRMediaRemoteGetDeviceUIDWithRetryIntervals_cold_2(v7, v10);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___MRMediaRemoteGetDeviceUIDWithRetryIntervals_block_invoke_456;
    block[3] = &unk_1E769AD58;
    v11 = &v30;
    v30 = v9;
    dispatch_async(v8, block);
  }
}

void MRMediaRemoteRequestGroupUID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (MRProcessIsMediaRemoteDaemon_onceToken != -1)
  {
    MRMediaRemoteRequestDeviceUID_cold_3();
  }

  if (MRProcessIsMediaRemoteDaemon_isDaemon == 1)
  {
    v5 = MRMediaRemoteCopyGroupUID();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __MRMediaRemoteRequestGroupUID_block_invoke;
    block[3] = &unk_1E769AB28;
    v12 = v5;
    v13 = v4;
    v6 = v4;
    v7 = v5;
    dispatch_async(v3, block);
  }

  else
  {
    v8 = +[MROrigin localOrigin];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __MRMediaRemoteRequestGroupUID_block_invoke_2;
    v9[3] = &unk_1E76A09A8;
    v10 = v4;
    v7 = v4;
    [MRDeviceInfoRequest deviceInfoForOrigin:v8 queue:v3 completion:v9];

    v6 = v10;
  }
}

uint64_t MRMediaRemoteCopyGroupUID()
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
    v3 = [v2 groupUID];
    goto LABEL_8;
  }

  MRMediaRemoteAirPlayReceiverCopyGroupIdentity();
  v3 = 0;
LABEL_8:

  return v3;
}

void __MRMediaRemoteRequestGroupUID_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 groupUID];
  (*(v2 + 16))(v2, v3);
}

void MRMediaRemoteRequestAirPlayGroupUID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (MRProcessIsMediaRemoteDaemon_onceToken != -1)
  {
    MRMediaRemoteRequestDeviceUID_cold_3();
  }

  if (MRProcessIsMediaRemoteDaemon_isDaemon == 1)
  {
    v5 = MRMediaRemoteCopyAirPlayGroupUID();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __MRMediaRemoteRequestAirPlayGroupUID_block_invoke;
    block[3] = &unk_1E769AB28;
    v12 = v5;
    v13 = v4;
    v6 = v4;
    v7 = v5;
    dispatch_async(v3, block);
  }

  else
  {
    v8 = +[MROrigin localOrigin];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __MRMediaRemoteRequestAirPlayGroupUID_block_invoke_2;
    v9[3] = &unk_1E76A09A8;
    v10 = v4;
    v7 = v4;
    [MRDeviceInfoRequest deviceInfoForOrigin:v8 queue:v3 completion:v9];

    v6 = v10;
  }
}

uint64_t MRMediaRemoteCopyAirPlayGroupUID()
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
    v3 = [v2 airPlayGroupUID];
    goto LABEL_8;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

void __MRMediaRemoteRequestAirPlayGroupUID_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 airPlayGroupUID];
  (*(v2 + 16))(v2, v3);
}

void MRMediaRemoteRequestIsGroupLeader(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    MRMediaRemoteRequestIsGroupLeader_cold_1();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  MRMediaRemoteRequestIsGroupLeader_cold_2();
LABEL_3:
  if (MRProcessIsMediaRemoteDaemon_onceToken != -1)
  {
    MRMediaRemoteRequestDeviceUID_cold_3();
  }

  if (MRProcessIsMediaRemoteDaemon_isDaemon == 1)
  {
    IsGroupLeader = MRMediaRemoteGetIsGroupLeader();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __MRMediaRemoteRequestIsGroupLeader_block_invoke;
    block[3] = &unk_1E769AB78;
    v7 = &v14;
    v14 = v5;
    v15 = IsGroupLeader;
    v8 = v5;
    dispatch_async(v3, block);
  }

  else
  {
    v9 = +[MROrigin localOrigin];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __MRMediaRemoteRequestIsGroupLeader_block_invoke_2;
    v11[3] = &unk_1E76A09A8;
    v7 = &v12;
    v12 = v5;
    v10 = v5;
    [MRDeviceInfoRequest deviceInfoForOrigin:v9 queue:v3 completion:v11];
  }
}

uint64_t MRMediaRemoteGetIsGroupLeader()
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
    v3 = [v2 isGroupLeader];
    goto LABEL_8;
  }

  v3 = 1;
LABEL_8:

  return v3;
}

uint64_t __MRMediaRemoteRequestIsGroupLeader_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isGroupLeader];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void MRMediaRemoteRequestSenderDefaultGroupUID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (MRProcessIsMediaRemoteDaemon_onceToken != -1)
  {
    MRMediaRemoteRequestDeviceUID_cold_3();
  }

  if (MRProcessIsMediaRemoteDaemon_isDaemon == 1)
  {
    v5 = MRMediaRemoteCopySenderDefaultGroupUID();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __MRMediaRemoteRequestSenderDefaultGroupUID_block_invoke;
    block[3] = &unk_1E769AB28;
    v12 = v5;
    v13 = v4;
    v6 = v4;
    v7 = v5;
    dispatch_async(v3, block);
  }

  else
  {
    v8 = +[MROrigin localOrigin];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __MRMediaRemoteRequestSenderDefaultGroupUID_block_invoke_2;
    v9[3] = &unk_1E76A09A8;
    v10 = v4;
    v7 = v4;
    [MRDeviceInfoRequest deviceInfoForOrigin:v8 queue:v3 completion:v9];

    v6 = v10;
  }
}

uint64_t MRMediaRemoteCopySenderDefaultGroupUID()
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
    v3 = [v2 senderDefaultGroupUID];
    goto LABEL_8;
  }

  v3 = MRMediaRemoteCopyLocalAirPlaySenderDefaultGroupIdentity();
LABEL_8:
  v4 = v3;

  return v4;
}

void __MRMediaRemoteRequestSenderDefaultGroupUID_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 senderDefaultGroupUID];
  (*(v2 + 16))(v2, v3);
}

uint64_t AirPlaySupportLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AirPlaySupportLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AirPlaySupportLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E76A1000;
    v5 = 0;
    AirPlaySupportLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AirPlaySupportLibraryCore_frameworkLibrary;
  if (!AirPlaySupportLibraryCore_frameworkLibrary)
  {
    AirPlaySupportLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

BOOL MRMediaRemoteAVOutputDeviceIsLocalForAirPlay(void *a1)
{
  v1 = [a1 airPlayProperties];
  v2 = [v1 objectForKeyedSubscript:@"IsLocalDevice"];
  v3 = v2 != 0;

  return v3;
}

id MRMediaRemoteAddVirtualOutputDevice(void *a1, void *a2)
{
  v3 = a2;
  v4 = MRGetSharedService();
  v5 = MRMediaRemoteServiceAddVirtualOutputDevice(v4, a1, v3);

  return v5;
}

uint64_t MRMediaRemoteCopyVirtualOutputDevices()
{
  if (MRProcessIsMediaRemoteDaemon_onceToken != -1)
  {
    MRMediaRemoteRequestDeviceUID_cold_3();
  }

  if ((MRProcessIsMediaRemoteDaemon_isDaemon & 1) != 0 || !_os_feature_enabled_impl())
  {
    return 0;
  }

  v0 = MRGetSharedService();
  MRMediaRemoteServiceCopyVirtualOutputDevices(v0);
  return objc_claimAutoreleasedReturnValue();
}

__CFString *MRMediaRemoteCopyReadableDictionaryDescription(void *a1)
{
  if (!a1)
  {
    return @"NULL";
  }

  v1 = MEMORY[0x1E696AD60];
  v2 = a1;
  v3 = [v1 string];
  [v3 appendFormat:@"<NSCFDictionary %p {", v2];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MRMediaRemoteCopyReadableDictionaryDescription_block_invoke;
  v7[3] = &unk_1E769EC90;
  v8 = v3;
  v4 = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v7];

  [v4 appendString:@"\n}>"];
  v5 = [v4 copy];

  return v5;
}

void __MRMediaRemoteCopyReadableDictionaryDescription_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    StringRepresentation = MRDataCreateStringRepresentation(v5);

    v5 = StringRepresentation;
  }

  [*(a1 + 32) appendFormat:@"\n\t%@ = %@", v7, v5];
}

uint64_t MRCopyMediaRemoteLibraryDirectory()
{
  v9[3] = *MEMORY[0x1E69E9840];
  v0 = MSVMobileHomeDirectory();
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = @"~";
  }

  v2 = MEMORY[0x1E696AEC0];
  v9[0] = v1;
  v9[1] = @"Library";
  v9[2] = @"MediaRemote";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  v4 = [v2 pathWithComponents:v3];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

  v6 = [v4 copy];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t MRCopyDeviceInfoPath()
{
  v0 = MRCopyMediaRemoteLibraryDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"MediaRemoteTelevisionDeviceInfoIdentifier.plist"];

  return v1;
}

CFStringRef MRCreateASCIIRepresentationFromImageData(const __CFData *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CGImageSourceCreateWithData(a1, 0);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v1, 0, 0);
  if (v1)
  {
    CFRelease(v1);
  }

  Width = CGImageGetWidth(ImageAtIndex);
  Height = CGImageGetHeight(ImageAtIndex);
  v5 = 350.0 / Width;
  if (350.0 / Width >= 650.0 / Height)
  {
    v5 = 650.0 / Height;
  }

  v6 = ceil(v5 * Width / 7.0);
  if (v6 == 0.0 || (v7 = ceil(v5 * Height / 13.0), v7 == 0.0))
  {
    CGImageRelease(ImageAtIndex);
    return 0;
  }

  DeviceGray = CGColorSpaceCreateDeviceGray();
  v10 = CGBitmapContextCreate(0, v6, v7, 8uLL, 0, DeviceGray, 0);
  CGColorSpaceRelease(DeviceGray);
  CGContextSaveGState(v10);
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v6;
  v24.size.height = v7;
  CGContextDrawImage(v10, v24, ImageAtIndex);
  CGContextRestoreGState(v10);
  Data = CGBitmapContextGetData(v10);
  BytesPerRow = CGBitmapContextGetBytesPerRow(v10);
  v13 = v6 + 1.0;
  v14 = vcvtd_n_u64_f64(v7 * (v6 + 1.0), 2uLL);
  v15 = malloc_type_malloc(v14, 0x3D771173uLL);
  v16 = v15;
  if (v7 > 0.0)
  {
    v17 = 0;
    v18 = v15;
    do
    {
      if (v6 > 0.0)
      {
        v19 = 0;
        do
        {
          v20 = Data[v19] / 0x19u;
          if (v20 >= 9)
          {
            v20 = 9;
          }

          *&v18[4 * v19++] = _MRCharacterForBrightness_chars[v20];
        }

        while (v6 > v19);
      }

      *&v16[4 * ++v17 * v13 - 4] = 10;
      Data += BytesPerRow;
      v18 += 4 * v13;
    }

    while (v7 > v17);
  }

  CGContextRelease(v10);
  CGImageRelease(ImageAtIndex);
  v21 = *MEMORY[0x1E695E480];
  v22 = *MEMORY[0x1E695E480];

  return CFStringCreateWithBytesNoCopy(v21, v16, v14, 0x1C000100u, 0, v22);
}

id MRCreateIndentedDebugDescriptionFromDictionary(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __MRCreateIndentedDebugDescriptionFromDictionary_block_invoke;
    v8[3] = &unk_1E769EC90;
    v3 = v2;
    v9 = v3;
    [v1 enumerateKeysAndObjectsUsingBlock:v8];
    [v3 addObject:@"}"];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 componentsJoinedByString:@"\n"];
  v5 = MRCreateFormattedDebugDescriptionFromClass(v1, v4);
  v6 = MRCreateIndentedDebugDescriptionFromObject(v5);

  return v6;
}

void __MRCreateIndentedDebugDescriptionFromDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v10 = _MRCreateIndentedDebugDescriptionFrom(v6);

  v9 = [v8 initWithFormat:@"%@ = %@, ", v7, v10];
  [v4 addObject:v9];
}

void MRInvalidateTransactions()
{
  if (_MRRegisteredTransactionsInitialize_onceToken != -1)
  {
    MRRegisterTransaction_cold_1();
  }

  v1 = __registeredTransactionsQueue;

  dispatch_async(v1, &__block_literal_global_592);
}

void __MRInvalidateTransactions_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  __transactionShutdownTriggered = 1;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v0 = __registeredTransactions;
  v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v7;
    do
    {
      v4 = 0;
      do
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v0);
        }

        [*(*(&v6 + 1) + 8 * v4++) invalidateTransaction];
      }

      while (v2 != v4);
      v2 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v2);
  }

  v5 = *MEMORY[0x1E69E9840];
}

id MRCopyRegisteredTransactionDescriptions()
{
  if (_MRRegisteredTransactionsInitialize_onceToken != -1)
  {
    MRRegisterTransaction_cold_1();
  }

  v3 = 0;
  v4 = &v3;
  v5 = 0x3032000000;
  v6 = __Block_byref_object_copy__31;
  v7 = __Block_byref_object_dispose__31;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MRCopyRegisteredTransactionDescriptions_block_invoke;
  block[3] = &unk_1E769ADA8;
  block[4] = &v3;
  dispatch_sync(__registeredTransactionsQueue, block);
  v0 = [v4[5] copy];
  _Block_object_dispose(&v3, 8);

  return v0;
}

void sub_1A2A1CFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MRCopyRegisteredTransactionDescriptions_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [__registeredTransactions allObjects];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_595];

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(*(a1 + 32) + 8) + 40);
        v13 = [*(*(&v15 + 1) + 8 * v11) description];
        [v12 addObject:v13];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __MRCopyRegisteredTransactionDescriptions_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 transactionName];
  v6 = [v4 transactionName];

  v7 = [v5 compare:v6];
  return v7;
}

void __MRDictionaryCalculateDeltas_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69B1470];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v10 = [MEMORY[0x1E695DFB0] null];
  v9 = [v8 initWithFirst:v10 second:v6];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
}

void __MRDictionaryCalculateDeltas_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69B1470];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v10 = [MEMORY[0x1E695DFB0] null];
  v9 = [v8 initWithFirst:v6 second:v10];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
}

uint64_t MRIsObjectOfClass(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (MSVDeviceOSIsInternalInstall())
  {
    if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      MRIsObjectOfClass_cold_1(v3, a2);
    }

    goto LABEL_7;
  }

  if (!v3 || (objc_opt_isKindOfClass() & 1) != 0)
  {
LABEL_7:
    v4 = 1;
    goto LABEL_8;
  }

  v7 = _MRLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = a2;
    _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "Type mismatch, expecting %@ found %@", &v8, 0x16u);
  }

  v4 = 0;
LABEL_8:

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void MRPerformAsyncOperationsUntilError(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 firstObject];
  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __MRPerformAsyncOperationsUntilError_block_invoke;
    v6[3] = &unk_1E769BCD0;
    v7 = v3;
    v8 = v4;
    (v5)[2](v5, v6);
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

void __MRPerformAsyncOperationsUntilError_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 32) mutableCopy];
    [v5 removeObjectAtIndex:0];
    MRPerformAsyncOperationsUntilError(v5, *(a1 + 40));
  }
}

void _MRPerformAsyncOperationsUntilSuccess(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 firstObject];
  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___MRPerformAsyncOperationsUntilSuccess_block_invoke;
    v9[3] = &unk_1E769BCD0;
    v10 = v5;
    v11 = v7;
    (v8)[2](v8, v9);
  }

  else
  {
    (*(v7 + 2))(v7, v6);
  }
}

uint64_t soft_APSParseGroupID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v8 = getAPSParseGroupIDSymbolLoc_ptr;
  v14 = getAPSParseGroupIDSymbolLoc_ptr;
  if (!getAPSParseGroupIDSymbolLoc_ptr)
  {
    v9 = AirPlaySupportLibrary();
    v12[3] = dlsym(v9, "APSParseGroupID");
    getAPSParseGroupIDSymbolLoc_ptr = v12[3];
    v8 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v8)
  {
    soft_APSParseGroupID_cold_1();
  }

  return v8(a1, 0, a2, a3, a4);
}

void sub_1A2A1D7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MRComputeClusterMemberID(id a1)
{
  if (a1)
  {
    var8[0] = 0;
    soft_APSParseGroupID(a1, var8, 0, 0);
    a1 = var8[0];
    v1 = var8[2];
  }

  return a1;
}

id MRComputeGroupIDWithDeviceInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 senderDefaultGroupUID];
  if ([v3 clusterType])
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [v3 preferredClusterLeaderID];
    v8 = [v3 deviceUID];
    v9 = [v6 numberWithBool:{objc_msgSend(v7, "isEqualToString:", v8)}];
    v10 = MRComputeGroupID(v5, v9, v4);
  }

  else
  {
    v10 = MRComputeGroupID(v5, 0, v4);
  }

  return v10;
}

id MRComputeGroupID(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = a1;
  v9 = [v6 alloc];
  if (v5)
  {
    v10 = [v9 initWithFormat:@"%@+%@+%@", v8, v5, v7];
  }

  else
  {
    v10 = [v9 initWithFormat:@"%@+%@", v8, v7, v13];
  }

  v11 = v10;

  return v11;
}

__CFString *MRCopyDeviceName()
{
  if ([MEMORY[0x1E69B1418] hasBoolEntitlement:@"com.apple.developer.device-information.user-assigned-device-name"])
  {
    v0 = MGCopyAnswer();
  }

  else
  {
    v0 = MSVCopyLocalizedModelName();
  }

  if (!v0)
  {
    v0 = @"Unknown";
  }

  return v0;
}

void MRProcessIDForApplication(void *a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (v6)
    {
      if (v5)
      {
LABEL_4:
        v8 = objc_alloc(MEMORY[0x1E698D028]);
        v20[0] = v5;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
        v10 = [v8 initWithBundleIDs:v9 states:*MEMORY[0x1E698CFE8]];

        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __MRProcessIDForApplication_block_invoke_2;
        v14[3] = &unk_1E76A0FE0;
        v15 = v6;
        v16 = v10;
        v17 = v7;
        v11 = v10;
        [v11 applicationInfoForApplication:v5 completion:v14];

LABEL_7:
        goto LABEL_8;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E96A0];
      v12 = MEMORY[0x1E69E96A0];
      if (v5)
      {
        goto LABEL_4;
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __MRProcessIDForApplication_block_invoke;
    block[3] = &unk_1E769AD58;
    v19 = v7;
    dispatch_async(v6, block);
    v11 = v19;
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

void __MRProcessIDForApplication_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*MEMORY[0x1E698D018]];
  v4 = [v3 intValue];

  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __MRProcessIDForApplication_block_invoke_3;
  v9 = &unk_1E769ACB8;
  v10 = *(a1 + 48);
  v11 = v4;
  dispatch_async(v5, &v6);
  [*(a1 + 40) invalidate];
}

uint64_t __AirPlaySupportLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AirPlaySupportLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getAPSCopyDefaultGroupUUIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AirPlaySupportLibrary();
  result = dlsym(v2, "APSCopyDefaultGroupUUID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAPSCopyDefaultGroupUUIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAPSParseGroupIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AirPlaySupportLibrary();
  result = dlsym(v2, "APSParseGroupID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAPSParseGroupIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id MRTransactionPacketsGetShallowCopy(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) copy];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

void sub_1A2A206C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MRTransactionNameGetDescription(unint64_t a1)
{
  if (a1 > 0xB)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(__CFString *)off_1E76A1708[a1] stringByAppendingString:@"Transaction", v1];
  }

  return v3;
}

void sub_1A2A20B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MRTransactionPacketsCreateExternalRepresentation(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 count])
  {
    v3 = objc_alloc_init(_MRTransactionPacketsProtobuf);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v2;
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

          v9 = [*(*(&v13 + 1) + 8 * i) protobuf];
          [(_MRTransactionPacketsProtobuf *)v3 addPackets:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v10 = [(_MRTransactionPacketsProtobuf *)v3 data];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id MRTransactionPacketsGetKeys(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 key];
        if (v9)
        {
          v10 = v9;
          v11 = [v8 key];
          v12 = [v11 identifier];

          if (v12)
          {
            v13 = [v8 key];
            v14 = [v13 identifier];
            [v2 addObject:v14];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v2;
}

id MRTransactionPacketsCreateFromExternalRepresentation(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [[_MRTransactionPacketsProtobuf alloc] initWithData:v1];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(_MRTransactionPacketsProtobuf *)v3 packets];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [[MRTransactionPacket alloc] initWithProtobuf:*(*(&v12 + 1) + 8 * i)];
        [v2 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v2;
}

__CFString *NSStringFromMRClientVisibility(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Undefined";
  }

  else
  {
    return off_1E76A1768[a1 - 1];
  }
}

_DWORD *_MSV_XXH_XXH32_update_0(_DWORD *result, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    v5 = result;
    v6 = result[1];
    v7 = *result + __n;
    v9 = __n > 0xF || v7 > 0xF;
    *result = v7;
    result[1] = v6 | v9;
    v10 = result[10];
    if (v10 + __n <= 0xF)
    {
      result = memcpy(result + v10 + 24, __src, __n);
      LODWORD(v11) = v5[10] + v3;
LABEL_18:
      v5[10] = v11;
      return result;
    }

    v12 = &__src[__n];
    if (v10)
    {
      result = memcpy(result + v10 + 24, __src, (16 - v10));
      HIDWORD(v13) = v5[2] - 2048144777 * v5[6];
      LODWORD(v13) = HIDWORD(v13);
      v14 = -1640531535 * (v13 >> 19);
      HIDWORD(v13) = v5[3] - 2048144777 * v5[7];
      LODWORD(v13) = HIDWORD(v13);
      v5[2] = v14;
      v5[3] = -1640531535 * (v13 >> 19);
      v15 = v5[9];
      HIDWORD(v13) = v5[4] - 2048144777 * v5[8];
      LODWORD(v13) = HIDWORD(v13);
      v5[4] = -1640531535 * (v13 >> 19);
      HIDWORD(v13) = v5[5] - 2048144777 * v15;
      LODWORD(v13) = HIDWORD(v13);
      v5[5] = -1640531535 * (v13 >> 19);
      v4 += (16 - v5[10]);
      v5[10] = 0;
    }

    if (v4 <= v12 - 16)
    {
      v16 = v5[2];
      v17 = v5[3];
      v18 = v5[4];
      v19 = v5[5];
      do
      {
        HIDWORD(v20) = v16 - 2048144777 * *v4;
        LODWORD(v20) = HIDWORD(v20);
        v16 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v17 - 2048144777 * *(v4 + 1);
        LODWORD(v20) = HIDWORD(v20);
        v17 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v18 - 2048144777 * *(v4 + 2);
        LODWORD(v20) = HIDWORD(v20);
        v18 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v19 - 2048144777 * *(v4 + 3);
        LODWORD(v20) = HIDWORD(v20);
        v19 = -1640531535 * (v20 >> 19);
        v4 += 16;
      }

      while (v4 <= v12 - 16);
      v5[2] = v16;
      v5[3] = v17;
      v5[4] = v18;
      v5[5] = v19;
    }

    if (v4 < v12)
    {
      v11 = v12 - v4;
      result = memcpy(v5 + 6, v4, v11);
      goto LABEL_18;
    }
  }

  return result;
}

char *_MSV_XXH_XXH64_update(char *result, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    v5 = result;
    *result += __n;
    v6 = *(result + 18);
    if (v6 + __n <= 0x1F)
    {
      result = memcpy(&result[v6 + 40], __src, __n);
      LODWORD(v7) = *(v5 + 18) + v3;
LABEL_12:
      *(v5 + 18) = v7;
      return result;
    }

    v8 = &__src[__n];
    if (v6)
    {
      result = memcpy(&result[v6 + 40], __src, (32 - v6));
      v9 = __ROR8__(*(v5 + 2) - 0x3D4D51C2D82B14B1 * *(v5 + 6), 33);
      *(v5 + 1) = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 1) - 0x3D4D51C2D82B14B1 * *(v5 + 5), 33);
      *(v5 + 2) = 0x9E3779B185EBCA87 * v9;
      v10 = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 4) - 0x3D4D51C2D82B14B1 * *(v5 + 8), 33);
      *(v5 + 3) = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 3) - 0x3D4D51C2D82B14B1 * *(v5 + 7), 33);
      *(v5 + 4) = v10;
      v4 += (32 - *(v5 + 18));
      *(v5 + 18) = 0;
    }

    if (v4 + 32 <= v8)
    {
      v11 = *(v5 + 1);
      v12 = *(v5 + 2);
      v14 = *(v5 + 3);
      v13 = *(v5 + 4);
      do
      {
        v11 = 0x9E3779B185EBCA87 * __ROR8__(v11 - 0x3D4D51C2D82B14B1 * *v4, 33);
        v12 = 0x9E3779B185EBCA87 * __ROR8__(v12 - 0x3D4D51C2D82B14B1 * *(v4 + 1), 33);
        v14 = 0x9E3779B185EBCA87 * __ROR8__(v14 - 0x3D4D51C2D82B14B1 * *(v4 + 2), 33);
        v13 = 0x9E3779B185EBCA87 * __ROR8__(v13 - 0x3D4D51C2D82B14B1 * *(v4 + 3), 33);
        v4 += 32;
      }

      while (v4 <= v8 - 32);
      *(v5 + 1) = v11;
      *(v5 + 2) = v12;
      *(v5 + 3) = v14;
      *(v5 + 4) = v13;
    }

    if (v4 < v8)
    {
      v7 = v8 - v4;
      result = memcpy(v5 + 40, v4, v7);
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t MRMediaRemoteCommandToProtobuf(uint64_t a1)
{
  v2 = a1;
  result = 1;
  switch(v2)
  {
    case 0:
      return result;
    case 1:
      result = 2;
      break;
    case 2:
      result = 3;
      break;
    case 3:
      result = 4;
      break;
    case 4:
      result = 5;
      break;
    case 5:
      result = 6;
      break;
    case 6:
      result = 7;
      break;
    case 7:
      result = 8;
      break;
    case 8:
      result = 9;
      break;
    case 9:
      result = 10;
      break;
    case 10:
      result = 11;
      break;
    case 11:
      result = 12;
      break;
    case 12:
      result = 13;
      break;
    case 13:
      result = 14;
      break;
    case 14:
      result = 15;
      break;
    case 15:
      result = 16;
      break;
    case 17:
      result = 18;
      break;
    case 18:
      result = 19;
      break;
    case 19:
      result = 20;
      break;
    case 20:
      result = 21;
      break;
    case 21:
      result = 22;
      break;
    case 22:
      result = 23;
      break;
    case 23:
      result = 24;
      break;
    case 24:
      result = 45;
      break;
    case 25:
      result = 46;
      break;
    case 26:
      result = 47;
      break;
    case 27:
      result = 53;
      break;
    case 28:
      result = 54;
      break;
    case 100:
      result = 25;
      break;
    case 101:
      result = 26;
      break;
    case 102:
      result = 27;
      break;
    case 103:
      result = 28;
      break;
    case 104:
      result = 29;
      break;
    case 105:
      result = 30;
      break;
    case 106:
      result = 31;
      break;
    case 107:
      result = 32;
      break;
    case 108:
      result = 33;
      break;
    case 109:
      result = 34;
      break;
    case 110:
      result = 35;
      break;
    case 116:
      result = 41;
      break;
    case 121:
      result = 50;
      break;
    case 122:
      result = 48;
      break;
    case 124:
    case 135:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 149:
      result = a1;
      break;
    case 125:
      result = 52;
      break;
    case 127:
      result = 49;
      break;
    case 128:
      result = 51;
      break;
    case 129:
      result = 56;
      break;
    case 130:
      result = 55;
      break;
    case 131:
      result = 57;
      break;
    case 132:
      result = 58;
      break;
    case 133:
      result = 59;
      break;
    case 134:
      result = 63;
      break;
    case 136:
      result = 60;
      break;
    case 137:
      result = 61;
      break;
    case 138:
      result = 62;
      break;
    case 139:
      result = 64;
      break;
    case 140:
      result = 65;
      break;
    default:
      if ((a1 - 25000) >= 0x124F8)
      {
        result = 0;
      }

      else
      {
        result = a1;
      }

      break;
  }

  return result;
}

uint64_t MRMediaRemoteCommandFromProtobuf(uint64_t a1)
{
  v2 = a1;
  result = 0;
  switch(v2)
  {
    case 0:
      result = 0xFFFFFFFFLL;
      break;
    case 1:
      return result;
    case 2:
      result = 1;
      break;
    case 3:
      result = 2;
      break;
    case 4:
      result = 3;
      break;
    case 5:
      result = 4;
      break;
    case 6:
      result = 5;
      break;
    case 7:
      result = 6;
      break;
    case 8:
      result = 7;
      break;
    case 9:
      result = 8;
      break;
    case 10:
      result = 9;
      break;
    case 11:
      result = 10;
      break;
    case 12:
      result = 11;
      break;
    case 13:
      result = 12;
      break;
    case 14:
      result = 13;
      break;
    case 15:
      result = 14;
      break;
    case 16:
      result = 15;
      break;
    case 18:
      result = 17;
      break;
    case 19:
      result = 18;
      break;
    case 20:
      result = 19;
      break;
    case 21:
      result = 20;
      break;
    case 22:
      result = 21;
      break;
    case 23:
      result = 22;
      break;
    case 24:
      result = 23;
      break;
    case 25:
      result = 100;
      break;
    case 26:
      result = 101;
      break;
    case 27:
      result = 102;
      break;
    case 28:
      result = 103;
      break;
    case 29:
      result = 104;
      break;
    case 30:
      result = 105;
      break;
    case 31:
      result = 106;
      break;
    case 32:
      result = 107;
      break;
    case 33:
      result = 108;
      break;
    case 34:
      result = 109;
      break;
    case 35:
      result = 110;
      break;
    case 41:
      result = 116;
      break;
    case 45:
      result = 24;
      break;
    case 46:
      result = 25;
      break;
    case 47:
      result = 26;
      break;
    case 48:
      result = 122;
      break;
    case 49:
      result = 127;
      break;
    case 50:
      result = 121;
      break;
    case 51:
      result = 128;
      break;
    case 52:
      result = 125;
      break;
    case 53:
      result = 27;
      break;
    case 54:
      result = 28;
      break;
    case 55:
      result = 130;
      break;
    case 56:
      result = 129;
      break;
    case 57:
      result = 131;
      break;
    case 58:
      result = 132;
      break;
    case 59:
      result = 133;
      break;
    case 60:
      result = 136;
      break;
    case 61:
      result = 137;
      break;
    case 62:
      result = 138;
      break;
    case 63:
      result = 134;
      break;
    case 64:
      result = 139;
      break;
    case 65:
      result = 140;
      break;
    case 124:
    case 135:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 149:
      result = a1;
      break;
    default:
      if ((a1 - 25000) >= 0x124F8)
      {
        result = 0xFFFFFFFFLL;
      }

      else
      {
        result = a1;
      }

      break;
  }

  return result;
}

id MRMediaRemoteCommandOptionsToProtobuf(void *a1)
{
  v1 = a1;
  v2 = _MRMediaRemoteCommandOptionsSerialization();
  v3 = [v2 createProtobufFromDictionary:v1];

  return v3;
}

id _MRMediaRemoteCommandOptionsSerialization()
{
  if (_MRMediaRemoteCommandOptionsSerialization___onceToken != -1)
  {
    _MRMediaRemoteCommandOptionsSerialization_cold_1();
  }

  v1 = _MRMediaRemoteCommandOptionsSerialization___serialization;

  return v1;
}

id MRMediaRemoteCommandOptionsFromProtobuf(void *a1)
{
  v1 = a1;
  v2 = _MRMediaRemoteCommandOptionsSerialization();
  v3 = [v2 createDictionaryFromProtobuf:v1];

  return v3;
}

uint64_t MRMediaRemoteRepeatModeToProtobuf(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t MRMediaRemoteRepeatModeFromProtobuf(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t MRMediaRemoteShuffleModeToProtobuf(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t MRMediaRemoteShuffleModeFromProtobuf(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_MRSupportedCommandsProtobuf *MRCreateProtobufFromSupportedCommands(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = objc_alloc_init(_MRSupportedCommandsProtobuf);
  v3 = [v1 mr_map:&__block_literal_global_194];

  v4 = [v3 mutableCopy];
  [(_MRSupportedCommandsProtobuf *)v2 setSupportedCommands:v4];

  return v2;
}

uint64_t MRCreateSupportedCommandsFromProtobuf(void *a1)
{
  v1 = [a1 supportedCommands];
  v2 = [v1 mr_map:&__block_literal_global_197_0];
  v3 = [v2 mutableCopy];

  return v3;
}

MRCommandInfo *__MRCreateSupportedCommandsFromProtobuf_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRCommandInfo alloc] initWithProtobuf:v2];

  return v3;
}

id _MRNowPlayingInfoDictionaryKeyToProtobufKeyMapping()
{
  if (_MRNowPlayingInfoDictionaryKeyToProtobufKeyMapping_onceToken != -1)
  {
    _MRNowPlayingInfoDictionaryKeyToProtobufKeyMapping_cold_1();
  }

  v1 = _MRNowPlayingInfoDictionaryKeyToProtobufKeyMapping___mapping;

  return v1;
}

id _MRNowPlayingInfoSerialization()
{
  if (_MRNowPlayingInfoSerialization___onceToken != -1)
  {
    _MRNowPlayingInfoSerialization_cold_1();
  }

  v1 = _MRNowPlayingInfoSerialization___serialization;

  return v1;
}

uint64_t MRCreateProtobufFromNowPlayingInfo(void *a1)
{
  v1 = a1;
  v2 = _MRNowPlayingInfoSerialization();
  v3 = [v2 createProtobufFromDictionary:v1];

  return v3;
}

uint64_t MRCreateNowPlayingInfoFromProtobuf(void *a1)
{
  v1 = a1;
  v2 = _MRNowPlayingInfoSerialization();
  v3 = [v2 createDictionaryFromProtobuf:v1];

  return v3;
}

uint64_t MRProtobufFromGameControllerProfile(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t MRGameControllerProfileFromProtobuf(int a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

uint64_t MRProtobufFromConnectionState(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t MRConnectionStateFromProtobuf(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_MRReceivedCommandAppOptionsProtobuf *MRProtobufFromSendCommandAppOptions(char a1)
{
  v2 = objc_alloc_init(_MRReceivedCommandAppOptionsProtobuf);
  [(_MRReceivedCommandAppOptionsProtobuf *)v2 setLaunchApplication:a1 & 1];

  return v2;
}

uint64_t MRMediaRemoteReplaceIntentToProtobuf(unsigned int a1)
{
  if (a1 <= 3)
  {
    return a1 + 1;
  }

  else
  {
    return 3;
  }
}

uint64_t MRMediaRemoteReplaceIntentFromProtobuf(int a1)
{
  if ((a1 - 1) >= 4)
  {
    return 2;
  }

  else
  {
    return (a1 - 1);
  }
}

uint64_t MRMediaRemotePlaybackQueueTypeToProtobuf(int a1)
{
  if ((a1 - 5) > 3)
  {
    return 1;
  }

  else
  {
    return dword_1A2B81030[a1 - 5];
  }
}

uint64_t MRMediaRemotePlaybackQueueTypeFromProtobuf(int a1)
{
  if ((a1 - 2) > 2)
  {
    return 0;
  }

  else
  {
    return dword_1A2B81040[a1 - 2];
  }
}

id MRCreateAllowedNowPlayingInfo(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = _MRNowPlayingInfoDictionaryKeyToProtobufKeyMapping();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __MRCreateAllowedNowPlayingInfo_block_invoke;
    v6[3] = &unk_1E76A0FB8;
    v7 = v1;
    v4 = v2;
    v8 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __MRCreateAllowedNowPlayingInfo_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v3)
  {
    [*(a1 + 40) setObject:v3 forKeyedSubscript:v4];
  }
}

uint64_t _MRGroupTopologyModificationRequestProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v70[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v70[0] & 0x7F) << v5;
        if ((v70[0] & 0x80) == 0)
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
          if (v13 == 1)
          {
            v36 = objc_alloc_init(_MRRequestDetailsProtobuf);
            objc_storeStrong((a1 + 8), v36);
            v70[0] = 0;
            v70[1] = 0;
            if (!PBReaderPlaceMark() || !_MRRequestDetailsProtobufReadFrom(v36, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_91;
          }

          if (v13 == 2)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              LOBYTE(v70[0]) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v70[0] & 0x7F) << v29;
              if ((v70[0] & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_115;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v31;
            }

LABEL_115:
            *(a1 + 32) = v35;
            goto LABEL_131;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v36 = PBReaderReadString();
              if (v36)
              {
                [a1 addOutputDeviceUIDs:v36];
              }

LABEL_91:

              goto LABEL_131;
            case 4:
              v37 = 0;
              v38 = 0;
              v39 = 0;
              *(a1 + 44) |= 2u;
              while (1)
              {
                LOBYTE(v70[0]) = 0;
                v40 = [a2 position] + 1;
                if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
                {
                  v42 = [a2 data];
                  [v42 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v39 |= (v70[0] & 0x7F) << v37;
                if ((v70[0] & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v11 = v38++ >= 9;
                if (v11)
                {
                  LOBYTE(v20) = 0;
                  goto LABEL_117;
                }
              }

              v20 = (v39 != 0) & ~[a2 hasError];
LABEL_117:
              v67 = 36;
              goto LABEL_130;
            case 5:
              v21 = PBReaderReadString();
              v22 = *(a1 + 24);
              *(a1 + 24) = v21;

              goto LABEL_131;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(a1 + 44) |= 0x10u;
            while (1)
            {
              LOBYTE(v70[0]) = 0;
              v64 = [a2 position] + 1;
              if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
              {
                v66 = [a2 data];
                [v66 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v63 |= (v70[0] & 0x7F) << v61;
              if ((v70[0] & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v11 = v62++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_129;
              }
            }

            v20 = (v63 != 0) & ~[a2 hasError];
LABEL_129:
            v67 = 39;
            goto LABEL_130;
          case 0xA:
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 44) |= 8u;
            while (1)
            {
              LOBYTE(v70[0]) = 0;
              v52 = [a2 position] + 1;
              if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
              {
                v54 = [a2 data];
                [v54 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v51 |= (v70[0] & 0x7F) << v49;
              if ((v70[0] & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v11 = v50++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_121;
              }
            }

            v20 = (v51 != 0) & ~[a2 hasError];
LABEL_121:
            v67 = 38;
            goto LABEL_130;
          case 0xB:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 44) |= 0x40u;
            while (1)
            {
              LOBYTE(v70[0]) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v70[0] & 0x7F) << v23;
              if ((v70[0] & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_125;
              }
            }

            v20 = (v25 != 0) & ~[a2 hasError];
LABEL_125:
            v67 = 41;
            goto LABEL_130;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 44) |= 0x80u;
            while (1)
            {
              LOBYTE(v70[0]) = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                v60 = [a2 data];
                [v60 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v70[0] & 0x7F) << v55;
              if ((v70[0] & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v11 = v56++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_127;
              }
            }

            v20 = (v57 != 0) & ~[a2 hasError];
LABEL_127:
            v67 = 42;
            goto LABEL_130;
          case 7:
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 44) |= 0x20u;
            while (1)
            {
              LOBYTE(v70[0]) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v70[0] & 0x7F) << v43;
              if ((v70[0] & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_119;
              }
            }

            v20 = (v45 != 0) & ~[a2 hasError];
LABEL_119:
            v67 = 40;
            goto LABEL_130;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 44) |= 4u;
            while (1)
            {
              LOBYTE(v70[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v70[0] & 0x7F) << v14;
              if ((v70[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_123;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_123:
            v67 = 37;
LABEL_130:
            *(a1 + v67) = v20;
            goto LABEL_131;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_131:
      v68 = [a2 position];
    }

    while (v68 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRVoiceInputDeviceDescriptorProtobufReadFrom(id *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_MRAudioFormatSettingsProtobuf);
        objc_storeStrong(a1 + 1, v13);
      }

      else
      {
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(_MRAudioFormatSettingsProtobuf);
        [a1 addSupportedFormats:v13];
      }

      v16[0] = 0;
      v16[1] = 0;
      if (!PBReaderPlaceMark() || !_MRAudioFormatSettingsProtobufReadFrom(v13, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRSendCommandResultStatusProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(_MRErrorProtobuf);
            objc_storeStrong((a1 + 32), v14);
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !_MRErrorProtobufReadFrom(v14, a2))
            {
LABEL_64:

              return 0;
            }

            goto LABEL_39;
          case 5:
            v15 = PBReaderReadData();
            v16 = 8;
            goto LABEL_52;
          case 6:
            v15 = PBReaderReadString();
            v16 = 16;
LABEL_52:
            v30 = *(a1 + v16);
            *(a1 + v16) = v15;

            goto LABEL_62;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              LOBYTE(v34) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v34 & 0x7F) << v17;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_56;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_56:
            v31 = 40;
            goto LABEL_61;
          case 2:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 48) |= 2u;
            while (1)
            {
              LOBYTE(v34) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v34 & 0x7F) << v24;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_60;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v26;
            }

LABEL_60:
            v31 = 44;
LABEL_61:
            *(a1 + v31) = v23;
            goto LABEL_62;
          case 3:
            v14 = objc_alloc_init(_MRSendCommandResultHandlerDialogProtobuf);
            objc_storeStrong((a1 + 24), v14);
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !_MRSendCommandResultHandlerDialogProtobufReadFrom(v14, a2))
            {
              goto LABEL_64;
            }

LABEL_39:
            PBReaderRecallMark();

            goto LABEL_62;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_62:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id MRAVOutputContextGetUniqueIdentifier(void *a1)
{
  v1 = MRAVOutputContextCopyUniqueIdentifier(a1);

  return v1;
}

id MRContentItemGetAppMetrics(void *a1)
{
  v1 = MRContentItemCopyAppMetrics(a1);

  return v1;
}

id MRContentItemGetNowPlayingInfo(void *a1)
{
  v1 = MRContentItemCopyNowPlayingInfo(a1);

  return v1;
}

id MRContentItemGetUserInfo(void *a1)
{
  v1 = MRContentItemCopyUserInfo(a1);

  return v1;
}

id MRContentItemGetDeviceSpecificUserInfo(void *a1)
{
  v1 = MRContentItemCopyDeviceSpecificUserInfo(a1);

  return v1;
}

id MRContentItemGetCollectionInfo(void *a1)
{
  v1 = MRContentItemCopyCollectionInfo(a1);

  return v1;
}

id MRAVOutputDeviceSubstituteLocalDevice()
{
  v0 = MRAVCopyOutputDevicesSubstitutingLocalDevice();

  return v0;
}

uint64_t MRLyricsEventGetStartDate(void *a1)
{
  v1 = MEMORY[0x1E695DF00];
  [a1 startTime];

  return [v1 dateWithTimeIntervalSinceReferenceDate:?];
}

uint64_t MRLyricsEventGetEndDate(void *a1)
{
  if (![a1 hasEndTime])
  {
    return 0;
  }

  v2 = MEMORY[0x1E695DF00];
  [a1 endTime];

  return [v2 dateWithTimeIntervalSinceReferenceDate:?];
}

uint64_t _MRDiscoveryUpdateOutputDevicesProtobufMessageReadFrom(id *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
        [a1 addOutputDevices:v13];
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_MRAVOutputDeviceDescriptorProtobufReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_MRDiscoverySessionConfigurationProtobuf);
    objc_storeStrong(a1 + 1, v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_MRDiscoverySessionConfigurationProtobufReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRTranscriptAlignmentProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v44) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      switch(v13)
      {
        case 4:
          *(a1 + 44) |= 4u;
          v44 = 0;
          v25 = [a2 position] + 8;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v44 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v38 = v44;
          v39 = 24;
LABEL_69:
          *(a1 + v39) = v38;
          goto LABEL_70;
        case 5:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 44) |= 0x10u;
          while (1)
          {
            LOBYTE(v44) = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v44 & 0x7F) << v30;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_59;
            }
          }

          v22 = (v32 != 0) & ~[a2 hasError];
LABEL_59:
          v36 = 40;
          break;
        case 6:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 44) |= 0x20u;
          while (1)
          {
            LOBYTE(v44) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v44 & 0x7F) << v16;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_57;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_57:
          v36 = 41;
          break;
        default:
LABEL_42:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_70;
      }

      *(a1 + v36) = v22;
LABEL_70:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        *(a1 + 44) |= 2u;
        v44 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v37 = [a2 data];
          [v37 getBytes:&v44 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v38 = v44;
        v39 = 16;
        break;
      case 2:
        *(a1 + 44) |= 1u;
        v44 = 0;
        v28 = [a2 position] + 8;
        if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
        {
          v42 = [a2 data];
          [v42 getBytes:&v44 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v38 = v44;
        v39 = 8;
        break;
      case 3:
        *(a1 + 44) |= 8u;
        v44 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v41 = [a2 data];
          [v41 getBytes:&v44 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v38 = v44;
        v39 = 32;
        break;
      default:
        goto LABEL_42;
    }

    goto LABEL_69;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRSetNowPlayingClientMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRNowPlayingClientProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRNowPlayingClientProtobufReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRUpdateContentItemArtworkMessageProtobufReadFrom(id *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRContentItemProtobuf);
        [a1 addContentItems:v13];
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_MRContentItemProtobufReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
    objc_storeStrong(a1 + 2, v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v13->super.super.isa, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void MRMediaRemotePlaybackQueueDataSourceInvalidate(uint64_t a1)
{
  v1 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  MRMediaRemotePlaybackQueueDataSourceInvalidateForPlayer(v1);
}

void MRMediaRemotePlaybackQueueDataSourceInvalidateForPlayer(uint64_t a1)
{
  v2 = +[MRNowPlayingOriginClientManager sharedManager];
  v3 = [v2 playerClientForPlayerPath:a1];

  [v3 invalidatePlaybackQueue];
}

void MRMediaRemotePlaybackQueueDataSourceInvalidateWithNowPlayingContentItemForPlayer(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = MRContentItemCopy(a1);
    v4 = v3;
    if (v3)
    {
      v8[0] = v3;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    }

    else
    {
      v5 = MEMORY[0x1E695E0F0];
    }

    v6 = [[MRPlaybackQueue alloc] initWithContentItems:v5 location:0];
  }

  else
  {
    v6 = 0;
  }

  MRMediaRemotePlaybackQueueDataSourceInvalidateWithPlaybackQueueForPlayer(v6, a2);

  v7 = *MEMORY[0x1E69E9840];
}

void MRMediaRemotePlaybackQueueDataSourceInvalidateWithPlaybackQueueForPlayer(uint64_t a1, uint64_t a2)
{
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v5 = [v4 playerClientForPlayerPath:a2];

  [v5 invalidatePlaybackQueueWithPlaybackQueue:a1];
}

uint64_t _MRMusicHandoffSessionProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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
        break;
      }

      if (v13 == 2)
      {
        v15 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
        v16 = 24;
        goto LABEL_23;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
    v16 = 8;
LABEL_23:
    objc_storeStrong((a1 + v16), v15);
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v15->super.super.isa, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRDataArtworkProtobufReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR____MRDataArtworkProtobuf__type;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR____MRDataArtworkProtobuf__imageData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MRMediaRemoteApplicationIsSystemClassicalRoomApplication(uint64_t a1)
{
  if (MRMediaRemoteApplicationIsSystemClassicalRoomApplication___once != -1)
  {
    MRMediaRemoteApplicationIsSystemClassicalRoomApplication_cold_1();
  }

  v2 = MRMediaRemoteApplicationIsSystemClassicalRoomApplication___allKnownSystemClassicalRoomApplications;

  return [v2 containsObject:a1];
}

void __MRMediaRemoteApplicationIsSystemClassicalRoomApplication_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"com.apple.music.classical", @"(System Classical Room Application)", 0}];
  v1 = MRMediaRemoteApplicationIsSystemClassicalRoomApplication___allKnownSystemClassicalRoomApplications;
  MRMediaRemoteApplicationIsSystemClassicalRoomApplication___allKnownSystemClassicalRoomApplications = v0;
}

void __MRMediaRemoteApplicationIsSystemAppleTVApplication_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"com.apple.AppleTV", @"com.apple.TVWatchList", @"com.apple.TV", @"com.apple.tv", 0}];
  v1 = MRMediaRemoteApplicationIsSystemAppleTVApplication___allKnownSystemAppleTVApplications;
  MRMediaRemoteApplicationIsSystemAppleTVApplication___allKnownSystemAppleTVApplications = v0;
}

uint64_t MRMediaRemoteApplicationIsSystemApplication(uint64_t a1)
{
  if (MRMediaRemoteApplicationIsSystemMediaApplication(a1) & 1) != 0 || (MRMediaRemoteApplicationIsSystemPodcastApplication(a1))
  {
    return 1;
  }

  return MRMediaRemoteApplicationIsSystemClassicalRoomApplication(a1);
}

void __MRMediaRemoteApplicationIsAirPlayReceiver_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"com.apple.TVAirPlay", @"com.apple.airtunesd", @"com.apple.tvairplayd", 0}];
  v1 = MRMediaRemoteApplicationIsAirPlayReceiver___receivers;
  MRMediaRemoteApplicationIsAirPlayReceiver___receivers = v0;
}

uint64_t MRMediaRemoteCurrentApplicationIsAirPlayReceiver()
{
  if (MRMediaRemoteCurrentApplicationIsAirPlayReceiver___once != -1)
  {
    MRMediaRemoteCurrentApplicationIsAirPlayReceiver_cold_1();
  }

  return MRMediaRemoteCurrentApplicationIsAirPlayReceiver_isAirPlayReceiver;
}

void __MRMediaRemoteCurrentApplicationIsAirPlayReceiver_block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  MRMediaRemoteCurrentApplicationIsAirPlayReceiver_isAirPlayReceiver = MRMediaRemoteApplicationIsAirPlayReceiver(v0);
}

BOOL MRMediaRemoteSystemMediaApplicationWake()
{
  v0 = MRGetSharedService();

  return MRMediaRemoteServiceSystemMediaAppWake(v0);
}

BOOL MRMediaRemoteSystemMediaApplicationIsRunning()
{
  v0 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  v1 = MRNowPlayingClientCreate(0, v0);
  LocalOrigin = MRMediaRemoteGetLocalOrigin();
  v3 = MRNowPlayingPlayerPathCreate(LocalOrigin, v1, 0);
  v4 = MRMediaRemoteNowPlayingCopyResolvedPlayerPath(v3, 0);
  CFRelease(v0);
  CFRelease(v1);
  CFRelease(v3);
  result = 0;
  if (v4)
  {
    Client = MRNowPlayingPlayerPathGetClient(v4);
    ProcessIdentifier = MRNowPlayingClientGetProcessIdentifier(Client);
    CFRelease(v4);
    if (ProcessIdentifier > 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t MRMediaRemoteCopySystemMediaApplicationDefaultSetPlaybackQueueCommandOptions()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"kMRMediaRemoteCommandInfoSupportedPlaybackQueueTypes";
  v2[1] = @"kMRMediaRemoteCommandInfoSupportedCustomPlaybackQueueIdentifiers";
  v3[0] = &unk_1F15775A8;
  v3[1] = &unk_1F15775C0;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MRMediaRemoteCopySystemMediaApplicationDefaultSupportedCommands()
{
  if (MRMediaRemoteCopySystemMediaApplicationDefaultSupportedCommands___once != -1)
  {
    MRMediaRemoteCopySystemMediaApplicationDefaultSupportedCommands_cold_1();
  }

  v1 = MRMediaRemoteCopySystemMediaApplicationDefaultSupportedCommands___supportedCommands;

  return [v1 copy];
}

void __MRMediaRemoteCopySystemMediaApplicationDefaultSupportedCommands_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  v1 = MRMediaRemoteCopySystemMediaApplicationDefaultSupportedCommands___supportedCommands;
  MRMediaRemoteCopySystemMediaApplicationDefaultSupportedCommands___supportedCommands = v0;

  v2 = MRMediaRemoteCopySystemMediaApplicationDefaultSetPlaybackQueueCommandOptions();
  v3 = objc_alloc_init(MRCommandInfo);
  [(MRCommandInfo *)v3 setCommand:122];
  [(MRCommandInfo *)v3 setEnabled:1];
  [(MRCommandInfo *)v3 setOptions:v2];
  [MRMediaRemoteCopySystemMediaApplicationDefaultSupportedCommands___supportedCommands addObject:v3];

  v4 = MRMediaRemoteCopySystemMediaApplicationDefaultSetPlaybackQueueCommandOptions();
  v5 = [v4 mutableCopy];
  [v5 setObject:&unk_1F15775D8 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedInsertionPositions"];
  v6 = objc_alloc_init(MRCommandInfo);
  [(MRCommandInfo *)v6 setCommand:125];
  [(MRCommandInfo *)v6 setEnabled:1];
  [(MRCommandInfo *)v6 setOptions:v5];
  [MRMediaRemoteCopySystemMediaApplicationDefaultSupportedCommands___supportedCommands addObject:v6];

  v7 = objc_alloc_init(MRCommandInfo);
  [(MRCommandInfo *)v7 setCommand:0];
  [(MRCommandInfo *)v7 setEnabled:1];
  [MRMediaRemoteCopySystemMediaApplicationDefaultSupportedCommands___supportedCommands addObject:v7];
}

CFStringRef MRMediaRemoteCopyLocalizedDisplayID(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    if (MRMediaRemoteApplicationIsSystemMediaApplication(result))
    {

      return MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    }

    else if (MRMediaRemoteApplicationIsSystemPodcastApplication(v1))
    {

      return MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
    }

    else
    {
      if (MRMediaRemoteApplicationIsSystemBooksApplication(v1))
      {
        v2 = *MEMORY[0x1E695E480];
        v3 = @"com.apple.iBooks";
      }

      else if (MRMediaRemoteApplicationIsSystemAppleTVApplication(v1))
      {
        v2 = *MEMORY[0x1E695E480];
        v3 = @"com.apple.tv";
      }

      else
      {
        IsSystemClassicalRoomApplication = MRMediaRemoteApplicationIsSystemClassicalRoomApplication(v1);
        v2 = *MEMORY[0x1E695E480];
        if (IsSystemClassicalRoomApplication)
        {
          v3 = @"com.apple.music.classical";
        }

        else
        {
          v3 = v1;
        }
      }

      return CFStringCreateCopy(v2, v3);
    }
  }

  return result;
}

void sub_1A2A31CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A3204C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A32208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A322F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MRPlaybackSessionMigrateRequestProtobufReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v73) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v73 & 0x7F) << v5;
      if ((v73 & 0x80) == 0)
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
        v13 = PBReaderReadString();
        v14 = 96;
        goto LABEL_92;
      case 2u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 124) |= 0x40u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v73 & 0x7F) << v50;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_132;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v52;
        }

LABEL_132:
        v66 = 76;
        goto LABEL_133;
      case 3u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 124) |= 8u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v73 & 0x7F) << v38;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_124;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v40;
        }

LABEL_124:
        v66 = 36;
        goto LABEL_133;
      case 4u:
        v22 = objc_alloc_init(_MRPlaybackSessionMigrateRequestEventProtobuf);
        [a1 addEvents:v22];
        v73 = 0;
        v74 = 0;
        if (!PBReaderPlaceMark() || !_MRPlaybackSessionMigrateRequestEventProtobufReadFrom(v22, a2))
        {
          goto LABEL_143;
        }

        goto LABEL_96;
      case 5u:
        *(a1 + 124) |= 1u;
        v73 = 0;
        v30 = [a2 position] + 8;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
        {
          v67 = [a2 data];
          [v67 getBytes:&v73 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v68 = v73;
        v69 = 8;
        goto LABEL_140;
      case 6u:
        v22 = objc_alloc_init(_MRContentItemProtobuf);
        objc_storeStrong((a1 + 24), v22);
        v73 = 0;
        v74 = 0;
        if (!PBReaderPlaceMark() || !_MRContentItemProtobufReadFrom(v22, a2))
        {
          goto LABEL_143;
        }

        goto LABEL_96;
      case 7u:
        v22 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
        v23 = 80;
        goto LABEL_94;
      case 8u:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 124) |= 0x20u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v73 & 0x7F) << v44;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_128;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v46;
        }

LABEL_128:
        v66 = 72;
        goto LABEL_133;
      case 9u:
        *(a1 + 124) |= 2u;
        v73 = 0;
        v64 = [a2 position] + 8;
        if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 8, v65 <= objc_msgSend(a2, "length")))
        {
          v70 = [a2 data];
          [v70 getBytes:&v73 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v68 = v73;
        v69 = 16;
LABEL_140:
        *(a1 + v69) = v68;
        goto LABEL_141;
      case 0xAu:
        v22 = objc_alloc_init(_MRPlaybackSessionRequestProtobuf);
        objc_storeStrong((a1 + 64), v22);
        v73 = 0;
        v74 = 0;
        if (!PBReaderPlaceMark() || !_MRPlaybackSessionRequestProtobufReadFrom(v22, a2))
        {
          goto LABEL_143;
        }

        goto LABEL_96;
      case 0xBu:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 124) |= 0x100u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v73 & 0x7F) << v57;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v11 = v58++ >= 9;
          if (v11)
          {
            LOBYTE(v63) = 0;
            goto LABEL_135;
          }
        }

        v63 = (v59 != 0) & ~[a2 hasError];
LABEL_135:
        *(a1 + 120) = v63;
        goto LABEL_141;
      case 0xCu:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 124) |= 0x10u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v73 & 0x7F) << v24;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_116;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v26;
        }

LABEL_116:
        v66 = 56;
        goto LABEL_133;
      case 0xDu:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 124) |= 4u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v34 |= (v73 & 0x7F) << v32;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v11 = v33++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_120;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v34;
        }

LABEL_120:
        v66 = 32;
        goto LABEL_133;
      case 0xEu:
        v13 = PBReaderReadString();
        v14 = 48;
LABEL_92:
        v56 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_141;
      case 0xFu:
        v22 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
        v23 = 104;
LABEL_94:
        objc_storeStrong((a1 + v23), v22);
        v73 = 0;
        v74 = 0;
        if (PBReaderPlaceMark() && _MRNowPlayingPlayerPathProtobufReadFrom(&v22->super.super.isa, a2))
        {
          goto LABEL_96;
        }

        goto LABEL_143;
      case 0x10u:
        v22 = objc_alloc_init(_MRSendCommandResultStatusProtobuf);
        objc_storeStrong((a1 + 112), v22);
        v73 = 0;
        v74 = 0;
        if (PBReaderPlaceMark() && _MRSendCommandResultStatusProtobufReadFrom(v22, a2))
        {
LABEL_96:
          PBReaderRecallMark();

LABEL_141:
          v71 = [a2 position];
          if (v71 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_143:

        return 0;
      case 0x11u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 124) |= 0x80u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v73 & 0x7F) << v15;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_112;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_112:
        v66 = 88;
LABEL_133:
        *(a1 + v66) = v21;
        goto LABEL_141;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_141;
    }
  }
}

void sub_1A2A35B44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

MRLanguageOption *MRLanguageOptionCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_alloc_init(MRLanguageOption);
  [(MRLanguageOption *)v11 setType:a2];
  [(MRLanguageOption *)v11 setLanguageTag:a3];
  [(MRLanguageOption *)v11 setCharacteristics:a4];
  [(MRLanguageOption *)v11 setDisplayName:a5];
  [(MRLanguageOption *)v11 setIdentifier:a6];
  return v11;
}

uint64_t MRLanguageOptionIsAutomaticLanguageOptionForType(void *a1, int a2)
{
  v3 = a1;
  if ([v3 type] != a2)
  {
    goto LABEL_5;
  }

  v4 = [v3 characteristics];

  if (v4 || ([v3 displayName], v5 = objc_claimAutoreleasedReturnValue(), v5, v5) || (objc_msgSend(v3, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
LABEL_5:
    v7 = 0;
  }

  else
  {
    v9 = [v3 languageTag];
    v7 = [v9 isEqualToString:@"__AUTO__"];
  }

  return v7;
}

uint64_t MRLanguageOptionCopyLanguageTag(void *a1)
{
  v1 = [a1 languageTag];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRLanguageOptionCopyCharacteristics(void *a1)
{
  v1 = [a1 characteristics];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRLanguageOptionCopyDisplayName(void *a1)
{
  v1 = [a1 displayName];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRLanguageOptionCopyIdentifier(void *a1)
{
  v1 = [a1 identifier];
  v2 = [v1 copy];

  return v2;
}

__CFString *MRLanguageOptionTypeCopyDescription(int a1)
{
  v1 = @"NULL";
  if (a1 == 1)
  {
    v1 = @"MRLanguageOptionTypeLegible";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"MRLanguageOptionTypeAudible";
  }
}

uint64_t MRLanguageOptionCreateExternalRepresentation(uint64_t result)
{
  if (result)
  {
    MSVArchivedDataWithRootObject();
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

uint64_t MRLanguageOptionsCreateExternalRepresentation(uint64_t result)
{
  if (result)
  {
    MSVArchivedDataWithRootObject();
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

MRLanguageOption *MRLanguageOptionCreateFromExternalRepresentation(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v3 = v1, v2 = [[MRLanguageOption alloc] initWithProtobuf:v3], v3, !v2))
      {
        v4 = MEMORY[0x1E695DFD8];
        v5 = objc_opt_class();
        v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
        v12 = 0;
        v2 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v6 fromData:v1 error:&v12];
        v7 = v12;
        if (v7)
        {
          v8 = _MRLogForCategory(1uLL);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v14 = v7;
            _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Error %@ deserializing languageOption", buf, 0xCu);
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v2;
          v2 = [[MRLanguageOption alloc] initWithProtobuf:v9];
        }
      }
    }
  }

  else
  {
    v2 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t MRLanguageOptionsCreateFromExternalRepresentation(void *a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MSVPropertyListDataClasses();
    v9[0] = objc_opt_class();
    v9[1] = objc_opt_class();
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v4 = [v2 setByAddingObjectsFromArray:v3];

    v5 = MSVUnarchivedObjectOfClasses();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v1;
    }

    else
    {
      v5 = 0;
    }
  }

  v6 = [v5 mr_map:&__block_literal_global_75];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

MRLanguageOption *__MRLanguageOptionsCreateFromExternalRepresentation_block_invoke(uint64_t a1, void *a2)
{
  v2 = MRLanguageOptionCreateFromExternalRepresentation(a2);

  return v2;
}

MRLanguageOptionGroup *MRLanguageOptionGroupCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_alloc_init(MRLanguageOptionGroup);
  [(MRLanguageOptionGroup *)v7 setLanguageOptions:a2];
  [(MRLanguageOptionGroup *)v7 setDefaultLanguageOption:a3];
  [(MRLanguageOptionGroup *)v7 setAllowsEmptySelection:a4];
  return v7;
}

uint64_t MRLanguageOptionGroupCopyLanguageOptions(void *a1)
{
  v1 = [a1 languageOptions];
  v2 = [v1 copy];

  return v2;
}

void *MRLanguageOptionGroupGetDefaultLanguageOption(void *a1)
{
  v1 = [a1 defaultLanguageOption];

  return v1;
}

uint64_t MRLanguageOptionGroupCreateExternalRepresentation(uint64_t result)
{
  if (result)
  {
    MSVArchivedDataWithRootObject();
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

uint64_t MRLanguageOptionGroupsCreateExternalRepresentation(uint64_t result)
{
  if (result)
  {
    MSVArchivedDataWithRootObject();
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

MRLanguageOptionGroup *MRLanguageOptionGroupCreateFromExternalRepresentation(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v3 = v1, v2 = [[MRLanguageOptionGroup alloc] initWithProtobuf:v3], v3, !v2))
      {
        v4 = MEMORY[0x1E695DFD8];
        v5 = objc_opt_class();
        v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
        v12 = 0;
        v2 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v6 fromData:v1 error:&v12];
        v7 = v12;
        if (v7)
        {
          v8 = _MRLogForCategory(1uLL);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v14 = v7;
            _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Error %@ deserializing languageOptionGroup", buf, 0xCu);
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v2;
          v2 = [[MRLanguageOptionGroup alloc] initWithProtobuf:v9];
        }
      }
    }
  }

  else
  {
    v2 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t MRLanguageOptionGroupsCreateFromExternalRepresentation(void *a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MSVPropertyListDataClasses();
    v9[0] = objc_opt_class();
    v9[1] = objc_opt_class();
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v4 = [v2 setByAddingObjectsFromArray:v3];

    v5 = MSVUnarchivedObjectOfClasses();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v1;
    }

    else
    {
      v5 = 0;
    }
  }

  v6 = [v5 mr_map:&__block_literal_global_49_1];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

MRLanguageOptionGroup *__MRLanguageOptionGroupsCreateFromExternalRepresentation_block_invoke(uint64_t a1, void *a2)
{
  v2 = MRLanguageOptionGroupCreateFromExternalRepresentation(a2);

  return v2;
}

uint64_t _MRWakeDeviceMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRPreloadedPlaybackSessionInfoReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v27 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27 & 0x7F) << v17;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_37;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_37:
        *(a1 + 16) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 24;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_38;
          }

          v14 = PBReaderReadString();
          v15 = 8;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRVolumeControlCapabilitiesDidChangeMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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
      if ((v12 >> 3) == 4)
      {
        break;
      }

      if (v13 == 3)
      {
        v15 = PBReaderReadString();
        v16 = 16;
LABEL_25:
        v14 = *(a1 + v16);
        *(a1 + v16) = v15;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_MRVolumeControlAvailabilityProtobuf);
        objc_storeStrong((a1 + 8), v14);
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !_MRVolumeControlAvailabilityProtobufReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = PBReaderReadString();
    v16 = 24;
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRPlaybackQueueCapabilitiesProtobufReadFrom(uint64_t a1, void *a2)
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
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
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
        v28 = 0;
        v29 = 0;
        v16 = 0;
        *(a1 + 12) |= 4u;
        while (1)
        {
          v36 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v36 & 0x7F) << v28;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v20 = v29++ > 8;
          if (v20)
          {
            LOBYTE(v21) = 0;
            v22 = &OBJC_IVAR____MRPlaybackQueueCapabilitiesProtobuf__requestByRequest;
            goto LABEL_53;
          }
        }

        v22 = &OBJC_IVAR____MRPlaybackQueueCapabilitiesProtobuf__requestByRequest;
        goto LABEL_52;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 12) |= 2u;
        while (1)
        {
          v38 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v38 & 0x7F) << v14;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v20 = v15++ > 8;
          if (v20)
          {
            LOBYTE(v21) = 0;
            v22 = &OBJC_IVAR____MRPlaybackQueueCapabilitiesProtobuf__requestByRange;
            goto LABEL_53;
          }
        }

        v22 = &OBJC_IVAR____MRPlaybackQueueCapabilitiesProtobuf__requestByRange;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_54:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *(a1 + 12) |= 1u;
    while (1)
    {
      v37 = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v37 & 0x7F) << v23;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v20 = v24++ > 8;
      if (v20)
      {
        LOBYTE(v21) = 0;
        v22 = &OBJC_IVAR____MRPlaybackQueueCapabilitiesProtobuf__requestByIdentifiers;
        goto LABEL_53;
      }
    }

    v22 = &OBJC_IVAR____MRPlaybackQueueCapabilitiesProtobuf__requestByIdentifiers;
LABEL_52:
    v21 = (v16 != 0) & ~[a2 hasError];
LABEL_53:
    *(a1 + *v22) = v21;
    goto LABEL_54;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRUpdateOutputDevicesMessageProtobufReadFrom(void *a1, void *a2)
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
        LOBYTE(v18[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18[0] & 0x7F) << v5;
        if ((v18[0] & 0x80) == 0)
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
        v14 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
        [a1 addClusterAwareOutputDevices:v14];
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
        [a1 addOutputDevices:v14];
LABEL_23:
        v18[0] = 0;
        v18[1] = 0;
        if (!PBReaderPlaceMark() || !_MRAVOutputDeviceDescriptorProtobufReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = PBReaderReadString();
    v14 = a1[2];
    a1[2] = v15;
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRRegisterGameControllerResponseMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 16) |= 1u;
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
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
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

void sub_1A2A3E374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v47 - 224), 8);
  _Block_object_dispose((v47 - 176), 8);
  _Block_object_dispose((v47 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A2A40E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2A411A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2A41530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A41660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MRGetVolumeResultMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v18 = 0;
        v13 = [a2 position] + 4;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:&v18 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v18;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRNowPlayingInfoProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v92) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v92 & 0x7F) << v5;
        if ((v92 & 0x80) == 0)
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

      switch((v12 >> 3))
      {
        case 1u:
          v13 = PBReaderReadString();
          v14 = 48;
          goto LABEL_117;
        case 2u:
          v13 = PBReaderReadString();
          v14 = 56;
          goto LABEL_117;
        case 3u:
          *(a1 + 120) |= 1u;
          v92 = 0;
          v43 = [a2 position] + 8;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
          {
            v86 = [a2 data];
            [v86 getBytes:&v92 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v87 = v92;
          v88 = 8;
          goto LABEL_157;
        case 4u:
          *(a1 + 120) |= 2u;
          v92 = 0;
          v45 = [a2 position] + 8;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 8, v46 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v92 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v87 = v92;
          v88 = 16;
          goto LABEL_157;
        case 5u:
          *(a1 + 120) |= 0x20u;
          LODWORD(v92) = 0;
          v28 = [a2 position] + 4;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 4, v29 <= objc_msgSend(a2, "length")))
          {
            v85 = [a2 data];
            [v85 getBytes:&v92 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 72) = v92;
          goto LABEL_158;
        case 6u:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 120) |= 0x40u;
          while (1)
          {
            LOBYTE(v92) = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              v60 = [a2 data];
              [v60 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v57 |= (v92 & 0x7F) << v55;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v11 = v56++ >= 9;
            if (v11)
            {
              v61 = 0;
              goto LABEL_138;
            }
          }

          if ([a2 hasError])
          {
            v61 = 0;
          }

          else
          {
            v61 = v57;
          }

LABEL_138:
          v84 = 96;
          goto LABEL_143;
        case 7u:
          v62 = 0;
          v63 = 0;
          v64 = 0;
          *(a1 + 120) |= 0x80u;
          while (1)
          {
            LOBYTE(v92) = 0;
            v65 = [a2 position] + 1;
            if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
            {
              v67 = [a2 data];
              [v67 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v64 |= (v92 & 0x7F) << v62;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            v11 = v63++ >= 9;
            if (v11)
            {
              v61 = 0;
              goto LABEL_142;
            }
          }

          if ([a2 hasError])
          {
            v61 = 0;
          }

          else
          {
            v61 = v64;
          }

LABEL_142:
          v84 = 100;
LABEL_143:
          *(a1 + v84) = v61;
          goto LABEL_158;
        case 8u:
          *(a1 + 120) |= 8u;
          v92 = 0;
          v47 = [a2 position] + 8;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 8, v48 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v92 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v87 = v92;
          v88 = 32;
LABEL_157:
          *(a1 + v88) = v87;
          goto LABEL_158;
        case 9u:
          v13 = PBReaderReadString();
          v14 = 104;
          goto LABEL_117;
        case 0xAu:
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 120) |= 0x10u;
          while (1)
          {
            LOBYTE(v92) = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v92 & 0x7F) << v37;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              v36 = 0;
              goto LABEL_131;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v39;
          }

LABEL_131:
          v83 = 40;
          goto LABEL_132;
        case 0xBu:
          v74 = 0;
          v75 = 0;
          v76 = 0;
          *(a1 + 120) |= 0x400u;
          while (1)
          {
            LOBYTE(v92) = 0;
            v77 = [a2 position] + 1;
            if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
            {
              v79 = [a2 data];
              [v79 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v76 |= (v92 & 0x7F) << v74;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            v11 = v75++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_147;
            }
          }

          v21 = (v76 != 0) & ~[a2 hasError];
LABEL_147:
          v82 = 114;
          goto LABEL_148;
        case 0xCu:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 120) |= 0x1000u;
          while (1)
          {
            LOBYTE(v92) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v92 & 0x7F) << v22;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_123;
            }
          }

          v21 = (v24 != 0) & ~[a2 hasError];
LABEL_123:
          v82 = 116;
          goto LABEL_148;
        case 0xDu:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 120) |= 4u;
          while (1)
          {
            LOBYTE(v92) = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v92 & 0x7F) << v30;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v36 = 0;
              goto LABEL_127;
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

LABEL_127:
          v83 = 24;
LABEL_132:
          *(a1 + v83) = v36;
          goto LABEL_158;
        case 0xEu:
          v13 = PBReaderReadString();
          v14 = 80;
          goto LABEL_117;
        case 0xFu:
          v13 = PBReaderReadString();
          v14 = 88;
          goto LABEL_117;
        case 0x10u:
          v13 = PBReaderReadData();
          v14 = 64;
LABEL_117:
          v80 = *(a1 + v14);
          *(a1 + v14) = v13;

          goto LABEL_158;
        case 0x11u:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 120) |= 0x200u;
          while (1)
          {
            LOBYTE(v92) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v92 & 0x7F) << v15;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_121;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_121:
          v82 = 113;
          goto LABEL_148;
        case 0x12u:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 120) |= 0x100u;
          while (1)
          {
            LOBYTE(v92) = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v92 & 0x7F) << v49;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v11 = v50++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_134;
            }
          }

          v21 = (v51 != 0) & ~[a2 hasError];
LABEL_134:
          v82 = 112;
          goto LABEL_148;
        case 0x13u:
          v68 = 0;
          v69 = 0;
          v70 = 0;
          *(a1 + 120) |= 0x800u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_158;
      }

      while (1)
      {
        LOBYTE(v92) = 0;
        v71 = [a2 position] + 1;
        if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
        {
          v73 = [a2 data];
          [v73 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v70 |= (v92 & 0x7F) << v68;
        if ((v92 & 0x80) == 0)
        {
          break;
        }

        v68 += 7;
        v11 = v69++ >= 9;
        if (v11)
        {
          LOBYTE(v21) = 0;
          goto LABEL_145;
        }
      }

      v21 = (v70 != 0) & ~[a2 hasError];
LABEL_145:
      v82 = 115;
LABEL_148:
      *(a1 + v82) = v21;
LABEL_158:
      v91 = [a2 position];
    }

    while (v91 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRNotificationMessageProtobufReadFrom(void *a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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
        v14 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
        [a1 addPlayerPath:v14];
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v14->super.super.isa, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_27;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        if (v14)
        {
          [a1 addNotification:v14];
        }

LABEL_27:

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    if (v14)
    {
      [a1 addUserInfo:v14];
    }

    goto LABEL_27;
  }

  return [a2 hasError] ^ 1;
}

void sub_1A2A4661C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A46864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A46AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A46CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A46F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A47184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A473CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A47614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A4785C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A47AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A47CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A48348(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A2A48688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2A489A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2A48D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _MRRequestGroupSessionMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRRequestDetailsProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRRequestDetailsProtobufReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MRMediaRemoteActiveEndpointOperationCopyDescription(uint64_t a1)
{
  v1 = @"Clear";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"Update";
  }

  return [(__CFString *)v2 copy];
}

void MRAVEndpointGetActiveSystemEndpointUID(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[MRNowPlayingOriginClientManager sharedManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MRAVEndpointGetActiveSystemEndpointUID_block_invoke;
  v9[3] = &unk_1E76A1BE8;
  v10 = v5;
  v8 = v5;
  [v7 handleActiveSystemEndpointOutputDeviceUIDForType:a1 queue:v6 completion:v9];
}

uint64_t __MRAVEndpointGetActiveSystemEndpointUID_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRAVEndpointUpdateActiveSystemEndpointWithReason(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (MRAVEndpointIsLocalEndpoint(a1))
  {
    v11 = 0;
  }

  else
  {
    v12 = [a1 outputDevices];
    v13 = [v12 firstObject];
    v11 = [v13 uid];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * i);
          if ([v19 isGroupLeader])
          {
            v20 = [v19 uid];

            v11 = v20;
            goto LABEL_13;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  MRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithChangeType(v11, v10, 1, a3, v8, v9);

  v21 = *MEMORY[0x1E69E9840];
}

void MRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithChangeType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a6;
  v11 = a5;
  v12 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:a1 reason:a4];
  [(MRUpdateActiveSystemEndpointRequest *)v12 setChangeType:a3];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __MRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithChangeType_block_invoke;
  v14[3] = &unk_1E76A1C10;
  v15 = v10;
  v13 = v10;
  [(MRUpdateActiveSystemEndpointRequest *)v12 perform:v11 completion:v14];
}

void __MRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithChangeType_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

void MRAVEndpointResolveActiveSystemEndpointWithTimeout(void *a1, void *a2, double a3)
{
  v5 = MRActiveEndpointTypeForCurrentApplication_onceToken;
  v6 = a2;
  v7 = a1;
  v9 = v7;
  if (v5 == -1)
  {
    v8 = v7;
  }

  else
  {
    MRAVEndpointResolveActiveSystemEndpointWithTimeout_cold_1();
    v8 = v9;
  }

  MRAVEndpointResolveActiveSystemEndpointWithType(MRActiveEndpointTypeForCurrentApplication_type, v8, v6, a3);
}

uint64_t MRActiveEndpointTypeForBundleIdentifier(void *a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = +[MRUserSettings currentSettings];
  v3 = [v2 supportGroupSessionActiveEndpoint];

  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  v21[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v7 = [v4 initWithArray:v6];

  v8 = objc_alloc(MEMORY[0x1E695DFD8]);
  v9 = MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
  v20[0] = v9;
  v10 = MRMediaRemoteCopyLocalDeviceSystemAppleTVApplicationDisplayID();
  v20[1] = v10;
  v11 = MRMediaRemoteCopyLocalDeviceSystemBooksApplicationDisplayID();
  v20[2] = v11;
  v12 = MRMediaRemoteCopyLocalDeviceSystemClassicalRoomApplicationDisplayID();
  v20[3] = v12;
  v13 = MRMediaRemoteCopyLocalDeviceAirPlayReceiverBundleID();
  v20[4] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:5];
  v15 = [v8 initWithArray:v14];

  if (![v7 containsObject:v1])
  {
    v17 = [v15 containsObject:v1];

    if (v17)
    {
      v16 = 5;
      goto LABEL_7;
    }

LABEL_6:
    v16 = 0;
    goto LABEL_7;
  }

  v16 = 4;
LABEL_7:

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t MRNowPlayingClientCreateFromExternalRepresentation(uint64_t a1)
{
  v2 = [MRClient alloc];

  return [(MRClient *)v2 initWithData:a1];
}

uint64_t MRNowPlayingClientCreateExternalRepresentation(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingClientCreateExternalRepresentation_cold_1();
    }
  }

  v2 = [v1 data];
  v3 = [v2 copy];

  return v3;
}

uint64_t MRNowPlayingClientCopy(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingClientCopy_cold_1();
    }
  }

  v2 = [v1 copy];

  return v2;
}

uint64_t MRNowPlayingClientCreateSkeletonFrom(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingClientCreateSkeletonFrom_cold_1();
    }
  }

  v2 = [v1 skeleton];

  return v2;
}

void MRNowPlayingClientSetProcessIdentifier(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingClientSetProcessIdentifier_cold_1();
    }
  }

  [v3 setProcessIdentifier:a2];
}

void MRNowPlayingClientSetBundleIdentifier(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingClientSetBundleIdentifier_cold_1();
    }
  }

  [v3 setBundleIdentifier:a2];
}

void MRNowPlayingClientSetParentAppBundleIdentifier(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingClientSetParentAppBundleIdentifier_cold_1();
    }
  }

  [v3 setParentApplicationBundleIdentifier:a2];
}

uint64_t MRNowPlayingClientGetUserIdentifier(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingClientGetUserIdentifier_cold_1();
    }
  }

  v2 = [v1 processUserIdentifier];

  return v2;
}

void MRNowPlayingClientSetUserIdentifier(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingClientSetUserIdentifier_cold_1();
    }
  }

  [v3 setProcessUserIdentifier:a2];
}

uint64_t MRNowPlayingClientGetNowPlayingVisibility(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingClientGetNowPlayingVisibility_cold_1();
    }
  }

  v2 = [v1 visibility];

  return v2;
}

void MRNowPlayingClientSetNowPlayingVisibility(void *a1, unsigned int a2)
{
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingClientSetNowPlayingVisibility_cold_1();
    }
  }

  [v3 setVisibility:a2];
}

float MRNowPlayingClientGetTintColor(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingClientGetTintColor_cold_1();
    }
  }

  v2 = [v1 tintColor];

  if (v2)
  {
    v3 = [v1 tintColor];
    [v3 red];
    v5 = v4;
    v6 = [v1 tintColor];
    [v6 green];
    v7 = [v1 tintColor];
    [v7 blue];
    v8 = [v1 tintColor];
    [v8 alpha];
  }

  else
  {
    v5 = -1.0;
  }

  return v5;
}

void MRNowPlayingClientSetTintColor(void *a1, float a2, float a3, float a4, float a5)
{
  v14 = a1;
  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingClientSetTintColor_cold_1();
    }
  }

  if (MRColorIsNull(a2, a3, a4, a5))
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_alloc_init(MRColorComponents);
    *&v10 = a2;
    [(MRColorComponents *)v9 setRed:v10];
    *&v11 = a3;
    [(MRColorComponents *)v9 setGreen:v11];
    *&v12 = a4;
    [(MRColorComponents *)v9 setBlue:v12];
    *&v13 = a5;
    [(MRColorComponents *)v9 setAlpha:v13];
  }

  [v14 setTintColor:v9];
}

void *MRNowPlayingClientGetDisplayName(void *a1)
{
  v1 = [a1 displayName];

  return v1;
}

void MRNowPlayingClientAppendBundleIdentifier(void *a1, uint64_t a2)
{
  v6 = a1;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  MRNowPlayingClientAppendBundleIdentifier_cold_1();
  if (a2)
  {
LABEL_4:
    v3 = objc_alloc(MEMORY[0x1E695DF70]);
    v4 = [v6 extendedBundleIdentifierHierarchy];
    v5 = [v3 initWithArray:v4];

    [v5 addObject:a2];
    [v6 setExtendedBundleIdentifierHierarchy:v5];
  }

LABEL_5:
}

uint64_t MRNowPlayingClientCopyAppIconURL(void *a1)
{
  v1 = [a1 appIcon];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRNowPlayingClientGetHasAuxillaryProperties(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingClientGetHasAuxillaryProperties_cold_1();
    }
  }

  v2 = [v1 hasAuxiliaryProperties];

  return v2;
}

uint64_t MRNowPlayingClientEqualToClient(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    MRNowPlayingClientEqualToClient_cold_1();
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRNowPlayingClientEqualToClient_cold_2();
  }

LABEL_6:
  if (v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqual:v4];
  }

  return v5;
}

void MRNowPlayingClientMerge(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    MRNowPlayingClientMerge_cold_1();
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else if (!v3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRNowPlayingClientMerge_cold_2();
  }

  if (v4)
  {
    [v4 mergeFrom:v3];
  }

LABEL_8:
}

uint64_t MRNowPlayingPlayerCopy(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerCopy_cold_1();
    }
  }

  v2 = [v1 copy];

  return v2;
}

uint64_t MRNowPlayingPlayerCreateSkeletonFrom(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerCreateSkeletonFrom_cold_1();
    }
  }

  v2 = [v1 skeleton];

  return v2;
}

void MRNowPlayingPlayerSetIdentifier(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerSetIdentifier_cold_1();
    }
  }

  [v3 setIdentifier:a2];
}

void MRNowPlayingPlayerSetDisplayName(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerSetDisplayName_cold_1();
    }
  }

  [v3 setDisplayName:a2];
}

void MRNowPlayingPlayerSetAudioSessionType(void *a1, unsigned int a2)
{
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerSetAudioSessionType_cold_1();
    }
  }

  [v3 setAudioSessionType:a2];
}

void *MRNowPlayingPlayerGetDisplayName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerGetDisplayName_cold_1();
    }
  }

  v2 = [v1 displayName];

  return v2;
}

uint64_t MRNowPlayingPlayerGetAudioSessionType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerGetAudioSessionType_cold_1();
    }
  }

  v2 = [v1 audioSessionType];

  return v2;
}

__CFString *MRNowPlayingPlayerAudioSessionTypeCopyDescription(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E76A1E38[a1];
  }
}

uint64_t MRNowPlayingPlayerGetHasAuxillaryProperties(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerGetHasAuxillaryProperties_cold_1();
    }
  }

  v2 = [v1 hasAuxiliaryProperties];

  return v2;
}

uint64_t MRNowPlayingPlayerCreateFromExternalRepresentation(uint64_t a1)
{
  v2 = [MRPlayer alloc];

  return [(MRPlayer *)v2 initWithData:a1];
}

uint64_t MRNowPlayingPlayerEqualToPlayer(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    MRNowPlayingPlayerEqualToPlayer_cold_1();
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRNowPlayingPlayerEqualToPlayer_cold_2();
  }

LABEL_6:
  if (v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqual:v4];
  }

  return v5;
}

void MRNowPlayingPlayerMerge(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    MRNowPlayingPlayerMerge_cold_1();
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else if (!v3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRNowPlayingPlayerMerge_cold_2();
  }

  if (v4)
  {
    [v4 mergeFrom:v3];
  }

LABEL_8:
}

uint64_t MRNowPlayingPlayerPathCreateSkeletonFrom(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerPathCreateSkeletonFrom_cold_1();
    }
  }

  v2 = [v1 skeleton];

  return v2;
}

void MRNowPlayingPlayerPathSetOrigin(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    MRNowPlayingPlayerPathSetOrigin_cold_1();
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else if (!v3)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRNowPlayingPlayerPathSetOrigin_cold_2();
  }

LABEL_6:
  [v4 setOrigin:v3];
}

void MRNowPlayingPlayerPathSetClient(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    MRNowPlayingPlayerPathSetClient_cold_1();
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else if (!v3)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRNowPlayingPlayerPathSetClient_cold_2();
  }

LABEL_6:
  [v4 setClient:v3];
}

void MRNowPlayingPlayerPathSetPlayer(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    MRNowPlayingPlayerPathSetPlayer_cold_1();
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else if (!v3)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRNowPlayingPlayerPathSetPlayer_cold_2();
  }

LABEL_6:
  [v4 setPlayer:v3];
}

uint64_t MRNowPlayingPlayerPathCreateFromExternalRepresentation(uint64_t a1)
{
  v2 = [MRPlayerPath alloc];

  return [(MRPlayerPath *)v2 initWithData:a1];
}

uint64_t MRNowPlayingPlayerPathCreateExternalRepresentation(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerPathCreateExternalRepresentation_cold_1();
    }
  }

  v2 = [v1 data];

  return v2;
}

uint64_t MRNowPlayingPlayerPathEqualToPlayerPath(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    MRNowPlayingPlayerPathEqualToPlayerPath_cold_1();
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRNowPlayingPlayerPathEqualToPlayerPath_cold_2();
  }

LABEL_6:
  if (v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqual:v4];
  }

  return v5;
}

uint64_t MRNowPlayingPlayerPathClientEqualToPlayerPathClient(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    MRNowPlayingPlayerPathClientEqualToPlayerPathClient_cold_1();
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRNowPlayingPlayerPathClientEqualToPlayerPathClient_cold_2();
  }

LABEL_6:
  if (v3 == v4)
  {
    v9 = 1;
  }

  else
  {
    v5 = [v3 origin];
    v6 = [v4 origin];
    if ([v5 isEqual:v6])
    {
      v7 = [v3 client];
      v8 = [v4 client];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

uint64_t MRNowPlayingPlayerPathGetIsResolved(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerPathGetIsResolved_cold_1();
    }
  }

  v2 = [v1 isResolved];

  return v2;
}

void MRMediaRemoteNowPlayingGetResolvedPlayerPathIsLocal(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    MRMediaRemoteNowPlayingGetResolvedPlayerPathIsLocal_cold_1();
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (!v6)
  {
    goto LABEL_12;
  }

  if (!v5)
  {
    v5 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
  }

  if ([v7 isResolved])
  {
    if (!v7)
    {
      MRMediaRemoteNowPlayingGetResolvedPlayerPathIsLocal_cold_2();
    }

    v9 = [v7 isLocal];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __MRMediaRemoteNowPlayingGetResolvedPlayerPathIsLocal_block_invoke;
    block[3] = &unk_1E76A1CE0;
    v10 = v14;
    v14[0] = v6;
    v14[1] = v7;
    v15 = v9;
    dispatch_async(v5, block);
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __MRMediaRemoteNowPlayingGetResolvedPlayerPathIsLocal_block_invoke_2;
    v11[3] = &unk_1E769C298;
    v10 = &v12;
    v12 = v6;
    MRMediaRemoteNowPlayingResolvePlayerPath(v7, v5, v11);
  }

LABEL_12:
}

uint64_t __MRMediaRemoteNowPlayingGetResolvedPlayerPathIsLocal_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  IsLocal = MRNowPlayingPlayerPathIsLocal(a2);
  v5 = *(v3 + 16);

  return v5(v3, a2, IsLocal);
}

uint64_t MRMediaRemoteNowPlayingGetResolvedPlayerPathIsLocalSync(void *a1, void *a2)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRMediaRemoteNowPlayingGetResolvedPlayerPathIsLocalSync_cold_1();
    }
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__35;
  v18 = __Block_byref_object_dispose__35;
  v19 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v6 = [v5 workerQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __MRMediaRemoteNowPlayingGetResolvedPlayerPathIsLocalSync_block_invoke;
  v10[3] = &unk_1E76A1D08;
  v12 = &v20;
  v13 = &v14;
  v7 = v4;
  v11 = v7;
  MRMediaRemoteNowPlayingGetResolvedPlayerPathIsLocal(a1, v6, v10);

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (a2)
  {
    *a2 = v15[5];
  }

  v8 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  return v8;
}

void sub_1A2A4CF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

intptr_t __MRMediaRemoteNowPlayingGetResolvedPlayerPathIsLocalSync_block_invoke(void *a1, void *a2, char a3)
{
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  v4 = a1[4];

  return dispatch_semaphore_signal(v4);
}

uint64_t MRNowPlayingPlayerPathCopyStringRepresentation(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerPathCopyStringRepresentation_cold_1();
    }
  }

  v2 = [v1 description];

  return v2;
}

uint64_t MRNowPlayingPlayerPathResolveExternalDevicePlayerPath(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRNowPlayingPlayerPathResolveExternalDevicePlayerPath_cold_1();
    }
  }

  v4 = [MRPlayerPath alloc];
  v5 = [v3 client];
  v6 = [v3 player];
  v7 = [(MRPlayerPath *)v4 initWithOrigin:a2 client:v5 player:v6];

  return v7;
}

void *MRMediaRemoteGetLocalNowPlayingClient()
{
  v0 = +[MRClient localClient];

  return v0;
}

void *MRMediaRemoteGetDefaultNowPlayingPlayer()
{
  v0 = +[MRPlayer defaultPlayer];

  return v0;
}

void *MRMediaRemoteGetLocalNowPlayingPlayerPath()
{
  v0 = +[MRPlayerPath localPlayerPath];

  return v0;
}

void __MRMediaRemoteNowPlayingResolvePlayerPathWithID_block_invoke_7(id *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Redirecting to cluster leader: %@", v3];
  v5 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    *buf = 138543874;
    v25 = v6;
    v26 = 2114;
    v27 = v7;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  if (v3)
  {
    v8 = a1[5];
    v22[0] = @"MREndpointConnectionCorrelationIDUserInfoKey";
    v22[1] = @"MREndpointConnectionReasonUserInfoKey";
    v23[0] = v8;
    v23[1] = @"clusterLeaderRedirection";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __MRMediaRemoteNowPlayingResolvePlayerPathWithID_block_invoke_99;
    v17[3] = &unk_1E76A1DC8;
    v10 = a1[7];
    v18 = v3;
    v11 = a1[4];
    v12 = a1[5];
    *&v13 = a1[6];
    *(&v13 + 1) = v10;
    *&v14 = v11;
    *(&v14 + 1) = v12;
    v19 = v14;
    v20 = v13;
    v21 = a1[8];
    [v18 connectToExternalDeviceWithUserInfo:v9 completion:v17];
  }

  else
  {
    v15 = a1[7];
    v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:48 description:@"Could not resolve playerPath for clusterLeaderRedirection"];
    v15[2](v15, 0, v9);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteNowPlayingResolvePlayerPathWithID_block_invoke_99(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 64);
    v4 = *(*(a1 + 64) + 16);
    v5 = *MEMORY[0x1E69E9840];

    v4();
  }

  else
  {
    v6 = [*(a1 + 32) origin];
    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [*(a1 + 32) uniqueIdentifier];
      v9 = [v7 stringWithFormat:@"Connect to origin: %@, endpoint: %@", v6, v8];

      v10 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        *buf = 138543874;
        v18 = v11;
        v19 = 2114;
        v20 = v12;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v13 = [*(a1 + 56) playerPathByRedirectingToOrigin:v6];
      v14 = *(a1 + 64);
      (*(*(a1 + 72) + 16))();
    }

    else
    {
      v15 = *(a1 + 64);
      v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:117 description:@"Connected to endpoint but endpoint disconnected shortly after (could not get origin)"];
      (*(v15 + 16))(v15, 0, v9);
    }

    v16 = *MEMORY[0x1E69E9840];
  }
}

uint64_t MRMediaRemoteNowPlayingCopyResolvedPlayerPath(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (([v3 isResolved] & 1) == 0)
  {
    v5 = +[MRMediaRemoteServiceClient sharedServiceClient];
    v6 = [v5 activePlayerPath];

    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = [v3 origin];
    v8 = [v6 origin];
    v9 = [v3 client];
    v10 = [v6 client];
    v11 = [v3 player];
    v12 = [v6 player];
    v17 = a2;
    if (v7 && ![v7 isEqual:v8] || v9 && !objc_msgSend(v9, "isEqual:", v10))
    {
      v13 = v8;
    }

    else
    {
      v13 = v8;
      if (!v11 || [v11 isEqual:v12])
      {
        v4 = [v6 copy];
        v14 = 0;
        goto LABEL_12;
      }
    }

    v14 = 1;
LABEL_12:

    a2 = v17;
    if (!v14)
    {
LABEL_14:

      goto LABEL_15;
    }

LABEL_13:
    v15 = MRGetSharedService();
    v4 = MRMediaRemoteServiceCopyResolvedPlayerPath(v15, v3, a2);
    goto LABEL_14;
  }

LABEL_15:

  return v4;
}

void sub_1A2A4E488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _MRRegisterForGameControllerEventsMessageProtobufReadFrom(uint64_t a1, void *a2)
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
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
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

__CFString *MRGroupSessionMediaAccountHostingStateToString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Indeterminate";
  }

  else
  {
    return off_1E76A1EF0[a1 - 1];
  }
}

uint64_t _MRGetVolumeControlCapabilitiesResultMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRVolumeControlAvailabilityProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRVolumeControlAvailabilityProtobufReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *MRHIDTouchPhaseCopyDescription(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E76A1F48[a1];
  }
}

uint64_t MRHIDTouchEventCopyDescription(uint64_t a1)
{
  v2 = MRHIDTouchPhaseCopyDescription(*(a1 + 8));
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{\n\tpoint = {%f, %f}\n\tphase = %@\n\ttimestamp = %llu\n\tfinger = %u\n}", *a1, *(a1 + 4), v2, *(a1 + 16), *(a1 + 24)];

  return v3;
}

CFStringRef MRHIDButtonEventCopyDescription(unint64_t a1, char a2)
{
  v2 = "false";
  if (a2)
  {
    v2 = "true";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"{\n\tusagePage = %u\n\tusage = %u\n\tdown = %s\n}", a1, HIDWORD(a1), v2);
}

uint64_t _MRPlayerClientParticipantsUpdateMessageProtobufReadFrom(id *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
        objc_storeStrong(a1 + 2, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v13->super.super.isa, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_MRPlaybackQueueParticipantProtobuf);
    [a1 addParticipants:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_MRPlaybackQueueParticipantProtobufReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRSupportedCommandsProtobufReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRCommandInfoProtobuf);
        [a1 addSupportedCommand:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRCommandInfoProtobufReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MRMediaRemoteApplicationSupportsBrowsableContent(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    MRMediaRemoteApplicationSupportsBrowsableContent_cold_1();
  }

  v7[0] = @"com.apple.developer.playable-content";
  v2 = MRMediaRemoteCopyApplicationEntitlements(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1]);
  v3 = [v2 objectForKeyedSubscript:@"com.apple.developer.playable-content"];
  v4 = [v3 BOOLValue];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}