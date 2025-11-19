void _btServiceEventCallback(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = objc_autoreleasePoolPush();
  v11 = +[BluetoothManager sharedInstance];
  v12 = [(BluetoothManager *)v11 addDeviceIfNeeded:a1];
  v13 = v12;
  if (a2 != -1 && (a2 & 0x40) != 0)
  {
    goto LABEL_3;
  }

  if (a3 == 2)
  {
    switch(a2)
    {
      case -1:
        if (a4 != 701 || a5)
        {
          goto LABEL_3;
        }

        [v12 _clearName];
        v25 = @"BluetoothDeviceUpdatedNotification";
        goto LABEL_66;
      case 16:
        if (a4 == 201 && !a5)
        {
          v28 = sharedBluetoothManagerLogComponent();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            _btServiceEventCallback_cold_1();
          }
        }

        goto LABEL_3;
      case 2:
        if (a4 != 303 || a5)
        {
          goto LABEL_3;
        }

        v27 = sharedBluetoothManagerLogComponent();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          _btServiceEventCallback_cold_2();
        }

        break;
      case 1:
        v21 = sharedBluetoothManagerLogComponent();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          _btServiceEventCallback_cold_3();
        }

        if (a4 == 101 && !a5)
        {
          v22 = sharedBluetoothManagerLogComponent();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            _btServiceEventCallback_cold_10();
          }

          v23 = v11;
          v24 = 1;
LABEL_55:
          [(BluetoothManager *)v23 setAudioConnected:v24];
          goto LABEL_3;
        }

        if (a4 == 102 && !a5)
        {
          v29 = sharedBluetoothManagerLogComponent();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            _btServiceEventCallback_cold_9();
          }

          v23 = v11;
          v24 = 0;
          goto LABEL_55;
        }

        if (a4 == 103 && !a5)
        {
          v31 = sharedBluetoothManagerLogComponent();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            _btServiceEventCallback_cold_8();
          }

          v25 = @"BluetoothHandsfreeInitiatedVoiceCommand";
          goto LABEL_66;
        }

        if (a4 == 104 && !a5)
        {
          v32 = sharedBluetoothManagerLogComponent();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            _btServiceEventCallback_cold_7();
          }

          v25 = @"BluetoothHandsfreeEndedVoiceCommand";
          goto LABEL_66;
        }

        if (a4 != 303 || a5)
        {
          if (a4 != 702 || a5)
          {
            if (a4 != 703 || a5)
            {
              goto LABEL_3;
            }

            v35 = sharedBluetoothManagerLogComponent();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              _btServiceEventCallback_cold_4();
            }

            v25 = @"BluetoothHighPowerDisabled";
          }

          else
          {
            v34 = sharedBluetoothManagerLogComponent();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              _btServiceEventCallback_cold_5();
            }

            v25 = @"BluetoothHighPowerEnabled";
          }

          goto LABEL_66;
        }

        v33 = sharedBluetoothManagerLogComponent();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          _btServiceEventCallback_cold_6();
        }

        break;
      default:
        goto LABEL_3;
    }

    v25 = @"BluetoothDeviceSupportsContactSyncNotification";
    goto LABEL_66;
  }

  if (a3 == 1)
  {
    v17 = [v12 connectedServicesCount];
    if (a4 == 12)
    {
      v18 = v17;
      v19 = sharedBluetoothManagerLogComponent();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        if (a5)
        {
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed with error %d", a5];
        }

        else
        {
          v20 = @"succeeded";
        }

        *buf = 67109634;
        *&buf[4] = a2;
        *&buf[8] = 2112;
        *&buf[10] = v13;
        *&buf[18] = 2112;
        *&buf[20] = v20;
        _os_log_impl(&dword_241BC5000, v19, OS_LOG_TYPE_INFO, "disconnection to service 0x%08x on device %@ %@", buf, 0x1Cu);
      }

      if (!v18)
      {
        if (a5)
        {
          -[BluetoothManager postNotificationName:object:error:](v11, "postNotificationName:object:error:", @"BluetoothDeviceDisconnectFailedNotification", v13, [MEMORY[0x277CCABB0] numberWithInt:a5]);
          goto LABEL_3;
        }

        v25 = @"BluetoothDeviceDisconnectSuccessNotification";
        goto LABEL_66;
      }
    }
  }

  else
  {
    if (a3)
    {
      goto LABEL_3;
    }

    if (([v12 _isNameCached] & 1) == 0)
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
      memset(buf, 0, sizeof(buf));
      if (!BTDeviceGetName())
      {
        [(BluetoothManager *)v11 postNotificationName:@"BluetoothDeviceUpdatedNotification" object:v13];
      }
    }

    if (a4 != 1)
    {
      if (a4 != 11)
      {
        goto LABEL_3;
      }

      v15 = sharedBluetoothManagerLogComponent();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        if (a5)
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed with error %d", a5];
        }

        else
        {
          v16 = @"succeeded";
        }

        *buf = 67109634;
        *&buf[4] = a2;
        *&buf[8] = 2112;
        *&buf[10] = v13;
        *&buf[18] = 2112;
        *&buf[20] = v16;
        _os_log_impl(&dword_241BC5000, v15, OS_LOG_TYPE_INFO, "connection to service 0x%08x on device %@ %@", buf, 0x1Cu);
      }

      if (a2 == 512)
      {
        [(BluetoothManager *)v11 postNotificationName:@"BluetoothDeviceSupportsMAPClientNotification" object:v13];
      }

      v30 = [v13 getConnectingServiceMask] & ~a2;
      [v13 setConnectingServicemask:v30];
      if (a5)
      {
        if (!v30 && ![v13 connectedServicesCount])
        {
          -[BluetoothManager postNotificationName:object:error:](v11, "postNotificationName:object:error:", @"BluetoothDeviceConnectFailedNotification", v13, [MEMORY[0x277CCABB0] numberWithInt:a5]);
          [(BluetoothManager *)v11 _updateBluetoothState];
        }

        goto LABEL_3;
      }

      v25 = @"BluetoothDeviceConnectSuccessNotification";
LABEL_66:
      [(BluetoothManager *)v11 postNotificationName:v25 object:v13];
      goto LABEL_3;
    }

    v26 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = a2;
      *&buf[8] = 2112;
      *&buf[10] = v13;
      _os_log_impl(&dword_241BC5000, v26, OS_LOG_TYPE_INFO, "attempting to connect to service 0x%08x on device %@", buf, 0x12u);
    }

    [v13 setConnectingServicemask:{objc_msgSend(v13, "getConnectingServiceMask") | a2}];
  }

LABEL_3:
  objc_autoreleasePoolPop(v10);
  v14 = *MEMORY[0x277D85DE8];
}

void _btLocalStatusEventCallback(uint64_t a1, int a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[BluetoothManager sharedInstance];
  v5 = v4;
  if (a2 <= 5)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        [(BluetoothManager *)v4 _pairedStatusChanged];
      }

      else
      {
        [(BluetoothManager *)v4 _connectedStatusChanged];
      }
    }

    else if (a2)
    {
      if (a2 == 3)
      {
        [(BluetoothManager *)v4 _connectabilityChanged];
      }
    }

    else
    {
      v6 = sharedBluetoothManagerLogComponent();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_241BC5000, v6, OS_LOG_TYPE_INFO, "local device power state changed", buf, 2u);
      }

      [(BluetoothManager *)v5 _updateDenylistMode];
      [(BluetoothManager *)v5 _powerChanged];
    }
  }

  else if (a2 > 8)
  {
    switch(a2)
    {
      case 9:
        v7 = sharedBluetoothManagerLogComponent();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v8 = 0;
          _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "local device airplane mode state changed", v8, 2u);
        }

        [(BluetoothManager *)v5 _updateAirplaneModeStatus];
        break;
      case 10:
        [(BluetoothManager *)v4 _updateDenylistMode];
        break;
      case 11:
        [(BluetoothManager *)v4 _notifyFirstDeviceUnlockCompleted];
        break;
    }
  }

  else if ((a2 - 6) >= 2)
  {
    if (a2 == 8)
    {
      [(BluetoothManager *)v4 _advertisingChanged];
    }
  }

  else
  {
    [(BluetoothManager *)v4 _discoveryStateChanged];
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t sharedBluetoothManagerLogComponent()
{
  if (sharedBluetoothManagerLogComponent_onceToken != -1)
  {
    sharedBluetoothManagerLogComponent_cold_1();
  }

  return sharedBluetoothManagerLogComponent_sharedBTMLog;
}

uint64_t AddressForBTDevice()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  if (BTDeviceGetAddressString())
  {
    v0 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      AddressForBTDevice_cold_1();
    }

    result = 0;
  }

  else
  {
    result = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __sharedBluetoothManagerLogComponent_block_invoke()
{
  result = os_log_create("com.apple.bluetooth", "BluetoothManager");
  sharedBluetoothManagerLogComponent_sharedBTMLog = result;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

BOOL isDebugModeEnabled()
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  if (CFPreferencesGetAppBooleanValue(@"FitTestOptions", @"com.apple.BTServer", &keyExistsAndHasValidFormat))
  {
    v0 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

void _btSessionEventCallback(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  if (!(a3 | a2))
  {
    v10 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241BC5000, v10, OS_LOG_TYPE_DEFAULT, "Got a session, lets continue with setup", buf, 2u);
    }

    v11 = [a4 _setup:a1];
    if (v11)
    {
      v12 = sharedBluetoothManagerLogComponent();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 0;
        v13 = "Sending attached posting BluetoothAvailabilityChangedNotification with availability set to YES";
        v14 = &v18;
LABEL_21:
        _os_log_impl(&dword_241BC5000, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
      }
    }

    else
    {
      [a4 _cleanup:1];
      v12 = sharedBluetoothManagerLogComponent();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        v13 = "Session attached posting BluetoothAvailabilityChangedNotification with availability set to NO";
        v14 = v19;
        goto LABEL_21;
      }
    }

    [a4 postNotificationName:@"BluetoothAvailabilityChangedNotification" object:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", v11)}];
    [a4 _updateBluetoothState];
    goto LABEL_23;
  }

  if (a2 >= 4)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a2];
  }

  else
  {
    v9 = off_278D10E60[a2];
  }

  v15 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    _btSessionEventCallback_cold_1();
  }

  if ([a4 available])
  {
    if (!a2)
    {
      [a4 _updateBluetoothState];
    }

    v16 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_241BC5000, v16, OS_LOG_TYPE_DEFAULT, "Sending BluetoothAvailabilityChangedNotification with availability set to NO", v17, 2u);
    }

    [a4 postNotificationName:@"BluetoothAvailabilityChangedNotification" object:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
  }

  [a4 _cleanup:0];
  [a4 _attach];
LABEL_23:
  objc_autoreleasePoolPop(v8);
}

void _btAccessoryEventCallback(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = +[BluetoothManager sharedInstanceQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___btAccessoryEventCallback_block_invoke;
  v11[3] = &__block_descriptor_64_e5_v8__0l;
  v11[4] = a1;
  v11[5] = a3;
  v12 = a2;
  v13 = a4;
  v11[6] = a5;
  dispatch_async(v10, v11);
}

void _btAccessorySetupCommandCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v51 = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  v10 = +[BluetoothManager sharedInstance];
  v11 = [(BluetoothManager *)v10 addDeviceIfNeeded:a2];
  v12 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68157954;
    *v48 = a6;
    *&v48[4] = 2096;
    *&v48[6] = a5;
    _os_log_impl(&dword_241BC5000, v12, OS_LOG_TYPE_DEFAULT, "DebugFitTest : Seal received data  %.*P", buf, 0x12u);
  }

  if (a6 == 178)
  {
    v13 = *(a5 + 2);
    v14 = *(a5 + 6);
    v15 = *(a5 + 18);
    v16 = *(a5 + 22);
    v17 = *(a5 + 26);
    v18 = *(a5 + 90);
    v19 = *(a5 + 94);
    v20 = *(a5 + 106);
    v21 = *(a5 + 110);
    v22 = *(a5 + 114);
    v23 = isDebugModeEnabled() || [v11 productId] == 8212;
    if ([v11 productId] == 8228 || v23)
    {
      v17 = v15;
      v16 = v15;
      v22 = v20;
      v21 = v20;
    }

    v25 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v48 = v18;
      _os_log_impl(&dword_241BC5000, v25, OS_LOG_TYPE_DEFAULT, "DebugFitTest : Confidence Left : %.6f", buf, 0xCu);
    }

    v26 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v48 = v19;
      _os_log_impl(&dword_241BC5000, v26, OS_LOG_TYPE_DEFAULT, "DebugFitTest : Coherence Left : %.6f", buf, 0xCu);
    }

    v27 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v48 = v13;
      _os_log_impl(&dword_241BC5000, v27, OS_LOG_TYPE_DEFAULT, "DebugFitTest : Confidence Right : %.6f", buf, 0xCu);
    }

    v28 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v48 = v14;
      _os_log_impl(&dword_241BC5000, v28, OS_LOG_TYPE_DEFAULT, "DebugFitTest : Coherence Right : %.6f", buf, 0xCu);
    }

    v29 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v48 = v20;
      *&v48[8] = 2048;
      *&v48[10] = v21;
      v49 = 2048;
      v50 = v22;
      _os_log_impl(&dword_241BC5000, v29, OS_LOG_TYPE_DEFAULT, "DebugFitTest : SealMetricL input : %.6f, %.6f, %.6f", buf, 0x20u);
    }

    v30 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v48 = v15;
      *&v48[8] = 2048;
      *&v48[10] = v16;
      v49 = 2048;
      v50 = v17;
      _os_log_impl(&dword_241BC5000, v30, OS_LOG_TYPE_DEFAULT, "DebugFitTest : SealMetricR input : %.6f, %.6f, %.6f", buf, 0x20u);
    }

    v31 = log10f(v20);
    v32 = (log10f(v21) * 10.0) + (v31 * 10.0);
    v33 = (v32 + (log10f(v22) * 10.0)) * 0.3333;
    v34 = log10f(v15);
    v35 = (log10f(v16) * 10.0) + (v34 * 10.0);
    v36 = v35 + (log10f(v17) * 10.0);
    v37 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v48 = v33;
      _os_log_impl(&dword_241BC5000, v37, OS_LOG_TYPE_DEFAULT, "DebugFitTest : SealMetricL %.6f", buf, 0xCu);
    }

    v38 = v36 * 0.3333;
    v39 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v48 = v38;
      _os_log_impl(&dword_241BC5000, v39, OS_LOG_TYPE_DEFAULT, "DebugFitTest : SealMetricR %.6f", buf, 0xCu);
    }

    v46[0] = v11;
    *&v40 = v33;
    v46[1] = [MEMORY[0x277CCABB0] numberWithFloat:{v40, @"device", @"sealLeft"}];
    v45[2] = @"sealRight";
    *&v41 = v38;
    v46[2] = [MEMORY[0x277CCABB0] numberWithFloat:v41];
    v45[3] = @"confidenceLeft";
    *&v42 = v18;
    v46[3] = [MEMORY[0x277CCABB0] numberWithFloat:v42];
    v45[4] = @"confidenceRight";
    *&v43 = v13;
    v46[4] = [MEMORY[0x277CCABB0] numberWithFloat:v43];
    -[BluetoothManager postNotificationName:object:](v10, "postNotificationName:object:", @"BluetoothAccessorySealValueStatusNotification", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:5]);
  }

  objc_autoreleasePoolPop(v9);
  v44 = *MEMORY[0x277D85DE8];
}

void ___btAccessoryEventCallback_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = objc_autoreleasePoolPush();
  v5 = +[BluetoothManager sharedInstance];
  v6 = [(BluetoothManager *)v5 addDeviceIfNeeded:v2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v1 > 13)
    {
      if (v1 > 21)
      {
        if (v1 == 22)
        {
          v16 = sharedBluetoothManagerLogComponent();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241BC5000, v16, OS_LOG_TYPE_DEFAULT, "BT_ACCESSORY_AACP_CAPABILITIES_RECEIVED", buf, 2u);
          }

          v7 = @"BluetoothAccessoryAACPCapabilitiesReceived";
          goto LABEL_38;
        }

        if (v1 == 23)
        {
          v13 = sharedBluetoothManagerLogComponent();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241BC5000, v13, OS_LOG_TYPE_DEFAULT, "BT_ACCESSORY_SENSOR_STREAMING_FREQUENCY_CHANGED", buf, 2u);
          }

          v7 = @"BluetoothAccessorySensorStreamingFrequencyChanged";
          goto LABEL_38;
        }
      }

      else
      {
        if (v1 == 14)
        {
          v14 = sharedBluetoothManagerLogComponent();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241BC5000, v14, OS_LOG_TYPE_DEFAULT, "BT_ACCESSORY_HEADTRACKING_CHANGED", buf, 2u);
          }

          v7 = @"BluetoothAccessibilityHeadTrackChanged";
          goto LABEL_38;
        }

        if (v1 == 15)
        {
          v9 = sharedBluetoothManagerLogComponent();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241BC5000, v9, OS_LOG_TYPE_DEFAULT, "BT_ACCESSORY_HEADTRACKING_AVAILABILITY_CHANGED", buf, 2u);
          }

          v7 = @"BluetoothHeadTrackingAvailable";
          goto LABEL_38;
        }
      }
    }

    else if (v1 > 4)
    {
      if (v1 == 5)
      {
        v15 = sharedBluetoothManagerLogComponent();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241BC5000, v15, OS_LOG_TYPE_DEFAULT, "BT_ACCESSORY_SETTINGS_CHANGED", buf, 2u);
        }

        v7 = @"BluetoothAccessorySettingsChanged";
        goto LABEL_38;
      }

      if (v1 == 6)
      {
        [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
        v10 = BTAccessoryManagerGetInEarStatus();
        v11 = sharedBluetoothManagerLogComponent();
        v12 = v11;
        if (!v10)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            *&buf[4] = v6;
            *&buf[12] = 1024;
            *&buf[14] = 3;
            *&buf[18] = 1024;
            *&buf[20] = 3;
            _os_log_impl(&dword_241BC5000, v12, OS_LOG_TYPE_DEFAULT, "received 'AACP In Ear Status Changed' event from device %@ inEarStatus Primary : %u, Secondary : %u", buf, 0x18u);
          }

          *buf = v6;
          v20[0] = @"device";
          v20[1] = @"primaryInEarStatus";
          *&buf[8] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
          v20[2] = @"secondaryInEarStatus";
          *&buf[16] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v20 count:3];
          v7 = @"BluetoothAccessoryInEarStatusNotification";
          v17 = v5;
          goto LABEL_39;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          ___btAccessoryEventCallback_block_invoke_cold_2();
        }
      }
    }

    else if (v1 == 1)
    {
      buf[0] = 0;
      if (!BTAccessoryManagerGetDeviceBatteryLevel())
      {
        v7 = @"BluetoothDeviceBatteryChangedNotification";
        goto LABEL_38;
      }
    }

    else if (v1 == 4 && (objc_opt_respondsToSelector() & 1) != 0 && [v6 pairedDeviceNameUpdated])
    {
      v7 = @"BluetoothMagicPairedDeviceNameChangedNotification";
LABEL_38:
      v17 = v5;
      v18 = v6;
LABEL_39:
      [(BluetoothManager *)v17 postNotificationName:v7 object:v18];
    }
  }

  else
  {
    v8 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ___btAccessoryEventCallback_block_invoke_cold_1();
    }
  }

  objc_autoreleasePoolPop(v4);
  v19 = *MEMORY[0x277D85DE8];
}

void _btDiscoveryStatusEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_autoreleasePoolPush();
  [a5 _setScanState:a2];
  if (a2 == 1)
  {
    [a5 _restartScan];
  }

  objc_autoreleasePoolPop(v7);
}

void _btDiscoveryEventCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  v9 = [a5 addDeviceIfNeeded:a3];
  if (v9)
  {
    v10 = v9;
    if (a2 == 1)
    {
      v13 = sharedBluetoothManagerLogComponent();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        _btDiscoveryEventCallback_cold_1();
      }

      v14 = v10;
      [a5 _removeDevice:v10];
      v12 = @"BluetoothDeviceRemovedNotification";
      goto LABEL_10;
    }

    if (!a2)
    {
      v11 = sharedBluetoothManagerLogComponent();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        _btDiscoveryEventCallback_cold_2();
      }

      v12 = @"BluetoothDeviceDiscoveredNotification";
LABEL_10:
      [a5 postNotificationName:v12 object:v10];
    }
  }

  objc_autoreleasePoolPop(v8);
}

void pairingAgentStatusEventCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = objc_autoreleasePoolPush();
  if (a3 == 4294901761)
  {
    v10 = 0;
  }

  else
  {
    v10 = [a5 addDeviceIfNeeded:a3];
  }

  if (a2 == 3)
  {
    v11 = sharedBluetoothManagerLogComponent();
    if (a4)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        pairingAgentStatusEventCallback_cold_1();
      }

      [a5 postNotificationName:@"BluetoothPairingPINResultFailedNotification" object:v10 error:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", a4)}];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        pairingAgentStatusEventCallback_cold_2();
      }

      [a5 postNotificationName:@"BluetoothPairingPINResultSuccessNotification" object:v10];
    }
  }

  objc_autoreleasePoolPop(v9);
}

void pairingAgentPincodeCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  v7 = [a4 addDeviceIfNeeded:a2];
  v8 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_241BC5000, v8, OS_LOG_TYPE_INFO, "received pincode request for device %@", &v10, 0xCu);
  }

  [a4 postNotificationName:@"BluetoothPairingPINRequestNotification" object:v7];
  objc_autoreleasePoolPop(v6);
  v9 = *MEMORY[0x277D85DE8];
}

void pairingAgentUserConfirmationCallback(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  *&v18[5] = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  v10 = [a5 addDeviceIfNeeded:a2];
  v11 = sharedBluetoothManagerLogComponent();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (a4)
  {
    if (v12)
    {
      *buf = 67109378;
      v18[0] = a3;
      LOWORD(v18[1]) = 2112;
      *(&v18[1] + 2) = v10;
      _os_log_impl(&dword_241BC5000, v11, OS_LOG_TYPE_INFO, "received user confirmation request (numeric comparison to %06u) for device %@", buf, 0x12u);
    }

    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v10, @"device", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", a3), @"value", 0}];
    v14 = @"BluetoothPairingUserNumericComparisionNotification";
    v15 = a5;
  }

  else
  {
    if (v12)
    {
      *buf = 138412290;
      *v18 = v10;
      _os_log_impl(&dword_241BC5000, v11, OS_LOG_TYPE_INFO, "received user confirmation request for device %@", buf, 0xCu);
    }

    v14 = @"BluetoothPairingUserConfirmationNotification";
    v15 = a5;
    v13 = v10;
  }

  [v15 postNotificationName:v14 object:v13];
  objc_autoreleasePoolPop(v9);
  v16 = *MEMORY[0x277D85DE8];
}

void pairingAgentPassKeyDisplayCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = [a4 addDeviceIfNeeded:a2];
  v9 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_241BC5000, v9, OS_LOG_TYPE_INFO, "received passkey display request for device %@", buf, 0xCu);
  }

  [a4 postNotificationName:@"BluetoothPairingPassKeyDisplayNotification" object:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", v8, @"device", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", a3), @"value", 0)}];
  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x277D85DE8];
}

void pairingAgentLocalOOBDataReadyCallback()
{
  v0 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_241BC5000, v0, OS_LOG_TYPE_INFO, "received Local OOB Data Ready callback, unsupported", v1, 2u);
  }
}

Class ___bluetoothIsBeingManaged_block_invoke()
{
  result = NSClassFromString(&cfstr_Mcprofileconne.isa);
  if (result)
  {
    result = [-[objc_class sharedConnection](result "sharedConnection")];
    _bluetoothIsBeingManaged_isManaged = result ^ 1;
  }

  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void AddressForBTDevice_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_241BC5000, v0, v1, "BTDeviceGetAddressString(%p) failed with error %d.", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

void _btServiceEventCallback_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6(&dword_241BC5000, v0, v1, "received 'A2DP audio connected' event from device %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _btServiceEventCallback_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6(&dword_241BC5000, v0, v1, "received 'phonebook supported' phonebook event from device %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _btServiceEventCallback_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6(&dword_241BC5000, v0, v1, "received 'high power disabled' event from device %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _btServiceEventCallback_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6(&dword_241BC5000, v0, v1, "received 'high power enabled' event from device %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _btServiceEventCallback_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6(&dword_241BC5000, v0, v1, "received 'phonebook supported' handsfree event from device %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _btServiceEventCallback_cold_7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6(&dword_241BC5000, v0, v1, "received 'end voice command' handsfree event from device %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _btServiceEventCallback_cold_8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6(&dword_241BC5000, v0, v1, "received 'start voice command' handsfree event from device %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _btServiceEventCallback_cold_9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6(&dword_241BC5000, v0, v1, "received 'audio disconnected' handsfree event from device %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _btServiceEventCallback_cold_10()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6(&dword_241BC5000, v0, v1, "received 'audio connected' handsfree event from device %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _btSessionEventCallback_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_241BC5000, v0, v1, "Session attach called back with %@ (%x)");
  v2 = *MEMORY[0x277D85DE8];
}

void ___btAccessoryEventCallback_block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ___btAccessoryEventCallback_block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get inEarStatus : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _btDiscoveryEventCallback_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6(&dword_241BC5000, v0, v1, "lost device %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _btDiscoveryEventCallback_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6(&dword_241BC5000, v0, v1, "found device %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void pairingAgentStatusEventCallback_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_241BC5000, v0, v1, "pairing to device %@ failed with result %d");
  v2 = *MEMORY[0x277D85DE8];
}

void pairingAgentStatusEventCallback_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6(&dword_241BC5000, v0, v1, "pairing to device %@ completed successfully", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}