void otSysMainloopProcess(ot::Posix::Mainloop::Manager *a1, const void *a2)
{
  v2 = ot::Posix::Mainloop::Manager::Get(a1);
  ot::Posix::Mainloop::Manager::Process(v2, a2);
  platformSpinelManagerProcess(a1, a2);
  platformRadioProcess(a1, a2);
  platformAlarmProcess(a1);
  platformNetifProcess(a2);
}

void __main_block_invoke(uint64_t a1)
{
  do
  {
    while (1)
    {
      otTaskletsProcess(*(a1 + 32));
      memset(v9, 0, sizeof(v9));
      v10 = -1;
      v11 = 10;
      v12 = 0;
      otSysMainloopUpdate(*(a1 + 32), v9);
      v2 = gPfdX;
      if (__darwin_check_fd_set_overflow(gPfdX, v9, 0))
      {
        *(v9 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v2;
      }

      if (v10 <= gPfdX + 1)
      {
        v3 = gPfdX + 1;
      }

      else
      {
        v3 = v10;
      }

      v10 = v3;
      if (hostCmdPending())
      {
        v11 = 0;
        v12 = 0;
      }

      if ((otSysMainloopPoll(v9) & 0x80000000) != 0)
      {
        break;
      }

      if (gSystemDieNow == 1)
      {
        busy_wait_for_shutdown();
      }

      otSysMainloopProcess(*(a1 + 32), v9);
      processHostCmd();
    }
  }

  while (*__error() == 4);
  perror("select");
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v5 = logging_obg;
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __main_block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  Main = CFRunLoopGetMain();
  v7 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v7)
  {
    v8 = v7;
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __main_block_invoke_cold_3();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  CFRunLoopStop(Main);
}

uint64_t otUdpGetSockets(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Ip6::Udp>(v1);
  return ot::Ip6::Udp::GetUdpSockets(v2);
}

void ot::Posix::Udp::Process(uint64_t a1, _DWORD *a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 256;
  for (i = otUdpGetSockets(gInstance); i; i = *(i + 64))
  {
    v7 = v3;
    if (v3 > 0)
    {
      v13 = v7;
      v12 = v10;
      v16 = v7;
      v15 = v10;
      v17 = __darwin_check_fd_set_overflow(v7, v10, 0);
      if (v17 ? v12[v13 / 0x20uLL] & (1 << (v13 % 0x20uLL)) : 0)
      {
        v5 = 0;
        v4 = 1280;
        memset(__b, 0, sizeof(__b));
        *&__b[32] = *(i + 16);
        {
          v5 = otUdpNewMessage(gInstance, &v9);
          if (v5)
          {
            if (!otMessageAppend(v5, v18, v4))
            {
              (*(i + 40))(*(i + 48), v5, __b);
              otMessageFree(v5);
              return;
            }

            otMessageFree(v5);
          }
        }
      }
    }
  }
}

void **ot::Posix::Mainloop::Manager::Process(void **result, uint64_t a2)
{
  for (i = *result; i; i = i[1])
  {
    result = (*(*i + 8))(i, a2);
  }

  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otInstance>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t ot::Instance::Get<ot::Ip6::Udp>(uint64_t a1)
{
  return a1 + 85328;
}

{
  return ot::Instance::Get<ot::Ip6::Udp>(a1);
}

uint64_t ot::Ip6::Udp::GetUdpSockets(ot::Ip6::Udp *this)
{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::GetHead(this + 16);
}

{
  return ot::Ip6::Udp::GetUdpSockets(this);
}

uint64_t ot::LinkedList<ot::Ip6::Udp::SocketHandle>::GetHead(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::GetHead(a1);
}

{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::GetHead(a1);
}

void ot::Posix::MulticastRoutingManager::Process(uint64_t a1, _DWORD *a2)
{
  v12 = a1;
  v11 = a2;
  if ((ot::Posix::MulticastRoutingManager::IsEnabled(a1) & 1) != 0 && (ot::Posix::BackboneIPv6Interface::IsActive((a1 + 42032)) & 1) != 0 && ot::Posix::BackboneIPv6Interface::GetBackboneBPFFd((a1 + 42032)) != -1 && ot::Posix::MulticastRoutingManager::GetMulticastListenerCount(a1))
  {
    BackboneBPFFd = ot::Posix::BackboneIPv6Interface::GetBackboneBPFFd((a1 + 42032));
    v13 = v11;
    v17 = BackboneBPFFd;
    v16 = v11;
    if (__darwin_check_fd_set_overflow(BackboneBPFFd, v11, 0))
    {
      v15 = v13[BackboneBPFFd / 0x20uLL] & (1 << (BackboneBPFFd % 0x20uLL));
    }

    else
    {
      v15 = 0;
    }

    if (v15 && ot::Posix::MulticastRoutingManager::can_read(a1) == 1)
    {
      v10 = ot::Posix::BackboneIPv6Interface::get_read((a1 + 42032), v19, 1280);
      ot::Posix::MulticastRoutingManager::GetMulticastListenerCount(a1);
      otThreadErrorToString(0);
      ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager::Process call processLargeScopeMulticastTransmit packetLen=%d multicastListenerCount=%d: %s", v2, v3, v4, v5, v6, v7, v8, v10);
      if (v10 > 0)
      {
        ot::Posix::MulticastRoutingManager::processLargeScopeMulticastTransmit(a1, v19, &v10);
      }
    }

    ot::Posix::MulticastRoutingManager::ExpireMulticastForwardingCache(a1);
  }
}

uint64_t ot::Posix::MulticastRoutingManager::IsEnabled(ot::Posix::MulticastRoutingManager *this)
{
  return *(this + 42028) & 1;
}

{
  return ot::Posix::MulticastRoutingManager::IsEnabled(this);
}

ssize_t ot::Posix::HdlcInterface::Process(ot::Posix::HdlcInterface *this, const void *a2)
{
  v5 = this;
  v4 = a2;
  v3 = 0;
  return read(gPfdX, &v3, 1uLL);
}

void ot::Spinel::SpinelDriver::Process(ot::Spinel::SpinelDriver *this, const void *a2)
{
  v3 = this + 18;
  if (*(this + 1027) != (this + 18))
  {
    v4 = a2;
    ot::Spinel::SpinelDriver::ProcessFrameQueue(this);
    a2 = v4;
  }

  (*(**(this + 1029) + 48))(*(this + 1029), a2);
  if (*(this + 1027) != v3)
  {

    ot::Spinel::SpinelDriver::ProcessFrameQueue(this);
  }
}

uint64_t ot::Posix::Radio::GetRadioSpinel(ot::Posix::Radio *this)
{
  return this + 544;
}

{
  return ot::Posix::Radio::GetRadioSpinel(this);
}

void ot::Spinel::RadioSpinel::Process(ot::Spinel::RadioSpinel *this, const void *a2)
{
  ot::Spinel::RadioSpinel::ProcessSkywalkState(this);
  ot::Spinel::RadioSpinel::ProcessRadioStateMachine(this);
  ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
  if (*(this + 1760))
  {
    ot::Spinel::RadioSpinel::CalcRcpTimeOffset(this);
  }
}

void ot::Spinel::RadioSpinel::ProcessSkywalkState(ot::Spinel::RadioSpinel *this)
{
  if (!gPciStatus || (ot::Spinel::RadioSpinel::ProcessSkywalkState(void)::spinelOnHold & 1) != 0)
  {
    if (gPciStatus || (ot::Spinel::RadioSpinel::ProcessSkywalkState(void)::spinelOnHold & 1) != 1)
    {
      if (gPciStatus)
      {
        ot::Spinel::Logger::LogWarn1(this, "exit Spinel.Process due to PCI failure gPciStatus =%d \n", gPciStatus);
        SpinelDriver = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
        ot::Spinel::SpinelDriver::ClearRxFrameBufferSavedFrames(SpinelDriver);
      }
    }

    else
    {
      if (!*(this + 28))
      {
        ot::Spinel::Logger::LogNote1(this, "[HandleTransportError Instance is null\n");
        strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
        otExitCodeToString(4);
        otLogCritPlat("%s() at %s:%d: %s", v1, v2, v3, v4, v5, v6, v7, "ProcessSkywalkState");
        handle_daemon_exit();
        exit(4);
      }

      ot::Spinel::Logger::LogNote1(this, "[HandleTransportError OT UP\n");
      ot::Spinel::RadioSpinel::ProcessSkywalkState(void)::spinelOnHold = 0;
    }
  }

  else
  {
    *(this + 148) = 0;
    *(this + 298) = 1;
    *(this + 299) = 0;
    *(this + 300) = 0;
    *(this + 76) = 0;
    *(this + 83) = 0;
    *(this + 948) &= ~4u;
    if (*(this + 28))
    {
      otThreadSetEnabled(*(this + 28), 0);
      ot::Spinel::Logger::LogNote1(this, "Thread stop, Done");
      otIp6SetEnabled(*(this + 28), 0);
      ot::Spinel::Logger::LogNote1(this, "Ifconfig down, Done");
      otLinkSetEnabled(*(this + 28), 0);
      ot::Spinel::Logger::LogNote1(this, "[HandleTransportError OT Down\n");
    }

    else
    {
      ot::Spinel::Logger::LogNote1(this, "[HandleTransportError OT Down Instance Null\n");
    }

    ot::Spinel::RadioSpinel::ProcessSkywalkState(void)::spinelOnHold = 1;
  }
}

unint64_t ot::Spinel::RadioSpinel::ProcessRadioStateMachine(unint64_t this)
{
  v2 = this;
  if (*(this + 944) == 4)
  {
    *(this + 944) = 2;
    *(this + 1680) = -1;
    if (*(this + 856))
    {
      v1 = this + 848;
    }

    else
    {
      v1 = 0;
    }

    return ot::Spinel::RadioSpinel::TransmitDone(this, *(this + 912), v1, *(this + 936));
  }

  else if (*(this + 944) == 3)
  {
    this = otPlatTimeGet();
    if (this >= *(v2 + 1680))
    {
      ot::Spinel::Logger::LogWarn1(v2, "radio tx timeout");
      update_radio_tx_timeout_metric();
    }
  }

  return this;
}

void ot::Spinel::RadioSpinel::CalcRcpTimeOffset(const char **this)
{
  v13 = this;
  if ((pciNotOpen() & 1) == 0)
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    if ((*(this + 948) & 4) == 0 || (v6 = otPlatTimeGet(), v6 >= ot::Spinel::RadioSpinel::GetNextRadioTimeRecalcStart(this)))
    {
      ot::Spinel::Logger::LogDebg1(this, "Trying to get RCP time offset");
      v8 = spinel_datatype_pack(v14, 8u, "X", v1, v2, v3, v4, v5, v9);
      if (v8 > 0 && v8 <= 8)
      {
        v11 = otPlatTimeGet();
        v12 = ot::Spinel::RadioSpinel::GetWithParam(this, 2050, v14, v8, "X", &v9);
        v10 = otPlatTimeGet();
        if (v12)
        {
          this[211] = v10;
        }

        else
        {
          this[212] = (v9 - (v10 / 2 + v11 / 2));
          *(this + 948) = *(this + 948) & 0xFB | 4;
          this[211] = (v10 + 60000000);
        }
      }

      else
      {
        v12 = 3;
      }
    }

    ot::Spinel::Logger::LogIfFail1(this, "Error calculating RCP time offset: %s", v12);
  }
}

void ot::Spinel::RadioSpinel::RecoverFromRcpFailure(ot::Spinel::RadioSpinel *this)
{
  v76 = *(this + 236);
  if ((*(this + 952) & 7) != 0)
  {
    SpinelDriver = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
    ot::Spinel::SpinelDriver::SetCoprocessorNotReady(SpinelDriver);
    ot::Spinel::Logger::LogWarn1(this, "mRcpFailure: %u", *(this + 952) & 7);
    *(this + 952) &= 0xF8u;
    ++*(this + 432);
    if (++*(this + 475) == 3)
    {
      ot::Spinel::Logger::LogCrit1(this, "Soft reset is not taking effect, try hard reset");
      *(this + 1657) = 0;
      rcp_hard_reset();
    }

    if (*(this + 475) > 3)
    {
      ot::Spinel::Logger::LogCrit1(this, "Too many rcp failures, exiting");
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      otExitCodeToString(1);
      otLogCritPlat("%s() at %s:%d: %s", v2, v3, v4, v5, v6, v7, v8, "RecoverFromRcpFailure");
      handle_daemon_exit();
      exit(1);
    }

    ot::Spinel::Logger::LogWarn1(this, "Trying to recover (%d/%d), mResetRadioOnStartup is %d", *(this + 475), 3, (*(this + 948) & 8) != 0);
    *(this + 236) = 0;
    v9 = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
    ot::Spinel::SpinelDriver::ClearRxBuffer(v9);
    v10 = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
    ot::Spinel::SpinelDriver::MarkRxBufferReset(v10, 1);
    v11 = ot::Spinel::RadioSpinel::GetSpinelDriver(this);
    ot::Spinel::SpinelDriver::ResetCoprocessor(v11, (*(this + 948) >> 3) & 1, v12, v13, v14, v15, v16, v17);
    *(this + 148) = 0;
    *(this + 298) = 1;
    *(this + 299) = 0;
    *(this + 300) = 0;
    *(this + 83) = 0;
    *(this + 948) &= ~4u;
    v75 = ot::Spinel::RadioSpinel::Set(this, 0x20u, "b");
    if (v75)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
      if (v75 == 7)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      otExitCodeToString(v25);
      otLogCritPlat("%s() at %s:%d: %s", v26, v27, v28, v29, v30, v31, v32, "RecoverFromRcpFailure");
      handle_daemon_exit();
      if (v75 == 7)
      {
        v33 = 2;
      }

      else
      {
        v33 = 1;
      }

      exit(v33);
    }

    *(this + 236) = 1;
    if (*(this + 28))
    {
      otLogInfoPlat("Removing WED after getting RCP Reset", v18, v19, v20, v21, v22, v23, v24, 1);
      otLinkForceWEDDetach(*(this + 28));
    }

    ot::Spinel::RadioSpinel::RestoreProperties(this);
    if (v76)
    {
      if (v76 != 1)
      {
        if (v76 == 2)
        {
          v74 = ot::Spinel::RadioSpinel::Set(this, 0x37u, "b", 1);
          if (v74)
          {
            strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
            if (v74 == 7)
            {
              v34 = 2;
            }

            else
            {
              v34 = 1;
            }

            otExitCodeToString(v34);
            otLogCritPlat("%s() at %s:%d: %s", v35, v36, v37, v38, v39, v40, v41, "RecoverFromRcpFailure");
            handle_daemon_exit();
            if (v74 == 7)
            {
              v42 = 2;
            }

            else
            {
              v42 = 1;
            }

            exit(v42);
          }

          *(this + 236) = 2;
        }

        else if (v76 == 4 || v76 == 3)
        {
          v73 = ot::Spinel::RadioSpinel::Set(this, 0x37u, "b", 1);
          if (v73)
          {
            strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
            if (v73 == 7)
            {
              v43 = 2;
            }

            else
            {
              v43 = 1;
            }

            otExitCodeToString(v43);
            otLogCritPlat("%s() at %s:%d: %s", v44, v45, v46, v47, v48, v49, v50, "RecoverFromRcpFailure");
            handle_daemon_exit();
            if (v73 == 7)
            {
              v51 = 2;
            }

            else
            {
              v51 = 1;
            }

            exit(v51);
          }

          *(this + 234) = 11;
          *(this + 236) = 4;
        }
      }
    }

    else
    {
      *(this + 236) = 0;
    }

    if ((*(this + 1655) & 0x80) != 0)
    {
      v72 = ot::Spinel::RadioSpinel::EnergyScan(this, *(this + 1648), *(this + 825));
      if (v72)
      {
        strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
        if (v72 == 7)
        {
          v52 = 2;
        }

        else
        {
          v52 = 1;
        }

        otExitCodeToString(v52);
        otLogCritPlat("%s() at %s:%d: %s", v53, v54, v55, v56, v57, v58, v59, "RecoverFromRcpFailure");
        handle_daemon_exit();
        if (v72 == 7)
        {
          v60 = 2;
        }

        else
        {
          v60 = 1;
        }

        exit(v60);
      }
    }

    --*(this + 475);
    if (ot::Spinel::RadioSpinel::sSupportsLogCrashDump)
    {
      ot::Spinel::Logger::LogDebg1(this, "RCP supports crash dump logging. Requesting crash dump.");
      v71 = ot::Spinel::RadioSpinel::Set(this, 0xB2u, 0);
      if (v71)
      {
        strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/lib/spinel/radio_spinel.cpp", 47);
        if (v71 == 7)
        {
          v61 = 2;
        }

        else
        {
          v61 = 1;
        }

        otExitCodeToString(v61);
        otLogCritPlat("%s() at %s:%d: %s", v62, v63, v64, v65, v66, v67, v68, "RecoverFromRcpFailure");
        handle_daemon_exit();
        if (v71 == 7)
        {
          v69 = 2;
        }

        else
        {
          v69 = 1;
        }

        exit(v69);
      }
    }

    ot::Spinel::Logger::LogNote1(this, "RCP recovery is done");
  }
}

unint64_t otPlatTimeGet()
{
  if (clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp))
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/alarm.cpp", 47);
    otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", v0, v1, v2, v3, v4, v5, v6, "otPlatTimeGet");
    handle_daemon_exit();
    exit(1);
  }

  return 1000000 * __tp.tv_sec + __tp.tv_nsec / 0x3E8uLL;
}

uint64_t pciNotOpen(void)
{
  if (gPciStatus)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(4) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_4_0(v4, gPciStatus);
        _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "exit Spinel.Process due to PCI failure gPciStatus =%d \n", v4, 8u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v3, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v3, 0x16u);
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

{
  return pciNotOpen();
}

uint64_t ot::Spinel::RadioSpinel::GetNextRadioTimeRecalcStart(ot::Spinel::RadioSpinel *this)
{
  return *(this + 211);
}

{
  return ot::Spinel::RadioSpinel::GetNextRadioTimeRecalcStart(this);
}

void ot::Spinel::Logger::LogIfFail1(const char **a1, const char *a2, int a3)
{
  if (a3)
  {
    if (a3 != 14)
    {
      v5 = otThreadErrorToString(a3);
      ot::Spinel::Logger::LogWarn1(a1, "%s: %s", a2, v5);
    }
  }
}

void platformAlarmProcess(uint64_t a1)
{
  if (sIsMsRunning)
  {
    v2 = sMsAlarm;
    if ((v2 - otPlatAlarmMilliGetNow()) <= 0)
    {
      sIsMsRunning = 0;
      if (otPlatDiagModeGet())
      {
        otPlatDiagAlarmFired(a1);
      }

      else
      {
        otPlatAlarmMilliFired(a1);
      }
    }
  }

  if (sIsUsRunning)
  {
    v1 = sUsAlarm;
    if ((v1 - otPlatAlarmMicroGetNow()) <= 0)
    {
      sIsUsRunning = 0;
      otPlatAlarmMicroFired(a1);
    }
  }
}

void platformNetifProcess(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("platformNetifProcess", "netif.cpp", 2716, "aContext != nullptr");
  }

  if (gNetifIndex)
  {
    v23 = sTunFd;
    v22 = a1 + 256;
    if (__darwin_check_fd_set_overflow(sTunFd, (a1 + 256), 0))
    {
      v24 = *(v22 + 4 * (v23 / 0x20uLL)) & (1 << (v23 % 0x20uLL));
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      ne_tunnel_close();
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/netif.cpp", 47);
      otExitCodeToString(1);
      otLogCritPlat("%s() at %s:%d: %s", v1, v2, v3, v4, v5, v6, v7, "platformNetifProcess");
      handle_daemon_exit();
      exit(1);
    }

    v20 = sNetlinkFd;
    if (__darwin_check_fd_set_overflow(sNetlinkFd, (a1 + 256), 0))
    {
      v21 = *(a1 + 256 + 4 * (v20 / 0x20uLL)) & (1 << (v20 % 0x20uLL));
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      close(sNetlinkFd);
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/netif.cpp", 47);
      otExitCodeToString(1);
      otLogCritPlat("%s() at %s:%d: %s", v8, v9, v10, v11, v12, v13, v14, "platformNetifProcess");
      handle_daemon_exit();
      exit(1);
    }

    if ((rcpBuffersAvailable & 1) == 1)
    {
      v18 = sTunFd;
      if (__darwin_check_fd_set_overflow(sTunFd, a1, 0) ? *(a1 + 4 * (v18 / 0x20uLL)) & (1 << (v18 % 0x20uLL)) : 0)
      {
        processTransmit(gInstance);
      }
    }

    v16 = sNetlinkFd;
    if (__darwin_check_fd_set_overflow(sNetlinkFd, a1, 0))
    {
      v17 = *(a1 + 4 * (v16 / 0x20uLL)) & (1 << (v16 % 0x20uLL));
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      processNetlinkEvent(gInstance);
    }
  }
}

BOOL hostCmdPending(void)
{
  if (!TaskQueueWrapper::empty(RcpHostContext::sRcpHostContext))
  {
    TaskQueueWrapper::front(RcpHostContext::sRcpHostContext, &v5);
    v0 = v6;
    v1 = *(v5 + 8);
    if (v6)
    {
      if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v0 + 16))(v0);
        if (atomic_fetch_add(v0 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v0 + 24))(v0);
        }
      }
    }

    if (v1 == 1)
    {
      return 1;
    }
  }

  if (TaskQueueWrapper::empty((RcpHostContext::sRcpHostContext + 88)))
  {
    return 0;
  }

  TaskQueueWrapper::front((RcpHostContext::sRcpHostContext + 88), &v5);
  v2 = v6;
  v3 = *(v5 + 8);
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
    if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 24))(v2);
    }
  }

  return v3 == 1;
}

uint64_t processHostCmd(void)
{
  result = hostCmdPending();
  if (result)
  {
    v19 = 0;
    if (TaskQueueWrapper::empty((RcpHostContext::sRcpHostContext + 88)))
    {
      goto LABEL_18;
    }

    TaskQueueWrapper::front((RcpHostContext::sRcpHostContext + 88), &v20);
    v1 = v21;
    v2 = *(v20 + 8);
    if (v21)
    {
      if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 16))(v1);
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
        }
      }
    }

    if (v2 != 1)
    {
LABEL_18:
      TaskQueueWrapper::front(RcpHostContext::sRcpHostContext, &v20);
      v7 = v20;
      *(v20 + 8) = 2;
      if (*(v7 + 12) == 1)
      {
        logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
        if (logging_obg)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "=====> processHostCmd[HOST_CMD_DEFAULT_OTCTL]", buf, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        TaskQueueWrapper::front(RcpHostContext::sRcpHostContext, buf);
        v11 = v17;
        v12 = **buf;
        if (v17)
        {
          if (atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v11 + 16))(v11);
            if (atomic_fetch_add(v11 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v11 + 24))(v11);
            }
          }
        }

        processXpcOtctl(v12, (*(v12 + 1600) - 1));
        v13 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v13)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "++++++++++++++++++++++++++++++++++++", buf, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }
      }

      else
      {
        v9 = HostInterpreter::sHostInterpreter;
        v10 = v21;
        v15[0] = v7;
        v15[1] = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(v21 + 2, 1u, memory_order_relaxed);
        }

        HostInterpreter::processCommand(v9, v15);
        if (v10)
        {
          if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v10 + 16))(v10);
            if (atomic_fetch_add(v10 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v10 + 24))(v10);
            }
          }
        }

        if ((*(v20 + 12) - 21) >= 3)
        {
          TaskQueueWrapper::pop_front(RcpHostContext::sRcpHostContext);
        }
      }

      result = read(gPfdX, &v19, 1uLL);
      v14 = v21;
      if (v21)
      {
        if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
        {
          result = (*(*v14 + 16))(v14);
          if (atomic_fetch_add(v14 + 3, 0xFFFFFFFF) == 1)
          {
            return (*(*v14 + 24))(v14);
          }
        }
      }
    }

    else
    {
      TaskQueueWrapper::front((RcpHostContext::sRcpHostContext + 88), &v20);
      v3 = v20;
      *(v20 + 8) = 2;
      v4 = HostInterpreter::sHostInterpreter;
      v5 = v21;
      v18[0] = v3;
      v18[1] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(v21 + 2, 1u, memory_order_relaxed);
      }

      HostInterpreter::processCommand(v4, v18);
      if (v5)
      {
        if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v5 + 16))(v5);
          if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v5 + 24))(v5);
          }
        }
      }

      TaskQueueWrapper::pop_front((RcpHostContext::sRcpHostContext + 88));
      result = read(gPfdX, &v19, 1uLL);
      v6 = v21;
      if (v21 && atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
      {
        result = (*(*v6 + 16))(v6);
        if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
        {
          return (*(*v6 + 24))(v6);
        }
      }
    }
  }

  return result;
}

void sub_100003F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  boost::shared_ptr<void>::~shared_ptr(va);
  boost::shared_ptr<void>::~shared_ptr(v6 - 48);
  _Unwind_Resume(a1);
}

BOOL TaskQueueWrapper::empty(TaskQueueWrapper *this)
{
  std::mutex::lock((this + 24));
  v2 = *(this + 2) == 0;
  std::mutex::unlock((this + 24));
  return v2;
}

uint64_t otTaskletsProcess(uint64_t a1)
{
  result = otInstanceIsInitialized(a1);
  if (result)
  {
    v2 = ot::AsCoreType<otInstance>(a1);
    v3 = ot::Instance::Get<ot::Tasklet::Scheduler>(v2);
    return ot::Tasklet::Scheduler::ProcessQueuedTasklets(v3);
  }

  return result;
}

uint64_t ot::Instance::IsInitialized(ot::Instance *this)
{
  return *(this + 168344) & 1;
}

{
  return ot::Instance::IsInitialized(this);
}

ot::Tasklet ***ot::Tasklet::Scheduler::ProcessQueuedTasklets(ot::Tasklet ***this)
{
  v2 = *this;
  *this = 0;
  while (v2)
  {
    v1 = v2[1];
    if (v1 == v2)
    {
      v2 = 0;
    }

    else
    {
      v2[1] = *(v1 + 1);
    }

    *(v1 + 1) = 0;
    this = ot::Tasklet::RunTask(v1);
  }

  return this;
}

uint64_t ot::Instance::Get<ot::Tasklet::Scheduler>(uint64_t a1)
{
  return a1 + 8;
}

{
  return ot::Instance::Get<ot::Tasklet::Scheduler>(a1);
}

BOOL otSysMainloopUpdate(ot::Posix::Mainloop::Manager *a1, uint64_t a2)
{
  v2 = ot::Posix::Mainloop::Manager::Get(a1);
  ot::Posix::Mainloop::Manager::Update(v2, a2);
  platformAlarmUpdateTimeout(a2 + 392);
  platformNetifUpdateFdSet(a2);
  result = otTaskletsArePending(a1);
  if (result)
  {
    *(a2 + 392) = 0;
    *(a2 + 400) = 0;
  }

  return result;
}

uint64_t ot::Posix::Udp::Update(uint64_t a1, _DWORD *a2)
{
  if (gNetifIndex)
  {
    result = otUdpGetSockets(gInstance);
    for (i = result; i; i = *(i + 64))
    {
      if (*(i + 56))
      {
        v5 = v4;
        v8 = v4;
        result = __darwin_check_fd_set_overflow(v4, a2, 0);
        if (result)
        {
          a2[v8 / 0x20uLL] |= 1 << (v8 % 0x20uLL);
        }

        if (a2[96] < v5)
        {
          a2[96] = v5;
        }
      }
    }
  }

  return result;
}

uint64_t *ot::Posix::Mainloop::Manager::Update(uint64_t *result, uint64_t a2)
{
  for (i = *result; i; i = *(i + 8))
  {
    result = (**i)(i, a2);
  }

  return result;
}

void ot::Posix::MulticastRoutingManager::Update(uint64_t a1, _DWORD *a2)
{
  if ((ot::Posix::MulticastRoutingManager::IsEnabled(a1) & 1) != 0 && (ot::Posix::BackboneIPv6Interface::IsActive((a1 + 42032)) & 1) != 0 && ot::Posix::BackboneIPv6Interface::GetBackboneBPFFd((a1 + 42032)) != -1)
  {
    if (ot::Posix::MulticastRoutingManager::GetMulticastListenerCount(a1))
    {
      ot::Posix::BackboneIPv6Interface::Update(a1 + 42032, a2);
    }
  }
}

unint64_t platformAlarmUpdateTimeout(uint64_t a1)
{
  v2 = 0x7FFFFFFFLL;
  result = platformAlarmGetNow();
  if (!a1)
  {
    __assert_rtn("platformAlarmUpdateTimeout", "alarm.cpp", 203, "aTimeout != nullptr");
  }

  if (sIsMsRunning)
  {
    v2 = (sMsAlarm - result / 0x3E8);
    if (v2 <= 0)
    {
      goto LABEL_9;
    }

    v2 = 1000 * v2 - result % 0x3E8;
  }

  if ((sIsUsRunning & 1) != 0 && sUsAlarm - result < v2)
  {
    v2 = sUsAlarm - result;
  }

LABEL_9:
  if (v2 > 0)
  {
    v3 = v2 / sSpeedUpFactor;
    if (!v3)
    {
      v3 = 1;
    }

    if (v3 < 1000000 * *a1 + *(a1 + 8))
    {
      *a1 = v3 / 1000000;
      *(a1 + 8) = v3 % 1000000;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return result;
}

const void *platformNetifUpdateFdSet(const void *result)
{
  v1 = result;
  if (gNetifIndex)
  {
    if (!result)
    {
      __assert_rtn("platformNetifUpdateFdSet", "netif.cpp", 2652, "aContext != nullptr");
    }

    if (sTunFd < 0)
    {
      __assert_rtn("platformNetifUpdateFdSet", "netif.cpp", 2653, "sTunFd >= 0");
    }

    if (sNetlinkFd < 0)
    {
      __assert_rtn("platformNetifUpdateFdSet", "netif.cpp", 2654, "sNetlinkFd >= 0");
    }

    if (sIpFd < 0)
    {
      __assert_rtn("platformNetifUpdateFdSet", "netif.cpp", 2655, "sIpFd >= 0");
    }

    if (rcpBuffersAvailable)
    {
      v5 = sTunFd;
      if (__darwin_check_fd_set_overflow(sTunFd, result, 0))
      {
        v1[v5 / 0x20uLL] |= 1 << (v5 % 0x20uLL);
      }

      v4 = sTunFd;
      if (__darwin_check_fd_set_overflow(sTunFd, v1 + 64, 0))
      {
        v1[v4 / 0x20uLL + 64] |= 1 << (v4 % 0x20uLL);
      }
    }

    v3 = sNetlinkFd;
    if (__darwin_check_fd_set_overflow(sNetlinkFd, v1, 0))
    {
      v1[v3 / 0x20uLL] |= 1 << (v3 % 0x20uLL);
    }

    v2 = sNetlinkFd;
    result = __darwin_check_fd_set_overflow(sNetlinkFd, v1 + 64, 0);
    if (result)
    {
      v1[v2 / 0x20uLL + 64] |= 1 << (v2 % 0x20uLL);
    }

    if ((rcpBuffersAvailable & 1) != 0 && sTunFd > v1[96])
    {
      v1[96] = sTunFd;
    }

    if (sNetlinkFd > v1[96])
    {
      v1[96] = sNetlinkFd;
    }
  }

  return result;
}

BOOL otTaskletsArePending(uint64_t a1)
{
  v4 = 0;
  if (otInstanceIsInitialized(a1))
  {
    v1 = ot::AsCoreType<otInstance>(a1);
    v2 = ot::Instance::Get<ot::Tasklet::Scheduler>(v1);
    return ot::Tasklet::Scheduler::AreTaskletsPending(v2);
  }

  return v4;
}

BOOL ot::Tasklet::Scheduler::AreTaskletsPending(ot::Tasklet::Scheduler *this)
{
  return *this != 0;
}

{
  return ot::Tasklet::Scheduler::AreTaskletsPending(this);
}

unint64_t ot::Router::Info::SetFrom(ot::Router::Info *this, const ot::Router *a2)
{
  *(this + 4) = 0;
  *this = 0;
  *(this + 1) = 0;
  v4 = *(a2 + 14);
  *(this + 4) = v4;
  *(this + 10) = v4 >> 10;
  *this = *a2;
  *(this + 16) = 1;
  *(this + 11) = *(a2 + 140);
  if ((*(a2 + 30) & 0xF) == 7)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  *(this + 16) = v5;
  *(this + 12) = (*(a2 + 141) >> 2) & 0xF;
  *(this + 13) = *(a2 + 40);
  *(this + 14) = *(a2 + 141) & 3;
  result = otPlatAlarmMilliGetNow();
  *(this + 15) = (result - *(a2 + 2)) / 0x3E8u;
  v7 = *(a2 + 18);
  if (v7 >= 0xFF)
  {
    LOBYTE(v7) = -1;
  }

  *(this + 17) = v7;
  return result;
}

unint64_t ot::Router::Info::SetFrom(ot::Router::Info *this, const ot::Parent *a2)
{
  *(this + 4) = 0;
  *this = 0;
  *(this + 1) = 0;
  v4 = *(a2 + 14);
  *(this + 4) = v4;
  *(this + 10) = v4 >> 10;
  *this = *a2;
  *(this + 16) = 1;
  *(this + 11) = *(a2 + 140);
  if ((*(a2 + 30) & 0xF) == 7)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  *(this + 16) = v5;
  *(this + 12) = (*(a2 + 141) >> 2) & 0xF;
  *(this + 13) = *(a2 + 40);
  *(this + 14) = *(a2 + 141) & 3;
  result = otPlatAlarmMilliGetNow();
  *(this + 15) = (result - *(a2 + 2)) / 0x3E8u;
  v7 = *(a2 + 18);
  if (v7 >= 0xFF)
  {
    LOBYTE(v7) = -1;
  }

  *(this + 17) = v7;
  *(this + 9) = *(a2 + 143);
  return result;
}

uint64_t ot::Router::Clear(ot::Router *this)
{
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return ot::Neighbor::Init(this, &ot::gInstanceRaw);
}

uint64_t ot::Router::GetTwoWayLinkQuality(ot::Router *this)
{
  if (*(this + 40) >= (*(this + 141) & 3u))
  {
    return *(this + 141) & 3;
  }

  else
  {
    return *(this + 40);
  }
}

__n128 ot::Router::SetFrom(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 126) = *(a2 + 126);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t ot::Parent::Clear(ot::Parent *this)
{
  *(this + 18) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  result = ot::Neighbor::Init(this, &ot::gInstanceRaw);
  *(this + 143) = -1;
  return result;
}

BOOL ot::Router::SetNextHopAndCost(ot::Router *this, int a2, int a3)
{
  v3 = *(this + 140);
  v4 = v3 == a2;
  v5 = v3 != a2;
  if (!v4)
  {
    *(this + 140) = a2;
    v6 = *(this + 141);
    if (((v6 >> 2) & 0xF) != a3)
    {
      goto LABEL_6;
    }

    return v5;
  }

  v6 = *(this + 141);
  if (((v6 >> 2) & 0xF) == a3)
  {
    return v5;
  }

LABEL_6:
  *(this + 141) = v6 & 0xC3 | (4 * (a3 & 0xF));
  return 1;
}

BOOL ot::Router::SetNextHopToInvalid(ot::Router *this)
{
  v2 = *(this + 140);
  result = v2 != 63;
  if (v2 != 63)
  {
    *(this + 140) = 63;
  }

  if ((*(this + 141) & 0x3C) != 0)
  {
    *(this + 141) &= 0xC3u;
    return 1;
  }

  return result;
}

unint64_t ot::Neighbor::SetState(unint64_t result, int a2)
{
  v2 = *(result + 30);
  if ((v2 & 0xF) != a2)
  {
    *(result + 30) = v2 & 0xF0 | a2 & 0xF;
    if ((a2 & 0xF) == 7)
    {
      v3 = result;
      result = ot::Uptime::GetUptime(&unk_1004EAC90);
      *(v3 + 68) = result / 0x3E8;
    }
  }

  return result;
}

uint64_t ot::Neighbor::GetConnectionTime(ot::Neighbor *this)
{
  if ((*(this + 30) & 0xF) == 7)
  {
    return (ot::Uptime::GetUptime(&unk_1004EAC90) / 0x3E8) - *(this + 17);
  }

  else
  {
    return 0;
  }
}

uint64_t ot::Neighbor::AddressMatcher::Matches(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 > 3)
  {
    if (*a1 > 5u)
    {
      if (v2 == 6)
      {
        v10 = *(a2 + 30) & 0xF;
        v4 = v10 > 7;
        v11 = (1 << v10) & 0xC2;
        if (!v4 && v11 != 0)
        {
          return 0;
        }

        goto LABEL_36;
      }

      if (v2 == 7)
      {
        goto LABEL_36;
      }

      return 0;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        if ((*(a2 + 30) & 0xF) != 0)
        {
          goto LABEL_36;
        }

        return 0;
      }

      return 0;
    }

    if ((*(a2 + 30) & 0xF) == 0)
    {
      goto LABEL_36;
    }

    return 0;
  }

  if (*a1 > 1u)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        v7 = *(a2 + 30) & 0xF;
        if ((v7 - 4) >= 4 && v7 != 1)
        {
          return 0;
        }

        goto LABEL_36;
      }

      return 0;
    }

    if ((*(a2 + 30) & 0xF) == 4)
    {
      goto LABEL_36;
    }

    return 0;
  }

  if (!*a1)
  {
    if ((*(a2 + 30) & 0xF) == 7)
    {
      goto LABEL_36;
    }

    return 0;
  }

  v3 = *(a2 + 30) & 0xF;
  v4 = v3 > 7;
  v5 = (1 << v3) & 0xC2;
  if (v4 || v5 == 0)
  {
    return 0;
  }

LABEL_36:
  v13 = *(a1 + 1);
  if (v13 != 65534 && v13 != *(a2 + 28))
  {
    return 0;
  }

  v14 = *(a1 + 1);
  if (v14)
  {
    if (*v14 != *a2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ot::Neighbor::MatchesFilter(uint64_t a1, int a2)
{
  v2 = 0;
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 != 6)
      {
        return a2 == 7;
      }

      v6 = *(a1 + 30) & 0xF;
      if (v6 == 7)
      {
        return 0;
      }

      v5 = v6 == 1 || v6 == 6;
    }

    else
    {
      if (a2 == 4)
      {
        return (*(a1 + 30) & 0xF) == 0;
      }

      v5 = (*(a1 + 30) & 0xF) == 0;
    }

    v2 = !v5;
    return v2 & 1;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      return (*(a1 + 30) & 0xF) == 4;
    }

    else
    {
      return (0xF2u >> (*(a1 + 30) & 0xF)) & 1;
    }
  }

  if (!a2)
  {
    return (*(a1 + 30) & 0xF) == 7;
  }

  if (a2 != 1)
  {
    return v2 & 1;
  }

  v3 = *(a1 + 30) & 0xF;
  if (v3 == 7)
  {
    return 1;
  }

  return v3 == 1 || v3 == 6;
}

__n128 ot::Neighbor::Info::SetFrom(ot::Neighbor::Info *this, const ot::Neighbor *a2)
{
  *(this + 14) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *this = *a2;
  *(this + 2) = (otPlatAlarmMilliGetNow() - *(a2 + 2)) / 0x3E8;
  *(this + 8) = *(a2 + 14);
  *(this + 5) = ot::Mac::LinkFrameCounters::GetMaximum((a2 + 12));
  *(this + 6) = *(a2 + 4);
  *(this + 28) = *(a2 + 40);
  *(this + 44) = ot::RssAverager::GetAverage((a2 + 38));
  *(this + 45) = *(a2 + 41);
  *(this + 46) = ot::LinkQualityInfo::GetLinkMargin((a2 + 38));
  *(this + 12) = *(a2 + 42);
  v4 = *(this + 54) & 0xFE | (*(a2 + 30) >> 7);
  *(this + 54) = v4;
  v5 = v4 & 0xFFFFFFFD | (2 * ((*(a2 + 30) >> 5) & 1));
  *(this + 54) = v5;
  v6 = v5 & 0xFFFFFFFB | (4 * ((*(a2 + 30) >> 4) & 1));
  *(this + 54) = v6;
  v7 = *(a2 + 18);
  *(this + 26) = v7;
  if ((*(a2 + 30) & 0xF) == 7)
  {
    v8 = ot::Uptime::GetUptime(&unk_1004EAC90) / 0x3E8 - *(a2 + 17);
    LOBYTE(v6) = *(this + 54);
    LOBYTE(v7) = *(a2 + 36);
  }

  else
  {
    v8 = 0;
  }

  *(this + 3) = v8;
  *(this + 29) = v7;
  *(this + 31) = *(a2 + 31);
  *(this + 32) = *(a2 + 32);
  *(this + 30) = *(a2 + 33);
  v9 = (1073758209 * (10000 * *(a2 + 23))) >> 46;
  *(this + 9) = ((1073758209 * (10000 * *(a2 + 24))) >> 32) >> 14;
  *(this + 10) = v9;
  if (*(a2 + 34))
  {
    v10 = 16;
  }

  else
  {
    v10 = 0;
  }

  *(this + 54) = v6 & 0xEF | v10;
  result = *(a2 + 72);
  v12 = *(a2 + 88);
  v13 = *(a2 + 104);
  *(this + 104) = *(a2 + 120);
  *(this + 88) = v13;
  *(this + 72) = v12;
  *(this + 56) = result;
  return result;
}

uint64_t ot::Neighbor::Init(uint64_t this, ot::Instance *a2)
{
  if ((*(this + 30) & 0xF) != 0)
  {
    *(this + 30) &= 0xF0u;
  }

  return this;
}

void ot::Neighbor::AggregateLinkMetrics(ot::Neighbor *this, int a2, char a3, unsigned __int8 a4, char a5)
{
  v5 = *(this + 7);
  if (v5)
  {
    if (a2)
    {
      do
      {
        if (v5[8] == a2)
        {
          ot::LinkMetrics::SeriesInfo::AggregateLinkMetrics(v5, a3, a4, a5);
        }

        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        ot::LinkMetrics::SeriesInfo::AggregateLinkMetrics(v5, a3, a4, a5);
        v5 = *v5;
      }

      while (v5);
    }
  }
}

uint64_t ot::Neighbor::GetForwardTrackingSeriesInfo(ot::Neighbor *this, const unsigned __int8 *a2)
{
  for (result = *(this + 7); result; result = *result)
  {
    if (*(result + 8) == *a2)
    {
      break;
    }
  }

  return result;
}

uint64_t ot::Neighbor::AddForwardTrackingSeriesInfo(uint64_t result, void *a2)
{
  *a2 = *(result + 56);
  *(result + 56) = a2;
  return result;
}

uint64_t ot::Neighbor::RemoveForwardTrackingSeriesInfo(ot::Neighbor *this, const unsigned __int8 *a2)
{
  v3 = (this + 56);
  result = *(this + 7);
  if (result)
  {
    while (*(result + 8) != *a2)
    {
      v3 = result;
      result = *result;
      if (!result)
      {
        return result;
      }
    }

    *v3 = *result;
  }

  return result;
}

void *ot::Neighbor::RemoveAllForwardTrackingSeriesInfo(void *this)
{
  v1 = this[7];
  if (v1)
  {
    v2 = this;
    do
    {
      v2[7] = *v1;
      this = ot::LinkMetrics::Subject::Free((&ot::gInstanceRaw + &loc_100025CA0), v1);
      v1 = v2[7];
    }

    while (v1);
  }

  return this;
}

uint64_t ot::Child::Info::SetFrom(ot::Child::Info *this, const ot::Child *a2)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *this = *a2;
  *(this + 2) = *(a2 + 48);
  v4 = *(a2 + 14);
  *(this + 12) = v4;
  *(this + 13) = v4 & 0x1FF;
  *(this + 28) = *(a2 + 449);
  *(this + 3) = (otPlatAlarmMilliGetNow() - *(a2 + 2)) / 0x3E8;
  *(this + 29) = *(a2 + 40);
  *(this + 30) = ot::RssAverager::GetAverage((a2 + 38));
  *(this + 31) = *(a2 + 41);
  *(this + 8) = *(a2 + 42);
  *(this + 18) = *(a2 + 77) & 0x3FFF;
  v5 = *(a2 + 18);
  if (v5 >= 0xFF)
  {
    LOBYTE(v5) = -1;
  }

  *(this + 40) = v5;
  v6 = *(this + 52) & 0xFE | (*(a2 + 30) >> 7);
  *(this + 52) = v6;
  v7 = v6 & 0xFFFFFFFD | (2 * ((*(a2 + 30) >> 5) & 1));
  *(this + 52) = v7;
  v8 = v7 & 0xFFFFFFFB | (4 * ((*(a2 + 30) >> 4) & 1));
  *(this + 52) = v8;
  v9 = *(a2 + 30) & 0xF;
  if (v9 == 6 || v9 == 1)
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 | v8 & 0xF7;
  *(this + 52) = v12;
  *(this + 19) = *(a2 + 229);
  *(this + 52) = (*(a2 + 170) >> 3) & (16 * (*(a2 + 88) != 0)) | v12 & 0xEF;
  *(this + 41) = *(a2 + 171);
  *(this + 11) = *(a2 + 43);
  *(this + 12) = *(a2 + 44);
  result = ot::Neighbor::GetConnectionTime(a2);
  *(this + 2) = result;
  return result;
}

uint64_t ot::Child::Ip6AddrEntry::GetMlrState(uint64_t a1, uint64_t a2)
{
  v2 = a1 - a2 - 204;
  v3 = a2 + ((v2 >> 7) & 0x1F);
  v4 = 0x80u >> ((v2 >> 4) & 7);
  if ((v4 & *(v3 + 445)) != 0)
  {
    return 0;
  }

  if ((v4 & *(v3 + 447)) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t ot::Child::Ip6AddrEntry::SetMlrState(uint64_t result, int a2, uint64_t a3)
{
  v3 = result - a3 - 204;
  v4 = (v3 >> 4) & 7;
  v5 = a3 + ((v3 >> 7) & 0x1F);
  v6 = *(v5 + 445);
  v7 = -129 >> v4;
  v8 = v6 & (-129 >> v4);
  v9 = 0x80u >> v4;
  v10 = v6 | v9;
  if (a2)
  {
    v10 = v8;
  }

  *(v5 + 445) = v10;
  v11 = *(v5 + 447);
  v12 = v11 & v7;
  v13 = v11 | v9;
  if (a2 != 2)
  {
    v13 = v12;
  }

  *(v5 + 447) = v13;
  return result;
}

uint64_t ot::Child::Clear(ot::Child *this)
{
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return ot::Neighbor::Init(this, &ot::gInstanceRaw);
}

uint64_t ot::Child::ClearIp6Addresses(uint64_t this)
{
  *(this + 196) = 0;
  *(this + 444) = 0;
  *(this + 445) = 0;
  return this;
}

uint64_t ot::Child::SetDeviceMode(uint64_t result, char a2)
{
  if (((*(result + 30) >> 4) | 4) != a2)
  {
    v2 = result;
    result = ot::Neighbor::SetDeviceMode(result, a2);
    if ((*(v2 + 30) & 0xF) == 7)
    {

      return ot::NeighborTable::Signal(&unk_1005011D8, 2u, v2);
    }
  }

  return result;
}

uint64_t ot::Child::GetMeshLocalIp6Address(ot::Child *this, ot::Ip6::Address *a2)
{
  if (ot::Ip6::InterfaceIdentifier::IsUnspecified((this + 196)))
  {
    return 23;
  }

  ot::Ip6::Address::SetPrefix(a2, qword_100501458);
  result = 0;
  *(a2 + 1) = *(this + 196);
  return result;
}

uint64_t ot::Child::GetNextIp6Address(ot::Child *this, unsigned __int16 *a2, ot::Ip6::Address *a3)
{
  v5 = *a2;
  if (*a2)
  {
    if (v5 > *(this + 444))
    {
      return 23;
    }

    goto LABEL_6;
  }

  v7 = a2;
  *a2 = 1;
  if (ot::Ip6::InterfaceIdentifier::IsUnspecified((this + 196)))
  {
    a2 = v7;
    v5 = *v7;
    if (v5 > *(this + 444))
    {
      return 23;
    }

LABEL_6:
    result = 0;
    *a3 = *(this + 16 * (v5 - 1) + 204);
    ++*a2;
    return result;
  }

  ot::Ip6::Address::SetPrefix(a3, qword_100501458);
  result = 0;
  *(a3 + 1) = *(this + 196);
  return result;
}

__n128 ot::Child::AddIp6Address(ot::Child *this, const ot::Ip6::Address *a2)
{
  if (!ot::Ip6::Address::IsUnspecified(a2))
  {
    if (ot::Mle::Mle::IsMeshLocalAddress(&unk_100501080, a2))
    {
      if (ot::Ip6::InterfaceIdentifier::IsUnspecified((this + 196)))
      {
        *(this + 196) = *(a2 + 1);
      }
    }

    else
    {
      v5 = *(this + 444);
      if (*(this + 444))
      {
        v6 = 16 * v5;
        v7 = (this + 204);
        while (*v7 != *a2 || v7[1] != *(a2 + 1))
        {
          v7 += 2;
          v6 -= 16;
          if (!v6)
          {
            if (v5 != 15)
            {
              goto LABEL_15;
            }

            return result;
          }
        }
      }

      else
      {
LABEL_15:
        *(this + 444) = v5 + 1;
        result = *a2;
        *(this + 16 * v5 + 204) = *a2;
      }
    }
  }

  return result;
}

uint64_t ot::Child::RemoveIp6Address(ot::Child *this, const ot::Ip6::Address *a2)
{
  if (ot::Mle::Mle::IsMeshLocalAddress(&unk_100501080, a2))
  {
    if (*(a2 + 1) == *(this + 196))
    {
      result = 0;
      *(this + 196) = 0;
      return result;
    }

    return 23;
  }

  v5 = *(this + 444);
  if (!*(this + 444))
  {
    return 23;
  }

  v6 = 0;
  for (i = (this + 204); *i != *a2 || i[1] != *(a2 + 1); i += 2)
  {
    v6 -= 16;
    if (-16 * v5 == v6)
    {
      return 23;
    }
  }

  v9 = this + 445;
  v10 = (v5 - 1) >> 3;
  v11 = 0x80u >> ((v5 - 1) & 7);
  v12 = (-v6 >> 4) & 7;
  v13 = (-v6 >> 7) & 0x1F;
  v14 = *(this + v13 + 445);
  v15 = -129 >> v12;
  v16 = v14 & (-129 >> v12);
  v17 = 0x80u >> v12;
  v18 = v14 | (0x80u >> v12);
  if ((v11 & *(this + v10 + 445)) != 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = v16;
  }

  v9[v13] = v19;
  v20 = -129 >> ((v5 - 1) & 7);
  v9[v10] &= v20;
  v21 = this + 447;
  v22 = *(this + v13 + 447);
  v23 = v22 | v17;
  if ((v11 & *(this + v10 + 447)) != 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22 & v15;
  }

  v21[v13] = v24;
  v21[v10] &= v20;
  v25 = v5 - 1;
  *(this + 444) = v25;
  v26 = 16 * v25;
  result = 0;
  if (v6 + v26)
  {
    *i = *(this + v26 + 204);
  }

  return result;
}

BOOL ot::Child::HasIp6Address(ot::Child *this, const ot::Ip6::Address *a2)
{
  if (ot::Ip6::Address::IsUnspecified(a2))
  {
    return 0;
  }

  if (ot::Mle::Mle::IsMeshLocalAddress(&unk_100501080, a2))
  {
    return *(a2 + 1) == *(this + 196);
  }

  if (!*(this + 444))
  {
    return 0;
  }

  v5 = (this + 204);
  v6 = 16 * *(this + 444) - 16;
  do
  {
    v7 = *v5;
    v8 = v5[1];
    v5 += 2;
    v9 = v7 ^ *a2 | v8 ^ *(a2 + 1);
    result = v9 == 0;
    if (v9)
    {
      v10 = v6 == 0;
    }

    else
    {
      v10 = 1;
    }

    v6 -= 16;
  }

  while (!v10);
  return result;
}

__n128 ot::Child::GetDomainUnicastAddress(ot::Child *this, ot::Ip6::Address *a2)
{
  if (*(this + 444))
  {
    v3 = 16 * *(this + 444);
    for (i = (this + 204); !ot::BackboneRouter::Leader::IsDomainUnicast((&ot::gInstanceRaw + &loc_100023C80), i); i = (i + 16))
    {
      v3 -= 16;
      if (!v3)
      {
        return result;
      }
    }

    result = *i;
    *a2 = *i;
  }

  return result;
}

BOOL ot::Child::HasMlrRegisteredAddress(uint64_t a1, void *a2)
{
  if (!*(a1 + 444))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = (a1 + 204);
  while (*v4 != *a2 || v4[1] != a2[1])
  {
    v4 += 2;
    v3 -= 16;
    ++v2;
    if (-16 * *(a1 + 444) == v3)
    {
      return 0;
    }
  }

  v6 = a1 + ((-v3 >> 7) & 0x1F);
  v7 = 0x80u >> (v2 & 7);
  return (v7 & *(v6 + 445)) == 0 && (v7 & *(v6 + 447)) != 0;
}

uint64_t ot::NetworkDiagnostic::ChildTlv::InitFrom(ot::NetworkDiagnostic::ChildTlv *this, const ot::Child *a2)
{
  *(this + 29) = 0u;
  *(this + 18) = 0u;
  *(this + 2) = 0u;
  *this = 11037;
  v4 = *(a2 + 30) & 0x80;
  *(this + 2) = v4;
  v5 = v4 & 0xFFFFFFBF | (((*(a2 + 30) >> 5) & 1) << 6);
  *(this + 2) = v5;
  *(this + 2) = v5 & 0xDF | (32 * ((*(a2 + 30) & 0x10) != 0)) | 8;
  *(this + 3) = bswap32(*(a2 + 14)) >> 16;
  *(this + 5) = *a2;
  *(this + 13) = bswap32(*(a2 + 18)) >> 16;
  *(this + 15) = bswap32(*(a2 + 48));
  *(this + 19) = bswap32((otPlatAlarmMilliGetNow() - *(a2 + 2)) / 0x3E8);
  *(this + 23) = bswap32(ot::Neighbor::GetConnectionTime(a2));
  *(this + 27) = bswap32(*(a2 + 229)) >> 16;
  *(this + 29) = ot::LinkQualityInfo::GetLinkMargin((a2 + 38));
  result = ot::RssAverager::GetAverage((a2 + 38));
  *(this + 30) = result;
  *(this + 31) = *(a2 + 41);
  *(this + 16) = bswap32(*(a2 + 21)) >> 16;
  *(this + 17) = bswap32(*(a2 + 22)) >> 16;
  *(this + 18) = __rev16(*(a2 + 77) & 0x3FFF);
  v7 = *(a2 + 88);
  *(this + 2) |= (*(a2 + 170) >> 3) & (16 * (*(a2 + 88) != 0));
  *(this + 19) = bswap32(v7) >> 16;
  *(this + 10) = bswap32(*(a2 + 43));
  *(this + 44) = *(a2 + 171);
  return result;
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::InitFrom(ot::NetworkDiagnostic::RouterNeighborTlv *this, const ot::Router *a2)
{
  *(this + 18) = 0;
  *(this + 11) = 0;
  *(this + 3) = 0;
  *this = 6175;
  *(this + 2) = 0x80;
  *(this + 3) = bswap32(*(a2 + 14)) >> 16;
  *(this + 5) = *a2;
  *(this + 13) = bswap32(*(a2 + 18)) >> 16;
  *(this + 15) = bswap32(ot::Neighbor::GetConnectionTime(a2));
  *(this + 19) = ot::LinkQualityInfo::GetLinkMargin((a2 + 38));
  result = ot::RssAverager::GetAverage((a2 + 38));
  *(this + 20) = result;
  *(this + 21) = *(a2 + 41);
  *(this + 11) = bswap32(*(a2 + 21)) >> 16;
  *(this + 12) = bswap32(*(a2 + 22)) >> 16;
  return result;
}

_WORD *ot::NetworkDiagnostic::AnswerTlv::Init(_WORD *this, char a2, int a3)
{
  *this = 544;
  if (a3)
  {
    v3 = -32768;
  }

  else
  {
    v3 = 0;
  }

  this[1] = bswap32(v3 & 0xFFFFFF80 | a2 & 0x7F) >> 16;
  return this;
}

int8x16_t ot::NetworkDiagnostic::MleCountersTlv::Init(uint64_t a1, int8x16_t *a2)
{
  *a1 = 16930;
  *(a1 + 20) = bswap64(a2[3].u64[1]);
  v2 = a2[1];
  *(a1 + 2) = vrev16q_s8(*a2);
  *(a1 + 18) = bswap32(a2[4].u16[0]) >> 16;
  *(a1 + 28) = vrev64q_s8(v2);
  result = vrev64q_s8(a2[2]);
  *(a1 + 44) = result;
  *(a1 + 60) = bswap64(a2[3].u64[0]);
  return result;
}

int8x16_t ot::NetworkDiagnostic::MleCountersTlv::Read(uint64_t a1, uint64_t a2)
{
  *a2 = vrev16q_s8(*(a1 + 2));
  *(a2 + 16) = bswap32(*(a1 + 18)) >> 16;
  *(a2 + 24) = vrev64q_s8(*(a1 + 20));
  *(a2 + 40) = vrev64q_s8(*(a1 + 36));
  result = vrev64q_s8(*(a1 + 52));
  *(a2 + 56) = result;
  return result;
}

void findWakeReason_Rcp()
{
  v3 = 256;
  v0 = sysctlbyname("kern.wakereason", __s1, &v3, 0, 0);
  v1 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v1)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v5 = "findWakeReason_Rcp";
      v6 = 2080;
      v7 = __s1;
      v8 = 1024;
      v9 = v0;
      v10 = 2048;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Power Assertion: %s, WakeReason: %s, err = %d, size = %zu ", buf, 0x26u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if (!v0 && strstr(__s1, "bluetooth-pcie"))
  {
    v2 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v2)
    {
      if (syslog_is_the_mask_enabled(6))
      {
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v5 = "findWakeReason_Rcp";
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Power Assertion: %s Host woke up due to Bluetooth/Thread Activity", buf, 0xCu);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }
}

void resetRouterModeStatusTimerCounter()
{
  v0 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v0)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      v1 = 136315394;
      v2 = "resetRouterModeStatusTimerCounter";
      v3 = 1024;
      v4 = router_mode_status_timer_m;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Power Assertion: %s: pairing started hence reset router_mode_status_timer_m=[%d] to 0", &v1, 0x12u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  router_mode_status_timer_m = 0;
}

void startPowerEventHandler_Rcp(void *a1)
{
  v1 = a1;
  v2 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v2)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "startPowerEventHandler_Rcp";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Power Assertion: %s start the power event handler", &v5, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v3 = [[PowerEventHandler_Rcp alloc] init:v1];
  v4 = PowerEvents_Rcp::powerEventHandler_Rcp;
  PowerEvents_Rcp::powerEventHandler_Rcp = v3;
}

void ThreadPowerAssertDispatchTask(unsigned __int8 *a1)
{
  if (byte_100523A3E == 1)
  {
    v1 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v24 = "ThreadPowerAssertDispatchTask";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Power Assertion: %s Power Assertion is already active, do not start again and return", buf, 0xCu);
    }
  }

  else
  {
    v3 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v3)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *a1;
        *buf = 136315906;
        v24 = "ThreadPowerAssertDispatchTask";
        v25 = 1024;
        *v26 = v4;
        *&v26[4] = 1024;
        *&v26[6] = dword_100523A40;
        *v27 = 1024;
        *&v27[2] = byte_100523A3D;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Power Assertion: %s, power_assertion_n %u, id %u timedout, dispathTimeout %u", buf, 0x1Eu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v5 = *a1;
    if (!*a1)
    {
      StringValue = getStringValue("NCP:HostPowerAssert:Maxtime");
      if (StringValue)
      {
        v7 = atoi(StringValue);
      }

      else
      {
        v7 = 10;
      }

      byte_100523A3C = v7;
      v8 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v8)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v24 = "ThreadPowerAssertConfig";
          v25 = 1024;
          *v26 = byte_100523A3C;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Power Assertion: %s, Set max repeat as %d", buf, 0x12u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      v9 = getStringValue("NCP:HostPowerAssert:Timeout");
      if (v9)
      {
        v10 = atoi(v9);
      }

      else
      {
        v10 = 60;
      }

      byte_100523A3B = v10;
      v11 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v11)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v24 = "ThreadPowerAssertConfig";
          v25 = 1024;
          *v26 = byte_100523A3B;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Power Assertion: %s, Set power assert timeout as %d", buf, 0x12u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      byte_100523A3D = byte_100523A3B - 5;
      v12 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v12)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v24 = "ThreadPowerAssertConfig";
          v25 = 1024;
          *v26 = byte_100523A3D;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Power Assertion: %s, Set power assert dispatch timeout as %d", buf, 0x12u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      v5 = *a1;
    }

    v13 = v5 + 1;
    *a1 = v13;
    if (Thread_System_Sleep_PowerAssert(byte_100523A3B, v13))
    {
      v14 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        ThreadPowerAssertDispatchTask_cold_5(v14);
      }

      *a1 = 0;
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __ThreadPowerAssertDispatchTask_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      v15 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS, block);
      v16 = qword_100523A50;
      qword_100523A50 = v15;

      v17 = byte_100523A3D;
      v18 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
      v19 = 1000000000 * v17;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = *a1;
        *buf = 136315906;
        v24 = "ThreadPowerAssertDispatchTask";
        v25 = 2048;
        *v26 = v19;
        *&v26[8] = 1024;
        *v27 = v20;
        *&v27[4] = 1024;
        v28 = dword_100523A40;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Power Assertion: %s Starting dispatch timer %lld, for assertion %u, id %u", buf, 0x22u);
      }

      byte_100523A3E = 1;
      v21 = dispatch_time(0, v19);
      dispatch_after(v21, qword_100523A48, qword_100523A50);
    }
  }
}

uint64_t Thread_System_Sleep_PowerAssert(int a1, uint64_t a2)
{
  valuePtr = 0;
  Thread_DeassertPower();
  if (qword_100523A58 != -1)
  {
    Thread_System_Sleep_PowerAssert_cold_1();
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = CFStringCreateMutable(kCFAllocatorDefault, 0);
    if (v6)
    {
      v17 = a2;
      v7 = v6;
      CFStringAppendFormat(v6, 0, @"com.apple.threadradiod_%d", v17);
      CFDictionarySetValue(v5, @"AssertName", v7);
      CFRelease(v7);
      CFDictionarySetValue(v5, @"AssertType", @"PreventUserIdleSystemSleep");
      CFDictionarySetValue(v5, @"TimeoutAction", @"TimeoutActionRelease");
      valuePtr = a1;
      v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      if (v8)
      {
        CFDictionarySetValue(v5, @"TimeoutSeconds", v8);
        CFRelease(v8);
        valuePtr = 255;
        v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (v9)
        {
          CFDictionarySetValue(v5, @"AssertLevel", v9);
          CFRelease(v9);
          v10 = IOPMAssertionCreateWithProperties(v5, &dword_100523A40);
          if (v10)
          {
            v11 = log_get_logging_obg("com.apple.threadradiod", "default");
            if (v11)
            {
              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v20 = "Thread_System_Sleep_PowerAssert";
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Power Assertion: %s Create Assertion with property fail.", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [PowerEventHandler_Rcp init:];
            }

            dword_100523A40 = 0;
          }

          goto LABEL_44;
        }

        v14 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v14)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v20 = "Thread_System_Sleep_PowerAssert";
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Power Assertion: %s Create assertion level fail.", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }
      }

      else
      {
        v14 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v14)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v20 = "Thread_System_Sleep_PowerAssert";
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Power Assertion: %s Create assertion timeout fail.", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }
      }
    }

    else
    {
      v13 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v13)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v20 = "Thread_System_Sleep_PowerAssert";
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Power Assertion: %s: Create assertion namekey fail.", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }
    }

    v10 = 3758097090;
LABEL_44:
    v15 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v15)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v20 = "Thread_System_Sleep_PowerAssert";
        v21 = 1024;
        v22 = v10;
        v23 = 1024;
        v24 = dword_100523A40;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Power Assertion: %s ret: %x, id: %d", buf, 0x18u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    CFRelease(v5);
    return v10;
  }

  v12 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v12)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "Thread_System_Sleep_PowerAssert";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Power Assertion: %s: Create property fail.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  return 3758097086;
}

void __ThreadPowerAssertDispatchTask_block_invoke(uint64_t a1)
{
  byte_100523A3E = 0;
  v2 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = **(a1 + 32);
    buf[0] = 136315650;
    *&buf[1] = "ThreadPowerAssertDispatchTask_block_invoke";
    v10 = 1024;
    v11 = v3;
    v12 = 1024;
    v13 = dword_100523A40;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Power Assertion: %s Power assert dispatch timeout for assertion %u, id %u, check ThreadSession state.", buf, 0x18u);
  }

  StringValue = getStringValue("threadSession");
  if (**(a1 + 32) < byte_100523A3C || (HostInterpreter::isFullRouterDevice(HostInterpreter::sHostInterpreter) & 1) != 0 || (byte_100523A3A & 1) != 0)
  {
    if (StringValue && *StringValue == 79 && *(StringValue + 1) == 78 && !*(StringValue + 2))
    {
      v5 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v5)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          buf[0] = 136315138;
          *&buf[1] = "ThreadPowerAssertDispatchTask_block_invoke";
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Power Assertion: %s The ThreadSession is still On, restart the power assertion.", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      if (HostInterpreter::isFullRouterDevice(HostInterpreter::sHostInterpreter))
      {
        ++router_mode_status_timer_m;
        v8 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v8)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            buf[0] = 136315394;
            *&buf[1] = "ThreadPowerAssertDispatchTask_block_invoke";
            v10 = 1024;
            v11 = router_mode_status_timer_m;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Power Assertion: %s The role is full router for %d min.", buf, 0x12u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        if ((byte_100523A3A & 1) == 0 && router_mode_status_timer_m >= 5u)
        {
          operator new();
        }
      }

      ThreadPowerAssertDispatchTask(*(a1 + 32));
    }
  }

  else
  {
    v6 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v6)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = **(a1 + 32);
        buf[0] = 136315906;
        *&buf[1] = "ThreadPowerAssertDispatchTask_block_invoke";
        v10 = 1024;
        v11 = v7;
        v12 = 1024;
        v13 = byte_100523A3C;
        v14 = 1024;
        v15 = byte_100523A3B * byte_100523A3C;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Power Assertion: %s power reassert (%u) exceed max limit, which is %d times (%d sec)", buf, 0x1Eu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    Thread_DeassertPower();
    **(a1 + 32) = 0;
  }
}

void Thread_DeassertPower()
{
  if (dword_100523A40)
  {
    v0 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v0)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
      {
        v3 = 136315394;
        v4 = "Thread_DeassertPower";
        v5 = 1024;
        v6 = dword_100523A40;
        _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Power Assertion: %s release power assertion %u", &v3, 0x12u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    IOPMAssertionRelease(dword_100523A40);
    dword_100523A40 = 0;
    byte_100523A3E = 0;
  }

  if (qword_100523A50)
  {
    v1 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v1)
    {
      if (syslog_is_the_mask_enabled(6))
      {
        if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
        {
          v3 = 136315138;
          v4 = "Thread_DeassertPower";
          _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Power Assertion: %s Cancel dispatch block to avoid multi assertion", &v3, 0xCu);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    dispatch_block_cancel(qword_100523A50);
    v2 = qword_100523A50;
    qword_100523A50 = 0;
  }
}

void ___ZN15PowerEvents_RcpL25createAssertQueueIfNeededEv_block_invoke(id a1)
{
  v1 = dispatch_queue_create("com.apple.threadradiod.IOPMAssertion", 0);
  v2 = qword_100523A48;
  qword_100523A48 = v1;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = 0;
  v29 = 0;
  v6 = *(a1 + 24);
  v34 = 10;
  __p = v32;
  v36 = 0;
  v37 = v6;
  pthread_mutex_lock(v6);
  v7 = *(a1 + 8);
  if (!v7)
  {
    v9 = *a1;
    goto LABEL_13;
  }

  explicit = atomic_load_explicit(v7 + 2, memory_order_acquire);
  v9 = *a1;
  if (explicit == 1)
  {
    v10 = *v9;
    v11 = *(a1 + 16);
    if (v11 == *v9)
    {
      v11 = v10[1];
      *&v30 = v11;
      if (v10 == v11)
      {
LABEL_10:
        *(a1 + 16) = v11;
        goto LABEL_11;
      }
    }

    else
    {
      *&v30 = *(a1 + 16);
    }

    v12 = v11[2];
    if (*(v12 + 24))
    {
      v11 = v11[1];
    }

    else
    {
      v11 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::erase(v10, (v12 + 64), &v30);
      v9 = *a1;
    }

    goto LABEL_10;
  }

LABEL_11:
  v7 = *(a1 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 2, 1u, memory_order_relaxed);
  }

LABEL_13:
  v13 = v29;
  v28 = v9;
  v29 = v7;
  if (v13)
  {
    if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v13 + 16))(v13);
      if (atomic_fetch_add(v13 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v13 + 24))(v13);
      }
    }
  }

  pthread_mutex_unlock(v37);
  v14 = __p;
  if (__p)
  {
    if (v36 > 0)
    {
      v20 = __p + 16 * v36;
      do
      {
        v21 = *(v20 - 1);
        if (v21)
        {
          if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v21 + 16))(v21);
            if (atomic_fetch_add(v21 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v21 + 24))(v21);
            }
          }
        }

        v20 -= 16;
      }

      while (v20 > v14);
    }

    if (v34 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v32[0] = 0;
  v38 = 10;
  v39 = &v33;
  v40 = 0;
  v41 = a2;
  v43 = 0;
  v44 = 0;
  v42 = a3;
  v15 = v28;
  v16 = *v28;
  v25 = v32;
  v26 = a1;
  v27 = v16;
  *&v23 = *(v16 + 8);
  *(&v23 + 1) = v16;
  *&v24 = v32;
  *(&v24 + 1) = v16;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&,boost::any const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>::lock_next_callable(&v23);
  v22[0] = *v15;
  v22[1] = v22[0];
  v22[2] = v32;
  v22[3] = v22[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&,boost::any const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>::lock_next_callable(v22);
  v30 = v23;
  v31 = v24;
  v17 = v22[0];
  if (v23 == v22[0])
  {
    if (HIDWORD(v43) <= v43)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  do
  {
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&,boost::any const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>::dereference(&v30);
    *&v30 = *(v30 + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&,boost::any const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>::lock_next_callable(&v30);
    if (*v31 == 1)
    {
      *v31 = 0;
    }
  }

  while (v30 != v17);
  if (*(v25 + 73) > *(v25 + 72))
  {
LABEL_28:
    boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::force_cleanup_connections(v26, v27);
  }

LABEL_29:
  result = boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&,boost::any const&>>::~slot_call_iterator_cache(v32);
  v19 = v29;
  if (v29 && atomic_fetch_add(v29 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v19 + 16))(v19);
    if (atomic_fetch_add(v19 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v19 + 24))(v19);
    }
  }

  return result;
}

void sub_100009200(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x100009250);
}

uint64_t boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(uint64_t a1)
{
  pthread_mutex_unlock(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

void *boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::~auto_buffer(void *a1)
{
  v2 = a1[21];
  if (v2)
  {
    v3 = a1[22];
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (a1[20] >= 0xBuLL)
    {
      operator delete(a1[21]);
    }
  }

  return a1;
}

uint64_t boost::shared_ptr<void>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (*this && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::erase(void *a1, int *a2, uint64_t **a3)
{
  v6 = a1 + 4;
  v5 = a1[4];
  if (!v5)
  {
    if (a1[10] != *a3)
    {
      goto LABEL_52;
    }

    v12 = (*a3)[1];
    v8 = v6;
    v13 = (v6 - 1);
    if (v12 != a1)
    {
LABEL_43:
      std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::__emplace_unique_key_args<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::piecewise_construct_t const&,std::tuple<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const&>,std::tuple<>>(v13, a2)[6] = v12;
      goto LABEL_52;
    }

    goto LABEL_12;
  }

  v7 = *a2;
  if (*a2 == 1)
  {
    v8 = v6;
    v9 = v5;
    do
    {
      while (1)
      {
        v10 = *(v9 + 8);
        v11 = v10 < 1;
        if (v10 == 1)
        {
          v11 = *(v9 + 10) < a2[2];
        }

        if (!v11)
        {
          break;
        }

        v9 = v9[1];
        if (!v9)
        {
          goto LABEL_23;
        }
      }

      v8 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    v8 = v6;
    v16 = v5;
    do
    {
      v17 = *(v16 + 8);
      v18 = v17 == v7;
      v11 = v17 < v7;
      v19 = v17 < v7;
      if (v11)
      {
        v20 = v8;
      }

      else
      {
        v20 = v16;
      }

      if (v18)
      {
        v19 = 0;
        v8 = v16;
      }

      else
      {
        v8 = v20;
      }

      v16 = v16[v19];
    }

    while (v16);
  }

LABEL_23:
  if (v8[6] == *a3)
  {
    v12 = (*a3)[1];
    v21 = *a2;
    if (*a2 == 1)
    {
      v22 = v6;
      v23 = v5;
      while (1)
      {
        v24 = *(v23 + 8);
        if (v24 == 1)
        {
          if (a2[2] < *(v23 + 10))
          {
            goto LABEL_31;
          }

LABEL_26:
          v23 = v23[1];
          if (!v23)
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (v24 <= 1)
          {
            goto LABEL_26;
          }

LABEL_31:
          v22 = v23;
          v23 = *v23;
          if (!v23)
          {
            goto LABEL_41;
          }
        }
      }
    }

    v22 = v6;
    v25 = v5;
    do
    {
      v26 = *(v25 + 8);
      v27 = v21 == v26;
      v11 = v21 < v26;
      v28 = v21 >= v26;
      if (v11)
      {
        v29 = v25;
      }

      else
      {
        v29 = v22;
      }

      if (v27)
      {
        v28 = 1;
      }

      else
      {
        v22 = v29;
      }

      v25 = v25[v28];
    }

    while (v25);
LABEL_41:
    if (v22 == v6)
    {
      v13 = (v6 - 1);
      if (v12 != a1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = (v6 - 1);
      if (v12 != v22[6])
      {
        goto LABEL_43;
      }
    }

LABEL_12:
    v14 = v8[1];
    if (v14)
    {
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v30 = v8;
      do
      {
        v15 = v30[2];
        v18 = *v15 == v30;
        v30 = v15;
      }

      while (!v18);
    }

    if (*v13 == v8)
    {
      *v13 = v15;
    }

    --a1[5];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v5, v8);
    operator delete(v8);
  }

LABEL_52:
  v31 = *a3;
  v32 = **a3;
  v33 = (*a3)[1];
  *(v32 + 8) = v33;
  *v33 = v32;
  --a1[2];
  v34 = v31[3];
  if (v34)
  {
    if (atomic_fetch_add(v34 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v34 + 16))(v34);
      if (atomic_fetch_add(v34 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v34 + 24))(v34);
      }
    }
  }

  operator delete(v31);
  return v33;
}

void boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::push_back(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 176);
  if (v4 != *(a1 + 160))
  {
    v11 = *a2;
    *(*(a1 + 168) + 16 * v4) = *a2;
    v12 = *(&v11 + 1);
    if (!*(&v11 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v4 == -1)
  {
    v15 = *a2;
    *(*(a1 + 168) - 16) = *a2;
    v12 = *(&v15 + 1);
    if (!*(&v15 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (4 * v4 <= (v4 + 1))
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 4 * v4;
  }

  if (v5 >= 0xB)
  {
    if (!(v5 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = *(a1 + 168);
  if (v4)
  {
    v8 = &v7[2 * v4];
    v9 = a1;
    do
    {
      v10 = v7[1];
      *v9 = *v7;
      v9[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
      }

      v7 += 2;
      v9 += 2;
    }

    while (v7 != v8);
    v7 = *(a1 + 168);
  }

  if (v7)
  {
    v13 = *(a1 + 176);
    if (v13 > 0)
    {
      v16 = &v7[2 * v13];
      do
      {
        v17 = *(v16 - 1);
        if (v17)
        {
          if (atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v17 + 16))(v17);
            if (atomic_fetch_add(v17 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v17 + 24))(v17);
            }
          }
        }

        v16 -= 2;
      }

      while (v16 > v7);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  *(a1 + 160) = v5;
  *(a1 + 168) = a1;
  v4 = *(a1 + 176);
  v14 = *a2;
  *(a1 + 16 * v4) = *a2;
  v12 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
LABEL_15:
    atomic_fetch_add_explicit((v12 + 8), 1u, memory_order_relaxed);
    v4 = *(a1 + 176);
  }

LABEL_16:
  *(a1 + 176) = v4 + 1;
}

uint64_t *std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::__emplace_unique_key_args<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::piecewise_construct_t const&,std::tuple<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_21:
    operator new();
  }

  v3 = *a2;
  if (*a2 == 1)
  {
    v4 = a2[2];
    while (1)
    {
      v5 = v2;
      v6 = *(v2 + 8);
      if (v6 == 1)
      {
        v7 = *(v2 + 10);
        if (v4 >= v7)
        {
          if (v7 >= v4)
          {
            return v5;
          }

          goto LABEL_10;
        }

LABEL_4:
        v2 = *v2;
        if (!*v5)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v6 > 1)
        {
          goto LABEL_4;
        }

LABEL_10:
        v2 = v2[1];
        if (!v2)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v8 = *(v2 + 8);
  if (v3 == v8)
  {
    return v2;
  }

  v5 = *(a1 + 8);
  while (1)
  {
    if (v3 < v8)
    {
      v2 = *v5;
      if (!*v5)
      {
        goto LABEL_21;
      }

      goto LABEL_17;
    }

    if (v8 >= v3)
    {
      return v5;
    }

    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_21;
    }

LABEL_17:
    v8 = *(v2 + 8);
    v5 = v2;
    if (v3 == v8)
    {
      return v2;
    }
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (!v21)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v21 + 24) == 1)
      {
LABEL_62:
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v20[2] = v30;
        v7[2] = v20;
        v21 = v7;
      }

      else
      {
        v20 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_61;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      v22[2] = v14;
    }

    v23 = v14[2];
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v15[2] = v23;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_69;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_69:
    v26 = v7;
  }

  else
  {
    *(v26 + 24) = 1;
    *(v7 + 24) = 0;
    v27 = *v26;
    v7[1] = *v26;
    if (v27)
    {
      *(v27 + 16) = v7;
    }

    v28 = v7[2];
    v26[2] = v28;
    v28[*v28 != v7] = v26;
    *v26 = v7;
    v7[2] = v26;
    v25 = v7;
  }

  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  *(v36 + 16) = v38;
  v35[2] = v36;
  return result;
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::__delete_node[abi:ne200100](int a1, void *__p)
{
  v3 = __p[3];
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  operator delete(__p);
}

uint64_t boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&,boost::any const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>::dereference(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    v3 = *(*(*a1 + 16) + 32);
    v4 = *(v3 + 24);
    if (!v4)
    {
      std::runtime_error::runtime_error(&v6, "call to empty boost::function");
      v6.__vftable = off_1004C1548;
      boost::throw_exception<boost::bad_function_call>(&v6);
    }

    (*((v4 & 0xFFFFFFFFFFFFFFFELL) + 8))(v3 + 32, *(v2 + 272), *(v2 + 280));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  return a1[2] + 1;
}

void boost::signals2::detail::connection_body_base::disconnect(boost::signals2::detail::connection_body_base *this)
{
  v6 = 10;
  __p = v5;
  v8 = 0;
  v9 = this;
  (*(*this + 24))(this);
  if (*(this + 24) == 1)
  {
    *(this + 24) = 0;
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(this, v5);
  }

  (*(*v9 + 32))(v9);
  v2 = __p;
  if (__p)
  {
    if (v8 > 0)
    {
      v3 = __p + 16 * v8;
      do
      {
        v4 = *(v3 - 1);
        if (v4)
        {
          if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v4 + 16))(v4);
            if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v4 + 24))(v4);
            }
          }
        }

        v3 -= 16;
      }

      while (v3 > v2);
    }

    if (v6 >= 0xB)
    {
      operator delete(__p);
    }
  }
}

void sub_10000A4D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_10000A4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void boost::throw_exception<boost::bad_function_call>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &off_1004C1518;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_1004C14A0;
  *(a1 + 8) = off_1004C14D0;
  *(a1 + 24) = off_1004C14F8;
  return a1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &off_1004C1570;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void boost::wrapexcept<boost::bad_function_call>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &off_1004C1570;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));

  operator delete();
}

void non-virtual thunk toboost::wrapexcept<boost::bad_function_call>::~wrapexcept(std::runtime_error *a1)
{
  a1[1].__vftable = &off_1004C1570;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

{
  a1[1].__vftable = &off_1004C1570;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);

  operator delete();
}

{
  a1->__vftable = &off_1004C1570;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

{
  a1->__vftable = &off_1004C1570;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete();
}

void boost::bad_function_call::~bad_function_call(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete();
}

void *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(void *a1)
{
  v1 = a1;
  v2 = *a1;
  if (v2)
  {
    v3 = v1;
    v4 = (*(*v2 + 32))(v2);
    v1 = v3;
    if (v4)
    {
      *v3 = 0;
    }
  }

  return v1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1004C1518;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = off_1004C1548;
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_1004C1570;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_1004C14A0;
  *(a1 + 8) = off_1004C14D0;
  *(a1 + 24) = off_1004C14F8;
  return a1;
}

uint64_t boost::exception_detail::copy_boost_exception(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v4 = *(a2 + 8);
  if (!v4)
  {
    v5 = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    result = *(a1 + 8);
    if (!result)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (*(*v4 + 40))(&v7);
  v5 = v7;
  v8 = v7;
  if (v7)
  {
    (*(*v7 + 24))(v7);
    if (v7)
    {
      (*(*v7 + 32))(v7);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  result = *(a1 + 8);
  if (result)
  {
LABEL_8:
    result = (*(*result + 32))(result);
  }

LABEL_9:
  *(a1 + 8) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
    return (*(*v5 + 32))(v5);
  }

  return result;
}

void sub_10000AF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  _Unwind_Resume(a1);
}

void sub_10000AF3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  _Unwind_Resume(a1);
}

void sub_10000AF50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(uint64_t a1)
{
  (*(**(a1 + 184) + 32))(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

void boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(_DWORD *a1, uint64_t a2)
{
  v2 = a1[7] - 1;
  a1[7] = v2;
  if (!v2)
  {
    (*(*a1 + 40))(&v5);
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::push_back(a2, &v5);
    v4 = *(&v5 + 1);
    if (*(&v5 + 1))
    {
      if (atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 16))(v4);
        if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v4 + 24))(v4);
        }
      }
    }
  }
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&,boost::any const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
{
  v1 = *a1;
  if (*a1 == a1[3])
  {
    return;
  }

  if (v1 == a1[1])
  {
LABEL_31:
    v18 = a1[3];
    if (v18 != v1)
    {
      v19 = *(v18 + 16);
      v26 = 10;
      __p = v25;
      v28 = 0;
      v29 = v19;
      (*(*v19 + 24))(v19);
      v20 = a1[2];
      a1[3] = a1[1];
      v21 = *(v20 + 296);
      if (v21)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v21, v25);
      }

      *(v20 + 296) = 0;
      (*(*v29 + 32))(v29);
      v22 = __p;
      if (__p)
      {
        if (v28 > 0)
        {
          v23 = __p + 16 * v28;
          do
          {
            v24 = *(v23 - 1);
            if (v24)
            {
              if (atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v24 + 16))(v24);
                if (atomic_fetch_add(v24 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v24 + 24))(v24);
                }
              }
            }

            v23 -= 16;
          }

          while (v23 > v22);
        }

        if (v26 >= 0xB)
        {
          operator delete(__p);
        }
      }
    }

    return;
  }

  while (1)
  {
    boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::clear((a1[2] + 8));
    v3 = *(*a1 + 16);
    v26 = 10;
    __p = v25;
    v28 = 0;
    v29 = v3;
    (*(*v3 + 24))(v3);
    boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>::nolock_grab_tracked_objects<boost::signals2::detail::connection_body_base,std::back_insert_iterator<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>>>(*(*a1 + 16), v25, (a1[2] + 8));
    v4 = *(*a1 + 16);
    v5 = a1[2];
    if ((*(v4 + 24) & 1) == 0)
    {
      ++*(v5 + 292);
LABEL_13:
      v11 = 1;
      goto LABEL_14;
    }

    ++*(v5 + 288);
    v6 = *(v4 + 16);
    if (v6)
    {
      if (atomic_load_explicit((v6 + 8), memory_order_acquire))
      {
        goto LABEL_13;
      }

      v5 = a1[2];
    }

    v7 = *a1;
    v8 = a1[1];
    a1[3] = *a1;
    if (v8 == v7)
    {
      v17 = *(v5 + 296);
      if (v17)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v17, v25);
      }

      v11 = 0;
      *(v5 + 296) = 0;
    }

    else
    {
      v9 = *(v7 + 16);
      v10 = *(v5 + 296);
      if (v10)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v10, v25);
      }

      *(v5 + 296) = v9;
      v11 = 0;
      if (v9)
      {
        ++*(v9 + 28);
      }
    }

LABEL_14:
    (*(*v29 + 32))(v29);
    v12 = __p;
    if (__p)
    {
      if (v28 > 0)
      {
        v15 = __p + 16 * v28;
        do
        {
          v16 = *(v15 - 1);
          if (v16)
          {
            if (atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v16 + 16))(v16);
              if (atomic_fetch_add(v16 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v16 + 24))(v16);
              }
            }
          }

          v15 -= 16;
        }

        while (v15 > v12);
      }

      if (v26 >= 0xB)
      {
        operator delete(__p);
      }
    }

    v13 = *a1;
    v1 = a1[1];
    if (!v11)
    {
      break;
    }

    v14 = *(v13 + 8);
    *a1 = v14;
    if (v14 == v1)
    {
      goto LABEL_31;
    }
  }

  if (v13 == v1)
  {
    goto LABEL_31;
  }
}

void sub_10000B578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_10000B58C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::clear(void *result)
{
  v1 = result[32];
  if (v1)
  {
    v2 = result;
    v3 = result[32];
    if (-24 * v1 < 0)
    {
      v4 = result[31] + 24 * v1;
      v5 = result[31];
      v6 = v4;
      do
      {
        v7 = *(v6 - 24);
        v6 -= 24;
        if (v7 == v7 >> 31)
        {
          v8 = *(v4 - 8);
          if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
          {
            result = (*(*v8 + 16))(v8);
            if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
            {
              result = (*(*v8 + 24))(v8);
            }
          }
        }

        else
        {
          result = *(v4 - 16);
          if (result)
          {
            result = (*(*result + 8))(result);
          }
        }

        v4 = v6;
      }

      while (v6 > v5);
      v3 = v2[32];
    }

    v2[32] = v3 - v1;
  }

  return result;
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>::nolock_grab_tracked_objects<boost::signals2::detail::connection_body_base,std::back_insert_iterator<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>>>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *v3;
    if (*v3 != v3[1])
    {
      while (1)
      {
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v4, &v11);
        if ((*v4 ^ (*v4 >> 31)) == 2)
        {
          if (!(*(**(v4 + 8) + 24))(*(v4 + 8)))
          {
            goto LABEL_6;
          }
        }

        else
        {
          v8 = *(v4 + 16);
          if (v8 && atomic_load_explicit((v8 + 8), memory_order_acquire))
          {
LABEL_6:
            boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::push_back(a3, &v11);
            v9 = 0;
            if (v11 == v11 >> 31)
            {
              goto LABEL_13;
            }

            goto LABEL_7;
          }
        }

        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(a1, a2);
        }

        v9 = 1;
        if (v11 == v11 >> 31)
        {
LABEL_13:
          v10 = v13;
          if (v13)
          {
            if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v10 + 16))(v10);
              if (atomic_fetch_add(v10 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v10 + 24))(v10);
              }
            }
          }

          goto LABEL_17;
        }

LABEL_7:
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }

LABEL_17:
        if ((v9 & 1) == 0)
        {
          v4 += 24;
          if (v4 != *(*(a1 + 32) + 8))
          {
            continue;
          }
        }

        return;
      }
    }
  }
}

void sub_10000B920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::~variant(uint64_t result)
{
  if (*result == *result >> 31)
  {
    v1 = *(result + 16);
    if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      (*(*v1 + 16))(v1);
      result = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        return v2;
      }
    }
  }

  else
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 8));
      return v4;
    }
  }

  return result;
}

uint64_t boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result ^ (*result >> 31);
  if (v2 == 2)
  {
    (*(**(result + 8) + 16))(&v8);
    *(a2 + 8) = (*(*v8 + 16))(v8);
    *a2 = 1;
    result = v8;
    if (v8)
    {
      return (*(*v8 + 8))(v8);
    }
  }

  else if (v2 == 1)
  {
    v3 = *(result + 16);
    if (v3)
    {
      v4 = *(v3 + 8);
      while (v4)
      {
        v5 = v4;
        atomic_compare_exchange_strong_explicit((v3 + 8), &v5, v4 + 1, memory_order_relaxed, memory_order_relaxed);
        v6 = v5 == v4;
        v4 = v5;
        if (v6)
        {
          *(a2 + 8) = *(result + 8);
          *(a2 + 16) = v3;
          *a2 = 0;
          return result;
        }
      }

      v3 = 0;
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = v3;
    *a2 = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_10000BBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[32];
  if (v4 == a1[30])
  {
    if (v4 == -1)
    {
      v6 = a1[31];
    }

    else
    {
      if (4 * v4 <= (v4 + 1))
      {
        v5 = v4 + 1;
      }

      else
      {
        v5 = 4 * v4;
      }

      v6 = a1;
      if (v5 >= 0xB)
      {
        if (v5 < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::uninitialized_copy[abi:ne200100]<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr> *,boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr> *>(a1[31], a1[31] + 24 * v4, a1);
      boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy(a1);
      a1[30] = v5;
      a1[31] = v6;
      v4 = a1[32];
    }

    v7 = &v6[3 * v4];
    result = *(a2 + 8);
    if (*a2 != *a2 >> 31)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = a1[31] + 24 * v4;
    result = *(a2 + 8);
    if (*a2 != *a2 >> 31)
    {
LABEL_15:
      result = (*(*result + 16))(result);
      *(v7 + 8) = result;
      goto LABEL_16;
    }
  }

  v9 = *(a2 + 16);
  *(v7 + 8) = result;
  *(v7 + 16) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
  }

LABEL_16:
  *v7 = *a2 ^ (*a2 >> 31);
  ++a1[32];
  return result;
}

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy(void *a1)
{
  v1 = a1[31];
  if (v1)
  {
    v3 = a1[32];
    if (v3 && -24 * v3 < 0)
    {
      v5 = v1 + 24 * v3;
      v6 = v5 - 24 * v3;
      v7 = v5;
      do
      {
        v8 = *(v7 - 24);
        v7 -= 24;
        if (v8 == v8 >> 31)
        {
          v9 = *(v5 - 8);
          if (v9)
          {
            if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v9 + 16))(v9);
              if (atomic_fetch_add(v9 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v9 + 24))(v9);
              }
            }
          }
        }

        else
        {
          v10 = *(v5 - 16);
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }
        }

        v5 = v7;
      }

      while (v7 > v6);
    }

    if (a1[30] >= 0xBuLL)
    {
      v4 = a1[31];

      operator delete(v4);
    }
  }
}

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::deallocate(int a1, void *__p, unint64_t a3)
{
  if (a3 >= 0xB)
  {
    operator delete(__p);
  }
}

uint64_t std::uninitialized_copy[abi:ne200100]<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr> *,boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = a1 + v6;
      v9 = *(a1 + v6 + 8);
      if (*(a1 + v6) == *(a1 + v6) >> 31)
      {
        v10 = *(v8 + 16);
        *(v7 + 8) = v9;
        *(v7 + 16) = v10;
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
        }
      }

      else
      {
        *(v7 + 8) = (*(*v9 + 16))(v9);
      }

      *v7 = *v8 ^ (*v8 >> 31);
      v6 += 24;
    }

    while (v8 + 24 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_10000BFB0(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = (v1 + 16);
    do
    {
      if (*(v3 - 4) == *(v3 - 4) >> 31)
      {
        v4 = *v3;
        if (*v3 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v4 + 16))(v4);
          if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v4 + 24))(v4);
          }
        }
      }

      else
      {
        v5 = *(v3 - 1);
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }
      }

      v3 += 3;
      v2 -= 24;
    }

    while (v2);
  }

  __cxa_rethrow();
}

uint64_t boost::signals2::detail::obj_scope_guard_impl2<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>,void (boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::*)(boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long),boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long>::~obj_scope_guard_impl2(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 24);
    v4 = (*(a1 + 8) + (v3 >> 1));
    if (v3)
    {
      v2 = *(*v4 + v2);
    }

    v2(v4, *(a1 + 32), *(a1 + 40));
  }

  return a1;
}

void sub_10000C100(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10000C0F0);
}

uint64_t *boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t *result)
{
  if (*(*result + 292) > *(*result + 288))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::force_cleanup_connections(result[1], result[2]);
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v14 = 10;
  __p = &v13;
  v16 = 0;
  v17 = v4;
  pthread_mutex_lock(v4);
  if (**a1 == a2)
  {
    v5 = *(a1 + 8);
    if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v6 = **a1;
    v7 = v6[1];
    v12 = v7;
    if (v6 != v7)
    {
      do
      {
        while (1)
        {
          v8 = v7[2];
          if ((*(v8 + 24) & 1) == 0)
          {
            break;
          }

          v7 = v7[1];
          v12 = v7;
          if (v7 == v6)
          {
            goto LABEL_10;
          }
        }

        v7 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::erase(v6, (v8 + 64), &v12);
        v6 = **a1;
        v12 = v7;
      }

      while (v7 != v6);
LABEL_10:
      v7 = v6;
    }

    *(a1 + 16) = v7;
  }

  pthread_mutex_unlock(v17);
  v9 = __p;
  if (__p)
  {
    if (v16 > 0)
    {
      v10 = __p + 16 * v16;
      do
      {
        v11 = *(v10 - 1);
        if (v11)
        {
          if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v11 + 16))(v11);
            if (atomic_fetch_add(v11 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v11 + 24))(v11);
            }
          }
        }

        v10 -= 16;
      }

      while (v10 > v9);
    }

    if (v14 >= 0xB)
    {
      operator delete(__p);
    }
  }
}

void sub_10000C510(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::detail::shared_count::~shared_count(va);
  _Unwind_Resume(a1);
}

void sub_10000C614(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::invocation_state>(v1);
  __cxa_rethrow();
}

uint64_t boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::invocation_state>(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = result;
        (*(*v1 + 16))(v1);
        result = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          result = v2;
        }
      }
    }

    v3 = *(result + 8);
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete();
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(std::string const&,boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::string const&,boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,std::string const&,boost::any const&)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete();
  }

  return result;
}

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

uint64_t boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::grouped_list(uint64_t a1, uint64_t a2)
{
  *a1 = a1;
  *(a1 + 8) = a1;
  *(a1 + 16) = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 24) = a1 + 32;
  v4 = *(a2 + 24);
  v5 = (a2 + 32);
  if (v4 != (a2 + 32))
  {
    do
    {
      if (!*std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>((a1 + 24), (a1 + 32), &v23, &v22, v4 + 8))
      {
        operator new();
      }

      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }

  *(a1 + 56) = *(a2 + 56);
  v9 = *(a2 + 24);
  if (v9 != v5)
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 8);
    do
    {
      v10[6] = v11;
      v12 = a2;
      if (v9 != v5)
      {
        v12 = *(v9 + 6);
      }

      v13 = *(v9 + 1);
      v14 = v13;
      v15 = v9;
      if (v13)
      {
        do
        {
          v16 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v16 = *(v15 + 2);
          v8 = *v16 == v15;
          v15 = v16;
        }

        while (!v8);
      }

      v17 = a2;
      if (v16 != v5)
      {
        v17 = *(v16 + 6);
      }

      while (v12 != v17)
      {
        v12 = *(v12 + 8);
        v11 = *(v11 + 8);
      }

      if (v13)
      {
        do
        {
          v18 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v18 = *(v9 + 2);
          v8 = *v18 == v9;
          v9 = v18;
        }

        while (!v8);
      }

      v19 = v10[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v10[2];
          v8 = *v20 == v10;
          v10 = v20;
        }

        while (!v8);
      }

      v9 = v18;
      v10 = v20;
    }

    while (v18 != v5);
  }

  return a1;
}

void sub_10000CC18(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(v2, *(v1 + 32));
  std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::~list(v1);
  _Unwind_Resume(a1);
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = v2[1];
      std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

uint64_t *std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_8;
  }

  v6 = *a5;
  v7 = *(a2 + 8);
  if (*a5 == v7)
  {
    if (v6 != 1)
    {
LABEL_6:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    v8 = a5[2];
    v9 = *(a2 + 10);
    if (v8 >= v9)
    {
      if (v9 >= v8)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_8:
    v11 = *a2;
    if (*a1 == a2)
    {
      v13 = a2;
    }

    else
    {
      if (v11)
      {
        v12 = *a2;
        do
        {
          v13 = v12;
          v12 = v12[1];
        }

        while (v12);
      }

      else
      {
        v17 = a2;
        do
        {
          v13 = v17[2];
          v18 = *v13 == v17;
          v17 = v13;
        }

        while (v18);
      }

      v19 = *(v13 + 8);
      v20 = *a5;
      if (v19 == *a5)
      {
        if (v19 != 1 || *(v13 + 10) >= a5[2])
        {
          goto LABEL_24;
        }
      }

      else if (v19 >= v20)
      {
LABEL_24:
        v21 = *v5;
        if (!*v5)
        {
          *a3 = v5;
          return a1 + 1;
        }

        if (v20 != 1)
        {
          while (1)
          {
            v26 = *(v21 + 8);
            v23 = v21;
            if (v20 == v26)
            {
              break;
            }

            if (v20 < v26)
            {
              v21 = *v21;
              v5 = v23;
              if (!*v23)
              {
                break;
              }
            }

            else
            {
              if (v26 >= v20)
              {
                break;
              }

              v5 = v21 + 1;
              v21 = v21[1];
              if (!v21)
              {
                break;
              }
            }
          }

LABEL_40:
          *a3 = v23;
          return v5;
        }

        v22 = a5[2];
        while (1)
        {
          v23 = v21;
          v24 = *(v21 + 8);
          if (v24 == 1)
          {
            v25 = *(v23 + 10);
            if (v22 >= v25)
            {
              if (v25 >= v22)
              {
                goto LABEL_40;
              }

              goto LABEL_33;
            }

LABEL_27:
            v21 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_40;
            }
          }

          else
          {
            if (v24 > 1)
            {
              goto LABEL_27;
            }

LABEL_33:
            v5 = v23 + 1;
            v21 = v23[1];
            if (!v21)
            {
              goto LABEL_40;
            }
          }
        }
      }
    }

    if (v11)
    {
      *a3 = v13;
      return v13 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v6 < v7)
  {
    goto LABEL_8;
  }

  if (v7 >= v6)
  {
    goto LABEL_6;
  }

LABEL_15:
  v14 = a2[1];
  if (v14)
  {
    v15 = a2[1];
    do
    {
      v16 = v15;
      v15 = *v15;
    }

    while (v15);
  }

  else
  {
    v27 = a2;
    do
    {
      v16 = v27[2];
      v18 = *v16 == v27;
      v27 = v16;
    }

    while (!v18);
  }

  if (v16 == v5)
  {
    goto LABEL_56;
  }

  v28 = *(v16 + 8);
  if (v6 == v28)
  {
    if (v6 == 1)
    {
      if (a5[2] >= *(v16 + 10))
      {
        v29 = *v5;
        if (!*v5)
        {
          *a3 = v5;
          return a1 + 1;
        }

        goto LABEL_60;
      }

      goto LABEL_56;
    }

    goto LABEL_58;
  }

  if (v6 < v28)
  {
LABEL_56:
    if (v14)
    {
      *a3 = v16;
      return v16;
    }

    else
    {
      *a3 = a2;
      return a2 + 1;
    }
  }

LABEL_58:
  v29 = *v5;
  if (*v5)
  {
    if (v6 == 1)
    {
LABEL_60:
      v30 = a5[2];
      v31 = v29;
      while (1)
      {
        v29 = v31;
        v32 = *(v31 + 8);
        if (v32 == 1)
        {
          v33 = *(v29 + 10);
          if (v30 >= v33)
          {
            if (v33 >= v30)
            {
              goto LABEL_71;
            }

            goto LABEL_67;
          }

LABEL_61:
          v31 = *v29;
          v5 = v29;
          if (!*v29)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v32 > 1)
          {
            goto LABEL_61;
          }

LABEL_67:
          v5 = v29 + 1;
          v31 = v29[1];
          if (!v31)
          {
            goto LABEL_71;
          }
        }
      }
    }

    v34 = *(v29 + 8);
    while (v6 != v34)
    {
      if (v6 < v34)
      {
        v35 = *v29;
        v5 = v29;
        if (!*v29)
        {
          break;
        }
      }

      else
      {
        if (v34 >= v6)
        {
          break;
        }

        v5 = v29 + 1;
        v35 = v29[1];
        if (!v35)
        {
          break;
        }
      }

      v34 = *(v35 + 32);
      v29 = v35;
    }
  }

  else
  {
    v29 = a1 + 1;
  }

LABEL_71:
  *a3 = v29;
  return v5;
}

void std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void sub_10000D1C0(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>>(v1);
  __cxa_rethrow();
}

uint64_t boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(result + 24, *(result + 32));
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy((v1 + 3), v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&,boost::any const&>>::~slot_call_iterator_cache(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    v8 = 10;
    __p = v7;
    v10 = 0;
    v11 = v2;
    (*(*v2 + 24))(v2);
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(*(a1 + 296), v7);
    (*(*v11 + 32))(v11);
    v3 = __p;
    if (__p)
    {
      if (v10 > 0)
      {
        v5 = __p + 16 * v10;
        do
        {
          v6 = *(v5 - 1);
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          v5 -= 16;
        }

        while (v5 > v3);
      }

      if (v8 >= 0xB)
      {
        operator delete(__p);
      }
    }
  }

  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_10000D618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void _GLOBAL__sub_I_PowerEventHandlerRcp_mm()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t std::unordered_map<std::string,std::vector<unsigned int>>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = *(v2 + 5);
      if (v6)
      {
        *(v2 + 6) = v6;
        operator delete(v6);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *CoreAnalyticsHistogramMetricsHelper::CoreAnalyticsHistogramMetricsHelper(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  *result = a2;
  return result;
}

void CoreAnalyticsHistogramMetricsHelper::ClearCAHistogramMetrics(CoreAnalyticsHistogramMetricsHelper *this)
{
  if (qword_1004E5588)
  {
    v1 = qword_1004E5580;
    if (qword_1004E5580)
    {
      do
      {
        v5 = *v1;
        v6 = *(v1 + 5);
        if (v6)
        {
          *(v1 + 6) = v6;
          operator delete(v6);
        }

        if (v1[39] < 0)
        {
          operator delete(*(v1 + 2));
        }

        operator delete(v1);
        v1 = v5;
      }

      while (v5);
    }

    qword_1004E5580 = 0;
    if (*(&tx_route_cost_histograms + 1))
    {
      bzero(tx_route_cost_histograms, 8 * *(&tx_route_cost_histograms + 1));
    }

    qword_1004E5588 = 0;
  }

  if (qword_1004E55B0)
  {
    v2 = qword_1004E55A8;
    if (qword_1004E55A8)
    {
      do
      {
        v7 = *v2;
        v8 = *(v2 + 5);
        if (v8)
        {
          *(v2 + 6) = v8;
          operator delete(v8);
        }

        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v7;
      }

      while (v7);
    }

    qword_1004E55A8 = 0;
    if (*(&rx_hop_count_histograms + 1))
    {
      bzero(rx_hop_count_histograms, 8 * *(&rx_hop_count_histograms + 1));
    }

    qword_1004E55B0 = 0;
  }

  if (qword_1004E55D8)
  {
    v3 = qword_1004E55D0;
    if (qword_1004E55D0)
    {
      do
      {
        v9 = *v3;
        v10 = *(v3 + 5);
        if (v10)
        {
          *(v3 + 6) = v10;
          operator delete(v10);
        }

        if (v3[39] < 0)
        {
          operator delete(*(v3 + 2));
        }

        operator delete(v3);
        v3 = v9;
      }

      while (v9);
    }

    qword_1004E55D0 = 0;
    if (*(&app_txcount_histograms + 1))
    {
      bzero(app_txcount_histograms, 8 * *(&app_txcount_histograms + 1));
    }

    qword_1004E55D8 = 0;
  }

  if (qword_1004E5600)
  {
    v4 = qword_1004E55F8;
    if (qword_1004E55F8)
    {
      do
      {
        v11 = *v4;
        v12 = *(v4 + 5);
        if (v12)
        {
          *(v4 + 6) = v12;
          operator delete(v12);
        }

        if (v4[39] < 0)
        {
          operator delete(*(v4 + 2));
        }

        operator delete(v4);
        v4 = v11;
      }

      while (v11);
    }

    qword_1004E55F8 = 0;
    if (*(&app_rxdupcount_histograms + 1))
    {
      bzero(app_rxdupcount_histograms, 8 * *(&app_rxdupcount_histograms + 1));
    }

    qword_1004E5600 = 0;
  }
}

void CoreAnalyticsHistogramMetricsHelper::InitializeCAHistogramMetrics(CoreAnalyticsHistogramMetricsHelper *this)
{
  CoreAnalyticsHistogramMetricsHelper::ClearCAHistogramMetrics(this);
  memset(&v1, 0, sizeof(v1));
  operator new();
}

void sub_10000DD18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v14 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

BOOL CoreAnalyticsHistogramMetricsHelper::ProcessAppAndRouteMetricsHistograms(CoreAnalyticsHistogramMetricsHelper *this)
{
  otAppUpdateAppAndRoutingMetricsHistograms(*this);
  if (CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms(this, &tx_route_cost_histograms))
  {
    return 1;
  }

  if (CoreAnalyticsHistogramMetricsHelper::ProcessGetHopCountMetricsHistograms(this, &rx_hop_count_histograms))
  {
    return 1;
  }

  if (CoreAnalyticsHistogramMetricsHelper::ProcessAppRetryCountMetricsHistograms(this, &app_txcount_histograms))
  {
    return 1;
  }

  return CoreAnalyticsHistogramMetricsHelper::ProcessAppDupCountMetricsHistograms(this, &app_rxdupcount_histograms) != 0;
}

uint64_t CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms(uint64_t *a1, void *a2)
{
  v4 = 0;
  v5 = 1;
  v6 = 119;
  while (1)
  {
    v7 = v5;
    v91 = 0;
    AvgRouteCostHistogram = otAppGetAvgRouteCostHistogram(*a1, &v91, 0, v4);
    if (!AvgRouteCostHistogram)
    {
      v80 = 0;
      goto LABEL_99;
    }

    if (v91 != 17)
    {
      v81 = 0;
      goto LABEL_106;
    }

    v9 = tx_route_cost_dict_keys + v6;
    v10 = (tx_route_cost_dict_keys + v6 - 119);
    if (*(tx_route_cost_dict_keys + v6 - 96) < 0)
    {
      v12 = AvgRouteCostHistogram;
      std::string::__init_copy_ctor_external(&v90, *v10, *(v9 - 111));
      AvgRouteCostHistogram = v12;
    }

    else
    {
      v11 = *v10;
      v90.__r_.__value_.__r.__words[2] = *(v9 - 103);
      *&v90.__r_.__value_.__l.__data_ = v11;
    }

    v13 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(AvgRouteCostHistogram, AvgRouteCostHistogram, 17, &v90, a2);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      v14 = v13;
      operator delete(v90.__r_.__value_.__l.__data_);
      v13 = v14;
    }

    if (v13)
    {
LABEL_113:
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg)
      {
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
        {
          CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
        }

        return 1;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_118;
      }

      return 1;
    }

    v91 = 0;
    v15 = otAppGetAvgRouteCostHistogram(*a1, &v91, 1u, v4);
    if (!v15)
    {
      v80 = 1;
      goto LABEL_99;
    }

    if (v91 != 17)
    {
      v81 = 1;
      goto LABEL_106;
    }

    v16 = tx_route_cost_dict_keys + v6;
    v17 = (tx_route_cost_dict_keys + v6 - 95);
    if (*(tx_route_cost_dict_keys + v6 - 72) < 0)
    {
      v19 = v15;
      std::string::__init_copy_ctor_external(&v90, *v17, *(v16 - 87));
      v15 = v19;
    }

    else
    {
      v18 = *v17;
      v90.__r_.__value_.__r.__words[2] = *(v16 - 79);
      *&v90.__r_.__value_.__l.__data_ = v18;
    }

    v20 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v15, v15, 17, &v90, a2);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      v21 = v20;
      operator delete(v90.__r_.__value_.__l.__data_);
      v20 = v21;
    }

    if (v20)
    {
      goto LABEL_113;
    }

    v91 = 0;
    v22 = otAppGetAvgRouteCostHistogram(*a1, &v91, 2u, v4);
    if (!v22)
    {
      v80 = 2;
      goto LABEL_99;
    }

    if (v91 != 17)
    {
      v81 = 2;
      goto LABEL_106;
    }

    v23 = tx_route_cost_dict_keys + v6;
    v24 = (tx_route_cost_dict_keys + v6 - 71);
    if (*(tx_route_cost_dict_keys + v6 - 48) < 0)
    {
      v26 = v22;
      std::string::__init_copy_ctor_external(&v90, *v24, *(v23 - 63));
      v22 = v26;
    }

    else
    {
      v25 = *v24;
      v90.__r_.__value_.__r.__words[2] = *(v23 - 55);
      *&v90.__r_.__value_.__l.__data_ = v25;
    }

    v27 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v22, v22, 17, &v90, a2);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      v28 = v27;
      operator delete(v90.__r_.__value_.__l.__data_);
      v27 = v28;
    }

    if (v27)
    {
      goto LABEL_113;
    }

    v91 = 0;
    v29 = otAppGetAvgRouteCostHistogram(*a1, &v91, 3u, v4);
    if (!v29)
    {
      v80 = 3;
      goto LABEL_99;
    }

    if (v91 != 17)
    {
      v81 = 3;
      goto LABEL_106;
    }

    v30 = tx_route_cost_dict_keys + v6;
    v31 = (tx_route_cost_dict_keys + v6 - 47);
    if (*(tx_route_cost_dict_keys + v6 - 24) < 0)
    {
      v33 = v29;
      std::string::__init_copy_ctor_external(&v90, *v31, *(v30 - 39));
      v29 = v33;
    }

    else
    {
      v32 = *v31;
      v90.__r_.__value_.__r.__words[2] = *(v30 - 31);
      *&v90.__r_.__value_.__l.__data_ = v32;
    }

    v34 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v29, v29, 17, &v90, a2);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      v35 = v34;
      operator delete(v90.__r_.__value_.__l.__data_);
      v34 = v35;
    }

    if (v34)
    {
      goto LABEL_113;
    }

    v91 = 0;
    v36 = otAppGetAvgRouteCostHistogram(*a1, &v91, 4u, v4);
    if (!v36)
    {
      break;
    }

    if (v91 != 17)
    {
      v81 = 4;
LABEL_106:
      v83 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (!v83)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          return 1;
        }

        goto LABEL_118;
      }

      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109888;
        v93 = v4;
        v94 = 1024;
        v95 = v81;
        v96 = 1024;
        v97 = v91;
        v98 = 1024;
        v99 = 17;
        v84 = "CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms for avgRouteCost appType:(%d), appTxCount:(%d), numEntries(%d) does not match MAX_ROUTE_COST_BOUND(%d)";
LABEL_110:
        _os_log_error_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, v84, buf, 0x1Au);
      }

      return 1;
    }

    v37 = (tx_route_cost_dict_keys + v6 - 23);
    if (*(tx_route_cost_dict_keys + v6) < 0)
    {
      v39 = v36;
      std::string::__init_copy_ctor_external(&v90, *v37, *(tx_route_cost_dict_keys + v6 - 15));
      v36 = v39;
    }

    else
    {
      v38 = *v37;
      v90.__r_.__value_.__r.__words[2] = *(tx_route_cost_dict_keys + v6 - 7);
      *&v90.__r_.__value_.__l.__data_ = v38;
    }

    v40 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v36, v36, 17, &v90, a2);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      v41 = v40;
      operator delete(v90.__r_.__value_.__l.__data_);
      v40 = v41;
    }

    if (v40)
    {
      goto LABEL_113;
    }

    v5 = 0;
    v6 += 120;
    v4 = 1;
    if ((v7 & 1) == 0)
    {
      v42 = 0;
      v43 = 1;
      for (i = 359; ; i += 120)
      {
        v45 = v43;
        v91 = 0;
        MaxRouteCostHistogram = otAppGetMaxRouteCostHistogram(*a1, &v91, 0, v42);
        if (!MaxRouteCostHistogram)
        {
LABEL_132:
          v87 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v87)
          {
            if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
            {
              CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
            }

            return 1;
          }

          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            return 1;
          }

          goto LABEL_150;
        }

        if (v91 != 17)
        {
          v86 = 0;
          goto LABEL_139;
        }

        v47 = tx_route_cost_dict_keys + i;
        v48 = (tx_route_cost_dict_keys + i - 119);
        if (*(tx_route_cost_dict_keys + i - 96) < 0)
        {
          v50 = MaxRouteCostHistogram;
          std::string::__init_copy_ctor_external(&__p, *v48, *(v47 - 111));
          MaxRouteCostHistogram = v50;
        }

        else
        {
          v49 = *v48;
          __p.__r_.__value_.__r.__words[2] = *(v47 - 103);
          *&__p.__r_.__value_.__l.__data_ = v49;
        }

        v51 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(MaxRouteCostHistogram, MaxRouteCostHistogram, 17, &__p, a2);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v52 = v51;
          operator delete(__p.__r_.__value_.__l.__data_);
          v51 = v52;
        }

        if (v51)
        {
LABEL_145:
          v88 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v88)
          {
            if (syslog_is_the_mask_enabled(3))
            {
              if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
              {
                CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
              }
            }

            return 1;
          }

          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            return 1;
          }

LABEL_150:
          CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
          return 1;
        }

        v91 = 0;
        v53 = otAppGetMaxRouteCostHistogram(*a1, &v91, 1u, v42);
        if (!v53)
        {
          goto LABEL_132;
        }

        if (v91 != 17)
        {
          v86 = 1;
          goto LABEL_139;
        }

        v54 = tx_route_cost_dict_keys + i;
        v55 = (tx_route_cost_dict_keys + i - 95);
        if (*(tx_route_cost_dict_keys + i - 72) < 0)
        {
          v57 = v53;
          std::string::__init_copy_ctor_external(&__p, *v55, *(v54 - 87));
          v53 = v57;
        }

        else
        {
          v56 = *v55;
          __p.__r_.__value_.__r.__words[2] = *(v54 - 79);
          *&__p.__r_.__value_.__l.__data_ = v56;
        }

        v58 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v53, v53, 17, &__p, a2);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v59 = v58;
          operator delete(__p.__r_.__value_.__l.__data_);
          v58 = v59;
        }

        if (v58)
        {
          goto LABEL_145;
        }

        v91 = 0;
        v60 = otAppGetMaxRouteCostHistogram(*a1, &v91, 2u, v42);
        if (!v60)
        {
          goto LABEL_132;
        }

        if (v91 != 17)
        {
          v86 = 2;
          goto LABEL_139;
        }

        v61 = tx_route_cost_dict_keys + i;
        v62 = (tx_route_cost_dict_keys + i - 71);
        if (*(tx_route_cost_dict_keys + i - 48) < 0)
        {
          v64 = v60;
          std::string::__init_copy_ctor_external(&__p, *v62, *(v61 - 63));
          v60 = v64;
        }

        else
        {
          v63 = *v62;
          __p.__r_.__value_.__r.__words[2] = *(v61 - 55);
          *&__p.__r_.__value_.__l.__data_ = v63;
        }

        v65 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v60, v60, 17, &__p, a2);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v66 = v65;
          operator delete(__p.__r_.__value_.__l.__data_);
          v65 = v66;
        }

        if (v65)
        {
          goto LABEL_145;
        }

        v91 = 0;
        v67 = otAppGetMaxRouteCostHistogram(*a1, &v91, 3u, v42);
        if (!v67)
        {
          goto LABEL_132;
        }

        if (v91 != 17)
        {
          v86 = 3;
          goto LABEL_139;
        }

        v68 = tx_route_cost_dict_keys + i;
        v69 = (tx_route_cost_dict_keys + i - 47);
        if (*(tx_route_cost_dict_keys + i - 24) < 0)
        {
          v71 = v67;
          std::string::__init_copy_ctor_external(&__p, *v69, *(v68 - 39));
          v67 = v71;
        }

        else
        {
          v70 = *v69;
          __p.__r_.__value_.__r.__words[2] = *(v68 - 31);
          *&__p.__r_.__value_.__l.__data_ = v70;
        }

        v72 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v67, v67, 17, &__p, a2);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v73 = v72;
          operator delete(__p.__r_.__value_.__l.__data_);
          v72 = v73;
        }

        if (v72)
        {
          goto LABEL_145;
        }

        v91 = 0;
        v74 = otAppGetMaxRouteCostHistogram(*a1, &v91, 4u, v42);
        if (!v74)
        {
          goto LABEL_132;
        }

        if (v91 != 17)
        {
          break;
        }

        v75 = (tx_route_cost_dict_keys + i - 23);
        if (*(tx_route_cost_dict_keys + i) < 0)
        {
          v77 = v74;
          std::string::__init_copy_ctor_external(&__p, *v75, *(tx_route_cost_dict_keys + i - 15));
          v74 = v77;
        }

        else
        {
          v76 = *v75;
          __p.__r_.__value_.__r.__words[2] = *(tx_route_cost_dict_keys + i - 7);
          *&__p.__r_.__value_.__l.__data_ = v76;
        }

        result = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v74, v74, 17, &__p, a2);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v79 = result;
          operator delete(__p.__r_.__value_.__l.__data_);
          result = v79;
        }

        if (result)
        {
          goto LABEL_145;
        }

        v43 = 0;
        v42 = 1;
        if ((v45 & 1) == 0)
        {
          return result;
        }
      }

      v86 = 4;
LABEL_139:
      v83 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (!v83)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          return 1;
        }

        goto LABEL_150;
      }

      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109888;
        v93 = v42;
        v94 = 1024;
        v95 = v86;
        v96 = 1024;
        v97 = v91;
        v98 = 1024;
        v99 = 17;
        v84 = "CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms for maxRouteCost appType:(%d), appTxCount:(%d), numEntries(%d) does not match MAX_ROUTE_COST_BOUND(%d)";
        goto LABEL_110;
      }

      return 1;
    }
  }

  v80 = 4;
LABEL_99:
  v82 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v82)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v93 = v4;
      v94 = 1024;
      v95 = v80;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms histEntries is null for avgroutecost for appType:%d appTxCount:%d", buf, 0xEu);
    }

    return 1;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
LABEL_118:
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  return 1;
}

void sub_10000E900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreAnalyticsHistogramMetricsHelper::ProcessGetHopCountMetricsHistograms(uint64_t *a1, void *a2)
{
  v4 = 0;
  v5 = 1;
  v6 = 119;
  while (1)
  {
    v7 = v5;
    v92 = 0;
    AvgHopCountHistogram = otAppGetAvgHopCountHistogram(*a1, &v92, 0, v4);
    if (!AvgHopCountHistogram)
    {
      v80 = 0;
      goto LABEL_99;
    }

    if (v92 != 17)
    {
      v81 = 0;
      goto LABEL_107;
    }

    v9 = rx_hop_count_dict_keys + v6;
    v10 = (rx_hop_count_dict_keys + v6 - 119);
    if (*(rx_hop_count_dict_keys + v6 - 96) < 0)
    {
      v12 = AvgHopCountHistogram;
      std::string::__init_copy_ctor_external(&v91, *v10, *(v9 - 111));
      AvgHopCountHistogram = v12;
    }

    else
    {
      v11 = *v10;
      v91.__r_.__value_.__r.__words[2] = *(v9 - 103);
      *&v91.__r_.__value_.__l.__data_ = v11;
    }

    v13 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(AvgHopCountHistogram, AvgHopCountHistogram, 17, &v91, a2);
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      v14 = v13;
      operator delete(v91.__r_.__value_.__l.__data_);
      v13 = v14;
    }

    if (v13)
    {
LABEL_114:
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg)
      {
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
        {
          CoreAnalyticsHistogramMetricsHelper::ProcessGetHopCountMetricsHistograms();
        }

        return 1;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }

      return 1;
    }

    v92 = 0;
    v15 = otAppGetAvgHopCountHistogram(*a1, &v92, 1u, v4);
    if (!v15)
    {
      v80 = 1;
      goto LABEL_99;
    }

    if (v92 != 17)
    {
      v81 = 1;
      goto LABEL_107;
    }

    v16 = rx_hop_count_dict_keys + v6;
    v17 = (rx_hop_count_dict_keys + v6 - 95);
    if (*(rx_hop_count_dict_keys + v6 - 72) < 0)
    {
      v19 = v15;
      std::string::__init_copy_ctor_external(&v91, *v17, *(v16 - 87));
      v15 = v19;
    }

    else
    {
      v18 = *v17;
      v91.__r_.__value_.__r.__words[2] = *(v16 - 79);
      *&v91.__r_.__value_.__l.__data_ = v18;
    }

    v20 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v15, v15, 17, &v91, a2);
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      v21 = v20;
      operator delete(v91.__r_.__value_.__l.__data_);
      v20 = v21;
    }

    if (v20)
    {
      goto LABEL_114;
    }

    v92 = 0;
    v22 = otAppGetAvgHopCountHistogram(*a1, &v92, 2u, v4);
    if (!v22)
    {
      v80 = 2;
      goto LABEL_99;
    }

    if (v92 != 17)
    {
      v81 = 2;
      goto LABEL_107;
    }

    v23 = rx_hop_count_dict_keys + v6;
    v24 = (rx_hop_count_dict_keys + v6 - 71);
    if (*(rx_hop_count_dict_keys + v6 - 48) < 0)
    {
      v26 = v22;
      std::string::__init_copy_ctor_external(&v91, *v24, *(v23 - 63));
      v22 = v26;
    }

    else
    {
      v25 = *v24;
      v91.__r_.__value_.__r.__words[2] = *(v23 - 55);
      *&v91.__r_.__value_.__l.__data_ = v25;
    }

    v27 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v22, v22, 17, &v91, a2);
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      v28 = v27;
      operator delete(v91.__r_.__value_.__l.__data_);
      v27 = v28;
    }

    if (v27)
    {
      goto LABEL_114;
    }

    v92 = 0;
    v29 = otAppGetAvgHopCountHistogram(*a1, &v92, 3u, v4);
    if (!v29)
    {
      v80 = 3;
      goto LABEL_99;
    }

    if (v92 != 17)
    {
      v81 = 3;
      goto LABEL_107;
    }

    v30 = rx_hop_count_dict_keys + v6;
    v31 = (rx_hop_count_dict_keys + v6 - 47);
    if (*(rx_hop_count_dict_keys + v6 - 24) < 0)
    {
      v33 = v29;
      std::string::__init_copy_ctor_external(&v91, *v31, *(v30 - 39));
      v29 = v33;
    }

    else
    {
      v32 = *v31;
      v91.__r_.__value_.__r.__words[2] = *(v30 - 31);
      *&v91.__r_.__value_.__l.__data_ = v32;
    }

    v34 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v29, v29, 17, &v91, a2);
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      v35 = v34;
      operator delete(v91.__r_.__value_.__l.__data_);
      v34 = v35;
    }

    if (v34)
    {
      goto LABEL_114;
    }

    v92 = 0;
    v36 = otAppGetAvgHopCountHistogram(*a1, &v92, 4u, v4);
    if (!v36)
    {
      v80 = 4;
LABEL_99:
      v82 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v82)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          v94 = v4;
          v95 = 1024;
          v96 = v80;
          v83 = "CoreAnalyticsHistogramMetricsHelper::ProcessGetHopCountMetricsHistograms histEntries is null for avghopcount for appType:%d appTxCount:%d";
LABEL_103:
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, v83, buf, 0xEu);
        }

        return 1;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        return 1;
      }

LABEL_119:
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
      return 1;
    }

    if (v92 != 17)
    {
      break;
    }

    v37 = (rx_hop_count_dict_keys + v6 - 23);
    if (*(rx_hop_count_dict_keys + v6) < 0)
    {
      v39 = v36;
      std::string::__init_copy_ctor_external(&v91, *v37, *(rx_hop_count_dict_keys + v6 - 15));
      v36 = v39;
    }

    else
    {
      v38 = *v37;
      v91.__r_.__value_.__r.__words[2] = *(rx_hop_count_dict_keys + v6 - 7);
      *&v91.__r_.__value_.__l.__data_ = v38;
    }

    v40 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v36, v36, 17, &v91, a2);
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      v41 = v40;
      operator delete(v91.__r_.__value_.__l.__data_);
      v40 = v41;
    }

    if (v40)
    {
      goto LABEL_114;
    }

    v5 = 0;
    v6 += 120;
    v4 = 1;
    if ((v7 & 1) == 0)
    {
      v42 = 0;
      v43 = 1;
      for (i = 359; ; i += 120)
      {
        v45 = v43;
        v92 = 0;
        MaxHopCountHistogram = otAppGetMaxHopCountHistogram(*a1, &v92, 0, v42);
        if (!MaxHopCountHistogram)
        {
          v87 = 0;
          goto LABEL_134;
        }

        if (v92 != 17)
        {
          v88 = 0;
          goto LABEL_141;
        }

        v47 = rx_hop_count_dict_keys + i;
        v48 = (rx_hop_count_dict_keys + i - 119);
        if (*(rx_hop_count_dict_keys + i - 96) < 0)
        {
          v50 = MaxHopCountHistogram;
          std::string::__init_copy_ctor_external(&__p, *v48, *(v47 - 111));
          MaxHopCountHistogram = v50;
        }

        else
        {
          v49 = *v48;
          __p.__r_.__value_.__r.__words[2] = *(v47 - 103);
          *&__p.__r_.__value_.__l.__data_ = v49;
        }

        v51 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(MaxHopCountHistogram, MaxHopCountHistogram, 17, &__p, a2);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v52 = v51;
          operator delete(__p.__r_.__value_.__l.__data_);
          v51 = v52;
        }

        if (v51)
        {
LABEL_147:
          v89 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v89)
          {
            if (syslog_is_the_mask_enabled(3))
            {
              if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
              {
                CoreAnalyticsHistogramMetricsHelper::ProcessGetHopCountMetricsHistograms();
              }
            }

            return 1;
          }

          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            return 1;
          }

          goto LABEL_152;
        }

        v92 = 0;
        v53 = otAppGetMaxHopCountHistogram(*a1, &v92, 1u, v42);
        if (!v53)
        {
          v87 = 1;
          goto LABEL_134;
        }

        if (v92 != 17)
        {
          v88 = 1;
          goto LABEL_141;
        }

        v54 = rx_hop_count_dict_keys + i;
        v55 = (rx_hop_count_dict_keys + i - 95);
        if (*(rx_hop_count_dict_keys + i - 72) < 0)
        {
          v57 = v53;
          std::string::__init_copy_ctor_external(&__p, *v55, *(v54 - 87));
          v53 = v57;
        }

        else
        {
          v56 = *v55;
          __p.__r_.__value_.__r.__words[2] = *(v54 - 79);
          *&__p.__r_.__value_.__l.__data_ = v56;
        }

        v58 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v53, v53, 17, &__p, a2);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v59 = v58;
          operator delete(__p.__r_.__value_.__l.__data_);
          v58 = v59;
        }

        if (v58)
        {
          goto LABEL_147;
        }

        v92 = 0;
        v60 = otAppGetMaxHopCountHistogram(*a1, &v92, 2u, v42);
        if (!v60)
        {
          v87 = 2;
          goto LABEL_134;
        }

        if (v92 != 17)
        {
          v88 = 2;
          goto LABEL_141;
        }

        v61 = rx_hop_count_dict_keys + i;
        v62 = (rx_hop_count_dict_keys + i - 71);
        if (*(rx_hop_count_dict_keys + i - 48) < 0)
        {
          v64 = v60;
          std::string::__init_copy_ctor_external(&__p, *v62, *(v61 - 63));
          v60 = v64;
        }

        else
        {
          v63 = *v62;
          __p.__r_.__value_.__r.__words[2] = *(v61 - 55);
          *&__p.__r_.__value_.__l.__data_ = v63;
        }

        v65 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v60, v60, 17, &__p, a2);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v66 = v65;
          operator delete(__p.__r_.__value_.__l.__data_);
          v65 = v66;
        }

        if (v65)
        {
          goto LABEL_147;
        }

        v92 = 0;
        v67 = otAppGetMaxHopCountHistogram(*a1, &v92, 3u, v42);
        if (!v67)
        {
          v87 = 3;
          goto LABEL_134;
        }

        if (v92 != 17)
        {
          v88 = 3;
          goto LABEL_141;
        }

        v68 = rx_hop_count_dict_keys + i;
        v69 = (rx_hop_count_dict_keys + i - 47);
        if (*(rx_hop_count_dict_keys + i - 24) < 0)
        {
          v71 = v67;
          std::string::__init_copy_ctor_external(&__p, *v69, *(v68 - 39));
          v67 = v71;
        }

        else
        {
          v70 = *v69;
          __p.__r_.__value_.__r.__words[2] = *(v68 - 31);
          *&__p.__r_.__value_.__l.__data_ = v70;
        }

        v72 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v67, v67, 17, &__p, a2);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v73 = v72;
          operator delete(__p.__r_.__value_.__l.__data_);
          v72 = v73;
        }

        if (v72)
        {
          goto LABEL_147;
        }

        v92 = 0;
        v74 = otAppGetMaxHopCountHistogram(*a1, &v92, 4u, v42);
        if (!v74)
        {
          v87 = 4;
LABEL_134:
          v82 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v82)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
            {
              *buf = 67109376;
              v94 = v42;
              v95 = 1024;
              v96 = v87;
              v83 = "CoreAnalyticsHistogramMetricsHelper::ProcessGetHopCountMetricsHistograms histEntries is null for maxhopcount for appType:%d appTxCount:%d";
              goto LABEL_103;
            }

            return 1;
          }

          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            return 1;
          }

LABEL_152:
          CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
          return 1;
        }

        if (v92 != 17)
        {
          break;
        }

        v75 = (rx_hop_count_dict_keys + i - 23);
        if (*(rx_hop_count_dict_keys + i) < 0)
        {
          v77 = v74;
          std::string::__init_copy_ctor_external(&__p, *v75, *(rx_hop_count_dict_keys + i - 15));
          v74 = v77;
        }

        else
        {
          v76 = *v75;
          __p.__r_.__value_.__r.__words[2] = *(rx_hop_count_dict_keys + i - 7);
          *&__p.__r_.__value_.__l.__data_ = v76;
        }

        result = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v74, v74, 17, &__p, a2);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v79 = result;
          operator delete(__p.__r_.__value_.__l.__data_);
          result = v79;
        }

        if (result)
        {
          goto LABEL_147;
        }

        v43 = 0;
        v42 = 1;
        if ((v45 & 1) == 0)
        {
          return result;
        }
      }

      v88 = 4;
LABEL_141:
      v84 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (!v84)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          return 1;
        }

        goto LABEL_152;
      }

      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109888;
        v94 = v42;
        v95 = 1024;
        v96 = v88;
        v97 = 1024;
        v98 = v92;
        v99 = 1024;
        v100 = 17;
        v85 = "CoreAnalyticsHistogramMetricsHelper::ProcessGetHopCountMetricsHistograms for maxHopCount appType:(%d), appTxCount:(%d), numEntries(%d) does not match MAX_ROUTE_COST_BOUND(%d)";
        goto LABEL_111;
      }

      return 1;
    }
  }

  v81 = 4;
LABEL_107:
  v84 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v84)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    goto LABEL_119;
  }

  if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109888;
    v94 = v4;
    v95 = 1024;
    v96 = v81;
    v97 = 1024;
    v98 = v92;
    v99 = 1024;
    v100 = 17;
    v85 = "CoreAnalyticsHistogramMetricsHelper::ProcessGetHopCountMetricsHistograms for avgHopCount appType:(%d), appTxCount:(%d), numEntries(%d) does not match MAX_ROUTE_COST_BOUND(%d)";
LABEL_111:
    _os_log_error_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, v85, buf, 0x1Au);
  }

  return 1;
}

void sub_10000F42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreAnalyticsHistogramMetricsHelper::ProcessAppRetryCountMetricsHistograms(uint64_t *a1, void *a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  for (i = 119; ; i += 120)
  {
    v9 = v7;
    v54 = 0;
    AppTxCountHistogram = otAppGetAppTxCountHistogram(*a1, &v54, 0, v6);
    if (!AppTxCountHistogram)
    {
LABEL_56:
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg)
      {
        if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
        {
          CoreAnalyticsHistogramMetricsHelper::ProcessAppRetryCountMetricsHistograms();
        }

        return 1;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        return 1;
      }

      goto LABEL_76;
    }

    if (v54 != 5)
    {
      v45 = 0;
      goto LABEL_63;
    }

    v11 = app_txcount_dict_keys + i;
    v12 = (app_txcount_dict_keys + i - 119);
    if (*(app_txcount_dict_keys + i - 96) < 0)
    {
      v14 = AppTxCountHistogram;
      std::string::__init_copy_ctor_external(&__p, *v12, *(v11 - 111));
      AppTxCountHistogram = v14;
    }

    else
    {
      v13 = *v12;
      __p.__r_.__value_.__r.__words[2] = *(v11 - 103);
      *&__p.__r_.__value_.__l.__data_ = v13;
    }

    v15 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(AppTxCountHistogram, AppTxCountHistogram, 5, &__p, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v16 = v15;
      operator delete(__p.__r_.__value_.__l.__data_);
      v15 = v16;
    }

    if (v15)
    {
      v46 = 0;
      goto LABEL_70;
    }

    v54 = 0;
    v17 = otAppGetAppTxCountHistogram(*a1, &v54, 1u, v6);
    if (!v17)
    {
      goto LABEL_56;
    }

    if (v54 != 5)
    {
      v45 = 1;
      goto LABEL_63;
    }

    v18 = app_txcount_dict_keys + i;
    v19 = (app_txcount_dict_keys + i - 95);
    if (*(app_txcount_dict_keys + i - 72) < 0)
    {
      v21 = v17;
      std::string::__init_copy_ctor_external(&__p, *v19, *(v18 - 87));
      v17 = v21;
    }

    else
    {
      v20 = *v19;
      __p.__r_.__value_.__r.__words[2] = *(v18 - 79);
      *&__p.__r_.__value_.__l.__data_ = v20;
    }

    v22 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v17, v17, 5, &__p, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v23 = v22;
      operator delete(__p.__r_.__value_.__l.__data_);
      v22 = v23;
    }

    if (v22)
    {
      v4 = v5 + 1;
      v46 = 1;
      goto LABEL_70;
    }

    v54 = 0;
    v24 = otAppGetAppTxCountHistogram(*a1, &v54, 2u, v6);
    if (!v24)
    {
      goto LABEL_56;
    }

    if (v54 != 5)
    {
      v45 = 2;
      goto LABEL_63;
    }

    v25 = app_txcount_dict_keys + i;
    v26 = (app_txcount_dict_keys + i - 71);
    if (*(app_txcount_dict_keys + i - 48) < 0)
    {
      v28 = v24;
      std::string::__init_copy_ctor_external(&__p, *v26, *(v25 - 63));
      v24 = v28;
    }

    else
    {
      v27 = *v26;
      __p.__r_.__value_.__r.__words[2] = *(v25 - 55);
      *&__p.__r_.__value_.__l.__data_ = v27;
    }

    v29 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v24, v24, 5, &__p, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v30 = v29;
      operator delete(__p.__r_.__value_.__l.__data_);
      v29 = v30;
    }

    if (v29)
    {
      v4 = v5 + 2;
      v46 = 2;
      goto LABEL_70;
    }

    v54 = 0;
    v31 = otAppGetAppTxCountHistogram(*a1, &v54, 3u, v6);
    if (!v31)
    {
      goto LABEL_56;
    }

    if (v54 != 5)
    {
      v45 = 3;
      goto LABEL_63;
    }

    v32 = app_txcount_dict_keys + i;
    v33 = (app_txcount_dict_keys + i - 47);
    if (*(app_txcount_dict_keys + i - 24) < 0)
    {
      v35 = v31;
      std::string::__init_copy_ctor_external(&__p, *v33, *(v32 - 39));
      v31 = v35;
    }

    else
    {
      v34 = *v33;
      __p.__r_.__value_.__r.__words[2] = *(v32 - 31);
      *&__p.__r_.__value_.__l.__data_ = v34;
    }

    v36 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v31, v31, 5, &__p, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v37 = v36;
      operator delete(__p.__r_.__value_.__l.__data_);
      v36 = v37;
    }

    if (v36)
    {
      v4 = v5 + 3;
      v46 = 3;
      goto LABEL_70;
    }

    v54 = 0;
    v38 = otAppGetAppTxCountHistogram(*a1, &v54, 4u, v6);
    if (!v38)
    {
      goto LABEL_56;
    }

    if (v54 != 5)
    {
      break;
    }

    v39 = (app_txcount_dict_keys + i - 23);
    if (*(app_txcount_dict_keys + i) < 0)
    {
      v41 = v38;
      std::string::__init_copy_ctor_external(&__p, *v39, *(app_txcount_dict_keys + i - 15));
      v38 = v41;
    }

    else
    {
      v40 = *v39;
      __p.__r_.__value_.__r.__words[2] = *(app_txcount_dict_keys + i - 7);
      *&__p.__r_.__value_.__l.__data_ = v40;
    }

    v42 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v38, v38, 5, &__p, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v43 = v42;
      operator delete(__p.__r_.__value_.__l.__data_);
      v42 = v43;
    }

    if (v42)
    {
      v4 = v5 + 4;
      v46 = 4;
LABEL_70:
      v52 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v52)
      {
        if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          v56 = v6;
          v57 = 1024;
          v58 = v46;
          v59 = 1024;
          v60 = v4;
          v49 = "CoreAnalyticsHistogramMetricsHelper::ProcessAppRetryCountMetricsHistograms Failed to add entry to histogram for appType:%d packetSizeEnumValue:%d dictKeyIndex:%d appTxRetry";
          v50 = v52;
          v51 = 20;
          goto LABEL_74;
        }

        return 1;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        return 1;
      }

LABEL_76:
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
      return 1;
    }

    v7 = 0;
    v4 += 5;
    v5 += 5;
    v6 = 1;
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v45 = 4;
LABEL_63:
  v48 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v48)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    goto LABEL_76;
  }

  if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109888;
    v56 = v54;
    v57 = 1024;
    v58 = 5;
    v59 = 1024;
    v60 = v6;
    v61 = 1024;
    v62 = v45;
    v49 = "CoreAnalyticsHistogramMetricsHelper::ProcessAppRetryCountMetricsHistograms numEntries(%d) does not match MAX_APP_TX_COUNT_BOUND(%d) for appType:%d packetSizeEnumValue:%d appTxRetry";
    v50 = v48;
    v51 = 26;
LABEL_74:
    _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, v49, buf, v51);
  }

  return 1;
}

void sub_10000FA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreAnalyticsHistogramMetricsHelper::ProcessAppDupCountMetricsHistograms(uint64_t *a1, void *a2)
{
  v4 = 0;
  v5 = 1;
  for (i = 119; ; i += 120)
  {
    v7 = v5;
    v49 = 0;
    AppRxDupCountHistogram = otAppGetAppRxDupCountHistogram(*a1, &v49, 0, v4);
    if (!AppRxDupCountHistogram)
    {
      v43 = 0;
      goto LABEL_57;
    }

    if (v49 != 5)
    {
      v44 = 0;
      goto LABEL_64;
    }

    v9 = app_rxdupcount_dict_keys + i;
    v10 = (app_rxdupcount_dict_keys + i - 119);
    if (*(app_rxdupcount_dict_keys + i - 96) < 0)
    {
      v12 = AppRxDupCountHistogram;
      std::string::__init_copy_ctor_external(&__p, *v10, *(v9 - 111));
      AppRxDupCountHistogram = v12;
    }

    else
    {
      v11 = *v10;
      __p.__r_.__value_.__r.__words[2] = *(v9 - 103);
      *&__p.__r_.__value_.__l.__data_ = v11;
    }

    v13 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(AppRxDupCountHistogram, AppRxDupCountHistogram, 5, &__p, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v14 = v13;
      operator delete(__p.__r_.__value_.__l.__data_);
      v13 = v14;
    }

    if (v13)
    {
LABEL_70:
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (!logging_obg)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          return 1;
        }

        goto LABEL_75;
      }

      if (syslog_is_the_mask_enabled(4))
      {
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
        {
          CoreAnalyticsHistogramMetricsHelper::ProcessAppDupCountMetricsHistograms();
        }
      }

      return 1;
    }

    v49 = 0;
    v15 = otAppGetAppRxDupCountHistogram(*a1, &v49, 1u, v4);
    if (!v15)
    {
      v43 = 1;
      goto LABEL_57;
    }

    if (v49 != 5)
    {
      v44 = 1;
      goto LABEL_64;
    }

    v16 = app_rxdupcount_dict_keys + i;
    v17 = (app_rxdupcount_dict_keys + i - 95);
    if (*(app_rxdupcount_dict_keys + i - 72) < 0)
    {
      v19 = v15;
      std::string::__init_copy_ctor_external(&__p, *v17, *(v16 - 87));
      v15 = v19;
    }

    else
    {
      v18 = *v17;
      __p.__r_.__value_.__r.__words[2] = *(v16 - 79);
      *&__p.__r_.__value_.__l.__data_ = v18;
    }

    v20 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v15, v15, 5, &__p, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v21 = v20;
      operator delete(__p.__r_.__value_.__l.__data_);
      v20 = v21;
    }

    if (v20)
    {
      goto LABEL_70;
    }

    v49 = 0;
    v22 = otAppGetAppRxDupCountHistogram(*a1, &v49, 2u, v4);
    if (!v22)
    {
      v43 = 2;
      goto LABEL_57;
    }

    if (v49 != 5)
    {
      v44 = 2;
      goto LABEL_64;
    }

    v23 = app_rxdupcount_dict_keys + i;
    v24 = (app_rxdupcount_dict_keys + i - 71);
    if (*(app_rxdupcount_dict_keys + i - 48) < 0)
    {
      v26 = v22;
      std::string::__init_copy_ctor_external(&__p, *v24, *(v23 - 63));
      v22 = v26;
    }

    else
    {
      v25 = *v24;
      __p.__r_.__value_.__r.__words[2] = *(v23 - 55);
      *&__p.__r_.__value_.__l.__data_ = v25;
    }

    v27 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v22, v22, 5, &__p, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v28 = v27;
      operator delete(__p.__r_.__value_.__l.__data_);
      v27 = v28;
    }

    if (v27)
    {
      goto LABEL_70;
    }

    v49 = 0;
    v29 = otAppGetAppRxDupCountHistogram(*a1, &v49, 3u, v4);
    if (!v29)
    {
      v43 = 3;
      goto LABEL_57;
    }

    if (v49 != 5)
    {
      v44 = 3;
      goto LABEL_64;
    }

    v30 = app_rxdupcount_dict_keys + i;
    v31 = (app_rxdupcount_dict_keys + i - 47);
    if (*(app_rxdupcount_dict_keys + i - 24) < 0)
    {
      v33 = v29;
      std::string::__init_copy_ctor_external(&__p, *v31, *(v30 - 39));
      v29 = v33;
    }

    else
    {
      v32 = *v31;
      __p.__r_.__value_.__r.__words[2] = *(v30 - 31);
      *&__p.__r_.__value_.__l.__data_ = v32;
    }

    v34 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v29, v29, 5, &__p, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v35 = v34;
      operator delete(__p.__r_.__value_.__l.__data_);
      v34 = v35;
    }

    if (v34)
    {
      goto LABEL_70;
    }

    v49 = 0;
    v36 = otAppGetAppRxDupCountHistogram(*a1, &v49, 4u, v4);
    if (!v36)
    {
      v43 = 4;
LABEL_57:
      v45 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v45)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          v51 = v4;
          v52 = 1024;
          v53 = v43;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "CoreAnalyticsHistogramMetricsHelper::ProcessAppDupCountMetricsHistograms histEntries is null for appDupCount for appType:%d packetSizeEnumValue:%d", buf, 0xEu);
        }

        return 1;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        return 1;
      }

LABEL_75:
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
      return 1;
    }

    if (v49 != 5)
    {
      break;
    }

    v37 = (app_rxdupcount_dict_keys + i - 23);
    if (*(app_rxdupcount_dict_keys + i) < 0)
    {
      v39 = v36;
      std::string::__init_copy_ctor_external(&__p, *v37, *(app_rxdupcount_dict_keys + i - 15));
      v36 = v39;
    }

    else
    {
      v38 = *v37;
      __p.__r_.__value_.__r.__words[2] = *(app_rxdupcount_dict_keys + i - 7);
      *&__p.__r_.__value_.__l.__data_ = v38;
    }

    v40 = CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(v36, v36, 5, &__p, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v41 = v40;
      operator delete(__p.__r_.__value_.__l.__data_);
      v40 = v41;
    }

    if (v40)
    {
      goto LABEL_70;
    }

    v5 = 0;
    v4 = 1;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v44 = 4;
LABEL_64:
  v46 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v46)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    goto LABEL_75;
  }

  if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109888;
    v51 = v49;
    v52 = 1024;
    v53 = 5;
    v54 = 1024;
    v55 = v4;
    v56 = 1024;
    v57 = v44;
    _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "CoreAnalyticsHistogramMetricsHelper::ProcessAppRetryCountMetricsHistograms numEntries(%d) does not match MAX_APP_TX_COUNT_BOUND(%d) for appType:%d packetSizeEnumValue:%d appRxDupCount", buf, 0x1Au);
  }

  return 1;
}

void sub_100010058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  *buf = a4;
  v9 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a5, a4);
  v10 = (v9[6] - v9[5]) >> 2;
  if (v10 == a3)
  {
    if (a3)
    {
      v11 = 0;
      do
      {
        *buf = a4;
        *(std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a5, a4)[5] + v11) = *(a2 + 4 * v11);
        ++v11;
      }

      while (v10 != v11);
    }

    return 0;
  }

  else
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v14 = logging_obg;
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = a4;
        if (*(a4 + 23) < 0)
        {
          v15 = *a4;
        }

        *buf = a4;
        v16 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a5, a4);
        v17 = (v16[6] - v16[5]) >> 2;
        *buf = 136315650;
        *&buf[4] = v15;
        v19 = 1024;
        v20 = v17;
        v21 = 1024;
        v22 = a3;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CoreAnalyticsHistogramMetricsHelper::AddHistogramToUMap failed keyName:(%s), histSize:(%d) does not match numEntries:(%d)", buf, 0x18u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    return 1;
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void *std::vector<std::string>::vector[abi:ne200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_100010410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](&a11);
  *(v11 + 8) = v12;
  std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v10 = 4 * __n;
      bzero(this->__end_, 4 * __n);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v6 = end - this->__begin_;
    v7 = (v6 >> 2) + __n;
    if (v7 >> 62)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - begin;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * __n;
    bzero(v11, 4 * __n);
    memcpy(0, begin, v6);
    this->__begin_ = 0;
    this->__end_ = &v11[v12];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_100010A88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned int>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_100010A9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned int>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned int>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        *(v2 + 48) = v3;
        operator delete(v3);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v23 = *(a2 + a3 - 48);
      v24 = *(a2 + a3 - 40);
      v25 = *(a2 + a3 - 24);
      v26 = *(a2 + a3 - 56);
      v27 = *(a2 + a3 - 16);
      v28 = *(a2 + a3 - 8);
      v29 = v26 + v27;
      v30 = 0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))));
      v31 = 0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47));
      v32 = *(a2 + a3 - 64) + a3;
      v33 = v32 + v26 + v23;
      v34 = __ROR8__(v33, 44) + v32;
      v35 = __ROR8__(v24 + v32 + v31, 21);
      v36 = v33 + v24;
      v37 = v34 + v35;
      v38 = v29 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v39 = v38 + v25 + v27;
      v40 = v39 + v28;
      v41 = __ROR8__(v39, 44) + v38 + __ROR8__(v38 + v24 + v28, 21);
      v43 = *a2;
      v42 = a2 + 4;
      v44 = v43 - 0x4B6D499041670D8DLL * v24;
      v45 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v46 = *(v42 - 3);
        v47 = v44 + v36 + v29 + v46;
        v48 = v42[2];
        v49 = v42[3];
        v50 = v42[1];
        v29 = v50 + v36 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v37 + v48, 42);
        v51 = v31 + v40;
        v52 = *(v42 - 2);
        v53 = *(v42 - 1);
        v54 = *(v42 - 4) - 0x4B6D499041670D8DLL * v37;
        v55 = v54 + v40 + v53;
        v56 = v54 + v46 + v52;
        v36 = v56 + v53;
        v57 = __ROR8__(v56, 44) + v54;
        v58 = (0xB492B66FBE98F273 * __ROR8__(v47, 37)) ^ v41;
        v44 = 0xB492B66FBE98F273 * __ROR8__(v51, 33);
        v37 = v57 + __ROR8__(v55 + v58, 21);
        v59 = v44 + v41 + *v42;
        v40 = v59 + v50 + v48 + v49;
        v41 = __ROR8__(v59 + v50 + v48, 44) + v59 + __ROR8__(v29 + v52 + v59 + v49, 21);
        v42 += 8;
        v31 = v58;
        v45 += 64;
      }

      while (v45);
      v60 = v58 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) ^ ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) >> 47));
      v61 = v44 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) >> 47));
    }

    else
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v16 = *(a2 + a3 - 24) + v14 + v6;
      v17 = 0xC3A5C85C97CB3127 * (v16 + *(a2 + a3 - 8) + v8 + v15) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + __ROR8__(*(a2 + a3 - 8) + v8 + v14, 52) + __ROR8__(v16, 31));
      return 0x9AE16A3B2F90404FLL * ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) ^ ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) >> 47));
    }
  }

  else if (a3 > 0x10)
  {
    v18 = a2[1];
    v19 = 0xB492B66FBE98F273 * *a2;
    v20 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v19 - v18, 43);
    v21 = v19 + a3 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
    v22 = 0x9DDFEA08EB382D69 * ((v20 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v21);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  }

  else if (a3 < 9)
  {
    if (a3 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a3)
      {
        v64 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v64 ^ (v64 >> 47));
      }
    }

    else
    {
      v62 = *(a2 + a3 - 4);
      v63 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v62);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) ^ ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 47));
    }
  }

  else
  {
    v3 = *(a2 + a3 - 8);
    v4 = __ROR8__(v3 + a3, a3);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

char *std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 2)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

void _GLOBAL__sub_I_CoreAnalyticsMetricsHelper_cpp()
{
  tx_route_cost_histograms = 0u;
  *&qword_1004E5580 = 0u;
  dword_1004E5590 = 1065353216;
  __cxa_atexit(std::unordered_map<std::string,std::vector<unsigned int>>::~unordered_map[abi:ne200100], &tx_route_cost_histograms, &_mh_execute_header);
  rx_hop_count_histograms = 0u;
  *&qword_1004E55A8 = 0u;
  dword_1004E55B8 = 1065353216;
  __cxa_atexit(std::unordered_map<std::string,std::vector<unsigned int>>::~unordered_map[abi:ne200100], &rx_hop_count_histograms, &_mh_execute_header);
  app_txcount_histograms = 0u;
  *&qword_1004E55D0 = 0u;
  dword_1004E55E0 = 1065353216;
  __cxa_atexit(std::unordered_map<std::string,std::vector<unsigned int>>::~unordered_map[abi:ne200100], &app_txcount_histograms, &_mh_execute_header);
  app_rxdupcount_histograms = 0u;
  *&qword_1004E55F8 = 0u;
  dword_1004E5608 = 1065353216;
  __cxa_atexit(std::unordered_map<std::string,std::vector<unsigned int>>::~unordered_map[abi:ne200100], &app_rxdupcount_histograms, &_mh_execute_header);
  operator new();
}

void sub_100012A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a74 < 0)
  {
    operator delete(__p);
    if ((a72 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a69 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a72 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a70);
  if ((a69 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a63 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a64);
  if ((a63 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a57 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a58);
  if ((a57 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a52);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a45 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a46);
  if ((a45 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a40);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a34);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a27 & 0x80000000) == 0)
    {
LABEL_22:
      _Unwind_Resume(a1);
    }

LABEL_21:
    operator delete(a22);
    _Unwind_Resume(a1);
  }

LABEL_20:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  goto LABEL_21;
}

void sub_100012C68()
{
  while (1)
  {
    v2 = *(v1 - 1);
    v1 -= 3;
    if (v2 < 0)
    {
      operator delete(*v1);
    }

    if (v1 == v0)
    {
      JUMPOUT(0x100012C60);
    }
  }
}

void sub_100012C90()
{
  while (1)
  {
    v2 = *(v1 - 1);
    v1 -= 3;
    if (v2 < 0)
    {
      operator delete(*v1);
    }

    if (v1 == v0)
    {
      JUMPOUT(0x100012C60);
    }
  }
}

void sub_100012CB8()
{
  while (1)
  {
    v2 = *(v1 - 1);
    v1 -= 3;
    if (v2 < 0)
    {
      operator delete(*v1);
    }

    if (v1 == v0)
    {
      JUMPOUT(0x100012C60);
    }
  }
}

void sub_100012CE0()
{
  while (1)
  {
    v2 = *(v0 - 1);
    v0 -= 3;
    if (v2 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == v1)
    {
      JUMPOUT(0x100012C60);
    }
  }
}

id startNetworkMonitoringOnBackbone()
{
  if (qword_100523A80 == -1)
  {
    result = qword_100523A70;
    if (!qword_100523A70)
    {
      return result;
    }
  }

  else
  {
    startNetworkMonitoringOnBackbone_cold_1();
    result = qword_100523A70;
    if (!qword_100523A70)
    {
      return result;
    }
  }

  return [result startNetworkMonitoring];
}

void __startNetworkMonitoringOnBackbone_block_invoke(id a1)
{
  v1 = [BackboneNetworkMonitor alloc];
  v2 = qword_100523A70;
  qword_100523A70 = v1;

  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  if (qword_100523A70)
  {
    v5 = v3;
    v4 = dispatch_queue_create("com.backbone.network.monitor", v3);
    [qword_100523A70 setMonitorQueue:v4];

    v3 = v5;
  }
}

id stopNetworkMonitoringOnBackbone()
{
  result = qword_100523A70;
  if (qword_100523A70)
  {
    return [qword_100523A70 stopNetworkMonitoring];
  }

  return result;
}

void getNetworkInterfaceNameOnBackbone(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a1 && a2 && a3)
  {
    *(a1 + 8) = 0;
    *a1 = 0;
    if (qword_100523A70)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = [qword_100523A70 getInterfaceName];
      *a2 = [qword_100523A70 isInterfaceConnected];
      *a3 = [qword_100523A70 isOdeonInterface];
      if (v7)
      {
        strncpy(a1, v7, 9uLL);
      }

      objc_autoreleasePoolPop(v6);
    }

    NSLog(@"BackboneIPv6InterfaceHelper: %s backbone interface name: %s... is connected\n", "getNetworkInterfaceNameOnBackbone", a1);
  }
}

void getWiFiNetworkInterfaceNameOnBackbone(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 0;
  v2 = objc_autoreleasePoolPush();
  if (qword_100523A88)
  {
    if ([qword_100523A88 length] <= 9)
    {
      v3 = [qword_100523A88 cStringUsingEncoding:4];
      if (v3)
      {
        strncpy(a1, v3, 9uLL);
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  NSLog(@"BackboneIPv6InterfaceHelper: %s WiFi interface name: %s... is connected\n", "getWiFiNetworkInterfaceNameOnBackbone", a1);
}

void allocWiFiInterface()
{
  if (allocWiFiInterface_onceToken != -1)
  {
    allocWiFiInterface_cold_1();
  }
}

void __allocWiFiInterface_block_invoke(id a1)
{
  v1 = objc_alloc_init(CWFInterface);
  v2 = qword_100523A78;
  qword_100523A78 = v1;

  if (qword_100523A78)
  {
    [qword_100523A78 activate];
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    attr = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v4 = dispatch_queue_create("com.backbone.wifi.monitor", attr);
    v5 = wifiLinkStatusMonitorQueue;
    wifiLinkStatusMonitorQueue = v4;

    startNetworkMonitoringOnWiFi();
  }

  else
  {
    NSLog(@"Failed to alloc wifi interface");
  }
}

void startNetworkMonitoringOnWiFi()
{
  v2 = 0;
  if (qword_100523A78)
  {
    if (([qword_100523A78 startMonitoringEventType:6 error:&v2] & 1) != 0 || !v2)
    {
      if (([qword_100523A78 startMonitoringEventType:14 error:&v2] & 1) != 0 || !v2)
      {
        if (([qword_100523A78 startMonitoringEventType:2 error:&v2] & 1) != 0 || !v2)
        {
          if (([qword_100523A78 startMonitoringEventType:3 error:&v2] & 1) != 0 || !v2)
          {
            if (([qword_100523A78 startMonitoringEventType:25 error:&v2] & 1) != 0 || !v2)
            {
              v1 = [v2 description];
              NSLog(@"%s: Register for WiFi link change event: %@", "startNetworkMonitoringOnWiFi", v1);

              dispatch_async(wifiLinkStatusMonitorQueue, &__block_literal_global_32);
              return;
            }

            v0 = [v2 description];
            NSLog(@"Register for WiFi auto join state changed event failed: %@", v0);
          }

          else
          {
            v0 = [v2 description];
            NSLog(@"Register for WiFi BSSID changed event failed: %@", v0);
          }
        }

        else
        {
          v0 = [v2 description];
          NSLog(@"Register for WiFi SSID changed event failed: %@", v0);
        }
      }

      else
      {
        v0 = [v2 description];
        NSLog(@"Register for WiFi roam status event failed: %@", v0);
      }
    }

    else
    {
      v0 = [v2 description];
      NSLog(@"Register for WiFi link change event failed: %@", v0);
    }
  }
}

id deallocWiFiInterface()
{
  result = qword_100523A78;
  if (qword_100523A78)
  {
    return [qword_100523A78 invalidate];
  }

  return result;
}

void __startNetworkMonitoringOnWiFi_block_invoke(id a1)
{
  v1 = [qword_100523A78 channel];
  _MergedGlobals_0 = [v1 is2GHz];

  v2 = [qword_100523A78 interfaceName];
  v3 = qword_100523A88;
  qword_100523A88 = v2;

  v5 = [qword_100523A78 cachedLinkDownStatus];
  if (v5)
  {
    isLinkDown = [v5 isLinkDown];
  }

  if (_MergedGlobals_0)
  {
    v4 = "true";
  }

  else
  {
    v4 = "false";
  }

  NSLog(@"%s: Is current WiFi channel in 2GHz band: %s\n", "startNetworkMonitoringOnWiFi_block_invoke", v4);
  [qword_100523A78 setEventHandler:&__block_literal_global_40];
}

void __startNetworkMonitoringOnWiFi_block_invoke_2(id a1, CWFEvent *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = wifiLinkStatusMonitorQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __startNetworkMonitoringOnWiFi_block_invoke_3;
    block[3] = &unk_1004C1720;
    v6 = v2;
    dispatch_async(v4, block);
  }
}

void __startNetworkMonitoringOnWiFi_block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  if (v2 <= 0x19)
  {
    if (((1 << v2) & 0x200400C) != 0)
    {
      v3 = [qword_100523A78 channel];
      _MergedGlobals_0 = [v3 is2GHz];

      v4 = [qword_100523A78 interfaceName];
      v5 = qword_100523A88;
      qword_100523A88 = v4;

      v6 = [qword_100523A78 opMode];
      isLinkDown = v6 == 0;
      v7 = [*(a1 + 32) type];
      v8 = "false";
      if (_MergedGlobals_0)
      {
        v9 = "true";
      }

      else
      {
        v9 = "false";
      }

      if (isLinkDown)
      {
        v8 = "true";
      }

      NSLog(@"%s: %ld event received: WiFiInterfaceName:%@ Is current WiFi channel in 2GHz band: %s isLinkDown:%s opmode:%d\n", "startNetworkMonitoringOnWiFi_block_invoke_3", v7, qword_100523A88, v9, v8, v6);
      v10 = [qword_100523A88 UTF8String];
      v11 = isLinkDown;
      v12 = _MergedGlobals_0;

      updateWiFiLinkState(v10, v11, v12);
    }

    else if (v2 == 6)
    {
      v13 = [qword_100523A78 channel];
      _MergedGlobals_0 = [v13 is2GHz];

      v14 = [qword_100523A78 interfaceName];
      v15 = qword_100523A88;
      qword_100523A88 = v14;

      v16 = [*(a1 + 32) info];
      v21 = [v16 objectForKeyedSubscript:CWFEventLinkChangeStatusKey];

      if (v21)
      {
        v17 = [v21 isLinkDown];
        isLinkDown = v17;
      }

      else
      {
        v17 = isLinkDown;
      }

      v18 = "false";
      if (_MergedGlobals_0)
      {
        v19 = "true";
      }

      else
      {
        v19 = "false";
      }

      if (v17)
      {
        v18 = "true";
      }

      NSLog(@"%s: CWFEventTypeLinkChanged received: WiFiInterfaceName:%@ Is current WiFi channel in 2GHz band: %s isLinkDown:%s\n", "startNetworkMonitoringOnWiFi_block_invoke_3", qword_100523A88, v19, v18);
      v20 = [qword_100523A88 UTF8String];
      updateWiFiLinkState(v20, isLinkDown, _MergedGlobals_0);
    }
  }
}

uint64_t isWiFiChannelOn2G()
{
  v0 = objc_autoreleasePoolPush();
  if (qword_100523A78 && ([qword_100523A78 channel], v1 = objc_claimAutoreleasedReturnValue(), v1, v1))
  {
    v2 = [qword_100523A78 channel];
    v3 = [v2 is2GHz];

    objc_autoreleasePoolPop(v0);
    v4 = "false";
    if (v3)
    {
      v4 = "true";
    }
  }

  else
  {
    objc_autoreleasePoolPop(v0);
    v3 = 0;
    v4 = "false";
  }

  NSLog(@"%s: is2GHzWiFi enabled:%s", "isWiFiChannelOn2G", v4);
  return v3 & 1;
}