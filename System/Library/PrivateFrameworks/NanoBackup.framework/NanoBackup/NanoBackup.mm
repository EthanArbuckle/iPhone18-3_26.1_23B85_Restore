void sub_100001B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001B20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001B38(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100001D00(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = objc_retainBlock(*(a1 + 40));
  [v1 addObject:v2];
}

id sub_100001D54(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 24) removeAllObjects];
}

id sub_100001F48(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 24) removeAllObjects];
}

void sub_100002100(id a1)
{
  v1 = NSClassFromString(@"NTKFaceSnapshotClient");
  if (v1)
  {
    v2 = v1;
    v3 = NSSelectorFromString(@"sharedInstance");
    if (objc_opt_respondsToSelector())
    {
      qword_100034AB0 = [(objc_class *)v2 performSelector:v3];

      _objc_release_x1();
    }
  }
}

uint64_t sub_100002238(uint64_t a1, void *a2)
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

uint64_t sub_100002570(uint64_t a1, void *a2)
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

void sub_1000029A4(uint64_t a1)
{
  v2 = nb_daemon_log;
  v3 = os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT);
  v4 = NRPairedDeviceRegistryDeviceDidUnpairNotification;
  if (v3)
  {
    v9 = 138412290;
    v10 = NRPairedDeviceRegistryDeviceDidUnpairNotification;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Add Observer for: %@", &v9, 0xCu);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:"_handleDeviceUnpaired:" name:v4 object:0];

  v6 = [[NBRemoteObjectClassC alloc] initWithDelegate:*(a1 + 32) andQueue:*(*(a1 + 32) + 16)];
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  *(v7 + 8) = v6;
}

void sub_100002B50(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];

  if (!v2)
  {
    v3 = objc_alloc_init(NBiCloudBackupManager);
    [*(a1 + 32) setManager:v3];
  }

  [*(a1 + 32) startSchedulerIfNecessary];
  v4 = [*(a1 + 32) manager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002C34;
  v6[3] = &unk_10002C7F8;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 backupList:v6];
}

id sub_100002C34(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setManager:0];
}

void sub_100002D40(uint64_t a1)
{
  v2 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "restoreWithID: %@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) manager];

  if (!v4)
  {
    v5 = objc_alloc_init(NBiCloudBackupManager);
    [*(a1 + 40) setManager:v5];
  }

  v6 = [*(a1 + 40) manager];
  v7 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002EAC;
  v9[3] = &unk_10002C820;
  v8 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v8;
  [v6 restoreBackupWithID:v7 completion:v9];
}

id sub_100002EAC(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setManager:0];
}

void sub_100002FB8(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];

  if (!v2)
  {
    v3 = objc_alloc_init(NBiCloudBackupManager);
    [*(a1 + 32) setManager:v3];
  }

  v4 = [*(a1 + 32) manager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000030A0;
  v7[3] = &unk_10002C820;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v4 removeBackupWithID:v5 withCompletion:v7];
}

id sub_1000030A0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setManager:0];
}

void sub_1000031AC(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];

  if (!v2)
  {
    v3 = objc_alloc_init(NBiCloudBackupManager);
    [*(a1 + 32) setManager:v3];
  }

  NSLog(@"restoreWithURL: %@", *(a1 + 40));
  v4 = [*(a1 + 32) manager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000032A8;
  v7[3] = &unk_10002C820;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v4 restoreBackupWithURL:v5 completion:v7];
}

id sub_1000032A8(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setManager:0];
}

void sub_1000033B4(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];

  if (!v2)
  {
    v3 = objc_alloc_init(NBiCloudBackupManager);
    [*(a1 + 32) setManager:v3];
  }

  NSLog(@"iCloudBackupPayloadToPath: %@", *(a1 + 40));
  v4 = [*(a1 + 32) manager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000034B0;
  v7[3] = &unk_10002C870;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v4 backupPayloadForID:v5 completion:v7];
}

id sub_1000034B0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setManager:0];
}

void sub_100003598(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "createInitialBackup finshed with error %@", &v5, 0xCu);
  }

  [*(a1 + 32) setManager:0];
}

id sub_100003720(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setManager:0];
}

id sub_100003848(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setManager:0];
}

uint64_t sub_100003A40(uint64_t a1, void *a2)
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

void sub_1000042BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:v9];
        [*(*(a1 + 32) + 16) setObject:v10 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *(a1 + 40);
  v12 = [*(*(a1 + 32) + 16) allValues];
  (*(v11 + 16))(v11, v12);
}

void sub_1000044E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 allValues];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 backupType] == 1)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000048C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  (*(v2 + 16))(v2, v3);
}

void sub_100004B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100004B60(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 56) + 8) + 24) = 1;
  if (a2)
  {
    [*(*(a1 + 32) + 16) setObject:a2 forKeyedSubscript:*(a1 + 40)];
    v3 = [*(a1 + 32) persistMetadataIndex];
    if (!v3)
    {
      [*(a1 + 32) pruneLocalBackups];
    }
  }

  else
  {
    v4 = +[NSFileManager defaultManager];
    [v4 removeItemAtPath:*(a1 + 48) error:0];

    v3 = 0;
  }

  return v3;
}

void sub_100004CC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v29 = v3;
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Got backup: %@ for ID: %@", buf, 0x16u);
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  if (![v3 backupType])
  {
    v17 = [*(a1 + 40) pathToBackup:v3];
    v18 = +[NSFileManager defaultManager];
    v27 = 0;
    [v18 removeItemAtPath:v17 error:&v27];
    v19 = v27;

    if (v19)
    {
      v20 = [v19 domain];
      if ([v20 isEqualToString:NSCocoaErrorDomain])
      {
        v21 = [v19 code];

        if (v21 == 4)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      v22 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v19;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to remove Backup: %@", buf, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
    }

LABEL_20:
    v23 = *(*(a1 + 40) + 16);
    v24 = [v3 uuid];
    [v23 removeObjectForKey:v24];

    v11 = [*(a1 + 40) persistMetadataIndex];

    (*(*(a1 + 48) + 16))();
    goto LABEL_21;
  }

  if ([v3 backupType] == 1)
  {
    v6 = *(*(a1 + 40) + 24);
    if (!v6)
    {
      v7 = objc_opt_new();
      v8 = *(a1 + 40);
      v9 = *(v8 + 24);
      *(v8 + 24) = v7;

      v6 = *(*(a1 + 40) + 24);
    }

    v10 = *(a1 + 32);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100005040;
    v25[3] = &unk_10002C960;
    v26 = *(a1 + 48);
    [v6 deleteBackupWithID:v10 completion:v25];
    v11 = v26;
    goto LABEL_21;
  }

LABEL_9:
  v12 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v3 uuid];
    v15 = [v14 UUIDString];
    *buf = 138412290;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Backup (%@) could not be found", buf, 0xCu);
  }

  v16 = *(a1 + 48);
  v11 = NBError();
  (*(v16 + 16))(v16, v11);
LABEL_21:
}

void sub_1000050BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count] >= 5)
  {
    v22 = v3;
    v4 = [NSMutableArray arrayWithArray:v3];
    [v4 sortUsingComparator:&stru_10002C9C8];
    v5 = [v4 count] - 1;
    if (v5 >= 5)
    {
      v6 = &nb_daemon_log;
      v7 = v25;
      v8 = &unk_10002C9F0;
      v23 = v4;
      do
      {
        v9 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          v11 = [v4 objectAtIndexedSubscript:v5];
          v12 = [v11 uuid];
          [v4 objectAtIndexedSubscript:v5];
          v13 = v7;
          v14 = a1;
          v15 = v8;
          v17 = v16 = v6;
          v18 = [v17 lastModificationDate];
          *buf = 138412546;
          v29 = v12;
          v30 = 2112;
          v31 = v18;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "pruneLocalBackups: Deleting backup with UUID: %@ and modification date: %@", buf, 0x16u);

          v6 = v16;
          v8 = v15;
          a1 = v14;
          v7 = v13;
          v4 = v23;
        }

        v19 = *(a1 + 32);
        v20 = [v4 objectAtIndexedSubscript:v5];
        v21 = [v20 uuid];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v25[0] = sub_10000538C;
        v25[1] = v8;
        v26 = v4;
        v27 = v5;
        [v19 deleteBackupWithID:v21 withCompletion:v24];

        --v5;
      }

      while (v5 > 4);
    }

    v3 = v22;
  }
}

int64_t sub_10000531C(id a1, NBBackup *a2, NBBackup *a3)
{
  v4 = a3;
  v5 = [(NBBackup *)a2 lastModificationDate];
  v6 = [(NBBackup *)v4 lastModificationDate];

  v7 = [v6 compare:v5];
  return v7;
}

void sub_10000538C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = v4;
      v8 = [v6 objectAtIndexedSubscript:v5];
      v9 = [v8 uuid];
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to delete backup: %@ with error: %@", &v10, 0x16u);
    }
  }
}

void sub_1000056E8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 88), 8);
  objc_destroyWeak((v1 - 56));
  _Unwind_Resume(a1);
}

void sub_100005710(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v2 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "timed out waiting for result from icloud", v6, 2u);
    }

    v3 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = [WeakRetained metadataIndex];
    (*(v3 + 16))(v3, v5);
  }
}

void sub_1000057D0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v6 = objc_opt_new();
  if (a3)
  {
    v7 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to add iCloud backups", v15, 2u);
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = [v13 uuid];
          [v6 setObject:v13 forKey:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100005EA4(id a1)
{
  v3 = NBBackupDirectoryPath();
  v1 = [v3 stringByAppendingPathComponent:@"index"];
  v2 = qword_100034AC0;
  qword_100034AC0 = v1;
}

void sub_100006184(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  v5 = [[NBBackupIndexManager alloc] initWithiCloudBackup:*(*(a1 + 32) + 56)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  [*(*(a1 + 32) + 32) pruneLocalBackups];
  v8 = objc_opt_new();
  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 6uLL, *(*(a1 + 32) + 16));
  v12 = *(a1 + 32);
  v13 = *(v12 + 24);
  *(v12 + 24) = v11;

  objc_initWeak(&location, *(a1 + 32));
  v14 = *(*(a1 + 32) + 24);
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_10000635C;
  v25 = &unk_10002CAB0;
  objc_copyWeak(&v26, &location);
  dispatch_source_set_event_handler(v14, &v22);
  dispatch_resume(*(*(a1 + 32) + 24));
  v15 = [NBRemoteObjectClassC alloc];
  v16 = [(NBRemoteObjectClassC *)v15 initWithDelegate:*(a1 + 32) andQueue:*(*(a1 + 32) + 16), v22, v23, v24, v25];
  v17 = *(a1 + 32);
  v18 = *(v17 + 48);
  *(v17 + 48) = v16;

  v19 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.nanobackup"];
  v20 = *(a1 + 32);
  v21 = *(v20 + 8);
  *(v20 + 8) = v19;

  [*(*(a1 + 32) + 8) setDelegate:?];
  [*(*(a1 + 32) + 8) resume];
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void sub_100006340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000635C(uint64_t a1)
{
  v2 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received memory warning", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *&qword_100034AD0 > 10.0)
  {
    v5 = [WeakRetained backupIndexManager];
    [v5 purgeCache];

    v6 = [WeakRetained exclusionListManager];
    [v6 purgeCache];
  }

  qword_100034AD0 = *&Current;
}

void sub_1000066D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000066FC(id a1)
{
  qword_100034AE0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NBServerProtocol];

  _objc_release_x1();
}

void sub_100006744(uint64_t a1)
{
  v2 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 134217984;
    v6 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Connection invalidated: (%p)", &v5, 0xCu);
  }
}

uint64_t sub_100006C30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ couldn't enumerate %@: %@", &v10, 0x20u);
  }

  return 1;
}

void sub_100006F5C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 > 1)
  {
    if (v2 == 3)
    {
      v11 = *(*(a1 + 32) + 48);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100007234;
      v12[3] = &unk_10002CB40;
      v13 = *(a1 + 40);
      [v11 sendBackupListRequestWithResponseBlock:v12];
      v4 = v13;
      goto LABEL_12;
    }

    if (v2 == 2)
    {
      v5 = *(*(a1 + 32) + 32);
      v6 = *(a1 + 56);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000071F8;
      v18[3] = &unk_10002CB18;
      v19 = *(a1 + 40);
      [v5 iCloudBackupsWithTimeout:v6 completion:v18];
      v4 = v19;
      goto LABEL_12;
    }
  }

  else
  {
    if (!v2)
    {
      v9 = *(*(a1 + 32) + 32);
      v10 = *(a1 + 56);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100007220;
      v14[3] = &unk_10002CB18;
      v15 = *(a1 + 40);
      [v9 allBackupsWithTimeout:v10 completion:v14];
      v4 = v15;
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = *(*(a1 + 32) + 32);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10000720C;
      v16[3] = &unk_10002CB18;
      v17 = *(a1 + 40);
      [v3 localBackupsWithCompletion:v16];
      v4 = v17;
LABEL_12:

      return;
    }
  }

  v7 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    *buf = 134217984;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unknown backup type: %lu", buf, 0xCu);
  }
}

uint64_t sub_1000074B0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000074C8(uint64_t a1)
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];

  v6 = [v5 valueForProperty:NRDevicePropertyIsAltAccount];
  LOBYTE(v3) = [v6 BOOLValue];

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v3)
  {
    v9 = *(v7 + 48);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100007790;
    v13[3] = &unk_10002C960;
    v10 = &v14;
    v14 = *(a1 + 48);
    [v9 sendDeleteBackupRequest:v8 withResponseBlock:v13];
  }

  else
  {
    v11 = *(v7 + 32);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100007674;
    v15[3] = &unk_10002CB90;
    v10 = &v16;
    v12 = v8;
    v16 = v12;
    v17 = *(a1 + 48);
    [v11 deleteBackupWithID:v12 withCompletion:v15];
  }
}

void sub_100007674(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nb_daemon_log;
  v5 = os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v7 = *(a1 + 32);
      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v3;
      v8 = "Error occured deleting backup (%@): (%@)";
      v9 = v4;
      v10 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
    }
  }

  else if (v5)
  {
    v11 = *(a1 + 32);
    v12 = 138412290;
    v13 = v11;
    v8 = "Successfully deleted backup (%@)";
    v9 = v4;
    v10 = 12;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v6);
}

uint64_t sub_100007CE8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100007D00(uint64_t a1)
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];

  v6 = [v5 valueForProperty:NRDevicePropertyIsAltAccount];
  LOBYTE(v3) = [v6 BOOLValue];

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v3)
  {
    v9 = *(v7 + 48);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100008F68;
    v15[3] = &unk_10002C960;
    v10 = &v16;
    v16 = *(a1 + 56);
    [v9 sendRestoreRequest:v8 withResponseBlock:v15];
  }

  else
  {
    v11 = *(v7 + 32);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100007EC8;
    v17[3] = &unk_10002CC30;
    v10 = v18;
    v12 = v8;
    v18[0] = v12;
    v13 = *(a1 + 56);
    v14 = *(a1 + 32);
    v20 = v13;
    v18[1] = v14;
    v19 = *(a1 + 48);
    [v11 backupForID:v12 completion:v17];
  }
}

void sub_100007EC8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v59 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Backup for backupID (%@) could not be found", buf, 0xCu);
    }

    v6 = *(a1 + 56);
    v7 = NBError();
    (*(v6 + 16))(v6, v7);
  }

  if (![v3 backupType])
  {
    v13 = *(a1 + 40);
    v14 = [objc_opt_class() retrieveGizmoWithPairingID:*(a1 + 48)];
    if (!v14)
    {
      v15 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 48);
        *buf = 138412290;
        v59 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to find device with pairingID: (%@)", buf, 0xCu);
      }

      v17 = *(a1 + 56);
      v18 = NBError();
      (*(v17 + 16))(v17, v18);
    }

    v19 = [v14 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
    if (!v19)
    {
      v20 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = v14;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Failed to resolve pairing data store path for device: (%@)", buf, 0xCu);
      }

      v21 = *(a1 + 56);
      v22 = NBError();
      (*(v21 + 16))(v21, v22);
    }

    v23 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Restoring from tombstone backup.", buf, 2u);
    }

    v24 = [*(*(a1 + 40) + 32) pathToBackup:v3];
    +[NSFileManager defaultManager];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_100008780;
    v25 = v54[3] = &unk_10002CBE0;
    v55 = v25;
    v56 = *(a1 + 48);
    v26 = v19;
    v57 = v26;
    v27 = objc_retainBlock(v54);
    v28 = *(a1 + 40);
    v29 = [objc_opt_class() localUserDefaultsDirectoryForBackupDirectory:v24];
    v46 = v29;
    v47 = v27;
    if ([v25 fileExistsAtPath:v29])
    {
      v30 = (v27[2])(v27, v29);
      if (v30)
      {
        (*(*(a1 + 56) + 16))();
      }
    }

    else
    {
      v30 = 0;
    }

    v33 = *(a1 + 40);
    v34 = [objc_opt_class() remoteBackupDirectoryForBackupDirectory:v24];
    v35 = [*(a1 + 40) preferencesSyncBackupDirectoryForPairingDataStore:v26];
    v48 = v26;
    if ([v25 fileExistsAtPath:v35])
    {
      v36 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = v35;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Paired device already has a backup directory (%@)", buf, 0xCu);
      }

      v53 = v30;
      [v25 removeItemAtPath:v35 error:&v53];
      v37 = v53;

      if (v37)
      {
        v38 = nb_daemon_log;
        if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v59 = v35;
          v60 = 2112;
          v61 = v37;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Failed to delete the paired device existing backup directory (%@) with error: (%@)", buf, 0x16u);
        }

        (*(*(a1 + 56) + 16))();
      }
    }

    else
    {
      v45 = v24;
      v39 = [v35 stringByDeletingLastPathComponent];
      if ([v25 fileExistsAtPath:v39])
      {
        v37 = v30;
      }

      else
      {
        v40 = nb_daemon_log;
        if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v59 = v39;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "PreferencesSync directory does not exist. Create it at path (%@)", buf, 0xCu);
        }

        v64 = NSFileProtectionKey;
        v65 = NSFileProtectionNone;
        v41 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v52 = v30;
        [v25 createDirectoryAtPath:v39 withIntermediateDirectories:1 attributes:v41 error:&v52];
        v37 = v52;

        if (v37)
        {
          v42 = nb_daemon_log;
          if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v59 = v39;
            v60 = 2112;
            v61 = v37;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Failed to create PreferencesSync directory (%@) with error: (%@)", buf, 0x16u);
          }

          (*(*(a1 + 56) + 16))();
        }
      }

      v24 = v45;
    }

    if ([v25 fileExistsAtPath:v34])
    {
      v51 = v37;
      [v25 copyItemAtPath:v34 toPath:v35 error:&v51];
      v43 = v51;

      if (v43)
      {
        v44 = nb_daemon_log;
        if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v59 = v34;
          v60 = 2112;
          v61 = v35;
          v62 = 2112;
          v63 = v43;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Failed to copy (%@) to (%@) with error: (%@)", buf, 0x20u);
        }

        (*(*(a1 + 56) + 16))();
      }
    }

    else
    {
      v43 = v37;
    }

    [*(a1 + 40) migrateLegacyContactPreferencesFromBackup:v3 device:v14];
    [*(a1 + 40) migrateLegacyDigitalTouchPreferencesFromBackup:v3 device:v14];
    [*(a1 + 40) migrateFitnessPreferencesFromBackup:v3 device:v14];
    [*(a1 + 40) migrateBreathePreferencesFromBackup:v3];

    goto LABEL_49;
  }

  if ([v3 backupType] != 1)
  {
    v31 = nb_daemon_log;
    if (!os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_50;
    }

    v14 = v31;
    v32 = [v3 backupType];
    *buf = 134217984;
    v59 = v32;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unknown backup type: %lu", buf, 0xCu);
LABEL_49:

    goto LABEL_50;
  }

  v8 = *(*(a1 + 40) + 56);
  if (!v8)
  {
    v9 = objc_opt_new();
    v10 = *(a1 + 40);
    v11 = *(v10 + 56);
    *(v10 + 56) = v9;

    v8 = *(*(a1 + 40) + 56);
  }

  v12 = [v3 uuid];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100008D48;
  v49[3] = &unk_10002CC08;
  v49[4] = *(a1 + 40);
  v50 = *(a1 + 56);
  [v8 backupPayloadForID:v12 completion:v49];

LABEL_50:
  (*(*(a1 + 56) + 16))();
}

id sub_100008780(void *a1, void *a2)
{
  v4 = a2;
  v5 = a1[4];
  v40 = 0;
  v6 = [v5 contentsOfDirectoryAtPath:v4 error:&v40];
  v7 = v40;
  if (v7)
  {
    v2 = v7;
    v8 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Could not list content of directory (%@)", buf, 0xCu);
    }

    goto LABEL_29;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = v9;
  v32 = *v37;
  v30 = v6;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v37 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v36 + 1) + 8 * i);
      v13 = [v4 stringByAppendingPathComponent:v12];
      v14 = [NSData dataWithContentsOfFile:v13];

      v35 = 0;
      v15 = [NSPropertyListSerialization propertyListWithData:v14 options:0 format:0 error:&v35];
      v16 = v35;
      if (v16)
      {
        v22 = v16;
        v23 = nb_daemon_log;
        if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v42 = v12;
          v43 = 2112;
          v44 = v22;
          v45 = 2112;
          v46 = v14;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to unserialize domain (%@) with error: (%@) for data: (%@)", buf, 0x20u);
        }

        v2 = v22;

        v15 = v14;
        v14 = v2;
        goto LABEL_27;
      }

      v17 = [[NPSDomainAccessor alloc] initWithDomain:v12 pairingID:a1[5] pairingDataStore:a1[6]];
      if (!v17)
      {
        v24 = nb_daemon_log;
        if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          v25 = a1[5];
          v26 = v24;
          v27 = [v25 UUIDString];
          v28 = a1[6];
          *buf = 138412802;
          v42 = v12;
          v43 = 2112;
          v44 = v27;
          v45 = 2112;
          v46 = v28;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Failed to instanciate NPSDomainAccessor for domain: (%@); pairingID: (%@); pairingDataStore: (%@)", buf, 0x20u);
        }

        v2 = 0;
LABEL_27:

        v20 = v14;
LABEL_28:

        v6 = v30;
        goto LABEL_29;
      }

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100008C58;
      v33[3] = &unk_10002CBB8;
      v33[4] = v12;
      v18 = v17;
      v34 = v18;
      [v15 enumerateKeysAndObjectsUsingBlock:v33];
      v19 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = v12;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Synchronizing domain (%@)", buf, 0xCu);
      }

      v20 = [v18 synchronize];
      if (v20)
      {
        v21 = nb_daemon_log;
        if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v42 = v18;
          v43 = 2112;
          v44 = v12;
          v45 = 2112;
          v46 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Failed to synchronize domain accessor (%@) for domain (%@) with error: (%@)", buf, 0x20u);
        }

        v2 = v20;
      }

      if (v20)
      {
        goto LABEL_28;
      }
    }

    v10 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
    v6 = v30;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_20:

  v2 = 0;
LABEL_29:

  return v2;
}

void sub_100008C58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Restoring <%@, %@> to (%@)", &v9, 0x20u);
  }

  [*(a1 + 40) setObject:v6 forKey:v5];
}

void sub_100008D48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to download backup payload from iCloud: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = *(*(a1 + 32) + 48);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100008E9C;
    v9[3] = &unk_10002C960;
    v10 = *(a1 + 40);
    [v8 sendBackupPayload:v5 withResponseBlock:v9];
  }
}

void sub_100008E9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "backup payload response with error: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10000923C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100009254(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009318;
  v4[3] = &unk_10002CCD0;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v2;
  v6 = *(a1 + 48);
  v3 = sub_100009318(v4);
  (*(*(a1 + 56) + 16))();
}

id sub_100009318(id *a1)
{
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_100009BC8;
  v62 = sub_100009BD8;
  v63 = 0;
  v2 = a1[4];
  v3 = [objc_opt_class() retrieveGizmoWithPairingID:a1[5]];
  v4 = v3;
  if (v3)
  {
    v5 = NRDevicePropertyLocalPairingDataStorePath;
    v6 = [v3 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
    if (!v6)
    {
      v23 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v65 = v4;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to resolve pairing data store path for existing device: (%@)", buf, 0xCu);
      }

      v20 = NBError();
      goto LABEL_48;
    }

    v7 = a1[4];
    v8 = [objc_opt_class() retrieveGizmoWithPairingID:a1[6]];
    v9 = v8;
    if (!v8)
    {
      v24 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v25 = a1[6];
        *buf = 138412290;
        v65 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Failed to find device with pairingID: (%@)", buf, 0xCu);
      }

      v20 = NBError();
      goto LABEL_47;
    }

    v10 = [v8 valueForProperty:v5];
    if (!v10)
    {
      v26 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v65 = v9;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Failed to resolve pairing data store path for device: (%@)", buf, 0xCu);
      }

      v20 = NBError();
      goto LABEL_46;
    }

    v11 = [NPSDomainAccessor copyDomainListForPairingID:a1[5] pairingDataStore:v6];
    v12 = [v11 mutableCopy];

    v13 = [*(a1[4] + 5) excludedPerGizmoDomains];
    [v12 minusSet:v13];
    v14 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v65 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Excluding the following domains from the restore: (%@)", buf, 0xCu);
    }

    v15 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v65 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Restoring domains: (%@)", buf, 0xCu);
    }

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100009BE0;
    v51[3] = &unk_10002CCA8;
    v52 = a1[6];
    v16 = v10;
    v53 = v16;
    v57 = &v58;
    v54 = a1[5];
    v17 = v6;
    v18 = a1[4];
    v55 = v17;
    v56 = v18;
    [v12 enumerateObjectsUsingBlock:v51];
    v19 = v59[5];
    if (v19)
    {
      v20 = v19;
LABEL_45:

LABEL_46:
LABEL_47:

LABEL_48:
      goto LABEL_49;
    }

    v47 = +[NSFileManager defaultManager];
    v27 = [a1[4] preferencesSyncBackupDirectoryForPairingDataStore:v16];
    v46 = [a1[4] preferencesSyncBackupDirectoryForPairingDataStore:v17];
    v28 = v27;
    if ([v47 fileExistsAtPath:v27])
    {
      v29 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v65 = v27;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Paired device already has a backup directory (%@)", buf, 0xCu);
      }

      v30 = (v59 + 5);
      obj = v59[5];
      [v47 removeItemAtPath:v27 error:&obj];
      objc_storeStrong(v30, obj);
      if (v59[5])
      {
        v31 = nb_daemon_log;
        if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v59[5];
          *buf = 138412546;
          v65 = v27;
          v66 = 2112;
          v67 = v32;
          v33 = "Failed to delete the paired device existing backup directory (%@) with error: (%@)";
          v34 = v31;
          v35 = 22;
LABEL_41:
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
          goto LABEL_42;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v45 = [v27 stringByDeletingLastPathComponent];
      v28 = v27;
      if (([v47 fileExistsAtPath:v45] & 1) == 0)
      {
        v36 = nb_daemon_log;
        if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v65 = v45;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "PreferencesSync directory does not exist. Create it at path (%@)", buf, 0xCu);
        }

        v70 = NSFileProtectionKey;
        v71 = NSFileProtectionNone;
        v37 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        v38 = (v59 + 5);
        v49 = v59[5];
        [v47 createDirectoryAtPath:v45 withIntermediateDirectories:1 attributes:v37 error:&v49];
        objc_storeStrong(v38, v49);
        v28 = v27;

        if (v59[5])
        {
          v39 = nb_daemon_log;
          if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
          {
            v40 = v59[5];
            *buf = 138412546;
            v65 = v45;
            v66 = 2112;
            v67 = v40;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Failed to create PreferencesSync directory (%@) with error: (%@)", buf, 0x16u);
          }

          v20 = v59[5];

          goto LABEL_44;
        }
      }
    }

    if (![v47 fileExistsAtPath:v46] || (v41 = (v59 + 5), v48 = v59[5], objc_msgSend(v47, "copyItemAtPath:toPath:error:", v46, v28, &v48), objc_storeStrong(v41, v48), !v59[5]))
    {
      [a1[4] migrateBreathePreferencesFromDevice:v4];
      v20 = 0;
      goto LABEL_44;
    }

    v42 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v43 = v59[5];
      *buf = 138412802;
      v65 = v46;
      v66 = 2112;
      v67 = v28;
      v68 = 2112;
      v69 = v43;
      v33 = "Failed to copy (%@) to (%@) with error: (%@)";
      v34 = v42;
      v35 = 32;
      goto LABEL_41;
    }

LABEL_42:
    v20 = v59[5];
LABEL_44:

    goto LABEL_45;
  }

  v21 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v22 = a1[5];
    *buf = 138412290;
    v65 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Failed to find existing device with pairingID: (%@)", buf, 0xCu);
  }

  v20 = NBError();
LABEL_49:

  _Block_object_dispose(&v58, 8);

  return v20;
}

void sub_100009B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100009BC8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100009BE0(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [[NPSDomainAccessor alloc] initWithDomain:v5 pairingID:a1[4] pairingDataStore:a1[5]];
  if (v6)
  {
    v7 = [[NPSDomainAccessor alloc] initWithDomain:v5 pairingID:a1[6] pairingDataStore:a1[7]];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 synchronize];
      v10 = *(a1[9] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      if (!*(*(a1[9] + 8) + 40))
      {
        v12 = [v8 copyKeyList];
        v13 = [v12 mutableCopy];

        v14 = [*(a1[8] + 40) excludedKeysInDomain:v5];
        [v13 minusSet:v14];
        v15 = nb_daemon_log;
        if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v38 = v5;
          v39 = 2112;
          v40 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Excluding the following keys in domain (%@) from the backup: (%@)", buf, 0x16u);
        }

        v16 = nb_daemon_log;
        if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v38 = v13;
          v39 = 2112;
          v40 = v5;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Restoring keys (%@) in domain (%@)", buf, 0x16u);
        }

        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100009FAC;
        v33[3] = &unk_10002CC80;
        v34 = v8;
        v35 = v5;
        v17 = v6;
        v36 = v17;
        [v13 enumerateObjectsUsingBlock:v33];
        v18 = [v17 synchronize];
        v19 = *(a1[9] + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;

        if (*(*(a1[9] + 8) + 40))
        {
          *a3 = 1;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v27 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v28 = a1[6];
        v29 = a1[7];
        *buf = 138412802;
        v38 = v5;
        v39 = 2112;
        v40 = v28;
        v41 = 2112;
        v42 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Failed to instanciate NPSDomainAccessor for domain: (%@); existingPairingID: (%@); existingPairingDataStore: (%@)", buf, 0x20u);
      }

      v30 = NBError();
      v31 = *(a1[9] + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;
    }

    *a3 = 1;
LABEL_18:

    goto LABEL_19;
  }

  v21 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v22 = a1[4];
    v23 = a1[5];
    *buf = 138412802;
    v38 = v5;
    v39 = 2112;
    v40 = v22;
    v41 = 2112;
    v42 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Failed to instanciate NPSDomainAccessor for domain: (%@); pairingID: (%@); pairingDataStore: (%@)", buf, 0x20u);
  }

  v24 = NBError();
  v25 = *(a1[9] + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v24;

  *a3 = 1;
LABEL_19:
}

void sub_100009FAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  v5 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Read <%@, %@>: (%@)", &v7, 0x20u);
  }

  [*(a1 + 48) setObject:v4 forKey:v3];
}

uint64_t sub_10000A310(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_10000A330(void *a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100009BC8;
  v13 = sub_100009BD8;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A468;
  v6[3] = &unk_10002CD98;
  v2 = a1[5];
  v6[4] = a1[4];
  v7 = v2;
  v8 = &v9;
  v3 = sub_10000A468(v6);
  v4 = a1[6];
  if (v4)
  {
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = v10[5];
    }

    (*(v4 + 16))(v4, v5, v3);
  }

  _Block_object_dispose(&v9, 8);
}

void sub_10000A450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000A468(void *a1)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100009BC8;
  v27 = sub_100009BD8;
  v28 = 0;
  v2 = a1[4];
  v3 = [objc_opt_class() retrieveGizmoWithPairingID:a1[5]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
    if (v5)
    {
      v7 = a1[4];
      v6 = a1[5];
      v8 = *(v7 + 32);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000A718;
      v17[3] = &unk_10002CD70;
      v21 = &v23;
      v17[4] = v7;
      v18 = v6;
      v9 = v5;
      v10 = a1[6];
      v19 = v9;
      v22 = v10;
      v20 = v4;
      [v8 createNewBackup:v17];
      v11 = v24[5];
    }

    else
    {
      v14 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v15 = a1[5];
        *buf = 138412290;
        v30 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to retrieve the pairing data store for pairingID: (%@)", buf, 0xCu);
      }

      v11 = NBError();
    }
  }

  else
  {
    v12 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a1[5];
      *buf = 138412290;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to find device with pairingID: (%@)", buf, 0xCu);
    }

    v11 = NBError();
  }

  _Block_object_dispose(&v23, 8);

  return v11;
}

void sub_10000A6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A718(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[NSFileManager defaultManager];
  v88 = NSFileProtectionKey;
  v89 = NSFileProtectionNone;
  v11 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
  v12 = *(*(a1 + 64) + 8);
  obj = *(v12 + 40);
  [v10 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:v11 error:&obj];
  objc_storeStrong((v12 + 40), obj);

  v13 = *(*(*(a1 + 64) + 8) + 40);
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = [v13 domain];
  if ([v14 isEqualToString:NSCocoaErrorDomain])
  {
    v15 = [*(*(*(a1 + 64) + 8) + 40) code];

    if (v15 == 516)
    {
LABEL_4:
      v16 = *(a1 + 32);
      v17 = [objc_opt_class() localUserDefaultsDirectoryForBackupDirectory:v8];
      v86 = NSFileProtectionKey;
      v87 = NSFileProtectionNone;
      v18 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
      v19 = *(*(a1 + 64) + 8);
      v78 = *(v19 + 40);
      [v10 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:v18 error:&v78];
      objc_storeStrong((v19 + 40), v78);

      if (*(*(*(a1 + 64) + 8) + 40))
      {
        v20 = nb_daemon_log;
        if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(*(*(a1 + 64) + 8) + 40);
          *buf = 138412546;
          v81 = v8;
          v82 = 2112;
          v83 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Failed to create backup directory for local settings (%@) with error: (%@)", buf, 0x16u);
        }
      }

      else
      {
        v24 = [NPSDomainAccessor copyDomainListForPairingID:*(a1 + 40) pairingDataStore:*(a1 + 48)];
        v25 = [v24 mutableCopy];

        v26 = [*(*(a1 + 32) + 40) excludedPerGizmoDomains];
        [v25 minusSet:v26];
        v27 = nb_daemon_log;
        if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v81 = v26;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Excluding the following domains from the backup: (%@)", buf, 0xCu);
        }

        v28 = nb_daemon_log;
        if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v81 = v25;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Capturing domains: (%@)", buf, 0xCu);
        }

        v72[0] = _NSConcreteStackBlock;
        v72[1] = 3221225472;
        v72[2] = sub_10000B1E4;
        v72[3] = &unk_10002CD48;
        v73 = *(a1 + 40);
        v29 = *(a1 + 48);
        v77 = *(a1 + 64);
        v30 = *(a1 + 32);
        v74 = v29;
        v75 = v30;
        v76 = v17;
        [v25 enumerateObjectsUsingBlock:v72];
        if (!*(*(*(a1 + 64) + 8) + 40))
        {
          v31 = *(a1 + 32);
          v70 = [objc_opt_class() remoteBackupDirectoryForBackupDirectory:v8];
          v69 = [*(a1 + 32) preferencesSyncBackupDirectoryForPairingDataStore:*(a1 + 48)];
          if ([v10 fileExistsAtPath:?] && (v32 = *(*(a1 + 64) + 8), v71 = *(v32 + 40), objc_msgSend(v10, "copyItemAtPath:toPath:error:", v69, v70, &v71), objc_storeStrong((v32 + 40), v71), *(*(*(a1 + 64) + 8) + 40)))
          {
            v33 = nb_daemon_log;
            if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
            {
              v34 = *(*(*(a1 + 64) + 8) + 40);
              *buf = 138412802;
              v81 = v69;
              v82 = 2112;
              v83 = v70;
              v84 = 2112;
              v85 = v34;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Failed to copy (%@) to (%@) with error: (%@)", buf, 0x20u);
            }
          }

          else
          {
            v35 = [v8 stringByAppendingPathComponent:@"ActiveWatchFace.png"];
            v36 = [NBWatchFaceSnapshotter captureWatchFaceForPairingID:*(a1 + 40) toFilePath:v35];
            v37 = *(*(a1 + 64) + 8);
            v38 = *(v37 + 40);
            *(v37 + 40) = v36;

            if (!*(*(*(a1 + 64) + 8) + 40))
            {
              v68 = v35;
              v39 = objc_opt_new();
              v40 = *(*(a1 + 72) + 8);
              v41 = *(v40 + 40);
              *(v40 + 40) = v39;

              [*(*(*(a1 + 72) + 8) + 40) setUuid:v7];
              [*(*(*(a1 + 72) + 8) + 40) setBackupType:0];
              v42 = +[NSDate date];
              [*(*(*(a1 + 72) + 8) + 40) setLastModificationDate:v42];

              v43 = *(a1 + 32);
              v44 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [objc_opt_class() recursiveDirectorySize:v8]);
              [*(*(*(a1 + 72) + 8) + 40) setSizeInBytes:v44];

              v45 = [*(a1 + 56) valueForProperty:NRDevicePropertyName];
              [*(*(*(a1 + 72) + 8) + 40) setName:v45];

              v46 = [*(a1 + 56) valueForProperty:NRDevicePropertyProductType];
              [*(*(*(a1 + 72) + 8) + 40) setProductType:v46];

              v47 = [*(a1 + 56) valueForProperty:NRDevicePropertySystemName];
              [*(*(*(a1 + 72) + 8) + 40) setProductName:v47];

              v48 = [*(a1 + 56) valueForProperty:NRDevicePropertySystemVersion];
              [*(*(*(a1 + 72) + 8) + 40) setSystemVersion:v48];

              v49 = [*(a1 + 56) valueForProperty:NRDevicePropertySystemBuildVersion];
              [*(*(*(a1 + 72) + 8) + 40) setSystemBuildVersion:v49];

              v50 = [*(a1 + 56) valueForProperty:NRDevicePropertyMarketingVersion];
              [*(*(*(a1 + 72) + 8) + 40) setMarketingVersion:v50];

              v51 = [*(a1 + 56) valueForProperty:NRDevicePropertyColor];
              [*(*(*(a1 + 72) + 8) + 40) setDeviceColor:v51];

              v52 = [*(a1 + 56) valueForProperty:NRDevicePropertyEnclosureColor];
              [*(*(*(a1 + 72) + 8) + 40) setDeviceEnclosureColor:v52];

              v53 = [*(a1 + 56) valueForProperty:NRDevicePropertyDmin];
              v54 = [v53 objectForKeyedSubscript:&off_10002E7C8];
              [*(*(*(a1 + 72) + 8) + 40) setBottomEnclosureMaterial:v54];

              v55 = [v53 objectForKeyedSubscript:&off_10002E7E0];
              [*(*(*(a1 + 72) + 8) + 40) setTopEnclosureMaterial:v55];

              v56 = [v53 objectForKeyedSubscript:&off_10002E7F8];
              [*(*(*(a1 + 72) + 8) + 40) setFcmMaterial:v56];

              v57 = [v53 objectForKeyedSubscript:&off_10002E810];
              [*(*(*(a1 + 72) + 8) + 40) setBcmWindowMaterial:v57];

              v58 = [*(a1 + 56) valueForProperty:NRDevicePropertyDeviceCoverGlassColor];
              [*(*(*(a1 + 72) + 8) + 40) setCoverGlassColor:v58];

              v59 = [*(a1 + 56) valueForProperty:NRDevicePropertyDeviceHousingColor];
              [*(*(*(a1 + 72) + 8) + 40) setHousingColor:v59];

              v60 = [*(a1 + 56) valueForProperty:NRDevicePropertyDeviceBackingColor];
              [*(*(*(a1 + 72) + 8) + 40) setBackingColor:v60];

              v61 = +[MCProfileConnection sharedConnection];
              [*(*(*(a1 + 72) + 8) + 40) setDiagnosticsOptInEnabled:{objc_msgSend(v61, "effectiveBoolValueForSetting:", MCFeatureDiagnosticsSubmissionAllowed) == 1}];

              [*(*(*(a1 + 72) + 8) + 40) setLocationOptInEnabled:{+[CLLocationManager locationServicesEnabled](CLLocationManager, "locationServicesEnabled")}];
              v62 = [*(a1 + 56) valueForProperty:NRDevicePropertyCSN];
              [*(*(*(a1 + 72) + 8) + 40) setDeviceCSN:v62];

              v63 = v9[2](v9, *(*(*(a1 + 72) + 8) + 40));
              v64 = *(*(a1 + 64) + 8);
              v65 = *(v64 + 40);
              *(v64 + 40) = v63;

              if (!*(*(*(a1 + 64) + 8) + 40))
              {
                v66 = nb_daemon_log;
                if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
                {
                  v67 = *(*(*(a1 + 72) + 8) + 40);
                  *buf = 138412290;
                  v81 = v67;
                  _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Backing up succeeded: (%@)", buf, 0xCu);
                }

                [*(*(a1 + 32) + 32) pruneLocalBackups];
              }

              v35 = v68;
            }
          }
        }
      }

      goto LABEL_29;
    }
  }

  else
  {
  }

  v22 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 138412546;
    v81 = v8;
    v82 = 2112;
    v83 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to create backup directory (%@) with error: (%@)", buf, 0x16u);
  }

LABEL_29:
}

void sub_10000B1E4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [[NPSDomainAccessor alloc] initWithDomain:v5 pairingID:*(a1 + 32) pairingDataStore:*(a1 + 40)];
  v7 = v6;
  if (!v6)
  {
    v23 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      *buf = 138412802;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = v24;
      *&buf[22] = 2112;
      v47 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to instanciate NPSDomainAccessor for domain: (%@); pairingID: (%@); pairingDataStore: (%@)", buf, 0x20u);
    }

    v26 = NBError();
    v27 = *(*(a1 + 64) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    goto LABEL_15;
  }

  v8 = [v6 synchronize];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (*(*(*(a1 + 64) + 8) + 40))
  {
LABEL_15:
    *a3 = 1;
    goto LABEL_23;
  }

  v11 = [v7 copyKeyList];
  v12 = [v11 mutableCopy];

  v13 = [*(*(a1 + 48) + 40) excludedKeysInDomain:v5];
  [v12 minusSet:v13];
  v14 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Excluding the following keys in domain (%@) from the backup: (%@)", buf, 0x16u);
  }

  v15 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Backing up keys (%@) in domain (%@)", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v47 = sub_100009BC8;
  v48 = sub_100009BD8;
  v49 = 0;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10000B6E4;
  v36[3] = &unk_10002CD20;
  v37 = v7;
  v16 = v5;
  v38 = v16;
  v39 = buf;
  [v12 enumerateObjectsUsingBlock:v36];
  v17 = *(*&buf[8] + 40);
  if (v17)
  {
    v18 = *(*(a1 + 64) + 8);
    obj = 0;
    v19 = [NSPropertyListSerialization dataWithPropertyList:v17 format:200 options:0 error:&obj];
    objc_storeStrong((v18 + 40), obj);
    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v20 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(*&buf[8] + 40);
        v22 = *(*(*(a1 + 64) + 8) + 40);
        *v40 = 138412802;
        v41 = v16;
        v42 = 2112;
        v43 = v21;
        v44 = 2112;
        v45 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Failed to serialize domain (%@) backup dictionary (%@) with error: (%@)", v40, 0x20u);
      }

      *a3 = 1;
    }

    else
    {
      v29 = [*(a1 + 56) stringByAppendingPathComponent:v16];
      v30 = *(*(a1 + 64) + 8);
      v34 = *(v30 + 40);
      [v19 writeToFile:v29 options:268435457 error:&v34];
      objc_storeStrong((v30 + 40), v34);
      v31 = v29;
      if (*(*(*(a1 + 64) + 8) + 40))
      {
        v32 = nb_daemon_log;
        if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(*(*(a1 + 64) + 8) + 40);
          *v40 = 138412802;
          v41 = v16;
          v42 = 2112;
          v43 = v29;
          v44 = 2112;
          v45 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Failed to write domain (%@) backup data blob at path (%@) with error: (%@)", v40, 0x20u);
        }

        *a3 = 1;
        v31 = v29;
      }
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_23:
}

void sub_10000B6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B6E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  v5 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v11 = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Read <%@, %@>: (%@)", &v11, 0x20u);
  }

  if (v4)
  {
    v7 = *(*(*(a1 + 48) + 8) + 40);
    if (!v7)
    {
      v8 = objc_opt_new();
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *(*(*(a1 + 48) + 8) + 40);
    }

    [v7 setObject:v4 forKey:v3];
  }
}

void sub_10000B85C(id a1)
{
  qword_100034AE8 = [NSSet setWithObjects:@"personNameOrdering", @"personShortNameFormatEnabled", @"personShortNameFormat", @"personShortNamePreferNicknames", 0];

  _objc_release_x1();
}

void sub_10000CF98(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [*(a1 + 48) backupID];
  v4 = [v3 uuidFromData:v5];
  [v2 remoteObjectReceivedRestoreRequest:v4 requestIdentifier:*(a1 + 56)];
}

void sub_10000D114(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) outgoingResponseIdentifier];
  [v1 remoteObjectReceivedRestorePayloadRequest:v2 requestIdentifier:v3];
}

void sub_10000D2E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [*(a1 + 48) backupID];
  v4 = [v3 uuidFromData:v5];
  [v2 remoteObjectReceivedDeleteBackupRequest:v4 requestIdentifier:*(a1 + 56)];
}

void sub_10000E514(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[NBRemoteObjectClassC sendBackupListRequestWithResponseBlock:]_block_invoke";
      v7 = 2114;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Error %{public}@ sending backup request", &v5, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000E5FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [NBPBBackupListResponse alloc];
    v5 = [v3 data];
    v6 = [(NBPBBackupListResponse *)v4 initWithData:v5];

    v7 = +[NSMutableArray array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [(NBPBBackupListResponse *)v6 backups];
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(a1 + 32) backupFromProtobuf:*(*(&v23 + 1) + 8 * i)];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    v14 = [(NBPBBackupListResponse *)v6 error];
    v15 = [v14 length];

    v16 = *(a1 + 40);
    if (v15)
    {
      v17 = *(a1 + 32);
      v18 = objc_opt_class();
      v19 = [(NBPBBackupListResponse *)v6 error];
      v20 = [v17 class:v18 fromBytes:v19];
      (*(v16 + 16))(v16, v7, v20);
    }

    else
    {
      (*(v16 + 16))(*(a1 + 40), v7, 0);
    }
  }

  else
  {
    v21 = *(a1 + 40);
    v22 = [NSError errorWithDomain:@"NBErrorDomain" code:3 userInfo:0];
    (*(v21 + 16))(v21, 0, v22);
  }
}

void sub_10000EA38(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[NBRemoteObjectClassC sendBackupListResponse:error:withRequestIdentifier:withSentBlock:]_block_invoke";
      v7 = 2114;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Error %{public}@ sending backup response", &v5, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000EC84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[NBRemoteObjectClassC sendRestoreRequest:withResponseBlock:]_block_invoke";
      v7 = 2114;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Error %{public}@ sending restore request", &v5, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000ED68(uint64_t a1, void *a2)
{
  v12 = a2;
  if (v12)
  {
    v3 = [NBPBRestoreResponse alloc];
    v4 = [v12 data];
    v5 = [(NBPBRestoreResponse *)v3 initWithData:v4];

    v8 = a1 + 32;
    v6 = *(a1 + 32);
    v7 = *(v8 + 8);
    v9 = objc_opt_class();
    v10 = [(NBPBRestoreResponse *)v5 error];
    v11 = [v6 class:v9 fromBytes:v10];
    (*(v7 + 16))(v7, v11);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

BOOL sub_10000EEF0(id a1, NRDevice *a2)
{
  v2 = NRDevicePropertyIsActive;
  v3 = a2;
  v4 = [(NRDevice *)v3 valueForProperty:v2];

  v5 = [(NRDevice *)v3 valueForProperty:NRDevicePropertyIsPaired];

  return v4 && v5 == 0;
}

void sub_10000F280(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[NBRemoteObjectClassC sendBackupPayload:withResponseBlock:]_block_invoke";
      v7 = 2114;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Error %{public}@ sending restore request", &v5, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000F364(uint64_t a1, void *a2)
{
  v12 = a2;
  if (v12)
  {
    v3 = [NBPBRestoreResponse alloc];
    v4 = [v12 data];
    v5 = [(NBPBRestoreResponse *)v3 initWithData:v4];

    v8 = a1 + 32;
    v6 = *(a1 + 32);
    v7 = *(v8 + 8);
    v9 = objc_opt_class();
    v10 = [(NBPBRestoreResponse *)v5 error];
    v11 = [v6 class:v9 fromBytes:v10];
    (*(v7 + 16))(v7, v11);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10000F588(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[NBRemoteObjectClassC sendRestoreResponse:withRequestIdentifier:withSentBlock:]_block_invoke";
      v7 = 2114;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Error %{public}@ sending restore response", &v5, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000F79C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[NBRemoteObjectClassC sendCreateBackupRequestWithResponseBlock:]_block_invoke";
      v7 = 2114;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Error %{public}@ sending create backup request", &v5, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000F884(uint64_t a1, void *a2)
{
  v14 = a2;
  if (v14)
  {
    v3 = [NBPBCreateBackupResponse alloc];
    v4 = [v14 data];
    v5 = [(NBPBCreateBackupResponse *)v3 initWithData:v4];

    v6 = *(a1 + 32);
    v7 = [(NBPBCreateBackupResponse *)v5 backup];
    v8 = [v6 backupFromProtobuf:v7];

    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = [(NBPBCreateBackupResponse *)v5 error];
    v12 = [v9 class:v10 fromBytes:v11];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v13 = *(a1 + 40);
    v5 = [NSError errorWithDomain:@"NBErrorDomain" code:3 userInfo:0];
    (*(v13 + 16))(v13, 0, v5);
  }
}

void sub_10000FB44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[NBRemoteObjectClassC sendCreateBackupResponse:withRequestIdentifier:error:withSentBlock:]_block_invoke";
      v7 = 2114;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Error %{public}@ sending create backup response", &v5, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000FD90(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[NBRemoteObjectClassC sendDeleteBackupRequest:withResponseBlock:]_block_invoke";
      v7 = 2114;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Error %{public}@ sending delete backup request", &v5, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000FE74(uint64_t a1, void *a2)
{
  v12 = a2;
  if (v12)
  {
    v3 = [NBPBDeleteBackupResponse alloc];
    v4 = [v12 data];
    v5 = [(NBPBDeleteBackupResponse *)v3 initWithData:v4];

    v6 = [(NBPBDeleteBackupResponse *)v5 error];

    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = [(NBPBDeleteBackupResponse *)v5 error];
      v10 = [v7 class:v8 fromBytes:v9];

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      (*(*(a1 + 40) + 16))(*(a1 + 40), 0);
    }
  }

  else
  {
    v11 = *(a1 + 40);
    v5 = [NSError errorWithDomain:@"NBErrorDomain" code:3 userInfo:0];
    (*(v11 + 16))(v11, v5);
  }
}

void sub_1000100EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[NBRemoteObjectClassC sendDeleteBackupResponse:withRequestIdentifier:withSentBlock:]_block_invoke";
      v7 = 2114;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Error %{public}@ sending delete backup response", &v5, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10001048C(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(NBPBBackupMetadata);
        objc_storeStrong((a1 + 8), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !sub_100019B84(v13, a2))
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

    v14 = PBReaderReadData();
    v13 = *(a1 + 16);
    *(a1 + 16) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

void sub_100010E64(uint64_t a1)
{
  [*(*(a1 + 32) + 80) removeDelegate:?];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  [*(*(a1 + 32) + 16) removeAllObjects];
  [*(*(a1 + 32) + 8) removeAllObjects];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v4 = *(*(a1 + 32) + 24);
  v5 = [v4 countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v62;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v62 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(*(&v61 + 1) + 8 * i)];
        [v9 invalidate];
      }

      v6 = [v4 countByEnumeratingWithState:&v61 objects:v68 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 24) removeAllObjects];
  [*(*(a1 + 32) + 48) removeAllObjects];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v10 = *(*(a1 + 32) + 24);
  v11 = [v10 countByEnumeratingWithState:&v57 objects:v67 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v58;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v58 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(*(&v57 + 1) + 8 * j)];
        [v15 invalidate];
      }

      v12 = [v10 countByEnumeratingWithState:&v57 objects:v67 count:16];
    }

    while (v12);
  }

  v16 = *(a1 + 32);
  v17 = *(v16 + 24);
  *(v16 + 24) = 0;

  v18 = *(a1 + 32);
  v19 = *(v18 + 48);
  *(v18 + 48) = 0;

  v20 = *(a1 + 32);
  if (*(v20 + 56))
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v21 = [*(v20 + 8) allKeys];
    v22 = [v21 copy];

    v23 = [v22 countByEnumeratingWithState:&v53 objects:v66 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v54;
      do
      {
        for (k = 0; k != v24; k = k + 1)
        {
          if (*v54 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v53 + 1) + 8 * k);
          v28 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v27];
          if (v28)
          {
            [*(*(a1 + 32) + 8) removeObjectForKey:v27];
            v29 = *(*(a1 + 32) + 56);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100011344;
            block[3] = &unk_10002CED8;
            v52 = v28;
            dispatch_async(v29, block);
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v53 objects:v66 count:16];
      }

      while (v24);
    }

    v30 = *(a1 + 32);
    v31 = *(v30 + 8);
    *(v30 + 8) = 0;

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v32 = [*(*(a1 + 32) + 16) allKeys];
    v33 = [v32 copy];

    v34 = [v33 countByEnumeratingWithState:&v47 objects:v65 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v48;
      do
      {
        for (m = 0; m != v35; m = m + 1)
        {
          if (*v48 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(*(&v47 + 1) + 8 * m)];
          v39 = v38;
          if (v38)
          {
            v40 = *(*(a1 + 32) + 16);
            v41 = objc_retainBlock(v38);
            [v40 removeObjectForKey:v41];

            v42 = *(*(a1 + 32) + 56);
            v45[0] = _NSConcreteStackBlock;
            v45[1] = 3221225472;
            v45[2] = sub_10001141C;
            v45[3] = &unk_10002CED8;
            v46 = v39;
            dispatch_async(v42, v45);
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v47 objects:v65 count:16];
      }

      while (v35);
    }

    v43 = *(a1 + 32);
    v44 = *(v43 + 16);
    *(v43 + 16) = 0;
  }
}

void sub_100011344(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = NSLocalizedDescriptionKey;
  v5 = @"NRRemoteObject invalidated";
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = [NSError errorWithDomain:@"com.apple.nanoregistryd" code:567 userInfo:v2];
  (*(v1 + 16))(v1, v3);
}

void sub_100011AA8(uint64_t a1)
{
  v2 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(message processing started)", buf, 2u);
  }

  (*(a1 + 56))(*(a1 + 32), [*(a1 + 40) selector], *(a1 + 48));
  v3 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(message processing completed)", v4, 2u);
  }
}

void sub_100012374(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  [*(*(a1 + 40) + 24) removeObjectForKey:v2];
  v4 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:v2];
  v5 = v4;
  if (v4)
  {
    v6 = *(*(a1 + 40) + 56);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000124DC;
    block[3] = &unk_10002CED8;
    v8 = v4;
    dispatch_async(v6, block);
    [*(*(a1 + 40) + 16) removeObjectForKey:v2];
  }
}

void sub_100013510(uint64_t a1)
{
  v2 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(message processing started)", buf, 2u);
  }

  (*(a1 + 64))(*(a1 + 32), [*(a1 + 40) selector], *(a1 + 48), *(a1 + 56));
  v3 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(message processing completed)", v4, 2u);
  }
}

id sub_100013934(uint64_t a1)
{
  v2 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Init CoreData after first unlock", v4, 2u);
  }

  return [*(a1 + 32) _initCoreData];
}

void sub_100013B34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to retrieve backups: %@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100013CC0;
  v14[3] = &unk_10002D0E8;
  v15 = v5;
  v9 = *(a1 + 56);
  v10 = *(a1 + 40);
  *&v11 = *(a1 + 48);
  *(&v11 + 1) = v9;
  *&v12 = v8;
  *(&v12 + 1) = v10;
  v16 = v12;
  v17 = v11;
  v13 = v5;
  [v8 _determineBackupToCreateFromBackupList:v13 withCompletion:v14];
}

void sub_100013CC0(uint64_t a1, unint64_t a2)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100013F24;
  v24 = sub_100013F34;
  v25 = 0;
  v4 = nb_daemon_log;
  v5 = os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      if (a2 > 5)
      {
        v6 = @"NONE";
      }

      else
      {
        v6 = *(&off_10002D480 + a2 - 1);
      }

      *buf = 138412290;
      v27 = v6;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Create backup of type: %@", buf, 0xCu);
    }

    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100013F64;
    v14[3] = &unk_10002D0C0;
    v18 = &v20;
    v12 = *(a1 + 32);
    v19 = a2;
    v13 = *(a1 + 40);
    v15 = v12;
    v16 = v13;
    v17 = *(a1 + 64);
    [v9 saveBackup:a2 withDate:v10 payload:v11 withCompletion:v14];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No Backup to create", buf, 2u);
    }

    objc_storeStrong(v21 + 5, *(a1 + 32));
    [*(a1 + 40) _prune:v21[5]];
    v7 = *(a1 + 64);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }

  _Block_object_dispose(&v20, 8);
}

void sub_100013F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100013F24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

const __CFString *sub_100013F3C(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"NONE";
  }

  else
  {
    return *(&off_10002D480 + a1 - 1);
  }
}

void sub_100013F64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = nb_daemon_log;
  v8 = os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT);
  if (v5 || !v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to save backup %@", buf, 0xCu);
    }

    v11 = *(*(a1 + 56) + 8);
    v12 = *(a1 + 32);
    v13 = *(v11 + 40);
    *(v11 + 40) = v12;
  }

  else
  {
    if (v8)
    {
      v9 = *(a1 + 64) - 1;
      if (v9 > 4)
      {
        v10 = @"NONE";
      }

      else
      {
        v10 = *(&off_10002D480 + v9);
      }

      *buf = 138412290;
      v21 = v10;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Backup of type %@ successfully created", buf, 0xCu);
    }

    v15 = [*(a1 + 32) arrayByAddingObject:v6];
    v16 = *(*(a1 + 56) + 8);
    v13 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  [*(a1 + 40) _prune:*(*(*(a1 + 56) + 8) + 40)];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100014158;
  v18[3] = &unk_10002D098;
  v17 = *(a1 + 40);
  v19 = *(a1 + 48);
  [v17 requestExportWithCompletion:v18];
}

void sub_100014158(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 error];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Export finished with: %@", &v9, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = [v3 error];
    (*(v7 + 16))(v7, v8);
  }
}

void sub_100014304(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = *(a1 + 40);
    if (v6)
    {
      (*(v8 + 16))(*(a1 + 40), 0, v6);
    }

    else
    {
      v26 = NSLocalizedDescriptionKey;
      v27 = @"backupID could not be found";
      v9 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v10 = [NSError errorWithDomain:@"com.apple.NanoBackup" code:1 userInfo:v9];
      (*(v8 + 16))(v8, 0, v10);
    }
  }

  v11 = [v5 payload];
  v12 = [*(a1 + 32) tempDirString];
  v13 = [v12 stringByAppendingPathComponent:@"restoreData"];
  v14 = [NSURL fileURLWithPath:v13];

  v15 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v14 path];
    v24 = 138412290;
    v25 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "tempfilepath: %@", &v24, 0xCu);
  }

  v18 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    v20 = [v11 length];
    v24 = 134217984;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Payload size: %lu", &v24, 0xCu);
  }

  v21 = [v14 path];
  [v11 writeToFile:v21 atomically:1];

  v22 = *(a1 + 40);
  v23 = [v14 path];
  (*(v22 + 16))(v22, v23, 0);
}

void sub_100014628(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  v14 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v9;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Daily Backups: %@", buf, 0xCu);
  }

  v15 = *(a1 + 32);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000148D4;
  v32[3] = &unk_10002D160;
  v16 = v13;
  v33 = v16;
  [v15 _pruneDailyBackups:v9 withPruneAction:v32];
  v17 = *(a1 + 32);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000148E0;
  v30[3] = &unk_10002D160;
  v18 = v16;
  v31 = v18;
  [v17 _pruneWeeklyBackups:v12 withPruneAction:v30];

  v19 = *(a1 + 32);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000148EC;
  v28[3] = &unk_10002D160;
  v20 = v18;
  v29 = v20;
  [v19 _pruneMonthlyBackups:v11 withPruneAction:v28];

  v21 = *(a1 + 32);
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1000148F8;
  v26 = &unk_10002D160;
  v27 = v20;
  v22 = v20;
  [v21 _pruneYearlyBackups:v10 withPruneAction:&v23];

  [*(a1 + 32) removeBackups:{v22, v23, v24, v25, v26}];
}

void sub_100014CDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "strongSelf: %@", buf, 0xCu);
  }

  v14[0] = @"NTKSnapshotUnadornedContentKey";
  v14[1] = @"NTKSnapshotUIOnlyKey";
  v15[0] = &__kCFBooleanFalse;
  v15[1] = &__kCFBooleanFalse;
  v14[2] = @"NTKSnapshotUseCanonicalContentKey";
  v14[3] = @"NTKSnapshotIgnoreSnapshotImages";
  v15[2] = &__kCFBooleanTrue;
  v15[3] = &__kCFBooleanTrue;
  v14[4] = @"NTKSnapshotPersistableKey";
  v14[5] = @"NTKSnapshotShouldUseSampleComplicationTemplatesKey";
  v15[4] = &__kCFBooleanFalse;
  v15[5] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:6];
  if (WeakRetained)
  {
    v5 = [WeakRetained connection];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100014FAC;
    v11[3] = &unk_10002D1B0;
    objc_copyWeak(&v13, (a1 + 40));
    v12 = *(a1 + 32);
    v6 = [v5 remoteObjectProxyWithErrorHandler:v11];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100015118;
    v8[3] = &unk_10002D1D8;
    objc_copyWeak(&v10, (a1 + 40));
    v9 = *(a1 + 32);
    [v6 snapshotLibrarySelectedFaceForDeviceUUID:0 options:v4 completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v13);
  }

  else
  {
    v7 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Strong self is nil!!!", buf, 2u);
    }
  }
}

void sub_100014F80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_100014FAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained internalQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100015100;
    v8[3] = &unk_10002CF00;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void sub_100015118(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Got snapshot: %@", buf, 0xCu);
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained internalQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001526C;
    v7[3] = &unk_10002CF00;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_1000153B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000153DC(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___XPCFaceSnapshotServer];
  v2 = qword_100034B00;
  qword_100034B00 = v1;

  v3 = qword_100034B00;
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v4 = [NSArray arrayWithObjects:v6 count:2];
  v5 = [NSSet setWithArray:v4];
  [v3 setClasses:v5 forSelector:"snapshotLibrarySelectedFaceForDeviceUUID:options:completion:" argumentIndex:0 ofReply:1];
}

void sub_1000154DC(id a1)
{
  v1 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Connection interrupted", v2, 2u);
  }
}

void sub_100015544(uint64_t a1)
{
  v2 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015628;
    block[3] = &unk_10002C7D0;
    block[4] = v4;
    dispatch_async(v5, block);
  }
}

void sub_1000156C8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = objc_alloc_init(NSMutableArray);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(a1 + 32) _NBBackupFromNBBackupiCloudModel:{*(*(&v13 + 1) + 8 * v11), v13}];
          if (v12)
          {
            [v6 addObject:v12];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_1000158D4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) removeBackups:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

int64_t sub_100015C48(id a1, NBBackupiCloudModel *a2, NBBackupiCloudModel *a3)
{
  v4 = a3;
  v5 = [(NBBackupiCloudModel *)a2 dateCreated];
  v6 = [(NBBackupiCloudModel *)v4 dateCreated];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_100015D5C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a3;
  v10 = a2;
  v14 = [a5 arrayByAddingObjectsFromArray:a4];
  v11 = [v14 arrayByAddingObjectsFromArray:v9];

  v12 = [v14 arrayByAddingObjectsFromArray:v10];

  if ([*(a1 + 32) _shouldCreateMonthly:v14])
  {
    v13 = *(*(a1 + 40) + 16);
LABEL_5:
    v13();
    goto LABEL_7;
  }

  if ([*(a1 + 32) _shouldCreateWeekly:v11])
  {
    v13 = *(*(a1 + 40) + 16);
    goto LABEL_5;
  }

  [*(a1 + 32) _shouldCreateDaily:v12];
  (*(*(a1 + 40) + 16))();
LABEL_7:
}

int64_t sub_100015E98(id a1, NBBackupiCloudModel *a2, NBBackupiCloudModel *a3)
{
  v4 = a3;
  v5 = [(NBBackupiCloudModel *)a2 dateCreated];
  v6 = [(NBBackupiCloudModel *)v4 dateCreated];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_1000166A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 24) viewContext];
  v5 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting record: %@", buf, 0xCu);
  }

  [v4 deleteObject:v3];
  v12 = 0;
  v6 = [v4 save:&v12];
  v7 = v12;
  if ((v6 & 1) == 0)
  {
    v8 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Deleting record failed: %@", buf, 0xCu);
    }
  }

  if (v7)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001687C;
    v10[3] = &unk_10002D098;
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v9 requestExportWithCompletion:v10];
  }
}

void sub_10001687C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 error];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Export finished with: %@", &v9, 0xCu);
  }

  v7 = *(a1 + 32);
  v8 = [v3 error];
  (*(v7 + 16))(v7, v8);
}

void sub_100016A68(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100016B2C;
  v8[3] = &unk_10002D340;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  [v4 saveBackup:1 withDate:0 payload:0 withCompletion:v8];
}

void sub_100016B2C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 || !v6)
  {
    v11 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to save backup %@", buf, 0xCu);
    }

    (*(a1[6] + 2))();
  }

  else
  {
    v8 = [a1[4] mutableCopy];
    [v8 addObject:v7];
    [a1[5] _prune:v8];
    v9 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = @"Daily";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Backup of type %@ successfully created", buf, 0xCu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100016CFC;
    v12[3] = &unk_10002D098;
    v10 = a1[5];
    v13 = a1[6];
    [v10 requestExportWithCompletion:v12];
  }
}

void sub_100016CFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 error];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Export finished with: %@", &v9, 0xCu);
  }

  v7 = *(a1 + 32);
  v8 = [v3 error];
  (*(v7 + 16))(v7, v8);
}

void sub_100016ED4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100016EF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "saving backup with metadata: %@", buf, 0xCu);
  }

  v9 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "strong self is %@", buf, 0xCu);
  }

  v10 = [(__CFString *)WeakRetained _NBBackupFromNBBackupiCloudModel:v6];
  v11 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "saving backup metadata: %@", buf, 0xCu);
  }

  v12 = nb_daemon_log;
  v13 = os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT);
  if (v5 || !v6)
  {
    if (v13)
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to save backup %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v13)
    {
      *buf = 138412290;
      v17 = @"Manual";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Backup of type %@ successfully created", buf, 0xCu);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001718C;
    v14[3] = &unk_10002D098;
    v15 = *(a1 + 32);
    [(__CFString *)WeakRetained requestExportWithCompletion:v14];
  }
}

void sub_10001718C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 error];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Export finished with: %@", &v9, 0xCu);
  }

  v7 = *(a1 + 32);
  v8 = [v3 error];
  (*(v7 + 16))(v7, v8);
}

void sub_100017324(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [v3 error];
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Import failed, using local data: %@", buf, 0xCu);
    }
  }

  v8 = [*(*(a1 + 32) + 24) viewContext];
  v9 = +[NBBackupiCloudModel fetchRequest];
  v23[0] = @"dateCreated";
  v23[1] = @"backupType";
  v10 = [NSArray arrayWithObjects:v23 count:2];
  [v9 setPropertiesToFetch:v10];

  v18 = 0;
  v11 = [v8 executeFetchRequest:v9 error:&v18];
  v12 = v18;
  if (v11)
  {
    v13 = *(*(a1 + 40) + 16);
  }

  else
  {
    v14 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v12 localizedDescription];
      v17 = [v12 userInfo];
      *buf = 138412546;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Error fetching NBBackupiCloudModel objects: %@\n%@", buf, 0x16u);
    }

    v13 = *(*(a1 + 40) + 16);
  }

  v13();
}

void sub_100017688(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [v3 error];
      *buf = 138412290;
      v27 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Import failed, using local data: %@", buf, 0xCu);
    }
  }

  v8 = [*(*(a1 + 32) + 24) viewContext];
  v9 = [NSFetchRequest fetchRequestWithEntityName:@"NBBackupiCloudModel"];
  v10 = [*(a1 + 40) UUIDString];
  v11 = [NSPredicate predicateWithFormat:@"%K = %@", @"backupID", v10];

  v12 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Predicate is: %@", buf, 0xCu);
  }

  [v9 setPredicate:v11];
  v25 = 0;
  v13 = [v8 executeFetchRequest:v9 error:&v25];
  v14 = v25;
  v15 = [v13 firstObject];

  v16 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Backup is: %@", buf, 0xCu);
  }

  v17 = nb_daemon_log;
  v18 = os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v18)
    {
      *buf = 138412290;
      v27 = v3;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "results from ID lookup: %@", buf, 0xCu);
    }

    v19 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (v18)
    {
      v20 = *(a1 + 40);
      log = v17;
      v23 = [v20 UUIDString];
      v21 = [v14 localizedDescription];
      v22 = [v14 userInfo];
      *buf = 138412802;
      v27 = v23;
      v28 = 2112;
      v29 = v21;
      v30 = 2112;
      v31 = v22;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Error fetching backup for ID:%@ %@\n%@", buf, 0x20u);
    }

    v19 = *(*(a1 + 48) + 16);
  }

  v19();
}

void sub_100017A9C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) newBackgroundContext];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100017B48;
  v5[3] = &unk_10002CF00;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  [v4 performBlock:v5];
}

void sub_100017B48(uint64_t a1)
{
  v2 = [[NSCloudKitMirroringExportRequest alloc] initWithOptions:0 completionBlock:*(a1 + 40)];
  v3 = *(a1 + 32);
  v6 = 0;
  v4 = [v3 executeRequest:v2 error:&v6];
  v5 = v6;

  if (!v4)
  {
    NSLog(@"export request failed to execute: %@", v5);
  }
}

void sub_100017BE8(id a1, NSCloudKitMirroringResult *a2)
{
  v2 = a2;
  v3 = [(NSCloudKitMirroringResult *)v2 success];
  v4 = [(NSCloudKitMirroringResult *)v2 madeChanges];

  NSLog(@"Got import result back: %d madeChanges: %d", v3, v4);
}

void sub_100017CDC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) newBackgroundContext];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100017D88;
  v5[3] = &unk_10002CF00;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  [v4 performBlockAndWait:v5];
}

void sub_100017D88(uint64_t a1)
{
  v2 = [[NSCloudKitMirroringImportRequest alloc] initWithOptions:0 completionBlock:*(a1 + 40)];
  v3 = *(a1 + 32);
  v6 = 0;
  v4 = [v3 executeRequest:v2 error:&v6];
  v5 = v6;

  if (!v4)
  {
    NSLog(@"Import request failed to execute: %@", v5);
  }
}

void sub_100017F10(id a1, NSPersistentStoreDescription *a2, NSError *a3)
{
  v6 = a2;
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    if ([NBiCloudBackupManager isDataProtectionError:v4])
    {
      sub_10001D7C8();
    }

    NSLog(@"Failed to load Core Data stack: %@", v5);
    abort();
  }

  NSLog(@"Store loaded");
}

void sub_1000184C8(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 48);
  if (v3 >= 1)
  {
    do
    {
      if (v3 > 3)
      {
        if (v3 == 5)
        {
          NSLog(@"Check: first month: I is: %d", 5);
          v4 = *(a1 + 32);
          v5 = 0;
          v6 = 1;
          v7 = 0;
          v8 = -2;
          goto LABEL_10;
        }

        if (v3 == 4)
        {
          NSLog(@"Check: week: I is: %d", 4);
          v4 = *(a1 + 32);
          v5 = 0;
          v6 = 0;
          v7 = 7;
LABEL_8:
          v8 = -1;
          goto LABEL_10;
        }

        if (v3 > 0x10)
        {
          if (v3 == 17)
          {
            NSLog(@"Check: year 1: I is: %d", 17);
            v4 = *(a1 + 32);
            v5 = 1;
            v6 = 0;
            v7 = 0;
            goto LABEL_8;
          }

          NSLog(@"Check: other years: I is: %d", v3);
          v4 = *(a1 + 32);
          v5 = v3 - 16;
          v6 = 0;
        }

        else
        {
          NSLog(@"Check: month: I is: %d", v3);
          v4 = *(a1 + 32);
          v6 = v3 - 4;
          v5 = 0;
        }

        v7 = 0;
      }

      else
      {
        NSLog(@"Check: Day: I is: %d", v3);
        v4 = *(a1 + 32);
        v5 = 0;
        v6 = 0;
        v7 = v3;
      }

      v8 = 0;
LABEL_10:
      v9 = [v4 dateFromPast:v5 months:v6 days:v7 hours:v8 seconds:0];
      v10 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Check: %@", buf, 0xCu);
      }

      v11 = dispatch_semaphore_create(0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000187D0;
      block[3] = &unk_10002CE18;
      v18 = v2;
      v19 = v9;
      v12 = v11;
      v20 = v12;
      v13 = v9;
      dispatch_async(&_dispatch_main_q, block);
      v14 = dispatch_time(0, 60000000000);
      if (dispatch_semaphore_wait(v12, v14))
      {
        NSLog(@"Timeout waiting for backup to complete");
      }
    }

    while (v3-- > 1);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))();
  }
}

void sub_1000187D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100018864;
  v3[3] = &unk_10002C898;
  v4 = *(a1 + 48);
  [v1 createBackupsAndPruneAtDate:v2 withPayload:0 completion:v3];
}

uint64_t sub_100018AF0(uint64_t a1, void *a2)
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

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  NSLog(@"Starting server");
  v1 = objc_opt_new();
  v2 = qword_100034B08;
  qword_100034B08 = v1;

  v3 = +[NSRunLoop currentRunLoop];
  [v3 run];

  objc_autoreleasePoolPop(v0);
  return 1;
}

uint64_t sub_100019B84(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v92) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v92 & 0x7F) << v6;
      if ((v92 & 0x80) == 0)
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
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadData();
        v15 = 144;
        goto LABEL_117;
      case 2u:
        v14 = PBReaderReadString();
        v15 = 96;
        goto LABEL_117;
      case 3u:
        v14 = PBReaderReadString();
        v15 = 112;
        goto LABEL_117;
      case 4u:
        v14 = PBReaderReadString();
        v15 = 104;
        goto LABEL_117;
      case 5u:
        v14 = PBReaderReadString();
        v15 = 128;
        goto LABEL_117;
      case 6u:
        v14 = PBReaderReadString();
        v15 = 120;
        goto LABEL_117;
      case 7u:
        v14 = PBReaderReadString();
        v15 = 88;
        goto LABEL_117;
      case 8u:
        v14 = PBReaderReadString();
        v15 = 64;
        goto LABEL_117;
      case 9u:
        v14 = PBReaderReadString();
        v15 = 72;
        goto LABEL_117;
      case 0xAu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 180) |= 0x20u;
        while (1)
        {
          LOBYTE(v92) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v92 & 0x7F) << v35;
          if ((v92 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_153;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v37;
        }

LABEL_153:
        v89 = 44;
        goto LABEL_179;
      case 0xBu:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 180) |= 0x200u;
        while (1)
        {
          LOBYTE(v92) = 0;
          v72 = [a2 position] + 1;
          if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
          {
            v74 = [a2 data];
            [v74 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v71 |= (v92 & 0x7F) << v69;
          if ((v92 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v12 = v70++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_171;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v71;
        }

LABEL_171:
        v89 = 136;
        goto LABEL_179;
      case 0xCu:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 180) |= 0x80u;
        while (1)
        {
          LOBYTE(v92) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v92 & 0x7F) << v23;
          if ((v92 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_145;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_145:
        v89 = 80;
        goto LABEL_179;
      case 0xDu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 180) |= 0x10u;
        while (1)
        {
          LOBYTE(v92) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v92 & 0x7F) << v29;
          if ((v92 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_149;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v31;
        }

LABEL_149:
        v89 = 40;
        goto LABEL_179;
      case 0xEu:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 180) |= 0x40u;
        while (1)
        {
          LOBYTE(v92) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v92 & 0x7F) << v56;
          if ((v92 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_165;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v58;
        }

LABEL_165:
        v89 = 48;
        goto LABEL_179;
      case 0xFu:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 180) |= 0x100u;
        while (1)
        {
          LOBYTE(v92) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v92 & 0x7F) << v16;
          if ((v92 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_141;
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

LABEL_141:
        v89 = 84;
        goto LABEL_179;
      case 0x10u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 180) |= 4u;
        while (1)
        {
          LOBYTE(v92) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v92 & 0x7F) << v41;
          if ((v92 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v12 = v42++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_157;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v43;
        }

LABEL_157:
        v89 = 32;
        goto LABEL_179;
      case 0x11u:
        v14 = PBReaderReadString();
        v15 = 152;
        goto LABEL_117;
      case 0x12u:
        v14 = PBReaderReadString();
        v15 = 160;
        goto LABEL_117;
      case 0x13u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 180) |= 0x800u;
        while (1)
        {
          LOBYTE(v92) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v92 & 0x7F) << v62;
          if ((v92 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v12 = v63++ >= 9;
          if (v12)
          {
            LOBYTE(v68) = 0;
            goto LABEL_167;
          }
        }

        v68 = (v64 != 0) & ~[a2 hasError];
LABEL_167:
        v90 = 177;
        goto LABEL_174;
      case 0x14u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 180) |= 0x400u;
        while (1)
        {
          LOBYTE(v92) = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v92 & 0x7F) << v76;
          if ((v92 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v12 = v77++ >= 9;
          if (v12)
          {
            LOBYTE(v68) = 0;
            goto LABEL_173;
          }
        }

        v68 = (v78 != 0) & ~[a2 hasError];
LABEL_173:
        v90 = 176;
LABEL_174:
        *(a1 + v90) = v68;
        continue;
      case 0x15u:
        *(a1 + 180) |= 1u;
        v92 = 0;
        v47 = [a2 position] + 8;
        if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 8, v48 <= objc_msgSend(a2, "length")))
        {
          v91 = [a2 data];
          [v91 getBytes:&v92 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v92;
        continue;
      case 0x16u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 180) |= 2u;
        while (1)
        {
          LOBYTE(v92) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v92 & 0x7F) << v49;
          if ((v92 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            v55 = 0;
            goto LABEL_161;
          }
        }

        if ([a2 hasError])
        {
          v55 = 0;
        }

        else
        {
          v55 = v51;
        }

LABEL_161:
        *(a1 + 16) = v55;
        continue;
      case 0x17u:
        v14 = PBReaderReadData();
        v15 = 24;
        goto LABEL_117;
      case 0x18u:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 180) |= 8u;
        break;
      case 0x19u:
        v14 = PBReaderReadString();
        v15 = 56;
        goto LABEL_117;
      case 0x1Au:
        v14 = PBReaderReadData();
        v15 = 168;
LABEL_117:
        v75 = *(a1 + v15);
        *(a1 + v15) = v14;

        continue;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      LOBYTE(v92) = 0;
      v85 = [a2 position] + 1;
      if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
      {
        v87 = [a2 data];
        [v87 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v84 |= (v92 & 0x7F) << v82;
      if ((v92 & 0x80) == 0)
      {
        break;
      }

      v82 += 7;
      v12 = v83++ >= 9;
      if (v12)
      {
        v22 = 0;
        goto LABEL_178;
      }
    }

    if ([a2 hasError])
    {
      v22 = 0;
    }

    else
    {
      v22 = v84;
    }

LABEL_178:
    v89 = 36;
LABEL_179:
    *(a1 + v89) = v22;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001C66C(uint64_t a1, void *a2)
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

uint64_t sub_10001CF1C(void *a1, void *a2)
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
        v13 = objc_alloc_init(NBPBBackupMetadata);
        [a1 addBackups:v13];
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !sub_100019B84(v13, a2))
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

    v14 = PBReaderReadData();
    v13 = a1[2];
    a1[2] = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

void sub_10001D7C8()
{
  v0 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Failed to load container due to file protection error.  initCoreData shouldn't be called before first unlock", v1, 2u);
  }

  abort();
}