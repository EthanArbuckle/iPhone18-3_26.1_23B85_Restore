uint64_t sub_1E0BF2A04(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 networkOfInterestHomeState] == 1 || objc_msgSend(v4, "networkOfInterestHomeState") == 3;
  if ([v5 networkOfInterestHomeState] == 1 || (v7 = objc_msgSend(v5, "networkOfInterestHomeState"), v6 = v6 == (v7 == 3), v7 == 3))
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

uint64_t sub_1E0BF2AB4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 addReason];
  v7 = [v5 addReason];
  if (v6 == 10)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v4 isProfileBased];
  }

  if (v7 == 10)
  {
    v9 = v8 == 0;
    v10 = 1;
  }

  else
  {
    v11 = [v5 isProfileBased] & 1;
    v10 = -1;
    if (!v11)
    {
      v10 = 1;
    }

    v9 = v8 == v11;
  }

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  return v12;
}

uint64_t sub_1E0BF2B68(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 isPersonalHotspot];
  v7 = [v5 isPersonalHotspot];

  if (v6 == v7)
  {
    v8 = 0;
  }

  else if ([v4 isPersonalHotspot])
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

uint64_t sub_1E0BF2BE8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 isOpen];
  v7 = [v5 isOpen];

  if (v6 == v7)
  {
    v8 = 0;
  }

  else if ([v4 isOpen])
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

uint64_t sub_1E0BF2C68(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 is6GHz])
  {
    v6 = [v4 overlapsWithUWB] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if ([v5 is6GHz])
  {
    v7 = [v5 overlapsWithUWB] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  if (v6 == v7)
  {
    if ([v4 is5GHz])
    {
      v8 = [v4 isDFS] ^ 1;
    }

    else
    {
      v8 = 0;
    }

    if ([v5 is5GHz])
    {
      v10 = [v5 isDFS] ^ 1;
    }

    else
    {
      v10 = 0;
    }

    if (v8 == v10)
    {
      v11 = [v4 is6GHz];
      if (v11 == [v5 is6GHz])
      {
        v16 = [v4 is5GHz];
        if (v16 == [v5 is5GHz])
        {
          v15 = 0;
          goto LABEL_29;
        }

        v12 = [v5 is5GHz];
      }

      else
      {
        v12 = [v5 is6GHz];
      }

      v13 = v12 == 0;
      v14 = -1;
      goto LABEL_26;
    }

    if ([v5 is5GHz])
    {
      v9 = [v5 isDFS];
      goto LABEL_21;
    }

LABEL_22:
    v15 = 1;
    goto LABEL_29;
  }

  if (![v5 is6GHz])
  {
    goto LABEL_22;
  }

  v9 = [v5 overlapsWithUWB];
LABEL_21:
  v13 = v9 == 0;
  v14 = 1;
LABEL_26:
  if (v13)
  {
    v15 = -v14;
  }

  else
  {
    v15 = v14;
  }

LABEL_29:

  return v15;
}

uint64_t sub_1E0BF2DDC(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = [v4 RNRBSSList];
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 channel];
        v13 = [v12 is6GHz];

        if (v13)
        {
          v14 = [v11 shortSSID];
          if (v14)
          {
            if (v14 == [v4 shortSSID])
            {
              goto LABEL_14;
            }
          }

          else if ([v11 isSameSSID])
          {
LABEL_14:
            v15 = 1;
            goto LABEL_16;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
      v15 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = [v5 RNRBSSList];
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    while (2)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v28 + 1) + 8 * j);
        v22 = [v21 channel];
        v23 = [v22 is6GHz];

        if (v23)
        {
          v24 = [v21 shortSSID];
          if (v24)
          {
            if (v24 == [v5 shortSSID])
            {
              goto LABEL_30;
            }
          }

          else if ([v21 isSameSSID])
          {
LABEL_30:

            goto LABEL_31;
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  if (v15)
  {
LABEL_31:
    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t sub_1E0BF304C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 SSID];
  v8 = [*(a1 + 32) SSID];
  v9 = [v7 isEqualToData:v8];

  v10 = [v6 SSID];
  v11 = [*(a1 + 32) SSID];
  v12 = [v10 isEqualToData:v11];

  v13 = 0;
  if (((v9 | v12) & 1) != 0 && v9 != v12)
  {
    if (v9 && [v6 RSSI] < -67)
    {
      goto LABEL_7;
    }

    if (v12)
    {
      if ([v5 RSSI] <= -68)
      {
LABEL_7:
        if (v12)
        {
          v13 = -1;
        }

        else
        {
          v13 = 1;
        }

        goto LABEL_17;
      }

      v14 = -1;
    }

    else
    {
      v14 = 1;
    }

    v15 = [v5 RSSI];
    v16 = [v6 RSSI];
    v17 = [v5 RSSI];
    v18 = [v6 RSSI];
    v19 = v18 - v17;
    if (v15 >= v16)
    {
      v19 = v17 - v18;
    }

    if (v19 >= 17)
    {
      v13 = 0;
    }

    else
    {
      v13 = v14;
    }
  }

LABEL_17:

  return v13;
}

uint64_t sub_1E0BF31A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v5 numberWithBool:v6(a2)];
  v9 = MEMORY[0x1E696AD98];
  v10 = (*(a1 + 32))(v7);

  v11 = [v9 numberWithBool:v10];
  v12 = [v8 compare:v11];

  return v12;
}

uint64_t sub_1E0BF3254(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v5 numberWithInt:{objc_msgSend(v6, "compare:", a2) != *(a1 + 40)}];
  v9 = MEMORY[0x1E696AD98];
  v10 = [*(a1 + 32) compare:v7];

  v11 = [v9 numberWithInt:v10 != *(a1 + 40)];
  v12 = [v8 compare:v11];

  return v12;
}

void sub_1E0BF3464(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v6 = a3;
  v7 = CWFGetOSLog();
  if (v7)
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    _os_log_send_and_compose_impl();
  }

  if ([v6 isMonitoringEvents])
  {
    v10 = [v6 eventHandler];
    v11 = v10;
    if (v10)
    {
      (*(v10 + 16))(v10, v6, a2);
    }
  }

  objc_autoreleasePoolPop(v5);
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E0BF3678(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ((*(v3 + 32) & 1) == 0)
  {
    *(v3 + 32) = 1;
    SCNetworkReachabilitySetDispatchQueue(*(*(a1 + 32) + 24), *(*(a1 + 32) + 16));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0BF3748(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (*(v3 + 32) == 1)
  {
    *(v3 + 32) = 0;
    SCNetworkReachabilitySetDispatchQueue(*(*(a1 + 32) + 24), 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0BF3854(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 32);

  objc_autoreleasePoolPop(v2);
}

void sub_1E0BF3F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1E0BF3F68()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_1ECE81AB8;
  v6 = qword_1ECE81AB8;
  if (!qword_1ECE81AB8)
  {
    sub_1E0BFA6B8();
    v4[3] = objc_getClass("MAAutoAsset");
    qword_1ECE81AB8 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1E0BF4054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1E0BF406C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_1ECE81AB0;
  v6 = qword_1ECE81AB0;
  if (!qword_1ECE81AB0)
  {
    sub_1E0BFA6B8();
    v4[3] = objc_getClass("MAAutoAssetSet");
    qword_1ECE81AB0 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1E0BF4158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0BF43A0(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v19 = "[CWFAssetSetManager rootMonitorDetectedAdd:deleted:updated:]_block_invoke";
    v20 = 1024;
    v21 = 210;
    v22 = 2080;
    v23 = "[CWFAssetSetManager rootMonitorDetectedAdd:deleted:updated:]_block_invoke";
    _os_log_impl(&dword_1E0BBF000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Setting assetRootToProcess TRUE", buf, 0x1Cu);
  }

  [*(a1 + 32) setAssetRootToProcess:1];
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:*(a1 + 40)];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v3 containsObject:{v9, v13}] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [[CWFAssetCreatorFromRoot alloc] initWithPaths:v3];
  [*(a1 + 32) setAssetFromRoot:v10];

  +[CWFAssetSetManager endAllPreviousLocks];
  [*(a1 + 32) lockAndHandOffCanBlock:1 forcedFetch:1];
  [*(a1 + 32) setAssetRootToProcess:0];
  v11 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v19 = "[CWFAssetSetManager rootMonitorDetectedAdd:deleted:updated:]_block_invoke";
    v20 = 1024;
    v21 = 230;
    v22 = 2080;
    v23 = "[CWFAssetSetManager rootMonitorDetectedAdd:deleted:updated:]_block_invoke";
    _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Setting assetRootToProcess FALSE", buf, 0x1Cu);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0BF461C(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[CWFAssetSetManager rootMonitorDetectedAdd:deleted:updated:]_block_invoke";
    v7 = 1024;
    v8 = 234;
    v9 = 2080;
    v10 = "[CWFAssetSetManager rootMonitorDetectedAdd:deleted:updated:]_block_invoke";
    _os_log_impl(&dword_1E0BBF000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Root Removed, freeing rootAsset", &v5, 0x1Cu);
  }

  [*(a1 + 32) setAssetRootToProcess:0];
  result = [*(a1 + 32) setAssetFromRoot:0];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E0BF4FB0(id *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    if ([v2 code] == -536870201 || objc_msgSend(a1[4], "code") == -3903)
    {
      [a1[5] __stopPeriodicCheckA11];
      v3 = +[CWFAssetPowerTable isSupportedOTAPTDownloadOnly];
      v4 = CWFGetOTAOSLog();
      v5 = v4;
      if (v3)
      {
        if (v4)
        {
          v6 = CWFGetOTAOSLog();
        }

        else
        {
          v6 = MEMORY[0x1E69E9C10];
          v14 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v27 = a1[4];
          _os_log_send_and_compose_impl();
        }

        [a1[5] __startAssetTracking];
        goto LABEL_46;
      }

      if (v4)
      {
        v11 = CWFGetOTAOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_45:

        goto LABEL_46;
      }
    }

    else
    {
      v13 = CWFGetOTAOSLog();
      if (v13)
      {
        v11 = CWFGetOTAOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }
    }

    v28 = a1[4];
    _os_log_send_and_compose_impl();
    goto LABEL_45;
  }

  v7 = a1[6];
  if (!v7 || ![v7 count])
  {
    v12 = CWFGetOTAOSLog();
    if (v12)
    {
      v11 = CWFGetOTAOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = a1[6];
      v30 = [a1[5] apiMajorVersion];
      _os_log_send_and_compose_impl();
    }

    goto LABEL_45;
  }

  v8 = [a1[5] apiMajorVersion];

  if (!v8)
  {
    v11 = [a1[6] objectForKey:@"PTV_API_MAJOR_VERSION"];
    v19 = [v11 stringValue];
    v20 = v19;
    if (v19 && ([v19 isEqualToString:&stru_1F5B8FC80] & 1) == 0)
    {
      [a1[5] setApiMajorVersion:v20];
      v24 = [a1[5] assetPowerTable];
      [v24 setPowerTableAPIMajorVersion:v20];

      [a1[5] __stopPeriodicCheckA11];
      [a1[5] __startAssetTracking];
    }

    else
    {
      v21 = CWFGetOTAOSLog();
      if (v21)
      {
        v22 = CWFGetOTAOSLog();
      }

      else
      {
        v22 = MEMORY[0x1E69E9C10];
        v25 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v32 = a1[6];
        _os_log_send_and_compose_impl();
      }
    }

    goto LABEL_45;
  }

  v9 = CWFGetOTAOSLog();
  if (v9)
  {
    v10 = CWFGetOTAOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v29 = [a1[5] apiMajorVersion];
    v31 = a1[6];
    _os_log_send_and_compose_impl();
  }

  [a1[5] __stopPeriodicCheckA11];
LABEL_46:
  v26 = *MEMORY[0x1E69E9840];
}

void sub_1E0BF5934(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isMobileAssetDaemonReady];
  v3 = CWFGetOTAOSLog();
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      v5 = CWFGetOTAOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = "[CWFAssetSetManager __startAssetTracking]_block_invoke";
      _os_log_send_and_compose_impl();
    }

    v7 = +[CWFAssetPowerTable sharedObj];
    v8 = [v7 assetSpecifierToTrack];
    [*(a1 + 32) setAssetSpecifier:v8];

    v9 = [*(a1 + 32) assetSpecifier];

    if (v9)
    {
      v10 = +[CWFAssetPowerTableTelemetry sharedObj];
      v11 = [*(a1 + 32) assetSpecifier];
      [v10 setAssetSpecifier:v11];

      v12 = [*(a1 + 32) makeAutoAssetSetWithEntry:0];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_1E0BF5C48;
      v18[3] = &unk_1E86E6088;
      v18[4] = *(a1 + 32);
      v19 = v12;
      v13 = v12;
      [v13 needForAtomic:@"reason-started-monitoring" withNeedPolicy:0 completion:v18];

      goto LABEL_15;
    }

    v14 = CWFGetOTAOSLog();
    if (v14)
    {
      v13 = CWFGetOTAOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315138;
      v21 = "[CWFAssetSetManager __startAssetTracking]_block_invoke";
LABEL_14:
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    if (v3)
    {
      v13 = CWFGetOTAOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315138;
      v21 = "[CWFAssetSetManager __startAssetTracking]_block_invoke";
      goto LABEL_14;
    }
  }

LABEL_15:

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1E0BF5C48(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] == 13)
    {
      v8 = CWFGetOTAOSLog();
      if (v8)
      {
        v9 = CWFGetOTAOSLog();
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 136315138;
        v29 = "[CWFAssetSetManager __startAssetTracking]_block_invoke";
        _os_log_send_and_compose_impl();
      }

      [*(a1 + 32) scheduleReadinessRetry];
    }

    v22 = CWFGetOTAOSLog();
    if (v22)
    {
      v20 = CWFGetOTAOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315650;
      v29 = "[CWFAssetSetManager __startAssetTracking]_block_invoke";
      v30 = 2112;
      v31 = v5;
      v32 = 2112;
      v33 = v7;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_23;
  }

  [*(a1 + 32) setInterestExpressed:1];
  v10 = CWFGetOTAOSLog();
  if (v10)
  {
    v11 = CWFGetOTAOSLog();
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) assetSetIdentifier];
    v28 = 136315394;
    v29 = "[CWFAssetSetManager __startAssetTracking]_block_invoke";
    v30 = 2112;
    v31 = v13;
    LODWORD(v26) = 22;
    v25 = &v28;
    _os_log_send_and_compose_impl();
  }

  v14 = dispatch_time(0, 30000000000);
  v15 = [*(a1 + 32) eventQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0BF6044;
  block[3] = &unk_1E86E6010;
  block[4] = *(a1 + 32);
  dispatch_after(v14, v15, block);

  [*(a1 + 32) _registerForAssetDiscoveredNotification:&unk_1F5B89A10];
  [*(a1 + 32) _registerForAssetDownloadedNotification:&unk_1F5B89910];
  v16 = MGCopyAnswer();
  LODWORD(v15) = [v16 BOOLValue];

  if (v15)
  {
    [*(a1 + 32) forTestingEnablePeriodicCheck];
  }

  v17 = [*(a1 + 32) forTestingPeriodicCheckTimer];

  if (v17)
  {
    v18 = [*(a1 + 32) forTestingPeriodicCheckTimer];
    v19 = dispatch_walltime(0, 1000000000 * [*(a1 + 32) forTestingPeriodicityInSecs] + 30000000000);
    dispatch_source_set_timer(v18, v19, 1000000000 * [*(a1 + 32) forTestingPeriodicityInSecs], 0);

    v20 = [*(a1 + 32) forTestingPeriodicCheckTimer];
    dispatch_activate(v20);
LABEL_23:
  }

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0BF6044(uint64_t a1)
{
  +[CWFAssetSetManager endAllPreviousLocks];
  v2 = *(a1 + 32);

  return [v2 lockAndHandOffCanBlock:1 forcedFetch:0];
}

void sub_1E0BF608C()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = CWFGetOTAOSLog();
  if (v0)
  {
    v1 = CWFGetOTAOSLog();
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_1E0BF6174()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = CWFGetOTAOSLog();
  if (v0)
  {
    v1 = CWFGetOTAOSLog();
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v3 = *MEMORY[0x1E69E9840];
}

id sub_1E0BF67F0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_1ECE86930;
  v6 = qword_1ECE86930;
  if (!qword_1ECE86930)
  {
    sub_1E0BFA6B8();
    v4[3] = objc_getClass("MAAutoAssetSetNotifications");
    qword_1ECE86930 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1E0BF68DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0BF68F4(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = CWFGetOTAOSLog();
  if (v4)
  {
    v5 = CWFGetOTAOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[CWFAssetSetManager _registerForAssetDiscoveredNotification:]_block_invoke";
    LODWORD(v12) = 12;
    v11 = &v14;
    _os_log_send_and_compose_impl();
  }

  state64 = 0;
  if (notify_is_valid_token(a2))
  {
    notify_get_state(a2, &state64);
  }

  [*(a1 + 32) _handleAssetDiscoveredNotification];
  v7 = CWFGetOTAOSLog();
  if (v7)
  {
    v8 = CWFGetOTAOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[CWFAssetSetManager _registerForAssetDiscoveredNotification:]_block_invoke";
    _os_log_send_and_compose_impl();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E0BF6C90(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = CWFGetOTAOSLog();
  if (v4)
  {
    v5 = CWFGetOTAOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[CWFAssetSetManager _registerForAssetDownloadedNotification:]_block_invoke";
    LODWORD(v13) = 12;
    v12 = &v15;
    _os_log_send_and_compose_impl();
  }

  state64 = 0;
  if (notify_is_valid_token(a2))
  {
    notify_get_state(a2, &state64);
  }

  v7 = [CWFAssetPowerTableTelemetry sharedObj:v12];
  [v7 setAssetVersionDownloadNotifcation:*(a1 + 32) reason:state64];

  [*(a1 + 40) _handleAssetDownloadedNotification];
  v8 = CWFGetOTAOSLog();
  if (v8)
  {
    v9 = CWFGetOTAOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[CWFAssetSetManager _registerForAssetDownloadedNotification:]_block_invoke";
    _os_log_send_and_compose_impl();
  }

  v11 = *MEMORY[0x1E69E9840];
}

id sub_1E0BF730C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_1ECE86938;
  v6 = qword_1ECE86938;
  if (!qword_1ECE86938)
  {
    sub_1E0BFA6B8();
    v4[3] = objc_getClass("MAAutoAssetSetPolicy");
    qword_1ECE86938 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1E0BF73F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0BF8854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0BF9E30(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = CWFGetOTAOSLog();
  if (v6)
  {
    v7 = CWFGetOTAOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 localizedDescription];
    _os_log_send_and_compose_impl();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E0BFA23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1E0BFA4F0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!qword_1ED7E38B8)
  {
    qword_1ED7E38B8 = _sl_dlopen();
  }

  result = objc_getClass("SUCoreRestoreVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED7E38B0 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0BFA5F4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED7E38B8 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1E0BFA668(uint64_t a1)
{
  sub_1E0BFA6B8();
  result = objc_getClass("MAAutoAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE81AB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1E0BFA6B8()
{
  v1 = *MEMORY[0x1E69E9840];
  if (!qword_1ECE81AE0)
  {
    qword_1ECE81AE0 = _sl_dlopen();
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0BFA788(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ECE81AE0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1E0BFA7FC(uint64_t a1)
{
  sub_1E0BFA6B8();
  result = objc_getClass("MAAutoAssetSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE81AB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1E0BFA84C(uint64_t a1)
{
  sub_1E0BFA6B8();
  result = objc_getClass("MAAutoAssetSetNotifications");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86930 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1E0BFA89C(uint64_t a1)
{
  sub_1E0BFA6B8();
  result = objc_getClass("MAAutoAssetSetPolicy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86938 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1E0BFA8EC(uint64_t a1)
{
  sub_1E0BFA6B8();
  result = objc_getClass("MAAutoAssetSelector");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86940 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1E0BFA93C(uint64_t a1)
{
  sub_1E0BFA6B8();
  result = objc_getClass("MAAutoAssetPolicy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86948 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1E0BFA98C(uint64_t a1)
{
  sub_1E0BFA6B8();
  result = objc_getClass("MAAutoAssetSetEntry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86950 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_1E0BFC038()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_1ECE86958;
  v6 = qword_1ECE86958;
  if (!qword_1ECE86958)
  {
    sub_1E0BFE784();
    v4[3] = objc_getClass("SUCoreRestoreVersion");
    qword_1ECE86958 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1E0BFC124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1E0BFCECC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_1ECE86968;
  v6 = qword_1ECE86968;
  if (!qword_1ECE86968)
  {
    sub_1E0BFE784();
    v4[3] = objc_getClass("SUCoreDevice");
    qword_1ECE86968 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1E0BFCFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1E0BFE734(uint64_t a1)
{
  sub_1E0BFE784();
  result = objc_getClass("SUCoreRestoreVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86958 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1E0BFE784()
{
  v1 = *MEMORY[0x1E69E9840];
  if (!qword_1ECE86960)
  {
    qword_1ECE86960 = _sl_dlopen();
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0BFE854(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ECE86960 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1E0BFE8C8(uint64_t a1)
{
  sub_1E0BFE784();
  result = objc_getClass("SUCoreDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86968 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1E0BFE96C()
{
  qword_1ED7E38C0 = objc_alloc_init(CWFAssetPowerTableTelemetry);

  return MEMORY[0x1EEE66BB8]();
}

id sub_1E0BFF2C8(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  [v2 setObject:*(*(a1 + 32) + 24) forKeyedSubscript:@"assetSpecifier"];
  [v2 setObject:*(*(a1 + 32) + 56) forKeyedSubscript:@"assetType"];
  [v2 setObject:*(*(a1 + 32) + 64) forKeyedSubscript:@"assetVersion"];
  [v2 setObject:*(*(a1 + 32) + 40) forKeyedSubscript:@"deviceSKU"];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 32)];
  [v2 setObject:v3 forKeyedSubscript:@"isSupportedChipset"];

  [v2 setObject:*(*(a1 + 32) + 48) forKeyedSubscript:@"notificationString"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 72)];
  [v2 setObject:v4 forKeyedSubscript:@"assetAvailable"];

  [v2 setObject:*(*(a1 + 32) + 80) forKeyedSubscript:@"assetBuild"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 104)];
  [v2 setObject:v5 forKeyedSubscript:@"assetVersionSanity"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 105)];
  [v2 setObject:v6 forKeyedSubscript:@"osVersionSanity"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 106)];
  [v2 setObject:v7 forKeyedSubscript:@"osRestoreVersionSanity"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 107)];
  [v2 setObject:v8 forKeyedSubscript:@"skuSanity"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 108)];
  [v2 setObject:v9 forKeyedSubscript:@"assetBuildSanity"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 109)];
  [v2 setObject:v10 forKeyedSubscript:@"transferSuccess"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 110)];
  [v2 setObject:v11 forKeyedSubscript:@"transferAssetAlreadyHere"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 111)];
  [v2 setObject:v12 forKeyedSubscript:@"transferPreviousAssetCleaned"];

  if (*(a1 + 40))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    [v2 setObject:v13 forKeyedSubscript:@"latencyPTBuildToCatalogPosted"];
  }

  if (*(a1 + 48))
  {
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    [v2 setObject:v14 forKeyedSubscript:@"latencyCatalogPostedToChecked"];
  }

  if (*(a1 + 56))
  {
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    [v2 setObject:v15 forKeyedSubscript:@"latencyCatalogCheckedToPTAvailable"];
  }

  if (*(a1 + 64) == 1)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 65)];
    [v2 setObject:v16 forKeyedSubscript:@"assetAvailableAfterCWFInit"];
  }

  v17 = *(a1 + 32);
  if (v17[16])
  {
    [v2 setObject:v17[15] forKeyedSubscript:@"assetVersionInfoVersion"];
    [v2 setObject:*(*(a1 + 32) + 136) forKeyedSubscript:@"assetVersionInfoDate"];
    v17 = *(a1 + 32);
  }

  v18 = v17[18];
  if (v18 && [v18 code])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(a1 + 32) + 144), "code")}];
    [v2 setObject:v19 forKeyedSubscript:@"error"];
  }

  v20 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136446722;
    v24 = "[CWFAssetPowerTableTelemetry sendTelemetryAndClear]_block_invoke";
    v25 = 1024;
    v26 = 269;
    v27 = 2112;
    v28 = v2;
    _os_log_impl(&dword_1E0BBF000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Sent telemetry metricDict: %@", &v23, 0x1Cu);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v2;
}

void sub_1E0C009F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0C00A3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained stopAccounting];
    WeakRetained = v2;
  }
}

void sub_1E0C00A80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained issueFullBandScan];
    WeakRetained = v2;
  }
}

void sub_1E0C00C48(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = [v3 _lastSubmissionTimePreAJ];
  LOBYTE(v3) = [v3 canSubmitToCA:v4];

  if ((v3 & 1) == 0)
  {
    v24 = CWFGetOSLog();
    if (v24)
    {
      v25 = CWFGetOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v31 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    v39 = 136446722;
    v40 = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingDelayedAJ:withMaxRSSI:forNetwork:]_block_invoke";
    v41 = 2082;
    v42 = "CWFJITTDImpactEstimator.m";
    v43 = 1024;
    v44 = 197;
    goto LABEL_54;
  }

  if ([*(a1 + 32) _activity] == 2)
  {
    v26 = CWFGetOSLog();
    if (v26)
    {
      v25 = CWFGetOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    v39 = 136446722;
    v40 = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingDelayedAJ:withMaxRSSI:forNetwork:]_block_invoke";
    v41 = 2082;
    v42 = "CWFJITTDImpactEstimator.m";
    v43 = 1024;
    v44 = 201;
    goto LABEL_54;
  }

  if ([*(a1 + 32) _activity] == 1)
  {
    v5 = CWFGetOSLog();
    if (v5)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 136446722;
      v40 = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingDelayedAJ:withMaxRSSI:forNetwork:]_block_invoke";
      v41 = 2082;
      v42 = "CWFJITTDImpactEstimator.m";
      v43 = 1024;
      v44 = 205;
      LODWORD(v38) = 28;
      v37 = &v39;
      _os_log_send_and_compose_impl();
    }

    [*(a1 + 32) gatherCellularDataUsageSoFar:0];
    [*(a1 + 32) __stopCellularDataUsageAccountingPostTD];
  }

  v8 = [*(a1 + 32) gatherCellularDataStats];

  if (!v8)
  {
    v27 = CWFGetOSLog();
    if (v27)
    {
      v25 = CWFGetOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    v39 = 136446722;
    v40 = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingDelayedAJ:withMaxRSSI:forNetwork:]_block_invoke";
    v41 = 2082;
    v42 = "CWFJITTDImpactEstimator.m";
    v43 = 1024;
    v44 = 211;
    goto LABEL_54;
  }

  if (!*(a1 + 40))
  {
    v28 = CWFGetOSLog();
    if (v28)
    {
      v25 = CWFGetOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v34 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    v39 = 136446722;
    v40 = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingDelayedAJ:withMaxRSSI:forNetwork:]_block_invoke";
    v41 = 2082;
    v42 = "CWFJITTDImpactEstimator.m";
    v43 = 1024;
    v44 = 215;
    goto LABEL_54;
  }

  if (*(a1 + 48) >= 180)
  {
    v9 = 180;
  }

  else
  {
    v9 = *(a1 + 48);
  }

  [*(a1 + 32) set_boundaryTime:v9];
  v10 = [*(a1 + 32) _boundaryTimer];
  dispatch_activate(v10);

  v11 = [*(a1 + 32) _boundaryTimer];
  v12 = dispatch_walltime(0, 1000000000 * [*(a1 + 32) _boundaryTime]);
  dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);

  v13 = [*(a1 + 32) gatherCellularDataStats];
  v14 = (v13)[2](v13, v2);

  if ((v14 & 1) == 0)
  {
    v29 = CWFGetOSLog();
    if (v29)
    {
      v25 = CWFGetOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v35 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    v39 = 136446722;
    v40 = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingDelayedAJ:withMaxRSSI:forNetwork:]_block_invoke";
    v41 = 2082;
    v42 = "CWFJITTDImpactEstimator.m";
    v43 = 1024;
    v44 = 229;
    goto LABEL_54;
  }

  if (([*(a1 + 32) checkCellularDataSanity:v2] & 1) == 0)
  {
    v30 = CWFGetOSLog();
    if (v30)
    {
      v25 = CWFGetOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    v39 = 136446722;
    v40 = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingDelayedAJ:withMaxRSSI:forNetwork:]_block_invoke";
    v41 = 2082;
    v42 = "CWFJITTDImpactEstimator.m";
    v43 = 1024;
    v44 = 233;
LABEL_54:
    _os_log_send_and_compose_impl();
LABEL_55:

    goto LABEL_23;
  }

  [*(a1 + 32) storeCellularDataUsage:v2];
  v15 = CWFGetOSLog();
  if (v15)
  {
    v16 = CWFGetOSLog();
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 32) _boundaryTime];
    v19 = [*(a1 + 32) _totalCellularInBytes];
    v20 = [*(a1 + 32) _totalCellularOutBytes];
    v21 = [*(a1 + 32) _totalCellularInPackets];
    v22 = [*(a1 + 32) _totalCellularOutPackets];
    v40 = "[CWFJITTDImpactEstimator startCellularDataUsageAccountingDelayedAJ:withMaxRSSI:forNetwork:]_block_invoke";
    v41 = 2082;
    v39 = 136448002;
    v42 = "CWFJITTDImpactEstimator.m";
    v43 = 1024;
    v44 = 238;
    v45 = 2048;
    v46 = v18;
    v47 = 2112;
    v48 = v19;
    v49 = 2112;
    v50 = v20;
    v51 = 2112;
    v52 = v21;
    v53 = 2112;
    v54 = v22;
    _os_log_send_and_compose_impl();
  }

  [*(a1 + 32) set_activity:2];
  [*(a1 + 32) set_rssi:*(a1 + 56)];
  [*(a1 + 32) set_tdNetwork:*(a1 + 40)];
LABEL_23:

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1E0C01490(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [*(a1 + 32) gatherCellularDataStats];

  if (v3)
  {
    [*(a1 + 32) cancelBoundaryTimer];
    if ([*(a1 + 32) _activity] == 2)
    {
      v4 = [*(a1 + 32) gatherCellularDataStats];
      v5 = (v4)[2](v4, v2);

      if (v5)
      {
        if ([*(a1 + 32) checkCellularDataSanity:v2])
        {
          v6 = [*(a1 + 32) computeDataUsageInCurrentSession:v2];
          [*(a1 + 32) postCellularDataUsageAccountingPreAJ:v6];
          goto LABEL_6;
        }

        v11 = CWFGetOSLog();
        if (v11)
        {
          v6 = CWFGetOSLog();
        }

        else
        {
          v6 = MEMORY[0x1E69E9C10];
          v15 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
LABEL_26:
          _os_log_send_and_compose_impl();
        }
      }

      else
      {
        v10 = CWFGetOSLog();
        if (v10)
        {
          v6 = CWFGetOSLog();
        }

        else
        {
          v6 = MEMORY[0x1E69E9C10];
          v14 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v9 = CWFGetOSLog();
      if (v9)
      {
        v6 = CWFGetOSLog();
      }

      else
      {
        v6 = MEMORY[0x1E69E9C10];
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    v8 = CWFGetOSLog();
    if (v8)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }
  }

LABEL_6:

  [*(a1 + 32) resetStores];
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E0C018BC(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([*(a1 + 32) _legacyAccountingComplete])
  {
    v8 = CWFGetOSLog();
    if (v8)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

LABEL_32:
    _os_log_send_and_compose_impl();
LABEL_33:

    goto LABEL_7;
  }

  v3 = [*(a1 + 32) gatherCellularDataStats];

  if (!v3)
  {
    v10 = CWFGetOSLog();
    if (v10)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if ([*(a1 + 32) _activity] != 2)
  {
    v11 = CWFGetOSLog();
    if (v11)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v4 = [*(a1 + 32) gatherCellularDataStats];
  v5 = (v4)[2](v4, v2);

  if ((v5 & 1) == 0)
  {
    v12 = CWFGetOSLog();
    if (v12)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (([*(a1 + 32) checkCellularDataSanity:v2] & 1) == 0)
  {
    v13 = CWFGetOSLog();
    if (v13)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v6 = [*(a1 + 32) computeDataUsageInCurrentSession:v2];
  [*(a1 + 32) set_cellularDataUsageInLegacyBoundary:v6];

  [*(a1 + 32) set_legacyAccountingComplete:1];
LABEL_7:

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E0C01DC8(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = [v3 _lastSubmissionTimePostTD];
  LOBYTE(v3) = [v3 canSubmitToCA:v4];

  if ((v3 & 1) == 0)
  {
    v20 = CWFGetOSLog();
    if (v20)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

LABEL_43:
    _os_log_send_and_compose_impl();
LABEL_44:

    goto LABEL_13;
  }

  v5 = [*(a1 + 32) gatherCellularDataStats];

  if (!v5)
  {
    v22 = CWFGetOSLog();
    if (v22)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v6 = [*(a1 + 32) scanForNetworkHandler];

  if (!v6)
  {
    v23 = CWFGetOSLog();
    if (v23)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (!*(a1 + 40))
  {
    v24 = CWFGetOSLog();
    if (v24)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v30 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v7 = [*(a1 + 32) gatherCellularDataStats];
  v8 = (v7)[2](v7, v2);

  if ((v8 & 1) == 0)
  {
    v25 = CWFGetOSLog();
    if (v25)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v31 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (([*(a1 + 32) checkCellularDataSanity:v2] & 1) == 0)
  {
    v26 = CWFGetOSLog();
    if (v26)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  [*(a1 + 32) storeCellularDataUsage:v2];
  [*(a1 + 32) set_boundaryTime:180];
  v9 = [*(a1 + 32) _boundaryTimer];
  dispatch_activate(v9);

  v10 = [*(a1 + 32) _boundaryTimer];
  v11 = dispatch_walltime(0, 1000000000 * [*(a1 + 32) _boundaryTime]);
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);

  [*(a1 + 32) setupPeriodicTimerForScan];
  v12 = CWFGetOSLog();
  if (v12)
  {
    v13 = CWFGetOSLog();
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 48);
    [*(a1 + 32) _boundaryTime];
    v16 = [*(a1 + 32) _totalCellularInBytes];
    v17 = [*(a1 + 32) _totalCellularOutBytes];
    v18 = [*(a1 + 32) _totalCellularInPackets];
    v33 = [*(a1 + 32) _totalCellularOutPackets];
    _os_log_send_and_compose_impl();
  }

  [*(a1 + 32) set_activity:1];
  [*(a1 + 32) set_rssi:*(a1 + 48)];
  [*(a1 + 32) set_tdNetwork:*(a1 + 40)];
  [*(a1 + 32) gatherCellularDataUsageSoFar:v2];
LABEL_13:

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E0C03714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C0404C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CWFLog(os_log_type_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, a1))
  {
    _os_log_send_and_compose_impl();
  }

  v7 = *MEMORY[0x1E69E9840];
}

id CWFBootArgs()
{
  mainPort = 0;
  if (!MEMORY[0x1E12E9640](*MEMORY[0x1E69E99F8], &mainPort))
  {
    v0 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
    if (v0)
    {
      v1 = v0;
      CFProperty = IORegistryEntryCreateCFProperty(v0, @"boot-args", *MEMORY[0x1E695E480], 0);
      if (CFProperty)
      {
        v3 = CFProperty;
        v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v5 = [v3 componentsSeparatedByCharactersInSet:v4];

        IOObjectRelease(v1);
        CFRelease(v3);
        goto LABEL_5;
      }

      IOObjectRelease(v1);
    }
  }

  v5 = 0;
LABEL_5:

  return v5;
}

id CWFGetBootTime()
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5 = 0;
  *v6 = 0x1500000001;
  v3 = 16;
  if (sysctl(v6, 2u, &v4, &v3, 0, 0) == -1)
  {
    v0 = 0;
  }

  else
  {
    v0 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v5 / 1000000.0 + v4];
  }

  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

id CWFMachineSerialNumber()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IOPlatformSerialNumber", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      v6 = [MEMORY[0x1E696AEC0] stringWithString:CFProperty];
      CFRelease(v5);
    }

    else
    {
      v6 = 0;
    }

    IOObjectRelease(v3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id CWFDataFromHumanReadableString(void *a1, uint64_t *a2)
{
  v3 = a1;
  if ([v3 length])
  {
    v4 = 0;
    v5 = 1;
    while (1)
    {
      v6 = v5;
      v7 = qword_1E0D818A0[v4];
      v8 = [v3 dataUsingEncoding:v7];
      if (v8)
      {
        break;
      }

      v5 = 0;
      v4 = 1;
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v9 = v8;
    if (a2)
    {
      *a2 = v7;
    }
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

  return v9;
}

id CWFDataFromHexadecimalString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v3 = [v1 componentsSeparatedByCharactersInSet:v2];
    v4 = [v3 componentsJoinedByString:&stru_1F5B8FC80];

    v5 = [MEMORY[0x1E695DF88] data];
    if ([v4 length] >= 2)
    {
      v6 = 2;
      do
      {
        v7 = [v4 substringWithRange:{v6 - 2, 2}];
        v8 = [MEMORY[0x1E696AE88] scannerWithString:v7];
        v11 = 0;
        if ([v8 scanHexInt:&v11])
        {
          [v5 appendBytes:&v11 length:1];
        }

        v6 += 2;
      }

      while (v6 <= [v4 length]);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [v5 copy];

  return v9;
}

id CWFDebugDescriptionForLQMSummary(char *a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = [MEMORY[0x1E696AD98] numberWithInt:*a1];
    [v2 setObject:v3 forKeyedSubscript:@"CCA"];

    v4 = [MEMORY[0x1E696AD98] numberWithInt:a1[1]];
    [v2 setObject:v4 forKeyedSubscript:@"RSSI"];

    v5 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1)];
    [v2 setObject:v5 forKeyedSubscript:@"SNR"];

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 1)];
    [v2 setObject:v6 forKeyedSubscript:@"DataStallScore"];

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 2)];
    [v2 setObject:v7 forKeyedSubscript:@"NetScore"];

    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 2)];
    [v2 setObject:v8 forKeyedSubscript:@"TxRetries"];

    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 3)];
    [v2 setObject:v9 forKeyedSubscript:@"TxFails"];

    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 4)];
    [v2 setObject:v10 forKeyedSubscript:@"TxFrames"];

    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 5)];
    [v2 setObject:v11 forKeyedSubscript:@"RxFCSErrors"];

    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 6)];
    [v2 setObject:v12 forKeyedSubscript:@"RxPLCPErrors"];

    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 7)];
    [v2 setObject:v13 forKeyedSubscript:@"RxCRSGlitches"];

    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 8)];
    [v2 setObject:v14 forKeyedSubscript:@"RxDupErrors"];

    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 9)];
    [v2 setObject:v15 forKeyedSubscript:@"RxAmpduDupErrors"];

    v16 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 10)];
    [v2 setObject:v16 forKeyedSubscript:@"RxUcastReplayErrors"];

    v17 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 11)];
    [v2 setObject:v17 forKeyedSubscript:@"RxUcastDecryptErrors"];

    v18 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 12)];
    [v2 setObject:v18 forKeyedSubscript:@"RxMcastReplayErrors"];

    v19 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 13)];
    [v2 setObject:v19 forKeyedSubscript:@"RxMcastDecryptErrors"];

    v20 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 14)];
    [v2 setObject:v20 forKeyedSubscript:@"RxRetries"];

    v21 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 15)];
    [v2 setObject:v21 forKeyedSubscript:@"RxGoodPLCPS"];

    v22 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 16)];
    [v2 setObject:v22 forKeyedSubscript:@"RxUcastFrames"];

    v23 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 17)];
    [v2 setObject:v23 forKeyedSubscript:@"RxMcastFrames"];

    v24 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 18)];
    [v2 setObject:v24 forKeyedSubscript:@"RxTotalFrames"];

    v25 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 19)];
    [v2 setObject:v25 forKeyedSubscript:@"RxRTSUCast"];
  }

  else
  {
    v2 = 0;
  }

  v26 = [v2 copy];

  return v26;
}

id CWFEthernetAddressDataFromString(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = [v1 UTF8String]) != 0 && (v9 = 0, v8 = 0, sscanf(v3, "%x:%x:%x:%x:%x:%x", v10, &v10[1], &v10[2], &v10[3], &v10[4], &v10[5]) == 6))
  {
    for (i = 0; i != 6; ++i)
    {
      *(&v8 + i) = v10[i];
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v8 length:6];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t CWFWeakestSecurityType(__int16 a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x200) != 0)
  {
    return 512;
  }

  if ((a1 & 0x100) != 0)
  {
    return 256;
  }

  if ((a1 & 1) != 0 && a3 != 5)
  {
    return 1;
  }

  if ((a1 & 2) != 0 && a2 != 2)
  {
    return 2;
  }

  if ((a1 & 4) != 0)
  {
    return 4;
  }

  if ((a1 & 0x10) != 0)
  {
    return 16;
  }

  v3 = 64;
  if ((a1 & 0x40) == 0)
  {
    v3 = 1;
  }

  if ((a1 & 0x41) == 0)
  {
    v3 = 2;
  }

  if ((a1 & 0x43) == 0)
  {
    if ((a1 & 8) != 0)
    {
      return 8;
    }

    else
    {
      v3 = a1 & 0x80;
      if ((a1 & 0x20) != 0)
      {
        return 32;
      }
    }
  }

  return v3;
}

uint64_t CWFCompareSecurityType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    if (a1 == 128 || a4 == 128)
    {
      v6 = a1 == 128;
      goto LABEL_35;
    }

    if (a1 == 32 || a4 == 32)
    {
      v6 = a1 == 32;
      goto LABEL_35;
    }

    if (a1 == 8 || a4 == 8)
    {
      v6 = a1 == 8;
      goto LABEL_35;
    }

    if (a1 == 2 && a3 == 2)
    {
      return 1;
    }

    if (a4 != 2 || a6 != 2)
    {
      if (a1 == 1 && a2 == 5)
      {
        return 1;
      }

      if (a4 != 1 || a5 != 5)
      {
        if (a1 == 64 || a4 == 64)
        {
          v6 = a1 == 64;
        }

        else if (a1 == 16 || a4 == 16)
        {
          v6 = a1 == 16;
        }

        else if (a1 == 4 || a4 == 4)
        {
          v6 = a1 == 4;
        }

        else
        {
          if (a1 != 2 && a4 != 2)
          {
            if (a1 == 1 || a4 == 1)
            {
              if (a1 == 1)
              {
                return 1;
              }

              else
              {
                return -1;
              }
            }

            if (a4 == 256)
            {
              v7 = -1;
            }

            else
            {
              v7 = 0;
            }

            v8 = a1 == 256;
            goto LABEL_27;
          }

          v6 = a1 == 2;
        }

LABEL_35:
        v7 = 1;
        if (!v6)
        {
          return -1;
        }

        return v7;
      }
    }

    return -1;
  }

  if (a1 == 2 && ((a6 - 1) | (a3 - 1)) <= 1)
  {
    v6 = a3 == 2;
    goto LABEL_35;
  }

  v7 = 0;
  if (a1 != 1 || (a2 - 1) > 4 || (a5 - 1) > 4)
  {
    return v7;
  }

  if (a2 == 2 || a5 == 2)
  {
    v6 = a2 == 2;
    goto LABEL_35;
  }

  if (a2 == 4 || a5 == 4)
  {
    v6 = a2 == 4;
    goto LABEL_35;
  }

  if (a2 == 1 || a5 == 1)
  {
    if (a2 == 1)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  if (a5 == 3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  v8 = a2 == 3;
LABEL_27:
  if (v8)
  {
    return 1;
  }

  return v7;
}

uint64_t CWFFastestPHYMode(__int16 a1)
{
  v1 = a1 & 4;
  if ((a1 & 8) != 0)
  {
    v1 = 8;
  }

  if ((a1 & 2) != 0)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1;
  }

  if ((a1 & 0x10) != 0)
  {
    v3 = 16;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 & 0x80) != 0)
  {
    v4 = 128;
  }

  else
  {
    v4 = v3;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 256;
  }

  else
  {
    v5 = v4;
  }

  if ((a1 & 0x200) != 0)
  {
    return 512;
  }

  else
  {
    return v5;
  }
}

uint64_t CWFSlowestPHYMode(__int16 a1)
{
  v1 = a1 & 0x200;
  if ((a1 & 0x100) != 0)
  {
    v1 = 256;
  }

  if ((a1 & 0x80) != 0)
  {
    v2 = 128;
  }

  else
  {
    v2 = v1;
  }

  if ((a1 & 0x10) != 0)
  {
    v3 = 16;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 & 2) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if ((a1 & 8) != 0)
  {
    v5 = 8;
  }

  else
  {
    v5 = v4;
  }

  if ((a1 & 4) != 0)
  {
    return 4;
  }

  else
  {
    return v5;
  }
}

uint64_t CWFComparePHYMode(int a1, int a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  if (a1 == 512 || a2 == 512)
  {
    v4 = a1 == 512;
    goto LABEL_27;
  }

  if (a1 == 256 || a2 == 256)
  {
    v4 = a1 == 256;
    goto LABEL_27;
  }

  if (a1 == 128 || a2 == 128)
  {
    v4 = a1 == 128;
    goto LABEL_27;
  }

  if (a1 == 16 || a2 == 16)
  {
    v4 = a1 == 16;
    goto LABEL_27;
  }

  if (a1 == 2 || a2 == 2)
  {
    v4 = a1 == 2;
    goto LABEL_27;
  }

  if (a1 == 8 || a2 == 8)
  {
    v4 = a1 == 8;
LABEL_27:
    if (v4)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  if (a2 == 4)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  if (a1 == 4)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t CWFScanResultHas6GHzOnlyBSS(void *a1, void *a2, void *a3)
{
  v117 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v75 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  v76 = v5;
  if (v5 && v6)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v80 = [MEMORY[0x1E695DF70] array];
    if (v75)
    {
      v10 = [v75 mutableCopy];
    }

    else
    {
      v10 = [MEMORY[0x1E695DF70] array];
    }

    v11 = v10;
    [v10 addObject:v5];
    v12 = 0x1E86E4000uLL;
    v13 = [CWFScanResult alloc];
    v14 = (v7)[2](v7, v5);
    v15 = [(CWFScanResult *)v13 initWithScanRecord:v14 includeProperties:0];

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    obj = v11;
    v82 = v15;
    v83 = v7;
    v87 = [obj countByEnumeratingWithState:&v107 objects:v116 count:16];
    if (v87)
    {
      v84 = *v108;
      do
      {
        v16 = 0;
        do
        {
          if (*v108 != v84)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v107 + 1) + 8 * v16);
          v18 = objc_autoreleasePoolPush();
          v19 = v7[2](v7, v17);
          v20 = [objc_alloc(*(v12 + 3688)) initWithScanRecord:v19 includeProperties:0];
          v21 = [v20 channel];
          context = v18;
          v93 = v16;
          v89 = v19;
          if ([v21 is6GHz])
          {
          }

          else
          {
            v22 = [v20 RNRBSSList];
            v23 = [v22 count];

            if (v23)
            {
              [v80 addObject:v20];
            }
          }

          v24 = [v20 channel];
          v25 = [v24 is6GHz];

          if (v25)
          {
            v26 = [(CWFScanResult *)v15 SSID];
            if (v26)
            {
              v27 = v26;
              v28 = [v20 SSID];
              if (!v28)
              {

                goto LABEL_32;
              }

              v29 = v28;
              v30 = [(CWFScanResult *)v15 SSID];
              v31 = [v20 SSID];
              v32 = [v30 isEqual:v31];

              if (v32)
              {
                v33 = [(CWFScanResult *)v15 supportedSecurityTypes];
                if (([v20 supportedSecurityTypes] & v33) != 0)
                {
                  v34 = [v20 age];
                  if (v34 > -[CWFScanResult age](v15, "age") || (v35 = -[CWFScanResult age](v15, "age"), (v35 - [v20 age]) <= 0x7530))
                  {
                    if (![v9 count])
                    {
                      goto LABEL_30;
                    }

                    v36 = 0;
                    while (1)
                    {
                      v37 = objc_autoreleasePoolPush();
                      v38 = [v9 objectAtIndexedSubscript:v36];
                      v39 = [v20 BSSID];
                      if (v39)
                      {
                        v40 = v39;
                        v41 = [v38 BSSID];
                        if (v41)
                        {
                          v42 = v41;
                          v43 = [v20 BSSID];
                          v44 = [v38 BSSID];
                          v45 = [v43 isEqual:v44];

                          if (v45)
                          {
                            v46 = [v20 hasNon6GHzRNRChannel];
                            if (!v46 || [v38 hasNon6GHzRNRChannel])
                            {

                              objc_autoreleasePoolPop(v37);
LABEL_31:
                              v15 = v82;
                              v7 = v83;
                              v12 = 0x1E86E4000;
                              break;
                            }

                            [v9 removeObjectAtIndex:v36];

                            objc_autoreleasePoolPop(v37);
LABEL_30:
                            [v9 addObject:v20];
                            goto LABEL_31;
                          }
                        }

                        else
                        {
                        }
                      }

                      objc_autoreleasePoolPop(v37);
                      if (++v36 >= [v9 count])
                      {
                        goto LABEL_30;
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_32:

          objc_autoreleasePoolPop(context);
          v16 = v93 + 1;
        }

        while ((v93 + 1) != v87);
        v47 = [obj countByEnumeratingWithState:&v107 objects:v116 count:16];
        v87 = v47;
      }

      while (v47);
    }

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v88 = v9;
    v48 = [v88 countByEnumeratingWithState:&v103 objects:v115 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v104;
      v77 = *v104;
      while (2)
      {
        v51 = 0;
        v78 = v49;
        do
        {
          if (*v104 != v50)
          {
            objc_enumerationMutation(v88);
          }

          v52 = *(*(&v103 + 1) + 8 * v51);
          if (([v52 hasNon6GHzRNRChannel] & 1) == 0 && objc_msgSend(v52, "RSSI") >= -80)
          {
            v101 = 0u;
            v102 = 0u;
            v99 = 0u;
            v100 = 0u;
            contexta = v80;
            v85 = [contexta countByEnumeratingWithState:&v99 objects:v114 count:16];
            if (v85)
            {
              v53 = *v100;
              v86 = v51;
              v79 = *v100;
              do
              {
                v54 = 0;
                do
                {
                  if (*v100 != v53)
                  {
                    objc_enumerationMutation(contexta);
                  }

                  v90 = v54;
                  v55 = *(*(&v99 + 1) + 8 * v54);
                  v95 = 0u;
                  v96 = 0u;
                  v97 = 0u;
                  v98 = 0u;
                  v94 = v55;
                  v56 = [v55 RNRBSSList];
                  v57 = [v56 countByEnumeratingWithState:&v95 objects:v113 count:16];
                  if (v57)
                  {
                    v58 = v57;
                    v59 = *v96;
                    do
                    {
                      for (i = 0; i != v58; ++i)
                      {
                        if (*v96 != v59)
                        {
                          objc_enumerationMutation(v56);
                        }

                        v61 = *(*(&v95 + 1) + 8 * i);
                        v62 = [v61 shortSSID];
                        if (!v62)
                        {
                          if ([v61 isSameSSID])
                          {
                            v62 = [v94 shortSSID];
                          }

                          else
                          {
                            v62 = 0;
                          }
                        }

                        if (v62 == [v52 shortSSID])
                        {
                          v63 = [v61 BSSID];
                          if (v63)
                          {
                            v64 = v63;
                            v65 = [v52 BSSID];
                            if (v65)
                            {
                              v66 = v65;
                              v67 = [v61 BSSID];
                              v68 = [v52 BSSID];
                              v69 = [v67 isEqual:v68];

                              if (v69)
                              {

                                v15 = v82;
                                v7 = v83;
                                v50 = v77;
                                v49 = v78;
                                v51 = v86;
                                goto LABEL_72;
                              }
                            }

                            else
                            {
                            }
                          }
                        }
                      }

                      v58 = [v56 countByEnumeratingWithState:&v95 objects:v113 count:16];
                    }

                    while (v58);
                  }

                  v54 = v90 + 1;
                  v7 = v83;
                  v15 = v82;
                  v53 = v79;
                }

                while (v90 + 1 != v85);
                v85 = [contexta countByEnumeratingWithState:&v99 objects:v114 count:16];
              }

              while (v85);
            }

            v70 = CWFGetOSLog();
            if (v70)
            {
              v71 = CWFGetOSLog();
            }

            else
            {
              v71 = MEMORY[0x1E69E9C10];
              v72 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              v111 = 138543362;
              v112 = v52;
              _os_log_send_and_compose_impl();
            }

            v8 = 1;
            goto LABEL_81;
          }

LABEL_72:
          ++v51;
        }

        while (v51 != v49);
        v49 = [v88 countByEnumeratingWithState:&v103 objects:v115 count:16];
        if (v49)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_81:
  }

  v73 = *MEMORY[0x1E69E9840];
  return v8;
}

id CWFFilteredANQPResults(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v25 = [v4 maximumAge];
  v5 = [v4 minimumTimestamp];
  if (v3)
  {
    v6 = v5;
    v7 = [MEMORY[0x1E695DF70] array];
    if ([v3 count])
    {
      v24 = v4;
      v8 = 0;
      if (v25)
      {
        v9 = v6 == 0;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      do
      {
        v11 = objc_autoreleasePoolPush();
        v12 = [v3 objectAtIndexedSubscript:v8];
        v13 = [v12 ANQPResponse];
        v14 = [v13 objectForKeyedSubscript:@"TIMESTAMP"];
        v15 = [v14 unsignedLongLongValue];

        if (v10)
        {
          v16 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) - v15 > v25;
        }

        else
        {
          v16 = 0;
        }

        v17 = v15 >= v6 || v6 == 0;
        if (!v17 || v16)
        {
          v18 = [v12 scanRecord];
          v19 = [v18 mutableCopy];

          [v19 setObject:0 forKeyedSubscript:@"ANQP_PARSED"];
          v20 = [CWFScanResult alloc];
          v21 = [v12 matchingKnownNetworkProfile];
          v22 = [(CWFScanResult *)v20 initWithScanRecord:v19 knownNetworkProfile:v21 includeProperties:0];

          v12 = v22;
        }

        [v7 addObject:{v12, v24}];

        objc_autoreleasePoolPop(v11);
        ++v8;
      }

      while (v8 < [v3 count]);
      v4 = v24;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

CWFScanResult *sub_1E0C08314(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = [(CWFScanResult *)v5 channel];
  v7 = [v6 is6GHz];

  if (!v7)
  {
    goto LABEL_26;
  }

  v8 = [v4 channel];
  if (![v8 is6GHz])
  {

    goto LABEL_26;
  }

  v9 = [v4 hasNon6GHzRNRChannel];

  if (!v9)
  {
LABEL_26:
    v23 = 0;
    v14 = 0;
    v11 = 0;
    goto LABEL_28;
  }

  v10 = [v4 scanRecord];
  v11 = [v10 objectForKeyedSubscript:@"ORIG_RNR_CHANNEL_LIST"];

  if (![v11 count])
  {
    v23 = 0;
    v14 = 0;
    goto LABEL_28;
  }

  v12 = [(CWFScanResult *)v5 scanRecord];
  v13 = [v12 objectForKeyedSubscript:@"ORIG_RNR_CHANNEL_LIST"];
  v14 = [v13 mutableCopy];

  if (!v14)
  {
    v14 = [MEMORY[0x1E695DF70] array];
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v11;
  v15 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v15)
  {

    goto LABEL_21;
  }

  v16 = 0;
  v17 = *v29;
  do
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v29 != v17)
      {
        objc_enumerationMutation(v11);
      }

      v19 = *(*(&v28 + 1) + 8 * i);
      if (([v14 containsObject:{v19, v28}] & 1) == 0)
      {
        [v14 addObject:v19];
        v16 = 1;
      }
    }

    v15 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v15);

  if ((v16 & 1) == 0)
  {
LABEL_24:
    v23 = 0;
LABEL_28:
    v15 = 0;
    goto LABEL_22;
  }

  v20 = [(CWFScanResult *)v5 scanRecord];
  v15 = [v20 mutableCopy];

  if (!v15)
  {
LABEL_21:
    v23 = 0;
    goto LABEL_22;
  }

  [v15 setObject:v14 forKeyedSubscript:@"ORIG_RNR_CHANNEL_LIST"];
  v21 = [CWFScanResult alloc];
  v22 = [(CWFScanResult *)v5 matchingKnownNetworkProfile];
  v23 = [(CWFScanResult *)v21 initWithScanRecord:v15 knownNetworkProfile:v22 includeProperties:0];

  if (!v23)
  {
LABEL_22:
    v24 = v5;
    goto LABEL_23;
  }

  v23 = v23;

  v24 = v23;
LABEL_23:
  v25 = v24;

  v26 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t CWFKnownNetworkAssociatedDuringAWDLRealTimeMode(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = _os_feature_enabled_impl();
  v7 = 0;
  if (v3 && v6)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = [v3 BSSList];
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          [v5 timeIntervalSinceReferenceDate];
          v15 = v14;
          v16 = [v13 AWDLRealTimeModeTimestamp];
          [v16 timeIntervalSinceReferenceDate];
          v18 = v15 - v17;

          if (v18 < 604800.0)
          {
            v19 = [v13 location];
            v20 = v19;
            if (!v4 || !v19 || ([v4 horizontalAccuracy], v21 < 0.0) || (objc_msgSend(v4, "horizontalAccuracy"), v22 > 100.0) || (objc_msgSend(v20, "horizontalAccuracy"), v23 < 0.0) || (objc_msgSend(v20, "horizontalAccuracy"), v24 > 100.0) || (objc_msgSend(v20, "distanceFromLocation:", v4), v25 <= 300.0))
            {

              v7 = 1;
              goto LABEL_22;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
        v7 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_22:
  }

  v26 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1E0C0883C(void *a1, void *a2, uint64_t a3, unint64_t *a4)
{
  v6 = a1;
  v7 = a2;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = 0;
    if (a3)
    {
      v11 = [v6 bytes];
      v12 = [v8 bytes];
      if ([v6 length])
      {
        v30 = a4;
        v34 = 0;
        v35 = 0;
        v13 = 0;
        v14 = 0;
        v10 = 0;
        v32 = v6;
        v33 = v8;
        do
        {
          if ([v8 length])
          {
            v15 = 0;
            v36 = v13;
            do
            {
              v16 = v14 + v13;
              if (v14 + v13 >= [v6 length])
              {
                break;
              }

              if (*(v11 + v16) == *(v12 + v15))
              {
                v17 = v11;
                v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
                v19 = [v10 objectForKeyedSubscript:v18];
                [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
                v21 = v20 = v10;
                v22 = [v19 containsObject:v21];

                if (v22)
                {
                  v14 = 0;
                  v6 = v32;
                  v8 = v33;
                  v10 = v20;
                  v11 = v17;
                }

                else
                {
                  v10 = v20;
                  if (!v20)
                  {
                    v10 = [MEMORY[0x1E695DF90] dictionary];
                  }

                  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
                  v24 = [v10 objectForKeyedSubscript:v23];

                  v11 = v17;
                  if (!v24)
                  {
                    v24 = [MEMORY[0x1E695DFA8] set];
                    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
                    [v10 setObject:v24 forKeyedSubscript:v25];
                  }

                  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
                  [v24 addObject:v26];

                  if (v34 <= v14 + 1)
                  {
                    v27 = v14 + 1;
                  }

                  else
                  {
                    v27 = v34;
                  }

                  v28 = v35;
                  if (v14 + 1 == a3)
                  {
                    v28 = v35 + 1;
                  }

                  v34 = v27;
                  v35 = v28;

                  ++v14;
                  v6 = v32;
                  v8 = v33;
                }

                v13 = v36;
              }

              else
              {
                v14 = 0;
              }

              ++v15;
            }

            while (v15 < [v8 length]);
          }

          ++v13;
        }

        while (v13 < [v6 length]);
        if (v30)
        {
          v9 = v35;
          if (v35)
          {
            *v30 = v34;
          }
        }

        else
        {
          v9 = v35;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v9;
}

id CWFColocatedNetworksMatchingScanResult(void *a1, void *a2, void *a3)
{
  v222 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v161 = v6;
    v162 = v5;
    v160 = v7;
    if ([v5 isWiFi6E])
    {
      v8 = v5;
      v9 = v6;
      v10 = v7;
      v11 = [MEMORY[0x1E695DFA8] set];
      v166 = v9;
      if (v9)
      {
        v12 = [v8 SSID];
        v13 = [v12 length];

        if (v13)
        {
          v14 = v8;
          if (([v8 isIBSS] & 1) == 0 && (objc_msgSend(v8, "isEAP") & 1) == 0 && (objc_msgSend(v8, "isWAPI") & 1) == 0 && (objc_msgSend(v8, "isWEP") & 1) == 0 && (objc_msgSend(v8, "isWPA") & 1) == 0)
          {
            if ([v8 isOpen])
            {
              v179 = 1;
            }

            else
            {
              v179 = [v8 isOWE];
            }

            if ([v8 isPSK])
            {
              if ([v8 isWPA2])
              {
                v74 = 1;
LABEL_56:
                v211 = 0u;
                v212 = 0u;
                v209 = 0u;
                v210 = 0u;
                v75 = [v8 RNRBSSList];
                v76 = [v75 countByEnumeratingWithState:&v209 objects:v221 count:16];
                v186 = v8;
                v175 = v11;
                v176 = v10;
                v184 = v74;
                if (!v76)
                {

                  goto LABEL_130;
                }

                v77 = v76;
                v78 = 0;
                v167 = *v210;
                v163 = v75;
                while (1)
                {
                  v79 = 0;
                  v164 = v77;
                  do
                  {
                    if (*v210 != v167)
                    {
                      objc_enumerationMutation(v75);
                    }

                    if (v78)
                    {

LABEL_192:
                      v9 = 0;
                      v147 = v11;
                      goto LABEL_198;
                    }

                    v80 = *(*(&v209 + 1) + 8 * v79);
                    v181 = [v80 shortSSID];
                    if (!v181 && (![v80 isSameSSID] || (v181 = objc_msgSend(v14, "shortSSID")) == 0))
                    {
                      v78 = 0;
                      goto LABEL_122;
                    }

                    v207 = 0u;
                    v208 = 0u;
                    v205 = 0u;
                    v206 = 0u;
                    v177 = v166;
                    v191 = [v177 countByEnumeratingWithState:&v205 objects:&v217 count:16];
                    if (!v191)
                    {
                      v78 = 0;
                      goto LABEL_121;
                    }

                    v169 = v79;
                    obja = *v206;
LABEL_67:
                    v81 = 0;
                    while (1)
                    {
                      if (*v206 != obja)
                      {
                        objc_enumerationMutation(v177);
                      }

                      v82 = *(*(&v205 + 1) + 8 * v81);
                      v83 = [v82 SSID];
                      if (v83)
                      {
                        v84 = v83;
                        v85 = [v14 SSID];
                        if (v85)
                        {
                          v86 = v85;
                          v87 = [v82 SSID];
                          v88 = [v14 SSID];
                          v89 = [v87 isEqual:v88];

                          v14 = v186;
                          if (v89)
                          {
                            goto LABEL_116;
                          }
                        }

                        else
                        {
                        }
                      }

                      v90 = [v82 SSID];
                      v91 = [v90 length];

                      if (!v91)
                      {
                        goto LABEL_116;
                      }

                      v92 = [v82 channel];
                      v93 = [v92 is5GHz];

                      if (!v93 || ([v82 isIBSS] & 1) != 0 || (objc_msgSend(v82, "isEAP") & 1) != 0 || (objc_msgSend(v82, "isWAPI") & 1) != 0 || (objc_msgSend(v82, "isWEP") & 1) != 0 || (objc_msgSend(v82, "isWPA") & 1) != 0)
                      {
                        goto LABEL_116;
                      }

                      v94 = ([v82 isOpen] & 1) != 0 ? 1 : objc_msgSend(v82, "isOWE");
                      v95 = [v82 isPSK];
                      if (v95)
                      {
                        break;
                      }

LABEL_89:
                      if ((v94 | v95))
                      {
                        goto LABEL_90;
                      }

LABEL_116:
                      if (v191 == ++v81)
                      {
                        v191 = [v177 countByEnumeratingWithState:&v205 objects:&v217 count:16];
                        if (!v191)
                        {
                          v78 = 0;
                          goto LABEL_119;
                        }

                        goto LABEL_67;
                      }
                    }

                    if (([v82 isWPA2] & 1) == 0)
                    {
                      v95 = [v82 isWPA3];
                      goto LABEL_89;
                    }

                    v95 = 1;
LABEL_90:
                    if (v179 != v94 || ((v184 ^ v95) & 1) != 0)
                    {
                      goto LABEL_116;
                    }

                    if ([v82 shortSSID] == v181)
                    {
                      v96 = [v82 BSSID];
                      if (v96)
                      {
                        v97 = [v80 BSSID];
                        if (v97)
                        {
                          v98 = [v82 BSSID];
                          v99 = [v80 BSSID];
                          if ([v98 isEqual:v99])
                          {
                            v173 = [v82 channel];
                            v100 = [v173 channel];
                            v101 = [v80 channel];
                            if (v100 == [v101 channel])
                            {
                              v171 = [v82 channel];
                              v102 = [v171 band];
                              v103 = [v80 channel];
                              v104 = v102 == [v103 band] ? objc_msgSend(v80, "isColocatedAP") : 0;
                            }

                            else
                            {
                              v104 = 0;
                            }
                          }

                          else
                          {
                            v104 = 0;
                          }

                          v11 = v175;
                          v10 = v176;
                        }

                        else
                        {
                          v104 = 0;
                        }
                      }

                      else
                      {
                        v104 = 0;
                      }

                      v14 = v186;
                    }

                    else
                    {
                      v104 = 0;
                    }

                    if ([v80 isColocatedAP])
                    {
                      v105 = [v82 RNRBSSList];
                      v106 = [v105 containsObject:v80];
                    }

                    else
                    {
                      v106 = 0;
                    }

                    if (((v104 | v106) & 1) == 0)
                    {
                      goto LABEL_116;
                    }

                    v107 = sub_1E0BECB78(v82, v10);

                    if (!v107)
                    {
                      [v11 addObject:v82];
                      goto LABEL_116;
                    }

                    v78 = 1;
LABEL_119:
                    v75 = v163;
                    v77 = v164;
                    v79 = v169;
LABEL_121:

                    v74 = v184;
LABEL_122:
                    v79 = v79 + 1;
                  }

                  while (v79 != v77);
                  v108 = [v75 countByEnumeratingWithState:&v209 objects:v221 count:16];
                  v77 = v108;
                  if (!v108)
                  {

                    if (v78)
                    {
                      goto LABEL_192;
                    }

LABEL_130:
                    v203 = 0u;
                    v204 = 0u;
                    v201 = 0u;
                    v202 = 0u;
                    v165 = v166;
                    v170 = [v165 countByEnumeratingWithState:&v201 objects:v216 count:16];
                    v109 = 0;
                    if (!v170)
                    {
                      goto LABEL_194;
                    }

                    v168 = *v202;
LABEL_132:
                    v110 = 0;
LABEL_133:
                    if (*v202 != v168)
                    {
                      v111 = v110;
                      objc_enumerationMutation(v165);
                      v110 = v111;
                    }

                    if (v109)
                    {
                      v109 = 1;
                      goto LABEL_194;
                    }

                    v172 = v110;
                    v112 = *(*(&v201 + 1) + 8 * v110);
                    v113 = [v112 SSID];
                    v192 = v112;
                    if (v113)
                    {
                      v114 = v113;
                      v115 = [v14 SSID];
                      if (v115)
                      {
                        v116 = v115;
                        v117 = [v112 SSID];
                        v118 = [v14 SSID];
                        v119 = [v117 isEqual:v118];

                        v112 = v192;
                        if (v119)
                        {
                          goto LABEL_139;
                        }
                      }

                      else
                      {
                      }
                    }

                    v120 = [v112 SSID];
                    v121 = [v120 length];

                    if (!v121 || ([v112 channel], v122 = objc_claimAutoreleasedReturnValue(), v123 = objc_msgSend(v122, "is5GHz"), v122, !v123) || (objc_msgSend(v112, "isIBSS") & 1) != 0 || (objc_msgSend(v112, "isEAP") & 1) != 0 || (objc_msgSend(v112, "isWAPI") & 1) != 0 || (objc_msgSend(v112, "isWEP") & 1) != 0 || (objc_msgSend(v112, "isWPA") & 1) != 0)
                    {
LABEL_139:
                      v109 = 0;
                      goto LABEL_186;
                    }

                    if ([v112 isOpen])
                    {
                      v124 = 1;
                    }

                    else
                    {
                      v124 = [v112 isOWE];
                    }

                    v125 = [v112 isPSK];
                    if (v125)
                    {
                      if ([v112 isWPA2])
                      {
                        v125 = 1;
                        goto LABEL_156;
                      }

                      v125 = [v112 isWPA3];
                    }

                    if (((v124 | v125) & 1) == 0)
                    {
                      goto LABEL_139;
                    }

LABEL_156:
                    v109 = 0;
                    if (v179 != v124 || ((v74 ^ v125) & 1) != 0)
                    {
                      goto LABEL_186;
                    }

                    v199 = 0u;
                    v200 = 0u;
                    v197 = 0u;
                    v198 = 0u;
                    v126 = [v112 RNRBSSList];
                    v127 = [v126 countByEnumeratingWithState:&v197 objects:v214 count:16];
                    if (!v127)
                    {
                      v109 = 0;
                      goto LABEL_185;
                    }

                    v128 = v127;
                    v129 = *v198;
                    objb = v126;
                    v178 = *v198;
                    while (2)
                    {
                      v130 = 0;
LABEL_161:
                      if (*v198 != v129)
                      {
                        objc_enumerationMutation(v126);
                      }

                      v131 = *(*(&v197 + 1) + 8 * v130);
                      v132 = [v131 shortSSID];
                      if ((v132 || [v131 isSameSSID] && (v132 = objc_msgSend(v112, "shortSSID")) != 0) && objc_msgSend(v14, "shortSSID") == v132)
                      {
                        v133 = [v14 BSSID];
                        if (v133)
                        {
                          v134 = v133;
                          v135 = [v131 BSSID];
                          if (!v135)
                          {

                            goto LABEL_180;
                          }

                          v136 = v135;
                          v137 = [v14 BSSID];
                          v138 = [v131 BSSID];
                          if (![v137 isEqual:v138])
                          {

                            v126 = objb;
                            v112 = v192;
                            goto LABEL_180;
                          }

                          v182 = v137;
                          v139 = [v14 channel];
                          v140 = [v139 channel];
                          v141 = [v131 channel];
                          if (v140 == [v141 channel])
                          {
                            v142 = [v14 channel];
                            v174 = [v142 band];
                            v143 = [v131 channel];
                            if (v174 == [v143 band])
                            {
                              v144 = [v131 isColocatedAP];

                              v14 = v186;
                              v126 = objb;
                              v112 = v192;
                              v129 = v178;
                              if (v144)
                              {
                                v145 = sub_1E0BECB78(v192, v176);

                                if (v145)
                                {
                                  v109 = 1;
                                  goto LABEL_183;
                                }

                                [v175 addObject:v192];
                              }

                              goto LABEL_180;
                            }

                            v14 = v186;
                          }

                          else
                          {
                          }

                          v126 = objb;
                          v112 = v192;
                          v129 = v178;
                        }
                      }

LABEL_180:
                      if (v128 == ++v130)
                      {
                        v128 = [v126 countByEnumeratingWithState:&v197 objects:v214 count:16];
                        if (v128)
                        {
                          continue;
                        }

                        v109 = 0;
LABEL_183:
                        v10 = v176;
                        v74 = v184;
LABEL_185:

LABEL_186:
                        v110 = v172 + 1;
                        if (v172 + 1 == v170)
                        {
                          v146 = [v165 countByEnumeratingWithState:&v201 objects:v216 count:16];
                          v170 = v146;
                          if (!v146)
                          {
LABEL_194:

                            v147 = v175;
                            if ([v175 count])
                            {
                              v148 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"channel" ascending:0 comparator:&unk_1F5B8ABE0];
                              v149 = MEMORY[0x1E696AEB0];
                              v195[0] = MEMORY[0x1E69E9820];
                              v195[1] = 3221225472;
                              v195[2] = sub_1E0C0FCA4;
                              v195[3] = &unk_1E86E5660;
                              v150 = v14;
                              v196 = v150;
                              v151 = [v149 sortDescriptorWithKey:0 ascending:0 comparator:v195];
                              v152 = MEMORY[0x1E696AEB0];
                              v193[0] = MEMORY[0x1E69E9820];
                              v193[1] = 3221225472;
                              v193[2] = sub_1E0C0FECC;
                              v193[3] = &unk_1E86E5660;
                              v194 = v150;
                              v153 = [v152 sortDescriptorWithKey:0 ascending:0 comparator:v193];
                              v154 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B89350];
                              v155 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 selector:sel_compareSupportedSecurityTypes_];
                              v156 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"RSSI" ascending:0];
                              v213[0] = v148;
                              v213[1] = v151;
                              v213[2] = v153;
                              v213[3] = v154;
                              v213[4] = v155;
                              v213[5] = v156;
                              v157 = [MEMORY[0x1E695DEC8] arrayWithObjects:v213 count:6];
                              v9 = [v175 sortedArrayUsingDescriptors:v157];

                              v10 = v176;
                              v14 = v186;

                              if ((v109 & 1) == 0)
                              {
LABEL_199:

                                v6 = v161;
                                v5 = v162;
                                v7 = v160;
                                goto LABEL_200;
                              }
                            }

                            else
                            {
                              v9 = 0;
                              if (!v109)
                              {
                                goto LABEL_199;
                              }
                            }

LABEL_198:
                            [v147 removeAllObjects];
                            goto LABEL_199;
                          }

                          goto LABEL_132;
                        }

                        goto LABEL_133;
                      }

                      goto LABEL_161;
                    }
                  }
                }
              }

              v74 = [v8 isWPA3];
            }

            else
            {
              v74 = 0;
            }

            if ((v179 | v74))
            {
              goto LABEL_56;
            }
          }

          v9 = 0;
LABEL_209:
          v147 = v11;
          goto LABEL_199;
        }

        v9 = 0;
      }

      v14 = v8;
      goto LABEL_209;
    }

    v190 = v5;
    v15 = v6;
    v183 = v7;
    v16 = [MEMORY[0x1E695DFA8] set];
    v17 = _os_feature_enabled_impl();
    v9 = 0;
    v180 = v15;
    v18 = 0;
    if (!v15 || !v17)
    {
      goto LABEL_53;
    }

    v19 = [v190 SSID];
    v20 = [v19 length];

    if (!v20 || ([v190 isIBSS] & 1) != 0 || (objc_msgSend(v190, "isEAP") & 1) != 0 || (objc_msgSend(v190, "isWAPI") & 1) != 0 || (objc_msgSend(v190, "isWEP") & 1) != 0 || (objc_msgSend(v190, "isWPA") & 1) != 0)
    {
      v9 = 0;
      v18 = 0;
      goto LABEL_53;
    }

    v185 = v16;
    LODWORD(v205) = 0;
    v21 = MEMORY[0x1E696AE88];
    v22 = [v190 BSSID];
    v23 = [v22 componentsSeparatedByString:@":"];
    v24 = [v23 lastObject];
    v25 = [v21 scannerWithString:v24];
    [v25 scanHexInt:&v205];

    v18 = [MEMORY[0x1E695DFA8] set];
    v26 = MEMORY[0x1E696AEC0];
    v27 = [v190 BSSID];
    v28 = [v27 substringToIndex:14];
    v29 = [v26 stringWithFormat:@"%@:%02x", v28, (v205 + 1)];
    [v18 addObject:v29];

    v30 = MEMORY[0x1E696AEC0];
    v31 = [v190 BSSID];
    v32 = [v31 substringToIndex:14];
    v33 = [v30 stringWithFormat:@"%@:%02x", v32, (v205 + 2)];
    [v18 addObject:v33];

    v34 = MEMORY[0x1E696AEC0];
    v35 = [v190 BSSID];
    v36 = [v35 substringToIndex:14];
    v37 = [v34 stringWithFormat:@"%@:%02x", v36, (v205 - 1)];
    [v18 addObject:v37];

    v38 = MEMORY[0x1E696AEC0];
    v39 = [v190 BSSID];
    v40 = [v39 substringToIndex:14];
    v41 = [v38 stringWithFormat:@"%@:%02x", v40, (v205 - 2)];
    [v18 addObject:v41];

    v219 = 0u;
    v220 = 0u;
    v217 = 0u;
    v218 = 0u;
    obj = v180;
    v42 = [obj countByEnumeratingWithState:&v217 objects:v221 count:16];
    if (!v42)
    {
      goto LABEL_42;
    }

    v43 = v42;
    v44 = *v218;
LABEL_22:
    v45 = 0;
    while (1)
    {
      if (*v218 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v46 = *(*(&v217 + 1) + 8 * v45);
      v47 = [v46 SSID];
      if (!v47)
      {
        goto LABEL_30;
      }

      v48 = v47;
      v49 = v18;
      v50 = [v190 SSID];
      if (!v50)
      {
        break;
      }

      v51 = v50;
      v52 = [v46 SSID];
      v53 = [v190 SSID];
      v54 = [v52 isEqual:v53];

      v18 = v49;
      if ((v54 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_40:
      if (v43 == ++v45)
      {
        v43 = [obj countByEnumeratingWithState:&v217 objects:v221 count:16];
        if (!v43)
        {
LABEL_42:
          v62 = 0;
          goto LABEL_43;
        }

        goto LABEL_22;
      }
    }

LABEL_30:
    v55 = [v46 SSID];
    v56 = [v55 length];

    if (v56)
    {
      v57 = [v46 channel];
      v58 = [v57 is5GHz];

      if (v58)
      {
        if (([v46 isIBSS] & 1) == 0 && (objc_msgSend(v46, "isEAP") & 1) == 0 && (objc_msgSend(v46, "isWAPI") & 1) == 0 && (objc_msgSend(v46, "isWEP") & 1) == 0 && (objc_msgSend(v46, "isWPA") & 1) == 0)
        {
          [v46 isPSK];
          [v190 isPSK];
          v59 = [v46 BSSID];
          v60 = [v18 containsObject:v59];

          if (v60)
          {
            v61 = sub_1E0BECB78(v46, v183);

            if (v61)
            {
              v62 = 1;
LABEL_43:
              v16 = v185;

              if ([v185 count])
              {
                v63 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"channel" ascending:0 comparator:&unk_1F5B8AC00];
                v64 = MEMORY[0x1E696AEB0];
                v214[0] = MEMORY[0x1E69E9820];
                v214[1] = 3221225472;
                v214[2] = sub_1E0C102FC;
                v214[3] = &unk_1E86E5660;
                v65 = v190;
                v215 = v65;
                v66 = [v64 sortDescriptorWithKey:0 ascending:0 comparator:v214];
                v67 = MEMORY[0x1E696AEB0];
                *&v209 = MEMORY[0x1E69E9820];
                *(&v209 + 1) = 3221225472;
                *&v210 = sub_1E0C10524;
                *(&v210 + 1) = &unk_1E86E5660;
                *&v211 = v65;
                v68 = [v67 sortDescriptorWithKey:0 ascending:0 comparator:&v209];
                [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B8AC20];
                v70 = v69 = v18;
                v71 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 selector:sel_compareSupportedSecurityTypes_];
                v72 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"RSSI" ascending:0];
                v216[0] = v63;
                v216[1] = v66;
                v216[2] = v68;
                v216[3] = v70;
                v216[4] = v71;
                v216[5] = v72;
                v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v216 count:6];
                v9 = [v185 sortedArrayUsingDescriptors:v73];

                v18 = v69;
                v16 = v185;

                v6 = v161;
                v5 = v162;
                v7 = v160;
                if ((v62 & 1) == 0)
                {
                  goto LABEL_53;
                }

LABEL_52:
                [v16 removeAllObjects];
              }

              else
              {
                v9 = 0;
                v6 = v161;
                v5 = v162;
                v7 = v160;
                if (v62)
                {
                  goto LABEL_52;
                }
              }

LABEL_53:

              goto LABEL_200;
            }

            [v185 addObject:v46];
          }
        }
      }
    }

    goto LABEL_40;
  }

  v9 = 0;
LABEL_200:

  v158 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t CWFCompareLowDataMode(uint64_t a1, uint64_t a2)
{
  v2 = a2 == 1;
  if (a1 == 1)
  {
    v2 = -1;
  }

  if (a1 == a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t CWFKnownNetworkSupportsSeamlessSSIDTransition(void *a1, void *a2)
{
  v182[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v97 = CWFGetOSLog();
    if (v97)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v123 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1934;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if (!v3)
  {
    v99 = CWFGetOSLog();
    if (v99)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v124 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1936;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  v5 = [v3 matchingKnownNetworkProfile];

  if (!v5)
  {
    v100 = CWFGetOSLog();
    if (v100)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v125 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1937;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if (!v4)
  {
    v101 = CWFGetOSLog();
    if (v101)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v126 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1938;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if ([v3 isOpen])
  {
    v102 = CWFGetOSLog();
    if (v102)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v127 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1941;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if ([v3 isEAP])
  {
    v103 = CWFGetOSLog();
    if (v103)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v128 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1942;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if ([v3 isWEP])
  {
    v104 = CWFGetOSLog();
    if (v104)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v129 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1943;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if ([v3 isWAPI])
  {
    v105 = CWFGetOSLog();
    if (v105)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v130 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1944;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if ([v3 isWPA])
  {
    v106 = CWFGetOSLog();
    if (v106)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v131 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1945;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if ([v3 isOWE])
  {
    v107 = CWFGetOSLog();
    if (v107)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v132 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1946;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  v6 = [v3 matchingKnownNetworkProfile];
  v7 = [v6 isCaptive];

  if (v7)
  {
    v108 = CWFGetOSLog();
    if (v108)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v133 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1947;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if (([v3 isPSK] & 1) == 0)
  {
    v109 = CWFGetOSLog();
    if (v109)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v134 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1948;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if (([v3 isWPA2] & 1) == 0 && (objc_msgSend(v3, "isWPA3") & 1) == 0)
  {
    v121 = CWFGetOSLog();
    if (v121)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v146 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1949;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if ([v4 isOpen])
  {
    v110 = CWFGetOSLog();
    if (v110)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v135 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1951;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if ([v4 isEAP])
  {
    v111 = CWFGetOSLog();
    if (v111)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v136 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1952;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if ([v4 isWEP])
  {
    v112 = CWFGetOSLog();
    if (v112)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v137 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1953;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if ([v4 isWAPI])
  {
    v113 = CWFGetOSLog();
    if (v113)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v138 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1954;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if ([v4 isWPA])
  {
    v114 = CWFGetOSLog();
    if (v114)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v139 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1955;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if ([v4 isOWE])
  {
    v115 = CWFGetOSLog();
    if (v115)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v140 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1956;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if ([v4 isCaptive])
  {
    v116 = CWFGetOSLog();
    if (v116)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v141 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1957;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if (([v4 isPSK] & 1) == 0)
  {
    v117 = CWFGetOSLog();
    if (v117)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v142 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1958;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if (([v4 isWPA2] & 1) == 0 && (objc_msgSend(v4, "isWPA3") & 1) == 0)
  {
    v122 = CWFGetOSLog();
    if (v122)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v147 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1959;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  v8 = [v3 matchingKnownNetworkProfile];
  v182[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v182 count:1];
  v10 = sub_1E0BED85C(v3, v9);

  if (!v10)
  {
    v118 = CWFGetOSLog();
    if (v118)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v143 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1962;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  if ([v4 isAutoJoinDisabled])
  {
    v119 = CWFGetOSLog();
    if (v119)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v144 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446722;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1965;
    LODWORD(v149) = 28;
    v148 = &v166;
    goto LABEL_257;
  }

  v11 = [v3 matchingKnownNetworkProfile];
  v12 = [v11 isPrivacyProxyEnabled];
  v13 = [v4 isPrivacyProxyEnabled];

  if (v12 != v13)
  {
    v120 = CWFGetOSLog();
    if (v120)
    {
      v98 = CWFGetOSLog();
    }

    else
    {
      v98 = MEMORY[0x1E69E9C10];
      v145 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_258;
    }

    v166 = 136446978;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 1968;
    v172 = 1024;
    LODWORD(v173) = [v4 isPrivacyProxyEnabled];
    LODWORD(v149) = 34;
    v148 = &v166;
LABEL_257:
    _os_log_send_and_compose_impl();
LABEL_258:

    v88 = 0;
    goto LABEL_123;
  }

  v151 = v4;
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v14 = [v3 matchingKnownNetworkProfile];
  v15 = [v14 BSSList];

  v16 = [v15 countByEnumeratingWithState:&v162 objects:v181 count:16];
  if (!v16)
  {
LABEL_42:

    v31 = CWFGetOSLog();
    if (v31)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v71 = MEMORY[0x1E69E9C10];
    }

    v4 = v151;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v166 = 136446978;
      v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
      v168 = 2082;
      v169 = "CWFUtilPrivate.m";
      v170 = 1024;
      v171 = 2004;
      v172 = 2112;
      v173 = v3;
      LODWORD(v149) = 38;
      v148 = &v166;
      _os_log_send_and_compose_impl();
    }

    v68 = 0;
    goto LABEL_103;
  }

  v17 = v16;
  v18 = *v163;
  v156 = v3;
LABEL_30:
  v19 = 0;
  while (1)
  {
    if (*v163 != v18)
    {
      objc_enumerationMutation(v15);
    }

    v157 = *(*(&v162 + 1) + 8 * v19);
    v20 = [v157 BSSID];
    v21 = [v3 BSSID];
    v22 = v21;
    if (v20 == v21)
    {
      break;
    }

    v23 = [v157 BSSID];
    if (v23)
    {
      v24 = v23;
      v25 = [v3 BSSID];
      if (v25)
      {
        v26 = v25;
        v27 = [v157 BSSID];
        [v156 BSSID];
        v28 = v18;
        v30 = v29 = v15;
        v154 = [v27 isEqual:v30];

        v15 = v29;
        v18 = v28;

        v3 = v156;
        if (v154)
        {
          goto LABEL_45;
        }

        goto LABEL_40;
      }
    }

LABEL_40:
    if (v17 == ++v19)
    {
      v17 = [v15 countByEnumeratingWithState:&v162 objects:v181 count:16];
      if (!v17)
      {
        goto LABEL_42;
      }

      goto LABEL_30;
    }
  }

LABEL_45:
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v4 = v151;
  obj = [v151 BSSList];
  v155 = [obj countByEnumeratingWithState:&v158 objects:v180 count:16];
  if (!v155)
  {
    v68 = 0;
    goto LABEL_102;
  }

  v150 = v15;
  v32 = *v159;
  while (2)
  {
    v33 = 0;
    while (2)
    {
      if (*v159 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(*(&v158 + 1) + 8 * v33);
      v35 = [v3 channel];
      if ([v35 is6GHz])
      {
        v36 = [v34 channel];
        v37 = [v36 is5GHz];

        if (!v37)
        {
          goto LABEL_87;
        }
      }

      else
      {
      }

      v38 = [v34 IPv4NetworkSignature];
      if (v38)
      {
        v39 = [v157 IPv4NetworkSignature];
        if (v39)
        {
          v40 = [v34 IPv4NetworkSignature];
          v41 = [v157 IPv4NetworkSignature];
          v42 = [v40 isEqual:v41];
        }

        else
        {
          v42 = 0;
        }
      }

      else
      {
        v42 = 0;
      }

      v43 = [v34 IPv6NetworkSignature];
      if (v43)
      {
        v44 = [v157 IPv6NetworkSignature];
        if (v44)
        {
          v45 = [v34 IPv6NetworkSignature];
          v46 = [v157 IPv6NetworkSignature];
          v47 = [v45 isEqual:v46];
        }

        else
        {
          v47 = 0;
        }
      }

      else
      {
        v47 = 0;
      }

      v48 = [v34 DHCPServerID];
      if (v48)
      {
        v49 = [v157 DHCPServerID];
        if (v49)
        {
          v50 = [v34 DHCPServerID];
          [v157 DHCPServerID];
          v52 = v51 = v42;
          v53 = [v50 isEqual:v52];

          v42 = v51;
        }

        else
        {
          v53 = 0;
        }
      }

      else
      {
        v53 = 0;
      }

      v54 = [v34 DHCPv6ServerID];
      if (v54)
      {
        v55 = [v157 DHCPv6ServerID];
        if (v55)
        {
          [v34 DHCPv6ServerID];
          v56 = v152 = v42;
          [v157 DHCPv6ServerID];
          v57 = v34;
          v58 = v47;
          v60 = v59 = v32;
          v61 = [v56 isEqual:v60];

          v32 = v59;
          v47 = v58;
          v34 = v57;

          v42 = v152;
        }

        else
        {
          v61 = 0;
        }
      }

      else
      {
        v61 = 0;
      }

      if ((v42 & v53 & 1) != 0 || (v47 & v61) != 0)
      {
        v69 = CWFGetOSLog();
        if (v69)
        {
          v70 = CWFGetOSLog();
        }

        else
        {
          v70 = MEMORY[0x1E69E9C10];
          v72 = MEMORY[0x1E69E9C10];
        }

        v3 = v156;
        v4 = v151;

        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          v73 = [v156 networkName];
          v74 = [v151 networkName];
          v166 = 136447746;
          v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
          v168 = 2082;
          v169 = "CWFUtilPrivate.m";
          v170 = 1024;
          v171 = 1989;
          v172 = 2112;
          v173 = v73;
          v174 = 2112;
          v175 = v157;
          v176 = 2112;
          v177 = v74;
          v178 = 2112;
          v179 = v34;
          LODWORD(v149) = 68;
          v148 = &v166;
          _os_log_send_and_compose_impl();
        }

        v68 = 1;
        goto LABEL_101;
      }

      v62 = v42 | v47 | v53 | v61;
      v3 = v156;
      if (v62)
      {
        v63 = CWFGetOSLog();
        if (v63)
        {
          v64 = CWFGetOSLog();
        }

        else
        {
          v64 = MEMORY[0x1E69E9C10];
          v65 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          v66 = [v156 networkName];
          v67 = [v151 networkName];
          v166 = 136447746;
          v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
          v168 = 2082;
          v169 = "CWFUtilPrivate.m";
          v170 = 1024;
          v171 = 1995;
          v172 = 2112;
          v173 = v66;
          v174 = 2112;
          v175 = v157;
          v176 = 2112;
          v177 = v67;
          v178 = 2112;
          v179 = v34;
          LODWORD(v149) = 68;
          v148 = &v166;
          _os_log_send_and_compose_impl();
        }
      }

LABEL_87:
      if (v155 != ++v33)
      {
        continue;
      }

      break;
    }

    v155 = [obj countByEnumeratingWithState:&v158 objects:v180 count:16];
    if (v155)
    {
      continue;
    }

    break;
  }

  v68 = 0;
  v4 = v151;
LABEL_101:
  v15 = v150;
LABEL_102:

LABEL_103:
  v75 = [v4 SSID];
  if (v75)
  {
    v76 = [v3 matchingKnownNetworkProfile];
    v77 = [v76 seamlessSSIDList];
    v78 = [v4 SSID];
    v79 = [v77 containsObject:v78];
  }

  else
  {
    v79 = 0;
  }

  v80 = CWFGetOSLog();
  if (v80)
  {
    v81 = CWFGetOSLog();
  }

  else
  {
    v81 = MEMORY[0x1E69E9C10];
    v82 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
  {
    if (v68)
    {
      v83 = "";
    }

    else
    {
      v83 = " NOT";
    }

    v166 = 136446978;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 2014;
    v172 = 2080;
    v173 = v83;
    LODWORD(v149) = 38;
    v148 = &v166;
    _os_log_send_and_compose_impl();
  }

  v84 = CWFGetOSLog();
  if (v84)
  {
    v85 = CWFGetOSLog();
  }

  else
  {
    v85 = MEMORY[0x1E69E9C10];
    v86 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
  {
    if (v79)
    {
      v87 = "";
    }

    else
    {
      v87 = " NOT";
    }

    v166 = 136446978;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 2016;
    v172 = 2080;
    v173 = v87;
    LODWORD(v149) = 38;
    v148 = &v166;
    _os_log_send_and_compose_impl();
  }

  v88 = v68 | v79;
LABEL_123:
  v89 = CWFGetOSLog();
  if (v89)
  {
    v90 = CWFGetOSLog();
  }

  else
  {
    v90 = MEMORY[0x1E69E9C10];
    v91 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
  {
    if (v88)
    {
      v92 = "supported";
    }

    else
    {
      v92 = "NOT supported";
    }

    v93 = [v3 networkName];
    v94 = [v4 networkName];
    v166 = 136447490;
    v167 = "CWFKnownNetworkSupportsSeamlessSSIDTransition";
    v168 = 2082;
    v169 = "CWFUtilPrivate.m";
    v170 = 1024;
    v171 = 2024;
    v172 = 2080;
    v173 = v92;
    v174 = 2112;
    v175 = v93;
    v176 = 2112;
    v177 = v94;
    _os_log_send_and_compose_impl();
  }

  v95 = *MEMORY[0x1E69E9840];
  return v88 & 1;
}

uint64_t CWFScanResultSupportsSeamlessSSIDTransition(void *a1, void *a2)
{
  v151[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v104 = CWFGetOSLog();
    if (v104)
    {
      v105 = CWFGetOSLog();
    }

    else
    {
      v105 = MEMORY[0x1E69E9C10];
      v111 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_153;
    }

    v135 = 136446722;
    v136 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v137 = 2082;
    v138 = "CWFUtilPrivate.m";
    v139 = 1024;
    v140 = 2036;
    LODWORD(v118) = 28;
    v117 = &v135;
    goto LABEL_152;
  }

  if (!v3)
  {
    v106 = CWFGetOSLog();
    if (v106)
    {
      v105 = CWFGetOSLog();
    }

    else
    {
      v105 = MEMORY[0x1E69E9C10];
      v112 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_153;
    }

    v135 = 136446722;
    v136 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v137 = 2082;
    v138 = "CWFUtilPrivate.m";
    v139 = 1024;
    v140 = 2038;
    LODWORD(v118) = 28;
    v117 = &v135;
    goto LABEL_152;
  }

  v5 = [v3 matchingKnownNetworkProfile];

  if (!v5)
  {
    v107 = CWFGetOSLog();
    if (v107)
    {
      v105 = CWFGetOSLog();
    }

    else
    {
      v105 = MEMORY[0x1E69E9C10];
      v113 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_153;
    }

    v135 = 136446722;
    v136 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v137 = 2082;
    v138 = "CWFUtilPrivate.m";
    v139 = 1024;
    v140 = 2039;
    LODWORD(v118) = 28;
    v117 = &v135;
    goto LABEL_152;
  }

  if (!v4)
  {
    v108 = CWFGetOSLog();
    if (v108)
    {
      v105 = CWFGetOSLog();
    }

    else
    {
      v105 = MEMORY[0x1E69E9C10];
      v114 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_153;
    }

    v135 = 136446722;
    v136 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v137 = 2082;
    v138 = "CWFUtilPrivate.m";
    v139 = 1024;
    v140 = 2040;
    LODWORD(v118) = 28;
    v117 = &v135;
    goto LABEL_152;
  }

  v6 = [v4 matchingKnownNetworkProfile];

  if (!v6)
  {
    v109 = CWFGetOSLog();
    if (v109)
    {
      v105 = CWFGetOSLog();
    }

    else
    {
      v105 = MEMORY[0x1E69E9C10];
      v115 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_153;
    }

    v135 = 136446722;
    v136 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v137 = 2082;
    v138 = "CWFUtilPrivate.m";
    v139 = 1024;
    v140 = 2041;
    LODWORD(v118) = 28;
    v117 = &v135;
    goto LABEL_152;
  }

  v7 = [v4 matchingKnownNetworkProfile];
  v151[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v151 count:1];
  v9 = sub_1E0BED85C(v4, v8);

  if (!v9)
  {
    v110 = CWFGetOSLog();
    if (v110)
    {
      v105 = CWFGetOSLog();
    }

    else
    {
      v105 = MEMORY[0x1E69E9C10];
      v116 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_153;
    }

    v135 = 136446722;
    v136 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v137 = 2082;
    v138 = "CWFUtilPrivate.m";
    v139 = 1024;
    v140 = 2044;
    LODWORD(v118) = 28;
    v117 = &v135;
LABEL_152:
    _os_log_send_and_compose_impl();
LABEL_153:

    goto LABEL_154;
  }

  v10 = [v4 matchingKnownNetworkProfile];
  v11 = CWFKnownNetworkSupportsSeamlessSSIDTransition(v3, v10);

  if (!v11)
  {
LABEL_154:
    v95 = 0;
    goto LABEL_113;
  }

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v12 = [v3 matchingKnownNetworkProfile];
  v13 = [v12 BSSList];

  v14 = [v13 countByEnumeratingWithState:&v131 objects:v150 count:16];
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = v14;
  v124 = *v132;
  v122 = v4;
  obj = v13;
LABEL_10:
  v16 = 0;
  v17 = v124;
  while (1)
  {
    if (*v132 != v17)
    {
      objc_enumerationMutation(obj);
    }

    v18 = *(*(&v131 + 1) + 8 * v16);
    v19 = [v18 BSSID];
    v20 = [v3 BSSID];
    v21 = v20;
    v126 = v18;
    if (v19 == v20)
    {
      break;
    }

    v22 = [v18 BSSID];
    if (v22)
    {
      v23 = v22;
      v24 = [v3 BSSID];
      if (v24)
      {
        v25 = v24;
        v26 = [v126 BSSID];
        [v3 BSSID];
        v28 = v27 = v3;
        v29 = [v26 isEqual:v28];

        v3 = v27;
        v17 = v124;

        v4 = v122;
        if (v29)
        {
          goto LABEL_25;
        }

        goto LABEL_20;
      }
    }

LABEL_20:
    if (v15 == ++v16)
    {
      v13 = obj;
      v15 = [obj countByEnumeratingWithState:&v131 objects:v150 count:16];
      if (!v15)
      {
LABEL_22:

        v30 = CWFGetOSLog();
        if (v30)
        {
          v31 = CWFGetOSLog();
        }

        else
        {
          v31 = MEMORY[0x1E69E9C10];
          v77 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v135 = 136446978;
          v136 = "CWFScanResultSupportsSeamlessSSIDTransition";
          v137 = 2082;
          v138 = "CWFUtilPrivate.m";
          v139 = 1024;
          v140 = 2089;
          v141 = 2112;
          v142 = v3;
          LODWORD(v118) = 38;
          v117 = &v135;
          _os_log_send_and_compose_impl();
        }

        v72 = 0;
        goto LABEL_95;
      }

      goto LABEL_10;
    }
  }

LABEL_25:
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v32 = [v4 matchingKnownNetworkProfile];
  v33 = [v32 BSSList];

  v125 = [v33 countByEnumeratingWithState:&v127 objects:v149 count:16];
  if (v125)
  {
    v119 = v3;
    v34 = 0;
    v123 = *v128;
    v121 = v33;
LABEL_27:
    v35 = 0;
    while (1)
    {
      if (*v128 != v123)
      {
        objc_enumerationMutation(v121);
      }

      v36 = *(*(&v127 + 1) + 8 * v35);
      v37 = [v36 BSSID];
      v38 = [v4 BSSID];
      v39 = v38;
      if (v37 == v38)
      {
      }

      else
      {
        v40 = [v36 BSSID];
        if (!v40)
        {
          goto LABEL_41;
        }

        v41 = v40;
        v42 = [v4 BSSID];
        if (!v42)
        {

LABEL_41:
LABEL_72:

          goto LABEL_73;
        }

        v43 = v42;
        v44 = [v36 BSSID];
        v45 = [v4 BSSID];
        v46 = [v44 isEqual:v45];

        v4 = v122;
        if (!v46)
        {
          goto LABEL_73;
        }
      }

      v47 = [v36 IPv4NetworkSignature];
      if (v47)
      {
        v48 = v126;
        v49 = [v126 IPv4NetworkSignature];
        if (v49)
        {
          v50 = [v36 IPv4NetworkSignature];
          v51 = [v126 IPv4NetworkSignature];
          v52 = [v50 isEqual:v51];
        }

        else
        {
          v52 = 0;
        }
      }

      else
      {
        v52 = 0;
        v48 = v126;
      }

      v53 = [v36 IPv6NetworkSignature];
      if (v53)
      {
        v54 = [v48 IPv6NetworkSignature];
        if (v54)
        {
          v55 = [v36 IPv6NetworkSignature];
          v56 = [v48 IPv6NetworkSignature];
          v57 = [v55 isEqual:v56];
        }

        else
        {
          v57 = 0;
        }
      }

      else
      {
        v57 = 0;
      }

      v58 = [v36 DHCPServerID];
      if (v58)
      {
        v59 = [v48 DHCPServerID];
        if (v59)
        {
          v60 = [v36 DHCPServerID];
          v61 = [v48 DHCPServerID];
          v62 = [v60 isEqual:v61];
        }

        else
        {
          v62 = 0;
        }
      }

      else
      {
        v62 = 0;
      }

      v63 = [v36 DHCPv6ServerID];
      if (v63)
      {
        v64 = [v48 DHCPv6ServerID];
        if (v64)
        {
          v65 = [v36 DHCPv6ServerID];
          v66 = [v48 DHCPv6ServerID];
          v67 = [v65 isEqual:v66];

          v48 = v126;
        }

        else
        {
          v67 = 0;
        }
      }

      else
      {
        v67 = 0;
      }

      if ((v52 & v62 & 1) != 0 || (v57 & v67) != 0)
      {
        v73 = CWFGetOSLog();
        v4 = v122;
        if (v73)
        {
          v74 = CWFGetOSLog();
        }

        else
        {
          v74 = MEMORY[0x1E69E9C10];
          v78 = MEMORY[0x1E69E9C10];
        }

        v31 = obj;
        v76 = v121;

        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          v79 = [v119 networkName];
          v80 = [v122 networkName];
          v135 = 136447746;
          v136 = "CWFScanResultSupportsSeamlessSSIDTransition";
          v137 = 2082;
          v138 = "CWFUtilPrivate.m";
          v139 = 1024;
          v140 = 2068;
          v141 = 2112;
          v142 = v79;
          v143 = 2112;
          v144 = v126;
          v145 = 2112;
          v146 = v80;
          v147 = 2112;
          v148 = v36;
          LODWORD(v118) = 68;
          v117 = &v135;
          _os_log_send_and_compose_impl();
        }

        v72 = 1;
        v3 = v119;
        goto LABEL_94;
      }

      if ((v52 | v57 | v62 | v67))
      {
        v68 = CWFGetOSLog();
        v4 = v122;
        if (v68)
        {
          v37 = CWFGetOSLog();
        }

        else
        {
          v37 = MEMORY[0x1E69E9C10];
          v69 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v70 = [v119 networkName];
          v71 = [v122 networkName];
          v135 = 136447746;
          v136 = "CWFScanResultSupportsSeamlessSSIDTransition";
          v137 = 2082;
          v138 = "CWFUtilPrivate.m";
          v139 = 1024;
          v140 = 2074;
          v141 = 2112;
          v142 = v70;
          v143 = 2112;
          v144 = v48;
          v145 = 2112;
          v146 = v71;
          v147 = 2112;
          v148 = v36;
          LODWORD(v118) = 68;
          v117 = &v135;
          v34 = 1;
          _os_log_send_and_compose_impl();
        }

        else
        {
          v34 = 1;
        }

        goto LABEL_72;
      }

      v34 = 1;
      v4 = v122;
LABEL_73:
      if (v125 == ++v35)
      {
        v125 = [v121 countByEnumeratingWithState:&v127 objects:v149 count:16];
        if (v125)
        {
          goto LABEL_27;
        }

        v3 = v119;
        if (v34)
        {
          v72 = 0;
          v31 = obj;
          goto LABEL_95;
        }

        goto LABEL_80;
      }
    }
  }

LABEL_80:
  v75 = CWFGetOSLog();
  v31 = obj;
  if (v75)
  {
    v76 = CWFGetOSLog();
  }

  else
  {
    v76 = MEMORY[0x1E69E9C10];
    v81 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
  {
    v135 = 136446978;
    v136 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v137 = 2082;
    v138 = "CWFUtilPrivate.m";
    v139 = 1024;
    v140 = 2081;
    v141 = 2112;
    v142 = v4;
    LODWORD(v118) = 38;
    v117 = &v135;
    _os_log_send_and_compose_impl();
  }

  v72 = 0;
LABEL_94:

LABEL_95:
  v82 = [v4 SSID];
  if (v82)
  {
    v83 = [v3 matchingKnownNetworkProfile];
    v84 = [v83 seamlessSSIDList];
    v85 = [v4 SSID];
    v86 = [v84 containsObject:v85];
  }

  else
  {
    v86 = 0;
  }

  v87 = CWFGetOSLog();
  if (v87)
  {
    v88 = CWFGetOSLog();
  }

  else
  {
    v88 = MEMORY[0x1E69E9C10];
    v89 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
  {
    v90 = " NOT";
    v136 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v137 = 2082;
    v138 = "CWFUtilPrivate.m";
    v135 = 136446978;
    if (v72)
    {
      v90 = "";
    }

    v139 = 1024;
    v140 = 2099;
    v141 = 2080;
    v142 = v90;
    LODWORD(v118) = 38;
    v117 = &v135;
    _os_log_send_and_compose_impl();
  }

  v91 = CWFGetOSLog();
  if (v91)
  {
    v92 = CWFGetOSLog();
  }

  else
  {
    v92 = MEMORY[0x1E69E9C10];
    v93 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
  {
    v94 = " NOT";
    v136 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v137 = 2082;
    v138 = "CWFUtilPrivate.m";
    v135 = 136446978;
    if (v86)
    {
      v94 = "";
    }

    v139 = 1024;
    v140 = 2101;
    v141 = 2080;
    v142 = v94;
    LODWORD(v118) = 38;
    v117 = &v135;
    _os_log_send_and_compose_impl();
  }

  v95 = v72 | v86;
LABEL_113:
  v96 = CWFGetOSLog();
  if (v96)
  {
    v97 = CWFGetOSLog();
  }

  else
  {
    v97 = MEMORY[0x1E69E9C10];
    v98 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
  {
    if (v95)
    {
      v99 = "supported";
    }

    else
    {
      v99 = "NOT supported";
    }

    v100 = [v3 networkName];
    v101 = [v4 networkName];
    v135 = 136447490;
    v136 = "CWFScanResultSupportsSeamlessSSIDTransition";
    v137 = 2082;
    v138 = "CWFUtilPrivate.m";
    v139 = 1024;
    v140 = 2109;
    v141 = 2080;
    v142 = v99;
    v143 = 2112;
    v144 = v100;
    v145 = 2112;
    v146 = v101;
    _os_log_send_and_compose_impl();
  }

  v102 = *MEMORY[0x1E69E9840];
  return v95 & 1;
}

id CWFKnownNetworksSupportingSeamlessSSIDTransitionForScanResult(void *a1, void *a2, char a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v49 = [MEMORY[0x1E695DFA0] orderedSet];
  if (v5)
  {
    if ([v6 count])
    {
      v7 = [v5 matchingKnownNetworkProfile];

      if (v7)
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v53 objects:v57 count:16];
        if (!v9)
        {
          goto LABEL_34;
        }

        v10 = v9;
        v47 = v6;
        v48 = v5;
        v52 = *v54;
        v11 = v49;
        v50 = v8;
        v51 = a3;
        while (1)
        {
          v12 = 0;
          do
          {
            if (*v54 != v52)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v53 + 1) + 8 * v12);
            if (a3)
            {
              if (CWFKnownNetworkSupportsSeamlessSSIDTransition(v5, *(*(&v53 + 1) + 8 * v12)))
              {
                goto LABEL_26;
              }

              v14 = [v5 SSID];
              v15 = [v13 SSID];
              v16 = v15;
              if (v14 == v15)
              {

                goto LABEL_26;
              }

              v17 = [v5 SSID];
              if (!v17)
              {

LABEL_31:
                a3 = v51;
                goto LABEL_27;
              }

              v18 = v17;
              v19 = [v13 SSID];
              if (!v19)
              {

                v8 = v50;
                goto LABEL_31;
              }

              v20 = v19;
              v21 = [v5 SSID];
              v22 = [v13 SSID];
              v23 = [v21 isEqual:v22];

              v11 = v49;
              v5 = v48;

              v8 = v50;
              a3 = v51;
              if (v23)
              {
                goto LABEL_26;
              }
            }

            else
            {
              v24 = [v5 SSID];
              v25 = [v13 SSID];
              v26 = v25;
              if (v24 == v25)
              {

                goto LABEL_27;
              }

              v27 = [v5 SSID];
              if (!v27)
              {
                goto LABEL_24;
              }

              v28 = v27;
              v29 = [v13 SSID];
              if (!v29)
              {

                v8 = v50;
LABEL_24:

                a3 = v51;
LABEL_25:
                if ((CWFKnownNetworkSupportsSeamlessSSIDTransition(v5, v13) & 1) == 0)
                {
                  goto LABEL_27;
                }

LABEL_26:
                [v11 addObject:v13];
                goto LABEL_27;
              }

              v30 = v29;
              v31 = [v5 SSID];
              v32 = [v13 SSID];
              v33 = [v31 isEqual:v32];

              v11 = v49;
              v5 = v48;

              v8 = v50;
              a3 = v51;
              if ((v33 & 1) == 0)
              {
                goto LABEL_25;
              }
            }

LABEL_27:
            ++v12;
          }

          while (v10 != v12);
          v34 = [v8 countByEnumeratingWithState:&v53 objects:v57 count:16];
          v10 = v34;
          if (!v34)
          {
            v6 = v47;
            goto LABEL_34;
          }
        }
      }

      v42 = CWFGetOSLog();
      if (v42)
      {
        v43 = CWFGetOSLog();
      }

      else
      {
        v43 = MEMORY[0x1E69E9C10];
        v46 = MEMORY[0x1E69E9C10];
      }

      v8 = v43;
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_34;
      }

      v58 = 136446722;
      v59 = "CWFKnownNetworksSupportingSeamlessSSIDTransitionForScanResult";
      v60 = 2082;
      v61 = "CWFUtilPrivate.m";
      v62 = 1024;
      v63 = 2121;
    }

    else
    {
      v40 = CWFGetOSLog();
      if (v40)
      {
        v41 = CWFGetOSLog();
      }

      else
      {
        v41 = MEMORY[0x1E69E9C10];
        v45 = MEMORY[0x1E69E9C10];
      }

      v8 = v41;
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_34;
      }

      v58 = 136446722;
      v59 = "CWFKnownNetworksSupportingSeamlessSSIDTransitionForScanResult";
      v60 = 2082;
      v61 = "CWFUtilPrivate.m";
      v62 = 1024;
      v63 = 2120;
    }
  }

  else
  {
    v38 = CWFGetOSLog();
    if (v38)
    {
      v39 = CWFGetOSLog();
    }

    else
    {
      v39 = MEMORY[0x1E69E9C10];
      v44 = MEMORY[0x1E69E9C10];
    }

    v8 = v39;
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_34;
    }

    v58 = 136446722;
    v59 = "CWFKnownNetworksSupportingSeamlessSSIDTransitionForScanResult";
    v60 = 2082;
    v61 = "CWFUtilPrivate.m";
    v62 = 1024;
    v63 = 2119;
  }

  _os_log_send_and_compose_impl();
LABEL_34:

  v35 = [v49 copy];
  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

id CWFIPv4Subnets(void *a1, void *a2)
{
  v3 = a1;
  v22 = a2;
  v20 = [MEMORY[0x1E695DF70] array];
  if (v3)
  {
    if (v22)
    {
      v4 = [v3 count];
      if (v4 == [v22 count])
      {
        if ([v3 count])
        {
          v5 = 0;
          v21 = v3;
          do
          {
            v6 = [v3 objectAtIndexedSubscript:v5];
            v7 = [v22 objectAtIndexedSubscript:v5];
            v30 = v6;
            v8 = [v6 componentsSeparatedByString:@"."];
            v29 = v7;
            v9 = [v7 componentsSeparatedByString:@"."];
            v26 = MEMORY[0x1E696AEC0];
            v28 = [v8 objectAtIndexedSubscript:0];
            LODWORD(v6) = [v28 intValue];
            v27 = [v9 objectAtIndexedSubscript:0];
            v24 = [v27 intValue] & v6;
            v25 = [v8 objectAtIndexedSubscript:1];
            v10 = [v25 intValue];
            v11 = [v9 objectAtIndexedSubscript:1];
            v23 = [v11 intValue] & v10;
            v12 = [v8 objectAtIndexedSubscript:2];
            LODWORD(v7) = [v12 intValue];
            v13 = [v9 objectAtIndexedSubscript:2];
            v14 = [v13 intValue] & v7;
            v15 = [v8 objectAtIndexedSubscript:3];
            LODWORD(v7) = [v15 intValue];
            v16 = [v9 objectAtIndexedSubscript:3];
            v17 = [v26 stringWithFormat:@"%d.%d.%d.%d", v24, v23, v14, objc_msgSend(v16, "intValue") & v7];

            if (v17)
            {
              [v20 addObject:v17];
            }

            ++v5;
            v3 = v21;
          }

          while (v5 < [v21 count]);
        }
      }
    }
  }

  if ([v20 count])
  {
    v18 = [v20 copy];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id CWFIPv4AddressesFromDHCPOptionData(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [v1 bytes];
  v4 = [v1 length];
  if (v4)
  {
    v5 = v4;
    if ((v4 & 3) == 0)
    {
      for (i = 0; i < v5; i += 4)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d.%d.%d.%d", *(v3 + i), *(v3 + i + 1), *(v3 + i + 2), *(v3 + i + 3)];
        if (v7)
        {
          [v2 addObject:v7];
        }
      }
    }
  }

  if ([v2 count])
  {
    v8 = [v2 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL CWFIsIPv4AddressLoopback(void *a1)
{
  v4[2] = *MEMORY[0x1E69E9840];
  HIDWORD(v4[0]) = 0;
  v4[1] = 0;
  result = inet_pton(2, [a1 UTF8String], v4 + 4) == 1 && BYTE4(v4[0]) == 127;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL CWFIsIPv4AddressLinkLocal(void *a1)
{
  v4[2] = *MEMORY[0x1E69E9840];
  HIDWORD(v4[0]) = 0;
  v4[1] = 0;
  result = inet_pton(2, [a1 UTF8String], v4 + 4) == 1 && WORD2(v4[0]) == 65193;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL CWFIsIPv6AddressLinkLocal(void *a1)
{
  v4[0] = 0;
  v5 = 0;
  v4[1] = 0;
  v1 = inet_pton(30, [a1 UTF8String], v4);
  result = 0;
  if (v1 == 1)
  {
    return LOBYTE(v4[0]) == 254 && (BYTE1(v4[0]) & 0xC0) == 128;
  }

  return result;
}

__CFString *CWFStringFromDenyListAddReason(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E86E6278[a1];
  }
}

__CFString *CWFStringFromDenyListRemoveReason(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E86E62E0[a1 - 1];
  }
}

__CFString *CWFStringFromDenyListState(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E86E6318[a1 - 1];
  }
}

uint64_t CWFPrivateMACAddressAllowFallbackForAssociationError(void *a1)
{
  v1 = a1;
  if (!_os_feature_enabled_impl())
  {
    v3 = 1;
    goto LABEL_11;
  }

  v2 = [v1 code];
  v3 = 1;
  if (v2 <= -103)
  {
    if ((v2 + 3941) > 0x28 || ((1 << (v2 + 101)) & 0x16020033C01) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  if (v2 <= 0x2D && ((1 << v2) & 0x200000400063) != 0 || (v2 + 102) < 3 || v2 == 82)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v3;
}

BOOL CWFPrivateMACShouldShowPrivateMACAddressDisabledWarning(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a3 != 1)
  {
    goto LABEL_10;
  }

  if ([v5 privateMACAddressModeUserSetting] || objc_msgSend(v6, "privateMACAddressModeConfigurationProfileSetting") | a2)
  {
    v7 = 1;
    goto LABEL_11;
  }

  if (![v6 privateMACAddressDisabledByEvaluation])
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = 120.0;
    }

    else
    {
      v8 = 14400.0;
    }
  }

  else
  {
    v8 = 14400.0;
  }

  v10 = [v6 lastJoinedAt];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = [v6 privateMACAddressEvaluatedAt];
  [v13 timeIntervalSinceReferenceDate];
  v7 = v12 - v14 > v8;

LABEL_11:
  return v7;
}

BOOL CWFPrivateMACShouldEnablePrivateMACAddressForEvaluation(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = 240.0;
    }

    else
    {
      v2 = 86400.0;
    }
  }

  else
  {
    v2 = 86400.0;
  }

  if ([v1 privateMACAddressDisabledByEvaluation])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v4 = v3;
    v5 = [v1 privateMACAddressEvaluatedAt];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v4 - v6 > v2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

unsigned __int8 *CWFNetworkStackMACAddressWithInterfaceName(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  size = 0;
  *v10 = xmmword_1E0D81890;
  v11 = 3;
  v12 = if_nametoindex([a1 UTF8String]);
  sysctl(v10, 6u, 0, &size, 0, 0);
  if (size)
  {
    v1 = malloc_type_malloc(size, 0xF7AD663uLL);
    if (!v1)
    {
      goto LABEL_8;
    }

    if (sysctl(v10, 6u, v1, &size, 0, 0) < 0)
    {
      free(v1);
    }

    else
    {
      v2 = &v1[v1[117]];
      v3 = *(v2 + 30);
      *&v8.octet[4] = *(v2 + 62);
      *v8.octet = v3;
      v4 = ether_ntoa(&v8);
      free(v1);
      if (v4)
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithCString:v4 encoding:4];
        v1 = CWFCorrectEthernetAddressString(v5);

        goto LABEL_8;
      }
    }
  }

  v1 = 0;
LABEL_8:
  v6 = *MEMORY[0x1E69E9840];

  return v1;
}

id CWFGetPHOSLog()
{
  if (qword_1ED7E38E8 != -1)
  {
    dispatch_once(&qword_1ED7E38E8, &unk_1F5B89950);
  }

  v1 = qword_1ED7E38E0;

  return v1;
}

uint64_t sub_1E0C0DE9C()
{
  qword_1ED7E38E0 = os_log_create("com.apple.WiFiManager", "PersonalHotspot");

  return MEMORY[0x1EEE66BB8]();
}

id CWFGetOTAOSLog()
{
  if (qword_1ED7E38F8 != -1)
  {
    dispatch_once(&qword_1ED7E38F8, &unk_1F5B8ABA0);
  }

  v1 = qword_1ED7E38F0;

  return v1;
}

uint64_t sub_1E0C0DF34()
{
  qword_1ED7E38F0 = os_log_create("com.apple.WiFiManager", "OTA");

  return MEMORY[0x1EEE66BB8]();
}

id CWFGetLinkQualityOSLog()
{
  if (qword_1ED7E3908 != -1)
  {
    dispatch_once(&qword_1ED7E3908, &unk_1F5B89570);
  }

  v1 = qword_1ED7E3900;

  return v1;
}

uint64_t sub_1E0C0DFCC()
{
  qword_1ED7E3900 = os_log_create("com.apple.WiFiManager", "WiFiLinkQuality");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t CWFNetworkHas2GHzBSSPresence(void *a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  v9 = 0;
  v35 = v5;
  if (v5 && v7)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      obj = v10;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = v8[2](v8, *(*(&v36 + 1) + 8 * i));
          v16 = [[CWFScanResult alloc] initWithScanRecord:v15 includeProperties:0];
          v17 = [(CWFScanResult *)v16 networkName];
          v18 = [v35 networkName];
          v19 = [v17 isEqualToString:v18];

          if (v19)
          {
            v20 = [(CWFScanResult *)v16 channel];
            v21 = [v20 is2GHz];

            if (v21)
            {
              goto LABEL_18;
            }
          }

          else if ([(CWFScanResult *)v16 isPasspoint])
          {
            v22 = [(CWFScanResult *)v16 domainNameList];
            v23 = [v35 domainName];
            v24 = [v22 containsObject:v23];

            if (v24)
            {
              v25 = [(CWFScanResult *)v16 channel];
              v26 = [v25 is2GHz];

              if (v26)
              {
LABEL_18:

                v9 = 1;
                v6 = v33;
                v28 = obj;
                goto LABEL_23;
              }
            }
          }
        }

        v10 = obj;
        v12 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v27 = CWFGetOSLog();
    if (v27)
    {
      v28 = CWFGetOSLog();
    }

    else
    {
      v28 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    v6 = v33;

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v30 = [v35 networkName];
      v40 = 136446978;
      v41 = "CWFNetworkHas2GHzBSSPresence";
      v42 = 2082;
      v43 = "CWFUtilPrivate.m";
      v44 = 1024;
      v45 = 2627;
      v46 = 2112;
      v47 = v30;
      _os_log_send_and_compose_impl();
    }

    v9 = 0;
LABEL_23:
  }

  v31 = *MEMORY[0x1E69E9840];
  return v9;
}

unint64_t CWFRecentlyJoinedNetworkHasNo2GHzPresence(void *a1, unint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E695DF00] now];
  if (a2)
  {
    if ([v3 count])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v22 objects:v34 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v23;
        v9 = a2;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v23 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v22 + 1) + 8 * i);
            if (([v11 isPersonalHotspot] & 1) == 0)
            {
              v12 = [v11 lastJoinedAt];
              if (v12)
              {
                [v4 timeIntervalSinceReferenceDate];
                v14 = v13;
                [v12 timeIntervalSinceReferenceDate];
                if (v14 - v15 < v9 && ([v11 is2GHzBssPresent] & 1) == 0)
                {
                  v16 = CWFGetOSLog();
                  if (v16)
                  {
                    v17 = CWFGetOSLog();
                  }

                  else
                  {
                    v17 = MEMORY[0x1E69E9C10];
                    v18 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    v19 = [v11 networkName];
                    v26 = 136446978;
                    v27 = "CWFRecentlyJoinedNetworkHasNo2GHzPresence";
                    v28 = 2082;
                    v29 = "CWFUtilPrivate.m";
                    v30 = 1024;
                    v31 = 2654;
                    v32 = 2112;
                    v33 = v19;
                    _os_log_send_and_compose_impl();
                  }

                  a2 = 1;
                  goto LABEL_22;
                }
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v22 objects:v34 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      a2 = 0;
LABEL_22:
    }

    else
    {
      a2 = 0;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t CWFShouldPresentPersonalHotspotNotificationForBrokenBackhaulNetworkName(void *a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v5 = 0;
    v34 = 0;
    goto LABEL_37;
  }

  v2 = 86400;
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 objectForKey:@"PHBBHNotificationPresentationTimestamps"];

  v49 = v4;
  v5 = [v4 objectForKeyedSubscript:v1];
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [v6 objectForKey:@"PHBBHNotificationResponseTimestamps"];

  v8 = [v7 objectForKeyedSubscript:v1];
  v9 = [MEMORY[0x1E695DF00] date];
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v10 = _os_feature_enabled_impl();
    if (v10)
    {
      v2 = 10;
      v11 = 10;
    }

    else
    {
      v11 = 180;
    }

    v12 = v10 != 0;
  }

  else
  {
    v12 = 0;
    v11 = 180;
  }

  [v9 timeIntervalSinceReferenceDate];
  v14 = v13;
  [v5 timeIntervalSinceReferenceDate];
  v16 = v14 - v15;
  v17 = v11;
  if (v14 - v15 > v11)
  {
    [v9 timeIntervalSinceReferenceDate];
    v20 = v19;
    [v8 timeIntervalSinceReferenceDate];
    LODWORD(v18) = v20 - v21 > v2;
  }

  else
  {
    LODWORD(v18) = 0;
  }

  v48 = v2;
  v22 = CWFGetOSLog();
  if (v22)
  {
    v23 = CWFGetOSLog();
  }

  else
  {
    v23 = MEMORY[0x1E69E9C10];
    v24 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v18 == 0;
    v47 = v18;
    v18 = v11;
    v26 = v12;
    v27 = v9;
    v28 = v8;
    v29 = v7;
    v30 = v5;
    if (v25)
    {
      v31 = "NOT ";
    }

    else
    {
      v31 = "";
    }

    v32 = [v1 redactedForWiFi];
    v53 = 136446466;
    v54 = v31;
    v5 = v30;
    v7 = v29;
    v8 = v28;
    v9 = v27;
    v12 = v26;
    v11 = v18;
    LOBYTE(v18) = v47;
    v55 = 2114;
    v56 = v32;
    LODWORD(v46) = 22;
    v45 = &v53;
    _os_log_send_and_compose_impl();
  }

  if (v18)
  {
    v33 = 1;
LABEL_24:
    v34 = v49;
    goto LABEL_25;
  }

  if (v12)
  {
    v33 = 0;
    goto LABEL_24;
  }

  v34 = v49;
  if (!objc_opt_class())
  {
LABEL_37:
    v33 = 0;
    goto LABEL_25;
  }

  v37 = v8;
  v51[0] = @"user_did_join";
  v51[1] = @"was_suppressed";
  v52[0] = MEMORY[0x1E695E110];
  v52[1] = MEMORY[0x1E695E118];
  v51[2] = @"suppression_interval";
  if (v16 > v17)
  {
    v38 = v48;
  }

  else
  {
    v38 = v11;
  }

  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v38, v45, v46}];
  v52[2] = v39;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:3];

  v41 = CWFGetOSLog();
  if (v41)
  {
    v42 = CWFGetOSLog();
  }

  else
  {
    v42 = MEMORY[0x1E69E9C10];
    v43 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v53 = 138543618;
    v54 = @"com.apple.wifi.bbh-ph-alert";
    v55 = 2114;
    v56 = v40;
    _os_log_send_and_compose_impl();
  }

  v50 = v40;
  v44 = v40;
  AnalyticsSendEventLazy();

  v33 = 0;
  v8 = v37;
LABEL_25:

  v35 = *MEMORY[0x1E69E9840];
  return v33;
}

void CWFDidPresentPersonalHotspotNotificationForBrokenBackhaulNetworkName(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x1E695DF00] date];
    sub_1E0C0EBE0(v1, v2);

    v3 = CWFGetOSLog();
    if (v3)
    {
      v4 = CWFGetOSLog();
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v1 redactedForWiFi];
      _os_log_send_and_compose_impl();
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E0C0EBE0(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 objectForKey:@"PHBBHNotificationPresentationTimestamps"];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
  }

  [v7 setObject:v4 forKeyedSubscript:v3];
  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v8 setObject:v7 forKey:@"PHBBHNotificationPresentationTimestamps"];

  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = sub_1E0BCC248(v4);
    v14 = [v3 redactedForWiFi];
    _os_log_send_and_compose_impl();
  }

  v13 = *MEMORY[0x1E69E9840];
}

void CWFDidReceiveResponseToPersonalHotspotNotificationForBrokenBackhaulNetworkName(void *a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      sub_1E0C0EBE0(v3, 0);
      sub_1E0C0F100(v4, 0);
    }

    else
    {
      v5 = [MEMORY[0x1E695DF00] date];
      sub_1E0C0F100(v4, v5);
    }

    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 redactedForWiFi];
      v10 = v9;
      v11 = "no";
      if (a2)
      {
        v11 = "yes";
      }

      v25 = 138543618;
      v26 = v9;
      v27 = 2082;
      v28 = v11;
      LODWORD(v21) = 22;
      v20 = &v25;
      _os_log_send_and_compose_impl();
    }

    if ((!os_variant_has_internal_content() || !_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0) && objc_opt_class())
    {
      v12 = MEMORY[0x1E695E118];
      if (!a2)
      {
        v12 = MEMORY[0x1E695E110];
      }

      v23[0] = @"user_did_join";
      v23[1] = @"was_suppressed";
      v24[0] = v12;
      v24[1] = MEMORY[0x1E695E110];
      v23[2] = @"suppression_interval";
      v13 = [MEMORY[0x1E696AD98] numberWithInt:{86400, v20, v21}];
      v24[2] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

      v15 = CWFGetOSLog();
      if (v15)
      {
        v16 = CWFGetOSLog();
      }

      else
      {
        v16 = MEMORY[0x1E69E9C10];
        v17 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138543618;
        v26 = @"com.apple.wifi.bbh-ph-alert";
        v27 = 2114;
        v28 = v14;
        _os_log_send_and_compose_impl();
      }

      v22 = v14;
      v18 = v14;
      AnalyticsSendEventLazy();
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E0C0F100(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 objectForKey:@"PHBBHNotificationResponseTimestamps"];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
  }

  [v7 setObject:v4 forKeyedSubscript:v3];
  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v8 setObject:v7 forKey:@"PHBBHNotificationResponseTimestamps"];

  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = sub_1E0BCC248(v4);
    v14 = [v3 redactedForWiFi];
    _os_log_send_and_compose_impl();
  }

  v13 = *MEMORY[0x1E69E9840];
}

void CWFDidReceiveResponseToNearbyCaptiveAssistNotification(void *a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = CWFGetOSLog();
    if (v4)
    {
      v5 = CWFGetOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [v3 redactedForWiFi];
      v8 = v7;
      v9 = "no";
      if (a2)
      {
        v9 = "yes";
      }

      v22 = 138543618;
      v23 = v7;
      v24 = 2082;
      v25 = v9;
      LODWORD(v18) = 22;
      v17 = &v22;
      _os_log_send_and_compose_impl();
    }

    if (objc_opt_class())
    {
      if (a2)
      {
        v10 = MEMORY[0x1E695E118];
      }

      else
      {
        v10 = MEMORY[0x1E695E110];
      }

      v20 = @"user_did_join";
      v21 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:{1, v17, v18}];
      v12 = CWFGetOSLog();
      if (v12)
      {
        v13 = CWFGetOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543618;
        v23 = @"com.apple.wifi.nearby-captive-assist-alert";
        v24 = 2114;
        v25 = v11;
        _os_log_send_and_compose_impl();
      }

      v19 = v11;
      v15 = v11;
      AnalyticsSendEventLazy();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void CWFResetPersonalHotspotNotificationForBrokenBackhaulNetworkName(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    sub_1E0C0F100(v1, 0);
    sub_1E0C0EBE0(v2, 0);
    v3 = CWFGetOSLog();
    if (v3)
    {
      v4 = CWFGetOSLog();
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v2 redactedForWiFi];
      _os_log_send_and_compose_impl();
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

id CWFHashedChipsetName()
{
  if (qword_1ED7E3918 != -1)
  {
    dispatch_once(&qword_1ED7E3918, &unk_1F5B8ABC0);
  }

  v1 = qword_1ED7E3910;

  return v1;
}

void sub_1E0C0F6E8()
{
  v0 = [MEMORY[0x1E695DF88] dataWithLength:32];
  v1 = [@"6d5f310d90c76047738c74f73403948f" dataUsingEncoding:4];
  v2 = MGCopyAnswer();
  v3 = [v2 dataUsingEncoding:4];
  memset(&v6, 0, sizeof(v6));
  CC_SHA256_Init(&v6);
  CC_SHA256_Update(&v6, [v1 bytes], objc_msgSend(v1, "length"));
  CC_SHA256_Update(&v6, [v3 bytes], objc_msgSend(v3, "length"));
  CC_SHA256_Final([v0 mutableBytes], &v6);
  v4 = [v0 base64EncodedStringWithOptions:0];
  v5 = qword_1ED7E3910;
  qword_1ED7E3910 = v4;
}

__CFString *CWFWiFiNetworkSharingErrorDescription(unint64_t a1)
{
  if (a1 > 0xD)
  {
    return 0;
  }

  else
  {
    return off_1E86E6330[a1];
  }
}

id CWFErrorDescription(void *a1, unint64_t a2)
{
  v3 = a1;
  if ([v3 isEqualToString:*MEMORY[0x1E696A768]])
  {
    v4 = SecCopyErrorMessageString(a2, 0);
    if (v4)
    {
      v5 = v4;
      v6 = [(__CFString *)v4 copy];
      CFRelease(v5);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ([v3 isEqualToString:@"com.apple.corewifi.error.apple80211"])
  {
    v7 = Apple80211ErrToStr();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if ([v3 isEqualToString:@"WiFiNetworkSharingError"])
    {
      v8 = CWFWiFiNetworkSharingErrorDescription(a2);
      goto LABEL_9;
    }

    if ([v3 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v7 = strerror(a2);
      if (v7)
      {
LABEL_6:
        v8 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:4];
LABEL_9:
        v6 = v8;
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v6 = 0;
LABEL_13:

  return v6;
}

id CWFErrorWithDescription(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  if (a3)
  {
    v6 = MEMORY[0x1E695DF90];
    v7 = a3;
    a3 = [v6 dictionary];
    [a3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:v5 code:a2 userInfo:a3];

  return v8;
}

id CWFErrorWithUpdatedDescription(void *a1)
{
  v1 = a1;
  v2 = [v1 localizedDescription];

  v3 = v1;
  if (!v2)
  {
    v4 = [v1 domain];
    v5 = CWFErrorDescription(v4, [v1 code]);
    v3 = v1;
    if (v5)
    {
      v6 = [v1 userInfo];
      v7 = [v6 mutableCopy];

      if (!v7)
      {
        v7 = [MEMORY[0x1E695DF90] dictionary];
      }

      [v7 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696A578]];
      v8 = MEMORY[0x1E696ABC0];
      v9 = [v1 domain];
      v3 = [v8 errorWithDomain:v9 code:objc_msgSend(v1 userInfo:{"code"), v7}];
    }
  }

  return v3;
}

void sub_1E0C0FB58()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = qword_1ED7E3920;
  qword_1ED7E3920 = v0;

  [qword_1ED7E3920 setFormatOptions:1907];
  v2 = [MEMORY[0x1E695DFE8] localTimeZone];
  [qword_1ED7E3920 setTimeZone:v2];
}

uint64_t sub_1E0C0FBD8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 is6GHz];
  if (v6 == [v5 is6GHz])
  {
    v8 = [v4 is5GHz];
    if (v8 == [v5 is5GHz])
    {
      v9 = [v4 isDFS];
      if (v9 == [v5 isDFS])
      {
        v10 = 0;
        goto LABEL_10;
      }

      v7 = [v5 isDFS];
    }

    else
    {
      v7 = [v5 is5GHz];
    }
  }

  else
  {
    v7 = [v5 is6GHz];
  }

  if (v7)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

LABEL_10:

  return v10;
}

uint64_t sub_1E0C0FCA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v36 = 0;
  v7 = [*(a1 + 32) SSID];
  v8 = [v5 SSID];
  v33 = sub_1E0C0883C(v7, v8, 4, &v36);

  v9 = [*(a1 + 32) SSID];
  v10 = [v9 length];
  v11 = [v5 SSID];
  v12 = [v11 length];
  v13 = [*(a1 + 32) SSID];
  v14 = [v13 length];
  v34 = v5;
  v15 = [v5 SSID];
  v16 = [v15 length];

  if (v10 >= v12)
  {
    v17 = v14 - v16;
  }

  else
  {
    v17 = v16 - v14;
  }

  v35 = 0;
  v18 = [*(a1 + 32) SSID];
  v19 = [v6 SSID];
  v20 = sub_1E0C0883C(v18, v19, 4, &v35);

  v21 = [*(a1 + 32) SSID];
  v22 = [v21 length];
  v23 = [v6 SSID];
  v24 = [v23 length];
  v25 = [*(a1 + 32) SSID];
  v26 = [v25 length];
  v27 = [v6 SSID];
  v28 = [v27 length];
  if (v22 >= v24)
  {
    v29 = v26 - v28;
  }

  else
  {
    v29 = v28 - v26;
  }

  v30 = v36 > v35;
  if (v36 != v35)
  {
    goto LABEL_12;
  }

  v30 = v33 > v20;
  if (v33 != v20)
  {
    goto LABEL_12;
  }

  v31 = 0;
  if (v33 && v17 != v29)
  {
    v30 = v29 > v17;
LABEL_12:
    if (v30)
    {
      v31 = 1;
    }

    else
    {
      v31 = -1;
    }
  }

  return v31;
}

uint64_t sub_1E0C0FECC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v31 = a3;
  v6 = [v5 BSSID];
  v7 = [v6 substringToIndex:2];
  if (v7)
  {
    v8 = [*(a1 + 32) BSSID];
    v9 = [v8 substringToIndex:2];
    if (v9)
    {
      [v5 BSSID];
      v10 = v29 = v5;
      v11 = [v10 substringToIndex:2];
      v12 = [*(a1 + 32) BSSID];
      v13 = [v12 substringToIndex:2];
      v14 = a1;
      v15 = [v11 isEqual:v13];

      v16 = v15;
      a1 = v14;

      v5 = v29;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [v31 BSSID];
  v18 = [v17 substringToIndex:2];
  if (v18)
  {
    v19 = [*(a1 + 32) BSSID];
    v20 = [v19 substringToIndex:2];
    if (v20)
    {
      [v31 BSSID];
      v21 = v30 = v16;
      v22 = [v21 substringToIndex:2];
      v23 = [*(a1 + 32) BSSID];
      v24 = [v23 substringToIndex:2];
      v25 = [v22 isEqual:v24];

      v16 = v30;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = 1;
  if (!v16)
  {
    v26 = -1;
  }

  if (v25 == v16)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  return v27;
}

uint64_t sub_1E0C100F8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v17 = 0;
  v5 = [a2 BSSID];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 stringByReplacingOccurrencesOfString:@":" withString:&stru_1F5B8FC80];

    v6 = [MEMORY[0x1E696AE88] scannerWithString:v7];
    [v6 scanHexLongLong:&v17];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 BSSID];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 stringByReplacingOccurrencesOfString:@":" withString:&stru_1F5B8FC80];

    v11 = [MEMORY[0x1E696AE88] scannerWithString:v10];

    [v11 scanHexLongLong:&v16];
    v12 = v16;

    v6 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = 1;
  if (v17 >= v12)
  {
    v13 = -1;
  }

  if (v17 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  return v14;
}

uint64_t sub_1E0C10230(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 is6GHz];
  if (v6 == [v5 is6GHz])
  {
    v8 = [v4 is5GHz];
    if (v8 == [v5 is5GHz])
    {
      v9 = [v4 isDFS];
      if (v9 == [v5 isDFS])
      {
        v10 = 0;
        goto LABEL_10;
      }

      v7 = [v5 isDFS];
    }

    else
    {
      v7 = [v5 is5GHz];
    }
  }

  else
  {
    v7 = [v5 is6GHz];
  }

  if (v7)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

LABEL_10:

  return v10;
}

uint64_t sub_1E0C102FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v36 = 0;
  v7 = [*(a1 + 32) SSID];
  v8 = [v5 SSID];
  v33 = sub_1E0C0883C(v7, v8, 4, &v36);

  v9 = [*(a1 + 32) SSID];
  v10 = [v9 length];
  v11 = [v5 SSID];
  v12 = [v11 length];
  v13 = [*(a1 + 32) SSID];
  v14 = [v13 length];
  v34 = v5;
  v15 = [v5 SSID];
  v16 = [v15 length];

  if (v10 >= v12)
  {
    v17 = v14 - v16;
  }

  else
  {
    v17 = v16 - v14;
  }

  v35 = 0;
  v18 = [*(a1 + 32) SSID];
  v19 = [v6 SSID];
  v20 = sub_1E0C0883C(v18, v19, 4, &v35);

  v21 = [*(a1 + 32) SSID];
  v22 = [v21 length];
  v23 = [v6 SSID];
  v24 = [v23 length];
  v25 = [*(a1 + 32) SSID];
  v26 = [v25 length];
  v27 = [v6 SSID];
  v28 = [v27 length];
  if (v22 >= v24)
  {
    v29 = v26 - v28;
  }

  else
  {
    v29 = v28 - v26;
  }

  v30 = v36 > v35;
  if (v36 != v35)
  {
    goto LABEL_12;
  }

  v30 = v33 > v20;
  if (v33 != v20)
  {
    goto LABEL_12;
  }

  v31 = 0;
  if (v33 && v17 != v29)
  {
    v30 = v29 > v17;
LABEL_12:
    if (v30)
    {
      v31 = 1;
    }

    else
    {
      v31 = -1;
    }
  }

  return v31;
}

uint64_t sub_1E0C10524(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v31 = a3;
  v6 = [v5 BSSID];
  v7 = [v6 substringToIndex:2];
  if (v7)
  {
    v8 = [*(a1 + 32) BSSID];
    v9 = [v8 substringToIndex:2];
    if (v9)
    {
      [v5 BSSID];
      v10 = v29 = v5;
      v11 = [v10 substringToIndex:2];
      v12 = [*(a1 + 32) BSSID];
      v13 = [v12 substringToIndex:2];
      v14 = a1;
      v15 = [v11 isEqual:v13];

      v16 = v15;
      a1 = v14;

      v5 = v29;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [v31 BSSID];
  v18 = [v17 substringToIndex:2];
  if (v18)
  {
    v19 = [*(a1 + 32) BSSID];
    v20 = [v19 substringToIndex:2];
    if (v20)
    {
      [v31 BSSID];
      v21 = v30 = v16;
      v22 = [v21 substringToIndex:2];
      v23 = [*(a1 + 32) BSSID];
      v24 = [v23 substringToIndex:2];
      v25 = [v22 isEqual:v24];

      v16 = v30;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = 1;
  if (!v16)
  {
    v26 = -1;
  }

  if (v25 == v16)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  return v27;
}

uint64_t sub_1E0C10750(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v17 = 0;
  v5 = [a2 BSSID];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 stringByReplacingOccurrencesOfString:@":" withString:&stru_1F5B8FC80];

    v6 = [MEMORY[0x1E696AE88] scannerWithString:v7];
    [v6 scanHexLongLong:&v17];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 BSSID];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 stringByReplacingOccurrencesOfString:@":" withString:&stru_1F5B8FC80];

    v11 = [MEMORY[0x1E696AE88] scannerWithString:v10];

    [v11 scanHexLongLong:&v16];
    v12 = v16;

    v6 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = 1;
  if (v17 >= v12)
  {
    v13 = -1;
  }

  if (v17 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  return v14;
}

void sub_1E0C10D9C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) updatedRotationKeyHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) updatedRotationKeyHandler];
    v5 = [*(a1 + 32) rotationKey];
    v6 = [*(a1 + 32) rotationKeyUpdatedAt];
    (v4)[2](v4, v5, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C11088(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) updatedRotationKeyHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) updatedRotationKeyHandler];
    v5 = [*(a1 + 32) rotationKey];
    v6 = [*(a1 + 32) rotationKeyUpdatedAt];
    (v4)[2](v4, v5, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C1139C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) updatedDeviceKeyHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) updatedDeviceKeyHandler];
    v5 = [*(a1 + 32) deviceKey];
    (v4)[2](v4, v5);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C11680(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) updatedSystemSettingHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) updatedSystemSettingHandler];
    v4[2](v4, [*(a1 + 32) systemSetting]);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C11830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1E0C11858(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) allowRotationHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) allowRotationHandler];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E0C11978;
    v8[3] = &unk_1E86E63A8;
    v10 = *(a1 + 56);
    v7 = *(a1 + 40);
    v5 = v7;
    v9 = v7;
    (v4)[2](v4, v8);
  }

  else
  {
    v6 = 0;
    atomic_compare_exchange_strong((*(*(a1 + 56) + 8) + 24), &v6, 1u);
    if (!v6)
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  objc_autoreleasePoolPop(v2);
}

void *sub_1E0C11978(void *result, char a2)
{
  v2 = 0;
  *(*(result[5] + 8) + 24) = a2;
  atomic_compare_exchange_strong((*(result[6] + 8) + 24), &v2, 1u);
  if (!v2)
  {
    return (*(result[4] + 16))();
  }

  return result;
}

void sub_1E0C12240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1E0C12268(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) effectiveHardwareMACAddress];

  if (v3)
  {
    v4 = [*(a1 + 32) effectiveHardwareMACAddress];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E0C12388;
    v8[3] = &unk_1E86E63F8;
    v10 = *(a1 + 56);
    v7 = *(a1 + 40);
    v5 = v7;
    v9 = v7;
    (v4)[2](v4, v8);
  }

  else
  {
    v6 = 0;
    atomic_compare_exchange_strong((*(*(a1 + 56) + 8) + 24), &v6, 1u);
    if (!v6)
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C12388(void *a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  v4 = 0;
  atomic_compare_exchange_strong((*(a1[6] + 8) + 24), &v4, 1u);
  if (!v4)
  {
    (*(a1[4] + 16))();
  }
}

void sub_1E0C13698(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) updatedNetworkIDHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) updatedNetworkIDHandler];
    v4[2](v4, *(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C14B78(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ((*(v3 + 64) & 1) == 0)
  {
    *(v3 + 64) = 1;
    IONotificationPortSetDispatchQueue(*(*(a1 + 32) + 24), *(*(a1 + 32) + 16));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0C14C48(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (*(v3 + 64) == 1)
  {
    *(v3 + 64) = 0;
    IONotificationPortSetDispatchQueue(*(*(a1 + 32) + 24), 0);
  }

  objc_autoreleasePoolPop(v2);
}