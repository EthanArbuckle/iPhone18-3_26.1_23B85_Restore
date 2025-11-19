uint64_t iap2_deviceNotifications_deviceTimeUpdateHandler(uint64_t a1, const __CFDictionary *a2)
{
  if (a1 && a2 && iap2_feature_getFeature(a1, 8u))
  {
    v4 = OUTLINED_FUNCTION_6_15();
    OUTLINED_FUNCTION_49(v4, 19979, v5);
    valuePtr = 0xAAAAAAAAAAAAAAAALL;
    Value = CFDictionaryGetValue(a2, @"kCFACCDeviceNotifications_DeviceTimeUpdate_UnixTime");
    if (Value && CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr))
    {
      v7 = OUTLINED_FUNCTION_0_11();
      v11 = iAP2MsgAddU64Param(v7, v8, v9, v10) != 0;
    }

    else
    {
      v11 = 0;
    }

    v18 = -21846;
    v12 = CFDictionaryGetValue(a2, @"kCFACCDeviceNotifications_DeviceTimeUpdate_TimeZoneOffsetMinutes");
    if (v12 && CFNumberGetValue(v12, kCFNumberShortType, &v18) && iAP2MsgAddI16Param(a1 + 120, 0, 1, v18))
    {
      ++v11;
    }

    v17 = -86;
    v13 = CFDictionaryGetValue(a2, @"kCFACCDeviceNotifications_DeviceTimeUpdate_DaylightSavingsOffsetMinutes");
    if (v13 && CFNumberGetValue(v13, kCFNumberCharType, &v17) && iAP2MsgAddI8Param(a1 + 120, 0, 2, v17) || v11)
    {
      v14 = OUTLINED_FUNCTION_3_21();
      iap2_sessionControl_sendOutgoingMessage(v14, v15);
    }
  }

  return 0;
}

uint64_t iap2_deviceNotifications_wirelessCarPlayAvailabilityDidChangeHandler(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!*result)
    {
      return 0;
    }

    result = iap2_feature_getFeature(result, 8u);
    if (result)
    {
      v2 = result;
      v3 = iap2_accAuthentication_copyCertificateSerial(v1);
      isWirelessCarPlayAllowedForCertSerial = platform_CarPlay_isWirelessCarPlayAllowedForCertSerial(v3);
      isCarPlayPairedWithCertSerial = platform_CarPlay_isCarPlayPairedWithCertSerial(v3);
      if (v3)
      {
        CFRelease(v3);
      }

      v6 = gLogObjects;
      v7 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 28)
      {
        v8 = *(gLogObjects + 216);
      }

      else
      {
        v8 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v18 = 134218240;
          *v19 = v6;
          *&v19[8] = 1024;
          *v20 = v7;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v18);
        }
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = v2[4];
        v11 = v2[2];
        v12 = v2[1];
        v13 = *(v1 + 8);
        v18 = 67110402;
        *v19 = isWirelessCarPlayAllowedForCertSerial;
        *&v19[4] = 1024;
        *&v19[6] = isCarPlayPairedWithCertSerial;
        *v20 = 1024;
        *&v20[2] = v10;
        v21 = 1024;
        v22 = v11;
        v23 = 1024;
        v24 = v12;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "wirelessCarPlayAvailabilityDidChangeHandler: wirelessCarPlayAvailable: %d, carPlayPaired: %d, pfeature->wirelessCarPlayAvailable: %d, pFeature->firstWirelessCarPlayAvailabilityNotificationSeen: %d, requestedDeviceTransportIdentifierNotification: %d, endpoint: %@", &v18, 0x2Au);
      }

      if (*v2 == 1)
      {
        if (v2[4] == isWirelessCarPlayAllowedForCertSerial && (v2[2] & 1) != 0)
        {
          v14 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 28)
          {
            v15 = *(gLogObjects + 216);
          }

          else
          {
            v15 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_7();
              *v20 = v14;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v17, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v18);
            }
          }

          v16 = 1;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            LOWORD(v18) = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Wireless CarPlay availability didn't change for this accessory - ignoring notification", &v18, 2u);
          }
        }

        else
        {
          OUTLINED_FUNCTION_49(v1 + 120, 19981, *(v1 + 192));
          iAP2MsgAddU8Param(v1 + 120, 0, 0, isWirelessCarPlayAllowedForCertSerial);
          v16 = iap2_sessionControl_sendOutgoingMessage(v1, v1 + 120);
        }
      }

      else
      {
        v16 = 1;
      }

      if (v2[1] == 1 && (v2[3] & 1) == 0 && isWirelessCarPlayAllowedForCertSerial && ((isCarPlayPairedWithCertSerial ^ 1) & 1) == 0)
      {
        if ((v16 & _sendTransportIdentifiers(v1)) == 1)
        {
          v2[3] = 1;
          if ((*v2 & 1) == 0)
          {
            platform_deviceNotifications_removeSubscriber(3u, *(v1 + 8));
          }

          goto LABEL_26;
        }
      }

      else if (v16)
      {
LABEL_26:
        result = 1;
        v2[2] = 1;
LABEL_35:
        v2[4] = isWirelessCarPlayAllowedForCertSerial;
        return result;
      }

      result = 0;
      goto LABEL_35;
    }
  }

  return result;
}

uint64_t _sendTransportIdentifiers(uint64_t result)
{
  if (result)
  {
    v1 = result;
    OUTLINED_FUNCTION_49(result + 120, 19982, *(result + 192));
    v2 = platform_systemInfo_copyBluetoothMACAddress();
    v3 = platform_systemInfo_copyUniqueDeviceID();
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 28;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      v10 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_10(v5, v6, v7, v8, v9);
      }
    }

    else
    {
      v10 = *(gLogObjects + 216);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_14_3();
      _os_log_impl(v11, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 0x16u);
    }

    v15 = OUTLINED_FUNCTION_0_11();
    v18 = iAP2MsgAddCFStringParam(v15, v16, v17, v2);
    v19 = (iAP2MsgAddCFStringParam(v1 + 120, 0, 1, v3) | v18) != 0;
    if (v2)
    {
      CFRelease(v2);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (v19)
    {
      v20 = OUTLINED_FUNCTION_3_21();
      iap2_sessionControl_sendOutgoingMessage(v20, v21);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_BYTE *_createFeature_9(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, 5uLL, 0x1000040957D8CC4uLL);
  if (!result)
  {
    return 0;
  }

  result[4] = 0;
  *result = 0;
  return result;
}

uint64_t _destroyFeature_9(void **a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      platform_deviceNotifications_removeSubscriber(5u, v5);
    }

    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }
  }

  return v3;
}

uint64_t _startFeatureFromDevice_7(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 28;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v4 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v3, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v41);
    }
  }

  else
  {
    v4 = *(gLogObjects + 216);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v41[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting Device Notifications...", v41, 2u);
  }

  if (!a1)
  {
    return 0;
  }

  if (!*a1)
  {
    return 0;
  }

  if (!**a1)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(a1, 8u);
  if (!Feature)
  {
    return 0;
  }

  v6 = Feature;
  if (!iap2_identification_isIdentifiedForOutgoingMessageID(a1, 0x4E0Cu))
  {
    goto LABEL_19;
  }

  v7 = OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_49(v7, 19980, v8);
  v9 = acc_manager_copyDeviceUUID();
  v10 = OUTLINED_FUNCTION_0_11();
  v13 = iAP2MsgAddCFStringParam(v10, v11, v12, v9);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v13)
  {
    v14 = OUTLINED_FUNCTION_3_21();
    iap2_sessionControl_sendOutgoingMessage(v14, v15);
LABEL_19:
    v16 = 1;
    goto LABEL_20;
  }

  v16 = 0;
LABEL_20:
  if (iap2_identification_isIdentifiedForOutgoingMessageID(a1, 0x4E09u))
  {
    platform_deviceNotifications_addSubscriber(0, *(a1 + 8), v17);
  }

  if (iap2_identification_isIdentifiedForOutgoingMessageID(a1, 0x4E0Au))
  {
    platform_deviceNotifications_addSubscriber(1u, *(a1 + 8), v18);
  }

  if (iap2_identification_isIdentifiedForOutgoingMessageID(a1, 0x4E0Bu))
  {
    platform_deviceNotifications_addSubscriber(2u, *(a1 + 8), v19);
  }

  if (iap2_identification_isIdentifiedForOutgoingMessageID(a1, 0x4E0Du))
  {
    platform_deviceNotifications_addSubscriber(3u, *(a1 + 8), v20);
    *v6 = 1;
  }

  if (iap2_identification_isIdentifiedForOutgoingMessageID(a1, 0x4E0Eu))
  {
    v6[1] = 1;
    v21 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 28)
    {
      v22 = *(gLogObjects + 216);
    }

    else
    {
      v22 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_7();
        v44[0] = v21;
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_10(v35, v36, v37, v38, v39);
      }
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      isIdentifiedForCarPlay = iap2_identification_isIdentifiedForCarPlay(a1);
      isIdentifiedForUSBCarPlay = iap2_identification_isIdentifiedForUSBCarPlay(a1);
      isIdentifiedForWirelessCarPlay = iap2_identification_isIdentifiedForWirelessCarPlay(a1);
      v41[0] = 67109632;
      v41[1] = isIdentifiedForCarPlay;
      v42 = 1024;
      v43 = isIdentifiedForUSBCarPlay;
      LOWORD(v44[0]) = 1024;
      *(v44 + 2) = isIdentifiedForWirelessCarPlay;
      OUTLINED_FUNCTION_14_3();
      _os_log_impl(v26, v27, OS_LOG_TYPE_INFO, v28, v29, 0x14u);
    }

    Type = acc_connection_getType(**a1);
    if (!iap2_identification_isIdentifiedForUSBCarPlay(a1) || (Type != 6 ? (v31 = Type == 1) : (v31 = 1), !v31))
    {
      if (iap2_identification_isIdentifiedForWirelessCarPlay(a1))
      {
        platform_deviceNotifications_addSubscriber(3u, *(a1 + 8), v32);
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 28)
        {
          v33 = *(gLogObjects + 216);
        }

        else
        {
          v33 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_2_3();
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v40, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v41);
          }
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v41[0]) = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Non-CarPlay accessory requested Device Transport Identifiers, ignoring...", v41, 2u);
        }
      }

      return v16;
    }

    if ((v16 & _sendTransportIdentifiers(a1)) == 1)
    {
      v16 = 1;
      v6[3] = 1;
      return v16;
    }

    return 0;
  }

  return v16;
}

void main_cold_8(void *a1, uint64_t a2)
{
  v3 = a1;
  *a2 = 138412290;
  *(a2 + 4) = v3;
  OUTLINED_FUNCTION_4_20(&_mh_execute_header, v4, v5, "mainBundle: %@");
}

void main_cold_10(void *a1)
{
  v3 = OUTLINED_FUNCTION_3_22(a1);
  *v2 = 138412290;
  *(v2 + 4) = v3;
  OUTLINED_FUNCTION_2_24(&_mh_execute_header, v4, v5, "mainBundle.bundlePath: %@");
}

void main_cold_12(void *a1)
{
  v3 = OUTLINED_FUNCTION_3_22(a1);
  *v2 = 138412290;
  *(v2 + 4) = v3;
  OUTLINED_FUNCTION_2_24(&_mh_execute_header, v4, v5, "mainBundle.bundleIdentifier: %@");
}

void main_cold_14(void *a1)
{
  v3 = OUTLINED_FUNCTION_3_22(a1);
  *v2 = 138412290;
  *(v2 + 4) = v3;
  OUTLINED_FUNCTION_2_24(&_mh_execute_header, v4, v5, "mainBundle.builtInPlugInsPath: %@");
}

void main_cold_16(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "mainBundle.localizations: %@", buf, 0xCu);
}

void main_cold_18(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "mainBundle.preferredLocalizations: %@", buf, 0xCu);
}

void main_cold_20(void *a1, uint64_t a2)
{
  v3 = a1;
  *a2 = 138412290;
  *(a2 + 4) = v3;
  OUTLINED_FUNCTION_4_20(&_mh_execute_header, v4, v5, "acc_strings_bundle: %@");
}

void platform_externalAccessory_addEAAccessoryForPrimaryEndpoint(const void *a1)
{
  v2 = HIDWORD(gLogObjects);
  v3 = gNumLogObjects;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 10;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(v44) = v2;
      OUTLINED_FUNCTION_3();
      v45 = v3;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v28, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v29, v30, v31, v32, 0);
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v43 = 138412290;
    v44 = a1;
    OUTLINED_FUNCTION_3_3();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
  }

  if (qword_100246100 != -1)
  {
    dispatch_once(&qword_100246100, &__block_literal_global_16);
  }

  v12 = acc_manager_copyConnectionUUIDForEndpointUUID(a1);
  if (v12)
  {
    v13 = v12;
    ConnectionWithUUID = acc_manager_getConnectionWithUUID(v12);
    if (!ConnectionWithUUID)
    {
      CFRelease(v13);
LABEL_28:
      v22 = [[ACCExternalAccessory alloc] initWithEndpointUUIDs:0 primaryEndpointUUID:a1];
      if (v22)
      {
        p_super = &v22->super;
        [_MergedGlobals_1 lock];
        [gConnectedExternalAccessories addObject:p_super];
        [_MergedGlobals_1 unlock];
        _postFindAppAlert(p_super);
        platform_digitalAudio_eaAccessoryAttached();
        v24 = +[ACCExternalAccessoryServer sharedServer];
        [v24 externalAccessoryArrived:p_super];
      }

      else
      {
        v25 = gLogObjects;
        v26 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 10)
        {
          p_super = *(gLogObjects + 72);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v43 = 134218240;
            v44 = v25;
            OUTLINED_FUNCTION_3();
            v45 = v26;
            OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v38, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v39, v40, v41, v42, v43);
          }

          p_super = &_os_log_default;
          v27 = &_os_log_default;
        }

        if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v43) = 0;
          _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "Could not create ACCExternalAccessory object for EA endpoints", &v43, 2u);
        }
      }

      return;
    }

    v15 = acc_connection_copyProperty(ConnectionWithUUID, kCFACCProperties_Connection_HideFromEA);
    v16 = v15;
    if (v15)
    {
      CFRelease(v15);
    }

    v17 = HIDWORD(gLogObjects);
    v18 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v19 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        HIDWORD(v44) = v17;
        OUTLINED_FUNCTION_3();
        v45 = v18;
        OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v33, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v34, v35, v36, v37, 0);
      }

      v19 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = "no";
      if (!v16)
      {
        v21 = "yes";
      }

      v43 = 136315138;
      v44 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "connectionSupportsEA = %s", &v43, 0xCu);
    }

    CFRelease(v13);
    if (!v16)
    {
      goto LABEL_28;
    }
  }
}

void _sendEAPowerSourceUpdate(uint64_t a1, int a2)
{
  if (!a1)
  {
    v8 = 0;
    goto LABEL_44;
  }

  v4 = gWiredConnectionSessionCountDict;
  if (!gWiredConnectionSessionCountDict)
  {
    v5 = +[NSMutableDictionary dictionary];
    v6 = gWiredConnectionSessionCountDict;
    gWiredConnectionSessionCountDict = v5;

    v4 = gWiredConnectionSessionCountDict;
  }

  v7 = [v4 objectForKey:*(a1 + 8)];
  v8 = v7;
  if (a2 == 2)
  {
    if (!v7)
    {
      v8 = &off_100233DF8;
      goto LABEL_14;
    }

    v9 = 1;
    goto LABEL_10;
  }

  if (a2 == 1 && v7)
  {
    v9 = -1;
LABEL_10:
    v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v7 unsignedIntValue] + v9);

    v8 = v10;
  }

  if (!v8)
  {
    v11 = 0;
    goto LABEL_19;
  }

LABEL_14:
  if ([v8 unsignedIntValue])
  {
    if ([v8 unsignedIntValue])
    {
      [gWiredConnectionSessionCountDict setObject:v8 forKey:*(a1 + 8)];
    }
  }

  else
  {
    [gWiredConnectionSessionCountDict removeObjectForKey:*(a1 + 8)];
  }

  v11 = 1;
LABEL_19:
  v12 = HIDWORD(gLogObjects);
  v13 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 10)
  {
    v14 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(v33) = v12;
      OUTLINED_FUNCTION_3();
      v34 = v13;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v21, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v22, v23, v24, v25, 0);
    }

    v14 = &_os_log_default;
    v15 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v32 = 138412290;
    v33 = gWiredConnectionSessionCountDict;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "gWiredConnectionSessionCountDict: %@", &v32, 0xCu);
  }

  if (a2 == 2)
  {
    if ([v8 unsignedIntValue] != 1)
    {
      goto LABEL_44;
    }

    goto LABEL_34;
  }

  v16 = v11 ^ 1;
  if (a2 != 1)
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0 && ![v8 unsignedIntValue])
  {
LABEL_34:
    if ((platform_power_setExternalAccessoryPowerMode(*(a1 + 16), 1, a2 == 2) & 1) == 0)
    {
      v17 = gLogObjects;
      v18 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v19 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v32 = 134218240;
          v33 = v17;
          OUTLINED_FUNCTION_3();
          v34 = v18;
          OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v27, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v28, v29, v30, v31, v32);
        }

        v19 = &_os_log_default;
        v20 = &_os_log_default;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 16);
        v32 = 138412290;
        v33 = v26;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error setting AccessoryPowerMode for endpoint: %@", &v32, 0xCu);
      }
    }
  }

LABEL_44:
}

uint64_t platform_externalAccessory_verifyPrimaryEndpointConnected(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v57 = [a2 unsignedLongLongValue];
  v3 = &audioProductCerts_endpoint_publish_onceToken;
  [_MergedGlobals_1 lock];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v4 = gConnectedExternalAccessories;
  v5 = [v4 countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v59;
    *&v6 = 138412546;
    v56 = v6;
    *&v6 = 134218240;
    v55 = v6;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v59 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v58 + 1) + 8 * i);
        v11 = [v10 primaryEndpointUUID];
        v12 = [v11 isEqualToString:a1];

        if (v12)
        {
          v13 = [v10 EAConnectionID];
          v14 = [v13 unsignedLongLongValue];

          if (gLogObjects)
          {
            v15 = gNumLogObjects <= 9;
          }

          else
          {
            v15 = 1;
          }

          v16 = !v15;
          if (v57 == v14)
          {
            if (v16)
            {
              v36 = *(gLogObjects + 72);
              v3 = &audioProductCerts_endpoint_publish_onceToken;
            }

            else
            {
              v37 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
              v3 = &audioProductCerts_endpoint_publish_onceToken;
              if (v37)
              {
                OUTLINED_FUNCTION_3_23(v37, v38, v39, v40, v41, v42, v43, v44, v55);
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v36 = &_os_log_default;
              v45 = &_os_log_default;
            }

            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v46 = [v10 primaryEndpointUUID];
              OUTLINED_FUNCTION_5_18(v46, v47, v48, v49, v50, v51, v52, v53, v55, *(&v55 + 1), v56);
              v63 = v57;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%@ primaryEndpointUUID, legacy EAConnectionID %llu is currently connected", buf, 0x16u);
            }

            v35 = 1;
            goto LABEL_35;
          }

          if (v16)
          {
            v17 = *(gLogObjects + 72);
          }

          else
          {
            v18 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
            if (v18)
            {
              OUTLINED_FUNCTION_3_23(v18, v19, v20, v21, v22, v23, v24, v25, v55);
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v26 = &_os_log_default;
            v17 = &_os_log_default;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v10 primaryEndpointUUID];
            OUTLINED_FUNCTION_5_18(v27, v28, v29, v30, v31, v32, v33, v34, v55, *(&v55 + 1), v56);
            v63 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "found %@ primaryEndpointUUID, but legacy EAConnectionID that is currently connected is %llu", buf, 0x16u);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v58 objects:v64 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v35 = 0;
    v3 = &audioProductCerts_endpoint_publish_onceToken;
  }

  else
  {
    v35 = 0;
  }

LABEL_35:

  [v3[31] unlock];
  return v35;
}

void _platform_externalAccessory_EASessionClosed(void *a1)
{
  v1 = a1;
  if (v1 && gWiredEASessionUUIDs && [gWiredEASessionUUIDs containsObject:v1])
  {
    [gWiredEASessionUUIDs removeObject:v1];
    v2 = HIDWORD(gLogObjects);
    v3 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v4 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        HIDWORD(v26) = v2;
        OUTLINED_FUNCTION_3();
        v27 = v3;
        OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v15, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v16, v17, v18, v19, 0);
      }

      v4 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v25 = 134217984;
      v26 = [gWiredEASessionUUIDs count];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "after close EA session, gWiredEASessionUUIDs count = %lu", &v25, 0xCu);
    }

    if (![gWiredEASessionUUIDs count])
    {
      v6 = gLogObjects;
      v7 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v8 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v25 = 134218240;
          v26 = v6;
          OUTLINED_FUNCTION_3();
          v27 = v7;
          OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v20, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v21, v22, v23, v24, v25);
        }

        v8 = &_os_log_default;
        v9 = &_os_log_default;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        OUTLINED_FUNCTION_3_3();
        _os_log_impl(v10, v11, v12, v13, v14, 2u);
      }

      platform_sleepAssertion_destroyEA();
    }
  }
}

void _handleEAPowerSourceChange(uint64_t *a1, int a2)
{
  if (a1)
  {
    v3 = a1;
    if ((acc_endpoint_isWireless(a1) & 1) == 0)
    {
      Protocol = acc_endpoint_getProtocol(v3);
      if (Protocol == 6)
      {
        v5 = _findiAP2EndpointForConnection(*v3);
        if (!v5)
        {
          return;
        }

        v3 = v5;
      }

      else if (Protocol != 4)
      {
        return;
      }

      _sendEAPowerSourceUpdate(v3, a2);
    }
  }
}

unint64_t platform_externalAccessory_sendOutgoingEADataFromClient(const __CFString *a1, void *a2)
{
  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  v5 = EndpointWithUUID;
  if (!EndpointWithUUID)
  {
    return v5;
  }

  if (EndpointWithUUID[15])
  {
    return 0;
  }

  if (acc_endpoint_getProtocol(EndpointWithUUID) != 4 || (v6 = v5[7]) == 0 || !iap2_endpoint_isInitialized(v6))
  {
    if (acc_endpoint_getProtocol(v5) == 5 || acc_endpoint_getProtocol(v5) == 7)
    {
      v8 = a2;
      Copy = CFStringCreateCopy(kCFAllocatorDefault, a1);
      v10 = [v8 objectForKey:kACCExternalAccessorySessionUUIDKey];
      v11 = HIDWORD(gLogObjects);
      v12 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v13 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          HIDWORD(v22) = v11;
          OUTLINED_FUNCTION_3();
          v23 = v12;
          OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v16, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v17, v18, v19, v20, 0);
        }

        v13 = &_os_log_default;
        v14 = &_os_log_default;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = Copy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sending outgoing EA data to endpointUUID %@", &v21, 0xCu);
      }

      v15 = [v8 objectForKey:kACCExternalAccessorySessionDataKey];
      acc_platform_packetLogging_logEAData(v5, v10, v15, 0);
      v5 = acc_endpoint_sendOutgoingData(v5, v15);

      return v5;
    }

    return 0;
  }

  return accFeatureHandlers_invokeHandler(a1, 28, a2);
}

unint64_t platform_externalAccessory_outgoingEADataFromClientAvailable(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  if (!EndpointWithUUID)
  {
    return 0;
  }

  v5 = EndpointWithUUID;
  if ((EndpointWithUUID[120] & 1) != 0 || acc_endpoint_getProtocol(EndpointWithUUID) != 4)
  {
    return 0;
  }

  v6 = *(v5 + 7);
  if (!v6 || !iap2_endpoint_isInitialized(v6))
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v8 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v15, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v16, v17, v18, v19, 0);
      }

      v8 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_3_3();
      _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
    }

    return 0;
  }

  return accFeatureHandlers_invokeHandler(a1, 29, a2);
}

void platform_externalAccessory_addEAAccessoryForEAEndpoints_cold_3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "platform_externalAccessory_addEAAccessoryForEAEndpoints: endpointUUIDs: %@, primaryEndpointUUID: %@", &v3, 0x16u);
}

void platform_externalAccessory_removeEAAccessoryForPrimaryEndpoint_cold_2(void *a1, NSObject *a2)
{
  v3 = [a1 primaryEndpointUUID];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Removing accessory primaryEndpointUUID %@", &v4, 0xCu);
}

void platform_externalAccessory_notifyClientsOOBBTPairingCompletionStatus_cold_6(unsigned __int8 a1, int a2, os_log_t log)
{
  v3 = 136315906;
  v4 = "platform_externalAccessory_notifyClientsOOBBTPairingCompletionStatus";
  v5 = 1024;
  v6 = a1;
  v7 = 1024;
  v8 = a2;
  v9 = 2112;
  v10 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "ERROR: %s: result=%d connectionID=%u macAddr=%@, invalid macAddr! skip update!", &v3, 0x22u);
}

void platform_externalAccessory_notifyClientsOOBBTPairingCompletionStatus_cold_8(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "platform_externalAccessory_notifyClientsOOBBTPairingCompletionStatus";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s Couldn't find EA accessory to notify with primary endpointUUID %@", &v2, 0x16u);
}

void _sendUpdateForUUID_cold_2(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[#Device Notifications] Sending update for notification type: %{coreacc:ACCDeviceNotification_t}d to endpoint %@...", v3, 0x12u);
}

uint64_t acc_protocolParser_iAP1_create(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x10100408DD85393uLL);
  *a1 = v2;
  if (!v2)
  {
    return 0;
  }

  *v2 = 0;
  v2[2] = 0;
  *(v2 + 1) = 0;
  v2[8] = 0;
  v3 = 1;
  *(v2 + 18) = 0;
  return v3;
}

BOOL acc_protocolParser_iAP1_reset(uint64_t a1)
{
  if (a1)
  {
    *a1 = 0;
    *(a1 + 4) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 18) = 0;
  }

  return a1 != 0;
}

void acc_protocolParser_iAP1_run_cold_14(unsigned __int16 *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "iAP1 Payload Length: %d", v3, 8u);
}

uint64_t loggingProtocol_handleMessage(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  if (a1 && a3)
  {
    LODWORD(v6) = a2;
    v8 = *(a3 + 8);
    if (v8 != 2)
    {
      if (v8 == 1)
      {
        return 1;
      }

      if (!v8 && a2 >= 2 && __rev16(*a1) == 2)
      {
        if (a2 >= 5)
        {
          if (*(a1 + 4) == 1)
          {
            CurrentTimeInNanoseconds = loggingProtocol_getCurrentTimeInNanoseconds();
            if (v6 >= 0x1E)
            {
              v10 = 0;
              v11 = *(a1 + 29);
              if (!*(a1 + 29))
              {
                v12 = 0;
                v13 = 0;
                goto LABEL_167;
              }

              v12 = 0;
              v13 = 0;
              if (v11 + 30 > v6)
              {
LABEL_167:
                free(v10);
                free(v12);
                free(v13);
                return 0;
              }

              v14 = CurrentTimeInNanoseconds;
              v15 = *(a1 + 5);
              *v219 = *(a1 + 13);
              v10 = strndup(a1 + 30, v11 - 1);
              v16 = v11 + 30;
              if (v11 + 30 < v6)
              {
                v12 = 0;
                v17 = *(a1 + v16);
                if (!*(a1 + v16) || (v18 = v11 + 31, v17 + v18 > v6))
                {
                  v13 = 0;
                  goto LABEL_167;
                }

                v12 = strndup(a1 + v18, v17 - 1);
                v19 = v18 + v17;
                if (v18 + v17 < v6)
                {
                  v13 = 0;
                  v20 = *(a1 + v19);
                  if (*(a1 + v19))
                  {
                    v21 = v19 + 1;
                    if (v20 + v19 + 1 <= v6)
                    {
                      v22 = strndup(a1 + v21, v20 - 1);
                      v13 = v22;
                      if (v21 + v20 == v6 && v10 && v12 && v22)
                      {
                        *(a3 + 40) = v14;
                        *(a3 + 48) = bswap64(v15);
                        *(a3 + 56) = 1;
                        *(a3 + 57) = *v219;
                        free(*(a3 + 80));
                        *(a3 + 80) = v10;
                        free(*(a3 + 96));
                        *(a3 + 96) = v12;
                        free(*(a3 + 88));
                        *(a3 + 88) = v13;
                        v222 = 1;
                        v23 = gLogObjects;
                        v24 = gNumLogObjects;
                        if (!gLogObjects)
                        {
                          goto LABEL_43;
                        }

                        if (gNumLogObjects >= 53)
                        {
                          v25 = *(gLogObjects + 416);
                        }

                        else
                        {
LABEL_43:
                          v25 = &_os_log_default;
                          if (OUTLINED_FUNCTION_17())
                          {
                            *__s2 = 134218240;
                            *&__s2[4] = v23;
                            *&__s2[12] = 1024;
                            *&__s2[14] = v24;
                            OUTLINED_FUNCTION_4_21();
                            _os_log_error_impl(v112, v113, v114, v115, v116, v117);
                          }
                        }

                        if (OUTLINED_FUNCTION_75_0())
                        {
                          *__s2 = 136315394;
                          *&__s2[4] = v10;
                          *&__s2[12] = 1024;
                          *&__s2[14] = 1;
                          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Logging Protocol Session Sync Received. AccessoryName: %s, Protocol Version: %d", __s2, 0x12u);
                        }

                        if (loggingProtocol_sendMessage(3, &v222, a3))
                        {
                          *(a3 + 8) = 1;
                        }

                        v41 = *(a3 + 32);
                        if (v41)
                        {
                          if (*v41)
                          {
                            EndpointWithUUID = acc_manager_getEndpointWithUUID(*v41);
                            if (EndpointWithUUID)
                            {
                              v43 = EndpointWithUUID[7];
                              if (v43)
                              {
                                v44 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v43 + 24));
                                *(v41 + 72) = v44;
                                *handler = _NSConcreteStackBlock;
                                *&handler[8] = 0x40000000;
                                *&handler[16] = __handleMessage_sessionSync_block_invoke;
                                *&handler[24] = &__block_descriptor_tmp_6;
                                *&handler[32] = a3;
                                dispatch_source_set_event_handler(v44, handler);
                                v45 = *(v41 + 72);
                                v46 = dispatch_time(0, 5000000000);
                                dispatch_source_set_timer(v45, v46, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
                                dispatch_activate(*(v41 + 72));
                                iap2_sessionLog_writeSessionSyncToFile(a3);
                                return 1;
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  goto LABEL_167;
                }

                goto LABEL_166;
              }

LABEL_165:
              v12 = 0;
LABEL_166:
              v13 = 0;
              goto LABEL_167;
            }
          }

          else
          {
            __s2[0] = 1;
            loggingProtocol_sendMessage(3, __s2, a3);
          }
        }

        v10 = 0;
        goto LABEL_165;
      }

      return 0;
    }

    if (a2 < 2)
    {
      return 0;
    }

    v4 = 0;
    switch(__rev16(*a1))
    {
      case 0u:
        *&handler[48] = 0xAAAAAAAAAAAAAAAALL;
        *&v26 = 0xAAAAAAAAAAAAAAAALL;
        *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&handler[16] = v26;
        *&handler[32] = v26;
        *handler = v26;
        if ((a2 - 513) < 0xFE07u)
        {
          goto LABEL_162;
        }

        v27 = bswap32(*(a1 + 1));
        v28 = *(a3 + 32);
        v30 = *(v28 + 16);
        v29 = *(v28 + 20);
        if (v30 == v29 || v27 - v30 > v29 + ~v30)
        {
          v108 = 0;
          v39 = 0;
          v40 = 0;
          goto LABEL_146;
        }

        if (a2 <= 0x10 || ((v32 = *(a1 + 16), a2 >= 0x12) ? (v33 = v32 > 1) : (v33 = 1), v33 || (v34 = *(a1 + 17), v34 + 18 > a2)))
        {
LABEL_162:
          v108 = 0;
          v39 = 0;
          v40 = 0;
          v4 = 0;
        }

        else
        {
          v35 = *(a1 + 1);
          v220 = strndup(a1 + 18, v34 - 1);
          v36 = v34 + 19;
          if (v34 + 19 > v6 || (v37 = *(a1 + v34 + 18), v38 = v36 + v37, v36 + v37 > v6))
          {
            v39 = 0;
            v40 = 0;
            v4 = 0;
            v108 = v220;
          }

          else
          {
            v39 = strndup(a1 + v36, v37 - 1);
            if (v38 >= v6)
            {
              v40 = 0;
            }

            else
            {
              v40 = strndup(a1 + v38, (v6 - v38) - 1);
            }

            v4 = 0;
            v108 = v220;
            if (v220 && v39)
            {
              v109 = *(a3 + 40) + bswap64(v35) - *(a3 + 48);
              *handler = v27;
              *&handler[8] = v109;
              *&handler[16] = v32;
              handler[20] = v34;
              *&handler[24] = v220;
              handler[32] = v37;
              *&handler[40] = v39;
              *&handler[48] = v40;
              iap2_sessionLog_writeLogEntryToFile(handler, a3);
LABEL_146:
              v4 = 1;
            }
          }
        }

        free(v108);
        free(v39);
        v110 = v40;
        goto LABEL_152;
      case 1u:
        *__s2 = 0;
        *&__s2[8] = 0;
        *&handler[32] = 0xAAAAAAAAAAAAAAAALL;
        *&v56 = 0xAAAAAAAAAAAAAAAALL;
        *(&v56 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *handler = v56;
        *&handler[16] = v56;
        if (!memcmp((a3 + 57), __s2, 0x10uLL))
        {
          goto LABEL_130;
        }

        if ((v6 - 513) < 0xFE07u)
        {
          goto LABEL_195;
        }

        v57 = bswap32(*(a1 + 1));
        v58 = *(a3 + 32);
        v60 = *(v58 + 16);
        v59 = *(v58 + 20);
        if (v60 == v59 || v57 - v60 > v59 + ~v60)
        {
          goto LABEL_130;
        }

        if (v6 <= 0x10)
        {
          goto LABEL_195;
        }

        v62 = *(a1 + 16);
        if (v6 < 0x15 || v62 > 1)
        {
          goto LABEL_195;
        }

        if (v6 == 21)
        {
          goto LABEL_195;
        }

        v64 = *(a1 + 21);
        if (8 * v64 + 22 != v6)
        {
          goto LABEL_195;
        }

        v65 = *(a1 + 1);
        v66 = *(a1 + 17);
        if (*(a1 + 21))
        {
          v67 = malloc_type_malloc(8 * v64, 0x6A504332uLL);
          v68 = v67;
          if (!v67)
          {
            goto LABEL_196;
          }

          v69 = 0;
          v70 = 11;
          do
          {
            *&v67[v69] = bswap64(*&a1[v70]);
            v70 += 4;
            v69 += 8;
          }

          while (8 * v64 != v69);
        }

        else
        {
          v68 = 0;
        }

        v111 = *(a3 + 40) + bswap64(v65) - *(a3 + 48);
        *handler = v57;
        *&handler[8] = v111;
        *&handler[16] = v62;
        *&handler[20] = bswap32(v66);
        handler[24] = v64;
        *&handler[32] = v68;
        iap2_sessionLog_writeIndexBasedLogEntryToFile(handler, a3);
        goto LABEL_150;
      case 6u:
        if (a2 != 12)
        {
          return 0;
        }

        v93 = bswap32(*(a1 + 1));
        v94 = bswap32(*(a1 + 2));
        v95 = v94 + 1;
        v96 = *(a3 + 32);
        v97 = *(v96 + 36);
        if (v94 + 1 != *(v96 + 40) || ((v98 = v94 - v97, v93 != v97) ? (v99 = v93 - v97 > v98) : (v99 = 1), v99))
        {
          *(v96 + 9) = 1;
        }

        *(v96 + 32) = v97;
        *(v96 + 36) = v93;
        *(v96 + 40) = v95;
        logFetcher_processAvailabilityUpdate(a3);
        return 1;
      case 8u:
        logFetcher_performFetch(a3);
        return 1;
      case 9u:
        if (*(a3 + 112) == 1)
        {
          v175 = logObjectForModule_18();
          if (!OUTLINED_FUNCTION_16(v175))
          {
            return 0;
          }

          *handler = 136315394;
          OUTLINED_FUNCTION_0_12();
          *&handler[14] = 0;
          goto LABEL_204;
        }

        OUTLINED_FUNCTION_7_10();
        if (!v47)
        {
          v179 = logObjectForModule_18();
          if (!OUTLINED_FUNCTION_16(v179))
          {
            return 0;
          }

          goto LABEL_185;
        }

        OUTLINED_FUNCTION_10_12();
        if (v48 || !v47)
        {
          v191 = logObjectForModule_18();
          if (!OUTLINED_FUNCTION_16(v191))
          {
            return 0;
          }

          goto LABEL_203;
        }

        v49 = *(a1 + 28);
        if (*(a1 + 28))
        {
          v206 = logObjectForModule_18();
          if (!OUTLINED_FUNCTION_16(v206))
          {
            return 0;
          }

          *handler = 136315138;
          *&handler[4] = "handleMessage_binaryLogNotification";
          goto LABEL_211;
        }

        v100 = *(a1 + 1);
        v101 = *(a1 + 6);
        v102 = *(a1 + 10);
        v103 = gLogObjects;
        v104 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 53)
        {
          v105 = *(gLogObjects + 416);
        }

        else if (OUTLINED_FUNCTION_17())
        {
          *handler = 134218240;
          *&handler[4] = v103;
          OUTLINED_FUNCTION_49_2();
          *&handler[14] = v104;
          OUTLINED_FUNCTION_1_17();
          _os_log_error_impl(v143, v144, v145, v146, v147, 0x12u);
        }

        v106 = bswap32(v100);
        if (OUTLINED_FUNCTION_75_0())
        {
          goto LABEL_153;
        }

        goto LABEL_134;
      case 0xBu:
        if (*(a3 + 104))
        {
          OUTLINED_FUNCTION_7_10();
          if (!v47)
          {
            v176 = logObjectForModule_18();
            if (!OUTLINED_FUNCTION_16(v176))
            {
              return 0;
            }

LABEL_185:
            *handler = 136315394;
            OUTLINED_FUNCTION_0_12();
            *&handler[14] = v6;
            goto LABEL_204;
          }

          OUTLINED_FUNCTION_10_12();
          if (v48 || !v47)
          {
            v181 = logObjectForModule_18();
            if (!OUTLINED_FUNCTION_16(v181))
            {
              return 0;
            }

LABEL_203:
            *handler = 136315394;
            OUTLINED_FUNCTION_0_12();
            *&handler[14] = v3;
LABEL_204:
            OUTLINED_FUNCTION_4_21();
LABEL_212:
            _os_log_error_impl(v193, v194, v195, v196, v197, v198);
            return 0;
          }

          v49 = *(a1 + 28);
          if (*(a3 + 108) == v49)
          {
            v50 = *(a1 + 1);
            v51 = *(a1 + 6);
            v52 = *(a1 + 10);
            v53 = gLogObjects;
            v54 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 53)
            {
              v55 = *(gLogObjects + 416);
            }

            else if (OUTLINED_FUNCTION_17())
            {
              *handler = 134218240;
              *&handler[4] = v53;
              OUTLINED_FUNCTION_49_2();
              *&handler[14] = v54;
              OUTLINED_FUNCTION_1_17();
              _os_log_error_impl(v133, v134, v135, v136, v137, 0x12u);
            }

            v106 = bswap32(v50);
            if (OUTLINED_FUNCTION_75_0())
            {
LABEL_153:
              OUTLINED_FUNCTION_5_19();
              OUTLINED_FUNCTION_6_16();
              _os_log_debug_impl(v122, v123, OS_LOG_TYPE_DEBUG, v124, v125, 0x28u);
            }

LABEL_134:
            sendMessage_requestBinaryLogFileInfo(a3, v106, v49);
            return 1;
          }

          v199 = logObjectForModule_18();
          if (!OUTLINED_FUNCTION_16(v199))
          {
            return 0;
          }

          *handler = 136315138;
          *&handler[4] = "handleMessage_binaryLogAvailable";
        }

        else
        {
          v164 = logObjectForModule_18();
          if (!OUTLINED_FUNCTION_16(v164))
          {
            return 0;
          }

          *handler = 136315138;
          *&handler[4] = "handleMessage_binaryLogAvailable";
        }

LABEL_211:
        OUTLINED_FUNCTION_13_0();
        v198 = 12;
        goto LABEL_212;
      case 0xDu:
        OUTLINED_FUNCTION_7_10();
        if (!v47)
        {
          v165 = logObjectForModule_18();
          if (!OUTLINED_FUNCTION_16(v165))
          {
            goto LABEL_195;
          }

          *handler = 136315394;
          OUTLINED_FUNCTION_0_12();
          *&handler[14] = v6;
          goto LABEL_217;
        }

        v221 = bswap32(*(a1 + 1));
        if (*(a3 + 112) == 1)
        {
          sendMessage_stopBinaryLogFile(a3, v221, 2);
        }

        else
        {
          v71 = bswap32(*(a1 + 2));
          if (v71 - 524289 > 0xFFF7FFFF)
          {
            v72 = *(a1 + 6);
            v73 = *(a1 + 10);
            v74 = *(a1 + 29);
            v75 = v74 - 1;
            v76 = strndup(a1 + 30, v74 - 1);
            v68 = v76;
            v77 = *(a1 + v74 + 30);
            if (!*(a1 + v74 + 30))
            {
              v78 = bswap64(v72);
              v79 = bswap64(v73);
              *(a3 + 128) = v78;
              *(a3 + 136) = v79;
              *(a3 + 144) = v74;
              *(a3 + 152) = v76;
              *(a3 + 160) = v77;
              *(a3 + 120) = v221;
              *(a3 + 124) = v71;
              *(a3 + 116) = 0;
              *(a3 + 112) = 1;
              v80 = gLogObjects;
              v81 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 53)
              {
                v82 = *(gLogObjects + 416);
              }

              else if (OUTLINED_FUNCTION_17())
              {
                *handler = 134218240;
                *&handler[4] = v80;
                OUTLINED_FUNCTION_49_2();
                *&handler[14] = v81;
                OUTLINED_FUNCTION_1_17();
                _os_log_error_impl(v138, v139, v140, v141, v142, 0x12u);
              }

              if (OUTLINED_FUNCTION_75_0())
              {
                *handler = 67110402;
                *&handler[4] = v221;
                *&handler[8] = 1024;
                *&handler[10] = v71;
                *&handler[14] = 2048;
                *&handler[16] = v78;
                *&handler[24] = 2048;
                *&handler[26] = v79;
                *&handler[34] = 1024;
                *&handler[36] = v77;
                *&handler[40] = 2080;
                *&handler[42] = v68;
                OUTLINED_FUNCTION_6_16();
                _os_log_debug_impl(v118, v119, OS_LOG_TYPE_DEBUG, v120, v121, 0x32u);
              }

              writeMessage_binaryBlock(v68, v75);
              sendMessage_requestBinaryLogSegment(a3, v221, 0);
LABEL_130:
              v68 = 0;
LABEL_150:
              v4 = 1;
LABEL_151:
              v110 = v68;
LABEL_152:
              free(v110);
              return v4;
            }

            v200 = logObjectForModule_18();
            if (OUTLINED_FUNCTION_16(v200))
            {
              *handler = 136315138;
              *&handler[4] = "handleMessage_binaryLogFileInfo";
              OUTLINED_FUNCTION_13_0();
              _os_log_error_impl(v201, v202, v203, v204, v205, 0xCu);
            }

LABEL_196:
            v4 = 0;
            goto LABEL_151;
          }

          v183 = logObjectForModule_18();
          if (OUTLINED_FUNCTION_16(v183))
          {
            *handler = 136315394;
            OUTLINED_FUNCTION_0_12();
            *&handler[14] = v71;
LABEL_217:
            OUTLINED_FUNCTION_4_21();
            _os_log_error_impl(v213, v214, v215, v216, v217, v218);
          }
        }

LABEL_195:
        v68 = 0;
        goto LABEL_196;
      case 0x10u:
        OUTLINED_FUNCTION_7_10();
        if (!v47)
        {
          v167 = logObjectForModule_18();
          if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
          {
            *handler = 136315394;
            OUTLINED_FUNCTION_0_12();
            *&handler[14] = v6;
            OUTLINED_FUNCTION_4_21();
            _os_log_error_impl(v169, v170, v171, v172, v173, v174);
          }

          v83 = 0;
          goto LABEL_200;
        }

        v83 = bswap32(*(a1 + 1));
        if (v83 == *(a3 + 120))
        {
          if (*(a3 + 112))
          {
            v6 = bswap32(*(a1 + 3));
            if (v6)
            {
              v84 = *(a3 + 124);
              v85 = *(a3 + 116);
              v47 = v84 >= v85;
              v86 = v84 - v85;
              if (v86 != 0 && v47 && v6 <= v86)
              {
                *(a3 + 116) = v85 + v6;
                v88 = malloc_type_malloc(v6, 0xB2E00847uLL);
                if (v88)
                {
                  v89 = v88;
                  memcpy(v88, a1 + 8, v6);
                  v90 = gLogObjects;
                  v91 = gNumLogObjects;
                  if (gLogObjects && gNumLogObjects >= 53)
                  {
                    v92 = *(gLogObjects + 416);
                  }

                  else if (OUTLINED_FUNCTION_17())
                  {
                    *handler = 134218240;
                    *&handler[4] = v90;
                    OUTLINED_FUNCTION_49_2();
                    *&handler[14] = v91;
                    OUTLINED_FUNCTION_1_17();
                    _os_log_error_impl(v148, v149, v150, v151, v152, 0x12u);
                  }

                  if (OUTLINED_FUNCTION_75_0())
                  {
                    *handler = 67109378;
                    *&handler[4] = v83;
                    *&handler[8] = 2080;
                    *&handler[10] = v89;
                    OUTLINED_FUNCTION_6_16();
                    _os_log_debug_impl(v126, v127, OS_LOG_TYPE_DEBUG, v128, v129, 0x12u);
                  }

                  writeMessage_binaryBlock(v89, v6);
                  v107 = *(a3 + 116);
                  if (v107 == *(a3 + 124))
                  {
                    v130 = gLogObjects;
                    v131 = gNumLogObjects;
                    if (gLogObjects && gNumLogObjects >= 53)
                    {
                      v132 = *(gLogObjects + 416);
                    }

                    else if (OUTLINED_FUNCTION_17())
                    {
                      *handler = 134218240;
                      *&handler[4] = v130;
                      OUTLINED_FUNCTION_49_2();
                      *&handler[14] = v131;
                      OUTLINED_FUNCTION_1_17();
                      _os_log_error_impl(v153, v154, v155, v156, v157, 0x12u);
                    }

                    if (OUTLINED_FUNCTION_75_0())
                    {
                      *handler = 0;
                      OUTLINED_FUNCTION_6_16();
                      _os_log_debug_impl(v158, v159, OS_LOG_TYPE_DEBUG, v160, v161, 2u);
                    }

                    sendMessage_stopBinaryLogFile(a3, v83, 0);
                  }

                  else
                  {
                    sendMessage_requestBinaryLogSegment(a3, v83, v107);
                  }

                  return 1;
                }

                v207 = logObjectForModule_18();
                if (OUTLINED_FUNCTION_13_9(v207))
                {
                  *handler = 136315138;
                  *&handler[4] = "handleMessage_binaryLogSegment";
                  OUTLINED_FUNCTION_1_17();
                  _os_log_error_impl(v208, v209, v210, v211, v212, 0xCu);
                }

                v190 = 2;
LABEL_201:
                sendMessage_stopBinaryLogFile(a3, v83, v190);
                return 0;
              }
            }

            v163 = logObjectForModule_18();
            if (OUTLINED_FUNCTION_13_9(v163))
            {
              goto LABEL_172;
            }
          }

          else
          {
            v184 = logObjectForModule_18();
            if (OUTLINED_FUNCTION_13_9(v184))
            {
              *handler = 136315394;
              OUTLINED_FUNCTION_0_12();
              *&handler[14] = v83;
              goto LABEL_199;
            }
          }
        }

        else
        {
          v178 = logObjectForModule_18();
          if (OUTLINED_FUNCTION_13_9(v178))
          {
LABEL_172:
            *handler = 136315394;
            OUTLINED_FUNCTION_0_12();
            *&handler[14] = v6;
LABEL_199:
            OUTLINED_FUNCTION_1_17();
            _os_log_error_impl(v185, v186, v187, v188, v189, 0x12u);
          }
        }

LABEL_200:
        v190 = 1;
        goto LABEL_201;
      default:
        return v4;
    }
  }

  return v4;
}

uint64_t loggingProtocol_requestAccessoryLogs(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    *(a2 + 104) = 1;
    *(a2 + 108) = result;
    v13 = xmmword_1001C3A90;
    LODWORD(v13) = result;
    v14 = -1;
    v4 = gLogObjects;
    v5 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 53)
    {
      v6 = *(gLogObjects + 416);
    }

    else
    {
      v6 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        *buf = 134218240;
        *v16 = v4;
        *&v16[8] = 1024;
        *&v16[10] = v5;
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v7, v8, v9, v10, v11, v12);
      }
    }

    if (OUTLINED_FUNCTION_75_0())
    {
      *buf = 67109632;
      *v16 = v3;
      *&v16[4] = 2048;
      *&v16[6] = 0;
      v17 = 2048;
      v18 = -1;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Sending RequestBinaryLogAvailable. LogPriority: %u, TimeStampStart: %llu, TimeStampEnd: %llu", buf, 0x1Cu);
    }

    return loggingProtocol_sendMessage(10, &v13, a2);
  }

  return result;
}

uint64_t sendMessage_stopBinaryLogFile(uint64_t result, int a2, int a3)
{
  if (result)
  {
    v5 = result;
    *(result + 112) = 0;
    *(result + 104) = 0;
    *(result + 116) = 0;
    v15[0] = a2;
    v15[1] = a3;
    v6 = gLogObjects;
    v7 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 53)
    {
      v8 = *(gLogObjects + 416);
    }

    else
    {
      v8 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v17 = v6;
        *&v17[8] = 1024;
        v18 = v7;
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v9, v10, v11, v12, v13, v14);
      }
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *v17 = a2;
      *&v17[4] = 1024;
      *&v17[6] = a3;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Sending StopBinaryLogFile. LogFileID: %u, Status: %u", buf, 0xEu);
    }

    return loggingProtocol_sendMessage(14, v15, v5);
  }

  return result;
}

void logObjectForModule_cold_1_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_21();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sendMessage_requestBinaryLogFileInfo_cold_2(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Sending RequestBinaryLogFileInfo. LogFileID: %u, FilePriority: %u", v3, 0xEu);
}

void writeMessage_binaryBlock_cold_1()
{
  v0 = logObjectForModule_18();
  if (OUTLINED_FUNCTION_16(v0))
  {
    OUTLINED_FUNCTION_13_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void writeMessage_binaryBlock_cold_2()
{
  v0 = logObjectForModule_18();
  if (OUTLINED_FUNCTION_16(v0))
  {
    OUTLINED_FUNCTION_13_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void __acc_auth_protocol_handleCertificateHash_cold_2(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_2_25(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x14u);
}

void __acc_auth_protocol_handleCertificateHash_cold_4(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_2_25(a1, __stack_chk_guard);
  v2 = 136315906;
  v3 = "__acc_auth_protocol_handleCertificateHash";
  v4 = 1024;
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "[AccAuth][1Way] %s:%d sessionID %d, role %d, call __acc_auth_protocol_handleCertificateCommon \n", &v2, 0x1Eu);
}

void __acc_auth_protocol_handleCertificate_cold_3(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_2_25(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_14_6();
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "[AccAuth][1Way] handleCertificate: sessionID %d, role %d, first segment, init for segmented received. \n", v2, 0xEu);
}

void __acc_auth_protocol_handleCertificateChainCert_cold_3(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_2_25(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_14_6();
  v4 = v1;
  v5 = 0;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[AccAuth][1Way] handleCertificateChainCert: sessionID %d, role %d, first segment(=%d), init for segmented received. \n", v3, 0x14u);
}

void __acc_auth_protocol_handleResponse_cold_2(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_2_25(a1, __stack_chk_guard);
  v2 = *(v1 + 2);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x14u);
}

void __acc_auth_protocol_handleResponse_cold_5(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_2_25(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Au);
}

void __acc_auth_protocol_sendCertChainRequestOrChallenge_cold_4(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_2_25(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x24u);
}

void *ea_control_openSessionHandler(void *result, CFDictionaryRef theDict)
{
  if (result)
  {
    v2 = result;
    result = 0;
    if (theDict)
    {
      if (*v2)
      {
        result = CFDictionaryGetValue(theDict, kCFACCExternalAccessorySessionUUIDKey);
        if (result)
        {
          v3 = result;
          if (gLogObjects && gNumLogObjects >= 54)
          {
            v4 = *(gLogObjects + 424);
          }

          else
          {
            v4 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_16_0();
              OUTLINED_FUNCTION_6_0();
              _os_log_error_impl(v11, v12, OS_LOG_TYPE_ERROR, v13, v14, 0x12u);
            }
          }

          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            v5 = *(*v2 + 16);
            OUTLINED_FUNCTION_1_18();
            OUTLINED_FUNCTION_6_0();
            _os_log_impl(v6, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 0x16u);
          }

          v10 = acc_endpoint_setProperty(*v2, kCFACCProperties_Endpoint_EA_SessionUUID, v3);
          return (v10 & acc_endpoint_setProperty(*v2, kCFACCProperties_Endpoint_EA_SessionOpen, kCFBooleanTrue));
        }
      }
    }
  }

  return result;
}

void *ea_control_closeSessionHandler(void *result, CFDictionaryRef theDict)
{
  if (result)
  {
    v2 = result;
    if (*result)
    {
      result = CFDictionaryGetValue(theDict, kCFACCExternalAccessorySessionUUIDKey);
      if (result)
      {
        if (gLogObjects && gNumLogObjects >= 54)
        {
          v3 = *(gLogObjects + 424);
        }

        else
        {
          v3 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_6_0();
            _os_log_error_impl(v9, v10, OS_LOG_TYPE_ERROR, v11, v12, 0x12u);
          }
        }

        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v4 = *(*v2 + 16);
          OUTLINED_FUNCTION_1_18();
          OUTLINED_FUNCTION_6_0();
          _os_log_impl(v5, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 0x16u);
        }

        return acc_endpoint_setProperty(*v2, kCFACCProperties_Endpoint_EA_SessionOpen, kCFBooleanFalse);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t iap2_CarPlayStartSession(CFStringRef a1, uint64_t a2)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v5 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v6 = 0;
  v7 = 0;
  v242 = a1;
  if (!a1)
  {
    v8 = OUTLINED_FUNCTION_13_10();
    goto LABEL_104;
  }

  v8 = OUTLINED_FUNCTION_13_10();
  if (!a2)
  {
    goto LABEL_104;
  }

  if (iAP2MsgGetMsgID(a2) != 17153)
  {
    v7 = 0;
    a1 = 0;
    v245 = 0;
    v246 = 0;
    v248 = 0;
    v249 = 0;
    cf = 0;
    v253 = 0;
    v8 = 0;
    v6 = 0;
    goto LABEL_104;
  }

  OUTLINED_FUNCTION_44_3();
  v9 = *(a1->isa + 6);
  theArray = Mutable;
  v247 = v5;
  if (v9 > 8)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_1001C3AC8[v9];
  }

  CFAbsoluteTimeGetCurrent();
  platform_CarPlay_sendConnectionEvent(4, v10);
  v11 = gLogObjects;
  v12 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 52)
  {
    v13 = *(gLogObjects + 408);
  }

  else
  {
    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v261 = v11;
      *&v261[8] = 1024;
      LODWORD(v262) = v12;
      OUTLINED_FUNCTION_19_8();
      OUTLINED_FUNCTION_10(v200, v201, v202, v203, v204);
    }
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v261 = 17153;
    OUTLINED_FUNCTION_19_8();
    _os_log_impl(v14, v15, OS_LOG_TYPE_DEFAULT, v16, v17, 8u);
  }

  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  v259 = -1431655766;
  if (!FirstParam)
  {
    v243 = 0;
    v244 = 0;
    v255 = 0;
    v256 = 0;
    v245 = 0;
    v246 = 0;
    v248 = 0;
    v249 = 0;
    v250 = 0;
    v251 = 0;
    cf = 0;
    v253 = 0;
LABEL_96:
    v188 = platform_externalAccesory_legacyConnectionUUIDForPrimaryEndpointUUID(*(v242 + 8));
    v189 = gLogObjects;
    v190 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 52)
    {
      v191 = *(gLogObjects + 408);
      Mutable = theArray;
      v192 = v246;
      v5 = v247;
      v193 = v245;
    }

    else
    {
      v191 = &_os_log_default;
      Mutable = theArray;
      v192 = v246;
      v5 = v247;
      v193 = v245;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v261 = v189;
        *&v261[8] = 1024;
        LODWORD(v262) = v190;
        OUTLINED_FUNCTION_19_8();
        OUTLINED_FUNCTION_10(v205, v206, v207, v208, v209);
      }
    }

    v7 = v255;
    if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138415618;
      *v261 = Mutable;
      *&v261[8] = 2112;
      v262 = v5;
      v263 = 2112;
      v264 = cf;
      v265 = 2112;
      v266 = v251;
      v267 = 2112;
      v268 = v253;
      v269 = 2112;
      v270 = v250;
      v271 = 2112;
      v272 = v244;
      v273 = 2112;
      v274 = v248;
      v275 = 2112;
      v276 = v249;
      v277 = 2112;
      v278 = v193;
      v279 = 2112;
      v280 = v192;
      v281 = 2112;
      v282 = v256;
      v283 = 2112;
      v284 = v255;
      v285 = 2112;
      v286 = v243;
      OUTLINED_FUNCTION_19_8();
      _os_log_impl(v194, v195, OS_LOG_TYPE_DEFAULT, v196, v197, 0x8Eu);
    }

    a1 = v256;
    platform_CarPlay_startSession(v188, Mutable, v5, cf, v251, v253, v250, v244, v248, v249, v193, v192, v256, v255, v243);
    v8 = v251;
    v6 = 1;
    goto LABEL_104;
  }

  v20 = FirstParam;
  v251 = 0;
  cf = 0;
  v253 = 0;
  v249 = 0;
  v250 = 0;
  v244 = 0;
  v245 = 0;
  v248 = 0;
  v246 = 0;
  v255 = 0;
  v256 = 0;
  v243 = 0;
  v241 = kCFBooleanTrue;
  v240 = kCFBooleanFalse;
  *&v19 = 67109120;
  v257 = v19;
  *&v19 = 134218240;
  v238 = v19;
  while (2)
  {
    ParamID = iAP2MsgGetParamID(v20);
    switch(ParamID)
    {
      case 0:
        v22 = OUTLINED_FUNCTION_10_13();
        v24 = iAP2MsgGetFirstParam(v22, v23);
        if (!v24)
        {
          goto LABEL_93;
        }

        NextParam = v24;
        while (2)
        {
          if (iAP2MsgGetParamID(NextParam))
          {
            if (gLogObjects && gNumLogObjects >= 52)
            {
              v26 = *(gLogObjects + 408);
            }

            else
            {
              v32 = OUTLINED_FUNCTION_59();
              v26 = &_os_log_default;
              if (v32)
              {
                OUTLINED_FUNCTION_0_13(v32, v33, v34, v35, v36, v37, v38, v39, v230, v231, v232, v233, v234, v235, v236, v237, v238);
                OUTLINED_FUNCTION_36_3();
                _os_log_error_impl(v51, v52, v53, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v54, 0x12u);
                v26 = &_os_log_default;
              }
            }

            v40 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
            if (v40)
            {
              OUTLINED_FUNCTION_6_17(v40, v41, v42, v43, v44, v45, v46, v47, v230, v231, v232, v233, v234, v235, v236, v237, v238, *(&v238 + 1), v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, cf, v253, theArray, v255, v256, v257);
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Unrecognized USB group paramID:0x%04X", v48, 8u);
            }

            goto LABEL_30;
          }

          v27 = OUTLINED_FUNCTION_7_11();
          DataAsString = iAP2MsgGetDataAsString(v27, v28);
          if (!v259)
          {
            v30 = OUTLINED_FUNCTION_4_22(DataAsString);
            if (v30)
            {
              v31 = v30;
              CFArrayAppendValue(theArray, v30);
              CFRelease(v31);
            }

LABEL_30:
            v49 = OUTLINED_FUNCTION_10_13();
            NextParam = iAP2MsgGetNextParam(v49, v50, NextParam);
            if (!NextParam)
            {
              goto LABEL_93;
            }

            continue;
          }

          break;
        }

        v210 = logObjectForModule_8();
        if (!OUTLINED_FUNCTION_16(v210))
        {
          goto LABEL_156;
        }

        iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_5_20();
        *&v261[6] = 0;
        LOWORD(v262) = v211;
        *(&v262 + 2) = v212;
        v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
        goto LABEL_143;
      case 1:
        v114 = OUTLINED_FUNCTION_10_13();
        v116 = iAP2MsgGetFirstParam(v114, v115);
        if (!v116)
        {
          goto LABEL_93;
        }

        NextParam = v116;
        while (2)
        {
          switch(iAP2MsgGetParamID(NextParam))
          {
            case 0u:
              v117 = OUTLINED_FUNCTION_7_11();
              v119 = iAP2MsgGetDataAsString(v117, v118);
              if (!v259)
              {
                cf = OUTLINED_FUNCTION_4_22(v119);
                goto LABEL_76;
              }

              v217 = logObjectForModule_8();
              if (!OUTLINED_FUNCTION_16(v217))
              {
                goto LABEL_156;
              }

              iAP2MsgGetMsgID(a2);
              *buf = 67109632;
              *v261 = 0;
              OUTLINED_FUNCTION_2_26();
              v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
              goto LABEL_143;
            case 1u:
              v138 = OUTLINED_FUNCTION_7_11();
              v140 = iAP2MsgGetDataAsString(v138, v139);
              if (!v259)
              {
                v251 = OUTLINED_FUNCTION_4_22(v140);
                goto LABEL_76;
              }

              v218 = logObjectForModule_8();
              if (!OUTLINED_FUNCTION_16(v218))
              {
                goto LABEL_156;
              }

              MsgID = iAP2MsgGetMsgID(a2);
              *buf = 67109632;
              *v261 = 1;
              *&v261[4] = 1024;
              *&v261[6] = 1;
              LOWORD(v262) = 1024;
              *(&v262 + 2) = MsgID;
              v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
              break;
            case 2u:
              v122 = OUTLINED_FUNCTION_7_11();
              iAP2MsgGetDataAsU8(v122, v123);
              OUTLINED_FUNCTION_11_9();
              if (!v132)
              {
                v250 = OUTLINED_FUNCTION_15_10(v124, v125, v126, v127, v128, v129, v130, v131, v230, v231, v232, v233, v234, v235, v236, v237, v238, *(&v238 + 1), v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, cf, v253, theArray, v255, v256, v257, *(&v257 + 1), valuePtr[0]);
                goto LABEL_76;
              }

              v216 = logObjectForModule_8();
              if (!OUTLINED_FUNCTION_16(v216))
              {
                goto LABEL_156;
              }

              iAP2MsgGetMsgID(a2);
              *buf = 67109632;
              *v261 = 2;
              OUTLINED_FUNCTION_2_26();
              v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
              goto LABEL_143;
            case 3u:
              v133 = OUTLINED_FUNCTION_7_11();
              v135 = iAP2MsgGetDataAsString(v133, v134);
              if (!v259)
              {
                v136 = OUTLINED_FUNCTION_4_22(v135);
                if (v136)
                {
                  v137 = v136;
                  CFArrayAppendValue(v247, v136);
                  CFRelease(v137);
                }

LABEL_76:
                v159 = OUTLINED_FUNCTION_10_13();
                NextParam = iAP2MsgGetNextParam(v159, v160, NextParam);
                if (!NextParam)
                {
                  goto LABEL_93;
                }

                continue;
              }

              v221 = logObjectForModule_8();
              if (!OUTLINED_FUNCTION_16(v221))
              {
                goto LABEL_156;
              }

              iAP2MsgGetMsgID(a2);
              *buf = 67109632;
              *v261 = 3;
              OUTLINED_FUNCTION_2_26();
              v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
              break;
            case 4u:
              v120 = OUTLINED_FUNCTION_7_11();
              valuePtr[0] = iAP2MsgGetDataAsU8(v120, v121);
              if (!v259)
              {
                v253 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, valuePtr);
                goto LABEL_76;
              }

              v220 = logObjectForModule_8();
              if (!OUTLINED_FUNCTION_16(v220))
              {
                goto LABEL_156;
              }

              iAP2MsgGetMsgID(a2);
              *buf = 67109632;
              *v261 = 4;
              OUTLINED_FUNCTION_2_26();
              v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
              goto LABEL_143;
            default:
              if (gLogObjects && gNumLogObjects >= 52)
              {
                v141 = *(gLogObjects + 408);
              }

              else
              {
                v142 = OUTLINED_FUNCTION_59();
                v141 = &_os_log_default;
                if (v142)
                {
                  OUTLINED_FUNCTION_0_13(v142, v143, v144, v145, v146, v147, v148, v149, v230, v231, v232, v233, v234, v235, v236, v237, v238);
                  OUTLINED_FUNCTION_36_3();
                  _os_log_error_impl(v161, v162, v163, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v164, 0x12u);
                  v141 = &_os_log_default;
                }
              }

              v150 = os_log_type_enabled(v141, OS_LOG_TYPE_INFO);
              if (v150)
              {
                OUTLINED_FUNCTION_6_17(v150, v151, v152, v153, v154, v155, v156, v157, v230, v231, v232, v233, v234, v235, v236, v237, v238, *(&v238 + 1), v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, cf, v253, theArray, v255, v256, v257);
                _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_INFO, "Unrecognized Wireless group paramID:0x%04X", v158, 8u);
              }

              goto LABEL_76;
          }

          goto LABEL_143;
        }

      case 2:
        v58 = OUTLINED_FUNCTION_9_12();
        iAP2MsgGetDataAsU32(v58, v59);
        OUTLINED_FUNCTION_11_9();
        if (v68)
        {
          v224 = logObjectForModule_8();
          if (OUTLINED_FUNCTION_16(v224))
          {
            goto LABEL_159;
          }

          goto LABEL_156;
        }

        v244 = OUTLINED_FUNCTION_15_10(v60, v61, v62, v63, v64, v65, v66, v67, v230, v231, v232, v233, v234, v235, v236, v237, v238, *(&v238 + 1), v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, cf, v253, theArray, v255, v256, v257, *(&v257 + 1), valuePtr[0]);
        goto LABEL_93;
      case 3:
        v69 = OUTLINED_FUNCTION_9_12();
        v71 = iAP2MsgGetDataAsString(v69, v70);
        if (v259)
        {
          v228 = logObjectForModule_8();
          if (!OUTLINED_FUNCTION_16(v228))
          {
            goto LABEL_156;
          }

LABEL_159:
          iAP2MsgGetMsgID(a2);
          *buf = 67109376;
          OUTLINED_FUNCTION_1_19();
          v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
          v222 = ParamID;
          v223 = 14;
LABEL_144:
          _os_log_error_impl(&_mh_execute_header, v222, OS_LOG_TYPE_ERROR, v213, buf, v223);
          goto LABEL_156;
        }

        v248 = OUTLINED_FUNCTION_4_22(v71);
LABEL_93:
        v20 = iAP2MsgGetNextParam(a2, 0, v20);
        if (!v20)
        {
          goto LABEL_96;
        }

        continue;
      case 4:
        v55 = OUTLINED_FUNCTION_9_12();
        v57 = iAP2MsgGetDataAsString(v55, v56);
        if (v259)
        {
          v229 = logObjectForModule_8();
          if (OUTLINED_FUNCTION_16(v229))
          {
            goto LABEL_159;
          }

          goto LABEL_156;
        }

        v249 = OUTLINED_FUNCTION_4_22(v57);
        goto LABEL_93;
      case 5:
        v165 = OUTLINED_FUNCTION_9_12();
        v167 = iAP2MsgGetDataAsString(v165, v166);
        if (v259)
        {
          v225 = logObjectForModule_8();
          if (OUTLINED_FUNCTION_16(v225))
          {
            goto LABEL_159;
          }

          goto LABEL_156;
        }

        v245 = OUTLINED_FUNCTION_4_22(v167);
        goto LABEL_93;
      case 6:
        v168 = OUTLINED_FUNCTION_9_12();
        v170 = iAP2MsgGetDataAsString(v168, v169);
        if (v259)
        {
          v226 = logObjectForModule_8();
          if (OUTLINED_FUNCTION_16(v226))
          {
            goto LABEL_159;
          }

          goto LABEL_156;
        }

        v246 = OUTLINED_FUNCTION_4_22(v170);
        goto LABEL_93;
      case 7:
        v72 = OUTLINED_FUNCTION_10_13();
        v74 = iAP2MsgGetFirstParam(v72, v73);
        if (!v74)
        {
          goto LABEL_93;
        }

        NextParam = v74;
        while (2)
        {
          v75 = iAP2MsgGetParamID(NextParam);
          if (v75 == 1)
          {
            v79 = OUTLINED_FUNCTION_7_11();
            iAP2MsgGetDataAsU32(v79, v80);
            OUTLINED_FUNCTION_11_9();
            if (v89)
            {
              v215 = logObjectForModule_8();
              if (!OUTLINED_FUNCTION_16(v215))
              {
                goto LABEL_156;
              }

              iAP2MsgGetMsgID(a2);
              *buf = 67109632;
              *v261 = 1;
              *&v261[4] = 1024;
              OUTLINED_FUNCTION_3_24();
              v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
              goto LABEL_143;
            }

            v255 = OUTLINED_FUNCTION_15_10(v81, v82, v83, v84, v85, v86, v87, v88, v230, v231, v232, v233, v234, v235, v236, v237, v238, *(&v238 + 1), v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, cf, v253, theArray, v255, v256, v257, *(&v257 + 1), valuePtr[0]);
          }

          else
          {
            if (!v75)
            {
              v76 = OUTLINED_FUNCTION_7_11();
              v78 = iAP2MsgGetDataAsString(v76, v77);
              if (!v259)
              {
                v256 = OUTLINED_FUNCTION_4_22(v78);
                goto LABEL_53;
              }

              v214 = logObjectForModule_8();
              if (!OUTLINED_FUNCTION_16(v214))
              {
                goto LABEL_156;
              }

              iAP2MsgGetMsgID(a2);
              OUTLINED_FUNCTION_5_20();
              OUTLINED_FUNCTION_3_24();
              v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
LABEL_143:
              v222 = NextParam;
              v223 = 20;
              goto LABEL_144;
            }

            if (gLogObjects && gNumLogObjects >= 52)
            {
              v90 = *(gLogObjects + 408);
            }

            else
            {
              v91 = OUTLINED_FUNCTION_59();
              v90 = &_os_log_default;
              if (v91)
              {
                OUTLINED_FUNCTION_0_13(v91, v92, v93, v94, v95, v96, v97, v98, v230, v231, v232, v233, v234, v235, v236, v237, v238);
                OUTLINED_FUNCTION_36_3();
                _os_log_error_impl(v110, v111, v112, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v113, 0x12u);
                v90 = &_os_log_default;
              }
            }

            v99 = os_log_type_enabled(v90, OS_LOG_TYPE_INFO);
            if (v99)
            {
              OUTLINED_FUNCTION_6_17(v99, v100, v101, v102, v103, v104, v105, v106, v230, v231, v232, v233, v234, v235, v236, v237, v238, *(&v238 + 1), v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, cf, v253, theArray, v255, v256, v257);
              _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_INFO, "Unrecognized asset group paramID:0x%04X", v107, 8u);
            }
          }

LABEL_53:
          v108 = OUTLINED_FUNCTION_10_13();
          NextParam = iAP2MsgGetNextParam(v108, v109, NextParam);
          if (!NextParam)
          {
            goto LABEL_93;
          }

          continue;
        }

      case 8:
        v171 = OUTLINED_FUNCTION_9_12();
        DataAsBool = iAP2MsgGetDataAsBool(v171, v172);
        if (!v259)
        {
          v174 = v241;
          if (!DataAsBool)
          {
            v174 = v240;
          }

          v243 = v174;
          goto LABEL_93;
        }

        v227 = logObjectForModule_8();
        if (OUTLINED_FUNCTION_16(v227))
        {
          goto LABEL_159;
        }

LABEL_156:
        v6 = 0;
        Mutable = theArray;
        v7 = v255;
        v5 = v247;
        a1 = v256;
        v8 = v251;
LABEL_104:
        v198 = v8;
        if (Mutable)
        {
          CFRelease(Mutable);
          v8 = v198;
        }

        if (v5)
        {
          CFRelease(v5);
          v8 = v198;
        }

        if (cf)
        {
          CFRelease(cf);
          v8 = v198;
        }

        if (v8)
        {
          CFRelease(v8);
        }

        if (v253)
        {
          CFRelease(v253);
        }

        if (v248)
        {
          CFRelease(v248);
        }

        if (v249)
        {
          CFRelease(v249);
        }

        if (v245)
        {
          CFRelease(v245);
        }

        if (v246)
        {
          CFRelease(v246);
        }

        if (a1)
        {
          CFRelease(a1);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        return v6;
      default:
        if (gLogObjects && gNumLogObjects >= 52)
        {
          v175 = *(gLogObjects + 408);
        }

        else
        {
          v176 = OUTLINED_FUNCTION_59();
          v175 = &_os_log_default;
          if (v176)
          {
            OUTLINED_FUNCTION_0_13(v176, v177, v178, v179, v180, v181, v182, v183, v230, v231, v232, v233, v234, v235, v236, v237, v238);
            OUTLINED_FUNCTION_36_3();
            _os_log_error_impl(v184, v185, v186, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v187, 0x12u);
            v175 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
        {
          *buf = v257;
          *v261 = ParamID;
          _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_INFO, "Unrecognized paramID:0x%04X", buf, 8u);
        }

        goto LABEL_93;
    }
  }
}

uint64_t iap2_CarPlayAvailability(uint64_t *a1, const __CFDictionary *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = gLogObjects;
    v6 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 52)
    {
      v7 = *(gLogObjects + 408);
    }

    else
    {
      v7 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v25 = 134218240;
        v26 = v5;
        v27 = 1024;
        LODWORD(v28) = v6;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v25);
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[1];
      OUTLINED_FUNCTION_9_0();
      v28 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "iap2_CarPlayAvailability: %@, parameters %@", &v25, 0x16u);
    }

    Value = CFDictionaryGetValue(a2, @"wiredAvailable");
    v11 = CFDictionaryGetValue(a2, @"usbIdentifier");
    v12 = CFDictionaryGetValue(a2, @"wirelessAvailable");
    v13 = CFDictionaryGetValue(a2, @"bluetoothIdentifier");
    v14 = CFDictionaryGetValue(a2, @"themeAssetsAvailable");
    v15 = gLogObjects;
    v16 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 52)
    {
      v17 = *(gLogObjects + 408);
    }

    else
    {
      v17 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v25 = 134218240;
        v26 = v15;
        v27 = 1024;
        LODWORD(v28) = v16;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v25);
      }
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = a1[1];
      OUTLINED_FUNCTION_9_0();
      v28 = Value;
      v29 = v20;
      v30 = v11;
      v31 = v20;
      v32 = v12;
      v33 = v20;
      v34 = v13;
      v35 = v20;
      v36 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "iap2_CarPlayAvailability: %@, wiredAvailable %@, usbIdentifier %@, wirelessAvailable %@, bluetoothIdentifier %@, themeAssetsAvailable %@", &v25, 0x3Eu);
    }

    if (Value | v12)
    {
      iAP2MsgInit((a1 + 15), 17152, a1[24], 0xFFFF, 0, 0);
      if (Value)
      {
        v21 = iAP2MsgAddGroupParam((a1 + 15), 0);
        iAP2MsgAddCFBooleanParam((a1 + 15), v21, 0, Value);
        if (v11)
        {
          iAP2MsgAddCFStringParam((a1 + 15), v21, 1, v11);
        }
      }

      if (v12)
      {
        v22 = iAP2MsgAddGroupParam((a1 + 15), 1);
        iAP2MsgAddCFBooleanParam((a1 + 15), v22, 0, v12);
        if (v13)
        {
          iAP2MsgAddCFStringParam((a1 + 15), v22, 1, v13);
        }
      }

      if (v14)
      {
        v23 = iAP2MsgAddGroupParam((a1 + 15), 2);
        iAP2MsgAddCFBooleanParam((a1 + 15), v23, 0, v14);
      }

      v2 = iap2_sessionControl_sendOutgoingMessage(a1, (a1 + 15));
      OUTLINED_FUNCTION_44_3();
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

_BYTE *_createFeature_10(_BYTE *result)
{
  if (result)
  {
    result = malloc_type_calloc(1uLL, 2uLL, 0x1000040BDFB0063uLL);
    if (result)
    {
      result[1] = 0;
    }
  }

  return result;
}

uint64_t _destroyFeature_10(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
      *a1 = 0;
    }
  }

  return 0;
}

uint64_t _checkIdentificationInfo_18(uint64_t a1)
{
  v8 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &kMsgCarPlayConnectionRequestList, 2u, &v8);
  if (!v2 && v8 == 1)
  {
    iap2_features_createFeature(a1, 0x1Au);
    iap2_identification_setIdentifiedForFeature(a1);
    v3 = gLogObjects;
    v4 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 52)
    {
      v5 = *(gLogObjects + 408);
    }

    else
    {
      v5 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v10 = v3;
        v11 = 1024;
        v12 = v4;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v6, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Identified for CarPlay Connection Initiation", buf, 2u);
    }
  }

  return v2;
}

id acc_json_data2object(void *a1)
{
  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_11:
    v3 = 0;
    v4 = 0;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_14();
  v9 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: jsonData %@", buf, 0x16u);
  if (!a1)
  {
    goto LABEL_11;
  }

LABEL_3:
  v7 = 0;
  v2 = [NSJSONSerialization JSONObjectWithData:a1 options:0 error:&v7];
  v3 = v7;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_14();
    v9 = v3;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: failed JSON serialization!!! err %@", buf, 0x16u);
  }

  v4 = v2;
LABEL_7:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_14();
    v9 = a1;
    v10 = v5;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: jsonData %@  ->  result %@", buf, 0x20u);
  }

  return v4;
}

BOOL _isModelNumberConnected(const void *a1, void *a2)
{
  v3 = a2;
  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  v9 = EndpointWithUUID && *EndpointWithUUID && (v5 = EndpointWithUUID[1]) != 0 && (ConnectionWithUUID = acc_manager_getConnectionWithUUID(v5)) != 0 && (AccessoryInfo = acc_connection_getAccessoryInfo(ConnectionWithUUID)) != 0 && (v8 = *(AccessoryInfo + 16)) != 0 && CFStringCompare(v8, v3, 0) == kCFCompareEqualTo;

  return v9;
}

void _isPowerDuringSleepForApplePencil(const void *a1)
{
  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  if (!EndpointWithUUID || (v3 = EndpointWithUUID[2]) == 0 || !_isModelNumberConnected(v3, @"A1603") || !platform_systemInfo_isApplePencilSupported())
  {
    v7 = 0;
    goto LABEL_10;
  }

  v4 = +[ACCPlatformPowerManager sharedManager];
  [v4 addAccessoryForEndpointUID:a1 andBitmask:0 andOldBitmask:0];

  v5 = +[ACCPlatformPowerManager sharedManager];
  v6 = [v5 powerAccessories];
  v7 = [v6 objectForKey:a1];

  if (!v7)
  {
    v23 = logObjectForModule_19();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v36) = 0;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[#Power] Failed to find ACCPlatformPowerInfo instance, no sleep assertion for Apple Pencil", &v36, 2u);
    }

    v7 = 0;
    goto LABEL_29;
  }

  v8 = _getPowerPluginInstance();
  v9 = [v7 connectionUID];
  v10 = [v8 sleepPowerCurrentLimitInmA:v9];

  v11 = _getIOKitPowerPluginInstance();
  v12 = [v11 getBatteryChargeLevel];

  v13 = HIDWORD(gLogObjects);
  v14 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 8)
  {
    v15 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *&v37[4] = v13;
      OUTLINED_FUNCTION_3();
      v38 = v14;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v26, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v27, v28, v29, v30, 0);
    }

    v15 = &_os_log_default;
    v16 = &_os_log_default;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v36 = 67109376;
    *v37 = v10;
    OUTLINED_FUNCTION_9_13();
    *&v37[6] = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[#Power] sleepPowerCurrentLimitInmA: %d, current iOS battery level percentage: %d", &v36, 0xEu);
  }

  if (v10 == 100 && v12 >= 0xB)
  {
    platform_sleepAssertion_createForApplePencil();
    [v7 setHoldingApplePencilSleepAssertion:1];
    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v7 selector:"powerInfoChangeNotificationHandler:" name:ACCPlatformIOKitPowerPlugin_BatteryChargeLevel object:0];

    v19 = _getIOKitPowerPluginInstance();
    v20 = [v19 createBatteryNotificationClient];
    [v7 setApplePencilBatteryNotificationClientUUID:v20];

    v21 = gLogObjects;
    v22 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v23 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v36 = 134218240;
        *v37 = v21;
        OUTLINED_FUNCTION_3();
        v38 = v22;
        OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v31, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v32, v33, v34, v35, v36);
      }

      v23 = &_os_log_default;
      v24 = &_os_log_default;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v25 = [v7 applePencilBatteryNotificationClientUUID];
      v36 = 138412290;
      *v37 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[#Power] Created applePencilBatteryNotificationClientUUID: %@", &v36, 0xCu);
    }

LABEL_29:
  }

LABEL_10:
}

unint64_t platform_power_sendEAPowerUpdate(const void *a1, int a2, int a3, int a4, int a5)
{
  if (!a1)
  {
    return 1;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  if (!EndpointWithUUID)
  {
    return 1;
  }

  v11 = EndpointWithUUID;
  if (acc_endpoint_getProtocol(EndpointWithUUID) == 4 && !iap2_endpoint_isInitialized(v11[7]))
  {
    v18 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v19 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_16_11();
        v30 = v18;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v19 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v28 = "NO";
      v29 = 1024;
      v30 = 4;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[#Power] Not sending EA Power Update: iap2initialized = %s, protocol = %{coreacc:ACCEndpoint_Protocol_t}d", buf, 0x12u);
    }

    return 1;
  }

  v23 = -21846;
  v21 = a2;
  v22 = a3;
  v24 = a4;
  v26 = -21846;
  v25 = a5;
  v12 = gLogObjects;
  v13 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 8)
  {
    v14 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v28 = v12;
      v29 = 1024;
      v30 = v13;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }

    v14 = &_os_log_default;
    v15 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_16_11();
    v30 = a2;
    v31 = v16;
    v32 = a3;
    v33 = v16;
    v34 = a4;
    v35 = v16;
    v36 = a5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[#Power] EAPowerUpdate: endpoint: %@, updateType: %d, updateValue: %u, updateType2: %d, updateValue2: %u", buf, 0x24u);
  }

  return accFeatureHandlers_invokeHandler(a1, 18, &v21);
}

id platform_power_powerDuringSleepSupported(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  if (!EndpointWithUUID)
  {
    return 0;
  }

  v2 = EndpointWithUUID;
  if (!*EndpointWithUUID || !EndpointWithUUID[1])
  {
    return 0;
  }

  v3 = _getPowerPluginInstance();
  v4 = [v3 isPowerDuringSleepSupported:v2[1]];

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v5 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15, v16, v17, v18, v19);
    }

    v5 = &_os_log_default;
    v6 = &_os_log_default;
  }

  if (OUTLINED_FUNCTION_82())
  {
    v7 = v2[1];
    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v8, v9, v10, v11, v12, 0x12u);
  }

  return v4;
}

id platform_power_setPowerDuringSleep(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    _isPowerDuringSleepForApplePencil(a1);
  }

  else
  {
    _isDisablingPowerDuringSleepForApplePencil(a1);
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  if (!EndpointWithUUID)
  {
    return 0;
  }

  v5 = EndpointWithUUID;
  if (!*EndpointWithUUID || !EndpointWithUUID[1])
  {
    return 0;
  }

  v6 = _getPowerPluginInstance();
  v7 = [v6 setPowerDuringSleepEnabled:a2 forConnectionUUID:v5[1]];

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v8 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v17, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v18, v19, v20, v21, v22);
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (OUTLINED_FUNCTION_82())
  {
    v10 = v5[1];
    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0x12u);
  }

  return v7;
}

id platform_power_powerDuringSleepEnabled(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  if (!EndpointWithUUID)
  {
    return 0;
  }

  v2 = EndpointWithUUID;
  if (!*EndpointWithUUID || !EndpointWithUUID[1])
  {
    return 0;
  }

  v3 = _getPowerPluginInstance();
  v4 = [v3 isPowerDuringSleepEnabled:v2[1]];

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v5 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15, v16, v17, v18, v19);
    }

    v5 = &_os_log_default;
    v6 = &_os_log_default;
  }

  if (OUTLINED_FUNCTION_82())
  {
    v7 = v2[1];
    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v8, v9, v10, v11, v12, 0x12u);
  }

  return v4;
}

id platform_power_resetBaseCurrent(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = _getPowerPluginInstance();
  v3 = [v2 resetAccessoryBaseCurrent:a1];

  if (gLogObjects)
  {
    v4 = gNumLogObjects < 8;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17, v18);
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 56);
  }

  if (OUTLINED_FUNCTION_82())
  {
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }

  return v3;
}

void platform_power_updateAccessoryChargeCurrent(uint64_t a1, unsigned int a2)
{
  v11 = +[ACCPlatformPowerManager sharedManager];
  v4 = [v11 powerAccessories];
  v5 = [v4 objectForKey:a1];

  if (v5)
  {
    v6 = [v5 endpointUID];
    isModelNumberConnected = _isModelNumberConnected(v6, @"A1603");

    if (isModelNumberConnected)
    {
      if (platform_systemInfo_isApplePencilSupported())
      {
        v8 = [v5 holdingApplePencilSleepAssertion];
        if (a2 <= 9)
        {
          if (v8)
          {
            platform_sleepAssertion_destroyForApplePencil();
            [v5 setHoldingApplePencilSleepAssertion:0];
          }
        }
      }

      if ([v5 powerUpdateSentDueToSleep])
      {
        v9 = [v5 sleepNotificationClientUUID];

        if (v9)
        {
          v10 = _getIOKitPowerPluginInstance();
          [v5 sleepNotificationClientUUID];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_15_11() clientHandledSleepNotification:v6];

          [v5 setPowerUpdateSentDueToSleep:0];
        }
      }
    }
  }
}

uint64_t iap2_sessionControl_init(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 192))
    {
      v2 = 1;
    }

    else
    {
      v3 = malloc_type_malloc(0xFFFFuLL, 0x5696F3AuLL);
      *(v1 + 192) = v3;
      v2 = v3 != 0;
    }

    v4 = iap2_features_registerMessageHandlers();
    v5 = v4 & iap2_features_registerIdentificationParamHandlers();
    v6 = OUTLINED_FUNCTION_9_14();
    return v2 & v5 & iap2_features_createFeatures(v6, v7);
  }

  return result;
}

uint64_t iap2_sessionControl_cleanup(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (!v2 || !*v2)
  {
    return 0;
  }

  if (acc_endpoint_getTransportType(v2) == 8)
  {
    platform_usb_lockUSBHostInterfaces(*(a1 + 16));
  }

  v3 = OUTLINED_FUNCTION_7_2();
  iap2_endpoint_setInitialized(v3, v4);
  platform_externalAccessory_removeEAAccessoryForPrimaryEndpoint(*(a1 + 8));
  if (iap2_identification_isIdentifiedForWirelessCarPlay(a1))
  {
    platform_iapd_bridge_accessory_disconnected(*(a1 + 8));
  }

  v5 = OUTLINED_FUNCTION_7_2();
  v7 = iap2_features_destroyFeatures(v5, v6);
  v8 = OUTLINED_FUNCTION_9_14();
  v10 = v7 & iap2_features_destroyFeatures(v8, v9);
  v11 = *(a1 + 192);
  if (v11)
  {
    free(v11);
    *(a1 + 192) = 0;
  }

  return v10;
}

uint64_t iap2_sessionControl_start(unsigned __int8 *a1)
{
  if (a1)
  {
    Version = iap2_sessionControl_getVersion(a1);
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 23;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      v9 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_6_6();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_10(v4, v5, v6, v7, v8);
      }
    }

    else
    {
      v9 = *(gLogObjects + 176);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v10, v11, OS_LOG_TYPE_INFO, v12, v13, 8u);
    }

    if (gLogObjects)
    {
      v14 = gNumLogObjects <= 22;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;
    if (Version == 2)
    {
      if (v15)
      {
        v16 = *(gLogObjects + 176);
      }

      else
      {
        v16 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_26_0(&_mh_execute_header, v31, v32, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v33, v34, v35, v36, 0);
        }
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_9(v18, v19, v20, v21, v22);
      }

      v23 = 1;
    }

    else
    {
      if (v15)
      {
        v17 = *(gLogObjects + 176);
      }

      else
      {
        v17 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_26_0(&_mh_execute_header, v37, v38, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v39, v40, v41, v42, 0);
        }
      }

      v24 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      v23 = 0;
      if (v24)
      {
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_9(v25, v26, v27, v28, v29);
        v23 = 0;
      }
    }

    iap2_features_startFeatureFromDevice(a1, v23);
  }

  return 0;
}

unsigned __int8 *iap2_sessionControl_getVersion(unsigned __int8 *result)
{
  if (result)
  {
    v1 = *(result + 4);
    if (v1)
    {
      v2 = *(v1 + 24);
      if (v2)
      {
        v3 = OUTLINED_FUNCTION_7_2();
        SessionForService = iAP2LinkGetSessionForService(v3, v4);
        result = iAP2LinkGetSessionInfo(v2, SessionForService);
        if (result)
        {
          return result[2];
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t iap2_sessionControl_parseIncomingMessage(uint64_t a1, char *a2, unsigned int a3)
{
  v3 = 0;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      v48 = 0xAAAAAAAAAAAAAAAALL;
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v47[2] = v7;
      v47[3] = v7;
      v47[0] = v7;
      v47[1] = v7;
      iAP2MsgInit(v47, 0, 0, 0, 0, 0);
      v3 = 0;
      if (a3)
      {
        v9 = a3;
        *&v8 = 67109120;
        v46 = v8;
        while (1)
        {
          v10 = *v4++;
          v11 = iAP2MsgParserConsumeByte(*(a1 + 112), v10, v47);
          if (v11)
          {
            break;
          }

LABEL_19:
          if (!--v9)
          {
            return v3 & 1;
          }
        }

        v12 = v11;
        if (!*a1)
        {
          goto LABEL_26;
        }

        MsgID = iAP2MsgGetMsgID(v11);
        MsgLen = iAP2MsgGetMsgLen(v12);
        v15 = gLogObjects;
        v16 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 21)
        {
          v17 = *(gLogObjects + 160);
        }

        else
        {
          v17 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v50 = v15;
            *&v50[8] = 1024;
            v51[0] = v16;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            v17 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = *(a1 + 8);
          *buf = 67109634;
          *v50 = MsgID;
          *&v50[4] = 1024;
          *&v50[6] = MsgLen;
          LOWORD(v51[0]) = 2112;
          *(v51 + 2) = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Incoming Message ID: 0x%04X (%d bytes) for endpoint %@", buf, 0x18u);
        }

        if (iap2_identification_isIdentifiedForIncomingMessageID(a1, MsgID))
        {
          Handler = iap2_messageHandlers_getHandler(MsgID);
          if (!Handler)
          {
            v33 = logObjectForModule_1(22);
            if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            *buf = v46;
            *v50 = MsgID;
            v30 = buf;
            v31 = v33;
            v32 = "No message handler found for incoming message ID: 0x%04X!";
            v34 = 8;
LABEL_29:
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v32, v30, v34);
            goto LABEL_26;
          }

          if ((Handler)(a1, v12))
          {
            v3 = 1;
LABEL_18:
            iAP2MsgCleanup(v12);
            goto LABEL_19;
          }

          v35 = logObjectForModule_1(22);
          v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
          if (!v36)
          {
LABEL_26:
            v3 = 0;
            goto LABEL_18;
          }

          OUTLINED_FUNCTION_7_13(v36, v37, v38, v39, v40, v41, v42, v43, v46, *(&v46 + 1), v44);
          v31 = v35;
          v32 = "Message handler returned false! (0x%04X for endpoint %@)";
        }

        else
        {
          v20 = logObjectForModule_1(22);
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
          if (!v21)
          {
            goto LABEL_26;
          }

          OUTLINED_FUNCTION_7_13(v21, v22, v23, v24, v25, v26, v27, v28, v46, *(&v46 + 1), v29);
          v31 = v20;
          v32 = "Not identified for incoming message ID: 0x%04X! (endpoint %@)";
        }

        v34 = 18;
        goto LABEL_29;
      }
    }
  }

  return v3 & 1;
}

void iap2_sessionControl_accAuthenticationStateChanged(void *a1, int a2)
{
  if (a1 && a2 == 2 && *a1)
  {
    if (iap2_identification_getState(a1))
    {
      if (iap2_identification_getState(a1) == 6)
      {
        if (gLogObjects && gNumLogObjects >= 23)
        {
          v5 = *(gLogObjects + 176);
        }

        else
        {
          v5 = &_os_log_default;
          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_1_7();
            OUTLINED_FUNCTION_26_0(&_mh_execute_header, v6, v7, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v8, v9, v10, v11, v18);
          }
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v12 = a1[1];
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_73_0(v13, v14, v15, v16, v17);
        }

        _authAndIDComplete(a1);
      }
    }

    else
    {
      v3 = OUTLINED_FUNCTION_9_14();

      iap2_features_startFeatureFromDevice(v3, v4);
    }
  }
}

void _authAndIDComplete(uint64_t a1)
{
  if (a1 && *a1)
  {
    v2 = OUTLINED_FUNCTION_9_14();
    iap2_endpoint_setInitialized(v2, v3);
    platform_analytics_connectionPassedAuth(**a1);
    v4 = OUTLINED_FUNCTION_7_2();
    iap2_features_createFeatures(v4, v5);
    v6 = OUTLINED_FUNCTION_7_2();
    iap2_features_startFeaturesFromDevice(v6, v7);
    platform_analytics_iap2_featuresSupportedDidChange();
    if (iap2_identification_isIdentifiedForWirelessCarPlay(a1))
    {
      platform_iapd_bridge_accessory_connected(*a1, 0);
    }

    v8 = *(*(a1 + 32) + 24);
    if ((~*(v8 + 272) & 3) == 0)
    {
      iAP2TimeSyncStart(v8);
    }

    v9 = *(a1 + 8);

    platform_externalAccessory_addEAAccessoryForPrimaryEndpoint(v9);
  }
}

void iap2_sessionControl_identificationStateChanged(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = *a1;
    if (v3)
    {
      TransportType = acc_endpoint_getTransportType(v3);
      if (a2 == 6)
      {
        if (**a1)
        {
          if (TransportType && (TransportType == 8 || acc_connection_getType(**a1) == 6 && *a1 && **a1))
          {
            if (gLogObjects && gNumLogObjects >= 23)
            {
              v6 = *(gLogObjects + 176);
            }

            else
            {
              v6 = &_os_log_default;
              if (OUTLINED_FUNCTION_21())
              {
                OUTLINED_FUNCTION_1_7();
                OUTLINED_FUNCTION_26_0(&_mh_execute_header, v46, v47, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v48, v49, v50, v51, v68);
              }
            }

            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              v68 = 0;
              OUTLINED_FUNCTION_15_1();
              OUTLINED_FUNCTION_9(v7, v8, v9, v10, v11);
            }

            acc_connection_isAuthenticated(**a1, 6u);
            if (gLogObjects && gNumLogObjects >= 23)
            {
              v12 = *(gLogObjects + 176);
            }

            else
            {
              v12 = &_os_log_default;
              if (OUTLINED_FUNCTION_21())
              {
                OUTLINED_FUNCTION_1_7();
                OUTLINED_FUNCTION_26_0(&_mh_execute_header, v52, v53, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v54, v55, v56, v57, v68);
              }
            }

            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              v68 = 0;
              v69 = *(*a1 + 24);
              OUTLINED_FUNCTION_15_1();
              _os_log_impl(v13, v14, OS_LOG_TYPE_INFO, v15, v16, 8u);
            }

            TransportComponent = iap2_identification_getTransportComponent(a1);
            if (TransportComponent)
            {
              v18 = TransportComponent;
              if (gLogObjects && gNumLogObjects >= 23)
              {
                v19 = *(gLogObjects + 176);
              }

              else
              {
                v19 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  OUTLINED_FUNCTION_6_6();
                  OUTLINED_FUNCTION_6_0();
                  OUTLINED_FUNCTION_10(v58, v59, v60, v61, v62);
                }
              }

              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                v68 = 0;
                OUTLINED_FUNCTION_6_0();
                _os_log_impl(v20, v21, OS_LOG_TYPE_INFO, v22, v23, 2u);
              }

              if (v18[53] == 1)
              {
                if ((v18[55] & 1) == 0)
                {
                  if (gLogObjects && gNumLogObjects >= 23)
                  {
                    v24 = *(gLogObjects + 176);
                  }

                  else
                  {
                    v24 = &_os_log_default;
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      OUTLINED_FUNCTION_6_6();
                      OUTLINED_FUNCTION_6_0();
                      OUTLINED_FUNCTION_10(v63, v64, v65, v66, v67);
                    }
                  }

                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    v68 = 0;
                    OUTLINED_FUNCTION_6_0();
                    OUTLINED_FUNCTION_9(v25, v26, v27, v28, v29);
                  }
                }

                if (iap2_identification_isIdentifiedForCarPlay(a1))
                {
                  v30 = iAP2_carPlayConnectionType(a1);
                  CFAbsoluteTimeGetCurrent();
                  platform_CarPlay_sendConnectionEvent(3, v30);
                }

                platform_usb_configureUSBHostNCMInterface(*(a1 + 16), v18[54], 1);
              }
            }

            platform_usb_unlockUSBHostInterfaces(*(a1 + 16));
          }

          if (iap2_accAuthentication_getState(a1))
          {
            if (iap2_accAuthentication_getState(a1) == 2)
            {
              if (gLogObjects && gNumLogObjects >= 23)
              {
                v31 = *(gLogObjects + 176);
              }

              else
              {
                v31 = &_os_log_default;
                if (OUTLINED_FUNCTION_21())
                {
                  OUTLINED_FUNCTION_1_7();
                  OUTLINED_FUNCTION_26_0(&_mh_execute_header, v34, v35, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v36, v37, v38, v39, v68);
                }
              }

              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                v40 = *(a1 + 8);
                OUTLINED_FUNCTION_38();
                OUTLINED_FUNCTION_15_1();
                OUTLINED_FUNCTION_73_0(v41, v42, v43, v44, v45);
              }

              _authAndIDComplete(a1);
            }
          }

          else
          {
            v32 = OUTLINED_FUNCTION_7_2();
            iap2_features_startFeatureFromDevice(v32, v33);
          }
        }
      }
    }
  }
}

void iap2_sessionControl_authorizationHook_authentication(unsigned int *a1, uint64_t a2)
{
  if (a1 && *a1 && **a1)
  {
    State = iap2_identification_getState(a1);
    if (gLogObjects && gNumLogObjects >= 23)
    {
      v5 = *(gLogObjects + 176);
    }

    else
    {
      v5 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_10(v23, v24, v25, v26, v27);
      }
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_73_0(v6, v7, v8, v9, v10);
    }

    if (gLogObjects && gNumLogObjects >= 23)
    {
      v11 = *(gLogObjects + 176);
    }

    else
    {
      v11 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_10(v28, v29, v30, v31, v32);
      }
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      iap2_accAuthentication_getState(a1);
      iap2_identification_getState(a1);
      OUTLINED_FUNCTION_14_3();
      _os_log_debug_impl(v15, v16, OS_LOG_TYPE_DEBUG, v17, v18, 0xEu);
      if (!State)
      {
        goto LABEL_18;
      }
    }

    else if (!State)
    {
LABEL_18:
      v12 = *(a2 + 16);
      v13 = OUTLINED_FUNCTION_9_14();
      v14(v13);
      return;
    }

    v19 = iap2_accAuthentication_copyCertificateSerialString(a1);
    AccessoryInfo = acc_endpoint_getAccessoryInfo(*a1);
    v21 = acc_strings_copyPlaceholder_Unknown();
    v22 = acc_accInfo_retainedProperty(AccessoryInfo, 0, v21);
    _requestAuthorization(a1, v19, v22, a2);
    if (v19)
    {
      CFRelease(v19);
    }

    if (v22)
    {
      CFRelease(v22);
    }
  }
}

void _requestAuthorization(uint64_t a1, CFTypeRef a2, CFTypeRef a3, uint64_t a4)
{
  if (a1)
  {
    v5 = *a1;
    if (v5)
    {
      if (*v5)
      {
        if (acc_policies_endpointRequiresUserAuthorization(v5))
        {
          v9 = CFRetain(*(a1 + 8));
          if (a2)
          {
            a2 = CFRetain(a2);
          }

          if (a3)
          {
            a3 = CFRetain(a3);
          }

          v10 = acc_endpoint_isWireless(*a1);
          if (v10)
          {
            CurrentLimit = 0;
            v12 = 0;
          }

          else
          {
            CurrentLimit = platform_power_getCurrentLimit(*(a1 + 16));
            v12 = CurrentLimit != 0;
          }

          v16 = gLogObjects;
          v17 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 23)
          {
            v18 = *(gLogObjects + 176);
          }

          else
          {
            v18 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v26 = v16;
              v27 = 1024;
              LODWORD(v28) = v17;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v19, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v21 = "NO";
            if (v12)
            {
              v22 = "YES";
            }

            else
            {
              v22 = "NO";
            }

            *buf = 136315650;
            v26 = v22;
            if (v10)
            {
              v21 = "YES";
            }

            v27 = 2080;
            v28 = v21;
            v29 = 1024;
            v30 = CurrentLimit;
            _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "providesPower: %s, isWireless: %s, currentLimit: %uma", buf, 0x1Cu);
          }

          global_queue = dispatch_get_global_queue(0, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 0x40000000;
          block[2] = ___requestAuthorization_block_invoke;
          block[3] = &unk_100228190;
          v24 = v12;
          block[6] = a3;
          block[7] = v9;
          block[4] = a4;
          block[5] = a2;
          dispatch_async(global_queue, block);
        }

        else
        {
          v13 = *(a4 + 16);
          v14 = OUTLINED_FUNCTION_9_14();

          v15(v14);
        }
      }
    }
  }
}

void iap2_sessionControl_authorizationHook_identification(unsigned int *a1, const void *a2, uint64_t a3)
{
  if (a1 && *a1 && **a1)
  {
    State = iap2_accAuthentication_getState(a1);
    if (gLogObjects && gNumLogObjects >= 23)
    {
      v7 = *(gLogObjects + 176);
    }

    else
    {
      v7 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_10(v22, v23, v24, v25, v26);
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_73_0(v8, v9, v10, v11, v12);
    }

    if (gLogObjects && gNumLogObjects >= 23)
    {
      v13 = *(gLogObjects + 176);
    }

    else
    {
      v13 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_6_6();
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_10(v27, v28, v29, v30, v31);
      }
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      iap2_accAuthentication_getState(a1);
      iap2_identification_getState(a1);
      OUTLINED_FUNCTION_36();
      _os_log_debug_impl(v17, v18, OS_LOG_TYPE_DEBUG, v19, v20, 0xEu);
      if (!State)
      {
        goto LABEL_18;
      }
    }

    else if (!State)
    {
LABEL_18:
      v14 = *(a3 + 16);
      v15 = OUTLINED_FUNCTION_9_14();
      v16(v15);
      return;
    }

    v21 = iap2_accAuthentication_copyCertificateSerialString(a1);
    _requestAuthorization(a1, v21, a2, a3);
    if (v21)
    {
      CFRelease(v21);
    }
  }
}

void _sendOutgoingMessage_cold_1(unsigned __int16 a1, uint64_t a2)
{
  v4 = logObjectForModule_1(22);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a2 + 8);
    v7[0] = 67109378;
    v7[1] = a1;
    v8 = 2112;
    v9 = v6;
    OUTLINED_FUNCTION_10(&_mh_execute_header, v4, v5, "Not identified for outgoing message ID: 0x%04X! (endpoint %@)", v7);
  }
}

void ___requestAuthorization_block_invoke_cold_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_38();
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "certSerialString: %@, accName: %@", v5, 0x16u);
}

id _statusUpdateHandler(uint64_t a1, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 34, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = 0;
  if (!a1 || !a2)
  {
LABEL_118:
    if (!Mutable)
    {
      return v5;
    }

LABEL_119:
    CFRelease(Mutable);
    return v5;
  }

  v6 = &audioProductCerts_endpoint_publish_onceToken;
  v7 = gLogObjects;
  v8 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 41)
  {
    v9 = *(gLogObjects + 320);
  }

  else
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v554 = v7;
      OUTLINED_FUNCTION_17_0();
      v555[0] = v8;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v208, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    MsgID = iAP2MsgGetMsgID(a2);
    *buf = 67109120;
    *v554 = MsgID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received Vehicle Status Update message (0x%04X)!", buf, 8u);
  }

  Feature = iap2_feature_getFeature(a1, 0x14u);
  if (!Feature)
  {
    goto LABEL_186;
  }

  if (*(Feature + 137) != 1 || (*(Feature + 138) & 1) == 0)
  {
    v224 = logObjectForModule_20();
    if (!os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_186;
    }

    *buf = 0;
    OUTLINED_FUNCTION_22_5();
    v223 = 2;
LABEL_185:
    _os_log_error_impl(v212, v221, v222, v213, v220, v223);
    goto LABEL_186;
  }

  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  if (!FirstParam)
  {
LABEL_117:
    v5 = platform_vehicle_vehicleStatusChanged(*(a1 + 8), Mutable);
    goto LABEL_118;
  }

  v13 = FirstParam;
  v550 = kCFACCVehicleInfoMaxRangeCNGKey;
  v549 = kCFACCVehicleInfoMaxRangeDieselKey;
  v548 = kCFACCVehicleInfoMaxRangeGasolineKey;
  v547 = kCFACCVehicleInfoMaxRangeElectricKey;
  v546 = kCFACCVehicleInfoActiveConnectorKey;
  v545 = kCFACCVehicleInfoConsumptionParameterKey;
  v544 = kCFACCVehicleInfoChargingParameterKey;
  v543 = kCFACCVehicleInfoIsChargingKey;
  v542 = kCFACCVehicleInfoDisplayedBatteryPercentageKey;
  v541 = kCFACCVehicleInfoMaxBatteryChargeKey;
  v540 = kCFACCVehicleInfoCurrentBatteryChargeKey;
  v539 = kCFACCVehicleInfoMinBatteryChargeKey;
  v538 = kCFACCVehicleInfoPassengerSeatStatus;
  key = kCFACCVehicleInfoAlerts;
  v536 = kCFACCVehicleInfoBarometricPressure;
  v523 = kCFACCVehicleInfoWiperStatusWasherOn;
  v522 = kCFACCVehicleInfoWiperStatusWipeDurationMs;
  v521 = kCFACCVehicleInfoWiperStatusWaitDurationMs;
  v524 = kCFACCVehicleInfoWiperStatus;
  v535 = kCFACCVehicleInfoHasLowDistanceRangeCNGKey;
  v534 = kCFACCVehicleInfoHasLowDistanceRangeElectricKey;
  v533 = kCFACCVehicleInfoHasLowDistanceRangeDieselKey;
  v532 = kCFACCVehicleInfoHasLowDistanceRangeGasolineKey;
  v531 = kCFACCVehicleInfoRangeCNGKey;
  v530 = kCFACCVehicleInfoRangeElectricKey;
  v529 = kCFACCVehicleInfoRangeDieselKey;
  v528 = kCFACCVehicleInfoRangeGasolineKey;
  v527 = kCFACCVehicleInfoHasLowDistanceRangeKey;
  v526 = kCFACCVehicleInfoOutsideTemperatureKey;
  v525 = kCFACCVehicleInfoRangeKey;
  while (2)
  {
    ParamID = iAP2MsgGetParamID(v13);
    v15 = v6[491];
    if (v15 && gNumLogObjects >= 41)
    {
      isa = v15[40].isa;
    }

    else
    {
      isa = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v554 = v15;
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_28_4();
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v195, 0x12u);
        isa = &_os_log_default;
      }
    }

    if (os_log_type_enabled(isa, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *v554 = ParamID;
      _os_log_debug_impl(&_mh_execute_header, isa, OS_LOG_TYPE_DEBUG, "msgParamID: %d", buf, 8u);
    }

    switch(ParamID)
    {
      case 3:
        v17 = OUTLINED_FUNCTION_1_20();
        DataAsU16 = iAP2MsgGetDataAsU16(v17, v18);
        OUTLINED_FUNCTION_14_11(DataAsU16);
        if (!v20)
        {
          v21 = OUTLINED_FUNCTION_8_12();
          CFNumberCreate(v21, kCFNumberSInt16Type, v22);
          v23 = OUTLINED_FUNCTION_7_14();
          v24 = v525;
          goto LABEL_106;
        }

        v323 = logObjectForModule_20();
        if (!OUTLINED_FUNCTION_13_9(v323))
        {
          goto LABEL_186;
        }

        v324 = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_18_1(v324, v325, v326, v327, v328, v329, v330, v331, v521, v522, v523, v524, v332);
        OUTLINED_FUNCTION_2_28(v333, 3);
        v212 = &_mh_execute_header;
        v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
        goto LABEL_184;
      case 4:
        v118 = OUTLINED_FUNCTION_1_20();
        DataAsI16 = iAP2MsgGetDataAsI16(v118, v119);
        OUTLINED_FUNCTION_14_11(DataAsI16);
        if (v121)
        {
          v400 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v400))
          {
            v401 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v401, v402, v403, v404, v405, v406, v407, v408, v521, v522, v523, v524, v409);
            OUTLINED_FUNCTION_2_28(v410, 4);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v122 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v122, kCFNumberSInt16Type, v123);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v526;
        goto LABEL_106;
      case 6:
        v79 = OUTLINED_FUNCTION_1_20();
        DataAsBool = iAP2MsgGetDataAsBool(v79, v80);
        OUTLINED_FUNCTION_18_10(DataAsBool);
        if (v82)
        {
          v455 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v455))
          {
            v456 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v456, v457, v458, v459, v460, v461, v462, v463, v521, v522, v523, v524, v464);
            OUTLINED_FUNCTION_2_28(v465, 6);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v83 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v83, kCFNumberSInt8Type, v84);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v527;
        goto LABEL_106;
      case 9:
        v148 = OUTLINED_FUNCTION_1_20();
        v150 = iAP2MsgGetDataAsU16(v148, v149);
        OUTLINED_FUNCTION_14_11(v150);
        if (v151)
        {
          v466 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v466))
          {
            v467 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v467, v468, v469, v470, v471, v472, v473, v474, v521, v522, v523, v524, v475);
            OUTLINED_FUNCTION_2_28(v476, 9);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v152 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v152, kCFNumberSInt16Type, v153);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v528;
        goto LABEL_106;
      case 10:
        v154 = OUTLINED_FUNCTION_1_20();
        v156 = iAP2MsgGetDataAsU16(v154, v155);
        OUTLINED_FUNCTION_14_11(v156);
        if (v157)
        {
          v411 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v411))
          {
            v412 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v412, v413, v414, v415, v416, v417, v418, v419, v521, v522, v523, v524, v420);
            OUTLINED_FUNCTION_2_28(v421, 10);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v158 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v158, kCFNumberSInt16Type, v159);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v529;
        goto LABEL_106;
      case 11:
        v85 = OUTLINED_FUNCTION_1_20();
        v87 = iAP2MsgGetDataAsU16(v85, v86);
        OUTLINED_FUNCTION_14_11(v87);
        if (v88)
        {
          v334 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v334))
          {
            v335 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v335, v336, v337, v338, v339, v340, v341, v342, v521, v522, v523, v524, v343);
            OUTLINED_FUNCTION_2_28(v344, 11);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v89 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v89, kCFNumberSInt16Type, v90);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v530;
        goto LABEL_106;
      case 12:
        v124 = OUTLINED_FUNCTION_1_20();
        v126 = iAP2MsgGetDataAsU16(v124, v125);
        OUTLINED_FUNCTION_14_11(v126);
        if (v127)
        {
          v422 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v422))
          {
            v423 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v423, v424, v425, v426, v427, v428, v429, v430, v521, v522, v523, v524, v431);
            OUTLINED_FUNCTION_2_28(v432, 12);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v128 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v128, kCFNumberSInt16Type, v129);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v531;
        goto LABEL_106;
      case 13:
        v130 = OUTLINED_FUNCTION_1_20();
        v132 = iAP2MsgGetDataAsBool(v130, v131);
        OUTLINED_FUNCTION_18_10(v132);
        if (v133)
        {
          v477 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v477))
          {
            v478 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v478, v479, v480, v481, v482, v483, v484, v485, v521, v522, v523, v524, v486);
            OUTLINED_FUNCTION_2_28(v487, 13);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v134 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v134, kCFNumberSInt8Type, v135);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v532;
        goto LABEL_106;
      case 14:
        v166 = OUTLINED_FUNCTION_1_20();
        v168 = iAP2MsgGetDataAsBool(v166, v167);
        OUTLINED_FUNCTION_18_10(v168);
        if (v169)
        {
          v444 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v444))
          {
            v445 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v445, v446, v447, v448, v449, v450, v451, v452, v521, v522, v523, v524, v453);
            OUTLINED_FUNCTION_2_28(v454, 14);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v170 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v170, kCFNumberSInt8Type, v171);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v533;
        goto LABEL_106;
      case 15:
        v160 = OUTLINED_FUNCTION_1_20();
        v162 = iAP2MsgGetDataAsBool(v160, v161);
        OUTLINED_FUNCTION_18_10(v162);
        if (v163)
        {
          v389 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v389))
          {
            v390 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v390, v391, v392, v393, v394, v395, v396, v397, v521, v522, v523, v524, v398);
            OUTLINED_FUNCTION_2_28(v399, 15);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v164 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v164, kCFNumberSInt8Type, v165);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v534;
        goto LABEL_106;
      case 16:
        v55 = OUTLINED_FUNCTION_1_20();
        v57 = iAP2MsgGetDataAsBool(v55, v56);
        OUTLINED_FUNCTION_18_10(v57);
        if (v58)
        {
          v15 = logObjectForModule_20();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v313 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v313, v314, v315, v316, v317, v318, v319, v320, v521, v522, v523, v524, v321);
            *v554 = 16;
            OUTLINED_FUNCTION_3_25(v322);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v59 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v59, kCFNumberSInt8Type, v60);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v535;
        goto LABEL_106;
      case 17:
        v552 = -1431655766;
        v91 = iAP2MsgGetFirstParam(a2, v13);
        if (v91)
        {
          NextParam = v91;
          v93 = 0;
          v94 = 0;
          v95 = 0;
          v96 = 0;
          valuePtr = 0;
          while (1)
          {
            v97 = iAP2MsgGetParamID(NextParam);
            switch(v97)
            {
              case 2:
                v104 = OUTLINED_FUNCTION_23_5();
                iAP2MsgGetDataAsU32(v104, v105);
                if (v552)
                {
                  v217 = logObjectForModule_20();
                  if (!OUTLINED_FUNCTION_13_9(v217))
                  {
                    goto LABEL_186;
                  }

                  iAP2MsgGetMsgID(a2);
                  *buf = 67109632;
                  OUTLINED_FUNCTION_4_23(17);
                  *&v554[6] = 2;
                  LOWORD(v555[0]) = v218;
                  *(v555 + 2) = v219;
                  v212 = &_mh_execute_header;
                  v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
                  goto LABEL_127;
                }

                v96 = 1;
                break;
              case 1:
                v101 = OUTLINED_FUNCTION_23_5();
                v103 = iAP2MsgGetDataAsU16(v101, v102);
                if (v552)
                {
                  v214 = logObjectForModule_20();
                  if (!OUTLINED_FUNCTION_13_9(v214))
                  {
                    goto LABEL_186;
                  }

                  iAP2MsgGetMsgID(a2);
                  *buf = 67109632;
                  OUTLINED_FUNCTION_4_23(17);
                  *&v554[6] = 1;
                  LOWORD(v555[0]) = v215;
                  *(v555 + 2) = v216;
                  v212 = &_mh_execute_header;
                  v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
                  goto LABEL_127;
                }

                valuePtr = v103;
                v95 = 1;
                break;
              case 0:
                v98 = OUTLINED_FUNCTION_23_5();
                DataAsU8 = iAP2MsgGetDataAsU8(v98, v99);
                if (v552)
                {
                  v209 = logObjectForModule_20();
                  if (!OUTLINED_FUNCTION_13_9(v209))
                  {
                    goto LABEL_186;
                  }

                  iAP2MsgGetMsgID(a2);
                  *buf = 67109632;
                  OUTLINED_FUNCTION_4_23(17);
                  *&v554[6] = 0;
                  LOWORD(v555[0]) = v210;
                  *(v555 + 2) = v211;
                  v212 = &_mh_execute_header;
                  v213 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
LABEL_127:
                  v220 = buf;
                  v221 = v94;
                  v222 = OS_LOG_TYPE_ERROR;
                  v223 = 20;
                  goto LABEL_185;
                }

                v93 = DataAsU8 != 0;
                v94 = 1;
                break;
            }

            NextParam = iAP2MsgGetNextParam(a2, v13, NextParam);
            if (!NextParam)
            {
              if ((v94 | v95 | v96))
              {
                v106 = CFDictionaryCreateMutable(kCFAllocatorDefault, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                if (v94)
                {
                  buf[0] = v93;
                  v107 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, buf);
                  CFDictionaryAddValue(v106, v523, v107);
                  if (v107)
                  {
                    CFRelease(v107);
                  }
                }

                if (v95)
                {
                  v108 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
                  CFDictionaryAddValue(v106, v522, v108);
                  if (v108)
                  {
                    CFRelease(v108);
                  }
                }

                if (v96)
                {
                  v109 = OUTLINED_FUNCTION_8_12();
                  v111 = CFNumberCreate(v109, kCFNumberSInt32Type, v110);
                  CFDictionaryAddValue(v106, v521, v111);
                  if (v111)
                  {
                    CFRelease(v111);
                  }
                }

                CFDictionarySetValue(Mutable, v524, v106);
                if (v106)
                {
                  v42 = v106;
LABEL_76:
                  CFRelease(v42);
                }
              }

              goto LABEL_77;
            }
          }
        }

        v356 = logObjectForModule_20();
        if (!OUTLINED_FUNCTION_13_9(v356))
        {
          goto LABEL_186;
        }

        v357 = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_18_1(v357, v358, v359, v360, v361, v362, v363, v364, v521, v522, v523, v524, v365);
        OUTLINED_FUNCTION_2_28(v366, 17);
        v212 = &_mh_execute_header;
        v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
        goto LABEL_184;
      case 18:
        v67 = OUTLINED_FUNCTION_1_20();
        v69 = iAP2MsgGetDataAsU16(v67, v68);
        OUTLINED_FUNCTION_14_11(v69);
        if (v70)
        {
          v433 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v433))
          {
            v434 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v434, v435, v436, v437, v438, v439, v440, v441, v521, v522, v523, v524, v442);
            OUTLINED_FUNCTION_2_28(v443, 18);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v71 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v71, kCFNumberSInt16Type, v72);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v536;
        goto LABEL_106;
      case 19:
        v34 = OUTLINED_FUNCTION_1_20();
        DataAsData = iAP2MsgGetDataAsData(v34, v35);
        ParamValueLen = iAP2MsgGetParamValueLen(v13);
        if (v552)
        {
          v247 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v247))
          {
            v248 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v248, v249, v250, v251, v252, v253, v254, v255, v521, v522, v523, v524, v256);
            OUTLINED_FUNCTION_2_28(v257, 19);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v38 = ParamValueLen;
        v39 = ParamValueLen;
        v40 = CFArrayCreateMutable(kCFAllocatorDefault, ParamValueLen, &kCFTypeArrayCallBacks);
        if (v38)
        {
          do
          {
            v41 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, DataAsData);
            CFArrayAppendValue(v40, v41);
            if (v41)
            {
              CFRelease(v41);
            }

            ++DataAsData;
            --v39;
          }

          while (v39);
        }

        CFDictionarySetValue(Mutable, key, v40);
        if (v40)
        {
          v42 = v40;
          goto LABEL_76;
        }

LABEL_77:
        v6 = &audioProductCerts_endpoint_publish_onceToken;
        goto LABEL_108;
      case 20:
        v136 = OUTLINED_FUNCTION_1_20();
        v138 = iAP2MsgGetDataAsBool(v136, v137);
        OUTLINED_FUNCTION_18_10(v138);
        if (v139)
        {
          v488 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v488))
          {
            v489 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v489, v490, v491, v492, v493, v494, v495, v496, v521, v522, v523, v524, v497);
            OUTLINED_FUNCTION_2_28(v498, 20);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v140 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v140, kCFNumberSInt8Type, v141);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v538;
        goto LABEL_106;
      case 21:
        v142 = OUTLINED_FUNCTION_1_20();
        DataAsU32 = iAP2MsgGetDataAsU32(v142, v143);
        OUTLINED_FUNCTION_24_6(DataAsU32);
        if (v145)
        {
          v345 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v345))
          {
            v346 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v346, v347, v348, v349, v350, v351, v352, v353, v521, v522, v523, v524, v354);
            OUTLINED_FUNCTION_2_28(v355, 21);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v146 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v146, kCFNumberSInt32Type, v147);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v539;
        goto LABEL_106;
      case 22:
        v178 = OUTLINED_FUNCTION_1_20();
        v180 = iAP2MsgGetDataAsU32(v178, v179);
        OUTLINED_FUNCTION_24_6(v180);
        if (!v181)
        {
          v182 = OUTLINED_FUNCTION_8_12();
          CFNumberCreate(v182, kCFNumberSInt32Type, v183);
          v23 = OUTLINED_FUNCTION_7_14();
          v24 = v540;
          goto LABEL_106;
        }

        v510 = logObjectForModule_20();
        if (!OUTLINED_FUNCTION_13_9(v510))
        {
          goto LABEL_186;
        }

        v511 = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_18_1(v511, v512, v513, v514, v515, v516, v517, v518, v521, v522, v523, v524, v519);
        OUTLINED_FUNCTION_2_28(v520, 22);
        v212 = &_mh_execute_header;
        v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
LABEL_184:
        v220 = buf;
        v221 = v15;
        v222 = OS_LOG_TYPE_ERROR;
        v223 = 14;
        goto LABEL_185;
      case 23:
        v172 = OUTLINED_FUNCTION_1_20();
        v174 = iAP2MsgGetDataAsU32(v172, v173);
        OUTLINED_FUNCTION_24_6(v174);
        if (v175)
        {
          v291 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v291))
          {
            v292 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v292, v293, v294, v295, v296, v297, v298, v299, v521, v522, v523, v524, v300);
            OUTLINED_FUNCTION_2_28(v301, 23);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v176 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v176, kCFNumberSInt32Type, v177);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v541;
        goto LABEL_106;
      case 24:
        v25 = OUTLINED_FUNCTION_1_20();
        v27 = iAP2MsgGetDataAsU32(v25, v26);
        OUTLINED_FUNCTION_24_6(v27);
        if (v28)
        {
          v236 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v236))
          {
            v237 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v237, v238, v239, v240, v241, v242, v243, v244, v521, v522, v523, v524, v245);
            OUTLINED_FUNCTION_2_28(v246, 24);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v29 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v29, kCFNumberSInt32Type, v30);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v542;
        goto LABEL_106;
      case 25:
        v73 = OUTLINED_FUNCTION_1_20();
        v75 = iAP2MsgGetDataAsBool(v73, v74);
        OUTLINED_FUNCTION_18_10(v75);
        if (v76)
        {
          v367 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v367))
          {
            v368 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v368, v369, v370, v371, v372, v373, v374, v375, v521, v522, v523, v524, v376);
            OUTLINED_FUNCTION_2_28(v377, 25);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v77 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v77, kCFNumberSInt8Type, v78);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v543;
        goto LABEL_106;
      case 26:
        v184 = OUTLINED_FUNCTION_1_20();
        DataAsString = iAP2MsgGetDataAsString(v184, v185);
        if (v552)
        {
          v258 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v258))
          {
            v259 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v259, v260, v261, v262, v263, v264, v265, v266, v521, v522, v523, v524, v267);
            OUTLINED_FUNCTION_2_28(v268, 26);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        OUTLINED_FUNCTION_31_5(DataAsString);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v544;
        goto LABEL_106;
      case 27:
        v31 = OUTLINED_FUNCTION_1_20();
        v33 = iAP2MsgGetDataAsString(v31, v32);
        if (v552)
        {
          v302 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v302))
          {
            v303 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v303, v304, v305, v306, v307, v308, v309, v310, v521, v522, v523, v524, v311);
            OUTLINED_FUNCTION_2_28(v312, 27);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        OUTLINED_FUNCTION_31_5(v33);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v545;
        goto LABEL_106;
      case 28:
        v61 = OUTLINED_FUNCTION_1_20();
        v63 = iAP2MsgGetDataAsU8(v61, v62);
        OUTLINED_FUNCTION_24_6(v63);
        if (v64)
        {
          v269 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v269))
          {
            v270 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v270, v271, v272, v273, v274, v275, v276, v277, v521, v522, v523, v524, v278);
            OUTLINED_FUNCTION_2_28(v279, 28);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v65 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v65, kCFNumberCharType, v66);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v546;
        goto LABEL_106;
      case 30:
        v49 = OUTLINED_FUNCTION_1_20();
        v51 = iAP2MsgGetDataAsU16(v49, v50);
        OUTLINED_FUNCTION_14_11(v51);
        if (v52)
        {
          v378 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v378))
          {
            v379 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v379, v380, v381, v382, v383, v384, v385, v386, v521, v522, v523, v524, v387);
            OUTLINED_FUNCTION_2_28(v388, 30);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v53 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v53, kCFNumberSInt16Type, v54);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v547;
        goto LABEL_106;
      case 31:
        v112 = OUTLINED_FUNCTION_1_20();
        v114 = iAP2MsgGetDataAsU16(v112, v113);
        OUTLINED_FUNCTION_14_11(v114);
        if (v115)
        {
          v225 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v225))
          {
            v226 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v226, v227, v228, v229, v230, v231, v232, v233, v521, v522, v523, v524, v234);
            OUTLINED_FUNCTION_2_28(v235, 31);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v116 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v116, kCFNumberSInt16Type, v117);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v548;
        goto LABEL_106;
      case 32:
        v43 = OUTLINED_FUNCTION_1_20();
        v45 = iAP2MsgGetDataAsU16(v43, v44);
        OUTLINED_FUNCTION_14_11(v45);
        if (v46)
        {
          v280 = logObjectForModule_20();
          if (OUTLINED_FUNCTION_13_9(v280))
          {
            v281 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_18_1(v281, v282, v283, v284, v285, v286, v287, v288, v521, v522, v523, v524, v289);
            OUTLINED_FUNCTION_2_28(v290, 32);
            v212 = &_mh_execute_header;
            v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_184;
          }

          goto LABEL_186;
        }

        v47 = OUTLINED_FUNCTION_8_12();
        CFNumberCreate(v47, kCFNumberSInt16Type, v48);
        v23 = OUTLINED_FUNCTION_7_14();
        v24 = v549;
        goto LABEL_106;
      case 33:
        v187 = OUTLINED_FUNCTION_1_20();
        v189 = iAP2MsgGetDataAsU16(v187, v188);
        OUTLINED_FUNCTION_14_11(v189);
        if (!v190)
        {
          v191 = OUTLINED_FUNCTION_8_12();
          CFNumberCreate(v191, kCFNumberSInt16Type, v192);
          v23 = OUTLINED_FUNCTION_7_14();
          v24 = v550;
LABEL_106:
          CFDictionarySetValue(v23, v24, isa);
          if (isa)
          {
            CFRelease(isa);
          }

LABEL_108:
          v13 = iAP2MsgGetNextParam(a2, 0, v13);
          if (!v13)
          {
            goto LABEL_117;
          }

          continue;
        }

        v499 = logObjectForModule_20();
        if (OUTLINED_FUNCTION_13_9(v499))
        {
          v500 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_18_1(v500, v501, v502, v503, v504, v505, v506, v507, v521, v522, v523, v524, v508);
          OUTLINED_FUNCTION_2_28(v509, 33);
          v212 = &_mh_execute_header;
          v213 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
          goto LABEL_184;
        }

LABEL_186:
        v5 = 0;
        if (Mutable)
        {
          goto LABEL_119;
        }

        return v5;
      default:
        v193 = v6[491];
        if (v193 && gNumLogObjects >= 41)
        {
          v194 = *(v193 + 320);
        }

        else
        {
          v194 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v554 = v193;
            OUTLINED_FUNCTION_17_0();
            OUTLINED_FUNCTION_28_4();
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v206, 0x12u);
            v194 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v194, OS_LOG_TYPE_INFO))
        {
          v196 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_18_1(v196, v197, v198, v199, v200, v201, v202, v203, v521, v522, v523, v524, v204);
          *v554 = ParamID;
          OUTLINED_FUNCTION_3_25(v205);
          _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_INFO, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
        }

        goto LABEL_108;
    }
  }
}

uint64_t iap2_vehicle_startStatusUpdatesHandler(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (!*result)
  {
    return 0;
  }

  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 41)
  {
    v4 = *(gLogObjects + 320);
  }

  else
  {
    v4 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      *buf = 134218240;
      v103 = v2;
      v104 = 1024;
      v105 = v3;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v1[1];
    *buf = 138412290;
    v103 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting vehicle status updates for endpoint %@!", buf, 0xCu);
  }

  v7 = OUTLINED_FUNCTION_16_12();
  result = iap2_feature_getFeature(v7, v8);
  if (result)
  {
    v9 = result;
    if (*(result + 137))
    {
      if (*(result + 138) != 1)
      {
        v10 = 1;
        *(result + 138) = 1;
        iAP2MsgInit((v1 + 15), 41216, v1[24], 0xFFFF, 0, 0);
        v11 = *(v9 + 16);
        if (v11)
        {
          Count = CFArrayGetCount(v11);
          v20 = OUTLINED_FUNCTION_21_5(Count, v13, v14, v15, v16, v17, v18, v19, v93, v97, 0);
          v28 = OUTLINED_FUNCTION_21_5(v20, v21, v22, v23, v24, v25, v26, v27, v94, v98, 1);
          v36 = OUTLINED_FUNCTION_21_5(v28, v29, v30, v31, v32, v33, v34, v35, v95, v99, 2);
          v44 = OUTLINED_FUNCTION_21_5(v36, v37, v38, v39, v40, v41, v42, v43, v96, v100, 3);
          v45 = OUTLINED_FUNCTION_15_12();
          v101 = CFArrayContainsValue(v45, v106, v20) == 0;
          v46 = OUTLINED_FUNCTION_15_12();
          v47 = CFArrayContainsValue(v46, v107, v28) == 0;
          v48 = OUTLINED_FUNCTION_15_12();
          v49 = CFArrayContainsValue(v48, v108, v36) == 0;
          v50 = OUTLINED_FUNCTION_15_12();
          v10 = CFArrayContainsValue(v50, v109, v44) == 0;
          if (v20)
          {
            CFRelease(v20);
          }

          if (v28)
          {
            CFRelease(v28);
          }

          if (v36)
          {
            CFRelease(v36);
          }

          v51 = v101;
          if (v44)
          {
            CFRelease(v44);
          }
        }

        else
        {
          v49 = 1;
          v47 = 1;
          v51 = 1;
        }

        if (*(v9 + 120) == 1)
        {
          v52 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v52, v53, 3);
        }

        if (*(v9 + 121) == 1)
        {
          v54 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v54, v55, 4);
        }

        if (*(v9 + 122) == 1)
        {
          v56 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v56, v57, 6);
        }

        if (!(v51 & 1 | ((*(v9 + 123) & 1) == 0)))
        {
          v58 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v58, v59, 9);
        }

        if (!v47 && (*(v9 + 124) & 1) != 0)
        {
          v60 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v60, v61, 10);
        }

        if (!v49 && (*(v9 + 125) & 1) != 0)
        {
          v62 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v62, v63, 11);
        }

        if (!v10 && (*(v9 + 126) & 1) != 0)
        {
          v64 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v64, v65, 12);
        }

        if (*(v9 + 131) == 1)
        {
          v66 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v66, v67, 17);
        }

        if (!(v51 & 1 | ((*(v9 + 127) & 1) == 0)))
        {
          v68 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v68, v69, 13);
        }

        if (!v47 && (*(v9 + 128) & 1) != 0)
        {
          v70 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v70, v71, 14);
        }

        if (!v49 && (*(v9 + 129) & 1) != 0)
        {
          v72 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v72, v73, 15);
        }

        if (!v10 && (*(v9 + 130) & 1) != 0)
        {
          v74 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v74, v75, 16);
        }

        if (*(v9 + 132) == 1)
        {
          v76 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v76, v77, 18);
        }

        if (*(v9 + 133) == 1)
        {
          v78 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v78, v79, 19);
        }

        if (*(v9 + 134) == 1)
        {
          v80 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v80, v81, 20);
        }

        if (*(v9 + 135) == 1)
        {
          v82 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v82, v83, 21);
        }

        if (*(v9 + 136) == 1)
        {
          v84 = OUTLINED_FUNCTION_6_11();
          iAP2MsgAddVoidParam(v84, v85, 30);
        }

        return iap2_sessionControl_sendOutgoingMessage(v1, (v1 + 15));
      }

      v87 = logObjectForModule_20();
      result = os_log_type_enabled(v87, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 0;
    }

    else
    {
      v86 = logObjectForModule_20();
      result = os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 0;
    }

    OUTLINED_FUNCTION_13_0();
    _os_log_error_impl(v88, v89, v90, v91, v92, 2u);
    return 0;
  }

  return result;
}

double _createFeature_11(uint64_t a1)
{
  if (a1)
  {
    v1 = malloc_type_calloc(1uLL, 0x90uLL, 0x1060040318D9E5CuLL);
    if (v1)
    {
      *v1 = 0;
      v1[96] = 0;
      *(v1 + 52) = 0;
      *(v1 + 2) = 0;
      *(v1 + 3) = 0;
      *(v1 + 1) = 0;
      result = 0.0;
      *(v1 + 40) = 0u;
      *(v1 + 56) = 0u;
      *(v1 + 72) = 0u;
      *(v1 + 15) = 0;
      *(v1 + 16) = 0;
      *(v1 + 14) = 0;
      *(v1 + 68) = 0;
    }
  }

  return result;
}

uint64_t _destroyFeature_11(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      v3 = v2[1];
      if (v3)
      {
        CFRelease(v3);
        v2[1] = 0;
      }

      v4 = v2[2];
      if (v4)
      {
        CFRelease(v4);
        v2[2] = 0;
      }

      v5 = v2[3];
      if (v5)
      {
        CFRelease(v5);
        v2[3] = 0;
      }

      v6 = v2[4];
      if (v6)
      {
        CFRelease(v6);
        v2[4] = 0;
      }

      v7 = v2[14];
      if (v7)
      {
        CFRelease(v7);
        v2[14] = 0;
      }

      v8 = v2[5];
      if (v8)
      {
        CFRelease(v8);
        v2[5] = 0;
      }

      v9 = v2[6];
      if (v9)
      {
        CFRelease(v9);
        v2[6] = 0;
      }

      if (*v1)
      {
        free(*v1);
        *v1 = 0;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _checkIdentificationInfo_19(uint64_t a1)
{
  if (!iap2_feature_getFeature(a1, 0x14u))
  {
    v2 = OUTLINED_FUNCTION_16_12();
    iap2_features_createFeature(v2, v3);
  }

  v4 = OUTLINED_FUNCTION_16_12();
  Feature = iap2_feature_getFeature(v4, v5);
  if (!Feature)
  {
    return 17;
  }

  v7 = Feature;
  v18 = 0;
  v8 = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo_kMsgVehicleStatusList, 3u, &v18);
  v9 = v8;
  if (v18 != 1 || v8)
  {
    if ((v18 & 1) == 0 && *(v7 + 137) == 1)
    {
      v9 = 14;
      iap2_identification_addRejectGroup(a1, 21, *(v7 + 104), 0xEu);
    }
  }

  else if (*(v7 + 137))
  {
    v10 = OUTLINED_FUNCTION_16_12();
    iap2_features_createFeature(v10, v11);
    v12 = OUTLINED_FUNCTION_16_12();
    iap2_identification_setIdentifiedForFeature(v12);
    return 0;
  }

  else
  {
    v13 = &dword_1001C3AFC;
    v14 = 3;
    do
    {
      v15 = *(v13 - 2);
      v16 = *v13;
      v13 += 3;
      v9 = 14;
      iap2_identification_rejectMsgID(a1, v15, v16, 0xEu);
      --v14;
    }

    while (v14);
  }

  return v9;
}

BOOL _parseIdentificationParams_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v467 = 0;
  if (!a1 || !a2 || !a3)
  {
    return v3;
  }

  v6 = a1;
  if (!iap2_feature_getFeature(a1, 0x14u))
  {
    v7 = OUTLINED_FUNCTION_16_12();
    iap2_features_createFeature(v7, v8);
  }

  v9 = OUTLINED_FUNCTION_16_12();
  Feature = iap2_feature_getFeature(v9, v10);
  if (!Feature)
  {
    return 0;
  }

  v459 = Feature;
  v465 = v6;
  ParamID = iAP2MsgGetParamID(a3);
  v464 = ParamID;
  if (ParamID != 21)
  {
    v13 = ParamID;
    if (ParamID != 20)
    {
      v375 = gLogObjects;
      v376 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 41)
      {
        v377 = *(gLogObjects + 320);
      }

      else if (OUTLINED_FUNCTION_21())
      {
        *buf = 134218240;
        v469 = v375;
        OUTLINED_FUNCTION_17_0();
        v470 = v376;
        OUTLINED_FUNCTION_22_5();
        _os_log_error_impl(v398, v399, v400, v401, v402, 0x12u);
      }

      if (OUTLINED_FUNCTION_21())
      {
        MsgID = iAP2MsgGetMsgID(a2);
        *buf = 67109376;
        LODWORD(v469) = v13;
        OUTLINED_FUNCTION_3_25(MsgID);
        OUTLINED_FUNCTION_22_5();
        _os_log_error_impl(v393, v394, v395, v396, v397, 0xEu);
      }

      v3 = 0;
      v390 = 0;
      v19 = 10;
      v6 = v465;
      goto LABEL_353;
    }

    v14 = OUTLINED_FUNCTION_30_4();
    FirstParam = iAP2MsgGetFirstParam(v14, v15);
    NextParam = FirstParam;
    if (FirstParam)
    {
      DataAsU16 = 0;
      v460 = 0;
      v462 = 0;
      Mutable = 0;
      v455 = 0;
      v457 = 0;
      v452 = 0;
      DataAsU32 = 0;
      v441 = 0;
      v443 = 0;
      v445 = 0;
      v447 = 0;
      HIDWORD(v432) = 0;
      v436 = 0;
      cf = 0;
      v19 = 10;
      *&v17 = 67109632;
      v429 = v17;
      do
      {
        v20 = iAP2MsgGetParamID(NextParam);
        if (gLogObjects && gNumLogObjects >= 41)
        {
          v21 = *(gLogObjects + 320);
        }

        else
        {
          v22 = OUTLINED_FUNCTION_11();
          v21 = &_os_log_default;
          if (v22)
          {
            OUTLINED_FUNCTION_0_15(v22, v23, v24, v25, v26, v27, v28, v29, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v30);
            OUTLINED_FUNCTION_10_6();
            _os_log_error_impl(v92, v93, v94, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v95, 0x12u);
            v21 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          LODWORD(v469) = 20;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "msgParamID: %d", buf, 8u);
        }

        switch(v20)
        {
          case 0:
            v31 = OUTLINED_FUNCTION_12_11();
            DataAsU16 = iAP2MsgGetDataAsU16(v31, v32);
            if (v467)
            {
              if (gLogObjects && gNumLogObjects >= 41)
              {
                v33 = *(gLogObjects + 320);
              }

              else
              {
                v160 = OUTLINED_FUNCTION_11();
                if (v160)
                {
                  OUTLINED_FUNCTION_0_15(v160, v161, v162, v163, v164, v165, v166, v167, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v168);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v300, v301, v302, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v303, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v114 = "Got invalid identifier";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            v436 = 1;
            break;
          case 1:
            if (v460)
            {
              CFRelease(v460);
            }

            v53 = OUTLINED_FUNCTION_12_11();
            v460 = iAP2MsgCopyDataAsCFString(v53, v54);
            if (v467)
            {
              if (gLogObjects && gNumLogObjects >= 41)
              {
                v55 = *(gLogObjects + 320);
              }

              else
              {
                v169 = OUTLINED_FUNCTION_11();
                if (v169)
                {
                  OUTLINED_FUNCTION_0_15(v169, v170, v171, v172, v173, v174, v175, v176, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v177);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v304, v305, v306, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v307, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v114 = "Got invalid vehicleInfoName";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            cf = 1;
            break;
          case 2:
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
            }

            v43 = OUTLINED_FUNCTION_12_11();
            DataAsU8 = iAP2MsgGetDataAsU8(v43, v44);
            valuePtr = DataAsU8;
            if (v467)
            {
              if (gLogObjects && gNumLogObjects >= 41)
              {
                v46 = *(gLogObjects + 320);
              }

              else
              {
                v133 = OUTLINED_FUNCTION_11();
                if (v133)
                {
                  OUTLINED_FUNCTION_0_15(v133, v134, v135, v136, v137, v138, v139, v140, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v141);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v288, v289, v290, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v291, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v114 = "Got invalid engineTypes";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            if (DataAsU8 <= 3)
            {
              v96 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
              v97 = Mutable;
              goto LABEL_107;
            }

            if (gLogObjects && gNumLogObjects >= 41)
            {
              v250 = *(gLogObjects + 320);
            }

            else
            {
              v262 = OUTLINED_FUNCTION_11();
              v250 = &_os_log_default;
              if (v262)
              {
                OUTLINED_FUNCTION_0_15(v262, v263, v264, v265, v266, v267, v268, v269, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v270);
                OUTLINED_FUNCTION_10_6();
                _os_log_error_impl(v344, v345, v346, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v347, 0x12u);
                v250 = &_os_log_default;
              }
            }

            if (os_log_type_enabled(v250, OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_3_14();
              _os_log_error_impl(&_mh_execute_header, v250, OS_LOG_TYPE_ERROR, "engineType >= eiAP2ParamID_VehicleInformationComponent_EngineType_Unknown", v271, 2u);
            }

            break;
          case 6:
            if (v455)
            {
              CFRelease(v455);
            }

            v68 = OUTLINED_FUNCTION_12_11();
            v455 = iAP2MsgCopyDataAsCFString(v68, v69);
            if (v467)
            {
              if (gLogObjects && gNumLogObjects >= 41)
              {
                v70 = *(gLogObjects + 320);
              }

              else
              {
                v214 = OUTLINED_FUNCTION_11();
                if (v214)
                {
                  OUTLINED_FUNCTION_0_15(v214, v215, v216, v217, v218, v219, v220, v221, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v222);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v324, v325, v326, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v327, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v114 = "Got invalid displayName";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 8:
            if (v457)
            {
              CFRelease(v457);
            }

            v71 = OUTLINED_FUNCTION_12_11();
            v457 = iAP2MsgCopyDataAsCFString(v71, v72);
            if (v467)
            {
              if (gLogObjects && gNumLogObjects >= 41)
              {
                v73 = *(gLogObjects + 320);
              }

              else
              {
                v223 = OUTLINED_FUNCTION_11();
                if (v223)
                {
                  OUTLINED_FUNCTION_0_15(v223, v224, v225, v226, v227, v228, v229, v230, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v231);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v328, v329, v330, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v331, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v114 = "Got invalid mapDisplayName";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 10:
            if (v462)
            {
              CFRelease(v462);
            }

            v47 = OUTLINED_FUNCTION_12_11();
            v462 = iAP2MsgCopyDataAsCFString(v47, v48);
            if (v467)
            {
              if (gLogObjects && gNumLogObjects >= 41)
              {
                v49 = *(gLogObjects + 320);
              }

              else
              {
                v142 = OUTLINED_FUNCTION_11();
                if (v142)
                {
                  OUTLINED_FUNCTION_0_15(v142, v143, v144, v145, v146, v147, v148, v149, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v150);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v292, v293, v294, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v295, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v114 = "Got invalid vehicleColorHexCode";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 11:
            if (!v452)
            {
              v452 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
            }

            v56 = OUTLINED_FUNCTION_12_11();
            valuePtr = iAP2MsgGetDataAsU8(v56, v57);
            if (v467)
            {
              if (gLogObjects && gNumLogObjects >= 41)
              {
                v58 = *(gLogObjects + 320);
              }

              else
              {
                v178 = OUTLINED_FUNCTION_11();
                if (v178)
                {
                  OUTLINED_FUNCTION_0_15(v178, v179, v180, v181, v182, v183, v184, v185, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v186);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v308, v309, v310, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v311, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v114 = "Got invalid connectorTypes";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            v96 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
            v97 = v452;
LABEL_107:
            CFArrayAppendValue(v97, v96);
            CFRelease(v96);
            break;
          case 12:
            v59 = OUTLINED_FUNCTION_12_11();
            DataAsU32 = iAP2MsgGetDataAsU32(v59, v60);
            if (v467)
            {
              if (gLogObjects && gNumLogObjects >= 41)
              {
                v61 = *(gLogObjects + 320);
              }

              else
              {
                v187 = OUTLINED_FUNCTION_11();
                if (v187)
                {
                  OUTLINED_FUNCTION_0_15(v187, v188, v189, v190, v191, v192, v193, v194, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v195);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v312, v313, v314, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v315, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v114 = "Got invalid powerForConnectorTypeCCS1";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 13:
            v77 = OUTLINED_FUNCTION_12_11();
            LODWORD(v441) = iAP2MsgGetDataAsU32(v77, v78);
            if (v467)
            {
              if (gLogObjects && gNumLogObjects >= 41)
              {
                v79 = *(gLogObjects + 320);
              }

              else
              {
                v241 = OUTLINED_FUNCTION_11();
                if (v241)
                {
                  OUTLINED_FUNCTION_0_15(v241, v242, v243, v244, v245, v246, v247, v248, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v249);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v336, v337, v338, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v339, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v114 = "Got invalid powerForConnectorTypeCCS2";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 14:
            v74 = OUTLINED_FUNCTION_12_11();
            HIDWORD(v441) = iAP2MsgGetDataAsU32(v74, v75);
            if (v467)
            {
              if (gLogObjects && gNumLogObjects >= 41)
              {
                v76 = *(gLogObjects + 320);
              }

              else
              {
                v232 = OUTLINED_FUNCTION_11();
                if (v232)
                {
                  OUTLINED_FUNCTION_0_15(v232, v233, v234, v235, v236, v237, v238, v239, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v240);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v332, v333, v334, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v335, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v114 = "Got invalid powerForConnectorTypeJ1772";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 15:
            v37 = OUTLINED_FUNCTION_12_11();
            LODWORD(v443) = iAP2MsgGetDataAsU32(v37, v38);
            if (v467)
            {
              if (gLogObjects && gNumLogObjects >= 41)
              {
                v39 = *(gLogObjects + 320);
              }

              else
              {
                v115 = OUTLINED_FUNCTION_11();
                if (v115)
                {
                  OUTLINED_FUNCTION_0_15(v115, v116, v117, v118, v119, v120, v121, v122, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v123);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v280, v281, v282, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v283, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v114 = "Got invalid powerForConnectorTypeCHAdeMO";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 16:
            v50 = OUTLINED_FUNCTION_12_11();
            HIDWORD(v443) = iAP2MsgGetDataAsU32(v50, v51);
            if (v467)
            {
              if (gLogObjects && gNumLogObjects >= 41)
              {
                v52 = *(gLogObjects + 320);
              }

              else
              {
                v151 = OUTLINED_FUNCTION_11();
                if (v151)
                {
                  OUTLINED_FUNCTION_0_15(v151, v152, v153, v154, v155, v156, v157, v158, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v159);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v296, v297, v298, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v299, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v114 = "Got invalid powerForConnectorTypeMennekes";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 17:
            v40 = OUTLINED_FUNCTION_12_11();
            LODWORD(v445) = iAP2MsgGetDataAsU32(v40, v41);
            if (v467)
            {
              if (gLogObjects && gNumLogObjects >= 41)
              {
                v42 = *(gLogObjects + 320);
              }

              else
              {
                v124 = OUTLINED_FUNCTION_11();
                if (v124)
                {
                  OUTLINED_FUNCTION_0_15(v124, v125, v126, v127, v128, v129, v130, v131, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v132);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v284, v285, v286, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v287, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v114 = "Got invalid powerForConnectorTypeGBT_DC";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 18:
            v34 = OUTLINED_FUNCTION_12_11();
            HIDWORD(v445) = iAP2MsgGetDataAsU32(v34, v35);
            if (v467)
            {
              if (gLogObjects && gNumLogObjects >= 41)
              {
                v36 = *(gLogObjects + 320);
              }

              else
              {
                v101 = OUTLINED_FUNCTION_11();
                if (v101)
                {
                  OUTLINED_FUNCTION_0_15(v101, v102, v103, v104, v105, v106, v107, v108, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v109);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v276, v277, v278, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v279, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v114 = "Got invalid powerForConnectorTypeGBT_AC";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 19:
            v62 = OUTLINED_FUNCTION_12_11();
            LODWORD(v447) = iAP2MsgGetDataAsU32(v62, v63);
            if (v467)
            {
              if (gLogObjects && gNumLogObjects >= 41)
              {
                v64 = *(gLogObjects + 320);
              }

              else
              {
                v196 = OUTLINED_FUNCTION_11();
                if (v196)
                {
                  OUTLINED_FUNCTION_0_15(v196, v197, v198, v199, v200, v201, v202, v203, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v204);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v316, v317, v318, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v319, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v114 = "Got invalid powerForConnectorTypeTesla";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            v98 = OUTLINED_FUNCTION_12_11();
            HIDWORD(v432) = iAP2MsgGetDataAsU32(v98, v99);
            if (v467)
            {
              if (gLogObjects && gNumLogObjects >= 41)
              {
                v100 = *(gLogObjects + 320);
              }

              else
              {
                v251 = OUTLINED_FUNCTION_11();
                if (v251)
                {
                  OUTLINED_FUNCTION_0_15(v251, v252, v253, v254, v255, v256, v257, v258, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v259);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v340, v341, v342, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v343, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v114 = "Got invalid powerForConnectorTypeNACS_DC";
                goto LABEL_183;
              }

              goto LABEL_184;
            }

            break;
          case 20:
            v65 = OUTLINED_FUNCTION_12_11();
            HIDWORD(v447) = iAP2MsgGetDataAsU32(v65, v66);
            if (v467)
            {
              if (gLogObjects && gNumLogObjects >= 41)
              {
                v67 = *(gLogObjects + 320);
              }

              else
              {
                v205 = OUTLINED_FUNCTION_11();
                if (v205)
                {
                  OUTLINED_FUNCTION_0_15(v205, v206, v207, v208, v209, v210, v211, v212, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v213);
                  OUTLINED_FUNCTION_10_6();
                  _os_log_error_impl(v320, v321, v322, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v323, 0x12u);
                }
              }

              if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_11_11();
                v114 = "Got invalid powerForConnectorTypeNACS_AC";
LABEL_183:
                _os_log_error_impl(v110, v111, v112, v114, v113, 2u);
              }

LABEL_184:
              v19 = 9;
            }

            break;
          default:
            if (gLogObjects && gNumLogObjects >= 41)
            {
              v80 = *(gLogObjects + 320);
            }

            else
            {
              v81 = OUTLINED_FUNCTION_11();
              v80 = &_os_log_default;
              if (v81)
              {
                OUTLINED_FUNCTION_0_15(v81, v82, v83, v84, v85, v86, v87, v88, v403, v404, v405, v406, v407, v409, v411, v414, v417, v420, v423, v426, v429, *(&v429 + 1), v431, v432, v89);
                OUTLINED_FUNCTION_10_6();
                _os_log_error_impl(v272, v273, v274, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v275, 0x12u);
                v80 = &_os_log_default;
              }
            }

            if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
            {
              iAP2MsgGetMsgID(a2);
              OUTLINED_FUNCTION_27_4(*&v429);
              OUTLINED_FUNCTION_29_4(v90, 20);
              _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "Unknown Subparam ID: %d in Param ID: %d for Msg ID: 0x%04X - ignoring subparam", v91, 0x14u);
            }

            break;
        }

        v260 = OUTLINED_FUNCTION_30_4();
        NextParam = iAP2MsgGetNextParam(v260, v261, NextParam);
      }

      while (NextParam);
      if ((v436 & cf & 1) != 0 && v19 != 9)
      {
        v378 = v457;
        v379 = DataAsU16;
        *v459 = DataAsU16;
        v380 = *(v459 + 8);
        v381 = v452;
        v382 = v455;
        if (v380)
        {
          CFRelease(v380);
          *(v459 + 8) = 0;
        }

        if (v460)
        {
          *(v459 + 8) = CFRetain(v460);
        }

        v383 = *(v459 + 16);
        if (v383)
        {
          CFRelease(v383);
          *(v459 + 16) = 0;
        }

        if (Mutable)
        {
          *(v459 + 16) = CFRetain(Mutable);
        }

        v384 = *(v459 + 24);
        if (v384)
        {
          CFRelease(v384);
          *(v459 + 24) = 0;
        }

        if (v455)
        {
          *(v459 + 24) = CFRetain(v455);
        }

        v385 = *(v459 + 32);
        if (v385)
        {
          CFRelease(v385);
          *(v459 + 32) = 0;
        }

        if (v457)
        {
          *(v459 + 32) = CFRetain(v457);
        }

        v386 = *(v459 + 40);
        if (v386)
        {
          CFRelease(v386);
          *(v459 + 40) = 0;
        }

        if (v462)
        {
          *(v459 + 40) = CFRetain(v462);
        }

        v387 = *(v459 + 48);
        if (v387)
        {
          CFRelease(v387);
          *(v459 + 48) = 0;
        }

        if (v452)
        {
          *(v459 + 48) = CFRetain(v452);
        }

        v19 = 0;
        *(v459 + 56) = DataAsU32;
        *(v459 + 60) = v441;
        *(v459 + 68) = v443;
        *(v459 + 76) = v445;
        *(v459 + 84) = v447;
        *(v459 + 88) = HIDWORD(v432);
        *(v459 + 92) = HIDWORD(v447);
        *(v459 + 96) = 1;
        NextParam = Mutable;
        FirstParam = v460;
        goto LABEL_334;
      }

      v379 = DataAsU16;
      v381 = v452;
      NextParam = Mutable;
      v382 = v455;
      v378 = v457;
      FirstParam = v460;
      if (v19 != 10)
      {
LABEL_334:
        if (FirstParam)
        {
          CFRelease(FirstParam);
        }

        if (NextParam)
        {
          CFRelease(NextParam);
        }

        if (v382)
        {
          CFRelease(v382);
        }

        if (v378)
        {
          CFRelease(v378);
        }

        if (v462)
        {
          CFRelease(v462);
        }

        if (v381)
        {
          CFRelease(v381);
        }

        v390 = v379;
        goto LABEL_352;
      }
    }

    else
    {
      v381 = 0;
      v462 = 0;
      v378 = 0;
      v382 = 0;
      v379 = 0;
    }

    v19 = 2;
    goto LABEL_334;
  }

  v348 = OUTLINED_FUNCTION_30_4();
  v350 = iAP2MsgGetFirstParam(v348, v349);
  if (!v350)
  {
    v389 = 0;
LABEL_348:
    v19 = 2;
    goto LABEL_349;
  }

  v351 = v350;
  v458 = 0;
  v456 = 0;
  v454 = 0;
  v451 = 0;
  allocator = 0;
  v446 = 0;
  v448 = 0;
  v433 = 0;
  v428 = 0;
  v430 = 0;
  v425 = 0;
  v422 = 0;
  v419 = 0;
  v416 = 0;
  IsDataVoid = 0;
  v442 = 0;
  v444 = 0;
  v440 = 0;
  v437 = 0;
  v438 = 0;
  v461 = 0;
  v463 = 0;
  cfa = 0;
  v427 = 0;
  v424 = 0;
  v421 = 0;
  v418 = 0;
  v415 = 0;
  v412 = 0;
  v408 = 0;
  v410 = 0;
  v19 = 10;
  do
  {
    v352 = iAP2MsgGetParamID(v351);
    v353 = gLogObjects;
    if (gLogObjects && gNumLogObjects >= 41)
    {
      v354 = *(gLogObjects + 320);
    }

    else
    {
      v354 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v469 = v353;
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_28_4();
        v354 = &_os_log_default;
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v359, v360, v361, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v362, 0x12u);
      }
    }

    if (os_log_type_enabled(v354, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v469) = 21;
      _os_log_debug_impl(&_mh_execute_header, v354, OS_LOG_TYPE_DEBUG, "msgParamID: %d", buf, 8u);
    }

    switch(v352)
    {
      case 0:
        if (v463)
        {
          v19 = 5;
          v355 = 1;
        }

        else
        {
          v365 = OUTLINED_FUNCTION_23_5();
          LOWORD(v408) = iAP2MsgGetDataAsU16(v365, v366);
          v355 = v467 == 0;
        }

        v463 = v355;
        break;
      case 1:
        if (v461)
        {
          v19 = 5;
          v356 = 1;
        }

        else
        {
          if (cfa)
          {
            CFRelease(cfa);
          }

          v363 = OUTLINED_FUNCTION_23_5();
          cfa = iAP2MsgCopyDataAsCFString(v363, v364);
          v356 = v467 == 0;
        }

        v461 = v356;
        break;
      case 3:
        if (v437)
        {
          v19 = 5;
        }

        else
        {
          BYTE4(v408) = iAP2MsgIsDataVoid(v351);
        }

        v437 = 1;
        break;
      case 4:
        if (v438)
        {
          v19 = 5;
        }

        else
        {
          LOBYTE(v410) = iAP2MsgIsDataVoid(v351);
        }

        v438 = 1;
        break;
      case 6:
        if (v440)
        {
          v19 = 5;
        }

        else
        {
          BYTE4(v410) = iAP2MsgIsDataVoid(v351);
        }

        v440 = 1;
        break;
      case 9:
        if (v448)
        {
          v19 = 5;
        }

        else
        {
          IsDataVoid = iAP2MsgIsDataVoid(v351);
        }

        LOBYTE(v448) = 1;
        break;
      case 10:
        if ((v448 & 0x100000000) != 0)
        {
          v19 = 5;
        }

        else
        {
          v416 = iAP2MsgIsDataVoid(v351);
        }

        BYTE4(v448) = 1;
        break;
      case 11:
        if (allocator)
        {
          v19 = 5;
        }

        else
        {
          v419 = iAP2MsgIsDataVoid(v351);
        }

        allocator = 1;
        break;
      case 12:
        if (v451)
        {
          v19 = 5;
        }

        else
        {
          v422 = iAP2MsgIsDataVoid(v351);
        }

        LOBYTE(v451) = 1;
        break;
      case 13:
        if ((v451 & 0x100000000) != 0)
        {
          v19 = 5;
        }

        else
        {
          v425 = iAP2MsgIsDataVoid(v351);
        }

        BYTE4(v451) = 1;
        break;
      case 14:
        if (v454)
        {
          v19 = 5;
        }

        else
        {
          v428 = iAP2MsgIsDataVoid(v351);
        }

        v454 = 1;
        break;
      case 15:
        if (v456)
        {
          v19 = 5;
        }

        else
        {
          v430 = iAP2MsgIsDataVoid(v351);
        }

        v456 = 1;
        break;
      case 16:
        if (v458)
        {
          v19 = 5;
        }

        else
        {
          v433 = iAP2MsgIsDataVoid(v351);
        }

        v458 = 1;
        break;
      case 17:
        if (v442)
        {
          v19 = 5;
        }

        else
        {
          v412 = iAP2MsgIsDataVoid(v351);
        }

        LOBYTE(v442) = 1;
        break;
      case 18:
        if ((v442 & 0x100000000) != 0)
        {
          v19 = 5;
        }

        else
        {
          v415 = iAP2MsgIsDataVoid(v351);
        }

        BYTE4(v442) = 1;
        break;
      case 19:
        if (v444)
        {
          v19 = 5;
        }

        else
        {
          v418 = iAP2MsgIsDataVoid(v351);
        }

        LOBYTE(v444) = 1;
        break;
      case 20:
        if ((v444 & 0x100000000) != 0)
        {
          v19 = 5;
        }

        else
        {
          v421 = iAP2MsgIsDataVoid(v351);
        }

        BYTE4(v444) = 1;
        break;
      case 21:
        if (v446)
        {
          v19 = 5;
        }

        else
        {
          v424 = iAP2MsgIsDataVoid(v351);
        }

        LOBYTE(v446) = 1;
        break;
      case 30:
        if ((v446 & 0x100000000) != 0)
        {
          v19 = 5;
        }

        else
        {
          v427 = iAP2MsgIsDataVoid(v351);
        }

        BYTE4(v446) = 1;
        break;
      default:
        v357 = gLogObjects;
        if (gLogObjects && gNumLogObjects >= 41)
        {
          v358 = *(gLogObjects + 320);
        }

        else
        {
          v358 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v469 = v357;
            OUTLINED_FUNCTION_17_0();
            OUTLINED_FUNCTION_28_4();
            v358 = &_os_log_default;
            OUTLINED_FUNCTION_13_0();
            _os_log_error_impl(v371, v372, v373, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v374, 0x12u);
          }
        }

        if (os_log_type_enabled(v358, OS_LOG_TYPE_INFO))
        {
          iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_27_4(1.5048e-36);
          OUTLINED_FUNCTION_29_4(v367, 21);
          _os_log_impl(&_mh_execute_header, v358, OS_LOG_TYPE_INFO, "Unknown Subparam ID: %d in Param ID: %d for Msg ID: 0x%04X - ignoring subparam", v368, 0x14u);
        }

        break;
    }

    v369 = OUTLINED_FUNCTION_30_4();
    v351 = iAP2MsgGetNextParam(v369, v370, v351);
  }

  while (v351);
  if (v463 && v461 && v19 != 5)
  {
    *(v459 + 104) = v408;
    v388 = *(v459 + 112);
    v389 = cfa;
    if (v388)
    {
      CFRelease(v388);
      *(v459 + 112) = 0;
    }

    if (cfa)
    {
      *(v459 + 112) = CFRetain(cfa);
    }

    v19 = 0;
    *(v459 + 120) = BYTE4(v408) & 1;
    *(v459 + 121) = v410 & 1;
    *(v459 + 122) = BYTE4(v410) & 1;
    *(v459 + 123) = IsDataVoid;
    *(v459 + 124) = v416;
    *(v459 + 125) = v419;
    *(v459 + 126) = v422;
    *(v459 + 127) = v425;
    *(v459 + 128) = v428;
    *(v459 + 129) = v430;
    *(v459 + 130) = v433;
    *(v459 + 131) = v412;
    *(v459 + 132) = v415;
    *(v459 + 133) = v418;
    *(v459 + 134) = v421;
    *(v459 + 135) = v424;
    *(v459 + 136) = v427;
    *(v459 + 137) = 1;
    goto LABEL_349;
  }

  v389 = cfa;
  if (v19 == 10)
  {
    goto LABEL_348;
  }

LABEL_349:
  if (v389)
  {
    CFRelease(v389);
  }

  v390 = 0;
LABEL_352:
  v3 = (v467 | v19) == 0;
  if (v19)
  {
LABEL_353:
    iap2_identification_addRejectGroup(v6, v464, v390, v19);
  }

  return v3;
}

uint64_t iap2_oobBtPairing2_accessoryInfoHandler(uint64_t a1, uint64_t a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v6 = *(gLogObjects + 400);
  }

  else
  {
    v6 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v161 = v4;
      OUTLINED_FUNCTION_49_2();
      *&v161[10] = v5;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v95, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v8 = *(a1 + 8);
    }

    else
    {
      v8 = 0;
    }

    *buf = 138412290;
    *v161 = v8;
    OUTLINED_FUNCTION_79_0(&_mh_execute_header, v6, v7, "iAP2OOBBTPairing2 AccessoryInfo Handler %@", buf);
  }

  v9 = 0;
  if (!a1 || !a2)
  {
    return v9;
  }

  v156 = a1;
  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  v159 = 0;
  if (!FirstParam)
  {
    v157 = 0;
    v14 = 0;
    v13 = 0;
    v158 = 0;
LABEL_56:
    v63 = gLogObjects;
    v64 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 51)
    {
      v65 = *(gLogObjects + 400);
      v66 = v158;
      v67 = v156;
    }

    else
    {
      v65 = &_os_log_default;
      v66 = v158;
      v67 = v156;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v161 = v63;
        OUTLINED_FUNCTION_49_2();
        *&v161[10] = v64;
        OUTLINED_FUNCTION_27_5();
        OUTLINED_FUNCTION_10(v96, v97, v98, v99, v100);
      }
    }

    if (!os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
LABEL_68:
      Feature = iap2_feature_getFeature(v67, 0x19u);
      if (!Feature)
      {
        goto LABEL_94;
      }

      if (v159)
      {
        goto LABEL_94;
      }

      v76 = Feature;
      if (*(Feature + 16) != 1)
      {
        goto LABEL_94;
      }

      buf[0] = 0;
      if (!iap2_identification_checkRequiredMsgIDs(v67, &gskMsgOOBBTPairing2MainList, 4, buf))
      {
        goto LABEL_94;
      }

      if ((v157 & (v66 != 0)) != 1)
      {
        v82 = gLogObjects;
        v83 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 51)
        {
          v84 = *(gLogObjects + 400);
        }

        else
        {
          v84 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v161 = v82;
            OUTLINED_FUNCTION_49_2();
            *&v161[10] = v83;
            OUTLINED_FUNCTION_27_5();
            OUTLINED_FUNCTION_10(v107, v108, v109, v110, v111);
          }
        }

        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          v101 = *(v67 + 8);
          if (v66)
          {
            CFDataGetLength(v66);
          }

          *buf = 138413314;
          *v161 = v101;
          OUTLINED_FUNCTION_49_2();
          *&v161[10] = v14;
          *&v161[14] = v117;
          *&v161[16] = v157 & 1;
          *&v161[20] = v117;
          *&v161[22] = v66 != 0;
          *&v161[26] = 2048;
          v162 = v118;
          OUTLINED_FUNCTION_27_5();
          _os_log_error_impl(v119, v120, OS_LOG_TYPE_ERROR, v121, v122, 0x28u);
        }

        goto LABEL_94;
      }

      v77 = _copyUUIDForComponentID(v76, v14);
      v78 = iap2_identification_copyMacAddressForComponentID(v67, v14);
      v79 = gLogObjects;
      v80 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 51)
      {
        v81 = *(gLogObjects + 400);
      }

      else
      {
        v81 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v161 = v79;
          OUTLINED_FUNCTION_49_2();
          *&v161[10] = v80;
          OUTLINED_FUNCTION_26_6();
          OUTLINED_FUNCTION_10(v102, v103, v104, v105, v106);
        }
      }

      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *v161 = v14;
        *&v161[4] = 2112;
        *&v161[6] = v77;
        *&v161[14] = 2112;
        *&v161[16] = v78;
        OUTLINED_FUNCTION_26_6();
        _os_log_impl(v85, v86, OS_LOG_TYPE_DEFAULT, v87, v88, 0x1Cu);
      }

      if (v77)
      {
        v89 = v78 == 0;
      }

      else
      {
        v89 = 1;
      }

      v90 = !v89;
      if (v89)
      {
        v92 = gLogObjects;
        v93 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 51)
        {
          v94 = *(gLogObjects + 400);
        }

        else
        {
          v94 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v161 = v92;
            OUTLINED_FUNCTION_49_2();
            *&v161[10] = v93;
            OUTLINED_FUNCTION_26_6();
            OUTLINED_FUNCTION_10(v123, v124, v125, v126, v127);
          }
        }

        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          v112 = *(v156 + 8);
          *buf = 138413058;
          *v161 = v112;
          *&v161[8] = 2112;
          *&v161[10] = v77;
          *&v161[18] = 2112;
          *&v161[20] = v78;
          LOWORD(v162) = 1024;
          *(&v162 + 2) = v14;
          OUTLINED_FUNCTION_26_6();
          _os_log_error_impl(v113, v114, OS_LOG_TYPE_ERROR, v115, v116, 0x26u);
        }

        v66 = v158;
        if (!v78)
        {
          v90 = 0;
          goto LABEL_107;
        }
      }

      else
      {
        v66 = v158;
        platform_oobBtPairing2_accessoryInfo(*(v67 + 8), v77, v78, v158, v13);
        CFRelease(v77);
      }

      CFRelease(v78);
      goto LABEL_107;
    }

    v68 = *(v67 + 8);
    if (v66)
    {
      Length = CFDataGetLength(v66);
      if (v13)
      {
LABEL_64:
        v70 = CFDataGetLength(v13);
LABEL_67:
        *buf = 138412802;
        *v161 = v68;
        *&v161[8] = 2048;
        *&v161[10] = Length;
        *&v161[18] = 2048;
        *&v161[20] = v70;
        OUTLINED_FUNCTION_27_5();
        _os_log_impl(v71, v72, OS_LOG_TYPE_INFO, v73, v74, 0x20u);
        goto LABEL_68;
      }
    }

    else
    {
      Length = 0;
      if (v13)
      {
        goto LABEL_64;
      }
    }

    v70 = 0;
    goto LABEL_67;
  }

  NextParam = FirstParam;
  v158 = 0;
  v13 = 0;
  v14 = 0;
  v157 = 0;
  *&v11 = 138412290;
  v154 = v11;
  *&v11 = 134218240;
  v153 = v11;
  *&v11 = 67109376;
  v155 = v11;
  while (1)
  {
    ParamID = iAP2MsgGetParamID(NextParam);
    if (ParamID != 2)
    {
      break;
    }

    DataAsData = iAP2MsgGetDataAsData(NextParam, &v159);
    if (v159)
    {
      v128 = logObjectForModule_21();
      if (!os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_120;
      }

      MsgID = iAP2MsgGetMsgID(a2);
      OUTLINED_FUNCTION_28_5(MsgID, v138, v139, v140, v141, v142, v143, v144, v153, *(&v153 + 1), v154, *(&v154 + 1), v155);
      *v161 = 2;
      OUTLINED_FUNCTION_10_11();
      goto LABEL_119;
    }

    v22 = DataAsData;
    ParamValueLen = iAP2MsgGetParamValueLen(NextParam);
    if (!v22 || ParamValueLen != 32 || v13)
    {
      v159 = 1;
      v39 = gLogObjects;
      v40 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 51)
      {
        v41 = *(gLogObjects + 400);
      }

      else
      {
        v41 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = v153;
          *v161 = v39;
          OUTLINED_FUNCTION_49_2();
          *&v161[10] = v40;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          v41 = &_os_log_default;
        }
      }

      v54 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
      if (!v54)
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_18_11(v54, v55, v56, v57, v58, v59, v60, v61, v153, *(&v153 + 1), v62, v154, *(&v154 + 1), v155);
      v52 = v41;
      v53 = "iAP2OOBBTPairing2 AccessoryInfo: %@, more than one pairDataP256";
LABEL_52:
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, v53, v51, 0xCu);
      goto LABEL_53;
    }

    v13 = CFDataCreate(kCFAllocatorDefault, v22, 32);
LABEL_53:
    NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
    if (!NextParam)
    {
      goto LABEL_56;
    }
  }

  v16 = ParamID;
  if (ParamID != 1)
  {
    if (ParamID)
    {
      v24 = v13;
      v25 = gLogObjects;
      v26 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 51)
      {
        v27 = *(gLogObjects + 400);
      }

      else
      {
        v27 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = v153;
          *v161 = v25;
          OUTLINED_FUNCTION_49_2();
          *&v161[10] = v26;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          v27 = &_os_log_default;
        }
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_28_5(v28, v29, v30, v31, v32, v33, v34, v35, v153, *(&v153 + 1), v154, *(&v154 + 1), v155);
        *v161 = v16;
        OUTLINED_FUNCTION_10_11();
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
      }

      v13 = v24;
    }

    else
    {
      DataAsU16 = iAP2MsgGetDataAsU16(NextParam, &v159);
      if (v159)
      {
        v128 = logObjectForModule_21();
        if (!os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_120;
        }

        v129 = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_28_5(v129, v130, v131, v132, v133, v134, v135, v136, v153, *(&v153 + 1), v154, *(&v154 + 1), v155);
        *v161 = 0;
        OUTLINED_FUNCTION_10_11();
        goto LABEL_119;
      }

      v14 = DataAsU16;
      v157 = 1;
    }

    goto LABEL_53;
  }

  v18 = iAP2MsgGetDataAsData(NextParam, &v159);
  if (!v159)
  {
    v19 = v18;
    v20 = iAP2MsgGetParamValueLen(NextParam);
    if (!v19 || v20 != 32 || v158)
    {
      v159 = 1;
      v36 = gLogObjects;
      v37 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 51)
      {
        v38 = *(gLogObjects + 400);
      }

      else
      {
        v38 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = v153;
          *v161 = v36;
          OUTLINED_FUNCTION_49_2();
          *&v161[10] = v37;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          v38 = &_os_log_default;
        }
      }

      v42 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      if (!v42)
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_18_11(v42, v43, v44, v45, v46, v47, v48, v49, v153, *(&v153 + 1), v50, v154, *(&v154 + 1), v155);
      v52 = v38;
      v53 = "iAP2OOBBTPairing2 AccessoryInfo: %@, more than one pairDataP192";
      goto LABEL_52;
    }

    v158 = CFDataCreate(kCFAllocatorDefault, v19, 32);
    goto LABEL_53;
  }

  v128 = logObjectForModule_21();
  if (!os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_120;
  }

  v145 = iAP2MsgGetMsgID(a2);
  OUTLINED_FUNCTION_28_5(v145, v146, v147, v148, v149, v150, v151, v152, v153, *(&v153 + 1), v154, *(&v154 + 1), v155);
  *v161 = 1;
  OUTLINED_FUNCTION_10_11();
LABEL_119:
  _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", buf, 0xEu);
LABEL_120:
  v66 = v158;
LABEL_94:
  v90 = 0;
  v9 = 0;
  if (!v66)
  {
    if (v13)
    {
      goto LABEL_96;
    }

    return v9;
  }

LABEL_107:
  CFRelease(v66);
  v9 = v90;
  if (v13)
  {
LABEL_96:
    CFRelease(v13);
  }

  return v9;
}

uint64_t iap2_oobBtPairing2_statusHandler(uint64_t a1, uint64_t a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v6 = *(gLogObjects + 400);
  }

  else
  {
    v6 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      *buf = 134218240;
      v90 = v4;
      OUTLINED_FUNCTION_20_4();
      v91 = v5;
      OUTLINED_FUNCTION_8_0();
      _os_log_error_impl(v47, v48, v49, v50, v51, 0x12u);
    }
  }

  if (OUTLINED_FUNCTION_93())
  {
    if (a1)
    {
      v8 = *(a1 + 8);
    }

    else
    {
      v8 = 0;
    }

    *buf = 138412290;
    v90 = v8;
    OUTLINED_FUNCTION_79_0(&_mh_execute_header, v6, v7, "iAP2OOBBTPairing2 Status Handler %@", buf);
  }

  v9 = 0;
  if (!a1 || !a2)
  {
    return v9;
  }

  v85 = a1;
  v10 = OUTLINED_FUNCTION_26_1();
  FirstParam = iAP2MsgGetFirstParam(v10, v11);
  v88 = 0;
  if (FirstParam)
  {
    NextParam = FirstParam;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v87 = 0;
    *&v13 = 67109376;
    v86 = v13;
    *&v13 = 134218240;
    v83 = v13;
    while (1)
    {
      ParamID = iAP2MsgGetParamID(NextParam);
      if (ParamID == 2)
      {
        break;
      }

      v19 = ParamID;
      if (ParamID == 1)
      {
        if (!iAP2MsgIsDataVoid(NextParam))
        {
          v58 = logObjectForModule_21();
          if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            return 0;
          }

          MsgID = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_29_5(MsgID, v76, v77, v78, v79, v80, v81, v82, v83, *(&v83 + 1), v84, v85, v86);
          LODWORD(v90) = 1;
          OUTLINED_FUNCTION_12_0();
LABEL_64:
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", buf, 0xEu);
          return 0;
        }

        v15 = 2;
        goto LABEL_24;
      }

      if (ParamID)
      {
        v21 = gLogObjects;
        v22 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 51)
        {
          v23 = *(gLogObjects + 400);
        }

        else
        {
          v23 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = v83;
            v90 = v21;
            OUTLINED_FUNCTION_20_4();
            v91 = v22;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_29_5(v24, v25, v26, v27, v28, v29, v30, v31, v83, *(&v83 + 1), v84, v85, v86);
          LODWORD(v90) = v19;
          OUTLINED_FUNCTION_12_0();
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
        }
      }

      else
      {
        DataAsU16 = iAP2MsgGetDataAsU16(NextParam, &v88);
        if (v88)
        {
          v58 = logObjectForModule_21();
          if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            return 0;
          }

          v59 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_29_5(v59, v60, v61, v62, v63, v64, v65, v66, v83, *(&v83 + 1), v84, v85, v86);
          LODWORD(v90) = 0;
          OUTLINED_FUNCTION_12_0();
          goto LABEL_64;
        }

        v17 = DataAsU16;
        v87 = 1;
      }

LABEL_32:
      v32 = OUTLINED_FUNCTION_26_1();
      NextParam = iAP2MsgGetNextParam(v32, v33, NextParam);
      if (!NextParam)
      {
        goto LABEL_35;
      }
    }

    iAP2MsgGetDataAsString(NextParam, &v88);
    if (v88)
    {
      v58 = logObjectForModule_21();
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v67 = iAP2MsgGetMsgID(a2);
      OUTLINED_FUNCTION_29_5(v67, v68, v69, v70, v71, v72, v73, v74, v83, *(&v83 + 1), v84, v85, v86);
      LODWORD(v90) = 2;
      OUTLINED_FUNCTION_12_0();
      goto LABEL_64;
    }

    v15 = 4;
LABEL_24:
    v16 = 1;
    goto LABEL_32;
  }

  v87 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
LABEL_35:
  v34 = gLogObjects;
  v35 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v36 = *(gLogObjects + 400);
    v37 = v85;
  }

  else
  {
    v36 = &_os_log_default;
    v37 = v85;
    if (OUTLINED_FUNCTION_27())
    {
      *buf = 134218240;
      v90 = v34;
      OUTLINED_FUNCTION_20_4();
      v91 = v35;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v52, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v38 = *(v37 + 8);
    *buf = 138413058;
    OUTLINED_FUNCTION_17_11();
    v92 = 2080;
    *v93 = v39;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "iAP2OOBBTPairing2 Status: %@, resultCode %d (valid %d), cancelReason %s", buf, 0x22u);
  }

  Feature = iap2_feature_getFeature(v37, 0x19u);
  if (!Feature)
  {
    return 0;
  }

  v41 = Feature;
  if (*(Feature + 16) != 1)
  {
    return 0;
  }

  buf[0] = 0;
  if (!iap2_identification_checkRequiredMsgIDs(v37, &gskMsgOOBBTPairing2MainList, 4, buf))
  {
    return 0;
  }

  v42 = _copyUUIDForComponentID(v41, v17);
  v9 = v87 & v16 & (v42 != 0);
  if (v9 == 1)
  {
    platform_oobBtPairing2_completionStatus(*(v37 + 8), v42, v15);
  }

  else
  {
    v43 = gLogObjects;
    v44 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 51)
    {
      v45 = *(gLogObjects + 400);
    }

    else
    {
      v45 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v90 = v43;
        OUTLINED_FUNCTION_20_4();
        v91 = v44;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v57, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v53 = *(v37 + 8);
      *buf = 138413570;
      OUTLINED_FUNCTION_17_11();
      v92 = v54;
      *v93 = v55;
      *&v93[4] = v54;
      *&v93[6] = v56;
      v94 = 2112;
      v95 = v42;
      _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "iAP2OOBBTPairing2 Status: %@, no resultCode (%d / %d) parameter or no componenID (%d, valid=%d)... or can't find uuid (%@), ignore message", buf, 0x2Eu);
      if (!v42)
      {
        return 0;
      }
    }

    else if (!v42)
    {
      return 0;
    }
  }

  CFRelease(v42);
  return v9;
}

uint64_t iap2_oobBtPairing2_startPairingHandler(uint64_t *a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v4 = *(gLogObjects + 400);
  }

  else
  {
    v4 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_1_2();
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v38, v39, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v40, v41, v42, v43, 0);
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v5 = a1[1];
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_79_0(v6, v7, v8, v9, v10);
  }

  if (!a1)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(a1, 0x19u);
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v12 = *(gLogObjects + 400);
  }

  else
  {
    v12 = &_os_log_default;
    if (OUTLINED_FUNCTION_27())
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_17_2(&_mh_execute_header, v44, v45, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v46, v47, v48, v49, v62);
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = a1[1];
    OUTLINED_FUNCTION_15_13();
    OUTLINED_FUNCTION_14_3();
    _os_log_impl(v14, v15, OS_LOG_TYPE_DEFAULT, v16, v17, 0x16u);
  }

  result = 0;
  if (a2 && Feature)
  {
    if (!*a2)
    {
      v19 = *(a2 + 8);
      if (v19)
      {
        if ((_getComponentIDForUUID(Feature, v19) & 0x80000000) == 0)
        {
          if (gLogObjects && gNumLogObjects >= 51)
          {
            v20 = *(gLogObjects + 400);
          }

          else
          {
            v20 = &_os_log_default;
            if (OUTLINED_FUNCTION_27())
            {
              OUTLINED_FUNCTION_3();
              OUTLINED_FUNCTION_17_2(&_mh_execute_header, v50, v51, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v52, v53, v54, v55, 0);
            }
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = a1[1];
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_1_2();
            OUTLINED_FUNCTION_14_3();
            _os_log_impl(v22, v23, OS_LOG_TYPE_INFO, v24, v25, 0x12u);
          }

          v26 = iAP2MsgInit((a1 + 15), 2816, a1[24], 0xFFFF, 0, 0);
          OUTLINED_FUNCTION_30_5(v26);
          v27 = *(a2 + 16);
          if (v27)
          {
            BytePtr = CFDataGetBytePtr(v27);
            CFDataGetLength(*(a2 + 16));
            v29 = OUTLINED_FUNCTION_26_1();
            iAP2MsgAddDataParam(v29, v30, 1, BytePtr, v31);
          }

          *(Feature + 16) = 1;
          if (gLogObjects && gNumLogObjects >= 51)
          {
            v32 = *(gLogObjects + 400);
          }

          else
          {
            v32 = &_os_log_default;
            if (OUTLINED_FUNCTION_17())
            {
              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_21_2(&_mh_execute_header, v56, v57, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v58, v59, v60, v61, v62);
            }
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = a1[1];
            iAP2MsgGetMsgID(v20);
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_6_0();
            _os_log_impl(v34, v35, OS_LOG_TYPE_DEFAULT, v36, v37, 0x12u);
          }

          iap2_sessionControl_sendOutgoingMessage(a1, v20);
          platform_oobBtPairing2_deleteParams(a2);
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t iap2_oobBtPairing2_stopPairingHandler(uint64_t *a1, uint64_t a2)
{
  v4 = HIDWORD(gLogObjects);
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v5 = *(gLogObjects + 400);
  }

  else
  {
    v5 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      HIDWORD(v75) = v4;
      OUTLINED_FUNCTION_1_2();
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v49, v50, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v51, v52, v53, v54, 0);
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v6 = a1[1];
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_79_0(v7, v8, v9, v10, v11);
  }

  if (!a1)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(a1, 0x19u);
  v13 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v14 = *(gLogObjects + 400);
  }

  else
  {
    v14 = &_os_log_default;
    if (OUTLINED_FUNCTION_27())
    {
      OUTLINED_FUNCTION_7();
      v76 = v13;
      OUTLINED_FUNCTION_17_2(&_mh_execute_header, v55, v56, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v57, v58, v59, v60, v74);
    }
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = a1[1];
    OUTLINED_FUNCTION_15_13();
    OUTLINED_FUNCTION_14_3();
    _os_log_impl(v16, v17, OS_LOG_TYPE_INFO, v18, v19, 0x16u);
  }

  result = 0;
  if (a2 && Feature)
  {
    if (*a2 == 1)
    {
      v21 = *(a2 + 8);
      if (v21)
      {
        if ((_getComponentIDForUUID(Feature, v21) & 0x80000000) == 0)
        {
          v22 = HIDWORD(gLogObjects);
          v23 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 51)
          {
            v24 = *(gLogObjects + 400);
          }

          else
          {
            v24 = &_os_log_default;
            if (OUTLINED_FUNCTION_27())
            {
              HIDWORD(v75) = v22;
              OUTLINED_FUNCTION_3();
              v76 = v23;
              OUTLINED_FUNCTION_17_2(&_mh_execute_header, v61, v62, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v63, v64, v65, v66, 0);
            }
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = a1[1];
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_1_2();
            OUTLINED_FUNCTION_14_3();
            _os_log_impl(v26, v27, OS_LOG_TYPE_INFO, v28, v29, 0x12u);
          }

          v30 = iAP2MsgInit((a1 + 15), 2819, a1[24], 0xFFFF, 0, 0);
          OUTLINED_FUNCTION_30_5(v30);
          if ((*(a2 + 16) - 2) >= 3)
          {
            v34 = gLogObjects;
            v35 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 51)
            {
              v36 = *(gLogObjects + 400);
            }

            else
            {
              v36 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v74 = 134218240;
                v75 = v34;
                OUTLINED_FUNCTION_3();
                v76 = v35;
                OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v73, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v74);
              }
            }

            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = a1[1];
              v38 = *(a2 + 16);
              OUTLINED_FUNCTION_38();
              OUTLINED_FUNCTION_1_2();
              v77 = v39;
              v78 = v40;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "iAP2OOBBTPairing2 StopPairing %@, componentID %d, unknown result! %d", &v74, 0x18u);
            }
          }

          else
          {
            v31 = OUTLINED_FUNCTION_26_1();
            iAP2MsgAddVoidParam(v31, v32, v33);
          }

          *(Feature + 16) = 0;
          v41 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 51)
          {
            v42 = *(gLogObjects + 400);
          }

          else
          {
            v42 = &_os_log_default;
            if (OUTLINED_FUNCTION_17())
            {
              OUTLINED_FUNCTION_7();
              v76 = v41;
              OUTLINED_FUNCTION_21_2(&_mh_execute_header, v67, v68, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v69, v70, v71, v72, v74);
            }
          }

          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            v43 = a1[1];
            iAP2MsgGetMsgID(v24);
            OUTLINED_FUNCTION_7();
            v76 = v44;
            OUTLINED_FUNCTION_6_0();
            _os_log_impl(v45, v46, OS_LOG_TYPE_INFO, v47, v48, 0x12u);
          }

          iap2_sessionControl_sendOutgoingMessage(a1, v24);
          platform_oobBtPairing2_deleteParams(a2);
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

_BYTE *_createFeature_12(_BYTE *a1)
{
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v4 = *(gLogObjects + 400);
  }

  else
  {
    v4 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      v12 = 134218240;
      v13 = v2;
      OUTLINED_FUNCTION_3();
      v14 = v3;
      OUTLINED_FUNCTION_8_0();
      _os_log_error_impl(v7, v8, v9, v10, v11, 0x12u);
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "iAP2OOBBTPairing2 _createFeature", &v12, 2u);
  }

  if (a1)
  {
    v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040A95220FAuLL);
    a1 = v5;
    if (v5)
    {
      v5[16] = 0;
      *v5 = OUTLINED_FUNCTION_31_6();
      *(a1 + 1) = OUTLINED_FUNCTION_31_6();
    }
  }

  return a1;
}

uint64_t _destroyFeature_12(void **a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v4 = *(gLogObjects + 400);
  }

  else
  {
    v4 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_1_2();
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v12, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17, 0);
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v5, v6, OS_LOG_TYPE_INFO, v7, v8, 2u);
  }

  result = 0;
  if (a1 && a2)
  {
    v10 = *a1;
    if (*a1)
    {
      platform_oobBtPairing2_accessoryDetached(*(a2 + 8));
      platform_oobBTPairing_decrementUserCount();
      if (*v10)
      {
        CFRelease(*v10);
        *v10 = 0;
      }

      v11 = v10[1];
      if (v11)
      {
        CFRelease(v11);
        v10[1] = 0;
      }

      if (*a1)
      {
        free(*a1);
        *a1 = 0;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _startFeatureFromDevice_9(uint64_t a1)
{
  v2 = &off_1001C3000;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v3 = *(gLogObjects + 400);
  }

  else if (OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_3_26(3.8521e-34);
    OUTLINED_FUNCTION_5_21(&_mh_execute_header, v77, v78, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
  }

  if (OUTLINED_FUNCTION_93())
  {
    *buf = 0;
    OUTLINED_FUNCTION_12_12();
    _os_log_impl(v4, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
  }

  Feature = iap2_feature_getFeature(a1, 0x19u);
  if (Feature)
  {
    buf[0] = 0;
    if (iap2_identification_checkRequiredMsgIDs(a1, &gskMsgOOBBTPairing2MainList, 4, buf))
    {
      v9 = iap2_feature_getFeature(a1, 0);
      v93 = iap2_feature_getFeature(a1, 1u);
      v10 = iap2_feature_getFeature(a1, 0x14u);
      if (v10)
      {
        v11 = *(v10 + 24);
        if (v9)
        {
LABEL_12:
          v12 = iap2_accAuthentication_copyCertificate(a1);
          v13 = iap2_accAuthentication_copyCertificateSerial(a1);
LABEL_15:
          v96 = kCFAllocatorDefault;
          Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
          v14 = iap2_identification_transportComponents(a1);
          v94 = v12;
          if (v14)
          {
            v15 = v14;
            Count = CFDictionaryGetCount(v14);
            if (Count)
            {
              v17 = Count;
              v90 = v11;
              v91 = v13;
              v92 = a1;
              v89 = &v87;
              __chkstk_darwin(Count);
              v19 = (&v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
              memset(v19, 170, v18);
              CFDictionaryGetKeysAndValues(v15, 0, v19);
              if (v17 >= 1)
              {
                *&v20 = 134218240;
                v87 = v20;
                *&v20 = 67111426;
                v88 = v20;
                v95 = Feature;
                do
                {
                  v21 = *v19;
                  if (*v19)
                  {
                    v22 = *(v21 + 5);
                    if (v22 == 5 || v22 == 3)
                    {
                      v24 = v96;
                      v25 = CFUUIDCreate(v96);
                      v26 = CFUUIDCreateString(v24, v25);
                      v27 = CFNumberCreate(v24, kCFNumberSInt16Type, v21);
                      v28 = CFDataCreate(v24, v21 + 24, 6);
                      v29 = gNumLogObjects;
                      if (gLogObjects && gNumLogObjects >= 51)
                      {
                        v30 = *(gLogObjects + 400);
                      }

                      else
                      {
                        v30 = &_os_log_default;
                        if (OUTLINED_FUNCTION_21())
                        {
                          OUTLINED_FUNCTION_20_8();
                          *&v99[10] = v29;
                          OUTLINED_FUNCTION_8_0();
                          _os_log_error_impl(v45, v46, v47, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v48, 0x12u);
                        }
                      }

                      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                      {
                        v34 = *v21;
                        v35 = *(v21 + 24);
                        v36 = *(v21 + 25);
                        v37 = *(v21 + 26);
                        v38 = *(v21 + 27);
                        v39 = *(v21 + 28);
                        v40 = *(v21 + 29);
                        *buf = v88;
                        *v99 = v34;
                        *&v99[4] = 2112;
                        *&v99[6] = v27;
                        v100 = 2112;
                        v101 = v26;
                        v102 = 0;
                        v103 = 4;
                        v104 = v35;
                        v105 = 1024;
                        v106 = v36;
                        v107 = 1024;
                        v108 = v37;
                        v109 = 1024;
                        v110 = v38;
                        v111 = 1024;
                        v112 = v39;
                        v113 = 1024;
                        v114 = v40;
                        v115 = 2112;
                        v116 = v28;
                        _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "iAP2OOBBTPairing2 _startFeatureFromDevice: add transportComponent: componentID=%d componentIDObj=%@ uuidStr=%@ macAddr=(%02X %02X %02X %02X %02X %02X) (%@)", buf, 0x4Au);
                      }

                      Feature = v95;
                      CFDictionarySetValue(*v95, v27, v26);
                      CFDictionarySetValue(*(Feature + 8), v26, v27);
                      BtComponentMutableDict = platform_oobBtPairing2_createBtComponentMutableDict(*v21, v26, *(v21 + 1), v28);
                      CFArrayAppendValue(Mutable, BtComponentMutableDict);
                      if (v25)
                      {
                        CFRelease(v25);
                      }

                      if (v26)
                      {
                        CFRelease(v26);
                      }

                      if (v27)
                      {
                        CFRelease(v27);
                      }

                      if (v28)
                      {
                        CFRelease(v28);
                      }

                      if (BtComponentMutableDict)
                      {
                        CFRelease(BtComponentMutableDict);
                      }
                    }
                  }

                  else
                  {
                    v31 = gNumLogObjects;
                    if (gLogObjects && gNumLogObjects >= 51)
                    {
                      v32 = *(gLogObjects + 400);
                    }

                    else if (OUTLINED_FUNCTION_21())
                    {
                      OUTLINED_FUNCTION_20_8();
                      *&v99[10] = v31;
                      OUTLINED_FUNCTION_8_0();
                      _os_log_error_impl(v49, v50, v51, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v52, 0x12u);
                    }

                    if (OUTLINED_FUNCTION_21())
                    {
                      *buf = 0;
                      OUTLINED_FUNCTION_8_0();
                      _os_log_error_impl(v41, v42, v43, "transportComponent is NULL!", v44, 2u);
                    }
                  }

                  ++v19;
                  --v17;
                }

                while (v17);
              }

              v11 = v90;
              v13 = v91;
              a1 = v92;
              v2 = &off_1001C3000;
            }
          }

          else
          {
            if (gLogObjects && gNumLogObjects >= 51)
            {
              v53 = *(gLogObjects + 400);
            }

            else if (OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_3_26(3.8521e-34);
              OUTLINED_FUNCTION_5_21(&_mh_execute_header, v85, v86, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
            }

            if (OUTLINED_FUNCTION_93())
            {
              *buf = 0;
              OUTLINED_FUNCTION_12_12();
              _os_log_impl(v54, v55, OS_LOG_TYPE_DEFAULT, v56, v57, 2u);
            }
          }

          isIdentifiedForCarPlay = iap2_identification_isIdentifiedForCarPlay(a1);
          v59 = *(v93 + 8);
          v60 = v94;
          AccInfoMutableDict = platform_oobBtPairing2_createAccInfoMutableDict(v59[2], v59[3], v59[1], v59[4], v59[5], v59[6], v11, v94, v13, isIdentifiedForCarPlay);
          if (gLogObjects && gNumLogObjects >= 51)
          {
            v62 = *(gLogObjects + 400);
          }

          else
          {
            v62 = &_os_log_default;
            if (OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_3_26(COERCE_FLOAT(*(v2 + 71)));
              OUTLINED_FUNCTION_5_21(&_mh_execute_header, v83, v84, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
            }
          }

          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v99 = AccInfoMutableDict;
            OUTLINED_FUNCTION_12_12();
            _os_log_debug_impl(v79, v80, OS_LOG_TYPE_DEBUG, v81, v82, 0xCu);
          }

          v63 = gLogObjects;
          v64 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 51)
          {
            v65 = *(gLogObjects + 400);
          }

          else if (OUTLINED_FUNCTION_21())
          {
            *buf = *(v2 + 71);
            *v99 = v63;
            *&v99[8] = 1024;
            *&v99[10] = v64;
            OUTLINED_FUNCTION_5_21(&_mh_execute_header, v66, v67, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v68 = OUTLINED_FUNCTION_93();
          v69 = Mutable;
          if (v68)
          {
            *buf = 138412290;
            *v99 = Mutable;
            OUTLINED_FUNCTION_12_12();
            OUTLINED_FUNCTION_79_0(v70, v71, v72, v73, v74);
          }

          platform_oobBTPairing2_incrementUserCount();
          if (!a1 || (v75 = *(a1 + 8)) == 0)
          {
            v75 = 0;
          }

          platform_oobBtPairing2_accessoryAttached(v75, AccInfoMutableDict, v69);
          if (AccInfoMutableDict)
          {
            CFRelease(AccInfoMutableDict);
          }

          if (v69)
          {
            CFRelease(v69);
          }

          if (v60)
          {
            CFRelease(v60);
          }

          if (v13)
          {
            CFRelease(v13);
          }

          return Feature != 0;
        }
      }

      else
      {
        v11 = 0;
        if (v9)
        {
          goto LABEL_12;
        }
      }

      v13 = 0;
      v12 = 0;
      goto LABEL_15;
    }
  }

  return Feature != 0;
}

uint64_t mfi4Auth_endpoint_publish(uint64_t *a1)
{
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v4 = *(gLogObjects + 440);
  }

  else
  {
    v4 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v102 = 134218240;
      *v103 = v2;
      OUTLINED_FUNCTION_3();
      v104[0] = v3;
      OUTLINED_FUNCTION_14();
      _os_log_error_impl(v57, v58, v59, v60, v61, 0x12u);
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_16_13(&_mh_execute_header, v5, v6, "mfi4Auth endpoint_publish", v7, v8, v9, v10, 0);
  }

  if (!a1 || !*a1)
  {
    return 0;
  }

  isPublished = acc_endpoint_isPublished(*a1);
  v12 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v13 = *(gLogObjects + 440);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_3();
    v104[0] = v12;
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v62, v63, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v64, v65, v66, v67, v102);
  }

  if (OUTLINED_FUNCTION_81())
  {
    v14 = *(*a1 + 24);
    v15 = *(a1 + 12);
    v102 = 67109632;
    *v103 = v14;
    *&v103[4] = 1024;
    *&v103[6] = isPublished;
    LOWORD(v104[0]) = 1024;
    *(v104 + 2) = v15;
    OUTLINED_FUNCTION_6_19();
    _os_log_impl(v16, v17, v18, v19, v20, 0x14u);
  }

  if (isPublished)
  {
    if (*(a1 + 12))
    {
      if (*a1 && (v21 = *(*a1 + 16)) != 0)
      {
        Copy = CFStringCreateCopy(kCFAllocatorDefault, v21);
      }

      else
      {
        Copy = 0;
      }

      _mfi4Auth_endpoint_cleanupSession(a1);
      _mfi4Auth_endpoint_initSession(a1, Copy);
      goto LABEL_24;
    }

    return 0;
  }

LABEL_24:
  if (mfi4Auth_endpoint_publish_onceToken != -1)
  {
    dispatch_once(&mfi4Auth_endpoint_publish_onceToken, &__block_literal_global_18);
  }

  v23 = acc_endpoint_copyProperty(*a1);
  if (acc_policies_nfcTagUseKeys(v23))
  {
    v24 = HIDWORD(gLogObjects);
    v25 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v26 = *(gLogObjects + 440);
    }

    else if (OUTLINED_FUNCTION_17())
    {
      *&v103[4] = v24;
      OUTLINED_FUNCTION_3();
      v104[0] = v25;
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v74, v75, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v76, v77, v78, v79, 0);
    }

    if (OUTLINED_FUNCTION_81())
    {
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_6_19();
      _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
    }

    if ((platform_system_unlockedSinceBoot() & 1) == 0)
    {
      v32 = HIDWORD(gLogObjects);
      v33 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v34 = *(gLogObjects + 440);
      }

      else if (OUTLINED_FUNCTION_17())
      {
        *&v103[4] = v32;
        OUTLINED_FUNCTION_3();
        v104[0] = v33;
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v91, v92, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v93, v94, v95, v96, 0);
      }

      if (OUTLINED_FUNCTION_81())
      {
        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_6_19();
        _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
      }

      platform_system_startObservingFirstUnlockNotification();
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(LocalCenter, 0, _mfi4Auth_endpoint_firstUnlockHandler, @"ACCPlatformApplicationFirstUnlockNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      if (!platform_system_unlockedSinceBoot())
      {
        v35 = 0;
        if (!v23)
        {
          return v35;
        }

        goto LABEL_68;
      }
    }
  }

  v42 = HIDWORD(gLogObjects);
  v43 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v44 = *(gLogObjects + 440);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    *&v103[4] = v42;
    OUTLINED_FUNCTION_3();
    v104[0] = v43;
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v68, v69, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v70, v71, v72, v73, 0);
  }

  if (OUTLINED_FUNCTION_81())
  {
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_6_19();
    _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
  }

  platform_sleepAssertion_createForMFi4();
  if (acc_endpoint_getTransportType(*a1) == 13)
  {
    if (!acc_userDefaults_BOOLForKey(@"SkipNFCAuth"))
    {
      *(a1[1] + 32) = 1;
      v35 = acc_endpoint_setProperty(*a1, kCFACCProperties_Endpoint_NFC_RequestSessionOpen, kCFBooleanTrue);
      if (!v23)
      {
        return v35;
      }

      goto LABEL_68;
    }

    v50 = gLogObjects;
    v51 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v52 = *(gLogObjects + 440);
    }

    else
    {
      v52 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v102 = 134218240;
        *v103 = v50;
        OUTLINED_FUNCTION_3();
        v104[0] = v51;
        OUTLINED_FUNCTION_40_1();
        _os_log_error_impl(v97, v98, v99, v100, v101, 0x12u);
      }
    }

    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_44();
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%s: SkipNFCAuth!!!", &v102, 0xCu);
    }
  }

  else
  {
    v35 = 1;
    if (acc_connection_isAuthenticated(**a1, 1u))
    {
      goto LABEL_67;
    }

    v53 = HIDWORD(gLogObjects);
    v54 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v55 = *(gLogObjects + 440);
    }

    else if (OUTLINED_FUNCTION_17())
    {
      *&v103[4] = v53;
      OUTLINED_FUNCTION_3();
      v104[0] = v54;
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v80, v81, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v82, v83, v84, v85, 0);
    }

    if (OUTLINED_FUNCTION_81())
    {
      LOWORD(v102) = 0;
      OUTLINED_FUNCTION_6_19();
      _os_log_impl(v86, v87, v88, v89, v90, 2u);
    }

    _mfi4Auth_endpoint_sendAuthSetupStart(a1);
  }

  v35 = 1;
LABEL_67:
  if (v23)
  {
LABEL_68:
    CFRelease(v23);
  }

  return v35;
}

void _mfi4Auth_endpoint_handlePropertiesDidChange(int a1, int a2, CFTypeRef cf1, uint64_t a4, const __CFDictionary *a5)
{
  if (CFEqual(cf1, CFACCTransportPlugin_EndpointPropertiesDidChangeNotification))
  {
    v6 = CFACCTransportPlugin_EndpointPropertiesDidChangeNotification_EndpointUUID;
    Value = CFDictionaryGetValue(a5, CFACCTransportPlugin_EndpointPropertiesDidChangeNotification_EndpointUUID);
    CFRetain(Value);
    EndpointWithUUID = acc_manager_getEndpointWithUUID(Value);
    if (acc_endpoint_getTransportType(EndpointWithUUID) == 13)
    {
      v9 = CFDictionaryGetValue(a5, CFACCTransportPlugin_PropertiesDidChangeNotification_ConnectionUUID);
      v10 = CFDictionaryGetValue(a5, v6);
      if (v9)
      {
        v11 = v10;
        v12 = CFGetTypeID(v9);
        if (v12 == CFStringGetTypeID() && v11 != 0)
        {
          v14 = CFGetTypeID(v11);
          if (v14 == CFStringGetTypeID())
          {
            v15 = acc_manager_getEndpointWithUUID(v11);
            if (v15)
            {
              v16 = v15;
              if (*(v15 + 7) == 14)
              {
                if (v15[7])
                {
                  v17 = CFDictionaryGetValue(a5, CFACCTransportPlugin_PropertiesDidChangeNotification_PropertiesOld);
                  v18 = CFDictionaryGetValue(a5, CFACCTransportPlugin_PropertiesDidChangeNotification_PropertiesNew);
                  v19 = gLogObjects;
                  v20 = gNumLogObjects;
                  if (gLogObjects && gNumLogObjects >= 56)
                  {
                    v21 = *(gLogObjects + 440);
                  }

                  else
                  {
                    v21 = &_os_log_default;
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134218240;
                      v46 = v19;
                      v47 = 1024;
                      LODWORD(v48) = v20;
                      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                    }
                  }

                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v46 = v18;
                    v47 = 2112;
                    v48 = v17;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "PropertiesDidchange: new %@, old %@", buf, 0x16u);
                  }

                  if (v18)
                  {
                    v22 = kCFACCProperties_Endpoint_NFC_SessionOpen;
                    v23 = CFDictionaryGetValue(v17, kCFACCProperties_Endpoint_NFC_SessionOpen);
                    v26 = v23 && (v24 = v23, v25 = CFGetTypeID(v23), v25 == CFBooleanGetTypeID()) && CFBooleanGetValue(v24) == 1;
                    v27 = CFDictionaryGetValue(v18, v22);
                    if (v27 && (v33 = v27, v34 = CFGetTypeID(v27), v34 == CFBooleanGetTypeID()))
                    {
                      v35 = CFBooleanGetValue(v33);
                      v36 = v35 == 1 && !v26;
                      if ((!v26 ^ (v35 == 1)))
                      {
                        if (!v36)
                        {
                          return;
                        }

                        goto LABEL_36;
                      }

                      if (v35 == 1)
                      {
                        acc_platform_packetLogging_logEvent(v16, "NFC Session Opened", "MFi4Auth NFC session opened", v28, v29, v30, v31, v32, v39);
                        if ((v36 & 1) == 0)
                        {
                          return;
                        }

LABEL_36:
                        v37 = *(EndpointWithUUID[7] + 16);
                        OUTLINED_FUNCTION_7_15();
                        v41 = 0x40000000;
                        v42 = ___mfi4Auth_endpoint_handlePropertiesDidChange_block_invoke;
                        v43 = &__block_descriptor_tmp_20_0;
                        v44 = Value;
                        dispatch_async(v38, block);
                        return;
                      }
                    }

                    else if (!v26)
                    {
                      return;
                    }

                    acc_platform_packetLogging_logEvent(v16, "NFC Session Closed", "MFi4Auth NFC session closed", v28, v29, v30, v31, v32, v39);
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void _mfi4Auth_endpoint_sendAuthSetupStart(NSObject *a1)
{
  if (a1)
  {
    if (a1->isa && (v2 = *(a1->isa + 2)) != 0 && (Copy = CFStringCreateCopy(kCFAllocatorDefault, v2)) != 0)
    {
      v4 = Copy;
      if (*(a1->isa + 6) == 3)
      {
        v5 = 10;
      }

      else
      {
        v5 = 0;
      }

      v6 = acc_userDefaults_copyIntegerForKey(@"MFi4AuthTimeoutValueS");
      v7 = v6 & ~(v6 >> 63);
      if (!v6)
      {
        v7 = v5;
      }

      if (v7)
      {
        isa = a1[5].isa;
        v9 = dispatch_time(0, 1000000000 * v7);
        dispatch_source_set_timer(isa, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      dispatch_time(0, 1000000);
      v10 = a1[2].isa;
      OUTLINED_FUNCTION_7_15();
      v15 = 0x40000000;
      v16 = ___mfi4Auth_endpoint_sendAuthSetupStart_block_invoke;
      v17 = &__block_descriptor_tmp_19;
      v18 = v4;
      dispatch_after(v11, v12, block);
    }

    else
    {
      v13 = logObjectForModule_1(55);
      if (OUTLINED_FUNCTION_16(v13))
      {
        *buf = 136315138;
        v20 = "_mfi4Auth_endpoint_sendAuthSetupStart";
        _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%s: no endpointUUID for endpoint!!", buf, 0xCu);
      }
    }
  }
}

BOOL mfi4Auth_endpoint_destroy(uint64_t **a1)
{
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v4 = *(gLogObjects + 440);
  }

  else
  {
    v4 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v32 = 134218240;
      *&v32[4] = v2;
      OUTLINED_FUNCTION_3();
      v33 = v3;
      OUTLINED_FUNCTION_40_1();
      _os_log_error_impl(v22, v23, v24, v25, v26, 0x12u);
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "mfi4Auth_endpoint_destroy", v32, 2u);
  }

  if (a1)
  {
    v10 = *a1 != 0;
    if (*a1)
    {
      acc_platform_packetLogging_logEvent(**a1, "DETACH", "MFi4Auth accessory detached!", v5, v6, v7, v8, v9, *v32);
      if (acc_endpoint_getTransportType(**a1) == 13)
      {
        dispatch_source_cancel((*a1)[4]);
        dispatch_release((*a1)[4]);
      }

      dispatch_source_cancel((*a1)[5]);
      dispatch_release((*a1)[5]);
      dispatch_sync((*a1)[2], &__block_literal_global_12);
      v11 = (*a1)[2];
      (*a1)[2] = 0;
      *a1 = 0;
      dispatch_release(v11);
    }

    notify_post("com.apple.accessories.connection.MFi4AccessoryDisconnected");
  }

  else
  {
    v10 = 0;
  }

  v12 = gLogObjects;
  v13 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v14 = *(gLogObjects + 440);
  }

  else
  {
    v14 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v32 = 134218240;
      *&v32[4] = v12;
      OUTLINED_FUNCTION_3();
      v33 = v13;
      OUTLINED_FUNCTION_14();
      _os_log_error_impl(v27, v28, v29, v30, v31, 0x12u);
    }
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_16_13(&_mh_execute_header, v15, v16, "mfi4Auth_endpoint_destroy: destroyed", v17, v18, v19, v20, 0);
  }

  return v10;
}

void mfi4Auth_endpoint_create_cold_2()
{
  v1 = OUTLINED_FUNCTION_9_15();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void mfi4Auth_endpoint_create_cold_3()
{
  v1 = OUTLINED_FUNCTION_9_15();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void _mfi4Auth_endpoint_initSession_cold_4(uint64_t a1, char a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "_mfi4Auth_endpoint_initSession";
  v5 = 2112;
  v6 = a1;
  v7 = 1024;
  v8 = a2 & 1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s: endpointUUID %@, endpointSupportsMutualAuth %d", &v3, 0x1Cu);
}

void _mfi4Auth_endpoint_initSession_cold_7()
{
  v0 = OUTLINED_FUNCTION_15_14();
  if (OUTLINED_FUNCTION_16(v0))
  {
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void mfi4Auth_endpoint_processIncomingData_cold_3()
{
  v1 = OUTLINED_FUNCTION_9_15();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void mfi4Auth_endpoint_processIncomingData_cold_4()
{
  v1 = OUTLINED_FUNCTION_9_15();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void mfi4Auth_endpoint_processIncomingData_cold_5()
{
  v1 = OUTLINED_FUNCTION_9_15();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}