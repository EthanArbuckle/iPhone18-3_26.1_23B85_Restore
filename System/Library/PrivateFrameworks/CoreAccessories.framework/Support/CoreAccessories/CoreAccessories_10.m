uint64_t iap2_voiceOver_isSupportedOnConnection(uint64_t a1)
{
  v3 = 0;
  if (iap2_identification_checkRequiredMsgIDs(a1, &gskMsgVoiceOverMainList, 12, &v3))
  {
    return 1;
  }

  else
  {
    return iap2_identification_checkRequiredMsgIDs(a1, &gskMsgVoiceOverCursorList, 3, &v3);
  }
}

uint64_t _checkIdentificationInfo_13(uint64_t a1)
{
  v5 = 0;
  result = iap2_identification_checkIdentificationMsgIDs(a1, &gskMsgVoiceOverMainList, 0xCu, &v5 + 1);
  if (HIBYTE(v5) != 1 || result == 0)
  {
    LODWORD(result) = iap2_identification_checkIdentificationMsgIDs(a1, &gskMsgVoiceOverCursorList, 3u, &v5);
    if ((v5 & 0x100) != 0)
    {
      v4 = result;
    }

    else
    {
      v4 = 2;
    }

    if (v5)
    {
      result = v4;
    }

    else
    {
      result = result;
    }

    if ((v5 & 0x100) != 0 && !result)
    {
      iap2_features_createFeature(a1, 0x15u);
      iap2_identification_setIdentifiedForFeature(a1);
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_25_6(const __CFString *a1)
{

  return CFStringGetCString(a1, v1, 1024, 0x8000100u);
}

void OUTLINED_FUNCTION_26_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_31_11()
{

  return iap2_feature_getFeature(v0, 0x15u);
}

uint64_t OUTLINED_FUNCTION_43_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  return printf(v10);
}

void _iap2_endpoint_dispatchQueueFinalizer(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 19;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v3 = *(gLogObjects + 144);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "_iap2_endpoint_dispatchQueueFinalizer";
    v10 = 2048;
    v11 = a1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: protocolEndpoint %p", &v8, 0x16u);
  }

  if (a1)
  {
    *(a1 + 24) = 0;
    iAP2PacketRelease(*(a1 + 104));
    *(a1 + 104) = 0;
    iAP2LinkRunLoopDelete(*(a1 + 32));
    v4 = *(a1 + 32);
    if (v4)
    {
      free(v4);
      *(a1 + 32) = 0;
    }

    v5 = *(a1 + 112);
    if (v5)
    {
      free(v5);
      *(a1 + 112) = 0;
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 8) = 0;
    }

    v7 = *(a1 + 16);
    if (v7)
    {
      CFRelease(v7);
    }

    free(a1);
  }
}

uint64_t iap2_endpoint_destroy(void ***a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if ((acc_endpoint_isWireless(*v2) & 1) == 0)
      {
        iap2_power_unregisterForSleepNotification(v2);
      }

      acc_platform_packetLogging_logEvent(*v2, "DETACH", "iAP2 accessory detached!", v3, v4, v5, v6, v7, v14[0]);
      v8 = v2[3];
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = __iap2_endpoint_destroy_block_invoke;
      block[3] = &__block_descriptor_tmp_24;
      block[4] = v2;
      dispatch_sync(v8, block);
      v9 = v2[3];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 0x40000000;
      v15[2] = __iap2_endpoint_destroy_block_invoke_4;
      v15[3] = &__block_descriptor_tmp_5_2;
      v15[4] = v2;
      dispatch_sync(v9, v15);
      dispatch_release(v2[3]);
      *a1 = 0;
      return 1;
    }

    else
    {
      if (gLogObjects)
      {
        v11 = gNumLogObjects < 20;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        v12 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      else
      {
        v12 = *(gLogObjects + 152);
      }

      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      result = 0;
      if (v13)
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "iAP2 Endpoint Destroy. *ppProtocolEndpoint is null!", v14, 2u);
        return 0;
      }
    }
  }

  else
  {
    iap2_endpoint_destroy_cold_2(v14);
    return LOBYTE(v14[0]);
  }

  return result;
}

void __iap2_endpoint_destroy_block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 20;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v3 = *(gLogObjects + 152);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    label = dispatch_queue_get_label(0);
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "iAP2 Endpoint Destroy. currentDispatchQueue: %s", &v4, 0xCu);
  }

  iAP2LinkRunLoopDetached(*(*(a1 + 32) + 32));
}

uint64_t __iap2_endpoint_destroy_block_invoke_4(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 20;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v3 = *(gLogObjects + 152);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    label = dispatch_queue_get_label(0);
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "iAP2 Endpoint Destroy. currentDispatchQueue: %s", &v5, 0xCu);
  }

  iAP2LinkRunLoopShuttingDown(*(*(a1 + 32) + 32));
  return iap2_sessionControl_cleanup(*(a1 + 32));
}

void iap2_endpoint_linkStateChanged(uint64_t a1, int a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 20;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v5 = *(gLogObjects + 152);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Link state changed! (Connected: %d)", v7, 8u);
  }

  v6 = *(a1 + 96);
  *(a1 + 96) = a2;
  if (a2 && (v6 & 1) == 0)
  {
    iap2_endpoint_configUSBHost(a1);
    iap2_sessionControl_init(a1);
    iap2_sessionControl_start(a1);
    iap2_sessionFileTransfer_init(a1);
    iap2_sessionFileTransfer_start(a1);
    platform_systemInfo_supportsQiAuth();
    iap2_sessionLog_start(a1);
  }

  else if (v6)
  {
    if ((a2 & 1) == 0)
    {
      iap2_sessionControl_cleanup(a1);
      iap2_sessionFileTransfer_cleanup(a1);
      iap2_sessionLog_cleanup(a1);
    }
  }
}

uint64_t _checkIdentificationInfo_14(uint64_t a1)
{
  v10 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &gskMsgBLEPairingMainList, 8u, &v10);
  v3 = v2;
  v4 = v10;
  if (v10 != 1 || v2 == 0)
  {
    if (v10)
    {
      v6 = v2 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = _copySupportedPairTypesData(a1);
      if (!v7)
      {
        return 2;
      }

      v8 = v7;
      v3 = 2 * (CFDataGetLength(v7) < 1);
      CFRelease(v8);
      v4 = v10;
    }

    if ((v4 & 1) != 0 && !v3)
    {
      iap2_features_createFeature(a1, 4u);
      iap2_identification_setIdentifiedForFeature(a1);
    }
  }

  return v3;
}

const __CFDictionary *_copySupportedPairTypesData(uint64_t a1)
{
  result = iap2_identification_transportComponents(a1);
  if (result)
  {
    v2 = result;
    result = CFDictionaryGetCount(result);
    if (result)
    {
      v3 = result;
      __chkstk_darwin(result);
      v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      memset(v5, 170, v4);
      CFDictionaryGetKeysAndValues(v2, 0, v5);
      if (v3 >= 1)
      {
        *&v6 = 134218240;
        v11 = v6;
        do
        {
          v7 = *v5;
          if (*v5)
          {
            if (*(v7 + 20) == 5)
            {
              return CFDataCreate(kCFAllocatorDefault, *(v7 + 32), *(v7 + 40));
            }
          }

          else
          {
            v8 = gLogObjects;
            v9 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 42)
            {
              v10 = *(gLogObjects + 328);
            }

            else
            {
              v10 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = v11;
                v15 = v8;
                v16 = 1024;
                v17 = v9;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                v10 = &_os_log_default;
              }
            }

            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              _getEndpointSampleRates_cold_1(&v12, v13, v10);
            }
          }

          ++v5;
          --v3;
        }

        while (v3);
      }

      return 0;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_17_20(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_INFO, a4, a5, 2u);
}

_BYTE *OUTLINED_FUNCTION_25_7(unsigned __int16 a1)
{

  return iAP2MsgAddDataParam(v1, 0, 1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_26_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return iap2_identification_checkRequiredMsgIDs(v6, a2, 8, va);
}

uint64_t OUTLINED_FUNCTION_27_10(uint64_t a1)
{

  return iap2_feature_getFeature(a1, 4u);
}

_BYTE *OUTLINED_FUNCTION_35_6(uint64_t a1)
{
  v3 = *(v1 + 16);

  return iAP2MsgAddU8Param(a1, 0, 0, v3);
}

uint64_t OUTLINED_FUNCTION_36_6()
{

  return iap2_feature_getFeature(v0, 4u);
}

id _platform_vehicle_checkForLowDistanceRangeStatus(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = v4;
  if (v4 && ([v4 objectForKey:v3], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [v6 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id platform_vehicle_vehicleStatusChanged(uint64_t a1, void *a2)
{
  if ((_platform_vehicle_checkForLowDistanceRangeStatus(a2, kACCVehicleInfoHasLowDistanceRangeKey) & 1) != 0 || (_platform_vehicle_checkForLowDistanceRangeStatus(a2, kACCVehicleInfoHasLowDistanceRangeGasolineKey) & 1) != 0 || (_platform_vehicle_checkForLowDistanceRangeStatus(a2, kACCVehicleInfoHasLowDistanceRangeDieselKey) & 1) != 0 || (_platform_vehicle_checkForLowDistanceRangeStatus(a2, kACCVehicleInfoHasLowDistanceRangeElectricKey) & 1) != 0 || _platform_vehicle_checkForLowDistanceRangeStatus(a2, kACCVehicleInfoHasLowDistanceRangeCNGKey))
  {
    v4 = gLogObjects;
    v5 = gNumLogObjects;
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 7;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        acc_nvmInfo_getPairingStatus_cold_1(v4, v5);
      }

      v8 = &_os_log_default;
      v7 = &_os_log_default;
    }

    else
    {
      v8 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Have low fuel update...launch maps application", v13, 2u);
    }

    platform_system_launchApplicationToBackground(@"com.apple.Maps");
  }

  v9 = +[ACCExternalAccessoryServer sharedServer];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 vehicleStatusDidChange:a2 forAccessoryUUID:a1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t iAP2LinkActionNone(uint64_t result, _BYTE *a2)
{
  if (!result)
  {
    iAP2LinkActionNone_cold_2();
  }

  if (!a2)
  {
    iAP2LinkActionNone_cold_1();
  }

  *a2 = 29;
  return result;
}

void iAP2LinkActionDetach(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    iAP2LinkActionDetach_cold_2();
  }

  if (!a2)
  {
    iAP2LinkActionDetach_cold_1();
  }

  *a2 = 29;
  v2 = *(a1 + 16);

  iAP2LinkConnectedCB(v2, 0);
}

uint64_t *iAP2LinkActionSendACK(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    iAP2LinkActionSendACK_cold_5();
  }

  if (!a2)
  {
    iAP2LinkActionSendACK_cold_4();
  }

  *a2 = 29;
  v2 = *(a1 + 16);
  iAP2TimeCancelTimer(*(v2 + 200), *(v2 + 194));
  *(v2 + 194) = -1;
  v3 = *(v2 + 288);
  if (!v3 || !iAP2ListArrayGetCount(v3))
  {
    goto LABEL_16;
  }

  v22 = -86;
  RecvPckFirstItem = _GetRecvPckFirstItem(v2, &v22);
  v5 = -1;
  if (RecvPckFirstItem)
  {
    do
    {
      if (*(v2 + 212))
      {
        v6 = iAP2PacketCalcSeqGap(*(v2 + 188), *(*(RecvPckFirstItem + 64) + 5));
        v7 = v5;
        if (v6 < v5)
        {
          v7 = v6;
        }

        if (v6)
        {
          v5 = v7;
        }
      }

      else if ((v5 & 0x80) != 0)
      {
        v5 = 0x80;
      }

      RecvPckFirstItem = _GetRecvPckNextItem(v2, v22, &v22);
    }

    while (RecvPckFirstItem);
    if (v5 <= 1u)
    {
      goto LABEL_16;
    }
  }

  if (*(v2 + 411) >= v5)
  {
    if (!iAP2ListArrayGetCount(*(v2 + 288)))
    {
      iAP2LinkActionSendACK_cold_2();
    }

    Count = iAP2ListArrayGetCount(*(v2 + 288));
    v12 = *(v2 + 422);
    if (v12 >= *(v2 + 192))
    {
      v12 = *(v2 + 192);
    }

    if (*(v2 + 213) == 2)
    {
      v13 = -12;
    }

    else
    {
      v13 = -10;
    }

    v14 = v13 + v12;
    if (v14 >= Count)
    {
      v15 = Count;
    }

    else
    {
      v15 = v14;
    }

    if (v14 >= Count)
    {
      v16 = Count;
    }

    else
    {
      v16 = v14;
    }

    EAKPacket = iAP2PacketCreateEAKPacket(v2, *(v2 + 190), *(v2 + 188), 0, v15);
    if (!EAKPacket)
    {
      iAP2LinkActionSendACK_cold_1();
    }

    v9 = EAKPacket;
    v18 = *(EAKPacket + 72);
    v23 = -86;
    RecvPckNextItem = _GetRecvPckFirstItem(v2, &v23);
    if (v16 && RecvPckNextItem)
    {
      v20 = 0;
      do
      {
        *v18++ = *(*(RecvPckNextItem + 64) + 5);
        ++v20;
        RecvPckNextItem = _GetRecvPckNextItem(v2, v23, &v23);
      }

      while (v20 < v16 && RecvPckNextItem != 0);
    }

    ++*(v2 + 560);
    ++*(v2 + 580);
  }

  else
  {
LABEL_16:
    ACKPacket = iAP2PacketCreateACKPacket(v2, *(v2 + 190), *(v2 + 188), 0, 0, 0);
    if (!ACKPacket)
    {
      iAP2LinkActionSendACK_cold_3();
    }

    v9 = ACKPacket;
    ++*(v2 + 588);
  }

  _iAP2LinkSendPacketCommon(v2, v9, 0, 0);

  return iAP2PacketRelease(v9);
}

void iAP2LinkActionResendMissing(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    iAP2LinkActionResendMissing_cold_2();
  }

  if (!a2)
  {
    iAP2LinkActionResendMissing_cold_1();
  }

  *a2 = 29;
  v3 = *(a1 + 16);
  v4 = *(v3 + 280);
  v22 = 0;
  MissingSeqFromEAK = iAP2PacketGetMissingSeqFromEAK(v4, *(v3 + 421), &v22);
  v6 = MissingSeqFromEAK;
  if (MissingSeqFromEAK)
  {
    v7 = v22 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = &MissingSeqFromEAK[v22];
    v21 = 1;
    v9 = iAP2PacketCreateEmptySendPacket(v3, &v21);
    v10 = 0;
    *v9 = v3;
    v11 = v6;
LABEL_8:
    v20 = v10;
    do
    {
      *(v9[8] + 5) = *v11;
      *buf = v9;
      Item = iAP2ListArrayFindItem(*(v3 + 296), buf, _iAP2LinkComparePacketSeq);
      v13 = iAP2ListArrayItemForIndex(*(v3 + 296), Item);
      if (v13)
      {
        v14 = *v13;
        if (*v13)
        {
          if (iAP2PacketIsACKOnly(*v13))
          {
            iAP2ListArrayDeleteItem(*(v3 + 296), Item, _DeletePckCB);
          }

          else
          {
            v15 = *(v14 + 58);
            if (v15 < *(v3 + 412))
            {
              *(v14 + 58) = v15 + 1;
              ++*(v3 + 552);
              ++*(v3 + 608);
              v10 = 1;
              _iAP2LinkSendPacketCommon(v3, v14, 1, 0);
              if (++v11 < v8)
              {
                goto LABEL_8;
              }

              iAP2PacketRelease(v9);
              goto LABEL_30;
            }

            if (_iAP2LogEnableMask)
            {
              v16 = gLogObjects;
              v17 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 20)
              {
                v18 = *(gLogObjects + 152);
              }

              else
              {
                v18 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  *&buf[4] = v16;
                  v24 = 1024;
                  v25 = v17;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }
              }

              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = "Device:ResendMissing";
                if (!*(v3 + 184))
                {
                  v19 = "Accessory:ResendMissing";
                }

                *buf = 136315650;
                *&buf[4] = "iAP2LinkActionResendMissing";
                v24 = 1024;
                v25 = 2028;
                v26 = 2080;
                v27 = v19;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d %s Resend too many times!", buf, 0x1Cu);
              }
            }

            *a2 = 20;
          }
        }
      }

      ++v11;
    }

    while (v11 < v8);
    iAP2PacketRelease(v9);
    if (v20)
    {
LABEL_30:
      iAP2LinkEventNotify(v3, 5, 0);
    }
  }

  if (v6)
  {
    free(v6);
  }
}

void iAP2LinkEventNotify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a2;
    if (a2 > 8)
    {
      if (_iAP2LogEnableMask)
      {
        if (gLogObjects)
        {
          v22 = gNumLogObjects < 20;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          v23 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        else
        {
          v23 = *(gLogObjects + 152);
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v28 = "iAP2LinkEventNotify";
          v29 = 1024;
          v30 = 6020;
          v31 = 1024;
          v32 = v3;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d Unknown event(%d)!", buf, 0x18u);
        }
      }
    }

    else
    {
      v4 = a3;
      v5 = a1;
      v6 = 0;
      v7 = 0;
      v8 = a1 + 160;
      v9 = a2;
      v24 = a3;
      v10 = 1;
      v11 = a1 + 16 + 16 * a2;
      v25 = v11;
      v26 = a2;
      do
      {
        v12 = v10;
        if (v6 >= *(v8 + v9))
        {
          break;
        }

        v13 = *(v11 + 8 * v6);
        if (v13)
        {
          if ((_iAP2LogEnableMask & 4) != 0)
          {
            v14 = v8;
            v15 = v5;
            v16 = v4;
            v17 = v3;
            v18 = gLogObjects;
            v19 = gNumLogObjects;
            if (gLogObjects)
            {
              v20 = gNumLogObjects < 20;
            }

            else
            {
              v20 = 1;
            }

            if (v20)
            {
              v21 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v28 = v18;
                v29 = 1024;
                v30 = v19;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }
            }

            else
            {
              v21 = *(gLogObjects + 152);
            }

            v3 = v17;
            v4 = v16;
            v5 = v15;
            v8 = v14;
            v11 = v25;
            v9 = v26;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316162;
              v28 = "iAP2LinkEventNotify";
              v29 = 1024;
              v30 = 6013;
              v31 = 1024;
              v32 = v3;
              v33 = 1024;
              v34 = v7;
              v35 = 1024;
              v36 = v24;
              _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s:%d eventNotifyCB, event=%d i=%d param=%hx!", buf, 0x24u);
            }
          }

          v13(v5, v3, v4);
        }

        v10 = 0;
        v6 = 1;
        v7 = 1;
      }

      while ((v12 & 1) != 0);
    }
  }
}

void iAP2LinkActionResendData(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    iAP2LinkActionResendData_cold_2();
  }

  if (!a2)
  {
    iAP2LinkActionResendData_cold_1();
  }

  *a2 = 29;
  v3 = *(a1 + 16);
  CurTimeMs = iAP2TimeGetCurTimeMs();
  v5 = *(v3 + 416);
  if (!iAP2ListArrayGetCount(*(v3 + 296)))
  {
    return;
  }

  v21 = -86;
  SendPckFirstItem = _GetSendPckFirstItem(v3, &v21);
  if (!SendPckFirstItem)
  {
    return;
  }

  SendPckNextItem = SendPckFirstItem;
  v8 = 0;
  v9 = CurTimeMs + v5;
  v10 = &_iAP2LogEnableMask;
  v11 = v21;
  do
  {
    while (1)
    {
      v12 = SendPckNextItem;
      v20 = -86;
      SendPckNextItem = _GetSendPckNextItem(v3, v11, &v20);
      if (*(v12 + 48) > v9)
      {
        goto LABEL_14;
      }

      if (*(v3 + 212))
      {
        v13 = iAP2PacketCalcSeqGap(*(v3 + 189), *(*(v12 + 64) + 5));
        if (!v13)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v13 = 128;
      }

      if (v13 > *(v3 + 411) || iAP2PacketIsACKOnly(v12))
      {
LABEL_13:
        iAP2ListArrayDeleteItem(*(v3 + 296), v11, _DeletePckCB);
        goto LABEL_14;
      }

      v14 = *(v12 + 58);
      if (v14 >= *(v3 + 412))
      {
        break;
      }

      *(v12 + 58) = v14 + 1;
      ++*(v3 + 548);
      ++*(v3 + 608);
      v8 = 1;
      _iAP2LinkSendPacketCommon(v3, v12, 1, 0);
      v11 = v20;
      if (!SendPckNextItem)
      {
        goto LABEL_31;
      }
    }

    if (*v10)
    {
      v15 = v10;
      v16 = gLogObjects;
      v17 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v18 = *(gLogObjects + 152);
      }

      else
      {
        v18 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v23 = v16;
          v24 = 1024;
          v25 = v17;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }
      }

      v10 = v15;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = "Device:ResendData";
        if (!*(v3 + 184))
        {
          v19 = "Accessory:ResendData";
        }

        *buf = 136315650;
        v23 = "iAP2LinkActionResendData";
        v24 = 1024;
        v25 = 2147;
        v26 = 2080;
        v27 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d %s: Resend too many times!", buf, 0x1Cu);
      }
    }

    *a2 = 20;
LABEL_14:
    v11 = v20;
  }

  while (SendPckNextItem);
  if ((v8 & 1) == 0)
  {
    return;
  }

LABEL_31:
  iAP2LinkEventNotify(v3, 5, 0);
}

uint64_t iAP2LinkActionHandleData(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    iAP2LinkActionHandleData_cold_3();
  }

  if (!a2)
  {
    iAP2LinkActionHandleData_cold_2();
  }

  *a2 = 29;
  v2 = *(a1 + 16);
  v3 = *(v2 + 280);
  v4 = *(v3 + 64);
  *(v2 + 536) += iAP2PacketGetPayloadLen(v3);
  ++*(v2 + 544);
  v5 = *(v2 + 420);
  if (!*(v2 + 420))
  {
    goto LABEL_10;
  }

  v6 = 0;
  v7 = (v2 + 440);
  v8 = (v2 + 440);
  do
  {
    v9 = *v8;
    v8 += 4;
    if (v9 == *(v4 + 7))
    {
      v6 = v7;
    }

    v7 = v8;
    --v5;
  }

  while (v5);
  if (v6)
  {
    v10 = *(v3 + 72);
    PayloadLen = iAP2PacketGetPayloadLen(v3);
    iAP2LinkDataReadyCB(v2, v10, PayloadLen, v3, *(v4 + 7));
  }

  else
  {
LABEL_10:
    if (_iAP2LogEnableMask)
    {
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v12 = *(gLogObjects + 152);
      }

      else
      {
        v12 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(v4 + 7);
        v15 = 136315650;
        v16 = "iAP2LinkActionHandleData";
        v17 = 1024;
        v18 = 2221;
        v19 = 1024;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d Invalid session(%u)!", &v15, 0x18u);
      }
    }
  }

  result = iAP2LinkIsNoRetransmit(v2 + 410);
  if ((result & 1) == 0 && *(v2 + 194) == 255)
  {
    result = iAP2TimeCallbackAfter(*(v2 + 200), 13, *(v2 + 418));
    *(v2 + 194) = result;
  }

  return result;
}

unsigned __int8 *iAP2LinkGetSessionInfo(unsigned __int8 *result, int a2)
{
  if (result)
  {
    v2 = result;
    v3 = result[420];
    if (result[420])
    {
      result = 0;
      v4 = v2 + 440;
      v5 = v4;
      do
      {
        v6 = *v5;
        v5 += 4;
        if (v6 == a2)
        {
          result = v4;
        }

        v4 = v5;
        --v3;
      }

      while (v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void iAP2LinkActionNotifyConnectionFail(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    iAP2LinkActionNotifyConnectionFail_cold_2();
  }

  if (!a2)
  {
    iAP2LinkActionNotifyConnectionFail_cold_1();
  }

  *a2 = 29;
  v2 = *(a1 + 16);

  iAP2LinkConnectedCB(v2, 0);
}

uint64_t iAP2LinkSetDefaultSYNParam(uint64_t result)
{
  if (result)
  {
    *result = 257;
    *(result + 2) = 0xA03E8FFFF001ELL;
    *(result + 10) = -65280;
  }

  return result;
}

uint64_t iAP2LinkIsValidSynParam(unsigned __int8 *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (!a1 || a2 - 1 > 2)
  {
    return result;
  }

  v6 = *a1;
  if (v6 < a2 || v6 >= 4)
  {
    if ((_iAP2LogEnableMask & 4) != 0)
    {
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v8 = *(gLogObjects + 152);
      }

      else
      {
        v8 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        iAP2LinkIsValidSynParam_cold_2(a1);
      }
    }
  }

  else if (__iAP2LinkIsValidSynParamMaxOutstandingPackets(a1))
  {
    if (*(a1 + 2) <= 0x17u)
    {
      if ((_iAP2LogEnableMask & 4) != 0)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v21 = *(gLogObjects + 152);
        }

        else
        {
          v21 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          iAP2LinkIsValidSynParam_cold_4(a1 + 2);
        }
      }
    }

    else
    {
      if (iAP2LinkIsNoRetransmit(a1))
      {
        goto LABEL_15;
      }

      if (*(a1 + 3) <= 0x13u)
      {
        if ((_iAP2LogEnableMask & 4) != 0)
        {
          if (gLogObjects && gNumLogObjects >= 20)
          {
            v22 = *(gLogObjects + 152);
          }

          else
          {
            v22 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            iAP2LinkIsValidSynParam_cold_6(a1 + 3);
          }
        }
      }

      else if (__iAP2LinkIsValidSynParamCumAckTimeout(a1) && __iAP2LinkIsValidSynParamMaxRetransmissions(a1) && __iAP2LinkIsValidSynParamMaxCumAck(a1))
      {
LABEL_15:
        if (*a1 < 2u || !a1[24] || iAP2LinkCommandIsFeatureSetValid(a1))
        {
          *&v10 = 0xAAAAAAAAAAAAAAAALL;
          *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v53 = -21846;
          *&buf[16] = v10;
          v52 = v10;
          *buf = v10;
          buf[10] = 0;
          if (a1[10])
          {
            v11 = 0;
            v12 = 0;
            v13 = 0;
            do
            {
              v14 = &a1[4 * v12 + 30];
              if (v11)
              {
                v15 = *v14;
                if (buf[30] == v15)
                {
                  goto LABEL_71;
                }

                v16 = v14[1];
                if (buf[31] == v16)
                {
                  goto LABEL_71;
                }

                v17 = &v52 + 3;
                v18 = 1;
                do
                {
                  v19 = v18;
                  if (v11 == v18)
                  {
                    break;
                  }

                  if (*(v17 - 1) == v15)
                  {
                    break;
                  }

                  v20 = *v17;
                  v17 += 4;
                  ++v18;
                }

                while (v20 != v16);
                if (v19 < v11)
                {
                  goto LABEL_71;
                }
              }

              else
              {
                v15 = *v14;
              }

              if (!v15)
              {
                goto LABEL_71;
              }

              if (v14[1] > 4u)
              {
                goto LABEL_71;
              }

              if (v14[3])
              {
                goto LABEL_71;
              }

              iAP2PacketCopySessionInfo(&buf[4 * v11 + 30], &a1[4 * v12 + 30]);
              v11 = ++buf[10];
              if (!*v14 || v14[1] > 4u || (v14[3] & 1) != 0 || a3 && v14[2] > *(a3 + v14[1]))
              {
                goto LABEL_71;
              }

              if (a4 && v14[2] < *(a4 + v14[1]))
              {
                goto LABEL_71;
              }

              if (!v14[1])
              {
                v13 = 1;
              }

              ++v12;
            }

            while (v12 < a1[10]);
            if (v13)
            {
              return 1;
            }
          }
        }
      }
    }
  }

LABEL_71:
  if (_iAP2LogEnableMask)
  {
    if (gLogObjects && gNumLogObjects >= 20)
    {
      v23 = *(gLogObjects + 152);
    }

    else
    {
      v23 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "ERROR: Invalid SYN Params detected:", buf, 2u);
    }
  }

  if (_iAP2LogEnableMask)
  {
    if (gLogObjects && gNumLogObjects >= 20)
    {
      v24 = *(gLogObjects + 152);
    }

    else
    {
      v24 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *a1;
      *buf = 67109120;
      *&buf[4] = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "ERROR:     version=%d", buf, 8u);
    }
  }

  if (_iAP2LogEnableMask)
  {
    if (gLogObjects && gNumLogObjects >= 20)
    {
      v26 = *(gLogObjects + 152);
    }

    else
    {
      v26 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = a1[1];
      v28 = *(a1 + 2);
      *buf = 67109376;
      *&buf[4] = v27;
      *&buf[8] = 1024;
      *&buf[10] = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "ERROR:     maxOutstanding=%d maxPacketSize=%d", buf, 0xEu);
    }
  }

  if (_iAP2LogEnableMask)
  {
    if (gLogObjects && gNumLogObjects >= 20)
    {
      v29 = *(gLogObjects + 152);
    }

    else
    {
      v29 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 3);
      v31 = *(a1 + 4);
      *buf = 67109376;
      *&buf[4] = v30;
      *&buf[8] = 1024;
      *&buf[10] = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "ERROR:     retransmitTimeout=%d cumAckTimeout=%d", buf, 0xEu);
    }
  }

  if (_iAP2LogEnableMask)
  {
    if (gLogObjects && gNumLogObjects >= 20)
    {
      v32 = *(gLogObjects + 152);
    }

    else
    {
      v32 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = a1[2];
      v34 = a1[3];
      *buf = 67109376;
      *&buf[4] = v33;
      *&buf[8] = 1024;
      *&buf[10] = v34;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "ERROR:     maxRetransmissions=%d maxCumAck=%d", buf, 0xEu);
    }
  }

  if (_iAP2LogEnableMask)
  {
    if (gLogObjects && gNumLogObjects >= 20)
    {
      v35 = *(gLogObjects + 152);
    }

    else
    {
      v35 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = a1[10];
      *buf = 67109120;
      *&buf[4] = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "ERROR:     numSessionInfo=%u", buf, 8u);
    }
  }

  if (a1[10])
  {
    v37 = 0;
    v38 = a1 + 33;
    do
    {
      if (_iAP2LogEnableMask)
      {
        v39 = gLogObjects;
        v40 = gNumLogObjects;
        if (gLogObjects)
        {
          v41 = gNumLogObjects < 20;
        }

        else
        {
          v41 = 1;
        }

        if (v41)
        {
          v42 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v39;
            *&buf[12] = 1024;
            *&buf[14] = v40;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            v42 = &_os_log_default;
          }
        }

        else
        {
          v42 = *(gLogObjects + 152);
        }

        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = *(v38 - 2);
          v44 = a4;
          if (a4)
          {
            v44 = *(a4 + *(v38 - 2));
          }

          v45 = a3;
          if (a3)
          {
            v45 = *(a3 + *(v38 - 2));
          }

          v46 = *(v38 - 3);
          v47 = *(v38 - 1);
          v48 = *v38;
          *buf = 67110656;
          *&buf[4] = v37;
          *&buf[8] = 1024;
          *&buf[10] = v46;
          *&buf[14] = 1024;
          *&buf[16] = v43;
          *&buf[20] = 1024;
          *&buf[22] = v47;
          *&buf[26] = 1024;
          *&buf[28] = v48;
          LOWORD(v52) = 1024;
          *(&v52 + 2) = v44;
          WORD3(v52) = 1024;
          DWORD2(v52) = v45;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "ERROR:     session %u [id=%u type=%u ver=%u unrel=%d (min=%u max=%u)]", buf, 0x2Cu);
        }
      }

      ++v37;
      v38 += 4;
    }

    while (v37 < a1[10]);
  }

  return 0;
}

BOOL __iAP2LinkIsValidSynParamMaxOutstandingPackets(uint64_t a1)
{
  v2 = (a1 + 1);
  v1 = *(a1 + 1);
  if (!v1)
  {
    if (iAP2LinkIsNoRetransmit(a1))
    {
      return 1;
    }

    v1 = *v2;
  }

  if (v1 > 0)
  {
    return 1;
  }

  if ((_iAP2LogEnableMask & 4) == 0)
  {
    return 0;
  }

  if (gLogObjects)
  {
    v4 = gNumLogObjects < 20;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v5 = *(gLogObjects + 152);
  }

  result = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    __iAP2LinkIsValidSynParamMaxOutstandingPackets_cold_2(v2);
    return 0;
  }

  return result;
}

BOOL __iAP2LinkIsValidSynParamCumAckTimeout(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2 <= 9 && (_iAP2LogEnableMask & 4) != 0)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 20;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v4 = *(gLogObjects + 152);
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __iAP2LinkIsValidSynParamCumAckTimeout_cold_2(v1);
    }
  }

  return v2 > 9;
}

BOOL __iAP2LinkIsValidSynParamMaxRetransmissions(uint64_t a1)
{
  v1 = (a1 + 2);
  v2 = *(a1 + 2) - 1;
  if (v2 >= 0x1E && (_iAP2LogEnableMask & 4) != 0)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 20;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v4 = *(gLogObjects + 152);
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __iAP2LinkIsValidSynParamMaxRetransmissions_cold_2(v1);
    }
  }

  return v2 < 0x1E;
}

BOOL __iAP2LinkIsValidSynParamMaxCumAck(uint64_t a1)
{
  v1 = (a1 + 3);
  if ((*(a1 + 3) & 0x80000000) == 0 && *(a1 + 3) <= *(a1 + 1))
  {
    return 1;
  }

  if ((_iAP2LogEnableMask & 4) == 0)
  {
    return 0;
  }

  if (gLogObjects)
  {
    v3 = gNumLogObjects < 20;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v4 = *(gLogObjects + 152);
  }

  result = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    __iAP2LinkIsValidSynParamMaxCumAck_cold_2(v1);
    return 0;
  }

  return result;
}

uint64_t iAP2LinkValidateSynParam(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2;
  v3 = *(a1 + 215);
  if ((*(a1 + 212) & 0x40) == 0 && !*(a1 + 184))
  {
    LOBYTE(v9) = 1;
    return v9 & 1;
  }

  if (!a2)
  {
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  *&v97[18] = -21846;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v97 = -21846;
  *&v97[2] = v4;
  v5 = *a2;
  if (v5 >= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  if (v7 != v5)
  {
    if (_iAP2LogEnableMask)
    {
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v8 = *(gLogObjects + 152);
      }

      else
      {
        v8 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v2;
        *buf = 67109376;
        *v99 = v10;
        *&v99[4] = 1024;
        *&v99[6] = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ERROR: Invalid SYN Params detected: linkVersion=%d->%d", buf, 0xEu);
      }
    }

    *v2 = v7;
  }

  v11 = v2[1];
  if (__iAP2LinkIsValidSynParamMaxOutstandingPackets(v2) || ((v12 = v2[1], (v12 & 0x80u) == 0) ? (v13 = v11) : (v13 = 127), !v2[1] ? (v14 = 1) : (v14 = v13), v14 == v12))
  {
    v15 = 1;
  }

  else
  {
    if (_iAP2LogEnableMask)
    {
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v16 = *(gLogObjects + 152);
      }

      else
      {
        v16 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v2[1];
        *buf = 67109376;
        *v99 = v17;
        *&v99[4] = 1024;
        *&v99[6] = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "ERROR: Invalid SYN Params detected: maxOutstandingPackets=%d->%d", buf, 0xEu);
      }
    }

    v15 = 0;
    v2[1] = v14;
  }

  if (v7 == v5)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v2 + 2);
  if (v19 <= 0x18)
  {
    v20 = 24;
  }

  else
  {
    v20 = *(v2 + 2);
  }

  if (v19 <= 0x17)
  {
    if (_iAP2LogEnableMask)
    {
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v21 = *(gLogObjects + 152);
      }

      else
      {
        v21 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(v2 + 2);
        *buf = 67109376;
        *v99 = v22;
        *&v99[4] = 1024;
        *&v99[6] = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "ERROR: Invalid SYN Params detected: maxPacketSize=%d->%d", buf, 0xEu);
      }
    }

    *(v2 + 2) = v20;
  }

  if (v19 > 0x17)
  {
    v9 = v18;
  }

  else
  {
    v9 = 0;
  }

  if (!iAP2LinkIsNoRetransmit(v2))
  {
    v23 = *(v2 + 3);
    if (v23 <= 0x14)
    {
      v24 = 20;
    }

    else
    {
      v24 = *(v2 + 3);
    }

    if (v23 <= 0x13)
    {
      if (_iAP2LogEnableMask)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v25 = *(gLogObjects + 152);
        }

        else
        {
          v25 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(v2 + 3);
          *buf = 67109376;
          *v99 = v26;
          *&v99[4] = 1024;
          *&v99[6] = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "ERROR: Invalid SYN Params detected: retransmitTimeout=%d->%d", buf, 0xEu);
        }
      }

      *(v2 + 3) = v24;
    }

    if (v23 > 0x13)
    {
      v27 = v9;
    }

    else
    {
      v27 = 0;
    }

    v28 = *(v2 + 4);
    if (v28 >= 0x7FFF)
    {
      v29 = 0x7FFF;
    }

    else
    {
      v29 = *(v2 + 4);
    }

    if (v29 <= 0xA)
    {
      v30 = 10;
    }

    else
    {
      v30 = v29;
    }

    if (v30 != v28)
    {
      if (_iAP2LogEnableMask)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v31 = *(gLogObjects + 152);
        }

        else
        {
          v31 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *(v2 + 4);
          *buf = 67109376;
          *v99 = v32;
          *&v99[4] = 1024;
          *&v99[6] = v30;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "ERROR: Invalid SYN Params detected: cumAckTimeout=%d->%d", buf, 0xEu);
        }
      }

      *(v2 + 4) = v30;
    }

    if (v30 != v28)
    {
      v27 = 0;
    }

    v33 = v2[2];
    if (v33 >= 0x1E)
    {
      v34 = 30;
    }

    else
    {
      v34 = v2[2];
    }

    if (v2[2])
    {
      v35 = v34;
    }

    else
    {
      v35 = 1;
    }

    if (v35 != v33)
    {
      if (_iAP2LogEnableMask)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v36 = *(gLogObjects + 152);
        }

        else
        {
          v36 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v2[2];
          *buf = 67109376;
          *v99 = v37;
          *&v99[4] = 1024;
          *&v99[6] = v35;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "ERROR: Invalid SYN Params detected: maxRetransmissions=%d->%d", buf, 0xEu);
        }
      }

      v2[2] = v35;
    }

    if (v35 != v33)
    {
      v27 = 0;
    }

    v38 = v2[3];
    if (v38 < 0)
    {
      v39 = 127;
    }

    else if (v2[3] >= v2[1])
    {
      v39 = v2[1];
    }

    else
    {
      v39 = v2[3];
    }

    if (v39 != v38)
    {
      if (_iAP2LogEnableMask)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v40 = *(gLogObjects + 152);
        }

        else
        {
          v40 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v2[3];
          *buf = 67109376;
          *v99 = v41;
          *&v99[4] = 1024;
          *&v99[6] = v39;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "ERROR: Invalid SYN Params detected: maxCumAck=%d->%d", buf, 0xEu);
        }
      }

      v2[3] = v39;
    }

    if (v39 == v38)
    {
      v9 = v27;
    }

    else
    {
      v9 = 0;
    }
  }

  v42 = a1;
  *(a1 + 272) = 0;
  if (v2[24])
  {
    iAP2LinkCommandValidateFeatureSets(a1, v2);
  }

  v96 = 0;
  v43 = v2[10];
  if (!v2[10])
  {
    goto LABEL_186;
  }

  v44 = 0;
  v45 = 0;
  v46 = v2 + 30;
  do
  {
    v47 = &v46[4 * v44];
    v48 = v47[1];
    v49 = v47[1] == 0;
    v50 = *v47;
    if (*v47)
    {
      v51 = v48 > 4;
    }

    else
    {
      v51 = 1;
    }

    if (v51 || (v47[3] & 1) != 0)
    {
      if ((_iAP2LogEnableMask & 1) == 0)
      {
        goto LABEL_140;
      }

      v52 = gLogObjects;
      v53 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v54 = *(gLogObjects + 152);
      }

      else
      {
        v54 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v99 = v52;
          *&v99[8] = 1024;
          *v100 = v53;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }
      }

      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v65 = *v47;
        v66 = v47[1];
        v67 = v47[2];
        v68 = v47[3];
        *buf = 67110144;
        *v99 = v44;
        *&v99[4] = 1024;
        *&v99[6] = v65;
        *v100 = 1024;
        *&v100[2] = v66;
        v101 = 1024;
        v102 = v67;
        v103 = 1024;
        v104 = v68;
        v69 = v54;
        v70 = "ERROR: Invalid SYN Params detected: session %u [id=%u type=%u ver=%u unrel=%d]";
        goto LABEL_156;
      }

      goto LABEL_157;
    }

    v55 = v47[2];
    v56 = *(v42 + 352) + v48;
    if (v55 <= *(v56 + 14) && v55 >= *(v56 + 19))
    {
      if (v96)
      {
        if (v97[0] == v50 || v97[1] == v48)
        {
          goto LABEL_166;
        }

        v71 = &v97[5];
        v72 = 1;
        do
        {
          v73 = v72;
          if (v96 == v72)
          {
            break;
          }

          if (*(v71 - 1) == v50)
          {
            break;
          }

          v74 = *v71;
          v71 += 4;
          ++v72;
        }

        while (v74 != v48);
        if (v73 < v96)
        {
LABEL_166:
          if ((_iAP2LogEnableMask & 1) == 0)
          {
LABEL_140:
            v9 = 0;
            goto LABEL_180;
          }

          v75 = gLogObjects;
          v76 = gNumLogObjects;
          if (gLogObjects)
          {
            v77 = gNumLogObjects < 20;
          }

          else
          {
            v77 = 1;
          }

          if (v77)
          {
            v83 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v99 = v75;
              *&v99[8] = 1024;
              *v100 = v76;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }
          }

          else
          {
            v83 = *(gLogObjects + 152);
          }

          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v84 = *v47;
            v85 = v47[1];
            v86 = v47[2];
            v87 = v47[3];
            *buf = 67110144;
            *v99 = v44;
            *&v99[4] = 1024;
            *&v99[6] = v84;
            *v100 = 1024;
            *&v100[2] = v85;
            v101 = 1024;
            v102 = v86;
            v103 = 1024;
            v104 = v87;
            v69 = v83;
            v70 = "ERROR: Duplicate session id/type detected: session %u [id=%u type=%u ver=%u unrel=%d]";
LABEL_156:
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, v70, buf, 0x20u);
          }

LABEL_157:
          v9 = 0;
          goto LABEL_180;
        }
      }

      iAP2PacketCopySessionInfo(&v97[4 * v96++], &v46[4 * v44]);
    }

    else
    {
      v57 = v42;
      v58 = v2;
      iAP2PacketCopySessionInfo(&v97[4 * v96], &v46[4 * v44]);
      v59 = *(v57 + 352) + v47[1];
      v60 = *(v59 + 14);
      if (v47[2] <= v60)
      {
        LOBYTE(v60) = *(v59 + 19);
      }

      v61 = v96;
      v97[4 * v96 + 2] = v60;
      if (_iAP2LogEnableMask)
      {
        v94 = v9;
        v62 = gLogObjects;
        v63 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v64 = *(gLogObjects + 152);
        }

        else
        {
          v64 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v99 = v62;
            *&v99[8] = 1024;
            *v100 = v63;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            v61 = v96;
          }
        }

        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v78 = *v47;
          v79 = v47[1];
          v80 = v47[2];
          v81 = v97[4 * v61 + 2];
          v82 = v47[3];
          *buf = 67110400;
          *v99 = v44;
          *&v99[4] = 1024;
          *&v99[6] = v78;
          *v100 = 1024;
          *&v100[2] = v79;
          v101 = 1024;
          v102 = v80;
          v103 = 1024;
          v104 = v81;
          v105 = 1024;
          v106 = v82;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "ERROR: Invalid SYN Params session version detected: session %u [id=%u type=%u ver=%u->%u unrel=%d]", buf, 0x26u);
          LOBYTE(v61) = v96;
        }

        v9 = v94;
      }

      v96 = v61 + 1;
      v2 = v58;
      v42 = a1;
    }

LABEL_180:
    v45 |= v49;
    ++v44;
  }

  while (v44 < v2[10]);
  v43 = v96;
  if ((v45 & 1) == 0)
  {
LABEL_186:
    if (v43 <= 4)
    {
      v88 = 1;
      do
      {
        if (v43)
        {
          v89 = 0;
          v90 = v97;
          while (1)
          {
            v91 = *v90;
            v90 += 4;
            if (v91 == v88)
            {
              break;
            }

            if (v43 == ++v89)
            {
              goto LABEL_196;
            }
          }

          LODWORD(v89) = v89;
          ++v88;
        }

        else
        {
          LODWORD(v89) = 0;
        }
      }

      while (v89 != v43);
LABEL_196:
      v92 = &v97[4 * v43];
      *v92 = v88;
      *(v92 + 1) = 256;
      v92[3] = 0;
      LOBYTE(v43) = v43 + 1;
    }
  }

  v2[10] = v43;
  *(v2 + 30) = *v97;
  *(v2 + 46) = *&v97[16];
  return v9 & 1;
}

uint64_t iAP2LinkGetBuffSize(unsigned int a1)
{
  v2 = a1 + 2;
  v3 = iAP2FSMGetBuffSize();
  BuffSize = iAP2TimeGetBuffSize(v2);
  v5 = iAP2TimeSyncGetBuffSize();
  v6 = iAP2BuffPoolGetBuffSize(0);
  if (a1 >= 0x81)
  {
    iAP2LinkGetBuffSize_cold_1();
  }

  v7 = v3 + BuffSize + v5 + v6 + iAP2BuffPoolGetBuffSize(1u);
  v8 = iAP2BuffPoolGetBuffSize(2u);
  v9 = v7 + v8 + iAP2ListArrayGetBuffSize(a1, 8);
  LODWORD(v10) = v9 + iAP2ListArrayGetBuffSize(a1, 8) + 616;
  v11 = 5;
  do
  {
    v10 = iAP2ListArrayGetBuffSize(255, 8) + v10;
    --v11;
  }

  while (v11);
  return v10;
}

char *iAP2LinkCreate(int a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4, int a5, unsigned int a6, __int16 a7, char *a8)
{
  if (!a8)
  {
    iAP2LinkCreate_cold_1();
  }

  v8 = a8;
  bzero(a8, 0x268uLL);
  *v8 = v8;
  if (a5 && !iAP2LinkIsValidSynParam(a4, a3, 0, 0))
  {
    return 0;
  }

  v16 = (v8 + 616);
  if (!a1)
  {
    v17 = 0;
    goto LABEL_9;
  }

  if (a1 != 1)
  {
    return 0;
  }

  v17 = a6 + 2;
  *(v8 + 1) = iAP2FSMCreate(8, 0, 29, &iAP2LinkDeviceStates, v8, "DeviceFSM", 0, 0, (v8 + 616));
  v16 += iAP2FSMGetBuffSize();
LABEL_9:
  *(v8 + 46) = a1;
  *(v8 + 22) = a2;
  *(v8 + 96) = a7;
  if (a5)
  {
    v18 = 64;
  }

  else
  {
    v18 = 0;
  }

  v8[212] = v8[212] & 0xBF | v18;
  v8[194] = -1;
  v8[213] = 1;
  v8[215] = a3;
  *(v8 + 25) = iAP2TimeCreate(v8, _iAP2LinkHandleTimerExpire, _iAP2LinkHandleTimerCancel, v17, v16);
  v19 = v16 + iAP2TimeGetBuffSize(v17);
  iAP2ListArrayInit(v19, a6, 8u);
  *(v8 + 36) = v19;
  v20 = v19 + iAP2ListArrayGetBuffSize(a6, 8);
  iAP2ListArrayInit(v20, a6, 8u);
  *(v8 + 37) = v20;
  v21 = v20 + iAP2ListArrayGetBuffSize(a6, 8);
  for (i = 304; i != 344; i += 8)
  {
    iAP2ListArrayInit(v21, 255, 8u);
    *&v8[i] = v21;
    v21 += iAP2ListArrayGetBuffSize(255, 8);
  }

  *(v8 + 44) = a4;
  v23 = *a4;
  v24 = *(a4 + 1);
  v25 = *(a4 + 2);
  *(v8 + 204) = *(a4 + 24);
  *(v8 + 376) = v24;
  *(v8 + 392) = v25;
  *(v8 + 360) = v23;
  *(v8 + 205) = 257;
  *(v8 + 412) = 0xA03E8FFFF001ELL;
  *(v8 + 105) = -65280;
  *(v8 + 30) = iAP2BuffPoolInit(2u, v8, 0xFFFF, a6, v21);
  v26 = v21 + iAP2BuffPoolGetBuffSize(2u);
  if (a6 <= 0x80)
  {
    LOWORD(a6) = 128;
  }

  *(v8 + 31) = iAP2BuffPoolInit(1u, v8, *(v8 + 96), a6, v26);
  v27 = *(v8 + 96);
  v28 = v26 + iAP2BuffPoolGetBuffSize(1u);
  *(v8 + 32) = iAP2BuffPoolInit(0, v8, 0, 0, v28);
  BuffSize = iAP2BuffPoolGetBuffSize(0);
  *(v8 + 33) = iAP2TimeSyncInit(v28 + BuffSize);
  iAP2TimeSyncGetBuffSize();
  return v8;
}

void _iAP2LinkHandleTimerExpire(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a1)
  {
    Context = iAP2TimeGetContext(a1);
    if (Context)
    {
      if ((*(Context + 212) & 0x10) != 0)
      {
        v7 = *(Context + 176);

        iAP2LinkRunLoopTimeout(v7, a2, a3);
      }

      else
      {
        v6 = *(Context + 8);

        iAP2FSMHandleEvent(v6, a3);
      }
    }
  }
}

unsigned int *_iAP2LinkHandleTimerCancel(unsigned int *result, char a2)
{
  if (result)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9 = v3;
    v10 = v3;
    v8[1] = v3;
    v8[2] = v3;
    v8[0] = v3;
    Context = iAP2TimeGetContext(result);
    BYTE11(v9) = a2;
    v11 = v8;
    Item = iAP2ListArrayFindItem(*(Context + 296), &v11, _ComparePckTimerIdCB);
    v6 = iAP2ListArrayItemForIndex(*(Context + 296), Item);
    if (v6)
    {
      result = *v6;
      if (result)
      {
        return iAP2PacketRemoveTimer(result);
      }
    }

    v11 = v8;
    v7 = iAP2ListArrayFindItem(*(Context + 288), &v11, _ComparePckTimerIdCB);
    result = iAP2ListArrayItemForIndex(*(Context + 288), v7);
    if (result)
    {
      result = *result;
      if (result)
      {
        return iAP2PacketRemoveTimer(result);
      }
    }
  }

  return result;
}

uint64_t iAP2LinkGetNewSeqNum(uint64_t a1)
{
  if ((*(a1 + 212) & 4) != 0)
  {
    v2 = *(a1 + 190) + 71;
    LOBYTE(result) = v2 & iAP2TimeGetCurTimeMs();
  }

  else
  {
    LOBYTE(result) = iAP2TimeGetCurTimeMs();
  }

  return result;
}

void iAP2LinkResetSend(uint64_t a1)
{
  if (a1)
  {
    _CleanupSendPckList(a1);
    for (i = 304; i != 344; i += 8)
    {
      iAP2ListArrayCleanup(*(a1 + i), _DeletePckCB);
    }

    *(a1 + 410) = 257;
    *(a1 + 412) = 0xA03E8FFFF001ELL;
    *(a1 + 420) = -65280;

    iAP2LinkResetSeqAck(a1, 1, 0);
  }

  else if (_iAP2LogEnableMask)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 20;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v4 = *(gLogObjects + 152);
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "iAP2LinkResetSend";
      v7 = 1024;
      v8 = 3321;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d NULL link!", &v5, 0x12u);
    }
  }
}

_BYTE *_CleanupSendPckList(uint64_t a1)
{
  if ((_iAP2LogEnableMask & 2) != 0)
  {
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 20;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      v3 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v3 = *(gLogObjects + 152);
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "_CleanupSendPckList";
      v7 = 1024;
      v8 = 1081;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s:%d ", &v5, 0x12u);
    }
  }

  return iAP2ListArrayCleanup(*(a1 + 296), _DeletePckCB);
}

uint64_t iAP2LinkResetSeqAck(uint64_t a1, char a2, int a3)
{
  _CleanupSendPckList(a1);
  *(a1 + 190) = 0;
  *(a1 + 212) &= 0xF3u;
  iAP2TimeSyncCleanup(*(a1 + 264));
  result = iAP2TimeSyncInit(*(a1 + 264));
  *(a1 + 264) = result;
  if (a3)
  {
    *(a1 + 464) = 0;
    *(a1 + 472) = 0;
    *(a1 + 213) = 1;
    *(a1 + 492) = 0;
  }

  if ((a2 & 1) == 0)
  {
    result = iAP2ListArrayCleanup(*(a1 + 288), _DeletePckCB);
    *(a1 + 188) = 0;
    *(a1 + 212) &= 0xFCu;
    if (a3)
    {
      *(a1 + 460) = 0;
      *(a1 + 476) = 0;
    }
  }

  return result;
}

void iAP2LinkShuttingDown(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 200);
    if (v2)
    {
      iAP2TimeDelete(v2);
      *(a1 + 200) = 0;
    }
  }
}

void iAP2LinkDelete(uint64_t a1)
{
  if ((_iAP2LogEnableMask & 2) != 0)
  {
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 20;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      v3 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v3 = *(gLogObjects + 152);
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = "No";
      v12 = "iAP2LinkDelete";
      v11 = 136315650;
      if (!a1)
      {
        v4 = "Yes";
      }

      v13 = 1024;
      v14 = 3373;
      v15 = 2080;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s:%d link null?: %s", &v11, 0x1Cu);
    }
  }

  if (a1)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      iAP2LinkRunLoopInitImplementation(v5);
      *(a1 + 8) = 0;
    }

    v6 = *(a1 + 280);
    if (v6)
    {
      iAP2PacketRelease(v6);
      *(a1 + 280) = 0;
    }

    iAP2ListArrayCleanup(*(a1 + 288), _DeletePckCB);
    iAP2LinkResetSend(a1);
    v7 = *(a1 + 200);
    if (v7)
    {
      iAP2TimeDelete(v7);
      *(a1 + 200) = 0;
    }

    iAP2BuffPoolCleanup(*(a1 + 240));
    *(a1 + 240) = 0;
    iAP2BuffPoolCleanup(*(a1 + 248));
    *(a1 + 248) = 0;
    iAP2BuffPoolCleanup(*(a1 + 256));
    *(a1 + 256) = 0;
    v8 = *(a1 + 264);
    if (v8)
    {
      iAP2TimeSyncCleanup(v8);
      *(a1 + 264) = 0;
    }
  }

  else if (_iAP2LogEnableMask)
  {
    if (gLogObjects)
    {
      v9 = gNumLogObjects < 20;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v10 = *(gLogObjects + 152);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "iAP2LinkDelete";
      v13 = 1024;
      v14 = 3419;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ERROR: %s:%d NULL link!", &v11, 0x12u);
    }
  }
}

uint64_t iAP2LinkGetMaxSendPacketSize(uint64_t result)
{
  if (result)
  {
    if (*(result + 422) >= *(result + 192))
    {
      return *(result + 192);
    }

    else
    {
      return *(result + 422);
    }
  }

  return result;
}

uint64_t iAP2LinkGetMaxRecvPayloadSize(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = *(a2 + 40);
    }

    else
    {
      v2 = 0xFFFF;
    }

    if (*(result + 213) == 2)
    {
      v3 = -12;
    }

    else
    {
      v3 = -10;
    }

    return (v3 + v2);
  }

  return result;
}

void iAP2LinkAttached(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 410) = 257;
    *(a1 + 412) = 0xA03E8FFFF001ELL;
    *(a1 + 420) = -65280;
    iAP2FSMHandleEvent(*(a1 + 8), 1u);
  }
}

void iAP2LinkRenegotiate(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 352) = a2;
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 212) = *(a1 + 212) & 0xBF | v3;
  v4 = *(a1 + 184);
  if (v4)
  {
    if (v4 == 1)
    {
      iAP2LinkSendRST(a1);
    }
  }

  else
  {
    iAP2FSMHandleEvent(*(a1 + 8), 8u);
  }
}

uint64_t *iAP2LinkSendRST(uint64_t a1)
{
  iAP2LinkConnectedCB(a1, 0);
  iAP2LinkResetSeqAck(a1, 0, 0);
  *(a1 + 410) = 257;
  *(a1 + 412) = 0xA03E8FFFF001ELL;
  *(a1 + 420) = -65280;
  v2 = *(a1 + 352);
  v4 = v2[1];
  v3 = v2[2];
  v5 = *v2;
  *(a1 + 408) = *(v2 + 24);
  *(a1 + 376) = v4;
  *(a1 + 392) = v3;
  *(a1 + 360) = v5;
  RSTPacket = iAP2PacketCreateRSTPacket(a1, *(a1 + 190));
  _iAP2LinkSendPacketCommon(a1, RSTPacket, 0, 0);

  return iAP2PacketRelease(RSTPacket);
}

void iAP2LinkDetached(uint64_t a1)
{
  if (a1)
  {
    iAP2FSMHandleEvent(*(a1 + 8), 0xEu);
    *(a1 + 410) = 257;
    *(a1 + 412) = 0xA03E8FFFF001ELL;
    *(a1 + 420) = -65280;
  }
}

BOOL iAP2LinkQueueSendDataPacket(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), int a7)
{
  iAP2PacketRetain(a2);
  v14 = iAP2LinkQueueSendDataPacketInternal(a1, a2, a3, a4, a5, a6, a7);
  if (v14)
  {
    iAP2LinkSignalSendBuffCB(a1);
  }

  iAP2PacketRelease(a2);
  return v14;
}

uint64_t _AddRecvPckItem(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 288);
  LastItemIndex = iAP2ListArrayGetLastItemIndex(v2);
  return iAP2LinkAddPacketAfter(v2, LastItemIndex, &v5);
}

void *_IsReceivedPacket(uint64_t a1, uint64_t a2)
{
  if (iAP2PacketCalcSeqGap(*(a1 + 188), *(*(a2 + 64) + 5)) > *(a1 + 411))
  {
    return 0;
  }

  v6 = a2;
  Item = iAP2ListArrayFindItem(*(a1 + 288), &v6, _iAP2LinkComparePacketSeq);
  result = iAP2ListArrayItemForIndex(*(a1 + 288), Item);
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

void iAP2LinkHandleSuspend(uint64_t a1)
{
  if ((_iAP2LogEnableMask & 4) == 0)
  {
    goto LABEL_10;
  }

  if (!gLogObjects || gNumLogObjects < 20)
  {
    v3 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v3 = *(gLogObjects + 152);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    iAP2LinkHandleSuspend_cold_2(a1);
  }

  else
  {
LABEL_10:
    if (!a1)
    {
      return;
    }
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    if (*(a1 + 184) == 1)
    {
      iAP2FSMHandleEvent(v4, 0x1Bu);
    }
  }
}

void iAP2LinkHandleResume(uint64_t a1)
{
  if ((_iAP2LogEnableMask & 4) == 0)
  {
    goto LABEL_10;
  }

  if (!gLogObjects || gNumLogObjects < 20)
  {
    v3 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v3 = *(gLogObjects + 152);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    iAP2LinkHandleResume_cold_2(a1);
  }

  else
  {
LABEL_10:
    if (!a1)
    {
      return;
    }
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    if (*(a1 + 184) == 1)
    {
      iAP2FSMHandleEvent(v4, 0x1Cu);
    }
  }
}

void iAP2LinkHandleTimeout(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    iAP2LinkHandleTimeout_cold_1();
  }

  v4 = *(a1 + 8);

  iAP2FSMHandleEvent(v4, a3);
}

void iAP2LinkRegisterEventCallback(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1)
  {
    if (a2 <= 8 && a3)
    {
      v5 = *(a1 + 160 + a2);
      if (v5 <= 1)
      {
        *(a1 + 16 * a2 + 8 * v5 + 16) = a3;
        *(a1 + 160 + a2) = v5 + 1;
        return;
      }

      if (_iAP2LogEnableMask)
      {
        if (gLogObjects && gNumLogObjects >= 20)
        {
          v7 = *(gLogObjects + 152);
        }

        else
        {
          v7 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315906;
          v12 = "iAP2LinkRegisterEventCallback";
          v13 = 1024;
          v14 = 5970;
          v15 = 1024;
          v16 = a2;
          v17 = 1024;
          v18 = v5;
          v9 = "ERROR: %s%d Too many registrations for event(%d)! current %d";
          v10 = v7;
          goto LABEL_24;
        }
      }
    }

    else if (_iAP2LogEnableMask)
    {
      if (!gLogObjects || gNumLogObjects < 20)
      {
        v8 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      else
      {
        v8 = *(gLogObjects + 152);
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315906;
        v12 = "iAP2LinkRegisterEventCallback";
        v13 = 1024;
        v14 = 5975;
        v15 = 1024;
        v16 = a2;
        v17 = 1024;
        v18 = a3 != 0;
        v9 = "ERROR: %s%d Unknown event(%d) or no eventCB(%d)!";
        v10 = v8;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v11, 0x1Eu);
      }
    }
  }
}

void *iAP2LinkCheckNegotiation(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 184) == 1)
  {
    if ((iAP2LinkValidateSynParam(a1, a2) & 1) == 0)
    {
      iAP2LinkEventNotify(a1, 3, a2);
    }
  }

  else if ((*(a1 + 212) & 0x40) != 0)
  {
    iAP2LinkValidateSynParam(a1, a2);
    if ((*(a1 + 212) & 0x40) == 0)
    {
      goto LABEL_29;
    }
  }

  if (iAP2LinkIsNoRetransmit(a1 + 360) && !iAP2LinkIsNoRetransmit(a2))
  {
    *(a1 + 361) = 7681;
    *(a1 + 364) = 65601535;
    *(a1 + 368) = 10;
    *(a1 + 363) = 0;
  }

  v4 = *a2;
  if (*(a1 + 360) > v4)
  {
    if ((_iAP2LogEnableMask & 2) != 0)
    {
      v5 = gLogObjects;
      v6 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v7 = *(gLogObjects + 152);
      }

      else
      {
        v7 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v17 = 134218240;
          v18 = v5;
          v19 = 1024;
          v20 = v6;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v17, 0x12u);
          v4 = *a2;
        }
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 360);
        v17 = 136315906;
        v18 = "iAP2LinkCheckNegotiation";
        v19 = 1024;
        v20 = 6390;
        v21 = 1024;
        v22 = v8;
        v23 = 1024;
        v24 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s:%d Older protocol Version detected on the accessory (%d->%d)", &v17, 0x1Eu);
        LOBYTE(v4) = *a2;
      }
    }

    *(a1 + 360) = v4;
  }

  v9 = a2[2];
  if (*(a1 + 362) > v9)
  {
    *(a1 + 362) = v9;
  }

  v10 = a2[3];
  if (*(a1 + 363) > v10)
  {
    *(a1 + 363) = v10;
  }

  v11 = *(a2 + 3);
  if (*(a1 + 366) > v11)
  {
    *(a1 + 366) = v11;
  }

  v12 = *(a2 + 4);
  if (*(a1 + 368) > v12)
  {
    *(a1 + 368) = v12;
  }

  if (iAP2LinkIsNoRetransmit(a2))
  {
    *(a1 + 361) = a2[1];
  }

LABEL_29:
  *(a1 + 371) = a2[1];
  *(a1 + 372) = *(a2 + 2);
  if (*(a1 + 184) == 1)
  {
    v13 = a2[24];
    *(a1 + 384) = v13;
    if (v13)
    {
      v14 = 0;
      do
      {
        *(a1 + 385 + v14) = a2[v14 + 25];
        ++v14;
      }

      while (v14 < a2[24]);
    }
  }

  v15 = a2[10];
  *(a1 + 370) = v15;
  return memcpy((a1 + 390), a2 + 30, 4 * v15);
}

unint64_t _GetRecvPckNextItem(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  NextItemIndex = iAP2ListArrayGetNextItemIndex(*(a1 + 288), a2);
  *a3 = NextItemIndex;
  result = iAP2ListArrayItemForIndex(*(a1 + 288), NextItemIndex);
  if (result)
  {
    return *result;
  }

  return result;
}

unint64_t _iAP2LinkComparePacketSeq(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  LODWORD(result) = iAP2PacketCalcSeqGap(*(*(*a1 + 64) + 5), *(*(*a2 + 64) + 5));
  if (*v2 != *v3)
  {
    _iAP2LinkComparePacketSeq_cold_1();
  }

  if (!result)
  {
    return 0;
  }

  if (result <= *(*v2 + 421))
  {
    return result;
  }

  return result | 0xFFFFFFFFFFFFFF00;
}

unint64_t _ComparePckTimerIdCB(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 != 8 || ((v3 = *a2, *a1) ? (v4 = v3 == 0) : (v4 = 1), v4))
  {
    _ComparePckTimerIdCB_cold_1();
  }

  return *(*a1 + 59) - *(v3 + 59);
}

uint64_t OUTLINED_FUNCTION_9_25@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 184);
  v4 = *(result + 8);
  return result;
}

const char *acm_mem_alloc_info(const char *result, const void *a2, uint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    _allocatedMem_0 += a3;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v6 = "NULL";
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = "NULL";
    }

    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "NULL";
    }

    if (a6)
    {
      v6 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_alloc_info", v7, a2, a3, _allocatedMem_0, 0, _allocatedMem_2, _allocatedMem_3, v8, a5, v6);
  }

  return result;
}

const char *acm_mem_free_info(const char *result, const void *a2, unint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    v6 = _allocatedMem_0 - a3;
    if (_allocatedMem_0 < a3)
    {
      v6 = 0;
    }

    _allocatedMem_0 = v6;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v7 = "NULL";
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = "NULL";
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "NULL";
    }

    if (a6)
    {
      v7 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_free_info", v8, a2, a3, _allocatedMem_0, 0, _allocatedMem_2, _allocatedMem_3, v9, a5, v7);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_22(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t LibCall_ACMKernelControl_Block(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl_Block");
  }

  bzero(v18, 0x2000uLL);
  v17 = 0x2000;
  v13 = LibCall_ACMKernelControl(v12, v11, v9, v7, v5, v18, &v17);
  if (v3)
  {
    if (v17)
    {
      v14 = v18;
    }

    else
    {
      v14 = 0;
    }

    (*(v3 + 16))(v3, v14);
  }

  if (v13)
  {
    v15 = 70;
  }

  else
  {
    v15 = 10;
  }

  if (v15 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl_Block", v13);
  }

  return v13;
}

uint64_t ACMKernelControl(int a1)
{
  if (_logLevel <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMKernelControl";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v2 = LibCall_ACMKernelControl_Block(ioKitTransport);
  if (v2)
  {
    v3 = 70;
  }

  else
  {
    v3 = 10;
  }

  if (v3 >= _logLevel && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMKernelControl";
    v9 = 2048;
    v10 = v2;
    v11 = 1024;
    v12 = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, code=%u.\n", buf, 0x26u);
  }

  return v2;
}

uint64_t ioKitTransport(uint64_t *a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (_logLevel <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_16_19();
    OUTLINED_FUNCTION_8_30();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  if (a1)
  {
    v19 = init();
    v20 = 70;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = performCommand(*a1, a2, a3, a4, a5, a6, a7);
      if (v21)
      {
        v20 = 70;
      }

      else
      {
        v20 = 10;
      }
    }
  }

  else
  {
    v20 = 70;
    v21 = 4294967293;
  }

  if (v20 >= _logLevel && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_30_12();
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_7_31();
    OUTLINED_FUNCTION_8_30();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
  }

  return v21;
}

uint64_t init()
{
  if (_logLevel <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_8_30();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  if (_MergedGlobals_2)
  {
    v5 = 0;
  }

  else
  {
    v6 = IOServiceMatching("AppleCredentialManager");
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (!MatchingService)
    {
      v9 = 70;
      v5 = 4294967291;
      goto LABEL_10;
    }

    v8 = MatchingService;
    v5 = IOServiceOpen(MatchingService, mach_task_self_, 0, &dword_100246504);
    if (v5)
    {
      v9 = 70;
      goto LABEL_10;
    }

    IOObjectRelease(v8);
    _MergedGlobals_2 = 1;
  }

  v9 = 10;
LABEL_10:
  if (v9 >= _logLevel && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_30_12();
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_7_31();
    OUTLINED_FUNCTION_8_30();
    _os_log_impl(v10, v11, v12, v13, v14, 0x20u);
  }

  return v5;
}

uint64_t performCommand(uint64_t a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (_logLevel <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_6_38();
    OUTLINED_FUNCTION_4_37();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  inputStructCnt = 0;
  v19 = LibCall_BuildCommand(a2, 0, a3, a4, a5, &inputStructCnt);
  if (v19)
  {
    v20 = v19;
    if (!a6 && a7)
    {
      v23 = 4294967293;
    }

    else
    {
      if (a7)
      {
        v21 = *a7;
      }

      else
      {
        v21 = 0;
      }

      v44 = v21;
      v22 = IOConnectCallStructMethod(dword_100246504, 0, v19, inputStructCnt, a6, &v44);
      v23 = v22;
      if (a1)
      {
        v24 = *(a1 + 16);
      }

      if (v22)
      {
        if (_logLevel <= 0x46u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_6_38();
          OUTLINED_FUNCTION_27_11();
          v49 = v25;
          v50 = v23;
          v51 = v25;
          v52 = v23;
          OUTLINED_FUNCTION_4_37();
          _os_log_impl(v26, v27, v28, v29, v30, 0x2Eu);
        }
      }

      else
      {
        if (_logLevel <= 0x28u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_6_38();
          OUTLINED_FUNCTION_27_11();
          OUTLINED_FUNCTION_4_37();
          _os_log_impl(v31, v32, v33, v34, v35, 0x22u);
        }

        v23 = 0;
        if (a7)
        {
          *a7 = v44;
        }
      }
    }

    v36 = inputStructCnt;
    acm_mem_free_info("<data>", v20, inputStructCnt, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 134, "performCommand");
    acm_mem_free_data(v20, v36);
    if (v23)
    {
      v37 = 70;
    }

    else
    {
      v37 = 10;
    }
  }

  else
  {
    v37 = 70;
    v23 = 4294967291;
  }

  if (v37 >= _logLevel && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v46 = 136315650;
    v47 = "ACMLib";
    OUTLINED_FUNCTION_13_19();
    v48 = "performCommand";
    OUTLINED_FUNCTION_1_41();
    OUTLINED_FUNCTION_4_37();
    _os_log_impl(v38, v39, v40, v41, v42, 0x20u);
  }

  return v23;
}

uint64_t LibCall_ACMKernelControl(uint64_t (*a1)(uint64_t, uint64_t, void, char *, size_t, uint64_t, uint64_t), uint64_t a2, int a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  if (gACMLoggingLevel <= 0xAu)
  {
    a1 = printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl");
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = a5 != 0;
  if (a4)
  {
    v14 = a5 - 4097 < 0xFFFFFFFFFFFFF000;
  }

  if (v14)
  {
LABEL_16:
    v18 = 70;
    v17 = 4294967293;
  }

  else
  {
    v20 = &v20;
    __chkstk_darwin(a1);
    v15 = (&v20 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0));
    bzero(v15, a5 + 4);
    *v15 = a3;
    v16 = v15 + 1;
    if (a5)
    {
      memcpy(v15 + 1, a4, a5);
      v16 = (v16 + a5);
    }

    if (v16 != (v15 + a5 + 4))
    {
      LibCall_ACMKernelControl_cold_1();
    }

    v17 = v13(a2, 26, 0, &v20 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0), a5 + 4, a6, a7);
    if (v17)
    {
      v18 = 70;
    }

    else
    {
      v18 = 10;
    }
  }

  if (v18 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl", v17);
  }

  return v17;
}

uint64_t ccder_encode_extension(const void *a1, unint64_t a2, const void *a3, unint64_t a4, int a5, uint64_t *a6)
{
  v12 = ccder_sizeof_extension(a2, a4, a5);
  v13 = a6[1];
  if (v13 - *a6 < v12)
  {
    return 0;
  }

  result = ccder_blob_encode_body_tl(a6, 4uLL, a2, a1);
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (a5)
  {
    v15 = a6[1];
    v16 = (v15 - 1);
    if (v15)
    {
      v17 = v16 >= *a6;
    }

    else
    {
      v17 = 0;
    }

    if (!v17 || (*v16 = -1, v18 = a6[1], v19 = v18 - 1, !v18) || *a6 > v19)
    {
      __break(0x5519u);
      return result;
    }

    a6[1] = v19;
    if (!ccder_blob_encode_tl(a6, 1uLL, 1uLL))
    {
      return 0;
    }
  }

  if (!ccder_blob_encode_body_tl(a6, 6uLL, a4, a3))
  {
    return 0;
  }

  v20 = v13 - a6[1];

  return ccder_blob_encode_tl(a6, 0x2000000000000010uLL, v20);
}

uint64_t ccder_sizeof_extension(unint64_t a1, unint64_t a2, int a3)
{
  v5 = ccder_sizeof(4, a1);
  v6 = ccder_sizeof(6, a2);
  if (a3)
  {
    result = ccder_sizeof(1, 1uLL);
  }

  else
  {
    result = 0;
  }

  v8 = result + v6;
  if (__CFADD__(result, v6) || __CFADD__(v8, v5))
  {
    __break(0x5500u);
  }

  else
  {

    return ccder_sizeof(0x2000000000000010, v8 + v5);
  }

  return result;
}

uint64_t CTDecompressGeneric(char *a1, int64_t a2, unint64_t *a3, unint64_t a4, unint64_t a5)
{
  v10 = 393217;
  if (!a1)
  {
    return v10;
  }

  v11 = a2;
  if (!a2)
  {
    return v10;
  }

  v99 = a3;
  if (a2 <= 0)
  {
    goto LABEL_231;
  }

  v6 = a5;
  v5 = a4;
  v7 = a1;
  v8 = *a1;
  *&v101 = 0xAAAAAAAAAAAAAAAALL;
  *(&v101 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v98 = ~a4;
  if (~a4 < a5)
  {
    goto LABEL_232;
  }

  v9 = (a4 + a5);
  if (a4 + a5 < a4)
  {
    goto LABEL_231;
  }

  *&v101 = a4;
  *(&v101 + 1) = a4 + a5;
  if (a4)
  {
    v12 = &v101;
  }

  else
  {
    v12 = 0;
  }

  v100 = 0;
  if ((v8 - 2) >= 2 && (v8 - 162) >= 2)
  {
    v20 = 0;
  }

  else
  {
    *v106 = 0;
    *&v105[0] = 0;
    Signature = CTDecompressGetSignature(v8, a1, a2, v105, v106);
    if (Signature)
    {
      return Signature;
    }

    v14 = (v5 + v6);
    v15 = CTNonVariableCompressedSizeForStyle(v8);
    v16 = v11 - v15;
    if (v11 < v15)
    {
      goto LABEL_233;
    }

    v17 = v16 - *v106;
    if (v16 < *v106)
    {
      goto LABEL_233;
    }

    if (__CFADD__(*&v105[0], *v106))
    {
      goto LABEL_232;
    }

    v9 = v12;
    v18 = (*&v105[0] + *v106);
    if (*&v105[0] + *v106 >= v7 == (*&v105[0] + *v106 - v7) < 0)
    {
      goto LABEL_232;
    }

    v19 = ccder_sizeof_extension(v17, 0xAuLL, 0);
    v20 = v19;
    if (v5)
    {
      if (*(&v101 + 1) - v101 < v19)
      {
        return 393220;
      }

      v94 = v6;
      if (&v7[v11] < v18 || v18 < v7 || v17 > &v7[v11] - v18)
      {
        goto LABEL_231;
      }

      v21 = v19;
      v22 = ccder_encode_extension(v18, v17, &CTOidAppleMFI4AccessoryData, 0xAuLL, 0, &v101);
      v20 = v21;
      v6 = v94;
      if ((v22 & 1) == 0)
      {
        return 393220;
      }
    }

    v12 = v9;
    v9 = v14;
  }

  if (v8 > 160)
  {
    if (v8 != 163 && v8 != 161)
    {
      goto LABEL_41;
    }
  }

  else if (v8 != 1 && v8 != 3)
  {
    goto LABEL_41;
  }

  v91 = v9;
  v95 = v6;
  v97 = v20;
  v23 = ccder_sizeof_extension(0x24uLL, 0xAuLL, 0);
  v24 = 124;
  if ((~v8 & 0xA0) == 0)
  {
    v24 = 122;
  }

  if (v24 + 36 > v11)
  {
    return 393217;
  }

  v25 = v23;
  v6 = v8;
  v9 = v11;
  if (v5)
  {
    if (*(&v101 + 1) - v101 < v23)
    {
      return 393220;
    }

    if (__CFADD__(v7, v24))
    {
      goto LABEL_232;
    }

    if (!ccder_encode_extension(&v7[v24], 0x24uLL, &CTOidAppleMFI4ProductPlanUID, 0xAuLL, 0, &v101))
    {
      return 393220;
    }
  }

  else if (__CFADD__(v7, v24))
  {
    goto LABEL_232;
  }

  v20 = v97 + v25;
  if (__CFADD__(v97, v25))
  {
    goto LABEL_181;
  }

  v6 = v95;
  v9 = v91;
LABEL_41:
  v97 = v20;
  if ((v8 - 4) >= 2 && (v8 - 164) >= 2)
  {
    v31 = ccder_sizeof_extension(0x20uLL, 0xAuLL, 1);
    v32 = 72;
    if ((~v8 & 0xA0) == 0)
    {
      v32 = 70;
    }

    if ((v32 | 0x20uLL) > v11)
    {
      return 393217;
    }

    v33 = v31;
    if (v5)
    {
      if (*(&v101 + 1) - v101 < v31)
      {
        return 393220;
      }

      if (__CFADD__(v7, v32))
      {
        goto LABEL_232;
      }

      if (!ccder_encode_extension(&v7[v32], 0x20uLL, &CTOidAppleMFI4Properties, 0xAuLL, 1, &v101))
      {
        return 393220;
      }
    }

    else if (__CFADD__(v7, v32))
    {
      goto LABEL_232;
    }

    if (__CFADD__(v97, v33))
    {
      goto LABEL_181;
    }

    v97 += v33;
  }

  a3 = &leaf_5280_extensions_template;
  v90 = v12;
  if (v8 > 159)
  {
    if ((v8 - 160) < 4)
    {
      v27 = 0;
      v28 = &ca_5280_extensions_template;
      v29 = 33;
      v30 = 102;
      goto LABEL_59;
    }

    v26 = v8 - 164;
  }

  else
  {
    v26 = v8 - 4;
    if (v8 < 4)
    {
      v27 = 0;
      v28 = &ca_5280_extensions_template;
      v29 = 33;
      v30 = 104;
      goto LABEL_59;
    }
  }

  Signature = 393218;
  if (v26 >= 2)
  {
    return Signature;
  }

  a3 = &ca_5280_extensions_template;
  v28 = &CTOidAppleMFI4ProductPlanUID;
  v27 = 1;
  v29 = 97;
  v30 = 78;
LABEL_59:
  if (v30 + 20 > v11)
  {
    return 393217;
  }

  if (v5)
  {
    v10 = *(&v101 + 1);
    if (*(&v101 + 1) - v101 < v29)
    {
      return 393220;
    }

    if (v101 > *(&v101 + 1))
    {
      goto LABEL_231;
    }

    v105[0] = v101;
    v34 = v28 >= a3;
    v35 = v28 - a3;
    if (!v34 || v29 > v35)
    {
      goto LABEL_231;
    }

    v92 = v101;
    v88 = v29;
    if (!ccder_blob_encode_body(&v101, v29, a3))
    {
      return 393226;
    }

    if (v27)
    {
      v103 = 0xAAAAAAAAAAAAAAAALL;
      v104 = 0xAAAAAAAAAAAAAAAALL;
      if (v10 >= 0xFFFFFFFFFFFFFFD1)
      {
        goto LABEL_232;
      }

      if (v10 < 0x2F || v92 > v10 - 47)
      {
        goto LABEL_231;
      }

      v103 = v92;
      v104 = v10 - 47;
      if (__CFADD__(v7, v30))
      {
        goto LABEL_232;
      }

      if (v11 - v30 < 0x14)
      {
        goto LABEL_231;
      }

      if (!ccder_blob_encode_body(&v103, 0x14uLL, &v7[v30]))
      {
        return 393226;
      }

      memset(v106, 170, 20);
      v36 = CTDecompressCAComputeSKID(v7, v11, v106);
      if (v36)
      {
        return v36;
      }

      if (v92 > v10 - 16)
      {
        goto LABEL_231;
      }

      v102[0] = v92;
      v102[1] = v10 - 16;
      v37 = v102;
      v38 = v106;
    }

    else
    {
      if (__CFADD__(v7, v30))
      {
        goto LABEL_232;
      }

      if (v11 - v30 < 0x14)
      {
        goto LABEL_231;
      }

      v37 = v105;
      v38 = &v7[v30];
    }

    if (!ccder_blob_encode_body(v37, 0x14uLL, v38))
    {
      return 393226;
    }

    v10 = v97 + v88;
    if (__CFADD__(v97, v88))
    {
      goto LABEL_181;
    }

    if ((ccder_blob_encode_tl(&v101, 0x2000000000000010uLL, v97 + v88) & 1) == 0)
    {
      return 393220;
    }

    v40 = ccder_sizeof(0x2000000000000010, v10);
    if ((ccder_blob_encode_tl(&v101, 0xA000000000000003, v40) & 1) == 0)
    {
      return 393220;
    }
  }

  else
  {
    v34 = __CFADD__(v97, v29);
    v39 = v97 + v29;
    if (v34)
    {
      goto LABEL_181;
    }

    v40 = ccder_sizeof(0x2000000000000010, v39);
  }

  v10 = ccder_sizeof(0xA000000000000003, v40);
  v100 = v10;
  if (v8 > 159)
  {
    if ((v8 - 160) < 4)
    {
      v42 = 37;
      goto LABEL_99;
    }

    v41 = v8 - 164;
  }

  else
  {
    v41 = v8 - 4;
    if (v8 < 4)
    {
      v42 = 39;
      goto LABEL_99;
    }
  }

  Signature = 393218;
  if (v41 >= 2)
  {
    return Signature;
  }

  v42 = 45;
LABEL_99:
  if (v5 && *(&v101 + 1) - v101 < 0x5BuLL)
  {
    return 393220;
  }

  if (__CFADD__(v7, v42))
  {
    goto LABEL_232;
  }

  v44 = &v7[v42];
  v45 = &v7[v11];
  if (v44 > &v7[v11] || v44 < v7)
  {
    goto LABEL_231;
  }

  *&v105[0] = v44;
  *(&v105[0] + 1) = 33;
  v109 = -86;
  *&v46 = 0xAAAAAAAAAAAAAAAALL;
  *(&v46 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v108 = v46;
  *&v106[16] = v46;
  v107 = v46;
  *v106 = v46;
  Signature = decompressECPublicKey(v105, &CTOidSECP256r1, v106, 65);
  if (Signature)
  {
    return Signature;
  }

  if (v5)
  {
    Signature = 393226;
    if (!ccder_blob_encode_body(&v101, 0x41uLL, v106) || !ccder_blob_encode_body(&v101, 0x1AuLL, &spki_template))
    {
      return Signature;
    }
  }

  v100 = 91;
  v47 = v10 + 91;
  if (v10 >= 0xFFFFFFFFFFFFFFA5)
  {
    goto LABEL_181;
  }

  if (v8 > 159)
  {
    if ((v8 - 160) < 4)
    {
      a3 = &attestation_leaf_subject;
      v48 = &attestation_ca_subject;
      v49 = 14;
      v50 = 64;
      v51 = 164;
      v52 = 37;
      v53 = 33;
      goto LABEL_122;
    }

    Signature = 393218;
    if ((v8 - 164) >= 2)
    {
      return Signature;
    }

    a3 = &attestation_ca_subject;
    v48 = &root_subject;
    v49 = 58;
    v51 = 108;
  }

  else
  {
    if (v8 < 4)
    {
      a3 = &mfi_leaf_subject;
      v48 = &mfi_ca_subject;
      v49 = 17;
      v50 = 32;
      v51 = 119;
      v52 = 1;
      v53 = 16;
      goto LABEL_122;
    }

    Signature = 393218;
    if ((v8 - 4) >= 2)
    {
      return Signature;
    }

    a3 = &mfi_ca_subject;
    v48 = &attestation_leaf_subject;
    v49 = 57;
    v51 = 107;
  }

  v52 = 37;
  v53 = 8;
  v50 = 8;
LABEL_122:
  if (!v5)
  {
    v100 = v51;
    v60 = v47 + v51;
    if (__CFADD__(v47, v51))
    {
      goto LABEL_181;
    }

    goto LABEL_139;
  }

  v97 = v10 + 91;
  v54 = *(&v101 + 1);
  v10 = v101;
  if (*(&v101 + 1) - v101 < v51)
  {
    return 393220;
  }

  v87 = v52;
  v89 = v49;
  __n = v53;
  if (v101 > *(&v101 + 1) || a3 > v48 || v51 > v48 - a3)
  {
    goto LABEL_231;
  }

  v93 = v50;
  v85 = v51;
  if (!ccder_blob_encode_body(&v101, v51, a3))
  {
    return 393226;
  }

  if (__CFADD__(*(&v101 + 1), v89))
  {
    goto LABEL_232;
  }

  a3 = (*(&v101 + 1) + v89);
  if (*(&v101 + 1) + v89 >= v10 == (*(&v101 + 1) + v89 - v10) < 0)
  {
    goto LABEL_232;
  }

  v55 = &v7[v87];
  v56 = v93;
  if (&v7[v87] < v7 || a3 > v54 || v10 > a3 || v93 > v54 - a3 || v55 > v45)
  {
    goto LABEL_231;
  }

  if (v8 <= 159)
  {
    v57 = v8 - 4;
    if (v8 < 4)
    {
      v58 = &v7[v87];
      v59 = __n;
      goto LABEL_171;
    }

    v10 = *(&v101 + 1) + v89;
LABEL_176:
    Signature = 393218;
    v75 = v97;
    if (v57 >= 2)
    {
      return Signature;
    }

    a3 = __n;
    if (__n > v93)
    {
      goto LABEL_231;
    }

    v76 = v10;
    v77 = v10;
    v10 = __n;
    memcpy(v77, v55, __n);
    if (v76 > v76 + __n)
    {
      goto LABEL_231;
    }

    goto LABEL_179;
  }

  v10 = *(&v101 + 1) + v89;
  if ((v8 - 160) >= 4)
  {
    v57 = v8 - 164;
    goto LABEL_176;
  }

  v103 = &v7[v87];
  v104 = __n;
  v109 = -86;
  *&v73 = 0xAAAAAAAAAAAAAAAALL;
  *(&v73 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v108 = v73;
  *&v106[16] = v73;
  v107 = v73;
  *v106 = v73;
  Signature = decompressECPublicKey(&v103, &CTOidSECP256r1, v106, 65);
  if (Signature)
  {
    goto LABEL_172;
  }

  v74 = ccsha256_di();
  memset(v105, 0, sizeof(v105));
  ccdigest(v74, 0x41uLL, v106, v105);
  v58 = v105;
  v59 = 32;
  a3 = v10;
  v56 = v93;
LABEL_171:
  Signature = CTConvertByteArrayToAsciiHex(v58, v59, a3, v56);
LABEL_172:
  v75 = v97;
  if (Signature)
  {
    return Signature;
  }

LABEL_179:
  v100 = v85;
  v34 = __CFADD__(v75, v85);
  v60 = v75 + v85;
  if (v34)
  {
    goto LABEL_181;
  }

LABEL_139:
  if (v8 > 159)
  {
    if ((v8 - 160) < 4)
    {
LABEL_145:
      v65 = 0;
      v64 = 0;
      v62 = 1;
      v10 = 9;
      v63 = 23;
      goto LABEL_146;
    }

    v61 = v8 - 164;
LABEL_144:
    Signature = 393218;
    if (v61 >= 2)
    {
      return Signature;
    }

    goto LABEL_145;
  }

  v61 = v8 - 4;
  if (v8 >= 4)
  {
    goto LABEL_144;
  }

  v62 = 0;
  v63 = 0;
  v64 = &endOfTime;
  v65 = nibbleToAsciiByte;
  v10 = 25;
LABEL_146:
  v66 = &v7[v63];
  if (v62)
  {
    v67 = &v7[v11];
  }

  else
  {
    v67 = v65;
  }

  if (v62)
  {
    v68 = v66;
  }

  else
  {
    v68 = v64;
  }

  *v106 = 0;
  v69 = v62 ^ 1;
  if (v66 >= v7)
  {
    v70 = 1;
  }

  else
  {
    v70 = v69;
  }

  if (v67 < v68 || !v70 || &v67[-v68] <= 13)
  {
    goto LABEL_231;
  }

  v36 = CTDecompressDate(v68, v90, v106);
  if (v36)
  {
    return v36;
  }

  v71 = &v7[v10];
  if (&v7[v10] > v45 || v71 < v7)
  {
    goto LABEL_231;
  }

  v72 = *v106;
  v36 = CTDecompressDate(v71, v90, v106);
  if (v36)
  {
    return v36;
  }

  v34 = __CFADD__(v72, *v106);
  v10 = v72 + *v106;
  if (v34)
  {
    goto LABEL_181;
  }

  if (v5 && (ccder_blob_encode_tl(&v101, 0x2000000000000010uLL, v10) & 1) == 0)
  {
    return 393220;
  }

  v100 = ccder_sizeof(0x2000000000000010, v10);
  v10 = v60 + v100;
  if (__CFADD__(v60, v100))
  {
    goto LABEL_181;
  }

  v36 = CTDecompressIssuer(v8, v7, v11, v90, &v100);
  if (v36)
  {
    return v36;
  }

  while (1)
  {
    v34 = __CFADD__(v10, v100);
    v10 += v100;
    if (v34)
    {
      goto LABEL_181;
    }

    v78 = 393220;
    if (v5)
    {
      if (*(&v101 + 1) - v101 < 0xCuLL)
      {
        return 393220;
      }

      if (!ccder_blob_encode_body(&v101, 0xCuLL, &signature_algorithm_template))
      {
        return 393226;
      }
    }

    v100 = 12;
    v34 = __CFADD__(v10, 12);
    v10 += 12;
    if (v34)
    {
      goto LABEL_181;
    }

    v36 = CTDecompressSerialNumber(v8, v7, v11, v90, &v100);
    if (v36)
    {
      return v36;
    }

    v34 = __CFADD__(v10, v100);
    v10 += v100;
    if (v34)
    {
      goto LABEL_181;
    }

    if (v5)
    {
      if (*(&v101 + 1) - v101 < 5uLL)
      {
        return 393220;
      }

      if (!ccder_blob_encode_body(&v101, 5uLL, &version_template))
      {
        return 393226;
      }

      v100 = 5;
      v34 = __CFADD__(v10, 5);
      v10 += 5;
      if (v34)
      {
        goto LABEL_181;
      }

      if (!ccder_blob_encode_tl(&v101, 0x2000000000000010uLL, v10))
      {
        return 393226;
      }
    }

    else
    {
      v100 = 5;
      v34 = __CFADD__(v10, 5);
      v10 += 5;
      if (v34)
      {
        goto LABEL_181;
      }
    }

    v79 = ccder_sizeof(0x2000000000000010, v10);
    *v106 = 0;
    *&v105[0] = 0;
    v80 = CTDecompressGetSignature(v8, v7, v11, v105, v106);
    if (v80)
    {
      return v80;
    }

    if (*v106 != -1)
    {
      v96 = v79 + 12;
      if (v79 < 0xFFFFFFFFFFFFFFF4)
      {
        v81 = ccder_sizeof(3, *v106 + 1);
        if (!__CFADD__(v96, v81))
        {
          break;
        }
      }
    }

LABEL_181:
    __break(0x5500u);
  }

  v97 = ccder_sizeof_tl(0x2000000000000010, v96 + v81);
  if (v5)
  {
    v10 = v97 + v79;
    if (__CFADD__(v97, v79))
    {
      goto LABEL_181;
    }

    if (v10 > v6)
    {
      return v78;
    }

    if (v97 > v98)
    {
      goto LABEL_232;
    }

    v82 = *(&v101 + 1);
    if (*(&v101 + 1) >= v5 == (*(&v101 + 1) - v5) < 0)
    {
      goto LABEL_232;
    }

    *&v101 = v5;
    *(&v101 + 1) = v9;
    if (v9 < v82)
    {
      goto LABEL_231;
    }

    if (v82 < v5)
    {
      goto LABEL_231;
    }

    if (v79 > v9 - v82)
    {
      goto LABEL_231;
    }

    v83 = v5 + v97;
    if (v5 + v97 > v9)
    {
      goto LABEL_231;
    }

    if (v83 < v5)
    {
      goto LABEL_231;
    }

    if (v79 > v6 - v97)
    {
      goto LABEL_231;
    }

    memmove((v5 + v97), v82, v79);
    if (v83 > v83 + v79)
    {
      goto LABEL_231;
    }

    if (v10 >= 0xFFFFFFFFFFFFFFF4)
    {
      goto LABEL_181;
    }

    if (v10 + 12 > v6)
    {
      return v78;
    }

    if (__CFADD__(v83, v79))
    {
      goto LABEL_232;
    }

    v84 = v83 + v79;
    if (v9 < v83 + v79)
    {
      goto LABEL_231;
    }

    if (v84 < v5)
    {
      goto LABEL_231;
    }

    if (v9 - v83 - v79 < 0xC)
    {
      goto LABEL_231;
    }

    *(v84 + 8) = 33752125;
    *v84 = 0xCE48862A08060A30;
    if (v84 >= v84 + 12)
    {
      goto LABEL_231;
    }
  }

  v80 = CTDecompressSignature(v8, v7, v11, v90, &v100);
  if (v80)
  {
    return v80;
  }

  a3 = (v96 + v100);
  if (__CFADD__(v96, v100))
  {
    goto LABEL_181;
  }

  if (!v5)
  {
    goto LABEL_234;
  }

  v11 = a3 + v97;
  if (__CFADD__(v97, a3))
  {
    goto LABEL_181;
  }

  if (v11 > v6)
  {
    return v78;
  }

  if (v97 > v98)
  {
LABEL_232:
    __break(0x5513u);
LABEL_233:
    __break(0x5515u);
LABEL_234:
    v11 = a3 + v97;
    if (!__CFADD__(a3, v97))
    {
      goto LABEL_235;
    }

    goto LABEL_181;
  }

  if (v5 + v97 > v9 || v5 + v97 < v5)
  {
LABEL_231:
    __break(0x5519u);
    goto LABEL_232;
  }

  *&v101 = v5;
  *(&v101 + 1) = v5 + v97;
  if ((ccder_blob_encode_tl(&v101, 0x2000000000000010uLL, a3) & 1) == 0)
  {
    return 393226;
  }

LABEL_235:
  v78 = 0;
  if (v99)
  {
    *v99 = v11;
  }

  return v78;
}

uint64_t CTCompressComputeBufferSize(unint64_t a1, uint64_t a2, void *a3)
{
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_16:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_16;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30 = v6;
  v31 = v6;
  v28 = v6;
  v29 = v6;
  v26 = v6;
  v27 = v6;
  v24 = v6;
  v25 = v6;
  v22 = v6;
  v23 = v6;
  v20 = v6;
  v21 = v6;
  v18 = v6;
  v19 = v6;
  v16[3] = v6;
  v17 = v6;
  v16[1] = v6;
  v16[2] = v6;
  v16[0] = v6;
  v15[0] = a1;
  v15[1] = a1 + a2;
  v7 = X509CertificateParse(v16, v15);
  if (v7)
  {
    return v7;
  }

  v7 = 393218;
  v9 = CTCompressedStyleFromCert(v16);
  if (v9 == 255)
  {
    return v7;
  }

  v10 = v9;
  result = CTNonVariableCompressedSizeForStyle(v9);
  if (result < 0)
  {
    return v7;
  }

  v11 = result + v17;
  if (!__CFADD__(result, v17))
  {
    if ((v10 - 162) >= 2 && (v10 - 2) > 1)
    {
      goto LABEL_13;
    }

    v13 = 0;
    v14 = 0;
    result = CTParseExtensionValue(a1, a2, &CTOidAppleMFI4AccessoryData, 0xAuLL, &v13, &v14);
    if (result)
    {
      return result;
    }

    v12 = __CFADD__(v11, v14);
    v11 += v14;
    if (!v12)
    {
LABEL_13:
      v7 = 0;
      if (a3)
      {
        *a3 = v11;
      }

      return v7;
    }
  }

  __break(0x5500u);
  return result;
}

uint64_t CTCompressedStyleFromCert(uint64_t a1)
{
  v2 = a1 + 120;
  v12[0] = 0xAAAAAAAAAAAAAAAALL;
  v12[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 136)
  {
    __break(0x5519u);
  }

  if (X509CertificateSubjectNameGetCommonName(v2, v12))
  {
    return 255;
  }

  if (*(a1 + 265) == 1)
  {
    X509PolicySetFlagsForCommonNames(a1);
    v4 = *(a1 + 240);
    if ((v4 & 0x400000000) != 0)
    {
      v5 = 0;
LABEL_13:
      if (compare_octet_string_partial(&MFi4RootName, v12))
      {
        return v5 | 5u;
      }

      else
      {
        return v5 | 4u;
      }
    }

    if ((v4 & 0x800000000) != 0)
    {
      v5 = 160;
      goto LABEL_13;
    }

    return 255;
  }

  if ((~*(a1 + 240) & 0xC00000000) != 0)
  {
    return 255;
  }

  if (compare_octet_string_partial(&MFi4AccessoryCAName, v12))
  {
    if (compare_octet_string_partial(&MFi4AttestationCAName, v12))
    {
      return 255;
    }

    v6 = 160;
  }

  else
  {
    v6 = 0;
  }

  v10 = 0;
  v11 = 0;
  v7 = CTParseExtensionValue(*a1, *(a1 + 8), &CTOidAppleMFI4AccessoryData, 0xAuLL, &v10, &v11);
  v8 = CTParseExtensionValue(*a1, *(a1 + 8), &CTOidAppleMFI4ProductPlanUID, 0xAuLL, &v10, &v11);
  v9 = v6 | 2;
  if (v7)
  {
    v9 = v6;
  }

  if (!v8)
  {
    v9 = v6 | 1;
  }

  if (v8 | v7)
  {
    return v9;
  }

  else
  {
    return v6 | 3u;
  }
}

uint64_t CTNonVariableCompressedSizeForStyle(int a1)
{
  if (a1 > 159)
  {
    if (a1 > 162)
    {
      if (a1 != 163)
      {
        if (a1 != 164 && a1 != 165)
        {
          return -1;
        }

        return 98;
      }
    }

    else if (a1 != 161)
    {
      return 122;
    }

    return 158;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 160;
    }

    if (a1 != 4 && a1 != 5)
    {
      return -1;
    }

    return 98;
  }

  result = 124;
  if (!a1)
  {
    return result;
  }

  if (a1 == 1)
  {
    return 160;
  }

  if (a1 != 2)
  {
    return -1;
  }

  return result;
}

void CTCompress(unint64_t a1, uint64_t a2, _BYTE *a3, size_t a4)
{
  v42 = 0;
  if (!CTCompressComputeBufferSize(a1, a2, &v42))
  {
    v8 = 393220;
    if (a4)
    {
      if (v42 <= a4)
      {
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v40 = v9;
        v41 = v9;
        v38 = v9;
        v39 = v9;
        v36 = v9;
        v37 = v9;
        v34 = v9;
        v35 = v9;
        v32[2] = v9;
        v33 = v9;
        v32[0] = v9;
        v32[1] = v9;
        v30 = v9;
        v31 = v9;
        *__src = v9;
        *__n = v9;
        v27[1] = v9;
        v27[2] = v9;
        v27[0] = v9;
        v25 = 0xAAAAAAAAAAAAAAAALL;
        v26 = 0xAAAAAAAAAAAAAAAALL;
        if (!__CFADD__(a1, a2))
        {
          v25 = a1;
          v26 = a1 + a2;
          if (X509CertificateParse(v27, &v25))
          {
            return;
          }

          bzero(a3, a4);
          if (&a3[a4] < a3)
          {
            goto LABEL_55;
          }

          v10 = CTCompressedStyleFromCert(v27);
          if (v10 == 255)
          {
            return;
          }

          *a3 = v10;
          if ((v10 & 4) == 0)
          {
            if ((~v10 & 0xA0) != 0)
            {
              v11 = CTCompressMFiLeaf(v27, a3, a4);
            }

            else
            {
              v11 = CTCompressAttestationLeaf(v27, a3, a4);
            }

LABEL_22:
            if (!v11)
            {
              return;
            }

LABEL_23:
            bzero(a3, a4);
            if (&a3[a4] >= a3)
            {
              return;
            }

LABEL_55:
            __break(0x5519u);
            return;
          }

          if (a3 != -1)
          {
            CommonNameSuffixPointer = CTCompressGetCommonNameSuffixPointer(v32 + 8);
            if (!CommonNameSuffixPointer || a4 < 9)
            {
              goto LABEL_23;
            }

            *(a3 + 1) = *CommonNameSuffixPointer;
            v13 = a3 + 9;
            if (a3 + 1 > a3 + 9)
            {
              goto LABEL_55;
            }

            if ((a3 + 1) <= 0xFFFFFFFFFFFFFFF7)
            {
              memset(v44, 170, sizeof(v44));
              v11 = X509CertificateParseValidity(v27, &v44[2], v44);
              if (v11)
              {
                goto LABEL_22;
              }

              memset(v48, 170, 14);
              v14 = CTGetGeneralizedTime(&v44[2], v48);
              if (v14)
              {
                goto LABEL_19;
              }

              if (a4 < 0x17)
              {
                goto LABEL_20;
              }

              *v13 = v48[0];
              *(a3 + 15) = *(v48 + 6);
              v15 = a3 + 23;
              if (v13 > (a3 + 23))
              {
                goto LABEL_55;
              }

              if (v13 <= 0xFFFFFFFFFFFFFFF1)
              {
                v14 = CTGetGeneralizedTime(v44, v48);
                if (v14)
                {
                  goto LABEL_19;
                }

                if (a4 < 0x25)
                {
                  goto LABEL_20;
                }

                *v15 = v48[0];
                *(a3 + 29) = *(v48 + 6);
                v16 = (a3 + 37);
                if (v15 > (a3 + 37))
                {
                  goto LABEL_55;
                }

                if (v15 <= 0xFFFFFFFFFFFFFFF1)
                {
                  v17 = CTCompressGetCommonNameSuffixPointer(&v31 + 8);
                  if (!v17)
                  {
                    v8 = 393224;
                    goto LABEL_20;
                  }

                  if (a4 < 0x2D)
                  {
LABEL_20:
                    v11 = v8;
                    goto LABEL_22;
                  }

                  *(a3 + 37) = *v17;
                  v18 = a3 + 45;
                  if (v16 > (a3 + 45))
                  {
                    goto LABEL_55;
                  }

                  if (v16 <= 0xFFFFFFFFFFFFFFF7)
                  {
                    v47 = -86;
                    *&v19 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v45 = v19;
                    v46 = v19;
                    memset(v43, 170, sizeof(v43));
                    v14 = X509CertificateParseSPKI(&v30 + 1, 0, v43, &v43[2]);
                    if (!v14)
                    {
                      v14 = compressECPublicKey(&v43[2], v43, &v45, 33);
                      if (!v14)
                      {
                        if (a4 < 0x4E)
                        {
                          goto LABEL_20;
                        }

                        v20 = v46;
                        *v18 = v45;
                        *(a3 + 61) = v20;
                        a3[77] = v47;
                        v21 = a3 + 78;
                        if (v18 > (a3 + 78))
                        {
                          goto LABEL_55;
                        }

                        if (v18 <= 0xFFFFFFFFFFFFFFDELL)
                        {
                          v8 = 393221;
                          if (!*(&v33 + 1) || v34 != 20)
                          {
                            goto LABEL_20;
                          }

                          if (a4 < 0x62)
                          {
                            v8 = 393220;
                            goto LABEL_20;
                          }

                          v22 = **(&v33 + 1);
                          *(a3 + 94) = *(*(&v33 + 1) + 16);
                          *v21 = v22;
                          v23 = a3 + 98;
                          if (v21 > (a3 + 98))
                          {
                            goto LABEL_55;
                          }

                          if (v21 <= 0xFFFFFFFFFFFFFFEBLL)
                          {
                            v8 = 655619;
                            if (!__src[1])
                            {
                              goto LABEL_20;
                            }

                            v24 = __n[0];
                            if (__n[0] - 73 < 0xFFFFFFFFFFFFFFFDLL)
                            {
                              goto LABEL_20;
                            }

                            v8 = 393220;
                            if (__n[0] + 98 > a4)
                            {
                              goto LABEL_20;
                            }

                            memcpy(a3 + 98, __src[1], __n[0]);
                            if (v23 > &v23[v24])
                            {
                              goto LABEL_55;
                            }

                            if (!__CFADD__(v23, v24))
                            {
                              v8 = 0;
                              goto LABEL_20;
                            }
                          }
                        }

                        goto LABEL_54;
                      }
                    }

LABEL_19:
                    v8 = v14;
                    goto LABEL_20;
                  }
                }
              }
            }
          }
        }

LABEL_54:
        __break(0x5513u);
        goto LABEL_55;
      }
    }
  }
}

uint64_t CTCompressAttestationLeaf(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  if (a2 == -1)
  {
    goto LABEL_77;
  }

  v4 = (a1 + 15);
  if (v4 > (a1 + 17))
  {
    goto LABEL_78;
  }

  v7 = 393220;
  CommonNameSuffixPointer = CTCompressGetCommonNameSuffixPointer(v4);
  if (!CommonNameSuffixPointer)
  {
    return 393224;
  }

  if (a3 >= 9)
  {
    v9 = a2 + 1;
    if (a2 + 1 < a2)
    {
      goto LABEL_78;
    }

    v10 = a2 + a3;
    if (v9 > a2 + a3)
    {
      goto LABEL_78;
    }

    *(a2 + 1) = *CommonNameSuffixPointer;
    v11 = (a2 + 9);
    if (v9 > a2 + 9)
    {
      goto LABEL_78;
    }

    if (v9 <= 0xFFFFFFFFFFFFFFF7)
    {
      memset(v38, 170, sizeof(v38));
      v12 = X509CertificateParseValidity(a1, &v38[2], v38);
      if (v12)
      {
        return v12;
      }

      memset(v42, 170, 14);
      v13 = CTGetGeneralizedTime(&v38[2], v42);
      if (v13)
      {
        return v13;
      }

      if (a3 < 0x17)
      {
        return v7;
      }

      if (v11 < a2)
      {
        goto LABEL_78;
      }

      if (v11 > v10)
      {
        goto LABEL_78;
      }

      *v11 = v42[0];
      *(a2 + 15) = *(v42 + 6);
      v15 = (a2 + 23);
      if (v11 > a2 + 23)
      {
        goto LABEL_78;
      }

      if (v11 <= 0xFFFFFFFFFFFFFFF1)
      {
        v13 = CTGetGeneralizedTime(v38, v42);
        if (v13)
        {
          return v13;
        }

        if (a3 < 0x25)
        {
          return v7;
        }

        if (v15 < a2)
        {
          goto LABEL_78;
        }

        if (v15 > v10)
        {
          goto LABEL_78;
        }

        *v15 = v42[0];
        *(a2 + 29) = *(v42 + 6);
        v16 = (a2 + 37);
        if (v15 > a2 + 37)
        {
          goto LABEL_78;
        }

        if (v15 <= 0xFFFFFFFFFFFFFFF1)
        {
          v41 = -86;
          *&v17 = 0xAAAAAAAAAAAAAAAALL;
          *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v39 = v17;
          v40 = v17;
          memset(v37, 170, sizeof(v37));
          v13 = X509CertificateParseSPKI(a1 + 11, 0, v37, &v37[2]);
          if (v13)
          {
            return v13;
          }

          v13 = compressECPublicKey(&v37[2], v37, &v39, 33);
          if (v13)
          {
            return v13;
          }

          if (a3 < 0x46)
          {
            return 393220;
          }

          if (v16 < a2)
          {
            goto LABEL_78;
          }

          if (v16 > v10)
          {
            goto LABEL_78;
          }

          v18 = v40;
          *v16 = v39;
          *(a2 + 53) = v18;
          *(a2 + 69) = v41;
          v19 = (a2 + 70);
          if (v16 > a2 + 70)
          {
            goto LABEL_78;
          }

          if (v16 <= 0xFFFFFFFFFFFFFFDELL)
          {
            v20 = a1[31];
            v13 = 393222;
            if (!v20 || a1[32] != 32)
            {
              return v13;
            }

            if (a3 < 0x66)
            {
              return 393220;
            }

            if (v19 < a2)
            {
              goto LABEL_78;
            }

            if (v19 > v10)
            {
              goto LABEL_78;
            }

            v21 = v20[1];
            *v19 = *v20;
            *(a2 + 86) = v21;
            v22 = (a2 + 102);
            if (v19 > a2 + 102)
            {
              goto LABEL_78;
            }

            if (v19 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              v23 = a1[21];
              v13 = 393221;
              if (!v23 || a1[22] != 20)
              {
                return v13;
              }

              if (a3 < 0x7A)
              {
                return 393220;
              }

              if (v22 < a2)
              {
                goto LABEL_78;
              }

              if (v22 > v10)
              {
                goto LABEL_78;
              }

              v24 = *v23;
              *(a2 + 118) = *(v23 + 16);
              *v22 = v24;
              v25 = (a2 + 122);
              if (v22 > a2 + 122)
              {
                goto LABEL_78;
              }

              if (v22 <= 0xFFFFFFFFFFFFFFEBLL)
              {
                __src = 0;
                __n = 0;
                if (CTParseExtensionValue(*a1, a1[1], &CTOidAppleMFI4ProductPlanUID, 0xAuLL, &__src, &__n))
                {
                  v26 = 122;
                }

                else
                {
                  v13 = 393222;
                  if (!__src || __n != 36)
                  {
                    return v13;
                  }

                  if (a3 < 0x9E)
                  {
                    return 393220;
                  }

                  if (v25 < a2)
                  {
                    goto LABEL_78;
                  }

                  if (v25 > v10)
                  {
                    goto LABEL_78;
                  }

                  v31 = *__src;
                  v32 = *(__src + 1);
                  *(a2 + 154) = *(__src + 8);
                  *v25 = v31;
                  *(a2 + 138) = v32;
                  if (v25 > a2 + 158)
                  {
                    goto LABEL_78;
                  }

                  if (v25 > 0xFFFFFFFFFFFFFFDBLL)
                  {
                    goto LABEL_77;
                  }

                  v26 = 158;
                  v25 = (a2 + 158);
                }

                v27 = a1[7];
                v13 = 655619;
                if (!v27)
                {
                  return v13;
                }

                v28 = a1[8];
                if (v28 - 73 < 0xFFFFFFFFFFFFFFFDLL)
                {
                  return v13;
                }

                v29 = v28 + v26;
                if (v28 + v26 > a3)
                {
                  return 393220;
                }

                if (v25 > v10)
                {
                  goto LABEL_78;
                }

                if (v25 < a2)
                {
                  goto LABEL_78;
                }

                if (v28 > v10 - v25)
                {
                  goto LABEL_78;
                }

                memcpy(v25, v27, a1[8]);
                if (v25 > (v25 + v28))
                {
                  goto LABEL_78;
                }

                v30 = a1[8];
                if (!__CFADD__(v25, v30))
                {
                  if (CTParseExtensionValue(*a1, a1[1], &CTOidAppleMFI4AccessoryData, 0xAuLL, &__src, &__n))
                  {
                    return 0;
                  }

                  if (!__src)
                  {
                    return 393222;
                  }

                  v33 = __n;
                  v13 = 393220;
                  if (__n + v29 <= a3)
                  {
                    v34 = v25 + v30;
                    if (v25 + v30 <= v10 && v34 >= a2 && __n <= v10 - v34)
                    {
                      memcpy(v25 + v30, __src, __n);
                      if (v34 <= &v34[v33])
                      {
                        if (!__CFADD__(v34, v33))
                        {
                          return 0;
                        }

                        goto LABEL_77;
                      }
                    }

LABEL_78:
                    __break(0x5519u);
                  }

                  return v13;
                }
              }
            }
          }
        }
      }
    }

LABEL_77:
    __break(0x5513u);
    goto LABEL_78;
  }

  return v7;
}

uint64_t CTCompressMFiLeaf(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  if (a2 == -1)
  {
    goto LABEL_78;
  }

  v4 = 393220;
  v5 = a1[17];
  if (v5)
  {
    v6 = a1[18] == 16;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return 393223;
  }

  if (a3 < 0x11)
  {
    return v4;
  }

  v9 = (a2 + 1);
  if (a2 + 1 < a2)
  {
    goto LABEL_79;
  }

  v10 = a2 + a3;
  if (v9 > a2 + a3)
  {
    goto LABEL_79;
  }

  *v9 = *v5;
  v11 = a2 + 17;
  if (v9 > a2 + 17)
  {
    goto LABEL_79;
  }

  if (v9 > 0xFFFFFFFFFFFFFFEFLL)
  {
    goto LABEL_78;
  }

  CommonNameSuffixPointer = CTCompressGetCommonNameSuffixPointer((a1 + 15));
  if (!CommonNameSuffixPointer)
  {
    return 393224;
  }

  if (a3 >= 0x19)
  {
    if (v11 < a2)
    {
      goto LABEL_79;
    }

    if (v11 > v10)
    {
      goto LABEL_79;
    }

    *(a2 + 17) = *CommonNameSuffixPointer;
    v13 = (a2 + 25);
    if (v11 > a2 + 25)
    {
      goto LABEL_79;
    }

    if (v11 > 0xFFFFFFFFFFFFFFF7)
    {
      goto LABEL_78;
    }

    v37[0] = 0xAAAAAAAAAAAAAAAALL;
    v37[1] = 0xAAAAAAAAAAAAAAAALL;
    v14 = X509CertificateParseValidity(a1, v37, 0);
    if (v14)
    {
      return v14;
    }

    *(v41 + 6) = 0xAAAAAAAAAAAAAAAALL;
    v41[0] = 0xAAAAAAAAAAAAAAAALL;
    v14 = CTGetGeneralizedTime(v37, v41);
    if (v14)
    {
      return v14;
    }

    if (a3 < 0x27)
    {
      return 393220;
    }

    if (v13 < a2)
    {
      goto LABEL_79;
    }

    if (v13 > v10)
    {
      goto LABEL_79;
    }

    *v13 = v41[0];
    *(a2 + 31) = *(v41 + 6);
    v15 = (a2 + 39);
    if (v13 > a2 + 39)
    {
      goto LABEL_79;
    }

    if (v13 > 0xFFFFFFFFFFFFFFF1)
    {
      goto LABEL_78;
    }

    v40 = -86;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v38 = v16;
    v39 = v16;
    memset(v36, 170, sizeof(v36));
    v14 = X509CertificateParseSPKI(a1 + 11, 0, v36, &v36[2]);
    if (v14)
    {
      return v14;
    }

    v14 = compressECPublicKey(&v36[2], v36, &v38, 33);
    if (v14)
    {
      return v14;
    }

    if (a3 < 0x48)
    {
      return 393220;
    }

    if (v15 < a2)
    {
      goto LABEL_79;
    }

    if (v15 > v10)
    {
      goto LABEL_79;
    }

    v18 = v39;
    *v15 = v38;
    *(a2 + 55) = v18;
    *(a2 + 71) = v40;
    v19 = (a2 + 72);
    if (v15 > a2 + 72)
    {
      goto LABEL_79;
    }

    if (v15 > 0xFFFFFFFFFFFFFFDELL)
    {
      goto LABEL_78;
    }

    v20 = a1[31];
    v14 = 393222;
    if (!v20 || a1[32] != 32)
    {
      return v14;
    }

    if (a3 < 0x68)
    {
      return 393220;
    }

    if (v19 < a2)
    {
      goto LABEL_79;
    }

    if (v19 > v10)
    {
      goto LABEL_79;
    }

    v21 = v20[1];
    *v19 = *v20;
    *(a2 + 88) = v21;
    v22 = (a2 + 104);
    if (v19 > a2 + 104)
    {
      goto LABEL_79;
    }

    if (v19 > 0xFFFFFFFFFFFFFFDFLL)
    {
      goto LABEL_78;
    }

    v23 = a1[21];
    v14 = 393221;
    if (!v23 || a1[22] != 20)
    {
      return v14;
    }

    if (a3 < 0x7C)
    {
      return 393220;
    }

    if (v22 < a2)
    {
      goto LABEL_79;
    }

    if (v22 > v10)
    {
      goto LABEL_79;
    }

    v24 = *v23;
    *(a2 + 120) = *(v23 + 16);
    *v22 = v24;
    v25 = (a2 + 124);
    if (v22 > a2 + 124)
    {
      goto LABEL_79;
    }

    if (v22 > 0xFFFFFFFFFFFFFFEBLL)
    {
      goto LABEL_78;
    }

    __src = 0;
    __n = 0;
    if (CTParseExtensionValue(*a1, a1[1], &CTOidAppleMFI4ProductPlanUID, 0xAuLL, &__src, &__n))
    {
      v26 = 124;
    }

    else
    {
      v14 = 393222;
      if (!__src || __n != 36)
      {
        return v14;
      }

      if (a3 < 0xA0)
      {
        return 393220;
      }

      if (v25 < a2)
      {
        goto LABEL_79;
      }

      if (v25 > v10)
      {
        goto LABEL_79;
      }

      v31 = *__src;
      v32 = *(__src + 1);
      *(a2 + 156) = *(__src + 8);
      *v25 = v31;
      *(a2 + 140) = v32;
      if (v25 > a2 + 160)
      {
        goto LABEL_79;
      }

      if (v25 > 0xFFFFFFFFFFFFFFDBLL)
      {
        goto LABEL_78;
      }

      v26 = 160;
      v25 = (a2 + 160);
    }

    v27 = a1[7];
    v14 = 655619;
    if (!v27)
    {
      return v14;
    }

    v28 = a1[8];
    if (v28 - 73 < 0xFFFFFFFFFFFFFFFDLL)
    {
      return v14;
    }

    v29 = v28 + v26;
    if (v28 + v26 > a3)
    {
      return 393220;
    }

    if (v25 <= v10 && v25 >= a2 && v28 <= v10 - v25)
    {
      memcpy(v25, v27, a1[8]);
      if (v25 <= (v25 + v28))
      {
        v30 = a1[8];
        if (__CFADD__(v25, v30))
        {
          goto LABEL_78;
        }

        if (CTParseExtensionValue(*a1, a1[1], &CTOidAppleMFI4AccessoryData, 0xAuLL, &__src, &__n))
        {
          return 0;
        }

        if (!__src)
        {
          return (v4 + 2);
        }

        v4 = __n;
        v14 = 393220;
        if (__n + v29 > a3)
        {
          return v14;
        }

        v33 = v25 + v30;
        if (v25 + v30 <= v10 && v33 >= a2 && __n <= v10 - v33)
        {
          memcpy(v25 + v30, __src, __n);
          if (v33 <= &v33[v4])
          {
            if (!__CFADD__(v33, v4))
            {
              return 0;
            }

LABEL_78:
            __break(0x5513u);
          }
        }
      }
    }

LABEL_79:
    __break(0x5519u);
    return (v4 + 2);
  }

  return v4;
}

uint64_t CTDecompressIssuer(int a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  result = 393218;
  if (a1 > 159)
  {
    if ((a1 - 160) >= 4)
    {
      if (a1 == 164)
      {
LABEL_12:
        v11 = &root_subject;
        v12 = &leaf_5280_extensions_template;
        v13 = 39;
        v14 = 89;
        goto LABEL_13;
      }

      if (a1 != 165)
      {
        return result;
      }
    }

    v11 = &attestation_ca_subject;
    v12 = &root_subject;
    v13 = 58;
    v14 = 108;
LABEL_13:
    v15 = 1;
    goto LABEL_14;
  }

  v11 = &mfi_ca_subject;
  if (a1 >= 4)
  {
    if (a1 != 4)
    {
      if (a1 != 5)
      {
        return result;
      }

      v12 = &attestation_leaf_subject;
      v13 = 57;
      v14 = 107;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v12 = &attestation_leaf_subject;
  v13 = 57;
  v14 = 107;
  v15 = 17;
LABEL_14:
  result = 393217;
  if ((v15 | 8uLL) > a3)
  {
    return result;
  }

  if (!a4)
  {
    goto LABEL_32;
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17 - *a4 < v14)
  {
    return 393220;
  }

  if (v16 > v17 || v11 > v12 || v14 > v12 - v11)
  {
    goto LABEL_36;
  }

  result = ccder_blob_encode_body(a4, v14, v11);
  if (!result)
  {
    return 393226;
  }

  v18 = a4[1];
  if (__CFADD__(v18, v13) || (v19 = (v18 + v13), v19 >= v16 == (v19 - v16) < 0) || __CFADD__(a2, v15))
  {
LABEL_37:
    __break(0x5513u);
    return result;
  }

  if (a3 - v15 < 8 || (v20 = (a2 + v15), a2 + v15 > a2 + a3) || v20 < a2 || v19 > v17 || v17 - v19 < 8 || v19 < v16 || (*v19 = *v20, v19 >= v19 + 1))
  {
LABEL_36:
    __break(0x5519u);
    goto LABEL_37;
  }

LABEL_32:
  result = 0;
  if (a5)
  {
    *a5 = v14;
  }

  return result;
}

uint64_t CTDecompressSerialNumber(int a1, _OWORD *a2, unint64_t a3, uint64_t *a4, unint64_t *a5)
{
  result = 393218;
  if (a1 <= 159)
  {
    v11 = a1 >= 4;
    v12 = a1 - 4;
    if (!v11)
    {
      v13 = 0;
      v14 = 0;
      v15 = 1;
      v16 = 16;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if ((a1 - 160) >= 4)
  {
    v12 = a1 - 164;
LABEL_7:
    if (v12 >= 2)
    {
      return result;
    }

    v14 = v28;
    v13 = v30;
    v15 = 45;
    goto LABEL_9;
  }

  v14 = v28;
  v13 = v30;
  v15 = 37;
LABEL_9:
  v16 = 20;
LABEL_10:
  v17 = ccder_sizeof(2, v16);
  result = 393217;
  if (v15 + v16 > a3)
  {
    return result;
  }

  v29 = -86;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[2] = v18;
  v28[3] = v18;
  v28[0] = v18;
  v28[1] = v18;
  if (!v14)
  {
    if (!__CFADD__(a2, v15))
    {
      v13 = a2 + a3;
      v19 = a2 + v15;
      v14 = a2;
      if (!a4)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

LABEL_38:
    __break(0x5513u);
LABEL_39:
    __break(0x5519u);
    goto LABEL_40;
  }

  v26 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a2, v15))
  {
    goto LABEL_38;
  }

  if (a3 - v15 < 0x21 || a2 + v15 > a2 + a3 || (a2 + v15) < a2)
  {
    goto LABEL_39;
  }

  v26 = a2 + v15;
  v27 = 33;
  result = decompressECPublicKey(&v26, &CTOidSECP256r1, v28, 65);
  v19 = v14;
  if (result)
  {
    return result;
  }

  if (!a4)
  {
    goto LABEL_34;
  }

LABEL_21:
  v20 = *a4;
  v21 = a4[1];
  if (v21 - *a4 < v17)
  {
    return 393220;
  }

  if (v14 > v19 || v20 > v21 || v19 > v13 || v16 > v13 - v19)
  {
    goto LABEL_39;
  }

  if (!ccder_blob_encode_body_tl(a4, 2uLL, v16, v19))
  {
    return 393226;
  }

  v22 = ccder_sizeof_tag(2);
  result = ccder_sizeof_len(v16);
  v23 = v22 + result;
  if (__CFADD__(v22, result))
  {
LABEL_40:
    __break(0x5500u);
    return result;
  }

  v24 = a4[1];
  if (__CFADD__(v24, v23))
  {
    goto LABEL_38;
  }

  v25 = (v24 + v23);
  if (v25 >= v20 == &v25[-v20] < 0)
  {
    goto LABEL_38;
  }

  if (v25 >= v21 || v25 < v20)
  {
    goto LABEL_39;
  }

  *v25 &= ~0x80u;
LABEL_34:
  result = 0;
  if (a5)
  {
    *a5 = v17;
  }

  return result;
}

uint64_t CTDecompressGetSignature(int a1, unint64_t a2, unint64_t a3, unint64_t *a4, unsigned __int8 **a5)
{
  v9 = 393217;
  result = CTNonVariableCompressedSizeForStyle(a1);
  if (result < 0)
  {
    return 393218;
  }

  v11 = result;
  if (result + 70 > a3)
  {
    return v9;
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a2, a3))
  {
    goto LABEL_19;
  }

  v12 = a2 + result;
  if (a2 + result > a2 + a3 || v12 < a2)
  {
LABEL_18:
    __break(0x5519u);
LABEL_19:
    __break(0x5513u);
    goto LABEL_20;
  }

  v14 = (a2 + result);
  v15 = a2 + a3;
  v16 = 0;
  result = ccder_blob_decode_tl(&v14, 0x2000000000000010, &v16);
  if ((result & 1) == 0)
  {
    return 393225;
  }

  v13 = &v14[v16 - v12];
  if (__CFADD__(v16, &v14[-v12]))
  {
    goto LABEL_20;
  }

  if (!v13)
  {
    return 393225;
  }

  if (!__CFADD__(v11, v13))
  {
    if (&v13[v11] > a3)
    {
      return v9;
    }

    v9 = 0;
    if (!a4 || !a5)
    {
      return v9;
    }

    if (v13 <= a3 - v11)
    {
      v9 = 0;
      *a4 = v12;
      *a5 = v13;
      return v9;
    }

    goto LABEL_18;
  }

LABEL_20:
  __break(0x5500u);
  return result;
}

uint64_t ccder_sizeof_tl(uint64_t a1, unint64_t a2)
{
  v3 = ccder_sizeof_tag(a1);
  v4 = ccder_sizeof_len(a2);
  v5 = __CFADD__(v3, v4);
  result = v3 + v4;
  if (v5)
  {
    __break(0x5500u);
  }

  return result;
}

uint64_t CTDecompressSignature(int a1, unint64_t a2, unint64_t a3, uint64_t *a4, unint64_t *a5)
{
  v16 = 0;
  v17 = 0;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  result = CTDecompressGetSignature(a1, a2, a3, &v16, &v17);
  v8 = result;
  if (result)
  {
    return v8;
  }

  v9 = v17;
  if (v17 == -1)
  {
    goto LABEL_18;
  }

  v10 = ccder_sizeof(3, (v17 + 1));
  v11 = v10;
  if (!a4)
  {
    goto LABEL_15;
  }

  v8 = 393226;
  if (a4[1] - *a4 < v10)
  {
    return 393220;
  }

  result = ccder_blob_encode_body(a4, v9, v16);
  if (!result)
  {
    return v8;
  }

  v12 = a4[1];
  v13 = (v12 - 1);
  if (!v12 || v13 < *a4 || (*v13 = 0, v14 = a4[1], v15 = v14 - 1, !v14) || *a4 > v15)
  {
LABEL_17:
    __break(0x5519u);
  }

  a4[1] = v15;
  if (v17 != -1)
  {
    if (!ccder_blob_encode_tl(a4, 3uLL, (v17 + 1)))
    {
      return v8;
    }

LABEL_15:
    v8 = 0;
    if (a5)
    {
      *a5 = v11;
    }

    return v8;
  }

LABEL_18:
  __break(0x5500u);
  return result;
}

uint64_t CTDecompressCAComputeSKID(unint64_t a1, uint64_t a2, unint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a3 + 20 < a3)
  {
    goto LABEL_9;
  }

  if (a1 > 0xFFFFFFFFFFFFFFD2)
  {
    goto LABEL_10;
  }

  if ((a2 - 78) > 0xFFFFFFFFFFFFFFDELL || a1 + 45 < a1 || a1 + 45 > a1 + a2)
  {
LABEL_9:
    __break(0x5519u);
LABEL_10:
    __break(0x5513u);
  }

  v8[0] = a1 + 45;
  v8[1] = 33;
  v10 = -86;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[2] = v4;
  v9[3] = v4;
  v9[0] = v4;
  v9[1] = v4;
  v5 = decompressECPublicKey(v8, &CTOidSECP256r1, v9, 65);
  if (!v5)
  {
    v6 = ccsha1_di();
    ccdigest(v6, 0x41uLL, v9, a3);
  }

  return v5;
}

unint64_t CTConvertByteArrayToAsciiHex(unint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  if (!__CFADD__(result, a2))
  {
    if (a4 != 2 * a2)
    {
      return 393220;
    }

    if (!__CFADD__(a3, a4))
    {
      v4 = 0;
      if (result + a2 > result)
      {
        v5 = &a3[a4];
        if (&a3[a4] > a3)
        {
          v6 = result;
          v7 = a3;
          while (v6 >= result)
          {
            v8 = *v6;
            v9 = &nibbleToAsciiByte[v8 >> 4];
            if (v9 >= "Apple iPhone Certification Authority" || v9 < nibbleToAsciiByte)
            {
              break;
            }

            v11 = &nibbleToAsciiByte[v8 & 0xF];
            v12 = v11 < "Apple iPhone Certification Authority" && v11 >= nibbleToAsciiByte;
            if (!v12 || v7 < a3)
            {
              break;
            }

            v13 = *v11;
            *v7 = *v9;
            v14 = v7 + 1;
            if (v14 == -1)
            {
              goto LABEL_31;
            }

            if (v14 >= v5 || v14 < a3)
            {
              break;
            }

            v4 = 0;
            *v14 = v13;
            v7 = v14 + 1;
            if (++v6 >= result + a2 || v7 >= v5)
            {
              return v4;
            }
          }

          __break(0x5519u);
          goto LABEL_31;
        }
      }

      return v4;
    }
  }

LABEL_31:
  __break(0x5513u);
  return result;
}

unint64_t CTDecompressDate(unint64_t result, uint64_t *a2, unint64_t *a3)
{
  v5 = *result;
  if (v5 < 0x32)
  {
    goto LABEL_2;
  }

  if (v5 != 50)
  {
    goto LABEL_9;
  }

  if (result == -1)
  {
    goto LABEL_29;
  }

  if (*(result + 1) != 48)
  {
    goto LABEL_9;
  }

  if (result > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_29;
  }

  if (*(result + 2) < 0x35u)
  {
LABEL_2:
    v6 = 12;
    v7 = 15;
    v8 = 23;
    v9 = 2;
    if (!a2)
    {
LABEL_25:
      v10 = 0;
      if (a3)
      {
        *a3 = v7;
      }

      return v10;
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
    v6 = 14;
    v7 = 17;
    v8 = 24;
    if (!a2)
    {
      goto LABEL_25;
    }
  }

  v10 = 393226;
  v11 = a2[1];
  if (v11 - *a2 < v7)
  {
    return 393220;
  }

  v12 = (v11 - 1);
  if (v11)
  {
    v13 = v12 >= *a2;
  }

  else
  {
    v13 = 0;
  }

  if (!v13 || (*v12 = 90, v14 = a2[1], v15 = v14 - 1, !v14) || *a2 > v15)
  {
LABEL_28:
    __break(0x5519u);
    goto LABEL_29;
  }

  a2[1] = v15;
  if (!__CFADD__(result, v9))
  {
    v16 = (result + v9);
    if (result + v9 <= result + 14 && v16 >= result && v6 <= 14 - v9)
    {
      if (!ccder_blob_encode_body(a2, v6, v16) || !ccder_blob_encode_tl(a2, v8, v6 | 1))
      {
        return v10;
      }

      goto LABEL_25;
    }

    goto LABEL_28;
  }

LABEL_29:
  __break(0x5513u);
  return result;
}

unint64_t CTCompressGetCommonNameSuffixPointer(uint64_t a1)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (X509CertificateSubjectNameGetCommonName(a1, &v9))
  {
    return 0;
  }

  result = compare_octet_string_partial(&MFi4RootName, &v9);
  if (!result)
  {
    v4 = v9;
    if (v9 < 0xFFFFFFFFFFFFFFE6)
    {
      v6 = v10;
      v3 = v9 + v10;
      result = v9 + 26;
      goto LABEL_9;
    }

LABEL_23:
    __break(0x5513u);
    return result;
  }

  v2 = &MFi4AccessoryCAName;
  result = compare_octet_string_partial(&MFi4AccessoryCAName, &v9);
  if (result)
  {
    v2 = &MFi4AttestationCAName;
    result = compare_octet_string_partial(&MFi4AttestationCAName, &v9);
    if (result)
    {
      result = 0;
      v3 = 0;
      v4 = 0;
LABEL_18:
      v8 = 1;
      goto LABEL_19;
    }
  }

  v5 = v2[1];
  v4 = v9;
  if (__CFADD__(v9, v5))
  {
    goto LABEL_23;
  }

  v6 = v10;
  v3 = v9 + v10;
  result = &v5[v9];
  if (!&v5[v9])
  {
    goto LABEL_18;
  }

LABEL_9:
  v7 = __CFADD__(v4, v6);
  if (result > 0xFFFFFFFFFFFFFFF7 || v7)
  {
    goto LABEL_23;
  }

  if (v4 + v6 < result + 8)
  {
    return 0;
  }

  v8 = 0;
LABEL_19:
  if (result > v3 || v4 > result || (((v3 - result) < 8) & ~v8) != 0)
  {
    __break(0x5519u);
    goto LABEL_23;
  }

  return result;
}

uint64_t CTGetGeneralizedTime(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != 13)
  {
    if (v2 != 15)
    {
      return 720909;
    }

    v3 = **result;
    *(a2 + 6) = *(*result + 6);
    *a2 = v3;
    if (a2 + 14 >= a2)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (a2 < 0xFFFFFFFFFFFFFFFELL)
  {
    v5 = *(*result + 8);
    *(a2 + 2) = **result;
    *(a2 + 10) = v5;
    if (a2 + 2 <= a2 + 14 && *(result + 8))
    {
      v4 = 0;
      if (**result >= 0x35u)
      {
        v6 = 49;
      }

      else
      {
        v6 = 50;
      }

      if (**result >= 0x35u)
      {
        v7 = 57;
      }

      else
      {
        v7 = 48;
      }

      *a2 = v6;
      *(a2 + 1) = v7;
      return v4;
    }

LABEL_17:
    __break(0x5519u);
  }

  __break(0x5513u);
  return result;
}

uint64_t X509PolicySetFlagsForCommonNames(uint64_t a1)
{
  v2 = a1 + 104;
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  result = X509CertificateSubjectNameGetCommonName(v2, v5);
  if (!result)
  {
    result = compare_octet_string(&iPhoneCAName, v5);
    if (result)
    {
      result = compare_octet_string(&CodeSigningCAName, v5);
      if (result)
      {
        result = compare_octet_string_partial(&MFi4AccessoryCAName, v5);
        if (result)
        {
          result = compare_octet_string_partial(&MFi4AttestationCAName, v5);
          if (result)
          {
            result = compare_octet_string_partial(&MFi4ProvisioningCAName, v5);
            if (result)
            {
              return result;
            }

            v4 = 0x1000000000;
          }

          else
          {
            v4 = 0x800000000;
          }
        }

        else
        {
          v4 = 0x400000000;
        }
      }

      else
      {
        v4 = 0x800000000008;
      }
    }

    else
    {
      v4 = 3840;
    }

    *(a1 + 240) |= v4;
  }

  return result;
}

unint64_t X509PolicyCheckForBlockedKeys(uint64_t a1)
{
  result = a1 + 88;
  if (result > a1 + 104)
  {
    __break(0x5519u);
  }

  else
  {
    result = compare_octet_string(result, &BlockedYonkersSPKI);
    if (!result)
    {
      *(a1 + 240) &= 0xFFFFFFFFFFF3FFFFLL;
    }
  }

  return result;
}

void *ccec_cp_for_oid(int **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 != 7)
  {
    if (v1 == 10 && **a1 == 0x33DCE48862A0806 && *(*a1 + 4) == 1793)
    {
      return ccec_cp_256();
    }

    return 0;
  }

  v4 = *a1;
  if (**a1 == -2127887098 && *(*a1 + 3) == 570426497)
  {
    return ccec_cp_384();
  }

  v6 = *v4;
  v7 = *(v4 + 3);
  if (v6 != -2127887098 || v7 != 587203713)
  {
    return 0;
  }

  return ccec_cp_521();
}

uint64_t compressECPublicKey(void *a1, int **a2, char *a3, uint64_t a4)
{
  v7 = ccec_cp_for_oid(a2);
  if (!v7)
  {
    return 655366;
  }

  v8 = v7;
  if (v7 >= v7 + 4)
  {
    goto LABEL_20;
  }

  v9 = *v7;
  if (*v7 >> 61 || !is_mul_ok(8 * v9, 3uLL))
  {
    goto LABEL_21;
  }

  v10 = 24 * v9;
  v11 = __CFADD__(v10, 16);
  v12 = v10 + 16;
  if (v11 || v12 >= 0xFFFFFFFFFFFFFFF0)
  {
LABEL_22:
    __break(0x5500u);
  }

  result = __chkstk_darwin(v7);
  v16 = &v19 - 2 * v15;
  v17 = 0;
  do
  {
    v18 = &v16[v17 / 8];
    *v18 = 0xAAAAAAAAAAAAAAAALL;
    v18[1] = 0xAAAAAAAAAAAAAAAALL;
    v17 += 16;
  }

  while ((v14 & 0xFFFFFFFFFFFFFFF0) != v17);
  if (v14 < 0x10)
  {
    __break(1u);
    return result;
  }

  *v16 = v8;
  if (v16 + 2 > &v19 || v16 > v16 + 2)
  {
LABEL_20:
    __break(0x5519u);
LABEL_21:
    __break(0x550Cu);
    goto LABEL_22;
  }

  result = ccec_import_pub(v8, a1[1], *a1, v16);
  if (!result)
  {
    if (ccec_compressed_x962_export_pub_size(v8) == a4)
    {
      if (!a3 || a4)
      {
        return ccec_compressed_x962_export_pub(v16, a3);
      }

      goto LABEL_20;
    }

    return 393220;
  }

  return result;
}

uint64_t decompressECPublicKey(uint64_t a1, int **a2, char *a3, uint64_t a4)
{
  v7 = ccec_cp_for_oid(a2);
  if (!v7)
  {
    return 655366;
  }

  if (v7 >= v7 + 4)
  {
LABEL_23:
    __break(0x5519u);
    goto LABEL_24;
  }

  v8 = *v7;
  if (*v7 >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
LABEL_25:
    __break(0x550Cu);
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || v11 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_24;
  }

  result = __chkstk_darwin(v7);
  v15 = (&v20 - 2 * v14);
  v16 = 0;
  do
  {
    v17 = &v15[v16 / 8];
    *v17 = 0xAAAAAAAAAAAAAAAALL;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    v16 += 16;
  }

  while ((v13 & 0xFFFFFFFFFFFFFFF0) != v16);
  if (v13 >= 0x10)
  {
    *v15 = result;
    if (v15 + 2 <= &v20 && v15 <= v15 + 2)
    {
      v18 = ccec_compressed_x962_import_pub(result, *(a1 + 8), *a1, v15);
      if (!v18)
      {
        v19 = cczp_bitlen(*v15);
        if (v19 < 0xFFFFFFFFFFFFFFF9)
        {
          if (!a3 || a4)
          {
            if ((((v19 + 7) >> 2) | 1) == a4)
            {
              v18 = 0;
            }

            else
            {
              v18 = 393220;
            }

            ccec_export_pub(v15, a3);
            return v18;
          }

          goto LABEL_23;
        }

LABEL_24:
        __break(0x5500u);
        goto LABEL_25;
      }

      return v18;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t compare_octet_string(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return memcmp(*a1, *a2, v2);
  }

  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_raw(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == a3)
  {
    return memcmp(*a1, a2, a3);
  }

  if (v3 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_partial(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 <= *(a2 + 8))
  {
    return memcmp(*a2, *a1, v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccder_blob_decode_AlgorithmIdentifierNULL(unsigned __int8 **a1, void *a2)
{
  v16 = 0;
  v15 = 0;
  result = ccder_blob_decode_tl(a1, 0x2000000000000010, &v16);
  if (result)
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    v5 = *a1;
    if (!__CFADD__(*a1, v16))
    {
      if (v5 > &v5[v16] || &v5[v16] > a1[1])
      {
        goto LABEL_28;
      }

      v13 = *a1;
      v14 = &v5[v16];
      result = ccder_blob_decode_tl(&v13, 6, &v15);
      if (!result)
      {
        return result;
      }

      v7 = v15;
      v8 = v13;
      if (a2)
      {
        if (v14 < v13 || v15 > v14 - v13)
        {
          goto LABEL_28;
        }

        *a2 = v13;
        a2[1] = v7;
      }

      if (!__CFADD__(v8, v7))
      {
        v9 = &v8[v7];
        if (v9 == v14)
        {
          if (v9 <= a1[1] && *a1 <= v9)
          {
            *a1 = v9;
            return 1;
          }

LABEL_28:
          __break(0x5519u);
        }

        v11 = 0xAAAAAAAAAAAAAAAALL;
        v12 = 0xAAAAAAAAAAAAAAAALL;
        if (v8 > v9 || v9 > v14)
        {
          goto LABEL_28;
        }

        v11 = v9;
        v12 = v14;
        result = ccder_blob_decode_tl(&v11, 5, &v15);
        if (!result)
        {
          return result;
        }

        if (v11 != v14)
        {
          return 0;
        }

        if (!__CFADD__(v11, v15))
        {
          v10 = &v11[v15];
          if (&v11[v15] <= a1[1] && *a1 <= v10)
          {
            *a1 = v10;
            return 1;
          }

          goto LABEL_28;
        }
      }
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t ccder_blob_decode_Time(unsigned __int8 **a1, void *a2)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v2 = a1[1];
  if (*a1 > v2)
  {
    goto LABEL_17;
  }

  v11 = *a1;
  v12 = v2;
  result = ccder_blob_decode_tl(&v11, 23, &v13);
  if (result)
  {
    v6 = v13;
    if (v13 != 13)
    {
      return 0;
    }

LABEL_8:
    v9 = v11;
    if (a2)
    {
      if (v12 < v11 || v6 > v12 - v11)
      {
        goto LABEL_17;
      }

      *a2 = v11;
      a2[1] = v6;
    }

    if (__CFADD__(v9, v6))
    {
      __break(0x5513u);
      return result;
    }

    v10 = &v9[v6];
    if (v10 <= a1[1] && *a1 <= v10)
    {
      *a1 = v10;
      return 1;
    }

LABEL_17:
    __break(0x5519u);
  }

  v7 = a1[1];
  if (*a1 > v7)
  {
    goto LABEL_17;
  }

  v11 = *a1;
  v12 = v7;
  v8 = ccder_blob_decode_tl(&v11, 24, &v13);
  result = 0;
  if (v8)
  {
    v6 = v13;
    if (v13 == 15)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ccder_blob_check_null(unsigned __int8 **a1)
{
  v2 = 0;
  LODWORD(result) = ccder_blob_decode_tl(a1, 5, &v2);
  if (v2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CTParseExtensionValue(unint64_t a1, uint64_t a2, const void *a3, size_t a4, void *a5, void *a6)
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_11;
  }

  v10[0] = a1;
  v10[1] = a1 + a2;
  result = X509CertificateParseWithExtension(v11, v10, a3, a4);
  if (!result)
  {
    result = 720914;
    if (*(&v12 + 1))
    {
      v9 = v13;
      if (v13)
      {
        result = 0;
        if (a5)
        {
          if (a6)
          {
            result = 0;
            *a5 = *(&v12 + 1);
            *a6 = v9;
          }
        }
      }
    }
  }

  return result;
}

uint64_t X509CertificateParseImplicit(unint64_t a1, unsigned __int8 **a2, const void *a3, size_t a4)
{
  v70 = 0;
  v71 = 0;
  v68 = 0xAAAAAAAAAAAAAAAALL;
  v69 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 > v5)
  {
    goto LABEL_189;
  }

  v68 = *a2;
  v69 = v5;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  if (a1 + 304 < a1)
  {
    goto LABEL_189;
  }

  v10 = 720915;
  result = ccder_blob_decode_tl(&v68, 0x2000000000000010, &v71);
  if (!result)
  {
    return v10;
  }

  v12 = v71;
  v13 = v68;
  v14 = (v71 + v68 - v4);
  if (__CFADD__(v71, v68 - v4))
  {
    goto LABEL_191;
  }

  if (v14 > v5 - v4)
  {
    goto LABEL_189;
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v13, v12))
  {
    goto LABEL_190;
  }

  v15 = &v13[v12];
  if (v13 > v15 || v15 > v69)
  {
    goto LABEL_189;
  }

  v66 = v13;
  v67 = v15;
  v64 = v13;
  v65 = v15;
  result = ccder_blob_decode_tl(&v64, 0xA000000000000000, &v70);
  if (result)
  {
    v16 = v70;
    v17 = v64;
    if (__CFADD__(v64, v70))
    {
      goto LABEL_190;
    }

    if (!ccder_blob_decode_uint64(&v64, (a1 + 32)) || v64 != &v17[v16])
    {
      return 720916;
    }

    if (&v17[v16] > v65)
    {
      goto LABEL_189;
    }

    v66 = v64;
    v67 = v65;
  }

  result = ccder_blob_decode_tl(&v66, 2, &v70);
  if (!result)
  {
    return 720917;
  }

  v18 = v66;
  v19 = v67;
  if (v67 < v66)
  {
    goto LABEL_189;
  }

  v20 = v70;
  if (v70 > v67 - v66)
  {
    goto LABEL_189;
  }

  *(a1 + 136) = v66;
  *(a1 + 144) = v20;
  if (__CFADD__(v18, v20))
  {
    goto LABEL_190;
  }

  v21 = &v18[v20];
  if (v21 > v19)
  {
    goto LABEL_189;
  }

  if (v18 > v21)
  {
    goto LABEL_189;
  }

  v66 = v21;
  if (a1 + 152 > a1 + 168)
  {
    goto LABEL_189;
  }

  if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v66, (a1 + 152)))
  {
    return 720918;
  }

  result = ccder_blob_decode_tl(&v66, 0x2000000000000010, &v70);
  if (!result)
  {
    return 720919;
  }

  v22 = v66;
  v23 = v67;
  if (v67 < v66)
  {
    goto LABEL_189;
  }

  v24 = v70;
  if (v70 > v67 - v66)
  {
    goto LABEL_189;
  }

  *(a1 + 120) = v66;
  *(a1 + 128) = v24;
  if (__CFADD__(v22, v24))
  {
    goto LABEL_190;
  }

  v25 = &v22[v24];
  if (v25 > v23 || v22 > v25)
  {
    goto LABEL_189;
  }

  v66 = v25;
  result = ccder_blob_decode_tl(&v66, 0x2000000000000010, &v70);
  if (!result)
  {
    return 720920;
  }

  v26 = v66;
  v27 = v67;
  if (v67 < v66)
  {
    goto LABEL_189;
  }

  v28 = v70;
  if (v70 > v67 - v66)
  {
    goto LABEL_189;
  }

  *(a1 + 72) = v66;
  *(a1 + 80) = v28;
  if (__CFADD__(v26, v28))
  {
    goto LABEL_190;
  }

  v29 = &v26[v28];
  if (v29 > v27 || v26 > v29)
  {
    goto LABEL_189;
  }

  v66 = v29;
  result = ccder_blob_decode_tl(&v66, 0x2000000000000010, &v70);
  if (!result)
  {
    return 720921;
  }

  v30 = v66;
  v31 = v67;
  if (v67 < v66)
  {
    goto LABEL_189;
  }

  v32 = v70;
  if (v70 > v67 - v66)
  {
    goto LABEL_189;
  }

  *(a1 + 104) = v66;
  *(a1 + 112) = v32;
  if (__CFADD__(v30, v32))
  {
    goto LABEL_190;
  }

  v33 = &v30[v32];
  if (&v30[v32] > v31 || v30 > v33)
  {
    goto LABEL_189;
  }

  v66 = &v30[v32];
  result = ccder_blob_decode_tl(&v66, 0x2000000000000010, &v70);
  if (!result)
  {
    return 720922;
  }

  v34 = v66;
  v35 = v70;
  v36 = &v66[v70 - v33];
  if (__CFADD__(&v66[-v33], v70))
  {
    goto LABEL_191;
  }

  if (v36 > &v31[-v33])
  {
    goto LABEL_189;
  }

  *(a1 + 88) = v33;
  *(a1 + 96) = v36;
  if (__CFADD__(v34, v35))
  {
LABEL_190:
    __break(0x5513u);
    goto LABEL_191;
  }

  v37 = &v34[v35];
  if (v34 > v37 || v37 > v67)
  {
    goto LABEL_189;
  }

  v65 = v67;
  v66 = v37;
  v64 = v37;
  if (ccder_blob_decode_tl(&v64, 0x8000000000000001, &v70))
  {
    return 720923;
  }

  if (v66 > v67)
  {
    goto LABEL_189;
  }

  v64 = v66;
  v65 = v67;
  if (ccder_blob_decode_tl(&v64, 0x8000000000000002, &v70))
  {
    return 720924;
  }

  if (v66 > v67)
  {
    goto LABEL_189;
  }

  v64 = v66;
  v65 = v67;
  result = ccder_blob_decode_tl(&v64, 0xA000000000000003, &v70);
  if (!result)
  {
LABEL_167:
    if (*(a1 + 32) < 3uLL)
    {
      if (v66 != v67)
      {
        return v10;
      }
    }

    else
    {
      if (v67 > a2[1] || *a2 > v67)
      {
        goto LABEL_189;
      }

      *a2 = v67;
    }

    if (!__CFADD__(v68, v71))
    {
      if (v68 > &v68[v71] || &v68[v71] > v69)
      {
        goto LABEL_189;
      }

      v68 += v71;
      if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v68, (a1 + 40)))
      {
        return 720937;
      }

      *&v72[0] = 0xAAAAAAAAAAAAAAAALL;
      *(&v72[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v62 = 0;
      result = ccder_blob_decode_bitstring(&v68, v72, &v62);
      if (!result)
      {
        return 720938;
      }

      if (v62 < 0xFFFFFFFFFFFFFFF9)
      {
        if (*(&v72[0] + 1) >= *&v72[0])
        {
          v53 = (v62 + 7) >> 3;
          if (v53 <= *(&v72[0] + 1) - *&v72[0])
          {
            *(a1 + 56) = *&v72[0];
            *(a1 + 64) = v53;
            v54 = v69;
            if (v68 <= v69)
            {
              v10 = 0;
              *a2 = v68;
              a2[1] = v54;
              return v10;
            }
          }
        }

        goto LABEL_189;
      }

LABEL_191:
      __break(0x5500u);
LABEL_192:
      __break(0x5507u);
      return result;
    }

    goto LABEL_190;
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  v63 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v64, v70))
  {
    goto LABEL_190;
  }

  if (v64 > &v64[v70] || &v64[v70] > v65)
  {
    goto LABEL_189;
  }

  v62 = v64;
  v63 = &v64[v70];
  result = ccder_blob_decode_tl(&v62, 0x2000000000000010, &v70);
  if (!result || !v70)
  {
    return 720925;
  }

  v38 = v62;
  if (__CFADD__(v62, v70))
  {
    goto LABEL_190;
  }

  v39 = &v62[v70];
  if (v62 > &v62[v70] || v39 > v63)
  {
    goto LABEL_189;
  }

  v63 = &v62[v70];
  *(a1 + 266) = 0;
  memset(&v72[2], 0, 128);
  if (a3)
  {
    v40 = a4 == 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = !v40;
  memset(v72, 0, 32);
  if (v38 >= v39)
  {
LABEL_162:
    if (v38 != v39)
    {
      return 720925;
    }

    if (v38 > v67 || v66 > v38)
    {
LABEL_189:
      __break(0x5519u);
    }

    v66 = v39;
    goto LABEL_167;
  }

  v55 = 0;
  v42 = 0;
  while (1)
  {
    v60 = 0xAAAAAAAAAAAAAAAALL;
    v61 = 0xAAAAAAAAAAAAAAAALL;
    v59 = 0;
    v58 = 0;
    result = ccder_blob_decode_tl(&v62, 0x2000000000000010, &v58);
    if ((result & 1) == 0)
    {
      return 720926;
    }

    v56 = 0xAAAAAAAAAAAAAAAALL;
    v57 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v62, v58))
    {
      goto LABEL_190;
    }

    if (v62 > &v62[v58] || &v62[v58] > v63)
    {
      goto LABEL_189;
    }

    v56 = v62;
    v57 = &v62[v58];
    result = ccder_blob_decode_tl(&v56, 6, &v70);
    if (!result)
    {
      return 720927;
    }

    if (v57 < v56 || v70 > v57 - v56)
    {
      goto LABEL_189;
    }

    v60 = v56;
    v61 = v70;
    if (__CFADD__(v56, v70))
    {
      goto LABEL_190;
    }

    if (&v56[v70] > v57 || v56 > &v56[v70])
    {
      goto LABEL_189;
    }

    v56 += v70;
    if (!der_get_BOOLean(&v56, 1, &v59))
    {
      return 720928;
    }

    result = ccder_blob_decode_tl(&v56, 4, &v70);
    if (!result)
    {
      return 720929;
    }

    if (__CFADD__(v56, v70))
    {
      goto LABEL_190;
    }

    if (v57 != &v56[v70])
    {
      return 720929;
    }

    if (v41)
    {
      result = compare_octet_string_raw(&v60, a3, a4);
      if (!result)
      {
        if (v57 < v56)
        {
          goto LABEL_189;
        }

        v44 = v70;
        if (v70 > v57 - v56)
        {
          goto LABEL_189;
        }

        *(a1 + 248) = v56;
        *(a1 + 256) = v44;
      }
    }

    if (v61 == 3)
    {
      if (*v60 == 7509 && v60[2] == 15)
      {
        v51 = 720930;
        if (v42)
        {
          return v51;
        }

        result = X509ExtensionParseKeyUsage(&v56, (a1 + 264));
        if ((result & 1) == 0)
        {
          return v51;
        }

        v42 |= 1u;
        goto LABEL_157;
      }

      if (*v60 == 7509 && v60[2] == 19)
      {
        v51 = 720931;
        if ((v42 & 2) != 0)
        {
          return v51;
        }

        result = X509ExtensionParseBasicConstraints(&v56, (a1 + 200), (a1 + 265));
        if ((result & 1) == 0)
        {
          return v51;
        }

        v42 |= 2u;
        goto LABEL_157;
      }

      if (*v60 == 7509 && v60[2] == 35)
      {
        v51 = 720932;
        if ((v42 & 4) != 0)
        {
          return v51;
        }

        result = X509ExtensionParseAuthorityKeyIdentifier(&v56, (a1 + 168), (a1 + 176));
        if ((result & 1) == 0)
        {
          return v51;
        }

        v42 |= 4u;
        goto LABEL_157;
      }

      if (*v60 == 7509 && v60[2] == 14)
      {
        v51 = 720933;
        if ((v42 & 8) != 0)
        {
          return v51;
        }

        result = X509ExtensionParseSubjectKeyIdentifier(&v56, (a1 + 184), (a1 + 192));
        if ((result & 1) == 0)
        {
          return v51;
        }

        v42 |= 8u;
        goto LABEL_157;
      }

      if (*v60 == 7509 && v60[2] == 37)
      {
        v51 = 720934;
        if ((v42 & 0x10) != 0)
        {
          return v51;
        }

        result = X509ExtensionParseExtendedKeyUsage(&v56, (a1 + 208), (a1 + 216));
        if ((result & 1) == 0)
        {
          return v51;
        }

        v42 |= 0x10u;
        goto LABEL_157;
      }

      if (*v60 == 7509 && v60[2] == 17)
      {
        v51 = 720935;
        if ((v42 & 0x20) != 0)
        {
          return v51;
        }

        result = X509ExtensionParseSubjectAltName(&v56, (a1 + 224), (a1 + 232));
        if ((result & 1) == 0)
        {
          return v51;
        }

        v42 |= 0x20u;
        goto LABEL_157;
      }

LABEL_133:
      if (__CFADD__(v56, v70))
      {
        goto LABEL_190;
      }

      if (v56 > &v56[v70] || &v56[v70] > v57)
      {
        goto LABEL_189;
      }

      v56 += v70;
      if (v59)
      {
        *(a1 + 266) = v59;
      }

      goto LABEL_157;
    }

    if (v61 < 8)
    {
      goto LABEL_133;
    }

    if (*v60 != -2042067414 || *(v60 + 3) != 1684273030)
    {
      goto LABEL_133;
    }

    v51 = 720936;
    if (!X509CertificateVerifyOnlyOneAppleExtension(&v60, v72, v55))
    {
      return v51;
    }

    result = X509ExtensionParseAppleExtension(&v56, v60, v61, (a1 + 240), a1 + 248, v41);
    if (!result)
    {
      return v51;
    }

    if (v55 == 0xFF)
    {
      goto LABEL_192;
    }

    ++v55;
LABEL_157:
    if (v56 != v57)
    {
      return 720926;
    }

    if (__CFADD__(v62, v58))
    {
      goto LABEL_190;
    }

    v38 = &v62[v58];
    if (v62 > &v62[v58])
    {
      goto LABEL_189;
    }

    v39 = v63;
    if (v38 > v63)
    {
      goto LABEL_189;
    }

    v62 += v58;
    if (v38 >= v63)
    {
      goto LABEL_162;
    }
  }
}

uint64_t der_get_BOOLean(unsigned __int8 **a1, int a2, BOOL *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v3 = a1[1];
  if (*a1 > v3)
  {
    goto LABEL_22;
  }

  v13 = *a1;
  v14 = v3;
  v12 = 0;
  result = ccder_blob_decode_tl(&v13, 1, &v12);
  if (result)
  {
    if (v12 == 1)
    {
      v8 = v13;
      if (v13 < v14)
      {
        v9 = *v13;
        if (v9 != 255 && v9 != 0)
        {
          return 0;
        }

        if (a3)
        {
          *a3 = v9 != 0;
        }

        if (v8 == -1)
        {
          __break(0x5513u);
          return result;
        }

        v11 = v8 + 1;
        if (v11 <= a1[1] && *a1 <= v11)
        {
          *a1 = v11;
          return 1;
        }
      }

LABEL_22:
      __break(0x5519u);
    }
  }

  else if (a2)
  {
    if (a3)
    {
      *a3 = 0;
    }

    return 1;
  }

  return 0;
}

uint64_t X509ExtensionParseKeyUsage(uint64_t a1, _BYTE *a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v5 = 0;
  result = ccder_blob_decode_bitstring(a1, &v6, &v5);
  if (result)
  {
    if (v7 != *(a1 + 8) || v6 == v7 || v5 > 8)
    {
      return 0;
    }

    else if (v6 >= v7)
    {
      __break(0x5519u);
    }

    else
    {
      *a2 = *v6 & (-1 << (8 - v5));
      return 1;
    }
  }

  return result;
}

uint64_t X509ExtensionParseBasicConstraints(unsigned __int8 **a1, unint64_t *a2, BOOL *a3)
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  result = ccder_blob_decode_tl(a1, 0x2000000000000010, &v11);
  if (result)
  {
    result = der_get_BOOLean(a1, 1, a3);
    if (result)
    {
      result = ccder_blob_decode_uint64(a1, &v10);
      if (!result)
      {
        return 1;
      }

      if (*a3)
      {
        v7 = v10;
        *a2 = v10;
        v8 = __CFADD__(v7, 1);
        v9 = v7 + 1;
        if (!v8)
        {
          *a2 = v9;
          return 1;
        }

        __break(0x5500u);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t X509ExtensionParseAuthorityKeyIdentifier(unsigned __int8 **a1, void *a2, unint64_t *a3)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  result = ccder_blob_decode_tl(a1, 0x2000000000000010, &v15);
  if (result)
  {
    v7 = *a1;
    if (__CFADD__(*a1, v15))
    {
      goto LABEL_15;
    }

    v8 = a1[1];
    if (&v7[v15] != v8)
    {
      return 0;
    }

    v12 = 0xAAAAAAAAAAAAAAAALL;
    v13 = 0xAAAAAAAAAAAAAAAALL;
    if (v7 > &v7[v15])
    {
      goto LABEL_16;
    }

    v12 = v7;
    v13 = v8;
    result = ccder_blob_decode_tl(&v12, 0x8000000000000000, &v14);
    if (result)
    {
      if (v13 < v12)
      {
        goto LABEL_16;
      }

      v9 = v14;
      if (v14 > v13 - v12)
      {
        goto LABEL_16;
      }

      *a2 = v12;
      *a3 = v9;
    }

    v10 = *a1;
    if (__CFADD__(*a1, v15))
    {
LABEL_15:
      __break(0x5513u);
    }

    else
    {
      v11 = &v10[v15];
      if (v10 <= &v10[v15] && v11 <= a1[1])
      {
        *a1 = v11;
        return 1;
      }
    }

LABEL_16:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509ExtensionParseSubjectKeyIdentifier(unsigned __int8 **a1, unsigned __int8 **a2, unint64_t *a3)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  result = ccder_blob_decode_tl(a1, 4, &v17);
  if (result)
  {
    v7 = a1[1];
    v8 = v17;
    v10 = v7 >= *a1;
    v9 = v7 - *a1;
    if (v10)
    {
      v10 = v17 >= v9;
      v11 = v17 == v9;
    }

    else
    {
      v10 = 1;
      v11 = 0;
    }

    if (!v11 && v10)
    {
      goto LABEL_13;
    }

    *a2 = *a1;
    *a3 = v8;
    v12 = *a1;
    if (__CFADD__(*a1, v8))
    {
      __break(0x5513u);
      return result;
    }

    v13 = &v12[v8];
    v14 = a1[1];
    if (v12 <= v13)
    {
      v15 = v13 >= v14;
      v16 = v13 == v14;
    }

    else
    {
      v15 = 1;
      v16 = 0;
    }

    if (!v16 && v15)
    {
LABEL_13:
      __break(0x5519u);
    }

    *a1 = v13;
  }

  return result;
}

uint64_t X509ExtensionParseExtendedKeyUsage(unsigned __int8 **a1, void *a2, unint64_t *a3)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v6 = ccder_blob_decode_tl(a1, 0x2000000000000010, &v15);
  result = 0;
  if (v6 && v15)
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
    v13 = 0xAAAAAAAAAAAAAAAALL;
    v8 = a1[1];
    if (*a1 > v8)
    {
      goto LABEL_12;
    }

    v12 = *a1;
    v13 = v8;
    result = ccder_blob_decode_tl(&v12, 6, &v14);
    if (!result)
    {
      return result;
    }

    if (v13 < v12)
    {
      goto LABEL_12;
    }

    v9 = v14;
    if (v14 > v13 - v12)
    {
      goto LABEL_12;
    }

    *a2 = v12;
    *a3 = v9;
    v10 = *a1;
    if (__CFADD__(*a1, v15))
    {
      __break(0x5513u);
      return result;
    }

    v11 = &v10[v15];
    if (v10 > &v10[v15] || v11 > a1[1])
    {
LABEL_12:
      __break(0x5519u);
    }

    *a1 = v11;
  }

  return result;
}

uint64_t X509ExtensionParseSubjectAltName(unsigned __int8 **a1, unsigned __int8 **a2, unint64_t *a3)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  LODWORD(result) = ccder_blob_decode_tl(a1, 0x2000000000000010, &v15);
  v7 = v15;
  if (v15)
  {
    result = result;
  }

  else
  {
    result = 0;
  }

  if (result == 1)
  {
    v8 = a1[1];
    v9 = v8 >= *a1;
    v10 = v8 - *a1;
    if (!v9 || v15 > v10)
    {
      goto LABEL_16;
    }

    *a2 = *a1;
    *a3 = v7;
    v12 = *a1;
    if (__CFADD__(*a1, v7))
    {
      __break(0x5513u);
      return result;
    }

    v13 = &v12[v7];
    if (v12 > v13 || v13 > a1[1])
    {
LABEL_16:
      __break(0x5519u);
    }

    *a1 = v13;
  }

  return result;
}

uint64_t X509CertificateVerifyOnlyOneAppleExtension(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 > 9)
  {
    return 0;
  }

  v5 = result;
  v6 = 0;
  v7 = ~a2;
  while (v7 >= 16 * v6)
  {
    result = compare_octet_string(v5, a2 + 16 * v6);
    if (!result)
    {
      return result;
    }

    if (a3 <= v6++)
    {
      v9 = v5[1];
      v10 = (a2 + 16 * a3);
      *v10 = *v5;
      v10[1] = v9;
      return 1;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t X509ExtensionParseAppleExtension(uint64_t result, unint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, int a6)
{
  if (a6)
  {
    a5 = 0;
  }

  switch(a3)
  {
    case 9uLL:
      if (*a2 == 0xB6463F78648862ALL && *(a2 + 8) == 1)
      {

        return X509ExtensionParseComponentAuth(result, a4, a5);
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 49)
      {
        v57 = 0;
        result = der_get_BOOLean(result, 0, &v57);
        if (result)
        {
          v56 = 0x20000040001;
          if (v57)
          {
            v56 = 0x10000080002;
          }

          *a4 |= v56;
        }

        return result;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 44)
      {

        return X509ExtensionParseCertifiedChipIntermediate(result, a4, a5);
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 36)
      {

        return X509ExtensionParseMFIAuthv3Leaf(result, a4, a5);
      }

      if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 22)
      {
        if (*a2 == 0xC6463F78648862ALL && *(a2 + 8) == 19)
        {
          result = ccder_blob_check_null(result);
          if (!result)
          {
            return result;
          }

          v14 = *a4 | 0x8000000000;
        }

        else
        {
          if (*a2 == 0xA6463F78648862ALL && *(a2 + 8) == 1)
          {
            *a4 |= 0x1000000uLL;
            goto LABEL_249;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 29)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x2000000;
          }

          else
          {
            if (*a2 != 0xC6463F78648862ALL || *(a2 + 8) != 14)
            {
              if (*a2 != 0x86463F78648862ALL || *(a2 + 8) != 3)
              {
                goto LABEL_249;
              }

              return X509ExtensionParseDeviceAttestationIdentity(result, a4, a5);
            }

            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x4000000;
          }
        }

LABEL_282:
        *a4 = v14;
        return 1;
      }

      result = ccder_blob_check_null(result);
      if (!result)
      {
        return result;
      }

      v54 = *a4;
      v55 = 1048584;
      goto LABEL_204;
    case 0xAuLL:
      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 5122)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v54 = *a4;
        v55 = 0x800000100000;
      }

      else
      {
        if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 258)
        {
          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1538)
          {
            goto LABEL_214;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4610)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0xF00;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 278)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x800000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3073)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x10;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1793)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x20000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3329)
          {
LABEL_214:
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x20;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 2305)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x40;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 513)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x80;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1025)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x10000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 769)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x100;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1537)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x400;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 6145)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x1000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 9217)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x80000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8193)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x2000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8705)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x4000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 315)
          {

            return X509ExtensionParseMFISWAuth(result, a4, a5);
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3074)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x300000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 304)
          {

            return X509ExtensionParseGenericSSLMarker(result, a4, a5);
          }

          v35 = 1;
          goto LABEL_165;
        }

        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v54 = *a4;
        v55 = 0x58600003F0D0;
      }

LABEL_204:
      v14 = v54 | v55;
      goto LABEL_282;
    case 0xBuLL:
      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10901066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x400000000000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10301066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x200;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10601066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x800;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11801066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x2000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x12401066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x100000000000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11901066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x4000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x21901066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x8000;
        goto LABEL_282;
      }

      break;
    default:
      if (a3 < 0xA)
      {
        goto LABEL_249;
      }

      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_288;
      }

      break;
  }

  v35 = 0;
LABEL_165:
  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 27)
  {

    return X509ExtensionParseServerAuthMarker(result, a2, a3, a4, a5);
  }

  if (!v35)
  {
    goto LABEL_249;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 832)
  {
    result = ccder_blob_check_null(result);
    if (!result)
    {
      return result;
    }

    v14 = *a4 | 0x400000;
    goto LABEL_282;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3586)
  {
    result = ccder_blob_check_null(result);
    if (!result)
    {
      return result;
    }

    v54 = *a4;
    v55 = 37748736;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4354)
  {
    result = ccder_blob_check_null(result);
    if (!result)
    {
      return result;
    }

    v54 = *a4;
    v55 = 0x8004000000;
    goto LABEL_204;
  }

  if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 327)
  {
    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3841)
    {
      v53 = *result;
      v52 = *(result + 8);
      if (a5)
      {
        if (v53 > v52)
        {
          goto LABEL_288;
        }

        *a5 = v53;
        *(a5 + 8) = v52 - v53;
      }

      *a4 |= 0x80000000uLL;
      goto LABEL_250;
    }

LABEL_249:
    v53 = *result;
    v52 = *(result + 8);
LABEL_250:
    if (v53 <= v52)
    {
      *result = v52;
      return 1;
    }

LABEL_288:
    __break(0x5519u);
    return result;
  }

  return X509ExtensionParseMFI4Properties(result, a4, a5);
}

uint64_t X509CertificateParseWithExtension(unsigned __int8 **a1, uint64_t a2, const void *a3, size_t a4)
{
  v8 = 720939;
  v9 = *a2;
  v10 = *(a2 + 8);
  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (!ccder_blob_decode_tl(a2, 0x2000000000000010, &v14))
  {
    return v8;
  }

  v11 = *a2;
  result = X509CertificateParseImplicit(a1, a2, a3, a4);
  v8 = result;
  if (result)
  {
    return v8;
  }

  if (__CFADD__(v11, v14))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5500u);
    goto LABEL_12;
  }

  v8 = 720939;
  if (*a2 != &v11[v14])
  {
    return v8;
  }

  v13 = (v14 + v11 - v9);
  if (__CFADD__(v14, v11 - v9))
  {
    goto LABEL_11;
  }

  if (v10 >= v9 && v13 <= v10 - v9)
  {
    *a1 = v9;
    a1[1] = v13;
    X509PolicyCheckForBlockedKeys(a1);
    return 0;
  }

LABEL_12:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateParseSPKI(unint64_t *a1, void *a2, unsigned __int8 **a3, void *a4)
{
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a1;
  v5 = a1[1];
  if (__CFADD__(*a1, v5))
  {
LABEL_38:
    __break(0x5513u);
  }

  v6 = (v4 + v5);
  if (v4 > v6)
  {
    goto LABEL_37;
  }

  v10 = 655361;
  v21 = *a1;
  v22 = v6;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  if (!ccder_blob_decode_tl(&v21, 0x2000000000000010, &v20))
  {
    return v10;
  }

  if (!ccder_blob_decode_tl(&v21, 0x2000000000000010, &v20))
  {
    return 655363;
  }

  v18 = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v21, v20))
  {
    goto LABEL_38;
  }

  if (v21 > &v21[v20] || &v21[v20] > v22)
  {
    goto LABEL_37;
  }

  v18 = v21;
  v19 = &v21[v20];
  if (!ccder_blob_decode_tl(&v18, 6, &v20))
  {
    return 655362;
  }

  v11 = v20;
  v12 = v18;
  if (!a2)
  {
    goto LABEL_13;
  }

  if (v19 < v18 || v20 > v19 - v18)
  {
LABEL_37:
    __break(0x5519u);
    goto LABEL_38;
  }

  *a2 = v18;
  a2[1] = v11;
LABEL_13:
  if (__CFADD__(v12, v11))
  {
    goto LABEL_38;
  }

  v13 = &v12[v11];
  if (v12 > &v12[v11])
  {
    goto LABEL_37;
  }

  v14 = v19;
  if (v13 > v19)
  {
    goto LABEL_37;
  }

  v18 = v13;
  if (v13 == v19)
  {
    if (a3)
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }

  else if (a3)
  {
    *a3 = v13;
    a3[1] = (v14 - v13);
  }

  if (v14 > v22 || v21 > v14)
  {
    goto LABEL_37;
  }

  v21 = v14;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  result = ccder_blob_decode_bitstring(&v21, &v18, &v17);
  if (!result)
  {
    return 655364;
  }

  if (!v17)
  {
    *a4 = 0;
    a4[1] = 0;
LABEL_33:
    if (v21 == v22)
    {
      return 0;
    }

    else
    {
      return 655365;
    }
  }

  if (v17 < 0xFFFFFFFFFFFFFFF9)
  {
    if (v19 >= v18)
    {
      v16 = (v17 + 7) >> 3;
      if (v16 <= v19 - v18)
      {
        *a4 = v18;
        a4[1] = v16;
        goto LABEL_33;
      }
    }

    goto LABEL_37;
  }

  __break(0x5500u);
  return result;
}