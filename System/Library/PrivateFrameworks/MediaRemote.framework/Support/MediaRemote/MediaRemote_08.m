void sub_10019D6AC(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(a1 + 32);
  v3 = [NSString alloc];
  v4 = *(a1 + 40);
  v5 = sub_10019CF04(*(a1 + 48));
  v6 = [v3 initWithFormat:@"%@ playback timeout event %@ after <%lf> seconds", v4, v5, *(a1 + 56)];
  [v2 _onSyncSelf_reevaluateProactiveRecommendedPlayerForEvent:2 withReason:v6];

  objc_sync_exit(obj);
}

BOOL sub_10019D8A4(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return a1 - 127 >= 2;
  }

  v1 = 0;
  if (((1 << a1) & 0xA0A) == 0)
  {
    return a1 - 127 >= 2;
  }

  return v1;
}

uint64_t sub_10019D8DC(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_get_global_queue(0, 0);
  v6 = v2;
  MRProcessIDForApplication();
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v4 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_10019D9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10019DA18(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  kdebug_trace();
  if (qword_100529690 != -1)
  {
    sub_1003AFF00();
  }

  v16 = 0;
  v8 = [LSApplicationIdentity identityStringsForApplicationWithBundleIdentifier:v5 error:&v16];
  v9 = v16;
  if (v9)
  {
    goto LABEL_8;
  }

  v10 = [LSApplicationIdentity alloc];
  v11 = [v8 firstObject];
  v12 = [v10 initWithIdentityString:v11];

  if (![qword_100529688 requiresPreflightForApplication:v12])
  {

LABEL_8:
    v14 = qos_class_self();
    v12 = dispatch_get_global_queue(v14, 0);
    v15 = v7;
    MSVLaunchApplicationWithOptions();
    v13 = v15;
    goto LABEL_9;
  }

  if (v7)
  {
    v13 = [[NSError alloc] initWithMRError:126];
    (*(v7 + 2))(v7, v13);
LABEL_9:
  }
}

void sub_10019DBEC(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.mediaremote.launchApplication.preflightManager", v1);

  v2 = [[PDCPreflightManager alloc] initWithTargetQueue:v4];
  v3 = qword_100529688;
  qword_100529688 = v2;
}

uint64_t sub_10019DC74(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  return kdebug_trace();
}

void sub_10019DCC4(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  kdebug_trace();
  v11 = +[NSDate date];
  v12 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"MRDLaunchApplicationWithReason", v8];
  v13 = v12;
  if (v7)
  {
    [v12 appendFormat:@" for %@", v7];
  }

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v41 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v15 = +[NSThread currentThread];
  v16 = [v15 threadDictionary];
  v17 = [v16 objectForKeyedSubscript:@"migrateRequest"];

  if (v17)
  {
    v18 = [v17 startEvent:@"LaunchApp" role:3];
  }

  else
  {
    v18 = 0;
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10019E204;
  v32[3] = &unk_1004BF1C8;
  v19 = v8;
  v33 = v19;
  v20 = v7;
  v34 = v20;
  v21 = v17;
  v39 = v18;
  v35 = v21;
  v36 = @"MRDLaunchApplicationWithReason";
  v22 = v11;
  v37 = v22;
  v23 = v10;
  v38 = v23;
  v24 = objc_retainBlock(v32);
  if (sub_10019E0A0(v24, v20))
  {
    v25 = [v9 objectForKeyedSubscript:kMRMediaRemoteOptionCommandType];
    [v25 unsignedIntValue];
    v31 = v9;

    v29 = MRMediaRemoteCopyCommandDescription();
    v30 = v22;
    v26 = [[NSString alloc] initWithFormat:@"%@.%@.%@.%@", @"com.apple.MediaRemote.command", v29, @"invoked.notify.client", v20];
    v27 = [[NSString alloc] initWithFormat:@"%@.%@.%@", @"com.apple.MediaRemote.command", @"invoked.notify.client", v20];
    v28 = [[NSString alloc] initWithFormat:@"%@.%@", @"com.apple.MediaRemote.command", @"invoked.notify.client"];
    notify_post([v26 UTF8String]);
    notify_post([v27 UTF8String]);
    notify_post([v28 UTF8String]);
    (v24[2])(v24, 0);

    v22 = v30;
    v9 = v31;
  }

  else
  {
    sub_10019DA18(v20, v9, v24);
  }
}

id sub_10019E0A0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_1005296A8 != -1)
  {
    sub_1003AFF14();
  }

  IsAudioAccessory = MSVDeviceIsAudioAccessory();
  v4 = &qword_1005296A0;
  if (!IsAudioAccessory)
  {
    v4 = &qword_100529698;
  }

  v5 = [*v4 containsObject:v2];

  return v5;
}

void sub_10019E110(id a1)
{
  v1 = [[NSSet alloc] initWithArray:&off_1004E0F40];
  v2 = qword_100529698;
  qword_100529698 = v1;

  v7 = [[NSMutableSet alloc] initWithArray:&off_1004E0F58];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v3 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    [v7 addObject:v3];
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v4 = MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
    [v7 addObject:v4];
  }

  v5 = [v7 copy];
  v6 = qword_1005296A0;
  qword_1005296A0 = v5;
}

void sub_10019E204(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = [[NSString alloc] initWithFormat:@"post-launch setup for  %@", *(a1 + 32)];
    v5 = [[MRDTaskAssertion alloc] initWithType:1 pid:0 bundleID:*(a1 + 40) name:v4];
    [(MRDTaskAssertion *)v5 invalidateInDuration:30.0];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    [v6 endEventWithID:*(a1 + 80) error:v3];
  }

  v7 = *(a1 + 40);
  v8 = _MRLogForCategory();
  v9 = v8;
  if (!v3)
  {
    v16 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v16)
      {
        goto LABEL_18;
      }

      v17 = *(a1 + 56);
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:*(a1 + 64)];
      *buf = 138544130;
      v29 = v17;
      v30 = 2114;
      v31 = v18;
      v32 = 2114;
      v33 = v19;
      v34 = 2048;
      v35 = v20;
      v21 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v22 = v9;
      v23 = 42;
    }

    else
    {
      if (!v16)
      {
        goto LABEL_18;
      }

      v24 = *(a1 + 56);
      v25 = *(a1 + 32);
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:*(a1 + 64)];
      *buf = 138543874;
      v29 = v24;
      v30 = 2114;
      v31 = v25;
      v32 = 2048;
      v33 = v26;
      v21 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v22 = v9;
      v23 = 32;
    }

    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    goto LABEL_17;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = *(a1 + 56);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 64)];
    *buf = 138544386;
    v29 = v11;
    v30 = 2114;
    v31 = v12;
    v32 = 2114;
    v33 = v3;
    v34 = 2114;
    v35 = v13;
    v36 = 2048;
    v37 = v15;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_17:

    goto LABEL_18;
  }

  if (v10)
  {
    sub_1003AFF28();
  }

LABEL_18:

  v27 = *(a1 + 72);
  if (v27)
  {
    (*(v27 + 16))(v27, v3);
  }

  kdebug_trace();
}

void sub_10019E4E8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = [FBSOpenApplicationOptions optionsWithDictionary:a2];
  v8 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10019E5D8;
  v10[3] = &unk_1004C0C18;
  v11 = v5;
  v9 = v5;
  [v8 openApplication:v6 withOptions:v7 completion:v10];
}

void sub_10019E5FC(void *a1, void *a2, void *a3, void *a4, double a5)
{
  v9 = a1;
  v37 = a2;
  v10 = a3;
  v11 = a4;
  v12 = +[NSDate date];
  v13 = +[NSUUID UUID];
  v14 = [v13 UUIDString];

  v15 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"launchAppAndWaitForXpcConnection", v14];
  v16 = v15;
  if (v9)
  {
    [v15 appendFormat:@" for %@", v9];
  }

  v17 = _MRLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v57 = 0x3032000000;
  v58 = sub_10003527C;
  v59 = sub_100035AF4;
  v60 = 0;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10019EB40;
  v49[3] = &unk_1004C0C40;
  v18 = v9;
  v50 = v18;
  v51 = @"launchAppAndWaitForXpcConnection";
  v19 = v14;
  v52 = v19;
  v20 = v12;
  v53 = v20;
  v21 = v11;
  v54 = v21;
  p_buf = &buf;
  v22 = objc_retainBlock(v49);
  v23 = [MRBlockGuard alloc];
  v24 = [[NSString alloc] initWithFormat:@"Application <%@> waiting for xpcConnection", v18];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10019EF58;
  v47[3] = &unk_1004B6FE8;
  v25 = v22;
  v48 = v25;
  v26 = [v23 initWithTimeout:v24 reason:v47 handler:a5];

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10019EF78;
  v44[3] = &unk_1004C0C68;
  v27 = v26;
  v45 = v27;
  v28 = v25;
  v46 = v28;
  v29 = objc_retainBlock(v44);
  v30 = +[NSNotificationCenter defaultCenter];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10019EFF0;
  v41[3] = &unk_1004BEBE8;
  v31 = v18;
  v42 = v31;
  v32 = v29;
  v43 = v32;
  v33 = [v30 addObserverForName:@"MRDMediaRemoteClientDidConnect" object:0 queue:0 usingBlock:v41];
  v34 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v33;

  v35 = +[MRDMediaRemoteServer server];
  v36 = [v35 clientForBundleIdentifier:v31];

  if (v36)
  {
    (v32[2])(v32, v36, 0);
  }

  else
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10019F07C;
    v38[3] = &unk_1004B9BE0;
    v39 = v31;
    v40 = v32;
    sub_10019DCC4(v39, @"launchAppAndWaitForXpcConnection", v10, v38);
  }

  _Block_object_dispose(&buf, 8);
}

void sub_10019EB40(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 displayName];

    v16 = a1[4];
    v8 = _MRLogForCategory();
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v18 = a1[5];
        v19 = a1[6];
        v13 = [v5 displayName];
        v20 = a1[4];
        v21 = +[NSDate date];
        [v21 timeIntervalSinceDate:a1[7]];
        v43 = 138544386;
        v44 = v18;
        v45 = 2114;
        v46 = v19;
        v47 = 2112;
        v48 = v13;
        v49 = 2114;
        v50 = v20;
        v51 = 2048;
        v52 = v22;
        v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v24 = v8;
        v25 = 52;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v33 = a1[5];
        v34 = a1[6];
        v13 = [v5 displayName];
        v21 = +[NSDate date];
        [v21 timeIntervalSinceDate:a1[7]];
        v43 = 138544130;
        v44 = v33;
        v45 = 2114;
        v46 = v34;
        v47 = 2112;
        v48 = v13;
        v49 = 2048;
        v50 = v35;
        v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v24 = v8;
        v25 = 42;
      }

      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, &v43, v25);
    }

    else
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v27 = a1[5];
        v26 = a1[6];
        v28 = a1[4];
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:a1[7]];
        v43 = 138544130;
        v44 = v27;
        v45 = 2114;
        v46 = v26;
        v47 = 2114;
        v48 = v28;
        v49 = 2048;
        v50 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = a1[5];
        v37 = a1[6];
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:a1[7]];
        v43 = 138543874;
        v44 = v36;
        v45 = 2114;
        v46 = v37;
        v47 = 2048;
        v48 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, &v43, v32);
    }

    goto LABEL_20;
  }

  v7 = a1[4];
  v8 = _MRLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    v11 = a1[5];
    v10 = a1[6];
    v12 = a1[4];
    v13 = +[NSDate date];
    [v13 timeIntervalSinceDate:a1[7]];
    v43 = 138544386;
    v44 = v11;
    v45 = 2114;
    v46 = v10;
    v47 = 2114;
    v48 = v6;
    v49 = 2114;
    v50 = v12;
    v51 = 2048;
    v52 = v14;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v43, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v9)
  {
    sub_1003AFFD4();
  }

LABEL_21:

  v39 = a1[8];
  if (v39)
  {
    (*(v39 + 16))(v39, v5, v6);
  }

  if (*(*(a1[9] + 8) + 40))
  {
    v40 = +[NSNotificationCenter defaultCenter];
    [v40 removeObserver:*(*(a1[9] + 8) + 40)];

    v41 = *(a1[9] + 8);
    v42 = *(v41 + 40);
    *(v41 + 40) = 0;
  }
}

uint64_t sub_10019EF58(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_10019EF78(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10019EFF0(uint64_t a1, void *a2)
{
  v5 = [a2 object];
  v3 = [v5 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10019F07C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = +[MRDMediaRemoteServer server];
  v4 = [v3 clientForBundleIdentifier:*(a1 + 32)];

  if (v4)
  {
    v5 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v5 = *(*(a1 + 40) + 16);
  }

  v5();
LABEL_6:
}

void sub_10019F130(void *a1, void *a2, void *a3, double a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a2;
  v10 = +[NSDate date];
  v11 = +[NSUUID UUID];
  v12 = [v11 UUIDString];

  v13 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"launchAppAndWaitForCanBeNowPlaying", v12];
  v14 = v13;
  if (v7)
  {
    [v13 appendFormat:@" for %@", v7];
  }

  v15 = _MRLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10019F400;
  v29[3] = &unk_1004C0C90;
  v16 = v7;
  v30 = v16;
  v31 = @"launchAppAndWaitForCanBeNowPlaying";
  v32 = v12;
  v33 = v10;
  v34 = v8;
  v17 = v8;
  v18 = v10;
  v19 = v12;
  v20 = objc_retainBlock(v29);
  +[NSDate date];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10019F7C8;
  v24[3] = &unk_1004BEEF8;
  v26 = v16;
  v27 = v20;
  v25 = v28 = a4;
  v21 = v16;
  v22 = v25;
  v23 = v20;
  sub_10019E5FC(v21, 0, v9, v24, a4);
}

void sub_10019F400(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 displayName];

    v16 = a1[4];
    v8 = _MRLogForCategory();
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v27 = a1[5];
        v26 = a1[6];
        v28 = a1[4];
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:a1[7]];
        v39 = 138544130;
        v40 = v27;
        v41 = 2114;
        v42 = v26;
        v43 = 2114;
        v44 = v28;
        v45 = 2048;
        v46 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = a1[5];
        v37 = a1[6];
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:a1[7]];
        v39 = 138543874;
        v40 = v36;
        v41 = 2114;
        v42 = v37;
        v43 = 2048;
        v44 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, &v39, v32);
      goto LABEL_20;
    }

    if (v16)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = a1[5];
      v19 = a1[6];
      v13 = [v5 displayName];
      v20 = a1[4];
      v21 = +[NSDate date];
      [v21 timeIntervalSinceDate:a1[7]];
      v39 = 138544386;
      v40 = v18;
      v41 = 2114;
      v42 = v19;
      v43 = 2112;
      v44 = v13;
      v45 = 2114;
      v46 = v20;
      v47 = 2048;
      v48 = v22;
      v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v24 = v8;
      v25 = 52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v33 = a1[5];
      v34 = a1[6];
      v13 = [v5 displayName];
      v21 = +[NSDate date];
      [v21 timeIntervalSinceDate:a1[7]];
      v39 = 138544130;
      v40 = v33;
      v41 = 2114;
      v42 = v34;
      v43 = 2112;
      v44 = v13;
      v45 = 2048;
      v46 = v35;
      v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v24 = v8;
      v25 = 42;
    }

    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, &v39, v25);

    goto LABEL_20;
  }

  v7 = a1[4];
  v8 = _MRLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v11 = a1[5];
      v10 = a1[6];
      v12 = a1[4];
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:a1[7]];
      v39 = 138544386;
      v40 = v11;
      v41 = 2114;
      v42 = v10;
      v43 = 2114;
      v44 = v6;
      v45 = 2114;
      v46 = v12;
      v47 = 2048;
      v48 = v14;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v39, 0x34u);
LABEL_20:
    }
  }

  else if (v9)
  {
    sub_1003AFFD4();
  }

LABEL_21:

  (*(a1[8] + 16))();
}

void sub_10019F7C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = *(a1 + 56);
    v8 = +[NSDate date];
    [v8 timeIntervalSinceDate:*(a1 + 32)];
    v10 = v7 - v9;

    v11 = [MRBlockGuard alloc];
    v12 = [[NSString alloc] initWithFormat:@"Application <%@> waiting for CanBeNowPlaying", *(a1 + 40)];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10019FB08;
    v28[3] = &unk_1004B6FE8;
    v29 = *(a1 + 48);
    v13 = [v11 initWithTimeout:v12 reason:v28 handler:v10];

    objc_initWeak(&location, v5);
    v14 = +[NSNotificationCenter defaultCenter];
    v15 = kMRMediaRemoteNowPlayingApplicationDidRegisterCanBeNowPlaying;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10019FB28;
    v22[3] = &unk_1004C0CB8;
    objc_copyWeak(&v26, &location);
    v23 = *(a1 + 40);
    v16 = v13;
    v24 = v16;
    v25 = *(a1 + 48);
    v17 = [v14 addObserverForName:v15 object:0 queue:0 usingBlock:v22];

    if ([v5 canBeNowPlaying])
    {
      if ([v16 disarm])
      {
        (*(*(a1 + 48) + 16))();
      }

      v18 = +[NSNotificationCenter defaultCenter];
      [v18 removeObserver:v17];
    }

    else
    {
      v19 = dispatch_time(0, ((v10 + 2.0) * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10019FBF4;
      block[3] = &unk_1004B6D08;
      v21 = v17;
      dispatch_after(v19, &_dispatch_main_q, block);
      v18 = v21;
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

void sub_10019FAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10019FB08(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_10019FB28(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [v3 userInfo];

  v5 = MRGetClientFromUserInfo();

  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7 && [*(a1 + 40) disarm])
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10019FBF4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(a1 + 32)];
}

id sub_10019FC4C(void *a1)
{
  v1 = a1;
  v2 = +[AVSystemController sharedAVSystemController];
  v7 = 0;
  v3 = [v2 setAttribute:v1 forKey:AVSystemController_AllowAppToInitiatePlaybackTemporarilyAttribute error:&v7];
  v4 = v7;

  if ((v3 & 1) == 0)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v9 = v1;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error blessing %@ for playback initialization. %@", buf, 0x16u);
    }
  }

  return v3;
}

uint64_t sub_10019FD60(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_get_global_queue(0, 0);
  v6 = v2;
  MRProcessIDForApplication();
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v4 = *(v8 + 6);

  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_10019FE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10019FE94()
{
  v0 = MSVWeakLinkSymbol();
  if (v0)
  {
    v1 = MSVWeakLinkSymbol();
    v0 = v1();
  }

  return v0;
}

void sub_10019FEE8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001A01F0;
  v22[3] = &unk_1004C0CE0;
  v5 = v3;
  v23 = v5;
  v6 = v4;
  v24 = v6;
  v7 = objc_retainBlock(v22);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v8 = qword_1005296C0;
  v33 = qword_1005296C0;
  if (!qword_1005296C0)
  {
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_1001A039C;
    v28 = &unk_1004B8728;
    v29 = &v30;
    v9 = sub_1001A03EC();
    v10 = dlsym(v9, "BYSetupAssistantFinishedDarwinNotification");
    *(v29[1] + 24) = v10;
    qword_1005296C0 = *(v29[1] + 24);
    v8 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v8)
  {
    sub_1003AA728();
    goto LABEL_14;
  }

  v11 = *v8;
  v12 = v11;
  if (!v11)
  {
    (v7[2])(v7, 0);
    goto LABEL_12;
  }

  out_token = 0;
  v13 = [v11 UTF8String];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001A0294;
  handler[3] = &unk_1004C0D08;
  v14 = v7;
  v20 = v14;
  notify_register_dispatch(v13, &out_token, v5, handler);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v15 = off_1005296D0;
  v33 = off_1005296D0;
  if (!off_1005296D0)
  {
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_1001A0560;
    v28 = &unk_1004B8728;
    v29 = &v30;
    v16 = sub_1001A03EC();
    v17 = dlsym(v16, "BYSetupAssistantNeedsToRun");
    *(v29[1] + 24) = v17;
    off_1005296D0 = *(v29[1] + 24);
    v15 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v15)
  {
LABEL_14:
    v18 = sub_1003AA728();
    _Block_object_dispose(&v30, 8);
    _Unwind_Resume(v18);
  }

  if ((v15() & 1) == 0)
  {
    (v14[2])(v14, out_token);
  }

LABEL_12:
}

void sub_1001A01F0(uint64_t a1, int token)
{
  notify_cancel(token);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A0284;
  block[3] = &unk_1004B79A0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(v3, block);
}

uint64_t sub_1001A02A4(int a1)
{
  result = MSVWeakLinkSymbol();
  if (result)
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = MSVWeakLinkSymbol();

    return v4();
  }

  return result;
}

uint64_t sub_1001A0314()
{
  if (qword_1005296B0 != -1)
  {
    sub_1003B007C();
  }

  return byte_1005296B8;
}

void sub_1001A034C(id a1)
{
  v1 = +[LockdownModeManager shared];
  byte_1005296B8 = [v1 enabled];
}

void *sub_1001A039C(uint64_t a1)
{
  v2 = sub_1001A03EC();
  result = dlsym(v2, "BYSetupAssistantFinishedDarwinNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1005296C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001A03EC()
{
  v3[0] = 0;
  if (!qword_1005296C8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1001A04EC;
    v3[4] = &unk_1004B82A0;
    v3[5] = v3;
    v4 = off_1004C0D48;
    v5 = 0;
    qword_1005296C8 = _sl_dlopen();
  }

  v0 = qword_1005296C8;
  v1 = v3[0];
  if (!qword_1005296C8)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1001A04EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1005296C8 = result;
  return result;
}

void *sub_1001A0560(uint64_t a1)
{
  v2 = sub_1001A03EC();
  result = dlsym(v2, "BYSetupAssistantNeedsToRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1005296D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1001A0830(id a1)
{
  v1 = objc_alloc_init(MRDRTCReporting);
  v2 = qword_1005296D8;
  qword_1005296D8 = v1;
}

void sub_1001A09D0(uint64_t a1)
{
  if (([*(a1 + 32) configurationStarted] & 1) == 0)
  {
    [*(a1 + 32) setConfigurationStarted:1];
    v12[0] = kRTCReportingSessionInfoClientType;
    v12[1] = kRTCReportingSessionInfoClientVersion;
    v13[0] = &off_1004E0B90;
    v13[1] = &off_1004E0BA8;
    v12[2] = kRTCReportingSessionInfoSessionID;
    v2 = [NSNumber numberWithUnsignedInt:arc4random()];
    v12[3] = kRTCReportingSessionInfoBatchEvent;
    v13[2] = v2;
    v13[3] = &off_1004E0BA8;
    v3 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];

    v10[0] = kRTCReportingUserInfoClientName;
    v10[1] = kRTCReportingUserInfoServiceName;
    v11[0] = @"MRTopology";
    v11[1] = @"WHA";
    v4 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    v5 = [[RTCReporting alloc] initWithSessionInfo:v3 userInfo:v4 frameworksToCheck:0];
    [*(a1 + 32) setReportingContext:v5];

    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[RTC] Creating RTCReporting client", buf, 2u);
    }

    v7 = [*(a1 + 32) reportingContext];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001A0C10;
    v8[3] = &unk_1004BFB70;
    v8[4] = *(a1 + 32);
    [v7 startConfigurationWithCompletionHandler:v8];
  }
}

void sub_1001A0C10(uint64_t a1)
{
  v2 = [*(a1 + 32) rtcQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A0CA0;
  block[3] = &unk_1004B6D08;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_1001A0CA0(uint64_t a1)
{
  [*(a1 + 32) setConfigurationFinished:1];
  v2 = [*(a1 + 32) pendingMessages];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) pendingMessages];
  [v4 removeAllObjects];

  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 count]);
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[RTC] Finished creating RTCReporting client. Reporting %@ batched events", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = _MRLogForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v21 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[RTC] Reporting event: %{public}@", buf, 0xCu);
        }

        v14 = [*(a1 + 32) reportingContext];
        [v14 sendMessageWithDictionary:v12 error:0];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

void sub_1001A0F94(uint64_t a1)
{
  v2 = [*(a1 + 32) reportingContext];
  if (v2 && (v3 = v2, v4 = [*(a1 + 32) configurationFinished], v3, v4))
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[RTC] Reporting event: %{public}@", buf, 0xCu);
    }

    v7 = [*(a1 + 32) reportingContext];
    [v7 sendMessageWithDictionary:*(a1 + 40) error:0];
  }

  else
  {
    [*(a1 + 32) startConfiguration];
    v8 = [*(a1 + 32) pendingMessages];
    [v8 addObject:*(a1 + 40)];
  }
}

uint64_t sub_1001A290C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1001A2A40(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001A34C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 error];

  if (v6 && !v7)
  {
    v8 = [v5 debugName];

    v9 = _MRLogForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (!v10)
      {
        goto LABEL_23;
      }

      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) requestID];
      v13 = [v5 debugName];
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:*(a1 + 48)];
      v39 = 138544386;
      v40 = v11;
      v41 = 2114;
      v42 = v12;
      v43 = 2112;
      v44 = v6;
      v45 = 2114;
      v46 = v13;
      v47 = 2048;
      v48 = v15;
      v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v17 = v9;
      v18 = 52;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &v39, v18);
LABEL_14:

LABEL_22:
      goto LABEL_23;
    }

    if (!v10)
    {
      goto LABEL_23;
    }

    v29 = *(a1 + 32);
    v12 = [*(a1 + 40) requestID];
    v13 = +[NSDate date];
    [v13 timeIntervalSinceDate:*(a1 + 48)];
    v39 = 138544130;
    v40 = v29;
    v41 = 2114;
    v42 = v12;
    v43 = 2112;
    v44 = v6;
    v45 = 2048;
    v46 = v30;
    v31 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v32 = v9;
    v33 = 42;
    goto LABEL_21;
  }

  v19 = [v6 error];

  v20 = [v5 debugName];

  v21 = _MRLogForCategory();
  v9 = v21;
  if (!v19)
  {
    v26 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (!v26)
      {
        goto LABEL_23;
      }

      v27 = *(a1 + 32);
      v12 = [*(a1 + 40) requestID];
      v13 = [v5 debugName];
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:*(a1 + 48)];
      v39 = 138544130;
      v40 = v27;
      v41 = 2114;
      v42 = v12;
      v43 = 2114;
      v44 = v13;
      v45 = 2048;
      v46 = v28;
      v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v17 = v9;
      v18 = 42;
      goto LABEL_13;
    }

    if (!v26)
    {
      goto LABEL_23;
    }

    v34 = *(a1 + 32);
    v12 = [*(a1 + 40) requestID];
    v13 = +[NSDate date];
    [v13 timeIntervalSinceDate:*(a1 + 48)];
    v39 = 138543874;
    v40 = v34;
    v41 = 2114;
    v42 = v12;
    v43 = 2048;
    v44 = v35;
    v31 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v32 = v9;
    v33 = 32;
LABEL_21:
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, &v39, v33);
    goto LABEL_22;
  }

  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_23;
    }

    v23 = *(a1 + 32);
    v12 = [*(a1 + 40) requestID];
    v13 = [v6 error];
    v14 = [v5 debugName];
    v24 = +[NSDate date];
    [v24 timeIntervalSinceDate:*(a1 + 48)];
    v39 = 138544386;
    v40 = v23;
    v41 = 2114;
    v42 = v12;
    v43 = 2114;
    v44 = v13;
    v45 = 2114;
    v46 = v14;
    v47 = 2048;
    v48 = v25;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v39, 0x34u);

    goto LABEL_14;
  }

  if (v22)
  {
    sub_1003B00A4(a1, v6, v9);
  }

LABEL_23:

  v36 = *(a1 + 56);
  v37 = [v6 error];
  [v36 trackWithError:v37];

  v38 = *(a1 + 64);
  if (v38)
  {
    (*(v38 + 16))(v38, v5, v6);
  }
}

void sub_1001A3944(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[MRCommandResult alloc] initWithError:v3];

  (*(v2 + 16))(v2, 0, v4);
}

void sub_1001A39C8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001A3A40(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[MRCommandResult alloc] initWithError:v3];

  (*(v2 + 16))(v2, 0, v4);
}

void sub_1001A3AC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) connect];
  [v7 start];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A3BF4;
  v11[3] = &unk_1004C0E00;
  v8 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v5;
  v14 = *(a1 + 48);
  v18 = *(a1 + 72);
  v15 = *(a1 + 56);
  v16 = v6;
  v17 = *(a1 + 64);
  v9 = v6;
  v10 = v5;
  [v10 connectToExternalDeviceWithOptions:0 details:v8 completion:v11];
}

void sub_1001A3BF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connect];
  [v4 endWithError:v3];

  if (v3)
  {
    v5 = *(a1 + 72);
    v6 = [v3 mr_errorByEnvelopingWithMRError:100];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v7 = [*(a1 + 32) sendCommand];
    [v7 start];

    v6 = [[MRDestination alloc] initWithEndpoint:*(a1 + 40)];
    v8 = [*(a1 + 48) client];
    [v6 setClient:v8];

    v9 = [*(a1 + 48) player];
    [v6 setPlayer:v9];

    v10 = [[MRNowPlayingRequest alloc] initWithDestination:v6];
    v11 = *(a1 + 80);
    v12 = *(a1 + 56);
    v13 = qos_class_self();
    v14 = dispatch_get_global_queue(v13, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001A3DC8;
    v15[3] = &unk_1004B78B0;
    v16 = *(a1 + 32);
    v17 = *(a1 + 64);
    [v10 sendCommand:v11 options:v12 queue:v14 completion:v15];
  }
}

void sub_1001A3DC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 sendCommand];
  v5 = [v6 error];
  [v4 endWithError:v5];

  (*(*(a1 + 40) + 16))();
}

id sub_1001A3E60(uint64_t a1)
{
  if ([*(a1 + 32) _isRequestForCompanionOrigin:*(a1 + 40)])
  {
    [*(a1 + 48) setRequestForCompanionOrigin:1];
    v2 = [[MROrigin alloc] initWithIdentifier:1129140302 type:1 displayName:&stru_1004D2058];
  }

  else if ([*(a1 + 32) _isRequestForLocalOrigin:*(a1 + 40)])
  {
    [*(a1 + 48) setRequestForLocalOrigin:1];
    v2 = +[MROrigin localOrigin];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1001A3F04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 sendCommand];
  v6 = [v4 error];
  [v5 endWithError:v6];

  v7 = *(a1 + 40);
  v8 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  (*(v7 + 16))(v7, v8, v4);
}

void sub_1001A3FBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) createPartialEndpoint];
  [v7 end];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001A40BC;
  v13[3] = &unk_1004C0E78;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v5;
  v15 = v9;
  v16 = v6;
  v10 = *(v8 + 16);
  v11 = v6;
  v12 = v5;
  v10(v8, v12, v13);
}

uint64_t sub_1001A40BC(void *a1)
{
  v2 = a1[4];
  (*(a1[5] + 16))();
  v3 = *(a1[6] + 16);

  return v3();
}

void sub_1001A4110(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [*(a1 + 32) createPartialEndpoint];
  [v4 endWithError:v7];

  v5 = [*(a1 + 32) createEndpointWithCurrentTopology];
  [v5 endWithError:v7];

  v6 = v7;
  if (v7)
  {
    (*(*(a1 + 40) + 16))();
    v6 = v7;
  }
}

void sub_1001A41A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) createPartialEndpoint];
  [v7 end];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001A42A4;
  v13[3] = &unk_1004C0E78;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v5;
  v15 = v9;
  v16 = v6;
  v10 = *(v8 + 16);
  v11 = v6;
  v12 = v5;
  v10(v8, v12, v13);
}

uint64_t sub_1001A42A4(void *a1)
{
  v2 = a1[4];
  (*(a1[5] + 16))();
  v3 = *(a1[6] + 16);

  return v3();
}

void sub_1001A42F8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [*(a1 + 32) createPartialEndpoint];
  [v4 endWithError:v7];

  v5 = [*(a1 + 32) createOptimizedEndpoint];
  [v5 endWithError:v7];

  v6 = v7;
  if (v7)
  {
    (*(*(a1 + 40) + 16))();
    v6 = v7;
  }
}

void sub_1001A4C48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [v5 msv_firstWhere:&stru_1004C0EE0];
    v7 = [v8 error];

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v9 = [v5 msv_firstWhere:&stru_1004C0F00];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;

LABEL_6:
  if ([v5 count] || (v7 = objc_msgSend([NSError alloc], "initWithMRError:", 26)) == 0)
  {
    v11 = [v5 mr_formattedDebugDescription];

    v12 = _MRLogForCategory();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v14 = *(a1 + 32);
        v15 = [*(a1 + 40) requestID];
        v16 = [v5 mr_formattedDebugDescription];
        v17 = +[NSDate date];
        [v17 timeIntervalSinceDate:*(a1 + 48)];
        v24 = 138544130;
        v25 = v14;
        v26 = 2114;
        v27 = v15;
        v28 = 2112;
        v29 = v16;
        v30 = 2048;
        v31 = v18;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", &v24, 0x2Au);

LABEL_15:
      }
    }

    else if (v13)
    {
      v19 = *(a1 + 32);
      v15 = [*(a1 + 40) requestID];
      v16 = +[NSDate date];
      [v16 timeIntervalSinceDate:*(a1 + 48)];
      v24 = 138543874;
      v25 = v19;
      v26 = 2114;
      v27 = v15;
      v28 = 2048;
      v29 = v20;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v24, 0x20u);
      goto LABEL_15;
    }

    v7 = 0;
    goto LABEL_17;
  }

LABEL_11:
  v12 = _MRLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1003B01A0(a1, v7, v12);
  }

LABEL_17:

  v21 = [v5 msv_filter:&stru_1004C0F20];
  [*(a1 + 56) setNumberOfErrorsAtTimeout:{objc_msgSend(v21, "count")}];

  v22 = [v5 msv_filter:&stru_1004C0F40];
  [*(a1 + 56) setNumberOfSuccessAtTimeout:{objc_msgSend(v22, "count")}];

  [*(a1 + 56) setNumberOfPendingAtTimeout:{objc_msgSend(*(a1 + 56), "numberOfEndpoints") - objc_msgSend(v5, "count")}];
  [*(a1 + 56) trackWithError:v7];
  v23 = *(a1 + 64);
  if (v23)
  {
    (*(v23 + 16))(v23, v5, v7);
  }
}

BOOL sub_1001A4F7C(id a1, MRCommandResult *a2)
{
  v2 = [(MRCommandResult *)a2 error];
  v3 = v2 != 0;

  return v3;
}

BOOL sub_1001A4FB4(id a1, MRCommandResult *a2)
{
  v2 = [(MRCommandResult *)a2 error];
  v3 = v2 == 0;

  return v3;
}

BOOL sub_1001A4FEC(id a1, MRCommandResult *a2)
{
  v2 = [(MRCommandResult *)a2 error];
  v3 = v2 != 0;

  return v3;
}

BOOL sub_1001A5024(id a1, MRCommandResult *a2)
{
  v2 = [(MRCommandResult *)a2 error];
  v3 = v2 == 0;

  return v3;
}

void sub_1001A505C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = [*(a1 + 32) copy];
  objc_sync_exit(v3);

  (*(*(a1 + 40) + 16))();
}

void sub_1001A5100(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001A5178(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) sendCommands];
  [v4 start];

  v5 = dispatch_group_create();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        dispatch_group_enter(v5);
        v11 = *(a1 + 40);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1001A53FC;
        v19[3] = &unk_1004C0F90;
        v20 = v5;
        v21 = v10;
        v24 = *(a1 + 72);
        v22 = *(a1 + 48);
        v23 = *(a1 + 56);
        [v10 connectToExternalDeviceWithOptions:0 details:v11 completion:v19];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v12 = qos_class_self();
  v13 = dispatch_get_global_queue(v12, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A5638;
  block[3] = &unk_1004B71F8;
  v16 = *(a1 + 56);
  v17 = *(a1 + 32);
  v18 = *(a1 + 64);
  dispatch_group_notify(v5, v13, block);
}

void sub_1001A53FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MRCommandResult alloc];
    v5 = [v3 mr_errorByEnvelopingWithMRError:100];
    v6 = [v4 initWithError:v5];

    v7 = *(a1 + 56);
    objc_sync_enter(v7);
    [*(a1 + 56) addObject:v6];
    objc_sync_exit(v7);
  }

  else
  {
    dispatch_group_enter(*(a1 + 32));
    v6 = [[MRDestination alloc] initWithEndpoint:*(a1 + 40)];
    v7 = [[MRNowPlayingRequest alloc] initWithDestination:v6];
    v8 = *(a1 + 64);
    v9 = *(a1 + 48);
    v10 = qos_class_self();
    v11 = dispatch_get_global_queue(v10, 0);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001A55B0;
    v12[3] = &unk_1004B7478;
    v13 = *(a1 + 56);
    v14 = *(a1 + 32);
    [v7 sendCommand:v8 options:v9 queue:v11 completion:v12];
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1001A55B0(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  [*(a1 + 32) addObject:v4];
  objc_sync_exit(v3);

  dispatch_group_leave(*(a1 + 40));
}

void sub_1001A5638(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v6 = [*(a1 + 32) copy];
  objc_sync_exit(v2);

  v3 = [*(a1 + 40) sendCommands];
  [v3 end];

  v4 = [v6 msv_filter:&stru_1004C0FB0];
  [*(a1 + 40) setNumberOfErrorsAtCompletion:{objc_msgSend(v4, "count")}];

  v5 = [v6 msv_filter:&stru_1004C0FD0];
  [*(a1 + 40) setNumberOfSuccessAtCompletion:{objc_msgSend(v5, "count")}];

  if ([*(a1 + 40) tracked])
  {
    [*(a1 + 40) setTracked:0];
    [*(a1 + 40) track];
  }

  (*(*(a1 + 48) + 16))();
}

BOOL sub_1001A5758(id a1, MRCommandResult *a2)
{
  v2 = [(MRCommandResult *)a2 error];
  v3 = v2 != 0;

  return v3;
}

BOOL sub_1001A5790(id a1, MRCommandResult *a2)
{
  v2 = [(MRCommandResult *)a2 error];
  v3 = v2 == 0;

  return v3;
}

id sub_1001A57C8(uint64_t a1)
{
  if ([*(a1 + 32) _isRequestForCurrentCongifuration:*(a1 + 40)])
  {
    [*(a1 + 48) setRequestForCurrentConfiguration:1];
LABEL_5:
    v2 = +[MROrigin localOrigin];
    goto LABEL_6;
  }

  if ([*(a1 + 32) _isRequestForLocalOrigin:*(a1 + 40)])
  {
    [*(a1 + 48) setRequestForLocalOrigin:1];
    goto LABEL_5;
  }

  if ([*(a1 + 32) _isRequestForCompanionOrigin:*(a1 + 40)])
  {
    [*(a1 + 48) setRequestForCompanionOrigin:1];
    v2 = [[MROrigin alloc] initWithIdentifier:1129140302 type:1 displayName:&stru_1004D2058];
  }

  else
  {
    v2 = 0;
  }

LABEL_6:

  return v2;
}

void sub_1001A5888(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 sendCommands];
  v6 = [v4 error];
  [v5 endWithError:v6];

  v7 = *(a1 + 40);
  v9 = v4;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  (*(v7 + 16))(v7, v8, 0);
}

void sub_1001A5968(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v36 = a2;
  v37 = a3;
  v8 = a5;
  v9 = [*(a1 + 32) discoverOutputDevices];
  v10 = [v8 mr_errorByEnvelopingWithMRError:47];
  [v9 endWithError:v10];

  v11 = objc_alloc_init(NSMutableArray);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v35 = a1;
  v12 = *(a1 + 40);
  v13 = [v12 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v39 + 1) + 8 * i);
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_1001A5DF0;
        v38[3] = &unk_1004B9698;
        v38[4] = v17;
        v18 = [v37 msv_firstWhere:v38];
        if (!v18)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    v19 = [[NSString alloc] initWithFormat:@"Unable to find outputDeviceUIDs=%@", v11];
    v20 = _MRLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 48);
      v22 = [*(v35 + 56) requestID];
      *buf = 138543874;
      v44 = v21;
      v45 = 2114;
      v46 = v22;
      v47 = 2112;
      v48 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    [*(v35 + 32) setNumberOfMissingOutputDeviceUIDs:{objc_msgSend(v11, "count")}];
  }

  v23 = [NSString alloc];
  v24 = [v36 msv_map:&stru_1004C1018];
  v25 = [v23 initWithFormat:@"Resolved outputDevices=%@", v24];

  v26 = _MRLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(v35 + 48);
    v28 = [*(v35 + 56) requestID];
    *buf = 138543874;
    v44 = v27;
    v45 = 2114;
    v46 = v28;
    v47 = 2112;
    v48 = v25;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  [*(v35 + 32) setNumberOfDiscoveredOutputDeviceUIDs:{objc_msgSend(v36, "count")}];
  v29 = [NSString alloc];
  v30 = [v37 msv_map:&stru_1004C1038];
  v31 = [v29 initWithFormat:@"Resolved endpoints=%@", v30];

  v32 = _MRLogForCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(v35 + 48);
    v34 = [*(v35 + 56) requestID];
    *buf = 138543874;
    v44 = v33;
    v45 = 2114;
    v46 = v34;
    v47 = 2112;
    v48 = v31;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  [*(v35 + 32) setNumberOfEndpoints:{objc_msgSend(v37, "count")}];
  (*(*(v35 + 64) + 16))();
}

BOOL sub_1001A5FD4(id a1, NSString *a2)
{
  v2 = a2;
  v3 = +[MRAVOutputDevice localDeviceUID];
  v4 = [(NSString *)v2 isEqualToString:v3];

  return v4;
}

uint64_t sub_1001A616C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) WHAIdentifier];
  if ([v4 isEqualToString:v3])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqualToString:@"CMPN"];
  }

  return v5;
}

uint64_t sub_1001A62C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) deviceUID];
  if ([v4 isEqualToString:v3])
  {
    v5 = 1;
  }

  else
  {
    v6 = [*(a1 + 32) clusterID];
    v5 = [v6 isEqualToString:v3];
  }

  return v5;
}

void sub_1001A669C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001A66C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained invalidate];
    WeakRetained = v2;
  }
}

void sub_1001A6A1C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003B0288(a1);
    }
  }
}

void sub_1001A6BB8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003B02F4(a1);
    }
  }
}

void sub_1001A6D30(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003B0360(a1);
    }
  }
}

void sub_1001A70A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] volume request: %@; error: %@", &v6, 0x16u);
  }
}

void sub_1001A7984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001A79B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] <%p> XPC interrupted.", &v4, 0xCu);
  }

  v3 = [WeakRetained xpcConnection];
  [v3 invalidate];
}

void sub_1001A7A80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] <%p> XPC invalidated.", &v4, 0xCu);
  }

  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    v3 = *&WeakRetained[6]._os_unfair_lock_opaque;
    *&WeakRetained[6]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(WeakRetained + 4);
  }
}

void sub_1001A7BF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] <%p> Server proxy error %@.", &v6, 0x16u);
  }
}

void sub_1001A7D68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] <%p> Server proxy error %@.", &v6, 0x16u);
  }
}

void sub_1001A8084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001A8650(id a1)
{
  v1 = objc_alloc_init(MRDGroupSessionEligibilityMonitor);
  v2 = qword_100529700;
  qword_100529700 = v1;
}

void sub_1001A8854(uint64_t a1)
{
  [*(a1 + 32) initializeObserversAndState];
  v2 = [*(a1 + 32) workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A88FC;
  block[3] = &unk_1004B6D08;
  v4 = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_1001A8C88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1001A8CB8(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) manateeAvailable];
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[MRDGroupSessionEligibilityMonitor] SystemMonitor.manateeChangedHandler. Manatee available: %{BOOL}u", v5, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reevaluateState];
}

void sub_1001A8D7C(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) manateeAvailable];
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[MRDGroupSessionEligibilityMonitor] SystemMonitor.activateWithCompletion. Manatee available: %{BOOL}u", v5, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reevaluateState];
}

void sub_1001A8FF0(uint64_t a1)
{
  [*(*(a1 + 32) + 56) addObject:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A90C4;
  block[3] = &unk_1004B69D0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v10 = v2;
  v6 = v2;
  dispatch_async(v3, block);
}

void sub_1001A9244(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) eligibilityMonitor:*(a1 + 40) eligibilityStatusDidChange:{*(a1 + 48), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

id sub_1001A9718(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v11 = 0;
  v4 = a2;
  v5 = [v3 hostingStateForUserState:v4 reason:&v11];
  v6 = v11;
  v7 = *(a1 + 32);
  v8 = [v4 identifier];

  [v7 appendFormat:@"\n  %@> %@", v8, v6];
  v9 = [NSNumber numberWithUnsignedInteger:v5];

  return v9;
}

void sub_1001AA6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001AA73C(uint64_t a1, void *a2)
{
  v3 = [a2 msv_filter:&stru_1004C1418];
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 count];
    v6 = [v3 msv_map:&stru_1004C1438];
    v10 = 134218242;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRRC] addOutputDevicesAddedCallback: (%lu) %@", &v10, 0x16u);
  }

  v7 = [v3 msv_map:&stru_1004C1478];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained recommender];
  [v9 updateRouteCandidates:v7];
}

NSString *__cdecl sub_1001AA890(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  v3 = [(MRAVOutputDevice *)v2 localizedName];
  v4 = [(MRAVOutputDevice *)v2 uid];

  v5 = [NSString stringWithFormat:@"%@ - %@", v3, v4];

  return v5;
}

MRIRRoute *__cdecl sub_1001AA924(id a1, MRAVOutputDevice *a2)
{
  v6 = a2;
  v2 = a2;
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4 = [MRIRRoute routeWithOutputDevices:v3, v6];

  return v4;
}

void sub_1001AABDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = MREndpointConnectionReasonUserInfoKey;
  v11 = @"intelligentRoutingRecommendationController";
  v4 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001AACFC;
  v7[3] = &unk_1004B8690;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v6 connectToExternalDeviceWithUserInfo:v4 completion:v7];
}

void sub_1001AACFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  if (v3)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = [*(a1 + 32) activeSystemEndpoint];
      v13 = 138413058;
      v14 = v7;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v3;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Failed to connect to active system endpoint %@<%@> with error %@. Reset to %@.", &v13, 0x2Au);
    }
  }

  else
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      v12 = [*(a1 + 32) activeSystemEndpoint];
      v13 = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Setting active system endpoint to %@<%@> (old value: %@)", &v13, 0x20u);
    }

    [*(a1 + 32) setActiveSystemEndpoint:*(a1 + 40)];
  }

  objc_sync_exit(v4);
}

void sub_1001AB8D4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && [v8 count])
  {
    [*(a1 + 32) signpostEndWillShowBanner:1];
    v10 = [v7 recommendationType];
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v38 = +[MRDMediaBundleManager shared];
        v39 = [v38 cachedEligibilityOf:*(a1 + 40)];

        if ([v39 isEligibleForCallToAction])
        {
          v40 = [*(a1 + 32) shouldUseVideoSymbolForDevices:v8 bundleIdentifier:*(a1 + 40)];
          v41 = _MRLogForCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = @"audio";
            if (v40)
            {
              v42 = @"video";
            }

            *buf = 138412546;
            *&buf[4] = v7;
            *&buf[12] = 2112;
            *&buf[14] = v42;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[MRDRRC] call to action request for: %@ - %@", buf, 0x16u);
          }

          v43 = [*(a1 + 32) mediaActivityManager];
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_1001AC9C8;
          v48[3] = &unk_1004C15A8;
          v48[4] = *(a1 + 32);
          v49 = v7;
          v50 = *(a1 + 40);
          v51 = *(a1 + 48);
          [v43 presentControlCenterCallToActionVideo:v40 completion:v48];
        }

        else
        {
          v44 = _MRLogForCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = *(a1 + 40);
            *buf = 138412802;
            *&buf[4] = v7;
            *&buf[12] = 2112;
            *&buf[14] = v45;
            *&buf[22] = 2112;
            v82 = v39;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[MRDRRC] dropping call to action request for: %@ - %@ is not eligible: %@", buf, 0x20u);
          }
        }
      }

      else if (v10 == 3)
      {
        v28 = _MRLogForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[MRDRRC] 𝝙: %@ ", buf, 0xCu);
        }

        v29 = [*(a1 + 32) mediaActivityManager];
        v30 = [v7 route];
        v31 = [*(a1 + 32) activeSystemEndpoint];
        v75[0] = _NSConcreteStackBlock;
        v75[1] = 3221225472;
        v75[2] = sub_1001AC0C8;
        v75[3] = &unk_1004C14E0;
        v76 = v7;
        v32 = v8;
        v33 = *(a1 + 32);
        v77 = v32;
        v78 = v33;
        v79 = *(a1 + 40);
        v80 = *(a1 + 48);
        [v29 postDeltaBannerRequestForRoute:v30 devices:v32 endpoint:v9 activeSystemEndpoint:v31 completion:v75];
      }
    }

    else if (v10)
    {
      if (v10 == 1)
      {
        v46 = dispatch_group_create();
        dispatch_group_enter(v46);
        v11 = +[NSUUID UUID];
        v12 = _MRLogForCategory();
        v13 = [v11 hash];
        if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v14 = v13;
          if (os_signpost_enabled(v12))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "ApplyRouteRecommendation", "", buf, 2u);
          }
        }

        v15 = *(a1 + 32);
        v16 = [v7 route];
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_1001AC54C;
        v64[3] = &unk_1004C1530;
        v17 = v7;
        v65 = v17;
        v18 = v46;
        v66 = v18;
        v47 = v11;
        v67 = v47;
        [v15 performTopologyModificationToRoute:v16 devices:v8 endpoint:v9 requestName:@"AutoRoute" completion:v64];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v82 = 0;
        dispatch_group_enter(v18);
        v19 = [*(a1 + 32) mediaActivityManager];
        v20 = [v17 route];
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_1001AC6DC;
        v58[3] = &unk_1004C1558;
        v21 = v17;
        v63 = buf;
        v22 = *(a1 + 32);
        v59 = v21;
        v60 = v22;
        v61 = v8;
        v23 = v18;
        v62 = v23;
        [v19 postAutoRouteBannerRequestForRoute:v20 devices:v61 endpoint:v9 completion:v58];

        v24 = [*(a1 + 32) queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001AC848;
        block[3] = &unk_1004C1580;
        v25 = v21;
        v56 = buf;
        v26 = *(a1 + 32);
        v27 = *(a1 + 40);
        v53 = v25;
        v54 = v26;
        v55 = v27;
        v57 = *(a1 + 48);
        dispatch_group_notify(v23, v24, block);

        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
      v34 = [*(a1 + 32) mediaActivityManager];
      v35 = [v7 route];
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_1001AC400;
      v68[3] = &unk_1004C1508;
      v36 = v7;
      v37 = *(a1 + 32);
      v69 = v36;
      v70 = v37;
      v71 = v8;
      v72 = v9;
      v73 = *(a1 + 40);
      v74 = *(a1 + 48);
      [v34 postOneTapSuggestionBannerRequestForRoute:v35 devices:v71 endpoint:v72 completion:v68];
    }
  }

  else
  {
    [*(a1 + 32) signpostEndWillShowBanner:0];
  }
}

void sub_1001AC0C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412802;
    v30 = v7;
    v31 = 2048;
    v32 = a2;
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDRRC] recommendation𝝙: %@ got result: %lu error %@", buf, 0x20u);
  }

  v26 = a2;
  v27 = v5;

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001AC390;
  v28[3] = &unk_1004B8A40;
  v8 = *(a1 + 40);
  v28[4] = *(a1 + 48);
  v9 = [v8 msv_filter:v28];
  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 138412546;
    v30 = v11;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDRRC] recommendation𝝙: %@ d2a: %@", buf, 0x16u);
  }

  v12 = [NSSet setWithArray:*(a1 + 40)];
  v13 = [*(a1 + 48) activeSystemEndpoint];
  v14 = [v13 outputDevices];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  v17 = [NSSet setWithArray:v16];

  v18 = [v12 setByAddingObjectsFromSet:v17];
  v19 = [v18 allObjects];
  v20 = [MRIRRoute routeWithOutputDevices:v19];

  v21 = *(a1 + 48);
  v22 = [v21 activeSystemEndpoint];
  v23 = *(a1 + 56);
  v24 = *(a1 + 64);
  v25 = [*(a1 + 32) contextIdentifier];
  [v21 handleDeltaResult:v26 forRoute:v20 devicesToAdd:v9 sourceEndpoint:v22 primaryBundleIdentifier:v23 isOutsideApp:v24 contextIdentifier:v25];
}

uint64_t sub_1001AC390(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 activeSystemEndpoint];
  v5 = [v3 uid];

  LODWORD(v3) = [v4 containsOutputDeviceWithUID:v5];
  return v3 ^ 1;
}

void sub_1001AC400(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412802;
    v16 = v7;
    v17 = 2048;
    v18 = a2;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDRRC] recommendation: %@ got result: %lu error %@", buf, 0x20u);
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) route];
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = [*(a1 + 32) contextIdentifier];
  [v8 handleResult:a2 forRoute:v9 devices:v10 endpoint:v11 primaryBundleIdentifier:v12 isOutsideApp:v13 contextIdentifier:v14];
}

void sub_1001AC54C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v17 = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v6;
      v10 = "[MRDRRC] auto route topology modification: error setting ASE to %@ - %@";
      v11 = v7;
      v12 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
    }
  }

  else if (v8)
  {
    v13 = *(a1 + 32);
    v17 = 138412290;
    v18 = v13;
    v10 = "[MRDRRC] auto route topology modification: successfully set ASE to %@";
    v11 = v7;
    v12 = 12;
    goto LABEL_6;
  }

  dispatch_group_leave(*(a1 + 40));
  v14 = _MRLogForCategory();
  v15 = [*(a1 + 48) hash];
  if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v14))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v16, "ApplyRouteRecommendation", "Type = AutoRoute", &v17, 2u);
    }
  }
}

void sub_1001AC6DC(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    if (a2 > 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(&off_1004C1768 + a2);
    }

    v9 = @"nil";
    v14 = 138412802;
    if (v5)
    {
      v9 = v5;
    }

    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDRRC] auto route banner: %@ got result:%@ error:%@", &v14, 0x20u);
  }

  *(*(*(a1 + 64) + 8) + 24) = a2;
  if (a2 != 1)
  {
    v10 = *(a1 + 48);
    v11 = [*(a1 + 40) routedBackgroundActivityManager];
    [v11 setOptimisticDevices:v10];

    v12 = [*(a1 + 32) route];
    v13 = [*(a1 + 40) routedBackgroundActivityManager];
    [v13 setOptimisticRoute:v12];
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_1001AC848(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 56) + 8) + 24);
    if (v4 > 4)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(&off_1004C1768 + v4);
    }

    v14 = 138412546;
    v15 = v3;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRDRRC] auto route b+tm: %@ will handle result:%@", &v14, 0x16u);
  }

  v6 = [*(a1 + 40) routedBackgroundActivityManager];
  [v6 setOptimisticDevices:0];

  v7 = [*(a1 + 40) routedBackgroundActivityManager];
  [v7 setOptimisticRoute:0];

  v8 = *(*(*(a1 + 56) + 8) + 24);
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) route];
  v11 = *(a1 + 48);
  v12 = *(a1 + 64);
  v13 = [*(a1 + 32) contextIdentifier];
  [v9 handleAutoRouteResult:v8 forRoute:v10 primaryBundleIdentifier:v11 isOutsideApp:v12 contextIdentifier:v13];
}

void sub_1001AC9C8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v7 = [*(a1 + 40) route];
    v4 = *(a1 + 56);
    v5 = *(a1 + 48);
    v6 = [*(a1 + 40) contextIdentifier];
    [v3 sendEventForCallToActionForRouteCandidate:v7 bundleIdentifier:v5 isOutsideApp:v4 contextIdentifier:v6];
  }
}

void sub_1001ACD04(id a1, MRUpdateActiveSystemEndpointResponse *a2)
{
  v2 = a2;
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDRRC] SetASEToLocal result: %@", &v4, 0xCu);
  }
}

void sub_1001ACE40(id a1, MRUpdateActiveSystemEndpointResponse *a2)
{
  v2 = a2;
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDRRC] ASE Clear result: %@", &v8, 0xCu);
  }

  v4 = [(MRUpdateActiveSystemEndpointResponse *)v2 error];

  if (!v4)
  {
    v5 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    v6 = [v5 outputDevices];
    v7 = [v6 msv_filter:&stru_1004C1630];

    [v5 removeOutputDevices:v7 initiator:@"RRCSAPRC" withReplyQueue:0 completion:&stru_1004C1650];
  }
}

void sub_1001ACF94(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Remove devices error: %@", &v4, 0xCu);
  }
}

void sub_1001AD694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001AD6D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    (*(v2 + 16))(v2, WeakRetained, v4);
  }
}

uint64_t sub_1001ADA58(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), a2);
  }

  return result;
}

void sub_1001ADBB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRRC] ASE Change result: %@", &v8, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 error];
    (*(v5 + 16))(v5, v6, v7);
  }
}

void sub_1001AEE1C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = _MRLogForCategory();
  v9 = v8;
  if (!v6)
  {
    v16 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v16)
      {
        goto LABEL_14;
      }

      v18 = a1[5];
      v17 = a1[6];
      v19 = a1[4];
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:a1[7]];
      v28 = 138544130;
      v29 = v18;
      v30 = 2114;
      v31 = v17;
      v32 = 2114;
      v33 = v19;
      v34 = 2048;
      v35 = v20;
      v21 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v22 = v9;
      v23 = 42;
    }

    else
    {
      if (!v16)
      {
        goto LABEL_14;
      }

      v24 = a1[5];
      v25 = a1[6];
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:a1[7]];
      v28 = 138543874;
      v29 = v24;
      v30 = 2114;
      v31 = v25;
      v32 = 2048;
      v33 = v26;
      v21 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v22 = v9;
      v23 = 32;
    }

    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, &v28, v23);
    goto LABEL_13;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    v12 = a1[5];
    v11 = a1[6];
    v13 = a1[4];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:a1[7]];
    v28 = 138544386;
    v29 = v12;
    v30 = 2114;
    v31 = v11;
    v32 = 2114;
    v33 = v6;
    v34 = 2114;
    v35 = v13;
    v36 = 2048;
    v37 = v15;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v28, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v10)
  {
    sub_1003B05FC(a1);
  }

LABEL_14:

  v27 = a1[8];
  if (v27)
  {
    (*(v27 + 16))(v27, v5, v6);
  }
}

void sub_1001AF09C(void *a1)
{
  v2 = MRMediaRemoteErrorFromCommandStatuses();
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = 138413058;
    v8 = v4;
    v9 = 2112;
    v10 = v2;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Pause for %@ completed, error: %@ request: %@ - %@", &v7, 0x2Au);
  }
}

void sub_1001AF5C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1001AF5EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v6 = *(a1 + 32);
    v30 = 138412802;
    v31 = WeakRetained;
    v32 = 2112;
    v33 = v6;
    v34 = 2112;
    v35 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRRC] delta add to %@ of %@ finished: %@", &v30, 0x20u);
  }

  v7 = *(a1 + 40);
  v8 = _MRLogForCategory();
  v9 = v8;
  if (!v3)
  {
    v16 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v16)
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 48);
      v17 = *(a1 + 56);
      v19 = *(a1 + 40);
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:*(a1 + 64)];
      v30 = 138544130;
      v31 = v18;
      v32 = 2114;
      v33 = v17;
      v34 = 2114;
      v35 = v19;
      v36 = 2048;
      v37 = v20;
      v21 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v22 = v9;
      v23 = 42;
    }

    else
    {
      if (!v16)
      {
        goto LABEL_16;
      }

      v24 = *(a1 + 48);
      v25 = *(a1 + 56);
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:*(a1 + 64)];
      v30 = 138543874;
      v31 = v24;
      v32 = 2114;
      v33 = v25;
      v34 = 2048;
      v35 = v26;
      v21 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v22 = v9;
      v23 = 32;
    }

    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, &v30, v23);
    goto LABEL_15;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v10)
    {
      v12 = *(a1 + 48);
      v11 = *(a1 + 56);
      v13 = *(a1 + 40);
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:*(a1 + 64)];
      v30 = 138544386;
      v31 = v12;
      v32 = 2114;
      v33 = v11;
      v34 = 2114;
      v35 = v3;
      v36 = 2114;
      v37 = v13;
      v38 = 2048;
      v39 = v15;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v30, 0x34u);
LABEL_15:
    }
  }

  else if (v10)
  {
    sub_1003B06AC(a1);
  }

LABEL_16:

  v27 = _MRLogForCategory();
  v28 = [*(a1 + 72) hash];
  if ((v28 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v29 = v28;
    if (os_signpost_enabled(v27))
    {
      LOWORD(v30) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, v29, "ApplyRouteRecommendation", "Type = DeltaBanner", &v30, 2u);
    }
  }
}

void sub_1001AFB90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) routedBackgroundActivityManager];
  [v7 setOptimisticDevices:0];

  v8 = [*(a1 + 32) routedBackgroundActivityManager];
  [v8 setOptimisticRoute:0];

  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    v14 = 138412802;
    v15 = v5;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDRRC] topology modification to %@ (%@) finished: %@", &v14, 0x20u);
  }

  v11 = _MRLogForCategory();
  v12 = [*(a1 + 48) hash];
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      LOWORD(v14) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v13, "ApplyRouteRecommendation", "Type = OneTapSuggestion", &v14, 2u);
    }
  }
}

void sub_1001B0120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B0144(uint64_t a1)
{
  v2 = +[MRDDisplayMonitor sharedMonitor];
  if ([v2 displayOn])
  {
    v3 = +[MRDDisplayMonitor sharedMonitor];
    v4 = [v3 presentedBundleIdentifiers];
    v5 = [v4 containsObject:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 40) isRoutePlaying:*(a1 + 48)];
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    if (v5)
    {
      v9 = @"is";
    }

    else
    {
      v9 = @"is not";
    }

    v10 = [*(a1 + 48) routeIdentifier];
    v11 = v10;
    v15 = 138413058;
    if (v6)
    {
      v12 = @"is";
    }

    else
    {
      v12 = @"is not";
    }

    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Timer fired %@ %@ visible, %@ %@ playing", &v15, 0x2Au);
  }

  if (((v5 | v6) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained stopAirPlayingAndRemoteControlling];
  }

  v14 = objc_loadWeakRetained((a1 + 56));
  [v14 clearUnusedAutoRoute];
}

void sub_1001B0730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, char a15)
{
  _Block_object_dispose(&a15, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1001B0780()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100529708;
  v7 = qword_100529708;
  if (!qword_100529708)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001B1370;
    v3[3] = &unk_1004B8728;
    v3[4] = &v4;
    sub_1001B1370(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1001B0848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B0860(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMediaControls:0];
}

void sub_1001B1370(uint64_t a1)
{
  sub_1001B13C8();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaControlsConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100529708 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1003A5BFC();
    sub_1001B13C8();
  }
}

void sub_1001B13C8()
{
  v1[0] = 0;
  if (!qword_100529710)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_1001B14C4;
    v1[4] = &unk_1004B82A0;
    v1[5] = v1;
    v2 = off_1004C1750;
    v3 = 0;
    qword_100529710 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_100529710)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_1001B14C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100529710 = result;
  return result;
}

MRDRemoteDisplayPairingAction *sub_1001B1538(uint64_t a1)
{
  sub_1001B13C8();
  result = objc_getClass("MPMediaControls");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100529718 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1003A5C24();
    return [(MRDRemoteDisplayPairingAction *)v3 init];
  }

  return result;
}

void sub_1001B1994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B19B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 2) invalidate];
    v6 = v5[2];
    v5[2] = 0;

    [v5 setConnecting:0];
  }

  v7 = _MRLogForCategory();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003B07A0(v3, v8);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRemoteDisplayPairingAction] Guest pairing successfully connected", v10, 2u);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

id sub_1001B1B38(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [NSString stringWithFormat:@"InvalidState-%ld", a1];
  }

  else
  {
    v2 = *(&off_1004C17D0 + a1);
  }

  return v2;
}

void sub_1001B28D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003B0818(a1, v3, v4);
    }
  }
}

void sub_1001B2CB4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 session:*(a1 + 40) didUpdatePendingParticipants:{*(a1 + 48), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

id sub_1001B3248(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_1001B328C(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 session:*(a1 + 40) didUpdatePendingParticipants:{*(a1 + 48), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

id sub_1001B36C8(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_1001B370C(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 session:*(a1 + 40) didUpdatePendingParticipants:{*(a1 + 48), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1001B3AE4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 sessionDidRemoveAllParticipants:{*(a1 + 40), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

id sub_1001B3D74(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1001B4254(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(os_unfair_lock_s *)WeakRetained setLowPowerDeferralTimer:0];
    os_unfair_lock_lock(v2 + 3);
    [(os_unfair_lock_s *)v2 reevaluateLowPowerMode];
    os_unfair_lock_unlock(v2 + 3);
    WeakRetained = v2;
  }
}

void sub_1001B42BC(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 session:*(a1 + 40) didChangeState:{*(a1 + 48), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1001B45E4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 session:*(a1 + 40) didUpdateParticipants:{*(a1 + 48), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

uint64_t sub_1001B47A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 localParticipant];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1;
}

void sub_1001B4960(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 session:*(a1 + 40) didUpdateMembers:{*(a1 + 48), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1001B4B98(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 session:*(a1 + 40) didUpdatePendingParticipants:{*(a1 + 48), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1001B4FFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  os_unfair_lock_lock(v5 + 3);
  if (v3)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1003B0984(v4);
    }

    [*v4 setLowPowerError:v3];
    v7 = [*v4 fastSyncSession];
    [v7 end];
  }

  else
  {
    [*v4 setIsLowPowerMode:0];
  }

  [*v4 setIsUpdatingLowPowerMode:0];
  [*v4 reevaluateLowPowerMode];
  os_unfair_lock_unlock((*v4 + 12));
}

void sub_1001B50C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  os_unfair_lock_lock(v5 + 3);
  if (v3)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1003B09F0(v4);
    }

    [*v4 setLowPowerError:v3];
  }

  else
  {
    [*v4 setIsLowPowerMode:1];
  }

  [*v4 setIsUpdatingLowPowerMode:0];
  [*v4 reevaluateLowPowerMode];
  os_unfair_lock_unlock((*v4 + 12));
}

void sub_1001B5248(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1001B5674(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
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

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = *(a1 + 40);
          v9 = *(a1 + 48);
          v10 = [*(a1 + 56) identifier];
          [v7 session:v8 didReceiveMessageData:v9 fromParticipant:v10];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

id sub_1001B59A8(uint64_t a1)
{
  v6[0] = kMREventGroupSessionJoinResponseSentByHostKey;
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isHosted]);
  v7[0] = v2;
  v6[1] = kMREventGroupSessionJoinResponseApprovedKey;
  v3 = [NSNumber numberWithBool:*(a1 + 40)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

id sub_1001B6AC4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001B6B84;
  v5[3] = &unk_1004B99A0;
  v5[4] = *(a1 + 32);
  v3 = [v2 addObserverForName:kMRDeviceInfoDidChangeNotification object:0 queue:0 usingBlock:v5];

  return [*(a1 + 32) _reevaluateWithReason:@"Startup"];
}

void sub_1001B6B84(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  [v2 _reevaluateWithReason:v3];
}

void sub_1001B6C64(uint64_t a1)
{
  v2 = [*(a1 + 32) operations];
  [v2 enumerateKeysAndObjectsUsingBlock:&stru_1004C1878];

  v3 = [*(a1 + 32) operations];
  [v3 removeAllObjects];

  v4 = [*(a1 + 32) relayConnectionsToSecondaries];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B6D4C;
  v6[3] = &unk_1004C18A0;
  v6[4] = *(a1 + 32);
  [v4 enumerateKeysAndObjectsUsingBlock:v6];

  v5 = [*(a1 + 32) relayConnectionsToSecondaries];
  [v5 removeAllObjects];
}

void sub_1001B6D4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = [[NSError alloc] initWithMRError:128];
  v5 = [v4 connection];
  [v5 removeObserver:*(a1 + 32)];

  v6 = [v4 connection];

  [v6 closeWithError:v7];
}

void sub_1001B6EE0(uint64_t a1)
{
  v2 = [*(a1 + 32) operations];
  v3 = [v2 count];

  if (v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = [*(a1 + 32) operations];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1001B7020;
    v14 = &unk_1004C18C8;
    v15 = v4;
    v6 = v4;
    [v5 enumerateKeysAndObjectsUsingBlock:&v11];

    [*(a1 + 40) appendFormat:@" operations=%@\n", v6, v11, v12, v13, v14];
  }

  v7 = [*(a1 + 32) relayConnectionsToSecondaries];

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) relayConnectionsToSecondaries];
    v10 = [v9 mr_formattedDebugDescription];
    [v8 appendFormat:@" relayConnectionsToSecondaries=%@", v10];
  }
}

void sub_1001B7020(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 operationCount])
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void sub_1001B7164(uint64_t a1)
{
  v2 = [*(a1 + 32) relayConnectionsToSecondaries];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001B7334;
  v11[3] = &unk_1004B9950;
  v12 = *(a1 + 40);
  v3 = [v2 msv_firstWhere:v11];

  if (v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDMRRelayRemoteControlService] Removing disconnected relayConnection=%@", buf, 0xCu);
    }

    v6 = [*(a1 + 32) relayConnectionsToSecondaries];
    v7 = [v3 first];
    [v6 removeObjectForKey:v7];

    v8 = [v3 second];
    v9 = [v8 connection];
    [v9 removeObserver:*(a1 + 32)];

    v10 = [[NSString alloc] initWithFormat:@"relayConnection did close with error=%@, connection=%@", *(a1 + 48), *(a1 + 40)];
    [*(a1 + 32) _reevaluateWithReason:v10];
  }
}

BOOL sub_1001B7334(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 connection];
  v5 = v4 == *(a1 + 32);

  return v5;
}

void sub_1001B73FC(uint64_t a1)
{
  v2 = +[MRDMediaRemoteServer server];
  v3 = [v2 deviceInfo];

  [*(a1 + 32) _reevaluateSecondaryConnectionWithDeviceInfo:v3];
}

void sub_1001B7784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1001B77AC(uint64_t a1)
{
  v2 = [*(a1 + 32) operations];

  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    [*(a1 + 32) setOperations:v3];
  }

  v4 = [*(a1 + 32) operations];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];

  if ([v5 operationCount])
  {
    v6 = [[MRResultReason alloc] initWithResult:0 format:@"operationInProgress"];
  }

  else
  {
    v7 = [*(a1 + 32) relayConnectionsToSecondaries];
    v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];

    if (v8)
    {
      v9 = [[MRResultReason alloc] initWithResult:0 format:@"exisitingConnection"];
    }

    else
    {
      v10 = [*(a1 + 48) isRemoteControllable];
      v11 = [MRResultReason alloc];
      if (v10)
      {
        v12 = @"No exisiting connection";
        v13 = 1;
      }

      else
      {
        v12 = @"Not remoteControllable";
        v13 = 0;
      }

      v9 = [v11 initWithResult:v13 reason:v12];
    }

    v6 = v9;
  }

  return v6;
}

void sub_1001B7904(id *a1)
{
  v2 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B79C8;
  block[3] = &unk_1004C1918;
  block[4] = a1[4];
  objc_copyWeak(&v5, a1 + 6);
  v4 = a1[5];
  dispatch_sync(v2, block);

  objc_destroyWeak(&v5);
}

void sub_1001B79C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v2 _handleCompletedOperation:WeakRetained forOutputDeviceUID:*(a1 + 40)];
}

void sub_1001B7D44(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) handle];
  v4 = [v3 connection];
  [v5 mrRelayRemoteControlService:v2 didAcceptConnection:v4];
}

void sub_1001B7F58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    if ([v6 operationCount])
    {
      v7 = _MRLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v6 operations];
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDMRRelayRemoteControlService] Removing operations: %@", &v10, 0xCu);
      }
    }

    [v6 cancelAllOperations];
    v9 = [*(a1 + 40) operations];
    [v9 removeObjectForKey:v5];
  }
}

void sub_1001B8080(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDMRRelayRemoteControlService] Removing relayConnection: %@", &v12, 0xCu);
    }

    v8 = [[NSError alloc] initWithMRError:128];
    v9 = [v6 connection];
    [v9 removeObserver:*(a1 + 40)];

    v10 = [v6 connection];
    [v10 closeWithError:v8];

    v11 = [*(a1 + 40) relayConnectionsToSecondaries];
    [v11 removeObjectForKey:v5];
  }
}

void sub_1001B943C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1001B9494(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[MRProtocolMessageLogger sharedLogger];
  [v4 logMessage:@"Message Received:" label:@"MRRelay" deviceInfo:a1[4] protocolMessage:v3];

  v5 = [v3 error];

  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = a1[5];

  return dispatch_semaphore_signal(v8);
}

NSArray *__cdecl sub_1001B9E40(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  if ([(MRAVOutputDevice *)v2 deviceType]== 1)
  {
    v3 = [(MRAVOutputDevice *)v2 clusterComposition];
    v4 = [v3 count];

    if (v4)
    {
      v5 = [(MRAVOutputDevice *)v2 clusterCompositionOutputDevices];
    }

    else
    {
      v8 = v2;
      v5 = [NSArray arrayWithObjects:&v8 count:1];
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1001B9F84(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100529720;
  qword_100529720 = v1;
}

uint64_t sub_1001BBC38(uint64_t a1)
{
  [*(a1 + 32) setIsStatusItemActive:0];
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM Asked %@ to deactivate - %@", &v6, 0x16u);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_1001BBE44()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100529738);
  sub_100015AFC(v0, qword_100529738);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

uint64_t sub_1001BBEA0()
{
  v1 = v0;
  if (v0[3])
  {
    v2 = v0[3];
  }

  else
  {
    v3 = *v0;
    sub_1001BC5A8(&qword_100521668, &qword_10044EB38);
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v2 = sub_10039D544(&unk_10044EB48, v4);
    v5 = v1[3];
    v1[3] = v2;
  }

  return v2;
}

uint64_t sub_1001BBF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1001BBF98, 0, 0);
}

uint64_t sub_1001BBF98()
{
  v1 = *(v0 + 40);
  v9 = *(v0 + 24);
  v2 = [objc_allocWithZone(RPCompanionLinkClient) init];
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v9;
  *(v3 + 40) = v1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = sub_100018D7C(0, &qword_100521670, RPCompanionLinkClient_ptr);
  *v5 = v0;
  v5[1] = sub_1001BC0E4;
  v7 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0x706172576B6E696CLL, 0xEB00000000726570, sub_1001C3948, v3, v6);
}

uint64_t sub_1001BC0E4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1001BC264;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1001BC200;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001BC200()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001BC264()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);
  v3 = *(v0 + 72);

  return v2();
}

void sub_1001BC2D0(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t a1), uint64_t a4, uint64_t a5)
{
  v21 = a3;
  v9 = sub_1001BC5A8(&qword_100521678, &unk_10044EB50);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  (*(v10 + 16))(&v20 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v14, v13, v9);
  *(v16 + v15) = a2;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v26 = sub_1001C3954;
  v27 = v16;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1001BC53C;
  v25 = &unk_1004C1EA8;
  v17 = _Block_copy(&aBlock);
  v18 = a2;

  [v18 activateWithCompletion:v17];
  _Block_release(v17);
  v26 = v21;
  v27 = a4;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100003D98;
  v25 = &unk_1004C1ED0;
  v19 = _Block_copy(&aBlock);

  [v18 setInvalidationHandler:v19];
  _Block_release(v19);
}

void sub_1001BC53C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1001BC5A8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_1001BC5F0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v85 = &v77 - v9;
  v86 = sub_1001BC5A8(&qword_1005214D0, &qword_10044EA60);
  v84 = *(v86 - 8);
  v10 = *(v84 + 64);
  __chkstk_darwin(v86);
  v83 = &v77 - v11;
  v12 = sub_1001BC5A8(&qword_1005214D8, &qword_10044EA68);
  v88 = *(v12 - 8);
  v89 = v12;
  v13 = *(v88 + 64);
  __chkstk_darwin(v12);
  v87 = &v77 - v14;
  if (qword_100529730 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100015AFC(v15, qword_100529738);
  v16 = a1;
  swift_unknownObjectRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();

  v19 = os_log_type_enabled(v17, v18);
  v90 = v6;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v82 = v3;
    v22 = v21;
    v81 = swift_slowAlloc();
    aBlock[0] = v81;
    *v20 = 136315906;
    v23 = _typeName(_:qualified:)();
    v25 = sub_10002C9C8(v23, v24, aBlock);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10002C9C8(0x663A5F28646E6573, 0xEC000000293A726FLL, aBlock);
    *(v20 + 22) = 2112;
    *(v20 + 24) = v16;
    *v22 = v16;
    *(v20 + 32) = 2080;
    v26 = v16;
    v27 = [a2 identifier];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_10002C9C8(v28, v30, aBlock);

    *(v20 + 34) = v31;
    _os_log_impl(&_mh_execute_header, v17, v18, "[%s] %s %@ session=%s", v20, 0x2Au);
    sub_1000038A4(v22, &qword_100521870, &unk_10044EA70);
    v3 = v82;

    swift_arrayDestroy();
  }

  sub_1001C2670(v16, a2, 0);
  v33 = v32;
  v34 = v3[8];
  __chkstk_darwin(v32);
  *(&v77 - 2) = v3;
  *(&v77 - 1) = v16;
  sub_100013378(sub_1001C2A08);
  if (LOBYTE(aBlock[0]) == 1)
  {
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    v36 = v35;
    v37 = swift_allocObject();
    *(v37 + 16) = &_swiftEmptySetSingleton;
    v38 = v37;
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = v36;
    v81 = v39;
    v78 = v36;
    v40[4] = v16;
    v40[5] = v38;
    v41 = v90;
    v40[6] = v33;
    v40[7] = v41;
    v42 = swift_allocObject();
    v80 = v42;
    v42[2] = v38;
    v42[3] = v16;
    v82 = v38;
    v42[4] = v41;
    v43 = swift_allocObject();
    v79 = v43;
    *(v43 + 16) = 0;
    v90 = (v43 + 16);
    v44 = v3[2];
    v45 = *(*v44 + 23);
    v46 = v16;
    swift_retain_n();
    swift_retain_n();
    v47 = v46;

    v49 = v83;
    v45(v48);
    v50 = MRGroupSessionSubsystemGetNotificationQueue();
    aBlock[0] = v50;
    v51 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v52 = v85;
    (*(*(v51 - 8) + 56))(v85, 1, 1, v51);
    sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
    sub_10000462C(&qword_1005214E0, &qword_1005214D0, &qword_10044EA60);
    sub_1001C3D28(&qword_100524C70, &qword_100524C60, OS_dispatch_queue_ptr);
    v53 = v86;
    v54 = v87;
    Publisher.receive<A>(on:options:)();
    sub_1000038A4(v52, &unk_100524C50, &qword_10044F180);

    (*(v84 + 8))(v49, v53);
    v55 = swift_allocObject();
    v55[2] = sub_1001C2AB8;
    v55[3] = v40;
    v56 = v78;
    v57 = v79;
    v55[4] = sub_1001C2AC8;
    v55[5] = v56;
    v55[6] = v57;
    v55[7] = v44;
    sub_10000462C(&qword_1005214E8, &qword_1005214D8, &qword_10044EA68);

    v58 = v89;
    v59 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v88 + 8))(v54, v58);
    v60 = swift_allocObject();
    v60[2] = v44;
    v60[3] = v59;
    v61 = v80;
    v60[4] = sub_1001C2AFC;
    v60[5] = v61;
    v62 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_1001C2F14;
    aBlock[5] = v60;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001BFCB0;
    aBlock[3] = &unk_1004C1C08;
    v63 = _Block_copy(aBlock);

    v64 = [v62 initWithTimeout:v63 interruptionHandler:30.0];
    _Block_release(v63);

    v65 = v90;
    swift_beginAccess();
    v66 = *v65;
    *v65 = v64;

    (*(*v44 + 26))();
  }

  else
  {

    v67 = v16;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      aBlock[0] = v72;
      *v70 = 136315394;
      v73 = _typeName(_:qualified:)();
      v75 = sub_10002C9C8(v73, v74, aBlock);

      *(v70 + 4) = v75;
      *(v70 + 12) = 2112;
      *(v70 + 14) = v67;
      *v71 = v67;
      v76 = v67;
      _os_log_impl(&_mh_execute_header, v68, v69, "[%s] Attempted to send proxy join request while already in progress: %@", v70, 0x16u);
      sub_1000038A4(v71, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v72);
    }
  }
}

uint64_t sub_1001BD078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *(result + 64);
    __chkstk_darwin(result);

    sub_100013378(sub_1001C3D6C);

    swift_beginAccess();
    if ((*(a3 + 16) & 1) == 0)
    {
      v46 = a6;
      if (qword_100529730 != -1)
      {
LABEL_28:
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100015AFC(v13, qword_100529738);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();

      v47 = v11;
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v48[0] = swift_slowAlloc();
        *v16 = 136315394;
        v17 = _typeName(_:qualified:)();
        v19 = sub_10002C9C8(v17, v18, v48);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        sub_100018D7C(0, &qword_100521680, RPCompanionLinkDevice_ptr);
        sub_1001C3D28(&qword_100521688, &qword_100521680, RPCompanionLinkDevice_ptr);
        v20 = Set.description.getter();
        v22 = sub_10002C9C8(v20, v21, v48);

        *(v16 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Rapport devices updated: %s", v16, 0x16u);
        swift_arrayDestroy();
      }

      sub_1001BD6E0(a1);
      if (*(v23 + 16))
      {
        sub_1001BC5A8(&qword_1005216A0, &qword_10044EB78);
        v24 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v24 = &_swiftEmptyDictionarySingleton;
      }

      v48[0] = v24;

      sub_1001C0274(v25, 1, v48);

      a1 = v48[0];

      v27 = sub_1001BDDB0(v26);
      swift_beginAccess();
      if (*(*(a5 + 16) + 16) <= v27[2] >> 3)
      {

        sub_1001C0604(v30);

        v29 = v27;
      }

      else
      {

        v29 = sub_1001C0730(v28, v27);
      }

      v11 = v29 + 7;
      v31 = 1 << *(v29 + 32);
      v32 = -1;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      a5 = v32 & v29[7];
      v33 = (v31 + 63) >> 6;

      v34 = 0;
      while (a5)
      {
        v35 = a5;
LABEL_21:
        a5 = (v35 - 1) & v35;
        if (*(a1 + 16))
        {
          v37 = (v29[6] + ((v34 << 10) | (16 * __clz(__rbit64(v35)))));
          v39 = *v37;
          v38 = v37[1];

          v40 = sub_10000698C(v39, v38);
          v42 = v41;

          if (v42)
          {
            v43 = *(*(a1 + 56) + 8 * v40);
            v44 = sub_1001BEAA0(0, v46, v43);
            v45 = v47[8];
            __chkstk_darwin(v44);
            sub_100013378(sub_1001C3E40);
          }
        }
      }

      while (1)
      {
        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
          goto LABEL_28;
        }

        if (v36 >= v33)
        {
          break;
        }

        v35 = v11[v36];
        ++v34;
        if (v35)
        {
          v34 = v36;
          goto LABEL_21;
        }
      }

      swift_beginAccess();
      sub_1001BDECC(v29);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1001BD5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1001BD6E0(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_1001C17DC(0, v2 & ~(v2 >> 63), 0);
    v37 = _swiftEmptyArrayStorage;
    if (v35)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      v34 = v1;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        sub_1001C2310(v39, v40, v41, v1);
        v12 = v11;
        v13 = [v11 effectiveIdentifier];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = v37;
        v42 = v37;
        v19 = v37[2];
        v18 = v37[3];
        if (v19 >= v18 >> 1)
        {
          sub_1001C17DC((v18 > 1), v19 + 1, 1);
          v17 = v42;
        }

        v17[2] = v19 + 1;
        v20 = &v17[3 * v19];
        v20[4] = v14;
        v20[5] = v16;
        v20[6] = v12;
        v37 = v17;
        if (v35)
        {
          v1 = v34;
          if (!v10)
          {
            goto LABEL_40;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_1001BC5A8(&qword_100521690, &unk_10044EB60);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v38, 0);
          if (v6 == v33)
          {
LABEL_32:
            sub_10000A16C(v39, v40, v41);
            return;
          }
        }

        else
        {
          v1 = v34;
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v21 = 1 << *(v34 + 32);
          if (v9 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v9 >> 6;
          v23 = *(v32 + 8 * (v9 >> 6));
          if (((v23 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v34 + 36) != v36)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v9 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_10000A16C(v9, v36, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_10000A16C(v9, v36, 0);
          }

LABEL_31:
          v30 = *(v34 + 36);
          v39 = v21;
          v40 = v30;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_1001BDA48(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v2 & ~(v2 >> 63), 0);
    v37 = _swiftEmptyArrayStorage;
    if (v35)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_1001C2310(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 effectiveIdentifier];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = v37[2];
        v19 = v37[3];
        if (v20 >= v19 >> 1)
        {
          sub_1000089FC((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        v18[2] = v20 + 1;
        v21 = &v18[2 * v20];
        v21[4] = v15;
        v21[5] = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          sub_1001BC5A8(&qword_100521690, &unk_10044EB60);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_10000A16C(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_10000A16C(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_10000A16C(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_1001BDDB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100008318(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001BDECC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100008318(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1001BDFD0(void *a1, id a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v71 = &v64 - v9;
  v72 = sub_1001BC5A8(&qword_1005214D0, &qword_10044EA60);
  v70 = *(v72 - 8);
  v10 = *(v70 + 64);
  __chkstk_darwin(v72);
  v69 = &v64 - v11;
  v12 = sub_1001BC5A8(&qword_1005214D8, &qword_10044EA68);
  v74 = *(v12 - 8);
  v75 = v12;
  v13 = *(v74 + 64);
  __chkstk_darwin(v12);
  v73 = &v64 - v14;
  if (qword_100529730 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100015AFC(v15, qword_100529738);
  v16 = a1;
  swift_unknownObjectRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();

  v19 = os_log_type_enabled(v17, v18);
  v68 = v6;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v67 = a2;
    aBlock[0] = v22;
    *v20 = 136315906;
    v23 = _typeName(_:qualified:)();
    v25 = sub_10002C9C8(v23, v24, aBlock);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10002C9C8(0x5F286C65636E6163, 0xEE00293A726F663ALL, aBlock);
    *(v20 + 22) = 2112;
    *(v20 + 24) = v16;
    *v21 = v16;
    *(v20 + 32) = 2080;
    v26 = v16;
    v27 = [v67 identifier];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_10002C9C8(v28, v30, aBlock);

    *(v20 + 34) = v31;
    _os_log_impl(&_mh_execute_header, v17, v18, "[%s] %s %@ session=%s", v20, 0x2Au);
    sub_1000038A4(v21, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
    a2 = v67;
  }

  sub_1001C2670(v16, a2, 1);
  v33 = v32;
  v34 = v3[8];
  __chkstk_darwin(v32);
  *(&v64 - 2) = v3;
  *(&v64 - 1) = v16;
  sub_1001BC5A8(&qword_1005214F0, &qword_10045BF40);
  sub_100013378(sub_1001C2F18);

  v35 = swift_allocObject();
  __chkstk_darwin(v35);
  *(&v64 - 2) = v3;
  *(&v64 - 1) = v16;
  sub_1001BC5A8(&unk_100522820, &qword_10044EA80);
  sub_100013378(sub_1001C2FBC);
  v36 = aBlock[0];
  *(v35 + 16) = aBlock[0];
  if (*(v36 + 16))
  {
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    v65 = v38;
    v38[2] = v37;
    v38[3] = v35;
    v67 = v37;
    v38[4] = v33;
    v39 = swift_allocObject();
    v66 = v39;
    v39[2] = v16;
    v39[3] = v35;
    v39[4] = v68;
    v40 = swift_allocObject();
    v64 = v40;
    *(v40 + 16) = 0;
    v68 = (v40 + 16);
    v41 = v3[2];
    v42 = *(*v41 + 23);
    swift_retain_n();
    v43 = v16;

    v45 = v69;
    v42(v44);
    v46 = MRGroupSessionSubsystemGetNotificationQueue();
    aBlock[0] = v46;
    v47 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v48 = v71;
    (*(*(v47 - 8) + 56))(v71, 1, 1, v47);
    sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
    sub_10000462C(&qword_1005214E0, &qword_1005214D0, &qword_10044EA60);
    sub_1001C3D28(&qword_100524C70, &qword_100524C60, OS_dispatch_queue_ptr);
    v50 = v72;
    v49 = v73;
    Publisher.receive<A>(on:options:)();
    sub_1000038A4(v48, &unk_100524C50, &qword_10044F180);

    (*(v70 + 8))(v45, v50);
    v51 = swift_allocObject();
    v53 = v64;
    v52 = v65;
    v51[2] = sub_1001C3090;
    v51[3] = v52;
    v51[4] = sub_1001C332C;
    v51[5] = v35;
    v51[6] = v53;
    v51[7] = v41;
    sub_10000462C(&qword_1005214E8, &qword_1005214D8, &qword_10044EA68);

    v54 = v75;
    v55 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v74 + 8))(v49, v54);
    v56 = swift_allocObject();
    v56[2] = v41;
    v56[3] = v55;
    v57 = v66;
    v56[4] = sub_1001C336C;
    v56[5] = v57;
    v58 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_1001C4118;
    aBlock[5] = v56;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001BFCB0;
    aBlock[3] = &unk_1004C1CD0;
    v59 = _Block_copy(aBlock);

    v60 = [v58 initWithTimeout:v59 interruptionHandler:30.0];
    _Block_release(v59);

    v61 = v68;
    swift_beginAccess();
    v62 = *v61;
    *v61 = v60;

    (*(*v41 + 26))();
  }

  else
  {
  }
}

uint64_t sub_1001BE968(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_1001C0CA0(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t sub_1001BE9E4(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a2(*a1);
  result = a4(v10);
  if (result)
  {
    swift_beginAccess();
    result = *(a6 + 16);
    if (result)
    {
      result = [result disarm];
      if (result)
      {
        return (*(*a7 + 216))();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1001BEAA0(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  LODWORD(v7) = a1;
  v8 = *v4;
  v9 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - v11;
  if (qword_100529730 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100015AFC(v13, qword_100529738);
  v14 = a3;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v12;
    v18 = v17;
    v19 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v18 = 136315650;
    v20 = _typeName(_:qualified:)();
    v22 = sub_10002C9C8(v20, v21, &v34);
    v33 = v7;
    v7 = v22;

    *(v18 + 4) = v7;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v14;
    *v19 = v14;
    *(v18 + 22) = 2080;
    v23 = v14;
    v24 = Dictionary.description.getter();
    v26 = sub_10002C9C8(v24, v25, &v34);
    LOBYTE(v7) = v33;

    *(v18 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%s] Sending Rapport message to: %@\n%s", v18, 0x20u);
    sub_1000038A4(v19, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();

    v12 = v32;
  }

  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v4;
  *(v28 + 40) = v7 & 1;
  *(v28 + 48) = a2;
  *(v28 + 56) = v14;
  v29 = v14;

  sub_1001BF864(0, 0, v12, &unk_10044EB08, v28);
}

uint64_t sub_1001BEDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 160) = a6;
  *(v7 + 168) = a7;
  *(v7 + 232) = a5;
  *(v7 + 152) = a4;
  return _swift_task_switch(sub_1001BEE20, 0, 0);
}

uint64_t sub_1001BEE20()
{
  v1 = v0[19];
  v2 = sub_1001BBEA0();
  v0[22] = v2;
  v3 = *(*v2 + 192);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_1001BEF48;

  return v7(v0 + 18);
}

uint64_t sub_1001BEF48()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return _swift_task_switch(sub_1001BF060, 0, 0);
}

uint64_t sub_1001BF060()
{
  v1 = *(v0 + 144);
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    sub_100225518(*(v0 + 232) & 1);
    v4 = String._bridgeToObjectiveC()();
    *(v0 + 200) = v4;

    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    *(v0 + 208) = v5;
    v6 = [v3 effectiveIdentifier];
    if (!v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = String._bridgeToObjectiveC()();
    }

    *(v0 + 216) = v6;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1001BF31C;
    v7 = swift_continuation_init();
    *(v0 + 136) = sub_1001BC5A8(&qword_100521660, &unk_100450020);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1001BF7B8;
    *(v0 + 104) = &unk_1004C1E30;
    *(v0 + 112) = v7;
    [v1 sendEventID:v4 event:v5.super.isa destinationID:v6 options:0 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    if (qword_100529730 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100015AFC(v8, qword_100529738);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unable to activate Rapport link", v11, 2u);
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1001BF31C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_1001BF4A4;
  }

  else
  {
    v3 = sub_1001BF42C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001BF42C()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001BF4A4()
{
  v36 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  swift_willThrow();

  if (qword_100529730 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 224);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v8 = type metadata accessor for Logger();
  sub_100015AFC(v8, qword_100529738);

  v9 = v7;
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 224);
  v14 = *(v0 + 192);
  if (v12)
  {
    v15 = *(v0 + 160);
    v33 = *(v0 + 168);
    v32 = *(v0 + 232);
    v34 = *(v0 + 192);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v16 = 136315906;
    v18 = Dictionary.description.getter();
    v20 = sub_10002C9C8(v18, v19, v35);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_100225518(v32 & 1);
    v23 = sub_10002C9C8(v21, v22, v35);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2080;
    v24 = [v33 effectiveIdentifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_10002C9C8(v25, v27, v35);

    *(v16 + 24) = v28;
    *(v16 + 32) = 2112;
    swift_errorRetain();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 34) = v29;
    *v17 = v29;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to send message: %s, for event: %s to: %s\n%@", v16, 0x2Au);
    sub_1000038A4(v17, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  else
  {
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1001BF7B8(uint64_t a1, void *a2)
{
  v3 = sub_1000326D8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_1001BF864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10001D9AC(a3, v27 - v11, &qword_100521B60, &qword_10044F1A0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000038A4(v12, &qword_100521B60, &qword_10044F1A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000038A4(a3, &qword_100521B60, &qword_10044F1A0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000038A4(a3, &qword_100521B60, &qword_10044F1A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1001BFB64()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  return v0;
}

uint64_t sub_1001BFBB4()
{
  sub_1001BFB64();

  return swift_deallocClassInstance();
}

uint64_t sub_1001BFBE8()
{
  v0 = swift_allocObject();
  sub_1001BFC20();
  return v0;
}

void *sub_1001BFC20()
{
  type metadata accessor for GroupSessionRapportUserDiscovery();
  v0[2] = sub_1001E3E44();
  v0[3] = 0;
  v1 = sub_10037B1C0();
  v2 = *v1;
  v0[4] = *v1;
  v0[5] = 0;
  sub_1001BC5A8(&qword_1005214C8, &unk_10044EA50);
  v3 = v2;
  v0[6] = sub_1001D7444(10);
  v0[7] = &_swiftEmptySetSingleton;
  type metadata accessor for Lock();
  v0[8] = sub_10036C394();
  return v0;
}

uint64_t sub_1001BFCB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1001BFD04(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A428;

  return v7(a1);
}

char *sub_1001BFDFC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001BC5A8(&unk_100521880, &qword_10044EB90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1001BFEF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_100521698, &qword_10044EB70);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void *sub_1001C0118()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100521B10, &unk_100450000);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001C0274(void *a1, char a2, void *a3)
{
  v42 = a1[2];
  if (!v42)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_10000698C(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_1001C1538(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_10000698C(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_1001C13CC();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v40._object = 0x800000010043A350;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v40);
    _print_unlocked<A, B>(_:_:)();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v22[2] = v25;
  if (v42 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = sub_10000698C(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_1001C1538(v33, 1);
        v34 = *a3;
        v29 = sub_10000698C(v7, v6);
        if ((v17 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v7;
      v37[1] = v6;
      *(v36[7] + 8 * v29) = v10;
      v38 = v36[2];
      v15 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v36[2] = v39;
      v5 += 3;
      if (v42 == v26)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_1001C0604(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1001C0CA0(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_1001C0730(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = a2 + 7;

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v5[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (v5[6] + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v28 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v57 = &v55;
    __chkstk_darwin(v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = v5[2];
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_100007BC4(v60, v56, v58, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = v5[5];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v43 = Hasher._finalize()();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (v5[6] + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v49 = (v5[6] + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v62;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v62;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v63, v51);
  v53 = v55;
  v54 = sub_1001C0DDC(v52, v56, v5, v2, v64);

  if (!v53)
  {

    v59 = v65;
    v5 = v54;
LABEL_52:
    sub_100045960();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C0CA0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001C0118();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1001C1208(v9);
  *v2 = v20;
  return v13;
}

unint64_t *sub_1001C0DDC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_100007BC4(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_1001C1014(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1001BC5A8(&qword_100521698, &qword_10044EB70);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1001C1208(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

id sub_1001C13CC()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005216A0, &qword_10044EB78);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001C1538(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_1005216A0, &qword_10044EB78);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_1001C17DC(void *a1, int64_t a2, char a3)
{
  result = sub_1001C17FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001C17FC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001BC5A8(&qword_1005216A8, &qword_10044EB80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001BC5A8(&qword_1005216B0, &qword_10044EB88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_1001C1944(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1001C1C54(a1, a2);
  }

  __CocoaSet.makeIterator()();
  swift_beginAccess();
  if (__CocoaSet.Iterator.next()())
  {
    sub_100018D7C(0, &qword_100521680, RPCompanionLinkDevice_ptr);
    do
    {
      swift_dynamicCast();
      v3 = v2;
      v4 = *v2;

      v5 = [v27 effectiveIdentifier];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      if (*(v4 + 16) && (v9 = *(v4 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v10 = Hasher._finalize()(), v11 = -1 << *(v4 + 32), v12 = v10 & ~v11, ((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
      {
        v13 = ~v11;
        while (1)
        {
          v14 = (*(v4 + 48) + 16 * v12);
          v15 = *v14 == v6 && v14[1] == v8;
          if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v12 = (v12 + 1) & v13;
          if (((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        v16 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v16)
        {
          sub_1001BFEF0(v16 + 1);
        }

        result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
        v18 = &_swiftEmptySetSingleton + 56;
        v19 = -1 << *(&_swiftEmptySetSingleton + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(&_swiftEmptySetSingleton + (v20 >> 6) + 7)) != 0)
        {
          v22 = __clz(__rbit64((-1 << v20) & ~*(&_swiftEmptySetSingleton + (v20 >> 6) + 7))) | v20 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v23 = 0;
          v24 = (63 - v19) >> 6;
          do
          {
            if (++v21 == v24 && (v23 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v25 = v21 == v24;
            if (v21 == v24)
            {
              v21 = 0;
            }

            v23 |= v25;
            v26 = *&v18[8 * v21];
          }

          while (v26 == -1);
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
        }

        *&v18[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v22) = v27;
        ++*(&_swiftEmptySetSingleton + 2);
      }

      else
      {
LABEL_4:
      }

      v2 = v3;
    }

    while (__CocoaSet.Iterator.next()());
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1001C1C54(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v35 = v6;
    v36 = v2;
    v34 = &v34;
    __chkstk_darwin(a1);
    v37 = &v34 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v7);
    v6 = v4 + 56;
    v8 = 1 << *(v4 + 32);
    v9 = v8 < 64 ? ~(-1 << v8) : -1;
    v10 = v9 & *(v4 + 56);
    swift_beginAccess();
    v11 = 0;
    v12 = 0;
    v13 = (v8 + 63) >> 6;
    v39 = a2;
    v40 = v4;
LABEL_7:
    v38 = v11;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v43 = (v10 - 1) & v10;
LABEL_16:
      v17 = v14 | (v12 << 6);
      v18 = *(v4 + 48);
      v41 = v17;
      v19 = *a2;
      v2 = *(v18 + 8 * v17);

      v42 = v2;
      v20 = [v2 effectiveIdentifier];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      if (*(v19 + 16))
      {
        v24 = *(v19 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v25 = Hasher._finalize()();
        v26 = -1 << *(v19 + 32);
        v27 = v25 & ~v26;
        if ((*(v19 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
        {
          v28 = ~v26;
          while (1)
          {
            v29 = (*(v19 + 48) + 16 * v27);
            v30 = *v29 == v21 && v29[1] == v23;
            if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v27 = (v27 + 1) & v28;
            if (((*(v19 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          v4 = v40;
          *&v37[(v41 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v41;
          a2 = v39;
          v11 = v38 + 1;
          v10 = v43;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_29;
          }

          goto LABEL_7;
        }
      }

LABEL_8:

      a2 = v39;
      v4 = v40;
      v10 = v43;
    }

    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v12 >= v13)
      {
        return sub_1001C1014(v37, v35, v38, v4);
      }

      v16 = *(v6 + 8 * v12);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v43 = (v16 - 1) & v16;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v32 = swift_slowAlloc();
  v33 = sub_1001C2288(v32, v6, v4, a2);

  return v33;
}

void sub_1001C1FFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a3 + 56);
  swift_beginAccess();
  v8 = 0;
  v9 = 0;
  v10 = (v5 + 63) >> 6;
LABEL_6:
  v29 = v8;
  while (v7)
  {
    v11 = __clz(__rbit64(v7));
    v33 = (v7 - 1) & v7;
LABEL_15:
    v31 = v11 | (v9 << 6);
    v14 = *a4;
    v15 = *(*(a3 + 48) + 8 * v31);

    v16 = [v15 effectiveIdentifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (*(v14 + 16))
    {
      v20 = *(v14 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v14 + 32);
      v23 = v21 & ~v22;
      if ((*(v14 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
      {
        v24 = ~v22;
        while (1)
        {
          v25 = (*(v14 + 48) + 16 * v23);
          v26 = *v25 == v17 && v25[1] == v19;
          if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v23 = (v23 + 1) & v24;
          if (((*(v14 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        *(a1 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        v8 = v29 + 1;
        v7 = v33;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_27;
        }

        goto LABEL_6;
      }
    }

LABEL_7:

    v7 = v33;
  }

  v12 = v9;
  while (1)
  {
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v9 >= v10)
    {

      sub_1001C1014(a1, a2, v29, a3);
      return;
    }

    v13 = *(v4 + 8 * v9);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v33 = (v13 - 1) & v13;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void *sub_1001C2288(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1001C1FFC(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1001C2310(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100018D7C(0, &qword_100521680, RPCompanionLinkDevice_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100018D7C(0, &qword_100521680, RPCompanionLinkDevice_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

unint64_t sub_1001C2534(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BC5A8(&qword_1005216C8, &unk_100450040);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001D9AC(v4, v13, &qword_1005216C0, qword_10044EBA0);
      result = sub_10001BF64(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1001C4088(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_1001C2670(void *a1, id a2, char a3)
{
  v6 = [a2 joinToken];
  v7 = [v6 protobuf];

  if (v7 && (v8 = [v7 data], v7, v8))
  {
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v10;
    v27 = v9;

    v11 = [a1 protobuf];
    [v11 copyWithZone:0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    sub_100018D7C(0, &qword_1005216B8, _MRGroupSessionJoinRequestProtobuf_ptr);
    swift_dynamicCast();
    [v28 setOobKeys:0];
    sub_1001BC5A8(&unk_1005222B0, &qword_10044EB98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10044EA40;
    sub_10022595C(0);

    AnyHashable.init<A>(_:)();
    v13 = sub_100225E28(a3 & 1);
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v13;
    *(inited + 80) = v14;
    sub_10022595C(2u);

    AnyHashable.init<A>(_:)();
    v15 = [a2 identifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v16;
    *(inited + 152) = v17;
    sub_10022595C(1u);

    AnyHashable.init<A>(_:)();
    v18 = [a1 identifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 240) = &type metadata for String;
    *(inited + 216) = v19;
    *(inited + 224) = v20;
    sub_10022595C(3u);

    AnyHashable.init<A>(_:)();
    v21 = [v28 data];
    if (v21)
    {
      v22 = v21;

      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      *(inited + 312) = &type metadata for Data;
      *(inited + 288) = v23;
      *(inited + 296) = v25;
      sub_10022595C(4u);
      AnyHashable.init<A>(_:)();
      *(inited + 384) = &type metadata for Data;
      *(inited + 360) = v27;
      *(inited + 368) = v26;
      sub_1001C3FE0(v27, v26);
      sub_1001C2534(inited);
      swift_setDeallocating();
      sub_1001BC5A8(&qword_1005216C0, qword_10044EBA0);
      swift_arrayDestroy();

      sub_1001C4034(v27, v26);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001C2A08@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = [*(v1 + 24) identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  swift_beginAccess();
  LOBYTE(v4) = sub_100008318(&v9, v5, v7);
  swift_endAccess();

  *a1 = v4 & 1;
  return result;
}

void sub_1001C2AFC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  if (*(*(v2 + 16) + 16))
  {
    if (qword_100529730 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100015AFC(v4, qword_100529738);
    v5 = v1;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v8 = 136315650;
      v9 = _typeName(_:qualified:)();
      v11 = sub_10002C9C8(v9, v10, &v35);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      v12 = [v5 identifier];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10002C9C8(v13, v15, &v35);

      *(v8 + 14) = v16;
      *(v8 + 22) = 2080;
      swift_beginAccess();
      v17 = *(v2 + 16);

      v18 = Set.description.getter();
      v20 = v19;

      v21 = sub_10002C9C8(v18, v20, &v35);

      *(v8 + 24) = v21;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%s] %s - Messaged devices: %s", v8, 0x20u);
      swift_arrayDestroy();

LABEL_10:
    }
  }

  else
  {
    if (qword_100529730 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100015AFC(v22, qword_100529738);
    v23 = v1;
    v6 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v24))
    {
      v25 = swift_slowAlloc();
      v34[0] = swift_slowAlloc();
      *v25 = 136315394;
      v26 = _typeName(_:qualified:)();
      v28 = sub_10002C9C8(v26, v27, v34);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v29 = [v23 identifier];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = sub_10002C9C8(v30, v32, v34);

      *(v25 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v6, v24, "[%s] %s - No devices found to message within timeout", v25, 0x16u);
      swift_arrayDestroy();

      goto LABEL_10;
    }
  }
}

uint64_t sub_1001C2EC8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001C2F18@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = [*(v1 + 24) identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  swift_beginAccess();
  *a1 = sub_1001C0CA0(v5, v7);
  a1[1] = v8;
  swift_endAccess();
}

uint64_t sub_1001C2FBC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(*(v1 + 16) + 48);

  v5 = [v3 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v11[0] = v6;
  v11[1] = v8;
  (*(*v4 + 208))(&v12, v11);

  v10 = v12;
  if (!v12)
  {
    v10 = &_swiftEmptySetSingleton;
  }

  *a1 = v10;
  return result;
}

void sub_1001C3090()
{
  v1 = v0[2];
  v2 = v0[3];
  v20 = v0[4];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v4 = sub_1001C1944(v3, (v2 + 16));
    sub_1001BDA48(v4);
    v19 = v5;
    if ((v4 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      sub_100018D7C(0, &qword_100521680, RPCompanionLinkDevice_ptr);
      sub_1001C3D28(&qword_100521688, &qword_100521680, RPCompanionLinkDevice_ptr);
      Set.Iterator.init(_cocoa:)();
      v4 = v22;
      v6 = v23;
      v7 = v24;
      v8 = v25;
      v9 = v26;
    }

    else
    {
      v8 = 0;
      v10 = -1 << *(v4 + 32);
      v6 = v4 + 56;
      v7 = ~v10;
      v11 = -v10;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      else
      {
        v12 = -1;
      }

      v9 = v12 & *(v4 + 56);
    }

    v13 = (v7 + 64) >> 6;
    if (v4 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v14 = v8;
      v15 = v9;
      v16 = v8;
      if (!v9)
      {
        break;
      }

LABEL_13:
      v17 = (v15 - 1) & v15;
      v18 = *(*(v4 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
      if (!v18)
      {
LABEL_19:
        sub_100045960();
        swift_beginAccess();
        sub_1001BE968(v19);
        swift_endAccess();

        return;
      }

      while (1)
      {
        sub_1001BEAA0(1, v20, v18);

        v8 = v16;
        v9 = v17;
        if ((v4 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (__CocoaSet.Iterator.next()())
        {
          sub_100018D7C(0, &qword_100521680, RPCompanionLinkDevice_ptr);
          swift_dynamicCast();
          v18 = v21;
          v16 = v8;
          v17 = v9;
          if (v21)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_19;
      }

      v15 = *(v6 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_1001C336C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  if (qword_100529730 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529738);
  v5 = v2;

  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, &v22);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = [v5 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002C9C8(v12, v14, &v22);

    *(v7 + 14) = v15;
    *(v7 + 22) = 2080;
    swift_beginAccess();
    v16 = *(v1 + 16);

    v17 = Set.description.getter();
    v19 = v18;

    v20 = sub_10002C9C8(v17, v19, &v22);

    *(v7 + 24) = v20;
    _os_log_impl(&_mh_execute_header, oslog, v6, "[%s] %s - Not all messaged devices found to notify of cancelled request. Missing devices: %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_1001C35DC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001C363C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001C3684()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(**(v0 + 16) + 216))();
  AnyCancellable.cancel()();
  return v3();
}

uint64_t sub_1001C3710()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009F34;

  return sub_1001BEDF8(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1001C37C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009F30;

  return sub_1001BFD04(a1, v5);
}

uint64_t sub_1001C3890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100009F34;

  return sub_1001BBF74(a1, a2, a3, v8);
}

uint64_t sub_1001C3954(uint64_t a1)
{
  v3 = *(sub_1001BC5A8(&qword_100521678, &unk_10044EB50) - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  if (a1)
  {
    swift_errorRetain();
    if (qword_100529730 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100015AFC(v7, qword_100529738);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v10 = 136315394;
      v12 = _typeName(_:qualified:)();
      v14 = sub_10002C9C8(v12, v13, &v27);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2112;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v15;
      *v11 = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%s] Failed to activate rapport link: %@", v10, 0x16u);
      sub_1000038A4(v11, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v26);
    }

    v27 = a1;
    sub_1001BC5A8(&qword_100521678, &unk_10044EB50);
    CheckedContinuation.resume(throwing:)();
  }

  if (qword_100529730 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100015AFC(v16, qword_100529738);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315138;
    v21 = _typeName(_:qualified:)();
    v23 = sub_10002C9C8(v21, v22, &v27);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "[%s] Activated rapport link", v19, 0xCu);
    sub_100026A44(v20);
  }

  v27 = v5;
  v24 = v5;
  sub_1001BC5A8(&qword_100521678, &unk_10044EB50);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1001C3D28(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100018D7C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001C3D6C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v2 + 56);

  v5 = [v3 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  LOBYTE(v5) = sub_1001BD5E8(v6, v8, v4);

  result = swift_beginAccess();
  *v1 = (v5 & 1) == 0;
  return result;
}

uint64_t sub_1001C3E40()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 48);

  v5 = [v1 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v20 = v6;
  v21 = v8;
  (*(*v4 + 208))(&v22, &v20);

  v9 = &_swiftEmptySetSingleton;
  if (v22)
  {
    v9 = v22;
  }

  v23 = v9;
  v10 = [v3 effectiveIdentifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  sub_100008318(&v20, v11, v13);

  v14 = *(v2 + 48);

  v15 = [v1 identifier];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v21 = v18;
  v22 = v23;
  v20 = v16;
  (*(*v14 + 216))(&v22, &v20);
}

uint64_t sub_1001C3FE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1001C4034(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

_OWORD *sub_1001C4088(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *sub_1001C4098(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1001C411C()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100529758);
  sub_100015AFC(v0, qword_100529758);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

uint64_t sub_1001C4178()
{
  v1 = *(v0 + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_lock);
  sub_1001BC5A8(&qword_1005216D8, &unk_10044EBD0);
  sub_100013378(sub_1000133E0);
  return v3;
}

uint64_t sub_1001C4290()
{
  v1 = *(v0 + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_lock);
  sub_1001BC5A8(&qword_100521740, &qword_10044EBE0);
  sub_100013378(sub_1001C7A90);
  return v3;
}

id sub_1001C4310()
{
  v1 = OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_lock;
  type metadata accessor for Lock();
  *&v0[v1] = sub_10036C394();
  v2 = OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_callbacks;
  *&v0[v2] = sub_1001C78BC(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession__session] = 0;
  *&v0[OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession__outputDevices] = _swiftEmptyArrayStorage;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for MRDGroupSessionDiscoverySession();
  v3 = objc_msgSendSuper2(&v13, "init");
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:v5 selector:"handleGroupSessionServerStart:" name:@"MRDGroupSessionServerDidStartNotification" object:0];

  v7 = [v4 defaultCenter];
  [v7 addObserver:v5 selector:"handleGroupSessionServerStop:" name:@"MRDGroupSessionServerDidStopNotification" object:0];

  v8 = [v4 defaultCenter];
  v9 = v5;
  [v8 addObserver:v9 selector:"handleSystemGroupSessionStart:" name:*sub_1003A0364() object:0];

  v10 = [v4 defaultCenter];
  v11 = v9;
  [v10 addObserver:v11 selector:"handleSystemGroupSessionStop:" name:*sub_1003A03EC() object:0];

  sub_1001C5E68();
  return v11;
}

uint64_t sub_1001C4524@<X0>(void (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  a2[3] = type metadata accessor for UUID();
  sub_1000397B4(a2);
  UUID.init()();
  v6 = *(v3 + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_lock);
  sub_100013378(sub_1001C7AE0);
  (*((swift_isaMask & *v3) + 0x88))();
  a1();
}

uint64_t sub_1001C4618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_callbacks;
  swift_beginAccess();

  v10 = *(a1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a1 + v9);
  *(a1 + v9) = 0x8000000000000000;
  sub_1001C7244(sub_1001C954C, v8, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + v9) = v13;
  return swift_endAccess();
}

void sub_1001C4944(uint64_t a1, uint64_t a2)
{
  sub_100013424();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_1001C49B0(uint64_t a1)
{
  v3 = sub_1001BC5A8(&qword_100521760, &qword_10044EBE8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17[-v5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100020E0C(a1, &v18);
  v12 = swift_dynamicCast();
  v13 = *(v8 + 56);
  if (v12)
  {
    v13(v6, 0, 1, v7);
    v14 = (*(v8 + 32))(v11, v6, v7);
    v15 = *(v1 + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_lock);
    __chkstk_darwin(v14);
    *&v17[-16] = v1;
    *&v17[-8] = v11;
    sub_1001BC5A8(&qword_100521768, &unk_10044EBF0);
    sub_100013378(sub_1001C7B10);
    sub_1001C7C2C(v18);
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    v13(v6, 1, 1, v7);
    return sub_1000038A4(v6, &qword_100521760, &qword_10044EBE8);
  }
}

uint64_t sub_1001C4CC4()
{
  swift_getObjectType();
  _StringGuts.grow(_:)(42);

  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._object = 0x800000010043A370;
  v2._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v2);
  v3 = (*((swift_isaMask & *v0) + 0x90))();
  if (v3)
  {
    v4 = [v3 description];
    swift_unknownObjectRelease();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE400000000000000;
    v5 = 1162760014;
  }

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x4474757074756F20;
  v9._object = 0xEF3A736563697665;
  String.append(_:)(v9);
  (*((swift_isaMask & *v0) + 0x88))();
  sub_100013424();
  v10 = Array.description.getter();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 62;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 60;
}

void sub_1001C4F38(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a4);

  swift_unknownObjectRelease();
}

uint64_t sub_1001C4FBC(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100015AFC(v6, qword_100529758);
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v9 = 136315906;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10002C9C8(v10, v11, &v20);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10002C9C8(0xD000000000000015, 0x800000010043A390, &v20);
    *(v9 + 22) = 2080;
    v13 = [a1 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10002C9C8(v14, v16, &v20);

    *(v9 + 24) = v17;
    *(v9 + 32) = 2048;
    *(v9 + 34) = a2;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s] %s %s %ld", v9, 0x2Au);
    swift_arrayDestroy();
  }

  v18 = *((swift_isaMask & *v3) + 0x118);

  return v18();
}

uint64_t sub_1001C5290(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529758);
  swift_unknownObjectRetain();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v7 = 136315906;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, &v21);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10002C9C8(0xD000000000000015, 0x800000010043A3B0, &v21);
    *(v7 + 22) = 2080;
    v11 = [a1 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002C9C8(v12, v14, &v21);

    *(v7 + 24) = v15;
    *(v7 + 32) = 2080;
    sub_1001BC5A8(&unk_100522CB0, &unk_10044EC00);
    v16 = Array.description.getter();
    v18 = sub_10002C9C8(v16, v17, &v21);

    *(v7 + 34) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] %s %s %s", v7, 0x2Au);
    swift_arrayDestroy();
  }

  v19 = *((swift_isaMask & *v2) + 0x118);

  return v19();
}