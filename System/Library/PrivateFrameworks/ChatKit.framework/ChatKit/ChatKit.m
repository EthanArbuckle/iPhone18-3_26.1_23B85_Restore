uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Starting up…", v5, 2u);
    }
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_10000C348);
  v2 = +[CKCompanionMessagesDaemon sharedDaemon];
  [v2 registerForActivities];

  v3 = +[NSRunLoop currentRunLoop];
  [v3 run];

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_100001058(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v2, "Notification");
    if (!strcmp(string, "com.apple.TextInput.RemoveAllDynamicDictionariesNotification"))
    {
      if (IMOSLoggingEnabled())
      {
        v4 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *v6 = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Requesting removal of dynamic dictionaries", v6, 2u);
        }
      }

      v5 = +[CKCompanionMessagesDaemon sharedDaemon];
      [v5 requestDynamicDictionariesRemoval];
    }
  }
}

uint64_t NanoMessagesProtoChatMuteDidChangeReadFrom(uint64_t a1, void *a2)
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

      v13 = (v12 >> 3);
      if (v13 == 2)
      {
        *(a1 + 24) |= 1u;
        v21 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v21 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v21;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NanoMessagesProtoSyncDeviceSaltReadFrom(uint64_t a1, void *a2)
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

      if ((*&v12 & 0x7FFF8) == 8)
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

uint64_t NanoMessagesProtoFetchCurrentLocationReadFrom(uint64_t a1, void *a2)
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

uint64_t NanoMessagesProtoDidFetchCurrentLocationReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v51) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v51 & 0x7F) << v5;
        if ((v51 & 0x80) == 0)
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

      v13 = (v12 >> 3);
      if (v13 <= 5)
      {
        break;
      }

      if ((v12 >> 3) <= 7u)
      {
        if (v13 == 6)
        {
          *(a1 + 88) |= 2u;
          v51 = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v51 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v41 = v51;
          v42 = 16;
        }

        else
        {
          if (v13 != 7)
          {
LABEL_64:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_87;
          }

          *(a1 + 88) |= 0x20u;
          v51 = 0;
          v20 = [a2 position] + 8;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v51 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v41 = v51;
          v42 = 48;
        }

        goto LABEL_86;
      }

      switch(v13)
      {
        case 8u:
          *(a1 + 88) |= 0x40u;
          v51 = 0;
          v28 = [a2 position] + 8;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v51 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v41 = v51;
          v42 = 56;
LABEL_86:
          *(a1 + v42) = v41;
          break;
        case 9u:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 88) |= 0x100u;
          while (1)
          {
            LOBYTE(v51) = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v51 & 0x7F) << v32;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v38 = 0;
              goto LABEL_69;
            }
          }

          if ([a2 hasError])
          {
            v38 = 0;
          }

          else
          {
            v38 = v34;
          }

LABEL_69:
          *(a1 + 72) = v38;
          break;
        case 0xAu:
          v16 = PBReaderReadString();
          v17 = *(a1 + 80);
          *(a1 + 80) = v16;

          break;
        default:
          goto LABEL_64;
      }

LABEL_87:
      v50 = [a2 position];
      if (v50 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if ((v12 >> 3) <= 2u)
    {
      if (v13 == 1)
      {
        *(a1 + 88) |= 8u;
        v51 = 0;
        v22 = [a2 position] + 8;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
        {
          v44 = [a2 data];
          [v44 getBytes:&v51 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v41 = v51;
        v42 = 32;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_64;
        }

        *(a1 + 88) |= 0x10u;
        v51 = 0;
        v18 = [a2 position] + 8;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
        {
          v40 = [a2 data];
          [v40 getBytes:&v51 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v41 = v51;
        v42 = 40;
      }
    }

    else
    {
      switch(v13)
      {
        case 3u:
          *(a1 + 88) |= 1u;
          v51 = 0;
          v26 = [a2 position] + 8;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v51 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v41 = v51;
          v42 = 8;
          break;
        case 4u:
          *(a1 + 88) |= 4u;
          v51 = 0;
          v30 = [a2 position] + 8;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v51 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v41 = v51;
          v42 = 24;
          break;
        case 5u:
          *(a1 + 88) |= 0x80u;
          v51 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v51 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v41 = v51;
          v42 = 64;
          break;
        default:
          goto LABEL_64;
      }
    }

    goto LABEL_86;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NanoMessagesProtoRemoveDynamicDictionariesReadFrom(uint64_t a1, void *a2)
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

void sub_100004214(id a1)
{
  qword_100011808 = objc_alloc_init(CKCompanionMessagesDaemon);

  _objc_release_x1();
}

void sub_10000435C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  state = xpc_activity_get_state(v2);
  if (state == 2)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Syncing device salt", &v12, 2u);
      }
    }

    if (xpc_activity_set_state(v2, 4))
    {
      v7 = +[CKCompanionMessagesDaemon sharedDaemon];
      v8 = [v7 syncDeviceSalt];

      if ((v8 & 1) == 0 && IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Failed to read device salt, or one hasn't been created yet", &v12, 2u);
        }
      }

      v10 = xpc_activity_set_state(v2, 5);
      v11 = IMOSLoggingEnabled();
      if (v10)
      {
        if (v11)
        {
          v4 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
          {
            LOWORD(v12) = 0;
            _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Finished syncing device salt", &v12, 2u);
          }

          goto LABEL_25;
        }
      }

      else if (v11)
      {
        v4 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Failed to finish xpc_activity after syncing device salt", &v12, 2u);
        }

        goto LABEL_25;
      }
    }
  }

  else if (!state && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = xpc_activity_copy_criteria(v2);
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Check-in, criteria: %@", &v12, 0xCu);
    }

LABEL_25:
  }
}

void sub_1000045DC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1000045A8);
  }

  _Unwind_Resume(a1);
}

void sub_10000481C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x10000479CLL);
  }

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(exc_buf);
}

uint64_t sub_10000485C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004874(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceSalt];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000048E0(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  state = xpc_activity_get_state(v2);
  if (state == 2)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Syncing ResponseKit data", buf, 2u);
      }
    }

    if (xpc_activity_set_state(v2, 4))
    {
      v7 = +[CKCompanionMessagesDaemon sharedDaemon];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100004AD4;
      v8[3] = &unk_10000C418;
      v9 = v2;
      [v7 syncResponseKitData:v8];
    }
  }

  else if (!state && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = xpc_activity_copy_criteria(v2);
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Check-in, criteria: %@", buf, 0xCu);
    }
  }
}

void sub_100004AD4(uint64_t a1)
{
  v1 = xpc_activity_set_state(*(a1 + 32), 5);
  v2 = IMOSLoggingEnabled();
  if (v1)
  {
    if (!v2)
    {
      return;
    }

    v3 = OSLogHandleForIMEventCategory();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v6 = 0;
    v4 = "Finished syncing ResponseKit data";
    v5 = &v6;
    goto LABEL_8;
  }

  if (!v2)
  {
    return;
  }

  v3 = OSLogHandleForIMEventCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v4 = "Failed to finish xpc_activity after syncing ResponseKit data";
    v5 = buf;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
  }

LABEL_9:
}

void sub_100004E5C(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 didErrorOccur])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Error while attempting to zip up ResponseKit data", v6, 2u);
      }
    }
  }

  else
  {
    [*(a1[4] + 8) sendResponseKitData:a1[5]];
  }

  v5 = a1[6];
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void sub_100005194(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Finished syncing ResponseKit data during PairedSync", v4, 2u);
    }
  }

  v3 = [*(*(a1 + 32) + 16) activeSyncSession];
  [v3 syncDidComplete];
}

id sub_100005C80()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v1 = [v0 lastObject];

  v2 = [v1 stringByAppendingPathComponent:@"ResponseKit"];
  v3 = [NSURL fileURLWithPath:v2 isDirectory:1];

  return v3;
}

id sub_100005D20(char a1)
{
  v2 = NSTemporaryDirectory();
  v16[0] = v2;
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];
  v16[1] = v4;
  v5 = [NSArray arrayWithObjects:v16 count:2];
  v6 = [NSURL fileURLWithPathComponents:v5];

  if (a1)
  {
    v7 = +[NSFileManager defaultManager];
    v8 = [v6 path];
    v9 = [v7 fileExistsAtPath:v8];

    if (v9)
    {
      goto LABEL_6;
    }

    v10 = +[NSFileManager defaultManager];
    v11 = [v6 path];
    v15 = 0;
    [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v15];
    v12 = v15;

    if (!v12)
    {
LABEL_6:
      v13 = 0;
    }

    else
    {
      v13 = v6;
    }
  }

  else
  {
    v13 = v6;
  }

  return v13;
}