void sub_10004DB88(unsigned __int8 *a1, uint64_t a2, unsigned int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
    goto LABEL_16;
  }

  v6 = objc_alloc_init(NSAutoreleasePool);
  if (a3 >= 8)
  {
LABEL_16:
    __break(0x550Au);
    return;
  }

  v9 = v6;
  if (a3 > 4)
  {
    sub_10004BFF8(a1, a2);
  }

  else
  {
    v7 = **(&off_100115560 + a3);
    sub_10004BFF8(a1, a2);
    if (v7)
    {
      if (!a2)
      {
        v8 = "NULL";
        goto LABEL_11;
      }

      if ((a2 & 7) == 0)
      {
        v8 = (*(*a2 + 200))(a2);
LABEL_11:
        sub_1000DDE90(0xCu, @"Video %@ setting set to %@ for port %s", @"TV Signal", v7, v8);
        sub_10004D450(a2, [kIAPVideoTVOutSignal UTF8String], objc_msgSend(v7, "UTF8String"));
        goto LABEL_12;
      }

      goto LABEL_15;
    }
  }

LABEL_12:
}

uint64_t sub_10004DCC4(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = objc_alloc_init(NSAutoreleasePool);
    if (a2 && (v7 = 0, sub_10004D674([kIAPVideoTVOutSignal UTF8String], &v7), v7))
    {
      v4 = [NSString alloc];
      v5 = [v4 initWithUTF8String:v7];
      if ([v5 caseInsensitiveCompare:kIAPVideoTVOutSignal_None])
      {
        if ([v5 caseInsensitiveCompare:kIAPVideoTVOutSignal_Composite])
        {
          if ([v5 caseInsensitiveCompare:kIAPVideoTVOutSignal_SVideo])
          {
            if ([v5 caseInsensitiveCompare:kIAPVideoTVOutSignal_Component])
            {
              v6 = 4 * ([v5 caseInsensitiveCompare:kIAPVideoTVOutSignal_DisplayPort] == 0);
            }

            else
            {
              v6 = 3;
            }
          }

          else
          {
            v6 = 2;
          }
        }

        else
        {
          v6 = 1;
        }
      }

      else
      {
        v6 = 0;
      }

      free(v7);
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }

  return result;
}

void sub_10004DE0C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_15;
  }

  v5 = objc_alloc_init(NSAutoreleasePool);
  if (a3 >= 2)
  {
LABEL_16:
    __break(0x550Au);
    return;
  }

  v6 = &kIAPVideoTVOutCaptioning_On;
  if ((a3 & 1) == 0)
  {
    v6 = &kIAPVideoTVOutCaptioning_Off;
  }

  v7 = *v6;
  if (!*v6)
  {
    goto LABEL_12;
  }

  v9 = v5;
  if (!a2)
  {
    v8 = "NULL";
    goto LABEL_11;
  }

  if ((a2 & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
    goto LABEL_16;
  }

  v8 = (*(*a2 + 200))(a2);
LABEL_11:
  sub_1000DDE90(0xCu, @"Video %@ setting set to %@ for port %s", @"Closed Captioning", v7, v8);
  sub_10004D450(a2, [kIAPVideoTVOutCaptioning UTF8String], objc_msgSend(v7, "UTF8String"));
  v5 = v9;
LABEL_12:
}

uint64_t sub_10004DF2C(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = objc_alloc_init(NSAutoreleasePool);
    if (a2 && (v7 = 0, sub_10004D674([kIAPVideoTVOutCaptioning UTF8String], &v7), v7))
    {
      v4 = [NSString alloc];
      v5 = [v4 initWithUTF8String:v7];
      if ([v5 caseInsensitiveCompare:kIAPVideoTVOutCaptioning_On])
      {
        [v5 caseInsensitiveCompare:kIAPVideoTVOutCaptioning_Off];
        v6 = 0;
      }

      else
      {
        v6 = 1;
      }

      free(v7);
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }

  return result;
}

void sub_10004E00C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_15;
  }

  v5 = objc_alloc_init(NSAutoreleasePool);
  if (a3 >= 2)
  {
LABEL_16:
    __break(0x550Au);
    return;
  }

  v6 = &kIAPVideoTVOutFitSystem_ScaleToFit;
  if ((a3 & 1) == 0)
  {
    v6 = &kIAPVideoTVOutFitSystem_ScaleToFill;
  }

  v7 = *v6;
  if (!*v6)
  {
    goto LABEL_12;
  }

  v9 = v5;
  if (!a2)
  {
    v8 = "NULL";
    goto LABEL_11;
  }

  if ((a2 & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
    goto LABEL_16;
  }

  v8 = (*(*a2 + 200))(a2);
LABEL_11:
  sub_1000DDE90(0xCu, @"Video %@ setting set to %@ for port %s", @"TV fit", v7, v8);
  sub_10004D450(a2, [kIAPVideoTVOutFitSystem UTF8String], objc_msgSend(v7, "UTF8String"));
  v5 = v9;
LABEL_12:
}

uint64_t sub_10004E12C(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = objc_alloc_init(NSAutoreleasePool);
    if (a2 && (v7 = 0, sub_10004D674([kIAPVideoTVOutFitSystem UTF8String], &v7), v7))
    {
      v4 = [NSString alloc];
      v5 = [v4 initWithUTF8String:v7];
      if ([v5 caseInsensitiveCompare:kIAPVideoTVOutFitSystem_ScaleToFill])
      {
        [v5 caseInsensitiveCompare:kIAPVideoTVOutFitSystem_ScaleToFit];
        v6 = 1;
      }

      else
      {
        v6 = 0;
      }

      free(v7);
    }

    else
    {
      v6 = 1;
    }

    return v6;
  }

  return result;
}

void sub_10004E20C(unsigned __int8 *a1, uint64_t a2, unsigned int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  if (a3 >= 4)
  {
LABEL_8:
    __break(0x550Au);
    return;
  }

  dword_10012C6AC = a3;
  sub_10004BFF8(a1, a2);

  sub_10004D1C8(a2);
}

uint64_t sub_10004E268(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = dword_10012C6AC;
  if (dword_10012C6AC >= 4)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

void sub_10004E290(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_14;
  }

  v5 = objc_alloc_init(NSAutoreleasePool);
  v6 = &kIAPVideoTVOutReservedForiPodOut_YES;
  if (!a3)
  {
    v6 = &kIAPVideoTVOutReservedForiPodOut_NO;
  }

  v7 = *v6;
  if (!*v6)
  {
    goto LABEL_11;
  }

  v9 = v5;
  if (!a2)
  {
    v8 = "NULL";
    goto LABEL_10;
  }

  if ((a2 & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    return;
  }

  v8 = (*(*a2 + 200))(a2);
LABEL_10:
  sub_1000DDE90(0xCu, @"Video %@ setting set to %@ for port %s", @"iPod Out video reserved", v7, v8);
  sub_10004D450(a2, [kIAPVideoTVOutReservedForiPodOut UTF8String], objc_msgSend(v7, "UTF8String"));
  v5 = v9;
LABEL_11:
}

void sub_10004E3A4(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_14;
  }

  v5 = objc_alloc_init(NSAutoreleasePool);
  v6 = &kIAPVideoTVOutReservedForRemoteUI_YES;
  if (!a3)
  {
    v6 = &kIAPVideoTVOutReservedForRemoteUI_NO;
  }

  v7 = *v6;
  if (!*v6)
  {
    goto LABEL_11;
  }

  v9 = v5;
  if (!a2)
  {
    v8 = "NULL";
    goto LABEL_10;
  }

  if ((a2 & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    return;
  }

  v8 = (*(*a2 + 200))(a2);
LABEL_10:
  sub_1000DDE90(0xCu, @"Video %@ setting set to %@ for port %s", @"RemoteUI video reserved", v7, v8);
  sub_10004D450(a2, [kIAPVideoTVOutReservedForRemoteUI UTF8String], objc_msgSend(v7, "UTF8String"));
  v5 = v9;
LABEL_11:
}

tm *sub_10004E4B8(tm *result, _WORD *a2, char *a3)
{
  if (!result || (result & 7) != 0 || (v7 = 0xAAAAAAAAAAAAAAAALL, time(&v7), (result = localtime(&v7)) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_11;
  }

  v5 = result->tm_gmtoff / 60;
  if (v5 != v5)
  {
LABEL_11:
    __break(0x5507u);
    return result;
  }

  *a2 = v5;
  if (result->tm_isdst)
  {
    v6 = 60;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_10004E558(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_10;
  }

  byte_10012C6B0 = a3;
  if (!a2)
  {
    v6 = "NULL";
    goto LABEL_7;
  }

  if ((a2 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    return;
  }

  v6 = (*(*a2 + 200))(a2);
LABEL_7:
  sub_1000DDE90(0xCu, @"%s:%s-%d _videoOutAuthorized = %d for port %s", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "SetVideoOutAuthorized", 1280, a3, v6);
  sub_10004BFF8(a1, a2);

  sub_10004D1C8(a2);
}

BOOL sub_10004E638(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    return byte_10012C6B0 != 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004E65C(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    if (!a2)
    {
      NSLog(@"ERROR - %s:%s - %d need a transport", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "GetUSBMode", 1341);
      return 0;
    }

    if ((a2 & 7) == 0)
    {
      v3 = [[NSNumber alloc] initWithInt:*(a2 + 84)];
      v4 = [objc_msgSend(+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];

      if (v4 && [v4 service])
      {
        v5 = *(a2 + 80);
        IOAccessoryPortGetServiceWithPort();
        IOAccessoryPortGetManagerService();
        USBConnectType = IOAccessoryManagerGetUSBConnectType();
        if (USBConnectType)
        {
          NSLog(@"ERROR - %s:%s - %d usb connection query failed 0x%x", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "GetUSBMode", 1333, USBConnectType);
        }
      }

      else
      {
        NSLog(@"ERROR - %s:%s - %d need an port manager (%hhx)", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "GetUSBMode", 1337, a2);
      }

      return 0;
    }
  }

  __break(0x5516u);
  __break(0x550Au);
  return result;
}

uint64_t sub_10004E7D4(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  if (!a2)
  {
    NSLog(@"ERROR - %s:%s - %d need a transport", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "SetUSBMode", 1406);
    return 1;
  }

  if ((a2 & 7) != 0)
  {
LABEL_19:
    __break(0x5516u);
    goto LABEL_20;
  }

  v5 = [[NSNumber alloc] initWithInt:*(a2 + 84)];
  v6 = [objc_msgSend(+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];

  if (!v6 || ![v6 service])
  {
    NSLog(@"ERROR - %s:%s - %d need an port manager (%hhx)", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "SetUSBMode", 1402, a2);
    return 1;
  }

  v7 = *(a2 + 80);
  IOAccessoryPortGetServiceWithPort();
  ManagerService = IOAccessoryPortGetManagerService();
  connect = 0;
  v9 = IOServiceOpen(ManagerService, mach_task_self_, 0, &connect);
  if (v9 || (result = connect) == 0)
  {
    NSLog(@"ERROR - %s:%s - %d Couldn't connect to port (%hhx) because of error 0x%x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "SetUSBMode", 1398, a2, v9);
    return 1;
  }

  if (a3 < 8)
  {
    v10 = IOAccessoryManagerConfigureUSBMode();
    if (v10 != -536870183)
    {
      if (v10)
      {
        NSLog(@"ERROR - %s:%s - %d unable to set USB mode 0x%x", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "SetUSBMode", 1394, v10);
      }
    }

    IOServiceClose(connect);
    return 1;
  }

LABEL_20:
  __break(0x550Au);
  return result;
}

void sub_10004E9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
LABEL_12:
    __break(0x550Au);
    return;
  }

  if (!a2)
  {
    NSLog(@"ERROR - %s:%s - %d need a transport", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "SetAudioIn", 1427);
    return;
  }

  if (!*(a1 + 144))
  {
    *(a1 + 144) = objc_alloc_init(NSMutableDictionary);
  }

  v6 = [NSNumber alloc];
  if (a3 >= 4)
  {
    goto LABEL_12;
  }

  v7 = [v6 initWithUnsignedInt:a3];
  v8 = [[NSNumber alloc] initWithUnsignedInteger:a2];
  [*(a1 + 144) setObject:v7 forKey:v8];
}

void *sub_10004EAB0(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      if (a2 && result[18])
      {
        v3 = [[NSNumber alloc] initWithUnsignedInteger:a2];
        v4 = [objc_msgSend(v2[18] objectForKey:{v3), "unsignedIntValue"}];

        if (v4 < 4)
        {
          return v4;
        }

        __break(0x550Au);
      }

      return 0;
    }
  }

  __break(0x5516u);
  return result;
}

BOOL sub_10004EB34(_BOOL8 result, std::string *a2)
{
  if (!result || result & 7)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = objc_alloc_init(NSAutoreleasePool);
    v4 = SBSCopyNowPlayingAppBundleIdentifier();
    v5 = v4;
    if (v4)
    {
      std::string::assign(a2, [v4 UTF8String]);
      CFRelease(v5);
    }

    return v5 != 0;
  }

  return result;
}

BOOL sub_10004EBB4(_BOOL8 result, std::string *a2)
{
  if (!result || result & 7)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = SBSCopyNowPlayingAppBundleIdentifier();
    if (v3)
    {
      v4 = [+[LSApplicationProxy applicationProxyForIdentifier:](LSApplicationProxy applicationProxyForIdentifier:{v3), "localizedNameForContext:", 0}];
      if (v4)
      {
        v5 = v4;
      }

      else
      {
        v5 = v3;
      }

      std::string::assign(a2, [[NSString stringWithString:?]]);
      CFRelease(v3);
    }

    return v3 != 0;
  }

  return result;
}

uint64_t sub_10004EC40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_35;
  }

  v7 = SBSCopyFrontmostApplicationDisplayIdentifier();
  v20 = 0;
  SBSSpringBoardServerPort();
  SBGetScreenLockStatus();
  if (!v7 || (v21.length = CFStringGetLength(v7), v21.location = 0, CFStringCompareWithOptions(v7, @"com.apple.Music", v21, 1uLL) == kCFCompareEqualTo) || (v22.length = CFStringGetLength(v7), v22.location = 0, CFStringCompareWithOptions(v7, @"com.apple.mobileipod", v22, 1uLL) == kCFCompareEqualTo) || (v23.length = CFStringGetLength(v7), v8 = 1, v23.location = 0, CFStringCompareWithOptions(v7, @"com.apple.videos", v23, 1uLL) == kCFCompareEqualTo))
  {
    v8 = 0;
  }

  v9 = v8;
  sub_1000DDE90(3u, @"Launch Application (iAP1), launchToBackground=%d (frontMostApp = %@),  screenLocked = %d, passcodeRequired = %d"), v8, v7, 0, v20);
  v10 = objc_autoreleasePoolPush();
  v11 = [NSString stringWithUTF8String:a6];
  if (v11)
  {
    v12 = v11;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10004EF2C;
    v19[3] = &unk_100111EA8;
    v19[4] = v11;
    v13 = [objc_msgSend(objc_msgSend(qword_10012BBD0 "foregroundAppBundleIDs")];
    v14 = v9 ^ 1;
    if (!v13)
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      sub_1000DDE90(3u, @"Attempting to background launch same application in foreground", v18);
LABEL_23:
      v15 = 1;
LABEL_31:
      NSLog(@"Launch Application (iAP1), launching app %@, wasSuccessful=%d", v12, v15);
      goto LABEL_32;
    }

    if (v9)
    {
      if (!MKBDeviceUnlockedSinceBoot())
      {
        v17 = MKBDeviceUnlockedSinceBoot();
        sub_1000DDE90(3u, @"Restricted from launching = %d", v17);
        v15 = 0;
        goto LABEL_31;
      }

      if (qword_10012BBB8 != -1)
      {
        sub_1000E2110();
      }

      result = qword_10012BBB0;
      if (qword_10012BBB0 && (qword_10012BBB0 & 7) == 0)
      {
        v16 = (*(*qword_10012BBB0 + 328))();
LABEL_30:
        v15 = v16;
        goto LABEL_31;
      }
    }

    else
    {
      if (v13)
      {
        sub_1000DDE90(3u, @"skipping app launch of %@ because it's already in the foreground", v12);
        goto LABEL_23;
      }

      if (qword_10012BBB8 != -1)
      {
        sub_1000E2110();
      }

      result = qword_10012BBB0;
      if (qword_10012BBB0 && (qword_10012BBB0 & 7) == 0)
      {
        v16 = (*(*qword_10012BBB0 + 336))();
        goto LABEL_30;
      }
    }

LABEL_35:
    __break(0x5516u);
    return result;
  }

  v15 = 0;
LABEL_32:
  objc_autoreleasePoolPop(v10);
  if (v7)
  {
    CFRelease(v7);
  }

  return v15;
}

uint64_t sub_10004EF2C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a2)
  {
    return 0;
  }

  result = [*(a1 + 32) caseInsensitiveCompare:a2];
  if (result)
  {
    return 0;
  }

  if (a3)
  {
    result = 1;
    *a3 = 1;
  }

  else
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10004EF78(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  v2 = [NSString stringWithCString:a2 encoding:4];
  if (v2)
  {
    v5 = FBSOpenApplicationOptionKeyUnlockDevice;
    v6 = &__kCFBooleanTrue;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10004F094;
    v4[3] = &unk_100115470;
    v4[4] = v2;
    [+[FBSSystemService sharedService](FBSSystemService "sharedService")];
  }

  return 1;
}

void sub_10004F094(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    NSLog(@"%s:%s-%d error launching app %@ is %@", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "virtual BOOL ISL::SystemStatus::LaunchApplicationToForeground(const char *)_block_invoke", 1596, *(a1 + 32), a2);
  }

  else
  {
    sub_1000DDE90(3u, @"Launching app %@ succeeded, taking process assertion", *(a1 + 32));
  }
}

uint64_t sub_10004F0FC(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  v2 = [NSString stringWithCString:a2 encoding:4];
  v3 = objc_alloc_init(sub_1000DF5B0(@"UIAccessoryBackgroundTaskAction", 0));
  v4 = [[NSArray alloc] initWithObjects:{v3, 0}];
  v7[0] = FBSOpenApplicationOptionKeyActivateSuspended;
  v7[1] = FBSOpenApplicationOptionKeyActions;
  v8[0] = &__kCFBooleanTrue;
  v8[1] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004F264;
  v6[3] = &unk_100115470;
  v6[4] = v2;
  [+[FBSSystemService sharedService](FBSSystemService "sharedService")];

  return 1;
}

void sub_10004F264(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    NSLog(@"%s:%s-%d error launching app %@ is %@", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "virtual BOOL ISL::SystemStatus::LaunchApplicationToBackground(const char *)_block_invoke", 1621, *(a1 + 32), a2);
  }

  else
  {
    sub_1000DDE90(3u, @"Launching app %@ succeeded, taking process assertion", *(a1 + 32));
    v4 = +[EAManager sharedManager];
    v5 = *(a1 + 32);

    [v4 takeProcessAssertionForBundleID:v5];
  }
}

void sub_10004F304(uint64_t a1, const void *a2, unsigned int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [(NSString *)NSHomeDirectory() stringByAppendingPathComponent:@"Library/Logs/CrashReporter/"];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *cStr = 0u;
  v13 = 0u;
  if (!qword_10012BBE0 && !gethostname(cStr, 0x100uLL))
  {
    qword_10012BBE0 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x600u);
  }

  v7 = objc_alloc_init(NSDateFormatter);
  [v7 setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZ"];
  v8 = [v7 stringFromDate:{+[NSDate date](NSDate, "date")}];

  v9 = [(NSString *)v6 stringByAppendingPathComponent:[[NSString stringByAppendingPathExtension:@"haywire_%@_%@" stringWithFormat:v8, qword_10012BBE0], "stringByAppendingPathExtension:", @"plist"]];
  v10 = fopen([(NSString *)v9 fileSystemRepresentation], "w");
  if (v10)
  {
    v11 = v10;
    fwrite(a2, 1uLL, a3, v10);
    fclose(v11);
    [(NSString *)v9 fileSystemRepresentation];
    syslog(4, "%s:%s accessory user-level crashlog generated at %s");
  }

  else
  {
    syslog(4, "%s:%s-%d can't open fp\n");
  }

  objc_autoreleasePoolPop(v5);
}

void sub_10004F504(uint64_t a1, const void *a2, unsigned int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [(NSString *)NSHomeDirectory() stringByAppendingPathComponent:@"Library/Logs/CrashReporter/Panics/"];
    v7 = objc_alloc_init(NSDateFormatter);
    [v7 setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZ"];
    v8 = [v7 stringFromDate:{+[NSDate date](NSDate, "date")}];

    v9 = -[NSString stringByAppendingPathComponent:](v6, "stringByAppendingPathComponent:", [objc_msgSend(v8 stringByAppendingPathExtension:{@"panic", "stringByAppendingPathExtension:", @"plist"}]);
    mkdir([(NSString *)v6 fileSystemRepresentation], 0x1E8u);
    v10 = fopen([(NSString *)v9 fileSystemRepresentation], "w");
    if (v10)
    {
      v11 = v10;
      fwrite(a2, 1uLL, a3, v10);
      fclose(v11);
      [(NSString *)v9 fileSystemRepresentation];
      syslog(4, "%s:%s accessory kernel-level crashlog generated at %s");
    }

    else
    {
      syslog(4, "%s:%s-%d can't open fp\n");
    }

    objc_autoreleasePoolPop(v5);
  }
}

uint64_t sub_10004F688(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = WiFiManagerClientCreate();
    if (!v1)
    {
      return 0;
    }

    v2 = v1;
    v3 = WiFiManagerClientCopyDevices();
    if (v3)
    {
      v4 = v3;
      if (CFArrayGetCount(v3) && (CFArrayGetValueAtIndex(v4, 0), (v5 = WiFiDeviceClientCopyCurrentNetwork()) != 0))
      {
        CFRelease(v5);
        v6 = 1;
      }

      else
      {
        v6 = 0;
      }

      CFRelease(v4);
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v2);
    return v6;
  }

  return result;
}

uint64_t sub_10004F734(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    SBSSpringBoardServerPort();
    SBGetScreenLockStatus();
    return 0;
  }

  return result;
}

BOOL sub_10004F780(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    return _AXSAssistiveTouchEnabled() != 0;
  }

  __break(0x5516u);
  return result;
}

void sub_10004F7B0(uint64_t a1, char *a2, unsigned int a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v5 = WiFiManagerClientCreate();
    if (v5)
    {
      v6 = v5;
      v7 = WiFiManagerClientCopyDevices();
      if (v7)
      {
        v8 = v7;
        if (CFArrayGetCount(v7))
        {
          CFArrayGetValueAtIndex(v8, 0);
          v9 = WiFiDeviceClientCopyCurrentNetwork();
          if (v9)
          {
            v10 = v9;
            SSID = WiFiNetworkGetSSID();
            CFStringGetCString(SSID, a2, a3, 0x8000100u);
            CFRelease(v10);
          }
        }

        CFRelease(v8);
      }

      CFRelease(v6);
    }
  }
}

void sub_10004F88C(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_37;
  }

  v3 = WiFiManagerClientCreate();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = WiFiManagerClientCopyDevices();
  if (v5)
  {
    v6 = v5;
    if (!CFArrayGetCount(v5))
    {
LABEL_22:
      CFRelease(v6);
      goto LABEL_23;
    }

    CFArrayGetValueAtIndex(v6, 0);
    v7 = WiFiDeviceClientCopyCurrentNetwork();
    if (v7)
    {
      v8 = v7;
      SSID = WiFiNetworkGetSSID();
      if (a2 && (a2 & 7) == 0)
      {
        CFStringGetCString(SSID, (a2 + 4), 33, 0x8000100u);
        *a2 = 0;
        if (WiFiNetworkIsWEP())
        {
          *(a2 + 40) = 1;
        }

        else
        {
          if (!WiFiNetworkIsWPA())
          {
            v10 = WiFiNetworkCopyPassword();
            if (v10)
            {
LABEL_12:
              if (CFStringGetLength(v10) < 0x100)
              {
                operator new[]();
              }

              goto LABEL_38;
            }

            if (!WiFiNetworkRequiresUsername() && !WiFiNetworkRequiresIdentity())
            {
              goto LABEL_17;
            }

            goto LABEL_16;
          }

          *(a2 + 40) = 2;
          v11 = WiFiNetworkCopyRecord();
          if (v11)
          {
            v12 = v11;
            v13 = CFDictionaryContainsKey(v11, @"WPA_IE");
            if (CFDictionaryContainsKey(v12, @"RSN_IE"))
            {
              if (v13)
              {
                v14 = 4;
              }

              else
              {
                v14 = 3;
              }

              *(a2 + 40) = v14;
            }

            CFRelease(v12);
          }

          else
          {
            *a2 = 3;
          }
        }

        v10 = WiFiNetworkCopyPassword();
        if (v10)
        {
          goto LABEL_12;
        }

LABEL_16:
        *a2 = 1;
LABEL_17:
        CFRelease(v8);
        goto LABEL_22;
      }
    }

    else if (a2 && (a2 & 7) == 0)
    {
      *a2 = 3;
      goto LABEL_22;
    }

LABEL_37:
    __break(0x5516u);
LABEL_38:
    __break(0x5507u);
    return;
  }

LABEL_23:

  CFRelease(v4);
}

id sub_10004FAAC(Class a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    a1 = sub_1000DF5B0(@"UIStatusBarServer", 0);
    a3 = 19;
  }

  return [(objc_class *)a1 addStatusBarItem:a3];
}

id sub_10004FAF4(Class a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    a1 = sub_1000DF5B0(@"UIStatusBarServer", 0);
    a3 = 19;
  }

  return [(objc_class *)a1 removeStatusBarItem:a3];
}

void sub_10004FB3C()
{
  notify_post("com.apple.iapd.videoout.SettingsChanged");
  sub_1000DDE90(0xCu, @"notify system of changes to video out settings");
  if (qword_10012C680)
  {
    CFRunLoopTimerInvalidate(qword_10012C680);
    CFRelease(qword_10012C680);
    qword_10012C680 = 0;
  }
}

uint64_t sub_10004FB90(uint64_t result, unsigned int a2)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 32))(result, 327687, a2, 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004FBD4(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 64))(result, 327705, 0, a2, 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004FC1C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return (*(*result + 32))(result, 327685, 0, 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004FC60(uint64_t result, char a2)
{
  v2 = a2;
  if (result && (result & 7) == 0)
  {
    return (*(*result + 56))(result, 327707, 0, &v2, 1);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10004FCC8(uint64_t a1, int *a2, unint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
LABEL_6:
    __break(0x5500u);
  }

  v6 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a2;
  v5 = *(a2 + 2);
  if (&v4 >= 0xFFFFFFFFFFFFFFFALL)
  {
    goto LABEL_6;
  }

  v6 = bswap64(a3);
  return (*(*a1 + 56))(a1, 327708, 0, &v4, 14);
}

void sub_10004FD88(uint64_t a1, int a2)
{
  if (a1 && (a1 & 7) == 0)
  {
    v11 = 0;
    v12 = 0;
    v10 = &v11;
    sub_10004FF64(&v10);
    if (!v12 || (v4 = v10, v9 = v10, v10 == &v11))
    {
LABEL_20:
      sub_1000089F8(&v10);
      return;
    }

    while (1)
    {
      memset(v8, 170, 18);
      if (!v4 || (v4 & 7) != 0)
      {
        break;
      }

      v8[3] = *(v4 + 25);
      LOWORD(v8[4]) = *(v4 + 29);
      if (BTDeviceFromAddress())
      {
        NSLog(@"ERROR - %s:%s - %d BTDeviceFromAddress failed.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "PostBluetoothConnectionStatusNotificationAboutKnownDevices", 2013);
      }

      else
      {
        if (BTDeviceGetConnectedServices())
        {
          NSLog(@"WARNING - %s:%s - %d BTDeviceGetConnectedServices failed.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "PostBluetoothConnectionStatusNotificationAboutKnownDevices", 2020);
          v8[0] = 0;
        }

        if (a2)
        {
          v8[0] = 0;
        }

        if (!v9 || (v9 & 7) != 0)
        {
          break;
        }

        v6 = *(v9 + 25);
        v7 = *(v9 + 29);
        if (v8[0] == -1)
        {
          v5 = -1;
        }

        else
        {
          v5 = v8[0] & 0x1FFFBLL;
        }

        (*(*a1 + 656))(a1, &v6, v5);
      }

      sub_100007D44(&v9);
      v4 = v9;
      if (v9 == &v11)
      {
        goto LABEL_20;
      }
    }
  }

  __break(0x5516u);
}

void sub_10004FF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1000089F8(va);
  _Unwind_Resume(a1);
}

void sub_10004FF64(uint64_t a1)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[6] = v2;
  v11[7] = v2;
  v11[4] = v2;
  v11[5] = v2;
  v11[2] = v2;
  v11[3] = v2;
  v11[0] = v2;
  v11[1] = v2;
  sub_100007DB0(a1);
  if (qword_10012C690 && !BTLocalDeviceGetDefault())
  {
    if (BTLocalDeviceGetConnectedDevices())
    {
      NSLog(@"ERROR - %s:%s - %d failed getting connected BT devices", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "_BTFindKnownDevices", 2100);
    }

    else
    {
      v3 = 0;
      while (1)
      {
        v8 = -21846;
        v7 = -1431655766;
        if (v3 == 16)
        {
          break;
        }

        v4 = *(v11 + v3);
        if (sub_100050544())
        {
          NSLog(@"ERROR - %s:%s - %d failed getting MAC address for device", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "_BTFindKnownDevices", 2110);
          return;
        }

        v5 = v7;
        v6 = v8;
        sub_1000505C0(a1, &v5);
        if (++v3 >= v9)
        {
          return;
        }
      }

      __break(0x5512u);
    }
  }

  else
  {
    NSLog(@"ERROR - %s:%s - %d failed getting local BT device", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "_BTFindKnownDevices", 2092);
  }
}

void sub_1000500F0(uint64_t a1, int *a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_7;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 160);
  if (!v2)
  {
LABEL_7:
    __break(0x5510u);
    goto LABEL_8;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1000501D0;
  block[3] = &unk_100115498;
  v4 = *a2;
  v5 = *(a2 + 2);
  block[4] = &v6;
  block[5] = a1;
  dispatch_sync(v2, block);
  if (*(v7 + 6) < 4u)
  {
    _Block_object_dispose(&v6, 8);
    return;
  }

LABEL_8:
  __break(0x550Au);
}

uint64_t sub_1000501D0(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(v2 + 152);
  if (result)
  {
    v4 = (*(v2 + 152) & 7) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    goto LABEL_17;
  }

  result = sub_100051460(result, (a1 + 48));
  v5 = *(v2 + 152);
  if (!v5 || (*(v2 + 152) & 7) != 0)
  {
    goto LABEL_17;
  }

  if (v5 + 8 != result)
  {
    if (!result || (result & 7) != 0)
    {
LABEL_17:
      __break(0x5516u);
      goto LABEL_18;
    }

    v7 = *(result + 36);
    if (v7 >= 4)
    {
LABEL_18:
      __break(0x550Au);
      return result;
    }

    *(*(*(a1 + 32) + 8) + 24) = v7;
  }

  return result;
}

uint64_t sub_10005025C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 52) = *(a2 + 52);
  *(result + 48) = v2;
  return result;
}

void sub_100050274(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0 || !a2)
  {
    goto LABEL_9;
  }

  if (a2 > 0xFFFFFFFFFFFFFFFALL)
  {
    __break(0x5513u);
LABEL_9:
    __break(0x5516u);
    goto LABEL_10;
  }

  v6 = [NSString stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X", *a2, a2[1], a2[2], a2[3], a2[4], a2[5]];
  if (a3 >= 4)
  {
LABEL_10:
    __break(0x550Au);
    goto LABEL_11;
  }

  NSLog(@"INFO - %s:%s - %d  setting mode %d for MAC address %@", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "SetMode", 2053, a3, v6);
  v7 = *(a1 + 160);
  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_1000503C0;
    block[3] = &unk_1001154C8;
    block[4] = a1;
    v8 = *a2;
    v12 = *(a2 + 2);
    v10 = a3;
    v11 = v8;
    dispatch_sync(v7, block);
    return;
  }

LABEL_11:
  __break(0x5510u);
}

uint64_t *sub_1000503C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 152);
  if (result)
  {
    v4 = (*(v2 + 152) & 7) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || ((v5 = sub_100051460(result, (a1 + 44)), (result = *(v2 + 152)) != 0) ? (v6 = (*(v2 + 152) & 7) == 0) : (v6 = 0), !v6))
  {
    __break(0x5516u);
    goto LABEL_20;
  }

  v7 = *(a1 + 40);
  if (result + 1 == v5)
  {
    if (v7 <= 3)
    {
      goto LABEL_18;
    }

LABEL_20:
    __break(0x550Au);
    return result;
  }

  if (v7 >= 4)
  {
    goto LABEL_20;
  }

  if (v7)
  {
LABEL_18:
    result = sub_10005046C(result, (a1 + 44));
    *result = v7;
    return result;
  }

  return sub_1000083F0(result, v5);
}

uint64_t sub_10005046C(uint64_t result, unsigned int *a2)
{
  if (!result)
  {
    goto LABEL_11;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_11;
  }

  v6 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_100051568(result, &v6, a2);
  v3 = *result;
  if (*result)
  {
    if ((v3 & 7) != 0 || !v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = result;
    memset(v5, 170, sizeof(v5));
    result = sub_100051640(v2);
    if ((v5[0] & 7) != 0)
    {
      goto LABEL_11;
    }

    result = sub_1000080E4(v2, v6, v4, v5[0]);
    v3 = v5[0];
    if (!v5[0])
    {
      goto LABEL_11;
    }
  }

  if ((v3 & 7) == 0)
  {
    return v3 + 36;
  }

LABEL_11:
  __break(0x5516u);
  return result;
}

uint64_t sub_10005052C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 44);
  *(result + 48) = *(a2 + 48);
  *(result + 44) = v2;
  return result;
}

uint64_t sub_100050544()
{
  result = BTDeviceGetAddressString();
  if (!result)
  {
    return BTDeviceAddressFromString();
  }

  return result;
}

uint64_t sub_1000505C0(uint64_t result, unsigned int *a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = sub_1000512B8(result, a2);
  if ((v2 & 0xFE) != 0)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_100050600()
{
  if (sub_100050544())
  {
    NSLog(@"ERROR - %s:%s - %d _BTGetMACAddress failed.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "_BTPostConnectionStatus", 2156);
  }

  if (BTDeviceGetConnectedServices())
  {
    NSLog(@"WARNING - %s:%s - %d BTDeviceGetConnectedServices failed.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "_BTPostConnectionStatus", 2162);
  }

  if (qword_10012BBB8 != -1)
  {
    sub_1000E2110();
  }

  result = qword_10012BBB0;
  if (qword_10012BBB0 && (qword_10012BBB0 & 7) == 0)
  {
    return (*(*qword_10012BBB0 + 656))();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100050720(uint64_t a1, int a2, unsigned int a3, int a4, int a5)
{
  if (a3 >= 4)
  {
    __break(0x550Au);
    return result;
  }

  if (a3 != 1)
  {
    if (a3 || (a2 & 0x1FFFB) == 0 || a4 != 11 || a5)
    {
      return result;
    }

    return sub_100050600();
  }

  if ((a2 & 0x1FFFB) != 0 && a4 == 12)
  {
    return sub_100050600();
  }

  return result;
}

void sub_100050778(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x10)
  {
    __break(0x550Au);
LABEL_11:
    __break(0x5516u);
    return;
  }

  if (!a2 && BTLocalDeviceGetModulePower())
  {
    if (qword_10012BBB8 != -1)
    {
      sub_1000E2110();
    }

    if (qword_10012BBB0 && (qword_10012BBB0 & 7) == 0)
    {
      (*(*qword_10012BBB0 + 664))();
      return;
    }

    goto LABEL_11;
  }
}

void sub_10005082C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a3)
  {
    NSLog(@"ERROR - %s:%s - %d called with a BTResult of %d", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "_BTSessionCallback", 2328, a3);
    return;
  }

  if (a2 >= 4)
  {
    __break(0x550Au);
LABEL_21:
    __break(0x5516u);
    return;
  }

  if (a2 == 2)
  {
    qword_10012C690 = 0;
    if (([+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")] & 1) == 0)
    {

      sub_10004BB20();
    }
  }

  else if (!a2)
  {
    if (!a1)
    {
      NSLog(@"ERROR - %s:%s - %d called with a NULL BTSession", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "_BTSessionCallback", 2312);
      return;
    }

    qword_10012C690 = a1;
    if (!BTLocalDeviceGetDefault())
    {
      BTLocalDeviceAddCallbacks();
    }

    BTServiceAddCallbacks();
    BTAccessoryManagerGetDefault();
    if (qword_10012BBB8 != -1)
    {
      sub_1000E2110();
    }

    if (qword_10012BBB0 && (qword_10012BBB0 & 7) == 0)
    {
      (*(*qword_10012BBB0 + 664))();
      return;
    }

    goto LABEL_21;
  }
}

void sub_1000509D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = v3;
  v9 = v3;
  *__dst = v3;
  v7 = v3;
  if (qword_10012C690)
  {
    v4 = *(a3 + 8);
    v5 = *(a3 + 12);
    if (BTLocalDeviceGetDefault())
    {
      NSLog(@"ERROR - %s:%s - %d failed getting local BT device", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "BluetoothUpdateStatus", 2369);
    }

    else if (BTAccessoryManagerGetDefault())
    {
      NSLog(@"ERROR - %s:%s - %d failed getting  BT accessory manager", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "BluetoothUpdateStatus", 2375);
    }

    else if (BTLocalDeviceGetModulePower())
    {
      NSLog(@"ERROR - %s:%s - %d failed getting local BT device power status", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "BluetoothUpdateStatus", 2381);
    }

    else
    {
      NSLog(@"INFO %s:%s - %d local BT device is powered off", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "BluetoothUpdateStatus", 2388);
    }
  }

  else
  {
    NSLog(@"ERROR - %s:%s - %d NULL BT session", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "BluetoothUpdateStatus", 2363);
  }
}

void sub_100050DAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_15;
  }

  if (!a3)
  {
    __break(0x5518u);
    goto LABEL_15;
  }

  v9 = BTAccessoryManagerPlugInDevice();
  if (!v9 || v9 == 603)
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    if (a5 && (a5 & 7) == 0)
    {
      sub_10005CA0C(a5, a2, a3, 0, 1);
      goto LABEL_11;
    }

LABEL_15:
    __break(0x5516u);
    return;
  }

  NSLog(@"ERROR - %s:%s-%d BTAccessoryManagerPlugInDevice failed (with %d result)!", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "BluetoothPluginDevice", 2458, v9);
LABEL_11:
  if (BTDeviceConnect())
  {
    NSLog(@"ERROR - %s:%s-%d BTDeviceConnect failed!", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "BluetoothPluginDevice", 2470);
  }
}

void sub_100050EA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_12;
  }

  if (!a3)
  {
    __break(0x5518u);
LABEL_12:
    __break(0x5516u);
    return;
  }

  v5 = BTAccessoryManagerUnplugDevice();
  if (v5 && v5 != 604)
  {
    NSLog(@"ERROR - %s:%s-%d BTAccessoryManagerUnplugDevice failed (with %d result)!", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "BluetoothUnplugDevice", 2486, v5);
  }

  if (a4)
  {
    if (BTDeviceDisconnect())
    {
      NSLog(@"ERROR - %s:%s-%d BTDeviceDisconnect failed!", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/SystemStatus.mm", "BluetoothUnplugDevice", 2495);
    }
  }
}

uint64_t sub_100050F5C(uint64_t result, std::string *a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_36;
  }

  memset(&__str, 0, sizeof(__str));
  if (qword_10012BBB8 != -1)
  {
    sub_1000E20D4();
  }

  result = qword_10012BBB0;
  if (!qword_10012BBB0 || (qword_10012BBB0 & 7) != 0)
  {
    goto LABEL_36;
  }

  v5 = (*(*qword_10012BBB0 + 304))();
  if (v5)
  {
    if (!std::string::compare(&__str, "com.apple.mobileipod") || (result = std::string::compare(&__str, "com.apple.Music"), !result))
    {
      v7 = "com.apple.mobileipod";
      if (!dword_1001296F4)
      {
        goto LABEL_31;
      }

      result = sub_1000388B8();
      if (result && (result & 7) == 0)
      {
        if ((*(*result + 504))(result))
        {
          v7 = "com.apple.iapd.radio";
          goto LABEL_31;
        }

        result = sub_1000388B8();
        if (result && (result & 7) == 0)
        {
          if ((*(*result + 496))(result))
          {
            v7 = "com.apple.iapd.geniusmix";
          }

          goto LABEL_31;
        }
      }
    }

    else
    {
      if (dword_1001296F0)
      {
LABEL_14:
        if (!std::string::compare(&__str, "com.apple.podcasts") || !std::string::compare(&__str, "com.apple.iBooks"))
        {
LABEL_20:
          v7 = "com.apple.mobileipod";
LABEL_31:
          std::string::assign(&__str, v7);
LABEL_32:
          std::string::operator=(a2, &__str);
          goto LABEL_33;
        }

LABEL_16:
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          goto LABEL_32;
        }

        sub_1000DDEEC(0, 4, "Empty audioFocusAppBundleID, set to mobileipod\n");
        goto LABEL_20;
      }

      if (a3 && (a3 & 7) == 0)
      {
        if (!sub_10005C090(a3))
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }

LABEL_36:
    __break(0x5516u);
    return result;
  }

  syslog(4, "GetNowPlayingApp failed to return now playing app bundleID\n");
LABEL_33:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_1000511A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000511C0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000511D4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000511E8(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000511FC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100051214(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100051228(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100051240(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100051258(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100051270(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100051288(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000512A0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000512B8(uint64_t result, unsigned int *a2)
{
  if (result && (result & 7) == 0)
  {
    v2 = 0xAAAAAAAAAAAAAAAALL;
    result = sub_100051388(result, &v2, a2);
    if (!*result)
    {
      operator new();
    }

    if ((*result & 7) == 0)
    {
      return *result;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100051388(uint64_t result, void *a2, unsigned int *a3)
{
  if (result && (result & 7) == 0)
  {
    v4 = *(result + 8);
    result += 8;
    v3 = v4;
    if (!v4)
    {
      goto LABEL_15;
    }

    if ((v3 & 7) == 0)
    {
      v5 = bswap64(*a3 | (*(a3 + 2) << 32));
      while (1)
      {
        if (v5 >= bswap64(*(v3 + 25) | (*(v3 + 29) << 32)))
        {
          if (bswap64(*(v3 + 25) | (*(v3 + 29) << 32)) >= bswap64(*a3 | (*(a3 + 2) << 32)))
          {
            *a2 = v3;
            if ((result & 7) != 0)
            {
              break;
            }

            return result;
          }

          v6 = *(v3 + 8);
          if (!v6)
          {
            result = v3;
            v3 += 8;
            goto LABEL_19;
          }

          v3 += 8;
        }

        else
        {
          v6 = *v3;
          if (!*v3)
          {
            result = v3;
            goto LABEL_19;
          }
        }

        if ((v6 & 7) != 0)
        {
          break;
        }

        result = v3;
        v3 = v6;
      }
    }
  }

  __break(0x5516u);
LABEL_15:
  v3 = result;
LABEL_19:
  *a2 = result;
  return v3;
}

uint64_t sub_100051460(uint64_t result, unsigned int *a2)
{
  if (!result)
  {
    goto LABEL_10;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  v3 = result + 8;
  v2 = *(result + 8);
  if ((v2 & 7) != 0)
  {
    goto LABEL_10;
  }

  result = sub_1000514E8(result, a2, v2, result + 8);
  if (v3 != result)
  {
    if (result && (result & 7) == 0)
    {
      if (bswap64(*a2 | (*(a2 + 2) << 32)) >= bswap64(*(result + 28) | (*(result + 32) << 32)))
      {
        return result;
      }

      return v3;
    }

LABEL_10:
    __break(0x5516u);
    return result;
  }

  return v3;
}

uint64_t sub_1000514E8(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (a1 & 7) == 0)
  {
    if (!a3)
    {
      return a4;
    }

    if ((a3 & 7) == 0)
    {
      v4 = bswap64(*a2 | (*(a2 + 2) << 32));
      while (1)
      {
        if (bswap64(*(a3 + 28) | (*(a3 + 32) << 32)) >= v4)
        {
          v5 = *a3;
          if (!*a3)
          {
            return a3;
          }
        }

        else
        {
          v5 = *(a3 + 8);
          if (!v5)
          {
            return a4;
          }

          a3 = a4;
        }

        if ((v5 & 7) != 0)
        {
          break;
        }

        a4 = a3;
        a3 = v5;
      }
    }
  }

  __break(0x5516u);
  return a3;
}

uint64_t sub_100051568(uint64_t result, void *a2, unsigned int *a3)
{
  if (result && (result & 7) == 0)
  {
    v4 = *(result + 8);
    result += 8;
    v3 = v4;
    if (!v4)
    {
      goto LABEL_15;
    }

    if ((v3 & 7) == 0)
    {
      v5 = bswap64(*a3 | (*(a3 + 2) << 32));
      while (1)
      {
        if (v5 >= bswap64(*(v3 + 28) | (*(v3 + 32) << 32)))
        {
          if (bswap64(*(v3 + 28) | (*(v3 + 32) << 32)) >= bswap64(*a3 | (*(a3 + 2) << 32)))
          {
            *a2 = v3;
            if ((result & 7) != 0)
            {
              break;
            }

            return result;
          }

          v6 = *(v3 + 8);
          if (!v6)
          {
            result = v3;
            v3 += 8;
            goto LABEL_19;
          }

          v3 += 8;
        }

        else
        {
          v6 = *v3;
          if (!*v3)
          {
            result = v3;
            goto LABEL_19;
          }
        }

        if ((v6 & 7) != 0)
        {
          break;
        }

        result = v3;
        v3 = v6;
      }
    }
  }

  __break(0x5516u);
LABEL_15:
  v3 = result;
LABEL_19:
  *a2 = result;
  return v3;
}

uint64_t sub_100051640(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    operator new();
  }

  __break(0x5516u);
  return result;
}

void sub_100051908(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100051928(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForKey:BKSApplicationStateKey];
  v5 = [v4 unsignedIntegerValue];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_9;
  }

  v7 = WeakRetained;
  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 foregroundBundleIDsQueue];

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 foregroundBundleIDsQueue];
  if (v11)
  {
    v12 = v11;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100051B10;
    block[3] = &unk_100115590;
    v22[1] = v5;
    objc_copyWeak(v22, (a1 + 32));
    v13 = v3;
    v21 = v13;
    dispatch_sync(v12, block);

    v14 = objc_loadWeakRetained((a1 + 32));
    v15 = [v14 delegate];
    if (v15)
    {
      v16 = objc_loadWeakRetained((a1 + 32));
      v17 = [v16 delegate];
      v18 = objc_opt_respondsToSelector();

      if ((v18 & 1) == 0)
      {
LABEL_8:

        objc_destroyWeak(v22);
LABEL_9:

        return;
      }

      v14 = objc_loadWeakRetained((a1 + 32));
      v19 = [v14 delegate];
      [v19 applicationStateChanged:v13];
    }

    goto LABEL_8;
  }

  __break(0x5510u);
}

void sub_100051B10(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = (a1 + 40);
  if (v2 == 32 || v2 == 8)
  {
    WeakRetained = objc_loadWeakRetained(v3);
    v5 = [WeakRetained foregroundAppBundleIDsMutable];
    v6 = [*(a1 + 32) valueForKey:BKSApplicationStateDisplayIDKey];
    [v5 addObject:v6];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(v3);
    v5 = [WeakRetained foregroundAppBundleIDsMutable];
    v6 = [*(a1 + 32) valueForKey:BKSApplicationStateDisplayIDKey];
    [v5 removeObject:v6];
  }
}

void sub_100051C90(uint64_t a1)
{
  v2 = [*(a1 + 32) foregroundAppBundleIDsMutable];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  if (v4 >= 2)
  {
    __break(0x550Au);
    goto LABEL_7;
  }

  if ((v4 & 1) == 0)
  {
    return;
  }

  if (((v3 + 16) & 7) != 0)
  {
LABEL_7:
    __break(0x5516u);
    return;
  }

  [*(v3 + 16) removeObserver:?];
  *(*(a1 + 32) + 24) = 0;
}

void sub_100051DE4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1 >= 2)
  {
    __break(0x550Au);
  }

  if (v1)
  {
    [*(a1 + 40) elements];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v16 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [v8 identifier];
          NSLog(@"First time, use layoutMonitor to add bundleID %@ to foreground app list", v9);

          v10 = [*(a1 + 32) foregroundAppBundleIDsMutable];
          v11 = [v8 identifier];
          [v10 addObject:v11];
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    v12 = *(a1 + 32);
    if (((v12 + 16) & 7) != 0)
    {
      __break(0x5516u);
    }

    else
    {
      [*(v12 + 16) removeObserver:?];
      *(*(a1 + 32) + 24) = 0;
    }
  }
}

uint64_t sub_10005210C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100052124(uint64_t a1)
{
  v5 = [*(a1 + 32) foregroundAppBundleIDsMutable];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_100052234()
{
  if (qword_10012BBF0 != -1)
  {
    sub_1000E2138();
  }

  return qword_10012BBE8;
}

uint64_t sub_1000522E0(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    sub_10001C4A0(result);
    *v1 = off_100115680;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000523D4;
    block[3] = &unk_100111CF8;
    block[4] = v1;
    dispatch_async(&_dispatch_main_q, block);
    *(v1 + 96) = 0;
    CTIndicatorsCopyVoicemailStatus();
    *(v1 + 104) = 0;
    *(v1 + 108) = 0;
    *(v1 + 112) = 0;
    return v1;
  }

  return result;
}

uint64_t sub_1000523D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  CTTelephonyCenterSetDefaultDispatchQueue();
  CTTelephonyCenterGetDefault();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();

  return CTTelephonyCenterAddObserver();
}

void sub_1000524A0(int a1, uint64_t a2, uint64_t a3, int a4, CFDictionaryRef theDict)
{
  CFDictionaryGetValue(theDict, kCTCall);
  Status = CTCallGetStatus();
  if (Status >= 6)
  {
    syslog(4, "unknown call status, setting to idle");
    Status = 0;
  }

  if (kCTCallStatusChangeNotification != a3)
  {
    if (kCTCallAlternateStatusChangeNotification != a3)
    {
      return;
    }

    if (a2 && (a2 & 7) == 0)
    {

      sub_1000528A0(a2, Status);
      return;
    }

LABEL_16:
    __break(0x5516u);
    return;
  }

  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_16;
  }

  sub_100052848(a2, Status);
}

uint64_t sub_100052580(uint64_t a1, uint64_t a2)
{
  result = CTIndicatorsCopyVoicemailStatus();
  if (a2 && (a2 & 7) == 0)
  {
    return sub_1000528F8(a2, 0, 0);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000525DC(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100112210;
    pthread_mutex_destroy((result + 32));
    sub_1000089F8(v1 + 8);
    return v1;
  }

  return result;
}

uint64_t sub_100052650(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100115680;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100052704;
    block[3] = &unk_100111CF8;
    block[4] = result;
    dispatch_sync(&_dispatch_main_q, block);
    return sub_1000525DC(v1);
  }

  return result;
}

uint64_t sub_100052704(uint64_t a1)
{
  v1 = *(a1 + 32);
  CTTelephonyCenterSetDefaultDispatchQueue();
  Default = CTTelephonyCenterGetDefault();

  return _CTTelephonyCenterRemoveEveryObserver(Default, v1);
}

uint64_t sub_100052748(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_100052650(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005275C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_100052650(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000527DC(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = *(result + 96);
  if (result >= 8)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_100052800(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = *(result + 100);
  if (result >= 8)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_100052824(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *a2 = *(result + 104);
    *a3 = *(result + 108);
  }

  return result;
}

uint64_t sub_100052848(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 8)
  {
    *(result + 96) = a2;
    return (*(*result + 56))(result, 917505, 0, result + 96, 4);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000528A0(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 8)
  {
    *(result + 100) = a2;
    return (*(*result + 56))(result, 917506, 0, result + 100, 4);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_1000528F8(uint64_t result, int a2, int a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  *(result + 104) = a2;
  *(result + 108) = a3;
  if (*(result + 112) != a2 || *(result + 116) != a3)
  {
    v5[0] = a2;
    v5[1] = a3;
    result = (*(*result + 56))(result, 917507, 0, v5, 8);
    a2 = v3[26];
  }

  v4 = v3[27];
  v3[28] = a2;
  v3[29] = v4;
  return result;
}

uint64_t sub_1000529C4(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100115730;
    *(result + 8) = 0;
    *(result + 32) = 0;
    *(result + 16) = 0u;
    *(result + 36) = -1;
    *(result + 44) = -1;
    if (dword_100129758 == -1)
    {
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"doNotFillNonCurrentItemWithAppName", @"com.apple.iapd", 0);
      dword_100129758 = AppBooleanValue == 0;
      sub_1000DDE90(0, @"%s:%d __fillNonCurrentItemWithAppName=%d", "TrackAccessor", 45, AppBooleanValue == 0);
    }

    return v1;
  }

  return result;
}

uint64_t sub_100052A94(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000529C4(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100052AA8(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100115730;

    *(v1 + 8) = 0;
    *(v1 + 16) = 0;

    *(v1 + 24) = 0;
    return v1;
  }

  return result;
}

uint64_t sub_100052B1C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_100052AA8(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100052B30(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_100052AA8(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100052BB0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_100052BC8(result, 1);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100052BC8(uint64_t result, int a2)
{
  if (!result)
  {
    goto LABEL_20;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_20;
  }

  result = sub_1000388B8();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_20;
  }

  if ((*(*result + 592))(result))
  {
    result = sub_1000388B8();
    if (!result || (result & 7) != 0)
    {
      goto LABEL_20;
    }

    result = sub_10003AF10(result, a2);
  }

  else
  {
    result = 1;
  }

  if ((*(v2 + 44) & 0x80000000) == 0 || (*(v2 + 40) & 0x80000000) == 0)
  {
    LOBYTE(v4) = 1;
LABEL_13:
    if (*(v2 + 8))
    {
      v5 = 1;
      return v5 & 1;
    }

    v6 = *(v2 + 32);
    if (v6 <= 1)
    {
      v5 = result | v6 | v4;
      return v5 & 1;
    }

    goto LABEL_19;
  }

  v4 = *(v2 + 33);
  if (v4 <= 1)
  {
    goto LABEL_13;
  }

LABEL_19:
  __break(0x550Au);
LABEL_20:
  __break(0x5516u);
  return result;
}

uint64_t sub_100052CA8(uint64_t result)
{
  if (!result)
  {
    goto LABEL_13;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_13;
  }

  v2 = *(result + 32);
  if (v2 >= 2)
  {
LABEL_14:
    __break(0x550Au);
    return result;
  }

  if ((v2 & 1) == 0)
  {
    if (!*(result + 8))
    {
      return 0;
    }

    v3 = objc_alloc_init(NSAutoreleasePool);
    v4 = [objc_msgSend(*(v1 + 8) valueForProperty:{MPMediaItemPropertyPersistentID), "unsignedLongLongValue"}];

    return v4;
  }

  result = sub_1000388B8();
  if (!result || (result & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  return sub_10004268C(result);
}

void sub_100052D5C(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_57;
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    goto LABEL_58;
  }

  if (v3)
  {
    v5 = sub_1000388B8();
    if (!v5 || (v5 & 7) != 0)
    {
      goto LABEL_57;
    }

    if ((*(*v5 + 608))(v5))
    {
      v6 = sub_1000388B8();
      if (v6 && (v6 & 7) == 0)
      {
        v7 = *(a1 + 36);

        sub_100044744(v6, v7, a2);
        return;
      }

      goto LABEL_57;
    }
  }

  v8 = *(a1 + 32);
  if (v8 >= 2)
  {
    goto LABEL_58;
  }

  if (v8)
  {
    v9 = sub_1000388B8();
    if (v9 && (v9 & 7) == 0)
    {

      sub_1000440FC(v9, a2);
      return;
    }

LABEL_57:
    __break(0x5516u);
    goto LABEL_58;
  }

  if (!*(a1 + 8))
  {
    if (*(a2 + 23) < 0)
    {
      if (!*a2)
      {
        goto LABEL_57;
      }

      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    if (!dword_100129758)
    {
      return;
    }

    v11 = objc_autoreleasePoolPush();
    if ((*(a1 + 40) & 0x80000000) != 0)
    {
      if ((*(a1 + 44) & 0x80000000) != 0)
      {
        v21 = sub_1000388B8();
        if (!v21 || (v21 & 7) != 0)
        {
          goto LABEL_57;
        }

        (*(*v21 + 536))(v21, a2);
        goto LABEL_51;
      }

      v17 = sub_10002DDA4();
      if (!v17 || (v17 & 7) != 0)
      {
        goto LABEL_57;
      }

      v13 = sub_10002E314(v17, @"IAP_ITUNES_GENIUS_MIX");
      v18 = *(a1 + 33);
      if (v18 <= 1)
      {
        v15 = v13;
        if ((v18 & 1) == 0)
        {
          v16 = *(a1 + 44);
          goto LABEL_48;
        }

LABEL_50:
        std::string::assign(a2, [(__CFString *)v13 UTF8String]);

LABEL_51:

        objc_autoreleasePoolPop(v11);
        return;
      }
    }

    else
    {
      v12 = sub_10002DDA4();
      if (!v12 || (v12 & 7) != 0)
      {
        goto LABEL_57;
      }

      v13 = sub_10002E314(v12, @"IAP_ITUNES_RADIO");
      v14 = *(a1 + 33);
      if (v14 <= 1)
      {
        v15 = v13;
        if ((v14 & 1) == 0)
        {
          v16 = *(a1 + 40);
LABEL_48:
          v19 = __OFADD__(v16, 1);
          v20 = (v16 + 1);
          if (v19)
          {
LABEL_59:
            __break(0x5500u);
            return;
          }

          v13 = [NSString stringWithFormat:@"%@-%d", v15, v20];
          goto LABEL_50;
        }

        goto LABEL_50;
      }
    }

LABEL_58:
    __break(0x550Au);
    goto LABEL_59;
  }

  v22 = objc_alloc_init(NSAutoreleasePool);
  v10 = [*(a1 + 8) valueForProperty:MPMediaItemPropertyTitle];
  if (v10)
  {
    std::string::assign(a2, [objc_msgSend(v10 "precomposedStringWithCanonicalMapping")]);
  }

  else if (*(a2 + 23) < 0)
  {
    if (!*a2)
    {
      goto LABEL_57;
    }

    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }
}

void sub_100053064(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_24;
  }

  v3 = *(a1 + 32);
  if (v3 >= 2)
  {
LABEL_25:
    __break(0x550Au);
    return;
  }

  if (v3)
  {
    v5 = sub_1000388B8();
    if (v5 && (v5 & 7) == 0)
    {

      sub_1000442A4(v5, a2);
      return;
    }

    goto LABEL_24;
  }

  if (!*(a1 + 8))
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *a2 = 0;
      *(a2 + 23) = 0;
      return;
    }

    if (*a2)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      return;
    }

    goto LABEL_24;
  }

  v7 = objc_alloc_init(NSAutoreleasePool);
  v6 = [*(a1 + 8) valueForProperty:MPMediaItemPropertyAlbumTitle];
  if (!v6)
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *a2 = 0;
      *(a2 + 23) = 0;
      goto LABEL_21;
    }

    if (*a2)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      goto LABEL_21;
    }

LABEL_24:
    __break(0x5516u);
    goto LABEL_25;
  }

  std::string::assign(a2, [objc_msgSend(v6 "precomposedStringWithCanonicalMapping")]);
LABEL_21:
}

void sub_10005319C(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_24;
  }

  v3 = *(a1 + 32);
  if (v3 >= 2)
  {
LABEL_25:
    __break(0x550Au);
    return;
  }

  if (v3)
  {
    v5 = sub_1000388B8();
    if (v5 && (v5 & 7) == 0)
    {

      sub_100044364(v5, a2);
      return;
    }

    goto LABEL_24;
  }

  if (!*(a1 + 8))
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *a2 = 0;
      *(a2 + 23) = 0;
      return;
    }

    if (*a2)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      return;
    }

    goto LABEL_24;
  }

  v7 = objc_alloc_init(NSAutoreleasePool);
  v6 = [*(a1 + 8) valueForProperty:MPMediaItemPropertyArtist];
  if (!v6)
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *a2 = 0;
      *(a2 + 23) = 0;
      goto LABEL_21;
    }

    if (*a2)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      goto LABEL_21;
    }

LABEL_24:
    __break(0x5516u);
    goto LABEL_25;
  }

  std::string::assign(a2, [objc_msgSend(v6 "precomposedStringWithCanonicalMapping")]);
LABEL_21:
}

void sub_1000532D4(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_24;
  }

  v3 = *(a1 + 32);
  if (v3 >= 2)
  {
LABEL_25:
    __break(0x550Au);
    return;
  }

  if (v3)
  {
    v5 = sub_1000388B8();
    if (v5 && (v5 & 7) == 0)
    {

      sub_100044424(v5, a2);
      return;
    }

    goto LABEL_24;
  }

  if (!*(a1 + 8))
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *a2 = 0;
      *(a2 + 23) = 0;
      return;
    }

    if (*a2)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      return;
    }

    goto LABEL_24;
  }

  v7 = objc_alloc_init(NSAutoreleasePool);
  v6 = [*(a1 + 8) valueForProperty:MPMediaItemPropertyGenre];
  if (!v6)
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *a2 = 0;
      *(a2 + 23) = 0;
      goto LABEL_21;
    }

    if (*a2)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      goto LABEL_21;
    }

LABEL_24:
    __break(0x5516u);
    goto LABEL_25;
  }

  std::string::assign(a2, [objc_msgSend(v6 "precomposedStringWithCanonicalMapping")]);
LABEL_21:
}

void sub_10005340C(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_24;
  }

  v3 = *(a1 + 32);
  if (v3 >= 2)
  {
LABEL_25:
    __break(0x550Au);
    return;
  }

  if (v3)
  {
    v5 = sub_1000388B8();
    if (v5 && (v5 & 7) == 0)
    {

      sub_1000444E4(v5, a2);
      return;
    }

    goto LABEL_24;
  }

  if (!*(a1 + 8))
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *a2 = 0;
      *(a2 + 23) = 0;
      return;
    }

    if (*a2)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      return;
    }

    goto LABEL_24;
  }

  v7 = objc_alloc_init(NSAutoreleasePool);
  v6 = [*(a1 + 8) valueForProperty:MPMediaItemPropertyComposer];
  if (!v6)
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *a2 = 0;
      *(a2 + 23) = 0;
      goto LABEL_21;
    }

    if (*a2)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      goto LABEL_21;
    }

LABEL_24:
    __break(0x5516u);
    goto LABEL_25;
  }

  std::string::assign(a2, [objc_msgSend(v6 "precomposedStringWithCanonicalMapping")]);
LABEL_21:
}

uint64_t sub_100053544(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_7;
  }

  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    *a2 = 0;
    *(a2 + 23) = 0;
    return result;
  }

  if (*a2)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
LABEL_7:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10005357C(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_7;
  }

  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    *a2 = 0;
    *(a2 + 23) = 0;
    return result;
  }

  if (*a2)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
LABEL_7:
    __break(0x5516u);
  }

  return result;
}

void *sub_1000535B4(void *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    if (!result[1])
    {
      return 0;
    }

    v2 = objc_alloc_init(NSAutoreleasePool);
    v3 = [v1[1] valueForProperty:MPMediaItemPropertySeasonNumber];
    if (v3)
    {
      v4 = [v3 unsignedIntValue];
    }

    else
    {
      v4 = 0;
    }

    return v4;
  }

  return result;
}

void sub_100053634(void *a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_14;
  }

  v5 = objc_alloc_init(NSAutoreleasePool);
  if (!a1[2])
  {
    (*(*a1 + 256))(a1);
  }

  v4 = a1[3];
  if (!v4)
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *a2 = 0;
      *(a2 + 23) = 0;
      goto LABEL_11;
    }

    if (*a2)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      goto LABEL_11;
    }

LABEL_14:
    __break(0x5516u);
    return;
  }

  std::string::assign(a2, [v4 UTF8String]);
LABEL_11:
}

uint64_t sub_10005370C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100053724(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005373C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100053754(uint64_t result)
{
  if (!result)
  {
    goto LABEL_22;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_22;
  }

  v2 = *(result + 32);
  if (v2 >= 2)
  {
LABEL_23:
    __break(0x550Au);
LABEL_24:
    __break(0x5505u);
    return result;
  }

  if ((v2 & 1) == 0)
  {
    if (!*(result + 8))
    {
      return 0;
    }

    v3 = objc_alloc_init(NSAutoreleasePool);
    v4 = [*(v1 + 8) valueForProperty:MPMediaItemPropertyPlaybackDuration];
    if (v4)
    {
      result = [v4 doubleValue];
      v6 = v5 * 1000.0;
      if (v6 <= -1.0 || v6 >= 4294967300.0)
      {
        goto LABEL_24;
      }

      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  result = sub_1000388B8();
  if (!result || (result & 7) != 0)
  {
LABEL_22:
    __break(0x5516u);
    goto LABEL_23;
  }

  return sub_1000445A4(result);
}

uint64_t sub_10005383C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100053854(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005386C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100053884(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005389C(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_17:
    __break(0x5516u);
    goto LABEL_18;
  }

  v2 = *(result + 32);
  if (v2 >= 2)
  {
LABEL_18:
    __break(0x550Au);
    return result;
  }

  if (v2)
  {
    result = sub_1000388B8();
    if (result && (result & 7) == 0)
    {

      return sub_10004467C(result);
    }

    goto LABEL_17;
  }

  if (*(result + 8))
  {
    v3 = objc_alloc_init(NSAutoreleasePool);
    v4 = [*(v1 + 8) valueForProperty:MPMediaItemPropertyAlbumTrackNumber];
    if (v4)
    {
      v5 = [v4 unsignedIntValue];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t sub_10005395C(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_17:
    __break(0x5516u);
    goto LABEL_18;
  }

  v2 = *(result + 32);
  if (v2 >= 2)
  {
LABEL_18:
    __break(0x550Au);
    return result;
  }

  if (v2)
  {
    result = sub_1000388B8();
    if (result && (result & 7) == 0)
    {

      return sub_1000446BC(result);
    }

    goto LABEL_17;
  }

  if (*(result + 8))
  {
    v3 = objc_alloc_init(NSAutoreleasePool);
    v4 = [*(v1 + 8) valueForProperty:MPMediaItemPropertyDiscNumber];
    if (v4)
    {
      v5 = [v4 unsignedIntValue];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t sub_100053A1C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100053A34(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100053A4C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100053A64(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100053A7C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100053A94(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100053AAC(uint64_t result)
{
  if (!result)
  {
    goto LABEL_20;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_20;
  }

  v2 = *(result + 32);
  if (v2 >= 2)
  {
LABEL_21:
    __break(0x550Au);
    return result;
  }

  if ((v2 & 1) == 0)
  {
    if (!*(result + 8))
    {
      return 0;
    }

    v3 = objc_alloc_init(NSAutoreleasePool);
    v4 = [*(v1 + 8) valueForProperty:MPMediaItemPropertyChapterArtworkTimes];
    v5 = sub_10002A564(*(v1 + 8));
    v6 = v5;
    if (v4)
    {
      v7 = [v4 count];
      if (!v6 && !v7)
      {
        v6 = 0;
LABEL_18:

        return v6;
      }
    }

    else if (!v5)
    {
      goto LABEL_18;
    }

    v6 = 1;
    goto LABEL_18;
  }

  result = sub_1000388B8();
  if (!result || (result & 7) != 0)
  {
LABEL_20:
    __break(0x5516u);
    goto LABEL_21;
  }

  return sub_10004472C(result);
}

uint64_t sub_100053B98(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

void *sub_100053BB0(void *result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      if (!result[1])
      {
        return 0;
      }

      v2 = objc_alloc_init(NSAutoreleasePool);
      v3 = v1[2];
      if (v3)
      {
        goto LABEL_14;
      }

      v4 = v1[3];
      if (v4 || (v4 = [v1[1] valueForProperty:MPMediaItemPropertyLyrics], (v1[3] = v4) != 0))
      {
        if ([v4 lengthOfBytesUsingEncoding:4])
        {
          v5 = 1;
LABEL_13:
          v3 = [[NSNumber alloc] initWithBool:v5];
          v1[2] = v3;
LABEL_14:
          v7 = [v3 BOOLValue];

          return v7;
        }

        v6 = v1[3];
      }

      else
      {
        v6 = 0;
      }

      v5 = 0;
      v1[3] = 0;
      goto LABEL_13;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100053C8C(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    if (!*(result + 8))
    {
      return 0;
    }

    v2 = objc_alloc_init(NSAutoreleasePool);
    v3 = [*(v1 + 8) valueForProperty:MPMediaItemPropertyMediaType];
    if (v3)
    {
      v4 = ([v3 intValue] >> 2) & 1;
    }

    else
    {
      v4 = 0;
    }

    return v4;
  }

  return result;
}

BOOL sub_100053D0C(_BOOL8 result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    if (!*(result + 8))
    {
      return 0;
    }

    v2 = objc_alloc_init(NSAutoreleasePool);
    v3 = [*(v1 + 8) valueForProperty:MPMediaItemPropertyMediaType];
    if (v3)
    {
      v4 = ([v3 intValue] & 0x402) != 0;
    }

    else
    {
      v4 = 0;
    }

    return v4;
  }

  return result;
}

BOOL sub_100053D94(_BOOL8 result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    if (!*(result + 8))
    {
      return 0;
    }

    v2 = objc_alloc_init(NSAutoreleasePool);
    v3 = [*(v1 + 8) valueForProperty:MPMediaItemPropertyMediaType];
    if (v3)
    {
      v4 = ([v3 intValue] & 0x1008) != 0;
    }

    else
    {
      v4 = 0;
    }

    return v4;
  }

  return result;
}

BOOL sub_100053E1C(_BOOL8 result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    if (!*(result + 8))
    {
      return 0;
    }

    v2 = objc_alloc_init(NSAutoreleasePool);
    v3 = ([objc_msgSend(*(v1 + 8) valueForProperty:{MPMediaItemPropertyMediaType), "intValue"}] & 0xFF00) != 0;

    return v3;
  }

  return result;
}

uint64_t sub_100053E94(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100053EAC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100053EC4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100053EDC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100053EF4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100053F0C(uint64_t result)
{
  if (!result)
  {
    goto LABEL_17;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  result = sub_1000388B8();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_17;
  }

  result = (*(*result + 608))(result);
  if (result)
  {
    return 0;
  }

  v3 = *(v1 + 32);
  if (v3 >= 2)
  {
    goto LABEL_18;
  }

  if ((v3 & 1) == 0)
  {
    if (*(v1 + 8))
    {
      v4 = objc_alloc_init(NSAutoreleasePool);
      v2 = [*(v1 + 8) countOfChaptersOfType:1];

      return v2;
    }

    return 0;
  }

  result = sub_1000388B8();
  if (!result || (result & 7) != 0)
  {
LABEL_17:
    __break(0x5516u);
LABEL_18:
    __break(0x550Au);
    return result;
  }

  return sub_100044714(result);
}

void *sub_100053FF4(void *result, unsigned int a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      if (!result[1])
      {
        return 0;
      }

      v4 = objc_alloc_init(NSAutoreleasePool);
      v5 = [v2[1] chaptersOfType:1];
      if ([v5 count] <= a2)
      {
        v9 = 0;
      }

      else
      {
        result = [objc_msgSend(v5 objectAtIndex:{a2), "playbackTime"}];
        v7 = v6 * 1000.0;
        if (v7 <= -1.0 || v7 >= 4294967300.0)
        {
          goto LABEL_16;
        }

        v9 = v7;
      }

      return v9;
    }
  }

  __break(0x5516u);
LABEL_16:
  __break(0x5505u);
  return result;
}

uint64_t sub_1000540B8(uint64_t result, unsigned int a2, std::string *a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    if (!*(result + 8))
    {
      return 0;
    }

    v6 = objc_alloc_init(NSAutoreleasePool);
    v7 = *(v3 + 8);
    if (v7 && (v8 = [objc_msgSend(v7 chaptersOfType:{1), "objectAtIndex:", a2}], objc_msgSend(v8, "value"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      std::string::assign(a3, [objc_msgSend(v8 "value")]);
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    return v9;
  }

  return result;
}

uint64_t sub_100054184(uint64_t a1, unsigned int a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_21:
    __break(0x5516u);
  }

  if (*(a1 + 8))
  {
    v4 = objc_alloc_init(NSAutoreleasePool);
    [objc_msgSend(*(a1 + 8) valueForProperty:{MPMediaItemPropertyPlaybackDuration), "doubleValue"}];
    v5 = a2 / 1000.0;
    if (v5 > v6 || (v7 = [*(a1 + 8) chaptersOfType:1], v20 = 0u, v21 = 0u, v22 = 0u, v23 = 0u, (v8 = objc_msgSend(v7, "countByEnumeratingWithState:objects:count:", &v20, v24, 16)) == 0))
    {
      v10 = 0;
      goto LABEL_18;
    }

    v9 = v8;
    v10 = 0;
    v11 = *v21;
    while (1)
    {
      v12 = 0;
      v13 = v10;
      v10 = (v10 + v9);
      v14 = ~v13;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v20 + 1) + 8 * v12);
        [v15 playbackTime];
        v17 = v16;
        [v15 playbackDuration];
        if (v17 + v18 >= v5)
        {
          v10 = v13;
          goto LABEL_18;
        }

        if (v14 == v12)
        {
          __break(0x5500u);
          goto LABEL_21;
        }

        v13 = (v13 + 1);
        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v9)
      {
LABEL_18:

        return v10;
      }
    }
  }

  return 0;
}

void *sub_100054344(void *result, void *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    result = a2;
    v2[1] = result;
  }

  return result;
}

uint64_t sub_10005437C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 8);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100054394(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (!result || (v4 = result, (result & 7) != 0))
  {
LABEL_17:
    __break(0x5516u);
    goto LABEL_18;
  }

  v8 = sub_1000DF5B0(@"UIImage", 0);
  v9 = 0;
  if ((*(*v4 + 128))(v4) <= a4)
  {
    return v9;
  }

  result = objc_alloc_init(NSAutoreleasePool);
  v10 = *(v4 + 32);
  if (v10 < 2)
  {
    v11 = result;
    if ((v10 & 1) == 0)
    {
      if (*(v4 + 8))
      {
        v14 = (*(*v4 + 408))(v4);
        v15 = sub_10002A564(v14);
        if (v15)
        {
          v9 = [v15 imageWithSize:{a2, a3}];
        }

        else
        {
          v9 = 0;
        }

        v16 = v9;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_15;
    }

    result = sub_1000388B8();
    if (result && (result & 7) == 0)
    {
      v12 = sub_100044A0C(result);
      v9 = [(objc_class *)v8 imageWithData:v12];
      v13 = v9;

LABEL_15:
      return v9;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(0x550Au);
  return result;
}

void sub_1000544EC(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
LABEL_11:
    __break(0x550Au);
    goto LABEL_12;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  if (!*(a1 + 8))
  {
LABEL_8:
    if (*(v5 + 24) < 2u)
    {
      _Block_object_dispose(&v4, 8);
      return;
    }

    goto LABEL_11;
  }

  if (!sub_100036DB4())
  {
    sub_1000DDE90(0, @"%s:%s:%d no systemMusicPlayer", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/TrackAccessor.mm", "IsGeniusAvailable", 714);
    goto LABEL_8;
  }

  v2 = sub_100044A30();
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100054614;
    block[3] = &unk_100114388;
    block[4] = &v4;
    block[5] = a1;
    dispatch_sync(v2, block);
    goto LABEL_8;
  }

LABEL_12:
  __break(0x5510u);
}

id sub_100054614(uint64_t a1)
{
  result = [sub_100044A24() isGeniusAvailableForSeedItems:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", *(*(a1 + 40) + 8))}];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100054670(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100054688(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000546A0(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000546B8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 0;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000546D0()
{
  if (qword_10012BC00 != -1)
  {
    sub_1000E214C();
  }

  return qword_10012BBF8;
}

uint64_t sub_10005477C(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100115918;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 20) = 0;
    *(result + 24) = 0;
    *(result + 28) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 80) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = objc_alloc_init(NSLock);
    return v1;
  }

  return result;
}

void *sub_100054804(void *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100115918;
    v2 = result[1];
    if (v2)
    {
      CFRunLoopTimerInvalidate(v2);
      v1[1] = 0;
    }

    v3 = v1[5];
    if (v3)
    {
      CFRunLoopTimerInvalidate(v3);
      v1[5] = 0;
    }

    [v1[10] lock];
    v4 = v1[8];
    if (v4)
    {
      CFRunLoopTimerInvalidate(v4);
      v1[8] = 0;
    }

    [v1[10] unlock];

    v1[10] = 0;
    return v1;
  }

  return result;
}

void *sub_1000548A0(void *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_100054804(result);
  }

  __break(0x5516u);
  return result;
}

void *sub_1000548B4(void *result)
{
  if (result && (result & 7) == 0)
  {
    sub_100054804(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100054934(uint64_t result)
{
  if (!result)
  {
    goto LABEL_13;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_13;
  }

  result = sub_100045A94();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  result = (*(*result + 104))(result, *(v1 + 56));
  if (__OFADD__(result, *(v1 + 48)))
  {
LABEL_14:
    __break(0x5500u);
    return result;
  }

  if (!*(v1 + 56))
  {
    return result;
  }

  result = sub_100045A94();
  if (!result || (result & 7) != 0)
  {
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  v2 = *(v1 + 56);
  v3 = *(*result + 88);

  return v3();
}

void sub_100054A0C(uint64_t a1, uint64_t a2)
{
  if (qword_10012BC00 != -1)
  {
    sub_1000E214C();
  }

  v3 = qword_10012BBF8;
  if (qword_10012BBF8)
  {
    v4 = (qword_10012BBF8 & 7) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    goto LABEL_22;
  }

  *(qword_10012BBF8 + 24) = 1;
  v5 = *(v3 + 20);
  if (v5 == 1028)
  {
    (*(*v3 + 64))(v3, a2, 0, 21, 131074);
    *(v3 + 32) = 1;
  }

  else if (v5 == 1027)
  {
    (*(*v3 + 64))(v3, a2, 0, 20, 131074);
    *(v3 + 32) = 1;
  }

  else
  {
    if (v5)
    {
      return;
    }

    sub_1000DDE90(0xBu, @"SimpleRemoteEventHandler long play pause fired");
    v6 = sub_1000388B8();
    if (!v6 || (v6 & 7) != 0)
    {
LABEL_22:
      __break(0x5516u);
      return;
    }

    sub_100044A3C(v6);
    if (*(v3 + 28))
    {
      SBSLockDevice();
    }
  }

  v7 = *(*v3 + 56);

  v7(v3);
}

void sub_100054B98(uint64_t a1, void *a2, int a3, CFTimeInterval a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    context.version = 0;
    context.info = a2;
    memset(&context.retain, 0, 24);
    v7 = *(a1 + 8);
    if (v7)
    {
      CFRunLoopTimerInvalidate(v7);
    }

    *(a1 + 24) = 0;
    *(a1 + 20) = a3;
    Current = CFAbsoluteTimeGetCurrent();
    *(a1 + 8) = CFRunLoopTimerCreate(kCFAllocatorDefault, Current + a4, a4, 0, 0, sub_100054A0C, &context);
    Main = CFRunLoopGetMain();
    CFRunLoopAddTimer(Main, *(a1 + 8), kCFRunLoopDefaultMode);
    CFRelease(*(a1 + 8));
  }
}

void sub_100054C60(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CFRunLoopTimerInvalidate(v2);
      *(a1 + 8) = 0;
    }
  }
}

void sub_100054CA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_105;
  }

  v9 = objc_alloc_init(NSAutoreleasePool);
  if ((a3 + 16) >= 0x20)
  {
    goto LABEL_106;
  }

  v10 = v9;
  if (a3 == 3)
  {
    v12 = &kMRMediaRemoteMediaTypeAudio;
    v11 = 4;
    switch(a4)
    {
      case 0:
        goto LABEL_35;
      case 1:
      case 2:
      case 10:
LABEL_18:
        v11 = 0xFFFFFFFFLL;
        goto LABEL_57;
      case 3:
        goto LABEL_66;
      case 4:
        goto LABEL_39;
      case 5:
LABEL_51:
        v11 = 102;
        LODWORD(a4) = 5;
        goto LABEL_57;
      case 6:
LABEL_49:
        v11 = 103;
        LODWORD(a4) = 6;
        goto LABEL_57;
      case 7:
        goto LABEL_38;
      case 8:
        goto LABEL_40;
      case 9:
        goto LABEL_41;
      case 11:
        goto LABEL_42;
      case 12:
        goto LABEL_43;
      case 13:
LABEL_46:
        v11 = 104;
        LODWORD(a4) = 13;
        goto LABEL_57;
      case 14:
LABEL_45:
        v11 = 105;
        LODWORD(a4) = 14;
        goto LABEL_57;
      case 15:
LABEL_47:
        v11 = 6;
        LODWORD(a4) = 15;
        goto LABEL_57;
      case 16:
LABEL_44:
        v11 = 7;
        LODWORD(a4) = 16;
        goto LABEL_57;
      case 17:
LABEL_48:
        v11 = 8;
        LODWORD(a4) = 20;
        goto LABEL_57;
      case 18:
LABEL_50:
        v11 = 10;
        LODWORD(a4) = 21;
        goto LABEL_57;
      default:
        NSLog(@"ERROR - %s:%s - %d unhandled audio button 0x%x", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/SimpleRemoteEventHandler.mm", "__convertIslKeyToIapFrameworkKey", 227, a4);
        goto LABEL_34;
    }
  }

  if (a3 != 2)
  {
    if (a3 != 1)
    {
LABEL_34:
      v11 = 4;
      switch(a4)
      {
        case 0:
          goto LABEL_35;
        case 3:
          goto LABEL_57;
        case 4:
          goto LABEL_39;
        case 5:
          goto LABEL_51;
        case 6:
          goto LABEL_49;
        case 7:
          goto LABEL_38;
        case 8:
          goto LABEL_40;
        case 9:
          goto LABEL_41;
        case 11:
          goto LABEL_42;
        case 12:
          goto LABEL_43;
        case 13:
          goto LABEL_46;
        case 14:
          goto LABEL_45;
        case 15:
          goto LABEL_47;
        case 16:
          goto LABEL_44;
        case 20:
          goto LABEL_48;
        case 21:
          goto LABEL_50;
        case 22:
          v11 = 111;
          goto LABEL_57;
        case 23:
          v11 = 112;
          goto LABEL_57;
        case 24:
          v11 = 113;
          goto LABEL_57;
        case 25:
          v11 = 114;
          goto LABEL_57;
        case 26:
          v11 = 115;
          goto LABEL_57;
        default:
          goto LABEL_18;
      }
    }

    if (a4 <= 2)
    {
      if (a4)
      {
        if (a4 == 1)
        {
          LODWORD(a4) = 3;
          v11 = 4;
LABEL_60:
          v12 = &kMRMediaRemoteMediaTypeImage;
          goto LABEL_66;
        }

        if (a4 != 2)
        {
          goto LABEL_26;
        }

        goto LABEL_39;
      }

      goto LABEL_35;
    }

    if (a4 != 3)
    {
      if (a4 != 4)
      {
        if (a4 != 5)
        {
LABEL_26:
          NSLog(@"ERROR - %s:%s - %d unhandled image button 0x%x", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/SimpleRemoteEventHandler.mm", "__convertIslKeyToIapFrameworkKey", 128, a4);
          goto LABEL_34;
        }

        goto LABEL_41;
      }

LABEL_40:
      v11 = 0;
      LODWORD(a4) = 8;
      goto LABEL_57;
    }

LABEL_38:
    v11 = 3;
    LODWORD(a4) = 7;
    goto LABEL_57;
  }

  if (a4 > 3)
  {
    if (a4 > 7)
    {
      if (a4 == 8)
      {
LABEL_42:
        v11 = 100;
        LODWORD(a4) = 11;
        goto LABEL_57;
      }

      if (a4 == 9)
      {
LABEL_43:
        v11 = 101;
        LODWORD(a4) = 12;
        goto LABEL_57;
      }
    }

    else
    {
      if (a4 == 4)
      {
        goto LABEL_40;
      }

      if (a4 == 5)
      {
LABEL_41:
        v11 = 1;
        LODWORD(a4) = 9;
        goto LABEL_57;
      }
    }

LABEL_31:
    NSLog(@"ERROR - %s:%s - %d unhandled video button 0x%x", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/SimpleRemoteEventHandler.mm", "__convertIslKeyToIapFrameworkKey", 161, a4);
    goto LABEL_34;
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
LABEL_39:
      v11 = 5;
      LODWORD(a4) = 4;
      goto LABEL_57;
    }

    goto LABEL_38;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      LODWORD(a4) = 3;
      v11 = 4;
LABEL_63:
      v12 = &kMRMediaRemoteMediaTypeVideo;
      goto LABEL_66;
    }

    goto LABEL_31;
  }

LABEL_35:
  v13 = sub_1000388B8();
  if (!v13 || (v13 & 7) != 0)
  {
    goto LABEL_105;
  }

  LODWORD(a4) = 0;
  v11 = (*(*v13 + 416))(v13) == 1;
LABEL_57:
  v14 = 0;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v15 = &stru_100119FF8;
      goto LABEL_67;
    }

    if (a3 != 1)
    {
      goto LABEL_78;
    }

    goto LABEL_60;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
      goto LABEL_78;
    }

    goto LABEL_63;
  }

  v12 = &kMRMediaRemoteMediaTypeAudio;
LABEL_66:
  v15 = *v12;
  if (!*v12)
  {
    v14 = 0;
    goto LABEL_78;
  }

LABEL_67:
  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_105;
  }

  if ((*(*a2 + 208))(a2) == 2)
  {
    WORD2(keys[0]) = -21846;
    LODWORD(keys[0]) = -1431655766;
    (*(*a2 + 184))(keys, a2);
    if (keys == -1 || keys + 5 <= 3)
    {
      __break(0x5513u);
      JUMPOUT(0x1000552F4);
    }

    v16 = [NSString stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X", LOBYTE(keys[0]), BYTE1(keys[0]), BYTE2(keys[0]), BYTE3(keys[0]), BYTE4(keys[0]), BYTE5(keys[0])];
  }

  else
  {
    v16 = 0;
  }

  keys[0] = kMRMediaRemoteOptionMediaType;
  keys[1] = kMRMediaRemoteOptionSourceID;
  v17 = &stru_100119FF8;
  if (v16)
  {
    v17 = v16;
  }

  values[0] = v15;
  values[1] = v17;
  v14 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
LABEL_78:
  if (a5 == 131073)
  {
    if (a4 == 21)
    {
      v11 = 11;
    }

    else
    {
      if (a4 != 20)
      {
        sub_1000553AC(v11);
        if (v11 <= 5 && ((1 << v11) & 0x3A) != 0)
        {
          v18 = sub_1000388B8();
          if (!v18 || (v18 & 7) != 0)
          {
            goto LABEL_105;
          }

          (*(*v18 + 688))(v18);
        }

LABEL_93:
        MRMediaRemoteSendCommand();
        if (v11 > 0xB)
        {
          goto LABEL_102;
        }

        if (((1 << v11) & 0xB) == 0)
        {
          if (((1 << v11) & 0xA00) == 0)
          {
            goto LABEL_102;
          }

LABEL_99:
          v20 = sub_1000388B8();
          if (v20 && (v20 & 7) == 0)
          {
            sub_10004506C(v20, v11);
            goto LABEL_102;
          }

          goto LABEL_105;
        }

        v19 = sub_1000388B8();
        if (v19 && (v19 & 7) == 0)
        {
          sub_100044E98(v19, v11);
          goto LABEL_102;
        }

LABEL_105:
        __break(0x5516u);
LABEL_106:
        __break(0x550Au);
      }

      v11 = 9;
    }

    sub_1000553AC(v11);
    goto LABEL_93;
  }

  if (a5 == 131074 && (a4 & 0xFFFFFFFE) == 0x14)
  {
    sub_1000553AC(v11);
    MRMediaRemoteSendCommand();
    if ((v11 | 2) == 0xA)
    {
      goto LABEL_99;
    }
  }

LABEL_102:
  if (v14)
  {
    CFRelease(v14);
  }
}

uint64_t sub_1000553AC(unsigned int a1)
{
  result = pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (dword_10012B6D8 >= 0xFFFFFFFFFFFFFFF4)
  {
    __break(0x5513u);
  }

  else if (dword_10012B6E4)
  {
    sub_100038500();
    result = sub_1000CA714();
    v3 = result;
    if (!dword_10012C648)
    {
      dword_10012C648 = result;
    }

    if (!dword_10012C638)
    {
      pthread_mutex_lock(&stru_1001295C8);
      if (!dword_10012C638)
      {
        dword_10012C638 = v3;
        if (a1 > 0xB)
        {
          v4 = 0;
        }

        else
        {
          v4 = dword_1000EB774[a1];
        }

        dword_10012C63C = v4;
      }

      return pthread_mutex_unlock(&stru_1001295C8);
    }
  }

  return result;
}

void sub_1000554A4(uint64_t a1, uint64_t a2, int *a3)
{
  if (!a1 || (a1 & 7) != 0 || (a3 & 7) != 0 || !a3)
  {
    goto LABEL_105;
  }

  if ((*a3 + 16) >= 0x20)
  {
    goto LABEL_104;
  }

  v40 = *a3;
  v39 = a3[1];
  v6 = *(a3 + 1);
  v7 = objc_alloc_init(NSAutoreleasePool);
  if ((a2 - 131077) <= 1)
  {
    v8 = *a3;
    if (v8 <= 3)
    {
      v9 = "DOWN";
      if (a2 == 131077)
      {
        v9 = "UP";
      }

      sub_1000DDE90(0xBu, @"car key %s event: source=%d key=%d port=%hhx", v9, v8, a3[1], *(a3 + 1));
      [*(a1 + 80) lock];
      *(a1 + 72) = a3[1];
      v10 = *(a1 + 64);
      if (v10)
      {
        CFRunLoopTimerInvalidate(v10);
        *(a1 + 64) = 0;
      }

      if (a2 != 131077)
      {
        context.version = 0;
        context.info = a1;
        memset(&context.retain, 0, 24);
        Current = CFAbsoluteTimeGetCurrent();
        *(a1 + 64) = CFRunLoopTimerCreate(0, Current + 1.5, 0.0, 0, 0, sub_100055C10, &context);
        Main = CFRunLoopGetMain();
        CFRunLoopAddTimer(Main, *(a1 + 64), kCFRunLoopCommonModes);
        CFRelease(*(a1 + 64));
      }

      [*(a1 + 80) unlock];
      goto LABEL_92;
    }

    goto LABEL_104;
  }

  if (a2 == 131079)
  {
    v13 = a3[1];
    if (v13 > 3)
    {
      goto LABEL_104;
    }

    v14 = a3[2];
    if (v14 > 3)
    {
      goto LABEL_104;
    }

    v15 = a3[3];
    if (v15 > 3)
    {
      goto LABEL_104;
    }

    v16 = a3[4];
    if (v16 > 3)
    {
      goto LABEL_104;
    }

    v17 = a3[5];
    if (v17 > 3)
    {
      goto LABEL_104;
    }

    sub_1000DDE90(0xBu, @"rotation event: source=%d ctype=%d dir=%d action=%d rtype=%d deg=%d degTotal=%d port=%hhx", v13, v14, v15, v16, v17, *(a3 + 12), *(a3 + 13), *(a3 + 4));
    v18 = a3[2];
    if (v18 > 3)
    {
      goto LABEL_104;
    }

    if (!v18)
    {
      v19 = a3[4];
      if (v19 > 3 || v19 == 1 && (a3[5] > 3 || a3[3] >= 4))
      {
        goto LABEL_104;
      }
    }

    goto LABEL_92;
  }

  if ((a2 - 131073) > 1)
  {
    goto LABEL_92;
  }

  SBSSpringBoardServerPort();
  SBGetCurrentBacklightFactor();
  v20 = 0.0 * 255.0;
  if ((0.0 * 255.0) <= -1.0 || v20 >= 4295000000.0)
  {
    goto LABEL_106;
  }

  *(a1 + 28) = v20;
  if (sub_1000DDE68(11))
  {
    if (v40 > 0xA)
    {
      v22 = "Unknown";
    }

    else
    {
      v22 = off_100115978[v40];
    }

    v23 = "evKeyUp";
    if (a2 == 131074)
    {
      v23 = "evKeyDown";
    }

    NSLog(@"SimpleRemoteEventHandler got %s context:%s key:%lu port=%hhx", v23, v22, v39, v6);
  }

  sub_100055C60(a1, &v40, &v39);
  if (a2 == 131073)
  {
    (*(*a1 + 56))(a1);
  }

  v24 = v39;
  if (!v39)
  {
    if (a2 == 131074)
    {
      (*(*a1 + 48))(a1, v6, 0, 2.0);
      sub_1000DDE90(0xBu, @"SimpleRemoteEventHandler starting timer for %f seconds", 0x4000000000000000);
    }

    v25 = *(a1 + 24);
    if (v25 > 1)
    {
      goto LABEL_104;
    }

    if (v25)
    {
      sub_1000DDE90(0xBu, @"SimpleRemoteEventHandler ignoring key");
      goto LABEL_92;
    }

    v24 = v39;
  }

  if (a2 == 131074 && (v24 & 0xFFFFFFFFFFFFFFF7) != 0x12 && !_AXSVoiceOverTouchEnabled())
  {
    v26 = sub_1000D5ED0();
    if (!v26 || (v26 & 7) != 0)
    {
      goto LABEL_105;
    }

    if (!(*(*v26 + 104))(v26))
    {
      v27 = sub_100025E90();
      if (!v27 || (v27 & 7) != 0)
      {
        goto LABEL_105;
      }

      if (((*(*v27 + 96))(v27) & 1) == 0)
      {
        v28 = sub_10004B1AC();
        if (!v28 || (v28 & 7) != 0)
        {
          goto LABEL_105;
        }

        (*(*v28 + 448))(v28);
      }
    }
  }

  if (v40 && v40 != 3)
  {
    v34 = 0;
    v29 = v39;
  }

  else
  {
    v29 = v39;
    if (v39 - 1 <= 1)
    {
      if (a2 == 131074)
      {
        if (v39 == 1)
        {
          v30 = 8;
        }

        else
        {
          v30 = -8;
        }

        *(a1 + 48) = v30;
        *(a1 + 56) = v6;
        context.version = 0;
        context.info = a1;
        memset(&context.retain, 0, 24);
        v31 = CFAbsoluteTimeGetCurrent();
        *(a1 + 40) = CFRunLoopTimerCreate(0, v31 + 0.4, 0.4, 0, 0, sub_100055CF4, &context);
        v32 = CFRunLoopGetMain();
        CFRunLoopAddTimer(v32, *(a1 + 40), kCFRunLoopCommonModes);
        CFRelease(*(a1 + 40));
      }

      else
      {
        CFRunLoopTimerInvalidate(*(a1 + 40));
        *(a1 + 40) = 0;
        sub_100054934(a1);
        *(a1 + 56) = 0;
      }

      goto LABEL_92;
    }

    if (v39 == 10)
    {
      if (a2 == 131073)
      {
        v33 = sub_100045A94();
        if (!v33 || (v33 & 7) != 0)
        {
          goto LABEL_105;
        }

        (*(*v33 + 112))(v33, v6);
      }

      goto LABEL_92;
    }

    if (!v40 && v39 == 19)
    {
      if (a2 == 131073)
      {
        v35 = [+[ITIdleTimerState sharedInstance](ITIdleTimerState newAssertionToDisableIdleTimerForReason:"newAssertionToDisableIdleTimerForReason:error:" error:@"SimpleRemoteButtonUp", 0];
        [v35 invalidate];
      }

      goto LABEL_92;
    }

    if (v40)
    {
      v34 = 0;
    }

    else
    {
      if (v39 <= 0x1A && ((1 << v39) & 0x4060000) != 0)
      {
        if (a2 == 131073)
        {
          if (v39 != 26)
          {
            if (v39 != 18)
            {
              goto LABEL_92;
            }

            (*(*a1 + 64))(a1, v6, 0, 9, 131073);
            if (v39 == 17)
            {
              SBSUndimScreen();
              goto LABEL_92;
            }
          }

          SBSLockDevice();
        }

LABEL_92:

        return;
      }

      v34 = 1;
      if (a2 == 131074 && v39 - 3 <= 1)
      {
        (*(*a1 + 48))(a1, v6, v39 | 0x400, 0.5);
        goto LABEL_92;
      }
    }
  }

  v36 = *(a1 + 32);
  if (v36 <= 1)
  {
    if (a2 == 131073 && (v34 & v36) != 0 && v29 - 3 <= 1)
    {
      *(a1 + 32) = 0;
      if (v29 == 3)
      {
        v37 = 20;
      }

      else
      {
        v37 = 21;
      }

      (*(*a1 + 64))(a1, v6, 0, v37, 131073);
    }

    else
    {
      (*(*a1 + 64))(a1, v6, v40, v29, a2);
    }

    goto LABEL_92;
  }

LABEL_104:
  __break(0x550Au);
LABEL_105:
  __break(0x5516u);
LABEL_106:
  __break(0x5505u);
}

void sub_100055C10(uint64_t a1, uint64_t a2)
{
  if (!a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    [*(a2 + 80) lock];
    *(a2 + 64) = 0;
    v3 = *(a2 + 80);

    [v3 unlock];
  }
}

void sub_100055C60(uint64_t a1, void *a2, uint64_t *a3)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_11;
  }

  if (*a2 != 5)
  {
    return;
  }

  if (!a3 || (a3 & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    return;
  }

  v4 = *a3 - 3;
  if (v4 <= 5)
  {
    v5 = qword_1000EB7A8[v4];
    *a3 = v5;
    sub_1000DDE90(0xBu, @"Simple remote IR command was converted to the following Context command %lu", v5);
    *a2 = 0;
  }
}

uint64_t sub_100055CF4(uint64_t a1, uint64_t a2)
{
  if (a2 && (a2 & 7) == 0)
  {
    return sub_100054934(a2);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100055D0C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

unsigned __int16 *sub_100055D20(unsigned __int16 *result)
{
  if (result)
  {
    if (result != -1)
    {
      return (bswap32(*result) >> 16);
    }
  }

  else
  {
    __break(0x5516u);
  }

  __break(0x5513u);
  return result;
}

unsigned __int16 *sub_100055D44(unsigned __int16 *result, unsigned int a2, uint64_t a3)
{
  if (a2 < 2)
  {
    return 0;
  }

  if (!result)
  {
    goto LABEL_24;
  }

  if (result == -1 || result >= 0xFFFFFFFFFFFFFFFELL)
  {
    __break(0x5513u);
    goto LABEL_24;
  }

  v3 = a2 - 2;
  if (v3 >> 16)
  {
    goto LABEL_25;
  }

  v4 = *result++;
  v5 = __rev16(v4);
  if (v3 < v5)
  {
    return 0;
  }

  v7 = (a3 & 7) == 0 && a3 != 0;
  if (!v5)
  {
    if (v7)
    {
      v8 = *(a3 + 2);
      if (!v8)
      {
        return v8;
      }

      sub_100056078(result, a3, 0);
      return (v5 + 2);
    }

    goto LABEL_24;
  }

  if (!v7)
  {
LABEL_24:
    __break(0x5516u);
    goto LABEL_25;
  }

  if ((v5 + 3) >> 2 > *(a3 + 2))
  {
    return 0;
  }

  result = sub_100056078(result, a3, v5);
  if (v5 <= 0xFFFD)
  {
    return (v5 + 2);
  }

LABEL_25:
  __break(0x5507u);
  return result;
}

unsigned __int16 *sub_100055E14(unsigned __int16 *result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a4 || (a4 & 7) != 0)
  {
    goto LABEL_12;
  }

  v7 = result;
  result = sub_100055D44(result, a2, a4);
  if (!result)
  {
    return 0;
  }

  v8 = result;
  if ((a2 - result) >> 16)
  {
LABEL_11:
    __break(0x5507u);
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  if (!__CFADD__(v7, result))
  {
    result = sub_100055D44((v7 + result), (a2 - result), a4 + 40);
    if (result)
    {
      v9 = result + v8;
      if (!((result + v8) >> 16))
      {
        *(a4 + 80) = a3;
        return v9;
      }

      goto LABEL_11;
    }

    return 0;
  }

LABEL_13:
  __break(0x5513u);
  return result;
}

unint64_t sub_100055EC0(unint64_t result, unsigned int a2, _WORD *a3, _WORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 < 4)
  {
    return 0;
  }

  if (!result)
  {
    goto LABEL_26;
  }

  if (result == -1)
  {
    goto LABEL_25;
  }

  if (!a3 || (a3 & 1) != 0)
  {
    goto LABEL_26;
  }

  v7 = *(result + 1) | (*result << 8);
  *a3 = _byteswap_ushort(*result);
  if (result > 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_25;
  }

  if (!a4 || (a4 & 1) != 0)
  {
    goto LABEL_26;
  }

  v8 = *(result + 3) | (*(result + 2) << 8);
  *a4 = _byteswap_ushort(*(result + 2));
  if (result + 2 > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_25;
  }

  v12 = result + 4;
  result = sub_100055D44((result + 4), a2, a5);
  if (!result)
  {
    return result;
  }

  v13 = result;
  if (__CFADD__(v12, result))
  {
    goto LABEL_25;
  }

  if (result > 0xFFFB)
  {
    goto LABEL_27;
  }

  v14 = a2 - result;
  if ((a2 - result) >> 16)
  {
    goto LABEL_27;
  }

  v15 = (v12 + result);
  v16 = v14;
  result = sub_100055D44(v15, v14, a6);
  if (!result)
  {
    return result;
  }

  if (__CFADD__(v15, result))
  {
    goto LABEL_25;
  }

  v17 = (v13 + 4) + result;
  if (HIWORD(v17))
  {
    goto LABEL_27;
  }

  v18 = v16 - result;
  if (HIWORD(v18))
  {
    goto LABEL_27;
  }

  v19 = (v15 + result);
  result = sub_100055D44(v19, v18, a7);
  if (!result)
  {
    return result;
  }

  if (__CFADD__(v19, result))
  {
LABEL_25:
    __break(0x5513u);
LABEL_26:
    __break(0x5516u);
LABEL_27:
    __break(0x5507u);
    return result;
  }

  if ((v17 + result) >> 16 || (v18 - result) >> 16)
  {
    goto LABEL_27;
  }

  return 1;
}

unsigned __int16 *sub_100056024(unsigned __int16 *result, unsigned int a2, uint64_t a3)
{
  if (!a3 || (a3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (*(a3 + 2) >= (a2 + 3) >> 2)
  {
    sub_100056078(result, a3, a2);
    return 0;
  }

  else
  {
    return 16;
  }

  return result;
}

unsigned __int16 *sub_100056078(unsigned __int16 *result, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    if (a2 && (a2 & 7) == 0)
    {
      *a2 = 0;
      return result;
    }

    goto LABEL_30;
  }

  if (!a2 || (a2 & 7) != 0)
  {
LABEL_30:
    __break(0x5516u);
    return result;
  }

  if (a3 > 4 * *(a2 + 2))
  {
LABEL_28:
    sub_1000E2160();
  }

  v3 = a3 - 1;
  if (__CFADD__(result, v3))
  {
LABEL_26:
    __break(0x5513u);
LABEL_27:
    __break(0x5507u);
    goto LABEL_28;
  }

  v4 = 0;
  v5 = a3 + 3;
  v6 = result + v3;
  do
  {
    v7 = 0;
    v8 = 0;
    v9 = v6;
    LOWORD(v10) = a3;
    v6 -= 4;
    LOWORD(a3) = a3 - 4;
    v11 = 31;
    while (1)
    {
      if (!v9)
      {
        goto LABEL_26;
      }

      v12 = *v9;
      if (v12 >> v11)
      {
        __break(0x5514u);
        goto LABEL_30;
      }

      v10 = v10 - 1;
      if (HIWORD(v10))
      {
        goto LABEL_27;
      }

      --v9;
      v8 |= v12 << v7;
      if (!v10)
      {
        break;
      }

      v11 -= 8;
      v7 += 8;
      if (v11 == -1)
      {
        goto LABEL_15;
      }
    }

    LOWORD(a3) = 0;
    v6 = v9;
LABEL_15:
    v13 = v4 + 1;
    if ((v13 & 0x10000) != 0)
    {
      goto LABEL_27;
    }

    v14 = *(a2 + 8);
    if (__CFADD__(v14, 4 * v4))
    {
      goto LABEL_26;
    }

    if (!v14)
    {
      goto LABEL_30;
    }

    v15 = (v14 + 4 * v4);
    if ((v15 & 3) != 0)
    {
      goto LABEL_30;
    }

    *v15 = v8;
    v4 = v13;
  }

  while (a3);
  *a2 = v5 >> 2;

  return sub_100057CF0(a2);
}

__int16 *sub_1000561AC(__int16 *result)
{
  v1 = 0;
  v2 = 0;
  do
  {
    v3 = off_100129760[v2];
    if (v3)
    {
      v4 = (off_100129760[v2] & 7) == 0;
    }

    else
    {
      v4 = 0;
    }

    if (!v4)
    {
      __break(0x5516u);
      return result;
    }

    v5 = *v3;
    v6 = v1 ^ 1;
    v1 = 1;
    v2 = 1;
  }

  while (((v5 != result) & v6) != 0);
  if (v5 == result)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100056200(uint64_t result)
{
  if (!result)
  {
    return 0;
  }

  if ((result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 12);
    if (v1 <= 0x7FF)
    {
      return (32 * v1);
    }
  }

  __break(0x5507u);
  return result;
}

uint64_t sub_100056234(uint64_t result, uint64_t a2)
{
  if (!a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(a2 + 80) = result;
    sub_100057A58(a2, 0, 6, a2 + 16);
    sub_100057A58(a2 + 40, 0, 6, a2 + 56);
    return 0;
  }

  return result;
}

uint64_t sub_100056294(const void **a1, const void **a2, uint64_t a3, uint64_t a4)
{
  sub_100057E48(1, a2);

  return sub_10005674C(a1, a2, a3, a4);
}

uint64_t sub_1000562F0(uint64_t a1, uint64_t a2, int a3)
{
  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__dst = v6;
  v15 = v6;
  result = sub_1000579D4(__dst);
  if (!a2 || (a2 & 7) != 0 || !a1 || (a1 & 7) != 0)
  {
LABEL_23:
    __break(0x5516u);
    goto LABEL_24;
  }

  v8 = *(a2 + 12);
  v9 = *a1;
  if (v9 < v8)
  {
    return sub_100057AFC(__dst);
  }

  for (i = 4 * v8; v9 > v8; v9 = *a1)
  {
    memcpy(__dst[1], *(a1 + 8), 4 * v8);
    LOWORD(__dst[0]) = v8;
    sub_100057CF0(__dst);
    sub_1000582F8(v8, a1);
    if (a3 == 1)
    {
      sub_100058360(*(a2 + 16), a1);
    }

    else
    {
      sub_100057FC0(*(a2 + 14), a1);
    }

    result = sub_1000580C0(__dst, a1);
  }

  if (v9 < v8)
  {
    return sub_100057AFC(__dst);
  }

  v11 = *(a1 + 8);
  if ((v8 == 0) != i - 4 <= ~v11)
  {
    if (v11)
    {
      v12 = (v11 + i - 4);
      if ((v12 & 3) == 0)
      {
        if (*v12 == -1)
        {
          sub_100057D94(a1, __dst);
          if (a3 == 1)
          {
            sub_1000580C0(*(a2 + 16), a1);
          }

          else
          {
            sub_100057E90(*(a2 + 14), a1);
          }

          v13 = *a1;
          if (v13 <= v8)
          {
            sub_100057D94(__dst, a1);
          }

          else
          {
            *a1 = v13 - 1;
            sub_100057CF0(a1);
          }
        }

        return sub_100057AFC(__dst);
      }
    }

    goto LABEL_23;
  }

LABEL_24:
  __break(0x5513u);
  return result;
}

uint64_t sub_100056490(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_22;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_22;
  }

  v4 = *(result + 8);
  result = sub_100057C40(result);
  if (result)
  {
    return result;
  }

  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_22;
  }

  sub_100057E90(*(a2 + 14), v2);
  result = sub_1000562F0(v2, a2, 0);
  v5 = *v2;
  if (*v2)
  {
    LOWORD(v6) = 0;
    v7 = v4 & 3;
    while (v4 && !v7)
    {
      *v4 = ~*v4;
      if (v4 >= 0xFFFFFFFFFFFFFFFCLL)
      {
        goto LABEL_23;
      }

      v4 += 4;
      v6 = (v6 + 1);
      if (v6 >= v5)
      {
        goto LABEL_12;
      }
    }

LABEL_22:
    __break(0x5516u);
    goto LABEL_23;
  }

LABEL_12:
  v8 = *(v2 + 1);
  if (__CFADD__(v8, 4 * v5))
  {
LABEL_23:
    __break(0x5513u);
    return result;
  }

  v9 = *(a2 + 12);
  if (v5 < v9)
  {
    v10 = (v8 + 4 * v5);
    while (v10 <= 0xFFFFFFFFFFFFFFFBLL)
    {
      if (!v10 || (v8 & 3) != 0)
      {
        goto LABEL_22;
      }

      *v10++ = -1;
      LODWORD(v5) = v5 + 1;
      if (v5 >= v9)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_23;
  }

LABEL_19:
  *v2 = v9;
  sub_100057CF0(v2);

  return sub_100057E90(1, v2);
}

uint64_t sub_1000565C0(const void **a1, unsigned __int16 *a2, uint64_t a3)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = v6;
  v8[1] = v6;
  sub_1000579D4(v8);
  sub_100057D94(a1, v8);
  sub_100056490(v8, a3);
  sub_1000580C0(v8, a2);
  sub_1000562F0(a2, a3, 0);
  return sub_100057AFC(v8);
}

uint64_t sub_10005664C(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = v6;
  v8[2] = v6;
  v8[0] = v6;
  sub_100057A78(v8);
  sub_1000583CC(a1, a2, v8);
  sub_1000562F0(v8, a3, 0);
  sub_100057D94(v8, a2);
  return sub_100057AFC(v8);
}

uint64_t sub_1000566D4(unint64_t a1, uint64_t a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = v4;
  v6[2] = v4;
  v6[0] = v4;
  sub_100057A78(v6);
  sub_1000586DC(a1, v6);
  sub_1000562F0(v6, a2, 0);
  sub_100057D94(v6, a1);
  return sub_100057AFC(v6);
}

uint64_t sub_10005674C(const void **a1, const void **a2, uint64_t a3, uint64_t a4)
{
  result = sub_100057B6C(a3);
  if (dword_10012C6B4 == -1)
  {
    goto LABEL_47;
  }

  v9 = result;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[0] = v10;
  v26[1] = v10;
  v24[0] = v10;
  v24[1] = v10;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v22[0] = v10;
  v22[1] = v10;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v20[0] = v10;
  v20[1] = v10;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  ++dword_10012C6B4;
  result = sub_100056B00(0, a3);
  if (result)
  {
    if (a2)
    {
      if ((a2 & 7) == 0)
      {
        *a2 = 0;
        if (a1)
        {
          if ((a1 & 7) == 0)
          {
            *a1 = 0;
            return result;
          }
        }
      }
    }

    goto LABEL_46;
  }

  result = sub_100056B00(1, a3);
  if (result)
  {
    return result;
  }

  result = sub_100056B00(2, a3);
  if (!result)
  {
    if (a4 && (a4 & 7) == 0)
    {
      if (sub_100056B00(*(a4 + 24), a1) && sub_100056B00(1, a2))
      {
        sub_1000579D4(v24);
        sub_1000579D4(v26);
        sub_100057D94(a1, v26);
        sub_100057D94(a2, v24);
        result = sub_100056B78(v26, v24, a4);
        if (v9 >= 3)
        {
          v11 = v9 - 1;
          do
          {
            if (sub_100057C98(a3, --v11))
            {
              sub_100056E2C(v26, v24, a1, a2, a4);
              v12 = v26;
              v13 = v24;
            }

            else
            {
              sub_100056E2C(a1, a2, v26, v24, a4);
              v12 = a1;
              v13 = a2;
            }

            result = sub_100056B78(v12, v13, a4);
          }

          while (v11 > 1);
        }

        if (a3)
        {
          if ((a3 & 7) == 0)
          {
            v14 = *(a3 + 8);
            if (v14)
            {
              if ((v14 & 3) == 0)
              {
                if (*v14)
                {
                  sub_100056E2C(v26, v24, a1, a2, a4);
                }

                else
                {
                  sub_100056B78(a1, a2, a4);
                }

                sub_100057AFC(v26);
                v19 = v24;
                return sub_100057AFC(v19);
              }
            }
          }
        }
      }

      else
      {
        sub_1000579D4(v24);
        sub_1000579D4(v26);
        sub_1000579D4(v20);
        sub_1000579D4(v22);
        sub_100057D94(a1, v22);
        sub_100057D94(a2, v20);
        sub_100057D94(a1, v26);
        sub_100057D94(a2, v24);
        result = sub_100056B78(v26, v24, a4);
        if (v9 >= 3)
        {
          v15 = v9 - 1;
          do
          {
            if (sub_100057C98(a3, --v15))
            {
              sub_100056F7C(v26, v24, a1, a2, v22, v20, a4);
              v16 = v26;
              v17 = v24;
            }

            else
            {
              sub_100056F7C(a1, a2, v26, v24, v22, v20, a4);
              v16 = a1;
              v17 = a2;
            }

            result = sub_100056B78(v16, v17, a4);
          }

          while (v15 > 1);
        }

        if (a3)
        {
          if ((a3 & 7) == 0)
          {
            v18 = *(a3 + 8);
            if (v18)
            {
              if ((v18 & 3) == 0)
              {
                if (*v18)
                {
                  sub_100056F7C(v26, v24, a1, a2, v22, v20, a4);
                }

                else
                {
                  sub_100056B78(a1, a2, a4);
                }

                sub_100057AFC(v26);
                sub_100057AFC(v24);
                sub_100057AFC(v22);
                v19 = v20;
                return sub_100057AFC(v19);
              }
            }
          }
        }
      }
    }

LABEL_46:
    __break(0x5516u);
LABEL_47:
    __break(0x5500u);
    return result;
  }

  return sub_100056B78(a1, a2, a4);
}

uint64_t sub_100056B00(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (!result)
  {
    result = sub_100057C40(a2);
    if (result)
    {
      return 1;
    }
  }

  if (a2 && (a2 & 7) == 0)
  {
    if (*a2 != 1)
    {
      return 0;
    }

    v4 = *(a2 + 8);
    if (v4 && (v4 & 3) == 0)
    {
      return *v4 == v3;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100056B78(uint64_t result, const void **a2, uint64_t a3)
{
  if (!a3 || (a3 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v5 = result;
    if (*(a3 + 26) == 4)
    {
      v16 = 0xAAAAAAAAAAAAAAAALL;
      *&v6 = 0xAAAAAAAAAAAAAAAALL;
      *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v14 = v6;
      v15 = v6;
      v13 = 0xAAAAAAAAAAAAAAAALL;
      v11 = v6;
      v12 = v6;
      sub_1000579D4(&v14);
      sub_1000579D4(&v11);
      sub_100057D94(v5, &v14);
      sub_1000566D4(&v14, a3);
      sub_100057D94(a2, &v11);
      sub_1000566D4(&v11, a3);
      sub_10005664C(v5, a2, a3);
      sub_100057FC0(4, a2);
      sub_1000562F0(a2, a3, 0);
      sub_100057D94(&v14, v5);
      sub_1000565C0(&v11, v5, a3);
      sub_1000566D4(v5, a3);
      sub_1000580C0(&v11, &v14);
      sub_1000562F0(&v14, a3, 0);
      sub_1000580C0(a2, &v14);
      sub_1000562F0(&v14, a3, 0);
      sub_10005664C(a2, &v14, a3);
      sub_100057D94(&v14, a2);
      sub_100057AFC(&v14);
      v7 = &v11;
    }

    else
    {
      v16 = 0xAAAAAAAAAAAAAAAALL;
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v14 = v8;
      v15 = v8;
      v13 = 0xAAAAAAAAAAAAAAAALL;
      v11 = v8;
      v12 = v8;
      v10 = 0xAAAAAAAAAAAAAAAALL;
      v9[0] = v8;
      v9[1] = v8;
      sub_1000579D4(&v14);
      sub_1000579D4(&v11);
      sub_1000579D4(v9);
      sub_100057D94(v5, &v14);
      sub_1000566D4(&v14, a3);
      sub_100057D94(a2, &v11);
      sub_1000566D4(&v11, a3);
      sub_100057D94(v5, v9);
      sub_10005664C(a2, v9, a3);
      sub_100057D94(v9, a2);
      sub_100057FC0(*(a3 + 26), a2);
      sub_1000562F0(a2, a3, 0);
      sub_1000580C0(&v14, a2);
      sub_1000562F0(a2, a3, 0);
      sub_1000580C0(&v11, a2);
      sub_1000562F0(a2, a3, 0);
      sub_10005664C(v9, a2, a3);
      sub_100057FC0(4, a2);
      sub_1000562F0(a2, a3, 0);
      sub_100057D94(&v14, v5);
      sub_1000565C0(&v11, v5, a3);
      sub_1000566D4(v5, a3);
      sub_100057AFC(&v14);
      sub_100057AFC(&v11);
      v7 = v9;
    }

    return sub_100057AFC(v7);
  }

  return result;
}

uint64_t sub_100056E2C(const void **a1, const void **a2, unsigned __int16 *a3, unsigned __int16 *a4, uint64_t a5)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[0] = v10;
  v14[1] = v10;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v12[0] = v10;
  v12[1] = v10;
  sub_1000579D4(v14);
  sub_1000579D4(v12);
  sub_100057D94(a1, v14);
  sub_10005664C(a3, v14, a5);
  sub_100057D94(a2, v12);
  sub_10005664C(a4, v12, a5);
  sub_1000565C0(v12, v14, a5);
  sub_100057D94(a2, v12);
  sub_10005664C(a3, v12, a5);
  sub_100057D94(v14, a3);
  sub_1000566D4(a3, a5);
  sub_10005664C(a1, a4, a5);
  sub_1000565C0(v12, a4, a5);
  result = sub_1000566D4(a4, a5);
  if ((a5 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100057FC0(*(a5 + 24), a4);
    sub_1000562F0(a4, a5, 0);
    sub_100057AFC(v14);
    return sub_100057AFC(v12);
  }

  return result;
}

uint64_t sub_100056F7C(const void **a1, const void **a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, uint64_t a7)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v14;
  v18[1] = v14;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v16[0] = v14;
  v16[1] = v14;
  sub_1000579D4(v18);
  sub_1000579D4(v16);
  sub_100057D94(a1, v18);
  sub_10005664C(a3, v18, a7);
  sub_100057D94(a2, v16);
  sub_10005664C(a4, v16, a7);
  sub_1000565C0(v16, v18, a7);
  sub_100057D94(a2, v16);
  sub_10005664C(a3, v16, a7);
  sub_100057D94(v18, a3);
  sub_1000566D4(a3, a7);
  sub_10005664C(a1, a4, a7);
  sub_1000565C0(v16, a4, a7);
  sub_1000566D4(a4, a7);
  sub_10005664C(a5, a4, a7);
  sub_10005664C(a6, a3, a7);
  sub_100057AFC(v18);
  return sub_100057AFC(v16);
}

uint64_t sub_1000570D4(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
LABEL_22:
    __break(0x5516u);
    goto LABEL_23;
  }

  v2 = *(a2 + 12);
  if (*(result + 2) < v2)
  {
    return 16;
  }

  v3 = *result;
  if (v3 < v2)
  {
    v4 = *(result + 8);
    v6 = (v4 & 3) == 0 && v4 != 0;
    v7 = 4 * v3;
    v8 = v2 - v3;
    while (v7 <= ~v4)
    {
      if (!v6)
      {
        goto LABEL_22;
      }

      *(v4 + v7) = 0;
      v7 += 4;
      if (!--v8)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_23;
  }

LABEL_18:
  *result = v2;
  v9 = *(result + 8);
  v10 = 4 * v2 - 4;
  if ((v2 == 0) != v10 <= ~v9)
  {
    if (v9 && ((v9 + v10) & 3) == 0)
    {
      result = 0;
      *(v9 + v10) = *(v9 + v10) & 0x3FFFFFFF | 0x40000000;
      return result;
    }

    goto LABEL_22;
  }

LABEL_23:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000571A4(const void **a1, const void **a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, uint64_t a7)
{
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[0] = v14;
  v22[1] = v14;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v20[0] = v14;
  v20[1] = v14;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v14;
  v18[1] = v14;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v16[0] = v14;
  v16[1] = v14;
  sub_1000579D4(v22);
  sub_1000579D4(v20);
  sub_1000579D4(v18);
  sub_1000579D4(v16);
  sub_100057D94(a1, v22);
  sub_10005664C(a3, v22, a7);
  sub_100057D94(a1, v20);
  sub_10005664C(a4, v20, a7);
  sub_100057D94(a2, v18);
  sub_10005664C(a4, v18, a7);
  sub_100057D94(a2, v16);
  sub_10005664C(a3, v16, a7);
  sub_100057D94(v20, a1);
  sub_1000565C0(v16, a1, a7);
  sub_1000566D4(a1, a7);
  sub_10005664C(a5, a1, a7);
  sub_10005664C(a5, a1, a7);
  sub_100057D94(v22, a3);
  sub_1000565C0(v18, a3, a7);
  sub_1000566D4(a3, a7);
  sub_10005664C(a6, a3, a7);
  sub_10005664C(a6, a3, a7);
  sub_1000580C0(a3, a1);
  sub_1000562F0(a1, a7, 0);
  sub_100057D94(v20, a3);
  sub_1000580C0(v16, a3);
  sub_1000562F0(a3, a7, 0);
  sub_100057D94(v22, a2);
  sub_1000580C0(v18, a2);
  sub_1000562F0(a2, a7, 0);
  result = sub_10005664C(a2, a3, a7);
  if (!a7 || (a7 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    sub_100057E48(*(a7 + 26), a2);
    sub_10005664C(v20, a2, a7);
    sub_10005664C(v16, a2, a7);
    sub_1000580C0(a2, a2);
    sub_1000562F0(a2, a7, 0);
    sub_1000580C0(a2, a3);
    sub_1000562F0(a3, a7, 0);
    sub_10005664C(a5, a3, a7);
    sub_10005664C(a6, a3, a7);
    sub_1000580C0(a3, a3);
    sub_1000562F0(a3, a7, 0);
    sub_1000565C0(a3, a1, a7);
    sub_100057AFC(v22);
    sub_100057AFC(v20);
    sub_100057AFC(v18);
    sub_100057AFC(v16);
    return sub_100057C40(a1) != 0;
  }

  return result;
}

uint64_t sub_1000574B0(const void **a1, unsigned __int16 *a2, unsigned int a3, unint64_t a4, unsigned int a5)
{
  v35 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34[0] = v10;
  v34[1] = v10;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v32[0] = v10;
  v32[1] = v10;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v30[0] = v10;
  v30[1] = v10;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v28[0] = v10;
  v28[1] = v10;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v26[0] = v10;
  v26[1] = v10;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v24[0] = v10;
  v24[1] = v10;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v22[1] = v10;
  v22[0] = v10;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v20[0] = v10;
  v20[1] = v10;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v18[1] = v10;
  v18[2] = v10;
  v18[0] = v10;
  v17 = -21846;
  v16 = -21846;
  sub_1000579D4(v20);
  sub_1000579D4(v34);
  sub_1000579D4(v32);
  sub_1000579D4(v30);
  sub_1000579D4(v28);
  sub_1000579D4(v26);
  sub_1000579D4(v24);
  sub_1000579D4(v22);
  sub_100057A78(v18);
  v11 = sub_100057804(a1);
  if (!v11)
  {
    v14 = 1;
    goto LABEL_17;
  }

  v12 = v11;
  v13 = sub_100055EC0(a4, a5, &v17, &v16, v34, v32, v30);
  v14 = 5;
  if (!v13 || v17 != 61453)
  {
    goto LABEL_17;
  }

  if (v16 != 6)
  {
    v14 = 20;
    goto LABEL_17;
  }

  result = sub_100057D94(v32, v18);
  if ((v12 & 7) == 0)
  {
    sub_100057E48(v12[7], v20);
    sub_1000580C0(v20, v18);
    if (LOWORD(v20[0]) > v12[6])
    {
      v14 = 18;
LABEL_17:
      sub_100057AFC(v28);
      sub_100057AFC(v26);
      sub_100057AFC(v32);
      sub_100057AFC(v30);
      sub_100057AFC(v24);
      sub_100057AFC(v22);
      sub_100057AFC(v20);
      sub_100057AFC(v34);
      sub_100057AFC(v18);
      return v14;
    }

    v14 = sub_100056024(a2, a3, v20);
    if (v14)
    {
      goto LABEL_17;
    }

    if (sub_1000570D4(v20, v12))
    {
      sub_1000E2190();
    }

    sub_100057E48(v12[12], v28);
    sub_100056294(v28, v26, v34, v12);
    sub_100057D94(v32, v18);
    sub_100058360(v20, v18);
    result = sub_1000562F0(v18, v12, 1);
    if (a1 && (a1 & 7) == 0)
    {
      sub_100057D94(a1, v24);
      sub_100057D94(a1 + 5, v22);
      sub_10005674C(v24, v22, v18, v12);
      if (sub_1000571A4(v32, v30, v24, v22, v28, v26, v12))
      {
        v14 = 0;
      }

      else
      {
        v14 = 6;
      }

      goto LABEL_17;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100057780(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 88) = a2;
    sub_100057A58(result + 96, 0, 6, result + 112);

    return sub_100056234(a2, v2);
  }

  return result;
}

uint64_t sub_1000577E4(uint64_t result)
{
  if (!result)
  {
    return 1;
  }

  if ((result & 7) == 0)
  {
    return sub_100056200(*(result + 88));
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100057804(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 88);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005781C(uint64_t a1, unsigned __int16 *a2, unsigned int a3)
{
  result = sub_100057864(a1, a2, a3);
  if (!result)
  {
    if (!a1 || (a1 & 7) != 0)
    {
      __break(0x5516u);
    }

    else
    {
      return 2 * (*(a1 + 96) != 0);
    }
  }

  return result;
}

uint64_t sub_100057864(uint64_t a1, unsigned __int16 *a2, unsigned int a3)
{
  sub_100057780(a1, 0);
  if (a3 > 3)
  {
    result = sub_100055D20(a2);
    if (a2 < 0xFFFFFFFFFFFFFFFELL)
    {
      if (a3 - 2 >= 0x10000)
      {
        goto LABEL_28;
      }

      if (result == 65261)
      {
        v8 = 1;
      }

      else
      {
        if (result != 57005)
        {
          v6 = "feePublicKey: Bad Public Key Magic Number";
          goto LABEL_25;
        }

        v8 = 0;
      }

      if ((a2 + 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (!(((a3 - 2) - 2) >> 16))
        {
          result = sub_100055D20(a2 + 2);
          if ((a2 + 2) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            if ((a3 - 4) >= 2uLL)
            {
              result = sub_1000561AC(result);
              if (a1 && (a1 & 7) == 0)
              {
                v9 = result;
                *(a1 + 88) = result;
                if (!result)
                {
                  v6 = "feePublicKey: Bad Key Blob(2)";
                  goto LABEL_25;
                }

                v10 = a2 + 3;
                v11 = (a3 - 6);
                if (v8)
                {
                  if (!sub_100055E14(v10, v11, v9, a1))
                  {
                    v6 = "feePublicKey: Bad Key Blob(4)";
                    goto LABEL_25;
                  }
                }

                else
                {
                  if (!sub_100055D44(v10, v11, a1 + 96))
                  {
                    v6 = "feePublicKey: Bad Key Blob(3)";
                    goto LABEL_25;
                  }

                  result = sub_100056234(*(a1 + 88), a1);
                  if (result)
                  {
                    return result;
                  }
                }

                return 0;
              }

LABEL_30:
              __break(0x5516u);
              return result;
            }

LABEL_29:
            __break(0x5515u);
            goto LABEL_30;
          }

          goto LABEL_27;
        }

LABEL_28:
        __break(0x5507u);
        goto LABEL_29;
      }
    }

LABEL_27:
    __break(0x5513u);
    goto LABEL_28;
  }

  v6 = "feePublicKey: key blob (1)";
LABEL_25:
  puts(v6);
  return 11;
}

uint64_t sub_1000579D4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  *result = 393216;
  *(result + 8) = result + 16;
  v1 = dword_10012C6B8 + 40;
  if (dword_10012C6B8 >= 0xFFFFFFFFFFFFFFD8)
  {
    goto LABEL_11;
  }

  if (v1 != v1)
  {
LABEL_13:
    __break(0x5507u);
    return result;
  }

  dword_10012C6B8 += 40;
  if (dword_10012C6BC < v1)
  {
    dword_10012C6BC = v1;
  }

  v2 = dword_10012C6C0 + 1;
  if (__OFADD__(dword_10012C6C0, 1))
  {
LABEL_11:
    __break(0x5500u);
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  ++dword_10012C6C0;
  if (v2 > dword_10012C6C4)
  {
    dword_10012C6C4 = v2;
  }

  return result;
}

uint64_t sub_100057A58(uint64_t result, __int16 a2, __int16 a3, uint64_t a4)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *result = a2;
    *(result + 2) = a3;
    *(result + 8) = a4;
  }

  return result;
}

uint64_t sub_100057A78(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  *result = 655360;
  *(result + 8) = result + 16;
  v1 = dword_10012C6B8 + 56;
  if (dword_10012C6B8 >= 0xFFFFFFFFFFFFFFC8)
  {
    goto LABEL_11;
  }

  if (v1 != v1)
  {
LABEL_13:
    __break(0x5507u);
    return result;
  }

  dword_10012C6B8 += 56;
  if (dword_10012C6BC < v1)
  {
    dword_10012C6BC = v1;
  }

  v2 = dword_10012C6C8 + 1;
  if (__OFADD__(dword_10012C6C8, 1))
  {
LABEL_11:
    __break(0x5500u);
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  ++dword_10012C6C8;
  if (v2 > dword_10012C6CC)
  {
    dword_10012C6CC = v2;
  }

  return result;
}

uint64_t sub_100057AFC(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_12;
  }

  v1 = *(result + 2);
  v2 = 4 * v1 + 4;
  v3 = dword_10012C6B8 >= v2;
  v4 = dword_10012C6B8 - v2;
  if (!v3)
  {
LABEL_11:
    __break(0x5515u);
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  if (v4 == v4)
  {
    dword_10012C6B8 = v4;
    if (v1 < 7)
    {
      v5 = &dword_10012C6C0;
    }

    else
    {
      v5 = &dword_10012C6C8;
    }

    if (!__OFSUB__(*v5, 1))
    {
      --*v5;
      return result;
    }

    goto LABEL_11;
  }

LABEL_13:
  __break(0x5507u);
  return result;
}

uint64_t sub_100057B6C(uint64_t a1)
{
  result = sub_100057C40(a1);
  if (result)
  {
    LOWORD(v3) = 0;
    return v3;
  }

  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_18;
  }

  v4 = *(a1 + 8);
  v5 = *a1 - 1;
  if ((*a1 == 0) == 4 * v5 <= ~v4)
  {
LABEL_19:
    __break(0x5513u);
    goto LABEL_20;
  }

  if (!v4 || (v6 = (v4 + 4 * v5), (v6 & 3) != 0))
  {
LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }

  v7 = *v6;
  if (!*v6)
  {
    sub_1000E21C0();
  }

  v8 = 32;
  if ((v7 & 0x80000000) == 0)
  {
    v9 = 0x80000000;
    while (1)
    {
      v8 = v8 - 1;
      if (v8 >= 0x10000)
      {
        break;
      }

      v10 = (v7 & (v9 >> 1)) == 0;
      v9 >>= 1;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

LABEL_17:
    __break(0x5507u);
    goto LABEL_18;
  }

LABEL_13:
  if (!(v5 >> 59))
  {
    v3 = v8 + 32 * v5;
    if (!(v3 >> 16))
    {
      return v3;
    }

    goto LABEL_17;
  }

LABEL_20:
  __break(0x550Cu);
  return result;
}

uint64_t sub_100057C40(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    v1 = *result;
    if (!*result)
    {
      return 1;
    }

    for (i = *(result + 8); i && (*(result + 8) & 3) == 0; ++i)
    {
      if (*i)
      {
        return 0;
      }

      if (i >= 0xFFFFFFFFFFFFFFFCLL)
      {
        goto LABEL_13;
      }

      if (!--v1)
      {
        return 1;
      }
    }
  }

  __break(0x5516u);
LABEL_13:
  __break(0x5513u);
  return result;
}

uint64_t sub_100057C98(uint64_t result, unsigned int a2)
{
  if ((a2 & 0x1F) == 0x1F)
  {
    goto LABEL_9;
  }

  if (!result || (result & 7) != 0)
  {
LABEL_8:
    __break(0x5516u);
LABEL_9:
    __break(0x5514u);
    goto LABEL_10;
  }

  v2 = *(result + 8);
  if (!__CFADD__(v2, 4 * (a2 >> 5)))
  {
    if (v2)
    {
      v3 = (v2 + 4 * (a2 >> 5));
      if ((v3 & 3) == 0)
      {
        return *v3 & (1 << (a2 & 0x1F));
      }
    }

    goto LABEL_8;
  }

LABEL_10:
  __break(0x5513u);
  return result;
}

unsigned __int16 *sub_100057CF0(unsigned __int16 *result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_17;
  }

  v1 = *result;
  v2 = *(result + 1);
  v3 = 4 * *result - 4;
  if ((*result == 0) == v3 <= ~v2)
  {
    goto LABEL_16;
  }

  if (!v2)
  {
    goto LABEL_17;
  }

  v4 = (v2 + v3);
  if ((v4 & 3) != 0)
  {
    goto LABEL_17;
  }

  if (*v4)
  {
    return result;
  }

  v5 = v1 >= 2;
  v6 = v1 - 2;
  if (v5)
  {
    while (~v2 >= 4 * v6)
    {
      if (*(v2 + 4 * v6))
      {
        goto LABEL_14;
      }

      if (v6-- <= 0)
      {
        v8 = 0;
        goto LABEL_15;
      }
    }

LABEL_16:
    __break(0x5513u);
LABEL_17:
    __break(0x5516u);
    goto LABEL_18;
  }

LABEL_14:
  v8 = v6 + 1;
  if (v6 + 1 < 0x10000)
  {
LABEL_15:
    *result = v8;
    return result;
  }

LABEL_18:
  __break(0x5507u);
  return result;
}

const void **sub_100057D94(const void **result, uint64_t a2)
{
  if (!result)
  {
    sub_1000E21F0(275, "srcgiant != ((void *)0)");
  }

  if (!a2)
  {
    sub_1000E21F0(276, "destgiant != ((void *)0)");
  }

  v3 = result;
  if ((result & 7) != 0 || (a2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = *result;
    if (v4 > *(a2 + 2))
    {
      sub_1000E21F0(277, "srcgiant->sign <= destgiant->capacity");
    }

    result = memcpy(*(a2 + 8), result[1], 4 * v4);
    v5 = *v3;
    *a2 = v5;
    if (v5 > *(a2 + 2))
    {
      sub_1000E21F0(283, "(destgiant)->sign <= (destgiant)->capacity");
    }
  }

  return result;
}

uint64_t sub_100057E48(uint64_t result, uint64_t a2)
{
  if (a2 && (a2 & 7) == 0)
  {
    *a2 = 0;
    v2 = *(a2 + 8);
    v4 = (v2 & 3) == 0 && v2 != 0;
    if (result)
    {
      if (v4)
      {
        *v2 = result;
        *a2 = 1;
        return result;
      }
    }

    else if (v4)
    {
      *v2 = 0;
      return result;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100057E90(uint64_t result, uint64_t a2)
{
  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_33;
  }

  v3 = result;
  v4 = *a2;
  result = sub_100057C40(a2);
  if (!result)
  {
    v5 = v3 != 0;
    if (v4 && v3)
    {
      v6 = 0;
      v7 = *(a2 + 8);
      v9 = (v7 & 3) == 0 && v7 != 0;
      v10 = 1;
      while (v6 <= ~v7)
      {
        if (!v9)
        {
          goto LABEL_33;
        }

        v11 = *(v7 + v6);
        v12 = v11 + v3;
        v5 = __CFADD__(v11, v3);
        v3 = v5;
        *(v7 + v6) = v12;
        if (v10 < v4)
        {
          v6 += 4;
          ++v10;
          if (v5)
          {
            continue;
          }
        }

        goto LABEL_24;
      }

      goto LABEL_34;
    }

LABEL_24:
    if (!v5)
    {
      return result;
    }

    v13 = *a2;
    if (v13 == 0xFFFF)
    {
LABEL_35:
      __break(0x5507u);
      return result;
    }

    v14 = v13 + 1;
    *a2 = v14;
    if (*(a2 + 2) < v14)
    {
      sub_1000E221C();
    }

    v15 = *(a2 + 8);
    if (__CFADD__(v15, 4 * v4))
    {
LABEL_34:
      __break(0x5513u);
      goto LABEL_35;
    }

    if (v15)
    {
      v16 = (v15 + 4 * v4);
      if ((v16 & 3) == 0)
      {
        *v16 = v3;
        return result;
      }
    }

LABEL_33:
    __break(0x5516u);
    goto LABEL_34;
  }

  if (v3 >= 0x10000)
  {
    goto LABEL_35;
  }

  return sub_100057E48(v3, a2);
}

uint64_t sub_100057FC0(uint64_t result, unsigned __int16 *a2)
{
  if (!a2 || (a2 & 7) != 0)
  {
LABEL_21:
    __break(0x5516u);
    goto LABEL_22;
  }

  v2 = *a2;
  if (!*a2)
  {
LABEL_14:
    if (v2 > a2[1])
    {
      sub_1000E224C(386, "(g)->sign <= (g)->capacity");
    }

    return result;
  }

  v3 = *(a2 + 1);
  if (!__CFADD__(v3, 4 * (v2 - 1)))
  {
    if (v3)
    {
      v4 = &v3[v2 - 1];
      if ((v4 & 3) == 0)
      {
        if (!*v4)
        {
          sub_1000E224C(369, "(size == 0) || (g->n[size - 1] != 0)");
        }

        v5 = 0;
        v6 = 0;
        v7 = *(a2 + 1) & 3;
        v8 = *(a2 + 1);
        while (!v7)
        {
          v9 = v6 + *v3 * result;
          *v3 = v9;
          if (v3 > 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_22;
          }

          if (v5 == 0xFFFF)
          {
            goto LABEL_23;
          }

          ++v3;
          v6 = HIDWORD(v9);
          v5 = (v5 + 1);
          LOBYTE(v8) = v8 + 4;
          if (v5 >= v2)
          {
            if (!v6)
            {
              goto LABEL_14;
            }

            if ((v8 & 3) != 0)
            {
              goto LABEL_21;
            }

            *v3 = v6;
            if (v2 == 0xFFFF)
            {
              goto LABEL_23;
            }

            *a2 = v2 + 1;
            return result;
          }
        }
      }
    }

    goto LABEL_21;
  }

LABEL_22:
  __break(0x5513u);
LABEL_23:
  __break(0x5507u);
  return result;
}

uint64_t sub_1000580C0(uint64_t result, unsigned __int16 *a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_59;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(result + 8);
  v5 = *(a2 + 1);
  if (v2 < v3)
  {
    if (!*result)
    {
      LODWORD(v7) = 0;
      v10 = *(a2 + 1);
LABEL_29:
      while (v5 && (v10 & 3) == 0)
      {
        if (v5 > 0xFFFFFFFFFFFFFFFBLL)
        {
          goto LABEL_58;
        }

        v19 = __CFADD__(*v5, v7);
        *v5 += v7;
        v5 += 4;
        LODWORD(v7) = v19;
        if (++v2 >= v3)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_59;
    }

    v6 = 0;
    v7 = 0;
    v8 = *(result + 8) & 3;
    v9 = *(a2 + 1) & 3;
    v10 = *(a2 + 1);
    while (v4 < 0xFFFFFFFFFFFFFFFCLL)
    {
      if (!v4 || v8 || !v5 || v9)
      {
        goto LABEL_59;
      }

      if (v5 > 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_58;
      }

      result = *v5;
      v11 = v7 + *v4 + result;
      *v5 = v11;
      if (v6 == 0xFFFF)
      {
        goto LABEL_60;
      }

      ++v4;
      v5 += 4;
      v7 = HIDWORD(v11);
      v6 = (v6 + 1);
      LOBYTE(v10) = v10 + 4;
      if (v6 >= v2)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_58;
  }

  if (*a2)
  {
    v12 = 0;
    v13 = 0;
    v14 = *(result + 8) & 3;
    v15 = *(a2 + 1) & 3;
    result = 0xFFFFLL;
    LOBYTE(v16) = v4;
    v17 = *(a2 + 1);
    while (v4 <= 0xFFFFFFFFFFFFFFFBLL)
    {
      if (!v4 || v14 || !v5 || v15)
      {
        goto LABEL_59;
      }

      if (v5 > 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_58;
      }

      v18 = v13 + *v4 + *v5;
      *v5 = v18;
      if (v12 == 0xFFFF)
      {
        goto LABEL_60;
      }

      ++v4;
      v5 += 4;
      v13 = HIDWORD(v18);
      v12 = (v12 + 1);
      LOBYTE(v17) = v17 + 4;
      LOBYTE(v16) = v16 + 4;
      if (v12 >= v3)
      {
        LODWORD(v7) = v13;
        goto LABEL_38;
      }
    }

    goto LABEL_58;
  }

  LODWORD(v7) = 0;
  v17 = *(a2 + 1);
  v16 = *(result + 8);
LABEL_38:
  if (v3 < v2)
  {
    v20 = v16 & 3;
    v21 = v17 & 3;
    while (v4 <= 0xFFFFFFFFFFFFFFFBLL)
    {
      if (!v4 || v20)
      {
        goto LABEL_59;
      }

      v22 = *v4 + v7;
      LODWORD(v7) = __CFADD__(*v4, v7);
      if (v5 > 0xFFFFFFFFFFFFFFFBLL)
      {
        break;
      }

      if (!v5 || v21)
      {
        goto LABEL_59;
      }

      ++v4;
      v23 = v5 + 4;
      *v5 = v22;
      ++v3;
      v5 += 4;
      if (v3 >= v2)
      {
        v3 = v2;
        v5 = v23;
        goto LABEL_51;
      }
    }

LABEL_58:
    __break(0x5513u);
LABEL_59:
    __break(0x5516u);
    goto LABEL_60;
  }

LABEL_51:
  if (v7)
  {
    if (!v5 || (v5 & 3) != 0)
    {
      goto LABEL_59;
    }

    *v5 = 1;
    if (v3 == 0xFFFF)
    {
LABEL_60:
      __break(0x5507u);
      return result;
    }

    ++v3;
  }

  *a2 = v3;
  if (v3 > a2[1])
  {
    sub_1000E2278();
  }

  return result;
}

void *sub_1000582F8(void *result, unsigned __int16 *a2)
{
  if (!a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_12;
  }

  if (result)
  {
    v2 = *a2;
    if (v2 > result)
    {
      v3 = v2 - result;
      if (!HIWORD(v3))
      {
        *a2 = v3;
        v4 = 4 * (v3 & 0x3FFF);
        if (v4 == 4 * v3)
        {
          v5 = *(a2 + 1);
          if (!__CFADD__(v5, 4 * result))
          {
            return memcpy(v5, &v5[4 * result], v4);
          }

          goto LABEL_13;
        }
      }

LABEL_12:
      __break(0x5507u);
LABEL_13:
      __break(0x5513u);
      return result;
    }

    *a2 = 0;
  }

  return result;
}

uint64_t sub_100058360(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = v4;
  v6[2] = v4;
  v6[0] = v4;
  sub_100057A78(v6);
  sub_1000583CC(a1, a2, v6);
  sub_100057D94(v6, a2);
  return sub_100057AFC(v6);
}

void sub_1000583CC(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_70;
  }

  if (dword_10012C6D0 == -1)
  {
LABEL_67:
    __break(0x5500u);
    goto LABEL_68;
  }

  v6 = *a1;
  v7 = *a2;
  ++dword_10012C6D0;
  if (!a3 || (a3 & 7) != 0)
  {
    goto LABEL_70;
  }

  v8 = v7 + v6;
  if (v7 + v6 > *(a3 + 2))
  {
    goto LABEL_69;
  }

  bzero(*(a3 + 8), 4 * v8);
  v9 = *(a2 + 1);
  if (v7 >= 2)
  {
    v10 = 0;
    v11 = *(a2 + 1) & 3;
    while (1)
    {
      if (v9 >= 0xFFFFFFFFFFFFFFFCLL)
      {
        goto LABEL_68;
      }

      if (!v9 || v11)
      {
        goto LABEL_70;
      }

      v12 = (v9 + 4);
      if (v9 + 4 > 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_68;
      }

      v13 = *(a3 + 8);
      if (__CFADD__(v13, 4 * v10))
      {
        goto LABEL_68;
      }

      if (!v13)
      {
        goto LABEL_70;
      }

      v14 = v13 + 4 * v10;
      if ((v14 & 3) != 0)
      {
        goto LABEL_70;
      }

      v16 = *v9;
      v9 += 8;
      v15 = v16;
      v17 = *v12;
      v18 = *v14;
      if (v6)
      {
        break;
      }

      v22 = 0;
      v21 = 0;
      LODWORD(v29) = 0;
LABEL_33:
      v35 = v29 * v17;
      v25 = __CFADD__(v18 + v22, v35);
      v36 = v18 + v22 + v35;
      if (v25)
      {
        goto LABEL_67;
      }

      v25 = __CFADD__(v36, v21);
      v37 = v36 + v21;
      if (v25)
      {
        goto LABEL_67;
      }

      if (v14 > 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_68;
      }

      *v14 = v37;
      v10 += 2;
      if ((v7 - 1) <= v10)
      {
        v38 = HIDWORD(v37);
        goto LABEL_39;
      }
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = *(a1 + 1);
    v24 = v23 & 3;
    while (v23 <= 0xFFFFFFFFFFFFFFFBLL)
    {
      if (!v23 || v24)
      {
        goto LABEL_70;
      }

      v25 = __CFADD__(v22, v21);
      v26 = v22 + v21;
      if (v25)
      {
        goto LABEL_67;
      }

      v25 = __CFADD__(v18, v26);
      v27 = v18 + v26;
      if (v25)
      {
        goto LABEL_67;
      }

      v28 = dword_10012C6D4 + 1;
      if (dword_10012C6D4 == -1)
      {
        goto LABEL_67;
      }

      v29 = *v23;
      ++dword_10012C6D4;
      v30 = v28 + 1;
      if (v28 == -1)
      {
        goto LABEL_67;
      }

      v31 = v29 * v15;
      v32 = v20 * v17;
      dword_10012C6D4 = v30;
      v33 = v31 + (v20 * v17);
      v25 = __CFADD__(v33, v27);
      v34 = v33 + v27;
      if (v25)
      {
        goto LABEL_67;
      }

      if (v14 > 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_68;
      }

      v18 = *(v14 + 4);
      *v14 = v34;
      if (v19 == 0xFFFF)
      {
        goto LABEL_71;
      }

      v23 += 4;
      v21 = HIDWORD(v32);
      v22 = HIDWORD(v34) + HIDWORD(v31);
      v14 += 4;
      v19 = (v19 + 1);
      v20 = v29;
      if (v19 >= v6)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_68;
  }

  v38 = 0;
  v10 = 0;
LABEL_39:
  if (v7 > v10)
  {
    if (!v9 || (v9 & 3) != 0)
    {
      goto LABEL_70;
    }

    v39 = *v9;
    if (!v39)
    {
      goto LABEL_60;
    }

    v40 = *(a3 + 8);
    if (!__CFADD__(v40, 4 * v10))
    {
      v41 = (v40 + 4 * v10);
      if (v6)
      {
        v42 = 0;
        v38 = 0;
        v43 = *(a1 + 1);
        v44 = v43 & 3;
        v45 = *(a3 + 8) & 3;
        v46 = v41;
        do
        {
          if (v43 > 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_68;
          }

          if (!v43 || v44)
          {
            goto LABEL_70;
          }

          if (dword_10012C6D4 == -1)
          {
            goto LABEL_67;
          }

          v47 = *v43;
          ++dword_10012C6D4;
          if (!v46 || v45)
          {
            goto LABEL_70;
          }

          if (v46 > 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_68;
          }

          v48 = v47 * v39;
          v41 = v46 + 1;
          v49 = v48 + v38 + *v46;
          *v46 = v49;
          if (v42 == 0xFFFF)
          {
            goto LABEL_71;
          }

          v43 += 4;
          v38 = HIDWORD(v49);
          v42 = (v42 + 1);
          ++v46;
        }

        while (v42 < v6);
        if (!v41)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v38 = 0;
        if (!v41)
        {
          goto LABEL_70;
        }
      }

      if ((v41 & 3) == 0)
      {
        *v41 = v38;
        goto LABEL_60;
      }

LABEL_70:
      __break(0x5516u);
      goto LABEL_71;
    }

LABEL_68:
    __break(0x5513u);
LABEL_69:
    sub_1000E22A8();
  }

LABEL_60:
  if (HIWORD(v8))
  {
LABEL_71:
    __break(0x5507u);
    return;
  }

  v50 = v8 - 1;
  if (v38)
  {
    v51 = 1;
  }

  else
  {
    v51 = v8 == 0;
  }

  if (v51)
  {
    v50 = v7 + v6;
  }

  *a3 = v50;
}

unint64_t sub_1000586DC(unint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
LABEL_52:
    __break(0x5516u);
LABEL_53:
    __break(0x5507u);
    goto LABEL_54;
  }

  if (dword_10012C6D8 != -1)
  {
    v2 = *result;
    ++dword_10012C6D8;
    v4 = (a2 & 7) == 0 && a2 != 0;
    if (v2)
    {
      if (v4)
      {
        v5 = 0;
        v6 = *(result + 8);
        v7 = *(a2 + 8);
        v8 = v7;
        v9 = v6;
        do
        {
          if (v9 >= 0xFFFFFFFFFFFFFFFCLL)
          {
            goto LABEL_51;
          }

          if (!v9 || (v6 & 3) != 0)
          {
            goto LABEL_52;
          }

          if (v8 > 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_51;
          }

          if (!v8 || (v7 & 3) != 0)
          {
            goto LABEL_52;
          }

          v10 = *v9 * *v9;
          *v8 = v10;
          v11 = v8 + 1;
          if (v11 > 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_51;
          }

          *v11 = HIDWORD(v10);
          if (v5 == 0xFFFF)
          {
            goto LABEL_53;
          }

          ++v9;
          v5 = (v5 + 1);
          v8 = v11 + 1;
        }

        while (v5 < v2);
        if (v2 == 1)
        {
          v12 = 2;
LABEL_47:
          v24 = (v12 - 1);
          if (!__CFADD__(v7, 4 * v24))
          {
            if (!*(v7 + 4 * v24))
            {
              LOWORD(v12) = v12 - 1;
            }

            goto LABEL_50;
          }

LABEL_51:
          __break(0x5513u);
          goto LABEL_52;
        }

        v13 = 0;
        v14 = v6;
LABEL_27:
        if (v14 > 0xFFFFFFFFFFFFFFFBLL)
        {
          goto LABEL_51;
        }

        if (!v14)
        {
          goto LABEL_52;
        }

        v15 = v13 + 1;
        result = 4 * (v13 + 1);
        if (result > ~v6)
        {
          goto LABEL_51;
        }

        result = (2 * v13) | 1u;
        if (~v7 < 4 * result)
        {
          goto LABEL_51;
        }

        if (v13 == 0xFFFF)
        {
          goto LABEL_53;
        }

        result = v7 + 4 * result;
        v13 = (v13 + 1);
        if (v15 < v2)
        {
          v16 = 0;
          v17 = *v14;
          v18 = (v6 + 4 * v15);
          v19 = v13;
          while (v18 <= 0xFFFFFFFFFFFFFFFBLL && result <= 0xFFFFFFFFFFFFFFFBLL)
          {
            v20 = *v18 * v17;
            v21 = 2 * *v18 * v17 + v16 + *result;
            *result = v21;
            if (v19 == 0xFFFF)
            {
              goto LABEL_53;
            }

            ++v18;
            result += 4;
            v16 = ((v20 >> 31) & 0x1FFFFFFFELL) + HIDWORD(v21);
            v19 = (v19 + 1);
            if (v19 >= v2)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_51;
        }

        v16 = 0;
LABEL_40:
        ++v14;
        v22 = result & 3;
        while (!v22)
        {
          if (result > 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_51;
          }

          v23 = *result + v16;
          *result = v23;
          result += 4;
          v16 = HIDWORD(v23) + HIDWORD(v16);
          if (!v16)
          {
            if (v13 < (v2 - 1))
            {
              goto LABEL_27;
            }

            if ((v2 & 0x8000) == 0)
            {
              v12 = 2 * v2;
              goto LABEL_47;
            }

            goto LABEL_53;
          }
        }
      }
    }

    else if (v4)
    {
      LOWORD(v12) = 0;
LABEL_50:
      *a2 = v12;
      return result;
    }

    goto LABEL_52;
  }

LABEL_54:
  __break(0x5500u);
  return result;
}

uint64_t sub_1000588E8(uint64_t result)
{
  if (!result)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000588F4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      operator new();
    }
  }

  else
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_1000589A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (!a2)
    {
      sub_1000E1D34();
    }

    if ((a2 & 7) == 0)
    {
      result = *(a2 + 24);
      if (!result)
      {
        sub_1000E1D34();
      }

      *(a2 + 24) = 0;
      if ((result & 7) == 0)
      {

        operator delete();
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100058A0C(uint64_t result, int a2, char *a3, _BYTE *a4)
{
  if (result && a3 && ((a2 & 0xFFFFFF00) != 0x200 ? (v4 = 1) : (v4 = 2), *a3 = v4, a4))
  {
    *a4 = 0;
    return 0;
  }

  else
  {
    __break(0x5516u);
  }

  return result;
}

unsigned __int16 *sub_100058A3C(unsigned __int16 *result, char **a2, int a3)
{
  if (!result)
  {
    goto LABEL_10;
  }

  if (a3 == 512)
  {
    return 0x7FFF;
  }

  result = sub_100058A8C(result, a2, a3);
  if (result)
  {
    if ((result & 7) == 0)
    {
      v3 = *result;
      if (*result)
      {
        if ((v3 & 7) == 0)
        {
          return *(v3 + 76);
        }
      }
    }

LABEL_10:
    __break(0x5516u);
  }

  return result;
}

unsigned __int16 *sub_100058A8C(unsigned __int16 *result, char **a2, int a3)
{
  if (!result)
  {
    goto LABEL_25;
  }

  if (!a3)
  {
    if (a2 && (a2 & 7) == 0)
    {
      v4 = (*(*a2 + 26))(a2);
      result = 0;
      if (v4 <= 1)
      {
        if (!v4)
        {
          return &off_100129790;
        }

        if (v4 == 1)
        {
          return &off_1001297A8;
        }

        return result;
      }

      if (v4 == 2)
      {
        return &off_1001297C0;
      }

      if (v4 != 3)
      {
        return result;
      }

      v6 = **a2;
      if (result)
      {
        if ((result & 7) == 0)
        {
          if ((*(*result + 280))(result) == 1)
          {
            return &off_100129790;
          }

          else
          {
            return 0;
          }
        }
      }
    }

LABEL_25:
    __break(0x5516u);
    return result;
  }

  if (a3 == 512)
  {
    return &off_100129778;
  }

  result = &off_1001297D8;
  v5 = 295;
  while (result[4] != a3)
  {
    result += 12;
    if (!--v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100058C08(uint64_t result)
{
  if (result)
  {
    v1 = sub_10000C0EC();
    result = pthread_mutex_lock(&stru_10012B758);
    for (i = *(v1 + 8); ; i = *(i + 8))
    {
      v3 = i == v1;
      if (i == v1)
      {
        break;
      }

      if (!i || (i & 7) != 0)
      {
        goto LABEL_16;
      }

      v4 = *(i + 16);
      if (!v4 || (*(i + 16) & 7) != 0)
      {
        goto LABEL_16;
      }

      v6 = *(v4 + 24);
      if (v6)
      {
        if ((v6 & 7) != 0)
        {
          goto LABEL_16;
        }

        if (*(v6 + 35))
        {
          break;
        }
      }
    }

    pthread_mutex_unlock(&stru_10012B758);
    return v3;
  }

  else
  {
LABEL_16:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100058CA0(uint64_t result, uint64_t a2, int a3)
{
  if (!result)
  {
LABEL_27:
    __break(0x5516u);
    goto LABEL_28;
  }

  if (!a2)
  {
    goto LABEL_26;
  }

  if ((a3 + 8) < 0x10)
  {
    if (a3 > 6)
    {
LABEL_25:
      __break(0x5518u);
LABEL_26:
      sub_1000E1D34();
    }

    if ((a2 & 7) == 0)
    {
      v5 = *(a2 + 24);
      if (v5)
      {
        if ((v5 & 7) == 0)
        {
          if (*(v5 + 28))
          {
            return 0;
          }

          v6 = result;
          if ((a3 + 1) < 2)
          {
            sub_100058E18(result, a2);
            goto LABEL_23;
          }

          if (a3 == -2)
          {
            if (!(*(*a2 + 272))(a2))
            {
              (*(*a2 + 112))(a2);
              goto LABEL_23;
            }

            result = *(a2 + 40);
            if (result && (result & 7) == 0)
            {
              (*(*result + 112))(result);
              goto LABEL_23;
            }
          }

          else
          {
            if (a3 != 6)
            {
              goto LABEL_23;
            }

            result = sub_1000C4254();
            if (result && (result & 7) == 0)
            {
              v7 = sub_1000932FC(result, a2);
              if ((v7 - 768) <= 0xFFFFFEFF)
              {
                v8 = sub_100058A8C(v6, a2, v7);
                if (v8)
                {
                  *(v5 + 8) = v8;
                  goto LABEL_23;
                }

                goto LABEL_25;
              }

LABEL_23:
              *v5 = a3;
              return 0;
            }
          }
        }
      }
    }

    goto LABEL_27;
  }

LABEL_28:
  __break(0x550Au);
  return result;
}

unsigned __int16 *sub_100058E18(unsigned __int16 *result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_12;
  }

  if (!a2)
  {
    sub_1000E1D34();
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_12;
  }

  v3 = *(a2 + 24);
  if (!v3 || (v3 & 7) != 0)
  {
    goto LABEL_12;
  }

  if (*(v3 + 28))
  {
    return result;
  }

  *(v3 + 288) = 0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  result = sub_100058A8C(result, a2, 0);
  *(v3 + 8) = result;
  v4 = *(a2 + 24);
  if (!v4 || (v4 & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
    return result;
  }

  *(v4 + 4) = 0x7FFFFFFF;
  return result;
}

uint64_t sub_100058EBC(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if ((a2 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    goto LABEL_10;
  }

  v2 = *(a2 + 24);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v2 & 7) != 0)
  {
    goto LABEL_9;
  }

  result = *v2;
  if ((result + 8) >= 0x10)
  {
LABEL_10:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_100058F00(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_12;
  }

  if (!a2)
  {
    sub_1000E1D34();
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_12;
  }

  v2 = *(a2 + 24);
  if (!v2)
  {
    return 0x7FFFFFFFLL;
  }

  if ((v2 & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  if ((*v2 + 8) >= 0x10)
  {
LABEL_13:
    __break(0x550Au);
    return result;
  }

  if ((*v2 - 4) >= 3)
  {
    return 0x7FFFFFFFLL;
  }

  result = v2[1];
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100058F68(uint64_t result, uint64_t a2, int a3)
{
  if (result)
  {
    if (!a2)
    {
      sub_1000E1D34();
    }

    if (a3 < 0)
    {
      goto LABEL_10;
    }

    if ((a2 & 7) == 0)
    {
      v3 = *(a2 + 24);
      if (v3)
      {
        if ((v3 & 7) == 0)
        {
          *(v3 + 4) = a3;
          return 0;
        }
      }
    }
  }

  __break(0x5516u);
LABEL_10:
  __break(0x550Au);
  return result;
}

BOOL sub_100058FB0(_BOOL8 result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    sub_1000E1D34();
  }

  if ((a2 & 7) != 0 || (v2 = *(a2 + 24)) == 0 || (v2 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
  }

  else
  {
    v3 = *v2;
    if ((v3 + 8) < 0x10)
    {
      return (v3 - 4) < 3;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_100059008(uint64_t result, uint64_t a2, int a3, int a4, uint64_t *a5)
{
  if (!result)
  {
    goto LABEL_24;
  }

  if (!a2)
  {
    sub_1000DDEEC(0, 4, "%s:%d: NULL devPort\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapAuthentic/IapAuthentic.cpp", 2267);
  }

  if (a3 != 1 || a4)
  {
    v9 = a3 == 2 && a4 == 0;
    if (v9)
    {
      result = 0;
    }

    else
    {
      result = 2;
    }

    v10 = 20;
    if (a3 == 2 && a4 == 0)
    {
      v11 = a3;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    if (!a2)
    {
LABEL_7:
      if (!v9)
      {
        return result;
      }

      goto LABEL_20;
    }
  }

  else
  {
    result = 0;
    v9 = 1;
    v10 = 16;
    v11 = 1;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_24;
  }

  v12 = *(a2 + 24);
  if (!v12 || (v12 & 7) != 0)
  {
    goto LABEL_24;
  }

  v12[32] = v11;
  v12[33] = 0;
  v12[34] = v10;
  if (!v9)
  {
    return result;
  }

LABEL_20:
  if (!a5 || (a5 & 7) != 0)
  {
LABEL_24:
    __break(0x5516u);
    return result;
  }

  *a5 = v10;
  return result;
}

unsigned __int16 *sub_100059100(unsigned __int16 *result, uint64_t a2)
{
  if (result)
  {
    if (!a2)
    {
      return 22;
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 24);
      result = sub_100058A8C(result, a2, 0);
      if (v2)
      {
        if ((v2 & 7) == 0)
        {
          v3 = result;
          result = 0;
          v2[1] = v3;
          v2[2] = 0;
          v2[3] = 5;
          return result;
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

void sub_100059168(uint64_t a1, void **a2, void **a3)
{
  if (!a1)
  {
    goto LABEL_18;
  }

  if (!a2)
  {
    goto LABEL_18;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_18;
  }

  v5 = (*(*a2 + 25))(a2);
  if (!a3)
  {
    goto LABEL_18;
  }

  if ((a3 & 7) != 0)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = (*(*a3 + 25))(a3);
  syslog(4, "%s:%s-%d ctaSrcPort = %hhx %s, ctaDstPort = %hhx %s", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapAuthentic/IapAuthentic.cpp", "TransferCTAAuthState", 2373, a2, v6, a3, v7);
  v8 = a2[3];
  if (!v8 || (v8 & 7) != 0)
  {
    goto LABEL_18;
  }

  if ((*v8 + 8) >= 0x10)
  {
LABEL_19:
    __break(0x550Au);
    return;
  }

  syslog(4, "ctaSrcPort->GetAuthPortInfo()->authenticState=%d, ctaSrcPort->GetAuthPortInfo()->ctaCertLingoes=%X\n", *v8, v8[7]);
  if (a2 == a3)
  {
    return;
  }

  v9 = a2[3];
  if (!v9 || (v9 & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }

  if ((*v9 + 8) > 0xF)
  {
    goto LABEL_19;
  }

  if (*v9 == 6 && v9[7])
  {
    v10 = a3[3];
    if ((v10 & 7) == 0)
    {
      memcpy(a3[3], v9, 0x128uLL);
      *(v9 + 2) = a3;
      v10[2] = 0;
      *(v10 + 6) = 5;
      return;
    }

    goto LABEL_18;
  }
}

uint64_t sub_1000592F0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (!a2)
    {
      return 0;
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 24);
      if (v2)
      {
        if ((v2 & 7) == 0)
        {
          return *(v2 + 16);
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100059324(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    return 5;
  }

  if ((a2 & 7) != 0 || (v2 = *(a2 + 24)) == 0 || (v2 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    goto LABEL_10;
  }

  result = *(v2 + 24);
  if (result >= 8)
  {
LABEL_10:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_100059364(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_9;
  }

  result = 22;
  if (a2 && a3)
  {
    if ((a2 & 7) == 0)
    {
      v3 = *(a2 + 24);
      if (v3)
      {
        if ((v3 & 7) == 0)
        {
          result = 0;
          *(v3 + 16) = a3;
          return result;
        }
      }
    }

LABEL_9:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10005939C(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (result)
  {
    if (!a2)
    {
      return 22;
    }

    if (a3 >= 8)
    {
      goto LABEL_11;
    }

    if (a3 == 5)
    {
      return 22;
    }

    if ((a2 & 7) == 0)
    {
      v3 = *(a2 + 24);
      if (v3)
      {
        if ((v3 & 7) == 0)
        {
          result = 0;
          *(v3 + 24) = a3;
          return result;
        }
      }
    }
  }

  __break(0x5516u);
LABEL_11:
  __break(0x550Au);
  return result;
}