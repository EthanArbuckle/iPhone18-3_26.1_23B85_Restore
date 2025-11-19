void sub_1005F08C8(uint64_t a1)
{
  v2 = [*(a1 + 32) _isNGMKeyType];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 endpoint];
    v5 = [v4 publicDeviceIdentityContainer];
    v6 = [v5 ngmPublicDeviceIdentity];

    if (([*(a1 + 32) _isSecKeyType] & 1) == 0)
    {
      if (!v6)
      {
        goto LABEL_11;
      }

LABEL_8:
      v9 = [*(a1 + 32) fullDeviceIdentitySigner];
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = *(a1 + 64);
      v22 = 0;
      [v9 verifySignedData:v10 matchesData:v11 forType:v12 withPublicDeviceIdentity:v6 error:&v22];
      v13 = v22;

      (*(*(a1 + 56) + 16))();
      return;
    }
  }

  else
  {
    if (![v3 _isSecKeyType])
    {
      goto LABEL_11;
    }

    v6 = 0;
  }

  v7 = [*(a1 + 32) endpoint];
  v8 = [v7 applicationPublicDeviceIdentity];

  if (v6)
  {
    goto LABEL_8;
  }

  if (v8)
  {
    v14 = [*(a1 + 32) fullDeviceIdentitySigner];
    v16 = *(a1 + 40);
    v15 = *(a1 + 48);
    v17 = [*(a1 + 32) keyDiversifier];
    v21 = 0;
    [v14 verifySignedData:v16 matchesData:v15 withSecPublicDeviceIdentity:v8 diversifier:v17 error:&v21];
    v18 = v21;

    (*(*(a1 + 56) + 16))();
    return;
  }

LABEL_11:
  v19 = *(a1 + 56);
  v20 = [NSError errorWithDomain:IDSSigningErrorDomain code:10 userInfo:0];
  (*(v19 + 16))(v19, 0, v20);
}

void sub_1005F0C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1005F0C7C(uint64_t a1)
{
  v2 = [*(a1 + 32) _isNGMKeyType];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 endpoint];
    v5 = [v4 publicDeviceIdentityContainer];
    v6 = [v5 ngmPublicDeviceIdentity];

    if (([*(a1 + 32) _isSecKeyType] & 1) == 0)
    {
      if (!v6)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }
  }

  else
  {
    if (![v3 _isSecKeyType])
    {
      goto LABEL_12;
    }

    v6 = 0;
  }

  v7 = [*(a1 + 32) endpoint];
  v8 = [v7 applicationPublicDeviceIdentity];

  if (v6)
  {
LABEL_8:
    v9 = [*(a1 + 32) fullDeviceIdentitySigner];
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 72);
    v13 = *(*(a1 + 64) + 8);
    obj = *(v13 + 40);
    v14 = [v9 verifySignedData:v10 matchesData:v11 forType:v12 withPublicDeviceIdentity:v6 error:&obj];
    objc_storeStrong((v13 + 40), obj);
    *(*(*(a1 + 56) + 8) + 24) = v14;

LABEL_9:
    return;
  }

  if (v8)
  {
    v6 = [*(a1 + 32) fullDeviceIdentitySigner];
    v16 = *(a1 + 40);
    v15 = *(a1 + 48);
    v17 = [*(a1 + 32) keyDiversifier];
    v18 = *(*(a1 + 64) + 8);
    v23 = *(v18 + 40);
    v19 = [v6 verifySignedData:v16 matchesData:v15 withSecPublicDeviceIdentity:v8 diversifier:v17 error:&v23];
    objc_storeStrong((v18 + 40), v23);
    *(*(*(a1 + 56) + 8) + 24) = v19;

    goto LABEL_9;
  }

LABEL_12:
  v20 = [NSError errorWithDomain:IDSSigningErrorDomain code:10 userInfo:0];
  v21 = *(*(a1 + 64) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  _objc_release_x1(v20, v22);
}

uint64_t sub_1005F0F88(int a1)
{
  if ((a1 - 1) < 3)
  {
    return (a1 - 1) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1005F1160(id a1)
{
  v1 = objc_alloc_init(IDSStewieCTMessagingClient);
  v2 = qword_100CBF2F0;
  qword_100CBF2F0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1005F1654(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IDSFoundationLog stewieMessaging];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) identifier];
    if ([v5 success])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = [v5 error];
    v14 = 138413058;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sent iMessage Lite %@ with Success %@, Error %@, Metadata %@", &v14, 0x2Au);
  }

  v11 = *(a1 + 40);
  v12 = [v5 success];
  v13 = [v5 error];
  (*(v11 + 16))(v11, v12, v13);
}

void sub_1005F19C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) shortHandleNumberFromBase64String:a2];
  [v2 addObject:v3];
}

void sub_1005F1A18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IDSFoundationLog stewieMessaging];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    if ([v5 success])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = [v5 error];
    v14 = 138413058;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sent fetch message %@ with Success %@, Error %@, Metadata %@", &v14, 0x2Au);
  }

  v11 = *(a1 + 40);
  v12 = [v5 success];
  v13 = [v5 error];
  (*(v11 + 16))(v11, v12, v13);
}

void sub_1005F1D70(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 success];
  v5 = [v3 error];

  (*(v2 + 16))(v2, v4, v5);
}

void sub_1005F29B8(uint64_t a1)
{
  v2 = +[IDSFoundationLog stewieMessaging];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling ack for incoming offgrid message with metadata %@", buf, 0xCu);
  }

  v4 = *(*(a1 + 40) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005F2AD4;
  block[3] = &unk_100BD7270;
  v6 = *(a1 + 48);
  dispatch_async(v4, block);
}

void sub_1005F2AE4(uint64_t a1)
{
  v2 = +[IDSFoundationLog stewieMessaging];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling ack for incoming summary message with metadata %@", buf, 0xCu);
  }

  v4 = *(*(a1 + 40) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005F2C00;
  block[3] = &unk_100BD7270;
  v6 = *(a1 + 48);
  dispatch_async(v4, block);
}

void sub_1005F4C4C(id a1)
{
  v1 = objc_alloc_init(IDSDMessageStore);
  v2 = qword_100CBF300;
  qword_100CBF300 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1005F5860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

void sub_1005F58B8(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1005F5938;
  v2[3] = &unk_100BE1D00;
  v3 = *(a1 + 40);
  v1 = *(a1 + 64);
  v4 = *(a1 + 56);
  sub_100018E48(v1, v2, *(a1 + 32));
}

void sub_1005F5938(void *a1)
{
  v2 = CSDBRecordStoreProcessStatement();
  *(*(a1[4] + 8) + 24) = CFArrayGetCount(v2);
  if (*(*(a1[4] + 8) + 24) >= 1)
  {
    v3 = 0;
    do
    {
      CFArrayGetValueAtIndex(v2, v3);
      v4 = *(*(a1[5] + 8) + 24);
      CSDBRecordGetID();
      RowidForRecordID = CSDBRecordStoreGetRowidForRecordID();
      if (v4 <= RowidForRecordID)
      {
        v6 = RowidForRecordID;
      }

      else
      {
        v6 = v4;
      }

      *(*(a1[5] + 8) + 24) = v6;
      CSDBRecordIndexOfPropertyNamed();
      Property = CSDBRecordGetProperty();
      v8 = objc_alloc_init(IDSMessageToDelete);
      [v8 setDataProtectionClass:Property];
      CSDBRecordIndexOfPropertyNamed();
      v9 = CSDBRecordCopyProperty();
      [v8 setGUID:v9];
      CSDBRecordIndexOfPropertyNamed();
      v10 = CSDBRecordCopyProperty();
      [v8 setAlternateGUID:v10];
      v11 = IDSDataProtectionClassStringFromDataProtectionClass();
      v12 = [*(*(a1[6] + 8) + 40) objectForKey:v11];
      if (!v12)
      {
        v12 = objc_alloc_init(NSMutableArray);
      }

      [v12 addObject:v8];
      [*(*(a1[6] + 8) + 40) setObject:v12 forKey:v11];
      if (v9)
      {
        CFRelease(v9);
      }

      if (v10)
      {
        CFRelease(v10);
      }

      ++v3;
    }

    while (v3 < *(*(a1[4] + 8) + 24));
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void sub_1005F5B7C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1005F5BF4;
  v2[3] = &unk_100BE1D50;
  v1 = *(a1 + 32);
  v2[4] = *(a1 + 40);
  sub_100011868(@"DELETE FROM outgoing_messages_to_delete WHERE ROWID <= ?;", v2, v1);
}

uint64_t sub_1005F5BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt64();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

void sub_1005F7FD8(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1005F8000(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableString string];
  v5 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005F8104;
  v8[3] = &unk_100BE1D78;
  objc_copyWeak(&v11, (a1 + 40));
  v6 = v4;
  v9 = v6;
  v7 = v3;
  v10 = v7;
  [v5 performBlock:v8 waitUntilDone:1];

  objc_destroyWeak(&v11);
}

void sub_1005F8104(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained database];
  v10 = sub_10033CCB0(v3);

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 database];
  v6 = sub_10061D464(v5);

  v8 = sub_1005F81E8(v7, v10);
  v9 = sub_1005F81E8(v8, v6);
  [*(a1 + 32) appendFormat:@"Database state:\n  Outgoing (account_guid, count)\n%@  Incoming (topic, count)\n%@", v8, v9];
  (*(*(a1 + 40) + 16))();
}

id sub_1005F81E8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [&stru_100C06028 mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 count] >= 2)
        {
          v10 = [v9 objectAtIndexedSubscript:0];
          v11 = [v9 objectAtIndexedSubscript:1];
          [v3 appendFormat:@"    %@  %@\n", v10, v11, v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

uint64_t sub_1005F8374(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005F8420;
  v3[3] = &unk_100BD9D38;
  objc_copyWeak(&v4, (a1 + 40));
  [v1 performBlock:v3 waitUntilDone:1];
  objc_destroyWeak(&v4);
  return 0;
}

void sub_1005F8420(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained database];
  v4 = sub_10033CCB0(v3);

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 database];
  v7 = sub_10061D464(v6);

  v9 = sub_1005F81E8(v8, v4);
  v10 = sub_1005F81E8(v9, v7);
  v11 = +[IDSFoundationLog IDSMessageStore];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Database state:\n  Outgoing (account_guid, count)\n%@  Incoming (topic, count)\n%@", &v12, 0x16u);
  }
}

void sub_1005F85D4(uint64_t a1)
{
  v2 = +[IDSFoundationLog IDSMessageStore];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Performing initial database housekeeping", v4, 2u);
  }

  j__CSDBSqliteSetDefaultPageCacheSize();
  v3 = [*(a1 + 32) database];
  sub_10000BD04(v3);
}

void sub_1005F8750(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) database];
  [v3 ensureDatabaseIsInitialized];

  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = *(a1 + 68) == 1;
  v7 = [*v2 database];
  if (v4)
  {
    v8 = sub_10061D858(v5, v4, v6, v7, *(a1 + 56));
  }

  else
  {
    v8 = sub_10000CF7C(v5, v6, v7, *(a1 + 56));
  }

  v9 = v8;

  if (v9)
  {
    Count = CFArrayGetCount(v9);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
        v23 = 0;
        cf = 0;
        v21 = 0;
        v22 = 0;
        v20 = 0;
        v19 = -1431655766;
        v18 = 0;
        v13 = [*(a1 + 32) database];
        sub_10061DBE8(ValueAtIndex, 0, &v23, &v22, &v21, &cf, 0, &v20, &v18, &v19, v13);

        v14 = JWDecodeDictionary();
        if (v14)
        {
          v15 = [IDSDIncomingMessage alloc];
          v16 = [(IDSDIncomingMessage *)v15 initWithMessage:v14 fromID:v21 topic:v22 guid:v23 isLocal:v20];
          [(IDSDIncomingMessage *)v16 setControlCategory:v19];
          [(IDSDIncomingMessage *)v16 setExpirationDate:v18];
          [*(a1 + 40) addObject:v16];
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v23)
          {
            CFRelease(v23);
            v23 = 0;
          }

          if (v22)
          {
            CFRelease(v22);
            v22 = 0;
          }

          if (v21)
          {
            CFRelease(v21);
            v21 = 0;
          }
        }

        else
        {
          v17 = +[IDSFoundationLog IDSMessageStore];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v26 = v23;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Bad messageData for incoming message %@!", buf, 0xCu);
          }

          [*(a1 + 32) deleteIncomingMessageWithGUID:v23];
        }
      }
    }

    CFRelease(v9);
  }
}

void sub_1005F8AC8(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_1005F8AE4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1005F8AF0);
}

void sub_1005F8BD4(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) database];
  [v3 ensureDatabaseIsInitialized];

  v4 = *(a1 + 48);
  v5 = [*v2 database];
  v6 = sub_10061D5AC(v4, v5, *(a1 + 56));

  if (v6)
  {
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        v20 = 0;
        cf = 0;
        v18 = 0;
        v19 = 0;
        v17 = 0;
        v16 = -1431655766;
        v15 = 0;
        v10 = [*(a1 + 32) database];
        sub_10061DBE8(ValueAtIndex, 0, &v20, &v19, &v18, &cf, 0, &v17, &v15, &v16, v10);

        v11 = JWDecodeDictionary();
        if (v11)
        {
          v12 = [IDSDIncomingMessage alloc];
          v13 = [(IDSDIncomingMessage *)v12 initWithMessage:v11 fromID:v18 topic:v19 guid:v20 isLocal:v17];
          [(IDSDIncomingMessage *)v13 setControlCategory:v16];
          [(IDSDIncomingMessage *)v13 setExpirationDate:v15];
          [*(a1 + 40) addObject:v13];
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v20)
          {
            CFRelease(v20);
            v20 = 0;
          }

          if (v19)
          {
            CFRelease(v19);
            v19 = 0;
          }

          if (v18)
          {
            CFRelease(v18);
            v18 = 0;
          }
        }

        else
        {
          v14 = +[IDSFoundationLog IDSMessageStore];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v23 = v20;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Bad messageData for incoming message %@!", buf, 0xCu);
          }

          [*(a1 + 32) deleteIncomingMessageWithGUID:v20];
        }
      }
    }

    CFRelease(v6);
  }
}

void sub_1005F8F1C(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_1005F8F38(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1005F8F44);
}

void sub_1005F92E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, os_activity_scope_state_s state, char a23)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_1005F931C(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = +[NSString stringGUID];
  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  v26 = 0;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v25 = _os_activity_create(&_mh_execute_header, "Finished storing message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v25, &state);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 84);
  v9 = *(a1 + 64);
  v10 = *(a1 + 80);
  v11 = *(a1 + 85);
  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) database];
  v14 = v13;
  if (v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = &stru_100C06028;
  }

  v16 = sub_10061CEC0(0, v3, v12, v15, v6, v5, v8, v9, v10, v11 == 2, &v26, v13);

  v17 = v16 != 0;
  if (v16)
  {
    CFRelease(v16);
  }

  if (*(a1 + 72))
  {
    v18 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005F9548;
    block[3] = &unk_100BE1E18;
    v21 = *(a1 + 72);
    v22 = v26;
    v23 = v17;
    v19 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_async(v18, v19);
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

void sub_1005F9524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_activity_scope_state_s state, char a20)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_1005F9548(uint64_t a1)
{
  v1 = *(a1 + 40);
  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void sub_1005FA52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005FA544(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v6 = [*(a1 + 32) database];
  v3 = sub_10033CDF8(v6);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1005FA6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005FA6F0(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) database];
  v5 = sub_10033CF40(v3, v4, 0);

  v6 = [*(a1 + 32) _createOutgoingMessageRecordsFromSQLRecords:v5 includeMessagePayloads:0];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (v5)
  {

    CFRelease(v5);
  }
}

void sub_1005FA8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005FA908(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = [*(a1 + 32) database];
  v6 = sub_10033D130(v4, v3, v5, 0);

  v7 = [*(a1 + 32) _createOutgoingMessageRecordsFromSQLRecords:v6 includeMessagePayloads:0];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (v6)
  {

    CFRelease(v6);
  }
}

void sub_1005FAAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005FAAD0(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) database];
  v5 = sub_10000FF48(v3, v4, 0);

  v6 = [*(a1 + 32) _createOutgoingMessageRecordsFromSQLRecords:v5 includeMessagePayloads:0];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (v5)
  {

    CFRelease(v5);
  }
}

void sub_1005FAC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005FAC94(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = *(a1 + 48);
  v7 = [*(a1 + 32) database];
  v4 = sub_100010248(v3, v7);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1005FAE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005FAEA0(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) database];
  v7 = sub_10033D364(v4, v3, v5, v6, 0);

  v8 = [*(a1 + 32) _createOutgoingMessageRecordsFromSQLRecords:v7 includeMessagePayloads:0];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (v7)
  {

    CFRelease(v7);
  }
}

void sub_1005FB0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005FB0EC(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = [*(a1 + 32) database];
  v8 = sub_10033D5CC(v4, v5, v3, v6, v7, 0);

  v9 = [*(a1 + 32) _createOutgoingMessageRecordsFromSQLRecords:v8 includeMessagePayloads:0];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (v8)
  {

    CFRelease(v8);
  }
}

void sub_1005FB340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005FB358(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = [*(a1 + 32) database];
  v8 = sub_10033D89C(v4, v5, v3, v6, v7, *(a1 + 96), *(a1 + 80), *(a1 + 88));

  v9 = [*(a1 + 32) _createOutgoingMessageRecordsFromSQLRecords:v8 includeMessagePayloads:*(a1 + 96)];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (v8)
  {

    CFRelease(v8);
  }
}

void sub_1005FB528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005FB540(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v8 = [*(a1 + 32) database];
  v5 = sub_10000B4B0(1000, v3, v4, v8, 0);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1005FB708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005FB720(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v8 = [*(a1 + 32) database];
  v5 = sub_10000B4B0(1000, v3, v4, v8, *(a1 + 40));
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1005FB8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005FB8EC(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v6 = [*(a1 + 32) database];
  v3 = sub_10000B4B0(1000, 300, 0, v6, *(a1 + 40));
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1005FBB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005FBB84(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = *(a1 + 88);
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = *(a1 + 89);
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = [*(a1 + 32) database];
  if (v5)
  {
    v11 = sub_10033DBE8(v4, v5, v6, v9, v7, v8, v10, v3);
  }

  else
  {
    v11 = sub_10033E680(v4, v6, v9, v7, v8, v10, v3);
  }

  v12 = v11;

  v13 = [*(a1 + 32) _createOutgoingMessageRecordsFromSQLRecords:v12 includeMessagePayloads:v3];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if (v12)
  {

    CFRelease(v12);
  }
}

void sub_1005FBE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005FBE58(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = [*(a1 + 32) database];
  if (v4)
  {
    v10 = sub_10033E098(v3, v4, v5, v8, v6, v7, v9, 1, *(a1 + 56));
  }

  else
  {
    v10 = sub_10033EA00(v3, v5, v8, v6, v7, v9, 1, *(a1 + 56));
  }

  v11 = v10;

  v12 = [*(a1 + 32) _createOutgoingMessageRecordsFromSQLRecords:v11 includeMessagePayloads:1];
  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  if (v11)
  {

    CFRelease(v11);
  }
}

void sub_1005FC0EC(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) database];
  [v3 ensureDatabaseIsInitialized];

  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = [*v2 database];
  v7 = sub_10001BD74(v4, v5, v6);

  if (v7)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = objc_autoreleasePoolPush();
          v13 = JWDecodeArray();
          if ([v13 count])
          {
            [*(a1 + 48) addObjectsFromArray:v13];
          }

          objc_autoreleasePoolPop(v12);
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

void sub_1005FC3F4(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = +[IDSFoundationLog IDSMessageStore];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Performing MarkingLocalDestiations with accounts %@ and device %@", &v9, 0x16u);
  }

  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = [*(a1 + 32) database];
  sub_10033F054(v7, v6, v8);
}

void sub_1005FC5B8(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = +[IDSFoundationLog IDSMessageStore];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Marking all pending delete messages for account %@", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = [*(a1 + 32) database];
  sub_10033F1BC(v6, v5, v7);
}

void sub_1005FC7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005FC7B8(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) database];
  v5 = sub_1000105C0(v3, v4, 0);

  v6 = [*(a1 + 32) _createOutgoingMessageRecordsFromSQLRecords:v5 includeMessagePayloads:0];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (v5)
  {

    CFRelease(v5);
  }
}

void sub_1005FC99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005FC9B4(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) database];
  v7 = sub_100010CEC(v3, v5, v4, v6, 0);

  v8 = [*(a1 + 32) _createOutgoingMessageRecordsFromSQLRecords:v7 includeMessagePayloads:0];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (v7)
  {

    CFRelease(v7);
  }
}

void sub_1005FCB24(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) database];
  sub_10033F89C(v3, v4);
}

void sub_1005FCC04(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  LODWORD(v2) = *(a1 + 40);
  v3 = [*(a1 + 32) database];
  sub_10033F324(v2, v3);
}

void sub_1005FCD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005FCD3C(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = [*(a1 + 32) database];
  *(*(*(a1 + 40) + 8) + 24) = sub_10033F3A8(v3);
}

void sub_1005FCE20(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = [*(a1 + 32) database];
  sub_10033F4B4(v3);
}

void sub_1005FD4F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    v11 = +[IDSFoundationLog IDSMessageStore];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10092CBE4();
    }

    objc_end_catch();
    JUMPOUT(0x1005FD344);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FD5AC(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 129))
    {
      v3 = 1;
    }

    else
    {
      [*(a1 + 40) accountUUID];
      [*(a1 + 40) priority];
      v4 = [*(a1 + 32) database];
      v5 = sub_10001E2FC();

      v6 = +[IDSFoundationLog IDSMessageStore];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = @"NO";
        v8 = *(a1 + 48);
        if (v5)
        {
          v7 = @"YES";
        }

        *buf = 138412546;
        v110 = v8;
        v111 = 2112;
        v112 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asked to send Message with guid: %@  database check for similiar messages that should be sent first says %@", buf, 0x16u);
      }

      v3 = v5 ^ 1;
    }
  }

  else
  {
    v3 = 0;
  }

  if ([*(a1 + 40) daemonDeathResend] && (v9 = *(a1 + 48), v10 = objc_msgSend(*(a1 + 40), "alternateCallbackID"), objc_msgSend(*(a1 + 32), "database"), v11 = objc_claimAutoreleasedReturnValue(), LODWORD(v9) = sub_10033CB34(v9, v10, v11), v11, v9))
  {
    v12 = +[IDSFoundationLog IDSMessageStore];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      v14 = [*(a1 + 40) alternateCallbackID];
      *buf = 138412546;
      v110 = v13;
      v111 = 2112;
      v112 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "We already have message with guid %@ alternate %@ in the database, dropping this redundant resend without calling completion.", buf, 0x16u);
    }
  }

  else
  {
    v15 = [*(a1 + 40) queueOneIdentifier];

    if (v15)
    {
      v16 = [*(a1 + 40) queueOneIdentifier];
      v17 = [*(a1 + 32) database];
      sub_1000260C4(v16, v17);
    }

    v18 = *(a1 + 48);
    v103 = v3;
    if ([v18 length])
    {
      v101 = v18;
    }

    else
    {
      v19 = +[NSString stringGUID];

      v101 = v19;
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v100 = v20;
    v102 = [*(a1 + 40) expirationDate];
    [v102 timeIntervalSinceReferenceDate];
    v99 = v21;
    +[NSDate timeIntervalSinceReferenceDate];
    v91 = v22;
    v23 = [*(a1 + 56) length];
    v24 = &v23[[*(a1 + 64) length]];
    v98 = [*(a1 + 72) length] + v24;
    v84 = [*(a1 + 40) wantsFirewallDonation];
    v25 = [*(a1 + 40) sendReasonContainer];
    v82 = [v25 reasonString];

    v97 = [*(a1 + 40) alternateCallbackID];
    v96 = [*(a1 + 40) accountUUID];
    v95 = [*(a1 + 40) fromID];
    v94 = *(a1 + 56);
    v93 = *(a1 + 64);
    v92 = *(a1 + 72);
    v89 = *(a1 + 80);
    v88 = [*(a1 + 40) dataToEncrypt];
    v87 = [*(a1 + 40) encryptPayload];
    v86 = [*(a1 + 40) compressPayload];
    v85 = [*(a1 + 40) useDictAsTopLevel];
    v83 = [*(a1 + 40) wantsResponse];
    v90 = [*(a1 + 40) command];
    v81 = [v90 integerValue];
    v80 = [*(a1 + 40) wantsDeliveryStatus];
    v79 = *(a1 + 88);
    v78 = [*(a1 + 40) messageUUID];
    v77 = [*(a1 + 40) priority];
    v76 = [*(a1 + 40) identifier];
    v75 = [*(a1 + 40) localDelivery];
    v74 = [*(a1 + 40) peerResponseIdentifier];
    v73 = [*(a1 + 40) expectsPeerResponse];
    v72 = [*(a1 + 40) wantsAppAck];
    v70 = [*(a1 + 40) nonWaking];
    v69 = [*(a1 + 40) nonCloudWaking];
    v68 = [*(a1 + 40) fireAndForget];
    v67 = *(a1 + 96);
    v65 = [*(a1 + 40) bypassDuet];
    v64 = [*(a1 + 40) queueOneIdentifier];
    v63 = [*(a1 + 40) enforceRemoteTimeouts];
    v62 = [*(a1 + 40) mainAccountUUID];
    v60 = [*(a1 + 40) localDestinationDeviceUUID];
    v71 = [*(a1 + 40) messageType];
    v58 = [v71 integerValue];
    v57 = [*(a1 + 40) alwaysSkipSelf];
    v55 = [*(a1 + 40) alwaysIncludeSelf];
    v66 = [*(a1 + 40) pushPriority];
    v54 = [v66 longValue];
    v53 = [*(a1 + 40) liveMessageDelivery];
    v52 = [*(a1 + 40) requireBluetooth];
    v51 = [*(a1 + 40) requireLocalWiFi];
    v50 = [*(a1 + 40) wantsProgress];
    v26 = [*(a1 + 40) ignoreMaxRetryCount];
    v27 = [*(a1 + 40) wantsCertifiedDelivery];
    v61 = [*(a1 + 40) originalTimestamp];
    v28 = [v61 integerValue];
    v29 = *(a1 + 104);
    v59 = [*(a1 + 40) sendMode];
    v30 = [v59 integerValue];
    v56 = [*(a1 + 40) deliveryMinimumTimeDelay];
    v31 = [v56 integerValue];
    v32 = [*(a1 + 40) deliveryMinimumTime];
    v33 = [v32 integerValue];
    v34 = [*(a1 + 32) database];
    LOBYTE(v49) = v84;
    v48 = v29;
    BYTE5(v47) = v27;
    BYTE4(v47) = v26;
    BYTE3(v47) = v50;
    BYTE2(v47) = v51;
    BYTE1(v47) = v52;
    LOBYTE(v47) = v53;
    BYTE1(v46) = v55;
    LOBYTE(v46) = v57;
    LOBYTE(v44) = v63;
    LOBYTE(v45) = 0;
    LOBYTE(v43) = v65;
    BYTE4(v42) = v68;
    BYTE3(v42) = v69;
    BYTE2(v42) = v70;
    BYTE1(v42) = v72;
    LOBYTE(v42) = v73;
    LOBYTE(v41) = v75;
    LOBYTE(v40) = v103;
    LOBYTE(v39) = v80;
    BYTE3(v38) = v83;
    BYTE2(v38) = v85;
    BYTE1(v38) = v86;
    LOBYTE(v38) = v87;
    v12 = v101;
    v35 = sub_10001E30C(0, v101, v97, v96, v95, v94, v93, v92, v89, v88, v38, v99, v81, v39, v79, v78, v77, v100, v40, v76, v41, v74, v42, v98, v67, v43, v64, v44, v62, v45, v60, v91, v58, v46, v54, v47, v28, v48, v49, v30, v31, v33, v82, v34);

    if (v35)
    {
      CFRelease(v35);
    }

    v36 = *(a1 + 120);
    if (v36)
    {
      v37 = *(a1 + 112);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1005FDDA8;
      block[3] = &unk_100BE1FF8;
      v106 = v36;
      v105 = *(a1 + 48);
      v107 = v35 != 0;
      v108 = v103;
      dispatch_async(v37, block);
    }
  }
}

void sub_1005FDE74(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  LOBYTE(v2) = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) database];
  sub_10033EE90(v3, v2, v4);
}

void sub_1005FDF60(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = [*(a1 + 32) database];
  sub_10033EF58(v3);
}

void sub_1005FE05C(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = [*(a1 + 32) database];
  sub_10033EF78(v3, *(a1 + 40));
}

void sub_1005FE188(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) database];
  sub_10033F5B8(v2, v3, *(a1 + 48));
}

void sub_1005FE368(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = [*(a1 + 32) database];
  sub_100018C94(v4, v3, v5, *(a1 + 56));

  v6 = CSDBGetMobileUserDirectory();
  if (v6)
  {
    v7 = [NSString stringWithUTF8String:v6];
  }

  else
  {
    v7 = @"~";
  }

  v11[0] = v7;
  v11[1] = @"/Library/IdentityServices/files/";
  v11[2] = *(a1 + 40);
  v8 = [NSArray arrayWithObjects:v11 count:3];
  v9 = [NSString pathWithComponents:v8];

  if (v6)
  {
  }

  v10 = +[NSFileManager defaultManager];
  [v10 removeItemAtPath:v9 error:0];
}

void sub_1005FE55C(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) database];
  sub_100020348(v3, v4);
}

void sub_1005FE650(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) database];
  sub_1000118F0(v3, v4, v5);
}

void sub_1005FE7C4(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) incomingExpiredRestrictedMessages:0 success:*(a1 + 48)];
  [v3 addObjectsFromArray:v4];

  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) database];
  sub_10061DB30(v5, v6);
}

void sub_1005FE918(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = [*(a1 + 32) database];
  sub_10061D368(v4, v3, v5);
}

void sub_1005FEA30(uint64_t a1)
{
  v1 = [*(a1 + 32) database];
  sub_1006B74B4(v1);
}

id sub_1005FEDEC(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) database];
  sub_10000BD04(v2);

  return [*(a1 + 32) _setDatabaseCloseTimer];
}

id sub_1005FEF78(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) database];
  sub_10000BD04(v2);

  return [*(a1 + 32) _setDatabaseCloseTimer];
}

void sub_1005FF088(id a1)
{
  v1 = objc_alloc_init(IDSDMessageStoreMap);
  v2 = qword_100CBF308;
  qword_100CBF308 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1005FF610(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 receivedStewieEnabledChanged:*(a1 + 32)];
}

void sub_1005FF7CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005FF8A8;
  block[3] = &unk_100BD6E18;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void sub_1005FF8A8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v32 = v3;
      v4 = "Fetched session key updates from CT with error { error: %@ }";
      v5 = v2;
      v6 = 12;
LABEL_4:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v4, buf, v6);
    }
  }

  else
  {
    v7 = [*(a1 + 40) keys];
    v8 = [v7 count];

    if (!v8)
    {
      v2 = +[IDSFoundationLog stewieProvisioning];
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      *buf = 0;
      v4 = "Fetched empty session key update from CT - nothing to update";
      v5 = v2;
      v6 = 2;
      goto LABEL_4;
    }

    v2 = objc_alloc_init(NSMutableArray);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = a1;
    obj = [*(a1 + 40) keys];
    v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          v13 = v2;
          if (*v27 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [IDSCTTransportKey alloc];
          v16 = [v14 key];
          v17 = [v14 key_epki];
          v18 = [v14 index];
          v19 = [v14 retiredKey_epki];
          v20 = -[IDSCTTransportKey initWithKey:epki:forIdx:repki:lastResort:](v15, "initWithKey:epki:forIdx:repki:lastResort:", v16, v17, v18, v19, [v14 last_resort]);

          v2 = v13;
          [v13 addObject:v20];
        }

        v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    v21 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v2 count];
      *buf = 134217984;
      v32 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Fetched session key updates from CT - forwarding %ld keys to key manager", buf, 0xCu);
    }

    v23 = [*(v24 + 48) delegate];
    [v23 stewieCTClient:*(v24 + 48) receivedSessionKeyUpdate:v2];
  }

LABEL_18:
}

void sub_1006002C8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "setStewieBlocked finished { error: %@ }", &v4, 0xCu);
  }
}

void sub_100600494(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 hwSupport], v5);
}

void sub_100605A4C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {

    objc_end_catch();
    JUMPOUT(0x100605978);
  }

  _Unwind_Resume(a1);
}

void sub_1006075B0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x100607280);
  }

  _Unwind_Resume(a1);
}

void sub_1006085C4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = v4;
  if (v4 && a3)
  {
    v6 = v4;
    IMLogRegisterStateToSysdiagnoseBlock();
  }
}

id sub_100608670(uint64_t a1)
{
  if (+[IDSUserManagement isThreadDataSeparated])
  {
    v2 = +[IMIDSLog daemon];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "IMLogRegisterStateToSysdiagnoseBlock invoked in a data separated context -- dropping", v5, 2u);
    }

    v3 = 0;
  }

  else
  {
    v3 = (*(*(a1 + 32) + 16))();
  }

  return v3;
}

void sub_100608AE4(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555908];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setService:*(a1 + 40)];
    [v3 setIsToDefaultPairedDevice:*(a1 + 72)];
    [v3 setMessageSize:*(a1 + 48)];
    [v3 setLinkType:*(a1 + 56)];
    [v3 setPriority:*(a1 + 64)];
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_100608C6C(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2588673];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setService:*(a1 + 40)];
    [v3 setPayloadSize:*(a1 + 48)];
    [v3 setDeltaTime:*(a1 + 56)];
    [v3 setPriority:*(a1 + 64)];
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_100608E64(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555909];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setService:*(a1 + 40)];
    [v3 setIsToDefaultPairedDevice:*(a1 + 88)];
    [v3 setMessageSize:*(a1 + 48)];
    [v3 setLinkType:*(a1 + 56)];
    [v3 setDeliveryError:*(a1 + 64)];
    [v3 setRTT:*(a1 + 72)];
    [v3 setPriority:*(a1 + 80)];
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_100609054(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555910];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setService:*(a1 + 40)];
    [v3 setIsFromDefaultPairedDevice:*(a1 + 72)];
    [v3 setMessageSize:*(a1 + 48)];
    [v3 setLinkType:*(a1 + 56)];
    [v3 setPriority:*(a1 + 64)];
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_1006091DC(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555911];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setService:*(a1 + 40)];
    [v3 setIsToDefaultPairedDevice:*(a1 + 64)];
    [v3 setOpenError:*(a1 + 48)];
    [v3 setSocketError:*(a1 + 56)];
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_1006093EC(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555912];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setService:*(a1 + 40)];
    [v3 setIsToDefaultPairedDevice:*(a1 + 96)];
    [v3 setCloseError:*(a1 + 48)];
    [v3 setSocketError:*(a1 + 56)];
    [v3 setBytesSent:*(a1 + 64)];
    [v3 setPacketsSent:*(a1 + 72)];
    [v3 setBytesReceived:*(a1 + 80)];
    [v3 setPacketsReceived:*(a1 + 88)];
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_100609598(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2588677];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setType:*(a1 + 48)];
    [v3 setDuration:*(a1 + 56)];
    [v3 setResult:*(a1 + 64)];
    if (*(a1 + 40))
    {
      [v3 setClient:?];
    }

    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_100609718(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2588678];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setService:*(a1 + 40)];
    [v3 setPriority:*(a1 + 48)];
    [v3 setDuration:*(a1 + 56)];
    [v3 setResult:*(a1 + 64)];
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_100609854(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2588680];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setRecommendedLinkType:*(a1 + 40)];
    [v3 setPrimaryLinkType:*(a1 + 44)];
    [v3 setMagnetState:*(a1 + 48)];
    [v3 setInfraWiFiState:*(a1 + 52)];
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_100609A00(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555914];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setDuration:*(a1 + 56)];
    [v3 setResult:*(a1 + 64)];
    [v3 setHasRecipientAccepted:*(a1 + 68)];
    [v3 setPayloadSize:*(a1 + 72)];
    [v3 setTopic:*(a1 + 40)];
    [v3 setService:*(a1 + 48)];
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_100609B84(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2588681];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setDuration:*(a1 + 40)];
    [v3 setResultCode:*(a1 + 48)];
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_100609CD8(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2588682];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setDuration:*(a1 + 40)];
    [v3 setResultCode:*(a1 + 48)];
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_100609E10(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2588685];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setResultCode:*(a1 + 40)];
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_100609F90(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555933];
  if (v2)
  {
    v5 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setTimestamp:{(ceil(objc_msgSend(*(*(a1 + 32) + OBJC_IVAR___IDSAWDLogging__AWDServerConnection), "getAWDTimestamp") / 15.0) * 15.0)}];
    [v3 setFromStorage:*(a1 + 72)];
    [v3 setServertimestamp:(ceil(*(a1 + 56) / 15.0) * 15.0)];
    [v3 setLocaltimedelta:(ceil(*(a1 + 64) / 15.0) * 15.0)];
    if (*(a1 + 40))
    {
      [v3 setServiceIdentifier:?];
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      [v3 setAccountType:{objc_msgSend(v4, "unsignedIntegerValue")}];
    }

    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v5];

    v2 = v5;
  }
}

void sub_10060A14C(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555930];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setCorrectFramesSinceLastCorruption:*(a1 + 40)];
    [v3 setCorrectRawBytesSinceLastCorruption:*(a1 + 48)];
    [v3 setDiscardedRawBytes:*(a1 + 56)];
    [v3 setRecoveryTimeInMs:*(a1 + 64)];
    [v3 setLinkType:*(a1 + 72)];
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_10060A4F4(id a1)
{
  v1 = objc_alloc_init(IDSDSessionActiveParticipantsCache);
  v2 = qword_100CBF320;
  qword_100CBF320 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10060A740(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

void sub_10060B6CC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if (([v10 deniedToSend] & 1) == 0)
  {
    v7 = *(a1 + 32);
    if (!v7 || ([v10 topic], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "containsObject:", v8), v8, (v9 & 1) == 0))
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
    }
  }
}

id sub_10060D0B0(uint64_t a1)
{
  result = [*(a1 + 32) networkCheckOverrideBehavior];
  qword_100CBF328 = result;
  return result;
}

id sub_10060D0D4(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 40) + 16))(*(a1 + 40), a2 != 0);
  v3 = *(a1 + 32);

  return [v3 setAvailability:0];
}

void sub_10060D380(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed creating local data, bailing...", v13, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = +[IDSUTunController sharedInstance];
    v9 = [*(a1 + 32) uniqueID];
    v10 = [*(a1 + 32) invitationManager];
    v11 = [v10 remoteBlob];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10060D590;
    v14[3] = &unk_100BE2338;
    v16 = *(a1 + 40);
    v15 = v5;
    [v8 processRemoteConnectionDataForDevice:v9 remoteConnectionData:v11 completionHandler:v14];
  }
}

void sub_10060D590(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finished connectivity check with error %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

void sub_10060E840(uint64_t a1)
{
  v2 = [*(a1 + 32) inviteTimer];
  [v2 invalidate];

  [*(a1 + 32) setInviteTimer:0];
  v3 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) inviteTimeout];
    v11 = 134217984;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting invite timeout to %f seconds", &v11, 0xCu);
  }

  v5 = [IMTimer alloc];
  [*(a1 + 32) inviteTimeout];
  v7 = v6;
  v8 = *(a1 + 32);
  v9 = im_primary_queue();
  v10 = [v5 initWithTimeInterval:@"SessionInviteTimeout" name:1 shouldWake:v8 target:"_inviteTimedOut" selector:0 userInfo:v9 queue:v7];
  [*(a1 + 32) setInviteTimer:v10];
}

void sub_10060EBD4(uint64_t a1)
{
  v2 = [*(a1 + 32) inviteTimer];

  if (v2)
  {
    v3 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing invitation timeout timer", v5, 2u);
    }

    v4 = [*(a1 + 32) inviteTimer];
    [v4 invalidate];

    [*(a1 + 32) setInviteTimer:0];
  }
}

void sub_10060ED18(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionTimer];

  if (v2)
  {
    v3 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing connection timeout timer", v5, 2u);
    }

    v4 = [*(a1 + 32) connectionTimer];
    [v4 invalidate];

    [*(a1 + 32) setConnectionTimer:0];
  }
}

void sub_10060EE5C(uint64_t a1)
{
  v2 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) connectionTimeout];
    *buf = 134217984;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting connection timeout to %f seconds", buf, 0xCu);
  }

  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) connectionTimeout];
    *buf = 134217984;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting connection timeout to %f seconds", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      [*(a1 + 32) connectionTimeout];
      v15 = v6;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        [*(a1 + 32) connectionTimeout];
        _IDSLogV();
      }
    }
  }

  v7 = [IMTimer alloc];
  v9 = *(a1 + 32);
  v8 = (a1 + 32);
  [v9 connectionTimeout];
  v11 = v10;
  v12 = *v8;
  v13 = im_primary_queue();
  v14 = [v7 initWithTimeInterval:@"SessionConnectionTimeout" name:1 shouldWake:v12 target:"_connectionTimedOut" selector:0 userInfo:v13 queue:v11];
  [*v8 setConnectionTimer:v14];
}

void sub_10060F278(uint64_t a1)
{
  v1 = [*(a1 + 32) packetLossTimer];

  if (v1)
  {
    v2 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Clearing session packet loss timer", v3, 2u);
    }
  }
}

void sub_10060F394(uint64_t a1)
{
  v2 = [*(a1 + 32) endSessionTimer];

  if (v2)
  {
    v3 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing end session timeout timer", v5, 2u);
    }

    v4 = [*(a1 + 32) endSessionTimer];
    [v4 invalidate];

    [*(a1 + 32) setEndSessionTimer:0];
  }
}

void sub_10060F4D4(uint64_t a1)
{
  v2 = [*(a1 + 32) endSessionTimer];
  [v2 invalidate];

  [*(a1 + 32) setEndSessionTimer:0];
  v3 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) endSessionTimeout];
    v10 = 134217984;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting end session timeout to %f seconds", &v10, 0xCu);
  }

  v5 = [IMTimer alloc];
  v6 = *(a1 + 32);
  v7 = *(v6 + 136);
  v8 = im_primary_queue();
  v9 = [v5 initWithTimeInterval:@"EndSessionTimeout" name:1 shouldWake:v6 target:"_endSessionTimedOut" selector:0 userInfo:v8 queue:v7];
  [*(a1 + 32) setEndSessionTimer:v9];
}

void sub_10060F840(uint64_t a1)
{
  v2 = [*(a1 + 32) reConnectTimer];

  if (v2)
  {
    v3 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing reconnect timeout timer", v5, 2u);
    }

    v4 = [*(a1 + 32) reConnectTimer];
    [v4 invalidate];

    [*(a1 + 32) setReConnectTimer:0];
  }
}

void sub_10060F984(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) reConnectTimeout];
    *buf = 134217984;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting re-connect timeout for %f seconds", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      [*(a1 + 32) reConnectTimeout];
      v13 = v4;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        [*(a1 + 32) reConnectTimeout];
        _IDSLogV();
      }
    }
  }

  v5 = [IMTimer alloc];
  v7 = *(a1 + 32);
  v6 = (a1 + 32);
  [v7 reConnectTimeout];
  v9 = v8;
  v10 = *v6;
  v11 = im_primary_queue();
  v12 = [v5 initWithTimeInterval:@"SessionReConnectTimeout" name:1 shouldWake:v10 target:"_reConnectTimedOut" selector:0 userInfo:v11 queue:v9];
  [*v6 setReConnectTimer:v12];
}

void sub_100611BB0(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = +[IMRGLog warning];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_10092D398(a1);
    }

    goto LABEL_8;
  }

  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) message];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "  Successfully signed, sending (de)registration message: %@", &v8, 0xCu);
  }

  v6 = [*(a1 + 32) sendBlock];

  if (v6)
  {
    v3 = [*(a1 + 32) sendBlock];
    v7 = [*(a1 + 32) message];
    (*(v3 + 16))(v3, v7);

LABEL_8:
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100612014(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setValidationSession:v5];
  [*(a1 + 32) setValidationContextDisabled:1];
  [*(a1 + 32) setIsBuildingContext:0];
  if (v6)
  {
    v7 = +[IMRGLog warning];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10092D420();
    }

    [*(a1 + 40) __failValidationQueueForSubsystemMechanism:*(a1 + 48)];
  }

  else
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully initialized validation session for request {validationSession: %@}", &v9, 0xCu);
    }

    [*(a1 + 40) __flushValidationQueueForSubsystemMechanism:*(a1 + 48)];
  }
}

void sub_100612380(uint64_t a1, void *a2, void *a3, unint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v48 = a5;
  v11 = v9;
  v12 = +[IMRGLog registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *&buf[4] = a4;
    LOWORD(v73) = 2112;
    *(&v73 + 2) = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "  Received cert request response with result: %d   error: %@", buf, 0x12u);
  }

  if (a4 < 2 || a4 == 200)
  {
    v13 = [v11 responseCertificateData];
    v14 = v13;
    if (!v13)
    {
      v21 = +[IMRGLog warning];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_10092D640();
      }

      [*(a1 + 32) setIsBuildingContext:0];
      v64 = _NSConcreteStackBlock;
      v65 = 3221225472;
      v66 = sub_100612B78;
      v67 = &unk_100BD7978;
      v22 = *(a1 + 48);
      v68 = *(a1 + 40);
      v69 = v22;
      im_dispatch_after_primary_queue();
      goto LABEL_46;
    }

    v63 = 0;
    v62 = 0;
    *buf = 0;
    *&v73 = buf;
    *(&v73 + 1) = 0x2020000000;
    v74 = 0;
    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x2020000000;
    v61 = 0;
    if ([v13 length])
    {
      if ([v14 length])
      {
        v15 = +[IMRGLog registration];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v70 = 138412290;
          v71 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Calling NACInit with: %@", v70, 0xCu);
        }

        v16 = v14;
        sub_100913AD0([v14 bytes], objc_msgSend(v14, "length"));
        if (v17)
        {
          v18 = v73;
          v19 = *(v73 + 24);
          if (v19)
          {
            sub_1009134DC(v19);
            v18 = v73;
          }

          *(v18 + 24) = 0;
          v20 = +[IMRGLog warning];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            sub_10092D494();
          }

          [*(a1 + 32) setIsBuildingContext:0];
          [*(a1 + 40) __failValidationQueueForSubsystemMechanism:*(a1 + 48)];
          if (!v63)
          {
            goto LABEL_45;
          }

          sub_100913704(v63);
        }

        else
        {
          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_100612B84;
          v53[3] = &unk_100BE23D0;
          v54 = v48;
          v57 = buf;
          v58 = v60;
          v31 = *(a1 + 32);
          v32 = *(a1 + 40);
          v33 = *(a1 + 48);
          v55 = v31;
          v56 = v32;
          v59 = v33;
          v47 = objc_retainBlock(v53);
          v34 = objc_alloc_init(IDSInitializeValidationMessage);
          [(IDSInitializeValidationMessage *)v34 setCompletionBlock:v47];
          v35 = +[IMRGLog registration];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *v70 = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Sending initialize validation request", v70, 2u);
          }

          v36 = +[IMRGLog registration];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = [*(a1 + 40) pushHandler];
            v38 = [v37 pushToken];
            *v70 = 138412290;
            v71 = v38;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Push handler returned push token: %@", v70, 0xCu);
          }

          [(IDSInitializeValidationMessage *)v34 setTimeout:86400.0];
          v39 = [*(a1 + 40) pushHandler];
          v40 = [v39 pushToken];
          [(IDSInitializeValidationMessage *)v34 setPushToken:v40];

          IDSAssignPushIdentityToMessage();
          v41 = [NSData dataWithBytes:v63 length:v62];
          [(IDSInitializeValidationMessage *)v34 setSessionInfoRequest:v41];
          if (+[IDSValidationSession isSigningSupported])
          {
            v42 = +[IMRGLog registration];
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *v70 = 0;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Initialized validation session", v70, 2u);
            }

            v43 = im_primary_queue();
            v49[0] = _NSConcreteStackBlock;
            v49[1] = 3221225472;
            v49[2] = sub_100613028;
            v49[3] = &unk_100BE23F8;
            v50 = *(a1 + 32);
            v44 = v34;
            v45 = *(a1 + 40);
            v51 = v44;
            v52 = v45;
            [IDSValidationSession validationSessionOnQueue:v43 mechanism:0 withCompletion:v49];

            v46 = v50;
          }

          else
          {
            v46 = [*(a1 + 40) validationMessageSendBlock];
            (v46)[2](v46, v34);
          }
        }
      }

      else
      {
        v28 = v73;
        v29 = *(v73 + 24);
        if (v29)
        {
          sub_1009134DC(v29);
          v28 = v73;
        }

        *(v28 + 24) = 0;
        v30 = +[IMRGLog warning];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          sub_10092D508();
        }

        [*(a1 + 32) setIsBuildingContext:0];
        [*(a1 + 40) __failValidationQueueForSubsystemMechanism:*(a1 + 48)];
      }
    }

    else
    {
      v24 = +[IMRGLog warning];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        sub_10092D578();
      }

      [*(a1 + 32) setValidationContextDisabled:1];
      [*(a1 + 32) setValidationContext:0];
      v25 = objc_alloc_init(NSDate);
      [*(a1 + 32) setValidateContextDate:v25];

      [*(a1 + 32) setValidateContextTTL:&off_100C3CDC0];
      v26 = +[IMRGLog warning];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v27 = [*(a1 + 32) validateContextTTL];
        sub_10092D5E8(v27, v70, v26);
      }

      [*(a1 + 32) setIsBuildingContext:0];
      [*(a1 + 40) __flushValidationQueueForSubsystemMechanism:*(a1 + 48)];
    }

    if (v63)
    {
      sub_100913704(v63);
    }

LABEL_45:
    _Block_object_dispose(v60, 8);
    _Block_object_dispose(buf, 8);
LABEL_46:

    goto LABEL_47;
  }

  v23 = +[IMRGLog warning];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    sub_10092D680();
  }

  [*(a1 + 32) setIsBuildingContext:0];
  [*(a1 + 40) __failValidationQueueWithErrorResponseCode:8001 forSubsystemMechanism:*(a1 + 48)];
LABEL_47:
}

void sub_100612B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100612B84(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v7;
  v10 = [v9 responseSessionInfo];
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    *buf = 138412546;
    v37 = v12;
    v38 = 2112;
    v39 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "  Received validation initialization request response: %@   error: %@", buf, 0x16u);
  }

  if (a4 >= 2 && a4 != 200)
  {
    v14 = +[IMRGLog warning];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_10092D7D8();
    }

    goto LABEL_16;
  }

  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    goto LABEL_40;
  }

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) != 0 || ![v10 length])
  {
    [*(a1 + 40) setValidationContextDisabled:1];
  }

  else
  {
    sub_100913930(*(*(*(a1 + 56) + 8) + 24), [v10 bytes], objc_msgSend(v10, "length"));
    if (v13)
    {
      v14 = +[IMRGLog warning];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_10092D6F4();
      }

LABEL_16:

      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 24);
      if (v17)
      {
        sub_1009134DC(v17);
        v16 = *(*(a1 + 56) + 8);
      }

      *(v16 + 24) = 0;
      [*(a1 + 48) __failValidationQueueForSubsystemMechanism:*(a1 + 72)];
      goto LABEL_40;
    }
  }

  if ([*(a1 + 40) validationContextDisabled])
  {
    v15 = 0;
  }

  else
  {
    v15 = *(*(*(a1 + 56) + 8) + 24);
  }

  [*(a1 + 40) setValidationContext:v15];
  v18 = objc_alloc_init(NSDate);
  [*(a1 + 40) setValidateContextDate:v18];

  v19 = [v9 responseTTL];
  [*(a1 + 40) setValidateContextTTL:v19];

  v20 = +[IMRGLog registration];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [*(a1 + 40) validateContextTTL];
    *buf = 138412290;
    v37 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "  Succeeded establishing session key!  (TTL: %@)", buf, 0xCu);
  }

  v22 = [v9 responseAbsintheServKey];
  v23 = [v9 responseAbsintheResponse];
  v24 = +[IMRGLog registration];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    if (v22)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v35 = v22;
    v26 = v10;
    if (v23)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v28 = [*(a1 + 40) validationSession];
    *buf = 138412802;
    v29 = @"YES";
    if (!v28)
    {
      v29 = @"NO";
    }

    v37 = v25;
    v38 = 2112;
    v39 = v27;
    v10 = v26;
    v22 = v35;
    v40 = 2112;
    v41 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Processing validation response {servKey: %@, response: %@, session: %@}", buf, 0x20u);
  }

  v30 = [*(a1 + 40) validationSession];

  if (v30)
  {
    v31 = [*(a1 + 40) validationSession];
    v32 = [v31 activateWithValidationData:v23 serverKey:v22];

    v33 = +[IMRGLog registration];
    v34 = v33;
    if (v32)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        sub_10092D768();
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Successfully set up validation session", buf, 2u);
    }
  }

  [*(a1 + 48) __flushValidationQueueForSubsystemMechanism:*(a1 + 72)];

LABEL_40:
  [*(a1 + 40) setIsBuildingContext:0];
}

void sub_100613028(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [a1[4] setValidationSession:v5];
  if (v6)
  {
    v7 = +[IMRGLog warning];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10092D420();
    }
  }

  else
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 UDID];
      if (v8)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v10 = [v5 helloMessage];
      *buf = 138412802;
      if (v10)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v32 = v5;
      v33 = 2112;
      v34 = v9;
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully initialized validation session and hello message for request {validationSession: %@, UDID: %@, helloMessage: %@}", buf, 0x20u);
    }
  }

  v12 = [v5 UDID];

  if (v12)
  {
    v13 = a1[5];
    v14 = [v5 UDID];
    [v13 setAbsintheUDID:v14];
  }

  if (!v6)
  {
    v15 = [v5 helloMessage];

    if (v15)
    {
      v16 = a1[5];
      v17 = [v5 helloMessage];
      [v16 setAbsintheHello:v17];
    }
  }

  v18 = +[IMRGLog registration];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = a1[5];
    v28 = [v19 absintheUDID];
    v30 = v6;
    v20 = @"NO";
    if (v28)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v22 = [a1[5] absintheUDID];
    v23 = [v22 length];
    v24 = [a1[5] absintheHello];
    if (v24)
    {
      v20 = @"YES";
    }

    v25 = [a1[5] absintheHello];
    v26 = [v25 length];
    *buf = 138413314;
    v32 = v19;
    v33 = 2112;
    v34 = v21;
    v35 = 2048;
    v36 = v23;
    v37 = 2112;
    v38 = v20;
    v6 = v30;
    v39 = 2048;
    v40 = v26;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Validation session parameters set on request {initializeMessage: %@, UDID: %@, UDID.length: %ld, helloMessage: %@, helloMessage.length: %ld}", buf, 0x34u);
  }

  v27 = [a1[6] validationMessageSendBlock];
  (v27)[2](v27, a1[5]);
}

void sub_1006134DC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t sub_100613E80(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100613F2C(id a1)
{
  v1 = objc_alloc_init(IDSDaemonMIGQueryInterface);
  v2 = qword_100CBF340;
  qword_100CBF340 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100614274(uint64_t result)
{
  if ((*(*(result + 32) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(v1 + 32);
      *buf = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "IDSDaemonMIGQueryInterface auth port died: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      IMLogString();
      _IMWarn();
    }

    exit(-1);
  }

  return result;
}

void sub_100614534(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  xpc_connection_get_audit_token();
  pid = xpc_connection_get_pid(v3);
  if (IMDAuditTokenTaskHasEntitlement())
  {
    v6 = IMGetXPCStringFromDictionary();
    v7 = IMGetXPCStringFromDictionary();
    v8 = IMGetXPCIntFromDictionary();
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v18 = v8;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "*** Incoming ID status update: %d  (service: %@)  (destination: %@)", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v15 = v6;
      v16 = v7;
      v14 = v8;
      IMLogString();
      if (_IMWillLog())
      {
        v15 = v6;
        v16 = v7;
        v14 = v8;
        _IMAlwaysLog();
      }
    }

    v10 = [IDSURI URIWithUnprefixedURI:v7 withServiceLoggingHint:v6, v14, v15, v16];
    v11 = +[IDSIDStatusQueryController sharedInstance];
    v12 = [IDSURI URIWithUnprefixedURI:@"email:myself" withServiceLoggingHint:v6];
    [v11 setCachedIDStatus:v8 ForID:v10 fromURI:v12 fromService:v6];
  }

  else
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = pid;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "*** Incoming ID status update, from un-entitled proess: %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      IMLogString();
      if (_IMWillLog())
      {
        _IMAlwaysLog();
      }
    }
  }
}

void sub_1006148C4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (qword_100CBF370 != -1)
  {
    sub_10092D888();
  }

  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "__HandleRemoteDeviceQuery - enqueuing", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    IMLogString();
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100616A0C;
  v12 = &unk_100BD6E40;
  v13 = v4;
  v14 = v3;
  v6 = v3;
  v7 = v4;
  v8 = objc_retainBlock(&v9);
  [qword_100CBF350 enqueueQueryBlock:v8 cleanup:{0, v9, v10, v11, v12}];
}

void sub_100614A88(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (qword_100CBF378 != -1)
  {
    sub_10092D89C();
  }

  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "__HandleIDInfoQuery - enqueuing", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    IMLogString();
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10061802C;
  v12 = &unk_100BD6E40;
  v13 = v4;
  v14 = v3;
  v6 = v3;
  v7 = v4;
  v8 = objc_retainBlock(&v9);
  [qword_100CBF350 enqueueQueryBlock:v8 cleanup:{0, v9, v10, v11, v12}];
}

void sub_100614C4C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  xpc_connection_get_audit_token();
  pid = xpc_connection_get_pid(v3);
  if (IMDAuditTokenTaskHasEntitlement())
  {
    v6 = +[IMIDSLog daemon];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = pid;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "*** Clearing ID status cache due to incoming cache clear from process: %d ***", buf, 8u);
    }

    v7 = +[IDSPeerIDManager sharedInstance];
    [v7 clearCacheAndPersistImmediately:1];

    v8 = +[IDSIDStatusQueryController sharedInstance];
    [v8 clearCache];
  }

  else
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = pid;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "*** Incoming Query cache clear, from un-entitled proess: %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      IMLogString();
      if (_IMWillLog())
      {
        _IMAlwaysLog();
      }
    }
  }
}

id sub_100614E88(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = IMGetXPCStringFromDictionary();
  if (v5)
  {
    [NSString stringWithFormat:@"%@[%@]", v3, v5];
  }

  else
  {
    [NSString stringWithFormat:@"%@[%llu]", v3, xpc_connection_get_pid(v4)];
  }
  v6 = ;

  return v6;
}

void sub_100614F50(id a1)
{
  v1 = objc_alloc_init(IDSStatusQueryQueue);
  v2 = qword_100CBF350;
  qword_100CBF350 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100614F8C(uint64_t a1)
{
  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = sub_10000AAA4;
  v105 = sub_10000BCC4;
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (v102[5])
  {
    v81 = IMGetXPCStringFromDictionary();
    v2 = IMGetXPCStringFromDictionary();
    v78 = IMGetXPCStringFromDictionary();
    v84 = IMGetXPCArrayFromDictionary();
    v76 = IMGetXPCBoolFromDictionary();
    v85 = v2;
    v3 = IMGetXPCBoolFromDictionary();
    v75 = IMGetXPCBoolFromDictionary();
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = IDSLoggableDescriptionForHandlesOnService();
      v6 = v5;
      v7 = @"NO";
      *buf = 138413570;
      v116 = v85;
      if (v76)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      if (v3)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      if (v75)
      {
        v7 = @"YES";
      }

      v117 = 2112;
      v118 = v81;
      v119 = 2112;
      v120 = v5;
      v121 = 2112;
      v122 = v8;
      v123 = 2112;
      v124 = v9;
      v125 = 2112;
      v126 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "*** Incoming ID status query  (service: %@)  (transactionID: %@)  (destinations: %@)   (sb: %@)  (force: %@) (bypass limit: %@)", buf, 0x3Eu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v10 = IDSLoggableDescriptionForHandlesOnService();
      v11 = v76 ? @"YES" : @"NO";
      v12 = v3 ? @"YES" : @"NO";
      v13 = v75 ? @"YES" : @"NO";
      MarcoLogMadridLevel();

      IDSLoggableDescriptionForHandlesOnService();
      v66 = v12;
      v64 = v67 = v13;
      v65 = v11;
      IMLogString();

      if (_IMWillLog())
      {
        IDSLoggableDescriptionForHandlesOnService();
        v66 = v12;
        v64 = v67 = v13;
        v65 = v11;
        _IMAlwaysLog();
      }
    }

    IMInsertNSStringsToXPCDictionary();
    IMInsertNSStringsToXPCDictionary();
    v79 = [IDSURI URIWithUnprefixedURI:v78, v81, 0];
    v14 = +[IDSDServiceController sharedInstance];
    v82 = [v14 serviceWithIdentifier:v85];

    v74 = [v82 queryService];
    v15 = +[IDSDAccountController sharedInstance];
    v77 = [v15 accountsOnService:v82];

    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v116 = v82;
      v117 = 2112;
      v118 = v85;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Found service %@ for serviceName %@", buf, 0x16u);
    }

    v17 = v85;
    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v55 = v82;
      v62 = v85;
      IMLogString();
      if (_IMWillLog())
      {
        v55 = v82;
        v62 = v85;
        _IMAlwaysLog();
      }
    }

    v73 = [v84 __imArrayByApplyingBlock:{&stru_100BE24E8, v55, v62, v64, v65, v66, v67}];
    v83 = [IDSQueryUtilities accountToQueryFrom:"accountToQueryFrom:fromURI:destinationURIs:allowLocalAccount:" fromURI:v77 destinationURIs:v79 allowLocalAccount:?];
    if (!v83)
    {
      v18 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v116 = v85;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No registered account for service %@", buf, 0xCu);
      }

      v17 = v85;
      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        v56 = v85;
        IMLogString();
        if (_IMWillLog())
        {
          v56 = v85;
          _IMAlwaysLog();
        }
      }
    }

    v80 = [IDSQueryUtilities prefixedAliasStringToQueryFrom:v83 withPreferredFromURI:v79, v56];
    if (!v83)
    {
      goto LABEL_58;
    }

    if (![v80 length])
    {
      v19 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v116 = v83;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No fromURI for account %@", buf, 0xCu);
      }

      v17 = v85;
      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        v57 = v83;
        IMLogString();
        if (_IMWillLog())
        {
          v57 = v83;
          _IMAlwaysLog();
        }
      }
    }

    if (![v80 length])
    {
LABEL_58:
      v26 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v116 = v17;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "No registered account for service after if %@, bailing...", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        v57 = v85;
        IMLogString();
        if (_IMWillLog())
        {
          v57 = v85;
          _IMAlwaysLog();
        }
      }

      v107 = IDSIDQueryControllerErrorDestinationSet;
      v108 = v84;
      v27 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1, v57];
      v59 = [NSError errorWithDomain:IDSIDQueryControllerErrorDomain code:-3000 userInfo:v27];
      IMInsertKeyedCodableObjectsToXPCDictionary();

      v28 = *(a1 + 40);
      if (v28)
      {
        xpc_connection_send_message(v28, v102[5]);
      }

      goto LABEL_110;
    }

    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v116 = v80;
      v117 = 2112;
      v118 = v83;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Using %@ from %@ to perform id query.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v57 = v80;
      v63 = v83;
      IMLogString();
      if (_IMWillLog())
      {
        v57 = v80;
        v63 = v83;
        _IMAlwaysLog();
      }
    }

    v72 = sub_10043996C(v84, v83);
    v71 = [v83 _registrationCert];
    if ([v72 count] && v71)
    {
      v21 = +[IMSystemMonitor sharedInstance];
      v22 = [v21 isUnderFirstDataProtectionLock];

      if (!v22)
      {
        v96[0] = _NSConcreteStackBlock;
        v96[1] = 3221225472;
        v96[2] = sub_10061642C;
        v96[3] = &unk_100BE2510;
        v100 = &v101;
        v68 = v74;
        v97 = v68;
        v34 = v85;
        v98 = v34;
        v99 = *(a1 + 40);
        v69 = objc_retainBlock(v96);
        if (v3)
        {
          if (qword_100CBF368 != -1)
          {
            sub_10092D8B0();
          }

          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          obj = v84;
          v35 = [obj countByEnumeratingWithState:&v92 objects:v110 count:16];
          if (v35)
          {
            v36 = *v93;
            while (2)
            {
              for (i = 0; i != v35; i = i + 1)
              {
                if (*v93 != v36)
                {
                  objc_enumerationMutation(obj);
                }

                v38 = [NSString stringWithFormat:@"%@-%@", v34, *(*(&v92 + 1) + 8 * i)];
                if (([qword_100CBF360 underLimitForItem:v38] & 1) == 0)
                {
                  v45 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v116 = v38;
                    v117 = 2112;
                    v118 = qword_100CBF360;
                    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Tried forcing, however this destination is not under the limit {destString: %@, rateLimiter: %@}", buf, 0x16u);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    MarcoLogMadridLevel();
                    v57 = v38;
                    v63 = qword_100CBF360;
                    IMLogString();
                    if (_IMWillLog())
                    {
                      v57 = v38;
                      v63 = qword_100CBF360;
                      _IMAlwaysLog();
                    }
                  }

                  v44 = 0;
                  goto LABEL_104;
                }
              }

              v35 = [obj countByEnumeratingWithState:&v92 objects:v110 count:16];
              if (v35)
              {
                continue;
              }

              break;
            }
          }

          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v39 = obj;
          v40 = [v39 countByEnumeratingWithState:&v88 objects:v109 count:16];
          if (v40)
          {
            v41 = *v89;
            do
            {
              for (j = 0; j != v40; j = j + 1)
              {
                if (*v89 != v41)
                {
                  objc_enumerationMutation(v39);
                }

                v43 = [NSString stringWithFormat:@"%@-%@", v34, *(*(&v88 + 1) + 8 * j)];
                [qword_100CBF360 noteItem:v43];
              }

              v40 = [v39 countByEnumeratingWithState:&v88 objects:v109 count:16];
            }

            while (v40);
          }

          v44 = 1;
LABEL_104:
        }

        else
        {
          v44 = 0;
        }

        v86[0] = _NSConcreteStackBlock;
        v86[1] = 3221225472;
        v86[2] = sub_1006169B8;
        v86[3] = &unk_100BD7530;
        v46 = v68;
        v87 = v46;
        v47 = [v72 __imArrayByApplyingBlock:v86];
        if (v76)
        {
          v48 = [IDSServerBag sharedInstanceForBagType:0];
          v49 = [v48 objectForKey:@"vc-disable-springboard-queries"];
          v50 = [v49 BOOLValue];

          v51 = v50 ^ 1;
        }

        else
        {
          v51 = 1;
        }

        v52 = [IDSIDStatusQueryController sharedInstance:v57];
        v53 = [IDSURI URIWithUnprefixedURI:v80 withServiceLoggingHint:v46];
        v54 = sub_100614E88(@"IDStatus", *(a1 + 40));
        BYTE1(v61) = v75;
        LOBYTE(v61) = v44;
        [v52 requestIDStatusForIDs:v47 fromIdentity:v71 fromURI:v53 fromService:v46 lightQuery:1 allowQuery:v51 forceQuery:v61 bypassLimit:v54 reason:v69 completionBlock:?];

        goto LABEL_109;
      }

      v23 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v116 = v84;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Querying %@ while under first unlock, bailing...", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        IMLogString();
        v57 = v84;
        _IMWarn();
      }

      v24 = v84;
      if (!v84)
      {
        v24 = &__NSArray0__struct;
      }

      v111 = IDSIDQueryControllerErrorDestinationSet;
      v112 = v24;
      v25 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1, v57, v63];
      v58 = [NSError errorWithDomain:IDSIDQueryControllerErrorDomain code:-4000 userInfo:v25];
      IMInsertKeyedCodableObjectsToXPCDictionary();
    }

    else
    {
      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v116 = v84;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "No URIs or cert after filtering destinations %@, bailing...", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        IMLogString();
        v57 = v84;
        _IMWarn();
      }

      v31 = v84;
      if (!v84)
      {
        v31 = &__NSArray0__struct;
      }

      v113 = IDSIDQueryControllerErrorDestinationSet;
      v114 = v31;
      v32 = [NSDictionary dictionaryWithObjects:&v114 forKeys:&v113 count:1, v57, v63];
      v60 = [NSError errorWithDomain:IDSIDQueryControllerErrorDomain code:-3000 userInfo:v32];
      IMInsertKeyedCodableObjectsToXPCDictionary();
    }

    v33 = *(a1 + 40);
    if (v33)
    {
      xpc_connection_send_message(v33, v102[5]);
    }

LABEL_109:

LABEL_110:
    goto LABEL_111;
  }

  v29 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Could not create reply message for cached id status query", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    IMLogString();
    _IMWarn();
  }

LABEL_111:
  _Block_object_dispose(&v101, 8);
}

void sub_10061642C(void *a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"NO";
    if (a5)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    if (*(*(a1[7] + 8) + 40))
    {
      v16 = @"YES";
    }

    *buf = 138413570;
    v39 = v11;
    v40 = 2112;
    v41 = v12;
    v42 = 2112;
    v43 = v13;
    v44 = 2112;
    v45 = v17;
    v46 = 2112;
    v47 = v14;
    v48 = 2112;
    v49 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received status query updates (idStatusUpdates: %@)  (updateFromURI: %@)  (updateService: %@)  (success: %@)  (error: %@) - replyMessage? %@", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v18 = a5 ? @"YES" : @"NO";
    MarcoLogMadridLevel();
    v19 = *(*(a1[7] + 8) + 40) ? @"YES" : @"NO";
    v36 = v14;
    v37 = v19;
    v34 = v13;
    v35 = v18;
    v29 = v11;
    v33 = v12;
    IMLogString();
    if (_IMWillLog())
    {
      if (*(*(a1[7] + 8) + 40))
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v36 = v14;
      v37 = v20;
      v34 = v13;
      v35 = v18;
      v29 = v11;
      v33 = v12;
      _IMAlwaysLog();
    }
  }

  if (*(*(a1[7] + 8) + 40))
  {
    v21 = objc_alloc_init(NSMutableDictionary);
    v22 = [v11 objectForKey:a1[4]];
    if (v22)
    {
      [v21 setObject:v22 forKey:a1[5]];
    }

    if ([v21 count])
    {
      v30 = [NSKeyedArchiver archivedDataWithRootObject:v21 requiringSecureCoding:1 error:0];
      IMInsertDatasToXPCDictionary();
    }

    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = IDSLoggableDescriptionForObjectOnService();
      *buf = 138412290;
      v39 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Sending id status results %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v25 = IDSLoggableDescriptionForObjectOnService();
      MarcoLogMadridLevel();

      v31 = IDSLoggableDescriptionForObjectOnService();
      IMLogString();

      if (_IMWillLog())
      {
        v32 = IDSLoggableDescriptionForObjectOnService();
        _IMAlwaysLog();
      }
    }

    v26 = a1[6];
    if (v26)
    {
      xpc_connection_send_message(v26, *(*(a1[7] + 8) + 40));
    }

    v27 = *(a1[7] + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = 0;
  }
}

void sub_1006168BC(id a1)
{
  v1 = [IDSServerBag sharedInstanceForBagType:0];
  v9 = [v1 objectForKey:@"client-query-max-per-uri"];

  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"client-query-max-time-range"];

  if (v9)
  {
    v4 = [v9 integerValue];
    if (v3)
    {
LABEL_3:
      [v3 doubleValue];
      v6 = v5;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 6;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v6 = 82800.0;
LABEL_6:
  v7 = [[IDSRateLimiter alloc] initWithLimit:v4 timeLimit:v6];
  v8 = qword_100CBF360;
  qword_100CBF360 = v7;
}

void sub_1006169D0(id a1)
{
  v1 = objc_alloc_init(IDSStatusQueryQueue);
  v2 = qword_100CBF350;
  qword_100CBF350 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100616A0C(uint64_t a1)
{
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = sub_10000AAA4;
  v83 = sub_10000BCC4;
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (v80[5])
  {
    v72 = IMGetXPCStringFromDictionary();
    v2 = IMGetXPCStringFromDictionary();
    v70 = IMGetXPCStringFromDictionary();
    v3 = +[IDSDestination classesForStrictUnarchiving];
    v4 = IMGetXPCKeyedCodableFromDictionaryWithSecureCodingAllowedClasses();

    v67 = IMGetXPCBoolFromDictionary();
    v62 = IMGetXPCBoolFromDictionary();
    v5 = [v4 destinationURIs];
    v71 = [v5 allObjects];

    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 destinationURIs];
      v8 = [v7 allObjects];
      v9 = IDSLoggableDescriptionForHandlesOnService();
      v10 = v9;
      v11 = @"NO";
      *buf = 138413058;
      v92 = v2;
      if (v67)
      {
        v11 = @"YES";
      }

      v93 = 2112;
      v94 = v72;
      v95 = 2112;
      v96 = v9;
      v97 = 2112;
      v98 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "*** Incoming remote device query  (service: %@)  (transactionID: %@)  (destinations: %@)   (sb: %@)", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v12 = [v4 destinationURIs];
      v13 = [v12 allObjects];
      v14 = IDSLoggableDescriptionForHandlesOnService();
      v15 = v14;
      v16 = v67 ? @"YES" : @"NO";
      v58 = v14;
      MarcoLogMadridLevel();

      v17 = [v4 destinationURIs];
      v18 = [v17 allObjects];
      v57 = IDSLoggableDescriptionForHandlesOnService();
      v59 = v16;
      IMLogString();

      if (_IMWillLog())
      {
        v19 = [v4 destinationURIs];
        v20 = [v19 allObjects];
        v57 = IDSLoggableDescriptionForHandlesOnService();
        v59 = v16;
        _IMAlwaysLog();
      }
    }

    IMInsertNSStringsToXPCDictionary();
    IMInsertNSStringsToXPCDictionary();
    v21 = [IDSURI URIWithUnprefixedURI:v70, v72, 0];
    v22 = +[IDSDServiceController sharedInstance];
    v23 = [v22 serviceWithIdentifier:v2];

    v66 = [v23 queryService];
    v24 = +[IDSDAccountController sharedInstance];
    v69 = [v24 accountsOnService:v23];

    v25 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v92 = v23;
      v93 = 2112;
      v94 = v2;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Found service %@ for serviceName %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v49 = v23;
      v55 = v2;
      IMLogString();
      if (_IMWillLog())
      {
        v49 = v23;
        v55 = v2;
        _IMAlwaysLog();
      }
    }

    v65 = [v71 __imArrayByApplyingBlock:{&stru_100BE2570, v49, v55, v57, v59}];
    v26 = [IDSQueryUtilities accountToQueryFrom:"accountToQueryFrom:fromURI:destinationURIs:allowLocalAccount:" fromURI:v69 destinationURIs:v21 allowLocalAccount:?];
    if (!v26)
    {
      v27 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v92 = v2;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "No registered account for service %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        v50 = v2;
        IMLogString();
        if (_IMWillLog())
        {
          v50 = v2;
          _IMAlwaysLog();
        }
      }
    }

    v28 = [IDSQueryUtilities prefixedAliasStringToQueryFrom:v26 withPreferredFromURI:v21, v50];
    v29 = v28;
    if (!v26)
    {
      goto LABEL_45;
    }

    if (![v28 length])
    {
      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v92 = v26;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "No fromURI for account %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        v51 = v26;
        IMLogString();
        if (_IMWillLog())
        {
          v51 = v26;
          _IMAlwaysLog();
        }
      }
    }

    if (![v29 length])
    {
LABEL_45:
      v36 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v92 = v2;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "No registered account for service after if %@, bailing...", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        v51 = v2;
        IMLogString();
        if (_IMWillLog())
        {
          v51 = v2;
          _IMAlwaysLog();
        }
      }

      v85 = IDSIDQueryControllerErrorDestinationSet;
      v86 = v71;
      v37 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1, v51];
      v52 = [NSError errorWithDomain:IDSIDQueryControllerErrorDomain code:-3000 userInfo:v37];
      IMInsertKeyedCodableObjectsToXPCDictionary();

      v38 = *(a1 + 40);
      if (v38)
      {
        xpc_connection_send_message(v38, v80[5]);
      }

      goto LABEL_73;
    }

    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v92 = v29;
      v93 = 2112;
      v94 = v26;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Using %@ from %@ to perform id query.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v51 = v29;
      v56 = v26;
      IMLogString();
      if (_IMWillLog())
      {
        v51 = v29;
        v56 = v26;
        _IMAlwaysLog();
      }
    }

    v64 = sub_10043996C(v71, v26);
    v63 = [v26 _registrationCert];
    if ([v64 count] && v63)
    {
      v32 = +[IMSystemMonitor sharedInstance];
      v33 = [v32 isUnderFirstDataProtectionLock];

      if (!v33)
      {
        v75[0] = _NSConcreteStackBlock;
        v75[1] = 3221225472;
        v75[2] = sub_100617B74;
        v75[3] = &unk_100BE2598;
        v78 = &v79;
        v41 = v66;
        v76 = v41;
        v77 = *(a1 + 40);
        v60 = objc_retainBlock(v75);
        v73[0] = _NSConcreteStackBlock;
        v73[1] = 3221225472;
        v73[2] = sub_100617FD8;
        v73[3] = &unk_100BD7530;
        v42 = v41;
        v74 = v42;
        v61 = [v64 __imArrayByApplyingBlock:v73];
        if (v67)
        {
          v43 = [IDSServerBag sharedInstanceForBagType:0];
          v44 = [v43 objectForKey:@"vc-disable-springboard-queries"];
          v68 = [v44 BOOLValue];
        }

        else
        {
          v68 = 0;
        }

        v46 = [IDSIDStatusQueryController sharedInstance:v51];
        v47 = [IDSURI URIWithUnprefixedURI:v29 withServiceLoggingHint:v42];
        v48 = sub_100614E88(@"RemoteDevice", *(a1 + 40));
        [v46 remoteDevicesForIDs:v61 fromIdentity:v63 fromURI:v47 fromService:v42 lightQuery:1 allowQuery:((v68 | v62) & 1) == 0 reason:v48 completionBlock:v60];

        v35 = v76;
        goto LABEL_72;
      }

      v34 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v92 = v4;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Querying %@ while under first unlock, bailing...", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        IMLogString();
        v51 = v4;
        _IMWarn();
      }

      if (v71)
      {
        v87 = IDSIDQueryControllerErrorDestinationSet;
        v88 = v71;
        v35 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
      }

      else
      {
        v35 = 0;
      }

      v54 = [NSError errorWithDomain:IDSIDQueryControllerErrorDomain code:-4000 userInfo:v35, v51, v56];
      IMInsertKeyedCodableObjectsToXPCDictionary();

      v45 = *(a1 + 40);
      if (!v45)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v40 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v92 = v4;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "No URIs or cert after filtering destinations %@, bailing...", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        IMLogString();
        v51 = v4;
        _IMWarn();
      }

      if (v71)
      {
        v89 = IDSIDQueryControllerErrorDestinationSet;
        v90 = v71;
        v35 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
      }

      else
      {
        v35 = 0;
      }

      v53 = [NSError errorWithDomain:IDSIDQueryControllerErrorDomain code:-3000 userInfo:v35, v51, v56];
      IMInsertKeyedCodableObjectsToXPCDictionary();

      v45 = *(a1 + 40);
      if (!v45)
      {
        goto LABEL_72;
      }
    }

    xpc_connection_send_message(v45, v80[5]);
LABEL_72:

LABEL_73:
    goto LABEL_74;
  }

  v39 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Could not create reply message for cached id status query", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    IMLogString();
    _IMWarn();
  }

LABEL_74:
  _Block_object_dispose(&v79, 8);
}

void sub_100617B74(uint64_t a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"NO";
    if (a5)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v16 = @"YES";
    }

    *buf = 138413570;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    v33 = 2112;
    v34 = v17;
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received status query updates (idStatusUpdates: %@)  (updateFromURI: %@)  (updateService: %@)  (success: %@)  (error: %@) - replyMessage? %@", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    IMLogString();
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v18 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:0 error:0];
    IMInsertDatasToXPCDictionary();
    IMInsertKeyedCodableObjectsToXPCDictionary();
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = IDSLoggableDescriptionForObjectOnService();
      *buf = 138412290;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending id status results %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v21 = IDSLoggableDescriptionForObjectOnService();
      MarcoLogMadridLevel();

      v25 = IDSLoggableDescriptionForObjectOnService();
      IMLogString();

      if (_IMWillLog())
      {
        v26 = IDSLoggableDescriptionForObjectOnService();
        _IMAlwaysLog();
      }
    }

    v22 = *(a1 + 40);
    if (v22)
    {
      xpc_connection_send_message(v22, *(*(*(a1 + 48) + 8) + 40));
    }

    v23 = *(*(a1 + 48) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = 0;
  }
}

void sub_100617FF0(id a1)
{
  v1 = objc_alloc_init(IDSStatusQueryQueue);
  v2 = qword_100CBF350;
  qword_100CBF350 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10061802C(uint64_t a1)
{
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = sub_10000AAA4;
  v88 = sub_10000BCC4;
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (v85[5])
  {
    v77 = IMGetXPCStringFromDictionary();
    v2 = IMGetXPCStringFromDictionary();
    v3 = +[IDSDestination classesForStrictUnarchiving];
    v4 = IMGetXPCKeyedCodableFromDictionaryWithSecureCodingAllowedClasses();

    v65 = IMGetXPCIntFromDictionary();
    objc_opt_class();
    v74 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
    v73 = IMGetXPCStringFromDictionary();
    v70 = IMGetXPCBoolFromDictionary();
    v64 = [v74 waitForReply];
    v5 = [v4 destinationURIs];
    v76 = [v5 allObjects];

    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 destinationURIs];
      v8 = [v7 allObjects];
      v9 = IDSLoggableDescriptionForHandlesOnService();
      v10 = v9;
      v11 = @"NO";
      *buf = 138413058;
      v97 = v2;
      if (v70)
      {
        v11 = @"YES";
      }

      v98 = 2112;
      v99 = v77;
      v100 = 2112;
      v101 = v9;
      v102 = 2112;
      v103 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "*** Incoming ID info query  (service: %@)  (transactionID: %@)  (destinations: %@)   (sb: %@)", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v12 = [v4 destinationURIs];
      v13 = [v12 allObjects];
      v14 = IDSLoggableDescriptionForHandlesOnService();
      v15 = v14;
      v16 = v70 ? @"YES" : @"NO";
      v61 = v14;
      MarcoLogMadridLevel();

      v17 = [v4 destinationURIs];
      v18 = [v17 allObjects];
      v60 = IDSLoggableDescriptionForHandlesOnService();
      v62 = v16;
      IMLogString();

      if (_IMWillLog())
      {
        v19 = [v4 destinationURIs];
        v20 = [v19 allObjects];
        v60 = IDSLoggableDescriptionForHandlesOnService();
        v62 = v16;
        _IMAlwaysLog();
      }
    }

    IMInsertNSStringsToXPCDictionary();
    IMInsertNSStringsToXPCDictionary();
    v75 = [IDSURI URIWithUnprefixedURI:v73, v77, 0];
    v21 = +[IDSDServiceController sharedInstance];
    v22 = [v21 serviceWithIdentifier:v2];

    v69 = [v22 queryService];
    v23 = +[IDSDAccountController sharedInstance];
    v72 = [v23 accountsOnService:v22];

    v24 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v97 = v22;
      v98 = 2112;
      v99 = v2;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Found service %@ for serviceName %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v51 = v22;
      v58 = v2;
      IMLogString();
      if (_IMWillLog())
      {
        v51 = v22;
        v58 = v2;
        _IMAlwaysLog();
      }
    }

    v68 = [v76 __imArrayByApplyingBlock:{&stru_100BE25D8, v51, v58, v60, v62}];
    v25 = [IDSQueryUtilities accountToQueryFrom:"accountToQueryFrom:fromURI:destinationURIs:allowLocalAccount:" fromURI:v72 destinationURIs:v75 allowLocalAccount:?];
    if (!v25)
    {
      v26 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v97 = v2;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "No registered account for service %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        v52 = v2;
        IMLogString();
        if (_IMWillLog())
        {
          v52 = v2;
          _IMAlwaysLog();
        }
      }
    }

    v27 = [IDSQueryUtilities prefixedAliasStringToQueryFrom:v25 withPreferredFromURI:v75, v52];
    v28 = v27;
    if (!v25)
    {
      goto LABEL_46;
    }

    if (![v27 length])
    {
      v29 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v97 = v25;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "No fromURI for account %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        v53 = v25;
        IMLogString();
        if (_IMWillLog())
        {
          v53 = v25;
          _IMAlwaysLog();
        }
      }
    }

    if (![v28 length])
    {
LABEL_46:
      v36 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v97 = v2;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "No registered account for service after if %@, bailing...", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        v53 = v2;
        IMLogString();
        if (_IMWillLog())
        {
          v53 = v2;
          _IMAlwaysLog();
        }
      }

      v90 = IDSIDQueryControllerErrorDestinationSet;
      v91 = v76;
      v37 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1, v53];
      v55 = [NSError errorWithDomain:IDSIDQueryControllerErrorDomain code:-3000 userInfo:v37];
      IMInsertKeyedCodableObjectsToXPCDictionary();

      v38 = *(a1 + 40);
      if (v38)
      {
        xpc_connection_send_message(v38, v85[5]);
      }

      goto LABEL_69;
    }

    v30 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v97 = v28;
      v98 = 2112;
      v99 = v25;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Using %@ from %@ to perform id query.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      v53 = v28;
      v59 = v25;
      IMLogString();
      if (_IMWillLog())
      {
        v53 = v28;
        v59 = v25;
        _IMAlwaysLog();
      }
    }

    v67 = sub_10043996C(v76, v25);
    v66 = [v25 _registrationCert];
    if ([v67 count] && v66)
    {
      v31 = +[IMSystemMonitor sharedInstance];
      v32 = [v31 isUnderFirstDataProtectionLock];

      if (!v32)
      {
        v80[0] = _NSConcreteStackBlock;
        v80[1] = 3221225472;
        v80[2] = sub_1006191E4;
        v80[3] = &unk_100BE2598;
        v83 = &v84;
        v43 = v69;
        v81 = v43;
        v82 = *(a1 + 40);
        v44 = objc_retainBlock(v80);
        v78[0] = _NSConcreteStackBlock;
        v78[1] = 3221225472;
        v78[2] = sub_100619648;
        v78[3] = &unk_100BD7530;
        v45 = v43;
        v79 = v45;
        v63 = [v67 __imArrayByApplyingBlock:v78];
        if (v70)
        {
          v46 = [IDSServerBag sharedInstanceForBagType:0];
          v47 = [v46 objectForKey:@"vc-disable-springboard-queries"];
          v71 = [v47 BOOLValue];
        }

        else
        {
          v71 = 0;
        }

        v48 = [IDSIDStatusQueryController sharedInstance:v53];
        v49 = [IDSURI URIWithUnprefixedURI:v28 withServiceLoggingHint:v45];
        v50 = sub_100614E88(@"InfoQuery", *(a1 + 40));
        LOBYTE(v57) = 1;
        BYTE1(v57) = ((v71 | v64) & 1) == 0;
        [v48 infoForIDs:v63 fromIdentity:v66 fromURI:v49 fromService:v45 infoType:v65 infoOptions:v74 lightQuery:v57 allowQuery:v50 reason:v44 completion:?];

        goto LABEL_68;
      }

      v33 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v97 = v4;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Querying %@ while under first unlock, bailing...", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        IMLogString();
        v53 = v4;
        _IMWarn();
      }

      v34 = v76;
      if (!v76)
      {
        v34 = &__NSArray0__struct;
      }

      v92 = IDSIDQueryControllerErrorDestinationSet;
      v93 = v34;
      v35 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1, v53, v59];
      v54 = [NSError errorWithDomain:IDSIDQueryControllerErrorDomain code:-4000 userInfo:v35];
      IMInsertKeyedCodableObjectsToXPCDictionary();
    }

    else
    {
      v40 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v97 = v4;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "No URIs or cert after filtering destinations %@, bailing...", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogMadridLevel();
        IMLogString();
        v53 = v4;
        _IMWarn();
      }

      v94 = IDSIDQueryControllerErrorDestinationSet;
      v95 = v76;
      v41 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1, v53, v59];
      v56 = [NSError errorWithDomain:IDSIDQueryControllerErrorDomain code:-3000 userInfo:v41];
      IMInsertKeyedCodableObjectsToXPCDictionary();
    }

    v42 = *(a1 + 40);
    if (v42)
    {
      xpc_connection_send_message(v42, v85[5]);
    }

LABEL_68:

LABEL_69:
    goto LABEL_70;
  }

  v39 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Could not create reply message for cached id status query", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    IMLogString();
    _IMWarn();
  }

LABEL_70:
  _Block_object_dispose(&v84, 8);
}

void sub_1006191E4(uint64_t a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"NO";
    if (a5)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v16 = @"YES";
    }

    *buf = 138413570;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    v33 = 2112;
    v34 = v17;
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received status query updates (idStatusUpdates: %@)  (updateFromURI: %@)  (updateService: %@)  (success: %@)  (error: %@) - replyMessage? %@", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    IMLogString();
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v18 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:0 error:0];
    IMInsertDatasToXPCDictionary();
    IMInsertKeyedCodableObjectsToXPCDictionary();
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = IDSLoggableDescriptionForObjectOnService();
      *buf = 138412290;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending id status results %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v21 = IDSLoggableDescriptionForObjectOnService();
      MarcoLogMadridLevel();

      v25 = IDSLoggableDescriptionForObjectOnService();
      IMLogString();

      if (_IMWillLog())
      {
        v26 = IDSLoggableDescriptionForObjectOnService();
        _IMAlwaysLog();
      }
    }

    v22 = *(a1 + 40);
    if (v22)
    {
      xpc_connection_send_message(v22, *(*(*(a1 + 48) + 8) + 40));
    }

    v23 = *(*(a1 + 48) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = 0;
  }
}

void sub_10061AAE0(uint64_t a1)
{
  memset_s(*(a1 + 32), 0x10uLL, 0, 0x10uLL);
  v2 = *(a1 + 32);

  free(v2);
}

void sub_10061BE7C(uint64_t a1)
{
  v2 = +[IDSFoundationLog delivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "GUID %@ Tokens for URI:\n%@", &v5, 0x16u);
  }
}

void sub_10061BF38(uint64_t a1)
{
  v2 = +[IDSFoundationLog delivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "GUID %@ Skipped Destinations:\n%@", &v5, 0x16u);
  }
}

uint64_t sub_10061C9A4(uint64_t a1, void *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10061CA84;
  v5[3] = &unk_100BD79A0;
  v7 = &v9;
  v8 = a1;
  v2 = a2;
  v6 = v2;
  sub_10001E6DC(v5, v2);
  v3 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v3;
}

void sub_10061CA84(uint64_t a1)
{
  if (*(a1 + 48))
  {
    CSDBRecordStoreAddRecord();
    if (CSDBRecordSaveStore())
    {
      Database = CSDBRecordStoreGetDatabase();
      CSDBRecordIndexOfPropertyNamed();
      *(*(*(a1 + 40) + 8) + 24) = CSDBRecordCopyProperty();
      if (Database)
      {
        ID = CSDBRecordGetID();
        v4 = sub_10061D08C(kCFAllocatorDefault, ID, 0, *(a1 + 32));
        if (v4)
        {

          CFRelease(v4);
        }
      }
    }
  }
}

uint64_t sub_10061CB58(uint64_t a1, const __CFString *a2, int a3, void *a4)
{
  v7 = a4;
  if (a1)
  {
    if (a2 && a3 && CFStringGetLength(a2))
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10061CC80;
      v9[3] = &unk_100BE2808;
      v12 = a2;
      v13 = a1;
      v11 = &v14;
      v10 = v7;
      sub_100018E48(@"SELECT ROWID, guid, topic, from_id, message_data, date, is_local, message_identifier, expiration_date, control_category FROM incoming_message WHERE message_identifier = ? LIMIT 1", v9, v10);
      a1 = v15[3];

      _Block_object_dispose(&v14, 8);
    }

    else
    {
      a1 = sub_10061C9A4(a1, v7);
    }
  }

  return a1;
}

void sub_10061CC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10061CC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CSDBSqliteBindTextFromCFString();
  v5 = CSDBRecordStoreProcessStatement();
  if (CFArrayGetCount(v5) || !*(a1 + 56))
  {
    CFArrayGetValueAtIndex(v5, 0);
    CSDBRecordIndexOfPropertyNamed();
    *(*(*(a1 + 40) + 8) + 24) = CSDBRecordCopyProperty();
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v8 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IDSIncomingMessageRecordAddMessageRecordDedup deduped message with identifier %@. Will use storage guid %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  else
  {
    CSDBRecordStoreAddRecord();
    if (CSDBRecordSaveStore())
    {
      CSDBRecordIndexOfPropertyNamed();
      *(*(*(a1 + 40) + 8) + 24) = CSDBRecordCopyProperty();
      if (a3)
      {
        ID = CSDBRecordGetID();
        v10 = sub_10061D08C(kCFAllocatorDefault, ID, 0, *(a1 + 32));
        if (v10)
        {
          CFRelease(v10);
        }
      }
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void *sub_10061CEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const __CFString *a8, int a9, unsigned __int8 a10, void *a11, void *a12)
{
  v12 = a12;
  pthread_once(&stru_100CB2030, sub_10061DE64);
  Instance = _CFRuntimeCreateInstance();
  v14 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    *(Instance + 16) = 0;
    [v12 ensureDatabaseIsInitialized];
    v15 = CSDBRecordCreate();
    if (v15)
    {
      v16 = v15;
      for (i = 0; i != 9; ++i)
      {
        CSDBRecordSetProperty();
      }

      v18 = sub_10061CB58(v16, a8, a10, v12);
      if (v18)
      {
        v19 = v18;
        v14[3] = CSDBRecordGetID();
        if (a11)
        {
          *a11 = v19;
        }

        else
        {
          CFRelease(v19);
        }
      }

      else
      {
        CFRelease(v14);
        v14 = 0;
      }

      CFRelease(v16);
    }

    else
    {
      CFRelease(v14);
      v14 = 0;
    }
  }

  return v14;
}

const void *sub_10061D08C(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = a4;
  pthread_once(&stru_100CB2030, sub_10061DE64);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v8 = Instance;
    *(Instance + 16) = 0;
    *(Instance + 24) = a2;
    *(Instance + 16) = 0;
    if (a3)
    {
      v9 = sub_10061D140(a2, v6);
    }

    else
    {
      v9 = sub_10061D254(a2, v6);
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v9 = v8;
      v10 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_10061D140(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10061D210;
  v6[3] = &unk_100BD7A68;
  v6[4] = &v7;
  v6[5] = a1;
  sub_10001E6DC(v6, v3);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_10061D1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10061D210(uint64_t a1)
{
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10061D254(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10061D324;
  v6[3] = &unk_100BD7A68;
  v6[4] = &v7;
  v6[5] = a1;
  sub_10001F1D8(v6, v3);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_10061D30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10061D324(uint64_t a1)
{
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10061D368(const __CFString *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1 && CFStringGetLength(a1))
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10061D414;
    v6[3] = &unk_100BE2828;
    v6[4] = a2;
    v6[5] = a1;
    sub_100011868(@"UPDATE incoming_message SET expiration_date = ?WHERE guid = ? ;", v6, v5);
  }
}

uint64_t sub_10061D414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt64();
  CSDBSqliteBindTextFromCFString();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

uint64_t sub_10061D464(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10061D530;
  v4[3] = &unk_100BD7B08;
  v4[4] = &v5;
  sub_10000B8B8(v4, v1);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_10061D518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10061D530(uint64_t a1)
{
  result = CSDBSqliteDatabaseStatementForReading();
  if (result && *(result + 8))
  {
    *(*(*(a1 + 32) + 8) + 24) = CSDBSqliteStatementCopyAllRowsStringsForColumnsAtIndices();

    return CSDBSqliteStatementReset();
  }

  return result;
}

uint64_t sub_10061D5AC(uint64_t a1, void *a2, _BYTE *a3)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10061D6D8;
  v7[3] = &unk_100BE2878;
  v11 = a1;
  v4 = a2;
  v8 = v4;
  v9 = &v16;
  v10 = &v12;
  sub_10000B8B8(v7, v4);
  if (a3)
  {
    *a3 = *(v13 + 24);
  }

  v5 = v17[3];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v5;
}

void sub_10061D6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_10061D6D8(uint64_t a1)
{
  v2 = CSDBSqliteDatabaseStatementForReading();
  if (v2 && *(v2 + 8))
  {
    CSDBSqliteBindInt64();
    v3 = CSDBRecordStoreProcessStatement();
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count & 0x7FFFFFFF;
      v6 = v5 - 1;
      while (1)
      {
        CFArrayGetValueAtIndex(v3, v6);
        ID = CSDBRecordGetID();
        v8 = sub_10061D08C(kCFAllocatorDefault, ID, 0, *(a1 + 32));
        v9 = v8;
        if (!*(*(*(a1 + 40) + 8) + 24))
        {
          break;
        }

        if (v8)
        {
          goto LABEL_7;
        }

LABEL_8:
        if (--v6 == -1)
        {
          goto LABEL_14;
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = CFArrayCreateMutable(kCFAllocatorDefault, v5, &kCFTypeArrayCallBacks);
      if (!v9)
      {
        goto LABEL_8;
      }

LABEL_7:
      CFArrayAppendValue(*(*(*(a1 + 40) + 8) + 24), v9);
      CFRelease(v9);
      goto LABEL_8;
    }

LABEL_14:
    CSDBSqliteStatementReset();
    if (v3)
    {

      CFRelease(v3);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

uint64_t sub_10061D858(uint64_t a1, int a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10061D998;
  v9[3] = &unk_100BE28A0;
  v15 = a2;
  v13 = a3;
  v14 = a1;
  v6 = a4;
  v10 = v6;
  v11 = &v20;
  v12 = &v16;
  sub_10000B8B8(v9, v6);
  if (a5)
  {
    *a5 = *(v17 + 24);
  }

  v7 = v21[3];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

void sub_10061D974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10061D998(uint64_t a1)
{
  v2 = CSDBSqliteDatabaseStatementForReading();
  if (v2 && *(v2 + 8))
  {
    CSDBSqliteBindInt64();
    CSDBSqliteBindInt();
    CSDBSqliteBindInt64();
    v3 = CSDBRecordStoreProcessStatement();
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count & 0x7FFFFFFF;
      v6 = v5 - 1;
      while (1)
      {
        CFArrayGetValueAtIndex(v3, v6);
        ID = CSDBRecordGetID();
        v8 = sub_10061D08C(kCFAllocatorDefault, ID, 0, *(a1 + 32));
        v9 = v8;
        if (!*(*(*(a1 + 40) + 8) + 24))
        {
          break;
        }

        if (v8)
        {
          goto LABEL_7;
        }

LABEL_8:
        if (--v6 == -1)
        {
          goto LABEL_14;
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = CFArrayCreateMutable(kCFAllocatorDefault, v5, &kCFTypeArrayCallBacks);
      if (!v9)
      {
        goto LABEL_8;
      }

LABEL_7:
      CFArrayAppendValue(*(*(*(a1 + 40) + 8) + 24), v9);
      CFRelease(v9);
      goto LABEL_8;
    }

LABEL_14:
    CSDBSqliteStatementReset();
    if (v3)
    {

      CFRelease(v3);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_10061DB30(uint64_t a1, void *a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10061DBA8;
  v2[3] = &unk_100BD7E40;
  v2[4] = a1;
  sub_100011868(@"DELETE FROM incoming_message WHERE expiration_date > 0 AND expiration_date < ?; ", v2, a2);
}

uint64_t sub_10061DBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt64();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

void sub_10061DBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v19 = a11;
  v20 = v19;
  if (a1)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10061DCEC;
    v21[3] = &unk_100BE28C8;
    v23 = a1;
    v22 = v19;
    v24 = a2;
    v25 = a3;
    v26 = a4;
    v27 = a5;
    v28 = a6;
    v29 = a7;
    v30 = a8;
    v31 = a9;
    v32 = a10;
    sub_1006B73F0(a1 + 16, v21, v22);
  }
}

void sub_10061DCEC(uint64_t a1)
{
  v2 = sub_10061D254(*(*(a1 + 40) + 24), *(a1 + 32));
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 48))
    {
      **(a1 + 48) = CSDBRecordGetID();
    }

    if (*(a1 + 56))
    {
      **(a1 + 56) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 72))
    {
      **(a1 + 72) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 80))
    {
      **(a1 + 80) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 88))
    {
      **(a1 + 88) = CSDBRecordGetProperty();
    }

    if (*(a1 + 96))
    {
      **(a1 + 96) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 104))
    {
      **(a1 + 104) = CSDBRecordGetProperty();
    }

    if (*(a1 + 112))
    {
      **(a1 + 112) = CSDBRecordGetProperty();
    }

    CFRelease(v3);
  }
}

uint64_t sub_10061DE64()
{
  v0 = 0;
  qword_100CBF380 = _CFRuntimeRegisterClass();
  v1 = &off_100BE25F8;
  do
  {
    v1 += 5;
    result = CSDBRecordIndexOfPropertyNamed();
    dword_100CBF388[v0++] = result;
  }

  while (v0 != 9);
  return result;
}

CFStringRef sub_10061DEF0(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 4);
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  v4 = CFStringCreateWithFormat(v2, 0, @"<IDSIncomingMessageRecord %p [%p]>{}", a1, v3);
  os_unfair_lock_unlock(a1 + 4);
  return v4;
}

id sub_10061E538(void *a1, void *a2)
{
  v22 = a1;
  v3 = a2;
  v21 = objc_alloc_init(NSMutableArray);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v20 = *v28;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v8 = v22;
        v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v24;
LABEL_8:
          v12 = 0;
          while (1)
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v23 + 1) + 8 * v12);
            v14 = [v13 SIMIdentifier];
            v15 = [v14 isEqual:v7];

            if (v15)
            {
              break;
            }

            if (v10 == ++v12)
            {
              v10 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v10)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v16 = [IDSPhoneSubscription phoneSubscriptionWithSIM:v13];

          if (v16)
          {
            goto LABEL_17;
          }
        }

        else
        {
LABEL_14:
        }

        v16 = [IDSPhoneSubscription phoneSubscriptionWithLabelID:v7];
LABEL_17:
        [v21 addObject:v16];
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v5);
  }

  v17 = [v21 copy];

  return v17;
}

uint64_t sub_10061E788(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 labelID];

  if (v4)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v11 = [v3 labelID];
        v12 = [v10 SIMIdentifier];
        v13 = [v11 isEqualToString:v12];

        if (v13)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v15 = v10;

      if (!v15)
      {
        v14 = 1;
        goto LABEL_19;
      }

      v16 = [*(a1 + 40) userStore];
      v17 = [v15 SIMIdentifier];
      v18 = [v16 userWithUniqueIdentifier:v17];

      if (v18)
      {
        v19 = [*(a1 + 40) userStore];
        v20 = [v19 propertiesForUser:v18];

        v14 = [v20 disableRegistration] ^ 1;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
LABEL_10:
      v14 = 1;
      v15 = v5;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_19:

  return v14;
}

id sub_10061EC4C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 userStore];
  v5 = [v4 propertiesForUser:v3];

  v6 = [IDSURI alloc];
  v7 = [v3 phoneNumber];
  v8 = [v6 initWithUnprefixedURI:v7];

  v9 = [IDSPhoneTemporaryAliasDescription alloc];
  v10 = [v3 expirationDate];

  v11 = [v9 initWithURI:v8 expirationDate:v10 selected:{objc_msgSend(v5, "disableRegistration") ^ 1}];

  return v11;
}

id sub_10061F174(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 labelID];

  if (v5)
  {
    v6 = [v4 labelID];
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100620678;
    v14[3] = &unk_100BDD1D8;
    v7 = v4;
    v15 = v7;
    v8 = [v3 __imArrayByFilteringWithBlock:v14];
    v9 = [v8 firstObject];

    v10 = [v9 SIMIdentifier];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v7 labelID];
    }

    v6 = v12;
  }

  return v6;
}

BOOL sub_100620678(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 slot] == 2)
  {
    v4 = +[IMRGLog sms];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client provided us a SIM with an Unknown SlotID and no labelID, which isnt a supported configuration.", v8, 2u);
    }

    v5 = 0;
  }

  else
  {
    [v3 slot];
    v6 = IDSSubscriptionSlotFromCTSIMSlot();
    v5 = v6 == [*(a1 + 32) subscriptionSlot];
  }

  return v5;
}

double sub_10062118C()
{
  if (qword_100CBF438 != -1)
  {
    sub_10092D900();
  }

  return *&qword_100CBF3C0 * mach_continuous_time();
}

uint64_t sub_100621D34(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ called nw_service_connector_cancel_active_connection", buf, 0xCu);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLogTransport();
    if (result)
    {
      _IDSLogTransport();
      result = _IDSShouldLog();
      if (result)
      {
        return _IDSLogV();
      }
    }
  }

  return result;
}

void sub_100622388(id a1, BOOL a2)
{
  v2 = +[IDSUTunController sharedInstance];
  [v2 onTransportThread_StopBTDatagramLinkForDefaultPairedDevice];
}

void sub_100622B90(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 40);
  v4 = v3;
  IDSTransportThreadAddBlock();
}

id *sub_100622C38(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] _triggerStallDetectionLogsForDetector:result[5] withEvent:result[6]];
  }

  return result;
}

void sub_100622C50(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 40);
  v4 = v3;
  IDSTransportThreadAddBlock();
}

uint64_t sub_100622CF8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v2[4];
      v5 = v2[5];
      v6 = v2[6];
      *buf = 134218498;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%p %@ Stall warning [%@]", buf, 0x20u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport();
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV();
        }
      }
    }
  }

  return result;
}

void sub_100623CFC(id a1)
{
  v1 = objc_alloc_init(IDSUTunController);
  v2 = qword_100CBF3D0;
  qword_100CBF3D0 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t tcp6checksum(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, unint64_t a4)
{
  if (a4 < 0x14)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a3[1].u16[0];
  a3[1].i16[0] = 0;
  v8 = WORD1(a4);
  v9 = 0uLL;
  if (a1 && a2)
  {
    v9 = vpadalq_u16(vpaddlq_u16(vrev16q_s8(*a2)), vrev16q_s8(*a1));
  }

  v24 = v9;
  v10 = a4 & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  memset(&v24 - 2 * v10, 170, v11);
  v12 = a3;
  if (a3)
  {
    memcpy(&v24 - 2 * v10, a3, a4 & 0xFFFFFFFFFFFFFFF0);
    v12 = (&v24 - 2 * v10);
  }

  v13 = __rev16(v7);
  v14 = (a4 >> 4) + 1;
  v15 = v24;
  do
  {
    v16 = *v12++;
    v15 = vpadalq_u16(v15, vrev16q_s8(v16));
    --v14;
  }

  while (v14 > 1);
  v17 = a4 - 0xFFFF * v8 + vpadalq_u32(vdupq_laneq_s64(vpaddlq_u32(v15), 1), v15).u32[0] + 6;
  v18 = &a3->i8[a4];
  if (a4)
  {
    v19 = *--v18;
    v17 += v19 << 8;
  }

  v20 = (a4 >> 1) & 7;
  if (v20)
  {
    v21 = v18 - 1;
    v22 = v20 + 1;
    do
    {
      v17 += bswap32(*(v21 - 1)) >> 16;
      v21 -= 2;
      --v22;
    }

    while (v22 > 1);
  }

  if (v17 >= 0x10000)
  {
    do
    {
      v17 = HIWORD(v17) + v17;
    }

    while (HIWORD(v17));
  }

  v23 = v17 ^ 0xFFFF;
  a3[1].i16[0] = bswap32(v23) >> 16;
  return v23 - v13;
}

uint64_t udp6checksum(uint64_t a1, uint64_t a2, int8x16_t *a3, unint64_t a4)
{
  if (a4 < 8)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a3->u16[3];
  a3->i16[3] = 0;
  v8 = WORD1(a4);
  v9 = a4 & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v23 = v11;
  if (v9)
  {
    memset(&v23 - 2 * v9, 170, v10);
    v11 = v23;
  }

  v12 = a3;
  if (a3)
  {
    memcpy(&v23 - 2 * v9, a3, a4 & 0xFFFFFFFFFFFFFFF0);
    v11 = v23;
    v12 = (&v23 - 2 * v9);
  }

  if (a4 >= 0x10)
  {
    v13 = (a4 >> 4) + 1;
    do
    {
      v14 = *v12++;
      v11 = vpadalq_u16(v11, vrev16q_s8(v14));
      --v13;
    }

    while (v13 > 1);
  }

  v15 = a4 - 0xFFFF * v8 + vpadalq_u32(vdupq_laneq_s64(vpaddlq_u32(v11), 1), v11).u32[0] + 17;
  v16 = &a3->i8[a4];
  if (a4)
  {
    v17 = *--v16;
    v15 += v17 << 8;
  }

  v18 = (a4 >> 1) & 7;
  if (v18)
  {
    v19 = v16 - 1;
    v20 = v18 + 1;
    do
    {
      v15 += bswap32(*(v19 - 1)) >> 16;
      v19 -= 2;
      --v20;
    }

    while (v20 > 1);
  }

  v21 = __rev16(v7);
  if (v15 >= 0x10000)
  {
    do
    {
      v15 = HIWORD(v15) + v15;
    }

    while (HIWORD(v15));
  }

  v22 = v15 ^ 0xFFFF;
  a3->i16[3] = bswap32(v22) >> 16;
  return v22 - v21;
}

void sub_100624124(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) _reloadSettings];
    v3 = IMGetDomainIntForKey();
    switch(v3)
    {
      case 0:
        return;
      case 1:
        v4 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Custom Test 1 - simple control channel internal fail", &buf, 2u);
        }

        v5 = sub_10000FAC0(*(a1 + 32) + 8, kIDSDefaultPairedDeviceID);
        v6 = [v5 controlChannel];
        [v6 simulateDecryptionFailure];
        goto LABEL_6;
      case 2:
        v31 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Custom Test 2 - reset before control channel internal fail", &buf, 2u);
        }

        v32 = sub_10000FAC0(*(a1 + 32) + 8, kIDSDefaultPairedDeviceID);
        v33 = sub_1006C2FC8([v32 connectionsTableByLocalRemotePortKey], 67109888);
        [*(a1 + 32) resetTCPConnection:v33 forDeviceConnectionInfo:v32];
        v34 = [v32 controlChannel];
        [v34 simulateDecryptionFailure];

        goto LABEL_32;
      case 3:
        v35 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Custom Test 3 - simulate the control channel connection reset loop", &buf, 2u);
        }

        *(*(a1 + 32) + 128) = 1;
        v32 = im_primary_queue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100624C1C;
        block[3] = &unk_100BD6ED0;
        block[4] = *(a1 + 32);
        dispatch_async(v32, block);
LABEL_32:

        return;
      case 4:
        v9 = IMGetDomainIntForKey();
        v10 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Custom Test 4 - dump logs with flags %08X", &buf, 8u);
        }

        IDSNetworkingLogDump();
        return;
      case 5:
        v38 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Custom Test 5 - simulate reaching file descriptor limit", &buf, 2u);
        }

        v39 = +[NSMutableArray array];
        while (1)
        {
          v40 = socket(30, 2, 0);
          __error();
          v41 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 67109120;
            DWORD1(buf) = v40;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Custom Test 5 - made new socket %d", &buf, 8u);
          }

          IDSAssertNonFatalErrnoWithSource();
          v42 = [NSNumber numberWithInt:v40];
          [v39 addObject:v42];
        }

      case 6:
        v43 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Custom Test 6 - pop alert", &buf, 2u);
        }

        IDSInternalAlertSimple();
        return;
      case 7:
        v36 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Custom Test 7 - trigger utun socket stall detection", &buf, 2u);
        }

        v37 = [IDSStallDetector detectorWithName:@"kUTunConnectionDefaultUrgentOutgoingDetectorName"];
        v5 = v37;
        if (v37)
        {
          [v37 forceTriggerStallDetectedBlockWithEventName:@"TestTrigger"];
        }

        else
        {
          v6 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = @"kUTunConnectionDefaultUrgentOutgoingDetectorName";
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Custem Test 7 - Couldn't find the detector %@", &buf, 0xCu);
          }

LABEL_6:
        }

        goto LABEL_45;
      case 8:
        v15 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Custom Test 8 - filling utun os_channel...", &buf, 2u);
        }

        v16 = sub_10000FAC0(*(a1 + 32) + 8, kIDSDefaultPairedDeviceID);
        v17 = 0;
        v62 = 0;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        buf = 0u;
        v57 = 0u;
        do
        {
          v18 = *(a1 + 32);
          v19 = [v16 remoteSA];
          v20 = [v19 sa];
          v21 = [v16 localSA];
          LODWORD(v18) = [v18 handleUtunChannelWrite:v16 source:v20 destination:objc_msgSend(v21 upperProtocol:"sa") bytes:6 bytesLen:{&buf, 100}];

          ++v17;
        }

        while (v18);
        v22 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *v54 = 67109120;
          v55 = v17;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Custom Test 8 - filled utun os_channel after %d dummy writes", v54, 8u);
        }

        goto LABEL_23;
      case 9:
LABEL_23:
        v23 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Custom Test 9 - Inject Corrupted BT packet.", &buf, 2u);
        }

        v24 = *(a1 + 32);
        v25 = kIDSDefaultPairedDeviceID;
        v26 = *(v24 + 96);
        v5 = sub_10000FAC0(v24 + 8, v25);
        v27 = _IDSLinkPacketBufferCreate();
        v28 = *v27;
        v29 = [&stru_100C06028 stringByPaddingToLength:1000 withString:@"a" startingAtIndex:0];
        v30 = [v29 dataUsingEncoding:4];
        memcpy(v28, [v30 bytes], objc_msgSend(v30, "length"));
        v27[2] = [v30 length];
        v27[3] = [v30 length];
        *v28 = -1;
        [v26 injectFakePacketInBTLink:v27 cbuuid:v5[1].isa];

        free(v27);
        goto LABEL_45;
      case 10:
        v44 = IMGetCachedDomainBoolForKeyWithDefaultValue();
        v45 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = @"NO";
          if (v44)
          {
            v46 = @"YES";
          }

          LODWORD(buf) = 138412290;
          *(&buf + 4) = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Custom Test 10 - Control Message + main queue deadlock test (avoidMainQueue: %@", &buf, 0xCu);
        }

        v47 = *(a1 + 32);
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_100624CB8;
        v50[3] = &unk_100BE2A80;
        v51 = v44;
        v52 = 0;
        v13 = v47 + 8;
        v14 = v50;
        goto LABEL_54;
      case 11:
        v7 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Custom Test 11 - simulate starting control channel again", &buf, 2u);
        }

        v8 = sub_10000FAC0(*(a1 + 32) + 8, kIDSDefaultPairedDeviceID);
        v48[5] = _NSConcreteStackBlock;
        v48[6] = 3221225472;
        v48[7] = sub_100625218;
        v48[8] = &unk_100BD9AA8;
        v48[9] = *(a1 + 32);
        v49 = v8;
        v5 = v8;
        IDSTransportThreadAddBlock();

        goto LABEL_45;
      case 12:
        v11 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Custom Test 12 - Kill all links", &buf, 2u);
        }

        v12 = *(a1 + 32);
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_100625224;
        v48[3] = &unk_100BE2AA8;
        v48[4] = v12;
        v13 = v12 + 8;
        v14 = v48;
LABEL_54:
        sub_10000C18C(v13, v14);
        break;
      default:
        v5 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v3;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Custom Test - unsupported %ld", &buf, 0xCu);
        }

LABEL_45:

        break;
    }
  }
}

void sub_100624C1C(uint64_t a1)
{
  v4 = sub_10000FAC0(*(a1 + 32) + 8, kIDSDefaultPairedDeviceID);
  v2 = sub_1006C2FC8([v4 connectionsTableByLocalRemotePortKey], 67109888);
  [*(a1 + 32) resetTCPConnection:v2 forDeviceConnectionInfo:v4];
  v3 = [v4 controlChannel];
  [v3 simulateDecryptionFailure];
}

void sub_100624CB8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 controlChannel];
  v6 = [v4 cbuuid];
  v7 = [v6 description];

  v8 = [v4 cbuuid];

  v9 = [v5 remoteDeviceEncryptionInfo];

  v10 = +[IDSFoundationLog utunController];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 138412546;
      v25 = v7;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Custom Test 10 - about to ask main queue to sync onto TransportThread for %@ on %@", buf, 0x16u);
    }

    v12 = im_primary_queue();
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100624FC4;
    v21 = &unk_100BD6E40;
    v13 = v7;
    v22 = v13;
    v14 = v8;
    v23 = v14;
    dispatch_async(v12, &v18);

    v15 = [IDSFoundationLog utunController:v18];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Custom Test 10 - telling control channel to encrypt and send message for %@ on %@", buf, 0x16u);
    }

    [v5 setAvoidMainQueueOverrideToNO:(*(a1 + 32) & 1) == 0];
    v16 = [NSData dataWithBytes:a1 + 33 length:1];
    [v5 sendMessage:v16];

    v17 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Custom Test 10 - asked main queue to sync onto TransportThread for %@ on %@", buf, 0x16u);
    }

    v10 = v22;
  }

  else if (v11)
  {
    *buf = 138412546;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Custom Test 10 - skipping test for %@ on %@", buf, 0x16u);
  }
}

void sub_100624FC4(uint64_t a1)
{
  v2 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Custom Test 10 - about to sync onto TransportThread for %@ on %@", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  IDSTransportThreadAddSyncBlock();
  v5 = [IDSFoundationLog utunController:_NSConcreteStackBlock];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Custom Test 10 - sync onto TransportThread returned for %@ on %@", buf, 0x16u);
  }
}

void sub_10062515C(uint64_t a1)
{
  v2 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Custom Test 10 - sync operation on TransportThread for %@ on %@", &v5, 0x16u);
  }
}

void sub_100625224(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = [v4 cbuuid];
  v5 = [v4 deviceUniqueID];

  [*(*(a1 + 32) + 96) stopLinkForDeviceUniqueID:v5 cbuuid:v6 disconnectWP:1];
}

void sub_1006255A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 controlChannel];
  [v5 setDisableEncryption:*(*(a1 + 32) + 115)];

  v6 = NEVirtualInterfaceSetMaxPendingPackets();
  v7 = *__error();
  v8 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v4[1];
    if (v6)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    v11 = 138412802;
    v12 = v9;
    v13 = 1024;
    v14 = v6;
    v15 = 1024;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: SetMaxPendingPackets %d (%d)", &v11, 0x18u);
  }
}

void sub_10062598C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, unsigned __int16 *a7, size_t a8, char *a9, char *a10)
{
  v79 = a1;
  v15 = a2;
  v16 = a3;
  if (a6 == 6)
  {
    v77 = *(a7 + 13);
    v17 = (*(a7 + 12) >> 2) & 0x3C;
    v18 = bswap32(*(a7 + 1));
  }

  else
  {
    v18 = -1431655766;
    v77 = 170;
    v17 = -1431655766;
  }

  v20 = a9;
  v19 = a10;
  v73 = __rev16(*a7);
  v75 = __rev16(a7[1]);
  if (*(v79 + 104) == 1)
  {
    v21 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      if (a8 >= 0x28)
      {
        v22 = 40;
      }

      else
      {
        v22 = a8;
      }

      v23 = [v15 vifName];
      v24 = [NSData dataWithBytesNoCopy:a7 length:v22 freeWhenDone:0];
      v25 = v24;
      *buf = 138413826;
      v26 = " ...";
      v83 = v23;
      if (a8 < 0x29)
      {
        v26 = "";
      }

      v84 = 1024;
      *v85 = v73;
      *&v85[4] = 1024;
      *&v85[6] = v75;
      v86 = 1024;
      *v87 = a6;
      *&v87[4] = 2048;
      *&v87[6] = a8;
      *&v87[14] = 2112;
      *&v87[16] = v24;
      *&v87[24] = 2080;
      *&v87[26] = v26;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: Payload Handler! %u => %u proto:%d (len=%ld)\n\t\t=> data[%@%s]", buf, 0x3Cu);

      v20 = a9;
      v19 = a10;
    }
  }

  if (*(v15 + 8264) == 1)
  {
    v27 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v15 vifName];
      v29 = v15[1];
      *buf = 138412546;
      v83 = v28;
      v84 = 2112;
      *v85 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@: device %@ is suspending traffic", buf, 0x16u);
    }

    *v20 = 1;
    *v19 = 0;
    goto LABEL_92;
  }

  v78 = v20;
  v72 = v19;
  if (v16 && [*(v16 + 18) state] >= 2 && objc_msgSend(*(v16 + 18), "localContext"))
  {
    v30 = [*(v16 + 18) localCID];
    [*(v16 + 18) localContext];
    v31 = IDSHC_Compress();
    v71 = v30;
    if (v31)
    {
      v32 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v15 vifName];
        *buf = 138412546;
        v83 = v33;
        v84 = 2048;
        *v85 = v31;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%@: IDSHC_Compress failed (%lu), revert back to un-compressed", buf, 0x16u);

        v30 = v71;
      }
    }

    if (v30 < 0x10)
    {
      __n_4 = a7 - 1;
      __n = a8 + 1;
      v35 = a6 == 6 ? -96 : 0x80;
      *(a7 - 1) = v30 | v35;
    }

    else
    {
      __n_4 = a7 - 3;
      __n = a8 + 3;
      v34 = a6 == 6 ? -80 : -112;
      *(a7 - 3) = v34;
      *(a7 - 2) = BYTE1(v30);
      *(a7 - 1) = v30;
    }

    v36 = _IDSLinkPacketBufferCreate();
    memcpy(*v36, __n_4, __n);
    v36[2] = __n;
    if (!v31)
    {
      if (*(v79 + 104) == 1)
      {
        v44 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          if (__n >= 0x14)
          {
            v45 = 20;
          }

          else
          {
            v45 = __n;
          }

          v46 = v15[1038];
          v47 = [NSData dataWithBytesNoCopy:*v36 length:v45 freeWhenDone:0];
          *buf = 138414338;
          v48 = " ...";
          v83 = v46;
          *v85 = 1;
          v84 = 1024;
          if (__n < 0x15)
          {
            v48 = "";
          }

          *&v85[4] = 1024;
          *&v85[6] = a6 == 6;
          v86 = 1024;
          *v87 = v71;
          *&v87[4] = 1024;
          *&v87[6] = v73;
          *&v87[10] = 1024;
          *&v87[12] = v75;
          *&v87[16] = 2048;
          *&v87[18] = __n;
          *&v87[26] = 2112;
          v49 = v47;
          *&v87[28] = v47;
          *&v87[36] = 2080;
          v88 = v48;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%@: outgoing header (compressed_bit:%d protocol_bit:%d local_cid:%d s_port:%u d_port:%u)\n\t\t=> c(%luB): [%@%s]", buf, 0x48u);
        }
      }

LABEL_35:
      if (*(v79 + 114) == 1 && *(v16 + 4784) == 1)
      {
        v37 = v16[2406];
        v38 = sub_10050CB8C((v16 + 96), v37, *v36, v36[2], 1);
        if (v38)
        {
          v39 = v38;
          v40 = [v15 portMap];
          v41 = [v16 addressPair];
          v42 = [v41 localAddress];
          [v79 releasePortIfNecessary:v40 port:{objc_msgSend(v42, "saPortHostOrder")}];

          v43 = [NSString stringWithFormat:@"Encryption failure: %u", v39];
          [v79 removeConnection:v16 fromDeviceConnectionInfo:v15 removeCode:5301 removeReason:v43];

          _IDSLinkPacketBufferRelease();
          goto LABEL_92;
        }

        IDSLinkPacketBufferAddBufferStart();
        v50 = *v36;
        *v50 = 224;
        v50[1] = bswap32(v16[2406]) >> 16;
        *(v50 + 1) = bswap32(*(v16 + 1200));
        [v16 setSeqSend:(v37 + 1)];
      }

      goto LABEL_49;
    }
  }

  v36 = _IDSLinkPacketBufferCreate();
  **v36 = 32 * (a6 == 6);
  memcpy((*v36 + 1), a7, a8);
  v36[2] = a8 + 1;
  if (v16)
  {
    goto LABEL_35;
  }

LABEL_49:
  *(v36 + 38) = [v16 isCloudEnabled];
  *(v36 + 41) = [v16 isDefaultPairedDevice];
  if (v36[2] > 675)
  {
    v51 = 0;
  }

  else
  {
    v51 = [v16 isRealTime];
  }

  *(v36 + 42) = v51;
  if (qword_100CBF438 != -1)
  {
    sub_10092D8D8();
  }

  v76 = mach_continuous_time();
  v52 = *&qword_100CBF3C0;
  if (a6 == 6)
  {
    if (v16)
    {
      v53 = v18 + a8 - v17 + ((v77 & 2) >> 1);
      v54 = *(v16 + 25);
      if ((v54 & 0x40) != 0)
      {
        if ((v53 - *(v16 + 23)) <= 0x3FFFFFFE)
        {
          *(v16 + 23) = v53;
        }
      }

      else
      {
        *(v16 + 25) = v54 | 0x40;
        *(v16 + 23) = v53;
        if (qword_100CBF438 != -1)
        {
          sub_10092D8D8();
        }

        [v16 setConnectionSetupStartTime:*&qword_100CBF3C0 * mach_continuous_time()];
        v55 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v83 = v16;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "First packet for connection %@", buf, 0xCu);
        }
      }
    }

    if (*(v79 + 104) == 1)
    {
      v56 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = [v15 vifName];
        v58 = "S";
        if ((v77 & 2) == 0)
        {
          v58 = "";
        }

        v74 = v58;
        if ((v77 & 4) != 0)
        {
          v59 = "R";
        }

        else
        {
          v59 = "";
        }

        if ((v77 & 8) != 0)
        {
          v60 = "P";
        }

        else
        {
          v60 = "";
        }

        if ((v77 & 0x10) != 0)
        {
          v61 = ".";
        }

        else
        {
          v61 = "";
        }

        v62 = [v16 expectedNextOutgoingSequenceNumber];
        *buf = 138414082;
        v83 = v57;
        v84 = 1024;
        *v85 = a8;
        *&v85[4] = 1024;
        *&v85[6] = v77;
        v86 = 2080;
        *v87 = v74;
        *&v87[8] = 2080;
        *&v87[10] = v59;
        *&v87[18] = 2080;
        *&v87[20] = v60;
        *&v87[28] = 2080;
        *&v87[30] = v61;
        LOWORD(v88) = 1024;
        *(&v88 + 2) = v62;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%@: Sending TCP %uB (flags[%02X] [%s%s%s%s])) noseq:%08x", buf, 0x46u);
      }
    }
  }

  else if (a6 == 17)
  {
    kdebug_trace();
  }

  v63 = 1;
  *(v36 + 40) = 1;
  v64 = v36[2];
  v65 = [*(v79 + 12) sendPacketBuffer:v36 toDeviceUniqueID:v15[2] cbuuid:v15[1]];
  v66 = v65;
  if (v65 == 1)
  {
    v70 = 0;
    v67 = v78;
  }

  else
  {
    v67 = v78;
    if (v65 == 13)
    {
      v68 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v69 = [v15 utunSocket];
        *buf = 67109120;
        LODWORD(v83) = v69;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "[throughput] link throttling (s: %u)", buf, 8u);
      }

      v63 = 1;
    }

    else
    {
      v63 = 0;
    }

    v70 = 1;
  }

  *v67 = v63;
  *v72 = v70;
  if (v16)
  {
    ++*(v16 + 604);
    *(v16 + 606) += v64;
    if (!v66)
    {
      *(v16 + 17) = v52 * v76;
    }
  }

LABEL_92:
}

uint64_t sub_100626410(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 2628);
  if (v3 >= *(a3 + 2624))
  {
    return 0;
  }

  v7 = a3 + 1536;
  v8 = a3 + 8 * v3;
  do
  {
    v9 = *v8;
    v16 = -86;
    v15 = -86;
    sub_10062598C(a1, a2, v9, v10, v11, *(v7 + v3), *(v8 + 1600), *(v8 + 2112), &v16, &v15);
    if (v15 == 1)
    {
      v12 = *v8;
      *v8 = 0;

      ++*(a3 + 2628);
    }

    v13 = v16;

    if (v13 == 1)
    {
      break;
    }

    ++v3;
    v8 += 8;
  }

  while (v3 < *(a3 + 2624));
  return v13;
}

void sub_10062650C(void *a1, void *a2, char *a3)
{
  v8 = a1;
  v5 = a2;
  if (v5[2079])
  {
    sub_10092D9B0();
  }

  v6 = v5;
  if ((sub_100626410(v8, v5, (v5 + 2085)) & 1) != 0 || sub_100626410(v8, v6, v6 + 19312))
  {
    v7 = 1;
    IDSTransportThreadSuspendSocket();
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  if (a3)
  {
LABEL_5:
    *a3 = v7;
  }

LABEL_6:
}

void sub_1006265F0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v10 = a1;
  v11 = a2;
  v81 = v10;
  if (v10[27] < a8)
  {
    v12 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 vifName];
      v14 = v81[27];
      *buf = 138412802;
      *v89 = v13;
      *&v89[8] = 1024;
      *v90 = a8;
      *&v90[4] = 1024;
      *&v90[6] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: numPackets %u != max %u - dropping excess", buf, 0x18u);
    }

    a8 = v81[27];
  }

  if (v11[4826] != v11[4827])
  {
    v15 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v11 vifName];
      v17 = v11[4826] - v11[4827];
      *buf = 138412546;
      *v89 = v16;
      *&v89[8] = 1024;
      *v90 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: payload handler called while there are pending outgoing urgent packets - [%u] dropped", buf, 0x12u);
    }

    v18 = v11[4827];
    if (v18 < v11[4826])
    {
      v19 = &v11[2 * v18];
      do
      {
        v20 = *(v19 + 2085);
        *(v19 + 2085) = 0;

        ++v18;
        v19 += 2;
      }

      while (v18 < v11[4826]);
    }
  }

  v11[4827] = 0;
  v11[4826] = 0;
  if (v11[5484] != v11[5485])
  {
    v21 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v11 vifName];
      v23 = v11[5484] - v11[5485];
      *buf = 138412546;
      *v89 = v22;
      *&v89[8] = 1024;
      *v90 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: payload handler called while there are pending outgoing regular packets - [%u] dropped", buf, 0x12u);
    }

    v24 = v11[5485];
    if (v24 < v11[5484])
    {
      v25 = &v11[2 * v24];
      do
      {
        v26 = *(v25 + 2414);
        *(v25 + 2414) = 0;

        ++v24;
        v25 += 2;
      }

      while (v24 < v11[5484]);
    }
  }

  v11[5485] = 0;
  v11[5484] = 0;
  v86 = a8;
  if (a8)
  {
    v27 = 0;
    do
    {
      v28 = *(a5 + v27);
      if (v28 == 6 || v28 == 17)
      {
        v30 = *(a6 + 8 * v27);
        v31 = *v30;
        v32 = v30[1];
        if (v28 == 6)
        {
          v33 = *(v30 + 13);
          v34 = bswap32(*(v30 + 1));
          v35 = ((*(v30 + 12) >> 2) & 0x3C) == *(a7 + 8 * v27);
        }

        else
        {
          kdebug_trace();
          v34 = 0;
          v33 = 0;
          v35 = 0;
        }

        v36 = __rev16(v31);
        v37 = __rev16(v32);
        v38 = sub_1006C2FC8([v11 connectionsTableByLocalRemotePortKey], v37 | (v36 << 16));
        v41 = v38;
        if (v38 || *(a5 + v27) == 6 && (v33 & 4) != 0)
        {
          if (!v35 && ([v38 priority]== 200 || [v41 priority]== 100))
          {
            v39 = 0;
            v40 = &OBJC_IVAR___IDSDeviceConnectionInfo_regularPackets;
          }

          else
          {
            v39 = 1;
            v40 = &OBJC_IVAR___IDSDeviceConnectionInfo_urgentPackets;
          }

          v47 = *v40;
          v48 = +[IDSFoundationLog utunController];
          v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
          if (v86 == 1)
          {
            if (v49)
            {
              v50 = [v11 vifName];
              *buf = 138412546;
              *v89 = v50;
              *&v89[8] = 1024;
              *v90 = v39;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%@: handleMultiple - saving packet to list (urgent: %d)", buf, 0x12u);
            }
          }

          else if (v49)
          {
            v51 = [v11 vifName];
            *buf = 138413058;
            *v89 = v51;
            *&v89[8] = 1024;
            *v90 = v27;
            *&v90[4] = 1024;
            *&v90[6] = v86;
            *&v90[10] = 1024;
            *&v90[12] = v39;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%@: handleMultiple - saving packet #%u (total %u) to list (urgent: %d)", buf, 0x1Eu);
          }

          v52 = v11 + v47;
          v53 = objc_initWeak(buf, v41);
          v54 = *(v11 + v47 + 2624);
          v55 = *(&v11[2 * v54] + v47);
          *&v52[8 * v54] = v41;

          v56 = *(v11 + v47 + 2624);
          v57 = &v11[2 * v56] + v47;
          *(v57 + 512) = *(a3 + 8 * v27);
          *(v57 + 1024) = *(a4 + 8 * v27);
          v52[v56 + 1536] = *(a5 + v27);
          v58 = *(v11 + v47 + 2624);
          v59 = &v11[2 * v58] + v47;
          *(v59 + 1600) = *(a6 + 8 * v27);
          *(v59 + 2112) = *(a7 + 8 * v27);
          *(v52 + 656) = v58 + 1;
          objc_destroyWeak(buf);
        }

        else
        {
          v60 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v61 = [v11 vifName];
            *buf = 138413058;
            *v89 = v61;
            *&v89[8] = 1024;
            *v90 = v36;
            *&v90[4] = 1024;
            *&v90[6] = v37;
            *&v90[10] = 2112;
            *&v90[12] = v11;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%@: cannot find connection for outgoing packet [%u => %u] in [%@]", buf, 0x22u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            [v11 vifName];
            v78 = v37;
            v76 = v79 = v11;
            v77 = v36;
            _IDSLogV();
          }

          if (*(a5 + v27) == 6)
          {
            memset(v94, 170, sizeof(v94));
            v62 = *(v30 + 2);
            v63 = +[IDSFoundationLog utunController];
            v64 = bswap32(v62);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v89 = v34;
              *&v89[4] = 1024;
              *&v89[6] = v64;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "reset TCP using seq:%08x ack:%08x", buf, 0xEu);
            }

            sub_10062704C(v94, v37, v36, v64, (((v33 >> 1) & 1) == 0) + v34);
            v65 = [v11 remoteSA];
            v66 = [v65 sa6];
            v67 = [v11 localSA];
            tcp6checksum((v66 + 8), ([v67 sa6] + 8), v94, 0x14uLL);

            if (*(v11 + 2079))
            {
              sub_10092D9DC();
            }

            [v11 vifRef];
            v68 = [v11 remoteSA];
            [v68 sa];
            v69 = [v11 localSA];
            [v69 sa];
            v70 = NEVirtualInterfaceWriteIPPayload();

            v71 = +[IDSFoundationLog utunController];
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              v72 = [v11 vifName];
              v73 = [v11 localSA];
              v74 = [v11 remoteSA];
              v75 = [NSData dataWithBytesNoCopy:v94 length:20 freeWhenDone:0];
              *buf = 138413314;
              *v89 = v72;
              *&v89[8] = 2112;
              *v90 = v73;
              *&v90[8] = 2112;
              *&v90[10] = v74;
              *&v90[18] = 1024;
              v91 = v70;
              v92 = 2112;
              v93 = v75;
              _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%@: write generated reset %@ <= %@ neRet=%d\n\t\t<= data[%@]", buf, 0x30u);
            }
          }
        }
      }

      else
      {
        v41 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [v11 vifName];
          v44 = *(a5 + v27);
          v45 = *(v81 + 104);
          v46 = @"--";
          if (v45 == 1)
          {
            v80 = [NSData dataWithBytesNoCopy:*(a6 + 8 * v27) length:*(a7 + 8 * v27) freeWhenDone:0];
            v46 = v80;
          }

          *buf = 138412802;
          *v89 = v43;
          *&v89[8] = 1024;
          *v90 = v44;
          *&v90[4] = 2112;
          *&v90[6] = v46;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%@: dropping unknown proto[%u] packet [%@]", buf, 0x1Cu);
          if (v45)
          {
          }
        }
      }

      ++v27;
    }

    while (v86 != v27);
  }

  sub_10062650C(v81, v11, 0);
}

void sub_10062704C(uint64_t a1, __int16 a2, __int16 a3, int a4, int a5)
{
  *a1 = HIBYTE(a2);
  *(a1 + 1) = a2;
  *(a1 + 2) = HIBYTE(a3);
  *(a1 + 3) = a3;
  *(a1 + 4) = HIBYTE(a4);
  *(a1 + 5) = BYTE2(a4);
  *(a1 + 6) = BYTE1(a4);
  *(a1 + 7) = a4;
  *(a1 + 8) = HIBYTE(a5);
  *(a1 + 9) = BYTE2(a5);
  *(a1 + 10) = BYTE1(a5);
  *(a1 + 11) = a5;
  *(a1 + 12) = 5200;
  *(a1 + 14) = 0;
  *(a1 + 18) = 0;
  v6 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSData dataWithBytesNoCopy:a1 length:20 freeWhenDone:0];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Made reset[%@]", &v8, 0xCu);
  }
}

void sub_10062A7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v15 = objc_autoreleasePoolPush();
  sub_1006265F0(*(a1 + 32), *(a1 + 40), a3, a4, a5, a6, a7, a8);

  objc_autoreleasePoolPop(v15);
}

void sub_10062A860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = objc_autoreleasePoolPush();
  LOBYTE(v14) = 1;
  [*(a1 + 32) handleIPPayload:a6 bytesLength:a7 source:a3 destination:a4 upperProtocol:a5 forDeviceConnectionInfo:*(a1 + 40) flush:v14 callerShouldStop:0];

  objc_autoreleasePoolPop(v13);
}

void sub_10062A8F8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3[2079])
  {
    v4 = *(v2 + 108);

    [v2 handleUtunChannelRead:v3 limit:v4];
  }

  else if (*(v2 + 105) == 1)
  {
    v9 = -86;
    sub_10062650C(v2, v3, &v9);
    if ((v9 & 1) == 0)
    {
      v5 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 48);
        *buf = 67109120;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ready-to-read-multiple on %d (utun)", buf, 8u);
      }

      NEVirtualInterfaceReadyToReadMultiple();
    }
  }

  else
  {
    v7 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      *buf = 67109120;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ready-to-read on %d (utun)", buf, 8u);
    }

    NEVirtualInterfaceReadyToRead();
  }
}

void sub_10062BC60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, int a9, void *a10)
{
  v14 = a2;
  v15 = a8;
  v16 = a10;
  if (!v16)
  {
    v22 = *(a1 + 40);
    if ([*(a1 + 32) shouldUseServiceConnector])
    {
      if (!v15)
      {
        v26 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [*(a1 + 32) vifName];
          *buf = 138412290;
          v62 = v27;
          v28 = "%@: startDataChannelWithDevice: finished with no error, but no connection";
          v29 = v26;
          v30 = 12;
          goto LABEL_37;
        }

LABEL_38:

        goto LABEL_39;
      }

      if (!v22)
      {
        v22 = [IDSGenericConnectionID idWithAccount:*(a1 + 48) service:*(a1 + 56) name:*(a1 + 64)];
        v32 = [*(a1 + 32) connectionsByID];
        v33 = [v32 objectForKey:v22];

        if (!v33)
        {
          v43 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = [*(a1 + 32) vifName];
            v45 = *(a1 + 80);
            *buf = 138413058;
            v62 = v44;
            v63 = 2048;
            v64 = v15;
            v65 = 2112;
            v66 = v15;
            v67 = 2112;
            v68 = v45;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%@: service connection (%p) %@ connected for service %@ but no generic connection - saving in cache", buf, 0x2Au);
          }

          v26 = [*(a1 + 32) serviceConnectionCache];
          [v26 setObject:v15 forKey:*(a1 + 80)];
          goto LABEL_38;
        }

        v22 = v33;
      }

      [v22 reportToAWD:5 connectionType:*(a1 + 88) error:0];
      [v22 setServiceConnection:v15];
      [v22 setSd:0xFFFFFFFFLL];
      [v22 setConnectError:0];
      v34 = [v22 openSocketCompletionHandler];

      if (!v34)
      {
LABEL_34:
        v46 = v22;
        v47 = *(a1 + 32);
        v22 = v22;
        IDSTransportThreadAddBlockAfter();

        v26 = v46;
        goto LABEL_38;
      }

      [v22 setStateFlags:[v22 stateFlags]| 2];
      v35 = [v22 openSocketCompletionHandler];
      [v22 setOpenSocketCompletionHandler:0];
      if (!_IDSSupportsDirectMessaging() || ([v22 isDirectMsgChannel]& 1) == 0)
      {
        [v22 socketTrafficClass];
        a9 = TrafficClassForIDSOpenSocketPriorityLevel();
      }

      v36 = [v22 completionQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10062C518;
      block[3] = &unk_100BE2B48;
      v54 = v35;
      v51 = *(a1 + 32);
      v55 = a7;
      v56 = a9;
      v52 = v15;
      v53 = 0;
      v37 = v35;
      dispatch_async(v36, block);
    }

    else
    {
      [v22 setSdOriginal:a6];
      [v22 setSdNumberNoClose:a6];
      v41 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v62) = a6;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "about to wait for connect ready for {socket:%d}", buf, 8u);
      }

      v22 = v22;
      v48 = *(a1 + 32);
      v49 = *(a1 + 56);
      IDSTransportThreadAddSocket();
      v42 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v62) = a6;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "scheduled wait for connect ready for {socket:%d}", buf, 8u);
      }

      v37 = v22;
    }

    goto LABEL_34;
  }

  v17 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 32) vifName];
    v19 = *(*(a1 + 32) + 8);
    *buf = 138412802;
    v62 = v18;
    v63 = 2112;
    v64 = v19;
    v65 = 2112;
    v66 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: error creating socket with [%@] [%@]", buf, 0x20u);
  }

  v20 = [*(a1 + 32) shouldUseServiceConnector];
  v21 = *(a1 + 40);
  if (v20)
  {
    v22 = v21;
    if (!v22)
    {
      v23 = [IDSGenericConnectionID idWithAccount:*(a1 + 48) service:*(a1 + 56) name:*(a1 + 64)];
      v24 = [*(a1 + 32) connectionsByID];
      v22 = [v24 objectForKey:v23];
    }

    [*(a1 + 40) reportToAWD:5 connectionType:*(a1 + 88) error:{objc_msgSend(v16, "code")}];
    if (v22)
    {
      v25 = [v22 serviceConnection];

      if (v25)
      {
        v26 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [*(a1 + 32) vifName];
          *buf = 138412546;
          v62 = v27;
          v63 = 2112;
          v64 = v16;
          v28 = "%@: start_request returns error but data channel fine - assuming connected via available block. Error %@";
          v29 = v26;
          v30 = 22;
LABEL_37:
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);

          goto LABEL_38;
        }

        goto LABEL_38;
      }
    }
  }

  else
  {
    [v21 reportToAWD:objc_msgSend(*(*(a1 + 72) + 96) connectionType:"currentLinkType:" error:{*(*(a1 + 32) + 8)), *(a1 + 88), objc_msgSend(v16, "code")}];
  }

  v38 = [*(a1 + 40) openSocketCompletionHandler];

  if (v38)
  {
    [*(a1 + 40) setStateFlags:{objc_msgSend(*(a1 + 40), "stateFlags") | 2}];
    v39 = [*(a1 + 40) openSocketCompletionHandler];
    v40 = [*(a1 + 40) completionQueue];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_10062C4C0;
    v57[3] = &unk_100BE2B20;
    v59 = v39;
    v60 = a7;
    v58 = v16;
    v22 = v39;
    dispatch_async(v40, v57);

LABEL_39:
    goto LABEL_40;
  }

  if (([*(a1 + 40) sd] & 0x80000000) == 0)
  {
    close([*(a1 + 40) sd]);
  }

  [*(a1 + 40) setServiceConnection:0];
  [*(a1 + 40) setSd:0xFFFFFFFFLL];
  [*(a1 + 40) setConnectError:v16];
LABEL_40:
}

void sub_10062C518(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) controlChannelVersion];
  (*(v2 + 16))(v2, v3, [*(a1 + 32) capabilityFlags], objc_msgSend(*(a1 + 32), "instanceID"), objc_msgSend(*(a1 + 32), "serviceMinCompatibilityVersion"), 0xFFFFFFFFLL, *(a1 + 64), *(a1 + 40), *(a1 + 72), *(a1 + 48));
}

void sub_10062C5C8(uint64_t a1)
{
  [*(a1 + 32) setSdOriginal:0xFFFFFFFFLL];
  v67 = 4;
  __errnum = -1431655766;
  v2 = getsockopt(*(a1 + 64), 0xFFFF, 4103, &__errnum, &v67);
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 64);
    v5 = [*(a1 + 32) addressPair];
    v6 = [v5 shortDescription];
    if (v2)
    {
      v7 = -1;
    }

    else
    {
      v7 = __errnum;
    }

    if (v2)
    {
      v8 = "unknown";
    }

    else if (__errnum)
    {
      v8 = strerror(__errnum);
    }

    else
    {
      v8 = "no error";
    }

    v9 = [*(a1 + 32) connectionID];
    v10 = *(a1 + 40);
    *buf = 67110402;
    v70 = v4;
    v71 = 2112;
    *v72 = v6;
    *&v72[8] = 1024;
    *&v72[10] = v7;
    v73 = 2080;
    v74 = v8;
    v75 = 2112;
    v76 = v9;
    v77 = 2114;
    v78 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "connect ready for {socket:%d} (ports[%@]), socket error: %d (%s), connection[%@], device[%{public}@]", buf, 0x36u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v11 = *(a1 + 64);
    v12 = [*(a1 + 32) addressPair];
    v13 = [v12 shortDescription];
    v14 = v2 ? 0xFFFFFFFFLL : __errnum;
    if (v2)
    {
      v15 = "unknown";
    }

    else
    {
      v15 = __errnum ? strerror(__errnum) : "no error";
    }

    v56 = [*(a1 + 32) connectionID];
    v57 = *(a1 + 40);
    v54 = v14;
    v55 = v15;
    v52 = v11;
    v53 = v13;
    _IDSLogTransport();

    if (_IDSShouldLog())
    {
      v16 = *(a1 + 64);
      v17 = [*(a1 + 32) addressPair];
      v18 = [v17 shortDescription];
      if (v2)
      {
        v19 = 0xFFFFFFFFLL;
      }

      else
      {
        v19 = __errnum;
      }

      if (v2)
      {
        v20 = "unknown";
      }

      else if (__errnum)
      {
        v20 = strerror(__errnum);
      }

      else
      {
        v20 = "no error";
      }

      v56 = [*(a1 + 32) connectionID];
      v57 = *(a1 + 40);
      v54 = v19;
      v55 = v20;
      v52 = v16;
      v53 = v18;
      _IDSLogV();
    }
  }

  v21 = [*(a1 + 32) idsDeviceConnectionUUID];

  if (v21)
  {
    v22 = +[IDSDeviceConnectionAWDMetrics sharedInstance];
    [*(a1 + 32) connectionInitTime];
    v24 = v23;
    v25 = [*(a1 + 32) idsDeviceConnectionUUID];
    [v22 setConnectionInitTime:v25 forConnectionUUID:v24];
  }

  v26 = *(a1 + 64);
  if (v2)
  {
    __errnum = *__error();
    v27 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v70 = __errnum;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "getsockopt failed %d", buf, 8u);
    }
  }

  if (__errnum)
  {
    v28 = [*(a1 + 40) vifName];
    v29 = [NSString stringWithFormat:@"%@: socket failed (errno=%d)", v28, __errnum];

    v30 = [NSDictionary dictionaryWithObject:v29 forKey:NSLocalizedDescriptionKey];
    v31 = [NSError errorWithDomain:@"IDSUTun" code:5005 userInfo:v30];

    v32 = *(a1 + 64);
    if (v32 != -1)
    {
      close(v32);
    }

    v26 = 0xFFFFFFFFLL;
  }

  else
  {
    if ((v26 & 0x80000000) == 0)
    {
      if (([*(a1 + 32) sdCopy] & 0x80000000) == 0)
      {
        close([*(a1 + 32) sdCopy]);
      }

      [*(a1 + 32) setSdCopy:dup(v26)];
      if (([*(a1 + 32) sdCopy] & 0x80000000) != 0)
      {
        __error();
        IDSAssertNonFatalErrnoWithSource();
      }

      else
      {
        v33 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [*(a1 + 32) sdCopy];
          v35 = *(a1 + 32);
          *buf = 67109634;
          v70 = v34;
          v71 = 1024;
          *v72 = v26;
          *&v72[4] = 2112;
          *&v72[6] = v35;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Saved sdCopy {socket:%d} of {socket:%d} in %@", buf, 0x18u);
        }
      }
    }

    v31 = 0;
  }

  v36 = *(*(a1 + 48) + 96);
  v37 = [*(a1 + 40) cbuuid];
  v38 = [v36 currentLinkType:v37];

  v39 = [*(a1 + 32) openSocketCompletionHandler];

  if (v39)
  {
    [*(a1 + 32) setStateFlags:{objc_msgSend(*(a1 + 32), "stateFlags") | 2}];
    v40 = [*(a1 + 32) openSocketCompletionHandler];
    [*(a1 + 32) setOpenSocketCompletionHandler:0];
    if (qword_100CBF438 != -1)
    {
      sub_10092D8D8();
    }

    v41 = mach_continuous_time();
    v42 = *&qword_100CBF3C0;
    [*(a1 + 32) socketTrafficClass];
    v43 = TrafficClassForIDSOpenSocketPriorityLevel();
    sub_10062CDEC(v26, v43);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10062CF5C;
    block[3] = &unk_100BE2B70;
    v63 = v42 * v41;
    v62 = v40;
    v58 = *(a1 + 40);
    v44 = v58.i64[0];
    v60 = vextq_s8(v58, v58, 8uLL);
    v64 = v38;
    v45 = *(a1 + 68);
    v65 = v26;
    v66 = v45;
    v61 = v31;
    v46 = v40;
    v47 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
    v48 = [*(a1 + 32) completionQueue];
    dispatch_async(v48, v47);
  }

  else
  {
    if (([*(a1 + 32) sd] & 0x80000000) == 0)
    {
      close([*(a1 + 32) sd]);
    }

    [*(a1 + 32) setSd:v26];
    [*(a1 + 32) setConnectError:v31];
  }

  if ([*(a1 + 56) isEqualToIgnoringCase:@"com.apple.private.alloy.phonecontinuity"])
  {
    v49 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Skipping header compression for phone continuity", buf, 2u);
    }
  }

  else if (!v31)
  {
    v50 = [*(a1 + 32) compressionInfo];
    v51 = [v50 state] < 2;

    if (v51)
    {
      [*(a1 + 48) startCompressionForConnection:*(a1 + 32) deviceConnectionInfo:*(a1 + 40)];
    }
  }

  IDSTransportThreadRemoveSocket();
}

void sub_10062CDEC(int a1, int a2)
{
  v10 = a2;
  if (a1 != -1)
  {
    if (setsockopt(a1, 0xFFFF, 4230, &v10, 4u))
    {
      v3 = *__error();
      v4 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v10;
        v6 = strerror(v3);
        *buf = 67109890;
        v12 = a1;
        v13 = 1024;
        v14 = v5;
        v15 = 1024;
        v16 = v3;
        v17 = 2080;
        v18 = v6;
        v7 = "setsockopt on socket (%d) failed for traffic class (%d), (error=%d: %s).";
        v8 = v4;
        v9 = 30;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }

    else
    {
      v4 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v12 = a1;
        v13 = 1024;
        v14 = v10;
        v7 = "setsockopt on socket (%d) succeeded for traffic class (%d).";
        v8 = v4;
        v9 = 14;
        goto LABEL_7;
      }
    }
  }
}

void sub_10062CF5C(uint64_t a1)
{
  if (qword_100CBF438 != -1)
  {
    sub_10092D900();
  }

  v2 = *&qword_100CBF3C0 * mach_continuous_time() - *(a1 + 64);
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412546;
    v10 = v4;
    v11 = 2048;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: openSocketCompletionHandler dispatch time %0.6lf seconds", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v8 = v2;
      v7 = *(a1 + 32);
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v8 = v2;
        v7 = *(a1 + 32);
        _IDSLogV();
      }
    }
  }

  v5 = *(a1 + 56);
  v6 = [*(a1 + 40) controlChannelVersion];
  (*(v5 + 16))(v5, v6, [*(a1 + 40) capabilityFlags], objc_msgSend(*(a1 + 40), "instanceID"), objc_msgSend(*(a1 + 40), "serviceMinCompatibilityVersion"), *(a1 + 80), *(a1 + 72), 0, *(a1 + 84), *(a1 + 48));
}

void sub_10062D168(id *a1)
{
  if (([a1[4] stateFlags] & 1) == 0 && (objc_msgSend(a1[4], "didInvalidate") & 1) == 0)
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[4];
      *buf = 138412546;
      v22 = v3;
      v23 = 2112;
      v24 = &off_100C3CE38;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "openSocket was never called on connection (%@) within %@ seconds of starting it.  Kill the connection!", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v19 = a1[4];
        v20 = &off_100C3CE38;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v19 = a1[4];
          v20 = &off_100C3CE38;
          _IDSLogV();
        }
      }
    }

    v4 = [a1[4] connectionID];
    v5 = [a1[4] localConnectionGUID];
    v6 = [a1[4] remoteConnectionGUID];
    v7 = [v4 account];
    v8 = [v4 service];
    v9 = [v4 name];
    v10 = sub_10062D4A4(v5, v6, v7, v8, v9);

    if (v10)
    {
      v11 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [a1[5] vifName];
        v13 = a1[4];
        *buf = 138412802;
        v22 = v12;
        v23 = 2112;
        v24 = v10;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: close channel control message [%@] created for connection %@", buf, 0x20u);
      }

      v14 = [a1[5] controlChannel];
      [v14 sendMessage:v10];
    }

    v15 = a1[6];
    v16 = [a1[5] portMap];
    v17 = [a1[4] addressPair];
    v18 = [v17 localAddress];
    [v15 releasePortIfNecessary:v16 port:{objc_msgSend(v18, "saPortHostOrder")}];

    [a1[6] removeConnection:a1[4] fromDeviceConnectionInfo:a1[5] removeCode:5104 removeReason:{@"openSocket was never called, closing connection"}];
  }
}

id sub_10062D4A4(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    v11 = a1;
    v12 = a5;
    v13 = a4;
    v24 = [a1 UTF8String];
    v14 = strlen(v24);
    if (v9)
    {
      v23 = [v9 UTF8String];
      v15 = strlen(v23);
    }

    else
    {
      v15 = 0;
      v23 = 0;
    }

    v25 = [v10 UTF8String];
    v17 = strlen(v25);
    v18 = [v13 UTF8String];

    v19 = strlen(v18);
    v20 = [v12 UTF8String];

    v21 = strlen(v20);
    v26[0] = 3;
    v26[1] = HIBYTE(v14);
    v26[2] = v14;
    v26[3] = BYTE1(v15);
    v26[4] = v15;
    v26[5] = HIBYTE(v17);
    v26[6] = v17;
    v26[7] = HIBYTE(v19);
    v26[8] = v19;
    v26[9] = HIBYTE(v21);
    v26[10] = v21;
    v16 = objc_alloc_init(NSMutableData);
    [v16 appendBytes:v26 length:11];
    if (v14)
    {
      [v16 appendBytes:v24 length:v14];
    }

    if (v15)
    {
      [v16 appendBytes:v23 length:v15];
    }

    [v16 appendBytes:v25 length:{v17, v23}];
    [v16 appendBytes:v18 length:v19];
    [v16 appendBytes:v20 length:v21];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_10062D6C0(id a1)
{
  v1 = +[IDSUTunDeliveryController sharedInstance];
  [v1 setCompanionLinkPreference:1];
}

void sub_10062D70C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (nw_protocol_options_is_quic(v3))
  {
    v4 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "IDSUTunController:startDataChannelWithDevice: nw_protocol_stack_iterate_application_protocols for %@", &v6, 0xCu);
    }

    nw_quic_set_max_datagram_frame_size(v3, 0x5B4u);
  }
}

void sub_10062DDDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10062DE00(uint64_t a1, void *a2, int a3, int a4, int a5, int a6)
{
  v11 = a2;
  if (v11)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      v12 = [*(a1 + 48) controlChannel];
      v13 = [v12 deviceUniqueID];

      if (v13)
      {
        v14 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 40);
          *buf = 138412546;
          v53 = v13;
          v54 = 2112;
          v55 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Successfully decrypted control message, lock peer %@ for cbuuid %@.", buf, 0x16u);
        }

        v16 = +[IDSUTunDeliveryController sharedInstance];
        [v16 lockContinuityPeer:v13 btUUID:*(a1 + 40)];
      }
    }

    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 48);
      *buf = 134218498;
      v53 = v18;
      v54 = 2112;
      v55 = v11;
      v56 = 2112;
      v57 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%p: control channel got message %@ device conn info:%@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v46 = v11;
      v47 = *(a1 + 48);
      v45 = *(a1 + 32);
      _IDSLogV();
    }

    [*(a1 + 32) receiveControlChannelMessage:v11 fromCbuuid:*(a1 + 40) deviceUniqueID:{*(a1 + 56), v45, v46, v47}];
    goto LABEL_42;
  }

  if (a4 && *(a1 + 64) == 1)
  {
    v20 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "FairPlay authentication failed, obliterate device connection.", buf, 2u);
    }

    v21 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10062E514;
    block[3] = &unk_100BD6ED0;
    block[4] = *(a1 + 32);
    dispatch_async(v21, block);

    goto LABEL_42;
  }

  if (a6)
  {
    v22 = [*(a1 + 32) linkManager];
    [v22 triggerBTCorruptionRecoveryForCBUUID:*(a1 + 40)];
  }

  v23 = sub_1006C2FC8([*(a1 + 48) connectionsTableByLocalRemotePortKey], 67109888);
  [*(a1 + 32) resetTCPConnection:v23 forDeviceConnectionInfo:*(a1 + 48)];
  if (a3)
  {
    [*(a1 + 32) resetAllConnectionsForDevice:*(a1 + 48)];
  }

  v24 = [*(a1 + 48) linkLayerConnected];
  v25 = +[IDSDevicePolicyController sharedInstance];
  v26 = [v25 shouldBlackOutDeviceWithCbuuid:*(a1 + 40)];

  if (v26)
  {
    v27 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 56);
      v29 = *(a1 + 40);
      v30 = [*(a1 + 48) controlChannel];
      v31 = [v30 deviceUniqueID];
      *buf = 138412802;
      v53 = v29;
      v54 = 2112;
      v55 = v28;
      v56 = 2112;
      v57 = v31;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Device %@/%@ (CC:%@) is blacked out due to fairplay failures", buf, 0x20u);
    }

    v32 = [*(a1 + 32) linkManager];
    [v32 stopLinkForDeviceUniqueID:*(a1 + 56) cbuuid:*(a1 + 40) disconnectWP:1];

    goto LABEL_29;
  }

  if (!v24)
  {
LABEL_29:
    v33 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 40);
      *buf = 138412290;
      v53 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Add a block for control channel reestablishment on link connects for %@", buf, 0xCu);
    }

    objc_initWeak(buf, *(a1 + 48));
    v35 = *(a1 + 48);
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_10062E58C;
    v48[3] = &unk_100BE2C08;
    objc_copyWeak(v49, buf);
    v48[4] = *(a1 + 32);
    [v35 addBlocksOnLinkConnect:v48];
    objc_destroyWeak(v49);
    objc_destroyWeak(buf);
    goto LABEL_32;
  }

  v49[1] = _NSConcreteStackBlock;
  v49[2] = 3221225472;
  v49[3] = sub_10062E580;
  v49[4] = &unk_100BD9AA8;
  v49[5] = *(a1 + 32);
  v50 = *(a1 + 48);
  IDSTransportThreadAddBlockAfter();

LABEL_32:
  if (a5 && (*(a1 + 64) & 1) == 0)
  {
    v36 = [*(a1 + 48) controlChannel];
    v37 = [v36 deviceUniqueID];

    v38 = +[IDSUTunDeliveryController sharedInstance];
    v39 = [v38 pendingContinuityPeerID:*(a1 + 40)];

    v40 = [v37 isEqualToString:v39];
    v41 = +[IDSFoundationLog utunController];
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    if (v40)
    {
      if (v42)
      {
        v43 = *(a1 + 56);
        v44 = *(a1 + 40);
        *buf = 138412546;
        v53 = v43;
        v54 = 2112;
        v55 = v44;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Failed to encrypt/decrypt control message with deviceUniqueID %@, try different peer for %@.", buf, 0x16u);
      }

      v41 = +[IDSUTunDeliveryController sharedInstance];
      [v41 tryNextContinuityPeer:*(a1 + 40)];
    }

    else if (v42)
    {
      *buf = 138412546;
      v53 = v37;
      v54 = 2112;
      v55 = v39;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "deviceUniqueID mismatch (%@!=%@), ignore decryption error.", buf, 0x16u);
    }
  }

LABEL_42:
}

void sub_10062E4D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_10062E514(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = +[IDSPairingManager sharedInstance];
  v2 = [v3 pairedDeviceUUIDString];
  [v1 obliterateConnectionInfoForCBUUID:v2];
}

uint64_t sub_10062E58C(uint64_t a1, char a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (!a3 && (a2 & 1) == 0 && WeakRetained)
  {
    v9 = WeakRetained;
    WeakRetained = [*(a1 + 32) startControlChannelWithDevice:WeakRetained];
    v7 = v9;
  }

  return _objc_release_x1(WeakRetained, v7);
}

void sub_10062E600(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (!v5 && (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));

    v5 = 0;
    if (WeakRetained)
    {
      v7 = objc_loadWeakRetained((a1 + 40));
      [*(a1 + 32) startControlChannelWithDevice:v7];

      v5 = 0;
    }
  }
}

id sub_10062E954(uint64_t a1)
{
  v2 = [[IDSLinkManager alloc] initWithDelegate:*(a1 + 32)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;

  [*(*(a1 + 32) + 96) setRequireBT:*(a1 + 40)];
  v5 = *(*(a1 + 32) + 96);

  return [v5 start];
}

void sub_10062EB64(uint64_t a1, void *a2, __CFError *a3)
{
  v5 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  v7 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = vabdd_f64(Current, *(a1 + 48));
    *buf = 134219010;
    v17 = v5;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = a3;
    v22 = 2080;
    v23 = v8;
    v24 = 2048;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "nw_service_connector_start_request returned connection(%p) %@ error %@ for %s connection_time: %fs", buf, 0x34u);
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  Code = CFErrorGetCode(a3);
  if (Code != 36)
  {
    if (Code == 17)
    {
      v11 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "nw_service_connector_start_request returned EEXIST - exit";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
        goto LABEL_12;
      }

      goto LABEL_12;
    }

LABEL_8:
    v13 = a3;
    v15 = *(a1 + 32);
    v14 = v5;
    v11 = v13;
    IDSTransportThreadAddBlock();

    goto LABEL_12;
  }

  v11 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v12 = "nw_service_connector_start_request returned EINPROGRESS - exit";
    goto LABEL_11;
  }

LABEL_12:
}

void sub_10062F924(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_10062FAC8;
    v9 = &unk_100BE2CB8;
    v3 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = &v12;
    sub_10000C18C(v3 + 8, &v6);
    if (*(v13 + 24) == 1)
    {
      v4 = [IDSFoundationLog utunController:v6];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(a1 + 40) + 8);
        *buf = 138412546;
        v17 = v5;
        v18 = 1024;
        v19 = dword_100CB2100;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UTunController calling startControlChannelWithDevice for [%@] after %d seconds", buf, 0x12u);
      }

      [*(a1 + 32) startControlChannelWithDevice:*(a1 + 40)];
    }

    _Block_object_dispose(&v12, 8);
  }
}

void sub_10062FAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10062FAC8(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a3)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_1006303BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = a10;
  v16 = a8;
  [v12 prepareControlChannelForDeviceConnectionInfo:v13 genericConnection:v14];
  [*(a1 + 32) didConnectControlChannelForDeviceConnectionInfo:*(a1 + 40) connection:v16 error:v15];
}

void sub_10063044C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = a10;
  v13 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [a1[4] cbuuid];
    *buf = 138412290;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "startControlChannelWithDevice - waiting for connect ready for %@", buf, 0xCu);
  }

  [a1[5] setSdNumberNoClose:a6];
  [a1[6] prepareControlChannelForDeviceConnectionInfo:a1[4] genericConnection:a1[5]];
  v16 = a1[4];
  v15 = v12;
  IDSTransportThreadAddSocket();
}

void sub_1006305CC(uint64_t a1)
{
  v17 = 4;
  __errnum = 0;
  v2 = getsockopt(*(a1 + 56), 0xFFFF, 4103, &__errnum, &v17);
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 56);
    if (v2)
    {
      v5 = -1;
    }

    else
    {
      v5 = __errnum;
    }

    if (v2)
    {
      v6 = "unknown";
    }

    else if (__errnum)
    {
      v6 = strerror(__errnum);
    }

    else
    {
      v6 = "no error";
    }

    v7 = *(a1 + 32);
    *buf = 67109890;
    v20 = v4;
    v21 = 1024;
    *v22 = v5;
    *&v22[4] = 2080;
    *&v22[6] = v6;
    v23 = 2114;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "legacy control channel connect ready {socket:%d}, socket error: %d (%s), device[%{public}@]", buf, 0x22u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    if (!v2 && __errnum)
    {
      strerror(__errnum);
    }

    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (!v2)
      {
        if (__errnum)
        {
          strerror(__errnum);
        }
      }

      _IDSLogV();
    }
  }

  if (v2)
  {
    __errnum = *__error();
    v8 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = __errnum;
      v10 = strerror(__errnum);
      *buf = 67109378;
      v20 = v9;
      v21 = 2080;
      *v22 = v10;
      v11 = "getsockopt failed %d / %s";
LABEL_27:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v11, buf, 0x12u);
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  if (__errnum)
  {
    v8 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = __errnum;
      v13 = strerror(__errnum);
      *buf = 67109378;
      v20 = v12;
      v21 = 2080;
      *v22 = v13;
      v11 = "socket error %d / %s";
      goto LABEL_27;
    }

LABEL_28:

    IDSTransportThreadRemoveSocket();
    close(*(a1 + 56));
    v14 = [*(a1 + 32) controlChannel];
    [v14 setConnecting:0];

    [*(a1 + 40) startControlChannelWithDevice:*(a1 + 32)];
    return;
  }

  IDSTransportThreadRemoveSocket();
  legacy_tcp_socket = nw_parameters_create_legacy_tcp_socket();
  nw_parameters_set_data_mode();
  v16 = nw_connection_create_with_connected_socket_and_parameters();
  [*(a1 + 40) didConnectControlChannelForDeviceConnectionInfo:*(a1 + 32) connection:v16 error:*(a1 + 48)];
}

void sub_10063189C(id a1)
{
  v1 = +[IDSUTunDeliveryController sharedInstance];
  [v1 setCompanionLinkPreference:0];
}

void sub_10063376C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v7 = [v10 compressionInfo];
  v8 = [v7 remoteCID];
  v9 = *(a1 + 40);

  if (v8 == v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

id sub_100634894(unsigned int a1, id a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a2;
  v11 = a2;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v26 = [v10 UTF8String];
  LODWORD(a4) = strlen(v26);
  v16 = [v15 UTF8String];

  LODWORD(v10) = strlen(v16);
  v17 = [v14 UTF8String];

  v18 = strlen(v17);
  v19 = [v13 UTF8String];

  v20 = strlen(v19);
  v21 = [v12 UTF8String];

  v22 = strlen(v21);
  LOWORD(v12) = v22;
  v28 = 5;
  v29 = bswap32(a4) >> 16;
  v30 = bswap32(v10) >> 16;
  v31 = bswap32(v18) >> 16;
  v32 = bswap32(v20) >> 16;
  v33 = bswap32(v22) >> 16;
  v27 = __rev16(a1);
  v23 = objc_alloc_init(NSMutableData);
  [v23 appendBytes:&v28 length:11];
  [v23 appendBytes:&v27 length:2];
  [v23 appendBytes:v26 length:a4];
  [v23 appendBytes:v16 length:v10];
  [v23 appendBytes:v17 length:v18];
  [v23 appendBytes:v19 length:v20];
  [v23 appendBytes:v21 length:v12];

  return v23;
}