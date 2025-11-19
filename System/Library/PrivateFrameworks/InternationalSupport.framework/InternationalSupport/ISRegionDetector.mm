@interface ISRegionDetector
+ (id)sharedRegionDetector;
- (BOOL)getCountryFromTelephony;
- (ISRegionDetector)init;
- (id)_checkForAliases:(id)a3;
- (id)_checkForAliasesOrInvalid:(id)a3;
- (id)_checkedArrayForString:(id)a3;
- (id)_countryFromTelephony;
- (id)guessedLanguages;
- (uint64_t)_startWifiScan;
- (void)_closeWifiConnection;
- (void)_getWifiDevice;
- (void)_scanComplete:(id)a3 error:(BOOL)a4;
- (void)_scanWifiList;
- (void)_scanWifiListWithDevice:(__WiFiDeviceClient *)a3;
- (void)_startWifiScan;
- (void)dealloc;
- (void)reset;
@end

@implementation ISRegionDetector

+ (id)sharedRegionDetector
{
  v2 = sharedRegionDetector_sharedInstance;
  if (!sharedRegionDetector_sharedInstance)
  {
    v3 = objc_alloc_init(ISRegionDetector);
    v4 = sharedRegionDetector_sharedInstance;
    sharedRegionDetector_sharedInstance = v3;

    v2 = sharedRegionDetector_sharedInstance;
  }

  return v2;
}

- (id)_countryFromTelephony
{
  v2 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:0];
  v14 = 0;
  v3 = [v2 getSubscriptionInfoWithError:&v14];
  v4 = v14;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v7 = [v3 subscriptionsInUse];
    v5 = [v7 count];

    if (v5)
    {
      v8 = [v3 subscriptionsInUse];
      v9 = [v8 objectAtIndexedSubscript:0];
      v13 = 0;
      v10 = [v2 copyMobileCountryCode:v9 error:&v13];
      v5 = v13;

      if (v5)
      {
        v6 = 0;
      }

      else
      {
        v12 = 0;
        v6 = [v2 copyMobileSubscriberIsoCountryCode:v10 error:&v12];
        v5 = v12;
      }

      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)_checkForAliases:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      do
      {
        v8 = [v4 objectAtIndexedSubscript:v7];
        v9 = [&unk_1F3737C18 objectForKey:v8];
        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
          }

          else
          {
            v15[0] = v9;
            v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
          }

          v12 = v10;
          [v4 replaceObjectsInRange:v7 withObjectsFromArray:{1, v10}];
          v11 = [v12 count];
        }

        else
        {
          v11 = 1;
        }

        v7 += v11;
      }

      while (v7 < v6);
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_checkForAliasesOrInvalid:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  if (!self->_validCountries)
  {
    v26 = v4;
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = [MEMORY[0x1E695DF58] availableLocaleIdentifiers];
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      v11 = *MEMORY[0x1E695D978];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = MEMORY[0x1E695DF58];
          v14 = [MEMORY[0x1E695DF58] canonicalLocaleIdentifierFromString:*(*(&v31 + 1) + 8 * i)];
          v15 = [v13 componentsFromLocaleIdentifier:v14];

          v16 = [v15 objectForKey:v11];
          if (v16)
          {
            [(NSSet *)v6 addObject:v16];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v9);
    }

    validCountries = self->_validCountries;
    self->_validCountries = v6;

    v4 = v26;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = [(ISRegionDetector *)self _checkForAliases:v4];
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v27 + 1) + 8 * j);
        if ([(NSSet *)self->_validCountries containsObject:v23])
        {
          [v5 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_checkedArrayForString:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithObject:?];
    v5 = [(ISRegionDetector *)self _checkForAliases:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ISRegionDetector)init
{
  v5.receiver = self;
  v5.super_class = ISRegionDetector;
  v2 = [(ISRegionDetector *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_numberOfWiFiScanAttemptsRemaining = 5;
    if (!v2->_guessedCountries)
    {
      [(ISRegionDetector *)v2 getCountryFromTelephony];
      if (!v3->_guessedCountries)
      {
        [(ISRegionDetector *)v3 _startWifiScan];
      }
    }
  }

  return v3;
}

- (void)dealloc
{
  [(ISRegionDetector *)self _closeWifiConnection];
  v3.receiver = self;
  v3.super_class = ISRegionDetector;
  [(ISRegionDetector *)&v3 dealloc];
}

- (BOOL)getCountryFromTelephony
{
  guessedCountryFromTelephony = self->_guessedCountryFromTelephony;
  if (!guessedCountryFromTelephony)
  {
    v4 = [(ISRegionDetector *)self _countryFromTelephony];
    v5 = self->_guessedCountryFromTelephony;
    self->_guessedCountryFromTelephony = v4;

    v6 = [(NSString *)self->_guessedCountryFromTelephony length];
    guessedCountryFromTelephony = self->_guessedCountryFromTelephony;
    if (v6)
    {
      v7 = [(NSString *)guessedCountryFromTelephony uppercaseString];
      v8 = [(ISRegionDetector *)self _checkedArrayForString:v7];
      [(ISRegionDetector *)self setGuessedCountries:v8];

      guessedCountryFromTelephony = self->_guessedCountryFromTelephony;
    }
  }

  return guessedCountryFromTelephony != 0;
}

- (id)guessedLanguages
{
  v2 = self;
  v34 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_guessedCountries count])
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = v2;
    v5 = v2->_guessedCountries;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MEMORY[0x1E695DF58] languagesForRegion:*(*(&v28 + 1) + 8 * i) subdivision:0 withThreshold:1 filter:0];
          v11 = [v10 reverseObjectEnumerator];
          v12 = [v11 allObjects];

          [v4 addObject:v12];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }

    while (1)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = v4;
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v16 = 0;
      v17 = *v25;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v24 + 1) + 8 * j);
          v20 = [v19 lastObject];
          if (v20)
          {
            if (([v3 containsObject:v20] & 1) == 0)
            {
              [v3 addObject:v20];
            }

            [v19 removeLastObject];
            v16 = 1;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v15);

      if ((v16 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_25:
    v2 = v23;
  }

  else
  {
    v3 = 0;
  }

  if (!v2->_firstGuessedLanguages)
  {
    [(ISRegionDetector *)v2 setFirstGuessedLanguages:v3];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_startWifiScan
{
  self->fWifiManager = 0;
  self->fWifiDevice = 0;
  p_fWifiManager = &self->fWifiManager;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v4 = getWiFiManagerClientCreateSymbolLoc_ptr;
  v18 = getWiFiManagerClientCreateSymbolLoc_ptr;
  if (!getWiFiManagerClientCreateSymbolLoc_ptr)
  {
    v5 = MobileWiFiLibrary();
    v16[3] = dlsym(v5, "WiFiManagerClientCreate");
    getWiFiManagerClientCreateSymbolLoc_ptr = v16[3];
    v4 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v4)
  {
    [ISRegionDetector _startWifiScan];
    goto LABEL_16;
  }

  v6 = (v4)(*MEMORY[0x1E695E480], 0);
  *p_fWifiManager = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  Current = CFRunLoopGetCurrent();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v9 = getWiFiManagerClientScheduleWithRunLoopSymbolLoc_ptr;
  v18 = getWiFiManagerClientScheduleWithRunLoopSymbolLoc_ptr;
  if (!getWiFiManagerClientScheduleWithRunLoopSymbolLoc_ptr)
  {
    v10 = MobileWiFiLibrary();
    v16[3] = dlsym(v10, "WiFiManagerClientScheduleWithRunLoop");
    getWiFiManagerClientScheduleWithRunLoopSymbolLoc_ptr = v16[3];
    v9 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v9)
  {
LABEL_16:
    [ISRegionDetector _startWifiScan];
    goto LABEL_17;
  }

  v9(v7, Current, *MEMORY[0x1E695E8D0]);
  [(ISRegionDetector *)self _getWifiDevice];
LABEL_9:
  if (self->fWifiDevice)
  {
    [(ISRegionDetector *)self _scanWifiList];
    return;
  }

  v11 = *p_fWifiManager;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v12 = getWiFiManagerClientRegisterDeviceAttachmentCallbackSymbolLoc_ptr;
  v18 = getWiFiManagerClientRegisterDeviceAttachmentCallbackSymbolLoc_ptr;
  if (!getWiFiManagerClientRegisterDeviceAttachmentCallbackSymbolLoc_ptr)
  {
    v13 = MobileWiFiLibrary();
    v16[3] = dlsym(v13, "WiFiManagerClientRegisterDeviceAttachmentCallback");
    getWiFiManagerClientRegisterDeviceAttachmentCallbackSymbolLoc_ptr = v16[3];
    v12 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v12)
  {
LABEL_17:
    started = [ISRegionDetector _startWifiScan];
    _Block_object_dispose(&v15, 8);
    _Unwind_Resume(started);
  }

  v12(v11, wifidDidBecomeAlive, self);
}

- (void)_getWifiDevice
{
  fWifiManager = self->fWifiManager;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v4 = getWiFiManagerClientCopyDevicesSymbolLoc_ptr;
  v16 = getWiFiManagerClientCopyDevicesSymbolLoc_ptr;
  if (!getWiFiManagerClientCopyDevicesSymbolLoc_ptr)
  {
    v5 = MobileWiFiLibrary();
    v14[3] = dlsym(v5, "WiFiManagerClientCopyDevices");
    getWiFiManagerClientCopyDevicesSymbolLoc_ptr = v14[3];
    v4 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v4)
  {
    [ISRegionDetector _startWifiScan];
    goto LABEL_15;
  }

  v6 = v4(fWifiManager);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (CFArrayGetCount(v6))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
    self->fWifiDevice = ValueAtIndex;
    if (ValueAtIndex)
    {
      v9 = CFGetTypeID(ValueAtIndex);
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v10 = getWiFiDeviceClientGetTypeIDSymbolLoc_ptr;
      v16 = getWiFiDeviceClientGetTypeIDSymbolLoc_ptr;
      if (!getWiFiDeviceClientGetTypeIDSymbolLoc_ptr)
      {
        v11 = MobileWiFiLibrary();
        v14[3] = dlsym(v11, "WiFiDeviceClientGetTypeID");
        getWiFiDeviceClientGetTypeIDSymbolLoc_ptr = v14[3];
        v10 = v14[3];
      }

      _Block_object_dispose(&v13, 8);
      if (v10)
      {
        if (v9 == v10())
        {
          CFRetain(self->fWifiDevice);
        }

        goto LABEL_12;
      }

LABEL_15:
      started = [ISRegionDetector _startWifiScan];
      _Block_object_dispose(&v13, 8);
      _Unwind_Resume(started);
    }
  }

LABEL_12:
  CFRelease(v7);
}

- (void)_scanWifiListWithDevice:(__WiFiDeviceClient *)a3
{
  if (a3)
  {
    self->fWifiDevice = a3;
    CFRetain(a3);

    [(ISRegionDetector *)self _scanWifiList];
  }

  else
  {

    [(ISRegionDetector *)self _closeWifiConnection];
  }
}

- (void)_scanWifiList
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E695DF00] date];
  [(ISRegionDetector *)self setWirelessScanStartDate:v4];

  fWifiDevice = self->fWifiDevice;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v6 = getWiFiDeviceClientScanAsyncSymbolLoc_ptr;
  v15 = getWiFiDeviceClientScanAsyncSymbolLoc_ptr;
  if (!getWiFiDeviceClientScanAsyncSymbolLoc_ptr)
  {
    v10[5] = MEMORY[0x1E69E9820];
    v10[6] = 3221225472;
    v10[7] = __getWiFiDeviceClientScanAsyncSymbolLoc_block_invoke;
    v10[8] = &unk_1E7D07180;
    v11 = &v12;
    v7 = MobileWiFiLibrary();
    v13[3] = dlsym(v7, "WiFiDeviceClientScanAsync");
    getWiFiDeviceClientScanAsyncSymbolLoc_ptr = *(v11[1] + 24);
    v6 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v6)
  {
    started = [ISRegionDetector _startWifiScan];
    _Block_object_dispose(&v12, 8);
    _Unwind_Resume(started);
  }

  if (v6(fWifiDevice, v3, scanComplete, self))
  {
    if ([(ISRegionDetector *)self numberOfWiFiScanAttemptsRemaining])
    {
      [(ISRegionDetector *)self setNumberOfWiFiScanAttemptsRemaining:[(ISRegionDetector *)self numberOfWiFiScanAttemptsRemaining]- 1];
      v8 = dispatch_time(0, 500000000);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __33__ISRegionDetector__scanWifiList__block_invoke;
      v10[3] = &unk_1E7D07158;
      v10[4] = self;
      dispatch_after(v8, MEMORY[0x1E69E96A0], v10);
    }

    else
    {
      [(ISRegionDetector *)self _closeWifiConnection];
    }
  }
}

void *__33__ISRegionDetector__scanWifiList__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    if (result[5])
    {
      return [result _scanWifiList];
    }
  }

  return result;
}

- (void)_scanComplete:(id)a3 error:(BOOL)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!a4 && !self->_guessedCountries)
  {
    v34 = self;
    v8 = [v6 count];
    if (!v8)
    {
LABEL_43:
      v32 = [MEMORY[0x1E696AD88] defaultCenter];
      [v32 postNotificationName:@"BYCountryScanCompletedNotification" object:0];

      self = v34;
      goto LABEL_44;
    }

    v9 = v8;
    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v11 = 0;
    v48 = 3;
    do
    {
      v12 = [v7 objectAtIndexedSubscript:v11];

      v55 = 0;
      v56 = &v55;
      v57 = 0x2020000000;
      v13 = getWiFiNetworkGet11dCountryCodeFromIeSymbolLoc_ptr;
      v58 = getWiFiNetworkGet11dCountryCodeFromIeSymbolLoc_ptr;
      if (!getWiFiNetworkGet11dCountryCodeFromIeSymbolLoc_ptr)
      {
        v50 = MEMORY[0x1E69E9820];
        v51 = 3221225472;
        v52 = __getWiFiNetworkGet11dCountryCodeFromIeSymbolLoc_block_invoke;
        v53 = &unk_1E7D07180;
        v54 = &v55;
        v14 = MobileWiFiLibrary();
        v15 = dlsym(v14, "WiFiNetworkGet11dCountryCodeFromIe");
        *(v54[1] + 24) = v15;
        getWiFiNetworkGet11dCountryCodeFromIeSymbolLoc_ptr = *(v54[1] + 24);
        v13 = v56[3];
      }

      _Block_object_dispose(&v55, 8);
      if (!v13)
      {
        [ISRegionDetector _startWifiScan];
        __break(1u);
      }

      if (v13(v12, v49, &v48) && v48 >= 2)
      {
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v49 length:2 encoding:1];
        [v35 addObject:v16];
      }

      ++v11;
    }

    while (v9 != v11);
    v17 = [(ISRegionDetector *)self _checkForAliasesOrInvalid:v35];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v44 objects:v61 count:16];
    if (v18)
    {
      v19 = *v45;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v45 != v19)
          {
            objc_enumerationMutation(v17);
          }

          [v10 addObject:*(*(&v44 + 1) + 8 * i)];
        }

        v18 = [v17 countByEnumeratingWithState:&v44 objects:v61 count:16];
      }

      while (v18);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v21 = v10;
    v22 = [v21 countByEnumeratingWithState:&v40 objects:v60 count:16];
    if (v22)
    {
      v23 = 0;
      v24 = *v41;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [v21 countForObject:*(*(&v40 + 1) + 8 * j)];
          if (v26 > v23)
          {
            v23 = v26;
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v40 objects:v60 count:16];
      }

      while (v22);

      if (!v23)
      {
        v22 = 0;
        goto LABEL_40;
      }

      v22 = [MEMORY[0x1E695DF70] array];
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v27 = v21;
      v28 = [v27 countByEnumeratingWithState:&v36 objects:v59 count:16];
      if (v28)
      {
        v29 = *v37;
        do
        {
          for (k = 0; k != v28; ++k)
          {
            if (*v37 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v36 + 1) + 8 * k);
            if ([v27 countForObject:v31] == v23)
            {
              [v22 addObject:v31];
            }
          }

          v28 = [v27 countByEnumeratingWithState:&v36 objects:v59 count:16];
        }

        while (v28);
      }
    }

LABEL_40:
    if ([v22 count])
    {
      [(ISRegionDetector *)v34 setGuessedCountries:v22];
    }

    goto LABEL_43;
  }

LABEL_44:
  [(ISRegionDetector *)self _closeWifiConnection];

  v33 = *MEMORY[0x1E69E9840];
}

- (void)_closeWifiConnection
{
  fWifiManager = self->fWifiManager;
  if (fWifiManager)
  {
    Current = CFRunLoopGetCurrent();
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v5 = getWiFiManagerClientUnscheduleFromRunLoopSymbolLoc_ptr;
    v12 = getWiFiManagerClientUnscheduleFromRunLoopSymbolLoc_ptr;
    if (!getWiFiManagerClientUnscheduleFromRunLoopSymbolLoc_ptr)
    {
      v6 = MobileWiFiLibrary();
      v10[3] = dlsym(v6, "WiFiManagerClientUnscheduleFromRunLoop");
      getWiFiManagerClientUnscheduleFromRunLoopSymbolLoc_ptr = v10[3];
      v5 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (!v5)
    {
      started = [ISRegionDetector _startWifiScan];
      _Block_object_dispose(&v9, 8);
      _Unwind_Resume(started);
    }

    v5(fWifiManager, Current, *MEMORY[0x1E695E8D0]);
    CFRelease(self->fWifiManager);
    self->fWifiManager = 0;
  }

  fWifiDevice = self->fWifiDevice;
  if (fWifiDevice)
  {
    CFRelease(fWifiDevice);
    self->fWifiDevice = 0;
  }
}

- (void)reset
{
  [(ISRegionDetector *)self setGuessedCountries:0];
  guessedCountryFromTelephony = self->_guessedCountryFromTelephony;
  self->_guessedCountryFromTelephony = 0;
}

- (uint64_t)_startWifiScan
{
  dlerror();
  v0 = abort_report_np();
  return [NSBundle(InternationalSupportExtensions) localizedStringInDeviceLanguageForKey:v0];
}

@end