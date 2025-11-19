void sub_1000011D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100001208(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isSamplingEnabled];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 userDefaults];
  [v5 setBool:v3 ^ 1 forKey:@"samplingEnabled-SPI"];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 applyConfigurations];
}

id sub_1000012A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained isSamplingEnabled];

  return v2;
}

void sub_100001454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001474(id a1, id a2)
{
  v3 = a2;
  v2 = [NSString stringWithFormat:@"XPC_ACTIVITY_STATE_CHECK_IN"];
  [ERLogging log:v2 withType:0];

  v3[2](v3, 1);
}

void sub_100001504(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"Received ManagedSettings effective settings changed notification"];
  [ERLogging log:v5 withType:0];

  v6 = [v4 containsObject:MOSettingsGroupNameEyeRelief];
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained applyConfigurations];
  }
}

void sub_100001658(uint64_t a1)
{
  v2 = [*(a1 + 32) isSamplingEnabled];
  v17 = objc_opt_new();
  v3 = [v17 eyeRelief];
  v4 = [v3 forceScreenDistanceOn];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = @"ON";
  }

  else
  {
    v6 = @"OFF";
  }

  v7 = [NSString stringWithFormat:@"ManagedSettings: Eye Relief should be %@", v6];
  [ERLogging log:v7 withType:2];

  if (!+[ERDaemonManager isEyeReliefSupported])
  {
    v10 = [NSString stringWithFormat:@"Eye Relief is not supported on this device."];
    [ERLogging log:v10 withType:1];

    v8 = *(a1 + 32);
    v9 = 0;
    goto LABEL_8;
  }

  v8 = *(a1 + 32);
  if (v5)
  {
    v9 = 1;
LABEL_8:
    [v8 setIsSamplingEnabled:v9];
    goto LABEL_10;
  }

  v11 = [v8 userDefaults];
  [*(a1 + 32) setIsSamplingEnabled:{objc_msgSend(v11, "BOOLForKey:", @"samplingEnabled-SPI"}];

LABEL_10:
  if (v2 == [*(a1 + 32) isSamplingEnabled])
  {
    if ([*(a1 + 32) isSamplingEnabled])
    {
      v14 = @"ON";
    }

    else
    {
      v14 = @"OFF";
    }

    v15 = [NSString stringWithFormat:@"Reloaded configurations, Eye Relief will remain %@", v14];
    [ERLogging log:v15 withType:2];
  }

  else
  {
    if ([*(a1 + 32) isSamplingEnabled])
    {
      v12 = [NSString stringWithFormat:@"Eye Relief: OFF -> ON"];
      [ERLogging log:v12 withType:0];

      [*(a1 + 32) enablePermissibleOnscreenContentMonitoring];
      [*(a1 + 32) scheduleSampling];
      v13 = 1;
    }

    else
    {
      v16 = [NSString stringWithFormat:@"Eye Relief: ON -> OFF"];
      [ERLogging log:v16 withType:0];

      [*(a1 + 32) disablePermissibleOnscreenContentMonitoring];
      [*(a1 + 32) unscheduleSamplingWithReason:0];
      v13 = 0;
    }

    [ERDaemonManager reportAnalyticsEyeReliefToggle:v13];
  }
}

void sub_100001D94(uint64_t a1)
{
  if (([*(a1 + 32) isSamplingActive] & 1) == 0)
  {
    v2 = [*(a1 + 32) inactivityTimestamp];

    if (v2)
    {
      v3 = +[NSDate date];
      v4 = [*(a1 + 32) inactivityTimestamp];
      [v3 timeIntervalSinceDate:v4];
      v6 = v5;

      v7 = [*(a1 + 32) engine];
      [v7 processInactivity:v6 forSamplingInterval:80.0];

      [*(a1 + 32) setInactivityTimestamp:0];
    }

    v8 = [NSString stringWithFormat:@"Distance sampling: OFF -> ON"];
    [ERLogging log:v8 withType:0];

    [*(a1 + 32) setIsSamplingActive:1];
    objc_initWeak(&location, *(a1 + 32));
    if ([*(a1 + 32) isDemoModeActive])
    {
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x2020000000;
      v14 = 0;
      v9 = [*(a1 + 32) engine];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100002200;
      v11[3] = &unk_1000083C0;
      v11[4] = v13;
      objc_copyWeak(&v12, &location);
      [v9 takeDistanceSampleWithCompletion:v11];

      objc_destroyWeak(&v12);
      _Block_object_dispose(v13, 8);
    }

    else
    {
      v10 = [*(a1 + 32) distanceSampleActivity];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100002024;
      v15[3] = &unk_100008370;
      objc_copyWeak(&v16, &location);
      [v10 scheduleWithBlock:v15];

      objc_destroyWeak(&v16);
    }

    objc_destroyWeak(&location);
  }
}

void sub_100001FDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100002024(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithFormat:@"--- Requesting distance sample ---"];
  [ERLogging log:v4 withType:0];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained engine];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000214C;
  v8[3] = &unk_100008348;
  objc_copyWeak(&v10, (a1 + 32));
  v7 = v3;
  v9 = v7;
  [v6 takeDistanceSampleWithCompletion:v8];

  objc_destroyWeak(&v10);
}

void sub_10000214C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [NSString stringWithFormat:@"Received distance sample"];
  [ERLogging log:v6 withType:0];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleDistanceSample:v5 interventionType:a3 withBackgroundActivityCompletionHandler:*(a1 + 32)];
}

void sub_100002200(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained isSamplingActive];

    if (v7)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      v8 = objc_loadWeakRetained((a1 + 40));
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000022F0;
      v9[3] = &unk_100008398;
      v9[4] = *(a1 + 32);
      [v8 handleDistanceSample:v5 interventionType:a3 withBackgroundActivityCompletionHandler:v9];
    }
  }
}

void sub_100002394(uint64_t a1)
{
  if ([*(a1 + 32) isSamplingActive])
  {
    if ([*(a1 + 32) isDemoModeActive])
    {
      v2 = [*(a1 + 32) engine];
      v11 = 0;
      v3 = [v2 cancelWithError:&v11];
      v4 = v11;

      if (v3)
      {
        v5 = [NSString stringWithFormat:@"Cancelled demo mode"];
        v6 = v5;
        v7 = 0;
      }

      else
      {
        v5 = [NSString stringWithFormat:@"Failed to cancel demo mode: %@", v4];
        v6 = v5;
        v7 = 1;
      }

      [ERLogging log:v6 withType:v7];
    }

    v8 = [NSString stringWithFormat:@"Distance sampling: ON -> OFF"];
    [ERLogging log:v8 withType:0];

    v9 = [*(a1 + 32) distanceSampleActivity];
    [v9 invalidate];

    [*(a1 + 32) setIsSamplingActive:0];
    if (*(a1 + 40) == 1)
    {
      v10 = +[NSDate date];
      [*(a1 + 32) setInactivityTimestamp:v10];
    }
  }
}

uint64_t sub_100002738(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) engine];
  [v4 processInterventionOutcome:a2];

  v5 = *(a1 + 32);
  [objc_opt_class() reportAnalyticsInterventionOutcome:a2];
  v6 = [NSString stringWithFormat:@"EyeReliefUI has exited with outcome %li. Now scheduling next sample", a2];
  [ERLogging log:v6 withType:0];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

uint64_t sub_100002A64(uint64_t a1, void *a2)
{
  v3 = [a2 info];
  [v3 flagForSetting:0];

  [*(a1 + 32) invalidate];
  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

id sub_100002B84(uint64_t a1)
{
  v4 = @"distance_event_category";
  v1 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) distanceCategory]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_100002CB4(uint64_t a1)
{
  v4 = @"intervention_outcome";
  v1 = [NSNumber numberWithInteger:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_100002DDC(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [v2 aa_primaryAppleAccount];

  if (v3)
  {
    v4 = [[NSSet alloc] initWithArray:&off_100008BF8];
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 aa_ageCategory]);
    v6 = [v4 containsObject:v5];

    if ((*(a1 + 32) & 1) != 0 || v6 != 1)
    {
      *(a1 + 32);
    }

    v7 = [NSString stringWithFormat:@"Gathering analytics for Eye Relief toggle."];
    [ERLogging log:v7 withType:0];

    AnalyticsSendEventLazy();
  }
}

id sub_100002F74(uint64_t a1)
{
  v4 = @"eye_relief_toggle_action";
  v1 = [NSNumber numberWithUnsignedLongLong:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  [objc_opt_new() start];
  dispatch_main();
}