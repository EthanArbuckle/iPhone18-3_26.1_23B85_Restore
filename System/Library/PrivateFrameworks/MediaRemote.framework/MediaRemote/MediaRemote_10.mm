void MRMediaRemoteSetSystemAppPlaybackQueueWithContext(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  if (MRSystemAppPlaybackQueueGetType(a1) == 3 || !MRShouldUseLegacyMusicApplicationAsSystemMediaApp())
  {
    v11 = @"(System Media Application)";
  }

  else
  {
    v11 = @"com.apple.LegacyMusic";
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MRMediaRemoteSetSystemAppPlaybackQueueWithContext_block_invoke;
  v13[3] = &unk_1E769F1D0;
  v14 = v10;
  v12 = v10;
  MRMediaRemoteSetAppPlaybackQueueWithContext(v11, a1, a2, a3, v9, v13);
}

void MRMediaRemoteSetAppPlaybackQueueWithContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v14 = [[MRClient alloc] initWithProcessIdentifier:0 bundleIdentifier:a1];
  v13 = [[MRPlayerPath alloc] initWithOrigin:a3 client:v14 player:0];
  MRMediaRemoteSetAppPlaybackQueueForPlayer(a2, 0, v13, a4, v12, v11);
}

uint64_t __MRMediaRemoteSetSystemAppPlaybackQueueWithContext_block_invoke(uint64_t a1, int a2, CFIndex a3)
{
  result = *(a1 + 32);
  if (result)
  {
    if (!a2)
    {
      _MRSendCommandReplyContainsSuccessfulStatus(a3);
      result = *(a1 + 32);
    }

    v5 = *(result + 16);

    return v5();
  }

  return result;
}

CFIndex _MRSendCommandReplyContainsSuccessfulStatus(CFIndex result)
{
  if (result)
  {
    v1 = result;
    result = CFArrayGetCount(result);
    valuePtr = 0;
    if (result)
    {
      v2 = result;
      v3 = 0;
      v4 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v3);
        CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
        result = valuePtr == 0;
        v3 = v4++;
        if (valuePtr)
        {
          v6 = v2 > v3;
        }

        else
        {
          v6 = 0;
        }
      }

      while (v6);
    }
  }

  return result;
}

void MRMediaRemoteSetAppPlaybackQueue(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MRMediaRemoteSetAppPlaybackQueue_block_invoke;
  v11[3] = &unk_1E769F1D0;
  v12 = v9;
  v10 = v9;
  MRMediaRemoteSetAppPlaybackQueueWithContext(a1, a2, a3, 0, a4, v11);
}

uint64_t __MRMediaRemoteSetAppPlaybackQueue_block_invoke(uint64_t a1, int a2, CFIndex a3)
{
  result = *(a1 + 32);
  if (result)
  {
    if (!a2)
    {
      _MRSendCommandReplyContainsSuccessfulStatus(a3);
      result = *(a1 + 32);
    }

    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void MRMediaRemoteSetAppPlaybackQueueForPlayer(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__49;
  v23 = __Block_byref_object_dispose__49;
  v24 = 0;
  v13 = [a3 copy];
  if (!v13)
  {
    v13 = objc_alloc_init(MRPlayerPath);
  }

  [(MRPlayerPath *)v13 origin];

  if (a1)
  {
    if (a2)
    {
      v14 = [a2 mutableCopy];
    }

    else
    {
      v14 = [MEMORY[0x1E695DF90] dictionary];
    }

    v15 = v14;
    ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation(*MEMORY[0x1E695E480], a1);
    if (ExternalRepresentation)
    {
      [v15 setObject:ExternalRepresentation forKeyedSubscript:@"kMRMediaRemoteOptionSystemAppPlaybackQueueData"];
    }

    if (a4)
    {
      [v15 setObject:a4 forKeyedSubscript:@"kMRMediaRemoteOptionContextID"];
    }

    if (v20[5])
    {
      [(MRPlayerPath *)v13 setOrigin:?];
    }

    MRMediaRemoteSendCommandToPlayer(122, v15, v13, 1, v11, v12);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __MRMediaRemoteSetAppPlaybackQueueForPlayer_block_invoke_2;
    block[3] = &unk_1E769AD58;
    v18 = v12;
    dispatch_async(v11, block);
    v15 = v18;
  }

  _Block_object_dispose(&v19, 8);
}

void sub_1A2AFB1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MRMediaRemoteSetAppPlaybackQueueForPlayer_block_invoke_2(uint64_t a1)
{
  v2 = _MRLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "Attempting to setAppPlaybackQueue with an empty queue. Did you mean to send a MRSystemAppPlaybackQueueTypeEmpty?", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 7, MEMORY[0x1E695E0F0]);
  }

  return result;
}

void MRMediaRemoteInsertSystemAppPlaybackQueue(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v11 = a4;
  v9 = a5;
  if (MRSystemAppPlaybackQueueGetType(a1) == 3 || !MRShouldUseLegacyMusicApplicationAsSystemMediaApp())
  {
    v10 = @"(System Media Application)";
  }

  else
  {
    v10 = @"com.apple.LegacyMusic";
  }

  MRMediaRemoteInsertSystemAppPlaybackQueueForApp(v10, a1, a2, a3, v11, v9);
}

void MRMediaRemoteInsertSystemAppPlaybackQueueForApp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v14 = [[MRClient alloc] initWithProcessIdentifier:0 bundleIdentifier:a1];
  v13 = [[MRPlayerPath alloc] initWithOrigin:a4 client:v14 player:0];
  MRMediaRemoteInsertSystemAppPlaybackQueueForPlayer(a2, a3, 0, v13, v12, v11);
}

void MRMediaRemoteInsertSystemAppPlaybackQueueWithOptions(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v14 = [[MRClient alloc] initWithProcessIdentifier:0 bundleIdentifier:@"(System Media Application)"];
  v13 = [[MRPlayerPath alloc] initWithOrigin:a4 client:v14 player:0];
  MRMediaRemoteInsertSystemAppPlaybackQueueForPlayer(a1, a2, a3, v13, v12, v11);
}

void MRMediaRemoteInsertSystemAppPlaybackQueueForPlayer(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = *MEMORY[0x1E695E480];
  v13 = a5;
  ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation(v12, a1);
  v15 = [a3 mutableCopy];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  }

  v18 = v17;

  v19 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  [v18 setObject:v19 forKeyedSubscript:@"kMRMediaRemoteOptionPlaybackQueueInsertionPosition"];

  [v18 setObject:ExternalRepresentation forKeyedSubscript:@"kMRMediaRemoteOptionSystemAppPlaybackQueueData"];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __MRMediaRemoteInsertSystemAppPlaybackQueueForPlayer_block_invoke;
  v21[3] = &unk_1E769F1D0;
  v22 = v11;
  v20 = v11;
  MRMediaRemoteSendCommandToPlayer(125, v18, a4, 1, v13, v21);
}

uint64_t __MRMediaRemoteInsertSystemAppPlaybackQueueForPlayer_block_invoke(uint64_t result, int a2, CFArrayRef theArray)
{
  if (*(result + 32))
  {
    v5 = result;
    if (theArray && (Count = CFArrayGetCount(theArray), valuePtr = 0, Count))
    {
      v7 = Count;
      v8 = 0;
      v9 = 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
        CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
        if (valuePtr == 4)
        {
          break;
        }

        v8 = v9;
        if (v7 <= v9++)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      if (!a2)
      {
        _MRSendCommandReplyContainsSuccessfulStatus(theArray);
      }
    }

    return (*(*(v5 + 32) + 16))();
  }

  return result;
}

void MRMediaRemoteReportPlaybackError(__CFError *a1, uint64_t a2)
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    [v7 setObject:v5 forKey:@"kMRMediaRemotePlaybackErrorApplicationUserInfoKey"];
  }

  if (a2)
  {
    [v7 setObject:a2 forKey:@"kMRMediaRemotePlaybackErrorReasonUserInfoKey"];
  }

  if (a1)
  {
    ErrorExternalRepresentation = MRMediaRemoteCreateErrorExternalRepresentation(a1);
    if (ErrorExternalRepresentation)
    {
      [v7 setObject:ErrorExternalRepresentation forKey:@"_kMRMediaRemotePlaybackErrorDataUserInfoKey"];
    }
  }

  MRMediaRemotePostClientNotification(@"kMRMediaRemoteApplicationDidReportPlaybackErrorNotification", v7);
}

void MRMediaRemoteSetWantsPlaybackErrorNotifications(int a1)
{
  v3 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v2 = [v3 notificationClient];
  [v2 setReceivesPlaybackErrorNotifications:a1 != 0];
}

uint64_t _MRReceivedCommandProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v41) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v41 & 0x7F) << v5;
        if ((v41 & 0x80) == 0)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 80) |= 4u;
            while (1)
            {
              LOBYTE(v41) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v41 & 0x7F) << v31;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_82;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v33;
            }

LABEL_82:
            v38 = 48;
            goto LABEL_83;
          }

          if (v13 == 4)
          {
            v15 = PBReaderReadString();
            v16 = 72;
LABEL_65:
            v37 = *(a1 + v16);
            *(a1 + v16) = v15;

            goto LABEL_84;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 80) |= 2u;
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
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_78;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v26;
            }

LABEL_78:
            v38 = 24;
LABEL_83:
            *(a1 + v38) = v30;
            goto LABEL_84;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(_MRCommandOptionsProtobuf);
            objc_storeStrong((a1 + 40), v14);
            v41 = 0;
            v42 = 0;
            if (!PBReaderPlaceMark() || !_MRCommandOptionsProtobufReadFrom(v14, a2))
            {
LABEL_86:

              return 0;
            }

            goto LABEL_68;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v15 = PBReaderReadString();
          v16 = 32;
          goto LABEL_65;
        }

        if (v13 == 6)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 80) |= 1u;
          while (1)
          {
            LOBYTE(v41) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v41 & 0x7F) << v17;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_74;
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

LABEL_74:
          *(a1 + 8) = v23;
          goto LABEL_84;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v15 = PBReaderReadString();
            v16 = 64;
            goto LABEL_65;
          case 8:
            v14 = objc_alloc_init(_MRReceivedCommandAppOptionsProtobuf);
            objc_storeStrong((a1 + 16), v14);
            v41 = 0;
            v42 = 0;
            if (!PBReaderPlaceMark() || !_MRReceivedCommandAppOptionsProtobufReadFrom(v14, a2))
            {
              goto LABEL_86;
            }

            goto LABEL_68;
          case 9:
            v14 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
            objc_storeStrong((a1 + 56), v14);
            v41 = 0;
            v42 = 0;
            if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v14->super.super.isa, a2))
            {
              goto LABEL_86;
            }

LABEL_68:
            PBReaderRecallMark();

            goto LABEL_84;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_84:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MRTextEditingAttributesCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MRMutableTextEditingAttributes alloc];

  return [(MRTextEditingAttributes *)v5 initWithTitle:a2 prompt:a3];
}

double MRTextEditingAttributesGetInputTraits@<D0>(void *a1@<X0>, uint64_t x8_0@<X8>)
{
  if (a1)
  {
    [a1 inputTraits];
  }

  else
  {
    *(x8_0 + 128) = 0;
    result = 0.0;
    *(x8_0 + 96) = 0u;
    *(x8_0 + 112) = 0u;
    *(x8_0 + 64) = 0u;
    *(x8_0 + 80) = 0u;
    *(x8_0 + 32) = 0u;
    *(x8_0 + 48) = 0u;
    *x8_0 = 0u;
    *(x8_0 + 16) = 0u;
  }

  return result;
}

void MRTextEditingAttributesSetInputTraits(void *a1, uint64_t a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a2 + 112);
    v8[6] = *(a2 + 96);
    v8[7] = v4;
    v9 = *(a2 + 128);
    v5 = *(a2 + 48);
    v8[2] = *(a2 + 32);
    v8[3] = v5;
    v6 = *(a2 + 80);
    v8[4] = *(a2 + 64);
    v8[5] = v6;
    v7 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v7;
    [v3 setInputTraits:v8];
  }
}

uint64_t MRTextEditingSessionCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MRTextEditingSession alloc];

  return [(MRTextEditingSession *)v5 initWithText:a2 attributes:a3];
}

void sub_1A2B073E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_1A2B077A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2B07B00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

uint64_t _MRSetConnectionStateMessageProtobufReadFrom(uint64_t a1, void *a2)
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

uint64_t _MRPlaybackSessionMigrateRequestEventProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v50) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
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
      if ((v12 >> 3) <= 6)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v16 = PBReaderReadString();
            v17 = 72;
            goto LABEL_46;
          }

          if (v13 == 2)
          {
            *(a1 + 92) |= 4u;
            v50 = 0;
            v25 = [a2 position] + 8;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v50 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v45 = v50;
            v46 = 24;
            goto LABEL_97;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              *(a1 + 92) |= 1u;
              v50 = 0;
              v41 = [a2 position] + 8;
              if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 8, v42 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v50 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v45 = v50;
              v46 = 8;
LABEL_97:
              *(a1 + v46) = v45;
              goto LABEL_98;
            case 5:
              v28 = 0;
              v29 = 0;
              v30 = 0;
              *(a1 + 92) |= 2u;
              while (1)
              {
                LOBYTE(v50) = 0;
                v31 = [a2 position] + 1;
                if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
                {
                  v33 = [a2 data];
                  [v33 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v30 |= (v50 & 0x7F) << v28;
                if ((v50 & 0x80) == 0)
                {
                  break;
                }

                v28 += 7;
                v11 = v29++ >= 9;
                if (v11)
                {
                  v34 = 0;
                  goto LABEL_83;
                }
              }

              if ([a2 hasError])
              {
                v34 = 0;
              }

              else
              {
                v34 = v30;
              }

LABEL_83:
              *(a1 + 16) = v34;
              goto LABEL_98;
            case 6:
              v16 = PBReaderReadString();
              v17 = 40;
LABEL_46:
              v27 = *(a1 + v17);
              *(a1 + v17) = v16;

              goto LABEL_98;
          }
        }
      }

      else if (v13 > 9)
      {
        switch(v13)
        {
          case 0xA:
            v14 = objc_alloc_init(_MRDictionaryProtobuf);
            v15 = 80;
LABEL_75:
            objc_storeStrong((a1 + v15), v14);
            v50 = 0;
            v51 = 0;
            if (!PBReaderPlaceMark() || !_MRDictionaryProtobufReadFrom(v14, a2))
            {
              goto LABEL_100;
            }

LABEL_77:
            PBReaderRecallMark();

            goto LABEL_98;
          case 0xB:
            v14 = objc_alloc_init(_MRPlaybackSessionMigrateRequestEventProtobuf);
            [a1 addEvents:v14];
            v50 = 0;
            v51 = 0;
            if (!PBReaderPlaceMark() || !_MRPlaybackSessionMigrateRequestEventProtobufReadFrom(v14, a2))
            {
LABEL_100:

              return 0;
            }

            goto LABEL_77;
          case 0x64:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            *(a1 + 92) |= 8u;
            while (1)
            {
              LOBYTE(v50) = 0;
              v21 = [a2 position] + 1;
              if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
              {
                v23 = [a2 data];
                [v23 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v20 |= (v50 & 0x7F) << v18;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v11 = v19++ >= 9;
              if (v11)
              {
                v24 = 0;
                goto LABEL_91;
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

LABEL_91:
            v43 = 56;
            goto LABEL_92;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v14 = objc_alloc_init(_MRErrorProtobuf);
            objc_storeStrong((a1 + 32), v14);
            v50 = 0;
            v51 = 0;
            if (!PBReaderPlaceMark() || !_MRErrorProtobufReadFrom(v14, a2))
            {
              goto LABEL_100;
            }

            goto LABEL_77;
          case 8:
            v35 = 0;
            v36 = 0;
            v37 = 0;
            *(a1 + 92) |= 0x10u;
            while (1)
            {
              LOBYTE(v50) = 0;
              v38 = [a2 position] + 1;
              if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
              {
                v40 = [a2 data];
                [v40 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v37 |= (v50 & 0x7F) << v35;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v11 = v36++ >= 9;
              if (v11)
              {
                v24 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v37;
            }

LABEL_87:
            v43 = 88;
LABEL_92:
            *(a1 + v43) = v24;
            goto LABEL_98;
          case 9:
            v14 = objc_alloc_init(_MRDictionaryProtobuf);
            v15 = 64;
            goto LABEL_75;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_98:
      v48 = [a2 position];
    }

    while (v48 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MROriginClientPropertiesMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v15 = PBReaderReadString();
        v16 = *(a1 + 16);
        *(a1 + 16) = v15;
      }

      else if ((v12 >> 3) == 1)
      {
        *(a1 + 24) |= 1u;
        v20 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A2B0C4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2B0D46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id *MRAVReconnaissanceSessionCreate(void *a1)
{
  v2 = [MRAVReconnaissanceSession alloc];

  return [(MRAVReconnaissanceSession *)&v2->super.isa initWithOutputDeviceUIDs:a1 outputDeviceGroupUID:0 features:8 details:0];
}

id *MRAVReconnaissanceSessionCreateWithMatchingOutputGroupID(void *a1)
{
  v2 = [MRAVReconnaissanceSession alloc];

  return [(MRAVReconnaissanceSession *)&v2->super.isa initWithOutputDeviceUIDs:a1 outputDeviceGroupUID:8 features:0 details:?];
}

id *MRAVReconnaissanceSessionCreateWithMatchingOutputGroupIDFeatures(void *a1, uint64_t a2)
{
  v4 = [MRAVReconnaissanceSession alloc];

  return [(MRAVReconnaissanceSession *)&v4->super.isa initWithOutputDeviceUIDs:a1 outputDeviceGroupUID:a2 features:0 details:?];
}

id *MRAVReconnaissanceSessionCreateWithMatchingLogicalDeviceIDs(uint64_t a1)
{
  v2 = [[MRAVReconnaissanceSession alloc] initWithOutputDeviceUIDs:0 outputDeviceGroupUID:1 features:0 details:?];
  [v2 setMatchingLogicalDeviceIDs:a1];
  return v2;
}

id *MRAVReconnaissanceSessionCreateWithEndpointFeatures(void *a1, uint64_t a2)
{
  v4 = [MRAVReconnaissanceSession alloc];

  return [(MRAVReconnaissanceSession *)&v4->super.isa initWithOutputDeviceUIDs:a1 outputDeviceGroupUID:0 features:a2 details:0];
}

void MRAVReconnaissanceSessionBeginSearch(void *a1, void *a2, double a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = a1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __MRAVReconnaissanceSessionBeginSearch_block_invoke;
    v8[3] = &unk_1E76A23C8;
    v9 = v6;
    v10 = v5;
    v7 = v6;
    [v7 beginSearchWithTimeout:v8 completion:a3];
  }
}

void __MRAVReconnaissanceSessionBeginSearch_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  v8 = *(v7 + 16);
  v9 = *(a1 + 32);
  v8(v7, a2, a3, a4);
}

void MRAVReconnaissanceSessionBeginEndpointsSearch(void *a1, void *a2, double a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = a1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __MRAVReconnaissanceSessionBeginEndpointsSearch_block_invoke;
    v8[3] = &unk_1E76A4960;
    v9 = v6;
    v10 = v5;
    v7 = v6;
    [v7 beginSearchWithTimeout:v8 endpointsCompletion:a3];
  }
}

void __MRAVReconnaissanceSessionBeginEndpointsSearch_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 40);
  v9 = *(v8 + 16);
  v10 = *(a1 + 32);
  v9(v8, a2, a3, a5);
}

void MRAVReconnaissanceSessionSetTargetAudioSessionID(void *a1, uint64_t a2)
{
  v3 = [a1 discoverySession];
  [v3 setTargetAudioSessionID:a2];
}

void MRMediaRemoteSetWantsRouteChangeNotifications(int a1)
{
  v2 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v3 = MRMediaRemoteSetWantsRouteChangeNotifications___routeChangeNotificationObservers;
  if (a1)
  {
    ++MRMediaRemoteSetWantsRouteChangeNotifications___routeChangeNotificationObservers;
    if (v3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = MRMediaRemoteSetWantsRouteChangeNotifications___routeChangeNotificationObservers == 1;
  if (MRMediaRemoteSetWantsRouteChangeNotifications___routeChangeNotificationObservers >= 1)
  {
    --MRMediaRemoteSetWantsRouteChangeNotifications___routeChangeNotificationObservers;
    if (v4)
    {
LABEL_7:
      v6 = v2;
      v5 = [v2 notificationClient];
      [v5 setReceivesRoutesChangedNotifications:a1 != 0];

      v2 = v6;
    }
  }

LABEL_8:
}

void MRMediaRemoteSetApplicationPickedRoutes(uint64_t a1)
{
  v2 = MRGetSharedService();
  MRMediaRemoteServiceSetApplicationPickedRoutes(v2, a1, 0);
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v3 = [v4 localOriginClient];
  [v3 setApplicationPickedRoutes:a1];
}

void MRMediaRemoteSetNearbyDevice(void *a1)
{
  v2 = MRGetSharedService();

  MRMediaRemoteServiceSetNearbyDevice(v2, a1, 0, 0);
}

void MRMediaRemoteCopyPickableRoutesForCategory_Async(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"queue must be non-nil"];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"handler must be non-nil"];
    goto LABEL_3;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MRMediaRemoteCopyPickableRoutesForCategory_Async_block_invoke;
  v11[3] = &unk_1E76A4A78;
  v12 = v5;
  v13 = v7;
  v9 = v7;
  v10 = v5;
  [v8 fetchPickableRoutesWithCategory:a1 completion:v11];
}

void MRMediaRemoteFindAndPickRoute(uint64_t a1, void *a2, unsigned int a3, void *a4, void *a5)
{
  v13 = a4;
  v9 = a5;
  v10 = v9;
  if (a1)
  {
    v11 = MRGetSharedService();
    MRMediaRemoteServiceFindAndPickRoute(v11, a1, a2, a3, v13, v10);
  }

  else if (v9)
  {
    Error = MRMediaRemoteCreateError(2);
    (v10)[2](v10, Error);
  }
}

void MRMediaRemoteGetPickedRouteHasVolumeControl(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[MROrigin localOrigin];
  MRMediaRemoteGetPickedRouteHasVolumeControlForOrigin(v5, v4, v3);
}

void MRMediaRemoteGetPickedRouteHasVolumeControlForOrigin(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MRMediaRemoteGetPickedRouteHasVolumeControlForOrigin_block_invoke;
  v7[3] = &unk_1E769F0B0;
  v8 = v5;
  v6 = v5;
  MRMediaRemoteGetPickedRoutedVolumeControlCapabilities(a1, a2, v7);
}

uint64_t __MRMediaRemoteGetPickedRouteHasVolumeControlForOrigin_block_invoke(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

int64_t MRMediaRemoteGetLocalVolumeControlCapabilities()
{
  v0 = [MRPlayerPath alloc];
  v1 = +[MROrigin localOrigin];
  v2 = [(MRPlayerPath *)v0 initWithOrigin:v1 client:0 player:0];

  v3 = MRGetSharedService();
  PickedRouteVolumeControlCapabilitiesSync = MRMediaRemoteServiceGetPickedRouteVolumeControlCapabilitiesSync(v3, v2, 0);

  return PickedRouteVolumeControlCapabilitiesSync;
}

void __MRMediaRemoteGetPickedRoutedVolumeControlCapabilities_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  v6 = [v5 origin];

  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v9)
    {
      Error = v9;
    }

    else
    {
      Error = MRMediaRemoteNowPlayingPlayerPathCreateError(v5);
    }

    v8 = Error;
    (*(*(a1 + 40) + 16))();
  }
}

void MRMediaRemoteSetPickedRouteVolumeControlCapabilities(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v12 = [[MRPlayerPath alloc] initWithOrigin:a2 client:0 player:0];
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v10 = [v9 originClientForPlayerPath:v12];

  [v10 setVolumeCapabilities:a1];
  v11 = MRGetSharedService();
  MRMediaRemoteServiceSetPickedRouteVolumeControlCapabilities(v11, v12, a1, v8, v7);
}

void MRMediaRemoteGetSavedAVRoutePassword(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    MRMediaRemoteGetSavedAVRoutePassword_cold_1();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  MRMediaRemoteGetSavedAVRoutePassword_cold_2();
LABEL_3:
  v6 = MRGetSharedService();
  MRMediaRemoteServiceGetSavedAVRoutePassword(v6, a1, v7, v5);
}

void MRMediaRemoteSetSavedAVRoutePassword(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v9 = a3;
  v8 = MRGetSharedService();
  MRMediaRemoteServiceSetSavedAVRoutePassword(v8, a1, a2, v9, v7);
}

void MRMediaRemoteClearAllAVRoutePasswords()
{
  v0 = MRGetSharedService();

  MRMediaRemoteServiceClearAllAVRoutePasswords(v0);
}

void MRMediaRemoteUnpickAirPlayAVRoutes(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1;
  v4 = MRGetSharedService();
  MRMediaRemoteServiceUnpickAirPlayAVRoutes(v4, v5, v3);
}

void MRMediaRemoteGetReceiverAirPlaySecuritySettings(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1;
  v4 = MRGetSharedService();
  MRMediaRemoteServiceGetReceiverAirPlaySecuritySettings(v4, v5, v3);
}

void MRMediaRemoteGetLocalDeviceIsGroupLeader(void *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __MRMediaRemoteGetLocalDeviceIsGroupLeader_block_invoke;
  v5[3] = &unk_1E76A4B18;
  v6 = v3;
  v4 = v3;
  MRMediaRemoteRequestIsGroupLeader(a1, v5);
}

void __MRMediaRemoteGetMediaPlaybackVolumeForOrigin_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  v6 = [v5 origin];

  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v9)
    {
      Error = v9;
    }

    else
    {
      Error = MRMediaRemoteNowPlayingPlayerPathCreateError(v5);
    }

    v8 = Error;
    (*(*(a1 + 32) + 16))(0.0);
  }
}

void MRMediaRemoteSetMediaPlaybackVolume(unsigned int a1, void *a2, void *a3, float a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = MEMORY[0x1E696AD98];
  v9 = a2;
  v10 = [v8 alloc];
  *&v11 = a4;
  v12 = [v10 initWithFloat:v11];
  v13 = [MEMORY[0x1E695DF00] date];
  v14 = [MEMORY[0x1E696AFB0] UUID];
  v15 = [v14 UUIDString];

  v16 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"setMediaPlaybackVolume", v15];
  v17 = v16;
  if (v12)
  {
    [v16 appendFormat:@" for %@", v12];
  }

  v18 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v17;
    _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v19 = MRGetSharedService();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __MRMediaRemoteSetMediaPlaybackVolume_block_invoke;
  v24[3] = &unk_1E76A4B68;
  v25 = v15;
  v26 = v13;
  v27 = v7;
  v20 = v7;
  v21 = v13;
  v22 = v15;
  MRMediaRemoteServiceSetMediaPlaybackVolume(v19, a1, v9, v24, a4);

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __MRMediaRemoteSetMediaPlaybackVolume_block_invoke(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = _MRLogForCategory(0xAuLL);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __MRMediaRemoteSetMediaPlaybackVolume_block_invoke_cold_1(a1, a2, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = [MEMORY[0x1E695DF00] date];
    [v7 timeIntervalSinceDate:a1[5]];
    v11 = 138543874;
    v12 = @"setMediaPlaybackVolume";
    v13 = 2114;
    v14 = v6;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v11, 0x20u);
  }

  result = a1[6];
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void MRMediaRemoteAdjustMediaPlaybackVolumeWithAdjustment(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v10 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v9 = [v10 service];
  MRMediaRemoteServiceAdjustMediaPlaybackVolumeWithAdjustment(v9, a1, a2, v8, v7);
}

void MRMediaRemoteAdjustMediaPlaybackVolume(unsigned int a1, void *a2, void *a3, float a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = MEMORY[0x1E696AD98];
  v9 = a2;
  v10 = [v8 alloc];
  *&v11 = a4;
  v12 = [v10 initWithFloat:v11];
  v13 = [MEMORY[0x1E695DF00] date];
  v14 = [MEMORY[0x1E696AFB0] UUID];
  v15 = [v14 UUIDString];

  v16 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"adjustMediaPlaybackVolume", v15];
  v17 = v16;
  if (v12)
  {
    [v16 appendFormat:@" for %@", v12];
  }

  v18 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v17;
    _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v19 = MRGetSharedService();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __MRMediaRemoteAdjustMediaPlaybackVolume_block_invoke;
  v24[3] = &unk_1E76A4B68;
  v25 = v15;
  v26 = v13;
  v27 = v7;
  v20 = v7;
  v21 = v13;
  v22 = v15;
  MRMediaRemoteServiceAdjustMediaPlaybackVolume(v19, a1, v9, v24, a4);

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __MRMediaRemoteAdjustMediaPlaybackVolume_block_invoke(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = _MRLogForCategory(0xAuLL);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __MRMediaRemoteAdjustMediaPlaybackVolume_block_invoke_cold_1(a1, a2, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = [MEMORY[0x1E695DF00] date];
    [v7 timeIntervalSinceDate:a1[5]];
    v11 = 138543874;
    v12 = @"adjustMediaPlaybackVolume";
    v13 = 2114;
    v14 = v6;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v11, 0x20u);
  }

  result = a1[6];
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void MRMediaRemoteMuteSystemVolume(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E696AD98];
  v7 = a2;
  v8 = [[v6 alloc] initWithBool:a1];
  v9 = [MEMORY[0x1E695DF00] date];
  v10 = [MEMORY[0x1E696AFB0] UUID];
  v11 = [v10 UUIDString];

  v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"muteSystemVolume", v11];
  v13 = v12;
  if (v8)
  {
    [v12 appendFormat:@" for %@", v8];
  }

  v14 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v13;
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v15 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v16 = [v15 service];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __MRMediaRemoteMuteSystemVolume_block_invoke;
  v21[3] = &unk_1E769AE80;
  v22 = v11;
  v23 = v9;
  v24 = v5;
  v17 = v5;
  v18 = v9;
  v19 = v11;
  MRMediaRemoteServiceSetSystemIsMuted(v16, a1, v7, v21);

  v20 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteMuteSystemVolume_block_invoke(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MRLogForCategory(0xAuLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __MRMediaRemoteMuteSystemVolume_block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = [MEMORY[0x1E695DF00] date];
    [v7 timeIntervalSinceDate:a1[5]];
    v11 = 138543874;
    v12 = @"muteSystemVolume";
    v13 = 2114;
    v14 = v6;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v11, 0x20u);
  }

  v9 = a1[6];
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

CFStringRef MRMediaRemoteCopySetPickedRouteOptionsDescription(char a1)
{
  if (a1)
  {
    v1 = @"IgnoreIncorrectPassword";
  }

  else
  {
    v1 = @"None";
  }

  return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
}

void MRMediaRemoteRegisterPairingHandler(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = MRGetSharedService();
  MRMediaRemoteServiceRegisterPairingHandler(v6, a1, v7, v5);
}

void MRMediaRemoteUnregisterPairingHandler(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = MRGetSharedService();
  MRMediaRemoteServiceUnregisterPairingHandler(v6, a1, v7, v5);
}

void MRMediaRemoteCompletePairingHandler(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v9 = a3;
  v8 = MRGetSharedService();
  MRMediaRemoteServiceCompletePairingHandler(v8, a1, a2, v9, v7);
}

void sub_1A2B117E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2B127CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MRSendButtonEventMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
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
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 20) |= 4u;
        while (1)
        {
          v40 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v40 & 0x7F) << v27;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            LOBYTE(v33) = 0;
            goto LABEL_54;
          }
        }

        v33 = (v29 != 0) & ~[a2 hasError];
LABEL_54:
        *(a1 + 16) = v33;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            v38 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v38 & 0x7F) << v21;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_52;
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

LABEL_52:
          v35 = 8;
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

            goto LABEL_60;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 2u;
          while (1)
          {
            v39 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v39 & 0x7F) << v14;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_58;
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

LABEL_58:
          v35 = 12;
        }

        *(a1 + v35) = v20;
      }

LABEL_60:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *MRApplicationActivityStatusCopyDescription(int a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E76A4D58[a1 - 1];
  }
}

uint64_t MRApplicationActivityCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MRMutableApplicationActivity alloc];

  return [(MRApplicationActivity *)v5 initWithPrimaryAppDisplayID:a2 secondaryAppDisplayID:a3];
}

void MRApplicationActivityBegin(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = MRGetSharedService();
  v8 = +[MRNowPlayingOriginClientManager sharedManager];
  v9 = +[MROrigin localOrigin];
  v10 = [v8 originClientForOrigin:v9];

  [v10 setActivity:a1];
  MRMediaRemoteServiceBeginActivity(v7, a1, v6, v5);
}

void MRApplicationActivityGetCurrentActivity(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1;
  v4 = MRGetSharedService();
  MRMediaRemoteServiceGetCurrentActivity(v4, v5, v3);
}

void MRApplicationActivityEnd(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = MRGetSharedService();
  MRMediaRemoteServiceEndActivity(v6, a1, v7, v5);
}

CFUUIDRef MRApplicationActivityCopyUniqueIdentifier(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  v2 = *MEMORY[0x1E695E480];
  v3 = [v1 UUIDString];
  v4 = CFUUIDCreateFromString(v2, v3);

  return v4;
}

uint64_t MRApplicationActivityCopyPrimaryAppDisplayID(void *a1)
{
  v1 = [a1 primaryApplicationDisplayID];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRApplicationActivityCopySecondaryAppDisplayID(void *a1)
{
  v1 = [a1 secondaryApplicationDisplayID];
  v2 = [v1 copy];

  return v2;
}

uint64_t _MRApplicationActivityCreateExternalRepresentation(uint64_t result)
{
  if (result)
  {
    MSVArchivedDataWithRootObject();
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

uint64_t _MRApplicationActivityCreateWithExternalRepresentation(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = MEMORY[0x1E695DFD8];
    v3 = objc_opt_class();
    v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
    v1 = MSVUnarchivedObjectOfClasses();
  }

  return v1;
}

void _MRApplicationActivitySetStatus(void *a1, uint64_t a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setStatus:a2];
  }
}

uint64_t _MRAirPlayLeaderInfoProtobufReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(_MRDeviceInfoMessageProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRDeviceInfoMessageProtobufReadFrom(v13, a2))
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

uint64_t _MRSendVirtualTouchEventMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v20 = objc_alloc_init(_MRVirtualTouchEventProtobuf);
        objc_storeStrong((a1 + 16), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_MRVirtualTouchEventProtobufReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
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

LABEL_36:
        *(a1 + 8) = v19;
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

uint64_t _MRRemoteTextInputMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
        v23 = PBReaderReadData();
        v24 = *(a1 + 24);
        *(a1 + 24) = v23;
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v30 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v30 & 0x7F) << v16;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_38;
          }
        }

        v22 = [a2 hasError] ? 0 : v18;
LABEL_38:
        *(a1 + 16) = v22;
      }

      else if (v13 == 1)
      {
        *(a1 + 32) |= 1u;
        v28 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v28 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v28;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MROriginCopy(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MROriginCopy_cold_1();
    }
  }

  v2 = [v1 copy];

  return v2;
}

uint64_t MROriginCreateSkeletonFrom(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MROriginCreateSkeletonFrom_cold_1();
    }
  }

  v2 = [v1 skeleton];

  return v2;
}

uint64_t MROriginEqualToOrigin(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    MROriginEqualToOrigin_cold_1();
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
    MROriginEqualToOrigin_cold_2();
  }

LABEL_6:
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t MROriginGetOriginType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MROriginGetOriginType_cold_1();
    }
  }

  v2 = [v1 type];

  return v2;
}

void MRMediaRemoteSetWantsOriginChangeNotifications(int a1)
{
  v2 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v3 = MRMediaRemoteSetWantsOriginChangeNotifications___originChangeNotificationObservers;
  if (a1)
  {
    ++MRMediaRemoteSetWantsOriginChangeNotifications___originChangeNotificationObservers;
    if (v3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = MRMediaRemoteSetWantsOriginChangeNotifications___originChangeNotificationObservers == 1;
  if (MRMediaRemoteSetWantsOriginChangeNotifications___originChangeNotificationObservers >= 1)
  {
    --MRMediaRemoteSetWantsOriginChangeNotifications___originChangeNotificationObservers;
    if (v4)
    {
LABEL_7:
      v6 = v2;
      v5 = [v2 notificationClient];
      [v5 setReceivesOriginChangedNotifications:a1 != 0];

      v2 = v6;
    }
  }

LABEL_8:
}

void MRMediaRemoteGetAvailableOrigins(void *a1, void *a2)
{
  v6 = a1;
  if (!v6)
  {
    v6 = MEMORY[0x1E69E96A0];
    v3 = MEMORY[0x1E69E96A0];
  }

  v4 = a2;
  v5 = MRGetSharedService();
  MRMediaRemoteServiceGetAvailableOrigins(v5, v6, v4);
}

void MRMediaRemoteSetActiveOrigin(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v5 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
  }

  v8 = _MRLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = a1;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Setting active origin: %@", buf, 0xCu);
  }

  v9 = MRGetSharedService();
  MRMediaRemoteServiceSetActiveOrigin(v9, a1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MRMediaRemoteSetActiveOrigin_block_invoke;
  block[3] = &unk_1E769AD58;
  v13 = v6;
  v10 = v6;
  dispatch_async(v5, block);

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __MRMediaRemoteSetActiveOrigin_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t _MRAudioTimeProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
        *(a1 + 24) |= 2u;
        v23 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v18 = v23;
        v19 = &OBJC_IVAR____MRAudioTimeProtobuf__timestamp;
LABEL_31:
        *(a1 + *v19) = v18;
        goto LABEL_32;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 24) |= 1u;
    v23 = 0;
    v15 = [a2 position] + 8;
    if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v18 = v23;
    v19 = &OBJC_IVAR____MRAudioTimeProtobuf__sampleRate;
    goto LABEL_31;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRGroupSessionRemoveRequestProtobufReadFrom(uint64_t a1, void *a2)
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

uint64_t _MRGameControllerPropertiesProtobufReadFrom(uint64_t a1, void *a2)
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
        v45 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
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
        if (v13 == 1)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v46 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v46 & 0x7F) << v36;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_73;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v38;
          }

LABEL_73:
          v43 = 12;
          goto LABEL_74;
        }

        if (v13 != 2)
        {
LABEL_60:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_77;
        }

        v21 = PBReaderReadString();
        v22 = *(a1 + 24);
        *(a1 + 24) = v21;
      }

      else
      {
        if (v13 == 3)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v48 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v48 & 0x7F) << v23;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_65;
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

LABEL_65:
          v43 = 8;
          goto LABEL_74;
        }

        if (v13 == 4)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            v47 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v47 & 0x7F) << v30;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_69;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v32;
          }

LABEL_69:
          v43 = 16;
LABEL_74:
          *(a1 + v43) = v29;
          goto LABEL_77;
        }

        if (v13 != 5)
        {
          goto LABEL_60;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 36) |= 8u;
        while (1)
        {
          v49 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v49 & 0x7F) << v14;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_76;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_76:
        *(a1 + 32) = v20;
      }

LABEL_77:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRAudioFormatSettingsProtobufReadFrom(uint64_t a1, void *a2)
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

void sub_1A2B1AFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _MRGroupSessionParticipantProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v39[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39[0] & 0x7F) << v5;
        if ((v39[0] & 0x80) == 0)
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
        break;
      }

      if (v13 == 1)
      {
        v34 = PBReaderReadString();
        v35 = *(a1 + 8);
        *(a1 + 8) = v34;

        goto LABEL_63;
      }

      if (v13 != 2)
      {
        goto LABEL_54;
      }

      v21 = objc_alloc_init(_MRUserIdentityProtobuf);
      objc_storeStrong((a1 + 16), v21);
      v39[0] = 0;
      v39[1] = 0;
      if (!PBReaderPlaceMark() || !_MRUserIdentityProtobufReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_63:
      v37 = [a2 position];
      if (v37 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v39[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v39[0] & 0x7F) << v22;
          if ((v39[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_57;
          }
        }

        v20 = (v24 != 0) & ~[a2 hasError];
LABEL_57:
        v36 = 24;
        goto LABEL_62;
      case 4:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v39[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v39[0] & 0x7F) << v28;
          if ((v39[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_59;
          }
        }

        v20 = (v30 != 0) & ~[a2 hasError];
LABEL_59:
        v36 = 25;
        goto LABEL_62;
      case 5:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 4u;
        while (1)
        {
          LOBYTE(v39[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v39[0] & 0x7F) << v14;
          if ((v39[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_61;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_61:
        v36 = 26;
LABEL_62:
        *(a1 + v36) = v20;
        goto LABEL_63;
    }

LABEL_54:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_63;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MRVirtualVoiceInputDeviceDescriptorCreateFromExternalRepresentation(uint64_t a1, uint64_t a2)
{
  v3 = [MRVirtualVoiceInputDeviceDescriptor alloc];

  return [(MRVirtualVoiceInputDeviceDescriptor *)v3 initWithData:a2];
}

uint64_t MRVirtualVoiceInputDeviceDescriptorSetSupportedFormats(void *a1, uint64_t a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRVirtualVoiceInputDeviceDescriptorSetSupportedFormats_cold_1();
  }

  return [a1 setSupportedFormats:a2];
}

uint64_t MRVirtualVoiceInputDeviceDescriptorCopyDefaultFormat(void *a1)
{
  v1 = [a1 defaultFormat];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRVirtualVoiceInputDeviceDescriptorSetDefaultAudioFormat(void *a1, uint64_t a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRVirtualVoiceInputDeviceDescriptorSetDefaultAudioFormat_cold_1();
  }

  return [a1 setDefaultFormat:a2];
}

uint64_t _MRColorProtobufReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          *(a1 + 24) |= 2u;
          v30 = 0;
          v20 = [a2 position] + 4;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 4, v21 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v30 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR____MRColorProtobuf__blue;
          goto LABEL_44;
        }

        if (v13 == 4)
        {
          *(a1 + 24) |= 1u;
          v30 = 0;
          v16 = [a2 position] + 4;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v30 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR____MRColorProtobuf__alpha;
          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          *(a1 + 24) |= 8u;
          v30 = 0;
          v18 = [a2 position] + 4;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 4, v19 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR____MRColorProtobuf__red;
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          *(a1 + 24) |= 4u;
          v30 = 0;
          v14 = [a2 position] + 4;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v30 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR____MRColorProtobuf__green;
LABEL_44:
          *(a1 + *v24) = v23;
          goto LABEL_45;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRSetHiliteModeMessageProtobufReadFrom(uint64_t a1, void *a2)
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

uint64_t _MRSetReadyStateMessageProtobufReadFrom(uint64_t a1, void *a2)
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

uint64_t _MRAVModifyOutputContextRequestProtobufReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addClusterAwareSettingOutputDeviceUID:v14];
            }

            goto LABEL_52;
          }

          if (v13 == 8)
          {
            v14 = objc_alloc_init(_MRGroupTopologyModificationRequestProtobuf);
            objc_storeStrong((a1 + 56), v14);
            v24[0] = 0;
            v24[1] = 0;
            if (!PBReaderPlaceMark() || !_MRGroupTopologyModificationRequestProtobufReadFrom(v14, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_52;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addClusterAwareAddingOutputDeviceUID:v14];
            }

            goto LABEL_52;
          }

          if (v13 == 6)
          {
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addClusterAwareRemovingOutputDeviceUID:v14];
            }

            goto LABEL_52;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addRemovingOutputDeviceUID:v14];
          }

          goto LABEL_52;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addSettingOutputDeviceUID:v14];
          }

          goto LABEL_52;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            LOBYTE(v24[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24[0] & 0x7F) << v15;
            if ((v24[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_60;
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

LABEL_60:
          *(a1 + 40) = v21;
          goto LABEL_53;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addAddingOutputDeviceUID:v14];
          }

LABEL_52:

          goto LABEL_53;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_53:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRGameControllerButtonsProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v62) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v62 & 0x7F) << v5;
        if ((v62 & 0x80) == 0)
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

      switch((v12 >> 3))
      {
        case 1u:
          *(a1 + 68) |= 4u;
          v62 = 0;
          v13 = [a2 position] + 4;
          if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v62 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v62;
          v45 = &OBJC_IVAR____MRGameControllerButtonsProtobuf__dPadX;
          goto LABEL_95;
        case 2u:
          *(a1 + 68) |= 8u;
          v62 = 0;
          v31 = [a2 position] + 4;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 4, v32 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v62 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v62;
          v45 = &OBJC_IVAR____MRGameControllerButtonsProtobuf__dPadY;
          goto LABEL_95;
        case 3u:
          *(a1 + 68) |= 1u;
          v62 = 0;
          v25 = [a2 position] + 4;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 4, v26 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v62 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v62;
          v45 = &OBJC_IVAR____MRGameControllerButtonsProtobuf__a;
          goto LABEL_95;
        case 4u:
          *(a1 + 68) |= 2u;
          v62 = 0;
          v27 = [a2 position] + 4;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 4, v28 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:&v62 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v62;
          v45 = &OBJC_IVAR____MRGameControllerButtonsProtobuf__b;
          goto LABEL_95;
        case 5u:
          *(a1 + 68) |= 0x2000u;
          v62 = 0;
          v19 = [a2 position] + 4;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 4, v20 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v62 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v62;
          v45 = &OBJC_IVAR____MRGameControllerButtonsProtobuf__x;
          goto LABEL_95;
        case 6u:
          *(a1 + 68) |= 0x4000u;
          v62 = 0;
          v33 = [a2 position] + 4;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 4, v34 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v62 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v62;
          v45 = &OBJC_IVAR____MRGameControllerButtonsProtobuf__y;
          goto LABEL_95;
        case 7u:
          *(a1 + 68) |= 0x10u;
          v62 = 0;
          v37 = [a2 position] + 4;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 4, v38 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v62 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v62;
          v45 = &OBJC_IVAR____MRGameControllerButtonsProtobuf__leftShoulder;
          goto LABEL_95;
        case 8u:
          *(a1 + 68) |= 0x200u;
          v62 = 0;
          v29 = [a2 position] + 4;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 4, v30 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v62 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v62;
          v45 = &OBJC_IVAR____MRGameControllerButtonsProtobuf__rightShoulder;
          goto LABEL_95;
        case 9u:
          *(a1 + 68) |= 0x20u;
          v62 = 0;
          v41 = [a2 position] + 4;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 4, v42 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v62 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v62;
          v45 = &OBJC_IVAR____MRGameControllerButtonsProtobuf__leftThumbstickX;
          goto LABEL_95;
        case 0xAu:
          *(a1 + 68) |= 0x40u;
          v62 = 0;
          v23 = [a2 position] + 4;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 4, v24 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v62 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v62;
          v45 = &OBJC_IVAR____MRGameControllerButtonsProtobuf__leftThumbstickY;
          goto LABEL_95;
        case 0xBu:
          *(a1 + 68) |= 0x400u;
          v62 = 0;
          v39 = [a2 position] + 4;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 4, v40 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v62 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v62;
          v45 = &OBJC_IVAR____MRGameControllerButtonsProtobuf__rightThumbstickX;
          goto LABEL_95;
        case 0xCu:
          *(a1 + 68) |= 0x800u;
          v62 = 0;
          v17 = [a2 position] + 4;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 4, v18 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v62 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v62;
          v45 = &OBJC_IVAR____MRGameControllerButtonsProtobuf__rightThumbstickY;
          goto LABEL_95;
        case 0xDu:
          *(a1 + 68) |= 0x80u;
          v62 = 0;
          v21 = [a2 position] + 4;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 4, v22 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v62 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v62;
          v45 = &OBJC_IVAR____MRGameControllerButtonsProtobuf__leftTrigger;
          goto LABEL_95;
        case 0xEu:
          *(a1 + 68) |= 0x1000u;
          v62 = 0;
          v35 = [a2 position] + 4;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 4, v36 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v62 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v62;
          v45 = &OBJC_IVAR____MRGameControllerButtonsProtobuf__rightTrigger;
          goto LABEL_95;
        case 0xFu:
          *(a1 + 68) |= 0x100u;
          v62 = 0;
          v15 = [a2 position] + 4;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v62 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v62;
          v45 = &OBJC_IVAR____MRGameControllerButtonsProtobuf__pause;
LABEL_95:
          *(a1 + *v45) = v44;
          goto LABEL_96;
        default:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

LABEL_96:
          v60 = [a2 position];
          if (v60 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          break;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRPlaybackSessionRequestMessageProtobufReadFrom(uint64_t a1, void *a2)
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

void getAVSystemController_CanBeNowPlayingAppAttribute_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_CanBeNowPlayingAppAttribute(void)"];
  [v0 handleFailureInFunction:v1 file:@"MRNowPlaying.m" lineNumber:243 description:{@"%s", dlerror()}];

  __break(1u);
}

void MRMediaRemoteUpdatePlayerProperties_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteUpdatePlayerProperties(MRNowPlayingPlayerPathRef, __strong dispatch_queue_t, void (^__strong)(CFErrorRef))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRMediaRemoteGetClientProperties_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteGetClientProperties(MRNowPlayingClientRef, MROriginRef, __strong dispatch_queue_t, void (^__strong)(MRNowPlayingClientRef))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void __MRMediaRemoteGetClientProperties_block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2();
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:*(v0 + 56)];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteSetClientProperties_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteSetClientProperties(MRNowPlayingClientRef, MROriginRef, __strong dispatch_queue_t, void (^__strong)(CFErrorRef))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void __MRMediaRemoteSetClientProperties_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 40);
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSinceDate:*(v0 + 48)];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteUpdateClientProperties_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteUpdateClientProperties(MRNowPlayingClientRef, MROriginRef, __strong dispatch_queue_t, void (^__strong)(CFErrorRef))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void __MRMediaRemoteUpdateClientProperties_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 40);
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSinceDate:*(v0 + 48)];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteSetPlayerProperties_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteSetPlayerProperties(MRNowPlayingPlayerPathRef, __strong dispatch_queue_t, void (^__strong)(CFErrorRef))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void __MRMediaRemoteGetPlaybackStateForPlayer_block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 40);
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSinceDate:*(v0 + 48)];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5(&dword_1A2860000, a1, a3, "[MRNowPlaying] Ignoring setPlaybackState because application does not contain entitlement %@ for platform", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteGetMediaAppIsInstalled_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5(&dword_1A2860000, a2, a3, "[MRNowPlaying] Disallowed bundle ID requested for installation status: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __getAVSystemControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVSystemControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MRNowPlaying.m" lineNumber:242 description:{@"Unable to find class %s", "AVSystemController"}];

  __break(1u);
}

void MediaExperienceLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaExperienceLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MRNowPlaying.m" lineNumber:241 description:{@"%s", *a1}];

  __break(1u);
}

void __getINPrivatePlayMediaIntentDataClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINPrivatePlayMediaIntentDataClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MRSiriIntentImports.h" lineNumber:49 description:{@"Unable to find class %s", "INPrivatePlayMediaIntentData"}];

  __break(1u);
}

void IntentsLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntentsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MRSiriIntentImports.h" lineNumber:37 description:{@"%s", *a1}];

  __break(1u);
}

void __getINMediaItemClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINMediaItemClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MRSiriIntentImports.h" lineNumber:46 description:{@"Unable to find class %s", "INMediaItem"}];

  __break(1u);
}

void __getINInteractionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINInteractionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MRSiriIntentImports.h" lineNumber:40 description:{@"Unable to find class %s", "INInteraction"}];

  __break(1u);
}

void __getINCExtensionConnectionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINCExtensionConnectionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MRSiriIntentImports.h" lineNumber:51 description:{@"Unable to find class %s", "INCExtensionConnection"}];

  __break(1u);
}

void __getINCExtensionConnectionClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntentsCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MRSiriIntentImports.h" lineNumber:38 description:{@"%s", *a1}];

  __break(1u);
}

void __getINPlayMediaIntentResponseClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINPlayMediaIntentResponseClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MRSiriIntentImports.h" lineNumber:43 description:{@"Unable to find class %s", "INPlayMediaIntentResponse"}];

  __break(1u);
}

void __MRMediaRemoteGetSupportedCommandsForPlayer_block_invoke_2_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSinceDate:*(a1 + 48)];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteRequestPendingCommands_block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSinceDate:*(a1 + 48)];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

void _MRProtoUtilsProtoDictionaryFromNSDictionary_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_MRDictionaryProtobuf * _Nonnull _MRProtoUtilsProtoDictionaryFromNSDictionary(NSDictionary<NSString *, id> *__strong _Nonnull)"}];
  [v0 handleFailureInFunction:v1 file:@"MRProtoUtils.m" lineNumber:39 description:@"all dictionary keys must be string"];
}

void _MRProtoUtilsProtoValueFromPlistType_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "[_MRValueProtobuf] _MRProtoUtilsProtoValueFromPlistType: plistType=%@ is not a plist type", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __getTUConversationManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUConversationManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MRExpanseManager.m" lineNumber:25 description:{@"Unable to find class %s", "TUConversationManager"}];

  __break(1u);
}

void TelephonyUtilitiesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TelephonyUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MRExpanseManager.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void __getTUNeighborhoodActivityConduitClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUNeighborhoodActivityConduitClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MRExpanseManager.m" lineNumber:27 description:{@"Unable to find class %s", "TUNeighborhoodActivityConduit"}];

  __break(1u);
}

void __getTUNearbyDeviceHandleClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUNearbyDeviceHandleClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MRExpanseManager.m" lineNumber:28 description:{@"Unable to find class %s", "TUNearbyDeviceHandle"}];

  __break(1u);
}

void MRMediaRemoteServiceBeginActivity_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteServiceBeginActivity(MRMediaRemoteServiceRef, MRApplicationActivityRef, __strong dispatch_queue_t, void (^__strong)(CFErrorRef))"}];
  [OUTLINED_FUNCTION_0_8(v0 v1];
}

void MRMediaRemoteServiceEndActivity_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteServiceEndActivity(MRMediaRemoteServiceRef, MRApplicationActivityRef, __strong dispatch_queue_t, void (^__strong)(MRMediaRemoteError))"}];
  [OUTLINED_FUNCTION_0_8(v0 v1];
}

void MRMediaRemoteServiceSetPickedRouteVolumeControlCapabilities_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteServiceSetPickedRouteVolumeControlCapabilities(MRMediaRemoteServiceRef, MRNowPlayingPlayerPathRef, MRVolumeControlCapabilities, __strong dispatch_queue_t, void (^__strong)(MRMediaRemoteError))"}];
  [OUTLINED_FUNCTION_0_8(v0 v1];
}

void MRMediaRemoteServiceSetSavedAVRoutePassword_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteServiceSetSavedAVRoutePassword(MRMediaRemoteServiceRef, CFStringRef, CFStringRef, __strong dispatch_queue_t, void (^__strong)(MRMediaRemoteError))"}];
  [OUTLINED_FUNCTION_0_8(v0 v1];
}

void MRMediaRemoteServiceUnpickAirPlayAVRoutes_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteServiceUnpickAirPlayAVRoutes(MRMediaRemoteServiceRef, __strong dispatch_queue_t, void (^__strong)(CFErrorRef))"}];
  [OUTLINED_FUNCTION_0_8(v0 v1];
}

void MRMediaRemoteServiceCopyDeviceInfo_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MRDeviceInfo *MRMediaRemoteServiceCopyDeviceInfo(MRMediaRemoteServiceRef, MRPlayerPath *__strong)"}];
  [OUTLINED_FUNCTION_0_8(v0 v1];
}

void MRMediaRemoteServiceSetRecentAVOutputDeviceUID_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteServiceSetRecentAVOutputDeviceUID(MRMediaRemoteServiceRef, __strong dispatch_queue_t, CFStringRef, void (^__strong)(CFErrorRef))"}];
  [OUTLINED_FUNCTION_0_8(v0 v1];
}

void MRMediaRemoteServiceCreateDirectEndpointForDevices_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteServiceCreateDirectEndpointForDevices(MRMediaRemoteServiceRef, CFArrayRef, __strong dispatch_queue_t, void (^__strong)(MRAVEndpoint *__strong, NSError *__strong))"}];
  [OUTLINED_FUNCTION_0_8(v0 v1];
}

void MRMediaRemoteServiceCreateHostedEndpointForDevices_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteServiceCreateHostedEndpointForDevices(MRMediaRemoteServiceRef, CFArrayRef, __strong dispatch_queue_t, void (^__strong)(MRAVEndpoint *__strong, NSError *__strong))"}];
  [OUTLINED_FUNCTION_0_8(v0 v1];
}

void MRMediaRemoteServiceCreateGroupWithDevices_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteServiceCreateGroupWithDevices(MRMediaRemoteServiceRef, CFArrayRef, MRRequestDetails *__strong, __strong dispatch_queue_t, void (^__strong)(NSString *__strong, NSError *__strong))"}];
  [OUTLINED_FUNCTION_0_8(v0 v1];
}

void MRMediaRemoteServiceGroupDevicesAndSendCommand_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteServiceGroupDevicesAndSendCommand(MRMediaRemoteServiceRef, CFArrayRef, const MRServiceSendCommand *, __strong dispatch_queue_t, void (^__strong)(MRSendCommandError, NSError *__strong, NSString *__strong, NSArray<MRSendCommandResultStatus *> *__strong))"}];
  [OUTLINED_FUNCTION_0_8(v0 v1];
}

void MRMediaRemoteServicePredictGroupLeader_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteServicePredictGroupLeader(MRMediaRemoteServiceRef, CFArrayRef, __strong dispatch_queue_t, void (^__strong)(CFErrorRef, CFStringRef))"}];
  [OUTLINED_FUNCTION_0_8(v0 v1];
}

void MRMediaRemoteServiceRemoveFromParentGroup_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteServiceRemoveFromParentGroup(MRMediaRemoteServiceRef, CFArrayRef, __strong dispatch_queue_t, void (^__strong)(CFErrorRef))"}];
  [OUTLINED_FUNCTION_0_8(v0 v1];
}

void MRMediaRemoteServiceCopyVirtualOutputDevices_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSArray<MRAVVirtualOutputDevice *> *MRMediaRemoteServiceCopyVirtualOutputDevices(MRMediaRemoteServiceRef)"];
  [OUTLINED_FUNCTION_0_8(v0 v1];
}

void MRMediaRemoteServiceVirtualVoiceSetRecordingState_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteServiceVirtualVoiceSetRecordingState(MRMediaRemoteServiceRef, MRVirtualVoiceInputDeviceID, MRVoiceRecordingState, __strong dispatch_queue_t, void (^__strong)(CFErrorRef))"}];
  [OUTLINED_FUNCTION_0_8(v0 v1];
}

void __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileKeyBagLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MRIDSCompanionConnection.m" lineNumber:28 description:{@"%s", *a1}];

  __break(1u);
}

void soft_BiomeLibrary_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<BMRootLibrary> soft_BiomeLibrary(void)"];
  [v0 handleFailureInFunction:v1 file:@"MRMediaSuggestionRequestResponse.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getBiomeLibrarySymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeLibraryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MRMediaSuggestionRequestResponse.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void __getBMPublisherOptionsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBMPublisherOptionsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MRMediaSuggestionRequestResponse.m" lineNumber:28 description:{@"Unable to find class %s", "BMPublisherOptions"}];

  __break(1u);
}

void __getBMPublisherOptionsClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeStreamsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MRMediaSuggestionRequestResponse.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void __getINPlayMediaIntentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINPlayMediaIntentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MRSiriIntentImports.h" lineNumber:42 description:{@"Unable to find class %s", "INPlayMediaIntent"}];

  __break(1u);
}

void __getINSchemaClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINSchemaClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MRSiriIntentImports.h" lineNumber:48 description:{@"Unable to find class %s", "INSchema"}];

  __break(1u);
}

void sub_1A2B2D83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void MRMediaRemoteSendErrorFromError_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MRSendCommandError MRMediaRemoteSendErrorFromError(NSError *__strong, NSString *__autoreleasing *)"}];
  [v1 handleFailureInFunction:v0 file:@"MRRemoteControlTypes.m" lineNumber:671 description:{@"Invalid parameter not satisfying: %@", @"error"}];
}

void MRMediaRemoteSendErrorFromError_cold_2()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MRSendCommandError MRMediaRemoteSendErrorFromError(NSError *__strong, NSString *__autoreleasing *)"}];
  [v1 handleFailureInFunction:v0 file:@"MRRemoteControlTypes.m" lineNumber:672 description:{@"Invalid parameter not satisfying: %@", @"[error.domain isEqualToString:(__bridge NSString *)kMRMediaRemoteFrameworkErrorDomain]"}];
}

void _MRPSMDetermineRecipe_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MRPSMDetermineRecipe(MRPlayerPath *__strong, MROrigin *__strong, MRPlaybackSessionMigrateRequest *__strong, __strong dispatch_queue_t, void (^__strong)(MRPlayerPath *__strong, MRPlayerPath *__strong, _MRPSMRecipe *__strong))"}];
  [v1 handleFailureInFunction:v0 file:@"MRPlaybackSessionMigrateRequestResponse.m" lineNumber:715 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
}

void __MRMediaRemoteSendPlaybackSessionMigratePost_block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 40) requestID];
  v7 = [MEMORY[0x1E695DF00] date];
  [v7 timeIntervalSinceDate:*(a1 + 48)];
  v10 = 138544130;
  v11 = @"sendPlaybackSessionMigratePost";
  v12 = 2114;
  v13 = v6;
  v14 = 2114;
  v15 = a2;
  v16 = 2048;
  v17 = v8;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v10, 0x2Au);

  v9 = *MEMORY[0x1E69E9840];
}

void __getCURunLoopThreadClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCURunLoopThreadClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MRAVXPCPipeTransport.m" lineNumber:17 description:{@"Unable to find class %s", "CURunLoopThread"}];

  __break(1u);
}

void __getCURunLoopThreadClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreUtilsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MRAVXPCPipeTransport.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

void MRTelevisionSetHiliteModeCallback_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSetHiliteModeCallback(MRExternalDeviceRef, __strong dispatch_queue_t, __strong MRTelevisionHiliteModeCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionSetHiliteModeCallback_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSetHiliteModeCallback(MRExternalDeviceRef, __strong dispatch_queue_t, __strong MRTelevisionHiliteModeCallback)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionRequestHiliteModeExit_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void MRTelevisionRequestHiliteModeExit(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionRequestHiliteModeExit_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void MRTelevisionRequestHiliteModeExit(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionGetHiliteMode_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRTelevisionGetHiliteMode(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionGetHiliteMode_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRTelevisionGetHiliteMode(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionWake_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void MRTelevisionWake(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionWake_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void MRTelevisionWake(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionRegisterVirtualTouchDevice_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionRegisterVirtualTouchDevice(MRExternalDeviceRef, MRVirtualTouchDeviceDescriptorRef, __strong dispatch_queue_t, __strong MRTelevisionTouchDeviceIDCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionRegisterVirtualTouchDevice_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionRegisterVirtualTouchDevice(MRExternalDeviceRef, MRVirtualTouchDeviceDescriptorRef, __strong dispatch_queue_t, __strong MRTelevisionTouchDeviceIDCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionRegisterVirtualTouchDevice_cold_3()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionRegisterVirtualTouchDevice(MRExternalDeviceRef, MRVirtualTouchDeviceDescriptorRef, __strong dispatch_queue_t, __strong MRTelevisionTouchDeviceIDCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionRegisterVirtualTouchDevice_cold_4()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionRegisterVirtualTouchDevice(MRExternalDeviceRef, MRVirtualTouchDeviceDescriptorRef, __strong dispatch_queue_t, __strong MRTelevisionTouchDeviceIDCallback)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionSendVirtualTouchEvent_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSendVirtualTouchEvent(MRExternalDeviceRef, MRHIDTouchEvent, MRVirtualTouchDeviceID)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionSendVirtualTouchEvent_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSendVirtualTouchEvent(MRExternalDeviceRef, MRHIDTouchEvent, MRVirtualTouchDeviceID)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionSendHIDEvent_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSendHIDEvent(MRExternalDeviceRef, IOHIDEventRef)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionSendHIDEvent_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSendHIDEvent(MRExternalDeviceRef, IOHIDEventRef)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionGetCurrentTextEditingSession_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionGetCurrentTextEditingSession(MRExternalDeviceRef, __strong dispatch_queue_t, void (^__strong)(MRTextEditingSessionRef, CFErrorRef))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionGetCurrentTextEditingSession_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionGetCurrentTextEditingSession(MRExternalDeviceRef, __strong dispatch_queue_t, void (^__strong)(MRTextEditingSessionRef, CFErrorRef))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionGetCurrentTextEditingSession_cold_3()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionGetCurrentTextEditingSession(MRExternalDeviceRef, __strong dispatch_queue_t, void (^__strong)(MRTextEditingSessionRef, CFErrorRef))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionGetCurrentTextEditingSession_cold_4()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionGetCurrentTextEditingSession(MRExternalDeviceRef, __strong dispatch_queue_t, void (^__strong)(MRTextEditingSessionRef, CFErrorRef))"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionSetTextEditingCallback_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSetTextEditingCallback(MRExternalDeviceRef, __strong dispatch_queue_t, __strong MRTelevisionTextInputCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionSetTextEditingCallback_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSetTextEditingCallback(MRExternalDeviceRef, __strong dispatch_queue_t, __strong MRTelevisionTextInputCallback)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionTextEditingInsert_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionTextEditingInsert(MRExternalDeviceRef, MRTextEditingSessionRef, CFStringRef)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionTextEditingInsert_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionTextEditingInsert(MRExternalDeviceRef, MRTextEditingSessionRef, CFStringRef)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionTextEditingSetText_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionTextEditingSetText(MRExternalDeviceRef, MRTextEditingSessionRef, CFStringRef)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionTextEditingSetText_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionTextEditingSetText(MRExternalDeviceRef, MRTextEditingSessionRef, CFStringRef)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionTextEditingDeleteBackward_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionTextEditingDeleteBackward(MRExternalDeviceRef, MRTextEditingSessionRef)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionTextEditingDeleteBackward_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionTextEditingDeleteBackward(MRExternalDeviceRef, MRTextEditingSessionRef)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionTextEditingClearText_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionTextEditingClearText(MRExternalDeviceRef, MRTextEditingSessionRef)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionTextEditingClearText_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionTextEditingClearText(MRExternalDeviceRef, MRTextEditingSessionRef)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionGetCurrentRTISourceSession_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionGetCurrentRTISourceSession(MRExternalDeviceRef, __strong dispatch_queue_t, void (^__strong)(MRRTIInputSystemSourceSessionRef, CFErrorRef))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionGetCurrentRTISourceSession_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionGetCurrentRTISourceSession(MRExternalDeviceRef, __strong dispatch_queue_t, void (^__strong)(MRRTIInputSystemSourceSessionRef, CFErrorRef))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionGetCurrentRTISourceSession_cold_3()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionGetCurrentRTISourceSession(MRExternalDeviceRef, __strong dispatch_queue_t, void (^__strong)(MRRTIInputSystemSourceSessionRef, CFErrorRef))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionGetCurrentRTISourceSession_cold_4()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionGetCurrentRTISourceSession(MRExternalDeviceRef, __strong dispatch_queue_t, void (^__strong)(MRRTIInputSystemSourceSessionRef, CFErrorRef))"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionSetRTICallback_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSetRTICallback(MRExternalDeviceRef, __strong dispatch_queue_t, __strong MRTelevisionRTICallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionSetRTICallback_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSetRTICallback(MRExternalDeviceRef, __strong dispatch_queue_t, __strong MRTelevisionRTICallback)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionRegisterGameController_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionRegisterGameController(MRExternalDeviceRef, MRGameControllerProfile, __strong dispatch_queue_t, __strong MRTelevisionGameControllerIDCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionRegisterGameController_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionRegisterGameController(MRExternalDeviceRef, MRGameControllerProfile, __strong dispatch_queue_t, __strong MRTelevisionGameControllerIDCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionRegisterGameController_cold_3()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionRegisterGameController(MRExternalDeviceRef, MRGameControllerProfile, __strong dispatch_queue_t, __strong MRTelevisionGameControllerIDCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionRegisterGameControllerWithProperties_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionRegisterGameControllerWithProperties(MRExternalDeviceRef, MRGameControllerPropertiesRef, __strong dispatch_queue_t, __strong MRTelevisionGameControllerIDCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionRegisterGameControllerWithProperties_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionRegisterGameControllerWithProperties(MRExternalDeviceRef, MRGameControllerPropertiesRef, __strong dispatch_queue_t, __strong MRTelevisionGameControllerIDCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionRegisterGameControllerWithProperties_cold_3()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionRegisterGameControllerWithProperties(MRExternalDeviceRef, MRGameControllerPropertiesRef, __strong dispatch_queue_t, __strong MRTelevisionGameControllerIDCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionRegisterGameControllerWithProperties_cold_4()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionRegisterGameControllerWithProperties(MRExternalDeviceRef, MRGameControllerPropertiesRef, __strong dispatch_queue_t, __strong MRTelevisionGameControllerIDCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionRegisterGameControllerWithProperties_cold_5()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionRegisterGameControllerWithProperties(MRExternalDeviceRef, MRGameControllerPropertiesRef, __strong dispatch_queue_t, __strong MRTelevisionGameControllerIDCallback)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionUnregisterGameController_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionUnregisterGameController(MRExternalDeviceRef, MRGameControllerID)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionUnregisterGameController_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionUnregisterGameController(MRExternalDeviceRef, MRGameControllerID)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionSetGameControllerInputModeCallback_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSetGameControllerInputModeCallback(MRExternalDeviceRef, __strong dispatch_queue_t, __strong MRTelevisionGameControllerInputModeCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionSetGameControllerInputModeCallback_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSetGameControllerInputModeCallback(MRExternalDeviceRef, __strong dispatch_queue_t, __strong MRTelevisionGameControllerInputModeCallback)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionSetGameControllerPropertiesCallback_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSetGameControllerPropertiesCallback(MRExternalDeviceRef, __strong dispatch_queue_t, __strong MRTelevisionGameControllerPropertiesCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionSetGameControllerPropertiesCallback_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSetGameControllerPropertiesCallback(MRExternalDeviceRef, __strong dispatch_queue_t, __strong MRTelevisionGameControllerPropertiesCallback)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionSendGameControllerEvent_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSendGameControllerEvent(MRExternalDeviceRef, MRGameControllerEvent, MRGameControllerID)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionSendGameControllerEvent_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSendGameControllerEvent(MRExternalDeviceRef, MRGameControllerEvent, MRGameControllerID)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionSendGameControllerEventV2_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSendGameControllerEventV2(MRExternalDeviceRef, MRGameControllerEventRef, MRGameControllerID)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionSendGameControllerEventV2_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSendGameControllerEventV2(MRExternalDeviceRef, MRGameControllerEventRef, MRGameControllerID)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionSendGameControllerEventV2_cold_3()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSendGameControllerEventV2(MRExternalDeviceRef, MRGameControllerEventRef, MRGameControllerID)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionSendGameControllerEventV2_cold_4()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSendGameControllerEventV2(MRExternalDeviceRef, MRGameControllerEventRef, MRGameControllerID)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionGetGameControllerInputMode_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRGameControllerInputMode MRTelevisionGetGameControllerInputMode(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionGetGameControllerInputMode_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRGameControllerInputMode MRTelevisionGetGameControllerInputMode(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionRegisterVirtualVoiceInputDevice_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionRegisterVirtualVoiceInputDevice(MRExternalDeviceRef, MRVirtualVoiceInputDeviceDescriptorRef, __strong dispatch_queue_t, void (^__strong)(MRVirtualVoiceInputDeviceID, CFErrorRef))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionRegisterVirtualVoiceInputDevice_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionRegisterVirtualVoiceInputDevice(MRExternalDeviceRef, MRVirtualVoiceInputDeviceDescriptorRef, __strong dispatch_queue_t, void (^__strong)(MRVirtualVoiceInputDeviceID, CFErrorRef))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionRegisterVirtualVoiceInputDevice_cold_3()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionRegisterVirtualVoiceInputDevice(MRExternalDeviceRef, MRVirtualVoiceInputDeviceDescriptorRef, __strong dispatch_queue_t, void (^__strong)(MRVirtualVoiceInputDeviceID, CFErrorRef))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionRegisterVirtualVoiceInputDevice_cold_4()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionRegisterVirtualVoiceInputDevice(MRExternalDeviceRef, MRVirtualVoiceInputDeviceDescriptorRef, __strong dispatch_queue_t, void (^__strong)(MRVirtualVoiceInputDeviceID, CFErrorRef))"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionSetVoiceRecordingStateCallback_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSetVoiceRecordingStateCallback(MRExternalDeviceRef, __strong dispatch_queue_t, __strong MRTelevisionRecordingStateCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionSetVoiceRecordingStateCallback_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionSetVoiceRecordingStateCallback(MRExternalDeviceRef, __strong dispatch_queue_t, __strong MRTelevisionRecordingStateCallback)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRTelevisionProcessVirtualVoiceInputAudioData_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionProcessVirtualVoiceInputAudioData(MRExternalDeviceRef, MRVirtualVoiceInputDeviceID, MRAudioBufferRef, MRAudioTime, float)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRTelevisionProcessVirtualVoiceInputAudioData_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRTelevisionProcessVirtualVoiceInputAudioData(MRExternalDeviceRef, MRVirtualVoiceInputDeviceID, MRAudioBufferRef, MRAudioTime, float)"}];
  [OUTLINED_FUNCTION_1_13(v0 v1];
}

void MRMediaRemoteValidateIncomingCommandOptions_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1A2860000, log, OS_LOG_TYPE_ERROR, "[MRRemoteControl] Command %{public}@ missing source position option(s): %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void MRAddPropertyListToXPCMessage_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1A2860000, v1, OS_LOG_TYPE_ERROR, "Error encoding to XPC message: %@ object: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void MRAddPlayerPathToXPCMessage_cold_1()
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRAddPlayerPathToXPCMessage(__strong xpc_object_t, MRNowPlayingPlayerPathRef)"}];
  v1 = objc_opt_class();
  [v2 handleFailureInFunction:v0 file:@"MRSerializationUtility.m" lineNumber:213 description:{@"Type mismatch, expecting %@ found %@", v1, objc_opt_class()}];
}

void MRCreatePropertyListFromXPCMessage_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "Error decoding XPC message: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void MRAddPlayerPathToUserInfo_cold_1()
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRAddPlayerPathToUserInfo(NSMutableDictionary *__strong, MRPlayerPath *__strong)"}];
  v1 = objc_opt_class();
  [v2 handleFailureInFunction:v0 file:@"MRSerializationUtility.m" lineNumber:724 description:{@"Type mismatch, expecting %@ found %@", v1, objc_opt_class()}];
}

void _MRDecodeObjectForKey_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "Decode Error: could not decode %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _MREncodeObjectForKey_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "Encode Error: could not encode %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void MRCreateDecodedUserInfo_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5(&dword_1A2860000, a1, a3, "Decode Error: could not decode %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void MRCreateDecodedUserInfo_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5(&dword_1A2860000, a1, a3, "Decode Error: could not decode %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void MRCreateDecodedUserInfo_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5(&dword_1A2860000, a1, a3, "Decode Error: could not decode %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __MRCreateEncodedUserInfo_block_invoke_11_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  v4 = 2114;
  v5 = v0;
  _os_log_debug_impl(&dword_1A2860000, v1, OS_LOG_TYPE_DEBUG, "Removing %{public}@ for key %{public}@ for notification user info", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void MediaExperienceLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaExperienceLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MRNowPlayingAudioFormatContentInfo.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void _MRCUPSShowSetupCodeCallback_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus _MRCUPSShowSetupCodeCallback(PairingFlags, char *, size_t, void *)"}];
  [v1 handleFailureInFunction:v0 file:@"MRCoreUtilsPairingSession.m" lineNumber:957 description:@"NULL context"];
}

void _MRCUPSHideSetupCodeCallback_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MRCUPSHideSetupCodeCallback(void *)"];
  [v1 handleFailureInFunction:v0 file:@"MRCoreUtilsPairingSession.m" lineNumber:968 description:@"NULL context"];
}

void _MRCUPSPromptForSetupCodeCallback_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus _MRCUPSPromptForSetupCodeCallback(PairingFlags, int32_t, void *)"}];
  [v1 handleFailureInFunction:v0 file:@"MRCoreUtilsPairingSession.m" lineNumber:975 description:@"NULL context"];
}

void __MRMediaRemotePlaybackSessionRequestWithResponse_block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 40);
  v7 = [MEMORY[0x1E695DF00] date];
  [v7 timeIntervalSinceDate:*(a1 + 48)];
  v10 = 138544130;
  v11 = @"playbackSession";
  v12 = 2114;
  v13 = v6;
  v14 = 2114;
  v15 = a2;
  v16 = 2048;
  v17 = v8;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v10, 0x2Au);

  v9 = *MEMORY[0x1E69E9840];
}

void __MRNowPlayingSessionManagerStartSession_block_invoke_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingSessionManagerStartSession(__strong dispatch_queue_t, void (^__strong)(MRPlayerPath *__strong))_block_invoke"}];
  [v1 handleFailureInFunction:v0 file:@"MRNowPlayingSessionManagerDataSource.m" lineNumber:65 description:@"Unbalanced calls to start/stop session: currentSessionPlayerPath should be nil when starting"];
}

void MRNowPlayingSessionManagerStopSession_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void MRNowPlayingSessionManagerStopSession(void)"];
  [v0 handleFailureInFunction:v1 file:@"MRNowPlayingSessionManagerDataSource.m" lineNumber:133 description:@"Unbalanced calls to start/stop session: currentSessionPlayerPath should not be nil when stopping"];
}

void MRMediaRemoteSetNowPlayingInfoForPlayer_cold_1(char a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = @"Replace";
  }

  else
  {
    v4 = @"Update";
  }

  v5 = MRMediaRemoteCopyReadableDictionaryDescription(a2);
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_1A2860000, a3, OS_LOG_TYPE_DEBUG, "[NowPlayingInfo] Attempting to set nowPlayingInfo with mergePolicy %@: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFBSDisplayLayoutMonitorConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MRFrontBoardServicesImports.h" lineNumber:18 description:{@"Unable to find class %s", "FBSDisplayLayoutMonitorConfiguration"}];

  __break(1u);
}

void FrontBoardServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FrontBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MRFrontBoardServicesImports.h" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

void __getFBSDisplayLayoutMonitorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFBSDisplayLayoutMonitorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MRFrontBoardServicesImports.h" lineNumber:17 description:{@"Unable to find class %s", "FBSDisplayLayoutMonitor"}];

  __break(1u);
}

void _MRRequestPlaybackQueue_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MRRequestPlaybackQueue(MRPlaybackQueueRequestRef, MRNowPlayingPlayerClientRequests *__strong, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _MRRequestPlaybackQueue_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MRRequestPlaybackQueue(MRPlaybackQueueRequestRef, MRNowPlayingPlayerClientRequests *__strong, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _MRRequestPlaybackQueue_cold_3()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MRRequestPlaybackQueue(MRPlaybackQueueRequestRef, MRNowPlayingPlayerClientRequests *__strong, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _MRResolveAndRequestPlaybackQueue_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MRResolveAndRequestPlaybackQueue(MRPlaybackQueueRequest *__strong, MRPlayerPath *__strong, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _MRResolveAndRequestPlaybackQueue_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MRResolveAndRequestPlaybackQueue(MRPlaybackQueueRequest *__strong, MRPlayerPath *__strong, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void __MRMediaRemoteRequestNowPlayingPlaybackQueueCapabilitiesForPlayer_block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = a1[6];
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:a1[7]];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteSetPlaybackQueue_block_invoke_cold_1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [a1 playerPath];
  v5 = 138412546;
  v6 = @"kMRPlayerPlaybackQueueChangedNotification";
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_1A2860000, a2, OS_LOG_TYPE_DEBUG, "Sending short-circuited notification %@ for %@", &v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

void __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_cold_1(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:a1[6]];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_143_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "[AVEndpoint] Error occurred while discovering group leader: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void MRPairedDeviceMerge_cold_1()
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRPairedDeviceMerge(MRPairedDeviceRef, MRPairedDeviceRef)"}];
  v1 = objc_opt_class();
  [v2 handleFailureInFunction:v0 file:@"MRPairedDevice.m" lineNumber:437 description:{@"Type mismatch, expecting %@ found %@", v1, objc_opt_class()}];
}

void MRPairedDeviceMerge_cold_2()
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRPairedDeviceMerge(MRPairedDeviceRef, MRPairedDeviceRef)"}];
  v1 = objc_opt_class();
  [v2 handleFailureInFunction:v0 file:@"MRPairedDevice.m" lineNumber:438 description:{@"Type mismatch, expecting %@ found %@", v1, objc_opt_class()}];
}

void _MRMediaRemoteLogUnsubscribedContentItems_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = MRContentItemsCopyMinimalReadableDescription(a2, 0);
  v7 = 138543618;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_1A2860000, a3, OS_LOG_TYPE_DEBUG, "Not sending contentItemChange for path %{public}@ %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void _MRReadNowPlayingInfoString_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void _MRReadNowPlayingInfoString_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1A2860000, a2, OS_LOG_TYPE_FAULT, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteRequestDeviceUID_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteRequestDeviceUID(__strong dispatch_queue_t, void (^__strong)(CFStringRef))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRMediaRemoteRequestDeviceUID_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteRequestDeviceUID(__strong dispatch_queue_t, void (^__strong)(CFStringRef))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _MRMediaRemoteGetDeviceUIDWithRetryIntervals_cold_2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 134217984;
  v5 = [a1 count];
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "[GetDeviceUIDWithRetry] Unable to fetch required deviceUID after %lu retries", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteRequestIsGroupLeader_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteRequestIsGroupLeader(__strong dispatch_queue_t, void (^__strong)(_Bool))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRMediaRemoteRequestIsGroupLeader_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteRequestIsGroupLeader(__strong dispatch_queue_t, void (^__strong)(_Bool))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRMediaRemoteCopyLocalAirPlaySenderDefaultGroupIdentity_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"OSStatus soft_APSCopyDefaultGroupUUID(CFStringRef *)"];
  [v0 handleFailureInFunction:v1 file:@"MRUtility.m" lineNumber:58 description:{@"%s", dlerror()}];

  __break(1u);
}

void AirPlaySupportLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AirPlaySupportLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MRUtility.m" lineNumber:57 description:{@"%s", *a1}];

  __break(1u);
}

void MRIsObjectOfClass_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL MRIsObjectOfClass(NSObject *__strong, __unsafe_unretained Class)"}];
  [v4 handleFailureInFunction:v3 file:@"MRUtility.m" lineNumber:1736 description:{@"Type mismatch, expecting %@ found %@", a2, objc_opt_class()}];
}

void soft_APSParseGroupID_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus soft_APSParseGroupID(CFStringRef, CFStringRef *, CFStringRef *, CFStringRef *, CFStringRef *)"}];
  [v0 handleFailureInFunction:v1 file:@"MRUtility.m" lineNumber:70 description:{@"%s", dlerror()}];

  __break(1u);
}

void MRNowPlayingClientCreateExternalRepresentation_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFDataRef MRNowPlayingClientCreateExternalRepresentation(MRNowPlayingClientRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientCopy_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRNowPlayingClientRef MRNowPlayingClientCopy(MRNowPlayingClientRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientGetProcessIdentifier_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"pid_t MRNowPlayingClientGetProcessIdentifier(MRNowPlayingClientRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientCreateSkeletonFrom_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRNowPlayingClientRef MRNowPlayingClientCreateSkeletonFrom(MRNowPlayingClientRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientSetProcessIdentifier_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingClientSetProcessIdentifier(MRNowPlayingClientRef, pid_t)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientGetBundleIdentifier_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef MRNowPlayingClientGetBundleIdentifier(MRNowPlayingClientRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientSetBundleIdentifier_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingClientSetBundleIdentifier(MRNowPlayingClientRef, CFStringRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientGetParentAppBundleIdentifier_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef MRNowPlayingClientGetParentAppBundleIdentifier(MRNowPlayingClientRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientSetParentAppBundleIdentifier_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingClientSetParentAppBundleIdentifier(MRNowPlayingClientRef, CFStringRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientGetUserIdentifier_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uid_t MRNowPlayingClientGetUserIdentifier(MRNowPlayingClientRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientSetUserIdentifier_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingClientSetUserIdentifier(MRNowPlayingClientRef, uid_t)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientGetNowPlayingVisibility_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRNowPlayingClientVisibility MRNowPlayingClientGetNowPlayingVisibility(MRNowPlayingClientRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientSetNowPlayingVisibility_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingClientSetNowPlayingVisibility(MRNowPlayingClientRef, MRNowPlayingClientVisibility)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientGetTintColor_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRColor MRNowPlayingClientGetTintColor(MRNowPlayingClientRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientSetTintColor_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingClientSetTintColor(MRNowPlayingClientRef, MRColor)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientCopyBundleIdentifierHierarchy_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFArrayRef MRNowPlayingClientCopyBundleIdentifierHierarchy(MRNowPlayingClientRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientCopyBundleIdentifierExtendedHierarchy_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFArrayRef MRNowPlayingClientCopyBundleIdentifierExtendedHierarchy(MRNowPlayingClientRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientAppendBundleIdentifier_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingClientAppendBundleIdentifier(MRNowPlayingClientRef, CFStringRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientGetHasAuxillaryProperties_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRNowPlayingClientGetHasAuxillaryProperties(MRNowPlayingClientRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientEqualToClient_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean MRNowPlayingClientEqualToClient(MRNowPlayingClientRef, MRNowPlayingClientRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientEqualToClient_cold_2()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean MRNowPlayingClientEqualToClient(MRNowPlayingClientRef, MRNowPlayingClientRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientMerge_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingClientMerge(MRNowPlayingClientRef, MRNowPlayingClientRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingClientMerge_cold_2()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingClientMerge(MRNowPlayingClientRef, MRNowPlayingClientRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerCopy_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRNowPlayingPlayerRef MRNowPlayingPlayerCopy(MRNowPlayingPlayerRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerCreateSkeletonFrom_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRNowPlayingPlayerRef MRNowPlayingPlayerCreateSkeletonFrom(MRNowPlayingClientRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerSetIdentifier_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingPlayerSetIdentifier(MRNowPlayingPlayerRef, CFStringRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerSetDisplayName_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingPlayerSetDisplayName(MRNowPlayingPlayerRef, CFStringRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerSetAudioSessionType_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingPlayerSetAudioSessionType(MRNowPlayingPlayerRef, MRNowPlayingPlayerAudioSessionType)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerGetIdentifier_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef MRNowPlayingPlayerGetIdentifier(MRNowPlayingPlayerRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerGetDisplayName_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef MRNowPlayingPlayerGetDisplayName(MRNowPlayingPlayerRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerGetAudioSessionType_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRNowPlayingPlayerAudioSessionType MRNowPlayingPlayerGetAudioSessionType(MRNowPlayingPlayerRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerGetHasAuxillaryProperties_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRNowPlayingPlayerGetHasAuxillaryProperties(MRNowPlayingPlayerRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerEqualToPlayer_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean MRNowPlayingPlayerEqualToPlayer(MRNowPlayingPlayerRef, MRNowPlayingPlayerRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerEqualToPlayer_cold_2()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean MRNowPlayingPlayerEqualToPlayer(MRNowPlayingPlayerRef, MRNowPlayingPlayerRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerMerge_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingPlayerMerge(MRNowPlayingPlayerRef, MRNowPlayingPlayerRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerMerge_cold_2()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingPlayerMerge(MRNowPlayingPlayerRef, MRNowPlayingPlayerRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathCopy_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRNowPlayingPlayerPathRef MRNowPlayingPlayerPathCopy(MRNowPlayingPlayerPathRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathCreateSkeletonFrom_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRNowPlayingPlayerPathRef MRNowPlayingPlayerPathCreateSkeletonFrom(MRNowPlayingPlayerPathRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathGetOrigin_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MROriginRef MRNowPlayingPlayerPathGetOrigin(MRNowPlayingPlayerPathRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathGetClient_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRNowPlayingClientRef MRNowPlayingPlayerPathGetClient(MRNowPlayingPlayerPathRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathGetPlayer_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRNowPlayingPlayerRef MRNowPlayingPlayerPathGetPlayer(MRNowPlayingPlayerPathRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathSetOrigin_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingPlayerPathSetOrigin(MRNowPlayingPlayerPathRef, MROriginRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathSetOrigin_cold_2()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingPlayerPathSetOrigin(MRNowPlayingPlayerPathRef, MROriginRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathSetClient_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingPlayerPathSetClient(MRNowPlayingPlayerPathRef, MRNowPlayingClientRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathSetClient_cold_2()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingPlayerPathSetClient(MRNowPlayingPlayerPathRef, MRNowPlayingClientRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathSetPlayer_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingPlayerPathSetPlayer(MRNowPlayingPlayerPathRef, MRNowPlayingPlayerRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathSetPlayer_cold_2()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRNowPlayingPlayerPathSetPlayer(MRNowPlayingPlayerPathRef, MRNowPlayingPlayerRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathCreateExternalRepresentation_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFDataRef MRNowPlayingPlayerPathCreateExternalRepresentation(MRNowPlayingPlayerPathRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathEqualToPlayerPath_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean MRNowPlayingPlayerPathEqualToPlayerPath(MRNowPlayingPlayerPathRef, MRNowPlayingPlayerPathRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathEqualToPlayerPath_cold_2()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean MRNowPlayingPlayerPathEqualToPlayerPath(MRNowPlayingPlayerPathRef, MRNowPlayingPlayerPathRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathClientEqualToPlayerPathClient_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_Bool MRNowPlayingPlayerPathClientEqualToPlayerPathClient(MRNowPlayingPlayerPathRef, MRNowPlayingPlayerPathRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathClientEqualToPlayerPathClient_cold_2()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_Bool MRNowPlayingPlayerPathClientEqualToPlayerPathClient(MRNowPlayingPlayerPathRef, MRNowPlayingPlayerPathRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathGetIsResolved_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRNowPlayingPlayerPathGetIsResolved(MRNowPlayingPlayerPathRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathIsLocal_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRNowPlayingPlayerPathIsLocal(MRNowPlayingPlayerPathRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRMediaRemoteNowPlayingGetResolvedPlayerPathIsLocal_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteNowPlayingGetResolvedPlayerPathIsLocal(MRNowPlayingPlayerPathRef, __strong dispatch_queue_t, void (^__strong)(MRNowPlayingPlayerPathRef, _Bool))"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRMediaRemoteNowPlayingGetResolvedPlayerPathIsLocal_cold_2()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteNowPlayingGetResolvedPlayerPathIsLocal(MRNowPlayingPlayerPathRef, __strong dispatch_queue_t, void (^__strong)(MRNowPlayingPlayerPathRef, _Bool))"}];
  [v1 handleFailureInFunction:v0 file:@"MRNowPlayingPlayerPath.m" lineNumber:517 description:@"NULL playerPath cannot be 'resolved'"];
}

void MRMediaRemoteNowPlayingGetResolvedPlayerPathIsLocalSync_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_Bool MRMediaRemoteNowPlayingGetResolvedPlayerPathIsLocalSync(MRNowPlayingPlayerPathRef, MRNowPlayingPlayerPathRef *)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRMediaRemoteNowPlayingPlayerPathCreateError_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFErrorRef MRMediaRemoteNowPlayingPlayerPathCreateError(MRNowPlayingPlayerPathRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathCopyStringRepresentation_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef MRNowPlayingPlayerPathCopyStringRepresentation(MRNowPlayingPlayerRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRNowPlayingPlayerPathResolveExternalDevicePlayerPath_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MRNowPlayingPlayerPathRef MRNowPlayingPlayerPathResolveExternalDevicePlayerPath(MRNowPlayingPlayerPathRef, MROriginRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRMediaRemoteApplicationSupportsBrowsableContent_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Boolean MRMediaRemoteApplicationSupportsBrowsableContent(CFStringRef)"];
  [v1 handleFailureInFunction:v0 file:@"MRBrowsableContent.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"bundleID"}];
}

void __MRMediaRemoteGetContentItemsForIdentifiers_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:*(v0 + 56)];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void MRExternalDeviceCopyUniqueIdentifier_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef MRExternalDeviceCopyUniqueIdentifier(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceCopyName_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef MRExternalDeviceCopyName(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceCopyHostName_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef MRExternalDeviceCopyHostName(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceCopySystemBuildVersion_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef MRExternalDeviceCopySystemBuildVersion(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceGetNetworkPort_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int64_t MRExternalDeviceGetNetworkPort(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceCopyDeviceInfo_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRPairedDeviceRef MRExternalDeviceCopyDeviceInfo(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceSetNameCallback_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDeviceSetNameCallback(MRExternalDeviceRef, __strong dispatch_queue_t, __strong MRExternalDeviceNameCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceCopyCustomOrigin_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MROriginRef MRExternalDeviceCopyCustomOrigin(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceSetWantsNowPlayingUpdates_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDeviceSetWantsNowPlayingUpdates(MRExternalDeviceRef, _Bool)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceSetWantsNowPlayingArtworkUpdates_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDeviceSetWantsNowPlayingArtworkUpdates(MRExternalDeviceRef, _Bool)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceSetWantsVolumeUpdates_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDeviceSetWantsVolumeUpdates(MRExternalDeviceRef, _Bool)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceSetWantsOutputDeviceUpdates_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDeviceSetWantsOutputDeviceUpdates(MRExternalDeviceRef, _Bool)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceGetOutputDeviceUIDVolume_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDeviceGetOutputDeviceUIDVolume(MRExternalDeviceRef, CFStringRef, __strong dispatch_queue_t, __strong MRExternalDeviceGetVolumeCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceSetOutputDeviceUIDVolume_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDeviceSetOutputDeviceUIDVolume(MRExternalDeviceRef, CFStringRef, float, __strong dispatch_queue_t, __strong MRExternalDeviceSetVolumeCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceSetVolumeChangedCallback_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDeviceSetVolumeChangedCallback(MRExternalDeviceRef, __strong dispatch_queue_t, __strong MRExternalDeviceVolumeCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceSendButtonEvent_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDeviceSendButtonEvent(MRExternalDeviceRef, MRHIDButtonEvent)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceIsConnected_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRExternalDeviceIsConnected(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceConnect_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void MRExternalDeviceConnect(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceConnectEx_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDeviceConnectEx(MRExternalDeviceRef, MRExternalDeviceConnectOptions)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceDisconnect_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void MRExternalDeviceDisconnect(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceGetConnectionState_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRExternalDeviceConnectionState MRExternalDeviceGetConnectionState(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceSetConnectionStateCallback_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDeviceSetConnectionStateCallback(MRExternalDeviceRef, __strong dispatch_queue_t, __strong MRExternalDeviceConnectionStateCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceSetPairingCallback_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDeviceSetPairingCallback(MRExternalDeviceRef, __strong dispatch_queue_t, __strong MRExternalDevicePairingCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceIsPairingAllowed_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRExternalDeviceIsPairingAllowed(MRExternalDeviceRef)"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceSetPairingAllowedCallback_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDeviceSetPairingAllowedCallback(MRExternalDeviceRef, __strong dispatch_queue_t, __strong MRExternalDevicePairingAllowedCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceGetPairedDevices_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void MRExternalDeviceGetPairedDevices(void (^__strong)(CFArrayRef))"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceDeletePairedDevice_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void MRExternalDeviceDeletePairedDevice(CFStringRef)"];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceRequestOutputContextModification_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDeviceRequestOutputContextModification(MRExternalDeviceRef, MRAVOutputContextType, CFArrayRef, CFArrayRef, CFArrayRef, __strong dispatch_queue_t, void (^__strong)(CFErrorRef))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceSetCustomDataCallback_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDeviceSetCustomDataCallback(MRExternalDeviceRef, __strong dispatch_queue_t, __strong MRExternalDeviceCustomDataCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceSendCustomData_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDeviceSendCustomData(MRExternalDeviceRef, CFStringRef, CFDataRef)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceSendCustomData_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDeviceSendCustomData(MRExternalDeviceRef, CFStringRef, CFDataRef)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDeviceSendCustomData_cold_3()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDeviceSendCustomData(MRExternalDeviceRef, CFStringRef, CFDataRef)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDevicePing_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDevicePing(MRExternalDeviceRef, CFTimeInterval, __strong dispatch_queue_t, __strong MRExternalDevicePingCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRExternalDevicePing_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRExternalDevicePing(MRExternalDeviceRef, CFTimeInterval, __strong dispatch_queue_t, __strong MRExternalDevicePingCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void __getPLLogRegisteredEventSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PowerLogLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MRPowerLogger.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void MRDeviceSupportsSystemAperture_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL soft_SBSIsSystemApertureAvailable(void)"];
  [v0 handleFailureInFunction:v1 file:@"MRUIControllers.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getSBSIsSystemApertureAvailableSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MRUIControllers.m" lineNumber:30 description:{@"%s", *a1}];

  __break(1u);
}

void getAVSystemController_ServerConnectionDiedNotification_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_ServerConnectionDiedNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"MRNowPlayingOriginClient.m" lineNumber:33 description:{@"%s", dlerror()}];

  __break(1u);
}

void getAVSystemController_SubscribeToNotificationsAttribute_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_SubscribeToNotificationsAttribute(void)"];
  [v0 handleFailureInFunction:v1 file:@"MRNowPlayingOriginClient.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getAVSystemControllerClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVSystemControllerClass(void)_block_invoke"];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];

  __break(1u);
}

void MediaExperienceLibrary_cold_1_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaExperienceLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MRNowPlayingOriginClient.m" lineNumber:26 description:{@"%s", *a1}];

  __break(1u);
}

void MRContentItemSetTitle_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetTitle(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetSubtitle_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetSubtitle(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetClassicalWork_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetClassicalWork(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetAlbumName_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetAlbumName(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetAlbumYear_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetAlbumYear(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetTrackArtistName_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetTrackArtistName(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetAlbumArtistName_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetAlbumArtistName(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetSeriesName_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetSeriesName(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetDirectorName_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetDirectorName(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetComposer_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetComposer(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetGenre_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetGenre(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetLocalizedContentRating_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetLocalizedContentRating(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetLocalizedDurationString_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetLocalizedDurationString(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetDurationStringLocalizationKey_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetDurationStringLocalizationKey(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetArtworkIdentifier_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetArtworkIdentifier(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetArtworkMIMEType_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetArtworkMIMEType(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetRadioStationName_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetRadioStationName(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetRadioStationString_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetRadioStationString(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetCollectionIdentifier_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetCollectionIdentifier(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetContentIdentifier_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetContentIdentifier(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetServiceIdentifier_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetServiceIdentifier(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetProfileIdentifier_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetProfileIdentifier(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemSetBrandIdentifier_cold_1()
{
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_25() stringWithUTF8String:{"void MRContentItemSetBrandIdentifier(MRContentItemRef, CFStringRef)"}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_12();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRContentItemCreate_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MRContentItemRef MRContentItemCreate(CFAllocatorRef, CFStringRef)"}];
  [v1 handleFailureInFunction:v0 file:@"MRContentItem_Deprecated.m" lineNumber:1383 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

void MRContentItemMerge_cold_1(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRContentItemMerge(MRContentItemRef, MRContentItemRef)"}];
  [v5 handleFailureInFunction:v4 file:@"MRContentItem_Deprecated.m" lineNumber:1560 description:{@"Trying to Merge incompatible ContentItems %@ != %@", a1, a2}];
}

void MRContentItemMerge_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1A2860000, a2, OS_LOG_TYPE_DEBUG, "Attempting to Merge a ContentItem with itself %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void MRPlaybackQueueRequestCopy_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRPlaybackQueueRequestRef MRPlaybackQueueRequestCopy(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestCopyWithRange_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MRPlaybackQueueRequestRef MRPlaybackQueueRequestCopyWithRange(MRPlaybackQueueRequestRef, CFRange)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestCopyWithCurrentState_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MRPlaybackQueueRequestRef MRPlaybackQueueRequestCopyWithCurrentState(MRPlaybackQueueRequestRef, CFRange, CFArrayRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestCreateMergedRequest_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MRPlaybackQueueRequestRef MRPlaybackQueueRequestCreateMergedRequest(MRPlaybackQueueRequestRef, MRPlaybackQueueRequestRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestSetIncludeInfo_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRPlaybackQueueRequestSetIncludeInfo(MRPlaybackQueueRequestRef, _Bool)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestSetIncludeAlignments_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRPlaybackQueueRequestSetIncludeAlignments(MRPlaybackQueueRequestRef, _Bool)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestSetIncludeLanguageOptions_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRPlaybackQueueRequestSetIncludeLanguageOptions(MRPlaybackQueueRequestRef, _Bool)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestSetIncludeArtwork_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRPlaybackQueueRequestSetIncludeArtwork(MRPlaybackQueueRequestRef, double, double)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestGetRequestID_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef MRPlaybackQueueRequestGetRequestID(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestSetRequestID_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRPlaybackQueueRequestSetRequestID(MRPlaybackQueueRequestRef, CFStringRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestCopyDescription_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef MRPlaybackQueueRequestCopyDescription(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestSetLabel_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRPlaybackQueueRequestSetLabel(MRPlaybackQueueRequestRef, CFStringRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestGetLabel_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef MRPlaybackQueueRequestGetLabel(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestGetRequestedIdentifiers_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFArrayRef MRPlaybackQueueRequestGetRequestedIdentifiers(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestGetRange_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFRange MRPlaybackQueueRequestGetRange(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestRangeContainsNowPlayingItem_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRPlaybackQueueRequestRangeContainsNowPlayingItem(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestGetIncludeMetadata_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRPlaybackQueueRequestGetIncludeMetadata(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestGetIncludeLyrics_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRPlaybackQueueRequestGetIncludeLyrics(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestGetIncludeSections_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRPlaybackQueueRequestGetIncludeSections(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestGetIncludeInfo_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRPlaybackQueueRequestGetIncludeInfo(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestGetIncludeLanguageOptions_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRPlaybackQueueRequestGetIncludeLanguageOptions(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestGetIncludeArtwork_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRPlaybackQueueRequestGetIncludeArtwork(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestGetArtworkWidth_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"double MRPlaybackQueueRequestGetArtworkWidth(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestGetArtworkHeight_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"double MRPlaybackQueueRequestGetArtworkHeight(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestShouldRequestItem_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRPlaybackQueueRequestShouldRequestItem(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestShouldRequestItemNotConsideringMetadata_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRPlaybackQueueRequestShouldRequestItemNotConsideringMetadata(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestContainsNonDefaultAssets_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRPlaybackQueueRequestContainsNonDefaultAssets(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestCreateSkeletonFrom_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRPlaybackQueueRequestRef MRPlaybackQueueRequestCreateSkeletonFrom(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestCreateExternalRepresentation_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFDataRef MRPlaybackQueueRequestCreateExternalRepresentation(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestHasRange_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRPlaybackQueueRequestHasRange(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestMerge_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRPlaybackQueueRequestMerge(MRPlaybackQueueRequestRef, MRPlaybackQueueRequestRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestMerge_cold_2()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRPlaybackQueueRequestMerge(MRPlaybackQueueRequestRef, MRPlaybackQueueRequestRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestMatch_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL MRPlaybackQueueRequestMatch(MRPlaybackQueueRequestRef, MRPlaybackQueueRequestRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestMatch_cold_2()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL MRPlaybackQueueRequestMatch(MRPlaybackQueueRequestRef, MRPlaybackQueueRequestRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestIsExactMatch_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL MRPlaybackQueueRequestIsExactMatch(MRPlaybackQueueRequestRef, MRPlaybackQueueRequestRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestIsExactMatch_cold_2()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL MRPlaybackQueueRequestIsExactMatch(MRPlaybackQueueRequestRef, MRPlaybackQueueRequestRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestSetIsLegacyNowPlayingInfoRequest_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRPlaybackQueueRequestSetIsLegacyNowPlayingInfoRequest(MRPlaybackQueueRequestRef, _Bool)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestGetIsLegacyNowPlayingInfoRequest_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool MRPlaybackQueueRequestGetIsLegacyNowPlayingInfoRequest(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRPlaybackQueueRequestCreateAssetsFrom_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRPlaybackQueueRequestRef MRPlaybackQueueRequestCreateAssetsFrom(MRPlaybackQueueRequestRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRGroupSessionTokenCreateWithInvitationData_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MRGroupSessionToken * _Nonnull MRGroupSessionTokenCreateWithInvitationData(NSData *__strong _Nonnull, NSString * _Nullable __strong, NSNumber *__strong _Nonnull)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRGroupSessionJoinSessionWithToken_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRGroupSessionJoinSessionWithToken(MRGroupSessionToken *__strong _Nonnull, void (^__strong _Nonnull)(NSString *__strong, NSError * _Nullable __strong))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void __MRGroupSessionJoinSessionWithToken_block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_1_24();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void MRGroupSessionLeaveSessionWithIdentifier_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRGroupSessionLeaveSessionWithIdentifier(NSString *__strong _Nonnull, void (^__strong _Nonnull)(NSError * _Nullable __strong))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onClientQueue_MRInvokeClientCallback_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onClientQueue_MRInvokeClientCallback(MRNowPlayingPlayerClient *__strong, __strong MRPlaybackQueueDataSourceContentItemAssetCallback, MRPlaybackQueueRequest *__strong, MRContentItem *__strong, __strong dispatch_queue_t, void (^__strong)(NSError *__strong))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onClientQueue_MRInvokeClientCallback_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onClientQueue_MRInvokeClientCallback(MRNowPlayingPlayerClient *__strong, __strong MRPlaybackQueueDataSourceContentItemAssetCallback, MRPlaybackQueueRequest *__strong, MRContentItem *__strong, __strong dispatch_queue_t, void (^__strong)(NSError *__strong))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onClientQueue_MRInvokeClientCallback_cold_3()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onClientQueue_MRInvokeClientCallback(MRNowPlayingPlayerClient *__strong, __strong MRPlaybackQueueDataSourceContentItemAssetCallback, MRPlaybackQueueRequest *__strong, MRContentItem *__strong, __strong dispatch_queue_t, void (^__strong)(NSError *__strong))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onClientQueue_MRInvokeClientCallback_cold_4()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onClientQueue_MRInvokeClientCallback(MRNowPlayingPlayerClient *__strong, __strong MRPlaybackQueueDataSourceContentItemAssetCallback, MRPlaybackQueueRequest *__strong, MRContentItem *__strong, __strong dispatch_queue_t, void (^__strong)(NSError *__strong))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onClientQueue_MRInvokeClientCallback_cold_5()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onClientQueue_MRInvokeClientCallback(MRNowPlayingPlayerClient *__strong, __strong MRPlaybackQueueDataSourceContentItemAssetCallback, MRPlaybackQueueRequest *__strong, MRContentItem *__strong, __strong dispatch_queue_t, void (^__strong)(NSError *__strong))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onClientQueue_MRInvokeClientCallback_cold_6()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onClientQueue_MRInvokeClientCallback(MRNowPlayingPlayerClient *__strong, __strong MRPlaybackQueueDataSourceContentItemAssetCallback, MRPlaybackQueueRequest *__strong, MRContentItem *__strong, __strong dispatch_queue_t, void (^__strong)(NSError *__strong))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onQueue_MRInvokeClientCallbacks_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onQueue_MRInvokeClientCallbacks(MRNowPlayingPlayerClient *__strong, NSArray<MSVCallback *> *__strong, MRPlaybackQueueRequest *__strong, MRContentItem *__strong, _Bool, NSString *__strong, __strong dispatch_queue_t, void (^__strong)(NSError *__strong))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onQueue_MRInvokeClientCallbacks_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onQueue_MRInvokeClientCallbacks(MRNowPlayingPlayerClient *__strong, NSArray<MSVCallback *> *__strong, MRPlaybackQueueRequest *__strong, MRContentItem *__strong, _Bool, NSString *__strong, __strong dispatch_queue_t, void (^__strong)(NSError *__strong))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onQueue_MRInvokeClientCallbacks_cold_3()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onQueue_MRInvokeClientCallbacks(MRNowPlayingPlayerClient *__strong, NSArray<MSVCallback *> *__strong, MRPlaybackQueueRequest *__strong, MRContentItem *__strong, _Bool, NSString *__strong, __strong dispatch_queue_t, void (^__strong)(NSError *__strong))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onQueue_MRInvokeClientCallbacks_cold_4()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onQueue_MRInvokeClientCallbacks(MRNowPlayingPlayerClient *__strong, NSArray<MSVCallback *> *__strong, MRPlaybackQueueRequest *__strong, MRContentItem *__strong, _Bool, NSString *__strong, __strong dispatch_queue_t, void (^__strong)(NSError *__strong))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onQueue_MRInvokeClientCallbacks_cold_5()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onQueue_MRInvokeClientCallbacks(MRNowPlayingPlayerClient *__strong, NSArray<MSVCallback *> *__strong, MRPlaybackQueueRequest *__strong, MRContentItem *__strong, _Bool, NSString *__strong, __strong dispatch_queue_t, void (^__strong)(NSError *__strong))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onQueue_MRInvokeClientCallbacks_cold_6(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = MRContentItemCopyMinimalReadableDescription(a2);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_4_11();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void _onQueue_MRInvokeClientAssetCallbacks_cold_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onQueue_MRInvokeClientAssetCallbacks(MRNowPlayingPlayerClient *__strong, MRPlaybackQueueRequest *__strong, MRContentItem *__strong, __strong dispatch_queue_t, void (^__strong)(NSArray<NSError *> *__strong))"}];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void _onQueue_MRInvokeClientAssetCallbacks_cold_3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onQueue_MRInvokeClientAssetCallbacks(MRNowPlayingPlayerClient *__strong, MRPlaybackQueueRequest *__strong, MRContentItem *__strong, __strong dispatch_queue_t, void (^__strong)(NSArray<NSError *> *__strong))"}];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void _onQueue_MRInvokeClientAssetCallbacks_cold_4()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onQueue_MRInvokeClientAssetCallbacks(MRNowPlayingPlayerClient *__strong, MRPlaybackQueueRequest *__strong, MRContentItem *__strong, __strong dispatch_queue_t, void (^__strong)(NSArray<NSError *> *__strong))"}];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void _onClientQueue_MRCreateSectionsForRequest_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<MRContentItem *> *_onClientQueue_MRCreateSectionsForRequest(MRNowPlayingPlayerClient *__strong, __strong MRPlaybackQueueDataSourceCreateChildContentItemCallback, MRPlaybackQueueRequest *__strong, MRContentItem *__strong)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onClientQueue_MRCreateSectionsForRequest_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<MRContentItem *> *_onClientQueue_MRCreateSectionsForRequest(MRNowPlayingPlayerClient *__strong, __strong MRPlaybackQueueDataSourceCreateChildContentItemCallback, MRPlaybackQueueRequest *__strong, MRContentItem *__strong)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onClientQueue_MRCreateSectionsForRequest_cold_3()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<MRContentItem *> *_onClientQueue_MRCreateSectionsForRequest(MRNowPlayingPlayerClient *__strong, __strong MRPlaybackQueueDataSourceCreateChildContentItemCallback, MRPlaybackQueueRequest *__strong, MRContentItem *__strong)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onClientQueue_MRCreateSectionsForRequest_cold_4()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<MRContentItem *> *_onClientQueue_MRCreateSectionsForRequest(MRNowPlayingPlayerClient *__strong, __strong MRPlaybackQueueDataSourceCreateChildContentItemCallback, MRPlaybackQueueRequest *__strong, MRContentItem *__strong)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onQueue_MRCreateSectionsForRequest_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<MRContentItem *> *_onQueue_MRCreateSectionsForRequest(MRNowPlayingPlayerClient *__strong, NSArray<MSVCallback *> *__strong, MRPlaybackQueueRequest *__strong, MRContentItem *__strong)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onQueue_MRCreateSectionsForRequest_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<MRContentItem *> *_onQueue_MRCreateSectionsForRequest(MRNowPlayingPlayerClient *__strong, NSArray<MSVCallback *> *__strong, MRPlaybackQueueRequest *__strong, MRContentItem *__strong)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onQueue_MRCreateSectionsForRequest_cold_3()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<MRContentItem *> *_onQueue_MRCreateSectionsForRequest(MRNowPlayingPlayerClient *__strong, NSArray<MSVCallback *> *__strong, MRPlaybackQueueRequest *__strong, MRContentItem *__strong)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onQueue_MRCreatePlaybackQueueForRequest_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MRPlaybackQueue *_onQueue_MRCreatePlaybackQueueForRequest(MRPlaybackQueueRequest *__strong, NSArray<MSVCallback *> *__strong)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onClientQueue_MRCreatePlaybackQueueForOffset_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MRPlaybackQueue *_onClientQueue_MRCreatePlaybackQueueForOffset(NSRange, __strong MRPlaybackQueueDataSourceCreateContentItemCallback)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onQueue_MRCreatePlaybackQueueForOffset_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MRPlaybackQueue *_onQueue_MRCreatePlaybackQueueForOffset(MRPlaybackQueueRequest *__strong, NSArray<MSVCallback *> *__strong)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onQueue_MRCreatePlaybackQueueForIdentifier_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MRPlaybackQueue *_onQueue_MRCreatePlaybackQueueForIdentifier(MRPlaybackQueueRequest *__strong, NSArray<MSVCallback *> *__strong)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onQueue_MRLoadContentItemAssets_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onQueue_MRLoadContentItemAssets(MRNowPlayingPlayerClient *__strong, MRPlaybackQueueRequest *__strong, NSArray<id> *__strong, __strong dispatch_queue_t, void (^__strong)(NSError *__strong))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onQueue_MRLoadContentItemAssets_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onQueue_MRLoadContentItemAssets(MRNowPlayingPlayerClient *__strong, MRPlaybackQueueRequest *__strong, NSArray<id> *__strong, __strong dispatch_queue_t, void (^__strong)(NSError *__strong))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _MRLoadContentItemAssets_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MRLoadContentItemAssets(MRNowPlayingPlayerClient *__strong, MRPlaybackQueueRequest *__strong, MRPlaybackQueue *__strong, __strong dispatch_queue_t, void (^__strong)(NSError *__strong))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _MRLoadContentItemAssets_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MRLoadContentItemAssets(MRNowPlayingPlayerClient *__strong, MRPlaybackQueueRequest *__strong, MRPlaybackQueue *__strong, __strong dispatch_queue_t, void (^__strong)(NSError *__strong))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _MRLoadContentItemAssets_cold_3()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MRLoadContentItemAssets(MRNowPlayingPlayerClient *__strong, MRPlaybackQueueRequest *__strong, MRPlaybackQueue *__strong, __strong dispatch_queue_t, void (^__strong)(NSError *__strong))"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onQueue_MRHandlePlaybackQueueRequest_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onQueue_MRHandlePlaybackQueueRequest(MRNowPlayingPlayerClient *__strong, MRPlayerPath *__strong, MRPlaybackQueueRequest *__strong, __strong dispatch_queue_t, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onQueue_MRHandlePlaybackQueueRequest_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onQueue_MRHandlePlaybackQueueRequest(MRNowPlayingPlayerClient *__strong, MRPlayerPath *__strong, MRPlaybackQueueRequest *__strong, __strong dispatch_queue_t, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onQueue_MRHandlePlaybackQueueRequest_cold_3()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onQueue_MRHandlePlaybackQueueRequest(MRNowPlayingPlayerClient *__strong, MRPlayerPath *__strong, MRPlaybackQueueRequest *__strong, __strong dispatch_queue_t, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _onQueue_MRHandlePlaybackQueueRequest_cold_4()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _onQueue_MRHandlePlaybackQueueRequest(MRNowPlayingPlayerClient *__strong, MRPlayerPath *__strong, MRPlaybackQueueRequest *__strong, __strong dispatch_queue_t, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [v1 handleFailureInFunction:v0 file:@"MRPlaybackQueueServiceClient.m" lineNumber:477 description:@"Attempting to use unresolved Player Path"];
}

void _MRHandlePlaybackQueueRequest_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MRHandlePlaybackQueueRequest(MRPlayerPath *__strong, MRPlaybackQueueRequest *__strong, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _MRHandlePlaybackQueueRequest_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MRHandlePlaybackQueueRequest(MRPlayerPath *__strong, MRPlaybackQueueRequest *__strong, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _MRHandlePlaybackQueueRequest_cold_3()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MRHandlePlaybackQueueRequest(MRPlayerPath *__strong, MRPlaybackQueueRequest *__strong, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void _MRHandlePlaybackQueueRequest_cold_4()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MRHandlePlaybackQueueRequest(MRPlayerPath *__strong, MRPlaybackQueueRequest *__strong, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [v1 handleFailureInFunction:v0 file:@"MRPlaybackQueueServiceClient.m" lineNumber:520 description:@"Attempting to use unresolved Player Path"];
}

void _MREnqueueAndHandlePlaybackQueueRequest_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MREnqueueAndHandlePlaybackQueueRequest(MRPlayerPath *__strong, MRPlaybackQueueRequest *__strong, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void _MREnqueueAndHandlePlaybackQueueRequest_cold_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MREnqueueAndHandlePlaybackQueueRequest(MRPlayerPath *__strong, MRPlaybackQueueRequest *__strong, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void _MREnqueueAndHandlePlaybackQueueRequest_cold_3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MREnqueueAndHandlePlaybackQueueRequest(MRPlayerPath *__strong, MRPlaybackQueueRequest *__strong, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void _MREnqueueAndHandlePlaybackQueueRequest_cold_4()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MREnqueueAndHandlePlaybackQueueRequest(MRPlayerPath *__strong, MRPlaybackQueueRequest *__strong, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [v0 handleFailureInFunction:v1 file:@"MRPlaybackQueueServiceClient.m" lineNumber:589 description:@"Attempting to use unresolved Player Path"];
}

void MRServiceClientPlaybackQueueRequestCallback_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRServiceClientPlaybackQueueRequestCallback(MRPlayerPath *__strong, MRPlaybackQueueRequest *__strong, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRServiceClientPlaybackQueueRequestCallback_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRServiceClientPlaybackQueueRequestCallback(MRPlayerPath *__strong, MRPlaybackQueueRequest *__strong, __strong _MRPlaybackQueueRequestCallbackCompletion)"}];
  [OUTLINED_FUNCTION_3(v0 v1];
}

void MRDiagnosticCreate_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MRDiagnosticRef MRDiagnosticCreate(CFDateRef, CFStringRef)"}];
  [v1 handleFailureInFunction:v0 file:@"MRDiagnostic.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"date"}];
}

void MRDiagnosticCreate_cold_2()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MRDiagnosticRef MRDiagnosticCreate(CFDateRef, CFStringRef)"}];
  [v1 handleFailureInFunction:v0 file:@"MRDiagnostic.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"info"}];
}

uint64_t MRAVReconnaissanceSessionSetExpectedLogicalDevices(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 168) = a2;
  }

  return result;
}

void MRMediaRemoteGetSavedAVRoutePassword_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteGetSavedAVRoutePassword(CFStringRef, __strong dispatch_queue_t, void (^__strong)(CFStringRef))"}];
  [v1 handleFailureInFunction:v0 file:@"MRAVRouting.m" lineNumber:273 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
}

void MRMediaRemoteGetSavedAVRoutePassword_cold_2()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteGetSavedAVRoutePassword(CFStringRef, __strong dispatch_queue_t, void (^__strong)(CFStringRef))"}];
  [v1 handleFailureInFunction:v0 file:@"MRAVRouting.m" lineNumber:274 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

void MROriginCopy_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MROriginRef MROriginCopy(MROriginRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MROriginCreateSkeletonFrom_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MROriginRef MROriginCreateSkeletonFrom(MROriginRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MROriginEqualToOrigin_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean MROriginEqualToOrigin(MROriginRef, MROriginRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MROriginEqualToOrigin_cold_2()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean MROriginEqualToOrigin(MROriginRef, MROriginRef)"}];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MROriginGetDisplayName_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef MROriginGetDisplayName(MROriginRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MROriginGetOriginType_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MROriginType MROriginGetOriginType(MROriginRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MROriginGetUniqueIdentifier_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int32_t MROriginGetUniqueIdentifier(MROriginRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MROriginIsLocalOrigin_cold_1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Boolean MROriginIsLocalOrigin(MROriginRef)"];
  objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_20();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

void MRVirtualVoiceInputDeviceDescriptorSetSupportedFormats_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRVirtualVoiceInputDeviceDescriptorSetSupportedFormats(MRVirtualVoiceInputDeviceDescriptorRef, CFArrayRef)"}];
  [v1 handleFailureInFunction:v0 file:@"MRVirtualVoiceInputDeviceDescriptor.m" lineNumber:143 description:@"unsupported type"];
}

void MRVirtualVoiceInputDeviceDescriptorSetDefaultAudioFormat_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRVirtualVoiceInputDeviceDescriptorSetDefaultAudioFormat(MRVirtualVoiceInputDeviceDescriptorRef, CFDictionaryRef)"}];
  [v1 handleFailureInFunction:v0 file:@"MRVirtualVoiceInputDeviceDescriptor.m" lineNumber:154 description:@"unsupported type"];
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE70FE8](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE70FF0](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}