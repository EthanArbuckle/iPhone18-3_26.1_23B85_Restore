void MRMediaRemoteSendImplicitCommandsForOptions(int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 == 122)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __MRMediaRemoteSendImplicitCommandsForOptions_block_invoke;
    v13[3] = &unk_1E769E550;
    v7 = v5;
    v14 = v7;
    v8 = MEMORY[0x1A58E3570](v13);
    v9 = [v7 objectForKeyedSubscript:@"kMRMediaRemoteOptionShuffleMode"];

    if (v9)
    {
      v10 = v8[2](v8, 26);
      MRMediaRemoteSendCommandToPlayer(26, v10, v6, 0, 0, 0);
    }

    v11 = [v7 objectForKeyedSubscript:@"kMRMediaRemoteOptionRepeatMode"];

    if (v11)
    {
      v12 = v8[2](v8, 25);
      MRMediaRemoteSendCommandToPlayer(25, v12, v6, 0, 0, 0);
    }
  }
}

id __MRMediaRemoteSendImplicitCommandsForOptions_block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mutableCopy];
  [v1 setObject:0 forKeyedSubscript:@"kMRMediaRemoteOptionSystemAppPlaybackQueueData"];
  v2 = MRMediaRemoteCopyCommandDescription(26);
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"implicit%@Command", v2];
  [v1 setObject:v3 forKeyedSubscript:@"kMRMediaRemoteOptionRemoteControlInterfaceIdentifier"];

  return v1;
}

uint64_t _MRApplicationConnectionMessageHeaderProtobufReadFrom(uint64_t a1, void *a2)
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

os_log_t _MRLogCategoryDefault()
{
  v0 = os_log_create("com.apple.amp.mediaremote", "Default");

  return v0;
}

os_log_t _MRLogCategoryMirroringView()
{
  v0 = os_log_create("com.apple.amp.mediaremote", "MirroringView");

  return v0;
}

uint64_t MRAVEndpointObserverCreateWithOutputDeviceUID(uint64_t a1)
{
  v2 = [MRAVEndpointObserver alloc];

  return [(MRAVEndpointObserver *)v2 initWithOutputDeviceUID:a1];
}

void sub_1A2987EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A29892E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2989AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2989D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A298A270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _MRLanguageOptionGroupProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
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
        v21 = objc_alloc_init(_MRLanguageOptionProtobuf);
        [a1 addLanguageOptions:v21];
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              LOBYTE(v24[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v24[0] & 0x7F) << v14;
              if ((v24[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_37;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_37:
            *(a1 + 24) = v20;
          }

          else if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_38;
        }

        v21 = objc_alloc_init(_MRLanguageOptionProtobuf);
        objc_storeStrong((a1 + 8), v21);
      }

      v24[0] = 0;
      v24[1] = 0;
      if (!PBReaderPlaceMark() || !_MRLanguageOptionProtobufReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_38:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRTextEditingAttributesProtobufReadFrom(uint64_t a1, void *a2)
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
        v14 = PBReaderReadString();
        v15 = 16;
LABEL_22:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_22;
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

    v16 = objc_alloc_init(_MRTextInputTraitsProtobuf);
    objc_storeStrong((a1 + 8), v16);
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !_MRTextInputTraitsProtobufReadFrom(v16, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRApplicationConnectionMessageProtobufReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRApplicationConnectionMessageHeaderProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !_MRApplicationConnectionMessageHeaderProtobufReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v13 = *(a1 + 16);
    *(a1 + 16) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRApplicationConnectionContextProtobufReadFrom(uint64_t a1, void *a2)
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
        v14 = PBReaderReadString();
        v15 = 24;
LABEL_22:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_22;
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

    v16 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
    objc_storeStrong((a1 + 8), v16);
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v16->super.super.isa, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRSendLyricsEventMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(_MRLyricsEventProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRLyricsEventProtobufReadFrom(v13, a2))
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

id MRCreateCryptoError(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = a1;
  v3 = [v1 alloc];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v5 = [v3 initWithDomain:@"kMRMediaRemoteFrameworkErrorDomain" code:23 userInfo:v4];
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

void sub_1A2991C0C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A2991F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A29926EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2992BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2992FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t MRAVRoutingDiscoverySessionCreate(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MRAVRoutingDiscoverySession discoverySessionWithEndpointFeatures:a1];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVRoutingDiscoverySessionCreateRemoteControlThrottled()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MRAVRoutingDiscoverySessionCreate(8);
  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t MRAVRoutingDiscoverySessionGetEndpointFeatures(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 endpointFeatures];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVRoutingDiscoverySessionGetDiscoveryMode(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 discoveryMode];
  objc_autoreleasePoolPop(v2);
  return v3;
}

void MRAVRoutingDiscoverySessionSetDiscoveryMode(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  [a1 setDiscoveryMode:a2];

  objc_autoreleasePoolPop(v4);
}

uint64_t MRAVRoutingDiscoverySessionAlwaysAllowUpdates(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 alwaysAllowUpdates];
  objc_autoreleasePoolPop(v2);
  return v3;
}

void MRAVRoutingDiscoverySessionSetAlwaysAllowUpdates(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  [a1 setAlwaysAllowUpdates:a2];

  objc_autoreleasePoolPop(v4);
}

uint64_t MRAVRoutingDiscoverySessionGetTargetAudioSessionID(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 targetAudioSessionID];
  objc_autoreleasePoolPop(v2);
  return v3;
}

void MRAVRoutingDiscoverySessionSetTargetAudioSessionID(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  [a1 setTargetAudioSessionID:a2];

  objc_autoreleasePoolPop(v4);
}

uint64_t MRAVRoutingDiscoverySessionCopyRoutingContextUID(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 routingContextUID];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

void MRAVRoutingDiscoverySessionSetRoutingContextUID(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  [a1 setRoutingContextUID:a2];

  objc_autoreleasePoolPop(v4);
}

uint64_t MRAVRoutingDiscoverySessionDevicePresenceDetected(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 devicePresenceDetected];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVRoutingDiscoverySessionHasAvailableEndpoints(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 devicePresenceDetected];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVRoutingDiscoverySessionCopyAvailableEndpoints(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 availableEndpoints];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRAVRoutingDiscoverySessionCopyAvailableOutputDevices(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 availableOutputDevices];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRAVRoutingDiscoverySessionAddEndpointsChangedCallback(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MRAVRoutingDiscoverySessionAddEndpointsChangedCallback_block_invoke;
  v9[3] = &unk_1E769E878;
  v5 = v3;
  v10 = v5;
  v6 = [a1 addEndpointsChangedCallback:v9];
  v7 = [v6 copy];

  objc_autoreleasePoolPop(v4);
  return v7;
}

void MRAVRoutingDiscoverySessionRemoveEndpointsChangedCallback(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  [a1 removeEndpointsChangedCallback:a2];

  objc_autoreleasePoolPop(v4);
}

uint64_t MRAVRoutingDiscoverySessionAddOutputDevicesChangedCallback(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MRAVRoutingDiscoverySessionAddOutputDevicesChangedCallback_block_invoke;
  v9[3] = &unk_1E769E878;
  v5 = v3;
  v10 = v5;
  v6 = [a1 addOutputDevicesChangedCallback:v9];
  v7 = [v6 copy];

  objc_autoreleasePoolPop(v4);
  return v7;
}

void MRAVRoutingDiscoverySessionRemoveOutputDevicesChangedCallback(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  [a1 removeOutputDevicesChangedCallback:a2];

  objc_autoreleasePoolPop(v4);
}

void sub_1A299480C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 96));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1A299858C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MRUserIdentityProtobufReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 28) |= 1u;
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
        *(a1 + 24) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 8;
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
          v15 = 16;
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

uint64_t _MRVideoThumbnailRequestProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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
        *(a1 + 40) |= 2u;
        LODWORD(v31[0]) = 0;
        v19 = [a2 position] + 4;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 4, v20 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:v31 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v26 = v31[0];
        v27 = 36;
LABEL_45:
        *(a1 + v27) = v26;
        goto LABEL_46;
      }

      if (v13 == 1)
      {
        if ((v12 & 7) == 2)
        {
          v31[0] = 0;
          v31[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v15 = [a2 position];
            if (v15 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v32 = 0;
            v16 = [a2 position] + 8;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v32 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            PBRepeatedDoubleAdd();
          }

          PBReaderRecallMark();
        }

        else
        {
          v31[0] = 0;
          v23 = [a2 position] + 8;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:v31 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedDoubleAdd();
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 40) |= 1u;
    LODWORD(v31[0]) = 0;
    v21 = [a2 position] + 4;
    if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 4, v22 <= objc_msgSend(a2, "length")))
    {
      v28 = [a2 data];
      [v28 getBytes:v31 range:{objc_msgSend(a2, "position"), 4}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
    }

    else
    {
      [a2 _setError];
    }

    v26 = v31[0];
    v27 = 32;
    goto LABEL_45;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRPlaybackQueueParticipantProtobufReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(_MRUserIdentityProtobuf);
    objc_storeStrong((a1 + 16), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !_MRUserIdentityProtobufReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MRUniversalTrackIdentifierCreateURL(int a1, uint64_t a2)
{
  if ((a1 - 1) > 2 || !a2)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@/%@", @"mediaremoteuti", off_1E769EA80[a1 - 1], a2];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];

  return v3;
}

uint64_t MRUniversalTrackIdentifierCreateURLWithIntegerBaseID(int a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a2];
  URL = MRUniversalTrackIdentifierCreateURL(a1, v3);

  return URL;
}

uint64_t MRUniversalTrackIdentifierTypeFromURL(void *a1)
{
  v1 = [a1 host];
  if ([v1 isEqualToString:@"library"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"multiverse"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"store"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t MRUniversalTrackIdentifierBaseIDIntegerFromURL(const __CFURL *a1)
{
  PathComponent = CFURLCopyLastPathComponent(a1);
  v2 = [(__CFString *)PathComponent longLongValue];

  return v2;
}

CFStringRef MRUniversalTrackIdentifierCopyTypeDescription(int a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return CFStringCreateCopy(*MEMORY[0x1E695E480], off_1E769EA80[a1 - 1]);
  }
}

id __MRAddContentItemsToXPCMessage_block_invoke(uint64_t a1, void *a2)
{
  ExternalRepresentation = MRContentItemCreateExternalRepresentation(*MEMORY[0x1E695E480], a2);

  return ExternalRepresentation;
}

uint64_t MRCFErrorCreateExternalRepresentation(uint64_t result)
{
  if (result)
  {
    MSVArchivedDataWithRootObject();
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

void MRAddOriginsToXPCMessage(void *a1, const __CFArray *a2)
{
  v3 = a1;
  if (a2)
  {
    v9 = v3;
    Count = CFArrayGetCount(a2);
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v7 = CFArrayGetValueAtIndex(a2, i);
        v8 = [v7 data];
        if (v8)
        {
          [v5 addObject:v8];
        }
      }
    }

    MRAddPropertyListToXPCMessage(v9, v5, "MRXPC_AVAILABLE_ORIGINS_DATA_KEY");

    v3 = v9;
  }
}

void MRAddPlayerToXPCMessage(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = a1;
    v5 = [a2 data];
    v4 = v5;
    xpc_dictionary_set_data(v3, "MRXPC_NOWPLAYING_PLAYER_DATA_KEY", [v5 bytes], objc_msgSend(v5, "length"));
  }
}

void MRAddSendCommandToXPCMessage(void *a1, void **a2)
{
  v3 = a1;
  xpc_dictionary_set_uint64(v3, "MRXPC_COMMAND_KEY", *a2);
  MRAddPlayerPathToXPCMessage(v3, a2[2]);
  v4 = [a2[1] mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  if ([v7 count])
  {
    v10 = 0;
    v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:200 options:0 error:&v10];
    v9 = v8;
    if (v8)
    {
      xpc_dictionary_set_data(v3, "MRXPC_COMMAND_OPTIONS_KEY", [v8 bytes], objc_msgSend(v8, "length"));
    }
  }
}

void MRAddVideoThumbnailRequestToXPCMessage(void *a1, uint64_t a2)
{
  xdict = a1;
  v3 = objc_alloc_init(_MRVideoThumbnailRequestProtobuf);
  LODWORD(v4) = *(a2 + 2056);
  [(_MRVideoThumbnailRequestProtobuf *)v3 setThumbnailsWidth:v4];
  LODWORD(v5) = *(a2 + 2060);
  [(_MRVideoThumbnailRequestProtobuf *)v3 setThumbnailsHeight:v5];
  if (*(a2 + 2048))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      [(_MRVideoThumbnailRequestProtobuf *)v3 addTimeIntervals:*(a2 + 8 * v6)];
      v6 = v7;
    }

    while (*(a2 + 2048) > v7++);
  }

  v9 = [(_MRVideoThumbnailRequestProtobuf *)v3 data];
  xpc_dictionary_set_data(xdict, "MRXPC_VIDEO_THUMBNAILS_REQ_DATA_KEY", [v9 bytes], objc_msgSend(v9, "length"));
}

void MRAddVideoThumbnailsToXPCMessage(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        ExternalRepresentation = MRVideoThumbnailCreateExternalRepresentation(*(*(&v14 + 1) + 8 * v10));
        [v5 addObject:{ExternalRepresentation, v14}];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:0];
  xpc_dictionary_set_data(v3, "MRXPC_VIDEO_THUMBNAILS_ARRAY_DATA_KEY", [v12 bytes], objc_msgSend(v12, "length"));

  v13 = *MEMORY[0x1E69E9840];
}

void MRAddApplicationActivityToXPCMessage(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v3 = a1;
    ExternalRepresentation = _MRApplicationActivityCreateExternalRepresentation(a2);
    MRAddDataToXPCMessage(v3, ExternalRepresentation, "MRXPC_APPLICATION_ACTIVITY_DATA_KEY");
  }
}

void MRAddNowPlayingStateToXPCMessage(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1;
    v5 = [a2 data];
    v4 = v5;
    xpc_dictionary_set_data(v3, "MRXPC_NOWPLAYING_STATE_DATA_KEY", [v5 bytes], objc_msgSend(v5, "length"));
  }
}

void MRAddDiagnosticToXPCMessage(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = a1;
    ExternalRepresentation = MRDiagnosticCreateExternalRepresentation(a2);
    v4 = ExternalRepresentation;
    xpc_dictionary_set_data(v3, "MRXPC_DIAGNOSTIC_DATA_KEY", [ExternalRepresentation bytes], objc_msgSend(ExternalRepresentation, "length"));
  }
}

void MRAddPlaybackSessionToXPCMessage(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = a1;
    v4 = [a2 data];
    MRAddDataToXPCMessage(v3, v4, "MRXPC_PLAYBACK_SESSION");
  }
}

void MRAddCommandResultToXPCMessage(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = a1;
    v4 = [a2 data];
    MRAddDataToXPCMessage(v3, v4, "MRXPC_COMMAND_RESULT_DATA_KEY");
  }
}

uint64_t MRCreateArrayFomXPCMessage(void *a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = MRCreateDataFromXPCMessage(a1, a2);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __MRCreateArrayFomXPCMessage_block_invoke;
  v10[3] = &unk_1E769EAC0;
  v11 = v5;
  v7 = v5;
  v8 = MRCreateArrayFromData(v6, v10);

  return v8;
}

uint64_t MRCreateClientErrorFromExternalRepresentation(uint64_t result)
{
  if (result)
  {
    objc_opt_class();
    MSVUnarchivedObjectOfClass();
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

id __MRCreateArrayFomXPCMessage_block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

uint64_t MRCreateSupportedCommandsFromXPCMessage(void *a1)
{
  v1 = MRCreateDataFromXPCMessage(a1, "MRXPC_COMMAND_INFO_ARRAY_DATA_KEY");
  v2 = [MRCommandInfo commandInfosFromData:v1];

  return v2;
}

uint64_t __MRCreateOriginArrayFromXPCMessage_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MROrigin alloc];

  return [(MROrigin *)v3 initWithData:a2];
}

uint64_t __MRCreateClientArrayFromXPCMessage_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MRClient alloc];

  return [(MRClient *)v3 initWithData:a2];
}

MRPlayer *MRCreatePlayerFromXPCMessage(void *a1)
{
  v1 = MRCreateDataFromXPCMessage(a1, "MRXPC_NOWPLAYING_PLAYER_DATA_KEY");
  if (v1)
  {
    v2 = [[MRPlayer alloc] initWithData:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __MRCreatePlayerArrayFromXPCMessage_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MRPlayer alloc];

  return [(MRPlayer *)v3 initWithData:a2];
}

id MRCreatePlayerPathArrayFromXPCMessage(void *a1)
{
  v1 = MRCreateArrayFomXPCMessage(a1, "MRXPC_NOWPLAYING_PLAYER_PATH_ARRAY_DATA_KEY", &__block_literal_global_78_0);

  return v1;
}

uint64_t __MRCreatePlayerPathArrayFromXPCMessage_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MRPlayerPath alloc];

  return [(MRPlayerPath *)v3 initWithData:a2];
}

MRNowPlayingState *MRCreateNowPlayingStateFromXPCMessage(void *a1)
{
  v1 = MRCreateDataFromXPCMessage(a1, "MRXPC_NOWPLAYING_STATE_DATA_KEY");
  if (v1)
  {
    v2 = [[MRNowPlayingState alloc] initWithData:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void MRVideoThumbnailRequestFromXPCMessage(void *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = MRCreateDataFromXPCMessage(a1, "MRXPC_VIDEO_THUMBNAILS_REQ_DATA_KEY");
  v3 = [[_MRVideoThumbnailRequestProtobuf alloc] initWithData:v10];
  bzero(a2, 0x800uLL);
  if ([(_MRVideoThumbnailRequestProtobuf *)v3 timeIntervalsCount]> 0xFF)
  {
    v4 = 256;
  }

  else
  {
    v4 = [(_MRVideoThumbnailRequestProtobuf *)v3 timeIntervalsCount];
  }

  *(a2 + 2048) = v4;
  [(_MRVideoThumbnailRequestProtobuf *)v3 thumbnailsWidth];
  *(a2 + 2056) = v5;
  [(_MRVideoThumbnailRequestProtobuf *)v3 thumbnailsHeight];
  *(a2 + 2060) = v6;
  if (v4)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      *(a2 + 8 * v7) = [(_MRVideoThumbnailRequestProtobuf *)v3 timeIntervals][8 * v7];
      v7 = v8;
    }

    while (v4 > v8++);
  }
}

void *MRCreateVideoThumbnailsFromXPCMessage(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = MRCreateDataFromXPCMessage(a1, "MRXPC_VIDEO_THUMBNAILS_ARRAY_DATA_KEY");
  v2 = [MEMORY[0x1E696AE40] propertyListWithData:v1 options:0 format:0 error:0];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = MRVideoThumbnailCreateFromExternalRepresentation(*(*(&v12 + 1) + 8 * v8));
        [v3 addObject:{v9, v12}];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t MRCreateAppActivityFromXPCMessage(void *a1)
{
  v1 = MRCreateDataFromXPCMessage(a1, "MRXPC_APPLICATION_ACTIVITY_DATA_KEY");
  v2 = v1;
  if (v1)
  {
    v3 = _MRApplicationActivityCreateWithExternalRepresentation(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

MRPlaybackSession *MRCreatePlaybackSessionFromXPCMessage(void *a1)
{
  v1 = a1;
  v2 = [MRPlaybackSession alloc];
  v3 = MRCreateDataFromXPCMessage(v1, "MRXPC_PLAYBACK_SESSION");

  v4 = [(MRPlaybackSession *)v2 initWithData:v3];

  return v4;
}

MRCommandResult *MRCreateCommandResultFromXPCMessage(void *a1)
{
  v1 = a1;
  v2 = MRCreateClientErrorFromXPCMessage(v1);
  v3 = MRCreateDataFromXPCMessage(v1, "MRXPC_COMMAND_RESULT_DATA_KEY");

  if (!(v2 | v3))
  {
    v2 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:1];
  }

  if (v2 && !MRMediaRemoteErrorIsInformational(v2))
  {
    v4 = [[MRCommandResult alloc] initWithResultStatuses:0 sendError:11 playerPath:0];
  }

  else
  {
    v4 = [[MRCommandResult alloc] initWithData:v3];
  }

  v5 = v4;

  return v5;
}

float MRColorFromXPCMessage(void *a1)
{
  v3 = 0;
  v4 = 0;
  length = 0;
  if (xpc_dictionary_get_data(a1, "MRXPC_COLOR_DATA_KEY", &length))
  {
    __memcpy_chk();
  }

  return *&v3;
}

uint64_t MRCreateDiagnosticFromXPCMessage(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = MRCreateDataFromXPCMessage(a1, "MRXPC_DIAGNOSTIC_DATA_KEY");
  v2 = v1;
  if (v1)
  {
    v3 = MRDiagnosticCreateFromExternalRepresentation(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *MRAddContentItemsToUserInfo(void *a1, const char *a2)
{
  if (a1)
  {
    if (a2)
    {
      return [a1 setObject:a2 forKeyedSubscript:@"kMRMediaRemoteUpdatedContentItemsUserInfoKey"];
    }
  }

  return a1;
}

void *MRPlaybackQueueToUserInfo(void *a1, const char *a2)
{
  if (a1)
  {
    if (a2)
    {
      return [a1 setObject:a2 forKeyedSubscript:@"kMRPlaybackQueueUserInfoKey"];
    }
  }

  return a1;
}

MRClient *__MRCreateDecodedUserInfo_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRClient alloc] initWithData:v2];

  return v3;
}

MRPlayer *__MRCreateDecodedUserInfo_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRPlayer alloc] initWithData:v2];

  return v3;
}

MRDeviceInfo *__MRCreateDecodedUserInfo_block_invoke_98(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRDeviceInfo alloc] initWithData:v2];

  return v3;
}

MRDeviceInfo *__MRCreateDecodedUserInfo_block_invoke_2_101(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRDeviceInfo alloc] initWithData:v2];

  return v3;
}

MROrigin *__MRCreateDecodedUserInfo_block_invoke_3_104(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MROrigin alloc] initWithData:v2];

  return v3;
}

MRPlaybackSessionRequest *__MRCreateDecodedUserInfo_block_invoke_107(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRPlaybackSessionRequest alloc] initWithData:v2];

  return v3;
}

MRPlaybackSession *__MRCreateDecodedUserInfo_block_invoke_2_112(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRPlaybackSession alloc] initWithData:v2];

  return v3;
}

MRPlaybackQueueRequest *__MRCreateDecodedUserInfo_block_invoke_3_115(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRPlaybackQueueRequest alloc] initWithData:v2];

  return v3;
}

MRPlaybackQueue *__MRCreateDecodedUserInfo_block_invoke_4_118(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRPlaybackQueue alloc] initWithData:v2];

  return v3;
}

MRAVDistantOutputDevice *__MRCreateDecodedUserInfo_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MRAVDistantOutputDevice alloc];
  v4 = [[_MRAVOutputDeviceDescriptorProtobuf alloc] initWithData:v2];

  v5 = [(MRAVDistantOutputDevice *)v3 initWithDescriptor:v4];

  return v5;
}

id __MRCreateEncodedUserInfo_block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 descriptor];
  v3 = [v2 data];

  return v3;
}

uint64_t _MRReceivedCommandAppOptionsProtobufReadFrom(uint64_t a1, void *a2)
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

uint64_t _MRPromptForRouteAuthorizationMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
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

LABEL_36:
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
        objc_storeStrong((a1 + 16), v13);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_MRAVOutputDeviceDescriptorProtobufReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRSystemPlaybackGenericTracklistQueueProtobufReadFrom(uint64_t a1, void *a2)
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
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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

      switch(v13)
      {
        case 3:
          v21 = PBReaderReadData();
          v22 = 8;
LABEL_44:
          v29 = *(a1 + v22);
          *(a1 + v22) = v21;

          goto LABEL_56;
        case 4:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            v35 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v35 & 0x7F) << v23;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_50;
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

LABEL_50:
          v31 = 28;
          break;
        case 5:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v34 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34 & 0x7F) << v14;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_54;
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

LABEL_54:
          v31 = 24;
          break;
        default:
          goto LABEL_45;
      }

      *(a1 + v31) = v20;
LABEL_56:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v21 = PBReaderReadString();
      v22 = 16;
    }

    else
    {
      if (v13 != 2)
      {
LABEL_45:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_56;
      }

      v21 = PBReaderReadString();
      v22 = 32;
    }

    goto LABEL_44;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRCreateApplicationConnectionMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(_MRApplicationConnectionContextProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_MRApplicationConnectionContextProtobufReadFrom(v13, a2))
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

    v13 = objc_alloc_init(_MRApplicationConnectionRequestInfoProtobuf);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_MRApplicationConnectionRequestInfoProtobufReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void sub_1A29A4234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A29A44DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A29A47CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A29A4F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A29A51D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A29A5458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MRSendVoiceInputMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(_MRAudioDataBlockProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRAudioDataBlockProtobufReadFrom(v13, a2))
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

uint64_t _MRGroupSessionJoinResponseMessageProtobufReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 1)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_32;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v19;
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

__CFString *MRNowPlayingBestAvailableAudioFormatDescription(uint64_t a1)
{
  v1 = @"Stereo";
  if (a1 == 1)
  {
    v1 = @"Multichannel";
  }

  if (a1 == 2)
  {
    return @"Atmos";
  }

  else
  {
    return v1;
  }
}

uint64_t __MediaExperienceLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaExperienceLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MRRegisterHIDDeviceMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(_MRVirtualTouchDeviceDescriptorProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRVirtualTouchDeviceDescriptorProtobufReadFrom(v13, a2))
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

uint64_t _MRPlaybackSessionMigrateRequestMessageProtobufReadFrom(id *a1, void *a2)
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
        v14 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
        objc_storeStrong(a1 + 2, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v14->super.super.isa, a2))
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
        v14 = objc_alloc_init(_MRPlaybackSessionProtobuf);
        objc_storeStrong(a1 + 1, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_MRPlaybackSessionProtobufReadFrom(v14, a2))
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

    v14 = objc_alloc_init(_MRPlaybackSessionMigrateRequestProtobuf);
    objc_storeStrong(a1 + 3, v14);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_MRPlaybackSessionMigrateRequestProtobufReadFrom(v14, a2))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRCUPSShowSetupCodeCallback(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (!a4)
  {
    _MRCUPSShowSetupCodeCallback_cold_1();
  }

  v7 = a4;
  v8 = [(MRCoreUtilsPairingSession *)v7 _generateSetupCodeWithMaximumLength:a3];
  [v8 getCString:a2 maxLength:a3 encoding:4];
  v9 = [(MRCoreUtilsPairingSession *)v7 _displaySetupCode:v8];

  return v9;
}

void _MRCUPSHideSetupCodeCallback(void *a1)
{
  if (!a1)
  {
    _MRCUPSHideSetupCodeCallback_cold_1();
  }

  [(MRCoreUtilsPairingSession *)a1 _hideSetupCode];
}

uint64_t _MRCUPSPromptForSetupCodeCallback(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3)
  {
    _MRCUPSPromptForSetupCodeCallback_cold_1();
  }

  return [(MRCoreUtilsPairingSession *)a3 _promptForSetupCodeWithDelay:a2];
}

void sub_1A29A9E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A29AA2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A29AA9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A29AB3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MRMediaRemotePlaybackSessionRequestWithResponse(void *a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E96A0];
    v23 = MEMORY[0x1E69E96A0];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v7 = objc_alloc_init(MRPlaybackSessionRequest);
LABEL_3:
  v11 = [(MRPlaybackSessionRequest *)v7 requestIdentifier];

  if (!v11)
  {
    v12 = [MEMORY[0x1E696AFB0] UUID];
    v13 = [v12 UUIDString];
    [(MRPlaybackSessionRequest *)v7 setRequestIdentifier:v13];
  }

  v14 = [MEMORY[0x1E695DF00] date];
  v15 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"playbackSession", v7];
  v16 = v15;
  if (v8)
  {
    [v15 appendFormat:@" for %@", v8];
  }

  v17 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = v16;
    _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __MRMediaRemotePlaybackSessionRequestWithResponse_block_invoke;
  v24[3] = &unk_1E769EF50;
  v25 = v7;
  v26 = v14;
  v27 = v9;
  v28 = v10;
  v18 = v9;
  v19 = v10;
  v20 = v14;
  v21 = v7;
  MRMediaRemoteNowPlayingResolvePlayerPathWithID(v8, 0, 1, v18, v24);

  v22 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemotePlaybackSessionRequestWithResponse_block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __MRMediaRemotePlaybackSessionRequestWithResponse_block_invoke_2;
  v23[3] = &unk_1E769EF00;
  v7 = v5;
  v24 = v7;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[7];
  *&v11 = a1[6];
  *(&v11 + 1) = v10;
  *&v12 = v8;
  *(&v12 + 1) = v9;
  v25 = v12;
  v26 = v11;
  v13 = MEMORY[0x1A58E3570](v23);
  if ([v7 isResolved])
  {
    if ([v7 isLocal])
    {
      v14 = a1[4];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __MRMediaRemotePlaybackSessionRequestWithResponse_block_invoke_2_22;
      v21[3] = &unk_1E769EF28;
      v22 = v13;
      MRServiceClientPlaybackSessionCallback(v7, v14, v21);
      v15 = v22;
    }

    else
    {
      v15 = [[MRPlaybackSessionRequestMessage alloc] initWithRequest:a1[4] forPlayerPath:v7];
      v17 = MRGetSharedService();
      v18 = a1[6];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __MRMediaRemotePlaybackSessionRequestWithResponse_block_invoke_3;
      v19[3] = &unk_1E769EF28;
      v20 = v13;
      MRMediaRemoteServicePlaybackSessionRequest(v17, v15, v18, v19);
    }
  }

  else
  {
    if (v6)
    {
      Error = v6;
    }

    else
    {
      Error = MRMediaRemoteNowPlayingPlayerPathCreateError(v7);
    }

    v15 = Error;
    (v13)[2](v13, 0, Error);
  }
}

void __MRMediaRemotePlaybackSessionRequestWithResponse_block_invoke_2(void *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v14 = [v5 playbackSession];

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
        v12 = [v5 playbackSession];
        v18 = a1[4];
        v19 = [MEMORY[0x1E695DF00] date];
        [v19 timeIntervalSinceDate:a1[6]];
        *buf = 138544386;
        v42 = @"playbackSession";
        v43 = 2114;
        v44 = v17;
        v45 = 2112;
        v46 = v12;
        v47 = 2114;
        v48 = v18;
        v49 = 2048;
        v50 = v20;
        v21 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v22 = v8;
        v23 = 52;
      }

      else
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v30 = a1[5];
        v12 = [v5 playbackSession];
        v19 = [MEMORY[0x1E695DF00] date];
        [v19 timeIntervalSinceDate:a1[6]];
        *buf = 138544130;
        v42 = @"playbackSession";
        v43 = 2114;
        v44 = v30;
        v45 = 2112;
        v46 = v12;
        v47 = 2048;
        v48 = v31;
        v21 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v22 = v8;
        v23 = 42;
      }

      _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    }

    else
    {
      if (v15)
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v25 = a1[4];
        v24 = a1[5];
        v12 = [MEMORY[0x1E695DF00] date];
        [v12 timeIntervalSinceDate:a1[6]];
        *buf = 138544130;
        v42 = @"playbackSession";
        v43 = 2114;
        v44 = v24;
        v45 = 2114;
        v46 = v25;
        v47 = 2048;
        v48 = v26;
        v27 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v28 = v8;
        v29 = 42;
      }

      else
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v32 = a1[5];
        v12 = [MEMORY[0x1E695DF00] date];
        [v12 timeIntervalSinceDate:a1[6]];
        *buf = 138543874;
        v42 = @"playbackSession";
        v43 = 2114;
        v44 = v32;
        v45 = 2048;
        v46 = v33;
        v27 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v28 = v8;
        v29 = 32;
      }

      _os_log_impl(&dword_1A2860000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
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
    v42 = @"playbackSession";
    v43 = 2114;
    v44 = v10;
    v45 = 2114;
    v46 = v6;
    v47 = 2114;
    v48 = v11;
    v49 = 2048;
    v50 = v13;
    _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v9)
  {
    __MRMediaRemotePlaybackSessionRequestWithResponse_block_invoke_2_cold_1(a1, v6, v8);
  }

LABEL_21:

  v34 = a1[8];
  if (v34)
  {
    v35 = a1[7];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __MRMediaRemotePlaybackSessionRequestWithResponse_block_invoke_19;
    block[3] = &unk_1E769AC18;
    v40 = v34;
    v38 = v5;
    v39 = v6;
    dispatch_async(v35, block);
  }

  v36 = *MEMORY[0x1E69E9840];
}

void MRMediaRemotePlaybackSessionRequest(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MRMediaRemotePlaybackSessionRequest_block_invoke;
  v9[3] = &unk_1E769EF28;
  v10 = v7;
  v8 = v7;
  MRMediaRemotePlaybackSessionRequestWithResponse(a1, a2, a3, v9);
}

void __MRMediaRemotePlaybackSessionRequest_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 playbackSession];
  (*(v4 + 16))(v4, v6, v5);
}

void sub_1A29AE35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MRNowPlayingValuesAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 == v4)
  {
    goto LABEL_3;
  }

  if ([v3 isEqual:v4])
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 doubleValue];
      v7 = v6;
      [v4 doubleValue];
      if (vabdd_f64(v7, v8) <= 0.01)
      {
        goto LABEL_3;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && ([v3 timeIntervalSinceDate:v4], fabs(v9) <= 1.0))
  {
LABEL_3:
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

MRContentItem *_MRCreateTemporalContentItemFromNowPlayingInfo(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
  v3 = [v1 objectForKey:@"kMRMediaRemoteNowPlayingInfoPlaybackRate"];
  v4 = [v1 objectForKey:@"kMRMediaRemoteNowPlayingInfoElapsedTime"];

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v6 = v5;
  if (v2)
  {
    [v5 setValue:v2 forKey:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
  }

  if (v3)
  {
    [v6 setValue:v3 forKey:@"kMRMediaRemoteNowPlayingInfoPlaybackRate"];
  }

  if (v4)
  {
    [v6 setValue:v4 forKey:@"kMRMediaRemoteNowPlayingInfoElapsedTime"];
  }

  v7 = [[MRContentItem alloc] initWithNowPlayingInfo:v6];

  return v7;
}

uint64_t MRNowPlayingSessionManagerDataSourceSetCreatePlayerCallback(void *a1)
{
  v1 = a1;
  v2 = +[MRNowPlayingOriginClientManager sharedManager];
  [v2 setCreateNewPlayerCallback:v1];

  return MRGetSharedService();
}

void MRNowPlayingSessionManagerDataSourceSetDestroyPlayerCallback(void *a1)
{
  v1 = a1;
  v2 = +[MRNowPlayingOriginClientManager sharedManager];
  [v2 setDestroyPlayerCallback:v1];
}

void MRNowPlayingSessionManagerDataSourceGenerateSetGeneratePlayerIDCallback(void *a1)
{
  v1 = a1;
  v2 = +[MRNowPlayingOriginClientManager sharedManager];
  [v2 setGeneratePlayerIDCallback:v1];
}

void MRNowPlayingSessionManagerStartSession(void *a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [v5 UUIDString];

  v7 = [MEMORY[0x1E695DF00] now];
  v8 = +[MRAVOutputDevice localDeviceUID];
  v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"MRNowPlayingSessionManagerStartSession", v6];
  v10 = v9;
  if (v8)
  {
    [v9 appendFormat:@" for %@", v8];
  }

  v11 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = v10;
    _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __MRNowPlayingSessionManagerStartSession_block_invoke;
  v30[3] = &unk_1E769EFB8;
  v31 = v8;
  v32 = @"MRNowPlayingSessionManagerStartSession";
  v12 = v6;
  v33 = v12;
  v34 = v7;
  v36 = v4;
  v13 = v3;
  v35 = v13;
  v14 = v4;
  v15 = v7;
  v16 = v8;
  v17 = MEMORY[0x1A58E3570](v30);
  if (MRNowPlayingSessionManagerStartSession_onceToken != -1)
  {
    MRNowPlayingSessionManagerStartSession_cold_1();
  }

  v18 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v19 = [v18 service];
  v20 = [v19 mrXPCConnection];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __MRNowPlayingSessionManagerStartSession_block_invoke_57;
  v25[3] = &unk_1E769F028;
  v26 = @"MRNowPlayingSessionManagerStartSession";
  v27 = v12;
  v28 = v13;
  v29 = v17;
  v21 = v17;
  v22 = v13;
  v23 = v12;
  [v20 sendMessageWithType:0x300000000000023 queue:v22 reply:v25];

  v24 = *MEMORY[0x1E69E9840];
}

void __MRNowPlayingSessionManagerStartSession_block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 origin];

  if (v10)
  {
    v11 = [MRPlayerPath alloc];
    v12 = [v7 origin];
    v13 = +[MRClient localClient];
    v14 = +[MRPlayer defaultPlayer];
    v15 = [(MRPlayerPath *)v11 initWithOrigin:v12 client:v13 player:v14];

    v7 = v12;
  }

  else
  {
    v15 = +[MRPlayerPath localPlayerPath];
  }

  v16 = [(MRPlayerPath *)v15 origin];
  v17 = [v16 isHosted];

  if (v17)
  {
    v18 = +[MRNowPlayingOriginClientManager sharedManager];
    v19 = [(MRPlayerPath *)v15 origin];
    v20 = [v8 routingContextID];
    v21 = [v18 createCustomOriginClientForOrigin:v19 routingContextID:v20];
  }

  MRMediaRemoteSetNowPlayingApplicationOverrideEnabled(1);
  v22 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v23 = [v22 currentSessionPlayerPath];

  if (v23)
  {
    __MRNowPlayingSessionManagerStartSession_block_invoke_cold_1();
  }

  v24 = +[MRMediaRemoteServiceClient sharedServiceClient];
  [v24 setCurrentSessionPlayerPath:v15];

  v25 = objc_alloc(MEMORY[0x1E696AEC0]);
  v26 = [v8 routingContextID];
  v27 = [v25 initWithFormat:@"playerPath=%@ routingContext=%@", v15, v26];

  v28 = a1[4];
  v29 = _MRLogForCategory(0xAuLL);
  v30 = v29;
  if (!v9 && v27)
  {
    v31 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      if (!v31)
      {
        goto LABEL_29;
      }

      v33 = a1[5];
      v32 = a1[6];
      v34 = a1[4];
      v35 = [MEMORY[0x1E695DF00] date];
      [v35 timeIntervalSinceDate:a1[7]];
      *buf = 138544386;
      v63 = v33;
      v64 = 2114;
      v65 = v32;
      v66 = 2112;
      v67 = v27;
      v68 = 2114;
      v69 = v34;
      v70 = 2048;
      v71 = v36;
      v37 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v38 = v30;
      v39 = 52;
      goto LABEL_23;
    }

    if (!v31)
    {
      goto LABEL_29;
    }

    v50 = a1[5];
    v51 = a1[6];
    v35 = [MEMORY[0x1E695DF00] date];
    [v35 timeIntervalSinceDate:a1[7]];
    *buf = 138544130;
    v63 = v50;
    v64 = 2114;
    v65 = v51;
    v66 = 2112;
    v67 = v27;
    v68 = 2048;
    v69 = v52;
    v37 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    goto LABEL_22;
  }

  if (v9)
  {
    v40 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (!v40)
      {
        goto LABEL_29;
      }

      v42 = a1[5];
      v41 = a1[6];
      v43 = a1[4];
      v35 = [MEMORY[0x1E695DF00] date];
      [v35 timeIntervalSinceDate:a1[7]];
      *buf = 138544386;
      v63 = v42;
      v64 = 2114;
      v65 = v41;
      v66 = 2114;
      v67 = v9;
      v68 = 2114;
      v69 = v43;
      v70 = 2048;
      v71 = v44;
      _os_log_error_impl(&dword_1A2860000, v30, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
      goto LABEL_24;
    }

    if (v40)
    {
      __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_cold_1(a1, v9, v30);
    }
  }

  else
  {
    v45 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      if (!v45)
      {
        goto LABEL_29;
      }

      v47 = a1[5];
      v46 = a1[6];
      v48 = a1[4];
      v35 = [MEMORY[0x1E695DF00] date];
      [v35 timeIntervalSinceDate:a1[7]];
      *buf = 138544130;
      v63 = v47;
      v64 = 2114;
      v65 = v46;
      v66 = 2114;
      v67 = v48;
      v68 = 2048;
      v69 = v49;
      v37 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
LABEL_22:
      v38 = v30;
      v39 = 42;
LABEL_23:
      _os_log_impl(&dword_1A2860000, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);
LABEL_24:

      goto LABEL_29;
    }

    if (v45)
    {
      v53 = a1[5];
      v54 = a1[6];
      v35 = [MEMORY[0x1E695DF00] date];
      [v35 timeIntervalSinceDate:a1[7]];
      *buf = 138543874;
      v63 = v53;
      v64 = 2114;
      v65 = v54;
      v66 = 2048;
      v67 = v55;
      v37 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v38 = v30;
      v39 = 32;
      goto LABEL_23;
    }
  }

LABEL_29:

  v56 = a1[9];
  if (v56)
  {
    v57 = a1[8];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __MRNowPlayingSessionManagerStartSession_block_invoke_44;
    block[3] = &unk_1E769AB28;
    v61 = v56;
    v60 = v15;
    dispatch_async(v57, block);
  }

  v58 = *MEMORY[0x1E69E9840];
}

void __MRNowPlayingSessionManagerStartSession_block_invoke_2()
{
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = [v1 addObserverForName:@"_MRMediaRemoteWillSendCommandToPlayerNotification" object:0 queue:0 usingBlock:&__block_literal_global_50];
}

void __MRNowPlayingSessionManagerStartSession_block_invoke_3(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v4 = [v3 currentSessionPlayerPath];

  if (v4)
  {
    v5 = [v2 playerPath];
    v6 = [v5 client];
    v7 = [v4 client];
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F1577728, &unk_1F1577740, &unk_1F1577758, 0}];
      v10 = [v2 userInfo];
      v11 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandType"];

      if ([v9 containsObject:v11])
      {
        v12 = [v11 intValue];
        v13 = [v2 userInfo];
        v14 = MRMediaRemoteCommandCreateDescription(v12, v13, 0);

        v15 = MRLogCategoryConnections();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v2 playerPath];
          v17 = [v16 client];
          *buf = 138543618;
          v21 = v14;
          v22 = 2114;
          v23 = v17;
          _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingSessionManagerDataSource] [MRNowPlayingSessionManager] Got command preview that will cause a hijack (%{public}@) playerPath %{public}@. Posting MRNowPlayingSessionManagerActiveSessionWillBeHijackedByNativePlayback", buf, 0x16u);
        }

        v18 = [MEMORY[0x1E696AD88] defaultCenter];
        [v18 postNotificationName:@"MRNowPlayingSessionManagerActiveSessionWillBeHijackedByNativePlayback" object:0];
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __MRNowPlayingSessionManagerStartSession_block_invoke_57(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 code] == 1)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"xpc error, likely mediaremoted crash, so retrying.."];
    v8 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138543874;
      v22 = v9;
      v23 = 2114;
      v24 = v10;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v11 = +[MRMediaRemoteServiceClient sharedServiceClient];
    v12 = [v11 service];
    v13 = [v12 mrXPCConnection];
    v14 = *(a1 + 48);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __MRNowPlayingSessionManagerStartSession_block_invoke_61;
    v17[3] = &unk_1E769F000;
    v18 = v5;
    v20 = *(a1 + 56);
    v19 = v6;
    [v13 sendMessageWithType:0x300000000000023 queue:v14 reply:v17];
  }

  else
  {
    v7 = MRCreatePlayerPathFromXPCMessage(v5);
    v15 = MRCreateDeviceInfoFromXPCMessage(v5);
    (*(*(a1 + 56) + 16))();
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __MRNowPlayingSessionManagerStartSession_block_invoke_61(uint64_t a1)
{
  v4 = MRCreatePlayerPathFromXPCMessage(*(a1 + 32));
  v2 = MRCreateDeviceInfoFromXPCMessage(*(a1 + 32));
  v3 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

void MRNowPlayingSessionManagerStopSession()
{
  v47 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF00] date];
  v1 = [MEMORY[0x1E696AFB0] UUID];
  v2 = [v1 UUIDString];

  v3 = +[MRAVOutputDevice localDeviceUID];
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"MRNowPlayingSessionManagerStopSession", v2];
  v5 = v4;
  if (v3)
  {
    [(__CFString *)v4 appendFormat:@" for %@", v3];
  }

  v6 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = v5;
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v7 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v8 = [v7 service];
  v9 = [v8 mrXPCConnection];
  v10 = MRCreateXPCMessage(0x300000000000024uLL);
  v36 = 0;
  v11 = [v9 sendSyncMessage:v10 error:&v36];
  v12 = v36;

  MRMediaRemoteSetNowPlayingApplicationOverrideEnabled(0);
  v13 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v14 = [v13 currentSessionPlayerPath];

  if (!v14)
  {
    MRNowPlayingSessionManagerStopSession_cold_1();
  }

  v15 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v16 = [v15 currentSessionPlayerPath];

  v17 = [v16 client];
  v18 = [v16 origin];
  MRMediaRemoteRemoveClientForOrigin(v17, v18, 0, 0);

  v19 = +[MRMediaRemoteServiceClient sharedServiceClient];
  [v19 setCurrentSessionPlayerPath:0];

  v20 = _MRLogForCategory(0xAuLL);
  v21 = v20;
  if (!v12)
  {
    v28 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (!v28)
      {
        goto LABEL_21;
      }

      v23 = [MEMORY[0x1E695DF00] date];
      [v23 timeIntervalSinceDate:v0];
      *buf = 138544130;
      v38 = @"MRNowPlayingSessionManagerStopSession";
      v39 = 2114;
      v40 = v2;
      v41 = 2114;
      v42 = v3;
      v43 = 2048;
      v44 = v29;
      v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v31 = v21;
      v32 = 42;
    }

    else
    {
      if (!v28)
      {
        goto LABEL_21;
      }

      v23 = [MEMORY[0x1E695DF00] date];
      [v23 timeIntervalSinceDate:v0];
      *buf = 138543874;
      v38 = @"MRNowPlayingSessionManagerStopSession";
      v39 = 2114;
      v40 = v2;
      v41 = 2048;
      v42 = v34;
      v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v31 = v21;
      v32 = 32;
    }

    _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    goto LABEL_20;
  }

  v22 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v22)
    {
      v23 = [MEMORY[0x1E695DF00] date];
      [v23 timeIntervalSinceDate:v0];
      *buf = 138544386;
      v38 = @"MRNowPlayingSessionManagerStopSession";
      v39 = 2114;
      v40 = v2;
      v41 = 2114;
      v42 = v12;
      v43 = 2114;
      v44 = v3;
      v45 = 2048;
      v46 = v24;
      v25 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
      v26 = v21;
      v27 = 52;
LABEL_16:
      _os_log_error_impl(&dword_1A2860000, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
LABEL_20:
    }
  }

  else if (v22)
  {
    v23 = [MEMORY[0x1E695DF00] date];
    [v23 timeIntervalSinceDate:v0];
    *buf = 138544130;
    v38 = @"MRNowPlayingSessionManagerStopSession";
    v39 = 2114;
    v40 = v2;
    v41 = 2114;
    v42 = v12;
    v43 = 2048;
    v44 = v33;
    v25 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
    v26 = v21;
    v27 = 42;
    goto LABEL_16;
  }

LABEL_21:

  v35 = *MEMORY[0x1E69E9840];
}

id MRNowPlayingSessionManagerLocalDeviceRoutingContextID()
{
  v42 = *MEMORY[0x1E69E9840];
  if (MRNowPlayingSessionManagerLocalDeviceRoutingContextID_onceToken != -1)
  {
    MRNowPlayingSessionManagerLocalDeviceRoutingContextID_cold_1();
  }

  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];

  v2 = [MEMORY[0x1E695DF00] now];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"MRNowPlayingSessionManagerLocalDeviceRoutingContextID", v1];
  v4 = +[MROrigin localOrigin];
  v5 = [v4 displayName];

  if (v5)
  {
    v6 = +[MROrigin localOrigin];
    v7 = [v6 displayName];
    [(__CFString *)v3 appendFormat:@" for %@", v7];
  }

  v8 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v3;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v9 = +[MROrigin localOrigin];
  v10 = [MRDeviceInfoRequest cachedDeviceInfoForOrigin:v9];

  v11 = [v10 mr_effectiveRoutingContextID];
  v12 = +[MRMediaRemoteServiceClient sharedServiceClient];
  [v12 setCurrentSessionRoutingContextID:v11];

  v13 = +[MROrigin localOrigin];
  v14 = [v13 displayName];

  v15 = _MRLogForCategory(0xAuLL);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (!v11)
  {
    if (v14)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      v17 = +[MROrigin localOrigin];
      v18 = [v17 displayName];
      v19 = [MEMORY[0x1E695DF00] date];
      [v19 timeIntervalSinceDate:v2];
      *buf = 138544130;
      v33 = @"MRNowPlayingSessionManagerLocalDeviceRoutingContextID";
      v34 = 2114;
      v35 = v1;
      v36 = 2114;
      v37 = v18;
      v38 = 2048;
      v39 = v24;
      v21 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v22 = v15;
      v23 = 42;
      goto LABEL_14;
    }

    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = [MEMORY[0x1E695DF00] date];
    [v17 timeIntervalSinceDate:v2];
    *buf = 138543874;
    v33 = @"MRNowPlayingSessionManagerLocalDeviceRoutingContextID";
    v34 = 2114;
    v35 = v1;
    v36 = 2048;
    v37 = v29;
    v26 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v27 = v15;
    v28 = 32;
LABEL_19:
    _os_log_impl(&dword_1A2860000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
    goto LABEL_20;
  }

  if (!v14)
  {
    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = [MEMORY[0x1E695DF00] date];
    [v17 timeIntervalSinceDate:v2];
    *buf = 138544130;
    v33 = @"MRNowPlayingSessionManagerLocalDeviceRoutingContextID";
    v34 = 2114;
    v35 = v1;
    v36 = 2112;
    v37 = v11;
    v38 = 2048;
    v39 = v25;
    v26 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v27 = v15;
    v28 = 42;
    goto LABEL_19;
  }

  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = +[MROrigin localOrigin];
  v18 = [v17 displayName];
  v19 = [MEMORY[0x1E695DF00] date];
  [v19 timeIntervalSinceDate:v2];
  *buf = 138544386;
  v33 = @"MRNowPlayingSessionManagerLocalDeviceRoutingContextID";
  v34 = 2114;
  v35 = v1;
  v36 = 2112;
  v37 = v11;
  v38 = 2114;
  v39 = v18;
  v40 = 2048;
  v41 = v20;
  v21 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
  v22 = v15;
  v23 = 52;
LABEL_14:
  _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);

LABEL_20:
LABEL_21:

  v30 = *MEMORY[0x1E69E9840];

  return v11;
}

void __MRNowPlayingSessionManagerLocalDeviceRoutingContextID_block_invoke()
{
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = [v1 addObserverForName:@"kMRDeviceInfoDidChangeNotification" object:0 queue:0 usingBlock:&__block_literal_global_72];
}

void __MRNowPlayingSessionManagerLocalDeviceRoutingContextID_block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 mr_origin];
  v4 = [v3 isLocal];

  if (v4)
  {
    v5 = [v2 mr_deviceInfo];
    v6 = +[MRMediaRemoteServiceClient sharedServiceClient];
    v7 = [v6 currentSessionRoutingContextID];

    v8 = [v5 mr_effectiveRoutingContextID];
    if (v7 != v8)
    {
      v9 = [v7 isEqual:v8];

      if (v9)
      {
LABEL_8:

        goto LABEL_9;
      }

      v10 = [v5 mr_effectiveRoutingContextID];
      v11 = +[MRMediaRemoteServiceClient sharedServiceClient];
      [v11 setCurrentSessionRoutingContextID:v10];

      v12 = _MRLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = @"MRNowPlayingSessionManagerLocalDeviceRoutingContextIDDidChange";
        _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "Posting %@", &v14, 0xCu);
      }

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 postNotificationName:@"MRNowPlayingSessionManagerLocalDeviceRoutingContextIDDidChange" object:0];
    }

    goto LABEL_8;
  }

LABEL_9:

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t MRNowPlayingSessionManagerIsSilentPrimary()
{
  v34 = *MEMORY[0x1E69E9840];
  if (MRNowPlayingSessionManagerIsSilentPrimary_onceToken != -1)
  {
    MRNowPlayingSessionManagerIsSilentPrimary_cold_1();
  }

  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];

  v2 = [MEMORY[0x1E695DF00] now];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"MRNowPlayingSessionManagerIsSilentPrimary", v1];
  v4 = +[MROrigin localOrigin];
  v5 = [v4 displayName];

  if (v5)
  {
    v6 = +[MROrigin localOrigin];
    v7 = [v6 displayName];
    [(__CFString *)v3 appendFormat:@" for %@", v7];
  }

  v8 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v3;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v9 = +[MROrigin localOrigin];
  v10 = [MRDeviceInfoRequest cachedDeviceInfoForOrigin:v9];

  v11 = [v10 isProxyGroupPlayer];
  [MRNowPlayingSessionManagerIsSilentPrimary___lock lock];
  MRNowPlayingSessionManagerIsSilentPrimary___isSilentPrimary = v11;
  [MRNowPlayingSessionManagerIsSilentPrimary___lock unlock];
  if (v11)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = +[MROrigin localOrigin];
  v14 = [v13 displayName];

  v15 = _MRLogForCategory(0xAuLL);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v17 = +[MROrigin localOrigin];
      v18 = [v17 displayName];
      v19 = [MEMORY[0x1E695DF00] date];
      [v19 timeIntervalSinceDate:v2];
      *buf = 138544386;
      v25 = @"MRNowPlayingSessionManagerIsSilentPrimary";
      v26 = 2114;
      v27 = v1;
      v28 = 2112;
      v29 = v12;
      v30 = 2114;
      v31 = v18;
      v32 = 2048;
      v33 = v20;
      _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds", buf, 0x34u);

LABEL_15:
    }
  }

  else if (v16)
  {
    v17 = [MEMORY[0x1E695DF00] date];
    [v17 timeIntervalSinceDate:v2];
    *buf = 138544130;
    v25 = @"MRNowPlayingSessionManagerIsSilentPrimary";
    v26 = 2114;
    v27 = v1;
    v28 = 2112;
    v29 = v12;
    v30 = 2048;
    v31 = v21;
    _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);
    goto LABEL_15;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v11;
}

void __MRNowPlayingSessionManagerIsSilentPrimary_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v1 = MRNowPlayingSessionManagerIsSilentPrimary___lock;
  MRNowPlayingSessionManagerIsSilentPrimary___lock = v0;

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = [v3 addObserverForName:@"kMRDeviceInfoDidChangeNotification" object:0 queue:0 usingBlock:&__block_literal_global_82];
}

void __MRNowPlayingSessionManagerIsSilentPrimary_block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 userInfo];
  v4 = MRGetOriginFromUserInfo(v3);
  v5 = [v4 isLocal];

  if (v5)
  {
    v6 = [v2 userInfo];
    v8 = MRGetDeviceInfoFromUserInfo(v6, v7);

    [MRNowPlayingSessionManagerIsSilentPrimary___lock lock];
    v9 = [v8 isProxyGroupPlayer];
    v10 = MRNowPlayingSessionManagerIsSilentPrimary___isSilentPrimary;
    [MRNowPlayingSessionManagerIsSilentPrimary___lock unlock];
    if (!v8 || v10 != v9)
    {
      v11 = _MRLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = @"MRNowPlayingSessionManagerIsSilentPrimaryDidChange";
        _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "Posting %@", &v14, 0xCu);
      }

      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 postNotificationName:@"MRNowPlayingSessionManagerIsSilentPrimaryDidChange" object:0];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1A29B1524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v11);
  _Unwind_Resume(a1);
}

void MRMediaRemoteGetApplicationDisplayIDForClient(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MRMediaRemoteGetApplicationDisplayIDForClient_block_invoke;
  v9[3] = &unk_1E769D570;
  v10 = v7;
  v8 = v7;
  MRMediaRemoteGetClientProperties(a1, a2, a3, v9);
}

void __MRMediaRemoteGetApplicationDisplayIDForClient_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 bundleIdentifier];
    (*(v2 + 16))(v2, v3);
  }
}

void MRMediaRemoteGetNowPlayingApplicationPIDForOrigin(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MRMediaRemoteGetNowPlayingApplicationPIDForOrigin_block_invoke;
  v7[3] = &unk_1E769D570;
  v8 = v5;
  v6 = v5;
  MRMediaRemoteGetClientProperties(0, a1, a2, v7);
}

uint64_t __MRMediaRemoteGetNowPlayingApplicationPIDForOrigin_block_invoke(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = [a2 processIdentifier];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

void MRMediaRemoteGetNowPlayingApplicationDisplayNameForClient(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MRMediaRemoteGetNowPlayingApplicationDisplayNameForClient_block_invoke;
  v9[3] = &unk_1E769D570;
  v10 = v7;
  v8 = v7;
  MRMediaRemoteGetClientProperties(a1, a2, a3, v9);
}

void __MRMediaRemoteGetNowPlayingApplicationDisplayNameForClient_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 displayName];
    (*(v2 + 16))(v2, v3);
  }
}

void MRMediaRemoteGetNowPlayingApplicationIsPlayingForOrigin(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MRMediaRemoteGetNowPlayingApplicationIsPlayingForOrigin_block_invoke;
  v7[3] = &unk_1E769F0B0;
  v8 = v5;
  v6 = v5;
  MRMediaRemoteGetNowPlayingApplicationPlaybackStateForOrigin(a1, a2, v7);
}

uint64_t __MRMediaRemoteGetNowPlayingApplicationIsPlayingForOrigin_block_invoke(uint64_t result, int a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    IsAdvancing = MRMediaRemotePlaybackStateIsAdvancing(a2);
    v4 = *(v2 + 16);

    return v4(v2, IsAdvancing);
  }

  return result;
}

void MRMediaRemoteGetAnyApplicationIsPlayingForOrigin(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  v7 = MRGetSharedService();
  MRMediaRemoteServiceGetAnyAppIsPlaying(v7, v8, v6, v5);
}

void MRMediaRemoteSetDisplayNameForClient(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  [a1 setDisplayName:a3];
  MRMediaRemoteUpdateClientProperties(a1, a2, v10, v9);
}

void MRMediaRemoteGetNowPlayingInfoForOrigin(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MRMediaRemoteGetNowPlayingInfoForOrigin_block_invoke;
  v7[3] = &unk_1E769F0D8;
  v8 = v5;
  v6 = v5;
  MRMediaRemoteGetNowPlayingInfoForClient(0, a1, 1, a2, v7);
}

uint64_t __MRMediaRemoteGetNowPlayingInfoForOrigin_block_invoke(uint64_t a1, __CFDictionary *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v5 = MRNowPlayingArtworkCopyImageData(a3);
    CFDictionarySetValue(a2, @"kMRMediaRemoteNowPlayingInfoArtworkData", v5);
    CFDictionarySetValue(a2, @"kMRMediaRemoteNowPlayingInfoArtworkMIMEType", @"image/jpeg");
  }

  result = *(a1 + 32);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void MRMediaRemoteGetNowPlayingArtwork(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  v8 = [[MRPlaybackQueueRequest alloc] initWithRange:0, 1];
  [(MRPlaybackQueueRequest *)v8 setCachingPolicy:2];
  [(MRPlaybackQueueRequest *)v8 setArtworkWidth:600.0];
  [(MRPlaybackQueueRequest *)v8 setArtworkHeight:600.0];
  [(MRPlaybackQueueRequest *)v8 setLegacyNowPlayingInfoRequest:1];
  v9 = [v5 copy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MRMediaRemoteGetNowPlayingArtwork_block_invoke;
  v11[3] = &unk_1E769C298;
  v12 = v9;
  v10 = v9;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync(v8, v7, v6, v11);
}

void __MRMediaRemoteGetNowPlayingArtwork_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3 && (v4 = [v3 contentItemWithOffset:0]) != 0)
  {
    v5 = v4;
    ArtworkData = MRContentItemGetArtworkData(v4);
    ArtworkMIMEType = MRContentItemGetArtworkMIMEType(v5);
    if (ArtworkData)
    {
      ArtworkData = MRNowPlayingArtworkCreateWithImageData(ArtworkData, ArtworkMIMEType);
    }
  }

  else
  {
    ArtworkData = 0;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, ArtworkData);
  }
}

void MRMediaRemoteGetNowPlayingInfoForApp(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = [[MRClient alloc] initWithProcessIdentifier:0 bundleIdentifier:a1];
  MRMediaRemoteGetNowPlayingInfoForClient(v11, a2, a3, v10, v9);
}

void MRMediaRemoteSetNowPlayingInfoForOriginWithMergePolicy(uint64_t a1, void *a2, int a3)
{
  v5 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  MRMediaRemoteSetNowPlayingInfoForPlayer(v5, a2, a3, 0, 0);
}

void MRMediaRemoteSetNowPlayingInfoForPlayer(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v178 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v8;
  v11 = v9;
  v12 = [MEMORY[0x1E695DF00] date];
  v13 = a2;
  v14 = v10;
  if (!v10)
  {
    v14 = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
  }

  v168[0] = MEMORY[0x1E69E9820];
  v168[1] = 3221225472;
  v168[2] = ___MRSetNowPlayingInfo_block_invoke;
  v168[3] = &unk_1E769BCD0;
  v16 = v14;
  v169 = v16;
  v134 = v11;
  v170 = v134;
  v137 = MEMORY[0x1A58E3570](v168);
  v17 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    MRMediaRemoteSetNowPlayingInfoForPlayer_cold_1(a3, v13, v17);
  }

  v18 = +[MRNowPlayingOriginClientManager sharedManager];
  v19 = [v18 playerClientForPlayerPath:a1];

  v138 = [v19 playerPath];
  v20 = [v19 clientCallbacks];
  LODWORD(v18) = [v20 hasPlaybackQueueCallbacks];

  if (!v18)
  {
    if (a3)
    {
      if ([v13 count])
      {
        v25 = [v13 mutableCopy];
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = [v13 mutableCopy];
    }

    v131 = [v25 objectForKey:@"kMRMediaRemoteNowPlayingInfoClientPropertiesData"];
    v132 = v16;
    v144 = v25;
    if (v131)
    {
      v26 = [[MRClient alloc] initWithData:v131];
      if (v26)
      {
        v27 = [v138 client];
        v28 = [v138 origin];
        MRMediaRemoteSyncClientProperties(v26, v27, v28);

        v16 = v132;
      }

      v25 = v144;
      [v144 removeObjectForKey:@"kMRMediaRemoteNowPlayingInfoClientPropertiesData"];
    }

    v150 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v139 = [v19 nowPlayingInfo];
    v29 = [v19 nowPlayingArtwork];
    v129 = v12;
    v130 = v13;
    v149 = v19;
    v133 = v29;
    if (!v25)
    {
      v33 = v29;
      v136 = 0;
      v34 = 0;
      goto LABEL_90;
    }

    v30 = v25;
    v31 = [v25 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkData"];
    v127 = v31;
    if ([v31 length])
    {
      v32 = [[MRNowPlayingArtworkImage alloc] initWithImageData:v31 mimeType:@"image/jpeg"];
      [v30 removeObjectForKey:@"kMRMediaRemoteNowPlayingInfoArtworkData"];
    }

    else
    {
      v32 = 0;
    }

    v136 = v32;
    if (_os_feature_enabled_impl())
    {
      v35 = [v138 client];
      v142 = [v35 isAirPlay] ^ 1;
    }

    else
    {
      v142 = 0;
    }

    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    obj = _MRNowPlayingSupportedAnimatedArtworkFormats();
    v36 = [obj countByEnumeratingWithState:&v164 objects:v177 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v165;
      v39 = @"MRContentItemAnimatedArtworkFormatSquare";
      do
      {
        v40 = 0;
        v145 = v37;
        do
        {
          if (*v165 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v164 + 1) + 8 * v40);
          v42 = _MRNowPlayingInfoAnimatedArtworkIdentifierKeyForFormat(v41);
          v43 = v41;
          v44 = [v43 isEqualToString:v39];
          v45 = kMRMediaRemoteNowPlayingInfoSquareAnimatedArtwork;
          if ((v44 & 1) != 0 || (v46 = [v43 isEqualToString:@"MRContentItemAnimatedArtworkFormatTall"], v45 = kMRMediaRemoteNowPlayingInfoTallAnimatedArtwork, v46))
          {
            v47 = *v45;
          }

          else
          {
            v47 = 0;
          }

          if (v42)
          {
            v48 = v47 == 0;
          }

          else
          {
            v48 = 1;
          }

          if (!v48)
          {
            v49 = v39;
            v50 = v38;
            v51 = [v144 objectForKeyedSubscript:v42];
            v52 = [v144 objectForKeyedSubscript:v47];
            v53 = v52;
            if (v51)
            {
              v54 = v142;
            }

            else
            {
              v54 = 0;
            }

            if (v54 != 1 || v52 == 0)
            {
              [v144 removeObjectForKey:v42];
            }

            else
            {
              [v150 setObject:v52 forKeyedSubscript:v43];
            }

            [v144 removeObjectForKey:v47];

            v38 = v50;
            v39 = v49;
            v37 = v145;
          }

          ++v40;
        }

        while (v37 != v40);
        v37 = [obj countByEnumeratingWithState:&v164 objects:v177 count:16];
      }

      while (v37);
    }

    if (a3)
    {
      v56 = v144;
      v34 = v144;
      v12 = v129;
      v13 = v130;
      v19 = v149;
    }

    else
    {
      v12 = v129;
      v13 = v130;
      v19 = v149;
      v56 = v144;
      if (v139)
      {
        v57 = [v139 mutableCopy];
      }

      else
      {
        v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v34 = v57;

      [v34 addEntriesFromDictionary:v144];
      if (!v136)
      {
        v136 = v133;
      }

      if (_os_feature_enabled_impl())
      {
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v58 = _MRNowPlayingSupportedAnimatedArtworkFormats();
        v59 = [v58 countByEnumeratingWithState:&v160 objects:v176 count:16];
        if (v59)
        {
          v60 = v59;
          v61 = *v161;
          do
          {
            for (i = 0; i != v60; ++i)
            {
              if (*v161 != v61)
              {
                objc_enumerationMutation(v58);
              }

              v63 = *(*(&v160 + 1) + 8 * i);
              v64 = _MRNowPlayingInfoAnimatedArtworkIdentifierKeyForFormat(v63);
              if (v64)
              {
                v65 = [v19 nowPlayingAnimatedArtworkForFormat:v63];
                [v150 setObject:v65 forKeyedSubscript:v63];

                v19 = v149;
                v66 = [v139 objectForKeyedSubscript:v64];
                [v34 setObject:v66 forKeyedSubscript:v64];
              }
            }

            v60 = [v58 countByEnumeratingWithState:&v160 objects:v176 count:16];
          }

          while (v60);
        }

        v12 = v129;
        v13 = v130;
        v56 = v144;
      }

      v67 = [v56 objectForKey:@"kMRMediaRemoteNowPlayingInfoElapsedTime"];
      if (v67)
      {
        v68 = v67;
        v69 = [v56 objectForKey:@"kMRMediaRemoteNowPlayingInfoTimestamp"];

        if (!v69)
        {
          [v34 removeObjectForKey:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
        }

        v56 = v144;
      }
    }

    if (_MRSetNowPlayingInfoShouldReplacePlaybackRateWithDefaultPlaybackRate_onceToken != -1)
    {
      MRMediaRemoteSetNowPlayingInfoForPlayer_cold_2();
    }

    if (_MRSetNowPlayingInfoShouldReplacePlaybackRateWithDefaultPlaybackRate_shouldReplace == 1)
    {
      v70 = [v56 objectForKey:@"kMRMediaRemoteNowPlayingInfoDefaultPlaybackRate"];
      if (v70)
      {
        [v34 setValue:v70 forKey:@"kMRMediaRemoteNowPlayingInfoPlaybackRate"];
      }

      v56 = v144;
    }

    v71 = [v56 objectForKey:@"kMRMediaRemoteNowPlayingInfoPlaybackRate"];

    if (!v71)
    {
      v72 = [v19 playbackState];
      if (v72)
      {
        v73 = v72;
LABEL_83:
        v77 = [v139 objectForKey:@"kMRMediaRemoteNowPlayingInfoDefaultPlaybackRate"];
        [v77 doubleValue];
        v79 = v78;

        IsAdvancing = MRMediaRemotePlaybackStateIsAdvancing(v73);
        v81 = v79 != 0.0;
        if (!IsAdvancing)
        {
          v81 = v79 == 0.0;
        }

        if (!v81)
        {
          v82 = 0.0;
          if (IsAdvancing)
          {
            v82 = 1.0;
          }

          v83 = [MEMORY[0x1E696AD98] numberWithDouble:v82];
          [v34 setValue:v83 forKey:@"kMRMediaRemoteNowPlayingInfoPlaybackRate"];
        }

        goto LABEL_89;
      }

      v74 = +[MRNowPlayingOriginClientManager sharedManager];
      v75 = [v19 playerPath];
      v76 = [v74 playerClientRequestsForPlayerPath:v75];

      v73 = [v76 playbackState];
      v12 = v129;
      if (v73)
      {
        goto LABEL_83;
      }
    }

LABEL_89:

    v16 = v132;
    v33 = v133;
LABEL_90:
    if (v139 == v34)
    {
      v84 = v139 == 0;
      obja = 1;
    }

    else
    {
      if ([v19 hasReceivedCommandRecently])
      {
        obja = 0;
      }

      else
      {
        v85 = [v139 mutableCopy];
        v86 = [v34 mutableCopy];
        [v85 removeObjectForKey:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
        [v86 removeObjectForKey:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
        obja = 0;
        if (v139 && v34)
        {
          obja = MRMediaRemoteNowPlayingInfoIsEqual(v86, v85);
        }

        v16 = v132;
        v33 = v133;
      }

      v84 = v34 == 0;
      if (v34 && (obja & 1) == 0)
      {
        v87 = [v34 objectForKey:@"kMRMediaRemoteNowPlayingInfoTimestamp"];

        if (!v87)
        {
          [v34 setObject:v12 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
        }

        if (v139)
        {
          obja = MRMediaRemoteNowPlayingInfoIsEqual(v34, v139);
          v84 = 0;
        }

        else
        {
          v84 = 0;
          obja = 0;
        }

        v33 = v133;
      }
    }

    v88 = v33 == v136 || [(MRNowPlayingArtworkImage *)v33 isEqual:?];
    v89 = _MRNowPlayingSupportedAnimatedArtworkFormats();
    v157[0] = MEMORY[0x1E69E9820];
    v157[1] = 3221225472;
    v157[2] = ___MRSetNowPlayingInfo_block_invoke_46;
    v157[3] = &unk_1E769F150;
    v146 = v139;
    v158 = v146;
    v90 = v34;
    v159 = v90;
    v91 = [v89 mr_filter:v157];

    v141 = v91;
    if ((obja & v88) == 1 && (!_os_feature_enabled_impl() || ![v91 count]))
    {
      v109 = _MRLogForCategory(1uLL);
      v24 = v134;
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A2860000, v109, OS_LOG_TYPE_DEFAULT, "[NowPlayingInfo] Setting identical nowPlayingInfo, skipping update.", buf, 2u);
      }

      v23 = v137;
      if (!v84)
      {
        goto LABEL_181;
      }

LABEL_178:
      v125 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
      {
        *v171 = 0;
        _os_log_impl(&dword_1A2860000, v125, OS_LOG_TYPE_DEFAULT, "[NowPlayingInfo] Clearing nowPlayingInfo", v171, 2u);
      }

      v23 = v137;
LABEL_181:
      v23[2](v23, 0);

      Error = v144;
      goto LABEL_182;
    }

    v128 = v84;
    MRTypeAuditNowPlayingInfoDictionary(v90);
    v92 = [MRContentItem extractedIdentifierFromNowPlayingInfo:v90];
    if (!v92)
    {
      v93 = [MEMORY[0x1E696AFB0] UUID];
      v92 = [v93 UUIDString];

      [v90 setObject:v92 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoContentItemIdentifier"];
    }

    if ((obja & 1) == 0)
    {
      [v19 setNowPlayingInfo:v90];
    }

    v140 = v92;
    if ((v88 & 1) == 0)
    {
      [v19 setNowPlayingArtwork:v136];
    }

    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v94 = v91;
    v95 = [v94 countByEnumeratingWithState:&v153 objects:buf count:16];
    if (v95)
    {
      v96 = v95;
      v97 = *v154;
      do
      {
        for (j = 0; j != v96; ++j)
        {
          if (*v154 != v97)
          {
            objc_enumerationMutation(v94);
          }

          v99 = *(*(&v153 + 1) + 8 * j);
          v100 = [v150 objectForKeyedSubscript:v99];
          [v149 setNowPlayingAnimatedArtwork:v100 forFormat:v99];
        }

        v96 = [v94 countByEnumeratingWithState:&v153 objects:buf count:16];
      }

      while (v96);
    }

    v101 = [v90 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkIdentifier"];
    v102 = v101;
    if (v136 && ![(__CFString *)v101 length])
    {
      v103 = [MEMORY[0x1E696AFB0] UUID];
      v104 = [v103 UUIDString];

      v102 = v104;
    }

    if (v88)
    {
      v105 = [v149 nowPlayingArtworkID];

      v102 = v105;
    }

    v13 = v130;
    [v149 setNowPlayingArtworkID:v102];
    if (_os_feature_enabled_impl())
    {
      v106 = _MRNowPlayingSupportedAnimatedArtworkFormats();
      v151[0] = MEMORY[0x1E69E9820];
      v151[1] = 3221225472;
      v151[2] = ___MRSetNowPlayingInfo_block_invoke_2_50;
      v151[3] = &unk_1E769F178;
      v152 = v90;
      v107 = [v106 mr_compactMap:v151];
      v108 = [v107 componentsJoinedByString:@"/"];
    }

    else
    {
      v108 = 0;
    }

    if (-[__CFString length](v102, "length") && ![v108 length])
    {
      v111 = v102;
    }

    else
    {
      if (!-[__CFString length](v102, "length") && ![v108 length])
      {
        v143 = 0;
LABEL_146:
        v112 = MRMediaRemoteCopyReadableDictionaryDescription(v90);
        v113 = _MRLogForCategory(1uLL);
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
        {
          v114 = @"Replace";
          if (!a3)
          {
            v114 = @"Update";
          }

          *v171 = 138543618;
          v172 = v114;
          v173 = 2112;
          v174 = v112;
          _os_log_impl(&dword_1A2860000, v113, OS_LOG_TYPE_DEFAULT, "[NowPlayingInfo] Setting nowPlayingInfo with mergePolicy %{public}@: %@", v171, 0x16u);
        }

        v115 = _MRLogForCategory(1uLL);
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
        {
          *v171 = 138543618;
          v172 = v143;
          v173 = 2112;
          v174 = v136;
          _os_log_impl(&dword_1A2860000, v115, OS_LOG_TYPE_DEFAULT, "[NowPlayingInfo] Setting nowPlayingInfo artwork (id: %{public}@): %@", v171, 0x16u);
        }

        v116 = [[MRContentItem alloc] initWithNowPlayingInfo:v90];
        MRContentItemSetHasArtworkData(v116, v136 != 0);
        MRContentItemSetArtworkIdentifier(v116, v143);
        if (_os_feature_enabled_impl())
        {
          v117 = [v149 nowPlayingAnimatedArtworkFormats];
          if ([v117 count])
          {
            [(MRContentItem *)v116 setAvailableAnimatedArtworkFormats:v117];
          }
        }

        if (v146)
        {
          v118 = [MRContentItem extractedIdentifierFromNowPlayingInfo:v146];
        }

        else
        {
          v118 = 0;
        }

        v23 = v137;
        if ([v118 isEqualToString:v140])
        {
          v119 = [v149 subscriptionController];
          v120 = [v119 requestForSubscribedContentItemIdentifier:v140];

          if (v120)
          {
            v121 = [[MRPlaybackQueueRequest alloc] initWithRange:0, 1];
            if ((obja & 1) == 0)
            {
              if ([v120 includeLanguageOptions] && MRContentItemGetHasLanguageOptions(v116))
              {
                [(MRPlaybackQueueRequest *)v121 setIncludeLanguageOptions:1];
              }

              if ([v120 includeMetadata])
              {
                [(MRPlaybackQueueRequest *)v121 setIncludeMetadata:1];
              }
            }

            if ((v88 & 1) == 0)
            {
              if (MRContentItemGetHasArtworkData(v116))
              {
                [(MRPlaybackQueueRequest *)v121 setArtworkWidth:600.0];
                [(MRPlaybackQueueRequest *)v121 setArtworkHeight:600.0];
              }

              [(MRPlaybackQueueRequest *)v121 setIncludeMetadata:1];
            }

            MRMediaRemotePlaybackQueueDataSourceContentItemChangedWithRequestForPlayer(v116, v121, v138);

            v13 = v130;
          }

          v23 = v137;
          v84 = v128;
        }

        else
        {
          if (v84 && MRMediaRemoteCurrentApplicationIsAirPlayReceiver())
          {
            v122 = [v138 client];
            v123 = [v122 skeleton];

            v124 = [v138 origin];
            MRMediaRemoteSetClientProperties(v123, v124, 0, 0);

            v23 = v137;
            v84 = v128;
          }

          MRMediaRemotePlaybackQueueDataSourceInvalidateWithNowPlayingContentItemForPlayer(v116, v138);
        }

        v12 = v129;
        v16 = v132;
        v24 = v134;
        v19 = v149;
        if (!v84)
        {
          goto LABEL_181;
        }

        goto LABEL_178;
      }

      v110 = &stru_1F1513E38;
      if (v102)
      {
        v110 = v102;
      }

      v111 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v110, v108];
    }

    v143 = v111;
    goto LABEL_146;
  }

  v21 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    MRMediaRemoteSetNowPlayingInfoForPlayer_cold_3(v21);
  }

  Error = MRMediaRemoteCreateError(2);
  v23 = v137;
  (*(v137 + 16))(v137, Error);
  v24 = v134;
LABEL_182:

  v126 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteSetNowPlayingInfoWithMergePolicy(void *a1, int a2)
{
  v4 = +[MROrigin localOrigin];
  MRMediaRemoteSetNowPlayingInfoForOriginWithMergePolicy(v4, a1, a2);
}

void MRMediaRemoteSetNowPlayingInfo(void *a1)
{
  v2 = +[MROrigin localOrigin];
  MRMediaRemoteSetNowPlayingInfoForOriginWithMergePolicy(v2, a1, 0);
}

id _MRNowPlayingSupportedAnimatedArtworkFormats()
{
  if (_MRNowPlayingSupportedAnimatedArtworkFormats_onceToken != -1)
  {
    _MRNowPlayingSupportedAnimatedArtworkFormats_cold_1();
  }

  v1 = _MRNowPlayingSupportedAnimatedArtworkFormats_all;

  return v1;
}

__CFString *_MRNowPlayingInfoAnimatedArtworkIdentifierKeyForFormat(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"MRContentItemAnimatedArtworkFormatSquare"])
  {
    v2 = kMRMediaRemoteNowPlayingInfoSquareAnimatedArtworkIdentifier;
LABEL_5:
    v3 = *v2;
    goto LABEL_7;
  }

  if ([v1 isEqualToString:@"MRContentItemAnimatedArtworkFormatTall"])
  {
    v2 = kMRMediaRemoteNowPlayingInfoTallAnimatedArtworkIdentifier;
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

uint64_t _MRAdjustVolumeMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = objc_alloc_init(_MRRequestDetailsProtobuf);
        objc_storeStrong((a1 + 16), v23);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !_MRRequestDetailsProtobufReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v21 = PBReaderReadString();
        v22 = *(a1 + 24);
        *(a1 + 24) = v21;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v26[0] & 0x7F) << v14;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
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

LABEL_38:
        *(a1 + 8) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MRMediaRemoteSendCommandToApp(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v13 = a7;
  v14 = a6;
  v15 = [[MRClient alloc] initWithProcessIdentifier:0 bundleIdentifier:a4];
  MRMediaRemoteSendCommandToClient(a1, a2, a3, v15, a5, v14, v13);

  return 1;
}

uint64_t MRMediaRemoteSendCommandWithReply(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __MRMediaRemoteSendCommandWithReply_block_invoke;
  v10[3] = &unk_1E769F1D0;
  v11 = v7;
  v8 = v7;
  MRMediaRemoteSendCommandToApp(a1, a2, 0, 0, 0, a3, v10);

  return 1;
}

uint64_t __MRMediaRemoteSendCommandWithReply_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

uint64_t MRMediaRemoteSendCommandForOriginWithReply(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __MRMediaRemoteSendCommandForOriginWithReply_block_invoke;
  v12[3] = &unk_1E769F1D0;
  v13 = v9;
  v10 = v9;
  MRMediaRemoteSendCommandToApp(a2, a3, a1, 0, 0, a4, v12);

  return 1;
}

uint64_t __MRMediaRemoteSendCommandForOriginWithReply_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

uint64_t MRMediaRemoteSendCommandToClient(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v13 = a7;
  v14 = a6;
  v15 = [[MRPlayerPath alloc] initWithOrigin:a3 client:a4 player:0];
  MRMediaRemoteSendCommandToPlayer(a1, a2, v15, a5, v14, v13);

  return 1;
}

uint64_t MRMediaRemoteSendCommandToPlayer(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __MRMediaRemoteSendCommandToPlayer_block_invoke;
  v14[3] = &unk_1E769F248;
  v15 = v11;
  v12 = v11;
  _MRMediaRemoteSendCommandToPlayerWithResult(a1, a2, a3, a4, a5, v14);

  return 1;
}

void _MRMediaRemoteSendCommandToPlayer(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (MRMediaRemoteCommandRequiresOptions(a1) && [v13 isResolved])
  {
    v16 = +[MRNowPlayingOriginClientManager sharedManager];
    v17 = [v16 playerClientRequestsForPlayerPath:v13];

    v18 = [v17 subscriptionController];
    [v18 augmentCommandOptions:v11 forCommand:a1];
  }

  if (MRMediaRemoteValidateOutgoingCommandOptions(a1, v11))
  {
    if ([v13 isLocal])
    {
      if (MRMediaRemoteCommandSupportsAttribution(a1))
      {
        v19 = +[MRGroupSessionRequestManager sharedManager];
        [v19 augmentLocalCommandOptions:v11];
      }

      v20 = MRGetSharedService();
      ClientModule = MRMediaRemoteServiceGetClientModule(v20);
      (*ClientModule)(v13, a1, v11, v15);
      goto LABEL_16;
    }

    v23 = MRGetSharedService();
    v24 = v12;
    v25 = [v13 origin];
    v26 = [v24 origin];
    if (v25 == v26 || [v25 isEqual:v26])
    {
    }

    else
    {
      v29 = v23;
      v27 = [v13 origin];
      v28 = [v27 isLocal];

      if (v28)
      {
        v23 = v29;
        goto LABEL_15;
      }

      v25 = v24;
      v24 = [v13 copy];
      v23 = v29;
    }

LABEL_15:
    v30[1] = v11;
    v30[0] = a1;
    v30[2] = v24;
    MRMediaRemoteServiceSendCommand(v23, v30, v14, v15);

    goto LABEL_16;
  }

  if (v15)
  {
    v22 = [MRCommandResult commandResultWithSendError:7];
    (*(v15 + 2))(v15, v22);
  }

LABEL_16:
}

uint64_t _MRMediaRemoteSendCommandToPlayerWithResult(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v64 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (!v13)
  {
    v13 = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
  }

  if (a1 != 116)
  {
    v17 = [MEMORY[0x1E695DF00] date];
    if (a1 == 122 || !a1)
    {
      v18 = _MRLogForCategory(2uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = MRMediaRemoteCopyCommandDescription(a1);
        *buf = 138412546;
        v61 = v19;
        v62 = 2112;
        v63 = v17;
        _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "[MRSendCommand] WHAPRO: Sending %@ Command with Timestamp: %@", buf, 0x16u);
      }
    }

    v46 = v17;
    v45 = qos_class_self();
    v47 = v11;
    v20 = MRMediaRemoteResolveCommandOptions(v11, a4);
    v21 = MRMediaRemoteCopyCommandDescription(a1);
    v22 = objc_alloc(MEMORY[0x1E696AD60]);
    v23 = MRMediaRemoteCommandCreateDescription(a1, v20, 1);
    v24 = [v22 initWithFormat:@"%@<%@>", v23, 0];

    if (v12)
    {
      [v24 appendFormat:@" for %@", v12];
    }

    v25 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v61 = v24;
      _os_log_impl(&dword_1A2860000, v25, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }

    v26 = _MRLogForCategory(2uLL);
    v27 = [v20 objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
    v28 = [v27 hash];

    if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2860000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v28, "SendCommand", &unk_1A2BB0121, buf, 2u);
    }

    v29 = _MRLogForCategory(2uLL);
    v30 = [v20 objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
    v31 = [v30 hash];

    if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2860000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v31, "SendCommandWithResult", &unk_1A2BB0121, buf, 2u);
    }

    v32 = objc_alloc(MEMORY[0x1E696AEC0]);
    v33 = [v20 objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
    v16 = [v32 initWithFormat:@"com.apple.mediaremote.command.%@.%@", v21, v33];

    v34 = [v16 UTF8String];
    v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v36 = qos_class_self();
    v37 = dispatch_queue_attr_make_with_qos_class(v35, v36, 0);
    v38 = dispatch_queue_create(v34, v37);

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = ___MRMediaRemoteSendCommandToPlayerWithResult_block_invoke_25;
    v48[3] = &unk_1E769F220;
    v56 = v45;
    v57 = a1;
    v49 = v20;
    v50 = v46;
    v51 = v12;
    v55 = v14;
    v52 = v13;
    v53 = v21;
    v54 = v38;
    v39 = v38;
    v40 = v21;
    v41 = v46;
    v42 = v20;
    MRMediaRemoteNowPlayingResolvePlayerPath(v51, v39, v48);

    v11 = v47;
    goto LABEL_22;
  }

  if (v14)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___MRMediaRemoteSendCommandToPlayerWithResult_block_invoke;
    block[3] = &unk_1E769AD58;
    v59 = v14;
    dispatch_async(v13, block);
    v16 = v59;
LABEL_22:
  }

  v43 = *MEMORY[0x1E69E9840];
  return 1;
}

void __MRMediaRemoteSendCommandToPlayer_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v4 = [v3 sendError];
    v5 = [v3 handlerReturnStatuses];

    (*(v2 + 16))(v2, v4, v5);
  }
}

uint64_t MRMediaRemoteBroadcastCommand(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a6;
  if (!v11)
  {
    v11 = MEMORY[0x1E69E96A0];
    v13 = MEMORY[0x1E69E96A0];
  }

  v14 = [MEMORY[0x1E695DF00] date];
  v15 = MRMediaRemoteResolveCommandOptions(a2, a4);
  [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kMRMediaRemoteOptionCommandBroadcasted"];
  v16 = [[MRPlayerPath alloc] initWithOrigin:a3 client:0 player:0];
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18 = MRMediaRemoteCommandCreateDescription(a1, v15, 1);
  v19 = [v17 initWithFormat:@"%@%@", @"Broadcast", v18];

  v20 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v19, 0];
  v21 = v20;
  if (v16)
  {
    [v20 appendFormat:@" for %@", v16];
  }

  v22 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    buf = 138543362;
    *buf_4 = v21;
    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
  }

  v23 = MRGetSharedService();
  *buf_4 = 0;
  *&buf_4[4] = v15;
  buf = a1;
  v38 = v16;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __MRMediaRemoteBroadcastCommand_block_invoke;
  v30[3] = &unk_1E769F270;
  v35 = a1;
  v31 = v15;
  v32 = v16;
  v33 = v14;
  v34 = v12;
  v24 = v12;
  v25 = v14;
  v26 = v16;
  v27 = v15;
  MRMediaRemoteServiceBroadcastCommand(v23, &buf, v11, v30);

  v28 = *MEMORY[0x1E69E9840];
  return 1;
}

void __MRMediaRemoteBroadcastCommand_block_invoke(uint64_t a1, uint64_t a2, __CFString *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = MRMediaRemoteCommandCreateDescription(*(a1 + 64), *(a1 + 32), 0);
  v8 = [v6 initWithFormat:@"%@%@", @"Broadcast", v7];

  v9 = MRMediaRemoteCopySendCommandErrorDescription(a2);
  if (a3 && !v9)
  {
    v10 = *(a1 + 40);
    v11 = _MRLogForCategory(0xAuLL);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (!v12)
      {
        goto LABEL_23;
      }

      v13 = *(a1 + 40);
      v14 = [MEMORY[0x1E695DF00] date];
      [(__CFString *)v14 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v44 = v8;
      v45 = 2114;
      v46 = 0;
      v47 = 2112;
      v48 = a3;
      v49 = 2114;
      v50 = v13;
      v51 = 2048;
      v52 = v15;
      v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v17 = v11;
      v18 = 52;
      goto LABEL_16;
    }

    if (!v12)
    {
      goto LABEL_23;
    }

    v14 = [MEMORY[0x1E695DF00] date];
    [(__CFString *)v14 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138544130;
    v44 = v8;
    v45 = 2114;
    v46 = 0;
    v47 = 2112;
    v48 = a3;
    v49 = 2048;
    v50 = v35;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    goto LABEL_15;
  }

  v19 = MRMediaRemoteCopySendCommandErrorDescription(a2);

  v20 = *(a1 + 40);
  v21 = _MRLogForCategory(0xAuLL);
  v11 = v21;
  if (v19)
  {
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (!v22)
      {
        goto LABEL_23;
      }

      v23 = MRMediaRemoteCopySendCommandErrorDescription(a2);
      v24 = *(a1 + 40);
      v25 = MEMORY[0x1E695DF00];
      v14 = v23;
      v26 = [v25 date];
      [v26 timeIntervalSinceDate:*(a1 + 48)];
      v28 = v27;

      *buf = 138544386;
      v44 = v8;
      v45 = 2114;
      v46 = 0;
      v47 = 2114;
      v48 = v23;
      v49 = 2114;
      v50 = v24;
      v51 = 2048;
      v52 = v28;
      v29 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
      v30 = v11;
      v31 = 52;
      goto LABEL_20;
    }

    if (v22)
    {
      v36 = MRMediaRemoteCopySendCommandErrorDescription(a2);
      v37 = MEMORY[0x1E695DF00];
      v14 = v36;
      v26 = [v37 date];
      [v26 timeIntervalSinceDate:*(a1 + 48)];
      v39 = v38;

      *buf = 138544130;
      v44 = v8;
      v45 = 2114;
      v46 = 0;
      v47 = 2114;
      v48 = v36;
      v49 = 2048;
      v50 = v39;
      v29 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
      v30 = v11;
      v31 = 42;
LABEL_20:
      _os_log_error_impl(&dword_1A2860000, v30, OS_LOG_TYPE_ERROR, v29, buf, v31);

      goto LABEL_17;
    }
  }

  else
  {
    v32 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (!v32)
      {
        goto LABEL_23;
      }

      v33 = *(a1 + 40);
      v14 = [MEMORY[0x1E695DF00] date];
      [(__CFString *)v14 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544130;
      v44 = v8;
      v45 = 2114;
      v46 = 0;
      v47 = 2114;
      v48 = v33;
      v49 = 2048;
      v50 = v34;
      v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
LABEL_15:
      v17 = v11;
      v18 = 42;
LABEL_16:
      _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
LABEL_17:

      goto LABEL_23;
    }

    if (v32)
    {
      v14 = [MEMORY[0x1E695DF00] date];
      [(__CFString *)v14 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138543874;
      v44 = v8;
      v45 = 2114;
      v46 = 0;
      v47 = 2048;
      v48 = v40;
      v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v17 = v11;
      v18 = 32;
      goto LABEL_16;
    }
  }

LABEL_23:

  v41 = *(a1 + 56);
  if (v41)
  {
    (*(v41 + 16))(v41, a2, a3);
  }

  v42 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteSetElapsedTime()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"kMRMediaRemoteOptionPlaybackPosition";
  v0 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v4[0] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];

  MRMediaRemoteSendCommandToApp(24, v1, 0, 0, 0, 0, 0);
  v2 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteSetPlaybackSpeed(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"kMRMediaRemoteOptionPredefinedPlaybackRate";
  v1 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  MRMediaRemoteSendCommandToApp(19, v2, 0, 0, 0, 0, 0);
  v3 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteSetRepeatMode(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"kMRMediaRemoteOptionRepeatMode";
  v1 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  MRMediaRemoteSendCommandToApp(25, v2, 0, 0, 0, 0, 0);
  v3 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteSetShuffleMode(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"kMRMediaRemoteOptionShuffleMode";
  v1 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  MRMediaRemoteSendCommandToApp(26, v2, 0, 0, 0, 0, 0);
  v3 = *MEMORY[0x1E69E9840];
}

id MRMediaRemoteRestrictCommandClients(void *a1)
{
  v1 = a1;
  v2 = +[MRRestrictedCommandClientsManager sharedManager];
  v3 = [v2 restrictCommandClientsTo:v1];

  return v3;
}

void __trackAnalyticsSendCommand_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 deviceClass];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __trackAnalyticsSendCommand_block_invoke_2;
  v12[3] = &unk_1E769F298;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v18 = v4;
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v13 = v10;
  v14 = v9;
  v19 = *(a1 + 80);
  v20 = *(a1 + 84);
  v21 = *(a1 + 88);
  v15 = *(a1 + 64);
  v16 = v3;
  v17 = *(a1 + 72);
  v11 = v3;
  MRAnalyticsSendEvent(@"com.apple.mediaremote.send-mr-command", 0, v12);
}

id __trackAnalyticsSendCommand_block_invoke_2(uint64_t a1)
{
  v58[22] = *MEMORY[0x1E69E9840];
  v51 = objc_alloc(MEMORY[0x1E695DF90]);
  v57[0] = @"duration";
  v2 = MEMORY[0x1E696AD98];
  [*(a1 + 32) timeIntervalSinceNow];
  v4 = [v2 numberWithDouble:fabs(v3)];
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = @"unknown";
  }

  v56 = v4;
  v58[0] = v4;
  v58[1] = v6;
  v57[1] = @"appBundle";
  v57[2] = @"appBundleInt";
  v55 = [MEMORY[0x1E696AD98] numberWithInt:MRAnalyticsAppBundleIDStringToInt(v5)];
  v58[2] = v55;
  v57[3] = @"destinationAppBundle";
  v54 = [*(a1 + 48) client];
  v7 = [v54 bundleIdentifier];
  v53 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"unknown";
  }

  v58[3] = v8;
  v57[4] = @"destinationAppBundleInt";
  v9 = MEMORY[0x1E696AD98];
  v52 = [*(a1 + 48) client];
  v50 = [v52 bundleIdentifier];
  v49 = [v9 numberWithInt:MRAnalyticsAppBundleIDStringToInt(v50)];
  v58[4] = v49;
  v57[5] = @"originator";
  v10 = MRAnalyticsCompositionForLocalDevice();
  v48 = MRAnalyticsDeviceCompositionDescription(v10);
  v58[5] = v48;
  v57[6] = @"originatorInt";
  v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:MRAnalyticsCompositionForLocalDevice()];
  v58[6] = v47;
  v57[7] = @"destination";
  v11 = MRAnalyticsCompositionForDeviceClass(*(a1 + 88));
  v46 = MRAnalyticsDeviceCompositionDescription(v11);
  v58[7] = v46;
  v57[8] = @"destinationInt";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:MRAnalyticsCompositionForDeviceClass(*(a1 + 88))];
  v13 = *(a1 + 56);
  v45 = v12;
  v58[8] = v12;
  v58[9] = v13;
  v57[9] = @"commandDescription";
  v57[10] = @"Command";
  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 96)];
  v58[10] = v44;
  v57[11] = @"isLocalDevice";
  v43 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 100)];
  v58[11] = v43;
  v57[12] = @"isLocalApp";
  v42 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 101)];
  v58[12] = v42;
  v57[13] = @"directUserInteraction";
  v41 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 102)];
  v58[13] = v41;
  v57[14] = @"targeted";
  v40 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 103)];
  v58[14] = v40;
  v57[15] = @"placeholder";
  v39 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 104)];
  v58[15] = v39;
  v57[16] = @"contextID";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 105)];
  v15 = v14;
  v16 = *(a1 + 64);
  if (v16)
  {
    v17 = *(a1 + 64);
  }

  else
  {
    v17 = @"unknown";
  }

  v58[16] = v14;
  v58[17] = v17;
  v57[17] = @"remoteControlInterface";
  v57[18] = @"remoteControlInterfaceInt";
  v18 = MEMORY[0x1E696AD98];
  v19 = v16;
  v20 = v19;
  if (v16)
  {
    if ([v19 containsString:@"MediaAssistant"])
    {
      v21 = 1;
    }

    else if ([v20 containsString:@"airplay"])
    {
      v21 = 2;
    }

    else if ([v20 containsString:@"SoundBoard"])
    {
      v21 = 3;
    }

    else if ([v20 containsString:@"AVRCP"])
    {
      v21 = 4;
    }

    else if ([v20 containsString:@"Krono"])
    {
      v21 = 5;
    }

    else if ([v20 containsString:@"Player.DataSource.PlaybackCommand"])
    {
      v21 = 6;
    }

    else if ([v20 containsString:@"com.apple.NowPlayingCap.interfaceIdentifer"])
    {
      v21 = 7;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 149;
  }

  v22 = [v18 numberWithInt:v21];
  v58[18] = v22;
  v57[19] = @"isAirPlayActive";
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 72), "isAirPlayActive")}];
  v58[19] = v23;
  v57[20] = @"clusterType";
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*(a1 + 72), "clusterType")}];
  v58[20] = v24;
  v57[21] = @"upTime";
  v25 = MEMORY[0x1E696AD98];
  v26 = [MEMORY[0x1E696AE30] processInfo];
  [v26 systemUptime];
  v27 = [v25 numberWithDouble:?];
  v58[21] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:22];
  v29 = [v51 initWithDictionary:v28];

  v30 = *(a1 + 80);
  if (v30)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v30, "code")}];
    [v29 setObject:v31 forKeyedSubscript:@"errorCode"];
  }

  if ((([*(a1 + 72) clusterType] - 1) & 0xFFFFFFFD) == 0)
  {
    v32 = MEMORY[0x1E696AD98];
    v33 = [*(a1 + 72) preferredClusterLeaderID];
    v34 = [*(a1 + 72) deviceUID];
    v35 = [v32 numberWithBool:{objc_msgSend(v33, "isEqualToString:", v34)}];
    [v29 setObject:v35 forKeyedSubscript:@"isPreferredClusterLeader"];

    v36 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 72), "isClusterLeader")}];
    [v29 setObject:v36 forKeyedSubscript:@"isClusterLeader"];
  }

  v37 = *MEMORY[0x1E69E9840];

  return v29;
}

uint64_t _MRGetStateMessageProtobufReadFrom(uint64_t a1, void *a2)
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

uint64_t _MRRemoveEndpointsMessageProtobufReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      if (v14)
      {
        [a1 addEndpointUIDs:v14];
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRSetDiscoveryModeProtobufMessageReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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
        v27 = objc_alloc_init(_MRDiscoverySessionConfigurationProtobuf);
        objc_storeStrong((a1 + 8), v27);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !_MRDiscoverySessionConfigurationProtobufReadFrom(v27, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v31[0] & 0x7F) << v21;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_46;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_46:
          v28 = 16;
          goto LABEL_51;
        }

        if (v13 == 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v31[0] & 0x7F) << v14;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_50;
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

LABEL_50:
          v28 = 20;
LABEL_51:
          *(a1 + v28) = v20;
          goto LABEL_52;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

LABEL_52:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MRSystemAppPlaybackQueueCreate(const void *a1, int a2)
{
  v4 = MEMORY[0x1A58E23C0](a1, 96, 0x106204085B0CA2DLL, 0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 8) = a2;
  *(v4 + 12) = 0;
  *(v4 + 48) = 0;
  *v4 = a1;
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2 > 4)
  {
    if (a2 != 5)
    {
      if (a2 != 6)
      {
        if (a2 != 7)
        {
          return v4;
        }

        *(v4 + 72) = 0;
      }

      *(v4 + 64) = 0;
      return v4;
    }

LABEL_13:
    *(v4 + 64) = 0;
    return v4;
  }

  if (a2 == 1)
  {
    *(v4 + 80) = 0;
    return v4;
  }

  if (a2 == 2 || a2 == 3)
  {
    goto LABEL_13;
  }

  return v4;
}

uint64_t MRSystemAppPlaybackQueueCopy(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = MRSystemAppPlaybackQueueCreate(*a1, *(a1 + 8));
  *(v2 + 12) = *(a1 + 12);
  *(v2 + 48) = *(a1 + 48);
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E695E480];
  if (v3)
  {
    *(v2 + 16) = CFStringCreateCopy(*MEMORY[0x1E695E480], v3);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(v2 + 24) = CFStringCreateCopy(*v4, v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    *(v2 + 32) = CFStringCreateCopy(*v4, v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    *(v2 + 40) = CFDictionaryCreateCopy(*v4, v7);
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    *(v2 + 56) = CFDictionaryCreateCopy(*v4, v8);
  }

  v9 = *(a1 + 8);
  if (v9 > 4)
  {
    switch(v9)
    {
      case 5:
LABEL_25:
        v13 = *(a1 + 72);
        if (v13)
        {
          *(v2 + 72) = CFArrayCreateCopy(*v4, v13);
        }

        v14 = *(a1 + 80);
        if (v14)
        {
          *(v2 + 80) = CFStringCreateCopy(*v4, v14);
        }

        v15 = *(a1 + 88);
        if (v15)
        {
          *(v2 + 88) = CFRetain(v15);
        }

        *(v2 + 64) = *(a1 + 64);
        return v2;
      case 6:
        v19 = *(a1 + 64);
        if (v19)
        {
          v20 = *v4;
          v21 = CFURLGetString(v19);
          v22 = CFURLGetBaseURL(*(a1 + 64));
          *(v2 + 64) = CFURLCreateWithString(v20, v21, v22);
        }

        break;
      case 7:
        v10 = *(a1 + 64);
        if (v10)
        {
          *(v2 + 64) = CFStringCreateCopy(*v4, v10);
        }

        v11 = *(a1 + 72);
        if (v11)
        {
          Copy = CFRetain(v11);
          goto LABEL_44;
        }

        break;
    }
  }

  else
  {
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        if (v9 != 3)
        {
          return v2;
        }

        goto LABEL_25;
      }

      v18 = *(a1 + 64);
      *(v2 + 64) = v18;
      if (v18 != 2)
      {
        if (v18 == 1)
        {
          *(v2 + 72) = *(a1 + 72);
        }

        return v2;
      }

      v23 = *(a1 + 72);
      if (!v23)
      {
        return v2;
      }

      Copy = CFStringCreateCopy(*v4, v23);
LABEL_44:
      *(v2 + 72) = Copy;
      return v2;
    }

    v16 = *(a1 + 64);
    if (v16)
    {
      *(v2 + 64) = CFRetain(v16);
    }

    v17 = *(a1 + 72);
    if (v17)
    {
      *(v2 + 72) = CFRetain(v17);
    }

    *(v2 + 80) = *(a1 + 80);
    *(v2 + 88) = *(a1 + 88);
  }

  return v2;
}

void MRSystemAppPlaybackQueueDestroy(_DWORD *ptr)
{
  if (!ptr)
  {
    MRSystemAppPlaybackQueueDestroy_cold_1();
  }

  v2 = ptr[2];
  if (v2 > 4)
  {
    if (v2 == 5)
    {
      goto LABEL_12;
    }

    if (v2 == 6)
    {
      v7 = (ptr + 16);
      v6 = *(ptr + 8);
      if (!v6)
      {
        goto LABEL_21;
      }

LABEL_20:
      CFRelease(v6);
      *v7 = 0;
      goto LABEL_21;
    }

    if (v2 != 7)
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  if (v2 == 1)
  {
LABEL_10:
    v3 = *(ptr + 8);
    if (v3)
    {
      CFRelease(v3);
      *(ptr + 8) = 0;
    }

    goto LABEL_19;
  }

  if (v2 == 2)
  {
    if (ptr[16] != 2)
    {
      goto LABEL_21;
    }

LABEL_19:
    v7 = (ptr + 18);
    v6 = *(ptr + 9);
    if (!v6)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v2 != 3)
  {
    goto LABEL_21;
  }

LABEL_12:
  v4 = *(ptr + 9);
  if (v4)
  {
    CFRelease(v4);
    *(ptr + 9) = 0;
  }

  v5 = *(ptr + 10);
  if (v5)
  {
    CFRelease(v5);
    *(ptr + 10) = 0;
  }

  v7 = (ptr + 22);
  v6 = *(ptr + 11);
  if (v6)
  {
    goto LABEL_20;
  }

LABEL_21:
  v8 = *(ptr + 2);
  if (v8)
  {
    CFRelease(v8);
    *(ptr + 2) = 0;
  }

  v9 = *(ptr + 3);
  if (v9)
  {
    CFRelease(v9);
    *(ptr + 3) = 0;
  }

  v10 = *(ptr + 5);
  if (v10)
  {
    CFRelease(v10);
    *(ptr + 5) = 0;
  }

  v11 = *(ptr + 7);
  if (v11)
  {
    CFRelease(v11);
    *(ptr + 7) = 0;
  }

  v12 = *ptr;
  CFAllocatorDeallocate(*ptr, ptr);
  if (v12)
  {

    CFRelease(v12);
  }
}

uint64_t MRSystemAppPlaybackQueueCopyDescription(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2 <= 4)
    {
      if (v2 == 1)
      {
        v7 = MRMediaRemoteCopyShuffleModeDescription(*(a1 + 80));
        v8 = MRMediaRemoteCopyRepeatModeDescription(*(v1 + 84));
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"queryData: %p, shuffleMode: %@, repeatMode: %@", *(v1 + 64), v7, v8];

        goto LABEL_16;
      }

      if (v2 == 2)
      {
        v11 = *(a1 + 64);
        if (v11 == 2)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"stationStringID: %@", *(a1 + 72), v15];
          goto LABEL_21;
        }

        if (v11 == 1)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"stationID: %lld", *(a1 + 72), v15];
          goto LABEL_21;
        }

        goto LABEL_25;
      }

      v6 = 0;
      if (v2 != 3)
      {
LABEL_26:
        v12 = MRSystemAppPlaybackQueueCopyTypeDescription(*(v1 + 8));
        v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<MRSystemAppPlaybackQueue %p, type: %@, %@>", v1, v12, v6];

        return v1;
      }
    }

    else
    {
      if (v2 > 6)
      {
        if (v2 != 7)
        {
          if (v2 == 8)
          {
            v6 = @"Empty Queue";
          }

          else
          {
            v6 = 0;
          }

          goto LABEL_26;
        }

        v4 = MEMORY[0x1E696AEC0];
        v10 = *(a1 + 64);
        Length = *(a1 + 72);
        if (Length)
        {
          Length = CFDataGetLength(Length);
        }

        v14 = v10;
        v15 = Length;
        v5 = @"identifier: %@ data: <%ld>";
        goto LABEL_20;
      }

      if (v2 != 5)
      {
        v3 = *(a1 + 64);
        if (v3)
        {
          v4 = MEMORY[0x1E696AEC0];
          v14 = CFURLGetString(v3);
          v5 = @"seedTrack: %@";
LABEL_20:
          [v4 stringWithFormat:v5, v14, v15];
          v6 = LABEL_21:;
          goto LABEL_26;
        }

LABEL_25:
        v6 = 0;
        goto LABEL_26;
      }
    }

    v7 = MRMediaRemoteCopyShuffleModeDescription(*(a1 + 64));
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"shuffleMode: %@, trackIDs: %@", v7, *(v1 + 72)];
LABEL_16:

    goto LABEL_26;
  }

  return v1;
}

CFStringRef MRSystemAppPlaybackQueueCopyTypeDescription(int a1)
{
  v1 = a1 - 1;
  if (a1 - 1) <= 7 && ((0xF7u >> v1))
  {
    return CFStringCreateCopy(*MEMORY[0x1E695E480], off_1E769F550[v1]);
  }

  else
  {
    return 0;
  }
}

uint64_t MRSystemAppPlaybackQueueGetType(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueGetType_cold_1();
  }

  return *(a1 + 8);
}

uint64_t MRSystemAppPlaybackQueueIsRequestingImmediatePlayback(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueIsRequestingImmediatePlayback_cold_1();
  }

  return *(a1 + 12);
}

uint64_t MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback(uint64_t result, char a2)
{
  if (!result)
  {
    MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback_cold_1();
  }

  *(result + 12) = a2;
  return result;
}

uint64_t MRSystemAppPlaybackQueueGetSiriRecommendationIdentifier(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueGetSiriRecommendationIdentifier_cold_1();
  }

  return *(a1 + 16);
}

void MRSystemAppPlaybackQueueSetSiriRecommendationIdentifier(uint64_t a1, const __CFString *a2)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueSetSiriRecommendationIdentifier_cold_1();
  }

  if (a2)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
  }

  else
  {
    Copy = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 16) = Copy;
}

uint64_t MRSystemAppPlaybackQueueGetSiriAssetInfo(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueGetSiriAssetInfo_cold_1();
  }

  return *(a1 + 24);
}

void MRSystemAppPlaybackQueueSetSiriAssetInfo(uint64_t a1, const __CFString *a2)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueSetSiriAssetInfo_cold_1();
  }

  if (a2)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
  }

  else
  {
    Copy = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 24) = Copy;
}

uint64_t MRSystemAppPlaybackQueueCopyFeatureName(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueCopyFeatureName_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 copy];
}

void MRSystemAppPlaybackQueueSetFeatureName(uint64_t a1, const __CFString *a2)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueSetFeatureName_cold_1();
  }

  if (a2)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
  }

  else
  {
    Copy = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 32) = Copy;
}

uint64_t MRSystemAppPlaybackQueueGetSiriWHAMetricsInfo(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueGetSiriWHAMetricsInfo_cold_1();
  }

  return *(a1 + 40);
}

void MRSystemAppPlaybackQueueSetSiriWHAMetricsInfo(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueSetSiriWHAMetricsInfo_cold_1();
  }

  if (a2)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a2);
  }

  else
  {
    Copy = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 40) = Copy;
}

BOOL MRSystemAppPlaybackQueueShouldOverrideManuallyCuratedQueue(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueShouldOverrideManuallyCuratedQueue_cold_1();
  }

  return *(a1 + 48) != 1;
}

uint64_t MRSystemAppPlaybackQueueGetReplaceIntent(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueShouldOverrideManuallyCuratedQueue_cold_1();
  }

  return *(a1 + 48);
}

uint64_t MRSystemAppPlaybackQueueSetShouldOverrideManuallyCuratedQueue(uint64_t result, int a2)
{
  if (!result)
  {
    MRSystemAppPlaybackQueueSetShouldOverrideManuallyCuratedQueue_cold_1();
  }

  *(result + 48) = a2;
  return result;
}

uint64_t MRSystemAppPlaybackQueueSetReplaceIntent(uint64_t result, int a2)
{
  if (!result)
  {
    MRSystemAppPlaybackQueueSetShouldOverrideManuallyCuratedQueue_cold_1();
  }

  *(result + 48) = a2;
  return result;
}

uint64_t MRSystemAppPlaybackQueueGetUserInfo(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueGetUserInfo_cold_1();
  }

  return *(a1 + 56);
}

void MRSystemAppPlaybackQueueSetUserInfo(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueSetUserInfo_cold_1();
  }

  if (a2)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a2);
  }

  else
  {
    Copy = 0;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 56) = Copy;
}

uint64_t MRSystemAppPlaybackQueueGetLocalQueryData(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueGetLocalQueryData_cold_2();
  }

  if (*(a1 + 8) != 1)
  {
    MRSystemAppPlaybackQueueGetLocalQueryData_cold_1();
  }

  return *(a1 + 64);
}

void MRSystemAppPlaybackQueueSetLocalQueryData(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueSetLocalQueryData_cold_2();
  }

  if (*(a1 + 8) != 1)
  {
    MRSystemAppPlaybackQueueSetLocalQueryData_cold_1();
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 64) = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

uint64_t MRSystemAppPlaybackQueueGetLocalQueryFirstItemMultiverseIDData(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueGetLocalQueryFirstItemMultiverseIDData_cold_2();
  }

  if (*(a1 + 8) != 1)
  {
    MRSystemAppPlaybackQueueGetLocalQueryFirstItemMultiverseIDData_cold_1();
  }

  return *(a1 + 72);
}

void MRSystemAppPlaybackQueueSetLocalQueryFirstItemMultiverseIDData(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueSetLocalQueryFirstItemMultiverseIDData_cold_2();
  }

  if (*(a1 + 8) != 1)
  {
    MRSystemAppPlaybackQueueSetLocalQueryFirstItemMultiverseIDData_cold_1();
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 72) = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

uint64_t MRSystemAppPlaybackQueueGetLocalQueryFirstItemPID(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueGetLocalQueryFirstItemPID_cold_2();
  }

  if (*(a1 + 8) != 1)
  {
    MRSystemAppPlaybackQueueGetLocalQueryFirstItemPID_cold_1();
  }

  return *(a1 + 88);
}

uint64_t MRSystemAppPlaybackQueueSetLocalQueryFirstItemPID(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    MRSystemAppPlaybackQueueSetLocalQueryFirstItemPID_cold_2();
  }

  if (*(result + 8) != 1)
  {
    MRSystemAppPlaybackQueueSetLocalQueryFirstItemPID_cold_1();
  }

  *(result + 88) = a2;
  return result;
}

uint64_t MRSystemAppPlaybackQueueGetLocalQueryShuffleMode(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueGetLocalQueryShuffleMode_cold_2();
  }

  if (*(a1 + 8) != 1)
  {
    MRSystemAppPlaybackQueueGetLocalQueryShuffleMode_cold_1();
  }

  return *(a1 + 80);
}

uint64_t MRSystemAppPlaybackQueueSetLocalQueryShuffleMode(uint64_t result, int a2)
{
  if (!result)
  {
    MRSystemAppPlaybackQueueSetLocalQueryShuffleMode_cold_2();
  }

  if (*(result + 8) != 1)
  {
    MRSystemAppPlaybackQueueSetLocalQueryShuffleMode_cold_1();
  }

  *(result + 80) = a2;
  return result;
}

uint64_t MRSystemAppPlaybackQueueGetLocalQueryRepeatMode(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueGetLocalQueryRepeatMode_cold_2();
  }

  if (*(a1 + 8) != 1)
  {
    MRSystemAppPlaybackQueueGetLocalQueryRepeatMode_cold_1();
  }

  return *(a1 + 84);
}

uint64_t MRSystemAppPlaybackQueueSetLocalQueryRepeatMode(uint64_t result, int a2)
{
  if (!result)
  {
    MRSystemAppPlaybackQueueSetLocalQueryRepeatMode_cold_2();
  }

  if (*(result + 8) != 1)
  {
    MRSystemAppPlaybackQueueSetLocalQueryRepeatMode_cold_1();
  }

  *(result + 84) = a2;
  return result;
}

uint64_t MRSystemAppPlaybackQueueGetRadioStationIDType(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 2)
    {
      return *(result + 64);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void MRSystemAppPlaybackQueueSetRadioStationIDType(uint64_t a1, int a2)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueSetRadioStationIDType_cold_2();
  }

  if (*(a1 + 8) != 2)
  {
    MRSystemAppPlaybackQueueSetRadioStationIDType_cold_1();
  }

  v4 = *(a1 + 64);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
LABEL_8:
    *(a1 + 72) = 0;
  }

LABEL_9:
  *(a1 + 64) = a2;
}

uint64_t MRSystemAppPlaybackQueueGetRadioStationIntegerPID(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueGetRadioStationIntegerPID_cold_1();
  }

  if (*(a1 + 8) == 2 && *(a1 + 64) == 1)
  {
    return *(a1 + 72);
  }

  else
  {
    return 0;
  }
}

uint64_t MRSystemAppPlaybackQueueSetRadioStationIntegerPID(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    MRSystemAppPlaybackQueueSetRadioStationIntegerPID_cold_3();
  }

  if (*(result + 8) != 2)
  {
    MRSystemAppPlaybackQueueSetRadioStationIntegerPID_cold_1();
  }

  if (*(result + 64) != 1)
  {
    MRSystemAppPlaybackQueueSetRadioStationIntegerPID_cold_2();
  }

  *(result + 72) = a2;
  return result;
}

CFStringRef MRSystemAppPlaybackQueueCopyRadioStationStringIdentifier(uint64_t a1)
{
  if (a1 && *(a1 + 8) == 2 && *(a1 + 64) == 2 && (v1 = *(a1 + 72)) != 0)
  {
    return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
  }

  else
  {
    return 0;
  }
}

void MRSystemAppPlaybackQueueSetRadioStationStringIdentifier(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueSetRadioStationStringIdentifier_cold_3();
  }

  if (*(a1 + 8) != 2)
  {
    MRSystemAppPlaybackQueueSetRadioStationStringIdentifier_cold_1();
  }

  if (*(a1 + 64) != 2)
  {
    MRSystemAppPlaybackQueueSetRadioStationStringIdentifier_cold_2();
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 72) = 0;
  }

  if (theString)
  {
    *(a1 + 72) = CFStringCreateCopy(*MEMORY[0x1E695E480], theString);
  }
}

CFArrayRef MRSystemAppPlaybackQueueCopyGenericTrackIdentifiers(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueCopyGenericTrackIdentifiers_cold_2();
  }

  v1 = *(a1 + 8);
  if (v1 != 3 && v1 != 5)
  {
    MRSystemAppPlaybackQueueCopyGenericTrackIdentifiers_cold_1();
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E695E480];

  return CFArrayCreateCopy(v4, v3);
}

void MRSystemAppPlaybackQueueSetGenericTrackIdentifiers(uint64_t a1, CFArrayRef theArray)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueSetGenericTrackIdentifiers_cold_2();
  }

  v3 = *(a1 + 8);
  if (v3 != 3 && v3 != 5)
  {
    MRSystemAppPlaybackQueueSetGenericTrackIdentifiers_cold_1();
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 72) = 0;
  }

  if (theArray)
  {
    *(a1 + 72) = CFArrayCreateCopy(*MEMORY[0x1E695E480], theArray);
  }
}

uint64_t MRSystemAppPlaybackQueueGetFirstItemGenericTrackIdentifier(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueGetFirstItemGenericTrackIdentifier_cold_2();
  }

  v1 = *(a1 + 8);
  if (v1 != 3 && v1 != 5)
  {
    MRSystemAppPlaybackQueueGetFirstItemGenericTrackIdentifier_cold_1();
  }

  return *(a1 + 80);
}

void MRSystemAppPlaybackQueueSetFirstItemGenericTrackIdentifier(uint64_t a1, const __CFString *a2)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueSetFirstItemGenericTrackIdentifier_cold_2();
  }

  v3 = *(a1 + 8);
  if (v3 != 3 && v3 != 5)
  {
    MRSystemAppPlaybackQueueSetFirstItemGenericTrackIdentifier_cold_1();
  }

  v5 = *(a1 + 80);
  if (a2)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 80) = Copy;
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t MRSystemAppPlaybackQueueGetTracklistShuffleMode(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueGetTracklistShuffleMode_cold_2();
  }

  v1 = *(a1 + 8);
  if (v1 != 3 && v1 != 5)
  {
    MRSystemAppPlaybackQueueGetTracklistShuffleMode_cold_1();
  }

  return *(a1 + 64);
}

uint64_t MRSystemAppPlaybackQueueSetTracklistShuffleMode(uint64_t result, int a2)
{
  if (!result)
  {
    MRSystemAppPlaybackQueueSetTracklistShuffleMode_cold_2();
  }

  v2 = *(result + 8);
  if (v2 != 3 && v2 != 5)
  {
    MRSystemAppPlaybackQueueSetTracklistShuffleMode_cold_1();
  }

  *(result + 64) = a2;
  return result;
}

uint64_t MRSystemAppPlaybackQueueGetTracklistRepeatMode(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueGetTracklistRepeatMode_cold_2();
  }

  v1 = *(a1 + 8);
  if (v1 != 3 && v1 != 5)
  {
    MRSystemAppPlaybackQueueGetTracklistRepeatMode_cold_1();
  }

  return *(a1 + 68);
}

uint64_t MRSystemAppPlaybackQueueSetTracklistRepeatMode(uint64_t result, int a2)
{
  if (!result)
  {
    MRSystemAppPlaybackQueueSetTracklistRepeatMode_cold_2();
  }

  v2 = *(result + 8);
  if (v2 != 3 && v2 != 5)
  {
    MRSystemAppPlaybackQueueSetTracklistRepeatMode_cold_1();
  }

  *(result + 68) = a2;
  return result;
}

uint64_t MRSystemAppPlaybackQueueGetTracklistCollectionIdentifierSetData(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueGetTracklistCollectionIdentifierSetData_cold_2();
  }

  v1 = *(a1 + 8);
  if (v1 != 3 && v1 != 5)
  {
    MRSystemAppPlaybackQueueGetTracklistCollectionIdentifierSetData_cold_1();
  }

  return *(a1 + 88);
}

void MRSystemAppPlaybackQueueSetTracklistCollectionIdentifierSetData(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueSetTracklistCollectionIdentifierSetData_cold_2();
  }

  v3 = *(a1 + 8);
  if (v3 != 3 && v3 != 5)
  {
    MRSystemAppPlaybackQueueSetTracklistCollectionIdentifierSetData_cold_1();
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 88) = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

const __CFURL *MRSystemAppPlaybackQueueCopyGeniusSeedTrack(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueCopyGeniusSeedTrack_cold_2();
  }

  if (*(a1 + 8) != 6)
  {
    MRSystemAppPlaybackQueueCopyGeniusSeedTrack_cold_1();
  }

  result = *(a1 + 64);
  if (result)
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = CFURLGetString(result);
    v5 = CFURLGetBaseURL(*(a1 + 64));

    return CFURLCreateWithString(v3, v4, v5);
  }

  return result;
}

void MRSystemAppPlaybackQueueSetGeniusSeedTrack(uint64_t a1, CFURLRef anURL)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueSetGeniusSeedTrack_cold_2();
  }

  if (*(a1 + 8) != 6)
  {
    MRSystemAppPlaybackQueueSetGeniusSeedTrack_cold_1();
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 64) = 0;
  }

  if (anURL)
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = CFURLGetString(anURL);
    v7 = CFURLGetBaseURL(anURL);
    *(a1 + 64) = CFURLCreateWithString(v5, v6, v7);
  }
}

CFStringRef MRSystemAppPlaybackQueueCopyCustomDataIdentifier(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueCopyCustomDataIdentifier_cold_2();
  }

  if (*(a1 + 8) != 7)
  {
    MRSystemAppPlaybackQueueCopyCustomDataIdentifier_cold_1();
  }

  v1 = *(a1 + 64);
  if (!v1)
  {
    return 0;
  }

  v2 = *MEMORY[0x1E695E480];

  return CFStringCreateCopy(v2, v1);
}

CFStringRef MRSystemAppPlaybackQueueSetCustomDataIdentifier(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueSetCustomDataIdentifier_cold_2();
  }

  if (*(a1 + 8) != 7)
  {
    MRSystemAppPlaybackQueueSetCustomDataIdentifier_cold_1();
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
  }

  if (theString)
  {
    result = CFStringCreateCopy(*MEMORY[0x1E695E480], theString);
  }

  else
  {
    result = 0;
  }

  *(a1 + 64) = result;
  return result;
}

CFTypeRef MRSystemAppPlaybackQueueCopyCustomData(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueCopyCustomData_cold_2();
  }

  if (*(a1 + 8) != 7)
  {
    MRSystemAppPlaybackQueueCopyCustomData_cold_1();
  }

  result = *(a1 + 72);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef MRSystemAppPlaybackQueueSetCustomData(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueSetCustomData_cold_2();
  }

  if (*(a1 + 8) != 7)
  {
    MRSystemAppPlaybackQueueSetCustomData_cold_1();
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    CFRelease(v4);
  }

  if (cf)
  {
    result = CFRetain(cf);
  }

  else
  {
    result = 0;
  }

  *(a1 + 72) = result;
  return result;
}

uint64_t MRMediaRemoteCopyPlaybackQueueInsertionPositionDescription(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1E769F590[a1];
  }

  return [(__CFString *)v1 copy];
}

uint64_t MRSystemAppPlaybackQueueCreateExternalRepresentation(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v4 = *(v2 + 8);
    v5 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    [v3 setObject:v5 forKeyedSubscript:@"PQty"];

    v6 = [MEMORY[0x1E696AD98] numberWithBool:*(v2 + 12)];
    [v3 setObject:v6 forKeyedSubscript:@"PQip"];

    LODWORD(v6) = *(v2 + 48);
    v7 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    [v3 setObject:v7 forKeyedSubscript:@"PQri"];

    if (v6 == 1)
    {
      [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PQso"];
    }

    v8 = *(v2 + 56);
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"PQui"];
    }

    v9 = *(v2 + 16);
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"PQsr"];
    }

    v10 = *(v2 + 24);
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"PQai"];
    }

    v11 = *(v2 + 32);
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"PQfn"];
    }

    v12 = *(v2 + 40);
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"PQwm"];
    }

    if (v4 > 4)
    {
      if (v4 == 5)
      {
LABEL_27:
        v15 = *(v2 + 72);
        if (v15)
        {
          [v3 setObject:v15 forKeyedSubscript:@"PQst"];
        }

        v16 = *(v2 + 80);
        if (v16)
        {
          [v3 setObject:v16 forKeyedSubscript:@"PQfg"];
        }

        v17 = [MEMORY[0x1E696AD98] numberWithInt:*(v2 + 64)];
        [v3 setObject:v17 forKeyedSubscript:@"PQts"];

        v18 = [MEMORY[0x1E696AD98] numberWithInt:*(v2 + 68)];
        [v3 setObject:v18 forKeyedSubscript:@"PQtr"];

        v19 = *(v2 + 88);
        if (!v19)
        {
          goto LABEL_48;
        }

        v20 = @"PQis";
        goto LABEL_47;
      }

      if (v4 != 6)
      {
        if (v4 == 7)
        {
          v13 = *(v2 + 64);
          if (v13)
          {
            [v3 setObject:v13 forKeyedSubscript:@"PQci"];
          }

          v14 = *(v2 + 72);
          if (v14)
          {
            [v3 setObject:v14 forKeyedSubscript:@"PQcd"];
          }
        }

        goto LABEL_48;
      }

      v30 = *(v2 + 64);
      if (v30)
      {
        v28 = CFURLGetString(v30);
        v29 = @"PQgs";
        goto LABEL_45;
      }
    }

    else
    {
      if (v4 == 1)
      {
        v21 = *(v2 + 64);
        if (v21)
        {
          [v3 setObject:v21 forKeyedSubscript:@"PQqd"];
        }

        v32 = v21;
        v22 = *(v2 + 72);
        if (v22)
        {
          [v3 setObject:v22 forKeyedSubscript:@"PQmv"];
        }

        if (*(v2 + 88))
        {
          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          [v3 setObject:v23 forKeyedSubscript:@"PQfi"];
        }

        v24 = [MEMORY[0x1E696AD98] numberWithInt:*(v2 + 80)];
        [v3 setObject:v24 forKeyedSubscript:@"PQsm"];

        v25 = [MEMORY[0x1E696AD98] numberWithInt:*(v2 + 84)];
        [v3 setObject:v25 forKeyedSubscript:@"PQrm"];

        goto LABEL_48;
      }

      if (v4 != 2)
      {
        if (v4 != 3)
        {
          goto LABEL_48;
        }

        goto LABEL_27;
      }

      v26 = [MEMORY[0x1E696AD98] numberWithInt:*(v2 + 64)];
      [v3 setObject:v26 forKeyedSubscript:@"PQsy"];

      v27 = *(v2 + 64);
      if (v27 == 2)
      {
        v19 = *(v2 + 72);
        v20 = @"PQss";
LABEL_47:
        [v3 setObject:v19 forKeyedSubscript:v20];
        goto LABEL_48;
      }

      if (v27 == 1)
      {
        v28 = [MEMORY[0x1E696AD98] numberWithLongLong:*(v2 + 72)];
        v29 = @"PQsi";
LABEL_45:
        [v3 setObject:v28 forKeyedSubscript:v29];
      }
    }

LABEL_48:
    v2 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:0];
  }

  return v2;
}

uint64_t MRSystemAppPlaybackQueueCreateFromExternalRepresentation(const void *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AE40] propertyListWithData:a2 options:0 format:0 error:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"PQty"];
    v6 = [v5 integerValue];

    v7 = MRSystemAppPlaybackQueueCreate(a1, v6);
    v8 = [v4 objectForKeyedSubscript:@"PQip"];
    v9 = [v8 BOOLValue];

    if (!v7)
    {
      MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback_cold_1();
    }

    *(v7 + 12) = v9;
    v10 = [v4 objectForKeyedSubscript:@"PQri"];
    v11 = objc_opt_class();
    if (MRIsObjectOfClass(v10, v11))
    {
      if (v10)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_10;
        }

        v12 = [v10 integerValue];
      }

      else
      {
        v13 = [v4 objectForKeyedSubscript:@"PQso"];
        v12 = [v13 BOOLValue];
      }

      *(v7 + 48) = v12;
    }

LABEL_10:
    v14 = [v4 objectForKeyedSubscript:@"PQui"];
    v15 = objc_opt_class();
    if (MRIsObjectOfClass(v14, v15))
    {
      MRSystemAppPlaybackQueueSetUserInfo(v7, v14);
    }

    v60 = v14;
    v16 = [v4 objectForKeyedSubscript:@"PQsr"];
    v17 = objc_opt_class();
    if (MRIsObjectOfClass(v16, v17))
    {
      MRSystemAppPlaybackQueueSetSiriRecommendationIdentifier(v7, v16);
    }

    v18 = [v4 objectForKeyedSubscript:@"PQai"];
    v19 = objc_opt_class();
    if (MRIsObjectOfClass(v18, v19))
    {
      MRSystemAppPlaybackQueueSetSiriAssetInfo(v7, v18);
    }

    v20 = [v4 objectForKeyedSubscript:@"PQfn"];
    v21 = objc_opt_class();
    if (MRIsObjectOfClass(v20, v21))
    {
      MRSystemAppPlaybackQueueSetFeatureName(v7, v20);
    }

    v22 = [v4 objectForKeyedSubscript:@"PQwm"];
    v23 = objc_opt_class();
    if (MRIsObjectOfClass(v22, v23))
    {
      MRSystemAppPlaybackQueueSetSiriWHAMetricsInfo(v7, v22);
    }

    if (v6 > 4)
    {
      if (v6 != 5)
      {
        if (v6 == 6)
        {
          v52 = [v4 objectForKeyedSubscript:@"PQgs"];
          v53 = objc_opt_class();
          if (MRIsObjectOfClass(v52, v53))
          {
            v54 = [MEMORY[0x1E695DFF8] URLWithString:v52];
            if (v54)
            {
              MRSystemAppPlaybackQueueSetGeniusSeedTrack(v7, v54);
            }
          }
        }

        else if (v6 == 7)
        {
          v24 = v10;
          v25 = [v4 objectForKeyedSubscript:@"PQci"];
          v26 = objc_opt_class();
          if (MRIsObjectOfClass(v25, v26))
          {
            MRSystemAppPlaybackQueueSetCustomDataIdentifier(v7, v25);
          }

          v27 = [v4 objectForKeyedSubscript:@"PQcd"];
          v28 = objc_opt_class();
          if (MRIsObjectOfClass(v27, v28))
          {
            MRSystemAppPlaybackQueueSetCustomData(v7, v27);
          }

          v10 = v24;
        }

        goto LABEL_59;
      }
    }

    else
    {
      if (v6 == 1)
      {
        v59 = v10;
        v38 = [v4 objectForKeyedSubscript:@"PQqd"];
        v39 = objc_opt_class();
        if (MRIsObjectOfClass(v38, v39))
        {
          MRSystemAppPlaybackQueueSetLocalQueryData(v7, v38);
        }

        v58 = v38;
        v40 = [v4 objectForKeyedSubscript:@"PQmv"];
        v41 = objc_opt_class();
        if (MRIsObjectOfClass(v40, v41))
        {
          MRSystemAppPlaybackQueueSetLocalQueryFirstItemMultiverseIDData(v7, v40);
        }

        v42 = [v4 objectForKeyedSubscript:@"PQfi"];
        v43 = [v42 longLongValue];

        if (v43)
        {
          MRSystemAppPlaybackQueueSetLocalQueryFirstItemPID(v7, v43);
        }

        v44 = [v4 objectForKeyedSubscript:@"PQsm"];
        v45 = [v44 integerValue];

        MRSystemAppPlaybackQueueSetLocalQueryShuffleMode(v7, v45);
        v46 = [v4 objectForKeyedSubscript:@"PQrm"];
        v47 = [v46 integerValue];

        MRSystemAppPlaybackQueueSetLocalQueryRepeatMode(v7, v47);
        goto LABEL_47;
      }

      if (v6 == 2)
      {
        v48 = [v4 objectForKeyedSubscript:@"PQsy"];
        v49 = [v48 integerValue];

        MRSystemAppPlaybackQueueSetRadioStationIDType(v7, v49);
        if (v49 == 2)
        {
          v55 = [v4 objectForKeyedSubscript:@"PQss"];
          v56 = objc_opt_class();
          if (MRIsObjectOfClass(v55, v56))
          {
            MRSystemAppPlaybackQueueSetRadioStationStringIdentifier(v7, v55);
          }
        }

        else if (v49 == 1)
        {
          v50 = [v4 objectForKeyedSubscript:@"PQsi"];
          v51 = [v50 longLongValue];

          MRSystemAppPlaybackQueueSetRadioStationIntegerPID(v7, v51);
        }

        goto LABEL_59;
      }

      if (v6 != 3)
      {
LABEL_59:

        goto LABEL_60;
      }
    }

    v59 = v10;
    v29 = [v4 objectForKeyedSubscript:@"PQst"];
    v30 = objc_opt_class();
    if (MRIsObjectOfClass(v29, v30))
    {
      MRSystemAppPlaybackQueueSetGenericTrackIdentifiers(v7, v29);
    }

    v31 = [v4 objectForKeyedSubscript:@"PQfg"];
    v32 = objc_opt_class();
    if (MRIsObjectOfClass(v31, v32))
    {
      MRSystemAppPlaybackQueueSetFirstItemGenericTrackIdentifier(v7, v31);
    }

    v33 = [v4 objectForKeyedSubscript:@"PQts"];
    v34 = [v33 integerValue];

    MRSystemAppPlaybackQueueSetTracklistShuffleMode(v7, v34);
    v35 = [v4 objectForKeyedSubscript:@"PQtr"];
    LODWORD(v33) = [v35 integerValue];

    MRSystemAppPlaybackQueueSetTracklistRepeatMode(v7, v33);
    v36 = [v4 objectForKeyedSubscript:@"PQis"];
    v37 = objc_opt_class();
    if (MRIsObjectOfClass(v36, v37))
    {
      MRSystemAppPlaybackQueueSetTracklistCollectionIdentifierSetData(v7, v36);
    }

LABEL_47:
    v10 = v59;
    goto LABEL_59;
  }

  v7 = 0;
LABEL_60:

  return v7;
}

const __CFData *MRSystemAppPlaybackQueueGetLocalQueryEncodingType(uint64_t a1)
{
  if (!a1)
  {
    MRSystemAppPlaybackQueueGetType_cold_1();
  }

  if (*(a1 + 8) == 1)
  {
    result = MRSystemAppPlaybackQueueGetLocalQueryData(a1);
    if (!result)
    {
      return result;
    }

    v2 = result;
    BytePtr = CFDataGetBytePtr(result);
    if (CFDataGetLength(v2) >= 6)
    {
      return (strncmp("bplist", BytePtr, 6uLL) == 0);
    }
  }

  return 0;
}

uint64_t MRSystemAppPlaybackQueueCreateFromProtobuf(void *a1)
{
  v1 = a1;
  v2 = MRMediaRemotePlaybackQueueTypeFromProtobuf([v1 type]);
  v3 = MRSystemAppPlaybackQueueCreate(*MEMORY[0x1E695E480], v2);
  if ([v1 hasReplaceIntent])
  {
    v4 = MRMediaRemoteReplaceIntentFromProtobuf([v1 replaceIntent]);
    if (!v3)
    {
      MRSystemAppPlaybackQueueSetShouldOverrideManuallyCuratedQueue_cold_1();
    }

    *(v3 + 48) = v4;
  }

  if ([v1 hasIsRequestingImmediatePlayback])
  {
    v5 = [v1 isRequestingImmediatePlayback];
    if (!v3)
    {
      MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback_cold_1();
    }

    *(v3 + 12) = v5;
  }

  if ([v1 hasFeatureName])
  {
    v6 = [v1 featureName];
    MRSystemAppPlaybackQueueSetFeatureName(v3, v6);
  }

  if ([v1 hasCustomData])
  {
    v7 = [v1 customData];
    v8 = [v7 data];
    MRSystemAppPlaybackQueueSetCustomData(v3, v8);

    v9 = [v1 customData];
    v10 = [v9 identifier];
    MRSystemAppPlaybackQueueSetCustomDataIdentifier(v3, v10);
  }

  if ([v1 hasTracklist])
  {
    v11 = [v1 tracklist];
    if ([v11 hasFirstTrackIdentifier])
    {
      v12 = [v11 firstTrackIdentifier];
      MRSystemAppPlaybackQueueSetFirstItemGenericTrackIdentifier(v3, v12);
    }

    if ([v11 hasTrackIdentifiers])
    {
      v13 = [v11 trackIdentifiers];
      MRSystemAppPlaybackQueueSetGenericTrackIdentifiers(v3, v13);
    }

    if ([v11 hasCollectionIdentifierSet])
    {
      v14 = [v11 collectionIdentifierSet];
      MRSystemAppPlaybackQueueSetTracklistCollectionIdentifierSetData(v3, v14);
    }

    if ([v11 hasShuffleMode])
    {
      v15 = MRMediaRemoteShuffleModeFromProtobuf([v11 shuffleMode]);
      MRSystemAppPlaybackQueueSetTracklistShuffleMode(v3, v15);
    }

    if ([v11 hasRepeatMode])
    {
      v16 = MRMediaRemoteRepeatModeFromProtobuf([v11 repeatMode]);
      MRSystemAppPlaybackQueueSetTracklistRepeatMode(v3, v16);
    }
  }

  if ([v1 hasMetrics])
  {
    v17 = [v1 metrics];
    v18 = MSVPropertyListDataClasses();
    v19 = MRCreateFromData(v17, v18);

    MRSystemAppPlaybackQueueSetSiriWHAMetricsInfo(v3, v19);
  }

  if ([v1 hasUserInfo])
  {
    v20 = [v1 userInfo];
    v21 = MSVPropertyListDataClasses();
    v22 = MRCreateFromData(v20, v21);

    MRSystemAppPlaybackQueueSetUserInfo(v3, v22);
  }

  return v3;
}

uint64_t MRVirtualVoiceInputDeviceCreate(uint64_t a1, uint64_t a2)
{
  v3 = [MRVirtualVoiceInputDevice alloc];

  return [(MRVirtualVoiceInputDevice *)v3 initWithDeviceID:a2];
}

uint64_t MRVirtualVoiceInputDeviceCreateWithExternalRepresentation(uint64_t a1, uint64_t a2)
{
  v3 = [MRVirtualVoiceInputDevice alloc];

  return [(MRVirtualVoiceInputDevice *)v3 initWithData:a2];
}

__CFString *MRVoiceRecordingStateCopyDescription(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E769F5B0[a1];
  }
}

uint64_t _MRGetVoiceInputDevicesResponseMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v35[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35[0] & 0x7F) << v5;
        if ((v35[0] & 0x80) == 0)
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
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          LOBYTE(v35[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v35[0] & 0x7F) << v21;
          if ((v35[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_48:
        *(a1 + 32) = v27;
      }

      else if ((v12 >> 3) == 1)
      {
        if ((v12 & 7) == 2)
        {
          v35[0] = 0;
          v35[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v14 = [a2 position];
            if (v14 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              v36 = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v36 & 0x7F) << v15;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                goto LABEL_33;
              }
            }

            [a2 hasError];
LABEL_33:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          while (1)
          {
            LOBYTE(v35[0]) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v35[0] & 0x7F) << v28;
            if ((v35[0] & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              goto LABEL_60;
            }
          }

          [a2 hasError];
LABEL_60:
          PBRepeatedUInt32Add();
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MRAudioDataBlockCreateFromExternalRepresentation(uint64_t a1, uint64_t a2)
{
  v3 = [MRMutableAudioDataBlock alloc];

  return [(MRAudioDataBlock *)v3 initWithData:a2];
}

void MRMediaRemotePlaybackQueueDataSourceSetRequestCallback(void *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __MRMediaRemotePlaybackQueueDataSourceSetRequestCallback_block_invoke;
  v5[3] = &unk_1E769F630;
  v6 = v3;
  v4 = v3;
  _MRMediaRemotePlaybackQueueDataSourceSetRequestCallback(a1, v5);
}

void _MRMediaRemotePlaybackQueueDataSourceSetRequestCallback(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v5 originClientForOrigin:v4];

  [v6 setPlaybackQueueCallback:v3];
}

void __MRMediaRemotePlaybackQueueDataSourceSetRequestCallback_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MRMediaRemotePlaybackQueueDataSourceSetRequestCallback_block_invoke_2;
  v11[3] = &unk_1E769C298;
  v12 = v7;
  v9 = *(v8 + 16);
  v10 = v7;
  v9(v8, a2, a3, v11);
}

void *MRMediaRemotePlaybackQueueDataSourceAddCreatePlaybackQueueForRequestCallback(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  PlaybackQueueForRequestCallbackForPlayer = MRMediaRemotePlaybackQueueDataSourceAddCreatePlaybackQueueForRequestCallbackForPlayer(v9, a2, v8, v7);

  return PlaybackQueueForRequestCallbackForPlayer;
}

void *MRMediaRemotePlaybackQueueDataSourceAddCreateContentItemCallback(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  ContentItemCallbackForPlayer = MRMediaRemotePlaybackQueueDataSourceAddCreateContentItemCallbackForPlayer(v9, a2, v8, v7);

  return ContentItemCallbackForPlayer;
}

void *MRMediaRemotePlaybackQueueDataSourceAddCreateContentItemCallbackForPlayer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v10 = [v9 playerClientForPlayerPath:a1];

  v11 = [v10 clientCallbacks];
  v12 = [v11 createItemForOffsetCallbacks];
  v13 = MEMORY[0x1E69B1400];
  v14 = MEMORY[0x1A58E3570](v7);

  v15 = [v13 callbackWithQueue:v8 block:v14];

  MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(v12, a2, v15);
  v16 = [v10 playerPath];
  v17 = [v10 clientCallbacks];
  MRMediaRemoteSetPlaybackQueueCapabilities(v16, [v17 capabilities], 0, 0);

  return v15;
}

void *MRMediaRemotePlaybackQueueDataSourceAddCreateChildContentItemCallback(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  ChildContentItemCallbackForPlayer = MRMediaRemotePlaybackQueueDataSourceAddCreateChildContentItemCallbackForPlayer(v9, a2, v8, v7);

  return ChildContentItemCallbackForPlayer;
}

void *MRMediaRemotePlaybackQueueDataSourceAddContentItemMetadataCallback(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  v10 = MRMediaRemotePlaybackQueueDataSourceAddContentItemMetadataCallbackForPlayer(v9, a2, v8, v7);

  return v10;
}

void *MRMediaRemotePlaybackQueueDataSourceAddContentItemLanguageOptionsCallback(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  v10 = MRMediaRemotePlaybackQueueDataSourceAddContentItemLanguageOptionsCallbackForPlayer(v9, a2, v8, v7);

  return v10;
}

void *MRMediaRemotePlaybackQueueDataSourceAddContentItemLanguageOptionsCallbackForPlayer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v10 = [v9 playerClientForPlayerPath:a1];

  v11 = [v10 clientCallbacks];
  v12 = [v11 languageOptionsCallbacks];
  v13 = MEMORY[0x1E69B1400];
  v14 = MEMORY[0x1A58E3570](v7);

  v15 = [v13 callbackWithQueue:v8 block:v14];

  MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(v12, a2, v15);
  return v15;
}

uint64_t MRMediaRemotePlaybackQueueDataSourceAddCreateParticipantsCallback(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69B1400];
  v6 = a3;
  v7 = MEMORY[0x1A58E3570](a4);
  v8 = [v5 callbackWithQueue:v6 block:v7];

  return v8;
}

uint64_t MRMediaRemotePlaybackQueueDataSourceAddCreateParticipantsCallbackForPlayer(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69B1400];
  v6 = a3;
  v7 = MEMORY[0x1A58E3570](a4);
  v8 = [v5 callbackWithQueue:v6 block:v7];

  return v8;
}

void *MRMediaRemotePlaybackQueueDataSourceAddContentItemInfoCallback(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  v10 = MRMediaRemotePlaybackQueueDataSourceAddContentItemInfoCallbackForPlayer(v9, a2, v8, v7);

  return v10;
}

void *MRMediaRemotePlaybackQueueDataSourceAddContentItemTranscriptAlignmentsCallback(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  v10 = MRMediaRemotePlaybackQueueDataSourceAddContentItemTranscriptAlignmentsCallbackForPlayer(v9, a2, v8, v7);

  return v10;
}

void *MRMediaRemotePlaybackQueueDataSourceAddContentItemLyricsCallback(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  v10 = MRMediaRemotePlaybackQueueDataSourceAddContentItemLyricsCallbackForPlayer(v9, a2, v8, v7);

  return v10;
}

void *MRMediaRemotePlaybackQueueDataSourceAddContentItemArtworkCallback(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  v10 = MRMediaRemotePlaybackQueueDataSourceAddContentItemArtworkCallbackForPlayer(v9, a2, v8, v7);

  return v10;
}

void *MRMediaRemotePlaybackQueueDataSourceAddContentItemFormattedArtworkCallback(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  v10 = MRMediaRemotePlaybackQueueDataSourceAddContentItemAvailableArtworkFormatsCallbackForPlayer(v9, a2, v8, v7);

  return v10;
}

void *MRMediaRemotePlaybackQueueDataSourceAddContentItemAvailableArtworkFormatsCallbackForPlayer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v10 = [v9 playerClientForPlayerPath:a1];

  v11 = [v10 clientCallbacks];
  v12 = [v11 availableArtworkFormatsCallbacks];
  v13 = MEMORY[0x1E69B1400];
  v14 = MEMORY[0x1A58E3570](v7);

  v15 = [v13 callbackWithQueue:v8 block:v14];

  MRMediaRemotePlaybackQueueDataSourceSourceAddCallbackToList(v12, a2, v15);
  return v15;
}

void *MRMediaRemotePlaybackQueueDataSourceAddContentItemAvailableArtworkFormatsCallback(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  v10 = MRMediaRemotePlaybackQueueDataSourceAddContentItemAvailableArtworkFormatsCallbackForPlayer(v9, a2, v8, v7);

  return v10;
}

uint64_t MRMediaRemotePlaybackQueueDataSourceRemoveCallback(uint64_t a1, const void *a2)
{
  v3 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  v4 = MRMediaRemotePlaybackQueueDataSourceRemoveCallbackForPlayer(v3, a2);

  return v4;
}

uint64_t MRMediaRemotePlaybackQueueDataSourceRemoveCallbackForPlayer(uint64_t a1, const void *a2)
{
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v5 = [v4 playerClientForPlayerPath:a1];

  v6 = [v5 clientCallbacks];
  v7 = [v6 removePlaybackQueueDataSourceCallback:a2];

  if (a2)
  {
    CFRelease(a2);
  }

  return v7;
}

void MRPlaybackQueueDataSourceSetMaxConcurrentRequestCount(uint64_t a1)
{
  v3 = +[MRNowPlayingOriginClientManager sharedManager];
  v2 = [v3 playbackQueueDataSourceOperationQueue];
  [v2 setMaxConcurrentOperationCount:a1];
}

void sub_1A29CE9C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 104));
  _Unwind_Resume(a1);
}

void sub_1A29CEDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _MRServiceClientVideoThumbnailsRequestCallback(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = +[MRNowPlayingOriginClientManager sharedManager];
  v8 = [v7 playerClientForPlayerPath:a1];

  if (!v8)
  {
    v12 = 5;
LABEL_6:
    Error = MRMediaRemoteCreateError(v12);
    v6[2](v6, 0, Error);

    goto LABEL_7;
  }

  v9 = [v8 clientCallbacks];
  v10 = [v9 videoThumbnailsCallback];

  if (!v10)
  {
    v12 = 14;
    goto LABEL_6;
  }

  v11 = v10[2];
  memcpy(v14, a2, sizeof(v14));
  v11(v10, v14, v6);

LABEL_7:
}

void _MRServiceClientAudioAmplitudeSamplesCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v6 = +[MRNowPlayingOriginClientManager sharedManager];
  v7 = [v6 playerClientForPlayerPath:a1];

  if (v7)
  {
    v8 = [v7 clientCallbacks];
    Error = [v8 audioAmplitudeSamplesCallback];

    if (Error)
    {
      (Error)[2](Error, a2, v11);
      goto LABEL_7;
    }

    v10 = 14;
  }

  else
  {
    v10 = 5;
  }

  Error = MRMediaRemoteCreateError(v10);
  (*(v11 + 2))(v11, 0, Error);
LABEL_7:
}

void _MRServiceClientLyricsEventCallback(uint64_t a1, void *a2)
{
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v14 = [v4 originClientForPlayerPath:a1];

  v5 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v5 playerClientForPlayerPath:a1];

  if (v14)
  {
    if (MRLyricsEventGetEndDate(a2))
    {
      [v14 endLyricsEventCallback];
    }

    else
    {
      [v14 beginLyricsEventCallback];
    }
    v7 = ;
    v8 = MEMORY[0x1A58E3570]();

    if (v8)
    {
      (v8)[2](v8, a2, a1);
    }
  }

  if (v6)
  {
    EndDate = MRLyricsEventGetEndDate(a2);
    v10 = [v6 clientCallbacks];
    v11 = v10;
    if (EndDate)
    {
      [v10 endLyricsEventCallback];
    }

    else
    {
      [v10 beginLyricsEventCallback];
    }
    v12 = ;
    v13 = MEMORY[0x1A58E3570]();

    if (v13)
    {
      (v13)[2](v13, a2);
    }
  }
}