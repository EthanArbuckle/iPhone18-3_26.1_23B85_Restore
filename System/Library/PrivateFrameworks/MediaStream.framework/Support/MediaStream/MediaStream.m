void sub_1000018E8(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Checking for idle on main loop", v1, 2u);
  }
}

void sub_100002744(uint64_t a1)
{
  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    v2 = *(a1 + 32);

    dispatch_semaphore_signal(v2);
  }

  else
  {
    NSLog(@"Device is locked - waiting\n");
  }
}

uint64_t sub_10000279C(uint64_t result, int a2)
{
  if (*(*(*(result + 40) + 8) + 24) == a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t sub_1000027C4(uint64_t a1)
{
  result = notify_cancel(*(*(*(a1 + 32) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

BOOL sub_100002828(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if ([(NSString *)v4 hasPrefix:@"-"])
  {
    v5 = [(NSString *)v4 hasSuffix:@"com.apple.CoreData.ConcurrencyDebug"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t start()
{
  _set_user_dir_suffix();
  v0 = objc_autoreleasePoolPush();
  if (MKBDeviceUnlockedSinceBoot() != 1)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v1 = dispatch_semaphore_create(0);
    v2 = dispatch_queue_create("com.apple.mstreamd.wait-unlock", 0);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100002744;
    v37[3] = &unk_100018B78;
    v3 = v1;
    v38 = v3;
    v4 = objc_retainBlock(v37);
    v5 = kMobileKeyBagLockStatusNotifyToken;
    v6 = v31;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000279C;
    handler[3] = &unk_100018840;
    v36 = &v30;
    v7 = v4;
    v35 = v7;
    v8 = notify_register_dispatch(v5, v6 + 6, v2, handler);
    if (v8)
    {
      NSLog(@"can't register notifications, status %d", v8);
      exit(0);
    }

    dispatch_async(v2, v7);
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000027C4;
    block[3] = &unk_100018868;
    block[4] = &v30;
    dispatch_sync(v2, block);

    _Block_object_dispose(&v30, 8);
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100018908);
  MSAlbumSharingInitialize();
  MSPathCreateDirectories();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(handler[0]) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "mstreamd starting up.", handler, 2u);
  }

  CFPreferencesAppSynchronize(@"com.apple.mediastream.mstreamd");
  v9 = CFPreferencesCopyAppValue(@"forceProtocolVersion", @"com.apple.mediastream.mstreamd");
  if (v9)
  {
    _MSSPCForcedProtocolVersionString = v9;
  }

  XPCSetLogBlocks();
  v10 = objc_alloc_init(MSIOSAlbumSharingDaemon);
  _MSASSetDaemon();
  v11 = objc_alloc_init(MediaStreamMonitor);
  [(MediaStreamMonitor *)v11 setAlbumSharingDaemon:v10];
  [(MSIOSAlbumSharingDaemon *)v10 setDelegate:v11];
  [(MSIOSAlbumSharingDaemon *)v10 start];
  if (qword_10001DD30 != -1)
  {
    dispatch_once(&qword_10001DD30, &stru_100018888);
  }

  if (byte_10001DD29 == 1)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = +[NSProcessInfo processInfo];
    v14 = [v13 arguments];

    v15 = [v14 indexOfObjectPassingTest:&stru_1000188C8];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL || [v14 count] <= v15 + 1)
    {
      v19 = +[NSUserDefaults standardUserDefaults];
      [v19 removeObjectForKey:@"com.apple.CoreData.ConcurrencyDebug"];
    }

    else
    {
      v16 = [v14 objectAtIndexedSubscript:?];
      v17 = [v16 intValue] == 0;

      v18 = +[NSUserDefaults standardUserDefaults];
      [v18 removeObjectForKey:@"com.apple.CoreData.ConcurrencyDebug"];

      if (v17)
      {
        goto LABEL_17;
      }
    }

    v20 = +[NSUserDefaults standardUserDefaults];
    v37[0] = @"com.apple.CoreData.ConcurrencyDebug";
    handler[0] = &__kCFBooleanTrue;
    v21 = [NSDictionary dictionaryWithObjects:handler forKeys:v37 count:1];
    [v20 registerDefaults:v21];

LABEL_17:
    objc_autoreleasePoolPop(v12);
  }

  if ((byte_10001DD28 & 1) == 0)
  {
    while (1)
    {
      v22 = +[NSRunLoop currentRunLoop];
      v23 = +[NSDate distantFuture];
      v24 = [v22 runMode:NSDefaultRunLoopMode beforeDate:v23];

      if ((v24 & 1) == 0)
      {
        break;
      }

      if (byte_10001DD28 == 1)
      {
        goto LABEL_23;
      }
    }

    byte_10001DD28 = 1;
  }

LABEL_23:
  [(MSIOSAlbumSharingDaemon *)v10 shutDownCompletionBlock:&stru_1000189A8];
  v25 = [NSTimer timerWithTimeInterval:v11 target:"doNothingTimer:" selector:0 userInfo:1 repeats:10.0];
  v26 = +[NSRunLoop currentRunLoop];
  [v26 addTimer:v25 forMode:NSRunLoopCommonModes];

  v27 = +[NSRunLoop currentRunLoop];
  [v27 run];

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_100002E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002E48(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "mstreamd shutting down.", v1, 2u);
  }

  exit(0);
}

id sub_100003378(uint64_t a1)
{
  [*(a1 + 32) reenqueueQuarantinedActivitiesWithReason:@"Power budget got significant change"];
  v2 = *(a1 + 32);

  return [v2 retryOutstandingActivities];
}

uint64_t sub_10000368C(void *a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003748;
  block[3] = &unk_100018B78;
  v7 = a1;
  v1 = qword_10001DD40;
  v2 = v7;
  if (v1 != -1)
  {
    dispatch_once(&qword_10001DD40, block);
  }

  v3 = qword_10001DD38;
  v4 = qword_10001DD38;

  return v3;
}

void sub_100003748(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = MSPathSubscribeDirForPersonID();
  v2 = [v4 stringByAppendingPathComponent:@"powerBudget.plist"];
  v3 = qword_10001DD38;
  qword_10001DD38 = v2;
}

id sub_100005070(uint64_t a1)
{
  [*(a1 + 32) reenqueueQuarantinedActivitiesWithReason:@"Authentication changed"];
  v2 = *(a1 + 32);

  return [v2 retryOutstandingActivities];
}

void sub_100005578(uint64_t a1)
{
  v2 = +[MSBatteryPowerMonitor defaultMonitor];
  v3 = [v2 isExternalPowerConnected];

  if (v3)
  {
    v24 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v4 = [*(a1 + 32) personIDToPowerBudgetMap];
    v5 = [v4 allValues];

    v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v22 + 1) + 8 * i) didBeginExternalPower];
        }

        v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000057AC;
    block[3] = &unk_100018B78;
    v21 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
    v10 = v21;
  }

  else
  {
    v18 = 0uLL;
    v19 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v11 = [*(a1 + 32) personIDToPowerBudgetMap];
    v10 = [v11 allValues];

    v12 = [v10 countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v16 + 1) + 8 * j) didEndExternalPower];
        }

        v13 = [v10 countByEnumeratingWithState:&v16 objects:v26 count:16];
      }

      while (v13);
    }
  }
}

void sub_100005FD8(uint64_t a1)
{
  v2 = [*(a1 + 32) powerBudgetPersistedParameters];
  if (!v2 || (v3 = v2, [*(a1 + 32) powerBudgetPersistedParameters], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToDictionary:", *(a1 + 40)), v4, v3, (v5 & 1) == 0))
  {
    [*(a1 + 32) setPowerBudgetPersistedParameters:*(a1 + 40)];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) personID];
    [v6 setPersistentObject:v7 forKey:@"MSIOSAlbumSharingDaemon.powerBudgetParams" personID:v8];
  }
}

void sub_100006D7C(id *a1)
{
  v2 = [a1[4] objectForKey:@"albumData"];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = objc_opt_class();
      v4 = objc_opt_class();
      v5 = objc_opt_class();
      v6 = objc_opt_class();
      v7 = [NSSet setWithObjects:v3, v4, v5, v6, objc_opt_class(), 0];
      v16 = 0;
      v8 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v7 fromData:v2 error:&v16];
      v9 = v16;

      if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v9;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to decode album information in incoming message: %@", buf, 0xCu);
        }

        goto LABEL_22;
      }

      v10 = [a1[4] objectForKey:@"type"];
      if (!v10)
      {
        goto LABEL_8;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v10;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to decode album type in incoming message: %@", buf, 0xCu);
        }

        goto LABEL_21;
      }

      if (![v10 isEqualToString:@"new"])
      {
        v11 = [v10 isEqualToString:@"delete"];
        v12 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
        if (v11)
        {
          if (v12)
          {
            *buf = 138412290;
            v18 = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Removing album: %@", buf, 0xCu);
          }

          v13 = a1[6];
          v14 = [v8 GUID];
          [v13 deleteAlbumWithGUID:v14 inviterAddress:a1[5]];
        }

        else if (v12)
        {
          *buf = 138543618;
          v18 = v10;
          v19 = 2112;
          v20 = v8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Unknown operation %{public}@ for %@", buf, 0x16u);
        }
      }

      else
      {
LABEL_8:
        [v8 setRelationshipState:1];
        if ([a1[5] length])
        {
          [v8 setMetadataValue:a1[5] forKey:kMSASAlbumMetadataInviterAddressKey];
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v15 = a1[5];
          *buf = 138412290;
          v18 = v15;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to get inviter address from %@", buf, 0xCu);
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v18 = v8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Adding new pending album: %@", buf, 0xCu);
        }

        [a1[6] addAlbum:v8];
      }

LABEL_21:

LABEL_22:
      goto LABEL_23;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v18 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to decode album data in incoming message: %@", buf, 0xCu);
  }

LABEL_23:
}

void sub_1000073CC(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = 138543618;
    v5 = v2;
    v6 = 2114;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%{public}@: Client disconnected: %{public}@", &v4, 0x16u);
  }
}

void sub_10000759C(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    *buf = 138543874;
    v151 = v2;
    v152 = 2114;
    v153 = v3;
    v154 = 2114;
    v155 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%{public}@: Serving message %{public}@ from client %{public}@", buf, 0x20u);
  }

  v5 = MSASPlatform();
  v6 = [v5 albumSharingDaemon];

  if ([*(a1 + 40) isEqualToString:kMSASNextActivityDateFn])
  {
    v7 = [v6 nextActivityDate];
    v8 = *(a1 + 56);
    v9 = [NSDictionary dictionaryWithObjectsAndKeys:v7, kMSASRetvalKey, 0];
    v10 = v8;
LABEL_5:
    [v10 sendReply:v9];
LABEL_6:

LABEL_7:
    goto LABEL_27;
  }

  if ([*(a1 + 40) isEqualToString:kMSASIsInRetryStateFn])
  {
    v11 = [v6 isInRetryState];
    v12 = *(a1 + 56);
    v13 = [NSNumber numberWithBool:v11];
LABEL_10:
    v14 = v13;
    v15 = [NSDictionary dictionaryWithObjectsAndKeys:v13, kMSASRetvalKey, 0];
    [v12 sendReply:v15];

    goto LABEL_27;
  }

  if ([*(a1 + 40) isEqualToString:kMSASRetryOutstandingActivitiesFn])
  {
    [v6 retryOutstandingActivities];
LABEL_26:
    [*(a1 + 56) sendReply:0];
    goto LABEL_27;
  }

  if ([*(a1 + 40) isEqualToString:kMSASRetryOutstandingActivitiesForPersonIDFn])
  {
    v7 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v6 retryOutstandingActivitiesForPersonID:v7];
    }

    else
    {
      v17 = [NSString stringWithFormat:@"%@: Failed to properly decode personID from incoming message in %@", *(a1 + 32), *(a1 + 40)];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v151 = v17;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v148 = NSLocalizedDescriptionKey;
      v149 = v17;
      v18 = [NSDictionary dictionaryWithObjects:&v149 forKeys:&v148 count:1];
      v19 = [NSError errorWithDomain:@"AlbumSharingDaemon" code:0 userInfo:v18];

      v146 = kMSASErrorKey;
      v147 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v147 forKeys:&v146 count:1];
      [*(a1 + 56) sendReply:v20];
    }

    [*(a1 + 56) sendReply:0];
    goto LABEL_7;
  }

  if ([*(a1 + 40) isEqualToString:kMSASCancelActivitiesFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    [v6 cancelActivitiesForPersonID:v16];
LABEL_25:

    goto LABEL_26;
  }

  if ([*(a1 + 40) isEqualToString:kMSASPushFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    [v6 pollForSubscriptionUpdatesTriggeredByPushNotificationForPersonID:v16];
    goto LABEL_25;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelAlbumGUIDsFn])
  {
    v21 = [*(a1 + 32) workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009964;
    block[3] = &unk_100018A48;
    v143 = v6;
    v144 = *(a1 + 64);
    v145 = *(a1 + 56);
    dispatch_async(v21, block);

    v22 = v143;
LABEL_48:

    goto LABEL_27;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelAlbumWithGUIDFn])
  {
    v23 = [*(a1 + 32) workQueue];
    v138[0] = _NSConcreteStackBlock;
    v138[1] = 3221225472;
    v138[2] = sub_100009AF0;
    v138[3] = &unk_100018A48;
    v139 = v6;
    v140 = *(a1 + 64);
    v141 = *(a1 + 56);
    dispatch_async(v23, v138);

    v22 = v139;
    goto LABEL_48;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelAccessControlGUIDsFn])
  {
    v24 = [*(a1 + 32) workQueue];
    v134[0] = _NSConcreteStackBlock;
    v134[1] = 3221225472;
    v134[2] = sub_100009BDC;
    v134[3] = &unk_100018A48;
    v135 = v6;
    v136 = *(a1 + 64);
    v137 = *(a1 + 56);
    dispatch_async(v24, v134);

    v22 = v135;
    goto LABEL_48;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelAccessControlWithGUIDFn])
  {
    v25 = [*(a1 + 32) workQueue];
    v130[0] = _NSConcreteStackBlock;
    v130[1] = 3221225472;
    v130[2] = sub_100009D90;
    v130[3] = &unk_100018A48;
    v131 = v6;
    v132 = *(a1 + 64);
    v133 = *(a1 + 56);
    dispatch_async(v25, v130);

    v22 = v131;
    goto LABEL_48;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelInvitationGUIDsFn])
  {
    v26 = [*(a1 + 32) workQueue];
    v126[0] = _NSConcreteStackBlock;
    v126[1] = 3221225472;
    v126[2] = sub_100009E7C;
    v126[3] = &unk_100018A48;
    v127 = v6;
    v128 = *(a1 + 64);
    v129 = *(a1 + 56);
    dispatch_async(v26, v126);

    v22 = v127;
    goto LABEL_48;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelInvitationWithGUIDFn])
  {
    v27 = [*(a1 + 32) workQueue];
    v122[0] = _NSConcreteStackBlock;
    v122[1] = 3221225472;
    v122[2] = sub_10000A008;
    v122[3] = &unk_100018A48;
    v123 = v6;
    v124 = *(a1 + 64);
    v125 = *(a1 + 56);
    dispatch_async(v27, v122);

    v22 = v123;
    goto LABEL_48;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelAssetCollectionGUIDsFn])
  {
    v28 = [*(a1 + 32) workQueue];
    v118[0] = _NSConcreteStackBlock;
    v118[1] = 3221225472;
    v118[2] = sub_10000A0F4;
    v118[3] = &unk_100018A48;
    v119 = v6;
    v120 = *(a1 + 64);
    v121 = *(a1 + 56);
    dispatch_async(v28, v118);

    v22 = v119;
    goto LABEL_48;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelAssetCollectionWithGUIDFn])
  {
    v29 = [*(a1 + 32) workQueue];
    v114[0] = _NSConcreteStackBlock;
    v114[1] = 3221225472;
    v114[2] = sub_10000A2A8;
    v114[3] = &unk_100018A48;
    v115 = v6;
    v116 = *(a1 + 64);
    v117 = *(a1 + 56);
    dispatch_async(v29, v114);

    v22 = v115;
    goto LABEL_48;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelVideoURLForAssetCollectionWithGUIDFn])
  {
    v30 = [*(a1 + 32) workQueue];
    v110[0] = _NSConcreteStackBlock;
    v110[1] = 3221225472;
    v110[2] = sub_10000A394;
    v110[3] = &unk_100018A48;
    v111 = v6;
    v112 = *(a1 + 64);
    v113 = *(a1 + 56);
    dispatch_async(v30, v110);

    v22 = v111;
    goto LABEL_48;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelVideoURLsForAssetCollectionWithGUIDFn])
  {
    v31 = [*(a1 + 32) workQueue];
    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_10000A484;
    v106[3] = &unk_100018A48;
    v107 = v6;
    v108 = *(a1 + 64);
    v109 = *(a1 + 56);
    dispatch_async(v31, v106);

    v22 = v107;
    goto LABEL_48;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelIsAssetCollectionMarkedAsViewedFn])
  {
    v32 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v7 = [v6 modelForPersonID:v32];

    v33 = [*(a1 + 64) objectForKey:kMSASAssetCollectionGUIDKey];
    v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isAssetCollectionWithGUIDMarkedAsUnviewed:v33]);

    v34 = *(a1 + 56);
    v35 = [NSDictionary dictionaryWithObject:v9 forKey:kMSASRetvalKey];
    [v34 sendReply:v35];

    goto LABEL_6;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelCommentGUIDsFn])
  {
    v36 = [*(a1 + 32) workQueue];
    v102[0] = _NSConcreteStackBlock;
    v102[1] = 3221225472;
    v102[2] = sub_10000A5A8;
    v102[3] = &unk_100018A48;
    v103 = v6;
    v104 = *(a1 + 64);
    v105 = *(a1 + 56);
    dispatch_async(v36, v102);

    v22 = v103;
    goto LABEL_48;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelCommentWithGUIDFn])
  {
    v37 = [*(a1 + 32) workQueue];
    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = sub_10000A778;
    v98[3] = &unk_100018A48;
    v99 = v6;
    v100 = *(a1 + 64);
    v101 = *(a1 + 56);
    dispatch_async(v37, v98);

    v22 = v99;
    goto LABEL_48;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelServerSideConfigFn])
  {
    v38 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v7 = [v6 serverSideConfigurationForPersonID:v38];

    v39 = [NSMutableDictionary dictionaryWithCapacity:1];
    v9 = v39;
    if (v7)
    {
      [v39 setObject:v7 forKey:kMSASRetvalKey];
    }

    v10 = *(a1 + 56);
    goto LABEL_5;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelFetchClientOrgKeyFn])
  {
    v40 = [*(a1 + 64) objectForKey:kMSASRecordID];
    v41 = [*(a1 + 64) objectForKey:kMSASZoneName];
    v42 = [*(a1 + 64) objectForKey:kMSASOwnerUserID];
    v43 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v44 = [v6 clientOrgKeyForRecordID:v40 zoneName:v41 ownerUserID:v42 personID:v43];

    v45 = *(a1 + 56);
    v46 = [NSDictionary dictionaryWithObjectsAndKeys:v44, kMSASRetvalKey, 0];
    [v45 sendReply:v46];

    goto LABEL_27;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelRefreshFn])
  {
    v47 = dispatch_time(0, 1000000000);
    v95[0] = _NSConcreteStackBlock;
    v95[1] = 3221225472;
    v95[2] = sub_10000A864;
    v95[3] = &unk_100018B00;
    v96 = v6;
    v97 = *(a1 + 64);
    dispatch_after(v47, &_dispatch_main_q, v95);
    [*(a1 + 56) sendReply:0];

    v22 = v96;
    goto LABEL_48;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelRefreshContentOfAlbumWithGUIDFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASAlbumGUIDKey];
    v48 = [*(a1 + 64) objectForKey:kMSASResetSyncKey];
    v49 = [v48 BOOLValue];
    v50 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v51 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    [v6 refreshContentOfAlbumWithGUID:v16 resetSync:v49 personID:v50 info:v51];
LABEL_65:

LABEL_66:
LABEL_70:

    goto LABEL_25;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelRefreshAccessControlListOfAlbumWithGUIDFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASAlbumGUIDKey];
    v48 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v52 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    [v6 refreshAccessControlListOfAlbumWithGUID:v16 personID:v48 info:v52];
LABEL_69:

    goto LABEL_70;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelRefreshCommentsForAssetCollectionWithGUIDFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASAssetCollectionGUIDKey];
    v48 = [*(a1 + 64) objectForKey:kMSASResetSyncKey];
    v53 = [v48 BOOLValue];
    v50 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v51 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    [v6 refreshCommentsForAssetCollectionWithGUID:v16 resetSync:v53 personID:v50 info:v51];
    goto LABEL_65;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelAddAlbumFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASAlbumKey];
    v48 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v52 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    [v6 addAlbum:v16 personID:v48 info:v52];
    goto LABEL_69;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelModifyAlbumMetadataFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASAlbumKey];
    v48 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v52 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    [v6 modifyAlbumMetadata:v16 personID:v48 info:v52];
    goto LABEL_69;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelSetClientOrgKeyForAlbumWithGUIDFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASClientOrgKey];
    v48 = [*(a1 + 64) objectForKey:kMSASAlbumGUIDKey];
    v52 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v54 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    [v6 setClientOrgKey:v16 forAlbumWithGUID:v48 personID:v52 info:v54];
LABEL_79:

    goto LABEL_69;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelSetMigrationMarkerFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASPVMigrationMarkerKey];
    v48 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    [v6 setMigrationMarker:v16 personID:v48];
    goto LABEL_70;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelDeleteAlbumWithGUIDFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASAlbumGUIDKey];
    v48 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v52 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    [v6 deleteAlbumWithGUID:v16 personID:v48 info:v52];
    goto LABEL_69;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelMarkAlbumGUIDAsViewedFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASAlbumGUIDKey];
    v48 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v52 = [*(a1 + 64) objectForKey:kMSASMoveLastViewedAssetCollectionKey];
    v55 = [v52 BOOLValue];
    v56 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    [v6 markAlbumGUIDAsViewed:v16 personID:v48 moveLastViewedAssetCollectionMarker:v55 info:v56];

    goto LABEL_69;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelSubscribeToAlbumWithGUIDFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASAlbumGUIDKey];
    v48 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v52 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    [v6 subscribeToAlbumWithGUID:v16 personID:v48 info:v52];
    goto LABEL_69;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelUnsubscribeFromAlbumWithGUIDFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASAlbumGUIDKey];
    v48 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v52 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    [v6 unsubscribeFromAlbumWithGUID:v16 personID:v48 info:v52];
    goto LABEL_69;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelMarkAsSpamInvitationWithGUIDFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASInvitationGUIDKey];
    v48 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    [v6 markAsSpamInvitationWithGUID:v16 personID:v48];
    goto LABEL_70;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelMarkAsSpamAlbumWithGUIDFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASAlbumGUIDKey];
    v48 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    [v6 markAsSpamAlbumWithGUID:v16 personID:v48];
    goto LABEL_70;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelMarkAsSpamInvitationWithTokenFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASInvitationTokenKey];
    v48 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    [v6 markAsSpamInvitationWithToken:v16 personID:v48];
    goto LABEL_70;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelAcceptInvitationWithTokenFn])
  {
    v57 = [*(a1 + 64) objectForKey:kMSASInvitationTokenKey];
    v58 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v59 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    v93[0] = _NSConcreteStackBlock;
    v93[1] = 3221225472;
    v93[2] = sub_10000A920;
    v93[3] = &unk_100018B28;
    v94 = *(a1 + 56);
    [v6 acceptInvitationWithToken:v57 personID:v58 info:v59 completionBlock:v93];

    v22 = v94;
    goto LABEL_48;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelAcceptInvitationWithGUIDFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASInvitationGUIDKey];
    v48 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v52 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    [v6 acceptInvitationWithGUID:v16 personID:v48 info:v52];
    goto LABEL_69;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelRejectInvitationWithGUIDFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASInvitationGUIDKey];
    v48 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v52 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    [v6 rejectInvitationWithGUID:v16 personID:v48 info:v52];
    goto LABEL_69;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelAddAccessControlsFn])
  {
    v60 = [*(a1 + 64) objectForKey:kMSASSharingRelationshipsKey];
    v61 = [*(a1 + 64) objectForKey:kMSASAlbumGUIDKey];
    v62 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v63 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_10000A9DC;
    v91[3] = &unk_100018B50;
    v92 = *(a1 + 56);
    [v6 addAccessControlEntries:v60 toAlbumWithGUID:v61 personID:v62 info:v63 completionBlock:v91];

    v22 = v92;
    goto LABEL_48;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelRemoveAccessControlEntryWithGUIDFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASSharingRelationshipGUIDKey];
    v48 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v52 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    [v6 removeAccessControlEntryWithGUID:v16 personID:v48 info:v52];
    goto LABEL_69;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelAddAssetCollectionsFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASAssetCollectionsKey];
    v48 = [*(a1 + 64) objectForKey:kMSASAlbumGUIDKey];
    v52 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v54 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    [v6 addAssetCollections:v16 toAlbumWithGUID:v48 personID:v52 info:v54];
    goto LABEL_79;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelDeleteAssetCollectionWithGUIDFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASAssetCollectionGUIDKey];
    v48 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v52 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    [v6 deleteAssetCollectionWithGUID:v16 personID:v48 info:v52];
    goto LABEL_69;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelDeleteAssetCollectionsWithGUIDsFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASAssetCollectionGUIDsKey];
    v48 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    [v6 deleteAssetCollectionsWithGUIDs:v16 personID:v48];
    goto LABEL_70;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelMarkCommentsForAssetCollectionWithGUIDAsViewedFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASAssetCollectionGUIDKey];
    v48 = [*(a1 + 64) objectForKey:kMSASLastViewedDateKey];
    v52 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v54 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    [v6 markCommentsForAssetCollectionWithGUID:v16 asViewedWithLastViewedDate:v48 personID:v52 info:v54];
    goto LABEL_79;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelAddCommentsToAssetCollectionWithGUIDFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASCommentsKey];
    v48 = [*(a1 + 64) objectForKey:kMSASAssetCollectionGUIDKey];
    v52 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v54 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    [v6 addComments:v16 toAssetCollectionWithGUID:v48 personID:v52 info:v54];
    goto LABEL_79;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelDeleteCommentWithGUIDFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASCommentGUIDKey];
    v48 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v52 = [*(a1 + 64) objectForKey:kMSASInfoKey];
    [v6 deleteCommentWithGUID:v16 personID:v48 info:v52];
    goto LABEL_69;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelRetrieveAssetsInAlbumWithGUIDFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASAssetsKey];
    v48 = [*(a1 + 64) objectForKey:kMSASAlbumGUIDKey];
    v52 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    [v6 retrieveAssets:v16 inAlbumWithGUID:v48 personID:v52];
    goto LABEL_69;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelRetrieveAssetsFromAssetCollectionsWithGUIDs])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASAssetCollectionGUIDsKey];
    v48 = [*(a1 + 64) objectForKey:kMSASAssetTypeFlagsKey];
    v64 = [v48 intValue];
    v50 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    [v6 retrieveAssetsInAssetCollectionsWithGUIDs:v16 assetTypeFlags:v64 personID:v50];
    goto LABEL_66;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelForgetEverythingFn])
  {
    v65 = kMSASPersonIDKey;
    v7 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    if (v7)
    {
      v66 = [*(a1 + 64) objectForKey:v65];
      v89[0] = _NSConcreteStackBlock;
      v89[1] = 3221225472;
      v89[2] = sub_10000AA4C;
      v89[3] = &unk_100018B78;
      v67 = &v90;
      v90 = *(a1 + 56);
      [v6 forgetEverythingAboutPersonID:v66 completionBlock:v89];
    }

    else
    {
      v87[0] = _NSConcreteStackBlock;
      v87[1] = 3221225472;
      v87[2] = sub_10000AA58;
      v87[3] = &unk_100018B78;
      v67 = &v88;
      v88 = *(a1 + 56);
      [v6 forgetEverythingCompletionBlock:v87];
    }

    goto LABEL_7;
  }

  if ([*(a1 + 40) isEqualToString:kMSASSetIsUIForegroundFn])
  {
    [*(a1 + 32) _handleForegroundPing:*(a1 + 64) request:*(a1 + 56)];
    goto LABEL_27;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelActivityIsThrottledByLackOfDiskSpaceFn])
  {
    v68 = MSASPlatform();
    if ([v68 deviceHasEnoughDiskSpaceRemainingToOperate])
    {
      v69 = 0;
    }

    else
    {
      v70 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
      v71 = [v6 existingModelForPersonID:v70];
      v69 = [v71 hasEnqueuedActivities];
    }

    v12 = *(a1 + 56);
    v13 = [NSNumber numberWithInt:v69];
    goto LABEL_10;
  }

  if ([*(a1 + 40) isEqualToString:kMSASSetFocusAlbumFn])
  {
    [*(a1 + 32) _handleFocusAlbum:*(a1 + 64)];
    goto LABEL_26;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelSetFocusAssetCollectionGUIDFn])
  {
    v16 = [*(a1 + 64) objectForKey:kMSASAssetCollectionGUIDKey];
    v48 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    [v6 setFocusAssetCollectionGUID:v16 forPersonID:v48];
    goto LABEL_70;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelSetPublicAccessEnabledFn])
  {
    v72 = [*(a1 + 64) objectForKey:kMSASEnabledKey];
    v73 = [v72 BOOLValue];
    v74 = [*(a1 + 64) objectForKey:kMSASAlbumGUIDKey];
    v75 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_10000AA64;
    v85[3] = &unk_100018B50;
    v86 = *(a1 + 56);
    [v6 setPublicAccessEnabled:v73 forAlbumWithGUID:v74 personID:v75 completionBlock:v85];

    v22 = v86;
    goto LABEL_48;
  }

  if ([*(a1 + 40) isEqualToString:kMSASModelSetMultipleContributorsEnabledFn])
  {
    v76 = [*(a1 + 64) objectForKey:kMSASEnabledKey];
    v77 = [v76 BOOLValue];
    v78 = [*(a1 + 64) objectForKey:kMSASAlbumGUIDKey];
    v79 = [*(a1 + 64) objectForKey:kMSASPersonIDKey];
    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_10000AAD4;
    v83[3] = &unk_100018B50;
    v84 = *(a1 + 56);
    [v6 setMultipleContributorsEnabled:v77 forAlbumWithGUID:v78 personID:v79 completionBlock:v83];

    v22 = v84;
    goto LABEL_48;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v80 = *(a1 + 32);
    v81 = *(a1 + 40);
    v82 = *(a1 + 48);
    *buf = 138543874;
    v151 = v80;
    v152 = 2114;
    v153 = v81;
    v154 = 2114;
    v155 = v82;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}@: Unknown request %{public}@ from client %{public}@. Ignoring.", buf, 0x20u);
  }

LABEL_27:
}

void sub_100009964(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKey:kMSASPersonIDKey];
  v4 = [v2 modelForPersonID:v3];

  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 albumGUIDs];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:*(*(&v13 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *(a1 + 48);
  v12 = [NSDictionary dictionaryWithObjectsAndKeys:v5, kMSASRetvalKey, 0];
  [v11 sendReply:v12];
}

void sub_100009AF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKey:kMSASPersonIDKey];
  v8 = [v2 modelForPersonID:v3];

  v4 = [*(a1 + 40) objectForKey:kMSASAlbumGUIDKey];
  v5 = [v8 albumWithGUID:v4];

  v6 = *(a1 + 48);
  v7 = [NSDictionary dictionaryWithObjectsAndKeys:v5, kMSASRetvalKey, 0];
  [v6 sendReply:v7];
}

void sub_100009BDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKey:kMSASPersonIDKey];
  v4 = [v2 modelForPersonID:v3];

  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [*(a1 + 40) objectForKey:kMSASAlbumGUIDKey];
  v7 = [v4 accessControlGUIDsForAlbumWithGUID:v6];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v5 addObject:*(*(&v14 + 1) + 8 * v11)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *(a1 + 48);
  v13 = [NSDictionary dictionaryWithObjectsAndKeys:v5, kMSASRetvalKey, 0];
  [v12 sendReply:v13];
}

void sub_100009D90(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKey:kMSASPersonIDKey];
  v8 = [v2 modelForPersonID:v3];

  v4 = [*(a1 + 40) objectForKey:kMSASAccessControlGUIDKey];
  v5 = [v8 accessControlWithGUID:v4];

  v6 = *(a1 + 48);
  v7 = [NSDictionary dictionaryWithObjectsAndKeys:v5, kMSASRetvalKey, 0];
  [v6 sendReply:v7];
}

void sub_100009E7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKey:kMSASPersonIDKey];
  v4 = [v2 modelForPersonID:v3];

  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 invitationGUIDs];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:*(*(&v13 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *(a1 + 48);
  v12 = [NSDictionary dictionaryWithObjectsAndKeys:v5, kMSASRetvalKey, 0];
  [v11 sendReply:v12];
}

void sub_10000A008(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKey:kMSASPersonIDKey];
  v8 = [v2 modelForPersonID:v3];

  v4 = [*(a1 + 40) objectForKey:kMSASInvitationGUIDKey];
  v5 = [v8 invitationWithGUID:v4];

  v6 = *(a1 + 48);
  v7 = [NSDictionary dictionaryWithObjectsAndKeys:v5, kMSASRetvalKey, 0];
  [v6 sendReply:v7];
}

void sub_10000A0F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKey:kMSASPersonIDKey];
  v4 = [v2 modelForPersonID:v3];

  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [*(a1 + 40) objectForKey:kMSASAlbumGUIDKey];
  v7 = [v4 assetCollectionGUIDsInAlbumWithGUID:v6];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v5 addObject:*(*(&v14 + 1) + 8 * v11)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *(a1 + 48);
  v13 = [NSDictionary dictionaryWithObjectsAndKeys:v5, kMSASRetvalKey, 0];
  [v12 sendReply:v13];
}

void sub_10000A2A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKey:kMSASPersonIDKey];
  v8 = [v2 modelForPersonID:v3];

  v4 = [*(a1 + 40) objectForKey:kMSASAssetCollectionGUIDKey];
  v5 = [v8 assetCollectionWithGUID:v4];

  v6 = *(a1 + 48);
  v7 = [NSDictionary dictionaryWithObjectsAndKeys:v5, kMSASRetvalKey, 0];
  [v6 sendReply:v7];
}

void sub_10000A394(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKey:kMSASPersonIDKey];
  v4 = [v2 modelForPersonID:v3];

  v5 = [*(a1 + 40) objectForKey:kMSASAssetCollectionGUIDKey];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000AC2C;
  v6[3] = &unk_100018AB0;
  v7 = *(a1 + 48);
  [v4 videoURLForAssetCollectionWithGUID:v5 completionBlock:v6];
}

void sub_10000A484(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKey:kMSASPersonIDKey];
  v4 = [v2 modelForPersonID:v3];

  v5 = [*(a1 + 40) objectForKey:kMSASAssetCollectionGUIDKey];
  v6 = [*(a1 + 40) objectForKey:kMSAssetMediaAssetTypeKey];
  v7 = [v6 unsignedIntegerValue];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000AB44;
  v8[3] = &unk_100018AD8;
  v9 = *(a1 + 48);
  [v4 videoURLsForAssetCollectionWithGUID:v5 forMediaAssetType:v7 completionBlock:v8];
}

void sub_10000A5A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKey:kMSASPersonIDKey];
  v4 = [v2 modelForPersonID:v3];

  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [*(a1 + 40) objectForKey:kMSASAssetCollectionGUIDKey];
  v7 = [v4 commentsForAssetCollectionWithGUID:v6];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) GUID];
        [v5 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *(a1 + 48);
  v14 = [NSDictionary dictionaryWithObjectsAndKeys:v5, kMSASRetvalKey, 0];
  [v13 sendReply:v14];
}

void sub_10000A778(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKey:kMSASPersonIDKey];
  v8 = [v2 modelForPersonID:v3];

  v4 = [*(a1 + 40) objectForKey:kMSASCommentGUIDKey];
  v5 = [v8 commentWithGUID:v4];

  v6 = *(a1 + 48);
  v7 = [NSDictionary dictionaryWithObjectsAndKeys:v5, kMSASRetvalKey, 0];
  [v6 sendReply:v7];
}

void sub_10000A864(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) objectForKey:kMSASResetSyncKey];
  v3 = [v6 BOOLValue];
  v4 = [*(a1 + 40) objectForKey:kMSASPersonIDKey];
  v5 = [*(a1 + 40) objectForKey:kMSASInfoKey];
  [v2 refreshResetSync:v3 personID:v4 info:v5];
}

void sub_10000A920(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = +[NSMutableDictionary dictionary];
  if (v7)
  {
    [v6 setObject:v7 forKey:kMSASInfoKey];
  }

  if (v5)
  {
    [v6 setObject:v5 forKey:kMSASErrorKey];
  }

  [*(a1 + 32) sendReply:v6];
}

void sub_10000A9DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSDictionary dictionaryWithObjectsAndKeys:a2, kMSASErrorKey, 0];
  [v2 sendReply:v3];
}

void sub_10000AA64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSDictionary dictionaryWithObjectsAndKeys:a2, kMSASErrorKey, 0];
  [v2 sendReply:v3];
}

void sub_10000AAD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSDictionary dictionaryWithObjectsAndKeys:a2, kMSASErrorKey, 0];
  [v2 sendReply:v3];
}

void sub_10000AB44(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = +[NSMutableDictionary dictionary];
  v10 = v9;
  if (v7)
  {
    [v9 setObject:v7 forKey:kMSASRetvalKey];
  }

  if (v8)
  {
    [v10 setObject:v8 forKey:kMSASURLExpirationKey];
  }

  if (v11)
  {
    [v10 setObject:v11 forKey:kMSASErrorKey];
  }

  [*(a1 + 32) sendReply:v10];
}

void sub_10000AC2C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = +[NSMutableDictionary dictionary];
  v10 = v9;
  if (v7)
  {
    [v9 setObject:v7 forKey:kMSASRetvalKey];
  }

  if (v8)
  {
    [v10 setObject:v8 forKey:kMSASURLExpirationKey];
  }

  if (v11)
  {
    [v10 setObject:v11 forKey:kMSASErrorKey];
  }

  [*(a1 + 32) sendReply:v10];
}

void sub_10000B248(id a1)
{
  qword_10001DD50 = dispatch_queue_create("MSMSASServiceConnection work queue", 0);

  _objc_release_x1();
}

void sub_10000B628(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    *buf = 138543362;
    v11 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%{public}@: Shared Streams daemon shutting down.", buf, 0xCu);
  }

  v3 = [*(a1 + 32) busyPingTimer];
  [v3 invalidate];

  [*(a1 + 32) setBusyPingTimer:0];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:*(a1 + 32)];

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B784;
  v8[3] = &unk_100018A20;
  v8[4] = v6;
  v9 = v5;
  [v7 shutDownCompletionBlock:v8];
}

void sub_10000B784(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000B828;
  v3[3] = &unk_100018A20;
  v3[4] = v1;
  v4 = *(a1 + 40);
  v2.receiver = v1;
  v2.super_class = MSIOSAlbumSharingDaemon;
  objc_msgSendSuper2(&v2, "shutDownCompletionBlock:", v3);
}

void sub_10000B828(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000B8B0;
  v2[3] = &unk_100018A20;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_10000B8B0(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) personIDToPowerBudgetMap];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = [*(a1 + 32) personIDToPowerBudgetMap];
        v9 = [v8 objectForKey:v7];

        [v9 shutDown];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v4);
  }

  v10 = [*(a1 + 32) personIDToPowerBudgetMap];
  [v10 removeAllObjects];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 138412290;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Shared Streams daemon has shut down.", buf, 0xCu);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    dispatch_async(&_dispatch_main_q, v12);
  }
}

void sub_10000C2F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_10000C330(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v5 = [v3 objectForKey:kMSASServerSideConfigPersonIDKey];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _readPowerBudgetParametersForPersonID:v5];
}

void sub_10000C3B0(uint64_t a1)
{
  v2 = +[MSBatteryPowerMonitor defaultMonitor];
  v3 = [v2 isExternalPowerConnected];

  if (v3)
  {
    v21 = 0uLL;
    v22 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v4 = [*(a1 + 32) personIDToPowerBudgetMap];
    v5 = [v4 allValues];

    v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v19 + 1) + 8 * i) didBeginExternalPower];
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v17 = 0uLL;
    v18 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v10 = [*(a1 + 32) personIDToPowerBudgetMap];
    v5 = [v10 allValues];

    v11 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v15 + 1) + 8 * j) didEndExternalPower];
        }

        v12 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

void sub_10000C584(uint64_t a1, void *a2)
{
  v5 = [a2 object];
  v3 = *(a1 + 32);
  v4 = [v5 personID];
  [v3 stopAssetDownloadsForPersonID:v4];
}