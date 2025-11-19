void sub_100000FE4(id a1)
{
  qword_100020BA0 = [[NADApplicationStore alloc] initWithURL:0];

  _objc_release_x1();
}

void sub_1000011C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000011D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000011F0(uint64_t a1, uint64_t a2)
{
  v6 = [NSURL fileURLWithPath:a2];
  v3 = [v6 URLByAppendingPathComponent:@"NanoAppRegistry"];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100001604(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = nar_workspace_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10000B98C(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    objc_end_catch();
    JUMPOUT(0x10000150CLL);
  }

  _Unwind_Resume(exception_object);
}

id sub_100001678(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained stateDataWithHints:a2];

  return v4;
}

void sub_100001AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001ABC(uint64_t a1)
{
  v2 = [*(a1 + 32) _allApplicationsIncludingHidden:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id *sub_100001BBC(id *result)
{
  v1 = result;
  if (result[5])
  {
    result = [result[4] _allApplicationsIncludingHidden:*(result + 64)];
    *v1[5] = result;
  }

  if (v1[6])
  {
    result = [v1[4] UUID];
    *v1[6] = result;
  }

  if (v1[7])
  {
    result = [v1[4] sequenceNumber];
    *v1[7] = result;
  }

  return result;
}

void sub_10000286C(uint64_t a1)
{
  v1 = [*(a1 + 32) applicationStore];
  [v1 removeAllEntities];
}

void sub_100002964(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationStore];
  [v2 insertApplication:*(a1 + 40)];
}

void sub_100002A6C(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationStore];
  [v2 removeApplicationWithBundleIdentifier:*(a1 + 40)];
}

void sub_100002B98(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationStore];
  [v2 setSequenceNumber:*(a1 + 40) UUID:*(a1 + 48)];
}

void sub_100002D70(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_100003A44(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(NARPBApplicationWrapper);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !sub_100009828(v13, a2))
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

    v13 = objc_alloc_init(NARPBWorkspaceMetadata);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !sub_100005B4C(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

id sub_1000053F8(uint64_t a1)
{
  v2 = [*(a1 + 32) pairedSyncCoordinator];
  v6 = NSLocalizedDescriptionKey;
  v7 = @"Did not start an SYSession in time";
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [NSError errorWithDomain:@"NARSyncErrorDomain" code:-1 userInfo:v3];
  [v2 syncDidFailWithError:v4];

  return [*(a1 + 32) lock_cancelWatchdogTimer];
}

void sub_100005698(uint64_t a1)
{
  [*(a1 + 32) lock_cancelWatchdogTimer];
  v2 = [*(a1 + 32) pairedSyncWatchdogQueue];
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v2);

  v4 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000579C;
  handler[3] = &unk_100018578;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(v3, handler);
  [*(a1 + 32) setPairedSyncWatchdogTimer:v3];
  dispatch_resume(v3);
}

void sub_100005964(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_100005B4C(uint64_t a1, void *a2)
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
        v20 = PBReaderReadString();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
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
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
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

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000063DC(uint64_t a1, void *a2)
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 2u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            LOBYTE(v20) = 0;
            v21 = &OBJC_IVAR___NARPBApplicationStateWrapper__isRestricted;
            goto LABEL_42;
          }
        }

        v21 = &OBJC_IVAR___NARPBApplicationStateWrapper__isRestricted;
LABEL_41:
        v20 = (v15 != 0) & ~[a2 hasError];
LABEL_42:
        *(a1 + *v21) = v20;
        goto LABEL_43;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 12) |= 1u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        LOBYTE(v20) = 0;
        v21 = &OBJC_IVAR___NARPBApplicationStateWrapper__isRemovedSystemApp;
        goto LABEL_42;
      }
    }

    v21 = &OBJC_IVAR___NARPBApplicationStateWrapper__isRemovedSystemApp;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100007AA0(void *a1, void *a2)
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
        v18 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
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
        v15 = PBReaderReadString();
        if (v15)
        {
          [a1 addLocalizedValue:v15];
        }

        goto LABEL_25;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = a1[2];
        a1[2] = v14;
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = PBReaderReadString();
    if (v15)
    {
      [a1 addKey:v15];
    }

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000085F4(uint64_t a1)
{
  qword_100020BB0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000087F4(uint64_t a1)
{
  v2 = nar_workspace_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C384(v2);
  }

  v3 = [[NADSyncController alloc] initWithApplicationStore:*(*(a1 + 32) + 32)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;
}

void sub_100008880(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = nar_workspace_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received XPC event %@", &v6, 0xCu);
  }

  string = xpc_dictionary_get_string(v2, "Notification");
  if (string)
  {
    v5 = [NSString stringWithUTF8String:string];
    [v5 isEqual:NRPairedDeviceRegistryDeviceDidPairDarwinNotification];
  }
}

id sub_100008B00(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NARApplication);
  v3 = [v1 sparsePlistData];

  if (v3)
  {
    v4 = [v1 sparsePlistData];
    v5 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:0];

    [v2 setInfoPlist:v5];
  }

  v6 = [v2 infoPlist];

  if (v6)
  {
    v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v1 infoPlistLocalizationsCount]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v31 = v1;
    v8 = [v1 infoPlistLocalizations];
    v9 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          if ([v13 localizedValuesCount])
          {
            v14 = [v13 localizedValuesCount];
            if (v14 == [v13 keysCount])
            {
              v15 = [v13 localization];

              if (v15)
              {
                v16 = [v13 localizedValues];
                v17 = [v13 keys];
                v18 = [NSDictionary dictionaryWithObjects:v16 forKeys:v17];

                v19 = [v13 localization];
                [v7 setObject:v18 forKeyedSubscript:v19];
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v10);
    }

    [v2 setLocalizedStrings:v7];
    v1 = v31;
    v20 = [v31 iTunesPlistKeysCount];
    if (v20 == [v31 iTunesPlistValuesCount])
    {
      v21 = +[NSMutableDictionary dictionary];
      v22 = [v31 iTunesPlistKeys];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100008F4C;
      v32[3] = &unk_1000186D0;
      v33 = v31;
      v34 = v21;
      v23 = v21;
      [v22 enumerateObjectsUsingBlock:v32];

      [v2 setITunesPlistStrings:v23];
    }

    [v2 setSequenceNumber:{objc_msgSend(v31, "sequenceNumber")}];
    v24 = [v31 launchServicesBundleType];
    [v2 setLaunchServicesBundleType:v24];

    v25 = [v31 appTags];
    [v2 setAppTags:v25];

    v26 = [v31 appState];
    v27 = [[NARApplicationState alloc] initWithRestricted:objc_msgSend(v26 removedSystemApp:{"isRestricted"), objc_msgSend(v26, "isRemovedSystemApp")}];
    [v2 setAppState:v27];

    if ([v31 hasSupportsForegroundApplication])
    {
      v28 = [v31 supportsForegroundApplication];
    }

    else
    {
      v28 = 1;
    }

    [v2 setSupportsForegroundApplication:v28];
    v29 = v2;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

void sub_100008F4C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 iTunesPlistValues];
  v8 = [v7 objectAtIndexedSubscript:a3];

  [*(a1 + 40) setObject:v8 forKeyedSubscript:v6];
}

uint64_t sub_100009828(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 88) |= 2u;
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
                goto LABEL_80;
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

LABEL_80:
            v38 = 80;
            goto LABEL_85;
          }

          if (v13 == 2)
          {
            v14 = PBReaderReadString();
            v15 = 72;
            goto LABEL_68;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v14 = PBReaderReadData();
              v15 = 64;
              goto LABEL_68;
            case 4:
              v16 = objc_alloc_init(NARPBLocalizationInfo);
              [a1 addInfoPlistLocalizations:v16];
              v41 = 0;
              v42 = 0;
              if (!PBReaderPlaceMark() || !sub_100007AA0(v16, a2))
              {
LABEL_90:

                return 0;
              }

LABEL_73:
              PBReaderRecallMark();
LABEL_74:

              goto LABEL_88;
            case 5:
              v16 = PBReaderReadString();
              if (v16)
              {
                [a1 addITunesPlistKeys:v16];
              }

              goto LABEL_74;
          }
        }
      }

      else if (v13 > 10)
      {
        switch(v13)
        {
          case 0xB:
            v16 = objc_alloc_init(NARPBApplicationStateWrapper);
            objc_storeStrong((a1 + 8), v16);
            v41 = 0;
            v42 = 0;
            if (!PBReaderPlaceMark() || !sub_1000063DC(v16, a2))
            {
              goto LABEL_90;
            }

            goto LABEL_73;
          case 0xC:
            v16 = PBReaderReadString();
            if (v16)
            {
              [a1 addAppTags:v16];
            }

            goto LABEL_74;
          case 0xD:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 88) |= 4u;
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
                LOBYTE(v23) = 0;
                goto LABEL_87;
              }
            }

            v23 = (v19 != 0) & ~[a2 hasError];
LABEL_87:
            *(a1 + 84) = v23;
            goto LABEL_88;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v16 = PBReaderReadString();
            if (v16)
            {
              [a1 addITunesPlistValues:v16];
            }

            goto LABEL_74;
          case 7:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 88) |= 1u;
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
                goto LABEL_84;
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

LABEL_84:
            v38 = 56;
LABEL_85:
            *(a1 + v38) = v30;
            goto LABEL_88;
          case 8:
            v14 = PBReaderReadString();
            v15 = 48;
LABEL_68:
            v37 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_88;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_88:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[NADaemon sharedDaemon];
  [v1 setup];

  objc_autoreleasePoolPop(v0);
  v2 = +[NADaemon sharedDaemon];
  [v2 start];

  v3 = +[NSRunLoop mainRunLoop];
  [v3 run];

  return 0;
}

void sub_10000BAD0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "session: %@ didEndWithError: %@", &v3, 0x16u);
}

void sub_10000BB58(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "syncSession: %@ rollbackChangesWithError:", &v2, 0xCu);
}

void sub_10000BBD0()
{
  sub_100005940();
  sub_100005958();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000BC40()
{
  sub_100005940();
  sub_10000594C();
  sub_100005964(&_mh_execute_header, v0, v1, "NARApplicationWorkspace has application but has UUID %@ and sequenceNumber %@.  Requesting full sync since both must be non-nil.");
}

void sub_10000BCB0()
{
  sub_100005940();
  sub_10000594C();
  sub_100005964(&_mh_execute_header, v0, v1, "NARApplicationWorkspace has no applications; UUID %@ and sequenceNumber %@. Resetting store and requesting full sync.");
}

void sub_10000BD20(uint64_t *a1)
{
  v6 = *a1;
  sub_100005958();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000BD98(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 identifier];
  v6 = [a2 syncSession];
  v7 = [v6 session];
  v8 = [v7 identifier];
  v10 = 138412546;
  v11 = v5;
  sub_10000594C();
  v12 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "NADSyncController received startSession with id %@ while already in a session for %@.", &v10, 0x16u);
}

void sub_10000BE80(void *a1, void *a2)
{
  v3 = [a1 identifier];
  v4 = [a2 session];
  v5 = [v4 identifier];
  sub_10000594C();
  sub_100005930();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10000BF48(void *a1)
{
  v1 = [a1 session];
  v2 = [v1 identifier];
  sub_100005940();
  sub_100005930();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10000BFEC(void *a1)
{
  v1 = [a1 identifier];
  sub_100005940();
  sub_100005930();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10000C0B8(void *a1, NSObject *a2)
{
  v4 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [a1 completedUnitCount]);
  v5 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [a1 totalUnitCount]);
  [a1 fractionCompleted];
  v6 = [NSNumber numberWithDouble:?];
  v9 = 138412802;
  v10 = v4;
  sub_10000594C();
  v11 = v5;
  v12 = v7;
  v13 = v8;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Sync session progress updated: %@/%@; %@", &v9, 0x20u);
}

void sub_10000C20C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error removing application at directory: %@ - %@", &v3, 0x16u);
}

void sub_10000C294(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error resetting application directory.  Couldn't delete - %@", &v2, 0xCu);
}

void sub_10000C30C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error creating application directory: %@", &v2, 0xCu);
}