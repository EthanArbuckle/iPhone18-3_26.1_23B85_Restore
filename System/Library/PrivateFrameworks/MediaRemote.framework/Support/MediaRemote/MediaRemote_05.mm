void sub_1000E2294(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 176);
  if (v3)
  {
    if (*(v2 + 184))
    {
      v4 = [v3 copy];
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = *(v6 + 184);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000E2388;
      v9[3] = &unk_1004BBFB0;
      v9[4] = v6;
      v12 = v4;
      v10 = v5;
      v11 = *(a1 + 48);
      v8 = v4;
      dispatch_async(v7, v9);
    }
  }
}

id sub_1000E2388(uint64_t a1)
{
  [*(a1 + 32) setIsCallingClientCallback:1];
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling Client Registered custom data Callback", v6, 2u);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
  return [*(a1 + 32) setIsCallingClientCallback:0];
}

void sub_1000E24F4(void *a1)
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:a1[4] forKeyedSubscript:MRExternalDevicePreviousDeviceInfoUserInfoKey];
  [v3 setObject:a1[5] forKeyedSubscript:MRExternalDeviceDeviceInfoUserInfoKey];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:MRExternalDeviceDeviceInfoDidChangeNotification object:a1[6] userInfo:v3];
}

id sub_1000E2680(uint64_t a1)
{
  [*(a1 + 32) setCustomDataCallback:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setCustomDataCallbackQueue:v3];
}

void sub_1000E2794(uint64_t a1)
{
  if (*(*(a1 + 32) + 104))
  {
    v2 = _MRLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Batching Request...", v5, 2u);
    }

    v3 = *(*(a1 + 32) + 104);
    v4 = objc_retainBlock(*(a1 + 40));
    [v3 addObject:v4];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_1000E2C7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1000E2CA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  if ([v4 mr_isMediaRemoteError])
  {
    v5 = [v3 error];
    v6 = [v5 code];

    if (v6 == 26)
    {
      v7 = [NSString alloc];
      v8 = *(a1 + 72);
      v9 = MRMediaRemoteCopyCommandDescription();
      v10 = [*(a1 + 32) objectForKeyedSubscript:kMRMediaRemoteOptionCommandID];
      v11 = [v3 error];
      v12 = [v11 description];
      v13 = [v7 initWithFormat:@"event = <%@>, command = <%@>, error = <%@>", v9, v10, v12];

      v14 = *(a1 + 40);
      if (v14)
      {
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1000E2F54;
        v27[3] = &unk_1004B9BE0;
        v28 = v3;
        v29 = *(a1 + 56);
        v15 = v14;
        [v15 verifyConnectionStatusAndMaybeDisconnect:v13 completion:v27];
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

  v16 = [v3 error];

  if (!v16)
  {
    v18 = v3;
    v13 = [v18 commandResult];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v20 = [WeakRetained deviceInfo];
    if ([v20 supportsImplicitChangeShuffleAndRepeatModeInSetPlaybackQueueCommandOptions])
    {
    }

    else
    {
      v21 = [v13 error];

      if (v21)
      {
        goto LABEL_15;
      }

      v22 = [v13 playerPath];
      v23 = v22;
      if (!v22)
      {
        v23 = *(a1 + 48);
      }

      WeakRetained = v23;

      v24 = *(a1 + 72);
      v25 = *(a1 + 32);
      MRMediaRemoteSendImplicitCommandsForOptions();
    }

    goto LABEL_15;
  }

  v17 = [MRCommandResult alloc];
  v18 = [v3 error];
  v13 = [v17 initWithError:v18];
LABEL_15:

  if (!v13)
  {
    v13 = [MRCommandResult commandResultWithSendError:0];
  }

  v26 = *(a1 + 56);
  if (v26)
  {
    (*(v26 + 16))(v26, v13);
  }

LABEL_19:
}

void sub_1000E2F54(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = [v3 mr_errorByEnvelopingWithMRError:121 format:{@"Operation timedout, attempted ping which also timedout"}];
    v5 = [MRCommandResult alloc];
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = [MRCommandResult alloc];
  }

  v4 = [*(a1 + 32) error];
LABEL_6:
  v6 = [v5 initWithError:v4];

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

void sub_1000E3024(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E30D4;
  v7[3] = &unk_1004B8B50;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

id sub_1000E3AA0(uint64_t a1, void *a2)
{
  v3 = [a2 descriptor];
  [v3 setIsProxyGroupPlayer:0];
  v4 = [*(a1 + 32) clientConnection];
  v5 = [v4 connection];
  [v3 setTransportType:{objc_msgSend(v5, "transportType")}];

  v6 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v3];

  return v6;
}

void sub_1000E3EF8(uint64_t a1)
{
  [*(a1 + 32) setDeviceInfo:*(a1 + 40)];
  if (*(*(a1 + 32) + 144))
  {
    v2 = +[MRDMediaRemoteServer server];
    v3 = [v2 nowPlayingServer];
    [v3 updateDeviceInfo:*(*(a1 + 32) + 152) origin:*(*(a1 + 32) + 144)];
  }

  v4 = [*(a1 + 40) groupSessionToken];
  v5 = [v4 sessionIdentifier];

  if (v5)
  {
    [*(a1 + 32) _onSerialQueue_completeGroupSessionRequestsWithIdentifier:v5 error:0];
  }

  [*(a1 + 32) _callDeviceInfoCallback:*(a1 + 40) oldDeviceInfo:*(a1 + 48)];
}

void sub_1000E4F3C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.mediaremote.transportExternalDevice.jsonClientConnectionQueue", v3);
  v2 = qword_100529380;
  qword_100529380 = v1;
}

void sub_1000E4FAC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1000E5550(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a6;
  v13 = a5;
  v14 = [NSString stringWithFormat:@"%@ from %@", objc_opt_class(), v13];

  v15 = _MRLogForCategory();
  v16 = v15;
  if (!v12 && v14)
  {
    v17 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v17)
      {
        v18 = +[NSDate date];
        [v18 timeIntervalSinceDate:*(a1 + 32)];
        *buf = 138544386;
        v34 = @"handlePlaybackQueueRequest";
        v35 = 2114;
        v36 = v10;
        v37 = 2112;
        v38 = v14;
        v39 = 2114;
        v40 = v11;
        v41 = 2048;
        v42 = v19;
        v20 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v21 = v16;
        v22 = 52;
LABEL_16:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
LABEL_17:

        goto LABEL_23;
      }

      goto LABEL_23;
    }

    if (!v17)
    {
      goto LABEL_23;
    }

    v18 = +[NSDate date];
    [v18 timeIntervalSinceDate:*(a1 + 32)];
    *buf = 138544130;
    v34 = @"handlePlaybackQueueRequest";
    v35 = 2114;
    v36 = v10;
    v37 = 2112;
    v38 = v14;
    v39 = 2048;
    v40 = v30;
    v20 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v21 = v16;
    v22 = 42;
    goto LABEL_16;
  }

  if (v12)
  {
    v23 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (!v23)
      {
        goto LABEL_23;
      }

      v18 = +[NSDate date];
      [v18 timeIntervalSinceDate:*(a1 + 32)];
      *buf = 138544386;
      v34 = @"handlePlaybackQueueRequest";
      v35 = 2114;
      v36 = v10;
      v37 = 2114;
      v38 = v12;
      v39 = 2114;
      v40 = v11;
      v41 = 2048;
      v42 = v24;
      v25 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
      v26 = v16;
      v27 = 52;
    }

    else
    {
      if (!v23)
      {
        goto LABEL_23;
      }

      v18 = +[NSDate date];
      [v18 timeIntervalSinceDate:*(a1 + 32)];
      *buf = 138544130;
      v34 = @"handlePlaybackQueueRequest";
      v35 = 2114;
      v36 = v10;
      v37 = 2114;
      v38 = v12;
      v39 = 2048;
      v40 = v31;
      v25 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
      v26 = v16;
      v27 = 42;
    }

    _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
    goto LABEL_17;
  }

  v28 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (!v11)
  {
    if (!v28)
    {
      goto LABEL_23;
    }

    v18 = +[NSDate date];
    [v18 timeIntervalSinceDate:*(a1 + 32)];
    *buf = 138543874;
    v34 = @"handlePlaybackQueueRequest";
    v35 = 2114;
    v36 = v10;
    v37 = 2048;
    v38 = v32;
    v20 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v21 = v16;
    v22 = 32;
    goto LABEL_16;
  }

  if (v28)
  {
    v18 = +[NSDate date];
    [v18 timeIntervalSinceDate:*(a1 + 32)];
    *buf = 138544130;
    v34 = @"handlePlaybackQueueRequest";
    v35 = 2114;
    v36 = v10;
    v37 = 2114;
    v38 = v11;
    v39 = 2048;
    v40 = v29;
    v20 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_23:
}

void sub_1000E596C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 error];
  MRAddErrorToXPCMessage();
}

void sub_1000E59C4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) removeRequest:*(a1 + 40)];
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
}

void sub_1000E5F08(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) playerPath];

    v8 = _MRLogForCategory();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (!v9)
      {
        goto LABEL_20;
      }

      v10 = *(a1 + 40);
      v11 = [*(a1 + 32) playerPath];
      v12 = +[NSDate date];
      [v12 timeIntervalSinceDate:*(a1 + 48)];
      v30 = 138544386;
      v31 = @"relayPlaybackQueueRequest";
      v32 = 2114;
      v33 = v10;
      v34 = 2114;
      v35 = v6;
      v36 = 2114;
      v37 = v11;
      v38 = 2048;
      v39 = v13;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v30, 0x34u);
LABEL_14:

LABEL_19:
      goto LABEL_20;
    }

    if (v9)
    {
      sub_1003A8488(a1);
    }
  }

  else
  {
    v14 = objc_opt_class();
    v15 = [*(a1 + 32) playerPath];

    v8 = _MRLogForCategory();
    v16 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v14)
    {
      if (!v15)
      {
        if (!v16)
        {
          goto LABEL_20;
        }

        v27 = *(a1 + 40);
        v11 = +[NSDate date];
        [v11 timeIntervalSinceDate:*(a1 + 48)];
        v30 = 138543874;
        v31 = @"relayPlaybackQueueRequest";
        v32 = 2114;
        v33 = v27;
        v34 = 2048;
        v35 = v28;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v30, 0x20u);
        goto LABEL_19;
      }

      if (!v16)
      {
        goto LABEL_20;
      }

      v21 = *(a1 + 40);
      v11 = [*(a1 + 32) playerPath];
      v12 = +[NSDate date];
      [v12 timeIntervalSinceDate:*(a1 + 48)];
      v30 = 138544130;
      v31 = @"relayPlaybackQueueRequest";
      v32 = 2114;
      v33 = v21;
      v34 = 2114;
      v35 = v11;
      v36 = 2048;
      v37 = v22;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", &v30, 0x2Au);
      goto LABEL_14;
    }

    if (v15)
    {
      if (!v16)
      {
        goto LABEL_20;
      }

      v17 = *(a1 + 40);
      v18 = objc_opt_class();
      v11 = [*(a1 + 32) playerPath];
      v19 = +[NSDate date];
      [v19 timeIntervalSinceDate:*(a1 + 48)];
      v30 = 138544386;
      v31 = @"relayPlaybackQueueRequest";
      v32 = 2114;
      v33 = v17;
      v34 = 2112;
      v35 = v18;
      v36 = 2114;
      v37 = v11;
      v38 = 2048;
      v39 = v20;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds", &v30, 0x34u);

      goto LABEL_19;
    }

    if (v16)
    {
      v23 = *(a1 + 40);
      v24 = objc_opt_class();
      v25 = +[NSDate date];
      [v25 timeIntervalSinceDate:*(a1 + 48)];
      v30 = 138544130;
      v31 = @"relayPlaybackQueueRequest";
      v32 = 2114;
      v33 = v23;
      v34 = 2112;
      v35 = v24;
      v36 = 2048;
      v37 = v26;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", &v30, 0x2Au);
    }
  }

LABEL_20:

  v29 = *(a1 + 56);
  if (v29)
  {
    (*(v29 + 16))(v29, v5, v6);
  }
}

void sub_1000E6330(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = MRCreateClientErrorFromXPCMessage();
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = MRCreatePlaybackQueueFromXPCMessage();
    if (v4)
    {
      [*(a1 + 32) subscribeToPlaybackQueue:v4 forRequest:*(a1 + 40)];
      v5 = [*(a1 + 48) playerClient];
      [v5 updatePlaybackQueue:v4 fromRequest:*(a1 + 40)];
    }
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000E67CC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = _MRLogForCategory();
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v12 = a1[4];
        v11 = a1[5];
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:a1[6]];
        v30 = 138544386;
        v31 = @"requestArtworkForContentItems";
        v32 = 2114;
        v33 = v11;
        v34 = 2112;
        v35 = v5;
        v36 = 2114;
        v37 = v12;
        v38 = 2048;
        v39 = v14;
        v15 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v16 = v9;
        v17 = 52;
LABEL_16:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v30, v17);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v26 = a1[5];
    v13 = +[NSDate date];
    [v13 timeIntervalSinceDate:a1[6]];
    v30 = 138544130;
    v31 = @"requestArtworkForContentItems";
    v32 = 2114;
    v33 = v26;
    v34 = 2112;
    v35 = v5;
    v36 = 2048;
    v37 = v27;
    v15 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v16 = v9;
    v17 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v18 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v18)
      {
        v20 = a1[4];
        v19 = a1[5];
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:a1[6]];
        v30 = 138544386;
        v31 = @"requestArtworkForContentItems";
        v32 = 2114;
        v33 = v19;
        v34 = 2114;
        v35 = v6;
        v36 = 2114;
        v37 = v20;
        v38 = 2048;
        v39 = v21;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v30, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v18)
    {
      sub_1003A8544(a1);
    }

    goto LABEL_22;
  }

  v22 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v22)
    {
      goto LABEL_22;
    }

    v28 = a1[5];
    v13 = +[NSDate date];
    [v13 timeIntervalSinceDate:a1[6]];
    v30 = 138543874;
    v31 = @"requestArtworkForContentItems";
    v32 = 2114;
    v33 = v28;
    v34 = 2048;
    v35 = v29;
    v15 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v16 = v9;
    v17 = 32;
    goto LABEL_16;
  }

  if (v22)
  {
    v24 = a1[4];
    v23 = a1[5];
    v13 = +[NSDate date];
    [v13 timeIntervalSinceDate:a1[6]];
    v30 = 138544130;
    v31 = @"requestArtworkForContentItems";
    v32 = 2114;
    v33 = v23;
    v34 = 2114;
    v35 = v24;
    v36 = 2048;
    v37 = v25;
    v15 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:
}

void sub_1000E6B50(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 contentItems];
  v7 = v6;
  if (!v5)
  {
    v8 = [v6 msv_compactMap:&stru_1004BC190];
    if ([v8 count])
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = *(a1 + 32);
      MRAddPlayerPathToUserInfo();
      MRAddContentItemsToUserInfo();
      v11 = +[MRDMediaRemoteServer server];
      v12 = _MRPlayerPlaybackQueueContentItemArtworkChangedNotification;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000E6D2C;
      v13[3] = &unk_1004B7038;
      v14 = *(a1 + 40);
      [v11 postClientNotificationNamed:v12 userInfo:v9 predicate:v13];
    }
  }

  (*(*(a1 + 48) + 16))();
}

MRContentItem *__cdecl sub_1000E6CAC(id a1, MRContentItem *a2)
{
  v2 = a2;
  v3 = [(MRContentItem *)v2 artwork];
  v4 = [v3 imageData];
  if (v4)
  {
    v5 = [(MRContentItem *)v2 skeleton];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000E7648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  objc_destroyWeak((v45 + 32));
  objc_destroyWeak((v44 + 32));
  objc_destroyWeak((v47 + 32));
  objc_destroyWeak((v46 + 32));
  objc_destroyWeak(&a39);
  objc_destroyWeak(&a44);
  objc_destroyWeak((v48 - 192));
  objc_destroyWeak((v48 - 152));
  objc_destroyWeak((v48 - 144));
  _Unwind_Resume(a1);
}

void sub_1000E7760(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 11);
    [(os_unfair_lock_s *)v2 setDeviceName:0];
    os_unfair_lock_unlock(v2 + 11);
    [(os_unfair_lock_s *)v2 _deviceInfoDidChange];
    WeakRetained = v2;
  }
}

void sub_1000E77C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deviceInfoDidChange];
}

void sub_1000E7808(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deviceInfoDidChange];
}

void sub_1000E7848(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 11);
    [(os_unfair_lock_s *)v2 setDeviceUID:0];
    os_unfair_lock_unlock(v2 + 11);
    [(os_unfair_lock_s *)v2 _deviceInfoDidChange];
    WeakRetained = v2;
  }
}

void sub_1000E78B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 11);
    [(os_unfair_lock_s *)v2 setDeviceUID:0];
    os_unfair_lock_unlock(v2 + 11);
    [(os_unfair_lock_s *)v2 _deviceInfoDidChange];
    WeakRetained = v2;
  }
}

void sub_1000E7918(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deviceInfoDidChange];
}

void sub_1000E7958(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [objc_opt_class() _workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E7A04;
  block[3] = &unk_1004B6D08;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);
}

void sub_1000E7A0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [objc_opt_class() _workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E7AB8;
  block[3] = &unk_1004B6D08;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);
}

void sub_1000E7AC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = +[MRSharedSettings currentSettings];
    if ([v3 supportAirPlayLeaderInfoSync])
    {
      v4 = +[MRUserSettings currentSettings];
      v5 = [v4 supportMultiplayerHost];

      v2 = v7;
      if (v5)
      {
        goto LABEL_6;
      }

      v6 = objc_alloc_init(MRDAirPlayLeaderInfoPublisher);
      v3 = v7[7];
      v7[7] = v6;
    }

    v2 = v7;
  }

LABEL_6:
}

void sub_1000E7C30(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.MRDDeviceInfoDataSource.workerQueue", v3);
  v2 = qword_100529390;
  qword_100529390 = v1;
}

void sub_1000E7ED4(id a1)
{
  v1 = MGCopyAnswer();
  v2 = qword_1005293A0;
  qword_1005293A0 = v1;

  v3 = MGCopyAnswer();
  v4 = qword_1005293A8;
  qword_1005293A8 = v3;
}

id sub_1000E7F34(uint64_t a1, void *a2)
{
  v3 = [a2 deviceInfo];
  v4 = [v3 deviceUID];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

void sub_1000E7F90(id a1)
{
  v3 = [MRAVRoutingDiscoverySessionConfiguration configurationWithEndpointFeatures:1];
  [v3 setAlwaysAllowUpdates:1];
  v1 = [MRAVRoutingDiscoverySession discoverySessionWithConfiguration:v3];
  v2 = qword_1005293B8;
  qword_1005293B8 = v1;
}

void sub_1000E8320(uint64_t a1)
{
  v2 = [*(a1 + 32) _deviceInfoFilePath];
  v3 = [NSData dataWithContentsOfFile:v2];
  if (v3)
  {
    v4 = [*(a1 + 32) _deviceInfoArchiveClasses];
    v16 = 0;
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:v3 error:&v16];
    v6 = v16;
    v7 = qword_1005293C8;
    qword_1005293C8 = v5;

    if (v6)
    {
      v8 = _MRLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to unarchive device info data", v15, 2u);
      }
    }
  }

  if (!qword_1005293C8)
  {
    v9 = [*(a1 + 32) _readLegacyDeviceInfoIdentifier];
    if (v9 || ([*(a1 + 32) deviceUID], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
    }

    else
    {
      v14 = +[NSUUID UUID];
      v10 = [v14 UUIDString];
    }

    v11 = MRMediaRemoteCopySenderDefaultGroupUID();
    v12 = objc_alloc_init(NSMutableDictionary);
    v13 = qword_1005293C8;
    qword_1005293C8 = v12;

    [qword_1005293C8 setObject:v10 forKeyedSubscript:@"identifier"];
    [qword_1005293C8 setObject:v11 forKeyedSubscript:@"defaultGroupUID"];
    [*(a1 + 32) _writeDeviceInfo:qword_1005293C8 toPath:v2];
  }
}

uint64_t sub_1000E9098(uint64_t a1, void *a2, void *a3)
{
  if (*(*(a1 + 32) + 64) == a2)
  {
    return -1;
  }

  v4 = a3;
  v5 = [a2 playerPath];
  v6 = [v5 client];
  v7 = [v6 displayName];
  v8 = [v4 playerPath];

  v9 = [v8 client];
  v10 = [v9 displayName];
  v11 = [v7 compare:v10 options:1];

  return v11;
}

void sub_1000E937C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000E93AC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);
  if (v3 == v2)
  {
  }

  else
  {
    v20 = v3;
    v4 = [v3 isEqual:v2];

    if ((v4 & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v5 = [*(*(a1 + 32) + 112) copy];
      v6 = *(*(a1 + 56) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(*(a1 + 32) + 48));
      v8 = [[NSString alloc] initWithFormat:@"%p", *(a1 + 40)];
      v9 = _MRLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 112);
        *buf = 138543874;
        v22 = v10;
        v23 = 2114;
        v24 = @"deviceInfo";
        v25 = 2112;
        v26 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", buf, 0x20u);
      }

      v11 = [*(a1 + 40) copy];
      v12 = *(a1 + 32);
      v13 = *(v12 + 48);
      *(v12 + 48) = v11;

      v14 = *(a1 + 32);
      v15 = *(v14 + 120);
      *(v14 + 120) = 0;

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 192));
      v17 = *(a1 + 32);
      v18 = [*(v17 + 48) copy];
      v19 = [*(*(*(a1 + 64) + 8) + 40) copy];
      [WeakRetained nowPlayingOriginClient:v17 deviceInfoDidChange:v18 previousDeviceInfo:v19];
    }
  }
}

void sub_1000E95E8(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  v3 = _MRLogForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(*(a1[6] + 8) + 40);
      v6 = a1[4];
      v7 = *(*(a1[5] + 8) + 40);
      v8 = MRPairedDeviceCopyDeltaMinimalDescription();
      v13 = 134218498;
      v14 = v6;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingOriginClient] Set: deviceInfo (%p) for <%@>:\n %@", &v13, 0x20u);
    }

    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A8650(a1);
    }
  }

  else
  {
    if (v4)
    {
      v10 = a1[4];
      v11 = *(*(a1[6] + 8) + 40);
      v12 = MRPairedDeviceCopyMinimalDescription();
      v13 = 134218498;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingOriginClient] Set: deviceInfo (%p) for <%@>:\n %@", &v13, 0x20u);
    }

    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A86E8(a1);
    }
  }
}

void sub_1000E98B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  if (!v3)
  {
    v4 = [*(v2 + 48) data];
    v5 = *(a1 + 32);
    v6 = *(v5 + 120);
    *(v5 + 120) = v4;

    v3 = *(*(a1 + 32) + 120);
  }

  v7 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v7, v3);
}

void sub_1000E9994(uint64_t a1)
{
  if (vabds_f32(*(*(a1 + 32) + 36), *(a1 + 40)) > 2.2204e-16)
  {
    v2 = [NSNumber numberWithFloat:?];

    v3 = _MRLogForCategory();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v4)
      {
        v6 = *(a1 + 32);
        v7 = *(v6 + 112);
        LODWORD(v5) = *(v6 + 36);
        v8 = [NSNumber numberWithFloat:v5];
        LODWORD(v9) = *(a1 + 40);
        v10 = [NSNumber numberWithFloat:v9];
        v14 = 138544130;
        v15 = v7;
        v16 = 2114;
        v17 = @"volume";
        v18 = 2112;
        v19 = v8;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update: %{public}@ observed change for %{public}@ from <%@> to <%@>", &v14, 0x2Au);

LABEL_7:
      }
    }

    else if (v4)
    {
      v11 = *(*(a1 + 32) + 112);
      LODWORD(v5) = *(a1 + 40);
      v8 = [NSNumber numberWithFloat:v5];
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = @"volume";
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update: %{public}@ observed change for %{public}@ to <%@>", &v14, 0x20u);
      goto LABEL_7;
    }

    *(*(a1 + 32) + 36) = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 192));
    LODWORD(v13) = *(*(a1 + 32) + 36);
    [WeakRetained nowPlayingOriginClient:v13 currentRouteVolumeDidChange:?];
  }
}

void sub_1000E9C04(uint64_t a1)
{
  if (*(*(a1 + 32) + 32) != *(a1 + 40))
  {
    v2 = MRMediaRemoteVolumeControlCapabilitiesDescription();

    v3 = _MRLogForCategory();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v4)
      {
        v5 = *(a1 + 32);
        v6 = *(v5 + 112);
        v7 = *(v5 + 32);
        v8 = MRMediaRemoteVolumeControlCapabilitiesDescription();
        v9 = *(a1 + 40);
        v10 = MRMediaRemoteVolumeControlCapabilitiesDescription();
        v14 = 138544130;
        v15 = v6;
        v16 = 2114;
        v17 = @"volumeControlCapabilities";
        v18 = 2112;
        v19 = v8;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update: %{public}@ observed change for %{public}@ from <%@> to <%@>", &v14, 0x2Au);

LABEL_7:
      }
    }

    else if (v4)
    {
      v11 = *(*(a1 + 32) + 112);
      v12 = *(a1 + 40);
      v8 = MRMediaRemoteVolumeControlCapabilitiesDescription();
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = @"volumeControlCapabilities";
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update: %{public}@ observed change for %{public}@ to <%@>", &v14, 0x20u);
      goto LABEL_7;
    }

    *(*(a1 + 32) + 32) = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 192));
    [WeakRetained nowPlayingOriginClient:*(a1 + 32) currentRouteVolumeControlCapabilitiesDidChange:*(*(a1 + 32) + 32)];
  }
}

void sub_1000E9E54(uint64_t a1)
{
  if (*(*(a1 + 32) + 40) != *(a1 + 40))
  {
    v2 = [NSNumber numberWithBool:?];

    v3 = _MRLogForCategory();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v4)
      {
        v5 = *(a1 + 32);
        v6 = *(v5 + 112);
        v7 = [NSNumber numberWithBool:*(v5 + 40)];
        v8 = [NSNumber numberWithBool:*(a1 + 40)];
        v11 = 138544130;
        v12 = v6;
        v13 = 2114;
        v14 = @"isMuted";
        v15 = 2112;
        v16 = v7;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update: %{public}@ observed change for %{public}@ from <%@> to <%@>", &v11, 0x2Au);

LABEL_7:
      }
    }

    else if (v4)
    {
      v9 = *(*(a1 + 32) + 112);
      v7 = [NSNumber numberWithBool:*(a1 + 40)];
      v11 = 138543874;
      v12 = v9;
      v13 = 2114;
      v14 = @"isMuted";
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update: %{public}@ observed change for %{public}@ to <%@>", &v11, 0x20u);
      goto LABEL_7;
    }

    *(*(a1 + 32) + 40) = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 192));
    [WeakRetained nowPlayingOriginClient:*(a1 + 32) currentRouteIsMutedDidChange:*(*(a1 + 32) + 40)];
  }
}

int64_t sub_1000EA040(id a1, MRDNowPlayingPlayerClient *a2, MRDNowPlayingPlayerClient *a3)
{
  v4 = a2;
  v5 = [(MRDNowPlayingPlayerClient *)a3 snapshotForIsPlaying:1];
  v6 = [v5 date];
  v7 = [(MRDNowPlayingPlayerClient *)v4 snapshotForIsPlaying:1];

  v8 = [v7 date];
  v9 = [v6 compare:v8];

  return v9;
}

id sub_1000EA17C(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(*(a1 + 32) + 200);
  if (result != v2)
  {
    v4 = [result client];

    v5 = _MRLogForCategory();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 112);
        v9 = [*(v7 + 200) client];
        v10 = [*(a1 + 40) client];
        v12 = 138544130;
        v13 = v8;
        v14 = 2114;
        v15 = @"computedNowPlayingClient";
        v16 = 2112;
        v17 = v9;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", &v12, 0x2Au);

LABEL_7:
      }
    }

    else if (v6)
    {
      v11 = *(*(a1 + 32) + 112);
      v9 = [*(a1 + 40) client];
      v12 = 138543874;
      v13 = v11;
      v14 = 2114;
      v15 = @"computedNowPlayingClient";
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v12, 0x20u);
      goto LABEL_7;
    }

    objc_storeStrong((*(a1 + 32) + 200), *(a1 + 40));
    return [*(a1 + 32) _onQueue_reevaluateStateWithReason:@"Updated computedNowPlayingClient."];
  }

  return result;
}

id sub_1000EA3D4(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(*(a1 + 32) + 56);
  if (result != v2)
  {
    v4 = [result client];

    v5 = _MRLogForCategory();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 112);
        v9 = [*(v7 + 56) client];
        v10 = [*(a1 + 40) client];
        v12 = 138544130;
        v13 = v8;
        v14 = 2114;
        v15 = @"explicitNowPlayingClient";
        v16 = 2112;
        v17 = v9;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", &v12, 0x2Au);

LABEL_7:
      }
    }

    else if (v6)
    {
      v11 = *(*(a1 + 32) + 112);
      v9 = [*(a1 + 40) client];
      v12 = 138543874;
      v13 = v11;
      v14 = 2114;
      v15 = @"explicitNowPlayingClient";
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v12, 0x20u);
      goto LABEL_7;
    }

    objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
    return [*(a1 + 32) _onQueue_reevaluateStateWithReason:@"Updated explicitNowPlayingClient."];
  }

  return result;
}

id sub_1000EA62C(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(*(a1 + 32) + 208);
  if (result != v2)
  {
    v4 = [result client];

    v5 = _MRLogForCategory();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 112);
        v9 = [*(v7 + 208) client];
        v10 = [*(a1 + 40) client];
        v12 = 138544130;
        v13 = v8;
        v14 = 2114;
        v15 = @"inferredNowPlayingClient";
        v16 = 2112;
        v17 = v9;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", &v12, 0x2Au);

LABEL_7:
      }
    }

    else if (v6)
    {
      v11 = *(*(a1 + 32) + 112);
      v9 = [*(a1 + 40) client];
      v12 = 138543874;
      v13 = v11;
      v14 = 2114;
      v15 = @"inferredNowPlayingClient";
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v12, 0x20u);
      goto LABEL_7;
    }

    objc_storeStrong((*(a1 + 32) + 208), *(a1 + 40));
    return [*(a1 + 32) _onQueue_reevaluateStateWithReason:@"Updated inferredNowPlayingClient."];
  }

  return result;
}

id sub_1000EA884(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  result = *(*(a1 + 32) + 136);
  if (result != *(a1 + 40))
  {
    v3 = [result displayName];

    v4 = _MRLogForCategory();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a1 + 32);
        v7 = *(v6 + 112);
        v8 = [*(v6 + 136) displayName];
        v9 = [*(a1 + 40) displayName];
        v11 = 138544130;
        v12 = v7;
        v13 = 2114;
        v14 = @"overrideNowPlayingClient";
        v15 = 2112;
        v16 = v8;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", &v11, 0x2Au);

LABEL_7:
      }
    }

    else if (v5)
    {
      v10 = *(*(a1 + 32) + 112);
      v8 = [*(a1 + 40) displayName];
      v11 = 138543874;
      v12 = v10;
      v13 = 2114;
      v14 = @"overrideNowPlayingClient";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v11, 0x20u);
      goto LABEL_7;
    }

    objc_storeStrong((*(a1 + 32) + 136), *(a1 + 40));
    return [*(a1 + 32) _onQueue_reevaluateStateWithReason:@"Updated overrideNowPlayingClient."];
  }

  return result;
}

void sub_1000EAAE8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  if (v2 != *(a1 + 40))
  {
    v3 = _MRLogForCategory();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v4)
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 40);
        v7 = *(v5 + 112);
        v8 = *(v5 + 128);
        *v20 = 138544130;
        *&v20[4] = v7;
        *&v20[12] = 2114;
        *&v20[14] = @"applicationActivity";
        *&v20[22] = 2112;
        v21 = v8;
        LOWORD(v22) = 2112;
        *(&v22 + 2) = v6;
        v9 = "Set: %{public}@ setting %{public}@ from <%@> to <%@>";
        v10 = v3;
        v11 = 42;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, v20, v11);
      }
    }

    else if (v4)
    {
      v14 = *(a1 + 40);
      v15 = *(*(a1 + 32) + 112);
      *v20 = 138543874;
      *&v20[4] = v15;
      *&v20[12] = 2114;
      *&v20[14] = @"applicationActivity";
      *&v20[22] = 2112;
      v21 = v14;
      v9 = "Set: %{public}@ setting %{public}@ to <%@>";
      v10 = v3;
      v11 = 32;
      goto LABEL_10;
    }

    v16 = *(a1 + 32);
    if (*(v16 + 128))
    {
      WeakRetained = objc_loadWeakRetained((v16 + 192));
      [WeakRetained nowPlayingOriginClient:*(a1 + 32) applicationActivityDidEnd:*(*(a1 + 32) + 128)];

      v16 = *(a1 + 32);
    }

    [v16 _onQueue_updateActivityStatus:{4, *v20, *&v20[16], v21, v22}];
    objc_storeStrong((*(a1 + 32) + 128), *(a1 + 40));
    v18 = *(a1 + 32);
    if (*(v18 + 128))
    {
      v19 = objc_loadWeakRetained((v18 + 192));
      [v19 nowPlayingOriginClient:*(a1 + 32) applicationActivityDidBegin:*(*(a1 + 32) + 128)];

      v18 = *(a1 + 32);
    }

    [v18 _onQueue_reevaluateStateWithReason:@"Updated applicationActivity."];
    return;
  }

  v12 = _MRLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(*(a1 + 32) + 128);
    *v20 = 138543362;
    *&v20[4] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingOriginClient] Application Activity %{public}@ already set", v20, 0xCu);
  }
}

void sub_1000EADC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000EADD8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  if (v2)
  {
    v3 = [v2 creatorProcessID];
    v5 = [*(a1 + 32) activeNowPlayingClient];
    v4 = [v5 client];
    *(*(*(a1 + 40) + 8) + 24) = v3 == [v4 processIdentifier];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_1000EAF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000EAF4C(uint64_t a1)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = [v7 playerClients];
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v14;
          do
          {
            v12 = 0;
            do
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v8);
              }

              *(*(*(a1 + 40) + 8) + 24) |= [*(*(&v13 + 1) + 8 * v12) isPlaying];
              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v10);
        }

        v6 = v6 + 1;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }
}

void sub_1000EB1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000EB1B8(uint64_t a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSinceDate:*(*(a1 + 32) + 96)];
  *(*(*(a1 + 40) + 8) + 24) = v3;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = *(*(a1 + 32) + 16);
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v9 playerClients];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v18 + 1) + 8 * j);
              [v15 timeSincePlaying];
              if (v16 < *(*(*(a1 + 40) + 8) + 24))
              {
                [v15 timeSincePlaying];
                *(*(*(a1 + 40) + 8) + 24) = v17;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }
}

void sub_1000EB454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000EB46C(uint64_t a1)
{
  if (*(*(a1 + 32) + 96))
  {
    v3 = +[NSDate date];
    [v3 timeIntervalSinceDate:*(*(a1 + 32) + 96)];
  }

  else
  {
    v3 = +[NSDate distantPast];
    [v3 timeIntervalSinceNow];
  }

  *(*(*(a1 + 40) + 8) + 24) = v2;
}

void sub_1000EB694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000EB6AC(uint64_t a1)
{
  v2 = [*(a1 + 32) client];

  if (v2)
  {
    v3 = [*(a1 + 40) existingNowPlayingClientForPlayerPath:*(a1 + 32)];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v6 = [*(a1 + 40) _onQueue_addNowPlayingClient:*(a1 + 32)];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }
}

void sub_1000EB9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000EB9C4(uint64_t a1)
{
  v2 = [*(a1 + 32) activeNowPlayingClient];
  v3 = [v2 client];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    v5 = [*(a1 + 32) activeNowPlayingClient];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = *(*(a1 + 32) + 16);
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          v14 = [v13 client];
          if ([v14 isEqual:*(a1 + 40)])
          {
            objc_storeStrong((*(*(a1 + 48) + 8) + 40), v13);

            goto LABEL_15;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }
}

id sub_1000EBC00(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
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

        [*(a1 + 32) _onQueue_removeNowPlayingClient:*(*(&v8 + 1) + 8 * v6)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 16) removeAllObjects];
  return [*(a1 + 32) _onQueue_reevaluateStateWithReason:@"RemoveAllClients"];
}

void sub_1000EBDAC(uint64_t a1)
{
  v2 = [*(a1 + 32) existingNowPlayingClientForClient:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) _onQueue_removeNowPlayingClient:v2];
    [*(a1 + 32) _onQueue_reevaluateStateWithReason:@"Removed nowPlayingClient."];
    v2 = v3;
  }
}

void sub_1000EC180(void *a1)
{
  if ([*(a1[4] + 104) isLocal])
  {
    v8 = +[MRDSettings currentSettings];
    [v8 updateDefaultSupportedCommandsData:a1[5] forClient:a1[6]];
  }

  else
  {
    v2 = *(a1[4] + 80);
    if (!v2)
    {
      v3 = objc_alloc_init(NSMutableDictionary);
      v4 = a1[4];
      v5 = *(v4 + 80);
      *(v4 + 80) = v3;

      v2 = *(a1[4] + 80);
    }

    v6 = a1[5];
    v7 = a1[6];

    [v2 setObject:v6 forKeyedSubscript:v7];
  }
}

void sub_1000EC350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000EC368(void *a1)
{
  if ([*(a1[4] + 104) isLocal])
  {
    v8 = +[MRDSettings currentSettings];
    v2 = [v8 defaultSupportedCommandsDataForClient:a1[5]];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = v8;
  }

  else
  {
    v6 = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];
    v7 = *(a1[6] + 8);
    v5 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void sub_1000EC61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000EC644(uint64_t a1)
{
  if ([*(*(a1 + 32) + 104) isLocal])
  {
    v8 = +[MRDSettings currentSettings];
    v2 = [v8 defaultSupportedCommandsData];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = v8;
  }

  else
  {
    v6 = [*(*(a1 + 32) + 80) copy];
    v7 = *(*(a1 + 40) + 8);
    v5 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void sub_1000EC6E0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [MRCommandInfo commandInfosFromData:a3];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];

  LODWORD(v6) = MRMediaRemoteApplicationIsSystemApplication();
  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_1000EC880(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;
}

void sub_1000ECA00(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 176);
  *(v3 + 176) = v2;
}

void sub_1000ECADC(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 184);
  *(v3 + 184) = v2;
}

void sub_1000ED238(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_calculateComputedNowPlayingClient];
  [*(a1 + 32) setComputedNowPlayingClient:v2];

  v3 = *(a1 + 32);
  v4 = [NSString alloc];
  v8 = [*(a1 + 40) name];
  v5 = [*(a1 + 40) userInfo];
  v6 = MRGetPlayerPathFromUserInfo();
  v7 = [v4 initWithFormat:@"%@-%@", v8, v6];
  [v3 _onQueue_reevaluateStateWithReason:v7];
}

id sub_1000ED3C8(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = [v2 laterDate:*(*(a1 + 32) + 96)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  *(v4 + 96) = v3;

  result = [*(*(a1 + 32) + 104) isLocal];
  if (result)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);

    return [v7 _onQueue_maybeSavePlaybackStateForNotification:v8];
  }

  return result;
}

uint64_t sub_1000EE770(uint64_t a1)
{
  if ([*(*(a1 + 32) + 104) isLocal])
  {
    v2 = +[MRUserSettings currentSettings];
    v3 = [v2 computeNowPlayingApplication];

    if (v3)
    {
      return 1;
    }
  }

  result = [*(*(a1 + 32) + 104) isLocallyHosted];
  if (result)
  {
    v5 = +[MRUserSettings currentSettings];
    v6 = [v5 computeDevicePlaybackSessionID];

    return v6;
  }

  return result;
}

void sub_1000EE808(uint64_t a1)
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];
  v4 = *(a1 + 32);
  v5 = *(v4 + 160);
  *(v4 + 160) = v3;

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000EE8E8;
  v11 = &unk_1004B68F0;
  v6 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v6;
  dispatch_async(&_dispatch_main_q, &v8);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 192));
  [WeakRetained nowPlayingOriginClientPlaybackDidTimeout:{*(a1 + 32), v8, v9, v10, v11, v12}];
}

void sub_1000EEA0C(id a1)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_DEFAULT, 0);
  v2 = dispatch_queue_create("com.apple.mediaremote.originClient.userDefaults.serialQueue", v1);
  v3 = qword_1005293D8;
  qword_1005293D8 = v2;
}

void sub_1000EEA90(uint64_t a1)
{
  v2 = +[MRDSettings currentSettings];
  [v2 setLocalPlaybackState:*(a1 + 40)];

  v3 = *(a1 + 40);
  LODWORD(v2) = MRMediaRemotePlaybackStateIsAdvancing();
  v4 = *(a1 + 44);
  if (v2 != MRMediaRemotePlaybackStateIsAdvancing())
  {
    v5 = +[MRDSettings currentSettings];
    [v5 setLocalLastPlayingDate:*(a1 + 32)];
  }
}

void sub_1000EEE38(uint64_t a1)
{
  v2 = _os_feature_enabled_impl();
  v3 = *(a1 + 32);
  v4 = &stru_1004BC478;
  v5 = *(v3 + 176);
  if (v2)
  {
    v4 = &stru_1004BC430;
  }

  *(v3 + 176) = v4;
}

void sub_1000EEEA0(id a1, MRDApplicationConnection *a2, MRApplicationConnectionRequestInfo *a3, id a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [(MRDApplicationConnection *)v6 context];
  v10 = [(MRDApplicationConnection *)v6 context];
  v11 = [v10 destinationPlayerPath];
  v12 = [v11 client];

  v13 = [v12 bundleIdentifier];
  v14 = MRMediaRemoteCopyLocalizedDisplayID();

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000EF010;
  v19[3] = &unk_1004BC458;
  v20 = v6;
  v21 = v9;
  v22 = v7;
  v23 = v8;
  v15 = v7;
  v16 = v9;
  v17 = v6;
  v18 = v8;
  sub_10019F130(v14, 0, v19, 7.0);
}

void sub_1000EF010(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    objc_initWeak(&location, v5);
    [*(a1 + 32) setType:1];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000EF2B4;
    v22 = &unk_1004B77C0;
    objc_copyWeak(&v23, &location);
    [*(a1 + 32) setServerBoundMessageHandler:&v19];
    v7 = [v5 bundleIdentifier];
    sub_10019FC4C(v7);

    v8 = +[MRDMediaRemoteServer server];
    v9 = [v8 nowPlayingServer];
    v10 = [*(a1 + 40) destinationPlayerPath];
    v11 = [v9 resolveExistingPlayerPath:v10];

    if ([v11 isResolved])
    {
      v12 = MRCreateXPCMessage();
      v13 = [MRApplicationConnectionContext alloc];
      v14 = [*(a1 + 40) identifier];
      v15 = [*(a1 + 40) service];
      v16 = [v13 initWithIdentifier:v14 service:v15 destinationPlayerPath:v11];

      v17 = [[MRCreateApplicationConnectionMessage alloc] initWithConnectionContext:v16 requestInfo:*(a1 + 48)];
      MRAddProtobufToXPCMessage();
      [v5 relayXPCMessage:v12 andReply:0];
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v18 = *(a1 + 56);
      v12 = [[NSError alloc] initWithMRError:42];
      (*(v18 + 16))(v18, v12);
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

void sub_1000EF27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000EF2B4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = MRCreateXPCMessage();
    MRAddProtobufToXPCMessage();
    [WeakRetained relayXPCMessage:v7 andReply:0];
  }

  else
  {
    v7 = [[NSError alloc] initWithMRError:178];
    [v8 invalidate:v7];
  }
}

void sub_1000EF37C(id a1, MRDApplicationConnection *a2, MRApplicationConnectionRequestInfo *a3, id a4)
{
  v5 = a4;
  v6 = [[NSError alloc] initWithMRError:132];
  (*(a4 + 2))(v5, v6);
}

uint64_t sub_1000EF6C8(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(*(*(result + 48) + 8) + 40);
  return result;
}

void sub_1000EF6E0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1000EF6FC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

id sub_1000EFB38(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uniqueIdentifier];
  v5 = [v3 containsUID:v4];

  return v5;
}

void sub_1000F04C4(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (v13)
  {
    v6 = [v13 configuration];
    v7 = [v6 mode];
    v8 = *(a1 + 40);

    if (v7 != v8)
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = [v13 configuration];
      v12 = [v11 serviceToken];
      [v10 runSession:v13 withMode:v9 andServiceToken:v12];
    }
  }
}

void sub_1000F0658(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v4);

  v5 = [*(a1 + 32) irCandidateFor:*(a1 + 40)];
  v6 = [v5 candidateIdentifier];

  v7 = _MRLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 48);
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD EVENT: MR is adding %@ for candidate %@", &v12, 0x16u);
    }

    [v3 addEvent:*(a1 + 48) forCandidate:v5];
  }

  else
  {
    if (v8)
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      v12 = 138412802;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD EVENT: MR is DROPPING %@ for candidate %@, no candidate identifier - %@", &v12, 0x20u);
    }
  }
}

void sub_1000F0978(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003A8A1C(a1, v6, v7);
    }
  }

  [*(a1 + 40) setIsEligibleApp:{objc_msgSend(v5, "isEligible")}];
  [*(a1 + 48) _addEvent:*(a1 + 40) forRouteCandidate:*(a1 + 56)];
}

void sub_1000F0A20(id a1, IRSession *a2)
{
  v2 = a2;
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD requestCurrentContext", v4, 2u);
  }

  [(IRSession *)v2 requestCurrentContext];
}

void sub_1000F0B34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD requestCurrentContextWithBundleID:%@", &v6, 0xCu);
  }

  [*(a1 + 40) setAllowedContextUpdates:1];
  [*(a1 + 40) setBundleIdentifierPendingUpdate:*(a1 + 32)];
  if (objc_opt_respondsToSelector())
  {
    [v3 requestCurrentContextWithBundleID:*(a1 + 32)];
  }

  else
  {
    [v3 requestCurrentContext];
  }
}

void sub_1000F0CC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) donateAsCandidate];
  v5 = _MRLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD updateRouteCandidate: %@", &v9, 0xCu);
    }

    v5 = [*(a1 + 40) irCandidateFor:*(a1 + 32)];
    [v3 updateCandidate:v5];
  }

  else if (v6)
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD NOT donating %@", &v9, 0xCu);
  }
}

void sub_1000F0E94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) msv_filter:&stru_1004BC5C0];
  v5 = +[NSUUID UUID];
  v6 = [v5 UUIDString];

  v31 = v3;
  if ([v4 count])
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000F1318;
    v40[3] = &unk_1004BC5E8;
    v30 = a1;
    v40[4] = *(a1 + 40);
    v7 = [v4 msv_map:v40];
    v8 = [NSSet setWithArray:v7];

    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 count];
      *buf = 134218242;
      v44 = v10;
      v45 = 2112;
      v46 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD will updateRouteCandidates (%lu) [batch: %@]", buf, 0x16u);
    }

    v29 = v8;
    [v3 updateCandidates:v8];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          v17 = _MRLogForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v44 = v16;
            v45 = 2112;
            v46 = v6;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD updateRouteCandidate: %@ [batch: %@]", buf, 0x16u);
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v13);
    }

    v3 = v31;
    a1 = v30;
  }

  v18 = [v4 count];
  if (v18 != [*(a1 + 32) count])
  {
    v19 = [*(a1 + 32) msv_filter:&stru_1004BC608];
    v20 = _MRLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v19 count];
      *buf = 134218242;
      v44 = v21;
      v45 = 2112;
      v46 = v6;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD will NOT donate (%lu) [batch: %@]", buf, 0x16u);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = v19;
    v23 = [v22 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v33;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v32 + 1) + 8 * j);
          v28 = _MRLogForCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v44 = v27;
            v45 = 2112;
            v46 = v6;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD NOT donating %@ [batch: %@]", buf, 0x16u);
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v24);
    }

    v3 = v31;
  }
}

int64_t sub_1000F142C(id a1, IRCandidateResult *a2, IRCandidateResult *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(IRCandidateResult *)v4 classification];
  if (v6 <= [(IRCandidateResult *)v5 classification])
  {
    v8 = [(IRCandidateResult *)v4 classification];
    v7 = v8 < [(IRCandidateResult *)v5 classification];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

IRNode *__cdecl sub_1000F15A0(id a1, MRRouteNodeRepresentable *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(IRNode);
  v4 = [(MRRouteNodeRepresentable *)v2 avOutputDeviceIdentifier];
  [v3 setAvOutpuDeviceIdentifier:v4];

  v5 = [(MRRouteNodeRepresentable *)v2 rapportIdentifier];
  [v3 setRapportIdentifier:v5];

  v6 = [(MRRouteNodeRepresentable *)v2 idsIdentifier];
  [v3 setIdsIdentifier:v6];

  v7 = [(MRRouteNodeRepresentable *)v2 isLocal];
  [v3 setIsLocal:v7];

  return v3;
}

void sub_1000F18C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1000F190C(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD Received first unlock notification", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _onQueue_initializeSessionWithCompletion:*(a1 + 32)];
}

void sub_1000F1994(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _onQueue_initializeSessionWithCompletion:*(a1 + 32)];
}

void sub_1000F1B04(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

void sub_1000F1D0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD createRunningSession: service token found: %@", &v10, 0xCu);
    }

    [*(a1 + 32) _onQueue_createRunningSessionWithServiceToken:v3];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) session];
    (*(v6 + 16))(v6, v7, 0);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003A8AA8();
    }

    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1003A8ADC();
    }

    v9 = *(a1 + 40);
    v7 = [[NSError alloc] initWithMRError:175];
    (*(v9 + 16))(v9, 0, v7);
  }
}

void sub_1000F2080(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }

  else
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003A8B10();
    }

    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1003A8B44();
    }
  }
}

void sub_1000F23BC(id *a1)
{
  v2 = [a1[4] configuration];

  if (!v2)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1003A8B78();
    }

    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1003A8BAC();
    }
  }

  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[5];
    v20 = 138412290;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD session:didFailWithError: %@", &v20, 0xCu);
  }

  v7 = a1[4];
  v8 = [a1[6] session];
  if (v7 != v8)
  {
    goto LABEL_10;
  }

  v9 = [a1[5] domain];
  v10 = [v9 isEqualToString:IRErrorDomain];

  if (v10)
  {
    if ([a1[5] code] == -12887)
    {
      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = a1[4];
        v20 = 134217984;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD Session %p invalidated, recreating", &v20, 0xCu);
      }

      [a1[6] _onQueue_invalidateSession];
      [a1[6] initializeSessionIfNeededWithCompletion:0];
    }

    else if ([a1[5] code] == -12889)
    {
      v13 = [a1[4] configuration];
      v8 = [v13 serviceToken];

      v14 = _MRLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = a1[4];
        v17 = a1[5];
        v20 = 138412802;
        v21 = v8;
        v22 = 2048;
        v23 = v16;
        v24 = 2112;
        v25 = v17;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[MRDRRC].IRD Dynamic token %@ invalidated for session %p, discarding session and giving up - %@", &v20, 0x20u);
      }

      v15 = _MRLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v18 = a1[4];
        v19 = a1[5];
        v20 = 138412802;
        v21 = v8;
        v22 = 2048;
        v23 = v18;
        v24 = 2112;
        v25 = v19;
        _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Dynamic token %@ invalidated for session %p, discarding session and giving up - %@", &v20, 0x20u);
      }

      [a1[6] setSession:0];
LABEL_10:
    }
  }
}

void sub_1000F2D40(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1000F2D5C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_1000F3190(id a1)
{
  v1 = [NSSet setWithArray:&off_1004E0EC8];
  v2 = qword_1005293E8;
  qword_1005293E8 = v1;
}

void sub_1000F3248(id a1)
{
  v1 = [NSSet setWithArray:&off_1004E0EE0];
  v2 = qword_1005293F8;
  qword_1005293F8 = v1;
}

void sub_1000F3C14(uint64_t a1)
{
  v2 = [NSString alloc];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  v7 = *(v5 + 36);
  v12 = [*(v5 + 56) allValues];
  v8 = MRCreateIndentedDebugDescriptionFromArray();
  v9 = [v2 initWithFormat:@"<%p> %@ {\nregisteredForNowPlayingCount = %u\nregisteredForVolumeCount = %u\ncoalescingStates = %@\n}>", v3, v4, v6, v7, v8];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_1000F3F84(uint64_t a1)
{
  v4 = [*(a1 + 48) nowPlayingClient];
  v2 = [v4 client];
  v3 = [*(a1 + 32) _onQueue_stateForPlayerPath:*(a1 + 40)];
  [v3 setClientProperties:v2];
}

void sub_1000F4420(uint64_t a1)
{
  v4 = [*(a1 + 48) playerClient];
  v2 = [v4 supportedRemoteControlCommands];
  v3 = [*(a1 + 32) _onQueue_stateForPlayerPath:*(a1 + 40)];
  [v3 setSupportedCommands:v2];
}

void sub_1000F45B4(uint64_t a1)
{
  v6 = [*(a1 + 32) _onQueue_stateForPlayerPath:*(a1 + 40)];
  v2 = [*(a1 + 48) playerClient];
  v3 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v2 playbackState]);
  [v6 setPlaybackState:v3];

  v4 = [*(a1 + 48) playerClient];
  v5 = [v4 playbackStateTimestamp];
  [v6 setPlaybackStateTimestamp:v5];
}

void sub_1000F479C(uint64_t a1)
{
  v4 = [*(a1 + 48) playerClient];
  v2 = [v4 playbackQueue];
  v3 = [*(a1 + 32) _onQueue_stateForPlayerPath:*(a1 + 40)];
  [v3 setPlaybackQueue:v2];
}

void sub_1000F4930(uint64_t a1)
{
  v4 = [*(a1 + 48) playerClient];
  v2 = [v4 playbackQueueCapabilities];
  v3 = [*(a1 + 32) _onQueue_stateForPlayerPath:*(a1 + 40)];
  [v3 setPlaybackQueueCapabilities:v2];
}

void sub_1000F4AE0(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _onQueue_stateForPlayerPath:*(a1 + 40)];
  [v2 setContentItems:v1];
}

void sub_1000F4C78(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _onQueue_stateForPlayerPath:*(a1 + 40)];
  [v2 setContentItemsArtwork:v1];
}

void sub_1000F4DDC(uint64_t a1)
{
  v3 = [*(a1 + 40) player];
  v2 = [*(a1 + 32) _onQueue_stateForPlayerPath:*(a1 + 40)];
  [v2 setPlayerProperties:v3];
}

unsigned __int8 *sub_1000F4FF8(unsigned __int8 *result)
{
  v1 = *(result + 5);
  if (v1 == 2)
  {
    return [*(result + 4) _onQueue_setReceiveVolumeControlUpdates:result[48]];
  }

  if (v1 == 1)
  {
    return [*(result + 4) _onQueue_setReceiveNowPlayingUpdates:result[48]];
  }

  return result;
}

void sub_1000F544C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F5470(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleVolumeAvailabilityDidChangeNotification:v5];
  }
}

void sub_1000F5A3C(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  [WeakRetained stateObserver:a1[4] didReceiveCoalescedNowPlayingStateChange:a1[5] playerPath:a1[6]];
}

void sub_1000F8998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F89D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [*(a1 + 32) setPendingCompletion:0];
  }

  v2 = *(a1 + 40);
  v3 = [[NSError alloc] initWithMRError:26 description:@"Timed out waiting for HandoffCompleted notification"];
  (*(v2 + 16))(v2, v3);
}

id sub_1000F8A68(uint64_t a1)
{
  result = [*(a1 + 32) disarm];
  if (result)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void sub_1000F8BC8(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingCompletion];

  if (v2)
  {
    v3 = [*(a1 + 32) pendingCompletion];
    v3[2]();

    v4 = *(a1 + 32);

    [v4 setPendingCompletion:0];
  }
}

void sub_1000F8FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000F90C4(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_isLockScreenWidgetVisible];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_1000F919C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  return [*(v1 + 80) lockScreenController:? lockScreenWidgetActiveDidChange:?];
}

void sub_1000F93F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F9414(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained setPreviousPlayerPath:0];
    v2 = [NSString alloc];
    v3 = [v5 previousPlayerPath];
    v4 = [v2 initWithFormat:@"Previous playerPath %@ invalidated", v3];
    [v5 _onQueue_reevaluateShouldShowLockScreenForReason:v4];

    WeakRetained = v5;
  }
}

void sub_1000F980C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F983C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _onSerialQueue_restoreElectedPlayer];
    WeakRetained = v2;
  }
}

id sub_1000F9918(uint64_t a1)
{
  if (([*(a1 + 32) personalDeviceWasRecentlyAttached] & 1) == 0)
  {
    [*(a1 + 40) setHasPresentedForCurrentPersonalDevices:0];
    [*(a1 + 40) setShouldFinishPresentationForCurrentPersonalDevices:0];
  }

  v2 = *(a1 + 40);

  return [v2 _onQueue_reevaluateShouldShowLockScreenForReason:@"Personal devices changed"];
}

id sub_1000F9B3C(uint64_t a1)
{
  if ([*(a1 + 32) hasPresentedForCurrentPersonalDevices] && (objc_msgSend(*(*(a1 + 32) + 8), "lockScreenVisible") & 1) == 0)
  {
    [*(a1 + 32) setShouldFinishPresentationForCurrentPersonalDevices:1];
  }

  v2 = *(a1 + 32);

  return [v2 _onQueue_reevaluateShouldShowLockScreenForReason:@"LayoutChange"];
}

id sub_1000F9CD0(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 104), *(a1 + 40));
  result = [*(a1 + 40) isEqual:*(*(a1 + 32) + 24)];
  if ((result & 1) == 0)
  {
    *(*(a1 + 32) + 112) = *(a1 + 48);
    *(*(a1 + 32) + 120) = *(a1 + 56);
    v3 = *(a1 + 32);
    v4 = v3[13];

    return [v3 setPlayerPath:v4];
  }

  return result;
}

void sub_1000F9DE0(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v10 = MRGetPlayerPathFromUserInfo();

  if ([*(*(a1 + 40) + 104) isEqual:v10])
  {
    v3 = [*(a1 + 32) userInfo];
    v4 = [v3 objectForKeyedSubscript:kMRMediaRemotePlayerIsPlayingDidChangeNotification];
    v5 = [v4 BOOLValue];

    v6 = *(a1 + 40);
    v7 = [NSString alloc];
    v8 = @"stopped";
    if (v5)
    {
      v8 = @"started";
    }

    v9 = [v7 initWithFormat:@"ElectedPlayer %@ playback", v8];
    [v6 _onQueue_reevaluateShouldShowLockScreenForReason:v9];
  }
}

void sub_1000FA924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000FA964(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDLockScreenController] lockScreenAssertion error %{public}@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setAssertion:0];
    [v6 delayCreateAssertion];
  }
}

void sub_1000FAB00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained createAssertion];
    WeakRetained = v2;
  }
}

Class sub_1000FABF0(uint64_t a1)
{
  sub_1000FAC48();
  result = objc_getClass("SBSLockScreenContentAssertion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100529408 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1003A8D3C();
    return sub_1000FAC48();
  }

  return result;
}

uint64_t sub_1000FAC48()
{
  v3[0] = 0;
  if (!qword_100529410)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000FAD48;
    v3[4] = &unk_1004B82A0;
    v3[5] = v3;
    v4 = off_1004BC888;
    v5 = 0;
    qword_100529410 = _sl_dlopen();
  }

  v0 = qword_100529410;
  v1 = v3[0];
  if (!qword_100529410)
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

uint64_t sub_1000FAD48(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100529410 = result;
  return result;
}

void *sub_1000FADBC(uint64_t a1)
{
  v2 = sub_1000FAC48();
  result = dlsym(v2, "SBSLockScreenContentAssertionSlotPlatter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100529418 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_1000FAE0C()
{
  if (qword_100529420 != -1)
  {
    sub_1003A8D64();
  }

  v1 = qword_100529428;

  return v1;
}

void sub_1000FAE50(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.MediaRemote.MRDConnectionLifetimeSubsystem.targetQueue", v3);
  v2 = qword_100529428;
  qword_100529428 = v1;
}

id sub_1000FB108(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 112);
    v9 = 134218242;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRDCLC] <%p> Initializing for origin: %@.", &v9, 0x16u);
  }

  [*(a1 + 32) registerForChanges];
  v5 = +[MRDDisplayMonitor sharedMonitor];
  v6 = [v5 displayOn];

  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  [*(a1 + 32) setDeviceState:v7];
  [*(a1 + 32) _adjustPlaybackTimerIfNeeded];
  [*(a1 + 32) _adjustContinuousPlaybackDetectionTimerIfNeeded];
  return [*(a1 + 32) evaluateShouldDisconnectWithReason:@"Init"];
}

id sub_1000FB3C8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = objc_opt_class();
  v5 = *(a1 + 40);
  v6 = [v5 origin];
  [v3 appendFormat:@"<%@:%p origin=<%@>, deviceState=<%lu>, hasDeferredDisconnectionDueToDeviceState=<%u>", v4, v5, v6, objc_msgSend(*(a1 + 40), "deviceState"), objc_msgSend(*(a1 + 40), "hasDeferredDisconnectionDueToDeviceState")];

  v7 = [*(a1 + 40) maintainReason];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) maintainReason];
    [v8 appendFormat:@", maintainReason=<%@>", v9];
  }

  v10 = [*(a1 + 40) previousMaintainReason];

  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) previousMaintainReason];
    [v11 appendFormat:@", previousMaintainReason=<%@>", v12];
  }

  v13 = [*(a1 + 40) playbackTimer];
  v14 = [v13 isValid];

  if (v14)
  {
    v15 = *(a1 + 32);
    v16 = [*(a1 + 40) playbackTimer];
    [v16 timeRemaining];
    [v15 appendFormat:@", playbackTimer=<%lf seconds remaining>", v17];
  }

  v18 = [*(a1 + 40) continuousPlaybackDetectionTimer];
  v19 = [v18 isValid];

  if (v19)
  {
    v20 = *(a1 + 32);
    v21 = [*(a1 + 40) continuousPlaybackDetectionTimer];
    [v21 timeRemaining];
    [v20 appendFormat:@", continuousPlaybackDetectionTimer=<%lf seconds remaining>", v22];
  }

  v23 = [*(a1 + 40) disconnectTimer];
  v24 = [v23 isValid];

  if (v24)
  {
    v25 = *(a1 + 32);
    v26 = [*(a1 + 40) disconnectTimer];
    [v26 timeRemaining];
    [v25 appendFormat:@", disconnectTimer=<%lf seconds remaining>", v27];
  }

  if ([*(a1 + 40) disconnected])
  {
    [*(a1 + 32) appendString:{@", <Disconnected>"}];
  }

  v28 = *(a1 + 32);

  return [v28 appendString:@">"];
}

void sub_1000FBC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000FBC44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained disconnectTimer];

    if (v4)
    {
      if ([v3 deviceState])
      {
        v5 = _MRLogForCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 32);
          v7 = 134218242;
          v8 = v3;
          v9 = 2112;
          v10 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDCLC] <%p> Defer disconnect for origin %@ due to device state.", &v7, 0x16u);
        }

        [v3 setHasDeferredDisconnectionDueToDeviceState:1];
      }

      else
      {
        [v3 disconnectOrigin:*(a1 + 32)];
      }
    }
  }
}

void sub_1000FBF1C(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v5 = [v2 objectForKeyedSubscript:kMRMediaRemoteOriginUserInfoKey];

  if (v5 == *(*(a1 + 40) + 112) || (v3 = [v5 isEqual:?], v4 = v5, v3))
  {
    [*(a1 + 40) evaluateShouldDisconnectWithReason:@"DeviceInfo changed"];
    v4 = v5;
  }
}

void sub_1000FC06C(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v6 = [v2 objectForKeyedSubscript:kMRNowPlayingPlayerPathUserInfoKey];

  v3 = [v6 origin];
  v4 = v3;
  if (v3 == *(*(a1 + 40) + 112))
  {

    goto LABEL_5;
  }

  v5 = [v3 isEqual:?];

  if (v5)
  {
LABEL_5:
    [*(a1 + 40) _adjustPlaybackTimerIfNeeded];
    [*(a1 + 40) _adjustContinuousPlaybackDetectionTimerIfNeeded];
    [*(a1 + 40) evaluateShouldDisconnectWithReason:@"isPlayingDidChange"];
  }
}

void sub_1000FC340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000FC364(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained evaluateShouldDisconnectWithReason:@"Has not played recently"];
}

void sub_1000FC5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000FC5D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained evaluateShouldDisconnectWithReason:@"Continuous Playback Detected"];
}

id sub_1000FC6A8(uint64_t a1)
{
  v2 = +[MRDDisplayMonitor sharedMonitor];
  v3 = [v2 displayOn];

  v4 = +[MRDDisplayMonitor sharedMonitor];
  if ([v4 lockScreenForegrounded])
  {
    v5 = +[MRDDisplayMonitor sharedMonitor];
    v6 = [v5 controlCenterForegrounded] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  result = [*(a1 + 32) deviceState];
  if (result == 2)
  {
    if (v3)
    {
      return result;
    }

    [*(a1 + 32) setDeviceState:0];
    v9 = @"InUse -> ScreenOff";
  }

  else if (result == 1)
  {
    if (v3)
    {
      if (v6)
      {
        return result;
      }

      [*(a1 + 32) setDeviceState:2];
      v9 = @"CoverSheet -> InUse";
    }

    else
    {
      [*(a1 + 32) setDeviceState:0];
      v9 = @"CoverSheet -> ScreenOff";
    }
  }

  else
  {
    if (result || !v3)
    {
      return result;
    }

    v8 = *(a1 + 32);
    if (v6)
    {
      [v8 setDeviceState:1];
      v9 = @"ScreenOff -> CoverSheet";
    }

    else
    {
      [v8 setDeviceState:2];
      v9 = @"ScreenOff -> InUse";
    }
  }

  v10 = *(a1 + 32);

  return [v10 evaluateShouldDisconnectWithReason:v9];
}

void sub_1000FC8B4(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:kMRMediaRemoteActiveEndpointTypeUserInfoKey];
  v4 = [v3 intValue];

  if (!v4)
  {
    v5 = *(a1 + 40);

    [v5 evaluateShouldDisconnectWithReason:@"Active endpoint changed"];
  }
}

void sub_1000FD2D8(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.mediaremoted.hostedExternalDevice.reloadQueue", v3);
  v2 = qword_100529430;
  qword_100529430 = v1;
}

void sub_1000FD4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FD504(uint64_t a1)
{
  v2 = *(a1 + 32);
  v28 = objc_opt_class();
  v26 = *(a1 + 32);
  v3 = *(v26 + 32);
  v31 = MRCreateIndentedDebugDescriptionFromObject();
  v4 = *(*(a1 + 32) + 24);
  v25 = MRCreateIndentedDebugDescriptionFromObject();
  [*(*(a1 + 32) + 24) connectionState];
  v5 = MRExternalDeviceConnectionStateCopyDescription();
  v6 = *(a1 + 32);
  v21 = *(v6 + 40);
  v22 = v5;
  v29 = [*(v6 + 24) deviceInfo];
  v30 = MRCreateIndentedDebugDescriptionFromObject();
  v7 = [*(*(a1 + 32) + 24) discoveryDescription];
  v27 = [*(*(a1 + 32) + 80) allObjects];
  v8 = MRCreateIndentedDebugDescriptionFromArray();
  v24 = [*(*(a1 + 32) + 24) externalOutputContext];
  v23 = [v24 description];
  v20 = MRCreateIndentedDebugDescriptionFromObject();
  v9 = [*(*(a1 + 32) + 24) externalOutputContext];
  v10 = MRCreateIndentedDebugDescriptionFromObject();
  v11 = [*(*(a1 + 32) + 24) groupSessionToken];
  v12 = MRCreateIndentedDebugDescriptionFromObject();
  v13 = *(a1 + 32);
  v14 = *(v13 + 16);
  v15 = *(v13 + 96);
  v16 = MRCreateIndentedDebugDescriptionFromObject();
  v17 = [NSString stringWithFormat:@"%@: %p {\n    endpoint = %@\n    external device = %@\n    connection state = %@\n    last can migrate to local endpoint error = %@\n    deviceInfo = %@\n    discovery modes = %@    external device clients = %@\n    external output context = %@\n    external output context debug = %@\n    groupSession token = %@\n    subscribed playerPaths = %@\n    lifetimeController = %@\n}", v28, v26, v31, v25, v22, v21, v30, v7, v8, v20, v10, v12, v14, v16];
  v18 = *(*(a1 + 40) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;
}

void sub_1000FD844(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000FD9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FD9E8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) uid];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000FDB50(uint64_t a1)
{
  [*(*(a1 + 32) + 48) setDelegate:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  *(*(a1 + 32) + 9) = 1;
}

id sub_1000FDB9C(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  if ([(MRAVOutputDevice *)v2 deviceType]== 4 && [(MRAVOutputDevice *)v2 deviceSubtype]!= 4 || [(MRAVOutputDevice *)v2 isPersonalRoute])
  {
    v3 = [(MRAVOutputDevice *)v2 descriptor];
    if ([(MRAVOutputDevice *)v2 deviceType]== 4)
    {
      v4 = MSVCopyLocalizedModelName();
    }

    else
    {
      v4 = [(MRAVOutputDevice *)v2 name];
    }

    v6 = v4;
    [v3 setName:v4];

    v7 = [(MRAVOutputDevice *)v2 uid];
    [v3 setUniqueIdentifier:v7];

    v5 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000FE19C(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FE260;
  block[3] = &unk_1004B8728;
  v3 = *(a1 + 32);
  block[4] = *(a1 + 40);
  v4 = a2;
  dispatch_sync(v3, block);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _externalDeviceClientDidInvalidate:v6 withError:v4];
}

void sub_1000FE274(uint64_t a1)
{
  v2 = [[NSError alloc] initWithMRError:1 description:@"xpc interruption"];
  (*(*(a1 + 32) + 16))();
}

void sub_1000FE2E4(uint64_t a1)
{
  v2 = [[NSError alloc] initWithMRError:1 description:@"xpc invalidation"];
  (*(*(a1 + 32) + 16))();
}

void *sub_1000FE354(void *result)
{
  if ((*(*(result[6] + 8) + 24) & 1) == 0)
  {
    return [*(result[4] + 80) addObject:result[5]];
  }

  return result;
}

void sub_1000FECDC(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = _MRLogForCategory();
  v6 = v5;
  if (!v3)
  {
    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v15 = a1[5];
      v14 = a1[6];
      v16 = a1[4];
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:a1[7]];
      v25 = 138544130;
      v26 = v15;
      v27 = 2114;
      v28 = v14;
      v29 = 2114;
      v30 = v16;
      v31 = 2048;
      v32 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v6;
      v20 = 42;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v21 = a1[5];
      v22 = a1[6];
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:a1[7]];
      v25 = 138543874;
      v26 = v21;
      v27 = 2114;
      v28 = v22;
      v29 = 2048;
      v30 = v23;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v6;
      v20 = 32;
    }

    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, &v25, v20);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v9 = a1[5];
    v8 = a1[6];
    v10 = a1[4];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:a1[7]];
    v25 = 138544386;
    v26 = v9;
    v27 = 2114;
    v28 = v8;
    v29 = 2114;
    v30 = v3;
    v31 = 2114;
    v32 = v10;
    v33 = 2048;
    v34 = v12;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v25, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    sub_1003A8F00();
  }

LABEL_14:

  v24 = a1[8];
  if (v24)
  {
    (*(v24 + 16))(v24, v3);
  }
}

void sub_1000FEF40(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setHasConnectionAttemptCompleted:1];
  if (!v3)
  {
    [*(a1 + 32) hostedExternalDeviceConnectionStateDidChange:2 withError:0];
  }

  if ([*(a1 + 40) disarm])
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000FF62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose((v33 - 160), 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1000FF65C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = _MRLogForCategory();
  v6 = v5;
  if (!v3)
  {
    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      v15 = *(a1 + 32);
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v27 = v14;
      v28 = 2114;
      v29 = v9;
      v30 = 2114;
      v31 = v15;
      v32 = 2048;
      v33 = v16;
      v17 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v18 = v6;
      v19 = 42;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v20 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138543874;
      v27 = v20;
      v28 = 2114;
      v29 = v9;
      v30 = 2048;
      v31 = v21;
      v17 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v18 = v6;
      v19 = 32;
    }

    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) requestID];
    v10 = *(a1 + 32);
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v27 = v8;
    v28 = 2114;
    v29 = v9;
    v30 = 2114;
    v31 = v3;
    v32 = 2114;
    v33 = v10;
    v34 = 2048;
    v35 = v12;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    sub_1003A8FCC();
  }

LABEL_14:

  v22 = *(a1 + 72);
  if (v22)
  {
    v23 = *(*(a1 + 64) + 64);
    v25 = v22;
    v24 = v3;
    msv_dispatch_async_on_queue();
  }
}

void sub_1000FF954(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _endpointSupportsVolumeControl:*(*(a1 + 32) + 32)];
  v2 = *(*(a1 + 32) + 24);
  v3 = (*(*(a1 + 48) + 8) + 40);

  objc_storeStrong(v3, v2);
}

void sub_1000FF9C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000FFF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose((v33 - 160), 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1000FFF7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = _MRLogForCategory();
  v6 = v5;
  if (!v3)
  {
    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      v15 = *(a1 + 32);
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v27 = v14;
      v28 = 2114;
      v29 = v9;
      v30 = 2114;
      v31 = v15;
      v32 = 2048;
      v33 = v16;
      v17 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v18 = v6;
      v19 = 42;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v20 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138543874;
      v27 = v20;
      v28 = 2114;
      v29 = v9;
      v30 = 2048;
      v31 = v21;
      v17 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v18 = v6;
      v19 = 32;
    }

    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) requestID];
    v10 = *(a1 + 32);
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v27 = v8;
    v28 = 2114;
    v29 = v9;
    v30 = 2114;
    v31 = v3;
    v32 = 2114;
    v33 = v10;
    v34 = 2048;
    v35 = v12;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    sub_1003A8FCC();
  }

LABEL_14:

  v22 = *(a1 + 72);
  if (v22)
  {
    v23 = *(*(a1 + 64) + 64);
    v25 = v22;
    v24 = v3;
    msv_dispatch_async_on_queue();
  }
}

void sub_100100274(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _endpointSupportsVolumeControl:*(*(a1 + 32) + 32)];
  v2 = *(*(a1 + 32) + 24);
  v3 = (*(*(a1 + 48) + 8) + 40);

  objc_storeStrong(v3, v2);
}

void sub_1001002E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100100854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose((v33 - 160), 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_100100884(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = _MRLogForCategory();
  v6 = v5;
  if (!v3)
  {
    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      v15 = *(a1 + 32);
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v27 = v14;
      v28 = 2114;
      v29 = v9;
      v30 = 2114;
      v31 = v15;
      v32 = 2048;
      v33 = v16;
      v17 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v18 = v6;
      v19 = 42;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v20 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138543874;
      v27 = v20;
      v28 = 2114;
      v29 = v9;
      v30 = 2048;
      v31 = v21;
      v17 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v18 = v6;
      v19 = 32;
    }

    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) requestID];
    v10 = *(a1 + 32);
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v27 = v8;
    v28 = 2114;
    v29 = v9;
    v30 = 2114;
    v31 = v3;
    v32 = 2114;
    v33 = v10;
    v34 = 2048;
    v35 = v12;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    sub_1003A8FCC();
  }

LABEL_14:

  v22 = *(a1 + 72);
  if (v22)
  {
    v23 = *(*(a1 + 64) + 64);
    v25 = v22;
    v24 = v3;
    msv_dispatch_async_on_queue();
  }
}

void sub_100100B7C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _endpointSupportsVolumeControl:*(*(a1 + 32) + 32)];
  v2 = *(*(a1 + 32) + 24);
  v3 = (*(*(a1 + 48) + 8) + 40);

  objc_storeStrong(v3, v2);
}

void sub_100100BE8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100100FD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[NSError alloc] initWithMRError:123];
  (*(v1 + 16))(v1, v2);
}

void sub_100101200(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[NSError alloc] initWithMRError:123];
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t sub_1001015BC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001015D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[NSError alloc] initWithMRError:123];
  (*(v1 + 16))(v1, v2);
}

void sub_100101F34(uint64_t a1)
{
  v2 = [*(a1 + 32) lifetimeController];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100102514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_100102584(void *a1)
{
  v2 = [*(a1[4] + 24) customOrigin];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 32));
  v5 = *(a1[4] + 24);
  v6 = (*(a1[7] + 8) + 40);

  objc_storeStrong(v6, v5);
}

void sub_100102604(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [*(a1 + 32) name];
  [WeakRetained _processCanMigrateToLocalEndpointEvent:v4 timestamp:*(a1 + 40) error:v3];
}

void sub_1001027C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001027D8(uint64_t a1)
{
  [*(a1 + 32) timeIntervalSinceDate:*(*(a1 + 40) + 104)];
  if (v2 > 0.0)
  {
    objc_storeStrong((*(a1 + 40) + 104), *(a1 + 32));
    v3 = [*(a1 + 48) code];
    v4 = [*(*(a1 + 40) + 40) code];
    v5 = *(a1 + 48);
    if (v3 == v4)
    {
LABEL_14:
      objc_storeStrong((*(a1 + 40) + 40), v5);
      return;
    }

    if (!v5)
    {
      v7 = MRLogCategoryConnections();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 40);
        v14 = *(a1 + 56);
        v17 = 138543618;
        v18 = v13;
        v19 = 2114;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDAVHostedExternalDevice] %{public}@ adding iPhone row for pull handoff back to self for: <%{public}@>", &v17, 0x16u);
      }

      goto LABEL_12;
    }

    v6 = *(*(a1 + 40) + 40);
    v7 = MRLogCategoryConnections();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v9 = *(a1 + 56);
      v10 = *(a1 + 40);
      v11 = [*(a1 + 48) localizedDescription];
      v17 = 138543874;
      v18 = v10;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v11;
      v12 = "[MRDAVHostedExternalDevice] %{public}@ maintaing iPhone row for pull handoff back to self for: <%{public}@> because: <%{public}@>";
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v15 = *(a1 + 56);
      v16 = *(a1 + 40);
      v11 = [*(a1 + 48) localizedDescription];
      v17 = 138543874;
      v18 = v16;
      v19 = 2114;
      v20 = v15;
      v21 = 2114;
      v22 = v11;
      v12 = "[MRDAVHostedExternalDevice] %{public}@ removing iPhone row for pull handoff back to self for: <%{public}@> because: <%{public}@>";
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v12, &v17, 0x20u);

LABEL_12:
    v5 = *(a1 + 48);
    if ((v5 == 0) == (*(*(a1 + 40) + 40) != 0))
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      v5 = *(a1 + 48);
    }

    goto LABEL_14;
  }
}

void sub_100102B1C(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) distantOutputDeviceRepresentation];
  [v2 _maybePostVolumeControlCapabilitiesDidChange:v1 outputDevice:v3];
}

void sub_100102C90(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) distantOutputDeviceRepresentation];
  LODWORD(v3) = v1;
  [v2 _maybePostVolumeDidChange:v4 outputDevice:v3];
}

void sub_100102E0C(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) distantOutputDeviceRepresentation];
  [v2 _maybePostVolumeIsMutedDidChange:v1 outputDevice:v3];
}

void sub_100102F30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) distantOutputDeviceRepresentation];
  [v1 _maybePostEndpointDidAddOutputDevice:v2];
}

void sub_10010304C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) distantOutputDeviceRepresentation];
  [v1 _maybePostEndpointDidChangeOutputDevice:v2];
}

void sub_100103168(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) distantOutputDeviceRepresentation];
  [v1 _maybePostEndpointDidRemoveOutputDevice:v2];
}

void sub_1001038E4(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10003510C;
  v21 = sub_100035A3C;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10003510C;
  v15 = sub_100035A3C;
  v16 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100103AFC;
  block[3] = &unk_1004B9C58;
  block[4] = v2;
  block[5] = &v17;
  block[6] = &v11;
  dispatch_sync(v3, block);
  if ([v18[5] supportsDesignatedGroupLeaderUpdates])
  {
    v4 = [*(a1 + 40) designatedProxyGroupLeader];
    [v18[5] updateDesignatedGroupLeader:v4];
  }

  [*(a1 + 32) _onReloadQueue_hostedExternalDeviceEndpointDidChange:*(a1 + 40)];
  if ([*(a1 + 32) _shouldReevaluateVolumeControlCapabilitiesForEndpoint:*(a1 + 40) previousEndpoint:v12[5] externalDevice:v18[5]])
  {
    [*(a1 + 32) _reevaluateVolumeControlCapabilitiesForEndpoint:*(a1 + 40)];
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100103B54;
  v8[3] = &unk_1004B68F0;
  v8[4] = v6;
  v9 = v5;
  dispatch_sync(v7, v8);

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
}

void sub_100103AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100103AFC(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 24));
  v2 = *(a1[4] + 32);
  v3 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v3, v2);
}

void sub_100104474(id a1)
{
  v3 = [MRAVRoutingDiscoverySessionConfiguration configurationWithEndpointFeatures:1];
  [v3 setAlwaysAllowUpdates:1];
  v1 = [MRAVRoutingDiscoverySession discoverySessionWithConfiguration:v3];
  v2 = qword_100529440;
  qword_100529440 = v1;
}

void sub_10010498C(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1[4] + 80);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 connection];
        v9 = [v8 isEqual:a1[5]];

        if (v9)
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_100104F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100104FBC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_10003510C;
    v21 = sub_100035A3C;
    v22 = 0;
    v6 = WeakRetained[7];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100105124;
    v14 = &unk_1004B6D30;
    v16 = &v17;
    v7 = WeakRetained;
    v15 = v7;
    dispatch_sync(v6, &v11);
    v8 = [v18[5] count];
    v9 = [v7 personalOutputDevices];
    v10 = [v9 count];

    if (v8 != v10)
    {
      [v7 _reloadEndpoint];
    }

    _Block_object_dispose(&v17, 8);
  }
}

void sub_10010510C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100105124(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) personalOutputDevices];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100105450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose((v24 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10010548C(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 24));
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1[4] + 80);
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

        *(*(a1[6] + 8) + 24) |= [*(*(&v7 + 1) + 8 * v6) registeredCallbacks];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1001055A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hostedExternalDeviceDidReceiveCustomData:a3 withName:a2];
}

void sub_100105728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100105740(void *a1)
{
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 24));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1[4] + 80);
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

        v7 = a1[5];
        v8 = [*(*(&v9 + 1) + 8 * v6) subscribedPlayerPaths];
        [v7 addObjectsFromArray:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_10010597C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100105AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100105BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100105D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100105E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100105F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100106458(uint64_t a1)
{
  result = [*(a1 + 32) hostedExternalDeviceVolumeCapabilitiesDidChange:*(a1 + 40) forOutputDevice:0];
  if ((*(a1 + 40) & 2) != 0)
  {
    v4 = *(a1 + 32);
    LODWORD(v3) = *(a1 + 44);

    return [v4 hostedExternalDeviceVolumeDidChange:0 forOutputDevice:v3];
  }

  return result;
}

void sub_100107044(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_100107BAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MRCompositeMessage);
  [v4 setTransportOptions:*(a1 + 32)];
  [v4 addMessage:*(a1 + 40)];
  if (([*(a1 + 48) _connection:v3 wasPreviouslySubscribedToPlayerPath:*(a1 + 56)] & 1) == 0)
  {
    v5 = *(a1 + 64);
    v6 = [*(a1 + 56) origin];
    v7 = [v5 originClientForOrigin:v6];

    if (v7)
    {
      [*(a1 + 48) _addSubscribedStateToMessage:v4 forClient:v3 originClient:v7];
      v8 = *(a1 + 48);
      v9 = [v7 activeNowPlayingClient];
      [v8 _addSubscribedStateToMessage:v4 forClient:v3 nowPlayingClient:v9];

      v10 = *(a1 + 48);
      v11 = [v7 activeNowPlayingClient];
      v12 = [v11 activePlayerClient];
      [v10 _addSubscribedStateToMessage:v4 forClient:v3 playerClient:v12];
    }
  }

  return v4;
}

id sub_100108064(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = [NSNumber numberWithInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = [[MRSetDefaultSupportedCommandsMessage alloc] initWithDefaultSupportedCommands:a1[5] forPlayerPath:a1[6] encoding:a2];
    v7 = a1[4];
    v8 = [NSNumber numberWithInteger:a2];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  return v6;
}

id sub_10010812C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 supportedMessages];
  v5 = [v4 isSupported:72];

  if (v5)
  {
    v6 = [v3 deviceInfo];
    [v6 preferredEncoding];

    v7 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1001082CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MRCompositeMessage);
  v5 = [*(a1 + 32) clientProperties];
  if (v5)
  {
    v6 = [[MRUpdateClientMessage alloc] initWithClient:v5];
    [v4 addMessage:v6];
  }

  v25 = [*(a1 + 32) playerProperties];
  if (v25)
  {
    v7 = [[MRUpdatePlayerMessage alloc] initWithPlayerPath:*(a1 + 40)];
    [v4 addMessage:v7];
  }

  v8 = [*(a1 + 32) state];
  v9 = [v3 exportNowPlayingState:v8 forPlayerPath:*(a1 + 40)];

  v10 = [v3 deviceInfo];
  v11 = [v10 preferredEncoding];

  if (v9)
  {
    v12 = [[MRSetStateMessage alloc] initWithNowPlayingState:v9 encoding:v11];
    [v4 addMessage:v12];
  }

  v13 = [v9 playbackQueue];
  if (v13)
  {
    v14 = +[MRPlaybackQueueRequest defaultPlaybackQueueRequest];
    v15 = [v3 playbackQueueRequests];
    v16 = [v15 subscriptionControllerForPlayerPath:*(a1 + 40)];

    [v16 subscribeToPlaybackQueue:v13 forRequest:v14];
  }

  v17 = [*(a1 + 32) contentItems];
  v18 = [v3 exportContentItems:v17 forPlayerPath:*(a1 + 40)];

  if ([v18 count])
  {
    v19 = [[MRUpdateContentItemMessage alloc] initWithContentItems:v18 forPlayerPath:*(a1 + 40) encoding:v11];
    [v4 addMessage:v19];
  }

  v20 = [*(a1 + 32) contentItemsArtwork];
  v21 = [v3 exportContentItemArtworkUpdates:v20 forPlayerPath:*(a1 + 40)];

  if ([v21 count])
  {
    v22 = [[MRUpdateContentItemArtworkMessage alloc] initWithContentItems:v21 forPlayerPath:*(a1 + 40) encoding:v11];
    [v4 addMessage:v22];
  }

  v23 = objc_alloc_init(MRProtocolMessageOptions);
  [v23 setPriority:4];
  [v4 setTransportOptions:v23];

  return v4;
}

void sub_10010884C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRUserSettings currentSettings];
  v5 = [v4 shouldLogPairingSetupCode];

  if (v5)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Remote Passcode: %@", &buf, 0xCu);
    }
  }

  if ([v3 isPairingAllowed])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v15 = 0x3032000000;
    v16 = sub_10003511C;
    v17 = sub_100035A44;
    v18 = *(a1 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100108A34;
    block[3] = &unk_1004B7798;
    p_buf = &buf;
    v10 = *(a1 + 32);
    v8 = v10.i64[0];
    v12 = vextq_s8(v10, v10, 8uLL);
    dispatch_async(&_dispatch_main_q, block);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    Error = MRMediaRemoteCreateError();
    [*(a1 + 40) _notifyAndDisconnectClient:*(a1 + 48) withError:Error];
  }
}

void sub_100108A34(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(*(a1[6] + 8) + 40))
  {
    [*(a1[4] + 48) showWithPin:a1[5] forClient:?];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100108CE8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 48) closeForClient:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100109140(uint64_t a1, void *a2)
{
  v3 = [a2 parentUID];
  if (v3)
  {
    v4 = +[MRUserSettings currentSettings];
    if ([v4 supportGenericAudioGroup])
    {
      v5 = [*(a1 + 32) deviceInfo];
      v6 = [v5 isAwareOfCluster:3];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

id sub_1001091D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 connection];
  v6 = [v5 exportOutputDevice:v4 endpoint:*(a1 + 40)];

  return v6;
}

id sub_100109248(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == 1)
  {
    v5 = [v3 descriptor];
    [v5 setIsVolumeControlAvailable:0];
    [v5 setHasIsVolumeControlAvailable:0];
    [v5 setVolumeCapabilities:0];
    [v5 setHasVolumeCapabilities:0];
    [v5 setVolume:0.0];
    [v5 setHasVolume:0];
    [v5 setVolumeMuted:0];
    [v5 setHasVolumeMuted:0];
    v6 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v5];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

id sub_100109434(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MRCompositeMessage);
  v5 = [*(a1 + 32) _createLocalizedOutputDevice:*(a1 + 40) redactVolume:1 forClient:v3 endpoint:*(a1 + 48)];
  if (v5)
  {
    v6 = [MRSyncOutputDevicesMessage alloc];
    v12 = v5;
    v7 = [NSArray arrayWithObjects:&v12 count:1];
    v8 = [v3 deviceInfo];
    v9 = [v6 initWithOutputDevices:v7 forClientWithDeviceInfo:v8];

    [v4 addMessage:v9];
    v10 = [*(a1 + 32) _createLocalizedOutputDevice:*(a1 + 40) redactVolume:0 forClient:v3 endpoint:*(a1 + 48)];
    [*(a1 + 32) _addVolumeToMessage:v4 forClient:v3 outputDevice:v10 withEndpoint:*(a1 + 48)];
  }

  return v4;
}

id sub_10010969C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 deviceInfo];
  v5 = [v4 supportsOutputContextSync];

  if (v5)
  {
    v6 = [*(a1 + 32) _createLocalizedOutputDevice:*(a1 + 40) redactVolume:1 forClient:v3 endpoint:*(a1 + 48)];
    if (v6)
    {
      v7 = [MRSyncOutputDevicesMessage alloc];
      v12 = v6;
      v8 = [NSArray arrayWithObjects:&v12 count:1];
      v9 = [v3 deviceInfo];
      v10 = [v7 initWithOutputDevices:v8 forClientWithDeviceInfo:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_1001098D0(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _createLocalizedOutputDevice:*(a1 + 40) redactVolume:1 forClient:a2 endpoint:*(a1 + 48)];
  v3 = [MRRemoveSyncedOutputDevicesMessage alloc];
  v4 = [v2 uid];
  v5 = [v3 initWithOutputDeviceUID:v4];

  return v5;
}

id sub_100109AB0(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _createLocalizedOutputDevice:*(a1 + 40) redactVolume:0 forClient:a2 endpoint:*(a1 + 48)];
  v4 = [MRVolumeControlCapabilitiesDidChangeMessage alloc];
  v5 = *(a1 + 56);
  v6 = [v3 groupID];
  v7 = [v3 uid];
  v8 = [v4 initWithCapabilities:v5 endpointUID:v6 outputDeviceUID:v7];

  return v8;
}

id sub_100109CC0(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _createLocalizedOutputDevice:*(a1 + 40) redactVolume:0 forClient:a2 endpoint:*(a1 + 48)];
  v4 = [MRVolumeDidChangeMessage alloc];
  v5 = *(a1 + 56);
  v6 = [v3 groupID];
  v7 = [v3 uid];
  LODWORD(v8) = v5;
  v9 = [v4 initWithVolume:v6 endpointUID:v7 outputDeviceUID:v8];

  return v9;
}

id sub_100109EC8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _createLocalizedOutputDevice:*(a1 + 40) redactVolume:0 forClient:a2 endpoint:*(a1 + 48)];
  v4 = [MRVolumeMutedDidChangeMessage alloc];
  v5 = *(a1 + 56);
  v6 = [v3 uid];
  v7 = [v4 initWithMuted:v5 outputDeviceUID:v6];

  return v7;
}

void sub_10010A0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10010A0D4(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = [[MRDeviceInfoUpdateMessage alloc] initWithDeviceInfo:*(a1 + 32)];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  return v2;
}

void sub_10010A42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10010A444(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = +[MRDMediaRemoteServer server];
    v4 = [v3 nowPlayingServer];
    v5 = [v4 originClientForOrigin:*(a1 + 32)];

    [v5 timeSincePlaying];
    v7 = [NSDate dateWithTimeIntervalSinceNow:-v6];
    v8 = [v5 devicePlaybackSessionID];
    v9 = [[MROriginClientPropertiesMessage alloc] initWithLastPlayingDate:v7 devicePlaybackSessionID:v8];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  return v2;
}

void sub_10010ABBC(uint64_t a1)
{
  [*(a1 + 32) setConnectedExternalDevices:*(*(a1 + 40) + 8)];
  v2 = [*(*(a1 + 40) + 16) allObjects];
  [*(a1 + 32) setTelevisionEndpoints:v2];

  v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(*(a1 + 40) + 88), "count")}];
  v4 = *(*(a1 + 40) + 88);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010AD14;
  v8[3] = &unk_1004BCC98;
  v9 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
  [*(a1 + 32) setDiscoverySessions:v5];
  [*(a1 + 32) setRemoteControlService:*(*(a1 + 40) + 120)];
  v6 = [*(*(a1 + 40) + 40) debugDescription];
  [*(a1 + 32) setBatchedNowPlayingState:v6];

  v7 = [*(*(a1 + 40) + 96) mr_formattedDebugDescription];
  [*(a1 + 32) setRemoteASEState:v7];
}

void sub_10010AD14(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [NSString alloc];
  v11 = [v6 description];

  [v5 discoveryMode];
  v8 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
  v9 = [v5 availableOutputDevices];

  v10 = [v7 initWithFormat:@"%@ -> %@\n%@", v11, v8, v9];
  [v4 addObject:v10];
}

id sub_10010AF7C(uint64_t a1)
{
  [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];
  [*(a1 + 40) setDelegate:*(a1 + 32)];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 setServerDelegate:v3];
}

void sub_10010B4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose((v31 - 160), 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_10010B4F8(void *a1)
{
  *(*(a1[6] + 8) + 24) = [*(a1[4] + 8) containsObject:a1[5]];
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    [*(a1[4] + 8) removeObject:a1[5]];
    v2 = [*(a1[4] + 128) objectForKey:a1[5]];
    v3 = *(a1[7] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void sub_10010B58C(id a1, _MRLyricsEventProtobuf *a2)
{
  v2 = a2;
  v5 = +[NSDate date];
  MRLyricsEventGetStartDate();
  MRLyricsEventGetToken();

  End = MRLyricsEventCreateEnd();
  v4 = +[MROrigin localOrigin];
  MRMediaRemoteRemoteSendLyricsEvent();
}

void sub_10010B644(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [NSError alloc];
  v10 = [*(a1 + 32) deviceInfo];
  v8 = [v10 name];
  v9 = [v7 initWithMRError:25 format:{@"Connection %@ exited in the middle of a migration", v8}];
  MRMediaRemoteSendPlaybackSessionMigrateFinalize();
}

BOOL sub_10010B908(uint64_t a1, void *a2)
{
  v3 = [a2 cryptoSession];
  v4 = v3 == *(a1 + 32);

  return v4;
}

id sub_10010B9F8(uint64_t a1, void *a2)
{
  v3 = [a2 deviceInfo];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

void sub_10010C300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10010C324(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) origin];
    LODWORD(v4) = [WeakRetained _connection:v4 canReceiveUpdatesForOrigin:v5];

    if (v4)
    {
      v6 = *(a1 + 40);
      v7 = (*(*(a1 + 48) + 16))();
      if (v7)
      {
        [*(a1 + 40) sendMessage:v7];
      }
    }
  }
}

id sub_10010C4B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) parentUID];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v6 = +[MRUserSettings currentSettings];
  if ([v6 supportGenericAudioGroup])
  {
    v7 = [v3 deviceInfo];
    v8 = [v7 isAwareOfCluster:3];

    if (v8)
    {
LABEL_4:
      v9 = (*(*(a1 + 40) + 16))();
      goto LABEL_7;
    }
  }

  else
  {
  }

  v9 = 0;
LABEL_7:

  return v9;
}

void sub_10010CCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010CCD0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10010D240(id *a1)
{
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10010D620;
  v37[3] = &unk_1004BCDB0;
  v38 = a1[4];
  v2 = objc_retainBlock(v37);
  v3 = objc_alloc_init(MRProtocolMessageOptions);
  [v3 setPriority:5];
  v25 = v3;
  [v3 setWaking:1];
  group = dispatch_group_create();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = a1[5];
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v40 count:16];
  v6 = v5 != 0;
  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = v5;
  v8 = 0;
  v9 = *v34;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v34 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v33 + 1) + 8 * i);
      if ((v2[2])(v2, v11))
      {
        v12 = [[MRSetConnectionStateMessage alloc] initWithConnectionState:3];
        [v12 setTransportOptions:v25];
        [v12 setError:a1[4]];
        dispatch_group_enter(group);
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_10010D6F0;
        v31[3] = &unk_1004BA838;
        v32 = group;
        [v11 sendMessage:v12 reply:v31];

        v8 = 1;
      }
    }

    v7 = [v4 countByEnumeratingWithState:&v33 objects:v40 count:16];
  }

  while (v7);

  if (v8)
  {
    v4 = +[MRUserSettings currentSettings];
    [v4 externalDeviceDisconnectWaitDuration];
    v14 = dispatch_time(0, (v13 * 1000000000.0));
    dispatch_group_wait(group, v14);
LABEL_12:

    goto LABEL_14;
  }

  v6 = 0;
LABEL_14:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = a1[5];
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * j);
        if ((v2[2])(v2, v20))
        {
          [a1[6] _disconnectClient:v20 withError:a1[4]];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v17);
  }

  v21 = a1[7];
  if (v6)
  {
    if (v21)
    {
      v22 = +[MRUserSettings currentSettings];
      [v22 externalDeviceDisconnectSleepDuration];
      v24 = dispatch_time(0, (v23 * 1000000000.0));
      dispatch_after(v24, &_dispatch_main_q, a1[7]);
    }
  }

  else if (v21)
  {
    v21[2]();
  }
}

uint64_t sub_10010D620(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) code] == 115)
  {
    v4 = [v3 deviceInfo];
    v5 = [v4 bundleIdentifier];
    v6 = [v4 bundleVersion];
    if ([v5 isEqualToString:@"com.apple.TVRemote"])
    {
      v7 = [v6 integerValue] > 165;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 | [v5 isEqualToString:@"com.apple.tvremotecore.xpc"];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

void sub_10010D7C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10010D7E8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] System pairing removed: %{public}@ -- Attempting to disconnect...", &v11, 0xCu);
  }

  v6 = [v3 info];
  v7 = [v6 objectForKey:kMRMediaRemoteTelevisionPairingExtendedInfoKey];

  v8 = [v7 objectForKey:kMRMediaRemoteTelevisionPairingExtendedInfoIdentifierKey];
  if (v8)
  {
    v9 = [WeakRetained _clientForIdentifier:v8];
    if (v9)
    {
      Error = MRMediaRemoteCreateError();
      [WeakRetained _notifyAndDisconnectClient:v9 withError:Error];
    }

    else
    {
      Error = _MRLogForCategory();
      if (os_log_type_enabled(Error, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, Error, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] No active connection to disconnect", &v11, 2u);
      }
    }
  }

  else
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] No TVRemote pairing found coresponding to removed system pairing", &v11, 2u);
    }
  }
}

void sub_10010DE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_10010DEAC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained outputDevicesChanged:v3 forConfiguration:*(a1 + 32)];
}

void sub_10010DFB8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 setServerDiscoveryMode:objc_msgSend(v2 forConfiguration:{"serverDiscoveryModeForConfiguration:", v3), v3}];
}

void sub_10010E2E0(uint64_t a1, void *a2)
{
  v15 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  if (([v4 features] & 8) != 0)
  {
    v6 = +[MRDMediaRemoteServer server];
    v7 = [v6 routingServer];
    v8 = [v7 hostedRoutingService];
    v9 = [v8 hostedRoutingController];
    v10 = [v9 discoverySession];
    v11 = [v10 unclusteredOutputDevices];

    v15 = v11;
  }

  v12 = [*(a1 + 48) connection];
  v13 = [v12 exportOutputDevices:v15 endpoint:v5];

  v14 = [[MRDiscoveryUpdateOutputDevicesMessage alloc] initWithOutputDevices:v13 configuration:*(a1 + 40)];
  [*(a1 + 48) sendMessage:v14];
}

void sub_10010E770(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v15 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v15)
  {
    v13 = *v21;
    do
    {
      v1 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v2 = *(*(&v20 + 1) + 8 * v1);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v3 = *(*(a1 + 40) + 8);
        v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v4)
        {
          v5 = v4;
          v6 = *v17;
          do
          {
            v7 = 0;
            do
            {
              if (*v17 != v6)
              {
                objc_enumerationMutation(v3);
              }

              v8 = [*(*(&v16 + 1) + 8 * v7) deviceInfo];
              v9 = [v2 identifier];
              v10 = [v8 identifier];
              v11 = [v9 isEqualToString:v10];

              if (v11)
              {
                [v2 setConnected:1];
              }

              v7 = v7 + 1;
            }

            while (v5 != v7);
            v5 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v5);
        }

        v1 = v1 + 1;
      }

      while (v1 != v15);
      v15 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v15);
  }
}

id sub_10010EBAC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = _MRLogForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Adding television endpoint %{public}@", &v8, 0xCu);
    }

    return [*(*(a1 + 40) + 16) addObject:*(a1 + 32)];
  }

  else
  {
    if (v4)
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Removing television endpoint %{public}@", &v8, 0xCu);
    }

    return [*(*(a1 + 40) + 16) removeObject:*(a1 + 32)];
  }
}

void sub_10010EEB8(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MRProtocolMessageOptions);
  [v6 setPriority:5];
  [v6 setWaking:1];
  if (v15)
  {
    v7 = +[MRDMediaRemoteServer server];
    v8 = [v7 nowPlayingServer];
    v9 = [v15 origin];
    v10 = [v8 originClientForOrigin:v9];
    v11 = [v10 deviceInfo];

    v12 = [[MRDeviceInfoMessage alloc] initWithDeviceInfo:v11];
  }

  else if (v5)
  {
    v12 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v5];
  }

  else
  {
    v12 = 0;
  }

  [v12 setTransportOptions:v6];
  [*(a1 + 32) replyWithMessage:v12];
  v13 = *(a1 + 40);
  v14 = [*(a1 + 32) deviceInfo];
  [v13 _handleRemoteDeviceInfo:v14];
}

void sub_10010F11C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) options];
  v6 = [v5 mutableCopy];

  v7 = [v6 objectForKeyedSubscript:kMRMediaRemoteOptionCommandID];
  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:kMRMediaRemoteOptionOriginatedFromRemoteDevice];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10010F364;
  v17 = &unk_1004B7478;
  v8 = v7;
  v18 = v8;
  v19 = *(a1 + 32);
  v9 = objc_retainBlock(&v14);
  if (([*(a1 + 40) hasAccessToPlayerPath:{v3, v14, v15, v16, v17}] & 1) == 0)
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1003A9620();
    }

    v12 = @"Client not authorized to send command to playerPath";
    goto LABEL_10;
  }

  if (([*(a1 + 40) isAllowedToSendCommand:{objc_msgSend(*(a1 + 32), "command")}] & 1) == 0)
  {
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1003A9690(v4, v13);
    }

    v12 = @"Client not authorized to send command type";
LABEL_10:
    v10 = [MRCommandResult commandResultWithSendError:3 description:v12];
    (v9[2])(v9, v10);
    goto LABEL_11;
  }

  [*v4 command];
  [*v4 appOptions];
  v10 = dispatch_get_global_queue(0, 0);
  MRMediaRemoteSendCommandToPlayerWithResult();
LABEL_11:
}

void sub_10010F364(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_alloc_init(MRProtocolMessageOptions);
  [v5 setPriority:5];
  v4 = [[MRSendCommandResultMessage alloc] initWithCommandID:*(a1 + 32) commandResult:v3];

  [v4 setTransportOptions:v5];
  [*(a1 + 40) replyWithMessage:v4];
}

void sub_10010F94C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MRProtocolMessageOptions);
  [v7 setPriority:5];
  [v7 setWaking:1];
  if (v6)
  {
    v8 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v6];
    [v8 setTransportOptions:v7];
    [*(a1 + 32) replyWithMessage:v8];
  }

  else
  {
    [*(a1 + 40) setRegisteredKeyboardUpdates:{objc_msgSend(*(a1 + 32), "keyboardUpdates")}];
    [*(a1 + 40) setRegisteredToOutputDeviceUpdates:{objc_msgSend(*(a1 + 32), "outputDeviceUpdates")}];
    [*(a1 + 40) setRegisteredToSystemEndpointUpdates:{objc_msgSend(*(a1 + 32), "systemEndpointUpdates")}];
    [*(a1 + 40) setRegisteredToNowPlayingUpdates:{objc_msgSend(*(a1 + 32), "nowPlayingUpdates")}];
    v9 = [v5 origin];
    v10 = [*(a1 + 32) subscribedPlayerPaths];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10010FCB0;
    v25[3] = &unk_1004BCEF0;
    v8 = v9;
    v26 = v8;
    v11 = [v10 mr_map:v25];
    [*(a1 + 40) setSubscribedPlayerPaths:v11];

    v12 = objc_alloc_init(MRCompositeMessage);
    [v12 setTransportOptions:v7];
    v13 = dispatch_group_create();
    if ((*(a1 + 64) & 1) == 0 && [*(a1 + 32) outputDeviceUpdates])
    {
      [*(a1 + 48) _addOutputDevicesToMessage:v12 forClient:*(a1 + 40) withEndpoint:v5];
    }

    if ((*(a1 + 65) & 1) == 0 && [*(a1 + 32) volumeUpdates])
    {
      dispatch_group_enter(v13);
      v15 = *(a1 + 40);
      v14 = *(a1 + 48);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10010FD78;
      v23[3] = &unk_1004B6D08;
      v24 = v13;
      [v14 _addVolumeToMessage:v12 forClient:v15 withEndpoint:v5 completion:v23];
    }

    v16 = [*(a1 + 40) subscribedPlayerPaths];
    v17 = v16;
    if (v16 == *(a1 + 56))
    {
      v18 = 1;
    }

    else
    {
      v18 = [v16 isEqual:?];
    }

    if (*(a1 + 66) != 1 || (v18 & 1) == 0)
    {
      if ([*(a1 + 32) nowPlayingUpdates])
      {
        [*(a1 + 48) _addNowPlayingStateToMessage:v12 forClient:*(a1 + 40) withEndpoint:v5];
      }
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10010FD80;
    v20[3] = &unk_1004B68F0;
    v21 = *(a1 + 32);
    v22 = v12;
    v19 = v12;
    dispatch_group_notify(v13, &_dispatch_main_q, v20);
  }
}

id sub_10010FCB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 origin];
  if ([v4 isLocal])
  {
    v5 = [MRPlayerPath alloc];
    v6 = *(a1 + 32);
    v7 = [v3 client];
    v8 = [v3 player];
    v9 = [v5 initWithOrigin:v6 client:v7 player:v8];
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

void sub_100110408(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = [MRVolumeControlCapabilitiesDidChangeMessage alloc];
    v6 = [*(a1 + 40) groupID];
    v7 = [*(a1 + 40) uid];
    v8 = [v5 initWithCapabilities:a2 endpointUID:v6 outputDeviceUID:v7];
    [v4 addMessage:v8];

    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001105F0;
    v19[3] = &unk_1004BCF40;
    v21 = a2;
    v11 = *(a1 + 32);
    v20 = *(a1 + 40);
    [v9 _addToMessage:v11 withAllClusterDeviceMembers:v10 block:v19];
    if (a2 == 2)
    {
      dispatch_group_enter(*(a1 + 64));
      v12 = *(a1 + 72);
      v13 = [*(a1 + 56) uid];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100110694;
      v14[3] = &unk_1004BCF68;
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      v18 = *(a1 + 64);
      [v12 outputDeviceVolume:v13 queue:&_dispatch_main_q completion:v14];
    }
  }

  dispatch_group_leave(*(a1 + 64));
}

id sub_1001105F0(uint64_t a1, void *a2, int a3)
{
  if (a3 == 13)
  {
    v3 = 0;
  }

  else
  {
    v5 = a2;
    v6 = [MRVolumeControlCapabilitiesDidChangeMessage alloc];
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) groupID];
    v3 = [v6 initWithCapabilities:v7 endpointUID:v8 outputDeviceUID:v5];
  }

  return v3;
}

void sub_100110694(uint64_t a1, float a2)
{
  v4 = *(a1 + 32);
  v5 = [MRVolumeDidChangeMessage alloc];
  v6 = [*(a1 + 40) groupID];
  v7 = [*(a1 + 40) uid];
  *&v8 = a2;
  v9 = [v5 initWithVolume:v6 endpointUID:v7 outputDeviceUID:v8];
  [v4 addMessage:v9];

  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001107B8;
  v13[3] = &unk_1004BCF40;
  v15 = a2;
  v12 = *(a1 + 32);
  v14 = *(a1 + 40);
  [v10 _addToMessage:v12 withAllClusterDeviceMembers:v11 block:v13];
  dispatch_group_leave(*(a1 + 64));
}

id sub_1001107B8(uint64_t a1, void *a2, int a3)
{
  if (a3 == 13)
  {
    v3 = 0;
  }

  else
  {
    v5 = a2;
    v6 = [MRVolumeDidChangeMessage alloc];
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) groupID];
    LODWORD(v9) = v7;
    v3 = [v6 initWithVolume:v8 endpointUID:v5 outputDeviceUID:v9];
  }

  return v3;
}

void sub_1001113E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v12 = [[MRClient alloc] initWithBundleIdentifier:v6];

  v7 = [[MRPlayerPath alloc] initWithOrigin:0 client:v12 player:0];
  v8 = *(a1 + 32);
  v9 = [MRSetDefaultSupportedCommandsMessage alloc];
  v10 = [*(a1 + 40) deviceInfo];
  v11 = [v9 initWithDefaultSupportedCommands:v5 forPlayerPath:v7 encoding:{objc_msgSend(v10, "preferredEncoding")}];

  [v8 addMessage:v11];
}

void sub_100111DEC(uint64_t a1, uint64_t a2, __CFError *a3)
{
  v6 = _MRLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v7)
    {
      v11 = 138543362;
      v12 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Error registering new virtual voice input device. %{public}@", &v11, 0xCu);
    }

    Code = CFErrorGetCode(a3);
  }

  else
  {
    if (v7)
    {
      v11 = 67109120;
      LODWORD(v12) = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Successfully registered new virtual voice input device with ID %u", &v11, 8u);
    }

    [*(a1 + 32) addRegisteredVirtualVoiceInputDevice:a2];
    Code = 0;
  }

  v9 = *(a1 + 40);
  v10 = [[MRRegisterVoiceInputDeviceResponseMessage alloc] initWithDeviceID:a2 errorCode:Code];
  [v9 replyWithMessage:v10];
}

void sub_1001120D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 nowPlayingServer];
  v6 = [v5 resolveExistingPlayerPath:v3];

  v7 = [*(a1 + 32) playbackQueueRequests];
  v8 = [v7 subscriptionControllerForPlayerPath:v6];

  v9 = [*(a1 + 40) request];
  [v8 addRequest:v9];

  objc_initWeak(&location, *(a1 + 32));
  v10 = [*(a1 + 40) request];
  v11 = &_dispatch_main_q;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = *(a1 + 40);
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync();

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void sub_100112278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011229C(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (a3)
    {
      v7 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:a3];
    }

    else
    {
      v8 = [WeakRetained playbackQueueRequests];
      v9 = [v8 subscriptionControllerForPlayerPath:*(a1 + 32)];

      v10 = [*(a1 + 40) request];
      [v9 subscribeToPlaybackQueue:v16 forRequest:v10];

      v11 = [[MRNowPlayingState alloc] initWithPlayerPath:*(a1 + 32)];
      v12 = [*(a1 + 40) request];
      [v11 setRequest:v12];

      [v11 setPlaybackQueue:v16];
      v13 = [MRSetStateMessage alloc];
      v14 = [v6 deviceInfo];
      v7 = [v13 initWithNowPlayingState:v11 encoding:{objc_msgSend(v14, "preferredEncoding")}];
    }

    v15 = objc_alloc_init(MRProtocolMessageOptions);
    [v15 setPriority:5];
    [v15 setWaking:1];
    [v7 setTransportOptions:v15];
    [*(a1 + 40) replyWithMessage:v7];
  }
}

void sub_100112988(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 event];
  EndDate = MRLyricsEventGetEndDate();
  MRMediaRemoteRemoteSendLyricsEvent();

  v6 = *(a1 + 40);
  if (EndDate)
  {
    [v6 removeLyricsEvent:v7];
  }

  else
  {
    [v6 addLyricsEvent:v7];
  }
}

void sub_100112AE4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v7 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100112BE4;
  v10[3] = &unk_1004BD058;
  v13 = a2;
  v8 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v5;
  v9 = v5;
  [v7 searchForOutputDeviceUID:v8 timeout:@"authorization prompt" reason:v6 queue:v10 completion:7.0];
}

void sub_100112BE4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [[MRPromptForRouteAuthorizationMessage alloc] initWithRoute:v3 inputType:*(a1 + 48)];

    v5 = MRExternalDeviceAuthenticatedConnectionTimeout;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100112CCC;
    v7[3] = &unk_1004BBBC0;
    v6 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v6 sendMessage:v4 timeout:v7 reply:v5];
  }
}

void sub_100112CCC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 error];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v5 response];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100112E54(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [[MRPresentRouteAuthorizationStatusMessage alloc] initWithRoute:v3 status:5];

    [*(a1 + 32) sendMessage:v4];
  }
}

void sub_100112FA4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLocalEndpoint])
  {
    v4 = +[MRAVClusterController sharedController];
    [v4 getClusterStatus:&stru_1004BD0E8];
  }

  v5 = [*(a1 + 32) request];
  v6 = [v5 requiresAuthorizationHandling];

  if (v6)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [*(a1 + 32) request];
    v8 = [v7 outputDeviceUIDs];

    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(a1 + 40) addAuthorizationCallbackForOutputDeviceUID:*(*(&v24 + 1) + 8 * v12) client:*(a1 + 48)];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }
  }

  v13 = dispatch_get_global_queue(0, 0);
  v14 = [*(a1 + 32) request];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001131E8;
  v19[3] = &unk_1004B7810;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v20 = v15;
  v21 = v16;
  v22 = v17;
  v23 = v3;
  v18 = v3;
  [v18 modifyTopologyWithRequest:v14 withReplyQueue:v13 completion:v19];
}

void sub_1001131C8(id a1, unint64_t a2)
{
  if (a2 != 1)
  {
    sub_1001A02A4(1);
  }
}

void sub_1001131E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) request];
  v5 = [v4 requiresAuthorizationHandling];

  if (v5)
  {
    if (v3)
    {
      v6 = [*(a1 + 32) request];
      v7 = [v6 outputDeviceUIDs];
      v8 = [v7 firstObject];

      [*(a1 + 40) requestRouteAuthorizationStatusForDeviceUID:v8 client:*(a1 + 48)];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [*(a1 + 32) request];
    v10 = [v9 outputDeviceUIDs];

    v11 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(a1 + 40) removeAuthorizationCallbackForOutputDeviceUID:*(*(&v19 + 1) + 8 * v14)];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v12);
    }
  }

  v15 = _MRLogForCategory();
  v16 = v15;
  if (v3)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1003A9764();
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(a1 + 56) syncedOutputDevices];
    *buf = 138412290;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Successfully executed output context modification: %@", buf, 0xCu);
  }

  v18 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v3];
  [*(a1 + 32) replyWithMessage:v18];
}

void sub_1001134B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 outputDeviceUID];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100113578;
  v6[3] = &unk_1004BD110;
  v7 = *(a1 + 32);
  [v4 outputDeviceVolume:v5 queue:&_dispatch_main_q completion:v6];
}

void sub_100113578(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);
  v4 = [MRGetVolumeResultMessage alloc];
  *&v5 = a2;
  v6 = [v4 initWithVolume:v5];
  [v3 replyWithMessage:v6];
}

void sub_100113678(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 outputDeviceUID];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011373C;
  v6[3] = &unk_1004BD138;
  v7 = *(a1 + 32);
  [v4 outputDeviceVolumeControlCapabilities:v5 queue:&_dispatch_main_q completion:v6];
}

void sub_10011373C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[MRGetVolumeControlCapabilitiesResultMessage alloc] initWithCapabilities:a2];
  [v2 replyWithMessage:v3];
}

void sub_100113854(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 volume];
  v6 = v5;
  v7 = [*(a1 + 32) outputDeviceUID];
  v8 = [*(a1 + 32) details];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100113948;
  v10[3] = &unk_1004B6FC0;
  v11 = *(a1 + 32);
  LODWORD(v9) = v6;
  [v4 setOutputDeviceVolume:v7 outputDevice:v8 details:&_dispatch_main_q queue:v10 completion:v9];
}

void sub_100113948(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v3];

  [v2 replyWithMessage:v4];
}

void sub_100113AD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 nowPlayingServer];
  v6 = [v5 resolveExistingPlayerPath:v3];

  v7 = [*(a1 + 32) request];
  v8 = *(a1 + 40);
  v10 = *(a1 + 48);
  v9 = *(a1 + 32);
  MRMediaRemotePlaybackSessionRequestWithResponse();
}

void sub_100113BF4(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = v16;
  if (v16)
  {
    v7 = *(a1 + 32);
    v8 = [v16 request];
    v9 = [v7 merge:v8];

    v6 = v16;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  if (v5)
  {
    [*(a1 + 32) endEventWithID:*(a1 + 48) error:v5];
  }

  else
  {
    v12 = [v6 error];
    [v10 endEventWithID:v11 error:v12];
  }

  v13 = [MRPlaybackSessionResponseMessage alloc];
  v14 = [v16 playbackSession];
  v15 = [v13 initWithPlaybackSession:v14 request:*(a1 + 32)];

  [*(a1 + 40) replyWithMessage:v15];
}

void sub_100113E30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 nowPlayingServer];
  v6 = [v5 resolveExistingPlayerPath:v3];

  v7 = [v6 origin];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10011400C;
  v15[3] = &unk_1004BD218;
  v20 = *(a1 + 48);
  v16 = v7;
  v17 = *(a1 + 32);
  v18 = v6;
  v19 = *(a1 + 40);
  v8 = v6;
  v9 = v7;
  v10 = objc_retainBlock(v15);
  v11 = [*(a1 + 32) playbackSession];
  v12 = [*(a1 + 32) request];
  v14 = v10;
  v13 = v10;
  MRMediaRemoteSendPlaybackSession();
}

void sub_10011400C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 endEventWithID:*(a1 + 64) error:v6];
  v7 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:v5];
  if (v6)
  {
    if ([v5 recipeType] != 2)
    {
      [v7 setError:v6];
    }
  }

  else if ([*(a1 + 32) isLocal])
  {
    v8 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:0 reason:@"Received migration request"];
    [v8 perform:&_dispatch_main_q completion:&stru_1004BD1C8];
  }

  [*(a1 + 40) replyWithMessage:v7];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100114378;
  v29[3] = &unk_1004B7978;
  v30 = *(a1 + 32);
  v31 = *(a1 + 48);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100114438;
  v25[3] = &unk_1004B8190;
  v9 = objc_retainBlock(v29);
  v28 = v9;
  v26 = *(a1 + 32);
  v27 = *(a1 + 56);
  v10 = objc_retainBlock(v25);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100114560;
  v19[3] = &unk_1004BD1F0;
  v11 = v9;
  v23 = v11;
  v20 = *(a1 + 32);
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  v12 = v10;
  v24 = v12;
  v13 = objc_retainBlock(v19);
  v14 = [*(a1 + 40) playbackSession];

  if (!v6)
  {
    v15 = v13;
    if (!v14)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v15 = v12;
  if (!v14)
  {
LABEL_8:
    (v15[2])();
  }

LABEL_9:
  v16 = +[MRAVClusterController sharedController];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100114788;
  v17[3] = &unk_1004B7838;
  v18 = *(a1 + 40);
  [v16 getClusterStatus:v17];
}

BOOL sub_100114378(uint64_t a1)
{
  v2 = +[MRDMediaRemoteServer server];
  v3 = [v2 nowPlayingServer];
  v4 = [v3 originClientForOrigin:*(a1 + 32)];
  v5 = [v4 activeNowPlayingClient];
  v6 = [v5 client];
  v7 = [v6 processIdentifier];
  v8 = [*(a1 + 40) client];
  v9 = v7 == [v8 processIdentifier];

  return v9;
}

void sub_100114438(uint64_t a1)
{
  if (((*(*(a1 + 48) + 16))() & 1) == 0)
  {
    v2 = _MRLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Reseting Facade", v10, 2u);
    }

    v3 = [MRSetNowPlayingClientMessage alloc];
    v4 = +[MRDMediaRemoteServer server];
    v5 = [v4 nowPlayingServer];
    v6 = [v5 originClientForOrigin:*(a1 + 32)];
    v7 = [v6 activeNowPlayingClient];
    v8 = [v7 client];
    v9 = [v3 initWithClient:v8];

    [*(a1 + 40) sendMessage:v9];
  }
}

void sub_100114560(uint64_t a1)
{
  if (((*(*(a1 + 56) + 16))() & 1) == 0)
  {
    v2 = _MRLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = +[MRDMediaRemoteServer server];
      v4 = [v3 nowPlayingServer];
      v5 = [v4 originClientForOrigin:*(a1 + 32)];
      v6 = [v5 activeNowPlayingClient];
      v7 = [v6 client];
      v8 = [*(a1 + 40) client];
      *buf = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Facading NowPlayingClient from %@ to %@", buf, 0x16u);
    }

    v9 = [MRSetNowPlayingClientMessage alloc];
    v10 = [*(a1 + 40) client];
    v11 = [v9 initWithClient:v10];

    [*(a1 + 48) sendMessage:v11];
    v12 = dispatch_time(0, 30000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100114778;
    block[3] = &unk_1004B79A0;
    v14 = *(a1 + 64);
    dispatch_after(v12, &_dispatch_main_q, block);
  }
}

void sub_100114788(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    v4 = [*(a1 + 32) request];
    v3 = [v4 description];
    sub_1001A02A4(1);
  }
}

void sub_100114928(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 nowPlayingServer];
  v6 = [v5 resolveExistingPlayerPath:v3];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100114BD8;
  v25[3] = &unk_1004BD240;
  v26 = *(a1 + 32);
  v28 = *(a1 + 56);
  v27 = *(a1 + 40);
  v7 = objc_retainBlock(v25);
  v8 = *(a1 + 48);
  v9 = [*(a1 + 40) request];
  [v8 addPendingPlaybackSessionMigrateEvent:v9 playerPath:v6];

  v10 = [MRBlockGuard alloc];
  v11 = [NSString alloc];
  v12 = [*(a1 + 40) request];
  v13 = [v12 requestIdentifier];
  v14 = [v11 initWithFormat:@"sendPlaybackSessionMigrateBegin<%@>", v13];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100114CDC;
  v21[3] = &unk_1004BD268;
  v22 = *(a1 + 32);
  v24 = *(a1 + 56);
  v15 = v7;
  v23 = v15;
  v16 = [v10 initWithTimeout:v14 reason:v21 handler:30.0];

  v17 = [*(a1 + 40) request];
  v20 = v15;
  v18 = v15;
  v19 = v16;
  MRMediaRemoteSendPlaybackSessionMigrateBegin();
}

void sub_100114BD8(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = v14;
  if (v14)
  {
    v7 = *(a1 + 32);
    v8 = [v14 request];
    v9 = [v7 merge:v8];

    v6 = v14;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  if (v5)
  {
    [*(a1 + 32) endEventWithID:*(a1 + 48) error:v5];
  }

  else
  {
    v12 = [v6 error];
    [v10 endEventWithID:v11 error:v12];
  }

  v13 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:*(a1 + 32)];
  [*(a1 + 40) replyWithMessage:v13];
}

void sub_100114CDC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 endEventWithID:v4 error:v5];
  v6 = *(a1 + 40);
  v7 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:*(a1 + 32)];
  (*(v6 + 16))(v6, v7, v5);
}

void sub_100114D78(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100114EE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 nowPlayingServer];
  v6 = [v5 resolveExistingPlayerPath:v3];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100115170;
  v24[3] = &unk_1004BD2E0;
  v26 = *(a1 + 40);
  v25 = *(a1 + 32);
  v7 = objc_retainBlock(v24);
  v8 = [MRBlockGuard alloc];
  v9 = [NSString alloc];
  v10 = [*(a1 + 32) request];
  v11 = [v10 requestID];
  v12 = [v9 initWithFormat:@"sendPlaybackSessionMigratePost<%@>", v11];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001151F4;
  v20[3] = &unk_1004BD268;
  v21 = *(a1 + 32);
  v23 = *(a1 + 40);
  v13 = v7;
  v22 = v13;
  v14 = [v8 initWithTimeout:v12 reason:v20 handler:30.0];

  v15 = [*(a1 + 32) request];
  v16 = [*(a1 + 32) setPlaybackSessionCommandID];
  v19 = v14;
  v17 = v13;
  v18 = v14;
  MRMediaRemoteSendPlaybackSessionMigratePost();
}

void sub_100115170(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = [v7 request];
  [v6 endEventWithID:*(a1 + 40) error:v5];

  [*(a1 + 32) replyWithMessage:v7];
}

void sub_1001151F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 request];
  [v4 endEventWithID:*(a1 + 48) error:v6];

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void sub_100115270(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001154A0(id a1, MRCommandResult *a2)
{
  v2 = [(MRCommandResult *)a2 error];

  if (!v2)
  {
    v4 = +[MRDMediaRemoteServer server];
    v3 = [v4 uiServer];
    [v3 releaseTimeBasedNowPlayingActivityAssertions];
  }
}

void sub_100115644(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 nowPlayingServer];
  v6 = [v5 resolveExistingPlayerPath:v3];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100115928;
  v27[3] = &unk_1004BD240;
  v28 = *(a1 + 32);
  v30 = *(a1 + 56);
  v29 = *(a1 + 40);
  v7 = objc_retainBlock(v27);
  v8 = *(a1 + 48);
  v9 = [*(a1 + 40) request];
  [v8 removePendingPlaybackSessionMigrateEvent:v9];

  v10 = [MRBlockGuard alloc];
  v11 = [NSString alloc];
  v12 = [*(a1 + 40) request];
  v13 = [v12 requestIdentifier];
  v14 = [v11 initWithFormat:@"sendPlaybackSessionMigrateEnd<%@>", v13];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100115A2C;
  v23[3] = &unk_1004BD268;
  v24 = *(a1 + 32);
  v26 = *(a1 + 56);
  v15 = v7;
  v25 = v15;
  v16 = [v10 initWithTimeout:v14 reason:v23 handler:30.0];

  v17 = [*(a1 + 40) request];
  v18 = [*(a1 + 40) error];
  v19 = [*(a1 + 40) setPlaybackSessionCommandStatus];
  v22 = v16;
  v20 = v15;
  v21 = v16;
  MRMediaRemoteSendPlaybackSessionMigrateFinalize();
}

void sub_100115928(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = v14;
  if (v14)
  {
    v7 = *(a1 + 32);
    v8 = [v14 request];
    v9 = [v7 merge:v8];

    v6 = v14;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  if (v5)
  {
    [*(a1 + 32) endEventWithID:*(a1 + 48) error:v5];
  }

  else
  {
    v12 = [v6 error];
    [v10 endEventWithID:v11 error:v12];
  }

  v13 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:*(a1 + 32)];
  [*(a1 + 40) replyWithMessage:v13];
}

void sub_100115A2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 endEventWithID:v4 error:v5];
  v6 = *(a1 + 40);
  v7 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:*(a1 + 32)];
  (*(v6 + 16))(v6, v7, v5);
}

void sub_100115AC8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100115CD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [[MRAudioFadeResponseMessage alloc] initWithFadeDuration:a2 error:v5];

  [v4 replyWithMessage:v6];
}

void sub_100115D58(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v3];

  [v2 replyWithMessage:v4];
}

void sub_100115FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  objc_sync_exit(v17);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_100115FCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = objc_alloc_init(MRCompositeMessage);
  v4 = [*(*(*(a1 + 48) + 8) + 40) availableOutputDevices];
  if (([*(a1 + 32) features] & 8) != 0)
  {
    v5 = +[MRDMediaRemoteServer server];
    v6 = [v5 routingServer];
    v7 = [v6 hostedRoutingService];
    v8 = [v7 hostedRoutingController];
    v9 = [v8 discoverySession];
    v10 = [v9 unclusteredOutputDevices];

    v4 = v10;
  }

  v11 = [*(a1 + 40) connection];
  v12 = [v11 exportOutputDevices:v4 endpoint:v3];

  v13 = [[MRDiscoveryUpdateOutputDevicesMessage alloc] initWithOutputDevices:v12 configuration:*(a1 + 32)];
  [v14 addMessage:v13];

  [*(a1 + 40) sendMessage:v14];
}

void sub_1001161D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 listeningMode];
  v6 = [*(a1 + 32) outputDeviceUID];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001162B0;
  v7[3] = &unk_1004B6FC0;
  v8 = *(a1 + 32);
  [v4 setListeningMode:v5 outputDeviceUID:v6 queue:&_dispatch_main_q completion:v7];
}

void sub_1001162B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v3];

  [*(a1 + 32) replyWithMessage:v4];
}

void sub_1001163C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 enabled];
  v6 = [*(a1 + 32) outputDeviceUID];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100116494;
  v7[3] = &unk_1004B6FC0;
  v8 = *(a1 + 32);
  [v4 setConversationDetectionEnabled:v5 outputDeviceUID:v6 queue:&_dispatch_main_q completion:v7];
}

void sub_100116494(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v3];

  [*(a1 + 32) replyWithMessage:v4];
}

void sub_100116648(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  if (v14 && !v7)
  {
    v9 = [[MRCreateHostedEndpointResponseMessage alloc] initWithGroupUID:v14];
LABEL_6:
    v12 = v9;
    goto LABEL_7;
  }

  v10 = [MRProtocolMessage alloc];
  v11 = v10;
  if (v7)
  {
    v9 = [v10 initWithUnderlyingCodableMessage:0 error:v7];
    goto LABEL_6;
  }

  v13 = [[NSError alloc] initWithMRError:1];
  v12 = [v11 initWithUnderlyingCodableMessage:0 error:v13];

LABEL_7:
  [*(a1 + 32) replyWithMessage:v12];
}

void sub_100116800(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 adjustment];
  v6 = [*(a1 + 32) outputDeviceUID];
  v7 = [*(a1 + 32) details];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001168F4;
  v8[3] = &unk_1004B6FC0;
  v9 = *(a1 + 32);
  [v4 adjustOutputDeviceVolume:v5 outputDevice:v6 details:v7 queue:&_dispatch_main_q completion:v8];
}

void sub_1001168F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v3];

  [*(a1 + 32) replyWithMessage:v4];
}

void sub_100116A04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 outputDeviceUID];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100116AC8;
  v6[3] = &unk_1004BD410;
  v7 = *(a1 + 32);
  [v4 outputDeviceVolumeMuted:v5 queue:&_dispatch_main_q completion:v6];
}

void sub_100116AC8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (v7)
  {
    v5 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v7];
  }

  else
  {
    v5 = [[MRGetVolumeMutedResultMessage alloc] initWithMuted:a2];
  }

  v6 = v5;
  [*(a1 + 32) replyWithMessage:v5];
}

void sub_100116C0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 isMuted];
  v6 = [*(a1 + 32) outputDeviceUID];
  v7 = [*(a1 + 32) details];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100116D00;
  v8[3] = &unk_1004B6FC0;
  v9 = *(a1 + 32);
  [v4 muteOutputDeviceVolume:v5 outputDevice:v6 details:v7 queue:&_dispatch_main_q completion:v8];
}

void sub_100116D00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v3];

  [*(a1 + 32) replyWithMessage:v4];
}

void sub_100116E10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) details];
    [v5 requestGroupSessionWithDetails:v7 queue:&_dispatch_main_q completion:&stru_1004BD450];
  }

  else
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003A97D4();
    }
  }
}

void sub_100116EB8(id a1, NSString *a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003A97D4();
    }
  }
}

void sub_10011717C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1001171A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MRApplicationConnectionContext alloc];
  v5 = [*(a1 + 32) identifier];
  v6 = [*(a1 + 32) service];
  v7 = [v4 initWithIdentifier:v5 service:v6 destinationPlayerPath:v3];

  v8 = [MRCreateApplicationConnectionMessage alloc];
  v9 = [*(a1 + 40) requestInfo];
  v10 = [v8 initWithConnectionContext:v7 requestInfo:v9];

  v11 = +[MRDMediaRemoteServer server];
  v12 = [v11 remoteControlServer];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100117394;
  v17[3] = &unk_1004B77C0;
  objc_copyWeak(&v18, (a1 + 64));
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10011743C;
  v14[3] = &unk_1004BD4F0;
  v13 = *(a1 + 56);
  v14[4] = *(a1 + 48);
  v15 = v13;
  v16 = *(a1 + 40);
  [v12 registerIncomingApplicationConnection:v10 clientBoundMessageHandler:v17 completion:v14];

  objc_destroyWeak(&v18);
}

void sub_100117394(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sendMessage:v5];
  }

  else
  {
    v8 = [[NSError alloc] initWithMRError:177];
    [v9 invalidate:v8];
  }
}

void sub_10011743C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  objc_initWeak(&location, v5);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 24);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1001175EC;
  v17 = &unk_1004BD4C8;
  v21 = &v24;
  v18 = v8;
  v19 = v7;
  v10 = v6;
  v20 = v10;
  objc_copyWeak(&v22, &location);
  dispatch_sync(v9, &v14);
  if ((v25[3] & 1) == 0)
  {
    v11 = [NSError alloc];
    v12 = [v11 initWithMRError:{35, v14, v15, v16, v17, v18, v19, v20, v21}];
    [v5 invalidate:v12];
  }

  v13 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v10];
  [*(a1 + 48) replyWithMessage:v13];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v24, 8);
}

void sub_1001175C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_1001175EC(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 8) containsObject:*(a1 + 40)];
  if (*(*(*(a1 + 56) + 8) + 24) == 1 && !*(a1 + 48))
  {
    v2 = *(a1 + 32);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001176D0;
    v3[3] = &unk_1004BD4A0;
    objc_copyWeak(&v4, (a1 + 64));
    [v2 _onQueue_registerDisconnectionHandler:v3 forClient:*(a1 + 40)];
    objc_destroyWeak(&v4);
  }
}

void sub_1001176D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [[NSError alloc] initWithMRError:177];
  [WeakRetained invalidate:v1];
}

void sub_100117820(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MRApplicationConnectionContext alloc];
  v5 = [*(a1 + 32) identifier];
  v6 = [*(a1 + 32) service];
  v12 = [v4 initWithIdentifier:v5 service:v6 destinationPlayerPath:v3];

  v7 = [MRApplicationConnectionProtocolMessage alloc];
  v8 = [*(a1 + 40) message];
  v9 = [v7 initWithMessage:v8 connectionContext:v12];

  v10 = +[MRDMediaRemoteServer server];
  v11 = [v10 remoteControlServer];
  [v11 handleServerBoundApplicationConnectionMessage:v9];
}

void sub_100117A1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MRApplicationConnectionContext alloc];
  v5 = [*(a1 + 32) identifier];
  v6 = [*(a1 + 32) service];
  v12 = [v4 initWithIdentifier:v5 service:v6 destinationPlayerPath:v3];

  v7 = [MRInvalidateApplicationConnectionMessage alloc];
  v8 = [*(a1 + 40) error];
  v9 = [v7 initWithConnectionContext:v12 error:v8];

  v10 = +[MRDMediaRemoteServer server];
  v11 = [v10 remoteControlServer];
  [v11 handleInvalidateApplicationConnectionMessage:v9];
}

void sub_100117BE0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  v3 = +[MROrigin localOrigin];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(NSMutableSet);
  }

  v7 = v6;

  v8 = *(a1 + 48);
  v9 = [v7 containsObject:*(a1 + 40)];
  if (v8 == 1)
  {
    if ((v9 & 1) == 0)
    {
      v10 = _MRLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v19 = 138412290;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Device: %@ has ASE set to local, adding assertion", &v19, 0xCu);
      }

      [v7 addObject:*(a1 + 40)];
    }
  }

  else if (v9)
  {
    v12 = _MRLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v19 = 138412290;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Device: %@ no longer has ASE set to local, removing assertion", &v19, 0xCu);
    }

    [v7 removeObject:*(a1 + 40)];
  }

  v14 = *(*(a1 + 32) + 96);
  v15 = +[MROrigin localOrigin];
  [v14 setObject:v7 forKeyedSubscript:v15];

  v16 = [v7 count];
  v17 = +[MRDMediaRemoteServer server];
  v18 = [v17 groupSessionServer];

  if (v16)
  {
    [v18 requestEligibilityMonitoring];
  }
}

id sub_100117E8C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) indexOfObject:*(a1 + 40)];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(*(a1 + 32) + 8) removeObjectAtIndex:result];
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 8);

    return [v4 insertObject:v3 atIndex:0];
  }

  return result;
}

Class sub_1001184E8(id a1, MRAVRoutingDiscoverySessionConfiguration *a2)
{
  v2 = a2;
  if ([(MRAVRoutingDiscoverySessionConfiguration *)v2 isLocal]&& ([(MRAVRoutingDiscoverySessionConfiguration *)v2 features]& 8) != 0)
  {
    v3 = objc_opt_class();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100118834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011885C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scheduleReload];
}

id sub_100118D1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100118DBC;
  v8[3] = &unk_1004B90C8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 mr_any:v8];

  return v6;
}

void sub_100118FA4(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_makeExternalDeviceForEndpoint:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001190FC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

MRDAVOutputContextExternalDevice *sub_10011982C(uint64_t a1)
{
  v1 = [*(a1 + 32) designatedProxyGroupLeader];
  v2 = +[MRDAVOutputContextManager sharedManager];
  v3 = [v2 outputContextForOutputDevice:v1];

  v4 = [[MRDAVOutputContextExternalDevice alloc] initWithOutputContext:v3];

  return v4;
}

void sub_100119E20(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_determineGroupLeaderForOutputDevices:*(a1 + 40) availableOutputDevices:*(*(a1 + 32) + 64) options:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100119F7C(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 128) allValues];
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

        [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:*(*(&v7 + 1) + 8 * v6)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_10011A15C(uint64_t a1)
{
  v2 = [*(a1 + 32) virtualOutputDeviceDictionary];
  v3 = [*(a1 + 40) displayName];
  v6 = [v2 objectForKeyedSubscript:v3];

  if (!v6)
  {
    v6 = +[NSMutableArray array];
    v4 = [*(a1 + 32) virtualOutputDeviceDictionary];
    v5 = [*(a1 + 40) displayName];
    [v4 setObject:v6 forKeyedSubscript:v5];
  }

  [v6 addObject:*(a1 + 48)];
}

void sub_10011A2F8(uint64_t a1)
{
  v3 = [*(a1 + 32) virtualOutputDeviceDictionary];
  v2 = [*(a1 + 40) displayName];
  [v3 setObject:0 forKeyedSubscript:v2];
}

int64_t sub_10011AF38(id a1, MRAVOutputDevice *a2, MRAVOutputDevice *a3)
{
  v4 = a3;
  v5 = [(MRAVOutputDevice *)a2 uid];
  v6 = [(MRAVOutputDevice *)v4 uid];

  v7 = [v5 compare:v6];
  return v7;
}

BOOL sub_10011AFA8(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  if ([(MRAVOutputDevice *)v2 isGroupLeader])
  {
    v3 = [(MRAVOutputDevice *)v2 supportsMultiplayer]^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

MRAVDistantOutputDevice *__cdecl sub_10011B3F0(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  v3 = [MRAVDistantOutputDevice alloc];
  v4 = [(MRAVOutputDevice *)v2 descriptor];

  v5 = [v3 initWithDescriptor:v4];

  return v5;
}

void sub_10011B46C(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        v9 = [*(a1 + 48) copy];
        [v7 hostedRoutingController:v8 outputDevicesDidChange:v9 forFeature:8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_10011B770(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_10003512C;
  v6[4] = sub_100035A4C;
  v2 = [NSError alloc];
  v3 = [*(a1 + 32) name];
  v7 = [v2 initWithMRError:142 description:v3];

  v4 = [*(*(a1 + 40) + 88) availableExternalDevices];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10011B8A8;
  v5[3] = &unk_1004BD700;
  v5[4] = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];

  _Block_object_dispose(v6, 8);
}

void sub_10011B890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011B8A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 externalDevice];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 disconnect:*(*(*(a1 + 32) + 8) + 40)];
  }
}

id sub_10011BA14(uint64_t a1)
{
  [*(a1 + 32) _onQueue_reloadOutputDevices];
  v2 = *(a1 + 32);

  return [v2 _onQueue_reloadEndpoints];
}

void sub_10011BA50(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MRDHostedRoutingControllerAvailableExternalDevicesDidChangeNotification" object:*(a1 + 32)];
}

BOOL sub_10011BED4(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  if ([(MRAVOutputDevice *)v2 deviceSubtype]== 12)
  {
    v3 = 1;
  }

  else if ([(MRAVOutputDevice *)v2 supportsMultiplayer])
  {
    v4 = +[MRUserSettings currentSettings];
    v3 = [v4 isMultiplayerAware];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_10011BF58(uint64_t a1, void *a2)
{
  v3 = [a2 uid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

_MRAVOutputDeviceDescriptorProtobuf *__cdecl sub_10011C080(id a1, MRAVOutputDevice *a2, MRAVOutputDevice *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(MRAVOutputDevice *)v4 isEqual:v5];
  v7 = [(MRAVOutputDevice *)v5 descriptor];

  if ((v6 & 1) == 0)
  {
    [v7 setIsRemoteControllable:{-[MRAVOutputDevice isRemoteControllable](v4, "isRemoteControllable")}];
    [v7 setCanAccessiCloudMusicLibrary:{-[MRAVOutputDevice canAccessiCloudMusicLibrary](v4, "canAccessiCloudMusicLibrary")}];
    [v7 setCanAccessAppleMusic:{-[MRAVOutputDevice canAccessAppleMusic](v4, "canAccessAppleMusic")}];
    [v7 setCanAccessRemoteAssets:{-[MRAVOutputDevice canAccessRemoteAssets](v4, "canAccessRemoteAssets")}];
  }

  return v7;
}

id sub_10011C148(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 baseGroupID];
  if (v4 && [v3 isAuxiliary])
  {
    v5 = [*(a1[4] + 32) objectForKeyedSubscript:v4];
    if (v5)
    {
      v6 = [MRAVDistantOutputDevice alloc];
      v7 = *(a1[6] + 16);
LABEL_7:
      v9 = v7();
      v10 = [v6 initWithDescriptor:v9];

      goto LABEL_9;
    }

    if ([v3 shouldBeLocallyHosted])
    {
      v6 = [MRAVDistantOutputDevice alloc];
      v8 = a1[5];
      v7 = *(a1[6] + 16);
      goto LABEL_7;
    }
  }

  v10 = v3;
LABEL_9:

  return v10;
}

uint64_t sub_10011C588(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == 1 && ([v3 isRemoteControllable] & 1) == 0 && !objc_msgSend(v4, "canRelayCommunicationChannel"))
  {
    goto LABEL_15;
  }

  v5 = +[MRUserSettings currentSettings];
  if (([v5 showUncommitedDevices] & 1) == 0 && objc_msgSend(v4, "supportsMultiplayer") && (objc_msgSend(v4, "isLocalDevice") & 1) == 0 && !objc_msgSend(v4, "canRelayCommunicationChannel"))
  {
    v8 = [v4 groupContextID];

    if (v8)
    {
      goto LABEL_9;
    }

    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v4 uid];
      v11 = [v4 name];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Ignoring uncommitted output device: %@ (%@)", &v12, 0x16u);
    }

LABEL_15:
    v6 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v6 = 1;
LABEL_10:

  return v6;
}

id sub_10011C804(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 contextID];
  v5 = [v3 hasSuffix:v4];

  return v5;
}

void sub_10011C928(id a1, NSError *a2)
{
  if (qword_100529450 != -1)
  {
    sub_1003A9880();
  }
}

id sub_10011C9AC(uint64_t a1)
{
  [*(a1 + 32) disarm];
  v2 = *(a1 + 40);

  return [v2 _onQueue_reloadOutputDevices];
}

id sub_10011CBDC(uint64_t a1, void *a2)
{
  v3 = [a2 outputDeviceUIDs];
  v4 = [*(a1 + 32) uid];
  v5 = [v3 containsObject:v4];

  return v5;
}

void sub_10011DA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011DA90(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_companionOriginClient];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10011DD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011DD80(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_allNowPlayingInfoClients];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10011E084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011E09C(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_allNowPlayingInfoClients];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10011E548(id a1)
{
  v1 = objc_alloc_init(NSMutableSet);
  v2 = qword_100529458;
  qword_100529458 = v1;
}

id sub_10011E584(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = @"bundleID";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_10011E764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011E77C(uint64_t a1)
{
  v2 = [*(a1 + 32) origin];
  if (!v2)
  {
    v2 = +[MROrigin localOrigin];
  }

  v3 = [*(a1 + 40) _onQueue_originClientForOrigin:v2];
  if (v3)
  {
    v4 = [*(a1 + 32) client];
    if (!v4)
    {
      v5 = [MRClient alloc];
      v6 = [*(a1 + 48) pid];
      v7 = [*(a1 + 48) bundleIdentifier];
      v4 = [v5 initWithProcessIdentifier:v6 bundleIdentifier:v7];
    }

    v8 = [v3 origin];
    v9 = [v8 isLocallyHosted];

    if (!v9)
    {
      goto LABEL_18;
    }

    v10 = [v4 processIdentifier];
    v11 = (a1 + 48);
    if (v10 != [*(a1 + 48) pid] && (objc_msgSend(*v11, "isEntitledFor:", 64) & 1) == 0)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1003A9920((a1 + 48), v10, v12);
      }

      [v4 setProcessIdentifier:{objc_msgSend(*v11, "pid")}];
    }

    v13 = [v4 bundleIdentifier];
    if (v13)
    {
      v14 = [*v11 bundleIdentifier];
      if ([v13 isEqualToString:v14])
      {
LABEL_16:

        goto LABEL_17;
      }

      v15 = [*v11 isEntitledFor:64];

      if ((v15 & 1) == 0)
      {
        v14 = [*v11 bundleIdentifier];
        [v4 setBundleIdentifier:v14];
        goto LABEL_16;
      }
    }

LABEL_17:

LABEL_18:
    v16 = [MRPlayerPath alloc];
    v17 = [v3 origin];
    v18 = [*(a1 + 32) player];
    v19 = [v16 initWithOrigin:v17 client:v4 player:v18];
    v20 = [v3 nowPlayingClientForPlayerPath:v19];

    v21 = [*(a1 + 32) player];
    v22 = v21;
    if (*(a1 + 64) == 1 && !v21)
    {
      v22 = +[MRPlayer defaultPlayer];
    }

    v35 = v4;
    if (v22)
    {
      v23 = [v20 playerClientForPlayer:v22];
    }

    else
    {
      v23 = 0;
    }

    v24 = [MRPlayerPath alloc];
    v25 = [v3 origin];
    v26 = [v20 client];
    v27 = [v23 player];
    v28 = [v24 initWithOrigin:v25 client:v26 player:v27];
    v29 = *(*(a1 + 56) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    v31 = _MRLogForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = *(a1 + 32);
      v33 = *(a1 + 48);
      v34 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543874;
      v37 = v32;
      v38 = 2114;
      v39 = v34;
      v40 = 2112;
      v41 = v33;
      _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Resolving %{public}@ -> %{public}@ for client %@", buf, 0x20u);
    }
  }
}

void sub_10011EC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011EC88(uint64_t a1)
{
  v2 = [*(a1 + 32) onQueue_resolveExistingPlayerPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10011F064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011F07C(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_queryExistingPlayerPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10011F6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011F6BC(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_originClientForOrigin:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10011F81C(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_originClientForDeviceUID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10011F97C(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_originClientForGroupLeaderOfDeviceUID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10011FBC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [MRPlaybackSessionMigrateEndMessage alloc];
  v8 = [NSError alloc];
  v9 = [*(a1 + 32) bundleIdentifier];
  v10 = [v8 initWithMRError:4 format:{@"%@ has exited in the middle of a migration attempt", v9}];
  v13 = [v7 initWithRequest:v6 error:v10 setPlaybackSessionCommandStatus:0 playerPath:v5];

  v11 = [*(a1 + 40) xpcClientForPlayerPath:v5];

  v12 = MRCreateXPCMessage();
  MRAddProtobufToXPCMessage();
  [v11 relayXPCMessage:v12 andReply:0];
}

void sub_100120978(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([*(a1 + 32) hasRequestedSupportedCommands])
  {
    v6 = [*(a1 + 40) supportedRemoteControlCommandsData];
    [v5 setObject:v6 forKeyedSubscript:kMRSupportedCommandsDataUserInfoKey];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100120A24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) hasRequestedLegacyNowPlayingInfo])
  {
    v7 = [*(a1 + 40) contentItemWithOffset:0];
    if (v7)
    {
      v8 = [MRPlaybackQueueRequest defaultPlaybackQueueRequestWithRange:0, 1];
      v9 = MRContentItemCreateFromRequest();
      v19 = v9;
      v10 = [NSArray arrayWithObjects:&v19 count:1];
      MRAddContentItemsToUserInfo();

      if (v9)
      {
        v11 = [*(a1 + 32) playbackQueueRequests];
        v12 = [*(a1 + 48) playerPath];
        v13 = [v11 subscriptionControllerForPlayerPath:v12];

        v14 = [MRPlaybackQueue alloc];
        v18 = v9;
        v15 = [NSArray arrayWithObjects:&v18 count:1];
        v16 = [v14 initWithContentItems:v15 location:0];

        v17 = [MRPlaybackQueueRequest defaultPlaybackQueueRequestWithRange:0, 1];
        [v13 subscribeToPlaybackQueue:v16 forRequest:v17];
      }
    }

    else
    {
      MRAddContentItemsToUserInfo();
    }
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100120C24(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 playbackQueueRequests];
  v9 = [*(a1 + 40) playerPath];
  v12 = [v8 existingSubscriptionControllerForPlayerPath:v9];

  v10 = [*(a1 + 48) contentItems];
  v11 = [v12 filteredContentItemsBySubscriptionsForContentItems:v10];

  MRAddContentItemsToUserInfo();
  (*(*(a1 + 56) + 16))();
}

void sub_100120D1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [[MRPlaybackQueueRequest alloc] initFromTransactionName:7];
  v8 = [*(a1 + 32) playbackQueueRequests];
  v9 = [*(a1 + 40) playerPath];
  v10 = [v8 existingSubscriptionControllerForPlayerPath:v9];

  v11 = [*(a1 + 40) playbackQueue];
  v12 = [v11 contentItems];
  v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);

  v14 = [*(a1 + 48) contentItems];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_100120F10;
  v22 = &unk_1004BDA40;
  v15 = v7;
  v23 = v15;
  v16 = v13;
  v24 = v16;
  [v10 enumerateFilteredContentItemsBySubscriptionsForContentItems:v14 block:&v19];

  if ([v16 count])
  {
    v17 = [[MRPlaybackQueueRequest alloc] initFromTransactionName:0];
    v18 = MRContentItemsCreateFromRequest();
    MRAddContentItemsToUserInfo();
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100120F10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) match:a3])
  {
    [*(a1 + 40) addObject:v5];
  }
}

void sub_100121078(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = [MRDMusicHandoffSession alloc];
    v9 = *(a1 + 40);
    v8 = a1 + 40;
    v10 = [(MRDMusicHandoffSession *)v7 initWithSource:*(v8 - 8) destination:v9];
    (*(*(v8 + 16) + 16))();
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_10003513C;
    v41 = sub_100035A54;
    v42 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_10003513C;
    v35 = sub_100035A54;
    v36 = 0;
    v11 = *(v8 + 8);
    v12 = *(v11 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10012138C;
    block[3] = &unk_1004BDA68;
    block[4] = v11;
    v13 = v5;
    v27 = v13;
    v29 = &v37;
    v30 = &v31;
    v14 = v10;
    v28 = v14;
    dispatch_sync(v12, block);
    if (v38[5])
    {
      [(MRDMusicHandoffSession *)v14 invalidate];
    }

    else
    {
      [(MRDMusicHandoffSession *)v14 start];
      v15 = [*v8 origin];
      v16 = [v15 isLocallyHosted];
      v17 = (v32 + 5);
      if (!v16)
      {
        v17 = v8;
      }

      v18 = *v17;

      v19 = [MRMusicHandoffSession alloc];
      v20 = [(MRDMusicHandoffSession *)v14 identifier];
      v21 = [(MRDMusicHandoffSession *)v14 sourcePlayerPath];
      v22 = [v19 initWithIdentifier:v20 sourcePlayerPath:v21 destinationPlayerPath:v18];

      v23 = MRCreateXPCMessage();
      v24 = v32[5];
      MRAddPlayerPathToXPCMessage();
      v25 = [v22 protobufData];
      MRAddDataToXPCMessage();

      [v13 relayXPCMessage:v23 andReply:0];
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v37, 8);
  }
}

void sub_10012135C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10012138C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MRPlayerPath alloc];
  v4 = [*(a1 + 40) createNowPlayingClient];
  v5 = [v3 initWithOrigin:0 client:v4 player:0];
  v17 = [v2 onQueue_resolveExistingPlayerPath:v5];

  if ([v17 isResolved])
  {
    v6 = [*(a1 + 32) _onQueue_queryExistingPlayerPath:v17];
    v7 = [v6 playerClient];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 playerPath];
      v10 = *(*(a1 + 64) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      [v8 registerHandoffSession:*(a1 + 48)];
    }

    else
    {
      v14 = [[NSError alloc] initWithMRError:29];
      v15 = *(*(a1 + 56) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }
  }

  else
  {
    v12 = [[NSError alloc] initWithMRError:42];
    v13 = *(*(a1 + 56) + 8);
    v6 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void sub_100122914(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 playerClient];
  [v4 playbackQueueCapabilities];
  MRAddPlaybackQueueCapabilitiesToXPCMessage();

  [*(a1 + 32) error];
  MRAddErrorToXPCMessage();
}

void sub_100122CFC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 nowPlayingClient];
  v6 = [v5 client];

  MRAddClientToXPCMessage();
  [*(a1 + 32) error];
  MRAddErrorToXPCMessage();
}

void sub_100122EC0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 error];
  MRAddErrorToXPCMessage();
}

void sub_100123048(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) nowPlayingClient];

  if (!v3)
  {
    [*(a1 + 32) error];
    MRAddErrorToXPCMessage();
  }
}

void sub_100123174(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 playerClient];
  v6 = [v5 player];

  MRAddPlayerToXPCMessage();
  [*(a1 + 32) error];
  MRAddErrorToXPCMessage();
}

void sub_10012331C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 error];
  MRAddErrorToXPCMessage();
}

void sub_1001234A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 error];
  MRAddErrorToXPCMessage();
}

void sub_1001235B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 playerClient];
  v7 = v5;
  if (v5)
  {
    v6 = [v5 playbackState];
  }

  else
  {
    v6 = 2;
  }

  xpc_dictionary_set_uint64(v4, "MRXPC_PLAYBACK_STATE_KEY", v6);
  [*(a1 + 32) error];
  MRAddErrorToXPCMessage();
}

void sub_10012407C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 origin];

  if (v4)
  {
    v5 = *(a1 + 32);
    MRAddPlayerPathToXPCMessage();
  }

  else
  {
    MRAddErrorToXPCMessage();
  }
}

uint64_t sub_10012437C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) playerPath];
  LODWORD(v2) = [v2 isAllowedAccessToDataFromPlayerPath:v3];

  if (!v2)
  {
    return 0;
  }

  v4 = [*(a1 + 40) playerPath];
  v5 = [v4 origin];
  v6 = [v5 isLocal];

  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 40);

  return [v7 canBeNowPlaying];
}

int64_t sub_10012442C(id a1, MRDNowPlayingClient *a2, MRDNowPlayingClient *a3)
{
  v4 = a2;
  v5 = [(MRDNowPlayingClient *)a3 activePlayerClient];
  v6 = [v5 lastPlayingDate];
  v7 = [(MRDNowPlayingClient *)v4 activePlayerClient];

  v8 = [v7 lastPlayingDate];
  v9 = [v6 compare:v8];

  return v9;
}

id sub_1001244C8(id a1, MRDNowPlayingClient *a2)
{
  v2 = [(MRDNowPlayingClient *)a2 client];
  v3 = [v2 data];

  return v3;
}

void sub_100124658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100124674(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_originClientForOrigin:*(a1 + 40)];
  v3 = v2;
  if (!v2)
  {
    v7 = *(*(a1 + 64) + 8);
    v8 = 5;
LABEL_8:
    *(v7 + 24) = v8;
    goto LABEL_14;
  }

  v4 = [v2 origin];
  if ([v4 isLocallyHosted])
  {
    v5 = [*(a1 + 48) isEntitledFor:32];

    if ((v5 & 1) == 0)
    {
      v6 = _MRLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1003A9AF8();
      }

      v7 = *(*(a1 + 64) + 8);
      v8 = 3;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = [*(a1 + 56) client];
  if (v9)
  {
    v10 = [v3 nowPlayingClientForPlayerPath:*(a1 + 56)];
  }

  else
  {
    v10 = 0;
  }

  [v3 setExplicitNowPlayingClient:v10];

LABEL_14:
}

void sub_10012483C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 nowPlayingClient];
  v5 = [v4 client];

  MRAddClientToXPCMessage();
}

void sub_100124D70(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 playerClient];
  v5 = [v4 player];

  MRAddPlayerToXPCMessage();
}

NSData *__cdecl sub_100124F68(id a1, MRDNowPlayingPlayerClient *a2)
{
  v2 = [(MRDNowPlayingPlayerClient *)a2 playerPath];
  v3 = [v2 data];

  return v3;
}

void sub_100125094(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  xdict = a2;
  [v3 error];
  MRAddErrorToXPCMessage();
  xpc_dictionary_set_BOOL(xdict, "MRXPC_PICTURE_IN_PICTURE_ENABLED_KEY", *(a1 + 40));
}

void sub_100125480(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = a2;
  MRAddErrorToXPCMessage();
  v4 = *(a1 + 32);
  MRAddDeviceInfoToXPCMessage();
}

void sub_10012554C(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 96);
  v3 = a2;
  v4 = [v2 electedPlayerPath];
  MRAddPlayerPathToXPCMessage();
}

void sub_100125624(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 104);
  v4 = a2;
  v5 = [v3 proactiveRecommendedPlayerPath];
  MRAddPlayerPathToXPCMessage();

  v6 = [*(*(a1 + 32) + 104) activeSystemEndpointOutputDeviceUID];
  MRAddStringToXPCMessage();
}

void sub_1001257CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 error];
  MRAddErrorToXPCMessage();
}

void sub_100125A60(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [*(a1 + 32) queryExistingPlayerPathForXPCMessage:*(a1 + 40) forClient:*(a1 + 48)];
  v4 = [v3 unresolvedPlayerPath];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 playerClient];
  v8 = [v7 supportedRemoteControlCommandsData];

  if (v8)
  {
    v9 = [v3 playerClient];
    v10 = [v9 supportedRemoteControlCommandsData];
  }

  else
  {
    v11 = [v3 originClient];
    v12 = [v11 origin];
    if ([v12 isHosted])
    {
      [*(a1 + 32) localOriginClient];
    }

    else
    {
      [v3 originClient];
    }
    v9 = ;

    v13 = [v3 unresolvedPlayerPath];
    v14 = [v13 client];
    v15 = [v14 bundleIdentifier];
    v10 = [v9 defaultSupportedCommandsDataForClient:v15];
  }

  if (v10)
  {
    v16 = 0;
  }

  else
  {
    v16 = [v3 error];
  }

  v17[2](v17, v10, v16);
}

void sub_100125BF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100125CB4;
  v10[3] = &unk_1004B6E30;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  sub_100008278(v7, v10);
}

void sub_100125CB4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  MRAddSupportedCommandsDataToXPCMessage();
  [*(a1 + 40) code];
  MRAddErrorToXPCMessage();
}

void sub_100125D18(uint64_t a1, void *a2)
{
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100126074;
  v33[3] = &unk_1004BDC10;
  v3 = a2;
  v4 = *(a1 + 56);
  v34 = v3;
  v36 = v4;
  v35 = *(a1 + 32);
  v5 = objc_retainBlock(v33);
  v6 = [*(*(*(a1 + 56) + 8) + 40) client];
  v7 = [v6 bundleIdentifier];

  if ((v5[2])(v5, v7))
  {
    v8 = +[MRUserSettings currentSettings];
    [v8 launchApplicationTimeoutInterval];
    v10 = v9;

    v11 = [MRBlockGuard alloc];
    v12 = [[NSString alloc] initWithFormat:@"Application <%@> waiting for can be now playing", v7];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100126100;
    v31[3] = &unk_1004B6FE8;
    v32 = *(a1 + 40);
    v13 = [v11 initWithTimeout:v12 reason:v31 handler:v10];

    v14 = +[NSNotificationCenter defaultCenter];
    v15 = kMRMediaRemoteNowPlayingApplicationDidRegisterCanBeNowPlaying;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100126120;
    v26[3] = &unk_1004BDC60;
    v16 = v7;
    v27 = v16;
    v17 = v13;
    v28 = v17;
    v29 = *(a1 + 48);
    v30 = *(a1 + 40);
    v18 = [v14 addObserverForName:v15 object:0 queue:0 usingBlock:v26];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100126288;
    v21[3] = &unk_1004BDC88;
    v25 = v10;
    v22 = v18;
    v23 = v17;
    v24 = *(a1 + 40);
    v19 = v17;
    v20 = v18;
    sub_10019E5EC(v16, 0, v21, v10);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}