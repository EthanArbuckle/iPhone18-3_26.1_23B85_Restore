void _MRServiceClientCollectDiagnosticCallback(uint64_t a1, void *a2)
{
  v10 = a2;
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v4 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v5 = [v4 debugDescription];
  v6 = [v5 mutableCopy];

  [v6 appendString:@"\n"];
  v7 = +[MRClientDiagnosticsDataSource sharedDataSource];
  v8 = [v7 diagnostic];
  [v6 appendString:v8];

  v9 = MRDiagnosticCreate(v3, v6);
  v10[2](v10, v9, 0);

  objc_autoreleasePoolPop(v2);
}

void _MRServiceClientClientMessageCallback(void *a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = a1;
  v7 = +[MRNowPlayingOriginClientManager sharedManager];
  v8 = [v7 originClientForPlayerPath:v6];

  v9 = [v8 clientMessageCallback];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v14, v5);
  }

  else
  {
    v11 = [MRProtocolMessage alloc];
    Error = MRMediaRemoteCreateError(14);
    v13 = [(MRProtocolMessage *)v11 initWithUnderlyingCodableMessage:0 error:Error];
    v5[2](v5, v13);
  }
}

void sub_1A29D1D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A29D3774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void MRClassSwizzleMethod(objc_class *a1, const char *a2, const char *a3)
{
  InstanceMethod = class_getInstanceMethod(a1, a2);
  v7 = class_getInstanceMethod(a1, a3);
  Implementation = method_getImplementation(v7);
  TypeEncoding = method_getTypeEncoding(v7);
  if (class_addMethod(a1, a2, Implementation, TypeEncoding))
  {
    v10 = method_getImplementation(InstanceMethod);
    v11 = method_getTypeEncoding(InstanceMethod);

    class_replaceMethod(a1, a3, v10, v11);
  }

  else
  {

    method_exchangeImplementations(InstanceMethod, v7);
  }
}

void MRSwizzleClassMethod(objc_class *a1, const char *a2, const char *a3)
{
  ClassMethod = class_getClassMethod(a1, a2);
  v7 = class_getClassMethod(a1, a3);
  Class = object_getClass(a1);
  Implementation = method_getImplementation(v7);
  TypeEncoding = method_getTypeEncoding(v7);
  if (class_addMethod(Class, a2, Implementation, TypeEncoding))
  {
    v11 = method_getImplementation(ClassMethod);
    v12 = method_getTypeEncoding(ClassMethod);

    class_replaceMethod(Class, a3, v11, v12);
  }

  else
  {

    method_exchangeImplementations(ClassMethod, v7);
  }
}

uint64_t _MRMicrophoneConnectionRequestMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(_MRRequestDetailsProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !_MRRequestDetailsProtobufReadFrom(v13, a2))
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

    v14 = PBReaderReadString();
    v13 = *(a1 + 16);
    *(a1 + 16) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRMicrophoneConnectionResponseMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v21 = PBReaderReadData();
        v22 = 8;
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
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
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

LABEL_37:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadString();
        v22 = 16;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A29D5E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A29D6B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  _Block_object_dispose((v16 - 80), 8);
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A29D6F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke(uint64_t a1)
{
  FrontBoardServicesLibrary();
  result = objc_getClass("FBSDisplayLayoutMonitorConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke_cold_1();
  }

  getFBSDisplayLayoutMonitorConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void FrontBoardServicesLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E769F998;
    v3 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    FrontBoardServicesLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getFBSDisplayLayoutMonitorClass_block_invoke(uint64_t a1)
{
  FrontBoardServicesLibrary();
  result = objc_getClass("FBSDisplayLayoutMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFBSDisplayLayoutMonitorClass_block_invoke_cold_1();
  }

  getFBSDisplayLayoutMonitorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

MRCommandResult *_MRServiceClientRemoteCommandVerifyOptions(uint64_t a1, void *a2, void *a3)
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v64 = +[MRSendCommandResultStatus successStatus];
  v7 = [v5 objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
  v65 = MRMediaRemoteCopyCommandDescription(a1);
  if (!MRMediaRemoteCommandRequiresSourcePositionOption(a1))
  {
    v18 = 0;
    goto LABEL_27;
  }

  v8 = [v5 objectForKeyedSubscript:@"kMRMediaRemoteOptionContentItemID"];
  v9 = [v5 objectForKeyedSubscript:@"kMRMediaRemoteOptionPlaybackQueueOffset"];
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v19 = [v6 subscriptionController];
    v11 = [v19 offsetForIdentifier:v8];

    if (!v11)
    {
      goto LABEL_21;
    }

    v20 = _MRLogForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v71 = @"kMRMediaRemoteOptionContentItemID";
      v72 = 2112;
      v73 = v8;
      v74 = 2112;
      v75 = @"kMRMediaRemoteOptionPlaybackQueueOffset";
      v76 = 2112;
      v77 = v11;
      _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "'%@':%@ -> '%@':%@", buf, 0x2Au);
    }

    v15 = v5;
    v16 = v11;
    v17 = @"kMRMediaRemoteOptionPlaybackQueueOffset";
    goto LABEL_20;
  }

  v11 = v9;
  if (v9)
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = [v6 subscriptionController];
    v8 = [v13 contentItemIdentifierForOffset:{objc_msgSend(v11, "integerValue")}];

    if (v8)
    {
      v14 = _MRLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v71 = @"kMRMediaRemoteOptionPlaybackQueueOffset";
        v72 = 2112;
        v73 = v11;
        v74 = 2112;
        v75 = @"kMRMediaRemoteOptionContentItemID";
        v76 = 2112;
        v77 = v8;
        _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "'%@':%@ -> '%@':%@", buf, 0x2Au);
      }

      v15 = v5;
      v16 = v8;
      v17 = @"kMRMediaRemoteOptionContentItemID";
LABEL_20:
      [v15 setObject:v16 forKeyedSubscript:v17];
    }
  }

LABEL_21:
  v21 = [v5 objectForKeyedSubscript:@"kMRMediaRemoteOptionContentItemID"];
  if (v21)
  {
    v22 = v21;
    v18 = 0;
  }

  else
  {
    v23 = [v5 objectForKeyedSubscript:@"kMRMediaRemoteOptionTrackID"];

    if (v23)
    {
      v18 = 0;
      goto LABEL_26;
    }

    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Command options do not have requried source position parameters to perform command"];
    v56 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v71 = v65;
      v72 = 2114;
      v73 = v7;
      v74 = 2112;
      v75 = v22;
      _os_log_impl(&dword_1A2860000, v56, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v18 = 7;
  }

LABEL_26:
LABEL_27:
  if (!MRMediaRemoteCommandRequiresDestinationPositionOption(a1))
  {
    goto LABEL_51;
  }

  v24 = [v5 objectForKeyedSubscript:@"kMRMediaRemoteOptionInsertAfterContentItemID"];
  v25 = [v5 objectForKeyedSubscript:@"kMRMediaRemoteOptionPlaybackQueueDestinationOffset"];
  if (v24)
  {
    v26 = v25 == 0;
  }

  else
  {
    v26 = 0;
  }

  if (!v26)
  {
    v27 = v25;
    if (v25)
    {
      v28 = v24 == 0;
    }

    else
    {
      v28 = 0;
    }

    if (!v28)
    {
      goto LABEL_46;
    }

    v29 = [v6 subscriptionController];
    v24 = [v29 contentItemIdentifierForOffset:{objc_msgSend(v27, "integerValue") - 1}];

    if (!v24)
    {
      goto LABEL_46;
    }

    v30 = _MRLogForCategory(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v71 = @"kMRMediaRemoteOptionPlaybackQueueDestinationOffset";
      v72 = 2112;
      v73 = v27;
      v74 = 2112;
      v75 = @"kMRMediaRemoteOptionInsertAfterContentItemID";
      v76 = 2112;
      v77 = v24;
      _os_log_impl(&dword_1A2860000, v30, OS_LOG_TYPE_DEFAULT, "'%@':%@ -> '%@':%@", buf, 0x2Au);
    }

    v31 = v5;
    v32 = v24;
    v33 = @"kMRMediaRemoteOptionInsertAfterContentItemID";
    goto LABEL_45;
  }

  v34 = [v6 subscriptionController];
  v27 = [v34 offsetForIdentifier:v24];

  if (v27)
  {
    v35 = _MRLogForCategory(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v71 = @"kMRMediaRemoteOptionInsertAfterContentItemID";
      v72 = 2112;
      v73 = v24;
      v74 = 2112;
      v75 = @"kMRMediaRemoteOptionPlaybackQueueDestinationOffset";
      v76 = 2112;
      v77 = v27;
      _os_log_impl(&dword_1A2860000, v35, OS_LOG_TYPE_DEFAULT, "'%@':%@ -> '%@':%@", buf, 0x2Au);
    }

    v31 = v5;
    v32 = v27;
    v33 = @"kMRMediaRemoteOptionPlaybackQueueDestinationOffset";
LABEL_45:
    [v31 setObject:v32 forKeyedSubscript:v33];
  }

LABEL_46:
  v36 = [v5 objectForKeyedSubscript:@"kMRMediaRemoteOptionInsertAfterContentItemID"];

  v18 = v18;
  if (!v36)
  {
    v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Command options do not have requried destination position parameters to perform command"];
    v38 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v71 = v65;
      v72 = 2114;
      v73 = v7;
      v74 = 2112;
      v75 = v37;
      _os_log_impl(&dword_1A2860000, v38, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v18 = 7;
  }

LABEL_51:
  v39 = [v5 objectForKeyedSubscript:@"kMRMediaRemoteOptionNowPlayingContentItemID"];
  v40 = [v6 subscriptionController];
  v41 = [v40 contentItemIdentifierForOffset:0];

  if (!v39)
  {
    goto LABEL_59;
  }

  if (v41)
  {
    if ([v41 isEqualToString:v39])
    {
      goto LABEL_59;
    }

    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Sender specified %@ = %@. Now Playing Item = %@. Ignoring command", @"kMRMediaRemoteOptionNowPlayingContentItemID", v39, v41];
    v43 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }
  }

  else
  {
    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Sender specified %@ = %@ which is no longer the now playing item.", @"kMRMediaRemoteOptionNowPlayingContentItemID", v39];
    v43 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
LABEL_57:
      *buf = 138543874;
      v71 = v65;
      v72 = 2114;
      v73 = v7;
      v74 = 2112;
      v75 = v42;
      _os_log_impl(&dword_1A2860000, v43, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  v18 = 7;
LABEL_59:
  v44 = [v5 objectForKeyedSubscript:@"kMRMediaRemoteOptionVerifySupportedCommands"];
  v45 = [v44 BOOLValue];

  if (v45)
  {
    v46 = v6;
    v47 = v7;
    v63 = v46;
    v48 = [v46 supportedCommands];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = ___MRServiceClientRemoteCommandVerifyOptions_block_invoke;
    v66[3] = &unk_1E769F9B8;
    v49 = v48;
    v67 = v49;
    v68 = a1;
    v50 = MEMORY[0x1A58E3570](v66);
    if (v50[2]())
    {
      v51 = v64;
    }

    else
    {
      v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Sender specified %@ option and command is not supported. Ignoring command", @"kMRMediaRemoteOptionVerifySupportedCommands"];
      v53 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v71 = v65;
        v72 = 2114;
        v73 = v47;
        v74 = 2112;
        v75 = v52;
        _os_log_impl(&dword_1A2860000, v53, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v54 = [v49 mr_ifDisabledWhyDisabled:a1] - 1;
      if (v54 > 5)
      {
        v18 = 10;
        v51 = v64;
      }

      else
      {
        v51 = v64;
        if ((0x3Bu >> v54))
        {
          v55 = [MRSendCommandResultStatus statusWithCode:dword_1A2B80F58[v54]];

          v51 = v55;
        }

        else
        {
          v18 = 10;
        }
      }
    }

    v7 = v47;
    v6 = v63;
  }

  else
  {
    v51 = v64;
  }

  v57 = [MRCommandResult alloc];
  v69 = v51;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
  v59 = [v6 playerPath];
  v60 = [(MRCommandResult *)v57 initWithResultStatuses:v58 sendError:v18 playerPath:v59];

  v61 = *MEMORY[0x1E69E9840];

  return v60;
}

void _MRServiceClientPostPlaybackImminentIfNeccessary(int a1)
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v6 = [v2 processName];

  if (([v6 isEqualToString:@"airtunesd"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"tvairplayd") & 1) == 0)
  {
    v3 = +[MRDeviceInfoRequest localDeviceInfo];
    if (![v3 clusterType] && ((a1 - 121) <= 0xC && ((1 << (a1 - 121)) & 0x1413) != 0 || a1 == 2 || !a1))
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mediaremote.playbackImminentOnStereoPair", 0, 0, 1u);
      v5 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(v5, @"com.apple.mediaremote.playbackImminent", 0, 0, 1u);
    }
  }
}

void _MRServiceClientOriginCommandCallback(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v78 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = a5;
  v12 = MEMORY[0x1E695DF00];
  v50 = a4;
  v13 = [v12 date];
  v52 = v10;
  v14 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
  v51 = a2;
  v15 = MRMediaRemoteCopyCommandDescription(a2);
  v16 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"originCommand", v14];
  v17 = v16;
  if (v9)
  {
    [v16 appendFormat:@" for %@", v9];
  }

  v18 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v77 = v17;
    _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = ___MRServiceClientOriginCommandCallback_block_invoke;
  v71[3] = &unk_1E769F9E0;
  v19 = v9;
  v72 = v19;
  v20 = v14;
  v73 = v20;
  v48 = v13;
  v74 = v48;
  v47 = v11;
  v75 = v47;
  v21 = MEMORY[0x1A58E3570](v71);
  v22 = objc_alloc(MEMORY[0x1E69B13F0]);
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = ___MRServiceClientOriginCommandCallback_block_invoke_54;
  v67[3] = &unk_1E769E410;
  v23 = v15;
  v68 = v23;
  v24 = v20;
  v69 = v24;
  v25 = v21;
  v70 = v25;
  v45 = [v22 initWithDeallocHandler:v67];
  v26 = objc_alloc(MEMORY[0x1E69B14D8]);
  v27 = dispatch_get_global_queue(0, 0);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = ___MRServiceClientOriginCommandCallback_block_invoke_2;
  v63[3] = &unk_1E769F470;
  v66 = 0x401C000000000000;
  v28 = v23;
  v64 = v28;
  v29 = v24;
  v65 = v29;
  v30 = [v26 initWithInterval:0 repeats:v27 queue:v63 block:7.0];

  v31 = objc_alloc(MEMORY[0x1E69B14D8]);
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = ___MRServiceClientOriginCommandCallback_block_invoke_64;
  v59[3] = &unk_1E769F470;
  v62 = 0x403E000000000000;
  v60 = v28;
  v32 = v29;
  v61 = v32;
  v46 = v28;
  v33 = [v31 initWithInterval:0 repeats:v27 queue:v59 block:30.0];

  v49 = v19;
  v34 = [v19 copy];
  v35 = _MRLogForCategory(2uLL);
  v36 = [v32 hash];
  if ((v36 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v37 = v36;
    if (os_signpost_enabled(v35))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2860000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v37, "SendCommandOrigin", &unk_1A2BB0121, buf, 2u);
    }
  }

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = ___MRServiceClientOriginCommandCallback_block_invoke_65;
  v53[3] = &unk_1E769FA08;
  v54 = v30;
  v55 = v33;
  v56 = v45;
  v57 = v32;
  v58 = v25;
  v38 = v50[2];
  v39 = v25;
  v40 = v32;
  v41 = v45;
  v42 = v33;
  v43 = v30;
  v38(v50, v34, v51, v52, v53);

  v44 = *MEMORY[0x1E69E9840];
}

void _MRServiceClientRemoteResolvedPlayerPathCommandCallback(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v82 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v51 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E695DF00] date];
  v13 = [v9 objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
  v48 = a1;
  v14 = MRMediaRemoteCopyCommandDescription(a1);
  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"playerCommand:%@", v14];
  v16 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v15, v13];
  v17 = v16;
  if (v10)
  {
    [v16 appendFormat:@" for %@", v10];
  }

  v18 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v81 = v17;
    _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = ___MRServiceClientRemoteResolvedPlayerPathCommandCallback_block_invoke;
  v74[3] = &unk_1E769FA30;
  v52 = v10;
  v75 = v52;
  v50 = v15;
  v76 = v50;
  v19 = v13;
  v77 = v19;
  v49 = v12;
  v78 = v49;
  v47 = v11;
  v79 = v47;
  v20 = MEMORY[0x1A58E3570](v74);
  v21 = objc_alloc(MEMORY[0x1E69B13F0]);
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = ___MRServiceClientRemoteResolvedPlayerPathCommandCallback_block_invoke_70;
  v70[3] = &unk_1E769E410;
  v22 = v14;
  v71 = v22;
  v23 = v19;
  v72 = v23;
  v24 = v20;
  v73 = v24;
  v25 = [v21 initWithDeallocHandler:v70];
  v26 = objc_alloc(MEMORY[0x1E69B14D8]);
  v27 = dispatch_get_global_queue(0, 0);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = ___MRServiceClientRemoteResolvedPlayerPathCommandCallback_block_invoke_2;
  v66[3] = &unk_1E769F470;
  v69 = 0x401C000000000000;
  v28 = v22;
  v67 = v28;
  v29 = v23;
  v68 = v29;
  v30 = [v26 initWithInterval:0 repeats:v27 queue:v66 block:7.0];

  v31 = objc_alloc(MEMORY[0x1E69B14D8]);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = ___MRServiceClientRemoteResolvedPlayerPathCommandCallback_block_invoke_74;
  v62[3] = &unk_1E769F470;
  v65 = 0x403E000000000000;
  v63 = v28;
  v32 = v29;
  v64 = v32;
  v33 = v28;
  v34 = [v31 initWithInterval:0 repeats:v27 queue:v62 block:30.0];

  v35 = _MRLogForCategory(2uLL);
  v36 = [v32 hash];
  if ((v36 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v37 = v36;
    if (os_signpost_enabled(v35))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2860000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v37, "SendCommandPlayerMain", &unk_1A2BB0121, buf, 2u);
    }
  }

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = ___MRServiceClientRemoteResolvedPlayerPathCommandCallback_block_invoke_75;
  v53[3] = &unk_1E769FA58;
  v61 = v48;
  v54 = v32;
  v55 = v9;
  v56 = v30;
  v57 = v34;
  v58 = v25;
  v59 = v51;
  v60 = v24;
  v38 = v24;
  v39 = v25;
  v40 = v34;
  v41 = v30;
  v42 = v9;
  v43 = v51;
  v44 = v32;
  v45 = MRCreateDonatedQosBlock(v53);
  dispatch_async(MEMORY[0x1E69E96A0], v45);

  v46 = *MEMORY[0x1E69E9840];
}

void _MRServiceClientRemoteResolvedPlayerPathCommandCallbacks(void *a1, uint64_t a2, void *a3, void *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = _MRServiceClientRemoteCommandVerifyOptions(a2, v8, v7);
  v11 = [v10 error];

  if (v11)
  {
    v9[2](v9, v10);
  }

  else
  {
    v34 = v10;
    v12 = [v8 objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
    v13 = MRMediaRemoteCommandCreateDescription(a2, v8, 0);
    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v32 = v13;
    v33 = v12;
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.MediaRemote.serviceClientRemotePlayerPathCommandCallback.%@.%@", v13, v12];
    v15 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_USER_INITIATED, 0);
    queue = dispatch_queue_create(v15, v17);

    v18 = dispatch_group_create();
    v19 = [v7 clientCallbacks];
    v20 = [v19 commandHandlerBlocks];

    v21 = a2;
    if ([v20 count])
    {
      _MRServiceClientPostPlaybackImminentIfNeccessary(a2);
      v31 = 0;
    }

    else
    {
      v31 = 8;
    }

    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    v48 = 0u;
    obj = v20;
    v22 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v49;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v49 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v48 + 1) + 8 * i);
          dispatch_group_enter(v18);
          v27 = [v7 playerPath];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = ___MRServiceClientRemoteResolvedPlayerPathCommandCallbacks_block_invoke;
          v44[3] = &unk_1E769FA80;
          v45 = queue;
          v46 = v37;
          v47 = v18;
          _MRServiceClientRemoteResolvedPlayerPathCommandCallback(v21, v8, v27, v26, v44);
        }

        v23 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v23);
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = ___MRServiceClientRemoteResolvedPlayerPathCommandCallbacks_block_invoke_3;
    v38[3] = &unk_1E769FB58;
    v39 = v37;
    v42 = v21;
    v43 = v31;
    v40 = v7;
    v41 = v9;
    v28 = v37;
    v29 = MRCreateDonatedQosBlock(v38);
    dispatch_group_notify(v18, queue, v29);

    v10 = v34;
  }

  v30 = *MEMORY[0x1E69E9840];
}

void sub_1A29DA328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MRServiceClientRemotePlayerPathCommandCallback(void *a1, uint64_t a2, void *a3, void *a4)
{
  v78 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v62 = a4;
  v64 = [v8 objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
  v65 = MRMediaRemoteCopyCommandDescription(a2);
  v9 = [v7 copy];
  v10 = off_1E7699000;
  v11 = +[MRNowPlayingOriginClientManager sharedManager];
  v12 = [v11 clientForPlayerPath:v9];

  v13 = [v12 client];
  v14 = [v9 client];
  v15 = v14;
  v63 = v13;
  if (v14 == v13)
  {
  }

  else
  {
    v16 = [v14 isEqual:v13];

    if ((v16 & 1) == 0)
    {
      v17 = objc_alloc(MEMORY[0x1E696AEC0]);
      v18 = [v9 client];
      v19 = [v18 bundleIdentifier];
      v20 = [v13 bundleIdentifier];
      v21 = [v17 initWithFormat:@"Resolved client from %@ to %@ ", v19, v20];

      v22 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v73 = v65;
        v74 = 2114;
        v75 = v64;
        v76 = 2112;
        v77 = v21;
        _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      [v9 setClient:v63];
      v10 = off_1E7699000;
    }
  }

  v23 = [v9 player];

  if (!v23)
  {
    v24 = [v12 activePlayerPath];
    v25 = [v24 player];

    v26 = [v9 player];
    v27 = v26;
    if (v26 != v25)
    {
      v28 = [v26 isEqual:v25];

      if (v28)
      {
LABEL_14:

        v10 = off_1E7699000;
        goto LABEL_15;
      }

      v60 = v7;
      v29 = objc_alloc(MEMORY[0x1E696AEC0]);
      v30 = [v9 player];
      v31 = [v30 identifier];
      v32 = [v25 identifier];
      v27 = [v29 initWithFormat:@"Resolved player from %@ to %@", v31, v32];

      v33 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v73 = v65;
        v74 = 2114;
        v75 = v64;
        v76 = 2112;
        v77 = v27;
        _os_log_impl(&dword_1A2860000, v33, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      [v9 setPlayer:v25];
      v7 = v60;
    }

    goto LABEL_14;
  }

LABEL_15:
  v34 = [v9 isResolved];
  if (v34)
  {
    v35 = [(__objc2_class *)v10[11] sharedManager];
    v36 = [v35 playerClientForPlayerPath:v9];

    if ((__MRServiceClientRemotePlayerPathCommandCallback_block_invoke(v37, v12, v36) & 1) == 0)
    {
LABEL_17:
      v38 = v62;
      [v12 enqueueCommand:a2 options:v8 playerPath:v7 commandCompletion:v62];
      goto LABEL_40;
    }
  }

  else
  {
    v36 = 0;
    if (!__MRServiceClientRemotePlayerPathCommandCallback_block_invoke(v34, v12, 0))
    {
      goto LABEL_17;
    }
  }

  if ([v9 isResolved])
  {
    v39 = [(__objc2_class *)v10[11] sharedManager];
    v40 = [v39 playerClientForPlayerPath:v9];

    v41 = v40;
    v42 = [v40 resolveCommand:a2];
    v43 = v42;
    if (v42 != a2)
    {
      v44 = MRMediaRemoteCopyCommandDescription(v42);
      v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Resolved command from %@ to %@", v65, v44];
      v46 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v73 = v65;
        v74 = 2114;
        v75 = v64;
        v76 = 2112;
        v77 = v45;
        _os_log_impl(&dword_1A2860000, v46, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      a2 = v43;
    }

    v47 = v43;
    v48 = [v41 resolveCommandOptions:a2 options:v8];
    if (([v8 isEqualToDictionary:v48] & 1) == 0)
    {
      v61 = v41;
      v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Resolved command options to %@", v48];
      v50 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v73 = v65;
        v74 = 2114;
        v75 = v64;
        v76 = 2112;
        v77 = v49;
        _os_log_impl(&dword_1A2860000, v50, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v51 = v49;
      v52 = [v48 mutableCopy];

      v8 = v52;
      v41 = v61;
    }

    if (a2 == 125)
    {
      v53 = [v8 objectForKeyedSubscript:@"kMRMediaRemoteOptionHomeKitUserIdentifier"];
      if (v53)
      {
        [v41 appendHomeUserIdentifier:v53];
      }
    }

    else
    {
      if (a2 != 122)
      {
LABEL_39:
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __MRServiceClientRemotePlayerPathCommandCallback_block_invoke_102;
        v66[3] = &unk_1E769FB80;
        v71 = v47;
        v67 = v48;
        v68 = v41;
        v8 = v8;
        v69 = v8;
        v38 = v62;
        v70 = v62;
        v57 = v41;
        v58 = v48;
        _MRServiceClientRemoteResolvedPlayerPathCommandCallbacks(v57, a2, v8, v66);

        goto LABEL_40;
      }

      v53 = [v8 objectForKeyedSubscript:@"kMRMediaRemoteOptionHomeKitUserIdentifier"];
      if (v53)
      {
        [v41 setHomeUserIdentifier:v53];
      }

      else
      {
        [v41 clearHomeUserIdentifiers];
      }
    }

    goto LABEL_39;
  }

  v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Client is CanBeNowPlaying=YES but does not have activePlayer to send command to"];
  v55 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v73 = v65;
    v74 = 2114;
    v75 = v64;
    v76 = 2112;
    v77 = v54;
    _os_log_impl(&dword_1A2860000, v55, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v56 = [MRCommandResult commandResultWithSendError:3 description:v54];
  v38 = v62;
  (*(v62 + 2))(v62, v56);

LABEL_40:
  v59 = *MEMORY[0x1E69E9840];
}

uint64_t __MRServiceClientRemotePlayerPathCommandCallback_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  if ([a3 canBeNowPlayingPlayer])
  {
    v5 = 1;
  }

  else if ([v4 perPlayerCanBeNowPlaying])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 canBeNowPlaying];
  }

  return v5;
}

void __MRServiceClientRemotePlayerPathCommandCallback_block_invoke_102(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (!v4)
  {
    v5 = *(a1 + 64);
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) playerPath];
    MRMediaRemoteSendImplicitCommandsForOptions(v5, v6, v7);
  }

  v8 = _MRLogForCategory(2uLL);
  v9 = [*(a1 + 48) objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
  v10 = [v9 hash];

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2860000, v8, OS_SIGNPOST_INTERVAL_END, v10, "SendCommand", &unk_1A2BB0121, v11, 2u);
  }

  (*(*(a1 + 56) + 16))();
}

void MRServiceClientRemoteCommandCallback(void *a1, uint64_t a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [v8 mutableCopy];
  }

  else
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
  }

  v11 = v10;
  v12 = [v7 copy];
  v13 = [v11 objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = MRMediaRemoteCommandCreateDescription(a2, v11, 1);
  v16 = [v14 initWithFormat:@"Got %@ for %@", v15, v12];

  v17 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v37 = @"command";
    v38 = 2114;
    v39 = v13;
    v40 = 2112;
    v41 = v16;
    _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v18 = +[MRNowPlayingOriginClientManager sharedManager];
  v19 = [v18 originClientForPlayerPath:v12];

  if (v19)
  {
    v20 = [v19 commandCallback];
    if (v20)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __MRServiceClientRemoteCommandCallback_block_invoke;
      v33[3] = &unk_1E769FBA8;
      v21 = v12;
      v32 = v12;
      v22 = v11;
      v23 = v8;
      v24 = v16;
      v25 = a2;
      v26 = v13;
      v27 = v7;
      v28 = v21;
      v34 = v21;
      v35 = v9;
      v29 = v28;
      v7 = v27;
      v13 = v26;
      v30 = v25;
      v16 = v24;
      v8 = v23;
      v11 = v22;
      v12 = v32;
      _MRServiceClientOriginCommandCallback(v29, v30, v11, v20, v33);
    }

    else
    {
      MRServiceClientRemotePlayerPathCommandCallback(v12, a2, v11, v9);
    }

    goto LABEL_12;
  }

  if (v9)
  {
    v20 = [[MRCommandResult alloc] initWithWithSendError:6 description:@"Could not create an originClient for playerPath"];
    (*(v9 + 2))(v9, v20);
LABEL_12:
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __MRServiceClientRemoteCommandCallback_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 playerPath];
  v5 = [*(a1 + 32) origin];
  v8 = [v4 playerPathByLocalizingWithOrigin:v5];

  v6 = v8;
  if (!v8)
  {
    v6 = *(a1 + 32);
  }

  v9 = v6;
  v7 = [v3 copyWithPlayerPath:v6];

  (*(*(a1 + 40) + 16))();
}

void __MRMediaRemoteBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaRemote"];
  v1 = MRMediaRemoteBundle_bundle;
  MRMediaRemoteBundle_bundle = v0;
}

uint64_t MRColorCopyDescription(float a1, float a2, float a3, float a4)
{
  *v5 = a1;
  *&v5[1] = a2;
  *&v5[2] = a3;
  *&v5[3] = a4;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"<MRColor:%p red = %f, green = %f, blue = %f, alpha = %f>", v5, a1, a2, a3, a4];
  return objc_claimAutoreleasedReturnValue();
}

MRContentItem *MRContentItemRepresentationForIdentity(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[MRContentItem alloc] initWithIdentifier:v4];

  v6 = [v3 displayName];
  v7 = [(MRContentItem *)v5 metadata];
  [v7 setParticipantName:v6];

  v8 = [v3 identifier];
  v9 = [(MRContentItem *)v5 metadata];
  [v9 setParticipantIdentifier:v8];

  v10 = [v3 type];
  v11 = v10 == 1;
  v12 = [(MRContentItem *)v5 metadata];
  [v12 setIsResolvableParticipant:v11];

  return v5;
}

id MRIdentityRepresentationForParticipantItem(void *a1)
{
  v1 = a1;
  v2 = [v1 metadata];
  v3 = [v2 participantIdentifier];

  if (v3)
  {
    goto LABEL_2;
  }

  v5 = [v1 metadata];
  v6 = [v5 isResolvableParticipant];

  if (v6)
  {
    v7 = [v1 metadata];
    v8 = [v7 participantIdentifier];
    v9 = [v1 metadata];
    v10 = [v9 participantName];
    v11 = [MRUserIdentity resolvableIdentityWithIdentifier:v8 displayName:v10];
  }

  else
  {
    v12 = [v1 metadata];
    v13 = [v12 participantName];

    if (!v13)
    {
LABEL_2:
      v4 = 0;
      goto LABEL_8;
    }

    v7 = [v1 metadata];
    v8 = [v7 participantIdentifier];
    v9 = [v1 metadata];
    v10 = [v9 participantName];
    v11 = [MRUserIdentity basicIdentityWithIdentifier:v8 displayName:v10];
  }

  v4 = v11;

LABEL_8:

  return v4;
}

uint64_t _MRUpdateActiveSystemEndpointMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(_MRUpdateActiveSystemEndpointRequestProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRUpdateActiveSystemEndpointRequestProtobufReadFrom(v13, a2))
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

void sub_1A29DD5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A29DEA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MRSetRecordingStateMessageProtobufReadFrom(uint64_t a1, void *a2)
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

void MRMediaRemoteRequestNowPlayingPlaybackQueue(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = [[MRPlayerPath alloc] initWithOrigin:a3 client:a2 player:0];
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayer(a1, v11, v10, v9);
}

void MRMediaRemoteRequestNowPlayingPlaybackQueueCapabilitiesForPlayer(void *a1, void *a2, void *a3)
{
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
  v11 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v12 = [v11 workerQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __MRMediaRemoteRequestNowPlayingPlaybackQueueCapabilitiesForPlayer_block_invoke;
  v17[3] = &unk_1E769ABC8;
  v18 = @"playbackQueueCapabilities";
  v19 = v9;
  v20 = v10;
  v21 = v5;
  v22 = v6;
  v13 = v6;
  v14 = v5;
  v15 = v10;
  v16 = v9;
  MRMediaRemoteNowPlayingResolvePlayerPath(a1, v12, v17);
}

void __MRMediaRemoteRequestNowPlayingPlaybackQueueCapabilitiesForPlayer_block_invoke(id *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __MRMediaRemoteRequestNowPlayingPlaybackQueueCapabilitiesForPlayer_block_invoke_2;
  v29 = &unk_1E769FDC8;
  v7 = v5;
  v30 = v7;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v31 = v13;
  v32 = v12;
  v33 = a1[8];
  v14 = MEMORY[0x1A58E3570](&v26);
  v15 = objc_alloc(MEMORY[0x1E696AD60]);
  v16 = [v15 initWithFormat:@"%@<%@>", a1[4], a1[5], v26, v27, v28, v29];
  v17 = v16;
  if (v7)
  {
    [v16 appendFormat:@" for %@", v7];
  }

  v18 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = v17;
    _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  if ([v7 isResolved])
  {
    if ([v7 isLocal])
    {
      v19 = +[MRNowPlayingOriginClientManager sharedManager];
      v20 = [v19 playerClientForPlayerPath:v7];

      v21 = [v20 clientCallbacks];
      v14[2](v14, [v21 capabilities], 0);
    }

    else
    {
      v24 = MRGetSharedService();
      MRMediaRemoteServiceRequestNowPlayingPlaybackQueueCapabilities(v24, v7, a1[7], v14);
    }
  }

  else
  {
    if (v6)
    {
      v22 = 0;
      Error = v6;
    }

    else
    {
      Error = MRMediaRemoteNowPlayingPlayerPathCreateError(v7);
      v22 = Error;
    }

    v14[2](v14, 0, Error);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteRequestNowPlayingPlaybackQueueCapabilitiesForPlayer_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MRPlaybackQueueCapabilitiesCopyDescription(a2);
  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (!v5 && v6)
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
        v40 = v12;
        v41 = 2114;
        v42 = v11;
        v43 = 2112;
        v44 = v6;
        v45 = 2114;
        v46 = v13;
        v47 = 2048;
        v48 = v15;
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
    v40 = v29;
    v41 = 2114;
    v42 = v30;
    v43 = 2112;
    v44 = v6;
    v45 = 2048;
    v46 = v31;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v17 = v9;
    v18 = 42;
    goto LABEL_16;
  }

  if (v5)
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
        v40 = v21;
        v41 = 2114;
        v42 = v20;
        v43 = 2114;
        v44 = v5;
        v45 = 2114;
        v46 = v22;
        v47 = 2048;
        v48 = v23;
        _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v19)
    {
      __MRMediaRemoteRequestNowPlayingPlaybackQueueCapabilitiesForPlayer_block_invoke_2_cold_1(a1);
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
    v40 = v32;
    v41 = 2114;
    v42 = v33;
    v43 = 2048;
    v44 = v34;
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
    v40 = v26;
    v41 = 2114;
    v42 = v25;
    v43 = 2114;
    v44 = v27;
    v45 = 2048;
    v46 = v28;
    v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  v35 = *(a1 + 64);
  v38 = *(a1 + 72);
  v36 = v5;
  msv_dispatch_async_on_queue();

  v37 = *MEMORY[0x1E69E9840];
}

uint64_t __MRMediaRemoteRequestNowPlayingPlaybackQueueCapabilitiesForPlayer_block_invoke_104(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[6], a1[4]);
  }

  return result;
}

void MRMediaRemoteSetPlaybackQueue(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 contentItems];
    if (![v11 count])
    {
LABEL_5:

      goto LABEL_6;
    }

    v12 = [v10 hasLocation];

    if ((v12 & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MRMediaRemoteSetPlaybackQueue(MRNowPlayingPlayerPathRef, MRPlaybackQueueRef, __strong dispatch_queue_t, void (^__strong)(CFErrorRef))"}];
      [v11 handleFailureInFunction:v13 file:@"MRPlaybackQueueRequestResponse.m" lineNumber:245 description:@"Attempting to set non-range based playbackQueue"];

      goto LABEL_5;
    }
  }

LABEL_6:
  v14 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v15 = [v14 playbackQueueDispatchQueue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __MRMediaRemoteSetPlaybackQueue_block_invoke;
  v20[3] = &unk_1E769FDF0;
  v24 = a1;
  v25 = v10;
  v21 = v10;
  v22 = v7;
  v23 = v8;
  v16 = v8;
  v17 = v7;
  v18 = v10;
  v19 = MRCreateDonatedQosBlock(v20);
  msv_dispatch_sync_on_queue();
}

void __MRMediaRemoteSetPlaybackQueue_block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = +[MRNowPlayingOriginClientManager sharedManager];
  v3 = [v2 playerClientForPlayerPath:*(a1 + 56)];

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v3 setInvalidatationTimestamp:?];
  v4 = [*(a1 + 32) contentItemWithOffset:0];
  v5 = [v3 playbackQueue];
  v6 = [v5 contentItemWithOffset:0];

  v7 = [v3 playerPath];
  v8 = [v7 isLocal];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v10 = [v3 playerPath];
    MRAddPlayerPathToUserInfo(v9, v10);

    v11 = MEMORY[0x1E696AD98];
    v12 = [v4 identifier];
    v13 = [v6 identifier];
    if (v12 == v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = [v12 isEqual:v13] ^ 1;
    }

    v15 = [v11 numberWithInt:v14];
    [v9 setObject:v15 forKeyedSubscript:@"_MRPlayerPlaybackQueueNowPlayingItemDidChangeUserInfoKey"];

    v16 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __MRMediaRemoteSetPlaybackQueue_block_invoke_cold_1(v3, v16);
    }

    v17 = +[MRMediaRemoteServiceClient sharedServiceClient];
    v18 = [v17 notificationClient];
    v19 = MRCreateDecodedUserInfo(v9);
    [v18 dispatchNotification:@"kMRPlayerPlaybackQueueChangedNotification" userInfo:v19 object:0];
  }

  v20 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v3 playerPath];
    v22 = MRContentItemCopyMinimalReadableDescription(v6);
    v23 = MRContentItemCopyMinimalReadableDescription(v4);
    v37 = 138543874;
    v38 = v21;
    v39 = 2112;
    v40 = v22;
    v41 = 2112;
    v42 = v23;
    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "PlaybackQueueInvalidation: NowPlayingItem for %{public}@ changed from\n %@\n -> \n%@", &v37, 0x20u);
  }

  if (v4 && MRContentItemIdentifierIsEqual(v4, v6) && (MRContentItemEqualToItem(v4, v6) & 1) == 0)
  {
    v24 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __MRMediaRemoteSetPlaybackQueue_block_invoke_cold_2(v24);
    }

    v25 = [v3 playerPath];
    MRMediaRemotePlaybackQueueDataSourceContentItemChangedForPlayer(v4, v25);
  }

  v26 = [v3 subscriptionController];
  [v26 invalidate];

  v27 = [*(a1 + 32) range];
  v29 = [MRPlaybackQueueRequest defaultPlaybackQueueRequestWithRange:v27, v28];
  v30 = [v3 subscriptionController];
  [v30 subscribeToPlaybackQueue:*(a1 + 32) forRequest:v29];

  v31 = [v3 homeUserIdentifiers];
  v32 = [v31 count];

  if (v32)
  {
    v33 = [v3 homeUserIdentifiers];
    [*(a1 + 32) setHomeUserIdentifiers:v33];
  }

  [v3 setPlaybackQueue:*(a1 + 32)];
  v34 = MRGetSharedService();
  v35 = [v3 playerPath];
  MRMediaRemoteServiceSetNowPlayingPlaybackQueue(v34, v35, *(a1 + 64), *(a1 + 40), *(a1 + 48));

  v36 = *MEMORY[0x1E69E9840];
}

uint64_t _MRSetNowPlayingPlayerMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v13->super.super.isa, a2))
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

uint64_t _MRTransactionMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v24) = 0;
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = objc_alloc_init(_MRTransactionPacketsProtobuf);
        objc_storeStrong((a1 + 16), v21);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !_MRTransactionPacketsProtobufReadFrom(v21, a2))
        {
          goto LABEL_43;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_41;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v24) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24 & 0x7F) << v14;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_40;
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

LABEL_40:
        *(a1 + 8) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
    objc_storeStrong((a1 + 24), v21);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v21->super.super.isa, a2))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRSetListeningModeMessageProtobufReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR____MRSetListeningModeMessageProtobuf__outputDeviceUID;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

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

    v13 = &OBJC_IVAR____MRSetListeningModeMessageProtobuf__listeningMode;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRUpdatePlayerMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v13->super.super.isa, a2))
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

uint64_t _MRGroupSessionTokenProtobufReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadData();
            v15 = 24;
            break;
          case 2:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            while (1)
            {
              v34 = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v34 & 0x7F) << v25;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_59;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v27;
            }

LABEL_59:
            v31 = 32;
LABEL_60:
            *(a1 + v31) = v22;
            goto LABEL_61;
          case 3:
            v14 = PBReaderReadString();
            v15 = 8;
            break;
          default:
            goto LABEL_38;
        }
      }

      else if (v13 > 5)
      {
        if (v13 != 6)
        {
          if (v13 != 7)
          {
LABEL_38:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_61;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            v35 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_55;
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

LABEL_55:
          v31 = 56;
          goto LABEL_60;
        }

        v14 = PBReaderReadString();
        v15 = 16;
      }

      else if (v13 == 4)
      {
        v14 = PBReaderReadString();
        v15 = 40;
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_38;
        }

        v14 = PBReaderReadString();
        v15 = 48;
      }

      v24 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_61:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MRBroadcastCommandResponseGetPID(void *a1)
{
  v1 = [a1 playerPath];
  v2 = [v1 client];
  v3 = [v2 processIdentifier];

  return v3;
}

void *MRBroadcastCommandResponseGetBundleIdentifier(void *a1)
{
  v1 = [a1 playerPath];
  v2 = [v1 client];
  v3 = [v2 bundleIdentifier];

  return v3;
}

uint64_t _MRVolumeControlAvailabilityProtobufReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_44;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_44:
        *(a1 + 8) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_40;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_40:
        *(a1 + 12) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *MRAnalyticsDeviceCompositionDescription(int a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_opt_new();
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"Unknown"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"Speaker"];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

LABEL_17:
    [v3 addObject:@"AppleTV"];
    if ((v1 & 8) == 0)
    {
LABEL_6:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

LABEL_18:
    [v3 addObject:@"HomePod"];
    if ((v1 & 0x10) == 0)
    {
LABEL_7:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    [v3 addObject:@"iOS"];
    if ((v1 & 0x20) == 0)
    {
LABEL_8:
      if ((v1 & 0x40) == 0)
      {
LABEL_10:
        v4 = [v3 componentsJoinedByString:@" | "];

        goto LABEL_12;
      }

LABEL_9:
      [v3 addObject:@"Mac"];
      goto LABEL_10;
    }

LABEL_20:
    [v3 addObject:@"Watch"];
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = @"Unset";
LABEL_12:

  return v4;
}

uint64_t MRAnalyticsAppBundleIDStringToInt(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:@"com.apple.MediaRemoteUI"])
    {
      v3 = 1;
    }

    else if ([v2 isEqualToString:@"com.apple.mediaremoted"])
    {
      v3 = 2;
    }

    else if (MRMediaRemoteApplicationIsSystemMediaApplication(v2))
    {
      v3 = 3;
    }

    else if (MRMediaRemoteApplicationIsSystemPodcastApplication(v2))
    {
      v3 = 4;
    }

    else if (MRMediaRemoteApplicationIsSystemAppleTVApplication(v2))
    {
      v3 = 5;
    }

    else if (MRMediaRemoteApplicationIsSystemClassicalRoomApplication(v2))
    {
      v3 = 6;
    }

    else if (MRMediaRemoteApplicationIsSystemBooksApplication(v2))
    {
      v3 = 7;
    }

    else if ([v2 isEqualToString:@"com.apple.springboard"])
    {
      v3 = 8;
    }

    else if ([v2 containsString:@"airplayd"] & 1) != 0 || (objc_msgSend(v2, "containsString:", @"TVAirPlay"))
    {
      v3 = 9;
    }

    else if ([v2 containsString:@"NanoNowPlaying"])
    {
      v3 = 10;
    }

    else if ([v2 containsString:@"PineBoard"])
    {
      v3 = 11;
    }

    else if ([v2 containsString:@"Carousel"])
    {
      v3 = 12;
    }

    else if ([v2 containsString:@"SurfBoard"])
    {
      v3 = 14;
    }

    else if ([v2 containsString:@"ControlCenter"])
    {
      v3 = 15;
    }

    else if ([v2 containsString:@"audiomxd"])
    {
      v3 = 16;
    }

    else if ([v2 containsString:@"mediaremotetool"])
    {
      v3 = 17;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 149;
  }

  return v3;
}

uint64_t MRAnalyticsCompositionForEndpoint(void *a1)
{
  v1 = a1;
  if ([v1 isLocalEndpoint])
  {
    if (MRAnalyticsCompositionForLocalDevice_onceToken != -1)
    {
      MRAnalyticsCompositionForEndpoint_cold_1();
    }

    v2 = MRAnalyticsCompositionForLocalDevice_localDeviceComposition;
  }

  else
  {
    v3 = [v1 designatedGroupLeader];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v6 = [v1 outputDevices];
      v5 = [v6 firstObject];
    }

    v7 = [v5 deviceSubtype];
    switch(v7)
    {
      case 2:
        v2 = 2;
        break;
      case 13:
        v2 = 4;
        break;
      case 12:
        v2 = 8;
        break;
      default:
        v2 = 1;
        break;
    }
  }

  return v2;
}

uint64_t MRAnalyticsCompositionForLocalDevice()
{
  if (MRAnalyticsCompositionForLocalDevice_onceToken != -1)
  {
    MRAnalyticsCompositionForEndpoint_cold_1();
  }

  return MRAnalyticsCompositionForLocalDevice_localDeviceComposition;
}

uint64_t MRAnalyticsCompositionForOutputDevice(void *a1)
{
  v1 = [a1 deviceSubtype];
  if (v1 == 12)
  {
    v2 = 8;
  }

  else
  {
    v2 = 1;
  }

  if (v1 == 13)
  {
    v3 = 4;
  }

  else
  {
    v3 = v2;
  }

  if (v1 == 2)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

uint64_t MRAnalyticsCompositionForOutputDevices(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    LODWORD(v4) = 0;
    v5 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [*(*(&v11 + 1) + 8 * i) deviceSubtype];
        switch(v7)
        {
          case 2:
            v8 = 2;
            break;
          case 13:
            v8 = 4;
            break;
          case 12:
            v8 = 8;
            break;
          default:
            v8 = 1;
            break;
        }

        v4 = v8 | v4;
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t MRAnalyticsCompositionForDeviceInfo(void *a1)
{
  v1 = [a1 deviceClass];

  return MRAnalyticsCompositionForDeviceClass(v1);
}

uint64_t MRAnalyticsCompositionForDeviceClass(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return 1;
  }

  else
  {
    return dword_1A2B80FD0[a1 - 1];
  }
}

void __MRAnalyticsCompositionForLocalDevice_block_invoke()
{
  IsMediaRemoteDaemon = MRProcessIsMediaRemoteDaemon();
  v1 = +[MROrigin localOrigin];
  if (IsMediaRemoteDaemon)
  {
    [MRDeviceInfoRequest cachedDeviceInfoForOrigin:v1];
  }

  else
  {
    [MRDeviceInfoRequest deviceInfoForOrigin:v1];
  }
  v2 = ;

  MRAnalyticsCompositionForLocalDevice_localDeviceComposition = MRAnalyticsCompositionForDeviceClass([v2 deviceClass]);
}

uint64_t MRAnalyticsSendEvent(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (MRAnalyticsSendEvent_once != -1)
  {
    MRAnalyticsSendEvent_cold_1();
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __MRAnalyticsSendEvent_block_invoke_2;
  v18[3] = &unk_1E76A03A0;
  v19 = v6;
  v20 = v7;
  v8 = v6;
  v9 = v7;
  v10 = MEMORY[0x1A58E3570](v18);
  v11 = MRAnalyticsSendEvent___analyticsQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __MRAnalyticsSendEvent_block_invoke_3;
  v15[3] = &unk_1E769AB28;
  v16 = v5;
  v17 = v10;
  v12 = v5;
  v13 = v10;
  dispatch_async(v11, v15);

  return 1;
}

void __MRAnalyticsSendEvent_block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("com.apple.mediaremote.MRAnalytics", v0);
  v2 = MRAnalyticsSendEvent___analyticsQueue;
  MRAnalyticsSendEvent___analyticsQueue = v1;
}

id __MRAnalyticsSendEvent_block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = [v2 mutableCopy];

  v4 = *(a1 + 32);
  if (v4)
  {
    IsInformational = MRMediaRemoteErrorIsInformational(v4);
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
    if (IsInformational)
    {
      [v3 setObject:v6 forKeyedSubscript:@"informationalErrorCode"];
    }

    else
    {
      [v3 setObject:v6 forKeyedSubscript:@"errorCode"];

      v7 = [*(a1 + 32) domain];
      [v3 setObject:v7 forKeyedSubscript:@"errorDomain"];

      v8 = [*(a1 + 32) domain];
      v9 = [v8 isEqual:@"kMRMediaRemoteFrameworkErrorDomain"];

      if (v9)
      {
        v10 = MRErrorCopyDescription(*(a1 + 32));
        [v3 setObject:v10 forKeyedSubscript:@"errorDescription"];
      }

      v11 = [*(a1 + 32) recursiveUnderlyingError];
      v6 = v11;
      if (v11)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "code")}];
        [v3 setObject:v12 forKeyedSubscript:@"underlyingErrorCode"];
      }
    }
  }

  return v3;
}

void __MRAnalyticsSendEvent_block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (MSVDeviceOSIsInternalInstall())
  {
    v2 = (*(*(a1 + 40) + 16))();
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v2;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "Logging to CoreAnalytics: %@\n%@", buf, 0x16u);
    }

    v5 = *(a1 + 32);
    v11 = v2;
    v6 = v2;
    AnalyticsSendEventLazy();

    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *MEMORY[0x1E69E9840];

    AnalyticsSendEventLazy();
  }
}

void MRAnalyticsTrackTopologyChangeEvent(void *a1, void *a2, int a3, uint64_t a4, void *a5, char a6, void *a7, double a8)
{
  v15 = a1;
  v16 = a5;
  v17 = a7;
  v18 = [a2 componentsSeparatedByString:@"/"];
  v19 = [v18 firstObject];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __MRAnalyticsTrackTopologyChangeEvent_block_invoke;
  v23[3] = &unk_1E76A03C8;
  v27 = a8;
  v24 = v16;
  v25 = v15;
  v29 = a3;
  v30 = a6;
  v26 = v19;
  v28 = a4;
  v20 = v19;
  v21 = v15;
  v22 = v16;
  MRAnalyticsSendEvent(@"com.apple.mediaremote.topology-modification", v17, v23);
}

id __MRAnalyticsTrackTopologyChangeEvent_block_invoke(uint64_t a1)
{
  v21[10] = *MEMORY[0x1E69E9840];
  v20[0] = @"originator";
  if (MRAnalyticsCompositionForLocalDevice_onceToken != -1)
  {
    MRAnalyticsCompositionForEndpoint_cold_1();
  }

  v2 = MRAnalyticsDeviceCompositionDescription(MRAnalyticsCompositionForLocalDevice_localDeviceComposition);
  v21[0] = v2;
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"unknown";
  }

  v21[1] = v6;
  v20[2] = @"destination";
  v7 = MRAnalyticsCompositionForOutputDevices(*(a1 + 32));
  v8 = MRAnalyticsDeviceCompositionDescription(v7);
  v21[2] = v8;
  v20[3] = @"duration";
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
  v10 = *(a1 + 40);
  v21[3] = v9;
  v21[4] = v10;
  v20[4] = @"type";
  v20[5] = @"leader";
  v11 = MRAnalyticsDeviceCompositionDescription(*(a1 + 72));
  v21[5] = v11;
  v20[6] = @"isLocal";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 76)];
  v13 = v12;
  v14 = *(a1 + 48);
  if (!v14)
  {
    v14 = @"unknown";
  }

  v21[6] = v12;
  v21[7] = v14;
  v20[7] = @"initiator";
  v20[8] = @"initialGroupSize";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
  v21[8] = v15;
  v20[9] = @"changeSetSize";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v21[9] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:10];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void MRMediaRemoteSetCommandHandler(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v5 originClientForOrigin:v4];

  [v6 setCommandCallback:v3];
}

void MRMediaRemoteSetCommandHandlerBlockForOrigin(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = +[MRClient localClient];
  v4 = [[MRPlayerPath alloc] initWithOrigin:a1 client:v5 player:0];
  MRMediaRemoteSetCommandHandlerBlockForPlayer(v4, v3);
}

void MRMediaRemoteSetCommandHandlerBlockForPlayer(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v5 = [v4 playerClientForPlayerPath:a1];

  v6 = [v5 clientCallbacks];
  [v6 removeCommandHandlerBlockForKey:@"JUST_GOT_SPLASH_BEATS!"];

  if (v3)
  {
    v7 = [v5 clientCallbacks];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __MRMediaRemoteSetCommandHandlerBlockForPlayer_block_invoke;
    v8[3] = &unk_1E76A03F0;
    v9 = v3;
    [v7 addCommandHandlerBlock:v8 forKey:@"JUST_GOT_SPLASH_BEATS!"];
  }
}

void __MRMediaRemoteSetCommandHandlerBlockForPlayer_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v8 = a4;
  v10 = v7(v6, a2, a3);
  v9 = [v10 msv_map:&__block_literal_global_60];
  v8[2](v8, v9);
}

MRSendCommandResultStatus *__MRMediaRemoteSetCommandHandlerBlockForPlayer_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 unsignedIntValue];

  return [MRSendCommandResultStatus statusWithCode:v2];
}

uint64_t MRMediaRemoteAddCommandHandlerBlock(void *a1)
{
  v1 = a1;
  v2 = +[MROrigin localOrigin];
  v3 = MRMediaRemoteAddCommandHandlerBlockForOrigin(v2, v1);

  return v3;
}

uint64_t MRMediaRemoteAddCommandHandlerBlockForOrigin(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  v5 = MRMediaRemoteAddCommandHandlerBlockForPlayer(v4, v3);

  return v5;
}

uint64_t MRMediaRemoteAddCommandHandlerBlockForPlayer(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MRMediaRemoteAddCommandHandlerBlockForPlayer_block_invoke;
  v7[3] = &unk_1E76A0418;
  v8 = v3;
  v4 = v3;
  v5 = MRMediaRemoteAddAsyncCommandHandlerBlockForPlayer(a1, v7);

  return v5;
}

uint64_t MRMediaRemoteAddAsyncCommandHandlerBlockForPlayer(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%08x", arc4random()];
  v5 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v5 playerClientForPlayerPath:a1];

  v7 = [v6 clientCallbacks];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __MRMediaRemoteAddAsyncCommandHandlerBlockForPlayer_block_invoke;
  v10[3] = &unk_1E76A03F0;
  v11 = v3;
  v8 = v3;
  [v7 addCommandHandlerBlock:v10 forKey:v4];

  return v4;
}

void __MRMediaRemoteAddCommandHandlerBlockForPlayer_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v8 = a4;
  v9 = v7(v6, a2, a3);
  v8[2](v8, v9);
}

uint64_t MRMediaRemoteAddAsyncCommandHandlerBlockForOrigin(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  v5 = MRMediaRemoteAddAsyncCommandHandlerBlockForPlayer(v4, v3);

  return v5;
}

void __MRMediaRemoteAddAsyncCommandHandlerBlockForPlayer_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __MRMediaRemoteAddAsyncCommandHandlerBlockForPlayer_block_invoke_2;
    v10[3] = &unk_1E769B2E8;
    v11 = v7;
    (*(v9 + 16))(v9, a2, a3, v10);
  }
}

void __MRMediaRemoteAddAsyncCommandHandlerBlockForPlayer_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 msv_map:&__block_literal_global_20_0];
  (*(v2 + 16))(v2, v3);
}

MRSendCommandResultStatus *__MRMediaRemoteAddAsyncCommandHandlerBlockForPlayer_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 unsignedIntValue];

  return [MRSendCommandResultStatus statusWithCode:v2];
}

void MRMediaRemoteSetCommandHandlerCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v5 = [v4 originClientForOrigin:a1];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MRMediaRemoteSetCommandHandlerCallback_block_invoke;
  v7[3] = &unk_1E76A0440;
  v8 = v3;
  v6 = v3;
  [v5 setCommandCallback:v7];
}

void __MRMediaRemoteSetCommandHandlerCallback_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MRMediaRemoteSetCommandHandlerCallback_block_invoke_2;
  v13[3] = &unk_1E769F1D0;
  v14 = v9;
  v11 = *(v10 + 16);
  v12 = v9;
  v11(v10, a2, a3, a4, v13);
}

void __MRMediaRemoteSetCommandHandlerCallback_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [[MRCommandResult alloc] initWithHandlerStatuses:a3 sendError:a2];
  (*(*(a1 + 32) + 16))();
}

void MRMediaRemoteSetCommandHandlerCallbackForOrigin(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v5 = [v4 originClientForOrigin:a1];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MRMediaRemoteSetCommandHandlerCallbackForOrigin_block_invoke;
  v7[3] = &unk_1E76A0440;
  v8 = v3;
  v6 = v3;
  [v5 setCommandCallback:v7];
}

void __MRMediaRemoteSetCommandHandlerCallbackForOrigin_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MRMediaRemoteSetCommandHandlerCallbackForOrigin_block_invoke_2;
  v13[3] = &unk_1E769B2E8;
  v14 = v9;
  v11 = *(v10 + 16);
  v12 = v9;
  v11(v10, a2, a3, a4, v13);
}

void __MRMediaRemoteSetCommandHandlerCallbackForOrigin_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[MRCommandResult alloc] initWithHandlerStatuses:a2 sendError:0];
  (*(*(a1 + 32) + 16))();
}

void MRMediaRemoteRemoveCommandHandlerBlockForOrigin(uint64_t a1, uint64_t a2)
{
  v3 = [[MRPlayerPath alloc] initWithOrigin:a1 client:0 player:0];
  MRMediaRemoteRemoveCommandHandlerBlockForPlayer(v3, a2);
}

void MRMediaRemoteRemoveCommandHandlerBlockForPlayer(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[MRNowPlayingOriginClientManager sharedManager];
    v6 = [v4 playerClientForPlayerPath:a1];

    v5 = [v6 clientCallbacks];
    [v5 removeCommandHandlerBlockForKey:a2];
  }
}

uint64_t _MRGetVolumeControlCapabilitiesMessageProtobufReadFrom(uint64_t a1, void *a2)
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

MRTelevisionController *MRTelevisionControllerCreate()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(MRTelevisionController);
  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t MRTelevisionControllerIsDiscoveringDevices(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 isDiscovering];
  objc_autoreleasePoolPop(v2);
  return v3;
}

void MRTelevisionControllerSetDiscoveryCallback(void *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  v8 = 0;
  if (v9 && v5)
  {
    v8 = [[_MRTelevisionControllerBlockCallback alloc] initWithCallbackBlock:v5 queue:v9];
  }

  [v7 setDiscoveryCallback:v8];

  objc_autoreleasePoolPop(v6);
}

void MRTelevisionControllerSetRemovalCallback(void *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  v8 = 0;
  if (v9 && v5)
  {
    v8 = [[_MRTelevisionControllerBlockCallback alloc] initWithCallbackBlock:v5 queue:v9];
  }

  [v7 setRemovalCallback:v8];

  objc_autoreleasePoolPop(v6);
}

void MRTelevisionControllerBeginDiscovery(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [a1 beginDiscovery];

  objc_autoreleasePoolPop(v2);
}

void MRTelevisionControllerEndDiscovery(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [a1 endDiscovery];

  objc_autoreleasePoolPop(v2);
}

uint64_t MRAVEndpointGetExternalDevice(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 externalDevice];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVEndpointCopyOutputDevices(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 outputDevices];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRAVEndpointCopyPersonalOutputDevices(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 personalOutputDevices];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRAVEndpointCopyLocalizedName(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 localizedName];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRAVEndpointCopyUniqueIdentifier(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 uniqueIdentifier];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRAVEndpointGetLocalizedName(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 localizedName];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVEndpointGetUniqueIdentifier(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 uniqueIdentifier];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVEndpointIsLocalEndpoint(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 isLocalEndpoint];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVEndpointIsProxyGroupPlayer(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 isProxyGroupPlayer];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVEndpointGetConnectionType(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 connectionType];
  objc_autoreleasePoolPop(v2);
  return v3;
}

void MRAVEndpointCreateWithDevicesAsync(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  if (a3)
  {
    v5 = a3;
    Error = MRMediaRemoteCreateError(3);
    (a3)[2](v5, Error, 0);
  }
}

void MRAVEndpointGroupDevicesAndSendCommandWithResult(void *a1, unsigned int a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_autoreleasePoolPush();
  v17 = NSStringFromSelector("uid");
  v18 = [v11 valueForKeyPath:v17];

  v25[1] = v12;
  v25[0] = a2;
  v25[2] = v13;
  v19 = MRGetSharedService();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __MRAVEndpointGroupDevicesAndSendCommandWithResult_block_invoke;
  v22[3] = &unk_1E76A04F0;
  v20 = v13;
  v23 = v20;
  v21 = v15;
  v24 = v21;
  MRMediaRemoteServiceGroupDevicesAndSendCommand(v19, v18, v25, v14, v22);

  objc_autoreleasePoolPop(v16);
}

void __MRAVEndpointGroupDevicesAndSendCommandWithResult_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[MRCommandResult alloc] initWithResultStatuses:v9 sendError:a2 playerPath:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

void MRAVEndpointGroupDevicesAndSendCommand(void *a1, unsigned int a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __MRAVEndpointGroupDevicesAndSendCommand_block_invoke;
  v15[3] = &unk_1E76A0518;
  v14 = v12;
  v16 = v14;
  MRAVEndpointGroupDevicesAndSendCommandWithResult(a1, a2, a3, a4, v11, v15);

  objc_autoreleasePoolPop(v13);
}

void __MRAVEndpointGroupDevicesAndSendCommand_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [v9 sendError];
  v11 = [v9 handlerReturnStatuses];

  (*(v6 + 16))(v6, v10, v8, v7, v11);
}

void MRAVEndpointPredictGroupLeader(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = NSStringFromSelector("uid");
  v8 = [a1 valueForKeyPath:v7];

  v9 = MRGetSharedService();
  MRMediaRemoteServicePredictGroupLeader(v9, v8, v10, v5);

  objc_autoreleasePoolPop(v6);
}

uint64_t MRAVEndpointCopyDesignatedGroupLeader(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 designatedGroupLeader];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVEndpointGetDesignatedGroupLeader(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 designatedGroupLeader];
  objc_autoreleasePoolPop(v2);
  return v3;
}

void MRAVEndpointSetOutputDeviceVolume(void *a1, void *a2, void *a3, void *a4, float a5)
{
  v9 = a3;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  v12 = MRAVOutputDeviceCopyUniqueIdentifier(a2);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __MRAVEndpointSetOutputDeviceVolume_block_invoke;
  v15[3] = &unk_1E769AD80;
  v13 = v10;
  v16 = v13;
  *&v14 = a5;
  [a1 setOutputDeviceVolume:v12 outputDevice:v9 queue:v15 completion:v14];

  objc_autoreleasePoolPop(v11);
}

void MRAVEndpointGetOutputDeviceVolumeControlCapabilities(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = MRAVOutputDeviceCopyUniqueIdentifier(a2);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __MRAVEndpointGetOutputDeviceVolumeControlCapabilities_block_invoke;
  v12[3] = &unk_1E769E1B8;
  v11 = v8;
  v13 = v11;
  [a1 outputDeviceVolumeControlCapabilities:v10 queue:v7 completion:v12];

  objc_autoreleasePoolPop(v9);
}

uint64_t __MRAVEndpointGetOutputDeviceVolumeControlCapabilities_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRAVEndpointGetOutputDeviceVolume(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = MRAVOutputDeviceCopyUniqueIdentifier(a2);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __MRAVEndpointGetOutputDeviceVolume_block_invoke;
  v12[3] = &unk_1E76A0540;
  v11 = v8;
  v13 = v11;
  [a1 outputDeviceVolume:v10 queue:v7 completion:v12];

  objc_autoreleasePoolPop(v9);
}

uint64_t __MRAVEndpointGetOutputDeviceVolume_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __MRAVEndpointSetOutputDeviceVolume_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRAVEndpointSetOutputDeviceUIDVolume(void *a1, uint64_t a2, void *a3, void *a4, float a5)
{
  v9 = a3;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __MRAVEndpointSetOutputDeviceUIDVolume_block_invoke;
  v14[3] = &unk_1E769AD80;
  v12 = v10;
  v15 = v12;
  *&v13 = a5;
  [a1 setOutputDeviceVolume:a2 outputDevice:v9 queue:v14 completion:v13];

  objc_autoreleasePoolPop(v11);
}

uint64_t __MRAVEndpointSetOutputDeviceUIDVolume_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRAVEndpointAddOutputDevicesWithInitiator(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MRAVEndpointAddOutputDevicesWithInitiator_block_invoke;
  v13[3] = &unk_1E769AD80;
  v12 = v10;
  v14 = v12;
  [a1 migrateToOrAddOutputDevices:a2 initiator:a3 withReplyQueue:v9 completion:v13];

  objc_autoreleasePoolPop(v11);
}

void __MRAVEndpointAddOutputDevicesWithInitiator_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v5 = v3;
    if (MRMediaRemoteErrorIsInformational(v3))
    {

      v4 = 0;
    }

    else
    {
      v4 = v5;
    }

    v6 = v4;
    (*(*(a1 + 32) + 16))();
    v3 = v6;
  }
}

void MRAVEndpointRemoveOutputDevicesWithInitiator(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MRAVEndpointRemoveOutputDevicesWithInitiator_block_invoke;
  v13[3] = &unk_1E769AD80;
  v12 = v10;
  v14 = v12;
  [a1 removeOutputDevices:a2 initiator:a3 withReplyQueue:v9 completion:v13];

  objc_autoreleasePoolPop(v11);
}

void __MRAVEndpointRemoveOutputDevicesWithInitiator_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v5 = v3;
    if (MRMediaRemoteErrorIsInformational(v3))
    {

      v4 = 0;
    }

    else
    {
      v4 = v5;
    }

    v6 = v4;
    (*(*(a1 + 32) + 16))();
    v3 = v6;
  }
}

void MRAVEndpointSetOutputDevicesWithInitiator(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MRAVEndpointSetOutputDevicesWithInitiator_block_invoke;
  v13[3] = &unk_1E769AD80;
  v12 = v10;
  v14 = v12;
  [a1 migrateToOrSetOutputDevices:a2 initiator:a3 withReplyQueue:v9 completion:v13];

  objc_autoreleasePoolPop(v11);
}

void __MRAVEndpointSetOutputDevicesWithInitiator_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v5 = v3;
    if (MRMediaRemoteErrorIsInformational(v3))
    {

      v4 = 0;
    }

    else
    {
      v4 = v5;
    }

    v6 = v4;
    (*(*(a1 + 32) + 16))();
    v3 = v6;
  }
}

void MRAVEndpointModifyOutputDevicesInGroup(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v103 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v57 = a4;
  v63 = a5;
  v59 = a6;
  v55 = [MEMORY[0x1E695DF00] date];
  v13 = [MEMORY[0x1E696AFB0] UUID];
  v14 = [v13 UUIDString];

  v15 = [MEMORY[0x1E695DF90] dictionary];
  switch(a1)
  {
    case 3:
      v16 = _MRLogForCategory(2uLL);
      v22 = [v14 hash];
      if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v23 = v22;
        if (os_signpost_enabled(v16))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_1A2860000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v23, "SetOutputDevicesInGroup", &unk_1A2BB0121, &buf, 2u);
        }
      }

      v19 = @"SetOutputDevicesInGroup";
      goto LABEL_16;
    case 2:
      v16 = _MRLogForCategory(2uLL);
      v20 = [v14 hash];
      if ((v20 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v21 = v20;
        if (os_signpost_enabled(v16))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_1A2860000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v21, "RemoveOutputDevicesInGroup", &unk_1A2BB0121, &buf, 2u);
        }
      }

      v19 = @"RemoveOutputDevicesInGroup";
      goto LABEL_16;
    case 1:
      v16 = _MRLogForCategory(2uLL);
      v17 = [v14 hash];
      if ((v17 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v18 = v17;
        if (os_signpost_enabled(v16))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_1A2860000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v18, "AddOutputDevicesInGroup", &unk_1A2BB0121, &buf, 2u);
        }
      }

      v19 = @"AddOutputDevicesInGroup";
LABEL_16:

      goto LABEL_18;
  }

  v19 = @"UnknownOutputDevicesInGroup";
LABEL_18:
  v24 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:v14 reason:v19];
  v25 = objc_alloc(MEMORY[0x1E696AEC0]);
  v26 = v25;
  if (v12)
  {
    v64 = [v25 initWithFormat:@"group=%@ outputDevices=%@", v12, v11];
  }

  else
  {
    v27 = +[MRAVOutputDevice localDeviceUID];
    v64 = [v26 initWithFormat:@"group=%@ outputDevices=%@", v27, v11];
  }

  v28 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v19, v14];
  v29 = v28;
  if (v64)
  {
    [v28 appendFormat:@" for %@", v64];
  }

  v30 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v29;
    _os_log_impl(&dword_1A2860000, v30, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
  }

  v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.mediaremote.%@.%@", v19, v14];
  if (v63)
  {
    queue = v63;
  }

  else
  {
    v31 = v61;
    v32 = [v61 UTF8String];
    v33 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v34 = qos_class_self();
    v35 = dispatch_queue_attr_make_with_qos_class(v33, v34, 0);
    queue = dispatch_queue_create(v32, v35);
  }

  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __MRAVEndpointModifyOutputDevicesInGroup_block_invoke;
  v89[3] = &unk_1E76A0568;
  v97 = a1;
  v36 = v14;
  v90 = v36;
  v91 = v19;
  v56 = v55;
  v92 = v56;
  v37 = v15;
  v93 = v37;
  v52 = v57;
  v94 = v52;
  v38 = v11;
  v95 = v38;
  v54 = v59;
  v96 = v54;
  v39 = MEMORY[0x1A58E3570](v89);
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_2;
  v82[3] = &unk_1E76A05B8;
  v88 = a1;
  v40 = v36;
  v83 = v40;
  v41 = v37;
  v84 = v41;
  v42 = v12;
  v85 = v42;
  v86 = v19;
  v60 = v24;
  v87 = v60;
  v43 = MEMORY[0x1A58E3570](v82);
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_153;
  v77[3] = &unk_1E76A0630;
  v78 = v19;
  v53 = v40;
  v79 = v53;
  v51 = v38;
  v80 = v51;
  v58 = v41;
  v81 = v58;
  v44 = MEMORY[0x1A58E3570](v77);
  v45 = objc_autoreleasePoolPush();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v99 = 0x3032000000;
  v100 = __Block_byref_object_copy__27;
  v101 = __Block_byref_object_dispose__27;
  v102 = 0;
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x3032000000;
  v75[3] = __Block_byref_object_copy__27;
  v75[4] = __Block_byref_object_dispose__27;
  v76 = 0;
  v46 = dispatch_group_create();
  dispatch_group_enter(v46);
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_166;
  v71[3] = &unk_1E76A0658;
  p_buf = &buf;
  v74 = v75;
  v47 = v46;
  v72 = v47;
  (v43)[2](v43, v42, v71);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_2_167;
  block[3] = &unk_1E76A06A8;
  v68 = v75;
  v48 = v44;
  v69 = &buf;
  v70 = a1;
  v66 = v48;
  v49 = v39;
  v67 = v49;
  dispatch_group_notify(v47, queue, block);

  _Block_object_dispose(v75, 8);
  _Block_object_dispose(&buf, 8);

  objc_autoreleasePoolPop(v45);
  v50 = *MEMORY[0x1E69E9840];
}

void sub_1A29F21C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 160), 8);
  _Unwind_Resume(a1);
}

void __MRAVEndpointModifyOutputDevicesInGroup_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 88);
  if (v7 == 3)
  {
    v8 = _MRLogForCategory(2uLL);
    v13 = [*(a1 + 32) hash];
    if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_14;
    }

    v10 = v13;
    if (!os_signpost_enabled(v8))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v11 = "SetOutputDevicesInGroup";
    goto LABEL_13;
  }

  if (v7 == 2)
  {
    v8 = _MRLogForCategory(2uLL);
    v12 = [*(a1 + 32) hash];
    if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_14;
    }

    v10 = v12;
    if (!os_signpost_enabled(v8))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v11 = "RemoveOutputDevicesInGroup";
    goto LABEL_13;
  }

  if (v7 != 1)
  {
    goto LABEL_15;
  }

  v8 = _MRLogForCategory(2uLL);
  v9 = [*(a1 + 32) hash];
  if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      v11 = "AddOutputDevicesInGroup";
LABEL_13:
      _os_signpost_emit_with_name_impl(&dword_1A2860000, v8, OS_SIGNPOST_INTERVAL_END, v10, v11, &unk_1A2BB0121, buf, 2u);
    }
  }

LABEL_14:

LABEL_15:
  v14 = [v5 debugName];

  v15 = _MRLogForCategory(0xAuLL);
  v16 = v15;
  if (!v6)
  {
    v23 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (!v14)
    {
      if (!v23)
      {
        goto LABEL_28;
      }

      v28 = *(a1 + 32);
      v27 = *(a1 + 40);
      v20 = [MEMORY[0x1E695DF00] date];
      [v20 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138543874;
      v44 = v27;
      v45 = 2114;
      v46 = v28;
      v47 = 2048;
      v48 = v29;
      _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
      goto LABEL_27;
    }

    if (!v23)
    {
      goto LABEL_28;
    }

    v25 = *(a1 + 32);
    v24 = *(a1 + 40);
    v20 = [v5 debugName];
    v21 = [MEMORY[0x1E695DF00] date];
    [v21 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138544130;
    v44 = v24;
    v45 = 2114;
    v46 = v25;
    v47 = 2114;
    v48 = v20;
    v49 = 2048;
    v50 = v26;
    _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
LABEL_22:

LABEL_27:
    goto LABEL_28;
  }

  v17 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (v14)
  {
    if (!v17)
    {
      goto LABEL_28;
    }

    v19 = *(a1 + 32);
    v18 = *(a1 + 40);
    v20 = [v5 debugName];
    v21 = [MEMORY[0x1E695DF00] date];
    [v21 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138544386;
    v44 = v18;
    v45 = 2114;
    v46 = v19;
    v47 = 2114;
    v48 = v6;
    v49 = 2114;
    v50 = v20;
    v51 = 2048;
    v52 = v22;
    _os_log_error_impl(&dword_1A2860000, v16, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
    goto LABEL_22;
  }

  if (v17)
  {
    __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_cold_1(a1);
  }

LABEL_28:

  v30 = MRGroupTopologyModificationRequestTypeDescription(*(a1 + 88));
  [*(a1 + 56) setObject:v30 forKeyedSubscript:@"eventType"];

  [*(a1 + 56) setObject:*(a1 + 64) forKeyedSubscript:@"source"];
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 72), "count")}];
  [*(a1 + 56) setObject:v31 forKeyedSubscript:@"numberOfDevices"];

  v32 = [v6 localizedFailureReason];
  [*(a1 + 56) setObject:v32 forKeyedSubscript:@"errorMessage"];

  v33 = MEMORY[0x1E696AD98];
  if (v6)
  {
    v34 = [v6 isInformational];
  }

  else
  {
    v34 = 1;
  }

  v35 = [v33 numberWithInt:v34];
  [*(a1 + 56) setObject:v35 forKeyedSubscript:@"success"];

  v36 = MEMORY[0x1E696AD98];
  [*(a1 + 48) timeIntervalSinceNow];
  v38 = [v36 numberWithDouble:fabs(v37)];
  [*(a1 + 56) setObject:v38 forKeyedSubscript:@"duration"];

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_96;
  v41[3] = &unk_1E769DDB0;
  v42 = *(a1 + 56);
  MRAnalyticsSendEvent(@"com.apple.mediaremote.endpoint.modify.wha", 0, v41);
  v39 = *(a1 + 80);
  if (v39)
  {
    (*(v39 + 16))(v39, v6);
  }

  v40 = *MEMORY[0x1E69E9840];
}

void __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DF00] now];
  v8 = *(a1 + 72);
  switch(v8)
  {
    case 3:
      v9 = _MRLogForCategory(2uLL);
      v15 = [*(a1 + 32) hash];
      if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v16 = v15;
        if (os_signpost_enabled(v9))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A2860000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v16, "SetOutputDevicesInGroup.fetchGroupLeader", &unk_1A2BB0121, buf, 2u);
        }
      }

      v12 = @"SetOutputDevicesInGroup.fetchGroupLeader";
      goto LABEL_16;
    case 2:
      v9 = _MRLogForCategory(2uLL);
      v13 = [*(a1 + 32) hash];
      if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v14 = v13;
        if (os_signpost_enabled(v9))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A2860000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "RemoveOutputDevicesInGroup.fetchGroupLeader", &unk_1A2BB0121, buf, 2u);
        }
      }

      v12 = @"RemoveOutputDevicesInGroup.fetchGroupLeader";
      goto LABEL_16;
    case 1:
      v9 = _MRLogForCategory(2uLL);
      v10 = [*(a1 + 32) hash];
      if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v11 = v10;
        if (os_signpost_enabled(v9))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A2860000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "AddOutputDevicesInGroup.fetchGroupLeader", &unk_1A2BB0121, buf, 2u);
        }
      }

      v12 = @"AddOutputDevicesInGroup.fetchGroupLeader";
LABEL_16:

      goto LABEL_18;
  }

  v12 = @"UnknownOutputDevicesInGroup.fetchGroupLeader";
LABEL_18:
  v17 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v12, *(a1 + 32)];
  v18 = v17;
  if (v5)
  {
    [v17 appendFormat:@" for %@", v5];
  }

  v19 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v66 = v18;
    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_114;
  v55[3] = &unk_1E76A0568;
  v56 = *(a1 + 40);
  v57 = @"fetchGroupLeader";
  v20 = v7;
  v21 = *(a1 + 72);
  v48 = v20;
  v58 = v20;
  v63 = v21;
  v59 = *(a1 + 32);
  v22 = v5;
  v60 = v22;
  v61 = v12;
  v23 = v6;
  v62 = v23;
  v24 = MEMORY[0x1A58E3570](v55);
  v25 = +[MRDeviceInfoRequest localDeviceInfo];
  v26 = [v25 isGroupLeader];
  v27 = [v25 isAirPlayActive];
  v28 = +[MRAVClusterController sharedController];
  v29 = [v28 clusterStatus];

  v30 = [v25 deviceUID];
  v31 = [v25 groupUID];
  v32 = [v30 isEqual:v22];
  if (*(a1 + 48) && (((v32 ^ 1 | v27) & 1) != 0 || v29))
  {
    v37 = v32 ^ 1 | v26;
    v38 = _MRLogForCategory(0xAuLL);
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
    if (v37)
    {
      if (v39)
      {
        v40 = *(a1 + 56);
        v41 = *(a1 + 32);
        *buf = 138543874;
        v66 = v40;
        v67 = 2114;
        v68 = v41;
        v69 = 2112;
        v70 = @"Processing modification by searching network for pilot device and it's group leader.";
        _os_log_impl(&dword_1A2860000, v38, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      [*(a1 + 40) setObject:@"pilot" forKeyedSubscript:@"groupLeaderSelection"];
      v42 = [MRAVReconnaissanceSession alloc];
      v64 = v22;
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
      v44 = [(MRAVReconnaissanceSession *)v42 initWithOutputDeviceUIDs:v43 features:8 details:*(a1 + 64)];
    }

    else
    {
      if (v39)
      {
        v45 = *(a1 + 56);
        v46 = *(a1 + 32);
        *buf = 138543874;
        v66 = v45;
        v67 = 2114;
        v68 = v46;
        v69 = 2112;
        v70 = @"Processing modification by searching network for group leader.";
        _os_log_impl(&dword_1A2860000, v38, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      [*(a1 + 40) setObject:@"remote" forKeyedSubscript:@"groupLeaderSelection"];
      v44 = [[MRAVReconnaissanceSession alloc] initWithOutputDeviceGroupUID:v31 features:8 details:*(a1 + 64)];
    }

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_143;
    v49[3] = &unk_1E76A0590;
    v50 = v44;
    v51 = v30;
    v52 = v25;
    v53 = *(a1 + 40);
    v54 = v24;
    v36 = v44;
    [(MRAVReconnaissanceSession *)v36 beginSearchWithTimeout:v49 completion:2.0];
  }

  else
  {
    v33 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 56);
      v35 = *(a1 + 32);
      *buf = 138543874;
      v66 = v34;
      v67 = 2114;
      v68 = v35;
      v69 = 2112;
      v70 = @"Processing modification as a local modification.";
      _os_log_impl(&dword_1A2860000, v33, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    [*(a1 + 40) setObject:@"local" forKeyedSubscript:@"groupLeaderSelection"];
    [*(a1 + 40) setObject:@"local" forKeyedSubscript:@"groupLeaderType"];
    v36 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    (v24)[2](v24, v36, 0);
  }

  v47 = *MEMORY[0x1E69E9840];
}

void __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_114(uint64_t a1, void *a2, void *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E696AD98];
  [*(a1 + 48) timeIntervalSinceNow];
  v9 = [v7 numberWithDouble:fabs(v8)];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:*(a1 + 40)];

  v10 = *(a1 + 88);
  if (v10 == 3)
  {
    v11 = _MRLogForCategory(2uLL);
    v16 = [*(a1 + 56) hash];
    if ((v16 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_14;
    }

    v13 = v16;
    if (!os_signpost_enabled(v11))
    {
      goto LABEL_14;
    }

    LOWORD(v61) = 0;
    v14 = "SetOutputDevicesInGroup.fetchGroupLeader";
    goto LABEL_13;
  }

  if (v10 == 2)
  {
    v11 = _MRLogForCategory(2uLL);
    v15 = [*(a1 + 56) hash];
    if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_14;
    }

    v13 = v15;
    if (!os_signpost_enabled(v11))
    {
      goto LABEL_14;
    }

    LOWORD(v61) = 0;
    v14 = "RemoveOutputDevicesInGroup.fetchGroupLeader";
    goto LABEL_13;
  }

  if (v10 != 1)
  {
    goto LABEL_15;
  }

  v11 = _MRLogForCategory(2uLL);
  v12 = [*(a1 + 56) hash];
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      LOWORD(v61) = 0;
      v14 = "AddOutputDevicesInGroup.fetchGroupLeader";
LABEL_13:
      _os_signpost_emit_with_name_impl(&dword_1A2860000, v11, OS_SIGNPOST_INTERVAL_END, v13, v14, &unk_1A2BB0121, &v61, 2u);
    }
  }

LABEL_14:

LABEL_15:
  if (!v6)
  {
    v28 = [v5 debugName];

    v29 = *(a1 + 64);
    v18 = _MRLogForCategory(0xAuLL);
    v30 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (!v28)
    {
      if (v29)
      {
        if (!v30)
        {
          goto LABEL_36;
        }

        v43 = *(a1 + 64);
        v42 = *(a1 + 72);
        v44 = *(a1 + 56);
        v23 = [MEMORY[0x1E695DF00] date];
        [v23 timeIntervalSinceDate:*(a1 + 48)];
        v61 = 138544130;
        v62 = v42;
        v63 = 2114;
        v64 = v44;
        v65 = 2114;
        v66 = v43;
        v67 = 2048;
        v68 = v45;
        v46 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v47 = v18;
        v48 = 42;
      }

      else
      {
        if (!v30)
        {
          goto LABEL_36;
        }

        v52 = *(a1 + 72);
        v53 = *(a1 + 56);
        v23 = [MEMORY[0x1E695DF00] date];
        [v23 timeIntervalSinceDate:*(a1 + 48)];
        v61 = 138543874;
        v62 = v52;
        v63 = 2114;
        v64 = v53;
        v65 = 2048;
        v66 = v54;
        v46 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v47 = v18;
        v48 = 32;
      }

      _os_log_impl(&dword_1A2860000, v47, OS_LOG_TYPE_DEFAULT, v46, &v61, v48);
      goto LABEL_35;
    }

    if (v29)
    {
      if (!v30)
      {
        goto LABEL_36;
      }

      v31 = *(a1 + 72);
      v32 = *(a1 + 56);
      v23 = [v5 debugName];
      v33 = *(a1 + 64);
      v34 = [MEMORY[0x1E695DF00] date];
      [v34 timeIntervalSinceDate:*(a1 + 48)];
      v61 = 138544386;
      v62 = v31;
      v63 = 2114;
      v64 = v32;
      v65 = 2112;
      v66 = v23;
      v67 = 2114;
      v68 = v33;
      v69 = 2048;
      v70 = v35;
      v36 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v37 = v18;
      v38 = 52;
    }

    else
    {
      if (!v30)
      {
        goto LABEL_36;
      }

      v49 = *(a1 + 72);
      v50 = *(a1 + 56);
      v23 = [v5 debugName];
      v34 = [MEMORY[0x1E695DF00] date];
      [v34 timeIntervalSinceDate:*(a1 + 48)];
      v61 = 138544130;
      v62 = v49;
      v63 = 2114;
      v64 = v50;
      v65 = 2112;
      v66 = v23;
      v67 = 2048;
      v68 = v51;
      v36 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v37 = v18;
      v38 = 42;
    }

    _os_log_impl(&dword_1A2860000, v37, OS_LOG_TYPE_DEFAULT, v36, &v61, v38);

    goto LABEL_35;
  }

  v17 = *(a1 + 64);
  v18 = _MRLogForCategory(0xAuLL);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
  if (v17)
  {
    if (v19)
    {
      v21 = *(a1 + 64);
      v20 = *(a1 + 72);
      v22 = *(a1 + 56);
      v23 = [MEMORY[0x1E695DF00] date];
      [v23 timeIntervalSinceDate:*(a1 + 48)];
      v61 = 138544386;
      v62 = v20;
      v63 = 2114;
      v64 = v22;
      v65 = 2114;
      v66 = v6;
      v67 = 2114;
      v68 = v21;
      v69 = 2048;
      v70 = v24;
      v25 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
      v26 = v18;
      v27 = 52;
LABEL_25:
      _os_log_error_impl(&dword_1A2860000, v26, OS_LOG_TYPE_ERROR, v25, &v61, v27);
LABEL_35:
    }
  }

  else if (v19)
  {
    v39 = *(a1 + 72);
    v40 = *(a1 + 56);
    v23 = [MEMORY[0x1E695DF00] date];
    [v23 timeIntervalSinceDate:*(a1 + 48)];
    v61 = 138544130;
    v62 = v39;
    v63 = 2114;
    v64 = v40;
    v65 = 2114;
    v66 = v6;
    v67 = 2048;
    v68 = v41;
    v25 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
    v26 = v18;
    v27 = 42;
    goto LABEL_25;
  }

LABEL_36:

  (*(*(a1 + 80) + 16))(*(a1 + 80), v5, v6, v55, v56, v57, v58, v59);
  v60 = *MEMORY[0x1E69E9840];
}

void __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_143(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (!v8)
  {
    v11 = v9;
    if ([v11 code] == 26)
    {
      v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:47 format:{@"Timedout after %lf seconds trying discover groupLeader. Discovered=%@", 0x4000000000000000, v7}];

      v11 = v21;
    }

    v22 = _MRLogForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_143_cold_1(v11, v22);
    }

    v23 = *(*(a1 + 64) + 16);
    goto LABEL_26;
  }

  v11 = [v8 outputDevices];
  if (!*(a1 + 40) && ([v8 isLocalEndpoint] & 1) != 0)
  {
LABEL_22:
    if ([v8 isLocalEndpoint])
    {
      v24 = @"local";
    }

    else
    {
      v24 = @"remote";
    }

    [*(a1 + 56) setObject:v24 forKeyedSubscript:@"groupLeaderType"];
    v23 = *(*(a1 + 64) + 16);
LABEL_26:
    v23();
    goto LABEL_27;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    v26 = v9;
    while (2)
    {
      v16 = v10;
      v17 = v7;
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        if ((MRAVOutputDeviceIsGroupLeader(v19) & 1) != 0 || (MRAVOutputDeviceGroupContainsGroupLeader(v19) & 1) != 0 || [*(a1 + 48) isGroupLeader] && MRAVOutputDeviceIsLocalDevice(v19))
        {

          v7 = v17;
          v10 = v16;
          v9 = v26;
          goto LABEL_22;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      v7 = v17;
      v10 = v16;
      v9 = v26;
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v20 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:33 format:{@"No suitable group leader to modify: %@", v8}];
  (*(*(a1 + 64) + 16))();

  v11 = v12;
LABEL_27:

  v25 = *MEMORY[0x1E69E9840];
}

void __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_153(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E695DF00] now];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", *(a1 + 32), @"routingOperation"];
  v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v10, *(a1 + 40)];
  v12 = v11;
  if (*(a1 + 48))
  {
    [v11 appendFormat:@" for %@", *(a1 + 48)];
  }

  v13 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v50 = v12;
    _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_160;
  v41[3] = &unk_1E769D798;
  v42 = *(a1 + 56);
  v43 = @"routingOperation";
  v14 = v9;
  v44 = v14;
  v45 = *(a1 + 48);
  v15 = v10;
  v46 = v15;
  v47 = *(a1 + 40);
  v16 = v8;
  v48 = v16;
  v17 = MEMORY[0x1A58E3570](v41);
  v18 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:*(a1 + 40) reason:*(a1 + 32)];
  switch(a2)
  {
    case 3:
      if ([v7 isGroupable])
      {
        v24 = +[MRUserSettings currentSettings];
        v25 = [v24 supportTwoStageMove];

        if (v25)
        {
          v26 = v7;
          v27 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:v18 type:1 outputDeviceUIDs:*(a1 + 48)];
          v28 = qos_class_self();
          v29 = dispatch_get_global_queue(v28, 0);
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_163;
          v33[3] = &unk_1E76A0608;
          v40 = v17;
          v34 = v18;
          v35 = *(a1 + 48);
          v36 = v26;
          v37 = v15;
          v38 = *(a1 + 40);
          v39 = v14;
          v30 = v26;
          [v30 modifyTopologyWithRequest:v27 withReplyQueue:v29 completion:v33];

LABEL_18:
          break;
        }
      }

      v22 = [MRGroupTopologyModificationRequest alloc];
      v21 = *(a1 + 48);
      v23 = v18;
      v20 = 3;
LABEL_17:
      v27 = [(MRGroupTopologyModificationRequest *)v22 initWithRequestDetails:v23 type:v20 outputDeviceUIDs:v21];
      v31 = qos_class_self();
      v30 = dispatch_get_global_queue(v31, 0);
      [v7 modifyTopologyWithRequest:v27 withReplyQueue:v30 completion:v17];
      goto LABEL_18;
    case 2:
      v22 = [MRGroupTopologyModificationRequest alloc];
      v21 = *(a1 + 48);
      v23 = v18;
      v20 = 2;
      goto LABEL_17;
    case 1:
      v19 = [MRGroupTopologyModificationRequest alloc];
      if ([v7 isGroupable])
      {
        v20 = 1;
      }

      else
      {
        v20 = 3;
      }

      v21 = *(a1 + 48);
      v22 = v19;
      v23 = v18;
      goto LABEL_17;
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_160(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E696AD98];
  [*(a1 + 48) timeIntervalSinceNow];
  v6 = [v4 numberWithDouble:fabs(v5)];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:*(a1 + 40)];

  v7 = *(a1 + 56);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (!v3)
  {
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v19)
      {
        goto LABEL_15;
      }

      v21 = *(a1 + 64);
      v20 = *(a1 + 72);
      v22 = *(a1 + 56);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 48)];
      v40 = 138544130;
      v41 = v21;
      v42 = 2114;
      v43 = v20;
      v44 = 2114;
      v45 = v22;
      v46 = 2048;
      v47 = v23;
      v24 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v25 = v9;
      v26 = 42;
    }

    else
    {
      if (!v19)
      {
        goto LABEL_15;
      }

      v30 = *(a1 + 64);
      v31 = *(a1 + 72);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 48)];
      v40 = 138543874;
      v41 = v30;
      v42 = 2114;
      v43 = v31;
      v44 = 2048;
      v45 = v32;
      v24 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v25 = v9;
      v26 = 32;
    }

    _os_log_impl(&dword_1A2860000, v25, OS_LOG_TYPE_DEFAULT, v24, &v40, v26);
    goto LABEL_14;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v10)
    {
      v12 = *(a1 + 64);
      v11 = *(a1 + 72);
      v13 = *(a1 + 56);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 48)];
      v40 = 138544386;
      v41 = v12;
      v42 = 2114;
      v43 = v11;
      v44 = 2114;
      v45 = v3;
      v46 = 2114;
      v47 = v13;
      v48 = 2048;
      v49 = v15;
      v16 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
      v17 = v9;
      v18 = 52;
LABEL_10:
      _os_log_error_impl(&dword_1A2860000, v17, OS_LOG_TYPE_ERROR, v16, &v40, v18);
LABEL_14:
    }
  }

  else if (v10)
  {
    v27 = *(a1 + 64);
    v28 = *(a1 + 72);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 48)];
    v40 = 138544130;
    v41 = v27;
    v42 = 2114;
    v43 = v28;
    v44 = 2114;
    v45 = v3;
    v46 = 2048;
    v47 = v29;
    v16 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
    v17 = v9;
    v18 = 42;
    goto LABEL_10;
  }

LABEL_15:

  (*(*(a1 + 80) + 16))(*(a1 + 80), v3, v33, v34, v35, v36, v37, v38);
  v39 = *MEMORY[0x1E69E9840];
}

void __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_163(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 80) + 16);
  if (a2)
  {

    v3();
  }

  else
  {
    v3();
    v4 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:*(a1 + 32) type:3 outputDeviceUIDs:*(a1 + 40)];
    v5 = *(a1 + 48);
    v6 = qos_class_self();
    v7 = dispatch_get_global_queue(v6, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_2_164;
    v8[3] = &unk_1E76A05E0;
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    [v5 modifyTopologyWithRequest:v4 withReplyQueue:v7 completion:v8];
  }
}

void __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_2_164(void *a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[4];
  v5 = _MRLogForCategory(0xAuLL);
  v6 = v5;
  if (!v3)
  {
    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v15 = a1[5];
      v14 = a1[6];
      v16 = a1[4];
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:a1[7]];
      v25 = 138544130;
      v26 = v15;
      v27 = 2114;
      v28 = v14;
      v29 = 2114;
      v30 = v16;
      v31 = 2048;
      v32 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v6;
      v20 = 42;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v21 = a1[5];
      v22 = a1[6];
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:a1[7]];
      v25 = 138543874;
      v26 = v21;
      v27 = 2114;
      v28 = v22;
      v29 = 2048;
      v30 = v23;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v6;
      v20 = 32;
    }

    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, v18, &v25, v20);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v7)
    {
      v9 = a1[5];
      v8 = a1[6];
      v10 = a1[4];
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:a1[7]];
      v25 = 138544386;
      v26 = v9;
      v27 = 2114;
      v28 = v8;
      v29 = 2114;
      v30 = v3;
      v31 = 2114;
      v32 = v10;
      v33 = 2048;
      v34 = v12;
      _os_log_error_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v25, 0x34u);
LABEL_13:
    }
  }

  else if (v7)
  {
    __103__MRNowPlayingRequest_AudioFade__triggerAudioFadeOutForNowPlayingApplicationWithReplyQueue_completion___block_invoke_14_cold_1(a1);
  }

LABEL_14:

  v24 = *MEMORY[0x1E69E9840];
}

void __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_166(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a2;
  v7 = a3;
  v12 = v7;
  v8 = *(*(a1 + 48) + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  if (v11)
  {
    v7 = v10;
  }

  objc_storeStrong(v9, v7);
  dispatch_group_leave(*(a1 + 32));
}

void __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_2_167(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 64);
    v5 = *(*(*(a1 + 56) + 8) + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __MRAVEndpointModifyOutputDevicesInGroup_block_invoke_3;
    v9[3] = &unk_1E76A0680;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v10 = v7;
    v11 = v8;
    (*(v6 + 16))(v6, v4, v5, v9);
  }
}

void MRAVEndpointAddOutputDevicesToGroupFromSource(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MRAVEndpointAddOutputDevicesToGroupFromSource_block_invoke;
  v11[3] = &unk_1E769AD80;
  v12 = v9;
  v10 = v9;
  MRAVEndpointModifyOutputDevicesInGroup(1, a2, a1, a3, a4, v11);
}

uint64_t __MRAVEndpointAddOutputDevicesToGroupFromSource_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRAVEndpointRemoveOutputDevicesFromGroupFromSource(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MRAVEndpointRemoveOutputDevicesFromGroupFromSource_block_invoke;
  v11[3] = &unk_1E769AD80;
  v12 = v9;
  v10 = v9;
  MRAVEndpointModifyOutputDevicesInGroup(2, a2, a1, a3, a4, v11);
}

uint64_t __MRAVEndpointRemoveOutputDevicesFromGroupFromSource_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRAVEndpointMoveOutputGroupToDevicesFromSource(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MRAVEndpointMoveOutputGroupToDevicesFromSource_block_invoke;
  v11[3] = &unk_1E769AD80;
  v12 = v9;
  v10 = v9;
  MRAVEndpointModifyOutputDevicesInGroup(3, a2, a1, a3, a4, v11);
}

uint64_t __MRAVEndpointMoveOutputGroupToDevicesFromSource_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t MRAVEndpointCanModifyGroupMembership(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 canModifyGroupMembership];
  objc_autoreleasePoolPop(v2);
  return v3;
}

void MRAVEndpointMigrate(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MRAVEndpointMigrate_block_invoke;
  v11[3] = &unk_1E769AD80;
  v10 = v8;
  v12 = v10;
  [a1 migrateToEndpoint:a2 request:0 queue:v7 completion:v11];

  objc_autoreleasePoolPop(v9);
}

uint64_t __MRAVEndpointMigrate_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRAVEndpointGetMyGroupLeaderWithTimeout(void *a1, void *a2, double a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [[MRRequestDetails alloc] initWithName:@"MRAVEndpointGetMyGroupLeaderWithTimeout" requestID:0 reason:@"LegacyAPI"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MRAVEndpointGetMyGroupLeaderWithTimeout_block_invoke;
  v9[3] = &unk_1E76A06D0;
  v10 = v5;
  v8 = v5;
  [MRAVEndpoint findMyGroupLeaderWithTimeout:v7 details:v6 queue:v9 completion:a3];
}

uint64_t _MRGroupSessionIdentityShareReplyMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(_MRGroupSessionParticipantProtobuf);
        v14 = 8;
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

        v13 = objc_alloc_init(_MRGroupSessionParticipantProtobuf);
        v14 = 16;
      }

      objc_storeStrong((a1 + v14), v13);
      v17[0] = 0;
      v17[1] = 0;
      if (!PBReaderPlaceMark() || !_MRGroupSessionParticipantProtobufReadFrom(v13, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRPresentRouteAuthorizationStatusMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 20) |= 1u;
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
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
        objc_storeStrong((a1 + 8), v13);
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

id MRMusicHandoffSessionGetQueue()
{
  if (MRMusicHandoffSessionGetQueue_onceToken != -1)
  {
    MRMusicHandoffSessionGetQueue_cold_1();
  }

  v1 = MRMusicHandoffSessionGetQueue___queue;

  return v1;
}

void __MRMusicHandoffSessionGetQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MediaRemote.MRMusicHandoffSession", v2);
  v1 = MRMusicHandoffSessionGetQueue___queue;
  MRMusicHandoffSessionGetQueue___queue = v0;
}

uint64_t _MRGroupSessionErrorReplyMessageProtobufReadFrom(uint64_t a1, void *a2)
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

uint64_t _MRTextInputMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v30 = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v30 & 0x7F) << v18;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_38;
          }
        }

        v24 = [a2 hasError] ? 0 : v20;
LABEL_38:
        *(a1 + 16) = v24;
      }

      else if (v13 == 2)
      {
        v16 = PBReaderReadString();
        v17 = *(a1 + 24);
        *(a1 + 24) = v16;
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

void MRTelevisionServiceDeletePairingIdentity(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1;
  v4 = MRGetSharedService();
  MRMediaRemoteServiceTelevisionServerDeletePairingIdentity(v4, v5, v3);
}

void MRTelevisionServiceGetPairedDevices(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1;
  v4 = MRGetSharedService();
  MRMediaRemoteServiceTelevisionGetPairedDevices(v4, v5, v3);
}

void MRTelevisionServiceDeletePairedDevice(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = MRGetSharedService();
  MRMediaRemoteServiceTelevisionDeletePairedDevice(v6, a1, v7, v5);
}

void MRTelevisionServiceSetMessageLogging(BOOL a1)
{
  v2 = MRGetSharedService();

  MRMediaRemoteServiceTelevisionSetMessageLogging(v2, a1);
}

void MRTelevisionServiceSetEndpoint(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = MRGetSharedService();
  MRMediaRemoteServiceSetTelevisionEndpoint(v3, a1, v4);
}

void *MRTelevisionServiceGetEndpoint()
{
  if (MRTelevisionServiceGetEndpoint___once != -1)
  {
    MRTelevisionServiceGetEndpoint_cold_1();
  }

  return &MRTelevisionServiceGetEndpoint___endpoint;
}

void __MRTelevisionServiceGetEndpoint_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.mediaremote.televisionService", v0);
  v2 = MRTelevisionServiceGetEndpoint___queue;
  MRTelevisionServiceGetEndpoint___queue = v1;

  v3 = MRTelevisionServiceGetEndpoint___queue;

  MRTelevisionServiceSetEndpoint(&MRTelevisionServiceGetEndpoint___endpoint, v3);
}

void MRTelevisionServiceSetCustomDataCallback(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (MRTelevisionServiceGetEndpoint___once != -1)
  {
    MRTelevisionServiceGetEndpoint_cold_1();
  }

  if (qword_1EB09E938)
  {
    CFRelease(qword_1EB09E938);
  }

  qword_1EB09E938 = [v3 copy];
}

void MRTelevisionServiceSendCustomData(uint64_t a1, uint64_t a2)
{
  v4 = MRGetSharedService();

  MRMediaRemoteServiceTelevisionSendCustomData(v4, a1, a2);
}

uint64_t _MRPlayerClientPropertiesMessageProtobufReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 24) |= 1u;
        v19[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:v19 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v19[0];
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
        objc_storeStrong((a1 + 16), v13);
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v13->super.super.isa, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRMusicHandoffEventProtobufReadFrom(uint64_t a1, void *a2)
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
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
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

uint64_t MRPairedDeviceCopyName(void *a1)
{
  v1 = [a1 name];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRPairedDeviceCopyIdentifier(void *a1)
{
  v1 = [a1 identifier];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRPairedDeviceCopyLocalizedModelName(void *a1)
{
  v1 = [a1 localizedModelName];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRPairedDeviceCopyBuildVersion(void *a1)
{
  v1 = [a1 buildVersion];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRPairedDeviceCopyBundleIdentifier(void *a1)
{
  v1 = [a1 bundleIdentifier];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRPairedDeviceCopyBundleVersion(void *a1)
{
  v1 = [a1 bundleVersion];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRPairedDeviceCopySystemMediaApplication(void *a1)
{
  v1 = [a1 systemMediaApplication];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRPairedDeviceEqualToPairedDevice(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqual:{a2, v2, v3}];
  }
}

uint64_t MRPairedDeviceCopyGroupUID(void *a1)
{
  v1 = [a1 groupUID];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRPairedDeviceCopyGroupName(void *a1)
{
  v1 = [a1 groupName];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRPairedDeviceCopySenderDefaultGroupUID(void *a1)
{
  v1 = [a1 senderDefaultGroupUID];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRPairedDeviceCopyManagedConfigDeviceID(void *a1)
{
  v1 = [a1 managedConfigurationDeviceIdentifier];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRPairedDeviceIsTightlySyncedGroup(void *a1)
{
  v1 = a1;
  v2 = [v1 tightSyncUID];
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = [v1 isTightSyncGroup];
  }

  return v3;
}

uint64_t MRPairedDeviceCopyTightSyncUID(void *a1)
{
  v1 = [a1 tightSyncUID];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRPairedDeviceGetSharedQueueVersion(void *a1)
{
  v1 = a1;
  if ([v1 hasSharedQueueVersion])
  {
    v2 = [v1 sharedQueueVersion];
  }

  else
  {
    v2 = [v1 supportsSharedQueue];
  }

  return v2;
}

void MRPairedDeviceSetTightSyncUID(void *a1, uint64_t a2)
{
  v3 = a1;
  [v3 setTightSyncUID:a2];
  if (a2)
  {
    [v3 setTightSyncGroup:1];
  }
}

uint64_t MRPairedDeviceCopyBluetoothAddress(void *a1)
{
  v1 = [a1 bluetoothAddress];
  v2 = [v1 copy];

  return v2;
}

void MRPairedDeviceSetGroupedDevices(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 mutableCopy];
  [v3 setGroupedDevices:v4];
}

uint64_t MRPairedDeviceCopyGroupedDevices(void *a1)
{
  v1 = [a1 groupedDevices];
  v2 = [v1 copy];

  return v2;
}

void MRPairedDeviceSetAirPlayReceivers(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 mutableCopy];
  [v3 setAirPlayReceivers:v4];
}

uint64_t MRPairedDeviceCopyAirPlayReceivers(void *a1)
{
  v1 = [a1 airPlayReceivers];
  v2 = [v1 copy];

  return v2;
}

void MRPairedDeviceMerge(uint64_t a1, uint64_t a2)
{
  if (a1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    MRPairedDeviceMerge_cold_1();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRPairedDeviceMerge_cold_2();
  }
}

uint64_t MRPairedDeviceCreateFromExternalRepresentation(uint64_t a1)
{
  v2 = [MRDeviceInfo alloc];

  return [(MRDeviceInfo *)v2 initWithData:a1];
}

void MRMediaRemoteGetDeviceInfo(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __MRMediaRemoteGetDeviceInfo_block_invoke;
    v7[3] = &unk_1E76A09A8;
    v8 = v5;
    [MRDeviceInfoRequest deviceInfoForOrigin:a1 queue:a2 completion:v7];
  }
}

id MRPairedDevicesCopyDescription(const __CFArray *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i != v4; ++i)
    {
      v6 = [CFArrayGetValueAtIndex(a1 i)];
      [v2 appendString:v6];
    }
  }

  return v2;
}

id MRPairedDevicesCopyMinimalDescription(const __CFArray *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i != v4; ++i)
    {
      v6 = [CFArrayGetValueAtIndex(a1 i)];
      [v2 appendString:v6];
    }
  }

  return v2;
}

uint64_t _MRGameControllerMotionProtobufReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_MRGameControllerAccelerationProtobuf);
          v15 = 8;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_24:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }

            goto LABEL_31;
          }

          v14 = objc_alloc_init(_MRGameControllerAccelerationProtobuf);
          v15 = 24;
        }
      }

      else if (v13 == 1)
      {
        v14 = objc_alloc_init(_MRGameControllerAccelerationProtobuf);
        v15 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_24;
        }

        v14 = objc_alloc_init(_MRGameControllerAccelerationProtobuf);
        v15 = 32;
      }

      objc_storeStrong((a1 + v15), v14);
      v18[0] = 0;
      v18[1] = 0;
      if (!PBReaderPlaceMark() || !_MRGameControllerAccelerationProtobufReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_31:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRSystemPlaybackQueueProtobufReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 > 7)
        {
          if (v13 == 8)
          {
            v22 = PBReaderReadData();
            v23 = 56;
            goto LABEL_64;
          }

          if (v13 == 9)
          {
            v22 = PBReaderReadData();
            v23 = 24;
            goto LABEL_64;
          }
        }

        else
        {
          if (v13 == 6)
          {
            v21 = objc_alloc_init(_MRSystemPlaybackCustomDataQueueProtobuf);
            objc_storeStrong((a1 + 8), v21);
            v41 = 0;
            v42 = 0;
            if (!PBReaderPlaceMark() || !_MRSystemPlaybackCustomDataQueueProtobufReadFrom(v21, a2))
            {
LABEL_80:

              return 0;
            }

            goto LABEL_53;
          }

          if (v13 == 7)
          {
            v21 = objc_alloc_init(_MRSystemPlaybackGenericTracklistQueueProtobuf);
            objc_storeStrong((a1 + 40), v21);
            v41 = 0;
            v42 = 0;
            if (!PBReaderPlaceMark() || !_MRSystemPlaybackGenericTracklistQueueProtobufReadFrom(v21, a2))
            {
              goto LABEL_80;
            }

LABEL_53:
            PBReaderRecallMark();

            goto LABEL_78;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 68) |= 2u;
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
            v11 = v31++ >= 9;
            if (v11)
            {
              LOBYTE(v36) = 0;
              goto LABEL_72;
            }
          }

          v36 = (v32 != 0) & ~[a2 hasError];
LABEL_72:
          *(a1 + 64) = v36;
          goto LABEL_78;
        }

        if (v13 == 4)
        {
          v22 = PBReaderReadString();
          v23 = 16;
LABEL_64:
          v37 = *(a1 + v23);
          *(a1 + v23) = v22;

          goto LABEL_78;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
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
              v20 = 0;
              goto LABEL_70;
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

LABEL_70:
          v38 = 48;
          goto LABEL_77;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 68) |= 1u;
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
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_76;
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

LABEL_76:
          v38 = 32;
LABEL_77:
          *(a1 + v38) = v20;
          goto LABEL_78;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_78:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MRPlaybackSessionRequestCopyRequestID(void *a1)
{
  v1 = [a1 requestIdentifier];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRPlaybackSessionRequestCopyIdentifier(void *a1)
{
  v1 = [a1 identifier];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRPlaybackSessionRequestCopyType(void *a1)
{
  v1 = [a1 type];
  v2 = [v1 copy];

  return v2;
}

uint64_t _MRGroupSessionJoinRequestProtobufReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadString();
        if (v14)
        {
          [a1 addOobKeys:v14];
        }

        goto LABEL_26;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_MRUserIdentityProtobuf);
        objc_storeStrong((a1 + 16), v14);
        v18[0] = 0;
        v18[1] = 0;
        if (!PBReaderPlaceMark() || !_MRUserIdentityProtobufReadFrom(v14, a2))
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
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = PBReaderReadString();
    v14 = *(a1 + 8);
    *(a1 + 8) = v15;
LABEL_26:

    goto LABEL_28;
  }

  return [a2 hasError] ^ 1;
}

void sub_1A2A03304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MRLanguageOptionProtobufReadFrom(uint64_t a1, void *a2)
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
        v27 = 0;
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v28 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v28 & 0x7F) << v18;
            if ((v28 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_44;
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

LABEL_44:
          *(a1 + 40) = v24;
          goto LABEL_45;
        }

        if (v13 != 2)
        {
LABEL_39:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_45;
        }

        v14 = PBReaderReadString();
        v15 = 32;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v16 = PBReaderReadString();
            if (v16)
            {
              [a1 addCharacteristics:v16];
            }

            goto LABEL_45;
          case 4:
            v14 = PBReaderReadString();
            v15 = 16;
            break;
          case 5:
            v14 = PBReaderReadString();
            v15 = 24;
            break;
          default:
            goto LABEL_39;
        }
      }

      v17 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_45:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MRAVRouteQueryCreateFromExternalRepresentation(uint64_t a1)
{
  v2 = [_MRAVRouteQueryProtobuf alloc];

  return [(_MRAVRouteQueryProtobuf *)v2 initWithData:a1];
}

uint64_t MRAVRouteQueryCreateExternalRepresentation(void *a1)
{
  v1 = [a1 data];
  v2 = [v1 copy];

  return v2;
}

void _onQueue_MRMediaRemoteSendShortCircutedContentItemArtworkUpdatedNotification(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v4 isLocal])
  {
    v5 = +[MRNowPlayingOriginClientManager sharedManager];
    v6 = [v5 existingPlayerClientRequestsForPlayerPath:v4];

    v7 = [[MRPlaybackQueueRequest alloc] initFromTransactionName:7];
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v9 = [v6 subscriptionController];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___onQueue_MRMediaRemoteSendShortCircutedContentItemArtworkUpdatedNotification_block_invoke;
    v23[3] = &unk_1E76A0A88;
    v10 = v7;
    v24 = v10;
    v11 = v8;
    v25 = v11;
    [v9 enumerateFilteredContentItemsBySubscriptionsForContentItems:v3 block:v23];

    if ([v11 count])
    {
      v12 = [[MRPlaybackQueueRequest alloc] initFromTransactionName:0];
      v13 = MRContentItemsCreateFromRequest(v11, v12);
      if ([v13 count])
      {
        v22 = v12;
        v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
        MRAddContentItemsToUserInfo(v14, v13);
        v15 = [v6 playerPath];
        MRAddPlayerPathToUserInfo(v14, v15);

        v16 = _MRLogForCategory(1uLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v21 = [v6 playerPath];
          *buf = 138412802;
          v27 = @"kMRPlayerPlaybackQueueContentItemArtworkChangedNotification";
          v28 = 2114;
          v29 = v21;
          v30 = 2112;
          v31 = v13;
          _os_log_debug_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEBUG, "Sending short circuted notification %@ for %{public}@ %@", buf, 0x20u);
        }

        v17 = +[MRMediaRemoteServiceClient sharedServiceClient];
        v18 = [v17 notificationClient];
        v19 = MRCreateDecodedUserInfo(v14);
        [v18 dispatchNotification:@"kMRPlayerPlaybackQueueContentItemArtworkChangedNotification" userInfo:v19 object:0];

        v12 = v22;
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void _onQueue_MRMediaRemoteSendContentItemArtworkUpdatedNotification(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 count])
  {
    [v4 clearCachedContentItemArtworkForItems:v3];
    v5 = [v4 playerPath];
    _onQueue_MRMediaRemoteSendShortCircutedContentItemArtworkUpdatedNotification(v3, v5);

    v6 = [[MRPlaybackQueueRequest alloc] initFromTransactionName:7];
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v8 = [v4 subscriptionController];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = ___onQueue_MRMediaRemoteSendContentItemArtworkUpdatedNotification_block_invoke;
    v21 = &unk_1E76A0A88;
    v9 = v6;
    v22 = v9;
    v10 = v7;
    v23 = v10;
    [v8 enumerateFilteredContentItemsBySubscriptionsForContentItems:v3 block:&v18];

    if ([v10 count])
    {
      v11 = [[MRPlaybackQueueRequest alloc] initFromTransactionName:0];
      v12 = MRContentItemsCreateFromRequest(v10, v11);
      v13 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v4 playerPath];
        *buf = 138543618;
        v25 = v14;
        v26 = 2112;
        v27 = v12;
        _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "Sending contentItemChangeArtwork for %{public}@ %@", buf, 0x16u);
      }

      v15 = MRGetSharedService();
      v16 = [v4 playerPath];
      MRMediaRemoteServiceSendContentItemArtworkChangedNotification(v15, v16, v12);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void _MRMediaRemoteLogUnsubscribedContentItems(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 count];
  if (v8 > [v6 count])
  {
    v22 = v7;
    v23 = v5;
    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count") - objc_msgSend(v6, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        v13 = 0;
        do
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * v13);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v15 = v6;
          v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v26;
            while (2)
            {
              v19 = 0;
              do
              {
                if (*v26 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                if (MRContentItemIdentifierIsEqual(v14, *(*(&v25 + 1) + 8 * v19)))
                {

                  goto LABEL_17;
                }

                ++v19;
              }

              while (v17 != v19);
              v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          [v24 addObject:v14];
LABEL_17:
          ++v13;
        }

        while (v13 != v11);
        v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
    }

    v20 = _MRLogForCategory(0);
    v7 = v22;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      _MRMediaRemoteLogUnsubscribedContentItems_cold_1(v22, v24, v20);
    }

    v5 = v23;
  }

  v21 = *MEMORY[0x1E69E9840];
}

void _onQueue_MRMediaRemotePlaybackQueueDataSourceSendShortCircutedContentItemsChangedForPlayer(void *a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v4 isLocal])
  {
    v5 = +[MRNowPlayingOriginClientManager sharedManager];
    v6 = [v5 existingPlayerClientRequestsForPlayerPath:v4];

    v30 = v6;
    v7 = [v6 subscriptionController];
    v8 = [v7 filteredContentItemsBySubscriptionsForContentItems:v3];

    _MRMediaRemoteLogUnsubscribedContentItems(v3, v8, v4);
    if ([v8 count])
    {
      v28 = v4;
      v29 = v3;
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v27 = v8;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v31 objects:v41 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v32;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v32 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v31 + 1) + 8 * i);
            if (!MRContentItemIsEmpty(v15))
            {
              v16 = _MRLogForCategory(1uLL);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = [v30 playerPath];
                *buf = 138543618;
                v36 = v17;
                v37 = 2112;
                v38 = v15;
                _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Sending short circuted contentItemChange for %{public}@ %@", buf, 0x16u);
              }

              [v9 addObject:v15];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v31 objects:v41 count:16];
        }

        while (v12);
      }

      v4 = v28;
      v3 = v29;
      if ([v9 count])
      {
        v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
        MRAddContentItemsToUserInfo(v18, v9);
        v19 = [v30 playerPath];
        MRAddPlayerPathToUserInfo(v18, v19);

        v20 = _MRLogForCategory(1uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v25 = [v30 playerPath];
          v26 = MRContentItemsCopyMinimalReadableDescription(v9, 0);
          *buf = 138412802;
          v36 = @"kMRPlayerPlaybackQueueContentItemsChangedNotification";
          v37 = 2112;
          v38 = v25;
          v39 = 2112;
          v40 = v26;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "Sending short circuted notification %@ for %@ %@", buf, 0x20u);
        }

        v21 = +[MRMediaRemoteServiceClient sharedServiceClient];
        v22 = [v21 notificationClient];
        v23 = MRCreateDecodedUserInfo(v18);
        [v22 dispatchNotification:@"kMRPlayerPlaybackQueueContentItemsChangedNotification" userInfo:v23 object:0];
      }

      v8 = v27;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void _onQueue_MRMediaRemotePlaybackQueueDataSourceSendContentItemsChangedForPlayer(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v4 subscriptionController];
  v6 = [v5 filteredContentItemsBySubscriptionsForContentItems:v3];

  v7 = [v4 playerPath];
  _MRMediaRemoteLogUnsubscribedContentItems(v3, v6, v7);

  if ([v6 count])
  {
    v22 = v3;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if (!MRContentItemIsEmpty(v15))
          {
            v16 = _MRLogForCategory(1uLL);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [v4 playerPath];
              *buf = 138543618;
              v28 = v17;
              v29 = 2112;
              v30 = v15;
              _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Sending contentItemChange for path %{public}@ %@", buf, 0x16u);
            }

            [v9 addObject:v15];
          }

          if (MRContentItemGetArtworkIdentifier(v15))
          {
            [v8 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      v18 = MRGetSharedService();
      v19 = [v4 playerPath];
      MRMediaRemoteServiceSendContentItemChangedNotification(v18, v19, v9);
    }

    _onQueue_MRMediaRemoteSendContentItemArtworkUpdatedNotification(v8, v4);

    v6 = v21;
    v3 = v22;
  }

  v20 = *MEMORY[0x1E69E9840];
}

void _onQueue_MRMediaRemotePlaybackQueueDataSourceContentItemsChangedForPlayer(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v5 playerClientForPlayerPath:v3];

  [v6 sendContentItemChanges:v4];
}

void MRMediaRemotePlaybackQueueDataSourceSendContentItemsChangedForPlayer(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v6 = [v5 playbackQueueDispatchQueue];
  v9 = v3;
  v10 = v4;
  v7 = v4;
  v8 = v3;
  msv_dispatch_sync_on_queue();
}

void __MRMediaRemotePlaybackQueueDataSourceSendContentItemsChangedForPlayer_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (MRContentItemGetArtworkData(v8))
        {
          MRContentItemSetArtworkData(v8, 0);
          [v2 addObject:{v8, v12}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) playerPath];
  _onQueue_MRMediaRemotePlaybackQueueDataSourceSendShortCircutedContentItemsChangedForPlayer(v9, v10);

  _onQueue_MRMediaRemotePlaybackQueueDataSourceSendContentItemsChangedForPlayer(*(a1 + 32), *(a1 + 40));
  _onQueue_MRMediaRemoteSendContentItemArtworkUpdatedNotification(v2, *(a1 + 40));

  v11 = *MEMORY[0x1E69E9840];
}

void MRMediaRemotePlaybackQueueDataSourceContentItemChanged(uint64_t a1, uint64_t a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a1;
  MRMediaRemotePlaybackQueueDataSourceContentItemsChanged([MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1], a2);
  v2 = *MEMORY[0x1E69E9840];
}

void MRMediaRemotePlaybackQueueDataSourceContentItemsChanged(uint64_t a1, uint64_t a2)
{
  v3 = [[MRPlayerPath alloc] initWithOrigin:a2 client:0 player:0];
  MRMediaRemotePlaybackQueueDataSourceContentItemsChangedForPlayer(a1, v3);
}

void MRMediaRemotePlaybackQueueDataSourceContentItemsChangedForPlayer(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 copy];
    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:a1 copyItems:1];
    v5 = +[MRMediaRemoteServiceClient sharedServiceClient];
    v6 = [v5 playbackQueueDispatchQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __MRMediaRemotePlaybackQueueDataSourceContentItemsChangedForPlayer_block_invoke;
    v10[3] = &unk_1E769A4A0;
    v11 = v4;
    v12 = v3;
    v7 = v3;
    v8 = v4;
    v9 = MRCreateDonatedQosBlock(v10);
    msv_dispatch_sync_on_queue();
  }
}

void MRMediaRemotePlaybackQueueDataSourceContentItemChangedForPlayer(uint64_t a1, void *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a1;
  MRMediaRemotePlaybackQueueDataSourceContentItemsChangedForPlayer([MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1], a2);
  v2 = *MEMORY[0x1E69E9840];
}

void MRMediaRemotePlaybackQueueDataSourceContentItemChangedWithRequest(uint64_t a1, void *a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = a1;
  MRMediaRemotePlaybackQueueDataSourceContentItemsChangedWithRequest([MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1], a2, a3);
  v3 = *MEMORY[0x1E69E9840];
}

void MRMediaRemotePlaybackQueueDataSourceContentItemsChangedWithRequest(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [[MRPlayerPath alloc] initWithOrigin:a3 client:0 player:0];
  MRMediaRemotePlaybackQueueDataSourceContentItemsChangedWithRequestForPlayer(a1, a2, v5);
}

void MRMediaRemotePlaybackQueueDataSourceContentItemsChangedWithRequestForPlayer(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = [a2 copy];
    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:a1 copyItems:1];
    v7 = +[MRNowPlayingOriginClientManager sharedManager];
    v8 = [v7 playerClientForPlayerPath:a3];

    v9 = [v8 playerPath];
    if (v5)
    {
      v10 = +[MRMediaRemoteServiceClient sharedServiceClient];
      v11 = [v10 playbackQueueDispatchQueue];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __MRMediaRemotePlaybackQueueDataSourceContentItemsChangedWithRequestForPlayer_block_invoke;
      v13[3] = &unk_1E769BA00;
      v14 = v6;
      v15 = v5;
      v16 = v8;
      v12 = MRCreateDonatedQosBlock(v13);
      dispatch_sync(v11, v12);
    }

    else
    {
      MRMediaRemotePlaybackQueueDataSourceContentItemsChangedForPlayer(v6, v9);
    }
  }
}

void MRMediaRemotePlaybackQueueDataSourceContentItemChangedWithRequestForPlayer(uint64_t a1, void *a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = a1;
  MRMediaRemotePlaybackQueueDataSourceContentItemsChangedWithRequestForPlayer([MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1], a2, a3);
  v3 = *MEMORY[0x1E69E9840];
}

void _onQueue_MRMediaRemotePlaybackQueueDataSourceContentItemsChangedWithRequestForPlayer(void *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v26 = MRContentItemsCreateFromRequest(a1, v5);
  v7 = [MRContentItem mergeContentItems:?];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    obj = v7;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v6 subscriptionController];
        v14 = [v12 identifier];
        v15 = [v13 requestForSubscribedContentItemIdentifier:v14];

        v16 = [MRPlaybackQueueRequest alloc];
        v17 = [v12 identifier];
        v34 = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
        v19 = [(MRPlaybackQueueRequest *)v16 initWithIdentifiers:v18];

        if ([v5 includeArtwork])
        {
          MRContentItemSetArtworkData(v12, 0);
          [v12 setArtworks:0];
          [v12 setRemoteArtworks:0];
          [v12 setAnimatedArtworkPreviewFrames:0];
          [v12 setAnimatedArtworks:0];
        }

        if (MRContentItemGetCurrentLanguageOptions(v12))
        {
          v20 = MRContentItemGetAvailableLanguageOptions(v12) != 0;
        }

        else
        {
          v20 = 0;
        }

        if ([v15 includeLanguageOptions] && !(v20 | ((objc_msgSend(v5, "includeLanguageOptions") & 1) == 0)))
        {
          [(MRPlaybackQueueRequest *)v19 setIncludeLanguageOptions:1];
        }

        if ([v15 includeLyrics] && objc_msgSend(v5, "includeLyrics") && !MRContentItemGetLyrics())
        {
          [(MRPlaybackQueueRequest *)v19 setIncludeLyrics:1];
        }

        if ([v15 includeInfo] && objc_msgSend(v5, "includeInfo") && !MRContentItemGetInfo(v12))
        {
          [(MRPlaybackQueueRequest *)v19 setIncludeInfo:1];
        }

        if ([v15 includeSections] && objc_msgSend(v5, "includeSections") && !MRContentItemGetSections(v12))
        {
          [(MRPlaybackQueueRequest *)v19 setIncludeSections:1];
          [(MRPlaybackQueueRequest *)v19 setIncludeMetadata:1];
        }

        if ([v15 includeAlignments] && objc_msgSend(v5, "includeAlignments") && !MRContentItemGetTranscriptAlignments(v12))
        {
          [(MRPlaybackQueueRequest *)v19 setIncludeAlignments:1];
        }

        if ([(MRPlaybackQueueRequest *)v19 shouldRequestItem])
        {
          v21 = [v6 playerPath];
          v22 = +[MRMediaRemoteServiceClient sharedServiceClient];
          v23 = [v22 playbackQueueDispatchQueue];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = ___onQueue_MRMediaRemotePlaybackQueueDataSourceContentItemsChangedWithRequestForPlayer_block_invoke;
          v28[3] = &unk_1E769C6B8;
          v29 = v6;
          MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync(v19, v21, v23, v28);
        }
      }

      v7 = obj;
      v9 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  v24 = [v6 playerPath];
  _onQueue_MRMediaRemotePlaybackQueueDataSourceContentItemsChangedForPlayer(v7, v24);

  if ([v5 includeArtwork])
  {
    _onQueue_MRMediaRemoteSendContentItemArtworkUpdatedNotification(v7, v6);
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t _MRCommandInfoProtobufReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v218) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v218 & 0x7F) << v6;
      if ((v218 & 0x80) == 0)
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
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v14 = v13 & 7;
    if (v14 == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 356) |= 8u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v218 & 0x7F) << v15;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
LABEL_338:
            v181 = 172;
            goto LABEL_366;
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

        goto LABEL_338;
      case 2u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        *(a1 + 356) |= 0x400000u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v218 & 0x7F) << v112;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v12 = v113++ >= 9;
          if (v12)
          {
            LOBYTE(v28) = 0;
            goto LABEL_340;
          }
        }

        v28 = (v114 != 0) & ~[a2 hasError];
LABEL_340:
        v180 = 349;
        goto LABEL_341;
      case 3u:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 356) |= 0x200000u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            v85 = [a2 data];
            [v85 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v218 & 0x7F) << v80;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v12 = v81++ >= 9;
          if (v12)
          {
            LOBYTE(v28) = 0;
            goto LABEL_324;
          }
        }

        v28 = (v82 != 0) & ~[a2 hasError];
LABEL_324:
        v180 = 348;
        goto LABEL_341;
      case 4u:
        if (v14 != 2)
        {
          v218 = 0;
          v196 = [a2 position] + 8;
          if (v196 >= [a2 position] && (v197 = objc_msgSend(a2, "position") + 8, v197 <= objc_msgSend(a2, "length")))
          {
            v217 = [a2 data];
            [v217 getBytes:&v218 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedDoubleAdd();
          goto LABEL_422;
        }

        v218 = 0;
        v219 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v138 = [a2 position];
          if (v138 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v220 = 0;
          v139 = [a2 position] + 8;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 8, v140 <= objc_msgSend(a2, "length")))
          {
            v141 = [a2 data];
            [v141 getBytes:&v220 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedDoubleAdd();
        }

        goto LABEL_263;
      case 5u:
        v29 = PBReaderReadString();
        v30 = 224;
        goto LABEL_242;
      case 6u:
        *(a1 + 356) |= 0x80u;
        LODWORD(v218) = 0;
        v94 = [a2 position] + 4;
        if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 4, v95 <= objc_msgSend(a2, "length")))
        {
          v210 = [a2 data];
          [v210 getBytes:&v218 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v208 = v218;
        v209 = 236;
        goto LABEL_421;
      case 7u:
        *(a1 + 356) |= 0x40u;
        LODWORD(v218) = 0;
        v118 = [a2 position] + 4;
        if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 4, v119 <= objc_msgSend(a2, "length")))
        {
          v212 = [a2 data];
          [v212 getBytes:&v218 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v208 = v218;
        v209 = 232;
        goto LABEL_421;
      case 8u:
        if (v14 != 2)
        {
          goto LABEL_385;
        }

        v218 = 0;
        v219 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v120 = [a2 position];
          if (v120 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          LODWORD(v220) = 0;
          v121 = [a2 position] + 4;
          if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 4, v122 <= objc_msgSend(a2, "length")))
          {
            v123 = [a2 data];
            [v123 getBytes:&v220 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_263;
      case 9u:
        v29 = PBReaderReadString();
        v30 = 216;
        goto LABEL_242;
      case 0xAu:
        v142 = 0;
        v143 = 0;
        v144 = 0;
        *(a1 + 356) |= 0x800u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v145 = [a2 position] + 1;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
          {
            v147 = [a2 data];
            [v147 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v144 |= (v218 & 0x7F) << v142;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v12 = v143++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_353;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v144;
        }

LABEL_353:
        v181 = 280;
        goto LABEL_366;
      case 0xBu:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 356) |= 0x1000u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v218 & 0x7F) << v55;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v12 = v56++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_312;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v57;
        }

LABEL_312:
        v181 = 284;
        goto LABEL_366;
      case 0xCu:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        *(a1 + 356) |= 0x400u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v99 = [a2 position] + 1;
          if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
          {
            v101 = [a2 data];
            [v101 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v98 |= (v218 & 0x7F) << v96;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v12 = v97++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_330;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v98;
        }

LABEL_330:
        v181 = 268;
        goto LABEL_366;
      case 0xDu:
        v68 = 0;
        v69 = 0;
        v70 = 0;
        *(a1 + 356) |= 0x4000u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v71 = [a2 position] + 1;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
          {
            v73 = [a2 data];
            [v73 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v70 |= (v218 & 0x7F) << v68;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v68 += 7;
          v12 = v69++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_318;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v70;
        }

LABEL_318:
        v181 = 292;
        goto LABEL_366;
      case 0xEu:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 356) |= 0x100u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v218 & 0x7F) << v42;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_308;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v44;
        }

LABEL_308:
        v181 = 240;
        goto LABEL_366;
      case 0xFu:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        *(a1 + 356) |= 0x2000u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v127 = [a2 position] + 1;
          if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
          {
            v129 = [a2 data];
            [v129 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v126 |= (v218 & 0x7F) << v124;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v12 = v125++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_345;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v126;
        }

LABEL_345:
        v181 = 288;
        goto LABEL_366;
      case 0x10u:
        v130 = 0;
        v131 = 0;
        v132 = 0;
        *(a1 + 356) |= 4u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v133 = [a2 position] + 1;
          if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
          {
            v135 = [a2 data];
            [v135 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v132 |= (v218 & 0x7F) << v130;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v130 += 7;
          v12 = v131++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_349;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v132;
        }

LABEL_349:
        v181 = 168;
        goto LABEL_366;
      case 0x11u:
        if (v14 == 2)
        {
          v218 = 0;
          v219 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v151 = [a2 position];
            if (v151 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v152 = 0;
            v153 = 0;
            v154 = 0;
            while (1)
            {
              LOBYTE(v220) = 0;
              v155 = [a2 position] + 1;
              if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
              {
                v157 = [a2 data];
                [v157 getBytes:&v220 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v154 |= (v220 & 0x7F) << v152;
              if ((v220 & 0x80) == 0)
              {
                break;
              }

              v152 += 7;
              v12 = v153++ >= 9;
              if (v12)
              {
                goto LABEL_262;
              }
            }

            [a2 hasError];
LABEL_262:
            PBRepeatedInt32Add();
          }

LABEL_263:
          PBReaderRecallMark();
        }

        else
        {
          v198 = 0;
          v199 = 0;
          v200 = 0;
          while (1)
          {
            LOBYTE(v218) = 0;
            v201 = [a2 position] + 1;
            if (v201 >= [a2 position] && (v202 = objc_msgSend(a2, "position") + 1, v202 <= objc_msgSend(a2, "length")))
            {
              v203 = [a2 data];
              [v203 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v200 |= (v218 & 0x7F) << v198;
            if ((v218 & 0x80) == 0)
            {
              break;
            }

            v198 += 7;
            v12 = v199++ >= 9;
            if (v12)
            {
              goto LABEL_401;
            }
          }

LABEL_400:
          [a2 hasError];
LABEL_401:
          PBRepeatedInt32Add();
        }

        goto LABEL_422;
      case 0x12u:
        v41 = PBReaderReadString();
        if (v41)
        {
          [a1 addSupportedCustomQueueIdentifier:v41];
        }

        goto LABEL_279;
      case 0x13u:
        if (v14 != 2)
        {
          v182 = 0;
          v183 = 0;
          v184 = 0;
          while (1)
          {
            LOBYTE(v218) = 0;
            v185 = [a2 position] + 1;
            if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 1, v186 <= objc_msgSend(a2, "length")))
            {
              v187 = [a2 data];
              [v187 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v184 |= (v218 & 0x7F) << v182;
            if ((v218 & 0x80) == 0)
            {
              goto LABEL_400;
            }

            v182 += 7;
            v12 = v183++ >= 9;
            if (v12)
            {
              goto LABEL_401;
            }
          }
        }

        v218 = 0;
        v219 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v34 = [a2 position];
          if (v34 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_263;
          }

          v35 = 0;
          v36 = 0;
          v37 = 0;
          while (1)
          {
            LOBYTE(v220) = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v220 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v220 & 0x7F) << v35;
            if ((v220 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v12 = v36++ >= 9;
            if (v12)
            {
              goto LABEL_55;
            }
          }

          [a2 hasError];
LABEL_55:
          PBRepeatedInt32Add();
        }

      case 0x15u:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 356) |= 0x20000u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v218 & 0x7F) << v74;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v12 = v75++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_322;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v76;
        }

LABEL_322:
        v181 = 332;
        goto LABEL_366;
      case 0x16u:
        *(a1 + 356) |= 0x200u;
        LODWORD(v218) = 0;
        v164 = [a2 position] + 4;
        if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 4, v165 <= objc_msgSend(a2, "length")))
        {
          v215 = [a2 data];
          [v215 getBytes:&v218 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v208 = v218;
        v209 = 264;
        goto LABEL_421;
      case 0x17u:
        v41 = PBReaderReadString();
        if (v41)
        {
          [a1 addSupportedPlaybackSessionTypes:v41];
        }

        goto LABEL_279;
      case 0x18u:
        v41 = PBReaderReadString();
        if (v41)
        {
          [a1 addCurrentPlaybackSessionTypes:v41];
        }

        goto LABEL_279;
      case 0x19u:
        v29 = PBReaderReadString();
        v30 = 248;
        goto LABEL_242;
      case 0x1Au:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        *(a1 + 356) |= 0x10u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            v107 = [a2 data];
            [v107 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v104 |= (v218 & 0x7F) << v102;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v12 = v103++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_334;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v104;
        }

LABEL_334:
        v181 = 184;
        goto LABEL_366;
      case 0x1Bu:
        if (v14 != 2)
        {
          v188 = 0;
          v189 = 0;
          v190 = 0;
          while (1)
          {
            LOBYTE(v218) = 0;
            v191 = [a2 position] + 1;
            if (v191 >= [a2 position] && (v192 = objc_msgSend(a2, "position") + 1, v192 <= objc_msgSend(a2, "length")))
            {
              v193 = [a2 data];
              [v193 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v190 |= (v218 & 0x7F) << v188;
            if ((v218 & 0x80) == 0)
            {
              goto LABEL_400;
            }

            v188 += 7;
            v12 = v189++ >= 9;
            if (v12)
            {
              goto LABEL_401;
            }
          }
        }

        v218 = 0;
        v219 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v48 = [a2 position];
          if (v48 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_263;
          }

          v49 = 0;
          v50 = 0;
          v51 = 0;
          while (1)
          {
            LOBYTE(v220) = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:&v220 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v220 & 0x7F) << v49;
            if ((v220 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v12 = v50++ >= 9;
            if (v12)
            {
              goto LABEL_81;
            }
          }

          [a2 hasError];
LABEL_81:
          PBRepeatedInt32Add();
        }

      case 0x1Cu:
        v166 = 0;
        v167 = 0;
        v168 = 0;
        *(a1 + 356) |= 0x20u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v169 = [a2 position] + 1;
          if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
          {
            v171 = [a2 data];
            [v171 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v168 |= (v218 & 0x7F) << v166;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v166 += 7;
          v12 = v167++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_361;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v168;
        }

LABEL_361:
        v181 = 200;
        goto LABEL_366;
      case 0x1Du:
        v41 = objc_alloc_init(_MRPreloadedPlaybackSessionInfo);
        [a1 addSupportedPlaybackSessionIdentifiers:v41];
        v218 = 0;
        v219 = 0;
        if (PBReaderPlaceMark() && _MRPreloadedPlaybackSessionInfoReadFrom(v41, a2))
        {
          goto LABEL_278;
        }

        goto LABEL_427;
      case 0x1Eu:
        v41 = objc_alloc_init(_MRCommandOptionsProtobuf);
        objc_storeStrong((a1 + 272), v41);
        v218 = 0;
        v219 = 0;
        if (!PBReaderPlaceMark() || !_MRCommandOptionsProtobufReadFrom(v41, a2))
        {
          goto LABEL_427;
        }

        goto LABEL_278;
      case 0x1Fu:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(a1 + 356) |= 0x1000000u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v89 = [a2 position] + 1;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
          {
            v91 = [a2 data];
            [v91 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v88 |= (v218 & 0x7F) << v86;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v12 = v87++ >= 9;
          if (v12)
          {
            LOBYTE(v28) = 0;
            goto LABEL_326;
          }
        }

        v28 = (v88 != 0) & ~[a2 hasError];
LABEL_326:
        v180 = 351;
        goto LABEL_341;
      case 0x20u:
        *(a1 + 356) |= 0x40000u;
        LODWORD(v218) = 0;
        v136 = [a2 position] + 4;
        if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 4, v137 <= objc_msgSend(a2, "length")))
        {
          v213 = [a2 data];
          [v213 getBytes:&v218 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v208 = v218;
        v209 = 336;
        goto LABEL_421;
      case 0x21u:
        *(a1 + 356) |= 0x80000u;
        LODWORD(v218) = 0;
        v92 = [a2 position] + 4;
        if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 4, v93 <= objc_msgSend(a2, "length")))
        {
          v207 = [a2 data];
          [v207 getBytes:&v218 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v208 = v218;
        v209 = 340;
        goto LABEL_421;
      case 0x22u:
        *(a1 + 356) |= 0x100000u;
        LODWORD(v218) = 0;
        v178 = [a2 position] + 4;
        if (v178 >= [a2 position] && (v179 = objc_msgSend(a2, "position") + 4, v179 <= objc_msgSend(a2, "length")))
        {
          v216 = [a2 data];
          [v216 getBytes:&v218 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v208 = v218;
        v209 = 344;
LABEL_421:
        *(a1 + v209) = v208;
        goto LABEL_422;
      case 0x23u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 356) |= 0x2000000u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v218 & 0x7F) << v61;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v12 = v62++ >= 9;
          if (v12)
          {
            LOBYTE(v28) = 0;
            goto LABEL_314;
          }
        }

        v28 = (v63 != 0) & ~[a2 hasError];
LABEL_314:
        v180 = 352;
        goto LABEL_341;
      case 0x24u:
        *(a1 + 356) |= 2u;
        v218 = 0;
        v149 = [a2 position] + 8;
        if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 8, v150 <= objc_msgSend(a2, "length")))
        {
          v214 = [a2 data];
          [v214 getBytes:&v218 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v205 = v218;
        v206 = 160;
        goto LABEL_416;
      case 0x26u:
        v172 = 0;
        v173 = 0;
        v174 = 0;
        *(a1 + 356) |= 0x8000u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v175 = [a2 position] + 1;
          if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
          {
            v177 = [a2 data];
            [v177 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v174 |= (v218 & 0x7F) << v172;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v172 += 7;
          v12 = v173++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_365;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v174;
        }

LABEL_365:
        v181 = 296;
        goto LABEL_366;
      case 0x27u:
        *(a1 + 356) |= 1u;
        v218 = 0;
        v31 = [a2 position] + 8;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
        {
          v204 = [a2 data];
          [v204 getBytes:&v218 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v205 = v218;
        v206 = 152;
LABEL_416:
        *(a1 + v206) = v205;
        goto LABEL_422;
      case 0x29u:
        v41 = objc_alloc_init(_MRDictionaryProtobuf);
        v67 = 192;
        goto LABEL_229;
      case 0x2Au:
        v29 = PBReaderReadString();
        v30 = 208;
LABEL_242:
        v148 = *(a1 + v30);
        *(a1 + v30) = v29;

        goto LABEL_422;
      case 0x2Bu:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 356) |= 0x800000u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v218 & 0x7F) << v22;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            LOBYTE(v28) = 0;
            goto LABEL_304;
          }
        }

        v28 = (v24 != 0) & ~[a2 hasError];
LABEL_304:
        v180 = 350;
LABEL_341:
        *(a1 + v180) = v28;
        goto LABEL_422;
      case 0x2Cu:
        v41 = objc_alloc_init(_MRDictionaryProtobuf);
        v67 = 256;
LABEL_229:
        objc_storeStrong((a1 + v67), v41);
        v218 = 0;
        v219 = 0;
        if (PBReaderPlaceMark() && _MRDictionaryProtobufReadFrom(v41, a2))
        {
LABEL_278:
          PBReaderRecallMark();
LABEL_279:

LABEL_422:
          v4 = a2;
          continue;
        }

LABEL_427:

        return 0;
      case 0x2Fu:
        if (v14 != 2)
        {
LABEL_385:
          LODWORD(v218) = 0;
          v194 = [a2 position] + 4;
          if (v194 >= [a2 position] && (v195 = objc_msgSend(a2, "position") + 4, v195 <= objc_msgSend(a2, "length")))
          {
            v211 = [a2 data];
            [v211 getBytes:&v218 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
          goto LABEL_422;
        }

        v218 = 0;
        v219 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v108 = [a2 position];
          if (v108 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          LODWORD(v220) = 0;
          v109 = [a2 position] + 4;
          if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 4, v110 <= objc_msgSend(a2, "length")))
          {
            v111 = [a2 data];
            [v111 getBytes:&v220 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_263;
      case 0x30u:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        *(a1 + 356) |= 0x10000u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v161 = [a2 position] + 1;
          if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 1, v162 <= objc_msgSend(a2, "length")))
          {
            v163 = [a2 data];
            [v163 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v160 |= (v218 & 0x7F) << v158;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v12 = v159++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_357;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v160;
        }

LABEL_357:
        v181 = 328;
LABEL_366:
        *(a1 + v181) = v21;
        goto LABEL_422;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_422;
    }
  }
}