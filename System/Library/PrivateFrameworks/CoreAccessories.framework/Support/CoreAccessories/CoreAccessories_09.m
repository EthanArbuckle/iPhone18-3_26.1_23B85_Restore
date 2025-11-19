void *t56_endpoint_create(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x108uLL, 0x10F00408241FA1CuLL);
    v3 = v2;
    if (v2)
    {
      *v2 = a1;
      v4 = *(a1 + 16);
      if (v4)
      {
        v4 = CFRetain(v4);
      }

      v3[2] = v4;
      v5 = *(a1 + 8);
      if (v5)
      {
        v5 = CFRetain(v5);
      }

      v3[1] = v5;
      *(v3 + 128) = 2000;
      v6 = malloc_type_calloc(1uLL, 0x7D0uLL, 0xDEF42F3CuLL);
      v3[31] = v6;
      *(v3 + 129) = 0;
      *(v3 + 27) = 0u;
      *(v3 + 29) = 0u;
      *(v3 + 9) = 0u;
      *(v3 + 10) = 0u;
      *(v3 + 11) = 0u;
      *(v3 + 12) = 0u;
      *(v3 + 52) = 0;
      if (v6)
      {
        Copy = v3[2];
        if (Copy)
        {
          Copy = CFStringCreateCopy(kCFAllocatorDefault, Copy);
          v8 = v3[31];
        }

        else
        {
          v8 = v6;
        }

        v3[17] = v3 + 5;
        if (!t56_protocol_init((v3 + 5), Copy, 0, 1, 1u, v8, *(v3 + 128)))
        {
          v9 = dispatch_queue_create("T56Endpoint", 0);
          v3[4] = v9;
          if (v9)
          {
            dispatch_set_context(v9, v3);
            dispatch_set_finalizer_f(v3[4], _t56_endpoint_dispatchQueueFinalizer);
            v10 = 0;
            while (1)
            {
              v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3[4]);
              v12 = &v3[v10];
              v12[18] = v11;
              if (!v11)
              {
                break;
              }

              dispatch_source_set_timer(v11, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
              v13 = v12[18];
              handler[0] = _NSConcreteStackBlock;
              handler[1] = 0x40000000;
              handler[2] = __t56_endpoint_create_block_invoke;
              handler[3] = &__block_descriptor_tmp_22;
              handler[4] = v3;
              v22 = v10;
              dispatch_source_set_event_handler(v13, handler);
              dispatch_activate(v12[18]);
              if (++v10 == 4)
              {
                acc_platform_packetLogging_logEvent(*v3, "ATTACH", "T56 accessory attached!", v14, v15, v16, v17, v18, v20);
                return v3;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    t56_endpoint_create_cold_1(&v23);
    v3 = v23;
  }

  t56_endpoint_create_cold_2(v3, &v23);
  return v23;
}

void *logObjectForModule_40()
{
  if (gLogObjects && gNumLogObjects >= 61)
  {
    return *(gLogObjects + 480);
  }

  v0 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    platform_connectionInfo_configStreamGetCategories_cold_2();
  }

  return v0;
}

void _t56_endpoint_dispatchQueueFinalizer(uint64_t *a1)
{
  if (a1)
  {
    t56_protocol_cleanup(a1[17], 0, 0);
    for (i = 18; i != 22; ++i)
    {
      v3 = a1[i];
      if (v3)
      {
        dispatch_release(v3);
        a1[i] = 0;
      }
    }

    v4 = a1[31];
    if (v4)
    {
      free(v4);
    }

    free(a1);
  }

  else
  {
    _t56_endpoint_dispatchQueueFinalizer_cold_1();
  }
}

void __t56_endpoint_create_block_invoke(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v2 = *(gLogObjects + 480);
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
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 8 * v3 + 176) != 0;
    v9[0] = 67109376;
    v9[1] = v4;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "T56 timer source fired!!! T56TimerCallback(%d), timerID %d", v9, 0xEu);
  }

  v5 = *(a1 + 32);
  v6 = v5 + 8 * *(a1 + 40);
  v7 = *(v6 + 176);
  if (v7)
  {
    v8 = *(v6 + 216);
    v7(*(v5 + 136));
    *(*(a1 + 32) + 8 * *(a1 + 40) + 176) = 0;
  }
}

void __t56_endpoint_publish_block_invoke(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v2 = *(gLogObjects + 480);
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
    v3 = *(a1 + 40);
    v4 = *(**(a1 + 32) + 24);
    v6[0] = 67109378;
    v6[1] = v4;
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "T56 publish: transportType %{coreacc:ACCEndpoint_TransportType_t}d, parentEndpointUUID %@, after delay, call t56_protocol_start", v6, 0x12u);
  }

  t56_protocol_start(*(*(a1 + 32) + 136));
  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t t56_endpoint_destroy(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *a1;
    if (*a1)
    {
      acc_platform_packetLogging_logEvent(*v9, "DETACH", "T56 accessory detached!", a4, a5, a6, a7, a8, v13);
      dispatch_release(*(v9 + 32));
      *a1 = 0;
      return 1;
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 61)
      {
        v11 = *(gLogObjects + 480);
      }

      else
      {
        v11 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      result = 0;
      if (v12)
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "T56 Endpoint Destroy. *ppProtocolEndpoint is null!", &v13, 2u);
        return 0;
      }
    }
  }

  else
  {
    t56_endpoint_destroy_cold_2(&v14);
    return v14;
  }

  return result;
}

void __t56_endpoint_processIncomingData_block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  if ((_t56_endpoint_handleMessage(*(a1 + 32), *(a1 + 40)) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 61)
    {
      v3 = *(gLogObjects + 480);
    }

    else
    {
      v3 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __t56_endpoint_processIncomingData_block_invoke_cold_2(a1, v2, v3);
    }
  }

  if (*v2)
  {
    CFRelease(*v2);
  }
}

uint64_t _t56_endpoint_handleMessage(uint64_t a1, CFDataRef theData)
{
  if (a1)
  {
    if (*(a1 + 248) && *(a1 + 256))
    {
      v3 = *(a1 + 136);
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);
      return t56_protocol_processIncomingData(v3, BytePtr, Length) < 2;
    }

    else
    {
      _t56_endpoint_handleMessage_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    _t56_endpoint_handleMessage_cold_2(&v8);
    return v8;
  }
}

uint64_t t56_endpoint_sendOutgoingData(uint64_t a1, const UInt8 *a2, unsigned int a3)
{
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v6 = *(gLogObjects + 480);
  }

  else
  {
    v6 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    if (!a1)
    {
      _t56_endpoint_handleMessage_cold_2(&v10);
      return v10;
    }

    if (a2)
    {
      goto LABEL_9;
    }

LABEL_14:
    t56_endpoint_sendOutgoingData_cold_5(&v12);
    return v12;
  }

  t56_endpoint_sendOutgoingData_cold_3(a1);
  if (!a2)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (a3)
  {
    v7 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, a2, a3, kCFAllocatorNull);
    v8 = t56_endpoint_sendOutgoingDataCF(a1, v7);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    t56_endpoint_sendOutgoingData_cold_4(&v11);
    return v11;
  }

  return v8;
}

uint64_t iAP2PacketCreateTimeSyncPacket(uint64_t a1, char a2, char a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[0] = a2;
  v9[1] = HIBYTE(a5);
  v9[2] = BYTE6(a5);
  v9[3] = BYTE5(a5);
  v9[4] = BYTE4(a5);
  v9[5] = BYTE3(a5);
  v9[6] = BYTE2(a5);
  v9[7] = BYTE1(a5);
  v9[8] = a5;
  v9[9] = HIBYTE(a6);
  v9[10] = BYTE6(a6);
  v9[11] = BYTE5(a6);
  v9[12] = BYTE4(a6);
  v9[13] = BYTE3(a6);
  v9[14] = BYTE2(a6);
  v9[15] = BYTE1(a6);
  v9[16] = a6;
  v9[17] = HIBYTE(a7);
  v9[18] = BYTE6(a7);
  v9[19] = BYTE5(a7);
  v9[20] = BYTE4(a7);
  v9[21] = BYTE3(a7);
  v9[22] = BYTE2(a7);
  v9[23] = BYTE1(a7);
  v9[24] = a7;
  if (a4)
  {
    LOBYTE(a4) = *a4;
    v7 = 68;
  }

  else
  {
    v7 = 4;
  }

  return iAP2PacketCreate(a1, v7, a3, a4, v9, 25, 0, 1);
}

id logObjectForModule_41()
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v0 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1_7();
    }

    v0 = &_os_log_default;
    v1 = &_os_log_default;
  }

  return v0;
}

uint64_t mfi4Auth_protocol_authSetupStart(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    mfi4Auth_protocol_authSetupStart_cold_3();
    return 1;
  }

  if (*(a1 + 30) == 1)
  {
    mfi4Auth_protocol_authSetupStart_cold_2();
    return 1;
  }

  if (!a2)
  {
    mfi4Auth_protocol_authSetupStart_cold_1();
    return 1;
  }

  return mfi4Auth_protocol_initMessage_RequestAuthSetup(a1);
}

void mfi4Auth_protocol_handleAuthSessionClose(uint64_t a1, int a2)
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v4 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "mfi4Auth_protocol_handleAuthSessionClose";
    v17 = 1024;
    v18 = a1 != 0;
    v19 = 1024;
    v20 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: authSession(%d), keepOpen %d", &v15, 0x18u);
  }

  if (a1)
  {
    if (*(a1 + 30) == 1)
    {
      mfi4Auth_protocol_handleAuthSessionClose_cold_6();
    }

    else
    {
      Copy = CFStringCreateCopy(kCFAllocatorDefault, *a1);
      if (Copy)
      {
        v7 = Copy;
        EndpointWithUUID = acc_manager_getEndpointWithUUID(Copy);
        if (EndpointWithUUID)
        {
          v9 = EndpointWithUUID;
          v10 = EndpointWithUUID[7];
          if (v10)
          {
            if (acc_endpoint_getTransportType(*v10) == 13)
            {
              if (a2)
              {
                if (gLogObjects && gNumLogObjects >= 56)
                {
                  v11 = *(gLogObjects + 440);
                }

                else
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
                  }

                  v11 = &_os_log_default;
                  v12 = &_os_log_default;
                }

                if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                {
                  v15 = 134217984;
                  v16 = 10;
                  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handleAuthSessionClose: Keep session open for %llds", &v15, 0xCu);
                }

                v13 = *(v10 + 32);
                v14 = dispatch_time(0, 10000000000);
                dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
              }

              else
              {
                dispatch_source_set_timer(*(v10 + 32), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
                acc_endpoint_setProperty(v9, kCFACCProperties_Endpoint_NFC_RequestSessionOpen, kCFBooleanFalse);
              }
            }
          }

          else
          {
            mfi4Auth_protocol_handleAuthSessionClose_cold_3();
          }
        }

        else
        {
          mfi4Auth_protocol_handleAuthSessionClose_cold_4();
        }

        CFRelease(v7);
      }

      else
      {
        mfi4Auth_protocol_handleAuthSessionClose_cold_5();
      }
    }
  }

  else
  {
    mfi4Auth_protocol_handleAuthSessionClose_cold_7();
  }
}

uint64_t mfi4Auth_protocol_handle_AuthSetup(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  inited = 1;
  if (a1)
  {
    if (*(a1 + 30) == 1)
    {
      v29 = logObjectForModule_41();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_handle_AuthSetup_cold_20();
      }
    }

    else if (a2)
    {
      v33 = 0;
      *(a1 + 145) = 0;
      v6 = a1 + 145;
      *(a1 + 147) = 0;
      *(a1 + 152) = 0;
      FirstParam = iAP2MsgGetFirstParam(a2, 0);
      v8 = 0;
      v9 = (a1 + 144);
      while (FirstParam)
      {
        ParamID = iAP2MsgGetParamID(FirstParam);
        if (ParamID > 2)
        {
          switch(ParamID)
          {
            case 3:
              *(a1 + 202) = iAP2MsgGetDataAsU16(FirstParam, &inited);
              if (inited)
              {
                v29 = logObjectForModule_41();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  mfi4Auth_protocol_handle_AuthSetup_cold_5();
                }

                goto LABEL_64;
              }

              v8 |= 8u;
              break;
            case 4:
              DataAsArrayU8 = iAP2MsgGetDataAsArrayU8(FirstParam, &inited, (a1 + 206), 33);
              if (inited)
              {
                v29 = logObjectForModule_41();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  mfi4Auth_protocol_handle_AuthSetup_cold_3();
                }

                goto LABEL_64;
              }

              if (DataAsArrayU8 != 33)
              {
                inited = -1;
                v29 = logObjectForModule_41();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  mfi4Auth_protocol_handle_AuthSetup_cold_4();
                }

                goto LABEL_64;
              }

              v8 |= 0x10u;
              break;
            case 5:
              DataAsU8 = iAP2MsgGetDataAsU8(FirstParam, &inited);
              if (inited)
              {
                v29 = logObjectForModule_41();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  mfi4Auth_protocol_handle_AuthSetup_cold_1();
                }

                goto LABEL_64;
              }

              v13 = *(a1 + 152);
              if (v13 >= 3)
              {
                inited = -1;
                v29 = logObjectForModule_41();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  mfi4Auth_protocol_handle_AuthSetup_cold_2();
                }

                goto LABEL_64;
              }

              *(v6 + v13) = DataAsU8;
              ++*(a1 + 152);
              break;
          }
        }

        else if (ParamID)
        {
          if (ParamID == 1)
          {
            v15 = iAP2MsgGetDataAsU8(FirstParam, &inited);
            *(a1 + 160) = v15;
            if (inited)
            {
              v29 = logObjectForModule_41();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                mfi4Auth_protocol_handle_AuthSetup_cold_8();
              }

              goto LABEL_64;
            }

            if (v15 >= 4)
            {
              inited = -1;
              v29 = logObjectForModule_41();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                mfi4Auth_protocol_handle_AuthSetup_cold_9((a1 + 160));
              }

              goto LABEL_64;
            }

            v8 |= 2u;
          }

          else if (ParamID == 2)
          {
            v11 = iAP2MsgGetDataAsU8(FirstParam, &inited);
            if (inited)
            {
              v29 = logObjectForModule_41();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                mfi4Auth_protocol_handle_AuthSetup_cold_6();
              }

              goto LABEL_64;
            }

            if (v11)
            {
              inited = -1;
              v29 = logObjectForModule_41();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                mfi4Auth_protocol_handle_AuthSetup_cold_7();
              }

              goto LABEL_64;
            }

            v8 |= 4u;
          }
        }

        else
        {
          v14 = iAP2MsgGetDataAsU8(FirstParam, &inited);
          *v9 = v14;
          if (inited)
          {
            v29 = logObjectForModule_41();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              mfi4Auth_protocol_handle_AuthSetup_cold_10();
            }

            goto LABEL_64;
          }

          if (*(a1 + 112) > v14 || v14 > *(a1 + 113))
          {
            inited = -1;
            if (gLogObjects && gNumLogObjects >= 56)
            {
              v29 = *(gLogObjects + 440);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
              }

              v29 = &_os_log_default;
              v30 = &_os_log_default;
            }

            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              mfi4Auth_protocol_handle_AuthSetup_cold_12(v9);
            }

            goto LABEL_64;
          }

          v8 |= 1u;
        }

        FirstParam = iAP2MsgGetNextParamWithError(a2, 0, FirstParam, &v33);
        if (v33 == 1)
        {
          goto LABEL_32;
        }
      }

      if ((~v8 & 7) != 0)
      {
LABEL_32:
        inited = -1;
        goto LABEL_77;
      }

      if (gLogObjects && gNumLogObjects >= 56)
      {
        v17 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }

        v17 = &_os_log_default;
        v18 = &_os_log_default;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 160);
        *buf = 67109120;
        v36 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_AuthSetup: authType:%x", buf, 8u);
      }

      v20 = *(a1 + 160);
      if (v20 == 2)
      {
        if ((~v8 & 0x18) != 0)
        {
          inited = -1;
          v29 = logObjectForModule_41();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_protocol_handle_AuthSetup_cold_14();
          }
        }

        else
        {
          do
          {
            v21 = arc4random();
            *(a1 + 204) = v21;
            v22 = *(a1 + 202);
            *(a1 + 200) = v22 ^ v21;
          }

          while (v22 == v21 || (v22 ^ v21) == 0xFFFF);
          v24 = *(a1 + 120) + *(a1 + 152) + *(a1 + 136);
          v25 = malloc_type_malloc(v24 + 3, 0x6A4A35B4uLL);
          if (v25)
          {
            v26 = v25;
            *v25 = *(a1 + 113);
            v27 = v25 + 1;
            memcpy(v25 + 1, (a1 + 114), *(a1 + 120));
            memcpy(&v27[*(a1 + 120)], (a1 + 128), *(a1 + 136));
            v26[*(a1 + 120) + 1 + *(a1 + 136)] = *(a1 + 144);
            v26[*(a1 + 120) + 2 + *(a1 + 136)] = *(a1 + 160);
            memcpy(&v26[*(a1 + 120) + 3 + *(a1 + 136)], (a1 + 145), *(a1 + 152));
            inited = mfi4Auth_protocol_initSigmaContext(a1, v26, v24 + 3);
            free(v26);
            if (inited)
            {
              v29 = logObjectForModule_41();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                mfi4Auth_protocol_handle_AuthSetup_cold_15();
              }
            }

            else
            {
              result = mfi4Auth_protocol_initMessage_AuthStart(a1, a3);
              inited = result;
              if (!result)
              {
                return result;
              }

              v29 = logObjectForModule_41();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                mfi4Auth_protocol_handle_AuthSetup_cold_16();
              }
            }
          }

          else
          {
            inited = -1;
            v29 = logObjectForModule_41();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              mfi4Auth_protocol_handle_AuthSetup_cold_17();
            }
          }
        }
      }

      else
      {
        if (v20 != 1)
        {
          if (!v20)
          {
            *(a1 + 568) = 0u;
            arc4random_buf((a1 + 568), 0x10uLL);
            mfi4Auth_protocol_initMessage_RequestAuthChallengeResponse(a1);
          }

          return 0;
        }

        v31 = 0;
        *(a1 + 238) = 0;
        *(a1 + 222) = 0u;
        *(a1 + 206) = 0u;
        while (1)
        {
          *(a1 + 202) = v31;
          if (v31 != 0xFFFF && v31 != 0)
          {
            break;
          }

          v31 = arc4random();
        }

        result = mfi4Auth_protocol_initMessage_RequestAuthStart(a1);
        inited = result;
        if (!result)
        {
          return result;
        }

        v29 = logObjectForModule_41();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_handle_AuthSetup_cold_18();
        }
      }
    }

    else
    {
      v29 = logObjectForModule_41();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_handle_AuthSetup_cold_19();
      }
    }
  }

  else
  {
    v29 = logObjectForModule_41();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_handle_AuthSetup_cold_21();
    }
  }

LABEL_64:

  if (inited)
  {
LABEL_77:
    mfi4Auth_protocol_handle_AuthState(a1);
    return inited;
  }

  return 0;
}

uint64_t mfi4Auth_protocol_initMessage_AuthStart(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    v12 = logObjectForModule_41();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_initMessage_AuthStart_cold_5();
    }

    goto LABEL_15;
  }

  if (*(a1 + 30) == 1)
  {
    v12 = logObjectForModule_41();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_initMessage_AuthStart_cold_4();
    }

    goto LABEL_15;
  }

  if (!a2)
  {
    v12 = logObjectForModule_41();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_initMessage_AuthStart_cold_3();
    }

LABEL_15:
    v10 = 1;
LABEL_16:

LABEL_17:
    mfi4Auth_protocol_initMessage_AuthStart_cold_6();
    return v10;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = v4;
  v22 = v4;
  v23 = v4;
  v24 = v4;
  v25 = v4;
  v26 = v4;
  v15 = v4;
  v16 = v4;
  v17 = v4;
  v18 = v4;
  v19 = v4;
  v20 = v4;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5 = *(a1 + 96);
  v6 = ccsigma_sign(v5, &v27, 32, a1 + 308, *(a1 + 104));
  if (v6)
  {
    v10 = v6;
    v12 = logObjectForModule_41();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_initMessage_AuthStart_cold_1();
    }

    goto LABEL_16;
  }

  v7 = *(a1 + 324);
  v21 = *(a1 + 308);
  v22 = v7;
  v23 = v27;
  v24 = v28;
  v25 = v29;
  v26 = v30;
  v8 = ccsigma_seal(v5, 0, 1uLL, 0, 0, 96, &v21, &v15, &v14);
  if (v8)
  {
    v10 = v8;
    v12 = logObjectForModule_41();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_initMessage_AuthStart_cold_2();
    }

    goto LABEL_16;
  }

  v13[2] = v17;
  v13[3] = v18;
  v13[4] = v19;
  v13[5] = v20;
  v13[0] = v15;
  v13[1] = v16;
  v13[6] = v14;
  v9 = malloc_type_malloc(0x48uLL, 0x109004066C3AFE2uLL);
  *a2 = v9;
  if (!v9)
  {
    v10 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  iAP2MsgInitWithSom(v9, 0, 20753, *(a1 + 16), *(a1 + 24), 0, 0);
  iAP2MsgAddU16Param(*a2, 0, 0, *(a1 + 204));
  iAP2MsgAddArrayU8Param(*a2, 0, 1, (a1 + 239), 0x21u);
  iAP2MsgAddArrayU8Param(*a2, 0, 2, v13, 0x70u);
  v10 = 0;
  *(a1 + 28) = 20753;
  return v10;
}

uint64_t mfi4Auth_protocol_handle_AuthSetupFailed(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 30) == 1)
    {
      mfi4Auth_protocol_handle_AuthSetupFailed_cold_2();
    }

    else if (a2)
    {
      mfi4Auth_protocol_handle_AuthState(a1);
    }

    else
    {
      mfi4Auth_protocol_handle_AuthSetupFailed_cold_1();
    }
  }

  else
  {
    mfi4Auth_protocol_handle_AuthSetupFailed_cold_3();
  }

  return 0;
}

uint64_t mfi4Auth_protocol_handle_AuthStart(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 30) == 1)
    {
      v3 = logObjectForModule_41();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_initMessage_AuthStart_cold_4();
      }
    }

    else
    {
      if (a2)
      {
        return 0;
      }

      v3 = logObjectForModule_41();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_handle_AuthStart_cold_1();
      }
    }
  }

  else
  {
    v3 = logObjectForModule_41();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_initMessage_AuthStart_cold_5();
    }
  }

  return 1;
}

uint64_t mfi4Auth_protocol_handle_RequestAuthCert(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  inited = 1;
  v29 = 0;
  if (!a1)
  {
    mfi4Auth_protocol_handle_RequestAuthCert_cold_6();
LABEL_69:
    v17 = 0;
    goto LABEL_50;
  }

  if (*(a1 + 30) == 1)
  {
    mfi4Auth_protocol_handle_RequestAuthCert_cold_5();
    goto LABEL_69;
  }

  if (!a2)
  {
    mfi4Auth_protocol_handle_RequestAuthCert_cold_4();
    goto LABEL_69;
  }

  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  v28 = v2;
  if (!FirstParam)
  {
    LOBYTE(v6) = 0;
LABEL_53:
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v25 = *(gLogObjects + 440);
      v2 = v28;
    }

    else
    {
      v2 = v28;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v25 = &_os_log_default;
      v26 = &_os_log_default;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      mfi4Auth_protocol_handle_RequestAuthCert_cold_3(v6, v25);
    }

    if ((v6 - 3) <= 0xFDu)
    {
      v17 = 0;
      inited = -1;
      goto LABEL_71;
    }

    v17 = 0;
    inited = mfi4Auth_protocol_initMessage_AuthCert(v2);
    if (inited)
    {
      goto LABEL_71;
    }

LABEL_63:
    if (v17)
    {
      goto LABEL_64;
    }

    return inited;
  }

  v5 = FirstParam;
  v6 = 0;
  v7 = (v2 + 308);
  while (1)
  {
    ParamID = iAP2MsgGetParamID(v5);
    v9 = gLogObjects;
    v10 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v11 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v9;
        *&buf[12] = 1024;
        *&buf[14] = v10;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v12 = &_os_log_default;
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *&buf[4] = ParamID;
      *&buf[8] = 1024;
      *&buf[10] = ParamID;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "RequestAuthCert: paramId %d (0x%x)", buf, 0xEu);
    }

    if (ParamID != 1)
    {
      break;
    }

    memset(buf, 0, 20);
    if (iAP2MsgGetDataAsArrayU8(v5, &inited, buf, 20) != 20)
    {
      goto LABEL_47;
    }

    v18 = *(v28 + 360);
    v19 = *(v28 + 368);
    v17 = SecCertificateCreateWithBytes();
    if (!v17)
    {
      goto LABEL_48;
    }

    SubjectKeyID = SecCertificateGetSubjectKeyID();
    if (!SubjectKeyID)
    {
      goto LABEL_48;
    }

    BytePtr = CFDataGetBytePtr(SubjectKeyID);
    if (*buf != *BytePtr || *&buf[8] != *(BytePtr + 1) || *&buf[16] != *(BytePtr + 4))
    {
      mfi4Auth_protocol_handle_RequestAuthCert_cold_1(&inited);
      goto LABEL_49;
    }

    v6 |= 2u;
LABEL_42:
    NextParamWithError = iAP2MsgGetNextParamWithError(a2, 0, v5, &v29);
    if (v29 == 1)
    {
      goto LABEL_48;
    }

    v5 = NextParamWithError;
    if (v17)
    {
      CFRelease(v17);
    }

    if (!v5)
    {
      goto LABEL_53;
    }
  }

  if (ParamID)
  {
    v17 = 0;
    goto LABEL_42;
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v13;
  *&buf[16] = v13;
  if (iAP2MsgGetDataAsArrayU8(v5, &inited, buf, 32) == 32)
  {
    v14 = *v7 == *buf && v7[1] == *&buf[8];
    v15 = v14 && v7[2] == *&buf[16];
    if (v15 && v7[3] == *&buf[24])
    {
      v17 = 0;
      v6 |= 1u;
      goto LABEL_42;
    }
  }

LABEL_47:
  v17 = 0;
LABEL_48:
  inited = -1;
LABEL_49:
  v2 = v28;
LABEL_50:
  if (!inited)
  {
    goto LABEL_63;
  }

LABEL_71:
  mfi4Auth_protocol_handle_AuthState(v2);
  if (!v17)
  {
    return inited;
  }

LABEL_64:
  CFRelease(v17);
  return inited;
}

uint64_t mfi4Auth_protocol_handle_AuthCert(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v79 = 1;
  v78 = 0;
  size = 0;
  if (!a1)
  {
    mfi4Auth_protocol_handle_AuthCert_cold_22();
LABEL_174:
    CertificateRefWithBytes = 0;
LABEL_175:
    v40 = 0;
    v39 = 0;
    goto LABEL_176;
  }

  if (*(a1 + 30) == 1)
  {
    mfi4Auth_protocol_handle_AuthCert_cold_21();
    goto LABEL_174;
  }

  CertificateRefWithBytes = a2;
  if (!a2)
  {
    mfi4Auth_protocol_handle_AuthCert_cold_20();
    goto LABEL_175;
  }

  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  v6 = 0;
  v7 = 0;
  DataAsData = 0;
  DataAsU8 = 13;
  while (FirstParam)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    switch(ParamID)
    {
      case 2:
        DataAsArrayU8 = iAP2MsgGetDataAsArrayU8(FirstParam, &v79, (a1 + 288), 16);
        if (v79)
        {
LABEL_171:
          mfi4Auth_protocol_handle_AuthCert_cold_1();
          goto LABEL_174;
        }

        if (DataAsArrayU8 != 16)
        {
          mfi4Auth_protocol_handle_AuthCert_cold_2(&v79);
          goto LABEL_174;
        }

        v6 |= 4u;
        break;
      case 1:
        DataAsData = iAP2MsgGetDataAsData(FirstParam, &v79);
        ParamValueLen = iAP2MsgGetParamValueLen(FirstParam);
        if (v79)
        {
          goto LABEL_171;
        }

        v7 = ParamValueLen;
        v6 |= 2u;
        break;
      case 0:
        DataAsU8 = iAP2MsgGetDataAsU8(FirstParam, &v79);
        v11 = gLogObjects;
        v12 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v13 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v11;
            *&buf[12] = 1024;
            *&buf[14] = v12;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v16 = &_os_log_default;
          v13 = &_os_log_default;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = DataAsU8;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_AuthCert: certType:%d", buf, 8u);
        }

        if (v79)
        {
          v39 = 0;
          v40 = 0;
          CertificateRefWithBytes = 0;
          goto LABEL_156;
        }

        if (DataAsU8 >= 0xD)
        {
          goto LABEL_154;
        }

        v6 |= 1u;
        break;
    }

    FirstParam = iAP2MsgGetNextParamWithError(CertificateRefWithBytes, 0, FirstParam, &v78);
    if (v78 == 1)
    {
      goto LABEL_154;
    }
  }

  if (DataAsU8 >= 4)
  {
    goto LABEL_154;
  }

  if (DataAsU8)
  {
    v79 = CTDecompressComputeBufferSize(DataAsData, v7, &size);
    if (v79)
    {
      mfi4Auth_protocol_handle_AuthCert_cold_4();
      goto LABEL_174;
    }

    CertificateRefWithBytes = malloc_type_malloc(size, 0x1DC7BFBAuLL);
    if (!CertificateRefWithBytes)
    {
      mfi4Auth_protocol_handle_AuthCert_cold_6(&v79, &size);
      goto LABEL_175;
    }

    v79 = CTDecompress(DataAsData, v7, CertificateRefWithBytes, size);
    if (v79)
    {
      mfi4Auth_protocol_handle_AuthCert_cold_5();
      goto LABEL_174;
    }

    if (DataAsU8 == 3)
    {
      v17 = "MFi40Accessory-Certificate";
    }

    else
    {
      v17 = "MFi40Accessory-Intermediate";
    }

    v18 = *a1;
    v19 = size;
  }

  else
  {
    size = v7;
    v20 = malloc_type_malloc(v7, 0xEEB74CF8uLL);
    CertificateRefWithBytes = v20;
    if (!v20)
    {
      v39 = 0;
      v40 = 0;
      goto LABEL_155;
    }

    memcpy(v20, DataAsData, size);
    v18 = *a1;
    v19 = size;
    v17 = "MFi30Accessory-Certificate";
  }

  mfi4Auth_util_packetLogging_logData(v18, v17, "MFi4Auth", CertificateRefWithBytes, v19, 1);
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v21 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v21 = &_os_log_default;
    v22 = &_os_log_default;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v7;
    *&buf[8] = 2048;
    *&buf[10] = size;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_AuthCert: compressedLength %d, decompressedLength %zu", buf, 0x12u);
  }

  v23 = size;
  if (size > 0x1000)
  {
    mfi4Auth_protocol_handle_AuthCert_cold_19(&size);
    goto LABEL_174;
  }

  if (DataAsU8 <= 1)
  {
    if (!DataAsU8)
    {
      if ((~v6 & 3) == 0)
      {
        if (*(a1 + 160))
        {
          *(a1 + 440) = CertificateRefWithBytes;
          *(a1 + 448) = v23;
          *(a1 + 400) = 0;
        }

        else
        {
          *(a1 + 696) = CertificateRefWithBytes;
          *(a1 + 704) = v23;
          *(a1 + 652) = 0;
        }

        *&v24 = 0xAAAAAAAAAAAAAAAALL;
        *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *buf = v24;
        *&buf[16] = v24;
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v25 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
          }

          v25 = &_os_log_default;
          v26 = &_os_log_default;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v76 = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_AuthCert: Accessory DID provide PrivacyPrefix!", v76, 2u);
        }

        v27 = malloc_type_malloc(size + 16, 0x2B3B2F0BuLL);
        *v27 = *(a1 + 288);
        v28 = size;
        memcpy(v27 + 1, CertificateRefWithBytes, size);
        CC_SHA256(v27, v28 + 16, buf);
        v29 = 404;
        if (!*(a1 + 160))
        {
          v29 = 656;
        }

        v30 = (a1 + v29);
        v31 = *v30;
        v32 = v30[1];
        v34 = v30[2];
        v33 = v30[3];
        v38 = *buf != v31 || *&buf[8] != v32 || *&buf[16] != v34 || *&buf[24] != v33;
        if (v27)
        {
          free(v27);
        }

        if (!v38)
        {
          v39 = 0;
          v40 = 0;
          CertificateRefWithBytes = 0;
LABEL_137:
          v79 = mfi4Auth_protocol_validateCertChain(a1);
          if (!v79)
          {
            v79 = mfi4Auth_protocol_validateSignature(a1);
            if (!v79)
            {
              if ((acc_userDefaults_BOOLForKey(@"ForceAuthFail") & 1) != 0 || acc_userDefaults_BOOLForKey(@"PretendNFCAuthFailed"))
              {
                if (gLogObjects && gNumLogObjects >= 56)
                {
                  v72 = *(gLogObjects + 440);
                }

                else
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
                  }

                  v72 = &_os_log_default;
                  v73 = &_os_log_default;
                }

                if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  *&buf[4] = "mfi4Auth_protocol_handle_AuthCert";
                  *&buf[12] = 1024;
                  *&buf[14] = 1;
                  _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%s: ForceAuthFail/PretendNFCAuthFailed!!!, set status(%d)", buf, 0x12u);
                }

                v74 = a1;
                goto LABEL_166;
              }

              if ((acc_userDefaults_BOOLForKey(@"ForceAuthTimeout") & 1) != 0 || acc_userDefaults_BOOLForKey(@"PretendNFCAuthTimeout"))
              {
                v70 = logObjectForModule_41();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  *&buf[4] = "mfi4Auth_protocol_handle_AuthCert";
                  *&buf[12] = 1024;
                  *&buf[14] = 2;
                  _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%s: ForceAuthTimeout/PretendNFCAuthTimeout!!!, ignore status(%d)", buf, 0x12u);
                }

                goto LABEL_146;
              }

              if (!*(a1 + 160))
              {
                v74 = a1;
LABEL_166:
                mfi4Auth_protocol_handle_AuthState(v74);
LABEL_146:
                v79 = 0;
                goto LABEL_147;
              }

              inited = mfi4Auth_protocol_initMessage_AuthenticationSucceeded(a1);
LABEL_128:
              v79 = inited;
              if (inited)
              {
                goto LABEL_156;
              }

              goto LABEL_146;
            }
          }

          goto LABEL_156;
        }

        goto LABEL_193;
      }

      goto LABEL_154;
    }

    if (v6 == 3)
    {
      *(a1 + 456) = CertificateRefWithBytes;
      *(a1 + 464) = v23;
      goto LABEL_114;
    }

LABEL_154:
    v39 = 0;
    v40 = 0;
    CertificateRefWithBytes = 0;
LABEL_155:
    v79 = -1;
    goto LABEL_156;
  }

  if (DataAsU8 == 2)
  {
    if (v6 == 3)
    {
      *(a1 + 472) = CertificateRefWithBytes;
      *(a1 + 480) = v23;
      goto LABEL_114;
    }

    goto LABEL_154;
  }

  if ((~v6 & 3) != 0)
  {
    goto LABEL_154;
  }

  if (*(a1 + 160))
  {
    *(a1 + 440) = CertificateRefWithBytes;
    *(a1 + 448) = v23;
    *(a1 + 400) = 3;
  }

  else
  {
    *(a1 + 696) = CertificateRefWithBytes;
    *(a1 + 704) = v23;
    *(a1 + 652) = 3;
  }

  *&v41 = 0xAAAAAAAAAAAAAAAALL;
  *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v41;
  *&buf[16] = v41;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v42 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v42 = &_os_log_default;
    v43 = &_os_log_default;
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *v76 = 0;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_AuthCert: Accessory DID provide PrivacyPrefix!", v76, 2u);
  }

  v44 = malloc_type_malloc(size + 16, 0x5793FEDEuLL);
  *v44 = *(a1 + 288);
  v45 = size;
  memcpy(v44 + 1, CertificateRefWithBytes, size);
  CC_SHA256(v44, v45 + 16, buf);
  v46 = 404;
  if (!*(a1 + 160))
  {
    v46 = 656;
  }

  v47 = (a1 + v46);
  v48 = *v47;
  v49 = v47[1];
  v51 = v47[2];
  v50 = v47[3];
  v55 = *buf != v48 || *&buf[8] != v49 || *&buf[16] != v51 || *&buf[24] != v50;
  if (v44)
  {
    free(v44);
  }

  if (v55)
  {
LABEL_193:
    mfi4Auth_protocol_handle_AuthCert_cold_9(&v79);
    goto LABEL_174;
  }

  v23 = size;
LABEL_114:
  CertificateRefWithBytes = __createCertificateRefWithBytes(CertificateRefWithBytes, v23, DataAsU8);
  if (!CertificateRefWithBytes)
  {
    mfi4Auth_protocol_handle_AuthCert_cold_11(&v79);
    goto LABEL_175;
  }

  AuthorityKeyID = SecCertificateGetAuthorityKeyID();
  if (!AuthorityKeyID)
  {
    mfi4Auth_protocol_handle_AuthCert_cold_14(&v79);
    goto LABEL_175;
  }

  v57 = AuthorityKeyID;
  v39 = SecCertificateCreateWithBytes();
  if (!v39)
  {
    mfi4Auth_protocol_handle_AuthCert_cold_11(&v79);
LABEL_186:
    v40 = 0;
    goto LABEL_176;
  }

  SubjectKeyID = SecCertificateGetSubjectKeyID();
  if (!SubjectKeyID)
  {
    mfi4Auth_protocol_handle_AuthCert_cold_10(&v79);
    goto LABEL_186;
  }

  v59 = SubjectKeyID;
  v40 = SecCertificateCreateWithBytes();
  if (v40)
  {
    v60 = SecCertificateGetSubjectKeyID();
    if (v60)
    {
      v61 = v60;
      if (DataAsU8 == 2)
      {
        v67 = CFEqual(v57, v59);
        v68 = CFEqual(v57, v61);
        v69 = logObjectForModule_41();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v67 != 0;
          *&buf[8] = 1024;
          *&buf[10] = v68 != 0;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_AuthCert: authorityIsRoot: dev:%d, prod:%d", buf, 0xEu);
        }

        if (!(v67 | v68))
        {
          goto LABEL_155;
        }

        v65 = logObjectForModule_41();
        if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
LABEL_136:

          goto LABEL_137;
        }

        *buf = 0;
      }

      else
      {
        if (DataAsU8 != 1)
        {
          goto LABEL_127;
        }

        v62 = CFEqual(v57, v59);
        v63 = CFEqual(v57, v61);
        v64 = logObjectForModule_41();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v62 != 0;
          *&buf[8] = 1024;
          *&buf[10] = v63 != 0;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_AuthCert: authorityIsRoot: dev:%d, prod:%d", buf, 0xEu);
        }

        if (!(v62 | v63))
        {
LABEL_127:
          inited = mfi4Auth_protocol_initMessage_RequestAuthCert(a1, a3, v57);
          goto LABEL_128;
        }

        v65 = logObjectForModule_41();
        if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_136;
        }

        *buf = 0;
      }

      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_handle_AuthCert: known skid", buf, 2u);
      goto LABEL_136;
    }

    mfi4Auth_protocol_handle_AuthCert_cold_10(&v79);
  }

  else
  {
    mfi4Auth_protocol_handle_AuthCert_cold_11(&v79);
  }

LABEL_176:
  if (v79)
  {
LABEL_156:
    mfi4Auth_protocol_handle_AuthState(a1);
  }

LABEL_147:
  if (v39)
  {
    CFRelease(v39);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (CertificateRefWithBytes)
  {
    CFRelease(CertificateRefWithBytes);
  }

  return v79;
}

uint64_t __createCertificateRefWithBytes(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v4 = [NSData dataWithBytes:a1 length:a2];
  CertificateRefWithData = __createCertificateRefWithData(v4, a3);

  return CertificateRefWithData;
}

uint64_t mfi4Auth_protocol_initMessage_RequestAuthCert(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  if (!a1)
  {
    mfi4Auth_protocol_handle_RequestAuthCert_cold_6();
LABEL_16:
    v13 = 1;
    goto LABEL_12;
  }

  if (*(a1 + 30) == 1)
  {
    mfi4Auth_protocol_handle_RequestAuthCert_cold_5();
    goto LABEL_16;
  }

  if (!a2)
  {
    mfi4Auth_protocol_initMessage_RequestAuthCert_cold_2();
    goto LABEL_16;
  }

  v6 = *(a1 + 200);
  v7 = malloc_type_malloc(0x48uLL, 0x109004066C3AFE2uLL);
  *a2 = v7;
  if (v7)
  {
    iAP2MsgInitWithSom(v7, v6, 20754, *(a1 + 16), *(a1 + 24), 0, 0);
    if (v5)
    {
      v8 = *a2;
      v9 = [v5 bytes];
      v10 = v8;
      v11 = 1;
      v12 = 20;
    }

    else
    {
      v10 = *a2;
      if (*(a1 + 160))
      {
        v9 = (a1 + 404);
      }

      else
      {
        v9 = (a1 + 656);
      }

      v11 = 0;
      v12 = 32;
    }

    iAP2MsgAddArrayU8Param(v10, 0, v11, v9, v12);
    v13 = 0;
    *(a1 + 28) = 20754;
  }

  else
  {
    mfi4Auth_protocol_initMessage_RequestAuthCert_cold_1();
    v13 = 0xFFFFFFFFLL;
  }

LABEL_12:

  return v13;
}

uint64_t mfi4Auth_protocol_validateCertChain(uint64_t a1)
{
  v2 = [NSMutableArray arrayWithCapacity:3];
  v3 = v2;
  if (!a1)
  {
    v32 = logObjectForModule_41();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_validateCertChain_cold_6();
    }

    goto LABEL_61;
  }

  if (*(a1 + 30) == 1)
  {
    v32 = logObjectForModule_41();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_validateCertChain_cold_5();
    }

LABEL_61:
    v30 = 0xFFFFFFFFLL;
LABEL_65:

    goto LABEL_55;
  }

  if (!v2)
  {
    v32 = logObjectForModule_41();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_validateCertChain_cold_4();
    }

    v30 = 2;
    goto LABEL_65;
  }

  if (gLogObjects)
  {
    v4 = gNumLogObjects <= 55;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (*(a1 + 160))
  {
    if (v5)
    {
      v6 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v6 = &_os_log_default;
      v8 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 160);
      v10 = *(a1 + 448);
      v11 = *(a1 + 400);
      v12 = *(a1 + 464);
      v33 = 136316418;
      v34 = "mfi4Auth_protocol_validateCertChain";
      v35 = 1024;
      v36 = 2460;
      v37 = 1024;
      v38 = v9;
      v39 = 2048;
      v40 = v10;
      v41 = 1024;
      v42 = v11;
      v43 = 2048;
      v44 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s:%d negotiatedAuthType %d, cert_init_len %zu, cert_init_type %d, intermediate1_cert_init_len %zu", &v33, 0x32u);
    }

    if (!*(a1 + 448))
    {
      goto LABEL_56;
    }

    v13 = *(a1 + 400);
    if (v13)
    {
      if (!*(a1 + 464))
      {
        goto LABEL_56;
      }
    }

    v14 = 440;
  }

  else
  {
    if (v5)
    {
      v7 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v7 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 160);
      v17 = *(a1 + 704);
      v18 = *(a1 + 652);
      v19 = *(a1 + 464);
      v33 = 136316418;
      v34 = "mfi4Auth_protocol_validateCertChain";
      v35 = 1024;
      v36 = 2445;
      v37 = 1024;
      v38 = v16;
      v39 = 2048;
      v40 = v17;
      v41 = 1024;
      v42 = v18;
      v43 = 2048;
      v44 = v19;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s:%d negotiatedAuthType %d, leafCertLen %zu, leafCertType %d, intermediate1_cert_init_len %zu", &v33, 0x32u);
    }

    if (!*(a1 + 704))
    {
      goto LABEL_56;
    }

    v13 = *(a1 + 652);
    if (v13)
    {
      if (!*(a1 + 464))
      {
        goto LABEL_56;
      }
    }

    v14 = 696;
  }

  if (!*(a1 + v14))
  {
    goto LABEL_56;
  }

  v20 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
  [v3 addObject:v20];

  if (*(a1 + 464))
  {
    v21 = [NSData dataWithBytes:*(a1 + 456) length:?];
    [v3 addObject:v21];
  }

  if (*(a1 + 480))
  {
    v22 = [NSData dataWithBytes:*(a1 + 472) length:?];
    [v3 addObject:v22];
  }

  if (![v3 count] || (v13 > 9 ? (v23 = 0xFFFFFFFFLL) : (v23 = dword_1001C45D0[v13]), +[MFAACertificateManager sharedManager](MFAACertificateManager, "sharedManager"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "copyParsedCertificateChainInfoFromCerts:assumeType:", v3, v23), v24, !v25))
  {
LABEL_56:
    v30 = 2;
    goto LABEL_55;
  }

  v26 = +[MFAACertificateManager sharedManager];
  v27 = [v26 copyEvaluatedCertificateChainInfo:v25];

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v28 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v28 = &_os_log_default;
    v29 = &_os_log_default;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138412290;
    v34 = v27;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_validateCertChain: certListDict %@", &v33, 0xCu);
  }

  if (!v27)
  {
    v30 = 0xFFFFFFFFLL;
LABEL_55:
    mfi4Auth_protocol_validateCertChain_cold_7();
    v27 = 0;
    goto LABEL_53;
  }

  v30 = 0;
LABEL_53:

  return v30;
}

uint64_t mfi4Auth_protocol_validateSignature(uint64_t a1)
{
  error = 0;
  if (!a1)
  {
    mfi4Auth_protocol_validateSignature_cold_15();
    goto LABEL_67;
  }

  if (*(a1 + 30) == 1)
  {
    mfi4Auth_protocol_validateSignature_cold_14();
    goto LABEL_67;
  }

  if (!*(a1 + 160))
  {
    v11 = *(a1 + 696);
    if (v11)
    {
      v12 = *(a1 + 704);
      data[0] = 0;
      *&data[1] = *(a1 + 568);
      v33 = *(a1 + 552);
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *md = v13;
      v31 = v13;
      CC_SHA256(data, 0x21u, md);
      v14 = CFDataCreate(kCFAllocatorDefault, v11, v12);
      v15 = CFDataCreate(kCFAllocatorDefault, md, 32);
      v16 = CFDataCreate(kCFAllocatorDefault, (a1 + 584), 64);
      if (v14)
      {
        if (v15)
        {
          if (v16)
          {
            if (MFAAVerifyNonceSignature())
            {
              v9 = 0;
              v6 = 0;
              v5 = 0;
              v3 = 0;
LABEL_26:
              if (gLogObjects && gNumLogObjects >= 56)
              {
                v23 = *(gLogObjects + 440);
              }

              else
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
                }

                v23 = &_os_log_default;
                v24 = &_os_log_default;
              }

              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *data = 0;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_validateSignature: verification passed", data, 2u);
              }

              v25 = 0;
              v26 = 0;
              if (!v3)
              {
                goto LABEL_36;
              }

              goto LABEL_35;
            }

            v28 = logObjectForModule_41();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              mfi4Auth_protocol_validateSignature_cold_8();
            }
          }

          else
          {
            v28 = logObjectForModule_41();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              mfi4Auth_protocol_validateSignature_cold_10();
            }
          }
        }

        else
        {
          v28 = logObjectForModule_41();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_protocol_validateSignature_cold_11();
          }
        }
      }

      else
      {
        v28 = logObjectForModule_41();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_validateSignature_cold_12();
        }
      }
    }

    else
    {
      mfi4Auth_protocol_validateSignature_cold_13();
    }

LABEL_67:
    v9 = 0;
    v26 = 0xFFFFFFFFLL;
    goto LABEL_40;
  }

  CertificateRefWithBytes = __createCertificateRefWithBytes(*(a1 + 440), *(a1 + 448), *(a1 + 400));
  if (!CertificateRefWithBytes)
  {
    mfi4Auth_protocol_validateSignature_cold_7();
    goto LABEL_67;
  }

  v3 = CertificateRefWithBytes;
  v4 = SecCertificateCopyKey(CertificateRefWithBytes);
  if (!v4)
  {
    v8 = logObjectForModule_41();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_validateSignature_cold_6();
    }

    v5 = 0;
    goto LABEL_49;
  }

  v5 = v4;
  v6 = SecKeyCopyExternalRepresentation(v4, &error);
  if (error)
  {
    v7 = CFErrorCopyDescription(error);
    v8 = v7;
    if (error)
    {
      mfi4Auth_protocol_validateSignature_cold_1();
      goto LABEL_55;
    }
  }

  if (!v6)
  {
    v8 = logObjectForModule_41();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_validateSignature_cold_5();
    }

LABEL_49:
    v6 = 0;
LABEL_55:
    v9 = 0;
    v25 = 0xFFFFFFFFLL;
    goto LABEL_56;
  }

  v9 = _dumpSimpleHex(v6);
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v10 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v10 = &_os_log_default;
    v17 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *data = 138412290;
    *&data[4] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "validateSignature: keyRepresentation: %@\n", data, 0xCu);
  }

  v18 = *(a1 + 96);
  Length = CFDataGetLength(v6);
  BytePtr = CFDataGetBytePtr(v6);
  v21 = ccsigma_import_peer_verification_key(v18, Length, BytePtr);
  if (v21)
  {
    v25 = v21;
    v8 = logObjectForModule_41();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_validateSignature_cold_3();
    }
  }

  else
  {
    v22 = ccsigma_verify(v18, a1 + 488, 32, a1 + 404);
    if (!v22)
    {
      goto LABEL_26;
    }

    v25 = v22;
    v8 = logObjectForModule_41();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_validateSignature_cold_4();
    }
  }

LABEL_56:

LABEL_35:
  CFRelease(v3);
  v26 = v25;
LABEL_36:
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

LABEL_40:

  return v26;
}

uint64_t mfi4Auth_protocol_handle_AuthFinish(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  v13 = 1;
  if (!a1)
  {
    v11 = logObjectForModule_41();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_handle_AuthFinish_cold_4();
    }

    goto LABEL_27;
  }

  if (a1[30] == 1)
  {
    v11 = logObjectForModule_41();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_handle_AuthFinish_cold_3();
    }

    goto LABEL_27;
  }

  if (!a2)
  {
    v11 = logObjectForModule_41();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_handle_AuthFinish_cold_2();
    }

    goto LABEL_27;
  }

  v12 = 0;
  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  while (FirstParam)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    if (ParamID == 1)
    {
      DataAsArrayU8 = iAP2MsgGetDataAsArrayU8(FirstParam, &v13, a1 + 488, 64);
      if (v13)
      {
        goto LABEL_18;
      }

      if (DataAsArrayU8 != 64)
      {
        return 0;
      }
    }

    else if (!ParamID)
    {
      v8 = iAP2MsgGetDataAsArrayU8(FirstParam, &v13, a1 + 404, 32);
      if (v13)
      {
        goto LABEL_18;
      }

      if (v8 != 32)
      {
        return 0;
      }
    }

    FirstParam = iAP2MsgGetNextParamWithError(a2, 0, FirstParam, &v12);
    if (v12)
    {
      goto LABEL_14;
    }
  }

  result = mfi4Auth_protocol_initMessage_RequestAuthCert(a1, a3, 0);
  v13 = result;
  if (result)
  {
    v11 = logObjectForModule_41();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_handle_AuthFinish_cold_1();
    }

LABEL_27:

LABEL_14:
    if (v13)
    {
LABEL_18:
      mfi4Auth_protocol_handle_AuthState(a1);
      return v13;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mfi4Auth_protocol_handle_AuthChallengeResponse(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v15 = 1;
  if (a1)
  {
    if (*(a1 + 30) == 1)
    {
      mfi4Auth_protocol_handle_AuthChallengeResponse_cold_2();
    }

    else if (a2)
    {
      FirstParam = iAP2MsgGetFirstParam(a2, 0);
      v7 = 0;
      v14 = 0;
      while (FirstParam)
      {
        ParamID = iAP2MsgGetParamID(FirstParam);
        switch(ParamID)
        {
          case 2:
            *(a1 + 688) = 32;
            DataAsArrayU8 = iAP2MsgGetDataAsArrayU8(FirstParam, &v15, (a1 + 656), 32);
            v10 = v15;
            if (v15 || DataAsArrayU8 != 32)
            {
              goto LABEL_20;
            }

            v7 |= 4u;
            break;
          case 1:
            v11 = iAP2MsgGetDataAsArrayU8(FirstParam, &v15, (a1 + 552), 16);
            v10 = v15;
            if (v15 || v11 != 16)
            {
              goto LABEL_20;
            }

            v7 |= 2u;
            break;
          case 0:
            v9 = iAP2MsgGetDataAsArrayU8(FirstParam, &v15, (a1 + 584), 64);
            v10 = v15;
            if (v15 || v9 != 64)
            {
              goto LABEL_20;
            }

            v7 |= 1u;
            break;
        }

        FirstParam = iAP2MsgGetNextParamWithError(a2, 0, FirstParam, &v14);
        if (v14)
        {
          v10 = v15;
LABEL_20:
          if (v10)
          {
            goto LABEL_21;
          }

          return 0;
        }
      }

      if ((~v7 & 7) == 0)
      {
        mfi4Auth_protocol_initMessage_RequestAuthCert(a1, a3, 0);
        return 0;
      }

      v15 = -1;
    }

    else
    {
      mfi4Auth_protocol_handle_AuthChallengeResponse_cold_1();
    }
  }

  else
  {
    mfi4Auth_protocol_handle_AuthChallengeResponse_cold_3();
  }

LABEL_21:
  mfi4Auth_protocol_handle_AuthState(a1);
  return v15;
}

uint64_t mfi4Auth_protocol_handle_AuthenticationReset(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    mfi4Auth_protocol_handle_AuthenticationReset_cold_4();
    return 1;
  }

  if (*(a1 + 30) == 1)
  {
    mfi4Auth_protocol_handle_AuthenticationReset_cold_3();
    return 1;
  }

  if (!a2)
  {
    mfi4Auth_protocol_handle_AuthenticationReset_cold_2();
    return 1;
  }

  if (acc_userDefaults_BOOLForKey(@"IgnoreAuthReset"))
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v3 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v3 = &_os_log_default;
      v4 = &_os_log_default;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AuthenticationReset: Ignored", v6, 2u);
    }

    return 0;
  }

  else
  {

    return mfi4Auth_protocol_initMessage_RequestAuthSetup(a1);
  }
}

uint64_t mfi4Auth_protocol_handle_AuthenticationFailed(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 30) == 1)
    {
      mfi4Auth_protocol_handle_AuthenticationFailed_cold_2();
    }

    else if (a2)
    {
      v2 = *(a1 + 88);
      if ((v2 & 3) == 1)
      {
        v3 = 3;
      }

      else
      {
        v3 = 12;
      }

      v4 = v3 | v2;
      *(a1 + 88) = v4;
      if ((~v4 & 0xF) != 0)
      {
        mfi4Auth_protocol_initMessage_RequestAuthSetup(a1);
      }

      else
      {
        mfi4Auth_protocol_handle_AuthState(a1);
      }
    }

    else
    {
      mfi4Auth_protocol_handle_AuthenticationFailed_cold_1();
    }
  }

  else
  {
    mfi4Auth_protocol_handle_AuthenticationFailed_cold_3();
  }

  return 0;
}

uint64_t copyDeviceIdentityCertificates(uint64_t a1, void *a2)
{
  v3 = +[ACCUserDefaults sharedDefaults];
  v4 = [v3 integerForKey:@"IdentityCertRefreshInterval"];
  v5 = v4;

  if (!v4)
  {
    v5 = 86400.0;
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v6 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "copyDeviceIdentityCertificates interval: %f\n", buf, 0xCu);
  }

  v8 = [NSNumber numberWithUnsignedLongLong:4];
  v9 = [NSNumber numberWithDouble:v5, @"Count", @"RefreshInterval", v8];
  v17[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:&v16 count:2];
  v11 = [NSMutableDictionary dictionaryWithDictionary:v10];

  v12 = MFAADeviceIdentityCopyCertificate();
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v13 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v13 = &_os_log_default;
    v14 = &_os_log_default;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v19) = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "copyDeviceIdentityCertificates completed: %d\n", buf, 8u);
  }

  if (!*a2)
  {
    v12 = 0;
  }

  return v12;
}

uint64_t seckey_sign(uint64_t a1, CFIndex a2, const UInt8 *a3, size_t *a4, void *a5)
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v9 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v9 = &_os_log_default;
    v10 = &_os_log_default;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "seckey_sign\n", &v29, 2u);
  }

  v11 = CFDataCreate(kCFAllocatorDefault, a3, a2);
  Signature = MFAADeviceIdentityCreateSignature();
  v13 = Signature;
  if (Signature)
  {
    v14 = *a4;
    if (v14 >= CFDataGetLength(Signature))
    {
      *a4 = CFDataGetLength(v13);
      BytePtr = CFDataGetBytePtr(v13);
      memcpy(a5, BytePtr, *a4);
      v17 = _dumpSimpleHex(v11);
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v18 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }

        v18 = &_os_log_default;
        v25 = &_os_log_default;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138412290;
        v30 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "seckey_sign: challenge: %@\n", &v29, 0xCu);
      }

      v26 = _dumpSimpleHex(v13);
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v27 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }

        v27 = &_os_log_default;
        v28 = &_os_log_default;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138412290;
        v30 = v26;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "seckey_sign: signature: %@\n", &v29, 0xCu);
      }

      v20 = 0;
LABEL_58:
      CFRelease(v13);
      if (!v11)
      {
        return v20;
      }

      goto LABEL_42;
    }

    if (gLogObjects && gNumLogObjects >= 56)
    {
      v15 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v15 = &_os_log_default;
      v21 = &_os_log_default;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "seckey_sign: signature buffer is too small\n", &v29, 2u);
    }

    v20 = 4294967289;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v15 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v15 = &_os_log_default;
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "seckey_sign: MFAADeviceIdentityCreateSignature error\n", &v29, 2u);
    }

    v20 = 0xFFFFFFFFLL;
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v22 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v22 = &_os_log_default;
    v23 = &_os_log_default;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 67109120;
    LODWORD(v30) = v20;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "seckey_sign: error: %d\n", &v29, 8u);
  }

  if (v13)
  {
    goto LABEL_58;
  }

  if (v11)
  {
LABEL_42:
    CFRelease(v11);
  }

  return v20;
}

uint64_t mfi4Auth_protocol_processIncomingMessage(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  if (!a1)
  {
    v14 = logObjectForModule_41();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processIncomingMessage_cold_25();
    }

    goto LABEL_111;
  }

  if (*(a1 + 30) == 1)
  {
    v14 = logObjectForModule_41();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processIncomingMessage_cold_24();
    }

    goto LABEL_111;
  }

  if (!a3)
  {
    v14 = logObjectForModule_41();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processIncomingMessage_cold_23();
    }

    goto LABEL_111;
  }

  MsgID = iAP2MsgGetMsgID(a3);
  if (!MsgID)
  {
    v14 = logObjectForModule_41();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processIncomingMessage_cold_22();
    }

    goto LABEL_111;
  }

  v9 = MsgID;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v10 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v10 = &_os_log_default;
    v11 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 28);
    v28[0] = 67109376;
    v28[1] = v12;
    v29 = 1024;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_processIncomingMessage: cmd:0x%x  rsp:0x%x", v28, 0xEu);
  }

  if (v9 <= 21011)
  {
    if (v9 <= 21008)
    {
      if (v9 == 20993)
      {
        if (a2 || *(a1 + 28) != 20736)
        {
          goto LABEL_112;
        }

        if (mfi4Auth_protocol_handle_AuthSetup(a1, a3, a4))
        {
          v14 = logObjectForModule_41();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_protocol_processIncomingMessage_cold_19();
          }

          goto LABEL_111;
        }
      }

      else
      {
        if (v9 != 20994)
        {
LABEL_103:
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v14 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
            }

            v14 = &_os_log_default;
            v25 = &_os_log_default;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_protocol_processIncomingMessage_cold_21();
          }

          goto LABEL_111;
        }

        if (a2 || *(a1 + 28) != 20736)
        {
          goto LABEL_112;
        }

        mfi4Auth_protocol_handle_AuthSetupFailed(a1, a3);
      }

      return 1;
    }

    if (v9 == 21009)
    {
      if (a2 || *(a1 + 160) != 1 || *(a1 + 28) != 20752)
      {
        goto LABEL_112;
      }

      if (mfi4Auth_protocol_handle_AuthStart(a1, a3))
      {
        v14 = logObjectForModule_41();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_processIncomingMessage_cold_16();
        }

        goto LABEL_111;
      }

      return 1;
    }

    if (v9 != 21010)
    {
      if (!a2 && *(a1 + 160) || *(a1 + 28) != 20754)
      {
        goto LABEL_112;
      }

      if (mfi4Auth_protocol_handle_AuthCert(a1, a3, a4))
      {
        v14 = logObjectForModule_41();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_processIncomingMessage_cold_11();
        }

        goto LABEL_111;
      }

      return 1;
    }

    if (!a2)
    {
      goto LABEL_112;
    }

    v16 = *(a1 + 160);
    if ((v16 - 3) > 0xFFFFFFFD)
    {
      v17 = *(a1 + 28);
      if (v16 == 1)
      {
        if ((v17 - 20757) <= 0xFFFFFFFD)
        {
          v14 = logObjectForModule_41();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_111;
          }

LABEL_138:
          mfi4Auth_protocol_processIncomingMessage_cold_12();
          goto LABEL_111;
        }
      }

      else if ((v17 & 0xFFFFFFFD) != 0x5111)
      {
        v14 = logObjectForModule_41();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_111;
        }

        goto LABEL_138;
      }

      if (mfi4Auth_protocol_handle_RequestAuthCert(a1, a3))
      {
        v14 = logObjectForModule_41();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_processIncomingMessage_cold_13();
        }

        goto LABEL_111;
      }

      return 1;
    }

    v14 = logObjectForModule_41();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_111;
    }

    goto LABEL_138;
  }

  if (v9 > 21244)
  {
    if (v9 != 21245)
    {
      if (v9 == 21246)
      {
        if (!a2)
        {
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v15 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
            }

            v15 = &_os_log_default;
            v19 = &_os_log_default;
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_protocol_processIncomingMessage_cold_5();
          }

          mfi4Auth_protocol_handle_AuthenticationFailed(a1, a3);
          return 1;
        }

        goto LABEL_112;
      }

      if (v9 == 21247)
      {
        if (!a2)
        {
          goto LABEL_112;
        }

        v23 = *(a1 + 160);
        if ((v23 - 3) < 0xFFFFFFFE)
        {
          goto LABEL_112;
        }

        v24 = *(a1 + 28);
        if (v23 == 1)
        {
          if ((v24 - 20757) < 0xFFFFFFFE)
          {
            goto LABEL_112;
          }
        }

        else if (v24 != 20991)
        {
          goto LABEL_112;
        }

        if (gLogObjects && gNumLogObjects >= 56)
        {
          v26 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
          }

          v26 = &_os_log_default;
          v27 = &_os_log_default;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v28[0]) = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Received AuthenticationSucceeded", v28, 2u);
        }

        if (!mfi4Auth_protocol_handle_AuthenticationSucceeded(a1, a3, a4))
        {
          return 1;
        }

        v14 = logObjectForModule_41();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_processIncomingMessage_cold_3();
        }

        goto LABEL_111;
      }

      goto LABEL_103;
    }

    if (a2)
    {
      goto LABEL_112;
    }

    if (gLogObjects && gNumLogObjects >= 56)
    {
      v18 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v18 = &_os_log_default;
      v21 = &_os_log_default;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processIncomingMessage_cold_7();
    }

    if (!mfi4Auth_protocol_handle_AuthenticationReset(a1, a3))
    {
      return 1;
    }

    v14 = logObjectForModule_41();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processIncomingMessage_cold_8();
    }

LABEL_111:

    goto LABEL_112;
  }

  if (v9 == 21012)
  {
    if (!a2 || *(a1 + 160) != 2 || (*(a1 + 28) & 0xFFFD) != 0x5111)
    {
      goto LABEL_112;
    }

    if (mfi4Auth_protocol_handle_AuthFinish(a1, a3, a4))
    {
      v14 = logObjectForModule_41();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_processIncomingMessage_cold_10();
      }

      goto LABEL_111;
    }

    return 1;
  }

  if (v9 == 21014)
  {
    if (a2 || *(a1 + 160))
    {
      goto LABEL_112;
    }

    if (mfi4Auth_protocol_handle_AuthChallengeResponse(a1, a3, a4))
    {
      v14 = logObjectForModule_41();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_processIncomingMessage_cold_9();
      }

      goto LABEL_111;
    }

    return 1;
  }

  if (v9 != 21242)
  {
    goto LABEL_103;
  }

  if (!a2)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v13 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v13 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processIncomingMessage_cold_18();
    }

    return 1;
  }

LABEL_112:
  mfi4Auth_protocol_processIncomingMessage_cold_26();
  return 0;
}

uint64_t mfi4Auth_protocol_processIncomingMessageExtra(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  if (!a1)
  {
    v21 = logObjectForModule_41();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processIncomingMessageExtra_cold_7();
    }

    goto LABEL_66;
  }

  if (*(a1 + 30) == 1)
  {
    v21 = logObjectForModule_41();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processIncomingMessageExtra_cold_6();
    }

    goto LABEL_66;
  }

  if (!a3)
  {
    v21 = logObjectForModule_41();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processIncomingMessageExtra_cold_5();
    }

    goto LABEL_66;
  }

  MsgID = iAP2MsgGetMsgID(a3);
  if (!MsgID)
  {
    v21 = logObjectForModule_41();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processIncomingMessage_cold_22();
    }

LABEL_66:

LABEL_67:
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v16 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v16 = &_os_log_default;
      v22 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processIncomingMessageExtra_cold_9();
    }

    v18 = 0;
LABEL_76:

    return v18;
  }

  v11 = MsgID;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v12 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v12 = &_os_log_default;
    v13 = &_os_log_default;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 28);
    v23[0] = 67109376;
    v23[1] = v14;
    v24 = 1024;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "mfi4Auth_protocol_processIncomingMessageExtra: cmd:0x%x  rsp:0x%x", v23, 0xEu);
  }

  if (v11 <= 21049)
  {
    switch(v11)
    {
      case 21042:
        if (!a2)
        {
          goto LABEL_67;
        }

        v15 = *(a1 + 28) - 20784;
        if (v15 > 0x12 || ((1 << v15) & 0x40003) == 0 || mfi4Auth_protocol_handle_NVMReadResponse(a1, a3, a4))
        {
          goto LABEL_67;
        }

        return 1;
      case 21045:
        if (!a2 || mfi4Auth_protocol_handle_NVMWriteResponse(a1, a2, a3, a4))
        {
          goto LABEL_67;
        }

        return 1;
      case 21048:
        if (!a2 || mfi4Auth_protocol_handle_NVMEraseResponse(a1, a3))
        {
          goto LABEL_67;
        }

        return 1;
    }

    goto LABEL_38;
  }

  if (v11 > 21060)
  {
    if (v11 == 21061)
    {
      if (!a2 || *(a1 + 28) != 20799 || mfi4Auth_protocol_handle_NVMAuthFinish(a1, a3, a4, a5))
      {
        goto LABEL_67;
      }

      return 1;
    }

    if (v11 == 21066)
    {
      if (!a2 || *(a1 + 28) != 20809 || mfi4Auth_protocol_handle_NVMOperationResponse(a1))
      {
        goto LABEL_67;
      }

      return 1;
    }

    goto LABEL_38;
  }

  if (v11 == 21050)
  {
    if (!a2)
    {
      goto LABEL_67;
    }

    mfi4Auth_protocol_handle_NVMPublicKeyChallenge(a1, a2, a3, a4, a5);
    if (v17)
    {
      goto LABEL_67;
    }

    return 1;
  }

  if (v11 != 21054)
  {
LABEL_38:
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v16 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v16 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_processIncomingMessage_cold_21();
    }

    v18 = 1;
    goto LABEL_76;
  }

  if (!a2 || *(a1 + 28) != 20797 || mfi4Auth_protocol_handle_NVMAuthStart(a1))
  {
    goto LABEL_67;
  }

  return 1;
}

uint64_t __createCertificateRefWithData(void *a1, int a2)
{
  v3 = a1;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v4 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "__createCertificateRefWithData";
    v14 = 2048;
    v15 = [v3 length];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s (certData.length: %lu)", &v12, 0x16u);
  }

  if (v3)
  {
    if (!a2)
    {
      v9 = SecCMSCertificatesOnlyMessageCopyCertificates();
      v8 = v9;
      if (!v9 || ![v9 count])
      {
        [v3 bytes];
        [v3 length];
        v10 = SecCertificateCreateWithBytes();
        goto LABEL_20;
      }

LABEL_18:
      v10 = [v8 objectAtIndexedSubscript:0];
LABEL_20:
      v6 = v10;
      goto LABEL_21;
    }

    [v3 bytes];
    [v3 length];
    v6 = SecCertificateCreateWithBytes();
    if (!v6)
    {
      v7 = SecCMSCertificatesOnlyMessageCopyCertificates();
      v8 = v7;
      if (!v7 || ![v7 count])
      {
        v6 = 0;
LABEL_21:

        goto LABEL_22;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_22:

  return v6;
}

void OUTLINED_FUNCTION_23_10(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_DEFAULT, a4, &buf, 2u);
}

BOOL OUTLINED_FUNCTION_26_9(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_39_7()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

void sub_1000F2F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_1000F3BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F3E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t t56_protocol_init(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, uint64_t a6, __int16 a7)
{
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v14 = *(gLogObjects + 480);
  }

  else
  {
    v14 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315650;
    v19 = "t56_protocol_init";
    v20 = 1024;
    v21 = 81;
    v22 = 1024;
    v23 = a3;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s:%d role %d", &v18, 0x18u);
  }

  v15 = 4294967294;
  if (a1 && a4 && a5 <= 1)
  {
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 32) = a7;
    *(a1 + 16) = 0;
    *(a1 + 24) = a6;
    *(a1 + 13) = a4;
    *(a1 + 14) = a5;
    *(a1 + 12) = a5;
    *(a1 + 40) = 5;
    *(a1 + 44) = -1;
    *(a1 + 48) = 0;
    *(a1 + 84) = 0xFFFFFFFF00000000;
    v15 = t56_util_init(a1);
  }

  if (gLogObjects && gNumLogObjects >= 61)
  {
    v16 = *(gLogObjects + 480);
  }

  else
  {
    v16 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    t56_protocol_init_cold_3();
  }

  return v15;
}

void t56_protocol_cleanup(uint64_t a1, void *a2, _WORD *a3)
{
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 61)
    {
      v6 = *(gLogObjects + 480);
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
      v7 = *(a1 + 8);
      v14 = 136315650;
      v15 = "t56_protocol_cleanup";
      v16 = 1024;
      v17 = 122;
      v18 = 1024;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s:%d role %d", &v14, 0x18u);
    }

    t56_util_cleanup(a1);
    *(a1 + 12) = *(a1 + 14);
    *(a1 + 36) = 0;
    if (a2)
    {
      *a2 = *(a1 + 24);
    }

    if (a3)
    {
      *a3 = *(a1 + 32);
    }

    if (gLogObjects && gNumLogObjects >= 61)
    {
      v8 = *(gLogObjects + 480);
    }

    else
    {
      v8 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 8);
      v14 = 136315650;
      v15 = "t56_protocol_cleanup";
      v16 = 1024;
      v17 = 140;
      v18 = 1024;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s:%d role %d, clear authState and rx digest / cert cache", &v14, 0x18u);
    }

    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v10 = *(a1 + 44);
    if ((v10 & 0x80000000) == 0)
    {
      t56_util_cancelTimer(a1, v10);
      *(a1 + 44) = -1;
    }

    if (gLogObjects && gNumLogObjects >= 61)
    {
      v11 = *(gLogObjects + 480);
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
      v12 = *(a1 + 8);
      v14 = 136315650;
      v15 = "t56_protocol_cleanup";
      v16 = 1024;
      v17 = 153;
      v18 = 1024;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s:%d role %d, clear tx digest / cert cache", &v14, 0x18u);
    }

    v13 = *(a1 + 88);
    if ((v13 & 0x80000000) == 0)
    {
      t56_util_cancelTimer(a1, v13);
      *(a1 + 88) = -1;
    }
  }
}

uint64_t t56_protocol_start(uint64_t a1)
{
  if (!a1 || !*(a1 + 24) || !*(a1 + 32))
  {
    v3 = 4294967294;
    goto LABEL_20;
  }

  if (gLogObjects && gNumLogObjects >= 61)
  {
    v2 = *(gLogObjects + 480);
  }

  else
  {
    v2 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  v4 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 32);
    v22 = 136315906;
    v23 = "t56_protocol_start";
    v24 = 1024;
    v25 = 175;
    v26 = 1024;
    v27 = v5;
    v28 = 1024;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s:%d role %d, outMsgBufferSize %d", &v22, 0x1Eu);
  }

  if (*(a1 + 8) || (v12 = *(a1 + 24)) == 0 || (v13 = *(a1 + 32), v13 < 7))
  {
    inited = -2;
LABEL_14:
    v8 = *(a1 + 8);
    if (v8 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = inited;
    }

    if (v8 >= 2)
    {
      v3 = 0xFFFFFFFFLL;
    }

    else
    {
      v3 = v9;
    }

    goto LABEL_20;
  }

  inited = t56_protocol_initMsg_SESSION(v4, 0, 1, 0, v12, v13, (a1 + 34));
  if (inited)
  {
    goto LABEL_14;
  }

  v14 = t56_protocol_timeoutForRequest(a1, **(a1 + 24));
  if ((*(a1 + 44) & 0x80000000) == 0)
  {
    v15 = logObjectForModule_40();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 36);
      v17 = t56_protocol_msgTypeString(v16);
      v22 = 136316162;
      v23 = "t56_protocol_start";
      v24 = 1024;
      v25 = 194;
      v26 = 1024;
      v27 = v14;
      v28 = 1024;
      v29 = v16;
      v30 = 2080;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s:%d Cancel responseTimer, %u ms, outMsgType %u(%s)", &v22, 0x28u);
    }

    t56_util_cancelTimer(a1, *(a1 + 44));
  }

  v18 = logObjectForModule_40();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = **(a1 + 24);
    v22 = 136315906;
    v23 = "t56_protocol_start";
    v24 = 1024;
    v25 = 198;
    v26 = 1024;
    v27 = v14;
    v28 = 1024;
    v29 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s:%d Start responseTimer, %u ms, outMsgType %u", &v22, 0x1Eu);
  }

  v20 = t56_util_callbackOnTimer(a1, v14, _T56Protocol_timeoutCallback, 0);
  if ((v20 & 0x80000000) == 0)
  {
    *(a1 + 44) = v20;
    t56_protocol_sendData(a1, *(a1 + 24), *(a1 + 34));
    inited = 0;
    goto LABEL_14;
  }

  v21 = logObjectForModule_40();
  v3 = 0;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "t56_protocol_start";
    v24 = 1024;
    v25 = 201;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s:%d Failed to start timer!!!", &v22, 0x12u);
    v3 = 0;
  }

LABEL_20:
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v10 = *(gLogObjects + 480);
  }

  else
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    t56_protocol_start_cold_3(a1);
  }

  return v3;
}

uint64_t t56_protocol_initMsg_SESSION(uint64_t a1, int a2, int a3, int a4, unsigned __int8 *a5, unsigned int a6, _WORD *a7)
{
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v12 = *(gLogObjects + 480);
  }

  else
  {
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v21 = "t56_protocol_initMsg_SESSION";
    v22 = 1024;
    v23 = 1267;
    v24 = 1024;
    v25 = a2;
    v26 = 1024;
    v27 = a3;
    v28 = 1024;
    v29 = a4;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s:%d sessionID %d, version %d, sessionCommand %d", buf, 0x24u);
  }

  v13 = 4294967294;
  if (a5 && a6 >= 7)
  {
    v13 = 0;
    *a5 = 1;
    a5[1] = BYTE1(a2);
    a5[2] = a2;
    a5[3] = BYTE1(a3);
    a5[4] = a3;
    a5[5] = a4;
    a5[6] = 0;
    *a7 = 7;
  }

  v14 = *a5;
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v15 = *(gLogObjects + 480);
  }

  else
  {
    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = t56_protocol_msgTypeString(v14);
    if (a7)
    {
      v18 = *a7;
    }

    else
    {
      v18 = -1;
    }

    *buf = 136316674;
    v21 = "t56_protocol_initMsg_SESSION";
    v22 = 1024;
    v23 = 1287;
    v24 = 1024;
    v25 = v13;
    v26 = 1024;
    v27 = a2;
    v28 = 1024;
    v29 = v14;
    v30 = 2080;
    v31 = v17;
    v32 = 1024;
    v33 = v18;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s:%d result %d, sessionID %u, msgType %d(%s), msgDataOutLen %d", buf, 0x34u);
  }

  return v13;
}

uint64_t t56_protocol_timeoutForRequest(uint64_t a1, int a2)
{
  if (a2 - 1) < 7 && ((0x75u >> (a2 - 1)))
  {
    return 1000;
  }

  if (gLogObjects && gNumLogObjects >= 61)
  {
    v3 = *(gLogObjects + 480);
  }

  else
  {
    v3 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (result)
  {
    t56_protocol_timeoutForRequest_cold_2();
    return 0;
  }

  return result;
}

const char *t56_protocol_msgTypeString(int a1)
{
  if ((a1 - 1) > 7)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_10022AB50[a1 - 1];
  }
}

void _T56Protocol_timeoutCallback(uint64_t a1, int a2, unsigned int a3)
{
  if (a1 && (a2 & 0x80000000) == 0)
  {
    v6 = a3;
    if (gLogObjects && gNumLogObjects >= 61)
    {
      v7 = *(gLogObjects + 480);
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
      v8 = *(a1 + 8);
      v16 = 136316674;
      v17 = "_T56Protocol_timeoutCallback";
      v18 = 1024;
      v19 = 571;
      v20 = 1024;
      v21 = a2;
      v22 = 1024;
      v23 = v6;
      v24 = 1024;
      v25 = v8;
      v26 = 1024;
      v27 = HIWORD(a3) & 0xF;
      v28 = 1024;
      v29 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s:%d Timeout: timer %d, type %d, role %d, slot %d, context %u", &v16, 0x30u);
    }

    v10 = (a1 + 8);
    v9 = *(a1 + 8);
    if (!v9)
    {
      if (*(a1 + 44) == a2)
      {
        *(a1 + 44) = -1;
        if (a3)
        {
          if (a3 == 1)
          {
            if (gLogObjects && gNumLogObjects >= 61)
            {
              v11 = *(gLogObjects + 480);
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
              v13 = **(a1 + 24);
              v14 = *(a1 + 34);
              v16 = 136316162;
              v17 = "_T56Protocol_timeoutCallback";
              v18 = 1024;
              v19 = 612;
              v20 = 1024;
              v21 = HIWORD(a3) & 0xF;
              v22 = 1024;
              v23 = v13;
              v24 = 1024;
              v25 = v14;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s:%d slot %d, resend message %d, len %d", &v16, 0x24u);
            }

            t56_protocol_sendData(a1, *(a1 + 24), *(a1 + 34));
          }

          else
          {
            if (gLogObjects && gNumLogObjects >= 61)
            {
              v12 = *(gLogObjects + 480);
            }

            else
            {
              v12 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              _T56Protocol_timeoutCallback_cold_4();
            }
          }
        }
      }

      v9 = *v10;
    }

    if (v9)
    {
      if (v9 == 1)
      {
        if (*(a1 + 88) == a2)
        {
          *(a1 + 88) = -1;
        }
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 61)
        {
          v15 = *(gLogObjects + 480);
        }

        else
        {
          v15 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          _T56Protocol_timeoutCallback_cold_6(v10);
        }
      }
    }
  }
}

uint64_t t56_protocol_sendData(uint64_t a1, const UInt8 *a2, unsigned int a3)
{
  v4 = 0;
  v5 = 4294967294;
  if (a1 && a2 && (a3 - 1) <= 0x7CFu)
  {
    v4 = *a2;
    if (gLogObjects && gNumLogObjects >= 61)
    {
      v8 = *(gLogObjects + 480);
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
      v9 = *(a1 + 36);
      v13 = 136316930;
      v14 = "t56_protocol_sendData";
      v15 = 1024;
      v16 = 378;
      v17 = 1024;
      v18 = 0;
      v19 = 1024;
      v20 = a3;
      v21 = 1024;
      v22 = v9;
      v23 = 2080;
      v24 = t56_protocol_msgTypeString(v9);
      v25 = 1024;
      v26 = v4;
      v27 = 2080;
      v28 = t56_protocol_msgTypeString(v4);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s:%d ver %d, dataOutLen %d, lastMsgSent %d(%s) -> %d(%s)", &v13, 0x3Eu);
    }

    *(a1 + 36) = v4;
    t56_util_sendData(a1, a2, a3);
    v5 = 0;
  }

  if (gLogObjects && gNumLogObjects >= 61)
  {
    v10 = *(gLogObjects + 480);
  }

  else
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = t56_protocol_msgTypeString(v4);
    v13 = 136316674;
    v14 = "t56_protocol_sendData";
    v15 = 1024;
    v16 = 388;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = 0;
    v21 = 1024;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 1024;
    v26 = a3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, ver %d, msgType %d(%s), dataOutLen %d", &v13, 0x34u);
  }

  return v5;
}

uint64_t t56_protocol_processIncomingData(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v5 = 0;
  v30 = 0;
  v6 = 4294967294;
  if (!a1 || !a2)
  {
    v8 = 0;
    goto LABEL_58;
  }

  v8 = 0;
  if (a3)
  {
    v9 = (a1 + 8);
    if (*(a1 + 8) >= 2u)
    {
      if (gLogObjects && gNumLogObjects >= 61)
      {
        v11 = *(gLogObjects + 480);
      }

      else
      {
        v11 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        t56_protocol_processIncomingData_cold_2((a1 + 8));
      }

      v5 = 0;
      v8 = 0;
      goto LABEL_31;
    }

    v8 = *a2;
    v29 = *(a1 + 24);
    v28 = *(a1 + 32);
    if (gLogObjects && gNumLogObjects >= 61)
    {
      v10 = *(gLogObjects + 480);
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
      v12 = *v9;
      *buf = 136317186;
      v32 = "t56_protocol_processIncomingData";
      v33 = 1024;
      v34 = 251;
      v35 = 1024;
      v36 = v12;
      v37 = 1024;
      v38 = 0;
      v39 = 1024;
      v40 = v8;
      v41 = 2080;
      *v42 = t56_protocol_msgTypeString(v8);
      *&v42[8] = 1024;
      *&v42[10] = a3;
      v43 = 1024;
      v44 = v29 != 0;
      v45 = 1024;
      v46 = v28;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s:%d role %d, ver %d, msgType %d(%s), dataInLen %d, _dataOut(%d), _dataOutSize %d", buf, 0x40u);
    }

    v5 = 0;
    v6 = 4294967294;
    if (!v29 || !v28)
    {
      goto LABEL_58;
    }

    if (!t56_protocol_checkValidMessageHeaderAndSize(a1, *a2, a3))
    {
LABEL_57:
      v5 = 0;
      goto LABEL_58;
    }

    *(a1 + 40) = 0;
    if (!*(a1 + 8))
    {
      v13 = *(a1 + 44);
      if ((v13 & 0x80000000) == 0)
      {
        t56_util_cancelTimer(a1, v13);
        *(a1 + 44) = -1;
      }

      if (v8 > 5)
      {
        if (v8 == 6)
        {
          v14 = _t56_protocol_handleResponse_DATA(a1, a2, a3, v29, v28, &v30);
          goto LABEL_40;
        }

        if (v8 == 8)
        {
          v14 = _t56_protocol_handleResponse_STATUS(a1, a2, a3, v29, v28, &v30);
          goto LABEL_40;
        }
      }

      else
      {
        if (v8 == 2)
        {
          v14 = _t56_protocol_handleResponse_SESSION_RSP(a1, a2, a3, v29, v28, &v30);
          goto LABEL_40;
        }

        if (v8 == 4)
        {
          v14 = _t56_protocol_handleResponse_DISCOVER_RSP(a1, a2, a3, v29, v28, &v30);
LABEL_40:
          v6 = v14;
          goto LABEL_41;
        }
      }

      v15 = logObjectForModule_40();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        t56_protocol_processIncomingData_cold_4();
      }

      v6 = 0xFFFFFFFFLL;
    }

LABEL_41:
    if (!t56_protocol_checkValidMessageHeaderAndSize(a1, *a2, a3) || *v9 != 1)
    {
      goto LABEL_56;
    }

    if (v8 <= 4)
    {
      if (v8 == 1)
      {
        v17 = _t56_protocol_handleRequest_SESSION(a1, a2, a3, v29, v28, &v30);
        goto LABEL_55;
      }

      if (v8 != 3)
      {
LABEL_76:
        v27 = logObjectForModule_40();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          t56_protocol_processIncomingData_cold_6();
        }

        v5 = 0;
LABEL_31:
        v6 = 0xFFFFFFFFLL;
        goto LABEL_58;
      }

      _t56_protocol_handleRequest_DISCOVER(a1, a2, a3, v16, 0, &v30);
    }

    else
    {
      if (v8 != 5)
      {
        if (v8 == 6)
        {
          v17 = _t56_protocol_handleRequest_DATA(a1, a2, a3, v29, v28, &v30);
          goto LABEL_55;
        }

        if (v8 == 7)
        {
          v17 = _t56_protocol_handleRequest_TERMINATE(a1, a2, a3, v29, v28, &v30);
LABEL_55:
          v6 = v17;
LABEL_56:
          if (v6)
          {
            goto LABEL_57;
          }

          v23 = v30;
          *(a1 + 34) = v30;
          if (v23)
          {
            v5 = *v29;
            if (!*v9)
            {
              v24 = t56_protocol_timeoutForRequest(a1, *v29);
              v25 = logObjectForModule_40();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v32 = "t56_protocol_processIncomingData";
                v33 = 1024;
                v34 = 346;
                v35 = 1024;
                v36 = v24;
                v37 = 1024;
                v38 = v5;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s:%d Start responseTimer, %u ms, outMsgType %u", buf, 0x1Eu);
              }

              *(a1 + 44) = t56_util_callbackOnTimer(a1, v24, _T56Protocol_timeoutCallback, 0);
            }

            v26 = logObjectForModule_40();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              t56_protocol_processIncomingData_cold_5(v5);
            }

            t56_protocol_sendData(a1, v29, v30);
          }

          else
          {
            v5 = 0;
          }

          v6 = 0;
          goto LABEL_58;
        }

        goto LABEL_76;
      }

      _t56_protocol_handleRequest_POLL(a1, a2, a3, v16, 0, &v30);
    }

    v5 = 0;
    v6 = 4294967294;
  }

LABEL_58:
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v18 = *(gLogObjects + 480);
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
    v19 = *(a1 + 8);
    v20 = t56_protocol_msgTypeString(v8);
    v21 = t56_protocol_msgTypeString(v5);
    *buf = 136317698;
    v32 = "t56_protocol_processIncomingData";
    v33 = 1024;
    v34 = 358;
    v35 = 1024;
    v36 = v6;
    v37 = 1024;
    v38 = v19;
    v39 = 1024;
    v40 = 0;
    v41 = 1024;
    *v42 = v8;
    *&v42[4] = 2080;
    *&v42[6] = v20;
    v43 = 1024;
    v44 = a3;
    v45 = 1024;
    v46 = v5;
    v47 = 2080;
    v48 = v21;
    v49 = 1024;
    v50 = v30;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, role %d, ver %d, msgType %d(%s), dataInLen %d, outMsgType %d(%s), dataOutLen %d", buf, 0x50u);
  }

  return v6;
}

BOOL t56_protocol_checkValidMessageHeaderAndSize(uint64_t a1, int a2, unsigned int a3)
{
  if (!a1)
  {
    v7 = -2;
    goto LABEL_75;
  }

  if (gLogObjects && gNumLogObjects >= 61)
  {
    v6 = *(gLogObjects + 480);
  }

  else
  {
    v6 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v23 = 136316418;
    v24 = "t56_protocol_checkValidMessageHeaderAndSize";
    v25 = 1024;
    v26 = 400;
    v27 = 1024;
    v28 = a2;
    v29 = 2080;
    *v30 = t56_protocol_msgTypeString(a2);
    *&v30[8] = 1024;
    *&v30[10] = a2;
    *&v30[14] = 1024;
    *&v30[16] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s:%d msgType %d(%s), msgHeader 0x%02X, msgDataLen %d", &v23, 0x2Eu);
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v7 = -2;
    goto LABEL_44;
  }

  if (gLogObjects && gNumLogObjects >= 61)
  {
    v9 = *(gLogObjects + 480);
  }

  else
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v22 = t56_protocol_msgTypeString(a2);
    v23 = 136316418;
    v24 = "t56_protocol_checkValidMessageHeaderAndSize";
    v25 = 1024;
    v26 = 406;
    v27 = 1024;
    v28 = a2;
    v29 = 2080;
    *v30 = v22;
    *&v30[8] = 1024;
    *&v30[10] = a2;
    *&v30[14] = 1024;
    *&v30[16] = a3;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s:%d Device, msgType %d(%s), msgHeader 0x%02X, msgDataLen %d", &v23, 0x2Eu);
  }

  if (a2 > 5)
  {
    if (a2 != 6)
    {
      if (a2 == 8)
      {
        if (a3 == 9)
        {
          v7 = 0;
        }

        else
        {
          v7 = -2;
        }

        goto LABEL_43;
      }

      goto LABEL_30;
    }

    v10 = a3 > 8;
  }

  else
  {
    if (a2 != 2)
    {
      if (a2 == 4)
      {
        v10 = a3 - 17 < 0xFFFFFFFFFFFFFFF6 && a3 > 6;
        goto LABEL_35;
      }

LABEL_30:
      if (gLogObjects && gNumLogObjects >= 61)
      {
        v11 = *(gLogObjects + 480);
      }

      else
      {
        v11 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        t56_protocol_checkValidMessageHeaderAndSize_cold_4();
      }

      v7 = -2;
      goto LABEL_43;
    }

    v10 = a3 > 0xC;
  }

LABEL_35:
  if (v10)
  {
    v7 = 0;
  }

  else
  {
    v7 = -2;
  }

LABEL_43:
  v8 = *(a1 + 8);
LABEL_44:
  if (v8 == 1)
  {
    if (gLogObjects && gNumLogObjects >= 61)
    {
      v12 = *(gLogObjects + 480);
    }

    else
    {
      v12 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v19 = t56_protocol_msgTypeString(a2);
      v23 = 136316418;
      v24 = "t56_protocol_checkValidMessageHeaderAndSize";
      v25 = 1024;
      v26 = 450;
      v27 = 1024;
      v28 = a2;
      v29 = 2080;
      *v30 = v19;
      *&v30[8] = 1024;
      *&v30[10] = a2;
      *&v30[14] = 1024;
      *&v30[16] = a3;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s:%d Accessory, msgType %d(%s), msgHeader 0x%02X, msgDataLen %d", &v23, 0x2Eu);
    }

    if (a2 <= 4)
    {
      if (a2 != 1)
      {
        if (a2 == 3)
        {
          goto LABEL_56;
        }

        goto LABEL_59;
      }

      v13 = a3 > 6;
    }

    else
    {
      switch(a2)
      {
        case 5:
          v13 = a3 > 4;
          break;
        case 6:
          v13 = a3 > 8;
          break;
        case 7:
LABEL_56:
          v13 = a3 > 2;
          break;
        default:
LABEL_59:
          if (gLogObjects && gNumLogObjects >= 61)
          {
            v14 = *(gLogObjects + 480);
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
            t56_protocol_checkValidMessageHeaderAndSize_cold_7();
          }

          goto LABEL_67;
      }
    }

    if (v13)
    {
      v7 = 0;
    }
  }

LABEL_67:
  if (*(a1 + 8) >= 2u)
  {
    if (gLogObjects && gNumLogObjects >= 61)
    {
      v15 = *(gLogObjects + 480);
    }

    else
    {
      v15 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 8);
      v21 = t56_protocol_msgTypeString(a2);
      v23 = 136316930;
      v24 = "t56_protocol_checkValidMessageHeaderAndSize";
      v25 = 1024;
      v26 = 500;
      v27 = 1024;
      v28 = v20;
      v29 = 1024;
      *v30 = v7;
      *&v30[4] = 1024;
      *&v30[6] = a2;
      *&v30[10] = 2080;
      *&v30[12] = v21;
      v31 = 1024;
      v32 = a2;
      v33 = 1024;
      v34 = a3;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s:%d Unknown Role! %d, result %d, msgType %d(%s), msgHeader 0x%02X, msgDataLen %d", &v23, 0x3Au);
    }
  }

LABEL_75:
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v16 = *(gLogObjects + 480);
  }

  else
  {
    v16 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = t56_protocol_msgTypeString(a2);
    v23 = 136316674;
    v24 = "t56_protocol_checkValidMessageHeaderAndSize";
    v25 = 1024;
    v26 = 505;
    v27 = 1024;
    v28 = v7;
    v29 = 1024;
    *v30 = a2;
    *&v30[4] = 2080;
    *&v30[6] = v17;
    *&v30[14] = 1024;
    *&v30[16] = a2;
    v31 = 1024;
    v32 = a3;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s:%d result %d, msgType %d(%s), msgHeader 0x%02X, msgDataLen %d", &v23, 0x34u);
  }

  return v7 == 0;
}

uint64_t _t56_protocol_handleResponse_SESSION_RSP(uint64_t a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5, unsigned __int16 *a6)
{
  v8 = gLogObjects;
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 61)
    {
      v12 = *(gLogObjects + 480);
    }

    else
    {
      v12 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      _t56_protocol_handleResponse_SESSION_RSP_cold_2(a1);
    }

    v13 = 0;
    v8 = gLogObjects;
    inited = 4294967294;
    if (a3 >= 0xD)
    {
      if (a2)
      {
        v34 = a5;
        v15 = (a1 + 8);
        if (!*(a1 + 8))
        {
          v13 = *a2;
          if (gLogObjects && gNumLogObjects >= 61)
          {
            v16 = *(gLogObjects + 480);
          }

          else
          {
            v16 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            _t56_protocol_handleResponse_SESSION_RSP_cold_4();
          }

          v8 = gLogObjects;
          inited = 4294967294;
          if (a6 && v34 >= 0x7D0 && a4 && v13 == 2)
          {
            *a6 = 0;
            *(a1 + 48) = 0;
            v17 = *(a2 + 1);
            v32 = a2[4];
            v33 = a2[3];
            v30 = a2[8];
            v31 = a2[7];
            v28 = a2[10];
            v29 = a2[9];
            v18 = a2[11];
            v19 = a2[12];
            if (v8 && gNumLogObjects >= 61)
            {
              v20 = *(v8 + 480);
            }

            else
            {
              v20 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            v21 = __rev16(v17);
            v22 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
            if (v22)
            {
              v23 = *v15;
              *buf = 136317442;
              v37 = "_t56_protocol_handleResponse_SESSION_RSP";
              v38 = 1024;
              v39 = 1024;
              v40 = 1024;
              v41 = v23;
              v42 = 1024;
              v43 = 2;
              v44 = 2080;
              v45 = "SESSION_RSP";
              v46 = 1024;
              v47 = v21;
              v48 = 1024;
              v49 = v32 | (v33 << 8);
              v50 = 1024;
              v51 = v30 | (v31 << 8);
              v52 = 1024;
              v53 = v28 | (v29 << 8);
              v54 = 1024;
              v55 = v19 | (v18 << 8);
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s:%d role %d, msgType %d(%s), sessionID %d, version %d, maxLength %d, status %d, info %d", buf, 0x46u);
            }

            inited = t56_protocol_initMsg_DISCOVER(v22, v21, a4, v34, a6);
            v8 = gLogObjects;
            v13 = 2;
          }
        }
      }
    }
  }

  else
  {
    v13 = 0;
    inited = 4294967294;
  }

  if (v8 && gNumLogObjects >= 61)
  {
    v24 = *(v8 + 480);
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
    v25 = t56_protocol_msgTypeString(v13);
    if (a6)
    {
      v26 = *a6;
    }

    else
    {
      v26 = -1;
    }

    *buf = 136316674;
    v37 = "_t56_protocol_handleResponse_SESSION_RSP";
    v38 = 1024;
    v39 = 1030;
    v40 = 1024;
    v41 = inited;
    v42 = 1024;
    v43 = v13;
    v44 = 2080;
    v45 = v25;
    v46 = 1024;
    v47 = a3;
    v48 = 1024;
    v49 = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, msgType %d(%s), dataInLen %u, dataOutLen %u", buf, 0x34u);
  }

  return inited;
}

uint64_t _t56_protocol_handleResponse_DISCOVER_RSP(uint64_t a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5, _WORD *a6)
{
  v8 = &audioProductCerts_endpoint_publish_onceToken;
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 61)
    {
      v12 = *(gLogObjects + 480);
    }

    else
    {
      v12 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      _t56_protocol_handleResponse_DISCOVER_RSP_cold_2(a1);
    }

    v13 = 0;
    inited = 4294967294;
    if (a3 >= 7)
    {
      if (a2)
      {
        v15 = (a1 + 8);
        if (!*(a1 + 8))
        {
          v52 = a4;
          v53 = a5;
          v13 = *a2;
          if (gLogObjects && gNumLogObjects >= 61)
          {
            v16 = *(gLogObjects + 480);
          }

          else
          {
            v16 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            _t56_protocol_handleResponse_DISCOVER_RSP_cold_4();
          }

          inited = 4294967294;
          if (a6 && a5 >= 0x7D0 && a4 && v13 == 4)
          {
            *a6 = 0;
            *(a1 + 48) = 0;
            v51 = __rev16(*(a2 + 1));
            v17 = __rev16(*(a2 + 5));
            if (v17 >= 5)
            {
              if (gLogObjects && gNumLogObjects >= 61)
              {
                v21 = *(gLogObjects + 480);
              }

              else
              {
                v21 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  platform_connectionInfo_configStreamGetCategories_cold_2();
                }
              }

              v13 = 4;
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                v22 = *v15;
                *buf = 136317186;
                v58 = "_t56_protocol_handleResponse_DISCOVER_RSP";
                v59 = 1024;
                v60 = 1071;
                v61 = 1024;
                v62 = v17;
                v63 = 1024;
                v64 = 4;
                v65 = 1024;
                *v66 = v22;
                *&v66[4] = 1024;
                *&v66[6] = 4;
                *v67 = 2080;
                *&v67[2] = "DISCOVER_RSP";
                v68 = 1024;
                v69 = v51;
                v70 = 1024;
                v71 = v17;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s:%d numClients(%d) too large! (max %d), role %d, msgType %d(%s), sessionID %d, numClients %d", buf, 0x40u);
              }

              inited = 4294967294;
              v8 = &audioProductCerts_endpoint_publish_onceToken;
            }

            else
            {
              v50 = a6;
              if (gLogObjects)
              {
                v18 = gNumLogObjects <= 60;
              }

              else
              {
                v18 = 1;
              }

              v19 = !v18;
              if (10 * v17 + 7 <= a3)
              {
                if (v19)
                {
                  v23 = *(gLogObjects + 480);
                }

                else
                {
                  v23 = &_os_log_default;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    platform_connectionInfo_configStreamGetCategories_cold_2();
                  }
                }

                v49 = a3;
                v25 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
                if (v25)
                {
                  v26 = *v15;
                  *buf = 136316674;
                  v58 = "_t56_protocol_handleResponse_DISCOVER_RSP";
                  v59 = 1024;
                  v60 = 1082;
                  v61 = 1024;
                  v62 = v26;
                  v63 = 1024;
                  v64 = 4;
                  v65 = 2080;
                  *v66 = "DISCOVER_RSP";
                  *&v66[8] = 1024;
                  *v67 = v51;
                  *&v67[4] = 1024;
                  *&v67[6] = v17;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s:%d role %d, msgType %d(%s), sessionID %d, numClients %d", buf, 0x34u);
                }

                if (v17)
                {
                  v27 = 0;
                  v28 = (a1 + 56);
                  v29 = a2 + 16;
                  v54 = v17;
                  do
                  {
                    *(v28 - 2) = bswap32(*(v29 - 7)) >> 16;
                    v30 = *(v29 - 3);
                    v31 = *(v29 - 2);
                    v32 = *(v29 - 1);
                    v33 = *v29;
                    *v28 = (v30 << 24) | (v31 << 16) | (v32 << 8) | v33;
                    v34 = v8[491];
                    v35 = gNumLogObjects;
                    if (v34 && gNumLogObjects >= 61)
                    {
                      v36 = *(v34 + 480);
                    }

                    else
                    {
                      v36 = &_os_log_default;
                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 134218240;
                        v58 = v34;
                        v59 = 1024;
                        v60 = v35;
                        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                      }
                    }

                    v25 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
                    if (v25)
                    {
                      v37 = *(a1 + 8);
                      v38 = *(v28 - 2);
                      v39 = *v28;
                      if ((v30 - 32) >= 0x5F)
                      {
                        v40 = 46;
                      }

                      else
                      {
                        v40 = v30;
                      }

                      if ((v31 - 32) >= 0x5F)
                      {
                        v41 = 46;
                      }

                      else
                      {
                        v41 = v31;
                      }

                      *buf = 136318722;
                      if ((v32 - 32) >= 0x5F)
                      {
                        v42 = 46;
                      }

                      else
                      {
                        v42 = v32;
                      }

                      v58 = "_t56_protocol_handleResponse_DISCOVER_RSP";
                      v59 = 1024;
                      if ((v33 - 32) >= 0x5F)
                      {
                        v43 = 46;
                      }

                      else
                      {
                        v43 = v33;
                      }

                      v60 = 1103;
                      v61 = 1024;
                      v62 = v37;
                      v63 = 1024;
                      v64 = 4;
                      v65 = 2080;
                      *v66 = "DISCOVER_RSP";
                      *&v66[8] = 1024;
                      *v67 = v51;
                      *&v67[4] = 1024;
                      *&v67[6] = v27;
                      v68 = 1024;
                      v69 = v38;
                      v70 = 1024;
                      v71 = v38;
                      v72 = 1024;
                      v73 = v39;
                      v74 = 1024;
                      v75 = v39;
                      v76 = 1024;
                      v77 = v40;
                      v78 = 1024;
                      v79 = v41;
                      v80 = 1024;
                      v81 = v42;
                      v82 = 1024;
                      v83 = v43;
                      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s:%d role %d, msgType %d(%s), sessionID %d, client[%d]: clientID 0x%x(%d), identifier 0x%x(%d '%c%c%c%c')", buf, 0x64u);
                    }

                    v29 += 10;
                    ++v27;
                    v28 += 2;
                    v8 = &audioProductCerts_endpoint_publish_onceToken;
                  }

                  while (v54 != v27);
                }

                v56 = 0;
                a6 = v50;
                inited = t56_protocol_initMsg_DATA(v25, v51, *(a1 + 52), 0, 1u, &v56, v52, v53, v50);
                v13 = 4;
                a3 = v49;
              }

              else
              {
                if (v19)
                {
                  v20 = *(gLogObjects + 480);
                }

                else
                {
                  v20 = &_os_log_default;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    platform_connectionInfo_configStreamGetCategories_cold_2();
                  }
                }

                v13 = 4;
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  v24 = *v15;
                  *buf = 136317186;
                  v58 = "_t56_protocol_handleResponse_DISCOVER_RSP";
                  v59 = 1024;
                  v60 = 1078;
                  v61 = 1024;
                  v62 = a3;
                  v63 = 1024;
                  v64 = 10 * v17 + 7;
                  v65 = 1024;
                  *v66 = v24;
                  *&v66[4] = 1024;
                  *&v66[6] = 4;
                  *v67 = 2080;
                  *&v67[2] = "DISCOVER_RSP";
                  v68 = 1024;
                  v69 = v51;
                  v70 = 1024;
                  v71 = v17;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s:%d Invalid message size %d vs %d, role %d, msgType %d(%s), sessionID %d, numClients %d", buf, 0x40u);
                }

                inited = 4294967294;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v13 = 0;
    inited = 4294967294;
  }

  v44 = v8[491];
  if (v44 && gNumLogObjects >= 61)
  {
    v45 = *(v44 + 480);
  }

  else
  {
    v45 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = t56_protocol_msgTypeString(v13);
    if (a6)
    {
      v47 = *a6;
    }

    else
    {
      v47 = -1;
    }

    *buf = 136316674;
    v58 = "_t56_protocol_handleResponse_DISCOVER_RSP";
    v59 = 1024;
    v60 = 1114;
    v61 = 1024;
    v62 = inited;
    v63 = 1024;
    v64 = v13;
    v65 = 2080;
    *v66 = v46;
    *&v66[8] = 1024;
    *v67 = a3;
    *&v67[4] = 1024;
    *&v67[6] = v47;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, msgType %d(%s), dataInLen %u, dataOutLen %u", buf, 0x34u);
  }

  return inited;
}

uint64_t _t56_protocol_handleResponse_DATA(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, unsigned int a5, _WORD *a6)
{
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v12 = *(gLogObjects + 480);
  }

  else
  {
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    if (a1)
    {
      v13 = *(a1 + 8);
    }

    else
    {
      v13 = -1;
    }

    *buf = 136316162;
    v44 = "_t56_protocol_handleResponse_DATA";
    v45 = 1024;
    v46 = 1127;
    v47 = 1024;
    v48 = v13;
    v49 = 1024;
    v50 = a3;
    v51 = 1024;
    LODWORD(v52) = a5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s:%d role %d, dataInLen %d, dataOutSize %d", buf, 0x24u);
  }

  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 61)
    {
      v14 = *(gLogObjects + 480);
    }

    else
    {
      v14 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      _t56_protocol_handleResponse_DATA_cold_3(a1);
    }

    v15 = 0;
    v16 = 4294967294;
    if (a3 >= 9)
    {
      if (a2)
      {
        v17 = (a1 + 8);
        if (!*(a1 + 8))
        {
          v42 = a6;
          v15 = *a2;
          if (gLogObjects && gNumLogObjects >= 61)
          {
            v18 = *(gLogObjects + 480);
          }

          else
          {
            v18 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            _t56_protocol_handleResponse_DATA_cold_5();
          }

          v16 = 4294967294;
          if (a6 && a5 >= 0x7D0 && a4 && v15 == 6)
          {
            *a6 = 0;
            v19 = *(a2 + 1);
            v20 = *(a2 + 3);
            v40 = a2[6];
            v41 = a2[5];
            v21 = *(a2 + 7);
            if (gLogObjects && gNumLogObjects >= 61)
            {
              v22 = *(gLogObjects + 480);
            }

            else
            {
              v22 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            v23 = __rev16(v21);
            v24 = __rev16(v19);
            v25 = __rev16(v20);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v26 = *v17;
              *buf = 136317186;
              v44 = "_t56_protocol_handleResponse_DATA";
              v45 = 1024;
              v46 = 1164;
              v47 = 1024;
              v48 = v26;
              v49 = 1024;
              v50 = 6;
              v51 = 2080;
              v52 = "DATA";
              v53 = 1024;
              v54 = v24;
              v55 = 1024;
              v56 = v25;
              v57 = 1024;
              v58 = v40 | (v41 << 8);
              v59 = 1024;
              v60 = v23;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s:%d role %d, msgType %d(%s), sessionID %d, clientID %d, remaining %d, payloadLen %d", buf, 0x40u);
            }

            a6 = v42;
            if (v23 <= 3)
            {
              if (gLogObjects && gNumLogObjects >= 61)
              {
                v30 = *(gLogObjects + 480);
              }

              else
              {
                v30 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  platform_connectionInfo_configStreamGetCategories_cold_2();
                }
              }

              v15 = 6;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v31 = *v17;
                *buf = 136316930;
                v44 = "_t56_protocol_handleResponse_DATA";
                v45 = 1024;
                v46 = 1170;
                v47 = 1024;
                v48 = v31;
                v49 = 1024;
                v50 = 6;
                v51 = 2080;
                v52 = "DATA";
                v53 = 1024;
                v54 = v24;
                v55 = 1024;
                v56 = v25;
                v57 = 1024;
                v58 = 3;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s:%d role %d, msgType %d(%s), sessionID %d, clientID %d, expecting payloadLen at least %d!!!", buf, 0x3Au);
              }

              v16 = 4294967294;
            }

            else if (a2[9] == 1)
            {
              v27 = (a2[12] << 16) | (a2[11] << 8);
              v28 = a2[10];
              if (gLogObjects && gNumLogObjects >= 61)
              {
                v29 = *(gLogObjects + 480);
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
                v33 = *v17;
                *buf = 136317186;
                v44 = "_t56_protocol_handleResponse_DATA";
                v45 = 1024;
                v46 = 1180;
                v47 = 1024;
                v48 = v33;
                v49 = 1024;
                v50 = 6;
                v51 = 2080;
                v52 = "DATA";
                v53 = 1024;
                v54 = v24;
                v55 = 1024;
                v56 = v25;
                v57 = 1024;
                v58 = v27 | v28;
                v59 = 1024;
                v60 = v27 | v28;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s:%d role %d, msgType %d(%s), sessionID %d, clientID %d, received rxID 0x%x (%d)", buf, 0x40u);
              }

              t56_util_notifyRxID(a1, v27 | v28);
              v16 = 0;
              v15 = 6;
              a6 = v42;
            }

            else
            {
              if (gLogObjects && gNumLogObjects >= 61)
              {
                v32 = *(gLogObjects + 480);
              }

              else
              {
                v32 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  platform_connectionInfo_configStreamGetCategories_cold_2();
                }
              }

              v15 = 6;
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v38 = *v17;
                v39 = a2[9];
                *buf = 136317186;
                v44 = "_t56_protocol_handleResponse_DATA";
                v45 = 1024;
                v46 = 1188;
                v47 = 1024;
                v48 = v38;
                v49 = 1024;
                v50 = 6;
                v51 = 2080;
                v52 = "DATA";
                v53 = 1024;
                v54 = v24;
                v55 = 1024;
                v56 = v25;
                v57 = 1024;
                v58 = v39;
                v59 = 1024;
                v60 = v39;
                _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s:%d role %d, msgType %d(%s), sessionID %d, clientID %d, Unknown RxID command 0x%x (%d)", buf, 0x40u);
              }

              v16 = 0;
            }
          }
        }
      }
    }
  }

  else
  {
    v15 = 0;
    v16 = 4294967294;
  }

  if (gLogObjects && gNumLogObjects >= 61)
  {
    v34 = *(gLogObjects + 480);
  }

  else
  {
    v34 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = t56_protocol_msgTypeString(v15);
    if (a6)
    {
      v36 = *a6;
    }

    else
    {
      v36 = -1;
    }

    *buf = 136316674;
    v44 = "_t56_protocol_handleResponse_DATA";
    v45 = 1024;
    v46 = 1196;
    v47 = 1024;
    v48 = v16;
    v49 = 1024;
    v50 = v15;
    v51 = 2080;
    v52 = v35;
    v53 = 1024;
    v54 = a3;
    v55 = 1024;
    v56 = v36;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, msgType %d(%s), dataInLen %u, dataOutLen %u", buf, 0x34u);
  }

  return v16;
}

uint64_t _t56_protocol_handleResponse_STATUS(uint64_t a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5, unsigned __int16 *a6)
{
  v8 = gLogObjects;
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 61)
    {
      v12 = *(gLogObjects + 480);
    }

    else
    {
      v12 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      _t56_protocol_handleResponse_STATUS_cold_2(a1);
    }

    v13 = 0;
    v8 = gLogObjects;
    v14 = 4294967294;
    if (a3 >= 9)
    {
      if (a2)
      {
        v32 = a5;
        v15 = (a1 + 8);
        if (!*(a1 + 8))
        {
          v13 = *a2;
          if (gLogObjects && gNumLogObjects >= 61)
          {
            v16 = *(gLogObjects + 480);
          }

          else
          {
            v16 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            _t56_protocol_handleResponse_STATUS_cold_4();
          }

          v8 = gLogObjects;
          v14 = 4294967294;
          if (a6 && v32 >= 0x7D0 && a4 && v13 == 8)
          {
            *a6 = 0;
            *(a1 + 48) = 0;
            v30 = a2[2];
            v31 = a2[1];
            v28 = a2[4];
            v29 = a2[3];
            v17 = a2[5];
            v18 = a2[6];
            v27 = a2[7];
            v19 = a2[8];
            if (v8 && gNumLogObjects >= 61)
            {
              v20 = *(v8 + 480);
            }

            else
            {
              v20 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
            if (v21)
            {
              v22 = *v15;
              *buf = 136316930;
              v35 = "_t56_protocol_handleResponse_STATUS";
              v36 = 1024;
              v37 = 1238;
              v38 = 1024;
              v39 = v22;
              v40 = 1024;
              v41 = 8;
              v42 = 2080;
              v43 = "STATUS";
              v44 = 1024;
              v45 = v30 | (v31 << 8);
              v46 = 1024;
              v47 = v28 | (v29 << 8);
              v48 = 1024;
              v49 = (v17 << 24) | (v18 << 16) | (v27 << 8) | v19;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s:%d role %d, msgType %d(%s), sessionID %d, status %d, errorCode %d", buf, 0x3Au);
            }

            t56_protocol_initMsg_POLL(v21, a4, v32, a6);
            v14 = 0;
            v8 = gLogObjects;
            v13 = 8;
          }
        }
      }
    }
  }

  else
  {
    v13 = 0;
    v14 = 4294967294;
  }

  if (v8 && gNumLogObjects >= 61)
  {
    v23 = *(v8 + 480);
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
    v24 = t56_protocol_msgTypeString(v13);
    if (a6)
    {
      v25 = *a6;
    }

    else
    {
      v25 = -1;
    }

    *buf = 136316674;
    v35 = "_t56_protocol_handleResponse_STATUS";
    v36 = 1024;
    v37 = 1248;
    v38 = 1024;
    v39 = v14;
    v40 = 1024;
    v41 = v13;
    v42 = 2080;
    v43 = v24;
    v44 = 1024;
    v45 = a3;
    v46 = 1024;
    v47 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, msgType %d(%s), dataInLen %u, dataOutLen %u", buf, 0x34u);
  }

  return v14;
}

uint64_t _t56_protocol_handleRequest_SESSION(uint64_t a1, unsigned __int8 *a2, int a3, unsigned __int8 *a4, unsigned int a5, unsigned __int16 *a6)
{
  v7 = gLogObjects;
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 61)
    {
      v10 = a5;
      v11 = a4;
      v12 = *(gLogObjects + 480);
    }

    else
    {
      v10 = a5;
      v11 = a4;
      v12 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      _t56_protocol_handleRequest_SESSION_cold_2(a1);
    }

    v13 = 0;
    v7 = gLogObjects;
    inited = 4294967294;
    if (a3 == 7)
    {
      if (a2)
      {
        v16 = *(a1 + 8);
        v15 = (a1 + 8);
        if (v16 == 1)
        {
          v13 = *a2;
          if (gLogObjects && gNumLogObjects >= 61)
          {
            v17 = *(gLogObjects + 480);
          }

          else
          {
            v17 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            _t56_protocol_handleRequest_SESSION_cold_4();
          }

          v7 = gLogObjects;
          inited = 4294967294;
          if (a6 && v10 >= 0x7D0 && v11 && v13 == 1)
          {
            *a6 = 0;
            v18 = *(a2 + 1);
            v28 = a2[3];
            v29 = a2[5];
            v19 = a2[4];
            if (v7 && gNumLogObjects >= 61)
            {
              v20 = *(v7 + 480);
            }

            else
            {
              v20 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            v21 = __rev16(v18);
            v22 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
            if (v22)
            {
              v23 = *v15;
              *buf = 136316930;
              v32 = "_t56_protocol_handleRequest_SESSION";
              v33 = 1024;
              v34 = 684;
              v35 = 1024;
              v36 = v23;
              v37 = 1024;
              v38 = 1;
              v39 = 2080;
              v40 = "SESSION";
              v41 = 1024;
              v42 = v21;
              v43 = 1024;
              v44 = v19 | (v28 << 8);
              v45 = 1024;
              v46 = v29;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s:%d role %d, msgType %d(%s), sessionID %d, version %d, sessionCommand %d", buf, 0x3Au);
            }

            inited = t56_protocol_initMsg_STATUS(v22, v21, 0, 0, v11, v10, a6);
            v7 = gLogObjects;
            v13 = 1;
          }
        }
      }
    }
  }

  else
  {
    v13 = 0;
    inited = 4294967294;
  }

  if (v7 && gNumLogObjects >= 61)
  {
    v24 = *(v7 + 480);
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
    v25 = t56_protocol_msgTypeString(v13);
    if (a6)
    {
      v26 = *a6;
    }

    else
    {
      v26 = -1;
    }

    *buf = 136316674;
    v32 = "_t56_protocol_handleRequest_SESSION";
    v33 = 1024;
    v34 = 704;
    v35 = 1024;
    v36 = inited;
    v37 = 1024;
    v38 = v13;
    v39 = 2080;
    v40 = v25;
    v41 = 1024;
    v42 = a3;
    v43 = 1024;
    v44 = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, msgType %d(%s), dataInLen %u, dataOutLen %u", buf, 0x34u);
  }

  return inited;
}

uint64_t _t56_protocol_handleRequest_DISCOVER(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 61)
    {
      v10 = *(gLogObjects + 480);
    }

    else
    {
      v10 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      _t56_protocol_handleRequest_DISCOVER_cold_2(a1);
    }

    v11 = 0;
    if (a3 == 3 && a2 && *(a1 + 8) == 1)
    {
      v11 = *a2;
      if (gLogObjects && gNumLogObjects >= 61)
      {
        v12 = *(gLogObjects + 480);
      }

      else
      {
        v12 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        _t56_protocol_handleRequest_DISCOVER_cold_4();
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (gLogObjects && gNumLogObjects >= 61)
  {
    v13 = *(gLogObjects + 480);
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
    v14 = t56_protocol_msgTypeString(v11);
    if (a6)
    {
      v15 = *a6;
    }

    else
    {
      v15 = -1;
    }

    v17 = 136316674;
    v18 = "_t56_protocol_handleRequest_DISCOVER";
    v19 = 1024;
    v20 = 767;
    v21 = 1024;
    v22 = -2;
    v23 = 1024;
    v24 = v11;
    v25 = 2080;
    v26 = v14;
    v27 = 1024;
    v28 = a3;
    v29 = 1024;
    v30 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, msgType %d(%s), dataInLen %u, dataOutLen %u", &v17, 0x34u);
  }

  return 4294967294;
}

uint64_t _t56_protocol_handleRequest_POLL(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 61)
    {
      v10 = *(gLogObjects + 480);
    }

    else
    {
      v10 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      _t56_protocol_handleRequest_POLL_cold_2(a1);
    }

    v11 = 0;
    if (a3 == 5 && a2 && *(a1 + 8) == 1)
    {
      v11 = *a2;
      if (gLogObjects && gNumLogObjects >= 61)
      {
        v12 = *(gLogObjects + 480);
      }

      else
      {
        v12 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        _t56_protocol_handleRequest_POLL_cold_4();
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (gLogObjects && gNumLogObjects >= 61)
  {
    v13 = *(gLogObjects + 480);
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
    v14 = t56_protocol_msgTypeString(v11);
    if (a6)
    {
      v15 = *a6;
    }

    else
    {
      v15 = -1;
    }

    v17 = 136316674;
    v18 = "_t56_protocol_handleRequest_POLL";
    v19 = 1024;
    v20 = 830;
    v21 = 1024;
    v22 = -2;
    v23 = 1024;
    v24 = v11;
    v25 = 2080;
    v26 = v14;
    v27 = 1024;
    v28 = a3;
    v29 = 1024;
    v30 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, msgType %d(%s), dataInLen %u, dataOutLen %u", &v17, 0x34u);
  }

  return 4294967294;
}

uint64_t _t56_protocol_handleRequest_DATA(uint64_t a1, unsigned __int8 *a2, int a3, unsigned __int8 *a4, unsigned int a5, unsigned __int16 *a6)
{
  v7 = gLogObjects;
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 61)
    {
      v10 = a5;
      v11 = a4;
      v12 = *(gLogObjects + 480);
    }

    else
    {
      v10 = a5;
      v11 = a4;
      v12 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      _t56_protocol_handleRequest_DATA_cold_2(a1);
    }

    v13 = 0;
    v7 = gLogObjects;
    inited = 4294967294;
    if (a3 == 9)
    {
      if (a2)
      {
        v16 = *(a1 + 8);
        v15 = (a1 + 8);
        if (v16 == 1)
        {
          v13 = *a2;
          if (gLogObjects && gNumLogObjects >= 61)
          {
            v17 = *(gLogObjects + 480);
          }

          else
          {
            v17 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            _t56_protocol_handleRequest_DATA_cold_4();
          }

          v7 = gLogObjects;
          inited = 4294967294;
          if (a6 && v10 >= 0x7D0 && v11 && v13 == 6)
          {
            *a6 = 0;
            v18 = *(a2 + 1);
            v31 = a2[4];
            v32 = a2[3];
            v29 = a2[6];
            v30 = a2[5];
            v28 = a2[7];
            v19 = a2[8];
            if (v7 && gNumLogObjects >= 61)
            {
              v20 = *(v7 + 480);
            }

            else
            {
              v20 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            v21 = __rev16(v18);
            v22 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
            if (v22)
            {
              v23 = *v15;
              *buf = 136317186;
              v35 = "_t56_protocol_handleRequest_DATA";
              v36 = 1024;
              v37 = 877;
              v38 = 1024;
              v39 = v23;
              v40 = 1024;
              v41 = 6;
              v42 = 2080;
              v43 = "DATA";
              v44 = 1024;
              v45 = v21;
              v46 = 1024;
              v47 = v31 | (v32 << 8);
              v48 = 1024;
              v49 = v29 | (v30 << 8);
              v50 = 1024;
              v51 = v19 | (v28 << 8);
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s:%d role %d, msgType %d(%s), sessionID %d, clientID %d, remaining %d, payloadLen %d", buf, 0x40u);
            }

            inited = t56_protocol_initMsg_STATUS(v22, v21, 0, 0, v11, v10, a6);
            v7 = gLogObjects;
            v13 = 6;
          }
        }
      }
    }
  }

  else
  {
    v13 = 0;
    inited = 4294967294;
  }

  if (v7 && gNumLogObjects >= 61)
  {
    v24 = *(v7 + 480);
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
    v25 = t56_protocol_msgTypeString(v13);
    if (a6)
    {
      v26 = *a6;
    }

    else
    {
      v26 = -1;
    }

    *buf = 136316674;
    v35 = "_t56_protocol_handleRequest_DATA";
    v36 = 1024;
    v37 = 889;
    v38 = 1024;
    v39 = inited;
    v40 = 1024;
    v41 = v13;
    v42 = 2080;
    v43 = v25;
    v44 = 1024;
    v45 = a3;
    v46 = 1024;
    v47 = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, msgType %d(%s), dataInLen %u, dataOutLen %u", buf, 0x34u);
  }

  return inited;
}

uint64_t _t56_protocol_handleRequest_TERMINATE(uint64_t a1, unsigned __int8 *a2, int a3, unsigned __int8 *a4, unsigned int a5, unsigned __int16 *a6)
{
  v7 = gLogObjects;
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 61)
    {
      v11 = a4;
      v12 = *(gLogObjects + 480);
    }

    else
    {
      v11 = a4;
      v12 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      _t56_protocol_handleRequest_TERMINATE_cold_2(a1);
    }

    v13 = 0;
    v7 = gLogObjects;
    inited = 4294967294;
    if (a3 == 3)
    {
      if (a2)
      {
        v16 = *(a1 + 8);
        v15 = (a1 + 8);
        if (v16 == 1)
        {
          v13 = *a2;
          if (gLogObjects && gNumLogObjects >= 61)
          {
            v17 = *(gLogObjects + 480);
          }

          else
          {
            v17 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            _t56_protocol_handleRequest_TERMINATE_cold_4();
          }

          v7 = gLogObjects;
          inited = 4294967294;
          if (a6 && a5 >= 0x7D0 && v11 && v13 == 7)
          {
            *a6 = 0;
            v18 = *(a2 + 1);
            if (v7 && gNumLogObjects >= 61)
            {
              v19 = *(v7 + 480);
            }

            else
            {
              v19 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            v20 = __rev16(v18);
            v21 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
            if (v21)
            {
              v22 = *v15;
              *buf = 136316418;
              v29 = "_t56_protocol_handleRequest_TERMINATE";
              v30 = 1024;
              v31 = 929;
              v32 = 1024;
              v33 = v22;
              v34 = 1024;
              v35 = 7;
              v36 = 2080;
              v37 = "DATA";
              v38 = 1024;
              v39 = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s:%d role %d, msgType %d(%s), sessionID %d", buf, 0x2Eu);
            }

            inited = t56_protocol_initMsg_STATUS(v21, v20, 0, 0, v11, a5, a6);
            v7 = gLogObjects;
            v13 = 7;
          }
        }
      }
    }
  }

  else
  {
    v13 = 0;
    inited = 4294967294;
  }

  if (v7 && gNumLogObjects >= 61)
  {
    v23 = *(v7 + 480);
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
    v24 = t56_protocol_msgTypeString(v13);
    if (a6)
    {
      v25 = *a6;
    }

    else
    {
      v25 = -1;
    }

    *buf = 136316674;
    v29 = "_t56_protocol_handleRequest_TERMINATE";
    v30 = 1024;
    v31 = 938;
    v32 = 1024;
    v33 = inited;
    v34 = 1024;
    v35 = v13;
    v36 = 2080;
    v37 = v24;
    v38 = 1024;
    v39 = a3;
    v40 = 1024;
    v41 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s:%d result %d, msgType %d(%s), dataInLen %u, dataOutLen %u", buf, 0x34u);
  }

  return inited;
}

uint64_t t56_protocol_initMsg_STATUS(uint64_t a1, int a2, int a3, int a4, unsigned __int8 *a5, unsigned int a6, _WORD *a7)
{
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v12 = *(gLogObjects + 480);
  }

  else
  {
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v21 = "t56_protocol_initMsg_STATUS";
    v22 = 1024;
    v23 = 1463;
    v24 = 1024;
    v25 = a2;
    v26 = 1024;
    v27 = a3;
    v28 = 1024;
    v29 = a4;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s:%d sessionID %d, status %d, status 0x%08x", buf, 0x24u);
  }

  v13 = 4294967294;
  if (a5 && a6 >= 9)
  {
    v13 = 0;
    *a5 = 8;
    a5[1] = BYTE1(a2);
    a5[3] = BYTE1(a3);
    a5[2] = a2;
    a5[4] = a3;
    a5[5] = HIBYTE(a4);
    a5[6] = BYTE2(a4);
    a5[7] = BYTE1(a4);
    a5[8] = a4;
    *a7 = 9;
  }

  v14 = *a5;
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v15 = *(gLogObjects + 480);
  }

  else
  {
    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = t56_protocol_msgTypeString(v14);
    if (a7)
    {
      v18 = *a7;
    }

    else
    {
      v18 = -1;
    }

    *buf = 136316674;
    v21 = "t56_protocol_initMsg_STATUS";
    v22 = 1024;
    v23 = 1482;
    v24 = 1024;
    v25 = v13;
    v26 = 1024;
    v27 = a2;
    v28 = 1024;
    v29 = v14;
    v30 = 2080;
    v31 = v17;
    v32 = 1024;
    v33 = v18;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s:%d result %d, sessionID %u, msgType %d(%s), msgDataOutLen %d", buf, 0x34u);
  }

  return v13;
}

uint64_t t56_protocol_initMsg_DATA(uint64_t a1, int a2, int a3, int a4, unsigned int a5, const void *a6, unsigned __int8 *a7, unsigned int a8, _WORD *a9)
{
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v15 = *(gLogObjects + 480);
  }

  else
  {
    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v25 = "t56_protocol_initMsg_DATA";
    v26 = 1024;
    v27 = 1499;
    v28 = 1024;
    v29 = a2;
    v30 = 1024;
    v31 = a3;
    v32 = 1024;
    v33 = a4;
    v34 = 1024;
    LODWORD(v35) = a5;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s:%d sessionID %d, clientID %d, remaining %d, payloadLen %d", buf, 0x2Au);
  }

  v16 = 4294967294;
  if (a5)
  {
    if (a6)
    {
      if (a7)
      {
        if (a5 <= 0x7C7)
        {
          v17 = a5 + 9;
          if (v17 <= a8)
          {
            *a7 = 6;
            a7[1] = BYTE1(a2);
            a7[2] = a2;
            a7[3] = BYTE1(a3);
            a7[4] = a3;
            a7[5] = BYTE1(a4);
            a7[6] = a4;
            a7[7] = BYTE1(a5);
            a7[8] = a5;
            memcpy(a7 + 9, a6, a5);
            v16 = 0;
            *a9 = v17;
          }
        }
      }
    }
  }

  v18 = *a7;
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v19 = *(gLogObjects + 480);
  }

  else
  {
    v19 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v21 = t56_protocol_msgTypeString(v18);
    if (a9)
    {
      v22 = *a9;
    }

    else
    {
      v22 = -1;
    }

    *buf = 136316674;
    v25 = "t56_protocol_initMsg_DATA";
    v26 = 1024;
    v27 = 1522;
    v28 = 1024;
    v29 = v16;
    v30 = 1024;
    v31 = a2;
    v32 = 1024;
    v33 = v18;
    v34 = 2080;
    v35 = v21;
    v36 = 1024;
    v37 = v22;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s:%d result %d, sessionID %u, msgType %d(%s), msgDataOutLen %d", buf, 0x34u);
  }

  return v16;
}

uint64_t t56_protocol_initMsg_DISCOVER(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4, _WORD *a5)
{
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v9 = *(gLogObjects + 480);
  }

  else
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    t56_protocol_initMsg_DISCOVER_cold_2();
  }

  v10 = 4294967294;
  if (a3 && a4 >= 3)
  {
    v10 = 0;
    *a3 = 3;
    a3[1] = BYTE1(a2);
    a3[2] = a2;
    *a5 = 3;
  }

  v11 = *a3;
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v12 = *(gLogObjects + 480);
  }

  else
  {
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = t56_protocol_msgTypeString(v11);
    if (a5)
    {
      v15 = *a5;
    }

    else
    {
      v15 = -1;
    }

    v16 = 136316674;
    v17 = "t56_protocol_initMsg_DISCOVER";
    v18 = 1024;
    v19 = 1316;
    v20 = 1024;
    v21 = v10;
    v22 = 1024;
    v23 = a2;
    v24 = 1024;
    v25 = v11;
    v26 = 2080;
    v27 = v14;
    v28 = 1024;
    v29 = v15;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s:%d result %d, sessionID %u, msgType %d(%s), msgDataOutLen %d", &v16, 0x34u);
  }

  return v10;
}

uint64_t t56_protocol_initMsg_POLL(uint64_t a1, unsigned __int8 *a2, unsigned int a3, _WORD *a4)
{
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v7 = *(gLogObjects + 480);
  }

  else
  {
    v7 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    t56_protocol_initMsg_POLL_cold_2();
  }

  v8 = 4294967294;
  if (a2 && a3 >= 5)
  {
    v8 = 0;
    *a2 = 5;
    *(a2 + 1) = 0;
    *a4 = 5;
  }

  v9 = *a2;
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v10 = *(gLogObjects + 480);
  }

  else
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = t56_protocol_msgTypeString(v9);
    v13 = -1;
    if (a4)
    {
      v13 = *a4;
    }

    v14 = 136316674;
    v15 = "t56_protocol_initMsg_POLL";
    v16 = 1024;
    v17 = 1344;
    v18 = 1024;
    v19 = v8;
    v20 = 1024;
    v21 = -1;
    v22 = 1024;
    v23 = v9;
    v24 = 2080;
    v25 = v12;
    v26 = 1024;
    v27 = v13;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s:%d result %d sessionID %d, msgType %d(%s), msgDataOutLen %d", &v14, 0x34u);
  }

  return v8;
}

uint64_t OUTLINED_FUNCTION_12_17@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 8);
  return result;
}

void OUTLINED_FUNCTION_16_18(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x2Eu);
}

void _handleIdentificationRejection_3(uint64_t a1)
{
  Feature = iap2_feature_getFeature(a1, 0xBu);
  if (Feature)
  {
    v2 = Feature;
    v3 = *(Feature + 8);
    if (v3)
    {
      CFDictionaryApplyFunction(v3, _CFDictionaryApplierFunction_releaseHIDComponents, 0);
      v4 = *(v2 + 8);
      if (v4)
      {
        CFRelease(v4);
        *(v2 + 8) = 0;
      }
    }
  }
}

uint64_t _hidComponentFunctionType(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 11;
  }

  Feature = iap2_feature_getFeature(a1, 0xBu);
  if (!Feature)
  {
    _hidComponentFunctionType_cold_3(buf);
    return *buf;
  }

  v4 = Feature;
  v5 = *(Feature + 8);
  if (!v5)
  {
    _hidComponentFunctionType_cold_2(buf);
    return *buf;
  }

  Count = CFDictionaryGetCount(v5);
  if (!Count)
  {
    return 11;
  }

  v7 = Count;
  __chkstk_darwin(Count);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  memset(v9, 170, v8);
  CFDictionaryGetKeysAndValues(*(v4 + 8), 0, v9);
  if (v7 >= 1)
  {
    *&v10 = 134218240;
    v16 = v10;
    do
    {
      v11 = *v9;
      if (*v9)
      {
        if (!*v11)
        {
          result = *(v11 + 16);
          if (result <= 0xA && *(v11 + 4) == a2)
          {
            return result;
          }
        }
      }

      else
      {
        v13 = gLogObjects;
        v14 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 33)
        {
          v15 = *(gLogObjects + 256);
        }

        else
        {
          v15 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            v20 = v13;
            v21 = 1024;
            v22 = v14;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            v15 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          _hidComponentFunctionType_cold_1(&v17, v18, v15);
        }
      }

      ++v9;
      --v7;
    }

    while (v7);
  }

  return 11;
}

void *logObjectForModule_42()
{
  if (gLogObjects && gNumLogObjects >= 33)
  {
    return *(gLogObjects + 256);
  }

  v0 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    platform_connectionInfo_configStreamGetCategories_cold_2();
  }

  return v0;
}

uint64_t _validateHIDComponent(uint64_t a1, int a2)
{
  if (!a1)
  {
    goto LABEL_21;
  }

  Feature = iap2_feature_getFeature(a1, 0xBu);
  if (!Feature)
  {
    _validateHIDComponent_cold_2(buf);
    v12 = buf[0];
    return v12 & 1;
  }

  v4 = *(Feature + 8);
  if (v4 && (Count = CFDictionaryGetCount(*(Feature + 8))) != 0)
  {
    v6 = Count;
    v19 = &v18;
    __chkstk_darwin(Count);
    v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    memset(v8, 170, v7);
    CFDictionaryGetKeysAndValues(v4, 0, v8);
    if (v6 >= 1)
    {
      v10 = 1;
      *&v9 = 134218240;
      v18 = v9;
      v11 = v6;
      v12 = 1;
      while (1)
      {
        v13 = *v8;
        if (*v8)
        {
          if (!*v13 && *(v13 + 16) <= 0xAu && *(v13 + 4) == a2)
          {
            return v12 & 1;
          }
        }

        else
        {
          v14 = gLogObjects;
          v15 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 33)
          {
            v16 = *(gLogObjects + 256);
          }

          else
          {
            v16 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v18;
              v23 = v14;
              v24 = 1024;
              v25 = v15;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              v16 = &_os_log_default;
            }
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            _hidComponentFunctionType_cold_1(&v20, v21, v16);
          }
        }

        v12 = v6 > v10;
        ++v8;
        ++v10;
        if (!--v11)
        {
          return v12 & 1;
        }
      }
    }

    v12 = 0;
  }

  else
  {
LABEL_21:
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t _parseiAPHIDComponentIdentificationParams(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v35 = -1;
  if (!a1)
  {
    _parseiAPHIDComponentIdentificationParams_cold_4(buf);
    return buf[0];
  }

  Feature = iap2_feature_getFeature(a1, 0xBu);
  if (!Feature)
  {
    iap2_features_createFeature(a1, 0xBu);
    Feature = iap2_feature_getFeature(a1, 0xBu);
    if (!Feature)
    {
      _parseiAPHIDComponentIdentificationParams_cold_3(buf);
      return buf[0];
    }
  }

  v7 = Feature;
  ParamID = iAP2MsgGetParamID(a3);
  if (gLogObjects && gNumLogObjects >= 33)
  {
    v9 = *(gLogObjects + 256);
  }

  else
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v37 = ParamID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "parsing identification paramID 0x%X", buf, 8u);
  }

  if (ParamID != 18)
  {
    v24 = 0;
    v16 = 10;
LABEL_54:
    iap2_identification_addRejectParam(a1, 18, v16);
    return v24;
  }

  valuePtr = 0;
  FirstParam = iAP2MsgGetFirstParam(a2, a3);
  if (!FirstParam)
  {
LABEL_42:
    v24 = 0;
    v16 = 2;
    goto LABEL_54;
  }

  NextParam = FirstParam;
  v12 = 0;
  cStr = 0;
  v13 = 0;
  v14 = 0;
  v15 = 9;
  v16 = 10;
  do
  {
    v17 = iAP2MsgGetParamID(NextParam);
    switch(v17)
    {
      case 2:
        if (v13)
        {
          v16 = 5;
          v13 = 1;
        }

        else
        {
          DataAsU8 = iAP2MsgGetDataAsU8(NextParam, &v35);
          v15 = DataAsU8;
          if (v35)
          {
            v13 = 0;
          }

          else
          {
            v13 = DataAsU8 < 0xB;
            if (DataAsU8 >= 0xB)
            {
              v16 = 6;
            }
          }
        }

        break;
      case 1:
        if (v14)
        {
          v16 = 5;
          v14 = 1;
        }

        else
        {
          cStr = iAP2MsgGetDataAsString(NextParam, &v35);
          v14 = v35 == 0;
        }

        break;
      case 0:
        if (v12)
        {
          v16 = 5;
          v12 = 1;
        }

        else
        {
          valuePtr = iAP2MsgGetDataAsU16(NextParam, &v35);
          v12 = v35 == 0;
        }

        break;
    }

    NextParam = iAP2MsgGetNextParam(a2, a3, NextParam);
  }

  while (NextParam);
  if (!v12 || !v14 || !v13 || v16 == 5)
  {
    if (v16 != 10)
    {
      goto LABEL_53;
    }

    goto LABEL_42;
  }

  v19 = CFNumberCreate(kCFAllocatorDefault, kCFNumberShortType, &valuePtr);
  if (v19)
  {
    v20 = v19;
    Mutable = *(v7 + 8);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, 0);
      *(v7 + 8) = Mutable;
    }

    if (CFDictionaryContainsKey(Mutable, v20))
    {
      v22 = *(v7 + 8);
      if (v22)
      {
        CFDictionaryApplyFunction(v22, _CFDictionaryApplierFunction_releaseHIDComponents, 0);
        v23 = *(v7 + 8);
        if (v23)
        {
          CFRelease(v23);
          *(v7 + 8) = 0;
        }
      }

      v16 = 3;
    }

    else
    {
      v25 = malloc_type_calloc(1uLL, 0x18uLL, 0x10600401C4EE62AuLL);
      v26 = v25;
      if (v25)
      {
        *v25 = 0;
        *(v25 + 2) = valuePtr;
        *(v25 + 1) = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
        v26[4] = v15;
        if (gLogObjects && gNumLogObjects >= 33)
        {
          v27 = *(gLogObjects + 256);
        }

        else
        {
          v27 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = *v26;
          v29 = *(v26 + 2);
          v30 = *(v26 + 1);
          v31 = v26[4];
          *buf = 67109890;
          v37 = v28;
          v38 = 1024;
          v39 = v29;
          v40 = 2112;
          v41 = v30;
          v42 = 1024;
          v43 = v31;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Adding iAP HID componentType: %d componentID: %d: '%@' %{coreacc:iAP2ParamID_IdentificationInfo_HIDComponent_Function_t}d", buf, 0x1Eu);
        }
      }

      CFDictionaryAddValue(*(v7 + 8), v20, v26);
      v16 = 0;
      *v7 = 1;
    }

    CFRelease(v20);
  }

LABEL_53:
  v24 = (v35 | v16) == 0;
  if (v16)
  {
    goto LABEL_54;
  }

  return v24;
}

uint64_t _parseUSBHostHIDComponentIdentificationParams(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v42 = 0;
  if (!a1)
  {
    _parseiAPHIDComponentIdentificationParams_cold_4(buf);
    return buf[0];
  }

  Feature = iap2_feature_getFeature(a1, 0xBu);
  if (!Feature)
  {
    iap2_features_createFeature(a1, 0xBu);
    Feature = iap2_feature_getFeature(a1, 0xBu);
    if (!Feature)
    {
      _parseiAPHIDComponentIdentificationParams_cold_3(buf);
      return buf[0];
    }
  }

  v7 = Feature;
  ParamID = iAP2MsgGetParamID(a3);
  if (gLogObjects && gNumLogObjects >= 33)
  {
    v9 = *(gLogObjects + 256);
  }

  else
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v44 = ParamID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "parsing identification paramID 0x%X", buf, 8u);
  }

  if (ParamID != 23)
  {
    v25 = 0;
    v17 = 10;
LABEL_66:
    platform_usb_clearUSBHostHIDInterfaces(*(a1 + 16));
    iap2_identification_addRejectParam(a1, 18, v17);
    return v25;
  }

  valuePtr = 0;
  FirstParam = iAP2MsgGetFirstParam(a2, a3);
  if (!FirstParam)
  {
LABEL_51:
    v25 = 0;
    v17 = 2;
    goto LABEL_66;
  }

  NextParam = FirstParam;
  v37 = v7;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  cStr = 0;
  v40 = 0;
  v15 = 0;
  v16 = 0;
  v38 = 9;
  v17 = 10;
  do
  {
    v18 = iAP2MsgGetParamID(NextParam);
    if (v18 <= 1)
    {
      if (v18)
      {
        if (v18 == 1)
        {
          if (v13)
          {
            v17 = 5;
            v13 = 1;
          }

          else
          {
            cStr = iAP2MsgGetDataAsString(NextParam, &v42);
            v13 = v42 == 0;
          }
        }
      }

      else if (v12)
      {
        v17 = 5;
        v12 = 1;
      }

      else
      {
        valuePtr = iAP2MsgGetDataAsU16(NextParam, &v42);
        v12 = v42 == 0;
      }
    }

    else
    {
      switch(v18)
      {
        case 2:
          if (v14)
          {
            v17 = 5;
            v14 = 1;
          }

          else
          {
            DataAsU8 = iAP2MsgGetDataAsU8(NextParam, &v42);
            v38 = DataAsU8;
            if (v42)
            {
              v14 = 0;
            }

            else
            {
              v14 = DataAsU8 < 0xB;
              if (DataAsU8 >= 0xB)
              {
                v17 = 6;
              }
            }
          }

          break;
        case 3:
          if (v16)
          {
            v17 = 5;
            v16 = 1;
          }

          else
          {
            LOWORD(v40) = iAP2MsgGetDataAsU16(NextParam, &v42);
            v16 = v42 == 0;
          }

          break;
        case 4:
          if (v15)
          {
            v17 = 5;
            v15 = 1;
          }

          else
          {
            WORD2(v40) = iAP2MsgGetDataAsU16(NextParam, &v42);
            v15 = v42 == 0;
          }

          break;
      }
    }

    NextParam = iAP2MsgGetNextParam(a2, a3, NextParam);
  }

  while (NextParam);
  if (!v12 || !v13 || !v14 || !v16 || !v15 || v17 == 5)
  {
    if (v17 != 10)
    {
      goto LABEL_65;
    }

    goto LABEL_51;
  }

  v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberShortType, &valuePtr);
  if (v20)
  {
    v21 = v20;
    Mutable = *(v37 + 8);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, 0);
      *(v37 + 8) = Mutable;
    }

    if (CFDictionaryContainsKey(Mutable, v21))
    {
      v23 = *(v37 + 8);
      if (v23)
      {
        CFDictionaryApplyFunction(v23, _CFDictionaryApplierFunction_releaseHIDComponents, 0);
        v24 = *(v37 + 8);
        if (v24)
        {
          CFRelease(v24);
          *(v37 + 8) = 0;
        }
      }

      v17 = 3;
    }

    else
    {
      v26 = malloc_type_calloc(1uLL, 0x18uLL, 0x10600401C4EE62AuLL);
      if (v26)
      {
        v27 = v26;
        *v26 = 1;
        v26[2] = valuePtr;
        *(v26 + 1) = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
        *(v27 + 4) = v38;
        v27[10] = v40;
        v27[11] = WORD2(v40);
        if (gLogObjects && gNumLogObjects >= 33)
        {
          v28 = *(gLogObjects + 256);
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
          v29 = *v27;
          v30 = v27[2];
          v31 = *(v27 + 1);
          v32 = *(v27 + 4);
          v33 = v27[10];
          v34 = v27[11];
          *buf = 67110402;
          v44 = v29;
          v45 = 1024;
          v46 = v30;
          v47 = 2112;
          v48 = v31;
          v49 = 1024;
          v50 = v32;
          v51 = 1024;
          v52 = v33;
          v53 = 1024;
          v54 = v34;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Adding Native USB HID componentType: %d componentID: %d: '%@' %{coreacc:iAP2ParamID_IdentificationInfo_HIDComponent_Function_t}d nativeTransportComponentID: %d, interfaceNumber: %d", buf, 0x2Au);
        }

        CFDictionaryAddValue(*(v37 + 8), v21, v27);
        if ((platform_usb_setUSBHostHIDInterface(*(a1 + 16), *(v27 + 22), *(v27 + 4)) & 1) == 0)
        {
          v35 = logObjectForModule_42();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            _parseUSBHostHIDComponentIdentificationParams_cold_3(v35);
          }
        }

        v17 = 0;
        *(v37 + 1) = 1;
      }
    }

    CFRelease(v21);
  }

LABEL_65:
  v25 = (v42 | v17) == 0;
  if (v17)
  {
    goto LABEL_66;
  }

  return v25;
}

uint64_t _parseNativeBTHIDComponentIdentificationParams(void *a1, uint64_t a2, unsigned __int16 *a3)
{
  v40 = 0;
  if (!a1)
  {
    _parseiAPHIDComponentIdentificationParams_cold_4(buf);
    return buf[0];
  }

  if (!*a1)
  {
    _parseNativeBTHIDComponentIdentificationParams_cold_4(buf);
    return buf[0];
  }

  Feature = iap2_feature_getFeature(a1, 0xBu);
  if (!Feature)
  {
    iap2_features_createFeature(a1, 0xBu);
    Feature = iap2_feature_getFeature(a1, 0xBu);
    if (!Feature)
    {
      _parseiAPHIDComponentIdentificationParams_cold_3(buf);
      return buf[0];
    }
  }

  v7 = Feature;
  ParamID = iAP2MsgGetParamID(a3);
  if (gLogObjects && gNumLogObjects >= 33)
  {
    v9 = *(gLogObjects + 256);
  }

  else
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v42 = ParamID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "parsing identification paramID 0x%X", buf, 8u);
  }

  if (ParamID != 29)
  {
    v24 = 0;
    v16 = 10;
LABEL_51:
    iap2_identification_addRejectParam(a1, 18, v16);
    return v24;
  }

  valuePtr = 0;
  FirstParam = iAP2MsgGetFirstParam(a2, a3);
  if (!FirstParam)
  {
LABEL_49:
    v24 = 0;
    v16 = 2;
    goto LABEL_51;
  }

  NextParam = FirstParam;
  v12 = 0;
  DataAsU16 = 0;
  cStr = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v36 = 9;
  v16 = 10;
  do
  {
    v17 = iAP2MsgGetParamID(NextParam);
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        if (v14)
        {
          v16 = 5;
          v14 = 1;
        }

        else
        {
          DataAsU8 = iAP2MsgGetDataAsU8(NextParam, &v40);
          v36 = DataAsU8;
          if (v40)
          {
            v14 = 0;
          }

          else
          {
            v14 = DataAsU8 < 0xB;
            if (DataAsU8 >= 0xB)
            {
              v16 = 6;
            }
          }
        }
      }

      else if (v17 == 3)
      {
        if (v13)
        {
          v16 = 5;
          v13 = 1;
        }

        else
        {
          DataAsU16 = iAP2MsgGetDataAsU16(NextParam, &v40);
          v13 = v40 == 0;
        }
      }
    }

    else if (v17)
    {
      if (v17 == 1)
      {
        if (v15)
        {
          v16 = 5;
          v15 = 1;
        }

        else
        {
          cStr = iAP2MsgGetDataAsString(NextParam, &v40);
          v15 = v40 == 0;
        }
      }
    }

    else if (v12)
    {
      v16 = 5;
      v12 = 1;
    }

    else
    {
      valuePtr = iAP2MsgGetDataAsU16(NextParam, &v40);
      v12 = v40 == 0;
    }

    NextParam = iAP2MsgGetNextParam(a2, a3, NextParam);
  }

  while (NextParam);
  if (!v12 || !v15 || !v14 || !v13 || v16 == 5)
  {
    if (v16 != 10)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v19 = CFNumberCreate(kCFAllocatorDefault, kCFNumberShortType, &valuePtr);
  if (v19)
  {
    v20 = v19;
    Mutable = *(v7 + 8);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, 0);
      *(v7 + 8) = Mutable;
    }

    if (CFDictionaryContainsKey(Mutable, v20))
    {
      v22 = *(v7 + 8);
      if (v22)
      {
        CFDictionaryApplyFunction(v22, _CFDictionaryApplierFunction_releaseHIDComponents, 0);
        v23 = *(v7 + 8);
        if (v23)
        {
          CFRelease(v23);
          *(v7 + 8) = 0;
        }
      }

      v16 = 3;
    }

    else
    {
      v26 = malloc_type_calloc(1uLL, 0x18uLL, 0x10600401C4EE62AuLL);
      if (v26)
      {
        v27 = v26;
        *v26 = 2;
        v26[2] = valuePtr;
        v28 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
        *(v27 + 4) = v36;
        *(v27 + 1) = v28;
        v27[10] = DataAsU16;
        if (gLogObjects && gNumLogObjects >= 33)
        {
          v29 = *(gLogObjects + 256);
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
          v30 = *v27;
          v31 = v27[2];
          v32 = *(v27 + 1);
          v33 = *(v27 + 4);
          v34 = v27[10];
          *buf = 67110146;
          v42 = v30;
          v43 = 1024;
          v44 = v31;
          v45 = 2112;
          v46 = v32;
          v47 = 1024;
          v48 = v33;
          v49 = 1024;
          v50 = v34;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Adding Native BT HID componentType: %d componentID: %d: '%@' %{coreacc:iAP2ParamID_IdentificationInfo_HIDComponent_Function_t}d nativeTransportComponentID: %d", buf, 0x24u);
        }

        CFDictionaryAddValue(*(v7 + 8), v20, v27);
        v35 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v27 + 8);
        if (acc_endpoint_setProperty(*a1, kCFACCProperties_Endpoint_Bluetooth_HIDFunction, v35))
        {
          v16 = 0;
          *(v7 + 1) = 1;
        }

        if (v35)
        {
          CFRelease(v35);
        }
      }
    }

    CFRelease(v20);
  }

LABEL_50:
  v24 = (v40 | v16) == 0;
  if (v16)
  {
    goto LABEL_51;
  }

  return v24;
}

CFStringRef OUTLINED_FUNCTION_2_41(char *cStr)
{

  return CFStringCreateWithCString(v1, cStr, 0x8000100u);
}

CFNumberRef OUTLINED_FUNCTION_8_28(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberIntType, a3);
}

void OUTLINED_FUNCTION_18_19(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_debug_impl(a1, v11, OS_LOG_TYPE_DEBUG, a4, &buf, 2u);
}

void *logObjectForModule_43()
{
  v0 = gLogObjects;
  v1 = gNumLogObjects;
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 19;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    return *(gLogObjects + 144);
  }

  v3 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    acc_nvmInfo_getPairingStatus_cold_1(v0, v1);
  }

  return v3;
}

BOOL mfi4Auth_protocol_initSessionCommon(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4, unsigned int a5, const void *a6, unsigned int a7)
{
  if (a5 >= 5)
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
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_initSessionCommon_cold_2();
    }
  }

  else
  {
    *(a1 + 8) = malloc_type_calloc(1uLL, 0x1001FuLL, 0x1090040DAA7631AuLL);
    *(a1 + 112) = 770;
    *(a1 + 120) = a5;
    memcpy((a1 + 114), a4, a5);
    if (a6 && a7)
    {
      *(a1 + 136) = a7;
      memcpy((a1 + 128), a6, a7);
    }

    else
    {
      *(a1 + 136) = 0;
    }

    *(a1 + 652) = 13;
    *(a1 + 24) = a3;
    *(a1 + 16) = malloc_type_calloc(1uLL, a3, 0x1273809DuLL);
    *a1 = a2;
    *(a1 + 30) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  return a5 < 5;
}

uint64_t mfi4Auth_protocol_cleanupSessionCommon(void *a1)
{
  if (a1)
  {
    mfi4Auth_relay_cleanup(a1);
    v2 = a1[55];
    if (v2)
    {
      free(v2);
      a1[55] = 0;
    }

    v3 = a1[57];
    if (v3)
    {
      free(v3);
      a1[57] = 0;
    }

    v4 = a1[59];
    if (v4)
    {
      free(v4);
      a1[59] = 0;
    }

    v5 = a1[43];
    if (v5)
    {
      free(v5);
      a1[43] = 0;
    }

    v6 = a1[45];
    if (v6)
    {
      free(v6);
      a1[45] = 0;
    }

    v7 = a1[47];
    if (v7)
    {
      free(v7);
      a1[47] = 0;
    }

    v8 = a1[2];
    if (v8)
    {
      free(v8);
      a1[2] = 0;
    }

    v9 = a1[12];
    if (v9)
    {
      free(v9);
      a1[12] = 0;
    }

    iAP2LinkRunLoopInitImplementation(a1[1]);
    v10 = a1[1];
    if (v10)
    {
      free(v10);
      a1[1] = 0;
    }
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v11 = *(gLogObjects + 440);
  }

  else
  {
    v11 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "mfi4Auth_protocol_cleanupSessionCommon";
    v15 = 1024;
    v16 = 87;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: %d", &v13, 0x12u);
  }

  return 1;
}

void init_logging()
{
  init_logging_modules(&_gLogObjects, 62, _kLoggingModuleEntries);
  v0 = gLogObjects;
  v1 = gNumLogObjects;
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
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
      v15 = 134218240;
      *v16 = v0;
      *&v16[8] = 1024;
      v17 = v1;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v15, 0x12u);
      v0 = gLogObjects;
      v1 = gNumLogObjects;
    }
  }

  else
  {
    v3 = *gLogObjects;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (v0 && v1 >= 1)
    {
      v4 = *v0;
    }

    else
    {
      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v15 = 134218240;
        *v16 = v0;
        *&v16[8] = 1024;
        v17 = v1;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v15, 0x12u);
        v0 = gLogObjects;
        v1 = gNumLogObjects;
      }
    }

    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
    if (v0 && v1 >= 1)
    {
      v6 = *v0;
    }

    else
    {
      v6 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    v15 = 67109376;
    *v16 = v5;
    *&v16[4] = 1024;
    *&v16[6] = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[Daemon] Info enabled: %d, [Daemon] Debug enabled: %d", &v15, 0xEu);
    v0 = gLogObjects;
    v1 = gNumLogObjects;
  }

  if (v0 && v1 >= 1)
  {
    v8 = *v0;
  }

  else
  {
    v8 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = gLogObjects;
    v10 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 20)
    {
      v11 = *(gLogObjects + 152);
    }

    else
    {
      v11 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v15 = 134218240;
        *v16 = v9;
        *&v16[8] = 1024;
        v17 = v10;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v15, 0x12u);
        v9 = gLogObjects;
        v10 = gNumLogObjects;
      }
    }

    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if (v9 && v10 >= 20)
    {
      v13 = *(v9 + 152);
    }

    else
    {
      v13 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    v15 = 67109376;
    *v16 = v12;
    *&v16[4] = 1024;
    *&v16[6] = v14;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[iAP2: Link Layer] Info enabled: %d, [iAP2: Link Layer] Debug enabled: %d", &v15, 0xEu);
  }

  init_logging_signposts();
}

void platform_assistiveTouch_accessoryAttached(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 35)
  {
    v2 = *(gLogObjects + 272);
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
    v5 = 138412290;
    v6 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "assistiveTouch accessoryAttached: %@", &v5, 0xCu);
  }

  v4 = +[ACCAssistiveTouchServer sharedServer];
  [v4 accessoryAssistiveTouchAttached:a1];
}

void platform_assistiveTouch_accessoryDetached(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 35)
  {
    v2 = *(gLogObjects + 272);
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
    v5 = 138412290;
    v6 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "assistiveTouch accessoryDetached: %@", &v5, 0xCu);
  }

  v4 = +[ACCAssistiveTouchServer sharedServer];
  [v4 accessoryAssistiveTouchDetached:a1];
}

void platform_assistiveTouch_setState(uint64_t a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 35)
  {
    v4 = *(gLogObjects + 272);
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = a1;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "assistiveTouch setState: %@ enabled=%d", &v7, 0x12u);
  }

  v6 = +[ACCAssistiveTouchServer sharedServer];
  [v6 setEnabled:a1 flag:a2];
}

void platform_assistiveTouch_requestStatus(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 35)
  {
    v2 = *(gLogObjects + 272);
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
    v5 = 138412290;
    v6 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "assistiveTouch requestState: %@", &v5, 0xCu);
  }

  v4 = +[ACCAssistiveTouchServer sharedServer];
  [v4 requestState:a1];
}

void platform_assistiveTouch_notifyStateHandler(void *a1, unsigned int a2)
{
  v3 = a1;
  if (gLogObjects && gNumLogObjects >= 35)
  {
    v4 = *(gLogObjects + 272);
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    v7 = v3;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "assistiveTouch notifyState %@ enabled=%d", &v6, 0x12u);
  }

  accFeatureHandlers_invokeHandler(v3, 17, a2);
}

void platform_assistiveTouch_incrementUserCount()
{
  v0 = +[ACCAssistiveTouchServer sharedServer];
  [v0 incrementUserCount];

  v1 = +[ACCAssistiveTouchServer sharedServer];
  v2 = [v1 featureUserCount];

  if (v2 == 1)
  {
    v3 = +[ACCFeaturePluginManager sharedManager];
    [v3 startPlugInsWithClasses:&off_100233D50];
  }
}

void platform_assistiveTouch_decrementUserCount()
{
  v0 = +[ACCAssistiveTouchServer sharedServer];
  [v0 decrementUserCount];
}

uint64_t _checkIdentificationInfo_12(uint64_t a1)
{
  v6 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo__kMsgDeviceAuthList, 6u, &v6);
  v3 = v2;
  if (v6 == 1 && v2 == 0)
  {
    iap2_features_createFeature(a1, 7u);
    iap2_identification_setIdentifiedForFeature(a1);
  }

  return v3;
}

__n128 OUTLINED_FUNCTION_2_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  *(v11 - 128) = a9.n128_u32[0];
  *(v11 - 124) = v9;
  *(v11 - 116) = v10;
  return result;
}

uint64_t iAP2LinkDeviceActionAttach(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    iAP2LinkDeviceActionAttach_cold_2();
  }

  if (!a2)
  {
    iAP2LinkDeviceActionAttach_cold_1();
  }

  *a2 = 29;
  v2 = *(a1 + 16) + 410;

  return iAP2LinkSetDefaultSYNParam(v2);
}

uint64_t *iAP2LinkDeviceActionSendResetSYNACK(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    iAP2LinkDeviceActionSendResetSYNACK_cold_2();
  }

  if (!a2)
  {
    iAP2LinkDeviceActionSendResetSYNACK_cold_1();
  }

  v22 = -21846;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v3;
  v21 = v3;
  v19 = v3;
  *a2 = 29;
  v4 = *(a1 + 16);
  NewSeqNum = iAP2LinkGetNewSeqNum(v4);
  iAP2LinkConnectedCB(v4, 0);
  v6 = *(v4 + 280);
  if (v6)
  {
    iAP2LinkSetDefaultSYNParam(v4 + 410);
    iAP2LinkResetSeqAck(v4, 1, 0);
    v7 = *(v4 + 352);
    v9 = v7[1];
    v8 = v7[2];
    v10 = *v7;
    *(v4 + 408) = *(v7 + 24);
    *(v4 + 376) = v9;
    *(v4 + 392) = v8;
    *(v4 + 360) = v10;
    v11 = *(v6 + 72);
    PayloadLen = iAP2PacketGetPayloadLen(v6);
    if (iAP2PacketParseSYNData(v11, PayloadLen, &v19))
    {
      iAP2LinkCheckNegotiation(v4, &v19);
    }
  }

  else
  {
    v22 = *(v4 + 408);
    v13 = *(v4 + 376);
    v19 = *(v4 + 360);
    v20 = v13;
    v21 = *(v4 + 392);
  }

  iAP2LinkResetSend(v4);
  v14 = *(v4 + 212);
  if ((v14 & 4) != 0)
  {
    v15 = *(v4 + 190);
  }

  else
  {
    *(v4 + 190) = NewSeqNum;
    *(v4 + 212) = v14 | 4;
  }

  SYNPacket = iAP2PacketCreateSYNPacket(v4);
  v17 = *(v4 + 464) + 1;
  *(v4 + 464) = v17;
  ++*(v4 + 496);
  ++*(v4 + 504);
  if ((*(v4 + 212) & 0x20) == 0 && v17 >= 0xB)
  {
    *a2 = 20;
  }

  iAP2LinkSendPacket(v4, SYNPacket, 0);
  return iAP2PacketRelease(SYNPacket);
}

void iAP2LinkDeviceActionSendDetect(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    iAP2LinkDeviceActionSendDetect_cold_2();
  }

  if (!a2)
  {
    iAP2LinkDeviceActionSendDetect_cold_1();
  }

  *a2 = 29;
  v2 = *(a1 + 16);
  iAP2LinkResetSeqAck(v2, 0, 1);
  v3 = *(v2 + 352);
  v5 = v3[1];
  v4 = v3[2];
  v6 = *v3;
  *(v2 + 408) = *(v3 + 24);
  *(v2 + 376) = v5;
  *(v2 + 392) = v4;
  *(v2 + 360) = v6;
  iAP2LinkConnectedCB(v2, 0);

  iAP2LinkSendDetectCB(v2, 0, v7, v8, v9, v10, v11, v12);
}

uint64_t *iAP2LinkDeviceActionSendRST(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    iAP2LinkDeviceActionSendRST_cold_3();
  }

  if (!a2)
  {
    iAP2LinkDeviceActionSendRST_cold_2();
  }

  if (_iAP2LogEnableMask)
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
      v6 = *(a1 + 10);
      v14[0] = 67109120;
      v14[1] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ERROR: iAP2LinkDeviceActionSendRST: iAP2 Link Layer reset triggered! (state: %d)", v14, 8u);
    }
  }

  *a2 = 29;
  v7 = *(a1 + 16);
  iAP2LinkResetSeqAck(v7, 0, 0);
  result = iAP2LinkSetDefaultSYNParam(v7 + 410);
  v9 = *(v7 + 352);
  v11 = v9[1];
  v10 = v9[2];
  v12 = *v9;
  *(v7 + 408) = *(v9 + 24);
  *(v7 + 376) = v11;
  *(v7 + 392) = v10;
  *(v7 + 360) = v12;
  if ((*(v7 + 212) & 0x20) != 0 || *(v7 + 464) < 0xBu)
  {
    RSTPacket = iAP2PacketCreateRSTPacket(v7, *(v7 + 190));
    ++*(v7 + 584);
    iAP2LinkSendPacket(v7, RSTPacket, 0);
    return iAP2PacketRelease(RSTPacket);
  }

  else
  {
    *a2 = 20;
  }

  return result;
}

uint64_t *iAP2LinkDeviceActionSendSYNACK(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    iAP2LinkDeviceActionSendSYNACK_cold_3();
  }

  if (!a2)
  {
    iAP2LinkDeviceActionSendSYNACK_cold_2();
  }

  v18 = -21846;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16 = v3;
  v17 = v3;
  v15 = v3;
  *a2 = 29;
  v4 = *(a1 + 16);
  v5 = *(v4 + 280);
  if (v5)
  {
    v6 = *(v5 + 72);
    PayloadLen = iAP2PacketGetPayloadLen(v5);
    if (iAP2PacketParseSYNData(v6, PayloadLen, &v15))
    {
      iAP2LinkCheckNegotiation(v4, &v15);
    }
  }

  else
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
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ERROR: Expected recvPck, just use previous negotiatedParam for now.", v14, 2u);
      }
    }

    v18 = *(v4 + 408);
    v9 = *(v4 + 376);
    v15 = *(v4 + 360);
    v16 = v9;
    v17 = *(v4 + 392);
  }

  if ((*(v4 + 212) & 4) != 0)
  {
    v10 = *(v4 + 190);
  }

  else
  {
    *(v4 + 190) = iAP2LinkGetNewSeqNum(v4);
    *(v4 + 212) |= 4u;
  }

  SYNPacket = iAP2PacketCreateSYNPacket(v4);
  v12 = *(v4 + 464) + 1;
  *(v4 + 464) = v12;
  ++*(v4 + 496);
  ++*(v4 + 504);
  if ((*(v4 + 212) & 0x20) == 0 && v12 >= 0xB)
  {
    *a2 = 20;
  }

  iAP2LinkSendPacket(v4, SYNPacket, 0);
  return iAP2PacketRelease(SYNPacket);
}

uint64_t *iAP2LinkDeviceActionResendSYNACK(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    iAP2LinkDeviceActionResendSYNACK_cold_3();
  }

  if (!a2)
  {
    iAP2LinkDeviceActionResendSYNACK_cold_2();
  }

  *a2 = 29;
  v3 = *(a1 + 16);
  if ((*(v3 + 212) & 4) != 0)
  {
    v4 = *(v3 + 190);
  }

  else
  {
    *(v3 + 190) = iAP2LinkGetNewSeqNum(*(a1 + 16));
    *(v3 + 212) |= 4u;
  }

  SYNPacket = iAP2PacketCreateSYNPacket(v3);
  v6 = SYNPacket;
  v7 = *(v3 + 472);
  if ((*(v3 + 212) & 0x20) != 0 || v7 < *(v3 + 412))
  {
    v8 = v7 + 1;
    *(v3 + 472) = v8;
    ++*(v3 + 512);
    ++*(v3 + 548);
    *(SYNPacket + 58) = v8;
    iAP2LinkSendPacket(v3, SYNPacket, 0);
  }

  else
  {
    if (_iAP2LogEnableMask)
    {
      if (gLogObjects && gNumLogObjects >= 20)
      {
        v9 = *(gLogObjects + 152);
      }

      else
      {
        v9 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(v3 + 412);
        v12 = 136315394;
        v13 = "Device:ResendSYNACK";
        v14 = 1024;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ERROR: %s Resend too many times! max=%d", &v12, 0x12u);
      }
    }

    *a2 = 20;
  }

  return iAP2PacketRelease(v6);
}

void iAP2LinkDeviceActionHandleMaxRetries(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    iAP2LinkDeviceActionHandleMaxRetries_cold_2();
  }

  if (!a2)
  {
    iAP2LinkDeviceActionHandleMaxRetries_cold_1();
  }

  *a2 = 29;
  v2 = *(a1 + 16);

  iAP2LinkEventNotify(v2, 6, 0);
}

void iAP2LinkDeviceActionNotifyConnection(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    iAP2LinkDeviceActionNotifyConnection_cold_2();
  }

  if (!a2)
  {
    iAP2LinkDeviceActionNotifyConnection_cold_1();
  }

  *a2 = 29;
  v2 = *(a1 + 16);
  *(v2 + 458) = *(v2 + 408);
  v3 = *(v2 + 376);
  *(v2 + 410) = *(v2 + 360);
  *(v2 + 426) = v3;
  *(v2 + 442) = *(v2 + 392);
  *(v2 + 214) = *(v2 + 213);
  *(v2 + 213) = *(v2 + 410);
  iAP2LinkEventNotify(v2, 2, v2 + 360);

  iAP2LinkConnectedCB(v2, 1);
}

uint64_t *iAP2LinkDeviceActionSendRSTWithNewChecksumEnabled(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    iAP2LinkDeviceActionSendRSTWithNewChecksumEnabled_cold_2();
  }

  if (!a2)
  {
    iAP2LinkDeviceActionSendRSTWithNewChecksumEnabled_cold_1();
  }

  *a2 = 29;
  v3 = *(a1 + 16);
  *(v3 + 214) = *(v3 + 213);
  *(v3 + 213) = *(v3 + 410);
  iAP2LinkResetSeqAck(v3, 0, 0);
  result = iAP2LinkSetDefaultSYNParam(v3 + 410);
  v5 = *(v3 + 352);
  v7 = v5[1];
  v6 = v5[2];
  v8 = *v5;
  *(v3 + 408) = *(v5 + 24);
  *(v3 + 376) = v7;
  *(v3 + 392) = v6;
  *(v3 + 360) = v8;
  if ((*(v3 + 212) & 0x20) != 0 || *(v3 + 464) < 0xBu)
  {
    RSTPacket = iAP2PacketCreateRSTPacket(v3, *(v3 + 190));
    ++*(v3 + 584);
    iAP2LinkSendPacket(v3, RSTPacket, 0);

    return iAP2PacketRelease(RSTPacket);
  }

  else
  {
    *a2 = 20;
  }

  return result;
}

uint64_t *iAP2LinkDeviceActionSendSuspend(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    iAP2LinkDeviceActionSendSuspend_cold_2();
  }

  if (!a2)
  {
    iAP2LinkDeviceActionSendSuspend_cold_1();
  }

  *a2 = 29;
  v2 = *(a1 + 16);
  iAP2LinkEventNotify(v2, 7, v2 + 360);
  SUSPacket = iAP2PacketCreateSUSPacket(v2, *(v2 + 190));
  iAP2LinkSendPacketWaitSend(v2, SUSPacket, 0);

  return iAP2PacketRelease(SUSPacket);
}

uint64_t *iAP2LinkDeviceActionSendResume(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    iAP2LinkDeviceActionSendResume_cold_2();
  }

  if (!a2)
  {
    iAP2LinkDeviceActionSendResume_cold_1();
  }

  *a2 = 29;
  v2 = *(a1 + 16);
  iAP2LinkEventNotify(v2, 8, v2 + 360);
  ACKPacket = iAP2PacketCreateACKPacket(v2, *(v2 + 190), *(v2 + 188), 0, 0, 0);
  iAP2LinkSendPacket(v2, ACKPacket, 0);

  return iAP2PacketRelease(ACKPacket);
}

uint64_t iap2_voiceOver_moveCursorHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 21;
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
        logObjectForModule_cold_1_1();
      }
    }

    else
    {
      v6 = *(gLogObjects + 160);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 8);
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "moveCursorHandler %@", buf, 0xCu);
    }

    FirstParam = iAP2MsgGetFirstParam(a2, 0);
    v18 = 0;
    if (FirstParam)
    {
      NextParam = FirstParam;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        ParamID = iAP2MsgGetParamID(NextParam);
        if (ParamID)
        {
          v13 = ParamID;
          MsgID = iAP2MsgGetMsgID(a2);
          printf("Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", v13, MsgID);
        }

        else
        {
          DataAsU8 = iAP2MsgGetDataAsU8(NextParam, &v18);
          if (v18)
          {
            iap2_voiceOver_moveCursorHandler_cold_2(a2);
            return 0;
          }

          if (DataAsU8 <= 2)
          {
            if (DataAsU8)
            {
              if (DataAsU8 == 2)
              {
                v10 = 24;
              }

              else
              {
                v10 = 5;
              }
            }

            else
            {
              v10 = 4;
            }

            v11 = 1;
          }
        }

        NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
        if (!NextParam)
        {
          goto LABEL_27;
        }
      }
    }

    v11 = 0;
    v10 = 0;
LABEL_27:
    if (gLogObjects && gNumLogObjects >= 21)
    {
      v16 = *(gLogObjects + 160);
    }

    else
    {
      v16 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        logObjectForModule_cold_1_1();
      }
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 8);
      *buf = 138412802;
      v20 = v17;
      v21 = 1024;
      v22 = v10;
      v23 = 1024;
      v24 = v11 & 1;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "moveCursotHandler: %@ action=%d (valid=%d)", buf, 0x18u);
    }

    if (v11)
    {
      result = iap2_feature_getFeature(a1, 0x15u);
      if (result)
      {
        platform_voiceOver_performAction(*(a1 + 8), v10, 0);
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t iap2_voiceOver_scrollPageHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 21;
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
        logObjectForModule_cold_1_1();
      }
    }

    else
    {
      v6 = *(gLogObjects + 160);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 8);
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "scrollPageHandler %@", buf, 0xCu);
    }

    FirstParam = iAP2MsgGetFirstParam(a2, 0);
    v20 = 0;
    if (FirstParam)
    {
      NextParam = FirstParam;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        ParamID = iAP2MsgGetParamID(NextParam);
        if (ParamID)
        {
          v13 = ParamID;
          MsgID = iAP2MsgGetMsgID(a2);
          printf("Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", v13, MsgID);
        }

        else
        {
          DataAsU8 = iAP2MsgGetDataAsU8(NextParam, &v20);
          if (v20)
          {
            iap2_voiceOver_moveCursorHandler_cold_2(a2);
            return 0;
          }

          if (DataAsU8 == 2)
          {
            v16 = 8;
          }

          else
          {
            v16 = 9;
          }

          if (DataAsU8)
          {
            v17 = 7;
          }

          else
          {
            v17 = 6;
          }

          if (DataAsU8 <= 1)
          {
            v16 = v17;
          }

          if (DataAsU8 > 3)
          {
            v10 = v10;
          }

          else
          {
            v11 = 1;
            v10 = v16;
          }
        }

        NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
        if (!NextParam)
        {
          goto LABEL_31;
        }
      }
    }

    v11 = 0;
    v10 = 0;
LABEL_31:
    if (gLogObjects && gNumLogObjects >= 21)
    {
      v18 = *(gLogObjects + 160);
    }

    else
    {
      v18 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        logObjectForModule_cold_1_1();
      }
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 8);
      *buf = 138412802;
      v22 = v19;
      v23 = 1024;
      v24 = v10;
      v25 = 1024;
      v26 = v11 & 1;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "scrollPageHandler: %@ action=%d (valid=%d)", buf, 0x18u);
    }

    if (v11)
    {
      result = iap2_feature_getFeature(a1, 0x15u);
      if (result)
      {
        platform_voiceOver_performAction(*(a1 + 8), v10, 0);
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}