id getCRPairedVehicleManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCRPairedVehicleManagerClass_softClass_0;
  v7 = getCRPairedVehicleManagerClass_softClass_0;
  if (!getCRPairedVehicleManagerClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCRPairedVehicleManagerClass_block_invoke_0;
    v3[3] = &unk_278D2B060;
    v3[4] = &v4;
    __getCRPairedVehicleManagerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241F008F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F00B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _BBAreGenerativeModelsAvailable(void *a1)
{
  v1 = a1;
  v2 = +[_BBGenerativeModelAvailabilityCache sharedInstance];
  v3 = [v2 statusForUseCaseIdentifier:v1];

  if (v3 < 3)
  {
    return 1u >> (v3 & 7);
  }

  else
  {
    return 0;
  }
}

void _BBPowerChanged(int a1, int a2, int a3, intptr_t notificationID)
{
  HIDWORD(v5) = a3 + 536870288;
  LODWORD(v5) = a3 + 536870288;
  v4 = v5 >> 4;
  if (v4 > 1)
  {
    if (v4 == 2 || v4 == 9)
    {
      v9 = __BBServerQueue;

      dispatch_async(v9, &__block_literal_global_850);
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        return;
      }

      dispatch_async(__BBServerQueue, &__block_literal_global_848);
    }

    v7 = __BBRootDomainConnect;

    IOAllowPowerChange(v7, notificationID);
  }
}

id BBAllowedClasses()
{
  if (BBAllowedClasses_onceToken != -1)
  {
    BBAllowedClasses_cold_1();
  }

  v1 = BBAllowedClasses___classes;

  return v1;
}

__CFString *BBStringFromBBContentPreviewSetting(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_278D2BB50[a1];
  }
}

void sub_241F03874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *BBStringFromBBAnnounceSetting(uint64_t a1)
{
  if ((a1 + 1) > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_278D2BBB8[a1 + 1];
  }
}

void sub_241F03988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F03AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *BBStringFromBBAnnounceCarPlaySetting(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return @"<unknown>";
  }

  else
  {
    return off_278D2BB70[a1 + 1];
  }
}

void sub_241F03CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F03E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F03FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *BBStringFromBBSystemSetting(uint64_t a1)
{
  if ((a1 + 1) > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_278D2BBB8[a1 + 1];
  }
}

void sub_241F04148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F042C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F043F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *BBStringFromBBNotificationListDisplayStyleSetting(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_278D2BBD8[a1];
  }
}

__CFString *BBStringFromBBScheduledDeliverySetting(uint64_t a1)
{
  if ((a1 + 1) > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_278D2BB98[a1 + 1];
  }
}

void sub_241F0452C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void BBDispatchSafeSync(void *a1, void *a2)
{
  object = a1;
  v3 = a2;
  v4 = objc_getAssociatedObject(object, "kBBQueueSafeContextKey");
  if (!v4)
  {
    BBDispatchSafeSync_cold_1();
  }

  v5 = dispatch_get_specific("kBBQueueSafeContextKey");
  if (v4 == v5)
  {
    v3[2](v3);
  }

  else
  {
    dispatch_sync(object, v3);
  }
}

uint64_t BBDismissalSyncDictionaryMatchesBulletin(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 date];
  [v5 timeIntervalSince1970];
  v7 = v6;
  v8 = [v3 syncHash];

  v9 = _BBDismissalSyncDictionaryMatches(v4, v8, v7);
  return v9;
}

uint64_t _BBDismissalSyncDictionaryMatches(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 objectForKey:@"d"];
  if (!v7)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 timeIntervalSince1970];
  }

  else
  {
    [v7 doubleValue];
  }

  if (v8 == a3 || vabdd_f64(v8, a3) <= 300.0)
  {
LABEL_8:
    v10 = [v5 objectForKey:@"h"];
    v9 = [v6 isEqualToString:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_241F06608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F06FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id BBPublisherDestinationStrings(int a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"Sound"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"NotificationCenter"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v3 addObject:@"LockScreen"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v3 addObject:@"Alert"];
  if ((a1 & 0x40) == 0)
  {
LABEL_6:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 addObject:@"Car"];
  if ((a1 & 0x80) == 0)
  {
LABEL_7:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 addObject:@"Spoken"];
  if ((a1 & 0x100) == 0)
  {
LABEL_8:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 addObject:@"Forwarding"];
  if ((a1 & 0x200) == 0)
  {
LABEL_9:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  [v3 addObject:@"Highlights"];
  if ((a1 & 0x10000) != 0)
  {
LABEL_10:
    [v3 addObject:@"Override"];
  }

LABEL_11:

  return v3;
}

id RemoteDataProviderClientProxyInterface()
{
  if (RemoteDataProviderClientProxyInterface_onceToken != -1)
  {
    RemoteDataProviderClientProxyInterface_cold_1();
  }

  v1 = RemoteDataProviderClientProxyInterface___interface;

  return v1;
}

void __RemoteDataProviderClientProxyInterface_block_invoke()
{
  v34[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28543F8E8];
  v1 = RemoteDataProviderClientProxyInterface___interface;
  RemoteDataProviderClientProxyInterface___interface = v0;

  v2 = RemoteDataProviderClientProxyInterface___interface;
  v3 = MEMORY[0x277CBEB98];
  v34[0] = objc_opt_class();
  v34[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_bulletinsWithRequestParameters_lastCleared_completion_ argumentIndex:0 ofReply:1];

  v6 = RemoteDataProviderClientProxyInterface___interface;
  v7 = MEMORY[0x277CBEB98];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v9 = [v7 setWithArray:v8];
  [v6 setClasses:v9 forSelector:sel_clearedInfoForBulletins_lastClearedInfo_completion_ argumentIndex:0 ofReply:0];

  v10 = RemoteDataProviderClientProxyInterface___interface;
  v11 = BBAllowedClasses();
  [v10 setClasses:v11 forSelector:sel_clearedInfoForBulletins_lastClearedInfo_completion_ argumentIndex:1 ofReply:0];

  v12 = RemoteDataProviderClientProxyInterface___interface;
  v13 = BBAllowedClasses();
  [v12 setClasses:v13 forSelector:sel_clearedInfoForBulletins_lastClearedInfo_completion_ argumentIndex:0 ofReply:1];

  v14 = RemoteDataProviderClientProxyInterface___interface;
  v15 = BBAllowedClasses();
  [v14 setClasses:v15 forSelector:sel_clearedInfoForClearingAllBulletinsWithLastClearedInfo_completion_ argumentIndex:0 ofReply:0];

  v16 = RemoteDataProviderClientProxyInterface___interface;
  v17 = BBAllowedClasses();
  [v16 setClasses:v17 forSelector:sel_clearedInfoForClearingAllBulletinsWithLastClearedInfo_completion_ argumentIndex:0 ofReply:1];

  v18 = RemoteDataProviderClientProxyInterface___interface;
  v19 = MEMORY[0x277CBEB98];
  v32 = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  v21 = [v19 setWithArray:v20];
  [v18 setClasses:v21 forSelector:sel_clearedInfoForClearingBulletinsFromDate_toDate_lastClearedInfo_completion_ argumentIndex:0 ofReply:0];

  v22 = RemoteDataProviderClientProxyInterface___interface;
  v23 = MEMORY[0x277CBEB98];
  v31 = objc_opt_class();
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v25 = [v23 setWithArray:v24];
  [v22 setClasses:v25 forSelector:sel_clearedInfoForClearingBulletinsFromDate_toDate_lastClearedInfo_completion_ argumentIndex:1 ofReply:0];

  v26 = RemoteDataProviderClientProxyInterface___interface;
  v27 = BBAllowedClasses();
  [v26 setClasses:v27 forSelector:sel_clearedInfoForClearingBulletinsFromDate_toDate_lastClearedInfo_completion_ argumentIndex:2 ofReply:0];

  v28 = RemoteDataProviderClientProxyInterface___interface;
  v29 = BBAllowedClasses();
  [v28 setClasses:v29 forSelector:sel_clearedInfoForClearingBulletinsFromDate_toDate_lastClearedInfo_completion_ argumentIndex:0 ofReply:1];

  v30 = *MEMORY[0x277D85DE8];
}

id RemoteDataProviderServerProxyInterface()
{
  if (RemoteDataProviderServerProxyInterface_onceToken != -1)
  {
    RemoteDataProviderServerProxyInterface_cold_1();
  }

  v1 = RemoteDataProviderServerProxyInterface___interface;

  return v1;
}

uint64_t __RemoteDataProviderServerProxyInterface_block_invoke()
{
  RemoteDataProviderServerProxyInterface___interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28543FC50];

  return MEMORY[0x2821F96F8]();
}

id RemoteDataProviderRegistrationInterface()
{
  if (RemoteDataProviderRegistrationInterface_onceToken != -1)
  {
    RemoteDataProviderRegistrationInterface_cold_1();
  }

  v1 = RemoteDataProviderRegistrationInterface___interface;

  return v1;
}

void __RemoteDataProviderRegistrationInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28543D108];
  v1 = RemoteDataProviderRegistrationInterface___interface;
  RemoteDataProviderRegistrationInterface___interface = v0;

  v2 = RemoteDataProviderRegistrationInterface___interface;
  v3 = RemoteDataProviderClientProxyInterface();
  [v2 setInterface:v3 forSelector:sel_addDataProviderWithSectionID_clientProxy_identity_completion_ argumentIndex:1 ofReply:0];

  v4 = RemoteDataProviderRegistrationInterface___interface;
  v5 = RemoteDataProviderServerProxyInterface();
  [v4 setInterface:v5 forSelector:sel_addDataProviderWithSectionID_clientProxy_identity_completion_ argumentIndex:0 ofReply:1];
}

id BBDataProviderConnectionCheckinServerInterface()
{
  if (BBDataProviderConnectionCheckinServerInterface_onceToken != -1)
  {
    BBDataProviderConnectionCheckinServerInterface_cold_1();
  }

  v1 = BBDataProviderConnectionCheckinServerInterface___interface;

  return v1;
}

void __BBDataProviderConnectionCheckinServerInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285438B88];
  v1 = BBDataProviderConnectionCheckinServerInterface___interface;
  BBDataProviderConnectionCheckinServerInterface___interface = v0;

  v2 = BBDataProviderConnectionCheckinServerInterface___interface;
  v3 = RemoteDataProviderRegistrationInterface();
  [v2 setInterface:v3 forSelector:sel_registerServiceName_appBundleID_completion_ argumentIndex:0 ofReply:1];
}

void sub_241F15F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location, id a38)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a38);
  _Unwind_Resume(a1);
}

void sub_241F167A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t BBGetObserverGatewayTimeout()
{
  if (BBGetObserverGatewayTimeout_onceToken != -1)
  {
    BBGetObserverGatewayTimeout_cold_1();
  }

  return BBGetObserverGatewayTimeout___BBObserverGatewayTimeout;
}

void __BBGetObserverGatewayTimeout_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"BBObserverGatewayTimeout", @"com.apple.bulletinboard", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = AppIntegerValue < 1;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    v2 = AppIntegerValue;
    NSLog(&cfstr_BulletinboardS.isa, AppIntegerValue);
    BBGetObserverGatewayTimeout___BBObserverGatewayTimeout = v2;
  }
}

void sub_241F18AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id BBObserverFeedStrings(__int16 a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"NotificationCenter"];
    if ((a1 & 8) == 0)
    {
LABEL_3:
      if ((a1 & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"LockScreen"];
  if ((a1 & 0x8000) == 0)
  {
LABEL_4:
    if ((a1 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 addObject:@"Highlights"];
  if ((a1 & 2) == 0)
  {
LABEL_5:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 addObject:@"Banner"];
  if ((a1 & 0x20) == 0)
  {
LABEL_6:
    if ((a1 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 addObject:@"LockedBanner"];
  if ((a1 & 4) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 addObject:@"ModalAlert"];
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v3 addObject:@"LockedModalAlert"];
  if ((a1 & 0x10) == 0)
  {
LABEL_9:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v3 addObject:@"Sound"];
  if ((a1 & 0x80) == 0)
  {
LABEL_10:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v3 addObject:@"Car"];
  if ((a1 & 0x4000) == 0)
  {
LABEL_11:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v3 addObject:@"RemoteNotifications"];
  if ((a1 & 0x100) == 0)
  {
LABEL_12:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v3 addObject:@"Spoken"];
  if ((a1 & 0x400) == 0)
  {
LABEL_13:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 addObject:@"Forwarding"];
  if ((a1 & 0x200) == 0)
  {
LABEL_14:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 addObject:@"Settings"];
  if ((a1 & 0x800) == 0)
  {
LABEL_15:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 addObject:@"Display"];
  if ((a1 & 0x1000) == 0)
  {
LABEL_16:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  [v3 addObject:@"SpokenCar"];
  if ((a1 & 0x2000) != 0)
  {
LABEL_17:
    [v3 addObject:@"Digest"];
  }

LABEL_18:

  return v3;
}

void sub_241F1C5B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 136));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_241F22040(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void BBServerSetDefaultExpirationComponents(void *a1)
{
  v1 = a1;
  v2 = __BBServerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __BBServerSetDefaultExpirationComponents_block_invoke;
  block[3] = &unk_278D2A600;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

void sub_241F26274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F264B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F266B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F26900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F26A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F26BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F26D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F26F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F270EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F285D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F28808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void BBDataProviderInvalidateBulletinsForDestinations(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = __BBServerQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __BBDataProviderInvalidateBulletinsForDestinations_block_invoke;
  v6[3] = &unk_278D2A7C0;
  v7 = v3;
  v8 = a2;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __BBDataProviderInvalidateBulletinsForDestinations_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 sectionIdentifier];
    v6 = *(a1 + 40);
    v10 = 138543618;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "BBDataProvider: Invalidate bulletins in section %{public}@ for destinations %ld", &v10, 0x16u);
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) sectionIdentifier];
  if ((*(a1 + 40) & 2) != 0)
  {
    [__server _updateBulletinsInFeed:1 ifSectionIsEnabled:v8];
  }

  objc_autoreleasePoolPop(v7);
  v9 = *MEMORY[0x277D85DE8];
}

void BBDataProviderAddBulletin(void *a1, void *a2, int a3)
{
  if (a3)
  {
    v3 = 78;
  }

  else
  {
    v3 = 2;
  }

  _BBDataProviderAddBulletinForDestinations(a1, a2, v3);
}

void _BBDataProviderAddBulletinForDestinations(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  kdebug_trace();
  v7 = [v6 sectionIdentifier];

  v8 = [v5 copy];
  v9 = __BBServerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___BBDataProviderAddBulletinForDestinations_block_invoke;
  block[3] = &unk_278D2A9F0;
  v14 = v7;
  v15 = a3;
  v13 = v8;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, block);
}

void BBDataProviderWithdrawBulletinsWithRecordID(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 sectionIdentifier];
  v5 = __BBServerQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __BBDataProviderWithdrawBulletinsWithRecordID_block_invoke;
  v8[3] = &unk_278D2A628;
  v9 = v4;
  v10 = v3;
  v6 = v3;
  v7 = v4;
  dispatch_async(v5, v8);
}

void __BBDataProviderWithdrawBulletinsWithRecordID_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "BBDataProvider: Withdraw bulletin in section %{public}@ with record ID %{public}@", &v7, 0x16u);
  }

  v5 = objc_autoreleasePoolPush();
  [__server withdrawBulletinRequestsWithRecordID:*(a1 + 40) forSectionID:*(a1 + 32)];
  objc_autoreleasePoolPop(v5);
  v6 = *MEMORY[0x277D85DE8];
}

void BBDataProviderWithdrawBulletinWithPublisherBulletinIDShouldSync(void *a1, void *a2, char a3)
{
  v5 = a2;
  v6 = [a1 sectionIdentifier];
  v7 = __BBServerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __BBDataProviderWithdrawBulletinWithPublisherBulletinIDShouldSync_block_invoke;
  block[3] = &unk_278D2AA18;
  v11 = v6;
  v12 = v5;
  v13 = a3;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __BBDataProviderWithdrawBulletinWithPublisherBulletinIDShouldSync_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = 138543874;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "BBDataProvider: Withdraw bulletin in section %{public}@, publisher bulletin ID %{public}@, should sync %{BOOL}d", &v8, 0x1Cu);
  }

  v6 = objc_autoreleasePoolPush();
  [__server withdrawBulletinRequestsWithPublisherBulletinID:*(a1 + 40) shouldSync:*(a1 + 48) forSectionID:*(a1 + 32)];
  objc_autoreleasePoolPop(v6);
  v7 = *MEMORY[0x277D85DE8];
}

void BBDataProviderInvalidateSectionParameters(void *a1)
{
  v1 = [a1 sectionIdentifier];
  v2 = __BBServerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __BBDataProviderInvalidateSectionParameters_block_invoke;
  block[3] = &unk_278D2A600;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

void __BBDataProviderInvalidateSectionParameters_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "BBDataProvider: Invalidate parameters for section %{public}@", &v6, 0xCu);
  }

  v4 = objc_autoreleasePoolPush();
  [__server _reloadSectionParametersForSectionID:*(a1 + 32)];
  objc_autoreleasePoolPop(v4);
  v5 = *MEMORY[0x277D85DE8];
}

void BBDataProviderReloadDefaultSectionInfo(void *a1)
{
  v1 = [a1 sectionIdentifier];
  v2 = __BBServerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __BBDataProviderReloadDefaultSectionInfo_block_invoke;
  block[3] = &unk_278D2A600;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

void __BBDataProviderReloadDefaultSectionInfo_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "BBDataProvider: Reload info for section %{public}@", &v6, 0xCu);
  }

  v4 = objc_autoreleasePoolPush();
  [__server _reloadReloadSectionInfoForSectionID:*(a1 + 32)];
  objc_autoreleasePoolPop(v4);
  v5 = *MEMORY[0x277D85DE8];
}

void BBDataProviderUpdateClearedInfoWithHandler(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 sectionIdentifier];
  v5 = __BBServerQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __BBDataProviderUpdateClearedInfoWithHandler_block_invoke;
  v8[3] = &unk_278D2AC38;
  v9 = v4;
  v10 = v3;
  v6 = v3;
  v7 = v4;
  dispatch_async(v5, v8);
}

void __BBDataProviderUpdateClearedInfoWithHandler_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "BBDataProvider: Update cleared info for section %{public}@", &v6, 0xCu);
  }

  v4 = objc_autoreleasePoolPush();
  [__server _updateClearedInfoForSectionID:*(a1 + 32) handler:*(a1 + 40)];
  objc_autoreleasePoolPop(v4);
  v5 = *MEMORY[0x277D85DE8];
}

void BBDataProviderUpdateSectionInfoWithHandler(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 sectionIdentifier];
  v5 = __BBServerQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __BBDataProviderUpdateSectionInfoWithHandler_block_invoke;
  v8[3] = &unk_278D2AC38;
  v9 = v4;
  v10 = v3;
  v6 = v3;
  v7 = v4;
  dispatch_async(v5, v8);
}

void __BBDataProviderUpdateSectionInfoWithHandler_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "BBDataProvider: Update info for section %{public}@", &v6, 0xCu);
  }

  v4 = objc_autoreleasePoolPush();
  [__server _updateSectionInfoForSectionID:*(a1 + 32) handler:*(a1 + 40)];
  objc_autoreleasePoolPop(v4);
  v5 = *MEMORY[0x277D85DE8];
}

void _BBDataProviderGetClearedInfoWithCompletion(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 sectionIdentifier];
  v5 = __BBServerQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___BBDataProviderGetClearedInfoWithCompletion_block_invoke;
  v8[3] = &unk_278D2AC38;
  v9 = v4;
  v10 = v3;
  v6 = v3;
  v7 = v4;
  dispatch_async(v5, v8);
}

void _BBDataProviderSetClearedInfo(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 sectionIdentifier];
  v5 = __BBServerQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___BBDataProviderSetClearedInfo_block_invoke;
  v8[3] = &unk_278D2A628;
  v9 = v4;
  v10 = v3;
  v6 = v3;
  v7 = v4;
  dispatch_async(v5, v8);
}

void _BBDataProviderGetSectionInfoWithCompletion(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 sectionIdentifier];
  v5 = __BBServerQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___BBDataProviderGetSectionInfoWithCompletion_block_invoke;
  v8[3] = &unk_278D2AC38;
  v9 = v4;
  v10 = v3;
  v6 = v3;
  v7 = v4;
  dispatch_async(v5, v8);
}

void _BBDataProviderSetSectionInfo(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 sectionIdentifier];
  v5 = __BBServerQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___BBDataProviderSetSectionInfo_block_invoke;
  v8[3] = &unk_278D2A628;
  v9 = v4;
  v10 = v3;
  v6 = v3;
  v7 = v4;
  dispatch_async(v5, v8);
}

void BBDataProviderSendMessage(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_241EFF000, v8, OS_LOG_TYPE_DEFAULT, "BBDataProvider: Send section %{public}@ message %{public}@: %@", buf, 0x20u);
  }

  v9 = __BBServerQueue;
  if (__BBServerQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __BBDataProviderSendMessage_block_invoke;
    block[3] = &unk_278D2AB58;
    v14 = v5;
    v15 = v6;
    v16 = v7;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = +[BBServerConduit sharedConduit];
    [v11 sendMessageToDataProviderSectionID:v5 name:v6 userInfo:v7];

    objc_autoreleasePoolPop(v10);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __BBDataProviderSendMessage_block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [__server sendMessageToDataProviderSectionID:a1[4] name:a1[5] userInfo:a1[6]];

  objc_autoreleasePoolPop(v2);
}

void BBServerRun()
{
  if (BBServerRun___once != -1)
  {
    BBServerRun_cold_1();
  }
}

void __BBServerRun_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  BBInitializeUserDefaultsIfNecessary();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.bulletinboard.bbserverqueue", v1);
  v3 = __BBServerQueue;
  __BBServerQueue = v2;

  v4 = BBServerSetIsNotListeningForConnections_token;
  if (BBServerSetIsNotListeningForConnections_token != -1 || (notify_register_check(BBServerListeningForConnectionsKey, &BBServerSetIsNotListeningForConnections_token), v4 = BBServerSetIsNotListeningForConnections_token, BBServerSetIsNotListeningForConnections_token != -1))
  {
    notify_set_state(v4, 0);
    notify_post(BBServerListeningForConnectionsKey);
  }

  v5 = BBServerSetDoesntAllowPublication_token;
  if (BBServerSetDoesntAllowPublication_token != -1 || (notify_register_check("com.apple.bulletinboard.allowPublication", &BBServerSetDoesntAllowPublication_token), v5 = BBServerSetDoesntAllowPublication_token, BBServerSetDoesntAllowPublication_token != -1))
  {
    notify_set_state(v5, 0);
    notify_post("com.apple.bulletinboard.allowPublication");
  }

  v6 = [BBServer alloc];
  v7 = [(BBServer *)v6 initWithQueue:__BBServerQueue];
  v8 = __server;
  __server = v7;

  v9 = BBServerAllowsPublication();
  v10 = BBLogGeneral;
  v11 = os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_241EFF000, v10, OS_LOG_TYPE_DEFAULT, "publication allowed", buf, 2u);
    }

    dispatch_async(__BBServerQueue, &__block_literal_global_817);
  }

  else
  {
    if (v11)
    {
      *v13 = 0;
      _os_log_impl(&dword_241EFF000, v10, OS_LOG_TYPE_DEFAULT, "publication NOT allowed", v13, 2u);
    }

    out_token = -1;
    notify_register_dispatch("com.apple.bulletinboard.allowPublication", &out_token, __BBServerQueue, &__block_literal_global_821);
  }

  objc_autoreleasePoolPop(v0);
}

BOOL BBServerAllowsPublication()
{
  out_token = -1;
  v1 = 0;
  notify_register_check("com.apple.bulletinboard.allowPublication", &out_token);
  if (out_token == -1)
  {
    return 0;
  }

  notify_get_state(out_token, &v1);
  notify_cancel(out_token);
  return v1 == 1;
}

void __BBServerRun_block_invoke_815()
{
  if (BBAllowPublication_onceToken != -1)
  {
    __BBServerRun_block_invoke_815_cold_1();
  }
}

void BBAllowPublication()
{
  if (BBAllowPublication_onceToken != -1)
  {
    __BBServerRun_block_invoke_815_cold_1();
  }
}

uint64_t __BBServerRun_block_invoke_818(int a1, int token)
{
  v9 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = state64;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "BBAllowPublicationNotifyKey state changed! %lld", buf, 0xCu);
  }

  if (state64 == 1 && BBAllowPublication_onceToken != -1)
  {
    __BBServerRun_block_invoke_818_cold_1();
  }

  result = notify_cancel(token);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL BBServerListeningForConnections()
{
  out_token = -1;
  v1 = 0;
  notify_register_check(BBServerListeningForConnectionsKey, &out_token);
  if (out_token == -1)
  {
    return 0;
  }

  notify_get_state(out_token, &v1);
  notify_cancel(out_token);
  return v1 == 1;
}

uint64_t BBServerSetAllowsPublication()
{
  LODWORD(result) = BBServerSetAllowsPublication_token;
  if (BBServerSetAllowsPublication_token != -1 || (notify_register_check("com.apple.bulletinboard.allowPublication", &BBServerSetAllowsPublication_token), result = BBServerSetAllowsPublication_token, BBServerSetAllowsPublication_token != -1))
  {
    notify_set_state(result, 1uLL);

    return notify_post("com.apple.bulletinboard.allowPublication");
  }

  return result;
}

void __BBAllowPublication_block_invoke_2()
{
  v0 = objc_autoreleasePoolPush();
  [__server _loadDataProvidersAndSettings];
  out_token = -1;
  notify_register_check(BBServerListeningForConnectionsKey, &out_token);
  if (out_token != -1)
  {
    v1 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&dword_241EFF000, v1, OS_LOG_TYPE_DEFAULT, "notifying BBServerListeningForConnectionsKey", v2, 2u);
    }

    notify_set_state(out_token, 1uLL);
    notify_post(BBServerListeningForConnectionsKey);
  }

  objc_autoreleasePoolPop(v0);
}

Class __getCRPairedVehicleManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CarKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278D2B080;
    v6 = 0;
    CarKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CarKitLibraryCore_frameworkLibrary)
  {
    __getCRPairedVehicleManagerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CRPairedVehicleManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCRPairedVehicleManagerClass_block_invoke_cold_1();
  }

  getCRPairedVehicleManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CarKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void CoreDuetLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!CoreDuetLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __CoreDuetLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278D2B0B8;
    v3 = 0;
    CoreDuetLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreDuetLibraryCore_frameworkLibrary)
  {
    CoreDuetLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __CoreDuetLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreDuetLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void CoreDuetContextLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!CoreDuetContextLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __CoreDuetContextLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278D2B0D0;
    v3 = 0;
    CoreDuetContextLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreDuetContextLibraryCore_frameworkLibrary)
  {
    CoreDuetContextLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __CoreDuetContextLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreDuetContextLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __BBManagedUserNotificationsSetttingsDidChangeHandler_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  [__server _queue_managedUserNotificationsSetttingsDidChange];

  objc_autoreleasePoolPop(v0);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_241F32DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCRPairedVehicleManagerClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CarKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278D2B110;
    v6 = 0;
    CarKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!CarKitLibraryCore_frameworkLibrary_0)
  {
    __getCRPairedVehicleManagerClass_block_invoke_cold_2_0(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CRPairedVehicleManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCRPairedVehicleManagerClass_block_invoke_cold_1_0();
  }

  getCRPairedVehicleManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CarKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _handleBKEnrollmentChange(uint64_t a1, void *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {

    return [a2 _updateHasEnrolledPearlIdentities];
  }

  return result;
}

void *____loadBiometricKitIfNecessary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/BiometricKit.framework/BiometricKit", 1);
  __loadBiometricKitIfNecessary_biometricKit = result;
  return result;
}

void sub_241F3882C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak(&location);
  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_241F39A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, id a24)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a24);
  objc_destroyWeak((v27 - 112));
  _Unwind_Resume(a1);
}

void sub_241F3A32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F3BB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F3BE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F3C52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F3CA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F3CCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F3D138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F3D738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F3D9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F3DC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id BBActionToTitleMapBlock_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 appearance];
  v3 = [v2 title];

  return v3;
}

BOOL BBPublisherDestinationForObserverFeed(uint64_t a1, void *a2)
{
  if (a1 == 1 && a2)
  {
    *a2 = 2;
  }

  return a1 == 1;
}

uint64_t BBIsValueAllowed(void *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v31;
LABEL_5:
      v6 = 0;
      while (1)
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (!BBIsValueAllowed(*(*(&v30 + 1) + 8 * v6)))
        {
          goto LABEL_31;
        }

        if (v4 == ++v6)
        {
          v4 = [v2 countByEnumeratingWithState:&v30 objects:v36 count:16];
          v7 = 1;
          if (v4)
          {
            goto LABEL_5;
          }

          goto LABEL_36;
        }
      }
    }

    goto LABEL_32;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v2 = BBAllowedClasses();
    v15 = [v2 countByEnumeratingWithState:&v22 objects:v34 count:16];
    if (!v15)
    {
LABEL_31:
      v7 = 0;
      goto LABEL_36;
    }

    v16 = v15;
    v17 = *v23;
LABEL_25:
    v18 = 0;
    while (1)
    {
      if (*v23 != v17)
      {
        objc_enumerationMutation(v2);
      }

      v19 = *(*(&v22 + 1) + 8 * v18);
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v2 countByEnumeratingWithState:&v22 objects:v34 count:16];
        if (v16)
        {
          goto LABEL_25;
        }

        goto LABEL_31;
      }
    }

LABEL_32:
    v7 = 1;
    goto LABEL_36;
  }

  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = v1;
  v8 = [v2 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v2);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        if (BBIsValueAllowed(v12))
        {
          v13 = [v2 objectForKeyedSubscript:v12];
          v14 = BBIsValueAllowed(v13);

          if (v14)
          {
            continue;
          }
        }

        v7 = 0;
        goto LABEL_35;
      }

      v9 = [v2 countByEnumeratingWithState:&v26 objects:v35 count:16];
      v7 = 1;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 1;
  }

LABEL_35:

LABEL_36:
  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __BBAllowedClasses_block_invoke()
{
  v41 = MEMORY[0x277CBEB98];
  v40 = objc_opt_class();
  v39 = objc_opt_class();
  v38 = objc_opt_class();
  v37 = objc_opt_class();
  v36 = objc_opt_class();
  v35 = objc_opt_class();
  v34 = objc_opt_class();
  v33 = objc_opt_class();
  v32 = objc_opt_class();
  v31 = objc_opt_class();
  v30 = objc_opt_class();
  v29 = objc_opt_class();
  v28 = objc_opt_class();
  v27 = objc_opt_class();
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = NSClassFromString(&cfstr_Nsdecimalnumbe.isa);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  BBAllowedClasses___classes = [v41 setWithObjects:{v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

void BBInitializeUserDefaultsIfNecessary()
{
  if (BBInitializeUserDefaultsIfNecessary_onceToken != -1)
  {
    BBInitializeUserDefaultsIfNecessary_cold_1();
  }
}

void __BBInitializeUserDefaultsIfNecessary_block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, BBPreferencesChangedHandler, @"com.apple.bulletinboard.prefsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, BBPreferencesChangedHandler, @"com.apple.ManagedConfiguration.profileListChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  BBUpdateUserDefaults();
  v1 = MGCopyAnswer();
  v2 = CFPreferencesCopyAppValue(@"BBLastSystemVersion", @"com.apple.bulletinboard");
  v3 = [(__CFString *)v2 isEqual:v1];
  __BBShouldPerformMigration = v3 ^ 1;
  if ((v3 & 1) == 0)
  {
    v4 = BBLogMigration;
    if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"(no previous version)";
      if (v2)
      {
        v5 = v2;
      }

      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v1;
      _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Performing migration from %{public}@ to %{public}@...", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void BBPreferencesChangedHandler()
{
  CFPreferencesAppSynchronize(@"com.apple.bulletinboard");

  BBUpdateUserDefaults();
}

void BBUpdateUserDefaults()
{
  v4 = *MEMORY[0x277D85DE8];
  __BBShouldAlwaysSpeakLockScreenNotifications = CFPreferencesGetAppBooleanValue(@"BBAlwaysSpeakLockScreenNotifications", @"com.apple.bulletinboard", 0) != 0;
  v0 = BBLogSync;
  if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = __BBShouldAlwaysSpeakLockScreenNotifications;
    _os_log_impl(&dword_241EFF000, v0, OS_LOG_TYPE_DEFAULT, "Sync should always speak lock screen notifications: %d", v3, 8u);
  }

  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  [v1 postNotificationName:@"BBUserDefaultsDidUpdateNotification" object:0];

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t BBShouldPerformMigration()
{
  if (BBInitializeUserDefaultsIfNecessary_onceToken != -1)
  {
    BBInitializeUserDefaultsIfNecessary_cold_1();
  }

  return __BBShouldPerformMigration;
}

uint64_t BBShouldAlwaysSpeakLockScreenNotifications()
{
  if (BBInitializeUserDefaultsIfNecessary_onceToken != -1)
  {
    BBInitializeUserDefaultsIfNecessary_cold_1();
  }

  return __BBShouldAlwaysSpeakLockScreenNotifications;
}

void BBNoteMigrationComplete()
{
  if (__BBShouldPerformMigration == 1)
  {
    v5 = v0;
    v6 = v1;
    __BBShouldPerformMigration = 0;
    v2 = MGCopyAnswer();
    CFPreferencesSetAppValue(@"BBLastSystemVersion", v2, @"com.apple.bulletinboard");
    CFPreferencesAppSynchronize(@"com.apple.bulletinboard");
    v3 = BBLogMigration;
    if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "Migration complete.", v4, 2u);
    }
  }
}

__CFString *BBStringFromBBOldContentPreviewSetting(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<unknown>";
  }

  else
  {
    return off_278D2B5F8[a1];
  }
}

void sub_241F4FDE8(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_241F50FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void BBPowerLogBulletinBoardPublishEvent(__CFString *a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = &stru_28541A970;
  }

  v9[0] = @"SectionIdentifier";
  v9[1] = @"Feeds";
  v10[0] = v3;
  v4 = MEMORY[0x277CCABB0];
  v5 = a1;
  v6 = [v4 numberWithInteger:a2];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  PLLogRegisteredEvent();
  v8 = *MEMORY[0x277D85DE8];
}

id OUTLINED_FUNCTION_0_2(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void BBRegisterBulletinBoardLogging()
{
  if (BBRegisterBulletinBoardLogging_onceToken != -1)
  {
    BBRegisterBulletinBoardLogging_cold_1();
  }
}

uint64_t __BBRegisterBulletinBoardLogging_block_invoke()
{
  v0 = os_log_create(BBLogSubsystem, "BehaviorOverride");
  v1 = BBLogBehavior;
  BBLogBehavior = v0;

  v2 = os_log_create(BBLogSubsystem, "BulletinDelivery");
  v3 = BBLogBulletinDelivery;
  BBLogBulletinDelivery = v2;

  v4 = os_log_create(BBLogSubsystem, "BulletinLife");
  v5 = BBLogBulletinLife;
  BBLogBulletinLife = v4;

  v6 = os_log_create(BBLogSubsystem, "Connection");
  v7 = BBLogConnection;
  BBLogConnection = v6;

  v8 = os_log_create(BBLogSubsystem, "DataProvider");
  v9 = BBLogDataProvider;
  BBLogDataProvider = v8;

  v10 = os_log_create(BBLogSubsystem, "Expiration");
  v11 = BBLogExpiration;
  BBLogExpiration = v10;

  v12 = os_log_create(BBLogSubsystem, "Gateway");
  v13 = BBLogGateway;
  BBLogGateway = v12;

  v14 = os_log_create(BBLogSubsystem, "General");
  v15 = BBLogGeneral;
  BBLogGeneral = v14;

  v16 = os_log_create(BBLogSubsystem, "Migration");
  v17 = BBLogMigration;
  BBLogMigration = v16;

  v18 = os_log_create(BBLogSubsystem, "Persistence");
  v19 = BBLogPersistence;
  BBLogPersistence = v18;

  v20 = os_log_create(BBLogSubsystem, "SectionUpdates");
  v21 = BBLogSectionUpdates;
  BBLogSectionUpdates = v20;

  v22 = os_log_create(BBLogSubsystem, "Settings");
  v23 = BBLogSettings;
  BBLogSettings = v22;

  BBLogSync = os_log_create(BBLogSubsystem, "Sync");

  return MEMORY[0x2821F96F8]();
}

void sub_241F54124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, char a29)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

NSObject *BBPrepareQueueForSafeSync(void *a1)
{
  v1 = a1;
  v2 = objc_getAssociatedObject(v1, "kBBQueueSafeContextKey");
  if (!v2)
  {
    v2 = [MEMORY[0x277CCAD78] UUID];
    objc_setAssociatedObject(v1, "kBBQueueSafeContextKey", v2, 0x301);
    dispatch_queue_set_specific(v1, "kBBQueueSafeContextKey", v2, 0);
  }

  return v1;
}

id BBPushSettingsDescription(char a1)
{
  if ((a1 & 4) != 0)
  {
    v2 = 65;
  }

  else
  {
    v2 = 45;
  }

  if ((a1 & 2) != 0)
  {
    v3 = 83;
  }

  else
  {
    v3 = 45;
  }

  if (a1)
  {
    v4 = 66;
  }

  else
  {
    v4 = 45;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"[s:%c%c%c]", v4, v3, v2];
  if ((a1 & 0x20) != 0)
  {
    v6 = 65;
  }

  else
  {
    v6 = 45;
  }

  if ((a1 & 0x10) != 0)
  {
    v7 = 83;
  }

  else
  {
    v7 = 45;
  }

  if ((a1 & 8) != 0)
  {
    v8 = 66;
  }

  else
  {
    v8 = 45;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[e:%c%c%c]", v8, v7, v6];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v5, v9];

  return v10;
}

void sub_241F59E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_241F5A344(int a1)
{
  v3 = [v1 sectionIdentifier];
  v4 = v3;
  v5 = &stru_28541A970;
  if (a1)
  {
    v5 = @" Taking stackshot. Please file a bug on this data provider (or PEP BulletinBoard).";
  }

  NSLog(&cfstr_BbserverDataPr_0.isa, v3, 60, v5);

  v6 = MEMORY[0x277CCACA8];
  v7 = [v1 sectionIdentifier];
  v8 = [v6 stringWithFormat:@"BulletinBoard data provider <%@> unresponsive for %llu sec", v7, 60];
  BBTakeStackshot(v8, 0);

  if (a1)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [v1 sectionIdentifier];
    v11 = [v9 stringWithFormat:@"Data provider %@ has been unresponsive for %llu seconds. Bulletins are probably not being delivered or updated. Please file a bug with syslog and stackshots.", v10, 60];

    BBDisplayNotice(@"Unresponsive BulletinBoard Data Provider", v11, @"That's Lame", 0, 0);
  }
}

void sub_241F5A8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F5BD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BBHasRequiredCapabilitiesForBundle(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = [a1 infoDictionary];
  v2 = [v1 objectForKey:@"UIRequiredDeviceCapabilities"];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = v2;
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v15;
LABEL_5:
        v7 = 0;
        while (1)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v14 + 1) + 8 * v7);
          if (!BSSystemHasCapability())
          {
            goto LABEL_18;
          }

          if (v5 == ++v7)
          {
            v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
            if (v5)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }
    }
  }

  if (BBGetDeviceFamily_onceToken != -1)
  {
    BBHasRequiredCapabilitiesForBundle_cold_1();
  }

  v9 = BBGetDeviceFamily__deviceFamily;
  v3 = [v1 objectForKey:{@"UIDeviceFamily", v14}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 integerValue] != v9)
  {
LABEL_18:
    v11 = 0;
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    v11 = [v3 containsObject:v10];
  }

  else
  {
    v11 = 1;
  }

LABEL_20:

  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

id BBLibraryDirectoriesForFolderNamed(void *a1)
{
  v1 = a1;
  v2 = CFPreferencesGetAppBooleanValue(@"BBLoadInternalPlugins", @"com.apple.bulletinboard", 0) != 0;
  v3 = BBLibraryDirectoriesForFolderNamedIncludingInternal(v1, v2);

  return v3;
}

id BBLibraryDirectoriesForFolderNamedIncludingInternal(void *a1, int a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = BSSystemRootDirectory();
  v6 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v5 stringByAppendingPathComponent:*(*(&v27 + 1) + 8 * i)];
        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  if (a2)
  {
    v22 = v3;
    v12 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 2uLL, 1);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [@"/AppleInternal" stringByAppendingPathComponent:*(*(&v23 + 1) + 8 * j)];
          v18 = [v5 stringByAppendingPathComponent:v17];

          if (v18)
          {
            [v4 addObject:v18];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v14);
    }

    v3 = v22;
  }

  v19 = [v4 stringsByAppendingPathComponent:v3];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t BBTakeStackshot(uint64_t a1, int a2)
{
  if (a2)
  {
    return MEMORY[0x282195F40](a1, 3151886871);
  }

  else
  {
    return MEMORY[0x282195F30](a1, 3151886871);
  }
}

void BBDisplayNotice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{a1, *MEMORY[0x277CBF188], a2, *MEMORY[0x277CBF198], a3, *MEMORY[0x277CBF1E8], a4, *MEMORY[0x277CBF1C0], 0}];
  error = 0;
  v11 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v10);
  if (v11)
  {
    v12 = v11;
    if (v9 && !error)
    {
      v13 = _NotificationHandlerMap();
      v14 = [v9 copy];
      v15 = [MEMORY[0x277CCAE60] valueWithPointer:v12];
      [v13 setObject:v14 forKey:v15];

      CFRetain(v12);
      RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v12, __UserNotificationCallback, 0);
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x277CBF048]);
      CFRelease(RunLoopSource);
    }

    CFRelease(v12);
  }
}

id _NotificationHandlerMap()
{
  if (_NotificationHandlerMap_onceToken != -1)
  {
    _NotificationHandlerMap_cold_1();
  }

  v1 = _NotificationHandlerMap___map;

  return v1;
}

void __UserNotificationCallback(const void *a1, uint64_t a2)
{
  v7 = [MEMORY[0x277CCAE60] valueWithPointer:a1];
  v4 = _NotificationHandlerMap();
  v5 = [v4 objectForKey:v7];

  if (v5)
  {
    v5[2](v5, a2);
  }

  v6 = _NotificationHandlerMap();
  [v6 removeObjectForKey:v7];

  CFRelease(a1);
}

void sub_241F5D888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __BBGetDeviceFamily_block_invoke()
{
  v2 = MGCopyAnswer();
  v0 = [v2 integerValue] - 1;
  if (v0 > 5)
  {
    v1 = -1;
  }

  else
  {
    v1 = qword_241F7FDD8[v0];
  }

  BBGetDeviceFamily__deviceFamily = v1;
}

Class __getGMAvailabilityWrapperClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!GenerativeModelsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __GenerativeModelsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278D2BA40;
    v6 = 0;
    GenerativeModelsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!GenerativeModelsLibraryCore_frameworkLibrary)
  {
    __getGMAvailabilityWrapperClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("GMAvailabilityWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getGMAvailabilityWrapperClass_block_invoke_cold_1();
  }

  getGMAvailabilityWrapperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __GenerativeModelsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  GenerativeModelsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241F606A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 80));
  objc_destroyWeak(&a31);
  objc_destroyWeak(&location);
  _Block_object_dispose((v33 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_241F62FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

__CFString *BBStringFromBool(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

unint64_t BBSpokenNotificationSettingForAnnounceSetting(unint64_t result)
{
  if (result >= 3)
  {
    return -1;
  }

  return result;
}

unint64_t BBAnnounceSettingForSpokenNotificationSetting(unint64_t result)
{
  if (result >= 3)
  {
    return -1;
  }

  return result;
}

void sub_241F638F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F63A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F63C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F6703C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F676D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241F67A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_241F6D0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241F6DD10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 120));
  _Unwind_Resume(a1);
}

void __getCRPairedVehicleManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCRPairedVehicleManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BBServer.m" lineNumber:88 description:{@"Unable to find class %s", "CRPairedVehicleManager"}];

  __break(1u);
}

void __getCRPairedVehicleManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CarKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BBServer.m" lineNumber:87 description:{@"%s", *a1}];

  __break(1u);
}

void CoreDuetLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreDuetLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BBServer.m" lineNumber:102 description:{@"%s", *a1}];

  __break(1u);
}

void CoreDuetContextLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreDuetContextLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BBServer.m" lineNumber:112 description:{@"%s", *a1}];

  __break(1u);
}

void __getCRPairedVehicleManagerClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCRPairedVehicleManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BBSectionInfo.m" lineNumber:34 description:{@"Unable to find class %s", "CRPairedVehicleManager"}];

  __break(1u);
}

void __getCRPairedVehicleManagerClass_block_invoke_cold_2_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CarKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BBSectionInfo.m" lineNumber:33 description:{@"%s", *a1}];

  __break(1u);
}

void BBDispatchSafeSync_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void BBDispatchSafeSync(__strong dispatch_queue_t, __strong dispatch_block_t)"}];
  [v1 handleFailureInFunction:v0 file:@"BBQueueUtilities.m" lineNumber:29 description:{@"Queue is not safe, use BBPrepareQueueForSafeSync"}];
}

void __getGMAvailabilityWrapperClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getGMAvailabilityWrapperClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BBUtilities.m" lineNumber:24 description:{@"Unable to find class %s", "GMAvailabilityWrapper"}];

  __break(1u);
}

void __getGMAvailabilityWrapperClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *GenerativeModelsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BBUtilities.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}