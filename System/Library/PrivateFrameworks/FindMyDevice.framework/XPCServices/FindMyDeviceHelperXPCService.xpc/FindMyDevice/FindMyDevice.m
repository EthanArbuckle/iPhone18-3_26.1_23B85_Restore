void sub_1000018B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000018D4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001984;
  block[3] = &unk_1000144A0;
  objc_copyWeak(&v7, (a1 + 48));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  v8 = *(a1 + 56);
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v7);
}

void sub_100001984(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v36 = 0;
  v4 = [v3 statusOfValueForKey:@"duration" error:&v36];
  v5 = v36;
  v6 = *(a1 + 32);
  v35 = 0;
  v7 = [v6 statusOfValueForKey:@"playable" error:&v35];
  v8 = v35;
  if (v4 == 2 && v7 == 2)
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      [v15 duration];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    CMTimeMake(&time2, 1, 100);
    if ((CMTimeCompare(&buf, &time2) & 0x80000000) == 0 && [*(a1 + 32) isPlayable])
    {
      memset(&time2, 0, sizeof(time2));
      v16 = *(a1 + 32);
      if (v16)
      {
        [v16 duration];
      }

      buf = time2;
      Seconds = CMTimeGetSeconds(&buf);
      v18 = llround(1.0 / Seconds) + 2;
      v19 = *(a1 + 56);
      if (v19 > 0.00000011920929)
      {
        v18 += llround(ceil(v19 / Seconds));
        v20 = sub_1000070C0();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v22 = *(a1 + 32);
          v21 = *(a1 + 40);
          v23 = *(a1 + 56);
          LODWORD(buf.value) = 138544130;
          *(&buf.value + 4) = v21;
          LOWORD(buf.flags) = 2114;
          *(&buf.flags + 2) = v22;
          HIWORD(buf.epoch) = 2050;
          v38 = v23;
          v39 = 2050;
          v40 = v18;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}@: -playbackInLoopWithURL:(%{public}@). audioVolumeRampingDuration = %{public}f, numberOfAdditionalPlayerItemsForAudioVolumeRamping = %{public}lu.", &buf, 0x2Au);
        }
      }

      if (v18)
      {
        for (i = 0; i != v18; ++i)
        {
          v25 = [AVPlayerItem playerItemWithAsset:*(a1 + 32)];
          if (v25)
          {
            v26 = [*(a1 + 40) _audioMixForVolumeRampingWithDuration:*(a1 + 32) toneAsset:i toneAssetDuration:*(a1 + 56) itemIndex:Seconds];
            if (v26)
            {
              [v25 setAudioMix:v26];
            }

            v27 = [WeakRetained player];
            [v27 insertItem:v25 afterItem:0];
          }
        }
      }

      v28 = dispatch_time(0, (*(a1 + 64) * 1000000000.0));
      v12 = dispatch_get_global_queue(25, 0);
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100001E10;
      v33[3] = &unk_100014478;
      v33[4] = WeakRetained;
      dispatch_after(v28, v12, v33);
      goto LABEL_39;
    }

    v12 = sub_1000070C0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 32);
      if (v29)
      {
        [v29 duration];
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      v30 = CMTimeGetSeconds(&buf);
      v31 = [*(a1 + 32) isPlayable];
      v32 = "NO";
      if (v31)
      {
        v32 = "YES";
      }

      LODWORD(buf.value) = 134218242;
      *(&buf.value + 4) = v30;
      LOWORD(buf.flags) = 2080;
      *(&buf.flags + 2) = v32;
      v14 = "FMDLoopPlayer: Can't loop. Asset duration too short(%1.3f sec) or not playable(isPlayable: %s)";
      goto LABEL_38;
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4 == 3)
  {
    v10 = sub_1000070C0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      LODWORD(buf.value) = 138412546;
      *(&buf.value + 4) = v11;
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDLoopPlayer: Failed to load duration property for asset: %@ with error: %@", &buf, 0x16u);
    }
  }

  if (v7 == 3)
  {
    v12 = sub_1000070C0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      LODWORD(buf.value) = 138412546;
      *(&buf.value + 4) = v13;
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = v8;
      v14 = "FMDLoopPlayer: Failed to load playable property for asset: %@ with error: %@";
LABEL_38:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, &buf, 0x16u);
      goto LABEL_39;
    }

    goto LABEL_39;
  }

LABEL_40:
}

void sub_100001E10(uint64_t a1)
{
  [*(a1 + 32) startObservingPlayerAndItem];
  v2 = [*(a1 + 32) player];
  [v2 play];
}

uint64_t start()
{
  v0 = sub_1000070C0();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "FindMyDeviceHelperXPCService started", buf, 2u);
  }

  v1 = objc_alloc_init(FindMyDeviceHelperXPCServer);
  v2 = objc_autoreleasePoolPush();
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.icloud.FindMyDevice.FindMyDeviceHelperXPCService"];
  [v3 setDelegate:v1];
  v4 = sub_1000070C0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resuming NSXPCListener", v9, 2u);
  }

  [v3 resume];
  objc_autoreleasePoolPop(v2);
  v5 = sub_1000070C0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting runloop running", v8, 2u);
  }

  v6 = +[NSRunLoop mainRunLoop];
  [v6 run];

  return 0;
}

id sub_1000027EC(uint64_t a1, void *a2)
{
  v3 = sub_1000070C0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received stopLostModeAlarm distributed notification. Stopping the alarm...", v5, 2u);
  }

  return [a2 stopSoundWithCompletion:&stru_100014F08];
}

void sub_100002DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002DF0(uint64_t a1)
{
  v2 = sub_1000070C0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Will stop the sound because timer fired", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopSound];
}

void sub_100003144(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000070C0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stop sound with error: %@", &v4, 0xCu);
  }
}

void sub_1000032B4(id a1)
{
  v1 = [FMSharedFileContainer alloc];
  v2 = [v1 initWithIdentifier:off_10001E7A0];
  v3 = [v2 url];
  v8 = [v3 fm_preferencesPathURLForDomain:@"FMDAutomationAVRouteController"];

  v4 = [[FMDataArchiver alloc] initWithFileURL:v8];
  v5 = [NSSet setWithObject:objc_opt_class()];
  v6 = [v4 readDictionaryAndClasses:v5 error:0];

  v7 = [v6 objectForKeyedSubscript:@"FMDAutomationAVRouteControllerAutomationActiveKey"];
  byte_10001EA50 = [v7 BOOLValue];
}

uint64_t sub_100003510(uint64_t a1)
{
  qword_10001EA60 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_1000045E4(uint64_t a1)
{
  [*(a1 + 32) setIsSoundPlaying:0];
  [*(a1 + 32) setVolumeTargetValue:0.0];
  [*(a1 + 32) rampDownDuration];
  [*(a1 + 32) setFadeDuration:?];
  [*(a1 + 32) rampDownDuration];
  v2 = *(a1 + 32);
  if (v3 <= 0.0)
  {
    [v2 stopSound];
  }

  else
  {
    [v2 fade];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_100005D8C(uint64_t a1)
{
  v2 = sub_1000070C0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AEFC(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fade];
}

uint64_t sub_10000650C(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = sub_1000070C0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_retainBlock(*(v1 + 32));
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController Calling initial completion block %@", &v4, 0xCu);
    }

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

uint64_t sub_100006930(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = sub_1000070C0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_retainBlock(*(v1 + 32));
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController Calling initial completion block %@", &v4, 0xCu);
    }

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

void sub_100006E1C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100006E80(id a1)
{
  qword_10001EA78 = objc_alloc_init(FMDAutomationHelperFactory);

  _objc_release_x1();
}

id sub_1000070C0()
{
  if (qword_10001EA88 != -1)
  {
    sub_10000AFCC();
  }

  v1 = qword_10001EA90;

  return v1;
}

void sub_100007104(id a1)
{
  qword_10001EA90 = os_log_create("com.apple.icloud.findmydeviced", "_");

  _objc_release_x1();
}

id sub_100007148()
{
  if (qword_10001EA98 != -1)
  {
    sub_10000AFE0();
  }

  v1 = qword_10001EAA0;

  return v1;
}

void sub_10000718C(id a1)
{
  qword_10001EAA0 = os_log_create("com.apple.icloud.findmydeviced", "locations");

  _objc_release_x1();
}

id sub_1000071D0()
{
  if (qword_10001EAA8 != -1)
  {
    sub_10000AFF4();
  }

  v1 = qword_10001EAB0;

  return v1;
}

void sub_100007214(id a1)
{
  qword_10001EAB0 = os_log_create("com.apple.icloud.findmydeviced", "accessory");

  _objc_release_x1();
}

id sub_100007258()
{
  if (qword_10001EAB8 != -1)
  {
    sub_10000B008();
  }

  v1 = qword_10001EAC0;

  return v1;
}

void sub_10000729C(id a1)
{
  qword_10001EAC0 = os_log_create("com.apple.icloud.findmydeviced", "traffic");

  _objc_release_x1();
}

id sub_1000072E0()
{
  if (qword_10001EAC8 != -1)
  {
    sub_10000B01C();
  }

  v1 = qword_10001EAD0;

  return v1;
}

void sub_100007324(id a1)
{
  qword_10001EAD0 = os_log_create("com.apple.icloud.findmydeviced", "encoder");

  _objc_release_x1();
}

id sub_100007368()
{
  if (qword_10001EAD8 != -1)
  {
    sub_10000B030();
  }

  v1 = qword_10001EAE0;

  return v1;
}

void sub_1000073AC(id a1)
{
  qword_10001EAE0 = os_log_create("com.apple.icloud.findmydeviced", "bluetoothsession");

  _objc_release_x1();
}

id sub_1000073F0()
{
  if (qword_10001EAE8 != -1)
  {
    sub_10000B044();
  }

  v1 = qword_10001EAF0;

  return v1;
}

void sub_100007434(id a1)
{
  qword_10001EAF0 = os_log_create("com.apple.icloud.findmydeviced", "extensions");

  _objc_release_x1();
}

id sub_100007478()
{
  if (qword_10001EAF8 != -1)
  {
    sub_10000B058();
  }

  v1 = qword_10001EB00;

  return v1;
}

void sub_1000074BC(id a1)
{
  qword_10001EB00 = os_log_create("com.apple.icloud.findmydeviced", "extensions_playSound");

  _objc_release_x1();
}

id sub_100007500()
{
  if (qword_10001EB08 != -1)
  {
    sub_10000B06C();
  }

  v1 = qword_10001EB10;

  return v1;
}

void sub_100007544(id a1)
{
  qword_10001EB10 = os_log_create("com.apple.icloud.findmydeviced", "secureLocations");

  _objc_release_x1();
}

id sub_100007588()
{
  if (qword_10001EB18 != -1)
  {
    sub_10000B080();
  }

  v1 = qword_10001EB20;

  return v1;
}

void sub_1000075CC(id a1)
{
  qword_10001EB20 = os_log_create("com.apple.icloud.findmydeviced", "healUCRT");

  _objc_release_x1();
}

id sub_100007610()
{
  if (qword_10001EB28 != -1)
  {
    sub_10000B094();
  }

  v1 = qword_10001EB30;

  return v1;
}

void sub_100007654(id a1)
{
  qword_10001EB30 = os_log_create("com.apple.icloud.findmydeviced", "DeviceTnL");

  _objc_release_x1();
}

id sub_100007698()
{
  if (qword_10001EB38 != -1)
  {
    sub_10000B0A8();
  }

  v1 = qword_10001EB40;

  return v1;
}

void sub_1000076DC(id a1)
{
  qword_10001EB40 = os_log_create("com.apple.icloud.findmydeviced", "repairDevice");

  _objc_release_x1();
}

id sub_100007720()
{
  if (qword_10001EB48 != -1)
  {
    sub_10000B0BC();
  }

  v1 = qword_10001EB50;

  return v1;
}

void sub_100007764(id a1)
{
  qword_10001EB50 = os_log_create("com.apple.icloud.findmydeviced", "ALFailureAnalytics");

  _objc_release_x1();
}

id sub_1000077A8()
{
  if (qword_10001EB58 != -1)
  {
    sub_10000B0D0();
  }

  v1 = qword_10001EB60;

  return v1;
}

void sub_1000077EC(id a1)
{
  qword_10001EB60 = os_log_create("com.apple.icloud.findmydeviced", "disableLocationDisplay");

  _objc_release_x1();
}

id sub_100007830()
{
  if (qword_10001EB68 != -1)
  {
    sub_10000B0E4();
  }

  v1 = qword_10001EB70;

  return v1;
}

void sub_100007874(id a1)
{
  qword_10001EB70 = os_log_create("com.apple.icloud.findmydeviced", "accountRatchet");

  _objc_release_x1();
}

id sub_1000078B8()
{
  if (qword_10001EB78 != -1)
  {
    sub_10000B0F8();
  }

  v1 = qword_10001EB80;

  return v1;
}

void sub_1000078FC(id a1)
{
  qword_10001EB80 = os_log_create("com.apple.icloud.findmydeviced", "ownerAuthentication");

  _objc_release_x1();
}

id sub_100007940()
{
  if (qword_10001EB88 != -1)
  {
    sub_10000B10C();
  }

  v1 = qword_10001EB90;

  return v1;
}

void sub_100007984(id a1)
{
  if ([FMPreferencesUtil BOOLForKey:@"ShowAutomationLogs" inDomain:@"com.apple.icloud.findmydeviced.notbackedup"])
  {
    qword_10001EB90 = os_log_create("com.apple.icloud.findmydeviced", "automation");

    _objc_release_x1();
  }
}

void sub_100007FA4(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = 5.0;
  if (v2 >= 5.0)
  {
    v3 = *(a1 + 64);
  }

  if (v2 >= 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) accessoryAudioController];
  [v5 setRampUpDuration:v4];

  v6 = [*(a1 + 32) accessoryAudioController];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000080BC;
  v9[3] = &unk_100015298;
  v9[4] = *(a1 + 32);
  v12 = *(a1 + 72);
  v10 = v7;
  v11 = *(a1 + 56);
  [v6 startPlayingSoundForAccessory:v10 channels:v8 completion:v9];
}

void sub_1000080BC(void *a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008180;
    block[3] = &unk_100015270;
    v4 = a1[5];
    block[4] = a1[4];
    v8 = a1[7];
    v7 = v4;
    dispatch_async(&_dispatch_main_q, block);
  }

  v5 = a1[6];
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

id sub_100008180(uint64_t a1)
{
  [*(a1 + 32) setTimeoutForDuration:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setCurrentAccessory:v3];
}

void sub_100008590(uint64_t a1)
{
  if (*(a1 + 56) >= 0.0)
  {
    v2 = *(a1 + 56);
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) accessoryAudioController];
  [v3 setRampDownDuration:v2];

  v4 = [*(a1 + 32) accessoryAudioController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008678;
  v6[3] = &unk_1000152E8;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  [v4 stopPlayingForAccessory:v5 completion:v6];
}

void sub_100008678(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) invalidateStopSoundTimer];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void sub_100008998(uint64_t a1)
{
  v2 = *(a1 + 56);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100008B20;
  v14[3] = &unk_100015360;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v6 = [NSTimer timerWithTimeInterval:0 repeats:v14 block:v2];
  v7 = +[NSRunLoop currentRunLoop];
  [v7 addTimer:v6 forMode:NSRunLoopCommonModes];

  v8 = [*(a1 + 40) accessoryAudioController];
  v9 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100008D34;
  v11[3] = &unk_1000152E8;
  v12 = v6;
  v13 = *(a1 + 48);
  v10 = v6;
  [v8 startMonitoringRoutableAccessory:v9 completion:v11];
}

void sub_100008B20(uint64_t a1)
{
  v2 = [NSError alloc];
  v20 = NSLocalizedFailureReasonErrorKey;
  v3 = [NSString stringWithFormat:@"waitForRoutableAccessory timeout exausted for accessory %@", *(a1 + 32)];
  v21 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v5 = [v2 initWithDomain:@"com.apple.icloud.FindMyDevice" code:4 userInfo:v4];

  v6 = sub_1000070C0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) accessoryAudioController];
    *buf = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Wait timer fired for accessory: %@ %@", buf, 0x16u);
  }

  v9 = [*(a1 + 40) accessoryAudioController];
  v10 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008D14;
  v13[3] = &unk_100015338;
  v11 = *(a1 + 48);
  v14 = v5;
  v15 = v11;
  v12 = v5;
  [v9 stopMonitoringRoutableAccessory:v10 completion:v13];
}

uint64_t sub_100008D14(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100008D34(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) invalidate];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

id sub_100009D24(uint64_t a1)
{
  v2 = sub_1000070C0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "XPC invalidation handler called", v4, 2u);
  }

  return [*(a1 + 32) stopSoundWithCompletion:&stru_100015380];
}

void sub_100009DA0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000070C0();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10000B188();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sound stopped due to XPC invalidation", v5, 2u);
  }
}

void sub_10000A930(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000AAD0(void *a1)
{
  v1 = [a1 routeID];
  sub_100006E10();
  sub_100006E1C(&_mh_execute_header, v2, v3, "AccessoryAudioController unable to get original volume %@", v4, v5, v6, v7, v8);
}

void sub_10000AB54(void *a1)
{
  v1 = [a1 routeID];
  sub_100006E10();
  sub_100006E1C(&_mh_execute_header, v2, v3, "AccessoryAudioController unable to set maximum volume, please file a bug to Core Audio %@", v4, v5, v6, v7, v8);
}

void sub_10000ABD8(void *a1)
{
  v2 = [a1 audioPlayer];
  [v2 volume];
  [a1 volumeTargetValue];
  sub_100006DE4(v3);
  sub_100006E00();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10000AC88(void *a1)
{
  v2 = [a1 audioPlayer];
  [v2 volume];
  [a1 volumeTargetValue];
  sub_100006E00();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10000AD58(void *a1)
{
  v2 = [a1 audioPlayer];
  [v2 pan];
  [a1 panTargetValue];
  sub_100006DE4(v3);
  sub_100006E00();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10000AE08(void *a1)
{
  v2 = [a1 audioPlayer];
  [v2 pan];
  [a1 panTargetValue];
  sub_100006DE4(v3);
  sub_100006E00();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10000AF54(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not find class %@ in the automation bundle", &v2, 0xCu);
}

void sub_10000B31C()
{
  sub_100006E10();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error creating the directory %@: %@", v2, 0x16u);
}

void sub_10000B3A0(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 lastPathComponent];
  sub_100006E10();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error excluding %@ from backup %@", v6, 0x16u);
}