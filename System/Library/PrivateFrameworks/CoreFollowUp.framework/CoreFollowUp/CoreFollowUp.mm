uint64_t sub_100001428(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001438(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001448(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001458(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100001658(id a1, FLFollowUpItem *a2)
{
  v2 = a2;
  v3 = +[FLApprovedItemsFilter sharedFilter];
  v4 = [v3 approvalStatusForItem:v2];

  if (v4 == 1)
  {
    v5 = [(FLFollowUpItem *)v2 targetBundleIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100001748(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, _xpc_event_key_name)];
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "XPC event (%@) handler called.", &v13, 0xCu);
  }

  v6 = [NSString stringWithUTF8String:"com.apple.springboard.lockstate"];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    if (xpc_dictionary_get_uint64(v3, "_State") != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v8 = [NSString stringWithUTF8String:"com.apple.mobile.keybagd.lock_status"];
  v9 = [v4 isEqual:v8];

  if (v9)
  {
    v10 = +[FLEnvironment currentEnvironment];
    v11 = [v10 isUnlocked];

    if ((v11 & 1) == 0)
    {
LABEL_8:
      [*(a1 + 32) _processPendingNotifications:0];
    }
  }

  else
  {
    v12 = _FLLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No special handling for XPC event: %@", &v13, 0xCu);
    }
  }

LABEL_12:
}

void sub_10000199C(id a1)
{
  v1 = objc_alloc_init(ItemStore);
  v2 = qword_100026B90;
  qword_100026B90 = v1;

  v3 = [FLSQLiteExecutor alloc];
  v7 = NSHomeDirectory();
  v4 = [v7 stringByAppendingString:@"/Library/CoreFollowUp/items.db"];
  v5 = [(FLSQLiteExecutor *)v3 initWithDatabasePath:v4];
  v6 = *(qword_100026B90 + 8);
  *(qword_100026B90 + 8) = v5;
}

void sub_100001A5C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.followup.itemstorequeue", v3);
  v2 = qword_100026B80;
  qword_100026B80 = v1;
}

void sub_100001E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001E58(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_text(a2, 0);
  if (v3)
  {
    v4 = [NSString stringWithUTF8String:v3];
    *(*(*(a1 + 32) + 8) + 24) = [v4 integerValue];
  }
}

id sub_10000207C(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  if (*(v2 + 8) > 8)
  {
    return [v1 _migrateToCurrentFrom:?];
  }

  else
  {
    return [v1 _createCleanCurrentDatabase];
  }
}

void sub_100002EA4(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting launch arguments conversion", buf, 2u);
  }

  if (a2 == 1)
  {
    if (sqlite3_value_type(*a3) == 5)
    {
      sqlite3_result_null(a1);
    }

    else
    {
      v7 = sqlite3_value_blob(*a3);
      v8 = [NSData dataWithBytes:v7 length:sqlite3_value_bytes(*a3)];
      v14 = FLFollowUpActionLaunchArgumentsKey;
      v15 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v12 = 0;
      v10 = [NSPropertyListSerialization dataWithPropertyList:v9 format:200 options:0 error:&v12];
      if (v12)
      {
        sqlite3_result_error(a1, "Bad data.", 1);
      }

      else
      {
        v11 = _FLLogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Row migration completed", buf, 2u);
        }

        sqlite3_result_blob64(a1, [v10 bytes], objc_msgSend(v10, "length"), 0);
      }
    }
  }

  else
  {
    sqlite3_result_error(a1, "Improper number of arguments.", 1);
  }
}

void sub_100003524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003544(uint64_t a1)
{
  if ([*(a1 + 32) _unsafe_hasAlertForItem:*(a1 + 40)])
  {
    v2 = _FLLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Alert already visible, bailing...", v6, 2u);
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _createUserNotificationWithItem:*(a1 + 40)];
    v3 = *(a1 + 48);
    v4 = *(*(*(a1 + 56) + 8) + 24);
    v5 = *(*(a1 + 32) + 8);

    [v5 setObject:v4 forKeyedSubscript:v3];
  }
}

void sub_10000372C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100003748(uint64_t a1, uint64_t a2)
{
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received response to alert for item with identifier: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(*(a1 + 40) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000392C;
    block[3] = &unk_100020768;
    block[4] = WeakRetained;
    v16 = *(a1 + 32);
    dispatch_sync(v8, block);
    v9 = [v7 delegate];
    v10 = v9;
    if (a2)
    {
      goto LABEL_6;
    }

    [v9 provider:v7 didActivateNotificationForFollowUpItemWithIdentifier:*(a1 + 32) activationSource:5];
    v11 = [*(a1 + 48) notification];
    v12 = [v11 options];
    v13 = [v12 containsObject:FLNotificationOptionSpringboardAlertActionOnly];

    if ((v13 & 1) == 0)
    {
LABEL_6:
      v17 = *(a1 + 32);
      v14 = [NSArray arrayWithObjects:&v17 count:1];
      [v10 provider:v7 didClearNotificationsForFollowUpItemsWithIdentifiers:v14 activationSource:5];
    }
  }
}

void sub_100003B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003B80(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 uniqueIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v8 = [*(a1 + 40) notification];
    v9 = [v8 shouldDeliverNotification];

    if ((v9 & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    *a4 = 1;
  }
}

id sub_100003D40(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];

  if (v2)
  {
    CFUserNotificationCancel(v2);
  }

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);

  return [v4 removeObjectForKey:v3];
}

uint64_t sub_100003E54(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(a1 + 40), 0.0, &responseFlags);
  v2 = responseFlags;
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [NSNumber numberWithUnsignedLong:v2 & 3];
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notification responded: %@", buf, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100004490(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.followup.notifications", v3);
  v2 = qword_100026B60;
  qword_100026B60 = v1;
}

void sub_1000045D0(id *a1)
{
  v2 = [a1[4] notification];
  v3 = [v2 options];
  v4 = [v3 containsObject:FLNotificationOptionSpringboardAlert];

  if (v4)
  {
    v5 = _FLLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to post springboard alert", buf, 2u);
    }

    [*(a1[5] + 1) postNotificationForFollowUpItem:a1[4]];
  }

  else
  {
    [a1[5] addCategoryForFollowUpItem:a1[4]];
    v6 = [a1[5] userNotificationRequestForFollowUpItem:a1[4]];
    if (v6)
    {
      v7 = _FLLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Posting a followup notification: %@", buf, 0xCu);
      }

      v8 = [a1[5] getNotificationCenterForItem:a1[4]];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000047BC;
      v9[3] = &unk_100020848;
      v10 = a1[4];
      v11 = a1[6];
      [v8 addNotificationRequest:v6 withCompletionHandler:v9];
    }
  }
}

void sub_1000047BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UN: Notification request added with error %@", &v6, 0xCu);
  }

  if (!v3)
  {
    v5 = +[NotificationController sharedController];
    [v5 updateNotificationDeliveryDateForItem:*(a1 + 32)];
  }
}

void sub_1000049C0(uint64_t a1)
{
  v2 = _FLLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Checking existing UNNotifications", buf, 2u);
  }

  v3 = [*(a1 + 32) notification];
  v4 = [*(a1 + 40) getNotificationCenterForItem:*(a1 + 32)];
  v5 = [v4 deliveredNotifications];
  *buf = 0;
  v15 = buf;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100004BF0;
  v10[3] = &unk_100020898;
  v11 = *(a1 + 32);
  v6 = v3;
  v12 = v6;
  v13 = buf;
  [v5 enumerateObjectsUsingBlock:v10];
  v7 = _FLLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v15[24])
    {
      v8 = @"found";
    }

    else
    {
      v8 = @"not found";
    }

    *v18 = 138412290;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Existing UNNotification that is out of date: %@", v18, 0xCu);
  }

  v9 = v15[24];
  (*(*(a1 + 48) + 16))();

  _Block_object_dispose(buf, 8);
}

void sub_100004BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004BF0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v30 = [a2 request];
  v6 = [v30 content];
  v7 = [v30 identifier];
  v8 = [*(a1 + 32) uniqueIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [v6 title];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_100021020;
    }

    v13 = [*(a1 + 40) title];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &stru_100021020;
    }

    if ([(__CFString *)v12 isEqualToString:v15])
    {
      v16 = [v6 body];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = &stru_100021020;
      }

      v19 = [*(a1 + 32) _informativeNotificationTextOrDate];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = &stru_100021020;
      }

      if ([(__CFString *)v18 isEqualToString:v21])
      {
        v22 = [v6 subtitle];
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = &stru_100021020;
        }

        v25 = [*(a1 + 40) subtitleText];
        v26 = v25;
        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = &stru_100021020;
        }

        v28 = [v29 isEqualToString:v27];

        if (v28)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

LABEL_26:
    *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_27:
    *a4 = 1;
  }
}

void sub_1000051D4(uint64_t a1)
{
  v2 = [*(a1 + 32) getNotificationCenterForItem:*(a1 + 40)];
  [*(*(a1 + 32) + 8) tearDownNotificationsForFollowUpItem:*(a1 + 40)];
  v3 = [*(a1 + 40) uniqueIdentifier];
  v8 = v3;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  [v2 removePendingNotificationRequestsWithIdentifiers:v4];

  v5 = [*(a1 + 40) uniqueIdentifier];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v2 removeDeliveredNotificationsWithIdentifiers:v6];
}

void sub_100005FE4(id a1)
{
  v1 = objc_alloc_init(NotificationController);
  v2 = qword_100026B70;
  qword_100026B70 = v1;

  v3 = objc_alloc_init(FLItemStoreDecorator);
  v4 = *(qword_100026B70 + 8);
  *(qword_100026B70 + 8) = v3;

  _objc_release_x1();
}

id sub_100006150(uint64_t a1)
{
  v2 = _FLLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Processing updating activities", v4, 2u);
  }

  return [*(a1 + 32) updateRepeatingActivityState];
}

BOOL sub_100006240(id a1, FLFollowUpItem *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = [(FLFollowUpItem *)v3 notification];
  [v4 frequency];
  if (v5 > 0.0)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v6 = [(FLFollowUpItem *)v3 notification];
    if ([v6 shouldDeliverNotification])
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v8 = [(FLFollowUpItem *)v3 notification];
      if (v8)
      {
        v9 = [(FLFollowUpItem *)v3 expirationDate];
        if (v9)
        {
          v7 = [(FLFollowUpItem *)v3 isExpired]^ 1;
        }

        else
        {
          LOBYTE(v7) = 0;
        }
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }
  }

  return v7;
}

void sub_1000064DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10000650C(void *a1, void *a2)
{
  v33 = a2;
  v3 = [v33 notification];
  [v3 frequency];
  if (v4 > 0.0)
  {
    v5 = *(*(a1[4] + 8) + 24);
    v6 = [v33 notification];
    [v6 frequency];
    if (v5 <= v7)
    {
      v8 = *(*(a1[4] + 8) + 24);

      if (v8 != 0.0)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v3 = [v33 notification];
    [v3 frequency];
    *(*(a1[4] + 8) + 24) = v9;
  }

LABEL_7:
  v10 = *(a1[5] + 8);
  v11 = v33;
  if (*(v10 + 24) == 1)
  {
    *(v10 + 24) = 1;
  }

  else
  {
    v12 = [v33 expirationDate];
    *(*(a1[5] + 8) + 24) = v12 != 0;

    v11 = v33;
  }

  v13 = [v11 expirationDate];
  if (v13)
  {
    v14 = v13;
    v15 = *(*(a1[6] + 8) + 40);
    if (v15)
    {
      v16 = [v33 _midnightAdjustedDate];
      v17 = [v15 compare:v16];

      if (v17 != 1)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v18 = [v33 _midnightAdjustedDate];
    v19 = *(a1[6] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

LABEL_16:
  v21 = [v33 notification];
  [v21 frequency];
  if (v22 > 0.0)
  {
    v23 = [v33 notification];
    v24 = [v23 previousNotificationActionDate];

    if (!v24)
    {
      goto LABEL_26;
    }

    v25 = [v33 notification];
    v26 = [v25 previousNotificationActionDate];
    v27 = [v33 notification];
    [v27 frequency];
    v21 = [v26 dateByAddingTimeInterval:?];

    v28 = +[NSDate date];
    if ([v21 compare:v28] == 1)
    {
      v29 = *(*(a1[6] + 8) + 40);
      if (v29)
      {
        v30 = [v29 compare:v21];

        if (v30 != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
      }

      v31 = *(a1[6] + 8);
      v32 = v21;
      v28 = *(v31 + 40);
      *(v31 + 40) = v32;
    }
  }

LABEL_25:

LABEL_26:
}

void sub_100006990(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = _FLLogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (state == 2)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "XPC activity says that it's time post notifications!", buf, 2u);
    }

    if (!xpc_activity_set_state(v3, 4))
    {
      v7 = _FLLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100010524();
      }
    }

    v8 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100006B40;
    v10[3] = &unk_100020998;
    v11 = v3;
    [v8 _processPendingNotifications:v10];
    v5 = v11;
  }

  else if (v6)
  {
    v9 = [NSNumber numberWithLong:state];
    *buf = 138412290;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "XPC activity registration complete. State: %@.", buf, 0xCu);
  }
}

void sub_100006B40(uint64_t a1, uint64_t a2)
{
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSNumber numberWithUnsignedInteger:a2];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Posted %@ notifications", &v7, 0xCu);
  }

  if (!xpc_activity_set_state(*(a1 + 32), 5))
  {
    v6 = _FLLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100010564();
    }
  }
}

id sub_100007114(uint64_t a1, char a2)
{
  result = [*(a1 + 32) shouldDeliverNotification];
  if ((result & 1) != 0 || (a2 & 1) != 0 || *(a1 + 56) == 1)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v5 postNotificationForFollowUpItem:v6];
  }

  return result;
}

void sub_100007360(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 notification];
  v6 = [v5 activateAction];
  v7 = [v6 identifier];
  LODWORD(v4) = [v4 isEqualToString:v7];

  if (v4)
  {
    [*(a1 + 40) _handleActivateActionFromSource:*(a1 + 48) item:v3];
    goto LABEL_10;
  }

  v8 = *(a1 + 32);
  v9 = [v3 notification];
  v10 = [v9 clearAction];
  v11 = [v10 identifier];
  if ([v8 isEqualToString:v11])
  {

LABEL_6:
    v13 = *(a1 + 40);
    v14 = [v3 notification];
    v15 = [v14 clearAction];
    [v13 _handleExtensionAction:v15 forItem:v3];

    goto LABEL_10;
  }

  v12 = [*(a1 + 32) isEqualToString:@"com.apple.followup.clearActionIdentifier"];

  if (v12)
  {
    goto LABEL_6;
  }

  v16 = _FLLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Activated notification, but it did not match identifier... bummer", v17, 2u);
  }

LABEL_10:
}

void sub_100007634(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isHSA2LoginItem] & 1) == 0 && (objc_msgSend(v3, "isHSA2PasswordResetItem") & 1) == 0)
  {
    [*(a1 + 32) _handleActivateActionFromSource:*(a1 + 40) item:v3];
  }
}

void sub_1000078BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[FLTelemetryFactory sharedTelemetryController];
  [v4 captureActionForItem:v3 withEvent:1 source:*(a1 + 40)];

  v5 = *(a1 + 32);
  v7 = [v3 notification];
  v6 = [v7 clearAction];
  [v5 _handleExtensionAction:v6 forItem:v3];
}

void sub_100007A90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[FLTelemetryFactory sharedTelemetryController];
  [v4 captureActionForItem:v3 withEvent:1 source:*(a1 + 40)];

  v5 = *(a1 + 32);
  v7 = [v3 notification];
  v6 = [v7 clearAction];
  [v5 _handleExtensionAction:v6 forItem:v3];
}

void sub_100007D50(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100001428;
  v18 = sub_1000015B0;
  v2 = [FLHeadlessExtensionLoader alloc];
  v3 = [*(a1 + 32) extensionIdentifier];
  v19 = [v2 initWithIdentifier:v3];

  v4 = [v15[5] remoteInterface];
  if (v4)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100007F14;
    v8[3] = &unk_100020A60;
    v13 = *(a1 + 64);
    v7 = *(a1 + 32);
    v5 = v7.i64[0];
    v9 = vextq_s8(v7, v7, 8uLL);
    v10 = *(a1 + 48);
    v12 = &v14;
    v11 = *(a1 + 56);
    [v4 followUpPerformUpdateWithCompletionHandler:v8];
  }

  else
  {
    v6 = _FLLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100010618();
    }
  }

  _Block_object_dispose(&v14, 8);
}

void sub_100007F14(uint64_t a1, uint64_t a2)
{
  if (a2 != 1 && *(a1 + 72) == 5)
  {
    [*(a1 + 32) _processFollowUpItemNotificationWithExtension:*(a1 + 40) activatedAction:*(a1 + 48)];
  }

  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_1000081D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000081F4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _FLLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100010658();
    }
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100008570(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000106CC(a1, v3, v4);
  }
}

id sub_100008994(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 8))
  {
    v5 = [v3 clientIdentifier];
    v6 = [v5 isEqualToString:*(*(a1 + 32) + 8)];

    if (v6)
    {
      goto LABEL_8;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_9;
  }

  v7 = +[FLApprovedItemsFilter sharedFilter];
  v8 = [v7 approvalStatusForItem:v4];

  if (v8 != 1)
  {
    if (v8 == 2)
    {
      goto LABEL_6;
    }

    [FLApprovedItemsDecorator decorateUnknownItem:v4];
  }

LABEL_8:
  v9 = v4;
LABEL_9:

  return v9;
}

uint64_t sub_100008BB4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100008CA8(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10000900C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000098EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_100009910(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _unsafe_openDatabase:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

void sub_10000A094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A0AC(uint64_t a1)
{
  v2 = [*(a1 + 32) uniqueIdentifier];

  if (v2)
  {
    v3 = +[ItemStore sharedInstance];
    v4 = [v3 queryExecutor];

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000A188;
    v5[3] = &unk_100020C08;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v4 performTransactionBlockAndWait:v5];
  }
}

id sub_10000A188(uint64_t a1)
{
  [*(a1 + 32) setSqlID:{objc_msgSend(*(a1 + 40), "_unsafe_insertFollowUpItem:", *(a1 + 32))}];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) actions];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _unsafe_insertAction:*(*(&v11 + 1) + 8 * v6) item:*(a1 + 32)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 32) notification];

  if (v7)
  {
    v8 = [*(a1 + 40) _unsafe_insertNotificationForItem:*(a1 + 32)];
    v9 = [*(a1 + 32) notification];
    [v9 setSqlID:v8];
  }

  result = [*(a1 + 32) sqlID];
  *(*(*(a1 + 48) + 8) + 24) = result != -1;
  return result;
}

void sub_10000A41C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) uniqueIdentifier];
  sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0);

  v5 = [*(a1 + 32) title];

  if (v5)
  {
    v6 = [*(a1 + 32) title];
    sqlite3_bind_text(a2, 2, [v6 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(a2, 2);
  }

  v7 = [*(a1 + 32) informativeText];

  if (v7)
  {
    v8 = [*(a1 + 32) informativeText];
    sqlite3_bind_text(a2, 3, [v8 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(a2, 3);
  }

  sqlite3_bind_int(a2, 4, [*(a1 + 32) showInSettings]);
  sqlite3_bind_int(a2, 5, [*(a1 + 32) displayStyle]);
  sqlite3_bind_int(a2, 6, [*(a1 + 32) shouldPersistWhenActivated]);
  sqlite3_bind_int(a2, 7, [*(a1 + 32) shouldPersistWhenDismissed]);
  v9 = [*(a1 + 32) _userInfoData];
  v36 = v9;
  if (v9)
  {
    v10 = v9;
    sqlite3_bind_blob(a2, 8, [v36 bytes], objc_msgSend(v36, "length"), 0);
  }

  else
  {
    sqlite3_bind_null(a2, 8);
  }

  v11 = [*(a1 + 32) clientIdentifier];

  if (v11)
  {
    v12 = [*(a1 + 32) clientIdentifier];
    sqlite3_bind_text(a2, 9, [v12 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(a2, 9);
  }

  v13 = [*(a1 + 32) extensionIdentifier];

  if (v13)
  {
    v14 = [*(a1 + 32) extensionIdentifier];
    sqlite3_bind_text(a2, 10, [v14 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(a2, 10);
  }

  v15 = [*(a1 + 32) groupIdentifier];

  if (v15)
  {
    v16 = [*(a1 + 32) groupIdentifier];
    sqlite3_bind_text(a2, 11, [v16 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(a2, 11);
  }

  v17 = [*(a1 + 32) targetBundleIdentifier];

  if (v17)
  {
    v18 = [*(a1 + 32) targetBundleIdentifier];
    sqlite3_bind_text(a2, 12, [v18 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(a2, 12);
  }

  v19 = [*(a1 + 32) representingBundlePath];

  if (v19)
  {
    v20 = [*(a1 + 32) representingBundlePath];
    sqlite3_bind_text(a2, 13, [v20 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(a2, 13);
  }

  v21 = [*(a1 + 32) bundleIconName];

  if (v21)
  {
    v22 = [*(a1 + 32) bundleIconName];
    sqlite3_bind_text(a2, 14, [v22 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(a2, 14);
  }

  v23 = [*(a1 + 32) informativeFooterText];

  if (v23)
  {
    v24 = [*(a1 + 32) informativeFooterText];
    sqlite3_bind_text(a2, 15, [v24 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(a2, 15);
  }

  v25 = [*(a1 + 32) categoryIdentifier];

  if (v25)
  {
    v26 = [*(a1 + 32) categoryIdentifier];
    sqlite3_bind_text(a2, 16, [v26 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(a2, 16);
  }

  v27 = [*(a1 + 32) expirationDate];

  if (v27)
  {
    v28 = [*(a1 + 32) expirationDate];
    [v28 timeIntervalSince1970];
    sqlite3_bind_double(a2, 17, v29);
  }

  else
  {
    sqlite3_bind_null(a2, 17);
  }

  v30 = [*(a1 + 32) accountIdentifier];

  if (v30)
  {
    v31 = [*(a1 + 32) accountIdentifier];
    sqlite3_bind_text(a2, 18, [v31 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(a2, 18);
  }

  v32 = [*(a1 + 32) typeIdentifier];

  if (v32)
  {
    v33 = [*(a1 + 32) typeIdentifier];
    sqlite3_bind_text(a2, 19, [v33 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(a2, 19);
  }

  v34 = [*(a1 + 32) collectionIdentifier];

  if (v34)
  {
    v35 = [*(a1 + 32) collectionIdentifier];
    sqlite3_bind_text(a2, 20, [v35 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(a2, 20);
  }
}

void sub_10000AB90(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) label];
  sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0);

  v5 = [*(a1 + 32) url];
  v6 = [v5 absoluteString];
  sqlite3_bind_text(a2, 2, [v6 UTF8String], -1, 0);

  v7 = [*(a1 + 32) launchActionURL];
  v8 = [v7 absoluteString];
  sqlite3_bind_text(a2, 3, [v8 UTF8String], -1, 0);

  v9 = [*(a1 + 32) _userInfoData];
  v13 = v9;
  if (v9)
  {
    v10 = v9;
    sqlite3_bind_blob(a2, 4, [v13 bytes], objc_msgSend(v13, "length"), 0);
  }

  else
  {
    sqlite3_bind_null(a2, 4);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    sqlite3_bind_int64(a2, 5, [v11 sqlID]);
  }

  else
  {
    sqlite3_bind_null(a2, 5);
  }

  v12 = [*(a1 + 32) identifier];
  sqlite3_bind_text(a2, 6, [v12 UTF8String], -1, 0);
}

void sub_10000B098(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) sqlID]);
  v4 = [*(a1 + 40) title];

  if (v4)
  {
    v5 = [*(a1 + 40) title];
    sqlite3_bind_text(a2, 2, [v5 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(a2, 2);
  }

  v6 = [*(a1 + 40) informativeText];

  if (v6)
  {
    v7 = [*(a1 + 40) informativeText];
    sqlite3_bind_text(a2, 3, [v7 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(a2, 3);
  }

  v8 = [*(a1 + 40) unlockActionLabel];

  if (v8)
  {
    v9 = [*(a1 + 40) unlockActionLabel];
    sqlite3_bind_text(a2, 4, [v9 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(a2, 4);
  }

  v10 = [*(a1 + 40) previousNotificationActionDate];
  [v10 timeIntervalSince1970];
  sqlite3_bind_double(a2, 5, v11);

  v12 = [*(a1 + 40) activateAction];
  v13 = [v12 sqlID];

  if (v13)
  {
    v14 = [*(a1 + 40) activateAction];
    sqlite3_bind_int64(a2, 6, [v14 sqlID]);
  }

  else
  {
    sqlite3_bind_null(a2, 6);
  }

  v15 = [*(a1 + 40) dismissAction];
  v16 = [v15 sqlID];

  if (v16)
  {
    v17 = [*(a1 + 40) dismissAction];
    sqlite3_bind_int64(a2, 7, [v17 sqlID]);
  }

  else
  {
    sqlite3_bind_null(a2, 7);
  }

  v18 = [*(a1 + 40) clearAction];
  v19 = [v18 sqlID];

  if (v19)
  {
    v20 = [*(a1 + 40) clearAction];
    sqlite3_bind_int64(a2, 8, [v20 sqlID]);
  }

  else
  {
    sqlite3_bind_null(a2, 8);
  }

  [*(a1 + 40) frequency];
  if (v21 <= 0.0)
  {
    sqlite3_bind_null(a2, 9);
  }

  else
  {
    [*(a1 + 40) frequency];
    sqlite3_bind_double(a2, 9, v22);
  }

  v23 = [*(a1 + 40) creationDate];
  [v23 timeIntervalSince1970];
  sqlite3_bind_double(a2, 10, v24);

  v25 = [*(a1 + 40) _optionsData];
  v29 = v25;
  if (v25)
  {
    v26 = v25;
    sqlite3_bind_blob(a2, 11, [v29 bytes], objc_msgSend(v29, "length"), 0);
  }

  else
  {
    sqlite3_bind_null(a2, 11);
  }

  v27 = [*(a1 + 40) subtitleText];

  if (v27)
  {
    v28 = [*(a1 + 40) subtitleText];
    sqlite3_bind_text(a2, 12, [v28 UTF8String], -1, 0);
  }

  else
  {
    sqlite3_bind_null(a2, 12);
  }

  if ([*(a1 + 40) sqlID])
  {
    sqlite3_bind_int64(a2, 13, [*(a1 + 40) sqlID]);
  }
}

void sub_10000B5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B5E8(uint64_t a1)
{
  v2 = [FLSQLiteQuery queryWithString:@"DELETE FROM items WHERE id=?"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B710;
  v8[3] = &unk_100020C30;
  v9 = *(a1 + 32);
  [v2 setBindHandler:v8];
  v3 = *(*(a1 + 40) + 8);
  v7 = 0;
  v4 = [v3 performQuery:v2 error:&v7];
  v5 = v7;
  *(*(*(a1 + 48) + 8) + 24) = v4;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v6 = _FLLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100010950();
    }
  }
}

uint64_t sub_10000B710(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) sqlID];

  return sqlite3_bind_int64(a2, 1, v3);
}

id sub_10000B840(uint64_t a1)
{
  result = [*(a1 + 32) _unsafe_insertNotificationForItem:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result != 0;
  return result;
}

void sub_10000B9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B9F8(uint64_t a1)
{
  v2 = [FLSQLiteQuery queryWithString:@"DELETE FROM notifications WHERE item_id=?"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000BB20;
  v8[3] = &unk_100020C30;
  v9 = *(a1 + 32);
  [v2 setBindHandler:v8];
  v3 = *(*(a1 + 40) + 8);
  v7 = 0;
  v4 = [v3 performQuery:v2 error:&v7];
  v5 = v7;
  *(*(*(a1 + 48) + 8) + 24) = v4;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v6 = _FLLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100010950();
    }
  }
}

uint64_t sub_10000BB20(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) sqlID];

  return sqlite3_bind_int64(a2, 1, v3);
}

void sub_10000BE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000BE24(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000BEA0;
  v3[3] = &unk_100020CF0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 _unsafeSelectFollowUpActionsForItem:0 orActionID:0 rowHandler:v3];
}

void sub_10000C040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000C064(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000C0D8;
  v3[3] = &unk_100020D40;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 _unsafeSelectFollowUpNotificationsWithRowHandler:v3];
}

void sub_10000C2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000C2FC(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000C374;
  v4[3] = &unk_100020D68;
  v4[4] = a1[6];
  return [v2 _unsafeSelectFollowUpItemsWithUniqueIdentifiers:v1 rowHandler:v4];
}

void sub_10000C65C(uint64_t a1, sqlite3_stmt *a2)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        sqlite3_bind_text(a2, [*(a1 + 32) indexOfObject:{*(*(&v9 + 1) + 8 * v8), v9}] + 1, objc_msgSend(*(*(&v9 + 1) + 8 * v8), "UTF8String"), -1, 0);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_10000C790(uint64_t a1, sqlite3_stmt *a2, _BYTE *a3)
{
  v6 = [[FLFollowUpItem alloc] initWithoutDefaults];
  [v6 setSqlID:{sqlite3_column_int64(a2, 0)}];
  v7 = [*(a1 + 32) stringFromColumn:1 inStatement:a2];
  [v6 setUniqueIdentifier:v7];

  v8 = [*(a1 + 32) stringFromColumn:2 inStatement:a2];
  [v6 setTitle:v8];

  v9 = [*(a1 + 32) stringFromColumn:3 inStatement:a2];
  [v6 setInformativeText:v9];

  [v6 setShowInSettings:{sqlite3_column_int(a2, 4) != 0}];
  [v6 setDisplayStyle:{sqlite3_column_int(a2, 5)}];
  [v6 setShouldPersistWhenActivated:{sqlite3_column_int(a2, 6) != 0}];
  [v6 setShouldPersistWhenDismissed:{sqlite3_column_int(a2, 7) != 0}];
  v10 = [*(a1 + 32) dataFromColumn:8 inStatement:a2];
  [v6 set_userInfoData:v10];

  v11 = [*(a1 + 32) stringFromColumn:9 inStatement:a2];
  [v6 setClientIdentifier:v11];

  v12 = [*(a1 + 32) stringFromColumn:10 inStatement:a2];
  [v6 setExtensionIdentifier:v12];

  v13 = [*(a1 + 32) stringFromColumn:11 inStatement:a2];
  [v6 setGroupIdentifier:v13];

  v14 = [*(a1 + 32) stringFromColumn:12 inStatement:a2];
  [v6 setTargetBundleIdentifier:v14];

  v15 = [*(a1 + 32) stringFromColumn:13 inStatement:a2];
  [v6 setRepresentingBundlePath:v15];

  v16 = [*(a1 + 32) stringFromColumn:14 inStatement:a2];
  [v6 setBundleIconName:v16];

  v17 = [*(a1 + 32) stringFromColumn:15 inStatement:a2];
  [v6 setInformativeFooterText:v17];

  v18 = [*(a1 + 32) stringFromColumn:16 inStatement:a2];
  [v6 setCategoryIdentifier:v18];

  v19 = [*(a1 + 32) dateFromColumn:17 inStatement:a2];
  [v6 setExpirationDate:v19];

  v20 = [*(a1 + 32) stringFromColumn:18 inStatement:a2];
  [v6 setAccountIdentifier:v20];

  v21 = [*(a1 + 32) stringFromColumn:19 inStatement:a2];
  [v6 setTypeIdentifier:v21];

  v22 = [*(a1 + 32) stringFromColumn:20 inStatement:a2];
  [v6 setCollectionIdentifier:v22];

  v23 = +[NSMutableArray array];
  v24 = *(a1 + 32);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000CBD0;
  v30[3] = &unk_100020D90;
  v25 = v23;
  v31 = v25;
  [v24 _unsafeSelectFollowUpActionsForItem:v6 orActionID:0 rowHandler:v30];
  [v6 setActions:v25];
  v26 = [*(a1 + 32) _unsafeSelectNotificationForFollowUpItem:v6];
  [v6 setNotification:v26];

  v29 = 0;
  v27 = *(a1 + 40);
  if (v27)
  {
    (*(v27 + 16))(v27, v6, &v29);
    v28 = v29;
  }

  else
  {
    v28 = 0;
  }

  *a3 = v28;
}

void sub_10000CCF8(uint64_t a1, sqlite3_stmt *a2, uint8_t *a3)
{
  v6 = objc_alloc_init(FLFollowUpNotification);
  [v6 setSqlID:{sqlite3_column_int64(a2, 0)}];
  v7 = [*(a1 + 32) stringFromColumn:1 inStatement:a2];
  [v6 setTitle:v7];

  v8 = [*(a1 + 32) stringFromColumn:2 inStatement:a2];
  [v6 setInformativeText:v8];

  v9 = [*(a1 + 32) stringFromColumn:3 inStatement:a2];
  [v6 setUnlockActionLabel:v9];

  v10 = [*(a1 + 32) dateFromColumn:4 inStatement:a2];
  [v6 setPreviousNotificationActionDate:v10];

  v11 = sqlite3_column_int64(a2, 5);
  if (v11 >= 1)
  {
    v12 = v11;
    v13 = *(a1 + 32);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10000D040;
    v28[3] = &unk_100020D90;
    v29 = v6;
    [v13 _unsafeSelectFollowUpActionsForItem:0 orActionID:v12 rowHandler:v28];
  }

  v14 = sqlite3_column_int64(a2, 7);
  if (v14)
  {
    v15 = v14;
    v16 = *(a1 + 32);
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10000D04C;
    v26 = &unk_100020D90;
    v27 = v6;
    [v16 _unsafeSelectFollowUpActionsForItem:0 orActionID:v15 rowHandler:&v23];
  }

  [*(a1 + 32) intervalFromColumn:8 inStatement:{a2, v23, v24, v25, v26}];
  [v6 setFrequency:?];
  v17 = [*(a1 + 32) dateFromColumn:9 inStatement:a2];
  [v6 setCreationDate:v17];

  v18 = [*(a1 + 32) dataFromColumn:10 inStatement:a2];
  [v6 set_optionsData:v18];

  v19 = [*(a1 + 32) stringFromColumn:11 inStatement:a2];
  [v6 setSubtitleText:v19];

  v20 = _FLLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found notification: %@", buf, 0xCu);
  }

  buf[0] = 0;
  v21 = *(a1 + 40);
  if (v21)
  {
    (*(v21 + 16))(v21, v6, buf);
    v22 = buf[0];
  }

  else
  {
    v22 = 0;
  }

  *a3 = v22;
}

void sub_10000D2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000D2F0(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) sqlID];

  return sqlite3_bind_int64(a2, 1, v3);
}

void sub_10000D334(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = objc_alloc_init(FLFollowUpNotification);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(*(*(a1 + 40) + 8) + 40) setSqlID:{sqlite3_column_int64(a2, 0)}];
  v7 = [*(a1 + 32) stringFromColumn:1 inStatement:a2];
  [*(*(*(a1 + 40) + 8) + 40) setTitle:v7];

  v8 = [*(a1 + 32) stringFromColumn:2 inStatement:a2];
  [*(*(*(a1 + 40) + 8) + 40) setInformativeText:v8];

  v9 = [*(a1 + 32) stringFromColumn:3 inStatement:a2];
  [*(*(*(a1 + 40) + 8) + 40) setUnlockActionLabel:v9];

  v10 = [*(a1 + 32) dateFromColumn:4 inStatement:a2];
  [*(*(*(a1 + 40) + 8) + 40) setPreviousNotificationActionDate:v10];

  v11 = sqlite3_column_int64(a2, 5);
  if (v11 >= 1)
  {
    v12 = v11;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000D5E8;
    v21[3] = &unk_100020CF0;
    v13 = *(a1 + 32);
    v21[4] = *(a1 + 40);
    [v13 _unsafeSelectFollowUpActionsForItem:0 orActionID:v12 rowHandler:v21];
  }

  v14 = sqlite3_column_int64(a2, 7);
  if (v14)
  {
    v15 = v14;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000D5FC;
    v20[3] = &unk_100020CF0;
    v16 = *(a1 + 32);
    v20[4] = *(a1 + 40);
    [v16 _unsafeSelectFollowUpActionsForItem:0 orActionID:v15 rowHandler:v20];
  }

  [*(a1 + 32) intervalFromColumn:8 inStatement:a2];
  [*(*(*(a1 + 40) + 8) + 40) setFrequency:?];
  v17 = [*(a1 + 32) dateFromColumn:9 inStatement:a2];
  [*(*(*(a1 + 40) + 8) + 40) setCreationDate:v17];

  v18 = [*(a1 + 32) dataFromColumn:10 inStatement:a2];
  [*(*(*(a1 + 40) + 8) + 40) set_optionsData:v18];

  v19 = [*(a1 + 32) stringFromColumn:11 inStatement:a2];
  [*(*(*(a1 + 40) + 8) + 40) setSubtitleText:v19];
}

uint64_t sub_10000D7F0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 sqlID];
  }

  else
  {
    v5 = *(a1 + 40);
  }

  return sqlite3_bind_int64(a2, 1, v5);
}

void sub_10000D844(uint64_t a1, sqlite3_stmt *a2, _BYTE *a3)
{
  v6 = objc_alloc_init(FLFollowUpAction);
  [v6 setSqlID:{sqlite3_column_int64(a2, 0)}];
  v7 = [*(a1 + 32) stringFromColumn:1 inStatement:a2];
  [v6 setLabel:v7];

  v8 = [*(a1 + 32) urlFromColumn:2 inStatement:a2];
  [v6 setUrl:v8];

  v9 = [*(a1 + 32) urlFromColumn:3 inStatement:a2];
  [v6 setLaunchActionURL:v9];

  v10 = [*(a1 + 32) dataFromColumn:4 inStatement:a2];
  [v6 set_userInfoData:v10];

  v11 = [*(a1 + 32) stringFromColumn:5 inStatement:a2];
  [v6 setIdentifier:v11];

  v14 = 0;
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v6, &v14);
    v13 = v14;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;
}

void sub_10000DB60(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000DC0C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.followup.badges", v3);
  v2 = qword_100026BA0;
  qword_100026BA0 = v1;
}

void sub_10000E024(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 notification];
  v5 = [v4 previousNotificationActionDate];
  v6 = [*(a1 + 32) notification];
  [v6 setPreviousNotificationActionDate:v5];

  v7 = [v3 notification];
  v8 = [v7 creationDate];
  v9 = [*(a1 + 32) notification];
  [v9 setCreationDate:v8];

  v10 = _FLLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Replacing existing item %@ with matching identifier", &v11, 0xCu);
  }
}

uint64_t sub_10000E9A0(uint64_t a1, void *a2)
{
  if (!*(a1 + 32))
  {
    return 1;
  }

  v3 = [a2 clientIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_10000EB60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = _FLLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) extensionIdentifier];
      v5 = [*(a1 + 32) uniqueIdentifier];
      *buf = 138412546;
      *&buf[4] = v4;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling followUpPerformUpdateWithCompletionHandler of extension (%@) for item (%@)", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v15 = sub_100001458;
    v16 = sub_1000015C8;
    v6 = [FLHeadlessExtensionLoader alloc];
    v7 = [*(a1 + 32) extensionIdentifier];
    v17 = [v6 initWithIdentifier:v7];

    v8 = [*(*&buf[8] + 40) remoteInterface];
    if (v8)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10000EDD8;
      v10[3] = &unk_100020E78;
      v13 = *(a1 + 56);
      v12 = buf;
      v10[4] = WeakRetained;
      v11 = *(a1 + 40);
      [v8 followUpPerformUpdateWithCompletionHandler:v10];
    }

    else
    {
      v9 = _FLLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100010E6C(v9);
      }

      if (*(a1 + 56) == 1)
      {
        [WeakRetained _didChangeFollowUpItems];
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

void sub_10000EDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000EDD8(uint64_t a1, uint64_t a2)
{
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "followUpPerformUpdateWithCompletionHandler returned result %lu", &v7, 0xCu);
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) _didChangeFollowUpItems];
  }
}

void sub_10000F160(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  os_transaction_needs_more_time();
  [*(a1 + 40) removeObject:v8];
  if (*(a1 + 64) != 1 || [*(a1 + 48) containsObject:v8])
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      [v7 processCurrentItems:v5];
    }

    [ClientInterface refreshBadgesWithItems:v5 forBundleIdentifier:v8];
  }
}

void sub_10000F53C(void *a1)
{
  v2 = [[UISApplicationState alloc] initWithBundleIdentifier:a1[4]];
  v3 = [NSNumber numberWithUnsignedInteger:a1[6]];
  [v2 setBadgeValue:v3];

  v4 = [v2 badgeValue];
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[7];
    v7 = objc_opt_class();
    v8 = a1[4];
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v8;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Badged (%@, %@)", &v10, 0x20u);
  }
}

void sub_10000FB44(id a1, NSNotification *a2)
{
  v2 = _FLLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MC restrictions changed, refreshing badges", v3, 2u);
  }

  [ClientInterface updateBadgeCounts:0];
}

uint64_t sub_1000100BC()
{
  v0 = _FLLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Notified of language change. Will exit when all clear.", v2, 2u);
  }

  return xpc_transaction_exit_clean();
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(FollowUpServer);
  [(FollowUpServer *)v1 start];
  objc_autoreleasePoolPop(v0);
  v2 = +[NSRunLoop mainRunLoop];
  [v2 run];

  return 1;
}

void sub_100010364(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Please file radar, the following item notification is invalid: %@", &v2, 0xCu);
}

void sub_1000103F0(void *a1, NSObject *a2)
{
  v3 = [a1 uniqueIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Keeping %@ on lockscreen", &v4, 0xCu);
}

void sub_100010488(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Bundle id %@ is not allowed as a notifying app id. Will use %@ instead", &v3, 0x16u);
}

void sub_1000106CC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@: XPC Error from client delegate while trying to send an HSA2 login activation callback - %@", &v4, 0x16u);
}

void sub_10001079C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Database %@ wiped...", &v3, 0xCu);
}

void sub_100010A94(uint64_t a1, NSObject *a2, double a3)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "END [%llu] %fs: SelectItemsByIdentifier", &v3, 0x16u);
}

void sub_100010B18(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Item Fetched: %@", &v3, 0xCu);
}

void sub_100010CE4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@: Failed to insert follow up item into database", &v2, 0xCu);
}

void sub_100010D5C(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BEGIN [%llu]: FetchDecoratedItems", &v2, 0xCu);
}

void sub_100010DD4(unint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a1 / 1000000000.0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "END [%llu] %fs: FetchDecoratedItems", &v3, 0x16u);
}

void sub_100010EB0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%@", &v2, 0xCu);
}