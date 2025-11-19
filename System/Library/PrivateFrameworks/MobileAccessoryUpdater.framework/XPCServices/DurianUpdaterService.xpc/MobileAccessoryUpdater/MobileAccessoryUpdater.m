void sub_1000014B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clDurianMobileAssetUpdater];
  v5 = [v4 assetAvailable];

  v6 = [*(a1 + 32) clDurianMobileAssetUpdater];
  v7 = [v6 assetDownloaded] ^ 1;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109634;
    v16[1] = v5;
    v17 = 1024;
    v18 = v7;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Query to MobileAsset completed - updateAvailable: %d needsDownload: %d error: %@", v16, 0x18u);
  }

  v8 = *(a1 + 32);
  if (v3)
  {
    [v8 notifySPFirmwareUpdateState:1 error:v3];
    v9 = [*(a1 + 32) fudPluginDelegate];
    v10 = v9;
    v11 = 0;
    v12 = v5;
    v13 = v7;
    v14 = v3;
  }

  else
  {
    if (v5)
    {
      v15 = 0;
    }

    else
    {
      v15 = 4;
    }

    [v8 notifySPFirmwareUpdateState:v15 error:0];
    v9 = [*(a1 + 32) fudPluginDelegate];
    v10 = v9;
    v11 = 1;
    v12 = v5;
    v13 = v7;
    v14 = 0;
  }

  [v9 didFind:v11 info:0 updateAvailable:v12 needsDownload:v13 error:v14];
}

void sub_10000175C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Asset download completed - error: %@", &v5, 0xCu);
  }

  if (v3)
  {
    [*(a1 + 32) notifySPFirmwareUpdateState:1 error:v3];
  }

  v4 = [*(a1 + 32) fudPluginDelegate];
  [v4 didDownload:v3 == 0 info:0 error:v3];
}

void sub_1000028FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Candidate beacons to update: %@", &v4, 0xCu);
  }

  [*(a1 + 32) setCandidateBeaconsToUpdate:v3];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100002B2C(id a1, BOOL a2)
{
  if (!a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100004488();
  }
}

BOOL sub_1000035FC(uint64_t a1, void *a2)
{
  v3 = [a2 attributes];
  v4 = [v3 objectForKey:@"FirmwareVersionMajor"];
  v5 = [v4 unsignedLongLongValue];
  v6 = [v3 objectForKey:@"FirmwareVersionMinor"];

  v7 = [v6 unsignedLongLongValue];
  v8 = [v3 objectForKey:@"FirmwareVersionRelease"];

  v9 = [v8 unsignedLongLongValue];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) currentMajorVersion];
    v11 = [*(a1 + 32) currentMajorVersion];
    v12 = [*(a1 + 32) currentMinorVersion];
    v13 = [*(a1 + 32) currentMinorVersion];
    v14 = [*(a1 + 32) currentReleaseVersion];
    v17 = 134219008;
    v18 = v10;
    v19 = 2048;
    v20 = v11;
    v21 = 2048;
    v22 = v12;
    v23 = 2048;
    v24 = v13;
    v25 = 2048;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Applying predicate: ((majorVersion > %llu) || ((majorVersion == %llu) && ((minorVersion > %llu) || ((minorVersion == %llu) && (releaseVersion > %llu)))))", &v17, 0x34u);
  }

  v15 = v5 > [*(a1 + 32) currentMajorVersion] || v5 == objc_msgSend(*(a1 + 32), "currentMajorVersion") && (v7 > objc_msgSend(*(a1 + 32), "currentMinorVersion") || v7 == objc_msgSend(*(a1 + 32), "currentMinorVersion") && v9 > objc_msgSend(*(a1 + 32), "currentReleaseVersion"));

  return v15;
}

void sub_1000043FC(uint64_t a1, uint64_t a2)
{
  v2 = 138412546;
  v3 = a1;
  v4 = 2112;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "#durian Firmware update to durian failed - error: %@ device: %@", &v2, 0x16u);
}

void sub_100004514()
{
  sub_1000043B8();
  sub_1000043CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100004598()
{
  sub_1000043B8();
  sub_1000043CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10000461C()
{
  sub_1000043B8();
  sub_1000043CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}