uint64_t start()
{
  v0 = sub_1000012D0();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "FindMyDeviceBTDiscoveryXPCService started", v5, 2u);
  }

  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(FindMyDeviceBTDiscoveryXPCServer);
  v3 = +[NSXPCListener serviceListener];
  [v3 setDelegate:v2];
  [v3 resume];

  objc_autoreleasePoolPop(v1);
  return 0;
}

void sub_100001004(id a1)
{
  v2 = +[FMSystemInfo sharedInstance];
  v1 = [v2 isInternalBuild];
  if (v1)
  {
    LOBYTE(v1) = [FMPreferencesUtil BOOLForKey:@"FMDAutomationBluetoothDiscoveryAutomationActiveKey" inDomain:kFMDNotBackedUpPrefDomain];
  }

  byte_100012E68 = v1;
}

id sub_1000012D0()
{
  if (qword_100012E78 != -1)
  {
    sub_100003EBC();
  }

  v1 = qword_100012E80;

  return v1;
}

void sub_100001314(id a1)
{
  qword_100012E80 = os_log_create("com.apple.icloud.findmydeviced", "_");

  _objc_release_x1();
}

id sub_100001358()
{
  if (qword_100012E88 != -1)
  {
    sub_100003ED0();
  }

  v1 = qword_100012E90;

  return v1;
}

void sub_10000139C(id a1)
{
  qword_100012E90 = os_log_create("com.apple.icloud.findmydeviced", "locations");

  _objc_release_x1();
}

id sub_1000013E0()
{
  if (qword_100012E98 != -1)
  {
    sub_100003EE4();
  }

  v1 = qword_100012EA0;

  return v1;
}

void sub_100001424(id a1)
{
  qword_100012EA0 = os_log_create("com.apple.icloud.findmydeviced", "accessory");

  _objc_release_x1();
}

id sub_100001468()
{
  if (qword_100012EA8 != -1)
  {
    sub_100003EF8();
  }

  v1 = qword_100012EB0;

  return v1;
}

void sub_1000014AC(id a1)
{
  qword_100012EB0 = os_log_create("com.apple.icloud.findmydeviced", "traffic");

  _objc_release_x1();
}

id sub_1000014F0()
{
  if (qword_100012EB8 != -1)
  {
    sub_100003F0C();
  }

  v1 = qword_100012EC0;

  return v1;
}

void sub_100001534(id a1)
{
  qword_100012EC0 = os_log_create("com.apple.icloud.findmydeviced", "encoder");

  _objc_release_x1();
}

id sub_100001578()
{
  if (qword_100012EC8 != -1)
  {
    sub_100003F20();
  }

  v1 = qword_100012ED0;

  return v1;
}

void sub_1000015BC(id a1)
{
  qword_100012ED0 = os_log_create("com.apple.icloud.findmydeviced", "bluetoothsession");

  _objc_release_x1();
}

id sub_100001600()
{
  if (qword_100012ED8 != -1)
  {
    sub_100003F34();
  }

  v1 = qword_100012EE0;

  return v1;
}

void sub_100001644(id a1)
{
  qword_100012EE0 = os_log_create("com.apple.icloud.findmydeviced", "extensions");

  _objc_release_x1();
}

id sub_100001688()
{
  if (qword_100012EE8 != -1)
  {
    sub_100003F48();
  }

  v1 = qword_100012EF0;

  return v1;
}

void sub_1000016CC(id a1)
{
  qword_100012EF0 = os_log_create("com.apple.icloud.findmydeviced", "extensions_playSound");

  _objc_release_x1();
}

id sub_100001710()
{
  if (qword_100012EF8 != -1)
  {
    sub_100003F5C();
  }

  v1 = qword_100012F00;

  return v1;
}

void sub_100001754(id a1)
{
  qword_100012F00 = os_log_create("com.apple.icloud.findmydeviced", "secureLocations");

  _objc_release_x1();
}

id sub_100001798()
{
  if (qword_100012F08 != -1)
  {
    sub_100003F70();
  }

  v1 = qword_100012F10;

  return v1;
}

void sub_1000017DC(id a1)
{
  qword_100012F10 = os_log_create("com.apple.icloud.findmydeviced", "healUCRT");

  _objc_release_x1();
}

id sub_100001820()
{
  if (qword_100012F18 != -1)
  {
    sub_100003F84();
  }

  v1 = qword_100012F20;

  return v1;
}

void sub_100001864(id a1)
{
  qword_100012F20 = os_log_create("com.apple.icloud.findmydeviced", "DeviceTnL");

  _objc_release_x1();
}

id sub_1000018A8()
{
  if (qword_100012F28 != -1)
  {
    sub_100003F98();
  }

  v1 = qword_100012F30;

  return v1;
}

void sub_1000018EC(id a1)
{
  qword_100012F30 = os_log_create("com.apple.icloud.findmydeviced", "repairDevice");

  _objc_release_x1();
}

id sub_100001930()
{
  if (qword_100012F38 != -1)
  {
    sub_100003FAC();
  }

  v1 = qword_100012F40;

  return v1;
}

void sub_100001974(id a1)
{
  qword_100012F40 = os_log_create("com.apple.icloud.findmydeviced", "ALFailureAnalytics");

  _objc_release_x1();
}

id sub_1000019B8()
{
  if (qword_100012F48 != -1)
  {
    sub_100003FC0();
  }

  v1 = qword_100012F50;

  return v1;
}

void sub_1000019FC(id a1)
{
  qword_100012F50 = os_log_create("com.apple.icloud.findmydeviced", "disableLocationDisplay");

  _objc_release_x1();
}

id sub_100001A40()
{
  if (qword_100012F58 != -1)
  {
    sub_100003FD4();
  }

  v1 = qword_100012F60;

  return v1;
}

void sub_100001A84(id a1)
{
  qword_100012F60 = os_log_create("com.apple.icloud.findmydeviced", "accountRatchet");

  _objc_release_x1();
}

id sub_100001AC8()
{
  if (qword_100012F68 != -1)
  {
    sub_100003FE8();
  }

  v1 = qword_100012F70;

  return v1;
}

void sub_100001B0C(id a1)
{
  qword_100012F70 = os_log_create("com.apple.icloud.findmydeviced", "ownerAuthentication");

  _objc_release_x1();
}

id sub_100001B50()
{
  if (qword_100012F78 != -1)
  {
    sub_100003FFC();
  }

  v1 = qword_100012F80;

  return v1;
}

void sub_100001B94(id a1)
{
  if ([FMPreferencesUtil BOOLForKey:@"ShowAutomationLogs" inDomain:@"com.apple.icloud.findmydeviced.notbackedup"])
  {
    qword_100012F80 = os_log_create("com.apple.icloud.findmydeviced", "automation");

    _objc_release_x1();
  }
}

void sub_100002994(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_1000029D0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  [v4 didEndDiscoveryWithError:v3];
}

void sub_100002A3C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  v5 = [[FMDBluetoothDiscoveryXPCAdapterDevice alloc] initWithBluetoothDevice:v3];

  [v4 didDiscoverDevice:v5];
}

void sub_100002AD0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  v5 = [[FMDBluetoothDiscoveryXPCAdapterDevice alloc] initWithBluetoothDevice:v3];

  [v4 didLoseDevice:v5];
}

void sub_100002C94(id a1)
{
  qword_100012F88 = objc_alloc_init(FMDAutomationHelperFactory);

  _objc_release_x1();
}

void sub_1000033A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v5 - 96));
  _Unwind_Resume(a1);
}

void sub_1000033F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000012D0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000040D0();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processDeviceInformation:v3 lost:0];
}

void sub_100003470(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000012D0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100004104();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processDeviceInformation:v3 lost:0];
}

void sub_1000034E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000012D0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100004138();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processDeviceInformation:v3 lost:1];
}

void sub_100003560(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000012D0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000416C();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v6 = sub_1000012D0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000041A0(v3, v6);
    }

    [WeakRetained stopBLEDiscovery];
    [WeakRetained finishDiscoveringWithError:v3];
  }
}

void sub_100003718(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) didLoseDevice];

  if (v5)
  {
    v6 = sub_1000012D0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10000424C();
    }

    v7 = [*(a1 + 32) didLoseDevice];
    (v7)[2](v7, v4);
  }
}

void sub_100003E3C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100004024(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not find class %@ in the automation bundle", &v2, 0xCu);
}

void sub_1000041A0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BLE Scanning started with error %@", &v2, 0xCu);
}