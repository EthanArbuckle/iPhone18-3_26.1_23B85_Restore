void sub_1298(uint64_t a1)
{
  v2 = [*(a1 + 32) destinationsIncludingTinker:*(a1 + 64)];
  v3 = [*(a1 + 32) idsService];
  v4 = *(a1 + 40);
  v24[0] = &__kCFBooleanTrue;
  v23[0] = IDSSendMessageOptionDirectMessaging;
  v23[1] = IDSSendMessageOptionLocalDeliveryKey;
  v5 = [NSNumber numberWithBool:*(a1 + 65)];
  v24[1] = v5;
  v23[2] = IDSSendMessageOptionNonWakingKey;
  v6 = [NSNumber numberWithBool:*(a1 + 66)];
  v7 = *(a1 + 48);
  v24[2] = v6;
  v24[3] = v7;
  v23[3] = IDSSendMessageOptionQueueOneIdentifierKey;
  v23[4] = IDSSendMessageOptionRequireBluetoothKey;
  v24[4] = &__kCFBooleanTrue;
  v24[5] = &__kCFBooleanFalse;
  v23[5] = IDSSendMessageOptionEnforceRemoteTimeoutsKey;
  v23[6] = IDSSendMessageOptionFireAndForgetKey;
  v24[6] = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:7];
  v21 = 0;
  v22 = 0;
  v9 = [v3 sendData:v4 toDestinations:v2 priority:300 options:v8 identifier:&v22 error:&v21];
  v10 = v22;
  v11 = v21;

  v12 = TIMELINK_FACILITY;
  if (!v9 || v11)
  {
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
    {
      sub_7CA8(v11, v12);
    }

    v10 = 0;
  }

  else if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
  {
    sub_7D20(v10, v12);
  }

  v13 = [*(a1 + 32) workloop];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1560;
  v17[3] = &unk_103C0;
  v14 = *(a1 + 56);
  v19 = v11;
  v20 = v14;
  v18 = v10;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, v17);
}

void sub_1658(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataReceived:*(a1 + 40)];
}

void sub_18E0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (*(a1 + 56))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  v4 = v2;
  [v2 didSendDataIdentifier:*(a1 + 40) withError:v3];
}

void sub_1B60(uint64_t a1)
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  if ([v2 isPaired])
  {
    v3 = &dword_0 + 1;
  }

  else
  {
    v3 = [*(a1 + 32) isGizmo];
  }

  v4 = [*(a1 + 32) daemonCore];
  [v4 setAccurateThresholds:v3];
}

void sub_1F8C(uint64_t a1, void *a2)
{
  v3 = [a2 workloop];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_413C;
  block[3] = &unk_10548;
  block[4] = a2;
  dispatch_async(v3, block);
}

id *sub_2190(id *result)
{
  if (result[7] == &off_10480)
  {
    v1 = result;
    if (([result[4] isEqualToString:@"automaticTimeEnabled"] & 1) == 0)
    {
      sub_7F00();
    }

    v2 = v1[5];
    WeakRetained = objc_loadWeakRetained(v1[6] + 6);
    if (v2 != WeakRetained)
    {
      sub_7F2C();
    }

    v4 = v1[6];

    return [v4 syncAutomaticTimeEnabled];
  }

  return result;
}

void sub_2874(uint64_t a1)
{
  v2 = [*(a1 + 32) daemonCore];
  v3 = [v2 isAutomaticTimeEnabled];

  if (v3)
  {
    v4 = *(a1 + 32);
    if ((*(v4 + 16) & 1) == 0)
    {
      *(v4 + 16) = 1;
      v5 = dispatch_time(0, 8000000000);
      v6 = [*(a1 + 32) workloop];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_2970;
      v8[3] = &unk_10410;
      v7 = *(a1 + 40);
      v8[4] = *(a1 + 32);
      v9 = v7;
      dispatch_after(v5, v6, v8);
    }
  }
}

id sub_2970(uint64_t a1)
{
  result = [*(a1 + 32) _systemTimeChanged:*(a1 + 40)];
  *(*(a1 + 32) + 16) = 0;
  return result;
}

void sub_2A74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

id sub_2E38(double *a1)
{
  v7[0] = @"local_rtc_s";
  v2 = [NSNumber numberWithDouble:a1[4]];
  v8[0] = v2;
  v7[1] = @"remote_rtc_s";
  v3 = [NSNumber numberWithDouble:a1[5]];
  v8[1] = v3;
  v7[2] = @"unc_s";
  v4 = [NSNumber numberWithDouble:a1[6]];
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

void sub_2F44(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"TMSource"];
    if (v4)
    {
      v5 = v4;
      v6 = [v3 objectForKeyedSubscript:@"TMCurrentTime"];
      if (v6)
      {
        v7 = v6;
        v8 = [v3 objectForKeyedSubscript:@"TMRtcTime"];
        if (v8)
        {
          v9 = v8;
          v10 = [v3 objectForKeyedSubscript:@"TMTimeError"];

          if (v10)
          {
            v11 = [*(a1 + 32) link];
            v12 = [v3 objectForKeyedSubscript:@"TMCurrentTime"];
            [v12 doubleValue];
            v14 = v13;
            v15 = [v3 objectForKeyedSubscript:@"TMRtcTime"];
            [v15 doubleValue];
            v17 = v16;
            v18 = [v3 objectForKeyedSubscript:@"TMTimeError"];
            [v18 doubleValue];
            v20 = v19;
            v21 = [v3 objectForKeyedSubscript:@"TMSource"];
            v22 = [v3 objectForKeyedSubscript:@"TMTimeReliable"];
            [v11 sendTime:v21 localRTC:objc_msgSend(v22 uncertainty:"BOOLValue") source:v14 reliable:{v17, v20}];

            goto LABEL_13;
          }

          goto LABEL_11;
        }
      }
    }

LABEL_11:
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
    {
      sub_8374();
    }

    goto LABEL_13;
  }

  v23 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
  {
    sub_82D0(v23);
  }

LABEL_13:
}

void sub_3170(uint64_t a1, double a2, double a3)
{
  if (a2 <= 0.0)
  {
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
    {
      sub_83E8();
    }

    [*(a1 + 32) significantTimeChange];
  }

  else
  {
    v6 = *(a1 + 40);
    v12[0] = @"TMLSSourceDevice";
    v11[0] = @"TMSource";
    v11[1] = @"TMCurrentTime";
    v7 = [NSNumber numberWithDouble:*(a1 + 48)];
    v12[1] = v7;
    v11[2] = @"TMTimeError";
    v8 = [NSNumber numberWithDouble:a3];
    v12[2] = v8;
    v11[3] = @"TMRtcTime";
    v9 = [NSNumber numberWithDouble:a2];
    v12[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
    (*(v6 + 16))(v6, v10);
  }
}

void sub_3978(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained testAndApplySystemTime];
}

void sub_3F9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

id sub_413C(uint64_t a1)
{
  [*(a1 + 32) significantTimeChange];
  v2 = *(a1 + 32);

  return [v2 systemTimeZoneChanged];
}

const __CFString *lazy cache variable for type metadata for String(int a1)
{
  if (a1 <= 1001)
  {
    switch(a1)
    {
      case 1000:
        return @"TMLSSourceUser";
      case 1001:
        return @"TMLSSourceComputed";
      case 999:
        sub_864C();
    }
  }

  else
  {
    if (a1 == 1002)
    {
      return @"TMLSSourceComputedReliable";
    }

    if (a1 == 1003)
    {
      return @"TMLSSourceDevice";
    }
  }

  return @"TMLSSourceUnknown";
}

id lazy cache variable for type metadata for String(void *a1)
{
  v1 = a1;
  if (qword_15AA8 != -1)
  {
    sub_8678();
  }

  v2 = [qword_15AA0 objectForKeyedSubscript:v1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = &stru_3D8 + 20;
  }

  return v4;
}

void sub_4294(id a1)
{
  v3[0] = @"TMLSSourceUser";
  v3[1] = @"TMLSSourceComputed";
  v4[0] = &off_11230;
  v4[1] = &off_11248;
  v3[2] = @"TMLSSourceComputedReliable";
  v3[3] = @"TMLSSourceDevice";
  v4[2] = &off_11260;
  v4[3] = &off_11278;
  v3[4] = @"TMLSSourceUnknown";
  v4[4] = &off_11290;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:5];
  v2 = qword_15AA0;
  qword_15AA0 = v1;
}

double TMLSHackedRTC()
{
  v4 = 8;
  v5 = 0;
  if ((byte_15AB0 & 1) == 0)
  {
    if (sysctlnametomib("kern.monotonicclock_usecs", dword_15AB4, &dword_15A28))
    {
      v0 = TIMELINK_FACILITY;
      v1 = -1.0;
      if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
      {
        sub_868C(v0);
      }

      return v1;
    }

    if (qword_15AE8 != -1)
    {
      sub_86D0();
    }

    *&qword_15AD8 = *&qword_15AE0 * 0.5;
    byte_15AB0 = 1;
  }

  if (!sysctl(dword_15AB4, dword_15A28, &v5, &v4, 0, 0))
  {
    return *&qword_15AD8 + v5 / 1000000.0;
  }

  v2 = TIMELINK_FACILITY;
  v1 = -1.0;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
  {
    sub_86E4(v2);
  }

  return v1;
}

void sub_44AC(id a1)
{
  qword_15AE0 = 0x3FF0000000000000;
  v1 = 8;
  v2 = 0;
  if (sysctlbyname("kern.monotonicclock_rate_usecs", &v2, &v1, 0, 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_8794();
    }
  }

  else
  {
    *&qword_15AE0 = v2 / 1000000.0;
  }
}

id sub_5518(uint64_t a1)
{
  v9[0] = @"error";
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) code]);
  v10[0] = v2;
  v9[1] = @"msg";
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"kTMLSLinkMsgKey"];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 intValue]);
  v10[1] = v4;
  v9[2] = @"src";
  v5 = [*(a1 + 40) objectForKeyedSubscript:@"kTMLSLinkSourceKey"];
  v6 = [NSNumber numberWithUnsignedInt:lazy cache variable for type metadata for String(v5)];
  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

id sub_5680(uint64_t a1)
{
  v4 = @"error";
  v1 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) code]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_573C(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"kTMLSLinkMsgKey"];
  v3 = [v2 intValue];
  v4 = v3;
  if (v3 < 0xD && ((0x1BF3u >> v3) & 1) != 0)
  {
    v4 = *(&off_107A8 + v3);
  }

  else
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"NSString *msgTypeString(TMLS_MSG_TYPE)"];
    [v5 handleFailureInFunction:v6 file:@"TMLSLink.m" lineNumber:83 description:{@"Unknown TMLS_MSG_TYPE: %lld", v4}];
  }

  v7 = [v1 objectForKeyedSubscript:@"kTMLSLinkSourceKey"];

  if (v7)
  {
    v4 = [NSString stringWithFormat:@"%@-%@", v4, v7];
  }

  return v4;
}

id sub_5870(uint64_t a1)
{
  v4 = @"error";
  v1 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) code]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_5F60(uint64_t a1)
{
  v9[0] = @"error";
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) code]);
  v10[0] = v2;
  v9[1] = @"msg";
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"kTMLSLinkMsgKey"];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 intValue]);
  v10[1] = v4;
  v9[2] = @"src";
  v5 = [*(a1 + 40) objectForKeyedSubscript:@"kTMLSLinkSourceKey"];
  v6 = [NSNumber numberWithUnsignedInt:lazy cache variable for type metadata for String(v5)];
  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

void sub_60C8(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 48)];
  v3 = [v2 isEqualToString:*(a1 + 40)];
  v4 = TIMELINK_FACILITY;
  v5 = os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "retrying %@ (%@) after send failure", &v10, 0x16u);
    }

    [*(a1 + 32) sendData:*(a1 + 56) localOnly:1 nonWaking:0];
  }

  else if (v5)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%@ (%@) superseded by %@, not retrying", &v10, 0x20u);
  }
}

void sub_6750(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "sendData: %@ withIdentifier: %@", buf, 0x16u);
  }

  if (v5)
  {
    [*(*(a1 + 40) + 16) setObject:*(a1 + 32) forKeyedSubscript:v5];
    [*(*(a1 + 40) + 32) setObject:v5 forKeyedSubscript:*(a1 + 48)];
  }

  else
  {
    v9 = TIMELINK_FACILITY;
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
    {
      sub_8D10(a1, v6, v9);
    }

    v12 = v6;
    v13 = *(a1 + 32);
    AnalyticsSendEventLazy();
    v10 = [*(a1 + 32) objectForKeyedSubscript:{@"kTMLSLinkMsgKey", _NSConcreteStackBlock, 3221225472, sub_6930, &unk_10678}];
    v11 = [v10 intValue];

    if (v11 == 7)
    {
      [*(a1 + 40) setSyncState:0];
    }
  }
}

id sub_6930(uint64_t a1)
{
  v10[0] = &off_11350;
  v9[0] = @"assertion";
  v9[1] = @"error";
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) code]);
  v10[1] = v2;
  v9[2] = @"msg";
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"kTMLSLinkMsgKey"];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 intValue]);
  v10[2] = v4;
  v9[3] = @"src";
  v5 = [*(a1 + 40) objectForKeyedSubscript:@"kTMLSLinkSourceKey"];
  v6 = [NSNumber numberWithUnsignedInt:lazy cache variable for type metadata for String(v5)];
  v10[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

id sub_6E00(uint64_t a1)
{
  v7[0] = @"raw";
  v2 = [NSNumber numberWithUnsignedShort:*(a1 + 32)];
  v8[0] = v2;
  v7[1] = @"old";
  v3 = [NSNumber numberWithBool:*(a1 + 34)];
  v8[1] = v3;
  v7[2] = @"new";
  v4 = [NSNumber numberWithBool:*(a1 + 35)];
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

void sub_70C4(uint64_t a1, double a2, double a3)
{
  v4 = TIMELINK_FACILITY;
  if (a2 <= 0.0)
  {
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = v4;
      *buf = 67109120;
      LODWORD(v17) = [v11 syncState];
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "convertBTTime, machTime is not valid, sync state %d", buf, 8u);
    }

    [*(a1 + 32) sendBTConversionFailure];
  }

  else
  {
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 40);
      *buf = 134218496;
      v17 = a2;
      v18 = 2048;
      v19 = v13;
      v20 = 2048;
      v21 = a3;
      _os_log_debug_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "convertBTTime, montonicTimeForMachTime, calling didSyncLocalRTC with localRTC: %f, remoteRTC: %f, uncertainty: %f", buf, 0x20u);
    }

    v15[0] = &off_11368;
    v7 = [NSNumber numberWithDouble:a2, @"kTMLSLinkMsgKey", @"kTMLSLinkRTCKey"];
    v15[1] = v7;
    v14[2] = @"kTMLSLinkRemoteRTCKey";
    v8 = [NSNumber numberWithDouble:*(a1 + 40)];
    v15[2] = v8;
    v14[3] = @"kTMLSLinkUncertaintyKey";
    v9 = [NSNumber numberWithDouble:*(a1 + 48) + a3];
    v15[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];

    [*(a1 + 32) sendData:v10 localOnly:0 nonWaking:0 includeTinker:1];
    [*(a1 + 32) setSyncState:4];
  }
}

id sub_7770(uint64_t a1)
{
  v6[0] = @"old";
  v2 = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 44)];
  v6[1] = @"new";
  v7[0] = v2;
  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void sub_7954(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSyncTimer];
}

void sub_7BA4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_7BCC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

id sub_7BF8()
{

  return [v0 syncState];
}

void sub_7C10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void sub_7C30(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "TMLSTransport, sendData, message: %d", v2, 8u);
}

void sub_7CA8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "TMLSTransport failed to send (%@)", &v2, 0xCu);
}

void sub_7D20(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "TMLSTransport, sent message: %@", &v2, 0xCu);
}

void sub_7D98(void *a1, void *a2)
{
  v3 = a1;
  v4 = 134217984;
  v5 = [a2 length];
  _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "TMLSTransport, incomingData, size: %ld", &v4, 0xCu);
}

void sub_7E74()
{
  v1 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"[TMLSLinkSource dealloc]"];
  [v1 handleFailureInFunction:v0 file:@"TMLSLinkSource.m" lineNumber:173 description:@"Expect to be torn down from the main thread"];
}

void sub_7F58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  sub_4178();
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "setCompanionTimeZone:%@ (was %@)", v5, 0x16u);
}

void sub_800C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 companionTimeZone];
  sub_4178();
  _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "syncTimeZone: %@", v5, 0xCu);
}

void sub_8108(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TMLSLinkSource.m" lineNumber:228 description:{@"Invalid parameter not satisfying: %@", @"valid == NO"}];
}

void sub_82D0(void *a1)
{
  v1 = a1;
  objc_opt_class();
  sub_4178();
  v3 = v2;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "Pending data unexpected type: %@", v4, 0xCu);
}

void sub_8468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"TMLSLinkSource.m" lineNumber:415 description:{@"Unexpected source %@", a3}];
}

void sub_84E8()
{
  sub_4178();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "didReceiveAutomaticTimeEnabled, %@, %d", v2, 0x12u);
}

void sub_86E4(void *a1)
{
  v1 = a1;
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v5[0] = 67109378;
  v5[1] = v2;
  v6 = 2080;
  v7 = v4;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "Error occurred %d %s\n", v5, 0x12u);
}

void sub_8794()
{
  v0 = *__error();
  v1 = __error();
  v2 = strerror(*v1);
  v3[0] = 67109378;
  v3[1] = v0;
  v4 = 2080;
  v5 = v2;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "CoreTime: Error reading kern.monotonicclock_rate_usecs: %d %s\n", v3, 0x12u);
}

void sub_8AC8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TMLSLink.m" lineNumber:414 description:@"Gizmo should not have sent TMLS_MSG_CONVERT_BT_TIME_FINAL"];
}

void sub_8B2C(void *a1)
{
  v2 = a1;
  sub_7BF8();
  sub_7BEC();
  sub_7C10(&dword_0, v3, v4, "TMLS_MSG_CONVERT_BT_TIME_FINAL sent successfully, syncState %d", v5, v6, v7, v8, v9);
}

void sub_8BAC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TMLSLink.m" lineNumber:390 description:@"Gizmo should not have sent TMLS_MSG_SYNC_RTC_INIT"];
}

void sub_8C10(void *a1)
{
  v2 = a1;
  sub_7BF8();
  sub_7BEC();
  sub_7BCC(&dword_0, v3, v4, "sendSyncRTCRequest called in sync-state %d, ignoring", v5, v6, v7, v8, v9);
}

void sub_8C90(void *a1)
{
  v2 = a1;
  sub_7BF8();
  sub_7BEC();
  sub_7BCC(&dword_0, v3, v4, "attempted to handle conversion failure on companion, sync state %d, ignoring", v5, v6, v7, v8, v9);
}

void sub_8D10(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed to send data: %@ reason:%@", &v4, 0x16u);
}

void sub_8ED0(void *a1)
{
  v2 = a1;
  sub_7BF8();
  sub_7BEC();
  sub_7BCC(&dword_0, v3, v4, "convertBTTime, machTime in future, sync state %d, dropping message", v5, v6, v7, v8, v9);
}

void sub_8F50(void *a1)
{
  v2 = a1;
  sub_7BF8();
  sub_7BEC();
  sub_7C10(&dword_0, v3, v4, "restartSync from state %d", v5, v6, v7, v8, v9);
}

void sub_8FD0(void *a1)
{
  v2 = a1;
  sub_7BF8();
  sub_7BEC();
  sub_7BCC(&dword_0, v3, v4, "restartSync called on companion, state %d, ignoring", v5, v6, v7, v8, v9);
}

void sub_9090(int *a1)
{
  v6 = *a1;
  sub_7BC0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_9108(uint64_t a1)
{
  v6 = *(a1 + 44);
  sub_7BC0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}