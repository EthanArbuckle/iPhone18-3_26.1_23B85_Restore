uint64_t sub_10010C37C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10010C394(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  [v7 setObject:v9 forKeyedSubscript:v10];
  (*(*(a1 + 32) + 16))();
}

id sub_10010C45C(uint64_t a1)
{
  atomic_fetch_add_explicit((*(a1 + 32) + 8), 1u, memory_order_relaxed);
  [*(a1 + 40) addDatabaseOperation:*(a1 + 48) policy:*(a1 + 56)];
  result = [*(a1 + 32) canceled];
  if (result)
  {
    result = [*(a1 + 48) isCancelled];
    if ((result & 1) == 0)
    {
      v3 = MBGetDefaultLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(a1 + 48) operationID];
        *buf = 138543362;
        v7 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "=ck-fetch= Canceling operation %{public}@", buf, 0xCu);

        v5 = [*(a1 + 48) operationID];
        _MBLog();
      }

      return [*(a1 + 48) cancel];
    }
  }

  return result;
}

void sub_10010C984(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _sendBatchFetchOperationForFetchInfos:*(a1 + 40)];
  v3 = [*(a1 + 32) fetchGroup];
  dispatch_group_leave(v3);

  objc_autoreleasePoolPop(v2);
}

void sub_10010D054(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _finishBatchedFetchesWithCompletion:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_10010D254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010D26C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "=ck-fetch= Failed to upload modified assets: %@", buf, 0xCu);
      _MBLog();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

const __CFString *MBStringForAssetType(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1003BED50[a1 - 1];
  }
}

void sub_10010F828(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (!v3)
  {
    v4 = [*(a1 + 40) transferDrive];
    [v4 cleanUpReceivedFilesDirectory];

    v5 = +[NSFileManager defaultManager];
    v13 = 0;
    v6 = [v5 removeItemAtPath:@"/var/mobile/Library/Caches/Backup/RFReceiveTemp" error:&v13];
    v7 = v13;

    if ((v6 & 1) == 0)
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v15 = @"/var/mobile/Library/Caches/Backup/RFReceiveTemp";
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to remove %@: %@", buf, 0x16u);
        v11 = @"/var/mobile/Library/Caches/Backup/RFReceiveTemp";
        v12 = v7;
        _MBLog();
      }
    }

    v3 = *(a1 + 32);
  }

  [*(a1 + 40) _sendDoneMessageWithError:{v3, v11, v12}];
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Invalidating the FT session", buf, 2u);
    _MBLog();
  }

  v10 = [*(a1 + 40) fileTransferSession];
  [v10 invalidate];

  objc_autoreleasePoolPop(v2);
}

void sub_10010F9F4(uint64_t a1)
{
  v2 = [*(a1 + 32) transferDrive];
  [v2 cleanUpReceivedFilesDirectory];

  v3 = [*(a1 + 32) completionHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) completionHandler];
    v4[2](v4, *(a1 + 40));

    [*(a1 + 32) setCompletionHandler:0];
  }

  v5 = [*(a1 + 32) delegate];
  [*(a1 + 32) setDelegate:0];
  if (!v5)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _finishWithError:]_block_invoke", "MBTargetDeviceTransferEngine.m", 209, "delegate");
  }

  v6 = [*(a1 + 32) connection];
  [v5 connection:v6 didFinishDeviceTransferWithError:*(a1 + 40)];

  if (*(a1 + 40))
  {
    v7 = [MBError loggableDescriptionForError:?];
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = *(a1 + 64);
      v12 = *(a1 + 40);
      *buf = 138413058;
      v26 = v10;
      v27 = 2048;
      v28 = v11;
      v29 = 2114;
      v30 = v7;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "========== %@ failed after %.3fs: %{public}@: %@", buf, 0x2Au);
      v13 = *(a1 + 32);
      objc_opt_class();
      v24 = *(a1 + 40);
      v22 = *(a1 + 64);
      _MBLog();
    }
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = objc_opt_class();
      v16 = *(a1 + 64);
      *buf = 138412546;
      v26 = v15;
      v27 = 2048;
      v28 = v16;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "========== %@ finished in %.3fs", buf, 0x16u);
      v17 = *(a1 + 32);
      objc_opt_class();
      v23 = *(a1 + 64);
      _MBLog();
    }
  }

  [*(*(a1 + 32) + 384) trackEngineEngineEndWithError:*(a1 + 40)];
  [*(*(a1 + 32) + 384) submitTelemetry];
  v18 = *(a1 + 32);
  v19 = *(v18 + 384);
  *(v18 + 384) = 0;

  [*(a1 + 48) drop];
  v20 = *(a1 + 56);
  v21 = objc_opt_self();
}

void sub_100110344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100110370(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _cancelDisconnectTimer];
    WeakRetained = v4;
    v2 = atomic_load(v4 + 99);
    if (v2)
    {
      v3 = [MBError errorWithCode:15 format:@"Timed out"];
      [v4 _finishWithError:v3];

      WeakRetained = v4;
    }
  }
}

void sub_100110F6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_100110FA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FT session completion handler called: %@", buf, 0xCu);
      _MBLog();
    }

    [WeakRetained _finishWithError:v3];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1001110A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v8 = v3;
      v9 = 2048;
      v10 = [v3 linkType];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FT session progress handler called with %@, linkType:%ld", buf, 0x16u);
      [v3 linkType];
      _MBLog();
    }

    [WeakRetained _handleFileTransferSessionProgress:v3];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1001111CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = objc_opt_class();
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to handle %@: %@", buf, 0x16u);
      objc_opt_class();
LABEL_6:
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received %@", buf, 0xCu);
    goto LABEL_6;
  }

  atomic_store(1u, (*(a1 + 32) + 102));
  v12 = objc_opt_new();
  v9[2](v9, v12, 0);

  [*(a1 + 32) cancel];
}

void sub_100111B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100111BA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100111BBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  v18 = *(v3 + 40);
  v4 = [v2 _handleCompletionWithError:&v18];
  objc_storeStrong((v3 + 40), v18);
  if (v4)
  {
    v5 = [*(a1 + 32) peerInitResponse];
    if (v5)
    {
      v6 = dispatch_get_global_queue(17, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100111D28;
      block[3] = &unk_1003BEDF0;
      v7 = *(a1 + 48);
      v8 = *(a1 + 32);
      v13 = v7;
      v14 = v8;
      v17 = *(a1 + 56);
      v15 = v5;
      v16 = *(a1 + 40);
      dispatch_async(v6, block);
    }

    else
    {
      v9 = [MBError errorWithCode:1 format:@"nil init response"];
      v10 = *(*(a1 + 56) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      dispatch_group_leave(*(a1 + 40));
    }
  }

  else
  {
    dispatch_group_leave(*(a1 + 40));
  }
}

void sub_100111D28(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) trackPreflightStart];
  v3 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100111E04;
  v7[3] = &unk_1003BEF58;
  v9 = *(a1 + 72);
  v7[4] = v3;
  v8 = *(a1 + 48);
  v4 = [v3 _perform:v7];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  dispatch_group_leave(*(a1 + 56));
  objc_autoreleasePoolPop(v2);
}

BOOL sub_100111E04(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _requestPreflightWithSourceInfo:*(a1 + 40) error:a2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

void sub_100111E60(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) trackPreflightEnd];
  if (!*(*(*(a1 + 56) + 8) + 40) && !*(*(*(a1 + 64) + 8) + 40))
  {
    __assert_rtn("[MBTargetDeviceTransferEngine startPreflightWithCompletion:]_block_invoke_4", "MBTargetDeviceTransferEngine.m", 543, "preflightResponse || error");
  }

  v3 = MBFreeDiskSpace();
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 134218242;
      v43 = v3;
      v44 = 2112;
      v45 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed preflight (freeDiskSpace:%llu): %@", buf, 0x16u);
      v36 = *(*(*(a1 + 64) + 8) + 40);
      _MBLog();
    }

    v8 = *(*(*(a1 + 64) + 8) + 40);
    (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v43 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished preflight (freeDiskSpace:%llu)", buf, 0xCu);
      v33 = v3;
      _MBLog();
    }

    [*(a1 + 40) setPeerPreflightResponse:*(*(*(a1 + 56) + 8) + 40)];
    v9 = [*(*(*(a1 + 56) + 8) + 40) uploadFileCount];
    v10 = [*(*(*(a1 + 56) + 8) + 40) uploadSize];
    v11 = [*(*(*(a1 + 56) + 8) + 40) uploadSizeExcludingHardlinksAndClones];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v13 = [*(*(*(a1 + 56) + 8) + 40) purgeableDiskSpace];
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219008;
      v43 = v9;
      v44 = 2048;
      v45 = v10;
      v46 = 2048;
      v47 = v12;
      v48 = 2048;
      v49 = v13;
      v50 = 2048;
      v51 = v3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "uploadFileCount:%llu, uploadSize:%llu(%llu), sourcePurgeableSpaceSize:%llu, freeDiskSpace:%llu", buf, 0x34u);
      v38 = v13;
      v39 = v3;
      v35 = v10;
      v37 = v12;
      v34 = v9;
      _MBLog();
    }

    v15 = objc_opt_new();
    [v15 setSourceDeviceDataSize:v12];
    [v15 setTargetDeviceFreeSpaceSize:v3];
    [v15 setSourcePurgeableSpaceSize:v13];
    v16 = *(*(a1 + 64) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;

    v18 = *(a1 + 40);
    v19 = *(*(a1 + 64) + 8);
    obj = *(v19 + 40);
    v20 = [v18 _checkFreeDiskSpace:v3 preflightInfo:v15 error:&obj];
    objc_storeStrong((v19 + 40), obj);
    if ((v20 & 1) == 0)
    {
      v21 = *(*(a1 + 64) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = 0;
    }

    v23 = [*(*(*(a1 + 56) + 8) + 40) propertiesData];
    if (v23)
    {
      v40 = 0;
      v24 = [[MBProperties alloc] initWithData:v23 error:&v40];
      v25 = v40;
      v26 = MBGetDefaultLog();
      v27 = v26;
      if (v24)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = v24;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Deserialized preflight properties: %@", buf, 0xCu);
          _MBLog();
        }

        v27 = [(MBProperties *)v24 activeAppleID];
        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Found activeAppleID: %@", buf, 0xCu);
          _MBLog();
        }

        v29 = [(MBProperties *)v24 appleIDs];
        v30 = MBGetDefaultLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = v29;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Found appleIDs: %@", buf, 0xCu);
          _MBLog();
        }

        [v15 setActiveAppleID:v27];
        [v15 setAppleIDs:v29];
      }

      else if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = v25;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to deserialize preflight properties: %@", buf, 0xCu);
        _MBLog();
      }
    }

    else
    {
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        *buf = 138412290;
        v43 = v31;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Not preflight properties found on %@", buf, 0xCu);
        objc_opt_class();
        _MBLog();
      }
    }

    [*(a1 + 40) setPeerPreflightInfo:v15];
    v32 = *(*(*(a1 + 64) + 8) + 40);
    (*(*(a1 + 48) + 16))(*(a1 + 48));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001127B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1001127E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  v18 = *(v3 + 40);
  v4 = [v2 _handleCompletionWithError:&v18];
  objc_storeStrong((v3 + 40), v18);
  if (v4)
  {
    v5 = [*(a1 + 32) peerInitResponse];
    if (v5)
    {
      v6 = dispatch_get_global_queue(17, 0);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100112938;
      v13[3] = &unk_1003BEE40;
      v7 = *(a1 + 48);
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v14 = v7;
      v15 = v8;
      v17 = *(a1 + 56);
      v16 = v9;
      dispatch_async(v6, v13);
    }

    else
    {
      v10 = [MBError errorWithCode:1 format:@"nil init response"];
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      dispatch_group_leave(*(a1 + 40));
    }
  }

  else
  {
    dispatch_group_leave(*(a1 + 40));
  }
}

void sub_100112938(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) trackKeychainTransferStart];
  v3 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001129F0;
  v8[3] = &unk_1003BEE18;
  v4 = *(a1 + 64);
  v8[4] = v3;
  v8[5] = v4;
  v5 = [v3 _perform:v8];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  dispatch_group_leave(*(a1 + 48));
  objc_autoreleasePoolPop(v2);
}

BOOL sub_1001129F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [v4 peerInitResponse];
  v6 = [v4 _requestKeychainWithSourceInfo:v5 error:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

void sub_100112A70(uint64_t a1)
{
  if (!*(*(*(a1 + 56) + 8) + 40) && !*(*(*(a1 + 64) + 8) + 40))
  {
    __assert_rtn("[MBTargetDeviceTransferEngine startKeychainDataTransferWithCompletion:]_block_invoke_4", "MBTargetDeviceTransferEngine.m", 632, "keychainTransferResponse || error");
  }

  v2 = objc_autoreleasePoolPush();
  v3 = MBFreeDiskSpace();
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 134218242;
      v14 = v3;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed keychain data transfer (freeDiskSpace:%llu): %@", buf, 0x16u);
      v11 = v3;
      v12 = *(*(*(a1 + 64) + 8) + 40);
      _MBLog();
    }

    v8 = 0;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 134218242;
      v14 = v3;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished keychain data transfer (freeDiskSpace:%llu): %@", buf, 0x16u);
      v11 = v3;
      v12 = *(*(*(a1 + 56) + 8) + 40);
      _MBLog();
    }

    [*(a1 + 32) setPeerKeychainTransferResponse:*(*(*(a1 + 56) + 8) + 40)];
    v8 = objc_opt_new();
    [*(a1 + 32) setPeerKeychainInfo:v8];
  }

  [*(a1 + 40) trackKeychainTransferEnd];
  v10 = *(*(*(a1 + 64) + 8) + 40);
  (*(*(a1 + 48) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100112FC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 64) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _handleCompletionWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if ((v4 & 1) == 0)
  {
    dispatch_group_leave(*(a1 + 40));
    return;
  }

  v5 = [*(a1 + 32) peerInitResponse];
  v6 = [*(a1 + 32) peerKeychainTransferResponse];
  v7 = [*(a1 + 32) peerKeychainInfo];
  v8 = v7;
  if (!v5)
  {
    v14 = @"nil init response";
LABEL_13:
    v15 = [MBError errorWithCode:1 format:v14, v21, v22];
    v16 = *(*(a1 + 64) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    goto LABEL_14;
  }

  if (!v6)
  {
    v14 = @"nil keychain data transfer response";
    goto LABEL_13;
  }

  if (!v7)
  {
    v14 = @"nil keychain info";
    goto LABEL_13;
  }

  v9 = [*(a1 + 48) uuid];
  v10 = [v8 uuid];
  v11 = [v9 isEqualToString:v10];

  if ((v11 & 1) == 0)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 48);
      *buf = 138412546;
      v31 = v13;
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid keychain info: %@ != %@", buf, 0x16u);
      v21 = *(a1 + 48);
      v22 = v8;
      _MBLog();
    }

    v14 = @"Invalid keychain info";
    goto LABEL_13;
  }

LABEL_14:
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v18 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011328C;
    block[3] = &unk_1003BEEB8;
    v19 = *(a1 + 56);
    v28 = *(a1 + 64);
    v20 = *(a1 + 32);
    v24 = v19;
    v25 = v20;
    v26 = v6;
    v27 = *(a1 + 40);
    dispatch_async(v18, block);
  }
}

void sub_10011328C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) trackKeychainRestoreStart];
  v3 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100113360;
  v7[3] = &unk_1003BEE90;
  v7[4] = v3;
  v8 = *(a1 + 48);
  v4 = [v3 _perform:v7];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  dispatch_group_leave(*(a1 + 56));
  objc_autoreleasePoolPop(v2);
}

void sub_100113370(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) trackKeychainRestoreEnd];
  v3 = MBFreeDiskSpace();
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 134218242;
      v10 = v3;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed keychain data import (freeDiskSpace:%llu): %@", buf, 0x16u);
      v8 = *(*(*(a1 + 48) + 8) + 40);
LABEL_6:
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished keychain data import (freeDiskSpace:%llu)", buf, 0xCu);
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), *(*(*(a1 + 48) + 8) + 40));
  objc_autoreleasePoolPop(v2);
}

void sub_1001137E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  v12 = *(v3 + 40);
  v4 = [v2 _handleCompletionWithError:&v12];
  objc_storeStrong((v3 + 40), v12);
  if (v4)
  {
    [*(a1 + 32) _disableInfraWiFi];
    v5 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100113908;
    block[3] = &unk_1003BEF08;
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v6 = *(a1 + 48);
    v11[4] = *(a1 + 64);
    v7 = *(a1 + 40);
    v13.val[0].f64[0] = v8;
    v13.val[1] = v9;
    *&v13.val[0].f64[1] = v7;
    vst2q_f64(v11, v13);
    dispatch_async(v5, block);
  }

  else
  {
    dispatch_group_leave(*(a1 + 40));
  }
}

void sub_100113908(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) peerInitResponse];
  v4 = [*(a1 + 32) peerPreflightInfo];
  v5 = v4;
  if (!v3)
  {
    v14 = @"nil init response";
LABEL_12:
    v17 = [MBError errorWithCode:1 format:v14, v29, v30];
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    goto LABEL_13;
  }

  if (!v4)
  {
    v14 = @"nil preflight info";
    goto LABEL_12;
  }

  v6 = [*(a1 + 40) uuid];
  v7 = [v5 uuid];
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 40);
      *buf = 138412546;
      v38 = v16;
      v39 = 2112;
      v40 = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid preflight info: %@ != %@", buf, 0x16u);
      v29 = *(a1 + 40);
      v30 = v5;
      _MBLog();
    }

    v14 = @"Invalid preflight info";
    goto LABEL_12;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 64);
  v36 = 0;
  v11 = [v9 _checkFreeDiskSpace:v10 preflightInfo:v5 error:&v36];
  v12 = v36;
  v13 = v36;
  if ((v11 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v12);
  }

LABEL_13:
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    v20 = *(a1 + 32);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100113C60;
    v33[3] = &unk_1003BEEE0;
    v33[4] = v20;
    v21 = v3;
    v34 = v21;
    v35 = v5;
    v22 = [v20 _perform:v33];
    v23 = *(*(a1 + 56) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      dispatch_group_leave(*(a1 + 48));
    }

    else
    {
      v25 = *(a1 + 32);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100113C74;
      v31[3] = &unk_1003BEE90;
      v31[4] = v25;
      v32 = v21;
      v26 = [v25 _perform:v31];
      v27 = *(*(a1 + 56) + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = v26;

      dispatch_group_leave(*(a1 + 48));
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100113C84(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MBFreeDiskSpace();
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 134218242;
      v15 = v3;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed data transfer (freeDiskSpace:%llu): %@", buf, 0x16u);
      v11 = v3;
      v12 = *(*(*(a1 + 48) + 8) + 40);
LABEL_6:
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished data transfer (freeDiskSpace:%llu)", buf, 0xCu);
    v11 = v3;
    goto LABEL_6;
  }

  if (MBIsInternalInstall() && v3 >> 30 <= 6 && !dword_100421790 && !atomic_fetch_add_explicit(&dword_100421790, 1u, memory_order_relaxed))
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = v3;
      v16 = 2048;
      v17 = 0x1C0000000;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Unexpected free disk space left on target after transfer(%llu < %llu)", buf, 0x16u);
      v11 = v3;
      v12 = 0x1C0000000;
      _MBLog();
    }
  }

  v9 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100113F34;
  block[3] = &unk_1003BC0B0;
  block[4] = *(a1 + 32);
  dispatch_async(v9, block);

  v10 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _finishWithError:*(*(*(a1 + 48) + 8) + 40)];
  objc_autoreleasePoolPop(v2);
}

void sub_1001144B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001144C8(uint64_t a1)
{
  v2 = objc_opt_new();
  v6 = 0;
  v3 = [v2 holdWithError:&v6];
  v4 = v6;
  if ((v3 & 1) == 0)
  {

    v2 = 0;
  }

  [*(a1 + 32) setDeviceLockAssertion:v2];

  return 1;
}

BOOL sub_100114548(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) trackInitMessageStart];
  v4 = [*(a1 + 40) _requestInitWithError:a2];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(a1 + 32) trackInitMessageEnd];
  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

void sub_100114EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_100114F38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100115550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_100115598(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100115B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_100115B64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001168B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  _Block_object_dispose((v32 - 176), 8);
  objc_destroyWeak(&a31);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100116928(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained peerPreflightResponse];
    *(a2 + 16) = [v5 uploadFileCount];

    v6 = [v4 peerPreflightResponse];
    *(a2 + 24) = [v6 uploadSize];

    v7 = [v4 progressModel];
    v8 = *(a2 + 16);
    v9[0] = *a2;
    v9[1] = v8;
    [v7 updateTotalProgressWithPhase:3 transferInfo:v9];
  }
}

void sub_1001169CC(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100117598(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to send %@: %@", buf, 0x16u);
      v10 = *(a1 + 32);
      _MBLog();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received %@", buf, 0xCu);
      _MBLog();
    }

    atomic_store(1u, (*(a1 + 40) + 101));
    [*(a1 + 40) _stopTrackingPeerConnectionStatus];
  }

  atomic_store(0, (*(a1 + 40) + 100));
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1001179A8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[MBPeerRestoreProgressRequest alloc] initWithPercentage:a1[6]];
  v4 = dispatch_semaphore_create(0);
  v5 = a1[4];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100117B78;
  v12[3] = &unk_1003BF048;
  v6 = v3;
  v7 = a1[5];
  v13 = v6;
  v14 = v7;
  v8 = v4;
  v15 = v8;
  [MBPeerMessenger sendRequest:v6 session:v5 responseHandler:v12];
  v9 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Timed out waiting for %@", buf, 0xCu);
      objc_opt_class();
      _MBLog();
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100117B78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to send %@: %@", buf, 0x16u);
      v10 = *(a1 + 32);
LABEL_6:
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received %@", buf, 0xCu);
    goto LABEL_6;
  }

  atomic_store(0, (*(a1 + 40) + 103));
  dispatch_semaphore_signal(*(a1 + 48));
}

id sub_100117E8C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [*(a1 + 32) connection];
  [v2 connection:v3 didUpdateDeviceTransferProgress:*(a1 + 40)];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _postTransferProgressNotification:v5];
}

void sub_1001194D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose((v39 - 176), 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

id sub_100119530(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 deleted])
  {
    v4 = 0;
    goto LABEL_45;
  }

  v5 = [*(a1 + 32) parentEngine];
  if (!v5)
  {
    __assert_rtn("[MBCKRestoreDomainEngine cleanUpAfterError:]_block_invoke", "MBCKRestoreDomainEngine.m", 121, "parentEngine");
  }

  v6 = v5;
  [v3 setupWithDomain:*(a1 + 40)];
  v43 = 0;
  v7 = [*(a1 + 32) restorePolicy];
  v42 = 0;
  v8 = [v7 shouldRestoreFile:v3 markFileAsSkipped:&v43 error:&v42];
  v9 = v42;

  if (v8)
  {
    v10 = [*(a1 + 32) restorePolicy];
    v11 = [v10 deprecated_destinationPathForiCloudRestorable:v3 safeHarborDir:0];

    v12 = v11;
    v13 = [v12 fileSystemRepresentation];
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      buf.st_dev = 138412290;
      *&buf.st_mode = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "=ckdomain-engine= Removing staged item at %@", &buf, 0xCu);
      _MBLog();
    }

    memset(&buf, 0, sizeof(buf));
    if (lstat(v13, &buf))
    {
      if (*__error() == 2)
      {
LABEL_9:
        v15 = 1;
        v16 = v9;
        goto LABEL_31;
      }

      v16 = [MBError posixErrorWithCode:101 path:v12 format:@"lstat error"];
      v19 = v16;
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *__error();
        *v44 = 138412546;
        *&v44[4] = v12;
        v45 = 1024;
        v46 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "=ckdomain-engine= lstat failed at %@: %{errno}d", v44, 0x12u);
        v39 = *__error();
        _MBLog();
      }
    }

    else
    {
      if ((buf.st_mode & 0xF000) != 0x4000)
      {
        v23 = +[NSFileManager defaultManager];
        *v44 = 0;
        v15 = [v23 removeItemAtPath:v12 error:v44];
        v24 = *v44;

        v16 = v9;
        if ((v15 & 1) == 0)
        {
          v16 = [MBError errorWithCode:102 error:v24 path:v12 format:@"Error removing existing item at %@", v12];
          v25 = v16;
        }

LABEL_31:
        v17 = v16;

        if ((v15 & 1) == 0)
        {
          v4 = v17;
LABEL_43:

          goto LABEL_44;
        }

        if ([v3 isDirectory])
        {
          v26 = *(*(a1 + 56) + 8);
          v27 = *(v26 + 24) + 1;
          *(v26 + 24) = v27;
          if (__ROR8__(0xD288CE703AFB7E91 * v27, 4) <= 0x68DB8BAC710CBuLL)
          {
            v28 = MBGetDefaultLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = *(a1 + 48);
              v30 = *(*(*(a1 + 56) + 8) + 24);
              buf.st_dev = 134218242;
              *&buf.st_mode = v30;
              WORD2(buf.st_ino) = 2114;
              *(&buf.st_ino + 6) = v29;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Removed %llu dirs for %{public}@", &buf, 0x16u);
              v31 = *(*(*(a1 + 56) + 8) + 24);
              v40 = *(a1 + 48);
LABEL_40:
              _MBLog();
              goto LABEL_41;
            }

            goto LABEL_41;
          }
        }

        else
        {
          v32 = *(*(a1 + 64) + 8);
          v33 = *(v32 + 24) + 1;
          *(v32 + 24) = v33;
          if (__ROR8__(0xD288CE703AFB7E91 * v33, 4) <= 0x68DB8BAC710CBuLL)
          {
            v28 = MBGetDefaultLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v34 = *(*(*(a1 + 64) + 8) + 24);
              v35 = *(a1 + 48);
              buf.st_dev = 134218242;
              *&buf.st_mode = v34;
              WORD2(buf.st_ino) = 2114;
              *(&buf.st_ino + 6) = v35;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Removed %llu files for %{public}@", &buf, 0x16u);
              v36 = *(*(*(a1 + 64) + 8) + 24);
              v41 = *(a1 + 48);
              goto LABEL_40;
            }

LABEL_41:
          }
        }

        v4 = 0;
        goto LABEL_43;
      }

      if (!rmdir(v13))
      {
        goto LABEL_9;
      }

      if (*__error() == 66)
      {
        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *v44 = 138412290;
          *&v44[4] = v12;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "=ckdomain-engine= Leaving non-empty staged directory at %@", v44, 0xCu);
          _MBLog();
        }

        goto LABEL_9;
      }

      v16 = [MBError posixErrorWithCode:102 path:v12 format:@"rmdir error"];
      v38 = v16;
    }

    v15 = 0;
    goto LABEL_31;
  }

  v4 = 0;
  if ((v43 & 1) == 0 && v9)
  {
    if (([MBError isError:v9 withCode:213]& 1) == 0)
    {
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        buf.st_dev = 138412546;
        *&buf.st_mode = v3;
        WORD2(buf.st_ino) = 2112;
        *(&buf.st_ino + 6) = v9;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to determine if file %@ should be cleaned up after error: %@", &buf, 0x16u);
        _MBLog();
      }

      v17 = v9;
      v4 = v17;
      goto LABEL_44;
    }

    v4 = 0;
  }

  v17 = v9;
LABEL_44:

LABEL_45:

  return v4;
}

uint64_t sub_100119BC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_100119BD8(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) == 0;
}

BOOL sub_100119C34(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) == 0;
}

void sub_100119F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011B5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose((v65 - 208), 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 176), 8);
  _Unwind_Resume(a1);
}

id sub_10011B65C(uint64_t a1, void *a2)
{
  v56 = a2;
  v3 = [*(a1 + 32) debugContext];
  v4 = [v3 isFlagSet:@"SimulateProcessBatchErrorDuringDomainRestore"];

  if (v4)
  {
    v5 = [NSError errorWithDomain:CKErrorDomain code:4 userInfo:0];
  }

  else
  {
    v58 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v56, "count")}];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v6 = v56;
    v7 = [v6 countByEnumeratingWithState:&v91 objects:v107 count:16];
    if (v7)
    {
      v8 = *v92;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v92 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v91 + 1) + 8 * i);
          v11 = [CKRecordID alloc];
          v12 = [*(a1 + 40) defaultZoneID];
          v13 = [v11 initWithRecordName:v10 zoneID:v12];

          v14 = [[CKReference alloc] initWithRecordID:v13 action:0];
          [v58 addObject:v14];
        }

        v7 = [v6 countByEnumeratingWithState:&v91 objects:v107 count:16];
      }

      while (v7);
    }

    v15 = [NSPredicate predicateWithFormat:@"recordID IN %@", v58];
    v16 = [CKQuery alloc];
    v17 = +[(MBCKModel *)MBCKFile];
    v18 = [v16 initWithRecordType:v17 predicate:v15];

    val = [[CKQueryOperation alloc] initWithQuery:v18];
    v19 = [*(a1 + 40) defaultZoneID];
    [val setZoneID:v19];

    v20 = [*(a1 + 32) persona];
    v21 = [v20 shouldRestoreFilesSparse];

    if (v21)
    {
      v22 = objc_opt_new();
      [v22 setSparseAware:&__kCFBooleanTrue];
      v105 = @"contents";
      v106 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v106 forKeys:&v105 count:1];
      [val setAssetTransferOptionsByKey:v23];
    }

    v24 = objc_opt_new();
    objc_initWeak(&location, val);
    v86 = 0;
    v87 = &v86;
    v88 = 0x2020000000;
    v89 = 0;
    v82 = 0;
    v83 = &v82;
    v84 = 0x2020000000;
    v85 = 0;
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 0xBFF0000000000000;
    v25 = dispatch_semaphore_create(10);
    v26 = dispatch_group_create();
    dispatch_group_enter(v26);
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_10011BE94;
    v66[3] = &unk_1003BF0F0;
    v74 = &v78;
    v75 = &v86;
    v76 = *(a1 + 72);
    v27 = v24;
    v28 = *(a1 + 32);
    v67 = v27;
    v68 = v28;
    v77 = &v82;
    v69 = *(a1 + 48);
    v70 = *(a1 + 40);
    v29 = v25;
    v71 = v29;
    v30 = v26;
    v72 = v30;
    v73 = *(a1 + 56);
    [val setRecordFetchedBlock:v66];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10011C4EC;
    v59[3] = &unk_1003BF118;
    objc_copyWeak(&v65, &location);
    v64 = &v86;
    v60 = v6;
    v61 = *(a1 + 64);
    v31 = v27;
    v62 = v31;
    v32 = v30;
    v63 = v32;
    [val setQueryCompletionBlock:v59];
    +[NSDate timeIntervalSinceReferenceDate];
    v34 = v33;
    [*(a1 + 40) addDatabaseOperation:val];
    MBGroupWaitForever();
    v35 = v79[3];
    v36 = -1.0;
    if (v34 >= v35)
    {
      v37 = -1.0;
    }

    else
    {
      v37 = v35 - v34;
    }

    if (v37 > 0.0)
    {
      v36 = v83[3] / v37 / 1000000.0;
    }

    v38 = MBGetDefaultLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = *(a1 + 64);
      v40 = v87[3];
      v41 = v83[3];
      *buf = 138413314;
      v96 = v39;
      v97 = 2048;
      v98 = v40;
      v99 = 2048;
      v100 = v41;
      v101 = 2048;
      v102 = v37;
      v103 = 2048;
      v104 = v36;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "=ckdomain-engine= Finished download batch for %@ (%lu, %llu) in %.3fs at %.3fMB/s", buf, 0x34u);
      v53 = v87[3];
      v54 = v83[3];
      v52 = *(a1 + 64);
      _MBLog();
    }

    if ([v31 count])
    {
      v42 = MBGetDefaultLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = v42;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = *(a1 + 64);
          v45 = [v58 count];
          v46 = v83[3];
          *buf = 138413058;
          v96 = v44;
          v97 = 2048;
          v98 = v45;
          v99 = 2048;
          v100 = v46;
          v101 = 2112;
          v102 = *&v31;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to download batch for %@ (%lu, %llu): %@", buf, 0x2Au);
        }

        v47 = *(a1 + 64);
        [v58 count];
        v55 = v83[3];
        _MBLog();
      }

      v5 = [MBError errorWithErrors:v31];
    }

    else
    {
      v48 = objc_opt_new();
      v49 = *(*(a1 + 80) + 8);
      v50 = *(v49 + 40);
      *(v49 + 40) = v48;

      v5 = 0;
    }

    objc_destroyWeak(&v65);
    _Block_object_dispose(&v78, 8);
    _Block_object_dispose(&v82, 8);
    _Block_object_dispose(&v86, 8);
    objc_destroyWeak(&location);
  }

  return v5;
}

void sub_10011BE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, id location)
{
  objc_destroyWeak(&a28);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011BE94(uint64_t a1, void *a2)
{
  v3 = a2;
  +[NSDate timeIntervalSinceReferenceDate];
  *(*(*(a1 + 88) + 8) + 24) = v4;
  ++*(*(*(a1 + 96) + 8) + 24);
  v5 = *(*(*(a1 + 104) + 8) + 40);
  v6 = [v3 recordID];
  v7 = [v6 recordName];
  v8 = [v5 objectForKeyedSubscript:v7];

  v9 = *(*(*(a1 + 104) + 8) + 40);
  v10 = [v3 recordID];
  v11 = [v10 recordName];
  [v9 removeObjectForKey:v11];

  if (!v8)
  {
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to find file to restore: %@", buf, 0xCu);
      _MBLog();
    }

    v22 = *(a1 + 32);
    objc_sync_enter(v22);
    v23 = *(a1 + 32);
    v24 = [MBError errorWithCode:4 format:@"Failed to find file to restore: %@", 0];
    [v23 addObject:v24];

    objc_sync_exit(v22);
    goto LABEL_12;
  }

  if (([*(a1 + 40) isCanceled] & 1) == 0)
  {
    [v8 refreshWithRecord:v3];
    v12 = [v8 size];
    v13 = &v12[[v8 resourcesSize]];
    *(*(*(a1 + 112) + 8) + 24) += v13;
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = [*(a1 + 40) cache];
    v17 = [*(a1 + 40) device];
    v32 = 0;
    LOBYTE(v15) = [v8 stashAssetsToTemporaryDirectoryWithAccount:v14 operationTracker:v15 cache:v16 device:v17 error:&v32];
    v18 = v32;

    if (v15)
    {
      dispatch_semaphore_wait(*(a1 + 64), 0xFFFFFFFFFFFFFFFFLL);
      v19 = *(a1 + 72);
      v20 = *(a1 + 80);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10011C28C;
      block[3] = &unk_1003BD018;
      block[4] = *(a1 + 40);
      v28 = v8;
      v29 = *(a1 + 32);
      v31 = v13;
      v30 = *(a1 + 64);
      dispatch_group_async(v19, v20, block);
    }

    else
    {
      v25 = *(a1 + 32);
      objc_sync_enter(v25);
      [*(a1 + 32) addObject:v18];
      objc_sync_exit(v25);

      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v8;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to stash downloaded asset for file: %@", buf, 0xCu);
        _MBLog();
      }
    }

    v22 = v18;
LABEL_12:
  }
}

void sub_10011C28C(uint64_t a1)
{
  v2 = [*(a1 + 32) parentEngine];
  if (!v2)
  {
    __assert_rtn("[MBCKRestoreDomainEngine restoreFilesWithError:]_block_invoke", "MBCKRestoreDomainEngine.m", 428, "parentEngine");
  }

  v3 = [*(a1 + 32) restorePolicy];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) safeHarborDir];
  v6 = [v3 deprecated_destinationPathForiCloudRestorable:v4 safeHarborDir:v5];

  v7 = [[MBCKRestoreFileEngine alloc] initWithRestoreEngine:v2 file:*(a1 + 40) destinationPath:v6 shouldSetProtectionClass:1];
  v16 = 0;
  v8 = [(MBCKRestoreFileEngine *)v7 runWithError:&v16];
  v9 = v16;
  if (v8)
  {
    v10 = [v2 progressModel];
    [v10 finishedItem:*(a1 + 40) size:*(a1 + 64)];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 40) fileTypeString];
      v13 = *(a1 + 40);
      *buf = 138543874;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to restore %{public}@ %@: %@", buf, 0x20u);

      v14 = [*(a1 + 40) fileTypeString];
      v15 = *(a1 + 40);
      _MBLog();
    }

    v10 = *(a1 + 48);
    objc_sync_enter(v10);
    [*(a1 + 48) addObject:v9];
    objc_sync_exit(v10);
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

void sub_10011C4EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = [WeakRetained operationID];

  if (v6)
  {
    goto LABEL_2;
  }

  v12 = *(*(*(a1 + 64) + 8) + 24);
  if (v12 == [*(a1 + 32) count])
  {
    v6 = 0;
    goto LABEL_14;
  }

  v6 = +[MBError errorWithCode:format:](MBError, "errorWithCode:format:", 1, @"Batch file operation %@ fetched incorrect number of file records (%lu of %lu)", v8, *(*(*(a1 + 64) + 8) + 24), [*(a1 + 32) count]);
  if (MBIsInternalInstall() && !dword_100421794 && !atomic_fetch_add_explicit(&dword_100421794, 1u, memory_order_relaxed))
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = *(*(*(a1 + 64) + 8) + 24);
      v15 = [*(a1 + 32) count];
      *buf = 138412802;
      v19 = v8;
      v20 = 2048;
      v21 = v14;
      v22 = 2048;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "=ckdomain-engine= =ckdomain-engine= Operation %@ fetched an incorrect number of file records (%lu of %lu)", buf, 0x20u);
      v17 = *(*(*(a1 + 64) + 8) + 24);
      [*(a1 + 32) count];
      _MBLog();
    }
  }

  if (v6)
  {
LABEL_2:
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      *buf = 138543874;
      v19 = v8;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Batch download operation %{public}@ for %@ failed: %@", buf, 0x20u);
      v16 = *(a1 + 40);
      _MBLog();
    }

    v11 = *(a1 + 48);
    objc_sync_enter(v11);
    [*(a1 + 48) addObject:v6];
    objc_sync_exit(v11);
  }

LABEL_14:
  dispatch_group_leave(*(a1 + 56));
}

uint64_t sub_10011C7A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v4 handleCancelation:&obj];
  objc_storeStrong((v5 + 40), obj);
  if ((v6 & 1) == 0)
  {
    if ([v3 deleted])
    {
      v7 = 1;
      goto LABEL_59;
    }

    [v3 setupWithDomain:*(a1 + 40)];
    v55 = 0;
    v8 = [*(a1 + 32) restorePolicy];
    v54 = 0;
    v9 = [v8 shouldRestoreFile:v3 markFileAsSkipped:&v55 error:&v54];
    v10 = v54;

    if ((v9 & 1) == 0)
    {
      if (([v3 isRegularFile] & 1) == 0)
      {
        v19 = [v3 size];
        v20 = [v3 resourcesSize];
        v21 = [*(a1 + 48) progressModel];
        [v21 finishedItem:v3 size:&v19[v20]];
      }

      if (v55 == 1)
      {
        if ([v3 isDirectory])
        {
          v22 = *(*(*(a1 + 72) + 8) + 40);
          v23 = [v3 fileID];
          [v22 addObject:v23];
        }

        v13 = MBGetDefaultLog();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_56;
        }

        *buf = 138412290;
        v58 = v3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Skipping file: %@", buf, 0xCu);
      }

      else
      {
        if (!v10)
        {
          v7 = 1;
LABEL_58:

          goto LABEL_59;
        }

        if (![MBError isError:v10 withCode:213])
        {
          v35 = MBGetDefaultLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v58 = v3;
            v59 = 2112;
            v60 = v10;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to determine if file %@ should be restored: %@", buf, 0x16u);
            _MBLog();
          }

          v36 = *(*(a1 + 64) + 8);
          v17 = v10;
          v7 = 0;
          v13 = *(v36 + 40);
          *(v36 + 40) = v17;
          goto LABEL_57;
        }

        if ([v3 isDirectory])
        {
          v32 = *(*(*(a1 + 72) + 8) + 40);
          v33 = [v3 fileID];
          [v32 addObject:v33];
        }

        v13 = MBGetDefaultLog();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
LABEL_56:
          v7 = 1;
          v17 = v10;
LABEL_57:

          v10 = v17;
          goto LABEL_58;
        }

        *buf = 138412290;
        v58 = v3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Skipping file during FG restore: %@", buf, 0xCu);
      }

      _MBLog();
      goto LABEL_56;
    }

    if ([v3 downloaded])
    {
      goto LABEL_7;
    }

    if ([v3 resourcesSize])
    {
LABEL_49:
      v38 = *(*(*(a1 + 80) + 8) + 40);
      v39 = [v3 recordIDString];
      [v38 setObject:v3 forKeyedSubscript:v39];

      if ([*(*(*(a1 + 88) + 8) + 40) count] >= *(a1 + 104) || *(*(*(a1 + 96) + 8) + 24) >= *(a1 + 112))
      {
        v40 = *(*(*(a1 + 88) + 8) + 40);
        v41 = (*(*(a1 + 56) + 16))();
        v42 = *(*(a1 + 64) + 8);
        v43 = *(v42 + 40);
        *(v42 + 40) = v41;

        *(*(*(a1 + 96) + 8) + 24) = 0;
        if (*(*(*(a1 + 64) + 8) + 40))
        {
          v7 = 0;
          goto LABEL_58;
        }
      }

      v44 = MBGetDefaultLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = [v3 downloaded];
        *buf = 138412546;
        v58 = v3;
        v59 = 1024;
        LODWORD(v60) = v45;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "=ckdomain-engine= Adding file to download batch: %@ (%d)", buf, 0x12u);
        [v3 downloaded];
        _MBLog();
      }

      v46 = *(*(*(a1 + 96) + 8) + 24);
      v47 = [v3 size];
      *(*(*(a1 + 96) + 8) + 24) = [v3 resourcesSize] + v47 + v46;
      v48 = *(*(*(a1 + 88) + 8) + 40);
      v13 = [v3 recordIDString];
      [v48 addObject:v13];
      goto LABEL_56;
    }

    v24 = +[NSFileManager defaultManager];
    v25 = [*(a1 + 32) cache];
    v26 = [v3 signature];
    v27 = [v25 fileAssetMetadataForSignature:v26 volumeType:{objc_msgSend(v3, "volumeType")}];

    v28 = [v27 decodedAssetPath];
    v29 = [v27 stashedAssetPath];
    v30 = v29;
    if (v28)
    {
      if ([v24 fileExistsAtPath:v28])
      {
        v31 = MBGetDefaultLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v58 = v3;
          v59 = 2112;
          v60 = v28;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "=ckdomain-engine= Already decoded file contents for this file(%@), so don't download again: %@", buf, 0x16u);
          v50 = v3;
          v51 = v28;
LABEL_43:
          _MBLog();
          goto LABEL_44;
        }

        goto LABEL_44;
      }

      if (!v30)
      {
        goto LABEL_45;
      }
    }

    else if (!v29)
    {
LABEL_48:

      goto LABEL_49;
    }

    if ([v24 fileExistsAtPath:v30])
    {
      v31 = MBGetDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v58 = v3;
        v59 = 2112;
        v60 = v30;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "=ckdomain-engine= Already stashed file contents for this file(%@), so don't download again: %@", buf, 0x16u);
        v50 = v3;
        v51 = v30;
        goto LABEL_43;
      }

LABEL_44:

LABEL_7:
      v11 = [*(a1 + 32) restorePolicy];
      v12 = [*(a1 + 32) safeHarborDir];
      v13 = [v11 deprecated_destinationPathForiCloudRestorable:v3 safeHarborDir:v12];

      v14 = -[MBCKRestoreFileEngine initWithRestoreEngine:file:destinationPath:shouldSetProtectionClass:]([MBCKRestoreFileEngine alloc], "initWithRestoreEngine:file:destinationPath:shouldSetProtectionClass:", *(a1 + 48), v3, v13, [v3 isDirectory] ^ 1);
      v53 = v10;
      v15 = [(MBCKRestoreFileEngine *)v14 runWithError:&v53];
      v16 = v53;
      v17 = v53;

      if (v15)
      {
        if (([v3 isDirectory] & 1) == 0)
        {
          v18 = [*(a1 + 48) progressModel];
          [v18 finishedItem:v3];
        }

        v7 = 1;
      }

      else
      {
        v34 = MBGetDefaultLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v58 = v3;
          v59 = 2112;
          v60 = v17;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to restore %@: %@", buf, 0x16u);
          _MBLog();
        }

        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v16);
        v7 = 0;
      }

      goto LABEL_57;
    }

LABEL_45:
    v37 = MBGetDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v58 = v3;
      v59 = 2112;
      v60 = v28;
      v61 = 2112;
      v62 = v30;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, "=ckdomain-engine= Had cached stash path or decoded path for this file(%@), but they were not on disk anymore: %@, %@", buf, 0x20u);
      v51 = v28;
      v52 = v30;
      v50 = v3;
      _MBLog();
    }

    goto LABEL_48;
  }

  v7 = 0;
LABEL_59:

  return v7;
}

uint64_t sub_10011D054(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v4 handleCancelation:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = *(*(*(a1 + 64) + 8) + 40);
    v9 = [v3 fileID];
    LOBYTE(v8) = [v8 containsObject:v9];

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      [v3 setupWithDomain:*(a1 + 40)];
      v10 = [v3 size];
      v11 = [v3 resourcesSize];
      v12 = [*(a1 + 32) restorePolicy];
      v13 = [*(a1 + 32) safeHarborDir];
      v14 = [v12 deprecated_destinationPathForiCloudRestorable:v3 safeHarborDir:v13];

      v15 = [[MBCKRestoreFileEngine alloc] initWithRestoreEngine:*(a1 + 48) file:v3 destinationPath:v14 shouldSetProtectionClass:1];
      v24 = 0;
      v7 = [(MBCKRestoreFileEngine *)v15 runWithError:&v24];
      v16 = v24;
      if (v7)
      {
        v17 = [*(a1 + 48) progressModel];
        [v17 finishedItem:v3 size:&v10[v11]];
      }

      else
      {
        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [v3 fileTypeString];
          *buf = 138543874;
          v27 = v19;
          v28 = 2112;
          v29 = v3;
          v30 = 2112;
          v31 = v16;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to restore %{public}@ %@: %@", buf, 0x20u);

          v23 = [v3 fileTypeString];
          _MBLog();
        }

        v20 = *(*(a1 + 56) + 8);
        v21 = v16;
        v17 = *(v20 + 40);
        *(v20 + 40) = v21;
      }
    }
  }

  return v7;
}

void sub_10011E4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

id sub_10011E514(void *a1, void *a2)
{
  v3 = a2;
  if ([*(a1[4] + 32) shouldRestoreFile:v3 markFileAsSkipped:0 error:0])
  {
    ++*(*(a1[8] + 8) + 24);
    v4 = a1[5];
    if (v4)
    {
      v5 = [v3 absolutePath];
      v6 = [v4 stringByAppendingPathComponent:v5];
    }

    else
    {
      v5 = [*(a1[4] + 32) restoreRootForDomain:a1[6]];
      v7 = [v3 relativePath];
      v6 = [v5 stringByAppendingPathComponent:v7];
    }
  }

  else
  {
    v6 = 0;
    ++*(*(a1[7] + 8) + 24);
  }

  return v6;
}

void sub_10011ED90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

id sub_10011EDCC(void *a1, void *a2)
{
  v3 = a2;
  if ([*(a1[4] + 32) shouldRestoreFile:v3 markFileAsSkipped:0 error:0])
  {
    ++*(*(a1[7] + 8) + 24);
    v4 = a1[5];
    v5 = [v3 relativePath];
    v6 = [v4 stringByAppendingPathComponent:v5];
  }

  else
  {
    v6 = 0;
    ++*(*(a1[6] + 8) + 24);
  }

  return v6;
}

void sub_10011F248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011F268(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10011F280(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v4 _checkForCancellation:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v7 = (*(*(a1 + 56) + 16))();
    v8 = MBGetDefaultLog();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "=verifier= Verifying item: %@", buf, 0xCu);
        _MBLog();
      }

      v9 = [*(a1 + 32) _verifyRestoreMetadataForFile:v3 localPath:v7 fileList:*(a1 + 40)];
      if (v9)
      {
        [*(a1 + 48) addObject:v9];
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "=verifier= Skipping item: %@", buf, 0xCu);
      _MBLog();
    }
  }

  return v6;
}

void sub_1001201B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1001201F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=verifier= Failed to fetch the device record:%@(%@)", buf, 0x16u);
      _MBLog();
    }

    v11 = 40;
  }

  else
  {
    v11 = 48;
    a4 = a3;
  }

  objc_storeStrong((*(*(a1 + v11) + 8) + 40), a4);
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001207B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 baseRecordID];
  v7 = [MBDomainRecord recordIDFromBaseRecordID:v6 pageIndex:0];

  v8 = MBFileListDBPath(*(a1 + 32), *(a1 + 40), v5);
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v7 recordName];
    *buf = 138412802;
    v13 = v5;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "=verifier= Fetched domain %@ with recordID %@ and stashed file list to %@", buf, 0x20u);

    v11 = [v7 recordName];
    _MBLog();
  }

  [*(a1 + 48) setObject:v7 forKeyedSubscript:v5];
}

void sub_100120F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x100120E70);
  }

  _Unwind_Resume(exception_object);
}

id sub_100120FE8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) domainForName:a2];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = [*(a1 + 80) account];
  v10 = [v9 persona];
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v17 = 0;
  v13 = [v4 _verifyFileListForDomain:v3 snapshotDirectory:v5 snapshotTacker:v6 domainRecordIDsByDomainName:v7 device:v8 persona:v10 recordsDB:v11 commitID:v12 error:&v17];
  v14 = v17;
  v15 = v17;

  if ((v13 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 104) + 8) + 40), v14);
  }

  return v13;
}

void sub_1001218EC(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x100121788);
  }

  _Unwind_Resume(exc_buf);
}

void sub_100121B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100121B28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier _verifyAssetRecordIDsAreReferencedForDomain:assetIDPrefix:recordsDB:verifiedAssetCount:error:]_block_invoke", "MBSnapshotIntegrityVerifier.m", 711, "assetRecordIDSuffix");
  }

  if (!a3)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier _verifyAssetRecordIDsAreReferencedForDomain:assetIDPrefix:recordsDB:verifiedAssetCount:error:]_block_invoke", "MBSnapshotIntegrityVerifier.m", 712, "enumerationError");
  }

  v6 = v5;
  v7 = [MBAssetRecord recordIDFromAssetIDPrefix:*(a1 + 32) recordIDSuffix:v5];
  v8 = *(a1 + 40);
  v9 = [v7 recordName];
  v10 = [v8 hasAssetReference:v9 error:a3];

  if (v10)
  {
    ++*(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v11 = [*(a1 + 48) name];
    v12 = [v7 recordName];
    v13 = [NSString stringWithFormat:@"Missing server-side asset reference for domain %@, recordID %@", v11, v12];

    [*(a1 + 56) _logFailureAndAppendToAttemptSummary:v13];
    *a3 = [MBError errorWithCode:500 description:v13];
  }

  return v10;
}

void sub_100123C1C(void **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  v7 = v3;
  if (!*a1)
  {
    v4 = +[NSMutableArray array];
    v5 = v4;
    v3 = v7;
    *a1 = v4;
  }

  v6 = (*(v3 + 2))();
  [v4 addObject:v6];
}

void sub_100124AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100124B18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100124B30(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to remove domain: %@", buf, 0xCu);
      _MBLog();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100125318(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v10];
  if (!v8)
  {
    __assert_rtn("[MBDomainReferenceConsolidator enumerateConsolidatedDomainNamesAndReference:]_block_invoke", "MBDomainReferenceConsolidator.m", 73, "reference");
  }

  v9 = v8;
  *a4 = (*(*(a1 + 40) + 16))() ^ 1;
}

void sub_10012635C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  [v4 manager:v5 didScanBundleWithID:v6 bytesUsed:{objc_msgSend(a3, "unsignedLongLongValue")}];
}

void sub_1001263C8(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = a2;
  v11 = [v5 _bundleIDForDomainName:v7];
  v9 = a1[5];
  v8 = a1[6];
  v10 = [v6 unsignedLongLongValue];

  [v9 manager:v8 didScanDomainWithName:v7 forBundleID:v11 bytesUsed:v10];
}

void sub_100126470(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _bundleIDForDomainName:v7];
  [*(a1 + 40) manager:*(a1 + 48) didScanFiles:v6 forDomainWithName:v7 bundleID:v8];
}

void sub_100127064(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(a1 + 32) + 304) objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i)];
        v9 += [v12 unsignedLongLongValue];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v13 = [NSNumber numberWithUnsignedLongLong:v9];
  [*(a1 + 40) setObject:v13 forKeyedSubscript:v5];
}

int64_t sub_1001273C8(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_1000714E4(v4);
  if (v6 == sub_1000714E4(v5))
  {
    v7 = [v4 name];
    v8 = [v5 name];
    v9 = [v7 compare:v8];
  }

  else
  {
    v10 = sub_1000714E4(v4);
    if (v10 >= sub_1000714E4(v5))
    {
      v11 = sub_1000714E4(v4);
      v9 = v11 != sub_1000714E4(v5);
    }

    else
    {
      v9 = -1;
    }
  }

  return v9;
}

void sub_1001279CC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v13 = MBDomainHMACForDomainName(v7, v5);
  v8 = [*(a1 + 40) objectForKeyedSubscript:v13];
  v9 = [v8 quota];

  v10 = [v6 unsignedLongLongValue];
  if (v10 <= v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 - v9;
  }

  v12 = [NSNumber numberWithLongLong:v11];
  [*(*(a1 + 48) + 304) setObject:v12 forKeyedSubscript:v7];
}

id sub_1001282A8(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100421798;
  qword_100421798 = v1;

  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_100421798 setLocale:v3];

  v4 = qword_100421798;

  return [v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"];
}

void sub_100128848(uint64_t a1)
{
  [*(a1 + 32) timeout];
  v3 = v2;
  v4 = [*(a1 + 32) _fetchPluginFieldsFromDelegate];
  v5 = *(*(a1 + 32) + 16);
  v6 = [*(a1 + 32) lock];
  v7 = [*(a1 + 32) account];
  v14 = 0;
  v8 = [v6 saveLockWithAccount:v7 timeout:v4 pluginFields:&v14 error:v3];
  v9 = v14;

  if (v8)
  {
    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v5 lockManagerDidAcquireLock:*(a1 + 32)];
    }

    v10 = +[NSDate date];
    [*(a1 + 32) setLastAcquired:v10];

    [*(a1 + 32) setLastDuration:v3];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to renew lock: %@", buf, 0xCu);
      v13 = v9;
      _MBLog();
    }

    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v5 lockManager:*(a1 + 32) failedToAcquireLockWithError:v9];
    }
  }

  v12 = *(a1 + 32);
  [v12 renewInterval];
  [v12 _scheduleTimerWithInterval:?];
}

id sub_100128B1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 renewInterval];

  return [v1 _scheduleTimerWithInterval:?];
}

void sub_100128F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose((v11 - 112), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100128F78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100128F90(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchPluginFieldsFromDelegate];
  v3 = [*(a1 + 32) lock];
  v4 = [*(a1 + 32) account];
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [v3 saveLockWithAccount:v4 timeout:v2 pluginFields:&obj error:v5];
  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v7;
}

void sub_10012A024(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v8 = [NSString stringWithFormat:@"%s.keybagIsLocking", class_getName(v2)];
  v3 = v8;
  v4 = [v8 UTF8String];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create(v4, v5);
  v7 = qword_1004217B0;
  qword_1004217B0 = v6;
}

void sub_10012A0D0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 48) _findMissingEncryptionKeysWithAccount:*(a1 + 32) serviceManager:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_10012A120(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_10012A3B4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 48) _findMissingEncryptionKeysWithAccount:*(a1 + 32) serviceManager:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_10012AD5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    _Block_object_dispose(&a29, 8);
    _Block_object_dispose(&a33, 8);
    objc_begin_catch(exception_object);
    if (!a17)
    {
      JUMPOUT(0x10012ACD4);
    }

    JUMPOUT(0x10012ACC8);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012B1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10012B1F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10012B20C(void *a1, void *a2)
{
  v3 = a2;
  memset(&v47, 0, sizeof(v47));
  if (!stat([v3 fileSystemRepresentation], &v47))
  {
    st_ino = v47.st_ino;
    v8 = MBVolumeTypeFromPath();
    v9 = *(a1[7] + 8);
    obj = *(v9 + 40);
    v10 = [MBKeyBagFile keybagFileWithPath:v3 error:&obj];
    objc_storeStrong((v9 + 40), obj);
    if (!v10)
    {
      v32 = MBGetDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [MBError descriptionForError:*(*(a1[7] + 8) + 40)];
        *buf = 138412546;
        v49 = v3;
        v50 = 2112;
        v51 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "=encryption key= Error opening file to get encryption key %@: %@", buf, 0x16u);

        v39 = [MBError descriptionForError:*(*(a1[7] + 8) + 40)];
        _MBLog();
      }

      *(*(a1[6] + 8) + 24) = 0;
      v6 = 1;
      goto LABEL_24;
    }

    v11 = *(a1[7] + 8);
    v45 = *(v11 + 40);
    v12 = [v10 encryptionKeyWithError:&v45];
    objc_storeStrong((v11 + 40), v45);
    v13 = MBGetDefaultLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        v15 = [v12 length];
        *buf = 134218754;
        v49 = v15;
        v50 = 2048;
        v51 = st_ino;
        v52 = 2048;
        v53 = v8;
        v54 = 2112;
        v55 = v3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=encryption key= Found encryption key (size: %tu) for inode:%lld volumeType:%lu at %@", buf, 0x2Au);
        v40 = v8;
        v41 = v3;
        v36 = [v12 length];
        v37 = st_ino;
        _MBLog();
      }

      v16 = *(*(a1[8] + 8) + 40);
      if (v16)
      {
        goto LABEL_11;
      }

      v17 = *(a1[7] + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = 0;

      v19 = a1[4];
      v20 = a1[5];
      v21 = *(a1[7] + 8);
      v44 = *(v21 + 40);
      v22 = [v19 openCacheWithAccount:v20 accessType:1 error:&v44];
      objc_storeStrong((v21 + 40), v44);
      v23 = *(a1[8] + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      v16 = *(*(a1[8] + 8) + 40);
      if (v16)
      {
LABEL_11:
        v25 = [v16 setFileEncryptionKey:v12 forInodeNumber:st_ino volumeType:v8 atPath:{v3, v36, v37, v40, v41}];
        v26 = *(a1[7] + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = v25;

        if (*(*(a1[7] + 8) + 40))
        {
          v28 = MBGetDefaultLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = *(*(a1[7] + 8) + 40);
            *buf = 134218754;
            v49 = st_ino;
            v50 = 2048;
            v51 = v8;
            v52 = 2112;
            v53 = v3;
            v54 = 2112;
            v55 = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=encryption key= Failed to set encryption key for inode:%lld volumeType:%lu at %@: %@", buf, 0x2Au);
            v42 = *(*(a1[7] + 8) + 40);
            _MBLog();
          }

          *(*(a1[6] + 8) + 24) = 0;
        }

        v30 = 1;
        v31 = 9;
        v6 = 1;
        goto LABEL_23;
      }

      v30 = 0;
      v6 = 0;
    }

    else
    {
      if (v14)
      {
        v34 = [MBError descriptionForError:*(*(a1[7] + 8) + 40)];
        *buf = 134218754;
        v49 = st_ino;
        v50 = 2048;
        v51 = v8;
        v52 = 2112;
        v53 = v3;
        v54 = 2112;
        v55 = v34;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=encryption key= Error getting encryption key for inode:%lld volumeType:%lu at %@: %@", buf, 0x2Au);

        v43 = [MBError descriptionForError:*(*(a1[7] + 8) + 40)];
        _MBLog();
      }

      v30 = 0;
      v6 = 1;
    }

    v31 = 6;
LABEL_23:
    *(*(a1[v31] + 8) + 24) = v30;

LABEL_24:
    goto LABEL_25;
  }

  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *__error();
    *buf = 138412546;
    v49 = v3;
    v50 = 1024;
    LODWORD(v51) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=encryption key= Error getting inode number for %@: %{errno}d", buf, 0x12u);
    v38 = *__error();
    _MBLog();
  }

  *(*(a1[6] + 8) + 24) = 0;
  v6 = 1;
LABEL_25:

  return v6;
}

id MBFetchEncryptionKeyForFile(void *a1, void *a2, void *a3, void *a4, uint64_t *a5, __CFString **a6)
{
  v9 = a1;
  v100 = a2;
  v101 = a3;
  v102 = a4;
  v99 = v9;
  v10 = [v9 absolutePath];
  v103 = [MBEncryptionKeyReader encryptionKeyReaderForFileAtPath:v10 error:a6];

  v11 = v103;
  if (!v103)
  {
    v18 = 0;
    goto LABEL_67;
  }

  v106 = 0;
  v104 = v103;
  v12 = v9;
  v13 = v100;
  v92 = v101;
  v96 = v102;
  v14 = [v12 domain];
  v94 = [v14 name];

  v15 = [v12 domain];
  v91 = [v15 volumeMountPoint];

  v93 = [v12 absolutePath];
  v89 = [v12 inodeNumber];
  if (!v13)
  {
    goto LABEL_14;
  }

  v109 = 0;
  v16 = sub_10012DB9C(v13, v104, v96, &v109);
  v17 = v109;
  if (!v16)
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v13 length];
      *buf = 138413314;
      v113 = v94;
      v114 = 2112;
      v115 = v93;
      v116 = 2048;
      v117 = v89;
      v118 = 2048;
      v119 = v21;
      v120 = 2112;
      v121 = v17;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=encryption key= Could not validate existing encryption key for %@:%@ (inode:%llu) size:%llu: %@", buf, 0x34u);
      v83 = [v13 length];
      v85 = v17;
      v81 = v93;
      v82 = v89;
      v80 = v94;
      _MBLog();
    }

    v108 = 0;
    v18 = sub_10012DC5C(v13, v104, v96, &v108);
    v22 = v108;
    v23 = v22;
    if (v18)
    {

      v19 = 2;
      goto LABEL_10;
    }

    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [v13 length];
      *buf = 138413314;
      v113 = v94;
      v114 = 2112;
      v115 = v93;
      v116 = 2048;
      v117 = v89;
      v118 = 2048;
      v119 = v25;
      v120 = 2112;
      v121 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "=encryption key= Could not update existing encryption key for %@:%@ (inode:%llu) size:%llu: %@", buf, 0x34u);
      v83 = [v13 length];
      v85 = v23;
      v81 = v93;
      v82 = v89;
      v80 = v94;
      _MBLog();
    }

LABEL_14:
    v107 = 0;
    v26 = v92;
    v27 = v91;
    v28 = v104;
    v29 = v96;
    v87 = v26;
    v88 = v27;
    v30 = [v26 fetchEncryptionKeyForInode:v89 volumeMountPoint:v27 error:&v107];
    v31 = v30;
    if (v30)
    {
      if (sub_10012DB9C(v30, v28, v29, &v107))
      {
        v32 = v31;
      }

      else
      {
        v111 = 0;
        v33 = sub_10012DC5C(v31, v28, v29, &v111);
        v34 = v111;
        v35 = v34;
        if (v33)
        {
          v110 = v34;
          v36 = [v26 setFoundEncryptionKey:v33 forVolumeMountPoint:v88 inode:v89 error:&v110];
          v37 = v110;

          if (v36)
          {
            v38 = MBGetDefaultLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = [v31 length];
              *buf = 134218240;
              v113 = v89;
              v114 = 2048;
              v115 = v39;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "=encryption key= Updated key fetched from the missed encryption key DB (inode:%llu size:%llu)", buf, 0x16u);
              v80 = v89;
              v81 = [v31 length];
              _MBLog();
            }

            v32 = v33;
          }

          else
          {
            v43 = v37;
            v107 = v37;
            v44 = MBGetDefaultLog();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v45 = [v31 length];
              *buf = 134218498;
              v113 = v89;
              v114 = 2048;
              v115 = v45;
              v116 = 2112;
              v117 = v37;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "=encryption key= Failed to set updated encryption key in the missed encryption key DB (inode:%llu size:%llu): %@", buf, 0x20u);
              v81 = [v31 length];
              v82 = v37;
              v80 = v89;
              _MBLog();
            }

            v32 = 0;
          }

          v35 = v37;
        }

        else
        {
          v40 = v34;
          v107 = v35;
          v41 = MBGetDefaultLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = [v31 length];
            *buf = 134218498;
            v113 = v89;
            v114 = 2048;
            v115 = v42;
            v116 = 2112;
            v117 = v35;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "=encryption key= Failed to update key fetched from the missed encryption key DB (inode:%llu size:%llu): %@", buf, 0x20u);
            v81 = [v31 length];
            v82 = v35;
            v80 = v89;
            _MBLog();
          }

          v32 = 0;
        }
      }
    }

    else
    {
      v32 = 0;
    }

    v17 = v107;
    if (v32)
    {
      v18 = v32;
      v90 = 3;
    }

    else
    {
      v46 = MBGetDefaultLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v113 = v94;
        v114 = 2112;
        v115 = v93;
        v116 = 2048;
        v117 = v89;
        v118 = 2112;
        v119 = v17;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "=encryption key= Could not fetch encryption key for %@:%@ (inode:%llu) from the missed encryption key database: %@", buf, 0x2Au);
        v82 = v89;
        v83 = v17;
        v80 = v94;
        v81 = v93;
        _MBLog();
      }

      v110 = 0;
      v47 = v28;
      v48 = v12;
      v49 = v29;
      v111 = 0;
      v50 = [v47 encryptionKeyWithError:&v111];
      v51 = v111;
      v52 = v51;
      if (!v50 || v51)
      {
        +[MBError errorWithCode:error:format:](MBError, "errorWithCode:error:format:", 209, v51, @"Failed to fetch encryption key from MKB cache for inode:%llu", [v48 inodeNumber]);
        v110 = v18 = 0;
      }

      else if (sub_10012DD00(v50, v49, &v110))
      {
        v18 = v50;
      }

      else
      {
        v18 = 0;
      }

      v53 = v110;
      v54 = v53;
      if (v18)
      {
        v55 = v18;
        v90 = 4;
      }

      else
      {
        v56 = v53;
        v106 = v54;
        [v87 markMissedEncryptionKeyForVolume:v88 inode:v89 error:&v106];
        v90 = 0;
      }
    }

    goto LABEL_46;
  }

  v18 = v13;
  v19 = 1;
LABEL_10:
  v90 = v19;
LABEL_46:

  v57 = v106;
  if (v18)
  {
    v58 = MBGetDefaultLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = v58;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v98 = [v18 length];
        v60 = [v12 domain];
        v61 = [v12 absolutePath];
        v62 = [v12 inodeNumber];
        v63 = off_1003BF668[v90];
        *buf = 134219010;
        v113 = v98;
        v114 = 2112;
        v115 = v60;
        v116 = 2112;
        v117 = v61;
        v118 = 2048;
        v119 = v62;
        v120 = 2112;
        v121 = v63;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "=encryption key= Fetched encryption key with size:%llu for %@:%@ (inode:%llu) from %@", buf, 0x34u);
      }

      [v18 length];
      v64 = [v12 domain];
      v65 = [v12 absolutePath];
      [v12 inodeNumber];
      v86 = off_1003BF668[v90];
      _MBLog();
    }

    if (a5)
    {
      *a5 = v90;
    }

    v66 = v18;
  }

  else
  {
    v67 = MBGetDefaultLog();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v68 = v67;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v69 = [v12 domain];
        v70 = [v12 absolutePath];
        v71 = [v12 inodeNumber];
        v72 = [v12 birthDate];
        *buf = 138413314;
        v113 = v69;
        v114 = 2112;
        v115 = v70;
        v116 = 2048;
        v117 = v71;
        v118 = 2112;
        v119 = v72;
        v120 = 2112;
        v121 = v57;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "=encryption key= Failed to fetch encryption key for %@:%@ (inode:%llu, birth:%@): %@", buf, 0x34u);
      }

      v73 = [v12 domain];
      v74 = [v12 absolutePath];
      [v12 inodeNumber];
      v84 = [v12 birthDate];
      _MBLog();
    }

    if (a5)
    {
      *a5 = 0;
    }

    if (a6)
    {
      v75 = v57;
      *a6 = v57;
    }
  }

  v105 = 0;
  v76 = [v104 closeWithError:&v105];
  v77 = v105;
  if ((v76 & 1) == 0)
  {
    v78 = MBGetDefaultLog();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v113 = v77;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_FAULT, "=encryption key= Failed to close keybag file: %@", buf, 0xCu);
      _MBLog();
    }
  }

  v11 = v103;
LABEL_67:

  return v18;
}

void sub_10012DB38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

id sub_10012DB9C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if ([v8 validateEncryptionKey:v7 error:a4])
  {
    v10 = sub_10012DD00(v7, v9, a4);
  }

  else if (a4)
  {
    [MBError errorWithCode:209 format:@"Failed to validate existing encryption key"];
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_10012DC5C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v7 updatedEncryptionKeyForCurrentKey:a1 withError:a4];
  v10 = v9;
  if (v9 && sub_10012DB9C(v9, v7, v8, a4))
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_10012DD00(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MBKeybagUUIDForEncryptionKey(a1, a3);
  if (v6)
  {
    v7 = [MBCKKeyBag UUIDStringForKeyBagUUID:v6];
    v8 = [v5 keybagManager];
    v9 = [v8 hasKeybagWithUUID:v7];

    if ((v9 & 1) == 0)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "=encryption key= Device record does not contain keybagUUID %@", buf, 0xCu);
        _MBLog();
      }

      if (a3)
      {
        *a3 = [MBError errorWithCode:205 format:@"Device record does not contain keybagUUID %@", v6];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_10012DE70(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  memset(&v40, 0, 512);
  if (statfs([v5 fileSystemRepresentation], &v40))
  {
    v6 = [MBError errorWithErrno:*__error() path:v5 format:@"stat() failed"];
    v7 = v6;
LABEL_3:
    v8 = 0;
    goto LABEL_6;
  }

  v9 = fsgetpath(v39, 0x400uLL, &v40.f_fsid, a3);
  if (v9 < 0)
  {
    v6 = [MBError errorWithErrno:*__error() format:@"fsgetpath() failed"];
    v24 = v6;
    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *__error();
      *buf = 138412802;
      v34 = v5;
      v35 = 2048;
      v36 = a3;
      v37 = 1024;
      v38 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=encryption key= fsgetpath() failed for volume %@ inode %llu: %{errno}d", buf, 0x1Cu);
      v28 = *__error();
      _MBLog();
    }

    goto LABEL_3;
  }

  v8 = [[NSString alloc] initWithBytes:v39 length:v9 - 1 encoding:4];
  v6 = 0;
LABEL_6:

  v10 = v6;
  v11 = v10;
  if (v8)
  {
    v31 = v10;
    v12 = [MBEncryptionKeyReader encryptionKeyReaderForFileAtPath:v8 error:&v31];
    v13 = v31;

    if (!v12)
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v40.f_bsize = 138412802;
        *&v40.f_iosize = v8;
        WORD2(v40.f_blocks) = 2048;
        *(&v40.f_blocks + 6) = a3;
        HIWORD(v40.f_bfree) = 2112;
        v40.f_bavail = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=encryption key= Failed to create encryption key reader for %@ (inode:%llu): %@", &v40, 0x20u);
        _MBLog();
      }

      goto LABEL_31;
    }

    v30 = v13;
    v14 = [v12 encryptionKeyWithError:&v30];
    v15 = v30;

    [v12 closeWithError:0];
    if (!v14)
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v40.f_bsize = 138412802;
        *&v40.f_iosize = v8;
        WORD2(v40.f_blocks) = 2048;
        *(&v40.f_blocks + 6) = a3;
        HIWORD(v40.f_bfree) = 2112;
        v40.f_bavail = v15;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "=encryption key= Failed to fetch encryption key for %@ (inode:%llu): %@", &v40, 0x20u);
        _MBLog();
      }

      goto LABEL_30;
    }

    v16 = [v14 length];
    v17 = a1[4];
    v29 = v15;
    v18 = [v17 setFoundEncryptionKey:v14 forVolumeMountPoint:v5 inode:a3 error:&v29];
    v19 = v29;

    if (v18)
    {
      ++*(*(a1[6] + 8) + 24);
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v40.f_bsize = 134218754;
        *&v40.f_iosize = v16;
        WORD2(v40.f_blocks) = 2112;
        *(&v40.f_blocks + 6) = v5;
        HIWORD(v40.f_bfree) = 2048;
        v40.f_bavail = a3;
        LOWORD(v40.f_files) = 2112;
        *(&v40.f_files + 2) = v8;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=encryption key= Found encryption key with size %lu for %@:%llu with resolved path %@", &v40, 0x2Au);
LABEL_28:
        _MBLog();
      }
    }

    else
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v40.f_bsize = 134218498;
        *&v40.f_iosize = v16;
        WORD2(v40.f_blocks) = 2112;
        *(&v40.f_blocks + 6) = v5;
        HIWORD(v40.f_bfree) = 2048;
        v40.f_bavail = a3;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "=encryption key= Failed to set found encryption key with size %lu for %@:%llu", &v40, 0x20u);
        goto LABEL_28;
      }
    }

    v15 = v19;
LABEL_30:

    v13 = v15;
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }

  if (v10)
  {
    if (![MBError isError:v10 withCode:4])
    {
      v13 = v11;
      goto LABEL_33;
    }

    v21 = a1[4];
    v32 = v11;
    v22 = [v21 removeMissedEncryptionKeysForVolume:v5 inode:a3 error:&v32];
    v13 = v32;

    v23 = MBGetDefaultLog();
    v12 = v23;
    if ((v22 & 1) == 0)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v40.f_bsize = 138412290;
        *&v40.f_iosize = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "=encryption key= Failed to remove missed encryption key: %@", &v40, 0xCu);
        _MBLog();
      }

      goto LABEL_32;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v40.f_bsize = 138412546;
      *&v40.f_iosize = v5;
      WORD2(v40.f_blocks) = 2048;
      *(&v40.f_blocks + 6) = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "=encryption key= Not fetching encryption key file no longer on disk %@:%llu", &v40, 0x16u);
      _MBLog();
    }

    ++*(*(a1[5] + 8) + 24);
  }

  else
  {
    v13 = 0;
  }

LABEL_33:

  return 1;
}

id _MBAssert(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_10012F2EC(a1, a2, &a9);

  return v9;
}

id sub_10012F2EC(char a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_10012F378(a2, a3);
  }

  return v4;
}

id sub_10012F338(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_10012F378(a1, &a9);

  return v9;
}

id sub_10012F378(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [[NSString alloc] initWithFormat:v3 arguments:a2];

  v5 = [MBError errorWithCode:1 description:v4];

  return v5;
}

BOOL sub_10012F400(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = sub_10012F2EC(a1, a3, &a9);
  if (a2 && v10)
  {
    v10 = v10;
    *a2 = v10;
  }

  v11 = v10 == 0;

  return v11;
}

id MBAllCKPlugins()
{
  v0 = +[NSMutableArray array];
  v1 = objc_alloc_init(MBAccountsPlugin);
  [v0 addObject:v1];

  v2 = objc_alloc_init(MBAppleCarePlugin);
  [v0 addObject:v2];

  v3 = objc_alloc_init(MBDataMigratorPlugin);
  [v0 addObject:v3];

  v4 = objc_alloc_init(MBiTunesStorePlugin);
  [v0 addObject:v4];

  v5 = objc_alloc_init(MBKeychainPlugin);
  [v0 addObject:v5];

  v6 = objc_alloc_init(MBLockdownPlugin);
  [v0 addObject:v6];

  v7 = objc_alloc_init(MBCKATCBundlesPlugin);
  [v0 addObject:v7];

  v8 = objc_alloc_init(MBWiFiPlugin);
  [v0 addObject:v8];

  v9 = objc_alloc_init(MBBooksPlugin);
  [v0 addObject:v9];

  v10 = objc_alloc_init(MBCameraRollPlugin);
  [v0 addObject:v10];

  v11 = objc_alloc_init(MBManateePlugin);
  [v0 addObject:v11];

  v12 = [v0 mutableCopy];
  v13 = objc_alloc_init(MBCKSQLiteCopyPlugin);
  [v12 addObject:v13];

  v14 = objc_alloc_init(MBCKAnalysisPlugin);
  [v12 addObject:v14];

  v15 = objc_alloc_init(MBRestoreAppsPlugin);
  [v12 addObject:v15];

  v16 = objc_alloc_init(MBiCloudDrivePlugin);
  [v12 addObject:v16];

  v17 = objc_alloc_init(MBFileProviderPlugin);
  [v12 addObject:v17];

  return v12;
}

void sub_100130868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10013088C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAccountChangeNotification:v3];
}

void sub_100130A6C(id a1, NSString *a2, MBCKContainer *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetching the CK account status for persona:%{public}@", buf, 0xCu);
    _MBLog();
  }

  v8 = [(MBCKContainer *)v6 ckContainer];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100130BC0;
  v10[3] = &unk_1003BF708;
  v11 = v5;
  v9 = v5;
  [v8 accountStatusWithCompletionHandler:v10];
}

void sub_100130BC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138543874;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetched the CK account status for persona:%{public}@ (%ld): %@", buf, 0x20u);
    v9 = *(a1 + 32);
    _MBLog();
  }

  if (a2 == 1)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"MBAccountAvailableNotification" object:0];
  }
}

void sub_100130FF8(id a1)
{
  v1 = +[CKRecordZone defaultRecordZone];
  v2 = [v1 zoneID];
  v3 = qword_1004217C8;
  qword_1004217C8 = v2;

  if (!qword_1004217C8)
  {
    __assert_rtn("+[MBCKDatabaseManager defaultZoneID]_block_invoke", "MBCKDatabaseManager.m", 196, "sDefaultZoneID");
  }
}

void sub_1001310C0(id a1)
{
  v1 = [[CKRecordZoneID alloc] initWithZoneName:@"mbksync" ownerName:CKCurrentUserDefaultName];
  v2 = qword_1004217D8;
  qword_1004217D8 = v1;

  if (!qword_1004217D8)
  {
    __assert_rtn("+[MBCKDatabaseManager syncZoneID]_block_invoke", "MBCKDatabaseManager.m", 206, "sSyncZoneID");
  }
}

uint64_t sub_100131808(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100131820(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([MBError isCKError:v6 withCode:2])
  {
    v7 = [v6 userInfo];
    v8 = [v7 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
    v9 = [v8 objectForKeyedSubscript:*(a1 + 32)];
  }

  else
  {
    v9 = 0;
  }

  if ([MBError isCKNotFoundError:v6]|| [MBError isCKNotFoundError:v9])
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138543362;
      v33 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sync zone %{public}@ doesn't exist - creating a new one", buf, 0xCu);
      v26 = *(a1 + 32);
      _MBLog();
    }

    v12 = [[CKRecordZone alloc] initWithZoneID:*(a1 + 32)];
    v13 = [CKModifyRecordZonesOperation alloc];
    v36 = v12;
    v14 = [NSArray arrayWithObjects:&v36 count:1];
    v15 = [v13 initWithRecordZonesToSave:v14 recordZoneIDsToDelete:0];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100131BF0;
    v28[3] = &unk_1003BF770;
    v16 = *(a1 + 32);
    v17 = *(a1 + 96);
    v29 = v16;
    v31 = v17;
    v30 = *(a1 + 40);
    [v15 setModifyRecordZonesCompletionBlock:v28];
    [*(a1 + 48) _configureCKOperation:v15 container:*(a1 + 56) policy:*(a1 + 64) operationGroup:*(a1 + 72) xpcActivity:*(a1 + 80)];
    [*(a1 + 88) addOperation:v15];
  }

  else
  {
    v18 = MBGetDefaultLog();
    v19 = v18;
    if (v6)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 32);
        *buf = 138543618;
        v33 = v20;
        v34 = 2112;
        v35 = v6;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to fetch sync zone %{public}@: %@", buf, 0x16u);
        v27 = *(a1 + 32);
        _MBLog();
      }

      v21 = *(*(a1 + 96) + 8);
      v22 = v6;
      v19 = *(v21 + 40);
      *(v21 + 40) = v22;
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 32);
      v24 = [v5 objectForKeyedSubscript:v23];
      *buf = 138543618;
      v33 = v23;
      v34 = 2048;
      v35 = [v24 capabilities];
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Sync zone %{public}@ already exists, capabilities:0x%lx", buf, 0x16u);

      v25 = [v5 objectForKeyedSubscript:*(a1 + 32)];
      [v25 capabilities];
      _MBLog();
    }

    dispatch_group_leave(*(a1 + 40));
  }
}

void sub_100131BF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = MBGetDefaultLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to create sync zone %{public}@: %@", buf, 0x16u);
      v12 = *(a1 + 32);
      _MBLog();
    }

    v9 = *(*(a1 + 48) + 8);
    v10 = v5;
    v7 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 138543362;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Created sync zone %{public}@", buf, 0xCu);
    v13 = *(a1 + 32);
    _MBLog();
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100131D5C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1[7] + 8) + 40);
  v4 = a1[4];
  v5 = objc_opt_class();
  v6 = a1[5];
  if (v3)
  {
    [v5 _clearSyncZoneFetchedWithAccount:v6];
  }

  else
  {
    [v5 _cacheSyncZoneFetchedWithAccount:v6];
  }

  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, *(*(a1[7] + 8) + 40));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100132310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100132334(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = v9;
  v11 = [v9 domain];
  if (![v11 isEqualToString:CKErrorDomain])
  {

    goto LABEL_19;
  }

  v12 = [v10 code];

  if (v12 != 2)
  {
    goto LABEL_19;
  }

  v31 = v8;
  v32 = a1;
  v33 = v7;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 32);
  v13 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (!v13)
  {
    v15 = 0;
    goto LABEL_23;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v36;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v36 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v35 + 1) + 8 * i);
      v19 = [v10 userInfo];
      v20 = [v19 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v21 = [v20 objectForKeyedSubscript:v18];

      v22 = [v21 domain];
      if (![v22 isEqualToString:CKErrorDomain])
      {

        goto LABEL_15;
      }

      if ([v21 code] == 26)
      {
      }

      else
      {
        v23 = [v21 code];

        if (v23 != 11)
        {
          goto LABEL_15;
        }
      }

      ++v15;
LABEL_15:
    }

    v14 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  }

  while (v14);
LABEL_23:

  a1 = v32;
  v29 = v15 == [*(v32 + 32) count];
  v7 = v33;
  v8 = v31;
  if (!v29)
  {
LABEL_19:
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 40);
      *buf = 138543618;
      v40 = v25;
      v41 = 2114;
      v42 = v10;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Operation %{public}@ failed to delete all CK zones: %{public}@", buf, 0x16u);
      v30 = *(a1 + 40);
      _MBLog();
    }

    v26 = *(*(a1 + 56) + 8);
    v27 = v10;
    v28 = *(v26 + 40);
    *(v26 + 40) = v27;
    goto LABEL_29;
  }

LABEL_26:
  v28 = MBGetDefaultLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v40 = v8;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Successfully deleted CK zones: %{public}@", buf, 0xCu);
    _MBLog();
  }

  v27 = 0;
LABEL_29:

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10013393C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100133988(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 48;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1001340F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_100134144(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_10013440C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _makeContainerForAccount:*(a1 + 40)];
  if (v3)
  {
    v4 = +[MBCKOperationPolicy expensiveCellularPolicy];
    v5 = [v4 operationGroupWithName:@"fetchConfiguration" processName:0];
    [*(a1 + 48) loadConfigurationWithContainer:v3 databaseManager:*(a1 + 32) policy:v4 operationGroup:v5 completion:*(a1 + 56)];
  }

  else
  {
    v4 = [MBError errorWithCode:1 format:@"nil container"];
    (*(*(a1 + 56) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

id MBPerformWithCache(uint64_t a1)
{
  v2 = [+[MBSCachePool sharedPool](MBSCachePool "sharedPool")];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10013581C;
  v4[3] = &unk_1003BF860;
  v4[4] = v2;
  v4[5] = a1;
  sub_1001357AC(v4);
  return [+[MBSCachePool sharedPool](MBSCachePool "sharedPool")];
}

void sub_1001357AC(void *a1)
{
  if (qword_100421800 != -1)
  {
    dispatch_once(&qword_100421800, &stru_1003BF918);
  }

  v2 = qword_1004217F8;
  dispatch_assert_queue_not_V2(qword_1004217F8);

  dispatch_sync(v2, a1);
}

id sub_10013581C(uint64_t a1)
{
  [*(a1 + 32) begin];
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);

  return [v3 end];
}

void sub_100135ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100135B18(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) count])
  {
    *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:0];
    [*(*(a1 + 32) + 8) removeObjectAtIndex:0];
    v2 = MBGetDefaultLog();
    result = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    v4 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 134217984;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Re-using cache from pool: %p", buf, 0xCu);
    v6 = *(*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    v5 = MBGetDefaultLog();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Cache pool is empty", buf, 2u);
  }

  return _MBLog();
}

id sub_100135CE8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) count];
  v3 = MBGetDefaultLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2 > 7)
  {
    if (v4)
    {
      v7 = *(a1 + 40);
      *buf = 134217984;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Not adding to cache because pool is full: %p", buf, 0xCu);
      v8 = *(a1 + 40);
      _MBLog();
    }

    return [*(a1 + 32) _closeCache:{*(a1 + 40), v8}];
  }

  else
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      *buf = 134217984;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Adding cache to pool: %p", buf, 0xCu);
      v8 = *(a1 + 40);
      _MBLog();
    }

    [*(*(a1 + 32) + 8) addObject:{*(a1 + 40), v8}];

    return [*(a1 + 32) _scheduleDrain];
  }
}

id sub_100135FAC(uint64_t a1)
{
  [*(a1 + 32) open];
  v2 = [MBAppManager appManagerWithSettingsContext:objc_alloc_init(MBSettingsContext)];
  v6 = 0;
  v3 = [MBPersona personalPersonaWithError:&v6];
  if (!v3)
  {
    __assert_rtn("[MBSCachePool _openCache]_block_invoke", "MBSCachePool.m", 138, "personalPersona");
  }

  if (![(MBAppManager *)v2 loadAppsWithPersona:v3 safeHarbors:0 error:&v6])
  {
    v5 = [MBException alloc];
    objc_exception_throw([v5 initWithCode:1 format:{@"Error loading apps: %@", +[MBError descriptionForError:](MBError, "descriptionForError:", v6)}]);
  }

  return [*(a1 + 32) setDisabledDomainNames:-[MBAppManager allDisabledDomainNames](v2 restrictedDomainNames:{"allDisabledDomainNames"), -[MBAppManager allRestrictedDomainNames](v2, "allRestrictedDomainNames")}];
}

id MBKeybagUUIDForEncryptionKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = MKBBackupCopyBackupKeyUUID();
  if (v4)
  {
    v5 = v4;
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Failed to get UUID from encryption key %@", buf, 0xCu);
      _MBLog();
    }

    if (a2)
    {
      *a2 = [MBKeyBag errorWithReturnCode:v5 description:@"MKBBackupCopyBackupKeyUUID error"];
    }
  }

  return 0;
}

MBError *MBNotifyPluginsBlock(void *a1, void *a2, SEL sel, uint64_t a4)
{
  Name = sel_getName(sel);
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v46 = Name;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Starting to notify plugins of %{public}s", buf, 0xCu);
    v33 = Name;
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v8 = v7;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = [a2 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v42;
    v37 = *v42;
    while (2)
    {
      v13 = 0;
      v38 = v10;
      do
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(a2);
        }

        v14 = *(*(&v41 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        if ([a1 isCanceled])
        {
          *&v22 = COERCE_DOUBLE([MBError errorWithCode:202 description:@"Canceled"]);
LABEL_24:
          objc_autoreleasePoolPop(v15);
          goto LABEL_25;
        }

        if (objc_opt_respondsToSelector())
        {
          v16 = a1;
          v17 = objc_opt_class();
          v18 = class_getName(v17);
          v19 = MBGetDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 136446466;
            v46 = v18;
            v47 = 2082;
            v48 = Name;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Notifying %{public}s of %{public}s", buf, 0x16u);
            v34 = v18;
            v35 = Name;
            _MBLog();
          }

          [NSDate timeIntervalSinceReferenceDate:v34];
          v21 = v20;
          *&v22 = COERCE_DOUBLE((*(a4 + 16))(a4, v14));
          +[NSDate timeIntervalSinceReferenceDate];
          if (*&v22 != 0.0)
          {
            v27 = v22;
            v28 = MBGetDefaultLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v46 = v18;
              v47 = 2082;
              v48 = Name;
              v49 = 2112;
              v50 = *&v22;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to notify %{public}s of %{public}s: %@", buf, 0x20u);
              v35 = Name;
              v36 = *&v22;
              v34 = v18;
              _MBLog();
            }

            goto LABEL_24;
          }

          v24 = v23;
          v25 = MBGetDefaultLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = v24 - v21;
            *buf = 136446722;
            v46 = v18;
            v47 = 2082;
            v48 = Name;
            v49 = 2048;
            v50 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Notified %{public}s of %{public}s in %0.3fs", buf, 0x20u);
            v36 = v26;
            v34 = v18;
            v35 = Name;
            _MBLog();
          }

          ++v11;
          a1 = v16;
          v12 = v37;
          v10 = v38;
        }

        objc_autoreleasePoolPop(v15);
        v13 = v13 + 1;
      }

      while (v10 != v13);
      v10 = [a2 countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  *&v22 = 0.0;
LABEL_25:
  [NSDate timeIntervalSinceReferenceDate:v34];
  v30 = v29;
  v31 = MBGetDefaultLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v46 = v11;
    v47 = 2082;
    v48 = Name;
    v49 = 2048;
    v50 = v30 - v8;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Notified %lu plugins of %{public}s in %0.3fs", buf, 0x20u);
    _MBLog();
  }

  return v22;
}

MBError *MBNotifyPlugins(void *a1, void *a2, const char *a3, uint64_t a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100137B50;
  v5[3] = &unk_1003BF940;
  v5[4] = a4;
  v5[5] = a3;
  return MBNotifyPluginsBlock(a1, a2, a3, v5);
}

void sub_100138194(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (xpc_activity_get_state(v3))
    {
      if (xpc_activity_should_defer(v3))
      {
        v5 = xpc_activity_set_state(v3, 3);
        v6 = MBGetDefaultLog();
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        if (v5)
        {
          if (v7)
          {
            v8 = *(a1 + 32);
            *buf = 138412290;
            v41 = v8;
            v32 = *(a1 + 32);
LABEL_19:
            _MBLog();
            goto LABEL_29;
          }
        }

        else if (v7)
        {
          v22 = *(a1 + 32);
          *buf = 138412290;
          v41 = v22;
          v36 = *(a1 + 32);
          goto LABEL_19;
        }

        goto LABEL_29;
      }

      state = xpc_activity_get_state(v3);
      v6 = xpc_activity_copy_criteria(v3);
      if (state == 2)
      {
        v15 = xpc_activity_set_state(v3, 5);
        v16 = *(a1 + 32);
        v17 = +[NSUUID UUID];
        v18 = [v17 UUIDString];
        v12 = [NSString stringWithFormat:@"%@-%@", v16, v18];

        [v12 UTF8String];
        v19 = os_transaction_create();
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 32);
          *buf = 138412546;
          v41 = v21;
          v42 = 1024;
          LODWORD(v43) = v15;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "MBXPCTimer triggered. Updating to done so that it can be cleaned. success : %@ : %d", buf, 0x12u);
          v35 = *(a1 + 32);
          _MBLog();
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40), WeakRetained);
        goto LABEL_28;
      }

      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        *buf = 138412802;
        v41 = v23;
        v42 = 2048;
        v43 = state;
        v44 = 2048;
        v45 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MBXPCTimer %@ changed to state %ld with criteria %p", buf, 0x20u);
        v37 = *(a1 + 32);
        goto LABEL_22;
      }
    }

    else
    {
      [WeakRetained setActivity:v3];
      v6 = xpc_activity_copy_criteria(v3);
      if (!v6)
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(a1 + 32);
          v26 = [WeakRetained criteria];
          *buf = 138412546;
          v41 = v25;
          v42 = 2112;
          v43 = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "MBXPCTimer Check-in: %@, with criteria: %@", buf, 0x16u);

          v27 = *(a1 + 32);
          v38 = [WeakRetained criteria];
          _MBLog();
        }

        v12 = [WeakRetained criteria];
        xpc_activity_set_criteria(v3, v12);
        goto LABEL_28;
      }

      v10 = [WeakRetained criteria];
      v11 = xpc_equal(v10, v6);

      if (!v11)
      {
        v28 = [WeakRetained criteria];
        xpc_activity_set_criteria(v3, v28);

        v12 = MBGetDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(a1 + 32);
          v30 = [WeakRetained criteria];
          *buf = 138412546;
          v41 = v29;
          v42 = 2112;
          v43 = v30;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MBXPCTimer Check-in: %@, with updating criteria: %@", buf, 0x16u);

          v31 = *(a1 + 32);
          v39 = [WeakRetained criteria];
          _MBLog();
        }

        goto LABEL_28;
      }

      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        *buf = 138412546;
        v41 = v13;
        v42 = 2112;
        v43 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MBXPCTimer Check-in: %@, with existing criteria: %@", buf, 0x16u);
        v34 = *(a1 + 32);
LABEL_22:
        _MBLog();
      }
    }

LABEL_28:

    goto LABEL_29;
  }

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138412290;
    v41 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Self not available anymore for - %@", buf, 0xCu);
    v33 = *(a1 + 32);
    goto LABEL_19;
  }

LABEL_29:
}

void sub_10013B054(id a1)
{
  qword_100421808 = objc_alloc_init(MBTapToRadar);

  _objc_release_x1();
}

id sub_10013B420(uint64_t a1)
{
  if ([*(a1 + 32) _presentTTRConsentRequestOnMainThread:*(a1 + 40) message:*(a1 + 48) persona:*(a1 + 56) selector:*(a1 + 72) delayBetweenNags:*(a1 + 80)] - 5 <= 1)
  {
    (*(*(a1 + 64) + 16))();
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 72);

  return [v2 _endPresenting:v3];
}

void sub_10013B798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013B7B8(uint64_t a1)
{
  result = [*(a1 + 32) _presentTTRConsentRequestOnMainThread:*(a1 + 40) message:*(a1 + 48) persona:*(a1 + 56) selector:*(a1 + 80) delayBetweenNags:*(a1 + 88)];
  *(*(*(a1 + 72) + 8) + 24) = result;
  if ((*(*(*(a1 + 72) + 8) + 24) - 5) <= 1)
  {
    v3 = *(*(a1 + 64) + 16);

    return v3();
  }

  return result;
}

void sub_10013C330(uint64_t a1)
{
  v3 = [NSDate _durationDescription:*(a1 + 40)];
  v2 = [NSString stringWithFormat:@"iCloud Restore has been running for %@", v3];
  [*(a1 + 32) _fileTTR:@"iCloud Restore is taking more than 48h" description:v2 keywordID:0 attachment:0];
}

void sub_10013C77C(void *a1)
{
  v2 = a1[4];
  v3 = [NSString stringWithFormat:@"Background restore failed to restore domains:\n%@", a1[5]];
  [v2 _fileTTR:@"Background Restore Failure" description:v3 keywordID:0 attachment:a1[6]];
}

uint64_t sub_10013CBBC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = *(a1 + 32);
  v12 = a5;
  v13 = a4;
  v14 = a3;
  [v11 addObject:v13];
  v15 = +[NSMutableDictionary dictionary];
  v16 = [MBError dictionaryRepresentationForError:v14 withMultiErrors:1];

  [v15 setObject:v16 forKeyedSubscript:@"failure"];
  if (a2 == 1)
  {
    [v15 setObject:0 forKeyedSubscript:@"count"];
  }

  else
  {
    v17 = [NSNumber numberWithUnsignedInteger:a2];
    [v15 setObject:v17 forKeyedSubscript:@"count"];
  }

  [v15 setObject:v13 forKeyedSubscript:@"domainName"];

  [v15 setObject:v12 forKeyedSubscript:@"rpath"];
  if (a6)
  {
    v18 = [NSNumber numberWithUnsignedLongLong:a6];
    [v15 setObject:v18 forKeyedSubscript:@"inode"];
  }

  else
  {
    [v15 setObject:0 forKeyedSubscript:@"inode"];
  }

  [*(a1 + 40) addObject:v15];

  return 1;
}

BOOL WriteKeychainToDisk(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  if (!v4)
  {
    __assert_rtn("WriteKeychainToDisk", "MBKeychainPlugin.m", 48, "path");
  }

  if (!v3)
  {
    __assert_rtn("WriteKeychainToDisk", "MBKeychainPlugin.m", 49, "errorPtr");
  }

  v5 = v4;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v53 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Saving keychain data to %@", buf, 0xCu);
    _MBLog();
  }

  v7 = +[NSDate now];
  v8 = [v5 stringByAppendingString:@".tmp"];
  v9 = v8;
  v10 = [v8 fileSystemRepresentation];
  v11 = open_dprotected_np(v10, 1538, 1, 0, 256);
  if (v11 < 0)
  {
    *v3 = [MBError errorWithErrno:*__error() path:v8 format:@"Error writing keychain temp file (open_dprotected_np)"];
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *v3;
      *buf = 138412290;
      *v53 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "open_dprotected_np failed: %@", buf, 0xCu);
      v42 = *v3;
      _MBLog();
    }

LABEL_28:

    v27 = v11 >= 0;
    goto LABEL_30;
  }

  unlink(v10);
  if ((_SecKeychainWriteBackupToFileDescriptor() & 1) == 0)
  {
    v19 = [0 domain];
    if ([v19 isEqualToString:NSOSStatusErrorDomain])
    {
      v20 = [0 code] == -36;

      if (v20)
      {
        v21 = 106;
      }

      else
      {
        v21 = 100;
      }
    }

    else
    {

      v21 = 100;
    }

    *v3 = [MBError errorWithCode:v21 error:0 path:v8 format:@"Error writing keychain temp file"];
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v22 = *v3;
      *buf = 138412290;
      *v53 = v22;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "_SecKeychainWriteBackupToFileDescriptor failed: %@", buf, 0xCu);
      v43 = *v3;
      _MBLog();
    }

    goto LABEL_24;
  }

  [v7 timeIntervalSinceNow];
  v13 = v12;
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *v53 = v11;
    *&v53[4] = 2048;
    *&v53[6] = -v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Wrote keychain data to anonymous fd (%d) in %.3fs", buf, 0x12u);
    _MBLog();
  }

  if (lseek(v11, 0, 2) <= 0)
  {
    *v3 = [MBError errorWithErrno:*__error() path:v8 format:@"Keychain temp file contains no data"];
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v23 = *v3;
      *buf = 138412290;
      *v53 = v23;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "_SecKeychainWriteBackupToFileDescriptor wrote no data: %@", buf, 0xCu);
      v44 = *v3;
      _MBLog();
    }

    goto LABEL_24;
  }

  if (lseek(v11, 0, 0))
  {
    *v3 = [MBError errorWithErrno:*__error() path:v8 format:@"lseek error"];
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *v3;
      *buf = 138412290;
      *v53 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to seek to the beginning of the temp file: %@", buf, 0xCu);
      v41 = *v3;
      _MBLog();
    }

LABEL_24:

    v24 = 0;
    goto LABEL_25;
  }

  v29 = v5;
  v30 = [v5 fileSystemRepresentation];
  v31 = open_dprotected_np(v30, 1537, 1, 0, 256);
  if (v31 <= 0)
  {
    *v3 = [MBError errorWithErrno:*__error() path:v5 format:@"Error opening keychain backup (open_dprotected_np)"];
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v36 = *v3;
      *buf = 138412290;
      *v53 = v36;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "open_dprotected_np failed: %@", buf, 0xCu);
      v45 = *v3;
      _MBLog();
    }

    goto LABEL_24;
  }

  bzero(buf, 0x1000uLL);
  do
  {
    v32 = read(v11, buf, 0x1000uLL);
    if (v32 < 0)
    {
      *v3 = [MBError errorWithErrno:*__error() path:v8 format:@"failed reading keychain temp FD"];
      v37 = MBGetDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = *v3;
        *v48 = 138412290;
        *v49 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "reading keychain temp FD failed: %@", v48, 0xCu);
        v46 = *v3;
        _MBLog();
      }

      goto LABEL_49;
    }

    if (write(v31, buf, v32) < 0)
    {
      *v3 = [MBError errorWithErrno:*__error() path:v5 format:@"failed writing keychain backup file"];
      v39 = MBGetDefaultLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = *v3;
        *v48 = 138412290;
        *v49 = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "writing keychain backup file failed: %@", v48, 0xCu);
        v47 = *v3;
        _MBLog();
      }

      unlink(v30);
LABEL_49:
      v24 = 0;
      goto LABEL_50;
    }
  }

  while (v32);
  v33 = MBGetDefaultLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = v33;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      [v7 timeIntervalSinceNow];
      *v48 = 67109634;
      *v49 = v11;
      *&v49[4] = 2112;
      *&v49[6] = v5;
      v50 = 2048;
      v51 = v13 - v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Copied keychain data from anonymous fd (%d) to %@ in %.3fs", v48, 0x1Cu);
    }

    [v7 timeIntervalSinceNow];
    _MBLog();
  }

  v24 = 1;
LABEL_50:
  close(v31);
LABEL_25:

  close(v11);
  if (v24)
  {
    [v7 timeIntervalSinceNow];
    v26 = v25;
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v53 = v5;
      *&v53[8] = 2048;
      *&v53[10] = -v26;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Exported keychain data to %@ in %.3fs", buf, 0x16u);
      _MBLog();
    }

    goto LABEL_28;
  }

  v27 = 0;
LABEL_30:

  return v27;
}

void sub_10013F894(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x10013F834);
  }

  _Unwind_Resume(exception_object);
}

BOOL RestoreKeychainFromDisk(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1;
  if (!v6)
  {
    __assert_rtn("RestoreKeychainFromDisk", "MBKeychainPlugin.m", 148, "path");
  }

  if (!a2)
  {
    __assert_rtn("RestoreKeychainFromDisk", "MBKeychainPlugin.m", 149, "keybagData");
  }

  if (!a4)
  {
    __assert_rtn("RestoreKeychainFromDisk", "MBKeychainPlugin.m", 150, "errorPtr");
  }

  v7 = v6;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v34 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Restoring keychain backup at %@", buf, 0xCu);
    v28 = v7;
    _MBLog();
  }

  v32 = 0;
  v9 = [MBKeychain allPasswordItemsForServices:&off_1003E2288 error:&v32];
  v10 = v32;
  v11 = MBGetDefaultLog();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v9 count];
      v14 = MBStringWithArray();
      *buf = 67109378;
      *v34 = v13;
      *&v34[4] = 2112;
      *&v34[6] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Preserving %d keychain items: %@", buf, 0x12u);

      v15 = [v9 count];
      MBStringWithArray();
      v29 = v28 = v15;
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *v34 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to fetch keychain items: %@", buf, 0xCu);
    v28 = v10;
    _MBLog();
  }

  v31 = 0;
  v16 = [MBProtectionClassUtils getWithPath:v7 error:&v31];
  v17 = v31;
  if (v16 == 1)
  {
    v18 = [NSFileHandle fileHandleForReadingAtPath:v7];
    v19 = v18;
    v20 = v18 != 0;
    if (v18)
    {
      v30[1] = 0;
      [v18 fileDescriptor];
      v21 = _SecKeychainRestoreBackupFromFileDescriptor();

      if ((v21 & 1) == 0)
      {
        v22 = MBGetDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *v34 = v7;
          *&v34[8] = 2112;
          *&v34[10] = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to restore keychain from %@: %@", buf, 0x16u);
          v28 = v7;
          v29 = 0;
          _MBLog();
        }

        *a4 = 0;
      }

      if ([v9 count])
      {
        v30[0] = 0;
        v23 = [MBKeychain addAllPasswordItems:v9 error:v30];
        v17 = v30[0];

        v24 = MBGetDefaultLog();
        v25 = v24;
        if (v23)
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v9 count];
            *buf = 67109120;
            *v34 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Added %d preserved keychain items to restored keychain", buf, 8u);
            [v9 count];
LABEL_29:
            _MBLog();
          }
        }

        else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v34 = v17;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to add preserved password items to keychain: %@", buf, 0xCu);
          goto LABEL_29;
        }

        goto LABEL_31;
      }

      v17 = 0;
    }

    else
    {
      *a4 = [MBError errorWithCode:101 path:v7 format:@"Error reading keychain backup"];
    }

LABEL_31:

    goto LABEL_32;
  }

  if (v16 == 255)
  {
    [MBError errorWithCode:101 error:v17 path:v7 format:@"Error getting keychain backup protection class"];
  }

  else
  {
    [MBError errorWithCode:1 path:v7 format:@"Unexpected keychain backup protection class: %d", v16];
  }

  *a4 = v20 = 0;
LABEL_32:

  return v20;
}

void sub_100140598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001405D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001405E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [MBKeychainPlugin exportKeychainForCKBackupEngine:v2 error:&v6];
  v4 = v6;
  v5 = v6;
  if ((v3 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t MBBuildBackupCKRecordsDB(void *a1, void *a2, void *a3, void *a4)
{
  v52 = a1;
  v56 = a2;
  v7 = a3;
  if (!a4)
  {
    __assert_rtn("MBBuildBackupCKRecordsDB", "MBBuildBackupCKRecordsDB.m", 134, "error");
  }

  v51 = v7;
  v53 = a4;
  v57 = [MBBackupCKRecordsDB openDatabaseIn:"openDatabaseIn:readOnly:error:" readOnly:? error:?];
  if (v57)
  {
    v8 = 1;
    v9 = a4;
    goto LABEL_4;
  }

  v10 = a4;
  if (!v56)
  {
    v11 = v52;
    v12 = +[MBCKOperationPolicy expensiveCellularPolicy];
    [v12 setFetchAssets:0];
    v13 = +[MBCKManager sharedInstance];
    v14 = [v13 databaseManager];
    v15 = [MBCKOperationTracker operationTrackerWithAccount:v11 databaseManager:v14 policy:v12 error:v53];

    if (!v15)
    {

      v56 = 0;
      v57 = 0;
      goto LABEL_44;
    }

    v16 = [v12 operationGroupWithName:@"fetchRecordsForCurrentDevice" processName:0];
    [v15 setCkOperationGroup:v16];

    v56 = v15;
    v10 = v53;
  }

  v17 = [MBBackupCKRecordsDB openOrCreateDatabaseIn:v51 error:v10];
  if (!v17)
  {
    v57 = 0;
LABEL_44:
    v8 = 0;
    goto LABEL_45;
  }

  v57 = v17;
  v56 = v56;
  v47 = v52;
  v49 = +[MBCKManager sharedInstance];
  v48 = [v49 openCacheWithAccount:v47 accessType:1 error:v53];
  if (!v48)
  {
    v8 = 0;
    goto LABEL_57;
  }

  v18 = [MBCKAccount fetchAccountWithOperationTracker:v56 cache:v48 error:v53];
  v44 = v18;
  if (!v18)
  {
    v37 = MBGetDefaultLog();
    v41 = v37;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = *v53;
      *buf = 138412290;
      v79 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to fetch account record: %@", buf, 0xCu);
      v39 = *v53;
      _MBLog();
    }

    goto LABEL_49;
  }

  if ([v18 fetchDevicesWithOperationTracker:v56 error:v53])
  {
    v19 = MBDeviceUUID();
    v20 = [v44 deviceForUUID:v19];

    v41 = v20;
    if ([v20 fetchSnapshotsWithOperationTracker:v56 error:v53])
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v21 = [v20 snapshots];
      v22 = [v21 countByEnumeratingWithState:&v58 objects:v77 count:16];
      obj = v21;
      if (v22)
      {
        v43 = *v59;
        while (2)
        {
          v42 = v22;
          for (i = 0; i != v42; i = i + 1)
          {
            if (*v59 != v43)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v58 + 1) + 8 * i);
            v24 = v57;
            v46 = v56;
            if (([v24 insertSnapshotRecord:v23 error:v53] & 1) == 0)
            {

LABEL_53:
              v8 = 0;
              goto LABEL_54;
            }

            v71 = 0;
            v72 = &v71;
            v73 = 0x3032000000;
            v74 = sub_100142940;
            v75 = sub_100142950;
            v76 = 0;
            v25 = [[MBCKBatchFetch alloc] initWithOperationTracker:v46];
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v26 = [v23 modifiedDomainRecordReferences];
            v27 = [v26 countByEnumeratingWithState:&v67 objects:buf count:16];
            v50 = v26;
            if (v27)
            {
              v55 = *v68;
LABEL_22:
              v28 = 0;
              v54 = v27;
              while (1)
              {
                if (*v68 != v55)
                {
                  objc_enumerationMutation(v50);
                }

                if (v72[5])
                {
                  break;
                }

                v29 = 0;
                v30 = *(*(&v67 + 1) + 8 * v28);
                while ([v30 pageCount] > v29 && !v72[5])
                {
                  v31 = [v30 baseRecordID];
                  v32 = [MBDomainRecord recordIDFromBaseRecordID:v31 pageIndex:v29];

                  v62[0] = _NSConcreteStackBlock;
                  v62[1] = 3221225472;
                  v62[2] = sub_100142958;
                  v62[3] = &unk_1003BFA30;
                  v63 = v24;
                  v64 = v23;
                  v66 = &v71;
                  v33 = v32;
                  v65 = v33;
                  [(MBCKBatchFetch *)v25 fetchRecordWithID:v33 completion:v62];

                  ++v29;
                }

                if (++v28 == v54)
                {
                  v27 = [v50 countByEnumeratingWithState:&v67 objects:buf count:16];
                  if (v27)
                  {
                    goto LABEL_22;
                  }

                  break;
                }
              }
            }

            if ([(MBCKBatchFetch *)v25 finishWithError:v53])
            {
              v34 = v72[5];
              if (v34)
              {
                v35 = 0;
                *v53 = v34;
              }

              else
              {
                v35 = 1;
              }
            }

            else
            {
              v35 = 0;
            }

            _Block_object_dispose(&v71, 8);
            if (!v35)
            {
              goto LABEL_53;
            }
          }

          v22 = [obj countByEnumeratingWithState:&v58 objects:v77 count:16];
          v8 = 1;
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v8 = 1;
      }

LABEL_54:

      goto LABEL_55;
    }

LABEL_49:
    v8 = 0;
LABEL_55:

    goto LABEL_56;
  }

  v8 = 0;
LABEL_56:

LABEL_57:
  v9 = v53;
  if (!v57)
  {

    goto LABEL_46;
  }

LABEL_4:
  if (([v57 close:{v9, v39}] & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:

LABEL_46:
  return v8 & 1;
}

void sub_1001428B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x100142874);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100142940(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100142958(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (!v8)
  {
    v9 = [MBDomainRecord domainRecordFromCKRecord:a3];
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) recordIDString];
    v54 = 0;
    LOBYTE(v10) = [v10 insertDomainRecordForSnapshotID:v11 domain:v9 error:&v54];
    v12 = v54;

    if (v10)
    {
      v40 = v7;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v41 = v9;
      v13 = [v9 addedOrModifiedAssets];
      v14 = [v13 countByEnumeratingWithState:&v50 objects:v56 count:16];
      v43 = a1;
      if (v14)
      {
        v15 = v14;
        v16 = *v51;
        obj = v13;
LABEL_7:
        v17 = 0;
        v18 = v12;
        while (1)
        {
          if (*v51 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v50 + 1) + 8 * v17);
          v20 = *(a1 + 32);
          v21 = [*(a1 + 48) recordName];
          v22 = [v19 recordID];
          v23 = [v22 recordName];
          v49 = v18;
          v24 = [v20 insertAssetRecordReferenceForDomainRecordID:v21 assetRecordID:v23 isDeletedAsset:0 error:&v49];
          v25 = v49;
          v12 = v49;

          if ((v24 & 1) == 0)
          {
            break;
          }

          v17 = v17 + 1;
          v18 = v12;
          a1 = v43;
          if (v15 == v17)
          {
            v13 = obj;
            v15 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
            if (v15)
            {
              goto LABEL_7;
            }

            goto LABEL_13;
          }
        }

        v39 = MBGetDefaultLog();
        v7 = v40;
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

LABEL_13:

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v9 = v41;
      v26 = [v41 deletedAssets];
      v27 = [v26 countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v46;
        obj = v26;
LABEL_15:
        v30 = 0;
        v31 = v12;
        while (1)
        {
          if (*v46 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v45 + 1) + 8 * v30);
          v33 = *(a1 + 32);
          v34 = [*(a1 + 48) recordName];
          v35 = [v32 recordID];
          v36 = [v35 recordName];
          v44 = v31;
          LOBYTE(v33) = [v33 insertAssetRecordReferenceForDomainRecordID:v34 assetRecordID:v36 isDeletedAsset:1 error:&v44];
          v25 = v44;
          v12 = v44;

          if ((v33 & 1) == 0)
          {
            break;
          }

          v30 = v30 + 1;
          v31 = v12;
          a1 = v43;
          if (v28 == v30)
          {
            v26 = obj;
            v28 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
            if (v28)
            {
              goto LABEL_15;
            }

            v8 = 0;
            v7 = v40;
            v9 = v41;
            goto LABEL_30;
          }
        }

        v39 = MBGetDefaultLog();
        v7 = v40;
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

LABEL_28:
        *buf = 138412546;
        v58 = v40;
        v59 = 2112;
        v60 = v12;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to insert asset reference record into db %@: %@", buf, 0x16u);
        _MBLog();
LABEL_29:

        objc_storeStrong((*(*(v43 + 56) + 8) + 40), v25);
        v8 = 0;
        v9 = v41;
        v26 = obj;
        goto LABEL_30;
      }

      v8 = 0;
      v7 = v40;
    }

    else
    {
      v37 = MBGetDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v58 = v7;
        v59 = 2112;
        v60 = v12;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to insert domain record into db %@: %@", buf, 0x16u);
        _MBLog();
      }

      v38 = *(*(a1 + 56) + 8);
      v12 = v12;
      v26 = *(v38 + 40);
      *(v38 + 40) = v12;
    }

LABEL_30:

    goto LABEL_31;
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v58 = v7;
    v59 = 2112;
    v60 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to fetch recordID %@: %@", buf, 0x16u);
    _MBLog();
  }

LABEL_31:
}

id MBWriteRestoreAppsPlist(void *a1)
{
  v82 = a1;
  v98 = objc_alloc_init(MBIgnoredAccountsTracker);
  v1 = MBError_ptr;
  v95 = objc_opt_new();
  [LSApplicationRecord enumeratorWithOptions:192];
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v2 = v107 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v104 objects:v112 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v105;
    v6 = LSUserApplicationType;
    v94 = _kCFBundleDisplayNameKey;
    v93 = _kCFBundleShortVersionStringKey;
    v99 = v2;
    v100 = LSUserApplicationType;
    v101 = *v105;
    do
    {
      v7 = 0;
      v102 = v4;
      do
      {
        if (*v105 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v104 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 typeForInstallMachinery];
        if ([v10 isEqualToString:v6])
        {
          v11 = v1[151];
          v12 = objc_opt_new();
          v13 = [v8 bundleIdentifier];
          v14 = [v8 installType];
          if (!v13)
          {
            v16 = MBGetDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v117 = v8;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "nil bundleID for app record: %@", buf, 0xCu);
              v79 = v8;
LABEL_13:
              _MBLog();
            }

LABEL_26:

            v5 = v101;
            v4 = v102;
            v6 = v100;
            goto LABEL_27;
          }

          v15 = v14;
          if ([v8 isBeta])
          {
            v16 = MBGetDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v117 = v13;
              v118 = 2048;
              v119 = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping %@/%lu (beta)", buf, 0x16u);
              v79 = v13;
              v80 = v15;
              goto LABEL_13;
            }

            goto LABEL_26;
          }

          v17 = [v8 applicationDSID];
          v18 = [NSNumber numberWithUnsignedLongLong:v17];
          v19 = [(MBIgnoredAccountsTracker *)v98 addAccountWithDSID:v18];

          if ((v19 & 1) == 0)
          {
            v16 = MBGetDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v117 = v13;
              v118 = 2048;
              v119 = v15;
              v120 = 2048;
              v121 = v17;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping %@/%lu for account %llu", buf, 0x20u);
              v80 = v15;
              v81 = v17;
              v79 = v13;
              _MBLog();
            }

            v1 = MBError_ptr;
            goto LABEL_25;
          }

          v20 = MBExcludedAppTypeFromAppRecord(v8);
          if (v20 == 2)
          {
            v16 = MBGetDefaultLog();
            v1 = MBError_ptr;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v117 = v13;
              v118 = 2048;
              v119 = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping %@/%lu (Swift Playgrounds app)", buf, 0x16u);
              v79 = v13;
              v80 = v15;
LABEL_24:
              _MBLog();
            }

LABEL_25:
            v2 = v99;
            goto LABEL_26;
          }

          if (v20 == 1)
          {
            v16 = MBGetDefaultLog();
            v1 = MBError_ptr;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v117 = v13;
              v118 = 2048;
              v119 = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping %@/%lu (app clip)", buf, 0x16u);
              v79 = v13;
              v80 = v15;
              goto LABEL_24;
            }

            goto LABEL_25;
          }

          v21 = [v8 applicationState];
          v22 = [v21 isDowngraded];

          v23 = [v8 compatibilityObject];
          v16 = [v23 bundleExecutable];

          [v12 setObject:v10 forKeyedSubscript:@"ApplicationType"];
          v24 = [v8 localizedName];
          [v12 setObject:v24 forKeyedSubscript:v94];

          [v12 setObject:v16 forKeyedSubscript:kCFBundleExecutableKey];
          [v12 setObject:v13 forKeyedSubscript:kCFBundleIdentifierKey];
          v25 = [v8 localizedName];
          [v12 setObject:v25 forKeyedSubscript:kCFBundleNameKey];

          v26 = [v8 bundleVersion];
          [v12 setObject:v26 forKeyedSubscript:kCFBundleVersionKey];

          v27 = [v8 shortVersionString];
          [v12 setObject:v27 forKeyedSubscript:v93];

          v28 = [NSNumber numberWithUnsignedLongLong:v17];
          [v12 setObject:v28 forKeyedSubscript:@"ApplicationDSID"];

          v29 = [NSNumber numberWithBool:v22];
          [v12 setObject:v29 forKeyedSubscript:@"IsDemotedApp"];

          if ([v8 isLaunchProhibited])
          {
            [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"LSApplicationLaunchProhibited"];
            v1 = MBError_ptr;
            v2 = v99;
          }

          else
          {
            v30 = SBSCopyIconImagePNGDataForDisplayIdentifier();
            v1 = MBError_ptr;
            v2 = v99;
            if (!v30)
            {
              v31 = MBGetDefaultLog();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v117 = v13;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Failed to fetch the icon for %@", buf, 0xCu);
                v79 = v13;
                _MBLog();
              }

              v30 = +[NSData data];
            }

            [v12 setObject:v30 forKeyedSubscript:{@"PlaceholderIcon", v79, v80, v81}];
          }

          v32 = [v8 bundleContainerURL];
          v96 = v32;
          if (!v32)
          {
            v46 = MBGetDefaultLog();
            v97 = v46;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v117 = v13;
              v118 = 2112;
              v119 = v8;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "nil bundleContainerURL for %@: %@", buf, 0x16u);
              v79 = v13;
              v80 = v8;
              _MBLog();
            }

            goto LABEL_75;
          }

          v33 = [v32 URLByAppendingPathComponent:@"iTunesMetadata.plist"];
          v34 = [LSApplicationProxy applicationProxyForIdentifier:v13];
          v97 = v34;
          if (!v34 || (v35 = v34, ![v34 isContainerized]))
          {
            v45 = sub_100143DF0(v33, @"iTunesMetadata", v12);
            goto LABEL_70;
          }

          v36 = v35;
          v88 = v33;
          v37 = v33;
          v90 = v12;
          [v36 bundleIdentifier];
          v92 = v91 = v37;
          v111 = 0;
          v38 = [NSData dataWithContentsOfURL:v37 options:3 error:&v111];
          v39 = v111;
          v89 = v36;
          if (v38)
          {
            v109 = 0;
            v110 = 100;
            v40 = v39;
            v87 = v38;
            v41 = [NSPropertyListSerialization propertyListWithData:v38 options:1 format:&v110 error:&v109];
            v86 = v109;

            if (v41)
            {
              v42 = v1[151];
              objc_opt_class();
              v85 = v41;
              if (objc_opt_isKindOfClass())
              {
                v43 = [v41 objectForKeyedSubscript:@"title"];

                if (v43)
                {
                  v44 = v86;
                  goto LABEL_66;
                }

                v61 = [v89 localizedShortName];
                if (!v61)
                {
                  v61 = [v89 localizedName];
                }

                v84 = v61;
                [v85 setObject:v61 forKeyedSubscript:@"title"];
                v108 = 0;
                v62 = [NSPropertyListSerialization dataWithPropertyList:v85 format:v110 options:0 error:&v108];
                v63 = v108;

                if (v62)
                {

                  v87 = v62;
                  v44 = v63;
LABEL_66:
                  [v90 setObject:v87 forKey:@"iTunesMetadata"];
                }

                else
                {
                  v68 = MBGetDefaultLog();
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v117 = v92;
                    v118 = 2112;
                    v119 = v63;
                    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Failed to serialize iTunesMetadata.plist for %@: %@", buf, 0x16u);
                    v79 = v92;
                    v80 = v63;
                    _MBLog();
                  }

                  v87 = v84;
                  v44 = v63;
                }

                v41 = v85;
              }

              else
              {
                v52 = MBGetDefaultLog();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  v53 = [v91 path];
                  v54 = objc_opt_class();
                  v55 = NSStringFromClass(v54);
                  *buf = 138412802;
                  v117 = v53;
                  v118 = 2112;
                  v119 = v92;
                  v120 = 2112;
                  v121 = v55;
                  _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Got unexpected object type for %@ for %@: %@", buf, 0x20u);

                  v56 = [v91 path];
                  v57 = objc_opt_class();
                  NSStringFromClass(v57);
                  v81 = v80 = v92;
                  v79 = v56;
                  _MBLog();

                  v1 = MBError_ptr;
                }

                v41 = v85;
                v44 = v86;
              }
            }

            else
            {
              v51 = MBGetDefaultLog();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v117 = v92;
                v118 = 2112;
                v119 = v86;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to deserialize iTunesMetadata.plist for %@: %@", buf, 0x16u);
                v79 = v92;
                v80 = v86;
                _MBLog();
              }

              v44 = v86;
            }

            v60 = v44;
            v59 = v89;
LABEL_69:

            v33 = v88;
LABEL_70:

            v64 = [v8 URL];
            if (v64)
            {
              v79 = v16;
              v65 = [NSString stringWithFormat:@"SC_Info/%@.sinf"];
              v66 = [v64 URLByAppendingPathComponent:v65];
              v67 = sub_100143DF0(v66, @"ApplicationSINF", v12);
            }

            else
            {
              v66 = MBGetDefaultLog();
              if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v117 = v13;
                v118 = 2112;
                v119 = v8;
                _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "nil bundleURL for %@: %@", buf, 0x16u);
                v79 = v13;
                v80 = v8;
                _MBLog();
              }
            }

            v2 = v99;
LABEL_75:

            [v95 setObject:v12 forKeyedSubscript:v13];
            goto LABEL_26;
          }

          v47 = v39;
          v48 = [v39 domain];
          v83 = v47;
          if ([v48 isEqualToString:NSCocoaErrorDomain])
          {
            v49 = [v47 code];

            v50 = v49 == 260;
            v1 = MBError_ptr;
            if (!v50)
            {
LABEL_58:
              v58 = MBGetDefaultLog();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v117 = v92;
                v118 = 2112;
                v119 = v91;
                v120 = 2112;
                v121 = v47;
                _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Failed to read metadata for %@ from %@: %@", buf, 0x20u);
                v80 = v91;
                v81 = v47;
                v79 = v92;
                _MBLog();
              }
            }

            v59 = v89;
            v60 = v83;
            goto LABEL_69;
          }

          goto LABEL_58;
        }

LABEL_27:

        objc_autoreleasePoolPop(v9);
        v7 = v7 + 1;
      }

      while (v4 != v7);
      v69 = [v2 countByEnumeratingWithState:&v104 objects:v112 count:16];
      v4 = v69;
    }

    while (v69);
  }

  v70 = [v95 copy];
  v103 = 0;
  v71 = [v70 writeToURL:v82 error:&v103];
  v72 = v103;
  v73 = MBGetDefaultLog();
  v74 = v73;
  if (v71)
  {
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      goto LABEL_86;
    }

    v75 = [v82 path];
    *v112 = 138412290;
    v113 = v75;
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "Wrote restore apps plist to %@", v112, 0xCu);

    v76 = [v82 path];
  }

  else
  {
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    v77 = [v82 path];
    *v112 = 138412546;
    v113 = v77;
    v114 = 2112;
    v115 = v72;
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "Failed to write the plist to %@: %@", v112, 0x16u);

    v76 = [v82 path];
  }

  _MBLog();

LABEL_86:

  return v72;
}

id sub_100143DF0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v16 = 0;
  v8 = [NSData dataWithContentsOfURL:v5 options:2 error:&v16];
  v9 = v16;
  v10 = v9;
  if (v8)
  {
    [v7 setObject:v8 forKeyedSubscript:v6];
LABEL_3:
    v11 = 0;
    goto LABEL_12;
  }

  v12 = [v9 domain];
  if ([v12 isEqualToString:NSCocoaErrorDomain])
  {
    v13 = [v10 code];

    if (v13 == 260)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to get data from %@: %@", buf, 0x16u);
    _MBLog();
  }

  if (!v10)
  {
    __assert_rtn("FetchAndSetData", "LookupInstalledApps.m", 36, "error");
  }

  v11 = v10;
LABEL_12:

  return v11;
}

uint64_t MBUploadAssetsForBackup(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v15 = a1;
  v16 = a2;
  v105 = a3;
  v98 = a4;
  v99 = a5;
  v97 = a6;
  v91 = a7;
  v92 = a9;
  v90 = v15;
  if (!v15)
  {
    __assert_rtn("MBUploadAssetsForBackup", "MBUploadAssets.m", 552, "domainManager");
  }

  v104 = v16;
  if (!v16)
  {
    __assert_rtn("MBUploadAssetsForBackup", "MBUploadAssets.m", 553, "readWriteDB");
  }

  if (!v105)
  {
    __assert_rtn("MBUploadAssetsForBackup", "MBUploadAssets.m", 554, "device");
  }

  if (!v99)
  {
    __assert_rtn("MBUploadAssetsForBackup", "MBUploadAssets.m", 555, "operationTracker");
  }

  if (!v98)
  {
    __assert_rtn("MBUploadAssetsForBackup", "MBUploadAssets.m", 558, "mountedSnapshotTracker");
  }

  v17 = [v105 pendingSnapshot];
  v95 = [v17 progressModel];

  if (!v95)
  {
    __assert_rtn("MBUploadAssetsForBackup", "MBUploadAssets.m", 560, "progressModel");
  }

  if (!v97)
  {
    __assert_rtn("MBUploadAssetsForBackup", "MBUploadAssets.m", 561, "plugins");
  }

  v94 = [v16 snapshotDirectoryRoot];
  v96 = [v16 commitID];
  v93 = [MBPendingSnapshotDB openOrCreateDatabaseIn:v94 commitID:v96 readonly:1 error:a8];
  LOBYTE(v18) = v93;
  if (v93)
  {
    v106 = v96;
    v119 = v15;
    v107 = v98;
    v87 = v99;
    v113 = v93;
    v111 = v16;
    v108 = v105;
    v109 = v97;
    v112 = v91;
    v110 = v92;
    Current = CFAbsoluteTimeGetCurrent();
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=upload assets= Uploading modified assets", buf, 2u);
      _MBLog();
    }

    v148[0] = _NSConcreteStackBlock;
    v148[1] = 3221225472;
    v148[2] = sub_100145130;
    v148[3] = &unk_1003BC518;
    v88 = objc_opt_new();
    v149 = v88;
    v21 = [v113 enumerateDomainsRequiringAssetUpload:a8 block:v148];

    if (v21)
    {
      if ([v88 count])
      {
        v144 = 0;
        v145 = &v144;
        v146 = 0x2020000000;
        v147 = 0;
        v140 = 0;
        v141 = &v140;
        v142 = 0x2020000000;
        v143 = 0;
        v136 = 0;
        v137 = &v136;
        v138 = 0x2020000000;
        v139 = 0;
        *&v152 = 0;
        *(&v152 + 1) = &v152;
        v153 = 0x3032000000;
        v154 = sub_100145154;
        v155 = sub_100145164;
        v156 = 0;
        v103 = [[MBCKBatchSave alloc] initWithOperationTracker:v87];
        v135 = 0u;
        v133 = 0u;
        v134 = 0u;
        v132 = 0u;
        obj = v88;
        v102 = [obj countByEnumeratingWithState:&v132 objects:buf count:16];
        if (v102)
        {
          v101 = *v133;
          while (2)
          {
            for (i = 0; i != v102; i = i + 1)
            {
              if (*v133 != v101)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v132 + 1) + 8 * i);
              if (atomic_load(v145 + 3))
              {
                v45 = MBGetDefaultLog();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  *v157 = 138543362;
                  *&v157[4] = v22;
                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "=upload assets= Not uploading changes for %{public}@ because of prior batch failures", v157, 0xCu);
                  v82 = v22;
                  _MBLog();
                }

                goto LABEL_34;
              }

              if (([v119 containsDomainName:*(*(&v132 + 1) + 8 * i)] & 1) == 0)
              {
                __assert_rtn("_uploadModifiedAssets", "MBUploadAssets.m", 477, "[domainManager containsDomainName:domainName]");
              }

              v24 = [v119 domainForName:*&v22];
              v25 = v145;
              v123[0] = _NSConcreteStackBlock;
              v123[1] = 3221225472;
              v124 = sub_10014516C;
              v125 = &unk_1003BFA58;
              v128 = &v152;
              v129 = &v144;
              v126 = v111;
              v127 = v22;
              v130 = &v140;
              v131 = &v136;
              v26 = v24;
              v27 = v106;
              v28 = v107;
              v118 = v103;
              v29 = v108;
              v30 = v109;
              v31 = v112;
              v116 = v110;
              v117 = v123;
              v32 = v113;
              [v26 name];
              v33 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v34 = MBGetDefaultLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                *v168 = 138412290;
                *&v168[4] = v33;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "=upload assets= Starting asset upload for %@", v168, 0xCu);
                v82 = v33;
                _MBLog();
              }

              *v168 = 0;
              *v157 = _NSConcreteStackBlock;
              *&v157[8] = 3221225472;
              *&v157[16] = sub_1001453CC;
              v158 = &unk_1003BFA80;
              v167 = v25 + 3;
              v115 = v28;
              *v159 = v115;
              v120 = v26;
              *&v159[8] = v120;
              v35 = *&v33;
              *&v159[16] = v35;
              v114 = v27;
              v160 = v114;
              v36 = v29;
              v161 = v36;
              v37 = v30;
              v162 = v37;
              v38 = v31;
              v163 = v38;
              v39 = v116;
              v165 = v39;
              v40 = v118;
              v164 = v40;
              v41 = v117;
              v166 = v41;
              [v32 enumerateAssetsPendingUploadForDomain:v35 error:v168 block:v157];

              v42 = *v168;
              if (v42)
              {
                v124(v41, 0, 0, 0, v42);
              }
            }

            v102 = [obj countByEnumeratingWithState:&v132 objects:buf count:16];
            if (v102)
            {
              continue;
            }

            break;
          }
        }

LABEL_34:

        *v168 = 0;
        v46 = [(MBCKBatchSave *)v103 finishWithError:v168];
        v47 = *v168;
        v48 = COERCE_DOUBLE(*v168);
        if ((v46 & 1) == 0)
        {
          v49 = MBGetDefaultLog();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *v157 = 138412290;
            *&v157[4] = v48;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "=upload assets= Failed to save batch: %@", v157, 0xCu);
            v82 = v48;
            _MBLog();
          }

          objc_storeStrong((*(&v152 + 1) + 40), v47);
        }

        v50 = CFAbsoluteTimeGetCurrent();
        v51 = atomic_load(v137 + 3);
        v52 = atomic_load(v137 + 3);
        [NSByteCountFormatter stringFromByteCount:v52 countStyle:0];
        v53 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v54 = v50 - Current;
        v55 = [NSByteCountFormatter stringFromByteCount:(v51 / v54) countStyle:0];
        v56 = MBGetDefaultLog();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = atomic_load(v137 + 3);
          v58 = atomic_load(v141 + 3);
          *v157 = 138413314;
          *&v157[4] = v53;
          *&v157[12] = 2048;
          *&v157[14] = v57;
          *&v157[22] = 2048;
          v158 = v58;
          *v159 = 2048;
          *&v159[2] = v54;
          *&v159[10] = 2112;
          *&v159[12] = v55;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "=upload assets= Finished uploading %@ (%lu bytes) for %lu assets in %.2fs, avg throughput: %@/s", v157, 0x34u);
          v59 = atomic_load(v137 + 3);
          v60 = atomic_load(v141 + 3);
          v86 = v55;
          v85 = v54;
          v83 = v59;
          v84 = v60;
          v82 = v53;
          _MBLog();
        }

        v61 = v112;
        [v112 assetUploadDuration];
        [v112 setAssetUploadDuration:v54 + v62];
        v63 = v137;
        v64 = [v112 uploadedAssetSize];
        v65 = atomic_load(v63 + 3);
        [v61 setUploadedAssetSize:&v64[v65]];
        v66 = v141;
        v67 = [v61 uploadedAssetCount];
        v68 = atomic_load(v66 + 3);
        [v61 setUploadedAssetCount:&v67[v68]];
        v69 = atomic_load(v145 + 3);
        v70 = *(&v152 + 1);
        if (v69 && !*(*(&v152 + 1) + 40))
        {
          __assert_rtn("_uploadModifiedAssets", "MBUploadAssets.m", 521, "uploadError");
        }

        if (a8)
        {
          *a8 = *(*(&v152 + 1) + 40);
          v70 = *(&v152 + 1);
        }

        v43 = *(v70 + 40) == 0;

        _Block_object_dispose(&v152, 8);
        _Block_object_dispose(&v136, 8);
        _Block_object_dispose(&v140, 8);
        _Block_object_dispose(&v144, 8);
      }

      else
      {
        v44 = MBGetDefaultLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "=upload assets= Found 0 domains with assets to upload, finishing early", buf, 2u);
          _MBLog();
        }

        v43 = 1;
      }
    }

    else
    {
      v43 = 0;
    }

    if (v43)
    {
      v71 = v112;
      v72 = v111;
      v73 = v113;
      v74 = CFAbsoluteTimeGetCurrent();
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "=upload assets= Committing assets into file list", buf, 2u);
        _MBLog();
      }

      LODWORD(v18) = MBCommitUploadedAssetsIntoFileList(v73, v72, a8);
      if (v18)
      {
        v75 = CFAbsoluteTimeGetCurrent() - v74;
        [v71 setUploadedAssetWriteDuration:v75];
        v76 = MBGetDefaultLog();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v151 = v75;
          _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "=upload assets= Finished committing assets into file list in %.3fs", buf, 0xCu);
          v82 = v75;
          _MBLog();
        }
      }
    }

    else
    {
      LOBYTE(v18) = 0;
    }

    v122 = 0;
    v77 = [v113 close:{&v122, *&v82, v83, v84, *&v85, v86}];
    v78 = v122;
    v79 = v78;
    if (v77)
    {
    }

    else
    {
      if (a8)
      {
        v80 = v78;
        *a8 = v79;
      }

      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v152) = 138412290;
        *(&v152 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=upload assets= Failed to close readonly pending snapshot database: %@", &v152, 0xCu);
        _MBLog();
      }

      LOBYTE(v18) = 0;
    }
  }

  return v18 & 1;
}

void sub_100145070(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    _Block_object_dispose(&STACK[0x310], 8);
    _Block_object_dispose(&STACK[0x208], 8);
    _Block_object_dispose(&STACK[0x228], 8);
    _Block_object_dispose(&STACK[0x248], 8);
    objc_begin_catch(a1);
    JUMPOUT(0x100144DDCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100145154(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10014516C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=upload assets= Failed to upload asset: %@", buf, 0xCu);
      _MBLog();
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a5);
    atomic_fetch_add((*(a1[7] + 8) + 24), 1uLL);
  }

  else
  {
    if (!a2)
    {
      __assert_rtn("_uploadModifiedAssets_block_invoke", "MBUploadAssets.m", 491, "inode != 0");
    }

    v13 = a1[4];
    v14 = a1[5];
    v21 = 0;
    v15 = [v13 markUploadedAssetForDomain:v14 inode:a2 assetMetadata:v10 error:&v21];
    v16 = v21;
    v17 = v21;
    if (v15)
    {
      atomic_fetch_add((*(a1[8] + 8) + 24), 1uLL);
      atomic_fetch_add((*(a1[9] + 8) + 24), [v10 assetSize]);
    }

    else
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(*(a1[6] + 8) + 40);
        *buf = 138412290;
        v23 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=upload assets= Failed to mark asset as uploaded: %@", buf, 0xCu);
        v20 = *(*(a1[6] + 8) + 40);
        _MBLog();
      }

      atomic_fetch_add((*(a1[7] + 8) + 24), 1uLL);
      objc_storeStrong((*(a1[6] + 8) + 40), v16);
    }
  }
}

BOOL sub_1001453CC(uint64_t a1, void *a2, uint64_t a3, void *a4, id a5, uint64_t a6, void *a7)
{
  v12 = a4;
  v13 = atomic_load(*(a1 + 112));
  v165 = v12;
  if (v13)
  {
    v14 = MBGetDefaultLog();
    v15 = v14;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=upload assets= Aborting upload of modified assets because of prior upload failures", buf, 2u);
      _MBLog();
      v16 = 0;
      v15 = v14;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v17 = v12;
    if (![v12 count])
    {
      __assert_rtn("_uploadModifiedAssetsForDomain_block_invoke", "MBUploadAssets.m", 399, "relativePathsThatLinkToInode.count");
    }

    v162 = a3;
    v163 = a1;
    v146 = a7;
    v159 = a2;
    v18 = [v17 firstObject];
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v21 = v19;
    v22 = [v20 rootPath];
    v23 = [v20 volumeMountPoint];
    v24 = [v21 snapshotMountPointForVolumeMountPoint:v23];

    LODWORD(v21) = [v20 shouldBackupRelativePathFromLiveFileSystem:v18];
    if (v21)
    {

      v24 = 0;
    }

    v25 = MBSnapshotPathFromLivePath(v22, v24, v23);
    v26 = [v25 stringByAppendingPathComponent:v18];

    v27 = *(a1 + 48);
    v28 = v26;
    v29 = v27;
    v30 = v165;
    v31 = v30;
    if (a5 == 1)
    {
      v32 = MBGetDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = v28;
        *&buf[22] = 2048;
        v185 = v159;
        LOWORD(v186) = 1024;
        *(&v186 + 2) = v162;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "=upload assets= Starting upload for %@:%@ (inode %llu, pc %d)", buf, 0x26u);
        v133 = v159;
        v134 = v162;
        v130 = v29;
        v132 = v28;
        _MBLog();
      }
    }

    else
    {
      v32 = [v30 componentsJoinedByString:@"|"];
      if ([v31 count] < a5)
      {
        v33 = [v32 stringByAppendingString:@"..."];

        v32 = v33;
      }

      v34 = MBGetDefaultLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413570;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = v28;
        *&buf[22] = 2048;
        v185 = v159;
        LOWORD(v186) = 1024;
        *(&v186 + 2) = v162;
        HIWORD(v186) = 2048;
        v187 = a5;
        LOWORD(v188) = 2112;
        *(&v188 + 2) = v32;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "=upload assets= Starting upload for %@:%@ (inode %llu, pc %d, linked by %llu [%@])", buf, 0x3Au);
        v135 = a5;
        v136 = v32;
        v133 = v159;
        v134 = v162;
        v130 = v29;
        v132 = v28;
        _MBLog();
      }
    }

    v168 = 0;
    v169 = 0uLL;
    v35 = *(a1 + 40);
    v36 = *(a1 + 56);
    v37 = *(a1 + 64);
    v38 = *(a1 + 72);
    v39 = *(a1 + 80);
    v40 = *(a1 + 96);
    v167 = 0;
    v156 = v18;
    v41 = v35;
    v42 = v28;
    v151 = v36;
    v152 = v37;
    v148 = v38;
    v149 = v39;
    v150 = v40;
    v157 = v41;
    v147 = [v41 name];
    v166 = v42;
    if ([MBProtectionClassUtils canOpenWhenLocked:v162])
    {
      LOBYTE(v170) = 0;
      *v193 = 0;
      v43 = [MBSQLiteFileHandle isSQLiteFileAtPath:v166 result:&v170 error:v193];
      v44 = *v193;
      if (v43)
      {
        if (v170)
        {
          v45 = 3;
        }

        else
        {
          v45 = 1;
        }
      }

      else
      {
        v46 = MBGetDefaultLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v166;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "=upload assets= Failed to determine whether %@ is a SQLite file", buf, 0xCu);
          v130 = v166;
          _MBLog();
        }

        LOBYTE(v170) = 0;
        v45 = 1;
      }
    }

    else
    {
      v45 = 2;
    }

    *&v169 = v45;
    v153 = [v166 pathExtension];
    if ((v45 - 1) > 1)
    {
      v47 = [v157 volumeMountPoint];
      v48 = [NSString stringWithFormat:@"sqlite-%llu", v159];
      v145 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:v47 identifiedBy:v48 error:&v167];

      v49 = v145;
      if (v145)
      {
        v50 = v166;
        v51 = v157;
        v52 = v156;
        v53 = v148;
        v54 = v145;
        v144 = v149;
        v55 = v150;
        v56 = v50;
        v57 = v51;
        v58 = v52;
        v59 = v53;
        v60 = v54;
        v61 = v55;
        v62 = dispatch_semaphore_create(0);
        *v193 = 0;
        *&v193[8] = v193;
        *&v193[16] = 0x3032000000;
        *&v193[24] = sub_100145154;
        *&v194 = sub_100145164;
        *(&v194 + 1) = 0;
        v176 = 0;
        v177 = &v176;
        v178 = 0x2020000000;
        v179 = 0;
        v170 = 0;
        v171 = &v170;
        v172 = 0x3032000000;
        v173 = sub_100145154;
        v174 = sub_100145164;
        v175 = 0;
        v63 = sub_1001466E8();
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100146744;
        v185 = &unk_1003BFAA8;
        *&v191 = v193;
        v161 = v56;
        v186 = v161;
        v143 = v57;
        v187 = v143;
        v140 = v58;
        *&v188 = v140;
        v142 = v59;
        *(&v188 + 1) = v142;
        v154 = v60;
        v189 = v154;
        *(&v191 + 1) = &v176;
        v192 = &v170;
        v64 = v62;
        v190 = v64;
        dispatch_async(v63, buf);

        do
        {
          v65 = dispatch_time(0, 5000000000);
          if (!dispatch_semaphore_wait(v64, v65))
          {
            v70 = *(v177 + 24);
            v139 = v171[5];
            v71 = v139;
            v141 = *(*&v193[8] + 40);
            goto LABEL_39;
          }
        }

        while (!v61[2](v61));
        v66 = MBGetDefaultLog();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v67 = v66;
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v68 = [v143 name];
            *v180 = 138412546;
            v181 = v68;
            v182 = 2112;
            v183 = v161;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "=upload assets= Cancelling sqlite compaction for %@:%@", v180, 0x16u);
          }

          v131 = [v143 name];
          v132 = v161;
          _MBLog();
        }

        v139 = [MBError errorWithCode:202 format:@"SQLite compaction was cancelled"];
        v69 = v139;
        v70 = 0;
        v141 = 0;
LABEL_39:

        _Block_object_dispose(&v170, 8);
        _Block_object_dispose(&v176, 8);
        _Block_object_dispose(v193, 8);

        if (v141)
        {
          if (v70)
          {
            [v144 setScrubbedSQLiteFileCount:{objc_msgSend(v144, "scrubbedSQLiteFileCount") + 1}];
          }

          [v144 setCompactedSQLiteFileCount:{objc_msgSend(v144, "compactedSQLiteFileCount", v131, v132, v133, v134, v135, v136) + 1}];
          v72 = v161;
          v73 = v141;
          v74 = v142;
          memset(v193, 0, sizeof(v193));
          v194 = 0u;
          v195 = 0u;
          v75 = v74;
          v76 = [v75 countByEnumeratingWithState:v193 objects:buf count:16];
          if (v76)
          {
            v77 = **&v193[16];
            v78 = &selRef__startTrackingPeerConnectionStatus;
            while (2)
            {
              v79 = 0;
              v80 = v78[357];
              do
              {
                if (**&v193[16] != v77)
                {
                  objc_enumerationMutation(v75);
                }

                v81 = *(*&v193[8] + 8 * v79);
                v82 = objc_autoreleasePoolPush();
                if (objc_opt_respondsToSelector())
                {
                  v83 = [v81 backingUpSQLiteFileCopyAtPath:v72 temporaryPath:v73];
                  if (v83)
                  {
                    objc_autoreleasePoolPop(v82);

                    v98 = v83;
                    v95 = 0;
                    v97 = 0;
                    v139 = v83;
                    goto LABEL_63;
                  }
                }

                objc_autoreleasePoolPop(v82);
                v79 = v79 + 1;
              }

              while (v76 != v79);
              v76 = [v75 countByEnumeratingWithState:v193 objects:buf count:16];
              v78 = &selRef__startTrackingPeerConnectionStatus;
              if (v76)
              {
                continue;
              }

              break;
            }
          }

          v84 = v73;
          v85 = v154;
          v86 = v61;
          v137 = v85;
          v87 = [v85 makeTemporaryFilePath];
          group = dispatch_group_create();
          v88 = [MBFileEncodingTask encodingTaskWithEncodingMethod:1];
          [v88 setSourcePath:v84];
          [v88 setDestinationPath:v87];
          [v88 setProtectionClass:v162];
          v89 = +[MBBehaviorOptions sharedOptions];
          [v89 SQLiteSpaceSavingsThresholdWithDefaultValue:0.5];
          v90 = [NSNumber numberWithDouble:?];
          [v88 setSpaceSavingsThreshold:v90];

          [v88 setCancellationHandler:v86];
          [v88 setGroup:group];
          [v88 start];
          dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
          v91 = [v88 error];
          v92 = v91;
          if (v91)
          {
            v93 = v91;
            v94 = v87;
            unlink([v87 fileSystemRepresentation]);
            v95 = 0;
            v96 = 0;
          }

          else
          {
            if (![v88 compressionMethod])
            {
              __assert_rtn("_compressFileAtPath", "MBUploadAssets.m", 124, "task.compressionMethod != MBFileCompressionMethodUnspecified");
            }

            v95 = [v88 compressionMethod];
            v96 = v87;
          }

          v99 = v92;
          if (v96)
          {
            v100 = v84;
            unlink([v84 fileSystemRepresentation]);
            [v144 setCompressedSQLiteFileCount:{objc_msgSend(v144, "compressedSQLiteFileCount") + 1}];
            v84 = v96;
          }

          else
          {
            v101 = MBGetDefaultLog();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              *&buf[4] = v72;
              *&buf[12] = 2112;
              *&buf[14] = v84;
              *&buf[22] = 2112;
              v185 = v99;
              _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "=upload assets= Could not compress SQLite database at %@, using compacted path instead %@: %@", buf, 0x20u);
              v131 = v72;
              _MBLog();
            }
          }

          v97 = v84;
        }

        else
        {
          v95 = 0;
          v97 = 0;
        }

LABEL_63:

        v102 = v139;
        if (v97)
        {
          BYTE8(v169) = v95;
          v103 = v154;
          v104 = MBGetDefaultLog();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
          {
            *buf = 138413314;
            *&buf[4] = v97;
            *&buf[12] = 2112;
            *&buf[14] = v147;
            *&buf[22] = 2112;
            v185 = v161;
            LOWORD(v186) = 1024;
            *(&v186 + 2) = v95;
            HIWORD(v186) = 2112;
            v187 = v153;
            _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_INFO, "=upload assets= Uploading processed SQLite database at %@ instead of the original database at %@:%@ compression:%d ext:%@", buf, 0x30u);
            v131 = v97;
            _MBLog();
          }

          LOBYTE(v131) = v95;
          v160 = [MBAssetRecord assetRecordForDomain:v143 absolutePath:v97 extension:v153 inode:v159 protectionClass:v162 assetType:3 compressionMethod:v131 device:v152 commitID:v151 outAssetSize:&v168 error:&v167];
        }

        else
        {
          v105 = sub_1001466E8();
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_10014673C;
          v185 = &unk_1003BC0B0;
          v186 = v154;
          dispatch_async(v105, buf);

          v106 = MBGetDefaultLog();
          if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
          {
            *v193 = 138412802;
            *&v193[4] = v147;
            *&v193[12] = 2112;
            *&v193[14] = v161;
            *&v193[22] = 2112;
            *&v193[24] = v102;
            _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "=upload assets= Failed to process sqlite file %@:%@: %@", v193, 0x20u);
            _MBLog();
          }

          v107 = v102;
          v167 = v102;

          v154 = 0;
          v160 = 0;
        }

        v49 = v145;
      }

      else
      {
        v154 = 0;
        v160 = 0;
      }
    }

    else
    {
      BYTE8(v169) = 0;
      LOBYTE(v130) = 0;
      v160 = [MBAssetRecord assetRecordForDomain:v157 absolutePath:v166 extension:v153 inode:v159 protectionClass:v162 assetType:v45 compressionMethod:v130 device:v152 commitID:v151 outAssetSize:&v168 error:&v167];
      v154 = 0;
    }

    v155 = v154;
    v158 = v167;
    v16 = v160 != 0;
    if (v160)
    {
      [*(v163 + 80) setQueuedAssetCount:{objc_msgSend(*(v163 + 80), "queuedAssetCount") + 1}];
      v108 = *(v163 + 80);
      v109 = [v108 queuedAssetSize];
      [v108 setQueuedAssetSize:&v109[v168]];
      v110 = *(v163 + 88);
      v111 = *(v163 + 48);
      v112 = *(v163 + 64);
      v113 = *(v163 + 104);
      v114 = v168;
      *v193 = v169;
      v115 = v111;
      v116 = v166;
      v117 = v155;
      v118 = v113;
      v119 = v160;
      v120 = v110;
      v121 = [v112 pendingSnapshot];
      v164 = [v121 progressModel];

      v122 = [v119 asCKRecord];

      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100146860;
      v185 = &unk_1003BFAF0;
      v186 = v117;
      v187 = v115;
      LOBYTE(v192) = v162;
      v189 = v159;
      v190 = v114;
      v191 = *v193;
      *&v188 = v116;
      *(&v188 + 1) = v118;
      v123 = v118;
      v124 = v116;
      v125 = v115;
      v126 = v117;
      [v120 saveRecord:v122 assetSize:v114 delegate:v164 completion:buf];
    }

    else
    {
      v127 = MBGetDefaultLog();
      if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v158;
        _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, "=upload assets= Failed to create asset record: %@", buf, 0xCu);
        _MBLog();
      }

      if (v146)
      {
        v128 = v158;
        *v146 = v158;
      }
    }

    v15 = v156;
  }

  return v16;
}

void sub_1001466A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v51 - 192), 8);
  _Unwind_Resume(a1);
}

id sub_1001466E8()
{
  if (qword_100421820 != -1)
  {
    dispatch_once(&qword_100421820, &stru_1003BFAC8);
  }

  v1 = qword_100421818;

  return v1;
}

void sub_100146744(uint64_t a1)
{
  v6 = 0;
  v2 = MBCompactSQLiteFileForiCloudBackup(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), &v6);
  v3 = 0;
  v4 = *(*(a1 + 80) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v2;

  *(*(*(a1 + 88) + 8) + 24) = v6;
  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 96) + 8) + 40), 0);
  }

  dispatch_semaphore_signal(*(a1 + 72));
}

void sub_1001467FC(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.MobileBackup.UploadAssets.SQLiteCompact", v3);
  v2 = qword_100421818;
  qword_100421818 = v1;
}

void sub_100146860(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    [v7 dispose];
  }

  v8 = [MBAssetRecord assetRecordFromCKRecord:v5];
  v9 = v8;
  if (v6)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      log = v5;
      v82 = v6;
      v13 = *(a1 + 64);
      v14 = *(a1 + 96);
      v15 = [v9 recordID];
      v16 = [v15 recordName];
      v17 = MBStringForAssetType(*(a1 + 80));
      v18 = *(a1 + 88);
      *buf = 138413826;
      v84 = v11;
      v85 = 2112;
      v86 = v12;
      v87 = 2048;
      v88 = v13;
      v89 = 1024;
      *v90 = v14;
      *&v90[4] = 2112;
      *&v90[6] = v16;
      *&v90[14] = 2112;
      *&v90[16] = v17;
      v91 = 1024;
      LODWORD(v92) = v18;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=upload assets= Failed upload for %@:%@ (inode %llu, pc %d, recordID %@, type %@, compression %d)", buf, 0x40u);

      v76 = *(a1 + 40);
      v19 = *(a1 + 64);
      v20 = *(a1 + 96);
      v21 = [v9 recordID];
      v22 = [v21 recordName];
      v60 = MBStringForAssetType(*(a1 + 80));
      v62 = *(a1 + 88);
      v5 = log;
      v6 = v82;
      _MBLog();
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), 0, 0, 0, v6, v23, v24);
  }

  else
  {
    v25 = [v8 contents];
    v26 = [v25 signature];

    if (v26)
    {
      v27 = [v9 recordIDSuffix];
      v28 = [v9 contents];
      v29 = [v28 signature];
      v30 = [MBAssetMetadata assetMetadataForUploadedRecordWithRecordIDSuffix:v27 signature:v29 size:*(a1 + 72) type:*(a1 + 80) compressionMethod:*(a1 + 88)];

      v31 = MBGetDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = v5;
        v34 = *(a1 + 40);
        v33 = *(a1 + 48);
        v68 = v33;
        v70 = *(a1 + 64);
        v74 = [v9 recordID];
        v66 = [v74 recordName];
        v35 = MBStringForAssetType([v30 assetType]);
        v65 = [v30 compressionMethod];
        v72 = [v30 assetSignature];
        v36 = [v72 base64EncodedStringWithOptions:0];
        v77 = v26;
        v37 = [v30 assetSize];
        v38 = [v9 extension];
        *buf = 138414338;
        v84 = v34;
        v5 = v32;
        v6 = 0;
        v85 = 2112;
        v86 = v68;
        v87 = 2048;
        v88 = v70;
        v89 = 2112;
        *v90 = v66;
        *&v90[8] = 2112;
        *&v90[10] = v35;
        *&v90[18] = 1024;
        *&v90[20] = v65;
        v91 = 2112;
        v92 = v36;
        v93 = 2048;
        v94 = v37;
        v95 = 2112;
        v96 = v38;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "=upload assets= Finished upload for %@:%@ (inode %llu, recordID %@, type %@, compression %d, sig %@, sz %llu, ext %@)", buf, 0x58u);

        v73 = *(a1 + 40);
        v71 = *(a1 + 64);
        v75 = [v9 recordID];
        v69 = [v75 recordName];
        v67 = MBStringForAssetType([v30 assetType]);
        [v30 compressionMethod];
        v39 = [v30 assetSignature];
        v40 = [v39 base64EncodedStringWithOptions:0];
        [v30 assetSize];
        v64 = [v9 extension];
        v59 = v73;
        _MBLog();

        v26 = v77;
      }

      (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 64), *(a1 + 48), v30, 0, v41, v42, v43, v59);
    }

    else
    {
      v44 = MBGetDefaultLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v78 = [v9 recordID];
        v45 = [v78 recordName];
        loga = v5;
        v46 = *(a1 + 40);
        v47 = *(a1 + 48);
        v48 = *(a1 + 64);
        v49 = *(a1 + 96);
        v50 = MBStringForAssetType(*(a1 + 80));
        v51 = *(a1 + 88);
        *buf = 138413826;
        v84 = v45;
        v85 = 2112;
        v86 = v46;
        v87 = 2112;
        v88 = v47;
        v89 = 2048;
        *v90 = v48;
        *&v90[8] = 1024;
        *&v90[10] = v49;
        v26 = 0;
        *&v90[14] = 2112;
        *&v90[16] = v50;
        v91 = 1024;
        LODWORD(v92) = v51;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "=upload assets= Uploaded recordID %@ for %@:%@ did not have a signature  (inode %llu, pc %d, type %@, compression %d)", buf, 0x40u);

        v52 = [v9 recordID];
        v53 = [v52 recordName];
        v79 = *(a1 + 40);
        v54 = *(a1 + 64);
        v55 = *(a1 + 96);
        v61 = MBStringForAssetType(*(a1 + 80));
        v63 = *(a1 + 88);
        v5 = loga;
        v6 = 0;
        v59 = v53;
        _MBLog();
      }

      v30 = [MBError errorWithCode:205 format:@"Uploaded asset does not contain a signature"];
      (*(*(a1 + 56) + 16))(*(a1 + 56), 0, 0, 0, v30, v56, v57, v58, v59);
    }
  }
}

void sub_1001472D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:@"MBMegaBackupEligibilityErrorDomain" code:1 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10014736C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 lastObject];

  if (v6)
  {
    v7 = [v5 lastObject];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

void sub_100147400(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithBool:a2];
    *buf = 138412546;
    v20 = v7;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "saveAccount completed: %@: %@", buf, 0x16u);

    v13 = [NSNumber numberWithBool:a2];
    _MBLog();
  }

  if (a2)
  {
    v8 = [*(a1 + 32) containsObject:ACAccountDataclassKeychainSync];
    v9 = *(a1 + 40);
    if (v8)
    {
      v10 = *(a1 + 48);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10014764C;
      v16[3] = &unk_1003BFB18;
      v16[4] = v9;
      v17 = *(a1 + 32);
      v18 = *(a1 + 56);
      [v9 _enableKeychainSync:v10 completion:v16];

      v11 = v17;
    }

    else
    {
      [*(a1 + 40) _saveEnabledSyncDataclasses:*(a1 + 32)];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001476B8;
      block[3] = &unk_1003BCB38;
      v12 = *(a1 + 48);
      v15 = *(a1 + 56);
      dispatch_async(v12, block);
      v11 = v15;
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))(*(a1 + 56), 0);
  }
}

void sub_10014764C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _saveEnabledSyncDataclasses:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1001478F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithBool:a2];
    *buf = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished enabling Keychain Sync: %@: %@", buf, 0x16u);

    v11 = [NSNumber numberWithBool:a2];
    _MBLog();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100147A84;
  block[3] = &unk_1003BFB68;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15 = a2;
  v13 = v5;
  v14 = v9;
  v10 = v5;
  dispatch_async(v8, block);
}

uint64_t sub_100147D78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v5;
    if ([v7 isCameraRollDomain] && *(a1 + 40) == 1 && *(a1 + 41) != 1)
    {
      goto LABEL_12;
    }

    if (![*(a1 + 32) _isSupportedBackupDomain:v7])
    {
      goto LABEL_12;
    }

    if ([v7 isAppDomain])
    {
      v8 = [v7 bundleID];
      v9 = [v8 length] != 0;
    }

    else
    {
      v9 = 1;
    }

    if ([v7 isEnabled])
    {
LABEL_12:
      v10 = 0;
    }

    else
    {
      v10 = ([v7 isRestricted] ^ 1) & v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_1001481B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_13;
  }

  if (([*(a1 + 32) _isSupportedDataclassForDevice:v5] & 1) == 0)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_disabledSyncDataclassesForAccount: Filtering out %{public}@ because device doesn't support it.", buf, 0xCu);
      _MBLog();
    }

    goto LABEL_8;
  }

  v7 = [*(a1 + 40) isProvisionedForDataclass:v5];
  if ([v5 isEqualToString:ACAccountDataclassKeychainSync])
  {
    v8 = +[CDPKeychainSync isUserVisibleKeychainSyncEnabled];
  }

  else
  {
    v8 = [*(a1 + 40) isEnabledForDataclass:v5];
  }

  v11 = v8;
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = [NSNumber numberWithBool:v11];
    v14 = [NSNumber numberWithBool:v7];
    *buf = 138543874;
    v19 = v5;
    v20 = 2114;
    v21 = v13;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "_disabledSyncDataclassesForAccount: Dataclass (%{public}@) isEnabled: %{public}@, isProvisioned: %{public}@", buf, 0x20u);

    v15 = [NSNumber numberWithBool:v11];
    v17 = [NSNumber numberWithBool:v7];
    _MBLog();
  }

  v10 = (v11 ^ 1) & v7;
LABEL_13:

  return v10;
}

void sub_100149094(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_1001490AC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1001490B8);
}

id sub_1001490C0()
{
  v2[0] = kLockdownUniqueDeviceIDKey;
  v2[1] = kLockdownDeviceNameKey;
  v3[0] = @"UniqueDeviceID";
  v3[1] = @"UserAssignedDeviceName";
  v2[2] = kLockdownSerialNumberKey;
  v2[3] = kLockdownProductTypeKey;
  v3[2] = @"SerialNumber";
  v3[3] = @"ProductType";
  v2[4] = kLockdownBuildVersionKey;
  v2[5] = kLockdownProductVersionKey;
  v3[4] = @"BuildVersion";
  v3[5] = @"ProductVersion";
  v2[6] = kLockdownDeviceClassKey;
  v3[6] = @"DeviceClass";
  v0 = [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:7];

  return v0;
}

void sub_100149844(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v23 = objc_begin_catch(a1);
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Exception while fetching last backup date: %@", &buf, 0xCu);
        _MBLog();
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(a1);
    }

    JUMPOUT(0x10014974CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10014996C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100149984(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 committed];
  if (v4)
  {
    v5 = [v3 created];
    [v5 timeIntervalSinceReferenceDate];
    v7 = [NSNumber numberWithUnsignedLongLong:v6];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Backup date is %@", buf, 0xCu);
      v13 = *(*(*(a1 + 32) + 8) + 40);
      _MBLog();
    }
  }

  return v4 ^ 1;
}

void sub_10014A1D8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x10014A090);
  }

  _Unwind_Resume(exception_object);
}

void sub_10014B054(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x10014AF40);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MBCreateVolumeSnapshots(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13)
{
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v161 = a6;
  v23 = a7;
  v163 = a8;
  v24 = a9;
  v152 = a10;
  v25 = a11;
  v26 = a13;
  if (!v19)
  {
    __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 210, "account");
  }

  if (!v20)
  {
    __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 211, "appManager");
  }

  if (!v21)
  {
    __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 212, "domainManager");
  }

  if (!v22)
  {
    __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 213, "serviceManager");
  }

  if (!v23)
  {
    __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 214, "device");
  }

  if (!v163)
  {
    __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 215, "pendingSnapshotDB");
  }

  if (!v24)
  {
    __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 216, "currentSnapshot");
  }

  if (!v25)
  {
    __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 217, "attemptSummary");
  }

  v27 = v26;
  v167 = 0;
  v28 = v19;
  v29 = v24;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v164 = v28;
  v33 = [v28 persona];
  if (!v33)
  {
    __assert_rtn("_loadDomainsFromVolumesToBackUp", "MBCreateVolumeSnapshots.m", 40, "persona");
  }

  v34 = v33;
  v165 = v31;
  v151 = v25;
  v162 = v32;
  if (MBBackupReasonIsScheduled())
  {
    v35 = v161;
    if ([v30 loadAppsWithPersona:v34 safeHarbors:1 error:&v167])
    {
      v36 = v30;
      v37 = MBGetDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Removing old safe harbors", buf, 2u);
        _MBLog();
      }

      v38 = v23;
      v39 = v27;

      v30 = v36;
      [v36 removeOldSafeHarborsWithExpiration:2592000.0];
      goto LABEL_16;
    }

    v38 = v23;
    v39 = v27;
  }

  else
  {
    v38 = v23;
    v39 = v27;
    v35 = v161;
    if ([v30 loadAppsWithPersona:v34 safeHarbors:0 error:&v167])
    {
LABEL_16:
      v40 = [v29 snapshotFormat];
      v41 = v164;
      v42 = v29;
      v43 = v162;
      [v31 addDomainsToBackUpToiCloudWithAppManager:v30 manager:v162 format:v40 account:v164];
      v44 = 1;
      goto LABEL_19;
    }
  }

  v44 = 0;
  v42 = v29;
  v43 = v162;
  v41 = v164;
LABEL_19:

  v150 = v30;
  v45 = v167;
  v46 = v42;
  if ((v44 & 1) == 0)
  {
    v68 = MBGetDefaultLog();
    v69 = v38;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v186 = v45;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Failed to load domains to back up: %@", buf, 0xCu);
      _MBLog();
    }

    v70 = v163;
    v71 = v164;
    if (a12)
    {
      v72 = v45;
      v73 = 0;
      *a12 = v45;
    }

    else
    {
      v73 = 0;
    }

    v74 = v35;
    v75 = v151;
    goto LABEL_122;
  }

  if (!v35)
  {
    __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 231, "mountedSnapshotTracker");
  }

  v47 = [v164 persona];
  v137 = v38;
  v48 = [v38 pendingSnapshotRecordID];
  v166 = v45;
  v157 = v35;
  v153 = v48;
  v135 = v39;
  v159 = v39;
  v148 = v47;
  v49 = [v47 volumesToBackUp];
  memset(v182, 0, sizeof(v182));
  v183 = 0u;
  v184 = 0u;
  v50 = v49;
  v51 = [v50 countByEnumeratingWithState:v182 objects:buf count:16];
  v139 = v42;
  if (v51)
  {
    v52 = v51;
    v53 = **&v182[16];
    while (2)
    {
      for (i = 0; i != v52; i = i + 1)
      {
        if (**&v182[16] != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*&v182[8] + 8 * i);
        if (MBIsInternalInstall())
        {
          v56 = [NSDate dateWithTimeIntervalSinceNow:-2592000.0];
          [MBFileSystemManager deleteAllSnapshotsForVolume:v55 withPrefix:@"com.appleinternal.mobilebackup" latestCreationDate:v56 error:0];
        }

        if (![MBFileSystemManager volumeSupportsLocalSnapshots:v55])
        {
          [MBError errorWithCode:1 format:@"File system doesn't support local snapshot"];
          v166 = v67 = 0;
          v57 = v50;
          v74 = v161;
          v75 = v151;
          v71 = v164;
          v46 = v139;
          v59 = v157;
          goto LABEL_57;
        }
      }

      v52 = [v50 countByEnumeratingWithState:v182 objects:buf count:16];
      v46 = v42;
      if (v52)
      {
        continue;
      }

      break;
    }
  }

  v57 = MBSnapshotName(@"com.apple.mobilebackup", v153);
  v155 = MBiCloudUserSessionSnapshotMountPoints();
  if ([MBFileSystemManager unmount:"unmount:timeout:error:cancelationHandler:" timeout:60.0 error:? cancelationHandler:?]&& [MBFileSystemManager deleteAllSnapshotsAcrossVolumes:v50 withPrefix:@"com.apple.mobilebackup" error:&v166])
  {
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    obj = v50;
    v58 = [obj countByEnumeratingWithState:&v168 objects:&v178 count:16];
    v59 = v157;
    if (v58)
    {
      v60 = v58;
      v146 = *v169;
      while (2)
      {
        for (j = 0; j != v60; j = j + 1)
        {
          if (*v169 != v146)
          {
            objc_enumerationMutation(obj);
          }

          v62 = *(*(&v168 + 1) + 8 * j);
          v172 = 0;
          v63 = [MBFileSystemManager createAndMountSnapshotForVolume:v62 name:v57 atFirstAvailableMountPoint:v155 error:&v172 cancelationHandler:v159, v125, v126, v127];
          v64 = v172;
          v65 = v64;
          if (!v63)
          {
            v76 = v64;
            v166 = v65;
            v77 = MBGetDefaultLog();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              *v173 = 138543618;
              *&v173[4] = v57;
              v174 = 2114;
              v175 = v65;
              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "Failed to create and mount the APFS snapshot (%{public}@): %{public}@", v173, 0x16u);
              v125 = v57;
              v126 = v65;
              _MBLog();
            }

            v67 = 0;
            goto LABEL_55;
          }

          v66 = MBGetDefaultLog();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            *v173 = 138543874;
            *&v173[4] = v57;
            v174 = 2112;
            v175 = v62;
            v176 = 2114;
            v177 = v63;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Snapshot %{public}@ for %@ was mounted successfully at %{public}@", v173, 0x20u);
            v126 = v62;
            v127 = v63;
            v125 = v57;
            _MBLog();
          }

          v59 = v157;
          [v157 trackSnapshotForVolume:v62 snapshotName:v57 mountPoint:v63];
        }

        v60 = [obj countByEnumeratingWithState:&v168 objects:&v178 count:16];
        if (v60)
        {
          continue;
        }

        break;
      }
    }

    v67 = 1;
LABEL_55:
    v74 = v161;
    v75 = v151;
    v71 = v164;
    v46 = v139;
  }

  else
  {
    v67 = 0;
    v74 = v161;
    v75 = v151;
    v71 = v164;
    v59 = v157;
  }

LABEL_57:
  v136 = v166;

  if (v67)
  {
    v78 = [v59 mountedSnapshots];
    v69 = v137;
    if (![v78 count])
    {
      __assert_rtn("MBCreateVolumeSnapshots", "MBCreateVolumeSnapshots.m", 237, "mountedSnapshotTracker.mountedSnapshots.count > 0");
    }

    v79 = v75;
    v80 = v74;

    v81 = [v71 persona];
    v82 = v163;
    v83 = v46;
    v147 = v152;
    v143 = v137;
    v132 = v165;
    obja = v81;
    v142 = v79;
    v149 = v83;
    [v83 snapshotFormat];
    v134 = v82;
    if (!MBSnapshotFormatContainsFileLists())
    {
      v116 = 1;
      v74 = v80;
      v75 = v151;
      v31 = v165;
      v70 = v163;
      v71 = v164;
      goto LABEL_118;
    }

    v172 = 0;
    v84 = [v82 markAllDomainsAsNotOnDisk:&v172];
    v85 = v172;
    if ((v84 & 1) == 0)
    {
      v74 = v80;
      v117 = MBGetDefaultLog();
      v31 = v165;
      if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v186 = v85;
        _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_ERROR, "Failed to mark all domains as not on disk: %@", buf, 0xCu);
        _MBLog();
      }

      v118 = a12;
      v75 = v151;
      v70 = v163;
      v71 = v164;
      if (!a12)
      {
        goto LABEL_116;
      }

      goto LABEL_105;
    }

    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    v141 = [v132 allDomains];
    v86 = [v141 countByEnumeratingWithState:&v178 objects:buf count:16];
    v31 = v165;
    if (!v86)
    {
      v89 = v82;
      goto LABEL_110;
    }

    v87 = v86;
    v88 = *v179;
    v89 = v134;
    v138 = *v179;
LABEL_63:
    v90 = 0;
    v140 = v87;
    while (1)
    {
      if (*v179 != v88)
      {
        objc_enumerationMutation(v141);
      }

      v91 = *(*(&v178 + 1) + 8 * v90);
      if (([v91 isLegacyPerAppPlaceholderDomain] & 1) == 0)
      {
        break;
      }

LABEL_94:
      if (v87 == ++v90)
      {
        v87 = [v141 countByEnumeratingWithState:&v178 objects:buf count:16];
        if (v87)
        {
          goto LABEL_63;
        }

LABEL_110:

        if ([v89 truncateDomainsNotPresentOnDisk:a12])
        {
          v116 = 1;
LABEL_112:
          v74 = v161;
          v70 = v163;
          v71 = v164;
          v75 = v151;
          v39 = v135;
          v46 = v139;
LABEL_117:

          v69 = v137;
LABEL_118:

          if (v116)
          {
            v123 = [v71 persona];
            [v150 removeStaleStateForUninstalledAppsForPersona:v123];

            v73 = 1;
            goto LABEL_121;
          }

LABEL_120:
          v73 = 0;
LABEL_121:
          v45 = v136;
          goto LABEL_122;
        }

        v122 = MBGetDefaultLog();
        v74 = v161;
        v70 = v163;
        v71 = v164;
        v75 = v151;
        v39 = v135;
        v46 = v139;
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          *v182 = 138412290;
          *&v182[4] = v85;
          _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_ERROR, "Failed to truncate domains not present on disk: %@", v182, 0xCu);
          _MBLog();
        }

        v118 = a12;
        if (!a12)
        {
LABEL_116:
          v116 = 0;
          goto LABEL_117;
        }

LABEL_105:
        v119 = v118;
        v120 = v85;
        v116 = 0;
        *v119 = v85;
        goto LABEL_117;
      }
    }

    v154 = v85;
    v92 = objc_autoreleasePoolPush();
    v93 = v91;
    v156 = v143;
    v94 = v149;
    v95 = v147;
    v160 = obja;
    v158 = v142;
    v96 = v89;
    v97 = [v93 name];
    *&v168 = 0;
    v98 = [v96 markDomainAsPresentOnDisk:v97 error:&v168];

    v99 = v168;
    if ((v98 & 1) == 0)
    {
      v107 = MBGetDefaultLog();
      v31 = v165;
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        *v182 = 138412290;
        *&v182[4] = v99;
        _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "Failed to mark domains as present on disk: %@", v182, 0xCu);
        v125 = v99;
        _MBLog();
      }

      v99 = v99;
      v85 = v99;
      v106 = v156;
      goto LABEL_92;
    }

    v100 = [v95 commitID];
    if (!v100)
    {
      v85 = 0;
      v106 = v156;
LABEL_91:

      v31 = v165;
LABEL_92:

      objc_autoreleasePoolPop(v92);
      if (v85)
      {
        if (a12)
        {
          v121 = v85;
          *a12 = v85;
        }

        v116 = 0;
        goto LABEL_112;
      }

      v87 = v140;
      v88 = v138;
      goto LABEL_94;
    }

    [v94 type];
    IsFull = MBSnapshotTypeIsFull();
    v102 = MBSnapshotsAreTransitioningFormats(v95, v94);
    [v94 type];
    if ((MBSnapshotTypeIsFull() & 1) != 0 || MBSnapshotsAreTransitioningFormats(v95, v94))
    {
      log = v100;
      v103 = MBGetDefaultLog();
      v133 = v103;
      if (!os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
      {
        v85 = 0;
        v106 = v156;
        v100 = log;
LABEL_90:

        goto LABEL_91;
      }

      v104 = [v93 name];
      *v182 = 138412802;
      *&v182[4] = v104;
      *&v182[12] = 1024;
      *&v182[14] = IsFull;
      *&v182[18] = 1024;
      *&v182[20] = v102;
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_INFO, "Not cloning file list for %@ isFullBackup:%d isTransitioningFormats:%d", v182, 0x18u);

      v89 = v134;
      [v93 name];
      v126 = IsFull;
      v125 = v127 = v102;
      _MBLog();
      v105 = v125;
      v85 = 0;
      v106 = v156;
      v100 = log;
    }

    else
    {
      v108 = [v93 name];
      v106 = v156;
      v133 = v108;
      if ([v156 shouldRepairDomain:v108])
      {
        [v158 trackSkippedFileListCloneDomain:v108];
        loga = MBGetDefaultLog();
        if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
        {
          *v182 = 138412290;
          *&v182[4] = v108;
          _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_INFO, "=domain repair= Not cloning file list for domain pending repair: %@", v182, 0xCu);
          v125 = v108;
          _MBLog();
        }

        v85 = 0;
      }

      else
      {
        v109 = [v94 commitID];
        v110 = [v160 snapshotDatabaseDirectory];
        v111 = [v93 name];
        *v173 = v99;
        loga = v109;
        LOBYTE(v109) = MBCloneFileListDB(v110, v100, v109, v111, v173);
        v129 = *v173;

        if (v109)
        {
          v85 = 0;
          v99 = v129;
        }

        else
        {
          v112 = MBGetDefaultLog();
          if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
          {
            v113 = [v93 name];
            *v182 = 138413058;
            *&v182[4] = v100;
            *&v182[12] = 2112;
            *&v182[14] = loga;
            *&v182[22] = 2112;
            *&v182[24] = v113;
            LOWORD(v183) = 2112;
            *(&v183 + 2) = v129;
            _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_ERROR, "Failed to clone FileListDB for (%@, %@, %@): %@", v182, 0x2Au);

            v127 = [v93 name];
            v128 = v129;
            v125 = v100;
            v126 = loga;
            _MBLog();
          }

          v99 = v129;
          v85 = v99;
        }

        v89 = v134;
        v106 = v156;
      }

      v105 = loga;
    }

    goto LABEL_90;
  }

  v114 = MBGetDefaultLog();
  v69 = v137;
  v31 = v165;
  if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v186 = v136;
    _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_ERROR, "Failed to mount the APFS snapshots %@", buf, 0xCu);
    _MBLog();
  }

  v70 = v163;
  if (!a12)
  {
    goto LABEL_120;
  }

  v115 = v136;
  v73 = 0;
  *a12 = v115;
  v45 = v115;
LABEL_122:

  return v73;
}

uint64_t BackupClientConfigurationSettingReadFrom(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___BackupClientConfigurationSetting__value;
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

    v13 = &OBJC_IVAR___BackupClientConfigurationSetting__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1001508C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [NSURL fileURLWithPath:v3];
  v22 = 0;
  v21 = 0;
  v6 = [v5 getResourceValue:&v22 forKey:NSURLIsExcludedFromBackupKey error:&v21];
  v7 = v22;
  v8 = v21;
  if (v6)
  {
    if ([v7 BOOLValue])
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v24 = NSURLIsExcludedFromBackupKey;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=restore-policy= Error fetching value for property %{public}@: %@", buf, 0x16u);
      v17 = NSURLIsExcludedFromBackupKey;
      v18 = v8;
      _MBLog();
    }
  }

  if (![*(a1 + 32) _isUnencryptedLocal])
  {
    if (![*(a1 + 32) _isCloudKitEngine] || (*(a1 + 40) & 1) != 0)
    {
      goto LABEL_27;
    }

    error = 0;
    propertyValueTypeRefPtr = 0;
    v10 = _kCFURLIsExcludedFromCloudBackupKey;
    if (CFURLCopyResourcePropertyForKey(v5, _kCFURLIsExcludedFromCloudBackupKey, &propertyValueTypeRefPtr, &error))
    {
      v14 = propertyValueTypeRefPtr;
      if (propertyValueTypeRefPtr)
      {
        CFRelease(propertyValueTypeRefPtr);
        if (v14 == kCFBooleanTrue)
        {
          v12 = MBGetDefaultLog();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_14;
          }

          *buf = 138412290;
          v24 = v3;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring from iCloud (attribute set locally): %@", buf, 0xCu);
          goto LABEL_13;
        }
      }

LABEL_27:
      v13 = 0;
      goto LABEL_28;
    }

    v15 = MBGetDefaultLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_25:

      if (error)
      {
        CFRelease(error);
      }

      goto LABEL_27;
    }

LABEL_24:
    *buf = 138543618;
    v24 = v10;
    v25 = 2112;
    v26 = error;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "=restore-policy= Error fetching value for property %{public}@: %@", buf, 0x16u);
    _MBLog();
    goto LABEL_25;
  }

  error = 0;
  propertyValueTypeRefPtr = 0;
  v10 = _kCFURLIsExcludedFromUnencryptedBackupKey;
  if (!CFURLCopyResourcePropertyForKey(v5, _kCFURLIsExcludedFromUnencryptedBackupKey, &propertyValueTypeRefPtr, &error))
  {
    v15 = MBGetDefaultLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v11 = propertyValueTypeRefPtr;
  if (!propertyValueTypeRefPtr)
  {
    goto LABEL_27;
  }

  CFRelease(propertyValueTypeRefPtr);
  if (v11 != kCFBooleanTrue)
  {
    goto LABEL_27;
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring from unencrypted iTunes backup (attribute set locally): %@", buf, 0xCu);
LABEL_13:
    _MBLog();
  }

LABEL_14:

LABEL_15:
  v13 = 1;
LABEL_28:

  objc_autoreleasePoolPop(v4);
  return v13;
}

BOOL sub_100150CA4(uint64_t a1, void *a2, void *a3)
{
  memset(&v13, 0, sizeof(v13));
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 persona];
  v8 = sub_100150D7C(v6, v7);

  v9 = [v8 stringByAppendingPathComponent:v5];

  v10 = lstat([v9 fileSystemRepresentation], &v13);
  v11 = (v10 | ~v13.st_mode & 0xA000) == 0;

  return v11;
}

id sub_100150D7C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if ([v4 shouldRestoreToSharedVolume])
  {
    [v3 sharedIncompleteRestoreDirectory];
  }

  else
  {
    [v3 userIncompleteRestoreDirectory];
  }
  v5 = ;

  v6 = [v4 rootPath];

  v7 = [v5 stringByAppendingPathComponent:v6];

  return v7;
}

void sub_100151FD4(id a1)
{
  qword_100421838 = [[MBXPCServer alloc] initWithServiceName:@"com.apple.backupd"];

  _objc_release_x1();
}

id sub_1001524A0(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v5 = "com.apple.mobile.keybagd.first_unlock";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received %s notification", buf, 0xCu);
    _MBLog();
  }

  return [*(a1 + 32) _unlocked];
}

id sub_100152574(uint64_t a1)
{
  result = MKBDeviceUnlockedSinceBoot();
  if (result == 1)
  {
    v3 = *(a1 + 32);

    return [v3 _unlocked];
  }

  return result;
}

void sub_1001525C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) != &_xpc_type_connection)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = MBStringWithXPCObject();
      *buf = 138412290;
      v29 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Received an unexpected XPC message: %@", buf, 0xCu);

      v17 = MBStringWithXPCObject();
      _MBLog();
    }

    MBExit(1);
  }

  v21 = 0;
  v6 = sub_100152914(v3, @"backupd-connection-initiate", &v21);
  v7 = v21;
  v8 = v7;
  if (v6)
  {
    v9 = [[MBConnection alloc] initWithXPCConnection:v3 delegate:*(a1 + 32) delegateQueue:*(a1 + 40)];
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Accepted new connection %@", buf, 0xCu);
      _MBLog();
    }

    v11 = *(a1 + 32);
    v12 = v11[3];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100152BAC;
    block[3] = &unk_1003BC060;
    v19 = v11;
    v20 = v9;
    v13 = v9;
    dispatch_sync(v12, block);
    [v13 resume];
    v14 = +[MBDaemon sharedDaemon];
    [v14 resetIdleTimer];
  }

  else
  {
    if (!v7)
    {
      buf[0] = 0;
      pid = xpc_connection_get_pid(v3);
      if (proc_name(pid, buf, 0xFFu) <= 0)
      {
        __strlcpy_chk();
      }

      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v22 = 136315650;
        v23 = buf;
        v24 = 1024;
        v25 = pid;
        v26 = 2112;
        v27 = @"backupd-connection-initiate";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "The client connection from %s(%d) is missing the %@ entitlement", v22, 0x1Cu);
        _MBLog();
      }
    }

    xpc_connection_cancel(v3);
  }
}