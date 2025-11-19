id generateHashForDataAtLocationAsData(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = [NSFileHandle fileHandleForReadingFromURL:v5 error:a3];
  v7 = v6;
  v8 = 0;
  if (a2 && v6)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    CCDigestInit();
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [v7 uarpReadDataUpToLength:0x4000 error:{a3, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44}];
      [v10 bytes];
      [v10 length];
      CCDigestUpdate();
      v11 = [v10 length];

      objc_autoreleasePoolPop(v9);
    }

    while (v11 >> 14);
    OutputSize = CCDigestGetOutputSize();
    v13 = &v15 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    CCDigestFinal();
    if ([v7 uarpCloseAndReturnError:a3])
    {
      v8 = [[NSData alloc] initWithBytes:v13 length:OutputSize];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

id generateHashForDataAtLocation(void *a1, int a2, uint64_t a3)
{
  v3 = generateHashForDataAtLocationAsData(a1, a2, a3);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 bytes];
    v6 = objc_alloc_init(NSMutableString);
    if ([v4 length])
    {
      v7 = 0;
      do
      {
        [v6 appendFormat:@"%02x", v5[v7++]];
      }

      while (v7 < [v4 length]);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id generateBase64HashForDataAtLocation(void *a1, int a2, uint64_t a3)
{
  v3 = generateHashForDataAtLocationAsData(a1, a2, a3);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 base64EncodedStringWithOptions:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void CFDictionaryBuildKeySetInt64(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void CFDictionaryBuildKeySetInt32(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void CFDictionaryBuildKeySetTag(__CFDictionary *a1, const void *a2, const __CFString *a3, const __CFString *a4)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppend(Mutable, a3);
  CFStringAppend(Mutable, @",");
  CFStringAppend(Mutable, a4);
  CFDictionarySetValue(a1, a2, Mutable);

  CFRelease(Mutable);
}

void CFDictionaryBuildKeySetTicket(__CFDictionary *a1, const void *a2, const __CFString *a3, const __CFString *a4)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppend(Mutable, @"@");
  CFStringAppend(Mutable, a3);
  CFStringAppend(Mutable, @",");
  CFStringAppend(Mutable, a4);
  CFDictionarySetValue(a1, a2, Mutable);

  CFRelease(Mutable);
}

void sub_100001C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001C90(uint64_t a1)
{
  if (([*(a1 + 32) personalizeWithServer:*(*(*(a1 + 48) + 8) + 40)] & 1) == 0 && objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "useSSOCredentials"))
  {
    v2 = [*(*(a1 + 32) + 88) showPersonalizationRequiredDialogAndGetResponse];
    v3 = v2;
    v4 = v2;
    FudLog();
    if (v3)
    {
      [*(a1 + 32) freePersonalizationData];
      [*(a1 + 32) personalizeWithServer:*(*(*(a1 + 48) + 8) + 40)];
    }

    else
    {
      [*(*(a1 + 32) + 88) personalizationDone:*(a1 + 40) response:0 error:{FUDError(), "-[FudPersonalizer doPersonalization:]_block_invoke", v4}];
    }
  }

  *(*(*(a1 + 48) + 8) + 40) = 0;
}

void sub_1000029B8(uint64_t a1, uint64_t a2)
{
  v3 = FudLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = os_log_create("com.apple.accessoryupdater.uarp", "legacyAudioUpdater");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Legacy Audio updater started", v8, 2u);
  }

  v4 = AUSandboxPlatformInit(v3, 0);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = +[NSXPCListener serviceListener];
    [v6 setDelegate:v5];
    [v6 resume];
  }

  return v4;
}

id sub_100003004(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceClassesForEAIdentifier:*(a1 + 40)];
  v3 = [v2 mutableCopy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;

  v6 = [*(*(a1 + 32) + 24) firstObject];
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;

  v9 = [*(a1 + 48) copy];
  v10 = *(a1 + 32);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  result = [*(a1 + 32) startFirmwareUpdateStates];
  if ((result & 1) == 0)
  {
    v13 = *(a1 + 32);

    return [v13 updateCompleteForActiveDeviceClass];
  }

  return result;
}

id sub_100003864(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    [*(*(a1 + 32) + 48) updateCompleteForAccessory:?];
  }

  v2 = *(*(a1 + 32) + 16);

  return [v2 findFirmwareWithOptions:0 remote:1];
}

void sub_100003A4C(uint64_t a1)
{
  if (([*(*(a1 + 32) + 32) containsString:@"multiasset"] & 1) != 0 || objc_msgSend(*(*(a1 + 32) + 32), "containsString:", @"ANC"))
  {
    if (![*(*(a1 + 32) + 32) containsString:@"ANC"])
    {
      goto LABEL_7;
    }

    v2 = 96;
  }

  else
  {
    v2 = 88;
  }

  v3 = [*(a1 + 40) objectForKeyedSubscript:@"existingFWVersionOnAccessory"];
  v4 = *(a1 + 32);
  v5 = *(v4 + v2);
  *(v4 + v2) = v3;

LABEL_7:
  if (*(a1 + 48))
  {
    v6 = *(a1 + 32);
    if (*(a1 + 49))
    {
      v12 = [*(v6 + 72) objectForKeyedSubscript:*(v6 + 32)];
      if (v12)
      {
        v7 = [*(a1 + 40) objectForKeyedSubscript:@"newFWVersion"];
        [v12 setPostedFirmwareVersion:v7];

        [*(*(a1 + 32) + 72) setObject:v12 forKeyedSubscript:*(*(a1 + 32) + 32)];
      }

      v8 = *(*(a1 + 32) + 16);
      if (*(a1 + 50) == 1)
      {
        [v8 downloadFirmwareWithOptions:0];
      }

      else
      {
        [v8 prepareFirmwareWithOptions:0];
      }
    }

    else
    {
      v10 = *(v6 + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(*(a1 + 32) + 32);
        *buf = 136315394;
        v14 = "[LegacyAudioAccessory didFind:info:updateAvailable:needsDownload:error:]_block_invoke";
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: No new firmware updates available for %@", buf, 0x16u);
      }

      [*(a1 + 32) updateCompleteForActiveDeviceClass];
    }
  }

  else
  {
    v9 = *(a1 + 32);

    [v9 updateCompleteForActiveDeviceClass];
  }
}

void sub_100003DE4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:*(*(a1 + 32) + 32)];
  v3 = v2;
  if (*(a1 + 40))
  {
    if (v2)
    {
      [v2 setDownloadStatus:1];
      [*(*(a1 + 32) + 72) setObject:v3 forKeyedSubscript:*(*(a1 + 32) + 32)];
    }

    [*(*(a1 + 32) + 16) prepareFirmwareWithOptions:0];
  }

  else
  {
    if (v2)
    {
      [v2 setDownloadStatus:2];
      [*(*(a1 + 32) + 72) setObject:v3 forKeyedSubscript:*(*(a1 + 32) + 32)];
    }

    [*(a1 + 32) updateCompleteForActiveDeviceClass];
  }
}

id sub_100003FFC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1)
  {
    return [v2[2] applyFirmwareWithOptions:0];
  }

  else
  {
    return [v2 updateCompleteForActiveDeviceClass];
  }
}

void sub_100004184(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:*(*(a1 + 32) + 32)];
  if (v4)
  {
    [v4 setActiveFirmwareVersion:*(*(a1 + 32) + 88)];
    [v4 setStagingIterations:&off_100031760];
    v2 = [*(a1 + 40) objectForKeyedSubscript:@"currentSessionTimeTaken"];
    [v4 setStagingDuration:v2];

    if (*(a1 + 48))
    {
      v3 = 6;
    }

    else
    {
      v3 = 8;
    }

    [v4 setStagingStatus:v3];
    [*(*(a1 + 32) + 72) setObject:v4 forKeyedSubscript:*(*(a1 + 32) + 32)];
  }

  [*(*(a1 + 32) + 16) finishWithOptions:0];
}

id sub_100004524(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (!v2)
  {
    v3 = [[FudPersonalizer alloc] initWithDelegate:*(a1 + 32)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    v2 = *(*(a1 + 32) + 56);
  }

  v6 = *(a1 + 40);

  return [v2 doPersonalization:v6];
}

NSError *sub_100006010(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = [[NSString alloc] initWithFormat:a3 arguments:&a9];
  v11 = [NSMutableDictionary dictionaryWithCapacity:1];
  if (v10)
  {
    NSLog(@"%@", v10);
    [(NSMutableDictionary *)v11 setObject:v10 forKey:NSLocalizedDescriptionKey];
  }

  return [NSError errorWithDomain:@"com.apple.MobileAccessoryUpdater.EAFirmwareUpdater" code:a2 userInfo:v11];
}

id sub_100007110(uint64_t a1)
{
  [*(a1 + 32) log:5 format:{@"%s %@", "-[EAFirmwareUpdater personalizationResponse:error:]_block_invoke", objc_msgSend([NSString alloc], "initWithFormat:", @"(%@): personalizationResponse Error from FUD = %@, responseData = %@", objc_msgSend(*(a1 + 32), "protocolString"), *(a1 + 40), *(a1 + 48))}];
  [*(a1 + 32) closeSession];
  v3 = @"Event";
  v4 = @"com.apple.fud.updateFailed";
  return [*(a1 + 32) updateComplete:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary error:{"dictionaryWithObjects:forKeys:count:", &v4, &v3, 1), *(a1 + 40)}];
}

id sub_10000770C(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) openSession];
  if (v2)
  {
    v4 = v2;
    goto LABEL_9;
  }

  result = *v1;
  if ((*(*v1 + 466) & 1) == 0)
  {
    result = [objc_msgSend(result "protocolString")];
    if (result)
    {
      if ([*v1 skipDFUMode])
      {
        return [*v1 log:5 format:{@"%s %@", "-[EAFirmwareUpdater applyFirmware:progress:update:personalization:]_block_invoke", objc_msgSend([NSString alloc], "initWithFormat:", @"Skipping DFU mode as requested for %@", objc_msgSend(*v1, "protocolString"))}];
      }

      [*v1 startReconnectTimer:1];
      BYTE4(v5) = -65;
      LODWORD(v5) = 1073807486;
      [*v1 log:5 format:{@"%s %@", "-[EAFirmwareUpdater applyFirmware:progress:update:personalization:]_block_invoke", objc_msgSend([NSString alloc], "initWithFormat:", @"Sending COMMAND_SetBootloaderEntry to %@", objc_msgSend(*v1, "protocolString")), v5}];
      result = [*v1 writeData:{+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", &v5, 5)}];
      if (result)
      {
        v4 = result;
        sub_100014D58(v1, result);
LABEL_9:
        v6 = @"Event";
        v7 = @"com.apple.fud.updateFailed";
        return [*v1 updateComplete:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary error:{"dictionaryWithObjects:forKeys:count:", &v7, &v6, 1), v4}];
      }
    }
  }

  return result;
}

id sub_100008A34(uint64_t a1)
{
  [*(a1 + 32) setAccessory:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 openSession];
}

void *sub_100008A70(void *result)
{
  if (*(result[4] + 448) == 1)
  {
    v1 = result;
    v2 = @"Event";
    v3 = @"com.apple.fud.updateCompleted";
    *(*(result[5] + 8) + 40) = [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
    return [v1[4] updateComplete:*(*(v1[5] + 8) + 40) error:0];
  }

  return result;
}

id sub_100008CF4(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionID];
  v3 = [objc_msgSend(*(a1 + 40) "accessory")];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) connectionID];
  v6 = [*(a1 + 40) accessory];
  if (v2 == v3)
  {
    v20 = v5;
    [v4 log:5 format:@"disconnection for acc connectionID %u matches current accessory %@"];
    [*(a1 + 40) setAccessory:0];
    v7 = *(a1 + 40);
    v8 = v7[113];
    if (v8 == 3)
    {
      v7[113] = 0;
      [*(a1 + 40) log:5 format:{@"Accessory did not reconnect after staging complete %@", objc_msgSend(*(a1 + 32), "protocolStrings")}];
      v21 = @"Event";
      v22 = @"com.apple.fud.updateCompleted";
      v18 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v17 = *(a1 + 40);
      v16 = 0;
    }

    else
    {
      if (v8)
      {
        [v7 log:5 format:{@"Waiting for acc to reconnect in mode %d - %@", v8, objc_msgSend(*(a1 + 32), "protocolStrings")}];
        return [*(*(a1 + 40) + 432) accessoryDisconnected];
      }

      v23 = @"Event";
      v24 = @"com.apple.fud.updateInterrupted";
      v9 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v10 = *(a1 + 40);
      v16 = sub_100006010(0, 20, @"Device unexpectedly disconnected", v11, v12, v13, v14, v15, v20);
      v17 = v10;
      v18 = v9;
    }

    [v17 updateComplete:v18 error:v16];
  }

  else
  {
    [v4 log:5 format:{@"disconnection for acc connectionID %u does not apply, currently updating %@", v5, v6}];
  }

  return [*(*(a1 + 40) + 432) accessoryDisconnected];
}

id sub_10000921C(uint64_t a1)
{

  return [v1 rangeOfString:a1 options:1];
}

void sub_100009274(dispatch_queue_t queue@<X3>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, void *a5@<X8>)
{
  a2[2] = v6;
  a2[3] = v5;
  a2[4] = a3;
  a2[5] = a4;

  dispatch_async(queue, a5);
}

uint64_t sub_100009E0C(uint64_t a1)
{
  qword_100038F80 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_10000A058(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000A070(void *a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 16);
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
        v8 = [v7 serialNumber];
        v9 = [v8 isEqualToString:a1[5]];

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

id sub_10000A2E8(uint64_t a1)
{
  [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);

  return [v3 addObject:v2];
}

uint64_t sub_10000A4C0(uint64_t a1)
{
  v2 = [NSArray arrayWithArray:*(*(a1 + 32) + 8)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000A5B0(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [v2 isEqualToString:@"PeriodicLaunchActivity"];

  if (v3)
  {
    v4 = *(a1 + 40);

    [v4 sendActiveFirmwareAnalyticsEvent];
  }
}

void sub_10000A6BC(uint64_t a1)
{
  v2 = [*(a1 + 32) serialNumber];

  if (v2)
  {
    v3 = *(a1 + 32);
    v9 = 0;
    v4 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v9];
    v5 = v9;
    v6 = [*(a1 + 40) cachedActiveFirmwareAccessories];
    v7 = [v6 mutableCopy];

    v8 = [*(a1 + 32) serialNumber];
    [v7 setObject:v4 forKeyedSubscript:v8];

    [*(a1 + 40) setCachedActiveFirmwareAccessories:v7];
  }
}

void sub_10000D8DC(id *a1)
{
  if (a1[4])
  {
    v2 = "valid";
  }

  else
  {
    v2 = "nil";
  }

  if (a1[5])
  {
    v3 = "valid";
  }

  else
  {
    v3 = "nil";
  }

  NSLog(@"%s(): newModel=%s fallbackModel=%s error=%@\n", "[iAUPServer setHSModel:fallbackModel:error:]_block_invoke", v2, v3, a1[6]);
  v4 = a1[7];
  if (v4[4] != 5)
  {
    NSLog(@"[HS Callback] Invalid State=%s\n", [v4 serverStateString:?]);
    goto LABEL_53;
  }

  if (a1[6])
  {
    goto LABEL_9;
  }

  v5 = a1[4];
  v6 = v5 && [v5 modelData] && objc_msgSend(a1[4], "modelHash") && objc_msgSend(a1[4], "modelLocale") != 0;
  v7 = a1[5];
  v8 = v7 && [v7 modelHash] && objc_msgSend(a1[5], "modelLocale") != 0;
  v35 = v8;
  v32 = v6;
  if (v6)
  {
    v9 = [objc_msgSend(a1[4] "modelHash")];
    v10 = [objc_msgSend(a1[4] "modelLocale")];
    v34 = [objc_msgSend(a1[4] "modelData")];
    *(a1[7] + 4) = -[FirmwareBundle initWithData:hashData:signatureData:certData:]([FirmwareBundle alloc], "initWithData:hashData:signatureData:certData:", [a1[4] modelData], objc_msgSend(a1[4], "digest"), objc_msgSend(a1[4], "signature"), objc_msgSend(a1[4], "certificate"));
    v11 = *(a1[7] + 4);
    if (!v11)
    {
      NSLog(@"[HS Callback] Failed to create firmware bundle\n", v30);
      goto LABEL_9;
    }

    v36 = v9;
    v33 = v10;
    v12 = (v9 + v10 + 4);
    if ([v11 firmwareImage])
    {
      v13 = "valid";
    }

    else
    {
      v13 = "nil";
    }

    v31 = v13;
    v14 = [*(a1[7] + 4) firmwareImageSize];
    if ([*(a1[7] + 4) hash])
    {
      v15 = "valid";
    }

    else
    {
      v15 = "nil";
    }

    if ([*(a1[7] + 4) signature])
    {
      v16 = "valid";
    }

    else
    {
      v16 = "nil";
    }

    if ([*(a1[7] + 4) certificate])
    {
      v17 = "valid";
    }

    else
    {
      v17 = "nil";
    }

    NSLog(@"FimrwareBundle created [image=%s imageSize=%d hash=%s signature=%s cert=%s productID=%d baseAddress=%d]\n", v31, v14, v15, v16, v17, [*(a1[7] + 4) productIDCode], objc_msgSend(*(a1[7] + 4), "firmwareImageBaseAddress"));
    if (!v35)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v36 = 0;
    v33 = 0;
    v34 = 0;
    v12 = 2;
    if (!v8)
    {
LABEL_35:
      v18 = 0;
      v19 = 0;
      v20 = 0;
      goto LABEL_38;
    }
  }

  v18 = [objc_msgSend(a1[5] "modelHash")];
  v19 = [objc_msgSend(a1[5] "modelLocale")];
  v20 = [objc_msgSend(a1[5] "modelData")];
  v12 = (v18 + v19 + v12 + 2);
LABEL_38:
  if ([a1[4] modelData])
  {
    v21 = "valid";
  }

  else
  {
    v21 = "nil";
  }

  NSLog(@"%s(): newModel=[data[%lu]=%s locale[%lu]=%@ hash[%lu]=%@]\n", "-[iAUPServer setHSModel:fallbackModel:error:]_block_invoke", v34, v21, v33, [a1[4] modelLocale], v36, objc_msgSend(a1[4], "modelHash"));
  if ([a1[5] modelData])
  {
    v22 = "valid";
  }

  else
  {
    v22 = "nil";
  }

  NSLog(@"%s(): fbModel=[data[%lu]=%s locale[%lu]=%@ hash[%lu]=%@]\n", "-[iAUPServer setHSModel:fallbackModel:error:]_block_invoke", v20, v22, v19, [a1[5] modelLocale], v18, objc_msgSend(a1[5], "modelHash"));
  NSLog(@"%s(): returnPayloadSize=%d\n", "[iAUPServer setHSModel:fallbackModel:error:]_block_invoke", v12);
  v23 = malloc_type_calloc(v12, 1uLL, 0xE769B398uLL);
  if (!v23)
  {
    NSLog(@"[HS Callback] Error allocating return payload buf size=%d\n", v12);
LABEL_9:
    [a1[7] setServerState:3];
    v37 = 0;
    [a1[7] sendCommand:99 payload:&v37 payload_length:2];
    [*(a1[7] + 1) handleSessionError:objc_msgSend(a1[6] message:{"code"), @"Failed to retrieve HS Asset Info"}];
    goto LABEL_53;
  }

  v24 = v23;
  *v23 = 0;
  v25 = 2;
  if (v35)
  {
    v26 = 2;
  }

  else
  {
    v26 = 0;
  }

  v23[1] = v26 | v32;
  if (v32)
  {
    v23[2] = v33;
    memcpy(v23 + 3, [objc_msgSend(a1[4] "modelLocale")], v33);
    v24[(v33 + 3)] = v36;
    memcpy(&v24[(v33 + 4)], [objc_msgSend(a1[4] "modelHash")], v36);
    v25 = v33 + 4 + v36;
  }

  if (v35)
  {
    v27 = v25 + 1;
    v24[v25] = v19;
    memcpy(&v24[v27], [objc_msgSend(a1[5] "modelLocale")], v19);
    v28 = v27 + v19;
    v29 = (v27 + v19 + 1);
    v24[v28] = v18;
    memcpy(&v24[v29], [objc_msgSend(a1[5] "modelHash")], v18);
    LOWORD(v25) = v29 + v18;
  }

  [a1[7] sendCommand:97 payload:v24 payload_length:v25];
  [a1[7] setServerState:6];
  free(v24);
LABEL_53:

  *(a1[7] + 5) = 0;
}

void sub_10000E83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000E85C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (CFPreferencesGetAppBooleanValue(@"simulateCoreSpeechNotRespoding", @"com.apple.UARPUpdaterServiceLegacyAudio", 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Simulating CoreSpeech not responding", buf, 2u);
    }
  }

  else
  {
    if (v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Download Model %@", buf, 0xCu);
    }

    if (v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Fallback Model %@", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000EA70;
    v12[3] = &unk_10002CC00;
    v12[4] = v10;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    dispatch_async(v11, v12);
  }
}

void sub_10000EA70(void *a1)
{
  v2 = *(a1[4] + 8);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    [v2 setHSModel:v3 fallbackModel:v4 error:v5];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[HSModel scheduleCoreSpeechTask:minorVersion:downloadedModels:preinstalledModels:]_block_invoke";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: delegate is nil", &v6, 0xCu);
  }
}

void sub_10000EB9C(uint64_t a1)
{
  sub_10000EBF4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CSVoiceTriggerRTModel");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100038F90 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100015138();
    sub_10000EBF4();
  }
}

void sub_10000EBF4()
{
  v1[0] = 0;
  if (!qword_100038F98)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_10000ECF0;
    v1[4] = &unk_10002CAE0;
    v1[5] = v1;
    v2 = off_10002CC70;
    v3 = 0;
    qword_100038F98 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_100038F98)
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

uint64_t sub_10000ECF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100038F98 = result;
  return result;
}

const __CFString *sub_10000ED64(uint64_t a1)
{
  sub_10000EBF4();
  result = objc_getClass("CSCoreSpeechServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100038FA0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100015160();
    return MapPreferenceSuiteToString(v3);
  }

  return result;
}

const __CFString *MapPreferenceSuiteToString(uint64_t a1)
{
  v1 = @"com.apple.accessoryupdaterd";
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return @"com.apple.AUDeveloperSettings";
  }

  else
  {
    return v1;
  }
}

NSDictionary *sub_10000EF10(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  if (v5)
  {
    [v2 setObject:v5 forKeyedSubscript:@"manufacturerName"];
    v4 = *(a1 + 32);
  }

  v6 = *(v4 + 24);
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"modelName"];
    v4 = *(a1 + 32);
  }

  v7 = *(v4 + 32);
  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:@"activeFirmwareVersion"];
    v4 = *(a1 + 32);
  }

  if (*(v4 + 40))
  {
    [v3 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", UARPAccessoryTransportToString()), @"transportType"}];
    v4 = *(a1 + 32);
  }

  v8 = *(v4 + 48);
  if (v8)
  {
    [v3 setObject:v8 forKeyedSubscript:@"countryCode"];
    v4 = *(a1 + 32);
  }

  v9 = *(v4 + 56);
  if (v9)
  {
    [v3 setObject:v9 forKeyedSubscript:@"postedFirmwareVersion"];
    v4 = *(a1 + 32);
  }

  v10 = *(v4 + 64);
  if (v10)
  {
    [v3 setObject:v10 forKeyedSubscript:@"downloadURL"];
    v4 = *(a1 + 32);
  }

  if (*(v4 + 72))
  {
    [v3 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", UARPAnalyticsAssetChannelTypeToString()), @"channel"}];
    v4 = *(a1 + 32);
  }

  v11 = *(v4 + 80);
  if (v11)
  {
    [v3 setObject:UARPAnalyticsDurationToBucket(v11) forKeyedSubscript:@"downloadConsentDuration"];
    v4 = *(a1 + 32);
  }

  v12 = *(v4 + 88);
  if (v12)
  {
    [v3 setObject:v12 forKeyedSubscript:@"downloadUserInitiated"];
    v4 = *(a1 + 32);
  }

  if (*(v4 + 96))
  {
    [v3 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", UARPAnalyticsAssetDownloadStatusToString()), @"downloadStatus"}];
    v4 = *(a1 + 32);
  }

  v13 = *(v4 + 104);
  if (v13)
  {
    [v3 setObject:v13 forKeyedSubscript:@"stagingUserInitiated"];
    v4 = *(a1 + 32);
  }

  v14 = *(v4 + 112);
  if (v14)
  {
    [v3 setObject:UARPAnalyticsDurationToBucket(v14) forKeyedSubscript:@"stagingDuration"];
    v4 = *(a1 + 32);
  }

  v15 = *(v4 + 120);
  if (v15)
  {
    [v3 setObject:UARPAnalyticsIterationCountToBucket(v15) forKeyedSubscript:@"stagingIterations"];
    v4 = *(a1 + 32);
  }

  if (*(v4 + 128))
  {
    [v3 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", UARPAnalyticsStagingStatusToString()), @"stagingStatus"}];
    v4 = *(a1 + 32);
  }

  v16 = *(v4 + 136);
  if (v16)
  {
    [v3 setObject:v16 forKeyedSubscript:@"stagingVendorError"];
    v4 = *(a1 + 32);
  }

  v17 = *(v4 + 144);
  if (v17)
  {
    [v3 setObject:v17 forKeyedSubscript:@"applyUserInitiated"];
    v4 = *(a1 + 32);
  }

  v18 = *(v4 + 152);
  if (v18)
  {
    [v3 setObject:UARPAnalyticsDurationToBucket(v18) forKeyedSubscript:@"applyDuration"];
    v4 = *(a1 + 32);
  }

  if (*(v4 + 160))
  {
    [v3 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", UARPAnalyticsApplyStatusToString()), @"applyStatus"}];
    v4 = *(a1 + 32);
  }

  v19 = *(v4 + 168);
  if (v19)
  {
    [v3 setObject:v19 forKeyedSubscript:@"applyVendorError"];
    v4 = *(a1 + 32);
  }

  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", *(v4 + 8)), @"share3rdParty"}];

  return [NSDictionary dictionaryWithDictionary:v3];
}

uint64_t AUSandboxPlatformInitWithBundleIdentifierHomeDirectory(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = &_os_log_default;
    v2 = &_os_log_default;
  }

  v3 = v1;
  bzero(v7, 0x400uLL);
  v4 = v3;
  if (_set_user_dir_suffix())
  {
    if (confstr(65537, v7, 0x400uLL))
    {
      v5 = 0;
      goto LABEL_11;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100015208();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100015188();
  }

  v5 = 1;
LABEL_11:

  return v5;
}

void sub_10000F778(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

NSDictionary *sub_10000F878(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  if (v5)
  {
    [v2 setObject:v5 forKeyedSubscript:@"manufacturerName"];
    v4 = *(a1 + 32);
  }

  v6 = *(v4 + 24);
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"modelName"];
    v4 = *(a1 + 32);
  }

  v7 = *(v4 + 32);
  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:@"countryCode"];
    v4 = *(a1 + 32);
  }

  v8 = *(v4 + 40);
  if (v8)
  {
    [v3 setObject:v8 forKeyedSubscript:@"downloadURL"];
    v4 = *(a1 + 32);
  }

  v9 = *(v4 + 48);
  if (v9)
  {
    [v3 setObject:v9 forKeyedSubscript:@"activeFirmwareVersion"];
    v4 = *(a1 + 32);
  }

  if (*(v4 + 56))
  {
    [v3 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", UARPAccessoryTransportToString()), @"transportType"}];
    v4 = *(a1 + 32);
  }

  if (*(v4 + 64))
  {
    [v3 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", UARPAnalyticsAssetChannelTypeToString()), @"channel"}];
    v4 = *(a1 + 32);
  }

  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", *(v4 + 8)), @"share3rdParty"}];

  return [NSDictionary dictionaryWithDictionary:v3];
}

id sub_1000108B8()
{
  v4 = *(v1 - 96);
  v3 = *(v1 - 88);

  return [v0 pathForResource:v3 ofType:v4];
}

void sub_100011A1C(id a1)
{
  v1 = "$SIDEBUILD_PARENT_TRAIN";
  if (![[NSString isEqualToString:@"%s" stringWithFormat:?], "isEqualToString:", &stru_10002DC80]&& ![[NSString isEqualToString:@"%s" stringWithFormat:?], "isEqualToString:", @"$SIDEBUILD_PARENT_TRAIN"]|| (v1 = "LuckB", ![[NSString isEqualToString:@"%s" stringWithFormat:?], "isEqualToString:", &stru_10002DC80]) && ![[NSString isEqualToString:@"%s" stringWithFormat:?], "isEqualToString:", @"$RC_RELEASE"])
  {
    qword_100038FB0 = v1;
  }
}

int64_t sub_100012018(id a1, NSURL *a2, NSURL *a3)
{
  v6 = 0;
  [(NSURL *)a2 getResourceValue:&v6 forKey:NSURLLocalizedNameKey error:0];
  v5 = 0;
  [(NSURL *)a3 getResourceValue:&v5 forKey:NSURLLocalizedNameKey error:0];
  return [v5 compare:v6];
}

id sub_100012648(uint64_t a1, void *a2)
{
  v4 = +[NSMutableDictionary dictionary];
  v5 = *(a1 + 32);
  if (*(v5 + 72) == 1)
  {
    [v4 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"SilentUpdateNoUI"}];
    v5 = *(a1 + 32);
  }

  if ([*(v5 + 16) currentFirmwareVersionOnAcc])
  {
    [v4 setObject:objc_msgSend(*(*(a1 + 32) + 16) forKey:{"currentFirmwareVersionOnAcc"), @"existingFWVersionOnAccessory"}];
  }

  if (a2)
  {
    v6 = [objc_msgSend(a2 "userInfo")];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = @"GeneralError";
    }

    [v4 setObject:v7 forKey:@"error"];
    [v4 setObject:@"FailureStateFind" forKey:@"failureState"];
  }

  else if ([*(*(a1 + 32) + 16) assetAvailable])
  {
    if ([*(*(a1 + 32) + 16) firmwareVersionAvailable])
    {
      [v4 setObject:objc_msgSend(*(*(a1 + 32) + 16) forKey:{"firmwareVersionAvailable"), @"newFWVersion"}];
    }

    if (*(a1 + 48) == 1)
    {
      v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%@", @"/var/run/fud/seed/", [*(*(a1 + 32) + 16) modelNumber]);
      [*(*(a1 + 32) + 8) log:7 format:{@"%s: Consent Required for updating %@", "-[EAAccessoryUpdater findFirmwareWithOptions:remote:]_block_invoke", *(*(a1 + 32) + 24)}];
      [v4 setValue:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 0), @"SilentUpdateNoUI"}];
      [v4 setValue:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"SeedConsentRequired"}];
      [v4 setValue:*(a1 + 40) forKey:@"AccessoryName"];
      [v4 setValue:v8 forKey:@"SeedUpdateDeclinedPath"];
      if ([*(*(a1 + 32) + 16) serialNumber])
      {
        [v4 setValue:objc_msgSend(*(*(a1 + 32) + 16) forKey:{"serialNumber"), @"SerialNumber"}];
      }
    }
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 8);
  v11 = [*(v9 + 16) assetAvailable];
  if ([*(*(a1 + 32) + 16) assetAvailable])
  {
    v12 = [*(*(a1 + 32) + 16) assetDownloaded] ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return [v10 didFind:a2 == 0 info:v4 updateAvailable:v11 needsDownload:v12 error:a2];
}

void sub_100012A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100012A6C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [objc_msgSend(a2 "userInfo")];
    v9[0] = @"failureState";
    v9[1] = @"error";
    v5 = @"GeneralError";
    if (v4)
    {
      v5 = v4;
    }

    v10[0] = @"FailureStateDownload";
    v10[1] = v5;
    *(*(*(a1 + 40) + 8) + 40) = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
    if (*(a1 + 48) == 1)
    {
      [*(*(a1 + 32) + 16) purgeAsset];
    }
  }

  else if (*(*(a1 + 32) + 72) == 1)
  {
    v7 = @"SilentUpdateNoUI";
    v8 = [NSNumber numberWithBool:1];
    *(*(*(a1 + 40) + 8) + 40) = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  return [*(*(a1 + 32) + 8) didDownload:a2 == 0 info:*(*(*(a1 + 40) + 8) + 40) error:a2];
}

id sub_100012E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) consentRequired])
  {
    [*(*(a1 + 32) + 16) purgeAsset];
  }

  v6 = *(*(a1 + 32) + 8);

  return [v6 didApply:a3 == 0 info:a2 error:a3];
}

id sub_100012E7C(uint64_t a1, double a2)
{
  result = [*(*(a1 + 32) + 8) log:7 format:{@"Update Progress: %f", *&a2}];
  v5 = *(a1 + 32);
  if ((*(v5 + 48) & 1) != 0 || (*(v5 + 72) & 1) == 0)
  {
    v6 = *(v5 + 8);

    return [v6 progress:a2];
  }

  return result;
}

id sub_100012F0C(uint64_t a1, void *a2)
{
  [*(*(a1 + 32) + 8) log:7 format:{@"Update info: %@", a2}];
  v4 = [a2 objectForKey:@"Event"];
  v5 = @"com.apple.fud.updateStarted";
  if (([v4 isEqualToString:@"com.apple.fud.updateStarted"] & 1) != 0 || (v5 = @"com.apple.fud.updateResumed", result = objc_msgSend(v4, "isEqualToString:", @"com.apple.fud.updateResumed"), result))
  {
    v7 = *(*(a1 + 32) + 8);

    return [v7 reportAnalytics:v5 info:a2];
  }

  return result;
}

id sub_100012FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return sub_100016288(a1);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  if (!a2)
  {
    return sub_1000162CC(v3, *(v3 + 8));
  }

  v5 = *(v3 + 8);

  return [v5 personalizationRequest:a2];
}

id sub_100013244(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) isEqual:{+[NSURL URLWithString:](NSURL, "URLWithString:", a2)}];
  if (result)
  {
    result = [*(*(a1 + 40) + 8) log:7 format:{@"%s: Pointing to Seed Location for %@, need to prompt for Consent", "-[EAAccessoryUpdater consentRequired]_block_invoke", *(*(a1 + 40) + 24)}];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return result;
}

_UNKNOWN **UARPAnalyticsDurationToBucket(void *a1)
{
  v1 = [a1 unsignedIntegerValue];
  v2 = 0;
  while (v1 > qword_100022158[v2])
  {
    if (++v2 == 73)
    {
      return &off_1000317C0;
    }
  }

  return [NSNumber numberWithUnsignedInteger:?];
}

_UNKNOWN **UARPAnalyticsIterationCountToBucket(void *a1)
{
  v1 = [a1 unsignedIntegerValue];
  if (v1 > 0x32)
  {
    return &off_1000317D8;
  }

  return [NSNumber numberWithUnsignedInteger:v1];
}

id sub_10001367C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = FUDError();
  FudLog();
  v7 = *(a3 + 88);

  return [v7 personalizationDone:a4 response:0 error:v6];
}

void sub_1000136F8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 136315394;
  v4 = "[LegacyAudioAccessory startFirmwareUpdateStates]";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Failed to create EAAccessoryUpdater for %@", &v3, 0x16u);
}

id sub_100013EA0(uint64_t a1, void *a2)
{
  result = [a2 attributes];
  if (result)
  {
    v4 = result;
    result = [result objectForKey:@"FirmwareVersionMajor"];
    if (result)
    {
      v5 = [result unsignedLongLongValue];
      result = [v4 objectForKey:@"FirmwareVersionMinor"];
      if (result)
      {
        v6 = [result unsignedLongLongValue];
        result = [v4 objectForKey:@"FirmwareVersionRelease"];
        if (result)
        {
          v7 = [result unsignedLongLongValue];
          result = [v4 objectForKey:@"FormatVersion"];
          if (result)
          {
            v8 = [result unsignedLongLongValue];
            [*(a1 + 32) log:5 format:{@"%s %@", "-[EAFirmwareUpdater queryPredicate]_block_invoke", objc_msgSend([NSString alloc], "initWithFormat:", @"Applying predicate: ((majorVersion > %llu) ||                                ((majorVersion == %llu) && ((minorVersion > %llu) || ((minorVersion == %llu) && (releaseVersion > %llu))))) &&                                (formatVersion == %d))", *(*(a1 + 32) + 152), *(*(a1 + 32) + 152), *(*(a1 + 32) + 160), *(*(a1 + 32) + 160), *(*(a1 + 32) + 168), 1}]);
            result = 0;
            if (v8 <= *(a1 + 40))
            {
              v9 = *(a1 + 32);
              v10 = v9[19];
              if (v5 > v10)
              {
                return 1;
              }

              if (v5 == v10)
              {
                v11 = v9[20];
                if (v6 > v11 || v6 == v11 && v7 > v9[21])
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_100014E00(void ***a1)
{
  v1 = sub_1000091E0(a1);
  v1[1] = 3221225472;
  sub_100009274(v4, v1, v2, v3, v5);
}

void sub_100014E40(void ***a1)
{
  v1 = sub_1000091E0(a1);
  v1[1] = 3221225472;
  sub_100009274(v4, v1, v2, v3, v5);
}

uint64_t sub_100014E80(NSObject **a1, void ***a2, void **a3, void **a4)
{
  v5 = *a1;
  *a2 = _NSConcreteStackBlock;
  a2[1] = 3221225472;
  a2[2] = sub_100008CF4;
  a2[3] = &unk_10002CA00;
  a2[4] = a3;
  a2[5] = a4;
  dispatch_async(v5, a2);
  return objc_sync_exit(a4);
}

void sub_100014EF4(uint64_t a1, id *a2)
{
  v2 = [*a2 activeAccessories];
  sub_100009C2C();
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Added accessory %@, active accessories %@", v3, 0x16u);
}

void sub_100014F90(uint64_t a1, id *a2)
{
  v2 = [*a2 activeAccessories];
  sub_100009C2C();
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Removed accessory %@, active accessories %@", v3, 0x16u);
}

void sub_10001502C(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Invalid accessoryData error %@", buf, 0xCu);
}

id sub_1000150F4(NSString *a1, _BYTE *a2, void *a3)
{
  NSLog(a1);
  *a2 = -1;
  return [a3 sendCommand:99 payload:a2 payload_length:1];
}

void sub_10001572C(uint64_t a1)
{
  v1 = 136315394;
  v2 = "[FirmwareBundle initWithURL:hashData:signatureData:certData:]";
  v3 = 2112;
  v4 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Invalid firmwareURL %@", &v1, 0x16u);
}

id copyPlistDeviceEntryFromDeviceClass(void *a1)
{
  v2 = +[NSBundle mainBundle];
  if (v2)
  {
    v3 = v2;
    if (![MGCopyAnswer() BOOLValue])
    {
      goto LABEL_11;
    }

    if ([a1 containsString:@"com.apple.UARP."])
    {
      v4 = @"/AppleInternal/usr/local/misc/SupportedAccessories-iAUPLegacyAudio.plist";
    }

    else
    {
      v4 = @"/AppleInternal/usr/local/misc/SupportedAccessories-iAUP.plist";
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Use Alternate Accessory List from %@", buf, 0xCu);
    }

    v5 = [[NSDictionary dictionaryWithContentsOfURL:?], "objectForKeyedSubscript:", @"MobileAccessoryUpdaterProperties"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Loaded Alternate Accessory List from %@", buf, 0xCu);
    }

    if (!v5)
    {
LABEL_11:
      v5 = [(NSBundle *)v3 objectForInfoDictionaryKey:@"MobileAccessoryUpdaterProperties"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Loaded Native iAUP Accessory List", buf, 2u);
      }
    }

    v2 = [v5 objectForKey:@"MatchingDevices"];
    if (v2)
    {
      v6 = [(NSBundle *)v2 filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"DeviceClass = %@", a1]];
      if (v6 && (v7 = v6, [v6 count]))
      {
        v2 = [v7 objectAtIndexedSubscript:0];
      }

      else
      {
        NSLog(@"huh? deviceClass %@ not found", a1);
        v2 = 0;
      }
    }
  }

  return [(NSBundle *)v2 copy];
}

id isSkipDFUModeInBundleInfoPlist(id result)
{
  if (result)
  {
    v1 = [result objectForKey:@"skipDFUMode"];

    return [v1 BOOLValue];
  }

  return result;
}

id isByteEscapingDisabledInBundleInfoPlist(id result)
{
  if (result)
  {
    v1 = [result objectForKey:@"disableByteEscaping"];

    return [v1 BOOLValue];
  }

  return result;
}

id isSkipReconnectBundleInfoPlist(id result)
{
  if (result)
  {
    v1 = [result objectForKey:@"skipReconnect"];

    return [v1 BOOLValue];
  }

  return result;
}

id isSkipMinimumFirmwareVersionCheckInOptions(id result)
{
  if (result)
  {
    v1 = [result objectForKey:@"skipMinimumFirmwareVersionCheck"];

    return [v1 BOOLValue];
  }

  return result;
}

NSError *sub_1000160F0(NSError *result, uint64_t a2, void *a3, NSError **a4, _BYTE *a5)
{
  if (a4)
  {
    result->super.isa = NSLocalizedDescriptionKey;
    *a3 = a2;
    result = [NSError errorWithDomain:@"com.apple.EAAccessoryUpdater" code:-1 userInfo:[NSDictionary dictionaryWithObjects:"dictionaryWithObjects:forKeys:count:" forKeys:? count:?]];
    *a4 = result;
  }

  *a5 = 0;
  return result;
}

id sub_100016224(void **a1)
{
  v1 = *a1;
  v2 = [NSError errorWithDomain:@"com.apple.EAAccessoryUpdater" code:-1 userInfo:0];

  return [v1 didFind:0 info:0 updateAvailable:0 needsDownload:0 error:v2];
}