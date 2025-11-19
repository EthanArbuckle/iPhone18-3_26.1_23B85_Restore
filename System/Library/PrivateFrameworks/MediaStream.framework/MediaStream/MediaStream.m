void _notificationCallBack(void *key, uint64_t a2)
{
  Mutable = _notificationToInfo_dict;
  if (!_notificationToInfo_dict)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    _notificationToInfo_dict = Mutable;
  }

  if (CFDictionaryContainsKey(Mutable, key))
  {
    v5 = _notificationToInfo_dict;
    if (!_notificationToInfo_dict)
    {
      v5 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      _notificationToInfo_dict = v5;
    }

    v7 = CFDictionaryGetValue(v5, key);
    v6 = [v7 owner];
    [v6 _userDidRespondToNotification:key info:v7 responseFlags:a2];
  }
}

void sub_25874692C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2587473FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2587477F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2587491F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void MSMediaStreamInitialize()
{
  if (MSMediaStreamInitialize_once != -1)
  {
    dispatch_once(&MSMediaStreamInitialize_once, &__block_literal_global_231);
  }
}

void __MSMediaStreamInitialize_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[MSMSPlatform thePlatform];
  MSCoreMediaStreamInitialize();

  objc_autoreleasePoolPop(v0);
}

void _MSSetDaemon(void *a1)
{
  v2 = a1;
  if (_theDaemon != v2)
  {
    v3 = v2;
    objc_storeStrong(&_theDaemon, a1);
    v2 = v3;
  }
}

id MSMSLocalizedString(void *a1)
{
  v1 = MSMSLocalizedString_once;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&MSMSLocalizedString_once, &__block_literal_global_228);
  }

  v3 = [MSMSLocalizedString_bundle localizedStringForKey:v2 value:v2 table:@"MediaStream"];

  return v3;
}

uint64_t __MSMSLocalizedString_block_invoke()
{
  MSMSLocalizedString_bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void *BatteryStateChanged(void *result, uint64_t a2, int a3)
{
  if (a3 == -536723200)
  {
    v5 = result;
    [result updateBatteryLevelWithBatteryEntry:a2];

    return [v5 updateBatteryConnectedStateWithBatteryEntry:a2];
  }

  return result;
}

id _timerPingQueue()
{
  if (_timerPingQueue_onceToken != -1)
  {
    dispatch_once(&_timerPingQueue_onceToken, &__block_literal_global_227);
  }

  v1 = _timerPingQueue_queue;

  return v1;
}

uint64_t ___timerPingQueue_block_invoke()
{
  _timerPingQueue_queue = dispatch_queue_create("MSASConnection timer ping queue", 0);

  return MEMORY[0x2821F96F8]();
}

void ___initializePlatform_block_invoke()
{
  v0 = +[MSMSPlatform thePlatform];
  MSCoreMediaStreamInitialize();

  if (MSAlbumSharingInitialize_once != -1)
  {

    dispatch_once(&MSAlbumSharingInitialize_once, &__block_literal_global_149);
  }
}

void sub_2587526E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258752874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258752980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258752C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258752E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2587530B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _throttledIndicatorFilePath()
{
  if (_throttledIndicatorFilePath_onceToken != -1)
  {
    dispatch_once(&_throttledIndicatorFilePath_onceToken, &__block_literal_global_153);
  }

  v1 = _throttledIndicatorFilePath_path;

  return v1;
}

uint64_t _availableDiskBlocks()
{
  v10 = *MEMORY[0x277D85DE8];
  memset(&v9, 0, 512);
  v0 = MSPathAlbumSharingDir();
  v1 = statfs([v0 fileSystemRepresentation], &v9);

  if (v1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = __error();
      v6 = strerror(*v5);
      v7 = 136315138;
      v8 = v6;
      _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot check disk space remaining: %s", &v7, 0xCu);
    }

    f_bavail = 0;
  }

  else
  {
    f_bavail = v9.f_bavail;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = 134217984;
      v8 = f_bavail;
      _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Checked disk space remaining: %lld blocks.", &v7, 0xCu);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return f_bavail;
}

void ___throttledIndicatorFilePath_block_invoke()
{
  v2 = NSTemporaryDirectory();
  v0 = [v2 stringByAppendingPathComponent:@"com.apple.mediastream.mstreamd.disk-throttled"];
  v1 = _throttledIndicatorFilePath_path;
  _throttledIndicatorFilePath_path = v0;
}

void MSAlbumSharingInitialize()
{
  if (MSAlbumSharingInitialize_once != -1)
  {
    dispatch_once(&MSAlbumSharingInitialize_once, &__block_literal_global_149);
  }
}

void __MSAlbumSharingInitialize_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[MSMSPlatform thePlatform];
  MSCoreMediaStreamInitialize();

  v2 = objc_alloc_init(MSASPlatformImplementation);
  MSASInitialize();

  objc_autoreleasePoolPop(v0);
}

void sub_258755B98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_258757B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _XPCShouldLog()
{
  result = _shouldLogBlock;
  if (_shouldLogBlock)
  {
    return (*(_shouldLogBlock + 16))();
  }

  return result;
}

void _XPCLog(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  if (_logMessageBlock && _shouldLogBlock && (*(_shouldLogBlock + 16))())
  {
    (*(_logMessageBlock + 16))(_logMessageBlock, a1, v10, &a9);
  }
}

void XPCSetLogBlocks(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x259C89B90](a1);
  v5 = _shouldLogBlock;
  _shouldLogBlock = v4;

  v6 = MEMORY[0x259C89B90](v3);
  v7 = _logMessageBlock;
  _logMessageBlock = v6;
}

uint64_t _insertMessage(void *a1, void *a2, void *a3, void *a4, size_t *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  if (v10)
  {
    v42 = 0;
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v42];
    v13 = v42;
    if (!v12)
    {
      if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
      {
        _XPCLog(3, @"Cannot serialize object, error: %@", v27, v28, v29, v30, v31, v32, v13);
      }

      goto LABEL_23;
    }

    xpc_dictionary_set_data(v9, "__nsmsg", [v12 bytes], objc_msgSend(v12, "length"));
  }

  if (v11)
  {
    v14 = [v11 length];
    v15 = mmap(0, v14, 3, 4099, -1, 0);
    if (v15 != -1)
    {
      v16 = v15;
      memcpy(v15, [v11 bytes], v14);
      v17 = xpc_shmem_create(v16, v14);
      xpc_dictionary_set_value(v9, "__nsdata", v17);
      xpc_dictionary_set_uint64(v9, "__nsdsize", v14);
      if (a4)
      {
        *a4 = v17;
      }

      if (a5)
      {
        *a5 = v14;
      }

      if (munmap(v16, v14) && _shouldLogBlock && (*(_shouldLogBlock + 16))())
      {
        v18 = __error();
        v19 = strerror(*v18);
        _XPCLog(3, @"munmap(2) failed. Error: %s", v20, v21, v22, v23, v24, v25, v19);
      }

      goto LABEL_15;
    }

    if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
    {
      v33 = __error();
      v34 = strerror(*v33);
      _XPCLog(3, @"Cannot create mapped memory region. Error: %s", v35, v36, v37, v38, v39, v40, v34);
    }

LABEL_23:
    v26 = 0;
    goto LABEL_24;
  }

LABEL_15:
  v26 = 1;
LABEL_24:

  return v26;
}

uint64_t _unpack(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
LABEL_25:
    v19 = 1;
    goto LABEL_26;
  }

  if (!a2)
  {
    goto LABEL_12;
  }

  length = 0;
  data = xpc_dictionary_get_data(v5, "__nsmsg", &length);
  if (!length)
  {
    if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
    {
      _XPCLog(3, @"Could not interpret serialized message.", v20, v21, v22, v23, v24, v25, v46);
    }

    goto LABEL_12;
  }

  v8 = MEMORY[0x277CCAAC8];
  v9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:data length:length freeWhenDone:0];
  v47 = 0;
  v10 = [v8 MSSafeUnarchiveObjectWithData:v9 outError:&v47];
  v11 = v47;
  v12 = v10;
  *a2 = v10;

  if (!v11)
  {
LABEL_12:
    if (a3)
    {
      v26 = xpc_dictionary_get_value(v6, "__nsdata");
      v27 = v26;
      if (v26)
      {
        length = 0;
        v28 = xpc_shmem_map(v26, &length);
        if (v28)
        {
          v29 = v28;
          uint64 = xpc_dictionary_get_uint64(v6, "__nsdsize");
          if (uint64 <= v29)
          {
            *a3 = [MEMORY[0x277CBEA90] dataWithBytes:length length:uint64];
          }

          else if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
          {
            _XPCLog(3, @"Could not unpack message due to invalid size.", v31, v32, v33, v34, v35, v36, v46);
          }

          if (munmap(length, v29) && _shouldLogBlock && (*(_shouldLogBlock + 16))())
          {
            v37 = __error();
            v38 = strerror(*v37);
            _XPCLog(3, @"munmap(2) failed. Error: %s", v39, v40, v41, v42, v43, v44, v38);
          }
        }
      }
    }

    goto LABEL_25;
  }

  if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
  {
    _XPCLog(3, @"Could not interpret serialized message. Error: %@", v13, v14, v15, v16, v17, v18, v11);
  }

  v19 = 0;
LABEL_26:

  return v19;
}