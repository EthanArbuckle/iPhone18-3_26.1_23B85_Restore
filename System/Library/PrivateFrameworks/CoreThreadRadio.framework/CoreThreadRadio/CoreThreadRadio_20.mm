uint64_t __os_log_helper_16_0_2_4_0_4_0(uint64_t result, int a2, int a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  return result;
}

uint64_t ot::Posix::HdlcInterface::skywalk_open(ot::Posix::HdlcInterface *this)
{
  v36 = 0;
  ot::Posix::HdlcInterface::init_channel_data(this);
  if ((ot::Posix::HdlcInterface::start_channel("tsi", v1, v2) & 0x80000000) != 0)
  {
    gPciStatus = 3;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v34 = logging_obg;
      v33 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_4_0(v44, gPciStatus);
        _os_log_impl(&_mh_execute_header, v34, v33, " failed opening Skywalk channel gPciStatus=%d\n", v44, 8u);
      }
    }

    else if (!logging_obg)
    {
      v32 = &_os_log_default;
      v31 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v43, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v32, v31, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v43, 0x16u);
      }
    }

    return 1;
  }

  else
  {
    gPciStatus = 0;
    v30 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v30 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v29 = v30;
      v28 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_4_0(v42, gPciStatus);
        _os_log_impl(&_mh_execute_header, v29, v28, " opening Skywalk channel gPciStatus=%d\n", v42, 8u);
      }
    }

    else if (!v30)
    {
      v27 = &_os_log_default;
      v26 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v41, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v27, v26, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v41, 0x16u);
      }
    }

    if (pthread_create(&g_hci_thread_id, 0, ot::Posix::HdlcInterface::skywalk_read_thread, 0))
    {
      v25 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v25 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        oslog = v25;
        v23 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v8 = oslog;
          v9 = v23;
          __os_log_helper_16_0_0(v22);
          _os_log_impl(&_mh_execute_header, v8, v9, " failed to create skywalk rx thread\n", v22, 2u);
        }
      }

      else if (!v25)
      {
        v21 = &_os_log_default;
        v20 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v40, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v21, v20, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v40, 0x16u);
        }
      }

      return 1;
    }

    else
    {
      v19 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v19 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        v18 = v19;
        v17 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v6 = v18;
          v7 = v17;
          __os_log_helper_16_0_0(v16);
          _os_log_impl(&_mh_execute_header, v6, v7, " created skywalk rx thread\n", v16, 2u);
        }
      }

      else if (!v19)
      {
        v15 = &_os_log_default;
        v14 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v39, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v15, v14, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v39, 0x16u);
        }
      }

      if ((ot::Posix::create_pcie_error_listener(ot::Posix::errorCb, ot::Posix::chipResettingCb, ot::Posix::driverMetricsCb) & 1) == 0)
      {
        v13 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v13 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          v12 = v13;
          v11 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v4 = v12;
            v5 = v11;
            __os_log_helper_16_0_0(v10);
            _os_log_impl(&_mh_execute_header, v4, v5, " Event Listener failed\n", v10, 2u);
          }
        }

        else if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v38, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v38, 0x16u);
        }
      }

      return v36;
    }
  }
}

void ot::Posix::HdlcInterface::airship_close(uint64_t a1)
{
  if (gPciStatus == 3 || gPciStatus == 2)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v12, "airship_close", gPciStatus);
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s, Already Closed Airship channel gPciStatus=[%d]\n", v12, 0x12u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v11, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v11, 0x16u);
    }
  }

  else
  {
    gPciStatus = 3;
    if (*(a1 + 16))
    {
      v4 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v4 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v10, "airship_close");
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s, Closing interface...\n", v10, 0xCu);
        }
      }

      else if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v9, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v9, 0x16u);
      }

      v1 = *(a1 + 16);
      airship_ch_interface_close();
      v2 = *(a1 + 16);
      airship_ch_interface_destroy();
      *(a1 + 16) = 0;
    }

    v3 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v3 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v8, "airship_close", gPciStatus);
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s, Closed Airship channel gPciStatus=[%d]\n", v8, 0x12u);
      }
    }

    else if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v7, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v7, 0x16u);
    }
  }
}

void ot::Posix::HdlcInterface::skywalk_close(ot::Posix::HdlcInterface *this)
{
  gPciStatus = 3;
  ot::Posix::HdlcInterface::close_channel(this);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_4_0(v3, gPciStatus);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, " Closing Skywalk channel gPciStatus=%d\n", v3, 8u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v2, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v2, 0x16u);
  }
}

uint64_t ot::Posix::HdlcInterface::ForkPty(ot::Posix::HdlcInterface *this, const ot::Url::Url *a2)
{
  v52 = this;
  v51 = -1;
  v50 = -1;
  v49 = -1;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    oslog = logging_obg;
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = oslog;
      v42 = type;
      __os_log_helper_16_0_0(v45);
      _os_log_impl(&_mh_execute_header, log, v42, "Skywalk::ForkPty: \n", v45, 2u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v55, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v55, 0x16u);
  }

  memset(&__b, 0, sizeof(__b));
  cfmakeraw(&__b);
  __b.c_cflag = 51968;
  v50 = forkpty(&v51, 0, &__b, 0);
  if (v50 == -1)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v2, v3, v4, v5, v6, v7, v8, "ForkPty");
    handle_daemon_exit();
    exit(5);
  }

  if (v50)
  {
    v49 = fcntl(v51, 3);
    if (v49 == -1)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp", 47);
      otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", v25, v26, v27, v28, v29, v30, v31, "ForkPty");
      handle_daemon_exit();
      exit(5);
    }

    v49 = fcntl(v51, 4, v49 | 0x1000004u);
    if (v49 == -1)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp", 47);
      otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", v32, v33, v34, v35, v36, v37, v38, "ForkPty");
      handle_daemon_exit();
      exit(5);
    }
  }

  else
  {
    bzero(__file, 0x108uLL);
    v44 = 1;
    __file[0] = ot::Url::Url::GetPath(v52);
    for (i = 0; ; __file[v9] = i)
    {
      v40 = 0;
      if (v44 < 0x21)
      {
        i = ot::Url::Url::GetValue(v52, "forkpty-arg", i);
        v40 = i != 0;
      }

      if (!v40)
      {
        break;
      }

      v9 = v44++;
    }

    if (v44 >= 0x21)
    {
      otExitCodeToString(2);
      otLogCritPlat("exit(%d): %s line %d, %s, %s", v10, v11, v12, v13, v14, v15, v16, 2);
      handle_daemon_exit();
      exit(2);
    }

    __file[v44] = 0;
    v17 = execvp(__file[0], __file);
    v49 = v17;
    if (v17 == -1)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp", 47);
      otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", v18, v19, v20, v21, v22, v23, v24, "ForkPty");
      handle_daemon_exit();
      exit(5);
    }
  }

  return v51;
}

uint64_t ot::Url::Url::GetPath(ot::Url::Url *this)
{
  return *(this + 1);
}

{
  return ot::Url::Url::GetPath(this);
}

uint64_t ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::DiscardFrame(uint64_t a1)
{
  ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::SetSkipLength(a1, 0);
  ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::IgnoreError();
  result = ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetFrame(a1, v1);
  *a1 = result;
  v3 = *a1;
  *(a1 + 8) = a1 + 8202 - *a1;
  return result;
}

{
  return ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::DiscardFrame(a1);
}

uint64_t ot::Posix::HdlcInterface::ResetConnection(ot::Posix::HdlcInterface *this)
{
  v10 = this;
  v9 = 0;
  v8 = 0;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v6 = logging_obg;
    v5 = 1;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = v6;
      type = v5;
      __os_log_helper_16_0_0(v4);
      _os_log_impl(&_mh_execute_header, log, type, "Skywalk::ResetConnection:\n", v4, 2u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v11, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v11, 0x16u);
  }

  usleep(0x1E8480u);
  return v9;
}

void ot::Posix::HdlcInterface::airship_print_pkt_bytes(ot::Posix::HdlcInterface *this, unsigned __int8 *a2)
{
  v4 = a2;
  bzero(v8, 0xBB8uLL);
  for (i = 0; i < v4; ++i)
  {
    snprintf(&v8[3 * i], 0xBB8uLL, " %02X", *(this + i));
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_4_0_8_32(v7, v4, v8);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, " *****Airship Read Bytes****** len[%u] 0x[%s]", v7, 0x12u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v6, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v6, 0x16u);
  }
}

uint64_t __os_log_helper_16_2_2_4_0_8_32(uint64_t result, int a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 32;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

void ot::Posix::handleChipResettingCb(ot::Posix *this)
{
  pthread_mutex_lock(&lock);
  ot::Posix::HdlcInterface::airship_close(thread_ctx);
  ot::Posix::gErrorCallback(ot::Posix::gErrorContext, 0);
  gPciStatus = 2;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v6, "handleChipResettingCb", gPciStatus);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: PCIe Igor gPciStatus=%d\n", v6, 0x12u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v5, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v5, 0x16u);
  }

  pthread_mutex_unlock(&lock);
  v1 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v1 && (syslog_is_the_mask_enabled(3) & 1) != 0)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v4, "handleChipResettingCb");
      _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s, daemon restart and chip reset exit now", v4, 0xCu);
    }
  }

  else if (!v1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v3, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v3, 0x16u);
  }

  persist_host_reset_dueto_rcp(1, 0);
}

uint64_t ot::Posix::HdlcInterface::airship_open_rings(unsigned __int16 *a1)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v38, "airship_open_rings");
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: Airship Open Rings...\n", v38, 0xCu);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v37, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v37, 0x16u);
  }

  *(a1 + 2) = airship_ch_interface_create();
  if (*(a1 + 2))
  {
    v14 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v14 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v34, "airship_open_rings", *(a1 + 3));
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: airship_ch_interface_create() created Successfully with Interface ID:%d ...\n", v34, 0x12u);
      }
    }

    else if (!v14 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v33, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v33, 0x16u);
    }

    v13 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v13 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_32(v32, "airship_open_rings");
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: Register PCIE Listener Callback ...\n", v32, 0xCu);
      }
    }

    else if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v31, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v31, 0x16u);
    }

    ot::Posix::register_pcie_error_listener(a1);
    v1 = *(a1 + 2);
    v2 = *(a1 + 3);
    v12 = airship_ch_interface_open();
    if (v12)
    {
      v11 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v11 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_0_1_4_0(v30, v12);
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "airship_ch_interface_open() for command failed - returned 0x%08x!\n", v30, 8u);
        }
      }

      else if (!v11 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v29, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v29, 0x16u);
      }

      ot::Posix::HdlcInterface::airship_close(a1);
      v18 = 0;
    }

    else
    {
      v10 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v10 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v28, "airship_open_rings");
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: airship_ch_interface_open() Opened Successfully.\n", v28, 0xCu);
        }
      }

      else if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v27, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v27, 0x16u);
      }

      v9 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v9 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v26, "airship_open_rings");
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: Retrieving ring sizes....\n", v26, 0xCu);
        }
      }

      else if (!v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v25, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v25, 0x16u);
      }

      v3 = *(a1 + 2);
      ring_sizes = airship_ch_interface_get_ring_sizes();
      if (ring_sizes)
      {
        v7 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v7 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_2_8_32_4_0(v24, "airship_open_rings", ring_sizes);
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: airship_ch_interface_get_ring_sizes() returned 0x%08x!\n", v24, 0x12u);
          }
        }

        else if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v23, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v23, 0x16u);
        }

        v18 = 0;
      }

      else
      {
        v6 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v6 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_3_8_32_4_0_4_0(v22, "airship_open_rings", *a1, *(a1 + 1));
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: TX: %u * %u\n", v22, 0x18u);
          }
        }

        else if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v21, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v21, 0x16u);
        }

        v5 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v5 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_3_8_32_4_0_4_0(v20, "airship_open_rings", a1[1], *(a1 + 2));
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: RX: %u * %u\n", v20, 0x18u);
          }
        }

        else if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v19, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v19, 0x16u);
        }

        v18 = 1;
      }
    }
  }

  else
  {
    v15 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v15 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_32(v36, "airship_open_rings");
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: airship_ch_interface_create() failed!\n", v36, 0xCu);
      }
    }

    else if (!v15 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v35, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v35, 0x16u);
    }

    v18 = 0;
  }

  return v18 & 1;
}

uint64_t ot::Posix::HdlcInterface::airship_read_thread(ot::Posix::HdlcInterface *this, void *a2)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v8, "airship_read_thread");
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: Read Thread,\n ", v8, 0xCu);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v7, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v7, 0x16u);
  }

  while (!gPciStatus)
  {
    bzero(&recv_pkt_loop, 0x4B0uLL);
    recv_pkt_len_loop_airship = 1200;
    buf_index = buf_index % 10;
    if (airship_ch_interface_read())
    {
      recv_pkt_len_loop_airship = 0;
      if (++readFailCount > 0xAu)
      {
        return 0;
      }

      usleep(0x3E8u);
    }
  }

  v3 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v3 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v6, "airship_read_thread", gPciStatus);
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: exits due to PCI failure,gPciStatus=%d\n ", v6, 0x12u);
    }
  }

  else if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v5, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v5, 0x16u);
  }

  return 0;
}

void ot::Posix::register_pcie_error_listener(uint64_t a1)
{
  if (ot::Posix::register_pcie_error_listener(apple_pcie_ipc_ctx *)::once_token != -1)
  {
    dispatch_once(&ot::Posix::register_pcie_error_listener(apple_pcie_ipc_ctx *)::once_token, &__block_literal_global_15);
  }

  if (eventQueue)
  {
    v1 = *(a1 + 16);
    airship_ch_interface_set_queue();
    v2 = *(a1 + 16);
    airship_ch_interface_set_stop_handler();
  }

  else
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_32(v6, "register_pcie_error_listener");
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: Event Queue creation failed!\n", v6, 0xCu);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v5, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v5, 0x16u);
    }
  }
}

uint64_t __os_log_helper_16_2_3_8_32_4_0_4_0(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  return result;
}

uint64_t ot::Posix::HdlcInterface::airship_read(ot::Posix::HdlcInterface *this, unsigned __int8 *a2, unint64_t *a3)
{
  bzero(this, 0x4B0uLL);
  *a2 = 1200;
  v3 = *a2;
  airship_ch_interface_read();
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v8, "airship_read", -1);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s, read failure. return =%d\n", v8, 0x12u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v7, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v7, 0x16u);
  }

  return printf("%s: read failure. return: 0x%08x\n", "airship_read", -1);
}

void ot::Posix::HdlcInterface::print_pkt_bytes(ot::Posix::HdlcInterface *this, unsigned __int8 *a2)
{
  bzero(v8, 0xBB8uLL);
  for (i = 0; i < a2; ++i)
  {
    snprintf(&v8[3 * i], 0xBB8uLL, " %02X", *(this + i));
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_0_8_32(v7, a2, v8);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, " *****Skywalk Read Bytes****** len[%llu] 0x[%s]", v7, 0x16u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v6, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v6, 0x16u);
  }
}

uint64_t __os_log_helper_16_2_2_8_0_8_32(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t ot::Posix::HdlcInterface::get_uuid(ot::Posix::HdlcInterface *this, char *a2, unsigned __int8 (*a3)[16])
{
  if (this && a2)
  {
    printf("retrieving uuid for %s\n", this);
    v8 = IOServiceMatching("AppleConvergedIPCInterface");
    if (v8)
    {
      value = CFStringCreateWithCString(kCFAllocatorDefault, this, 0x600u);
      if (value)
      {
        CFDictionarySetValue(v8, @"ACIPCInterfaceProtocol", value);
        CFRelease(value);
        entry = IOServiceGetMatchingService(kIOMasterPortDefault, v8);
        if (entry)
        {
          theString = IORegistryEntrySearchCFProperty(entry, "IOService", @"IOSkywalkNexusUUID", kCFAllocatorDefault, 1u);
          if (theString)
          {
            in = CFStringGetCStringPtr(theString, 0x600u);
            printf("protocol: %s, uuidstr: %s\n", this, in);
            uuid_parse(in, a2);
            CFRelease(theString);
            IOObjectRelease(entry);
            return 0;
          }

          else
          {
            printf("no IOSkywalkNexusUUID property\n");
            return -1;
          }
        }

        else
        {
          printf("no matching service found\n");
          return -1;
        }
      }

      else
      {
        printf("failed to create stringRef\n");
        return -1;
      }
    }

    else
    {
      printf("could not create matching dictionary\n");
      return -1;
    }
  }

  else
  {
    printf("%s: invalid argument\n", "get_uuid");
    return -1;
  }
}

void ot::Posix::HdlcInterface::close_channel(ot::Posix::HdlcInterface *this)
{
  v24 = &ot::Posix::g_zgb_channel_data;
  if (unk_10052D8F0 != -1)
  {
    close(v24[2]);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v22 = logging_obg;
      v21 = 1;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        log = v22;
        type = v21;
        __os_log_helper_16_0_0(v20);
        _os_log_impl(&_mh_execute_header, log, type, " closed sw_kq_write\n", v20, 2u);
      }
    }

    else if (!logging_obg)
    {
      v19 = &_os_log_default;
      v18 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v27, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v19, v18, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v27, 0x16u);
      }
    }

    v24[2] = -1;
  }

  if (v24[3] != -1)
  {
    close(v24[3]);
    v17 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v17 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v16 = v17;
      v15 = 1;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v4 = v16;
        v5 = v15;
        __os_log_helper_16_0_0(v14);
        _os_log_impl(&_mh_execute_header, v4, v5, " closed sw_kq_read\n", v14, 2u);
      }
    }

    else if (!v17)
    {
      v13 = &_os_log_default;
      v12 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v26, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v13, v12, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v26, 0x16u);
      }
    }

    v24[3] = -1;
  }

  if (*v24)
  {
    v1 = *v24;
    os_channel_destroy();
    v11 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v11 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      oslog = v11;
      v9 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v2 = oslog;
        v3 = v9;
        __os_log_helper_16_0_0(v8);
        _os_log_impl(&_mh_execute_header, v2, v3, " closed sk_channel\n", v8, 2u);
      }
    }

    else if (!v11 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v25, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v25, 0x16u);
    }

    *v24 = 0;
  }
}

uint64_t ot::Posix::HdlcInterface::start_channel(ot::Posix::HdlcInterface *this, const char *a2, unsigned __int8 (*a3)[16])
{
  v89 = this;
  v88 = &ot::Posix::g_zgb_channel_data;
  v87 = -1;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v103[0] = 0;
  v103[1] = 0;
  if (!this)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v80 = logging_obg;
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        log = v80;
        v20 = type;
        __os_log_helper_16_0_0(v78);
        _os_log_impl(&_mh_execute_header, log, v20, "failed opening Skywalk channel- Invalid input\n", v78, 2u);
      }
    }

    else if (!logging_obg)
    {
      v77 = &_os_log_default;
      v76 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v102, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v77, v76, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v102, 0x16u);
      }
    }

    return -1;
  }

  if ((ot::Posix::HdlcInterface::get_uuid(v89, v103, a3) & 0x80000000) != 0)
  {
    v75 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v75 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v74 = v75;
      v73 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_32(v101, v89);
        _os_log_impl(&_mh_execute_header, v74, v73, " failed to get uuid for %s channel\n", v101, 0xCu);
      }
    }

    else if (!v75)
    {
      v72 = &_os_log_default;
      v71 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v100, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v72, v71, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v100, 0x16u);
      }
    }

    return -1;
  }

  v85 = os_channel_create();
  if (!v85)
  {
    v70 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v70 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v69 = v70;
      v68 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        v17 = v69;
        v18 = v68;
        __os_log_helper_16_0_0(v67);
        _os_log_impl(&_mh_execute_header, v17, v18, " failed to create channel\n", v67, 2u);
      }
    }

    else if (!v70)
    {
      v66 = &_os_log_default;
      v65 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v99, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v66, v65, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v99, 0x16u);
      }
    }

LABEL_91:
    is_the_mask_enabled = log_get_logging_obg("com.apple.threadradiod", "default");
    v24 = is_the_mask_enabled;
    if (is_the_mask_enabled && (is_the_mask_enabled = syslog_is_the_mask_enabled(6), (is_the_mask_enabled & 1) != 0))
    {
      v23 = v24;
      v22 = OS_LOG_TYPE_INFO;
      is_the_mask_enabled = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
      if (is_the_mask_enabled)
      {
        v5 = v23;
        v6 = v22;
        __os_log_helper_16_0_0(v21);
        _os_log_impl(&_mh_execute_header, v5, v6, " failed to create channel", v21, 2u);
      }
    }

    else if (!v24)
    {
      is_the_mask_enabled = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (is_the_mask_enabled)
      {
        __os_log_helper_16_2_2_8_32_8_32(v91, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v91, 0x16u);
      }
    }

    ot::Posix::HdlcInterface::close_channel(is_the_mask_enabled);
    return v87;
  }

  *v88 = v85;
  v82 = os_channel_attr_create();
  if (v82)
  {
    if (!os_channel_read_attr())
    {
      v64 = 0;
      v63 = 0;
      v62 = 0;
      os_channel_attr_get();
      os_channel_attr_get();
      os_channel_attr_get();
      v61 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v61 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        v60 = v61;
        v59 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_0_3_8_0_8_0_8_0(v98, v64, v63, v62);
          _os_log_impl(&_mh_execute_header, v60, v59, " skywalk channel slotlen: %llu, rxslots: %llu, txslots: %llu\n", v98, 0x20u);
        }
      }

      else if (!v61)
      {
        v58 = &_os_log_default;
        v57 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v97, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v58, v57, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v97, 0x16u);
        }
      }
    }

    os_channel_attr_destroy();
  }

  v84 = kqueue();
  if (v84 == -1)
  {
    v56 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v56 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v55 = v56;
      v54 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v15 = v55;
        v16 = v54;
        __os_log_helper_16_0_0(v53);
        _os_log_impl(&_mh_execute_header, v15, v16, " failed to creatre read kqueue\n", v53, 2u);
      }
    }

    else if (!v56)
    {
      v52 = &_os_log_default;
      v51 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v96, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v52, v51, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v96, 0x16u);
      }
    }

    goto LABEL_91;
  }

  v88[2] = v84;
  p_changelist = &changelist;
  changelist.ident = os_channel_get_fd();
  changelist.filter = -2;
  changelist.flags = 5;
  memset(&changelist.fflags, 0, 20);
  if (kevent(v84, &changelist, 1, 0, 0, 0) == -1)
  {
    v49 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v49 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v48 = v49;
      v47 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v13 = v48;
        v14 = v47;
        __os_log_helper_16_0_0(v46);
        _os_log_impl(&_mh_execute_header, v13, v14, " write kevent registration failed\n", v46, 2u);
      }
    }

    else if (!v49)
    {
      v45 = &_os_log_default;
      v44 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v95, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v45, v44, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v95, 0x16u);
      }
    }

    goto LABEL_91;
  }

  v83 = kqueue();
  if (v83 == -1)
  {
    v43 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v43 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v42 = v43;
      v41 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v11 = v42;
        v12 = v41;
        __os_log_helper_16_0_0(v40);
        _os_log_impl(&_mh_execute_header, v11, v12, " failed to create read kqueue\n", v40, 2u);
      }
    }

    else if (!v43)
    {
      v39 = &_os_log_default;
      v38 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v94, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v39, v38, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v94, 0x16u);
      }
    }

    goto LABEL_91;
  }

  v88[3] = v83;
  v37 = &changelist;
  changelist.ident = os_channel_get_fd();
  changelist.filter = -1;
  changelist.flags = 5;
  memset(&changelist.fflags, 0, 20);
  if (kevent(v83, &changelist, 1, 0, 0, 0) == -1)
  {
    v36 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v36 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      oslog = v36;
      v34 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v9 = oslog;
        v10 = v34;
        __os_log_helper_16_0_0(v33);
        _os_log_impl(&_mh_execute_header, v9, v10, " read kevent registration failed\n", v33, 2u);
      }
    }

    else if (!v36)
    {
      v32 = &_os_log_default;
      v31 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v93, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v32, v31, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v93, 0x16u);
      }
    }

    goto LABEL_91;
  }

  v30 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v30 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v29 = v30;
    v28 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v7 = v29;
      v8 = v28;
      __os_log_helper_16_0_0(v27);
      _os_log_impl(&_mh_execute_header, v7, v8, " channel created successfully\n", v27, 2u);
    }
  }

  else if (!v30)
  {
    v26 = &_os_log_default;
    v25 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v92, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, v26, v25, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v92, 0x16u);
    }
  }

  return 0;
}

uint64_t __os_log_helper_16_0_3_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t ot::Posix::HdlcInterface::write_channel(ot::Posix::HdlcInterface *this, size_t a2)
{
  v58 = this;
  v57 = a2;
  v56 = 0;
  v55 = &ot::Posix::g_zgb_channel_data;
  if (ot::Posix::g_zgb_channel_data && *(v55 + 2) != -1)
  {
    v48 = *v55;
    v47 = *(v55 + 2);
    v46 = 0;
    v43 = os_channel_ring_id();
    v42 = os_channel_tx_ring();
    for (i = os_channel_get_next_slot(); !i; i = os_channel_get_next_slot())
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        v39 = logging_obg;
        v38 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          v11 = v39;
          v12 = v38;
          __os_log_helper_16_0_0(v37);
          _os_log_impl(&_mh_execute_header, v11, v12, " waiting for slot to become available", v37, 2u);
        }
      }

      else if (!logging_obg)
      {
        v36 = &_os_log_default;
        v35 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v9 = v36;
          v10 = v35;
          __os_log_helper_16_2_2_8_32_8_32(v63, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v9, v10, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v63, 0x16u);
        }
      }

      v46 = kevent(v47, 0, 0, &eventlist, 1, 0);
      if (v46 == -1 || eventlist.filter != -2)
      {
        v33 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v33 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          v32 = v33;
          v31 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v7 = v32;
            v8 = v31;
            __os_log_helper_16_0_0(v30);
            _os_log_impl(&_mh_execute_header, v7, v8, " kevent error on sw_kq_write\n", v30, 2u);
          }
        }

        else if (!v33)
        {
          v29 = &_os_log_default;
          v28 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v62, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, v29, v28, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v62, 0x16u);
          }
        }

        return 7;
      }
    }

    v27 = v44;
    if (v44 >= v57)
    {
      memcpy(v45, v58, v57);
      v44 = v57;
      os_channel_set_slot_properties();
      os_channel_advance_slot();
      v46 = os_channel_sync();
      if (v46 == -1)
      {
        v20 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v20 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          v19 = v20;
          v18 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v3 = v19;
            v4 = v18;
            __os_log_helper_16_0_0(v17);
            _os_log_impl(&_mh_execute_header, v3, v4, " os_channel_sync tx failed\n", v17, 2u);
          }
        }

        else if (!v20)
        {
          v16 = &_os_log_default;
          v15 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v60, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, v16, v15, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v60, 0x16u);
          }
        }

        return 7;
      }

      else
      {
        return v56;
      }
    }

    else
    {
      v26 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v26 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        oslog = v26;
        v24 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v5 = oslog;
          v6 = v24;
          __os_log_helper_16_0_0(v23);
          _os_log_impl(&_mh_execute_header, v5, v6, " slot_len", v23, 2u);
        }
      }

      else if (!v26)
      {
        v22 = &_os_log_default;
        v21 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v61, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v22, v21, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v61, 0x16u);
        }
      }

      return 7;
    }
  }

  else
  {
    v54 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v54 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v53 = v54;
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        log = v53;
        v14 = type;
        __os_log_helper_16_0_0(v51);
        _os_log_impl(&_mh_execute_header, log, v14, " invalid ch_data\n", v51, 2u);
      }
    }

    else if (!v54)
    {
      v50 = &_os_log_default;
      v49 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v64, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v50, v49, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v64, 0x16u);
      }
    }

    return 7;
  }
}

uint64_t ot::Posix::HdlcInterface::read_channel(ot::Posix::HdlcInterface *this, uint64_t *a2, unint64_t *a3)
{
  v41 = this;
  v40 = a2;
  v39 = &ot::Posix::g_zgb_channel_data;
  if (ot::Posix::g_zgb_channel_data && v39[3] != -1)
  {
    v32 = *v39;
    v31 = v39[3];
    v30 = 0;
    v29 = os_channel_ring_id();
    v28 = os_channel_rx_ring();
    next_slot = 0;
    v30 = kevent(v31, 0, 0, &eventlist, 1, 0);
    if (v30 != -1 && eventlist.filter == -1)
    {
      next_slot = os_channel_get_next_slot();
      if (next_slot)
      {
        LOWORD(__n[0]) = v26;
        if (v26 <= *v40)
        {
          memcpy(v41, v27, LOWORD(__n[0]));
          *v40 = LOWORD(__n[0]);
          os_channel_advance_slot();
          os_channel_sync();
          return 0;
        }

        else
        {
          logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
          if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
          {
            v17 = logging_obg;
            v16 = OS_LOG_TYPE_INFO;
            if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
            {
              __os_log_helper_16_0_2_4_0_8_0(v45, LOWORD(__n[0]), *v40);
              _os_log_impl(&_mh_execute_header, v17, v16, " slot has more data, slotLen: %u, size_in: %zu\n", v45, 0x12u);
            }
          }

          else if (!logging_obg)
          {
            v15 = &_os_log_default;
            v14 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_2_8_32_8_32(v44, "com.apple.wpantund.ncp", "default");
              _os_log_error_impl(&_mh_execute_header, v15, v14, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v44, 0x16u);
            }
          }

          return -1;
        }
      }

      else
      {
        v13 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v13 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          v12 = v13;
          v11 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v4 = v12;
            v5 = v11;
            __os_log_helper_16_0_0(v10);
            _os_log_impl(&_mh_execute_header, v4, v5, " empty slot\n\n", v10, 2u);
          }
        }

        else if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v43, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v43, 0x16u);
        }

        return -1;
      }
    }

    else
    {
      v23 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v23 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        oslog = v23;
        v21 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v6 = oslog;
          v7 = v21;
          __os_log_helper_16_0_0(v20);
          _os_log_impl(&_mh_execute_header, v6, v7, " invalid filter\n", v20, 2u);
        }
      }

      else if (!v23)
      {
        *&__n[1] = &_os_log_default;
        HIBYTE(__n[0]) = 16;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v46, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, *&__n[1], HIBYTE(__n[0]), "Logging1 Module is not defined for SubSystem: %s, Category: %s", v46, 0x16u);
        }
      }

      return -1;
    }
  }

  else
  {
    v38 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v38 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v37 = v38;
      v36 = 1;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        log = v37;
        type = v36;
        __os_log_helper_16_0_0(v35);
        _os_log_impl(&_mh_execute_header, log, type, " invalid ch_data\n", v35, 2u);
      }
    }

    else if (!v38)
    {
      v34 = &_os_log_default;
      v33 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v47, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v34, v33, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v47, 0x16u);
      }
    }

    return -1;
  }
}

uint64_t __os_log_helper_16_0_2_4_0_8_0(uint64_t result, int a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

uint64_t ot::Posix::create_pcie_error_listener(uint64_t a1, const char *a2, uint64_t a3)
{
  v45 = a1;
  v44 = a2;
  v43 = a3;
  if (a1 && v44 && v43)
  {
    if (ot::Posix::pcie_driver_init(0, a2))
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        v35 = logging_obg;
        v34 = 1;
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          v8 = v35;
          v9 = v34;
          __os_log_helper_16_0_0(v33);
          _os_log_impl(&_mh_execute_header, v8, v9, " PCIe Initialization failed\n ", v33, 2u);
        }
      }

      else if (!logging_obg)
      {
        v32 = &_os_log_default;
        v31 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v49, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v32, v31, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v49, 0x16u);
        }
      }

      v46 = 0;
    }

    else
    {
      v23 = _NSConcreteStackBlock;
      v24 = 0x40000000;
      v25 = 0;
      v26 = ___ZN2ot5Posix26create_pcie_error_listenerEPFvPKcbEPFvS2_PbEPFv27AppleBluetoothStatisticTypeyE_block_invoke;
      v27 = &__block_descriptor_tmp_13;
      v28 = v45;
      v29 = v44;
      v30 = &v23;
      fatalErrorCb = v45;
      v22 = AppleConvergedTransportRegisterEventBlockQ();
      if (v22)
      {
        v21 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v21 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          oslog = v21;
          v19 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v6 = oslog;
            v7 = v19;
            __os_log_helper_16_0_0(v18);
            _os_log_impl(&_mh_execute_header, v6, v7, "PCIe registered event listener successfully\n", v18, 2u);
          }
        }

        else if (!v21)
        {
          v17 = &_os_log_default;
          v16 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v48, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, v17, v16, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v48, 0x16u);
          }
        }

        v46 = v22 & 1;
      }

      else
      {
        v15 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v15 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          v14 = v15;
          v13 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v4 = v14;
            v5 = v13;
            __os_log_helper_16_0_0(v12);
            _os_log_impl(&_mh_execute_header, v4, v5, "PCIe failed to register event listener\n", v12, 2u);
          }
        }

        else if (!v15 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v47, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v47, 0x16u);
        }

        fatalErrorCb = 0;
        v46 = v22 & 1;
      }
    }
  }

  else
  {
    v42 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v42 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v41 = v42;
      v40 = 1;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        log = v41;
        type = v40;
        __os_log_helper_16_0_0(v39);
        _os_log_impl(&_mh_execute_header, log, type, "PCIe Bad argument\n", v39, 2u);
      }
    }

    else if (!v42)
    {
      v38 = &_os_log_default;
      v37 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v50, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v38, v37, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v50, 0x16u);
      }
    }

    v46 = 0;
  }

  return v46 & 1;
}

uint64_t ot::Posix::pcie_driver_init(ot::Posix *this, const char *a2)
{
  if (ot::Posix::pcie_driver_init(char const*)::once_token != -1)
  {
    dispatch_once(&ot::Posix::pcie_driver_init(char const*)::once_token, &__block_literal_global_57);
  }

  if (eventQueue)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t ___ZN2ot5Posix26create_pcie_error_listenerEPFvPKcbEPFvS2_PbEPFv27AppleBluetoothStatisticTypeyE_block_invoke(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a1;
  if (a2)
  {
    if (v21 == 2)
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        oslog = logging_obg;
        v10 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          v5 = oslog;
          v6 = v10;
          __os_log_helper_16_0_0(v9);
          _os_log_impl(&_mh_execute_header, v5, v6, "PCIe detected controller is resetting", v9, 2u);
        }
      }

      else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v25, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v25, 0x16u);
      }

      return (*(a1 + 40))(v20, &rx_route_suspended);
    }

    else
    {
      v8 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v8 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v24, v20);
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "PCIe Non-fatal event: %s\n", v24, 0xCu);
        }
      }

      else if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v23, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v23, 0x16u);
      }

      return (*(a1 + 32))(v20, 0);
    }
  }

  else
  {
    v17 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v17 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v16 = v17;
      v15 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_32(v27, v20);
        _os_log_impl(&_mh_execute_header, v16, v15, "PCIe Fatal event: %s\n", v27, 0xCu);
      }
    }

    else if (!v17)
    {
      v14 = &_os_log_default;
      v13 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v26, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v14, v13, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v26, 0x16u);
      }
    }

    (*(a1 + 32))(v20, 1);
    rx_route_suspended = 1;
    return usleep(1000 * v19);
  }
}

void ot::Posix::errorCb(ot::Posix *this, const char *a2)
{
  v5 = a2;
  v2 = pthread_mutex_lock(&lock);
  gPciStatus = 3;
  ot::Posix::HdlcInterface::skywalk_close(v2);
  ot::Posix::gErrorCallback(ot::Posix::gErrorContext, 0);
  pthread_mutex_unlock(&lock);
  if (v5)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_4_8_32_8_32_4_0_4_0(v10, "errorCb", this, gPciStatus, v5 & 1);
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: PCIe Igor errorCb Update Firmware reset counters reason=[%s], gPciStatus=[%d] fatal=[%d]\n", v10, 0x22u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v9, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v9, 0x16u);
    }

    persist_host_reset_dueto_rcp(1, this);
  }

  v3 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v3 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_4_8_32_8_32_4_0_4_0(v8, "errorCb", this, gPciStatus, v5 & 1);
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: PCIe Igor errorCb reason=[%s], gPciStatus=[%d] fatal=[%d]\n", v8, 0x22u);
    }
  }

  else if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v7, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v7, 0x16u);
  }
}

uint64_t __os_log_helper_16_2_4_8_32_8_32_4_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 29) = 4;
  *(result + 30) = a5;
  return result;
}

void ot::Posix::driverMetricsCb(int a1, uint64_t a2)
{
  v9 = a1;
  v8 = a2;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v6 = logging_obg;
    v5 = 1;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = v6;
      type = v5;
      __os_log_helper_16_0_0(v4);
      _os_log_impl(&_mh_execute_header, log, type, "PCIe Igor driverMetricsCb\n", v4, 2u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v10, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v10, 0x16u);
  }
}

uint64_t ot::Posix::chipResettingCb(ot::Posix *this, const char *a2, BOOL *a3)
{
  v3 = pthread_mutex_lock(&lock);
  ot::Posix::HdlcInterface::skywalk_close(v3);
  ot::Posix::gErrorCallback(ot::Posix::gErrorContext, 0);
  gPciStatus = 2;
  if ((*a2 & 1) == 0)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_4_8_32_8_32_4_0_4_0(v23, "chipResettingCb", this, gPciStatus, *a2 & 1);
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: PCIe Igor chipResettingCb Update Firmware reset counters reason=[%s], gPciStatus=[%d] fatal=[%d]\n", v23, 0x22u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v22, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v22, 0x16u);
    }

    persist_host_reset_dueto_rcp(1, this);
  }

  v14 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v14 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_4_8_32_8_32_4_0_4_0(v21, "chipResettingCb", this, gPciStatus, *a2 & 1);
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: PCIe Igor chipResettingCb reason=[%s], gPciStatus=[%d] fatal=[%d]\n", v21, 0x22u);
    }
  }

  else if (!v14 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v20, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v20, 0x16u);
  }

  v4 = pthread_mutex_unlock(&lock);
  result = ot::Posix::HdlcInterface::isPCIeSkywalk(v4);
  if (result)
  {
    v13 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v13 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_32(v19, "chipResettingCb");
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: DieNow daemon restart triggered due to chip reset", v19, 0xCu);
      }
    }

    else if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v18, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v18, 0x16u);
    }

    gSystemDieNow = 1;
    usleep(0xC350u);
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp", 47);
    otExitCodeToString(4);
    otLogCritPlat("%s() at %s:%d: %s", v6, v7, v8, v9, v10, v11, v12, "chipResettingCb");
    handle_daemon_exit();
    exit(4);
  }

  return result;
}

uint64_t ot::Posix::HdlcInterface::isPCIeSkywalk(ot::Posix::HdlcInterface *this)
{
  v81 = -536870212;
  notification = 0;
  v75 = 0xFFFF;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v78 = IONotificationPortCreate(kIOMainPortDefault);
  RunLoopSource = IONotificationPortGetRunLoopSource(v78);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  v80 = IOServiceMatching("AppleConvergedIPCInterface");
  if (v80)
  {
    v71 = CFStringCreateWithCString(kCFAllocatorDefault, "tsi", 0x600u);
    if (v71)
    {
      CFDictionarySetValue(v80, @"ACIPCInterfaceProtocol", v71);
      CFRelease(v71);
      v81 = IOServiceAddMatchingNotification(v78, "IOServiceFirstMatch", v80, ot::Posix::IOServiceObjectFoundCB, Current, &notification);
      if (v81)
      {
        logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
        if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          v59 = logging_obg;
          v58 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_0_1_4_0(v95, v81);
            _os_log_impl(&_mh_execute_header, v59, v58, "PCIe IOServiceAddMatchingNotification returned 0x%08x", v95, 8u);
          }
        }

        else if (!logging_obg)
        {
          v57 = &_os_log_default;
          v56 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v94, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, v57, v56, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v94, 0x16u);
          }
        }

        CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
        IONotificationPortDestroy(v78);
      }

      else
      {
        while (1)
        {
          v72 = IOIteratorNext(notification);
          v12 = 0;
          if (!v72)
          {
            v12 = v75 != kCFRunLoopRunTimedOut;
          }

          if (!v12)
          {
            break;
          }

          v55 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v55 && (syslog_is_the_mask_enabled(6) & 1) != 0)
          {
            v54 = v55;
            v53 = OS_LOG_TYPE_INFO;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              v10 = v54;
              v11 = v53;
              __os_log_helper_16_0_0(v52);
              _os_log_impl(&_mh_execute_header, v10, v11, "PCIe ACIPCInterface not found, waiting for it to appear", v52, 2u);
            }
          }

          else if (!v55)
          {
            v51 = &_os_log_default;
            v50 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_2_8_32_8_32(v93, "com.apple.wpantund.ncp", "default");
              _os_log_error_impl(&_mh_execute_header, v51, v50, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v93, 0x16u);
            }
          }

          v75 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 5.0, 0);
        }

        CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
        IONotificationPortDestroy(v78);
        IOObjectRelease(notification);
        if (v72 && (v75 == kCFRunLoopRunStopped || v75 == 0xFFFF))
        {
          v49 = IORegistryEntrySearchCFProperty(v72, "IOService", @"ACIPCInterfaceTransport", kCFAllocatorDefault, 1u);
          if (v49)
          {
            buffer[0] = 0;
            buffer[1] = 0;
            if (CFStringGetCString(v49, buffer, 16, 0x600u) != 0)
            {
              v41 = log_get_logging_obg("com.apple.threadradiod", "default");
              if (v41 && (syslog_is_the_mask_enabled(6) & 1) != 0)
              {
                v40 = v41;
                v39 = OS_LOG_TYPE_INFO;
                if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                {
                  __os_log_helper_16_2_1_8_32(v90, buffer);
                  _os_log_impl(&_mh_execute_header, v40, v39, "PCIe ACIPCInterfaceTransport %s\n", v90, 0xCu);
                }
              }

              else if (!v41)
              {
                v38 = &_os_log_default;
                v37 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  __os_log_helper_16_2_2_8_32_8_32(v89, "com.apple.wpantund.ncp", "default");
                  _os_log_error_impl(&_mh_execute_header, v38, v37, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v89, 0x16u);
                }
              }

              if (!strcmp(buffer, "skywalk"))
              {
                while (v73 < 25)
                {
                  v36 = IORegistryEntrySearchCFProperty(v72, "IOService", @"IOSkywalkNexusUUID", kCFAllocatorDefault, 1u);
                  if (v36)
                  {
                    v35 = log_get_logging_obg("com.apple.threadradiod", "default");
                    if (v35 && (syslog_is_the_mask_enabled(6) & 1) != 0)
                    {
                      v34 = v35;
                      v33 = OS_LOG_TYPE_INFO;
                      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                      {
                        v6 = v34;
                        v7 = v33;
                        __os_log_helper_16_0_0(v32);
                        _os_log_impl(&_mh_execute_header, v6, v7, "PCIe ACIPCInterfaceTransport + IOSkywalkNexusUUID found\n", v32, 2u);
                      }
                    }

                    else if (!v35)
                    {
                      v31 = &_os_log_default;
                      v30 = OS_LOG_TYPE_ERROR;
                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
                        __os_log_helper_16_2_2_8_32_8_32(v88, "com.apple.wpantund.ncp", "default");
                        _os_log_error_impl(&_mh_execute_header, v31, v30, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v88, 0x16u);
                      }
                    }

                    CFRelease(v36);
                    v74 = 1;
                    v29 = 0;
                    usleep(0xF4240u);
                    break;
                  }

                  usleep(0x30D40u);
                  v28 = log_get_logging_obg("com.apple.threadradiod", "default");
                  if (v28 && (syslog_is_the_mask_enabled(6) & 1) != 0)
                  {
                    v27 = v28;
                    v26 = OS_LOG_TYPE_INFO;
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                    {
                      __os_log_helper_16_0_1_4_0(v87, v73);
                      _os_log_impl(&_mh_execute_header, v27, v26, "PCIe Retry: %d - trying to find ACIPCInterfaceTransport + IOSkywalkNexusUUID\n", v87, 8u);
                    }
                  }

                  else if (!v28)
                  {
                    v25 = &_os_log_default;
                    v24 = OS_LOG_TYPE_ERROR;
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      __os_log_helper_16_2_2_8_32_8_32(v86, "com.apple.wpantund.ncp", "default");
                      _os_log_error_impl(&_mh_execute_header, v25, v24, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v86, 0x16u);
                    }
                  }

                  ++v73;
                }
              }

              else
              {
                v23 = log_get_logging_obg("com.apple.threadradiod", "default");
                if (v23 && (syslog_is_the_mask_enabled(6) & 1) != 0)
                {
                  oslog = v23;
                  v21 = OS_LOG_TYPE_INFO;
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                  {
                    v4 = oslog;
                    v5 = v21;
                    __os_log_helper_16_0_0(v20);
                    _os_log_impl(&_mh_execute_header, v4, v5, "PCIe ACIPCInterfaceTransport is not skywalk\n", v20, 2u);
                  }
                }

                else if (!v23)
                {
                  v19 = &_os_log_default;
                  v18 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    __os_log_helper_16_2_2_8_32_8_32(v85, "com.apple.wpantund.ncp", "default");
                    _os_log_error_impl(&_mh_execute_header, v19, v18, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v85, 0x16u);
                  }
                }
              }
            }

            else
            {
              v47 = log_get_logging_obg("com.apple.threadradiod", "default");
              if (v47 && (syslog_is_the_mask_enabled(6) & 1) != 0)
              {
                v46 = v47;
                v45 = OS_LOG_TYPE_INFO;
                if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                {
                  v8 = v46;
                  v9 = v45;
                  __os_log_helper_16_0_0(v44);
                  _os_log_impl(&_mh_execute_header, v8, v9, "PCIe failed to get cstring property", v44, 2u);
                }
              }

              else if (!v47)
              {
                v43 = &_os_log_default;
                v42 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  __os_log_helper_16_2_2_8_32_8_32(v91, "com.apple.wpantund.ncp", "default");
                  _os_log_error_impl(&_mh_execute_header, v43, v42, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v91, 0x16u);
                }
              }
            }

            CFRelease(v49);
          }

          else
          {
            v17 = log_get_logging_obg("com.apple.threadradiod", "default");
            if (v17 && (syslog_is_the_mask_enabled(6) & 1) != 0)
            {
              v16 = v17;
              v15 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                v2 = v16;
                v3 = v15;
                __os_log_helper_16_0_0(v14);
                _os_log_impl(&_mh_execute_header, v2, v3, "PCIe ACIPCInterface found, ACIPCInterfaceTransport property not found", v14, 2u);
              }
            }

            else if (!v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_2_8_32_8_32(v84, "com.apple.wpantund.ncp", "default");
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v84, 0x16u);
            }
          }
        }

        else
        {
          v13 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v13 && (syslog_is_the_mask_enabled(6) & 1) != 0)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              __os_log_helper_16_0_1_4_0(v83, v75);
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "PCIe ACIPCInterface not found after 5 second -- runLoopResult = 0x%02x", v83, 8u);
            }
          }

          else if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v82, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v82, 0x16u);
          }
        }
      }
    }

    else
    {
      v65 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v65 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        v64 = v65;
        v63 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v97, "isPCIeSkywalk");
          _os_log_impl(&_mh_execute_header, v64, v63, "%s: PCIe failed to create stringRef", v97, 0xCu);
        }
      }

      else if (!v65)
      {
        v62 = &_os_log_default;
        v61 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v96, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v62, v61, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v96, 0x16u);
        }
      }

      CFRelease(v80);
    }
  }

  else
  {
    v70 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v70 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v69 = v70;
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_32(v99, "isPCIeSkywalk");
        _os_log_impl(&_mh_execute_header, v69, type, "%s: PCIe could not create matching dictionary", v99, 0xCu);
      }
    }

    else if (!v70)
    {
      v67 = &_os_log_default;
      v66 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v98, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v67, v66, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v98, 0x16u);
      }
    }
  }

  if (v72)
  {
    IOObjectRelease(v72);
  }

  return v74 & 1;
}

void ot::Posix::IOServiceObjectFoundCB(ot::Posix *this, void *a2)
{
  v10 = this;
  v9 = a2;
  v8 = this;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v6 = logging_obg;
    v5 = 1;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = v6;
      type = v5;
      __os_log_helper_16_0_0(v4);
      _os_log_impl(&_mh_execute_header, log, type, "ACIPCInterface found, releasing waiting thread", v4, 2u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v11, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v11, 0x16u);
  }

  CFRunLoopStop(v8);
}

uint64_t ot::Posix::HdlcInterface::skywalk_read_thread(ot::Posix::HdlcInterface *this, void *a2)
{
  v13 = this;
  channel = -1;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v10 = logging_obg;
    v9 = 1;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = v10;
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&_mh_execute_header, log, type, " In skywalk_read_thread Read Thread,\n ", v8, 2u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v17, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v17, 0x16u);
  }

  while (!gPciStatus)
  {
    bzero(recv_pkt_loop, 0x4B0uLL);
    recv_pkt_len_loop = 1200;
    buf_index = buf_index % 10;
    channel = ot::Posix::HdlcInterface::read_channel(&recv_pkt_loop[1200 * buf_index], &recv_pkt_len_loop, v2);
    if (channel)
    {
      recv_pkt_len_loop = 0;
      if (++readFailCount > 0xAu)
      {
        return 0;
      }

      usleep(0x3E8u);
    }

    if (recv_pkt_len_loop)
    {
      readFailCount = 0;
      v6 = pthread_mutex_lock(&hdlc_lock) == 0;
      ot::Hdlc::Decoder::Decode(ot::Posix::gk_HdlcDecoder, &recv_pkt_loop[1200 * buf_index], recv_pkt_len_loop);
      if (v6)
      {
        pthread_mutex_unlock(&hdlc_lock);
      }

      write(dword_1004E59BC, "x", 1uLL);
    }
  }

  v7 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v7 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_4_0(v16, gPciStatus);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "skywalk_read_thread exits due to PCI failure,gPciStatus=%d\n ", v16, 8u);
    }
  }

  else if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v15, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v15, 0x16u);
  }

  return 0;
}

void ot::Posix::HdlcInterface::skywalk_read(ot::Posix::HdlcInterface *this, unsigned __int8 *a2, unint64_t *a3)
{
  bzero(this, 0x4B0uLL);
  *a2 = 1200;
  channel = ot::Posix::HdlcInterface::read_channel(this, a2, v3);
  if (channel)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_4_0(v12, channel);
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, " read failure. return =%d\n", v12, 8u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v11, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v11, 0x16u);
    }

    printf("%s: read failure. return: 0x%08x\n", "skywalk_read", channel);
  }

  printf("received %zu bytes: ", *a2);
  v4 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v4 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_8_0(v10, *a2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, " skywalk_read: bytes=%zu ", v10, 0xCu);
    }
  }

  else if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v9, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v9, 0x16u);
  }

  ot::Posix::HdlcInterface::print_pkt_bytes(this, *a2);
}

uint64_t __os_log_helper_16_0_1_8_0(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void ___ZN2ot5PosixL28register_pcie_error_listenerEP18apple_pcie_ipc_ctx_block_invoke_2(id a1)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  v2 = logging_obg;
  if (logging_obg && (logging_obg = syslog_is_the_mask_enabled(6), (logging_obg & 1) != 0))
  {
    logging_obg = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
    if (logging_obg)
    {
      __os_log_helper_16_2_1_8_32(v4, "register_pcie_error_listener_block_invoke_2");
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s, Invoke Chip Resetting Callback handler\n", v4, 0xCu);
    }
  }

  else if (!v2)
  {
    logging_obg = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (logging_obg)
    {
      __os_log_helper_16_2_2_8_32_8_32(v3, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v3, 0x16u);
    }
  }

  ot::Posix::handleChipResettingCb(logging_obg);
}

uint64_t ot::Spinel::FrameWritePointer::FrameWritePointer(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t ot::Spinel::FrameBuffer<(unsigned short)8192>::Clear(uint64_t result)
{
  *result = result + 10;
  *(result + 8) = 0x2000;
  return result;
}

{
  return ot::Spinel::FrameBuffer<(unsigned short)8192>::Clear(result);
}

void ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::IgnoreError()
{
  ;
}

{
  ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::IgnoreError();
}

uint64_t ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::SetSkipLength(uint64_t a1, unsigned __int16 a2)
{
  v8 = 3;
  v7 = *(a1 + 8208);
  if (v7 + 4 + a2 <= ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetArrayEnd<unsigned char,(unsigned short)8192>(a1, a1 + 10))
  {
    ot::Lib::Utils::LittleEndian::WriteUint16(a2, (*(a1 + 8208) + 2), v2);
    *a1 = ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetFrame(a1, v3);
    v4 = *a1;
    *(a1 + 8) = a1 + 8202 - *a1;
    return 0;
  }

  return v8;
}

{
  return ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::SetSkipLength(a1, a2);
}

uint64_t ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetFrame(uint64_t a1, const unsigned __int8 *a2)
{
  v3 = *(a1 + 8208);
  return v3 + 4 + ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetSkipLength(a1, a2);
}

{
  return ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetFrame(a1, a2);
}

uint64_t ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetArrayEnd<unsigned char,(unsigned short)8192>(uint64_t a1, uint64_t a2)
{
  return a2 + 0x2000;
}

{
  return ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetArrayEnd<unsigned char,(unsigned short)8192>(a1, a2);
}

uint64_t ot::Lib::Utils::LittleEndian::WriteUint16(uint64_t this, _WORD *a2, unsigned __int8 *a3)
{
  *a2 = this;
  return this;
}

{
  return ot::Lib::Utils::LittleEndian::WriteUint16(this, a2, a3);
}

uint64_t ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetSkipLength(uint64_t a1, const unsigned __int8 *a2)
{
  return ot::Lib::Utils::LittleEndian::ReadUint16((*(a1 + 8208) + 2), a2);
}

{
  return ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetSkipLength(a1, a2);
}

uint64_t ot::Lib::Utils::LittleEndian::ReadUint16(ot::Lib::Utils::LittleEndian *this, const unsigned __int8 *a2)
{
  return (*this | (*(this + 1) << 8));
}

{
  return ot::Lib::Utils::LittleEndian::ReadUint16(this, a2);
}

uint64_t ot::Posix::bpf_new(ot::Posix *this)
{
  v4 = -1;
  for (i = 0; ; ++i)
  {
    snprintf(__str, 0x100uLL, "/dev/bpf%d", i);
    v4 = open(__str, 2, 0);
    if ((v4 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 16)
    {
      goto LABEL_6;
    }
  }

  v3 = 900;
  ioctl(v4, 0x8004427BuLL, &v3);
LABEL_6:
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v7, v4);
      _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface bpf_new for fd=%d", v7, 8u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v6, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v6, 0x16u);
  }

  return v4;
}

uint64_t ot::Posix::BackboneIPv6Interface::get_read(ot::Posix::BackboneIPv6Interface *this, unsigned __int8 *a2, uint64_t a3)
{
  v36 = this;
  v35 = a2;
  v34 = a3;
  v33 = -1;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  if (*(this + 38))
  {
    if (v34 >= *(this + 24))
    {
      if (*(this + 11))
      {
        if (*(this + 24))
        {
          v32 = *(this + 11);
          v31 = *(this + 11) + *(v32 + 16);
          v30 = v31 + 14;
          v33 = *(v32 + 12) - 14;
          bcopy((v31 + 14), v35, v33);
        }

        else
        {
          logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
          if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
          {
            v12 = logging_obg;
            v11 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
            {
              v4 = v12;
              v5 = v11;
              __os_log_helper_16_0_0(v10);
              _os_log_error_impl(&_mh_execute_header, v4, v5, "BackboneIPv6Interface get_read mReadBufferLen is 0", v10, 2u);
            }
          }

          else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v40, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v40, 0x16u);
          }
        }
      }

      else
      {
        v18 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v18 && (syslog_is_the_mask_enabled(3) & 1) != 0)
        {
          oslog = v18;
          v16 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_0_1_4_0(v42, *(this + 24));
            _os_log_error_impl(&_mh_execute_header, oslog, v16, "BackboneIPv6Interface get_read mReadBuffer is NULL while mReadBufferLen=%d", v42, 8u);
          }
        }

        else if (!v18)
        {
          v15 = &_os_log_default;
          v14 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v41, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, v15, v14, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v41, 0x16u);
          }
        }

        *(this + 24) = 0;
      }
    }

    else
    {
      v23 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v23 && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        v22 = v23;
        v21 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_2_4_0_4_0(v44, v34, *(this + 24));
          _os_log_error_impl(&_mh_execute_header, v22, v21, "BackboneIPv6Interface get_read failed as len(%d) < mReadBufferLen(%d)", v44, 0xEu);
        }
      }

      else if (!v23)
      {
        v20 = &_os_log_default;
        v19 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v43, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v20, v19, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v43, 0x16u);
        }
      }
    }

    if (*(this + 11))
    {
      *(this + 24) = 0;
      if (*(this + 11))
      {
        operator delete();
      }

      *(this + 11) = 0;
    }

    else
    {
      v9 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v9 && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_3_4_0_4_0_4_0(v39, v33, *(this + 24), *(this + 38) & 1);
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface get_read mReadBuffer is NULL here lenToRet=%d mReadBufferLen=%d mBackboneIsConnected=%d", v39, 0x14u);
        }
      }

      else if (!v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v38, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v38, 0x16u);
      }
    }

    return v33;
  }

  else
  {
    v29 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v29 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v28 = v29;
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        log = v28;
        v7 = type;
        __os_log_helper_16_0_0(v26);
        _os_log_error_impl(&_mh_execute_header, log, v7, "BackboneIPv6Interface::get_read Backbone is not connected", v26, 2u);
      }
    }

    else if (!v29)
    {
      v25 = &_os_log_default;
      v24 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v45, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v25, v24, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v45, 0x16u);
      }
    }

    return -1;
  }
}

uint64_t __os_log_helper_16_0_3_4_0_4_0_4_0(uint64_t result, int a2, int a3, int a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 0;
  *(result + 15) = 4;
  *(result + 16) = a4;
  return result;
}

uint64_t ot::Posix::BackboneIPv6Interface::check_valid_read(ot::Posix::BackboneIPv6Interface *this, unsigned __int8 *a2, int a3, in6_addr *a4, in6_addr *a5)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  if (a2)
  {
    v13 = v17;
    v12 = &v17[*(v17 + 8)];
    if (v12)
    {
      if (_OSSwapInt16(*(v12 + 6)) == 34525)
      {
        v11 = v12 + 14;
        if (v12 == -14)
        {
          v19 = 0;
        }

        else
        {
          v10 = _OSSwapInt16(*(v11 + 2));
          if (v10 <= 0x500u)
          {
            memset(__b, 0, sizeof(__b));
            inet_ntop(30, v11 + 8, __b, 0x2Eu);
            memset(v23, 0, sizeof(v23));
            inet_ntop(30, v11 + 24, v23, 0x2Eu);
            memset(v22, 0, sizeof(v22));
            inet_ntop(30, v11 + 24, v22, 0x2Eu);
            std::string::basic_string[abi:dn200100]<0>(&v9, v22);
            v8 = v11 + 24;
            if (v11 != -24)
            {
              *v8;
            }

            ot::Ip6::Address::SetBytes(&v7, (v11 + 24));
            if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(&v7))
            {
              *v15 = *(v11 + 8);
              *v14 = *(v11 + 24);
              logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
              if (logging_obg && (syslog_is_the_mask_enabled(7) & 1) != 0)
              {
                if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_DEBUG))
                {
                  __os_log_helper_16_2_4_8_32_8_32_4_0_8_0(v21, __b, v23, v10, 8);
                  _os_log_debug_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_DEBUG, "BackboneIPv6Interface: check_valid_read read ipv6 src:%s to dst:%s ipv6 packet len(%d) ipv6 hdr len(%lu)", v21, 0x26u);
                }
              }

              else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                __os_log_helper_16_2_2_8_32_8_32(v20, "com.apple.wpantund.ncp", "default");
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v20, 0x16u);
              }

              v19 = 1;
            }

            else
            {
              v19 = 0;
            }

            std::string::~string(&v9);
          }

          else
          {
            v19 = 0;
          }
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

ot::Spinel::SpinelInterface *std::string::basic_string[abi:dn200100]<0>(ot::Spinel::SpinelInterface *a1, const char *a2)
{
  std::string::basic_string[abi:dn200100]<0>(a1, a2);
  return a1;
}

{
  std::allocator<char>::allocator[abi:dn200100](a1);
  if (!a2)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/string:1083: assertion __s != nullptr failed: basic_string(const char*) detected nullptr\n");
  }

  v2 = std::char_traits<char>::length[abi:dn200100](a2);
  std::string::__init(a1, a2, v2);
  return a1;
}

__n128 ot::Ip6::Address::SetBytes(__n128 *this, __n128 *a2)
{
  result = *a2;
  *this = *a2;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_32_4_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

uint64_t ot::Posix::BackboneIPv6Interface::can_read(ot::Posix::BackboneIPv6Interface *this, in6_addr *a2, in6_addr *a3)
{
  v22 = this;
  v21 = a2;
  v20 = a3;
  v19 = 0;
  v18 = 0;
  if (std::string::size[abi:dn200100](this + 8))
  {
    if (*(this + 38) & 1) != 0 && (*(this + 39) & 1) != 0 && (*(this + 40))
    {
      if ((*(this + 20) & 0x80000000) != 0 || (*(this + 19) & 0x80000000) != 0 || (*(this + 18) & 0x80000000) != 0)
      {
        v23 = v18 & 1;
      }

      else if (ioctl(*(this + 19), 0x40044266uLL, &v19) < 0)
      {
        logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
        if (logging_obg && (syslog_is_the_mask_enabled(7) & 1) != 0)
        {
          if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_1_4_0(v35, v19);
            _os_log_debug_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_DEBUG, "BackboneInterface can_read return here as blen(%d) < 0", v35, 8u);
          }
        }

        else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v34, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v34, 0x16u);
        }

        v23 = v18 & 1;
      }

      else if (*(this + 11) || *(this + 24) > 0)
      {
        v12 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v12 && (syslog_is_the_mask_enabled(7) & 1) != 0)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_1_4_0(v33, *(this + 24));
            _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "BackbineInterface can_read return here as mReadBufferLen(%d) already", v33, 8u);
          }
        }

        else if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v32, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v32, 0x16u);
        }

        v23 = 1;
      }

      else
      {
        if (*(this + 11))
        {
          v11 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v11 && (syslog_is_the_mask_enabled(3) & 1) != 0)
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_0_1_4_0(v31, *(this + 24));
              _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "BackboneInterface Read buffer is not NULL which is unexpected mReadBufferLen(%d)", v31, 8u);
            }
          }

          else if (!v11 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v30, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v30, 0x16u);
          }

          if (*(this + 11))
          {
            operator delete();
          }

          *(this + 11) = 0;
          *(this + 24) = 0;
        }

        if (*(this + 24))
        {
          v10 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v10 && (syslog_is_the_mask_enabled(3) & 1) != 0)
          {
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_0_1_4_0(v29, *(this + 24));
              _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "BackboneInterface Read buffer Len is not NULL which is unexpected mReadBufferLen(%d)", v29, 8u);
            }
          }

          else if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v28, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v28, 0x16u);
          }

          *(this + 24) = 0;
          if (*(this + 11))
          {
            operator delete();
          }
        }

        *(this + 11) = malloc_type_malloc(v19, 0x100004077774924uLL);
        if (*(this + 11))
        {
          *(this + 24) = read(*(this + 19), *(this + 11), v19);
          if (*(this + 24) > 0 && ot::Posix::BackboneIPv6Interface::check_valid_read(this, *(this + 11), *(this + 24), v21, v20))
          {
            if (*(this + 24) < 1295)
            {
              v23 = 1;
              return v23 & 1;
            }

            v3 = log_get_logging_obg("com.apple.threadradiod", "default");
            v8 = v3;
            if (v3 && (syslog_is_the_mask_enabled(7) & 1) != 0)
            {
              if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
              {
                __os_log_helper_16_0_1_4_0(v25, v19);
                _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "BackboneInterface read buffer of len (%d) > max size supported (1295)", v25, 8u);
              }
            }

            else if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_2_8_32_8_32(v24, "com.apple.wpantund.ncp", "default");
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v24, 0x16u);
            }
          }
        }

        else
        {
          v9 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v9 && (syslog_is_the_mask_enabled(7) & 1) != 0)
          {
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_0_1_4_0(v27, v19);
              _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "BackboneInterface can_read cannot create buffer of len (%d) to read", v27, 8u);
            }
          }

          else if (!v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v26, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v26, 0x16u);
          }
        }

        if (*(this + 11))
        {
          free(*(this + 11));
          *(this + 11) = 0;
        }

        *(this + 24) = 0;
        v23 = 0;
      }
    }

    else
    {
      v23 = v18 & 1;
    }
  }

  else
  {
    v17 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v17 && (syslog_is_the_mask_enabled(7) & 1) != 0)
    {
      v16 = v17;
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        log = v16;
        v6 = type;
        __os_log_helper_16_0_0(v14);
        _os_log_debug_impl(&_mh_execute_header, log, v6, "BackboneInterface can_read return here as backbone interface name is not initialized yet", v14, 2u);
      }
    }

    else if (!v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v36, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v36, 0x16u);
    }

    v23 = v18 & 1;
  }

  return v23 & 1;
}

uint64_t std::string::size[abi:dn200100](uint64_t a1)
{
  if (std::string::__is_long[abi:dn200100](a1))
  {
    return std::string::__get_long_size[abi:dn200100](a1);
  }

  else
  {
    return std::string::__get_short_size[abi:dn200100](a1);
  }
}

uint64_t ot::Posix::BackboneIPv6Interface::cleanupReadBuffer(uint64_t this)
{
  if (*(this + 88))
  {
    operator delete();
  }

  *(this + 96) = 0;
  return this;
}

uint64_t ot::Posix::BackboneIPv6Interface::update_backbone_ethernet_address(ot::Posix::BackboneIPv6Interface *this)
{
  v33 = this;
  if (std::string::empty[abi:dn200100](this + 8))
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v31 = logging_obg;
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        log = v31;
        v9 = type;
        __os_log_helper_16_0_0(v29);
        _os_log_error_impl(&_mh_execute_header, log, v9, "BackboneIPv6Interface::update_backbone_ethernet_address backbone interface name is nullptr", v29, 2u);
      }
    }

    else if (!logging_obg)
    {
      v28 = &_os_log_default;
      v27 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v43, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v28, v27, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v43, 0x16u);
      }
    }

    v34 = 0;
    return v34 & 1;
  }

  v26 = 0;
  i = 0;
  if (getifaddrs(&v26) < 0)
  {
    v24 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v24 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v23 = v24;
      v22 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v6 = v23;
        v7 = v22;
        __os_log_helper_16_0_0(v21);
        _os_log_error_impl(&_mh_execute_header, v6, v7, "BackboneIPv6Interface::update_backbone_ethernet_address Couldnt getifaddrs", v21, 2u);
      }
    }

    else if (!v24)
    {
      v20 = &_os_log_default;
      v19 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v42, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v20, v19, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v42, 0x16u);
      }
    }

    v34 = 0;
    return v34 & 1;
  }

  for (i = v26; ; i = i->ifa_next)
  {
    if (!i)
    {
      v34 = 0;
      return v34 & 1;
    }

    if (!i->ifa_name)
    {
      v18 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v18 && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        v17 = v18;
        v16 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v4 = v17;
          v5 = v16;
          __os_log_helper_16_0_0(v15);
          _os_log_error_impl(&_mh_execute_header, v4, v5, "BackboneIPv6Interface update_backbone_ethernet_address ifa_name is nullptr", v15, 2u);
        }
      }

      else if (!v18 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v41, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v41, 0x16u);
      }

      continue;
    }

    std::string::c_str[abi:dn200100](this + 1);
    if (strcmp(v1, i->ifa_name) || i->ifa_addr->sa_family != 18)
    {
      continue;
    }

    ifa_addr = i->ifa_addr;
    if (!ifa_addr)
    {
      v13 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v13 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v40, i->ifa_name);
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "BackboneIPv6Interface update_backbone_ethernet_address ifname=%s sockaddr is null", v40, 0xCu);
        }
      }

      else if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v39, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v39, 0x16u);
      }

      continue;
    }

    v12 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v12 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v38, i->ifa_name, ifa_addr->sa_data[2]);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "BackboneIPv6Interface update_backbone_ethernet_address ifname=%s ether_type=%d", v38, 0x12u);
      }
    }

    else if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v37, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v37, 0x16u);
    }

    if (ifa_addr->sa_data[2] == 6)
    {
      break;
    }
  }

  v2 = &ifa_addr->sa_data[ifa_addr->sa_data[3] + 6];
  *(this + 8) = *v2;
  *(this + 18) = *(v2 + 4);
  freeifaddrs(v26);
  v11 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v11 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_6_4_0_4_0_4_0_4_0_4_0_4_0(v36, *(this + 32), *(this + 33), *(this + 34), *(this + 35), *(this + 36), *(this + 37));
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "BackboneIPv6Interface update_backbone_ethernet_address,the backbone interface HW address is %02x:%02x:%02x:%02x:%02x:%02x ", v36, 0x26u);
    }
  }

  else if (!v11 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v35, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v35, 0x16u);
  }

  v34 = 1;
  return v34 & 1;
}

uint64_t __os_log_helper_16_0_6_4_0_4_0_4_0_4_0_4_0_4_0(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7)
{
  *result = 0;
  *(result + 1) = 6;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 0;
  *(result + 15) = 4;
  *(result + 16) = a4;
  *(result + 20) = 0;
  *(result + 21) = 4;
  *(result + 22) = a5;
  *(result + 26) = 0;
  *(result + 27) = 4;
  *(result + 28) = a6;
  *(result + 32) = 0;
  *(result + 33) = 4;
  *(result + 34) = a7;
  return result;
}

void ot::Posix::BackboneIPv6Interface::send_bmlr_packet(ot::Posix::BackboneIPv6Interface *this, char *a2, size_t a3)
{
  v30 = this;
  v29 = a2;
  v28 = a3;
  if (*(this + 38))
  {
    v22 = -31011;
    v21 = 0;
    bzero(v39, 0x800uLL);
    v20 = v39;
    bcopy(&ot::Posix::bmlr_broadcast_ether, v39, 6uLL);
    bcopy(this + 32, v40, 6uLL);
    v40[3] = _OSSwapInt16(0x86DDu);
    bzero(&v38, 0x12uLL);
    v38.sa_len = 18;
    v38.sa_family = 27;
    bcopy(v29, v41, v28);
    v19 = v41;
    v41[7] = 1;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(7) & 1) != 0)
    {
      v17 = logging_obg;
      v16 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_4_0_4_0(v37, v19[7], v28);
        _os_log_debug_impl(&_mh_execute_header, v17, v16, "BackboneIPv6Interface[BMLR]: Hop limit in the ipv6 header=%d len=%d", v37, 0xEu);
      }
    }

    else if (!logging_obg)
    {
      v15 = &_os_log_default;
      v14 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v36, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v15, v14, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v36, 0x16u);
      }
    }

    if (*(this + 20) == -1)
    {
      v13 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v13 && (syslog_is_the_mask_enabled(7) & 1) != 0)
      {
        oslog = v13;
        v11 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v5 = oslog;
          v6 = v11;
          __os_log_helper_16_0_0(v10);
          _os_log_debug_impl(&_mh_execute_header, v5, v6, "BackboneIPv6Interface[BMLR]: send_bmlr_packet failed as mBackboneInterfaceNdrvFd = -1", v10, 2u);
        }
      }

      else if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v35, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v35, 0x16u);
      }
    }

    else
    {
      v21 = sendto(*(this + 20), v39, v28 + 14, 0, &v38, 0x12u);
      if (v21 == v28 + 14)
      {
        v8 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v8 && (syslog_is_the_mask_enabled(7) & 1) != 0)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_3_8_0_8_0_4_0(v32, v21, v28, *(this + 20));
            _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "BackboneIPv6Interface[BMLR]: send_bmlr_packet sendSize=%zu len=%zu, fd:%d", v32, 0x1Cu);
          }
        }

        else if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v31, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v31, 0x16u);
        }
      }

      else
      {
        v9 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v9 && (syslog_is_the_mask_enabled(3) & 1) != 0)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v3 = __error();
            v4 = strerror(*v3);
            __os_log_helper_16_2_4_8_32_8_0_8_0_4_0(v34, v4, v21, v28, *(this + 20));
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface[BMLR]: send_bmlr_packet sendto failed %s sendSize=%zu len=%zu fd:%d", v34, 0x26u);
          }
        }

        else if (!v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v33, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v33, 0x16u);
        }
      }
    }
  }

  else
  {
    v27 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v27 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v26 = v27;
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_4_0(v43, v28);
        _os_log_error_impl(&_mh_execute_header, v26, type, "BackboneIPv6Interface[BMLR]: Backbone is not connected, cannot send BMLR packet len:%d", v43, 8u);
      }
    }

    else if (!v27)
    {
      v24 = &_os_log_default;
      v23 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v42, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v24, v23, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v42, 0x16u);
      }
    }
  }
}

uint64_t __os_log_helper_16_2_4_8_32_8_0_8_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 4;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_0_3_8_0_8_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

void ot::Posix::BackboneIPv6Interface::send_packet(ot::Posix::BackboneIPv6Interface *this, char *a2, size_t a3)
{
  v35 = this;
  v34 = a2;
  v33 = a3;
  if (*(this + 38))
  {
    v25 = -31011;
    v24 = 0;
    bzero(v46, 0x800uLL);
    v27 = v46;
    bcopy(&ot::Posix::broadcast_ether, v46, 6uLL);
    bcopy(this + 32, v47, 6uLL);
    v47[3] = _OSSwapInt16(0x86DDu);
    bzero(&v45, 0x12uLL);
    v45.sa_len = 18;
    v45.sa_family = 27;
    bcopy(v34, v48, v33);
    v26 = v48;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(7) & 1) != 0)
    {
      v22 = logging_obg;
      v21 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_4_0_4_0(v44, v26[7], v33);
        _os_log_debug_impl(&_mh_execute_header, v22, v21, "BackboneInterface send_packet Hop limit in the ipv6 header=%d len=%d", v44, 0xEu);
      }
    }

    else if (!logging_obg)
    {
      v20 = &_os_log_default;
      v19 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v43, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v20, v19, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v43, 0x16u);
      }
    }

    if (v26[7] > 1u)
    {
      --v26[7];
      if (*(this + 20) == -1)
      {
        v13 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v13 && (syslog_is_the_mask_enabled(7) & 1) != 0)
        {
          oslog = v13;
          v11 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v5 = oslog;
            v6 = v11;
            __os_log_helper_16_0_0(v10);
            _os_log_debug_impl(&_mh_execute_header, v5, v6, "BackboneInterface send_packet failed as mBackboneInterfaceNdrvFd = -1", v10, 2u);
          }
        }

        else if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v40, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v40, 0x16u);
        }
      }

      else
      {
        v24 = sendto(*(this + 20), v46, v33 + 14, 0, &v45, 0x12u);
        if (v24 == v33 + 14)
        {
          v8 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v8 && (syslog_is_the_mask_enabled(7) & 1) != 0)
          {
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_0_2_8_0_8_0(v37, v24, v33);
              _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "BackboneInterface send_packet sent packet sendSize=%zu len=%zu", v37, 0x16u);
            }
          }

          else if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v36, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v36, 0x16u);
          }
        }

        else
        {
          v9 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v9 && (syslog_is_the_mask_enabled(3) & 1) != 0)
          {
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              v3 = __error();
              v4 = strerror(*v3);
              __os_log_helper_16_2_3_8_32_8_0_8_0(v39, v4, v24, v33);
              _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "BackboneInterface send_packet return here as sendto failed %s sendSize=%zu len=%zu", v39, 0x20u);
            }
          }

          else if (!v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v38, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v38, 0x16u);
          }
        }
      }
    }

    else
    {
      v18 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v18 && (syslog_is_the_mask_enabled(7) & 1) != 0)
      {
        v17 = v18;
        v16 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_2_4_0_4_0(v42, v26[7], v33);
          _os_log_debug_impl(&_mh_execute_header, v17, v16, "BackboneInterface drop the packet as Hop limit in the ipv6 header=%d len=%d", v42, 0xEu);
        }
      }

      else if (!v18)
      {
        v15 = &_os_log_default;
        v14 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v41, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v15, v14, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v41, 0x16u);
        }
      }
    }
  }

  else
  {
    v32 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v32 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v31 = v32;
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_4_0(v50, v33);
        _os_log_error_impl(&_mh_execute_header, v31, type, "BackboneIPv6Interface is not connected, cannot send_packet len:%d", v50, 8u);
      }
    }

    else if (!v32)
    {
      v29 = &_os_log_default;
      v28 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v49, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v29, v28, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v49, 0x16u);
      }
    }
  }
}

uint64_t __os_log_helper_16_2_3_8_32_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_0_2_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void ot::Posix::BackboneIPv6Interface::Update(uint64_t a1, _DWORD *a2)
{
  v19 = a1;
  v18 = a2;
  if (*(a1 + 38) & 1) != 0 && (*(a1 + 39) & 1) != 0 && (*(a1 + 40))
  {
    if ((*(a1 + 80) & 0x80000000) == 0 && (*(a1 + 76) & 0x80000000) == 0 && (*(a1 + 72) & 0x80000000) == 0)
    {
      if ((*(a1 + 76) & 0x80000000) != 0)
      {
        logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
        if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
        {
          oslog = logging_obg;
          v9 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
          {
            v2 = oslog;
            v3 = v9;
            __os_log_helper_16_0_0(v8);
            _os_log_error_impl(&_mh_execute_header, v2, v3, "BackboneIPv6Interface::Update Backbone interface BPF fd is invalid. Cannot update fd set", v8, 2u);
          }
        }

        else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v25, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v25, 0x16u);
        }
      }

      else
      {
        v21 = *(a1 + 76);
        v20 = v18;
        v23 = v21;
        v22 = v18;
        if (__darwin_check_fd_set_overflow(v21, v18, 0))
        {
          v20[v21 / 0x20uLL] |= 1 << (v21 % 0x20uLL);
        }

        if (v18[96] < *(a1 + 76))
        {
          v4 = *(a1 + 76);
        }

        else
        {
          v4 = v18[96];
        }

        v18[96] = v4;
      }
    }
  }

  else
  {
    v17 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v17 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v16 = v17;
      v15 = 16;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        log = v16;
        type = v15;
        __os_log_helper_16_0_0(v14);
        _os_log_error_impl(&_mh_execute_header, log, type, "BackboneIPv6Interface::Update Backbone interface is not connected. Cannot update fd set", v14, 2u);
      }
    }

    else if (!v17)
    {
      v13 = &_os_log_default;
      v12 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v26, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v13, v12, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v26, 0x16u);
      }
    }
  }
}

uint64_t ot::Posix::BackboneIPv6Interface::ndrv_socket(ot::Posix::BackboneIPv6Interface *this, const char *a2)
{
  v21 = this;
  v20 = a2;
  v19 = -1;
  *(this + 20) = socket(27, 3, 0);
  if ((*(this + 20) & 0x80000000) != 0)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v17 = logging_obg;
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        v2 = __error();
        v3 = strerror(*v2);
        __os_log_helper_16_2_1_8_32(v30, v3);
        _os_log_error_impl(&_mh_execute_header, v17, type, "BackboneIPv6Interface ndrv socket() failed %s", v30, 0xCu);
      }
    }

    else if (!logging_obg)
    {
      oslog = &_os_log_default;
      v14 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v29, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, oslog, v14, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v29, 0x16u);
      }
    }

    return *(this + 20);
  }

  v13 = 1;
  v19 = setsockopt(*(this + 20), 0xFFFF, 4, &v13, 4u);
  if (v19 < 0)
  {
    v12 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v12 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v4 = __error();
        v5 = strerror(*v4);
        __os_log_helper_16_2_1_8_32(v28, v5);
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface:ndrv_socket() setsockopt(SO_REUSEADDR) failed: %s\n", v28, 0xCu);
      }
    }

    else if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v27, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v27, 0x16u);
    }

LABEL_20:
    close(*(this + 20));
    *(this + 20) = -1;
    return -1;
  }

  if ((ot::Posix::set_nonblocking(*(this + 20)) & 0x80000000) != 0)
  {
    v11 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v11 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_4_0(v26, *(this + 20));
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface:ndrv_socket() Non-Blocking failed interface=%d", v26, 8u);
      }
    }

    else if (!v11 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v25, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v25, 0x16u);
    }

    goto LABEL_20;
  }

  strlcpy(v31.sa_data, v20, 0x10uLL);
  v31.sa_len = 18;
  v31.sa_family = 27;
  if (bind(*(this + 20), &v31, 0x12u) < 0)
  {
    v10 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v10 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v6 = __error();
        v7 = strerror(*v6);
        __os_log_helper_16_2_1_8_32(v24, v7);
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface ndrv  bind() failed %s", v24, 0xCu);
      }
    }

    else if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v23, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v23, 0x16u);
    }
  }

  return *(this + 20);
}

uint64_t ot::Posix::set_nonblocking(ot::Posix *this)
{
  v20 = "com.apple.wpantund.ncp";
  v21 = "default";
  v33 = this;
  v32 = 0;
  v32 = fcntl(this, 3, 0);
  if (v32 == -1)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v30 = logging_obg;
      v29 = 16;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        log = v30;
        *type = v29;
        v16 = v33;
        v1 = __error();
        v2 = strerror(*v1);
        buf = v38;
        __os_log_helper_16_2_2_4_0_8_32(v38, v16, v2);
        _os_log_error_impl(&_mh_execute_header, log, type[0], "BackboneIPv6Interface:set_nonblocking F_GETFL failed fd=%d err:%s", buf, 0x12u);
      }
    }

    else if (!logging_obg)
    {
      oslog = &_os_log_default;
      v27 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v13 = oslog;
        *v14 = v27;
        v15 = v37;
        __os_log_helper_16_2_2_8_32_8_32(v37, v20, v21);
        _os_log_error_impl(&_mh_execute_header, v13, v14[0], "Logging1 Module is not defined for SubSystem: %s, Category: %s", v15, 0x16u);
      }
    }

    return -1;
  }

  if ((v32 & 4) == 0)
  {
    v32 |= 4u;
    if (fcntl(v33, 4, v32) == -1)
    {
      v26 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v26 && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        v25 = v26;
        v24 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v10 = v25;
          *v11 = v24;
          v9 = v33;
          v3 = __error();
          v4 = strerror(*v3);
          v12 = v36;
          __os_log_helper_16_2_2_4_0_8_32(v36, v9, v4);
          _os_log_error_impl(&_mh_execute_header, v10, v11[0], "BackboneIPv6Interface:set_nonblocking O_NONBLOCK failed fd=%d err:%s", v12, 0x12u);
        }
      }

      else if (!v26)
      {
        v23 = &_os_log_default;
        v22 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v6 = v23;
          *v7 = v22;
          v8 = v35;
          __os_log_helper_16_2_2_8_32_8_32(v35, v20, v21);
          _os_log_error_impl(&_mh_execute_header, v6, v7[0], "Logging1 Module is not defined for SubSystem: %s, Category: %s", v8, 0x16u);
        }
      }

      return -1;
    }
  }

  return 0;
}

uint64_t ot::Posix::BackboneIPv6Interface::cleanup(ot::Posix::BackboneIPv6Interface *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_6_4_0_4_0_4_0_4_0_4_0_4_0(v5, *(this + 18), *(this + 19), *(this + 20), *(this + 40) & 1, *(this + 38) & 1, *(this + 39) & 1);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "BackboneIPv6Interface cleanup backboneFd=%d BpfFd=%d ndrvFd=%d mCheckAndInitComplete=%d mBackboneIsConnected=%d mBBRStatePrimary=%d", v5, 0x26u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v4, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v4, 0x16u);
  }

  if (*(this + 20))
  {
    close(*(this + 20));
    *(this + 20) = -1;
  }

  if (*(this + 19))
  {
    close(*(this + 19));
    *(this + 19) = -1;
  }

  if (*(this + 18))
  {
    close(*(this + 18));
    *(this + 18) = -1;
  }

  if (*(this + 11))
  {
    operator delete();
  }

  *(this + 40) = 0;
  return 1;
}

void ot::Posix::BackboneIPv6Interface::updateBBRstate(ot::Posix::BackboneIPv6Interface *this, char a2)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_2_4_0_4_0(v6, a2 & 1, *(this + 39) & 1);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "BackboneIPv6Interface::updateBBRstate isPrimary=%d mBBRStatePrimary=%d", v6, 0xEu);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v5, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v5, 0x16u);
  }

  if ((*(this + 39) & 1) != 0 || (a2 & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      ot::Posix::BackboneIPv6Interface::cleanup(this);
    }
  }

  else
  {
    ot::Posix::BackboneIPv6Interface::checkAndInitialize(this);
  }

  *(this + 39) = a2 & 1;
}

uint64_t ot::Posix::BackboneIPv6Interface::checkAndInitialize(ot::Posix::BackboneIPv6Interface *this)
{
  v27 = this;
  if ((*(this + 40) & 1) == 1)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v25 = logging_obg;
      v24 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_4_0(v34, *(this + 40) & 1);
        _os_log_impl(&_mh_execute_header, v25, v24, "BackboneIPv6Interface::checkAndInitialize=%d", v34, 8u);
      }
    }

    else if (!logging_obg)
    {
      v23 = &_os_log_default;
      v22 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v33, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v23, v22, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v33, 0x16u);
      }
    }

    v28 = 1;
  }

  else if ((*(this + 38) & 1) == 1)
  {
    if (ot::Posix::BackboneIPv6Interface::initializeBackboneInterface(this))
    {
      *(this + 40) = 1;
      v15 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v15 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        v14 = v15;
        v13 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_0_3_4_0_4_0_4_0(v31, *(this + 18), *(this + 19), *(this + 20));
          _os_log_impl(&_mh_execute_header, v14, v13, "BackboneIPv6Interface::checkAndInitialize Backbone link successfully initialized backboneFd=%d BpfFd=%d ndrvFd=%d", v31, 0x14u);
        }
      }

      else if (!v15)
      {
        v12 = &_os_log_default;
        v11 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v30, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v12, v11, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v30, 0x16u);
        }
      }

      v28 = 1;
    }

    else
    {
      *(this + 40) = 0;
      v21 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v21 && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        oslog = v21;
        v19 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v4 = oslog;
          v5 = v19;
          __os_log_helper_16_0_0(v18);
          _os_log_error_impl(&_mh_execute_header, v4, v5, "BackboneIPv6Interface::checkAndInitialize initializeBackboneInterface failed", v18, 2u);
        }
      }

      else if (!v21)
      {
        v17 = &_os_log_default;
        v16 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v32, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v17, v16, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v32, 0x16u);
        }
      }

      v28 = 0;
    }
  }

  else
  {
    *(this + 40) = 0;
    v10 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v10 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v9 = v10;
      v8 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v2 = v9;
        v3 = v8;
        __os_log_helper_16_0_0(v7);
        _os_log_error_impl(&_mh_execute_header, v2, v3, "BackboneIPv6Interface::checkAndInitialize Cannot initialize as backbone link is not connected", v7, 2u);
      }
    }

    else if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v29, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v29, 0x16u);
    }

    v28 = 0;
  }

  return v28 & 1;
}

uint64_t ot::Posix::BackboneIPv6Interface::IsActive(ot::Posix::BackboneIPv6Interface *this)
{
  v3 = 1;
  if ((*(this + 39) & 1) == 0 || (*(this + 40) & 1) == 0 || (*(this + 38) & 1) == 0 || !std::string::size[abi:dn200100](this + 8))
  {
    v3 = 0;
  }

  if ((*(this + 18) & 0x80000000) != 0 || (*(this + 19) & 0x80000000) != 0 || (*(this + 20) & 0x80000000) != 0)
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t ot::Posix::BackboneIPv6Interface::initializeBackboneInterface(ot::Posix::BackboneIPv6Interface *this)
{
  v63 = this;
  v62 = -30578;
  v61 = -1;
  if (!std::string::size[abi:dn200100](this + 8))
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v59 = logging_obg;
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        log = v59;
        v20 = type;
        __os_log_helper_16_0_0(v57);
        _os_log_error_impl(&_mh_execute_header, log, v20, "Unable to initialize as Backbone interface name cannot be got", v57, 2u);
      }
    }

    else if (!logging_obg)
    {
      v56 = &_os_log_default;
      v55 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v81, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v56, v55, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v81, 0x16u);
      }
    }

    v64 = 0;
    return v64 & 1;
  }

  v1 = socket(30, 2, 0);
  v61 = v1;
  if ((v1 & 0x80000000) != 0)
  {
    v54 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v54 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v53 = v54;
      v52 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v2 = __error();
        __os_log_helper_16_0_1_4_0(v80, *v2);
        _os_log_error_impl(&_mh_execute_header, v53, v52, "BackboneIPv6Interface socket call failed for sk %d\n", v80, 8u);
      }
    }

    else if (!v54)
    {
      v51 = &_os_log_default;
      v50 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v79, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v51, v50, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v79, 0x16u);
      }
    }

LABEL_94:
    if (*(this + 18))
    {
      close(*(this + 18));
      *(this + 18) = -1;
    }

    if (*(this + 20))
    {
      close(*(this + 20));
      *(this + 20) = -1;
    }

    if (*(this + 19))
    {
      close(*(this + 19));
      *(this + 19) = -1;
    }

    v64 = 0;
    return v64 & 1;
  }

  *(this + 18) = v61;
  *(this + 19) = ot::Posix::bpf_new(v1);
  v49 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v49 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v48 = v49;
    v47 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_4_0(v78, *(this + 19));
      _os_log_impl(&_mh_execute_header, v48, v47, "BackboneIPv6Interface bp_new fd=%d", v78, 8u);
    }
  }

  else if (!v49)
  {
    v46 = &_os_log_default;
    v45 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v77, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, v46, v45, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v77, 0x16u);
    }
  }

  if ((*(this + 19) & 0x80000000) != 0)
  {
    v44 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v44 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v43 = v44;
      v42 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v18 = *(this + 19);
        v3 = __error();
        __os_log_helper_16_0_2_4_0_4_0(v76, v18, *v3);
        _os_log_error_impl(&_mh_execute_header, v43, v42, "BackboneIPv6Interface no bpf devices mBackboneInterfaceBpfFd(%d) errno(%d)", v76, 0xEu);
      }
    }

    else if (!v44)
    {
      v41 = &_os_log_default;
      v40 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v75, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v41, v40, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v75, 0x16u);
      }
    }

    goto LABEL_94;
  }

  v17 = *(this + 19);
  std::string::c_str[abi:dn200100](this + 1);
  if ((ot::Posix::bpf_set_options(v17, v4, v5) & 0x80000000) != 0)
  {
    v39 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v39 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v38 = v39;
      v37 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v15 = v38;
        v16 = v37;
        __os_log_helper_16_0_0(v36);
        _os_log_error_impl(&_mh_execute_header, v15, v16, "BackboneIPv6Interface bpf attach failed", v36, 2u);
      }
    }

    else if (!v39)
    {
      v35 = &_os_log_default;
      v34 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v74, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v35, v34, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v74, 0x16u);
      }
    }

    goto LABEL_94;
  }

  v33 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v33 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v32 = v33;
    v31 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_4_0(v73, *(this + 19));
      _os_log_impl(&_mh_execute_header, v32, v31, "BackboneIPv6Interface bpf_set_options fd=%d", v73, 8u);
    }
  }

  else if (!v33)
  {
    v30 = &_os_log_default;
    v29 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v72, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, v30, v29, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v72, 0x16u);
    }
  }

  if ((ot::Posix::bpf_set_filter(*(this + 19)) & 0x80000000) != 0)
  {
    v28 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v28 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v27 = v28;
      v26 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v13 = v27;
        v14 = v26;
        __os_log_helper_16_0_0(v25);
        _os_log_error_impl(&_mh_execute_header, v13, v14, "BackboneIPv6Interface bpf set filter failed", v25, 2u);
      }
    }

    else if (!v28 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v71, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v71, 0x16u);
    }

    goto LABEL_94;
  }

  v24 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v24 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v11 = *(this + 19);
      std::string::c_str[abi:dn200100](this + 1);
      v12 = v6;
      std::string::c_str[abi:dn200100](this + 6);
      __os_log_helper_16_2_3_4_0_8_32_8_32(v70, v11, v12, v7);
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "BackboneIPv6Interface bpf_set_filter fd=%d backbone interface name =%s thread interface name=%s", v70, 0x1Cu);
    }
  }

  else if (!v24 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v69, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v69, 0x16u);
  }

  std::string::c_str[abi:dn200100](this + 1);
  *(this + 20) = ot::Posix::BackboneIPv6Interface::ndrv_socket(this, v8);
  if ((*(this + 20) & 0x80000000) != 0)
  {
    v23 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v23 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v9 = __error();
        __os_log_helper_16_0_1_4_0(v68, *v9);
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface ndrv_socket call failed for mBackboneInterfaceNdrvFd %d\n", v68, 8u);
      }
    }

    else if (!v23 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v67, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v67, 0x16u);
    }

    *(this + 20) = -1;
    goto LABEL_94;
  }

  v22 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v22 && (syslog_is_the_mask_enabled(7) & 1) != 0)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_4_8_32_4_0_4_0_4_0(v66, "initializeBackboneInterface", *(this + 19), *(this + 18), *(this + 20));
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s: BackboneInterface fd set with backboneBpfFd(%d) and backboneInterfaceFd(%d) ndrvInterfaceFd(%d)", v66, 0x1Eu);
    }
  }

  else if (!v22 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v65, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v65, 0x16u);
  }

  v64 = 1;
  return v64 & 1;
}

uint64_t ot::Posix::BackboneIPv6Interface::updateBackboneInterfaceInfo(ot::Posix::BackboneIPv6Interface *this, const char *a2, char a3, char a4)
{
  v25 = this;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
  {
    v20 = logging_obg;
    v19 = 16;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      type = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_error_impl(&_mh_execute_header, log, type, "BackboneIPv6Interface::updateBackboneInterfaceInfo", v18, 2u);
    }
  }

  else if (!logging_obg)
  {
    v17 = &_os_log_default;
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v29, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, v17, v16, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v29, 0x16u);
    }
  }

  if (v24)
  {
    std::string::basic_string[abi:dn200100]<0>(&v15, v24);
    std::string::operator=[abi:dn200100](this + 1, &v15);
    std::string::~string(&v15);
    if (!ot::Posix::BackboneIPv6Interface::update_backbone_ethernet_address(this))
    {
      v14 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v14 && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        v13 = v14;
        v12 = 16;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v5 = v13;
          v6 = v12;
          __os_log_helper_16_0_0(v11);
          _os_log_error_impl(&_mh_execute_header, v5, v6, "BackboneIPv6Interface::updateBackboneInterfaceInfo update_backbone_ethernet_address failed", v11, 2u);
        }
      }

      else if (!v14 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v28, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v28, 0x16u);
      }

      v23 = 0;
    }
  }

  else
  {
    std::string::clear[abi:dn200100](this + 1);
  }

  *(this + 38) = v23 & 1;
  if ((*(this + 39) & 1) == 1 && (*(this + 40) & 1) == 0)
  {
    v10 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v10 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_2_4_0_4_0(v27, *(this + 39) & 1, v23 & 1);
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface::updateBackboneInterfaceInfo calling check & initialize state = %d, isConnected = %d", v27, 0xEu);
      }
    }

    else if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v26, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v26, 0x16u);
    }

    ot::Posix::BackboneIPv6Interface::checkAndInitialize(this);
  }

  return 1;
}

void std::string::clear[abi:dn200100](uint64_t *a1)
{
  v7 = a1;
  v6 = std::string::size[abi:dn200100](a1);
  if (std::string::__is_long[abi:dn200100](a1))
  {
    v1 = std::string::__get_long_pointer[abi:dn200100](a1);
    v5 = 0;
    std::char_traits<char>::assign[abi:dn200100](v1, &v5);
    std::string::__set_long_size[abi:dn200100](a1, 0);
  }

  else
  {
    std::string::__get_short_pointer[abi:dn200100](a1);
    v4 = 0;
    std::char_traits<char>::assign[abi:dn200100](v2, &v4);
    std::string::__set_short_size[abi:dn200100](a1, 0);
  }

  std::string::__annotate_shrink[abi:dn200100]();
}

uint64_t ot::Posix::BackboneIPv6Interface::subscribeMulticastAddress(ot::Posix::BackboneIPv6Interface *this, const in6_addr *a2)
{
  v19 = this;
  v18 = a2;
  in6_addr_to_string(a2, &v17);
  v11 = *(this + 18);
  std::string::c_str[abi:dn200100](this + 1);
  v10 = v2;
  std::string::c_str[abi:dn200100](&v17);
  if ((ot::Posix::set_multicast_for_interface(v11, 80, v10, v3, v4) & 0x80000000) != 0)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v15 = logging_obg;
      v14 = 16;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        log = v15;
        type = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_error_impl(&_mh_execute_header, log, type, "BackboneIPv6Interface::subscribeMulticastAddress failed\n", v13, 2u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v23, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v23, 0x16u);
    }

    v20 = 0;
  }

  else
  {
    v12 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v12 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        std::string::c_str[abi:dn200100](&v17);
        __os_log_helper_16_2_1_8_32(v22, v5);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "BackboneIPv6Interface::subscribeMulticastAddress subscribed:%s on Backbone", v22, 0xCu);
      }
    }

    else if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v21, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v21, 0x16u);
    }

    v20 = 1;
  }

  std::string::~string(&v17);
  return v20 & 1;
}

uint64_t ot::Posix::set_multicast_for_interface(ot::Posix *this, int a2, const char *a3, const char *a4, const char *a5)
{
  v30 = this;
  v29 = a2;
  v28 = a3;
  v27 = a4;
  v26 = 0;
  if (a2 != 81 && a2 != 80)
  {
    return -1;
  }

  else
  {
    *&v25[24] = if_nametoindex(v28);
    v39 = *&v25[24];
    *&v25[16] = &v40;
    *v25 = 0;
    *&v25[8] = 0;
    v5 = gethostbyname2(v27, 30);
    v24 = v5;
    if (v5)
    {
      if (v24->h_length < 1)
      {
        logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
        if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
        {
          if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_0_1_4_0(v37, v24->h_length);
            _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface tmp->h_length [%d] is invalid \n", v37, 8u);
          }
        }

        else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v36, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v36, 0x16u);
        }

        return -1;
      }

      else
      {
        inet_pton(30, v27, v25);
        v6 = *&v25[16];
        *(*&v25[16] + 8) = *v25;
        *(v6 + 20) = *&v25[12];
        *(*&v25[16] + 1) = 30;
        *(*&v25[16] + 2) = 0;
        *(*&v25[16] + 4) = 0;
        *(*&v25[16] + 24) = if_nametoindex(v28);
        **&v25[16] = 28;
        v7 = setsockopt(v30, 41, v29, &v39, 0x84u);
        v26 = v7;
        if (v7)
        {
          v18 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v18 && (syslog_is_the_mask_enabled(3) & 1) != 0)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v8 = "MCAST_JOIN_GROUP";
              if (v29 != 80)
              {
                v8 = "MCAST_LEAVE_GROUP";
              }

              v13 = v8;
              v14 = *&v25[24];
              v9 = __error();
              v10 = strerror(*v9);
              __os_log_helper_16_2_4_8_32_4_0_8_32_4_0(v35, v13, v14, v10, v26);
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface setsockopt(%s) if_index %d failed, %s ret %d\n", v35, 0x22u);
            }
          }

          else if (!v18 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v34, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v34, 0x16u);
          }
        }

        else
        {
          v17 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v17 && (syslog_is_the_mask_enabled(6) & 1) != 0)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              if (v29 == 80)
              {
                v11 = "MCAST_JOIN_GROUP";
              }

              else
              {
                v11 = "MCAST_LEAVE_GROUP";
              }

              __os_log_helper_16_2_5_8_32_4_0_8_32_8_32_4_0(v33, v11, *&v25[24], v28, v27, v26);
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "BackboneIPv6Interface setsockopt(%s) if_index %d ifname=%s group_name=%s succeeded, ret %d\n", v33, 0x2Cu);
            }
          }

          else if (!v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v32, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v32, 0x16u);
          }
        }

        return v26;
      }
    }

    else
    {
      v23 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v23 && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        v22 = v23;
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          log = v22;
          v16 = type;
          __os_log_helper_16_0_0(v20);
          _os_log_error_impl(&_mh_execute_header, log, v16, "BackboneIPv6Interface tmp is NULL. Cannot convert group name to adddress\n", v20, 2u);
        }
      }

      else if (!v23 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v38, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v38, 0x16u);
      }

      return -1;
    }
  }
}

uint64_t ot::Posix::BackboneIPv6Interface::unSubscribeMulticastAddress(ot::Posix::BackboneIPv6Interface *this, const in6_addr *a2)
{
  v19 = this;
  v18 = a2;
  in6_addr_to_string(a2, &v17);
  v11 = *(this + 18);
  std::string::c_str[abi:dn200100](this + 1);
  v10 = v2;
  std::string::c_str[abi:dn200100](&v17);
  if ((ot::Posix::set_multicast_for_interface(v11, 81, v10, v3, v4) & 0x80000000) != 0)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      v15 = logging_obg;
      v14 = 16;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        log = v15;
        type = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_error_impl(&_mh_execute_header, log, type, "BackboneIPv6Interface::unSubscribeMulticastAddress failed\n", v13, 2u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v23, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v23, 0x16u);
    }

    v20 = 0;
  }

  else
  {
    v12 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v12 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        std::string::c_str[abi:dn200100](&v17);
        __os_log_helper_16_2_1_8_32(v22, v5);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "BackboneIPv6Interface::unSubscribeMulticastAddress unsubscribed:%s on Backbone", v22, 0xCu);
      }
    }

    else if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v21, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v21, 0x16u);
    }

    v20 = 1;
  }

  std::string::~string(&v17);
  return v20 & 1;
}

uint64_t ot::Posix::bpf_set_options(ot::Posix *this, const char *a2, const char *a3)
{
  v29 = this;
  v28 = a2;
  v27 = 0;
  v24 = -1;
  strlcpy(__dst, a2, 0xFuLL);
  if (ioctl(v29, 0x8020426CuLL, __dst) < 0)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        v3 = __error();
        v4 = strerror(*v3);
        __os_log_helper_16_2_2_8_32_8_32(v41, v28, v4);
        _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface:bpf_set_options BIOCSETIF failed interface=%s err:%s", v41, 0x16u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v40, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v40, 0x16u);
    }
  }

  else if (ioctl(v29, 0x80044275uLL, &v27) < 0)
  {
    v22 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v22 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v17 = v28;
        v5 = __error();
        v6 = strerror(*v5);
        __os_log_helper_16_2_2_8_32_8_32(v39, v17, v6);
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface:bpf_set_options BIOCSHDRCMPLT failed interface=%s err:%s", v39, 0x16u);
      }
    }

    else if (!v22 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v38, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v38, 0x16u);
    }
  }

  else if (ioctl(v29, 0x80044277uLL, &v27) < 0)
  {
    v21 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v21 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v16 = v28;
        v7 = __error();
        v8 = strerror(*v7);
        __os_log_helper_16_2_2_8_32_8_32(v37, v16, v8);
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface:bpf_set_options BIOCSSEESENT failed interface=%s err:%s", v37, 0x16u);
      }
    }

    else if (!v21 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v36, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v36, 0x16u);
    }
  }

  else if (ioctl(v29, 0x80044270uLL, &v27) < 0)
  {
    v20 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v20 && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v15 = v28;
        v9 = __error();
        v10 = strerror(*v9);
        __os_log_helper_16_2_2_8_32_8_32(v35, v15, v10);
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface:bpf_set_options BIOCIMMEDIATE failed interface=%s err:%s", v35, 0x16u);
      }
    }

    else if (!v20 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v34, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v34, 0x16u);
    }
  }

  else
  {
    v25 = 0;
    v26 = 1000;
    if (ioctl(v29, 0x8010426DuLL, &v25) == -1)
    {
      v24 = -1;
      v19 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v19 && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v14 = v28;
          v11 = __error();
          v12 = strerror(*v11);
          __os_log_helper_16_2_2_8_32_8_32(v33, v14, v12);
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface:bpf_set_options BIOCSRTIMEOUT failed interface=%s err:%s", v33, 0x16u);
        }
      }

      else if (!v19 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v32, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v32, 0x16u);
      }
    }

    else if ((ot::Posix::set_nonblocking(v29) & 0x80000000) != 0)
    {
      v24 = -1;
      v18 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v18 && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_32(v31, v28);
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "BackboneIPv6Interface:bpf_set_options Non-Blocking failed interface=%s", v31, 0xCu);
        }
      }

      else if (!v18 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v30, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v30, 0x16u);
      }
    }

    else
    {
      v24 = 0;
    }
  }

  if (v24 == -1 && v29)
  {
    close(v29);
  }

  return v24;
}

uint64_t ot::Posix::bpf_set_filter(ot::Posix *this)
{
  v4 = this;
  memcpy(__dst, "(", sizeof(__dst));
  v2 = 6;
  v3 = __dst;
  if (ioctl(v4, 0x80104267uLL, &v2) < 0)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t __os_log_helper_16_2_3_4_0_8_32_8_32(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 32;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 32;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_4_0_4_0_4_0(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  *(result + 24) = 0;
  *(result + 25) = 4;
  *(result + 26) = a5;
  return result;
}

ot::Posix::BackboneIPv6Interface *ot::Posix::BackboneIPv6Interface::BackboneIPv6Interface(ot::Posix::BackboneIPv6Interface *this)
{
  *this = off_1004C8F80;
  std::string::basic_string[abi:dn200100]((this + 8));
  std::string::basic_string[abi:dn200100]((this + 48));
  *(this + 18) = -1;
  *(this + 19) = -1;
  *(this + 20) = -1;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 100) = 0;
  std::string::clear[abi:dn200100](this + 1);
  result = this;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  return result;
}

{
  ot::Posix::BackboneIPv6Interface::BackboneIPv6Interface(this);
  return this;
}

ot::Spinel::SpinelInterface *std::string::basic_string[abi:dn200100](ot::Spinel::SpinelInterface *a1)
{
  std::string::basic_string[abi:dn200100](a1);
  return a1;
}

{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  std::allocator<char>::allocator[abi:dn200100](a1);
  std::string::__annotate_shrink[abi:dn200100]();
  return a1;
}

void ot::Posix::BackboneIPv6Interface::~BackboneIPv6Interface(ot::Posix::BackboneIPv6Interface *this)
{
  *this = off_1004C8F80;
  stopNetworkMonitoringOnBackbone();
  if (*(this + 20))
  {
    close(*(this + 20));
    *(this + 20) = -1;
  }

  if (*(this + 19))
  {
    close(*(this + 19));
    *(this + 19) = -1;
  }

  if (*(this + 18))
  {
    close(*(this + 18));
    *(this + 18) = -1;
  }

  if (*(this + 11))
  {
    operator delete();
  }

  std::string::~string(this + 2);
  std::string::~string((this + 8));
}

{
  ot::Posix::BackboneIPv6Interface::~BackboneIPv6Interface(this);
}

{
  ot::Posix::BackboneIPv6Interface::~BackboneIPv6Interface(this);
  operator delete();
}

uint64_t __os_log_helper_16_2_4_8_32_4_0_8_32_4_0(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 32;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 4;
  *(result + 30) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_4_0_8_32_8_32_4_0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 32;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 32;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 4;
  *(result + 40) = a6;
  return result;
}

ot::Spinel::SpinelInterface *std::allocator<char>::allocator[abi:dn200100](ot::Spinel::SpinelInterface *a1)
{
  std::allocator<char>::allocator[abi:dn200100](a1);
  return a1;
}

{
  ot::Spinel::SpinelInterface::~SpinelInterface(a1);
  return a1;
}

uint64_t std::string::__get_long_size[abi:dn200100](uint64_t a1)
{
  if (*(a1 + 16) >= 0)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/string:1983: assertion __rep_.__l.__is_long_ failed: String has to be long when trying to get the long size\n");
  }

  return *(a1 + 8);
}

uint64_t std::string::__get_short_size[abi:dn200100](uint64_t a1)
{
  if (*(a1 + 23) >> 7)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/string:1974: assertion !__rep_.__s.__is_long_ failed: String has to be short when trying to get the short size\n");
  }

  return *(a1 + 23) & 0x7F;
}

uint64_t std::string::__get_pointer[abi:dn200100](uint64_t *a1)
{
  if (std::string::__is_long[abi:dn200100](a1))
  {
    return std::string::__get_long_pointer[abi:dn200100](a1);
  }

  std::string::__get_short_pointer[abi:dn200100](a1);
  return v1;
}

uint64_t std::string::__get_long_pointer[abi:dn200100](uint64_t *a1)
{
  if (a1[2] >= 0)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/string:2015: assertion __rep_.__l.__is_long_ failed: String has to be long when trying to get the long pointer\n");
  }

  return *a1;
}

{
  if (a1[2] >= 0)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/string:2010: assertion __rep_.__l.__is_long_ failed: String has to be long when trying to get the long pointer\n");
  }

  return *a1;
}

void std::string::__move_assign[abi:dn200100](uint64_t *a1, ot::Spinel::SpinelInterface *a2)
{
  v9 = a1;
  v8 = a2;
  std::string::__annotate_delete[abi:dn200100]();
  if (std::string::__is_long[abi:dn200100](a1))
  {
    v4 = std::string::__get_long_pointer[abi:dn200100](a1);
    std::string::__get_long_cap[abi:dn200100](a1);
    std::allocator_traits<std::allocator<char>>::deallocate[abi:dn200100](a1, v4);
  }

  v7 = std::string::size[abi:dn200100](v8);
  v6[1] = !std::string::__is_long[abi:dn200100](v8);
  std::string::__move_assign_alloc[abi:dn200100]();
  v2 = v8;
  *a1 = *v8;
  a1[2] = *(v2 + 2);
  std::string::__set_short_size[abi:dn200100](v8, 0);
  std::string::__get_short_pointer[abi:dn200100](v8);
  v6[0] = 0;
  std::char_traits<char>::assign[abi:dn200100](v3, v6);
  std::string::__annotate_shrink[abi:dn200100]();
  if (!std::string::__is_long[abi:dn200100](a1) && v8 != a1)
  {
    std::string::__get_short_size[abi:dn200100](a1);
    std::string::__annotate_shrink[abi:dn200100]();
  }
}

uint64_t std::string::__get_long_cap[abi:dn200100](uint64_t a1)
{
  if (*(a1 + 16) >= 0)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/string:2001: assertion __rep_.__l.__is_long_ failed: String has to be long when trying to get the long capacity\n");
  }

  return *(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL;
}

void std::string::__move_assign_alloc[abi:dn200100]()
{
  std::string::__move_assign_alloc[abi:dn200100]();
}

{
  ;
}

void std::string::__set_short_size[abi:dn200100](uint64_t a1, unint64_t a2)
{
  v3 = a2;
  if (a2 >= 0x17)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/string:1967: assertion __s < __min_cap failed: __s should never be greater than or equal to the short string capacity\n");
  }

  *(a1 + 23) = *(a1 + 23) & 0x80 | v3 & 0x7F;
  *(a1 + 23) &= ~0x80u;
}

uint64_t __cxx_global_var_init_1()
{
  return boost::optional_ns::in_place_init_t::in_place_init_t(&boost::optional_ns::in_place_init_if);
}

{
  return boost::optional_ns::in_place_init_t::in_place_init_t(&boost::optional_ns::in_place_init);
}

ot::Spinel::RadioSpinel *ot::Spinel::RadioSpinel::RadioSpinel(ot::Spinel::RadioSpinel *this)
{
  ot::Spinel::Logger::Logger(this, "RadioSpinel");
  *(this + 28) = 0;
  *(this + 148) = 0;
  *(this + 298) = 1;
  *(this + 299) = 0;
  *(this + 300) = 0;
  *(this + 76) = 0;
  *(this + 39) = 0;
  *(this + 82) = 0;
  *(this + 83) = 0;
  *(this + 336) = 1;
  *(this + 337) = 0;
  *(this + 114) = 0;
  *(this + 464) = 0;
  *(this + 465) = -1;
  *(this + 932) = 0;
  *(this + 933) = 0;
  *(this + 235) = 0;
  *(this + 236) = 0;
  *(this + 948) &= ~1u;
  *(this + 948) = *(this + 948) & 0xFD | 2;
  *(this + 948) &= ~4u;
  *(this + 475) = 0;
  *(this + 952) &= 0xF8u;
  *(this + 566) = 0;
  *(this + 823) = 0;
  *(this + 1655) &= ~2u;
  *(this + 1655) &= ~4u;
  *(this + 1655) &= ~8u;
  *(this + 1655) &= ~0x10u;
  *(this + 1655) &= ~0x20u;
  *(this + 1655) &= ~0x40u;
  *(this + 1655) &= ~0x80u;
  *(this + 1655) &= ~0x100u;
  *(this + 1657) = 0;
  *(this + 1658) &= ~1u;
  *(this + 1659) = 0;
  *(this + 208) = 0;
  *(this + 209) = 0;
  *(this + 210) = -1;
  *(this + 211) = -1;
  *(this + 212) = -1;
  ot::MaxPowerTable::MaxPowerTable((this + 1704));
  *(this + 1736) = 0;
  *(this + 1737) = 0;
  *(this + 218) = 0;
  *(this + 219) = 0;
  *(this + 1760) = 0;
  *(this + 221) = 0;
  *(this + 215) = 0;
  *(this + 216) = 0;
  memset(this + 232, 0, 0x40uLL);
  return this;
}

{
  ot::Spinel::RadioSpinel::RadioSpinel(this);
  return this;
}

uint64_t ot::Spinel::RadioSpinel::Init(const char **this, char a2, char a3, ot::Spinel::SpinelDriver *a4, unsigned __int16 a5, char a6)
{
  v54 = this;
  v53 = a2;
  v52 = a3;
  v51 = a4;
  v50 = a5;
  v49 = a6;
  ot::Spinel::Logger::LogInfo1(this, "%s: Init", "Init");
  v48 = 0;
  v47 = 0;
  v46 = 0;
  *(this + 948) = *(this + 948) & 0xF7 | (8 * (v52 & 1));
  *(this + 1760) = v49 & 1;
  this[221] = v51;
  ot::Spinel::SpinelDriver::SetFrameHandler(this[221], ot::Spinel::RadioSpinel::HandleReceivedFrame, ot::Spinel::RadioSpinel::HandleSavedFrame, this);
  result = ot::Spinel::RadioSpinel::Get(this, 8, "E");
  v48 = result;
  if (!result)
  {
    ot::Spinel::RadioSpinel::InitializeCaps(this, &v47, &v46);
    if ((ot::Spinel::RadioSpinel::sSupportsLogCrashDump & 1) == 0 || (otLogDebgPlat("RCP supports crash dump logging. Requesting crash dump.", v7, v8, v9, v10, v11, v12, v13, &ot::Spinel::RadioSpinel::sIeeeEui64), result = ot::Spinel::RadioSpinel::Set(this, 178, 0), (v48 = result) == 0))
    {
      if ((v53 & 1) == 0)
      {
        v45 = ot::Spinel::RadioSpinel::CheckRcpApiVersion(this, v47, v46);
        if (v45)
        {
          strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
          if (v45 == 7)
          {
            v14 = 2;
          }

          else
          {
            v14 = 1;
          }

          otExitCodeToString(v14);
          otLogCritPlat("%s() at %s:%d: %s", v15, v16, v17, v18, v19, v20, v21, "Init");
          handle_daemon_exit();
          if (v45 == 7)
          {
            v22 = 2;
          }

          else
          {
            v22 = 1;
          }

          exit(v22);
        }

        v44 = ot::Spinel::RadioSpinel::CheckRadioCapabilities(this, v50);
        if (v44)
        {
          strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
          if (v44 == 7)
          {
            v23 = 2;
          }

          else
          {
            v23 = 1;
          }

          otExitCodeToString(v23);
          otLogCritPlat("%s() at %s:%d: %s", v24, v25, v26, v27, v28, v29, v30, "Init");
          handle_daemon_exit();
          if (v44 == 7)
          {
            v31 = 2;
          }

          else
          {
            v31 = 1;
          }

          exit(v31);
        }
      }

      v32 = this[28];
      result = otPlatRadioRcp2GetSpinelVersion();
      this[90] = this + 338;
      this[98] = this + 465;
      this[106] = (this + 74);
    }
  }

  v43 = v48;
  if (v48)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    if (v43 == 7)
    {
      v33 = 2;
    }

    else
    {
      v33 = 1;
    }

    otExitCodeToString(v33);
    otLogCritPlat("%s() at %s:%d: %s", v34, v35, v36, v37, v38, v39, v40, "Init");
    handle_daemon_exit();
    if (v43 == 7)
    {
      v41 = 2;
    }

    else
    {
      v41 = 1;
    }

    exit(v41);
  }

  return result;
}

uint64_t ot::Spinel::RadioSpinel::Get(ot::Spinel::RadioSpinel *this, int a2, const char *a3, ...)
{
  va_start(va, a3);
  if (pciNotOpen())
  {
    return 0;
  }

  else
  {
    if (*(this + 300))
    {
      __assert_rtn("Get", "radio_spinel.cpp", 1973, "mWaitingTid == 0");
    }

    do
    {
      ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
      *(this + 40) = va;
      v5 = ot::Spinel::RadioSpinel::RequestWithPropertyFormatV(this, a3, 2, a2, 0, *(this + 40));
    }

    while ((*(this + 952) & 7) != 0);
    return v5;
  }
}

BOOL ot::Spinel::RadioSpinel::InitializeCaps(ot::Spinel::RadioSpinel *this, BOOL *a2, BOOL *a3)
{
  SpinelDriver = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
  if (!ot::Spinel::SpinelDriver::CoprocessorHasCap(SpinelDriver, 34))
  {
    otLogCritPlat("The co-processor isn't a RCP!", v4, v5, v6, v7, v8, v9, v10, v32);
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    otExitCodeToString(3);
    otLogCritPlat("%s() at %s:%d: %s", v11, v12, v13, v14, v15, v16, v17, "InitializeCaps");
    handle_daemon_exit();
    exit(3);
  }

  v18 = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
  if (!ot::Spinel::SpinelDriver::CoprocessorHasCap(v18, 513))
  {
    ot::Spinel::Logger::LogCrit1(this, "RCP capability list does not include support for radio/raw mode");
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    otExitCodeToString(3);
    otLogCritPlat("%s() at %s:%d: %s", v19, v20, v21, v22, v23, v24, v25, "InitializeCaps");
    handle_daemon_exit();
    exit(3);
  }

  v26 = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
  ot::Spinel::RadioSpinel::sSupportsLogStream = ot::Spinel::SpinelDriver::CoprocessorHasCap(v26, 518);
  v27 = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
  *a2 = ot::Spinel::SpinelDriver::CoprocessorHasCap(v27, 64);
  v28 = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
  ot::Spinel::RadioSpinel::sSupportsResetToBootloader = ot::Spinel::SpinelDriver::CoprocessorHasCap(v28, 66);
  v29 = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
  *a3 = ot::Spinel::SpinelDriver::CoprocessorHasCap(v29, 65);
  v30 = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
  result = ot::Spinel::SpinelDriver::CoprocessorHasCap(v30, 67);
  ot::Spinel::RadioSpinel::sSupportsLogCrashDump = result;
  return result;
}

uint64_t ot::Spinel::RadioSpinel::Set(ot::Spinel::RadioSpinel *this, int a2, char *a3, ...)
{
  va_start(va, a3);
  if (pciNotOpen())
  {
    return 0;
  }

  else
  {
    if (*(this + 300))
    {
      __assert_rtn("Set", "radio_spinel.cpp", 2033, "mWaitingTid == 0");
    }

    do
    {
      ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
      *(this + 40) = va;
      v5 = ot::Spinel::RadioSpinel::RequestWithExpectedCommandV(this, 6, 3, a2, a3, *(this + 40));
    }

    while ((*(this + 952) & 7) != 0);
    return v5;
  }
}

uint64_t ot::Spinel::RadioSpinel::CheckRcpApiVersion(ot::Spinel::RadioSpinel *this, char a2, char a3)
{
  v24 = this;
  v23 = a2;
  v22 = a3;
  v21 = 0;
  if (a2)
  {
    v20 = 0;
    v21 = ot::Spinel::RadioSpinel::Get(this, 176, "i", &v20);
    if (v21)
    {
      return v21;
    }

    if (v20 < 4)
    {
      ot::Spinel::Logger::LogCrit1(this, "RCP and host are using incompatible API versions");
      ot::Spinel::Logger::LogCrit1(this, "RCP API Version %u is older than min required by host %u", v20, 4);
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      otExitCodeToString(3);
      otLogCritPlat("%s() at %s:%d: %s", v3, v4, v5, v6, v7, v8, v9, "CheckRcpApiVersion");
      handle_daemon_exit();
      exit(3);
    }
  }

  if (v22)
  {
    v19 = 0;
    v21 = ot::Spinel::RadioSpinel::Get(this, 177, "i", &v19);
    if (!v21 && v19 > 0xA)
    {
      ot::Spinel::Logger::LogCrit1(this, "RCP and host are using incompatible API versions");
      ot::Spinel::Logger::LogCrit1(this, "RCP requires min host API version %u but host is older and at version %u", v19, 10);
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      otExitCodeToString(3);
      otLogCritPlat("%s() at %s:%d: %s", v10, v11, v12, v13, v14, v15, v16, "CheckRcpApiVersion");
      handle_daemon_exit();
      exit(3);
    }
  }

  return v21;
}

uint64_t ot::Spinel::RadioSpinel::CheckRadioCapabilities(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v16 = this;
  v15 = a2;
  v14 = 0;
  v13 = 0;
  v14 = ot::Spinel::RadioSpinel::Get(this, 4619, "i", &v13);
  if (!v14)
  {
    ot::Spinel::RadioSpinel::sRadioCaps = v13;
    if ((v13 & v15) != v15)
    {
      v12 = ot::Spinel::RadioSpinel::sRadioCaps & v15 ^ v15;
      ot::Spinel::Logger::LogCrit1(this, "RCP is missing required capabilities: ");
      for (i = 0; i < 0xA; ++i)
      {
        if ((v12 & (1 << i)) != 0)
        {
          ot::Spinel::Logger::LogCrit1(this, "    %s", ot::Spinel::RadioSpinel::CheckRadioCapabilities(unsigned short)::kAllRadioCapsStr[i]);
        }
      }

      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      otExitCodeToString(3);
      otLogCritPlat("%s() at %s:%d: %s", v2, v3, v4, v5, v6, v7, v8, "CheckRadioCapabilities");
      handle_daemon_exit();
      exit(3);
    }
  }

  return v14;
}

void *ot::Spinel::RadioSpinel::SetCallbacks(uint64_t a1, void *a2)
{
  if (!a2[6])
  {
    __assert_rtn("SetCallbacks", "radio_spinel.cpp", 223, "aCallbacks.mDiagReceiveDone != nullptr");
  }

  if (!a2[7])
  {
    __assert_rtn("SetCallbacks", "radio_spinel.cpp", 224, "aCallbacks.mDiagTransmitDone != nullptr");
  }

  if (!a2[2])
  {
    __assert_rtn("SetCallbacks", "radio_spinel.cpp", 226, "aCallbacks.mEnergyScanDone != nullptr");
  }

  if (!*a2)
  {
    __assert_rtn("SetCallbacks", "radio_spinel.cpp", 227, "aCallbacks.mReceiveDone != nullptr");
  }

  if (!a2[1])
  {
    __assert_rtn("SetCallbacks", "radio_spinel.cpp", 228, "aCallbacks.mTransmitDone != nullptr");
  }

  if (!a2[4])
  {
    __assert_rtn("SetCallbacks", "radio_spinel.cpp", 229, "aCallbacks.mTxStarted != nullptr");
  }

  return memcpy((a1 + 232), a2, 0x40uLL);
}

uint64_t ot::Spinel::RadioSpinel::CheckSpinelVersion(ot::Spinel::RadioSpinel *this)
{
  v19 = this;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v18 = ot::Spinel::RadioSpinel::Get(this, 1, "ii", &v17, &v16);
  if (!v18 && (v17 != 4 || v16 != 3))
  {
    otLogCritPlat("Spinel version mismatch - Posix:%d.%d, RCP:%d.%d", v1, v2, v3, v4, v5, v6, v7, 4);
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    otExitCodeToString(3);
    otLogCritPlat("%s() at %s:%d: %s", v8, v9, v10, v11, v12, v13, v14, "CheckSpinelVersion");
    handle_daemon_exit();
    exit(3);
  }

  return v18;
}

uint64_t ot::Spinel::RadioSpinel::GetSpinelDriver(ot::Spinel::RadioSpinel *this)
{
  if ((gSystemDieNow & 1) == 1)
  {
    busy_wait_for_shutdown();
  }

  if (!*(this + 221))
  {
    __assert_rtn("GetSpinelDriver", "radio_spinel.cpp", 1090, "mSpinelDriver != nullptr");
  }

  return *(this + 221);
}

BOOL ot::Spinel::SpinelDriver::CoprocessorHasCap(ot::Spinel::SpinelDriver *this, int a2)
{
  v4 = this;
  v3 = a2;
  return ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::Contains(this + 8420, &v3);
}

{
  return ot::Spinel::SpinelDriver::CoprocessorHasCap(this, a2);
}

uint64_t ot::Spinel::encode_data_into_string(ot::Spinel *this, const unsigned __int8 *a2, _BYTE *a3, char *a4, int a5)
{
  for (i = 0; ; i += 2)
  {
    v11 = 0;
    if (a2)
    {
      v11 = a4 > 2;
    }

    if (!v11)
    {
      break;
    }

    v5 = this;
    this = (this + 1);
    v12 = *v5;
    --a2;
    --a5;
    *a3 = ot::Spinel::int_to_hex_digit((*v5 >> 4));
    v6 = ot::Spinel::int_to_hex_digit((v12 & 0xF));
    v7 = a3 + 1;
    a3 += 2;
    *v7 = v6;
    a4 -= 2;
  }

  while (1)
  {
    v10 = 0;
    if (a5 > 0)
    {
      v10 = a4 > 2;
    }

    if (!v10)
    {
      break;
    }

    --a5;
    *a3 = 48;
    v8 = a3 + 1;
    a3 += 2;
    *v8 = 48;
    a4 -= 2;
    i += 2;
  }

  *a3 = 0;
  return i;
}

void ot::Spinel::RadioSpinel::HandleNotification(const char **this, const unsigned __int8 *a2, __int16 a3, BOOL *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = this;
  *&v24[1] = a2;
  v24[0] = a3;
  v23 = a4;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  memset(v19, 0, 13);
  v18 = 0;
  *a4 = 0;
  v20 = spinel_datatype_unpack(*&v24[1], v24[0], "CiiD", a4, a5, a6, a7, a8, v19);
  if (v20 > 0 && (v19[0] & 0xF) == 0)
  {
    if (v22 != 116)
    {
      v8 = spinel_prop_key_to_cstr(v22);
      if (strlen(v8) == 10 && (v9 = spinel_prop_key_to_cstr(v22), !strcmp("STREAM_RAW", v9)) && v21 >= 0x14 && *&v19[5] && v24[0] > v21)
      {
        v28[0] = 0;
        ot::Spinel::encode_data_into_string(*&v19[5], 0xA, v28, 0x32, 0);
        v27[0] = 0;
        ot::Spinel::encode_data_into_string((*&v19[5] + v21 - 10), 0xA, v27, 0x32, 0);
        v15 = v19[0] & 0xF;
        v16 = spinel_command_to_cstr(*&v19[1]);
        v10 = spinel_prop_key_to_cstr(v22);
        ot::Spinel::Logger::LogNote1(this, "[RCP->] (%d) N %s(%s) [%s-%s] len=%d", v15, v16, v10, v28, v27, v21);
      }

      else
      {
        v26[0] = 0;
        ot::Spinel::encode_data_into_string(*&v24[1], v24[0], v26, 0x401, 0);
        v13 = v19[0] & 0xF;
        v14 = spinel_command_to_cstr(*&v19[1]);
        v11 = spinel_prop_key_to_cstr(v22);
        ot::Spinel::Logger::LogNote1(this, "[RCP->] (%d) N %s(%s) [%s] len=%d", v13, v14, v11, v26, v24[0]);
      }
    }

    if (*&v19[1] == 6)
    {
      if (ot::Spinel::RadioSpinel::IsSafeToHandleNow(this, v22))
      {
        ot::Spinel::RadioSpinel::HandleValueIs(this, v22, *&v19[5], v21);
      }

      else
      {
        *v23 = 1;
      }

      goto LABEL_19;
    }

    if (*&v19[1] == 8 || *&v19[1] == 7)
    {
      v12 = ot::ToUlong(*&v19[1]);
      ot::Spinel::Logger::LogInfo1(this, "Ignored command %lu", v12);
LABEL_19:
      ot::Spinel::RadioSpinel::UpdateParseErrorCount(this, 0);
      goto LABEL_20;
    }
  }

  v18 = 6;
  ot::Spinel::RadioSpinel::UpdateParseErrorCount(this, 6);
LABEL_20:
  ot::Spinel::Logger::LogIfFail1(this, "Error processing notification", v18);
}

BOOL ot::Spinel::RadioSpinel::IsSafeToHandleNow(ot::Spinel::RadioSpinel *this, int a2)
{
  v3 = 1;
  if (a2 != 113)
  {
    v3 = a2 == 57;
  }

  return !v3;
}

{
  return ot::Spinel::RadioSpinel::IsSafeToHandleNow(this, a2);
}

void ot::Spinel::RadioSpinel::HandleValueIs(ot::Spinel::RadioSpinel *this, int a2, const unsigned __int8 *a3, __int16 a4)
{
  v41 = this;
  v40 = a2;
  *&v39[1] = a3;
  v39[0] = a4;
  DataWithLen = 0;
  v37 = 0;
  v36 = pcap_enabled();
  v35 = promiscuous_enabled();
  if (v40 == 117 && (v35 || v36))
  {
    write_stream_to_pcap(*&v39[1], v39[0]);
  }

  else if (v40 == 15538 || v40 == 15518)
  {
    *&__n[1] = 0;
    __n[0] = 0;
    ot::Spinel::Decoder::Decoder(v33);
    ot::Spinel::Decoder::Init(v33, *&v39[1], v39[0]);
    DataWithLen = ot::Spinel::Decoder::ReadDataWithLen(v33, &__n[1], __n);
    if (!DataWithLen)
    {
      memcpy(__dst, *&__n[1], __n[0]);
      if (v40 == 15538)
      {
        ot::Spinel::Logger::LogInfo1(this, "Got RFState %d\n", __n[0]);
        ot::Spinel::mRFStateCallback(LOBYTE(v39[0]), __dst, ot::Spinel::mRFStateContext);
      }

      else if (v40 == 15518)
      {
        ot::Spinel::Logger::LogInfo1(this, "Got Coex State %d\n", __n[0]);
        if (ot::Spinel::mCoexStateCallback)
        {
          ot::Spinel::mCoexStateCallback(LOBYTE(__n[0]), __dst);
        }

        else
        {
          ot::Spinel::Logger::LogInfo1(this, "coex state call back is not set. Might just set the duration time from ot command line.\n");
        }
      }
    }
  }

  else if (v40 == 113)
  {
    DataWithLen = ot::Spinel::RadioSpinel::ParseRadioFrame(this, this + 720, *&v39[1], v39[0], &v37, v6, v7, v8);
    if (!DataWithLen)
    {
      ot::Spinel::RadioSpinel::RadioReceive(this);
      if (!v35 && !v36)
      {
        write_stream_to_pcap(*&v39[1], v39[0]);
      }
    }
  }

  else if (v40)
  {
    if (v40 == 57)
    {
      v31 = 0;
      v30 = 0;
      v37 = spinel_datatype_unpack(*&v39[1], v39[0], "Cc", v4, v5, v6, v7, v8, &v31);
      if (v37 > 0)
      {
        *(this + 1655) &= ~0x80u;
        (*(this + 31))(*(this + 28), v30);
      }

      else
      {
        DataWithLen = 6;
      }
    }

    else
    {
      if (v40 == 112)
      {
        v29 = 151;
        v37 = spinel_datatype_unpack_in_place(*&v39[1], v39[0], "D", v4, v5, v6, v7, v8, v42);
        __assert_rtn("HandleValueIs", "radio_spinel.cpp", 949, "len < sizeof(logStream)");
      }

      if (v40 == 116 && (ot::Spinel::RadioSpinel::sSupportsLogStream & 1) != 0)
      {
        v28 = 0;
        v27 = 0;
        v37 = spinel_datatype_unpack(*&v39[1], v39[0], "U", v4, v5, v6, v7, v8, &v28);
        if (v37 < 0)
        {
          DataWithLen = 6;
        }

        else
        {
          *&v39[1] += v37;
          v39[0] -= v37;
          v26 = 0;
          v25 = 0;
          v37 = spinel_datatype_unpack(*&v39[1], v39[0], "Ci", v13, v14, v15, v16, v17, &v27);
          if (v37 > 0)
          {
            *&v39[1] += v37;
            v39[0] -= v37;
            if (v39[0] < 8uLL || (v37 = spinel_datatype_unpack(*&v39[1], v39[0], "X", v18, v19, v20, v21, v22, &v25), v37 > 0))
            {
              if (v27 <= 2u)
              {
                ot::Spinel::Logger::LogCrit1(this, "[%llu] RCP => %s", v25, v28);
                handle_captureABC(2);
              }

              else if (v27 != 4 && v27 != 3)
              {
                if (v27 == 5)
                {
                  ot::Spinel::Logger::LogNote1(this, "[%llu] RCP => %s", v25, v28);
                }

                else if (v27 == 6)
                {
                  ot::Spinel::Logger::LogInfo1(this, "[%llu] RCP => %s", v25, v28);
                }

                else
                {
                  ot::Spinel::Logger::LogDebg1(this, "[%llu] RCP => %s", v25, v28);
                }
              }

              else
              {
                ot::Spinel::Logger::LogWarn1(this, "[%llu] RCP => %s", v25, v28);
              }
            }

            else
            {
              DataWithLen = 6;
            }
          }

          else
          {
            DataWithLen = 6;
          }
        }
      }

      else if (v40 == 15296)
      {
        v24 = 0;
        if (*(this + 208))
        {
          v37 = spinel_datatype_unpack(*&v39[1], v39[0], "U", v4, v5, v6, v7, v8, &v24);
          if (v37 > 0)
          {
            ot::Spinel::RadioSpinel::PlatDiagOutput(this, "%s", v24);
          }

          else
          {
            DataWithLen = 6;
          }
        }
      }
    }
  }

  else
  {
    v32 = 0;
    v37 = spinel_datatype_unpack(*&v39[1], v39[0], "i", v4, v5, v6, v7, v8, &v32);
    if (v37 > 0)
    {
      v9 = spinel_status_to_cstr(v32);
      ot::Spinel::Logger::LogInfo1(this, "[-RCP-]: RCP was reset (%s, %d)", v9, v32);
      if (v32 < 0x70 || v32 > 0x80)
      {
        switch(v32)
        {
          case 0x19u:
          case 0x1Au:
            if (*(this + 34))
            {
              (*(this + 34))(*(this + 28), v32 == 25);
            }

            break;
          case 0x1E8480u:
            ot::Spinel::Logger::LogInfo1(this, "[-RCP-]: TX Request Timed out, TRANSMIT_NOT_GRANTED");
            if (ot::Spinel::too_many_grants_denied(v11) == 1)
            {
              handle_captureABC(2000000);
            }

            break;
          case 3u:
            handle_captureABC(3);
            break;
          default:
            v12 = spinel_status_to_cstr(v32);
            ot::Spinel::Logger::LogInfo1(this, "RCP last status: %s", v12);
            break;
        }
      }

      else if (ot::Spinel::RadioSpinel::IsEnabled(this))
      {
        ot::Spinel::RadioSpinel::HandleRcpUnexpectedReset(this, v32);
      }

      else
      {
        ot::Spinel::SpinelDriver::ClearRxBuffer(*(this + 221));
        ot::Spinel::SpinelDriver::SetCoprocessorReady(*(this + 221));
        v10 = spinel_status_to_cstr(v32);
        ot::Spinel::Logger::LogInfo1(this, "RCP reset: %s", v10);
        handle_rcp_reset(v32);
      }
    }

    else
    {
      DataWithLen = 6;
    }
  }

  ot::Spinel::RadioSpinel::UpdateParseErrorCount(this, DataWithLen);
  ot::Spinel::Logger::LogIfFail1(this, "Failed to handle ValueIs", DataWithLen);
}

uint64_t ot::ToUlong(uint64_t this)
{
  return this;
}

{
  return ot::ToUlong(this);
}

uint64_t ot::Spinel::RadioSpinel::UpdateParseErrorCount(uint64_t result, int a2)
{
  *(result + 1732) += a2 == 6;
  return result;
}

{
  return ot::Spinel::RadioSpinel::UpdateParseErrorCount(result, a2);
}

void ot::Spinel::RadioSpinel::HandleNotification(const char **this, const unsigned __int8 *a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v13 = spinel_datatype_unpack(a2, a3, "CiiD", a4, a5, a6, a7, a8, &v10);
  if (v13 <= 0 || (v10 & 0xF) != 0)
  {
    v9 = 6;
    ot::Spinel::RadioSpinel::UpdateParseErrorCount(this, 6);
  }

  else
  {
    if (v11 == 6)
    {
      if (v15 != 113 && v15 != 57)
      {
        ot::Spinel::Logger::LogCrit1(this, "[HandleNotification]:::::INVALID KEY = %d", v15);
      }

      ot::Spinel::RadioSpinel::HandleValueIs(this, v15, v12, v14);
    }

    ot::Spinel::RadioSpinel::UpdateParseErrorCount(this, 0);
  }

  ot::Spinel::Logger::LogIfFail1(this, "Error processing saved notification", v9);
}

uint64_t ot::Spinel::RadioSpinel::updateStreamRawHistogram(ot::Spinel::RadioSpinel *this, unint64_t a2)
{
  if (a2)
  {
    v3 = a2 / 5;
    if (a2 % 5)
    {
      if (v3 < 0)
      {
        v4 = 0;
      }

      else
      {
        if (v3 >= 50)
        {
          ++*(this + 55);
        }

        else
        {
          ++*(this + v3 + 6);
        }

        v4 = 1;
      }
    }

    else if (v3 <= 0 || v3 >= 50)
    {
      ++*(this + 55);
      v4 = 1;
    }

    else
    {
      ++*(this + v3 + 5);
      v4 = 1;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void ot::Spinel::RadioSpinel::HandleResponse(const char **this, const unsigned __int8 *a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = this;
  *&v13[1] = a2;
  v13[0] = a3;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  spinel_datatype_unpack(a2, a3, "CiiD", a4, a5, a6, a7, a8, &v9);
  ot::Spinel::RadioSpinel::UpdateParseErrorCount(this, 6);
  ot::Spinel::Logger::LogIfFail1(this, "Error processing response", 6);
}

void ot::Spinel::RadioSpinel::HandleWaitingResponse(ot::Spinel::RadioSpinel *this, int a2, int a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = this;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  if (a3)
  {
    if (v22 == 15296)
    {
      v17 = 0;
      v16 = 0;
      *(this + 83) = 0;
      if (*(this + 208))
      {
        v17 = spinel_datatype_unpack(v21, v20, "U", a4, a5, a6, a7, a8, &v16);
        if (v17 > 0)
        {
          ot::Spinel::RadioSpinel::PlatDiagOutput(this, "%s", v16);
        }

        else
        {
          *(this + 83) = 6;
        }
      }
    }

    else if (v22 == *(this + 76))
    {
      if (*(this + 39))
      {
        ot::Spinel::Logger::LogInfo1(this, "::::mPropertyFormat[%s]", *(this + 39));
        if (**(this + 39) == 46)
        {
          v9 = *(this + 40);
          *(this + 40) = v9 + 16;
          v14 = *v9;
          v15 = *(v9 + 8);
          if (*v9 == 0 && (*v9 == 0 && (v15 & 1) == 0 || v15 == 0))
          {
            __assert_rtn("HandleWaitingResponse", "radio_spinel.cpp", 739, "handler != nullptr");
          }

          v11 = (this + (v15 >> 1));
          if (v15)
          {
            v10 = (*(*v11 + v14))(v11, v21, v20);
          }

          else
          {
            v10 = v14(v11, v21, v20);
          }

          *(this + 83) = v10;
        }

        else
        {
          v13 = spinel_datatype_vunpack_in_place(v21, v20, *(this + 39), *(this + 40));
          if (v13 > 0)
          {
            *(this + 83) = 0;
          }

          else
          {
            ot::Spinel::Logger::LogInfo1(this, "::::parse_error[%d]", v13);
            *(this + 83) = 6;
          }
        }
      }

      else if (v23 == *(this + 82))
      {
        *(this + 83) = 0;
      }

      else
      {
        *(this + 83) = 2;
      }
    }

    else
    {
      ot::Spinel::Logger::LogWarn1(this, "::::HandleWaitingResponse::ERROR_DROP");
      *(this + 83) = 2;
    }
  }

  else
  {
    v19 = 0;
    v18 = spinel_datatype_unpack(v21, v20, "i", a4, a5, a6, a7, a8, &v19);
    if (v18 > 0)
    {
      v8 = spinel_status_to_cstr(v19);
      ot::Spinel::Logger::LogInfo1(this, "[-RCP-] Status = %s", v8);
      *(this + 83) = ot::Spinel::SpinelStatusToOtError(v19);
      if (v19 == 11)
      {
        rcp_hard_reset();
      }
    }

    else
    {
      *(this + 83) = 6;
    }
  }

  ot::Spinel::RadioSpinel::UpdateParseErrorCount(this, *(this + 83));
  ot::Spinel::Logger::LogIfFail1(this, "Error processing result", *(this + 83));
}

uint64_t ot::Spinel::RadioSpinel::FreeTid(uint64_t this, char a2)
{
  *(this + 296) &= ~(1 << a2);
  return this;
}

{
  return ot::Spinel::RadioSpinel::FreeTid(this, a2);
}

void ot::Spinel::RadioSpinel::HandleTransmitDone(ot::Spinel::RadioSpinel *this, unsigned int a2, unsigned int a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = this;
  v45 = a2;
  v44 = a3;
  v43 = a4;
  v42 = a5;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  if (__PAIR64__(a2, a3) != 0x600000000)
  {
    v41 = 1;
    goto LABEL_25;
  }

  v35 = spinel_datatype_unpack(v43, v42, "i", a4, a5, a6, a7, a8, &v40);
  if (v35 <= 0)
  {
    ot::Spinel::Logger::LogCrit1(this, "OT_ERROR_PARSE <<status>>");
    __assert_rtn("HandleTransmitDone", "radio_spinel.cpp", 2405, "false");
  }

  if (v40 == 4)
  {
    ot::Spinel::Logger::LogCrit1(this, "HandleTransmitDone: Status[%d] SPINEL_STATUS_INVALID_STATE", 4);
    v41 = 13;
    goto LABEL_25;
  }

  v43 += v35;
  v42 -= v35;
  v35 = spinel_datatype_unpack(v43, v42, "b", v8, v9, v10, v11, v12, &v39);
  if (v35 <= 0)
  {
    ot::Spinel::Logger::LogCrit1(this, "OT_ERROR_PARSE <<framePending>>");
    __assert_rtn("HandleTransmitDone", "radio_spinel.cpp", 2449, "false");
  }

  v43 += v35;
  v42 -= v35;
  v35 = spinel_datatype_unpack(v43, v42, "b", v13, v14, v15, v16, v17, &v38);
  if (v35 <= 0)
  {
    ot::Spinel::Logger::LogCrit1(this, "OT_ERROR_PARSE <<headerUpdated>>");
    __assert_rtn("HandleTransmitDone", "radio_spinel.cpp", 2462, "false");
  }

  v43 += v35;
  v42 -= v35;
  if (v40)
  {
    v41 = ot::Spinel::SpinelStatusToOtError(v40);
    otLogWarnPlat("Error In Status = %d, Error = %d", v21, v22, v23, v24, v25, v26, v27, v40);
    if (v41 == 6)
    {
      ot::Spinel::Logger::LogCrit1(this, "OT_ERROR_PARSE <<status value from RCP>>");
      __assert_rtn("HandleTransmitDone", "radio_spinel.cpp", 2504, "false");
    }

    if (v40 == 11)
    {
      rcp_hard_reset();
    }
  }

  else
  {
    v41 = ot::Spinel::RadioSpinel::ParseRadioFrame(this, this + 848, v43, v42, &v35, v18, v19, v20);
    if (v41)
    {
      goto LABEL_25;
    }

    v43 += v35;
    v42 -= v35;
  }

  ot::Mac::TxFrame::SetIsHeaderUpdated(*(this + 114), v38 & 1);
  if ((ot::Spinel::RadioSpinel::sRadioCaps & 0x20) != 0 && (v38 & 1) != 0 && ot::Mac::Frame::GetSecurityEnabled(*(this + 114)))
  {
    v34 = 0;
    v35 = spinel_datatype_unpack(v43, v42, "CL", v32, v28, v29, v30, v31, &v34);
    v43 += v35;
    v42 -= v35;
    if (v35 <= 0)
    {
      ot::Spinel::Logger::LogCrit1(this, "OT_ERROR_PARSE <<keyId>> <<frameCounter>>");
      __assert_rtn("HandleTransmitDone", "radio_spinel.cpp", 2533, "false");
    }

    ot::Mac::Frame::SetKeyId(*(this + 114), v34);
    ot::Mac::Frame::SetFrameCounter(*(this + 114), 0);
    *(this + 1655) = *(this + 1655) & 0xFEFF | 0x100;
  }

  ot::Spinel::RadioSpinel::GetVendorTxInfo(this, &v35, &v42, v43, v28, v29, v30, v31);
LABEL_25:
  if (v41 == 6)
  {
    ot::Spinel::Logger::LogCrit1(this, "OT_ERROR_PARSE <<exit>>");
    __assert_rtn("HandleTransmitDone", "radio_spinel.cpp", 2587, "false");
  }

  *(this + 236) = 4;
  if (v41 == 13)
  {
    *(this + 234) = 13;
    *(this + 952) = *(this + 952) & 0xF8 | 3;
    ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
  }

  else if (v41 == 6)
  {
    *(this + 234) = 11;
    ot::Spinel::RadioSpinel::HandleRcpTimeout(this);
    ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
  }

  else
  {
    *(this + 234) = v41;
  }

  ot::Spinel::RadioSpinel::UpdateParseErrorCount(this, v41);
  ot::Spinel::Logger::LogIfFail1(this, "Handle transmit done failed", v41);
}

uint64_t ot::Spinel::RadioSpinel::PlatDiagOutput(uint64_t this, const char *a2, ...)
{
  va_start(va, a2);
  if (*(this + 1664))
  {
    return (*(this + 1664))(a2, va, *(this + 1672));
  }

  return this;
}

uint64_t ot::Spinel::RadioSpinel::ParseRadioFrame(const char **a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a1;
  v37 = a2;
  v36 = a3;
  v35 = a4;
  v34 = a5;
  v27 = a1;
  v33 = 0;
  v32 = 0;
  v31 = 0x80;
  v30 = 127;
  v29 = 0;
  v28 = 0;
  if (!a4)
  {
    *(v37 + 8) = 0;
    goto LABEL_19;
  }

  v8 = *v37;
  v26 = &v17;
  v18 = &v30;
  v19 = v37 + 29;
  v20 = &v31;
  v21 = &v32;
  v22 = v37 + 10;
  v23 = v37 + 30;
  v24 = v37 + 16;
  v25 = &v29;
  v28 = spinel_datatype_unpack_in_place(v36, v35, "dccSt(CCX)t(i)", a4, a5, a6, a7, a8, v8);
  if (v28 <= 0)
  {
    otLogInfoRcp("%s unpack parse error: Frame ", v9, v10, v11, v12, v13, v14, v15, "ParseRadioFrame");
  }

  if (v28 <= 0)
  {
    v33 = 6;
    goto LABEL_19;
  }

  *v34 = v28;
  v36 += v28;
  v35 -= v28;
  if ((ot::Spinel::RadioSpinel::sRadioCaps & 0x20) != 0)
  {
    v18 = (v37 + 24);
    v28 = spinel_datatype_unpack_in_place(v36, v35, "t(CL)", v11, v12, v13, v14, v15, v37 + 28);
    if (v28 <= 0)
    {
      otLogInfoRcp("%s unpack parse error: MAC-data", v9, v10, v11, v12, v13, v14, v15, "ParseRadioFrame");
    }

    if (v28 <= 0)
    {
      v33 = 6;
      goto LABEL_19;
    }

    *v34 += v28;
    if ((v32 & 0x20) != 0)
    {
      *(v27 + 1655) = *(v27 + 1655) & 0xFEFF | 0x100;
    }
  }

  if (v29)
  {
    if (v29 >= 0x26)
    {
      otLogInfoRcp("receiveError > OT_NUM_ERRORS. receiveError[%d]", v9, v10, v11, v12, v13, v14, v15, v29);
      v33 = 6;
    }

    else
    {
      otLogInfoRcp("receiveError < OT_NUM_ERRORS, receiveError[%d]", v9, v10, v11, v12, v13, v14, v15, v29);
      v33 = v29;
    }
  }

  else
  {
    *(v37 + 8) = v30;
    *(v37 + 31) = *(v37 + 31) & 0xFE | ((v32 & 0x10) != 0);
    *(v37 + 31) = *(v37 + 31) & 0xFD | (2 * ((v32 & 0x20) != 0));
  }

LABEL_19:
  ot::Spinel::RadioSpinel::UpdateParseErrorCount(v27, v33);
  ot::Spinel::Logger::LogIfFail1(v27, "Handle radio frame failed", v33);
  if (v33 == 6)
  {
    ot::Spinel::Logger::LogDebg1(v27, "%s parse error happen, trigger FLR to help debug", "ParseRadioFrame");
    rcp_hard_reset();
  }

  return v33;
}

uint64_t ot::Spinel::RadioSpinel::RadioReceive(uint64_t this)
{
  v1 = this;
  if ((*(this + 948) & 1) != 0 || *(this + 944))
  {
    if (otPlatDiagModeGet())
    {
      return (*(v1 + 280))(*(v1 + 224), v1 + 720, 0);
    }

    else
    {
      return (*(v1 + 232))(*(v1 + 224), v1 + 720, 0);
    }
  }

  return this;
}

BOOL ot::Spinel::RadioSpinel::IsEnabled(ot::Spinel::RadioSpinel *this)
{
  return *(this + 236) != 0;
}

{
  return ot::Spinel::RadioSpinel::IsEnabled(this);
}

void ot::Spinel::RadioSpinel::HandleRcpUnexpectedReset(ot::Spinel::RadioSpinel *this, int a2)
{
  ++*(this + 431);
  v2 = spinel_status_to_cstr(a2);
  ot::Spinel::Logger::LogCrit1(this, "Unexpected RCP reset: %s", v2);
  *(this + 952) = *(this + 952) & 0xF8 | 2;
}

void ot::Spinel::SpinelDriver::ClearRxBuffer(ot::Spinel::SpinelDriver *this)
{
  ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::Clear(this + 8);
}

{
  ot::Spinel::SpinelDriver::ClearRxBuffer(this);
}

uint64_t ot::Spinel::SpinelDriver::SetCoprocessorReady(uint64_t this)
{
  *(this + 8288) = 1;
  return this;
}

{
  return ot::Spinel::SpinelDriver::SetCoprocessorReady(this);
}

uint64_t ot::Spinel::RadioSpinel::SendReset(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  if (a2 != 3 || (ot::Spinel::RadioSpinel::sSupportsResetToBootloader & 1) != 0)
  {
    SpinelDriver = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
    return ot::Spinel::SpinelDriver::SendReset(SpinelDriver, a2, v3, v4, v5, v6, v7, v8);
  }

  else
  {
    return 27;
  }
}

uint64_t ot::Spinel::RadioSpinel::TransmitDone(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (otPlatDiagModeGet())
  {
    return (*(a1 + 288))(*(a1 + 224), a2, a4);
  }

  else
  {
    return (*(a1 + 240))(*(a1 + 224), a2, a3, a4);
  }
}

uint64_t ot::Spinel::RadioSpinel::HandleRcpTimeout(uint64_t this)
{
  ++*(this + 1720);
  *(this + 952) = *(this + 952) & 0xF8 | 1;
  return this;
}

void *ot::Spinel::SpinelDriver::ClearRxFrameBufferSavedFrames(ot::Spinel::SpinelDriver *this)
{
  return ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::ClearSavedFrames(this + 1);
}

{
  return ot::Spinel::SpinelDriver::ClearRxFrameBufferSavedFrames(this);
}

uint64_t ot::Spinel::RadioSpinel::SetPromiscuous(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 56, "C", (a2 & 1) != 0);
  if (!v4)
  {
    *(this + 948) = *(this + 948) & 0xFE | a2 & 1;
  }

  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetRxOnWhenIdle(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = 0;
  if (((*(this + 948) & 2) != 0) != (a2 & 1))
  {
    v4 = ot::Spinel::RadioSpinel::Set(this, 59, "b", a2 & 1);
    if (!v4)
    {
      *(this + 948) = *(this + 948) & 0xFD | (2 * (a2 & 1));
    }
  }

  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetShortAddress(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = 0;
  if (*(this + 464) != a2)
  {
    v4 = ot::Spinel::RadioSpinel::Set(this, 0x35u, "S", a2);
    if (!v4)
    {
      *(this + 464) = a2;
    }
  }

  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetAlternateShortAddress(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v3 = 0;
  if ((ot::Spinel::RadioSpinel::sRadioCaps & 0x400) != 0)
  {
    return ot::Spinel::RadioSpinel::Set(this, 60, "S", a2);
  }

  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetMacKey(ot::Spinel::RadioSpinel *a1, unsigned __int8 a2, unsigned __int8 a3, _OWORD *a4, _OWORD *a5, _OWORD *a6)
{
  return ot::Spinel::RadioSpinel::SetMacKey(a1, a2, a3, a4, a5, a6);
}

{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a6;
  v9 = a1;
  v10 = 0;
  v8[8] = v8;
  v10 = ot::Spinel::RadioSpinel::Set(a1, 0x800u, "CCddd", a2, a3, a4, 16, a5, 16, a6, 16);
  if (!v10)
  {
    v6 = v9;
    *(v9 + 953) = v15;
    *(v6 + 954) = v14;
    *(v6 + 955) = *v13;
    *(v6 + 971) = *v12;
    *(v6 + 987) = *v11;
    *(v6 + 1655) = *(v6 + 1655) & 0xFFFB | 4;
  }

  return v10;
}

uint64_t ot::Spinel::RadioSpinel::SetMacFrameCounter(ot::Spinel::RadioSpinel *this, unsigned int a2, char a3)
{
  v5 = ot::Spinel::RadioSpinel::Set(this, 0x801u, "Lb", a2, a3 & 1);
  if (!v5)
  {
    *(this + 1655) = *(this + 1655) & 0xFEFF | 0x100;
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetMacFrameCounter(ot::Spinel::RadioSpinel *this, unsigned int *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 2049, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get MAC Frame Counter failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetIeeeEui64(const char **this, unsigned __int8 *a2)
{
  v9 = this;
  v8 = a2;
  v5 = this;
  v11 = 0;
  v7 = ot::Spinel::RadioSpinel::Get(this, 15494, "E", &v11);
  v6 = &v4;
  ot::Spinel::Logger::LogWarn1(v5, "GetIeeeEui64 RCP2=%x%x%x%x%x%x%x%x", v11, BYTE1(v11), BYTE2(v11), BYTE3(v11), BYTE4(v11), BYTE5(v11), BYTE6(v11), HIBYTE(v11));
  if (v7)
  {
    v2 = otThreadErrorToString(v7);
    ot::Spinel::Logger::LogWarn1(v5, "GetIeeeEui64 RCP2: %s", v2);
    return v7;
  }

  else
  {
    *v8 = v11;
    return 0;
  }
}

uint64_t ot::Spinel::RadioSpinel::SetExtendedAddress(ot::Spinel::RadioSpinel *a1, void *a2)
{
  v5 = ot::Spinel::RadioSpinel::Set(a1, 52, "E", a2);
  if (v5)
  {
    v2 = otThreadErrorToString(v5);
    ot::Spinel::Logger::LogWarn1(a1, "SetExtendedAddress: %s", v2);
  }

  else
  {
    *(a1 + 115) = *a2;
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::SetPanId(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = 0;
  if (*(this + 465) != a2)
  {
    v4 = ot::Spinel::RadioSpinel::Set(this, 0x36u, "S", a2);
    if (!v4)
    {
      *(this + 465) = a2;
    }
  }

  return v4;
}

uint64_t ot::Spinel::RadioSpinel::EnableSrcMatch(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 4867, "b", a2 & 1);
  if (!v4)
  {
    *(this + 1658) = *(this + 1658) & 0xFE | 1;
    *(this + 1655) = *(this + 1655) & 0xFFFD | (2 * (a2 & 1));
  }

  return v4;
}

uint64_t ot::Spinel::RadioSpinel::AddSrcMatchShortEntry(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v5 = ot::Spinel::RadioSpinel::Insert(this, 4868, "S", a2);
  if (!v5)
  {
    if (*(this + 566) >= 64)
    {
      __assert_rtn("AddSrcMatchShortEntry", "radio_spinel.cpp", 1605, "mSrcMatchShortEntryCount < OPENTHREAD_CONFIG_MLE_MAX_CHILDREN");
    }

    for (i = 0; i < *(this + 566); ++i)
    {
      if (*(this + i + 502) == a2)
      {
        return v5;
      }
    }

    *(this + (*(this + 566))++ + 502) = a2;
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::Insert(ot::Spinel::RadioSpinel *this, int a2, char *a3, ...)
{
  va_start(va, a3);
  if (pciNotOpen())
  {
    return 0;
  }

  else
  {
    if (*(this + 300))
    {
      __assert_rtn("Insert", "radio_spinel.cpp", 2096, "mWaitingTid == 0");
    }

    do
    {
      ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
      *(this + 40) = va;
      v5 = ot::Spinel::RadioSpinel::RequestWithExpectedCommandV(this, 7, 4, a2, a3, *(this + 40));
    }

    while ((*(this + 952) & 7) != 0);
    return v5;
  }
}

uint64_t ot::Spinel::RadioSpinel::AddSrcMatchExtEntry(__int16 *a1, void *a2)
{
  v5 = ot::Spinel::RadioSpinel::Insert(a1, 4869, "E", a2);
  if (!v5)
  {
    if (a1[823] >= 64)
    {
      __assert_rtn("AddSrcMatchExtEntry", "radio_spinel.cpp", 1630, "mSrcMatchExtEntryCount < OPENTHREAD_CONFIG_MLE_MAX_CHILDREN");
    }

    for (i = 0; i < a1[823]; ++i)
    {
      if (!memcmp(a2, &a1[4 * i + 567], 8uLL))
      {
        return v5;
      }
    }

    *&a1[4 * a1[823]++ + 567] = *a2;
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::ClearSrcMatchShortEntry(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v5 = ot::Spinel::RadioSpinel::Remove(this, 4868, "S", a2);
  if (!v5)
  {
    for (i = 0; i < *(this + 566); ++i)
    {
      if (*(this + i + 502) == a2)
      {
        *(this + i + 502) = *(this + (*(this + 566))-- + 501);
        return v5;
      }
    }
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::Remove(ot::Spinel::RadioSpinel *this, int a2, char *a3, ...)
{
  va_start(va, a3);
  if (pciNotOpen())
  {
    return 0;
  }

  else
  {
    if (*(this + 300))
    {
      __assert_rtn("Remove", "radio_spinel.cpp", 2123, "mWaitingTid == 0");
    }

    do
    {
      ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
      *(this + 40) = va;
      v5 = ot::Spinel::RadioSpinel::RequestWithExpectedCommandV(this, 8, 5, a2, a3, *(this + 40));
    }

    while ((*(this + 952) & 7) != 0);
    return v5;
  }
}

uint64_t ot::Spinel::RadioSpinel::ClearSrcMatchExtEntry(ot::Spinel::RadioSpinel *a1, const void *a2)
{
  v5 = ot::Spinel::RadioSpinel::Remove(a1, 4869, "E", a2);
  if (!v5)
  {
    for (i = 0; i < *(a1 + 823); ++i)
    {
      if (!memcmp(a1 + 8 * i + 1134, a2, 8uLL))
      {
        *(a1 + 8 * i + 1134) = *(a1 + 8 * (*(a1 + 823))-- + 1126);
        return v5;
      }
    }
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::ClearSrcMatchShortEntries(ot::Spinel::RadioSpinel *this)
{
  v3 = ot::Spinel::RadioSpinel::Set(this, 4868, 0);
  if (!v3)
  {
    *(this + 566) = 0;
  }

  return v3;
}

uint64_t ot::Spinel::RadioSpinel::ClearSrcMatchExtEntries(ot::Spinel::RadioSpinel *this)
{
  v3 = ot::Spinel::RadioSpinel::Set(this, 4869, 0);
  if (!v3)
  {
    *(this + 823) = 0;
  }

  return v3;
}

uint64_t ot::Spinel::RadioSpinel::GetMinInterframeDelay(ot::Spinel::RadioSpinel *this, unsigned int *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 2000016, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get min interframe delay", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetTransmitPower(ot::Spinel::RadioSpinel *this, signed __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 37, "c", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get transmit power failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetRssiOffset(ot::Spinel::RadioSpinel *this, signed __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 2000001, "c", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get RSSI offset failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetRssiOffsetPath1(ot::Spinel::RadioSpinel *this, signed __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 2000022, "c", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get RSSI offset failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetCcaEnergyDetectThreshold(ot::Spinel::RadioSpinel *this, signed __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 36, "c", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get CCA ED threshold failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetFemLnaGain(ot::Spinel::RadioSpinel *this, signed __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 42, "c", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get FEM LNA gain failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetRssi(ot::Spinel::RadioSpinel *this)
{
  v5 = this;
  v4 = 127;
  v3 = ot::Spinel::RadioSpinel::Get(this, 38, "c", &v4);
  ot::Spinel::Logger::LogIfFail1(this, "Get RSSI failed", v3);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetCoexEnabled(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 4621, "b", a2 & 1);
  if (!v4)
  {
    *(this + 1655) = *(this + 1655) & 0xFFFE | a2 & 1;
    *(this + 1655) = *(this + 1655) & 0xFFDF | 0x20;
  }

  return v4;
}

uint64_t ot::Spinel::RadioSpinel::IsCoexEnabled(ot::Spinel::RadioSpinel *this)
{
  v5 = this;
  v4 = 0;
  v3 = ot::Spinel::RadioSpinel::Get(this, 4621, "b", &v4);
  ot::Spinel::Logger::LogIfFail1(this, "Get Coex State failed", v3);
  return v4 & 1;
}

uint64_t ot::Spinel::RadioSpinel::GetCoexMetrics(ot::Spinel::RadioSpinel *a1, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(a1, 4620, "t(LLLLLLLL)t(LLLLLLLLL)bL", a2 + 4, a2 + 8, a2 + 12, a2 + 16, a2 + 20, a2 + 24, a2 + 28, a2 + 32, a2 + 36, a2 + 40, a2 + 44, a2 + 48, a2 + 52, a2 + 56, a2 + 60, a2 + 64, a2 + 68, a2 + 72, a2);
  ot::Spinel::Logger::LogIfFail1(a1, "Get Coex Metrics failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetTransmitPower(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 37, "c", a2);
  if (!v4)
  {
    *(this + 1653) = a2;
    *(this + 1655) = *(this + 1655) & 0xFFEF | 0x10;
  }

  ot::Spinel::Logger::LogIfFail1(this, "Set transmit power failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetRcpLogLevel(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 16385, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set RCP Log Level failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetMinInterframeDelay(ot::Spinel::RadioSpinel *this, unsigned int a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 2000016, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set Interframe delay failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetCcaEnergyDetectThreshold(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 36, "c", a2);
  if (!v4)
  {
    *(this + 1652) = a2;
    *(this + 1655) = *(this + 1655) & 0xFFF7 | 8;
  }

  ot::Spinel::Logger::LogIfFail1(this, "Set CCA ED threshold failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetRssiOffset(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 2000001, "c", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set RSSI offset failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetRssiOffsetPath1(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 2000022, "c", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set RSSI offset PATH_1 failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetFemLnaGain(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 42, "c", a2);
  if (!v4)
  {
    *(this + 1654) = a2;
    *(this + 1655) = *(this + 1655) & 0xFFBF | 0x40;
  }

  ot::Spinel::Logger::LogIfFail1(this, "Set FEM LNA gain failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::EnergyScan(ot::Spinel::RadioSpinel *this, char a2, unsigned __int16 a3)
{
  v8 = this;
  v7 = a2;
  if ((ot::Spinel::RadioSpinel::sRadioCaps & 2) != 0)
  {
    *(this + 1648) = v7;
    *(this + 825) = a3;
    *(this + 1655) = *(this + 1655) & 0xFF7F | 0x80;
    v5 = ot::Spinel::RadioSpinel::Set(this, 0x31u, "D", &v7, 1);
    if (!v5)
    {
      v5 = ot::Spinel::RadioSpinel::Set(this, 0x32u, "S", a3);
      if (!v5)
      {
        v5 = ot::Spinel::RadioSpinel::Set(this, 0x30u, "C", 2);
        if (!v5)
        {
          *(this + 932) = v7;
        }
      }
    }
  }

  else
  {
    return 27;
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::RequestWithPropertyFormatV(ot::Spinel::RadioSpinel *this, const char *a2, int a3, int a4, char *a5, char **a6)
{
  *(this + 39) = a2;
  LODWORD(result) = ot::Spinel::RadioSpinel::RequestV(this, a3, a4, a5, a6);
  *(this + 39) = 0;
  return result;
}

uint64_t ot::Spinel::RadioSpinel::GetWithParam(ot::Spinel::RadioSpinel *this, int a2, const unsigned __int8 *a3, unsigned int a4, const char *a5, ...)
{
  va_start(va, a5);
  if (pciNotOpen())
  {
    return 0;
  }

  else
  {
    if (*(this + 300))
    {
      __assert_rtn("GetWithParam", "radio_spinel.cpp", 2005, "mWaitingTid == 0");
    }

    do
    {
      ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
      *(this + 40) = va;
      v7 = ot::Spinel::RadioSpinel::RequestWithPropertyFormat(this, a5, 2, a2, "D", a3, a4);
    }

    while ((*(this + 952) & 7) != 0);
    return v7;
  }
}

uint64_t ot::Spinel::RadioSpinel::RequestWithExpectedCommandV(ot::Spinel::RadioSpinel *this, int a2, int a3, int a4, char *a5, char **a6)
{
  *(this + 82) = a2;
  LODWORD(result) = ot::Spinel::RadioSpinel::RequestV(this, a3, a4, a5, a6);
  *(this + 82) = 0;
  return result;
}

uint64_t ot::Spinel::RadioSpinel::MemPeek(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int16 *a3, char *a4, ...)
{
  va_start(va, a4);
  *(this + 218) = a2;
  *(this + 219) = a3;
  if (pciNotOpen())
  {
    return 0;
  }

  else
  {
    if (*(this + 300))
    {
      __assert_rtn("MemPeek", "radio_spinel.cpp", 2066, "mWaitingTid == 0");
    }

    do
    {
      ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
      v6 = ot::Spinel::RadioSpinel::RequestWithExpectedCommandVNK(this, 19, 0x12u, a4, va);
    }

    while ((*(this + 952) & 7) != 0);
    return v6;
  }
}

uint64_t ot::Spinel::RadioSpinel::RequestWithExpectedCommandVNK(ot::Spinel::RadioSpinel *this, int a2, unsigned int a3, char *a4, char **a5)
{
  *(this + 82) = a2;
  LODWORD(result) = ot::Spinel::RadioSpinel::RequestVNK(this, a3, a4, a5);
  *(this + 82) = 0;
  return result;
}

uint64_t ot::Spinel::RadioSpinel::WaitResponse(ot::Spinel::RadioSpinel *this, char a2)
{
  if (a2)
  {
    if (*(this + 1657))
    {
      ot::Spinel::RadioSpinel::HandleRcpTimeout(this);
      return 28;
    }
  }

  else if (*(this + 1657) == 1)
  {
    return 28;
  }

  v12 = otPlatTimeGet() + 2000000;
  v9 = *(this + 300);
  v2 = ot::ToUlong(*(this + 76));
  ot::Spinel::Logger::LogDebg1(this, "Wait response: tid=%u key=%lu", v9, v2);
  while (1)
  {
    v11 = otPlatTimeGet();
    if (v12 <= v11)
    {
      break;
    }

    SpinelDriver = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
    SpinelInterface = ot::Spinel::SpinelDriver::GetSpinelInterface(SpinelDriver);
    if ((*(*SpinelInterface + 32))(SpinelInterface, v12 - v11))
    {
      break;
    }

    if (!*(this + 300))
    {
      ot::Spinel::Logger::LogIfFail1(this, "Error waiting response", *(this + 83));
      *(this + 76) = 0;
      return *(this + 83);
    }
  }

  ot::Spinel::Logger::LogWarn1(this, "Wait for response timeout gPciStatus=%d", gPciStatus);
  v5 = *(this + 28);
  if (otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 && (otPlatRadioGetCoreDumpTXFailureEnabled())
  {
    v8 = *(this + 300);
    v6 = ot::ToUlong(*(this + 76));
    ot::Spinel::Logger::LogDebg1(this, "%s Trigger CoreDump  tid=%u key=%lu", "WaitResponse", v8, v6);
    rcp_hard_reset();
  }

  if (gPciStatus)
  {
    ot::Spinel::Logger::LogWarn1(this, "Exit response timeout due to PCI failure %d\n", gPciStatus);
    *(this + 76) = 0;
    *(this + 83) = 28;
  }

  else
  {
    if (a2)
    {
      ot::Spinel::RadioSpinel::HandleRcpTimeout(this);
    }

    *(this + 83) = 28;
  }

  return *(this + 83);
}

uint64_t ot::Spinel::SpinelDriver::GetSpinelInterface(ot::Spinel::SpinelDriver *this)
{
  return *(this + 1029);
}

{
  return ot::Spinel::SpinelDriver::GetSpinelInterface(this);
}

uint64_t ot::Spinel::RadioSpinel::GetNextTid(ot::Spinel::RadioSpinel *this)
{
  v4 = *(this + 298);
  while (((1 << v4) & *(this + 148)) != 0)
  {
    if (v4 < 0xFu)
    {
      v3 = v4 + 1;
    }

    else
    {
      v3 = 1;
    }

    v4 = v3;
    if (v3 == *(this + 298))
    {
      return 0;
    }
  }

  *(this + 148) |= 1 << v4;
  if (v4 < 0xFu)
  {
    v2 = v4 + 1;
  }

  else
  {
    v2 = 1;
  }

  *(this + 298) = v2;
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::RequestV(ot::Spinel::RadioSpinel *this, int a2, int a3, char *a4, char **a5)
{
  NextTid = ot::Spinel::RadioSpinel::GetNextTid(this);
  if (NextTid)
  {
    SpinelDriver = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
    v11 = ot::Spinel::SpinelDriver::SendCommand(SpinelDriver, a2, a3, NextTid, a4, a5, v6, v7);
    if (v11)
    {
      ot::Spinel::Logger::LogWarn1(this, "RadioSpinel:RequestV SendCommand failed tid=%d", NextTid);
      ot::Spinel::RadioSpinel::FreeTid(this, NextTid);
    }

    else if (a4 && a3 == 113)
    {
      time_streamraw_tx = otPlatTimeGet();
      tx_streamraw_tid = NextTid;
    }

    if (!v11)
    {
      if (a3 == 113)
      {
        if (*(this + 299))
        {
          __assert_rtn("RequestV", "radio_spinel.cpp", 2255, "mTxRadioTid == 0");
        }

        *(this + 299) = NextTid;
      }

      else if (a3 == 15491 || a3 == 15492 || a3 == 15493)
      {
        *(this + 148) = 0;
        *(this + 298) = 1;
        *(this + 300) = 0;
        *(this + 76) = 0;
      }

      else
      {
        *(this + 76) = a3;
        *(this + 300) = NextTid;
        return ot::Spinel::RadioSpinel::WaitResponse(this, 1);
      }
    }
  }

  else
  {
    return 5;
  }

  return v11;
}

uint64_t ot::Spinel::RadioSpinel::RequestVNK(ot::Spinel::RadioSpinel *this, unsigned int a2, char *a3, char **a4)
{
  NextTid = ot::Spinel::RadioSpinel::GetNextTid(this);
  if (NextTid)
  {
    SpinelDriver = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
    v11 = ot::Spinel::SpinelDriver::SendCommandNK(SpinelDriver, a2, NextTid, a3, a4, v5, v6, v7);
    if (!v11)
    {
      *(this + 300) = NextTid;
      return ot::Spinel::RadioSpinel::WaitResponse(this, 1);
    }
  }

  else
  {
    return 5;
  }

  return v11;
}

uint64_t ot::Mac::TxFrame::SetIsHeaderUpdated(uint64_t this, char a2)
{
  *(this + 45) = *(this + 45) & 0xFE | a2 & 1;
  return this;
}

{
  return ot::Mac::TxFrame::SetIsHeaderUpdated(this, a2);
}

BOOL ot::Mac::Frame::GetSecurityEnabled(ot::Mac::Frame *this)
{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
  return ot::Mac::Frame::IsSecurityEnabled(FrameControlField);
}

{
  return ot::Mac::Frame::GetSecurityEnabled(this);
}

uint64_t ot::Spinel::RadioSpinel::GetVendorTxInfo(uint64_t this, int *a2, unsigned __int16 *a3, const unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = this;
  v44 = a2;
  v43 = a3;
  v42 = a4;
  v33 = this;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  if (*a3)
  {
    this = spinel_datatype_unpack(v42, *v43, "Cc", a4, a5, a6, a7, a8, &v41);
    *v44 = this;
    *(*(v33 + 912) + 42) = v41;
    *(*(v33 + 912) + 44) = v40;
    v42 += *v44;
    *v43 -= *v44;
    *(*(v33 + 912) + 56) = 1;
    if (*v43)
    {
      this = spinel_datatype_unpack(v42, *v43, "CL", v8, v9, v10, v11, v12, &v39);
      *v44 = this;
      *(*(v33 + 912) + 46) = v39;
      *(*(v33 + 912) + 48) = v38;
      v42 += *v44;
      *v43 -= *v44;
      *(*(v33 + 912) + 56) = 2;
      if (*v43)
      {
        this = spinel_datatype_unpack(v42, *v43, "L", v13, v14, v15, v16, v17, &v37);
        *v44 = this;
        *(*(v33 + 912) + 52) = v37;
        v42 += *v44;
        *v43 -= *v44;
        *(*(v33 + 912) + 56) = 3;
        if (*v43)
        {
          this = spinel_datatype_unpack(v42, *v43, "C", v18, v19, v20, v21, v22, &v36);
          *v44 = this;
          *(*(v33 + 912) + 57) = v36;
          v42 += *v44;
          *v43 -= *v44;
          *(*(v33 + 912) + 56) = 4;
          if (*v43)
          {
            this = spinel_datatype_unpack(v42, *v43, "C", v23, v24, v25, v26, v27, &v35);
            *v44 = this;
            *(*(v33 + 912) + 58) = v35;
            v42 += *v44;
            *v43 -= *v44;
            *(*(v33 + 912) + 56) = 5;
            if (*v43)
            {
              this = spinel_datatype_unpack(v42, *v43, "L", v28, v29, v30, v31, v32, &v34);
              *v44 = this;
              *(*(v33 + 912) + 60) = v34;
              v42 += *v44;
              *v43 -= *v44;
              *(*(v33 + 912) + 56) = 6;
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t ot::Spinel::RadioSpinel::Transmit(ot::Spinel::RadioSpinel *a1, uint64_t *a2)
{
  v24 = a1;
  v23 = a2;
  v21 = a1;
  v22 = 13;
  if (*(a1 + 236) == 2 || *(v21 + 236) == 1 && (ot::Spinel::RadioSpinel::sRadioCaps & 0x10) != 0)
  {
    v2 = v21;
    v21[114] = v23;
    (*(v2 + 33))(*(v2 + 28), *(v2 + 114));
    v3 = *v21[114];
    v4 = *(v21[114] + 4);
    v5 = *(v21[114] + 10);
    v6 = *(v21[114] + 40);
    v7 = *(v21[114] + 41);
    v8 = (*(v21[114] + 45) >> 2) & 1;
    v9 = *(v21[114] + 45) & 1;
    v10 = (*(v21[114] + 45) >> 1) & 1;
    v11 = (*(v21[114] + 45) >> 4) & 1;
    v12 = *(v21[114] + 9);
    v13 = *(v21[114] + 8);
    v14 = *(v21[114] + 43);
    v20[13] = v20;
    v22 = ot::Spinel::RadioSpinel::Request(v21, 3, 113, "dCCCbbbbLLC", v3, v4, v5, v6, v7, v8 & 1, v9 & 1, v10 & 1, v11 & 1, v12, v13, v14);
    if (!v22)
    {
      *(v21 + 236) = 3;
      v15 = otPlatTimeGet();
      v16 = v21;
      v21[210] = (v15 + 5000000 * (*(v21[114] + 41) / 16 + 1));
      v17 = ot::AsCoreType<otInstance>(*(v16 + 28));
      v18 = ot::Instance::Get<ot::Mle::Mle>(v17);
      if (ot::Mle::Mle::isThreadRegulatoryCertEnabled(v18))
      {
        v21[210] = -1;
      }

      *(v21 + 932) = *(v21[114] + 10);
    }
  }

  return v22;
}

uint64_t ot::Instance::Get<ot::Mle::Mle>(uint64_t a1)
{
  return a1 + 91160;
}

{
  return ot::Instance::Get<ot::Mle::Mle>(a1);
}

uint64_t ot::Spinel::RadioSpinel::Receive(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = 0;
  if (*(this + 236))
  {
    if (*(this + 932) != a2 || (*(this + 336) & 1) == 1)
    {
      v4 = ot::Spinel::RadioSpinel::Set(this, 0x21u, "C", a2);
      if (v4)
      {
        return v4;
      }

      *(this + 932) = a2;
      if ((*(this + 336) & 1) == 1)
      {
        *(this + 336) = 0;
        ot::Spinel::Logger::LogNote1(this, "First SPINEL_PROP_PHY_CHAN");
      }
    }

    if (*(this + 236) != 1 || (v4 = ot::Spinel::RadioSpinel::Set(this, 0x37u, "b", 1)) == 0)
    {
      if (*(this + 299))
      {
        ot::Spinel::RadioSpinel::FreeTid(this, *(this + 299));
        *(this + 299) = 0;
      }

      *(this + 236) = 2;
    }
  }

  else
  {
    return 13;
  }

  return v4;
}

uint64_t ot::Spinel::RadioSpinel::LoadPTB(const char **this)
{
  memset(__b, 0, sizeof(__b));
  getFilePathFromDirectory(__b, "/usr/share/firmware/wpan/", ".ptb", 0xC8u);
  if (!__b[0])
  {
    ot::Spinel::Logger::LogWarn1(this, "RadioSpinel LoadPTB: file not found");
    ptb_bandedge_captureABC_Failure(0);
  }

  if (__b[0])
  {
    v4 = readFromFilePTB(__b, v7, 0x514u);
    if (v4)
    {
      v5 = ot::Spinel::RadioSpinel::Set(this, 15534, "d", v7, v4);
      if (v5)
      {
        v1 = otThreadErrorToString(v5);
        ot::Spinel::Logger::LogWarn1(this, "RadioSpinel LoadPTB:Set Spinel property:SPINEL_PROP_VENDOR_POWER_TABLE error=%s", v1);
        ptb_bandedge_captureABC_Failure(2);
      }
    }

    else
    {
      ot::Spinel::Logger::LogWarn1(this, "RadioSpinel LoadPTB: file %s empty", __b);
      ptb_bandedge_captureABC_Failure(1);
      return 6;
    }
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::resetRCP(const char **this)
{
  ot::Spinel::Logger::LogDebg1(this, "Performing a Soft Reset for Threadleave/ThreadStop");
  *(this + 952) = this[119] & 0xF8 | 4;
  ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
  return 0;
}

unsigned __int8 *ot::Spinel::RadioSpinel::FreeTransmitTid(unsigned __int8 *this)
{
  v1 = this;
  if (this[299])
  {
    ot::Spinel::Logger::LogInfo1(this, "Freed Transmit Tid %d", this[299]);
    ot::Spinel::RadioSpinel::FreeTid(v1, *(v1 + 299));
    *(v1 + 299) = 0;
    *(v1 + 236) = 2;
    *(v1 + 210) = -1;
    return ot::Spinel::RadioSpinel::TransmitDone(v1, *(v1 + 114), 0, 0xBu);
  }

  return this;
}

uint64_t ot::Spinel::RadioSpinel::Sleep(ot::Spinel::RadioSpinel *this)
{
  v5 = this;
  v3 = this;
  v4 = 0;
  if (!gPciStatus)
  {
    v2 = *(v3 + 236);
    if (v2 != 1)
    {
      if (v2 == 2)
      {
        v4 = ot::Spinel::RadioSpinel::Set(v3, 0x37u, "b", 0);
        if (!v4)
        {
          *(v3 + 236) = 1;
        }
      }

      else
      {
        return 13;
      }
    }
  }

  return v4;
}

uint64_t ot::Spinel::RadioSpinel::Enable(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  PTB = 0;
  v16 = 0;
  if (!ot::Spinel::RadioSpinel::IsEnabled(a1))
  {
    *(a1 + 224) = v18;
    ot::Spinel::Logger::LogNote1(a1, "RadioSpinel::Enable SIZEOF : sz_Instance[--]");
    v2 = *(a1 + 224);
    if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) == 0)
    {
      if (!isSupportedPlatform())
      {
        ot::Spinel::Logger::LogWarn1(a1, "Unsupported Platform: Daemon Exiting");
        strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
        otExitCodeToString(1);
        otLogCritPlat("%s() at %s:%d: %s", v3, v4, v5, v6, v7, v8, v9, "Enable");
        handle_daemon_exit();
        exit(1);
      }

      PTB = ot::Spinel::RadioSpinel::LoadPTB(a1);
      if (PTB)
      {
        v10 = otThreadErrorToString(PTB);
        ot::Spinel::Logger::LogWarn1(a1, "RadioSpinel LoadPTB failed : %s", v10);
      }

      PTB = ot::Spinel::RadioSpinel::Get(a1, 15535, "b", &v16);
      if (PTB)
      {
        v12 = otThreadErrorToString(PTB);
        ot::Spinel::Logger::LogDebg1(a1, "Failed to read MSF Load status: %s", v12);
      }

      else
      {
        v11 = "Success";
        if ((v16 & 1) == 0)
        {
          v11 = "Fail";
        }

        ot::Spinel::Logger::LogDebg1(a1, "MSF File Load status in RCP2 =%s", v11);
      }
    }

    PTB = ot::Spinel::RadioSpinel::Set(a1, 32, "b", 1);
    if (!PTB)
    {
      PTB = ot::Spinel::RadioSpinel::Set(a1, 54, "S", *(a1 + 930));
      if (!PTB)
      {
        PTB = ot::Spinel::RadioSpinel::Set(a1, 53, "S", *(a1 + 928));
        if (!PTB)
        {
          PTB = ot::Spinel::RadioSpinel::Get(a1, 39, "c", a1 + 933);
          if (!PTB)
          {
            *(a1 + 944) = 1;
          }
        }
      }
    }
  }

  if (PTB)
  {
    v13 = otThreadErrorToString(PTB);
    ot::Spinel::Logger::LogWarn1(a1, "RadioSpinel enable: %s", v13);
    return 1;
  }

  return PTB;
}

uint64_t ot::Spinel::RadioSpinel::Disable(ot::Spinel::RadioSpinel *this)
{
  v13 = 0;
  if (pciNotOpen())
  {
    return 0;
  }

  else
  {
    if (ot::Spinel::RadioSpinel::IsEnabled(this))
    {
      if (*(this + 236) == 1)
      {
        v12 = ot::Spinel::RadioSpinel::Set(this, 32, "b", 0);
        if (v12)
        {
          strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
          if (v12 == 7)
          {
            v1 = 2;
          }

          else
          {
            v1 = 1;
          }

          otExitCodeToString(v1);
          otLogCritPlat("%s() at %s:%d: %s", v2, v3, v4, v5, v6, v7, v8, "Disable");
          handle_daemon_exit();
          if (v12 == 7)
          {
            v9 = 2;
          }

          else
          {
            v9 = 1;
          }

          exit(v9);
        }

        *(this + 236) = 0;
        *(this + 28) = 0;
      }

      else
      {
        return 13;
      }
    }

    return v13;
  }
}

uint64_t ot::Spinel::RadioSpinel::SetDiagOutputCallback(uint64_t this, void (*a2)(const char *, char *, void *), void *a3)
{
  *(this + 1664) = a2;
  *(this + 1672) = a3;
  return this;
}

uint64_t ot::Spinel::RadioSpinel::GetDiagOutputCallback(uint64_t this, void (**a2)(const char *, char *, void *), void **a3)
{
  *a2 = *(this + 1664);
  *a3 = *(this + 1672);
  return this;
}

uint64_t ot::Spinel::RadioSpinel::RadioSpinelDiagProcess(ot::Spinel::RadioSpinel *this, const char **a2, unsigned __int8 a3)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  if (a3 <= 1u)
  {
    return 7;
  }

  else
  {
    ++v11;
    --v10;
    if (!strcmp(*v11, "buslatency"))
    {
      if (v10 == 1)
      {
        BusLatency = ot::Spinel::RadioSpinel::GetBusLatency(this);
        v4 = ot::ToUlong(BusLatency);
        ot::Spinel::RadioSpinel::PlatDiagOutput(this, "%lu\n", v4);
      }

      else if (v10 == 2)
      {
        v8 = 0;
        __endptr = 0;
        v8 = strtoul(v11[1], &__endptr, 0);
        if (*__endptr)
        {
          return 7;
        }

        else
        {
          ot::Spinel::RadioSpinel::SetBusLatency(this, v8);
        }
      }

      else
      {
        return 7;
      }
    }
  }

  return v9;
}

uint64_t ot::Spinel::RadioSpinel::SetBusLatency(ot::Spinel::RadioSpinel *this, int a2)
{
  *(this + 235) = a2;
  result = ot::Spinel::RadioSpinel::IsEnabled(this);
  if (result)
  {
    if (*(this + 32))
    {
      return (*(this + 32))(*(this + 28));
    }
  }

  return result;
}

uint64_t ot::Spinel::RadioSpinel::GetRadioChannelMask(ot::Spinel::RadioSpinel *this, char a2)
{
  v28 = this;
  v27 = a2;
  v26 = 0;
  v25 = 0;
  v24 = v29;
  v23 = 32;
  if (a2)
  {
    v2 = 41;
  }

  else
  {
    v2 = 34;
  }

  v22 = ot::Spinel::RadioSpinel::Get(this, v2, "D", v29, &v23);
  if (v22)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    if (v22 == 7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    otExitCodeToString(v8);
    otLogCritPlat("%s() at %s:%d: %s", v9, v10, v11, v12, v13, v14, v15, "GetRadioChannelMask");
    handle_daemon_exit();
    if (v22 == 7)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    exit(v16);
  }

  while (v23)
  {
    v21 = 0;
    v20 = spinel_datatype_unpack(v24, v23, "C", v3, v4, v5, v6, v7, &v21);
    if (v20 <= 0)
    {
      v26 = 1;
      goto LABEL_19;
    }

    if (v21 >= 0x20u)
    {
      v26 = 6;
      goto LABEL_19;
    }

    v25 |= 1 << v21;
    v24 += v20;
    v23 -= v20;
  }

  SupportedChannelMask = ot::MaxPowerTable::GetSupportedChannelMask((this + 1704));
  v25 &= SupportedChannelMask;
LABEL_19:
  ot::Spinel::RadioSpinel::UpdateParseErrorCount(this, v26);
  ot::Spinel::Logger::LogIfFail1(this, "Get radio channel mask failed", v26);
  return v25;
}

uint64_t ot::MaxPowerTable::GetSupportedChannelMask(ot::MaxPowerTable *this)
{
  v3 = 0;
  for (i = 11; i <= 0x19u; ++i)
  {
    if (*(this + i - 11) != 127)
    {
      v3 |= 1 << i;
    }
  }

  return v3;
}

{
  return ot::MaxPowerTable::GetSupportedChannelMask(this);
}

unint64_t ot::Spinel::RadioSpinel::GetNow(ot::Spinel::RadioSpinel *this)
{
  if ((*(this + 948) & 4) != 0)
  {
    return otPlatTimeGet() + *(this + 212);
  }

  else
  {
    return -1;
  }
}

uint64_t ot::Spinel::RadioSpinel::GetBusSpeed(ot::Spinel::RadioSpinel *this)
{
  SpinelDriver = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
  SpinelInterface = ot::Spinel::SpinelDriver::GetSpinelInterface(SpinelDriver);
  return (*(*SpinelInterface + 56))(SpinelInterface);
}

uint64_t ot::Spinel::SpinelDriver::SetCoprocessorNotReady(uint64_t this)
{
  *(this + 8288) = 0;
  return this;
}

{
  return ot::Spinel::SpinelDriver::SetCoprocessorNotReady(this);
}

uint64_t ot::Spinel::SpinelDriver::MarkRxBufferReset(ot::Spinel::SpinelDriver *this, char a2)
{
  return ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::markReset(this + 8, a2 & 1);
}

{
  return ot::Spinel::SpinelDriver::MarkRxBufferReset(this, a2);
}

void ot::Spinel::RadioSpinel::RestoreProperties(ot::Spinel::RadioSpinel *this)
{
  v230 = this;
  v198 = this;
  v229 = ot::Spinel::RadioSpinel::Set(v198, 0x36u, "S", *(v198 + 465));
  if (v229)
  {
    v228 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    if (v228)
    {
      v197 = v228 + 1;
    }

    else
    {
      v197 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
    }

    v195 = v197;
    v196 = 2;
    if (v229 == 7)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }

    v149 = v195;
    v150 = 3524;
    v151 = otExitCodeToString(v1);
    otLogCritPlat("%s() at %s:%d: %s", v2, v3, v4, v5, v6, v7, v8, "RestoreProperties");
    handle_daemon_exit();
    if (v229 == 7)
    {
      v9 = v196;
    }

    else
    {
      v9 = 1;
    }

    exit(v9);
  }

  v227 = ot::Spinel::RadioSpinel::Set(v198, 0x35u, "S", *(v198 + 464));
  if (v227)
  {
    v226 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    if (v226)
    {
      v194 = v226 + 1;
    }

    else
    {
      v194 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
    }

    v192 = v194;
    v193 = 2;
    if (v227 == 7)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v149 = v192;
    v150 = 3525;
    v151 = otExitCodeToString(v10);
    otLogCritPlat("%s() at %s:%d: %s", v11, v12, v13, v14, v15, v16, v17, "RestoreProperties");
    handle_daemon_exit();
    if (v227 == 7)
    {
      v18 = v193;
    }

    else
    {
      v18 = 1;
    }

    exit(v18);
  }

  v225 = ot::Spinel::RadioSpinel::Set(v198, 0x34u, "E", v198 + 920);
  if (v225)
  {
    v224 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    if (v224)
    {
      v191 = v224 + 1;
    }

    else
    {
      v191 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
    }

    v189 = v191;
    v190 = 2;
    if (v225 == 7)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    v149 = v189;
    v150 = 3526;
    v151 = otExitCodeToString(v19);
    otLogCritPlat("%s() at %s:%d: %s", v20, v21, v22, v23, v24, v25, v26, "RestoreProperties");
    handle_daemon_exit();
    if (v225 == 7)
    {
      v27 = v190;
    }

    else
    {
      v27 = 1;
    }

    exit(v27);
  }

  v223 = ot::Spinel::RadioSpinel::Set(v198, 0x21u, "C", *(v198 + 932));
  if (v223)
  {
    v222 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    if (v222)
    {
      v188 = v222 + 1;
    }

    else
    {
      v188 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
    }

    v186 = v188;
    v187 = 2;
    if (v223 == 7)
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    v149 = v186;
    v150 = 3531;
    v151 = otExitCodeToString(v28);
    otLogCritPlat("%s() at %s:%d: %s", v29, v30, v31, v32, v33, v34, v35, "RestoreProperties");
    handle_daemon_exit();
    if (v223 == 7)
    {
      v36 = v187;
    }

    else
    {
      v36 = 1;
    }

    exit(v36);
  }

  if ((*(v198 + 1655) & 4) != 0)
  {
    v37 = *(v198 + 953);
    v38 = *(v198 + 954);
    v185 = &v148;
    v221 = ot::Spinel::RadioSpinel::Set(v198, 0x800u, "CCddd", v37, v38, v198 + 955, 16, v198 + 971, 16, v198 + 987, 16);
    if (v221)
    {
      v220 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v220)
      {
        v184 = v220 + 1;
      }

      else
      {
        v184 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v182 = v184;
      v183 = 2;
      if (v221 == 7)
      {
        v39 = 2;
      }

      else
      {
        v39 = 1;
      }

      v40 = otExitCodeToString(v39);
      v149 = v182;
      v150 = 3540;
      v151 = v40;
      otLogCritPlat("%s() at %s:%d: %s", v41, v42, v43, v44, v45, v46, v47, "RestoreProperties");
      handle_daemon_exit();
      if (v221 == 7)
      {
        v48 = v183;
      }

      else
      {
        v48 = 1;
      }

      exit(v48);
    }
  }

  if ((*(v198 + 1655) & 0x100) != 0)
  {
    FrameCounter = otLinkGetFrameCounter(*(v198 + 28));
    v219 = ot::Spinel::RadioSpinel::Set(v198, 0x801u, "L", (FrameCounter + 1000));
    if (v219)
    {
      v218 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v218)
      {
        v181 = v218 + 1;
      }

      else
      {
        v181 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v179 = v181;
      v180 = 2;
      if (v219 == 7)
      {
        v50 = 2;
      }

      else
      {
        v50 = 1;
      }

      v51 = otExitCodeToString(v50);
      v149 = v179;
      v150 = 3558;
      v151 = v51;
      otLogCritPlat("%s() at %s:%d: %s", v52, v53, v54, v55, v56, v57, v58, "RestoreProperties");
      handle_daemon_exit();
      if (v219 == 7)
      {
        v59 = v180;
      }

      else
      {
        v59 = 1;
      }

      exit(v59);
    }
  }

  for (i = 0; i < *(v198 + 566); ++i)
  {
    v216 = ot::Spinel::RadioSpinel::Insert(v198, 4868, "S", *(v198 + i + 502));
    if (v216)
    {
      v215 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v215)
      {
        v178 = v215 + 1;
      }

      else
      {
        v178 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v176 = v178;
      v177 = 2;
      if (v216 == 7)
      {
        v60 = 2;
      }

      else
      {
        v60 = 1;
      }

      v61 = otExitCodeToString(v60);
      v149 = v176;
      v150 = 3573;
      v151 = v61;
      otLogCritPlat("%s() at %s:%d: %s", v62, v63, v64, v65, v66, v67, v68, "RestoreProperties");
      handle_daemon_exit();
      if (v216 == 7)
      {
        v69 = v177;
      }

      else
      {
        v69 = 1;
      }

      exit(v69);
    }
  }

  for (j = 0; j < *(v198 + 823); ++j)
  {
    v213 = ot::Spinel::RadioSpinel::Insert(v198, 4869, "E", v198 + 8 * j + 1134);
    if (v213)
    {
      v212 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v212)
      {
        v175 = v212 + 1;
      }

      else
      {
        v175 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v173 = v175;
      v174 = 2;
      if (v213 == 7)
      {
        v70 = 2;
      }

      else
      {
        v70 = 1;
      }

      v71 = otExitCodeToString(v70);
      v149 = v173;
      v150 = 3579;
      v151 = v71;
      otLogCritPlat("%s() at %s:%d: %s", v72, v73, v74, v75, v76, v77, v78, "RestoreProperties");
      handle_daemon_exit();
      if (v213 == 7)
      {
        v79 = v174;
      }

      else
      {
        v79 = 1;
      }

      exit(v79);
    }
  }

  if (*(v198 + 1658))
  {
    v211 = ot::Spinel::RadioSpinel::Set(v198, 0x1303u, "b", (*(v198 + 1655) & 2) != 0);
    if (v211)
    {
      v210 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v210)
      {
        v172 = v210 + 1;
      }

      else
      {
        v172 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v170 = v172;
      v171 = 2;
      if (v211 == 7)
      {
        v80 = 2;
      }

      else
      {
        v80 = 1;
      }

      v81 = otExitCodeToString(v80);
      v149 = v170;
      v150 = 3584;
      v151 = v81;
      otLogCritPlat("%s() at %s:%d: %s", v82, v83, v84, v85, v86, v87, v88, "RestoreProperties");
      handle_daemon_exit();
      if (v211 == 7)
      {
        v89 = v171;
      }

      else
      {
        v89 = 1;
      }

      exit(v89);
    }
  }

  if ((*(v198 + 1655) & 8) != 0)
  {
    v209 = ot::Spinel::RadioSpinel::Set(v198, 0x24u, "c", *(v198 + 1652));
    if (v209)
    {
      v208 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v208)
      {
        v169 = v208 + 1;
      }

      else
      {
        v169 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v167 = v169;
      v168 = 2;
      if (v209 == 7)
      {
        v90 = 2;
      }

      else
      {
        v90 = 1;
      }

      v91 = otExitCodeToString(v90);
      v149 = v167;
      v150 = 3589;
      v151 = v91;
      otLogCritPlat("%s() at %s:%d: %s", v92, v93, v94, v95, v96, v97, v98, "RestoreProperties");
      handle_daemon_exit();
      if (v209 == 7)
      {
        v99 = v168;
      }

      else
      {
        v99 = 1;
      }

      exit(v99);
    }
  }

  if ((*(v198 + 1655) & 0x10) != 0)
  {
    v207 = ot::Spinel::RadioSpinel::Set(v198, 0x25u, "c", *(v198 + 1653));
    if (v207)
    {
      v206 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v206)
      {
        v166 = v206 + 1;
      }

      else
      {
        v166 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v164 = v166;
      v165 = 2;
      if (v207 == 7)
      {
        v100 = 2;
      }

      else
      {
        v100 = 1;
      }

      v101 = otExitCodeToString(v100);
      v149 = v164;
      v150 = 3594;
      v151 = v101;
      otLogCritPlat("%s() at %s:%d: %s", v102, v103, v104, v105, v106, v107, v108, "RestoreProperties");
      handle_daemon_exit();
      if (v207 == 7)
      {
        v109 = v165;
      }

      else
      {
        v109 = 1;
      }

      exit(v109);
    }
  }

  if ((*(v198 + 1655) & 0x20) != 0)
  {
    v205 = ot::Spinel::RadioSpinel::Set(v198, 0x120Du, "b", *(v198 + 1655) & 1);
    if (v205)
    {
      v204 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v204)
      {
        v163 = v204 + 1;
      }

      else
      {
        v163 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v161 = v163;
      v162 = 2;
      if (v205 == 7)
      {
        v110 = 2;
      }

      else
      {
        v110 = 1;
      }

      v111 = otExitCodeToString(v110);
      v149 = v161;
      v150 = 3599;
      v151 = v111;
      otLogCritPlat("%s() at %s:%d: %s", v112, v113, v114, v115, v116, v117, v118, "RestoreProperties");
      handle_daemon_exit();
      if (v205 == 7)
      {
        v119 = v162;
      }

      else
      {
        v119 = 1;
      }

      exit(v119);
    }
  }

  if ((*(v198 + 1655) & 0x40) != 0)
  {
    v203 = ot::Spinel::RadioSpinel::Set(v198, 0x2Au, "c", *(v198 + 1654));
    if (v203)
    {
      v202 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v202)
      {
        v160 = v202 + 1;
      }

      else
      {
        v160 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v158 = v160;
      v159 = 2;
      if (v203 == 7)
      {
        v120 = 2;
      }

      else
      {
        v120 = 1;
      }

      v121 = otExitCodeToString(v120);
      v149 = v158;
      v150 = 3604;
      v151 = v121;
      otLogCritPlat("%s() at %s:%d: %s", v122, v123, v124, v125, v126, v127, v128, "RestoreProperties");
      handle_daemon_exit();
      if (v203 == 7)
      {
        v129 = v159;
      }

      else
      {
        v129 = 1;
      }

      exit(v129);
    }
  }

  if (!*(v198 + 28))
  {
    ot::Spinel::Logger::LogWarn1(v198, "OT instance is already invalidated, Daemon exiting");
    v201 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
    if (v201)
    {
      v157 = v201 + 1;
    }

    else
    {
      v157 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
    }

    v155 = v157;
    v156 = 1;
    v130 = otExitCodeToString(1);
    v149 = v155;
    v150 = 3632;
    v151 = v130;
    otLogCritPlat("%s() at %s:%d: %s", v131, v132, v133, v134, v135, v136, v137, "RestoreProperties");
    handle_daemon_exit();
    exit(v156);
  }

  otThreadSetCoexConfigInfo(*(v198 + 28));
  if ((ot::Spinel::RadioSpinel::sRadioCaps & 0x100) != 0)
  {
    v200 = ot::Spinel::RadioSpinel::Set(v198, 0x3Bu, "b", (*(v198 + 948) & 2) != 0);
    if (v200)
    {
      v199 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v199)
      {
        v154 = v199 + 1;
      }

      else
      {
        v154 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp";
      }

      v152 = v154;
      v153 = 2;
      if (v200 == 7)
      {
        v138 = 2;
      }

      else
      {
        v138 = 1;
      }

      v139 = otExitCodeToString(v138);
      v149 = v152;
      v150 = 3639;
      v151 = v139;
      otLogCritPlat("%s() at %s:%d: %s", v140, v141, v142, v143, v144, v145, v146, "RestoreProperties");
      handle_daemon_exit();
      if (v200 == 7)
      {
        v147 = v153;
      }

      else
      {
        v147 = 1;
      }

      exit(v147);
    }
  }

  if (*(v198 + 1760))
  {
    ot::Spinel::RadioSpinel::CalcRcpTimeOffset(v198);
  }
}

void ot::Spinel::RadioSpinel::HandleReceivedFrame(const char **this, const unsigned __int8 *a2, __int16 a3, uint64_t a4, BOOL *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a4 & 0xF) != 0)
  {
    ot::Spinel::RadioSpinel::HandleResponse(this, a2, a3, a4, a5, a6, a7, a8);
    *a5 = 0;
  }

  else
  {
    ot::Spinel::RadioSpinel::HandleNotification(this, a2, a3, a5, a5, a6, a7, a8);
  }
}

void ot::Spinel::RadioSpinel::RestoreHostProperties(const char **this)
{
  v16 = this;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  v2 = 0;
  v1 = 0;
  ot::Spinel::Logger::LogWarn1(this, "RestoreHostProperties ..");
  get_host_rcp_setting_params(&v15, &v14, &v13, &v12, &v11, &v10, &v9, &v8, &v7, &v6, &v5, &v4, &v3, &v2, &v1);
}

uint64_t ot::Spinel::RadioSpinel::SetPromiscuousEnable(ot::Spinel::RadioSpinel *this)
{
  Channel = otLinkGetChannel(*(this + 28));
  v4 = ot::Spinel::RadioSpinel::Set(this, 32, "b", 1);
  if (!v4)
  {
    v4 = ot::Spinel::RadioSpinel::Set(this, 40, "b", 1);
    if (!v4)
    {
      v4 = ot::Spinel::RadioSpinel::Set(this, 55, "b", 1);
      if (!v4)
      {
        v4 = ot::Spinel::RadioSpinel::Set(this, 56, "C", 2);
        if (!v4)
        {
          return ot::Spinel::RadioSpinel::Set(this, 33, "C", Channel);
        }
      }
    }
  }

  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetMultipanActiveInterface(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 2304, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get GetMultipanActiveInterface failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetMultipanActiveInterface(ot::Spinel::RadioSpinel *this, unsigned __int8 a2, char a3)
{
  if (a2 == (a2 & 3))
  {
    v4 = a2;
    if (a3)
    {
      v4 = a2 | 0x80;
    }

    return ot::Spinel::RadioSpinel::Set(this, 2304, "C", v4);
  }

  else
  {
    return 7;
  }
}

uint64_t ot::Spinel::RadioSpinel::SetChannelMaxTransmitPower(ot::Spinel::RadioSpinel *this, unsigned __int8 a2, char a3)
{
  if (a2 >= 0xBu && a2 <= 0x19u)
  {
    ot::MaxPowerTable::SetTransmitPower(this + 1704, a2, a3);
    return ot::Spinel::RadioSpinel::Set(this, 43, "Cc", a2, a3);
  }

  else
  {
    return 7;
  }
}

uint64_t ot::MaxPowerTable::SetTransmitPower(uint64_t this, unsigned __int8 a2, char a3)
{
  *(this + a2 - 11) = a3;
  return this;
}

{
  return ot::MaxPowerTable::SetTransmitPower(this, a2, a3);
}

uint64_t ot::Spinel::RadioSpinel::SetRadioRegion(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v5 = ot::Spinel::RadioSpinel::Set(this, 44, "S", a2);
  if (v5)
  {
    v2 = otThreadErrorToString(v5);
    ot::Spinel::Logger::LogWarn1(this, "Failed to set region code %c%c: %s", SHIBYTE(a2), a2, v2);
  }

  else
  {
    ot::Spinel::Logger::LogNote1(this, "Set region code %c%c successfully", SHIBYTE(a2), a2);
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetRadioRegion(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  if (a2)
  {
    return ot::Spinel::RadioSpinel::Get(this, 44, "S", a2);
  }

  else
  {
    return 7;
  }
}

uint64_t ot::Spinel::RadioSpinel::ConfigureEnhAckProbing(ot::Spinel::RadioSpinel *a1, char a2, unsigned __int16 *a3, uint64_t a4)
{
  v5 = (a2 & 1) != 0;
  if ((a2 & 2) != 0)
  {
    v5 |= 2u;
  }

  if ((a2 & 4) != 0)
  {
    v5 |= 4u;
  }

  if ((a2 & 8) != 0)
  {
    v5 |= 8u;
  }

  return ot::Spinel::RadioSpinel::Set(a1, 2051, "SEC", *a3, a4, v5);
}

uint64_t ot::Spinel::RadioSpinel::EnableCsl(ot::Spinel::RadioSpinel *a1, unsigned int a2, unsigned __int16 a3, uint64_t a4)
{
  return ot::Spinel::RadioSpinel::Set(a1, 2055, "LSE", a2, a3, a4, a4);
}

{
  return ot::Spinel::RadioSpinel::Set(a1, 2055, "LSE", a2, a3, a4);
}

uint64_t ot::Spinel::RadioSpinel::SetHostPowerState(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 12, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set host power state failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetPcapEnable(ot::Spinel::RadioSpinel *this)
{
  v5 = this;
  v4 = 0;
  v3 = ot::Spinel::RadioSpinel::Get(this, 40, "b", &v4);
  ot::Spinel::Logger::LogIfFail1(this, "Get Pcap Enable failed", v3);
  return v4 & 1;
}

uint64_t ot::Spinel::RadioSpinel::SetPromiscuousDisable(ot::Spinel::RadioSpinel *this)
{
  v4 = this;
  v2 = this;
  v3 = 0;
  v3 = ot::Spinel::RadioSpinel::Set(this, 56, "C", 0);
  if (!v3)
  {
    return ot::Spinel::RadioSpinel::Set(v2, 40, "b", 0);
  }

  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetRcp2Vendor2Enabled(ot::Spinel::RadioSpinel *this, char a2)
{
  result = 0;
  *(this + 1736) = a2 != 0;
  return result;
}

uint64_t ot::Spinel::RadioSpinel::getStreamRawHistogram(ot::Spinel::RadioSpinel *this, unsigned int *a2)
{
  if (a2 && this != -24)
  {
    for (i = 0; i < 50; ++i)
    {
      a2[i] = *(this + i + 6);
    }

    return 0;
  }

  else
  {
    return 13;
  }
}

uint64_t ot::Spinel::RadioSpinel::resetStreamRawHistogram(ot::Spinel::RadioSpinel *this)
{
  if (this == -24)
  {
    return 13;
  }

  else
  {
    for (i = 0; i < 50; ++i)
    {
      *(this + i + 6) = 0;
    }

    return 0;
  }
}

uint64_t ot::Spinel::RadioSpinel::GetFrameTxPowerHistogram(ot::Spinel::RadioSpinel *this, unsigned int *a2, unsigned __int8 *a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  v4[19] = this;
  v5 = 13;
  v4[18] = v4;
  v5 = ot::Spinel::RadioSpinel::Get(this, 4645, "t(LLLLLLLLLLLLLLLLL)", v7, v7 + 1, v7 + 2, v7 + 3, v7 + 4, v7 + 5, v7 + 6, v7 + 7, v7 + 8, v7 + 9, v7 + 10, v7 + 11, v7 + 12, v7 + 13, v7 + 14, v7 + 15, v7 + 16);
  if (!v5)
  {
    *v6 = 17;
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::ResetFrameTxPowerHistogram(ot::Spinel::RadioSpinel *this)
{
  v4 = this;
  v2 = this;
  v3 = 13;
  return ot::Spinel::RadioSpinel::Set(this, 4645, "L", 0);
}

uint64_t ot::Spinel::RadioSpinel::GetNeighborTxPowerHistogram(ot::Spinel::RadioSpinel *this, unsigned int *a2, unsigned __int8 *a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  v4[19] = this;
  v5 = 13;
  v4[18] = v4;
  v5 = ot::Spinel::RadioSpinel::Get(this, 4646, "t(LLLLLLLLLLLLLLLLL)", v7, v7 + 1, v7 + 2, v7 + 3, v7 + 4, v7 + 5, v7 + 6, v7 + 7, v7 + 8, v7 + 9, v7 + 10, v7 + 11, v7 + 12, v7 + 13, v7 + 14, v7 + 15, v7 + 16);
  if (!v5)
  {
    *v6 = 17;
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::ResetNeighborTxPowerHistogram(ot::Spinel::RadioSpinel *this)
{
  v4 = this;
  v2 = this;
  v3 = 13;
  return ot::Spinel::RadioSpinel::Set(this, 4646, "L", 0);
}

uint64_t ot::Spinel::RadioSpinel::GetNeighborEnergySavingsFactorHistogram(ot::Spinel::RadioSpinel *this, unsigned int *a2, unsigned __int8 *a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  v4[21] = this;
  v5 = 13;
  v4[20] = v4;
  v5 = ot::Spinel::RadioSpinel::Get(this, 4647, "t(LLLLLLLLLLLLLLLLLLL)", v7, v7 + 1, v7 + 2, v7 + 3, v7 + 4, v7 + 5, v7 + 6, v7 + 7, v7 + 8, v7 + 9, v7 + 10, v7 + 11, v7 + 12, v7 + 13, v7 + 14, v7 + 15, v7 + 16, v7 + 17, v7 + 18);
  if (!v5)
  {
    *v6 = 19;
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::ResetNeighborEnergySavingsFactorHistogram(ot::Spinel::RadioSpinel *this)
{
  v4 = this;
  v2 = this;
  v3 = 13;
  return ot::Spinel::RadioSpinel::Set(this, 4647, "L", 0);
}

uint64_t ot::Spinel::RadioSpinel::SetWakeupConfiguration(ot::Spinel::RadioSpinel *this, unsigned int a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v22 = this;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v11 = this;
  v18 = 0;
  v17 = 0;
  v16 = 1;
  v15 = 60;
  PrioritizedWindowSize = otLinkGetPrioritizedWindowSize(*(this + 28));
  v13 = 8;
  v12 = 0;
  v4 = *(v11 + 28);
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    v18 = ot::Spinel::RadioSpinel::Set(v11, 55, "b", 0);
  }

  else
  {
    v18 = ot::Spinel::RadioSpinel::Set(v11, 15397, "C", 0);
  }

  v10 = v20;
  if (v20 == 1)
  {
    v12 = 15000;
    v17 = 1;
  }

  else if (v10 == 2)
  {
    v12 = 7500;
    v17 = 1;
  }

  else if (v10 == 3)
  {
    v12 = 7500;
    v17 = 2;
  }

  else
  {
    if (v10 == 4)
    {
      v12 = 15000;
    }

    else
    {
      v12 = 7500;
    }

    v17 = 1;
  }

  v5 = ot::AsCoreType<otInstance>(*(v11 + 28));
  v6 = ot::Instance::Get<ot::Mle::Mle>(v5);
  if (ot::Mle::Mle::isThreadRegulatoryCertEnabled(v6))
  {
    v12 = 7500;
    v17 = v19;
  }

  v7 = *(v11 + 28);
  if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) == 0 && !otPlatRadioRcp2SpinelVersionIsSameOrNewer(1u, 1u))
  {
    v12 /= 1000;
  }

  v13 = 8;
  v9[9] = v9;
  return ot::Spinel::RadioSpinel::Set(v11, 4353, "LLCLLLLL", v21, v12, v17, 60, 8, v16, v15, PrioritizedWindowSize);
}

uint64_t ot::Spinel::RadioSpinel::GetCslAccuracy(ot::Spinel::RadioSpinel *this)
{
  v5 = this;
  v4 = -1;
  v3 = ot::Spinel::RadioSpinel::Get(this, 2052, "C", &v4);
  ot::Spinel::Logger::LogIfFail1(this, "Get CSL Accuracy failed", v3);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetCslUncertainty(ot::Spinel::RadioSpinel *this)
{
  v5 = this;
  v4 = -1;
  v3 = ot::Spinel::RadioSpinel::Get(this, 2053, "C", &v4);
  ot::Spinel::Logger::LogIfFail1(this, "Get CSL Uncertainty failed", v3);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::AddCalibratedPower(ot::Spinel::RadioSpinel *this, unsigned __int8 a2, __int16 a3, const unsigned __int8 *a4, unsigned __int16 a5)
{
  if (!a4)
  {
    __assert_rtn("AddCalibratedPower", "radio_spinel.cpp", 4339, "aRawPowerSetting != nullptr");
  }

  return ot::Spinel::RadioSpinel::Insert(this, 45, "Csd", a2, a3, a4, a5);
}

uint64_t ot::Spinel::RadioSpinel::SetChannelTargetPower(ot::Spinel::RadioSpinel *this, unsigned __int8 a2, __int16 a3)
{
  if (a2 >= 0xBu && a2 <= 0x19u)
  {
    return ot::Spinel::RadioSpinel::Set(this, 46, "Cs", a2, a3);
  }

  else
  {
    return 7;
  }
}

uint64_t ot::Spinel::RadioSpinel::SpinelHandleReceivedFrame(char **this, char *a2, unsigned __int16 a3, char *a4, char *a5, char a6)
{
  v30 = this;
  v29 = a2;
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v17 = this;
  v16 = this;
  this[1] = a4;
  this[2] = v26;
  v6 = ot::Spinel::Logger::Snprintf(this, this[1], *(this + 4) - this[1], "\n");
  v17[1] += v6;
  v24 = v15;
  v18 = (v28 + 15) & 0x1FFF0;
  __chkstk_darwin(v6);
  v19 = &v15[-v18];
  v23 = v7;
  ot::Spinel::parse_string_into_data(&v15[-v18], v28, v29, v8);
  v22 = 0;
  v21 = 0;
  v20 = 0;
  if (v25)
  {
    return ot::Spinel::RadioSpinel::SpinelLogSpinelFrame(v16, v19, v28, 1);
  }

  else
  {
    v22 = ot::Spinel::RadioSpinel::SpinelLogSpinelFrame(v16, v19, v28, 0);
    if (!v22)
    {
      v20 = spinel_datatype_unpack(v19, v28, "C", v9, v10, v11, v12, v13, &v21);
      if (v20 >= 1 && (v21 & 0x80) != 0 && ((v21 >> 4) & 3) == 0)
      {
        if ((v21 & 0xF) != 0)
        {
          return ot::Spinel::RadioSpinel::SpinelHandleResponse(v16, v19, v28);
        }

        else
        {
          return ot::Spinel::RadioSpinel::SpinelHandleNotification(v16, v19, v28);
        }
      }

      else
      {
        return 6;
      }
    }
  }

  return v22;
}

uint64_t ot::Spinel::RadioSpinel::SpinelLogSpinelFrame(char **this, const unsigned __int8 *a2, unsigned __int16 a3, char a4)
{
  v305 = v340;
  v393 = this;
  v392 = a2;
  v391 = a3;
  v390 = a4;
  *&__size[1] = this;
  v4 = ot::Spinel::Logger::Snprintf(this, this[1], this[2] - this[1], "\n");
  *(*&__size[1] + 8) += v4;
  v389 = 0;
  v388 = 0;
  v387 = 0;
  v386 = 0;
  v385 = 0;
  v384 = 0;
  v383 = 0;
  v382 = 0;
  if (otLoggingGetLevel(v4) < 5)
  {
    goto LABEL_209;
  }

  v12 = v305;
  v13 = "Sent spinel frame";
  if ((v390 & 1) == 0)
  {
    v13 = "Received spinel frame";
  }

  *(v305 + 34) = v13;
  v14 = *(v12 + 40);
  v263 = &v386;
  v264 = &v385;
  v265 = &v384;
  v266 = &v383;
  *(v305 + 77) = spinel_datatype_unpack(v14, v391, "CiiD", v7, v8, v9, v10, v11, &v387);
  if (*(v305 + 77) <= 0)
  {
    *(v305 + 78) = 6;
    goto LABEL_209;
  }

  __str = *(*&__size[1] + 8);
  __size[0] = *(*&__size[1] + 16) - *(*&__size[1] + 8);
  *&v300[1] = *(v305 + 34);
  v301 = (v387 & 0xC0) >> 6;
  v302 = v387 & 0xF;
  v15 = spinel_command_to_cstr(*(v305 + 75));
  *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], __str, __size[0], "%s, flg:0x%x, tid:%u, cmd:%s", *&v300[1], v301, v302, v15);
  if (*(v305 + 75) == 1)
  {
    goto LABEL_209;
  }

  v299 = *(*&__size[1] + 8);
  v300[0] = *(*&__size[1] + 16) - *(*&__size[1] + 8);
  v16 = spinel_prop_key_to_cstr(*(v305 + 74));
  *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], v299, v300[0], ", key:%s", v16);
  if (*(v305 + 75) == 2)
  {
    goto LABEL_209;
  }

  v298 = *(v305 + 74);
  switch(v298)
  {
    case 0:
      v17 = v305;
      *(v305 + 67) = 0;
      *(v305 + 77) = spinel_datatype_unpack(*(v17 + 36), *(v17 + 71), "i", v7, v8, v9, v10, v11, v381);
      if (*(v305 + 77) > 0)
      {
        v296 = *(*&__size[1] + 8);
        v297 = *(*&__size[1] + 16) - *(*&__size[1] + 8);
        v18 = spinel_status_to_cstr(*(v305 + 67));
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], v296, v297, ", status:%s", v18);
      }

      else
      {
        *(v305 + 78) = 6;
      }

      goto LABEL_209;
    case 1:
      v41 = v305;
      *(v305 + 41) = 0;
      *(v41 + 40) = 0;
      v42 = *(v41 + 36);
      v43 = *(v41 + 71);
      v263 = &v369;
      *(v305 + 77) = spinel_datatype_unpack(v42, v43, "ii", v7, v8, v9, v10, v11, v370);
      if (*(v305 + 77) > 0)
      {
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", major:%u, minor:%u", *(v305 + 41), *(v305 + 40));
      }

      else
      {
        *(v305 + 78) = 6;
      }

      goto LABEL_209;
    case 2:
      v48 = v305;
      *(v305 + 16) = 0;
      *(v305 + 77) = spinel_datatype_unpack(*(v48 + 36), *(v48 + 71), "U", v7, v8, v9, v10, v11, v366);
      if ((*(v305 + 77) & 0x80000000) != 0)
      {
        *(v305 + 78) = 6;
      }

      else
      {
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", version:%s", *(v305 + 16));
      }

      goto LABEL_209;
    case 5:
      v37 = *&__size[1];
      *(v305 + 42) = 0;
      *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(v37, *(v37 + 8), *(v37 + 16) - *(v37 + 8), ", caps:");
      while (*(v305 + 71))
      {
        *(v305 + 77) = spinel_datatype_unpack(*(v305 + 36), *(v305 + 71), "i", v7, v8, v9, v10, v11, v371);
        if (*(v305 + 77) <= 0)
        {
          *(v305 + 78) = 6;
          goto LABEL_209;
        }

        v38 = *&__size[1];
        v39 = v305;
        *(v305 + 36) += *(v305 + 77);
        v39[71] -= v39[77];
        v290 = *(v38 + 8);
        v291 = *(v38 + 16) - *(v38 + 8);
        v40 = spinel_capability_to_cstr(v39[42]);
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], v290, v291, "%s ", v40);
      }

      goto LABEL_209;
    case 8:
      goto LABEL_176;
    case 32:
      goto LABEL_54;
    case 33:
      goto LABEL_71;
    case 34:
      goto LABEL_134;
  }

  if ((v298 - 36) <= 3)
  {
    goto LABEL_57;
  }

  switch(v298)
  {
    case 41:
LABEL_134:
      v44 = v305;
      *(v305 + 39) = 0;
      *(v44 + 18) = v403;
      *(v44 + 35) = 32;
      v45 = *(v44 + 36);
      v46 = *(v44 + 71);
      v263 = &v368;
      *(v305 + 77) = spinel_datatype_unpack_in_place(v45, v46, "D", v7, v8, v9, v10, v11, v403);
      if (*(v305 + 77) > 0)
      {
        while (*(v305 + 35))
        {
          v367 = 0;
          *(v305 + 77) = spinel_datatype_unpack(*(v305 + 18), *(v305 + 35), "C", v7, v8, v9, v10, v11, &v367);
          if (*(v305 + 77) <= 0)
          {
            *(v305 + 78) = 6;
            goto LABEL_209;
          }

          if (v367 >= 0x20u)
          {
            *(v305 + 78) = 6;
            goto LABEL_209;
          }

          v47 = v305;
          *(v305 + 39) |= 1 << v367;
          *(v47 + 18) += *(v47 + 77);
          *(v47 + 35) -= *(v47 + 77);
        }

        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", channelMask:0x%08x", *(v305 + 39));
      }

      else
      {
        *(v305 + 78) = 6;
      }

      goto LABEL_209;
    case 42:
LABEL_57:
      v19 = v305;
      *(v305 + 32) = 0;
      v379[0] = 0;
      *(v305 + 77) = spinel_datatype_unpack(*(v19 + 36), *(v19 + 71), "c", v7, v8, v9, v10, v11, v379);
      if (*(v305 + 77) > 0)
      {
        v295 = *(v305 + 74);
        switch(v295)
        {
          case '$':
            *(v305 + 32) = "threshold";
            break;
          case '%':
            *(v305 + 32) = "power";
            break;
          case '&':
            *(v305 + 32) = "rssi";
            break;
          case '\'':
            *(v305 + 32) = "sensitivity";
            break;
          case '*':
            *(v305 + 32) = "gain";
            break;
        }

        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", %s:%d", *(v305 + 32), v379[0]);
      }

      else
      {
        *(v305 + 78) = 6;
      }

      goto LABEL_209;
    case 43:
      goto LABEL_120;
    case 44:
      goto LABEL_85;
    case 45:
      if (*(v305 + 75) == 4)
      {
        v312 = 0;
        v311 = 0;
        v310 = 0;
        v309 = 0;
        v257 = *(v305 + 36);
        v258 = *(v305 + 71);
        v263 = &v311;
        v264 = &v310;
        v265 = &v309;
        *(v305 + 77) = spinel_datatype_unpack(v257, v258, "Csd", v7, v8, v9, v10, v11, &v312);
        if (*(v305 + 77) > 0)
        {
          *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", ch:%u, actualPower:%d, rawPowerSetting:", v312, v311);
          for (i = 0; i < v309; ++i)
          {
            *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), "%02x", *(v310 + i));
          }
        }

        else
        {
          *(v305 + 78) = 6;
        }
      }

      goto LABEL_209;
    case 46:
      v307 = 0;
      v306 = 0;
      v259 = *(v305 + 36);
      v260 = *(v305 + 71);
      v263 = &v306;
      *(v305 + 77) = spinel_datatype_unpack(v259, v260, "Cs", v7, v8, v9, v10, v11, &v307);
      if (*(v305 + 77) > 0)
      {
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", ch:%u, targetPower:%d", v307, v306);
      }

      else
      {
        *(v305 + 78) = 6;
      }

      goto LABEL_209;
    case 48:
LABEL_71:
      v20 = v305;
      *(v305 + 30) = 0;
      v378[0] = 0;
      *(v305 + 77) = spinel_datatype_unpack(*(v20 + 36), *(v20 + 71), "C", v7, v8, v9, v10, v11, v378);
      if (*(v305 + 77) > 0)
      {
        v294 = *(v305 + 74);
        switch(v294)
        {
          case 33:
            *(v305 + 30) = "channel";
            break;
          case 48:
            *(v305 + 30) = "state";
            break;
          case 56:
            *(v305 + 30) = "mode";
            break;
          case 2052:
            *(v305 + 30) = "accuracy";
            break;
          case 2053:
            *(v305 + 30) = "uncertainty";
            break;
        }

        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", %s:%u", *(v305 + 30), v378[0]);
      }

      else
      {
        *(v305 + 78) = 6;
      }

      goto LABEL_209;
    case 49:
      v317 = 16;
      v316 = 0;
      v250 = *(v305 + 36);
      v251 = *(v305 + 71);
      v263 = &v316;
      *(v305 + 77) = spinel_datatype_unpack(v250, v251, "D", v7, v8, v9, v10, v11, v395);
      if (*(v305 + 77) > 0)
      {
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", channels:");
        for (j = 0; j < v316; ++j)
        {
          *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), "%u ", v395[j]);
        }
      }

      else
      {
        *(v305 + 78) = 6;
      }

      goto LABEL_209;
    case 50:
      goto LABEL_85;
    case 52:
LABEL_176:
      v91 = v305;
      v337 = 0;
      *(v305 + 46) = 0;
      *(v305 + 77) = spinel_datatype_unpack_in_place(*(v91 + 36), *(v91 + 71), "E", v7, v8, v9, v10, v11, v397);
      if (*(v305 + 77) > 0)
      {
        if (*(v305 + 74) == 8)
        {
          v286 = "eui64";
        }

        else
        {
          v286 = "laddr";
        }

        v337 = v286;
        v92 = *(*&__size[1] + 8);
        v93 = *(*&__size[1] + 16) - v92;
        v285 = &v262;
        v94 = ot::Spinel::Logger::Snprintf(*&__size[1], v92, v93, ", %s:%02x%02x%02x%02x%02x%02x%02x%02x", v286, v397[0], v397[1], v397[2], v397[3], v397[4], v397[5], v397[6], v397[7]);
        *(*&__size[1] + 8) += v94;
      }

      else
      {
        *(v305 + 78) = 6;
      }

      goto LABEL_209;
    case 54:
    case 53:
LABEL_85:
      v21 = v305;
      *(v305 + 28) = 0;
      v377[0] = 0;
      *(v305 + 77) = spinel_datatype_unpack(*(v21 + 36), *(v21 + 71), "S", v7, v8, v9, v10, v11, v377);
      if (*(v305 + 77) > 0)
      {
        v293 = *(v305 + 74);
        switch(v293)
        {
          case 44:
            *(v305 + 28) = "region";
            break;
          case 50:
            *(v305 + 28) = "period";
            break;
          case 53:
            *(v305 + 28) = "saddr";
            break;
          case 54:
            *(v305 + 28) = "panid";
            break;
          case 4868:
            *(v305 + 28) = "saddr";
            break;
        }

        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", %s:0x%04x", *(v305 + 28), v377[0]);
      }

      else
      {
        *(v305 + 78) = 6;
      }

      goto LABEL_209;
    case 55:
      goto LABEL_54;
    case 56:
      goto LABEL_71;
    case 57:
LABEL_120:
      v31 = v305;
      *(v305 + 22) = 0;
      v373[0] = 0;
      v372 = 0;
      v32 = *(v31 + 36);
      v33 = *(v31 + 71);
      v263 = &v372;
      *(v305 + 77) = spinel_datatype_unpack(v32, v33, "Cc", v7, v8, v9, v10, v11, v373);
      if (*(v305 + 77) > 0)
      {
        v34 = *&__size[1];
        v35 = v305;
        v36 = "rssi";
        if (*(v305 + 74) != 57)
        {
          v36 = "power";
        }

        *(v305 + 22) = v36;
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(v34, *(v34 + 8), *(v34 + 16) - *(v34 + 8), ", channel:%u, %s:%d", v373[0], v35[22], v372);
      }

      else
      {
        *(v305 + 78) = 6;
      }

      goto LABEL_209;
    case 112:
      v75 = v305;
      *(v305 + 11) = 151;
      v76 = *(v75 + 36);
      v77 = *(v75 + 71);
      v263 = &v347;
      v78 = spinel_datatype_unpack_in_place(v76, v77, "D", v7, v8, v9, v10, v11, v401);
      v79 = v305;
      *(v305 + 77) = v78;
      if (*(v79 + 11) >= 0x97uLL)
      {
        __assert_rtn("SpinelLogSpinelFrame", "spinel_parser_impl.hpp", 1160, "stringLength < sizeof(debugString)");
      }

      if (*(v305 + 77) > 0)
      {
        v80 = *&__size[1];
        v401[*(v305 + 11)] = 0;
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(v80, *(v80 + 8), *(v80 + 16) - *(v80 + 8), ", debug:%s", v401);
      }

      else
      {
        *(v305 + 78) = 6;
      }

      goto LABEL_209;
    case 113:
      if (*(v305 + 75) == 6)
      {
        v49 = v305;
        v355 = 0;
        v354 = 0;
        *(v305 + 14) = 0;
        v50 = *(v49 + 36);
        v51 = *(v49 + 71);
        v289 = &v262;
        v263 = &v357;
        v264 = &v360;
        v265 = &v354;
        v266 = &v355;
        v267 = v358;
        v268 = &v361;
        v269 = &v359;
        v270 = &v353;
        v52 = spinel_datatype_unpack(v50, v51, "dccSt(CCX)t(i)", v7, v8, v9, v10, v11, v356);
        *(v305 + 77) = v52;
        if (*(v305 + 77) > 0)
        {
          v53 = ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", len:%u, rssi:%d, ", v357, v360);
          v54 = v305;
          v55 = v53;
          v56 = *&__size[1];
          *(*&__size[1] + 8) += v55;
          v57 = ot::Spinel::Logger::Snprintf(v56, *(v56 + 8), *(v56 + 16) - *(v56 + 8), "noise:%d, flags:0x%04x, channel:%u, lqi:%u, timestamp:%lu, rxerr:%u", v354, v355, v358[0], v361, *(v54 + 10), *(v54 + 14));
          v58 = v305;
          *(*&__size[1] + 8) += v57;
          v288 = v402;
          v402[0] = 0;
          ot::Spinel::encode_data_into_string(v58[8], v357, v402, 0x401, 0);
          v59 = ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), "\n");
          v60 = v288;
          v61 = v59;
          v62 = *&__size[1];
          *(*&__size[1] + 8) += v61;
          v63 = ot::Spinel::Logger::Snprintf(v62, *(v62 + 8), *(v62 + 16) - *(v62 + 8), "Data: %s", v60);
          *(*&__size[1] + 8) += v63;
        }

        else
        {
          *(v305 + 78) = 6;
        }
      }

      else if (*(v305 + 75) == 3)
      {
        v352 = 0;
        v351 = 0;
        v350 = 0;
        v349 = 0;
        v348 = 0;
        v64 = *(v305 + 36);
        v65 = *(v305 + 71);
        v263 = &v352;
        *(v305 + 77) = spinel_datatype_unpack(v64, v65, "CC", v7, v8, v9, v10, v11, v358);
        if (*(v305 + 77) == 2)
        {
          v66 = v305;
          *(v305 + 36) += *(v305 + 77);
          *(v66 + 71) -= *(v66 + 77);
          v67 = *(v305 + 36);
          v68 = *(v305 + 71);
          v263 = &v364;
          if ((v352 & 0x40) != 0)
          {
            v264 = &v362 + 4;
            v265 = &v362;
            v266 = &v365;
            v267 = v356;
            v268 = &v357;
            *(v305 + 77) = spinel_datatype_unpack(v67, v68, "CCLLCd", v7, v8, v9, v10, v11, &v363);
          }

          else
          {
            v264 = v356;
            v265 = &v357;
            v69 = spinel_datatype_unpack(v67, v68, "CCd", v7, v8, v9, v10, v11, &v363);
            v70 = v305;
            *(v305 + 77) = v69;
            *(v70 + 25) = 0;
            *(v70 + 24) = 0;
            v365 = 0;
          }

          if (*(v305 + 77) == *(v305 + 71))
          {
            v351 = (v352 & 4) == 0;
            v350 = (v352 & 8) != 0;
            v349 = (v352 & 0x10) != 0;
            v348 = (v352 & 0x20) != 0;
            v71 = ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", len:%u, channel:%u, maxbackoffs:%u, maxretries:%u, ", v357, v358[0], v363, v364);
            v72 = v305;
            v73 = v71;
            v74 = *&__size[1];
            *(*&__size[1] + 8) += v73;
            *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(v74, *(v74 + 8), *(v74 + 16) - *(v74 + 8), "csmaCaEnabled:%u, isHeaderUpdated:%u, isARetx:%u, skipAes:%u, txDelay:%u, txDelayBase:%u, rxChannelAfterTxDone:%u", v351, v350, v349, v348, *(v72 + 25), *(v72 + 24), v365);
          }

          else
          {
            *(v305 + 78) = 6;
          }
        }

        else
        {
          *(v305 + 78) = 6;
        }
      }

      goto LABEL_209;
    case 116:
      v81 = v305;
      *(v305 + 4) = 0;
      v345 = 0;
      *(v305 + 77) = spinel_datatype_unpack(*(v81 + 36), *(v81 + 71), "U", v7, v8, v9, v10, v11, v346);
      if ((*(v305 + 77) & 0x80000000) != 0)
      {
        *(v305 + 78) = 6;
      }

      else
      {
        v82 = v305;
        *(v305 + 36) += *(v305 + 77);
        *(v82 + 71) -= *(v82 + 77);
        *(v305 + 77) = spinel_datatype_unpack(*(v82 + 36), *(v82 + 71), "C", v7, v8, v9, v10, v11, &v345);
        if (*(v305 + 77) > 0)
        {
          *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", level:%u, log:%s", v345, *(v305 + 4));
        }

        else
        {
          *(v305 + 78) = 6;
        }
      }

      goto LABEL_209;
    case 177:
    case 176:
LABEL_110:
      v30 = v305;
      *(v305 + 24) = 0;
      *(v30 + 47) = 0;
      *(v305 + 77) = spinel_datatype_unpack(*(v30 + 36), *(v30 + 71), "i", v7, v8, v9, v10, v11, v374);
      if (*(v305 + 77) > 0)
      {
        v292 = *(v305 + 74);
        switch(v292)
        {
          case 176:
            *(v305 + 24) = "version";
            break;
          case 177:
            *(v305 + 24) = "min-host-version";
            break;
          case 4619:
            *(v305 + 24) = "caps";
            break;
          default:
            *(v305 + 24) = "";
            break;
        }

        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", %s:%u", *(v305 + 24), *(v305 + 47));
      }

      else
      {
        *(v305 + 78) = 6;
      }

      goto LABEL_209;
    case 2048:
      v86 = v305;
      v342 = 0;
      v341 = 0;
      *v305 = 16;
      v339 = 16;
      v338 = 16;
      v87 = *(v86 + 36);
      v88 = *(v86 + 71);
      v287 = &v262;
      v263 = &v341;
      v264 = &v400;
      v265 = v340;
      v266 = &v399;
      v267 = &v339;
      v268 = &v398;
      v269 = &v338;
      v89 = spinel_datatype_unpack(v87, v88, "CCddd", v7, v8, v9, v10, v11, &v342);
      *(v305 + 77) = v89;
      if (*(v305 + 77) > 0)
      {
        v90 = ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", keyIdMode:%u, keyId:%u, prevKey:***, currKey:***, nextKey:***", v342, v341);
        *(*&__size[1] + 8) += v90;
      }

      else
      {
        *(v305 + 78) = 6;
      }

      goto LABEL_209;
    case 2050:
    case 2049:
      v26 = v305;
      *(v305 + 26) = 0;
      *(v26 + 51) = 0;
      *(v305 + 77) = spinel_datatype_unpack(*(v26 + 36), *(v26 + 71), "L", v7, v8, v9, v10, v11, v375);
      if (*(v305 + 77) > 0)
      {
        v27 = *&__size[1];
        v28 = v305;
        v29 = "timestamp";
        if (*(v305 + 74) != 2050)
        {
          v29 = "counter";
        }

        *(v305 + 26) = v29;
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(v27, *(v27 + 8), *(v27 + 16) - *(v27 + 8), ", %s:%u", v28[26], *(v28 + 51));
      }

      else
      {
        *(v305 + 78) = 6;
      }

      goto LABEL_209;
    case 2051:
      v314 = 0;
      v313 = 0;
      v252 = *(v305 + 36);
      v253 = *(v305 + 71);
      v263 = v394;
      v264 = &v313;
      *(v305 + 77) = spinel_datatype_unpack(v252, v253, "SEC", v7, v8, v9, v10, v11, &v314);
      if (*(v305 + 77) > 0)
      {
        v254 = *(*&__size[1] + 8);
        v255 = *(*&__size[1] + 16) - v254;
        v281 = &v262;
        v256 = ot::Spinel::Logger::Snprintf(*&__size[1], v254, v255, ", saddr:%04x, extaddr:%02x%02x%02x%02x%02x%02x%02x%02x, flags:0x%02x", v314, v394[0], v394[1], v394[2], v394[3], v394[4], v394[5], v394[6], v394[7], v313);
        *(*&__size[1] + 8) += v256;
      }

      else
      {
        *(v305 + 78) = 6;
      }

      goto LABEL_209;
    case 2053:
    case 2052:
      goto LABEL_71;
    case 4619:
      goto LABEL_110;
    case 4620:
      v103 = *(v305 + 36);
      v104 = *(v305 + 71);
      v282 = &v318;
      v283 = &v262;
      v263 = &v320;
      v264 = &v321;
      v265 = &v322;
      v266 = &v323;
      v267 = &v324;
      v268 = &v325;
      v269 = &v326;
      v270 = &v327;
      v271 = &v328;
      v272 = &v329;
      v273 = &v330;
      v274 = &v331;
      v275 = &v332;
      v276 = &v333;
      v277 = &v334;
      v278 = &v335;
      v279 = &v336;
      v280 = &v318;
      v105 = spinel_datatype_unpack(v103, v104, "t(LLLLLLLL)t(LLLLLLLLL)bL", &v327, &v326, &v325, &v324, &v323, &v319);
      *(v305 + 77) = v105;
      if (*(v305 + 77) > 0)
      {
        v106 = ot::ToUlong(v319);
        otLogDebgPlat(" txRequest:%lu", v107, v108, v109, v110, v111, v112, v113, v106);
        v114 = ot::ToUlong(v320);
        otLogDebgPlat(" txGrantImmediate:%lu", v115, v116, v117, v118, v119, v120, v121, v114);
        v122 = ot::ToUlong(v321);
        otLogDebgPlat(" txGrantWait:%lu", v123, v124, v125, v126, v127, v128, v129, v122);
        v130 = ot::ToUlong(v322);
        otLogDebgPlat(" txGrantWaitActivated:%lu", v131, v132, v133, v134, v135, v136, v137, v130);
        v138 = ot::ToUlong(v323);
        otLogDebgPlat(" txGrantWaitTimeout:%lu", v139, v140, v141, v142, v143, v144, v145, v138);
        v146 = ot::ToUlong(v324);
        otLogDebgPlat(" txGrantDeactivatedDuringRequest:%lu", v147, v148, v149, v150, v151, v152, v153, v146);
        v154 = ot::ToUlong(v325);
        otLogDebgPlat(" txDelayedGrant:%lu", v155, v156, v157, v158, v159, v160, v161, v154);
        v162 = ot::ToUlong(v326);
        otLogDebgPlat(" avgTxRequestToGrantTime:%lu", v163, v164, v165, v166, v167, v168, v169, v162);
        v170 = ot::ToUlong(v327);
        otLogDebgPlat(" rxRequest:%lu", v171, v172, v173, v174, v175, v176, v177, v170);
        v178 = ot::ToUlong(v328);
        otLogDebgPlat(" rxGrantImmediate:%lu", v179, v180, v181, v182, v183, v184, v185, v178);
        v186 = ot::ToUlong(v329);
        otLogDebgPlat(" rxGrantWait:%lu", v187, v188, v189, v190, v191, v192, v193, v186);
        v194 = ot::ToUlong(v330);
        otLogDebgPlat(" rxGrantWaitActivated:%lu", v195, v196, v197, v198, v199, v200, v201, v194);
        v202 = ot::ToUlong(v331);
        otLogDebgPlat(" rxGrantWaitTimeout:%lu", v203, v204, v205, v206, v207, v208, v209, v202);
        v210 = ot::ToUlong(v332);
        otLogDebgPlat(" rxGrantDeactivatedDuringRequest:%lu", v211, v212, v213, v214, v215, v216, v217, v210);
        v218 = ot::ToUlong(v333);
        otLogDebgPlat(" rxDelayedGrant:%lu", v219, v220, v221, v222, v223, v224, v225, v218);
        v226 = ot::ToUlong(v334);
        otLogDebgPlat(" avgRxRequestToGrantTime:%lu", v227, v228, v229, v230, v231, v232, v233, v226);
        v234 = ot::ToUlong(v335);
        otLogDebgPlat(" rxGrantNone:%lu", v235, v236, v237, v238, v239, v240, v241, v234);
        otLogDebgPlat(" stopped:%u", v242, v243, v244, v245, v246, v247, v248, v336 & 1);
        v249 = ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), " grantGlitch:%u", v318);
        *(*&__size[1] + 8) += v249;
      }

      else
      {
        *(v305 + 78) = 6;
      }

      goto LABEL_209;
    case 4621:
    case 4867:
LABEL_54:
      v380 = 0;
      *(v305 + 77) = spinel_datatype_unpack(*(v305 + 36), *(v305 + 71), "b", v7, v8, v9, v10, v11, &v380);
      if (*(v305 + 77) > 0)
      {
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", enabled:%u", v380 & 1);
      }

      else
      {
        *(v305 + 78) = 6;
      }

      goto LABEL_209;
  }

  if (v298 != 4868)
  {
    if (v298 != 4869)
    {
      if (v298 == 15296)
      {
        v83 = v305;
        *(v305 + 2) = 0;
        *(v83 + 1) = 0;
        v84 = *(v83 + 36);
        v85 = *(v83 + 71);
        v263 = &v343;
        *(v305 + 77) = spinel_datatype_unpack(v84, v85, "U", v7, v8, v9, v10, v11, v344);
        if (*(v305 + 77) > 0)
        {
          *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", diag:%s", *(v305 + 2));
        }

        else
        {
          *(v305 + 78) = 6;
        }
      }

      goto LABEL_209;
    }

    v95 = ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", extaddr:");
    v96 = v305;
    *(*&__size[1] + 8) += v95;
    if (*(v96 + 71) >= 8uLL)
    {
      while (*(v305 + 71) >= 8uLL)
      {
        v97 = spinel_datatype_unpack_in_place(*(v305 + 36), *(v305 + 71), "E", v7, v8, v9, v10, v11, v396);
        *(v305 + 77) = v97;
        if (*(v305 + 77) <= 0)
        {
          *(v305 + 78) = 6;
          goto LABEL_209;
        }

        v98 = *&__size[1];
        v99 = v305;
        *(v305 + 36) += *(v305 + 77);
        *(v99 + 71) -= *(v99 + 77);
        v100 = *(v98 + 1);
        v101 = *(v98 + 2) - v100;
        v284 = &v262;
        v102 = ot::Spinel::Logger::Snprintf(v98, v100, v101, "%02x%02x%02x%02x%02x%02x%02x%02x ", v396[0], v396[1], v396[2], v396[3], v396[4], v396[5], v396[6], v396[7]);
        *(*&__size[1] + 8) += v102;
      }

      goto LABEL_209;
    }

LABEL_100:
    *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), "none");
    goto LABEL_209;
  }

  v376 = 0;
  v22 = ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", saddr:");
  v23 = v305;
  *(*&__size[1] + 8) += v22;
  if (*(v23 + 71) < 2uLL)
  {
    goto LABEL_100;
  }

  while (*(v305 + 71) >= 2uLL)
  {
    *(v305 + 77) = spinel_datatype_unpack(*(v305 + 36), *(v305 + 71), "S", v7, v8, v9, v10, v11, &v376);
    if (*(v305 + 77) <= 0)
    {
      *(v305 + 78) = 6;
      break;
    }

    v24 = *&__size[1];
    v25 = v305;
    *(v305 + 36) += *(v305 + 77);
    *(v25 + 71) -= *(v25 + 77);
    *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(v24, *(v24 + 8), *(v24 + 16) - *(v24 + 8), "0x%04x ", v376);
  }

LABEL_209:
  if (*(v305 + 78))
  {
    otLogDebgPlat("%s, failed to parse spinel frame !", v5, v6, v7, v8, v9, v10, v11, *(v305 + 34));
  }

  return *(v305 + 78);
}