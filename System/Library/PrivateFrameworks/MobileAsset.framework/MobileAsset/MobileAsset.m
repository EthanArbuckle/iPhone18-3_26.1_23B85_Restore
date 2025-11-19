id _getCommsManager()
{
  if (_getCommsManager_commsOnce != -1)
  {
    _getCommsManager_cold_1();
  }

  v0 = _getCommsManager_commsManager;
  if (!_getCommsManager_commsManager)
  {
    v1 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_197AD5000, v1, OS_LOG_TYPE_DEFAULT, "commsManager is nil, all xpc communication will fail", v3, 2u);
    }

    v0 = _getCommsManager_commsManager;
  }

  return v0;
}

void ___getCommsManager_block_invoke()
{
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.mobileassetd.v2"];
  v0 = [MAXpcManager alloc];
  v1 = _getClientCallbackQueue();
  v2 = [(MAXpcManager *)v0 initWithServiceName:v4 callbackQueue:v1];
  v3 = _getCommsManager_commsManager;
  _getCommsManager_commsManager = v2;
}

void ___getClientCallbackQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MobileAsset.client.callback", v2);
  v1 = _getClientCallbackQueue_queue;
  _getClientCallbackQueue_queue = v0;
}

id _MAClientLog(void *a1)
{
  v1 = a1;
  if (_MAClientLog_onceToken != -1)
  {
    _MAClientLog_cold_1();
  }

  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"DEFAULT";
  }

  v3 = [_MAClientLog_clientLoggers objectForKey:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [_MAClientLog_clientLoggers objectForKey:@"DEFAULT"];
  }

  v6 = v5;

  return v6;
}

id _getClientCallbackQueue()
{
  if (_getClientCallbackQueue_once != -1)
  {
    _getClientCallbackQueue_cold_1();
  }

  v1 = _getClientCallbackQueue_queue;

  return v1;
}

void _MAsendQueryMetaData(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = xpc_dictionary_create(0, 0, 0);
  if (!v8)
  {
    v9 = 0;
    v13 = 6;
LABEL_19:
    xpc_dictionary_set_int64(v8, "Result", v13);
    v18 = _getClientCallbackQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___MAsendQueryMetaData_block_invoke;
    block[3] = &unk_1E74C9888;
    v22 = v7;
    v21 = v8;
    dispatch_async(v18, block);

    v16 = v22;
    goto LABEL_20;
  }

  if (v6)
  {
    v9 = [v6 queryParams];

    if (v9)
    {
      v10 = MEMORY[0x1E696ACC8];
      v11 = [v6 queryParams];
      v23 = 0;
      v9 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v23];
      v12 = v23;

      if (!v9 || v12)
      {
        v17 = _MAClientLog(@"V2");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v25 = v12;
          _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_DEFAULT, "could not encode query params: %{public}@", buf, 0xCu);
        }

        v13 = 8;
        goto LABEL_19;
      }

      xpc_dictionary_set_data(v8, [@"QueryParams" UTF8String], objc_msgSend(v9, "bytes"), objc_msgSend(v9, "length"));
    }

    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = 0;
    if (!v5)
    {
LABEL_15:
      v13 = 7;
      goto LABEL_19;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = [v6 purpose];

  if (v14)
  {
    v15 = [v6 purpose];
    xpc_dictionary_set_string(v8, "Purpose", [v15 UTF8String]);
  }

  xpc_dictionary_set_string(v8, "AssetType", [v5 UTF8String]);
  xpc_dictionary_set_uint64(v8, "returnAssetTypes", [v6 returnTypes]);
  xpc_dictionary_set_uint64(v8, "messageAction", 1uLL);
  xpc_dictionary_set_BOOL(v8, "doNotBlockBeforeFirstUnlock", [v6 doNotBlockBeforeFirstUnlock]);
  v16 = _getCommsManager();
  [v16 sendAsync:v8 clientHandler:v7 taskDescriptor:0];
LABEL_20:

  v19 = *MEMORY[0x1E69E9840];
}

void *ASServerURLForAssetType(uint64_t a1, void *a2)
{
  v14 = 0;
  v3 = MAGetServerUrl(a1, &v14);
  v4 = v14;
  v5 = v4;
  if (v3)
  {
    if (!a2)
    {
      goto LABEL_7;
    }

    v6 = stringForMAOperationResult(v3);
    v12 = MAError(@"com.apple.MobileAssetError", v3, @"%@", v7, v8, v9, v10, v11, v6);
    *a2 = _ASErrorForMAError(v12);
  }

  else if (v4)
  {
    a2 = [MEMORY[0x1E695DFF8] URLWithString:v4];
    goto LABEL_7;
  }

  a2 = 0;
LABEL_7:

  return a2;
}

unint64_t _MAclientSendGetServerUrl(void *a1, __CFString **a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = xpc_dictionary_create(0, 0, 0);
      v5 = [v3 UTF8String];
      if (v5)
      {
        xpc_dictionary_set_string(v4, "AssetType", v5);
        xpc_dictionary_set_uint64(v4, "messageAction", 0x24uLL);
        v21 = 4;
        v6 = _getCommsManager();
        v7 = [v6 sendSync:v4 gettingResponseCode:&v21 codeForXpcError:1 loggingName:@"MAGetServerUrl"];

        if (v21)
        {
          v8 = 0;
        }

        else if (v7)
        {
          string = xpc_dictionary_get_string(v7, "BaseUrlKey");
          if (string)
          {
            v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
          }

          else
          {
            v20 = _MAClientLog(@"V2");
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_197AD5000, v20, OS_LOG_TYPE_ERROR, "MobileAsset _MAclientSendGetServerUrl found a null cstring for MA_BASE_URL_KEY", buf, 2u);
            }

            v8 = 0;
            v21 = 2;
          }
        }

        else
        {
          v19 = _MAClientLog(@"V2");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_ERROR, "MAGetServerUrl returned nil reply with MAOperationSuccessful. Setting serverUrl to empty string.", buf, 2u);
          }

          v8 = &stru_1F0C1B388;
        }
      }

      else
      {
        v17 = _MAClientLog(@"V2");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, "MobileAsset _MAclientSendGetServerUrl could not read the assetType string", buf, 2u);
        }

        v8 = 0;
        v21 = 2;
      }

      if (!a2)
      {
        goto LABEL_11;
      }

LABEL_10:
      v10 = v8;
      *a2 = v8;
      goto LABEL_11;
    }
  }

  v9 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_ERROR, "MobileAsset _MAclientSendGetServerUrl passed invalid assetType (must be non-nil NSString)", buf, 2u);
  }

  v8 = 0;
  v21 = 2;
  if (a2)
  {
    goto LABEL_10;
  }

LABEL_11:
  v11 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v21;
    v13 = stringForMAOperationResult(v21);
    *buf = 138413058;
    v23 = v3;
    v24 = 2048;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_DEFAULT, "MobileAsset _MAclientSendGetServerUrl for %@ response %lld (%@) -- Base URL: %@", buf, 0x2Au);
  }

  v14 = v21;
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

__CFString *stringForMAOperationResult(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MAOperationResult%llu", a1];
  }

  else
  {
    v2 = off_1E74C9CF0[a1];
  }

  return v2;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x19A8EC5D0](*(a2 + 40));
  *(a1 + 40) = result;
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

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
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

id getRepositoryPath(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v3 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446210;
      v7 = "getRepositoryPath";
      _os_log_impl(&dword_197AD5000, v3, OS_LOG_TYPE_ERROR, "ERROR: Invalid string passed to %{public}s", &v6, 0xCu);
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

void _MAsendDownloadMetaData(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    if (v5)
    {
      xpc_dictionary_set_string(v8, "AssetType", [v5 UTF8String]);
      xpc_dictionary_set_uint64(v8, "messageAction", 2uLL);
      v9 = [v6 encodeAsPlist];
      if (addObjectToMessage(v9, v8, "downloadOptionsLength", "downloadOptions"))
      {
        v10 = 32;
      }

      else
      {
        v11 = _MAClientLog(@"V2");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138543362;
          v14 = v5;
          _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_DEFAULT, "Bad options for asset type: %{public}@ not sending message", &v13, 0xCu);
        }

        v10 = 22;
      }
    }

    else
    {
      v9 = 0;
      v10 = 19;
    }
  }

  else
  {
    v9 = 0;
    v10 = 24;
  }

  sendIfNecessary(v10, v8, 0, v7);

  v12 = *MEMORY[0x1E69E9840];
}

id getPlistEntryOfClass(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (!v4 || (isKindOfClass & 1) == 0)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_11;
  }

  v7 = [v3 objectForKey:v4];
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

LABEL_11:

  return v6;
}

id getPlistString(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  objc_opt_class();
  v5 = getPlistEntryOfClass(v4, v3);

  return v5;
}

uint64_t getPlistNumberAsBool(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  objc_opt_class();
  v5 = getPlistEntryOfClass(v4, v3);

  v6 = [v5 BOOLValue];
  return v6;
}

uint64_t addObjectToMessage(void *a1, void *a2, const char *a3, const char *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (!v7 || !v8 || !a3 || !a4)
  {
    v16 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_197AD5000, v16, OS_LOG_TYPE_DEFAULT, "MobileAsset addObjectToMessage has nil parameter", v18, 2u);
    }

    v11 = 0;
    goto LABEL_12;
  }

  v10 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  v11 = v10;
  if (!v10)
  {
LABEL_12:
    v12 = 0;
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  [v10 encodeObject:v7 forKey:*MEMORY[0x1E696A508]];
  v12 = [v11 encodedData];

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = [v11 encodedData];
  v12 = v13;
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = [v13 length];
  xpc_dictionary_set_data(v9, a4, [v12 bytes], v14);
  xpc_dictionary_set_double(v9, a3, v14);
  v15 = 1;
LABEL_14:

  return v15;
}

void sendIfNecessary(int64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v7)
  {
    v11 = _getClientCallbackQueue();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __sendIfNecessary_block_invoke_2;
    v14[3] = &unk_1E74C9888;
    v15 = 0;
    v16 = v9;
    dispatch_async(v11, v14);

    v12 = v16;
LABEL_6:

    goto LABEL_7;
  }

  if (a1 != 32)
  {
    xpc_dictionary_set_int64(v7, "Result", a1);
    v13 = _getClientCallbackQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __sendIfNecessary_block_invoke;
    block[3] = &unk_1E74C9888;
    v19 = v9;
    v18 = v7;
    dispatch_async(v13, block);

    v12 = v19;
    goto LABEL_6;
  }

  v10 = _getCommsManager();
  [v10 sendAsync:v7 clientHandler:v9 taskDescriptor:v8];

LABEL_7:
}

id getPlistNumber(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  objc_opt_class();
  v5 = getPlistEntryOfClass(v4, v3);

  return v5;
}

NSObject *getPlistDictionary(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446210;
      v12 = "getPlistDictionary";
      _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_ERROR, "%{public}s: Invalid options", &v11, 0xCu);
    }

    goto LABEL_15;
  }

  objc_opt_class();
  v6 = getPlistEntryOfClass(v3, v5);
  if (!v6)
  {
    v7 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446466;
      v12 = "getPlistDictionary";
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_197AD5000, v7, OS_LOG_TYPE_ERROR, "%{public}s: Unable to extract plist object for key %{public}@ from dict", &v11, 0x16u);
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_12:
    v8 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446466;
      v12 = "getPlistDictionary";
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_ERROR, "%{public}s: Extracted object for key %{public}@ is invalid/not a dictionary", &v11, 0x16u);
    }

LABEL_15:
    v6 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

id getPlistData(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  objc_opt_class();
  v5 = getPlistEntryOfClass(v4, v3);

  return v5;
}

id plistDecodeClasses()
{
  if (plistDecodeClasses_once != -1)
  {
    plistDecodeClasses_cold_1();
  }

  v1 = plistDecodeClasses__plistDecodeClasses;

  return v1;
}

id stringWithoutNewlines(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", a1];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

  return v2;
}

__CFString *stringForMAQueryResult(unint64_t a1)
{
  if (a1 >= 0xF)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MAQueryResult%llu", a1];
  }

  else
  {
    v2 = off_1E74C9A40[a1];
  }

  return v2;
}

__CFString *stringForMADownloadResult(unint64_t a1)
{
  if (a1 >= 0x57)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MADownloadResult%llu", a1];
  }

  else
  {
    v2 = off_1E74C9D20[a1];
  }

  return v2;
}

BOOL isDownloadResultFailure(uint64_t a1)
{
  if (a1)
  {
    v1 = a1 == 14;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

__CFString *errorStringForMADownloadResult(unint64_t a1)
{
  if (a1 >= 0x57)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = stringForMADownloadResult(a1);
    v2 = [v3 stringWithFormat:@"Download failed due to Error %lld (%@).", a1, v4];
  }

  else
  {
    v2 = off_1E74CA190[a1];
  }

  return v2;
}

id MAErrorForDownloadResultWithUnderlying(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a2;
  v12 = a3;
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v12 arguments:&a9];
  }

  else
  {
    v13 = errorStringForMADownloadResult(a1);
  }

  v14 = v13;
  v15 = objc_opt_new();
  v16 = v15;
  if (a1 > 35)
  {
    if (a1 > 44)
    {
      if (a1 != 45)
      {
        if (a1 == 48)
        {
          goto LABEL_24;
        }

        if (a1 != 70)
        {
          goto LABEL_27;
        }

        v17 = @"checkClockAndCerts";
        goto LABEL_37;
      }
    }

    else if ((a1 - 41) >= 2)
    {
      if (a1 == 36)
      {
        goto LABEL_24;
      }

      if (a1 != 37)
      {
        goto LABEL_27;
      }

      v17 = @"checkSpaceNeeded";
LABEL_37:
      [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v17];
      goto LABEL_38;
    }

LABEL_26:
    [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"checkServer"];
    goto LABEL_27;
  }

  if (a1 <= 27)
  {
    if ((a1 - 14) >= 2 && a1 && a1 != 10)
    {
      goto LABEL_27;
    }

LABEL_18:
    [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"usableDownload"];
    if (a1 != 10)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if ((a1 - 31) < 2 || a1 == 28)
  {
LABEL_24:
    [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"requeryIsHelpful"];
    if (a1 > 0x2D || ((1 << a1) & 0x260000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (a1 == 29)
  {
    goto LABEL_18;
  }

LABEL_27:
  if ((a1 & 0xFFFFFFFFFFFFFFFCLL) == 0x50)
  {
    [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"timeoutWithDetail"];
  }

  v17 = @"checkFilesystemState";
  v18 = @"checkNetwork";
  switch(a1)
  {
    case 4:
    case 7:
    case 33:
    case 38:
    case 76:
      goto LABEL_37;
    case 11:
    case 12:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 39:
    case 74:
      goto LABEL_30;
    case 51:
    case 52:
    case 53:
    case 55:
    case 56:
    case 80:
    case 81:
    case 82:
    case 83:
      [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"checkTimeoutConditions"];
      v19 = a1 - 33;
      if ((a1 - 33) > 0x2B)
      {
        break;
      }

      if (((1 << v19) & 0xDB9200000) != 0)
      {
        v18 = @"checkNetwork";
        goto LABEL_34;
      }

      if (((1 << v19) & 0x80000000021) != 0)
      {
LABEL_36:
        v17 = @"checkFilesystemState";
        goto LABEL_37;
      }

      if (a1 == 74)
      {
LABEL_30:
        v18 = @"checkClient";
LABEL_34:
        [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v18];
        if ((a1 - 33) <= 0x2B && ((1 << (a1 - 33)) & 0x80000000021) != 0)
        {
          goto LABEL_36;
        }

        break;
      }

      break;
    case 54:
    case 57:
    case 60:
    case 61:
    case 62:
    case 64:
    case 65:
    case 67:
    case 68:
      goto LABEL_34;
    default:
      break;
  }

LABEL_38:
  if (isDownloadResultSuggestingTryAgainLater(a1))
  {
    [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"tryAgainLater"];
  }

  if (a1 <= 0x18 && ((1 << a1) & 0x1002306) != 0)
  {
    [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"retryWithBackoff"];
  }

  if (isDownloadResultSuggestingCheckConfiguration(a1))
  {
    [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"checkConfiguration"];
  }

  if (a1 <= 0x23)
  {
    if (((1 << a1) & 0x900000108) != 0)
    {
      v20 = @"generic";
LABEL_48:
      [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v20];
      goto LABEL_49;
    }

    if (a1 == 18)
    {
      [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"pallasNoPMVMatchFound"];
      v20 = @"pallasNoBuildVersionMatchFound";
      goto LABEL_48;
    }
  }

  if (a1 == 75)
  {
    v20 = @"checkSSO";
    goto LABEL_48;
  }

LABEL_49:
  v21 = MAErrorWithUnderlyingUserInfoAndString(@"com.apple.MobileAssetError.Download", a1, v11, v16, v14);

  return v21;
}

BOOL isDownloadResultSuggestingTryAgainLater(uint64_t a1)
{
  result = 1;
  if ((a1 - 16) > 0x37 || ((1 << (a1 - 16)) & 0x800000800C4007) == 0)
  {
    return a1 == 3;
  }

  return result;
}

BOOL isDownloadResultSuggestingCheckConfiguration(uint64_t a1)
{
  result = 1;
  if ((a1 - 25) > 0x34 || ((1 << (a1 - 25)) & 0x158246032C8007) == 0)
  {
    return (a1 - 5) < 2;
  }

  return result;
}

id MAErrorWithUnderlyingUserInfoAndString(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_new();
  v14 = v13;
  if (v12)
  {
    [v13 setObject:v12 forKey:*MEMORY[0x1E696A578]];
  }

  if (v10)
  {
    [v14 setObject:v10 forKey:*MEMORY[0x1E696AA08]];
  }

  if (v11)
  {
    v26 = a2;
    v27 = v10;
    v28 = v9;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          v21 = objc_autoreleasePoolPush();
          v22 = [v15 objectForKey:v20];
          [v14 setObject:v22 forKey:v20];

          objc_autoreleasePoolPop(v21);
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v17);
    }

    v10 = v27;
    v9 = v28;
    a2 = v26;
  }

  v23 = [MEMORY[0x1E696ABC0] errorWithDomain:v9 code:a2 userInfo:v14];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

void _MAensureExtension(void *a1)
{
  v1 = a1;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__1293;
  v29[4] = __Block_byref_object_dispose__1294;
  v30 = 0;
  string = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v1)
  {
    v9 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to get sandbox extension for a nil asset type", buf, 2u);
    }

    v7 = 0;
    v5 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  v3 = _getSandboxExtensions();
  v4 = _getClientInternalStateQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MAensureExtension_block_invoke;
  block[3] = &unk_1E74C99C8;
  v26 = v29;
  v5 = v3;
  v24 = v5;
  v6 = v1;
  v25 = v6;
  v27 = &v31;
  dispatch_sync(v4, block);

  if (v32[3])
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_13;
  }

  xpc_dictionary_set_string(v2, "AssetType", [v6 UTF8String]);
  xpc_dictionary_set_uint64(v2, "messageAction", 7uLL);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", getprogname()];
  xpc_dictionary_set_string(v2, "clientName", [v7 UTF8String]);
  v21 = 4;
  v10 = _getCommsManager();
  v8 = [v10 sendSync:v2 gettingResponseCode:&v21 codeForXpcError:1 loggingName:@"getLocalUrl"];

  if (v21)
  {
    v9 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_12:

      goto LABEL_13;
    }

    *buf = 0;
    v11 = "Extension failure server side";
    goto LABEL_10;
  }

  string = xpc_dictionary_get_string(v8, [@"sandboxExtensionKey" UTF8String]);
  if (!string)
  {
    v9 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v11 = "extension present";
LABEL_10:
    v12 = v9;
    v13 = OS_LOG_TYPE_DEFAULT;
LABEL_11:
    _os_log_impl(&dword_197AD5000, v12, v13, v11, buf, 2u);
    goto LABEL_12;
  }

  if (sandbox_extension_consume() == -1)
  {
    v9 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v11 = "unable to consume sandbox extension";
    v12 = v9;
    v13 = OS_LOG_TYPE_ERROR;
    goto LABEL_11;
  }

  v14 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_197AD5000, v14, OS_LOG_TYPE_DEFAULT, "Consumed extension", buf, 2u);
  }

  v15 = [MEMORY[0x1E696B098] valueWithBytes:&string objCType:"^*"];
  if (v15)
  {
    v16 = _getClientInternalStateQueue();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = ___MAensureExtension_block_invoke_1300;
    v17[3] = &unk_1E74C99F0;
    v5 = v5;
    v18 = v5;
    v19 = v15;
    v20 = v6;
    v9 = v15;
    dispatch_sync(v16, v17);

    goto LABEL_12;
  }

LABEL_13:

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(&v31, 8);
}

void sub_197ADAF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

id _getSandboxExtensions()
{
  if (_getSandboxExtensions_once != -1)
  {
    _getSandboxExtensions_cold_1();
  }

  v1 = _getSandboxExtensions_extensions;

  return v1;
}

id _getClientInternalStateQueue()
{
  if (_getClientInternalStateQueue_stateOnce != -1)
  {
    _getClientInternalStateQueue_cold_1();
  }

  v1 = _getClientInternalStateQueue_stateQueue;

  return v1;
}

__CFString *_MAsendUpdateClientAccessGetPathWithPurposeSync(void *a1, void *a2, uint64_t a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = xpc_dictionary_create(0, 0, 0);
  if (v10)
  {
    xpc_dictionary_set_string(v10, "AssetType", [v7 UTF8String]);
    xpc_dictionary_set_string(v10, "AssetId", [v8 UTF8String]);
    xpc_dictionary_set_string(v10, "localAssetPath", [@"true" fileSystemRepresentation]);
    xpc_dictionary_set_uint64(v10, "assetState", a3);
    xpc_dictionary_set_uint64(v10, "messageAction", 0x15uLL);
    if (v9)
    {
      xpc_dictionary_set_string(v10, "Purpose", [v9 UTF8String]);
    }

    v28 = 4;
    v11 = _getCommsManager();
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_MAsendUpdateClientAccessGetPathWithPurposeSync"];
    v13 = [v11 sendSync:v10 gettingResponseCode:&v28 codeForXpcError:1 loggingName:v12];

    if (v13)
    {
      v14 = v28;
      if (v28)
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = stringForMAOperationResult(v28);
        v17 = [v15 stringWithFormat:@", unable to update last access time %ld (%@)", v14, v16];
      }

      else
      {
        v17 = &stru_1F0C1B388;
      }

      int64 = xpc_dictionary_get_int64(v13, "assetDataExistsPosNeg");
      v21 = @", exists: NO";
      if (int64 >= 0)
      {
        v21 = &stru_1F0C1B388;
      }

      if (int64 <= 0)
      {
        v22 = v21;
      }

      else
      {
        v22 = @", exists: YES";
      }

      string = xpc_dictionary_get_string(v13, "localAssetPath");
      if (string)
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
        v24 = _MAClientLog(@"V2");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544386;
          v30 = v7;
          v31 = 2114;
          v32 = v8;
          v33 = 2114;
          v34 = v19;
          v35 = 2114;
          v36 = v22;
          v37 = 2114;
          v38 = v17;
          _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_DEFAULT, "getLocalPath asset %{public}@ %{public}@ local path is '%{public}@'%{public}@%{public}@", buf, 0x34u);
        }

        if (usingCentralizedCachedelete())
        {
          markAssetPurgeable(v19);
        }
      }

      else
      {
        v25 = _MAClientLog(@"V2");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          v30 = v7;
          v31 = 2114;
          v32 = v8;
          v33 = 2114;
          v34 = v22;
          v35 = 2114;
          v36 = v17;
          _os_log_impl(&dword_197AD5000, v25, OS_LOG_TYPE_DEFAULT, "getLocalPath asset %{public}@ %{public}@%{public}@%{public}@", buf, 0x2Au);
        }

        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v18 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_DEFAULT, "getLocalPath Could not create xpc message", buf, 2u);
    }

    v19 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v19;
}

uint64_t usingCentralizedCachedelete()
{
  if (usingCentralizedCachedelete_onceToken != -1)
  {
    usingCentralizedCachedelete_cold_1();
  }

  return usingCentralizedCachedelete_eapfsEnabled;
}

double MAConvertTicksToSeconds(unint64_t a1)
{
  v2 = *&MAConvertTicksToSeconds_ticksPerSecond;
  if (*&MAConvertTicksToSeconds_ticksPerSecond == 0.0)
  {
    info = 0;
    if (mach_timebase_info(&info))
    {
      v3 = 0;
      v4 = 1;
    }

    else
    {
      if (info.denom)
      {
        denom = info.denom;
        numer = info.numer;
        do
        {
          v7 = denom;
          denom = numer % denom;
          numer = v7;
        }

        while (denom);
      }

      else
      {
        v7 = info.numer;
      }

      v3 = info.numer / v7;
      v4 = info.denom / v7;
    }

    v8 = 1000000000;
    v9 = v3;
    do
    {
      v10 = v9;
      v9 = v8;
      v8 = v10 % v8;
    }

    while (v8);
    v2 = (v3 / v9) / (v4 * (0x3B9ACA00 / v9));
    *&MAConvertTicksToSeconds_ticksPerSecond = v2;
  }

  return v2 * a1;
}

id normalizedAssetType(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x1E696AD60] stringWithString:a1];
    [v1 replaceOccurrencesOfString:@"." withString:@"_" options:2 range:{0, objc_msgSend(v1, "length")}];
  }

  else
  {
    v2 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_197AD5000, v2, OS_LOG_TYPE_DEFAULT, "Could not create normalized asset type", v4, 2u);
    }

    v1 = 0;
  }

  return v1;
}

void sub_197AE09AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_197AE1248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void ___getClientInternalStateQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MobileAsset.client.state", v2);
  v1 = _getClientInternalStateQueue_stateQueue;
  _getClientInternalStateQueue_stateQueue = v0;
}

uint64_t isValidObjectForAssetTypesArray(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if (*(*(&v11 + 1) + 8 * i))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              continue;
            }
          }

          v8 = _MAClientLog(@"V2");
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_DEFAULT, "Asset type in array is not a string", buf, 2u);
          }

          goto LABEL_18;
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v16 count:16];
        v7 = 1;
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v2 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v2, OS_LOG_TYPE_DEFAULT, "Asset types is not an array", buf, 2u);
    }

LABEL_18:
    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t isValidObjectForPreservedIdsDict(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v2 = v1;
      v3 = [v2 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (!v3)
      {
        v17 = 1;
        goto LABEL_31;
      }

      v4 = v3;
      v5 = *v30;
      v6 = 0x1E695D000uLL;
LABEL_5:
      v7 = 0;
      v23 = v4;
      while (1)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v29 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        if (!v8)
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v10 = [v2 objectForKey:v8];
        if (!v10 || (v11 = *(v6 + 3784), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v21 = _MAClientLog(@"V2");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v34 = v8;
            _os_log_impl(&dword_197AD5000, v21, OS_LOG_TYPE_DEFAULT, "Preserved IDs value is not an array for: %{public}@", buf, 0xCu);
          }

LABEL_29:
          objc_autoreleasePoolPop(v9);
          goto LABEL_30;
        }

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = v10;
        v12 = [v10 countByEnumeratingWithState:&v25 objects:v37 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v26;
          v24 = v9;
          v22 = v5;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v26 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v25 + 1) + 8 * i);
              if (v16)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  continue;
                }
              }

              v18 = _MAClientLog(@"V2");
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v34 = v8;
                v35 = 2114;
                v36 = v16;
                _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_DEFAULT, "Preserved ID is not a string: %{public}@ %{public}@", buf, 0x16u);
              }

              v9 = v24;
              goto LABEL_29;
            }

            v13 = [v10 countByEnumeratingWithState:&v25 objects:v37 count:16];
            v9 = v24;
            v5 = v22;
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
        v6 = 0x1E695D000;
        if (v7 == v23)
        {
          v4 = [v2 countByEnumeratingWithState:&v29 objects:v38 count:16];
          v17 = 1;
          if (v4)
          {
            goto LABEL_5;
          }

          goto LABEL_31;
        }
      }

      v10 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, "Preserved IDs key is not a string", buf, 2u);
      }

      goto LABEL_29;
    }
  }

  v2 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_197AD5000, v2, OS_LOG_TYPE_DEFAULT, "Preserved IDs type is not an dictionary", buf, 2u);
  }

LABEL_30:
  v17 = 0;
LABEL_31:

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

NSObject *getLoadClassFromMessage(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  length = 0;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v6 length])
  {
    v11 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:
      v9 = 0;
      v10 = 0;
      goto LABEL_15;
    }

    *buf = 138543362;
    v19 = v6;
    v13 = "load key is invalid skipping: %{public}@";
LABEL_13:
    _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
    goto LABEL_14;
  }

  data = xpc_dictionary_get_data(v5, [v6 UTF8String], &length);
  if (!data)
  {
    v11 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 138543362;
    v19 = v6;
    v13 = "load rawData is null skipping: %{public}@";
    goto LABEL_13;
  }

  v8 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:data length:length freeWhenDone:0];
  if (!v8)
  {
    v11 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 138543362;
    v19 = v6;
    v13 = "load data is null skipping: %{public}@";
    goto LABEL_13;
  }

  v9 = v8;
  v10 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v8 error:0];
  v11 = [v10 decodePropertyListForKey:*MEMORY[0x1E696A508]];
  [v10 finishDecoding];
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_16;
    }

    v12 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v19 = a3;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_DEFAULT, "load object is not a %{public}@: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v11 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v6;
      _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_DEFAULT, "load object is null skipping: %{public}@", buf, 0xCu);
    }
  }

LABEL_15:

  v11 = 0;
LABEL_16:
  v14 = v11;

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

id getLoadDictionaryFromMessage(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = getLoadClassFromMessage(v4, v3, v5);

  return v6;
}

uint64_t sendOperationSync(void *a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v16 = 4;
  v7 = objc_autoreleasePoolPush();
  v8 = xpc_dictionary_create(0, 0, 0);
  if (!v8)
  {
    v9 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_ERROR, "Could not create xpc dictionary, returning MAOperationXpcError", buf, 2u);
    }

    goto LABEL_8;
  }

  if (!v5)
  {
LABEL_5:
    xpc_dictionary_set_uint64(v8, "messageAction", a2);
    v9 = _getCommsManager();
    v10 = [v9 sendSync:v8 gettingResponseCode:&v16 codeForXpcError:1 loggingName:v6];
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    xpc_dictionary_set_string(v8, "AssetType", [v5 UTF8String]);
    goto LABEL_5;
  }

  v14 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = stringForMAXpcCommand(a2);
    *buf = 138543874;
    v18 = v6;
    v19 = 2048;
    v20 = a2;
    v21 = 2114;
    v22 = v15;
    _os_log_impl(&dword_197AD5000, v14, OS_LOG_TYPE_DEFAULT, "MobileAsset %{public}@ sendOperationSync %lld (%{public}@) given a non-NSString assetType", buf, 0x20u);
  }

  v16 = 2;
LABEL_9:

  objc_autoreleasePoolPop(v7);
  if (v8)
  {
    v11 = v16;
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void _MAPurgeAll(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = xpc_dictionary_create(0, 0, 0);
  if (!v11)
  {
    v13 = 9;
    goto LABEL_12;
  }

  if (!isValidObjectForAssetTypesArray(v7) || !addObjectToMessage(v7, v11, "purgeAssetTypeListLength", "purgeAssetTypeList") || v9 && (!isValidObjectForPreservedIdsDict(v9) || !addObjectToMessage(v9, v11, "purgeAssetTypePreservingListLength", "purgeAssetTypePreservingList")))
  {
    v13 = 10;
LABEL_12:
    xpc_dictionary_set_int64(v11, "Result", v13);
    v14 = _getClientCallbackQueue();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___MAPurgeAll_block_invoke;
    v15[3] = &unk_1E74C9888;
    v17 = v10;
    v16 = v11;
    dispatch_async(v14, v15);

    goto LABEL_13;
  }

  xpc_dictionary_set_uint64(v11, "messageAction", 0x18uLL);
  if (v8)
  {
    xpc_dictionary_set_string(v11, "Purpose", [v8 UTF8String]);
  }

  v12 = _getCommsManager();
  [v12 sendAsync:v11 clientHandler:v10 taskDescriptor:0];

LABEL_13:
}

void _MAPurgeCatalogs(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = xpc_dictionary_create(0, 0, 0);
  if (!v8)
  {
    v10 = 9;
LABEL_8:
    xpc_dictionary_set_int64(v8, "Result", v10);
    v11 = _getClientCallbackQueue();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___MAPurgeCatalogs_block_invoke;
    v12[3] = &unk_1E74C9888;
    v14 = v7;
    v13 = v8;
    dispatch_async(v11, v12);

    goto LABEL_9;
  }

  if (!addObjectToMessage(v5, v8, "purgeAssetTypeListLength", "purgeAssetTypeList"))
  {
    v10 = 10;
    goto LABEL_8;
  }

  xpc_dictionary_set_uint64(v8, "messageAction", 0x1AuLL);
  if (v6)
  {
    xpc_dictionary_set_string(v8, "Purpose", [v6 UTF8String]);
  }

  v9 = _getCommsManager();
  [v9 sendAsync:v8 clientHandler:v7 taskDescriptor:0];

LABEL_9:
}

void _MAsendCancelDownloadMetaData(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (!v4 || !v6)
  {
    if (!v6)
    {
LABEL_7:
      v9 = _getClientCallbackQueue();
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = ___MAsendCancelDownloadMetaData_block_invoke;
      v10[3] = &unk_1E74C9888;
      v12 = v5;
      v11 = v7;
      dispatch_async(v9, v10);

      goto LABEL_8;
    }

LABEL_6:
    xpc_dictionary_set_int64(v7, "Result", 4);
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  xpc_dictionary_set_string(v7, "AssetType", [v4 UTF8String]);
  xpc_dictionary_set_uint64(v7, "messageAction", 0x1CuLL);
  v8 = _getCommsManager();
  [v8 sendAsync:v7 clientHandler:v5 taskDescriptor:0];

LABEL_8:
}

uint64_t _MAsendSetPallasEnabled(void *a1, BOOL a2)
{
  v3 = a1;
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      xpc_dictionary_set_string(v4, "AssetType", [v3 UTF8String]);
    }

    xpc_dictionary_set_BOOL(v4, "pallasEnabled", a2);
    xpc_dictionary_set_uint64(v4, "messageAction", 0x21uLL);
    v9 = 4;
    v5 = _getCommsManager();
    v6 = [v5 sendSync:v4 gettingResponseCode:&v9 codeForXpcError:1 loggingName:@"MASetPallasEnabled"];

    v7 = v9;
  }

  else
  {
    v7 = 1;
    v9 = 1;
  }

  return v7;
}

uint64_t _MAsendGetPallasEnabled(void *a1, BOOL *a2)
{
  v3 = a1;
  v10 = 4;
  if (a2)
  {
    *a2 = 0;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      xpc_dictionary_set_string(v4, "AssetType", [v3 UTF8String]);
    }

    xpc_dictionary_set_uint64(v4, "messageAction", 0x20uLL);
    v5 = _getCommsManager();
    v6 = [v5 sendSync:v4 gettingResponseCode:&v10 codeForXpcError:1 loggingName:@"MAGetPallasEnabled"];

    if (!v10)
    {
      v7 = xpc_dictionary_get_BOOL(v6, "pallasEnabled");
      if (a2)
      {
        *a2 = v7;
      }
    }
  }

  else
  {
    v6 = 0;
    v10 = 1;
  }

  v8 = v10;

  return v8;
}

uint64_t _MAsendSetPallasAudience(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v10 = 4;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      xpc_dictionary_set_string(v5, "pallasAudience", [v3 UTF8String]);
      goto LABEL_5;
    }

LABEL_8:
    v8 = 1;
    v10 = 1;
    goto LABEL_9;
  }

LABEL_5:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    xpc_dictionary_set_string(v5, "AssetType", [v4 UTF8String]);
  }

  xpc_dictionary_set_uint64(v5, "messageAction", 0xAuLL);
  v6 = _getCommsManager();
  v7 = [v6 sendSync:v5 gettingResponseCode:&v10 codeForXpcError:1 loggingName:@"MASetPallasAudience"];

  v8 = v10;
LABEL_9:

  return v8;
}

__CFString *_MAsendGetPallasAudience(void *a1)
{
  v1 = a1;
  v10 = 4;
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      xpc_dictionary_set_string(v2, "AssetType", [v1 UTF8String]);
    }

    xpc_dictionary_set_uint64(v2, "messageAction", 0x14uLL);
    v3 = _getCommsManager();
    v4 = [v3 sendSync:v2 gettingResponseCode:&v10 codeForXpcError:1 loggingName:@"MAGetPallasAudience"];

    if (v10)
    {
      string = 0;
    }

    else
    {
      string = xpc_dictionary_get_string(v4, "pallasAudience");
      if (string)
      {
        string = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      }
    }

    v6 = string;

    v7 = v6;
  }

  else
  {
    v6 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_ERROR, "Could not create xpc dictionary, returning empty string", v9, 2u);
    }

    v7 = &stru_1F0C1B388;
  }

  return v7;
}

uint64_t _MAsendSetPallasUrlForType(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      xpc_dictionary_set_string(v5, "AssetType", [v4 UTF8String]);
    }
  }

  if (v5)
  {
    if (!v3)
    {
      xpc_dictionary_set_BOOL(v5, "serverOverrideClear", 1);
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v3 absoluteString];
      xpc_dictionary_set_string(v5, "pallasUrl", [v6 UTF8String]);

LABEL_12:
      xpc_dictionary_set_uint64(v5, "messageAction", 9uLL);
      *v16 = 4;
      v9 = _getCommsManager();
      v10 = [v9 sendSync:v5 gettingResponseCode:v16 codeForXpcError:1 loggingName:@"MASetPallasUrl"];

      v8 = *v16;
      goto LABEL_16;
    }

    v11 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *v16 = 138543362;
      *&v16[4] = v13;
      _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_ERROR, "Cannot set Pallas URL to a class that is not NSURL (was given an %{public}@), returning MAOperationInvalid.", v16, 0xCu);
    }

    v8 = 5;
  }

  else
  {
    v7 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&dword_197AD5000, v7, OS_LOG_TYPE_ERROR, "Could not create xpc dictionary, returning MAOperationXpcError", v16, 2u);
    }

    v8 = 1;
  }

LABEL_16:

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

NSObject *_MAsendGetPallasUrlForType(void *a1)
{
  v1 = a1;
  v13 = 4;
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      xpc_dictionary_set_string(v2, "AssetType", [v1 UTF8String]);
    }
  }

  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "messageAction", 0x2CuLL);
    v3 = _getCommsManager();
    v4 = [v3 sendSync:v2 gettingResponseCode:&v13 codeForXpcError:1 loggingName:@"MAGetPallasUrl"];

    if (v13 || (string = xpc_dictionary_get_string(v4, "pallasUrl")) == 0)
    {
      v5 = 0;
    }

    else
    {
      v9 = MEMORY[0x1E695DFF8];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      v5 = [v9 URLWithString:v10];
    }

    v6 = v5;

    v7 = v6;
  }

  else
  {
    v6 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
      _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_ERROR, "Could not create xpc dictionary, returning MAOperationXpcError", &v12, 2u);
    }

    v7 = 0;
  }

  return v7;
}

uint64_t _MASetDawTokenValue(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    if (v1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        xpc_dictionary_set_string(v2, "tokenValue", [v1 UTF8String]);
      }
    }

    xpc_dictionary_set_uint64(v2, "messageAction", 0x2BuLL);
    v12 = 4;
    v3 = _getCommsManager();
    v4 = [v3 sendSync:v2 gettingResponseCode:&v12 codeForXpcError:1 loggingName:@"MASetDawTokenValue"];

    v5 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v12;
      v7 = MAStringForMAOperationResult(v12);
      *buf = 134218242;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_DEFAULT, "Result of setDawTokenValue is %lld (%{public}@)", buf, 0x16u);
    }

    v8 = v12;
  }

  else
  {
    v9 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_ERROR, "Could not create xpc dictionary, returning MAOperationXpcError", buf, 2u);
    }

    v8 = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t _MASetDawTokenPath(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    if (v1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        xpc_dictionary_set_string(v2, "tokenPath", [v1 fileSystemRepresentation]);
      }
    }

    xpc_dictionary_set_uint64(v2, "messageAction", 0x22uLL);
    v12 = 4;
    v3 = _getCommsManager();
    v4 = [v3 sendSync:v2 gettingResponseCode:&v12 codeForXpcError:1 loggingName:@"MASetDawTokenPath"];

    v5 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v12;
      v7 = MAStringForMAOperationResult(v12);
      *buf = 134218242;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_DEFAULT, "Result of setDawTokenPath is %lld (%{public}@)", buf, 0x16u);
    }

    v8 = v12;
  }

  else
  {
    v9 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_ERROR, "Could not create xpc dictionary, returning MAOperationXpcError", buf, 2u);
    }

    v8 = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t _MAsendSetPreferences(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v17 = 4;
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v16 = 0;
    v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v1 requiringSecureCoding:1 error:&v16];
    v4 = v16;
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 == 0;
    }

    if (v5)
    {
      v6 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = v4;
        _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_DEFAULT, "{_MAsendSetPreferences} Encoding error: %{public}@", buf, 0xCu);
      }

      v7 = 5;
    }

    else
    {
      xpc_dictionary_set_data(v2, [@"MAPreferences" UTF8String], -[NSObject bytes](v3, "bytes"), -[NSObject length](v3, "length"));
      xpc_dictionary_set_uint64(v2, "messageAction", 0x2EuLL);
      v8 = _getCommsManager();
      v9 = [v8 sendSync:v2 gettingResponseCode:&v17 codeForXpcError:1 loggingName:@"MASetPreferences"];

      v10 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v17;
        v13 = MAStringForMAOperationResult(v17);
        *buf = 134218242;
        v19 = v12;
        v20 = 2114;
        v21 = v13;
        _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, "Result of setPreferences is %lld (%{public}@)", buf, 0x16u);
      }

      v7 = v17;
    }
  }

  else
  {
    v3 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v3, OS_LOG_TYPE_ERROR, "Error creating xpc dictionary", buf, 2u);
    }

    v7 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t _MAClearPreferences(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v17 = 4;
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v16 = 0;
    v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v1 requiringSecureCoding:1 error:&v16];
    v4 = v16;
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 == 0;
    }

    if (v5)
    {
      v6 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = v4;
        _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_DEFAULT, "{_MAClearPreferences} Encoding error: %{public}@", buf, 0xCu);
      }

      v7 = 5;
    }

    else
    {
      xpc_dictionary_set_data(v2, [@"MAPreferences" UTF8String], -[NSObject bytes](v3, "bytes"), -[NSObject length](v3, "length"));
      xpc_dictionary_set_uint64(v2, "messageAction", 0x2FuLL);
      v8 = _getCommsManager();
      v9 = [v8 sendSync:v2 gettingResponseCode:&v17 codeForXpcError:1 loggingName:@"MAClearPreferences"];

      v10 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v17;
        v13 = MAStringForMAOperationResult(v17);
        *buf = 134218242;
        v19 = v12;
        v20 = 2114;
        v21 = v13;
        _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, "Result of clearPreferences is %lld (%{public}@)", buf, 0x16u);
      }

      v7 = v17;
    }
  }

  else
  {
    v3 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v3, OS_LOG_TYPE_ERROR, "Error creating xpc dictionary", buf, 2u);
    }

    v7 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

void sendAssetSpecificWithMessage(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v10 = a1;
  v11 = a5;
  v12 = a4;
  v13 = a2;
  xpc_dictionary_set_string(v12, "AssetType", [a1 UTF8String]);
  v14 = [v13 UTF8String];

  xpc_dictionary_set_string(v12, "AssetId", v14);
  xpc_dictionary_set_uint64(v12, "messageAction", a3);
  v15 = _getCommsManager();
  [v15 sendAsync:v12 clientHandler:v11 taskDescriptor:0];
}

void sendAssetSpecificMessageWithPurpose(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v13 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = xpc_dictionary_create(0, 0, 0);
  if (v10)
  {
    xpc_dictionary_set_string(v12, "Purpose", [v10 UTF8String]);
  }

  sendAssetSpecificWithMessage(v13, v9, a4, v12, v11);
}

void _MAsendPurgeAsset(void *a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a1;
  v7 = a2;
  v8 = a4;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  if (v9)
  {
    xpc_dictionary_set_uint64(v9, "assetState", a3);
  }

  sendAssetSpecificWithMessage(v11, v7, 5uLL, v10, v8);
}

void _MAsendConfigDownload(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a2;
  v12 = a1;
  v13 = xpc_dictionary_create(0, 0, 0);
  if (v15 && isWellFormedPurpose(v15))
  {
    xpc_dictionary_set_string(v13, "Purpose", [v15 UTF8String]);
  }

  v14 = [v9 encodeAsPlist];
  addObjectToMessage(v14, v13, "downloadConfigLength", "downloadConfig");
  sendAssetSpecificWithMessage(v12, v11, 0x13uLL, v13, v10);
}

uint64_t _MAsendInstallAsset(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v20 = 4;
  v5 = objc_autoreleasePoolPush();
  v6 = xpc_dictionary_create(0, 0, 0);
  if (!v6)
  {
    v8 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_ERROR, "Could not create xpc dictionary, returning MAOperationXpcError", buf, 2u);
    }

    goto LABEL_16;
  }

  if (!v3)
  {
LABEL_5:
    v7 = 1;
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    xpc_dictionary_set_string(v6, "AssetType", [v3 UTF8String]);
    goto LABEL_5;
  }

  v9 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = stringForMAXpcCommand(0x2Au);
    *buf = 138543874;
    v22 = @"MAInstallAsset";
    v23 = 2048;
    v24 = 42;
    v25 = 2114;
    v26 = v10;
    _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_DEFAULT, "MobileAsset %{public}@ sendOperationSync %lld (%{public}@) given a non-NSString assetType", buf, 0x20u);
  }

  v7 = 0;
  v20 = 2;
  if (!v4)
  {
LABEL_6:
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

LABEL_13:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    xpc_dictionary_set_string(v6, "MobileAssetInstallAssetPath", [v4 fileSystemRepresentation]);
    if (!v7)
    {
      goto LABEL_20;
    }

LABEL_15:
    xpc_dictionary_set_uint64(v6, "messageAction", 0x2AuLL);
    v8 = _getCommsManager();
    v11 = [v8 sendSync:v6 gettingResponseCode:&v20 codeForXpcError:1 loggingName:@"MAInstallAsset"];
LABEL_16:

    goto LABEL_20;
  }

  v12 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = stringForMAXpcCommand(0x2Au);
    *buf = 138543874;
    v22 = @"MAInstallAsset";
    v23 = 2048;
    v24 = 42;
    v25 = 2114;
    v26 = v13;
    _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_DEFAULT, "MobileAsset %{public}@ sendOperationSync %lld (%{public}@) given a non-NSString pathToAsset", buf, 0x20u);
  }

  v20 = 2;
LABEL_20:

  objc_autoreleasePoolPop(v5);
  if (v6)
  {
    v14 = v20 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  if (!v14)
  {
    v16 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = stringForMAOperationResult(v20);
      *buf = 138543362;
      v22 = v17;
      _os_log_impl(&dword_197AD5000, v16, OS_LOG_TYPE_ERROR, "MobileAsset Install Asset failed with error: %{public}@", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

void _MAsendDownloadAsset(void *a1, void *a2, void *a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8, void *a9, void *a10)
{
  v84 = *MEMORY[0x1E69E9840];
  v55 = a1;
  v16 = a2;
  v57 = a3;
  v53 = a5;
  v54 = a6;
  v50 = a8;
  v56 = a9;
  v17 = a10;
  v18 = xpc_dictionary_create(0, 0, 0);
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__0;
  v74 = __Block_byref_object_dispose__0;
  v75 = 0;
  v48 = v17;
  if (!v18)
  {
    v51 = 0;
    v52 = 0;
    v26 = 0;
    v49 = 0;
    v27 = 0;
    v28 = 24;
    goto LABEL_26;
  }

  if (!v16 || !v57 || !v54)
  {
    v29 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v77 = v16;
      v78 = 2114;
      v79 = v57;
      v80 = 2114;
      v81 = v53;
      v82 = 2114;
      v83 = v54;
      _os_log_impl(&dword_197AD5000, v29, OS_LOG_TYPE_DEFAULT, "Bad asset meta data, cannot download: %{public}@ %{public}@ %{public}@ %{public}@", buf, 0x2Au);
    }

    v52 = 0;
    v28 = 23;
    goto LABEL_19;
  }

  v19 = v16;
  xpc_dictionary_set_string(v18, "AssetType", [v16 UTF8String]);
  v20 = v57;
  xpc_dictionary_set_string(v18, "AssetId", [v57 UTF8String]);
  if (v53)
  {
    v21 = v53;
    xpc_dictionary_set_string(v18, "BaseUrlKey", [v53 UTF8String]);
  }

  v22 = v54;
  xpc_dictionary_set_string(v18, "RelativeUrlKey", [v54 UTF8String]);
  v52 = [v55 encodeAsPlist];
  if ((addObjectToMessage(v52, v18, "downloadOptionsLength", "downloadOptions") & 1) == 0)
  {
    v29 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v77 = v16;
      _os_log_impl(&dword_197AD5000, v29, OS_LOG_TYPE_DEFAULT, "Bad options for asset type: %{public}@ not sending message", buf, 0xCu);
    }

    v28 = 22;
LABEL_19:

    v26 = 0;
    v51 = 0;
    v49 = 0;
    v27 = 0;
    goto LABEL_26;
  }

  if (v56)
  {
    v23 = v56;
    xpc_dictionary_set_string(v18, "Purpose", [v56 UTF8String]);
  }

  if (v50)
  {
    v49 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v49 encodeObject:v50 forKey:*MEMORY[0x1E696A508]];
    v51 = [v49 encodedData];
    v24 = [v51 length];
    v25 = v51;
    xpc_dictionary_set_data(v18, "stExtractor", [v51 bytes], v24);
    xpc_dictionary_set_double(v18, "stExtractorLength", v24);
  }

  else
  {
    v30 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v30, OS_LOG_TYPE_DEFAULT, "No extractor specified", buf, 2u);
    }

    v51 = 0;
    v49 = 0;
  }

  v31 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v77 = a4;
    _os_log_impl(&dword_197AD5000, v31, OS_LOG_TYPE_DEFAULT, "The download size is: %lld", buf, 0xCu);
  }

  xpc_dictionary_set_int64(v18, "downloadSize", a4);
  xpc_dictionary_set_uint64(v18, "notificationInterval", a7);
  xpc_dictionary_set_uint64(v18, "messageAction", 3uLL);
  v26 = normalizedAssetType(v16);
  v27 = assembleTaskDescriptorWithPurpose(v26, v57, v56);
  v28 = 32;
LABEL_26:
  v32 = dispatch_time(0, 0);
  if (v55)
  {
    v33 = [v55 allowDaemonConnectionRetries];
  }

  else
  {
    v33 = 0;
  }

  v34 = _getCommsManager();
  v35 = [v34 progressCallbacksForAssetType:v16 assetId:v57 withPurpose:v56];
  v36 = [v35 copy];

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = ___MAsendDownloadAsset_block_invoke;
  v58[3] = &unk_1E74C98D8;
  v69 = v33;
  v67 = v32;
  v37 = v16;
  v59 = v37;
  v38 = v57;
  v60 = v38;
  v39 = v36;
  v61 = v39;
  v40 = v56;
  v62 = v40;
  v68 = v28;
  v41 = v18;
  v63 = v41;
  v42 = v27;
  v64 = v42;
  v66 = &v70;
  v43 = v48;
  v65 = v43;
  v44 = MEMORY[0x19A8EC5D0](v58);
  v45 = v71[5];
  v71[5] = v44;

  sendIfNecessary(v28, v41, v42, v71[5]);
  _Block_object_dispose(&v70, 8);

  v46 = *MEMORY[0x1E69E9840];
}

id getRetryXpcDelayQueue()
{
  if (getRetryXpcDelayQueue_onceToken != -1)
  {
    getRetryXpcDelayQueue_cold_1();
  }

  v1 = getRetryXpcDelayQueue_retryQueue;

  return v1;
}

uint64_t ___getSandboxExtensions_block_invoke()
{
  _getSandboxExtensions_extensions = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

void _MAsendPMVDownload(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v9 = xpc_dictionary_create(0, 0, 0);
  if (v9)
  {
    v10 = [v8 encodeAsPlist];
    if (addObjectToMessage(v10, v9, "downloadOptionsLength", "downloadOptions"))
    {
      xpc_dictionary_set_uint64(v9, "messageAction", 0x1EuLL);
      v11 = 32;
    }

    else
    {
      v12 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_DEFAULT, "Bad options for PMV download: not sending message", buf, 2u);
      }

      v11 = 22;
    }
  }

  else
  {
    v11 = 1;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___MAsendPMVDownload_block_invoke;
  v15[3] = &unk_1E74C9950;
  v18 = a2;
  v16 = v8;
  v17 = v6;
  v13 = v6;
  v14 = v8;
  sendIfNecessary(v11, v9, 0, v15);
}

void _MAsendPMVCancelDownload(void *a1)
{
  v1 = a1;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 4;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "messageAction", 0x1DuLL);
    v4 = _getCommsManager();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___MAsendPMVCancelDownload_block_invoke;
    v8[3] = &unk_1E74C99A0;
    v9[1] = v10;
    v9[0] = v1;
    [v4 sendAsync:v3 clientHandler:v8 taskDescriptor:0];
    v5 = v9;
LABEL_5:

    goto LABEL_6;
  }

  if (v1)
  {
    v4 = _getClientCallbackQueue();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___MAsendPMVCancelDownload_block_invoke_2;
    v6[3] = &unk_1E74C9978;
    v7[1] = v10;
    v5 = v7;
    v7[0] = v1;
    dispatch_async(v4, v6);
    goto LABEL_5;
  }

LABEL_6:

  _Block_object_dispose(v10, 8);
}

id _MAsendPMVQuerySync(int a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v120 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  context = objc_autoreleasePoolPush();
  xdict = xpc_dictionary_create(0, 0, 0);
  v103 = v15;
  v104 = v13;
  v101 = v17;
  v102 = v16;
  if (!xdict)
  {
    v37 = v14;
    v38 = a7;
    v39 = 6;
    v40 = errorStringForMAQueryResult(6uLL);
    v46 = MAError(@"com.apple.MobileAssetError.Query", 6, @"Query for software lookup failed: %@", v41, v42, v43, v44, v45, v40);

    v47 = 0;
    v48 = 0;
    v105 = 0;
    v106 = 0;
    v99 = 0;
    v49 = 0;
    v50 = 0;
    v108 = 0;
LABEL_59:
    v98 = 0;
LABEL_60:
    v63 = 0;
LABEL_61:
    v65 = 0;
    goto LABEL_62;
  }

  v18 = objc_opt_new();
  if (a1)
  {
    v19 = MEMORY[0x1E695E118];
  }

  else
  {
    v19 = MEMORY[0x1E695E110];
  }

  v108 = v18;
  [v18 setValue:v19 forKey:@"includeSupervised"];
  v20 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = @"NO";
    if (a1)
    {
      v21 = @"YES";
    }

    *buf = 136446466;
    v117 = "_MAsendPMVQuerySync";
    v118 = 2114;
    v119 = v21;
    _os_log_impl(&dword_197AD5000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}s] Setting include includeSupervised: %{public}@", buf, 0x16u);
  }

  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v37 = v14;
      v38 = a7;
      v51 = @"Query for software lookup failed as the filter for platform match was not a string.";
LABEL_57:
      v39 = 8;
      v46 = MAError(@"com.apple.MobileAssetError.Query", 8, v51, v22, v23, v24, v25, v26, v94);
      v47 = 0;
      v48 = 0;
      v105 = 0;
      v106 = 0;
      v99 = 0;
LABEL_58:
      v49 = 0;
      v50 = 0;
      goto LABEL_59;
    }

    v27 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v117 = "_MAsendPMVQuerySync";
      v118 = 2114;
      v119 = v13;
      _os_log_impl(&dword_197AD5000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}s] Setting platformExactMatch: %{public}@", buf, 0x16u);
    }

    [v108 setValue:v13 forKey:@"platformExactMatch"];
  }

  if (!v14)
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = v14;
    v38 = a7;
    v51 = @"Query for software lookup failed as the filter for ProductVersion match was not a string.";
    goto LABEL_57;
  }

  v28 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v117 = "_MAsendPMVQuerySync";
    v118 = 2114;
    v119 = v14;
    _os_log_impl(&dword_197AD5000, v28, OS_LOG_TYPE_DEFAULT, "[%{public}s] Setting versionPrefix: %{public}@", buf, 0x16u);
  }

  [v108 setValue:v14 forKey:@"versionPrefix"];
LABEL_19:
  if (!v15)
  {
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = v14;
    v38 = a7;
    v51 = @"Query for software lookup failed as the filter for SupportedDevices match was not a string.";
    goto LABEL_57;
  }

  v29 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v117 = "_MAsendPMVQuerySync";
    v118 = 2114;
    v119 = v15;
    _os_log_impl(&dword_197AD5000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}s] Setting supportedDevicePrefix: %{public}@", buf, 0x16u);
  }

  [v108 setValue:v15 forKey:@"supportedDevicePrefix"];
LABEL_24:
  if (!(v16 | v17))
  {
    v106 = 0;
    v30 = 0;
LABEL_35:
    v105 = 0;
    goto LABEL_36;
  }

  v30 = objc_opt_new();
  [v30 setDateFormat:@"yyyy-MM-dd"];
  if (!v16)
  {
    v106 = 0;
    goto LABEL_80;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = v14;
    v38 = a7;
    v99 = v30;
    v92 = @"Query for software lookup failed as the filter for PostingDate limit was not a date.";
LABEL_89:
    v39 = 8;
    v46 = MAError(@"com.apple.MobileAssetError.Query", 8, v92, v31, v32, v33, v34, v35, v94);
    v47 = 0;
    v48 = 0;
    v105 = 0;
    v106 = 0;
    goto LABEL_58;
  }

  v106 = [v30 stringFromDate:v16];
  if (!v106)
  {
    v37 = v14;
    v38 = a7;
    v99 = v30;
    v92 = @"Query for software lookup failed as the filter for PostingDate limit could not be formatted as yyyy-MM-dd.";
    goto LABEL_89;
  }

  v36 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v117 = "_MAsendPMVQuerySync";
    v118 = 2114;
    v119 = v106;
    _os_log_impl(&dword_197AD5000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}s] Setting postedBeforeString: %{public}@", buf, 0x16u);
  }

  [v108 setValue:v106 forKey:@"postedBefore"];
LABEL_80:
  if (!v17)
  {
    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = v14;
    v38 = a7;
    v99 = v30;
    v93 = @"Query for software lookup failed as the filter for ExpirationDate limit was not a date.";
LABEL_92:
    v39 = 8;
    v46 = MAError(@"com.apple.MobileAssetError.Query", 8, v93, v86, v87, v88, v89, v90, v94);
    v47 = 0;
    v48 = 0;
    v105 = 0;
    goto LABEL_58;
  }

  v105 = [v30 stringFromDate:v17];
  if (!v105)
  {
    v37 = v14;
    v38 = a7;
    v99 = v30;
    v93 = @"Query for software lookup failed as the filter for ExpirationDate limit could not be formatted as yyyy-MM-dd.";
    goto LABEL_92;
  }

  v91 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v117 = "_MAsendPMVQuerySync";
    v118 = 2114;
    v119 = v105;
    _os_log_impl(&dword_197AD5000, v91, OS_LOG_TYPE_DEFAULT, "[%{public}s] Setting notExpiredBeforeString: %{public}@", buf, 0x16u);
  }

  [v108 setValue:v105 forKey:@"notExpiredBefore"];
LABEL_36:
  v99 = v30;
  v114 = 0;
  v52 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v108 requiringSecureCoding:1 error:&v114];
  v53 = v114;
  v48 = v53;
  v98 = v52;
  if (!v52 || v53)
  {
    v37 = v14;
    v38 = a7;
    v39 = 8;
    v46 = MAErrorWithUnderlying(@"com.apple.MobileAssetError.Query", 8, v53, @"Query for software lookup failed as the filter could not be encoded.", v54, v55, v56, v57, v94);
    v47 = 0;
    v49 = 0;
    v50 = 0;
    goto LABEL_60;
  }

  xpc_dictionary_set_data(xdict, [@"QueryParams" UTF8String], objc_msgSend(v52, "bytes"), objc_msgSend(v52, "length"));
  xpc_dictionary_set_uint64(xdict, "messageAction", 0x1FuLL);
  v58 = MEMORY[0x1E696AEC0];
  v95 = getprogname();
  v59 = [v58 stringWithFormat:@"%s"];
  v60 = v59;
  if (v59)
  {
    xpc_dictionary_set_string(xdict, "clientName", [v59 UTF8String]);
  }

  v113 = 12;
  v61 = _getCommsManager();
  v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_MAsendPMVQuerySync"];
  v63 = [v61 sendSync:xdict gettingResponseCode:&v113 codeForXpcError:1 loggingName:v62];

  v39 = v113;
  if ((isQueryResultFailure(v113) & 1) != 0 || !v63)
  {
    v37 = v14;
    v38 = a7;
    v47 = v60;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v46 = 0;
    goto LABEL_61;
  }

  v64 = plistDecodeClasses();
  v50 = getObjectFromMessage(v63, "productMarketingVersionsListLength", "productMarketingVersionsList", v64);

  v65 = objc_opt_new();
  if (!v50)
  {
    v37 = v14;
    v38 = a7;
    v47 = v60;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    goto LABEL_62;
  }

  v97 = a7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = v14;
    v47 = v60;
    v48 = 0;
    v49 = 0;
LABEL_97:
    v46 = 0;
    v38 = v97;
    goto LABEL_62;
  }

  v49 = [v50 objectForKey:@"pmvEntriesToFrameWork"];
  if (!v49)
  {
    v37 = v14;
    v47 = v60;
LABEL_96:
    v48 = 0;
    goto LABEL_97;
  }

  v47 = v60;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = v14;
    goto LABEL_96;
  }

  v96 = v14;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v49 = v49;
  v66 = [v49 countByEnumeratingWithState:&v109 objects:v115 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v110;
    do
    {
      for (i = 0; i != v67; ++i)
      {
        if (*v110 != v68)
        {
          objc_enumerationMutation(v49);
        }

        v70 = *(*(&v109 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v65 addObject:v70];
        }
      }

      v67 = [v49 countByEnumeratingWithState:&v109 objects:v115 count:16];
    }

    while (v67);
  }

  v48 = 0;
  v46 = 0;
  v38 = v97;
  v37 = v96;
LABEL_62:
  if (isQueryResultFailure(v39))
  {

    if (v46)
    {
      v65 = 0;
      goto LABEL_69;
    }

    v46 = errorStringForMAQueryResult(v39);
    v75 = MAError(@"com.apple.MobileAssetError.Query", v39, @"During software lookup: %@", v76, v77, v78, v79, v80, v46);
    v65 = 0;
  }

  else
  {
    if (!v46)
    {
      goto LABEL_69;
    }

    v75 = MAErrorWithUnderlying(@"com.apple.MobileAssetError.Query", 12, v46, @"During software lookup had unexpected error", v71, v72, v73, v74, v95);
  }

  v46 = v75;
LABEL_69:

  objc_autoreleasePoolPop(context);
  if (v46)
  {
    v81 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      v82 = [v46 description];
      *buf = 136446466;
      v117 = "_MAsendPMVQuerySync";
      v118 = 2114;
      v119 = v82;
      _os_log_impl(&dword_197AD5000, v81, OS_LOG_TYPE_ERROR, "[%{public}s] Failed to query PMV with error: %{public}@", buf, 0x16u);
    }

    if (v38)
    {
      v83 = v46;
      *v38 = v46;
    }
  }

  v84 = *MEMORY[0x1E69E9840];

  return v65;
}

uint64_t __Block_byref_object_copy__1293(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _MAclientSendQueryNSUrlState(BOOL a1)
{
  v6 = 4;
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, "NSUrlState", a1);
  xpc_dictionary_set_uint64(v2, "messageAction", 4uLL);
  v3 = _getCommsManager();
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_MAclientSendQueryNSUrlState"];
  v5 = [v3 sendSync:v2 gettingResponseCode:&v6 codeForXpcError:1 loggingName:v4];
}

uint64_t _MAclientSendRepairStateSync()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_MAclientSendRepairStateSync"];
  v1 = sendOperationSync(0, 0xEuLL, v0);

  return v1;
}

void _MAClientSendRepairState(void *a1)
{
  v1 = a1;
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "messageAction", 0xEuLL);
  v2 = _getCommsManager();
  [v2 sendAsync:v3 clientHandler:v1 taskDescriptor:0];
}

BOOL _MAclientSendDataMigrator(BOOL a1, BOOL a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, "blockClient", a1);
  xpc_dictionary_set_BOOL(v4, "forceMigration", a2);
  xpc_dictionary_set_uint64(v4, "messageAction", 0x27uLL);
  v10 = 4;
  v5 = _getCommsManager();
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_MAclientSendDataMigrator"];
  v7 = [v5 sendSync:v4 gettingResponseCode:&v10 codeForXpcError:1 loggingName:v6];

  v8 = v10 == 0;
  return v8;
}

uint64_t _MAclientSendEnsureDataVault(void *a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = xpc_dictionary_create(0, 0, 0);
      if (v4)
      {
        xpc_dictionary_set_string(v4, "AssetType", [v3 UTF8String]);
        xpc_dictionary_set_uint64(v4, "messageAction", 0x26uLL);
        v32 = 4;
        v5 = _getCommsManager();
        v6 = [v5 sendSync:v4 gettingResponseCode:&v32 codeForXpcError:1 loggingName:@"MAEnsureDataVault"];

        v7 = v32;
        if (!v32)
        {
          v27 = _MAClientLog(@"V2");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v34 = v3;
            _os_log_impl(&dword_197AD5000, v27, OS_LOG_TYPE_DEFAULT, "Confirmed data vault for %{public}@", buf, 0xCu);
          }

          v20 = 0;
          v21 = 1;
LABEL_13:

          if (!a2)
          {
            goto LABEL_18;
          }

          goto LABEL_14;
        }

        v8 = stringForMAOperationResult(v32);
        MAError(@"com.apple.MobileAssetError", v7, @"The asset type %@ could not be confirmed to be a data vault: %@", v9, v10, v11, v12, v13, v3);
      }

      else
      {
        v32 = 1;
        v8 = stringForMAOperationResult(1uLL);
        MAError(@"com.apple.MobileAssetError.Xpc", 1, @"Failed to create xpc dictionary: %@", v22, v23, v24, v25, v26, v8);
      }
      v20 = ;

      v21 = 0;
      goto LABEL_13;
    }
  }

  v32 = 3;
  v14 = stringForMAOperationResult(3uLL);
  v20 = MAError(@"com.apple.MobileAssetError", 3, @"The assetType is not a valid string: %@", v15, v16, v17, v18, v19, v14);

  v21 = 0;
  if (!a2)
  {
    goto LABEL_18;
  }

LABEL_14:
  v28 = v20;
  *a2 = v20;
  if (v20)
  {
    v29 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = v20;
      _os_log_impl(&dword_197AD5000, v29, OS_LOG_TYPE_DEFAULT, "Error: %{public}@", buf, 0xCu);
    }
  }

LABEL_18:

  v30 = *MEMORY[0x1E69E9840];
  return v21;
}

BOOL _MAclientSendGetNonUserInitiatedDownloadsAllowedForAssetType(void *a1)
{
  v1 = a1;
  v7 = 4;
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "messageAction", 0x25uLL);
  if (v1 && isWellFormedAssetType(v1))
  {
    xpc_dictionary_set_string(v2, "AssetType", [v1 UTF8String]);
  }

  v3 = _getCommsManager();
  v4 = 1;
  v5 = [v3 sendSync:v2 gettingResponseCode:&v7 codeForXpcError:1 loggingName:@"_MAclientSendGetNonUserInitiatedDownloadsAllowedForAssetType"];

  if (!v7)
  {
    v4 = xpc_dictionary_get_BOOL(v5, "allowNonUserInitiated");
  }

  return v4;
}

uint64_t _MAclientSendServerUrlOverride(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v13 = 4;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_DEFAULT, "MobileAsset _MAclientSendServerUrlOverride passed invalid NSString", v12, 2u);
    }

    v7 = 2;
  }

  else
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v3)
    {
      xpc_dictionary_set_string(v5, "AssetType", [v3 UTF8String]);
    }

    if (v4)
    {
      xpc_dictionary_set_string(v5, "serverUrlOverride", [v4 UTF8String]);
    }

    else
    {
      xpc_dictionary_set_BOOL(v5, "serverOverrideClear", 1);
    }

    xpc_dictionary_set_BOOL(v5, "serverUrlDefault", 0);
    xpc_dictionary_set_uint64(v5, "messageAction", 0xDuLL);
    v8 = _getCommsManager();
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_MAclientSendServerUrlOverride"];
    v10 = [v8 sendSync:v5 gettingResponseCode:&v13 codeForXpcError:1 loggingName:v9];

    v7 = v13;
  }

  return v7;
}

uint64_t _MAclientSendServerUrlFallbackDefault(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "AssetType", [v3 UTF8String]);
    if (v4)
    {
      xpc_dictionary_set_string(v5, "serverUrlOverride", [v4 UTF8String]);
    }

    else
    {
      xpc_dictionary_set_BOOL(v5, "serverOverrideClear", 1);
    }

    xpc_dictionary_set_BOOL(v5, "serverUrlDefault", 1);
    xpc_dictionary_set_uint64(v5, "messageAction", 0xDuLL);
    v13 = 4;
    v8 = _getCommsManager();
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_MAclientSendServerUrlFallbackDefault"];
    v10 = [v8 sendSync:v5 gettingResponseCode:&v13 codeForXpcError:1 loggingName:v9];

    v7 = v13;
  }

  else
  {
    v6 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_DEFAULT, "MobileAsset _MAclientSendServerUrlFallbackDefault passed invalid NSString", v12, 2u);
    }

    v7 = 2;
  }

  return v7;
}

uint64_t _MAclientSendReportingRequest(int64_t a1, BOOL a2, BOOL a3)
{
  v12 = 4;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, "reportingChange", a1);
  xpc_dictionary_set_BOOL(v6, "reportingSend", a2);
  xpc_dictionary_set_BOOL(v6, "reportingClear", a3);
  xpc_dictionary_set_uint64(v6, "messageAction", 0x23uLL);
  v7 = _getCommsManager();
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_MAclientSendReportingRequest"];
  v9 = [v7 sendSync:v6 gettingResponseCode:&v12 codeForXpcError:1 loggingName:v8];

  v10 = v12;
  return v10;
}

uint64_t _MAclientSendGetMABrainInfo(void *a1)
{
  v11 = 4;
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "messageAction", 0x28uLL);
  v3 = _getCommsManager();
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_MAclientSendGetMABrainInfo"];
  v5 = [v3 sendSync:v2 gettingResponseCode:&v11 codeForXpcError:1 loggingName:v4];

  v6 = 0;
  if (!v11)
  {
    v7 = getLoadDictionaryFromMessage(v5, @"MobileAssetBrainInfo");
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = MEMORY[0x1E695E0F8];
    }
  }

  if (a1)
  {
    v8 = v6;
    *a1 = v6;
  }

  v9 = v11;

  return v9;
}

uint64_t _MAclientSendUpdateMABrain(void *a1, void *a2)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v23 = 4;
  v3 = a1;
  v4 = [v3 objectForKeyedSubscript:@"MobileAssetBrainUpdateOptionSSO"];
  v5 = [v3 objectForKeyedSubscript:@"MobileAssetBrainUpdateOptionDAW"];
  v6 = [v3 objectForKeyedSubscript:@"MobileAssetBrainUpdateOptionNonBlocking"];
  v7 = [v3 objectForKeyedSubscript:@"MobileAssetBrainUpdateOptionDiscretionary"];
  v8 = [v3 objectForKeyedSubscript:@"MobileAssetBrainUpdateOptionRelaunch"];
  v9 = [v3 objectForKeyedSubscript:@"MobileAssetBrainUpdateOptionPurgeOnly"];

  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v10, "messageAction", 0x29uLL);
  if (v4)
  {
    xpc_dictionary_set_data(v10, "MobileAssetBrainUpdateOptionSSO", [v4 bytes], objc_msgSend(v4, "length"));
  }

  if (v5)
  {
    xpc_dictionary_set_string(v10, "MobileAssetBrainUpdateOptionDAW", [v5 UTF8String]);
  }

  if (v6)
  {
    xpc_dictionary_set_BOOL(v10, "MobileAssetBrainUpdateOptionNonBlocking", [v6 BOOLValue]);
  }

  if (v7)
  {
    xpc_dictionary_set_BOOL(v10, "MobileAssetBrainUpdateOptionDiscretionary", [v7 BOOLValue]);
  }

  v22 = v6;
  if (v8)
  {
    xpc_dictionary_set_BOOL(v10, "MobileAssetBrainUpdateOptionRelaunch", [v8 BOOLValue]);
  }

  v11 = a2;
  if (v9)
  {
    xpc_dictionary_set_BOOL(v10, "MobileAssetBrainUpdateOptionPurgeOnly", [v9 BOOLValue]);
  }

  v12 = _getCommsManager();
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_MAclientSendUpdateMABrain"];
  v14 = [v12 sendSync:v10 gettingResponseCode:&v23 codeForXpcError:1 loggingName:v13];

  if (v23)
  {
    v15 = createErrorFromMessage(v14);
    if (!v15)
    {
      v16 = MEMORY[0x1E696ABC0];
      v24[0] = *MEMORY[0x1E696A278];
      v24[1] = @"reply";
      v25[0] = @"Unable to decode error reply";
      v25[1] = v14;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v15 = [v16 errorWithDomain:@"MobileAssetBrainErrorDomain" code:900 userInfo:v17];
    }

    if (v11 && v15)
    {
      v18 = v15;
      *v11 = v15;
    }
  }

  else
  {
    v15 = 0;
  }

  v19 = v23;

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t _MAclientSendSecureMABundleCommand(uint64_t a1, void *a2, void *a3)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v29 = 4;
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"SecureMobileAssetBundleOptionPath"];
  v7 = [v5 objectForKeyedSubscript:@"SecureMobileAssetBundleOptionSSO"];
  v8 = [v5 objectForKeyedSubscript:@"SecureMobileAssetBundleOptionScpParametersOverride"];
  v9 = [v5 objectForKeyedSubscript:@"SecureMobileAssetBundleOptionStageManifest"];
  v10 = [v5 objectForKeyedSubscript:@"SecureMobileAssetBundleOptionSelectors"];
  v11 = [v5 objectForKeyedSubscript:@"SecureMobileAssetBundleOptionDarwinOnly"];
  v28 = [v5 objectForKeyedSubscript:@"SecureMobileAssetDisableEarlyBootGraft"];

  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v12, "messageAction", 0x2DuLL);
  xpc_dictionary_set_uint64(v12, "SecureMobileAssetBundleCommand", a1);
  if (v6)
  {
    xpc_dictionary_set_string(v12, "SecureMobileAssetBundleOptionPath", [v6 fileSystemRepresentation]);
  }

  if (v8)
  {
    v13 = _CFXPCCreateXPCObjectFromCFObject();
    if (v13)
    {
      xpc_dictionary_set_value(v12, "SecureMobileAssetBundleOptionScpParametersOverride", v13);
    }
  }

  if (v9)
  {
    xpc_dictionary_set_BOOL(v12, "SecureMobileAssetBundleOptionStageManifest", [v9 BOOLValue]);
  }

  if (v10)
  {
    v14 = _CFXPCCreateXPCObjectFromCFObject();
    if (v14)
    {
      xpc_dictionary_set_value(v12, "SecureMobileAssetBundleOptionSelectors", v14);
    }
  }

  v27 = v8;
  if (v11)
  {
    xpc_dictionary_set_BOOL(v12, "SecureMobileAssetBundleOptionDarwinOnly", 1);
  }

  v15 = v11;
  if (v28)
  {
    xpc_dictionary_set_BOOL(v12, "SecureMobileAssetDisableEarlyBootGraft", 1);
  }

  v16 = a3;
  if (v7)
  {
    xpc_dictionary_set_data(v12, "SecureMobileAssetBundleOptionSSO", [v7 bytes], objc_msgSend(v7, "length"));
  }

  v17 = _getCommsManager();
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_MAclientSendSecureMABundleCommand"];
  v19 = [v17 sendSync:v12 gettingResponseCode:&v29 codeForXpcError:1 loggingName:v18];

  if (v29)
  {
    v20 = createErrorFromMessage(v19);
    if (!v20)
    {
      v21 = MEMORY[0x1E696ABC0];
      v30[0] = *MEMORY[0x1E696A278];
      v30[1] = @"reply";
      v31[0] = @"Unable to decode error reply";
      v31[1] = v19;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
      v20 = [v21 errorWithDomain:@"MobileAssetBrainErrorDomain" code:900 userInfo:v22];
    }

    if (v16 && v20)
    {
      v23 = v20;
      *v16 = v20;
    }
  }

  else
  {
    v20 = 0;
  }

  v24 = v29;

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

void __getRetryXpcDelayQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MobileAsset.retryClientCommsXpcDelay", v2);
  v1 = getRetryXpcDelayQueue_retryQueue;
  getRetryXpcDelayQueue_retryQueue = v0;
}

void __plistDecodeClasses_block_invoke()
{
  v5[6] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:6];
  v2 = [v0 initWithArray:v1];
  v3 = plistDecodeClasses__plistDecodeClasses;
  plistDecodeClasses__plistDecodeClasses = v2;

  v4 = *MEMORY[0x1E69E9840];
}

id suAssetTypes()
{
  if (suAssetTypes_once != -1)
  {
    suAssetTypes_cold_1();
  }

  v1 = suAssetTypes_suAssetTypes;

  return v1;
}

uint64_t __suAssetTypes_block_invoke()
{
  suAssetTypes_suAssetTypes = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F0C332C8];

  return MEMORY[0x1EEE66BB8]();
}

id assetIdDisallowedCharacterSet()
{
  if (assetIdDisallowedCharacterSet_once != -1)
  {
    assetIdDisallowedCharacterSet_cold_1();
  }

  v1 = assetIdDisallowedCharacterSet_disallowedSet;

  return v1;
}

void __assetIdDisallowedCharacterSet_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789abcdefABCDEF"];
  v2 = [v1 invertedSet];
  v3 = assetIdDisallowedCharacterSet_disallowedSet;
  assetIdDisallowedCharacterSet_disallowedSet = v2;

  objc_autoreleasePoolPop(v0);
}

id assetTypeDisallowedCharacterSet()
{
  if (assetTypeDisallowedCharacterSet_once != -1)
  {
    assetTypeDisallowedCharacterSet_cold_1();
  }

  v1 = assetTypeDisallowedCharacterSet_disallowedSet;

  return v1;
}

void __assetTypeDisallowedCharacterSet_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789.abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-"];
  v2 = [v1 invertedSet];
  v3 = assetTypeDisallowedCharacterSet_disallowedSet;
  assetTypeDisallowedCharacterSet_disallowedSet = v2;

  objc_autoreleasePoolPop(v0);
}

id purposeDisallowedCharacterSet()
{
  if (purposeDisallowedCharacterSet_once != -1)
  {
    purposeDisallowedCharacterSet_cold_1();
  }

  v1 = purposeDisallowedCharacterSet_disallowedSet;

  return v1;
}

void __purposeDisallowedCharacterSet_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789-abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
  v2 = [v1 invertedSet];
  v3 = purposeDisallowedCharacterSet_disallowedSet;
  purposeDisallowedCharacterSet_disallowedSet = v2;

  objc_autoreleasePoolPop(v0);
}

id purposeIgnoredCharacterSet()
{
  if (purposeIgnoredCharacterSet_once != -1)
  {
    purposeIgnoredCharacterSet_cold_1();
  }

  v1 = purposeIgnoredCharacterSet_ignoredSet;

  return v1;
}

void __purposeIgnoredCharacterSet_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"'\\/@?%*|<>.{}"];;
  v2 = purposeIgnoredCharacterSet_ignoredSet;
  purposeIgnoredCharacterSet_ignoredSet = v1;

  objc_autoreleasePoolPop(v0);
}

id getObjectFromMessageLogIfDesired(void *a1, const char *a2, const char *a3, void *a4, int a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a4;
  length = xpc_dictionary_get_double(v9, a2);
  if (!length)
  {
    goto LABEL_14;
  }

  data = xpc_dictionary_get_data(v9, a3, &length);
  if (data)
  {
    v12 = [MEMORY[0x1E695DEF0] dataWithBytes:data length:length];
    if (v12)
    {
      v13 = v12;
      v21 = 0;
      v14 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v12 error:&v21];
      v15 = v21;
      if (v15 || !v14)
      {
        if (a5)
        {
          v18 = _MAClientLog(@"V2");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v24 = a3;
            v25 = 2114;
            v26 = v15;
            _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_DEFAULT, "getObjectFromMessage: could not decode object for key: %{public}s error: %{public}@", buf, 0x16u);
          }
        }

        v16 = 0;
      }

      else
      {
        v16 = [v14 decodeObjectOfClasses:v10 forKey:*MEMORY[0x1E696A508]];
      }

      [v14 finishDecoding];

      goto LABEL_21;
    }

    if (a5)
    {
      v15 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v24 = a3;
        v17 = "Failed to get key: %{public}s";
        goto LABEL_12;
      }

      goto LABEL_13;
    }

LABEL_14:
    v13 = 0;
    v16 = 0;
    goto LABEL_22;
  }

  v15 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v24 = a3;
    v17 = "Failed to get key: %{public}s due to not beinng present";
LABEL_12:
    _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
  }

LABEL_13:
  v13 = 0;
  v16 = 0;
LABEL_21:

LABEL_22:
  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

uint64_t calculateTimeout(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = ((a1 >> 10) * 0x2492492492492493uLL) >> 64;
  if (a1 > 0x102661BFFLL)
  {
    v2 = 604800;
  }

  if (a1 >= 6451200)
  {
    v3 = v2;
  }

  else
  {
    v3 = 900;
  }

  v4 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (v3 * 0x444444444444445uLL) >> 64;
    v8 = 134219008;
    v9 = (v3 * 0x123456789ABCE0uLL) >> 64;
    v10 = 2048;
    v11 = v5 - 60 * ((v5 * 0x444444444444445uLL) >> 64);
    v12 = 2048;
    v13 = v3 - 60 * v5;
    v14 = 2048;
    v15 = v3;
    v16 = 2048;
    v17 = a1;
    _os_log_impl(&dword_197AD5000, v4, OS_LOG_TYPE_DEFAULT, "Calculated the download timeout to be %ld hrs %ld mins %ld secs (%ld) for size %lld", &v8, 0x34u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

BOOL determineUnarchiveSizeFromAttributes(void *a1, void *a2)
{
  v3 = [a1 objectForKey:@"_UnarchivedSize"];
  v4 = v3;
  if (v3)
  {
    *a2 = [v3 longLongValue];
  }

  return v4 != 0;
}

__CFString *normalizePurpose(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && !isWellFormedPurpose(v1))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = purposeIgnoredCharacterSet();
      [(__CFString *)v2 rangeOfCharacterFromSet:v3];
      v5 = v4;

      if (v5)
      {
        v6 = purposeIgnoredCharacterSet();
        v7 = [(__CFString *)v2 componentsSeparatedByCharactersInSet:v6];
        v8 = [v7 componentsJoinedByString:&stru_1F0C1B388];

        v2 = v8;
      }
    }

    if (!isWellFormedPurpose(v2))
    {

      v2 = &stru_1F0C1B388;
    }
  }

  return v2;
}

BOOL isWellFormedAssetType(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v1 hasPrefix:@"com.apple.MobileAsset."] && (v2 = objc_msgSend(v1, "length"), v2 > objc_msgSend(@"com.apple.MobileAsset.", "length")) && (objc_msgSend(v1, "containsString:", @"..") & 1) == 0)
  {
    v5 = assetTypeDisallowedCharacterSet();
    v3 = [v1 rangeOfCharacterFromSet:v5] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id assembleTaskDescriptorWithPurposeAndAutoAssetJobID(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", a1, @".", a2];
  if (v7)
  {
    v10 = normalizePurpose(v7);

    v11 = [v9 stringByAppendingFormat:@"%@%@", @".", v10];

    v9 = v11;
  }

  if (v8)
  {
    if ([v8 containsString:@"."])
    {
      v12 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v17 = v8;
        _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_ERROR, "{assembleTaskDescriptorWithPurposeAndAutoAssetJobID} invalid autoAssetJobID(ignored):%{public}@", buf, 0xCu);
      }
    }

    else
    {
      v13 = [v9 stringByAppendingFormat:@"%@%@", @".", v8];

      v9 = v13;
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

id purposeDirectoryName(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E696AEC0];
    v2 = normalizePurpose(a1);
    v3 = [v1 stringWithFormat:@"purpose_%@", v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL isWellFormedAssetId(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v1 length] >= 0x14 && objc_msgSend(v1, "length") <= 0x3C)
  {
    v4 = assetIdDisallowedCharacterSet();
    v2 = [v1 rangeOfCharacterFromSet:v4] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL isWellFormedPurpose(void *a1)
{
  v1 = a1;
  v5 = 1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v1 length] || objc_msgSend(v1, "length") > 0x3C || (purposeDisallowedCharacterSet(), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "rangeOfCharacterFromSet:", v2), v4 = v3, v2, v4))
    {
      v5 = 0;
    }
  }

  return v5;
}

uint64_t __usingCentralizedCachedelete_block_invoke()
{
  result = _MAPreferencesIsCentralizedCacheDeleteEnabled();
  if (result)
  {
    result = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/filesystems");
    if (result)
    {
      v1 = result;
      CFProperty = IORegistryEntryCreateCFProperty(result, @"e-apfs", *MEMORY[0x1E695E480], 0);
      if (CFProperty)
      {
        CFRelease(CFProperty);
        usingCentralizedCachedelete_eapfsEnabled = 1;
      }

      return IOObjectRelease(v1);
    }
  }

  else
  {
    usingCentralizedCachedelete_eapfsEnabled = 0;
  }

  return result;
}

BOOL isDirStatsEnabledForDirectory(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  memset(v19, 0, sizeof(v19));
  v2 = fsctl([v1 UTF8String], 0xC1104A71uLL, v19, 0);
  if (v2)
  {
    v3 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *__error();
      v11 = 138543618;
      v12 = v1;
      v13 = 1024;
      LODWORD(v14) = v4;
      v5 = "Unable to check dirstats for directory %{public}@, error %i";
      v6 = v3;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 18;
LABEL_7:
      _os_log_impl(&dword_197AD5000, v6, v7, v5, &v11, v8);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (_MAPreferencesIsVerboseLoggingEnabled())
  {
    v3 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138413058;
      v12 = v1;
      v13 = 2048;
      v14 = *(&v20 + 1);
      v15 = 2048;
      v16 = v21;
      v17 = 2048;
      v18 = v20;
      v5 = "%@:\ndescendants: %llu\nphysical size: %llu\ngen-count: %llu\n";
      v6 = v3;
      v7 = OS_LOG_TYPE_DEFAULT;
      v8 = 42;
      goto LABEL_7;
    }

LABEL_8:
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2 == 0;
}

BOOL markItemPurgeableWithFlagsAndStartTime(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  if (![v6 fileExistsAtPath:@"/private/var/MobileSoftwareUpdate/.MAAMigrated.plist"])
  {

    goto LABEL_8;
  }

  v7 = isDirStatsEnabledForDirectory(v5);

  if (!v7)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v16 = 0;
  if (fsctl([v5 UTF8String], 0xC0084A44uLL, &v16, 0))
  {
    v8 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_ERROR, "Failed to clear purgability, errno:%d", buf, 8u);
    }

    goto LABEL_8;
  }

  *buf = a2;
  v20 = xmmword_197B622C0;
  v21 = 0;
  v22 = a3;
  v23 = 0;
  v13 = fsctl([v5 UTF8String], 0xC0304A6FuLL, buf, 0);
  v10 = v13 == 0;
  if (v13)
  {
    v14 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *__error();
      *v17 = 67109120;
      v18 = v15;
      _os_log_impl(&dword_197AD5000, v14, OS_LOG_TYPE_ERROR, "Failed to mark purgeable with label, errno:%d", v17, 8u);
    }
  }

LABEL_9:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

BOOL markItemPurgeableWithUrgencyAndGarbageCollectionPolicy(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  if (![v6 isEqualToString:@"NeverCollected"])
  {
    if ([v7 isEqualToString:@"Precious"])
    {
      v10 = 2678400000000000;
LABEL_9:
      v11 = clock_gettime_nsec_np(_CLOCK_REALTIME);
      started = markItemPurgeableWithFlagsAndStartTime(v5, a2 | 0x10000, v11 + v10);
      goto LABEL_10;
    }

LABEL_8:
    v10 = 1296000000000000;
    goto LABEL_9;
  }

  v8 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_ERROR, "API MISUSE: markItemPurgeableWithUrgencyAndGarbageCollectionPolicy called with NeverCollected policy", v13, 2u);
  }

  started = 0;
LABEL_10:

  return started;
}

void *getLocalUrlFromTypeAndIdGivenDefaultRepoWithPurpose(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = a5;
  if (!v9)
  {
    v17 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v36 = 0;
    v18 = "Attempting to get local url with nil asset type";
    v19 = &v36;
LABEL_13:
    _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, v18, v19, 2u);
    goto LABEL_14;
  }

  if (!v10)
  {
    v17 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v35 = 0;
    v18 = "Attempting to get local url with nil asset id";
    v19 = &v35;
    goto LABEL_13;
  }

  v13 = normalizedAssetType(v9);
  if (!v13)
  {
    v17 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "Attempting to get local URL with asset-type that could not be normalized";
      v19 = buf;
      goto LABEL_13;
    }

LABEL_14:

    v20 = 0;
    v14 = 0;
    goto LABEL_15;
  }

  v14 = v13;
  if (a3 == 5)
  {
    v15 = MEMORY[0x1E695DFF8];
    v16 = @"/System/Library/PreinstalledAssetsV2/RequiredByOs";
    goto LABEL_18;
  }

  if (a3 != 6)
  {
    if (v11)
    {
      v25 = [MEMORY[0x1E695DFF8] URLWithString:v11];
      goto LABEL_21;
    }

    v32 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *v33 = 0;
      _os_log_impl(&dword_197AD5000, v32, OS_LOG_TYPE_ERROR, "Attempting to get local url with nil default repo for a non preinstalled asset", v33, 2u);
    }

    v20 = 0;
LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  v15 = MEMORY[0x1E695DFF8];
  v16 = @"/private/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs";
LABEL_18:
  v24 = getRepositoryPath(v16);
  v25 = [v15 URLWithString:v24];

LABEL_21:
  v26 = [v25 URLByAppendingPathComponent:v14];

  if (v12)
  {
    v27 = purposeDirectoryName(v12);
    v28 = [v26 URLByAppendingPathComponent:v27];

    v26 = v28;
  }

  v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v10, @"asset"];
  v20 = [v29 stringByAppendingPathComponent:@"AssetData"];

  v21 = [v26 URLByAppendingPathComponent:v20];

  if (v12)
  {
    v30 = purposeDirectoryName(v12);
    v31 = [v21 URLByAppendingPathComponent:v30];

    v21 = v31;
  }

LABEL_16:
  v22 = v21;

  return v21;
}

__CFString *stringForMAQueryReturnTypes(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MAQueryReturnTypes%llu", a1];
  }

  else
  {
    v2 = off_1E74C9AB8[a1];
  }

  return v2;
}

__CFString *stringForMAAssetState(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MAAssetState%llu", a1];
  }

  else
  {
    v2 = off_1E74C9AF0[a1];
  }

  return v2;
}

__CFString *stringForMAXpcCommand(unsigned int a1)
{
  if (a1 >= 0x30)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MAXpcCommand%llu", a1];
  }

  else
  {
    v2 = off_1E74C9B28[a1];
  }

  return v2;
}

__CFString *stringForMAXpcError(unint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MAXpcError%llu", a1];
  }

  else
  {
    v2 = off_1E74C9CA8[a1];
  }

  return v2;
}

__CFString *stringForMACancelDownloadResult(unint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MACancelDownloadResult%llu", a1];
  }

  else
  {
    v2 = off_1E74C9FD8[a1];
  }

  return v2;
}

__CFString *stringForMAPurgeResult(unint64_t a1)
{
  if (a1 >= 0xD)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MAPurgeResult%llu", a1];
  }

  else
  {
    v2 = off_1E74CA018[a1];
  }

  return v2;
}

__CFString *errorStringForMAPurgeResult(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 0xB && ((0x4EDu >> v2))
  {
    v3 = off_1E74CA080[v2];
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Purge failed due to error %llu", a1];
  }

  return v3;
}

__CFString *errorStringForMAQueryResult(unint64_t a1)
{
  if (a1 >= 0xF)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = stringForMAQueryResult(a1);
    v2 = [v3 stringWithFormat:@"Query failed due to Error %lld (%@).", a1, v4];
  }

  else
  {
    v2 = off_1E74CA0D8[a1];
  }

  return v2;
}

__CFString *errorStringForMACancelDownloadResult(unint64_t a1)
{
  if (a1 >= 8)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = stringForMACancelDownloadResult(a1);
    v2 = [v3 stringWithFormat:@"Download failed due to Error %lld (%@).", a1, v4];
  }

  else
  {
    v2 = off_1E74CA150[a1];
  }

  return v2;
}

uint64_t mapV2ErrorIndications()
{
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:0 codeName:@"MAXpcErrorNone"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:1 codeName:@"MAXpcErrorParamMissing"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:2 codeName:@"MAXpcErrorLengthZero"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:3 codeName:@"MAXpcErrorLengthMissing"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:4 codeName:@"MAXpcErrorLengthMismatch"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:5 codeName:@"MAXpcErrorDataMismatch"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:6 codeName:@"MAXpcErrorEmptyData"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:7 codeName:@"MAXpcErrorConnectionTerminated"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:8 codeName:@"MAXpcErrorUnableToReply"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:0 codeName:@"MAQuerySuccessful"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:0 codeName:@"MAQuerySuccessful"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:1 codeName:@"MAQueryXpcError"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:2 codeName:@"MAQueryCatalogNotDownloaded"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:2 codeName:@"MAQueryCatalogNotDownloaded"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:3 codeName:@"MAQueryFailed"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:4 codeName:@"MAQueryDaemonExit"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:5 codeName:@"MAQueryNotEntitled"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:6 codeName:@"MAQueryCannotCreateMessage"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:7 codeName:@"MAQueryNilAssetType"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:8 codeName:@"MAQueryParamsEncodeFailure"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:9 codeName:@"MAQueryBeforeFirstUnlock"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:9 codeName:@"MAQueryBeforeFirstUnlock"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:10 codeName:@"MAQueryCouldNotEncodeResults"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:10 codeName:@"MAQueryCouldNotEncodeResults"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:11 codeName:@"MAQueryXpcLengthError"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:12 codeName:@"MAQueryUnknownResult"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:13 codeName:@"MAQueryTooManyResults"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:14 codeName:@"MAQueryHasAllowedDifferences"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:0 codeName:@"MAPurgeSucceeded"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:1 codeName:@"MAPurgeXpcError"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:1 codeName:@"MAPurgeXpcError"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:2 codeName:@"MAPurgeConnectionInterrupted"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:2 codeName:@"MAPurgeConnectionInterrupted"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:3 codeName:@"MAPurgeAssetDidntExist"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:4 codeName:@"MAPurgeAssetCouldntPurge"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:5 codeName:@"MAPurgeFailed"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:6 codeName:@"MAPurgeNotEntitled"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:7 codeName:@"MAPurgeNotApplicableForRequireByOs"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:8 codeName:@"MAPurgeCouldNotCancelAllDownloads"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:9 codeName:@"MAPurgeCannotCreateMessage"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:10 codeName:@"MAPurgeEncodingFailure"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:11 codeName:@"MAPurgeFailedBeforeFirstUnlock"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:12 codeName:@"MAPurgePartiallyComplete"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:0 codeName:@"MADownloadSuccessful"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:1 codeName:@"MADownloadXpcError"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:2 codeName:@"MADownloadConnectionInterrupted"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:2 codeName:@"MADownloadConnectionInterrupted"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:3 codeName:@"MADownloadFailed"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:4 codeName:@"MADownloadStagingFailed"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:5 codeName:@"MADownloadMetaDataProcessFailed"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:6 codeName:@"MADownloadUnzipFailed"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:7 codeName:@"MADownloadMoveFailed"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:8 codeName:@"MADownloadInstallFailed"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:9 codeName:@"MADownloadDaemonExit"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:10 codeName:@"MADownloadAssetAlreadyInstalled"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:11 codeName:@"MADownloadInvalidSZExtractor"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:11 codeName:@"MADownloadInvalidSZExtractor"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:12 codeName:@"MADownloadNotEntitled"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:13 codeName:@"MADownloadDaemonNotReady"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:14 codeName:@"MADownloadNoChange"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:15 codeName:@"MADownloadNotApplicableForRequireByOs"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:16 codeName:@"MADownloadNoExtractorFailure"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:17 codeName:@"MADownloadTransformFailure"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:18 codeName:@"MADownloadNoMatchFound"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:19 codeName:@"MADownloadNilAssetType"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:20 codeName:@"MADownloadNilAssetId"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:21 codeName:@"MADownloadStreamingZipNotSupported"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:22 codeName:@"MADownloadBadOptions"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:23 codeName:@"MADownloadAssetBadMetaData"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:24 codeName:@"MADownloadUnableToCreateMessage"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:25 codeName:@"MADownloadFailedNoStandardUrl"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:26 codeName:@"MADownloadFailedNoFallBackUrl"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:27 codeName:@"MADownloadFailedNoPallasUrl"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:28 codeName:@"MADownloadLostTask"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:29 codeName:@"MADownloadNotApplicableForInstalledWithOs"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:30 codeName:@"MADownloadNoValidSession"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:31 codeName:@"MADownloadResponseDeferred"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:32 codeName:@"MADownloadIncomplete"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:33 codeName:@"MADownloadNoStagingDir"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:33 codeName:@"MADownloadNoStagingDir"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:34 codeName:@"MADownloadNotAllowed"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:34 codeName:@"MADownloadNotAllowed"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:35 codeName:@"MADownloadUnknownResult"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:36 codeName:@"MADownloadAssetNoLongerInCatalog"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:37 codeName:@"MADownloadNoSpaceLeft"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:38 codeName:@"MADownloadCouldNotReplace"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:39 codeName:@"MADownloadMalformedAssetType"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:40 codeName:@"MADownloadServerBadRequest"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:41 codeName:@"MADownloadServerAuthFailure"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:42 codeName:@"MADownloadServerError"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:43 codeName:@"MADownloadNotFoundOrDenied"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:44 codeName:@"MADownloadNotFound"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:45 codeName:@"MADownloadServerInternalError"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:46 codeName:@"MADownloadMalformedAssetData"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:47 codeName:@"MADownloadNetworkingError"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:48 codeName:@"MADownloadCancelled"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:49 codeName:@"MADownloadBadUrl"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:50 codeName:@"MADownloadBadServerResponse"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:51 codeName:@"MADownloadTimedOut"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:52 codeName:@"MADownloadTimedOutRequest"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:53 codeName:@"MADownloadTimedOutResource"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:54 codeName:@"MADownloadTimedOutWatchdog"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:55 codeName:@"MADownloadTimedOutStart"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:56 codeName:@"MADownloadTimedOutConnection"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:57 codeName:@"MADownloadCannotLoadFromNetwork"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:58 codeName:@"MADownloadUnsupportedURL"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:59 codeName:@"MADownloadCannotFindHost"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:60 codeName:@"MADownloadCannotConnectToHost"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:61 codeName:@"MADownloadNetworkConnectionLost"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:62 codeName:@"MADownloadDNSLookupFailed"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:63 codeName:@"MADownloadHTTPTooManyRedirects"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:64 codeName:@"MADownloadResourceUnavailable"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:65 codeName:@"MADownloadNotConnectedToInternet"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:66 codeName:@"MADownloadRedirectToNonExistentLocation"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:67 codeName:@"MADownloadInternationalRoamingOff"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:68 codeName:@"MADownloadCallIsActive"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:69 codeName:@"MADownloadDataNotAllowed"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:70 codeName:@"MADownloadSecureConnectionFailed"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:71 codeName:@"MADownloadInvalidReceipts"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:72 codeName:@"MADownloadFailedNoFallbackAllowed"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:73 codeName:@"MADownloadLiveServerDisabledNoFallback"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:74 codeName:@"MADownloadMalformedPurpose"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:75 codeName:@"MADownloadSSOFailure"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:76 codeName:@"MADownloadCopyFailed"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:77 codeName:@"MADownloadInvalidPaths"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:78 codeName:@"MADownloadIncompatibleBrain"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:79 codeName:@"MADownloadNewBrainRequired"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:80 codeName:@"MADownloadTimeoutNoContent"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:81 codeName:@"MADownloadTimedOutBecameStalled"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:82 codeName:@"MADownloadTimedOutSlowDownload"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:83 codeName:@"MADownloadTimedOutFrequentStalls"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:84 codeName:@"MADownloadAssetMissingDecryptionKey"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:85 codeName:@"MADownloadContentDecryptionFailed"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:86 codeName:@"MADownloadConflict"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:0 codeName:@"MACancelSucceeded"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:1 codeName:@"MSCancelXpcError"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:1 codeName:@"MSCancelXpcError"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:2 codeName:@"MACancelConnectionInterupted"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:2 codeName:@"MACancelConnectionInterupted"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:3 codeName:@"MACancelWasNotDownloading"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:4 codeName:@"MACancelFailed"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:5 codeName:@"MACancelNotEntitled"];
  [MEMORY[0x1E69D3888] attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:6 codeName:@"MACancelNotApplicableForRequireByOs"];
  v0 = MEMORY[0x1E69D3888];

  return [v0 attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:7 codeName:@"MACancelNotApplicableForInstalledWithOs"];
}

id MAError(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = MEMORY[0x1E696AEC0];
  v12 = a3;
  v13 = a1;
  v14 = [[v11 alloc] initWithFormat:v12 arguments:&a9];

  v15 = MAErrorWithUnderlyingUserInfoAndString(v13, a2, 0, 0, v14);

  return v15;
}

id MAErrorWithUnderlying(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = MEMORY[0x1E696AEC0];
  v13 = a4;
  v14 = a3;
  v15 = a1;
  v16 = [[v12 alloc] initWithFormat:v13 arguments:&a9];

  v17 = MAErrorWithUnderlyingUserInfoAndString(v15, a2, v14, 0, v16);

  return v17;
}

uint64_t isCancelDownloadResultFailure(unint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 >= 8)
  {
    v3 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = stringForMACancelDownloadResult(a1);
      v7 = 134218242;
      v8 = a1;
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_197AD5000, v3, OS_LOG_TYPE_ERROR, "Unknown MACancelDownloadResult: %ld (%{public}@)", &v7, 0x16u);
    }

    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = 0x36u >> a1;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2 & 1;
}

id MAErrorForCancelDownloadResultWithUnderlying(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  if (v11)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = a2;
    v14 = [[v12 alloc] initWithFormat:v11 arguments:&a9];
  }

  else
  {
    v15 = a2;
    v14 = errorStringForMACancelDownloadResult(a1);
  }

  v16 = v14;
  v17 = MAErrorWithUnderlyingUserInfoAndString(@"com.apple.MobileAssetError.CancelDownload", a1, a2, 0, v14);

  return v17;
}

uint64_t isAttributePartOfAssetIdHash(void *a1)
{
  v1 = a1;
  if (![v1 hasPrefix:@"_"] || (objc_msgSend(v1, "isEqualToString:", @"_ContentVersion") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"_CompatibilityVersion") & 1) != 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"_MasteredVersion"];
  }

  return v2;
}

id getAssetIdFromDict(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
  v6 = [v4 keyEnumerator];
  v7 = [v6 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      if (isAttributePartOfAssetIdHash(v8))
      {
        v9 = [v4 objectForKey:v8];
        [v5 setObject:v9 forKey:v8];
      }

      v10 = [v6 nextObject];

      v8 = v10;
    }

    while (v10);
  }

  v11 = _MobileAssetHashAssetData(v3, v5, @"SHA-1");

  return v11;
}

id getHashFromAttributesInSet(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    v9 = [v6 keyEnumerator];
    v10 = [v9 nextObject];
    if (v10)
    {
      v11 = v10;
      do
      {
        if ([v7 containsObject:v11])
        {
          v12 = [v6 objectForKey:v11];
          [v8 setObject:v12 forKey:v11];
        }

        v13 = [v9 nextObject];

        v11 = v13;
      }

      while (v13);
    }

    v14 = _MobileAssetHashAssetDataNoLegacy(v5, v8, @"SHA-1");
  }

  else
  {
    v14 = _MobileAssetHashAssetDataNoLegacy(v5, v6, @"SHA-1");
  }

  return v14;
}

id getHashFromAssetIdAttributes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [v4 keyEnumerator];
  v7 = [v6 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      if (isAttributePartOfAssetIdHash(v8))
      {
        [v5 addObject:v8];
      }

      v9 = [v6 nextObject];

      v8 = v9;
    }

    while (v9);
  }

  v10 = getHashFromAttributesInSet(v3, v4, v5);

  return v10;
}

id getHashFromNonAssetIdAttributes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [v4 keyEnumerator];
  v7 = [v6 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      if ((isAttributePartOfAssetIdHash(v8) & 1) == 0)
      {
        [v5 addObject:v8];
      }

      v9 = [v6 nextObject];

      v8 = v9;
    }

    while (v9);
  }

  v10 = getHashFromAttributesInSet(v3, v4, v5);

  return v10;
}

id attributesInPallasDynamicAssetId()
{
  if (attributesInPallasDynamicAssetId_once != -1)
  {
    attributesInPallasDynamicAssetId_cold_1();
  }

  v1 = attributesInPallasDynamicAssetId__pallasDynamicAssetIdAttributes;

  return v1;
}

void __attributesInPallasDynamicAssetId_block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5[0] = @"AssetType";
  v5[1] = @"Ramp";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v2 = [v0 initWithArray:v1];
  v3 = attributesInPallasDynamicAssetId__pallasDynamicAssetIdAttributes;
  attributesInPallasDynamicAssetId__pallasDynamicAssetIdAttributes = v2;

  v4 = *MEMORY[0x1E69E9840];
}

id attributesInDownloadContent()
{
  if (attributesInDownloadContent_once != -1)
  {
    attributesInDownloadContent_cold_1();
  }

  v1 = attributesInDownloadContent__downloadContentAttributes;

  return v1;
}

void __attributesInDownloadContent_block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5[0] = @"_DownloadSize";
  v5[1] = @"_Measurement";
  v5[2] = @"_Measurement-SHA256";
  v5[3] = @"_MeasurementAlgorithm";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v2 = [v0 initWithArray:v1];
  v3 = attributesInDownloadContent__downloadContentAttributes;
  attributesInDownloadContent__downloadContentAttributes = v2;

  v4 = *MEMORY[0x1E69E9840];
}

id attributesInDownloadUrl()
{
  if (attributesInDownloadUrl_once != -1)
  {
    attributesInDownloadUrl_cold_1();
  }

  v1 = attributesInDownloadUrl__downloadUrlAttributes;

  return v1;
}

void __attributesInDownloadUrl_block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5[0] = @"__BaseURL";
  v5[1] = @"__RelativePath";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v2 = [v0 initWithArray:v1];
  v3 = attributesInDownloadUrl__downloadUrlAttributes;
  attributesInDownloadUrl__downloadUrlAttributes = v2;

  v4 = *MEMORY[0x1E69E9840];
}

id attributesInDownloadPolicy()
{
  if (attributesInDownloadPolicy_once != -1)
  {
    attributesInDownloadPolicy_cold_1();
  }

  v1 = attributesInDownloadPolicy__downloadPolicyAttributes;

  return v1;
}

void __attributesInDownloadPolicy_block_invoke()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5[0] = @"__CanUseLocalCacheServer";
  v5[1] = @"_CompressionAlgorithm";
  v5[2] = @"_IsZipStreamable";
  v5[3] = @"_UnarchivedSize";
  v5[4] = @"__AssetDefaultGarbageCollectionBehavior";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v2 = [v0 initWithArray:v1];
  v3 = attributesInDownloadPolicy__downloadPolicyAttributes;
  attributesInDownloadPolicy__downloadPolicyAttributes = v2;

  v4 = *MEMORY[0x1E69E9840];
}

id categorySimpleName(unint64_t a1)
{
  if ((a1 & 0x1FF) == 0x1FF)
  {
    v1 = kMADiffCategoryName_All;
LABEL_25:
    v2 = v1;
    goto LABEL_26;
  }

  if ((a1 & 0x1FE) == 0)
  {
    v1 = kMADiffCategoryName_AssetType;
    goto LABEL_25;
  }

  if ((a1 & 0x1FD) == 0)
  {
    v1 = kMADiffCategoryName_AssetId;
    goto LABEL_25;
  }

  if ((a1 & 0x1DF) == 0)
  {
    v1 = kMADiffCategoryName_DownloadContent;
    goto LABEL_25;
  }

  if ((a1 & 0x1BF) == 0)
  {
    v1 = kMADiffCategoryName_DownloadUrl;
    goto LABEL_25;
  }

  if ((a1 & 0x17F) == 0)
  {
    v1 = kMADiffCategoryName_DownloadPolicy;
    goto LABEL_25;
  }

  if (!a1)
  {
    v1 = kMADiffCategoryName_PallasDynamicAssetId;
    goto LABEL_25;
  }

  if ((a1 & 0x1EF) == 0)
  {
    v1 = kMADiffCategoryName_NonAssetId;
    goto LABEL_25;
  }

  if ((a1 & 0x1F7) == 0)
  {
    v1 = kMADiffCategoryName_AssetIdAttributes;
    goto LABEL_25;
  }

  if ((a1 & 0x1FB) == 0)
  {
    v1 = kMADiffCategoryName_AnyAttribute;
    goto LABEL_25;
  }

  if ((a1 & 0x1FF) == 0)
  {
    v1 = kMADiffCategoryName_None;
    goto LABEL_25;
  }

  if (a1 <= 0x1FF)
  {
    v1 = kMADiffCategoryName_Some;
    goto LABEL_25;
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%ld", kMADiffCategoryName_Unknown, a1];
LABEL_26:

  return v2;
}

id categoryCompoundName(unint64_t a1)
{
  v2 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"(");
  if (kMADiffCategory_BaseCount)
  {
    v3 = 0;
    v4 = ~a1;
    do
    {
      v5 = objc_autoreleasePoolPush();
      v6 = kMADiffCategory_Bases[v3];
      if ((v4 & v6 & 0x1FF) == 0)
      {
        if ([v2 length])
        {
          [v2 appendString:@" "];
        }

        a1 &= v6 & 0x1FF ^ 0x1FF;
        v7 = categorySimpleName(v6);
        [v2 appendString:v7];
      }

      objc_autoreleasePoolPop(v5);
      ++v3;
    }

    while (kMADiffCategory_BaseCount > v3);
  }

  if ((a1 & 0x1FF) != 0)
  {
    if ([v2 length])
    {
      [v2 appendString:@" "];
    }

    a1 &= 0xFFFFFFFFFFFFFE00;
    [v2 appendString:kMADiffCategoryName_Some];
  }

  if (a1 >= 0x200)
  {
    if ([v2 length])
    {
      [v2 appendString:@" "];
    }

    [v2 appendString:kMADiffCategoryName_Unknown];
  }

  [v2 appendString:@""]);

  return v2;
}

id categoryAssessDiffAndMask(unint64_t a1, unint64_t a2)
{
  v4 = @"(from newer)";
  v5 = @"(from newer, subset)";
  if (a2 < 0x200)
  {
    v4 = &stru_1F0C1B388;
    v5 = @"(from older)";
  }

  v6 = MEMORY[0x1E696AEC0];
  if ((~a2 & 0x1FF) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = categoryCompoundName(a1);
  v9 = v8;
  v10 = @"+";
  if (a1 < 0x200)
  {
    v10 = &stru_1F0C1B388;
  }

  v11 = [v6 stringWithFormat:@"%0lx/%0lx %@%@%@", a1, a2, v8, v10, v7];

  return v11;
}

void sub_197AF0ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getRetryXpcDelayQueue_block_invoke_0()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MobileAsset.retryXpcDelay", v2);
  v1 = getRetryXpcDelayQueue_retryQueue_0;
  getRetryXpcDelayQueue_retryQueue_0 = v0;
}

id queryDecodeClasses()
{
  if (queryDecodeClasses_once != -1)
  {
    queryDecodeClasses_cold_1();
  }

  v1 = queryDecodeClasses__queryDecodeClasses;

  return v1;
}

void __queryDecodeClasses_block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:11];
  v2 = [v0 initWithArray:{v1, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14}];
  v3 = queryDecodeClasses__queryDecodeClasses;
  queryDecodeClasses__queryDecodeClasses = v2;

  v4 = *MEMORY[0x1E69E9840];
}

id _preferencesDomainProtectionDispatchQueue()
{
  if (_preferencesDomainProtectionDispatchQueue_preferencesDomainQueueOnce != -1)
  {
    _preferencesDomainProtectionDispatchQueue_cold_1();
  }

  v1 = _preferencesDomainProtectionDispatchQueue_preferencesDomainQueue;

  return v1;
}

uint64_t ___preferencesDomainProtectionDispatchQueue_block_invoke()
{
  _preferencesDomainProtectionDispatchQueue_preferencesDomainQueue = dispatch_queue_create("com.apple.MobileAsset.preferencesDomain", 0);

  return MEMORY[0x1EEE66BB8]();
}

id _MAPreferencesCopyValue(void *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  if (v1)
  {
    v2 = _preferencesDomainProtectionDispatchQueue();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = ___MAPreferencesCopyValue_block_invoke;
    v5[3] = &unk_1E74CA5E0;
    v7 = &v8;
    v6 = v1;
    dispatch_sync(v2, v5);

    v3 = v9[5];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v8, 8);

  return v3;
}

uint64_t _MAPreferencesGetAppBooleanValue(void *a1, _BYTE *a2)
{
  v3 = _MAPreferencesCopyValue(a1);
  if (v3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = isKindOfClass ^ 1;
    v6 = isKindOfClass & 1;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v5 = 1;
  if (a2)
  {
LABEL_3:
    *a2 = v6;
  }

LABEL_4:
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 BOOLValue];
  }

  return v7;
}

uint64_t _MAPreferencesIsVerboseLoggingEnabled()
{
  if (_MAPreferencesIsVerboseLoggingEnabled_onceToken != -1)
  {
    _MAPreferencesIsVerboseLoggingEnabled_cold_1();
  }

  return _MAPreferencesIsVerboseLoggingEnabled__verboseLoggingEnabled;
}

uint64_t _MAPreferencesIsCentralizedCacheDeleteEnabled()
{
  if (_MAPreferencesIsCentralizedCacheDeleteEnabled_onceToken != -1)
  {
    _MAPreferencesIsCentralizedCacheDeleteEnabled_cold_1();
  }

  return _MAPreferencesIsCentralizedCacheDeleteEnabled__centralizedCacheDeleteEnabled;
}

id progressDictionaryForAssetIdAndState(void *a1, unint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (a2 <= 6 && ((1 << a2) & 0x6C) != 0)
  {
    v14 = v3;
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    v15[0] = v5;
    v6 = MEMORY[0x1E695DF20];
    v7 = v15;
    v8 = &v14;
  }

  else
  {
    v12 = v3;
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    v13 = v5;
    v6 = MEMORY[0x1E695DF20];
    v7 = &v13;
    v8 = &v12;
  }

  v9 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:1];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void sub_197B081B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B09C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ASSetAssetServerURLForAssetType(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 absoluteString];
  v6 = MASetServerUrlOverride(v4, v5);

  if (v6)
  {
    v7 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = MAStringForMAOperationResult(v6);
      v10 = 134218498;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_197AD5000, v7, OS_LOG_TYPE_ERROR, "Could not set server URL in daemon: %lld %{public}@ for url: %{public}@", &v10, 0x20u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void ASSetDefaultAssetServerURLForAssetType(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 absoluteString];
  v6 = MASetServerUrlFallbackDefault(v4, v5);

  if (v6)
  {
    v7 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = MAStringForMAOperationResult(v6);
      v10 = 134218498;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_197AD5000, v7, OS_LOG_TYPE_ERROR, "Could not set server URL in daemon: %lld %{public}@ for url: %{public}@", &v10, 0x20u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t ASNonUserInitiatedDownloadsAllowedForAssetType(uint64_t a1, void *a2)
{
  v8 = 0;
  v3 = MANonUserInitiatedDownloadsAllowedForAssetType(a1, &v8);
  v4 = v8;
  v5 = v4;
  if (a2)
  {
    if (v4)
    {
      v6 = _ASErrorForMAError(v4);
      *a2 = v6;
    }

    else
    {
      *a2 = 0;
    }
  }

  return v3;
}

void ASEnsureDataVault(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a1;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = 0;
    v8 = MAEnsureDataVault(v7, &v20);
    v13 = v20;
    if (v8)
    {
      goto LABEL_10;
    }

    v14 = _ASCreateError(@"MobileAssetError", 32, 0, @"Cannot confirm that data vault exists", v9, v10, v11, v12, v19);

    v15 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot confirm that data vault exists"];
      *buf = 138412802;
      v22 = @"MobileAssetError";
      v23 = 1024;
      v24 = 32;
      v25 = 2112;
      v26 = v16;
LABEL_8:
      _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_DEFAULT, "[%@:%d] %@", buf, 0x1Cu);
    }
  }

  else
  {
    v14 = _ASCreateError(@"MobileAssetError", 32, 0, @"Cannot create data vault for an invalid asset type", v3, v4, v5, v6, v19);
    v15 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot create data vault for an invalid asset type"];
      *buf = 138412802;
      v22 = @"MobileAssetError";
      v23 = 1024;
      v24 = 32;
      v25 = 2112;
      v26 = v16;
      goto LABEL_8;
    }
  }

  v13 = v14;
LABEL_10:
  if (a2)
  {
    v17 = v13;
    *a2 = v13;
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t MobileAssetQueryCreate()
{
  v0 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_197AD5000, v0, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", v2, 2u);
  }

  return 0;
}

uint64_t MobileAssetQueryCreateArrayOfKnownAssets()
{
  v0 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_197AD5000, v0, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", v2, 2u);
  }

  return 0;
}

uint64_t MobileAssetQueryRefreshKnownAssets()
{
  v0 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_197AD5000, v0, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", v2, 2u);
  }

  return 0;
}

uint64_t MobileAssetQueryGetMatchingAsset()
{
  v0 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_197AD5000, v0, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", v2, 2u);
  }

  return 0;
}

uint64_t MobileAssetQueryRefreshAssetsAgainstLocalCache()
{
  v0 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_197AD5000, v0, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", v2, 2u);
  }

  return 0;
}

void sub_197B0DF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B0E530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B12138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_197B12CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_197B13848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_197B14230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_197B151E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 184), 8);
  _Block_object_dispose((v34 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_197B15DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_197B16748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B17008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B17E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v7 + 40));
  _Unwind_Resume(a1);
}

void sub_197B18118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v7 + 40));
  _Unwind_Resume(a1);
}

void sub_197B1E1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B1ED84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B1FDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B20850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B21334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B21DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B230B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_197B23F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_197B24CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_197B264F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_197B2748C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_197B280BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B28B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B29658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B2C984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_197B2D1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_197B2D414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_197B2E250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_197B2EAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_197B2F350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_197B2FBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_197B30424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_197B30C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B31328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B31A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B32170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B328A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_197B33134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_197B3395C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

MAAssetDiff *allowableDiffFromCategories(__int16 a1)
{
  v1 = categoryClean(a1);
  v2 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v1];
  [v2 encodeObject:v3 forKey:@"diffBits"];

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:511];
  [v2 encodeObject:v4 forKey:@"diffMask"];

  [v2 finishEncoding];
  v5 = [v2 encodedData];
  v6 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v5 error:0];
  v7 = [[MAAssetDiff alloc] initWithCoder:v6];

  return v7;
}

uint64_t MAGetPallasEnabled(void *a1, char *a2)
{
  v4 = 1;
  result = _MAsendGetPallasEnabled(a1, &v4);
  if (a2)
  {
    *a2 = v4;
  }

  return result;
}

void MAPurgeAllWithPurposeExceptGivenIds(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MAPurgeAllWithPurposeExceptGivenIds_block_invoke;
  v9[3] = &unk_1E74CB120;
  v10 = v7;
  v8 = v7;
  _MAPurgeAll(a1, a2, a3, v9);
}

void __MAPurgeAllWithPurposeExceptGivenIds_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x19A8EC930]() == MEMORY[0x1E69E9E98])
  {
    v12 = errorStringForMAPurgeResult(1);
    v5 = MAError(@"com.apple.MobileAssetError.Purge", 1, @"%@ due to XPC_TYPE_ERROR", v13, v14, v15, v16, v17, v12);

    v6 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_DEFAULT, "Asset purge all with exceptions failed due to XPC", buf, 2u);
    }
  }

  else
  {
    int64 = xpc_dictionary_get_int64(v3, "Result");
    v5 = int64;
    if (!int64)
    {
      goto LABEL_7;
    }

    v6 = errorStringForPurgeResult(int64);
    v5 = MAError(@"com.apple.MobileAssetError.Purge", v5, @"%@", v7, v8, v9, v10, v11, v6);
  }

LABEL_7:
  v18 = *(a1 + 32);
  if (v18)
  {
    (*(v18 + 16))(v18, v5);
  }
}

void MAPurgeCatalogsWithPurpose(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MAPurgeCatalogsWithPurpose_block_invoke;
  v7[3] = &unk_1E74CB120;
  v8 = v5;
  v6 = v5;
  _MAPurgeCatalogs(a1, a2, v7);
}

void __MAPurgeCatalogsWithPurpose_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x19A8EC930]() == MEMORY[0x1E69E9E98])
  {
    v12 = errorStringForMAPurgeResult(1);
    v5 = MAError(@"com.apple.MobileAssetError.Purge", 1, @"%@ due to XPC_TYPE_ERROR", v13, v14, v15, v16, v17, v12);

    v6 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_DEFAULT, "Asset purge catalogs failed due to XPC", buf, 2u);
    }
  }

  else
  {
    int64 = xpc_dictionary_get_int64(v3, "Result");
    v5 = int64;
    if (!int64)
    {
      goto LABEL_7;
    }

    v6 = errorStringForPurgeResult(int64);
    v5 = MAError(@"com.apple.MobileAssetError.Purge", v5, @"%@", v7, v8, v9, v10, v11, v6);
  }

LABEL_7:
  v18 = *(a1 + 32);
  if (v18)
  {
    (*(v18 + 16))(v18, v5);
  }
}

id MASoftwareLookupQuery(int a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v11 = 0;
  v8 = _MAsendPMVQuerySync(a1, a2, a3, a4, a5, a6, &v11);
  v9 = v11;
  if (a7 && v9)
  {
    v9 = v9;
    *a7 = v9;
  }

  return v8;
}

id MASoftwareLookupQueryVersionsOnly(int a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v40 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v38 = 0;
  v33 = v15;
  v31 = a6;
  v32 = v16;
  v17 = MASoftwareLookupQuery(a1, v13, v14, v15, v16, v31, &v38);
  v18 = v38;
  if (a7 && v18)
  {
    v18 = v18;
    *a7 = v18;
  }

  v30 = v18;
  v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v17, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = v17;
  v21 = [v20 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v34 + 1) + 8 * i);
        v26 = objc_autoreleasePoolPush();
        v27 = [v25 objectForKey:@"ProductVersion"];
        if (v27)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && (!v14 || [v27 hasPrefix:v14]) && (objc_msgSend(v19, "containsObject:", v27) & 1) == 0)
          {
            [v19 addObject:v27];
          }
        }

        objc_autoreleasePoolPop(v26);
      }

      v22 = [v20 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v22);
  }

  [v19 sortUsingComparator:&__block_literal_global_14];
  v28 = *MEMORY[0x1E69E9840];

  return v19;
}

uint64_t __MASoftwareLookupQueryVersionsOnly_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 compare:a3 options:64];
  if (v3 == 1)
  {
    return -1;
  }

  else
  {
    return v3 == -1;
  }
}

void MALogClientWithNSLogOSLog()
{
  v0 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_197AD5000, v0, OS_LOG_TYPE_DEFAULT, "Deprecated use asutil -nslog instead", v1, 2u);
  }
}

void MALogClientWithNSLogOSLogStdOut()
{
  v0 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_197AD5000, v0, OS_LOG_TYPE_DEFAULT, "Deprecated use asutil -nslog instead", v1, 2u);
  }
}

id _MABrainGetInfo()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = @"Error";
  v0 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10 = @"Error getting MobileAssetBrain info";
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v2 = [v0 errorWithDomain:@"MobileAssetBrainErrorDomain" code:901 userInfo:v1];
  v12[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v8 = v3;
  _MAclientSendGetMABrainInfo(&v8);
  v4 = v8;
  v5 = v8;

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

id _MABrainUpdate(void *a1)
{
  v3 = 0;
  _MAclientSendUpdateMABrain(a1, &v3);
  v1 = v3;

  return v1;
}

id _SecureMABundleCommand(uint64_t a1, void *a2)
{
  v4 = 0;
  _MAclientSendSecureMABundleCommand(a1, a2, &v4);
  v2 = v4;

  return v2;
}

void sub_197B39A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_197B3A308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B3A500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _getV1DecodeClasses()
{
  if (_getV1DecodeClasses_once != -1)
  {
    _getV1DecodeClasses_cold_1();
  }

  v1 = _getV1DecodeClasses_v1DecodeClasses;

  return v1;
}

void ___getV1DecodeClasses_block_invoke()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:15];
  v2 = [v0 initWithArray:{v1, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18}];
  v3 = _getV1DecodeClasses_v1DecodeClasses;
  _getV1DecodeClasses_v1DecodeClasses = v2;

  v4 = *MEMORY[0x1E69E9840];
}

id createErrorFromMessage(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  length = 0;
  data = xpc_dictionary_get_data(a1, "Error", &length);
  if (!data)
  {
    v8 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "createErrorFromMessage: data is nil ";
LABEL_13:
      _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    }

LABEL_14:
    v3 = 0;
    v4 = 0;
LABEL_15:
    v7 = 0;
LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  v2 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:data length:length freeWhenDone:0];
  if (!v2)
  {
    v8 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "createErrorFromMessage: errorInMessage is nil ";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v3 = v2;
  v15 = 0;
  v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v2 error:&v15];
  v5 = v15;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = v5;
    v8 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v7;
      _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_DEFAULT, "createErrorFromMessage: unarchiver cannot be created: %{public}@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v14 = _getV1DecodeClasses();
  v10 = [v4 decodeObjectOfClasses:v14 forKey:*MEMORY[0x1E696A508]];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_DEFAULT, "createErrorFromMessage: created object was not an error", buf, 2u);
    }

    goto LABEL_15;
  }

  v8 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v10;
    _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_DEFAULT, "createErrorFromMessage: Successfully created error: %{public}@", buf, 0xCu);
  }

  v7 = 0;
LABEL_17:

  [v4 finishDecoding];
  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void sub_197B433D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B43FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_197B453C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 184), 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_197B467A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 184), 8);
  _Block_object_dispose((v28 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_197B47834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_197B4815C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_197B48D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_197B49914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B4A430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B4AF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B4BA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_197B50CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B519F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B51B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_197B5228C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 + 40));
  _Unwind_Resume(a1);
}

id _ASCreateError(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a3;
  v13 = a4;
  v14 = MEMORY[0x1E695DF90];
  v15 = a1;
  v16 = [v14 dictionary];
  if (v13)
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v13 arguments:&a9];
    if (v17)
    {
      [v16 setObject:v17 forKey:*MEMORY[0x1E695E620]];
    }
  }

  if (v12)
  {
    [v16 setObject:v12 forKey:*MEMORY[0x1E696AA08]];
  }

  v18 = MEMORY[0x1E696ABC0];
  if ([v16 count])
  {
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v18 errorWithDomain:v15 code:a2 userInfo:v19];

  return v20;
}

__CFString *_ASStateForMobileAssetState(void *a1)
{
  v1 = a1;
  if ([(__CFString *)v1 isEqualToString:@"WaitingToDownload"])
  {
    v2 = ASOperationWaitingToDownload;
LABEL_13:
    v3 = *v2;
    goto LABEL_14;
  }

  if ([(__CFString *)v1 isEqualToString:@"DownloadStalled"])
  {
    v2 = ASOperationStalled;
    goto LABEL_13;
  }

  if ([(__CFString *)v1 isEqualToString:@"DownloadingAsset"])
  {
    v2 = ASOperationDownloadingAsset;
    goto LABEL_13;
  }

  if ([(__CFString *)v1 isEqualToString:@"DownloadPaused"])
  {
    v2 = ASOperationDownloadPaused;
    goto LABEL_13;
  }

  if ([(__CFString *)v1 isEqualToString:@"VerifyingAsset"])
  {
    v2 = ASOperationVerifyingAsset;
    goto LABEL_13;
  }

  if ([(__CFString *)v1 isEqualToString:@"UnarchivingAsset"])
  {
    v2 = ASOperationUnarchivingAsset;
    goto LABEL_13;
  }

  if ([(__CFString *)v1 isEqualToString:@"OperationCompleted"])
  {
    v3 = @"OperationCompleted";
  }

  else
  {
    v3 = v1;
  }

LABEL_14:
  v4 = v3;

  return v3;
}

uint64_t _ASErrorCodeForMobileAssetErrorCode(unint64_t a1)
{
  if (a1 > 0x21)
  {
    return -1;
  }

  else
  {
    return qword_197B62368[a1];
  }
}

id _ASErrorForV1Deprecation(void *a1)
{
  v1 = MEMORY[0x1E695DF90];
  v2 = a1;
  v3 = [v1 dictionary];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Deprecated ASAsset API is no longer supported: '%@'", v2];

  [v3 setValue:v4 forKey:*MEMORY[0x1E696A578]];
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASError" code:33 userInfo:v3];

  return v5;
}

id _ASErrorForMAError(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 userInfo];
    if (v3)
    {
      v16 = v2;
      v4 = [MEMORY[0x1E695DF90] dictionary];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      obj = [v3 keyEnumerator];
      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v19;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v19 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v18 + 1) + 8 * i);
            v10 = objc_autoreleasePoolPush();
            if ([v9 isEqualToString:@"Operation"])
            {
              v11 = [v3 objectForKey:@"Operation"];
              v12 = _ASStateForMobileAssetState(v11);
              [v4 setObject:v12 forKey:@"Operation"];
            }

            else
            {
              v11 = [v3 objectForKey:v9];
              [v4 setObject:v11 forKey:v9];
            }

            objc_autoreleasePoolPop(v10);
          }

          v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v6);
      }

      v2 = v16;
    }

    else
    {
      v4 = 0;
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASError" code:_ASErrorCodeForMobileAssetErrorCode(objc_msgSend(v2 userInfo:{"code")), v4}];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

__CFString *MAAutoAssetSuspendResumeForSoftwareUpdateStatusString(uint64_t a1)
{
  if (a1 <= 100)
  {
    if (!a1)
    {
      return @"Unknown";
    }

    if (a1 == 100)
    {
      return @"Running";
    }
  }

  else
  {
    switch(a1)
    {
      case 101:
        return @"Resuming";
      case 200:
        return @"Suspended";
      case 201:
        return @"Suspending";
    }
  }

  return @"Unexpected";
}

void sub_197B55AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_197B55C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_197B55DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_197B55F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

id MAPushServiceInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0C495A0];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_subscribedChannelIDsWithCompletion_ argumentIndex:0 ofReply:1];

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v4 setWithObjects:{v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  [v0 setClasses:v10 forSelector:sel_triggerPushNotificationWithPayload_withCompletion_ argumentIndex:0 ofReply:0];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  [v0 setClasses:v13 forSelector:sel_pushJobsAwaitingTriggerWithCompletion_ argumentIndex:0 ofReply:1];

  v14 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v14 forSelector:sel_subscribeToChannelWithIdentifier_completion_ argumentIndex:0 ofReply:0];

  v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v15 forSelector:sel_unsubscribeToChannelWithIdentifier_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

_BYTE *_hashCFDictionary(const __CFDictionary *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (CFDictionaryGetCount(a1) || (a3 & 1) == 0)
  {
    if (v5 == @"SHA-1")
    {
      v32 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
      CC_SHA1_Init(v32);
      v29 = MEMORY[0x1E69E9480];
      v31 = MEMORY[0x1E69E9488];
      v30 = MEMORY[0x1E69E9478];
      v7 = 20;
    }

    else
    {
      if (v5 != @"SHA-256")
      {
        abort();
      }

      v32 = malloc_type_malloc(0x68uLL, 0x1000040ED882C02uLL);
      CC_SHA256_Init(v32);
      v29 = MEMORY[0x1E69E94A8];
      v31 = MEMORY[0x1E69E94B0];
      v30 = MEMORY[0x1E69E94A0];
      v7 = 32;
    }

    size = v7;

    v8 = _hashCFType(@"dictionary", v5, a3);
    Count = CFDictionaryGetCount(a1);
    valuePtr = Count;
    v10 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    if (v10)
    {
      v11 = v10;
      v33 = v8;
      CFDictionaryGetKeysAndValues(a1, v10, 0);
      if (Count < 1)
      {
LABEL_20:
        if ((a3 & 1) == 0)
        {
          v25 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
          v26 = _hashCFNumber(v25, v5);
          if (v25)
          {
            CFRelease(v25);
          }

          v29(v32);
          v31(v32, v33, size);
          v31(v32, v26, size);
          v30(v33, v32);
          if (v26)
          {
            free(v26);
          }
        }
      }

      else
      {
        v12 = 0;
        v28 = a3;
        while (1)
        {
          v13 = _hashCFType(v11[v12], v5, a3);
          v14 = a1;
          Value = CFDictionaryGetValue(a1, v11[v12]);
          v16 = v5;
          v17 = _hashCFType(Value, v5, a3);
          v18 = malloc_type_calloc(1uLL, size, 0x100004077774924uLL);
          v19 = v18;
          if (!v18)
          {
            break;
          }

          if (!v13 || v17 == 0)
          {
            break;
          }

          v29(v32);
          v31(v32, v13, size);
          v31(v32, v17, size);
          v30(v19, v32);
          v21 = v33;
          if (v33)
          {
            v22 = v19;
            v23 = size;
            do
            {
              v24 = *v22++;
              *v21++ ^= v24;
              --v23;
            }

            while (v23);
          }

          free(v19);
          free(v13);
          free(v17);
          ++v12;
          v5 = v16;
          a1 = v14;
          a3 = v28;
          if (Count <= v12)
          {
            goto LABEL_20;
          }
        }

        if (v18)
        {
          free(v18);
        }

        if (v13)
        {
          free(v13);
        }

        if (v17)
        {
          free(v17);
        }

        if (v33)
        {
          free(v33);
        }

        v33 = 0;
        v5 = v16;
      }

      free(v11);
    }

    else
    {
      if (v8)
      {
        free(v8);
      }

      v33 = 0;
    }

    free(v32);
    v6 = v33;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id _MABufferToHexString(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  v4 = 2 * a2;
  v5 = malloc_type_malloc((2 * a2) | 1, 0xCDE67424uLL);
  v6 = v5;
  if (v2)
  {
    v7 = v5;
    do
    {
      v8 = *a1++;
      snprintf(v7, 3uLL, "%02x", v8);
      v7 += 2;
      --v2;
    }

    while (v2);
  }

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v6 length:v4 encoding:1 freeWhenDone:1];

  return v9;
}

id _MobileAssetHashAssetDataOptCompatibility(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = _hashCFType(v7, v9, a4);
  if (!v10)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v11 = _hashCFType(v8, v9, a4);
  if (!v11)
  {
LABEL_7:
    v14 = 0;
    goto LABEL_12;
  }

  v12 = v9;
  if (v12 == @"SHA-1")
  {
    v13 = 20;
  }

  else
  {
    if (v12 != @"SHA-256")
    {
      abort();
    }

    v13 = 32;
  }

  for (i = 0; i != v13; ++i)
  {
    v10[i] ^= v11[i];
  }

  v14 = _MABufferToHexString(v10, v13);
LABEL_12:
  free(v10);
  free(v11);

  return v14;
}

unsigned __int8 *_hashCFType(const __CFString *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    if (v6 == CFBooleanGetTypeID())
    {
      v7 = v5;
      v8 = v7;
      if (v7 == @"SHA-1")
      {
        v9 = 20;
      }

      else
      {
        if (v7 != @"SHA-256")
        {
          goto LABEL_44;
        }

        v9 = 32;
      }

      v10 = malloc_type_calloc(1uLL, v9, 0x100004077774924uLL);
      data = CFBooleanGetValue(a1);
      if (v8 != @"SHA-1")
      {
        if (v8 == @"SHA-256")
        {
          p_data = &data;
          v18 = 1;
LABEL_21:
          CC_SHA256(p_data, v18, v10);
LABEL_40:

          goto LABEL_41;
        }

        goto LABEL_44;
      }

      v19 = &data;
      v20 = 1;
      goto LABEL_23;
    }

    if (v6 == CFStringGetTypeID())
    {
      v11 = a1;
      v12 = v5;
      v13 = a3;
LABEL_11:
      v14 = _hashCFString(v11, v12, v13);
LABEL_12:
      v10 = v14;
      goto LABEL_41;
    }

    if (v6 == CFDateGetTypeID())
    {
      v15 = v5;
      v8 = v15;
      if (v15 == @"SHA-1")
      {
        v16 = 20;
      }

      else
      {
        if (v15 != @"SHA-256")
        {
          goto LABEL_44;
        }

        v16 = 32;
      }

      v10 = malloc_type_calloc(1uLL, v16, 0x100004077774924uLL);
      v29 = MEMORY[0x19A8EC030](a1);
      if (v8 != @"SHA-1")
      {
        if (v8 == @"SHA-256")
        {
          p_data = &v29;
          v18 = 8;
          goto LABEL_21;
        }

LABEL_44:
        abort();
      }

      v19 = &v29;
      v20 = 8;
LABEL_23:
      CC_SHA1(v19, v20, v10);
      goto LABEL_40;
    }

    if (v6 == CFDataGetTypeID())
    {
      v21 = v5;
      Length = CFDataGetLength(a1);
      v23 = v21;
      if (Length >= 0x80000000)
      {
        _hashCFType_cold_1();
      }

      v24 = v23;
      v8 = v24;
      if (v24 == @"SHA-1")
      {
        v10 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
        BytePtr = CFDataGetBytePtr(a1);
        CC_SHA1(BytePtr, Length, v10);
      }

      else
      {
        if (v24 != @"SHA-256")
        {
          goto LABEL_44;
        }

        v10 = malloc_type_calloc(1uLL, 0x20uLL, 0x100004077774924uLL);
        v25 = CFDataGetBytePtr(a1);
        CC_SHA256(v25, Length, v10);
      }

      goto LABEL_40;
    }

    if (v6 == CFArrayGetTypeID())
    {
      v14 = _hashCFArray(a1, v5, a3);
      goto LABEL_12;
    }

    if (v6 == CFDictionaryGetTypeID())
    {
      v14 = _hashCFDictionary(a1, v5, a3);
      goto LABEL_12;
    }

    if (v6 == CFNumberGetTypeID())
    {
      v14 = _hashCFNumber(a1, v5);
      goto LABEL_12;
    }
  }

  else if ((a3 & 1) == 0)
  {
    v11 = @"NULL";
    v12 = v5;
    v13 = 0;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_41:

  return v10;
}

unsigned __int8 *_hashCFNumber(const __CFNumber *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == @"SHA-1")
  {
    v5 = 20;
  }

  else
  {
    if (v3 != @"SHA-256")
    {
      goto LABEL_16;
    }

    v5 = 32;
  }

  v6 = malloc_type_calloc(1uLL, v5, 0x100004077774924uLL);
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
  if ((valuePtr + 1) >= 0xE)
  {
    v7 = 8;
  }

  else
  {
    v7 = 4;
  }

  if ((valuePtr + 1) < 0xE)
  {
    v8 = kCFNumberSInt32Type;
  }

  else
  {
    v8 = kCFNumberSInt64Type;
  }

  v9 = malloc_type_calloc(1uLL, v7, 0x100004077774924uLL);
  CFNumberGetValue(a1, v8, v9);
  if (v4 == @"SHA-1")
  {
    CC_SHA1(v9, v7, v6);
    goto LABEL_15;
  }

  if (v4 != @"SHA-256")
  {
LABEL_16:
    abort();
  }

  CC_SHA256(v9, v7, v6);
LABEL_15:
  free(v9);

  return v6;
}

unsigned __int8 *_hashCFString(const __CFString *a1, void *a2, char a3)
{
  v5 = a2;
  Length = CFStringGetLength(a1);
  v7 = v5;
  if (Length >= 0x7FFFFFFF)
  {
    _hashCFType_cold_1();
  }

  v8 = v7;
  if ((a3 & 1) == 0)
  {
    Length = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    if (Length >= 0x7FFFFFFF)
    {
      _hashCFString_cold_1();
    }
  }

  v9 = Length + 1;
  v10 = malloc_type_calloc(1uLL, Length + 1, 0x100004077774924uLL);
  if (!CFStringGetCString(a1, v10, v9, 0x8000100u) && (a3 & 1) == 0)
  {
    _hashCFString_cold_2();
  }

  v11 = v8;
  v12 = v11;
  if (v11 == @"SHA-1")
  {
    v13 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
    CC_SHA1(v10, v9, v13);
  }

  else
  {
    if (v11 != @"SHA-256")
    {
      abort();
    }

    v13 = malloc_type_calloc(1uLL, 0x20uLL, 0x100004077774924uLL);
    CC_SHA256(v10, v9, v13);
  }

  free(v10);

  return v13;
}

_BYTE *_hashCFArray(const __CFArray *a1, void *a2, int a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    if (!CFArrayGetCount(a1))
    {
LABEL_51:
      v21 = 0;
      goto LABEL_52;
    }

    Count = CFArrayGetCount(a1);
    v8 = Count - 1;
    if (Count >= 1)
    {
      v9 = Count;
      v10 = 0;
      v11 = 1;
      while (2)
      {
        v12 = v10;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v12);
          v50.location = 0;
          v50.length = v9;
          CountOfValue = CFArrayGetCountOfValue(a1, v50, ValueAtIndex);
          if (CountOfValue >= 2)
          {
            break;
          }

          if (v9 == ++v12)
          {
            if (v11)
            {
              goto LABEL_17;
            }

            goto LABEL_47;
          }
        }

        v15 = CountOfValue;
        v16 = _MAClientLog(@"V2");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          *&buf[4] = v12;
          v45 = 2048;
          v46 = v15;
          v47 = 2112;
          v48 = ValueAtIndex;
          _os_log_impl(&dword_197AD5000, v16, OS_LOG_TYPE_DEFAULT, "Hash duplicate found at index %i (%li duplicates found) with entry %@", buf, 0x1Cu);
        }

        v11 = 0;
        v10 = v12 + 1;
        if (v8 != v12)
        {
          continue;
        }

        break;
      }

LABEL_47:
      v40 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_197AD5000, v40, OS_LOG_TYPE_DEFAULT, "Failing to hash due to duplicate array entries", buf, 2u);
      }

      goto LABEL_51;
    }

LABEL_17:
    v21 = _hashCFType(@"array", v6, 1);
    if (CFArrayGetCount(a1) >= 1)
    {
      v22 = 0;
      if (v6 == @"SHA-1")
      {
        v23 = 20;
      }

      else
      {
        v23 = 32;
      }

      v24 = v6 == @"SHA-256" || v6 == @"SHA-1";
      while (1)
      {
        v25 = CFArrayGetValueAtIndex(a1, v22);
        v26 = _hashCFType(v25, v6, 1);
        if (!v26)
        {
          break;
        }

        v27 = v26;
        v28 = v6;
        if (!v24)
        {
          goto LABEL_53;
        }

        if (v21)
        {
          v29 = v21;
          v30 = v27;
          v31 = v23;
          do
          {
            v32 = *v30++;
            *v29++ ^= v32;
            --v31;
          }

          while (v31);
        }

        free(v27);
        if (CFArrayGetCount(a1) <= ++v22)
        {
          goto LABEL_52;
        }
      }

      free(v21);
      goto LABEL_51;
    }
  }

  else
  {
    if (v5 == @"SHA-1")
    {
      v17 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
      CC_SHA1_Init(v17);
      v18 = MEMORY[0x1E69E9478];
      v19 = MEMORY[0x1E69E9488];
      v20 = 20;
    }

    else
    {
      if (v5 != @"SHA-256")
      {
LABEL_53:
        abort();
      }

      v17 = malloc_type_malloc(0x68uLL, 0x1000040ED882C02uLL);
      CC_SHA256_Init(v17);
      v18 = MEMORY[0x1E69E94A0];
      v19 = MEMORY[0x1E69E94B0];
      v20 = 32;
    }

    v33 = _hashCFType(@"array", v6, 0);
    v19(v17, v33, v20);
    if (v33)
    {
      free(v33);
    }

    *buf = CFArrayGetCount(a1);
    v34 = CFNumberCreate(0, kCFNumberCFIndexType, buf);
    v35 = _hashCFNumber(v34, v6);
    v19(v17, v35, v20);
    if (v34)
    {
      CFRelease(v34);
    }

    if (v35)
    {
      free(v35);
    }

    valuePtr = 0;
    if (*buf >= 1)
    {
      do
      {
        v36 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
        v37 = _hashCFNumber(v36, v6);
        v19(v17, v37, v20);
        if (v36)
        {
          CFRelease(v36);
        }

        if (v37)
        {
          free(v37);
        }

        v38 = CFArrayGetValueAtIndex(a1, valuePtr);
        v39 = _hashCFType(v38, v6, 0);
        v19(v17, v39, v20);
        if (v39)
        {
          free(v39);
        }

        ++valuePtr;
      }

      while (valuePtr < *buf);
    }

    v21 = malloc_type_calloc(1uLL, v20, 0x100004077774924uLL);
    v18(v21, v17);
    free(v17);
  }

LABEL_52:

  v41 = *MEMORY[0x1E69E9840];
  return v21;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

BOOL OUTLINED_FUNCTION_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void _hashCFType_cold_1()
{
  v1 = _MAClientLog(@"V2");
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0(&dword_197AD5000, v2, v3, "Received a request to hash a value that is too large, possible malicious behavior - aborting", v4, v5, v6, v7, 0);
  }

  abort();
}

void _hashCFString_cold_1()
{
  v1 = _MAClientLog(@"V2");
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0(&dword_197AD5000, v2, v3, "Received a request to hash a multibyte value that is too large, possible malicious behavior - aborting", v4, v5, v6, v7, 0);
  }

  abort();
}

void _hashCFString_cold_2()
{
  v1 = _MAClientLog(@"V2");
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0(&dword_197AD5000, v2, v3, "Received a request to hash a value but could not get a C string. Possible malicious behavior - aborting", v4, v5, v6, v7, 0);
  }

  abort();
}