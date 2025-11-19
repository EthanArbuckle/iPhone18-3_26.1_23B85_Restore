void otPlatReset(ot::Posix::Daemon *a1)
{
  gPlatResetReason = 2;
  otSysDeinit(a1);
  longjmp(gResetJump, 1);
}

uint64_t update_nm_security_info(uint64_t result, int a2)
{
  v2 = (RcpHostContext::sRcpHostContext + 6144 + 216 * (*(RcpHostContext::sRcpHostContext + 6136) & 3));
  if (result)
  {
    if (a2)
    {
      v2[73] = 1;
    }

    else
    {
      v2[72] = 1;
    }
  }

  else
  {
    v2[74] = 1;
  }

  return result;
}

void ot_get_device_data(uint64_t a1)
{
  gettimeofday(&v7, &v6);
  tv_sec = v7.tv_sec;
  v3 = gSoftwareUpdateTimeStampSec;
  if ((v7.tv_sec - gSoftwareUpdateTimeStampSec) <= 0xE0F)
  {
    *(a1 + 1) |= 8u;
  }

  if (gDaemonStartTimeStampSec > v3 && (tv_sec - gDaemonStartTimeStampSec) <= 0xE0F)
  {
    if (gDaemonStartByDeviceReboot)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    *(a1 + 1) |= v4;
  }

  v5 = RcpHostContext::sRcpHostContext;

  RcpHostContext::get_device_data(v5, a1);
}

void handle_captureABC(int a1)
{
  if (a1 > 111)
  {
    switch(a1)
    {
      case 112:
        logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
        if (logging_obg)
        {
          v8 = logging_obg;
          if (syslog_is_the_mask_enabled(2) && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            handle_captureABC();
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
        }

        v19[23] = 9;
        strcpy(v19, "Stability");
        v18[23] = 20;
        strcpy(v18, "Stream Debug message");
        operator new();
      case 15488:
        v11 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v11)
        {
          v12 = v11;
          if (syslog_is_the_mask_enabled(2) && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            handle_captureABC();
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
        }

        v23[23] = 9;
        strcpy(v23, "Stability");
        v22[23] = 13;
        strcpy(v22, "Invalid State");
        operator new();
      case 2000000:
        v3 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v3)
        {
          v4 = v3;
          if (syslog_is_the_mask_enabled(2) && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            handle_captureABC();
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
        }

        v27[24] = 11;
        strcpy(v27, "\nPerformance");
        strcpy(v26, "Data Stall");
        operator new();
    }

    return;
  }

  if (a1 == 2)
  {
    v5 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v5)
    {
      v6 = v5;
      if (syslog_is_the_mask_enabled(2) && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        handle_captureABC();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    v21[23] = 9;
    strcpy(v21, "Stability");
    v20[23] = 13;
    strcpy(v20, "Invalid State");
    operator new();
  }

  if (a1 == 3)
  {
    v9 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v9)
    {
      v10 = v9;
      if (syslog_is_the_mask_enabled(2) && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        handle_captureABC();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    v25[23] = 9;
    strcpy(v25, "Stability");
    v24[23] = 13;
    strcpy(v24, "Invalid State");
    operator new();
  }

  if (a1 != 4)
  {
    return;
  }

  v1 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v1)
  {
    v2 = v1;
    if (syslog_is_the_mask_enabled(2))
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        handle_captureABC();
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  v17 = 9;
  strcpy(v16, "Stability");
  HIBYTE(v15[2]) = 17;
  strcpy(v15, "RCP Invalid State");
  v14 = 17;
  strcpy(__p, "RCP Invalid State");
  RcpHostContext::captureABC(RcpHostContext::sRcpHostContext, v16, v15, __p, 0, 0);
  if (v14 < 0)
  {
    operator delete(*__p);
    if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
    {
LABEL_43:
      if (v17 < 0)
      {
        goto LABEL_56;
      }

      return;
    }
  }

  else if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

  operator delete(v15[0]);
  if (v17 < 0)
  {
LABEL_56:
    operator delete(v16[0]);
  }
}

void sub_100166F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
    if ((*(v43 - 201) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v43 - 177) & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(*(v43 - 200));
      goto LABEL_8;
    }
  }

  else if ((*(v43 - 201) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v43 - 224));
  if ((*(v43 - 177) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void handle_settings_captureABC()
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v1 = logging_obg;
    if (syslog_is_the_mask_enabled(2))
    {
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        handle_settings_captureABC();
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  v7 = 9;
  strcpy(v6, "Stability");
  v5 = 13;
  strcpy(v4, "Invalid State");
  v3 = 21;
  strcpy(__p, "write syscall failure");
  RcpHostContext::captureABC(RcpHostContext::sRcpHostContext, v6, v4, __p, 0, 0);
  if (v3 < 0)
  {
    operator delete(*__p);
    if ((v5 & 0x80000000) == 0)
    {
LABEL_9:
      if ((v7 & 0x80000000) == 0)
      {
        return;
      }

LABEL_13:
      operator delete(v6[0]);
      return;
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v4[0]);
  if (v7 < 0)
  {
    goto LABEL_13;
  }
}

{
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0xEu);
}

void sub_100167314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void ptb_bandedge_captureABC_Failure(int a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 != 3)
      {
        return;
      }

      v5 = 11;
      strcpy(v4, "Performance");
      v3 = 14;
      strcpy(v2, "BANDEDGE Error");
      strcpy(v1, "BANDEDGE Load  Failure");
      HIBYTE(v1[2]) = 22;
      RcpHostContext::captureABC(RcpHostContext::sRcpHostContext, v4, v2, v1, 0, 0);
      if (SHIBYTE(v1[2]) < 0)
      {
        operator delete(v1[0]);
        if ((v3 & 0x80000000) == 0)
        {
LABEL_12:
          if ((v5 & 0x80000000) == 0)
          {
            return;
          }

          goto LABEL_27;
        }
      }

      else if ((v3 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      operator delete(v2[0]);
      if ((v5 & 0x80000000) == 0)
      {
        return;
      }

LABEL_27:
      operator delete(v4[0]);
      return;
    }

    v9 = 11;
    strcpy(v8, "\tPerformance");
    strcpy(v7, "PTB Error");
    HIBYTE(v6[2]) = 17;
    strcpy(v6, "PTB Load  Failure");
    RcpHostContext::captureABC(RcpHostContext::sRcpHostContext, &v8[1], v7, v6, 0, 0);
    if (SHIBYTE(v6[2]) < 0)
    {
      operator delete(v6[0]);
      if ((v8[0] & 0x80000000) == 0)
      {
LABEL_20:
        if ((v9 & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_33;
      }
    }

    else if ((v8[0] & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    operator delete(v7[0]);
    if ((v9 & 0x80000000) == 0)
    {
      return;
    }

LABEL_33:
    operator delete(*&v8[1]);
    return;
  }

  if (!a1)
  {
    v19 = 11;
    strcpy(v18, "\tPerformance");
    strcpy(v17, "PTB Error");
    v16 = 13;
    strcpy(v15, "PTB Not Found");
    RcpHostContext::captureABC(RcpHostContext::sRcpHostContext, &v18[1], v17, v15, 0, 0);
    if (v16 < 0)
    {
      operator delete(v15[0]);
      if ((v18[0] & 0x80000000) == 0)
      {
LABEL_16:
        if ((v19 & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_30;
      }
    }

    else if ((v18[0] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    operator delete(v17[0]);
    if ((v19 & 0x80000000) == 0)
    {
      return;
    }

LABEL_30:
    operator delete(*&v18[1]);
    return;
  }

  if (a1 != 1)
  {
    return;
  }

  v14 = 11;
  strcpy(v13, "\tPerformance");
  strcpy(v12, "PTB Error");
  v11 = 14;
  strcpy(__p, "PTB Read Empty");
  RcpHostContext::captureABC(RcpHostContext::sRcpHostContext, &v13[1], v12, __p, 0, 0);
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if ((v13[0] & 0x80000000) == 0)
    {
LABEL_6:
      if ((v14 & 0x80000000) == 0)
      {
        return;
      }

LABEL_24:
      operator delete(*&v13[1]);
      return;
    }
  }

  else if ((v13[0] & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v12[0]);
  if (v14 < 0)
  {
    goto LABEL_24;
  }
}

void sub_10016774C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if ((a40 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a46 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a41);
      goto LABEL_8;
    }
  }

  else if ((a40 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a35);
  if ((a46 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void handle_host_reset_dueto_rcp_captureABC(const char *a1)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  getBTFWCrashDumpPath(&v13);
  if ((SHIBYTE(v15) & 0x8000000000000000) != 0)
  {
    if (v14)
    {
LABEL_3:
      __chkstk_darwin(v2);
      v4 = v11 - ((v3 + 16) & 0xFFFFFFFFFFFFFFF0) + 40;
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          v6 = &v13;
          if (v15 < 0)
          {
            v6 = v13;
          }

          *buf = 136315650;
          v17 = "handle_host_reset_dueto_rcp_captureABC";
          v18 = 2080;
          v19 = v6;
          v20 = 2080;
          v21 = a1;
          _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: Raise ABC with latest FW crash dump filePath: %s caseSubType %s", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
      }

      v8 = HIBYTE(v15);
      if (v15 >= 0)
      {
        v9 = &v13;
      }

      else
      {
        v9 = v13;
      }

      if (v15 < 0)
      {
        v8 = v14;
      }

      strncpy(v4, v9, v8 + 1);
      v12[23] = 9;
      strcpy(v12, "Stability");
      operator new();
    }
  }

  else if (HIBYTE(v15))
  {
    goto LABEL_3;
  }

  v7 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v7)
  {
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      handle_host_reset_dueto_rcp_captureABC();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  v11[23] = 9;
  strcpy(v11, "Stability");
  operator new();
}

void sub_100167D7C(_Unwind_Exception *a1)
{
  if (*(v1 - 257) < 0)
  {
    operator delete(*(v1 - 280));
    if (*(v1 - 233) < 0)
    {
LABEL_5:
      operator delete(*(v1 - 256));
      if ((*(v1 - 209) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_8:
      operator delete(*(v1 - 232));
LABEL_9:
      if (*(v1 - 113) < 0)
      {
        operator delete(*(v1 - 136));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (*(v1 - 233) < 0)
  {
    goto LABEL_5;
  }

  if ((*(v1 - 209) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

uint64_t buffer_threshold_captureABC_timeout(void)
{
  gettimeofday(&v2, &v1);
  if (byte_10052D772 == 1 && v2.tv_sec < qword_10052D778 + 3600)
  {
    return 0;
  }

  qword_10052D778 = v2.tv_sec;
  result = 1;
  byte_10052D772 = 1;
  return result;
}

uint64_t handle_ot_buffer_threshold_captureABC(void)
{
  result = gettimeofday(&v3, &v2[24]);
  if (byte_10052D772 != 1 || v3.tv_sec >= qword_10052D778 + 3600)
  {
    qword_10052D778 = v3.tv_sec;
    byte_10052D772 = 1;
    v2[23] = 11;
    strcpy(v2, "Performance");
    v1[23] = 12;
    strcpy(v1, "Buffer Error");
    operator new();
  }

  return result;
}

void sub_10016806C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a21);
  _Unwind_Resume(exception_object);
}

void handle_getnextframe_captureABC(void)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v1 = logging_obg;
    if (syslog_is_the_mask_enabled(3))
    {
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        handle_getnextframe_captureABC();
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  v3[23] = 9;
  strcpy(v3, "Stability");
  v2[23] = 13;
  strcpy(v2, "Invalid State");
  operator new();
}

void sub_100168254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v21 - 17) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((*(v21 - 17) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v21 - 40));
  _Unwind_Resume(exception_object);
}

void handle_hdlc_waitforframe_captureABC()
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v1 = logging_obg;
    if (syslog_is_the_mask_enabled(3))
    {
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        handle_hdlc_waitforframe_captureABC();
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  v3[23] = 9;
  strcpy(v3, "Stability");
  v2[23] = 13;
  strcpy(v2, "Invalid State");
  operator new();
}

{
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10016843C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v21 - 17) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((*(v21 - 17) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v21 - 40));
  _Unwind_Resume(exception_object);
}

void handle_hdlc_write_captureABC()
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v1 = logging_obg;
    if (syslog_is_the_mask_enabled(3))
    {
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        handle_hdlc_write_captureABC();
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  v7 = 9;
  strcpy(v6, "Stability");
  v5 = 13;
  strcpy(v4, "Invalid State");
  v3 = 18;
  strcpy(__p, "HDLC fail on write");
  RcpHostContext::captureABC(RcpHostContext::sRcpHostContext, v6, v4, __p, 0, 0);
  if (v3 < 0)
  {
    operator delete(*__p);
    if ((v5 & 0x80000000) == 0)
    {
LABEL_9:
      if ((v7 & 0x80000000) == 0)
      {
        return;
      }

LABEL_13:
      operator delete(v6[0]);
      return;
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v4[0]);
  if (v7 < 0)
  {
    goto LABEL_13;
  }
}

{
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100168608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v21 - 17) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((*(v21 - 17) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v21 - 40));
  _Unwind_Resume(exception_object);
}

BOOL pcap_enabled(void)
{
  v6 = 15;
  strcpy(__p, "NCP:PcapEnabled");
  v7 = __p;
  v0 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
  v1 = v0 + 7;
  v2 = *(v0 + 79);
  if (v2 < 0)
  {
    if (v0[8] != 4)
    {
      goto LABEL_8;
    }

    v1 = *v1;
  }

  else if (v2 != 4)
  {
LABEL_8:
    v3 = 0;
    if (v6 < 0)
    {
      goto LABEL_9;
    }

    return v3;
  }

  v3 = *v1 == 1702195828;
  if ((v6 & 0x80000000) == 0)
  {
    return v3;
  }

LABEL_9:
  operator delete(__p[0]);
  return v3;
}

void sub_100168740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL promiscuous_enabled(void)
{
  strcpy(__p, "Daemon:PromiscuousPcap");
  v6 = 22;
  v7 = __p;
  v0 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
  v1 = v0 + 7;
  v2 = *(v0 + 79);
  if (v2 < 0)
  {
    if (v0[8] != 4)
    {
      goto LABEL_8;
    }

    v1 = *v1;
  }

  else if (v2 != 4)
  {
LABEL_8:
    v3 = 0;
    if (v6 < 0)
    {
      goto LABEL_9;
    }

    return v3;
  }

  v3 = *v1 == 1702195828;
  if ((v6 & 0x80000000) == 0)
  {
    return v3;
  }

LABEL_9:
  operator delete(*__p);
  return v3;
}

void sub_100168838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void handle_daemon_exit(void)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v1 = logging_obg;
    if (!syslog_is_the_mask_enabled(3) || !os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    handle_daemon_exit();
    setDaemonExit();
    delete_xpc_server();
  }

  else
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
LABEL_4:
      setDaemonExit();
      delete_xpc_server();
      return;
    }

    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    setDaemonExit();
    delete_xpc_server();
  }
}

unint64_t init_spinel_read_time(void)
{
  result = otPlatTimeGet();
  time_last_read = result;
  time_last_diff = 0;
  time_count = 0;
  return result;
}

unint64_t calc_spinel_read_time(void)
{
  if (time_count == -2)
  {
    time_last_read = otPlatTimeGet();
    time_last_diff = 0;
    time_count = 0;
  }

  result = otPlatTimeGet();
  time_last_diff = result - time_last_read;
  time_last_read = result;
  ++time_count;
  return result;
}

unint64_t init_handleframe_read_time(void)
{
  result = otPlatTimeGet();
  handleframe_time_last_read = result;
  handleframe_time_last_diff = 0;
  handleframe_time_count = 0;
  return result;
}

unint64_t calc_handleframe_read_time(void)
{
  if (handleframe_time_count == -2)
  {
    handleframe_time_last_read = otPlatTimeGet();
    handleframe_time_last_diff = 0;
    handleframe_time_count = 0;
  }

  result = otPlatTimeGet();
  handleframe_time_last_diff = result - handleframe_time_last_read;
  handleframe_time_last_read = result;
  ++handleframe_time_count;
  return result;
}

unint64_t init_handlenote_read_time(void)
{
  result = otPlatTimeGet();
  handlenote_time_last_read = result;
  handlenote_time_last_diff = 0;
  handlenote_time_count = 0;
  return result;
}

unint64_t calc_handlenote_read_time(void)
{
  if (handlenote_time_count == -2)
  {
    handlenote_time_last_read = otPlatTimeGet();
    handlenote_time_last_diff = 0;
    handlenote_time_count = 0;
  }

  result = otPlatTimeGet();
  handlenote_time_last_diff = result - handlenote_time_last_read;
  handlenote_time_last_read = result;
  ++handlenote_time_count;
  return result;
}

uint64_t otctl_OutputLine(int a1, const char *a2, ...)
{
  va_start(va, a2);
  otctl_OutputFormat("%*s", a1, "");
  RcpHostContext::otctl_OutputFormatV(RcpHostContext::sRcpHostContext, a2, va);
  return otctl_OutputFormat("\r\n");
}

uint64_t otctl_OutputLine(const char *__format, ...)
{
  va_start(va, __format);
  RcpHostContext::otctl_OutputFormatV(RcpHostContext::sRcpHostContext, __format, va);
  return otctl_OutputFormat("\r\n");
}

unsigned __int8 *otctl_OutputBytes(unsigned __int8 *result, unsigned int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = a2;
    do
    {
      v4 = *v2++;
      result = otctl_OutputFormat("%02x", v4);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t otctl_OutputBytesLine(const unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      v5 = *a1++;
      otctl_OutputFormat("%02x", v5);
      --v4;
    }

    while (v4);
    v2 = vars8;
  }

  return otctl_OutputFormat("\r\n");
}

__int128 *check_host_reset_dueto_rcp(void)
{
  result = getStringValue("vendor:trigger:abc");
  if (result)
  {
    return (atoi(result) != 0);
  }

  return result;
}

void host_crash_dump_collection(void)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v1 = logging_obg;
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      host_crash_dump_collection();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  StringValue = getStringValue("vendor:trigger:abc");
  if (StringValue && atoi(StringValue))
  {
    v3 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v3)
    {
      if (syslog_is_the_mask_enabled(6))
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v5 = 136315138;
          v6 = "host_crash_dump_collection";
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s FW crash occurred earlier, Update Health Info Stability Counters", &v5, 0xCu);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    persist_host_reset_dueto_rcp(0, 0);
  }

  v4 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v4)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "host_crash_dump_collection";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s No FW crash occurred earlier, Health Info is already updated", &v5, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }
}

void sub_1001698E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void resetThreadWedSession(void)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v1 = logging_obg;
    if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      resetThreadWedSession();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  saveStringValue("threadSession", "OFF");
  saveStringValue("threadSessionJoin", "OFF");
  saveStringValue("wedSession", "");
  saveStringValue("wedSession_mleid", "");
}

BOOL processHostSystemStartActionsBasedOnTime(unint64_t a1)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  v3 = logging_obg;
  if (a1 >= 0x2E)
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        processHostSystemStartActionsBasedOnTime();
        return a1 < 0x2E;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
      return a1 < 0x2E;
    }

    return a1 < 0x2E;
  }

  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      processHostSystemStartActionsBasedOnTime();
      resetThreadWedSession();
      return a1 < 0x2E;
    }

    goto LABEL_11;
  }

  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
LABEL_11:
    resetThreadWedSession();
    return a1 < 0x2E;
  }

  CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  resetThreadWedSession();
  return a1 < 0x2E;
}

uint64_t processHostSystemStartActions(unint64_t a1)
{
  memset(uu, 0, sizeof(uu));
  *in = 0u;
  memset(v17, 0, sizeof(v17));
  v15 = 37;
  if (sysctlbyname("kern.bootsessionuuid", in, &v15, 0, 0))
  {
LABEL_2:
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v3 = logging_obg;
      if (syslog_is_the_mask_enabled(3))
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          processHostSystemStartActions();
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    return processHostSystemStartActionsBasedOnTime(a1);
  }

  v4 = uuid_parse(in, uu);
  v5 = log_get_logging_obg("com.apple.threadradiod", "default");
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        processHostSystemStartActions();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    goto LABEL_2;
  }

  if (v5)
  {
    if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      processHostSystemStartActions();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  StringValue = getStringValue("boot_uuid");
  v9 = log_get_logging_obg("com.apple.threadradiod", "default");
  v10 = v9;
  if (!StringValue)
  {
    if (v9)
    {
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        processHostSystemStartActions();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    saveStringValue("boot_uuid", in);
    goto LABEL_2;
  }

  if (!v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
      if (!strcmp(StringValue, in))
      {
        goto LABEL_46;
      }

      goto LABEL_35;
    }

LABEL_34:
    if (!strcmp(StringValue, in))
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (!syslog_is_the_mask_enabled(4) || !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_34;
  }

  processHostSystemStartActions();
  if (!strcmp(StringValue, in))
  {
LABEL_46:
    v13 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v13)
    {
      v14 = v13;
      result = syslog_is_the_mask_enabled(4);
      if (result)
      {
        result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
        if (result)
        {
          processHostSystemStartActions();
          return 0;
        }
      }
    }

    else
    {
      result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (result)
      {
        CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
        return 0;
      }
    }

    return result;
  }

LABEL_35:
  saveStringValue("boot_uuid", in);
  v11 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v11)
  {
    v12 = v11;
    if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      processHostSystemStartActions();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  resetThreadWedSession();
  return 1;
}

void get_time_string(unint64_t a1, char *__str, size_t __size)
{
  v3 = __size;
  v5 = a1 % 0x3E8;
  if (a1 <= 0xE3C7A73400)
  {
    snprintf(__str, __size, "[%s.%03d]", " ", a1 % 0x3E8);
    return;
  }

  v6 = CFDateCreate(kCFAllocatorDefault, ((a1 - 978307200000) / 0x3E8));
  StringWithDate = CFDateFormatterCreateStringWithDate(kCFAllocatorDefault, gDateFormatter, v6);
  if (StringWithDate)
  {
    v8 = StringWithDate;
    SystemEncoding = CFStringGetSystemEncoding();
    CStringPtr = CFStringGetCStringPtr(v8, SystemEncoding);
    snprintf(__str, v3, "[%s.%03d]", CStringPtr, v5);
    if (v6)
    {
      CFRelease(v6);
    }

    v11 = v8;
  }

  else
  {
    snprintf(__str, v3, "[%s.%03d]", " ", v5);
    if (!v6)
    {
      return;
    }

    v11 = v6;
  }

  CFRelease(v11);
}

void sub_10016A35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      v24 = a17;
      if (!a17)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v24 + 8))(v24);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  v24 = a17;
  if (!a17)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016A5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((*(v23 - 33) & 0x80000000) == 0)
    {
LABEL_3:
      v25 = *(v23 - 64);
      if (!v25)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v25 + 8))(v25);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v23 - 33) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v23 - 56));
  v25 = *(v23 - 64);
  if (!v25)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016A898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((*(v21 - 33) & 0x80000000) == 0)
    {
LABEL_3:
      v23 = *(v21 - 64);
      if (!v23)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v23 + 8))(v23);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v21 - 33) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v21 - 56));
  v23 = *(v21 - 64);
  if (!v23)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016AB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      v23 = a16;
      if (!a16)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v23 + 8))(v23);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  v23 = a16;
  if (!a16)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016AD90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((*(v20 - 33) & 0x80000000) == 0)
    {
LABEL_3:
      v22 = a20;
      if (!a20)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v22 + 8))(v22);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v20 - 33) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v20 - 56));
  v22 = a20;
  if (!a20)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016AFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      v23 = a16;
      if (!a16)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v23 + 8))(v23);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  v23 = a16;
  if (!a16)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void persist_thread_device_mode(const std::string *a1)
{
  BYTE7(v5[2]) = 17;
  strcpy(v5, "Thread:DeviceModThread:DeviceMode");
  v6 = &v5[1];
  v2 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v5[1]);
  std::string::operator=((v2 + 7), a1);
  if (SBYTE7(v5[2]) < 0)
  {
    operator delete(*&v5[1]);
  }

  BYTE7(v5[2]) = 17;
  v5[1] = v5[0];
  strcpy(&v5[2], "e");
  v6 = &v5[1];
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v5[1]);
  v4 = (v3 + 7);
  if (*(v3 + 79) < 0)
  {
    v4 = *v4;
  }

  saveStringValue("Thread:DeviceMode", v4);
  if (SBYTE7(v5[2]) < 0)
  {
    operator delete(*&v5[1]);
  }
}

void sub_10016B198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016B3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((*(v20 - 33) & 0x80000000) == 0)
    {
LABEL_3:
      v22 = a20;
      if (!a20)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v22 + 8))(v22);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v20 - 33) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v20 - 56));
  v22 = a20;
  if (!a20)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016B608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      v24 = a17;
      if (!a17)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v24 + 8))(v24);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  v24 = a17;
  if (!a17)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016B8A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((*(v21 - 33) & 0x80000000) == 0)
    {
LABEL_3:
      v23 = *(v21 - 64);
      if (!v23)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v23 + 8))(v23);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v21 - 33) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v21 - 56));
  v23 = *(v21 - 64);
  if (!v23)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016BAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      v23 = a16;
      if (!a16)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v23 + 8))(v23);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  v23 = a16;
  if (!a16)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016BD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      v24 = a17;
      if (!a17)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v24 + 8))(v24);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  v24 = a17;
  if (!a17)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016BFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((*(v21 - 33) & 0x80000000) == 0)
    {
LABEL_3:
      v23 = *(v21 - 64);
      if (!v23)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v23 + 8))(v23);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v21 - 33) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v21 - 56));
  v23 = *(v21 - 64);
  if (!v23)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016C2A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((*(v21 - 33) & 0x80000000) == 0)
    {
LABEL_3:
      v23 = *(v21 - 64);
      if (!v23)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v23 + 8))(v23);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v21 - 33) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v21 - 56));
  v23 = *(v21 - 64);
  if (!v23)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016C4F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      v24 = a17;
      if (!a17)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v24 + 8))(v24);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  v24 = a17;
  if (!a17)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016C754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      v24 = a17;
      if (!a17)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v24 + 8))(v24);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  v24 = a17;
  if (!a17)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016C9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      v24 = a17;
      if (!a17)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v24 + 8))(v24);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  v24 = a17;
  if (!a17)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016CC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((*(v21 - 33) & 0x80000000) == 0)
    {
LABEL_3:
      v23 = *(v21 - 64);
      if (!v23)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v23 + 8))(v23);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v21 - 33) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v21 - 56));
  v23 = *(v21 - 64);
  if (!v23)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016CEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((*(v21 - 33) & 0x80000000) == 0)
    {
LABEL_3:
      v23 = *(v21 - 64);
      if (!v23)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v23 + 8))(v23);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v21 - 33) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v21 - 56));
  v23 = *(v21 - 64);
  if (!v23)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016D198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((*(v21 - 33) & 0x80000000) == 0)
    {
LABEL_3:
      v23 = *(v21 - 64);
      if (!v23)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v23 + 8))(v23);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v21 - 33) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v21 - 56));
  v23 = *(v21 - 64);
  if (!v23)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016D440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((*(v21 - 33) & 0x80000000) == 0)
    {
LABEL_3:
      v23 = *(v21 - 64);
      if (!v23)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v23 + 8))(v23);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v21 - 33) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v21 - 56));
  v23 = *(v21 - 64);
  if (!v23)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016D6E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((*(v21 - 33) & 0x80000000) == 0)
    {
LABEL_3:
      v23 = *(v21 - 64);
      if (!v23)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v23 + 8))(v23);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v21 - 33) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v21 - 56));
  v23 = *(v21 - 64);
  if (!v23)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016D950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      v23 = a16;
      if (!a16)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v23 + 8))(v23);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  v23 = a16;
  if (!a16)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_10016DB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      v24 = a17;
      if (!a17)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v24 + 8))(v24);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  v24 = a17;
  if (!a17)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void reset_awd_stability_counters(void)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v1 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26[1]) = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "reset_awd_stability_counters: reset stability counters\n", &v26[1], 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  xmmword_1004E57A8 = 0u;
  xmmword_1004E57B8 = 0u;
  xmmword_1004E5788 = 0u;
  xmmword_1004E5798 = 0u;
  xmmword_1004E5768 = 0u;
  xmmword_1004E5778 = 0u;
  stability_settings = 0u;
  BYTE7(v26[2]) = 13;
  strcpy(&v26[1], "fault_address");
  v27 = &v26[1];
  v2 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v26[1]);
  std::string::assign((v2 + 7), "0");
  if (SBYTE7(v26[2]) < 0)
  {
    operator delete(*&v26[1]);
  }

  BYTE7(v26[2]) = 13;
  strcpy(&v26[1], "fault_address");
  v27 = &v26[1];
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v26[1]);
  v4 = (v3 + 7);
  if (*(v3 + 79) < 0)
  {
    v4 = *v4;
  }

  saveStringValue("fault_address", v4);
  if (SBYTE7(v26[2]) < 0)
  {
    operator delete(*&v26[1]);
  }

  BYTE7(v26[2]) = 10;
  strcpy(&v26[1], "fault_line");
  v27 = &v26[1];
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v26[1]);
  std::string::assign((v5 + 7), "0");
  if (SBYTE7(v26[2]) < 0)
  {
    operator delete(*&v26[1]);
  }

  BYTE7(v26[2]) = 10;
  strcpy(&v26[1], "fault_line");
  v27 = &v26[1];
  v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v26[1]);
  v7 = (v6 + 7);
  if (*(v6 + 79) < 0)
  {
    v7 = *v7;
  }

  saveStringValue("fault_line", v7);
  if (SBYTE7(v26[2]) < 0)
  {
    operator delete(*&v26[1]);
  }

  BYTE7(v26[2]) = 15;
  strcpy(&v26[1], "fault_random_id");
  v27 = &v26[1];
  v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v26[1]);
  std::string::assign((v8 + 7), "0");
  if (SBYTE7(v26[2]) < 0)
  {
    operator delete(*&v26[1]);
  }

  BYTE7(v26[2]) = 15;
  strcpy(&v26[1], "fault_random_id");
  v27 = &v26[1];
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v26[1]);
  v10 = (v9 + 7);
  if (*(v9 + 79) < 0)
  {
    v10 = *v10;
  }

  saveStringValue("fault_random_id", v10);
  if (SBYTE7(v26[2]) < 0)
  {
    operator delete(*&v26[1]);
  }

  BYTE7(v26[2]) = 16;
  strcpy(v26, "fault_crash_typefault_crash_type");
  v27 = &v26[1];
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v26[1]);
  std::string::assign((v11 + 7), "0");
  if (SBYTE7(v26[2]) < 0)
  {
    operator delete(*&v26[1]);
  }

  BYTE7(v26[2]) = 16;
  v26[1] = v26[0];
  LOBYTE(v26[2]) = 0;
  v27 = &v26[1];
  v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v26[1]);
  v13 = (v12 + 7);
  if (*(v12 + 79) < 0)
  {
    v13 = *v13;
  }

  saveStringValue("fault_crash_type", v13);
  if (SBYTE7(v26[2]) < 0)
  {
    operator delete(*&v26[1]);
  }

  BYTE7(v26[2]) = 17;
  strcpy(v26, "fault_crash_counfault_crash_count");
  v27 = &v26[1];
  v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v26[1]);
  std::string::assign((v14 + 7), "0");
  if (SBYTE7(v26[2]) < 0)
  {
    operator delete(*&v26[1]);
  }

  BYTE7(v26[2]) = 17;
  v26[1] = v26[0];
  strcpy(&v26[2], "t");
  v27 = &v26[1];
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v26[1]);
  v16 = (v15 + 7);
  if (*(v15 + 79) < 0)
  {
    v16 = *v16;
  }

  saveStringValue("fault_crash_count", v16);
  if (SBYTE7(v26[2]) < 0)
  {
    operator delete(*&v26[1]);
  }

  BYTE7(v26[2]) = 16;
  strcpy(v26, "fault_num_resetsfault_num_resets");
  v27 = &v26[1];
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v26[1]);
  std::string::assign((v17 + 7), "0");
  if (SBYTE7(v26[2]) < 0)
  {
    operator delete(*&v26[1]);
  }

  BYTE7(v26[2]) = 16;
  v26[1] = v26[0];
  LOBYTE(v26[2]) = 0;
  v27 = &v26[1];
  v18 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v26[1]);
  v19 = (v18 + 7);
  if (*(v18 + 79) < 0)
  {
    v19 = *v19;
  }

  saveStringValue("fault_num_resets", v19);
  if (SBYTE7(v26[2]) < 0)
  {
    operator delete(*&v26[1]);
  }

  BYTE7(v26[2]) = 17;
  strcpy(v26, "fault_num_assertfault_num_asserts");
  v27 = &v26[1];
  v20 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v26[1]);
  std::string::assign((v20 + 7), "0");
  if (SBYTE7(v26[2]) < 0)
  {
    operator delete(*&v26[1]);
  }

  BYTE7(v26[2]) = 17;
  v26[1] = v26[0];
  strcpy(&v26[2], "s");
  v27 = &v26[1];
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v26[1]);
  v22 = (v21 + 7);
  if (*(v21 + 79) < 0)
  {
    v22 = *v22;
  }

  saveStringValue("fault_num_asserts", v22);
  if (SBYTE7(v26[2]) < 0)
  {
    operator delete(*&v26[1]);
  }

  BYTE7(v26[2]) = 21;
  strcpy(v26, "fault_num_hard_ffault_num_hard_faults");
  v27 = &v26[1];
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v26[1]);
  std::string::assign((v23 + 7), "0");
  if (SBYTE7(v26[2]) < 0)
  {
    operator delete(*&v26[1]);
  }

  BYTE7(v26[2]) = 21;
  v26[1] = v26[0];
  strcpy(&v26[1] + 13, "d_faults");
  v27 = &v26[1];
  v24 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v26[1]);
  v25 = (v24 + 7);
  if (*(v24 + 79) < 0)
  {
    v25 = *v25;
  }

  saveStringValue("fault_num_hard_faults", v25);
  if (SBYTE7(v26[2]) < 0)
  {
    operator delete(*&v26[1]);
  }

  operator new();
}

void sub_10016E67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void restore_awd_stablity_counters(void)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v1 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "restore_awd_stablity_counters called\n", __p, 2u);
      StringValue = getStringValue("fault_num_resets");
      if (!StringValue)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

LABEL_7:
    StringValue = getStringValue("fault_num_resets");
    if (!StringValue)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  StringValue = getStringValue("fault_num_resets");
  if (!StringValue)
  {
    goto LABEL_10;
  }

LABEL_8:
  v3 = StringValue;
  v15 = 16;
  strcpy(__p, "fault_num_resets");
  v16 = __p;
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
  std::string::assign((v4 + 7), v3);
  if (v15 < 0)
  {
    operator delete(*__p);
  }

LABEL_10:
  v5 = getStringValue("fault_num_asserts");
  if (v5 && (v6 = v5, v15 = 17, strcpy(__p, "fault_num_asserts"), v16 = __p, v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p), std::string::assign((v7 + 7), v6), v15 < 0))
  {
    operator delete(*__p);
    v8 = getStringValue("fault_num_hard_faults");
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v8 = getStringValue("fault_num_hard_faults");
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  v9 = v8;
  v15 = 21;
  strcpy(__p, "fault_num_hard_faults");
  v16 = __p;
  v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
  std::string::assign((v10 + 7), v9);
  if (v15 < 0)
  {
    operator delete(*__p);
  }

LABEL_16:
  if (getStringValue("fault_num_stack_overflows"))
  {
    operator new();
  }

  if (getStringValue("fault_num_crash_unknown"))
  {
    operator new();
  }

  v11 = getStringValue("fault_time_stamp");
  if (v11)
  {
    v12 = v11;
    v15 = 16;
    strcpy(__p, "fault_time_stamp");
    v16 = __p;
    v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
    std::string::assign((v13 + 7), v12);
    if (v15 < 0)
    {
      operator delete(*__p);
    }
  }
}

void sub_10016EAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void restore_health_metrics(void)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v1 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "restore_health_metrics called\n", __p, 2u);
      StringValue = getStringValue("is_radio_tx_timeout");
      if (!StringValue)
      {
        goto LABEL_10;
      }

LABEL_8:
      v3 = StringValue;
      v7 = 19;
      strcpy(__p, "is_radio_tx_timeout");
      v8 = __p;
      v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
      std::string::assign((v4 + 7), v3);
      goto LABEL_11;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    StringValue = getStringValue("is_radio_tx_timeout");
    if (StringValue)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  StringValue = getStringValue("is_radio_tx_timeout");
  if (StringValue)
  {
    goto LABEL_8;
  }

LABEL_10:
  v7 = 19;
  strcpy(__p, "is_radio_tx_timeout");
  v8 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
  std::string::assign((v5 + 7), "0");
LABEL_11:
  if (v7 < 0)
  {
    operator delete(*__p);
  }

  if (getStringValue("is_buffer_limit_exceeded"))
  {
    operator new();
  }

  operator new();
}

void sub_10016F1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016F404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      v24 = a17;
      if (!a17)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v24 + 8))(v24);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  v24 = a17;
  if (!a17)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t update_buff_limit_exceedeed_metric(uint64_t result)
{
  if (*(RcpHostContext::sRcpHostContext + 5964) != result)
  {
    *(RcpHostContext::sRcpHostContext + 5964) = result;
    operator new();
  }

  *(RcpHostContext::sRcpHostContext + 216 * (*(RcpHostContext::sRcpHostContext + 6136) & 3) + 6152) = 1;
  return result;
}

void sub_10016F6CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
LABEL_3:
      v27 = a20;
      if (!a20)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v27 + 8))(v27);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a21);
  v27 = a20;
  if (!a20)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t update_netdata_full_metric(uint64_t result)
{
  if (*(RcpHostContext::sRcpHostContext + 5967) != result)
  {
    *(RcpHostContext::sRcpHostContext + 5967) = result;
    operator new();
  }

  return result;
}

void sub_10016F958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      v24 = a17;
      if (!a17)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v24 + 8))(v24);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  v24 = a17;
  if (!a17)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t update_netdata_maxlength_metric(uint64_t result)
{
  if (*(RcpHostContext::sRcpHostContext + 5968) < result)
  {
    *(RcpHostContext::sRcpHostContext + 5968) = result;
    operator new();
  }

  return result;
}

void sub_10016FBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      v24 = a17;
      if (!a17)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v24 + 8))(v24);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  v24 = a17;
  if (!a17)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t update_nonConvergingPrefixes_metric(uint64_t result)
{
  if (*(RcpHostContext::sRcpHostContext + 5965) != result)
  {
    *(RcpHostContext::sRcpHostContext + 5965) = result;
    operator new();
  }

  return result;
}

void sub_10016FE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((*(v20 - 33) & 0x80000000) == 0)
    {
LABEL_3:
      v22 = a20;
      if (!a20)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v22 + 8))(v22);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v20 - 33) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v20 - 56));
  v22 = a20;
  if (!a20)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t update_nonConvergingUnicastSrpServices_metric(uint64_t result)
{
  if (*(RcpHostContext::sRcpHostContext + 5966) != result)
  {
    *(RcpHostContext::sRcpHostContext + 5966) = result;
    operator new();
  }

  return result;
}

void sub_100170148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((*(v21 - 33) & 0x80000000) == 0)
    {
LABEL_3:
      v23 = *(v21 - 64);
      if (!v23)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v23 + 8))(v23);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v21 - 33) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v21 - 56));
  v23 = *(v21 - 64);
  if (!v23)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void update_stabilitymetrics_host_for_periodic_ca_metrics(int a1)
{
  if (a1)
  {
    StringValue = getStringValue("num_daemon_restart_due_to_reboots");
    if (!StringValue)
    {
      operator new();
    }

    v2 = StringValue;
    memset(&v15, 0, sizeof(v15));
    std::string::assign(&v15, StringValue);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v15;
    }

    else
    {
      v3 = v15.__r_.__value_.__r.__words[0];
    }

    if (strlen(v3) - 1 > 9)
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg)
      {
        if (!syslog_is_the_mask_enabled(7) || !os_log_type_enabled(logging_obg, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_40;
        }

LABEL_21:
        update_stabilitymetrics_host_for_periodic_ca_metrics();
LABEL_40:
        v5 = 1;
LABEL_41:
        std::to_string(&v16, v5);
        operator new();
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }
    }

    else
    {
      v4 = atoi(v2);
      if (v4 >= 1)
      {
        v5 = v4 + 1;
        goto LABEL_41;
      }

      v13 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v13)
      {
        if (!syslog_is_the_mask_enabled(7) || !os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_40;
        }

        goto LABEL_21;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }
    }

    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    goto LABEL_40;
  }

  v6 = getStringValue("num_daemon_restart_due_to_crashes_or_jetsams");
  if (!v6)
  {
    operator new();
  }

  v7 = v6;
  memset(&v15, 0, sizeof(v15));
  std::string::assign(&v15, v6);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v15;
  }

  else
  {
    v8 = v15.__r_.__value_.__r.__words[0];
  }

  if (strlen(v8) - 1 > 9)
  {
    v12 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v12)
    {
      if (!syslog_is_the_mask_enabled(7) || !os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_44;
      }

LABEL_25:
      update_stabilitymetrics_host_for_periodic_ca_metrics();
LABEL_44:
      v10 = 1;
LABEL_45:
      std::to_string(&v16, v10);
      operator new();
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }
  }

  else
  {
    v9 = atoi(v7);
    if (v9 >= 1)
    {
      v10 = v9 + 1;
      goto LABEL_45;
    }

    v14 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v14)
    {
      if (!syslog_is_the_mask_enabled(7) || !os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }
  }

  CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  goto LABEL_44;
}

void sub_100170DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void update_stabilitymetrics_host_for_triggerbased_ca_metrics(int a1)
{
  if (a1)
  {
    StringValue = getStringValue("ca_trigger_based_counters_num_daemon_restart_due_to_reboots");
    if (!StringValue)
    {
      operator new();
    }

    v2 = StringValue;
    memset(&v15, 0, sizeof(v15));
    std::string::assign(&v15, StringValue);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v15;
    }

    else
    {
      v3 = v15.__r_.__value_.__r.__words[0];
    }

    if (strlen(v3) - 1 > 9)
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg)
      {
        if (!syslog_is_the_mask_enabled(7) || !os_log_type_enabled(logging_obg, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_40;
        }

LABEL_21:
        update_stabilitymetrics_host_for_triggerbased_ca_metrics();
LABEL_40:
        v5 = 1;
LABEL_41:
        std::to_string(&v16, v5);
        operator new();
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }
    }

    else
    {
      v4 = atoi(v2);
      if (v4 >= 1)
      {
        v5 = v4 + 1;
        goto LABEL_41;
      }

      v13 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v13)
      {
        if (!syslog_is_the_mask_enabled(7) || !os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_40;
        }

        goto LABEL_21;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }
    }

    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    goto LABEL_40;
  }

  v6 = getStringValue("ca_trigger_based_counters_num_daemon_restart_due_to_crashes_or_jetsams");
  if (!v6)
  {
    operator new();
  }

  v7 = v6;
  memset(&v15, 0, sizeof(v15));
  std::string::assign(&v15, v6);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v15;
  }

  else
  {
    v8 = v15.__r_.__value_.__r.__words[0];
  }

  if (strlen(v8) - 1 > 9)
  {
    v12 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v12)
    {
      if (!syslog_is_the_mask_enabled(3) || !os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_44;
      }

LABEL_25:
      update_stabilitymetrics_host_for_triggerbased_ca_metrics();
LABEL_44:
      v10 = 1;
LABEL_45:
      std::to_string(&v16, v10);
      operator new();
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }
  }

  else
  {
    v9 = atoi(v7);
    if (v9 >= 1)
    {
      v10 = v9 + 1;
      goto LABEL_45;
    }

    v14 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v14)
    {
      if (!syslog_is_the_mask_enabled(3) || !os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }
  }

  CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  goto LABEL_44;
}

void sub_100171C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void handle_xpc_output_nobuff(char *a1, unsigned int a2)
{
  v4 = 0;
  v19[0] = 0;
  v5 = 1024;
  do
  {
    if (v5 >= a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = v5;
    }

    encode_data_into_string(&a1[v4], (v7 - v4), v19, 0x401uLL, 0);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (!logging_obg)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      *buf = 136315394;
      *v16 = "com.apple.wpantund.ncp";
      *&v16[8] = 2080;
      v17 = "default";
      v10 = &_os_log_default;
      v11 = "Logging1 Module is not defined for SubSystem: %s, Category: %s";
      v12 = 22;
      goto LABEL_13;
    }

    v9 = logging_obg;
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109890;
      *v16 = v4;
      *&v16[4] = 1024;
      *&v16[6] = v7;
      LOWORD(v17) = 1024;
      *(&v17 + 2) = (v7 - v4);
      HIWORD(v17) = 2080;
      v18 = v19;
      v10 = v9;
      v11 = "Left[%d] Right[%d] parselen[%d] [%s]";
      v12 = 30;
LABEL_13:
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, buf, v12);
    }

LABEL_3:
    v19[0] = 0;
    v6 = a2 >= v5;
    v5 = v7 + 1024;
    v4 = v7;
  }

  while (v6);
  v13 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v13)
  {
    v14 = v13;
    if (syslog_is_the_mask_enabled(3))
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        handle_xpc_output_nobuff();
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }
}

BOOL isiPad(void)
{
  v0 = MGGetStringAnswer();
  v1 = CFStringCompare(@"iPad", v0, 0);
  if (v1)
  {
    return v1 == kCFCompareEqualTo;
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v4 = logging_obg;
    if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      isiPad();
      return 1;
    }

    return v1 == kCFCompareEqualTo;
  }

  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    return v1 == kCFCompareEqualTo;
  }

  CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  return 1;
}

BOOL isMac(void)
{
  v0 = MGGetStringAnswer();
  v1 = CFStringCompare(@"Mac", v0, 0);
  if (v1)
  {
    return v1 == kCFCompareEqualTo;
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v4 = logging_obg;
    if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      isMac();
      return 1;
    }

    return v1 == kCFCompareEqualTo;
  }

  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    return v1 == kCFCompareEqualTo;
  }

  CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  return 1;
}

int main(int argc, const char **argv, const char **envp)
{
  v62[0] = 0;
  v62[1] = 0;
  v63 = 0;
  gSystemDieNow = 0;
  gettimeofday(&v61, &v60);
  gDaemonStartTimeStampSec = v61.tv_sec;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v4 = logging_obg;
    if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      main_cold_1();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  if (!isMac() || (_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingForMacEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    if (!isiPad() || (_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingForIPadEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
    {
      if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"ThreadServiceEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
      {
        if (!removekeyEntryFromPlist())
        {
          v5 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v5)
          {
            v6 = v5;
            if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
            {
              main_cold_9();
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
          }
        }

        recordDaemonStartTime();
        SystemUptimeInSec = getSystemUptimeInSec();
        v11 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v11)
        {
          v12 = v11;
          if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            main_cold_11();
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
        }

        gDaemonStartByDeviceReboot = processHostSystemStartActions(SystemUptimeInSec);
        create_new_settings_folder(v62);
        gDateFormatter = CFDateFormatterCreate(kCFAllocatorDefault, 0, kCFDateFormatterShortStyle, kCFDateFormatterShortStyle);
        CFDateFormatterSetFormat(gDateFormatter, @"yyyy-MM-dd HH:mm:ss");
        log_create_log_modules();
        if (pipe(&gPfdX) == -1)
        {
          v17 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v17)
          {
            v18 = v17;
            if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              main_cold_13();
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
          }
        }

        v13 = fcntl(gPfdX, 3);
        if (v13 == -1)
        {
          v19 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v19)
          {
            v20 = v19;
            if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              main_cold_15();
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
          }
        }

        if (fcntl(gPfdX, 4, v13 | 4u) == -1)
        {
          v21 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v21)
          {
            v22 = v21;
            if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              main_cold_17();
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
          }
        }

        v14 = fcntl(dword_1004E59BC, 3);
        if (v14 == -1)
        {
          v23 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v23)
          {
            v24 = v23;
            if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              main_cold_19();
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
          }
        }

        if (fcntl(dword_1004E59BC, 4, v14 | 4u) == -1)
        {
          v25 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v25)
          {
            v26 = v25;
            if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              main_cold_21();
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
          }
        }

        v15 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v15)
        {
          v16 = v15;
          if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            main_cold_23();
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
        }

        if (gDaemonStartByDeviceReboot == 1)
        {
          *(&__dst.__r_.__value_.__s + 23) = 18;
          strcpy(&__dst, "num_daemon_restart");
          __src.__r_.__value_.__r.__words[0] = &__dst;
          v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &__dst.__r_.__value_.__l.__data_);
          std::string::assign((v27 + 7), "0");
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v28 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v28)
          {
            v29 = v28;
            if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              main_cold_29();
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
          }

          goto LABEL_125;
        }

        StringValue = getStringValue("num_daemon_restart");
        if (!StringValue)
        {
          *(&__dst.__r_.__value_.__s + 23) = 18;
          strcpy(&__dst, "num_daemon_restart");
          __src.__r_.__value_.__r.__words[0] = &__dst;
          v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &__dst.__r_.__value_.__l.__data_);
          std::string::assign((v35 + 7), "1");
LABEL_123:
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

LABEL_125:
          *(&__dst.__r_.__value_.__s + 23) = 18;
          strcpy(&__dst, "num_daemon_restart");
          __src.__r_.__value_.__r.__words[0] = &__dst;
          v46 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &__dst.__r_.__value_.__l.__data_);
          if (v46[79] < 0)
          {
            v47 = strlen(*(v46 + 7));
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_127:
              if ((v47 - 1) <= 9)
              {
                goto LABEL_128;
              }

              goto LABEL_132;
            }
          }

          else
          {
            v47 = strlen(v46 + 56);
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_127;
            }
          }

          operator delete(__dst.__r_.__value_.__l.__data_);
          if ((v47 - 1) <= 9)
          {
LABEL_128:
            *(&__dst.__r_.__value_.__s + 23) = 18;
            strcpy(&__dst, "num_daemon_restart");
            __src.__r_.__value_.__r.__words[0] = &__dst;
            v48 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &__dst.__r_.__value_.__l.__data_);
            if (*(v48 + 79) < 0)
            {
              v49 = v48[7];
            }

            else
            {
              v49 = (v48 + 7);
            }

            saveStringValue("num_daemon_restart", v49);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            v53 = log_get_logging_obg("com.apple.threadradiod", "default");
            if (v53)
            {
              v54 = v53;
              if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
              {
                std::string::basic_string[abi:ne200100]<0>(&__dst, "num_daemon_restart");
                *__p = &__dst;
                v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &__dst.__r_.__value_.__l.__data_);
                v56 = v55 + 7;
                if (*(v55 + 79) < 0)
                {
                  v56 = *v56;
                }

                LODWORD(__src.__r_.__value_.__l.__data_) = 67109378;
                HIDWORD(__src.__r_.__value_.__r.__words[0]) = v47;
                LOWORD(__src.__r_.__value_.__r.__words[1]) = 2080;
                *(&__src.__r_.__value_.__r.__words[1] + 2) = v56;
                _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "Size of kAWDStabilityCounters_Num_Daemon_Restart : %d, String is : %s", &__src, 0x12u);
LABEL_147:
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }
              }
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
            }

            update_stabilitymetrics_host_for_periodic_ca_metrics(gDaemonStartByDeviceReboot);
          }

LABEL_132:
          *(&__dst.__r_.__value_.__s + 23) = 18;
          strcpy(&__dst, "num_daemon_restart");
          __src.__r_.__value_.__r.__words[0] = &__dst;
          v50 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &__dst.__r_.__value_.__l.__data_);
          std::string::assign((v50 + 7), "1");
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          *(&__dst.__r_.__value_.__s + 23) = 18;
          strcpy(&__dst, "num_daemon_restart");
          __src.__r_.__value_.__r.__words[0] = &__dst;
          v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &__dst.__r_.__value_.__l.__data_);
          if (*(v51 + 79) < 0)
          {
            v52 = v51[7];
          }

          else
          {
            v52 = (v51 + 7);
          }

          saveStringValue("num_daemon_restart", v52);
          goto LABEL_147;
        }

        v31 = StringValue;
        memset(&__dst, 0, sizeof(__dst));
        std::string::assign(&__dst, StringValue);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if (strlen(p_dst) - 1 > 9)
        {
          v36 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v36)
          {
            v37 = v36;
            if (!syslog_is_the_mask_enabled(7) || !os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_117;
            }

LABEL_84:
            main_cold_25();
LABEL_117:
            v34 = 1;
            goto LABEL_118;
          }

          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_117;
          }
        }

        else
        {
          v33 = atoi(v31);
          if (v33 >= 1)
          {
            v34 = v33 + 1;
LABEL_118:
            std::to_string(&__src, v34);
            v59 = 18;
            strcpy(__p, "num_daemon_restart");
            v64 = __p;
            v44 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
            if (*(v44 + 79) < 0)
            {
              v45 = v44;
              operator delete(v44[7]);
              v44 = v45;
            }

            *(v44 + 7) = __src;
            *(&__src.__r_.__value_.__s + 23) = 0;
            __src.__r_.__value_.__s.__data_[0] = 0;
            if (v59 < 0)
            {
              operator delete(*__p);
              if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__src.__r_.__value_.__l.__data_);
              }
            }

            goto LABEL_123;
          }

          v42 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v42)
          {
            v43 = v42;
            if (!syslog_is_the_mask_enabled(7) || !os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_117;
            }

            goto LABEL_84;
          }

          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_117;
          }
        }

        CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
        goto LABEL_117;
      }

      v7 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v7)
      {
        v8 = v7;
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = (_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"ThreadServiceEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) != 0;
          main_cold_7(&__dst, v9, v8);
        }

        goto LABEL_152;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_152;
      }

LABEL_114:
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
      goto LABEL_152;
    }

    v40 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (!v40)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_152;
      }

      goto LABEL_114;
    }

    v41 = v40;
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      main_cold_5();
    }
  }

  else
  {
    v38 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (!v38)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_152;
      }

      goto LABEL_114;
    }

    v39 = v38;
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      main_cold_3();
    }
  }

LABEL_152:
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62[0]);
  }

  return 0;
}

void sub_1001755E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ProcessNetif (void *a1, unsigned __int8 a2, char **a3)
{
  ThreadNetifName = otSysGetThreadNetifName();
  otSysGetThreadNetifIndex();
  otCliOutputFormat("%s:%u\r\n", v4, v5, v6, v7, v8, v9, v10, ThreadNetifName);
  return 0;
}

void OUTLINED_FUNCTION_4_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

uint64_t _GLOBAL__sub_I_main_cpp()
{
  qword_1004E5998 = 0;
  qword_1004E5990 = 0;
  network_monitor_settings = &qword_1004E5990;
  __cxa_atexit(std::map<std::string,std::string>::~map[abi:ne200100], &network_monitor_settings, &_mh_execute_header);
  qword_1004E59B0 = 0;
  qword_1004E59A8 = 0;
  nm_srp_omr_rloc_map = &qword_1004E59A8;

  return __cxa_atexit(std::map<std::string,unsigned short>::~map[abi:ne200100], &nm_srp_omr_rloc_map, &_mh_execute_header);
}

uint64_t ot::Spinel::SpinelStatusToOtError(uint64_t this)
{
  switch(this)
  {
    case 0:
    case 1:
      return this;
    case 2:
    case 13:
      this = 12;
      break;
    case 3:
      this = 7;
      break;
    case 4:
      this = 13;
      break;
    case 5:
    case 6:
    case 7:
    case 8:
    case 10:
    case 15:
    case 16:
      goto LABEL_5;
    case 9:
      this = 6;
      break;
    case 11:
      this = 3;
      break;
    case 12:
      this = 5;
      break;
    case 14:
      this = 2;
      break;
    case 17:
      this = 14;
      break;
    case 18:
      this = 15;
      break;
    case 19:
      this = 24;
      break;
    case 20:
      this = 23;
      break;
    default:
      if (this == 27649)
      {
        this = 39;
      }

      else
      {
LABEL_5:
        if ((this - 0x4000) > 0x10000)
        {
          this = 1;
        }

        else
        {
          this = (this - 0x4000);
        }
      }

      break;
  }

  return this;
}

void *ot::Spinel::Logger::Logger(void *this, const char *a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

uint64_t ot::Spinel::Logger::Snprintf(ot::Spinel::Logger *this, char *__str, size_t __size, const char *__format, ...)
{
  va_start(va, __format);
  v4 = __size;
  v5 = vsnprintf(__str, __size, __format, va);
  v6 = v4 - 1;
  if (v5 < (v4 - 1))
  {
    v6 = v5;
  }

  if (v5 >= 0)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void ot::Spinel::Logger::LogSpinelFrame(const char **this, const unsigned __int8 *a2, unsigned int a3, int a4)
{
  bzero(__str, 0x400uLL);
  v70 = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v66 = 0;
  if (otLoggingGetLevel(v8) < 5)
  {
LABEL_59:
    v30 = v68;
LABEL_60:
    if (v30 != 116)
    {
LABEL_61:
      ot::Spinel::Logger::LogDebg1(this, "%s");
    }
  }

  else
  {
    if (a4)
    {
      v14 = "Sent spinel frame";
    }

    else
    {
      v14 = "Received spinel frame";
    }

    if (spinel_datatype_unpack(a2, a3, "CiiD", v9, v10, v11, v12, v13, &v70) >= 1)
    {
      v15 = v70 >> 6;
      v16 = (v70 >> 4) & 3;
      v17 = v70 & 0xF;
      v18 = spinel_command_to_cstr(v69);
      v19 = ot::Spinel::Logger::Snprintf(v18, __str, 0x400uLL, "%s, flg:0x%x, iid:%d, tid:%u, cmd:%s", v14, v15, v16, v17, v18);
      v20 = &__str[v19];
      v21 = (1024 - v19);
      v22 = spinel_prop_key_to_cstr(v68);
      v23 = ot::Spinel::Logger::Snprintf(v22, v20, v21, ", key:%s", v22);
      v29 = &v20[v23];
      v30 = v68;
      switch(v68)
      {
        case 0:
          LODWORD(v73) = 0;
          if (spinel_datatype_unpack(v67, v66, "i", v24, v25, v26, v27, v28, &v73) < 1)
          {
            break;
          }

          v53 = spinel_status_to_cstr(v73);
          ot::Spinel::Logger::Snprintf(v53, v29, &v75 - v29, ", status:%s");
          goto LABEL_55;
        case 1:
          LODWORD(v73) = 0;
          v72[0] = 0;
          v31 = spinel_datatype_unpack(v67, v66, "ii", v24, v25, v26, v27, v28, &v73);
          if (v31 < 1)
          {
            break;
          }

          v55 = &v75 - v29;
          v57 = v73;
          v58 = v72[0];
          v56 = ", major:%u, minor:%u";
          goto LABEL_54;
        case 2:
          v73 = 0;
          v31 = spinel_datatype_unpack(v67, v66, "U", v24, v25, v26, v27, v28, &v73);
          if ((v31 & 0x80000000) != 0)
          {
            break;
          }

          v55 = &v75 - v29;
          v57 = v73;
          v56 = ", version:%s";
          goto LABEL_54;
        case 5:
          LODWORD(v73) = 0;
          ot::Spinel::Logger::Snprintf(v23, v29, &v75 - v29, ", caps:");
          goto LABEL_55;
        case 8:
        case 52:
          v73 = 0;
          v31 = spinel_datatype_unpack_in_place(v67, v66, "E", v24, v25, v26, v27, v28, &v73);
          if (v31 < 1)
          {
            break;
          }

          v55 = &v75 - v29;
          v64 = BYTE6(v73);
          v65 = HIBYTE(v73);
          v62 = BYTE4(v73);
          v63 = BYTE5(v73);
          v61 = BYTE3(v73);
          v56 = ", %s:%02x%02x%02x%02x%02x%02x%02x%02x";
          v59 = BYTE1(v73);
          v60 = BYTE2(v73);
          v57 = "laddr";
          v58 = v73;
          goto LABEL_54;
        case 32:
        case 55:
          LOBYTE(v73) = 0;
          v31 = spinel_datatype_unpack(v67, v66, "b", v24, v25, v26, v27, v28, &v73);
          if (v31 < 1)
          {
            break;
          }

          v55 = &v75 - v29;
          v57 = v73;
          v56 = ", enabled:%u";
          goto LABEL_54;
        case 33:
        case 48:
        case 56:
          LOBYTE(v73) = 0;
          v31 = spinel_datatype_unpack(v67, v66, "C", v24, v25, v26, v27, v28, &v73);
          if (v31 < 1)
          {
            break;
          }

          v33 = 0;
          v55 = &v75 - v29;
          v54 = v73;
          goto LABEL_51;
        case 34:
        case 41:
          v72[0] = 32;
          v58 = v72;
          v31 = spinel_datatype_unpack_in_place(v67, v66, "D", v24, v25, v26, v27, v28, &v73);
          if (v31 < 1)
          {
            break;
          }

          v39 = v72[0];
          if (v72[0])
          {
            LODWORD(v40) = 0;
            v41 = &v73;
            do
            {
              LOBYTE(v71[0]) = 0;
              v31 = spinel_datatype_unpack(v41, v39, "C", v34, v35, v36, v37, v38, v71);
              if (v31 < 1 || LOBYTE(v71[0]) >= 0x20uLL)
              {
                goto LABEL_57;
              }

              v40 = (v40 | (1 << SLOBYTE(v71[0])));
              v41 = (v41 + v31);
              v39 = v72[0] - v31;
              v72[0] -= v31;
            }

            while (v72[0]);
          }

          else
          {
            v40 = 0;
          }

          v55 = &v75 - v29;
          v57 = v40;
          v56 = ", channelMask:0x%08x";
LABEL_54:
          ot::Spinel::Logger::Snprintf(v31, v29, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
LABEL_55:
          v50 = 0;
LABEL_56:
          if (v50)
          {
            break;
          }

          goto LABEL_59;
        case 36:
        case 37:
        case 38:
        case 39:
        case 42:
          LOBYTE(v73) = 0;
          v31 = spinel_datatype_unpack(v67, v66, "c", v24, v25, v26, v27, v28, &v73);
          if (v31 < 1)
          {
            break;
          }

          if ((v68 - 36) > 6)
          {
            v32 = 0;
          }

          else
          {
            v32 = off_1004C5568[v68 - 36];
          }

          v55 = &v75 - v29;
          v57 = v32;
          v58 = v73;
          v56 = ", %s:%d";
          goto LABEL_54;
        case 43:
        case 57:
          LOBYTE(v73) = 0;
          LOBYTE(v72[0]) = 0;
          v31 = spinel_datatype_unpack(v67, v66, "Cc", v24, v25, v26, v27, v28, &v73);
          if (v31 < 1)
          {
            break;
          }

          v55 = &v75 - v29;
          v58 = "power";
          v59 = SLOBYTE(v72[0]);
          v57 = v73;
          v56 = ", channel:%u, %s:%d";
          goto LABEL_54;
        case 44:
        case 50:
        case 53:
        case 54:
          LOWORD(v73) = 0;
          v31 = spinel_datatype_unpack(v67, v66, "S", v24, v25, v26, v27, v28, &v73);
          if (v31 < 1)
          {
            break;
          }

          v55 = &v75 - v29;
          v57 = 0;
          v58 = v73;
          v56 = ", %s:0x%04x";
          goto LABEL_54;
        case 45:
          goto LABEL_61;
        case 46:
          LOBYTE(v72[0]) = 0;
          LOWORD(v73) = 0;
          v31 = spinel_datatype_unpack(v67, v66, "Cs", v24, v25, v26, v27, v28, v72);
          if (v31 < 1)
          {
            break;
          }

          v55 = &v75 - v29;
          v57 = LOBYTE(v72[0]);
          v58 = v73;
          v56 = ", ch:%u, targetPower:%d";
          goto LABEL_54;
        case 49:
          v72[0] = 0;
          v48 = spinel_datatype_unpack(v67, v66, "D", v24, v25, v26, v27, v28, &v73);
          if (v48 < 1)
          {
            break;
          }

          v49 = ot::Spinel::Logger::Snprintf(v48, v29, &v75 - v29, ", channels:");
          v50 = v72[0];
          if (!v72[0])
          {
            goto LABEL_56;
          }

          v51 = 0;
          v52 = &v29[v49];
          do
          {
            v49 = ot::Spinel::Logger::Snprintf(v49, v52, &v75 - v52, "%u ", *(__str + v51 + 136));
            v52 += v49;
            ++v51;
          }

          while (v51 < v72[0]);
          goto LABEL_55;
        case 112:
          v72[0] = 151;
          v58 = v72;
          v31 = spinel_datatype_unpack_in_place(v67, v66, "D", v24, v25, v26, v27, v28, &v73);
          if (v31 < 1)
          {
            break;
          }

          *(__str + v72[0] + 136) = 0;
          v55 = &v75 - v29;
          v57 = &v73;
          v56 = ", debug:%s";
          goto LABEL_54;
        case 113:
          goto LABEL_55;
        case 116:
          v73 = 0;
          LOBYTE(v72[0]) = 0;
          v42 = spinel_datatype_unpack(v67, v66, "U", v24, v25, v26, v27, v28, &v73);
          if ((v42 & 0x80000000) != 0)
          {
            break;
          }

          v67 += v42;
          v66 -= v42;
          v31 = spinel_datatype_unpack(v67, v66, "C", v43, v44, v45, v46, v47, v72);
          if (v31 < 1)
          {
            break;
          }

          v55 = &v75 - v29;
          v57 = LOBYTE(v72[0]);
          v58 = v73;
          v56 = ", level:%u, log:%s";
          goto LABEL_54;
        case 176:
        case 177:
          LODWORD(v73) = 0;
          v31 = spinel_datatype_unpack(v67, v66, "i", v24, v25, v26, v27, v28, &v73);
          if (v31 < 1)
          {
            break;
          }

          v33 = "";
          v55 = &v75 - v29;
          v54 = v73;
LABEL_51:
          v57 = v33;
          v58 = v54;
          v56 = ", %s:%u";
          goto LABEL_54;
        case 178:
          ot::Spinel::Logger::Snprintf(v23, v29, &v75 - v29, ", %s", "log-crash-dump");
          goto LABEL_59;
        default:
          goto LABEL_60;
      }
    }

LABEL_57:
    ot::Spinel::Logger::LogDebg1(this, "%s, failed to parse spinel frame !");
  }
}

unint64_t in6_addr_to_string@<X0>(const in6_addr *a1@<X0>, _BYTE *a2@<X8>)
{
  memset(v7, 0, sizeof(v7));
  v6 = 0u;
  *__s = 14906;
  inet_ntop(30, a1, __s, 0x2Eu);
  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __s, result);
  }

  a2[v4] = 0;
  return result;
}

BOOL str_to_in6_addr(uint64_t a1, void *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  return inet_pton(30, v3, a2) == 1;
}

uint64_t make_slaac_addr_from_eui64(const unsigned __int8 *a1, const unsigned __int8 *a2)
{
  result = *a1;
  v3 = (*(a2 + 1) << 8) | ((*(a2 + 5) | (a2[7] << 16)) << 40) | *a2 ^ 2;
  return result;
}

void in6_addr_apply_mask(in6_addr *a1, unsigned int a2)
{
  if (a2 >= 0x80)
  {
    v3 = 128;
  }

  else
  {
    v3 = a2;
  }

  bzero(&a1->__u6_addr8[(v3 + 7) >> 3], 16 - ((v3 + 7) >> 3));
  if ((v3 & 7) != 0)
  {
    a1->__u6_addr8[v3 >> 3] &= -256 >> (v3 & 7);
  }
}

void sub_100177438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100177504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001775B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100177924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100177A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100177B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100177C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _GLOBAL__sub_I_CtrInternalClient_mm()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void wcm_create_xpc_connection()
{
  mach_service = xpc_connection_create_mach_service("com.apple.WirelessCoexManager", 0, 0);
  WCMClient_Rcp::wrm_xpc_connection = mach_service;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  v2 = logging_obg;
  if (mach_service)
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6))
      {
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          v3 = 136315138;
          v4 = "wcm_create_xpc_connection";
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "WCM: Create XPC connection %s, Notify WRM", &v3, 0xCu);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    xpc_connection_set_event_handler(WCMClient_Rcp::wrm_xpc_connection, &__block_literal_global_7);
    xpc_connection_activate(WCMClient_Rcp::wrm_xpc_connection);
  }

  else if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 136315138;
      v4 = "wcm_create_xpc_connection";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "WCM: Create XPC connection Obj Failure %s", &v3, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }
}

void wcm_handle_event(void *a1)
{
  if (xpc_get_type(a1) != &_xpc_type_error)
  {
    v2 = xpc_copy_description(a1);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v4 = logging_obg;
      if (syslog_is_the_mask_enabled(6))
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v7 = 136315394;
          v8 = "wcm_handle_event";
          v9 = 2082;
          string = v2;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "WCM: %s Unexpected XPC connection event: %{public}s", &v7, 0x16u);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    free(v2);
    return;
  }

  v5 = log_get_logging_obg("com.apple.threadradiod", "default");
  v6 = v5;
  if (a1 != &_xpc_error_connection_interrupted)
  {
    if (v5)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 136315394;
        v8 = "wcm_handle_event";
        v9 = 2082;
        string = xpc_dictionary_get_string(a1, _xpc_error_key_description);
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "WCM: %s XPC connection error: %{public}s", &v7, 0x16u);
      }

      return;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_20:
    [PowerEventHandler_Rcp init:];
    return;
  }

  if (!v5)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_20;
  }

  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "wcm_handle_event";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "WCM: %s XPC connection interrupted ", &v7, 0xCu);
  }
}

void wcm_close_xpc_connection()
{
  v0 = WCMClient_Rcp::wrm_xpc_connection;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  v2 = logging_obg;
  if (v0)
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6))
      {
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          v3 = 136315138;
          v4 = "wcm_close_xpc_connection";
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "WCM: Closing XPC connection %s", &v3, 0xCu);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    xpc_release(WCMClient_Rcp::wrm_xpc_connection);
    WCMClient_Rcp::wrm_xpc_connection = 0;
  }

  else if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 136315138;
      v4 = "wcm_close_xpc_connection";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "WCM: XPC connection already closed %s", &v3, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }
}

uint64_t wcm_get_xpc_connection_object()
{
  v0 = WCMClient_Rcp::wrm_xpc_connection;
  if (!WCMClient_Rcp::wrm_xpc_connection)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v3 = logging_obg;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = 136315138;
        v5 = "wcm_get_xpc_connection_object";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "WCM: XPC connection Object NULL %s", &v4, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }

  return v0;
}

void wcm_notify(char a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __wcm_notify_block_invoke;
  block[3] = &__block_descriptor_tmp_11;
  v3 = a1;
  v4 = a2;
  dispatch_async(WCMClient_Rcp::wcmXPCQueue, block);
}

void __wcm_notify_block_invoke(uint64_t a1)
{
  if (WCMClient_Rcp::wrm_xpc_connection || (wcm_create_xpc_connection(), WCMClient_Rcp::wrm_xpc_connection))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v4 = logging_obg;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 33);
        *buf = 136315650;
        *&buf[4] = "wcm_notify_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = v5;
        v15 = 1024;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "WCM: %s ThreadSession = [%d], listenCoexLoadChange = [%d], Notify WRM", buf, 0x18u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = 1401;
    }

    else
    {
      v8 = 1402;
    }

    v9 = xpc_uint64_create(v8);
    xpc_dictionary_set_BOOL(v2, "kWCMThreadState", v7);
    xpc_dictionary_set_BOOL(v2, "kWCMThreadListenCoexLoadChange", *(a1 + 33));
    *buf = *off_1004C55E0;
    v13[0] = v9;
    v13[1] = v2;
    v10 = xpc_dictionary_create(buf, v13, 2uLL);
    xpc_connection_send_message(WCMClient_Rcp::wrm_xpc_connection, v10);
    xpc_release(v9);
    xpc_release(v2);
    xpc_release(v10);
    wcm_close_xpc_connection();
  }

  else
  {
    v11 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v11)
    {
      v12 = v11;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "wcm_notify_block_invoke";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "WCM: XPC connection Object NULL %s", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }
}

dispatch_queue_t _GLOBAL__sub_I_WCMClient_rcp_cpp()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  result = dispatch_queue_create("wcm-notify-xpc-queue", v0);
  WCMClient_Rcp::wcmXPCQueue = result;
  return result;
}

uint64_t nl::wpantund::ncp_state_to_string@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result > 5)
  {
    if (result > 8)
    {
      switch(result)
      {
        case 9:
          *(a2 + 23) = 20;
          strcpy(a2, "associated:no-parent");
          return result;
        case 0xA:
          operator new();
        case 0xB:
          operator new();
      }

      goto LABEL_26;
    }

    if (result == 6)
    {
      *(a2 + 23) = 11;
      strcpy(a2, "associating");
    }

    else
    {
      if (result == 7)
      {
        operator new();
      }

      *(a2 + 23) = 10;
      strcpy(a2, "associated");
    }
  }

  else
  {
    if (result <= 2)
    {
      switch(result)
      {
        case 0:
          v2 = "uninitialized";
LABEL_27:
          *(a2 + 23) = 13;
          *a2 = *v2;
          *(a2 + 5) = *(v2 + 5);
          *(a2 + 13) = 0;
          return result;
        case 1:
          *(a2 + 23) = 19;
          strcpy(a2, "uninitialized:fault");
          return result;
        case 2:
          operator new();
      }

LABEL_26:
      v2 = "unknown-state";
      goto LABEL_27;
    }

    if (result == 3)
    {
      *(a2 + 23) = 18;
      strcpy(a2, "offline:deep-sleep");
    }

    else if (result == 4)
    {
      *(a2 + 23) = 7;
      strcpy(a2, "offline");
    }

    else
    {
      *(a2 + 23) = 20;
      strcpy(a2, "offline:commissioned");
    }
  }

  return result;
}

uint64_t nl::wpantund::ncp_wed_status_to_string@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    a2[23] = 16;
    strcpy(a2, "wed_conn_failure");
  }

  else if (result == 1)
  {
    a2[23] = 9;
    strcpy(a2, "wed_added");
  }

  else if (result)
  {
    a2[23] = 14;
    strcpy(a2, "unknown-status");
  }

  else
  {
    a2[23] = 11;
    strcpy(a2, "wed_removed");
  }

  return result;
}

uint64_t nl::wpantund::ncp_wed_disconnect_reason_to_string@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    operator new();
  }

  if (result == 1)
  {
    a2[23] = 8;
    strcpy(a2, "linkloss");
  }

  else if (result)
  {
    a2[23] = 14;
    strcpy(a2, "unknown-reason");
  }

  else
  {
    a2[23] = 4;
    strcpy(a2, "none");
  }

  return result;
}

std::string *nl::wpantund::node_type_to_string@<X0>(unsigned int a1@<W0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (a1 < 0xA)
  {
    return std::string::assign(a2, off_1004C5610[a1]);
  }

  snprintf(__str, 0x10uLL, "(node-type-%u)", a1);
  return std::string::assign(a2, __str);
}

void sub_100178CD8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nl::wpantund::string_to_node_type(char *a1)
{
  v2 = a1[23];
  if (v2 < 0)
  {
    v5 = *a1;
    if (strcasecmp(*a1, "end-device") && strcasecmp(v5, "end") && strcasecmp(v5, "e") && (*(a1 + 1) != 1 || *v5 != 50))
    {
      if (strcasecmp(v5, "sleepy-end-device"))
      {
        if (strcasecmp(v5, "sed"))
        {
          v9 = *a1;
          if (*(a1 + 1) != 1 || *v9 != 51)
          {
            if (!strcasecmp(*a1, "synchronized-sleepy-end-device"))
            {
              return 4;
            }

LABEL_32:
            if (!strcasecmp(v9, "ssed") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "4"))
            {
              return 4;
            }

            if (a1[23] < 0)
            {
              v10 = *a1;
              if (!strcasecmp(*a1, "router"))
              {
                return 1;
              }
            }

            else
            {
              v10 = a1;
              if (!strcasecmp(a1, "router"))
              {
                return 1;
              }
            }

            if (!strcasecmp(v10, "r") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "1"))
            {
              return 1;
            }

            if (a1[23] < 0)
            {
              v11 = *a1;
              if (strcasecmp(*a1, "leader"))
              {
                if (!strcasecmp(v11, "nl-lurker"))
                {
                  return 6;
                }

LABEL_48:
                if (!strcasecmp(v11, "lurker") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "6"))
                {
                  return 6;
                }

                if (a1[23] < 0)
                {
                  v12 = *a1;
                  if (!strcasecmp(*a1, "sleepy-router"))
                  {
                    return 8;
                  }
                }

                else
                {
                  v12 = a1;
                  if (!strcasecmp(a1, "sleepy-router"))
                  {
                    return 8;
                  }
                }

                if (strcasecmp(v12, "sr"))
                {
                  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "8"))
                  {
                    return 8;
                  }

                  else
                  {
                    return 0;
                  }
                }

                return 8;
              }
            }

            else if (strcasecmp(a1, "leader"))
            {
              v11 = a1;
              if (!strcasecmp(a1, "nl-lurker"))
              {
                return 6;
              }

              goto LABEL_48;
            }

            return 7;
          }
        }
      }

      return 3;
    }

    return 2;
  }

  if (!strcasecmp(a1, "end-device") || !strcasecmp(a1, "end") || !strcasecmp(a1, "e"))
  {
    return 2;
  }

  v3 = *a1;
  if (v2 == 1 && v3 == 50)
  {
    return 2;
  }

  if (!strcasecmp(a1, "sleepy-end-device"))
  {
    return 3;
  }

  v6 = strcasecmp(a1, "sed");
  v8 = v2 == 1 && v3 == 51;
  result = 3;
  if (v6 && !v8)
  {
    v9 = a1;
    if (!strcasecmp(a1, "synchronized-sleepy-end-device"))
    {
      return 4;
    }

    goto LABEL_32;
  }

  return result;
}

void nl::wpantund::address_flags_to_string(nl::wpantund *this@<X0>, std::string *a2@<X8>)
{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (this < 0)
  {
    v4 = 70;
  }

  else
  {
    v4 = 45;
  }

  std::string::push_back(a2, v4);
  if ((v2 & 0x40) != 0)
  {
    v5 = 82;
  }

  else
  {
    v5 = 45;
  }

  std::string::push_back(a2, v5);
  if ((v2 & 0x20) != 0)
  {
    v6 = 67;
  }

  else
  {
    v6 = 45;
  }

  std::string::push_back(a2, v6);
  if ((v2 & 0x10) != 0)
  {
    v7 = 115;
  }

  else
  {
    v7 = 45;
  }

  std::string::push_back(a2, v7);
  std::string::push_back(a2, 32);
  if ((v2 & 8) != 0)
  {
    v8 = 100;
  }

  else
  {
    v8 = 45;
  }

  std::string::push_back(a2, v8);
  if ((v2 & 4) != 0)
  {
    v9 = 83;
  }

  else
  {
    v9 = 45;
  }

  std::string::push_back(a2, v9);
  if ((v2 & 2) != 0)
  {
    v10 = 68;
  }

  else
  {
    v10 = 45;
  }

  std::string::push_back(a2, v10);
  if (v2)
  {
    v11 = 71;
  }

  else
  {
    v11 = 45;
  }

  std::string::push_back(a2, v11);
}

void sub_100179190(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nl::wpantund::flags_to_string(nl::wpantund *this@<X0>, const char *a2@<X1>, std::string *a3@<X8>)
{
  v4 = this;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = "76543210";
  }

  if ((this & 0x80) != 0)
  {
    v7 = *v6;
  }

  else
  {
    v7 = 45;
  }

  std::string::push_back(a3, v7);
  if ((v4 & 0x40) != 0)
  {
    v8 = v6[1];
  }

  else
  {
    v8 = 45;
  }

  std::string::push_back(a3, v8);
  if ((v4 & 0x20) != 0)
  {
    v9 = v6[2];
  }

  else
  {
    v9 = 45;
  }

  std::string::push_back(a3, v9);
  if ((v4 & 0x10) != 0)
  {
    v10 = v6[3];
  }

  else
  {
    v10 = 45;
  }

  std::string::push_back(a3, v10);
  std::string::push_back(a3, 32);
  if ((v4 & 8) != 0)
  {
    v11 = v6[4];
  }

  else
  {
    v11 = 45;
  }

  std::string::push_back(a3, v11);
  if ((v4 & 4) != 0)
  {
    v12 = v6[5];
  }

  else
  {
    v12 = 45;
  }

  std::string::push_back(a3, v12);
  if ((v4 & 2) != 0)
  {
    v13 = v6[6];
  }

  else
  {
    v13 = 45;
  }

  std::string::push_back(a3, v13);
  if (v4)
  {
    v14 = v6[7];
  }

  else
  {
    v14 = 45;
  }

  std::string::push_back(a3, v14);
}

void sub_1001792DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nl::wpantund::string_to_ncp_state(void *a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  if (*(a1 + 23) < 0)
  {
    v4 = a1[1];
    if (v4 != 19)
    {
      if (v4 == 23)
      {
        goto LABEL_17;
      }

      goto LABEL_32;
    }

    v3 = *a1;
  }

  else
  {
    v3 = a1;
    if (v2 != 19)
    {
      v4 = a1[1];
LABEL_29:
      if (v2 != 18)
      {
        v13 = a1;
        if (v2 != 20)
        {
          goto LABEL_87;
        }

        goto LABEL_35;
      }

      if (*a1 != 0x3A656E696C66666FLL || a1[1] != 0x656C732D70656564 || *(a1 + 8) != 28773)
      {
        goto LABEL_87;
      }

      return 3;
    }
  }

  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 11);
  if (v5 == 0x616974696E696E75 && v6 == 0x61663A64657A696CLL && v7 == 0x746C7561663A6465)
  {
    return 1;
  }

  v4 = a1[1];
  if ((v2 & 0x80) != 0 && v4 == 23)
  {
LABEL_17:
    if (**a1 == 0x616974696E696E75 && *(*a1 + 8) == 0x70753A64657A696CLL && *(*a1 + 15) == 0x676E696461726770)
    {
      return 2;
    }

    goto LABEL_87;
  }

  if ((v2 & 0x80) == 0)
  {
    goto LABEL_29;
  }

LABEL_32:
  if (v4 != 18)
  {
    if (v4 != 20)
    {
      goto LABEL_42;
    }

    v13 = *a1;
LABEL_35:
    v14 = *v13;
    v15 = v13[1];
    v16 = *(v13 + 4);
    if (v14 == 0x3A656E696C66666FLL && v15 == 0x697373696D6D6F63 && v16 == 1684369007)
    {
      return 5;
    }

LABEL_42:
    if ((v2 & 0x80) != 0 && v4 == 30)
    {
      if (**a1 == 0x746169636F737361 && *(*a1 + 8) == 0x646572633A676E69 && *(*a1 + 16) == 0x2D736C6169746E65 && *(*a1 + 22) == 0x64656465656E2D73)
      {
        return 7;
      }

      goto LABEL_87;
    }

    goto LABEL_74;
  }

  if (**a1 == 0x3A656E696C66666FLL && *(*a1 + 8) == 0x656C732D70656564 && *(*a1 + 16) == 28773)
  {
    return 3;
  }

  v4 = 18;
LABEL_74:
  if ((v2 & 0x80) == 0)
  {
    v26 = a1;
    if (v2 != 20)
    {
      goto LABEL_87;
    }

LABEL_80:
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v26 + 4);
    if (v27 == 0x746169636F737361 && v28 == 0x61702D6F6E3A6465 && v29 == 1953391986)
    {
      return 9;
    }

    goto LABEL_87;
  }

  if (v4 == 20)
  {
    v26 = *a1;
    goto LABEL_80;
  }

LABEL_87:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "associated:netwake-asleep"))
  {
    return 11;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v1, "associated:netwake-waking"))
  {
    return 10;
  }

  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    if (*v1 == 0x616974696E696E75 && *(v1 + 5) == 0x64657A696C616974)
    {
      return 0;
    }

    if (*v1 != 1818650223 || *(v1 + 3) != 1701734764)
    {
      if (*v1 != 0x746169636F737361 || *(v1 + 3) != 0x676E69746169636FLL)
      {
        return 8 * (strncmp(v1, "associated", 0xAuLL) == 0);
      }

      return 6;
    }

    return 4;
  }

  v1 = *v1;
  result = strncmp(v1, "uninitialized", 0xDuLL);
  if (result)
  {
    if (strncmp(v1, "offline", 7uLL))
    {
      if (strncmp(v1, "associating", 0xBuLL))
      {
        return 8 * (strncmp(v1, "associated", 0xAuLL) == 0);
      }

      return 6;
    }

    return 4;
  }

  return result;
}

_WORD *ot::OffsetRange::Init(_WORD *this, int a2, unsigned int a3)
{
  v3 = ~a2;
  *this = a2;
  if (a3 < (a2 ^ 0xFFFFu))
  {
    v3 = a3;
  }

  this[1] = v3;
  return this;
}

_WORD *ot::OffsetRange::InitFromRange(_WORD *this, unsigned int a2, unsigned int a3)
{
  v3 = a3 - a2;
  if (a3 < a2)
  {
    v3 = 0;
  }

  *this = a2;
  if (v3 >= (a2 ^ 0xFFFF))
  {
    LOWORD(v3) = ~a2;
  }

  this[1] = v3;
  return this;
}

_WORD *ot::OffsetRange::InitFromMessageOffsetToEnd(_WORD *result, uint64_t a2)
{
  v2 = *(a2 + 58);
  v3 = *(a2 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  *result = v2;
  if (v5 >= (v2 ^ 0xFFFF))
  {
    v6 = ~v2;
  }

  else
  {
    v6 = v5;
  }

  result[1] = v6;
  return result;
}

_WORD *ot::OffsetRange::InitFromMessageFullLength(_WORD *result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *result = 0;
  result[1] = v2;
  return result;
}

_WORD *ot::OffsetRange::AdvanceOffset(_WORD *this, unsigned int a2)
{
  v2 = this[1];
  if (a2 >= v2)
  {
    v3 = this[1];
  }

  else
  {
    v3 = a2;
  }

  *this += v3;
  if (a2 >= 0xFFFF)
  {
    v4 = 0xFFFF;
  }

  else
  {
    v4 = a2;
  }

  v5 = v2 >= v4;
  v6 = v2 - v4;
  if (!v5)
  {
    v6 = 0;
  }

  this[1] = v6;
  return this;
}

uint64_t ot::OffsetRange::ShrinkLength(uint64_t this, unsigned int a2)
{
  v2 = *(this + 2);
  if (v2 >= a2)
  {
    LOWORD(v2) = a2;
  }

  *(this + 2) = v2;
  return this;
}

id base64StringFromData(void *a1)
{
  if (a1)
  {
    v1 = [a1 base64EncodedStringWithOptions:0];
  }

  else
  {
    v2 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      base64StringFromData_cold_1();
    }

    v1 = 0;
  }

  return v1;
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

id dataFromBase64String(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [[NSData alloc] initWithBase64EncodedString:v1 options:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id base64StringFromData_0(void *a1)
{
  if (a1)
  {
    a1 = [a1 base64EncodedStringWithOptions:0];
    v1 = vars8;
  }

  return a1;
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

id THCredentialsServerLogHandleForCategory(int a1)
{
  if (THCredentialsServerLogHandleForCategory_onceToken != -1)
  {
    THCredentialsServerLogHandleForCategory_cold_1();
  }

  v2 = THCredentialsServerLogHandleForCategory_logHandles[a1];

  return v2;
}

void sub_10017F854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10018180C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100184DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100188798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100188BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100189DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

id generatreRandomSSID()
{
  v0 = [NSMutableString stringWithCapacity:0];
  v1 = arc4random();
  v2 = [NSString stringWithFormat:@"%s%d", "ThSSID", v1 + ((v1 / 0x7FFFFFFF) | ((v1 / 0x7FFFFFFF) << 31)) + 1];
  [v0 appendString:v2];

  v3 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    generatreRandomSSID_cold_1();
  }

  return v0;
}

id generatreRandomPWD()
{
  v0 = [NSMutableString stringWithCapacity:0];
  v1 = arc4random();
  v2 = [NSString stringWithFormat:@"%s%d", "ThPWD", v1 + ((v1 / 0x7FFFFFFF) | ((v1 / 0x7FFFFFFF) << 31)) + 1];
  [v0 appendString:v2];

  v3 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    generatreRandomPWD_cold_1();
  }

  return v0;
}

void sub_10019244C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100194040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100194610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id generateNewBorderAgentIDAsString()
{
  v0 = getUUIDAsStr();
  v1 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2 = [v0 substringToIndex:16];
    v5 = 138412546;
    v6 = v2;
    v7 = 2112;
    v8 = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Generated new BAID: %@, full string: %@", &v5, 0x16u);
  }

  v3 = [v0 substringToIndex:16];

  return v3;
}

uint64_t getRandomNumberBetween(int a1, int a2)
{
  return arc4random() % (a2 - a1 + 1) + a1;
}

{
  return arc4random() % (a2 - a1 + 1) + a1;
}

id generateNewXPANIDAsString()
{
  v0 = getUUIDAsStr();
  v1 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2 = [v0 substringToIndex:16];
    v5 = 138412546;
    v6 = v2;
    v7 = 2112;
    v8 = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Generated new XPANID: %@, full string: %@", &v5, 0x16u);
  }

  v3 = [v0 substringToIndex:16];

  return v3;
}

id generateNewNetworkKeyAsByteArray()
{
  v0 = [NSMutableData dataWithLength:16];
  if (SecRandomCopyBytes(kSecRandomDefault, [v0 length], objc_msgSend(v0, "mutableBytes")))
  {
    v4 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      generateNewNetworkKeyAsByteArray_cold_1();
    }

    __assert_rtn("generateNewNetworkKeyAsByteArray", "THThreadNetworkCredentialsKeychainBackingStore.m", 6172, "false");
  }

  v1 = [[NSData alloc] initWithBytes:objc_msgSend(v0 length:{"bytes"), objc_msgSend(v0, "length")}];
  v2 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Generated the new Network Key :: %@ ", &v5, 0xCu);
  }

  return v1;
}

id generatreNewNetworkName()
{
  v0 = [NSMutableString stringWithCapacity:0];
  v1 = arc4random();
  v2 = [NSString stringWithFormat:@"%s%d", "MyHome", v1 + ((v1 / 0x7FFFFFFF) | ((v1 / 0x7FFFFFFF) << 31)) + 1];
  [v0 appendString:v2];

  v3 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v6 = v0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Generated new Network Name: %@", buf, 0xCu);
  }

  return v0;
}

id getUUIDAsStr()
{
  v6[0] = 0;
  v6[1] = 0;
  v0 = +[NSUUID UUID];
  [v0 getUUIDBytes:v6];

  v1 = [NSData dataWithBytes:v6 length:16];
  encode_data_into_string(v6, 16, v5, 0x24uLL, 0);
  v2 = [NSString stringWithUTF8String:v5];
  v3 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    getUUIDAsStr_cold_1();
  }

  return v2;
}

id getUUIDAsByteArray()
{
  v6[0] = 0;
  v6[1] = 0;
  v0 = +[NSUUID UUID];
  [v0 getUUIDBytes:v6];

  v1 = [NSData dataWithBytes:v6 length:16];
  v2 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Generated new uuid_temp: %@", &v4, 0xCu);
  }

  return v1;
}

unint64_t generateNewXPANIDAsInt()
{
  v0 = getUUIDAsByteArray();
  v3 = 0;
  [v0 getBytes:&v3 length:8];
  v3 = bswap64(v3);
  NSLog(@"Generated new XPANID Temp: %@, XPANID: 0x%016llx", v0, v3);
  v1 = v3;

  return v1;
}

id generateCommisonerCredentialAsString()
{
  v0 = getUUIDAsStr();
  v1 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Generated new CC %@ ", &v3, 0xCu);
  }

  return v0;
}

id generateNewNetworkKeyAsString()
{
  v0 = getUUIDAsStr();
  v1 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Generated new Master Key %@ ", &v3, 0xCu);
  }

  return v0;
}

id generateOTBridgeNSStringfromCArray(unsigned __int8 *a1, unsigned int a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = [NSMutableString stringWithCapacity:2 * a2];
    if (a2)
    {
      v5 = a2;
      do
      {
        v6 = *v3++;
        v7 = [NSString stringWithFormat:@"%02lx", v6];
        [v4 appendString:v7];

        --v5;
      }

      while (v5);
    }

    v8 = [NSString stringWithString:v4];
  }

  else
  {
    v8 = +[NSString string];
  }

  return v8;
}

id getOTBridgeRandomAlphanumericPSKdWithLength(uint64_t a1)
{
  v1 = a1;
  v2 = [NSMutableString stringWithCapacity:a1];
  if (v1 >= 1)
  {
    do
    {
      [v2 appendFormat:@"%C", objc_msgSend(@"ABCDEFGHJKLMNPRSTUVWXY0123456789", "characterAtIndex:", arc4random() % objc_msgSend(@"ABCDEFGHJKLMNPRSTUVWXY0123456789", "length"))];
      --v1;
    }

    while (v1);
  }

  return v2;
}

void generatreRandomSSID_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void generatreRandomPWD_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void generateNewNetworkKeyAsByteArray_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void getUUIDAsStr_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void OUTLINED_FUNCTION_4_6(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

void OUTLINED_FUNCTION_5_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

uint64_t *OUTLINED_FUNCTION_8_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

id scrubRecords(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v1 count]);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 addObject:{*(*(&v11 + 1) + 8 * i), v11}];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    v9 = [v3 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void OUTLINED_FUNCTION_7_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 8u);
}

uint64_t spinel_packed_uint_decode(_BYTE *a1, int a2, _DWORD *a3)
{
  v6 = 0;
  v5 = 0;
  v4 = 0;
  while (a2 && v4 < 0x20uLL)
  {
    v5 |= (*a1 & 0x7F) << v4;
    v4 += 7;
    ++v6;
    ++a1;
    --a2;
    if ((*(a1 - 1) & 0x80) != 0x80)
    {
      goto LABEL_6;
    }
  }

  v6 = -1;
LABEL_6:
  if (v6 > 0 && a3)
  {
    *a3 = v5;
  }

  return v6;
}

uint64_t spinel_packed_uint_size(unsigned int a1)
{
  if (a1 >= 0x80)
  {
    if (a1 >= 0x4000)
    {
      if (a1 >= 0x200000)
      {
        if (a1 >= 0x10000000)
        {
          return 5;
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t spinel_packed_uint_encode(_BYTE *a1, int a2, unsigned int a3)
{
  v7 = a3;
  v6 = spinel_packed_uint_size(a3);
  if (a2 >= v6)
  {
    for (i = 0; i != v6 - 1; ++i)
    {
      v3 = a1++;
      *v3 = v7 & 0x7F | 0x80;
      v7 >>= 7;
    }

    *a1 = v7 & 0x7F;
  }

  return v6;
}

_BYTE *spinel_next_packed_datatype(_BYTE *a1)
{
  v4 = 0;
  do
  {
    v3 = *++a1;
    if (v3 == 40)
    {
      ++v4;
    }

    else if (v3 == 41 && !--v4)
    {
      ++a1;
    }

    v2 = 0;
    if (v4 > 0)
    {
      v2 = *a1 != 0;
    }
  }

  while (v2);
  return a1;
}

uint64_t spinel_datatype_unpack_in_place(unsigned __int8 *a1, unsigned int a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  v10 = &a9;
  return spinel_datatype_vunpack_(1, a1, a2, a3, &v10);
}

uint64_t spinel_datatype_vunpack_(char a1, unsigned __int8 *a2, unsigned int a3, _BYTE *a4, void **a5)
{
  v87 = a1;
  v86 = a2;
  v85 = a3;
  packed_datatype = a4;
  v83 = a5;
  v82 = 0;
  if (a3 >= 0x8000)
  {
    v82 = -1;
    *__error() = 22;
    return v82;
  }

  while (2)
  {
    if (!*packed_datatype || *packed_datatype == 41)
    {
      return v82;
    }

    switch(*packed_datatype)
    {
      case '.':
        goto LABEL_110;
      case '6':
        if (v85 < 0x10uLL)
        {
          goto LABEL_105;
        }

        if (v87)
        {
          v10 = *(*v83)++;
          v68 = v10;
          v69 = v10;
          if (v10)
          {
            __memcpy_chk();
          }
        }

        else
        {
          v11 = *(*v83)++;
          v66 = v11;
          v67 = v11;
          if (v11)
          {
            *v67 = v86;
          }
        }

        v82 += 16;
        v86 += 16;
        v85 -= 16;
        goto LABEL_110;
      case 'C':
      case 'c':
        v6 = *(*v83)++;
        v78 = v6;
        v79 = v6;
        if (!v85)
        {
          goto LABEL_105;
        }

        if (v79)
        {
          *v79 = *v86;
        }

        ++v82;
        ++v86;
        --v85;
        goto LABEL_110;
      case 'D':
      case 'd':
        v47 = 0;
        v46 = 0;
        v45 = v86;
        v21 = *(*v83)++;
        v43 = v21;
        v44 = v21;
        v22 = *(*v83)++;
        v41 = v22;
        v42 = v22;
        v40 = *spinel_next_packed_datatype(packed_datatype);
        if (*packed_datatype == 100 || v40 && v40 != 41)
        {
          v47 = spinel_datatype_unpack(v86, v85, "S", v23, v24, v25, v26, v27, &v46);
          v45 += v47;
          if (v47 <= 0 || v46 >= 0x514u)
          {
            return v82;
          }
        }

        else
        {
          v46 = v85;
          v47 = 0;
        }

        if (v85 < v46 + v47)
        {
          goto LABEL_105;
        }

        if (v87)
        {
          if (!v42 || *v42 < v46)
          {
LABEL_87:
            v82 = -1;
            *__error() = 22;
            return v82;
          }

          __memcpy_chk();
        }

        else
        {
          v39 = v44;
          if (v44)
          {
            *v39 = v45;
          }
        }

        if (v42)
        {
          *v42 = v46;
        }

        v46 += v47;
        v82 += v46;
        v86 += v46;
        v85 -= v46;
        goto LABEL_110;
      case 'E':
        if (v85 < 8uLL)
        {
          goto LABEL_105;
        }

        if (v87)
        {
          v12 = *(*v83)++;
          v64 = v12;
          v65 = v12;
          if (v12)
          {
            __memcpy_chk();
          }
        }

        else
        {
          v13 = *(*v83)++;
          v62 = v13;
          v63 = v13;
          if (v13)
          {
            *v63 = v86;
          }
        }

        v82 += 8;
        v86 += 8;
        v85 -= 8;
        goto LABEL_110;
      case 'L':
      case 'l':
        v8 = *(*v83)++;
        v74 = v8;
        v75 = v8;
        if (v85 < 4uLL)
        {
          goto LABEL_105;
        }

        if (v75)
        {
          *v75 = (v86[2] << 16) | (v86[3] << 24) | (v86[1] << 8) | *v86;
        }

        v82 += 4;
        v86 += 4;
        v85 -= 4;
        goto LABEL_110;
      case 'S':
      case 's':
        v7 = *(*v83)++;
        v76 = v7;
        v77 = v7;
        if (v85 < 2uLL)
        {
          goto LABEL_105;
        }

        if (v77)
        {
          *v77 = *v86 | (v86[1] << 8);
        }

        v82 += 2;
        v86 += 2;
        v85 -= 2;
        goto LABEL_110;
      case 'T':
      case 't':
        v38 = 0;
        v37 = 0;
        v35 = v86;
        v34 = *spinel_next_packed_datatype(packed_datatype);
        if (*packed_datatype == 116 || v34 && v34 != 41)
        {
          v38 = spinel_datatype_unpack(v86, v85, "S", v28, v29, v30, v31, v32, &v37);
          v35 += v38;
          if (v38 <= 0 || v37 >= 0x514u)
          {
            return v82;
          }
        }

        else
        {
          v37 = v85;
          v38 = 0;
        }

        if (v85 >= v37 + v38)
        {
          v36 = spinel_datatype_vunpack_(0, v35, v37, packed_datatype + 2);
          if ((v36 & 0x80000000) == 0)
          {
            if (v38)
            {
              v37 += v38;
            }

            else
            {
              v37 = v36;
            }

            v82 += v37;
            v86 += v37;
            v85 -= v37;
LABEL_110:
            packed_datatype = spinel_next_packed_datatype(packed_datatype);
            continue;
          }
        }

LABEL_105:
        v82 = -1;
        *__error() = 84;
        return v82;
      case 'U':
        v54 = 0;
        if (!v85)
        {
          v82 = -2;
          *__error() = 84;
          return v82;
        }

        v54 = spinel_strnlen(v86, v85) + 1;
        if (v54 > v85)
        {
          v82 = -3;
          *__error() = 84;
          return v82;
        }

        v17 = spinel_validate_utf8(v86);
        if ((v17 & 1) == 0)
        {
          v82 = -4;
          *__error() = 22;
          return v82;
        }

        if (v87)
        {
          v18 = *(*v83)++;
          v52 = v18;
          v53 = v18;
          v19 = *(*v83)++;
          v50 = v19;
          v51 = v19;
          if (v53)
          {
            if (v51 < v54)
            {
              v82 = -5;
              *__error() = 12;
              return v82;
            }

            __memcpy_chk();
          }
        }

        else
        {
          v20 = *(*v83)++;
          v48 = v20;
          v49 = v20;
          if (v20)
          {
            *v49 = v86;
          }
        }

        v82 += v54;
        v86 += v54;
        v85 -= v54;
        goto LABEL_110;
      case 'X':
      case 'x':
        v9 = *(*v83)++;
        v72 = v9;
        v73 = v9;
        if (v85 < 8uLL)
        {
          goto LABEL_105;
        }

        if (v73)
        {
          v71 = (v86[2] << 16) | (v86[3] << 24) | (v86[1] << 8) | *v86;
          v70 = (v86[6] << 16) | (v86[7] << 24) | (v86[5] << 8) | v86[4];
          *v73 = v71 | (v70 << 32);
        }

        v82 += 8;
        v86 += 8;
        v85 -= 8;
        goto LABEL_110;
      case 'b':
        v5 = *(*v83)++;
        v80 = v5;
        v81 = v5;
        if (!v85)
        {
          goto LABEL_105;
        }

        if (v81)
        {
          *v81 = *v86 != 0;
        }

        ++v82;
        ++v86;
        --v85;
        goto LABEL_110;
      case 'e':
        if (v85 < 6uLL)
        {
          goto LABEL_105;
        }

        if (v87)
        {
          v14 = *(*v83)++;
          v60 = v14;
          v61 = v14;
          if (v14)
          {
            __memcpy_chk();
          }
        }

        else
        {
          v15 = *(*v83)++;
          v58 = v15;
          v59 = v15;
          if (v15)
          {
            *v59 = v86;
          }
        }

        v82 += 6;
        v86 += 6;
        v85 -= 6;
        goto LABEL_110;
      case 'i':
        v16 = *(*v83)++;
        v56 = v16;
        v57 = v16;
        v55 = spinel_packed_uint_decode(v86, v85, v16);
        if (v57 && *v57 >= 0x1FFFFFu)
        {
          v82 = -1;
          *__error() = 34;
          return v82;
        }

        if (v55 <= 0 || v55 > v85)
        {
          return v82;
        }

        v82 += v55;
        v86 += v55;
        v85 -= v55;
        goto LABEL_110;
      default:
        goto LABEL_87;
    }
  }
}

uint64_t spinel_datatype_unpack(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  v10 = &a9;
  return spinel_datatype_vunpack_(0, a1, a2, a3);
}

uint64_t spinel_datatype_vunpack_in_place(unsigned __int8 *a1, unsigned int a2, _BYTE *a3, void *a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6 = 0;
  v5 = a4;
  return spinel_datatype_vunpack_(1, a1, a2, a3, &v5);
}

uint64_t spinel_datatype_vunpack(unsigned __int8 *a1, unsigned int a2, _BYTE *a3, void *a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6 = 0;
  v5 = a4;
  return spinel_datatype_vunpack_(0, a1, a2, a3, &v5);
}

uint64_t spinel_datatype_pack(BOOL *a1, unsigned int a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  v10 = &a9;
  return spinel_datatype_vpack_(a1, a2, a3, &v10);
}

uint64_t spinel_datatype_vpack_(BOOL *a1, unsigned int a2, _BYTE *a3, char ***a4)
{
  v54 = a1;
  v53 = a2;
  packed_datatype = a3;
  v51 = a4;
  v50 = 0;
  if (a2 < 0x8000)
  {
    if (!v54)
    {
      v53 = 0;
    }

    while (2)
    {
      if (*packed_datatype && *packed_datatype != 41)
      {
        switch(*packed_datatype)
        {
          case '.':
            goto LABEL_62;
          case '6':
            v9 = *(*v51)++;
            v38 = v9;
            v39 = v9;
            v50 += 16;
            if (v53 >= 0x10uLL)
            {
              *v54 = *v39;
              v54 += 16;
              v53 -= 16;
            }

            else
            {
              v53 = 0;
            }

            goto LABEL_62;
          case 'C':
          case 'c':
            v5 = *(*v51)++;
            v46 = v5;
            v47 = v5;
            ++v50;
            if (v53)
            {
              *v54++ = v47;
              --v53;
            }

            else
            {
              v53 = 0;
            }

            goto LABEL_62;
          case 'D':
          case 'd':
            v16 = *(*v51)++;
            v26 = v16;
            v27 = v16;
            LODWORD(v16) = *(*v51)++;
            v24 = v16;
            v25 = v16;
            v23 = 0;
            v22 = *spinel_next_packed_datatype(packed_datatype);
            if (*packed_datatype == 100 || v22 && v22 != 41)
            {
              v23 = spinel_datatype_pack(v54, v53, "S");
              if (v23 <= 0)
              {
                goto LABEL_58;
              }
            }

            v50 += v23 + v25;
            if (v53 >= v23 + v25)
            {
              v54 += v23;
              v53 -= v23;
              if (v54 && v27)
              {
                __memcpy_chk();
              }

              v54 += v25;
              v53 -= v25;
            }

            else
            {
              v53 = 0;
            }

            goto LABEL_62;
          case 'E':
            v13 = *(*v51)++;
            v34 = v13;
            v35 = v13;
            v50 += 8;
            if (v53 >= 8uLL)
            {
              *v54 = *v35;
              v54 += 8;
              v53 -= 8;
            }

            else
            {
              v53 = 0;
            }

            goto LABEL_62;
          case 'L':
          case 'l':
            v7 = *(*v51)++;
            v42 = v7;
            v43 = v7;
            v50 += 4;
            if (v53 >= 4uLL)
            {
              *v54 = v43;
              v54 += 4;
              v53 -= 4;
            }

            else
            {
              v53 = 0;
            }

            goto LABEL_62;
          case 'S':
          case 's':
            v6 = *(*v51)++;
            v44 = v6;
            v45 = v6;
            v50 += 2;
            if (v53 >= 2uLL)
            {
              *v54 = v45;
              v54 += 2;
              v53 -= 2;
            }

            else
            {
              v53 = 0;
            }

            goto LABEL_62;
          case 'T':
          case 't':
            v21 = 0;
            v20 = 0;
            v19 = *spinel_next_packed_datatype(packed_datatype);
            if (packed_datatype[1] != 40)
            {
              goto LABEL_58;
            }

            v18 = 0;
            v18 = *v51;
            v21 = spinel_datatype_vpack_(0, 0, packed_datatype + 2, &v18);
            if (*packed_datatype == 116 || v19 && v19 != 41)
            {
              v20 = spinel_datatype_pack(v54, v53, "S");
              if (v20 <= 0)
              {
                goto LABEL_58;
              }
            }

            v50 += v20 + v21;
            if (v21 + v20 > v53)
            {
              v53 = 0;
            }

            else
            {
              v54 += v20;
              v53 -= v20;
              v21 = spinel_datatype_vpack_(v54, v53, packed_datatype + 2, v51);
              v54 += v21;
              v53 -= v21;
            }

            goto LABEL_62;
          case 'U':
            v15 = *(*v51)++;
            v29 = v15;
            __s = v15;
            v28 = 0;
            if (v15)
            {
              v28 = strlen(__s) + 1;
            }

            else
            {
              __s = "";
              v28 = 1;
            }

            v50 += v28;
            if (v53 >= v28)
            {
              __memcpy_chk();
              v54 += v28;
              v53 -= v28;
            }

            else
            {
              v53 = 0;
            }

            goto LABEL_62;
          case 'X':
          case 'x':
            v8 = *(*v51)++;
            v40 = v8;
            v41 = v8;
            v50 += 8;
            if (v53 >= 8uLL)
            {
              *v54 = v41;
              v54 += 8;
              v53 -= 8;
            }

            else
            {
              v53 = 0;
            }

            goto LABEL_62;
          case 'b':
            v4 = *(*v51)++;
            v48 = v4;
            v49 = v4 != 0;
            ++v50;
            if (v53)
            {
              *v54++ = v49;
              --v53;
            }

            else
            {
              v53 = 0;
            }

            goto LABEL_62;
          case 'e':
            v10 = *(*v51)++;
            v36 = v10;
            v37 = v10;
            v50 += 6;
            if (v53 >= 6uLL)
            {
              v11 = v54;
              v12 = v37;
              *v54 = *v37;
              *(v11 + 2) = *(v12 + 2);
              v54 += 6;
              v53 -= 6;
            }

            else
            {
              v53 = 0;
            }

            goto LABEL_62;
          case 'i':
            v14 = *(*v51)++;
            v32 = v14;
            v33 = v14;
            v31 = 0;
            if (v14 >= 0x1FFFFF)
            {
              goto LABEL_58;
            }

            v31 = spinel_packed_uint_encode(v54, v53, v33);
            v50 += v31;
            if (v53 < v31)
            {
              v53 = 0;
            }

            else
            {
              v54 += v31;
              v53 -= v31;
            }

LABEL_62:
            packed_datatype = spinel_next_packed_datatype(packed_datatype);
            continue;
          default:
LABEL_58:
            v50 = -1;
            *__error() = 22;
            return v50;
        }
      }

      break;
    }
  }

  else
  {
    v50 = -1;
    *__error() = 22;
  }

  return v50;
}

uint64_t spinel_datatype_vpack(BOOL *a1, unsigned int a2, _BYTE *a3, char **a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6 = 0;
  v5 = a4;
  return spinel_datatype_vpack_(a1, a2, a3, &v5);
}

const char *spinel_to_cstr(uint64_t a1, int a2)
{
  for (i = 0; *(a1 + 16 * i + 8); ++i)
  {
    if (a2 == *(a1 + 16 * i))
    {
      return *(a1 + 16 * i + 8);
    }
  }

  return "UNKNOWN";
}

unint64_t spinel_strnlen(uint64_t a1, unint64_t a2)
{
  for (i = 0; ; ++i)
  {
    v3 = 0;
    if (i < a2)
    {
      v3 = *(a1 + i) != 0;
    }

    if (!v3)
    {
      break;
    }
  }

  return i;
}

uint64_t spinel_validate_utf8(unsigned __int8 *a1)
{
  v7 = 1;
  while (1)
  {
    v1 = a1++;
    v2 = *v1;
    if (!v2)
    {
      return v7 & 1;
    }

    if ((v2 & 0x80) != 0)
    {
      if ((v2 & 0x40) == 0)
      {
        v7 = 0;
        return v7 & 1;
      }

      if ((v2 & 0x20) == 0)
      {
        v6 = 1;
        goto LABEL_13;
      }

      if ((v2 & 0x10) == 0)
      {
        v6 = 2;
        goto LABEL_13;
      }

      if ((v2 & 8) != 0)
      {
        v7 = 0;
        return v7 & 1;
      }

      v6 = 3;
LABEL_13:
      while (v6--)
      {
        v4 = a1++;
        if ((*v4 & 0xC0) != 0x80)
        {
          v7 = 0;
          return v7 & 1;
        }
      }
    }
  }
}

uint64_t ot::Spinel::Decoder::Decoder(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 18) = 0;
  return this;
}

uint64_t ot::Spinel::Decoder::Init(ot::Spinel::Decoder *this, const unsigned __int8 *a2, __int16 a3)
{
  *this = a2;
  if (!*this)
  {
    a3 = 0;
  }

  *(this + 4) = a3;
  ot::Spinel::Decoder::Reset(this);
  return ot::Spinel::Decoder::ClearSavedPosition(this);
}

uint64_t ot::Spinel::Decoder::Reset(ot::Spinel::Decoder *this)
{
  *(this + 5) = 0;
  *(this + 6) = *(this + 4);
  *(this + 14) = 0;
  return ot::Spinel::Decoder::ClearSavedPosition(this);
}

uint64_t ot::Spinel::Decoder::ClearSavedPosition(uint64_t this)
{
  *(this + 16) = *(this + 8);
  return this;
}

{
  return ot::Spinel::Decoder::ClearSavedPosition(this);
}

uint64_t ot::Spinel::Decoder::ReadBool(ot::Spinel::Decoder *this, BOOL *a2)
{
  v6 = this;
  v5 = a2;
  v4 = 0;
  v3 = 0;
  v4 = ot::Spinel::Decoder::ReadUint8(this, &v3);
  if (!v4)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        *v5 = 1;
      }

      else
      {
        return 6;
      }
    }

    else
    {
      *v5 = 0;
    }
  }

  return v4;
}

uint64_t ot::Spinel::Decoder::ReadUint8(ot::Spinel::Decoder *this, unsigned __int8 *a2)
{
  v3 = 0;
  if (*(this + 5) + 1 > *(this + 6))
  {
    return 6;
  }

  else
  {
    *a2 = *(*this + (*(this + 5))++);
  }

  return v3;
}

uint64_t ot::Spinel::Decoder::ReadInt8(ot::Spinel::Decoder *this, signed __int8 *a2)
{
  v6 = this;
  v5 = a2;
  v4 = 0;
  v3 = 0;
  v4 = ot::Spinel::Decoder::ReadUint8(this, &v3);
  if (!v4)
  {
    *v5 = v3;
  }

  return v4;
}

uint64_t ot::Spinel::Decoder::ReadUint16(ot::Spinel::Decoder *this, unsigned __int16 *a2)
{
  v3 = 0;
  if (*(this + 5) + 2 > *(this + 6))
  {
    return 6;
  }

  else
  {
    *a2 = *(*this + *(this + 5)) | (*(*this + *(this + 5) + 1) << 8);
    *(this + 5) += 2;
  }

  return v3;
}

uint64_t ot::Spinel::Decoder::ReadInt16(ot::Spinel::Decoder *this, __int16 *a2)
{
  v6 = this;
  v5 = a2;
  v4 = 0;
  v3 = 0;
  v4 = ot::Spinel::Decoder::ReadUint16(this, &v3);
  if (!v4)
  {
    *v5 = v3;
  }

  return v4;
}

uint64_t ot::Spinel::Decoder::ReadUint32(ot::Spinel::Decoder *this, unsigned int *a2)
{
  v3 = 0;
  if (*(this + 5) + 4 > *(this + 6))
  {
    return 6;
  }

  else
  {
    *a2 = (*(*this + *(this + 5) + 1) << 8) | *(*this + *(this + 5)) | (*(*this + *(this + 5) + 2) << 16) | (*(*this + *(this + 5) + 3) << 24);
    *(this + 5) += 4;
  }

  return v3;
}

uint64_t ot::Spinel::Decoder::ReadInt32(ot::Spinel::Decoder *this, int *a2)
{
  v6 = this;
  v5 = a2;
  v4 = 0;
  v3 = 0;
  v4 = ot::Spinel::Decoder::ReadUint32(this, &v3);
  if (!v4)
  {
    *v5 = v3;
  }

  return v4;
}

uint64_t ot::Spinel::Decoder::ReadUint64(ot::Spinel::Decoder *this, unint64_t *a2)
{
  v3 = 0;
  if (*(this + 5) + 8 > *(this + 6))
  {
    return 6;
  }

  else
  {
    *a2 = (*(*this + *(this + 5) + 1) << 8) | *(*this + *(this + 5)) | (*(*this + *(this + 5) + 2) << 16) | (*(*this + *(this + 5) + 3) << 24) | (*(*this + *(this + 5) + 4) << 32) | (*(*this + *(this + 5) + 5) << 40) | (*(*this + *(this + 5) + 6) << 48) | (*(*this + *(this + 5) + 7) << 56);
    *(this + 5) += 8;
  }

  return v3;
}

uint64_t ot::Spinel::Decoder::ReadInt64(ot::Spinel::Decoder *this, uint64_t *a2)
{
  v6 = this;
  v5 = a2;
  v4 = 0;
  v3 = 0;
  v4 = ot::Spinel::Decoder::ReadUint64(this, &v3);
  if (!v4)
  {
    *v5 = v3;
  }

  return v4;
}

uint64_t ot::Spinel::Decoder::ReadUintPacked(ot::Spinel::Decoder *this, unsigned int *a2)
{
  v8 = this;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v5 = spinel_packed_uint_decode((*this + *(this + 5)), *(this + 6) - *(this + 5), &v4);
  if (v5 > 0)
  {
    *(this + 5) += v5;
    *v7 = v4;
  }

  else
  {
    return 6;
  }

  return v6;
}

uint64_t ot::Spinel::Decoder::ReadItem(ot::Spinel::Decoder *this, const unsigned __int8 **a2, unsigned __int16 a3)
{
  v4 = 0;
  if (*(this + 5) + a3 <= *(this + 6))
  {
    *a2 = (*this + *(this + 5));
    *(this + 5) += a3;
  }

  else
  {
    return 6;
  }

  return v4;
}

uint64_t ot::Spinel::Decoder::ReadIp6Address(ot::Spinel::Decoder *a1, _OWORD *a2)
{
  v6 = a1;
  v5 = a2;
  v4 = 0;
  v3 = 0;
  v4 = ot::Spinel::Decoder::ReadIp6Address(a1, &v3);
  if (!v4)
  {
    if (v3)
    {
      *v5 = *v3;
    }

    else
    {
      return 6;
    }
  }

  return v4;
}

{
  v6 = a1;
  v5 = a2;
  v4 = 0;
  v3 = 0;
  v4 = ot::Spinel::Decoder::ReadIp6Address(a1, &v3);
  if (!v4)
  {
    if (v3)
    {
      *v5 = *v3;
    }

    else
    {
      return 6;
    }
  }

  return v4;
}

uint64_t ot::Spinel::Decoder::ReadIp6Address(ot::Spinel::Decoder *a1, const unsigned __int8 **a2)
{
  return ot::Spinel::Decoder::ReadItem(a1, a2, 0x10u);
}

{
  return ot::Spinel::Decoder::ReadItem(a1, a2, 0x10u);
}

{
  return ot::Spinel::Decoder::ReadIp6Address(a1, a2);
}

{
  return ot::Spinel::Decoder::ReadIp6Address(a1, a2);
}

uint64_t ot::Spinel::Decoder::ReadEui64(ot::Spinel::Decoder *a1, void *a2)
{
  v6 = a1;
  v5 = a2;
  v4 = 0;
  v3 = 0;
  v4 = ot::Spinel::Decoder::ReadEui64(a1, &v3);
  if (!v4)
  {
    if (v3)
    {
      *v5 = *v3;
    }

    else
    {
      return 6;
    }
  }

  return v4;
}

{
  v6 = a1;
  v5 = a2;
  v4 = 0;
  v3 = 0;
  v4 = ot::Spinel::Decoder::ReadEui64(a1, &v3);
  if (!v4)
  {
    if (v3)
    {
      *v5 = *v3;
    }

    else
    {
      return 6;
    }
  }

  return v4;
}

uint64_t ot::Spinel::Decoder::ReadEui64(ot::Spinel::Decoder *a1, const unsigned __int8 **a2)
{
  return ot::Spinel::Decoder::ReadItem(a1, a2, 8u);
}

{
  return ot::Spinel::Decoder::ReadItem(a1, a2, 8u);
}

{
  return ot::Spinel::Decoder::ReadEui64(a1, a2);
}

{
  return ot::Spinel::Decoder::ReadEui64(a1, a2);
}

uint64_t ot::Spinel::Decoder::ReadEui48(ot::Spinel::Decoder *a1, _DWORD *a2)
{
  v8 = a1;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  v6 = ot::Spinel::Decoder::ReadEui48(a1, &v5);
  if (!v6)
  {
    if (v5)
    {
      v2 = v5;
      v3 = v7;
      *v7 = *v5;
      *(v3 + 2) = *(v2 + 2);
    }

    else
    {
      return 6;
    }
  }

  return v6;
}

uint64_t ot::Spinel::Decoder::ReadEui48(ot::Spinel::Decoder *a1, const unsigned __int8 **a2)
{
  return ot::Spinel::Decoder::ReadItem(a1, a2, 6u);
}

{
  return ot::Spinel::Decoder::ReadEui48(a1, a2);
}

uint64_t ot::Spinel::Decoder::ReadUtf8(ot::Spinel::Decoder *this, const char **a2)
{
  v5 = 0;
  if (*(this + 5) + 1 > *(this + 6))
  {
    return 6;
  }

  else
  {
    v4 = ot::StringLength((*this + *(this + 5)), (*(this + 6) - *(this + 5)));
    if (v4 < (*(this + 6) - *(this + 5)))
    {
      *a2 = (*this + *(this + 5));
      *(this + 5) += v4 + 1;
    }

    else
    {
      return 6;
    }
  }

  return v5;
}

uint64_t ot::Spinel::Decoder::ReadDataWithLen(ot::Spinel::Decoder *this, const unsigned __int8 **a2, unsigned __int16 *a3)
{
  v9 = this;
  v8 = a2;
  v7 = a3;
  Item = 0;
  v5 = 0;
  Item = ot::Spinel::Decoder::ReadUint16(this, &v5);
  if (!Item)
  {
    Item = ot::Spinel::Decoder::ReadItem(this, v8, v5);
    if (!Item)
    {
      *v7 = v5;
    }
  }

  return Item;
}

uint64_t ot::Spinel::Decoder::OpenStruct(ot::Spinel::Decoder *this)
{
  v5 = this;
  v4 = 0;
  v3 = 0;
  if (*(this + 14) < 4u)
  {
    v4 = ot::Spinel::Decoder::ReadUint16(this, &v3);
    if (!v4)
    {
      if (v3 <= *(this + 6) - *(this + 5))
      {
        *(this + *(this + 14) + 10) = *(this + 6);
        *(this + 6) = *(this + 5) + v3;
        ++*(this + 14);
      }

      else
      {
        return 6;
      }
    }
  }

  else
  {
    return 13;
  }

  return v4;
}

uint64_t ot::Spinel::Decoder::CloseStruct(ot::Spinel::Decoder *this)
{
  v3 = 0;
  if (*(this + 14))
  {
    if (ot::Spinel::Decoder::IsSavedPositionValid(this) && *(this + 14) == *(this + 15))
    {
      ot::Spinel::Decoder::ClearSavedPosition(this);
    }

    --*(this + 14);
    *(this + 5) = *(this + 6);
    *(this + 6) = *(this + *(this + 14) + 10);
  }

  else
  {
    return 13;
  }

  return v3;
}

BOOL ot::Spinel::Decoder::IsSavedPositionValid(ot::Spinel::Decoder *this)
{
  return *(this + 8) < *(this + 4);
}

{
  return ot::Spinel::Decoder::IsSavedPositionValid(this);
}

uint64_t ot::Spinel::Decoder::SavePosition(uint64_t this)
{
  *(this + 16) = *(this + 10);
  *(this + 18) = *(this + 12);
  *(this + 15) = *(this + 14);
  return this;
}

uint64_t ot::Spinel::Decoder::ResetToSaved(ot::Spinel::Decoder *this)
{
  v3 = 0;
  if (ot::Spinel::Decoder::IsSavedPositionValid(this))
  {
    *(this + 5) = *(this + 8);
    *(this + 6) = *(this + 9);
    *(this + 14) = *(this + 15);
  }

  else
  {
    return 13;
  }

  return v3;
}

std::runtime_error *boost::filesystem::filesystem_error::filesystem_error(std::runtime_error *a1, boost::system::system_error *a2, std::runtime_error_vtbl **a3)
{
  v4 = boost::system::system_error::system_error(a1, a3, a2);
  v4->__vftable = off_1004C8100;
  v4[2].__imp_.__imp_ = 0;
  p_imp = &v4[2].__imp_;
  v6 = operator new(0x50uLL);
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  v8 = v6;
  atomic_fetch_add(v6, 1u);
  v8 = *p_imp;
  *p_imp = v6;
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(&v8);
  return a1;
}

void sub_1001BC314(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x1001BC2FCLL);
}

void sub_1001BC334(_Unwind_Exception *a1)
{
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

std::runtime_error *boost::system::system_error::system_error(std::runtime_error *this, std::runtime_error_vtbl **a2, boost::system::system_error *a3)
{
  boost::system::system_error::build_message(a3, a2, &v7);
  std::runtime_error::runtime_error(this, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  this->__vftable = off_1004C8158;
  v5 = *a2;
  this[2].__vftable = a2[2];
  this[1] = v5;
  return this;
}

void sub_1001BC3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, char *a2, boost::system::error_code *a3)
{
  v4 = boost::system::system_error::system_error(a1, a3, a2);
  *v4 = off_1004C8100;
  v4[5] = 0;
  v5 = v4 + 5;
  v6 = operator new(0x50uLL);
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  v8 = v6;
  atomic_fetch_add(v6, 1u);
  v8 = *v5;
  *v5 = v6;
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(&v8);
  return a1;
}

void sub_1001BC498(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x1001BC480);
}

void sub_1001BC4B8(_Unwind_Exception *a1)
{
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::system::system_error::system_error(uint64_t a1, boost::system::error_code *a2, char *a3)
{
  if (a3[23] >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  boost::system::system_error::build_message(v5, a2, &v8);
  std::runtime_error::runtime_error(a1, &v8);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  *a1 = off_1004C8158;
  v6 = *a2;
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 16) = v6;
  return a1;
}

void sub_1001BC564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::runtime_error *boost::filesystem::filesystem_error::filesystem_error(std::runtime_error *a1, boost::system::system_error *a2, uint64_t a3, std::runtime_error_vtbl **a4)
{
  v6 = boost::system::system_error::system_error(a1, a4, a2);
  v6->__vftable = off_1004C8100;
  v6[2].__imp_.__imp_ = 0;
  p_imp = &v6[2].__imp_;
  v8 = operator new(0x50uLL);
  *v8 = 0;
  v9 = (v8 + 8);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v9, *a3, *(a3 + 8));
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *a3;
    *(v8 + 3) = *(a3 + 16);
  }

  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 2) = 0u;
  v11 = v8;
  atomic_fetch_add(v8, 1u);
  v11 = *p_imp;
  *p_imp = v8;
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(&v11);
  return a1;
}

void sub_1001BC650(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x1001BC638);
}

void sub_1001BC688(_Unwind_Exception *a1)
{
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, char *a2, uint64_t a3, boost::system::error_code *a4)
{
  v6 = boost::system::system_error::system_error(a1, a4, a2);
  *v6 = off_1004C8100;
  v6[5] = 0;
  v7 = v6 + 5;
  v8 = operator new(0x50uLL);
  *v8 = 0;
  v9 = (v8 + 8);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v9, *a3, *(a3 + 8));
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *a3;
    *(v8 + 3) = *(a3 + 16);
  }

  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 2) = 0u;
  v11 = v8;
  atomic_fetch_add(v8, 1u);
  v11 = *v7;
  *v7 = v8;
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(&v11);
  return a1;
}

void sub_1001BC774(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x1001BC75CLL);
}

void sub_1001BC7AC(_Unwind_Exception *a1)
{
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

std::runtime_error *boost::filesystem::filesystem_error::filesystem_error(std::runtime_error *a1, boost::system::system_error *a2, const boost::filesystem::path *a3, const boost::filesystem::path *a4, std::runtime_error_vtbl **a5)
{
  v8 = boost::system::system_error::system_error(a1, a5, a2);
  v8->__vftable = off_1004C8100;
  v8[2].__imp_.__imp_ = 0;
  p_imp = &v8[2].__imp_;
  v10 = operator new(0x50uLL);
  boost::filesystem::filesystem_error::impl::impl(v10, a3, a4);
  v12 = v10;
  atomic_fetch_add(v10, 1u);
  v12 = *p_imp;
  *p_imp = v10;
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(&v12);
  return a1;
}

void sub_1001BC87C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x1001BC860);
}

void sub_1001BC8B4(_Unwind_Exception *a1)
{
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, char *a2, const boost::filesystem::path *a3, const boost::filesystem::path *a4, boost::system::error_code *a5)
{
  v8 = boost::system::system_error::system_error(a1, a5, a2);
  *v8 = off_1004C8100;
  v8[5] = 0;
  v9 = v8 + 5;
  v10 = operator new(0x50uLL);
  boost::filesystem::filesystem_error::impl::impl(v10, a3, a4);
  v12 = v10;
  atomic_fetch_add(v10, 1u);
  v12 = *v9;
  *v9 = v10;
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(&v12);
  return a1;
}

void sub_1001BC984(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x1001BC968);
}

void sub_1001BC9BC(_Unwind_Exception *a1)
{
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

std::runtime_error *boost::filesystem::filesystem_error::filesystem_error(std::runtime_error *a1, uint64_t a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = off_1004C8158;
  v4 = *(a2 + 16);
  result[2].__vftable = *(a2 + 32);
  result[1] = v4;
  result->__vftable = off_1004C8100;
  v5 = *(a2 + 40);
  result[2].__imp_.__imp_ = v5;
  if (v5)
  {
    atomic_fetch_add(v5, 1u);
  }

  return result;
}

uint64_t boost::filesystem::filesystem_error::operator=(uint64_t a1, uint64_t a2)
{
  std::runtime_error::operator=(a1, a2);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  v5 = *(a2 + 40);
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add(v5, 1u);
    v5 = v7;
  }

  v7 = *(a1 + 40);
  *(a1 + 40) = v5;
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(&v7);
  return a1;
}

void boost::filesystem::filesystem_error::~filesystem_error(boost::filesystem::filesystem_error *this)
{
  *this = off_1004C8100;
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(this + 5);

  std::runtime_error::~runtime_error(this);
}

{
  *this = off_1004C8100;
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(this + 5);

  std::runtime_error::~runtime_error(this);
}

{
  *this = off_1004C8100;
  boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(this + 5);
  std::runtime_error::~runtime_error(this);

  operator delete(v2);
}

const char *boost::filesystem::filesystem_error::what(std::runtime_error *this)
{
  imp = this[2].__imp_.__imp_;
  if (imp)
  {
    if ((imp[79] & 0x8000000000000000) != 0)
    {
      if (*(imp + 8))
      {
        goto LABEL_28;
      }
    }

    else if (imp[79])
    {
      goto LABEL_28;
    }

    v3 = std::runtime_error::what(this);
    std::string::__assign_external((this[2].__imp_.__imp_ + 56), v3);
    imp = this[2].__imp_.__imp_;
    if ((imp[31] & 0x8000000000000000) != 0)
    {
      if (!*(imp + 2))
      {
        goto LABEL_17;
      }
    }

    else if (!imp[31])
    {
      goto LABEL_17;
    }

    std::string::append((imp + 56), ": ", 3uLL);
    v4 = this[2].__imp_.__imp_;
    v7 = *(v4 + 1);
    v5 = v4 + 8;
    v6 = v7;
    v8 = v5[23];
    if (v8 >= 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = v6;
    }

    if (v8 >= 0)
    {
      v10 = *(v5 + 23);
    }

    else
    {
      v10 = *(v5 + 1);
    }

    std::string::append(v5 + 2, v9, v10);
    std::string::append((this[2].__imp_.__imp_ + 56), "", 1uLL);
    imp = this[2].__imp_.__imp_;
LABEL_17:
    if ((imp[55] & 0x8000000000000000) != 0)
    {
      if (!*(imp + 5))
      {
        goto LABEL_28;
      }
    }

    else if (!imp[55])
    {
LABEL_28:
      result = imp + 56;
      if (imp[79] < 0)
      {
        return *result;
      }

      return result;
    }

    std::string::append((imp + 56), ", ", 3uLL);
    v11 = this[2].__imp_.__imp_;
    v14 = *(v11 + 4);
    v12 = v11 + 32;
    v13 = v14;
    v15 = v12[23];
    if (v15 >= 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = v13;
    }

    if (v15 >= 0)
    {
      v17 = *(v12 + 23);
    }

    else
    {
      v17 = *(v12 + 1);
    }

    std::string::append(v12 + 1, v16, v17);
    std::string::append((this[2].__imp_.__imp_ + 56), "", 1uLL);
    imp = this[2].__imp_.__imp_;
    goto LABEL_28;
  }

  return std::runtime_error::what(this);
}

uint64_t *boost::filesystem::filesystem_error::get_empty_path(boost::filesystem::filesystem_error *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_15, memory_order_acquire) & 1) == 0)
  {
    boost::filesystem::filesystem_error::get_empty_path();
  }

  return &qword_10052D7B8;
}

void boost::filesystem::path::~path(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t boost::filesystem::emit_error(boost::filesystem *this, uint64_t a2, boost::system::error_code *a3, const char *a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v12[0] = 0;
    if ((qword_1004E53B8 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
    {
      v9 = this != 0;
    }

    else
    {
      v9 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, this);
    }

    v10 = 2;
    LODWORD(v12[0]) = this;
    if (v9)
    {
      v10 = 3;
    }

    v12[1] = &boost::system::detail::system_cat_holder<void>::instance;
    v12[2] = v10;
    boost::filesystem::filesystem_error::filesystem_error(exception, a3, v12);
  }

  if ((qword_1004E53B8 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
  {
    result = this != 0;
  }

  else
  {
    result = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, this, a3, a4);
  }

  v7 = 2;
  if (result)
  {
    v7 = 3;
  }

  *a2 = this;
  *(a2 + 4) = 0;
  *(a2 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
  *(a2 + 16) = v7;
  return result;
}

uint64_t boost::filesystem::emit_error(boost::filesystem *this, uint64_t a2, const boost::filesystem::path *a3, boost::system::error_code *a4, const char *a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v14[0] = 0;
    if ((qword_1004E53B8 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
    {
      v10 = this != 0;
    }

    else
    {
      v10 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, this);
    }

    v11 = 2;
    LODWORD(v14[0]) = this;
    if (v10)
    {
      v11 = 3;
    }

    v14[1] = &boost::system::detail::system_cat_holder<void>::instance;
    v14[2] = v11;
    boost::filesystem::filesystem_error::filesystem_error(exception, a4, a2, v14);
  }

  if ((qword_1004E53B8 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
  {
    result = this != 0;
  }

  else
  {
    result = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, this);
  }

  v8 = 2;
  if (result)
  {
    v8 = 3;
  }

  *a3 = this;
  *(a3 + 1) = 0;
  *(a3 + 1) = &boost::system::detail::system_cat_holder<void>::instance;
  *(a3 + 2) = v8;
  return result;
}

uint64_t boost::filesystem::emit_error(boost::filesystem *this, uint64_t a2, const boost::filesystem::path *a3, const boost::filesystem::path *a4, boost::system::error_code *a5, const char *a6)
{
  if (!a4)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v16[0] = 0;
    if ((qword_1004E53B8 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
    {
      v11 = this != 0;
    }

    else
    {
      v11 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, this);
    }

    v12 = 2;
    LODWORD(v16[0]) = this;
    if (v11)
    {
      v12 = 3;
    }

    v16[1] = &boost::system::detail::system_cat_holder<void>::instance;
    v16[2] = v12;
    boost::filesystem::filesystem_error::filesystem_error(exception, a5, a2, a3, v16);
  }

  if ((qword_1004E53B8 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
  {
    result = this != 0;
  }

  else
  {
    result = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, this, a3);
  }

  v9 = 2;
  if (result)
  {
    v9 = 3;
  }

  *a4 = this;
  *(a4 + 1) = 0;
  *(a4 + 1) = &boost::system::detail::system_cat_holder<void>::instance;
  *(a4 + 2) = v9;
  return result;
}

void boost::system::system_error::build_message(boost::system::system_error *this@<X0>, boost::system::error_code *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (this)
  {
    v7 = strlen(this);
    std::string::append(a3, this, v7);
    std::string::append(a3, ": ", 2uLL);
  }

  boost::system::error_code::what(a2, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a3, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1001BD2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void boost::system::system_error::~system_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

std::string *boost::system::error_code::what@<X0>(boost::system::error_code *this@<X0>, std::string *a2@<X8>)
{
  boost::system::error_code::message(this, a2);
  std::string::append(a2, " [", 2uLL);
  boost::system::error_code::to_string(this, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(this + 2) >= 4uLL)
  {
    std::string::append(a2, " at ", 4uLL);
    v6 = *(this + 2);
    if (v6 <= 3)
    {
      v7 = boost::system::error_code::location(void)const::loc;
    }

    else
    {
      v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    boost::source_location::to_string(v7, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v8, v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return std::string::append(a2, "]", 1uLL);
}

void sub_1001BD448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *boost::system::error_code::message@<X0>(boost::system::error_code *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 2);
  if (v2)
  {
    if (v2 == 1)
    {
      return std::error_code::message(a2, this);
    }

    v4 = *(this + 1);
  }

  else
  {
    v4 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  return ((*v4)[4])(v4, *this);
}

std::string *boost::system::error_code::to_string@<X0>(boost::system::error_code *this@<X0>, std::string *a2@<X8>)
{
  v4 = *(this + 2);
  if (v4)
  {
    if (v4 == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(a2, "std:");
      v5 = (*(**(this + 1) + 16))(*(this + 1));
      v6 = strlen(v5);
      std::string::append(a2, v5, v6);
      boost::system::detail::snprintf(__s, 0x20, ":%d", v7, *this);
      v8 = strlen(__s);
      return std::string::append(a2, __s, v8);
    }

    v10 = *(this + 1);
  }

  else
  {
    v10 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  v11 = (**v10)(v10);
  std::string::basic_string[abi:ne200100]<0>(a2, v11);
  v13 = *this;
  if (*(this + 2) == 1)
  {
    v13 = v13 + 1000 * (*(this + 1) % 0x1FFFF7uLL);
  }

  boost::system::detail::snprintf(__s, 0x20, ":%d", v12, v13);
  v14 = strlen(__s);
  return std::string::append(a2, __s, v14);
}

void sub_1001BD684(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void boost::source_location::to_string(char **this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 4))
  {
    std::string::basic_string[abi:ne200100]<0>(a2, *this);
    sprintf(__s, ":%ld", *(this + 4));
    v4 = strlen(__s);
    std::string::append(a2, __s, v4);
    if (*(this + 5))
    {
      sprintf(__s, ":%ld", *(this + 5));
      v5 = strlen(__s);
      std::string::append(a2, __s, v5);
    }

    std::string::append(a2, " in function '", 0xEuLL);
    v6 = this[1];
    v7 = strlen(v6);
    std::string::append(a2, v6, v7);
    std::string::push_back(a2, 39);
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a2, "(unknown source location)");
  }
}

void sub_1001BD7F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::system::error_category::equivalent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != (*(*a1 + 8))(a1))
  {
    return 0;
  }

  v5 = *(a3 + 8);
  if (!v4)
  {
    if (!v5)
    {
      return 1;
    }

    v9 = *(v5 + 8);
    return v9 == 0xB2AB117A257EDFD0;
  }

  if (!v5)
  {
    v9 = *(v4 + 8);
    return v9 == 0xB2AB117A257EDFD0;
  }

  v6 = *(v5 + 8);
  v7 = v5 == v4;
  if (v6)
  {
    return *(v4 + 8) == v6;
  }

  else
  {
    return v7;
  }
}

BOOL boost::system::error_code::equals(boost::system::error_code *this, int a2, const boost::system::error_category *a3)
{
  v3 = *(this + 2);
  if (v3 == 1)
  {
    if (*(a3 + 1) == 0xB2AB117A257EDFD2)
    {
      return *this + 1000 * (*(this + 1) % 0x1FFFF7uLL) == a2;
    }

    return 0;
  }

  if (!v3)
  {
    return !a2 && *(a3 + 1) == 0xB2AB117A257EDFD1;
  }

  if (*this != a2)
  {
    return 0;
  }

  v6 = *(this + 1);
  v7 = *(v6 + 1);
  v8 = v6 == a3;
  if (v7)
  {
    return *(a3 + 1) == v7;
  }

  else
  {
    return v8;
  }
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

boost::filesystem::filesystem_error::impl *boost::filesystem::filesystem_error::impl::impl(boost::filesystem::filesystem_error::impl *this, const boost::filesystem::path *a2, const boost::filesystem::path *a3)
{
  *this = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(this + 3) = *(a2 + 2);
    *(this + 8) = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(this + 6) = *(a3 + 2);
    *(this + 2) = v6;
  }

  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  return this;
}

void sub_1001BDBB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void *boost::system::detail::system_error_category::message@<X0>(int __errnum@<W1>, void *a2@<X8>)
{
  v4 = strerror(__errnum);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = "Unknown error";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v5);
}

const char *boost::system::detail::system_error_category::message(boost::system::detail::system_error_category *this, int __errnum, char *a3, uint64_t a4)
{
  v4 = a3;
  if (a4)
  {
    v5 = a3;
    v6 = a4 - 1;
    if (a4 != 1)
    {
      v7 = strerror(__errnum);
      if (!v7)
      {
        return "Unknown error";
      }

      strncpy(v4, v7, v6);
      v5 = &v4[v6];
    }

    *v5 = 0;
  }

  return v4;
}

uint64_t *boost::intrusive_ptr<boost::filesystem::filesystem_error::impl>::~intrusive_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (*a1 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    if (*(v2 + 79) < 0)
    {
      operator delete(*(v2 + 56));
    }

    if (*(v2 + 55) < 0)
    {
      operator delete(*(v2 + 32));
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    operator delete(v2);
  }

  return a1;
}

double boost::filesystem::directory_entry::get_status@<D0>(boost::filesystem::directory_entry *this@<X0>, boost::system::error_code *a2@<X1>, double *a3@<X8>)
{
  if (*(this + 6))
  {
    v5 = *(this + 7) == 0xFFFF;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = *(this + 8);
    v7 = *(this + 9);
    if ((v6 & 0xFFFFFFFB) == 0 || v7 == 0xFFFF)
    {
      boost::filesystem::detail::status(this, a2, &v10);
      *(this + 3) = v10;
      goto LABEL_14;
    }

    *(this + 6) = v6;
    *(this + 7) = v7;
  }

  if (a2)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

LABEL_14:
  result = *(this + 3);
  *a3 = result;
  return result;
}

int *boost::filesystem::directory_entry::get_symlink_status@<X0>(int *this@<X0>, boost::system::error_code *a2@<X1>, int *a3@<X8>)
{
  v3 = this;
  v5 = this[8];
  v6 = this[9];
  if (v5)
  {
    v7 = v6 == 0xFFFF;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    this = boost::filesystem::detail::symlink_status(this, a2, v8);
    v5 = v8[0];
    v6 = v8[1];
    v3[8] = v8[0];
    v3[9] = v6;
  }

  else if (a2)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    v5 = this[8];
    v6 = this[9];
  }

  *a3 = v5;
  a3[1] = v6;
  return this;
}

DIR *boost::filesystem::detail::dir_itr_close@<X0>(DIR **this@<X0>, void **a2@<X1>, boost::system::error_code *a3@<X8>)
{
  if (*a2)
  {
    free(*a2);
    *a2 = 0;
  }

  result = *this;
  if (*this && (*this = 0, result = closedir(result), result))
  {
    v8 = *__error();

    return boost::system::error_code::error_code(a3, v8, &boost::system::detail::system_cat_holder<void>::instance);
  }

  else
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
  }

  return result;
}

boost::system::error_code *boost::system::error_code::error_code(boost::system::error_code *this, uint64_t a2, const boost::system::error_category *a3)
{
  v4 = a2;
  *this = 0;
  *(this + 1) = 0;
  if (*(a3 + 1) >> 1 == 0x595588BD12BF6FE8)
  {
    v6 = a2 != 0;
  }

  else
  {
    v6 = (*(*a3 + 48))(a3, a2);
  }

  v7 = 2;
  *this = v4;
  if (v6)
  {
    v7 = 3;
  }

  *(this + 1) = a3;
  *(this + 2) = v7;
  return this;
}

boost::filesystem::detail::dir_itr_imp **boost::filesystem::detail::directory_iterator_construct(boost::filesystem::detail::dir_itr_imp **this, std::string *a2, const boost::filesystem::path *a3, boost::filesystem::path *a4, boost::system::error_code *a5)
{
  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v8 = a3;
    if (a4)
    {
      *a4 = 0;
      *(a4 + 1) = 0;
      *(a4 + 2) = 0;
      v39[0] = 0;
      v10 = operator new(0x40uLL, &std::nothrow);
      if (v10)
      {
        *v10 = 0;
        v10[1] = 0;
        *(v10 + 8) = 0;
        *(v10 + 1) = 0u;
        *(v10 + 36) = 0xFFFFLL;
        *(v10 + 11) = 0xFFFF;
        v10[6] = 0;
        v10[7] = 0;
        v36 = v10;
        atomic_fetch_add(v10, 1u);
        v11 = v10;
        v12 = v39[0];
      }

      else
      {
        v12 = 0;
        v11 = 0;
      }

      v36 = v12;
      v39[0] = v11;
      boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v36);
      v14 = v39[0];
      if (!v39[0])
      {
        boost::filesystem::detail::directory_iterator_construct(a4);
        return boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(v39);
      }
    }

    else
    {
      v39[0] = 0;
      v13 = operator new(0x40uLL);
      *v13 = 0;
      v13[1] = 0;
      *(v13 + 8) = 0;
      *(v13 + 1) = 0u;
      *(v13 + 36) = 0xFFFFLL;
      *(v13 + 11) = 0xFFFF;
      v13[6] = 0;
      v13[7] = 0;
      v36 = v13;
      atomic_fetch_add(v13, 1u);
      v36 = v39[0];
      v39[0] = v13;
      boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&v36);
      v14 = v39[0];
    }

    memset(&v39[1], 0, 15);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = a2->__r_.__value_.__r.__words[0];
    }

    v18 = opendir(v15);
    *(v14 + 6) = v18;
    if (v18)
    {
      v19 = 1;
      v20 = 46;
    }

    else
    {
      v21 = *__error();
      v36 = 0;
      if (qword_1004E53B8 >> 1 == 0x595588BD12BF6FE8)
      {
        v22 = v21 != 0;
      }

      else
      {
        v22 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v21);
      }

      v23 = 2;
      LODWORD(v36) = v21;
      if (v22)
      {
        v23 = 3;
      }

      v37 = &boost::system::detail::system_cat_holder<void>::instance;
      v38 = v23;
      if (v23)
      {
        __str.__r_.__value_.__r.__words[0] = 13;
        __str.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
        v28 = boost::system::operator==(&v36, &__str);
        if ((v8 & 1) == 0 || (v28 & 1) == 0)
        {
          v30 = v36;
          if (v38 == 1)
          {
            v30 = v36 + 1000 * (v37 % 0x1FFFF7);
          }

          if (v30)
          {
            boost::filesystem::emit_error(v30, a2, a4, "boost::filesystem::directory_iterator::construct", v29);
          }

          else if (a4)
          {
            *a4 = 0;
            *(a4 + 1) = 0;
            *(a4 + 2) = 0;
          }
        }

        return boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(v39);
      }

      v20 = 0;
      v19 = 0;
    }

    v24 = v39[0];
    if (*(v39[0] + 6))
    {
      v25 = *this;
      *this = v39[0];
      v39[0] = v25;
      __p = v20;
      *v33 = v39[1];
      *&v33[7] = *(&v39[1] + 7);
      v34 = v19;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
      }

      else
      {
        __str = *a2;
      }

      boost::filesystem::path::append_v4(&__str, &__p, v16, v17);
      std::string::operator=((v24 + 8), &__str);
      *&v27 = 0xFFFF00000000;
      *(&v27 + 1) = 0xFFFF00000000;
      *(v24 + 2) = v27;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if ((v34 & 0x80000000) == 0)
      {
        if (!v18)
        {
          return boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(v39);
        }

        goto LABEL_32;
      }

      operator delete(__p);
      if (v18)
      {
LABEL_32:
        boost::filesystem::detail::directory_iterator_increment(this, a4, v26);
      }
    }

    return boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(v39);
  }

  return boost::filesystem::emit_error(2, a2, a4, "boost::filesystem::directory_iterator::construct", a5);
}

void sub_1001BE458(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, boost::filesystem::detail::dir_itr_imp *a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (v19)
    {
      if (qword_1004E53D0 >> 1 == 0x595588BD12BF6FE8 || (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 12))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      *v19 = 12;
      v19[1] = &boost::system::detail::generic_cat_holder<void>::instance;
      v19[2] = v23;
      a19 = *v20;
      *v20 = 0;
      boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&a19);
      __cxa_end_catch();
      JUMPOUT(0x1001BE370);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x1001BE448);
}

void sub_1001BE540(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1001BE450);
}

void boost::filesystem::detail::directory_iterator_increment(boost::filesystem::detail *this, boost::filesystem::directory_iterator *a2, boost::system::error_code *a3)
{
  if (a2)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  memset(&v33, 0, sizeof(v33));
  v34 = 0;
  v35 = 0;
  v5 = *this;
  v6 = *(*this + 48);
  while (1)
  {
    *v28 = 0;
    *__error() = 0;
    v7 = sysconf(91);
    if (v7 < 0)
    {
      *__error() = 0;
      v13 = readdir(v6);
      *v28 = v13;
      if (v13)
      {
LABEL_14:
        std::string::__assign_external(&v33, v13->d_name);
        memset(&v32, 0, sizeof(v32));
        v34 = 0;
        v35 = 0 >> 96;
        goto LABEL_15;
      }

      v12 = *__error();
      if (v12)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v8 = *(v5 + 56);
      if (!v8)
      {
        v21 = malloc(v20 + 25);
        *(v5 + 56) = v21;
        if (!v21)
        {
          v12 = 12;
LABEL_31:
          *&v32.__r_.__value_.__l.__data_ = 0uLL;
          if (qword_1004E53B8 >> 1 == 0x595588BD12BF6FE8 || (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v12))
          {
            v14 = 3;
          }

          else
          {
            v14 = 2;
          }

          LODWORD(v32.__r_.__value_.__l.__data_) = v12;
          v32.__r_.__value_.__l.__size_ = &boost::system::detail::system_cat_holder<void>::instance;
          v32.__r_.__value_.__r.__words[2] = v14;
          goto LABEL_9;
        }

        v8 = v21;
        bzero(v21, v20 + 25);
      }

      v12 = readdir_r(v6, v8, v28);
      if (v12)
      {
        goto LABEL_31;
      }
    }

    v13 = *v28;
    if (*v28)
    {
      goto LABEL_14;
    }

    boost::filesystem::detail::dir_itr_close((v5 + 48), (v5 + 56), &v32);
    LODWORD(v12) = v32.__r_.__value_.__l.__data_;
    v14 = v32.__r_.__value_.__r.__words[2];
LABEL_9:
    v34 = *(v32.__r_.__value_.__r.__words + 4);
    v35 = HIDWORD(v32.__r_.__value_.__r.__words[1]);
    if ((v14 & 1) != 0 && (v14 != 1 || v12))
    {
      v31 = *this;
      v26 = v31;
      *this = 0;
      boost::filesystem::path::parent_path((v26 + 8), v9, v10, v11, &v32);
      if (!a2)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        *v28 = v12;
        *&v28[4] = v34;
        v29 = v35;
        v30 = v14;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::directory_iterator::operator++", &v32, v28);
      }

      *a2 = v12;
      *(a2 + 4) = v34;
      *(a2 + 3) = v35;
      *(a2 + 2) = v14;
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      v22 = &v31;
      goto LABEL_42;
    }

LABEL_15:
    v5 = *this;
    v6 = *(*this + 48);
    if (!v6)
    {
      v32.__r_.__value_.__r.__words[0] = *this;
      *this = 0;
      v22 = &v32;
LABEL_42:
      boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(v22);
      goto LABEL_46;
    }

    v15 = v33.__r_.__value_.__r.__words[0];
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v33;
    }

    else
    {
      v16 = v33.__r_.__value_.__r.__words[0];
    }

    if (v16->__r_.__value_.__s.__data_[0] != 46)
    {
      break;
    }

    v17 = (v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v33 : v33.__r_.__value_.__r.__words[0];
    v18 = v17->__r_.__value_.__s.__data_[1];
    if (v18)
    {
      if (v18 != 46)
      {
        break;
      }

      v19 = (v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v33 : v33.__r_.__value_.__r.__words[0];
      if (v19->__r_.__value_.__s.__data_[2])
      {
        break;
      }
    }
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    v32 = v33;
  }

  boost::filesystem::path::remove_filename((v5 + 8), v15, v10, v11);
  boost::filesystem::path::append_v4((v5 + 8), &v32, v23, v24);
  *&v25 = 0xFFFF00000000;
  *(&v25 + 1) = 0xFFFF00000000;
  *(v5 + 32) = v25;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

LABEL_46:
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }
}