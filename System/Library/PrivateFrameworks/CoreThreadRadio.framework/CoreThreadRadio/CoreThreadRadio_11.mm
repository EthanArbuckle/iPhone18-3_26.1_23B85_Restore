uint64_t parse_string_into_data(_BYTE *a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a3;
  if (*a3)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && a2 != 0)
  {
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v10 = 0;
    while (1)
    {
      v12 = v7 + 1;
      v13 = __tolower(v3);
      if ((v13 - 48) < 0xA || (v13 - 97) <= 5)
      {
        if ((v13 - 48) >= 0xA)
        {
          v15 = v13 + 9;
        }

        else
        {
          v15 = v13;
        }

        *v9 = 16 * v15;
        v10 = (v10 + 1);
        v16 = *v12;
        if (!*v12)
        {
          return v10;
        }

        --v8;
        v12 = v7 + 2;
        v17 = __tolower(v16);
        v18 = v17 - 48;
        if ((v17 - 48) < 0xA || (v17 - 97) <= 5)
        {
          if (v18 >= 0xA)
          {
            LOBYTE(v18) = v17 - 87;
          }

          *v9++ |= v18;
        }
      }

      v3 = *v12;
      if (*v12)
      {
        v11 = v8 == 0;
      }

      else
      {
        v11 = 1;
      }

      v7 = v12;
      if (v11)
      {
        return v10;
      }
    }
  }

  return 0;
}

uint64_t encode_data_into_string(unsigned __int8 *a1, uint64_t a2, _BYTE *a3, unint64_t a4, int a5)
{
  v5 = 0;
  if (a2 && a4 >= 3)
  {
    LODWORD(v5) = 0;
    v6 = a2 - 1;
    do
    {
      v7 = *a1++;
      *a3 = a0123456789abcd_0[v7 >> 4];
      --a5;
      v8 = a3 + 2;
      a3[1] = a0123456789abcd_0[v7 & 0xF];
      a4 -= 2;
      v5 = (v5 + 2);
      if (v6-- == 0)
      {
        break;
      }

      a3 += 2;
    }

    while (a4 > 2);
  }

  else
  {
    v8 = a3;
  }

  if (a5 >= 1 && a4 >= 3)
  {
    if ((a4 - 3) >> 1 >= (a5 - 1))
    {
      v10 = (a5 - 1);
    }

    else
    {
      v10 = (a4 - 3) >> 1;
    }

    memset(v8, 48, 2 * v10 + 2);
    v8 += 2 * v10 + 2;
    v5 = (v5 + 2 * v10 + 2);
  }

  *v8 = 0;
  return v5;
}

unint64_t strtoBOOL(const char *a1)
{
  v1 = *a1 - 70;
  if (v1 < 0x34 && ((0x8410100084101uLL >> v1) & 1) != 0)
  {
    return (0xFFEFEFFFFFEFEuLL >> v1) & 1;
  }

  else
  {
    return strtol(a1, 0, 0) != 0;
  }
}

uint64_t strtomask_uint32(const char *a1)
{
  v1 = strdup(a1);
  v2 = strtok(v1, ",");
  if (v2)
  {
    v3 = v2;
    LODWORD(v4) = 0;
    while (1)
    {
      v5 = strchr(v3, 45);
      if (v5)
      {
        *v5 = 0;
        v6 = v5 + 1;
        v7 = atoi(v3);
        v8 = atoi(v6);
        if (v7 >= v8)
        {
          v9 = v8;
        }

        else
        {
          v9 = v7;
        }

        if (v7 <= v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = v7;
        }

        v11 = v10 + 1;
        v12 = v11 - v9;
        if (v11 - v9 >= 8)
        {
          v13 = v9 + (v12 & 0xFFFFFFF8);
          v14 = 0uLL;
          v15 = v4;
          v16 = vaddq_s32(vdupq_n_s32(v9), xmmword_100447330);
          v17 = v12 & 0xFFFFFFF8;
          v18.i64[0] = 0x400000004;
          v18.i64[1] = 0x400000004;
          v19.i64[0] = 0x100000001;
          v19.i64[1] = 0x100000001;
          v20.i64[0] = 0x800000008;
          v20.i64[1] = 0x800000008;
          do
          {
            v15 = vorrq_s8(v15, vshlq_u32(v19, v16));
            v14 = vorrq_s8(v14, vshlq_u32(v19, vaddq_s32(v16, v18)));
            v16 = vaddq_s32(v16, v20);
            v17 -= 8;
          }

          while (v17);
          v21 = vorrq_s8(v14, v15);
          v22 = vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
          v4 = (v22.i32[0] | v22.i32[1]);
          if (v12 == (v12 & 0xFFFFFFF8))
          {
            goto LABEL_4;
          }
        }

        else
        {
          v13 = v9;
        }

        do
        {
          v4 = v4 | (1 << v13++);
        }

        while (v11 != v13);
      }

      else
      {
        v4 = (1 << strtol(v3, 0, 0)) | v4;
      }

LABEL_4:
      v3 = strtok(0, ",");
      if (!v3)
      {
        goto LABEL_20;
      }
    }
  }

  v4 = 0;
LABEL_20:
  free(v1);
  return v4;
}

uint64_t strtologmask(const char *a1, uint64_t a2)
{
  result = strtol(a1, 0, 0);
  if (!result)
  {
    if (strcasestr(a1, "all"))
    {
      if (strcasestr(a1, "-all"))
      {
        a2 = 0;
      }

      else
      {
        a2 = 0xFFFFFFFFLL;
      }
    }

    if (strcasestr(a1, "emerg"))
    {
      if (!strcasestr(a1, "-emerg"))
      {
        a2 = a2 | 1;
        if (!strcasestr(a1, "alert"))
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      a2 = a2 & 0xFFFFFFFE;
    }

    if (!strcasestr(a1, "alert"))
    {
      goto LABEL_15;
    }

LABEL_10:
    if (strcasestr(a1, "-alert"))
    {
      a2 = a2 & 0xFFFFFFFD;
    }

    else
    {
      a2 = a2 | 2;
    }

LABEL_15:
    if (strcasestr(a1, "crit"))
    {
      if (!strcasestr(a1, "-crit"))
      {
        a2 = a2 | 4;
        if (!strcasestr(a1, "err"))
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }

      a2 = a2 & 0xFFFFFFFB;
    }

    if (!strcasestr(a1, "err"))
    {
      goto LABEL_24;
    }

LABEL_19:
    if (strcasestr(a1, "-err"))
    {
      a2 = a2 & 0xFFFFFFF7;
    }

    else
    {
      a2 = a2 | 8;
    }

LABEL_24:
    if (strcasestr(a1, "warn"))
    {
      if (!strcasestr(a1, "-warn"))
      {
        a2 = a2 | 0x10;
        if (!strcasestr(a1, "notice"))
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }

      a2 = a2 & 0xFFFFFFEF;
    }

    if (!strcasestr(a1, "notice"))
    {
      goto LABEL_33;
    }

LABEL_28:
    if (strcasestr(a1, "-notice"))
    {
      a2 = a2 & 0xFFFFFFDF;
    }

    else
    {
      a2 = a2 | 0x20;
    }

LABEL_33:
    if (strcasestr(a1, "info"))
    {
      if (!strcasestr(a1, "-info"))
      {
        a2 = a2 | 0x40;
        if (strcasestr(a1, "debug"))
        {
LABEL_37:
          if (strcasestr(a1, "-debug"))
          {
            return a2 & 0xFFFFFF7F;
          }

          else
          {
            return a2 | 0x80;
          }
        }

        return a2;
      }

      a2 = a2 & 0xFFFFFFBF;
    }

    if (strcasestr(a1, "debug"))
    {
      goto LABEL_37;
    }

    return a2;
  }

  return result;
}

BOOL buffer_is_nonzero(unsigned __int8 *a1, uint64_t a2)
{
  do
  {
    v2 = a2;
    if (a2-- == 0)
    {
      break;
    }
  }

  while (!*a1++);
  return v2 != 0;
}

BOOL is_hex(unsigned __int8 *a1, uint64_t a2)
{
  do
  {
    v2 = a2;
    if (!a2)
    {
      break;
    }

    --a2;
    v3 = *a1++;
  }

  while ((_DefaultRuneLocale.__runetype[v3] & 0x10000) != 0);
  return v2 == 0;
}

uint64_t is_uppercase_or_digit(char *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v3 = a2 - 1;
  do
  {
    v4 = *a1;
    if (*a1 < 0)
    {
      v5 = __maskrune(*a1, 0x8000uLL);
    }

    else
    {
      v5 = _DefaultRuneLocale.__runetype[*a1] & 0x8000;
    }

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = (v4 - 48) >= 0xA;
    }

    result = !v6;
    v6 = v3-- != 0;
    v8 = v6;
    if (result != 1)
    {
      break;
    }

    ++a1;
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t OpenFile1M(const char **a1, int *a2)
{
  v4 = open(a1[1], 131078);
  v5 = v4;
  if (v4 == -1)
  {
    perror("open uart failed");
    return v5;
  }

  fcntl(v4, 4, 4);
  tcflush(v5, 3);
  v6 = fcntl(v5, 3);
  fcntl(v5, 4, v6 | 4u);
  v21 = 0;
  setsockopt(v5, 0xFFFF, 4130, &v21, 4u);
  if (tcgetattr(v5, &v29) || (memset(v29.c_cc, 255, sizeof(v29.c_cc)), *&v29.c_cflag = xmmword_100447340, v29.c_iflag = 0, v29.c_oflag = 0, cfmakeraw(&v29), tcsetattr(v5, 0, &v29)))
  {
    OpenFile1M();
  }

  Value = ot::Url::Url::GetValue(a1, "uart-baudrate", 0);
  if (!Value)
  {
    v8 = *a2;
    if (*a2 == 115200)
    {
      goto LABEL_9;
    }

LABEL_8:
    if (v8 != 1000000)
    {
      strrchr[abi:ne200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/Rcp/host-ot-adaptation/RcpConfigHelper.cpp", 47);
      otExitCodeToString(2);
      otLogCritPlat("%s() at %s:%d: %s", v14, v15, v16, v17, v18, v19, v20, "OpenFile1M");
      handle_daemon_exit();
      exit(2);
    }

    goto LABEL_9;
  }

  v8 = atoi(Value);
  *a2 = v8;
  if (v8 != 115200)
  {
    goto LABEL_8;
  }

LABEL_9:
  v22 = v8;
  v9 = ioctl(v5, 0x80085402uLL, &v22);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v11 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = strerror(v9);
      *buf = 67109634;
      v24 = 1000000;
      v25 = 2080;
      v26 = v12;
      v27 = 1024;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "IOCTL: baud rate(with CTS/RTS) [%d], %s(%u)", buf, 0x18u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    FaultInfo::setControlInterface();
  }

  return v5;
}

uint64_t encode_data_into_string_(const unsigned __int8 *a1, uint64_t a2, char *a3, unint64_t a4, int a5)
{
  v5 = 0;
  if (a2 && a4 >= 3)
  {
    LODWORD(v5) = 0;
    v6 = a2 - 1;
    do
    {
      v7 = *a1++;
      *a3 = a0123456789abcd_0[v7 >> 4];
      --a5;
      v8 = a3 + 2;
      a3[1] = a0123456789abcd_0[v7 & 0xF];
      a4 -= 2;
      v5 = (v5 + 2);
      if (v6-- == 0)
      {
        break;
      }

      a3 += 2;
    }

    while (a4 > 2);
  }

  else
  {
    v8 = a3;
  }

  if (a5 >= 1 && a4 >= 3)
  {
    if ((a4 - 3) >> 1 >= (a5 - 1))
    {
      v10 = (a5 - 1);
    }

    else
    {
      v10 = (a4 - 3) >> 1;
    }

    memset(v8, 48, 2 * v10 + 2);
    v8 += 2 * v10 + 2;
    v5 = (v5 + 2 * v10 + 2);
  }

  *v8 = 0;
  return v5;
}

double ot::Spinel::SpinelDriver::SpinelDriver(ot::Spinel::SpinelDriver *this)
{
  v1 = (this + 0x2000);
  v2 = ot::Spinel::Logger::Logger(this, "SpinelDriver");
  v2[1027] = v2 + 18;
  *(v2 + 10) = 0;
  v2[1] = v2 + 22;
  *(v2 + 8) = 8188;
  v2[1029] = 0;
  *(v2 + 2060) = 0;
  v1[26] = -256;
  v1[28] = 0;
  v2[1035] = -1;
  v1[314] = 0;
  result = 0.0;
  *(v2 + 518) = 0u;
  *(v2 + 519) = 0u;
  *(v2 + 520) = 0u;
  *(v2 + 521) = 0u;
  *(v2 + 522) = 0u;
  *(v2 + 523) = 0u;
  *(v2 + 524) = 0u;
  *(v2 + 525) = 0u;
  *(v2 + 4208) = 0;
  v2[1032] = ot::Spinel::SpinelDriver::HandleInitialFrame;
  v2[1034] = v2;
  return result;
}

{
  v1 = (this + 0x2000);
  v2 = ot::Spinel::Logger::Logger(this, "SpinelDriver");
  v2[1027] = v2 + 18;
  *(v2 + 10) = 0;
  v2[1] = v2 + 22;
  *(v2 + 8) = 8188;
  v2[1029] = 0;
  *(v2 + 2060) = 0;
  v1[26] = -256;
  v1[28] = 0;
  v2[1035] = -1;
  v1[314] = 0;
  result = 0.0;
  *(v2 + 518) = 0u;
  *(v2 + 519) = 0u;
  *(v2 + 520) = 0u;
  *(v2 + 521) = 0u;
  *(v2 + 522) = 0u;
  *(v2 + 523) = 0u;
  *(v2 + 524) = 0u;
  *(v2 + 525) = 0u;
  *(v2 + 4208) = 0;
  v2[1032] = ot::Spinel::SpinelDriver::HandleInitialFrame;
  v2[1034] = v2;
  return result;
}

void ot::Spinel::SpinelDriver::HandleTransportError(ot::Spinel::SpinelDriver *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  otLogNotePlat("SpinelDriver::%s status= %d gPciStatus=%d\n", a2, a3, a4, a5, a6, a7, a8, "HandleTransportError");
}

{
  otLogNotePlat("SpinelDriver::%s status= %d gPciStatus=%d\n", a2, a3, a4, a5, a6, a7, a8, "HandleTransportError");
}

uint64_t ot::Spinel::SpinelDriver::Init(ot::Spinel::SpinelDriver *this, ot::Spinel::SpinelInterface *a2, int a3, char *a4, int a5)
{
  *(this + 1029) = a2;
  *(this + 1027) = this + 18;
  *(this + 10) = 0;
  *(this + 1) = this + 22;
  *(this + 8) = 8188;
  v9 = (*(*a2 + 8))(a2, ot::Spinel::SpinelDriver::HandleReceivedFrame, this, this + 8, ot::Spinel::SpinelDriver::HandleTransportError);
  if (v9)
  {
    v58 = v9;
    strrchr[abi:ne200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/spinel_driver.cpp", 47);
    if (v58 == 7)
    {
      v59 = 2;
    }

    else
    {
      v59 = 1;
    }

    goto LABEL_34;
  }

  if (!a4 || a5 != 1)
  {
    strrchr[abi:ne200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/spinel_driver.cpp", 47);
    otExitCodeToString(2);
    otLogCritPlat("%s() at %s:%d: %s", v67, v68, v69, v70, v71, v72, v73, "Init");
    handle_daemon_exit();
    exit(2);
  }

  v16 = *(this + 4124);
  if (v16 == 1)
  {
    strrchr[abi:ne200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/spinel_driver.cpp", 47);
    otExitCodeToString(1);
LABEL_27:
    otLogCritPlat("%s() at %s:%d: %s", v49, v50, v51, v52, v53, v54, v55, "Init");
    handle_daemon_exit();
    exit(1);
  }

  v17 = *a4;
  *(this + 4124) = v16 + 1;
  *(this + v16 + 8246) = v17;
  *(this + 8245) = *a4;
  ot::Spinel::SpinelDriver::ResetCoprocessor(this, a3, v10, v11, v12, v13, v14, v15);
  if (otPlatRadioGetRcp2Vendor2EnabledVerify())
  {
    ot::Spinel::SpinelDriver::VendorInit(this);
  }

  v25 = ot::Spinel::SpinelDriver::CheckSpinelVersion(this, v18, v19, v20, v21, v22, v23, v24);
  if (v25)
  {
    v74 = v25;
    strrchr[abi:ne200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/spinel_driver.cpp", 47);
    if (v74 == 7)
    {
      v59 = 2;
    }

    else
    {
      v59 = 1;
    }

LABEL_34:
    otExitCodeToString(v59);
    goto LABEL_49;
  }

  v31 = spinel_datatype_pack(v75, 0x514u, "Cii", v26, v27, v28, v29, v30, (16 * *(this + 8245)) | 0x81u);
  if ((v31 - 1) > 0x513)
  {
    v56 = 3;
LABEL_41:
    strrchr[abi:ne200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/spinel_driver.cpp", 47);
    if (v56 == 7)
    {
      v59 = 2;
    }

    else
    {
      v59 = 1;
    }

    goto LABEL_48;
  }

  v32 = v31;
  v33 = (*(**(this + 1029) + 24))(*(this + 1029), v75, v31);
  if (v33 || (ot::Spinel::Logger::LogSpinelFrame(this, v75, v32, 1), *(this + 8244) = 1, *(this + 2060) = 2, (v33 = ot::Spinel::SpinelDriver::WaitResponse(this)) != 0))
  {
    v56 = v33;
    goto LABEL_41;
  }

  v39 = spinel_datatype_pack(v75, 0x514u, "Cii", v34, v35, v36, v37, v38, (16 * *(this + 8245)) | 0x81u);
  if ((v39 - 1) > 0x513)
  {
    v57 = 3;
LABEL_45:
    strrchr[abi:ne200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/spinel_driver.cpp", 47);
    if (v57 == 7)
    {
      v59 = 2;
    }

    else
    {
      v59 = 1;
    }

LABEL_48:
    otExitCodeToString(v59);
LABEL_49:
    otLogCritPlat("%s() at %s:%d: %s", v60, v61, v62, v63, v64, v65, v66, "Init");
    handle_daemon_exit();
    exit(v59);
  }

  v40 = v39;
  v41 = (*(**(this + 1029) + 24))(*(this + 1029), v75, v39);
  if (v41 || (ot::Spinel::Logger::LogSpinelFrame(this, v75, v40, 1), *(this + 8244) = 1, *(this + 2060) = 5, (v41 = ot::Spinel::SpinelDriver::WaitResponse(this)) != 0))
  {
    v57 = v41;
    goto LABEL_45;
  }

  if (!*(this + 4410))
  {
LABEL_26:
    ot::Spinel::Logger::LogCrit1(this, "The coprocessor mode is unknown!");
    strrchr[abi:ne200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/spinel_driver.cpp", 47);
    otExitCodeToString(1);
    goto LABEL_27;
  }

  v42 = (this + 8420);
  v43 = 4 * *(this + 4410);
  v44 = v43;
  v45 = (this + 8420);
  do
  {
    if (*v45 == 34)
    {
      return 1;
    }

    ++v45;
    v44 -= 4;
  }

  while (v44);
  v46 = 4 * *(this + 4410);
  v47 = (this + 8420);
  while (*v47 != 32)
  {
    ++v47;
    v46 -= 4;
    if (!v46)
    {
      while (*v42 != 33)
      {
        ++v42;
        v43 -= 4;
        if (!v43)
        {
          goto LABEL_26;
        }
      }

      return 2;
    }
  }

  return 2;
}

void ot::Spinel::SpinelDriver::ResetCoprocessor(ot::Spinel::SpinelDriver *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = this + 0x2000;
  if ((*(this + 8288) & 1) == 0)
  {
    *(this + 2060) = 0;
    if (!a2 || (v10 = spinel_datatype_pack(v19, 0x514u, "CiC", a4, a5, a6, a7, a8, (16 * *(this + 8245)) | 0x80u), (v10 - 1) > 0x513) || (v11 = v10, ot::Spinel::Logger::LogNote1(this, "[->RCP] PROP_VALUE_SET(RESET) Type(%d)", 2), (*(**(this + 1029) + 24))(*(this + 1029), v19, v11)) || (ot::Spinel::Logger::LogSpinelFrame(this, v19, v11, 1), ot::Spinel::SpinelDriver::WaitResponse(this)))
    {
      if ((*(**(this + 1029) + 64))(*(this + 1029)))
      {
        ot::Spinel::Logger::LogInfo1(this, "co-processor self reset successfully");
        return;
      }

      if (!ot::Spinel::SpinelDriver::WaitResponse(this))
      {
        ot::Spinel::Logger::LogInfo1(this, "Hardware reset co-processor successfully");
        return;
      }
    }

    else if (v8[96] == 1)
    {
      ot::Spinel::Logger::LogCrit1(this, "Software reset co-processor successfully");
      return;
    }

    ot::Spinel::Logger::LogCrit1(this, "Failed to reset co-processor!");
    strrchr[abi:ne200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/spinel_driver.cpp", 47);
    otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", v12, v13, v14, v15, v16, v17, v18, "ResetCoprocessor");
    handle_daemon_exit();
    exit(1);
  }
}

uint64_t ot::Spinel::SpinelDriver::VendorInit(const char **this)
{
  result = otPlatRadioGetRcp2Vendor2EnabledVerify();
  if (result)
  {
    ot::Spinel::Logger::LogNote1(this, "%s: Getting SPINEL_PROP_VENDOR_INITIALIZED", "VendorInit");
    result = ot::Spinel::SpinelDriver::GetVendorInitialized(this);
    if (result)
    {
      v7 = result;
      strrchr[abi:ne200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/spinel_driver.cpp", 47);
      if (v7 == 7)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      if (*(this + 8417))
      {
        return result;
      }

      ot::Spinel::Logger::LogNote1(this, "%s: Setting SPINEL_PROP_VENDOR_INITIALIZED", "VendorInit");
      if (!otPlatRadioGetRcp2Vendor2EnabledVerify())
      {
        goto LABEL_8;
      }

      v6 = ot::Spinel::SpinelDriver::SendCommandWrapper(this, 3, 15519, 1, "b", v3, v4, v5, 1);
      if (v6 || (*(this + 8244) = 1, *(this + 2060) = 15519, (v6 = ot::Spinel::SpinelDriver::WaitResponse(this)) != 0))
      {
        v9 = v6;
        strrchr[abi:ne200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/spinel_driver.cpp", 47);
        if (v9 == 7)
        {
          v8 = 2;
        }

        else
        {
          v8 = 1;
        }

        goto LABEL_20;
      }

      if ((*(this + 8417) & 1) == 0)
      {
        *(this + 2060) = 15519;
        result = sleep(4u);
        if (*(this + 8417))
        {
          return result;
        }
      }

      else
      {
LABEL_8:
        result = sleep(4u);
        if (*(this + 8417))
        {
          return result;
        }
      }

      ot::Spinel::Logger::LogNote1(this, "%s: Getting SPINEL_PROP_VENDOR_INITIALIZED", "VendorInit");
      result = ot::Spinel::SpinelDriver::GetVendorInitialized(this);
      if (!result)
      {
        if ((*(this + 8417) & 1) == 0)
        {
          strrchr[abi:ne200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/spinel_driver.cpp", 47);
          otExitCodeToString(1);
          otLogCritPlat("%s() at %s:%d: %s", v18, v19, v20, v21, v22, v23, v24, "VendorInit");
          handle_daemon_exit();
          exit(1);
        }

        return result;
      }

      v17 = result;
      strrchr[abi:ne200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/spinel_driver.cpp", 47);
      if (v17 == 7)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }
    }

LABEL_20:
    otExitCodeToString(v8);
    otLogCritPlat("%s() at %s:%d: %s", v10, v11, v12, v13, v14, v15, v16, "VendorInit");
    handle_daemon_exit();
    exit(v8);
  }

  return result;
}

uint64_t ot::Spinel::SpinelDriver::CheckSpinelVersion(ot::Spinel::SpinelDriver *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = this + 0x2000;
  v10 = spinel_datatype_pack(v21, 0x514u, "Cii", a4, a5, a6, a7, a8, (16 * *(this + 8245)) | 0x81u);
  if ((v10 - 1) > 0x513)
  {
    return 3;
  }

  v11 = v10;
  result = (*(**(this + 1029) + 24))(*(this + 1029), v21, v10);
  if (!result)
  {
    ot::Spinel::Logger::LogSpinelFrame(this, v21, v11, 1);
    v9[52] = 1;
    *(this + 2060) = 1;
    result = ot::Spinel::SpinelDriver::WaitResponse(this);
    if (!result)
    {
      v13 = *(this + 2071);
      if (*(this + 2070) != 4 || v13 != 3)
      {
        ot::Spinel::Logger::LogCrit1(this, "Spinel version mismatch - Posix:%d.%d, co-processor:%d.%d", 4, 3, *(this + 2070), v13);
        strrchr[abi:ne200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/spinel_driver.cpp", 47);
        otExitCodeToString(3);
        otLogCritPlat("%s() at %s:%d: %s", v14, v15, v16, v17, v18, v19, v20, "CheckSpinelVersion");
        handle_daemon_exit();
        exit(3);
      }

      return 0;
    }
  }

  return result;
}

uint64_t ot::Spinel::SpinelDriver::GetCoprocessorVersion(ot::Spinel::SpinelDriver *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = this + 0x2000;
  v10 = spinel_datatype_pack(v13, 0x514u, "Cii", a4, a5, a6, a7, a8, (16 * *(this + 8245)) | 0x81u);
  if ((v10 - 1) > 0x513)
  {
    return 3;
  }

  v11 = v10;
  result = (*(**(this + 1029) + 24))(*(this + 1029), v13, v10);
  if (!result)
  {
    ot::Spinel::Logger::LogSpinelFrame(this, v13, v11, 1);
    v9[52] = 1;
    *(this + 2060) = 2;
    return ot::Spinel::SpinelDriver::WaitResponse(this);
  }

  return result;
}

uint64_t ot::Spinel::SpinelDriver::GetCoprocessorCaps(ot::Spinel::SpinelDriver *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = this + 0x2000;
  v10 = spinel_datatype_pack(v13, 0x514u, "Cii", a4, a5, a6, a7, a8, (16 * *(this + 8245)) | 0x81u);
  if ((v10 - 1) > 0x513)
  {
    return 3;
  }

  v11 = v10;
  result = (*(**(this + 1029) + 24))(*(this + 1029), v13, v10);
  if (!result)
  {
    ot::Spinel::Logger::LogSpinelFrame(this, v13, v11, 1);
    v9[52] = 1;
    *(this + 2060) = 5;
    return ot::Spinel::SpinelDriver::WaitResponse(this);
  }

  return result;
}

uint64_t ot::Spinel::SpinelDriver::GetCoprocessorType(ot::Spinel::SpinelDriver *this)
{
  if (!*(this + 4410))
  {
    return 0;
  }

  v1 = (this + 8420);
  v2 = 4 * *(this + 4410);
  v3 = v2;
  v4 = (this + 8420);
  do
  {
    if (*v4 == 34)
    {
      return 1;
    }

    ++v4;
    v3 -= 4;
  }

  while (v3);
  v5 = 4 * *(this + 4410);
  for (i = (this + 8420); *i != 32; ++i)
  {
    v5 -= 4;
    if (!v5)
    {
      while (*v1 != 33)
      {
        ++v1;
        v2 -= 4;
        if (!v2)
        {
          return 0;
        }
      }

      return 2;
    }
  }

  return 2;
}

double ot::Spinel::SpinelDriver::Deinit(ot::Spinel::SpinelDriver *this)
{
  v1 = (this + 0x2000);
  v2 = ot::Spinel::Logger::Logger(this, "SpinelDriver");
  v2[1027] = v2 + 18;
  *(v2 + 10) = 0;
  v2[1] = v2 + 22;
  *(v2 + 8) = 8188;
  v2[1029] = 0;
  *(v2 + 2060) = 0;
  v1[26] = -256;
  v1[28] = 0;
  v2[1035] = -1;
  v1[314] = 0;
  result = 0.0;
  *(v2 + 518) = 0u;
  *(v2 + 519) = 0u;
  *(v2 + 520) = 0u;
  *(v2 + 521) = 0u;
  *(v2 + 522) = 0u;
  *(v2 + 523) = 0u;
  *(v2 + 524) = 0u;
  *(v2 + 525) = 0u;
  *(v2 + 4208) = 0;
  v2[1032] = ot::Spinel::SpinelDriver::HandleInitialFrame;
  v2[1034] = v2;
  return result;
}

uint64_t ot::Spinel::SpinelDriver::SendReset(ot::Spinel::SpinelDriver *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = spinel_datatype_pack(v13, 0x514u, "CiC", a4, a5, a6, a7, a8, (16 * *(this + 8245)) | 0x80u);
  if ((v10 - 1) > 0x513)
  {
    return 3;
  }

  v11 = v10;
  ot::Spinel::Logger::LogNote1(this, "[->RCP] PROP_VALUE_SET(RESET) Type(%d)", a2);
  result = (*(**(this + 1029) + 24))(*(this + 1029), v13, v11);
  if (!result)
  {
    ot::Spinel::Logger::LogSpinelFrame(this, v13, v11, 1);
    return 0;
  }

  return result;
}

uint64_t ot::Spinel::SpinelDriver::WaitResponse(const char **this)
{
  v2 = (this + 1024);
  v3 = otPlatTimeGet() + 2000000;
  ot::Spinel::Logger::LogDebg1(this, "Waiting response: key=%lu", *(this + 2060));
  while (1)
  {
    if (gSystemDieNow == 1)
    {
      busy_wait_for_shutdown();
    }

    v4 = otPlatTimeGet();
    if (v3 <= v4 || (*(*this[1029] + 32))(this[1029], v3 - v4))
    {
      break;
    }

    if ((v2[52] & 1) == 0 && v2[96] == 1)
    {
      result = 0;
      *(this + 2060) = 0;
      return result;
    }
  }

  ot::Spinel::Logger::LogWarn1(this, "Wait for response timeout gPciStatus=%d", gPciStatus);
  if (otPlatRadioGetRcp2Vendor2EnabledVerify() && otPlatRadioGetCoreDumpTXFailureEnabled())
  {
    ot::Spinel::Logger::LogDebg1(this, "%s Trigger CoreDump", "WaitResponse");
    rcp_hard_reset();
  }

  if (!gPciStatus)
  {
    return 28;
  }

  ot::Spinel::Logger::LogWarn1(this, "Exit response timeout due to PCI failure %d\n", gPciStatus);
  result = 28;
  *(this + 2060) = 0;
  return result;
}

void ot::Spinel::SpinelDriver::ProcessFrameQueue(ot::Spinel::SpinelDriver *this)
{
  v16 = 0;
  v15 = 0;
  *(this + 8224) = 0;
  while (!ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetNextSavedFrame(this + 8, &v16, &v15))
  {
    (*(this + 1033))(v16, v15, *(this + 1034));
  }

  if (*(this + 8224) == 1)
  {
    *(this + 8224) = 0;
    *(this + 1027) = this + 18;
    *(this + 10) = 0;
    *(this + 1) = this + 22;
    *(this + 8) = 8188;
    otLogNotePlat("[ProcessFrameQueue] Interrupted by Reset.\n", v2, v3, v4, v5, v6, v7, v8, v14);
  }

  else
  {
    v9 = *(this + 1027);
    v10 = this + 18;
    if (v9 + 4 <= this + 8210)
    {
      v11 = v9 - v10;
      v12 = (v9 - v10);
      if (v9 != v10)
      {
        v13 = *(this + 1);
        memmove(v10, v9, (v13 - v9));
        *(this + 1) = v13 - v12;
        *(this + 1027) -= v12;
        *(this + 8) += v11;
      }
    }

    else
    {
      *(this + 1027) = v10;
      *(this + 10) = 0;
      *(this + 1) = this + 22;
      *(this + 8) = 8188;
    }
  }
}

uint64_t ot::Spinel::SpinelDriver::SendCommand(ot::Spinel::SpinelDriver *this, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = spinel_datatype_pack(v12, 0x514u, "Cii", a4, a5, a6, a7, a8, (a4 | (16 * *(this + 8245))) | 0x80u);
  if ((v9 - 1) > 0x513)
  {
    return 3;
  }

  v10 = v9;
  result = (*(**(this + 1029) + 24))(*(this + 1029), v12, v9);
  if (!result)
  {
    ot::Spinel::Logger::LogSpinelFrame(this, v12, v10, 1);
    return 0;
  }

  return result;
}

uint64_t ot::Spinel::SpinelDriver::SendCommand(ot::Spinel::SpinelDriver *this, int a2, int a3, uint64_t a4, char *a5, char **a6, uint64_t a7, uint64_t a8)
{
  v14 = spinel_datatype_pack(v63, 0x514u, "Cii", a4, a5, a6, a7, a8, (a4 | (16 * *(this + 8245))) | 0x80u);
  if (v14 - 1 > 0x513)
  {
    return 3;
  }

  v22 = v14;
  if (!a5)
  {
    v25 = v14;
    v22 = 0;
    v27 = spinel_prop_key_to_cstr(a3);
    if (strlen(v27) != 10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a3 == 52)
  {
    otLogInfoPlat("SPINEL_PROP_MAC_15_4_LADDR: format[%s] offset[%u]", v15, v16, v17, v18, v19, v20, v21, a5);
  }

  v23 = spinel_datatype_vpack(&v63[v22], 1300 - v22, a5, a6);
  result = 3;
  if (v23 >= 1)
  {
    v25 = v23 + v22;
    if (v23 + v22 <= 0x514)
    {
      v26 = spinel_prop_key_to_cstr(a3);
      if (strlen(v26) != 10)
      {
        goto LABEL_12;
      }

LABEL_11:
      v28 = spinel_prop_key_to_cstr(a3);
      if (!strcmp("STREAM_RAW", v28) && v25 > v22 && (v25 - v22) >= 20)
      {
        v35 = &v63[v22];
        v36 = *v35;
        v62[0] = a0123456789abcd_0[v36 >> 4];
        v62[1] = a0123456789abcd_0[v36 & 0xF];
        v37 = v35[1];
        v62[2] = a0123456789abcd_0[v37 >> 4];
        v38 = v35[2];
        v39 = a0123456789abcd_0[v38 >> 4];
        v62[3] = a0123456789abcd_0[v37 & 0xF];
        v62[4] = v39;
        v62[5] = a0123456789abcd_0[v38 & 0xF];
        v40 = v35[3];
        v62[6] = a0123456789abcd_0[v40 >> 4];
        v41 = v35[4];
        v42 = a0123456789abcd_0[v41 >> 4];
        v62[7] = a0123456789abcd_0[v40 & 0xF];
        v62[8] = v42;
        v62[9] = a0123456789abcd_0[v41 & 0xF];
        v43 = v35[5];
        v62[10] = a0123456789abcd_0[v43 >> 4];
        v44 = v35[6];
        v45 = a0123456789abcd_0[v44 >> 4];
        v62[11] = a0123456789abcd_0[v43 & 0xF];
        v62[12] = v45;
        v62[13] = a0123456789abcd_0[v44 & 0xF];
        v46 = v35[7];
        v62[14] = a0123456789abcd_0[v46 >> 4];
        v47 = v35[8];
        v48 = a0123456789abcd_0[v47 >> 4];
        v62[15] = a0123456789abcd_0[v46 & 0xF];
        v62[16] = v48;
        v62[17] = a0123456789abcd_0[v47 & 0xF];
        v49 = v35[9];
        v62[18] = a0123456789abcd_0[v49 >> 4];
        v62[19] = a0123456789abcd_0[v49 & 0xF];
        v62[20] = 0;
        v50 = &v63[v25];
        v51 = *(v50 - 10);
        LOBYTE(v46) = a0123456789abcd_0[v51 >> 4];
        LOBYTE(v51) = a0123456789abcd_0[v51 & 0xF];
        v62[1025] = v46;
        v62[1026] = v51;
        v52 = *(v50 - 9);
        v62[1027] = a0123456789abcd_0[v52 >> 4];
        v62[1028] = a0123456789abcd_0[v52 & 0xF];
        v53 = *(v50 - 8);
        LOBYTE(v46) = a0123456789abcd_0[v53 >> 4];
        LOBYTE(v53) = a0123456789abcd_0[v53 & 0xF];
        v62[1029] = v46;
        v62[1030] = v53;
        v54 = *(v50 - 7);
        v62[1031] = a0123456789abcd_0[v54 >> 4];
        v62[1032] = a0123456789abcd_0[v54 & 0xF];
        v55 = *(v50 - 6);
        LOBYTE(v46) = a0123456789abcd_0[v55 >> 4];
        LOBYTE(v55) = a0123456789abcd_0[v55 & 0xF];
        v62[1033] = v46;
        v62[1034] = v55;
        v56 = *(v50 - 5);
        v62[1035] = a0123456789abcd_0[v56 >> 4];
        v62[1036] = a0123456789abcd_0[v56 & 0xF];
        v57 = *(v50 - 4);
        LOBYTE(v46) = a0123456789abcd_0[v57 >> 4];
        LOBYTE(v57) = a0123456789abcd_0[v57 & 0xF];
        v62[1037] = v46;
        v62[1038] = v57;
        v58 = *(v50 - 3);
        v62[1039] = a0123456789abcd_0[v58 >> 4];
        v62[1040] = a0123456789abcd_0[v58 & 0xF];
        v59 = *(v50 - 2);
        LOBYTE(v46) = a0123456789abcd_0[v59 >> 4];
        LOBYTE(v59) = a0123456789abcd_0[v59 & 0xF];
        v62[1041] = v46;
        v62[1042] = v59;
        v60 = *(v50 - 1);
        v62[1043] = a0123456789abcd_0[v60 >> 4];
        v62[1044] = a0123456789abcd_0[v60 & 0xF];
        v62[1045] = 0;
        v61 = spinel_command_to_cstr(a2);
        spinel_prop_key_to_cstr(a3);
        ot::Spinel::Logger::LogNote1(this, "[->RCP] (%d) %s(%s) (format[%s]) key(%d) [%s-%s] len=%d", a4, v61);
LABEL_17:
        result = (*(**(this + 1029) + 24))(*(this + 1029), v63, v25);
        if (!result)
        {
          ot::Spinel::Logger::LogSpinelFrame(this, v63, v25, 1);
          return 0;
        }

        return result;
      }

LABEL_12:
      v29 = 0;
      v62[0] = 0;
      v30 = v25 - 1;
      if (v30 >= 0x1FF)
      {
        v30 = 511;
      }

      v31 = 2 * v30 + 2;
      v32 = v63;
      do
      {
        v33 = *v32++;
        v34 = &v62[v29];
        *v34 = a0123456789abcd_0[v33 >> 4];
        v34[1] = a0123456789abcd_0[v33 & 0xF];
        v29 += 2;
      }

      while (v31 != v29);
      v62[v29] = 0;
      spinel_command_to_cstr(a2);
      spinel_prop_key_to_cstr(a3);
      ot::Spinel::Logger::LogNote1(this, "[->RCP] (%d) %s(%s) (format[%s]) key(%d) [%s] len=%d", a4);
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t ot::Spinel::SpinelDriver::SendCommandNK(ot::Spinel::SpinelDriver *this, unsigned int a2, int a3, char *a4, char **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = spinel_datatype_pack(v15, 0x514u, "Ci", a4, a5, a6, a7, a8, a3 | 0x80u);
  if (v11 - 1 > 0x513)
  {
    return 3;
  }

  v12 = v11;
  if (!a4 || (v13 = spinel_datatype_vpack(&v15[v11], 1300 - v11, a4, a5), result = 3, v13 >= 1) && (v12 += v13, v12 <= 0x514))
  {
    result = (*(**(this + 1029) + 24))(*(this + 1029), v15, v12);
    if (!result)
    {
      ot::Spinel::Logger::LogSpinelFrame(this, v15, v12, 1);
      return 0;
    }
  }

  return result;
}

uint64_t ot::Spinel::SpinelDriver::GetVendorInitialized(ot::Spinel::SpinelDriver *this)
{
  result = otPlatRadioGetRcp2Vendor2EnabledVerify();
  if (result)
  {
    v8 = spinel_datatype_pack(v10, 0x514u, "Cii", v3, v4, v5, v6, v7, (16 * *(this + 8245)) | 0x81u);
    if ((v8 - 1) > 0x513)
    {
      return 3;
    }

    else
    {
      v9 = v8;
      result = (*(**(this + 1029) + 24))(*(this + 1029), v10, v8);
      if (!result)
      {
        ot::Spinel::Logger::LogSpinelFrame(this, v10, v9, 1);
        *(this + 8244) = 1;
        *(this + 2060) = 15519;
        return ot::Spinel::SpinelDriver::WaitResponse(this);
      }
    }
  }

  return result;
}

uint64_t ot::Spinel::SpinelDriver::SetVendorInitialized(ot::Spinel::SpinelDriver *this)
{
  result = otPlatRadioGetRcp2Vendor2EnabledVerify();
  if (result)
  {
    result = ot::Spinel::SpinelDriver::SendCommandWrapper(this, 3, 15519, 1, "b", v3, v4, v5, 1);
    if (!result)
    {
      *(this + 8244) = 1;
      *(this + 2060) = 15519;
      result = ot::Spinel::SpinelDriver::WaitResponse(this);
      if (!result)
      {
        result = 0;
        if ((*(this + 8417) & 1) == 0)
        {
          *(this + 2060) = 15519;
        }
      }
    }
  }

  return result;
}

void *ot::Spinel::SpinelDriver::SetFrameHandler(void *this, void (*a2)(const unsigned __int8 *, unsigned __int16, unsigned __int8, BOOL *, void *), void (*a3)(const unsigned __int8 *, unsigned __int16, void *), void *a4)
{
  this[1032] = a2;
  this[1033] = a3;
  this[1034] = a4;
  return this;
}

void ot::Spinel::SpinelDriver::HandleReceivedFrame(ot::Spinel::SpinelDriver *this)
{
  v29 = 0;
  v2 = (*(this + 1027) + *(*(this + 1027) + 2) + 4);
  v3 = (*(this + 2) - v2);
  ot::Spinel::Logger::LogSpinelFrame(this, v2, (*(this + 4) - v2), 0);
  v4 = *(this + 1027) + *(*(this + 1027) + 2) + 4;
  v10 = spinel_datatype_unpack(v4, (*(this + 4) - v4), "C", v5, v6, v7, v8, v9, &v29);
  v11 = *(this + 4124);
  if (!*(this + 4124))
  {
LABEL_11:
    v21 = *(this + 1027);
    v20 = this + 8210;
    if (v21 + 4 <= this + 8210)
    {
      *(v21 + 2) = 0;
      v21 = *(this + 1027);
      v22 = v21 + *(v21 + 2) + 4;
      *(this + 1) = v22;
      *(this + 8) = v20 - v22;
    }

LABEL_13:
    v23 = v21 + *(v21 + 2) + 4;
    *(this + 1) = v23;
    *(this + 8) = v20 - v23;
    return;
  }

  v12 = 8246;
  while (*(this + v12) != ((v29 >> 4) & 3))
  {
    ++v12;
    if (!--v11)
    {
      goto LABEL_11;
    }
  }

  v13 = v10;
  v14 = 6;
  if (v13 >= 1 && (v29 & 0x80) != 0)
  {
    v15 = *(this + 2) - (*(this + 2054) + *(*(this + 1027) + 2) + 4);
    v16 = *(this + 1034);
    (*(this + 1032))();
    if (*(this + 8) >= 4u)
    {
      v17 = *(this + 1027);
      v18 = v17[1];
      *v17 = *(this + 2) - v17 - 4;
      v19 = *(this + 1);
      *(this + 1027) = v19;
      v20 = this + 8210;
      if (v19 + 4 > this + 8210)
      {
        return;
      }

      *(v19 + 2) = 0;
      v21 = *(this + 1027);
      goto LABEL_13;
    }

    v14 = 3;
  }

  v24 = *(this + 1027);
  v25 = this + 8210;
  if (v24 + 4 <= this + 8210)
  {
    *(v24 + 2) = 0;
    v24 = *(this + 1027);
    v26 = v24 + *(v24 + 2) + 4;
    *(this + 1) = v26;
    *(this + 8) = v25 - v26;
  }

  v27 = v24 + *(v24 + 2) + 4;
  *(this + 1) = v27;
  *(this + 8) = v25 - v27;
  v28 = otThreadErrorToString(v14);
  ot::Spinel::Logger::LogWarn1(this, "Error handling spinel frame: %s", v28);
}

void ot::Spinel::SpinelDriver::HandleInitialFrame(const char **this, const unsigned __int8 *a2, unsigned int a3, uint64_t a4, BOOL *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v10 = spinel_datatype_unpack(a2, a3, "CiiD", a4, a5, a6, a7, a8, &v13);
  v11 = 6;
  if (v10 >= 1 && (v12 - 6) <= 2)
  {
    v11 = 2;
  }

  *a5 = 0;
  ot::Spinel::Logger::LogIfFail1(this, "Error processing frame", v11);
}

uint64_t ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetNextSavedFrame(uint64_t a1, uint64_t *a2, _WORD *a3)
{
  v3 = *a2;
  if (*a2)
  {
    if (*(a1 + 8216))
    {
      return 23;
    }

    v5 = a1 + 10;
    if (a1 + 10 > v3 || v3 >= a1 + 8202)
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg)
      {
        v9 = logging_obg;
        if (syslog_is_the_mask_enabled(2) && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetNextSavedFrame(v5, a2, v9);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        FaultInfo::setControlInterface();
      }

      handle_getnextframe_captureABC();
    }
  }

  v10 = (v3 + *a3);
  if (!v3)
  {
    v10 = (a1 + 10);
  }

  *a2 = v10;
  v11 = *(a1 + 8208);
  if (v11 == (a1 + 10) || v10 == v11)
  {
    v14 = 0;
    v15 = 0;
    result = 23;
  }

  else
  {
    result = 0;
    v13 = v10[1];
    v14 = *v10 - v13;
    v15 = v10 + v13 + 4;
  }

  *a3 = v14;
  *a2 = v15;
  return result;
}

uint64_t CAMetricsClient_update_channelSelectionData(any a1)
{
  v1 = *a1.var0;
  if (v1)
  {
    v1 = (*(*v1 + 24))(v1);
  }

  v4 = v1;
  v2.var0 = &v4;
  CAMetricsHandlers_handle_update_channelSelectionData(v2);
  result = v4;
  if (v4)
  {
    return (*(*v4 + 8))(v4);
  }

  return result;
}

void sub_1000FDCF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    __ThreadPowerAssertDispatchTask_block_invoke_cold_4(a10);
  }

  _Unwind_Resume(exception_object);
}

void CAMetricsClient_UpdateMetrics_SrpUnicast_MultiToOne(uint64_t a1, int a2)
{
  strcpy(__p, "Unicast_MultiToOne");
  v3 = 18;
  CAMetricsHandlers_handle_srp_update(__p, a1, a2);
  if (v3 < 0)
  {
    operator delete(*__p);
  }
}

void sub_1000FDD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CAMetricsClient_UpdateMetrics_SrpUnicast_ZeroToNonZero(uint64_t a1, int a2)
{
  strcpy(__p, "Unicast_ZeroToNonZero");
  v3 = 21;
  CAMetricsHandlers_handle_srp_update(__p, a1, a2);
  if (v3 < 0)
  {
    operator delete(*__p);
  }
}

void sub_1000FDE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CAMetricsClient_UpdateMetrics_SrpAnycast_MultiToOne(uint64_t a1, int a2)
{
  strcpy(__p, "Anycast_MultiToOne");
  v3 = 18;
  CAMetricsHandlers_handle_srp_update(__p, a1, a2);
  if (v3 < 0)
  {
    operator delete(*__p);
  }
}

void sub_1000FDEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CAMetricsClient_UpdateMetrics_SrpAnycast_ZeroToNonZero(uint64_t a1, int a2)
{
  strcpy(__p, "Anycast_ZeroToNonZero");
  v3 = 21;
  CAMetricsHandlers_handle_srp_update(__p, a1, a2);
  if (v3 < 0)
  {
    operator delete(*__p);
  }
}

void sub_1000FDF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CAMetricsClient_UpdateMetrics_SrpPrefix_MultiToOne(uint64_t a1, int a2)
{
  strcpy(__p, "Prefix_MultiToOne");
  v3 = 17;
  CAMetricsHandlers_handle_srp_update(__p, a1, a2);
  if (v3 < 0)
  {
    operator delete(*__p);
  }
}

void sub_1000FDFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CAMetricsClient_UpdateMetrics_SrpPrefix_ZeroToNonZero(uint64_t a1, int a2)
{
  strcpy(__p, "Prefix_ZeroToNonZero");
  v3 = 20;
  CAMetricsHandlers_handle_srp_update(__p, a1, a2);
  if (v3 < 0)
  {
    operator delete(*__p);
  }
}

void sub_1000FE068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 CAMetricsClient_UpdateMetrics_Periodic_Netdata_Update(_OWORD *a1)
{
  v1 = a1[7];
  v6[6] = a1[6];
  v6[7] = v1;
  v6[8] = a1[8];
  v2 = a1[3];
  v6[2] = a1[2];
  v6[3] = v2;
  v3 = a1[5];
  v6[4] = a1[4];
  v6[5] = v3;
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  CAMetricsHandlers_handle_periodic_netdata_update(v6);
  return result;
}

__n128 CAMetricsClient_UpdateMetrics_matter_resident_reboot_Update(_OWORD *a1)
{
  v1 = a1[5];
  v5[4] = a1[4];
  v5[5] = v1;
  v5[6] = a1[6];
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v3 = a1[3];
  v5[2] = a1[2];
  v5[3] = v3;
  CAMetricsHandlers_handle_matter_resident_reboot_update(v5);
  return result;
}

void CAMetricsClient_UpdateMetrics_accessory_periodic_Update(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  CAMetricsHandlers_handle_accessory_periodic_update(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1000FE1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _GLOBAL__sub_I_CAMetricsClient_mm()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void XPCIPCServer_rcp::get_xpc_connection(XPCIPCServer_rcp *this)
{
  v2 = xpc_null_create();
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_dictionary)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = xpc_null_create();
  xpc_release(v2);
  xpc_release(v5);
  v6 = xpc_string_create("threadradiod");
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "ServerHostName", v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = xpc_string_create("com.apple.wpantund.xpc");
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "ServiceXPCName", v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  v10 = xpc_string_create("wpantund.daemon.ready");
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "ServiceNotificationName", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v12 = xpc_BOOL_create(0);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "ServerEnableSignalHandler", v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v15 = dispatch_queue_create("threadradiod.xpc.queue", v14);
  v16 = *(this + 4);
  *(this + 4) = v15;
  if (v16)
  {
    dispatch_release(v16);
  }

  v20 = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    v20 = xpc_null_create();
  }

  v17 = _Block_copy(&__block_literal_global_5);
  v18 = *(this + 4);
  if (v18)
  {
    dispatch_retain(*(this + 4));
  }

  v19[0] = v17;
  v19[1] = v18;
  CtrXPC::Server::create(&v20, v19);
}

void sub_1000FE82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a21);
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a38 & 0x80000000) == 0)
      {
LABEL_8:
        if (a56 < 0)
        {
          operator delete(a51);
        }

        if (*(v58 - 145) < 0)
        {
          operator delete(*(v58 - 168));
        }

        std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](v57);
        xpc_release(v56);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a33);
      goto LABEL_8;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a23);
  if ((a38 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_1000FE94C()
{
  dispatch::callback<void({block_pointer})(void)>::~callback(v0 - 104);
  xpc_release(*(v0 - 88));
  *(v0 - 88) = 0;
  JUMPOUT(0x1000FE934);
}

void ___ZN16XPCIPCServer_rcp18get_xpc_connectionEv_block_invoke_10(uint64_t a1, uint64_t *a2, void **a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v10 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315138;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Posted %s to Otd Process Queue", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v12 = *(v8 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = ___ZN16XPCIPCServer_rcp18get_xpc_connectionEv_block_invoke_11;
  block[3] = &__block_descriptor_tmp_13;
  block[4] = v8;
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    __p = *(a1 + 40);
  }

  v13 = a2[1];
  v20 = *a2;
  v21 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *a3;
  v22 = v14;
  if (!v14)
  {
    v22 = xpc_null_create();
    v15 = *a4;
    if (!*a4)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  xpc_retain(v14);
  v15 = *a4;
  if (*a4)
  {
LABEL_18:
    v15 = _Block_copy(v15);
  }

LABEL_19:
  v16 = *(a4 + 8);
  aBlock = v15;
  object = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  dispatch_async(v12, block);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v22);
  v22 = 0;
  v17 = v21;
  if (!v21 || atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_28;
  }

  (v17->__on_zero_shared)(v17);
  std::__shared_weak_count::__release_weak(v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_28:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1000FED9C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN16XPCIPCServer_rcp18get_xpc_connectionEv_block_invoke_11(uint64_t a1)
{
  v2 = *(a1 + 32);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v4 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v5 = *v5;
      }

      CtrXPC::ServerClientState::getName((a1 + 64), &v24);
      v6 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
      v7 = v24.__r_.__value_.__r.__words[0];
      xpc::object::to_string(__p, (a1 + 80));
      v8 = &v24;
      if (v6 < 0)
      {
        v8 = v7;
      }

      if (v23 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = v5;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v26 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handling command: %s for client %s with inputs %s", &buf, 0x20u);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  CtrXPC::ServerClientState::getName((a1 + 64), &buf);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  v11 = strlen(p_buf);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  v21 = v11;
  if (v11)
  {
    memmove(&__dst, p_buf, v11);
    *(&__dst + v12) = 0;
    v13 = *(a1 + 80);
    v19 = v13;
    if (v13)
    {
LABEL_24:
      xpc_retain(v13);
      v14 = *(a1 + 88);
      if (v14)
      {
        goto LABEL_25;
      }

      goto LABEL_37;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v13 = *(a1 + 80);
    v19 = v13;
    if (v13)
    {
      goto LABEL_24;
    }
  }

  v13 = xpc_null_create();
  v19 = v13;
  v14 = *(a1 + 88);
  if (v14)
  {
LABEL_25:
    v15 = _Block_copy(v14);
    v16 = *(a1 + 96);
    v17 = v15;
    v18 = v16;
    if (!v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_37:
  v15 = 0;
  v16 = *(a1 + 96);
  v17 = 0;
  v18 = v16;
  if (v16)
  {
LABEL_26:
    dispatch_retain(v16);
  }

LABEL_27:
  XPCIPCServer_rcp::xpc_message_handler(v2, &__dst, &v19, &v17);
  if (v16)
  {
    dispatch_release(v16);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  xpc_release(v13);
  if ((v21 & 0x80000000) == 0)
  {
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_40:
    operator delete(buf.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__dst);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_40;
  }
}

void sub_1000FF0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void XPCIPCServer_rcp::xpc_message_handler(uint64_t a1, uint64_t a2, xpc_object_t *a3, uint64_t a4)
{
  if (xpc_get_type(*a3) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(*a3, "method");
    v11 = xpc_dictionary_get_string(*a3, "interface");
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v13 = logging_obg;
      if (syslog_is_the_mask_enabled(5) && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v21 = v11;
        v22 = 2080;
        v23 = string;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "ThreadRadioD:XPCServer - Received message for: interface = %s, method = %s", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    if (!strcmp(v11, "org.wpantund.v1") || !strcmp(v11, "com.nestlabs.WPANTunnelDriver"))
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v19, *a2, *(a2 + 8));
      }

      else
      {
        v19 = *a2;
      }

      v14 = *a3;
      v15 = *a4;
      if (*a4)
      {
        v15 = _Block_copy(v15);
      }

      v16 = *(a4 + 8);
      aBlock = v15;
      object = v16;
      if (v16)
      {
        dispatch_retain(v16);
      }

      XPCIPCAPI_v1_rcp::message_handler(a1 + 64, &v19, v14, &aBlock);
      if (object)
      {
        dispatch_release(object);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v8 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v8)
    {
      v9 = v8;
      if (syslog_is_the_mask_enabled(3))
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          XPCIPCServer_rcp::xpc_message_handler(v9);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }
}

void sub_1000FF39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c32_ZTSN6CtrXPC17ServerClientStateE80c15_ZTSN3xpc4dictE88c57_ZTSN8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 63) & 0x80000000) == 0)
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
    v5 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = v5;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;
  if (v5)
  {
LABEL_3:
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v6 = *(a2 + 80);
  *(a1 + 80) = v6;
  if (!v6)
  {
    *(a1 + 80) = xpc_null_create();
    v7 = *(a2 + 88);
    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  xpc_retain(v6);
  v7 = *(a2 + 88);
  if (v7)
  {
LABEL_10:
    v7 = _Block_copy(v7);
  }

LABEL_11:
  v8 = *(a2 + 96);
  *(a1 + 88) = v7;
  *(a1 + 96) = v8;
  if (v8)
  {

    dispatch_retain(v8);
  }
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c32_ZTSN6CtrXPC17ServerClientStateE80c15_ZTSN3xpc4dictE88c57_ZTSN8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    _Block_release(v3);
  }

  xpc_release(*(a1 + 80));
  *(a1 + 80) = 0;
  v4 = *(a1 + 72);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 63) & 0x80000000) == 0)
  {
    return;
  }

  v5 = *(a1 + 40);

  operator delete(v5);
}

void ___ZN16XPCIPCServer_rcp18get_xpc_connectionEv_block_invoke_17(uint64_t a1, CtrXPC::ServerClientState *a2, void **a3, uint64_t a4)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v9 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v10 = *v10;
      }

      CtrXPC::ServerClientState::getName(a2, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v22 = v10;
      v23 = 2080;
      v24 = p_p;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Posted %s to TNM Process Queue from client : %s", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if ((ctrUtilIsThreadFeatureEnabled() & 1) == 0)
  {
    v12 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v12)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Thread is not ready, sleep for 100 msec before handling the messages", &__p, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    usleep(0x186A0u);
  }

  CtrXPC::ServerClientState::getName(a2, &v19);
  v13 = *a3;
  v18 = v13;
  if (!v13)
  {
    v18 = xpc_null_create();
    v14 = *a4;
    if (!*a4)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  xpc_retain(v13);
  v14 = *a4;
  if (*a4)
  {
LABEL_25:
    v14 = _Block_copy(v14);
  }

LABEL_26:
  v15 = *(a4 + 8);
  aBlock = v14;
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  threadNetworkManager_MsgHandler(&v19, &v18, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v18);
  v18 = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void sub_1000FF7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

void __destroy_helper_block_e8_32c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void ___ZN16XPCIPCServer_rcp18get_xpc_connectionEv_block_invoke_20(uint64_t a1, CtrXPC::ServerClientState *a2, void **a3, uint64_t a4)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v9 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v10 = *v10;
      }

      CtrXPC::ServerClientState::getName(a2, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v21 = v10;
      v22 = 2080;
      v23 = p_p;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Posted %s to TDM Process Queue from client : %s", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  CtrXPC::ServerClientState::getName(a2, &v18);
  v12 = *a3;
  v17 = v12;
  if (!v12)
  {
    v17 = xpc_null_create();
    v13 = *a4;
    if (!*a4)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  xpc_retain(v12);
  v13 = *a4;
  if (*a4)
  {
LABEL_17:
    v13 = _Block_copy(v13);
  }

LABEL_18:
  v14 = *(a4 + 8);
  aBlock = v13;
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  threadDiagnosticsManager_MsgHandler(&v18, &v17, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v17);
  v17 = 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_1000FFA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN16XPCIPCServer_rcp18get_xpc_connectionEv_block_invoke_25(uint64_t a1, uint64_t *a2, void **a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v10 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315138;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Posted %s to Otd Process Queue", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v12 = *(v8 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = ___ZN16XPCIPCServer_rcp18get_xpc_connectionEv_block_invoke_26;
  block[3] = &__block_descriptor_tmp_29_0;
  block[4] = v8;
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    __p = *(a1 + 40);
  }

  v13 = a2[1];
  v20 = *a2;
  v21 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *a3;
  v22 = v14;
  if (!v14)
  {
    v22 = xpc_null_create();
    v15 = *a4;
    if (!*a4)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  xpc_retain(v14);
  v15 = *a4;
  if (*a4)
  {
LABEL_18:
    v15 = _Block_copy(v15);
  }

LABEL_19:
  v16 = *(a4 + 8);
  aBlock = v15;
  object = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  dispatch_async(v12, block);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v22);
  v22 = 0;
  v17 = v21;
  if (!v21 || atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_28;
  }

  (v17->__on_zero_shared)(v17);
  std::__shared_weak_count::__release_weak(v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_28:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1000FFD24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN16XPCIPCServer_rcp18get_xpc_connectionEv_block_invoke_26(uint64_t a1)
{
  v2 = *(a1 + 32);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v4 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v5 = *v5;
      }

      CtrXPC::ServerClientState::getName((a1 + 64), &v24);
      v6 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
      v7 = v24.__r_.__value_.__r.__words[0];
      xpc::object::to_string(__p, (a1 + 80));
      v8 = &v24;
      if (v6 < 0)
      {
        v8 = v7;
      }

      if (v23 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = v5;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v26 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handling command: %s for client %s with inputs %s", &buf, 0x20u);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  CtrXPC::ServerClientState::getName((a1 + 64), &buf);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  v11 = strlen(p_buf);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  v21 = v11;
  if (v11)
  {
    memmove(&__dst, p_buf, v11);
    *(&__dst + v12) = 0;
    v13 = *(a1 + 80);
    v19 = v13;
    if (v13)
    {
LABEL_24:
      xpc_retain(v13);
      v14 = *(a1 + 88);
      if (v14)
      {
        goto LABEL_25;
      }

      goto LABEL_37;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v13 = *(a1 + 80);
    v19 = v13;
    if (v13)
    {
      goto LABEL_24;
    }
  }

  v13 = xpc_null_create();
  v19 = v13;
  v14 = *(a1 + 88);
  if (v14)
  {
LABEL_25:
    v15 = _Block_copy(v14);
    v16 = *(a1 + 96);
    v17 = v15;
    v18 = v16;
    if (!v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_37:
  v15 = 0;
  v16 = *(a1 + 96);
  v17 = 0;
  v18 = v16;
  if (v16)
  {
LABEL_26:
    dispatch_retain(v16);
  }

LABEL_27:
  XPCIPCServer_rcp::xpc_message_handler(v2, &__dst, &v19, &v17);
  if (v16)
  {
    dispatch_release(v16);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  xpc_release(v13);
  if ((v21 & 0x80000000) == 0)
  {
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_40:
    operator delete(buf.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__dst);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_40;
  }
}

void sub_100100044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void XPCIPCServer_rcp::XPCIPCServer_rcp(XPCIPCServer_rcp *this, dispatch_queue_s *a2)
{
  *this = off_1004C37F8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = a2;
  XPCIPCServer_rcp::get_xpc_connection(this);
}

void sub_100100250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, char a11)
{
  if (object)
  {
    dispatch_release(object);
  }

  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](v11 + 48);
  v14 = *(v11 + 32);
  if (v14)
  {
    dispatch_release(v14);
    if ((*(v11 + 31) & 0x80000000) == 0)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v11 + 31) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*v12);
  _Unwind_Resume(a1);
}

void XPCIPCServer_rcp::~XPCIPCServer_rcp(XPCIPCServer_rcp *this)
{
  *this = off_1004C37F8;
  v2 = *(this + 7);
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "OTD XPCServer - Deleted", v6, 2u);
      XPCIPCAPI_v1_rcp::~XPCIPCAPI_v1_rcp((this + 64));
      v4 = *(this + 7);
      if (!v4)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
    XPCIPCAPI_v1_rcp::~XPCIPCAPI_v1_rcp((this + 64));
    v4 = *(this + 7);
    if (!v4)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  XPCIPCAPI_v1_rcp::~XPCIPCAPI_v1_rcp((this + 64));
  v4 = *(this + 7);
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

LABEL_13:
  v5 = *(this + 4);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  XPCIPCServer_rcp::~XPCIPCServer_rcp(this);

  operator delete();
}

void XPCIPCServer_rcp::add_interface(XPCIPCServer_rcp *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = (this + 8);
      if (*(this + 31) < 0)
      {
        v4 = *v4;
      }

      v5 = 136315138;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "OTD XPCServer - Interface added %s", &v5, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  XPCIPCAPI_v1_rcp::add_interface((this + 64));
}

int setlogmask(int a1)
{
  v1 = logMask;
  logMask = a1;
  return v1;
}

void CtrXPC::Server::State::~State(CtrXPC::Server::State *this)
{
  *this = &off_1004C3890;
  v2 = *(this + 25);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 25));
    *(this + 25) = 0;
  }

  std::__tree<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::destroy(this + 232, *(this + 30));
  std::__tree<std::__value_type<xpc::connection,CtrXPC::ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,CtrXPC::ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,CtrXPC::ServerClientState>>>::destroy(this + 208, *(this + 27));
  v3 = *(this + 24);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 23);
  if (v4)
  {
    _Block_release(v4);
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
    if ((*(this + 143) & 0x80000000) == 0)
    {
LABEL_9:
      if ((*(this + 119) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  else if ((*(this + 143) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(*(this + 15));
  if ((*(this + 119) & 0x80000000) == 0)
  {
LABEL_10:
    if ((*(this + 95) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(this + 12));
  if ((*(this + 95) & 0x80000000) == 0)
  {
LABEL_11:
    v5 = this;

    goto LABEL_13;
  }

LABEL_17:
  operator delete(*(this + 9));
  v5 = this;

LABEL_13:
  ctu::XpcServer::~XpcServer(v5);
}

{
  CtrXPC::Server::State::~State(this);

  operator delete();
}

void CtrXPC::Server::State::Parameters::~Parameters(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 47) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if ((*(this + 47) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(*this);
    return;
  }

LABEL_8:
  operator delete(this[3]);
  if (*(this + 23) < 0)
  {
    goto LABEL_9;
  }
}

void *CtrXPC::Server::Server(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void CtrXPC::Server::~Server(CtrXPC::Server *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

void CtrXPC::Server::create(void **a1, uint64_t a2)
{
  v3 = *a1;
  v8 = v3;
  if (v3)
  {
    xpc_retain(v3);
    v4 = *a2;
    if (!*a2)
    {
LABEL_6:
      v5 = *(a2 + 8);
      aBlock = v4;
      object = v5;
      if (v5)
      {
        dispatch_retain(v5);
      }

      CtrXPC::Server::State::create(&v8, &v9);
      if (object)
      {
        dispatch_release(object);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      xpc_release(v8);
      v8 = 0;
      operator new();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v4 = *a2;
    if (!*a2)
    {
      goto LABEL_6;
    }
  }

  v4 = _Block_copy(v4);
  goto LABEL_6;
}

void sub_100100B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::unique_ptr<CtrXPC::Server>::~unique_ptr[abi:ne200100]((v14 - 40));
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void sub_100100BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, xpc_object_t object)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a11);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void CtrXPC::Server::State::create(xpc_object_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (xpc_get_type(*a1) != &_xpc_type_dictionary)
  {
    goto LABEL_49;
  }

  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  *__p = 0u;
  value = xpc_dictionary_get_value(*a1, "ServiceXPCName");
  v21 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v21 = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&block, &v21, "", v4);
  if (SHIBYTE(v17[0]) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = block;
  v17[0] = v23;
  HIBYTE(v23) = 0;
  LOBYTE(block) = 0;
  xpc_release(v21);
  v5 = xpc_dictionary_get_value(*a1, "ServiceNotificationName");
  v21 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v21 = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&block, &v21, "", v6);
  if (SHIBYTE(v17[3]) < 0)
  {
    operator delete(v17[1]);
  }

  *&v17[1] = block;
  v17[3] = v23;
  HIBYTE(v23) = 0;
  LOBYTE(block) = 0;
  xpc_release(v21);
  v7 = xpc_dictionary_get_value(*a1, "ServerHostName");
  v21 = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v21 = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&block, &v21, "UnknownServerHost", v8);
  if (SHIBYTE(v19[0]) < 0)
  {
    operator delete(v18);
  }

  v18 = block;
  v19[0] = v23;
  HIBYTE(v23) = 0;
  LOBYTE(block) = 0;
  xpc_release(v21);
  v9 = xpc_dictionary_get_value(*a1, "ServerEnableSignalHandler");
  *&block = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *&block = xpc_null_create();
  }

  v20 = xpc::dyn_cast_or_default(&block, 0, v10);
  xpc_release(block);
  if (v17[0] >= 0)
  {
    v11 = HIBYTE(v17[0]);
  }

  else
  {
    v11 = __p[1];
  }

  if (v11 + 6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 + 6 >= 0x17)
  {
    operator new();
  }

  v23 = 0;
  block = 0uLL;
  HIBYTE(v23) = v11 + 6;
  if (v11)
  {
    if (v17[0] >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    memmove(&block, v12, v11);
  }

  strcpy(&block + v11, ".allow");
  if (SHIBYTE(v19[3]) < 0)
  {
    operator delete(v19[1]);
  }

  *&v19[1] = block;
  v19[3] = v23;
  v13 = HIBYTE(v17[0]);
  if (v17[0] < 0)
  {
    v13 = __p[1];
  }

  if (v13)
  {
    v14 = HIBYTE(v17[3]);
    if (v17[3] < 0)
    {
      v14 = v17[2];
    }

    if (v14)
    {
      operator new();
    }
  }

  if (SHIBYTE(v19[3]) < 0)
  {
    operator delete(v19[1]);
    if ((SHIBYTE(v19[0]) & 0x80000000) == 0)
    {
LABEL_42:
      if ((SHIBYTE(v17[3]) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }
  }

  else if ((SHIBYTE(v19[0]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(v18);
  if ((SHIBYTE(v17[3]) & 0x80000000) == 0)
  {
LABEL_43:
    if ((SHIBYTE(v17[0]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

LABEL_48:
    operator delete(__p[0]);
    goto LABEL_49;
  }

LABEL_47:
  operator delete(v17[1]);
  if (SHIBYTE(v17[0]) < 0)
  {
    goto LABEL_48;
  }

LABEL_49:
  logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
  if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
  {
    CtrXPC::Server::State::create(logging_obg);
  }
}

void sub_100101220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  CtrXPC::Server::State::Parameters::~Parameters(&a27);
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

uint64_t CtrXPC::Server::start(CtrXPC::Server *this)
{
  v1 = *this;
  v2 = *this + 8;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZN6CtrXPC6Server5State5startEv_block_invoke;
  v5[3] = &__block_descriptor_tmp_23_0;
  v5[4] = v1;
  v6 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_17;
  block[4] = v2;
  block[5] = &v6;
  v3 = *(v1 + 24);
  if (*(v1 + 32))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }

  return *(v1 + 176);
}

void CtrXPC::Server::broadcastEvent(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (daemonExitInProgress())
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "broadcastEvent";
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: Daemon exit is in progress", buf, 0xCu);
    }
  }

  else
  {
    v7 = *a1;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, *a2, *(a2 + 8));
    }

    else
    {
      v12 = *a2;
    }

    v8 = *a3;
    if (*a3)
    {
      v8 = _Block_copy(v8);
    }

    v9 = *(a3 + 8);
    aBlock = v8;
    object = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    CtrXPC::Server::State::broadcast(v7, &v12, &aBlock);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1001014D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CtrXPC::Server::State::broadcast(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  v9 = xpc_null_create();
  v5 = *a3;
  if (*a3)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a3 + 8);
  aBlock = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  CtrXPC::Server::State::broadcast(a1, &v10, &v9, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v9);
  v9 = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1001015F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a10);
  xpc_release(object);
  object = 0;
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CtrXPC::Server::broadcastEvent(uint64_t *a1, uint64_t a2, void **a3, uint64_t a4)
{
  if (daemonExitInProgress())
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v18 = "broadcastEvent";
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: Daemon exit is in progress", buf, 0xCu);
    }

    return;
  }

  v9 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a2, *(a2 + 8));
  }

  else
  {
    v16 = *a2;
  }

  v10 = *a3;
  v15 = v10;
  if (v10)
  {
    xpc_retain(v10);
    v11 = *a4;
    if (!*a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15 = xpc_null_create();
  v11 = *a4;
  if (*a4)
  {
LABEL_11:
    v11 = _Block_copy(v11);
  }

LABEL_12:
  v12 = *(a4 + 8);
  aBlock = v11;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  CtrXPC::Server::State::broadcast(v9, &v16, &v15, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v15);
  v15 = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_1001017B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void CtrXPC::Server::State::broadcast(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = ___ZN6CtrXPC6Server5State9broadcastENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke;
  v10[3] = &__block_descriptor_tmp_29_1;
  v7 = *a3;
  v10[4] = a1;
  v11 = v7;
  if (v7)
  {
    xpc_retain(v7);
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      __p = *a2;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = xpc_null_create();
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
LABEL_6:
  v8 = *a4;
  if (*a4)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a4 + 8);
  aBlock = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  ctu::SharedSynchronizable<ctu::XpcServer>::execute_wrapped((a1 + 8), v10);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(v11);
}

uint64_t CtrXPC::Server::setCommandHandler(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (daemonExitInProgress())
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v16 = "setCommandHandler";
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: Daemon exit is in progress", buf, 0xCu);
    }

    return 3;
  }

  else
  {
    v8 = *a1;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, *a2, *(a2 + 8));
    }

    else
    {
      v14 = *a2;
    }

    v9 = *a3;
    if (*a3)
    {
      v9 = _Block_copy(v9);
    }

    v10 = *(a3 + 8);
    aBlock = v9;
    object = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    v7 = CtrXPC::Server::State::setCommandHandler(v8, &v14, &aBlock);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  return v7;
}

void sub_100101AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CtrXPC::Server::State::setCommandHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = ___ZN6CtrXPC6Server5State17setCommandHandlerENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvNS_17ServerClientStateEN3xpc4dictENSA_IU13block_pointerFvhSD_EEEEEE_block_invoke;
  v10[3] = &__block_descriptor_tmp_32_0;
  v10[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v5 = *a3;
    if (!*a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __p = *a2;
  v5 = *a3;
  if (*a3)
  {
LABEL_5:
    v5 = _Block_copy(v5);
  }

LABEL_6:
  v6 = *(a3 + 8);
  aBlock = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v14 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_17;
  block[4] = a1 + 8;
  block[5] = &v14;
  v7 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v7, block);
    v8 = object;
    if (!object)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  dispatch_sync(v7, block);
  v8 = object;
  if (object)
  {
LABEL_10:
    dispatch_release(v8);
  }

LABEL_11:
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t CtrXPC::Server::statusToString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result > 1)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        a2[23] = 5;
        *a2 = 1869771333;
        a2[4] = 114;
        a2[5] = 0;
        return result;
      }

      goto LABEL_8;
    }

    a2[23] = 7;
    strcpy(a2, "SIGTERM");
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        a2[23] = 7;
        strcpy(a2, "Started");
        return result;
      }

LABEL_8:
      a2[23] = 0;
      *a2 = 0;
      return result;
    }

    a2[23] = 7;
    strcpy(a2, "Stopped");
  }

  return result;
}

void CtrXPC::Server::State::handleServerError_sync(uint64_t a1, xpc_object_t *a2)
{
  logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
  if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
  {
    v11 = xpc_copy_description(*a2);
    v12 = strlen(v11);
    if (v12 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v13 = v12;
    if (v12 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v18) = v12;
    if (v12)
    {
      memcpy(block, v11, v12);
    }

    *(block + v13) = 0;
    free(v11);
    v14 = block;
    if (SHIBYTE(v18) < 0)
    {
      v14 = block[0];
    }

    *buf = 136315138;
    v23 = v14;
    _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "Server error: %s", buf, 0xCu);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(block[0]);
    }
  }

  *(a1 + 176) = 3;
  v5 = *(a1 + 184);
  if (v5)
  {
    v6 = _Block_copy(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 192);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  v18 = ___ZNK8dispatch8callbackIU13block_pointerFvN6CtrXPC6Server12ServerStatusEEEclIJS3_EEEvDpT__block_invoke;
  v19 = &__block_descriptor_tmp_22;
  if (v6)
  {
    v8 = _Block_copy(v6);
  }

  else
  {
    v8 = 0;
  }

  aBlock = v8;
  v21 = 3;
  dispatch_async(v7, block);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  v9 = strlen("ServerStateError");
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  v16 = v9;
  if (v9)
  {
    memmove(&__dst, "ServerStateError", v9);
  }

  *(&__dst + v10) = 0;
  CtrXPC::Server::State::broadcastServerState(a1, &__dst);
  if (v16 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100102034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CtrXPC::Server::State::handleNewClient_sync(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, void **a3@<X8>)
{
  v6 = *a2;
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  isConnectionAllowed = CtrXPC::Server::State::isConnectionAllowed(a1, &object);
  xpc_release(object);
  object = 0;
  if ((isConnectionAllowed & 1) == 0)
  {
    *a3 = 0;
    return;
  }

  v8 = xpc_copy_description(*a2);
  v9 = strlen(v8);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  v26 = v9;
  if (v9)
  {
    memcpy(&__dst, v8, v9);
  }

  *(&__dst + v10) = 0;
  free(v8);
  CtrXPC::ServerClientState::ServerClientState(&v22, &__dst);
  if (v26 < 0)
  {
    operator delete(__dst);
  }

  logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
  if (!os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO) || ((xpc::object::to_string(&__dst, a2), v26 >= 0) ? (p_dst = &__dst) : (p_dst = __dst), *buf = 136315138, *&buf[4] = p_dst, _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "New client: %s", buf, 0xCu), (v26 & 0x80000000) == 0))
  {
    *buf = a2;
    v13 = *(a1 + 216);
    if (v13)
    {
      goto LABEL_20;
    }

LABEL_27:
    std::__tree<std::__value_type<xpc::connection,CtrXPC::ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,CtrXPC::ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,CtrXPC::ServerClientState>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<xpc::connection const&>,std::tuple<>>();
  }

  operator delete(__dst);
  *buf = a2;
  v13 = *(a1 + 216);
  if (!v13)
  {
    goto LABEL_27;
  }

LABEL_20:
  v14 = *a2;
  while (1)
  {
    while (1)
    {
      v15 = v13;
      v16 = v13[4];
      if (v14 >= v16)
      {
        break;
      }

      v13 = *v15;
      if (!*v15)
      {
        goto LABEL_27;
      }
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = v15[1];
    if (!v13)
    {
      goto LABEL_27;
    }
  }

  v18 = v22;
  v17 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v15[6];
  v15[5] = v18;
  v15[6] = v17;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 0x40000000;
  v21[2] = ___ZN6CtrXPC6Server5State20handleNewClient_syncEN3xpc10connectionE_block_invoke;
  v21[3] = &__block_descriptor_tmp_34;
  v21[4] = a1;
  *a3 = _Block_copy(v21);
  v20 = v23;
  if (v23)
  {
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_100102420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_100102434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_100102448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, xpc_object_t object, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CtrXPC::Server::State::handleClientError_sync(uint64_t a1, xpc_object_t *a2, xpc::object *a3)
{
  v6 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v6 = xpc_null_create();
  }

  CtrXPC::ServerClientState::ServerClientState(&v37);
  v8 = (a1 + 216);
  v7 = *(a1 + 216);
  if (v7)
  {
    v9 = (a1 + 216);
    do
    {
      v10 = v7[4];
      v11 = v10 >= v6;
      v12 = v10 < v6;
      if (v11)
      {
        v9 = v7;
      }

      v7 = v7[v12];
    }

    while (v7);
    if (v9 != v8 && v6 >= v9[4])
    {
      v14 = v9[5];
      v13 = v9[6];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = v38;
      v37 = v14;
      v38 = v13;
      if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }
    }
  }

  xpc_release(v6);
  if (v37)
  {
    CtrXPC::ServerClientState::getName(&v37, &v39);
    v16 = std::string::insert(&v39, 0, "Client '");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v40, "' ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v36 = v18->__r_.__value_.__r.__words[2];
    *__p = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_20:
        v20 = *a3;
        if (*a3 != &_xpc_error_connection_invalid)
        {
          goto LABEL_21;
        }

        goto LABEL_33;
      }
    }

    else if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    operator delete(v39.__r_.__value_.__l.__data_);
    v20 = *a3;
    if (*a3 != &_xpc_error_connection_invalid)
    {
LABEL_21:
      if (v20 == &_xpc_error_connection_interrupted)
      {
        logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
        if (!os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          goto LABEL_55;
        }

        v32 = __p;
        if (v36 < 0)
        {
          v32 = __p[0];
        }

        LODWORD(v40.__r_.__value_.__l.__data_) = 136315394;
        *(v40.__r_.__value_.__r.__words + 4) = v32;
        WORD2(v40.__r_.__value_.__r.__words[1]) = 2080;
        *(&v40.__r_.__value_.__r.__words[1] + 6) = "connection interrupted";
      }

      else
      {
        if (v20 != &_xpc_error_termination_imminent)
        {
          v21 = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            xpc::object::to_string(&v40, a3);
            v22 = __p;
            if (v36 < 0)
            {
              v22 = __p[0];
            }

            if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = &v40;
            }

            else
            {
              v23 = v40.__r_.__value_.__r.__words[0];
            }

            LODWORD(v39.__r_.__value_.__l.__data_) = 136315394;
            *(v39.__r_.__value_.__r.__words + 4) = v22;
            WORD2(v39.__r_.__value_.__r.__words[1]) = 2080;
            *(&v39.__r_.__value_.__r.__words[1] + 6) = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "prefix: %s: %s", &v39, 0x16u);
            if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v40.__r_.__value_.__l.__data_);
            }
          }

          goto LABEL_55;
        }

        logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
        if (!os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
LABEL_55:
          if (SHIBYTE(v36) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_57;
        }

        v33 = __p;
        if (v36 < 0)
        {
          v33 = __p[0];
        }

        LODWORD(v40.__r_.__value_.__l.__data_) = 136315394;
        *(v40.__r_.__value_.__r.__words + 4) = v33;
        WORD2(v40.__r_.__value_.__r.__words[1]) = 2080;
        *(&v40.__r_.__value_.__r.__words[1] + 6) = "will be terminated";
      }

      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "prefix: %s: %s", &v40, 0x16u);
      goto LABEL_55;
    }

LABEL_33:
    v24 = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = __p;
      if (v36 < 0)
      {
        v25 = __p[0];
      }

      LODWORD(v40.__r_.__value_.__l.__data_) = 136315394;
      *(v40.__r_.__value_.__r.__words + 4) = v25;
      WORD2(v40.__r_.__value_.__r.__words[1]) = 2080;
      *(&v40.__r_.__value_.__r.__words[1] + 6) = "disappeared";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "prefix: %s: %s", &v40, 0x16u);
    }

    v26 = *(a1 + 216);
    if (v26)
    {
      v27 = *a2;
      v28 = a1 + 216;
      do
      {
        v29 = *(v26 + 32);
        v11 = v29 >= v27;
        v30 = v29 < v27;
        if (v11)
        {
          v28 = v26;
        }

        v26 = *(v26 + 8 * v30);
      }

      while (v26);
      if (v28 != v8 && v27 >= *(v28 + 32))
      {
        std::__tree<std::__value_type<xpc::connection,CtrXPC::ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,CtrXPC::ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,CtrXPC::ServerClientState>>>::erase((a1 + 208), v28);
      }
    }

    goto LABEL_55;
  }

LABEL_57:
  v34 = v38;
  if (v38)
  {
    if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v34);
    }
  }
}

void sub_100102978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void sub_1001029E4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

std::string *CtrXPC::Server::State::Parameters::Parameters(std::string *this, const CtrXPC::Server::State::Parameters *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
      *&this[1].__r_.__value_.__l.__data_ = v5;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
LABEL_6:
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }

  this[4].__r_.__value_.__s.__data_[0] = *(a2 + 96);
  return this;
}

void sub_100102AFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 47) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 24));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t CtrXPC::Server::State::State(uint64_t a1, char *a2, uint64_t a3)
{
  v12 = 6;
  strcpy(__p, "Server");
  v6 = a2;
  if (a2[23] < 0)
  {
    v6 = *a2;
  }

  mach_service = xpc_connection_create_mach_service(v6, 0, 1uLL);
  if (!mach_service)
  {
    mach_service = xpc_null_create();
  }

  ctu::XpcServer::XpcServer();
  xpc_release(mach_service);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &off_1004C3890;
  CtrXPC::Server::State::Parameters::Parameters((a1 + 72), a2);
  *(a1 + 176) = 0;
  v7 = *a3;
  if (*a3)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a3 + 8);
  *(a1 + 184) = v7;
  *(a1 + 192) = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a1 + 216;
  *(a1 + 248) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = a1 + 240;
  return a1;
}

void sub_100102CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, xpc_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(a11);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100102E2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<CtrXPC::Server::State>::shared_ptr[abi:ne200100]<CtrXPC::Server::State,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<CtrXPC::Server::State *,std::shared_ptr<CtrXPC::Server::State>::__shared_ptr_default_delete<CtrXPC::Server::State,CtrXPC::Server::State>,std::allocator<CtrXPC::Server::State>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CtrXPC::Server::State *,std::shared_ptr<CtrXPC::Server::State>::__shared_ptr_default_delete<CtrXPC::Server::State,CtrXPC::Server::State>,std::allocator<CtrXPC::Server::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001004473FFLL)
  {
    if (((v2 & 0x80000001004473FFLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001004473FFLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001004473FFLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void ___ZN6CtrXPC6Server5State4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 168) == 1)
  {
    *(v1 + 200) = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, *(v1 + 24));
    v2 = *(v1 + 16);
    if (!v2 || (v3 = *(v1 + 8), (v4 = std::__shared_weak_count::lock(v2)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v5 = v4;
    p_shared_weak_owners = &v4->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v5);
    }

    v7 = *(v1 + 200);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 1174405120;
    handler[2] = ___ZN6CtrXPC6Server5State4initEv_block_invoke_2;
    handler[3] = &__block_descriptor_tmp_5;
    handler[4] = v1;
    handler[5] = v3;
    v9 = v5;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    dispatch_source_set_event_handler(v7, handler);
    dispatch_activate(*(v1 + 200));
    signal(15, 1);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_10010302C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  std::__shared_weak_count::__release_weak(v16);
  _Unwind_Resume(a1);
}

void ___ZN6CtrXPC6Server5State4initEv_block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        CtrXPC::Server::State::handleSIGTERM(v3);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);

        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void CtrXPC::Server::State::handleSIGTERM(CtrXPC::Server::State *this)
{
  logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
  if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "SIGTERM received", buf, 2u);
  }

  v3 = *(this + 2);
  if (!v3 || (v4 = *(this + 1), (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = strlen("EventServerSIGTERM");
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v16 = v7;
  if (v7)
  {
    memmove(&__dst, "EventServerSIGTERM", v7);
  }

  *(&__dst + v8) = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1174405120;
  v11[2] = ___ZN6CtrXPC6Server5State13handleSIGTERMEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_21;
  v11[4] = this;
  v11[5] = v4;
  v12 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = _Block_copy(v11);
  v10 = *(this + 3);
  if (v10)
  {
    dispatch_retain(*(this + 3));
  }

  aBlock = v9;
  object = v10;
  CtrXPC::Server::State::broadcast(this, &__dst, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16 < 0)
  {
    operator delete(__dst);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_10010336C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a16);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      std::__shared_weak_count::__release_weak(v23);
      _Unwind_Resume(a1);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  std::__shared_weak_count::__release_weak(v23);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
}

void ___ZN6CtrXPC6Server5State13handleSIGTERMEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 184);
        if (v6)
        {
          v7 = _Block_copy(v6);
        }

        else
        {
          v7 = 0;
        }

        v8 = *(v3 + 192);
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 1174405120;
        v10[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN6CtrXPC6Server12ServerStatusEEEclIJS3_EEEvDpT__block_invoke;
        v10[3] = &__block_descriptor_tmp_22;
        if (v7)
        {
          v9 = _Block_copy(v7);
        }

        else
        {
          v9 = 0;
        }

        aBlock = v9;
        v12 = 2;
        dispatch_async(v8, v10);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v7)
        {
          _Block_release(v7);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void *__copy_helper_block_e8_32c72_ZTSN8dispatch5blockIU13block_pointerFvN6CtrXPC6Server12ServerStatusEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c72_ZTSN8dispatch5blockIU13block_pointerFvN6CtrXPC6Server12ServerStatusEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN6CtrXPC6Server5State5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 44))
  {
    CtrXPC::Server::State::start_sync(v1);
  }
}

void CtrXPC::Server::State::start_sync(CtrXPC::Server::State *this)
{
  ctu::XpcServer::startListener_sync(this);
  v2 = this + 96;
  if (*(this + 119) < 0)
  {
    v2 = *v2;
  }

  v3 = CFStringCreateWithCString(kCFAllocatorDefault, v2, 0x600u);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 1u);
  logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
  if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = CFStringGetCStringPtr(v3, 0x8000100u);
    _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Server posted notification: %s", &buf, 0xCu);
  }

  CFRelease(v3);
  *(this + 44) = 1;
  v6 = *(this + 23);
  if (v6)
  {
    v7 = _Block_copy(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 24);
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 1174405120;
  v21 = ___ZNK8dispatch8callbackIU13block_pointerFvN6CtrXPC6Server12ServerStatusEEEclIJS3_EEEvDpT__block_invoke;
  v22 = &__block_descriptor_tmp_22;
  if (v7)
  {
    v9 = _Block_copy(v7);
  }

  else
  {
    v9 = 0;
  }

  aBlock = v9;
  v24 = 1;
  dispatch_async(v8, &buf);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  v10 = strlen("ServerStateStarted");
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v17 = v10;
  if (v10)
  {
    memmove(&__dst, "ServerStateStarted", v10);
  }

  *(&__dst + v11) = 0;
  CtrXPC::Server::State::broadcastServerState(this, &__dst);
  if (v17 < 0)
  {
    operator delete(__dst);
  }

  v12 = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(this + 44);
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        HIBYTE(v21) = 7;
        LODWORD(buf) = 1413957971;
        v14 = 1297237332;
        goto LABEL_34;
      }

      if (v13 == 3)
      {
        HIBYTE(v21) = 5;
        qmemcpy(&buf, "Error", 5);
        v15 = (&buf + 5);
        goto LABEL_35;
      }
    }

    else
    {
      if (!v13)
      {
        HIBYTE(v21) = 7;
        LODWORD(buf) = 1886352467;
        v14 = 1684369520;
        goto LABEL_34;
      }

      if (v13 == 1)
      {
        HIBYTE(v21) = 7;
        LODWORD(buf) = 1918989395;
        v14 = 1684370546;
LABEL_34:
        *(&buf + 3) = v14;
        v15 = (&buf + 7);
LABEL_35:
        *v15 = 0;
        *v18 = 136315138;
        p_buf = &buf;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, " Status = %s", v18, 0xCu);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(buf);
        }

        return;
      }
    }

    HIBYTE(v21) = 0;
    v15 = &buf;
    goto LABEL_35;
  }
}

void sub_1001039E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CtrXPC::Server::State::broadcastServerState(uint64_t a1, const char *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v4) == &_xpc_type_dictionary)
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v6 = xpc_string_create(a2);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, "KeyServerState", v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = strlen("EventServerStateChange");
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v14 = v8;
  if (v8)
  {
    memmove(&__dst, "EventServerStateChange", v8);
    *(&__dst + v9) = 0;
    v12 = v5;
    if (v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v12 = v5;
    if (v5)
    {
LABEL_15:
      xpc_retain(v5);
      goto LABEL_19;
    }
  }

  v12 = xpc_null_create();
LABEL_19:
  aBlock = 0;
  object = 0;
  CtrXPC::Server::State::broadcast(a1, &__dst, &v12, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v12);
  v12 = 0;
  if (v14 < 0)
  {
    operator delete(__dst);
  }

  xpc_release(v5);
}

void sub_100103C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  xpc_release(object);
  object = 0;
  if (a17 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v17);
  _Unwind_Resume(a1);
}

void ___ZN6CtrXPC6Server5State9broadcastENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_dictionary)
    {
      xpc_retain(v3);
      xdict = v3;
    }

    else
    {
      xdict = xpc_null_create();
    }
  }

  else
  {
    xdict = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  if (xpc_get_type(*(a1 + 40)) == &_xpc_type_dictionary)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      xpc_retain(*(a1 + 40));
    }

    else
    {
      v4 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, "eventData", v4);
    v5 = xpc_null_create();
    xpc_release(v4);
    xpc_release(v5);
  }

  v6 = xpc_string_create("eventNotification");
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "command", v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = (a1 + 48);
  v9 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    v9 = *v8;
  }

  v10 = xpc_string_create(v9);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "event", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v12 = dispatch_group_create();
  v13 = v2[2];
  if (!v13 || (v41 = v2[1], (v14 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v15);
    v42 = v15;
    v16 = v2[26];
    v40 = v2;
    v17 = v2 + 27;
    if (v16 == v2 + 27)
    {
      goto LABEL_79;
    }

LABEL_26:
    while (1)
    {
      v18 = v16[4];
      v59 = v18;
      if (v18)
      {
        break;
      }

      v18 = xpc_null_create();
      v59 = v18;
      v19 = v16[5];
      v20 = v16[6];
      v60 = v19;
      v61 = v20;
      if (v20)
      {
        goto LABEL_28;
      }

LABEL_29:
      if (v18)
      {
        xpc_retain(v18);
        v57 = v19;
        v58 = v20;
        if (!v20)
        {
          goto LABEL_32;
        }

LABEL_31:
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_32;
      }

      v18 = xpc_null_create();
      v57 = v19;
      v58 = v20;
      if (v20)
      {
        goto LABEL_31;
      }

LABEL_32:
      if (*(a1 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v56, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        *&v56.__r_.__value_.__l.__data_ = *v8;
        v56.__r_.__value_.__r.__words[2] = *(a1 + 64);
      }

      isNotificationRegistered_sync = CtrXPC::ServerClientState::isNotificationRegistered_sync(&v57, &v56);
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        v22 = isNotificationRegistered_sync;
        operator delete(v56.__r_.__value_.__l.__data_);
        if (!v22)
        {
          goto LABEL_65;
        }
      }

      else if (!isNotificationRegistered_sync)
      {
        goto LABEL_65;
      }

      logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        v24 = (a1 + 48);
        if (*(a1 + 71) < 0)
        {
          v24 = *v8;
        }

        CtrXPC::ServerClientState::getName(&v57, &__p);
        v25 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v26 = __p.__r_.__value_.__r.__words[0];
        SystemTime = TelephonyUtilGetSystemTime();
        *buf = 136315650;
        p_p = &__p;
        if (v25 < 0)
        {
          p_p = v26;
        }

        v63 = v24;
        v64 = 2080;
        v65 = p_p;
        v66 = 2048;
        v67 = SystemTime;
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Sending: %s, to: %s, at: %llu", buf, 0x20u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (!*(a1 + 72) || !*(a1 + 80))
      {
        xpc_connection_send_message(v18, xdict);
        goto LABEL_65;
      }

      dispatch_group_enter(v12);
      v29 = v40[3];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 1174405120;
      handler[2] = ___ZN6CtrXPC6Server5State9broadcastENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke_24;
      handler[3] = &__block_descriptor_tmp_26;
      handler[4] = v41;
      v50 = v42;
      atomic_fetch_add_explicit(&v42->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v51 = v57;
      v52 = v58;
      if (v58)
      {
        atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(a1 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v53, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        *&v53.__r_.__value_.__l.__data_ = *v8;
        v53.__r_.__value_.__r.__words[2] = *(a1 + 64);
      }

      v54 = v12;
      xpc_connection_send_message_with_reply(v18, xdict, v29, handler);
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
        v30 = v52;
        if (!v52)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v30 = v52;
        if (!v52)
        {
          goto LABEL_63;
        }
      }

      if (atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_63:
        v31 = v50;
        if (!v50)
        {
          goto LABEL_65;
        }

LABEL_64:
        std::__shared_weak_count::__release_weak(v31);
        goto LABEL_65;
      }

      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
      v31 = v50;
      if (v50)
      {
        goto LABEL_64;
      }

LABEL_65:
      v32 = v58;
      if (v58 && !atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v32->__on_zero_shared)(v32);
        std::__shared_weak_count::__release_weak(v32);
      }

      xpc_release(v18);
      v33 = v61;
      if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v33->__on_zero_shared)(v33);
        std::__shared_weak_count::__release_weak(v33);
      }

      xpc_release(v59);
      v34 = v16[1];
      if (v34)
      {
        do
        {
          v35 = v34;
          v34 = *v34;
        }

        while (v34);
      }

      else
      {
        do
        {
          v35 = v16[2];
          v36 = *v35 == v16;
          v16 = v35;
        }

        while (!v36);
      }

      v16 = v35;
      if (v35 == v17)
      {
        goto LABEL_79;
      }
    }

    xpc_retain(v18);
    v19 = v16[5];
    v20 = v16[6];
    v60 = v19;
    v61 = v20;
    if (!v20)
    {
      goto LABEL_29;
    }

LABEL_28:
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_29;
  }

  v42 = v14;
  v16 = v2[26];
  v40 = v2;
  v17 = v2 + 27;
  if (v16 != v2 + 27)
  {
    goto LABEL_26;
  }

LABEL_79:
  if (*(a1 + 72) && *(a1 + 80))
  {
    v37 = v40[3];
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = ___ZN6CtrXPC6Server5State9broadcastENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke_27;
    block[3] = &__block_descriptor_tmp_28;
    block[4] = v41;
    v45 = v42;
    atomic_fetch_add_explicit(&v42->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v46, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      *&v46.__r_.__value_.__l.__data_ = *v8;
      v46.__r_.__value_.__r.__words[2] = *(a1 + 64);
    }

    v38 = *(a1 + 72);
    if (v38)
    {
      v38 = _Block_copy(v38);
    }

    v39 = *(a1 + 80);
    aBlock = v38;
    object = v39;
    if (v39)
    {
      dispatch_retain(v39);
    }

    dispatch_group_notify(v12, v37, block);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (v45)
    {
      std::__shared_weak_count::__release_weak(v45);
    }
  }

  dispatch_release(v12);
  std::__shared_weak_count::__release_weak(v42);
  xpc_release(xdict);
}

void sub_100104440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, xpc_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a22)
  {
    std::__shared_weak_count::__release_weak(a22);
  }

  std::__shared_weak_count::__release_weak(a15);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void ___ZN6CtrXPC6Server5State9broadcastENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke_24(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2), (v12 = v3) != 0))
  {
    v4 = v3;
    if (*(a1 + 32))
    {
      logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        CtrXPC::ServerClientState::getName((a1 + 48), &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v7 = (a1 + 64);
        if (*(a1 + 87) < 0)
        {
          v7 = *v7;
        }

        SystemTime = TelephonyUtilGetSystemTime();
        *buf = 136315650;
        v14 = p_p;
        v15 = 2080;
        v16 = v7;
        v17 = 2048;
        v18 = SystemTime;
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s responded to: %s, at: %llu", buf, 0x20u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    dispatch_group_leave(*(a1 + 88));
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  else
  {
    v9 = *(a1 + 88);

    dispatch_group_leave(v9);
  }
}

void sub_100104750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](&a16);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE48c32_ZTSN6CtrXPC17ServerClientStateE64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v4 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v4;
  }
}

void sub_100104830(_Unwind_Exception *a1)
{
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](v1);
  v4 = *(v2 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE48c32_ZTSN6CtrXPC17ServerClientStateE64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 56);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 40);
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v3);
}

void ___ZN6CtrXPC6Server5State9broadcastENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke_27(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(a1 + 32))
      {
        logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          v5 = (a1 + 48);
          if (*(a1 + 71) < 0)
          {
            v5 = *v5;
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v5;
          _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "All clients responded to: %s", &buf, 0xCu);
        }
      }
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    v6 = *(a1 + 72);
    if (v6)
    {
LABEL_9:
      v7 = _Block_copy(v6);
      goto LABEL_12;
    }
  }

  v7 = 0;
LABEL_12:
  v8 = *(a1 + 80);
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 1174405120;
  v11 = ___ZNK8dispatch8callbackIU13block_pointerFvvEEclIJEEEvDpT__block_invoke_0;
  v12 = &__block_descriptor_tmp_31;
  if (!v7)
  {
    aBlock = 0;
    dispatch_async(v8, &buf);
    v9 = aBlock;
    if (!aBlock)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  aBlock = _Block_copy(v7);
  dispatch_async(v8, &buf);
  v9 = aBlock;
  if (aBlock)
  {
LABEL_16:
    _Block_release(v9);
  }

LABEL_17:
  if (v7)
  {
    _Block_release(v7);
  }

  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void sub_100104AF8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __copy_helper_block_e8_32c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  a1[1].__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 72);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a2 + 80);
  a1[3].__r_.__value_.__r.__words[0] = v6;
  a1[3].__r_.__value_.__l.__size_ = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void sub_100104BB8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    v4 = *(a1 + 40);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v4);
}

void __copy_helper_block_e8_40c15_ZTSN3xpc4dictE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[1].__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    xpc_retain(v4);
    if ((*(a2 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 48);
      a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
      *&a1[2].__r_.__value_.__l.__data_ = v5;
      goto LABEL_6;
    }
  }

  else
  {
    a1[1].__r_.__value_.__r.__words[2] = xpc_null_create();
    if ((*(a2 + 71) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
LABEL_6:
  v6 = *(a2 + 72);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a2 + 80);
  a1[3].__r_.__value_.__r.__words[0] = v6;
  a1[3].__r_.__value_.__l.__size_ = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void __destroy_helper_block_e8_40c15_ZTSN3xpc4dictE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

void ctu::SharedSynchronizable<ctu::XpcServer>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1004C3AA8;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcServerEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcServerEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::pair<xpc::connection const,CtrXPC::ServerClientState>::~pair(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void ___ZN6CtrXPC6Server5State17setCommandHandlerENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvNS_17ServerClientStateEN3xpc4dictENSA_IU13block_pointerFvhSD_EEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
  if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
  {
    v4 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Registered command: %s", buf, 0xCu);
  }

  *buf = a1 + 40;
  v5 = std::__tree<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v2 + 232, (a1 + 40));
  v6 = *(a1 + 64);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = v5[7];
  v5[7] = v6;
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = v5[8];
  v5[8] = v8;
  if (v9)
  {
    dispatch_release(v9);
  }
}

void sub_100105138(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c114_ZTSN8dispatch8callbackIU13block_pointerFvN6CtrXPC17ServerClientStateEN3xpc4dictENS0_IU13block_pointerFvhS4_EEEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    v5 = *(a2 + 64);
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a2 + 64);
  if (v5)
  {
LABEL_5:
    v5 = _Block_copy(v5);
  }

LABEL_6:
  v6 = *(a2 + 72);
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c114_ZTSN8dispatch8callbackIU13block_pointerFvN6CtrXPC17ServerClientStateEN3xpc4dictENS0_IU13block_pointerFvhS4_EEEEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 63) < 0)
  {
    v4 = *(a1 + 40);

    operator delete(v4);
  }
}

void *std::__tree<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_1001053E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,void,0>(*(a1 + 8), v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,dispatch::callback<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>>,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    _Block_release(v4);
  }

  if (*(a2 + 23) < 0)
  {
    v5 = *a2;

    operator delete(v5);
  }
}

uint64_t CtrXPC::Server::State::isConnectionAllowed(uint64_t a1, xpc_object_t *a2)
{
  logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
  if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
  {
    v4 = xpc_copy_description(*a2);
    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v10 = v5;
    if (v5)
    {
      memcpy(&__dst, v4, v5);
    }

    *(&__dst + v6) = 0;
    free(v4);
    p_dst = &__dst;
    if (v10 < 0)
    {
      p_dst = __dst;
    }

    *buf = 136315138;
    v12 = p_dst;
    _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Entitlement checks are disabled for client connections, allowing: %s \n", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__dst);
    }
  }

  return 1;
}

void ___ZN6CtrXPC6Server5State20handleNewClient_syncEN3xpc10connectionE_block_invoke(uint64_t a1, void **a2, void **a3)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  v8 = v5;
  if (!v5)
  {
    v8 = xpc_null_create();
    v6 = *a3;
    object = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    object = xpc_null_create();
    goto LABEL_6;
  }

  xpc_retain(v5);
  v6 = *a3;
  object = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  xpc_retain(v6);
LABEL_6:
  CtrXPC::Server::State::handleMessage_sync(v4, &v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v8);
}

void sub_1001056C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void CtrXPC::Server::State::handleMessage_sync(void *a1, xpc_object_t *a2, xpc::object *a3)
{
  v6 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v6 = xpc_null_create();
  }

  CtrXPC::ServerClientState::ServerClientState(&v32);
  v7 = a1[27];
  if (v7)
  {
    v8 = a1 + 27;
    do
    {
      v9 = v7[4];
      v10 = v9 >= v6;
      v11 = v9 < v6;
      if (v10)
      {
        v8 = v7;
      }

      v7 = v7[v11];
    }

    while (v7);
    if (v8 != a1 + 27 && v6 >= v8[4])
    {
      v13 = v8[5];
      v12 = v8[6];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = v33;
      v32 = v13;
      v33 = v12;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }
    }
  }

  xpc_release(v6);
  if (v32)
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
    if (!os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }

    CtrXPC::ServerClientState::getName(&v32, &v31);
    v16 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
    v17 = v31.__r_.__value_.__r.__words[0];
    xpc::object::to_string(__p, a3);
    v18 = &v31;
    if (v16 < 0)
    {
      v18 = v17;
    }

    if (v30 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }
  }

  else
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
    if (!os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }

    xpc::object::to_string(&v31, a2);
    v20 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
    v21 = v31.__r_.__value_.__r.__words[0];
    xpc::object::to_string(__p, a3);
    v18 = &v31;
    if (v20 < 0)
    {
      v18 = v21;
    }

    if (v30 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }
  }

  *buf = 136315394;
  v35 = v18;
  v36 = 2080;
  v37 = v19;
  _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Got message from: %s, of: %s ", buf, 0x16u);
  if ((v30 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_35:
    operator delete(v31.__r_.__value_.__l.__data_);
    v22 = *a3;
    v31.__r_.__value_.__r.__words[0] = v22;
    if (v22)
    {
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_35;
  }

LABEL_32:
  v22 = *a3;
  v31.__r_.__value_.__r.__words[0] = v22;
  if (v22)
  {
LABEL_33:
    xpc_retain(v22);
    v23 = v31.__r_.__value_.__r.__words[0];
    goto LABEL_37;
  }

LABEL_36:
  v23 = xpc_null_create();
  v31.__r_.__value_.__r.__words[0] = v23;
LABEL_37:
  if (xpc_get_type(v23) == &_xpc_type_dictionary)
  {
    v24 = *a2;
    object = v24;
    if (v24)
    {
      xpc_retain(v24);
    }

    else
    {
      object = xpc_null_create();
    }

    CtrXPC::Server::State::handlePublicMessage_sync(a1, &object, &v31.__r_.__value_.__l.__data_);
    xpc_release(object);
    object = 0;
  }

  if (xpc_get_type(v31.__r_.__value_.__l.__data_) == &_xpc_type_dictionary)
  {
    v25 = *a2;
    v27 = v25;
    if (v25)
    {
      xpc_retain(v25);
    }

    else
    {
      v27 = xpc_null_create();
    }

    CtrXPC::Server::State::handleInternalMessage_sync(a1, &v27, &v31.__r_.__value_.__l.__data_);
    xpc_release(v27);
    v27 = 0;
  }

  xpc_release(v31.__r_.__value_.__l.__data_);
  v26 = v33;
  if (v33)
  {
    if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
    }
  }
}

void sub_100105AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](&a20);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

void sub_100105C0C(_Unwind_Exception *a1)
{
  xpc::dict::~dict(v2);
  std::unique_ptr<std::__tree_node<std::__value_type<xpc::connection,CtrXPC::ServerClientState>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<xpc::connection,CtrXPC::ServerClientState>,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<xpc::connection,CtrXPC::ServerClientState>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<xpc::connection,CtrXPC::ServerClientState>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = *(v1 + 48);
      if (v3)
      {
        if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v3->__on_zero_shared)(v3);
          std::__shared_weak_count::__release_weak(v3);
        }
      }

      xpc_release(*(v1 + 32));
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void CtrXPC::Server::State::handlePublicMessage_sync(void *a1, xpc_object_t *a2, xpc_object_t *a3)
{
  value = xpc_dictionary_get_value(*a3, "command");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  __p = 0;
  v67 = 0;
  v68 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(object);
  v7 = a1[30];
  if (v7)
  {
    v8 = (v65 & 0x80u) == 0 ? v65 : v64[1];
    v9 = (v65 & 0x80u) == 0 ? v64 : v64[0];
    v10 = a1 + 30;
    do
    {
      v11 = *(v7 + 55);
      if (v11 >= 0)
      {
        v12 = *(v7 + 55);
      }

      else
      {
        v12 = *(v7 + 40);
      }

      if (v11 >= 0)
      {
        v13 = (v7 + 32);
      }

      else
      {
        v13 = *(v7 + 32);
      }

      if (v8 >= v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = v8;
      }

      v15 = memcmp(v13, v9, v14);
      v16 = v12 < v8;
      if (v15)
      {
        v16 = v15 < 0;
      }

      v17 = !v16;
      if (v16)
      {
        v18 = 8;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v10 = v7;
      }

      v7 = *(v7 + v18);
    }

    while (v7);
    if (v10 != a1 + 30)
    {
      v19 = *(v10 + 55);
      if (v19 >= 0)
      {
        v20 = *(v10 + 55);
      }

      else
      {
        v20 = v10[5];
      }

      if (v19 >= 0)
      {
        v21 = v10 + 4;
      }

      else
      {
        v21 = v10[4];
      }

      if (v20 >= v8)
      {
        v22 = v8;
      }

      else
      {
        v22 = v20;
      }

      v23 = memcmp(v9, v21, v22);
      v24 = v8 >= v20;
      if (v23)
      {
        v24 = v23 >= 0;
      }

      if (v24)
      {
        v25 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
        }

        else
        {
          v25 = xpc_null_create();
        }

        CtrXPC::ServerClientState::ServerClientState(&object);
        v26 = a1[27];
        if (v26)
        {
          v27 = a1 + 27;
          do
          {
            v28 = v26[4];
            v29 = v28 >= v25;
            v30 = v28 < v25;
            if (v29)
            {
              v27 = v26;
            }

            v26 = v26[v30];
          }

          while (v26);
          if (v27 != a1 + 27 && v25 >= v27[4])
          {
            v32 = v27[5];
            v31 = v27[6];
            if (v31)
            {
              atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v33 = v63;
            object = v32;
            v63 = v31;
            if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v33->__on_zero_shared)(v33);
              std::__shared_weak_count::__release_weak(v33);
            }
          }
        }

        xpc_release(v25);
        reply = xpc_dictionary_create_reply(*a3);
        if (reply || (reply = xpc_null_create()) != 0)
        {
          if (xpc_get_type(reply) == &_xpc_type_dictionary)
          {
            xpc_retain(reply);
            v35 = reply;
          }

          else
          {
            v35 = xpc_null_create();
          }
        }

        else
        {
          v35 = xpc_null_create();
          reply = 0;
        }

        xpc_release(reply);
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1174405120;
        aBlock[2] = ___ZN6CtrXPC6Server5State24handlePublicMessage_syncEN3xpc10connectionERNS2_4dictE_block_invoke;
        aBlock[3] = &__block_descriptor_tmp_36;
        v58 = v35;
        if (v35)
        {
          xpc_retain(v35);
          v36 = *a2;
          v59 = v36;
          if (v36)
          {
LABEL_67:
            xpc_retain(v36);
            goto LABEL_70;
          }
        }

        else
        {
          v58 = xpc_null_create();
          v36 = *a2;
          v59 = v36;
          if (v36)
          {
            goto LABEL_67;
          }
        }

        v59 = xpc_null_create();
LABEL_70:
        v37 = _Block_copy(aBlock);
        v38 = a1[3];
        if (v38)
        {
          dispatch_retain(v38);
        }

        v60 = v37;
        v61 = v38;
        v39 = *a2;
        v56 = v39;
        if (v39)
        {
          xpc_retain(v39);
          v40 = *a3;
          v55 = v40;
          if (v40)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v56 = xpc_null_create();
          v40 = *a3;
          v55 = v40;
          if (v40)
          {
LABEL_74:
            xpc_retain(v40);
            if (v37)
            {
              goto LABEL_75;
            }

            goto LABEL_89;
          }
        }

        v55 = xpc_null_create();
        if (v37)
        {
LABEL_75:
          v53 = _Block_copy(v37);
          v54 = v38;
          if (!v38)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }

LABEL_89:
        v53 = 0;
        v54 = v38;
        if (!v38)
        {
LABEL_77:
          v41 = checkEntitlementInServer(&v56, &v55, &v53);
          if (v54)
          {
            dispatch_release(v54);
          }

          if (v53)
          {
            _Block_release(v53);
          }

          xpc_release(v55);
          v55 = 0;
          xpc_release(v56);
          v56 = 0;
          if (!v41)
          {
            goto LABEL_123;
          }

          v43 = object;
          v42 = v63;
          if (v63)
          {
            atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v44 = *a3;
          if (*a3)
          {
            xpc_retain(*a3);
            if (!v37)
            {
LABEL_93:
              if (v38)
              {
                dispatch_retain(v38);
              }

              v45 = v10[7];
              if (v45)
              {
                v46 = _Block_copy(v45);
              }

              else
              {
                v46 = 0;
              }

              v47 = v10[8];
              __p = _NSConcreteStackBlock;
              v67 = 1174405120;
              v68 = ___ZNK8dispatch8callbackIU13block_pointerFvN6CtrXPC17ServerClientStateEN3xpc4dictENS0_IU13block_pointerFvhS4_EEEEEclIJS2_S4_S7_EEEvDpT__block_invoke;
              v69 = &__block_descriptor_tmp_37;
              if (v46)
              {
                v70 = _Block_copy(v46);
                v71 = v43;
                v72 = v42;
                if (!v42)
                {
                  goto LABEL_101;
                }
              }

              else
              {
                v70 = 0;
                v71 = v43;
                v72 = v42;
                if (!v42)
                {
LABEL_101:
                  v73 = v44;
                  if (v44)
                  {
                    xpc_retain(v44);
                    if (v37)
                    {
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    v73 = xpc_null_create();
                    if (v37)
                    {
LABEL_103:
                      v74 = _Block_copy(v37);
                      v75 = v38;
                      if (!v38)
                      {
LABEL_105:
                        dispatch_async(v47, &__p);
                        if (v75)
                        {
                          dispatch_release(v75);
                        }

                        if (v74)
                        {
                          _Block_release(v74);
                        }

                        xpc_release(v73);
                        v73 = 0;
                        v48 = v72;
                        if (v72 && !atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v48->__on_zero_shared)(v48);
                          std::__shared_weak_count::__release_weak(v48);
                        }

                        if (v70)
                        {
                          _Block_release(v70);
                        }

                        if (v46)
                        {
                          _Block_release(v46);
                        }

                        if (v38)
                        {
                          dispatch_release(v38);
                        }

                        if (v37)
                        {
                          _Block_release(v37);
                        }

                        xpc_release(v44);
                        if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v42->__on_zero_shared)(v42);
                          std::__shared_weak_count::__release_weak(v42);
                        }

LABEL_123:
                        v49 = xpc_null_create();
                        v50 = xpc_null_create();
                        v51 = *a3;
                        *a3 = v49;
                        xpc_release(v51);
                        xpc_release(v50);
                        if (v61)
                        {
                          dispatch_release(v61);
                        }

                        if (v60)
                        {
                          _Block_release(v60);
                        }

                        xpc_release(v59);
                        v59 = 0;
                        xpc_release(v58);
                        v58 = 0;
                        xpc_release(v35);
                        v52 = v63;
                        if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v52->__on_zero_shared)(v52);
                          std::__shared_weak_count::__release_weak(v52);
                        }

                        goto LABEL_130;
                      }

LABEL_104:
                      dispatch_retain(v38);
                      goto LABEL_105;
                    }
                  }

                  v74 = 0;
                  v75 = v38;
                  if (!v38)
                  {
                    goto LABEL_105;
                  }

                  goto LABEL_104;
                }
              }

              atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
              goto LABEL_101;
            }
          }

          else
          {
            v44 = xpc_null_create();
            if (!v37)
            {
              goto LABEL_93;
            }
          }

          v37 = _Block_copy(v37);
          goto LABEL_93;
        }

LABEL_76:
        dispatch_retain(v38);
        goto LABEL_77;
      }
    }
  }

LABEL_130:
  if (v65 < 0)
  {
    operator delete(v64[0]);
  }
}

void sub_100106414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, xpc_object_t a17, xpc_object_t a18, char a19, uint64_t a20, xpc_object_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  xpc_release(object);
  object = 0;
  xpc_release(a12);
  a12 = 0;
  dispatch::callback<void({block_pointer})(void)>::~callback(&a19);
  xpc_release(a18);
  a18 = 0;
  xpc_release(a17);
  a17 = 0;
  xpc_release(v34);
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](&a21);
  if (a28 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void CtrXPC::Server::State::handleInternalMessage_sync(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3)
{
  value = xpc_dictionary_get_value(*a3, "command");
  object.__r_.__value_.__r.__words[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  memset(&buf, 0, sizeof(buf));
  xpc::dyn_cast_or_default();
  xpc_release(object.__r_.__value_.__l.__data_);
  v6 = v129;
  v7 = v129;
  if ((v129 & 0x80u) != 0)
  {
    v6 = v128;
  }

  if (v6)
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      xpc::object::to_string(&buf, a3);
      v9 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
      LODWORD(object.__r_.__value_.__l.__data_) = 136315138;
      *(object.__r_.__value_.__r.__words + 4) = v9;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "internal message sync dict: %s", &object, 0xCu);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    reply = xpc_dictionary_create_reply(*a3);
    if (reply || (reply = xpc_null_create()) != 0)
    {
      if (xpc_get_type(reply) == &_xpc_type_dictionary)
      {
        xpc_retain(reply);
        v11 = reply;
      }

      else
      {
        v11 = xpc_null_create();
      }
    }

    else
    {
      v11 = xpc_null_create();
      reply = 0;
    }

    xpc_release(reply);
    v12 = strlen("checkIn");
    v13 = v129;
    if ((v129 & 0x8000000000000000) != 0)
    {
      if (v12 == v128)
      {
        if (v12 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(__s1, "checkIn", v12))
        {
          goto LABEL_42;
        }
      }
    }

    else if (v12 == v129 && !memcmp(&__s1, "checkIn", v12))
    {
LABEL_42:
      v18 = xpc_dictionary_get_value(*a3, "clientName");
      v126 = v18;
      if (v18)
      {
        xpc_retain(v18);
      }

      else
      {
        v126 = xpc_null_create();
      }

      memset(&buf, 0, sizeof(buf));
      xpc::dyn_cast_or_default();
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      xpc_release(v126);
      v21 = *a2;
      if (*a2)
      {
        xpc_retain(*a2);
      }

      else
      {
        v21 = xpc_null_create();
      }

      CtrXPC::ServerClientState::ServerClientState(&buf);
      v22 = *(a1 + 216);
      if (v22)
      {
        v23 = (a1 + 216);
        do
        {
          v24 = v22[4];
          v25 = v24 >= v21;
          v26 = v24 < v21;
          if (v25)
          {
            v23 = v22;
          }

          v22 = v22[v26];
        }

        while (v22);
        if (v23 != (a1 + 216) && v21 >= v23[4])
        {
          v28 = v23[5];
          v27 = v23[6];
          if (v27)
          {
            atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
          }

          size = buf.__r_.__value_.__l.__size_;
          buf.__r_.__value_.__r.__words[0] = v28;
          buf.__r_.__value_.__l.__size_ = v27;
          if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (size->__on_zero_shared)(size);
            std::__shared_weak_count::__release_weak(size);
          }
        }
      }

      xpc_release(v21);
      if (buf.__r_.__value_.__r.__words[0])
      {
        CtrXPC::ServerClientState::setCheckedIn(&buf, &object);
      }

      v30 = buf.__r_.__value_.__l.__size_;
      if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v30->__on_zero_shared)(v30);
        std::__shared_weak_count::__release_weak(v30);
      }

      if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(object.__r_.__value_.__l.__data_);
      }

LABEL_226:
      v45 = 0;
      goto LABEL_227;
    }

    v14 = strlen("eventsOn");
    if ((v13 & 0x80000000) != 0)
    {
      if (v14 == v128)
      {
        if (v14 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(__s1, "eventsOn", v14))
        {
LABEL_44:
          v19 = xpc_dictionary_get_value(*a3, "eventList");
          object.__r_.__value_.__r.__words[0] = v19;
          if (v19)
          {
            xpc_retain(v19);
          }

          else
          {
            object.__r_.__value_.__r.__words[0] = xpc_null_create();
          }

          xpc::bridge(&buf, &object, v20);
          v31 = buf.__r_.__value_.__r.__words[0];
          if (buf.__r_.__value_.__r.__words[0] && (v32 = CFGetTypeID(buf.__r_.__value_.__l.__data_), v32 == CFArrayGetTypeID()))
          {
            v126 = v31;
            CFRetain(v31);
            v33 = buf.__r_.__value_.__r.__words[0];
            if (!buf.__r_.__value_.__r.__words[0])
            {
LABEL_79:
              xpc_release(object.__r_.__value_.__l.__data_);
              if (v31)
              {
                theArray = v31;
                if (gSrpModeNetInfo == 1)
                {
                  v34 = CFStringCreateWithCString(0, "Thread:NetworkData", 0x8000100u);
                  v35 = CFStringCreateWithCString(0, "Thread:Services", 0x8000100u);
                  v36 = CFStringCreateWithCString(0, "WakeOnDeviceConnectionStatus", 0x8000100u);
                  v113 = CFStringCreateWithCString(0, "ThreadNeighborMeshLocalAddress", 0x8000100u);
                  v37 = *a2;
                  if (*a2)
                  {
                    xpc_retain(*a2);
                  }

                  else
                  {
                    v37 = xpc_null_create();
                  }

                  CtrXPC::ServerClientState::ServerClientState(&object);
                  v62 = *(a1 + 216);
                  if (v62)
                  {
                    v63 = (a1 + 216);
                    do
                    {
                      v64 = v62[4];
                      v25 = v64 >= v37;
                      v65 = v64 < v37;
                      if (v25)
                      {
                        v63 = v62;
                      }

                      v62 = v62[v65];
                    }

                    while (v62);
                    if (v63 != (a1 + 216) && v37 >= v63[4])
                    {
                      v67 = v63[5];
                      v66 = v63[6];
                      if (v66)
                      {
                        atomic_fetch_add_explicit((v66 + 8), 1uLL, memory_order_relaxed);
                      }

                      v68 = object.__r_.__value_.__l.__size_;
                      object.__r_.__value_.__r.__words[0] = v67;
                      object.__r_.__value_.__l.__size_ = v66;
                      if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v68->__on_zero_shared)(v68);
                        std::__shared_weak_count::__release_weak(v68);
                      }
                    }
                  }

                  v111 = v36;
                  xpc_release(v37);
                  CtrXPC::ServerClientState::getName(&object, &buf);
                  v69 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                  v70 = buf.__r_.__value_.__l.__size_;
                  v71 = buf.__r_.__value_.__r.__words[0];
                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    p_buf = &buf;
                  }

                  else
                  {
                    p_buf = buf.__r_.__value_.__r.__words[0];
                  }

                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v70 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                  }

                  if (v70 >= 14)
                  {
                    v73 = p_buf + v70;
                    v74 = p_buf;
                    do
                    {
                      v75 = memchr(v74, 115, v70 - 13);
                      if (!v75)
                      {
                        break;
                      }

                      if (*v75 == 0x736E646D2D707273 && *(v75 + 6) == 0x79786F72702D736ELL)
                      {
                        if (v75 == v73 || v75 - p_buf == -1)
                        {
                          break;
                        }

                        Count = CFArrayGetCount(v31);
                        v86 = v34;
                        v87 = v111;
                        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                        {
                          v88 = Count;
                          operator delete(buf.__r_.__value_.__l.__data_);
                          Count = v88;
                        }

                        if (Count >= 1)
                        {
                          v135.length = CFArrayGetCount(theArray);
                          v135.location = 0;
                          if (CFArrayContainsValue(theArray, v135, v34) == 1)
                          {
                            v89 = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
                            if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
                            {
                              LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                              _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_INFO, "eventsOn Thread:NetworkData Subscription", &buf, 2u);
                            }

                            RcpHostContext::reportThreadNetworkDataToClient(RcpHostContext::sRcpHostContext);
                          }

                          v136.length = CFArrayGetCount(theArray);
                          v136.location = 0;
                          if (CFArrayContainsValue(theArray, v136, v35) == 1)
                          {
                            v90 = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
                            if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
                            {
                              LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                              _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_INFO, "eventsOn Thread:Services Subscription", &buf, 2u);
                            }

                            RcpHostContext::reportThreadServicesToClient(RcpHostContext::sRcpHostContext);
                          }

                          v137.length = CFArrayGetCount(theArray);
                          v137.location = 0;
                          if (CFArrayContainsValue(theArray, v137, v111) == 1)
                          {
                            v91 = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
                            if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
                            {
                              LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                              _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_INFO, "eventsOn WakeOnDeviceConnectionStatus Subscription", &buf, 2u);
                            }

                            RcpHostContext::reportWakeOnDeviceConnectionStatusToClient(RcpHostContext::sRcpHostContext);
                          }

                          v138.length = CFArrayGetCount(theArray);
                          v138.location = 0;
                          if (CFArrayContainsValue(theArray, v138, v113) == 1)
                          {
                            v92 = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
                            if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
                            {
                              LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                              _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_INFO, "eventsOn ThreadNeighborMeshLocalAddress Subscription", &buf, 2u);
                            }

                            RcpHostContext::reportThreadNeighborMeshLocalAddressToClient(RcpHostContext::sRcpHostContext);
                          }
                        }

                        goto LABEL_206;
                      }

                      v74 = (v75 + 1);
                      v70 = v73 - v74;
                    }

                    while (v73 - v74 >= 14);
                  }

                  if (v69 < 0)
                  {
                    operator delete(v71);
                  }

                  v86 = v34;
                  v87 = v111;
LABEL_206:
                  if (v86)
                  {
                    CFRelease(v86);
                  }

                  if (v35)
                  {
                    CFRelease(v35);
                  }

                  if (v87)
                  {
                    CFRelease(v87);
                  }

                  if (v113)
                  {
                    CFRelease(v113);
                  }
                }

                else
                {
                  v38 = CFStringCreateWithCString(0, "Thread:Services", 0x8000100u);
                  v39 = CFStringCreateWithCString(0, "WakeOnDeviceConnectionStatus", 0x8000100u);
                  v40 = CFStringCreateWithCString(0, "ThreadNeighborMeshLocalAddress", 0x8000100u);
                  v41 = *a2;
                  if (*a2)
                  {
                    xpc_retain(*a2);
                  }

                  else
                  {
                    v41 = xpc_null_create();
                  }

                  v114 = v38;
                  CtrXPC::ServerClientState::ServerClientState(&object);
                  v46 = *(a1 + 216);
                  if (v46)
                  {
                    v47 = (a1 + 216);
                    do
                    {
                      v48 = v46[4];
                      v25 = v48 >= v41;
                      v49 = v48 < v41;
                      if (v25)
                      {
                        v47 = v46;
                      }

                      v46 = v46[v49];
                    }

                    while (v46);
                    if (v47 != (a1 + 216) && v41 >= v47[4])
                    {
                      v51 = v47[5];
                      v50 = v47[6];
                      if (v50)
                      {
                        atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
                      }

                      v52 = object.__r_.__value_.__l.__size_;
                      object.__r_.__value_.__r.__words[0] = v51;
                      object.__r_.__value_.__l.__size_ = v50;
                      if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v52->__on_zero_shared)(v52);
                        std::__shared_weak_count::__release_weak(v52);
                      }
                    }
                  }

                  v53 = v39;
                  xpc_release(v41);
                  CtrXPC::ServerClientState::getName(&object, &buf);
                  v54 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                  v55 = buf.__r_.__value_.__l.__size_;
                  v56 = buf.__r_.__value_.__r.__words[0];
                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v57 = &buf;
                  }

                  else
                  {
                    v57 = buf.__r_.__value_.__r.__words[0];
                  }

                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v55 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                  }

                  if (v55 >= 14)
                  {
                    v58 = v57 + v55;
                    v59 = v57;
                    do
                    {
                      v60 = memchr(v59, 115, v55 - 13);
                      if (!v60)
                      {
                        break;
                      }

                      if (*v60 == 0x736E646D2D707273 && *(v60 + 6) == 0x79786F72702D736ELL)
                      {
                        if (v60 == v58 || v60 - v57 == -1)
                        {
                          break;
                        }

                        v77 = CFArrayGetCount(v31);
                        v78 = v53;
                        v79 = v114;
                        v80 = v40;
                        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                        {
                          v81 = v77;
                          operator delete(buf.__r_.__value_.__l.__data_);
                          v77 = v81;
                        }

                        if (v77 >= 1)
                        {
                          v132.length = CFArrayGetCount(theArray);
                          v132.location = 0;
                          if (CFArrayContainsValue(theArray, v132, v114) == 1)
                          {
                            v82 = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
                            if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
                            {
                              LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                              _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "eventsOn Thread:Services Subscription", &buf, 2u);
                            }

                            RcpHostContext::reportThreadServicesToClient(RcpHostContext::sRcpHostContext);
                          }

                          v133.length = CFArrayGetCount(theArray);
                          v133.location = 0;
                          if (CFArrayContainsValue(theArray, v133, v78) == 1)
                          {
                            v83 = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
                            if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
                            {
                              LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                              _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "eventsOn WakeOnDeviceConnectionStatus Subscription", &buf, 2u);
                            }

                            RcpHostContext::reportWakeOnDeviceConnectionStatusToClient(RcpHostContext::sRcpHostContext);
                          }

                          v134.length = CFArrayGetCount(theArray);
                          v134.location = 0;
                          if (CFArrayContainsValue(theArray, v134, v40) == 1)
                          {
                            v84 = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
                            if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
                            {
                              LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                              _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "eventsOn ThreadNeighborMeshLocalAddress Subscription", &buf, 2u);
                            }

                            RcpHostContext::reportThreadNeighborMeshLocalAddressToClient(RcpHostContext::sRcpHostContext);
                          }
                        }

                        goto LABEL_176;
                      }

                      v59 = (v60 + 1);
                      v55 = v58 - v59;
                    }

                    while (v58 - v59 >= 14);
                  }

                  if (v54 < 0)
                  {
                    operator delete(v56);
                  }

                  v78 = v53;
                  v79 = v114;
                  v80 = v40;
LABEL_176:
                  if (v79)
                  {
                    CFRelease(v79);
                  }

                  if (v78)
                  {
                    CFRelease(v78);
                  }

                  if (v80)
                  {
                    CFRelease(v80);
                  }
                }

                v93 = object.__r_.__value_.__l.__size_;
                if (object.__r_.__value_.__l.__size_ && !atomic_fetch_add((object.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v93->__on_zero_shared)(v93);
                  std::__shared_weak_count::__release_weak(v93);
                }

                v94 = *a2;
                v125 = v94;
                if (v94)
                {
                  xpc_retain(v94);
                  v95 = v126;
                  v124 = v126;
                  if (!v126)
                  {
                    goto LABEL_222;
                  }
                }

                else
                {
                  v95 = v126;
                  v124 = v126;
                  v125 = xpc_null_create();
                  if (!v126)
                  {
LABEL_222:
                    CtrXPC::Server::State::registerNotification(a1, &v125, 1, &v124);
                    if (v124)
                    {
                      CFRelease(v124);
                    }

                    xpc_release(v125);
                    v125 = 0;
                    if (v95)
                    {
                      CFRelease(v95);
                    }

                    goto LABEL_226;
                  }
                }

                CFRetain(v95);
                goto LABEL_222;
              }

LABEL_95:
              v45 = 3;
LABEL_227:
              v96 = xpc_int64_create(v45);
              if (!v96)
              {
                v96 = xpc_null_create();
              }

              xpc_dictionary_set_value(v11, "commandResult", v96);
              v97 = xpc_null_create();
              xpc_release(v96);
              xpc_release(v97);
              v98 = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
              if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
              {
                p_s1 = &__s1;
                if ((v129 & 0x80u) != 0)
                {
                  p_s1 = __s1;
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
                *(buf.__r_.__value_.__r.__words + 4) = p_s1;
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = "success";
                _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_INFO, "Replying to client's command:: %s, with return code: %s ", &buf, 0x16u);
              }

              xpc_connection_send_message(*a2, v11);
              v100 = xpc_null_create();
              v101 = xpc_null_create();
              v102 = *a3;
              *a3 = v100;
              xpc_release(v102);
              xpc_release(v101);
              v103 = strlen("eventsOn");
              if ((v129 & 0x8000000000000000) != 0)
              {
                if (v103 != v128)
                {
                  goto LABEL_268;
                }

                if (v103 == -1)
                {
                  std::string::__throw_out_of_range[abi:ne200100]();
                }

                if (memcmp(__s1, "eventsOn", v103))
                {
                  goto LABEL_268;
                }

                goto LABEL_240;
              }

              if (v103 == v129 && !memcmp(&__s1, "eventsOn", v103))
              {
LABEL_240:
                if (*(a1 + 176) == 1)
                {
                  v104 = xpc_dictionary_create(0, 0, 0);
                  if (v104 || (v104 = xpc_null_create()) != 0)
                  {
                    if (xpc_get_type(v104) == &_xpc_type_dictionary)
                    {
                      xpc_retain(v104);
                      v105 = v104;
                    }

                    else
                    {
                      v105 = xpc_null_create();
                    }
                  }

                  else
                  {
                    v105 = xpc_null_create();
                    v104 = 0;
                  }

                  xpc_release(v104);
                  v106 = xpc_string_create("ServerStateStarted");
                  if (!v106)
                  {
                    v106 = xpc_null_create();
                  }

                  xpc_dictionary_set_value(v105, "KeyServerState", v106);
                  v107 = xpc_null_create();
                  xpc_release(v106);
                  xpc_release(v107);
                  v108 = *a2;
                  v121 = v108;
                  if (v108)
                  {
                    xpc_retain(v108);
                  }

                  else
                  {
                    v121 = xpc_null_create();
                  }

                  v109 = strlen("EventServerStateChange");
                  if (v109 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    std::string::__throw_length_error[abi:ne200100]();
                  }

                  v110 = v109;
                  if (v109 >= 0x17)
                  {
                    operator new();
                  }

                  v120 = v109;
                  if (v109)
                  {
                    memmove(&__dst, "EventServerStateChange", v109);
                  }

                  *(&__dst + v110) = 0;
                  v118 = v105;
                  if (v105)
                  {
                    xpc_retain(v105);
                  }

                  else
                  {
                    v118 = xpc_null_create();
                  }

                  aBlock = 0;
                  v117 = 0;
                  CtrXPC::Server::State::unicast(a1, &v121, &__dst, &v118, &aBlock);
                  if (v117)
                  {
                    dispatch_release(v117);
                  }

                  if (aBlock)
                  {
                    _Block_release(aBlock);
                  }

                  xpc_release(v118);
                  v118 = 0;
                  if (v120 < 0)
                  {
                    operator delete(__dst);
                  }

                  xpc_release(v121);
                  v121 = 0;
                  xpc_release(v105);
                }
              }

LABEL_268:
              xpc_release(v11);
              v7 = v129;
              goto LABEL_269;
            }
          }

          else
          {
            v31 = 0;
            v126 = 0;
            v33 = buf.__r_.__value_.__r.__words[0];
            if (!buf.__r_.__value_.__r.__words[0])
            {
              goto LABEL_79;
            }
          }

          CFRelease(v33);
          goto LABEL_79;
        }
      }
    }

    else if (v14 == v13 && !memcmp(&__s1, "eventsOn", v14))
    {
      goto LABEL_44;
    }

    v15 = strlen("eventsOff");
    if ((v13 & 0x80000000) != 0)
    {
      if (v15 != v128)
      {
        goto LABEL_268;
      }

      if (v15 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(__s1, "eventsOff", v15))
      {
        goto LABEL_268;
      }
    }

    else if (v15 != v13 || memcmp(&__s1, "eventsOff", v15))
    {
      goto LABEL_268;
    }

    v16 = xpc_dictionary_get_value(*a3, "eventList");
    object.__r_.__value_.__r.__words[0] = v16;
    if (v16)
    {
      xpc_retain(v16);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    xpc::bridge(&buf, &object, v17);
    v42 = buf.__r_.__value_.__r.__words[0];
    if (buf.__r_.__value_.__r.__words[0])
    {
      v43 = CFGetTypeID(buf.__r_.__value_.__l.__data_);
      if (v43 == CFArrayGetTypeID())
      {
        CFRetain(v42);
      }

      else
      {
        v42 = 0;
      }

      if (buf.__r_.__value_.__r.__words[0])
      {
        CFRelease(buf.__r_.__value_.__l.__data_);
      }
    }

    xpc_release(object.__r_.__value_.__l.__data_);
    if (v42)
    {
      v44 = *a2;
      v123 = v44;
      if (v44)
      {
        xpc_retain(v44);
      }

      else
      {
        v123 = xpc_null_create();
      }

      cf = v42;
      CFRetain(v42);
      CtrXPC::Server::State::registerNotification(a1, &v123, 0, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      xpc_release(v123);
      v123 = 0;
      CFRelease(v42);
      v45 = 0;
      goto LABEL_227;
    }

    goto LABEL_95;
  }

LABEL_269:
  if ((v7 & 0x80) != 0)
  {
    operator delete(__s1);
  }
}

void sub_1001077B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, xpc_object_t object, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, xpc_object_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, xpc_object_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, xpc_object_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](&a35);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(&a28);
  xpc_release(v40);
  if (a34 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN6CtrXPC6Server5State24handlePublicMessage_syncEN3xpc10connectionERNS2_4dictE_block_invoke(uint64_t a1, unsigned int a2, xpc_object_t *a3)
{
  v6 = (a1 + 32);
  if (xpc_get_type(*(a1 + 32)) == &_xpc_type_dictionary)
  {
    v7 = xpc_int64_create(a2);
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    xpc_dictionary_set_value(*v6, "commandResult", v7);
    v8 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v8);
    if (xpc_get_type(*a3) == &_xpc_type_dictionary)
    {
      v9 = *a3;
      if (v9)
      {
        xpc_retain(v9);
      }

      else
      {
        v9 = xpc_null_create();
      }

      xpc_dictionary_set_value(*v6, "commandData", v9);
      v10 = xpc_null_create();
      xpc_release(v9);
      xpc_release(v10);
    }

    logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      xpc::object::to_string(__p, v6);
      if (v14 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      *buf = 136315138;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Sending Reply as: %s", buf, 0xCu);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  }
}

void sub_100107C7C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_32c15_ZTSN3xpc4dictE40c22_ZTSN3xpc10connectionE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    xpc_retain(v4);
    v5 = *(a2 + 40);
    *(a1 + 40) = v5;
    if (v5)
    {
      return xpc_retain(v5);
    }
  }

  else
  {
    *(a1 + 32) = xpc_null_create();
    v5 = *(a2 + 40);
    *(a1 + 40) = v5;
    if (v5)
    {
      return xpc_retain(v5);
    }
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c15_ZTSN3xpc4dictE40c22_ZTSN3xpc10connectionE(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  xpc_release(*(a1 + 32));
  *(a1 + 32) = 0;
}

void dispatch::block<void({block_pointer})(CtrXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)>)>::operator()<CtrXPC::ServerClientState const&,xpc::dict const&,dispatch::callback<void({block_pointer})(unsigned char,xpc::dict)> const&>(uint64_t *a1, uint64_t *a2, void **a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a2[1];
  v14 = *a2;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *a3;
  v13 = v7;
  if (!v7)
  {
    v13 = xpc_null_create();
    v8 = *a4;
    if (!*a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  xpc_retain(v7);
  v8 = *a4;
  if (*a4)
  {
LABEL_7:
    v8 = _Block_copy(v8);
  }

LABEL_8:
  v9 = *(a4 + 8);
  aBlock = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  (*(v5 + 16))(v5, &v14, &v13, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v13);
  v13 = 0;
  v10 = v15;
  if (v15)
  {
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

void sub_100107EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object, char a13)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a10);
  xpc_release(object);
  object = 0;
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32c119_ZTSN8dispatch5blockIU13block_pointerFvN6CtrXPC17ServerClientStateEN3xpc4dictENS_8callbackIU13block_pointerFvhS4_EEEEEE40c32_ZTSN6CtrXPC17ServerClientStateE56c15_ZTSN3xpc4dictE64c57_ZTSN8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEE(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v6 = a2[5];
  v5 = a2[6];
  a1[4] = v4;
  a1[5] = v6;
  a1[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a2[7];
  a1[7] = v7;
  if (!v7)
  {
    a1[7] = xpc_null_create();
    v8 = a2[8];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  xpc_retain(v7);
  v8 = a2[8];
  if (v8)
  {
LABEL_9:
    v8 = _Block_copy(v8);
  }

LABEL_10:
  v9 = a2[9];
  a1[8] = v8;
  a1[9] = v9;
  if (v9)
  {

    dispatch_retain(v9);
  }
}

void __destroy_helper_block_e8_32c119_ZTSN8dispatch5blockIU13block_pointerFvN6CtrXPC17ServerClientStateEN3xpc4dictENS_8callbackIU13block_pointerFvhS4_EEEEEE40c32_ZTSN6CtrXPC17ServerClientStateE56c15_ZTSN3xpc4dictE64c57_ZTSN8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    _Block_release(v3);
  }

  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  v4 = *(a1 + 48);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = *(a1 + 32);
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *(a1 + 32);
    if (!v5)
    {
      return;
    }
  }

  _Block_release(v5);
}

void CtrXPC::Server::State::registerNotification(uint64_t a1, void **a2, char a3, const void **a4)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = ___ZN6CtrXPC6Server5State20registerNotificationEN3xpc10connectionEbN3ctu2cf11CFSharedRefIK9__CFArrayEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_47;
  v7 = *a2;
  v9[4] = a1;
  object = v7;
  if (!v7)
  {
    object = xpc_null_create();
    v12 = a3;
    v8 = *a4;
    cf = v8;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  xpc_retain(v7);
  v12 = a3;
  v8 = *a4;
  cf = v8;
  if (v8)
  {
LABEL_5:
    CFRetain(v8);
  }

LABEL_6:
  ctu::SharedSynchronizable<ctu::XpcServer>::execute_wrapped((a1 + 8), v9);
  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
}

void CtrXPC::Server::State::unicast(uint64_t a1, void **a2, uint64_t a3, void **a4, uint64_t a5)
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1174405120;
  v13[2] = ___ZN6CtrXPC6Server5State7unicastEN3xpc10connectionENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS2_4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke;
  v13[3] = &__block_descriptor_tmp_54;
  v9 = *a4;
  v13[4] = a1;
  v14 = v9;
  if (v9)
  {
    xpc_retain(v9);
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      __p = *a3;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = xpc_null_create();
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
LABEL_6:
  v10 = *a2;
  v16 = v10;
  if (!v10)
  {
    v16 = xpc_null_create();
    v11 = *a5;
    if (!*a5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  xpc_retain(v10);
  v11 = *a5;
  if (*a5)
  {
LABEL_10:
    v11 = _Block_copy(v11);
  }

LABEL_11:
  v12 = *(a5 + 8);
  aBlock = v11;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  ctu::SharedSynchronizable<ctu::XpcServer>::execute_wrapped((a1 + 8), v13);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v16);
  v16 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(v14);
}

void ___ZN6CtrXPC6Server5State20registerNotificationEN3xpc10connectionEbN3ctu2cf11CFSharedRefIK9__CFArrayEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (a1 + 40);
  v4 = *(a1 + 40);
  if (v4)
  {
    xpc_retain(*(a1 + 40));
  }

  else
  {
    v4 = xpc_null_create();
  }

  CtrXPC::ServerClientState::ServerClientState(&v23);
  v7 = *(v2 + 216);
  v6 = (v2 + 216);
  v5 = v7;
  if (v7)
  {
    v8 = v6;
    do
    {
      v9 = v5[4];
      v10 = v9 >= v4;
      v11 = v9 < v4;
      if (v10)
      {
        v8 = v5;
      }

      v5 = v5[v11];
    }

    while (v5);
    if (v8 != v6 && v4 >= v8[4])
    {
      v13 = v8[5];
      v12 = v8[6];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = v24;
      v23 = v13;
      v24 = v12;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }
    }
  }

  xpc_release(v4);
  if (v23)
  {
    v15 = *(a1 + 56);
    v16 = *(a1 + 48);
    cf = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    CtrXPC::ServerClientState::registerNotification_sync(&v23, v15, &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      xpc::object::to_string(__p, v3);
      v18 = v21 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v26 = "is not in client list";
      v27 = 2080;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s %s ", buf, 0x16u);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v19 = v24;
  if (v24)
  {
    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }
  }
}

void sub_100108530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_10010857C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

CFTypeRef __copy_helper_block_e8_40c22_ZTSN3xpc10connectionE48c39_ZTSN3ctu2cf11CFSharedRefIK9__CFArrayEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (!v4)
  {
    *(a1 + 40) = xpc_null_create();
    result = *(a2 + 48);
    *(a1 + 48) = result;
    if (!result)
    {
      return result;
    }

    return CFRetain(result);
  }

  xpc_retain(v4);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c22_ZTSN3xpc10connectionE48c39_ZTSN3ctu2cf11CFSharedRefIK9__CFArrayEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

void ___ZN6CtrXPC6Server5State7unicastEN3xpc10connectionENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS2_4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_dictionary)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  if (xpc_get_type(*(a1 + 40)) == &_xpc_type_dictionary)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      xpc_retain(*(a1 + 40));
    }

    else
    {
      v5 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, "eventData", v5);
    v6 = xpc_null_create();
    xpc_release(v5);
    xpc_release(v6);
  }

  v7 = xpc_string_create("eventNotification");
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "command", v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v9 = (a1 + 48);
  v10 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    v10 = *v9;
  }

  v11 = xpc_string_create(v10);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "event", v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = dispatch_group_create();
  v14 = v2[2];
  if (!v14 || (v15 = v2[1], (v16 = std::__shared_weak_count::lock(v14)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v17 = v16;
  atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v18 = *(a1 + 72);
    if (v18)
    {
LABEL_22:
      xpc_retain(v18);
      goto LABEL_25;
    }
  }

  else
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v17);
    v18 = *(a1 + 72);
    if (v18)
    {
      goto LABEL_22;
    }
  }

  v18 = xpc_null_create();
LABEL_25:
  CtrXPC::ServerClientState::ServerClientState(&v62);
  v19 = v2[27];
  if (v19)
  {
    v20 = v2 + 27;
    do
    {
      v21 = v19[4];
      v22 = v21 >= v18;
      v23 = v21 < v18;
      if (v22)
      {
        v20 = v19;
      }

      v19 = v19[v23];
    }

    while (v19);
    if (v20 != v2 + 27 && v18 >= v20[4])
    {
      v25 = v20[5];
      v24 = v20[6];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = v63;
      v62 = v25;
      v63 = v24;
      if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }
    }
  }

  xpc_release(v18);
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v61, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *&v61.__r_.__value_.__l.__data_ = *v9;
    v61.__r_.__value_.__r.__words[2] = *(a1 + 64);
  }

  isNotificationRegistered_sync = CtrXPC::ServerClientState::isNotificationRegistered_sync(&v62, &v61);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    v28 = v15;
    v29 = isNotificationRegistered_sync;
    operator delete(v61.__r_.__value_.__l.__data_);
    v30 = v29;
    v15 = v28;
    if (!v30)
    {
      goto LABEL_68;
    }
  }

  else if (!isNotificationRegistered_sync)
  {
    goto LABEL_68;
  }

  logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
  if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
  {
    message = v4;
    v32 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v32 = *v9;
    }

    v46 = v15;
    v33 = v13;
    CtrXPC::ServerClientState::getName(&v62, &__p);
    v34 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v35 = __p.__r_.__value_.__r.__words[0];
    SystemTime = TelephonyUtilGetSystemTime();
    p_p = &__p;
    *buf = 136315650;
    if (v34 < 0)
    {
      p_p = v35;
    }

    v65 = v32;
    v66 = 2080;
    v67 = p_p;
    v68 = 2048;
    v69 = SystemTime;
    _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Sending: %s, to: %s, at: %llu", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v13 = v33;
    v15 = v46;
    v4 = message;
  }

  if (*(a1 + 80) && *(a1 + 88))
  {
    dispatch_group_enter(v13);
    v38 = *(a1 + 72);
    v39 = v2[3];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 1174405120;
    handler[2] = ___ZN6CtrXPC6Server5State7unicastEN3xpc10connectionENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS2_4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke_48;
    handler[3] = &__block_descriptor_tmp_51;
    handler[4] = v15;
    v55 = v17;
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v56 = v62;
    v57 = v63;
    if (v63)
    {
      atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v58, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      *&v58.__r_.__value_.__l.__data_ = *v9;
      v58.__r_.__value_.__r.__words[2] = *(a1 + 64);
    }

    v59 = v13;
    xpc_connection_send_message_with_reply(v38, v4, v39, handler);
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    v40 = v57;
    if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
    }

    if (v55)
    {
      std::__shared_weak_count::__release_weak(v55);
    }
  }

  else
  {
    xpc_connection_send_message(*(a1 + 72), v4);
  }

LABEL_68:
  if (!*(a1 + 80) || !*(a1 + 88))
  {
    goto LABEL_87;
  }

  v41 = v2[3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = ___ZN6CtrXPC6Server5State7unicastEN3xpc10connectionENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS2_4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke_52;
  block[3] = &__block_descriptor_tmp_53;
  block[4] = v15;
  v49 = v17;
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v42 = *(a1 + 72);
  v50 = v42;
  if (!v42)
  {
    v50 = xpc_null_create();
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

LABEL_74:
    std::string::__init_copy_ctor_external(&v51, *(a1 + 48), *(a1 + 56));
    goto LABEL_75;
  }

  xpc_retain(v42);
  if (*(a1 + 71) < 0)
  {
    goto LABEL_74;
  }

LABEL_72:
  *&v51.__r_.__value_.__l.__data_ = *v9;
  v51.__r_.__value_.__r.__words[2] = *(a1 + 64);
LABEL_75:
  v43 = *(a1 + 80);
  if (v43)
  {
    v43 = _Block_copy(v43);
  }

  v44 = *(a1 + 88);
  aBlock = v43;
  object = v44;
  if (v44)
  {
    dispatch_retain(v44);
  }

  dispatch_group_notify(v13, v41, block);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  xpc_release(v50);
  v50 = 0;
  if (v49)
  {
    std::__shared_weak_count::__release_weak(v49);
  }

LABEL_87:
  dispatch_release(v13);
  v45 = v63;
  if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

  std::__shared_weak_count::__release_weak(v17);
  xpc_release(v4);
}

void sub_100108D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](v45 + 48);
  if (a29)
  {
    std::__shared_weak_count::__release_weak(a29);
  }

  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](v46 - 160);
  std::__shared_weak_count::__release_weak(v44);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void ___ZN6CtrXPC6Server5State7unicastEN3xpc10connectionENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS2_4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke_48(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2), (v12 = v3) != 0))
  {
    v4 = v3;
    if (*(a1 + 32))
    {
      logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        CtrXPC::ServerClientState::getName((a1 + 48), &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v7 = (a1 + 64);
        if (*(a1 + 87) < 0)
        {
          v7 = *v7;
        }

        SystemTime = TelephonyUtilGetSystemTime();
        *buf = 136315650;
        v14 = p_p;
        v15 = 2080;
        v16 = v7;
        v17 = 2048;
        v18 = SystemTime;
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s responded to: %s, at: %llu", buf, 0x20u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    dispatch_group_leave(*(a1 + 88));
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  else
  {
    v9 = *(a1 + 88);

    dispatch_group_leave(v9);
  }
}

void sub_100109098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](&a16);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void ___ZN6CtrXPC6Server5State7unicastEN3xpc10connectionENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS2_4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke_52(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(a1 + 32))
      {
        logging_obg = log_get_logging_obg("com.apple.wpantund.xpcserver", "default");
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          xpc::object::to_string(__p, (a1 + 48));
          v5 = __p[0];
          if (SHIBYTE(v12) >= 0)
          {
            v5 = __p;
          }

          v6 = (a1 + 56);
          if (*(a1 + 79) < 0)
          {
            v6 = *v6;
          }

          *buf = 136315394;
          v16 = v5;
          v17 = 2080;
          v18 = v6;
          _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Client: %s, responded to: %s", buf, 0x16u);
          if (SHIBYTE(v12) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = _Block_copy(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 88);
  __p[0] = _NSConcreteStackBlock;
  __p[1] = 1174405120;
  v12 = ___ZNK8dispatch8callbackIU13block_pointerFvvEEclIJEEEvDpT__block_invoke_0;
  v13 = &__block_descriptor_tmp_31;
  if (!v8)
  {
    aBlock = 0;
    dispatch_async(v9, __p);
    v10 = aBlock;
    if (!aBlock)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  aBlock = _Block_copy(v8);
  dispatch_async(v9, __p);
  v10 = aBlock;
  if (aBlock)
  {
LABEL_19:
    _Block_release(v10);
  }

LABEL_20:
  if (v8)
  {
    _Block_release(v8);
  }

  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void sub_10010930C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<CtrXPC::Server>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_100109324(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __copy_helper_block_e8_32c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE48c23_ZTSKN3xpc10connectionE56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 48);
  *(a1 + 48) = v5;
  if (v5)
  {
    xpc_retain(v5);
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
LABEL_5:
      v6 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v6;
      goto LABEL_8;
    }
  }

  else
  {
    *(a1 + 48) = xpc_null_create();
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
LABEL_8:
  v7 = *(a2 + 80);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a2 + 88);
  *(a1 + 80) = v7;
  *(a1 + 88) = v8;
  if (v8)
  {

    dispatch_retain(v8);
  }
}