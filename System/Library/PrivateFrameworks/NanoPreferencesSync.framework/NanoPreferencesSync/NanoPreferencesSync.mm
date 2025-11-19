uint64_t sub_100002640(void *a1, void *a2, int a3, void *a4, objc_class *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_11;
    }

    v12 = NSStringFromClass(a5);
    v13 = v12;
    if (a3)
    {
      [NSString stringWithFormat:@"Item in container for key %@ expected to be of type %@.", v10, v12];
    }

    else
    {
      [NSString stringWithFormat:@"Key %@ expected to be of type %@.", v10, v12];
    }
    v14 = ;

    if (!v14)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v14 = [NSString stringWithFormat:@"Key %@ not found when expected.", v10];
    if (!v14)
    {
LABEL_11:
      v16 = 1;
      goto LABEL_12;
    }
  }

  v15 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v9;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Malformed bundle plist for bundle: %@. %@", buf, 0x16u);
  }

  v16 = 0;
LABEL_12:

  return v16;
}

void sub_1000027CC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = a4;
  v10 = objc_opt_class();
  LODWORD(v8) = sub_100002640(v8, v9, 1, v7, v10);

  if (v8)
  {
    v11 = *(a1 + 40);
    if (a3)
    {
      [v11 keyPrefixArrays];
    }

    else
    {
      [v11 keyArrays];
    }
    v12 = ;
    v13 = objc_opt_new();
    [v13 setKey:v7];
    [v13 setIsPrefix:a3];
    [v13 setTwoWaySync:*(a1 + 120)];
    [v13 setContainer:*(a1 + 48)];
    [v13 setAppGroupContainer:*(a1 + 56)];
    [v13 setIsCloudEnabled:*(a1 + 121)];
    v14 = [NPSSettings preprocessItemSyncGroups:*(a1 + 64) forDomain:*(a1 + 72) key:v7];
    [v13 setSyncGroups:v14];

    [v13 setIsPerGizmoSetting:*(a1 + 122)];
    [v13 setMirrorableBBDomain:*(a1 + 80)];
    [v13 setMirrorableDomain:*(a1 + 88)];
    [v13 setMirrorableKey:*(a1 + 96)];
    v15 = [v12 objectForKeyedSubscript:v7];
    if (!v15)
    {
      v15 = +[NSMutableArray array];
    }

    [v15 addObject:v13];
    [v12 setObject:v15 forKey:v7];
    if (*(a1 + 120) != 1)
    {
      goto LABEL_28;
    }

    v16 = [*(*(a1 + 104) + 16) objectForKey:*(a1 + 72)];
    if (!v16)
    {
      v16 = objc_opt_new();
      [v16 setDomain:*(a1 + 72)];
      v17 = objc_opt_new();
      [v16 setKeys:v17];

      v18 = objc_opt_new();
      [v16 setKeyPrefixes:v18];

      [*(*(a1 + 104) + 16) setObject:v16 forKey:*(a1 + 72)];
    }

    if (a3)
    {
      [v16 keyPrefixes];
    }

    else
    {
      [v16 keys];
    }
    v19 = ;
    v20 = [v19 objectForKey:v7];
    if (v20)
    {
      v21 = v20;
      v38 = v12;
      v22 = v19;
      v23 = [v20 container];
      v24 = *(a1 + 48);

      if (v23 != v24)
      {
        v25 = nps_daemon_log;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v25;
          v27 = [v21 container];
          v28 = *(a1 + 48);
          v29 = *(a1 + 72);
          v30 = *(a1 + 32);
          *buf = 138413314;
          v40 = v27;
          v41 = 2112;
          v42 = v28;
          v43 = 2112;
          v44 = v29;
          v45 = 2112;
          v46 = v7;
          v47 = 2112;
          v48 = v30;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Cannot overwrite existing container %@ with %@ for permittted <%@, %@> in bundle %@.", buf, 0x34u);
        }

LABEL_27:

        v12 = v38;
LABEL_28:

        goto LABEL_29;
      }

      if (*(a1 + 122) != [v21 isPerGizmoSetting])
      {
        v35 = nps_daemon_log;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *(a1 + 72);
          v37 = *(a1 + 32);
          *buf = 138412802;
          v40 = v36;
          v41 = 2112;
          v42 = v7;
          v43 = 2112;
          v44 = v37;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Cannot overwrite existing permitted <%@, %@> in bundle %@ with a different isPerGizmoSetting value.", buf, 0x20u);
        }

        goto LABEL_27;
      }

      v19 = v22;
      v12 = v38;
    }

    else
    {
      v21 = objc_opt_new();
      [v21 setKey:v7];
      [v19 setObject:v21 forKey:v7];
    }

    [v21 setIsPrefix:a3];
    [v21 setTwoWaySync:1];
    [v21 setContainer:*(a1 + 48)];
    [v21 setAppGroupContainer:*(a1 + 56)];
    v31 = [NPSSettings preprocessItemSyncGroups:*(a1 + 64) forDomain:*(a1 + 72) key:v7];
    [v21 setSyncGroups:v31];

    if ([*(a1 + 112) count])
    {
      v32 = [v21 notificationNames];

      if (!v32)
      {
        v33 = +[NSMutableSet set];
        [v21 setNotificationNames:v33];
      }

      v34 = [v21 notificationNames];
      [v34 unionSet:*(a1 + 112)];
    }

    [v21 setIsPerGizmoSetting:*(a1 + 122)];

    goto LABEL_28;
  }

LABEL_29:
}

void sub_100002CEC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  if (sub_100002640(v6, @"NPSDefaultsKeys", 1, v5, v7))
  {
    v8 = *(a1 + 40);
    if (a3)
    {
      [v8 keyPrefixes];
    }

    else
    {
      [v8 keys];
    }
    v9 = ;
    v10 = [v9 objectForKey:v5];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 container];
      v13 = *(a1 + 48);

      if (v12 != v13)
      {
        v14 = nps_daemon_log;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v16 = [v11 container];
          v17 = *(a1 + 48);
          v18 = *(a1 + 56);
          v19 = *(a1 + 32);
          v26 = 138413314;
          v27 = v16;
          v28 = 2112;
          v29 = v17;
          v30 = 2112;
          v31 = v18;
          v32 = 2112;
          v33 = v5;
          v34 = 2112;
          v35 = v19;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Cannot overwrite existing container %@ with %@ for permitted <%@, %@> in bundle %@.", &v26, 0x34u);

LABEL_15:
          goto LABEL_16;
        }

        goto LABEL_16;
      }

      if (*(a1 + 88) != [v11 isPerGizmoSetting])
      {
        v23 = nps_daemon_log;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 56);
          v25 = *(a1 + 32);
          v26 = 138412802;
          v27 = v24;
          v28 = 2112;
          v29 = v5;
          v30 = 2112;
          v31 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Cannot overwrite existing permitted <%@, %@> in bundle %@ with a different isPerGizmoSetting value.", &v26, 0x20u);
        }

        goto LABEL_16;
      }
    }

    else
    {
      v11 = objc_opt_new();
      [v11 setKey:v5];
      [v9 setObject:v11 forKey:v5];
    }

    [v11 setIsPrefix:a3];
    [v11 setIsPerGizmoSetting:*(a1 + 88)];
    [v11 setContainer:*(a1 + 48)];
    [v11 setAppGroupContainer:*(a1 + 64)];
    v20 = [NPSSettings preprocessItemSyncGroups:*(a1 + 72) forDomain:*(a1 + 56) key:v5];
    [v11 setSyncGroups:v20];

    if ([*(a1 + 80) count])
    {
      v21 = [v11 notificationNames];

      if (!v21)
      {
        v22 = +[NSMutableSet set];
        [v11 setNotificationNames:v22];
      }

      v15 = [v11 notificationNames];
      [v15 unionSet:*(a1 + 80)];
      goto LABEL_15;
    }

LABEL_16:
  }
}

uint64_t sub_10000341C(uint64_t a1, void *a2)
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
        v30 = 0;
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
        if (v13 == 3)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 36) |= 2u;
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
              LOBYTE(v26) = 0;
              goto LABEL_40;
            }
          }

          v26 = (v22 != 0) & ~[a2 hasError];
LABEL_40:
          *(a1 + 32) = v26;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_26:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_43;
          }

          *(a1 + 36) |= 1u;
          v29 = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v29;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_26;
          }

          v14 = PBReaderReadData();
          v15 = 24;
        }

        v19 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_43:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100003FD8(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = &OBJC_IVAR___NPSManagedConfigurationMsg__kind;
          goto LABEL_28;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = &OBJC_IVAR___NPSManagedConfigurationMsg__feature;
          goto LABEL_28;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadData();
            v15 = &OBJC_IVAR___NPSManagedConfigurationMsg__setting;
            goto LABEL_28;
          case 4:
            v14 = PBReaderReadData();
            v15 = &OBJC_IVAR___NPSManagedConfigurationMsg__restriction;
            goto LABEL_28;
          case 5:
            v14 = PBReaderReadData();
            v15 = &OBJC_IVAR___NPSManagedConfigurationMsg__userSettingsAndRestrictions;
LABEL_28:
            v16 = *v15;
            v17 = *(a1 + v16);
            *(a1 + v16) = v14;

            goto LABEL_29;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100004BC0(char *a1, void *a2)
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
        v16 = *&a1[v15];
        *&a1[v15] = v14;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 8;
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

    v16 = objc_alloc_init(NPSUserDefaultsBackupMsgKey);
    [a1 addKey:v16];
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !sub_100022180(v16, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100005EA4(uint64_t a1, void *a2)
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
        LOBYTE(v22[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22[0] & 0x7F) << v5;
        if ((v22[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v18 = objc_alloc_init(NPSUserDefaultsMsgKey);
        [a1 addKey:v18];
        v22[0] = 0;
        v22[1] = 0;
        if (!PBReaderPlaceMark() || !sub_10000341C(v18, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v16 = PBReaderReadString();
        v17 = *(a1 + 16);
        *(a1 + 16) = v16;
      }

      else if (v13 == 1)
      {
        *(a1 + 32) |= 1u;
        v22[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v22 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v22[0];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100006CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006D10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006D28(uint64_t a1)
{
  v2 = objc_alloc_init(NPSDeviceRegistry);
  v3 = *(a1 + 32);
  v4 = *(v3 + 144);
  *(v3 + 144) = v2;

  v5 = +[NPProgressTracker sharedInstance];
  v6 = *(a1 + 32);
  v7 = *(v6 + 88);
  *(v6 + 88) = v5;

  v8 = [NPSOSLogStateProvider alloc];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100006E70;
  v14[3] = &unk_10003C9E0;
  v15 = *(a1 + 32);
  v9 = [(NPSOSLogStateProvider *)v8 initWithName:@"com.apple.nanoprefsync" maxStringLength:0x20000 block:v14];
  v10 = *(a1 + 32);
  v11 = *(v10 + 96);
  *(v10 + 96) = v9;

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100006F60;
  v13[3] = &unk_10003CA08;
  v12 = *(a1 + 32);
  v13[4] = *(a1 + 40);
  [v12 initCore:v13];
}

id sub_100006E70(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = +[NPProgressTracker sharedInstance];
  v4 = [v3 dump];
  [v2 appendFormat:@"Progress Tracker: %@", v4];

  v5 = [*(a1 + 32) dumpDomain:@"com.apple.pairedsync"];
  [v2 appendFormat:@"\n%@", v5];

  v6 = [*(a1 + 32) dumpDomain:@"com.apple.nano"];
  [v2 appendFormat:@"\n%@", v6];

  return v2;
}

void sub_100006F60(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_100007404(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v3, "Notification");
    v9 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = string;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received notification: %s", &v13, 0xCu);
    }

    if (!string)
    {
      v12 = nps_daemon_log;
      if (!os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      LOWORD(v13) = 0;
      v5 = "Received unexepectedly NULL notification";
      v6 = v12;
      v7 = 2;
      goto LABEL_4;
    }

    v10 = [NSString stringWithUTF8String:string];
    if (!strcmp(string, +[PDRDarwinNotifications pairedDeviceDidChangeVersion]))
    {
      [*(a1 + 32) handleActiveDeviceChangedVersionNotification];
    }

    else if (([v10 isEqualToString:MCSettingsChangedNotification] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", MCRestrictionChangedNotification) & 1) != 0 || objc_msgSend(v10, "isEqualToString:", MCEffectiveSettingsChangedNotification))
    {
      v11 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received managed configuration change notification", &v13, 2u);
      }

      [*(a1 + 32) handleManagedConfigurationChangedNotification];
    }

    else if ([v10 isEqualToString:@"com.apple.Preferences.ChangedRestrictionsEnabledStateNotification"])
    {
      [*(a1 + 32) handleAppChangedRestrictions];
    }

    else if ([v10 isEqualToString:@"com.apple.mobile.keybagd.first_unlock"])
    {
      [*(a1 + 32) performFirstUnlockTasks];
    }
  }

  else
  {
    v4 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v3;
      v5 = "Received unexpected non-dictionary type event: (%@)";
      v6 = v4;
      v7 = 12;
LABEL_4:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v13, v7);
    }
  }

LABEL_19:
}

uint64_t sub_100007690(uint64_t a1)
{
  [*(a1 + 32) resendMessagesForMessageID:0];
  if (([*(a1 + 32) checkActiveDeviceChangedVersion] & 1) == 0)
  {
    [*(a1 + 32) resyncManagedConfigurationIfNeeded];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100007AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100007AC8(uint64_t a1, void *a2)
{
  key = a2;
  v3 = CFPreferencesCopyAppValue(key, @"com.apple.NanoTimeKit");
  if (v3)
  {
    v4 = v3;
    v5 = *(*(*(a1 + 32) + 8) + 40);
    if (!v5)
    {
      v6 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.NanoTimeKit"];
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v5 setObject:v4 forKey:key];
    v9 = [*(*(*(a1 + 32) + 8) + 40) synchronize];
    CFPreferencesSetAppValue(key, 0, @"com.apple.NanoTimeKit");
    CFPreferencesAppSynchronize(@"com.apple.NanoTimeKit");
    CFRelease(v4);
  }
}

void sub_100008788(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    v3 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(*(a1 + 32) + 48);
      *buf = 138412546;
      v36 = v4;
      v37 = 2112;
      v38 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asked to start syncing for sync session (%@) even though there already is an active sync session (%@)", buf, 0x16u);
    }

    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) nps_pairedPdrDevice];
    [v6 syncCompletedWithError:0 withDevice:v7];

    v2 = *(a1 + 32);
  }

  [*(v2 + 152) purgePendingOutgoingMessages];
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v8 = [*(a1 + 40) syncSessionType];
  v9 = *(*(a1 + 32) + 32);
  v10 = *(a1 + 48);
  v11 = [*(a1 + 40) syncSessionType];
  if (v8)
  {
    v12 = v11 == 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (!v8)
  {
    v14 = [*(a1 + 32) restoreRemoteFilesFromBackup];
    if (v14)
    {
      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) nps_pairedPdrDevice];
      [v15 syncCompletedWithError:v14 withDevice:v16];
    }

    v17 = [*(a1 + 32) restoreRemoteSettingsFromBackup];

    if (v17)
    {
      v18 = *(a1 + 32);
      v19 = [*(a1 + 40) nps_pairedPdrDevice];
      [v18 syncCompletedWithError:v17 withDevice:v19];
    }
  }

  if (v9 == v10)
  {
    v20 = 1;
  }

  else
  {
    v20 = v13;
  }

  if (v20 == 1)
  {
    [*(a1 + 32) forceResyncManagedConfigurationIsInitialSync:v8 == 0];
  }

  v41 = @"Local";
  v42 = &__kCFBooleanTrue;
  v21 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v22 = [v21 mutableCopy];

  if ((v13 & 1) == 0)
  {
    if (v9 == v10)
    {
      v23 = &__kCFBooleanTrue;
    }

    else
    {
      v23 = &__kCFBooleanFalse;
    }

    [v22 setObject:v23 forKeyedSubscript:@"First"];
  }

  [*(a1 + 32) startPrefsSyncWithGroups:v22 backupWriter:0 withCompletionHandler:0];
  v24 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 32);
    v26 = v25[7];
    v27 = v25[8];
    v28 = v25[9];
    *buf = 134218498;
    v36 = v26;
    v37 = 2048;
    v38 = v27;
    v39 = 2112;
    v40 = v28;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "total: (%llu), remaining: (%llu); initialSyncProgressDictionary: (%@)", buf, 0x20u);
  }

  [*(*(a1 + 32) + 48) syncDidCompleteSending];
  [*(*(a1 + 32) + 48) reportProgress:0.0];
  objc_initWeak(buf, *(*(a1 + 32) + 48));
  v29 = dispatch_time(0, 320000000000);
  v30 = *(*(a1 + 32) + 104);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008B34;
  block[3] = &unk_10003CB30;
  objc_copyWeak(&v34, buf);
  v31 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v33 = v31;
  dispatch_after(v29, v30, block);

  objc_destroyWeak(&v34);
  objc_destroyWeak(buf);
}

void sub_100008B34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 48);
    v12 = 134218240;
    v13 = WeakRetained;
    v14 = 2048;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "strongSession: (%p); _activeSyncSession: (%p)", &v12, 0x16u);
  }

  if (WeakRetained && WeakRetained == *(*(a1 + 32) + 48))
  {
    v5 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 48);
      v8 = *(v6 + 72);
      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Did not complete syncing before timer expired; Sync Session: (%@); Pending Messages: (%@)", &v12, 0x16u);
    }

    v9 = [NSError errorWithDomain:@"com.apple.NanoPreferencesSync" code:0 userInfo:0];
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) nps_pairedPdrDevice];
    [v10 syncCompletedWithError:v9 withDevice:v11];
  }
}

uint64_t sub_1000092CC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000095E4;
    v30[3] = &unk_10003CBD0;
    v2 = &v31;
    v31 = *(a1 + 40);
    v3 = objc_retainBlock(v30);
    v4 = [*(*(a1 + 48) + 112) permittedUserDefaults];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100009954;
    v26[3] = &unk_10003CC70;
    v5 = &v27.i64[1];
    v18 = *(a1 + 40);
    v6 = v18.i64[0];
    v27 = vextq_s8(v18, v18, 8uLL);
    v7 = &v29;
    v29 = v3;
    v8 = &v28;
    v28 = *(a1 + 32);
    v9 = v3;
    v10 = v26;
  }

  else
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000A174;
    v24[3] = &unk_10003CC98;
    v2 = &v25;
    v25 = *(a1 + 40);
    v11 = objc_retainBlock(v24);
    [*(*(a1 + 48) + 88) startedOperations];
    v4 = [*(*(a1 + 48) + 112) syncedUserDefaults];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000A4E4;
    v20[3] = &unk_10003CD38;
    v5 = &v21.i64[1];
    v18 = *(a1 + 40);
    v12 = v18.i64[0];
    v21 = vextq_s8(v18, v18, 8uLL);
    v7 = &v23;
    v23 = v11;
    v8 = &v22;
    v22 = *(a1 + 32);
    v9 = v11;
    v10 = v20;
  }

  [v4 enumerateKeysAndObjectsUsingBlock:{v10, *&v18}];

  [*(*(a1 + 48) + 88) completedOperations];
  v13 = *(a1 + 48);
  if (!*(v13 + 56) && !*(v13 + 64))
  {
    v14 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "startPrefsSyncWithGroups: No data synced.", buf, 2u);
    }

    v15 = *(a1 + 48);
    v16 = [v15[6] nps_pairedPdrDevice];
    [v15 syncCompletedWithError:0 withDevice:v16];
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000095E4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v14 container];
  v40 = [v14 appGroupContainer];
  if (v16)
  {
    v17 = [v15 objectForKeyedSubscript:v16];
    if (v17)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = +[NSNull null];
    v17 = [v15 objectForKeyedSubscript:v18];

    if (v17)
    {
      goto LABEL_8;
    }
  }

  v17 = objc_opt_new();
  if (v16)
  {
    [v15 setObject:v17 forKeyedSubscript:v16];
  }

  else
  {
    v19 = +[NSNull null];
    [v15 setObject:v17 forKeyedSubscript:v19];
  }

LABEL_8:
  v41 = v16;
  v39 = v15;
  v20 = [v12 domain];
  v21 = [v17 objectForKeyedSubscript:v20];

  if (!v21)
  {
    v21 = objc_opt_new();
    v22 = [v12 domain];
    [v17 setObject:v21 forKeyedSubscript:v22];
  }

  v23 = [v14 isPrefix];
  v24 = [v14 syncGroups];
  v25 = [NPSServer shouldAllowSyncOfItemWithSyncGroups:v24 allowedSyncGroups:*(a1 + 32)];

  if (v23)
  {
    if (v25)
    {
      v36 = v13;
      v37 = v12;
      if (![v14 isPerGizmoSetting] || (v26 = -[NPSSettingAccessor initWithNanoDomain:]([NPSSettingAccessor alloc], "initWithNanoDomain:", v11)) == 0)
      {
        v26 = [[NPSSettingAccessor alloc] initWithUserDefaultsDomain:v11 container:v41 appGroupContainer:v40];
      }

      v38 = v11;
      v35 = v26;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v27 = [(NPSSettingAccessor *)v26 copyKeyList];
      v28 = [v27 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v43;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v43 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v42 + 1) + 8 * i);
            v33 = [v14 key];
            v34 = [v32 hasPrefix:v33];

            if (v34)
            {
              [v21 addObject:v32];
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v29);
      }

      v12 = v37;
      v11 = v38;
      v13 = v36;
    }
  }

  else if (v25)
  {
    [v21 addObject:v13];
  }
}

void sub_100009954(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [a1[4] usingPrefsFromDomain:v5];
  v7 = objc_opt_new();
  v8 = [v6 keys];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100009CBC;
  v33[3] = &unk_10003CBF8;
  v34 = a1[5];
  v38 = a1[7];
  v9 = v5;
  v35 = v9;
  v10 = v6;
  v36 = v10;
  v11 = v7;
  v37 = v11;
  [v8 enumerateKeysAndObjectsUsingBlock:v33];

  v12 = [v10 keyPrefixes];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100009D64;
  v27[3] = &unk_10003CBF8;
  v28 = a1[5];
  v32 = a1[7];
  v13 = v9;
  v29 = v13;
  v14 = v10;
  v30 = v14;
  v15 = v11;
  v31 = v15;
  [v12 enumerateKeysAndObjectsUsingBlock:v27];

  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v16 = qword_1000456F8;
  v43 = qword_1000456F8;
  if (!qword_1000456F8)
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100018F14;
    v39[3] = &unk_10003CA08;
    v39[4] = &v40;
    sub_100018F14(v39);
    v16 = v41[3];
  }

  v17 = v16;
  _Block_object_dispose(&v40, 8);
  v18 = objc_opt_new();
  [v18 excludedPerGizmoDomains];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100009E0C;
  v22 = v21[3] = &unk_10003CC48;
  v23 = v18;
  v24 = a1[4];
  v25 = a1[6];
  v26 = a1[5];
  v19 = v18;
  v20 = v22;
  [v15 enumerateKeysAndObjectsUsingBlock:v21];
}

void sub_100009CBC(void *a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v5 syncGroups];
  v7 = [NPSServer shouldAllowSyncOfItemWithSyncGroups:v6 allowedSyncGroups:a1[4]];

  if (v7)
  {
    v8 = a1[5];
    v9 = a1[6];
    v10 = a1[7];
    (*(a1[8] + 16))();
  }
}

void sub_100009D64(void *a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v5 syncGroups];
  v7 = [NPSServer shouldAllowSyncOfItemWithSyncGroups:v6 allowedSyncGroups:a1[4]];

  if (v7)
  {
    v8 = a1[5];
    v9 = a1[6];
    v10 = a1[7];
    (*(a1[8] + 16))();
  }
}

void sub_100009E0C(uint64_t a1, uint64_t a2, void *a3)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100009EF8;
  v10[3] = &unk_10003CC20;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = *(a1 + 48);
  v7 = *(&v9 + 1);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v12 = v9;
  v11 = v8;
  v13 = *(a1 + 64);
  [a3 enumerateKeysAndObjectsUsingBlock:v10];
}

void sub_100009EF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) containsObject:v5];
  v8 = nps_daemon_log;
  v9 = os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Excluding: %@ from backup, it's on the exclusion list", &v16, 0xCu);
    }
  }

  else
  {
    if (v9)
    {
      v16 = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Backup list before exclusions: %@ : %@", &v16, 0x16u);
    }

    v10 = [v6 mutableCopy];
    v11 = [*(a1 + 40) excludedKeysInDomain:v5];
    [v10 minusSet:v11];
    v12 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Excluding: %@", &v16, 0xCu);
    }

    v13 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Backup list after exclusions: %@ : %@", &v16, 0x16u);
    }

    if ([v10 count])
    {
      v14 = objc_autoreleasePoolPush();
      [*(a1 + 48) sendPUDSettingsInDomain:v5 keys:v10 backupFile:*(a1 + 56) allowedGroups:*(a1 + 64)];
      objc_autoreleasePoolPop(v14);
    }

    else
    {
      v15 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v5;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removed all keys from: %@", &v16, 0xCu);
      }
    }
  }
}

void sub_10000A174(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v14 container];
  v40 = [v14 appGroupContainer];
  if (v16)
  {
    v17 = [v15 objectForKeyedSubscript:v16];
    if (v17)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = +[NSNull null];
    v17 = [v15 objectForKeyedSubscript:v18];

    if (v17)
    {
      goto LABEL_8;
    }
  }

  v17 = objc_opt_new();
  if (v16)
  {
    [v15 setObject:v17 forKeyedSubscript:v16];
  }

  else
  {
    v19 = +[NSNull null];
    [v15 setObject:v17 forKeyedSubscript:v19];
  }

LABEL_8:
  v41 = v16;
  v39 = v15;
  v20 = [v12 domain];
  v21 = [v17 objectForKeyedSubscript:v20];

  if (!v21)
  {
    v21 = objc_opt_new();
    v22 = [v12 domain];
    [v17 setObject:v21 forKeyedSubscript:v22];
  }

  v23 = [v14 isPrefix];
  v24 = [v14 syncGroups];
  v25 = [NPSServer shouldAllowSyncOfItemWithSyncGroups:v24 allowedSyncGroups:*(a1 + 32)];

  if (v23)
  {
    if (v25)
    {
      v36 = v13;
      v37 = v12;
      if (![v14 isPerGizmoSetting] || (v26 = -[NPSSettingAccessor initWithNanoDomain:]([NPSSettingAccessor alloc], "initWithNanoDomain:", v11)) == 0)
      {
        v26 = [[NPSSettingAccessor alloc] initWithUserDefaultsDomain:v11 container:v41 appGroupContainer:v40];
      }

      v38 = v11;
      v35 = v26;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v27 = [(NPSSettingAccessor *)v26 copyKeyList];
      v28 = [v27 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v43;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v43 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v42 + 1) + 8 * i);
            v33 = [v14 key];
            v34 = [v32 hasPrefix:v33];

            if (v34)
            {
              [v21 addObject:v32];
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v29);
      }

      v12 = v37;
      v11 = v38;
      v13 = v36;
    }
  }

  else if (v25)
  {
    [v21 addObject:v13];
  }
}

void sub_10000A4E4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [a1[4] usingPrefsFromDomain:v5];
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [v6 keyArrays];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10000A808;
  v33[3] = &unk_10003CCC0;
  v34 = a1[5];
  v10 = v7;
  v35 = v10;
  v11 = v8;
  v36 = v11;
  v39 = a1[7];
  v12 = v5;
  v37 = v12;
  v13 = v6;
  v38 = v13;
  [v9 enumerateKeysAndObjectsUsingBlock:v33];

  v14 = [v13 keyPrefixArrays];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000A988;
  v26[3] = &unk_10003CCC0;
  v27 = a1[5];
  v28 = v10;
  v29 = v11;
  v15 = a1[7];
  v31 = v13;
  v32 = v15;
  v30 = v12;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  [v14 enumerateKeysAndObjectsUsingBlock:v26];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000AB08;
  v23[3] = &unk_10003CD10;
  v23[4] = a1[4];
  v24 = a1[6];
  v25 = a1[5];
  [v19 enumerateKeysAndObjectsUsingBlock:v23];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000AC34;
  v20[3] = &unk_10003CD10;
  v20[4] = a1[4];
  v21 = a1[6];
  v22 = a1[5];
  [v18 enumerateKeysAndObjectsUsingBlock:v20];
}

void sub_10000A808(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 syncGroups];
        v13 = [NPSServer shouldAllowSyncOfItemWithSyncGroups:v12 allowedSyncGroups:a1[4]];

        if (v13)
        {
          v14 = [v11 isCloudEnabled];
          v15 = 6;
          if (v14)
          {
            v15 = 5;
          }

          v16 = a1[v15];
          v17 = a1[8];
          v18 = a1[7];
          (*(a1[9] + 16))();
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void sub_10000A988(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 syncGroups];
        v13 = [NPSServer shouldAllowSyncOfItemWithSyncGroups:v12 allowedSyncGroups:a1[4]];

        if (v13)
        {
          v14 = [v11 isCloudEnabled];
          v15 = 6;
          if (v14)
          {
            v15 = 5;
          }

          v16 = a1[v15];
          v17 = a1[8];
          v18 = a1[7];
          (*(a1[9] + 16))();
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void sub_10000AB08(uint64_t a1, uint64_t a2, void *a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000ABB0;
  v6[3] = &unk_10003CCE8;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 48);
  [a3 enumerateKeysAndObjectsUsingBlock:v6];
}

void sub_10000ABB0(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  [*(a1 + 32) sendSettingsInDomain:v7 keys:v5 cloudEnabled:1 backupFile:*(a1 + 40) allowedGroups:*(a1 + 48)];
  objc_autoreleasePoolPop(v6);
}

void sub_10000AC34(uint64_t a1, uint64_t a2, void *a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000ACDC;
  v6[3] = &unk_10003CCE8;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 48);
  [a3 enumerateKeysAndObjectsUsingBlock:v6];
}

void sub_10000ACDC(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  [*(a1 + 32) sendSettingsInDomain:v7 keys:v5 cloudEnabled:0 backupFile:*(a1 + 40) allowedGroups:*(a1 + 48)];
  objc_autoreleasePoolPop(v6);
}

void sub_10000ADA4(id a1)
{
  v3 = _CFCopySystemVersionDictionary();
  v1 = [v3 objectForKey:_kCFSystemVersionBuildVersionKey];
  v2 = qword_1000456D0;
  qword_1000456D0 = v1;
}

void sub_10000AFC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000B174;
  v18[3] = &unk_10003CDC8;
  v18[4] = *(a1 + 32);
  v8 = v5;
  v19 = v8;
  v9 = objc_retainBlock(v18);
  v10 = [v6 keyArrays];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000B4E8;
  v16[3] = &unk_10003CDF0;
  v11 = v9;
  v17 = v11;
  [v10 enumerateKeysAndObjectsUsingBlock:v16];

  v12 = [v6 keyPrefixArrays];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000B608;
  v14[3] = &unk_10003CDF0;
  v15 = v11;
  v13 = v11;
  [v12 enumerateKeysAndObjectsUsingBlock:v14];

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_10000B174(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 syncGroups];
  v8 = [*(a1 + 32) allowedGroups];
  v9 = [NPSServer shouldAllowSyncOfItemWithSyncGroups:v7 allowedSyncGroups:v8];

  if (v9 && [v6 twoWaySync])
  {
    v38 = v9;
    if ([v6 isPrefix])
    {
      v10 = [v6 isPerGizmoSetting];
      v11 = [NPSSettingAccessor alloc];
      v12 = v11;
      v13 = *(a1 + 40);
      v37 = v5;
      if (v10)
      {
        v14 = [(NPSSettingAccessor *)v11 initWithNanoDomain:v13];
      }

      else
      {
        v16 = [v6 container];
        v17 = [v6 appGroupContainer];
        v14 = [(NPSSettingAccessor *)v12 initWithUserDefaultsDomain:v13 container:v16 appGroupContainer:v17];
      }

      v36 = v14;
      v18 = [(NPSSettingAccessor *)v14 copyKeyList];
      v15 = objc_opt_new();
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v44;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v44 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v43 + 1) + 8 * i);
            v25 = [v6 key];
            v26 = [v24 hasPrefix:v25];

            if (v26)
            {
              [v15 addObject:v24];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v21);
      }

      v5 = v37;
    }

    else
    {
      v15 = [NSSet setWithObject:v5];
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v27 = v15;
    v28 = [v27 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v40;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v40 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v39 + 1) + 8 * j);
          v33 = [*(a1 + 32) getCachedTimeStampFor:*(a1 + 40) key:v32 usePerGizmoCache:{objc_msgSend(v6, "isPerGizmoSetting")}];
          if (!v33)
          {
            v34 = [0 objectForKeyedSubscript:*(a1 + 40)];
            if (!v34)
            {
              v34 = objc_opt_new();
              [0 setObject:v34 forKeyedSubscript:*(a1 + 40)];
            }

            [v34 addObject:v32];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v29);
    }

    v9 = v38;
  }

  return v9;
}

void sub_10000B4E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v12 + 1) + 8 * v10);
      if ((*(*(a1 + 32) + 16))(*(a1 + 32)))
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void sub_10000B608(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v12 + 1) + 8 * v10);
      if ((*(*(a1 + 32) + 16))(*(a1 + 32)))
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void sub_10000B728(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  [*(a1 + 32) usingPrefsFromDomain:v9];
  v7 = *(a1 + 32);
  v8 = [v5 allObjects];
  [v7 updateCacheForDomain:v9 keys:v8 twoWaySyncTimestamp:*(a1 + 40) isPerGizmo:1];

  objc_autoreleasePoolPop(v6);
}

void sub_10000B7D8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  [*(a1 + 32) usingPrefsFromDomain:v9];
  v7 = *(a1 + 32);
  v8 = [v5 allObjects];
  [v7 updateCacheForDomain:v9 keys:v8 twoWaySyncTimestamp:*(a1 + 40) isPerGizmo:0];

  objc_autoreleasePoolPop(v6);
}

void sub_10000D4D8(uint64_t a1)
{
  v2 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Purge Timer fired!", v5, 2u);
  }

  [*(a1 + 32) resendMessagesForMessageID:0];
  dispatch_source_cancel(*(*(a1 + 32) + 160));
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  *(v3 + 160) = 0;
}

void sub_10000D56C(uint64_t a1)
{
  v2 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Releasing transaction for ids-reset-timeout-transaction", v5, 2u);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

id sub_10000D868(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 152);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000D8DC;
  v5[3] = &unk_10003CE68;
  v5[4] = v2;
  return [v3 getSettingsSyncDataForMessage:v1 handler:v5];
}

void sub_10000D8DC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  [*(a1 + 32) sendSettingsInDomain:v9 keys:v7 cloudEnabled:a4 backupFile:0 allowedGroups:0];
  objc_autoreleasePoolPop(v8);
}

id sub_10000D968(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 152);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000D9DC;
  v5[3] = &unk_10003CE90;
  v5[4] = v2;
  return [v3 getSettingsBackupDataForMessage:v1 handler:v5];
}

void sub_10000D9DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = [*(a1 + 32) sendSettingsBackupInDomain:v8 keys:v9 container:v7 isInitialSync:0 backupFile:0];
  v12 = [v9 mutableCopy];
  [v12 minusSet:v11];
  if ([v12 count])
  {
    v13 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed re-sending settings backup for container (%@), domain (%@), keys (%@).", &v14, 0x20u);
    }

    [*(*(a1 + 32) + 152) untrackSettingsBackupMessageForContainer:v7 domain:v8 keys:v12];
  }

  objc_autoreleasePoolPop(v10);
}

void sub_10000DB4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 152);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000DBE0;
  v4[3] = &unk_10003CEB8;
  v4[4] = v1;
  v5 = v2;
  [v3 getFileBackupDataForMessage:v5 handler:v4];
}

void sub_10000DBE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (([*(a1 + 32) retryFileBackupRestoreForFilePath:v3] & 1) == 0)
  {
    v5 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed re-sending file backup (%@) for identifier (%@)!", &v7, 0x16u);
    }

    [*(*(a1 + 32) + 152) untrackFileBackupMessageForFileAtPath:v3];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10000F754(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([*(a1 + 32) hasPrefix:a2])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_1000104AC(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([*(a1 + 32) hasPrefix:a2])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_100010540(id a1, NSString *a2, NSDictionary *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\tKind: (%@)", &v8, 0xCu);
  }

  [(NSDictionary *)v6 enumerateKeysAndObjectsUsingBlock:&stru_10003CF68];
}

void sub_100010614(id a1, NSString *a2, NSDictionary *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\t\tFeature: (%@); Value: (%@)", &v8, 0x16u);
  }
}

void sub_100010EC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 key];
  v5 = [v3 value];
  v6 = [v3 key];

  if (v6)
  {
    v12 = 0;
    v7 = [NPSSettingAccessor unserializeObject:v5 error:&v12];
    v8 = v12;
    if (!v8)
    {
      v9 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *buf = 138412802;
        v14 = v10;
        v15 = 2112;
        v16 = v4;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received User Defaults Backup for <%@, %@>; Value: (%@)", buf, 0x20u);
      }

      v11 = *(a1 + 40);
      if (v7)
      {
        [v11 setObject:v7 forKeyedSubscript:v4];
      }

      else
      {
        [v11 removeObjectForKey:v4];
      }
    }
  }
}

uint64_t sub_100011588(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 3)
  {
    v8 = v5;
    v5 = [*(a1 + 32) handleFileBackupMessage:v5 resourceURL:0 backupFile:0];
  }

  else if (a2 == 2)
  {
    v8 = v5;
    v5 = [*(a1 + 32) handleUserDefaultsMsgData:v5 backupFile:0 idsGuid:*(a1 + 40)];
  }

  else
  {
    if (a2)
    {
      goto LABEL_8;
    }

    v8 = v5;
    v5 = [*(a1 + 32) handleRestoreOfSyncingUserDefaultsMsg:v5 backupFile:0];
  }

  v6 = v8;
LABEL_8:

  return _objc_release_x1(v5, v6);
}

void sub_1000117C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000117EC(id a1)
{
  v1 = &OBJC_PROTOCOL___NPSCompanionServerProtocol;
  v2 = [NSXPCInterface interfaceWithProtocol:v1];
  v3 = qword_1000456E0;
  qword_1000456E0 = v2;

  v4 = qword_1000456E0;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v5 = [NSArray arrayWithObjects:v11 count:2];
  v6 = [NSSet setWithArray:v5];
  [v4 setClasses:v6 forSelector:"synchronizeUserDefaultsDomain:keys:container:appGroupContainer:cloudEnabled:" argumentIndex:1 ofReply:0];

  v7 = qword_1000456E0;
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v8 = [NSArray arrayWithObjects:v10 count:2];
  v9 = [NSSet setWithArray:v8];
  [v7 setClasses:v9 forSelector:"synchronizeNanoDomain:keys:cloudEnabled:" argumentIndex:1 ofReply:0];
}

void sub_10001197C(uint64_t a1)
{
  v2 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 134217984;
    v6 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Connection invalidated: (%p)", &v5, 0xCu);
  }
}

void sub_1000126C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000126E4(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id sub_100012718(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v30 = 0;
  v8 = [v7 contentsOfDirectoryAtPath:v6 error:&v30];
  v9 = v30;
  if (v9)
  {
    v10 = v9;
    v11 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not list content of directory (%@)", buf, 0xCu);
    }
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        v16 = 0;
        do
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * v16);
          v25 = 0;
          v18 = [v6 stringByAppendingPathComponent:v17];
          if ([*(a1 + 32) fileExistsAtPath:v18 isDirectory:&v25] && v25 == 1)
          {
            if (v5)
            {
              v19 = nps_daemon_log;
              if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v32 = v18;
                v33 = 2112;
                v34 = v5;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Unexpectedly found directory (%@) within container (%@) backup", buf, 0x16u);
              }
            }

            else
            {
              v21 = (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
              if (v21)
              {
                v10 = v21;

                goto LABEL_21;
              }
            }
          }

          else
          {
            v20 = [*(a1 + 40) sendSettingsBackupInDomain:v17 keys:0 container:v5 isInitialSync:1 backupFile:0];
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v22 = [v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
        v14 = v22;
      }

      while (v22);
    }

    v10 = 0;
LABEL_21:
    v8 = v24;
  }

  return v10;
}

void sub_100012B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100012B18(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) restoreFileBackupForLocalFileURL:a2 originalFileURL:a3 isInitialSync:1];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

void sub_100013E24(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([*(a1 + 32) hasPrefix:a2])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_1000146FC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    *buf = 138413058;
    v21 = v10;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Restoring <%@, %@> for container (%@) to (%@)", buf, 0x2Au);
  }

  v12 = objc_opt_new();
  [v12 setKey:v7];
  v13 = *(*(a1 + 64) + 8);
  obj = *(v13 + 40);
  v14 = [NPSSettingAccessor serializeObject:v8 error:&obj];
  objc_storeStrong((v13 + 40), obj);
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v15 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412802;
      v21 = v16;
      v22 = 2112;
      v23 = v7;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to create binary data (domain: %@; key: %@) with error: (%@)", buf, 0x20u);
    }

    *a4 = 1;
  }

  else
  {
    [v12 setValue:v14];
    v18 = [*(a1 + 48) keys];
    [v18 addObject:v12];

    [*(a1 + 56) addObject:v7];
  }
}

void sub_100015D20(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([*(a1 + 32) hasPrefix:a2])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_1000168DC(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([*(a1 + 32) hasPrefix:a2])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_100016A68(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, double a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412802;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 2048;
    v22 = a6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Handling message for domain (%@) key (%@) timestamp (%f)", &v17, 0x20u);
  }

  v15 = objc_opt_new();
  [v15 setDomain:v11];
  [v15 setTimestamp:a6];
  v16 = objc_opt_new();
  [v16 setKey:v12];
  [v16 setTwoWaySync:a5];
  [v16 setValue:v13];
  [v15 addKey:v16];
  [*(a1 + 32) handlePermittedUserDefaultsMsg:v15 messageData:0 overwriteNewerTimestamps:0 backupFile:0];
}

void sub_100016C3C(id a1)
{
  v11[0] = MCRestrictedBoolKey;
  v10[0] = MCFeatureAllowVoiceDialing;
  v10[1] = MCFeatureAlphanumericPasscodeRequired;
  v10[2] = MCFeatureAppAnalyticsAllowed;
  v10[3] = MCFeatureAppInstallationAllowed;
  v10[4] = MCFeatureAppRemovalAllowed;
  v10[5] = MCFeatureAssistantAllowed;
  v10[6] = MCFeatureAssistantProfanityFilterForced;
  v10[7] = MCFeatureAssistantUserGeneratedContentAllowed;
  v10[8] = MCFeatureAssistantWhileLockedAllowed;
  v10[9] = MCFeatureAudioConferencingAllowed;
  v10[10] = MCFeatureCameraAllowed;
  v10[11] = MCFeatureChatAllowed;
  v10[12] = MCFeatureCloudBackupAllowed;
  v10[13] = MCFeatureCloudBackupPasswordRequired;
  v10[14] = MCFeatureCloudDocumentSyncAllowed;
  v10[15] = MCFeatureCloudKeychainSyncAllowed;
  v10[16] = MCFeatureCloudPhotoLibraryAllowed;
  v10[17] = MCFeatureDiagnosticsSubmissionAllowed;
  v10[18] = MCFeatureExplicitContentAllowed;
  v10[19] = MCFeatureFindMyDeviceAllowed;
  v10[20] = MCFeatureFindMyFriendsAllowed;
  v10[21] = MCFeatureHealthDataSubmissionAllowed;
  v10[22] = MCFeatureHealthDataSubmission2Allowed;
  v10[23] = MCFeatureHomeAllowed;
  v10[24] = MCFeatureITunesAllowed;
  v10[25] = MCFeatureManagedAppsCloudSyncAllowed;
  v10[26] = MCFeatureNewsAllowed;
  v10[27] = MCFeatureNewsTodayAllowed;
  v10[28] = MCFeatureOpenFromManagedToUnmanagedAllowed;
  v10[29] = MCFeatureOpenFromUnmanagedToManagedAllowed;
  v10[30] = MCFeaturePasscodeModificationAllowed;
  v10[31] = MCFeaturePasscodeRequired;
  v10[32] = MCFeaturePodcastsAllowed;
  v10[33] = MCFeatureSafariAllowed;
  v10[34] = MCFeatureScreenShotAllowed;
  v10[35] = MCFeatureSimplePasscodeAllowed;
  v10[36] = MCFeatureVideoConferencingAllowed;
  v10[37] = MCFeatureWatchWristDetectRequired;
  v10[38] = MCFeatureWheelchairDataSubmissionAllowed;
  v10[39] = MCFeatureWiFiWhitelistingForced;
  v10[40] = MCFeatureWiFiWithAllowedNetworksOnlyForced;
  v10[41] = MCFeatureFindMyFriendsModificationAllowed;
  v10[42] = MCFeatureWebContentFilterAutoForced;
  v10[43] = MCFeatureSiriServerLoggingAllowed;
  v10[44] = MCFeatureMusicServiceAllowed;
  v10[45] = MCFeatureRadioServiceAllowed;
  v10[46] = MCFeatureBookstoreEroticaAllowed;
  v10[47] = MCFeatureUIAppInstallationAllowed;
  v10[48] = MCFeatureHandWashingDataSubmissionAllowed;
  v10[49] = MCFeatureSafariAutoFillAllowed;
  v10[50] = MCFeatureSafetyDataSubmissionAllowed;
  v10[51] = MCFeatureAccountModificationAllowed;
  v1 = [NSArray arrayWithObjects:v10 count:52];
  v12[0] = v1;
  v11[1] = MCRestrictedValueKey;
  v9[0] = MCFeatureMaximumAppsRating;
  v9[1] = MCFeatureMaximumFailedPasscodeAttempts;
  v9[2] = MCFeatureMaximumPasscodeAgeDays;
  v9[3] = MCFeatureMinimumPasscodeLength;
  v9[4] = MCFeaturePasscodeHistoryCount;
  v2 = [NSArray arrayWithObjects:v9 count:5];
  v12[1] = v2;
  v11[2] = MCIntersectionKey;
  v8[0] = MCFeatureAppLockBundleIDs;
  v8[1] = MCFeatureManagedEmailDomains;
  v8[2] = MCFeatureWebContentFilterWhitelistedURLs;
  v8[3] = MCFeatureWebContentFilterAutoPermittedURLs;
  v3 = [NSArray arrayWithObjects:v8 count:4];
  v12[2] = v3;
  v11[3] = MCUnionKey;
  v7[0] = MCFeatureBlacklistedAppBundleIDs;
  v7[1] = MCFeatureRemovedSystemAppBundleIDs;
  v7[2] = MCFeatureTrustedCodeSigningIdentities;
  v7[3] = MCFeatureWebContentFilterBlacklistedURLs;
  v7[4] = MCFeatureWebContentFilterWhitelistedBookmarks;
  v7[5] = MCFeatureBlockedAppBundleIDs;
  v4 = [NSArray arrayWithObjects:v7 count:6];
  v12[3] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  v6 = qword_1000456E8;
  qword_1000456E8 = v5;
}

void sub_1000172E0(uint64_t a1)
{
  v2 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[NPSServer debounceOnWorkerQueueWithblock:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  if (*(a1 + 40))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v26 = 0x3032000000;
    v27 = sub_100006D10;
    v28 = sub_100006D20;
    v29 = 0;
    v3 = *(*(a1 + 32) + 192);
    if (v3 || (v4 = os_transaction_create(), v5 = *(*(&buf + 1) + 40), *(*(&buf + 1) + 40) = v4, v5, v6 = *(a1 + 32), (v3 = *(v6 + 192)) != 0))
    {
      dispatch_source_cancel(v3);
      v7 = *(a1 + 32);
      v8 = *(v7 + 192);
      *(v7 + 192) = 0;

      v6 = *(a1 + 32);
    }

    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v6 + 104));
    v10 = *(a1 + 32);
    v11 = *(v10 + 192);
    *(v10 + 192) = v9;

    v12 = *(*(a1 + 32) + 192);
    if (v12)
    {
      v13 = dispatch_time(0, 5000000000);
      dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
      v15 = *(a1 + 32);
      v14 = *(a1 + 40);
      v16 = *(v15 + 192);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100017618;
      handler[3] = &unk_10003D0E8;
      handler[4] = v15;
      v23 = v14;
      p_buf = &buf;
      dispatch_source_set_event_handler(v16, handler);
      dispatch_resume(*(*(a1 + 32) + 192));
    }

    else
    {
      v18 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Could not create dispatch source", v21, 2u);
      }

      (*(*(a1 + 40) + 16))();
      v19 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Releasing transaction for debounceOnWorkerQueueWithblock (unable to create source)", v21, 2u);
      }

      v20 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = 0;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v17 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Invalid debounce parameter", &buf, 2u);
    }
  }
}

void sub_1000175F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100017618(void *a1)
{
  v2 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[NPSServer debounceOnWorkerQueueWithblock:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: Debouncer timed out- calling block", &v8, 0xCu);
  }

  v3 = a1[4];
  v4 = *(v3 + 192);
  *(v3 + 192) = 0;

  (*(a1[5] + 16))();
  v5 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Releasing transaction for debounceOnWorkerQueueWithblock (timer fired)", &v8, 2u);
  }

  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_100017954(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] objectForKey:v5];
  v8 = [a1[5] objectForKey:v5];
  v9 = objc_opt_new();
  [a1[6] setObject:v9 forKeyedSubscript:v5];
  v10 = objc_opt_new();
  v22 = v5;
  [a1[7] setObject:v10 forKeyedSubscript:v5];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v6;
  v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v7 objectForKeyedSubscript:v15];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = &__NSDictionary0__struct;
        }

        [v9 setObject:v18 forKeyedSubscript:v15];

        v19 = [v8 objectForKeyedSubscript:v15];
        v20 = v19;
        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = &__NSDictionary0__struct;
        }

        [v10 setObject:v21 forKeyedSubscript:v15];
      }

      v12 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }
}

void sub_1000185DC(uint64_t a1)
{
  if ([*(a1 + 32) requiresDeviceUnlockedSinceBoot] && (v2 = MKBDeviceUnlockedSinceBoot(), v2 <= 0))
  {
    v10 = v2;
    v11 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      *buf = 138413058;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      v23 = 1024;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requested to mirror containerized settings (%@, %@, %@) before first unlock (%d); Stashing in database.", buf, 0x26u);
    }

    [*(*(a1 + 64) + 152) sentSettingsSyncMessage:0 forDomain:*(a1 + 48) keys:*(a1 + 56) cloudEnabled:*(a1 + 80)];
    v15 = *(*(a1 + 72) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = 0;
  }

  else
  {
    v3 = *(a1 + 32);
    v5 = *(a1 + 56);
    v4 = *(a1 + 64);
    v6 = [v4 allowedGroups];
    v7 = [v4 sendSetting:v3 keys:v5 allowedSyncGroups:v6 messageIdentifier:0 messageData:0 cloudEnabled:*(a1 + 80) backupFile:0];

    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void sub_1000189CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [[NPSSettingAccessor alloc] initWithNanoDomain:*(a1 + 40)];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) allowedGroups];
  v6 = [v2 sendSetting:v3 keys:v4 allowedSyncGroups:v5 messageIdentifier:0 messageData:0 cloudEnabled:*(a1 + 64) backupFile:0];

  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

Class sub_100018F14(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100045700)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100019058;
    v4[4] = &unk_10003D1C0;
    v4[5] = v4;
    v5 = off_10003D1A8;
    v6 = 0;
    qword_100045700 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100045700)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("NBExclusionListManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100026BA4();
  }

  qword_1000456F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100019058(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100045700 = result;
  return result;
}

void sub_1000190D8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_1000195C8(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___NPSFileBackupMsg__fileData;
LABEL_21:
        v14 = PBReaderReadData();
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

    v13 = &OBJC_IVAR___NPSFileBackupMsg__fileURL;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100019E88(sqlite3_stmt *a1, int a2, id a3)
{
  if (a3)
  {
    v5 = [a3 UTF8String];
    v6 = strlen(v5);

    return sqlite3_bind_text(a1, a2, v5, v6, 0);
  }

  else
  {

    return sqlite3_bind_null(a1, a2);
  }
}

uint64_t sub_10001A5D0(sqlite3 *a1, char *a2, ...)
{
  va_start(va, a2);
  if (!a1)
  {
    return 1;
  }

  va_copy(&v8[1], va);
  v4 = sqlite3_vmprintf(a2, va);
  v8[0] = 0;
  v5 = sqlite3_exec(a1, v4, 0, 0, v8);
  if (v5 && v8[0])
  {
    v6 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = a2;
      v11 = 1024;
      v12 = v5;
      v13 = 2080;
      v14 = v8[0];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sqlite3_exec(%s) Error: (%d) %s\n", buf, 0x1Cu);
    }

    if (v5 >= 102 && v5 <= 0xEu && ((1 << v5) & 0x4D70) != 0)
    {
      sub_10001F0F8(v5);
    }

    sqlite3_free(v8[0]);
  }

  sqlite3_free(v4);
  return v5;
}

id sub_10001C214(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_text(a1, a2);
  if (v2)
  {
    v2 = [NSString stringWithUTF8String:v2];
  }

  return v2;
}

void sub_10001C554(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqual:&stru_10003DCC0])
  {

    v5 = 0;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001C630;
  v9[3] = &unk_10003D238;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
}

void sub_10001F0F8(int a1)
{
  HIDWORD(v3) = a1 - 266;
  LODWORD(v3) = a1 - 266;
  v7 = v1;
  v8 = v2;
  switch((v3 >> 8))
  {
    case 0u:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: READ";
        goto LABEL_46;
      }

      break;
    case 1u:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: SHORT_READ";
        goto LABEL_46;
      }

      break;
    case 2u:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: WRITE";
        goto LABEL_46;
      }

      break;
    case 3u:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: FSYNC";
        goto LABEL_46;
      }

      break;
    case 4u:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: DIR_FSYNC";
        goto LABEL_46;
      }

      break;
    case 5u:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: TRUNCATE";
        goto LABEL_46;
      }

      break;
    case 6u:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: FSTAT";
        goto LABEL_46;
      }

      break;
    case 7u:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: UNLOCK";
        goto LABEL_46;
      }

      break;
    case 8u:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: RDLOCK";
        goto LABEL_46;
      }

      break;
    case 9u:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: DELETE";
        goto LABEL_46;
      }

      break;
    case 0xAu:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: BLOCKED";
        goto LABEL_46;
      }

      break;
    case 0xBu:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: NOMEM";
        goto LABEL_46;
      }

      break;
    case 0xCu:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: ACCESS";
        goto LABEL_46;
      }

      break;
    case 0xDu:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: CHECKRESERVEDLOCK";
        goto LABEL_46;
      }

      break;
    case 0xEu:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: LOCK";
        goto LABEL_46;
      }

      break;
    case 0xFu:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: CLOSE";
        goto LABEL_46;
      }

      break;
    case 0x10u:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: DIR_CLOSE";
        goto LABEL_46;
      }

      break;
    case 0x11u:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: SHMOPEN";
        goto LABEL_46;
      }

      break;
    case 0x12u:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: SHMSIZE";
        goto LABEL_46;
      }

      break;
    case 0x13u:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: SHMLOCK";
        goto LABEL_46;
      }

      break;
    case 0x14u:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: SHMMAP";
        goto LABEL_46;
      }

      break;
    case 0x15u:
      v4 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        v5 = "I/O error: SEEK";
LABEL_46:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
      }

      break;
    default:
      return;
  }
}

uint64_t sub_100020458(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = qword_100045708;
  qword_100045708 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100021A1C(id a1)
{
  v5[0] = @"com.apple.Carousel";
  v1 = [NSSet setWithArray:&off_10003E960];
  v5[1] = @"com.apple.nano";
  v6[0] = v1;
  v2 = [NSSet setWithArray:&off_10003E978];
  v6[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v4 = qword_100045718;
  qword_100045718 = v3;
}

void sub_100021F10(id a1)
{
  v1 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.bulletinboard.apps"];
  v2 = qword_100045728;
  qword_100045728 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100021FFC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_10002201C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

uint64_t sub_100022180(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR___NPSUserDefaultsBackupMsgKey__key;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

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

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR___NPSUserDefaultsBackupMsgKey__value;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id sub_100023218(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 nsuuid];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

id sub_100023530(void *a1)
{
  v2 = *(a1[4] + 8);
  if (!v2)
  {
    v3 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[5];
      v13 = 138543362;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dumping data for %{public}@ to sysdiagnose", &v13, 0xCu);
    }

    v5 = (*(a1[6] + 16))();
    v6 = a1[4];
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;

    v2 = *(a1[4] + 8);
  }

  v8 = 15872 * a1[7];
  if (v8 >= [v2 length])
  {
    v11 = 0;
  }

  else
  {
    v9 = [*(a1[4] + 8) length];
    if (v8 + 15872 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = (v8 + 15872);
    }

    v11 = [*(a1[4] + 8) substringWithRange:{v8, &v10[-v8]}];
  }

  return v11;
}

_DWORD *sub_100023740(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 3)
  {
    return 0;
  }

  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:0];
    v5 = malloc_type_calloc(1uLL, [v4 length] + 200, 0x1000040BEF03554uLL);
    *v5 = 1;
    v5[1] = [v4 length];
    [*(a1 + 32) UTF8String];
    __strlcpy_chk();
    memcpy(v5 + 50, [v4 bytes], objc_msgSend(v4, "length"));
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1000239F0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v13 = 0;
    v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v13];
    v6 = v13;
    if (v6)
    {
      v7 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v15 = v3;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "error while retrieving application record %@ with error %@", buf, 0x16u);
      }
    }

    if (v4)
    {
      v8 = [v5 groupContainerURLs];
      v9 = [v8 objectForKey:v4];
      v10 = [v9 path];
    }

    else
    {
      v8 = [v5 dataContainerURL];
      v10 = [v8 path];
    }

    if (!v10)
    {
      v11 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Container Path for container %@ is nil!", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_100024F14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t *sub_100024F30@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t sub_100024FF8(uint64_t a1, void *a2)
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

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  NPSLoggingDaemonObjectInit();
  [NPSServer setLaunchNotificationsEnabled:NPSShouldRun()];
  v1 = dispatch_get_global_queue(0, 0);
  signal(15, 1);
  v2 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v1);
  dispatch_source_set_event_handler_f(v2, sub_1000252F4);
  dispatch_activate(v2);

  v3 = objc_opt_new();
  v4 = qword_100045738;
  qword_100045738 = v3;

  objc_autoreleasePoolPop(v0);
  v5 = +[NSRunLoop currentRunLoop];
  [v5 run];

  return 1;
}

id sub_1000252F4(id result)
{
  if (result == 15)
  {
    v5 = v1;
    v6 = v2;
    v3 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received SIGTERM", v4, 2u);
    }

    return [qword_100045738 invalidate];
  }

  return result;
}

void sub_100025D04(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 uuid];
  v8 = [v7 UUIDString];
  v10 = [v5 stringByAppendingPathComponent:v8];

  v9 = [NSURL fileURLWithPath:v10 isDirectory:0];
  (*(*(a1 + 40) + 16))();
}

void sub_10002650C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100026524(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 uuid];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_100026688()
{
  sub_100019104();
  sub_1000190F8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000267AC()
{
  sub_100019104();
  sub_1000190F8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000267E8()
{
  sub_100019104();
  sub_1000190F8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100026824()
{
  sub_1000190CC();
  sub_1000190F8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100026894()
{
  sub_1000190CC();
  sub_1000190F8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100026904(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1000190CC();
  sub_1000190D8(&_mh_execute_header, v3, v4, "_completeActiveSyncSessionWithError: Reporting sync failure (%@) to sync session: (%@)");
}

void sub_1000269D0(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unsupported message type on non-watchOS, ignoring", buf, 2u);
}

void sub_100026B20()
{
  sub_1000190CC();
  sub_1000190F8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100026BCC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "NPSBlobReaderWriter: initWithPathToCreateBlobFile error %@", &v2, 0xCu);
}

void sub_100026C44(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "NPSBlobReaderWriter: initWithPathToLoadBlobFile error %@", &v2, 0xCu);
}

void sub_100026D00(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = a2[2];
  v7 = [a2 description];
  sub_100021FC4();
  sub_10002201C(&_mh_execute_header, v8, v9, "%@ '%@': %@", v10, v11, v12, v13, v14);
}

void sub_100026DB8(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *(a2 + 8);
  sub_100021FE4();
  sub_100021FFC(&_mh_execute_header, v7, v8, "%@ '%@':", v9, v10, v11, v12, v13);
}

void sub_100026EDC(uint64_t *a1)
{
  sub_100024F30(a1, __stack_chk_guard);
  sub_100024F3C();
  sub_100024F14(&_mh_execute_header, v1, v2, "Logic error! Type %ld is not handled.", v3, v4, v5, v6, v7);
}