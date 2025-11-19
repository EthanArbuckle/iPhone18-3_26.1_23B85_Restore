uint64_t genericMFi_util_isTLVProperty(const void *a1)
{
  if (CFEqual(a1, @"MFi_AppMatch_TeamIDs_TLV"))
  {
    return 1;
  }

  if (CFEqual(a1, @"MFi_AppMatch_ProtocolStrings_TLV"))
  {
    return 1;
  }

  if (CFEqual(a1, @"MFi_AccessoryTypes_TLV"))
  {
    return 1;
  }

  result = CFEqual(a1, @"MFi_AccessoryAttributes_TLV");
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t genericMFi_util_SetOrRemoveProperty(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __genericMFi_util_SetOrRemoveProperty_block_invoke;
  v10[3] = &__block_descriptor_64_e196_B24__0__ACCEndpoint_s___ACCConnection_s_____CFString_____CFString_ii____CFString_Q_____v________CFDictionary_____CFDictionary_BBiB____CFString_____CFString_BB__opaque_pthread_mutex_t_q_56c___8_v16l;
  v10[4] = a4;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = a3;
  v8 = acc_manager_protectedEndpointCall(a1, 1, 0, v10);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    v12 = "genericMFi_util_SetOrRemoveProperty";
    v13 = 2112;
    v14 = a1;
    v15 = 1024;
    v16 = v8;
    v17 = 2112;
    v18 = a4;
    v19 = 2112;
    v20 = a2;
    v21 = 2112;
    v22 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %@, found %d, removeProperty %@, setProperty %@, setPropertyValue %@", buf, 0x3Au);
  }

  return v8;
}

id _dataToString(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  v3 = [v1 bytes];
  v4 = [v1 length];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = *v3++;
      [v2 appendFormat:@" %02X", v6];
      --v5;
    }

    while (v5);
  }

  v7 = [v2 copy];

  return v7;
}

void OUTLINED_FUNCTION_3_33(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 8u);
}

__CFString *_dumpSimpleHex(const __CFData *a1)
{
  Length = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  Mutable = CFStringCreateMutable(0, (6 * Length) | 1);
  if (Length >= 1)
  {
    do
    {
      memset(__str, 170, sizeof(__str));
      v5 = *BytePtr++;
      snprintf(__str, 3uLL, "%02x", v5);
      v6 = CFStringCreateWithBytes(0, __str, 2, 0x600u, 0);
      CFStringAppend(Mutable, v6);
      CFRelease(v6);
      --Length;
    }

    while (Length);
  }

  return Mutable;
}

uint64_t mfi4Auth_util_parseMessage(uint64_t a1, uint64_t a2, CFDataRef theData, __int16 a4)
{
  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  iAP2MsgInitWithSom(a2, a4, 0, 0, 0, 0, 0);
  v10 = iAP2MsgParserInit(0xFFFF, a1, 0, a4);
  v11 = Length;
  if (!Length)
  {
    return 0;
  }

  v12 = v10;
  while (1)
  {
    v13 = *BytePtr++;
    result = iAP2MsgParserConsumeByte(v12, v13, a2);
    if (result)
    {
      break;
    }

    if (!--v11)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mfi4Auth_util_packIntoTunnelDataiAP2Msg(char a1, CFDataRef theData, int a3)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (!BytePtr)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v13 = *(gLogObjects + 440);
    }

    else
    {
      v13 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_util_packIntoTunnelDataiAP2Msg_cold_6(v13, v15, v16, v17, v18, v19, v20, v21);
    }

    return 0;
  }

  v7 = BytePtr;
  v8 = malloc_type_malloc(0x48uLL, 0x109004066C3AFE2uLL);
  if (!v8)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v14 = *(gLogObjects + 440);
    }

    else
    {
      v14 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_util_packIntoTunnelDataiAP2Msg_cold_4(v14, v23, v24, v25, v26, v27, v28, v29);
    }

    return 0;
  }

  v9 = v8;
  v10 = malloc_type_malloc(0xFFFFuLL, 0x4613A88EuLL);
  if (v10)
  {
    if (a3)
    {
      v11 = 21761;
    }

    else
    {
      v11 = 21760;
    }

    iAP2MsgInit(v9, v11, v10, 0xFFFF, 0, 0);
    iAP2MsgAddU8Param(v9, 0, 0, a1);
    Length = CFDataGetLength(theData);
    iAP2MsgAddDataParam(v9, 0, 1, v7, Length);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v22 = *(gLogObjects + 440);
    }

    else
    {
      v22 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_util_packIntoTunnelDataiAP2Msg_cold_2(v22, v31, v32, v33, v34, v35, v36, v37);
    }
  }

  return v9;
}

const __CFData *mfi4Auth_util_unpackFromTunnelDataiAP2Msg(const __CFData *a1, _BYTE *a2, _WORD *a3)
{
  v43 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42[2] = v5;
  v42[3] = v5;
  v42[0] = v5;
  v42[1] = v5;
  v40 = malloc_type_calloc(1uLL, 0x1001FuLL, 0x1090040DAA7631AuLL);
  v6 = mfi4Auth_util_parseMessage(v40, v42, a1, 16448);
  v7 = &audioProductCerts_endpoint_publish_onceToken;
  v8 = &audioProductCerts_endpoint_publish_onceToken;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v9 = *(gLogObjects + 440);
  }

  else
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  mfi4Auth_util_unpackFromTunnelDataiAP2Msg_cold_2(v6, v9);
  if (a3)
  {
LABEL_8:
    *a3 = iAP2MsgGetMsgID(v6);
  }

LABEL_9:
  MsgID = iAP2MsgGetMsgID(v6);
  if (MsgID == 21763)
  {
    v26 = *(v6 + 24);
    MsgLen = iAP2MsgGetMsgLen(v6);
    v13 = CFDataCreate(kCFAllocatorDefault, v26, MsgLen);
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v28 = *(gLogObjects + 440);
    }

    else
    {
      v28 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v30 = iAP2MsgGetMsgID(v6);
      Length = CFDataGetLength(v13);
      *buf = 67109632;
      *v45 = v30;
      *&v45[4] = 1024;
      *&v45[6] = 0;
      LOWORD(v46[0]) = 2048;
      *(v46 + 2) = Length;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "mfi4Auth_util_unpackFromTunnelDataiAP2Msg: message 0x%04X, type %d, unpackedMessage %ld bytes", buf, 0x18u);
    }
  }

  else if (MsgID == 21761)
  {
    FirstParam = iAP2MsgGetFirstParam(v6, 0);
    if (FirstParam)
    {
      NextParam = FirstParam;
      v13 = 0;
      DataAsU8 = 0;
      do
      {
        ParamID = iAP2MsgGetParamID(NextParam);
        if (ParamID == 1)
        {
          v41 = 0;
          DataAsData = iAP2MsgGetDataAsData(NextParam, &v41);
          if (v13)
          {
            v17 = DataAsU8;
            v18 = v7;
            v19 = v7[491];
            v20 = v8;
            v21 = *(v8 + 984);
            if (v19 && v21 >= 56)
            {
              v22 = *(v19 + 440);
            }

            else
            {
              v22 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v45 = v19;
                *&v45[8] = 1024;
                v46[0] = v21;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v24 = iAP2MsgGetMsgID(v6);
              v25 = CFDataGetLength(v13);
              *buf = 67109632;
              *v45 = v24;
              *&v45[4] = 1024;
              *&v45[6] = v17;
              LOWORD(v46[0]) = 2048;
              *(v46 + 2) = v25;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "mfi4Auth_util_unpackFromTunnelDataiAP2Msg: message 0x%04X, type %d, Already have unpackedMessage %ld bytes !!!, release and create new one", buf, 0x18u);
            }

            v8 = v20;
            DataAsU8 = v17;
            if (DataAsData)
            {
              CFRelease(DataAsData);
              DataAsData = 0;
            }

            v7 = v18;
          }

          ParamValueLen = iAP2MsgGetParamValueLen(NextParam);
          v13 = CFDataCreate(kCFAllocatorDefault, DataAsData, ParamValueLen);
        }

        else if (!ParamID)
        {
          *buf = 0;
          DataAsU8 = iAP2MsgGetDataAsU8(NextParam, buf);
        }

        NextParam = iAP2MsgGetNextParam(v6, 0, NextParam);
      }

      while (NextParam);
    }

    else
    {
      LODWORD(DataAsU8) = 0;
      v13 = 0;
    }

    v33 = v7[491];
    v34 = *(v8 + 984);
    if (v33 && v34 >= 56)
    {
      v35 = *(v33 + 440);
    }

    else
    {
      v35 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = iAP2MsgGetMsgID(v6);
      v37 = CFDataGetLength(v13);
      *buf = 67109632;
      *v45 = v36;
      *&v45[4] = 1024;
      *&v45[6] = DataAsU8;
      LOWORD(v46[0]) = 2048;
      *(v46 + 2) = v37;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "mfi4Auth_util_unpackFromTunnelDataiAP2Msg: message 0x%04X, type %d, unpackedMessage %ld bytes", buf, 0x18u);
    }

    if (a2)
    {
      *a2 = DataAsU8;
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v29 = *(gLogObjects + 440);
    }

    else
    {
      v29 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v32 = iAP2MsgGetMsgID(v6);
      *buf = 67109120;
      *v45 = v32;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "mfi4Auth_util_unpackFromTunnelDataiAP2Msg: Unrecognized message 0x%04X !!!", buf, 8u);
    }

    v13 = 0;
  }

  if (v40)
  {
    free(v40);
  }

  return v13;
}

void mfi4Auth_util_packetLogging(const void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);

  acc_platform_packetLogging_logMFi4AuthProtocolMsg(EndpointWithUUID, a2, a3, a4, a5);
}

void mfi4Auth_util_packetLogging_logData(const void *a1, const char *a2, const char *a3, const UInt8 *a4, CFIndex a5, int a6)
{
  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  v12 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v13 = CFStringCreateWithCString(kCFAllocatorDefault, a3, 0x8000100u);
  v14 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, a4, a5, kCFAllocatorNull);
  acc_platform_packetLogging_logData(EndpointWithUUID, v12, v13, v14, a6);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {

    CFRelease(v14);
  }
}

void platform_btConnectionStatus_updateHandler(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[#BT Connection Status] btConnectionStatus updateHandler: %@, componentUID=%@, profiles=%@", buf, 0x20u);
  }

  if (v5 && v6 && v7)
  {
    v11 = malloc_type_malloc(0x18uLL, 0x1060040D0FAAE32uLL);
    *v11 = 0;
    v11[1] = v6;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v19;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v15 |= 1 << [*(*(&v18 + 1) + 8 * i) intValue];
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    *(v11 + 4) = v15;
    if ((accFeatureHandlers_invokeHandler(v5, 38, v11) & 1) == 0)
    {
      platform_btConnectionStatus_deleteParams(v11);
    }
  }
}

id _getBTStatusPluginInstance()
{
  v0 = +[ACCPlatformPluginManager sharedManager];
  v1 = [v0 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformBluetoothStatusPluginProtocol fallbackToTransportPlugins:1];

  return v1;
}

void platform_btConnectionStatus_accessoryAttached(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 8;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[#BT Connection Status] btConnectionStatus accessoryAttached: %@", &v9, 0xCu);
  }

  v5 = [[_ACCBTConnectionStatusAccessory alloc] initWithUID:a1];
  v6 = +[_ACCBTConnectionStatusAccessory accessoryList];
  [v6 setObject:v5 forKey:a1];

  v7 = _getBTStatusPluginInstance();
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 accessoryAttached:a1];
    [(_ACCBTConnectionStatusAccessory *)v5 setPluginAccessory:v8];
  }
}

void platform_btConnectionStatus_accessoryDetached(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 8;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[#BT Connection Status] btConnectionStatus accessoryDetached: %@", &v11, 0xCu);
  }

  v5 = +[_ACCBTConnectionStatusAccessory accessoryList];
  v6 = [v5 objectForKey:a1];

  if (v6)
  {
    v7 = _getBTStatusPluginInstance();
    if (objc_opt_respondsToSelector())
    {
      v8 = [v6 pluginAccessory];
      [v7 accessoryDetached:v8];

      [v6 setPluginAccessory:0];
    }

    v9 = +[_ACCBTConnectionStatusAccessory accessoryList];
    [v9 removeObjectForKey:a1];
    goto LABEL_23;
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v7 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v10 = &_os_log_default;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = +[_ACCBTConnectionStatusAccessory accessoryList];
    v11 = 138412546;
    v12 = a1;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[#BT Connection Status] btConnectionStatus accessoryDetached: Unable to find accessory for accessoryUID %@ ! accessoryList=%@", &v11, 0x16u);
LABEL_23:
  }
}

void platform_btConnectionStatus_accessoryStartConnectionUpdates(uint64_t a1, void *a2, __CFString *a3, const __CFData *a4)
{
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v25 = a1;
    v26 = 2112;
    v27 = a2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[#BT Connection Status] btConnectionStatus accessoryStartConnectionUpdates: %@ componentUID:%@", buf, 0x16u);
  }

  v11 = +[_ACCBTConnectionStatusAccessory accessoryList];
  v12 = [v11 objectForKey:a1];

  if (!v12)
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v14 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v14 = &_os_log_default;
      v22 = &_os_log_default;
    }

    if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_INFO))
    {
      v20 = +[_ACCBTConnectionStatusAccessory accessoryList];
      *buf = 138412546;
      v25 = a1;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, &v14->super, OS_LOG_TYPE_INFO, "[#BT Connection Status] btConnectionStatus accessoryStartConnectionUpdates: Unable to find accessory for accessoryUID %@ ! accessoryList=%@", buf, 0x16u);
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v13 = [v12 components];
  v14 = [v13 objectForKey:a2];

  if (v14)
  {
LABEL_20:
    [(_ACCBTConnectionStatusComponent *)v14 setUpdateStarted:1];
    v20 = _getBTStatusPluginInstance();
    v21 = [(_ACCBTConnectionStatusComponent *)v14 copyDictionary];
    [v20 startCheckingForUpdates:v21 forAccessory:a1];

LABEL_29:
    goto LABEL_30;
  }

  if (a1)
  {
    v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", a1);
    if (a2)
    {
      goto LABEL_15;
    }

LABEL_32:
    v16 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v15 = 0;
  if (!a2)
  {
    goto LABEL_32;
  }

LABEL_15:
  v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", a2);
  if (a3)
  {
LABEL_16:
    a3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", a3);
  }

LABEL_17:
  if (a4)
  {
    BytePtr = CFDataGetBytePtr(a4);
    Length = CFDataGetLength(a4);
    a4 = CFDataCreate(kCFAllocatorDefault, BytePtr, Length);
  }

  v14 = [[_ACCBTConnectionStatusComponent alloc] initWithUID:v15 componentUID:v16 name:a3 macAddr:a4];
  v19 = [v12 components];
  [v19 setObject:v14 forKey:v16];

  if (v14)
  {
    goto LABEL_20;
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v14 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v14 = &_os_log_default;
    v23 = &_os_log_default;
  }

  if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = a2;
    _os_log_impl(&_mh_execute_header, &v14->super, OS_LOG_TYPE_INFO, "[#BT Connection Status] btConnectionStatus accessoryStartConnectionUpdates: Unable to find component %@ !", buf, 0xCu);
  }

LABEL_30:
}

void platform_btConnectionStatus_accessoryStopConnectionUpdates(uint64_t a1, void *a2)
{
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
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = a1;
    v16 = 2112;
    v17 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[#BT Connection Status] btConnectionStatus accessoryStopConnectionUpdates: %@ componentUID:%@", &v14, 0x16u);
  }

  v7 = +[_ACCBTConnectionStatusAccessory accessoryList];
  v8 = [v7 objectForKey:a1];

  if (v8)
  {
    v9 = [v8 components];
    v10 = [v9 objectForKey:a2];

    if (v10)
    {
      [v10 setUpdateStarted:0];
      v11 = _getBTStatusPluginInstance();
      v12 = [v10 copyDictionary];
      [v11 stopCheckingForUpdates:v12 forAccessory:a1];

LABEL_22:
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v10 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v10 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = +[_ACCBTConnectionStatusAccessory accessoryList];
      v14 = 138412546;
      v15 = a1;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[#BT Connection Status] btConnectionStatus accessoryStopConnectionUpdates: Unable to find accessory for accessoryUID %@ ! accessoryList=%@", &v14, 0x16u);
      goto LABEL_22;
    }
  }
}

void platform_btConnectionStatus_accessoryStopAllConnectionUpdates(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 8;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[#BT Connection Status] btConnectionStatus accessoryStopAllConnectionUpdates: %@", buf, 0xCu);
  }

  v5 = +[_ACCBTConnectionStatusAccessory accessoryList];
  v6 = [v5 objectForKey:a1];

  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v6 components];
    v8 = [v7 allValues];

    v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) componentUID];
          platform_btConnectionStatus_accessoryStopConnectionUpdates(a1, v13);
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v10);
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v8 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v15 = +[_ACCBTConnectionStatusAccessory accessoryList];
      *buf = 138412546;
      v21 = a1;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[#BT Connection Status] btConnectionStatus accessoryStopAllConnectionUpdates: Unable to find accessory for accessoryUID %@ ! accessoryList=%@", buf, 0x16u);
    }
  }
}

void platform_btComponentStatus_btComponentInfo(uint64_t a1, const __CFArray *a2)
{
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
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v36 = a1;
    v37 = 2112;
    v38 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[#BT Connection Status] btConnectionStatus btComponentInfo: %@ componentList=%@", buf, 0x16u);
  }

  v7 = +[_ACCBTConnectionStatusAccessory accessoryList];
  v8 = [v7 objectForKey:a1];

  if (v8)
  {
    v26 = v8;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = CFArrayCreateCopy(kCFAllocatorDefault, a2);
    v28 = [(__CFArray *)v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (!v28)
    {
      goto LABEL_36;
    }

    v10 = *v31;
    v27 = a1;
    v25 = *v31;
    while (1)
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v12 objectForKey:@"ACCBluetoothStatusComponentInfoUID"];
        v14 = [v12 objectForKey:@"ACCBluetoothStatusComponentInfoMACAddr"];
        v15 = [v12 objectForKey:@"ACCBluetoothStatusComponentInfoEnabled"];
        v29 = [v12 objectForKey:@"ACCBluetoothStatusComponentInfoName"];
        if (a1)
        {
          v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", a1);
        }

        else
        {
          v16 = 0;
        }

        if (v13)
        {
          v17 = v14 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17 && v15 != 0)
        {
          v19 = [v26 components];
          v20 = [v19 objectForKey:v13];

          if (v20)
          {
            v10 = v25;
          }

          else
          {
            v20 = [[_ACCBTConnectionStatusComponent alloc] initWithUID:v16 componentUID:v13 name:v29 macAddr:v14];
            v21 = [v26 components];
            [v21 setObject:v20 forKey:v13];

            a1 = v27;
            v10 = v25;
            if (!v20)
            {
              goto LABEL_34;
            }
          }

          -[_ACCBTConnectionStatusComponent setEnabled:](v20, "setEnabled:", [v15 BOOLValue]);
          v22 = _getBTStatusPluginInstance();
          if ((objc_opt_respondsToSelector() & 1) != 0 && ![v22 updateBTComponent:v12 forAccessory:v27 withEnabledState:{-[_ACCBTConnectionStatusComponent enabled](v20, "enabled")}])
          {
            [(_ACCBTConnectionStatusComponent *)v20 setNeedToUnplugBTDevice:[(_ACCBTConnectionStatusComponent *)v20 enabled]];
          }

          a1 = v27;
        }

LABEL_34:
      }

      v28 = [(__CFArray *)v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (!v28)
      {
LABEL_36:

        v8 = v26;
        goto LABEL_45;
      }
    }
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v9 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v23 = &_os_log_default;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v24 = +[_ACCBTConnectionStatusAccessory accessoryList];
    *buf = 138412546;
    v36 = a1;
    v37 = 2112;
    v38 = v24;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[#BT Connection Status] btConnectionStatus btComponentInfo: Unable to find accessory for accessoryUID %@ ! accessoryList=%@", buf, 0x16u);
  }

LABEL_45:
}

void platform_btConnectionStatus_deleteParams(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

__CFDictionary *platform_btComponentStatus_createComponentInfoDict(const void *a1, const void *a2, const void *a3, UInt8 *bytes, char a5)
{
  valuePtr = a5;
  v8 = CFDataCreate(kCFAllocatorDefault, bytes, 6);
  v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(Mutable, @"ACCBluetoothStatusComponentInfoAccessoryUID", a1);
  CFDictionarySetValue(Mutable, @"ACCBluetoothStatusComponentInfoUID", a2);
  CFDictionarySetValue(Mutable, @"ACCBluetoothStatusComponentInfoName", a3);
  CFDictionarySetValue(Mutable, @"ACCBluetoothStatusComponentInfoMACAddr", v8);
  CFDictionarySetValue(Mutable, @"ACCBluetoothStatusComponentInfoEnabled", v9);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return Mutable;
}

void _accAuthProtocol_endpoint_dispatchQueueFinalizer(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v2 = *(gLogObjects + 432);
  }

  else
  {
    v2 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "_accAuthProtocol_endpoint_dispatchQueueFinalizer";
    v8 = 1024;
    v9 = a1 != 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: protocolEndpoint %d", &v6, 0x12u);
  }

  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (*(a1 + 8) != 1 || (acc_auth_protocol_endSession(v3), *(a1 + 8) = 0, (v3 = *(a1 + 16)) != 0))
      {
        free(v3);
        *(a1 + 16) = 0;
      }
    }

    *(a1 + 56) = 0;
    v4 = *(a1 + 40);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 40) = 0;
    }

    v5 = *(a1 + 24);
    if (v5)
    {
      free(v5);
    }

    free(a1);
  }
}

uint64_t _accAuthProtocol_endpoint_initSession(uint64_t a1)
{
  v2 = acc_userDefaults_copyIntegerForKey(@"ACCAuthProtocolMaxMessageSize");
  v21 = -1431655766;
  *&v20[4] = 0xAAAAAAAAAAAAAAAALL;
  *v20 = _acc_auth_protocol_supportedAuthCapabilities(1);
  v3 = _acc_auth_protocol_supportedAuthTypes(1, &v20[4], 4u);
  if (v2 <= 0)
  {
    v4 = 128;
  }

  else
  {
    v4 = v2;
  }

  *&v20[8] = v3;
  v21 = v4;
  v5 = acc_auth_protocol_sizeofSessionData();
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v6 = *(gLogObjects + 432);
  }

  else
  {
    v6 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 16);
    if (v18)
    {
      v19 = *v18;
    }

    else
    {
      v19 = -1;
    }

    *buf = 67109888;
    v23 = v19;
    v24 = 1024;
    v25 = *v20;
    v26 = 1024;
    v27 = *&v20[8];
    v28 = 1024;
    v29 = v5;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "accAuthProtocol initSession: sessionID %d, characteristics %#10x, authTypesLen %d, sessionDataLen %d", buf, 0x1Au);
  }

  if (!*(a1 + 16))
  {
    *(a1 + 16) = malloc_type_calloc(1uLL, v5, 0xA19554CDuLL);
  }

  *(a1 + 64) = CFAbsoluteTimeGetCurrent();
  acc_platform_packetLogging_logEvent(*a1, "ATTACH", "ACCAuthProtocol accessory attached!", v7, v8, v9, v10, v11, *v20);
  if (*a1)
  {
    v12 = *(*a1 + 16);
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 8) = acc_auth_protocol_createSessionWithContext(1, v20, *(a1 + 16), v12) == 0;
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v13 = *(gLogObjects + 432);
  }

  else
  {
    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 16);
    if (v14)
    {
      v15 = *v14;
    }

    else
    {
      v15 = -1;
    }

    v16 = *(a1 + 8);
    *buf = 67110144;
    v23 = v15;
    v24 = 1024;
    v25 = *v20;
    v26 = 1024;
    v27 = *&v20[8];
    v28 = 1024;
    v29 = v5;
    v30 = 1024;
    v31 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "accAuthProtocol initSession: sessionID %d, characteristics %#10x, authTypesLen %d, sessionDataLen %d, authSessionInitialized %d", buf, 0x20u);
  }

  return *(a1 + 8);
}

void _accAuthProtocol_endpoint_cleanupSession(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v2 = *(gLogObjects + 432);
  }

  else
  {
    v2 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = **(a1 + 16);
    v4 = *(a1 + 8);
    v5[0] = 67109376;
    v5[1] = v3;
    v6 = 1024;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "accAuthProtocol cleanupSession: acc_auth_protocol_endSession sessionID %d, authSessionInitialized %d", v5, 0xEu);
  }

  if (*(a1 + 8) == 1)
  {
    acc_auth_protocol_endSession(*(a1 + 16));
    *(a1 + 8) = 0;
  }
}

void __accAuthProtocol_endpoint_publish_block_invoke(id a1)
{
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v1 = *(gLogObjects + 432);
  }

  else
  {
    v1 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "accAuthProtocol publish: CFNotificationCenterAddObserver", v3, 2u);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, 0, _accAuthProtocol_endpoint_authReadyChanged, @"NfcAuthReady", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void _accAuthProtocol_endpoint_authReadyChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v6 = *(gLogObjects + 432);
  }

  else
  {
    v6 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "accAuthProtocol: Auth Ready changed", buf, 2u);
  }

  Value = CFDictionaryGetValue(a5, @"endpointUUID");
  if (Value)
  {
    v8 = Value;
    v9 = CFGetTypeID(Value);
    if (v9 == CFStringGetTypeID())
    {
      EndpointWithUUID = acc_manager_getEndpointWithUUID(v8);
      if (EndpointWithUUID)
      {
        v11 = EndpointWithUUID;
        if (EndpointWithUUID[7] == 10 && EndpointWithUUID[6] == 13)
        {
          if (gLogObjects && gNumLogObjects >= 55)
          {
            v12 = *(gLogObjects + 432);
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
            *v13 = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "accAuthProtocol: endpoint is ACCAuthProtocol", v13, 2u);
          }

          if (acc_endpoint_setProperty(v11, kCFACCProperties_Endpoint_NFC_RequestSessionOpen, kCFBooleanTrue))
          {
            _accAuthProtocol_endpoint_sendAuthSetupStart(*(v11 + 7));
          }
        }
      }
    }
  }
}

void _accAuthProtocol_endpoint_sendAuthSetupStart(uint64_t a1)
{
  if (a1 && !acc_auth_protocol_authSetupStart(*(a1 + 16), *(a1 + 24), *(a1 + 32)))
  {
    v2 = *(*a1 + 16);
    if (v2)
    {
      CFRetain(*(*a1 + 16));
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v3 = *(gLogObjects + 432);
      }

      else
      {
        v3 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v10 = v2;
        v11 = 1024;
        v12 = 100;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "accAuthProtocol sendAuthSetupStart: %@, send after %d ms ...", buf, 0x12u);
      }

      v5 = dispatch_time(0, 100000000);
      v6 = *(a1 + 56);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 0x40000000;
      v7[2] = ___accAuthProtocol_endpoint_sendAuthSetupStart_block_invoke;
      v7[3] = &__block_descriptor_tmp_23;
      v7[4] = v2;
      v8 = 100;
      dispatch_after(v5, v6, v7);
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v4 = *(gLogObjects + 432);
      }

      else
      {
        v4 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        _accAuthProtocol_endpoint_sendAuthSetupStart_cold_3(v4);
      }
    }
  }
}

void __accAuthProtocol_endpoint_processIncomingData_block_invoke(uint64_t a1)
{
  _accAuthProtocol_endpoint_processIncomingData(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void accAuthProtocol_endpoint_setIncomingIntercept(_DWORD *a1, int a2)
{
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v4 = *(gLogObjects + 432);
  }

  else
  {
    v4 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(*a1 + 16);
    v6 = a1[12];
    v7 = 138412802;
    v8 = v5;
    v9 = 1024;
    v10 = v6;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "_setIncomingIntercept: %@, interceptIncomingCount %d -> %d", &v7, 0x18u);
  }

  a1[12] = a2;
}

uint64_t accAuthProtocol_endpoint_getIncomingInterceptCount(_DWORD *a1)
{
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v2 = *(gLogObjects + 432);
  }

  else
  {
    v2 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*a1 + 16);
    v4 = a1[12];
    v6 = 138412546;
    v7 = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "_getIncomingInterceptCount: %@, interceptIncomingCount %d", &v6, 0x12u);
  }

  return a1[12];
}

void ___accAuthProtocol_endpoint_sendAuthSetupStart_block_invoke(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v2 = *(gLogObjects + 432);
  }

  else
  {
    v2 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12 = 138412546;
    *v13 = v3;
    *&v13[8] = 1024;
    *v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "accAuthProtocol sendAuthSetupStart: %@, ... sending after %d ms", &v12, 0x12u);
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(*(a1 + 32));
  v6 = EndpointWithUUID;
  if (EndpointWithUUID && *(EndpointWithUUID + 7) == 10 && (v7 = EndpointWithUUID[7]) != 0)
  {
    ___accAuthProtocol_endpoint_sendAuthSetupStart_block_invoke_cold_2(v7);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v8 = *(gLogObjects + 432);
    }

    else
    {
      v8 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (v6)
      {
        v9 = *(v6 + 7) == 10;
        v10 = v6[7] != 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      v11 = *(a1 + 32);
      v12 = 67109890;
      *v13 = v6 != 0;
      *&v13[4] = 1024;
      *&v13[6] = v9;
      *v14 = 1024;
      *&v14[2] = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "accAuthProtocol sendAuthSetupStart: no endpoint(%d) or wrong protocol(%d) or no protocolEndpoint(%d) for endpointUUID %@ !!", &v12, 0x1Eu);
    }
  }

  CFRelease(*(a1 + 32));
}

BOOL OUTLINED_FUNCTION_7_27()
{
  v2 = **v0;

  return acc_connection_isAuthenticated(v2, 6u);
}

id _getUSBModePluginInstance()
{
  v0 = +[ACCPlatformPluginManager sharedManager];
  v1 = [v0 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformUSBModePluginProtocol fallbackToTransportPlugins:1];

  return v1;
}

id _getUSBFaultPluginInstance()
{
  v0 = +[ACCPlatformPluginManager sharedManager];
  v1 = [v0 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformUSBFaultPluginProtocol fallbackToTransportPlugins:0];

  return v1;
}

id platform_usb_get_mode(uint64_t a1)
{
  v2 = +[ACCPlatformUSBManager sharedManager];
  v3 = [v2 getUSBModeForEndpointUUID:a1];

  return v3;
}

id platform_usb_set_mode_monitoring(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCPlatformUSBManager sharedManager];
  v5 = [v4 setUSBModeMonitoringForEndpointUUID:a1 withState:a2];

  return v5;
}

id platform_usb_set_fault_monitoring(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCPlatformUSBManager sharedManager];
  v5 = [v4 setUSBFaultMonitoringForEndpointUUID:a1 withState:a2];

  return v5;
}

id platform_usb_set_mode(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCPlatformUSBManager sharedManager];
  v5 = [v4 setUSBModeForEndpointUUID:a1 newMode:a2];

  return v5;
}

id OUTLINED_FUNCTION_0_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

void acc_platform_loggingProtocol_registerForPrefsNotification()
{
  if (acc_platform_loggingProtocol_registerForPrefsNotification_onceToken != -1)
  {
    acc_platform_loggingProtocol_registerForPrefsNotification_cold_1();
  }
}

void __acc_platform_loggingProtocol_registerForPrefsNotification_block_invoke(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, receivedNotification_0, @"com.apple.iapd.LoggingPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void receivedNotification_0()
{
  if (gLogObjects && gNumLogObjects >= 53)
  {
    v0 = *(gLogObjects + 416);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v0 = &_os_log_default;
    v1 = &_os_log_default;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    LOWORD(v4[0]) = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Logs enabled from Accessory Developer Profile.", v4, 2u);
  }

  _accessoryDeveloperLoggingEnabled = CFPreferencesGetAppBooleanValue(@"CarPlayLoggingEnableAccessoryLogs", @"com.apple.CoreAccessories", 0) != 0;
  if (gLogObjects && gNumLogObjects >= 53)
  {
    v2 = *(gLogObjects + 416);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = _accessoryDeveloperLoggingEnabled;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Logs enabled from Accessory Developer Profile. value: %d", v4, 8u);
  }
}

void acc_platform_loggingProtocol_registerForStartCarPlayLoggingNotification(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (!startLogsNotificationObservers)
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      v5 = startLogsNotificationObservers;
      startLogsNotificationObservers = v4;
    }

    v6 = [NSString stringWithFormat:@"%@", a1];
    v7 = [startLogsNotificationObservers objectForKey:v6];

    if (v7)
    {
      if (gLogObjects && gNumLogObjects >= 53)
      {
        v8 = *(gLogObjects + 416);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v8 = &_os_log_default;
        v11 = &_os_log_default;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Already registered for Request Accessory Logs notification.", buf, 2u);
      }
    }

    else
    {
      v9 = startLogsNotificationObservers;
      v10 = [NSValue valueWithPointer:a2];
      [v9 setObject:v10 forKey:v6];

      if (acc_platform_loggingProtocol_registerForStartCarPlayLoggingNotification_onceToken != -1)
      {
        acc_platform_loggingProtocol_registerForStartCarPlayLoggingNotification_cold_2();
      }
    }
  }
}

void __acc_platform_loggingProtocol_registerForStartCarPlayLoggingNotification_block_invoke(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, receivedStartCarPlayAccessoryLoggingNotification, @"com.apple.iapd.StartCarPlayAccessoryLogging", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void receivedStartCarPlayAccessoryLoggingNotification()
{
  if ([startLogsNotificationObservers count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v0 = startLogsNotificationObservers;
    v1 = [v0 countByEnumeratingWithState:&v9 objects:v14 count:16];
    if (v1)
    {
      v2 = v1;
      v3 = *v10;
      do
      {
        for (i = 0; i != v2; i = i + 1)
        {
          if (*v10 != v3)
          {
            objc_enumerationMutation(v0);
          }

          v5 = [startLogsNotificationObservers objectForKey:{*(*(&v9 + 1) + 8 * i), v9}];
          v6 = [v5 pointerValue];

          if (v6)
          {
            AccessoryLoggingLevel = readAccessoryLoggingLevel();
            loggingProtocol_requestLogsFromAccessory(AccessoryLoggingLevel, v6);
          }
        }

        v2 = [v0 countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v2);
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 53)
    {
      v0 = *(gLogObjects + 416);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v0 = &_os_log_default;
      v8 = &_os_log_default;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "No connected logging session found! Ignoring Request Accessory Logs request.", buf, 2u);
    }
  }
}

void acc_platform_loggingProtocol_registerForStopCarPlayLoggingNotification(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (!stopLogsNotificationObservers)
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      v5 = stopLogsNotificationObservers;
      stopLogsNotificationObservers = v4;
    }

    v6 = [NSString stringWithFormat:@"%@", a1];
    v7 = [stopLogsNotificationObservers objectForKey:v6];

    if (v7)
    {
      if (gLogObjects && gNumLogObjects >= 53)
      {
        v8 = *(gLogObjects + 416);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v8 = &_os_log_default;
        v11 = &_os_log_default;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Already registered for Stop Accessory Logs notification.", buf, 2u);
      }
    }

    else
    {
      v9 = stopLogsNotificationObservers;
      v10 = [NSValue valueWithPointer:a2];
      [v9 setObject:v10 forKey:v6];

      if (acc_platform_loggingProtocol_registerForStopCarPlayLoggingNotification_onceToken != -1)
      {
        acc_platform_loggingProtocol_registerForStopCarPlayLoggingNotification_cold_2();
      }
    }
  }
}

void __acc_platform_loggingProtocol_registerForStopCarPlayLoggingNotification_block_invoke(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, receivedStopCarPlayAccessoryLoggingNotification, @"com.apple.iapd.StopCarPlayAccessoryLogging", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void receivedStopCarPlayAccessoryLoggingNotification()
{
  if ([stopLogsNotificationObservers count])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v0 = stopLogsNotificationObservers;
    v1 = [v0 countByEnumeratingWithState:&v8 objects:v13 count:16];
    if (v1)
    {
      v2 = v1;
      v3 = *v9;
      do
      {
        for (i = 0; i != v2; i = i + 1)
        {
          if (*v9 != v3)
          {
            objc_enumerationMutation(v0);
          }

          v5 = [stopLogsNotificationObservers objectForKey:{*(*(&v8 + 1) + 8 * i), v8}];
          v6 = [v5 pointerValue];

          if (v6)
          {
            loggingProtocol_stopLogsFromAccessory(2u, v6);
          }
        }

        v2 = [v0 countByEnumeratingWithState:&v8 objects:v13 count:16];
      }

      while (v2);
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 53)
    {
      v0 = *(gLogObjects + 416);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v0 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "No connected logging session found! Ignoring Stop Accessory Logs request.", buf, 2u);
    }
  }
}

BOOL readAccessoryLoggingLevel()
{
  v0 = CFPreferencesCopyAppValue(@"CarPlayLoggingAccessoryLogLevel", @"com.apple.CoreAccessories");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFStringCompare(v0, @"debug", 1uLL) == kCFCompareEqualTo;
  CFRelease(v1);
  return v2;
}

id acc_platform_loggingProtocol_removeNotificationObserver(id result)
{
  if (result)
  {
    v1 = result;
    [startLogsNotificationObservers removeObjectForKey:result];
    v2 = stopLogsNotificationObservers;

    return [v2 removeObjectForKey:v1];
  }

  return result;
}

void acc_platform_loggingProtocol_logSessionSync(uint64_t a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSince1970];
  v4 = v3 + *(a1 + 40) / -1000000000.0;

  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a1 + 48);
  v8 = **(a1 + 32);
  v9 = [[NSUUID alloc] initWithUUIDBytes:a1 + 57];
  v10 = [v9 UUIDString];
  v13 = [NSString stringWithFormat:@"%@ SYNC; EP_UUID=%@; PROT_VER=%hhu; CONN_WALL_TIME=%lluns (0x%llX); CONN_ACC_TIME=%lluns (0x%llX); SEC_SINCE_CONN=%.6f; STR_TABLE_ID=%@; ACC_NAME='%s'; ACC_MODEL_ID='%s'; ACC_MFR='%s'", @"LOGGING_PROTOCOL", v8, v6, v5, v5, v7, v7, *&v4, v10, *(a1 + 80), *(a1 + 96), *(a1 + 88)];;

  v11 = [NSString stringWithFormat:@"%@-%s-%@", @"accLogging", *(a1 + 80), v8];

  v12 = getLogFileWriter(v11);
  [v12 log:v13];
}

id getLogFileWriter(void *a1)
{
  v1 = a1;
  v2 = _logFileWriters;
  if (!_logFileWriters)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = _logFileWriters;
    _logFileWriters = v3;

    v2 = _logFileWriters;
  }

  v5 = [v2 objectForKeyedSubscript:v1];

  if (!v5)
  {
    v6 = [[LogFileWriter alloc] initFor:@"accessoryd" fileLabel:v1];
    [_logFileWriters setObject:v6 forKeyedSubscript:v1];
  }

  v7 = [_logFileWriters objectForKeyedSubscript:v1];

  return v7;
}

void acc_platform_loggingProtocol_logLogEntry(unsigned int *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = v4 / 1000000000.0;
  v6 = (v4 - *(a2 + 40) + *(a2 + 48)) / 1000000000.0;
  v7 = **(a2 + 32);
  v8 = objc_alloc_init(NSDateFormatter);
  [v8 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSS ZZZ"];
  v9 = [NSDate dateWithTimeIntervalSince1970:v5];
  v13 = [v8 stringFromDate:v9];

  v10 = [NSString stringWithFormat:@"%@ ENTRY; SEQ_NUM=%u; WALL_TS='%@'; WALL_UNIX_TIME=%.6fs; ACC_TIME=%.6fs; LVL=%d; SYS='%s'; CAT='%s'; DES='%s'", @"LOGGING_PROTOCOL", *a1, v13, *&v5, *&v6, a1[4], *(a1 + 3), *(a1 + 5), *(a1 + 6)];;
  v11 = [NSString stringWithFormat:@"%@-%s-%@", @"accLogging", *(a2 + 80), v7];

  v12 = getLogFileWriter(v11);
  [v12 log:v10];
}

void acc_platform_loggingProtocol_logIndexBasedLogEntry(unsigned int *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = v4 / 1000000000.0;
  v6 = (v4 - *(a2 + 40) + *(a2 + 48)) / 1000000000.0;
  v15 = **(a2 + 32);
  v7 = objc_alloc_init(NSDateFormatter);
  [v7 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSS ZZZ"];
  v8 = [NSDate dateWithTimeIntervalSince1970:v5];
  v9 = [v7 stringFromDate:v8];

  v10 = objc_alloc_init(NSMutableString);
  [v10 appendFormat:@"%@; INDEX_BASED_ENTRY; SEQ_NUM=%u; WALL_TS='%@'; WALL_UNIX_TIME=%.6fs; ACC_TIME=%.6fs; LVL=%d; TABLE_INDEX=%u; NUM_PARAMS=%u; ", @"LOGGING_PROTOCOL", *a1, v9, *&v5, *&v6, a1[4], a1[5], *(a1 + 24)];
  if (*(a1 + 24))
  {
    v11 = 0;
    do
    {
      v12 = v11 + 1;
      [v10 appendFormat:@"PARAM_%d=%llu; ", v11 + 1, *(*(a1 + 4) + 8 * v11)];
      v11 = v12;
    }

    while (v12 < *(a1 + 24));
  }

  v13 = [NSString stringWithFormat:@"%@-%s-%@", @"accLogging", *(a2 + 80), v15];
  v14 = getLogFileWriter(v13);
  [v14 log:v10];
}

void acc_platform_loggingProtocol_logBinaryBlock(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v7 = [NSString stringWithFormat:@"%@-%s-%@-%u-%llu-%llu", @"accBinaryLogging", *(a3 + 80), **(a3 + 32), *(a3 + 120), *(a3 + 128), *(a3 + 136)];
  v5 = [NSData dataWithBytes:a1 length:a2];
  v6 = getLogFileWriter(v7);
  [v6 logRawData:v5];
}

void acc_platform_loggingProtocol_postLoggingCleanup()
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v0 = _logFileWriters;
  v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v8;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v0);
        }

        if (_logFileWriters)
        {
          v5 = [_logFileWriters objectForKeyedSubscript:{*(*(&v7 + 1) + 8 * i), v7}];
          [v5 flush];
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v2);
  }

  [_logFileWriters removeAllObjects];
  v6 = _logFileWriters;
  _logFileWriters = 0;
}

uint64_t oobPairing_bleToOobPairingType(int a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t qiAuth_util_init(uint64_t a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v2 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
  result = 0;
  *(a1 + 16) = v2;
  return result;
}

uint64_t qiAuth_util_cleanup(uint64_t a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  v2 = *v1;
  *v1 = 0;

  free(v1);
  return 0;
}

uint64_t qiAuth_util_generateNonce(uint64_t a1, void *a2, unsigned int a3)
{
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v6 = *(gLogObjects + 472);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v6 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      qiAuth_util_generateNonce_cold_2(a1);
    }

    if (a3 && a2 && !*(a1 + 8))
    {
      arc4random_buf(a2, a3);
    }
  }

  return 4294967294;
}

uint64_t qiAuth_util_verifyCertificateChain(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6)
{
  v9 = &audioProductCerts_endpoint_publish_onceToken;
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v13 = *(gLogObjects + 472);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v13 = &_os_log_default;
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a1 + 8);
      v39 = 136316418;
      v40 = "qiAuth_util_verifyCertificateChain";
      v41 = 1024;
      v42 = 178;
      v43 = 1024;
      *v44 = v25;
      *&v44[4] = 1024;
      *&v44[6] = a2;
      v45 = 1024;
      v46 = a4;
      v47 = 1024;
      v48 = a6;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s:%d role %d, slot %d, certChainRootHashLength %d, certChainLength %d", &v39, 0x2Au);
    }

    v14 = 0;
    v16 = 4294967294;
    if (a6 <= 0x600 && a5 && a4 == 32 && a3 && a2 <= 3)
    {
      v15 = 0;
      if (!*(a1 + 8))
      {
        v18 = *(a1 + 16);
        if (v18)
        {
          v15 = [NSData dataWithBytes:a5 length:a6];
          v19 = +[MFAACertificateManager sharedManager];
          v14 = [v19 copyParsedCertificateChainInfo:v15];

          if (gLogObjects && gNumLogObjects >= 60)
          {
            v20 = *(gLogObjects + 472);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v20 = &_os_log_default;
            v21 = &_os_log_default;
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v22 = [v14 description];
            v23 = [v22 UTF8String];
            if (v23)
            {
              v9 = [v14 description];
              v24 = [v9 UTF8String];
            }

            else
            {
              v24 = "<nil>";
            }

            v39 = 136315650;
            v40 = "qiAuth_util_verifyCertificateChain";
            v41 = 1024;
            v42 = 198;
            v43 = 2080;
            *v44 = v24;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s:%d parsedCertChainInfo = %s", &v39, 0x1Cu);
            if (v23)
            {
            }

            v9 = &audioProductCerts_endpoint_publish_onceToken;
          }

          v26 = +[MFAACertificateManager sharedManager];
          v27 = [v26 copyEvaluatedCertificateChainInfo:v14 forSpecificType:128];
          v28 = *v18;
          *v18 = v27;

          if (gLogObjects && gNumLogObjects >= 60)
          {
            v29 = *(gLogObjects + 472);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v29 = &_os_log_default;
            v30 = &_os_log_default;
          }

          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v31 = [*v18 description];
            v32 = [v31 UTF8String];
            if (v32)
            {
              v9 = [*v18 description];
              v33 = [v9 UTF8String];
            }

            else
            {
              v33 = "<nil>";
            }

            v39 = 136315650;
            v40 = "qiAuth_util_verifyCertificateChain";
            v41 = 1024;
            v42 = 217;
            v43 = 2080;
            *v44 = v33;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s:%d certChainInfo = %s", &v39, 0x1Cu);
            if (v32)
            {
            }
          }

          if (*v18)
          {
            v16 = 0;
          }

          else if (acc_userDefaults_BOOLForKey(@"MPPAuthEnablePretendAuth"))
          {
            if (gLogObjects && gNumLogObjects >= 60)
            {
              v37 = *(gLogObjects + 472);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }

              v37 = &_os_log_default;
              v38 = &_os_log_default;
            }

            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              qiAuth_util_verifyCertificateChain_cold_5();
            }

            v16 = 0;
          }

          else
          {
            v16 = 0xFFFFFFFFLL;
          }
        }

        else
        {
          v14 = 0;
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 4294967294;
  }

  if (gLogObjects && gNumLogObjects >= 60)
  {
    v34 = *(gLogObjects + 472);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v34 = &_os_log_default;
    v35 = &_os_log_default;
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 136316418;
    v40 = "qiAuth_util_verifyCertificateChain";
    v41 = 1024;
    v42 = 241;
    v43 = 1024;
    *v44 = v16;
    *&v44[4] = 1024;
    *&v44[6] = a2;
    v45 = 1024;
    v46 = a4;
    v47 = 1024;
    v48 = a6;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, slot %d, certChainRootHashLength %d, certChainLength %d", &v39, 0x2Au);
  }

  return v16;
}

uint64_t qiAuth_util_verifyChallengeSignature(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned __int16 a10)
{
  if (!a1)
  {
    v17 = a4;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v73 = 0;
    v21 = 4294967294;
    goto LABEL_97;
  }

  if (gLogObjects && gNumLogObjects >= 60)
  {
    v16 = *(gLogObjects + 472);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v16 = &_os_log_default;
    v22 = &_os_log_default;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v31 = *(a1 + 8);
    *buf = 136316930;
    v81 = "qiAuth_util_verifyChallengeSignature";
    v82 = 1024;
    v83 = 261;
    v84 = 1024;
    *v85 = v31;
    *&v85[4] = 1024;
    *&v85[6] = a2;
    v86 = 1024;
    v87 = a4;
    v88 = 1024;
    v89 = a6;
    v90 = 1024;
    v91 = a8;
    v92 = 1024;
    v93 = a10;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s:%d role %d, slot %d, certChainRootHashLength %d, certChainLength %d, challengeLen %d, signatureSize %d", buf, 0x36u);
  }

  v17 = a4;

  v18 = 0;
  v21 = 4294967294;
  if (a2 > 3)
  {
    v19 = 0;
    v20 = 0;
    v73 = 0;
    goto LABEL_97;
  }

  v71 = a7;
  v19 = 0;
  v20 = 0;
  v73 = 0;
  if (!*(a1 + 8))
  {
    v70 = *(a1 + 16);
    if (!v70)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v73 = 0;
      goto LABEL_97;
    }

    v23 = [NSData dataWithBytes:a5 length:a6];
    v24 = +[MFAACertificateManager sharedManager];
    v73 = v23;
    v25 = [v24 copyParsedCertificateChainInfo:v23];

    if (gLogObjects && gNumLogObjects >= 60)
    {
      v26 = *(gLogObjects + 472);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v26 = &_os_log_default;
      v27 = &_os_log_default;
    }

    v69 = a8;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v28 = [v25 description];
      v29 = [v28 UTF8String];
      if (v29)
      {
        v23 = [v25 description];
        v30 = [v23 UTF8String];
      }

      else
      {
        v30 = "<nil>";
      }

      *buf = 136315650;
      v81 = "qiAuth_util_verifyChallengeSignature";
      v82 = 1024;
      v83 = 277;
      v84 = 2080;
      *v85 = v30;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s:%d parsedCertChainInfo = %s", buf, 0x1Cu);
      if (v29)
      {
      }
    }

    v67 = a2;
    v68 = v17;

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v32 = [v25 allKeys];
    v33 = [v32 countByEnumeratingWithState:&v75 objects:v79 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v76;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v76 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v75 + 1) + 8 * i);
          v38 = [v25 objectForKey:v37];
          if (v38)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v39 = [NSString stringWithFormat:@"ParsedCertChainInfo-%@", v37];
              v40 = [v39 description];
              v41 = [v40 UTF8String];
              v23 = v25;
              v42 = [v38 bytes];
              v43 = [v38 length];
              v44 = v42;
              v25 = v23;
              qiAuth_util_logCertData(a1, v41, v44, v43, 1);
            }
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v75 objects:v79 count:16];
      }

      while (v34);
    }

    v45 = +[MFAACertificateManager sharedManager];
    v46 = [v45 copyEvaluatedCertificateChainInfo:v25 forSpecificType:128];
    v47 = *v70;
    *v70 = v46;

    if (gLogObjects && gNumLogObjects >= 60)
    {
      v48 = *(gLogObjects + 472);
      v49 = v68;
      a8 = v69;
    }

    else
    {
      v49 = v68;
      a8 = v69;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v48 = &_os_log_default;
      v50 = &_os_log_default;
    }

    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v51 = [*v70 description];
      v52 = [v51 UTF8String];
      if (v52)
      {
        v23 = [*v70 description];
        v53 = [v23 UTF8String];
      }

      else
      {
        v53 = "<nil>";
      }

      *buf = 136315650;
      v81 = "qiAuth_util_verifyChallengeSignature";
      v82 = 1024;
      v83 = 294;
      v84 = 2080;
      *v85 = v53;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "%s:%d certChainInfo = %s", buf, 0x1Cu);
      if (v52)
      {
      }
    }

    if (!*v70)
    {
      if (acc_userDefaults_BOOLForKey(@"MPPAuthEnablePretendAuth"))
      {
        if (gLogObjects && gNumLogObjects >= 60)
        {
          v54 = *(gLogObjects + 472);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v54 = &_os_log_default;
          v55 = &_os_log_default;
        }

        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          qiAuth_util_verifyChallengeSignature_cold_5();
        }

        objc_storeStrong(v70, v25);
      }

      else if (!acc_userDefaults_BOOLForKey(@"MPPAuthEnablePretendAuth"))
      {
        v17 = v49;
        v20 = v25;
        v18 = 0;
        v19 = 0;
        v21 = 0xFFFFFFFFLL;
        a2 = v67;
        goto LABEL_97;
      }
    }

    v19 = [NSData dataWithBytes:v71 length:a8];
    v18 = [NSData dataWithBytes:a9 length:a10];
    v56 = +[MFAACertificateManager sharedManager];
    v57 = [v56 verifyNonceSignature:*v70 nonce:v19 signature:v18];

    if (gLogObjects && gNumLogObjects >= 60)
    {
      v58 = *(gLogObjects + 472);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v58 = &_os_log_default;
      v59 = &_os_log_default;
    }

    a2 = v67;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v81 = "qiAuth_util_verifyChallengeSignature";
      v82 = 1024;
      v83 = 329;
      v84 = 1024;
      *v85 = v57 - 1;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "%s:%d verifyNonceSignature result %d", buf, 0x18u);
    }

    if (v57)
    {
      v17 = v49;
      v20 = v25;
    }

    else
    {
      if (!acc_userDefaults_BOOLForKey(@"MPPAuthEnablePretendAuth"))
      {
        v17 = v49;
        v20 = v25;
        v21 = 0xFFFFFFFFLL;
        goto LABEL_87;
      }

      if (gLogObjects && gNumLogObjects >= 60)
      {
        v17 = v49;
        v60 = *(gLogObjects + 472);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v17 = v49;
        v60 = &_os_log_default;
        v61 = &_os_log_default;
      }

      v20 = v25;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        qiAuth_util_verifyChallengeSignature_cold_8();
      }
    }

    v21 = 0;
LABEL_87:
    if (acc_userDefaults_BOOLForKey(@"ForceAuthFail"))
    {
      if (gLogObjects && gNumLogObjects >= 60)
      {
        v62 = *(gLogObjects + 472);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v62 = &_os_log_default;
        v63 = &_os_log_default;
      }

      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        qiAuth_util_verifyChallengeSignature_cold_10();
      }

      v21 = 0xFFFFFFFFLL;
    }
  }

LABEL_97:
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v64 = *(gLogObjects + 472);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v64 = &_os_log_default;
    v65 = &_os_log_default;
  }

  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316930;
    v81 = "qiAuth_util_verifyChallengeSignature";
    v82 = 1024;
    v83 = 345;
    v84 = 1024;
    *v85 = v21;
    *&v85[4] = 1024;
    *&v85[6] = a2;
    v86 = 1024;
    v87 = v17;
    v88 = 1024;
    v89 = a6;
    v90 = 1024;
    v91 = a8;
    v92 = 1024;
    v93 = a10;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, slot %d, certChainRootHashLength %d, certChainLength %d, challengeLen %d, signatureSize %d", buf, 0x36u);
  }

  return v21;
}

void qiAuth_util_logCertData(const void **a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        EndpointWithUUID = acc_manager_getEndpointWithUUID(*a1);
        if (EndpointWithUUID)
        {
          v10 = *(EndpointWithUUID + 7);
          if (v10)
          {
            v11 = *v10;
            v12 = [NSString stringWithCString:a2 encoding:1];
            v13 = [NSData dataWithBytes:a3 length:a4];

            acc_platform_packetLogging_logData(v11, v12, @"QiAuth", v13, a5);
          }
        }
      }
    }
  }
}

void qiAuth_util_notifySlotAuthState(uint64_t a1, unsigned int a2, int a3)
{
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v6 = *(gLogObjects + 472);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v6 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 8);
      v22 = 136316162;
      v23 = "qiAuth_util_notifySlotAuthState";
      v24 = 1024;
      v25 = 356;
      v26 = 1024;
      *v27 = v21;
      *&v27[4] = 1024;
      *&v27[6] = a2;
      *v28 = 1024;
      *&v28[2] = a3;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s:%d role %d, slot %d, authState %d", &v22, 0x24u);
    }

    if (a2 <= 3 && !*(a1 + 8))
    {
      EndpointWithUUID = acc_manager_getEndpointWithUUID(*a1);
      if (EndpointWithUUID)
      {
        v9 = EndpointWithUUID[7];
        if (v9)
        {
          if ((a3 - 1) > 2)
          {
            v10 = 0;
          }

          else
          {
            v10 = dword_1001C4038[a3 - 1];
          }

          if (gLogObjects && gNumLogObjects >= 60)
          {
            v11 = *(gLogObjects + 472);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v11 = &_os_log_default;
            v12 = &_os_log_default;
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v13 = qiAuth_protocol_authStateString(a3);
            v14 = *(v9 + 16);
            v22 = 136316162;
            v23 = "qiAuth_util_notifySlotAuthState";
            v24 = 1024;
            v25 = 369;
            v26 = 2080;
            *v27 = v13;
            *&v27[8] = 1024;
            *v28 = a2;
            *&v28[4] = 2112;
            v29 = v14;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s:%d AUTH[%s] for slot %d, endpoint %@", &v22, 0x2Cu);
          }

          qiAuth_endpoint_setAuthState(v9, v10, v15, v16, v17, v18, v19, v20);
        }
      }
    }
  }
}

BOOL qiAuth_util_certificateExistsCache(uint64_t a1, unsigned int a2, unsigned __int8 *a3, unsigned int a4)
{
  if (!a1)
  {
    return 0;
  }

  if (gLogObjects && gNumLogObjects >= 60)
  {
    v8 = *(gLogObjects + 472);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v10 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 8);
    v17 = 136316162;
    v18 = "qiAuth_util_certificateExistsCache";
    v19 = 1024;
    v20 = 384;
    v21 = 1024;
    v22 = v16;
    v23 = 1024;
    v24 = a2;
    v25 = 1024;
    v26 = a4;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s:%d role %d, slot %d, certHashLen %d", &v17, 0x24u);
  }

  v9 = 0;
  if (a4 && a3 && a2 <= 3 && !*(a1 + 8))
  {
    if (__getCerCacheObj_onceToken_0 != -1)
    {
      qiAuth_util_certificateExistsCache_cold_2();
    }

    v11 = __copyDataBytesHexString(a3, a4);
    v12 = v11;
    v9 = 0;
    if (a4 == 1 && v11)
    {
      v13 = MFAACreateMatchingHashForCertChainFromHashLSB();
      v9 = v13 != 0;
      CFRelease(v12);
      v12 = v13;
    }

    if (v12)
    {
      v14 = MFAACreateCertChainDataFromHash();
      if (v14)
      {
        CFRelease(v14);
        v9 = 1;
      }

      CFRelease(v12);
    }
  }

  return v9;
}

__CFString *__copyDataBytesHexString(unsigned __int8 *a1, unsigned int a2)
{
  v2 = a2;
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * a2);
  if (a1 && v2)
  {
    do
    {
      v5 = *a1++;
      CFStringAppendFormat(Mutable, 0, @"%02x", v5);
      --v2;
    }

    while (v2);
  }

  return Mutable;
}

uint64_t qiAuth_util_copyCertificateFromCache(uint64_t a1, unsigned int a2, unsigned __int8 *a3, unsigned int a4, UInt8 *a5, unsigned int a6, UInt8 *a7, unsigned int a8, uint64_t a9)
{
  if (!a1)
  {
    return 4294967294;
  }

  v10 = 4294967294;
  if (!a3 || a2 > 3 || *(a1 + 8) || a4 != 32 && a4 != 1)
  {
    return v10;
  }

  v18 = a6 >= 0x20 || a5 == 0;
  if (!v18 || !a7 || !a8 || !a9)
  {
    return v10;
  }

  if (__getCerCacheObj_onceToken_0 != -1)
  {
    qiAuth_util_copyCertificateFromCache_cold_1();
  }

  v19 = __copyDataBytesHexString(a3, a4);
  v20 = v19;
  if (a4 == 1 && v19)
  {
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v21 = *(gLogObjects + 472);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v21 = &_os_log_default;
      v22 = &_os_log_default;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 8);
      *buf = 136316162;
      v35 = "qiAuth_util_copyCertificateFromCache";
      v36 = 1024;
      v37 = 448;
      v38 = 1024;
      v39 = v23;
      v40 = 1024;
      v41 = a2;
      v42 = 2112;
      v43 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s:%d role %d, slot %d, certHashLSB %@", buf, 0x28u);
    }

    v24 = MFAACreateMatchingHashForCertChainFromHashLSB();
    CFRelease(v20);
    v20 = v24;
  }

  if (gLogObjects && gNumLogObjects >= 60)
  {
    v25 = *(gLogObjects + 472);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v25 = &_os_log_default;
    v26 = &_os_log_default;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v27 = *(a1 + 8);
    *buf = 136316162;
    v35 = "qiAuth_util_copyCertificateFromCache";
    v36 = 1024;
    v37 = 458;
    v38 = 1024;
    v39 = v27;
    v40 = 1024;
    v41 = a2;
    v42 = 2112;
    v43 = v20;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s:%d role %d, slot %d, certHash %@", buf, 0x28u);
  }

  if (!v20)
  {
    return 4294967294;
  }

  v28 = MFAACreateCertChainDataFromHash();
  v29 = v28;
  if (v28 && CFDataGetLength(v28) <= a8)
  {
    v44.length = CFDataGetLength(v29);
    v44.location = 0;
    CFDataGetBytes(v29, v44, a7);
    v10 = 0;
    v30 = 1;
  }

  else
  {
    v30 = 0;
    v10 = 0xFFFFFFFFLL;
  }

  v32 = __copyHexStringToData(v20);
  v33 = v32;
  if (a5 && v30 && v32)
  {
    if (CFDataGetLength(v32) <= a6)
    {
      v45.length = CFDataGetLength(v33);
      v45.location = 0;
      CFDataGetBytes(v33, v45, a5);
    }

    goto LABEL_49;
  }

  if (v32)
  {
LABEL_49:
    CFRelease(v33);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  CFRelease(v20);
  return v10;
}

__CFData *__copyHexStringToData(const __CFString *a1)
{
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
  Length = CFStringGetLength(a1);
  v4 = __chkstk_darwin(Length);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v13[-v6];
  v8 = v4 + 1;
  if (v4 == -1)
  {
    CFStringGetCString(a1, &v13[-v6], v8, 0x600u);
  }

  else
  {
    memset(&v13[-v6], 170, v8);
    CFStringGetCString(a1, v7, v8, 0x600u);
    if (Length >= 1)
    {
      v9 = 0;
      while (1)
      {
        v10 = v7[v9];
        v11 = v7[v9 + 1];
        bytes = 0;
        if ((__hexDigitsToByte(v10, v11, &bytes) & 1) == 0)
        {
          break;
        }

        CFDataAppendBytes(Mutable, &bytes, 1);
        v9 += 2;
        if (v9 >= Length)
        {
          return Mutable;
        }
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return 0;
    }
  }

  return Mutable;
}

uint64_t qiAuth_util_saveCertificateInCache(uint64_t a1, unsigned int a2, unsigned __int8 *a3, unsigned int a4, const UInt8 *a5, unsigned int a6)
{
  if (!a1)
  {
    return 4294967294;
  }

  v7 = 4294967294;
  if (a6 && a5 && a4 && a3 && a2 <= 3 && !*(a1 + 8))
  {
    if (__getCerCacheObj_onceToken_0 != -1)
    {
      qiAuth_util_copyCertificateFromCache_cold_1();
    }

    v13 = __copyDataBytesHexString(a3, a4);
    v14 = CFDataCreate(kCFAllocatorDefault, a5, a6);
    v15 = MFAAAddCertChainDataEntryToCacheForHash();
    if (gLogObjects && gNumLogObjects >= 60)
    {
      v16 = *(gLogObjects + 472);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v16 = &_os_log_default;
      v17 = &_os_log_default;
    }

    v7 = (v15 - 1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 8);
      v20 = 136316674;
      v21 = "qiAuth_util_saveCertificateInCache";
      v22 = 1024;
      v23 = 520;
      v24 = 1024;
      v25 = v7;
      v26 = 1024;
      v27 = v18;
      v28 = 1024;
      v29 = a2;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s:%d result %d, role %d, slot %d, certHash %@, certDataObj %@", &v20, 0x38u);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  return v7;
}

uint64_t qiAuth_util_policy_preferredSlot()
{
  if (gLogObjects && gNumLogObjects >= 60)
  {
    v0 = *(gLogObjects + 472);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v0 = &_os_log_default;
    v1 = &_os_log_default;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    qiAuth_util_policy_preferredSlot_cold_2();
  }

  return 0;
}

id qiAuth_util_policy_challengeFirst(uint64_t a1)
{
  if (a1 && !*(a1 + 8))
  {
    v1 = acc_userDefaults_BOOLForKey(@"MPPAuthChallengeFirst");
  }

  else
  {
    v1 = 0;
  }

  if (gLogObjects && gNumLogObjects >= 60)
  {
    v2 = *(gLogObjects + 472);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    qiAuth_util_policy_challengeFirst_cold_2(v1, v2, v4, v5, v6, v7, v8, v9);
  }

  return v1;
}

const void **qiAuth_util_sendData(const void **result, const UInt8 *a2, CFIndex a3)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        result = acc_manager_getEndpointWithUUID(*result);
        if (result)
        {
          result = result[7];
          if (result)
          {

            return qiAuth_endpoint_sendOutgoingData(result, a2, a3);
          }
        }
      }
    }
  }

  return result;
}

uint64_t qiAuth_util_callbackOnTimer(const void **a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = 1000000 * a2;
  v6 = 0xFFFFFFFFLL;
  v7 = &audioProductCerts_endpoint_publish_onceToken;
  v8 = &audioProductCerts_endpoint_publish_onceToken;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_49;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(*a1);
  if (!EndpointWithUUID || (v12 = EndpointWithUUID[7]) == 0)
  {
LABEL_48:
    v6 = 0xFFFFFFFFLL;
    goto LABEL_49;
  }

  v38 = a4;
  v40 = v5;
  v6 = 0;
  v13 = (v12 + 2048);
  v14 = v12 + 2112;
  v39 = v12 + 2048;
  do
  {
    v15 = v7;
    v16 = v7[491];
    v17 = v8;
    v18 = *(v8 + 984);
    if (v16 && v18 >= 60)
    {
      v19 = *(v16 + 472);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v42 = v16;
        v43 = 1024;
        v44 = v18;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v20 = &_os_log_default;
      v19 = &_os_log_default;
    }

    v8 = v17;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = *v13;
      v22 = *(v14 + v6);
      *buf = 136316162;
      v42 = "qiAuth_util_callbackOnTimer";
      v43 = 1024;
      v44 = 839;
      v45 = 1024;
      v46 = v6;
      v47 = 2048;
      *v48 = v21;
      *&v48[8] = 1024;
      *&v48[10] = v22;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s:%d [%d] timer %p, running %d", buf, 0x28u);
    }

    v7 = v15;
    if (!*v13)
    {
      v23 = v15[491];
      if (v23 && *(v8 + 984) >= 60)
      {
        v24 = *(v23 + 472);
        v5 = v40;
      }

      else
      {
        v5 = v40;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v24 = &_os_log_default;
        v31 = &_os_log_default;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        qiAuth_util_callbackOnTimer_cold_5();
      }

      goto LABEL_47;
    }

    if ((*(v14 + v6) & 1) == 0)
    {
      v13[4] = a3;
      v13[9] = v38;
      *(v14 + v6) = 1;
      goto LABEL_23;
    }

    ++v6;
    ++v13;
  }

  while (v6 != 4);
  v6 = 0xFFFFFFFFLL;
LABEL_23:
  v25 = v15[491];
  v5 = v40;
  if (v25 && *(v8 + 984) >= 60)
  {
    v26 = *(v25 + 472);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v26 = &_os_log_default;
    v27 = &_os_log_default;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v37 = *(v39 + 8 * v6);
    *buf = 136316418;
    v42 = "qiAuth_util_callbackOnTimer";
    v43 = 1024;
    v44 = 855;
    v45 = 1024;
    v46 = v6;
    v47 = 2048;
    *v48 = v37;
    *&v48[8] = 1024;
    *&v48[10] = a2;
    v49 = 2048;
    v50 = v40;
    _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%s:%d timerID %d, timer %p, timeoutMs %u, timeoutNs %lld", buf, 0x32u);
  }

  if ((v6 & 0x80000000) != 0)
  {
    v30 = v7[491];
    if (v30 && *(v8 + 984) >= 60)
    {
      v24 = *(v30 + 472);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v24 = &_os_log_default;
      v32 = &_os_log_default;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      qiAuth_util_callbackOnTimer_cold_3();
    }

LABEL_47:

    goto LABEL_48;
  }

  v28 = *(v39 + 8 * v6);
  if (v28)
  {
    v29 = dispatch_time(0, v40);
    dispatch_source_set_timer(v28, v29, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

LABEL_49:
  v33 = v7[491];
  if (v33 && *(v8 + 984) >= 60)
  {
    v34 = *(v33 + 472);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v34 = &_os_log_default;
    v35 = &_os_log_default;
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v42 = "qiAuth_util_callbackOnTimer";
    v43 = 1024;
    v44 = 866;
    v45 = 1024;
    v46 = v6;
    v47 = 1024;
    *v48 = a2;
    *&v48[4] = 2048;
    *&v48[6] = v5;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s:%d timerID %d, timeoutMs %u, timeoutNs %lld", buf, 0x28u);
  }

  return v6;
}

void qiAuth_util_cancelTimer(const void **a1, unsigned int a2)
{
  if (a1)
  {
    if ((a2 & 0x80000000) == 0)
    {
      EndpointWithUUID = acc_manager_getEndpointWithUUID(*a1);
      if (EndpointWithUUID)
      {
        v4 = EndpointWithUUID[7];
        if (v4)
        {
          if (gLogObjects)
          {
            v5 = gNumLogObjects <= 59;
          }

          else
          {
            v5 = 1;
          }

          v6 = !v5;
          if (*(v4 + 2112 + a2))
          {
            if (v6)
            {
              v7 = *(gLogObjects + 472);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }

              v7 = &_os_log_default;
              v9 = &_os_log_default;
            }

            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v13 = 136315650;
              v14 = "qiAuth_util_cancelTimer";
              v15 = 1024;
              v16 = 883;
              v17 = 1024;
              v18 = a2;
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s:%d Cancel timerID %d", &v13, 0x18u);
            }

            *(v4 + 2112 + a2) = 0;
            v10 = (v4 + 8 * a2);
            v10[260] = 0;
            v10[265] = 0;
            v11 = v10[256];
            if (v11)
            {
              dispatch_source_set_timer(v11, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
            }
          }

          else
          {
            if (v6)
            {
              v8 = *(gLogObjects + 472);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }

              v8 = &_os_log_default;
              v12 = &_os_log_default;
            }

            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              qiAuth_util_cancelTimer_cold_2();
            }
          }
        }
      }
    }
  }
}

uint64_t qiAuth_util_hash_SHA256(uint64_t a1, void *data, CC_LONG len, unsigned __int8 *md, unsigned int a5, _WORD *a6)
{
  result = 4294967294;
  if (a1 && data && len && md && a5 >= 0x20)
  {
    if (a6)
    {
      CC_SHA256(data, len, md);
      result = 0;
      *a6 = 32;
    }
  }

  return result;
}

uint64_t __hexDigitsToByte(int a1, int a2, _BYTE *a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a1 - 48;
  if ((a1 - 48) >= 0xA && ((a1 & 0xDF) - 65) > 5u)
  {
    return 0;
  }

  v4 = a2 - 48;
  if ((a2 - 48) >= 0xA && ((a2 & 0xDF) - 65) > 5u)
  {
    return 0;
  }

  if ((a1 - 97) >= 6)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 - 87;
  }

  if ((a1 - 65) <= 5)
  {
    v7 = a1 - 55;
  }

  else
  {
    v7 = v6;
  }

  if ((a1 - 48) >= 0xAu)
  {
    v3 = v7;
  }

  if ((a2 - 97) >= 6)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2 - 87;
  }

  if ((a2 - 65) <= 5)
  {
    v9 = a2 - 55;
  }

  else
  {
    v9 = v8;
  }

  if ((a2 - 48) >= 0xAu)
  {
    v4 = v9;
  }

  *a3 = v4 | (16 * v3);
  return 1;
}

void OUTLINED_FUNCTION_7_28(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x18u);
}

void OUTLINED_FUNCTION_8_27(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x1Eu);
}

void sub_1000D96D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

uint64_t platform_CarPlay_isWirelessCarPlayAllowedForCertSerial(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = +[ACCCarPlay sharedManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __platform_CarPlay_isWirelessCarPlayAllowedForCertSerial_block_invoke;
  v10[3] = &unk_10022A2E0;
  v12 = &v13;
  v4 = v2;
  v11 = v4;
  [v3 isWirelessCarPlayAllowedForCertSerial:a1 withReply:v10];

  v5 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v4, v5))
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v6 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v6 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      platform_CarPlay_isWirelessCarPlayAllowedForCertSerial_cold_2();
    }
  }

  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

void sub_1000DB794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t platform_CarPlay_isCarPlayPairedWithCertSerial(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = +[ACCCarPlay sharedManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __platform_CarPlay_isCarPlayPairedWithCertSerial_block_invoke;
  v10[3] = &unk_10022A2E0;
  v12 = &v13;
  v4 = v2;
  v11 = v4;
  [v3 isCarPlayPairedWithCertSerial:a1 withReply:v10];

  v5 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v4, v5))
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v6 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v6 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      platform_CarPlay_isCarPlayPairedWithCertSerial_cold_2();
    }
  }

  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

void sub_1000DB954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t platform_CarPlay_carPlayAppLinksStateForCertSerial(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = +[ACCCarPlay sharedManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __platform_CarPlay_carPlayAppLinksStateForCertSerial_block_invoke;
  v10[3] = &unk_10022A308;
  v12 = &v13;
  v4 = v2;
  v11 = v4;
  [v3 carPlayAppLinksStateForCertSerial:a1 withReply:v10];

  v5 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v4, v5))
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v6 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v6 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      platform_CarPlay_carPlayAppLinksStateForCertSerial_cold_2();
    }
  }

  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v8;
}

void sub_1000DBB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void platform_CarPlay_sendConnectionEvent(int a1, int a2)
{
  v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 7;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [v4 timeIntervalSinceReferenceDate];
    v10 = 134218242;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[#CarPlay] CarPlay Connection Event: sending with time: %f, %@", &v10, 0x16u);
  }

  v9 = +[ACCCarPlay sharedManager];
  [v9 carPlaySendConnectionTimeEvent:a1 connectionType:a2 eventTime:v4];
}

void platform_CarPlay_availability(const void *a1, const void *a2)
{
  if (gLogObjects && gNumLogObjects >= 52)
  {
    v4 = *(gLogObjects + 408);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = a1;
    v10 = 2112;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#CarPlay] platform_CarPlay_availability: %@, parameters %@", buf, 0x16u);
  }

  CFRetain(a1);
  CFRetain(a2);
  v6 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __platform_CarPlay_availability_block_invoke;
  v7[3] = &__block_descriptor_48_e5_v8__0l;
  v7[4] = a1;
  v7[5] = a2;
  dispatch_async(v6, v7);
}

void platform_CarPlay_startSession(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (gLogObjects)
  {
    v20 = gNumLogObjects < 7;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v22 = &_os_log_default;
    v21 = &_os_log_default;
  }

  else
  {
    v22 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138415618;
    v32 = a2;
    v33 = 2112;
    v34 = a3;
    v35 = 2112;
    v36 = a4;
    v37 = 2112;
    v38 = a5;
    v39 = 2112;
    v40 = a6;
    v41 = 2112;
    v42 = a7;
    v43 = 2112;
    v44 = a8;
    v45 = 2112;
    v46 = a9;
    v47 = 2112;
    v48 = a10;
    v49 = 2112;
    v50 = a11;
    v51 = 2112;
    v52 = a12;
    v53 = 2112;
    v54 = a13;
    v55 = 2112;
    v56 = a14;
    v57 = 2112;
    v58 = a15;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[#CarPlay] platform_CarPlay_startSession: usbIP %@, wifiIP %@, ssid %@, pass %@, securityType %@, channel %@, port %@, deviceID %@, pubKey %@, srcVer %@, sdkVer %@, assetID %@, assetVer %@, mutualAuth %@", buf, 0x8Eu);
  }

  v23 = +[NSMutableDictionary dictionary];
  v24 = v23;
  if (a2)
  {
    [v23 setObject:a2 forKey:@"wiredIPAddresses"];
  }

  if (a3)
  {
    [v24 setObject:a3 forKey:@"wirelessIPAddresses"];
  }

  if (a4)
  {
    [v24 setObject:a4 forKey:@"SSID_STR"];
  }

  if (a5)
  {
    [v24 setObject:a5 forKey:@"password"];
  }

  if (a6)
  {
    [v24 setObject:a6 forKey:@"securityType"];
  }

  if (a7)
  {
    [v24 setObject:a7 forKey:@"CHANNEL"];
  }

  if (a8)
  {
    [v24 setObject:a8 forKey:@"port"];
  }

  if (a9)
  {
    [v24 setObject:a9 forKey:@"deviceID"];
  }

  if (a10)
  {
    [v24 setObject:a10 forKey:@"publicKey"];
  }

  if (a11)
  {
    [v24 setObject:a11 forKey:@"sourceVersion"];
  }

  if (a12)
  {
    [v24 setObject:a12 forKey:@"SDKVersion"];
  }

  if (a13)
  {
    [v24 setObject:a13 forKey:@"clusterAssetIdentifer"];
  }

  if (a14)
  {
    [v24 setObject:a14 forKey:@"clusterAssetVersion"];
  }

  if (a15)
  {
    [v24 setObject:a15 forKey:@"supportsMutualAuth"];
  }

  if (gLogObjects && gNumLogObjects >= 7)
  {
    v25 = *(gLogObjects + 48);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v25 = &_os_log_default;
    v26 = &_os_log_default;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    platform_CarPlay_startSession_cold_3(v24, v25);
  }

  v27 = +[ACCCarPlay sharedManager];
  [v27 carPlayStartSessionForConnectionID:a1 properties:v24];
}

void platform_CarPlay_availableDigitalCarKeys(uint64_t a1, uint64_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 7;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[#CarPlay] platform_CarPlay_availableDigitalCarKeys key IDs: %@", buf, 0xCu);
  }

  v7 = +[ACCCarPlay sharedManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __platform_CarPlay_availableDigitalCarKeys_block_invoke;
  v8[3] = &__block_descriptor_40_e17_v16__0__NSArray_8l;
  v8[4] = a1;
  [v7 filterMatchingDigitalCarKeys:a2 forAccessory:a1 withCompletionHandler:v8];
}

void platform_CarPlay_matchedDigitalCarKeys(const void *a1, const void *a2)
{
  if (gLogObjects && gNumLogObjects >= 52)
  {
    v4 = *(gLogObjects + 408);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = a1;
    v10 = 2112;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#CarPlay] platform_CarPlay_matchedDigitalCarKeys: %@, key IDs: %@", buf, 0x16u);
  }

  CFRetain(a1);
  CFRetain(a2);
  v6 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __platform_CarPlay_matchedDigitalCarKeys_block_invoke;
  v7[3] = &__block_descriptor_48_e5_v8__0l;
  v7[4] = a1;
  v7[5] = a2;
  dispatch_async(v6, v7);
}

void OUTLINED_FUNCTION_3_34(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_21(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  *(a4 + 130) = a1;
  *(a4 + 140) = a2;
  *(a4 + 150) = a3;
}

CFStringRef OUTLINED_FUNCTION_1_38()
{
  v3 = *v1;

  return CFStringCreateCopy(v3, v0);
}

void platform_system_resetLightningBusForEndpointWithUUID(void *a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 7;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#Lightning] Resetting lightning bus for endpoint %@...", &v9, 0xCu);
  }

  v5 = _getPluginInstance();
  if (v5)
  {
    if (objc_opt_respondsToSelector())
    {
      [v5 resetLightningBusForEndpointWithUUID:a1];
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v6 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v6 = &_os_log_default;
        v7 = &_os_log_default;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = NSStringFromSelector("resetLightningBusForEndpointWithUUID:");
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[#Lightning] Platform plugin does not implement selector %@!", &v9, 0xCu);
      }
    }
  }
}

id _getPluginInstance()
{
  v0 = +[ACCPlatformPluginManager sharedManager];
  v1 = [v0 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformLightningPluginProtocol fallbackToTransportPlugins:1];

  if (!v1)
  {
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 7;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v3 = &_os_log_default;
    }

    else
    {
      v4 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      _getPluginInstance_cold_2(v4);
    }
  }

  return v1;
}

void platform_digitalAudio_accessoryAttached(uint64_t a1, uint64_t a2)
{
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
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[#DigitalAudio] endpointUUID: %@, supportedSampleRatesMask: %d", &v9, 0x12u);
  }

  v7 = +[ACCPlatformDigitalAudioManager getManager];
  [v7 setDigitalAudioEndpointUUID:a1 withSupportedSampleRates:a2];

  v8 = +[ACCAudioServer sharedServer];
  [v8 incrementUserCount];
}

void platform_digitalAudio_accessoryDetached(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 8;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[#DigitalAudio] endpointUUID: %@", &v8, 0xCu);
  }

  v5 = +[ACCAudioServer sharedServer];
  [v5 decrementUserCount];

  v6 = +[ACCPlatformDigitalAudioManager getManager];
  [v6 stopAudioPropertyNotifications];

  v7 = +[ACCPlatformDigitalAudioManager getManager];
  [v7 setDigitalAudioEndpointUUID:0 withSupportedSampleRates:0];
}

void platform_digitalAudio_eaAccessoryAttached()
{
  v0 = +[ACCAudioServer sharedServer];
  [v0 incrementUserCount];
}

void platform_digitalAudio_eaAccessoryDetached()
{
  v0 = +[ACCAudioServer sharedServer];
  [v0 decrementUserCount];
}

uint64_t platform_digitalAudio_start()
{
  v0 = +[ACCPlatformDigitalAudioManager getManager];
  v1 = v0;
  if (v0 && ([v0 bDigAudIsActive] & 1) == 0)
  {
    [v1 startAudioPropertyNotifications];
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t platform_digitalAudio_stop()
{
  v0 = +[ACCPlatformDigitalAudioManager getManager];
  v1 = v0;
  if (v0 && [v0 bDigAudIsActive])
  {
    [v1 stopAudioPropertyNotifications];
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id platform_digitalAudio_getSupportedSampleRate(uint64_t a1)
{
  v2 = +[ACCPlatformDigitalAudioManager getManager];
  v3 = v2;
  if (v2 && [v2 bDigAudIsActive])
  {
    v4 = [v3 convertToSupportedSampleRate:a1];
  }

  else
  {
    v4 = 0;
  }

  if (gLogObjects)
  {
    v5 = gNumLogObjects < 8;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109376;
    v9[1] = a1;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[#DigitalAudio] inputRate: %d, supportedRate: %d", v9, 0xEu);
  }

  return v4;
}

id platform_digitalAudio_copySupportedSampleRates()
{
  v0 = +[ACCPlatformDigitalAudioManager getManager];
  if ([v0 bDigAudIsActive])
  {
    v1 = [v0 supportedSampleRatesList];
  }

  else
  {
    v1 = 0;
  }

  if (gLogObjects)
  {
    v2 = gNumLogObjects < 8;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[#DigitalAudio] pSuppSampleRates: %@", &v7, 0xCu);
  }

  v5 = [v1 copy];
  return v5;
}

id platform_digitalAudio_copyDeviceAudioStates()
{
  v14[0] = @"IAPAudioTransportNameKey";
  v0 = [NSNumber numberWithUnsignedInt:1];
  v15[0] = v0;
  v14[1] = @"IAPAudioTransportLineoutStateKey";
  v1 = [NSNumber numberWithUnsignedInt:4];
  v15[1] = v1;
  v14[2] = @"IAPAudioTransportLineinStateKey";
  v2 = [NSNumber numberWithUnsignedInt:4];
  v15[2] = v2;
  v14[3] = @"IAPAudioTransportUSBAudioStateKey";
  v3 = +[ACCPlatformDigitalAudioManager getManager];
  if ([v3 bDigAudIsActive])
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  v5 = [NSNumber numberWithUnsignedInt:v4];
  v15[3] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];

  v7 = objc_alloc_init(NSMutableArray);
  [v7 addObject:v6];
  if (gLogObjects && gNumLogObjects >= 8)
  {
    v8 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[#DigitalAudio] audioDeviceStates: %@", &v12, 0xCu);
  }

  v10 = [v7 copy];
  return v10;
}

uint64_t platform_digitalAudio_setSampleRate(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 8;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[#DigitalAudio] newSampleRate: %d", v9, 8u);
  }

  v5 = +[ACCPlatformDigitalAudioManager getManager];
  v6 = v5;
  if (v5 && [v5 bDigAudIsActive])
  {
    [v6 updateSampleRate:a1];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1000DF378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void platform_oobBtPairing2_startOobBtPairingHandler(void *a1)
{
  v1 = a1;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v2 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "oobBtPairing2 startOOBBTPairing: %@", &v12, 0xCu);
  }

  v4 = +[OOBBTPairing2Accessory accessoryListLock];
  [v4 lock];
  v5 = [OOBBTPairing2Accessory accessoryForUID:v1];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 waitForBeginPairingTimer];
    dispatch_source_set_timer(v7, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

    v8 = [v6 getPendingComponent];
    v9 = [v6 getDeviceMacAddress];
    if (v9)
    {
      _sendStartOOBBTPairing(v6, v8, v9);
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 51)
      {
        v10 = *(gLogObjects + 400);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v10 = &_os_log_default;
        v11 = &_os_log_default;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        platform_oobBtPairing2_startOobBtPairingHandler_cold_3(v1, v8);
      }

      _sendStartOOBBTPairing(v6, v8, 0);
      _sendStopOOBBTPairing(v6, v8, 4);
    }
  }

  [v4 unlock];
}

void sub_1000DFF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _sendStopOOBBTPairing(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5 && v6)
  {
    if (gLogObjects && gNumLogObjects >= 51)
    {
      v8 = *(gLogObjects + 400);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 accessoryUID];
      v11 = [v7 componentUID];
      v18 = 138413058;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v22 = 1024;
      v23 = [v7 status];
      v24 = 1024;
      v25 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "oobBtPairing2: %@, _sendStopOOBBTPairing, component %@ (status %d), status %d", &v18, 0x22u);
    }

    v12 = malloc_type_malloc(0x18uLL, 0x1062040D3637215uLL);
    if (v12)
    {
      v13 = v12;
      *v12 = 1;
      *(v13 + 8) = [v7 componentUID];
      *(v13 + 16) = a3;
      v14 = [v5 accessoryUID];
      v15 = accFeatureHandlers_invokeHandler(v14, 55, v13);

      if ((v15 & 1) == 0)
      {
        platform_oobBtPairing2_deleteParams(v13);
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 51)
      {
        v16 = *(gLogObjects + 400);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v16 = &_os_log_default;
        v17 = &_os_log_default;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        _sendStopOOBBTPairing_cold_3();
      }
    }
  }
}

void platform_oobBtPairing2_accessoryAttached(uint64_t a1, uint64_t a2, void *a3)
{
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v6 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = platform_oobBtPairing_accessoryDictionaryForLogging(a2);
    *buf = 138412546;
    v40 = a1;
    v41 = 2112;
    v42 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "oobBtPairing2 accessoryAttached: %@, accInfoDict=%@", buf, 0x16u);
  }

  v9 = +[OOBBTPairing2Accessory accessoryListLock];
  [v9 lock];
  v10 = [OOBBTPairing2Accessory accessoryForUID:a1];
  if (!v10)
  {
    v10 = [[OOBBTPairing2Accessory alloc] initWithUID:a1 accInfo:a2];
    [OOBBTPairing2Accessory addAccessory:v10];
  }

  v11 = a3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [[OOBBTPairing2Component alloc] initWithComponentInfo:*(*(&v34 + 1) + 8 * i)];
        [(OOBBTPairing2Accessory *)v10 addComponent:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v13);
  }

  [v9 unlock];
  v17 = +[ACCOOBBTPairingServer sharedServer];
  [v17 incrementUserCount];
  [v17 accessoryOOBBTPairingAttached:a1 accInfoDict:a2];
  v18 = [(OOBBTPairing2Accessory *)v10 checkComponentsAlreadyPaired];
  if ([(OOBBTPairing2Accessory *)v10 carPlaySupported])
  {
    if (gLogObjects && gNumLogObjects >= 51)
    {
      v19 = *(gLogObjects + 400);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v19 = &_os_log_default;
      v23 = &_os_log_default;
    }

    p_info = (&OBJC_METACLASS___OOBBTPairing2Component + 32);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      platform_oobBtPairing2_accessoryAttached_cold_6();
    }
  }

  else
  {
    if (gLogObjects)
    {
      v20 = gNumLogObjects <= 50;
    }

    else
    {
      v20 = 1;
    }

    v21 = !v20;
    if (v18 < 1)
    {
      if (v21)
      {
        v19 = *(gLogObjects + 400);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v19 = &_os_log_default;
        v27 = &_os_log_default;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        platform_oobBtPairing2_accessoryAttached_cold_3();
      }
    }

    else
    {
      if (v21)
      {
        v22 = *(gLogObjects + 400);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v22 = &_os_log_default;
        v25 = &_os_log_default;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = a1;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "oobBtPairing2 accessoryAttached: %@, not CarPlay so present OOB Pairing user notification", buf, 0xCu);
      }

      v19 = +[ACCUserNotificationManager sharedManager];
      v26 = [(OOBBTPairing2Accessory *)v10 userNotification];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = __platform_oobBtPairing2_accessoryAttached_block_invoke;
      v33[3] = &__block_descriptor_40_e8_v12__0i8l;
      v33[4] = a1;
      [v19 presentNotification:v26 completionHandler:v33];
    }

    p_info = &OBJC_METACLASS___OOBBTPairing2Component.info;
  }

  v28 = [p_info + 1 processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __platform_oobBtPairing2_accessoryAttached_block_invoke_215;
  block[3] = &unk_100228CA8;
  v31 = v10;
  v32 = a1;
  v29 = v10;
  dispatch_async(v28, block);
}

void __platform_oobBtPairing2_accessoryAttached_block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v4 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v3;
    v21 = 1024;
    v22 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "oobBtPairing2: %@, _handleUserResponse response = %d", buf, 0x12u);
  }

  if (a2)
  {
    v6 = [OOBBTPairing2Accessory accessoryForUID:v3];
    v7 = [v6 componentList];
    v8 = v7;
    if (v6 && v7)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [v7 allValues];
      v10 = [v9 countByEnumeratingWithState:&v15 objects:buf count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v15 + 1) + 8 * i);
            _sendStartOOBBTPairing(v6, v14, 0);
            _sendStopOOBBTPairing(v6, v14, 4);
          }

          v11 = [v9 countByEnumeratingWithState:&v15 objects:buf count:16];
        }

        while (v11);
      }
    }
  }

  else
  {
    platform_oobBtPairing2_startOobBtPairingHandler(v3);
  }
}

void __platform_oobBtPairing2_accessoryAttached_block_invoke_215(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v1 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v1 = &_os_log_default;
    v2 = &_os_log_default;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138412290;
    v32 = v3;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "oobBtPairing2 accessoryAttached: %@, Check for already paired components", buf, 0xCu);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [*(a1 + 32) componentList];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v27;
    *&v7 = 134218240;
    v24 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        if ([v11 status] == 3)
        {
          v12 = [*(a1 + 32) accessoryUID];
          v13 = [v11 componentUID];
          v14 = v12;
          v15 = v13;
          v16 = gLogObjects;
          v17 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 51)
          {
            v18 = *(gLogObjects + 400);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v24;
              v32 = v16;
              v33 = 1024;
              LODWORD(v34) = v17;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v19 = &_os_log_default;
            v18 = &_os_log_default;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v32 = v14;
            v33 = 2112;
            v34 = v15;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "oobBtPairing2: %@, _handleAlreadyPaired componentUID %@", buf, 0x16u);
          }

          if (v14 && v15)
          {
            v20 = [OOBBTPairing2Accessory accessoryForUID:v14];
            v21 = [v20 componentList];
            v22 = v21;
            if (v20 && v21)
            {
              v23 = [v21 objectForKey:v15];
              if (v23)
              {
                _sendStartOOBBTPairing(v20, v23, 0);
                _sendStopOOBBTPairing(v20, v23, 3);
              }
            }
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }
}

void platform_oobBtPairing2_accessoryDetached(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v2 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "oobBtPairing2 accessoryDetached: %@", &v6, 0xCu);
  }

  v4 = +[ACCOOBBTPairingServer sharedServer];
  [v4 accessoryOOBBTPairingDetached:a1];
  [v4 decrementUserCount];
  v5 = +[OOBBTPairing2Accessory accessoryListLock];
  [v5 lock];
  [OOBBTPairing2Accessory removeAccessoryForUID:a1];
  [v5 unlock];
}

void platform_oobBtPairing2_accessoryInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v10 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v10 = &_os_log_default;
    v11 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138413058;
    v18 = a1;
    v19 = 2112;
    v20 = a2;
    v21 = 2112;
    v22 = a4;
    v23 = 2112;
    v24 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "oobBtPairing2 accessoryInfo: %@, componentUID %@, pairingDataP192 %@, pairingDataP256 %@", &v17, 0x2Au);
  }

  v12 = +[OOBBTPairing2Accessory accessoryListLock];
  [v12 lock];
  v13 = [OOBBTPairing2Accessory accessoryForUID:a1];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 componentList];
    v16 = [v15 objectForKey:a2];
    if (v16)
    {
      [v14 startPairing:v16 macAddr:a3 pairingDataP192:a4 pairingDataP256:a5];
    }
  }

  [v12 unlock];
}

void platform_oobBtPairing2_completionStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v6 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v34 = a1;
    v35 = 2112;
    v36 = a2;
    v37 = 1024;
    v38 = a3;
    v39 = 1024;
    v40 = 2;
    v41 = 1024;
    v42 = 4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "oobBtPairing2 completionStatus: %@, componentUID %@, result = %d (%d=Success, %d=Cancelled)", buf, 0x28u);
  }

  v8 = +[OOBBTPairing2Accessory accessoryListLock];
  [v8 lock];
  v9 = [OOBBTPairing2Accessory accessoryForUID:a1];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 componentList];
    v12 = [v11 objectForKey:a2];
    if (v12)
    {
      if (gLogObjects && gNumLogObjects >= 51)
      {
        v13 = *(gLogObjects + 400);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v13 = &_os_log_default;
        v15 = &_os_log_default;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v12 status];
        v17 = [v12 accessoryStatus];
        *buf = 138413314;
        v34 = a1;
        v35 = 2112;
        v36 = a2;
        v37 = 1024;
        v38 = v16;
        v39 = 1024;
        v40 = v17;
        v41 = 1024;
        v42 = a3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "oobBtPairing2 completionStatus: %@, componentUID %@, status %d, accessoryStatus %d->%d", buf, 0x28u);
      }

      [v12 setAccessoryStatus:a3];
      v14 = [v12 macAddr];
      if ([v12 accessoryStatus] == 4 || objc_msgSend(v12, "status") >= 2)
      {
        if ([v12 accessoryStatus] == 4)
        {
          if ([v12 status] <= 1)
          {
            [v10 cancelPairing:v12];
          }

          [v12 setStatus:4];
        }

        v18 = +[OOBBTPairing2Accessory processingQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __platform_oobBtPairing2_completionStatus_block_invoke;
        block[3] = &unk_100225A08;
        v31 = v10;
        v32 = v12;
        dispatch_async(v18, block);
      }
    }

    else
    {
      v14 = 0;
    }

    v19 = [v10 getPendingComponent];

    if (v19)
    {
      v20 = +[OOBBTPairing2Accessory processingQueue];
      v22 = _NSConcreteStackBlock;
      v23 = 3221225472;
      v24 = __platform_oobBtPairing2_completionStatus_block_invoke_2;
      v25 = &unk_10022A538;
      v26 = v10;
      v27 = v19;
      v28 = a1;
      v29 = a2;
      dispatch_async(v20, &v22);
    }
  }

  else
  {
    v14 = 0;
  }

  [v8 unlock];
  v21 = +[ACCOOBBTPairingServer sharedServer];
  [v21 accessoryOOBBTPairingCompletionStatus:a1 oobBtPairingUID:a2 accessoryMacAddr:v14 result:a3 != 2];
}

void __platform_oobBtPairing2_completionStatus_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 status];

  _sendStopOOBBTPairing(v1, v2, v3);
}

void __platform_oobBtPairing2_completionStatus_block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) getDeviceMacAddress];
  if (v2)
  {
    _sendStartOOBBTPairing(*(a1 + 32), *(a1 + 40), v2);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 51)
    {
      v3 = *(gLogObjects + 400);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v3 = &_os_log_default;
      v4 = &_os_log_default;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __platform_oobBtPairing2_completionStatus_block_invoke_2_cold_2(a1);
    }
  }
}

void _sendStartOOBBTPairing(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5 && v6)
  {
    if (gLogObjects && gNumLogObjects >= 51)
    {
      v8 = *(gLogObjects + 400);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 accessoryUID];
      v11 = [v6 componentUID];
      v20 = 138413058;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 1024;
      v25 = [v6 status];
      v26 = 2048;
      v27 = [v7 length];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "oobBtPairing2: %@, _sendStartOOBBTPairing, component %@ (status %d), deviceMacAddr %lu bytes", &v20, 0x26u);
    }

    v12 = malloc_type_malloc(0x18uLL, 0x1062040D3637215uLL);
    if (v12)
    {
      v13 = v12;
      *v12 = 0;
      v13[1] = [v6 componentUID];
      v13[2] = 0;
      if (v7)
      {
        v13[2] = v7;
      }

      v14 = [v5 accessoryUID];
      v15 = accFeatureHandlers_invokeHandler(v14, 54, v13);

      if (v15)
      {
        [v6 setStatus:1];
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 51)
        {
          v17 = *(gLogObjects + 400);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v17 = &_os_log_default;
          v19 = &_os_log_default;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          _sendStartOOBBTPairing_cold_3(v5);
        }

        platform_oobBtPairing2_deleteParams(v13);
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 51)
      {
        v16 = *(gLogObjects + 400);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v16 = &_os_log_default;
        v18 = &_os_log_default;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        _sendStopOOBBTPairing_cold_3();
      }
    }
  }
}

void platform_oobBtPairing2_stopOobBtPairingHandler(void *a1)
{
  v1 = a1;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    v2 = *(gLogObjects + 400);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "oobBtPairing2 stopOOBBTPairing: %@", buf, 0xCu);
  }

  v4 = +[OOBBTPairing2Accessory accessoryListLock];
  [v4 lock];
  v5 = [OOBBTPairing2Accessory accessoryForUID:v1];
  v6 = v5;
  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v5 componentList];
    v8 = [v7 allValues];

    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if ([v13 status] == 1)
          {
            _sendStopOOBBTPairing(v6, v13, 4);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  [v4 unlock];
}

void platform_oobBtPairing2_deleteParams(void *a1)
{
  if (a1)
  {
    if (!*a1)
    {
      v2 = a1[2];
      if (v2)
      {
        CFRelease(v2);
        a1[2] = 0;
      }
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

BOOL platform_oobBtPairing2_isSupported(uint64_t a1)
{
  v1 = [OOBBTPairing2Accessory accessoryForUID:a1];
  v2 = v1 != 0;

  return v2;
}

__CFDictionary *platform_oobBtPairing2_createAccInfoMutableDict(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, const void *a9, char a10)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
  v19 = Mutable;
  if (a2 && a1 && Mutable)
  {
    CFDictionaryAddValue(Mutable, @"ACCOOBBTPairingAccManufacturer", a2);
    CFDictionaryAddValue(v19, @"ACCOOBBTPairingAccModel", a1);
    CFDictionaryAddValue(v19, @"ACCOOBBTPairingAccName", a3);
    CFDictionaryAddValue(v19, @"ACCOOBBTPairingAccSerialNum", a4);
    CFDictionaryAddValue(v19, @"ACCOOBBTPairingAccFwVer", a5);
    CFDictionaryAddValue(v19, @"ACCOOBBTPairingAccHwVer", a6);
    CFDictionaryAddValue(v19, @"ACCOOBBTPairingCertData", a8);
    CFDictionaryAddValue(v19, @"ACCOOBBTPairingCertSerial", a9);
    if (a7)
    {
      CFDictionaryAddValue(v19, @"ACCOOBBTPairingDisplayName", a7);
    }

    valuePtr = a10;
    v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
    CFDictionaryAddValue(v19, @"ACCOOBBTPairingCarPlaySupported", v20);
    CFRelease(v20);
    valuePtr = 1;
    v21 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
    CFDictionaryAddValue(v19, @"ACCOOBBTPairing2Supported", v21);
    CFRelease(v21);
  }

  return v19;
}

__CFDictionary *platform_oobBtPairing2_createBtComponentMutableDict(__int16 a1, const void *a2, const void *a3, const void *a4)
{
  valuePtr = a1;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"ACCOOBBTPairingComponentInfoID", v8);
  if (a2)
  {
    CFDictionaryAddValue(Mutable, @"ACCOOBBTPairingComponentInfoUID", a2);
  }

  if (a3)
  {
    CFDictionaryAddValue(Mutable, @"ACCOOBBTPairingComponentInfoName", a3);
  }

  if (a4)
  {
    CFDictionaryAddValue(Mutable, @"ACCOOBBTPairingComponentInfoMacAddr", a4);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return Mutable;
}

void platform_oobBTPairing2_incrementUserCount()
{
  v0 = +[ACCOOBBTPairingServer sharedServer];
  [v0 incrementUserCount];

  v1 = +[ACCOOBBTPairingServer sharedServer];
  v2 = [v1 featureUserCount];

  if (v2 == 1)
  {
    v3 = +[ACCFeaturePluginManager sharedManager];
    [v3 startPlugInsWithClasses:&off_100233D38];
  }
}

void iap2_identification_setIdentificationState(uint64_t *a1, int a2)
{
  if (iap2_feature_getFeature(a1, 1u))
  {
    *iap2_feature_getFeature(a1, 1u) = a2;
  }

  if (a2 == 6)
  {
    if (*a1)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      v6 = 0u;
      v5[0] = *(*(iap2_feature_getFeature(a1, 1u) + 8) + 8);
      v5[1] = *(*(iap2_feature_getFeature(a1, 1u) + 8) + 24);
      v5[2] = *(*(iap2_feature_getFeature(a1, 1u) + 8) + 16);
      v5[3] = *(*(iap2_feature_getFeature(a1, 1u) + 8) + 32);
      v5[4] = *(*(iap2_feature_getFeature(a1, 1u) + 8) + 48);
      v5[5] = *(*(iap2_feature_getFeature(a1, 1u) + 8) + 40);
      v5[6] = 0;
      v5[7] = *(*(iap2_feature_getFeature(a1, 1u) + 8) + 64);
      acc_endpoint_setAccessoryInfo(*a1);
    }
  }

  else if ((a2 & 0xFFFFFFFD) == 1)
  {
    acc_endpoint_clearAccessoryInfo(*a1);
  }

  if (gLogObjects && gNumLogObjects >= 26)
  {
    v4 = *(gLogObjects + 200);
  }

  else
  {
    v4 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5[0]) = 67109120;
    HIDWORD(v5[0]) = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Identification state changed: %{coreacc:iAP2Feature_Identification_State_t}d", v5, 8u);
  }

  iap2_sessionControl_identificationStateChanged(a1, a2);
}

void iap2_identification_releaseIdentInfo(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 26;
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
    v3 = *(gLogObjects + 200);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    iap2_identification_releaseIdentInfo_cold_2();
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 8) = 0;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 24) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 32) = 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 40) = 0;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 48) = 0;
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 56) = 0;
  }

  v11 = *(a1 + 96);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 96) = 0;
  }

  v12 = *(a1 + 104);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 104) = 0;
  }

  v13 = *(a1 + 112);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 112) = 0;
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 64) = 0;
  }

  v15 = *(a1 + 72);
  if (v15)
  {
    Count = CFDictionaryGetCount(v15);
    v17 = __chkstk_darwin(Count);
    v19 = (&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v17)
    {
      memset(&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v18);
      CFDictionaryGetKeysAndValues(*(a1 + 72), 0, v19);
      if (Count >= 1)
      {
        do
        {
          v20 = *(*v19 + 8);
          if (!*v20 || (free(*v20), v21 = *v19, (v20 = *(*v19 + 8)) != 0))
          {
            free(v20);
            *(*v19 + 8) = 0;
            v21 = *v19;
          }

          v22 = v21[4];
          if (v22)
          {
            free(v22);
            *(*v19 + 4) = 0;
            v21 = *v19;
          }

          v23 = v21[1];
          if (v23)
          {
            CFRelease(v23);
            *(*v19 + 1) = 0;
            v21 = *v19;
          }

          v24 = CFNumberCreate(0, kCFNumberShortType, v21);
          CFDictionaryRemoveValue(*(a1 + 72), v24);
          if (v24)
          {
            CFRelease(v24);
          }

          if (*v19)
          {
            free(*v19);
            *v19 = 0;
          }

          ++v19;
          --Count;
        }

        while (Count);
      }
    }

    else
    {
      CFDictionaryGetKeysAndValues(*(a1 + 72), 0, (&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0)));
    }

    v25 = *(a1 + 72);
    if (v25)
    {
      CFRelease(v25);
      *(a1 + 72) = 0;
    }
  }

  v26 = *(a1 + 88);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 88) = 0;
  }

  v27 = *(a1 + 216);
  if (v27)
  {
    if (!*v27 || (free(*v27), (v27 = *(a1 + 216)) != 0))
    {
      free(v27);
      *(a1 + 216) = 0;
    }
  }

  iap2_identification_releaseRejectMessage(a1);
}

uint64_t iap2_identification_checkIdentificationInfoFeatures(uint64_t a1, uint64_t a2)
{
  v40 = 0;
  FeatureInfoEntries = iap2_feature_getFeatureInfoEntries(&v40);
  v4 = &audioProductCerts_endpoint_publish_onceToken;
  v5 = &audioProductCerts_endpoint_publish_onceToken;
  if (FeatureInfoEntries)
  {
    if (v40)
    {
      v6 = FeatureInfoEntries;
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(v6 + 1);
        if (*v9)
        {
          if (*(*v9 + 24))
          {
            v10 = v4[491];
            v11 = *(v5 + 984);
            if (v10)
            {
              v12 = v11 < 26;
            }

            else
            {
              v12 = 1;
            }

            if (v12)
            {
              v19 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v42 = v10;
                *&v42[8] = 1024;
                v43 = v11;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                v19 = &_os_log_default;
              }
            }

            else
            {
              v19 = *(v10 + 200);
            }

            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = *v6;
              *buf = 67109120;
              *v42 = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Checking identification info for feature: %{coreacc:iAP2Feature_t}d...", buf, 8u);
            }

            v21 = (*(**(v6 + 1) + 24))(a1, a2);
            if (v21)
            {
              v22 = v4[491];
              v23 = v5;
              v24 = *(v5 + 984);
              if (v22 && v24 >= 26)
              {
                v25 = *(v22 + 200);
              }

              else
              {
                v25 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  *v42 = v22;
                  *&v42[8] = 1024;
                  v43 = v24;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  v25 = &_os_log_default;
                }
              }

              v5 = v23;
              v4 = &audioProductCerts_endpoint_publish_onceToken;
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                v26 = *v6;
                *buf = 67109376;
                *v42 = v26;
                *&v42[4] = 1024;
                *&v42[6] = v21;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Identification info rejected for feature %{coreacc:iAP2Feature_t}d, reject reason: %d", buf, 0xEu);
              }
            }

            v8 = v21 | v8;
          }

          else
          {
            v13 = v9[34];
            v14 = v4[491];
            v15 = *(v5 + 984);
            if (v14)
            {
              v16 = v15 <= 25;
            }

            else
            {
              v16 = 1;
            }

            v17 = !v16;
            if (v13 == 1)
            {
              if (v17)
              {
                v18 = *(v14 + 200);
              }

              else
              {
                v18 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  *v42 = v14;
                  *&v42[8] = 1024;
                  v43 = v15;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  v18 = &_os_log_default;
                }
              }

              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                v28 = *v6;
                *buf = 67109120;
                *v42 = v28;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "No checkIdentificationInfo function for feature: %{coreacc:iAP2Feature_t}d!", buf, 8u);
              }
            }

            else
            {
              if (v17)
              {
                v27 = *(v14 + 200);
              }

              else
              {
                v27 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  *v42 = v14;
                  *&v42[8] = 1024;
                  v43 = v15;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  v27 = &_os_log_default;
                }
              }

              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v29 = *v6;
                *buf = 67109120;
                *v42 = v29;
                _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "No checkIdentificationInfo function for feature: %{coreacc:iAP2Feature_t}d!", buf, 8u);
              }
            }
          }
        }

        ++v7;
        v6 += 16;
      }

      while (v7 < v40);
    }

    else
    {
      v8 = 0;
    }

    v31 = *(a2 + 112);
    if (v31)
    {
      Count = CFSetGetCount(v31);
    }

    else
    {
      Count = 0;
    }

    v33 = v4[491];
    if (v33)
    {
      v34 = *(v5 + 984) < 26;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      v35 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v35 = *(v33 + 200);
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v42 = Count;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Identified for %lu feature(s)!", buf, 0xCu);
    }

    if (v8)
    {
      if (gLogObjects && *(v5 + 984) >= 26)
      {
        v36 = *(gLogObjects + 200);
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
        *buf = 67109120;
        *v42 = v8;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "IdentificationInfo needs to be rejected. Status : %d", buf, 8u);
      }
    }
  }

  else
  {
    if (gLogObjects)
    {
      v30 = gNumLogObjects < 26;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      v37 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v37 = *(gLogObjects + 200);
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      iap2_identification_checkIdentificationInfoFeatures_cold_4();
    }

    return 0;
  }

  return v8;
}

const char *iap2_identification_rejectName(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "def";
  }

  else
  {
    return off_10022A7C8[a1];
  }
}

const char *iap2_identification_paramName(int a1)
{
  result = "AccName";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "AccModel";
      break;
    case 2:
      result = "AccManufacturer";
      break;
    case 3:
      result = "AccSerialNumber";
      break;
    case 4:
      result = "AccFirmwareVersion";
      break;
    case 5:
      result = "AccHardwareVersion";
      break;
    case 6:
      result = "MessagesSentByAccessory";
      break;
    case 7:
      result = "MessagesRcvdFromDevice";
      break;
    case 8:
      result = "PowerSourceType";
      break;
    case 9:
      result = "MaximumCurrentDrawnFromDevice";
      break;
    case 10:
      result = "SupportedEAProtocol";
      break;
    case 11:
      result = "PreferredAppBundleSeedID";
      break;
    case 12:
      result = "CurrentLanguage";
      break;
    case 13:
      result = "SupportedLanguage";
      break;
    case 14:
      result = "SerialTransportComponent";
      break;
    case 15:
      result = "USBDeviceTransportComponent";
      break;
    case 16:
      result = "USBHostTransportComponent";
      break;
    case 17:
      result = "BluetoothTransportComponent";
      break;
    case 18:
      result = "iAPHIDComponent";
      break;
    case 19:
      result = "Reserved";
      break;
    case 20:
      result = "VehicleInfo";
      break;
    case 21:
      result = "VehicleStatus";
      break;
    case 22:
      result = "LocationInfo";
      break;
    case 23:
      result = "USBHostHIDComponent";
      break;
    case 24:
      result = "WirelessCarPlayTransportComponent";
      break;
    case 25:
      result = "MaximumSiphoningCurrent";
      break;
    case 26:
      result = "BluetoothLETransportComponent";
      break;
    case 27:
      result = "MaximumPOIDataFormatVersion";
      break;
    case 28:
    case 30:
    case 31:
    case 33:
    case 35:
    case 36:
    case 37:
      goto LABEL_6;
    case 29:
      result = "NativeBTHIDComponent";
      break;
    case 32:
      result = "ElectricVehicleChargingComponent";
      break;
    case 34:
      result = "PPID";
      break;
    case 38:
      result = "VehicleDigitalCarKeyInfo";
      break;
    default:
      if (a1 == 240)
      {
        result = "MaximumCurrentDrawnInUHPM";
      }

      else if (a1 == 241)
      {
        result = "PowerDuringSleep";
      }

      else
      {
LABEL_6:
        result = "Unknown";
      }

      break;
  }

  return result;
}

void _addRejectParam(uint64_t a1, int a2, unsigned int a3)
{
  if (a1)
  {
    iAP2MsgAddVoidParam(*(a1 + 136), 0, a2);
    v6 = iap2_identification_paramName(a2);
    v7 = iap2_identification_rejectName(a3);
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"iapreject:  Param: %s Reason: %s\n", v6, v7);
    CFStringAppend(*(a1 + 192), v8);
    if (v8)
    {

      CFRelease(v8);
    }
  }

  else
  {
    if (gLogObjects)
    {
      v9 = gNumLogObjects < 26;
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
      v10 = *(gLogObjects + 200);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _addRejectParam_cold_2();
    }
  }
}

void iap2_identification_addRejectParam(uint64_t a1, int a2, unsigned int a3)
{
  IdentificationInfo = iap2_identification_getIdentificationInfo(a1);

  _addRejectParam(IdentificationInfo, a2, a3);
}

void _addRejectGroup(uint64_t a1, int a2, int a3, unsigned int a4)
{
  if (a3 < 0)
  {
    v7 = 0xFFFFLL;
  }

  else
  {
    v7 = a3;
  }

  iAP2MsgAddVoidParam(*(a1 + 136), 0, a2);
  v8 = iap2_identification_paramName(a2);
  v9 = iap2_identification_rejectName(a4);
  v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"iapreject:  Param: %s ID: 0x%04x Reason: %s\n", v8, v7, v9);
  CFStringAppend(*(a1 + 192), v10);
  if (v10)
  {

    CFRelease(v10);
  }
}

void iap2_identification_addRejectGroup(uint64_t a1, int a2, int a3, unsigned int a4)
{
  IdentificationInfo = iap2_identification_getIdentificationInfo(a1);

  _addRejectGroup(IdentificationInfo, a2, a3, a4);
}

void _iap2_identification_cleanupRejectMsg(void *a1, int a2)
{
  if (a2)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 26;
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
      v4 = *(gLogObjects + 200);
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a1)
      {
        MsgID = iAP2MsgGetMsgID(a1);
        MsgLen = iAP2MsgGetMsgLen(a1);
      }

      else
      {
        MsgID = 0;
        MsgLen = 0;
      }

      v8 = 136316418;
      v9 = "_iap2_identification_cleanupRejectMsg";
      v10 = 1024;
      v11 = 3078;
      v12 = 1024;
      v13 = 1;
      v14 = 1024;
      v15 = MsgID;
      v16 = 1024;
      v17 = MsgLen;
      v18 = 2080;
      label = dispatch_queue_get_label(0);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s:%d iAP2 IdentificationReject MSG Cleanup callback deleting msg! needDelete=%d msgID=%xh msgLen=%d currentDispatchQueue: %s", &v8, 0x2Eu);
    }

    if (a1)
    {
      v7 = a1[3];
      if (v7)
      {
        free(v7);
      }

      free(a1);
    }
  }
}

void iap2_identification_appendRejectMsgID(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  if (a3 == 1)
  {
    v7 = *(a1 + 160);
    v8 = *(a1 + 208);
    *(a1 + 169) = 1;
  }

  else
  {
    if (a3)
    {
      return;
    }

    v7 = *(a1 + 152);
    v8 = *(a1 + 200);
    *(a1 + 168) = 1;
  }

  if (a2 == 255)
  {

    CFStringAppendFormat(v8, 0, @" Parameter Parse Error");
  }

  else
  {
    if (a4 == 1)
    {
      *bytes = __rev16(a2);
      CFDataAppendBytes(v7, bytes, 2);
    }

    v9 = iap2_identification_rejectName(a4);
    CFStringAppendFormat(v8, 0, @" [msgID: 0x%04x Reason: %s]", a2, v9);
  }
}

void iap2_identification_addMsgListParamWithDirection(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    if (*(a1 + 169) != 1 || !*(**(a1 + 216) + 28))
    {
      return;
    }

    v3 = 7;
    v4 = 208;
    v5 = 160;
  }

  else
  {
    if (a2 || *(a1 + 168) != 1 || !*(**(a1 + 216) + 24))
    {
      return;
    }

    v3 = 6;
    v4 = 200;
    v5 = 152;
  }

  v6 = *(a1 + 136);
  BytePtr = CFDataGetBytePtr(*(a1 + v5));
  Length = CFDataGetLength(*(a1 + v5));
  iAP2MsgAddDataParam(v6, 0, v3, BytePtr, Length);
  CFStringAppend(*(a1 + v4), @"\n");
  v9 = *(a1 + v4);
  v10 = *(a1 + 192);

  CFStringAppend(v10, v9);
}

void iap2_identification_rejectMsgID(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  IdentificationInfo = iap2_identification_getIdentificationInfo(a1);
  v8 = IdentificationInfo;
  if (!a3)
  {
    v9 = 176;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v9 = 184;
LABEL_5:
    CFSetAddValue(*(IdentificationInfo + v9), a2);

    iap2_identification_appendRejectMsgID(v8, a2, a3, a4);
    return;
  }

  if (gLogObjects)
  {
    v10 = gNumLogObjects < 26;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v11 = *(gLogObjects + 200);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = a3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Incorrect message direction : %d", v12, 8u);
  }
}

void iap2_identification_acceptMsgID(uint64_t a1, void *value, int a3)
{
  if (a3 == 1)
  {
    v4 = *(a1 + 184);
    goto LABEL_5;
  }

  if (!a3)
  {
    v4 = *(a1 + 176);
LABEL_5:

    CFSetAddValue(v4, value);
    return;
  }

  if (gLogObjects)
  {
    v5 = gNumLogObjects < 26;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v6 = *(gLogObjects + 200);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Incorrect message direction : %d", v7, 8u);
  }
}

uint64_t iap2_identification_processStringParam(uint64_t a1, unsigned __int16 *a2, CFStringRef *a3)
{
  v14 = 0;
  ParamID = iAP2MsgGetParamID(a2);
  v7 = iAP2MsgCopyDataAsCFString(a2, &v14);
  if (!a3 || v14)
  {
    if (v7)
    {
      CFRelease(v7);
    }

    _addRejectParam(a1, ParamID, 8u);
    if (!a3)
    {
      if (gLogObjects && gNumLogObjects >= 26)
      {
        v9 = *(gLogObjects + 200);
      }

      else
      {
        v9 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        iap2_identification_processStringParam_cold_2();
      }
    }

    v8 = v14;
    if (v14)
    {
      v10 = gLogObjects;
      v11 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 26)
      {
        v12 = *(gLogObjects + 200);
      }

      else
      {
        v12 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v16 = v10;
          v17 = 1024;
          v18 = v11;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          v8 = v14;
        }
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v16) = v8;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "iAP2MsgCopyDataAsCFString returned status: %08x", buf, 8u);
        return v14;
      }
    }
  }

  else
  {
    v8 = 0;
    *a3 = v7;
  }

  return v8;
}

uint64_t cbIdentificationInfoSerialTransportComponentParams(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v15 = 0;
  ParamID = iAP2MsgGetParamID(a3);
  v7 = ParamID;
  if (ParamID == 2)
  {
    if (iAP2MsgIsDataVoid(a3))
    {
      *(a4 + 16) = 1;
    }

    else
    {
      *(a4 + 16) = -1;
      v15 = 1;
    }
  }

  else if (ParamID == 1)
  {
    v9 = iAP2MsgCopyDataAsCFString(a3, &v15);
    v10 = v9;
    if (v15)
    {
      if (v9)
      {
        CFRelease(v9);
      }
    }

    else
    {
      v12 = *(a4 + 8);
      if (v12)
      {
        CFRelease(v12);
      }

      *(a4 + 8) = v10;
    }
  }

  else if (ParamID)
  {
    if (gLogObjects && gNumLogObjects >= 26)
    {
      v11 = *(gLogObjects + 200);
    }

    else
    {
      v11 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "iAP2MsgIdentificationInfo SerialTransportComponent unhandled sub-paramID:%04X\n", buf, 8u);
    }
  }

  else
  {
    DataAsU16 = iAP2MsgGetDataAsU16(a3, &v15);
    if (!v15)
    {
      *a4 = DataAsU16;
    }
  }

  v13 = *(a4 + 64);
  if (*(v13 + 8) > v7)
  {
    ++*(*v13 + 4 * v7);
  }

  return v15;
}

uint64_t cbIdentificationInfoUSBDeviceTransportComponentParams(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v14 = 0;
  ParamID = iAP2MsgGetParamID(a3);
  v7 = ParamID;
  if (ParamID <= 1)
  {
    if (ParamID)
    {
      if (ParamID != 1)
      {
LABEL_19:
        if (gLogObjects && gNumLogObjects >= 26)
        {
          v11 = *(gLogObjects + 200);
        }

        else
        {
          v11 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v16 = v7;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "iAP2MsgIdentificationInfo USBDeviceTransportComponent unhandled sub-paramID:%04X\n", buf, 8u);
        }

        goto LABEL_30;
      }

      v8 = iAP2MsgCopyDataAsCFString(a3, &v14);
      if (v14)
      {
        if (v8)
        {
          CFRelease(v8);
        }
      }

      else
      {
        *(a4 + 8) = v8;
      }
    }

    else
    {
      DataAsU16 = iAP2MsgGetDataAsU16(a3, &v14);
      if (!v14)
      {
        *a4 = DataAsU16;
      }
    }
  }

  else
  {
    if (ParamID == 2)
    {
      if (iAP2MsgIsDataVoid(a3))
      {
        *(a4 + 16) = 1;
        goto LABEL_30;
      }

      *(a4 + 16) = -1;
      goto LABEL_24;
    }

    if (ParamID != 3)
    {
      if (ParamID == 4)
      {
        if (iAP2MsgIsDataVoid(a3))
        {
          *(a4 + 55) = 1;
          goto LABEL_30;
        }

        *(a4 + 55) = 0;
LABEL_24:
        v14 = 1;
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    DataAsU8 = iAP2MsgGetDataAsU8(a3, &v14);
    if (!v14 && DataAsU8 <= 8)
    {
      *(a4 + 48) |= 1 << DataAsU8;
    }
  }

LABEL_30:
  v12 = *(a4 + 64);
  if (*(v12 + 8) > v7)
  {
    ++*(*v12 + 4 * v7);
  }

  return v14;
}

uint64_t cbIdentificationInfoUSBHostTransportComponentParams(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v14 = 0;
  ParamID = iAP2MsgGetParamID(a3);
  v7 = ParamID;
  if (ParamID > 2)
  {
    switch(ParamID)
    {
      case 3:
        DataAsU8 = iAP2MsgGetDataAsU8(a3, &v14);
        if (v14)
        {
          *(a4 + 53) = 0;
        }

        else
        {
          *(a4 + 53) = 1;
          *(a4 + 54) = DataAsU8;
        }

        goto LABEL_32;
      case 4:
        if (iAP2MsgIsDataVoid(a3))
        {
          *(a4 + 55) = 1;
          goto LABEL_32;
        }

        *(a4 + 55) = 0;
        goto LABEL_31;
      case 5:
        if (iAP2MsgIsDataVoid(a3))
        {
          *(a4 + 56) = 1;
          goto LABEL_32;
        }

        *(a4 + 56) = 0;
        goto LABEL_31;
    }

    goto LABEL_16;
  }

  if (ParamID)
  {
    if (ParamID != 1)
    {
      if (ParamID == 2)
      {
        if (iAP2MsgIsDataVoid(a3))
        {
          *(a4 + 16) = 1;
          goto LABEL_32;
        }

        *(a4 + 16) = -1;
LABEL_31:
        v14 = 1;
        goto LABEL_32;
      }

LABEL_16:
      if (gLogObjects && gNumLogObjects >= 26)
      {
        v10 = *(gLogObjects + 200);
      }

      else
      {
        v10 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "iAP2MsgIdentificationInfo USBHostTransportComponent unhandled sub-paramID:%04X\n", buf, 8u);
      }

      goto LABEL_32;
    }

    v11 = iAP2MsgCopyDataAsCFString(a3, &v14);
    if (v14)
    {
      if (v11)
      {
        CFRelease(v11);
      }
    }

    else
    {
      *(a4 + 8) = v11;
    }
  }

  else
  {
    DataAsU16 = iAP2MsgGetDataAsU16(a3, &v14);
    if (!v14)
    {
      *a4 = DataAsU16;
    }
  }

LABEL_32:
  v12 = *(a4 + 64);
  if (*(v12 + 8) > v7)
  {
    ++*(*v12 + 4 * v7);
  }

  return v14;
}

uint64_t cbIdentificationInfoBluetoothTransportComponentParams(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v17 = 0;
  ParamID = iAP2MsgGetParamID(a3);
  v7 = ParamID;
  if (ParamID > 1)
  {
    if (ParamID == 2)
    {
      if (iAP2MsgIsDataVoid(a3))
      {
        *(a4 + 16) = 1;
        goto LABEL_27;
      }

      *(a4 + 16) = -1;
    }

    else
    {
      if (ParamID != 3)
      {
LABEL_13:
        if (gLogObjects && gNumLogObjects >= 26)
        {
          v13 = *(gLogObjects + 200);
        }

        else
        {
          v13 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v19 = v7;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "iAP2MsgIdentificationInfo BluetoothTransportComponent unhandled sub-paramID:%04X\n", buf, 8u);
        }

        goto LABEL_27;
      }

      DataAsData = iAP2MsgGetDataAsData(a3, &v17);
      if (v17)
      {
        goto LABEL_27;
      }

      v10 = DataAsData;
      ParamValueLen = iAP2MsgGetParamValueLen(a3);
      if (v10 && ParamValueLen == 6)
      {
        v12 = *v10;
        *(a4 + 28) = *(v10 + 4);
        *(a4 + 24) = v12;
        goto LABEL_27;
      }
    }

    v17 = 1;
    goto LABEL_27;
  }

  if (ParamID)
  {
    if (ParamID == 1)
    {
      v8 = iAP2MsgCopyDataAsCFString(a3, &v17);
      if (v17)
      {
        if (v8)
        {
          CFRelease(v8);
        }
      }

      else
      {
        *(a4 + 8) = v8;
      }

      goto LABEL_27;
    }

    goto LABEL_13;
  }

  DataAsU16 = iAP2MsgGetDataAsU16(a3, &v17);
  if (!v17)
  {
    *a4 = DataAsU16;
  }

LABEL_27:
  v15 = *(a4 + 64);
  if (*(v15 + 8) > v7)
  {
    ++*(*v15 + 4 * v7);
  }

  return v17;
}

uint64_t cbIdentificationInfoWirelessCarPlayTransportComponentParams(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v13 = 0;
  ParamID = iAP2MsgGetParamID(a3);
  v7 = ParamID;
  if (ParamID > 1)
  {
    switch(ParamID)
    {
      case 2:
        if (iAP2MsgIsDataVoid(a3))
        {
          *(a4 + 16) = 1;
          goto LABEL_30;
        }

        *(a4 + 16) = -1;
        goto LABEL_24;
      case 4:
        if (iAP2MsgIsDataVoid(a3))
        {
          *(a4 + 55) = 1;
          goto LABEL_30;
        }

        *(a4 + 55) = 0;
        goto LABEL_24;
      case 5:
        if (iAP2MsgIsDataVoid(a3))
        {
          *(a4 + 56) = 1;
          goto LABEL_30;
        }

        *(a4 + 56) = 0;
LABEL_24:
        v13 = 1;
        goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (ParamID)
  {
    if (ParamID != 1)
    {
LABEL_18:
      if (gLogObjects && gNumLogObjects >= 26)
      {
        v10 = *(gLogObjects + 200);
      }

      else
      {
        v10 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "iAP2MsgIdentificationInfo WirelessCarPlayTransportComponent unhandled sub-paramID:%04X\n", buf, 8u);
      }

      goto LABEL_30;
    }

    v8 = iAP2MsgCopyDataAsCFString(a3, &v13);
    if (v13)
    {
      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      *(a4 + 8) = v8;
    }
  }

  else
  {
    DataAsU16 = iAP2MsgGetDataAsU16(a3, &v13);
    if (!v13)
    {
      *a4 = DataAsU16;
    }
  }

LABEL_30:
  v11 = *(a4 + 64);
  if (*(v11 + 8) > v7)
  {
    ++*(*v11 + 4 * v7);
  }

  return v13;
}

uint64_t cbIdentificationInfoBluetoothLETransportComponentParams(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v21 = 0;
  ParamID = iAP2MsgGetParamID(a3);
  v7 = ParamID;
  if (ParamID > 1)
  {
    switch(ParamID)
    {
      case 2:
        if (iAP2MsgIsDataVoid(a3))
        {
          *(a4 + 16) = 1;
          goto LABEL_31;
        }

        *(a4 + 16) = -1;
        goto LABEL_25;
      case 3:
        DataAsData = iAP2MsgGetDataAsData(a3, &v21);
        if (v21)
        {
          goto LABEL_31;
        }

        v14 = DataAsData;
        ParamValueLen = iAP2MsgGetParamValueLen(a3);
        if (v14 && ParamValueLen == 6)
        {
          v16 = *v14;
          *(a4 + 28) = *(v14 + 4);
          *(a4 + 24) = v16;
          goto LABEL_31;
        }

        goto LABEL_25;
      case 4:
        v8 = iAP2MsgGetDataAsData(a3, &v21);
        if (v21)
        {
          goto LABEL_31;
        }

        v9 = v8;
        if (v8)
        {
          v10 = iAP2MsgGetParamValueLen(a3);
          *(a4 + 40) = v10;
          v11 = malloc_type_calloc(v10, 1uLL, 0x100004077774924uLL);
          *(a4 + 32) = v11;
          memcpy(v11, v9, v10);
          goto LABEL_31;
        }

LABEL_25:
        v21 = 1;
        goto LABEL_31;
    }

    goto LABEL_21;
  }

  if (ParamID)
  {
    if (ParamID != 1)
    {
LABEL_21:
      if (gLogObjects && gNumLogObjects >= 26)
      {
        v18 = *(gLogObjects + 200);
      }

      else
      {
        v18 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v23 = v7;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "iAP2MsgIdentificationInfo BluetoothLETransportComponent unhandled sub-paramID:%04X\n", buf, 8u);
      }

      goto LABEL_31;
    }

    v12 = iAP2MsgCopyDataAsCFString(a3, &v21);
    if (v21)
    {
      if (v12)
      {
        CFRelease(v12);
      }
    }

    else
    {
      *(a4 + 8) = v12;
    }
  }

  else
  {
    DataAsU16 = iAP2MsgGetDataAsU16(a3, &v21);
    if (!v21)
    {
      *a4 = DataAsU16;
    }
  }

LABEL_31:
  v19 = *(a4 + 64);
  if (*(v19 + 8) > v7)
  {
    ++*(*v19 + 4 * v7);
  }

  return v21;
}

uint64_t iap2_identification_addTransportComponent(uint64_t a1, uint64_t a2, void *valuePtr)
{
  v3 = valuePtr[8];
  v4 = *(v3 + 8);
  if (!v4)
  {
    return 2;
  }

  v5 = *v3;
  v6 = *v5;
  if (v4 == 1 || v6 == 0)
  {
    return 2;
  }

  v8 = v5[1];
  if (!v8)
  {
    return 2;
  }

  v9 = v6 <= 1 && v8 == 1;
  if (!v9 || v4 >= 3 && v5[2] > 1)
  {
    return 5;
  }

  v13 = *(valuePtr + 5);
  if (v13 <= 1)
  {
    if (v13)
    {
      if (v13 != 1 || *(*a1 + 24))
      {
        goto LABEL_31;
      }
    }

    else if ((*(**a1 + 8) | 2) != 3)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v13 == 2)
  {
    if (*(*a1 + 24) != 8)
    {
      goto LABEL_31;
    }

LABEL_29:
    if (v4 >= 3 && v5[2])
    {
      goto LABEL_31;
    }

    return 2;
  }

  if (v13 != 3 && v13 != 5)
  {
    goto LABEL_31;
  }

  if (v4 < 4)
  {
    return 2;
  }

  v14 = v5[3];
  if (!v14)
  {
    return 2;
  }

  if (v14 != 1)
  {
    return 5;
  }

LABEL_31:
  if (!valuePtr[1])
  {
    return 8;
  }

  if (*(valuePtr + 16) == 255)
  {
    return 10;
  }

  if (!*(a2 + 72))
  {
    *(a2 + 72) = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
  }

  v15 = CFNumberCreate(0, kCFNumberShortType, valuePtr);
  v16 = *(a2 + 72);
  if (v16 && v15)
  {
    if (CFDictionaryContainsKey(v16, v15))
    {
      v10 = 3;
    }

    else
    {
      CFDictionaryAddValue(*(a2 + 72), v15, valuePtr);
      v10 = 0;
    }
  }

  else
  {
    v10 = 17;
    if (!v15)
    {
      return v10;
    }
  }

  CFRelease(v15);
  return v10;
}

uint64_t iap2_identification_parseTransportComponent(uint64_t a1, _BYTE *a2, uint64_t a3, unsigned __int16 *a4, int a5, uint64_t (*a6)(uint64_t, unsigned __int16 *, unsigned __int16 *, uint64_t))
{
  ParamID = iAP2MsgGetParamID(a4);
  v13 = malloc_type_calloc(1uLL, 0x48uLL, 0x1070040248D27DFuLL);
  *(v13 + 5) = a5;
  *(v13 + 8) = iap2_messageParameterUtility_initWithMaxParamCount(6u);
  v14 = iAP2MsgForEachParamDo(a3, a4, a6, v13);
  if (v14)
  {
    v15 = v14;
    v16 = *v13;
    v17 = a2;
    v18 = ParamID;
    v19 = 10;
    goto LABEL_14;
  }

  if (*(v13 + 55) == 1)
  {
    a2[128] = 1;
    v20 = *(v13 + 5);
    if ((v20 - 1) >= 2)
    {
      if (v20 == 4)
      {
        a2[129] = 1;
      }
    }

    else
    {
      a2[130] = 1;
    }

    a2[131] = *(v13 + 56);
  }

  else if (*(v13 + 5) == 2 && *(v13 + 53) == 1)
  {
    a2[128] = 1;
    a2[130] = 1;
  }

  v15 = iap2_identification_addTransportComponent(a1, a2, v13);
  if (v15)
  {
    v16 = *v13;
    v17 = a2;
    v18 = ParamID;
    v19 = v15;
LABEL_14:
    _addRejectGroup(v17, v18, v16, v19);
    v21 = *(v13 + 8);
    if (v21 && *v21)
    {
      free(*v21);
    }

    v22 = *(v13 + 1);
    if (v22)
    {
      CFRelease(v22);
      *(v13 + 1) = 0;
    }

    v23 = *(v13 + 8);
    if (v23)
    {
      free(v23);
    }

    free(v13);
  }

  return v15;
}

_DWORD *iap2_messageParameterUtility_initWithMaxParamCount(unsigned int a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  v3 = malloc_type_malloc(4 * a1, 0x100004052888210uLL);
  *v2 = v3;
  if (v3)
  {
    v2[2] = a1;
    bzero(v3, 4 * a1);
  }

  else
  {
    v2[2] = 0;
  }

  return v2;
}

void *iap2_identification_createIdentificationInfo()
{
  v0 = malloc_type_calloc(1uLL, 0xE0uLL, 0x1070040727D3701uLL);
  if (v0)
  {
    v0[27] = iap2_messageParameterUtility_initWithMaxParamCount(0xF3u);
  }

  return v0;
}

void iap2_identification_releaseRejectMessage(void *a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 26;
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
    v3 = *(gLogObjects + 200);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    iap2_identification_releaseRejectMessage_cold_2();
  }

  v4 = a1[17];
  if (v4)
  {
    free(v4);
    a1[17] = 0;
  }

  v5 = a1[18];
  if (v5)
  {
    free(v5);
    a1[18] = 0;
  }

  v6 = a1[19];
  if (v6)
  {
    CFRelease(v6);
    a1[19] = 0;
  }

  v7 = a1[20];
  if (v7)
  {
    CFRelease(v7);
    a1[20] = 0;
  }

  v8 = a1[22];
  if (v8)
  {
    CFRelease(v8);
    a1[22] = 0;
  }

  v9 = a1[23];
  if (v9)
  {
    CFRelease(v9);
    a1[23] = 0;
  }

  v10 = a1[24];
  if (v10)
  {
    CFRelease(v10);
    a1[24] = 0;
  }

  v11 = a1[25];
  if (v11)
  {
    CFRelease(v11);
    a1[25] = 0;
  }

  v12 = a1[26];
  if (v12)
  {
    CFRelease(v12);
    a1[26] = 0;
  }

  v13 = a1[15];
  if (v13)
  {
    CFRelease(v13);
    a1[15] = 0;
  }
}

uint64_t iap2_identification_cbIdentificationInfoUpdateParams(uint64_t a1, uint64_t a2, unsigned __int16 *a3, void *a4)
{
  v20 = 0;
  ParamID = iAP2MsgGetParamID(a3);
  v7 = ParamID;
  if (ParamID <= 2)
  {
    switch(ParamID)
    {
      case 0:
        DataAsString = iAP2MsgGetDataAsString(a3, &v20);
        if (!v20)
        {
          a4[1] = CFStringCreateWithCString(kCFAllocatorDefault, DataAsString, 0x8000100u);
        }

        return v20;
      case 1:
        v15 = iAP2MsgGetDataAsString(a3, &v20);
        if (!v20)
        {
          a4[2] = CFStringCreateWithCString(kCFAllocatorDefault, v15, 0x8000100u);
        }

        return v20;
      case 2:
        v9 = iAP2MsgGetDataAsString(a3, &v20);
        if (!v20)
        {
          a4[3] = CFStringCreateWithCString(kCFAllocatorDefault, v9, 0x8000100u);
        }

        return v20;
    }
  }

  else
  {
    if (ParamID <= 4)
    {
      if (ParamID == 3)
      {
        v13 = iAP2MsgGetDataAsString(a3, &v20);
        if (!v20)
        {
          a4[4] = CFStringCreateWithCString(kCFAllocatorDefault, v13, 0x8000100u);
        }
      }

      else
      {
        v8 = iAP2MsgGetDataAsString(a3, &v20);
        if (!v20)
        {
          a4[5] = CFStringCreateWithCString(kCFAllocatorDefault, v8, 0x8000100u);
        }
      }

      return v20;
    }

    if (ParamID == 5)
    {
      v14 = iAP2MsgGetDataAsString(a3, &v20);
      if (!v20)
      {
        a4[6] = CFStringCreateWithCString(kCFAllocatorDefault, v14, 0x8000100u);
      }

      return v20;
    }

    if (ParamID == 6)
    {
      if (gLogObjects && gNumLogObjects >= 26)
      {
        v10 = *(gLogObjects + 200);
      }

      else
      {
        v10 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v22 = 6;
        v16 = "language updates no longer supported, paramID:%04X";
        v17 = v10;
        v18 = OS_LOG_TYPE_INFO;
        goto LABEL_35;
      }

      return v20;
    }
  }

  if (gLogObjects && gNumLogObjects >= 26)
  {
    v12 = *(gLogObjects + 200);
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
    *buf = 67109120;
    v22 = v7;
    v16 = "iAP2MsgIdentificationInfoUpdate unhandled paramID:%04X\n";
    v17 = v12;
    v18 = OS_LOG_TYPE_DEFAULT;
LABEL_35:
    _os_log_impl(&_mh_execute_header, v17, v18, v16, buf, 8u);
  }

  return v20;
}

uint64_t iap2_identification_updateIdentificationInfo(uint64_t *a1, void *a2)
{
  if (a1)
  {
    if (*a1)
    {
      if (a2)
      {
        if (a1[1])
        {
          IdentificationInfo = iap2_identification_getIdentificationInfo(a1);
          if (IdentificationInfo)
          {
            v5 = IdentificationInfo;
            v6 = *(IdentificationInfo + 8);
            if (a2[1])
            {
              if (v6)
              {
                CFRelease(v6);
                v5[1] = 0;
              }

              v5[1] = a2[1];
            }

            v7 = v5[2];
            if (a2[2])
            {
              if (v7)
              {
                CFRelease(v7);
                v5[2] = 0;
              }

              v5[2] = a2[2];
            }

            v8 = v5[3];
            if (a2[3])
            {
              if (v8)
              {
                CFRelease(v8);
                v5[3] = 0;
              }

              v5[3] = a2[3];
            }

            v9 = v5[4];
            if (a2[4])
            {
              if (v9)
              {
                CFRelease(v9);
                v5[4] = 0;
              }

              v5[4] = a2[4];
            }

            v10 = v5[5];
            if (a2[5])
            {
              if (v10)
              {
                CFRelease(v10);
                v5[5] = 0;
              }

              v5[5] = a2[5];
            }

            v11 = v5[6];
            if (a2[6])
            {
              if (v11)
              {
                CFRelease(v11);
                v5[6] = 0;
              }

              v5[6] = a2[6];
            }

            v12 = v5[8];
            if (a2[8])
            {
              if (v12)
              {
                CFRelease(v12);
                v5[8] = 0;
              }

              v5[8] = a2[8];
            }

            acc_endpoint_setAccessoryInfo(*a1);
          }
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

BOOL iap2_identification_identificationInfoUpdateHandler(uint64_t *a1, uint64_t a2)
{
  State = iap2_identification_getState(a1);
  if (State != 6)
  {
    return State != 6;
  }

  IdentificationInfo = iap2_identification_createIdentificationInfo();
  if (IdentificationInfo)
  {
    v6 = iAP2MsgForEachParamDo(a2, 0, iap2_identification_cbIdentificationInfoUpdateParams, IdentificationInfo);
    if (!v6)
    {
      iap2_identification_updateIdentificationInfo(a1, IdentificationInfo);
      goto LABEL_22;
    }

    v7 = v6;
    if (gLogObjects && gNumLogObjects >= 26)
    {
      v8 = *(gLogObjects + 200);
    }

    else
    {
      v8 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v16[0] = 67109120;
    v16[1] = v7;
    v10 = "IdentificationInfoUpdate message processing error: %d\n";
    v11 = v8;
    v12 = 8;
  }

  else
  {
    if (gLogObjects)
    {
      v9 = gNumLogObjects < 26;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v13 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    else
    {
      v13 = *(gLogObjects + 200);
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    LOWORD(v16[0]) = 0;
    v10 = "iAP2MsgIdentificationInfoUpdate: IdentificationInfo invalid\n";
    v11 = v13;
    v12 = 2;
  }

  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, v16, v12);
LABEL_22:
  v14 = IdentificationInfo[27];
  if (v14)
  {
    if (!*v14 || (free(*v14), (v14 = IdentificationInfo[27]) != 0))
    {
      free(v14);
    }
  }

  free(IdentificationInfo);
  return State != 6;
}

uint64_t iap2_identification_checkIdentificationMsgIDs(uint64_t a1, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  IdentificationInfo = iap2_identification_getIdentificationInfo(a1);
  v9 = *(IdentificationInfo + 96);
  v10 = *(IdentificationInfo + 104);
  v20 = 0;
  v11 = iap2_identification_checkRequiredMsgIDs(a1, a2, a3, &v20);
  result = 0;
  v13 = v20;
  if (v20 == 1)
  {
    v19 = v11;
    if (a3)
    {
      v14 = a3;
      v15 = (a2 + 8);
      do
      {
        v16 = *(v15 - 4);
        v17 = *(v15 - 1);
        if (v17 == 1)
        {
          if (!v10)
          {
            goto LABEL_11;
          }

          v18 = v10;
        }

        else
        {
          if (!v9)
          {
            goto LABEL_11;
          }

          v18 = v9;
        }

        if (!CFSetContainsValue(v18, *(v15 - 4)))
        {
LABEL_11:
          if (*v15 == 1)
          {
            iap2_identification_rejectMsgID(a1, v16, v17, 2u);
          }

          goto LABEL_13;
        }

        iap2_identification_acceptMsgID(IdentificationInfo, v16, v17);
LABEL_13:
        v15 += 12;
        --v14;
      }

      while (v14);
    }

    if (v19)
    {
      result = 0;
    }

    else
    {
      result = 2;
    }
  }

  if (a4)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t iap2_identification_checkRequiredMsgIDs(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  LODWORD(v5) = a3;
  IdentificationInfo = iap2_identification_getIdentificationInfo(a1);
  v8 = 0;
  if (v5)
  {
    v9 = *(IdentificationInfo + 96);
    v10 = *(IdentificationInfo + 104);
    v11 = (a2 + 8);
    v12 = 1;
    v5 = v5;
    while (1)
    {
      if (*(v11 - 1) == 1)
      {
        v13 = v10;
        if (v10)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v13 = v9;
        if (v9)
        {
LABEL_7:
          v14 = CFSetContainsValue(v13, *(v11 - 4)) != 0;
          goto LABEL_8;
        }
      }

      v14 = 0;
LABEL_8:
      v8 |= v14;
      v15 = *v11;
      v11 += 12;
      v12 &= v15 ^ 1 | v14;
      if (!--v5)
      {
        goto LABEL_11;
      }
    }
  }

  v12 = 1;
LABEL_11:
  *a4 = v8 & 1;
  return v12 & 1;
}

void iap2_identification_rejectAllMsgIDsForList(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  IdentificationInfo = iap2_identification_getIdentificationInfo(a1);
  if (a3)
  {
    v9 = *(IdentificationInfo + 96);
    v10 = *(IdentificationInfo + 104);
    v11 = a3;
    v12 = (a2 + 4);
    do
    {
      v13 = *(v12 - 2);
      v14 = *v12;
      if (*v12 == 1)
      {
        v15 = v10;
      }

      else
      {
        v15 = v9;
      }

      if (CFSetContainsValue(v15, *(v12 - 2)))
      {
        iap2_identification_rejectMsgID(a1, v13, v14, a4);
      }

      v12 += 3;
      --v11;
    }

    while (v11);
  }
}

void __iap2_identification_identificationInfoHandler_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    __iap2_identification_identificationInfoHandler_block_invoke_cold_1(a1);
  }
}

void __iap2_identification_identificationInfoHandler_block_invoke_76(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 48))
    {
      if (gLogObjects)
      {
        v4 = gNumLogObjects < 26;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        v6 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      else
      {
        v6 = *(gLogObjects + 200);
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 48);
        v14 = 67109120;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IdentificationInfo rejected. Error: %d", &v14, 8u);
      }

      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      iap2_identification_identificationRejected();
    }

    else
    {
      iap2_identification_setIdentificationState(*(a1 + 32), 2);
      v3 = *(a1 + 32);
      iAP2MsgInit((v3 + 15), 7426, v3[24], 0xFFFF, 0, 0);
      if (iap2_sessionControl_sendOutgoingMessage(v3, (v3 + 15)))
      {
        iap2_identification_setIdentificationState(v3, 6);
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 26)
        {
          v5 = *(gLogObjects + 200);
        }

        else
        {
          v5 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 67109120;
          v15 = 1;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IdentificationAccepted processing error : %d\n", &v14, 8u);
        }
      }

      if (iap2_identification_isIdentifiedForCarPlay(v3) && *(iap2_feature_getFeature(v3, 0) + 88) != 0.0)
      {
        iAP2_carPlaySendAllConnectionEvents(v3);
      }

      Feature = iap2_feature_getFeature(*(a1 + 32), 1u);
      if (Feature && (v11 = Feature, v12 = *(a1 + 40), v12 == *(v11 + 8)))
      {
        iap2_identification_releaseRejectMessage(v12);
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 26)
        {
          v13 = *(gLogObjects + 200);
        }

        else
        {
          v13 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Stale pIdentInfo, skip releaseRejectMessage!!", &v14, 2u);
        }
      }
    }
  }
}

uint64_t iap2_identification_isIdentifiedForIncomingMessageID(uint64_t result, int a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = 1;
  if (a2 <= 7424)
  {
    if (a2 > 5)
    {
      goto LABEL_17;
    }

    v4 = 1 << a2;
    goto LABEL_8;
  }

  if (a2 <= 43520)
  {
    if ((a2 - 7425) > 5)
    {
      goto LABEL_17;
    }

    v4 = 1 << (a2 - 1);
LABEL_8:
    if ((v4 & 0x31) != 0)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (a2 == 43521 || a2 == 43523)
  {
    return result;
  }

  if (a2 == 43526)
  {
    result = iap2_identification_getIdentificationInfo(v3);
    if (!result)
    {
      return result;
    }

    v5 = result;
    if (*(result + 96) && iap2_identification_getState(v3) == 6)
    {
      result = *(v5 + 96);
      v6 = 43526;
      return CFSetContainsValue(result, v6) != 0;
    }

    return 0;
  }

LABEL_17:
  result = iap2_identification_getIdentificationInfo(v3);
  if (!result)
  {
    return result;
  }

  v7 = result;
  if (iap2_accAuthentication_getState(v3) != 2 || iap2_identification_getState(v3) != 6)
  {
    return 0;
  }

  result = *(v7 + 96);
  if (result)
  {
    v6 = a2;
    return CFSetContainsValue(result, v6) != 0;
  }

  return result;
}

uint64_t iap2_identification_transportComponents(uint64_t result)
{
  if (result)
  {
    result = iap2_identification_getIdentificationInfo(result);
    if (result)
    {
      return *(result + 72);
    }
  }

  return result;
}

uint64_t _startFeatureFromDevice_0(uint64_t *a1)
{
  kdebug_trace();
  if (!iap2_identification_getState(a1))
  {
    iAP2MsgInit((a1 + 15), 7424, a1[24], 0xFFFF, 0, 0);
    if (iap2_sessionControl_sendOutgoingMessage(a1, (a1 + 15)))
    {
      v2 = 1;
      iap2_identification_setIdentificationState(a1, 1);
      return v2;
    }

    if (gLogObjects && gNumLogObjects >= 26)
    {
      v4 = *(gLogObjects + 200);
    }

    else
    {
      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "StartIdentification processing error!", v5, 2u);
    }
  }

  return 0;
}

BOOL _parseIdentificationParams_2(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v36 = 0;
  if (a1 && (IdentificationInfo = iap2_identification_getIdentificationInfo(a1)) != 0)
  {
    v7 = IdentificationInfo;
    ParamID = iAP2MsgGetParamID(a3);
    switch(ParamID)
    {
      case 0u:
        v10 = (v7 + 8);
        v9 = *(v7 + 8);
        if (v9)
        {
          goto LABEL_9;
        }

        goto LABEL_10;
      case 1u:
        v10 = (v7 + 16);
        v9 = *(v7 + 16);
        if (!v9)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      case 2u:
        v10 = (v7 + 24);
        v9 = *(v7 + 24);
        if (!v9)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      case 3u:
        v10 = (v7 + 32);
        v9 = *(v7 + 32);
        if (!v9)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      case 4u:
        v10 = (v7 + 40);
        v9 = *(v7 + 40);
        if (v9)
        {
          goto LABEL_9;
        }

        goto LABEL_10;
      case 5u:
        v10 = (v7 + 48);
        v9 = *(v7 + 48);
        if (!v9)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      case 6u:
        DataAsData = iAP2MsgGetDataAsData(a3, &v36);
        if (v36)
        {
          v20 = *(v7 + 200);
          *(v7 + 168) = 1;
          CFStringAppendFormat(v20, 0, @" [msgID: 0x%04x Reason: %s]", 0xFFFFLL, "ParamParseError");
          v21 = v7;
          v22 = 0;
          goto LABEL_28;
        }

        v30 = DataAsData;
        ParamValueLen = iAP2MsgGetParamValueLen(a3);
        v32 = v7;
        v33 = v30;
        v34 = 1;
        goto LABEL_58;
      case 7u:
        v23 = iAP2MsgGetDataAsData(a3, &v36);
        if (v36)
        {
          v24 = *(v7 + 208);
          *(v7 + 169) = 1;
          CFStringAppendFormat(v24, 0, @" [msgID: 0x%04x Reason: %s]", 0xFFFFLL, "ParamParseError");
          v21 = v7;
          v22 = 1;
LABEL_28:
          iap2_identification_addMsgListParamWithDirection(v21, v22);
        }

        else
        {
          v35 = v23;
          ParamValueLen = iAP2MsgGetParamValueLen(a3);
          v32 = v7;
          v33 = v35;
          v34 = 0;
LABEL_58:
          v17 = iap2_identification_processMessagesSet(v32, v33, ParamValueLen, v34);
LABEL_39:
          v36 = v17;
        }

LABEL_40:
        v27 = *(v7 + 216);
        if (*(v27 + 8) > ParamID)
        {
          ++*(*v27 + 4 * ParamID);
        }

        break;
      case 0xCu:
        v10 = (v7 + 80);
        v9 = *(v7 + 80);
        if (!v9)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      case 0xDu:
        *buf = 0xAAAAAAAAAAAAAAAALL;
        v36 = iap2_identification_processStringParam(v7, a3, buf);
        if (v36)
        {
          _addRejectParam(v7, 13, 8u);
        }

        else
        {
          Mutable = *(v7 + 88);
          if (!Mutable)
          {
            Mutable = CFSetCreateMutable(kCFAllocatorDefault, 1, &kCFTypeSetCallBacks);
            *(v7 + 88) = Mutable;
          }

          if (CFSetContainsValue(Mutable, *buf))
          {
            _addRejectParam(v7, 13, 4u);
            v36 = 1;
          }

          else
          {
            CFSetAddValue(*(v7 + 88), *buf);
          }

          if (*buf)
          {
            CFRelease(*buf);
          }
        }

        goto LABEL_40;
      case 0xEu:
        v11 = cbIdentificationInfoSerialTransportComponentParams;
        v12 = a1;
        v13 = v7;
        v14 = a2;
        v15 = a3;
        v16 = 0;
        goto LABEL_38;
      case 0xFu:
        v11 = cbIdentificationInfoUSBDeviceTransportComponentParams;
        v12 = a1;
        v13 = v7;
        v14 = a2;
        v15 = a3;
        v16 = 1;
        goto LABEL_38;
      case 0x10u:
        v11 = cbIdentificationInfoUSBHostTransportComponentParams;
        v12 = a1;
        v13 = v7;
        v14 = a2;
        v15 = a3;
        v16 = 2;
        goto LABEL_38;
      case 0x11u:
        v11 = cbIdentificationInfoBluetoothTransportComponentParams;
        v12 = a1;
        v13 = v7;
        v14 = a2;
        v15 = a3;
        v16 = 3;
        goto LABEL_38;
      case 0x13u:
        v25 = v7;
        v26 = 19;
        goto LABEL_48;
      case 0x18u:
        v11 = cbIdentificationInfoWirelessCarPlayTransportComponentParams;
        v12 = a1;
        v13 = v7;
        v14 = a2;
        v15 = a3;
        v16 = 4;
        goto LABEL_38;
      case 0x1Au:
        v11 = cbIdentificationInfoBluetoothLETransportComponentParams;
        v12 = a1;
        v13 = v7;
        v14 = a2;
        v15 = a3;
        v16 = 5;
LABEL_38:
        v17 = iap2_identification_parseTransportComponent(v12, v13, v14, v15, v16, v11);
        goto LABEL_39;
      case 0x22u:
        v10 = (v7 + 64);
        v9 = *(v7 + 64);
        if (v9)
        {
LABEL_9:
          CFRelease(v9);
          *v10 = 0;
        }

LABEL_10:
        v17 = iap2_identification_processStringParam(v7, a3, v10);
        goto LABEL_39;
      default:
        if (gLogObjects && gNumLogObjects >= 26)
        {
          v18 = *(gLogObjects + 200);
        }

        else
        {
          v18 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = ParamID;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "iAP2MsgIdentificationInfo unhandled paramID:%04X\n", buf, 8u);
        }

        v25 = v7;
        v26 = ParamID;
LABEL_48:
        _addRejectParam(v25, v26, 1u);
        v36 = 1;
        goto LABEL_40;
    }
  }

  else
  {
    v36 = 1;
  }

  return v36 == 0;
}

uint64_t OUTLINED_FUNCTION_30_10(uint64_t a1)
{

  return iap2_feature_getFeature(a1, 1u);
}

unint64_t platform_timeSync_getAccessoryTime(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 59)
  {
    v2 = *(gLogObjects + 464);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "platform_timeSync_getAccessoryTime";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[#<Undefined>] %s entering get time from acc", &v5, 0xCu);
  }

  return accFeatureHandlers_invokeHandler(0, 64, a1);
}

unint64_t platform_timeSync_sendHostTimeToAccessory(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 59)
  {
    v2 = *(gLogObjects + 464);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "platform_timeSync_sendHostTimeToAccessory";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[#<Undefined>] %s entering send host time to accessory", &v5, 0xCu);
  }

  return accFeatureHandlers_invokeHandler(0, 65, a1);
}

void platform_timeSync_setSystemTime(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 59)
  {
    v2 = *(gLogObjects + 464);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "platform_timeSync_setSystemTime";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[#<Undefined>] %s sending time to CoreTime plugin", &v5, 0xCu);
  }

  v4 = +[ACCTimeSyncServer sharedServer];
  [v4 setSystemTime:a1];
}

void platform_timeSync_startServer()
{
  v0 = +[ACCTimeSyncServer sharedServer];
  if (gLogObjects && gNumLogObjects >= 59)
  {
    v1 = *(gLogObjects + 464);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v1 = &_os_log_default;
    v2 = &_os_log_default;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = [v0 isServerActive];
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[#<Undefined>] is TimeSync Server active:%u", v3, 8u);
  }
}

void iap2_sessionLog_registerForNotifications(uint64_t a1)
{
  acc_platform_loggingProtocol_registerForPrefsNotification();
  acc_platform_loggingProtocol_registerForStartCarPlayLoggingNotification(**(a1 + 32), a1);
  v2 = **(a1 + 32);

  acc_platform_loggingProtocol_registerForStopCarPlayLoggingNotification(v2, a1);
}

uint64_t _checkIdentificationInfo_11(uint64_t a1)
{
  v6 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &gskMsgOOBBTPairingMainList, 5u, &v6);
  v3 = v2;
  if (v6 == 1 && v2 == 0)
  {
    iap2_features_createFeature(a1, 0xFu);
    iap2_identification_setIdentifiedForFeature(a1);
  }

  return v3;
}

__n128 OUTLINED_FUNCTION_15_22()
{
  result = *(v2 - 256);
  *(v2 - 160) = result.n128_u32[0];
  *(v2 - 156) = v1;
  *(v2 - 148) = 1024;
  *(v2 - 146) = v0;
  return result;
}

CFStringRef acc_userNotifications_createIdentifier(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@_%@", a1, a2);
  }

  else
  {
    return 0;
  }
}

void *logObjectForModule_39()
{
  v0 = gLogObjects;
  if (gLogObjects)
  {
    v1 = gNumLogObjects < 16;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    return *(gLogObjects + 120);
  }

  v2 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    iap2_sessionFileTransfer_deleteFileTransfer_cold_1(v0);
  }

  return v2;
}

void _runFSM(uint64_t a1)
{
  BytePtr = CFDataGetBytePtr(*a1);
  v3 = *(a1 + 8);
  v4 = gLogObjects;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 16;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      iap2_sessionFileTransfer_deleteFileTransfer_cold_1(v4);
    }
  }

  else
  {
    v6 = *(gLogObjects + 120);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    _runFSM_cold_2(&BytePtr[v3], (a1 + 8), v6);
  }

  if (*(a1 + 25))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(a1 + 16);
      v10 = *(v9 + v7);
      if (v10 == 4)
      {
        acc_protocolParser_iAP2_run(a1, v9 + v7, &BytePtr[v3]);
      }

      else if (v10 == 3)
      {
        acc_protocolParser_iAP1_run(a1, v9 + v7, &BytePtr[v3]);
      }

      ++v8;
      v7 += 16;
    }

    while (v8 < *(a1 + 25));
  }

  ++*(a1 + 8);
}