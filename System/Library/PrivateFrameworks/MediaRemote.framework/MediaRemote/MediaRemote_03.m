void MRMediaRemotePlaybackSessionSetMigratePostCallbackForOrigin(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v5 originClientForOrigin:v4];

  [v6 setPlaybackSessionMigratePostCallback:v3];
}

uint64_t _MRSetVolumeMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v22[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22[0] & 0x7F) << v5;
        if ((v22[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v18 = objc_alloc_init(_MRRequestDetailsProtobuf);
        objc_storeStrong((a1 + 8), v18);
        v22[0] = 0;
        v22[1] = 0;
        if (!PBReaderPlaceMark() || !_MRRequestDetailsProtobufReadFrom(v18, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v16 = PBReaderReadString();
        v17 = *(a1 + 16);
        *(a1 + 16) = v16;
      }

      else if (v13 == 1)
      {
        *(a1 + 28) |= 1u;
        LODWORD(v22[0]) = 0;
        v14 = [a2 position] + 4;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v22 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 24) = v22[0];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRPlaybackSessionResponseMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(_MRPlaybackSessionProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_MRPlaybackSessionProtobufReadFrom(v13, a2))
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

    v13 = objc_alloc_init(_MRPlaybackSessionMigrateRequestProtobuf);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_MRPlaybackSessionMigrateRequestProtobufReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void MRTypeAuditNowPlayingInfoDictionary(const __CFDictionary *context)
{
  if (context)
  {
    CFDictionaryApplyFunction(context, _MRTypeAuditDictionaryApplierFunction, context);
  }
}

void _MRTypeAuditDictionaryApplierFunction(const void *a1, CFTypeRef cf, __CFDictionary *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (_MRTypeAuditDictionaryApplierFunction___once != -1)
  {
    _MRTypeAuditDictionaryApplierFunction_cold_1();
  }

  v6 = CFGetTypeID(cf);
  v7 = [_MRTypeAuditDictionaryApplierFunction___propertyToCFTypeMapping objectForKey:a1];
  v8 = [v7 unsignedLongValue];

  if (v8)
  {
    v9 = v6 == v8;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if (CFStringGetTypeID() != v6 || (v10 = CFNumberGetTypeID(), v11 = _MRTypeAuditCreateNumberFromString, v10 != v8))
    {
      if (CFNumberGetTypeID() != v6 || (v12 = CFStringGetTypeID(), v11 = _MRTypeAuditCreateStringFromNumber, v12 != v8))
      {
        if (CFURLGetTypeID() != v6 || (v13 = CFStringGetTypeID(), v11 = _MRTypeAuditCreateStringFromURL, v13 != v8))
        {
          if (CFNumberGetTypeID() != v6 || (v14 = CFBooleanGetTypeID(), v11 = _MRTypeAuditCreateBooleanFromNumber, v14 != v8))
          {
            if (CFBooleanGetTypeID() != v6)
            {
              goto LABEL_19;
            }

            TypeID = CFNumberGetTypeID();
            v11 = _MRTypeAuditCreateNumberFromBoolean;
            if (TypeID != v8)
            {
              goto LABEL_19;
            }
          }
        }
      }
    }

    v16 = v11(cf);
    if (v16)
    {
      v17 = v16;
      CFDictionarySetValue(a3, a1, v16);
    }

    else
    {
LABEL_19:
      v17 = CFCopyTypeIDDescription(v6);
      v18 = CFCopyTypeIDDescription(v8);
      v19 = _MRLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = 138543874;
        v22 = a1;
        v23 = 2114;
        v24 = v17;
        v25 = 2114;
        v26 = v18;
        _os_log_error_impl(&dword_1A2860000, v19, OS_LOG_TYPE_ERROR, "WARNING: Unexpected type for now playing key %{public}@ (is %{public}@, should be %{public}@). Removing from now playing info dictionary.", &v21, 0x20u);
      }

      CFDictionaryRemoveValue(a3, a1);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t _MRTypeAuditCreateNumberFromString(uint64_t a1)
{
  if (_MRTypeAuditCreateNumberFromString_onceToken != -1)
  {
    _MRTypeAuditCreateNumberFromString_cold_1();
  }

  [_MRTypeAuditCreateNumberFromString_numberFormatter numberFromString:a1];
  return objc_claimAutoreleasedReturnValue();
}

CFStringRef _MRTypeAuditCreateStringFromURL(const __CFURL *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = CFURLGetString(a1);

  return CFStringCreateCopy(v1, v2);
}

uint64_t _MRTypeAuditCreateBooleanFromNumber(const __CFNumber *a1)
{
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  if (valuePtr)
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

void sub_1A28D0400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A28D0C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A28D0EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

uint64_t _MRGroupSessionMemberSyncMessageProtobufReadFrom(void *a1, void *a2)
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
        break;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(_MRUserIdentityProtobuf);
        [a1 addMembers:v14];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_MRUserIdentityProtobufReadFrom(v14, a2))
        {
LABEL_31:

          return 0;
        }

        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_MRGroupSessionParticipantProtobuf);
        [a1 addParticipants:v14];
        goto LABEL_25;
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

    v14 = objc_alloc_init(_MRGroupSessionParticipantProtobuf);
    [a1 addPendingParticipants:v14];
LABEL_25:
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_MRGroupSessionParticipantProtobufReadFrom(v14, a2))
    {
      goto LABEL_31;
    }

LABEL_27:
    PBReaderRecallMark();

    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRSendHIDEventMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v13 = PBReaderReadData();
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

uint64_t MRAudioBufferCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [MRAudioBuffer alloc];

  return [(MRAudioBuffer *)v7 initWithFormatSettings:a2 packetCapacity:a3 maximumPacketSize:a4];
}

uint64_t MRAudioBufferGetPacketCapacity(void *a1)
{
  v1 = [a1 buffer];
  v2 = [v1 packetCapacity];

  return v2;
}

uint64_t MRAudioBufferGetPacketCount(void *a1)
{
  v1 = [a1 buffer];
  v2 = [v1 packetCount];

  return v2;
}

void MRAudioBufferSetPacketCount(void *a1, uint64_t a2)
{
  v3 = [a1 buffer];
  [v3 setPacketCount:a2];
}

uint64_t MRAudioBufferGetMutableContentsPtr(void *a1)
{
  v1 = [a1 buffer];
  v2 = [v1 data];

  return v2;
}

uint64_t MRAudioBufferGetMutablePacketDescriptionsArrayPtr(void *a1)
{
  v1 = [a1 buffer];
  v2 = [v1 packetDescriptions];

  return v2;
}

void __MRLogCategoryConnections_block_invoke()
{
  v0 = os_log_create("com.apple.amp.mediaremote", "Connections");
  v1 = MRLogCategoryConnections__log;
  MRLogCategoryConnections__log = v0;
}

void __MRLogCategoryDiscovery_block_invoke()
{
  v0 = os_log_create("com.apple.amp.mediaremote", "Discovery");
  v1 = MRLogCategoryDiscovery__log;
  MRLogCategoryDiscovery__log = v0;
}

id MRLogCategoryDiscoveryOversize()
{
  if (MRLogCategoryDiscoveryOversize__once != -1)
  {
    MRLogCategoryDiscoveryOversize_cold_1();
  }

  v1 = MRLogCategoryDiscoveryOversize__log;

  return v1;
}

void __MRLogCategoryDiscoveryOversize_block_invoke()
{
  v0 = os_log_create("com.apple.amp.mediaremote", "DiscoveryOversize");
  v1 = MRLogCategoryDiscoveryOversize__log;
  MRLogCategoryDiscoveryOversize__log = v0;
}

id MRLogCategoryMigrationOversize()
{
  if (MRLogCategoryMigrationOversize__once != -1)
  {
    MRLogCategoryMigrationOversize_cold_1();
  }

  v1 = MRLogCategoryMigrationOversize__log;

  return v1;
}

void __MRLogCategoryMigrationOversize_block_invoke()
{
  v0 = os_log_create("com.apple.amp.mediaremote", "MigrationOversize");
  v1 = MRLogCategoryMigrationOversize__log;
  MRLogCategoryMigrationOversize__log = v0;
}

void __MRLogCategoryOutputContextUpdates_block_invoke()
{
  v0 = os_log_create("com.apple.amp.mediaremote.verbose", "OutputContext");
  v1 = MRLogCategoryOutputContextUpdates_log;
  MRLogCategoryOutputContextUpdates_log = v0;
}

void __MRLogCategoryMediaControl_block_invoke()
{
  v0 = os_log_create("com.apple.mediacontrol", "Default");
  v1 = MRLogCategoryMediaControl_log;
  MRLogCategoryMediaControl_log = v0;
}

__CFString *MRBannerEventDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E769A550[a1];
  }
}

void sub_1A28D83A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t MRMediaRemoteSetCanBeNowPlayingApplication(int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"YES";
    if (!a1)
    {
      v3 = @"NO";
    }

    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRNowPlaying] MRMediaRemoteSetCanBeNowPlayingApplication set to %@", &v12, 0xCu);
  }

  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v5 = [v4 clientForPlayerPath:0];

  LODWORD(v4) = [v5 canBeNowPlaying];
  [v5 setCanBeNowPlaying:a1 != 0];
  if (v4 != [v5 canBeNowPlaying])
  {
    v6 = [getAVSystemControllerClass() sharedAVSystemController];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "canBeNowPlaying")}];
    v8 = getAVSystemController_CanBeNowPlayingAppAttribute();
    [v6 setAttribute:v7 forKey:v8 error:0];
  }

  v9 = MRGetSharedService();
  MRMediaRemoteServiceSetCanBeNowPlayingApp(v9, a1 != 0, 0.0);

  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t MRMediaRemoteSetNowPlayingApplicationOverrideEnabled(int a1)
{
  v2 = +[MRNowPlayingOriginClientManager sharedManager];
  v3 = [v2 localOriginClient];

  if ([v3 isOverrideApp] != a1)
  {
    [v3 setOverrideAppBundleID:0];
    v4 = a1 != 0;
    [v3 setOverrideApp:v4];
    v5 = MRGetSharedService();
    MRMediaRemoteServiceSetNowPlayingAppOverride(v5, v4);
  }

  return 1;
}

uint64_t MRMediaRemoteSetOverriddenNowPlayingApplication(void *a1)
{
  v2 = +[MRNowPlayingOriginClientManager sharedManager];
  v3 = [v2 localOriginClient];

  v4 = [v3 overrideAppBundleID];
  v5 = v4;
  if (v4 == a1)
  {
  }

  else
  {
    v6 = [v4 isEqual:a1];

    if ((v6 & 1) == 0)
    {
      [v3 setOverrideApp:0];
      [v3 setOverrideAppBundleID:a1];
      v7 = MRGetSharedService();
      MRMediaRemoteServiceSetOverriddenNowPlayingApplication(v7, a1);
    }
  }

  return 0;
}

void MRMediaRemoteSetNowPlayingClientForOrigin(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v13 = a3;
  if (!v13)
  {
    v13 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = a4;
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v10 = [v9 originClientForOrigin:a2];

  [v10 setActiveNowPlayingClient:a1];
  v11 = [[MRPlayerPath alloc] initWithOrigin:a2 client:a1 player:0];
  v12 = MRGetSharedService();
  MRMediaRemoteServiceSetNowPlayingClient(v12, v11, v13, v8);
}

void MRMediaRemoteSetNowPlayingPlayerIfPossible(void *a1, void *a2, void *a3)
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
  v13[2] = __MRMediaRemoteSetNowPlayingPlayerIfPossible_block_invoke;
  v13[3] = &unk_1E769AB50;
  v14 = v5;
  v15 = v6;
  v11 = v5;
  v12 = v6;
  [v10 requestActiveForPlayerPath:v8 completion:v13];
}

void __MRMediaRemoteSetNowPlayingPlayerIfPossible_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __MRMediaRemoteSetNowPlayingPlayerIfPossible_block_invoke_2;
    v6[3] = &unk_1E769AB28;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void MRMediaRemoteGetPictureInPictureStatusForPlayer(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v5 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = a1;
  if ([v8 isLocal])
  {
    v9 = +[MRNowPlayingOriginClientManager sharedManager];
    v10 = [v9 playerClientForPlayerPath:v8];

    v11 = [v10 isPictureInPictureEnabled];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __MRMediaRemoteGetPictureInPictureStatusForPlayer_block_invoke;
    v13[3] = &unk_1E769AB78;
    v14 = v6;
    v15 = v11;
    dispatch_async(v5, v13);

    v8 = v10;
  }

  else
  {
    v12 = MRGetSharedService();
    MRMediaRemoteServiceGetPictureInPictureEnabledForPlayer(v12, v8, v5, v6);
  }
}

uint64_t __MRMediaRemoteGetPictureInPictureStatusForPlayer_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40), 0);
  }

  return result;
}

void MRMediaRemoteSetPictureInPictureStatusForPlayer(void *a1, _BOOL8 a2, void *a3, void *a4)
{
  v15 = a3;
  if (!v15)
  {
    v15 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = a1;
  v9 = a4;
  v10 = +[MRNowPlayingOriginClientManager sharedManager];
  v11 = [v10 playerClientForPlayerPath:v8];

  [v11 setPictureInPictureEnabled:a2];
  v12 = MRGetSharedService();
  MRMediaRemoteServiceSetPictureInPictureEnabledForPlayer(v12, v8, a2, v15, v9);

  v13 = +[MRNowPlayingOriginClientManager sharedManager];
  v14 = [v13 clientForPlayerPath:v8];

  [v14 reevaluateActivePlayerWithReason:@"Change in pip state" completion:0];
}

BOOL MRMediaRemoteCanBecomeActivePlayer(void *a1)
{
  v1 = a1;
  v2 = +[MRNowPlayingOriginClientManager sharedManager];
  v3 = [v2 playerClientForPlayerPath:v1];

  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v5 = [v4 clientForPlayerPath:v1];

  v6 = [v5 playerClients];
  v7 = [v6 count];

  if (v7 >= 2)
  {
    v9 = [v3 playerPath];
    v10 = [v9 player];
    v11 = +[MRPlayer defaultPlayer];
    v12 = [v10 isEqual:v11];

    if (v12)
    {
      v8 = 0;
      goto LABEL_7;
    }

    if ([v3 isPictureInPictureEnabled])
    {
      v13 = [v5 playerClients];
      v8 = [v13 count] == 2;

      goto LABEL_7;
    }
  }

  v8 = 1;
LABEL_7:

  return v8;
}

void *MRMediaRemoteGetPlayerPathForMXSessionIDFromLocalClient(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = +[MRNowPlayingOriginClientManager sharedManager];
  v3 = [v2 localOriginClient];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = v3;
  v4 = [v3 nowPlayingClients];
  v22 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v22)
  {
    v5 = *v31;
    v24 = v4;
    v21 = *v31;
    do
    {
      v6 = 0;
      do
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(v4);
        }

        v23 = v6;
        v7 = *(*(&v30 + 1) + 8 * v6);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v8 = [v7 playerClients];
        v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v27;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v27 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v26 + 1) + 8 * i);
              v14 = [v13 playerPath];
              v15 = [v14 player];
              v16 = [v15 mxSessionIDs];
              v17 = [v16 containsObject:a1];

              if (v17)
              {
                v18 = [v13 playerPath];

                v4 = v24;
                goto LABEL_19;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v6 = v23 + 1;
        v4 = v24;
        v5 = v21;
      }

      while (v23 + 1 != v22);
      v18 = 0;
      v22 = [v24 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v22);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

void MRMediaRemoteSetMXSessionIDForPlayer(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v10 = a3;
  v9 = [v7 player];
  [v9 setMxSessionIDs:a2];

  MRMediaRemoteUpdatePlayerProperties(v7, v10, v8);
}

void MRMediaRemoteUpdatePlayerProperties(void *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = a1;
  v7 = [v6 player];

  if (!v7)
  {
    MRMediaRemoteUpdatePlayerProperties_cold_1();
  }

  v8 = +[MRNowPlayingOriginClientManager sharedManager];
  v9 = [v8 playerClientForPlayerPath:v6];

  [v9 updatePlayer:v6];
  v10 = MRGetSharedService();
  if (v12)
  {
    v11 = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E96A0];
  }

  MRMediaRemoteServiceUpdatePlayerProperties(v10, v6, v11, v5);
}

void MRMediaRemoteSetAVAudioSessionOpaqueSessionIDForPlayer(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v10 = a3;
  v9 = [v7 player];
  [v9 setAudioSessionID:a2];

  MRMediaRemoteUpdatePlayerProperties(v7, v10, v8);
}

void MRMediaRemoteGetNowPlayingPlayerForClient(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  if (!v11)
  {
    v11 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = a4;
  v9 = [[MRPlayerPath alloc] initWithOrigin:a2 client:a1 player:0];
  v10 = MRGetSharedService();
  MRMediaRemoteServiceGetNowPlayingPlayer(v10, v9, v11, v8);
}

void MRMediaRemoteGetActivePlayerPathsForOrigin(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  if (!v7)
  {
    v7 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  v5 = a3;
  v6 = MRGetSharedService();
  MRMediaRemoteServiceGetActivePlayerPathsForLocalOrigin(v6, v7, v5);
}

void MRMediaRemoteGetNowPlayingClients(void *a1, void *a2)
{
  v6 = a1;
  if (!v6)
  {
    v6 = MEMORY[0x1E69E96A0];
    v3 = MEMORY[0x1E69E96A0];
  }

  v4 = a2;
  v5 = +[MROrigin localOrigin];
  MRMediaRemoteGetNowPlayingClientsForOrigin(v5, v6, v4);
}

void MRMediaRemoteGetNowPlayingClientsForOrigin(uint64_t a1, void *a2, void *a3)
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
  MRMediaRemoteServiceGetNowPlayingClients(v8, v7, v9, v6);
}

void MRMediaRemoteRemoveClientForOrigin(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v14 = a3;
  if (!v14)
  {
    v14 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = a4;
  v9 = [[MRPlayerPath alloc] initWithOrigin:a2 client:a1 player:0];
  v10 = [MRPlayerPath localResolvedPlayerPathFromPlayerPath:v9];
  v11 = +[MRNowPlayingOriginClientManager sharedManager];
  v12 = [v11 originClientForPlayerPath:v10];

  [v12 removeClient:v10];
  v13 = MRGetSharedService();
  MRMediaRemoteServiceRemoveClient(v13, v9, v14, v8);
}

void MRMediaRemoteGetPlayersForClient(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  if (!v11)
  {
    v11 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = a4;
  v9 = [[MRPlayerPath alloc] initWithOrigin:a2 client:a1 player:0];
  v10 = MRGetSharedService();
  MRMediaRemoteServiceGetNowPlayingPlayers(v10, v9, v11, v8);
}

void MRMediaRemoteRemovePlayer(void *a1, void *a2, void *a3)
{
  v11 = a2;
  if (!v11)
  {
    v11 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
  }

  v6 = a3;
  v7 = [MRPlayerPath localResolvedPlayerPathFromPlayerPath:a1];
  v8 = +[MRNowPlayingOriginClientManager sharedManager];
  v9 = [v8 clientForPlayerPath:v7];

  [v9 removePlayer:v7];
  v10 = MRGetSharedService();
  MRMediaRemoteServiceRemovePlayer(v10, a1, v11, v6);
}

void MRMediaRemoteGetClientProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  MRMediaRemoteGetClientProperties_cold_1();
  if (!v7)
  {
LABEL_3:
    v7 = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
  }

LABEL_4:
  v10 = [[MRPlayerPath alloc] initWithOrigin:a2 client:a1 player:0];
  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [MEMORY[0x1E696AFB0] UUID];
  v13 = [v12 UUIDString];

  v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"clientProperties", v13];
  v15 = v14;
  if (v10)
  {
    [v14 appendFormat:@" for %@", v10];
  }

  v16 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v15;
    _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v17 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v18 = [v17 workerQueue];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __MRMediaRemoteGetClientProperties_block_invoke;
  v24[3] = &unk_1E769ABC8;
  v25 = @"clientProperties";
  v26 = v13;
  v27 = v11;
  v28 = v7;
  v29 = v8;
  v19 = v8;
  v20 = v7;
  v21 = v11;
  v22 = v13;
  MRMediaRemoteNowPlayingResolvePlayerPath(v10, v18, v24);

  v23 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteGetClientProperties_block_invoke(id *a1, void *a2, uint64_t Error)
{
  v5 = a2;
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __MRMediaRemoteGetClientProperties_block_invoke_2;
  v25 = &unk_1E769ABA0;
  v6 = v5;
  v26 = v6;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v27 = v12;
  v28 = v11;
  v29 = a1[8];
  v13 = MEMORY[0x1A58E3570](&v22);
  v14 = [v6 client];

  if (v14)
  {
    if ([v6 isLocal])
    {
      v15 = +[MRNowPlayingOriginClientManager sharedManager];
      v16 = [v15 clientForPlayerPath:v6];

      v17 = [v16 playerPath];
      v18 = [v17 client];
      (v13)[2](v13, v18, 0);
    }

    else
    {
      v19 = [v6 client];
      v20 = [v19 processIdentifier];

      if (v20)
      {
        v21 = +[MRNowPlayingOriginClientManager sharedManager];
        v16 = [v21 clientRequestsForPlayerPath:v6];

        [v16 handleClientPropertiesRequestWithCompletion:v13];
      }

      else
      {
        v16 = [v6 client];
        (v13)[2](v13, v16, 0);
      }
    }
  }

  else
  {
    if (Error)
    {
      v16 = 0;
    }

    else
    {
      Error = MRMediaRemoteNowPlayingPlayerPathCreateError(v6);
      v16 = Error;
    }

    v13[2](v13, 0, Error);
  }
}

void __MRMediaRemoteGetClientProperties_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (v5 && !v6)
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
LABEL_16:
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v10)
    {
      goto LABEL_22;
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
LABEL_15:
    v17 = v9;
    v18 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
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
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v19)
    {
      __MRMediaRemoteGetClientProperties_block_invoke_2_cold_1();
    }

    goto LABEL_22;
  }

  v24 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v24)
    {
      goto LABEL_22;
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
    goto LABEL_16;
  }

  if (v24)
  {
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
    goto LABEL_15;
  }

LABEL_22:

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __MRMediaRemoteGetClientProperties_block_invoke_553;
  v39[3] = &unk_1E769AB28;
  v35 = *(a1 + 64);
  v36 = *(a1 + 72);
  v40 = v5;
  v41 = v36;
  v37 = v5;
  dispatch_async(v35, v39);

  v38 = *MEMORY[0x1E69E9840];
}

uint64_t __MRMediaRemoteGetClientProperties_block_invoke_553(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void MRMediaRemoteSetClientProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!a1)
  {
    MRMediaRemoteSetClientProperties_cold_1();
  }

  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];

  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [[MRPlayerPath alloc] initWithOrigin:a2 client:a1 player:0];
  v13 = +[MRNowPlayingOriginClientManager sharedManager];
  v14 = [v13 clientForPlayerPath:v12];

  [v14 setClient:a1];
  v15 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"setClientProperties", v10];
  v16 = v15;
  if (a1)
  {
    [v15 appendFormat:@" for %@", a1];
  }

  v17 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v32 = v16;
    _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v18 = MRGetSharedService();
  v19 = v7;
  if (!v7)
  {
    v19 = MEMORY[0x1E69E96A0];
    v20 = MEMORY[0x1E69E96A0];
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __MRMediaRemoteSetClientProperties_block_invoke;
  v26[3] = &unk_1E769ABF0;
  v27 = v12;
  v28 = v10;
  v29 = v11;
  v30 = v8;
  v21 = v8;
  v22 = v11;
  v23 = v10;
  v24 = v12;
  MRMediaRemoteServiceSetClientProperties(v18, v24, v19, v26);
  if (!v7)
  {
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __MRMediaRemoteSetClientProperties_block_invoke(void *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  v5 = _MRLogForCategory(0xAuLL);
  v6 = v5;
  if (!a2)
  {
    v12 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v14 = a1[4];
      v13 = a1[5];
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:a1[6]];
      v23 = 138544130;
      v24 = @"setClientProperties";
      v25 = 2114;
      v26 = v13;
      v27 = 2114;
      v28 = v14;
      v29 = 2048;
      v30 = v15;
      v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v17 = v6;
      v18 = 42;
    }

    else
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v19 = a1[5];
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:a1[6]];
      v23 = 138543874;
      v24 = @"setClientProperties";
      v25 = 2114;
      v26 = v19;
      v27 = 2048;
      v28 = v20;
      v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v17 = v6;
      v18 = 32;
    }

    _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, &v23, v18);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v9 = a1[4];
    v8 = a1[5];
    v10 = [MEMORY[0x1E695DF00] date];
    [v10 timeIntervalSinceDate:a1[6]];
    v23 = 138544386;
    v24 = @"setClientProperties";
    v25 = 2114;
    v26 = v8;
    v27 = 2114;
    v28 = a2;
    v29 = 2114;
    v30 = v9;
    v31 = 2048;
    v32 = v11;
    _os_log_error_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v23, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    __MRMediaRemoteSetClientProperties_block_invoke_cold_1();
  }

LABEL_14:

  result = a1[7];
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void MRMediaRemoteUpdateClientProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!a1)
  {
    MRMediaRemoteUpdateClientProperties_cold_1();
  }

  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];

  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [[MRPlayerPath alloc] initWithOrigin:a2 client:a1 player:0];
  v13 = +[MRNowPlayingOriginClientManager sharedManager];
  v14 = [v13 clientForPlayerPath:v12];

  [v14 mergeClient:a1];
  v15 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"updateClientProperties", v10];
  v16 = v15;
  if (a1)
  {
    [v15 appendFormat:@" for %@", a1];
  }

  v17 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v32 = v16;
    _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v18 = MRGetSharedService();
  v19 = v7;
  if (!v7)
  {
    v19 = MEMORY[0x1E69E96A0];
    v20 = MEMORY[0x1E69E96A0];
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __MRMediaRemoteUpdateClientProperties_block_invoke;
  v26[3] = &unk_1E769ABF0;
  v27 = v12;
  v28 = v10;
  v29 = v11;
  v30 = v8;
  v21 = v8;
  v22 = v11;
  v23 = v10;
  v24 = v12;
  MRMediaRemoteServiceUpdateClientProperties(v18, v24, v19, v26);
  if (!v7)
  {
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __MRMediaRemoteUpdateClientProperties_block_invoke(void *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  v5 = _MRLogForCategory(0xAuLL);
  v6 = v5;
  if (!a2)
  {
    v12 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v14 = a1[4];
      v13 = a1[5];
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:a1[6]];
      v23 = 138544130;
      v24 = @"updateClientProperties";
      v25 = 2114;
      v26 = v13;
      v27 = 2114;
      v28 = v14;
      v29 = 2048;
      v30 = v15;
      v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v17 = v6;
      v18 = 42;
    }

    else
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v19 = a1[5];
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:a1[6]];
      v23 = 138543874;
      v24 = @"updateClientProperties";
      v25 = 2114;
      v26 = v19;
      v27 = 2048;
      v28 = v20;
      v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v17 = v6;
      v18 = 32;
    }

    _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, &v23, v18);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v9 = a1[4];
    v8 = a1[5];
    v10 = [MEMORY[0x1E695DF00] date];
    [v10 timeIntervalSinceDate:a1[6]];
    v23 = 138544386;
    v24 = @"updateClientProperties";
    v25 = 2114;
    v26 = v8;
    v27 = 2114;
    v28 = a2;
    v29 = 2114;
    v30 = v9;
    v31 = 2048;
    v32 = v11;
    _os_log_error_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v23, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    __MRMediaRemoteUpdateClientProperties_block_invoke_cold_1();
  }

LABEL_14:

  result = a1[7];
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void MRMediaRemoteSyncClientProperties(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [[MRPlayerPath alloc] initWithOrigin:a3 client:a2 player:0];
  v7 = +[MRNowPlayingOriginClientManager sharedManager];
  v8 = [v7 clientForPlayerPath:v6];

  if (v8)
  {
    v9 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 playerPath];
      v28 = 138543618;
      v29 = v5;
      v30 = 2114;
      v31 = v10;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRNowPlaying] Received sourceClient %{public}@ at %{public}@", &v28, 0x16u);
    }

    v11 = [v8 playerPath];
    v12 = [v11 client];

    v13 = [v8 playerPath];
    v14 = [v13 client];
    v15 = [v14 skeleton];

    [v15 setProcessIdentifier:{objc_msgSend(v12, "processIdentifier")}];
    v16 = [v12 bundleIdentifier];
    [v15 setBundleIdentifier:v16];

    v17 = [v5 displayName];
    [v15 setDisplayName:v17];

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = [v5 bundleIdentifier];

    if (v19)
    {
      v20 = [v5 bundleIdentifier];
      [v18 addObject:v20];
    }

    v21 = [v5 parentApplicationBundleIdentifier];

    if (v21)
    {
      v22 = [v5 parentApplicationBundleIdentifier];
      [v18 addObject:v22];
    }

    v23 = [v5 extendedBundleIdentifierHierarchy];

    if (v23)
    {
      v24 = [v5 extendedBundleIdentifierHierarchy];
      [v18 addObjectsFromArray:v24];
    }

    [v15 setExtendedBundleIdentifierHierarchy:v18];
    v25 = [v8 playerPath];
    v26 = [v25 origin];
    MRMediaRemoteUpdateClientProperties(v15, v26, 0, 0);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteSetParentApplication(uint64_t a1, uint64_t a2)
{
  v4 = +[MRClient localClient];
  v5 = [v4 copy];

  [v5 setParentApplicationBundleIdentifier:a2];
  MRMediaRemoteUpdateClientProperties(v5, a1, 0, 0);
}

void MRMediaRemoteSetNowPlayingVisibility(uint64_t a1, unsigned int a2)
{
  v4 = +[MRClient localClient];
  v5 = [v4 copy];

  [v5 setVisibility:a2];
  MRMediaRemoteUpdateClientProperties(v5, a1, 0, 0);
}

void MRMediaRemoteSetNowPlayingTintColor(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v10 = +[MRClient localClient];
  v16 = [v10 copy];

  if (MRColorIsNull(a2, a3, a4, a5))
  {
    v11 = 0;
  }

  else
  {
    v11 = objc_alloc_init(MRColorComponents);
    *&v12 = a5;
    [(MRColorComponents *)v11 setAlpha:v12];
    *&v13 = a4;
    [(MRColorComponents *)v11 setBlue:v13];
    *&v14 = a3;
    [(MRColorComponents *)v11 setGreen:v14];
    *&v15 = a2;
    [(MRColorComponents *)v11 setRed:v15];
  }

  [v16 setTintColor:v11];
  MRMediaRemoteUpdateClientProperties(v16, a1, 0, 0);
}

CFStringRef MRMediaRemoteCopyNowPlayingVisibilityDescription(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1E769AE08[a1];
  }

  return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
}

void MRMediaRemoteGetPlayerProperties(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];

  v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"playerProperties", v9];
  v11 = v10;
  if (a1)
  {
    [v10 appendFormat:@" for %@", a1];
  }

  v12 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v11;
    _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v13 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v14 = [v13 workerQueue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __MRMediaRemoteGetPlayerProperties_block_invoke;
  v20[3] = &unk_1E769ABC8;
  v21 = @"playerProperties";
  v22 = v9;
  v23 = v7;
  v24 = v5;
  v25 = v6;
  v15 = v6;
  v16 = v5;
  v17 = v7;
  v18 = v9;
  MRMediaRemoteNowPlayingResolvePlayerPath(a1, v14, v20);

  v19 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteGetPlayerProperties_block_invoke(id *a1, void *a2, uint64_t Error)
{
  v5 = a2;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __MRMediaRemoteGetPlayerProperties_block_invoke_2;
  v23 = &unk_1E769AC40;
  v6 = v5;
  v24 = v6;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v25 = v12;
  v26 = v11;
  v27 = a1[8];
  v13 = MEMORY[0x1A58E3570](&v20);
  if ([v6 isResolved])
  {
    v14 = [v6 isLocal];
    v15 = +[MRNowPlayingOriginClientManager sharedManager];
    v16 = v15;
    if (v14)
    {
      v17 = [v15 playerClientForPlayerPath:v6];

      v18 = [v17 playerPath];
      v19 = [v18 player];
      (v13)[2](v13, v19, 0);
    }

    else
    {
      v17 = [v15 playerClientRequestsForPlayerPath:v6];

      [v17 handlePlayerPropertiesRequestWithCompletion:v13];
    }
  }

  else
  {
    if (Error)
    {
      v17 = 0;
    }

    else
    {
      Error = MRMediaRemoteNowPlayingPlayerPathCreateError(v6);
      v17 = Error;
    }

    v13[2](v13, 0, Error);
  }
}

void __MRMediaRemoteGetPlayerProperties_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (v5 && !v6)
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
        v45 = v12;
        v46 = 2114;
        v47 = v11;
        v48 = 2112;
        v49 = v5;
        v50 = 2114;
        v51 = v13;
        v52 = 2048;
        v53 = v15;
        v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v17 = v9;
        v18 = 52;
LABEL_16:
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v29 = *(a1 + 40);
    v30 = *(a1 + 48);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v45 = v29;
    v46 = 2114;
    v47 = v30;
    v48 = 2112;
    v49 = v5;
    v50 = 2048;
    v51 = v31;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v17 = v9;
    v18 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v19)
      {
        v21 = *(a1 + 40);
        v20 = *(a1 + 48);
        v22 = *(a1 + 32);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544386;
        v45 = v21;
        v46 = 2114;
        v47 = v20;
        v48 = 2114;
        v49 = v6;
        v50 = 2114;
        v51 = v22;
        v52 = 2048;
        v53 = v23;
        _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v19)
    {
      __MRMediaRemoteGetClientProperties_block_invoke_2_cold_1();
    }

    goto LABEL_22;
  }

  v24 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v24)
    {
      goto LABEL_22;
    }

    v32 = *(a1 + 40);
    v33 = *(a1 + 48);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138543874;
    v45 = v32;
    v46 = 2114;
    v47 = v33;
    v48 = 2048;
    v49 = v34;
    v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v17 = v9;
    v18 = 32;
    goto LABEL_16;
  }

  if (v24)
  {
    v26 = *(a1 + 40);
    v25 = *(a1 + 48);
    v27 = *(a1 + 32);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v45 = v26;
    v46 = 2114;
    v47 = v25;
    v48 = 2114;
    v49 = v27;
    v50 = 2048;
    v51 = v28;
    v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MRMediaRemoteGetPlayerProperties_block_invoke_584;
  block[3] = &unk_1E769AC18;
  v35 = *(a1 + 64);
  v36 = *(a1 + 72);
  v42 = v6;
  v43 = v36;
  v41 = v5;
  v37 = v6;
  v38 = v5;
  dispatch_async(v35, block);

  v39 = *MEMORY[0x1E69E9840];
}

uint64_t __MRMediaRemoteGetPlayerProperties_block_invoke_584(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void MRMediaRemoteSetPlayerProperties(void *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = a1;
  v7 = [v6 player];

  if (!v7)
  {
    MRMediaRemoteSetPlayerProperties_cold_1();
  }

  v8 = +[MRNowPlayingOriginClientManager sharedManager];
  v9 = [v8 playerClientForPlayerPath:v6];

  [v9 setPlayerPath:v6];
  v10 = MRGetSharedService();
  if (v12)
  {
    v11 = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E96A0];
  }

  MRMediaRemoteServiceSetPlayerProperties(v10, v6, v11, v5);
}

void MRMediaRemoteGetElectedPlayerPath(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = MRGetSharedService();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MRMediaRemoteGetElectedPlayerPath_block_invoke;
  v7[3] = &unk_1E769AC68;
  v8 = v3;
  v6 = v3;
  MRMediaRemoteServiceGetElectedPlayerPath(v5, v4, v7);
}

uint64_t __MRMediaRemoteGetElectedPlayerPath_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRMediaRemoteGetProactiveRecommendedPlayer(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = MRGetSharedService();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MRMediaRemoteGetProactiveRecommendedPlayer_block_invoke;
  v7[3] = &unk_1E769AC90;
  v8 = v3;
  v6 = v3;
  MRMediaRemoteServiceGetProactiveRecommendedPlayer(v5, v4, v7);
}

uint64_t __MRMediaRemoteGetProactiveRecommendedPlayer_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRMediaRemoteSetPlaybackStateForClient(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = [[MRPlayerPath alloc] initWithOrigin:a2 client:a1 player:0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MRMediaRemoteSetPlaybackStateForClient_block_invoke;
  v13[3] = &unk_1E769AD30;
  v14 = v9;
  v12 = v9;
  MRMediaRemoteSetPlaybackStateForPlayer(v11, a3, v10, v13);
}

void MRMediaRemoteSetPlaybackStateForPlayer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = MEMORY[0x1E695DF00];
  v8 = a4;
  v10 = a3;
  [v7 timeIntervalSinceReferenceDate];
  MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp(a1, a2, v10, v8, v9);
}

uint64_t __MRMediaRemoteSetPlaybackStateForClient_block_invoke(uint64_t result, CFErrorRef err)
{
  v2 = *(result + 32);
  if (v2)
  {
    if (err)
    {
      err = CFErrorGetCode(err);
    }

    v3 = *(v2 + 16);

    return v3(v2, err);
  }

  return result;
}

void MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp(uint64_t a1, uint64_t a2, void *a3, void *a4, double a5)
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v9 = MEMORY[0x1E69E96A0];
    v11 = MEMORY[0x1E69E96A0];
  }

  v12 = +[MRNowPlayingOriginClientManager sharedManager];
  v13 = [v12 playerClientForPlayerPath:a1];

  v14 = [v13 playerPath];
  v15 = [v14 origin];
  v16 = [v15 isLocal];

  if (!v16)
  {
    goto LABEL_11;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp_block_invoke;
  block[3] = &unk_1E769A228;
  v35 = @"com.apple.mediaremote.set-playback-state";
  if (MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp_entitlementOnceToken != -1)
  {
    dispatch_once(&MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp_entitlementOnceToken, block);
  }

  if (MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp_allowListOnceToken != -1)
  {
    MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp_cold_1();
  }

  v17 = [MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp_entitlements objectForKeyedSubscript:@"com.apple.mediaremote.set-playback-state"];
  if ([v17 BOOLValue])
  {

LABEL_11:
    v21 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:a5];
    [v13 updatePlaybackState:a2 date:v21];

    v22 = MRGetSharedService();
    v23 = [v13 playerPath];
    MRMediaRemoteServiceSetPlaybackState(v22, v23, a2, v9, v10, a5);
LABEL_12:

    goto LABEL_13;
  }

  v18 = MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp_allowList;
  v19 = [MEMORY[0x1E696AAE8] mainBundle];
  v20 = [v19 bundleIdentifier];
  LODWORD(v18) = [v18 containsObject:v20];

  if (v18)
  {
    goto LABEL_11;
  }

  v24 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp_cold_2(v24, v25, v26, v27, v28, v29, v30, v31);
  }

  if (v10)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp_block_invoke_612;
    v32[3] = &unk_1E769AD58;
    v33 = v10;
    dispatch_async(v9, v32);
    v23 = v33;
    goto LABEL_12;
  }

LABEL_13:
}

void __MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp_block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *(a1 + 32);
  v1 = MRMediaRemoteCopyEntitlements([MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1]);
  v2 = MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp_entitlements;
  MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp_entitlements = v1;

  v3 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp_block_invoke_2()
{
  v7[5] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  v7[0] = v1;
  v2 = MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
  v7[1] = v2;
  v7[2] = @"com.apple.SessionTrackerApp";
  v7[3] = @"com.apple.iBooks";
  v7[4] = @"com.apple.NanoBooks";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v4 = [v0 initWithArray:{v3, v7[0]}];
  v5 = MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp_allowList;
  MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp_allowList = v4;

  v6 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp_block_invoke_612(uint64_t a1)
{
  v1 = *(a1 + 32);
  Error = MRMediaRemoteCreateError(3);
  (*(v1 + 16))(v1, Error);
}

void MRMediaRemoteGetMediaAppIsInstalled(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    MRMediaRemoteGetMediaAppIsInstalled_cold_1(a1, v5, v6, v7, v8, v9, v10, v11);
  }

  v4[2](v4, 0);
}

BOOL MRMediaRemoteIsBooksAppInstalled()
{
  v0 = MRGetSharedService();

  return MRMediaRemoteServiceIsBooksAppInstalled(v0);
}

uint64_t MRMediaRemoteIsMediaAppInstalled(uint64_t a1)
{
  v2 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    MRMediaRemoteGetMediaAppIsInstalled_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  return 0;
}

void MRMediaRemoteRegisterForNowPlayingNotifications(void *a1)
{
  v1 = a1;
  v3 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v2 = [v3 notificationClient];
  [v2 registerForNowPlayingNotificationsWithQueue:v1];
}

void MRMediaRemoteUnregisterForNowPlayingNotifications()
{
  v1 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v0 = [v1 notificationClient];
  [v0 unregisterForNowPlayingNotifications];
}

uint64_t MRMediaRemoteCopyNowPlayingNotifications()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[MRNotificationClient nowPlayingNotifications];
  v2 = [v1 allObjects];
  v3 = [v2 copy];

  objc_autoreleasePoolPop(v0);
  return v3;
}

void MRMediaRemoteSetWantsWakingNowPlayingNotifications(int a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[MRPlayerPath anyPlayerPath];
  v8 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v9 = [v8 notificationClient];
  if (a1)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __MRMediaRemoteSetWantsWakingNowPlayingNotifications_block_invoke;
    v15[3] = &unk_1E769AD80;
    v10 = &v16;
    v16 = v5;
    v11 = v5;
    [v9 registerForWakingNowPlayingNotificationsForPlayerPath:v7 replyQueue:v6 completion:v15];
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __MRMediaRemoteSetWantsWakingNowPlayingNotifications_block_invoke_2;
    v13[3] = &unk_1E769AD80;
    v10 = &v14;
    v14 = v5;
    v12 = v5;
    [v9 unregisterForWakingNowPlayingNotificationsForPlayerPath:v7 replyQueue:v6 completion:v13];
  }
}

uint64_t __MRMediaRemoteSetWantsWakingNowPlayingNotifications_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __MRMediaRemoteSetWantsWakingNowPlayingNotifications_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRMediaRemoteRequestVideoThumbnails(const void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = [[MRPlayerPath alloc] initWithOrigin:a2 client:a3 player:0];
  memcpy(__dst, a1, sizeof(__dst));
  MRMediaRemoteRequestVideoThumbnailsForPlayer(__dst, v11, v10, v9);
}

void MRMediaRemoteRequestVideoThumbnailsForPlayer(const void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  if (!v7)
  {
    v7 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
  }

  v9 = a4;
  v10 = MRGetSharedService();
  memcpy(v11, a1, sizeof(v11));
  MRMediaRemoteServiceRequestVideoThumbnails(v10, a2, v11, v7, v9);
}

void MRMediaRemoteRequestAudioAmplitudeSamples(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = [[MRPlayerPath alloc] initWithOrigin:a2 client:a3 player:0];
  MRMediaRemoteRequestAudioAmplitudeSamplesForPlayer(a1, v11, v10, v9);
}

void MRMediaRemoteRequestAudioAmplitudeSamplesForPlayer(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a3;
  if (!v10)
  {
    v10 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = a4;
  v9 = MRGetSharedService();
  MRMediaRemoteServiceRequestAudioAmplitudeSamples(v9, a2, a1, v10, v8);
}

__CFString *MRMediaRemoteCopyClientVisibilityDescription(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E769AE08[a1];
  }
}

void MRMediaRemoteSetVideoThumbnailsRequestCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  MRMediaRemoteSetVideoThumbnailsRequestCallbackForPlayer(v4, v3);
}

void MRMediaRemoteSetVideoThumbnailsRequestCallbackForPlayer(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v4 playerClientForPlayerPath:a1];

  v5 = [v6 clientCallbacks];
  [v5 setVideoThumbnailsCallback:v3];
}

void MRMediaRemoteSetAudioAmplitudeSamplesRequestCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  MRMediaRemoteSetAudioAmplitudeSamplesRequestCallbackForPlayer(v4, v3);
}

void MRMediaRemoteSetAudioAmplitudeSamplesRequestCallbackForPlayer(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v4 playerClientForPlayerPath:a1];

  v5 = [v6 clientCallbacks];
  [v5 setAudioAmplitudeSamplesCallback:v3];
}

BOOL MRMediaRemoteNowPlayingBless()
{
  v0 = MRGetSharedService();

  return MRMediaRemoteServiceRequestBless(v0);
}

BOOL MRMediaRemoteNowPlayingWakePlayerServiceProcess()
{
  v0 = MRGetSharedService();

  return MRMediaRemoteServiceWakePlayerServiceProcess(v0);
}

uint64_t __MediaExperienceLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaExperienceLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MRRemoveOutputDevicesMessageProtobufReadFrom(void *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        if (v13)
        {
          [a1 addOutputDeviceUIDs:v13];
        }

        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v13 = a1[1];
    a1[1] = v14;
LABEL_22:

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

_MRVideoThumbnailProtobuf *MRVideoThumbnailCreate(uint64_t a1, double a2)
{
  v4 = objc_alloc_init(_MRVideoThumbnailProtobuf);
  [(_MRVideoThumbnailProtobuf *)v4 setImageData:a1];
  [(_MRVideoThumbnailProtobuf *)v4 setTime:a2];
  return v4;
}

uint64_t MRVideoThumbnailCreateFromExternalRepresentation(uint64_t a1)
{
  v2 = [_MRVideoThumbnailProtobuf alloc];

  return [(_MRVideoThumbnailProtobuf *)v2 initWithData:a1];
}

uint64_t MRVideoThumbnailCreateExternalRepresentation(void *a1)
{
  v1 = [a1 data];
  v2 = [v1 copy];

  return v2;
}

void sub_1A28DE370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A28DFE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A28E078C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINPrivatePlayMediaIntentDataClass_block_invoke(uint64_t a1)
{
  IntentsLibrary();
  result = objc_getClass("INPrivatePlayMediaIntentData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINPrivatePlayMediaIntentDataClass_block_invoke_cold_1();
  }

  getINPrivatePlayMediaIntentDataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void IntentsLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!IntentsLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __IntentsLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E769B0F8;
    v3 = 0;
    IntentsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IntentsLibraryCore_frameworkLibrary)
  {
    IntentsLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __IntentsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IntentsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getINMediaItemClass_block_invoke(uint64_t a1)
{
  IntentsLibrary();
  result = objc_getClass("INMediaItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINMediaItemClass_block_invoke_cold_1();
  }

  getINMediaItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getINInteractionClass_block_invoke(uint64_t a1)
{
  IntentsLibrary();
  result = objc_getClass("INInteraction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINInteractionClass_block_invoke_cold_1();
  }

  getINInteractionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getINCExtensionConnectionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IntentsCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IntentsCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E769B110;
    v6 = 0;
    IntentsCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IntentsCoreLibraryCore_frameworkLibrary)
  {
    __getINCExtensionConnectionClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("INCExtensionConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINCExtensionConnectionClass_block_invoke_cold_1();
  }

  getINCExtensionConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IntentsCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IntentsCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getINPlayMediaIntentResponseClass_block_invoke(uint64_t a1)
{
  IntentsLibrary();
  result = objc_getClass("INPlayMediaIntentResponse");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINPlayMediaIntentResponseClass_block_invoke_cold_1();
  }

  getINPlayMediaIntentResponseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

_MRPlaybackQueueCapabilitiesProtobuf *_MRPlaybackQueueCapabilitiesCreateProtobuf(char a1)
{
  v2 = objc_alloc_init(_MRPlaybackQueueCapabilitiesProtobuf);
  v3 = v2;
  if ((a1 & 2) != 0)
  {
    [(_MRPlaybackQueueCapabilitiesProtobuf *)v2 setRequestByRange:1];
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  [(_MRPlaybackQueueCapabilitiesProtobuf *)v3 setRequestByIdentifiers:1];
  if ((a1 & 8) != 0)
  {
LABEL_4:
    [(_MRPlaybackQueueCapabilitiesProtobuf *)v3 setRequestByRange:1];
  }

LABEL_5:

  return v3;
}

uint64_t _MRPlaybackQueueCapabilitiesFromProto(void *a1)
{
  v1 = a1;
  if ([v1 requestByRange])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  if ([v1 requestByIdentifiers])
  {
    v3 = v2 | 4;
  }

  else
  {
    v3 = v2;
  }

  v4 = [v1 requestByRequest];

  if (v4)
  {
    return v3 | 8;
  }

  else
  {
    return v3;
  }
}

uint64_t MRPlaybackQueueCapabilitiesFromExternalRepresentation(void *a1)
{
  v1 = a1;
  v2 = [[_MRPlaybackQueueCapabilitiesProtobuf alloc] initWithData:v1];

  v3 = _MRPlaybackQueueCapabilitiesFromProto(v2);
  return v3;
}

id MRPlaybackQueueCapabilitiesCreateExternalRepresentation(char a1)
{
  v1 = _MRPlaybackQueueCapabilitiesCreateProtobuf(a1);
  v2 = [v1 data];

  return v2;
}

void sub_1A28E267C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void MRMediaRemoteGetSupportedCommandsForApp(MRClient *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v7 = a4;
  if (a1)
  {
    a1 = [[MRClient alloc] initWithProcessIdentifier:0 bundleIdentifier:a1];
  }

  MRMediaRemoteGetSupportedCommandsForClient(a1, a2, v8, v7);
}

void MRMediaRemoteGetSupportedCommandsForClient(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [[MRPlayerPath alloc] initWithOrigin:a2 client:a1 player:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MRMediaRemoteGetSupportedCommandsForClient_block_invoke;
  v11[3] = &unk_1E769B228;
  v12 = v7;
  v10 = v7;
  MRMediaRemoteGetSupportedCommandsForPlayer(v9, v8, v11);
}

uint64_t __MRMediaRemoteGetSupportedCommandsForClient_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRMediaRemoteGetProxiableSupportedCommandsForPlayer(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MRMediaRemoteGetProxiableSupportedCommandsForPlayer_block_invoke;
  v7[3] = &unk_1E769B228;
  v8 = v5;
  v6 = v5;
  MRMediaRemoteGetSupportedCommandsForPlayer(a1, a2, v7);
}

void __MRMediaRemoteGetProxiableSupportedCommandsForPlayer_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_11];
  v6 = [a2 filteredArrayUsingPredicate:?];
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6, a3);
  }
}

uint64_t __MRMediaRemoteGetProxiableSupportedCommandsForPlayer_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 options];
  v3 = [v2 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoDoNotProxy"];

  LODWORD(v2) = [v3 BOOLValue];
  return v2 ^ 1;
}

void MRMediaRemoteGetSyncableSupportedCommandsForPlayer(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MRMediaRemoteGetSyncableSupportedCommandsForPlayer_block_invoke;
  v7[3] = &unk_1E769B228;
  v8 = v5;
  v6 = v5;
  MRMediaRemoteGetSupportedCommandsForPlayer(a1, a2, v7);
}

void __MRMediaRemoteGetSyncableSupportedCommandsForPlayer_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_49];
  v6 = [a2 filteredArrayUsingPredicate:?];
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6, a3);
  }
}

uint64_t __MRMediaRemoteGetSyncableSupportedCommandsForPlayer_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 options];
  v3 = [v2 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoDoNotSync"];

  LODWORD(v2) = [v3 BOOLValue];
  return v2 ^ 1;
}

void MRMediaRemoteCopySupportedCommandsForOrigin(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __MRMediaRemoteCopySupportedCommandsForOrigin_block_invoke;
    v7[3] = &unk_1E769B2E8;
    v8 = v5;
    MRMediaRemoteGetSupportedCommandsForApp(0, a1, a2, v7);
  }
}

uint64_t __MRMediaRemoteCopySupportedCommandsForOrigin_block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void MRMediaRemoteRequestPendingCommands(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MRPlayerPath alloc];
  v8 = +[MROrigin localOrigin];
  v9 = +[MRClient localClient];
  v10 = [(MRPlayerPath *)v7 initWithOrigin:v8 client:v9 player:a1];

  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [MEMORY[0x1E696AFB0] UUID];
  v13 = [v12 UUIDString];

  v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"requestPendingCommands", v13];
  v15 = v14;
  if (v10)
  {
    [v14 appendFormat:@" for %@", v10];
  }

  v16 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v15;
    _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __MRMediaRemoteRequestPendingCommands_block_invoke;
  v37[3] = &unk_1E769B310;
  v17 = v10;
  v38 = v17;
  v18 = v13;
  v39 = v18;
  v19 = v11;
  v40 = v19;
  v20 = v6;
  v42 = v20;
  v21 = v5;
  v41 = v21;
  v22 = MEMORY[0x1A58E3570](v37);
  v23 = +[MRNowPlayingOriginClientManager sharedManager];
  v24 = [v23 clientForPlayerPath:v17];

  if ([v24 canBeNowPlayingForPlayer:v17])
  {
    v25 = _MRLogForCategory(2uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      MRMediaRemoteRequestPendingCommands_cold_1(v25);
    }

    v26 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:2 description:@"Cannot call 'RequestPendingCommands' if CanBeNowPlaying=YES"];
    (v22)[2](v22, 0, v26);
  }

  else
  {
    v26 = MRCreateXPCMessage(0x400000000000006uLL);
    MRAddPlayerPathToXPCMessage(v26, v17);
    v27 = +[MRMediaRemoteServiceClient sharedServiceClient];
    v28 = [v27 service];
    [v28 mrXPCConnection];
    v34 = v24;
    v29 = v19;
    v30 = v20;
    v32 = v31 = v18;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __MRMediaRemoteRequestPendingCommands_block_invoke_60;
    v35[3] = &unk_1E769B338;
    v36 = v22;
    [v32 sendMessage:v26 queue:v21 reply:v35];

    v18 = v31;
    v20 = v30;
    v19 = v29;
    v24 = v34;
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteRequestPendingCommands_block_invoke(void *a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v14 = MRMediaRemoteCopyCommandsDescription(v5);

    v15 = a1[4];
    v8 = _MRLogForCategory(0xAuLL);
    v16 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v15)
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v17 = a1[5];
        v18 = MRMediaRemoteCopyCommandsDescription(v5);
        v19 = a1[4];
        v20 = MEMORY[0x1E695DF00];
        v12 = v18;
        v21 = [v20 date];
        [v21 timeIntervalSinceDate:a1[6]];
        v23 = v22;

        *buf = 138544386;
        v47 = @"requestPendingCommands";
        v48 = 2114;
        v49 = v17;
        v50 = 2112;
        v51 = v18;
        v52 = 2114;
        v53 = v19;
        v54 = 2048;
        v55 = v23;
        v24 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v25 = v8;
        v26 = 52;
      }

      else
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v33 = a1[5];
        v34 = MRMediaRemoteCopyCommandsDescription(v5);
        v35 = MEMORY[0x1E695DF00];
        v12 = v34;
        v21 = [v35 date];
        [v21 timeIntervalSinceDate:a1[6]];
        v37 = v36;

        *buf = 138544130;
        v47 = @"requestPendingCommands";
        v48 = 2114;
        v49 = v33;
        v50 = 2112;
        v51 = v34;
        v52 = 2048;
        v53 = v37;
        v24 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v25 = v8;
        v26 = 42;
      }

      _os_log_impl(&dword_1A2860000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    }

    else
    {
      if (v15)
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v28 = a1[4];
        v27 = a1[5];
        v12 = [MEMORY[0x1E695DF00] date];
        [v12 timeIntervalSinceDate:a1[6]];
        *buf = 138544130;
        v47 = @"requestPendingCommands";
        v48 = 2114;
        v49 = v27;
        v50 = 2114;
        v51 = v28;
        v52 = 2048;
        v53 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v38 = a1[5];
        v12 = [MEMORY[0x1E695DF00] date];
        [v12 timeIntervalSinceDate:a1[6]];
        *buf = 138543874;
        v47 = @"requestPendingCommands";
        v48 = 2114;
        v49 = v38;
        v50 = 2048;
        v51 = v39;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    }

    goto LABEL_20;
  }

  v7 = a1[4];
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    v11 = a1[4];
    v10 = a1[5];
    v12 = [MEMORY[0x1E695DF00] date];
    [v12 timeIntervalSinceDate:a1[6]];
    *buf = 138544386;
    v47 = @"requestPendingCommands";
    v48 = 2114;
    v49 = v10;
    v50 = 2114;
    v51 = v6;
    v52 = 2114;
    v53 = v11;
    v54 = 2048;
    v55 = v13;
    _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v9)
  {
    __MRMediaRemoteRequestPendingCommands_block_invoke_cold_1(a1);
  }

LABEL_21:

  v40 = a1[8];
  if (v40)
  {
    v41 = a1[7];
    v45 = v40;
    v43 = v5;
    v44 = v6;
    msv_dispatch_async_on_queue();
  }

  v42 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteRequestPendingCommands_block_invoke_60(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MRCreatePropertyListFromXPCMessage(a2, "MRXPC_COMMAND_KEY");
  (*(*(a1 + 32) + 16))();
}

void *MRMediaRemoteCopyPendingCommands(uint64_t a1, MRPlayerPath **a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = [MRPlayerPath alloc];
  v5 = +[MROrigin localOrigin];
  v6 = +[MRClient localClient];
  v7 = [(MRPlayerPath *)v4 initWithOrigin:v5 client:v6 player:a1];

  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];

  v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"copyPendingCommands", v10];
  v12 = v11;
  if (v7)
  {
    [(__CFString *)v11 appendFormat:@" for %@", v7];
  }

  v13 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v54 = v12;
    _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v14 = +[MRNowPlayingOriginClientManager sharedManager];
  v15 = [v14 clientForPlayerPath:v7];

  v51 = v7;
  if ([v15 canBeNowPlayingForPlayer:v7])
  {
    v16 = _MRLogForCategory(2uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      MRMediaRemoteCopyPendingCommands_cold_1(v16);
    }

    v17 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:2 description:@"Cannot call 'CopyPendingCommands' if CanBeNowPlayingA=YES"];
    v18 = 0;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v27 = MRCreateXPCMessage(0x400000000000006uLL);
    MRAddPlayerPathToXPCMessage(v27, v7);
    v28 = +[MRMediaRemoteServiceClient sharedServiceClient];
    [v28 service];
    v29 = v15;
    v30 = v10;
    v32 = v31 = a2;
    [v32 mrXPCConnection];
    v34 = v33 = v8;
    v52 = 0;
    v35 = [v34 sendSyncMessage:v27 error:&v52];
    v17 = v52;

    v8 = v33;
    a2 = v31;
    v10 = v30;
    v15 = v29;

    v18 = MRCreatePropertyListFromXPCMessage(v35, "MRXPC_COMMAND_KEY");
    if (v17)
    {
LABEL_9:
      v19 = _MRLogForCategory(0xAuLL);
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      v21 = v51;
      if (v51)
      {
        if (!v20)
        {
          goto LABEL_29;
        }

        v22 = [MEMORY[0x1E695DF00] date];
        [(MRPlayerPath *)v22 timeIntervalSinceDate:v8];
        *buf = 138544386;
        v54 = @"copyPendingCommands";
        v55 = 2114;
        v56 = v10;
        v57 = 2114;
        v58 = v17;
        v59 = 2114;
        v60 = v51;
        v61 = 2048;
        v62 = v23;
        v24 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
        v25 = v19;
        v26 = 52;
      }

      else
      {
        if (!v20)
        {
          goto LABEL_29;
        }

        v22 = [MEMORY[0x1E695DF00] date];
        [(MRPlayerPath *)v22 timeIntervalSinceDate:v8];
        *buf = 138544130;
        v54 = @"copyPendingCommands";
        v55 = 2114;
        v56 = v10;
        v57 = 2114;
        v58 = v17;
        v59 = 2048;
        v60 = v41;
        v24 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
        v25 = v19;
        v26 = 42;
      }

      _os_log_error_impl(&dword_1A2860000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
LABEL_28:

      goto LABEL_29;
    }
  }

  v36 = MRMediaRemoteCopyCommandsDescription(v18);

  v19 = _MRLogForCategory(0xAuLL);
  v37 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  v21 = v51;
  if (!v36)
  {
    if (v51)
    {
      if (!v37)
      {
        goto LABEL_29;
      }

      v22 = [MEMORY[0x1E695DF00] date];
      [(MRPlayerPath *)v22 timeIntervalSinceDate:v8];
      *buf = 138544130;
      v54 = @"copyPendingCommands";
      v55 = 2114;
      v56 = v10;
      v57 = 2114;
      v58 = v51;
      v59 = 2048;
      v60 = v42;
      v43 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v44 = v19;
      v45 = 42;
    }

    else
    {
      if (!v37)
      {
        goto LABEL_29;
      }

      v22 = [MEMORY[0x1E695DF00] date];
      [(MRPlayerPath *)v22 timeIntervalSinceDate:v8];
      *buf = 138543874;
      v54 = @"copyPendingCommands";
      v55 = 2114;
      v56 = v10;
      v57 = 2048;
      v58 = v48;
      v43 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v44 = v19;
      v45 = 32;
    }

    _os_log_impl(&dword_1A2860000, v44, OS_LOG_TYPE_DEFAULT, v43, buf, v45);
    goto LABEL_28;
  }

  if (!v51)
  {
    if (!v37)
    {
      goto LABEL_29;
    }

    v22 = MRMediaRemoteCopyCommandsDescription(v18);
    v46 = [MEMORY[0x1E695DF00] date];
    [v46 timeIntervalSinceDate:v8];
    *buf = 138544130;
    v54 = @"copyPendingCommands";
    v55 = 2114;
    v56 = v10;
    v57 = 2112;
    v58 = v22;
    v59 = 2048;
    v60 = v47;
    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);

    goto LABEL_28;
  }

  if (v37)
  {
    v38 = MRMediaRemoteCopyCommandsDescription(v18);
    v39 = [MEMORY[0x1E695DF00] date];
    [v39 timeIntervalSinceDate:v8];
    *buf = 138544386;
    v54 = @"copyPendingCommands";
    v55 = 2114;
    v56 = v10;
    v57 = 2112;
    v58 = v38;
    v59 = 2114;
    v60 = v51;
    v61 = 2048;
    v62 = v40;
    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds", buf, 0x34u);
  }

LABEL_29:

  if (a2)
  {
    *a2 = v17;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v18;
}

void MRMediaRemoteSetSupportedCommandsForClient(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = [[MRPlayerPath alloc] initWithOrigin:a3 client:a2 player:0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MRMediaRemoteSetSupportedCommandsForClient_block_invoke;
  v13[3] = &unk_1E769AD30;
  v14 = v9;
  v12 = v9;
  MRMediaRemoteSetSupportedCommandsForPlayer(a1, v11, v10, v13);
}

uint64_t __MRMediaRemoteSetSupportedCommandsForClient_block_invoke(uint64_t result, CFErrorRef err)
{
  v2 = *(result + 32);
  if (v2)
  {
    if (err)
    {
      err = CFErrorGetCode(err);
    }

    v3 = *(v2 + 16);

    return v3(v2, err);
  }

  return result;
}

uint64_t __MRMediaRemoteSetSupportedCommandsForPlayer_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRMediaRemoteClearDefaultSupportedCommandsForApp(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [[MRClient alloc] initWithBundleIdentifier:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __MRMediaRemoteClearDefaultSupportedCommandsForApp_block_invoke;
  v10[3] = &unk_1E769AD30;
  v11 = v5;
  v9 = v5;
  MRMediaRemoteSetDefaultSupportedCommandsForClient(v8, 0, 0, v6, v10);
}

uint64_t __MRMediaRemoteClearDefaultSupportedCommandsForApp_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t MRMediaRemoteSupportsCommand(void *a1, int a2)
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
        if ([v8 command] == a2)
        {
          v9 = [v8 isEnabled];
          goto LABEL_11;
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

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _MRGetVolumeMessageProtobufReadFrom(uint64_t a1, void *a2)
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

uint64_t _MRPlaybackSessionRequestProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
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
        switch(v13)
        {
          case 6:
            v23 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
            objc_storeStrong((a1 + 16), v23);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v23->super.super.isa, a2))
            {
LABEL_49:

              return 0;
            }

            goto LABEL_44;
          case 7:
            v23 = objc_alloc_init(_MRDictionaryProtobuf);
            objc_storeStrong((a1 + 8), v23);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !_MRDictionaryProtobufReadFrom(v23, a2))
            {
              goto LABEL_49;
            }

LABEL_44:
            PBReaderRecallMark();

            goto LABEL_47;
          case 8:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v27) = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v27 & 0x7F) << v16;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_46;
              }
            }

            v22 = (v18 != 0) & ~[a2 hasError];
LABEL_46:
            *(a1 + 48) = v22;
            goto LABEL_47;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 32;
            goto LABEL_41;
          case 2:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_41;
          case 5:
            v14 = PBReaderReadString();
            v15 = 40;
LABEL_41:
            v24 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A28ED874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A28EE264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _MRGameControllerDigitizerProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v38) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 36) |= 8u;
          while (1)
          {
            LOBYTE(v38) = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v38 & 0x7F) << v26;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              LOBYTE(v32) = 0;
              goto LABEL_53;
            }
          }

          v32 = (v28 != 0) & ~[a2 hasError];
LABEL_53:
          *(a1 + 32) = v32;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_34:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_59;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v38) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v38 & 0x7F) << v16;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_51;
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

LABEL_51:
          *(a1 + 8) = v22;
        }
      }

      else
      {
        if (v13 == 1)
        {
          *(a1 + 36) |= 2u;
          v38 = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v38 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v34 = v38;
          v35 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_34;
          }

          *(a1 + 36) |= 4u;
          v38 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v38 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v34 = v38;
          v35 = 24;
        }

        *(a1 + v35) = v34;
      }

LABEL_59:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A28F09FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(v10);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_1A28F124C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_sync_exit(v16);
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A28F147C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_sync_exit(v16);
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A28F16AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_sync_exit(v16);
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A28F18DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_sync_exit(v16);
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _MRVirtualTouchDeviceDescriptorProtobufReadFrom(uint64_t a1, void *a2)
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
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          *(a1 + 20) |= 2u;
          v39 = 0;
          v30 = [a2 position] + 4;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 4, v31 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v39 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v34 = v39;
          v35 = 12;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_34:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_58;
          }

          *(a1 + 20) |= 1u;
          v38 = 0;
          v21 = [a2 position] + 4;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 4, v22 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v38 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v34 = v38;
          v35 = 8;
        }

        *(a1 + v35) = v34;
      }

      else
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 20) |= 4u;
          while (1)
          {
            v42 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v42 & 0x7F) << v24;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_51;
            }
          }

          v20 = (v26 != 0) & ~[a2 hasError];
LABEL_51:
          v32 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_34;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 8u;
          while (1)
          {
            v41 = 0;
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
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_49;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_49:
          v32 = 17;
        }

        *(a1 + v32) = v20;
      }

LABEL_58:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRSetStateMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v30) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
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
        if (v13 <= 8)
        {
          if (v13 == 6)
          {
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 88) |= 2u;
            while (1)
            {
              LOBYTE(v30) = 0;
              v22 = [a2 position] + 1;
              if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
              {
                v24 = [a2 data];
                [v24 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v21 |= (v30 & 0x7F) << v19;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v11 = v20++ >= 9;
              if (v11)
              {
                v25 = 0;
                goto LABEL_70;
              }
            }

            if ([a2 hasError])
            {
              v25 = 0;
            }

            else
            {
              v25 = v21;
            }

LABEL_70:
            *(a1 + 56) = v25;
            goto LABEL_63;
          }

          if (v13 == 8)
          {
            v18 = objc_alloc_init(_MRPlaybackQueueCapabilitiesProtobuf);
            objc_storeStrong((a1 + 48), v18);
            v30 = 0;
            v31 = 0;
            if (!PBReaderPlaceMark() || !_MRPlaybackQueueCapabilitiesProtobufReadFrom(v18, a2))
            {
LABEL_74:

              return 0;
            }

            goto LABEL_62;
          }
        }

        else
        {
          switch(v13)
          {
            case 9:
              v18 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
              objc_storeStrong((a1 + 64), v18);
              v30 = 0;
              v31 = 0;
              if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v18->super.super.isa, a2))
              {
                goto LABEL_74;
              }

              goto LABEL_62;
            case 0xA:
              v18 = objc_alloc_init(_MRPlaybackQueueRequestProtobuf);
              objc_storeStrong((a1 + 72), v18);
              v30 = 0;
              v31 = 0;
              if (!PBReaderPlaceMark() || !_MRPlaybackQueueRequestProtobufReadFrom(v18, a2))
              {
                goto LABEL_74;
              }

              goto LABEL_62;
            case 0xB:
              *(a1 + 88) |= 1u;
              v30 = 0;
              v16 = [a2 position] + 8;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              *(a1 + 8) = v30;
              goto LABEL_63;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v18 = objc_alloc_init(_MRNowPlayingInfoProtobuf);
          objc_storeStrong((a1 + 32), v18);
          v30 = 0;
          v31 = 0;
          if (!PBReaderPlaceMark() || !_MRNowPlayingInfoProtobufReadFrom(v18, a2))
          {
            goto LABEL_74;
          }

          goto LABEL_62;
        }

        if (v13 == 2)
        {
          v18 = objc_alloc_init(_MRSupportedCommandsProtobuf);
          objc_storeStrong((a1 + 80), v18);
          v30 = 0;
          v31 = 0;
          if (!PBReaderPlaceMark() || !_MRSupportedCommandsProtobufReadFrom(v18, a2))
          {
            goto LABEL_74;
          }

          goto LABEL_62;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v18 = objc_alloc_init(_MRPlaybackQueueProtobuf);
            objc_storeStrong((a1 + 40), v18);
            v30 = 0;
            v31 = 0;
            if (!PBReaderPlaceMark() || !_MRPlaybackQueueProtobufReadFrom(v18, a2))
            {
              goto LABEL_74;
            }

LABEL_62:
            PBReaderRecallMark();

            goto LABEL_63;
          case 4:
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_59;
          case 5:
            v14 = PBReaderReadString();
            v15 = 24;
LABEL_59:
            v26 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_63;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_63:
      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A28F8250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

void sub_1A28F8438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A28F8614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A28FD394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTUNearbyDeviceHandleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUNearbyDeviceHandleClass_softClass;
  v7 = getTUNearbyDeviceHandleClass_softClass;
  if (!getTUNearbyDeviceHandleClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUNearbyDeviceHandleClass_block_invoke;
    v3[3] = &unk_1E769ADA8;
    v3[4] = &v4;
    __getTUNearbyDeviceHandleClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A28FDF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTUConversationManagerClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary();
  result = objc_getClass("TUConversationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTUConversationManagerClass_block_invoke_cold_1();
  }

  getTUConversationManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void TelephonyUtilitiesLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __TelephonyUtilitiesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E769BB98;
    v3 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    TelephonyUtilitiesLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getTUNeighborhoodActivityConduitClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary();
  result = objc_getClass("TUNeighborhoodActivityConduit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTUNeighborhoodActivityConduitClass_block_invoke_cold_1();
  }

  getTUNeighborhoodActivityConduitClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getTUNearbyDeviceHandleClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary();
  result = objc_getClass("TUNearbyDeviceHandle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTUNearbyDeviceHandleClass_block_invoke_cold_1();
  }

  getTUNearbyDeviceHandleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A28FFD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2900B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A290525C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2907194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromMRAVDistantExternalDeviceCallbackFlags(char a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"CustomData"];
  }

  if ([v3 count])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [v4 stringWithFormat:@"(%@)", v5];
  }

  else
  {
    v6 = @"(None)";
  }

  return v6;
}

__CFString *NSStringFromMRAVDistantExternalDeviceNotificationFlags(char a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"NowPlaying"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"Volume"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  [v3 addObject:@"OutputDevices"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_12:
  [v3 addObject:@"EndpointChange"];
  if ((a1 & 0x10) != 0)
  {
LABEL_6:
    [v3 addObject:@"SystemEndpoint"];
  }

LABEL_7:
  if ([v3 count])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [v4 stringWithFormat:@"(%@)", v5];
  }

  else
  {
    v6 = @"(None)";
  }

  return v6;
}

uint64_t _MRPlaybackSessionMigrateBeginMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(_MRPlaybackSessionRequestProtobuf);
        objc_storeStrong((a1 + 16), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_MRPlaybackSessionRequestProtobufReadFrom(v13, a2))
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
    objc_storeStrong((a1 + 8), v13);
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

uint64_t MRAVAirPlaySecuritySettingsGetSecurityMode(void *a1)
{
  LODWORD(result) = [a1 securityType];
  if ((result - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_MRAVAirPlaySecuritySettingsProtobuf *MRAVAirPlaySecuritySettingsCreate(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(_MRAVAirPlaySecuritySettingsProtobuf);
  [(_MRAVAirPlaySecuritySettingsProtobuf *)v4 setPassword:a1];
  if (a2 <= 4)
  {
    [(_MRAVAirPlaySecuritySettingsProtobuf *)v4 setSecurityType:a2];
  }

  return v4;
}

uint64_t MRAVAirPlaySecuritySettingsCreateFromExternalRepresentation(uint64_t a1)
{
  v2 = [_MRAVAirPlaySecuritySettingsProtobuf alloc];

  return [(_MRAVAirPlaySecuritySettingsProtobuf *)v2 initWithData:a1];
}

void sub_1A290B8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 224), 8);
  _Block_object_dispose((v49 - 176), 8);
  _Block_object_dispose((v49 - 128), 8);
  _Unwind_Resume(a1);
}

void _MRServiceLogReplyError()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1A58E38C0]();
  v1 = _MRLogForCategory(0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = v0;
    _os_log_impl(&dword_1A2860000, v1, OS_LOG_TYPE_DEFAULT, "MediaRemote reply error: %s", &v3, 0xCu);
  }

  if (v0)
  {
    free(v0);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteServiceDestroy(void *a1)
{
  v2 = a1;
  if ([v2 isRunning])
  {
    MRMediaRemoteServiceStop(v2);
  }

  *(v2 + 5) = 0;
  *(v2 + 24) = 0u;
  *(v2 + 8) = 0u;
  v1 = [v2 connection];
  xpc_connection_set_context(v1, 0);

  [v2 setConnection:0];
  [v2 setConnectionQueue:0];
  [v2 setClientCallbackQueue:0];
  [v2 setClientCallbackPriorityQueue:0];
  [v2 setBrowsableContentQueue:0];
  [v2 setVoiceInputQueue:0];
  [v2 setTelevisionQueue:0];
  [v2 setAgentQueue:0];
}

void MRMediaRemoteServiceStop(void *a1)
{
  v1 = a1;
  if ([v1 isRunning])
  {
    v2 = [v1 connection];
    xpc_connection_cancel(v2);

    [v1 setIsRunning:0];
  }

  else
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "Warning: Tried to stop a service that isn't running.", v4, 2u);
    }
  }
}

void __MRMediaRemoteServiceSetInvalidationHandler_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __MRMediaRemoteServiceSetInvalidationHandler_block_invoke_2;
    block[3] = &unk_1E769AD58;
    v6 = *(a1 + 32);
    dispatch_async(v4, block);
  }
}

void __MRMediaRemoteServiceSetResumeHandler_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[3])
    {
      v4 = _MRLogForCategory(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "Re-establishing recording endpoint.", buf, 2u);
      }

      MRMediaRemoteServiceSetVoiceRecordingEndpoint(*(a1 + 56), *(*(a1 + 32) + 24));
    }

    if (v3[4])
    {
      v5 = _MRLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "Re-establishing television endpoint.", v20, 2u);
      }

      v6 = *(a1 + 56);
      v7 = *(a1 + 32);
      v8 = v7[4];
      v9 = [v7 televisionQueue];
      MRMediaRemoteServiceSetTelevisionEndpoint(v6, v8, v9);
    }

    if (v3[5])
    {
      v10 = _MRLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "Re-establishing agent endpoint.", v19, 2u);
      }

      v11 = *(a1 + 56);
      v12 = *(a1 + 32);
      v13 = v12[5];
      v14 = [v12 agentQueue];
      MRMediaRemoteServiceSetAgentEndpoint(v11, v13, v14);
    }

    v15 = [v3 uiServiceEndpoint];

    if (v15)
    {
      v16 = _MRLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Re-establishing UI service endpoint.", v18, 2u);
      }

      v17 = [v3 uiServiceEndpoint];
      [v3 setUIServiceRelayEndpoint:v17];
    }

    (*(*(a1 + 40) + 16))();
  }
}

void MRMediaRemoteServiceSetVoiceRecordingEndpoint(void *a1, uint64_t a2)
{
  a1[3] = a2;
  v3 = a1;
  message = MRCreateXPCMessage(0x900000000000006uLL);
  xpc_dictionary_set_BOOL(message, "MRXPC_VOICE_RECORDING_ENDPOINT_AVAILABLE_KEY", a2 != 0);
  v4 = [v3 connection];

  xpc_connection_send_message(v4, message);
}

void MRMediaRemoteServiceSetTelevisionEndpoint(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _MRLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "Setting television endpoint", v10, 2u);
  }

  a1[4] = a2;
  v7 = a1;
  [v7 setTelevisionQueue:v5];

  v8 = MRCreateXPCMessage(0x600000000000009uLL);
  xpc_dictionary_set_BOOL(v8, "MRXPC_TELEVISION_ENDPOINT_AVAILABLE_KEY", a2 != 0);
  v9 = [v7 connection];

  xpc_connection_send_message(v9, v8);
}

void MRMediaRemoteServiceSetAgentEndpoint(void *a1, uint64_t a2, uint64_t a3)
{
  a1[5] = a2;
  v5 = a1;
  [v5 setAgentQueue:a3];
  message = MRCreateXPCMessage(0xA00000000000003uLL);
  xpc_dictionary_set_BOOL(message, "MRXPC_AGENT_ENDPOINT_AVAILABLE_KEY", a2 != 0);
  v6 = [v5 connection];

  xpc_connection_send_message(v6, message);
}

void MRMediaRemoteServiceSendCommand(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    v8 = *(a2 + 8);
    v9 = a3;
    v10 = [v8 objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
    v11 = a1;
    v12 = MRCreateXPCMessage(0x400000000000001uLL);
    MRAddSendCommandToXPCMessage(v12, a2);
    v13 = _MRLogForCategory(2uLL);
    v14 = [v10 hash];
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v14;
      if (os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A2860000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SendCommandXPCToDaemon", &unk_1A2BB0121, buf, 2u);
      }
    }

    v16 = [v11 connection];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __MRMediaRemoteServiceSendCommand_block_invoke;
    v18[3] = &unk_1E769C4A8;
    v19 = v10;
    v20 = v7;
    v17 = v10;
    xpc_connection_send_message_with_reply(v16, v12, v9, v18);
  }
}

void __MRMediaRemoteServiceSendCommand_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory(2uLL);
  v5 = [*(a1 + 32) hash];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2860000, v4, OS_SIGNPOST_INTERVAL_END, v6, "SendCommandXPCResultFromDaemon", &unk_1A2BB0121, v9, 2u);
    }
  }

  v7 = MRCreateCommandResultFromXPCMessage(v3);

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v7);
  }

  kdebug_trace();
}

void MRMediaRemoteServiceBroadcastCommand(void *a1, void **a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x400000000000002uLL);
  MRAddSendCommandToXPCMessage(v10, a2);
  v11 = [v9 connection];

  if (v8)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __MRMediaRemoteServiceBroadcastCommand_block_invoke;
    handler[3] = &unk_1E769C4D0;
    v13 = v8;
    xpc_connection_send_message_with_reply(v11, v10, v7, handler);
  }

  else
  {
    xpc_connection_send_message(v11, v10);

    kdebug_trace();
  }
}

void __MRMediaRemoteServiceBroadcastCommand_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  xpc_dictionary_get_uint64(v3, "MRXPC_COMMAND_SEND_ERROR_KEY");
  v5 = MRCreateDataFromXPCMessage(v3, "MRXPC_COMMAND_STATUSES_DATA_KEY");

  v4 = MRCreateArrayFromData(v5, &__block_literal_global_164);
  (*(*(a1 + 32) + 16))();
  kdebug_trace();
}

_MRSendCommandResultMessageProtobuf *__MRMediaRemoteServiceBroadcastCommand_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[_MRSendCommandResultMessageProtobuf alloc] initWithData:v2];

  return v3;
}

void MRMediaRemoteServiceGetSupportedCommands(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  kdebug_trace();
  v10 = a1;
  v11 = MRCreateXPCMessage(0x200000000000031uLL);
  MRAddPlayerPathToXPCMessage(v11, v9);

  v12 = [v10 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetSupportedCommands_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = v7;
  v13 = v7;
  xpc_connection_send_message_with_reply(v12, v11, v8, handler);
}

void __MRMediaRemoteServiceGetSupportedCommands_block_invoke(uint64_t a1, void *a2)
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
    v6 = MRCreateSupportedCommandsFromXPCMessage(v8);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6, Error);
  }

  kdebug_trace();
}

uint64_t __MRMediaRemoteServiceSetSupportedCommands_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  return kdebug_trace();
}

void MRMediaRemoteServicePrewarmMediaControlsCommand(void *a1, unsigned int a2, void *a3, void *a4)
{
  v7 = a4;
  kdebug_trace();
  v8 = a1;
  xdict = MRCreateXPCMessage(0x400000000000003uLL);
  MRAddDataToXPCMessage(xdict, a3, "MRXPC_MEDIA_CONTROLS_CONFIGURATION_KEY");
  xpc_dictionary_set_value(xdict, "MRXPC_MEDIA_CONTROLS_XPC_ENDPOINT_KEY", v7);

  xpc_dictionary_set_int64(xdict, "MRXPC_MEDIA_CONTROLS_STYLE_KEY", a2);
  v9 = [v8 connection];

  xpc_connection_send_message(v9, xdict);
  kdebug_trace();
}

void MRMediaRemoteServicePresentMediaControlsCommand(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  v7 = a1;
  v8 = MRCreateXPCMessage(0x400000000000004uLL);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __MRMediaRemoteServicePresentMediaControlsCommand_block_invoke;
  v12[3] = &unk_1E769AD30;
  v13 = v5;
  v9 = v5;
  v10 = _MRServiceCreateErrorHandlerBlock(v12);
  v11 = [v7 connection];

  xpc_connection_send_message_with_reply(v11, v8, v6, v10);
}

uint64_t __MRMediaRemoteServicePresentMediaControlsCommand_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  return kdebug_trace();
}

void MRMediaRemoteServiceDismissMediaControlsCommand(void *a1)
{
  kdebug_trace();
  v2 = a1;
  message = MRCreateXPCMessage(0x400000000000005uLL);
  v3 = [v2 connection];

  xpc_connection_send_message(v3, message);
  kdebug_trace();
}

void MRMediaRemoteServiceSetCanBeNowPlayingApp(void *a1, BOOL a2, double a3)
{
  v5 = a1;
  xdict = MRCreateXPCMessage(0x200000000000006uLL);
  xpc_dictionary_set_BOOL(xdict, "MRXPC_NOWPLAYING_APP_ENABLED_KEY", a2);
  xpc_dictionary_set_double(xdict, "MRXPC_TIMESTAMP", a3);
  v6 = [v5 connection];

  xpc_connection_send_message(v6, xdict);
}

BOOL MRMediaRemoteServiceSetNowPlayingAppOverride(void *a1, BOOL a2)
{
  kdebug_trace();
  v4 = a1;
  v5 = MRCreateXPCMessage(0x200000000000001uLL);
  xpc_dictionary_set_BOOL(v5, "MRXPC_NOWPLAYING_APP_OVERRIDE_ENABLED_KEY", a2);
  v6 = [v4 connection];

  v7 = xpc_connection_send_message_with_reply_sync(v6, v5);
  if (v7 == MEMORY[0x1E69E9E18] || v7 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    v9 = 0;
  }

  else
  {
    v9 = xpc_dictionary_get_uint64(v7, "MRXPC_ERROR_CODE_KEY") == 0;
  }

  kdebug_trace();

  return v9;
}

BOOL MRMediaRemoteServiceSetOverriddenNowPlayingApplication(void *a1, void *a2)
{
  kdebug_trace();
  v4 = a1;
  v5 = MRCreateXPCMessage(0x200000000000002uLL);
  if (a2)
  {
    UTF8String = _MRServiceGetUTF8String(a2);
    xpc_dictionary_set_string(v5, "MRXPC_NOWPLAYING_DISPLAYID_KEY", UTF8String);
  }

  v7 = [v4 connection];
  v8 = xpc_connection_send_message_with_reply_sync(v7, v5);

  if (v8 == MEMORY[0x1E69E9E18] || v8 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    v10 = 0;
  }

  else
  {
    v10 = xpc_dictionary_get_uint64(v8, "MRXPC_ERROR_CODE_KEY") == 0;
  }

  kdebug_trace();

  return v10;
}

uint64_t _MRServiceGetUTF8String(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v2 = a1;

  return [v2 UTF8String];
}

void MRMediaRemoteServiceSetNowPlayingPlaybackQueue(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  kdebug_trace();
  v11 = a1;
  v12 = MRCreateXPCMessage(0x200000000000008uLL);
  MRAddPlayerPathToXPCMessage(v12, a2);
  MRAddPlaybackQueueToXPCMessage(v12, a3);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __MRMediaRemoteServiceSetNowPlayingPlaybackQueue_block_invoke;
  v16[3] = &unk_1E769AD30;
  v17 = v9;
  v13 = v9;
  v14 = _MRServiceCreateErrorHandlerBlock(v16);
  v15 = [v11 connection];

  xpc_connection_send_message_with_reply(v15, v12, v10, v14);
}

uint64_t __MRMediaRemoteServiceSetNowPlayingPlaybackQueue_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  return kdebug_trace();
}

void MRMediaRemoteServiceRequestNowPlayingPlaybackQueueCapabilities(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x200000000000009uLL);
  MRAddPlayerPathToXPCMessage(v10, a2);
  v11 = [v9 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceRequestNowPlayingPlaybackQueueCapabilities_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v14 = v7;
  v12 = v7;
  xpc_connection_send_message_with_reply(v11, v10, v8, handler);
}

void __MRMediaRemoteServiceRequestNowPlayingPlaybackQueueCapabilities_block_invoke(uint64_t a1, void *a2)
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
    v6 = MRCreatePlaybackQueueCapabilitiesFromXPCMessage(v8);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6, Error);
  }

  kdebug_trace();
}

void MRMediaRemoteServiceResetPlaybackQueueRequests(void *a1, void *a2, void *a3)
{
  kdebug_trace();
  if (a3)
  {
    v6 = a1;
    v7 = a3;
    xdict = MRCreateXPCMessage(0x20000000000000BuLL);
    MRAddPlayerPathToXPCMessage(xdict, a2);
    v8 = [v7 bytes];
    v9 = [v7 length];

    xpc_dictionary_set_data(xdict, "MRXPC_PLAYBACK_QUEUE_REQUESTS_DATA", v8, v9);
    v10 = [v6 connection];

    xpc_connection_send_message(v10, xdict);
  }
}

void MRMediaRemoteServiceSendLyricsEvent(void *a1, void *a2, void *a3)
{
  kdebug_trace();
  v10 = a1;
  v6 = MRCreateXPCMessage(0x200000000000017uLL);
  MRAddPlayerPathToXPCMessage(v6, a2);
  ExternalRepresentation = MRLyricsEventCreateExternalRepresentation(a3);
  v8 = ExternalRepresentation;
  if (ExternalRepresentation)
  {
    xpc_dictionary_set_data(v6, "MRXPC_LYRICS_EVENT_DATA", [ExternalRepresentation bytes], objc_msgSend(ExternalRepresentation, "length"));
  }

  v9 = [v10 connection];
  xpc_connection_send_message(v9, v6);
}

void MRMediaRemoteServiceGetClientProperties(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  kdebug_trace();
  v10 = a1;
  v11 = MRCreateXPCMessage(0x20000000000000CuLL);
  MRAddPlayerPathToXPCMessage(v11, v9);

  v12 = [v10 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetClientProperties_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = v7;
  v13 = v7;
  xpc_connection_send_message_with_reply(v12, v11, v8, handler);
}

void __MRMediaRemoteServiceGetClientProperties_block_invoke(uint64_t a1, void *a2)
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
    v5 = MRCreateClientFromXPCMessage(v3);
    Error = MRCreateClientErrorFromXPCMessage(v8);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, Error);
  }

  kdebug_trace();
}

void MRMediaRemoteServiceSetClientProperties(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a1;
  v10 = MRCreateXPCMessage(0x20000000000000DuLL);
  MRAddPlayerPathToXPCMessage(v10, a2);
  if (v8)
  {
    v11 = [v8 copy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __MRMediaRemoteServiceSetClientProperties_block_invoke;
    v15[3] = &unk_1E769AD30;
    v16 = v11;
    v12 = v11;
    v13 = _MRServiceCreateErrorHandlerBlock(v15);
    v14 = [v9 connection];
    xpc_connection_send_message_with_reply(v14, v10, v7, v13);
  }

  else
  {
    v12 = [v9 connection];
    xpc_connection_send_message(v12, v10);
  }
}

uint64_t __MRMediaRemoteServiceSetClientProperties_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRMediaRemoteServiceUpdateClientProperties(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a1;
  v10 = MRCreateXPCMessage(0x20000000000000EuLL);
  MRAddPlayerPathToXPCMessage(v10, a2);
  if (v8)
  {
    v11 = [v8 copy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __MRMediaRemoteServiceUpdateClientProperties_block_invoke;
    v15[3] = &unk_1E769AD30;
    v16 = v11;
    v12 = v11;
    v13 = _MRServiceCreateErrorHandlerBlock(v15);
    v14 = [v9 connection];
    xpc_connection_send_message_with_reply(v14, v10, v7, v13);
  }

  else
  {
    v12 = [v9 connection];
    xpc_connection_send_message(v12, v10);
  }
}

uint64_t __MRMediaRemoteServiceUpdateClientProperties_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRMediaRemoteServiceGetPlayerProperties(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a1;
  v9 = a3;
  v10 = a2;
  v11 = MRCreateXPCMessage(0x20000000000000FuLL);
  MRAddPlayerPathToXPCMessage(v11, v10);

  v12 = [v8 mrXPCConnection];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __MRMediaRemoteServiceGetPlayerProperties_block_invoke;
  v14[3] = &unk_1E769B338;
  v15 = v7;
  v13 = v7;
  [v12 sendMessage:v11 queue:v9 reply:v14];
}

void __MRMediaRemoteServiceGetPlayerProperties_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = MRCreatePlayerFromXPCMessage(a2);
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5, v7);
  }
}

void MRMediaRemoteServiceSetPlayerProperties(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a1;
  v10 = MRCreateXPCMessage(0x200000000000010uLL);
  MRAddPlayerPathToXPCMessage(v10, a2);
  if (v8)
  {
    v11 = [v8 copy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __MRMediaRemoteServiceSetPlayerProperties_block_invoke;
    v15[3] = &unk_1E769AD30;
    v16 = v11;
    v12 = v11;
    v13 = _MRServiceCreateErrorHandlerBlock(v15);
    v14 = [v9 connection];
    xpc_connection_send_message_with_reply(v14, v10, v7, v13);
  }

  else
  {
    v12 = [v9 connection];
    xpc_connection_send_message(v12, v10);
  }
}

uint64_t __MRMediaRemoteServiceSetPlayerProperties_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRMediaRemoteServiceUpdatePlayerProperties(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a1;
  v10 = MRCreateXPCMessage(0x200000000000011uLL);
  MRAddPlayerPathToXPCMessage(v10, a2);
  if (v8)
  {
    v11 = [v8 copy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __MRMediaRemoteServiceUpdatePlayerProperties_block_invoke;
    v15[3] = &unk_1E769AD30;
    v16 = v11;
    v12 = v11;
    v13 = _MRServiceCreateErrorHandlerBlock(v15);
    v14 = [v9 connection];
    xpc_connection_send_message_with_reply(v14, v10, v7, v13);
  }

  else
  {
    v12 = [v9 connection];
    xpc_connection_send_message(v12, v10);
  }
}

uint64_t __MRMediaRemoteServiceUpdatePlayerProperties_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRMediaRemoteServiceGetElectedPlayerPath(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = a2;
  v8 = MRCreateXPCMessage(0x20000000000002EuLL);
  v9 = [v6 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetElectedPlayerPath_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v12 = v5;
  v10 = v5;
  xpc_connection_send_message_with_reply(v9, v8, v7, handler);
}

void __MRMediaRemoteServiceGetElectedPlayerPath_block_invoke(uint64_t a1, void *a2)
{
  if (a2 == MEMORY[0x1E69E9E18] || a2 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    v4 = 0;
  }

  else
  {
    v4 = MRCreatePlayerPathFromXPCMessage(a2);
  }

  v5 = v4;
  (*(*(a1 + 32) + 16))();
}

void MRMediaRemoteServiceGetProactiveRecommendedPlayer(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = MRCreateXPCMessage(0x20000000000002FuLL);
  v9 = [v7 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetProactiveRecommendedPlayer_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v12 = v5;
  v10 = v5;
  xpc_connection_send_message_with_reply(v9, v8, v6, handler);
}

void __MRMediaRemoteServiceGetProactiveRecommendedPlayer_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E9E18];
  v5 = a2;
  v6 = v5;
  if (a2 == v4 || a2 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    v9 = 0;
  }

  else
  {
    v9 = MRCreatePlayerPathFromXPCMessage(v5);
  }

  v8 = MRCreateStringFromXPCMessage(v6, "MRXPC_ENDPOINT_UID_KEY");

  (*(*(a1 + 32) + 16))();
}

void MRMediaRemoteServiceSetPlaybackState(void *a1, void *a2, unsigned int a3, void *a4, void *a5, double a6)
{
  v11 = a5;
  v12 = a4;
  kdebug_trace();
  v13 = a1;
  v14 = MRCreateXPCMessage(0x200000000000013uLL);
  MRAddPlayerPathToXPCMessage(v14, a2);
  xpc_dictionary_set_uint64(v14, "MRXPC_PLAYBACK_STATE_KEY", a3);
  xpc_dictionary_set_double(v14, "MRXPC_TIMESTAMP", a6);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __MRMediaRemoteServiceSetPlaybackState_block_invoke;
  v18[3] = &unk_1E769AD30;
  v19 = v11;
  v15 = v11;
  v16 = _MRServiceCreateErrorHandlerBlock(v18);
  v17 = [v13 connection];

  xpc_connection_send_message_with_reply(v17, v14, v12, v16);
}

uint64_t __MRMediaRemoteServiceSetPlaybackState_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  return kdebug_trace();
}

void MRMediaRemoteServiceGetAnyAppIsPlaying(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x200000000000014uLL);
  MRAddPlayerPathToXPCMessage(v10, a2);
  v11 = [v9 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetAnyAppIsPlaying_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v14 = v7;
  v12 = v7;
  xpc_connection_send_message_with_reply(v11, v10, v8, handler);
}

void __MRMediaRemoteServiceGetAnyAppIsPlaying_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v7 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    v5 = 0;
  }

  else
  {
    v5 = xpc_dictionary_get_BOOL(v3, "MRXPC_APP_IS_PLAYING_KEY");
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  kdebug_trace();
}

uint64_t MRMediaRemoteServiceSelectSource(void *a1, void *a2)
{
  kdebug_trace();
  v4 = a1;
  v5 = MRCreateXPCMessage(0x100000000000001uLL);
  UTF8String = _MRServiceGetUTF8String(a2);
  xpc_dictionary_set_string(v5, "MRXPC_SOURCE_ID_KEY", UTF8String);
  v7 = [v4 connection];

  xpc_connection_send_message(v7, v5);
  return 1;
}

void MRMediaRemoteServiceRequestVideoThumbnails(void *a1, void *a2, const void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  kdebug_trace();
  v11 = a1;
  v12 = MRCreateXPCMessage(0x200000000000015uLL);
  MRAddPlayerPathToXPCMessage(v12, a2);
  memcpy(__dst, a3, sizeof(__dst));
  MRAddVideoThumbnailRequestToXPCMessage(v12, __dst);
  v13 = [v11 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceRequestVideoThumbnails_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v16 = v9;
  v14 = v9;
  xpc_connection_send_message_with_reply(v13, v12, v10, handler);
}

void __MRMediaRemoteServiceRequestVideoThumbnails_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E9E18];
  v5 = a2;
  v6 = v5;
  if (a2 == v4 || a2 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();

    Error = MRMediaRemoteCreateError(1);
    v9 = 0;
  }

  else
  {
    v9 = MRCreateVideoThumbnailsFromXPCMessage(v5);
    Error = MRCreateClientErrorFromXPCMessage(v6);
  }

  (*(*(a1 + 32) + 16))();
  kdebug_trace();
}

void MRMediaRemoteServiceRequestAudioAmplitudeSamples(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  kdebug_trace();
  v11 = a1;
  v12 = MRCreateXPCMessage(0x200000000000016uLL);
  MRAddPlayerPathToXPCMessage(v12, a2);
  xpc_dictionary_set_uint64(v12, "MRXPC_AUDIO_AMPLITUDE_SAMPLES_COUNT_KEY", a3);
  v13 = [v11 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceRequestAudioAmplitudeSamples_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v16 = v9;
  v14 = v9;
  xpc_connection_send_message_with_reply(v13, v12, v10, handler);
}

void __MRMediaRemoteServiceRequestAudioAmplitudeSamples_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v9 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
    v6 = 0;
  }

  else
  {
    v7 = MRCreateDataFromXPCMessage(v3, "MRXPC_AUDIO_AMPLITUDE_ARRAY_DATA_KEY");
    v8 = v7;
    if (v7)
    {
      v6 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:0];
    }

    else
    {
      v6 = 0;
    }

    Error = MRCreateClientErrorFromXPCMessage(v9);
  }

  (*(*(a1 + 32) + 16))();
  kdebug_trace();
}

uint64_t MRMediaRemoteServiceCopyResolvedPlayerPath(void *a1, void *a2, void *a3)
{
  kdebug_trace();
  v6 = a1;
  v7 = MRCreateXPCMessage(0x200000000000018uLL);
  MRAddPlayerPathToXPCMessage(v7, a2);
  v8 = [v6 connection];

  v9 = xpc_connection_send_message_with_reply_sync(v8, v7);
  if (v9 == MEMORY[0x1E69E9E18] || v9 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
    v11 = 0;
  }

  else
  {
    v11 = MRCreatePlayerPathFromXPCMessage(v9);
    Error = MRCreateClientErrorFromXPCMessage(v9);
  }

  kdebug_trace();
  if (a3)
  {
    *a3 = Error;
  }

  return v11;
}

void MRMediaRemoteServiceGetNowPlayingClients(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  kdebug_trace();
  if (v7 && v8)
  {
    v9 = a1;
    v10 = MRCreateXPCMessage(0x20000000000001FuLL);
    MRAddPlayerPathToXPCMessage(v10, a2);
    v11 = [v9 connection];

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __MRMediaRemoteServiceGetNowPlayingClients_block_invoke;
    handler[3] = &unk_1E769C4D0;
    v13 = v8;
    xpc_connection_send_message_with_reply(v11, v10, v7, handler);
  }

  else
  {
    kdebug_trace();
  }
}

void __MRMediaRemoteServiceGetNowPlayingClients_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E9E18];
  v5 = a2;
  v6 = v5;
  if (a2 == v4 || a2 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();

    Error = MRMediaRemoteCreateError(1);
    v9 = 0;
  }

  else
  {
    v9 = MRCreateClientArrayFromXPCMessage(v5);
    Error = MRCreateClientErrorFromXPCMessage(v6);
  }

  (*(*(a1 + 32) + 16))();
  kdebug_trace();
}

void MRMediaRemoteServiceGetNowPlayingPlayers(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x200000000000023uLL);
  MRAddPlayerPathToXPCMessage(v10, a2);
  v11 = [v9 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetNowPlayingPlayers_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v14 = v7;
  v12 = v7;
  xpc_connection_send_message_with_reply(v11, v10, v8, handler);
}

void __MRMediaRemoteServiceGetNowPlayingPlayers_block_invoke(uint64_t a1, void *a2)
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
    v5 = MRCreatePlayerArrayFromXPCMessage(v3);
    Error = MRCreateClientErrorFromXPCMessage(v8);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, Error);
  }

  kdebug_trace();
}

void MRMediaRemoteServiceSetNowPlayingClient(void *a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  kdebug_trace();
  v9 = _MRLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = a2;
    _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "Setting nowPlayingClient %{public}@", buf, 0xCu);
  }

  v10 = a1;
  v11 = MRCreateXPCMessage(0x200000000000020uLL);
  MRAddPlayerPathToXPCMessage(v11, a2);
  v12 = [v10 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceSetNowPlayingClient_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v16 = v7;
  v13 = v7;
  xpc_connection_send_message_with_reply(v12, v11, v8, handler);

  v14 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteServiceSetNowPlayingClient_block_invoke(uint64_t a1, void *a2)
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

void MRMediaRemoteServiceGetNowPlayingPlayer(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x200000000000025uLL);
  MRAddPlayerPathToXPCMessage(v10, a2);
  v11 = [v9 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetNowPlayingPlayer_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v14 = v7;
  v12 = v7;
  xpc_connection_send_message_with_reply(v11, v10, v8, handler);
}

void __MRMediaRemoteServiceGetNowPlayingPlayer_block_invoke(uint64_t a1, void *a2)
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
    v6 = MRCreatePlayerFromXPCMessage(v8);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6, Error);
  }

  kdebug_trace();
}

void MRMediaRemoteServiceGetActivePlayerPathsForLocalOrigin(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  v7 = a1;
  v8 = MRCreateXPCMessage(0x200000000000027uLL);
  v9 = [v7 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetActivePlayerPathsForLocalOrigin_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v12 = v5;
  v10 = v5;
  xpc_connection_send_message_with_reply(v9, v8, v6, handler);
}

void __MRMediaRemoteServiceGetActivePlayerPathsForLocalOrigin_block_invoke(uint64_t a1, void *a2)
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
    v5 = MRCreatePlayerPathArrayFromXPCMessage(v3);
    Error = MRCreateClientErrorFromXPCMessage(v8);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, Error);
  }

  kdebug_trace();
}

void MRMediaRemoteServiceRemoveClient(void *a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  kdebug_trace();
  v9 = _MRLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = a2;
    _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "Removing client %{public}@", buf, 0xCu);
  }

  v10 = a1;
  v11 = MRCreateXPCMessage(0x200000000000022uLL);
  MRAddPlayerPathToXPCMessage(v11, a2);
  v12 = [v10 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceRemoveClient_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v16 = v7;
  v13 = v7;
  xpc_connection_send_message_with_reply(v12, v11, v8, handler);

  v14 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteServiceRemoveClient_block_invoke(uint64_t a1, void *a2)
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

void MRMediaRemoteServiceGetPictureInPictureEnabledForPlayer(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x200000000000034uLL);
  MRAddPlayerPathToXPCMessage(v10, a2);
  v11 = [v9 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetPictureInPictureEnabledForPlayer_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v14 = v7;
  v12 = v7;
  xpc_connection_send_message_with_reply(v11, v10, v8, handler);
}

void __MRMediaRemoteServiceGetPictureInPictureEnabledForPlayer_block_invoke(uint64_t a1, void *a2)
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
    v5 = xpc_dictionary_get_BOOL(v3, "MRXPC_PICTURE_IN_PICTURE_ENABLED_KEY");
    Error = MRCreateClientErrorFromXPCMessage(v8);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, Error);
  }

  kdebug_trace();
}

void MRMediaRemoteServiceSetPictureInPictureEnabledForPlayer(void *a1, void *a2, _BOOL4 a3, void *a4, void *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a4;
  kdebug_trace();
  v11 = _MRLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"false";
    if (a3)
    {
      v12 = @"true";
    }

    *buf = 138543618;
    v21 = v12;
    v22 = 2114;
    v23 = a2;
    _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "Set picture in picture enabled %{public}@ for client %{public}@", buf, 0x16u);
  }

  v13 = a1;
  v14 = MRCreateXPCMessage(0x200000000000035uLL);
  MRAddPlayerPathToXPCMessage(v14, a2);
  xpc_dictionary_set_BOOL(v14, "MRXPC_PICTURE_IN_PICTURE_ENABLED_KEY", a3);
  v15 = [v13 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceSetPictureInPictureEnabledForPlayer_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v19 = v9;
  v16 = v9;
  xpc_connection_send_message_with_reply(v15, v14, v10, handler);

  v17 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteServiceSetPictureInPictureEnabledForPlayer_block_invoke(uint64_t a1, void *a2)
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

void MRMediaRemoteServiceRemovePlayer(void *a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  kdebug_trace();
  v9 = _MRLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = a2;
    _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "Removing nowPlayingPlayer %{public}@ ", buf, 0xCu);
  }

  v10 = a1;
  v11 = MRCreateXPCMessage(0x200000000000026uLL);
  MRAddPlayerPathToXPCMessage(v11, a2);
  v12 = [v10 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceRemovePlayer_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v16 = v7;
  v13 = v7;
  xpc_connection_send_message_with_reply(v12, v11, v8, handler);

  v14 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteServiceRemovePlayer_block_invoke(uint64_t a1, void *a2)
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

void MRMediaRemoteServiceSetHardwareRemoteBehavior(void *a1, unsigned int a2)
{
  kdebug_trace();
  v4 = a1;
  message = MRCreateXPCMessage(0x200000000000029uLL);
  xpc_dictionary_set_uint64(message, "MRXPC_HARDWARE_REMOTE_BEHAVIOR_KEY", a2);
  v5 = [v4 connection];

  xpc_connection_send_message(v5, message);
}

void MRMediaRemoteServiceSendContentItemChangedNotification(void *a1, void *a2, void *a3)
{
  v5 = a1;
  message = MRCreateXPCMessage(0x20000000000002BuLL);
  MRAddPlayerPathToXPCMessage(message, a2);
  MRAddContentItemsToXPCMessage(message, a3);
  v6 = [v5 connection];

  xpc_connection_send_message(v6, message);
}

void MRMediaRemoteServiceSendContentItemArtworkChangedNotification(void *a1, void *a2, void *a3)
{
  v5 = a1;
  message = MRCreateXPCMessage(0x20000000000002AuLL);
  MRAddPlayerPathToXPCMessage(message, a2);
  MRAddContentItemsToXPCMessage(message, a3);
  v6 = [v5 connection];

  xpc_connection_send_message(v6, message);
}

void MRMediaRemoteServicePlaybackSessionRequest(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MRMediaRemoteServicePlaybackSessionRequest_block_invoke;
  v9[3] = &unk_1E769C5B8;
  v10 = v7;
  v8 = v7;
  _MRMediaRemoteServiceProtobuf(a1, 0x200000000000030uLL, a2, a3, v9);
}

void __MRMediaRemoteServicePlaybackSessionRequest_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v4 = [v3 error];
    (*(v2 + 16))(v2, v3, v4);
  }
}

void MRMediaRemoteServiceSendPlaybackSession(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MRMediaRemoteServiceSendPlaybackSession_block_invoke;
  v9[3] = &unk_1E769C5B8;
  v10 = v7;
  v8 = v7;
  _MRMediaRemoteServiceProtobuf(a1, 0x400000000000007uLL, a2, a3, v9);
}

void __MRMediaRemoteServiceSendPlaybackSession_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v4 = [v3 error];
    (*(v2 + 16))(v2, v3, v4);
  }
}

void MRMediaRemoteServiceSendPlaybackSessionMigrateBegin(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MRMediaRemoteServiceSendPlaybackSessionMigrateBegin_block_invoke;
  v9[3] = &unk_1E769C5B8;
  v10 = v7;
  v8 = v7;
  _MRMediaRemoteServiceProtobuf(a1, 0x400000000000008uLL, a2, a3, v9);
}

void __MRMediaRemoteServiceSendPlaybackSessionMigrateBegin_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v4 = [v3 error];
    (*(v2 + 16))(v2, v3, v4);
  }
}

void MRMediaRemoteServiceSendPlaybackSessionMigrateEnd(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MRMediaRemoteServiceSendPlaybackSessionMigrateEnd_block_invoke;
  v9[3] = &unk_1E769C5B8;
  v10 = v7;
  v8 = v7;
  _MRMediaRemoteServiceProtobuf(a1, 0x400000000000009uLL, a2, a3, v9);
}

void __MRMediaRemoteServiceSendPlaybackSessionMigrateEnd_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v4 = [v3 error];
    (*(v2 + 16))(v2, v3, v4);
  }
}

void MRMediaRemoteServiceSendPlaybackSessionMigratePost(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MRMediaRemoteServiceSendPlaybackSessionMigratePost_block_invoke;
  v9[3] = &unk_1E769C5B8;
  v10 = v7;
  v8 = v7;
  _MRMediaRemoteServiceProtobuf(a1, 0x40000000000000AuLL, a2, a3, v9);
}

void __MRMediaRemoteServiceSendPlaybackSessionMigratePost_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v4 = [v3 error];
    (*(v2 + 16))(v2, v3, v4);
  }
}

id MRMediaRemoteServiceGetLastPlayingDateForPlayerSync(void *a1, void *a2, void *a3)
{
  v5 = a2;
  kdebug_trace();
  v6 = a1;
  v7 = MRCreateXPCMessage(0x200000000000036uLL);
  MRAddPlayerPathToXPCMessage(v7, v5);

  v8 = [v6 connection];

  v9 = xpc_connection_send_message_with_reply_sync(v8, v7);
  if (v9 != MEMORY[0x1E69E9E18] && v9 != MEMORY[0x1E69E9E20])
  {
    v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{xpc_dictionary_get_double(v9, "MRXPC_TIMESTAMP")}];
    if (!a3)
    {
      goto LABEL_9;
    }

    Error = MRCreateClientErrorFromXPCMessage(v9);
    goto LABEL_7;
  }

  _MRServiceLogReplyError();
  if (a3)
  {
    Error = MRMediaRemoteCreateError(1);
    v10 = 0;
LABEL_7:
    *a3 = Error;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:
  kdebug_trace();

  return v10;
}

void MRMediaRemoteServiceSetPlayerClientProperties(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  kdebug_trace();
  v12 = a1;
  v13 = MRCreateXPCMessage(0x200000000000038uLL);
  MRAddProtobufToXPCMessage(v13, v11);

  MRAddPlayerPathToXPCMessage(v13, a2);
  v14 = [v12 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceSetPlayerClientProperties_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v17 = v9;
  v15 = v9;
  xpc_connection_send_message_with_reply(v14, v13, v10, handler);
}

void __MRMediaRemoteServiceSetPlayerClientProperties_block_invoke(uint64_t a1, void *a2)
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

void MRMediaRemoteServiceTriggerAudioFade(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MRMediaRemoteServiceTriggerAudioFade_block_invoke;
  v9[3] = &unk_1E769C5B8;
  v10 = v7;
  v8 = v7;
  _MRMediaRemoteServiceProtobuf(a1, 0x40000000000000BuLL, a2, a3, v9);
}

void __MRMediaRemoteServiceTriggerAudioFade_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v4 = [v3 error];
    (*(v2 + 16))(v2, v3, v4);
  }
}

void MRMediaRemoteServiceGetAvailableOrigins(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  kdebug_trace();
  if (v6)
  {
    v7 = a1;
    v8 = MRCreateXPCMessage(0x200000000000019uLL);
    v9 = [v7 connection];

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __MRMediaRemoteServiceGetAvailableOrigins_block_invoke;
    handler[3] = &unk_1E769C4D0;
    v11 = v6;
    xpc_connection_send_message_with_reply(v9, v8, v5, handler);
  }

  else
  {
    kdebug_trace();
  }
}

void __MRMediaRemoteServiceGetAvailableOrigins_block_invoke(uint64_t a1, void *a2)
{
  if (a2 == MEMORY[0x1E69E9E18] || a2 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    v4 = 0;
  }

  else
  {
    v4 = MRCreateOriginArrayFromXPCMessage(a2);
  }

  v5 = v4;
  (*(*(a1 + 32) + 16))();
  kdebug_trace();
}

void MRMediaRemoteServiceSetActiveOrigin(void *a1, void *a2)
{
  kdebug_trace();
  v4 = a1;
  message = MRCreateXPCMessage(0x20000000000001AuLL);
  MRAddOriginToXPCMessage(message, a2);
  v5 = [v4 connection];

  xpc_connection_send_message(v5, message);
}

void MRMediaRemoteServiceGetActiveOrigin(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  v7 = a1;
  v8 = MRCreateXPCMessage(0x20000000000001BuLL);
  v9 = [v7 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetActiveOrigin_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v12 = v5;
  v10 = v5;
  xpc_connection_send_message_with_reply(v9, v8, v6, handler);
}

void __MRMediaRemoteServiceGetActiveOrigin_block_invoke(uint64_t a1, void *a2)
{
  if (a2 == MEMORY[0x1E69E9E18] || a2 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    v4 = 0;
  }

  else
  {
    v4 = MRCreateOriginFromXPCMessage(a2);
  }

  v5 = v4;
  (*(*(a1 + 32) + 16))();
  kdebug_trace();
}

void MRMediaRemoteServiceSetOriginClientProperties(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  kdebug_trace();
  v13 = a1;
  v14 = MRCreateXPCMessage(0x200000000000037uLL);
  MRAddProtobufToXPCMessage(v14, v11);

  MRAddOriginToXPCMessage(v14, v12);
  v15 = [v13 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceSetOriginClientProperties_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v18 = v9;
  v16 = v9;
  xpc_connection_send_message_with_reply(v15, v14, v10, handler);
}

void __MRMediaRemoteServiceSetOriginClientProperties_block_invoke(uint64_t a1, void *a2)
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

void MRMediaRemoteServiceSetWakingPlayerPaths(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = MRCreateXPCMessage(0x20000000000003AuLL);
  MRAddArrayToXPCMessage(v11, "MRXPC_NOWPLAYING_PLAYER_PATH_ARRAY_DATA_KEY", v9, &__block_literal_global_202);

  v12 = [v10 mrXPCConnection];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __MRMediaRemoteServiceSetWakingPlayerPaths_block_invoke_2;
  v14[3] = &unk_1E769B338;
  v15 = v7;
  v13 = v7;
  [v12 sendMessage:v11 queue:v8 reply:v14];
}

id __MRMediaRemoteServiceSetWakingPlayerPaths_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 protobuf];
  v3 = [v2 data];

  return v3;
}

uint64_t __MRMediaRemoteServiceSetWakingPlayerPaths_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void MRMediaRemoteServiceBeginActivity(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x200000000000003uLL);
  _MRServiceAddAppActivityToXPCMessage(v10, a2);
  if (v8 && !v7)
  {
    MRMediaRemoteServiceBeginActivity_cold_1();
LABEL_7:
    v13 = [v9 connection];
    xpc_connection_send_message(v13, v10);

    kdebug_trace();
    goto LABEL_8;
  }

  if (!v7 || !v8)
  {
    goto LABEL_7;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __MRMediaRemoteServiceBeginActivity_block_invoke;
  v14[3] = &unk_1E769AD30;
  v15 = v8;
  v11 = _MRServiceCreateErrorHandlerBlock(v14);
  v12 = [v9 connection];
  xpc_connection_send_message_with_reply(v12, v10, v7, v11);

LABEL_8:
}

void _MRServiceAddAppActivityToXPCMessage(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v3 = a1;
    ExternalRepresentation = _MRApplicationActivityCreateExternalRepresentation(a2);
    v4 = ExternalRepresentation;
    xpc_dictionary_set_data(v3, "MRXPC_APPLICATION_ACTIVITY_DATA_KEY", [ExternalRepresentation bytes], objc_msgSend(ExternalRepresentation, "length"));
  }
}

uint64_t __MRMediaRemoteServiceBeginActivity_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  return kdebug_trace();
}

void MRMediaRemoteServiceGetCurrentActivity(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  kdebug_trace();
  if (v5 && v6)
  {
    v7 = a1;
    v8 = MRCreateXPCMessage(0x200000000000004uLL);
    v9 = [v7 connection];

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __MRMediaRemoteServiceGetCurrentActivity_block_invoke;
    handler[3] = &unk_1E769C4D0;
    v11 = v6;
    xpc_connection_send_message_with_reply(v9, v8, v5, handler);
  }

  else
  {
    kdebug_trace();
  }
}

void __MRMediaRemoteServiceGetCurrentActivity_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  if (xdict == MEMORY[0x1E69E9E18] || xdict == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  length = 0;
  data = xpc_dictionary_get_data(xdict, "MRXPC_APPLICATION_ACTIVITY_DATA_KEY", &length);
  if (!data)
  {
    goto LABEL_9;
  }

  v5 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:data length:length freeWhenDone:0];
  v6 = _MRApplicationActivityCreateWithExternalRepresentation(v5);

LABEL_10:
  (*(*(a1 + 32) + 16))();
  kdebug_trace();
}

void MRMediaRemoteServiceEndActivity(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x200000000000005uLL);
  _MRServiceAddAppActivityToXPCMessage(v10, a2);
  if (v8 && !v7)
  {
    MRMediaRemoteServiceEndActivity_cold_1();
LABEL_7:
    v12 = [v9 connection];
    xpc_connection_send_message(v12, v10);

    kdebug_trace();
    goto LABEL_8;
  }

  if (!v7 || !v8)
  {
    goto LABEL_7;
  }

  v11 = [v9 connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceEndActivity_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v14 = v8;
  xpc_connection_send_message_with_reply(v11, v10, v7, handler);

LABEL_8:
}

uint64_t __MRMediaRemoteServiceEndActivity_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  if (xdict == MEMORY[0x1E69E9E18] || xdict == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
  }

  else
  {
    xpc_dictionary_get_uint64(xdict, "MRXPC_ERROR_CODE_KEY");
  }

  (*(*(a1 + 32) + 16))();

  return kdebug_trace();
}

BOOL MRMediaRemoteServiceSetPickedRoute(void *a1, uint64_t a2, void *a3, unsigned int a4)
{
  kdebug_trace();
  v8 = a1;
  v9 = MRCreateXPCMessage(0x300000000000003uLL);
  xpc_dictionary_set_uint64(v9, "MRXPC_ROUTE_OPTIONS_KEY", a4);
  if (a3)
  {
    UTF8String = _MRServiceGetUTF8String(a3);
    xpc_dictionary_set_string(v9, "MRXPC_ROUTE_PASSWORD_KEY", UTF8String);
  }

  if (a2)
  {
    v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:a2 format:200 options:0 error:0];
    xpc_dictionary_set_data(v9, "MRXPC_ROUTE_DESCRIPTION_DATA_KEY", [v11 bytes], objc_msgSend(v11, "length"));
  }

  v12 = [v8 connection];
  v13 = xpc_connection_send_message_with_reply_sync(v12, v9);

  if (v13 == MEMORY[0x1E69E9E18] || v13 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    v14 = 0;
  }

  else
  {
    v14 = xpc_dictionary_get_uint64(v13, "MRXPC_ERROR_CODE_KEY") == 0;
  }

  kdebug_trace();

  return v14;
}

void MRMediaRemoteServiceFindAndPickRoute(void *a1, uint64_t a2, void *a3, unsigned int a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  kdebug_trace();
  v13 = a1;
  v14 = MRCreateXPCMessage(0x300000000000003uLL);
  xpc_dictionary_set_uint64(v14, "MRXPC_ROUTE_OPTIONS_KEY", a4);
  if (a3)
  {
    UTF8String = _MRServiceGetUTF8String(a3);
    xpc_dictionary_set_string(v14, "MRXPC_ROUTE_PASSWORD_KEY", UTF8String);
  }

  RouteUID = MRAVRouteQueryGetRouteUID(a2);
  if (RouteUID)
  {
    v17 = _MRServiceGetUTF8String(RouteUID);
    xpc_dictionary_set_string(v14, "MRXPC_ROUTE_UID_KEY", v17);
  }

  v18 = [v13 connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceFindAndPickRoute_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v21 = v11;
  v19 = v11;
  xpc_connection_send_message_with_reply(v18, v14, v12, handler);
}

void __MRMediaRemoteServiceFindAndPickRoute_block_invoke(uint64_t a1, void *a2)
{
  v3 = _MRServiceCreateGenericErrorFromReply(a2);
  (*(*(a1 + 32) + 16))();
  kdebug_trace();
}

id _MRServiceCreateGenericErrorFromReply(void *a1)
{
  Error = _MRServiceGenericErrorCodeFromReply(a1);
  if (Error)
  {
    Error = MRMediaRemoteCreateError(Error);
  }

  return Error;
}

int64_t MRMediaRemoteServiceGetPickedRouteVolumeControlCapabilitiesSync(void *a1, void *a2, void *a3)
{
  v5 = a2;
  kdebug_trace();
  v6 = a1;
  v7 = MRCreateXPCMessage(0x300000000000004uLL);
  MRAddPlayerPathToXPCMessage(v7, v5);

  v8 = [v6 mrXPCConnection];

  v13 = 0;
  v9 = [v8 sendSyncMessage:v7 error:&v13];
  v10 = v13;

  if (a3)
  {
    *a3 = v10;
  }

  if (v9 == MEMORY[0x1E69E9E18] || v9 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    int64 = 0;
  }

  else
  {
    int64 = xpc_dictionary_get_int64(v9, "MRXPC_ROUTE_VOLUME_CONTROL_CAPABILITIES_KEY");
  }

  kdebug_trace();

  return int64;
}

void MRMediaRemoteServiceSetPickedRouteVolumeControlCapabilities(void *a1, void *a2, int a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  kdebug_trace();
  v11 = a1;
  v12 = MRCreateXPCMessage(0x300000000000005uLL);
  MRAddPlayerPathToXPCMessage(v12, a2);
  xpc_dictionary_set_int64(v12, "MRXPC_ROUTE_VOLUME_CONTROL_CAPABILITIES_KEY", a3);
  if (v10 && !v9)
  {
    MRMediaRemoteServiceSetPickedRouteVolumeControlCapabilities_cold_1();
LABEL_7:
    v14 = [v11 connection];
    xpc_connection_send_message(v14, v12);

    kdebug_trace();
    goto LABEL_8;
  }

  if (!v9 || !v10)
  {
    goto LABEL_7;
  }

  v13 = [v11 connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceSetPickedRouteVolumeControlCapabilities_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v16 = v10;
  xpc_connection_send_message_with_reply(v13, v12, v9, handler);

LABEL_8:
}

uint64_t __MRMediaRemoteServiceSetPickedRouteVolumeControlCapabilities_block_invoke(uint64_t a1, void *a2)
{
  if (a2 == MEMORY[0x1E69E9E18] || a2 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
  }

  else
  {
    _MRServiceGenericErrorCodeFromReply(a2);
  }

  (*(*(a1 + 32) + 16))();

  return kdebug_trace();
}

uint64_t _MRServiceGenericErrorCodeFromReply(void *a1)
{
  if (a1 == MEMORY[0x1E69E9E18] || a1 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    return 1;
  }

  else
  {

    return MRErrorFromXPCMessage(a1);
  }
}

void MRMediaRemoteServiceGetSavedAVRoutePassword(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x300000000000007uLL);
  UTF8String = _MRServiceGetUTF8String(a2);
  xpc_dictionary_set_string(v10, "MRXPC_ROUTE_NAME_KEY", UTF8String);
  v12 = [v9 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetSavedAVRoutePassword_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = v7;
  v13 = v7;
  xpc_connection_send_message_with_reply(v12, v10, v8, handler);
}

void __MRMediaRemoteServiceGetSavedAVRoutePassword_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  if (xdict == MEMORY[0x1E69E9E18] || xdict == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
  }

  else
  {
    string = xpc_dictionary_get_string(xdict, "MRXPC_ROUTE_PASSWORD_KEY");
    if (string)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      goto LABEL_10;
    }
  }

  v5 = 0;
LABEL_10:
  v6 = v5;
  (*(*(a1 + 32) + 16))();
  kdebug_trace();
}

void MRMediaRemoteServiceSetSavedAVRoutePassword(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  kdebug_trace();
  v11 = a1;
  v12 = MRCreateXPCMessage(0x300000000000008uLL);
  UTF8String = _MRServiceGetUTF8String(a2);
  xpc_dictionary_set_string(v12, "MRXPC_ROUTE_NAME_KEY", UTF8String);
  v14 = _MRServiceGetUTF8String(a3);
  xpc_dictionary_set_string(v12, "MRXPC_ROUTE_PASSWORD_KEY", v14);
  if (v10 && !v9)
  {
    MRMediaRemoteServiceSetSavedAVRoutePassword_cold_1();
LABEL_7:
    v16 = [v11 connection];
    xpc_connection_send_message(v16, v12);

    kdebug_trace();
    goto LABEL_8;
  }

  if (!v9 || !v10)
  {
    goto LABEL_7;
  }

  v15 = [v11 connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceSetSavedAVRoutePassword_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v18 = v10;
  xpc_connection_send_message_with_reply(v15, v12, v9, handler);

LABEL_8:
}

uint64_t __MRMediaRemoteServiceSetSavedAVRoutePassword_block_invoke(uint64_t a1, void *a2)
{
  if (a2 == MEMORY[0x1E69E9E18] || a2 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
  }

  else
  {
    _MRServiceGenericErrorCodeFromReply(a2);
  }

  (*(*(a1 + 32) + 16))();

  return kdebug_trace();
}

void MRMediaRemoteServiceClearAllAVRoutePasswords(void *a1)
{
  v1 = a1;
  message = MRCreateXPCMessage(0x300000000000009uLL);
  v2 = [v1 connection];

  v3 = xpc_connection_send_message_with_reply_sync(v2, message);
}

void MRMediaRemoteServiceUnpickAirPlayAVRoutes(void *a1, void *a2, void *a3)
{
  replyq = a2;
  v5 = a3;
  kdebug_trace();
  v6 = a1;
  v7 = MRCreateXPCMessage(0x30000000000000AuLL);
  if (v5 && !replyq)
  {
    MRMediaRemoteServiceUnpickAirPlayAVRoutes_cold_1();
  }

  else if (replyq && v5)
  {
    v8 = _MRServiceCreateErrorHandlerBlock(v5);
    v9 = [v6 connection];
    xpc_connection_send_message_with_reply(v9, v7, replyq, v8);

    kdebug_trace();
    goto LABEL_8;
  }

  v10 = [v6 connection];
  xpc_connection_send_message(v10, v7);

  kdebug_trace();
LABEL_8:
}

void MRMediaRemoteServiceSetApplicationPickedRoutes(void *a1, uint64_t a2, BOOL a3)
{
  kdebug_trace();
  v6 = a1;
  xdict = MRCreateXPCMessage(0x30000000000000BuLL);
  MRAddPropertyListToXPCMessage(xdict, a2, "MRXPC_ROUTES_DATA_KEY");
  xpc_dictionary_set_BOOL(xdict, "MRXPC_ROUTE_OPTIONS_KEY", a3);
  v7 = [v6 connection];

  xpc_connection_send_message(v7, xdict);
}

void MRMediaRemoteServiceGetReceiverAirPlaySecuritySettings(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  kdebug_trace();
  if (v5 && v6)
  {
    v7 = a1;
    v8 = MRCreateXPCMessage(0x30000000000000CuLL);
    v9 = [v7 connection];

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __MRMediaRemoteServiceGetReceiverAirPlaySecuritySettings_block_invoke;
    handler[3] = &unk_1E769C4D0;
    v11 = v6;
    xpc_connection_send_message_with_reply(v9, v8, v5, handler);
  }

  else
  {
    kdebug_trace();
  }
}

void __MRMediaRemoteServiceGetReceiverAirPlaySecuritySettings_block_invoke(uint64_t a1, void *a2)
{
  if (a2 == MEMORY[0x1E69E9E18] || a2 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    v5 = 0;
  }

  else
  {
    v4 = MRCreateDataFromXPCMessage(a2, "MRXPC_AIRPLAY_SEC_SETTINGS_DATA_KEY");
    v5 = MRAVAirPlaySecuritySettingsCreateFromExternalRepresentation(v4);
  }

  (*(*(a1 + 32) + 16))();
  kdebug_trace();
}

void MRMediaRemoteServiceSetNearbyDevice(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a1;
  v9 = a3;
  v10 = a2;
  v11 = MRCreateXPCMessage(0x30000000000001AuLL);
  MRAddStringToXPCMessage(v11, v10, "MRXPC_ROUTE_UID_KEY");

  v12 = [v8 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceSetNearbyDevice_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = v7;
  v13 = v7;
  xpc_connection_send_message_with_reply(v12, v11, v9, handler);
}

uint64_t __MRMediaRemoteServiceSetNearbyDevice_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void MRMediaRemoteServiceMigrateFromEndpointToOutputDevices(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a4;
  v12 = a6;
  v13 = a1;
  v14 = a5;
  v15 = a3;
  v16 = a2;
  v17 = MRCreateXPCMessage(0x300000000000026uLL);
  v18 = [v15 mr_map:&__block_literal_global_242];

  v19 = MSVArchivedDataWithRootObject();

  MRAddStringToXPCMessage(v17, v16, "MRXPC_SOURCE_ENDPOINT_UID_KEY");
  v20 = [v11 protobufData];
  MRAddDataToXPCMessage(v17, v20, "MRXPC_MIGRATE_REQUEST_DATA_KEY");

  MRAddDataToXPCMessage(v17, v19, "MRXPC_OUTPUT_DEVICE_UID_ARRAY_DATA_KEY");
  kdebug_trace();
  v21 = [v13 connection];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __MRMediaRemoteServiceMigrateFromEndpointToOutputDevices_block_invoke_2;
  v24[3] = &unk_1E769C4A8;
  v25 = v11;
  v26 = v12;
  v22 = v12;
  v23 = v11;
  xpc_connection_send_message_with_reply(v21, v17, v14, v24);
}

id __MRMediaRemoteServiceMigrateFromEndpointToOutputDevices_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 descriptor];
  v3 = [v2 data];

  return v3;
}

void __MRMediaRemoteServiceMigrateFromEndpointToOutputDevices_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v11 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
  }

  else
  {
    Error = MRCreateClientErrorFromXPCMessage(v3);
    v6 = [MRPlaybackSessionMigrateRequest alloc];
    v7 = MRCreateDataFromXPCMessage(v11, "MRXPC_MIGRATE_REQUEST_DATA_KEY");
    v8 = [(MRPlaybackSessionMigrateRequest *)v6 initWithData:v7];

    v9 = [*(a1 + 32) merge:v8];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, Error);
  }

  kdebug_trace();
}

void MRMediaRemoteServiceMigrateFromEndpointToEndpoint(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a4;
  v12 = a6;
  v13 = a1;
  v14 = a5;
  v15 = a3;
  v16 = a2;
  v17 = MRCreateXPCMessage(0x300000000000027uLL);
  MRAddStringToXPCMessage(v17, v16, "MRXPC_SOURCE_ENDPOINT_UID_KEY");

  MRAddStringToXPCMessage(v17, v15, "MRXPC_DESTINATION_ENDPOINT_UID_KEY");
  v18 = [v11 protobufData];
  MRAddDataToXPCMessage(v17, v18, "MRXPC_MIGRATE_REQUEST_DATA_KEY");

  kdebug_trace();
  v19 = [v13 connection];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __MRMediaRemoteServiceMigrateFromEndpointToEndpoint_block_invoke;
  v22[3] = &unk_1E769C4A8;
  v23 = v11;
  v24 = v12;
  v20 = v12;
  v21 = v11;
  xpc_connection_send_message_with_reply(v19, v17, v14, v22);
}

void __MRMediaRemoteServiceMigrateFromEndpointToEndpoint_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v11 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
  }

  else
  {
    Error = MRCreateClientErrorFromXPCMessage(v3);
    v6 = [MRPlaybackSessionMigrateRequest alloc];
    v7 = MRCreateDataFromXPCMessage(v11, "MRXPC_MIGRATE_REQUEST_DATA_KEY");
    v8 = [(MRPlaybackSessionMigrateRequest *)v6 initWithData:v7];

    v9 = [*(a1 + 32) merge:v8];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, Error);
  }

  kdebug_trace();
}

void MRMediaRemoteServiceSetMediaPlaybackVolume(void *a1, unsigned int a2, void *a3, void *a4, float a5)
{
  v9 = a3;
  v10 = a4;
  kdebug_trace();
  v11 = a1;
  v12 = MRCreateXPCMessage(0x100000000000005uLL);
  xpc_dictionary_set_double(v12, "MRXPC_VOLUME_VALUE_KEY", a5);
  xpc_dictionary_set_uint64(v12, "MRXPC_VOLUME_OPTIONS_KEY", a2);
  if (v9 && v10)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __MRMediaRemoteServiceSetMediaPlaybackVolume_block_invoke;
    v16[3] = &unk_1E769AD30;
    v17 = v10;
    v13 = _MRServiceCreateErrorHandlerBlock(v16);
    v14 = [v11 connection];
    xpc_connection_send_message_with_reply(v14, v12, v9, v13);
  }

  else
  {
    v15 = [v11 connection];
    xpc_connection_send_message(v15, v12);

    kdebug_trace();
  }
}

uint64_t __MRMediaRemoteServiceSetMediaPlaybackVolume_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  return kdebug_trace();
}

void MRMediaRemoteServiceAdjustMediaPlaybackVolume(void *a1, unsigned int a2, void *a3, void *a4, float a5)
{
  v9 = a3;
  v10 = a4;
  kdebug_trace();
  v11 = a1;
  v12 = MRCreateXPCMessage(0x100000000000006uLL);
  xpc_dictionary_set_double(v12, "MRXPC_VOLUME_VALUE_KEY", a5);
  xpc_dictionary_set_uint64(v12, "MRXPC_VOLUME_OPTIONS_KEY", a2);
  if (v9 && v10)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __MRMediaRemoteServiceAdjustMediaPlaybackVolume_block_invoke;
    v16[3] = &unk_1E769AD30;
    v17 = v10;
    v13 = _MRServiceCreateErrorHandlerBlock(v16);
    v14 = [v11 connection];
    xpc_connection_send_message_with_reply(v14, v12, v9, v13);
  }

  else
  {
    v15 = [v11 connection];
    xpc_connection_send_message(v15, v12);

    kdebug_trace();
  }
}

uint64_t __MRMediaRemoteServiceAdjustMediaPlaybackVolume_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  return kdebug_trace();
}

void MRMediaRemoteServiceAdjustMediaPlaybackVolumeWithAdjustment(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a1;
  v11 = [[MRAdjustVolumeMessage alloc] initWithAdjustment:a2 outputDeviceUID:0 details:0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MRMediaRemoteServiceAdjustMediaPlaybackVolumeWithAdjustment_block_invoke;
  v13[3] = &unk_1E769C5B8;
  v14 = v8;
  v12 = v8;
  _MRMediaRemoteServiceProtobuf(v10, 0x10000000000001AuLL, v11, v9, v13);
}

void __MRMediaRemoteServiceAdjustMediaPlaybackVolumeWithAdjustment_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

void MRMediaRemoteServiceSetSystemIsMuted(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a1;
  v10 = [[MRMuteVolumeMessage alloc] initWithMuted:a2 outputDeviceUID:0 details:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __MRMediaRemoteServiceSetSystemIsMuted_block_invoke;
  v12[3] = &unk_1E769C5B8;
  v13 = v7;
  v11 = v7;
  _MRMediaRemoteServiceProtobuf(v9, 0x100000000000007uLL, v10, v8, v12);
}

void __MRMediaRemoteServiceSetSystemIsMuted_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

void MRMediaRemoteServiceGetGameControllerRemoteInputMode(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  kdebug_trace();
  v7 = a1;
  v8 = MRCreateXPCMessage(0x600000000000001uLL);
  v9 = [v7 connection];

  if (v5 && v6)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __MRMediaRemoteServiceGetGameControllerRemoteInputMode_block_invoke;
    handler[3] = &unk_1E769C4D0;
    v11 = v6;
    xpc_connection_send_message_with_reply(v9, v8, v5, handler);
  }

  else
  {
    xpc_connection_send_message(v9, v8);

    kdebug_trace();
  }
}

uint64_t __MRMediaRemoteServiceGetGameControllerRemoteInputMode_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  if (xdict == MEMORY[0x1E69E9E18] || xdict == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
  }

  else
  {
    xpc_dictionary_get_uint64(xdict, "MRXPC_GAMECONTROLLER_INPUT_MODE_KEY");
  }

  (*(*(a1 + 32) + 16))();

  return kdebug_trace();
}

void MRMediaRemoteServiceSetGameControllerRemoteInputMode(void *a1, unsigned int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x600000000000002uLL);
  xpc_dictionary_set_uint64(v10, "MRXPC_GAMECONTROLLER_INPUT_MODE_KEY", a2);
  if (v7 && v8)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __MRMediaRemoteServiceSetGameControllerRemoteInputMode_block_invoke;
    v14[3] = &unk_1E769AD30;
    v15 = v8;
    v11 = _MRServiceCreateErrorHandlerBlock(v14);
    v12 = [v9 connection];
    xpc_connection_send_message_with_reply(v12, v10, v7, v11);
  }

  else
  {
    v13 = [v9 connection];
    xpc_connection_send_message(v13, v10);

    kdebug_trace();
  }
}

uint64_t __MRMediaRemoteServiceSetGameControllerRemoteInputMode_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  return kdebug_trace();
}

void MRMediaRemoteServiceTelevisionServerDeletePairingIdentity(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  kdebug_trace();
  v7 = a1;
  v8 = MRCreateXPCMessage(0x600000000000003uLL);
  if (v5 && v6)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __MRMediaRemoteServiceTelevisionServerDeletePairingIdentity_block_invoke;
    v12[3] = &unk_1E769AD30;
    v13 = v6;
    v9 = _MRServiceCreateErrorHandlerBlock(v12);
    v10 = [v7 connection];
    xpc_connection_send_message_with_reply(v10, v8, v5, v9);
  }

  else
  {
    v11 = [v7 connection];
    xpc_connection_send_message(v11, v8);

    kdebug_trace();
  }
}

uint64_t __MRMediaRemoteServiceTelevisionServerDeletePairingIdentity_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  return kdebug_trace();
}

void MRMediaRemoteServiceTelevisionGetPairedDevices(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  kdebug_trace();
  v7 = a1;
  v8 = MRCreateXPCMessage(0x600000000000004uLL);
  v9 = [v7 connection];

  if (v5 && v6)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __MRMediaRemoteServiceTelevisionGetPairedDevices_block_invoke;
    handler[3] = &unk_1E769C4D0;
    v11 = v6;
    xpc_connection_send_message_with_reply(v9, v8, v5, handler);
  }

  else
  {
    xpc_connection_send_message(v9, v8);

    kdebug_trace();
  }
}

void __MRMediaRemoteServiceTelevisionGetPairedDevices_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = MRCreateDataFromXPCMessage(v3, "MRXPC_PAIRED_EXTERNAL_DEVICES_DATA");
  v4 = [MRDeviceInfo deviceInfosFromData:v6];
  v5 = _MRServiceCreateGenericErrorFromReply(v3);

  (*(*(a1 + 32) + 16))();
  kdebug_trace();
}

void MRMediaRemoteServiceTelevisionDeletePairedDevice(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x600000000000005uLL);
  UTF8String = _MRServiceGetUTF8String(a2);
  xpc_dictionary_set_string(v10, "MRXPC_PAIRED_EXTERNAL_DEVICE", UTF8String);
  if (v7 && v8)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __MRMediaRemoteServiceTelevisionDeletePairedDevice_block_invoke;
    v15[3] = &unk_1E769AD30;
    v16 = v8;
    v12 = _MRServiceCreateErrorHandlerBlock(v15);
    v13 = [v9 connection];
    xpc_connection_send_message_with_reply(v13, v10, v7, v12);
  }

  else
  {
    v14 = [v9 connection];
    xpc_connection_send_message(v14, v10);

    kdebug_trace();
  }
}

uint64_t __MRMediaRemoteServiceTelevisionDeletePairedDevice_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  return kdebug_trace();
}

void MRMediaRemoteServiceTelevisionSetMessageLogging(void *a1, BOOL a2)
{
  kdebug_trace();
  v4 = a1;
  message = MRCreateXPCMessage(0x600000000000006uLL);
  xpc_dictionary_set_BOOL(message, "MRXPC_EXTERNAL_DEVICE_LOGGING_KEY", a2);
  v5 = [v4 connection];

  xpc_connection_send_message(v5, message);
}

void MRMediaRemoteServiceTelevisionSendCustomData(void *a1, uint64_t a2, uint64_t a3)
{
  kdebug_trace();
  v6 = a1;
  message = MRCreateXPCMessage(0x60000000000000AuLL);
  MRAddPropertyListToXPCMessage(message, a2, "MRXPC_CUSTOM_DATA_NAME_KEY");
  MRAddPropertyListToXPCMessage(message, a3, "MRXPC_CUSTOM_DATA_KEY");
  v7 = [v6 connection];

  xpc_connection_send_message(v7, message);
}

void __MRMediaRemoteServiceCopyDeviceInfo_block_invoke()
{
  v0 = MRMediaRemoteCopyEntitlements(&unk_1F15774D0);
  v1 = MRMediaRemoteServiceCopyDeviceInfo_entitlements;
  MRMediaRemoteServiceCopyDeviceInfo_entitlements = v0;
}

void MRMediaRemoteServiceSetRecentAVOutputDeviceUID(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x30000000000000EuLL);
  UTF8String = _MRServiceGetUTF8String(a3);
  xpc_dictionary_set_string(v10, "MRXPC_ROUTE_UID_KEY", UTF8String);
  if (v8 && !v7)
  {
    MRMediaRemoteServiceSetRecentAVOutputDeviceUID_cold_1();
LABEL_7:
    v14 = [v9 connection];
    xpc_connection_send_message(v14, v10);

    kdebug_trace();
    goto LABEL_8;
  }

  if (!v7 || !v8)
  {
    goto LABEL_7;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __MRMediaRemoteServiceSetRecentAVOutputDeviceUID_block_invoke;
  v15[3] = &unk_1E769AD30;
  v16 = v8;
  v12 = _MRServiceCreateErrorHandlerBlock(v15);
  v13 = [v9 connection];
  xpc_connection_send_message_with_reply(v13, v10, v7, v12);

LABEL_8:
}

uint64_t __MRMediaRemoteServiceSetRecentAVOutputDeviceUID_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  return kdebug_trace();
}

void MRMediaRemoteServiceGetRecentAVOutputDeviceUIDs(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  v7 = a1;
  v8 = MRCreateXPCMessage(0x30000000000000FuLL);
  v9 = [v7 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetRecentAVOutputDeviceUIDs_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v12 = v5;
  v10 = v5;
  xpc_connection_send_message_with_reply(v9, v8, v6, handler);
}

void __MRMediaRemoteServiceGetRecentAVOutputDeviceUIDs_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v6 = MRCreatePropertyListFromXPCMessage(v3, "MRXPC_OUTPUT_DEVICE_UID_ARRAY_DATA_KEY");
  v7 = v6;
  if (!v6)
  {
    v8 = _MRLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Didn't receive any pickable routes from the reply.", v10, 2u);
    }

    goto LABEL_11;
  }

LABEL_12:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v7);
  }

  kdebug_trace();
}

void MRMediaRemoteServiceUpdateActiveSystemEndpointUID(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  kdebug_trace();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MRMediaRemoteServiceUpdateActiveSystemEndpointUID_block_invoke;
  v11[3] = &unk_1E769C5B8;
  v12 = v7;
  v10 = v7;
  _MRMediaRemoteServiceProtobuf(a1, 0x300000000000011uLL, v9, v8, v11);
}

void __MRMediaRemoteServiceUpdateActiveSystemEndpointUID_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  v4 = *(a1 + 32);
  v5 = [v3 error];

  (*(v4 + 16))(v4, v5);
}

void MRMediaRemoteServiceSetNearbyDevicesToRemoteControl(void *a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  v4 = a1;
  message = MRCreateXPCMessage(0x300000000000022uLL);
  MRAddStringToXPCMessage(message, v3, "MRXPC_HOMEKIT_IDENTIFIER_KEY");

  v5 = [v4 connection];

  xpc_connection_send_message(v5, message);
  kdebug_trace();
}

void MRMediaRemoteServiceCreateDirectEndpointForDevices(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a1;
  v10 = MRCreateXPCMessage(0x300000000000021uLL);
  MRAddPropertyListToXPCMessage(v10, a2, "MRXPC_OUTPUT_DEVICE_UID_ARRAY_DATA_KEY");
  if (v8 && !v7)
  {
    MRMediaRemoteServiceCreateDirectEndpointForDevices_cold_1();
LABEL_7:
    v12 = [v9 connection];
    xpc_connection_send_message(v12, v10);

    goto LABEL_8;
  }

  if (!v7 || !v8)
  {
    goto LABEL_7;
  }

  v11 = [v9 connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceCreateDirectEndpointForDevices_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v14 = v8;
  xpc_connection_send_message_with_reply(v11, v10, v7, handler);

LABEL_8:
}

void __MRMediaRemoteServiceCreateDirectEndpointForDevices_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = MRCreateEndpointFromXPCMessage(v3);
  v4 = _MRServiceCreateGenericErrorFromReply(v3);

  (*(*(a1 + 32) + 16))();
}

void MRMediaRemoteServiceCreateHostedEndpointForDevices(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a1;
  v10 = MRCreateXPCMessage(0x300000000000029uLL);
  MRAddPropertyListToXPCMessage(v10, a2, "MRXPC_OUTPUT_DEVICE_UID_ARRAY_DATA_KEY");
  if (v8 && !v7)
  {
    MRMediaRemoteServiceCreateHostedEndpointForDevices_cold_1();
LABEL_7:
    v12 = [v9 connection];
    xpc_connection_send_message(v12, v10);

    goto LABEL_8;
  }

  if (!v7 || !v8)
  {
    goto LABEL_7;
  }

  v11 = [v9 connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceCreateHostedEndpointForDevices_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v14 = v8;
  xpc_connection_send_message_with_reply(v11, v10, v7, handler);

LABEL_8:
}

void __MRMediaRemoteServiceCreateHostedEndpointForDevices_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = MRCreateEndpointFromXPCMessage(v3);
  v4 = _MRServiceCreateGenericErrorFromReply(v3);

  (*(*(a1 + 32) + 16))();
}

void MRMediaRemoteServiceCreateGroupWithDevices(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = a3;
  v13 = MRCreateXPCMessage(0x300000000000020uLL);
  MRAddPropertyListToXPCMessage(v13, a2, "MRXPC_OUTPUT_DEVICE_UID_ARRAY_DATA_KEY");
  MRAddRequestDetailsToXPCMessage(v13, v12);

  if (v10 && !v9)
  {
    MRMediaRemoteServiceCreateGroupWithDevices_cold_1();
LABEL_7:
    v15 = [v11 connection];
    xpc_connection_send_message(v15, v13);

    goto LABEL_8;
  }

  if (!v9 || !v10)
  {
    goto LABEL_7;
  }

  v14 = [v11 connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceCreateGroupWithDevices_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v17 = v10;
  xpc_connection_send_message_with_reply(v14, v13, v9, handler);

LABEL_8:
}

void __MRMediaRemoteServiceCreateGroupWithDevices_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = MRCreateStringFromXPCMessage(v3, "MRXPC_ROUTE_UID_KEY");
  v4 = _MRServiceCreateGenericErrorFromReply(v3);

  (*(*(a1 + 32) + 16))();
}

void MRMediaRemoteServiceGroupDevicesAndSendCommand(void *a1, uint64_t a2, void **a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  kdebug_trace();
  v11 = a1;
  v12 = MRCreateXPCMessage(0x300000000000017uLL);
  MRAddPropertyListToXPCMessage(v12, a2, "MRXPC_OUTPUT_DEVICE_UID_ARRAY_DATA_KEY");
  MRAddSendCommandToXPCMessage(v12, a3);
  if (v10 && !v9)
  {
    MRMediaRemoteServiceGroupDevicesAndSendCommand_cold_1();
LABEL_7:
    v14 = [v11 connection];
    xpc_connection_send_message(v14, v12);

    kdebug_trace();
    goto LABEL_8;
  }

  if (!v9 || !v10)
  {
    goto LABEL_7;
  }

  v13 = [v11 connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGroupDevicesAndSendCommand_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v16 = v10;
  xpc_connection_send_message_with_reply(v13, v12, v9, handler);

LABEL_8:
}

void __MRMediaRemoteServiceGroupDevicesAndSendCommand_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = MRCreateCommandResultFromXPCMessage(v3);
  [v7 sendError];
  v4 = MRCreatePropertyListFromXPCMessage(v3, "MRXPC_ROUTE_UID_KEY");
  v5 = _MRServiceCreateGenericErrorFromReply(v3);

  v6 = [v7 resultStatuses];
  (*(*(a1 + 32) + 16))();
  kdebug_trace();
}

void MRMediaRemoteServicePredictGroupLeader(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x300000000000019uLL);
  MRAddPropertyListToXPCMessage(v10, a2, "MRXPC_OUTPUT_DEVICE_UID_ARRAY_DATA_KEY");
  if (v8 && !v7)
  {
    MRMediaRemoteServicePredictGroupLeader_cold_1();
    goto LABEL_7;
  }

  if (!v7 || !v8)
  {
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_7:
    Error = MRMediaRemoteCreateError(1);
    v8[2](v8, Error, 0);
    CFRelease(Error);
    kdebug_trace();
    goto LABEL_8;
  }

  v11 = [v9 connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServicePredictGroupLeader_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v14 = v8;
  xpc_connection_send_message_with_reply(v11, v10, v7, handler);

LABEL_8:
}

void __MRMediaRemoteServicePredictGroupLeader_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = MRCreatePropertyListFromXPCMessage(v3, "MRXPC_ROUTE_UID_KEY");
  v4 = _MRServiceCreateGenericErrorFromReply(v3);

  (*(*(a1 + 32) + 16))();
  kdebug_trace();
}

void MRMediaRemoteServiceRemoveFromParentGroup(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a1;
  v10 = MRCreateXPCMessage(0x300000000000018uLL);
  MRAddPropertyListToXPCMessage(v10, a2, "MRXPC_OUTPUT_DEVICE_UID_ARRAY_DATA_KEY");
  if (v8 && !v7)
  {
    MRMediaRemoteServiceRemoveFromParentGroup_cold_1();
LABEL_7:
    v12 = [v9 connection];
    xpc_connection_send_message(v12, v10);

    goto LABEL_8;
  }

  if (!v7 || !v8)
  {
    goto LABEL_7;
  }

  v11 = [v9 connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceRemoveFromParentGroup_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v14 = v8;
  xpc_connection_send_message_with_reply(v11, v10, v7, handler);

LABEL_8:
}

void __MRMediaRemoteServiceRemoveFromParentGroup_block_invoke(uint64_t a1, void *a2)
{
  if (a2 == MEMORY[0x1E69E9E18] || a2 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    v4 = 0;
  }

  else
  {
    v4 = MRCreateClientErrorFromXPCMessage(a2);
  }

  v5 = v4;
  (*(*(a1 + 32) + 16))();
}

id MRMediaRemoteServiceAddVirtualOutputDevice(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = a2;
  v8 = MRCreateXPCMessage(0x30000000000001EuLL);
  MRAddStringToXPCMessage(v8, v7, "MRXPC_JSON_DATA_BLOCK");

  xpc_dictionary_set_value(v8, "MRXPC_CUSTOM_XPC_ENDPOINT_KEY", v6);
  v9 = [v5 connection];

  v10 = xpc_connection_send_message_with_reply_sync(v9, v8);
  if (v10 == MEMORY[0x1E69E9E18] || v10 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
  }

  else
  {
    Error = MRCreateClientErrorFromXPCMessage(v10);
  }

  v12 = Error;

  return v12;
}

void *MRMediaRemoteServiceCopyVirtualOutputDevices(void *a1)
{
  if (MRProcessIsMediaRemoteDaemon())
  {
    MRMediaRemoteServiceCopyVirtualOutputDevices_cold_1();
  }

  v2 = a1;
  v3 = MRCreateXPCMessage(0x30000000000001FuLL);
  v4 = [v2 connection];

  v5 = xpc_connection_send_message_with_reply_sync(v4, v3);
  v6 = 0;
  if (v5 != MEMORY[0x1E69E9E18] && v5 != MEMORY[0x1E69E9E20])
  {
    v6 = MRCreateArrayFomXPCMessage(v5, "MRXPC_JSON_DATA_BLOCK", &__block_literal_global_276);
  }

  v7 = v6;

  return v6;
}

uint64_t __MRMediaRemoteServiceCopyVirtualOutputDevices_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MRAVVirtualOutputDevice alloc];

  return [(MRAVVirtualOutputDevice *)v3 initWithJSONData:a2 pipeEndpoint:0];
}

uint64_t MRMediaRemoteServiceSupportsSystemPairing(void *a1)
{
  kdebug_trace();
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = a1;
  v3 = MRCreateXPCMessage(0x10000000000000DuLL);
  v4 = dispatch_semaphore_create(0);
  v5 = [v2 connection];
  v6 = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __MRMediaRemoteServiceSupportsSystemPairing_block_invoke;
  v10[3] = &unk_1E769C640;
  v12 = &v13;
  v7 = v4;
  v11 = v7;
  xpc_connection_send_message_with_reply(v5, v3, v6, v10);

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  kdebug_trace();
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

void sub_1A291D0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t __MRMediaRemoteServiceSupportsSystemPairing_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  if (xdict == MEMORY[0x1E69E9E18] || xdict == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_BOOL(xdict, "MRXPC_APP_INSTALLED_KEY");
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

void MRMediaRemoteServiceVirtualVoiceGetDevices(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  v7 = a1;
  v8 = MRCreateXPCMessage(0x900000000000001uLL);
  v9 = [v7 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceVirtualVoiceGetDevices_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v12 = v5;
  v10 = v5;
  xpc_connection_send_message_with_reply(v9, v8, v6, handler);
}

void __MRMediaRemoteServiceVirtualVoiceGetDevices_block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    v6 = 0;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = MRCreatePropertyListFromXPCMessage(v4, "MRXPC_VOICE_INPUT_DEVICES_DATA_KEY");
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          v14 = [MRVirtualVoiceInputDevice alloc];
          v15 = [(MRVirtualVoiceInputDevice *)v14 initWithData:v13, v17];
          [v7 addObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v6 = [v7 copy];
  }

  (*(*(a1 + 32) + 16))();
  kdebug_trace();

  v16 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteServiceVirtualVoiceRegisterDevice(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x900000000000002uLL);
  ExternalRepresentation = MRVirtualVoiceInputDeviceDescriptorCreateExternalRepresentation(a2);
  v12 = ExternalRepresentation;
  if (ExternalRepresentation)
  {
    xpc_dictionary_set_data(v10, "MRXPC_VOICE_INPUT_DESCRIPTOR_DATA_KEY", [ExternalRepresentation bytes], objc_msgSend(ExternalRepresentation, "length"));
  }

  v13 = [v9 connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceVirtualVoiceRegisterDevice_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v16 = v7;
  v14 = v7;
  xpc_connection_send_message_with_reply(v13, v10, v8, handler);
}

void __MRMediaRemoteServiceVirtualVoiceRegisterDevice_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v12 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    if (!v6)
    {
      goto LABEL_12;
    }

    uint64 = 0;
    v7 = 1;
    goto LABEL_10;
  }

  uint64 = xpc_dictionary_get_uint64(v3, "MRXPC_VOICE_INPUT_DEVICE_ID_KEY");
  v7 = MRErrorFromXPCMessage(v12);
  v10 = *(a1 + 32);
  v5 = (a1 + 32);
  v9 = v10;
  if (v10)
  {
    if (!v7)
    {
      Error = 0;
      goto LABEL_11;
    }

LABEL_10:
    Error = MRMediaRemoteCreateError(v7);
    v9 = *v5;
LABEL_11:
    (*(v9 + 16))(v9, uint64, Error);
  }

LABEL_12:
  kdebug_trace();
}

void MRMediaRemoteServiceVirtualVoiceUnregisterDevice(void *a1, unsigned int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x900000000000003uLL);
  xpc_dictionary_set_uint64(v10, "MRXPC_VOICE_INPUT_DEVICE_ID_KEY", a2);
  if (v7 && v8)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __MRMediaRemoteServiceVirtualVoiceUnregisterDevice_block_invoke;
    v14[3] = &unk_1E769AD30;
    v15 = v8;
    v11 = _MRServiceCreateErrorHandlerBlock(v14);
    v12 = [v9 connection];
    xpc_connection_send_message_with_reply(v12, v10, v7, v11);
  }

  else
  {
    v13 = [v9 connection];
    xpc_connection_send_message(v13, v10);

    kdebug_trace();
  }
}

uint64_t __MRMediaRemoteServiceVirtualVoiceUnregisterDevice_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  return kdebug_trace();
}

void MRMediaRemoteServiceVirtualVoiceProcessAudioData(void *a1, unsigned int a2, const char *a3, double a4, double a5, float a6)
{
  kdebug_trace();
  v12 = a1;
  xdict = MRCreateXPCMessage(0x900000000000005uLL);
  xpc_dictionary_set_uint64(xdict, "MRXPC_VOICE_INPUT_DEVICE_ID_KEY", a2);
  v13 = *MEMORY[0x1E695E480];
  v14 = MRAudioDataBlockCreate();
  MRAudioDataBlockSetBuffer(v14, a3);
  MRAudioDataBlockSetTimestamp(v14, a4, a5);
  MRAudioDataBlockSetGain(v14, a6);
  ExternalRepresentation = MRAudioDataBlockCreateExternalRepresentation(v14);
  xpc_dictionary_set_data(xdict, "MRXPC_VOICE_DATA_PROTOBUF_DATA_KEY", [ExternalRepresentation bytes], objc_msgSend(ExternalRepresentation, "length"));
  v16 = [v12 connection];

  xpc_connection_send_message(v16, xdict);
}

void MRMediaRemoteServiceVirtualVoiceSetRecordingState(void *a1, unsigned int a2, unsigned int a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  kdebug_trace();
  v11 = a1;
  v12 = MRCreateXPCMessage(0x900000000000004uLL);
  xpc_dictionary_set_uint64(v12, "MRXPC_VOICE_INPUT_DEVICE_ID_KEY", a2);
  xpc_dictionary_set_uint64(v12, "MRXPC_VOICE_RECORDING_STATE", a3);
  if (v10 && !v9)
  {
    MRMediaRemoteServiceVirtualVoiceSetRecordingState_cold_1();
LABEL_7:
    v15 = [v11 connection];
    xpc_connection_send_message(v15, v12);

    kdebug_trace();
    goto LABEL_8;
  }

  if (!v9 || !v10)
  {
    goto LABEL_7;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __MRMediaRemoteServiceVirtualVoiceSetRecordingState_block_invoke;
  v16[3] = &unk_1E769AD30;
  v17 = v10;
  v13 = _MRServiceCreateErrorHandlerBlock(v16);
  v14 = [v11 connection];
  xpc_connection_send_message_with_reply(v14, v12, v9, v13);

LABEL_8:
}