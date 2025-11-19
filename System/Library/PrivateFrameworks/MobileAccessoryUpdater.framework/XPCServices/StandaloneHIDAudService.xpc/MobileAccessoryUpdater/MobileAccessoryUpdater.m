void sub_10000144C(void *a1)
{
  v1 = a1;
  v2 = [v1 logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000145C0();
  }

  v3 = [v1 matchSemaphore];
  dispatch_semaphore_signal(v3);

  [v1 clearNotification];
}

void sub_100002CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak((v16 + 56));
  objc_destroyWeak(va);
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v19 - 152));
  _Unwind_Resume(a1);
}

void sub_100002D54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained hostBatteryCapacity];
    v5 = [v3 minBatteryHost];
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Host has low battery of %d%% below minimum threshold %d%%", v4, [v5 intValue]);

    v7 = [NSError alloc];
    v8 = [*(a1 + 32) errorDomain];
    v11 = NSLocalizedDescriptionKey;
    v12 = v6;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [v7 initWithDomain:v8 code:18 userInfo:v9];
    [v3 setError:v10];

    [v3 executeNextBootstrapAction];
  }
}

void sub_100002EA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [WeakRetained batteryTimer];

    if (v1)
    {
      v2 = [WeakRetained batteryTimer];
      dispatch_source_cancel(v2);

      [WeakRetained setBatteryTimer:0];
    }

    if ([WeakRetained batteryToken] != -1)
    {
      notify_cancel([WeakRetained batteryToken]);
      [WeakRetained setBatteryToken:0xFFFFFFFFLL];
    }
  }
}

void sub_100002F4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setHostPowerSource:0];
    v4 = [v3 logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109376;
      v8[1] = [v3 hostBatteryCapacity];
      v9 = 1024;
      v10 = [v3 hostBatteryOnACPower];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Host battery %d%% on AC power %d", v8, 0xEu);
    }

    v5 = [v3 hostBatteryCapacity];
    v6 = [v3 minBatteryHost];
    v7 = [v6 intValue];

    if (v5 >= v7)
    {
      (*(*(a1 + 32) + 16))();
      [v3 executeNextBootstrapAction];
    }

    else if (([v3 hostBatteryOnACPower] & 1) == 0)
    {
      (*(*(a1 + 32) + 16))();
      (*(*(a1 + 40) + 16))();
    }
  }
}

void sub_1000030BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    (*(*(a1 + 32) + 16))(*(a1 + 32), [WeakRetained batteryToken]);
    v3 = [v6 hostBatteryCapacity];
    v4 = [v6 minBatteryHost];
    if (v3 >= [v4 intValue])
    {
    }

    else
    {
      v5 = [v6 hostBatteryOnACPower];

      WeakRetained = v6;
      if (!v5)
      {
        goto LABEL_7;
      }

      (*(*(a1 + 40) + 16))();
      (*(*(a1 + 48) + 16))();
    }

    WeakRetained = v6;
  }

LABEL_7:
}

void sub_100003634(uint64_t a1, int a2, int a3, void *a4)
{
  if (!(a3 | a2))
  {
    v6 = a4;
    [v6 setBtSession:a1];
    [v6 btSessionArrived];
  }
}

void sub_1000039A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    WORD2(v8) = 0;
    LODWORD(v8) = 0;
    v3 = [WeakRetained btAddress];
    [v3 UTF8String];
    v4 = BTDeviceAddressFromString();

    if (v4)
    {
      v5 = [v2 logHandle];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100014790();
      }

LABEL_13:

      goto LABEL_14;
    }

    [v2 btSession];
    v6 = BTDeviceFromAddress();
    v7 = [v2 logHandle];
    v5 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100014800();
      }

      goto LABEL_13;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100014870();
    }

    if (BTDeviceConnect())
    {
      v5 = [v2 logHandle];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000148AC();
      }

      goto LABEL_13;
    }
  }

LABEL_14:
}

void sub_100003D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003DCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained logHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10001491C(v2);
    }

    v4 = [v2 delayBootstrapSource];
    dispatch_source_cancel(v4);

    [v2 setDelayBootstrapSource:0];
    [v2 executeNextBootstrapAction];
  }
}

void sub_100004138(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained executeNextBootstrapAction];
    WeakRetained = v2;
  }
}

void sub_100004460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004490(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained logHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2 networkDelay];
      v7[0] = 67109120;
      v7[1] = [v4 intValue];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No network connection after %d seconds", v7, 8u);
    }

    v5 = [v2 networkStatus];

    if (v5)
    {
      v6 = [v2 networkStatus];
      dispatch_source_cancel(v6);

      [v2 setNetworkStatus:0];
    }

    if ([v2 networkReachability])
    {
      SCNetworkReachabilitySetCallback([v2 networkReachability], 0, 0);
      SCNetworkReachabilitySetDispatchQueue([v2 networkReachability], 0);
      CFRelease([v2 networkReachability]);
      [v2 setNetworkReachability:0];
      [v2 executeNextBootstrapAction];
    }
  }
}

void sub_100004D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id a54)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a34);
  objc_destroyWeak(&a39);
  objc_destroyWeak(&a44);
  objc_destroyWeak(&a49);
  objc_destroyWeak(&a54);
  objc_destroyWeak((v54 - 192));
  objc_destroyWeak((v54 - 184));
  _Unwind_Resume(a1);
}

void sub_100004E04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained clearOldRegistryEntryIDs];
    v3 = [v2 options];
    v4 = [v3 objectForKeyedSubscript:@"IOMatchLaunchServiceID"];

    v5 = [v2 abortUpdate];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = [NSError alloc];
      v8 = [v2 errorDomain];
      v15 = NSLocalizedDescriptionKey;
      v16 = @"Device not targeted by update/cycle scripts";
      v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v10 = [v7 initWithDomain:v8 code:35 userInfo:v9];
      [v2 setError:v10];
    }

    else
    {
      if (![v2 abortRegistryEntryID:v4])
      {
LABEL_7:
        [v2 executeNextBootstrapAction];

        goto LABEL_8;
      }

      v8 = [NSString stringWithFormat:@"Abort update for previously seen registry entry ID %@", v4];
      v11 = [NSError alloc];
      v9 = [v2 errorDomain];
      v13 = NSLocalizedDescriptionKey;
      v14 = v8;
      v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v12 = [v11 initWithDomain:v9 code:57 userInfo:v10];
      [v2 setError:v12];
    }

    goto LABEL_7;
  }

LABEL_8:
}

void sub_100005008(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained delayBootstrap];
    WeakRetained = v2;
  }
}

void sub_10000504C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained delegate];
    v4 = [v2 batteryCheckDevice];
    v5 = [v4 BOOLValue];
    v6 = [v2 logHandle];
    v7 = [v2 options];
    v8 = [v7 objectForKeyedSubscript:@"IOMatchLaunchServiceID"];
    v9 = [v2 errorDomain];
    v25 = 0;
    v10 = [SHFUDevice getDevices:v3 hasPowerSource:v5 logHandle:v6 registryEntryID:v8 errorDomain:v9 error:&v25];
    v11 = v25;

    if (v11)
    {
      [v2 setError:v11];
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = v10;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v21 + 1) + 8 * i);
            v18 = [v2 logHandle];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v27 = v17;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "checking updates for %@", buf, 0xCu);
            }

            v19 = [v2 loggingIdentifier];
            [v17 logVersions:v19];
          }

          v14 = [v12 countByEnumeratingWithState:&v21 objects:v28 count:16];
        }

        while (v14);
      }

      v10 = v20;
    }

    [v2 executeNextBootstrapAction];
  }
}

void sub_1000052C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained deviceNeedsBTReconnect];
    v4 = [v3 BOOLValue];

    if (v4)
    {
      v5 = [v2 delegate];
      v6 = [v2 batteryCheckDevice];
      v7 = [v6 BOOLValue];
      v8 = [v2 logHandle];
      v9 = [v2 options];
      v10 = [v9 objectForKeyedSubscript:@"IOMatchLaunchServiceID"];
      v11 = [v2 errorDomain];
      v27 = 0;
      v12 = [SHFUDevice getDevices:v5 hasPowerSource:v7 logHandle:v8 registryEntryID:v10 errorDomain:v11 error:&v27];
      v13 = v27;

      if (v13)
      {
        [v2 setError:v13];
      }

      else
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v24;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v24 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v23 + 1) + 8 * i);
              v20 = [v19 deviceAddress];
              v21 = [v20 length];

              if (v21)
              {
                v22 = [v19 deviceAddress];
                [v2 setBtAddress:v22];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
          }

          while (v16);
        }
      }
    }

    [v2 executeNextBootstrapAction];
  }
}

void sub_100005518(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained verifyHostBattery];
    WeakRetained = v2;
  }
}

void sub_10000555C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained verifyDeviceBattery];
    [v3 setError:v2];

    [v3 executeNextBootstrapAction];
    WeakRetained = v3;
  }
}

void sub_1000055C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained networkDelay];
    if ([v2 intValue] < 1)
    {
    }

    else
    {
      v3 = [v4 hostConnectedToNetwork];

      if ((v3 & 1) == 0)
      {
        [v4 waitForNetwork];
LABEL_7:
        WeakRetained = v4;
        goto LABEL_8;
      }
    }

    [v4 executeNextBootstrapAction];
    goto LABEL_7;
  }

LABEL_8:
}

void sub_100005654(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained delegate];
    v4 = [v2 batteryCheckDevice];
    v5 = [v4 BOOLValue];
    v6 = [v2 logHandle];
    v7 = [v2 options];
    v8 = [v7 objectForKeyedSubscript:@"IOMatchLaunchServiceID"];
    v9 = [v2 errorDomain];
    v24 = 0;
    v10 = [SHFUDevice getDevices:v3 hasPowerSource:v5 logHandle:v6 registryEntryID:v8 errorDomain:v9 error:&v24];
    v11 = v24;

    if (v11)
    {
      [v2 setError:v11];
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          v16 = 0;
          do
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v12);
            }

            if ([*(*(&v20 + 1) + 8 * v16) GATTServicesDiscoveryNeeded])
            {
              v17 = [CBCentralManager alloc];
              v18 = [v2 serialQueue];
              v19 = [v17 initWithDelegate:v2 queue:v18];
              [v2 setCentralManager:v19];
            }

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v14);
      }
    }

    [v2 executeNextBootstrapAction];
  }
}

void sub_100006320(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_100006370(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained logHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2 inactivityDelay];
      v5[0] = 67109120;
      v5[1] = [v4 intValue];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Waiting for %d seconds of user inactivity", v5, 8u);
    }
  }
}

id sub_100006448(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10000647C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100014C6C();
    }

    v5 = [v3 userInactivityStatus];

    if (v5)
    {
      v6 = [v3 userInactivityStatus];
      dispatch_source_cancel(v6);

      [v3 setUserInactivityStatus:0];
    }

    v8 = (a1 + 48);
    v7 = *(a1 + 48);
    if (v7 == 2)
    {
      v9 = [v3 serialQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100006610;
      block[3] = &unk_1000245D0;
      objc_copyWeak(&v12, (a1 + 40));
      dispatch_async(v9, block);

      objc_destroyWeak(&v12);
    }

    else if (v7 == 1)
    {
      [v3 commitFirmwareWithOptions:*(a1 + 32)];
    }

    else if (v7)
    {
      v10 = [v3 logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100014CEC(v8);
      }
    }

    else
    {
      [v3 sendFirmwareToDeviceWithOptions:*(a1 + 32)];
    }
  }
}

void sub_100006610(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained sendPersonalizedManifestsToDevice];
    WeakRetained = v2;
  }
}

void sub_100006654(uint64_t a1, uint64_t a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(*(*(a1 + 32) + 8) + 40);
    v8 = [WeakRetained logHandle];
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (!v7)
    {
      if (v9)
      {
        sub_100014DE8();
      }

      goto LABEL_11;
    }

    if (v9)
    {
      sub_100014D64();
    }

    if ((a3 & 1) == 0)
    {
      v10 = [v6 logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v6 inactivityDelay];
        *buf = 67109120;
        v17 = [v11 intValue];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User has been inactive for %d seconds (or more)", buf, 8u);
      }

      v8 = [v6 serialQueue];
      (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
      v12 = *(*(a1 + 32) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = 0;

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100006840;
      block[3] = &unk_1000245D0;
      objc_copyWeak(&v15, (a1 + 40));
      dispatch_async(v8, block);
      objc_destroyWeak(&v15);
LABEL_11:
    }
  }
}

uint64_t sub_100006840(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ([WeakRetained pmNotificationHandle])
    {
      [v3 pmNotificationHandle];
      IOPMUnregisterNotification();
      [v3 setPmNotificationHandle:0];
    }
  }

  return _objc_release_x1();
}

id sub_1000088C0(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (!v2)
  {
    v3 = [*(a1 + 32) verifyLatestFWVersions];
    [*(a1 + 32) setError:v3];
  }

  v4 = [*(a1 + 32) delegate];
  [v4 progress:100.0];

  [*(a1 + 32) releasePowerAssertion];
  v5 = [*(a1 + 32) error];

  v6 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) targetDevice];
    v8 = [*(a1 + 32) error];
    v13 = 138412802;
    v14 = v7;
    v15 = 1024;
    v16 = v5 == 0;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "finish: target device %@ successful %d error %@", &v13, 0x1Cu);
  }

  v9 = [*(a1 + 32) delegate];
  v10 = [*(a1 + 32) pluginInfo];
  v11 = [*(a1 + 32) error];
  [v9 didFinish:v5 == 0 info:v10 error:v11];

  [*(a1 + 32) setTransaction:0];
  return [*(a1 + 32) setSerialQueue:0];
}

uint64_t sub_100008AA4(uint64_t a1)
{
  v2 = [*(a1 + 32) personalizationSemaphore];
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000093C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v6 = @"Error";
    v7 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%llu", @"com.apple.StandaloneHIDFudPlugins.personalization", [*(a1 + 40) ecID]);
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:v4 object:*(a1 + 48) userInfo:v3];
}

uint64_t sub_10000B2EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000B330(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 getFirmwareType];
  if ([v7 isEqualToNumber:&off_1000269E8])
  {
    v8 = [v6 getFirmwareType];
    v9 = [v8 isEqualToNumber:&off_1000269E8];

    if ((v9 & 1) == 0)
    {
      v10 = [*(a1 + 32) BOOLValue] == 0;
      v11 = -1;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v12 = [v5 getFirmwareType];
  if ([v12 isEqualToNumber:&off_1000269E8])
  {

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v13 = [v6 getFirmwareType];
  v14 = [v13 isEqualToNumber:&off_1000269E8];

  if (!v14)
  {
    goto LABEL_12;
  }

  v10 = [*(a1 + 32) BOOLValue] == 0;
  v11 = 1;
LABEL_9:
  if (v10)
  {
    v15 = -v11;
  }

  else
  {
    v15 = v11;
  }

LABEL_13:

  return v15;
}

uint64_t sub_10000C8B8(unsigned int a1, void *a2, _DWORD *a3, __IOHIDDevice *a4, void *a5)
{
  v9 = 3758097090;
  v10 = a5;
  pReportLength = 513;
  if (a2 && a3)
  {
    if (*a3 <= 0x200u)
    {
      v9 = IOHIDDeviceGetReport(a4, kIOHIDReportTypeFeature, a1, &report, &pReportLength);
      if (!v9)
      {
        v13 = pReportLength;
        if (pReportLength >= 1)
        {
          memcpy(a2, &v16, pReportLength - 1);
          v9 = 0;
          *a3 = v13 - 1;
          goto LABEL_9;
        }

        v9 = 3758097127;
      }
    }

    else
    {
      v9 = 3758097128;
    }
  }

  v11 = v10;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100015308(a1, v9, v11);
  }

LABEL_9:
  return v9;
}

NSString *SHFUIOReturnString(uint64_t a1)
{
  if (a1 > -536850433)
  {
    if (a1 == -536850432)
    {
      v3 = @"kUSBHostReturnPipeStalled (Pipe has issued a STALL handshake.  Use clearStall to clear this condition.)";
    }

    else if (a1 == -536850431)
    {
      v3 = @"kUSBHostReturnNoPower (A setConfiguration call was not able to succeed because all configurations require more power than is available.)";
    }

    else
    {
LABEL_9:
      v3 = @"Unknown Error";
    }
  }

  else
  {
    v3 = @"kIOReturnError (general error)";
    switch(a1)
    {
      case 0xE00002BC:
        return [NSString stringWithFormat:@"0x%08X %@", a1, v3, v1, v2];
      case 0xE00002BD:
        v3 = @"kIOReturnNoMemory (can't allocate memory)";
        break;
      case 0xE00002BE:
        v3 = @"kIOReturnNoResources (resource shortage)";
        break;
      case 0xE00002BF:
        v3 = @"kIOReturnIPCError (error during IPC)";
        break;
      case 0xE00002C0:
        v3 = @"kIOReturnNoDevice (no such device)";
        break;
      case 0xE00002C1:
        v3 = @"kIOReturnNotPrivileged (privilege violation)";
        break;
      case 0xE00002C2:
        v3 = @"kIOReturnBadArgument (invalid argument)";
        break;
      case 0xE00002C3:
        v3 = @"kIOReturnLockedRead (device read locked)";
        break;
      case 0xE00002C4:
        v3 = @"kIOReturnLockedWrite (device write locked)";
        break;
      case 0xE00002C5:
        v3 = @"kIOReturnExclusiveAccess (exclusive access and device already open)";
        break;
      case 0xE00002C6:
        v3 = @"kIOReturnBadMessageID (sent/received messages had different msg_id)";
        break;
      case 0xE00002C7:
        v3 = @"kIOReturnUnsupported (unsupported function)";
        break;
      case 0xE00002C8:
        v3 = @"kIOReturnVMError (misc. VM failure)";
        break;
      case 0xE00002C9:
        v3 = @"kIOReturnInternalError (internal error)";
        break;
      case 0xE00002CA:
        v3 = @"kIOReturnIOError (General I/O error)";
        break;
      case 0xE00002CB:
      case 0xE00002DC:
        goto LABEL_9;
      case 0xE00002CC:
        v3 = @"kIOReturnCannotLock (can't acquire lock)";
        break;
      case 0xE00002CD:
        v3 = @"kIOReturnNotOpen (device not open)";
        break;
      case 0xE00002CE:
        v3 = @"kIOReturnNotReadable (read not supported)";
        break;
      case 0xE00002CF:
        v3 = @"kIOReturnNotWritable (write not supported)";
        break;
      case 0xE00002D0:
        v3 = @"kIOReturnNotAligned (alignment error)";
        break;
      case 0xE00002D1:
        v3 = @"kIOReturnBadMedia (Media Error)";
        break;
      case 0xE00002D2:
        v3 = @"kIOReturnStillOpen (device(s) still open)";
        break;
      case 0xE00002D3:
        v3 = @"kIOReturnRLDError (rld failure)";
        break;
      case 0xE00002D4:
        v3 = @"kIOReturnDMAError (DMA failure)";
        break;
      case 0xE00002D5:
        v3 = @"kIOReturnBusy (Device Busy)";
        break;
      case 0xE00002D6:
        v3 = @"kIOReturnTimeout (I/O Timeout)";
        break;
      case 0xE00002D7:
        v3 = @"kIOReturnOffline (device offline)";
        break;
      case 0xE00002D8:
        v3 = @"kIOReturnNotReady (not ready)";
        break;
      case 0xE00002D9:
        v3 = @"kIOReturnNotAttached (device not attached)";
        break;
      case 0xE00002DA:
        v3 = @"kIOReturnNoChannels (no DMA channels left)";
        break;
      case 0xE00002DB:
        v3 = @"kIOReturnNoSpace (no space for data)";
        break;
      case 0xE00002DD:
        v3 = @"kIOReturnPortExists (port already exists)";
        break;
      case 0xE00002DE:
        v3 = @"kIOReturnCannotWire (can't wire down physical memory)";
        break;
      case 0xE00002DF:
        v3 = @"kIOReturnNoInterrupt (no interrupt attached)";
        break;
      case 0xE00002E0:
        v3 = @"kIOReturnNoFrames (no DMA frames enqueued)";
        break;
      case 0xE00002E1:
        v3 = @"kIOReturnMessageTooLarge (oversized msg received on interrupt port)";
        break;
      case 0xE00002E2:
        v3 = @"kIOReturnNotPermitted (not permitted)";
        break;
      case 0xE00002E3:
        v3 = @"kIOReturnNoPower (no power to device)";
        break;
      case 0xE00002E4:
        v3 = @"kIOReturnNoMedia (media not present)";
        break;
      case 0xE00002E5:
        v3 = @"kIOReturnUnformattedMedia (media not formatted)";
        break;
      case 0xE00002E6:
        v3 = @"kIOReturnUnsupportedMode (no such mode)";
        break;
      case 0xE00002E7:
        v3 = @"kIOReturnUnderrun (data underrun)";
        break;
      case 0xE00002E8:
        v3 = @"kIOReturnOverrun (data overrun)";
        break;
      case 0xE00002E9:
        v3 = @"kIOReturnDeviceError (the device is not working properly!)";
        break;
      case 0xE00002EA:
        v3 = @"kIOReturnNoCompletion (a completion routine is required)";
        break;
      case 0xE00002EB:
        v3 = @"kIOReturnAborted (operation aborted)";
        break;
      case 0xE00002EC:
        v3 = @"kIOReturnNoBandwidth (bus bandwidth would be exceeded)";
        break;
      case 0xE00002ED:
        v3 = @"kIOReturnNotResponding (device not responding)";
        break;
      case 0xE00002EE:
        v3 = @"kIOReturnIsoTooOld (isochronous I/O request for distant past!)";
        break;
      case 0xE00002EF:
        v3 = @"kIOReturnIsoTooNew (isochronous I/O request for distant future)";
        break;
      case 0xE00002F0:
        v3 = @"kIOReturnNotFound (data was not found)";
        break;
      default:
        if (a1 != -536870911)
        {
          goto LABEL_9;
        }

        v3 = @"kIOReturnInvalid (should never be seen)";
        break;
    }
  }

  return [NSString stringWithFormat:@"0x%08X %@", a1, v3, v1, v2];
}

void sub_10000E5F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[FudPersonalizationObjectInfo alloc] initWithTag:v6];

  [v7 setDigest:v5];
  [v7 setTrusted:1];
  [v7 setEffectiveProductionMode:{objc_msgSend(*(a1 + 32), "productionMode")}];
  [v7 setEffectiveSecurityMode:{objc_msgSend(*(a1 + 32), "securityMode")}];
  [*(a1 + 40) addObject:v7];
}

void sub_10000EF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, char a37)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  objc_destroyWeak(&a36);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000EFA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000EFD0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_19;
  }

  v6 = [WeakRetained logHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000159A8();
  }

  v7 = +[NSNotificationCenter defaultCenter];
  v8 = [v5 personalizationObserver];
  [v7 removeObserver:v8];

  [v5 setPersonalizationObserver:0];
  v9 = [v3 object];
  if (v9)
  {
    v10 = [*(a1 + 32) createAFUManifest:v9];
    if (*(a1 + 72) == 1)
    {
      v11 = NSHomeDirectory();
      v12 = +[NSDate date];
      v13 = [NSString stringWithFormat:@"manifest %@.afu", v12];

      v14 = [v11 stringByAppendingPathComponent:v13];
      v15 = [v10 writeToFile:v14 atomically:1];
      v16 = [v5 logHandle];
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v14;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Personalized manifest written to %@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000159E4();
      }
    }

    v20 = [v5 sendSingleFirmwareToDevice:v10 totalPrepareBytes:0 bytesSent:0 featureReportDelay:*(a1 + 40)];
  }

  else
  {
    v18 = [v3 userInfo];
    v19 = [v18 objectForKeyedSubscript:@"Error"];

    if (!v19)
    {
      v24 = [NSError alloc];
      v10 = [v5 errorDomain];
      v28 = NSLocalizedDescriptionKey;
      v29 = @"No personalized manifest";
      v22 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v25 = [v24 initWithDomain:v10 code:52 userInfo:v22];
      v26 = *(*(a1 + 56) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      goto LABEL_16;
    }

    v10 = [v3 userInfo];
    v20 = [v10 objectForKeyedSubscript:@"Error"];
  }

  v21 = *(*(a1 + 56) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;
LABEL_16:

  v23 = *(*(*(a1 + 64) + 8) + 40);
  if (v23)
  {
    dispatch_semaphore_signal(v23);
  }

LABEL_19:
}

intptr_t sub_10000FD34(NSObject *a1, io_iterator_t iterator)
{
    ;
  }

  [NSThread sleepForTimeInterval:1.0];

  return dispatch_semaphore_signal(a1);
}

void sub_100012390(uint64_t a1)
{
  if (*(*(a1 + 32) + 56))
  {
    return;
  }

  v2 = IOPSCopyPowerSourcesByType();
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = v2;
  v4 = IOPSCopyPowerSourcesList(v2);
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = v4;
  Count = CFArrayGetCount(v4);
  if (Count < 1)
  {
    goto LABEL_17;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
    if (!ValueAtIndex)
    {
      goto LABEL_14;
    }

    v10 = IOPSGetPowerSourceDescription(v3, ValueAtIndex);
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = [NSDictionary dictionaryWithDictionary:v10];
    if (*(a1 + 40) != 1)
    {
      goto LABEL_25;
    }

    v12 = [*(a1 + 32) serialNumber];
    v13 = [v11 objectForKeyedSubscript:@"Accessory Identifier"];
    v14 = [v12 isEqualToString:v13];

    if (v14)
    {
      break;
    }

    if ((*(a1 + 40) & 1) == 0)
    {
LABEL_25:
      v15 = [*(a1 + 32) productName];
      v16 = [v11 objectForKeyedSubscript:@"Name"];
      v17 = [v15 isEqualToString:v16];

      if (v17)
      {
        break;
      }
    }

LABEL_14:
    if (v7 == ++v8)
    {
      goto LABEL_17;
    }
  }

  objc_storeStrong((*(a1 + 32) + 56), v11);

LABEL_17:
  CFRelease(v5);
LABEL_18:
  CFRelease(v3);
LABEL_19:
  v18 = *(a1 + 32);
  if (v18[7])
  {
    v19 = [v18 powerSemaphore];
    dispatch_semaphore_signal(v19);
  }
}

uint64_t sub_100012570(uint64_t a1)
{
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100015D58();
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100013070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a19, 8);
  objc_destroyWeak(&a29);
  _Block_object_dispose(&a31, 8);
  objc_destroyWeak((v31 - 160));
  _Block_object_dispose((v31 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000130D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000130EC(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      v8 = 136315138;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received notification %s", &v8, 0xCu);
    }

    notify_cancel(a2);
    *(*(*(a1 + 40) + 8) + 24) = -1;
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

intptr_t sub_1000131D8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v7 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) mobileAssetType];
      *buf = 138412290;
      v28 = v14;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MobileAsset catalog download succeeded for %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (a2 != 13)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v15 = [*(a1 + 32) mobileAssetType];
    v7 = [NSString stringWithFormat:@"Catalog download failed for %@ with MADownloadResult %ld", v15, a2];

    v16 = [NSError alloc];
    v17 = [*(a1 + 32) errorDomain];
    v23 = NSLocalizedDescriptionKey;
    v24 = v7;
    v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v19 = [v16 initWithDomain:v17 code:50 userInfo:v18];
    v20 = *(*(a1 + 56) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    goto LABEL_11;
  }

  if (!*(a1 + 72))
  {
    v4 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v28 = 3600;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MobileAsset daemon not ready. Wait up to %lld seconds.", buf, 0xCu);
    }

    v5 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(*(a1 + 40), v5))
    {
      v6 = [*(a1 + 32) mobileAssetType];
      v7 = [NSString stringWithFormat:@"Catalog download timed out for %@ with MADownloadResult %ld", v6, 13];

      v8 = [NSError alloc];
      v9 = [*(a1 + 32) errorDomain];
      v25 = NSLocalizedDescriptionKey;
      v26 = v7;
      v10 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v11 = [v8 initWithDomain:v9 code:50 userInfo:v10];
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_11:
    }
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100014270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

intptr_t sub_1000142AC(uint64_t a1, uint64_t a2)
{
  if (a2 != 10 && a2)
  {
    v4 = [NSString stringWithFormat:@"MobileAsset download failed with MADownloadResult %ld", a2];
    v5 = [NSError alloc];
    v6 = [*(a1 + 32) errorDomain];
    v12 = NSLocalizedDescriptionKey;
    v13 = v4;
    v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [v5 initWithDomain:v6 code:49 userInfo:v7];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v3 = [*(a1 + 40) getLocalUrl];
    [*(a1 + 32) setFirmwareDirectory:v3];

    v4 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100016178((a1 + 32));
    }
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = os_log_create("com.apple.StandaloneHIDFudPlugins", "main");
  signal(15, 1);
  v4 = dispatch_get_global_queue(33, 0);
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v4);

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100014568;
  handler[3] = &unk_100024698;
  v9 = v3;
  v6 = v3;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_activate(v5);
  +[AUServiceManager startService];

  return 0;
}

void sub_100014568(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "FW update aborted due to SIGTERM", v2, 2u);
  }

  exit(1);
}

void sub_1000145C0()
{
  sub_1000099F4();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000145FC()
{
  sub_1000099F4();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100014638()
{
  sub_100009A0C();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000146A8()
{
  sub_100009A18();
  sub_100009A00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100014718()
{
  sub_1000099F4();
  sub_100009A00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100014754()
{
  sub_1000099F4();
  sub_100009A00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100014790()
{
  sub_100009A18();
  sub_100009A00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100014800()
{
  sub_100009A18();
  sub_100009A00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100014870()
{
  sub_1000099F4();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000148AC()
{
  sub_100009A18();
  sub_100009A00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10001491C(void *a1)
{
  v1 = [a1 bootstrapDelay];
  [v1 intValue];
  sub_100009A18();
  sub_100009A24();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000149AC()
{
  sub_100009A0C();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100014A1C(void *a1)
{
  [a1 state];
  sub_100009A0C();
  sub_100009A24();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100014A9C()
{
  sub_1000099F4();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100014AD8()
{
  sub_1000099F4();
  sub_100009A00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100014B14()
{
  sub_100009A18();
  sub_100009A00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100014B84()
{
  sub_1000099F4();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100014BC0()
{
  sub_100009A18();
  sub_100009A00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100014C30()
{
  sub_1000099F4();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100014CEC(int *a1)
{
  v6 = *a1;
  sub_100009A00();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100014D64()
{
  sub_100009A0C();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "outUserActive 0x%llX mostSignificantActivity 0x%llX", v2, 0x16u);
}

void sub_100014DE8()
{
  sub_1000099F4();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100014E24()
{
  sub_100009A0C();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100014E94()
{
  sub_100009A0C();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100014F04(void *a1)
{
  v1 = [a1 firmwareDirectory];
  sub_100009A0C();
  sub_100009A24();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100014FA8()
{
  sub_1000099F4();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100014FE4()
{
  sub_1000099F4();
  sub_100009A00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015064(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FTAB not long enough for file count : %u", v2, 8u);
}

void sub_1000150DC(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FTAB too short. Length (%lu bytes) < AFU header + ftab min length", &v2, 0xCu);
}

void sub_100015154(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "loading firmware files from directory %@", &v2, 0xCu);
}

void sub_1000151CC(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unknown FW Source %d", v1, 8u);
}

void sub_10001524C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "options %@", &v2, 0xCu);
}

void sub_100015308(unsigned __int8 a1, uint64_t a2, NSObject *a3)
{
  v4 = a2;
  v5 = a1;
  v6 = SHFUIOReturnString(a2);
  v7[0] = 67109634;
  v7[1] = v5;
  v8 = 1024;
  v9 = v4;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "reportID 0x%02X error 0x%08X %@", v7, 0x18u);
}

void sub_1000153CC()
{
  sub_100009A0C();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001543C()
{
  sub_100009A0C();
  sub_100012838();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000154B8()
{
  sub_100009A0C();
  sub_100012838();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100015534()
{
  sub_100009A0C();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000155A4()
{
  sub_1000099F4();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000155E0()
{
  sub_100009A0C();
  sub_100012838();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000156DC()
{
  sub_1000099F4();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015718(uint8_t *buf, _DWORD *a2, os_log_t log)
{
  *buf = 67109120;
  *a2 = 189;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Personalization info feature report ID 0x%02X failed.", buf, 8u);
}

void sub_100015864(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 134217984;
  *a2 = 120;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Personalization request sent. Wait up to %lld seconds for response.", buf, 0xCu);
}

void sub_1000158B0(uint64_t a1)
{
  v6 = *(*a1 + 40);
  sub_100009A00();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000159A8()
{
  sub_1000099F4();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000159E4()
{
  sub_100009A0C();
  sub_100009A00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100015A54(void *a1)
{
  [a1 initReportDelay];
  sub_100009A24();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100015AD8(void *a1)
{
  [a1 initReportDelay];
  sub_100009A24();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100015B5C()
{
  sub_1000099F4();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015B98()
{
  sub_1000099F4();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015C54()
{
  v0 = [AUFileParser auTypeString:1];
  sub_100009A0C();
  sub_100009A24();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Eu);
}

void sub_100015D1C()
{
  sub_1000099F4();
  sub_100009A00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015D58()
{
  sub_1000099F4();
  sub_1000099E8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015D94(uint64_t a1, char a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "options %@ remote %d", &v3, 0x12u);
}

void sub_100015E20(void *a1)
{
  v1 = [a1 searchLocal];
  sub_100009A0C();
  sub_100009A24();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100015EAC(void *a1)
{
  v1 = [a1 mobileAssetType];
  sub_100009A0C();
  sub_100009A24();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100015F38(void *a1)
{
  v1 = [a1 results];
  sub_100009A0C();
  sub_100009A24();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100015FC4(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = ASAttributeContentVersion;
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Max %@: %@", &v2, 0x16u);
}

void sub_100016054()
{
  +[ASAsset nonUserInitiatedDownloadsAllowed];
  sub_100009A24();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100016178(id *a1)
{
  v1 = [*a1 firmwareDirectory];
  sub_100009A0C();
  sub_100009A24();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}