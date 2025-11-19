uint64_t ot::Cli::Vendor::ProcessSetVendorIfsMinLifs(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v8, &v6, v2);
    if (!v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      v7 = otPlatVendorSetIfsMinLifs(InstancePtr, v6);
      if (!v7)
      {
        ot::Cli::Utils::OutputLine(this, "MinLIFS=%u", v6);
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorIfsMinRetxSifs(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v4 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    ot::Cli::Utils::OutputLine(this, "RICK UPMERGE CANDIDATE");
  }

  return v4;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorIfsMinRetxLifs(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v4 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    ot::Cli::Utils::OutputLine(this, "RICK UPMERGE CANDIDATE");
  }

  return v4;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorIfsAckTurnAroundMode(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (!ot::Utils::CmdLineParser::Arg::IsEmpty(a2) && ot::Utils::CmdLineParser::Arg::IsEmpty((v8 + 1)))
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v8, &v6, v2);
    if (!v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      v7 = otPlatVendorSetIfsAckTurnAroundMode(InstancePtr, v6);
      if (!v7)
      {
        ot::Cli::Utils::OutputLine(this, "AckTurnAroundMode=%u", v6);
        persist_ifs_ackturnaround_mode();
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorIfsAckTurnAroundEnable(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (!ot::Utils::CmdLineParser::Arg::IsEmpty(a2) && ot::Utils::CmdLineParser::Arg::IsEmpty((v8 + 1)))
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v8, &v6, v2);
    if (!v7)
    {
      if (v6 <= 1u)
      {
        InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
        v7 = otPlatVendorSetIfsAckTurnAroundEnable(InstancePtr, v6);
        if (!v7)
        {
          ot::Cli::Utils::OutputLine(this, "AckTurnAroundEnable=%u", v6);
          persist_ifs_ackturnaround_enable();
        }
      }

      else
      {
        return 7;
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorIfsAckTurnAroundTime(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (!ot::Utils::CmdLineParser::Arg::IsEmpty(a2) && ot::Utils::CmdLineParser::Arg::IsEmpty((v8 + 1)))
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v8, &v6, v2);
    if (!v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      v7 = otPlatVendorSetIfsAckTurnAroundTime(InstancePtr, v6);
      if (!v7)
      {
        ot::Cli::Utils::OutputLine(this, "AckTurnAroundTime=%u", v6);
        persist_ifs_ackturnaround_time();
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorCntrStatsReset(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  ot::Cli::Utils::GetInstancePtr(this);
  v4 = otPlatVendorCntrStatsReset();
  if (!v4)
  {
    ot::Cli::Utils::OutputLine(this, "CnrtStatsReset=%s", v5);
  }

  return v4;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorOtRadioCounters(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  ot::Cli::Utils::GetInstancePtr(this);
  v4 = otPlatVendorResetOpenThreadRadioCounters();
  if (!v4)
  {
    ot::Cli::Utils::OutputLine(this, "Reset Radio counters");
  }

  return v4;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorRadioCounters(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  ot::Cli::Utils::GetInstancePtr(this);
  v4 = otPlatVendorResetRadioCounters();
  if (!v4)
  {
    ot::Cli::Utils::OutputLine(this, "Reset Radio Counters");
  }

  return v4;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorRadioStats(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  ot::Cli::Utils::GetInstancePtr(this);
  v4 = otPlatVendorResetRadioStats();
  if (!v4)
  {
    ot::Cli::Utils::OutputLine(this, "Reset RadioStats");
  }

  return v4;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorLoggingTest(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v10 = this;
  v9 = a2;
  v8 = 0;
  v7[7] = 1;
  v7[6] = 1;
  strcpy(v7, "hello");
  if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 1)))
  {
    return 7;
  }

  else
  {
    v8 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v9, &v7[7], v2);
    if (!v8)
    {
      v8 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v9 + 1, &v7[6], v3);
      if (!v8)
      {
        InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
        v8 = otPlatVendorLoggingTest(InstancePtr, v7[7], v7[6], v7);
        if (!v8)
        {
          ot::Cli::Utils::OutputLine(this, "Log test");
        }
      }
    }
  }

  return v8;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorFilterNotif (ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    v6 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v7, &v5, v2);
    if (!v6)
    {
      v6 = otPlatVendorSetNotificationFilter(v5);
      if (!v6)
      {
        ot::Cli::Utils::OutputLine(this, "FilterNotif");
      }
    }
  }

  return v6;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorDeepSleepFilterList(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 100;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  v7 = otPlatVendorSetDeepSleepFilterList(InstancePtr, v10, &v6);
  if (!v7)
  {
    for (i = 0; i < v6; ++i)
    {
      ot::Cli::Utils::OutputLine(this, "DeepSleepFilterLis=%u", v10[i]);
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorDeepSleepLogLevel(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v8, &v6, v2);
    if (!v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      v7 = otPlatVendorSetDeepSleepLogLevel(InstancePtr, v6);
      if (!v7)
      {
        ot::Cli::Utils::OutputLine(this, "DeepSleepLogLevel=%u", v6);
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorDeepSleepRegionLogLevels(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = -1;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  v7 = otPlatVendorSetDeepSleepRegionLogLevels(InstancePtr, v10, &v6);
  if (!v7)
  {
    for (i = 0; i < v6; ++i)
    {
      ot::Cli::Utils::OutputLine(this, "%u", v10[i]);
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorLastHostWakeReason(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  ot::Cli::Utils::GetInstancePtr(this);
  v4 = otPlatVendorSetHostWakeReason();
  if (!v4)
  {
    ot::Cli::Utils::OutputLine(this, "Clear HostWakeReason");
  }

  return v4;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorFlashErase(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v11 = this;
  v10 = a2;
  v9 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 1)))
  {
    return 7;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v9 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v10, &v8, v2);
    if (!v9)
    {
      v9 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v10 + 1, &v7, v3);
      if (!v9)
      {
        InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
        v9 = otPlatVendorFlashErase(InstancePtr, v8, v7);
        if (!v9)
        {
          ot::Cli::Utils::OutputLine(this, "%u:%u", v8, v7);
        }
      }
    }
  }

  return v9;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorFlashWrite(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v11 = this;
  v10 = a2;
  v9 = 0;
  v8 = 0;
  v7 = 100;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 8)))
  {
    return 7;
  }

  else
  {
    v9 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v10, &v8, v2);
    if (!v9)
    {
      v9 = ot::Utils::CmdLineParser::Arg::ParseAsHexString(v10 + 1, &v7, v12, v3);
      if (!v9)
      {
        InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
        v9 = otPlatVendorFlashWrite(InstancePtr, v8, v12, v7);
        if (!v9)
        {
          ot::Cli::Utils::OutputLine(this, "Flash write Address=%u", v8);
        }
      }
    }
  }

  return v9;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorOtLogTimestampBase(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v7 = this;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    v5 = ot::Utils::CmdLineParser::Arg::ParseAsUint64(v6, &v4, v2);
    if (!v5)
    {
      return otPlatVendorSetLogTimestampBase(v4);
    }
  }

  return v5;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorUartDisableStart(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v7 = this;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    return ot::Utils::CmdLineParser::Arg::ParseAsUint32(v6, &v4, v2);
  }
}

uint64_t ot::Cli::Vendor::ProcessGetVendorCore(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  Core = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  Core = otPlatVendorGetCore(InstancePtr, &v5);
  if (!Core)
  {
    ot::Cli::Utils::OutputLine(this, "Core=%d", v5);
  }

  return Core;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorAntenna(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  Antenna = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  Antenna = otPlatVendorGetAntenna(InstancePtr, &v5);
  if (!Antenna)
  {
    ot::Cli::Utils::OutputLine(this, "Antenna=%d", v5);
  }

  return Antenna;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorCC(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  CC = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  CC = otPlatVendorGetCC(InstancePtr, &v5);
  if (!CC)
  {
    ot::Cli::Utils::OutputLine(this, "CountryCode=%u", v5);
  }

  return CC;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorPCAP(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  PCAP = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  PCAP = otPlatVendorGetPCAP(InstancePtr, &v5);
  if (!PCAP)
  {
    ot::Cli::Utils::OutputLine(this, "pcap=%d", v5 & 0xF);
  }

  return PCAP;
}

uint64_t ot::Cli::Vendor::ProcessGetPriority(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v10 = this;
  v9 = a2;
  Priority = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  Priority = otPlatVendorGetPriority(InstancePtr, &v7, &v6, &v5);
  if (!Priority)
  {
    ot::Cli::Utils::OutputLine(this, "priority = %d, overridePriority = %d, overridePriorityDuration = %d", v7, v6, v5);
  }

  return Priority;
}

uint64_t ot::Cli::Vendor::ProcessGetGPIO(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  GPIO = 0;
  v9[0] = *off_1004CC840;
  v9[1] = *off_1004CC850;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  GPIO = otPlatVendorGetGPIO(InstancePtr, v5);
  if (!GPIO)
  {
    ot::Cli::Utils::OutputLine(this, "GPIO: txd->%s, rxd->%s, rts->%s, cts->%s", *(v9 + v5[0]), *(v9 + v5[1]), *(v9 + v5[2]), *(v9 + v5[3]));
  }

  return GPIO;
}

uint64_t ot::Cli::Vendor::ProcessGetBackOff(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v2 = "Enabled";
  if (!enablebackoff)
  {
    v2 = "Disabled";
  }

  ot::Cli::Utils::OutputLine(this, "Backoff is %s", v2);
  return 0;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorAntenna(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(a2, &v6, a3);
  if (!v7)
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    v7 = otPlatVendorSetAntenna(InstancePtr, v6);
    if (!v7)
    {
      ot::Cli::Utils::OutputLine(this, "Set Antenna %u", v6);
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorCC(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(a2, &v6, a3);
  if (!v7)
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    v7 = otPlatVendorSetCC(InstancePtr, v6);
    if (!v7)
    {
      ot::Cli::Utils::OutputLine(this, "Set CC =%u", v6);
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorPCAP(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(a2, &v6, a3);
  if (!v7)
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    v7 = otPlatVendorSetPCAP(InstancePtr, v6);
    if (!v7)
    {
      ot::Cli::Utils::OutputLine(this, "Set pcap =%x", v6);
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetPriority(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v13 = this;
  v12 = a2;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 2)))
  {
    return 7;
  }

  else
  {
    v11 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v12, &v10, v2);
    if (!v11)
    {
      v11 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v12 + 1, &v9, v3);
      if (!v11)
      {
        v11 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v12 + 2, &v8, v4);
        if (!v11)
        {
          InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
          v11 = otPlatVendorSetPriority(InstancePtr, v10, v9, v8);
          if (!v11)
          {
            ot::Cli::Utils::OutputLine(this, "Set priority =%d, overritePriority =%d, overritePriorityDuration =%u", v10, v9, v8);
          }
        }
      }
    }
  }

  return v11;
}

uint64_t ot::Cli::Vendor::ProcessSetGPIO(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v15[0] = *off_1004CC860;
  v15[1] = *off_1004CC870;
  v14[0] = *off_1004CC880;
  v14[1] = *off_1004CC890;
  v8 = -1;
  v7 = -1;
  __s1 = ot::Utils::CmdLineParser::Arg::GetCString(a2);
  CString = ot::Utils::CmdLineParser::Arg::GetCString((a2 + 8));
  for (i = 0; i < 4u; ++i)
  {
    if (!strcmp(__s1, *(v15 + i)))
    {
      v8 = i + 1;
      break;
    }
  }

  for (j = 0; j < 4u; ++j)
  {
    if (!strcmp(CString, *(v14 + j)))
    {
      v7 = j;
      break;
    }
  }

  if (v8 < 0 || v7 < 0)
  {
    return 7;
  }

  else
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    v11 = otPlatVendorSetGPIO(InstancePtr, v8, v7);
    if (!v11)
    {
      ot::Cli::Utils::OutputLine(this, "Set GPIO %s(%d) as %s(%d)", *(v15 + v8 - 1), v8, *(v14 + v7), v7);
    }

    return v11;
  }
}

uint64_t ot::Cli::Vendor::ProcessSetBackOff(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(a2, &v6, a3);
  if (!v7)
  {
    enablebackoff = v6;
    v3 = "Enable";
    if (!v6)
    {
      v3 = "Disable";
    }

    ot::Cli::Utils::OutputLine(this, "%s Backoff", v3);
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessExposureState(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v12 = this;
  v11 = a2;
  ExposureState = 0;
  v9 = 0;
  v8 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    ExposureState = otPlatVendorGetExposureState(InstancePtr, &v9, &v8);
    if (!ExposureState)
    {
      ot::Cli::Utils::OutputLine(this, " Exposure state is %d %d", v9, v8);
    }
  }

  else
  {
    ExposureState = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v11, &v9, v2);
    if (!ExposureState)
    {
      ExposureState = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v11 + 1, &v8, v4);
      if (!ExposureState)
      {
        v5 = ot::Cli::Utils::GetInstancePtr(this);
        ExposureState = otPlatVendorSetExposureState(v5, v9, v8);
        if (!ExposureState)
        {
          ot::Cli::Utils::OutputLine(this, " Setting Exposure state as Head/Body: %d pcap: %d", v9, v8);
        }
      }
    }
  }

  return ExposureState;
}

uint64_t ot::Cli::Vendor::ProcessMWSFreqTable(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v46 = this;
  v45 = a2;
  MWSFrequencyTable = 0;
  v43 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    ot::Cli::Utils::OutputLine(this, " Getting MWS Freq Table");
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    MWSFrequencyTable = otPlatVendorGetMWSFrequencyTable(InstancePtr, &v43, v48);
    if (!MWSFrequencyTable)
    {
      otCliOutputFormat("scan freq: num_scan_sequence=%d\n", v3, v4, v5, v6, v7, v8, v9, v43);
      for (i = 0; i < v43; ++i)
      {
        v33 = v48[i];
        otCliOutputFormat(" %d %x", v10, v11, v12, v13, v14, v15, v16, i);
      }
    }
  }

  else
  {
    ot::Cli::Utils::OutputLine(this, " Setting MWS Freq Table");
    v37 = 1;
    MWSFrequencyTable = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v45, &v43, v17);
    v42 = 0;
    v41 = 0;
    for (j = 0; ; ++j)
    {
      v35 = 0;
      if (j < v43)
      {
        v35 = v37 < ot::Utils::CmdLineParser::Arg::GetArgsLength(v45, v18);
      }

      if (!v35)
      {
        break;
      }

      v25 = v37++;
      v26 = (v45 + 8 * v25);
      v27 = v42++;
      MWSFrequencyTable = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v26, &v48[v27], v19);
    }

    for (k = 0; ; ++k)
    {
      v34 = 0;
      if (k < v43)
      {
        v34 = v37 < ot::Utils::CmdLineParser::Arg::GetArgsLength(v45, v18);
      }

      if (!v34)
      {
        break;
      }

      v28 = v37++;
      v29 = (v45 + 8 * v28);
      v30 = v41++;
      MWSFrequencyTable = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v29, &v47[v30], v19);
    }

    if (v42 == v43 && v41 == v43)
    {
      v31 = ot::Cli::Utils::GetInstancePtr(this);
      return otPlatVendorSetMWSFrequencyTable(v31, v43, v48, v47);
    }

    else
    {
      otCliOutputFormat("Error: scan freq <num_scan_sequence=%d> does not match number low/high scan frequency pairs\n", v18, v19, v20, v21, v22, v23, v24, v43);
    }
  }

  return MWSFrequencyTable;
}

uint64_t ot::Cli::Vendor::ProcessCellState(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v10 = this;
  v9 = a2;
  CellState = 0;
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    CellState = otPlatVendorGetCellState(InstancePtr, &v7);
    if (!CellState)
    {
      ot::Cli::Utils::OutputLine(this, "Cell State is %d", v7);
    }
  }

  else
  {
    CellState = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v9, &v7, v2);
    if (!CellState)
    {
      v4 = ot::Cli::Utils::GetInstancePtr(this);
      CellState = otPlatVendorSetCellState(v4, v7);
      if (!CellState)
      {
        ot::Cli::Utils::OutputLine(this, " Setting Cell State as %d", v7);
      }
    }
  }

  return CellState;
}

uint64_t ot::Cli::UdpExample::UdpExample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::Cli::Utils::Utils(a1, a2, a3);
  *(a1 + 16) = 1;
  ot::Cli::Utils::ClearAllBytes<otUdpSocket>((a1 + 24));
  return a1;
}

{
  ot::Cli::UdpExample::UdpExample(a1, a2, a3);
  return a1;
}

void *ot::Cli::Utils::ClearAllBytes<otUdpSocket>(void *a1)
{
  return memset(a1, 0, 0x48uLL);
}

{
  return ot::Cli::Utils::ClearAllBytes<otUdpSocket>(a1);
}

uint64_t ot::Cli::UdpExample::Process<1665317123ull>(ot::Cli::Utils *a1, const char **a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 0;
  v6 = 1;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "-u"))
  {
    v6 = 0;
    ++v10;
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v10, "-b"))
  {
    v6 = 2;
    ++v10;
  }

  v9 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(v10, v7);
  if (!v9)
  {
    v9 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v10 + 1, v8, v2);
    if (!v9)
    {
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 2)))
      {
        InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
        return otUdpBind(InstancePtr, a1 + 24, v7, v6);
      }

      else
      {
        return 7;
      }
    }
  }

  return v9;
}

uint64_t ot::Cli::UdpExample::Process<32000442710786154ull>(ot::Cli::Utils *a1, const char **a2)
{
  v12 = a1;
  v11 = a2;
  v10 = 0;
  v7 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  v10 = ot::Cli::Utils::ParseToIp6Address(InstancePtr, v11, v8, &v7);
  if (!v10)
  {
    if (v7)
    {
      ot::Cli::Utils::OutputFormat(a1, "Connecting to synthesized IPv6 address: ");
      ot::Cli::Utils::OutputIp6AddressLine(a1, v8);
    }

    v10 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v11 + 1, v9, v3);
    if (!v10)
    {
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v11 + 2)))
      {
        v4 = ot::Cli::Utils::GetInstancePtr(a1);
        return otUdpConnect(v4, a1 + 24, v8);
      }

      else
      {
        return 7;
      }
    }
  }

  return v10;
}

uint64_t ot::Cli::UdpExample::Process<1830547446ull>(ot::Cli::Utils *a1)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  if (otUdpIsOpen(InstancePtr, a1 + 24))
  {
    return 24;
  }

  else
  {
    v2 = ot::Cli::Utils::GetInstancePtr(a1);
    return otUdpOpen(v2, a1 + 24, ot::Cli::UdpExample::HandleUdpReceive, a1);
  }
}

void ot::Cli::UdpExample::HandleUdpReceive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::Cli::UdpExample::HandleUdpReceive(a1, a2, a3);
}

{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = 0;
  logging_obg = log_get_logging_obg("com.apple.wpantund", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(2) & 1) != 0)
  {
    oslog = logging_obg;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v8 = type;
      __os_log_helper_16_0_0(v9);
      _os_log_error_impl(&_mh_execute_header, log, v8, "HandleUdpReceive: ", v9, 2u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v17, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging Module is not defined for SubSystem: %s, Category: %s", v17, 0x16u);
  }

  Length = otMessageGetLength(v15);
  Offset = otMessageGetOffset(v15);
  otctl_OutputFormat("%d bytes from ", Length - Offset);
  otctl_OutputIp6Address(v14 + 16);
  otctl_OutputFormat(" %d ", *(v14 + 34));
  v6 = v15;
  v4 = otMessageGetOffset(v15);
  v13 = otMessageRead(v6, v4, v18, 0x5DBu);
  v18[v13] = 0;
  otctl_OutputLine("%s", v18);
  otctl_output_done();
}

uint64_t ot::Cli::UdpExample::Process<1665316120ull>(ot::Cli::Utils *a1, const char **a2)
{
  v26 = a1;
  v25 = a2;
  v24 = 0;
  v23 = 0;
  v19 = 0;
  LOBYTE(v19) = *(a1 + 16) & 1;
  HIBYTE(v19) = 1;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  if (!otUdpIsOpen(InstancePtr, a1 + 24))
  {
    v24 = 13;
    goto LABEL_27;
  }

  ot::Cli::Utils::ClearAllBytes<otMessageInfo>(v20);
  if (!ot::Utils::CmdLineParser::Arg::IsEmpty((v25 + 2)))
  {
    v18 = 0;
    v3 = ot::Cli::Utils::GetInstancePtr(a1);
    v24 = ot::Cli::Utils::ParseToIp6Address(v3, v25, v21, &v18);
    if (v24)
    {
      goto LABEL_27;
    }

    if (v18)
    {
      ot::Cli::Utils::OutputFormat(a1, "Sending to synthesized IPv6 address: ");
      ot::Cli::Utils::OutputIp6AddressLine(a1, v21);
    }

    v24 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v25 + 1, v22, v4);
    if (v24)
    {
      goto LABEL_27;
    }

    v25 += 2;
  }

  v5 = ot::Cli::Utils::GetInstancePtr(a1);
  v23 = otUdpNewMessage(v5, &v19);
  if (!v23)
  {
    v24 = 3;
    goto LABEL_27;
  }

  if (ot::Utils::CmdLineParser::Arg::operator==(v25, "-s"))
  {
    v17 = 0;
    v24 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v25 + 1, &v17, v6);
    if (v24)
    {
      goto LABEL_27;
    }

    v24 = ot::Cli::UdpExample::PrepareAutoGeneratedPayload(v23, v17);
    if (v24)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (ot::Utils::CmdLineParser::Arg::operator==(v25, "-x"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v25 + 1)))
    {
      v24 = 7;
      goto LABEL_27;
    }

    v15 = v23;
    CString = ot::Utils::CmdLineParser::Arg::GetCString((v25 + 1));
    v24 = ot::Cli::UdpExample::PrepareHexStringPayload(v15, CString, v8, v9);
    if (!v24)
    {
LABEL_25:
      v11 = ot::Cli::Utils::GetInstancePtr(a1);
      v24 = otUdpSend(v11, a1 + 24, v23, v20);
      if (!v24)
      {
        v23 = 0;
      }
    }
  }

  else
  {
    if (ot::Utils::CmdLineParser::Arg::operator==(v25, "-t"))
    {
      ++v25;
    }

    if (ot::Utils::CmdLineParser::Arg::IsEmpty(v25))
    {
      v24 = 7;
      goto LABEL_27;
    }

    v14 = v23;
    v13 = ot::Utils::CmdLineParser::Arg::GetCString(v25);
    Length = ot::Utils::CmdLineParser::Arg::GetLength(v25);
    v24 = otMessageAppend(v14, v13, Length);
    if (!v24)
    {
      goto LABEL_25;
    }
  }

LABEL_27:
  if (v23)
  {
    otMessageFree(v23);
  }

  return v24;
}

uint64_t ot::Cli::UdpExample::PrepareAutoGeneratedPayload(uint64_t a1, __int16 a2)
{
  v6 = a1;
  v5 = a2;
  v4 = 0;
  v3 = 48;
  while (v5)
  {
    v4 = otMessageAppend(v6, &v3, 1u);
    if (v4)
    {
      break;
    }

    switch(v3)
    {
      case '9':
        v3 = 65;
        break;
      case 'Z':
        v3 = 97;
        break;
      case 'z':
        v3 = 48;
        break;
      default:
        ++v3;
        break;
    }

    --v5;
  }

  return v4;
}

uint64_t ot::Cli::UdpExample::PrepareHexStringPayload(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = a1;
  *&v6[6] = a2;
  *&v6[2] = 0;
  *v6 = 0;
  v5 = 0;
  do
  {
    if (v5)
    {
      break;
    }

    strcpy(v6, "2");
    *&v6[2] = ot::Utils::CmdLineParser::ParseAsHexStringSegment(&v6[6], v6, v8, a4);
    if (*&v6[2])
    {
      if (*&v6[2] != 36)
      {
        break;
      }
    }

    v5 = *&v6[2] == 0;
    *&v6[2] = otMessageAppend(v7, v8, *v6);
  }

  while (!*&v6[2]);
  return *&v6[2];
}

uint64_t ot::Cli::UdpExample::Process<12648424561679575046ull>(uint64_t a1, const char **a2)
{
  v5 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    ot::Cli::Utils::OutputEnabledDisabledStatus(a1, *(a1 + 16) & 1);
  }

  else
  {
    return ot::Cli::Utils::ParseEnableOrDisable(a2, (a1 + 16), v2);
  }

  return v5;
}

uint64_t ot::Cli::UdpExample::Process(ot::Cli::UdpExample *this, const char **a2)
{
  v17 = this;
  v16 = a2;
  v15 = 35;
  v14 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2) || ot::Utils::CmdLineParser::Arg::operator==(v16, "help"))
  {
    ot::Cli::Utils::OutputCommandTable<ot::Cli::UdpExample,(unsigned short)6>(this, &ot::Cli::UdpExample::Process(ot::Utils::CmdLineParser::Arg *)::kCommands);
    if (ot::Utils::CmdLineParser::Arg::IsEmpty(v16))
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(v16);
    v14 = ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::UdpExample>,(unsigned short)6>(&CString, &ot::Cli::UdpExample::Process(ot::Utils::CmdLineParser::Arg *)::kCommands, v2, v3, v4, v5);
    if (v14)
    {
      v9 = *(v14 + 1);
      v6 = *(v14 + 2);
      v10 = (this + (v6 >> 1));
      if (v6)
      {
        return (*(*v10 + v9))(v10, v16 + 1);
      }

      else
      {
        return v9(v10, v16 + 1);
      }
    }
  }

  return v15;
}

uint64_t ot::Cli::Utils::OutputCommandTable<ot::Cli::UdpExample,(unsigned short)6>(uint64_t result, const char **a2)
{
  v2 = result;
  v4 = a2;
  v3 = a2 + 18;
  while (v4 != v3)
  {
    result = ot::Cli::Utils::CommandEntry<ot::Cli::UdpExample>::Compare(v4, "reset");
    if (result)
    {
      result = ot::Cli::Utils::OutputLine(v2, "%s", *v4);
    }

    v4 += 3;
  }

  return result;
}

{
  return ot::Cli::Utils::OutputCommandTable<ot::Cli::UdpExample,(unsigned short)6>(result, a2);
}

char *ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::UdpExample>,(unsigned short)6>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 6, 0x18u, ot::BinarySearch::Compare<char *,ot::Cli::Utils::CommandEntry<ot::Cli::UdpExample>>, a6);
}

{
  return ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::UdpExample>,(unsigned short)6>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::Utils::CommandEntry<ot::Cli::UdpExample>::Compare(const char **a1, const char *a2)
{
  return strcmp(a2, *a1);
}

{
  return ot::Cli::Utils::CommandEntry<ot::Cli::UdpExample>::Compare(a1, a2);
}

uint64_t otAppGetHeaderStringAndCountDuplicates(uint64_t a1, uint64_t a2, char *a3, char a4, char a5)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  IsAppPacket = 0;
  v5 = ot::AsCoreType<otInstance>(a1);
  v14 = ot::Instance::Get<ot::AppMetricsManager>(v5);
  v6 = ot::AsCoreType<otMessage>(v21);
  IsAppPacket = ot::AppMetricsManager::IsAppPacket(v14, v6, v16, 1);
  HopsLft = 0;
  if (IsAppPacket)
  {
    v7 = ot::AsCoreType<otInstance>(v22);
    v8 = ot::Instance::Get<ot::AppMetricsManager>(v7);
    ot::AppMetricsManager::GetAppHeaderString(v8, v16, v20);
    if (v18)
    {
      v9 = ot::AsCoreType<otMessage>(v21);
      HopsLft = ot::Message::GetHopsLft(v9);
    }

    if (v19)
    {
      v10 = ot::AsCoreType<otInstance>(v22);
      v13 = ot::Instance::Get<ot::AppMetricsManager>(v10);
      v11 = ot::AsCoreType<otMessage>(v21);
      ot::AppMetricsManager::CountAppDuplicates(v13, v11, v16, v18 & 1, HopsLft);
    }
  }

  return IsAppPacket & 1;
}

uint64_t ot::Instance::Get<ot::AppMetricsManager>(uint64_t a1)
{
  return a1 + 167216;
}

{
  return ot::Instance::Get<ot::AppMetricsManager>(a1);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otMessage>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

uint64_t ot::Message::GetHopsLft(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 44);
}

{
  return ot::Message::GetHopsLft(this);
}

uint64_t otGetApplicationPacketType(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::AppMetricsManager>(v3);
  v4 = ot::AsCoreType<otMessage>(a2);
  return ot::AppMetricsManager::GetApplicationPacketType(v6, v4, a3);
}

void otAppGetCounters(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::AppMetricsManager>(v1);
  ot::AppMetricsManager::GetCounters(v2);
}

void ot::AppMetricsManager::GetCounters(ot::AppMetricsManager *this)
{
  ;
}

{
  ot::AppMetricsManager::GetCounters(this);
}

uint64_t otAppGetAvgRouteCostHistogram(uint64_t a1, unsigned __int8 *a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::AppMetricsManager>(v4);
  return ot::AppMetricsManager::GetAvgRouteCostHistogram(v5, a2, a3, a4);
}

uint64_t otAppGetMaxRouteCostHistogram(uint64_t a1, unsigned __int8 *a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::AppMetricsManager>(v4);
  return ot::AppMetricsManager::GetMaxRouteCostHistogram(v5, a2, a3, a4);
}

uint64_t otAppGetAvgHopCountHistogram(uint64_t a1, unsigned __int8 *a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::AppMetricsManager>(v4);
  return ot::AppMetricsManager::GetAvgHopCountHistogram(v5, a2, a3, a4);
}

uint64_t otAppGetMaxHopCountHistogram(uint64_t a1, unsigned __int8 *a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::AppMetricsManager>(v4);
  return ot::AppMetricsManager::GetMaxHopCountHistogram(v5, a2, a3, a4);
}

char *otAppGetAppTxCountHistogram(uint64_t a1, _BYTE *a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::AppMetricsManager>(v4);
  return ot::AppMetricsManager::GetRetryCountHistogram(v5, a2, a3, a4);
}

char *otAppGetAppRxDupCountHistogram(uint64_t a1, _BYTE *a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::AppMetricsManager>(v4);
  return ot::AppMetricsManager::GetDuplicateCountHistogram(v5, a2, a3, a4);
}

void otAppResetAppAndRoutingMetricsHistograms(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::AppMetricsManager>(v1);
  ot::AppMetricsManager::ResetAppAndRoutingMetricsHistograms(v2);
}

BOOL otAppUpdateAppAndRoutingMetricsHistograms(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::AppMetricsManager>(v1);
  return ot::AppMetricsManager::UpdateAppAndRoutingMetricsHistograms(v2);
}

BOOL otAppResetMatterSubscriptionCounts(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::AppMetricsManager>(v1);
  return ot::AppMetricsManager::ResetMatterSubscriptionCounts(v2);
}

BOOL otAppUpdateMatterSubscriptionCountHistogram(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::AppMetricsManager>(v1);
  return ot::AppMetricsManager::UpdateMatterSubscriptionCountHistogram(v2);
}

_WORD *otThreadResetAppCounters(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::AppMetricsManager>(v1);
  return ot::AppMetricsManager::ResetCounters(v2);
}

BOOL otAppIsPrimaryResident(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::AppMetricsManager>(v1);
  return ot::AppMetricsManager::GetIsPrimaryResident(v2);
}

uint64_t otAppGetThreadReachabilityStatusBitmaps(uint64_t a1, const unint64_t *a2, const BOOL *a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v6 = ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::AppMetricsManager>(v6);
  return ot::AppMetricsManager::GetThreadReachabilityStatusBitmaps(v7, a2, a3, a4, a5, a6);
}

uint64_t ot::Buffer::GetMetadata(ot::Buffer *this)
{
  return this + 8;
}

{
  return this + 8;
}

{
  return ot::Buffer::GetMetadata(this);
}

{
  return ot::Buffer::GetMetadata(this);
}

ot::WakeupTxScheduler *ot::WakeupTxScheduler::WakeupTxScheduler(ot::WakeupTxScheduler *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Time::Time((this + 8), 0);
  ot::Time::Time((this + 12), 0);
  ot::TimerMicroIn<ot::Mac::Mac,&ot::Mac::Mac::RequestWakeupFrameTransmission>::TimerMicroIn((this + 24), a2);
  result = this;
  *(this + 48) &= ~1u;
  *(this + 49) = 1;
  return result;
}

{
  ot::WakeupTxScheduler::WakeupTxScheduler(this, a2);
  return this;
}

ot::Time *ot::Time::Time(ot::Time *this, int a2)
{
  ot::Time::Time(this, a2);
  return this;
}

{
  ot::Time::SetValue(this, a2);
  return this;
}

uint64_t ot::anonymous namespace::CalcTxRequestAheadTimeUs(ot::_anonymous_namespace_ *this, ot::Instance *a2)
{
  v4 = 2000;
  BusSpeed = otPlatRadioGetBusSpeed();
  if (BusSpeed)
  {
    return ((BusSpeed + 799999999) / BusSpeed + 2000);
  }

  return v4;
}

ot::TimerMilli *ot::TimerMicroIn<ot::Mac::Mac,&ot::Mac::Mac::RequestWakeupFrameTransmission>::TimerMicroIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMicroIn<ot::Mac::Mac,&ot::Mac::Mac::RequestWakeupFrameTransmission>::TimerMicroIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMicroIn<ot::Mac::Mac,&ot::Mac::Mac::RequestWakeupFrameTransmission>::HandleTimer);
  return a1;
}

uint64_t ot::WakeupTxScheduler::WakeUpPatternToInterval(ot::WakeupTxScheduler *this, char a2)
{
  if (a2 == 1)
  {
    return 15000;
  }

  else if (a2 != 3 && a2 != 2)
  {
    if (a2 == 4)
    {
      return 15000;
    }

    else
    {
      return 7500;
    }
  }

  else
  {
    return 7500;
  }
}

uint64_t ot::WakeupTxScheduler::WakeUp(ot::WakeupTxScheduler *this, const ot::Mac::ExtAddress *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = this;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v30 = 0;
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("WakeupTxSched", "Wake-up sequence ongoing: %d, %s", a3, a4, a5, a6, a7, a8, *(this + 48) & 1);
  if (*(this + 48))
  {
    return 13;
  }

  else
  {
    *this = *v34;
    Now = ot::TimerMicro::GetNow(v8);
    v29 = Now;
    v27 = ot::Time::operator+(&v29, *(this + 8));
    *(this + 2) = v27;
    *(this + 9) = ot::WakeupTxScheduler::WakeUpPatternToInterval(this, v32);
    v25 = ot::Time::operator+(this + 2, 1000 * v33);
    v26 = ot::Time::operator+(&v25, *(this + 9));
    *(this + 3) = v26;
    *(this + 48) = *(this + 48) & 0xFE | 1;
    ot::Mac::ExtAddress::ToString(v34, v36);
    v9 = ot::String<(unsigned short)17>::AsCString(v36);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("WakeupTxSched", "Scheduled wake-up sequence to %s", v10, v11, v12, v13, v14, v15, v9);
    v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    ot::Radio::SetWakeupConfiguration(v16, v33, v32, v31);
    IgnoreError();
    ot::WakeupTxScheduler::ScheduleNext(this, 1, v17, v18, v19, v20, v21, v22);
  }

  return v30;
}

uint64_t ot::TimerMicro::GetNow(ot::TimerMicro *this)
{
  Now = otPlatAlarmMicroGetNow();
  ot::Time::Time(&v3, Now);
  return v3;
}

{
  return ot::TimerMicro::GetNow(this);
}

uint64_t ot::Time::operator+(_DWORD *a1, int a2)
{
  ot::Time::Time(&v3, *a1 + a2);
  return v3;
}

{
  return ot::Time::operator+(a1, a2);
}

uint64_t ot::String<(unsigned short)17>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)17>::AsCString(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Radio>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(a1);
}

uint64_t ot::Radio::SetWakeupConfiguration(ot::Radio *this, unsigned int a2, unsigned __int8 a3, unsigned __int8 a4)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioSetWakeupConfiguration(InstancePtr, a2, a3, a4);
}

{
  return ot::Radio::SetWakeupConfiguration(this, a2, a3, a4);
}

void ot::WakeupTxScheduler::ScheduleNext(ot::WakeupTxScheduler *this, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = ot::Time::operator-(this + 2, *(this + 8));
    ot::TimerMicro::FireAt((this + 24), v10);
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("WakeupTxSched", "Started wake-up sequence", a3, a4, a5, a6, a7, a8, v8);
    *(this + 48) &= ~1u;
  }
}

ot::Mac::Frame *ot::WakeupTxScheduler::PrepareWakeupFrame(ot::WakeupTxScheduler *this, ot::Mac::TxFrames *a2)
{
  v38 = this;
  v37 = a2;
  TxFrame = 0;
  ot::Mac::Address::Address(v35);
  ot::Mac::Address::Address(v34);
  v32 = 0;
  v31 = 0;
  if ((*(this + 48) & 1) == 1)
  {
    ot::Mac::Address::SetExtended(v35, this);
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    ExtAddress = ot::Mac::Mac::GetExtAddress(v2);
    ot::Mac::Address::SetExtended(v34, ExtAddress);
    Instance = ot::InstanceLocator::GetInstance(this);
    v29 = RadioNow;
    Now = ot::TimerMicro::GetNow(RadioNow);
    v7 = ot::Time::operator-(this + 2, &Now);
    v30 = ot::Time::operator+(&v29, v7);
    v33 = v30;
    TxFrame = ot::Mac::TxFrames::GetTxFrame(v37);
    v26 = TxFrame;
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    PanId = ot::Mac::Mac::GetPanId(v8);
    if (ot::Mac::TxFrame::GenerateWakeupFrame(v26, PanId, v35, v34))
    {
      return 0;
    }

    else
    {
      ot::Mac::TxFrame::SetTxDelayBaseTime(TxFrame, 0);
      v25 = TxFrame;
      Value = ot::Time::GetValue(&v33);
      ot::Mac::TxFrame::SetTxDelay(v25, Value);
      ot::Mac::TxFrame::SetCsmaCaEnabled(TxFrame, 0);
      ot::Mac::TxFrame::SetMaxCsmaBackoffs(TxFrame, 0);
      ot::Mac::TxFrame::SetMaxFrameRetries(TxFrame, 0);
      v32 = (*(this + 9) - 4224) / 2;
      v32 += *(this + 9);
      ot::Mac::Frame::GetRendezvousTimeIe(TxFrame);
      ot::Mac::RendezvousTimeIe::SetRendezvousTime(v11, v32 / 0xA0, v12);
      ot::Mac::Frame::GetConnectionIe(TxFrame);
      v31 = v13;
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      v15 = ot::Mle::Mle::WedWakeUpPattern(v14);
      v16 = 2;
      if (v15 == 2)
      {
        v16 = 1;
      }

      *(this + 49) = v16;
      ot::Mac::ConnectionIe::SetRetryInterval(v31, *(this + 49));
      ot::Mac::ConnectionIe::SetRetryCount(v31, 12);
      ot::WakeupTxScheduler::ScheduleNext(this, 0, v17, v18, v19, v20, v21, v22);
      v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      ot::Mle::Mle::HandleCslWakeupTxInitiatedStartAttachTimer(v23);
    }
  }

  return TxFrame;
}

uint64_t ot::Mac::Address::SetExtended(uint64_t result, void *a2)
{
  *result = *a2;
  *(result + 8) = 2;
  return result;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Mac::Mac>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
}

uint64_t ot::Mac::Mac::GetExtAddress(ot::Mac::Mac *this)
{
  return ot::Mac::Links::GetExtAddress((this + 56));
}

{
  return ot::Mac::Mac::GetExtAddress(this);
}

uint64_t ot::anonymous namespace::GetRadioNow(ot::_anonymous_namespace_ *this, ot::Instance *a2)
{
  Now = otPlatRadioGetNow();
  ot::Time::Time(&v4, Now);
  return v4;
}

void *ot::InstanceLocator::GetInstance(ot::InstanceLocator *this)
{
  return &ot::gInstanceRaw;
}

{
  return ot::InstanceLocator::GetInstance(this);
}

uint64_t ot::Time::operator-(_DWORD *a1, _DWORD *a2)
{
  return (*a1 - *a2);
}

{
  return ot::Time::operator-(a1, a2);
}

uint64_t ot::Mac::TxFrames::GetTxFrame(ot::Mac::TxFrames *this)
{
  return *this;
}

{
  return ot::Mac::TxFrames::GetTxFrame(this);
}

uint64_t ot::Mac::Mac::GetPanId(ot::Mac::Mac *this)
{
  return *(this + 4);
}

{
  return ot::Mac::Mac::GetPanId(this);
}

uint64_t ot::Mac::TxFrame::SetTxDelayBaseTime(uint64_t this, int a2)
{
  *(this + 32) = a2;
  return this;
}

{
  return ot::Mac::TxFrame::SetTxDelayBaseTime(this, a2);
}

uint64_t ot::Mac::TxFrame::SetTxDelay(uint64_t this, int a2)
{
  *(this + 36) = a2;
  return this;
}

{
  return ot::Mac::TxFrame::SetTxDelay(this, a2);
}

uint64_t ot::Time::GetValue(ot::Time *this)
{
  return *this;
}

{
  return ot::Time::GetValue(this);
}

uint64_t ot::Mac::TxFrame::SetCsmaCaEnabled(uint64_t this, char a2)
{
  *(this + 45) = *(this + 45) & 0xFB | (4 * (a2 & 1));
  return this;
}

{
  return ot::Mac::TxFrame::SetCsmaCaEnabled(this, a2);
}

uint64_t ot::Mac::TxFrame::SetMaxCsmaBackoffs(uint64_t this, char a2)
{
  *(this + 40) = a2;
  return this;
}

{
  return ot::Mac::TxFrame::SetMaxCsmaBackoffs(this, a2);
}

uint64_t ot::Mac::TxFrame::SetMaxFrameRetries(uint64_t this, char a2)
{
  *(this + 41) = a2;
  return this;
}

{
  return ot::Mac::TxFrame::SetMaxFrameRetries(this, a2);
}

void ot::Mac::Frame::GetRendezvousTimeIe(ot::Mac::Frame *this)
{
  ot::AsConst<ot::Mac::Frame>();
  ot::Mac::Frame::GetRendezvousTimeIe(v1);
  ot::AsNonConst<ot::Mac::RendezvousTimeIe>();
}

{
  ot::Mac::Frame::GetRendezvousTimeIe(this);
}

uint64_t ot::Mac::RendezvousTimeIe::SetRendezvousTime(ot::Mac::RendezvousTimeIe *this, unsigned __int16 a2, unsigned __int8 *a3)
{
  return ot::LittleEndian::WriteUint16(a2, this, a3);
}

{
  return ot::Mac::RendezvousTimeIe::SetRendezvousTime(this, a2, a3);
}

void ot::Mac::Frame::GetConnectionIe(ot::Mac::Frame *this)
{
  ot::AsConst<ot::Mac::Frame>();
  ot::Mac::Frame::GetConnectionIe(v1);
  ot::AsNonConst<ot::Mac::ConnectionIe>();
}

{
  ot::Mac::Frame::GetConnectionIe(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Mle::Mle>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
}

uint64_t ot::Mac::ConnectionIe::SetRetryInterval(uint64_t this, char a2)
{
  *(this + 4) = *(this + 4) & 0xCF | (16 * a2);
  return this;
}

{
  return ot::Mac::ConnectionIe::SetRetryInterval(this, a2);
}

uint64_t ot::Mac::ConnectionIe::SetRetryCount(uint64_t this, char a2)
{
  *(this + 4) = a2 | *(this + 4) & 0xF0;
  return this;
}

{
  return ot::Mac::ConnectionIe::SetRetryCount(this, a2);
}

uint64_t ot::Time::operator-(_DWORD *a1, int a2)
{
  ot::Time::Time(&v3, *a1 - a2);
  return v3;
}

{
  return ot::Time::operator-(a1, a2);
}

_DWORD *ot::Time::SetValue(_DWORD *this, int a2)
{
  *this = a2;
  return this;
}

{
  return ot::Time::SetValue(this, a2);
}

void *ot::Radio::GetInstancePtr(ot::Radio *this)
{
  return ot::InstanceLocator::GetInstance(this);
}

{
  return ot::Radio::GetInstancePtr(this);
}

uint64_t ot::Mac::Links::GetExtAddress(ot::Mac::Links *this)
{
  return ot::Mac::SubMac::GetExtAddress((this + 8));
}

{
  return ot::Mac::Links::GetExtAddress(this);
}

uint64_t ot::Mac::SubMac::GetExtAddress(ot::Mac::SubMac *this)
{
  return this + 12;
}

{
  return ot::Mac::SubMac::GetExtAddress(this);
}

void ot::AsNonConst<ot::Mac::RendezvousTimeIe>()
{
  ;
}

{
  ot::AsNonConst<ot::Mac::RendezvousTimeIe>();
}

void ot::AsConst<ot::Mac::Frame>()
{
  ;
}

{
  ot::AsConst<ot::Mac::Frame>();
}

uint64_t ot::Mac::Frame::GetRendezvousTimeIe(ot::Mac::Frame *this)
{
  return ot::Mac::Frame::GetHeaderIe(this, 0x1Du) + 2;
}

{
  return ot::Mac::Frame::GetRendezvousTimeIe(this);
}

uint64_t ot::LittleEndian::WriteUint16(uint64_t this, _WORD *a2, unsigned __int8 *a3)
{
  *a2 = this;
  return this;
}

{
  return ot::LittleEndian::WriteUint16(this, a2, a3);
}

void ot::AsNonConst<ot::Mac::ConnectionIe>()
{
  ;
}

{
  ot::AsNonConst<ot::Mac::ConnectionIe>();
}

uint64_t ot::Mac::Frame::GetConnectionIe(ot::Mac::Frame *this)
{
  return ot::Mac::Frame::GetThreadIe(this, 1u) + 2;
}

{
  return ot::Mac::Frame::GetConnectionIe(this);
}

uint64_t ot::Instance::Get<ot::Radio>(uint64_t a1)
{
  return a1 + 34;
}

{
  return ot::Instance::Get<ot::Radio>(a1);
}

uint64_t ot::Instance::Get<ot::Mac::Mac>(uint64_t a1)
{
  return a1 + 88200;
}

{
  return ot::Instance::Get<ot::Mac::Mac>(a1);
}

const char *ot::Utils::LookupTable::Find(ot::Utils::LookupTable *this, const char *a2, const void *a3, unsigned __int16 a4, uint64_t (*a5)(const char *), const char *(*a6)(const void *))
{
  v11 = 0;
  v10 = a3;
  while (v11 < v10)
  {
    v9 = (v11 + v10) / 2;
    v12 = &a2[a4 * v9];
    v6 = a5(v12);
    v8 = strcmp(this, v6);
    if (!v8)
    {
      return v12;
    }

    if (v8 <= 0)
    {
      v10 = (v11 + v10) / 2;
    }

    else
    {
      v11 = v9 + 1;
    }
  }

  return 0;
}

uint64_t otBackboneRouterGetPrimary(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __assert_rtn("otBackboneRouterGetPrimary", "backbone_router_api.cpp", 47, "(aConfig) != nullptr");
  }

  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::BackboneRouter::Leader>(v2);
  return ot::BackboneRouter::Leader::GetConfig(v3, a2);
}

uint64_t ot::Instance::Get<ot::BackboneRouter::Leader>(uint64_t a1)
{
  return a1 + 146560;
}

{
  return ot::Instance::Get<ot::BackboneRouter::Leader>(a1);
}

void otBackboneRouterSetEnabled(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::BackboneRouter::Local>(v2);
  ot::BackboneRouter::Local::SetEnabled(v3, a2 & 1);
}

uint64_t ot::Instance::Get<ot::BackboneRouter::Local>(uint64_t a1)
{
  return a1 + 87184;
}

{
  return ot::Instance::Get<ot::BackboneRouter::Local>(a1);
}

uint64_t otBackboneRouterGetState(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::BackboneRouter::Local>(v1);
  State = ot::BackboneRouter::Local::GetState(v2);
  return ot::MapEnum<ot::BackboneRouter::Local::State>(State);
}

uint64_t ot::MapEnum<ot::BackboneRouter::Local::State>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::BackboneRouter::Local::State>(result);
}

uint64_t ot::BackboneRouter::Local::GetState(ot::BackboneRouter::Local *this)
{
  return *(this + 1);
}

{
  return ot::BackboneRouter::Local::GetState(this);
}

uint64_t otBackboneRouterGetConfig(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __assert_rtn("otBackboneRouterGetConfig", "backbone_router_ftd_api.cpp", 58, "(aConfig) != nullptr");
  }

  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::BackboneRouter::Local>(v2);
  return ot::BackboneRouter::Local::GetConfig(v3, a2);
}

uint64_t otBackboneRouterSetConfig(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __assert_rtn("otBackboneRouterSetConfig", "backbone_router_ftd_api.cpp", 65, "(aConfig) != nullptr");
  }

  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::BackboneRouter::Local>(v2);
  return ot::BackboneRouter::Local::SetConfig(v3, a2);
}

uint64_t otBackboneRouterRegister(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::BackboneRouter::Local>(v1);
  return ot::BackboneRouter::Local::AddService(v2, 1);
}

uint64_t otBackboneRouterGetRegistrationJitter(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::BackboneRouter::Local>(v1);
  return ot::BackboneRouter::Local::GetRegistrationJitter(v2);
}

uint64_t ot::BackboneRouter::Local::GetRegistrationJitter(ot::BackboneRouter::Local *this)
{
  return *(this + 3);
}

{
  return ot::BackboneRouter::Local::GetRegistrationJitter(this);
}

uint64_t otBackboneRouterSetRegistrationJitter(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::BackboneRouter::Local>(v2);
  return ot::BackboneRouter::Local::SetRegistrationJitter(v3, a2);
}

uint64_t ot::BackboneRouter::Local::SetRegistrationJitter(uint64_t this, char a2)
{
  *(this + 3) = a2;
  return this;
}

{
  return ot::BackboneRouter::Local::SetRegistrationJitter(this, a2);
}

uint64_t otBackboneRouterGetDomainPrefix(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::BackboneRouter::Local>(v2);
  v3 = ot::AsCoreType<otBorderRouterConfig>(a2);
  return ot::BackboneRouter::Local::GetDomainPrefix(v5, v3);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otBorderRouterConfig>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

void *otBackboneRouterSetDomainPrefixCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::BackboneRouter::Local>(v3);
  return ot::BackboneRouter::Local::SetDomainPrefixCallback(v4, a2, a3);
}

void *ot::BackboneRouter::Local::SetDomainPrefixCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*)>::Set((a1 + 104), a2, a3);
}

{
  return ot::BackboneRouter::Local::SetDomainPrefixCallback(a1, a2, a3);
}

void *otBackboneRouterSetNdProxyCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::BackboneRouter::NdProxyTable>(v3);
  return ot::BackboneRouter::NdProxyTable::SetCallback(v4, a2, a3);
}

uint64_t ot::Instance::Get<ot::BackboneRouter::NdProxyTable>(uint64_t a1)
{
  return ot::BackboneRouter::Manager::GetNdProxyTable((a1 + 146592));
}

{
  return ot::Instance::Get<ot::BackboneRouter::NdProxyTable>(a1);
}

void *ot::BackboneRouter::NdProxyTable::SetCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*)>::Set((a1 + 6000), a2, a3);
}

{
  return ot::BackboneRouter::NdProxyTable::SetCallback(a1, a2, a3);
}

uint64_t otBackboneRouterGetNdProxyInfo(uint64_t a1, ot::Ip6::Address *a2, uint64_t a3)
{
  if (!a3)
  {
    __assert_rtn("otBackboneRouterGetNdProxyInfo", "backbone_router_ftd_api.cpp", 109, "(aNdProxyInfo) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::BackboneRouter::NdProxyTable>(v3);
  return ot::BackboneRouter::NdProxyTable::GetInfo(v4, a2, a3);
}

uint64_t otBackboneRouterSetMulticastListenerCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::BackboneRouter::MulticastListenersTable>(v3);
  return ot::BackboneRouter::MulticastListenersTable::SetCallback(v4, a2, a3);
}

uint64_t ot::Instance::Get<ot::BackboneRouter::MulticastListenersTable>(uint64_t a1)
{
  return ot::BackboneRouter::Manager::GetMulticastListenersTable((a1 + 146592));
}

{
  return ot::Instance::Get<ot::BackboneRouter::MulticastListenersTable>(a1);
}

uint64_t otBackboneRouterMulticastListenerGetNext(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otBackboneRouterMulticastListenerGetNext", "backbone_router_ftd_api.cpp", 128, "(aIterator) != nullptr");
  }

  if (!a3)
  {
    __assert_rtn("otBackboneRouterMulticastListenerGetNext", "backbone_router_ftd_api.cpp", 129, "(aListenerInfo) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::BackboneRouter::MulticastListenersTable>(v3);
  return ot::BackboneRouter::MulticastListenersTable::GetNext(v4, a2, a3);
}

void *ot::CallbackBase<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*)>::Set(result, a2, a3);
}

void *ot::CallbackBase<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*)>::Set(result, a2, a3);
}

uint64_t ot::BackboneRouter::Manager::GetMulticastListenersTable(ot::BackboneRouter::Manager *this)
{
  return this + 6032;
}

{
  return ot::BackboneRouter::Manager::GetMulticastListenersTable(this);
}

uint64_t otBorderAgentGetId(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::MeshCoP::BorderAgent>(v2);
  v3 = ot::AsCoreType<otBorderAgentId>(a2);
  return ot::MeshCoP::BorderAgent::GetId(v5, v3);
}

uint64_t ot::Instance::Get<ot::MeshCoP::BorderAgent>(uint64_t a1)
{
  return a1 + 144304;
}

{
  return ot::Instance::Get<ot::MeshCoP::BorderAgent>(a1);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otBorderAgentId>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

uint64_t otBorderAgentSetId(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::MeshCoP::BorderAgent>(v2);
  v3 = ot::AsCoreType<otBorderAgentId>(a2);
  return ot::MeshCoP::BorderAgent::SetId(v5, v3);
}

uint64_t otBorderAgentGetState(uint64_t a1)
{
  v5 = 0;
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::BorderAgent>(v1);
  State = ot::MeshCoP::BorderAgent::GetState(v2);
  if (State)
  {
    if (State == 1)
    {
      return 1;
    }

    else if (State == 3 || State == 2)
    {
      return 2;
    }
  }

  return v5;
}

uint64_t ot::MeshCoP::BorderAgent::GetState(ot::MeshCoP::BorderAgent *this)
{
  return *this;
}

{
  return ot::MeshCoP::BorderAgent::GetState(this);
}

uint64_t otBorderAgentGetUdpPort(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::BorderAgent>(v1);
  return ot::MeshCoP::BorderAgent::GetUdpPort(v2);
}

uint64_t otBorderRouterGetNetData(uint64_t a1, char a2, unsigned __int8 *a3, char *a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::NetworkData::Local>(v4);
  return ot::NetworkData::NetworkData::CopyNetworkData(v5, (a2 & 1) != 0, a3, a4);
}

uint64_t ot::Instance::Get<ot::NetworkData::Local>(uint64_t a1)
{
  return a1 + 143544;
}

{
  return ot::Instance::Get<ot::NetworkData::Local>(a1);
}

uint64_t otBorderRouterAddOnMeshPrefix(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 17) & 0x400) != 0)
  {
    v2 = ot::AsCoreType<otInstance>(a1);
    v8 = ot::Instance::Get<ot::BackboneRouter::Local>(v2);
    v3 = ot::AsCoreType<otBorderRouterConfig>(a2);
    return ot::BackboneRouter::Local::SetDomainPrefix(v8, v3);
  }

  else
  {
    v4 = ot::AsCoreType<otInstance>(a1);
    v7 = ot::Instance::Get<ot::NetworkData::Local>(v4);
    v5 = ot::AsCoreType<otBorderRouterConfig>(a2);
    return ot::NetworkData::Local::AddOnMeshPrefix(v7, v5);
  }
}

uint64_t otBorderRouterRemoveOnMeshPrefix(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v8 = ot::Instance::Get<ot::BackboneRouter::Local>(v2);
  v3 = ot::AsCoreType<otIp6Prefix>(a2);
  v9 = ot::BackboneRouter::Local::RemoveDomainPrefix(v8, v3);
  if (v9 == 23)
  {
    v4 = ot::AsCoreType<otInstance>(a1);
    v7 = ot::Instance::Get<ot::NetworkData::Local>(v4);
    v5 = ot::AsCoreType<otIp6Prefix>(a2);
    return ot::NetworkData::Local::RemoveOnMeshPrefix(v7, v5);
  }

  return v9;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otIp6Prefix>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t ot::NetworkData::Local::RemoveOnMeshPrefix(ot::NetworkData::Local *this, const ot::Ip6::Prefix *a2)
{
  return ot::NetworkData::Local::RemovePrefix(this, a2);
}

{
  return ot::NetworkData::Local::RemoveOnMeshPrefix(this, a2);
}

uint64_t otBorderRouterGetNextOnMeshPrefix(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otBorderRouterGetNextOnMeshPrefix", "border_router_api.cpp", 90, "(aIterator) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::NetworkData::Local>(v3);
  v4 = ot::AsCoreType<otBorderRouterConfig>(a3);
  return ot::NetworkData::NetworkData::GetNextOnMeshPrefix(v6, a2, v4);
}

uint64_t otBorderRouterAddRoute(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::NetworkData::Local>(v2);
  v3 = ot::AsCoreType<otExternalRouteConfig>(a2);
  return ot::NetworkData::Local::AddHasRoutePrefix(v5, v3);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otExternalRouteConfig>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t otBorderRouterRemoveRoute(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::NetworkData::Local>(v2);
  v3 = ot::AsCoreType<otIp6Prefix>(a2);
  return ot::NetworkData::Local::RemoveHasRoutePrefix(v5, v3);
}

uint64_t ot::NetworkData::Local::RemoveHasRoutePrefix(ot::NetworkData::Local *this, const ot::Ip6::Prefix *a2)
{
  return ot::NetworkData::Local::RemovePrefix(this, a2);
}

{
  return ot::NetworkData::Local::RemoveHasRoutePrefix(this, a2);
}

uint64_t otBorderRouterGetNextRoute(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otBorderRouterGetNextRoute", "border_router_api.cpp", 109, "(aIterator) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::NetworkData::Local>(v3);
  v4 = ot::AsCoreType<otExternalRouteConfig>(a3);
  return ot::NetworkData::NetworkData::GetNextExternalRoute(v6, a2, v4);
}

uint64_t otBorderRouterRegister(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkData::Notifier>(v1);
  ot::NetworkData::Notifier::HandleServerDataUpdated(v2);
  return 0;
}

uint64_t ot::Instance::Get<ot::NetworkData::Notifier>(uint64_t a1)
{
  return a1 + 144176;
}

{
  return ot::Instance::Get<ot::NetworkData::Notifier>(a1);
}

uint64_t otBorderRouterClearLocalNetworkData(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkData::Local>(v1);
  ot::NetworkData::Local::ClearLocalNetworkData(v2);
  return 0;
}

void *otBorderRouterSetNetDataFullCallback(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::NetworkData::Notifier>(v3);
  return ot::NetworkData::Notifier::SetNetDataFullCallback(v4, a2, a3);
}

void otChannelManagerRequestChannelChange(uint64_t a1, unsigned __int8 a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Utils::ChannelManager>(v2);
  ot::Utils::ChannelManager::RequestNetworkChannelChange(v3, a2);
}

uint64_t ot::Instance::Get<ot::Utils::ChannelManager>(uint64_t a1)
{
  return a1 + 156696;
}

{
  return ot::Instance::Get<ot::Utils::ChannelManager>(a1);
}

uint64_t otChannelManagerGetRequestedChannel(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::ChannelManager>(v1);
  return ot::Utils::ChannelManager::GetRequestedChannel(v2);
}

uint64_t ot::Utils::ChannelManager::GetRequestedChannel(ot::Utils::ChannelManager *this)
{
  return *(this + 10);
}

{
  return ot::Utils::ChannelManager::GetRequestedChannel(this);
}

uint64_t otChannelManagerGetDelay(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::ChannelManager>(v1);
  return ot::Utils::ChannelManager::GetDelay(v2);
}

uint64_t ot::Utils::ChannelManager::GetDelay(ot::Utils::ChannelManager *this)
{
  return *(this + 4);
}

{
  return ot::Utils::ChannelManager::GetDelay(this);
}

uint64_t otChannelManagerSetDelay(uint64_t a1, unsigned __int16 a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Utils::ChannelManager>(v2);
  return ot::Utils::ChannelManager::SetDelay(v3, a2);
}

void otChannelManagerSetAutoChannelSelectionEnabled(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::ChannelManager>(v1);
  ot::Utils::ChannelManager::SetAutoNetworkChannelSelectionEnabled(v2);
}

uint64_t otChannelManagerGetAutoChannelSelectionEnabled(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::ChannelManager>(v1);
  return ot::Utils::ChannelManager::GetAutoNetworkChannelSelectionEnabled(v2);
}

uint64_t ot::Utils::ChannelManager::GetAutoNetworkChannelSelectionEnabled(ot::Utils::ChannelManager *this)
{
  return *(this + 44) & 1;
}

{
  return ot::Utils::ChannelManager::GetAutoNetworkChannelSelectionEnabled(this);
}

uint64_t otChannelManagerSetAutoChannelSelectionInterval(uint64_t a1, unsigned int a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Utils::ChannelManager>(v2);
  return ot::Utils::ChannelManager::SetAutoChannelSelectionInterval(v3, a2);
}

uint64_t otChannelManagerGetAutoChannelSelectionInterval(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::ChannelManager>(v1);
  return ot::Utils::ChannelManager::GetAutoChannelSelectionInterval(v2);
}

uint64_t ot::Utils::ChannelManager::GetAutoChannelSelectionInterval(ot::Utils::ChannelManager *this)
{
  return *(this + 10);
}

{
  return ot::Utils::ChannelManager::GetAutoChannelSelectionInterval(this);
}

uint64_t otChannelManagerGetSupportedChannels(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::ChannelManager>(v1);
  return ot::Utils::ChannelManager::GetSupportedChannels(v2);
}

uint64_t ot::Utils::ChannelManager::GetSupportedChannels(ot::Utils::ChannelManager *this)
{
  return ot::Mac::ChannelMask::GetMask(this);
}

{
  return ot::Utils::ChannelManager::GetSupportedChannels(this);
}

void otChannelManagerSetSupportedChannels(uint64_t a1, int a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Utils::ChannelManager>(v2);
  ot::Utils::ChannelManager::SetSupportedChannels(v3, a2);
}

uint64_t otChannelManagerGetFavoredChannels(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::ChannelManager>(v1);
  return ot::Utils::ChannelManager::GetFavoredChannels(v2);
}

uint64_t ot::Utils::ChannelManager::GetFavoredChannels(ot::Utils::ChannelManager *this)
{
  return ot::Mac::ChannelMask::GetMask((this + 4));
}

{
  return ot::Utils::ChannelManager::GetFavoredChannels(this);
}

void otChannelManagerSetFavoredChannels(uint64_t a1, int a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Utils::ChannelManager>(v2);
  ot::Utils::ChannelManager::SetFavoredChannels(v3, a2);
}

uint64_t otChannelManagerGetCcaFailureRateThreshold(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::ChannelManager>(v1);
  return ot::Utils::ChannelManager::GetCcaFailureRateThreshold(v2);
}

uint64_t ot::Utils::ChannelManager::GetCcaFailureRateThreshold(ot::Utils::ChannelManager *this)
{
  return *(this + 23);
}

{
  return ot::Utils::ChannelManager::GetCcaFailureRateThreshold(this);
}

void otChannelManagerSetCcaFailureRateThreshold(uint64_t a1, __int16 a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Utils::ChannelManager>(v2);
  ot::Utils::ChannelManager::SetCcaFailureRateThreshold(v3, a2, v4, v5, v6, v7, v8, v9);
}

uint64_t ot::Mac::ChannelMask::GetMask(ot::Mac::ChannelMask *this)
{
  return *this;
}

{
  return ot::Mac::ChannelMask::GetMask(this);
}

uint64_t ot::DataUtils::MatchBytes(ot::DataUtils *this, const unsigned __int8 *a2, const unsigned __int8 *a3, uint64_t a4, BOOL (*a5)(unsigned __int8, unsigned __int8))
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  *&v10[1] = a4;
  v10[0] = 1;
  if (a4)
  {
    while (v11--)
    {
      v6 = v13;
      v13 = (v13 + 1);
      v7 = *v6;
      v8 = v12++;
      if (((*&v10[1])(v7, *v8) & 1) == 0)
      {
        v10[0] = 0;
        return v10[0] & 1;
      }
    }
  }

  else
  {
    *v10 = memcmp(this, a2, a3) == 0;
  }

  return v10[0] & 1;
}

uint64_t otChildSupervisionGetInterval(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::SupervisionListener>(v1);
  return ot::SupervisionListener::GetInterval(v2);
}

uint64_t ot::Instance::Get<ot::SupervisionListener>(uint64_t a1)
{
  return a1 + 154552;
}

{
  return ot::Instance::Get<ot::SupervisionListener>(a1);
}

uint64_t ot::SupervisionListener::GetInterval(ot::SupervisionListener *this)
{
  return *(this + 1);
}

{
  return ot::SupervisionListener::GetInterval(this);
}

void otChildSupervisionSetInterval(uint64_t a1, unsigned __int16 a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::SupervisionListener>(v2);
  ot::SupervisionListener::SetInterval(v3, a2, v4, v5, v6, v7, v8, v9);
}

uint64_t otChildSupervisionGetCheckTimeout(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::SupervisionListener>(v1);
  return ot::SupervisionListener::GetTimeout(v2);
}

uint64_t ot::SupervisionListener::GetTimeout(ot::SupervisionListener *this)
{
  return *this;
}

{
  return ot::SupervisionListener::GetTimeout(this);
}

ot::SupervisionListener *otChildSupervisionSetCheckTimeout(uint64_t a1, unsigned __int16 a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::SupervisionListener>(v2);
  return ot::SupervisionListener::SetTimeout(v3, a2, v4, v5, v6, v7, v8, v9);
}

uint64_t otChildSupervisionGetCheckFailureCounter(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::SupervisionListener>(v1);
  return ot::SupervisionListener::GetCounter(v2);
}

uint64_t ot::SupervisionListener::GetCounter(ot::SupervisionListener *this)
{
  return *(this + 2);
}

{
  return ot::SupervisionListener::GetCounter(this);
}

uint64_t otChildSupervisionResetCheckFailureCounter(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::SupervisionListener>(v1);
  return ot::SupervisionListener::ResetCounter(v2);
}

uint64_t ot::SupervisionListener::ResetCounter(uint64_t this)
{
  *(this + 4) = 0;
  return this;
}

{
  return ot::SupervisionListener::ResetCounter(this);
}

ot::Message *otCoapNewMessage(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  ApplicationCoap = ot::Instance::GetApplicationCoap(v2);
  v3 = ot::Message::Settings::From(a2);
  return ot::Coap::CoapBase::NewMessage(ApplicationCoap, v3);
}

uint64_t ot::Instance::GetApplicationCoap(ot::Instance *this)
{
  return this + 156336;
}

{
  return ot::Instance::GetApplicationCoap(this);
}

void otCoapMessageInit(uint64_t a1, unsigned int a2, unsigned int a3)
{
  ot::AsCoapMessage();
  v6 = v3;
  v5 = ot::MapEnum<otCoapType>(a2);
  v4 = ot::MapEnum<otCoapCode>(a3);
  ot::Coap::Message::Init(v6, v5, v4);
}

void ot::AsCoapMessage()
{
  ;
}

{
  ;
}

{
  ot::AsCoapMessage();
}

{
  ot::AsCoapMessage();
}

uint64_t ot::MapEnum<otCoapType>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<otCoapType>(result);
}

uint64_t ot::MapEnum<otCoapCode>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<otCoapCode>(result);
}

uint64_t otCoapMessageInitResponse(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  ot::AsCoapMessage();
  v11 = v4;
  ot::AsCoapMessage();
  v10 = v5;
  v9 = ot::MapEnum<otCoapType>(a3);
  v6 = ot::MapEnum<otCoapCode>(a4);
  ot::Coap::Message::Init(v11, v9, v6);
  MessageId = ot::Coap::Message::GetMessageId(v10);
  ot::Coap::Message::SetMessageId(v11, MessageId);
  return ot::Coap::Message::SetTokenFromMessage(v11, v10);
}

uint64_t ot::Coap::Message::SetMessageId(ot::Coap::Message *this, unsigned __int16 a2)
{
  v6 = ot::BigEndian::HostSwap16(a2);
  ot::Coap::Message::GetHelpData(this);
  v3 = v2;
  result = v6;
  *(v3 + 2) = v6;
  return result;
}

{
  return ot::Coap::Message::SetMessageId(this, a2);
}

uint64_t ot::Coap::Message::GetMessageId(ot::Coap::Message *this)
{
  HelpData = ot::Coap::Message::GetHelpData(this);
  return ot::BigEndian::HostSwap16(*(HelpData + 2));
}

{
  return ot::Coap::Message::GetMessageId(this);
}

void otCoapMessageGenerateToken(uint64_t a1, unsigned __int8 a2)
{
  ot::AsCoapMessage();
  ot::Coap::Message::GenerateRandomToken(v2, a2);
  IgnoreError();
}

uint64_t ot::Coap::Message::AppendContentFormatOption(ot::Coap::Message *a1, unsigned int a2)
{
  return ot::Coap::Message::AppendUintOption(a1, 0xCu, a2);
}

{
  return ot::Coap::Message::AppendContentFormatOption(a1, a2);
}

uint64_t ot::Coap::Message::AppendObserveOption(ot::Coap::Message *this, int a2)
{
  return ot::Coap::Message::AppendUintOption(this, 6u, (a2 & 0xFFFFFF));
}

{
  return ot::Coap::Message::AppendObserveOption(this, a2);
}

uint64_t ot::Coap::Message::AppendProxyUriOption(ot::Coap::Message *this, const char *a2)
{
  return ot::Coap::Message::AppendStringOption(this, 0x23u, a2);
}

{
  return ot::Coap::Message::AppendProxyUriOption(this, a2);
}

uint64_t ot::Coap::Message::AppendMaxAgeOption(ot::Coap::Message *this, unsigned int a2)
{
  return ot::Coap::Message::AppendUintOption(this, 0xEu, a2);
}

{
  return ot::Coap::Message::AppendMaxAgeOption(this, a2);
}

uint64_t ot::Coap::Message::AppendUriQueryOption(ot::Coap::Message *this, const char *a2)
{
  return ot::Coap::Message::AppendStringOption(this, 0xFu, a2);
}

{
  return ot::Coap::Message::AppendUriQueryOption(this, a2);
}

uint64_t ot::Coap::Message::GetType(ot::Coap::Message *this)
{
  return (*ot::Coap::Message::GetHelpData(this) & 0x30) >> 4;
}

{
  return ot::Coap::Message::GetType(this);
}

uint64_t ot::Coap::Message::GetCode(ot::Coap::Message *this)
{
  return *(ot::Coap::Message::GetHelpData(this) + 1);
}

{
  return ot::Coap::Message::GetCode(this);
}

void otCoapMessageSetCode(uint64_t a1, unsigned int a2)
{
  ot::AsCoapMessage();
  v4 = v2;
  v3 = ot::MapEnum<otCoapCode>(a2);
  ot::Coap::Message::SetCode(v4, v3);
}

void ot::Coap::Message::SetCode(ot::Coap::Message *a1, char a2)
{
  ot::Coap::Message::GetHelpData(a1);
  *(v2 + 1) = a2;
}

{
  ot::Coap::Message::SetCode(a1, a2);
}

uint64_t ot::Coap::Message::GetTokenLength(ot::Coap::Message *this)
{
  return *ot::Coap::Message::GetHelpData(this) & 0xF;
}

{
  return ot::Coap::Message::GetTokenLength(this);
}

unint64_t ot::Coap::Message::GetToken(ot::Coap::Message *this)
{
  return ot::Coap::Message::GetHelpData(this) + 4;
}

{
  return ot::Coap::Message::GetToken(this);
}

uint64_t otCoapOptionIteratorInit(uint64_t a1)
{
  v3 = ot::AsCoreType<otCoapOptionIterator>(a1);
  ot::AsCoapMessage();
  return ot::Coap::Option::Iterator::Init(v3, v1);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otCoapOptionIterator>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t otCoapOptionIteratorGetFirstOptionMatching(uint64_t a1, unsigned __int16 a2)
{
  v4 = ot::AsCoreType<otCoapOptionIterator>(a1);
  Message = ot::Coap::Option::Iterator::GetMessage(v4);
  ot::Coap::Option::Iterator::Init(v4, Message, a2);
  IgnoreError();
  return ot::Coap::Option::Iterator::GetOption(v4);
}

uint64_t ot::Coap::Option::Iterator::Init(ot::Coap::Option::Iterator *this, const ot::Coap::Message *a2, unsigned __int16 a3)
{
  return ot::Coap::Option::Iterator::InitOrAdvance(this, a2, a3);
}

{
  return ot::Coap::Option::Iterator::Init(this, a2, a3);
}

uint64_t ot::Coap::Option::Iterator::GetMessage(ot::Coap::Option::Iterator *this)
{
  return *this;
}

{
  return ot::Coap::Option::Iterator::GetMessage(this);
}

uint64_t ot::Coap::Option::Iterator::GetOption(ot::Coap::Option::Iterator *this)
{
  if (ot::Coap::Option::Iterator::IsDone(this))
  {
    return 0;
  }

  else
  {
    return this + 8;
  }
}

{
  return ot::Coap::Option::Iterator::GetOption(this);
}

uint64_t otCoapOptionIteratorGetFirstOption(uint64_t a1)
{
  v3 = ot::AsCoreType<otCoapOptionIterator>(a1);
  Message = ot::Coap::Option::Iterator::GetMessage(v3);
  ot::Coap::Option::Iterator::Init(v3, Message);
  IgnoreError();
  return ot::Coap::Option::Iterator::GetOption(v3);
}

uint64_t otCoapOptionIteratorGetNextOptionMatching(uint64_t a1, unsigned __int16 a2)
{
  v3 = ot::AsCoreType<otCoapOptionIterator>(a1);
  ot::Coap::Option::Iterator::Advance(v3, a2);
  IgnoreError();
  return ot::Coap::Option::Iterator::GetOption(v3);
}

uint64_t ot::Coap::Option::Iterator::Advance(ot::Coap::Option::Iterator *this, unsigned __int16 a2)
{
  return ot::Coap::Option::Iterator::InitOrAdvance(this, 0, a2);
}

{
  return ot::Coap::Option::Iterator::Advance(this, a2);
}

uint64_t otCoapOptionIteratorGetNextOption(uint64_t a1)
{
  v2 = ot::AsCoreType<otCoapOptionIterator>(a1);
  ot::Coap::Option::Iterator::Advance(v2);
  IgnoreError();
  return ot::Coap::Option::Iterator::GetOption(v2);
}

uint64_t otCoapSendRequestWithParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = ot::Coap::TxParameters::From(a6);
  v6 = ot::AsCoreType<otMessage>(a2);
  if (ot::Message::IsOriginThreadNetif (v6))
  {
    return 7;
  }

  else if (!a6 || ot::Coap::TxParameters::IsValid(v13))
  {
    v7 = ot::AsCoreType<otInstance>(a1);
    ApplicationCoap = ot::Instance::GetApplicationCoap(v7);
    ot::AsCoapMessage();
    v11 = v8;
    v9 = ot::AsCoreType<otMessageInfo>(a3);
    return ot::Coap::CoapBase::SendMessage(ApplicationCoap, v11, v9, v13, a4, a5);
  }

  else
  {
    return 7;
  }
}

void *ot::Coap::TxParameters::From(uint64_t a1)
{
  if (a1)
  {
    return a1;
  }

  else
  {
    return ot::Coap::TxParameters::GetDefault(0);
  }
}

{
  return ot::Coap::TxParameters::From(a1);
}

BOOL ot::Message::IsOriginThreadNetif (ot::Message *this)
{
  return ot::Message::GetOrigin(this) == 0;
}

{
  return ot::Message::IsOriginThreadNetif (this);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otMessageInfo>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t otCoapStart(uint64_t a1, __int16 a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  ApplicationCoap = ot::Instance::GetApplicationCoap(v2);
  return ot::Coap::Coap::Start(ApplicationCoap, a2, 0);
}

uint64_t otCoapStop(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  ApplicationCoap = ot::Instance::GetApplicationCoap(v1);
  return ot::Coap::Coap::Stop(ApplicationCoap);
}

void otCoapAddResource(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  ApplicationCoap = ot::Instance::GetApplicationCoap(v2);
  v3 = ot::AsCoreType<otCoapResource>(a2);
  ot::Coap::CoapBase::AddResource(ApplicationCoap, v3);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otCoapResource>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t otCoapRemoveResource(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  ApplicationCoap = ot::Instance::GetApplicationCoap(v2);
  v3 = ot::AsCoreType<otCoapResource>(a2);
  return ot::Coap::CoapBase::RemoveResource(ApplicationCoap, v3);
}

void *otCoapSetDefaultHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  ApplicationCoap = ot::Instance::GetApplicationCoap(v3);
  return ot::Coap::CoapBase::SetDefaultHandler(ApplicationCoap, a2, a3);
}

void *ot::Coap::CoapBase::SetDefaultHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(void *,otMessage *,otMessageInfo const*)>::Set((a1 + 112), a2, a3);
}

{
  return ot::Coap::CoapBase::SetDefaultHandler(a1, a2, a3);
}

uint64_t otCoapSendResponseWithParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = ot::AsCoreType<otMessage>(a2);
  if (ot::Message::IsOriginThreadNetif (v4))
  {
    return 7;
  }

  else
  {
    v5 = ot::AsCoreType<otInstance>(a1);
    ApplicationCoap = ot::Instance::GetApplicationCoap(v5);
    ot::AsCoapMessage();
    v9 = v6;
    v10 = ot::AsCoreType<otMessageInfo>(a3);
    v7 = ot::Coap::TxParameters::From(a4);
    return ot::Coap::CoapBase::SendMessage(ApplicationCoap, v9, v10, v7, 0, 0);
  }
}

uint64_t ot::BigEndian::HostSwap16(ot::BigEndian *this)
{
  return ot::Swap16(this);
}

{
  return ot::BigEndian::HostSwap16(this);
}

void ot::Coap::Message::GetHelpData(ot::Coap::Message *this)
{
  ot::AsConst<ot::Coap::Message>();
  ot::Coap::Message::GetHelpData(v1);
  ot::AsNonConst<ot::Coap::Message::HelpData>();
}

{
  ot::Coap::Message::GetHelpData(this);
}

uint64_t ot::Swap16(ot *this)
{
  return ((this << 8) | ((this & 0xFF00) >> 8));
}

{
  return ot::Swap16(this);
}

void ot::AsNonConst<ot::Coap::Message::HelpData>()
{
  ;
}

{
  ot::AsNonConst<ot::Coap::Message::HelpData>();
}

void ot::AsConst<ot::Coap::Message>()
{
  ;
}

{
  ot::AsConst<ot::Coap::Message>();
}

unint64_t ot::Coap::Message::GetHelpData(ot::Coap::Message *this)
{
  return (ot::Buffer::GetFirstData(this) + 1) & 0xFFFFFFFFFFFFFFFELL;
}

{
  return ot::Coap::Message::GetHelpData(this);
}

uint64_t ot::Buffer::GetFirstData(ot::Buffer *this)
{
  return this + 88;
}

{
  return this + 88;
}

{
  return ot::Buffer::GetFirstData(this);
}

{
  return ot::Buffer::GetFirstData(this);
}

BOOL ot::Coap::Option::Iterator::IsDone(ot::Coap::Option::Iterator *this)
{
  return *(this + 5) == 0xFFFF;
}

{
  return ot::Coap::Option::Iterator::IsDone(this);
}

void *ot::Coap::TxParameters::GetDefault(ot::Coap::TxParameters *this)
{
  return &ot::Coap::TxParameters::kDefaultTxParameters;
}

{
  return ot::Coap::TxParameters::GetDefault(this);
}

uint64_t ot::Message::GetOrigin(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 18) & 3;
}

{
  return ot::Message::GetOrigin(this);
}

void *ot::CallbackBase<void (*)(void *,otMessage *,otMessageInfo const*)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(void *,otMessage *,otMessageInfo const*)>::Set(result, a2, a3);
}

uint64_t otCommissionerStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v4);
  return ot::MeshCoP::Commissioner::Start(v5, a2, a3, a4);
}

uint64_t ot::Instance::Get<ot::MeshCoP::Commissioner>(uint64_t a1)
{
  return a1 + 144416;
}

{
  return ot::Instance::Get<ot::MeshCoP::Commissioner>(a1);
}

uint64_t otCommissionerGetId(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v1);
  return ot::MeshCoP::Commissioner::GetId(v2);
}

uint64_t ot::MeshCoP::Commissioner::GetId(ot::MeshCoP::Commissioner *this)
{
  return this + 489;
}

{
  return ot::MeshCoP::Commissioner::GetId(this);
}

uint64_t otCommissionerSetId(uint64_t a1, ot *a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v2);
  return ot::MeshCoP::Commissioner::SetId(v3, a2);
}

uint64_t otCommissionerStop(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v1);
  return ot::MeshCoP::Commissioner::Stop(v2);
}

uint64_t ot::MeshCoP::Commissioner::Stop(ot::MeshCoP::Commissioner *this)
{
  return ot::MeshCoP::Commissioner::Stop(this, 0);
}

{
  return ot::MeshCoP::Commissioner::Stop(this);
}

uint64_t otCommissionerAddJoiner(uint64_t a1, uint64_t a2, ot *a3, unsigned int a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v4);
  if (a2)
  {
    v5 = ot::AsCoreType<otExtAddress>(a2);
    return ot::MeshCoP::Commissioner::AddJoiner(v7, v5, a3, a4);
  }

  else
  {
    return ot::MeshCoP::Commissioner::AddJoinerAny(v7, a3, a4);
  }
}

uint64_t ot::MeshCoP::Commissioner::AddJoinerAny(ot::MeshCoP::Commissioner *this, ot *a2, unsigned int a3)
{
  return ot::MeshCoP::Commissioner::AddJoiner(this, 0, 0, a2, a3);
}

{
  return ot::MeshCoP::Commissioner::AddJoinerAny(this, a2, a3);
}

uint64_t ot::MeshCoP::Commissioner::AddJoiner(ot::MeshCoP::Commissioner *this, const ot::Mac::ExtAddress *a2, ot *a3, unsigned int a4)
{
  return ot::MeshCoP::Commissioner::AddJoiner(this, a2, 0, a3, a4);
}

{
  return ot::MeshCoP::Commissioner::AddJoiner(this, a2, a3, a4);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otExtAddress>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t otCommissionerAddJoinerWithDiscerner(uint64_t a1, uint64_t a2, ot *a3, unsigned int a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v4);
  v5 = ot::AsCoreType<otJoinerDiscerner>(a2);
  return ot::MeshCoP::Commissioner::AddJoiner(v7, v5, a3, a4);
}

uint64_t ot::MeshCoP::Commissioner::AddJoiner(ot::MeshCoP::Commissioner *this, const ot::MeshCoP::JoinerDiscerner *a2, ot *a3, unsigned int a4)
{
  return ot::MeshCoP::Commissioner::AddJoiner(this, 0, a2, a3, a4);
}

{
  return ot::MeshCoP::Commissioner::AddJoiner(this, a2, a3, a4);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otJoinerDiscerner>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t otCommissionerGetNextJoinerInfo(uint64_t a1, _WORD *a2, char *a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v3);
  return ot::MeshCoP::Commissioner::GetNextJoinerInfo(v4, a2, a3);
}

uint64_t otCommissionerRemoveJoiner(uint64_t a1, uint64_t a2)
{
  *&v6[4] = a2;
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v2);
  if (*&v6[4])
  {
    v3 = ot::AsCoreType<otExtAddress>(*&v6[4]);
    *v6 = ot::MeshCoP::Commissioner::RemoveJoiner(v5, v3, 0);
  }

  else
  {
    *v6 = ot::MeshCoP::Commissioner::RemoveJoinerAny(v5, 0);
  }

  return *v6;
}

uint64_t ot::MeshCoP::Commissioner::RemoveJoinerAny(ot::MeshCoP::Commissioner *this, unsigned int a2)
{
  return ot::MeshCoP::Commissioner::RemoveJoiner(this, 0, 0, a2);
}

{
  return ot::MeshCoP::Commissioner::RemoveJoinerAny(this, a2);
}

uint64_t ot::MeshCoP::Commissioner::RemoveJoiner(ot::MeshCoP::Commissioner *this, const ot::Mac::ExtAddress *a2, unsigned int a3)
{
  return ot::MeshCoP::Commissioner::RemoveJoiner(this, a2, 0, a3);
}

{
  return ot::MeshCoP::Commissioner::RemoveJoiner(this, a2, a3);
}

uint64_t otCommissionerRemoveJoinerWithDiscerner(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v2);
  v3 = ot::AsCoreType<otJoinerDiscerner>(a2);
  return ot::MeshCoP::Commissioner::RemoveJoiner(v5, v3, 0);
}

uint64_t ot::MeshCoP::Commissioner::RemoveJoiner(ot::MeshCoP::Commissioner *this, const ot::MeshCoP::JoinerDiscerner *a2, unsigned int a3)
{
  return ot::MeshCoP::Commissioner::RemoveJoiner(this, 0, a2, a3);
}

{
  return ot::MeshCoP::Commissioner::RemoveJoiner(this, a2, a3);
}

uint64_t otCommissionerSetProvisioningUrl(uint64_t a1, ot *a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v2);
  return ot::MeshCoP::Commissioner::SetProvisioningUrl(v3, a2);
}

uint64_t otCommissionerGetProvisioningUrl(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v1);
  return ot::MeshCoP::Commissioner::GetProvisioningUrl(v2);
}

uint64_t ot::MeshCoP::Commissioner::GetProvisioningUrl(ot::MeshCoP::Commissioner *this)
{
  return this + 424;
}

{
  return ot::MeshCoP::Commissioner::GetProvisioningUrl(this);
}

uint64_t otCommissionerAnnounceBegin(uint64_t a1, unsigned int a2, unsigned __int8 a3, unsigned __int16 a4, uint64_t a5)
{
  v5 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v5);
  AnnounceBeginClient = ot::MeshCoP::Commissioner::GetAnnounceBeginClient(v6);
  v7 = ot::AsCoreType<otIp6Address>(a5);
  return ot::AnnounceBeginClient::SendRequest(AnnounceBeginClient, a2, a3, a4, v7);
}

uint64_t ot::MeshCoP::Commissioner::GetAnnounceBeginClient(ot::MeshCoP::Commissioner *this)
{
  return this + 352;
}

{
  return ot::MeshCoP::Commissioner::GetAnnounceBeginClient(this);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otIp6Address>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t otCommissionerEnergyScan(uint64_t a1, unsigned int a2, unsigned __int8 a3, unsigned __int16 a4, unsigned __int16 a5, uint64_t a6, void (*a7)(unsigned int, const unsigned __int8 *, unsigned __int8, void *), uint64_t a8)
{
  v8 = ot::AsCoreType<otInstance>(a1);
  v9 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v8);
  EnergyScanClient = ot::MeshCoP::Commissioner::GetEnergyScanClient(v9);
  v10 = ot::AsCoreType<otIp6Address>(a6);
  return ot::EnergyScanClient::SendQuery(EnergyScanClient, a2, a3, a4, a5, v10, a7, a8);
}

uint64_t ot::MeshCoP::Commissioner::GetEnergyScanClient(ot::MeshCoP::Commissioner *this)
{
  return this + 360;
}

{
  return ot::MeshCoP::Commissioner::GetEnergyScanClient(this);
}

uint64_t otCommissionerPanIdQuery(uint64_t a1, unsigned __int16 a2, unsigned int a3, uint64_t a4, void (*a5)(unsigned __int16, unsigned int, void *), uint64_t a6)
{
  v6 = ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v6);
  PanIdQueryClient = ot::MeshCoP::Commissioner::GetPanIdQueryClient(v7);
  v8 = ot::AsCoreType<otIp6Address>(a4);
  return ot::PanIdQueryClient::SendQuery(PanIdQueryClient, a2, a3, v8, a5, a6);
}

uint64_t ot::MeshCoP::Commissioner::GetPanIdQueryClient(ot::MeshCoP::Commissioner *this)
{
  return this + 376;
}

{
  return ot::MeshCoP::Commissioner::GetPanIdQueryClient(this);
}

uint64_t otCommissionerSendMgmtGet(uint64_t a1, char *a2, unsigned __int8 a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v3);
  return ot::MeshCoP::Commissioner::SendMgmtCommissionerGetRequest(v4, a2, a3);
}

uint64_t otCommissionerSendMgmtSet(uint64_t a1, uint64_t a2, char *a3, unsigned __int8 a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v4);
  v5 = ot::AsCoreType<otCommissioningDataset>(a2);
  return ot::MeshCoP::Commissioner::SendMgmtCommissionerSetRequest(v7, v5, a3, a4);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otCommissioningDataset>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t otCommissionerGetSessionId(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v1);
  return ot::MeshCoP::Commissioner::GetSessionId(v2);
}

uint64_t ot::MeshCoP::Commissioner::GetSessionId(ot::MeshCoP::Commissioner *this)
{
  return *(this + 138);
}

{
  return ot::MeshCoP::Commissioner::GetSessionId(this);
}

uint64_t otCommissionerGetState(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v1);
  State = ot::MeshCoP::Commissioner::GetState(v2);
  return ot::MapEnum<ot::MeshCoP::Commissioner::State>(State);
}

uint64_t ot::MapEnum<ot::MeshCoP::Commissioner::State>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::MeshCoP::Commissioner::State>(result);
}

uint64_t ot::MeshCoP::Commissioner::GetState(ot::MeshCoP::Commissioner *this)
{
  return *(this + 554);
}

{
  return ot::MeshCoP::Commissioner::GetState(this);
}

uint64_t otDatasetIsCommissioned(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v1);
  return ot::MeshCoP::ActiveDatasetManager::IsCommissioned(active);
}

uint64_t ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(uint64_t a1)
{
  return a1 + 87312;
}

{
  return ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
}

uint64_t otDatasetGetActive(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v2);
  v3 = ot::AsCoreType<otOperationalDataset>(a2);
  return ot::MeshCoP::DatasetManager::Read(active, v3);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otOperationalDataset>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

uint64_t otDatasetGetActiveTlvs(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    __assert_rtn("otDatasetGetActiveTlvs", "dataset_api.cpp", 57, "(aDataset) != nullptr");
  }

  v2 = ot::AsCoreType<otInstance>(a1);
  active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v2);
  return ot::MeshCoP::DatasetManager::Read(active, a2);
}

uint64_t otDatasetSetActive(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v2);
  v3 = ot::AsCoreType<otOperationalDataset>(a2);
  ot::MeshCoP::DatasetManager::SaveLocal(active, v3);
  return 0;
}

uint64_t otDatasetSetActiveTlvs(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __assert_rtn("otDatasetSetActiveTlvs", "dataset_api.cpp", 71, "(aDataset) != nullptr");
  }

  v2 = ot::AsCoreType<otInstance>(a1);
  active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v2);
  return ot::MeshCoP::DatasetManager::SaveLocal(active, a2);
}

uint64_t otDatasetGetPending(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v2);
  v3 = ot::AsCoreType<otOperationalDataset>(a2);
  return ot::MeshCoP::DatasetManager::Read(v5, v3);
}

uint64_t ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(uint64_t a1)
{
  return a1 + 87640;
}

{
  return ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(a1);
}

uint64_t otDatasetGetPendingTlvs(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    __assert_rtn("otDatasetGetPendingTlvs", "dataset_api.cpp", 83, "(aDataset) != nullptr");
  }

  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v2);
  return ot::MeshCoP::DatasetManager::Read(v3, a2);
}

uint64_t otDatasetSetPending(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v2);
  v3 = ot::AsCoreType<otOperationalDataset>(a2);
  ot::MeshCoP::DatasetManager::SaveLocal(v5, v3);
  return 0;
}

uint64_t otDatasetSetPendingTlvs(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __assert_rtn("otDatasetSetPendingTlvs", "dataset_api.cpp", 97, "(aDataset) != nullptr");
  }

  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v2);
  return ot::MeshCoP::DatasetManager::SaveLocal(v3, a2);
}

uint64_t otDatasetSendMgmtActiveGet(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v5 = ot::AsCoreType<otInstance>(a1);
  active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v5);
  v6 = ot::AsCoreType<otOperationalDatasetComponents>(a2);
  return ot::MeshCoP::DatasetManager::SendGetRequest(active, v6, a3, a4, a5);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otOperationalDatasetComponents>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

uint64_t otDatasetSendMgmtActiveSet(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  v6 = ot::AsCoreType<otInstance>(a1);
  active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v6);
  v7 = ot::AsCoreType<otOperationalDataset>(a2);
  return ot::MeshCoP::DatasetManager::SendSetRequest(active, v7, a3, a4, a5, a6);
}

uint64_t otDatasetSendMgmtPendingGet(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v5 = ot::AsCoreType<otInstance>(a1);
  v8 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v5);
  v6 = ot::AsCoreType<otOperationalDatasetComponents>(a2);
  return ot::MeshCoP::DatasetManager::SendGetRequest(v8, v6, a3, a4, a5);
}

uint64_t otDatasetSendMgmtPendingSet(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  v6 = ot::AsCoreType<otInstance>(a1);
  v9 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v6);
  v7 = ot::AsCoreType<otOperationalDataset>(a2);
  return ot::MeshCoP::DatasetManager::SendSetRequest(v9, v7, a3, a4, a5, a6);
}

uint64_t otDatasetGeneratePskc(ot::MeshCoP *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = ot::AsCoreType<otNetworkName>(a2);
  v8 = ot::AsCoreType<otExtendedPanId>(a3);
  v4 = ot::AsCoreType<otPskc>(a4);
  return ot::MeshCoP::GeneratePskc(a1, v7, v8, v4, v5);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otNetworkName>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otExtendedPanId>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otPskc>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

uint64_t otNetworkNameFromString(uint64_t a1, ot *a2)
{
  v2 = ot::AsCoreType<otNetworkName>(a1);
  v5 = ot::MeshCoP::NetworkName::Set(v2, a2);
  if (v5 == 24)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t otDatasetParseTlvs(uint64_t a1, uint64_t a2)
{
  ot::MeshCoP::Dataset::Dataset(v7);
  if (!a1)
  {
    __assert_rtn("otDatasetParseTlvs", "dataset_api.cpp", 166, "(aDatasetTlvs) != nullptr");
  }

  v4 = ot::MeshCoP::Dataset::SetFrom(v7, a1);
  if (!v4)
  {
    if (ot::MeshCoP::Dataset::ValidateTlvs(v7))
    {
      return 7;
    }

    else
    {
      v2 = ot::AsCoreType<otOperationalDataset>(a2);
      ot::MeshCoP::Dataset::ConvertTo(v7, v2);
    }
  }

  return v4;
}

void *otDatasetConvertToTlvs(uint64_t a1, _BYTE *a2)
{
  ot::MeshCoP::Dataset::Dataset(v6);
  if (!a2)
  {
    __assert_rtn("otDatasetConvertToTlvs", "dataset_api.cpp", 180, "(aDatasetTlvs) != nullptr");
  }

  v2 = ot::AsCoreType<otOperationalDataset>(a1);
  ot::MeshCoP::Dataset::SetFrom(v6, v2);
  return ot::MeshCoP::Dataset::ConvertTo(v6, a2);
}

uint64_t otDatasetUpdateTlvs(uint64_t a1, _BYTE *a2)
{
  ot::MeshCoP::Dataset::Dataset(v7);
  if (!a2)
  {
    __assert_rtn("otDatasetUpdateTlvs", "dataset_api.cpp", 191, "(aDatasetTlvs) != nullptr");
  }

  v4 = ot::MeshCoP::Dataset::SetFrom(v7, a2);
  if (!v4)
  {
    v2 = ot::AsCoreType<otOperationalDataset>(a1);
    v4 = ot::MeshCoP::Dataset::WriteTlvsFrom(v7, v2);
    if (!v4)
    {
      ot::MeshCoP::Dataset::ConvertTo(v7, a2);
    }
  }

  return v4;
}

uint64_t otDatasetCreateNewNetwork(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v2);
  v3 = ot::AsCoreType<otOperationalDataset>(a2);
  return ot::MeshCoP::ActiveDatasetManager::CreateNewNetwork(active, v3);
}

uint64_t ot::MeshCoP::ActiveDatasetManager::CreateNewNetwork(ot::MeshCoP::ActiveDatasetManager *this, ot::MeshCoP::Dataset::Info *a2)
{
  Instance = ot::InstanceLocator::GetInstance(this);
  return ot::MeshCoP::Dataset::Info::GenerateRandom(a2, Instance);
}

{
  return ot::MeshCoP::ActiveDatasetManager::CreateNewNetwork(this, a2);
}

uint64_t otDatasetGetDelayTimerMinimal(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Leader>(v1);
  return ot::MeshCoP::Leader::GetDelayTimerMinimal(v2);
}

uint64_t ot::Instance::Get<ot::MeshCoP::Leader>(uint64_t a1)
{
  return a1 + 146456;
}

{
  return ot::Instance::Get<ot::MeshCoP::Leader>(a1);
}

uint64_t ot::MeshCoP::Leader::GetDelayTimerMinimal(ot::MeshCoP::Leader *this)
{
  return *(this + 8);
}

{
  return ot::MeshCoP::Leader::GetDelayTimerMinimal(this);
}

uint64_t otDatasetSetDelayTimerMinimal(uint64_t a1, unsigned int a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MeshCoP::Leader>(v2);
  return ot::MeshCoP::Leader::SetDelayTimerMinimal(v3, a2);
}

uint64_t otDiagProcessCmdLine(uint64_t a1, char *a2)
{
  if (!a2)
  {
    __assert_rtn("otDiagProcessCmdLine", "diags_api.cpp", 47, "(aString) != nullptr");
  }

  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::FactoryDiags::Diags>(v2);
  return ot::FactoryDiags::Diags::ProcessLine(v3, a2);
}

uint64_t ot::Instance::Get<ot::FactoryDiags::Diags>(uint64_t a1)
{
  return a1 + 168288;
}

{
  return ot::Instance::Get<ot::FactoryDiags::Diags>(a1);
}

uint64_t otDiagProcessCmd(uint64_t a1, unsigned __int8 a2, const char **a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::FactoryDiags::Diags>(v3);
  return ot::FactoryDiags::Diags::ProcessCmd(v4, a2, a3);
}

uint64_t otDiagIsEnabled(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::FactoryDiags::Diags>(v1);
  return ot::FactoryDiags::Diags::IsEnabled(v2);
}

uint64_t otDiagSetOutputCallback(uint64_t a1, void (*a2)(const char *, char *, void *), void *a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::FactoryDiags::Diags>(v3);
  return ot::FactoryDiags::Diags::SetOutputCallback(v4, a2, a3);
}

ot::ChildSupervisor *ot::ChildSupervisor::ChildSupervisor(ot::ChildSupervisor *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::TimerMilliIn<ot::ChildSupervisor,&ot::ChildSupervisor::HandleTimer>::TimerMilliIn((this + 8), a2);
  return this;
}

{
  ot::ChildSupervisor::ChildSupervisor(this, a2);
  return this;
}

uint64_t ot::SupervisionListener::HandleTimer(ot::SupervisionListener *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsChild(v1))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
    if ((ot::MeshForwarder::GetRxOnWhenIdle(v2) & 1) == 0)
    {
      CurrentTimeoutMs = ot::SupervisionListener::GetCurrentTimeoutMs(this);
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("ChildSupervsn", "Supervision timeout. No frame from parent in %u ms", v4, v5, v6, v7, v8, v9, CurrentTimeoutMs);
      ++*(this + 2);
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::MleRouter::SendChildUpdateRequest(v10);
      IgnoreError();
    }
  }

  return ot::SupervisionListener::RestartTimer(this);
}

uint64_t ot::ChildSupervisor::HandleTimer(ot::ChildSupervisor *this)
{
  v15 = this;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v13 = ot::ChildTable::Iterate(v1, 0);
  v14 = &v13;
  v18 = ot::ChildTable::IteratorBuilder::begin(&v13);
  v19 = v2;
  v11 = v18;
  v12 = v2;
  v16 = ot::ChildTable::IteratorBuilder::end(v14);
  v17 = v3;
  v9 = v16;
  v10 = v3;
  while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v11, &v9))
  {
    v8 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v11);
    if (!ot::Neighbor::IsRxOnWhenIdle(v8) && ot::Child::GetSupervisionInterval(v8))
    {
      ot::Child::IncrementSecondsSinceLastSupervision(v8);
      SecondsSinceLastSupervision = ot::Child::GetSecondsSinceLastSupervision(v8);
      if (SecondsSinceLastSupervision >= ot::Child::GetSupervisionInterval(v8))
      {
        ot::ChildSupervisor::SendMessage(this, v8);
      }
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v11);
  }

  Interval = ot::ChildSupervisor::GetInterval(this);
  return ot::TimerMilli::Start((this + 8), Interval);
}

ot::TimerMilli *ot::TimerMilliIn<ot::ChildSupervisor,&ot::ChildSupervisor::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::ChildSupervisor,&ot::ChildSupervisor::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::ChildSupervisor,&ot::ChildSupervisor::HandleTimer>::HandleTimer);
  return a1;
}

uint64_t ot::ChildSupervisor::GetDestination(ot::ChildSupervisor *this, const ot::Message *a2)
{
  v8 = this;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  if (ot::Message::GetType(a2) == 2)
  {
    ot::Message::Read<unsigned short>(v7, 0, &v5);
    IgnoreError();
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    return ot::ChildTable::GetChildAtIndex(v2, v5);
  }

  return v6;
}

uint64_t ot::Message::GetType(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 70) & 7;
}

{
  return ot::Message::GetType(this);
}

uint64_t ot::Message::Read<unsigned short>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 2u);
}

{
  return ot::Message::Read<unsigned short>(a1, a2, a3);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::ChildTable>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
}

ot::Message **ot::ChildSupervisor::SendMessage(ot::ChildSupervisor *this, ot::Child *a2)
{
  v21 = this;
  v20 = a2;
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v19);
  ChildIndex = 0;
  if (!ot::IndirectSender::ChildInfo::GetIndirectMessageCount((v20 + 144)))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
    v3 = ot::MessagePool::Allocate(v2, 2, 1);
    ot::OwnedPtr<ot::Message>::Reset(&v19, v3);
    if (ot::Ptr<ot::Message>::operator!=(&v19, 0))
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
      ChildIndex = ot::ChildTable::GetChildIndex(v4, v20);
      v5 = ot::Ptr<ot::Message>::operator->(&v19);
      if (!ot::Message::Append<unsigned short>(v5, &ChildIndex))
      {
        v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
        ot::OwnedPtr<ot::Message>::PassOwnership();
        ot::OwnedPtr<ot::Message>::OwnedPtr(&v17, v6);
        ot::MeshForwarder::SendMessage(v15, &v17);
        ot::OwnedPtr<ot::Message>::~OwnedPtr(&v17);
        Rloc16 = ot::Neighbor::GetRloc16(v20);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChildSupervsn", "Sending supervision message to child 0x%04x", v8, v9, v10, v11, v12, v13, Rloc16);
      }
    }
  }

  return ot::OwnedPtr<ot::Message>::~OwnedPtr(&v19);
}

void *ot::OwnedPtr<ot::Message>::OwnedPtr(void *a1)
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(a1);
  return a1;
}

{
  ot::Ptr<ot::Message>::Ptr(a1);
  return a1;
}

uint64_t ot::IndirectSender::ChildInfo::GetIndirectMessageCount(ot::IndirectSender::ChildInfo *this)
{
  return (*(this + 1) >> 16) & 0x3FFFLL;
}

{
  return ot::IndirectSender::ChildInfo::GetIndirectMessageCount(this);
}

void ot::OwnedPtr<ot::Message>::Reset(ot::Message **a1, ot::Message *a2)
{
  if (*a1 != a2)
  {
    ot::OwnedPtr<ot::Message>::Delete(a1);
    *a1 = a2;
  }
}

{
  ot::OwnedPtr<ot::Message>::Reset(a1, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MessagePool>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(a1);
}

BOOL ot::Ptr<ot::Message>::operator!=(void *a1, uint64_t a2)
{
  return *a1 != a2;
}

{
  return ot::Ptr<ot::Message>::operator!=(a1, a2);
}

uint64_t ot::ChildTable::GetChildIndex(ot::ChildTable *this, const ot::Child *a2)
{
  return ((a2 - (this + 8)) / 464);
}

{
  return ot::ChildTable::GetChildIndex(this, a2);
}

uint64_t ot::Ptr<ot::Message>::operator->(uint64_t a1)
{
  return *a1;
}

{
  return ot::Ptr<ot::Message>::operator->(a1);
}

uint64_t ot::Message::Append<unsigned short>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 2u);
}

{
  return ot::Message::Append<unsigned short>(a1, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshForwarder>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
}

void ot::OwnedPtr<ot::Message>::PassOwnership()
{
  ;
}

{
  ot::OwnedPtr<ot::Message>::PassOwnership();
}

void *ot::OwnedPtr<ot::Message>::OwnedPtr(void *a1, void *a2)
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(a1, a2);
  return a1;
}

{
  ot::Ptr<ot::Message>::Ptr(a1);
  result = a1;
  *a1 = *a2;
  *a2 = 0;
  return result;
}

ot::Message **ot::OwnedPtr<ot::Message>::~OwnedPtr(ot::Message **a1)
{
  ot::OwnedPtr<ot::Message>::~OwnedPtr(a1);
  return a1;
}

{
  ot::OwnedPtr<ot::Message>::Delete(a1);
  return a1;
}

uint64_t ot::Neighbor::GetRloc16(ot::Neighbor *this)
{
  return *(this + 14);
}

{
  return ot::Neighbor::GetRloc16(this);
}

uint64_t ot::Child::ResetSecondsSinceLastSupervision(uint64_t this)
{
  *(this + 460) = 0;
  return this;
}

{
  return ot::Child::ResetSecondsSinceLastSupervision(this);
}

uint64_t ot::ChildSupervisor::GetInterval(ot::ChildSupervisor *this)
{
  v3 = 1000;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  if (ot::Mle::Mle::IsCslPeripheralPresent(v1))
  {
    return 100;
  }

  return v3;
}

BOOL ot::Mle::Mle::IsCslPeripheralPresent(ot::Mle::Mle *this)
{
  return *(this + 103) != 0;
}

{
  return ot::Mle::Mle::IsCslPeripheralPresent(this);
}

uint64_t ot::ChildTable::Iterate(ot::InstanceLocator *a1, char a2)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::ChildTable::IteratorBuilder::IteratorBuilder(&v5, Instance, a2);
  return v5;
}

{
  return ot::ChildTable::Iterate(a1, a2);
}

uint64_t ot::ChildTable::IteratorBuilder::begin(ot::ChildTable::IteratorBuilder *this)
{
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::ChildTable::Iterator::Iterator(&v4, Instance, *this);
  return v4;
}

{
  return ot::ChildTable::IteratorBuilder::begin(this);
}

uint64_t ot::ChildTable::IteratorBuilder::end(ot::ChildTable::IteratorBuilder *this)
{
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::ChildTable::Iterator::Iterator(&v3, Instance);
  return v3;
}

{
  return ot::ChildTable::IteratorBuilder::end(this);
}

BOOL ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(a1, a2);
}

uint64_t ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(a1);
}

BOOL ot::Neighbor::IsRxOnWhenIdle(ot::Neighbor *this)
{
  v3 = this;
  DeviceMode = ot::Neighbor::GetDeviceMode(this);
  return ot::Mle::DeviceMode::IsRxOnWhenIdle(&DeviceMode);
}

{
  return ot::Neighbor::IsRxOnWhenIdle(this);
}

uint64_t ot::Child::GetSupervisionInterval(ot::Child *this)
{
  return *(this + 229);
}

{
  return ot::Child::GetSupervisionInterval(this);
}

uint64_t ot::Child::IncrementSecondsSinceLastSupervision(uint64_t this)
{
  ++*(this + 460);
  return this;
}

{
  return ot::Child::IncrementSecondsSinceLastSupervision(this);
}

uint64_t ot::Child::GetSecondsSinceLastSupervision(ot::Child *this)
{
  return *(this + 230);
}

{
  return ot::Child::GetSecondsSinceLastSupervision(this);
}

uint64_t ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(uint64_t a1)
{
  return ot::ChildTable::Iterator::Advance(a1);
}

{
  return ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(a1);
}

void ot::ChildSupervisor::CheckState(ot::ChildSupervisor *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  HasChildren = 0;
  if (!ot::Mle::Mle::IsDisabled(v1))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    HasChildren = ot::ChildTable::HasChildren(v2, 0);
  }

  if (HasChildren && !ot::Timer::IsRunning((this + 8)))
  {
    Interval = ot::ChildSupervisor::GetInterval(this);
    ot::TimerMilli::Start((this + 8), Interval);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChildSupervsn", "Starting Child Supervision", v4, v5, v6, v7, v8, v9, this + 8);
  }

  if (!HasChildren && ot::Timer::IsRunning((this + 8)))
  {
    ot::TimerMilli::Stop((this + 8));
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChildSupervsn", "Stopping Child Supervision", v10, v11, v12, v13, v14, v15, v16);
  }
}

BOOL ot::Mle::Mle::IsDisabled(ot::Mle::Mle *this)
{
  return *(this + 130) == 0;
}

{
  return ot::Mle::Mle::IsDisabled(this);
}

BOOL ot::Timer::IsRunning(ot::Timer *this)
{
  return *(this + 2) != this;
}

{
  return ot::Timer::IsRunning(this);
}

void ot::ChildSupervisor::HandleNotifierEvents(ot::ChildSupervisor *a1, uint64_t a2)
{
  v3 = a2;
  if (ot::Events::ContainsAny(&v3, 3076))
  {
    ot::ChildSupervisor::CheckState(a1);
  }
}

BOOL ot::Events::ContainsAny(ot::Events *this, uint64_t a2)
{
  return (*this & a2) != 0;
}

{
  return ot::Events::ContainsAny(this, a2);
}

ot::SupervisionListener *ot::SupervisionListener::SupervisionListener(ot::SupervisionListener *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  *(this + 1) = 129;
  ot::TimerMilliIn<ot::SupervisionListener,&ot::SupervisionListener::HandleTimer>::TimerMilliIn((this + 8), a2);
  ot::SupervisionListener::SetTimeout(this, 0xBEu, v2, v3, v4, v5, v6, v7);
  return this;
}

{
  ot::SupervisionListener::SupervisionListener(this, a2);
  return this;
}

ot::TimerMilli *ot::TimerMilliIn<ot::SupervisionListener,&ot::SupervisionListener::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::SupervisionListener,&ot::SupervisionListener::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::SupervisionListener,&ot::SupervisionListener::HandleTimer>::HandleTimer);
  return a1;
}

ot::SupervisionListener *ot::SupervisionListener::SetTimeout(ot::SupervisionListener *this, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = this;
  if (*this != a2)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChildSupervsn", "Timeout: %u -> %u", a3, a4, a5, a6, a7, a8, *this);
    *v8 = a2;
    return ot::SupervisionListener::RestartTimer(v8);
  }

  return this;
}

uint64_t ot::SupervisionListener::RestartTimer(ot::SupervisionListener *this)
{
  CurrentTimeoutMs = ot::SupervisionListener::GetCurrentTimeoutMs(this);
  if (!CurrentTimeoutMs)
  {
    return ot::TimerMilli::Stop((this + 8));
  }

  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsDisabled(v1))
  {
    return ot::TimerMilli::Stop((this + 8));
  }

  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
  if (ot::MeshForwarder::GetRxOnWhenIdle(v2))
  {
    return ot::TimerMilli::Stop((this + 8));
  }

  else
  {
    return ot::TimerMilli::Start((this + 8), CurrentTimeoutMs);
  }
}

void ot::SupervisionListener::SetInterval(ot::SupervisionListener *this, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 1) != a2)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChildSupervsn", "Interval: %u -> %u", a3, a4, a5, a6, a7, a8, *(this + 1));
    *(this + 1) = a2;
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (ot::Mle::Mle::IsChild(v8))
    {
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      ot::Mle::Mle::SendChildUpdateRequest(v9);
      IgnoreError();
    }
  }
}

BOOL ot::Mle::Mle::IsChild(ot::Mle::Mle *this)
{
  return *(this + 130) == 2;
}

{
  return ot::Mle::Mle::IsChild(this);
}

uint64_t ot::SupervisionListener::UpdateOnReceive(ot::SupervisionListener *this, const ot::Mac::Address *a2, char a3)
{
  result = ot::Timer::IsRunning((this + 8));
  if (result & 1) != 0 && (a3)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    result = ot::Mle::Mle::IsChild(v4);
    if (result)
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
      Neighbor = ot::NeighborTable::FindNeighbor(v5, a2, 1);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      Parent = ot::Mle::Mle::GetParent(v6);
      result = Neighbor;
      if (Neighbor == Parent)
      {
        v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
        v9 = ot::NeighborTable::FindNeighbor(v8, a2, 1);
        v20 = v9;
        if (v9)
        {
          Now = ot::TimerMilli::GetNow(v9);
          ot::Neighbor::SetLastHeard(v20, Now);
        }

        else
        {
          ot::Logger::LogAtLevel<(ot::LogLevel)1>("ChildSupervsn", "Parent is nullptr, cannot update last heard time", v10, v11, v12, v13, v14, v15, v16);
        }

        return ot::SupervisionListener::RestartTimer(this);
      }
    }
  }

  return result;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Mle::MleRouter>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::NeighborTable>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(a1);
}

uint64_t ot::Mle::Mle::GetParent(ot::Mle::Mle *this)
{
  return this + 192;
}

{
  return ot::Mle::Mle::GetParent(this);
}

uint64_t ot::Neighbor::SetLastHeard(uint64_t result, int a2)
{
  *(result + 8) = a2;
  return result;
}

{
  return ot::Neighbor::SetLastHeard(result, a2);
}

uint64_t ot::TimerMilli::GetNow(ot::TimerMilli *this)
{
  Now = otPlatAlarmMilliGetNow();
  ot::Time::Time(&v3, Now);
  return v3;
}

{
  return ot::TimerMilli::GetNow(this);
}

uint64_t ot::Time::SecToMsec(ot::Time *this)
{
  return (1000 * this);
}

{
  return ot::Time::SecToMsec(this);
}

uint64_t ot::Mle::MleRouter::SendChildUpdateRequest(ot::Mle::MleRouter *this)
{
  return ot::Mle::Mle::SendChildUpdateRequest(this);
}

{
  return ot::Mle::MleRouter::SendChildUpdateRequest(this);
}

ot::InstanceLocator *ot::ChildTable::IteratorBuilder::IteratorBuilder(ot::InstanceLocator *a1, ot::Instance *a2, char a3)
{
  ot::ChildTable::IteratorBuilder::IteratorBuilder(a1, a2, a3);
  return a1;
}

{
  ot::InstanceLocator::InstanceLocator(a1, a2);
  result = a1;
  *a1 = a3;
  return result;
}

ot::ChildTable::Iterator *ot::ChildTable::Iterator::Iterator(ot::ChildTable::Iterator *this, ot::Instance *a2)
{
  ot::ChildTable::Iterator::Iterator(this, a2);
  return this;
}

{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Ptr<ot::Message>::Ptr(this);
  result = this;
  *(this + 8) = 0;
  return result;
}

uint64_t ot::Neighbor::GetDeviceMode(ot::Neighbor *this)
{
  ot::Mle::DeviceMode::DeviceMode(&v2, *(this + 30) >> 4);
  return v2;
}

{
  return ot::Neighbor::GetDeviceMode(this);
}

BOOL ot::Mle::DeviceMode::IsRxOnWhenIdle(ot::Mle::DeviceMode *this)
{
  return (*this & 8) != 0;
}

{
  return ot::Mle::DeviceMode::IsRxOnWhenIdle(this);
}

ot::Mle::DeviceMode *ot::Mle::DeviceMode::DeviceMode(ot::Mle::DeviceMode *this, char a2)
{
  ot::Mle::DeviceMode::DeviceMode(this, a2);
  return this;
}

{
  ot::Mle::DeviceMode::Set(this, a2);
  return this;
}

_BYTE *ot::Mle::DeviceMode::Set(_BYTE *this, char a2)
{
  *this = a2 | 4;
  return this;
}

{
  return ot::Mle::DeviceMode::Set(this, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildSupervisor>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::ChildSupervisor>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildSupervisor>(a1);
}

uint64_t ot::Instance::Get<ot::ChildSupervisor>(uint64_t a1)
{
  return a1 + 154520;
}

{
  return ot::Instance::Get<ot::ChildSupervisor>(a1);
}

uint64_t ot::Instance::Get<ot::ChildTable>(uint64_t a1)
{
  return a1 + 92360;
}

{
  return ot::Instance::Get<ot::ChildTable>(a1);
}

void ot::OwnedPtr<ot::Message>::Delete(ot::Message **a1)
{
  if (*a1)
  {
    ot::Message::Free(*a1);
  }
}

{
  ot::OwnedPtr<ot::Message>::Delete(a1);
}

uint64_t ot::Instance::Get<ot::MessagePool>(uint64_t a1)
{
  return a1 + 208;
}

{
  return ot::Instance::Get<ot::MessagePool>(a1);
}

uint64_t ot::Instance::Get<ot::MeshForwarder>(uint64_t a1)
{
  return a1 + 89904;
}

{
  return ot::Instance::Get<ot::MeshForwarder>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::SupervisionListener>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::SupervisionListener>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::SupervisionListener>(a1);
}

uint64_t ot::Instance::Get<ot::Mle::MleRouter>(uint64_t a1)
{
  return a1 + 91160;
}

{
  return ot::Instance::Get<ot::Mle::MleRouter>(a1);
}

uint64_t ot::Instance::Get<ot::NeighborTable>(uint64_t a1)
{
  return a1 + 91504;
}

{
  return ot::Instance::Get<ot::NeighborTable>(a1);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otDnsTxtEntryIterator>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t otDnsGetNextTxtEntry(uint64_t a1, uint64_t a2)
{
  v4 = ot::AsCoreType<otDnsTxtEntryIterator>(a1);
  v2 = ot::AsCoreType<otDnsTxtEntry>(a2);
  return ot::Dns::TxtEntry::Iterator::GetNextEntry(v4, v2);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otDnsTxtEntry>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t otDnsEncodeTxtData(uint64_t a1, unsigned __int8 a2, uint64_t a3, __int16 *a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  appended = 0;
  if (!a1)
  {
    __assert_rtn("otDnsEncodeTxtData", "dns_api.cpp", 61, "(aTxtEntries) != nullptr");
  }

  if (!v10)
  {
    __assert_rtn("otDnsEncodeTxtData", "dns_api.cpp", 62, "(aTxtData) != nullptr");
  }

  if (!v9)
  {
    __assert_rtn("otDnsEncodeTxtData", "dns_api.cpp", 63, "(aTxtDataLength) != nullptr");
  }

  ot::MutableData<(ot::DataLengthType)1>::Init(v7, v10, *v9);
  ot::AsCoreTypePtr<otDnsTxtEntry>();
  appended = ot::Dns::TxtEntry::AppendEntries(v4, v11, v7);
  if (!appended)
  {
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v7);
    *v9 = Length;
  }

  return appended;
}

uint64_t ot::MutableData<(ot::DataLengthType)1>::Init(uint64_t a1, uint64_t a2, __int16 a3)
{
  return ot::Data<(ot::DataLengthType)1>::Init(a1, a2, a3);
}

{
  return ot::MutableData<(ot::DataLengthType)1>::Init(a1, a2, a3);
}

void ot::AsCoreTypePtr<otDnsTxtEntry>()
{
  ;
}

{
  ot::AsCoreTypePtr<otDnsTxtEntry>();
}

uint64_t ot::Data<(ot::DataLengthType)1>::GetLength(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return ot::Data<(ot::DataLengthType)1>::GetLength(a1);
}

uint64_t ot::Data<(ot::DataLengthType)1>::Init(uint64_t result, uint64_t a2, __int16 a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

{
  return ot::Data<(ot::DataLengthType)1>::Init(result, a2, a3);
}

uint64_t otIcmp6GetEchoMode(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Ip6::Icmp>(v1);
  return ot::Ip6::Icmp::GetEchoMode(v2);
}

uint64_t ot::Instance::Get<ot::Ip6::Icmp>(uint64_t a1)
{
  return a1 + 85312;
}

{
  return ot::Instance::Get<ot::Ip6::Icmp>(a1);
}

uint64_t ot::Ip6::Icmp::GetEchoMode(ot::Ip6::Icmp *this)
{
  return *(this + 3);
}

{
  return ot::Ip6::Icmp::GetEchoMode(this);
}

uint64_t otIcmp6SetEchoMode(uint64_t a1, int a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Ip6::Icmp>(v2);
  return ot::Ip6::Icmp::SetEchoMode(v3, a2);
}

uint64_t ot::Ip6::Icmp::SetEchoMode(uint64_t result, int a2)
{
  *(result + 12) = a2;
  return result;
}

{
  return ot::Ip6::Icmp::SetEchoMode(result, a2);
}

uint64_t otIcmp6RegisterHandler(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Ip6::Icmp>(v2);
  v3 = ot::AsCoreType<otIcmp6Handler>(a2);
  return ot::Ip6::Icmp::RegisterHandler(v5, v3);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otIcmp6Handler>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t otIcmp6SendEchoRequest(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v8 = ot::Instance::Get<ot::Ip6::Icmp>(v4);
  v7 = ot::AsCoreType<otMessage>(a2);
  v5 = ot::AsCoreType<otMessageInfo>(a3);
  return ot::Ip6::Icmp::SendEchoRequest(v8, v7, v5, a4);
}

ot::Utils::MeshDiag *ot::Utils::MeshDiag::MeshDiag(ot::Utils::MeshDiag *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  ot::TimerMilliIn<ot::Utils::MeshDiag,&ot::Utils::MeshDiag::HandleTimer>::TimerMilliIn((this + 8), a2);
  return this;
}

{
  ot::Utils::MeshDiag::MeshDiag(this, a2);
  return this;
}

ot::TimerMilli *ot::TimerMilliIn<ot::Utils::MeshDiag,&ot::Utils::MeshDiag::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Utils::MeshDiag,&ot::Utils::MeshDiag::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Utils::MeshDiag,&ot::Utils::MeshDiag::HandleTimer>::HandleTimer);
  return a1;
}

uint64_t ot::Utils::MeshDiag::DiscoverTopology(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = 0;
  v20 = 0;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  if (ot::Mle::Mle::IsAttached(v4))
  {
    if (*a1)
    {
      return 5;
    }

    else
    {
      v5 = v20++;
      v21[v5] = 1;
      v6 = v20++;
      v21[v6] = 0;
      v7 = v20++;
      v21[v7] = 5;
      v8 = v20++;
      v21[v8] = 24;
      if (*v25)
      {
        v9 = v20++;
        v21[v9] = 8;
      }

      if ((*v25 & 2) != 0)
      {
        v10 = v20++;
        v21[v10] = 16;
      }

      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(a1);
      ot::RouterTable::GetRouterIdSet(v11, (a1 + 6));
      for (i = 0; i <= 0x3Eu; ++i)
      {
        if (ot::Mle::RouterIdSet::Contains((a1 + 6), i))
        {
          v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
          MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v12);
          v13 = ot::Mle::Rloc16FromRouterId(i);
          ot::Ip6::Address::SetToRoutingLocator(v18, MeshLocalPrefix, v13);
          v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Client>(a1);
          v22 = ot::NetworkDiagnostic::Client::SendCommand(v14, 0x22u, 0, v18, v21, v20, ot::Utils::MeshDiag::HandleDiagGetResponse, a1);
          if (v22)
          {
            return v22;
          }
        }
      }

      ot::CallbackBase<void (*)(otError,otMeshDiagRouterInfo *,void *)>::Set(a1 + 4, v24, v23);
      *a1 = 1;
      ot::TimerMilli::Start((a1 + 1), 0x1388u);
    }
  }

  else
  {
    return 13;
  }

  return v22;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::RouterTable>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(a1);
}

uint64_t ot::RouterTable::GetRouterIdSet(ot::RouterTable *this, ot::Mle::RouterIdSet *a2)
{
  return ot::RouterTable::RouterIdMap::GetAsRouterIdSet((this + 4640), a2);
}

{
  return ot::RouterTable::GetRouterIdSet(this, a2);
}

BOOL ot::Mle::RouterIdSet::Contains(ot::Mle::RouterIdSet *this, unsigned __int8 a2)
{
  v3 = *(this + a2 / 8);
  return (v3 & ot::Mle::RouterIdSet::MaskFor(a2)) != 0;
}

{
  return ot::Mle::RouterIdSet::Contains(this, a2);
}

uint64_t ot::Ip6::Address::SetToRoutingLocator(ot::Ip6::Address *a1, void *a2, unsigned __int16 a3)
{
  return ot::Ip6::Address::SetToLocator(a1, a2, a3);
}

{
  return ot::Ip6::Address::SetToRoutingLocator(a1, a2, a3);
}

uint64_t ot::Mle::Mle::GetMeshLocalPrefix(ot::Mle::Mle *this)
{
  return this + 984;
}

{
  return ot::Mle::Mle::GetMeshLocalPrefix(this);
}

uint64_t ot::Mle::Rloc16FromRouterId(ot::Mle *this)
{
  return (this << 10);
}

{
  return ot::Mle::Rloc16FromRouterId(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Client>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::NetworkDiagnostic::Client>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Client>(a1);
}

void *ot::Utils::MeshDiag::HandleDiagGetResponse(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  ot::AsCoapMessagePtr();
  v7 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  return ot::Utils::MeshDiag::HandleDiagGetResponse(a1, v7, v5, a4);
}

void *ot::CallbackBase<void (*)(otError,otMeshDiagRouterInfo *,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otError,otMeshDiagRouterInfo *,void *)>::Set(result, a2, a3);
}

void *ot::Utils::MeshDiag::HandleDiagGetResponse(void *result, ot::Message *a2, uint64_t a3, unsigned int a4)
{
  v14 = result;
  v13 = a2;
  v12 = a3;
  v11[1] = a4;
  v7 = result;
  v11[0] = 0;
  if (!a4)
  {
    if (v13)
    {
      if (*result == 1)
      {
        result = ot::Utils::MeshDiag::RouterInfo::ParseFrom(v15, v13);
        if (!result)
        {
          if (!ot::Utils::MeshDiag::Ip6AddrIterator::InitFrom(v10, v13, v4, v5))
          {
            v18 = v10;
          }

          if (!ot::Utils::MeshDiag::ChildIterator::InitFrom(v9, v13, v16, v6))
          {
            v19 = v9;
          }

          ot::Mle::RouterIdSet::Remove((v7 + 6), v17);
          if (ot::Mle::RouterIdSet::GetNumberOfAllocatedIds((v7 + 6)))
          {
            v11[0] = 36;
          }

          else
          {
            v11[0] = 0;
            *v7 = 0;
            ot::TimerMilli::Stop((v7 + 1));
          }

          v8 = v15;
          return ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,ot::Utils::MeshDiag::RouterInfo *>(v7 + 4, v11, &v8);
        }
      }
    }
  }

  return result;
}

void ot::AsCoapMessagePtr()
{
  ;
}

{
  ot::AsCoapMessagePtr();
}

void ot::AsCoreTypePtr<otMessageInfo>()
{
  ;
}

{
  ot::AsCoreTypePtr<otMessageInfo>();
}

uint64_t ot::Utils::MeshDiag::RouterInfo::ParseFrom(ot::Utils::MeshDiag::RouterInfo *this, const ot::Message *a2)
{
  v17 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a2);
  ot::Clearable<ot::Utils::MeshDiag::RouterInfo>::Clear(this);
  v18 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(a2, this + 8);
  if (!v18)
  {
    v2 = ot::AsCoreType<otExtAddress>(this);
    v18 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Mac::ExtAddress>>(a2, v2);
    if (!v18)
    {
      v18 = ot::Tlv::FindTlv<ot::NetworkDiagnostic::RouteTlv>(a2, v20, v3, v4, v5, v6);
      if (!v18)
      {
        v13 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)24,unsigned short>>(a2, this + 12);
        v18 = v13;
        if (v13)
        {
          if (v13 != 23)
          {
            return v18;
          }

          *(this + 6) = -1;
          v18 = 0;
        }

        *(this + 10) = ot::Mle::RouterIdFromRloc16(*(this + 4));
        *(this + 14) = *(this + 14) & 0xFE | ot::Mle::Mle::HasRloc16(v17, *(this + 4));
        v12 = 0;
        if (ot::Mle::Mle::IsChild(v17))
        {
          v11 = *(this + 4);
          Parent = ot::Mle::Mle::GetParent(v17);
          v12 = v11 == ot::Neighbor::GetRloc16(Parent);
        }

        *(this + 14) = *(this + 14) & 0xFD | (2 * v12);
        v10 = *(this + 10);
        *(this + 14) = *(this + 14) & 0xFB | (4 * (v10 == ot::Mle::Mle::GetLeaderId(v17)));
        v8 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(a2);
        *(this + 14) = *(this + 14) & 0xF7 | (8 * ot::NetworkData::NetworkData::ContainsBorderRouterWithRloc(v8, *(this + 4)));
        v16 = 0;
        v15 = 0;
        while (v16 <= 0x3Eu)
        {
          if (ot::Mle::RouteTlv::IsRouterIdSet(v20, v16))
          {
            *(this + v16 + 15) = ot::Mle::RouteTlv::GetLinkQualityIn(v20, v15++);
          }

          ++v16;
        }
      }
    }
  }

  return v18;
}

uint64_t ot::Utils::MeshDiag::Ip6AddrIterator::InitFrom(ot::Utils::MeshDiag::Ip6AddrIterator *this, const ot::Message *a2, uint64_t a3, ot::OffsetRange *a4)
{
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(a2, 8, this + 2, a4);
  if (!TlvValueOffsetRange)
  {
    *this = a2;
  }

  return TlvValueOffsetRange;
}

uint64_t ot::Utils::MeshDiag::ChildIterator::InitFrom(ot::Utils::MeshDiag::ChildIterator *this, const ot::Message *a2, __int16 a3, ot::OffsetRange *a4)
{
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(a2, 0x10, this + 2, a4);
  if (!TlvValueOffsetRange)
  {
    *this = a2;
    *(this + 6) = a3;
  }

  return TlvValueOffsetRange;
}

uint64_t ot::Mle::RouterIdSet::Remove(ot::Mle::RouterIdSet *this, unsigned __int8 a2)
{
  result = ot::Mle::RouterIdSet::MaskFor(a2);
  *(this + a2 / 8) &= ~result;
  return result;
}

{
  return ot::Mle::RouterIdSet::Remove(this, a2);
}

void *ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,ot::Utils::MeshDiag::RouterInfo *>(void *result, unsigned int *a2, void *a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,ot::Utils::MeshDiag::RouterInfo *>(result, a2, a3);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,ot::Utils::MeshDiag::RouterInfo *>(result, a2, a3);
}

uint64_t ot::Utils::MeshDiag::SendQuery(ot::Utils::MeshDiag *this, unsigned __int16 a2, const unsigned __int8 *a3, unsigned __int8 a4)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = 0;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  if (ot::Mle::Mle::IsAttached(v4))
  {
    if (*this)
    {
      return 5;
    }

    else if (ot::Mle::IsRouterRloc16(v17))
    {
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
      v5 = ot::Mle::RouterIdFromRloc16(v17);
      if (ot::RouterTable::IsAllocated(v11, v5))
      {
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
        MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v6);
        ot::Ip6::Address::SetToRoutingLocator(v13, MeshLocalPrefix, v17);
        v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Client>(this);
        v14 = ot::NetworkDiagnostic::Client::SendCommand(v8, 0x23u, 1u, v13, v16, v15, 0, 0);
        if (!v14)
        {
          v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Client>(this);
          *(this + 1) = ot::NetworkDiagnostic::Client::GetLastQueryId(v9);
          *(this + 2) = 0;
          ot::TimerMilli::Start((this + 8), 0x1388u);
        }
      }

      else
      {
        return 23;
      }
    }

    else
    {
      return 7;
    }
  }

  else
  {
    return 13;
  }

  return v14;
}

BOOL ot::Mle::IsRouterRloc16(ot::Mle *this)
{
  return ot::Mle::ChildIdFromRloc16(this) == 0;
}

{
  return ot::Mle::IsRouterRloc16(this);
}

BOOL ot::RouterTable::IsAllocated(ot::RouterTable *this, unsigned __int8 a2)
{
  return ot::RouterTable::RouterIdMap::IsAllocated((this + 4640), a2);
}

{
  return ot::RouterTable::IsAllocated(this, a2);
}

uint64_t ot::Mle::RouterIdFromRloc16(ot::Mle *this)
{
  return this >> 10;
}

{
  return ot::Mle::RouterIdFromRloc16(this);
}

uint64_t ot::NetworkDiagnostic::Client::GetLastQueryId(ot::NetworkDiagnostic::Client *this)
{
  return *this;
}

{
  return ot::NetworkDiagnostic::Client::GetLastQueryId(this);
}

uint64_t ot::Utils::MeshDiag::QueryChildTable(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4)
{
  v6 = ot::Utils::MeshDiag::SendQuery(a1, a2, &ot::Utils::MeshDiag::QueryChildTable(unsigned short,void (*)(otError,otMeshDiagChildEntry const*,void *),void *)::kTlvTypes, 1u);
  if (!v6)
  {
    ot::CallbackBase<void (*)(otError,otMeshDiagChildEntry const*,void *)>::Set((a1 + 32), a3, a4);
    *(a1 + 48) = a2;
    *a1 = 2;
  }

  return v6;
}

void *ot::CallbackBase<void (*)(otError,otMeshDiagChildEntry const*,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otError,otMeshDiagChildEntry const*,void *)>::Set(result, a2, a3);
}

uint64_t ot::Utils::MeshDiag::QueryChildrenIp6Addrs(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4)
{
  v6 = ot::Utils::MeshDiag::SendQuery(a1, a2, &ot::Utils::MeshDiag::QueryChildrenIp6Addrs(unsigned short,void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),void *)::kTlvTypes, 1u);
  if (!v6)
  {
    ot::CallbackBase<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *)>::Set((a1 + 32), a3, a4);
    *(a1 + 48) = a2;
    *a1 = 3;
  }

  return v6;
}

void *ot::CallbackBase<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *)>::Set(result, a2, a3);
}

uint64_t ot::Utils::MeshDiag::QueryRouterNeighborTable(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4)
{
  v6 = ot::Utils::MeshDiag::SendQuery(a1, a2, &ot::Utils::MeshDiag::QueryRouterNeighborTable(unsigned short,void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),void *)::kTlvTypes, 1u);
  if (!v6)
  {
    ot::CallbackBase<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *)>::Set((a1 + 32), a3, a4);
    *(a1 + 48) = a2;
    *a1 = 4;
  }

  return v6;
}

void *ot::CallbackBase<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *)>::Set(result, a2, a3);
}

uint64_t ot::Utils::MeshDiag::HandleDiagnosticGetAnswer(ot::Utils::MeshDiag *this, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v5 = 0;
  v4 = *this;
  switch(v4)
  {
    case 2:
      v5 = ot::Utils::MeshDiag::ProcessChildTableAnswer(this, a2, a3);
      break;
    case 3:
      v5 = ot::Utils::MeshDiag::ProcessChildrenIp6AddrsAnswer(this, a2, a3);
      break;
    case 4:
      v5 = ot::Utils::MeshDiag::ProcessRouterNeighborTableAnswer(this, a2, a3);
      break;
  }

  return v5 & 1;
}

uint64_t ot::Utils::MeshDiag::ProcessChildTableAnswer(ot::Utils::MeshDiag *this, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  v13 = 0;
  v12 = 0;
  if (!ot::Utils::MeshDiag::ProcessMessage(this, a2, a3, *(this + 24)))
  {
    while (!ot::Tlv::FindTlv<ot::NetworkDiagnostic::ChildTlv>(v15, v18, &v12, v3, v4, v5) && !ot::Tlv::IsExtended(v18))
    {
      v13 = 1;
      if (!ot::Tlv::GetLength(v18))
      {
        *this = 0;
        ot::TimerMilli::Stop((this + 8));
        v11[1] = 0;
        ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,decltype(nullptr)>(this + 4, &ot::kErrorNone);
        return v13 & 1;
      }

      if (ot::Tlv::GetLength(v18) < 0x2BuLL)
      {
        return v13 & 1;
      }

      ot::Message::Read<ot::NetworkDiagnostic::ChildTlv>(v15, v12, v18);
      IgnoreError();
      ot::Utils::MeshDiag::ChildEntry::SetFrom(v17, v18);
      v11[0] = v17;
      ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,ot::Utils::MeshDiag::ChildEntry *>(this + 4, &ot::kErrorPending, v11);
      if (*this != 2)
      {
        return v13 & 1;
      }

      v9 = v15;
      v8 = v12;
      Size = ot::Tlv::GetSize(v18);
      ot::Message::SetOffset(v9, v8 + Size);
    }
  }

  return v13 & 1;
}

uint64_t ot::Utils::MeshDiag::ProcessChildrenIp6AddrsAnswer(ot::Utils::MeshDiag *this, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = 0;
  if (!ot::Utils::MeshDiag::ProcessMessage(this, a2, a3, *(this + 24)))
  {
    while (!ot::Tlv::FindTlvValueOffsetRange(v17, 0x1E, &v14, v3))
    {
      v15 = 1;
      if (ot::OffsetRange::IsEmpty(&v14))
      {
        *this = 0;
        ot::TimerMilli::Stop((this + 8));
        v10 = 0;
        ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,unsigned short const&,decltype(nullptr)>(this + 4, &ot::kErrorNone, &ot::Mle::kInvalidRloc16);
        return v15 & 1;
      }

      if (ot::Message::Read<ot::NetworkDiagnostic::ChildIp6AddressListTlvValue>(v17, &v14, v13))
      {
        return v15 & 1;
      }

      ot::OffsetRange::AdvanceOffset(&v14, 2u);
      v11 = v17;
      v12 = v14;
      Rloc16 = ot::NetworkDiagnostic::ChildIp6AddressListTlvValue::GetRloc16(v13);
      v8 = &v11;
      ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,unsigned short,ot::Utils::MeshDiag::Ip6AddrIterator *>(this + 4, &ot::kErrorPending, &Rloc16, &v8);
      if (*this != 3)
      {
        return v15 & 1;
      }

      v6 = v17;
      EndOffset = ot::OffsetRange::GetEndOffset(&v14);
      ot::Message::SetOffset(v6, EndOffset);
    }
  }

  return v15 & 1;
}

uint64_t ot::Utils::MeshDiag::ProcessRouterNeighborTableAnswer(ot::Utils::MeshDiag *this, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  v13 = 0;
  v12 = 0;
  if (!ot::Utils::MeshDiag::ProcessMessage(this, a2, a3, *(this + 24)))
  {
    while (!ot::Tlv::FindTlv<ot::NetworkDiagnostic::RouterNeighborTlv>(v15, v18, &v12, v3, v4, v5) && !ot::Tlv::IsExtended(v18))
    {
      v13 = 1;
      if (!ot::Tlv::GetLength(v18))
      {
        *this = 0;
        ot::TimerMilli::Stop((this + 8));
        v11[1] = 0;
        ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,decltype(nullptr)>(this + 4, &ot::kErrorNone);
        return v13 & 1;
      }

      if (ot::Tlv::GetLength(v18) < 0x18uLL)
      {
        return v13 & 1;
      }

      ot::Utils::MeshDiag::RouterNeighborEntry::SetFrom(v17, v18);
      v11[0] = v17;
      ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,ot::Utils::MeshDiag::RouterNeighborEntry *>(this + 4, &ot::kErrorPending, v11);
      if (*this != 4)
      {
        return v13 & 1;
      }

      v9 = v15;
      v8 = v12;
      Size = ot::Tlv::GetSize(v18);
      ot::Message::SetOffset(v9, v8 + Size);
    }
  }

  return v13 & 1;
}

uint64_t ot::Utils::MeshDiag::ProcessMessage(ot::Utils::MeshDiag *this, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, unsigned __int16 a4)
{
  v20 = this;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = 1;
  v14 = 0;
  v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v18);
  if (ot::Mle::Mle::IsRoutingLocator(v12, PeerAddr))
  {
    v5 = ot::Ip6::MessageInfo::GetPeerAddr(v18);
    Iid = ot::Ip6::Address::GetIid(v5);
    if (ot::Ip6::InterfaceIdentifier::GetLocator(Iid) == v17 && !ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)33,unsigned short>>(v19, &v14) && v14 == *(this + 1) && !ot::Tlv::FindTlv<ot::NetworkDiagnostic::AnswerTlv>(v19, v15, v7, v8, v9, v10))
    {
      if (ot::NetworkDiagnostic::AnswerTlv::GetIndex(v15) == *(this + 2))
      {
        ++*(this + 2);
        return 0;
      }

      else
      {
        ot::Utils::MeshDiag::Finalize(this, 0x1Cu);
      }
    }
  }

  return v16;
}

uint64_t ot::Ip6::MessageInfo::GetPeerAddr(ot::Ip6::MessageInfo *this)
{
  return ot::AsCoreType<otIp6Address>(this + 16);
}

{
  return ot::AsCoreType<otIp6Address>(this + 16);
}

{
  return ot::Ip6::MessageInfo::GetPeerAddr(this);
}

{
  return ot::Ip6::MessageInfo::GetPeerAddr(this);
}

uint64_t ot::Ip6::Address::GetIid(ot::Ip6::Address *this)
{
  return this + 8;
}

{
  return this + 8;
}

{
  return ot::Ip6::Address::GetIid(this);
}

{
  return ot::Ip6::Address::GetIid(this);
}

uint64_t ot::Ip6::InterfaceIdentifier::GetLocator(ot::Ip6::InterfaceIdentifier *this)
{
  return ot::BigEndian::HostSwap16(*(this + 3));
}

{
  return ot::Ip6::InterfaceIdentifier::GetLocator(this);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)33,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0x21u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)33,unsigned short>>(a1, a2);
}

uint64_t ot::Tlv::FindTlv<ot::NetworkDiagnostic::AnswerTlv>(ot::Tlv *a1, char *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 0x20, 4u, a2, a5, a6);
}

{
  return ot::Tlv::FindTlv<ot::NetworkDiagnostic::AnswerTlv>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::NetworkDiagnostic::AnswerTlv::GetIndex(ot::NetworkDiagnostic::AnswerTlv *this)
{
  return ot::NetworkDiagnostic::AnswerTlv::GetFlagsIndex(this) & 0x7F;
}

{
  return ot::NetworkDiagnostic::AnswerTlv::GetIndex(this);
}

void *ot::Utils::MeshDiag::Finalize(ot::Utils::MeshDiag *a1, unsigned int a2)
{
  v6 = a1;
  v5 = a2;
  v4 = *a1;
  result = ot::Utils::MeshDiag::Cancel(a1);
  if (v4)
  {
    switch(v4)
    {
      case 1:
        return ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,decltype(nullptr)>(a1 + 4, &v5);
      case 2:
        return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,decltype(nullptr)>(a1 + 4, &v5);
      case 3:
        return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,unsigned short const&,decltype(nullptr)>(a1 + 4, &v5, &ot::Mle::kInvalidRloc16);
      case 4:
        return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,decltype(nullptr)>(a1 + 4, &v5);
    }
  }

  return result;
}

uint64_t ot::Tlv::FindTlv<ot::NetworkDiagnostic::ChildTlv>(ot::Tlv *a1, char *a2, ot::Tlv *a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 0x1D, 0x2Du, a2, a3, a6);
}

{
  return ot::Tlv::FindTlv<ot::NetworkDiagnostic::ChildTlv>(a1, a2, a3, a4, a5, a6);
}

BOOL ot::Tlv::IsExtended(ot::Tlv *this)
{
  return *(this + 1) == 255;
}

{
  return ot::Tlv::IsExtended(this);
}

uint64_t ot::Tlv::GetLength(ot::Tlv *this)
{
  return *(this + 1);
}

{
  return ot::Tlv::GetLength(this);
}

void *ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,decltype(nullptr)>(void *result, unsigned int *a2)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,decltype(nullptr)>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,decltype(nullptr)>(result, a2);
}

uint64_t ot::Message::Read<ot::NetworkDiagnostic::ChildTlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x2Du);
}

{
  return ot::Message::Read<ot::NetworkDiagnostic::ChildTlv>(a1, a2, a3);
}

uint64_t ot::Utils::MeshDiag::ChildEntry::SetFrom(ot::Utils::MeshDiag::ChildEntry *this, const ot::NetworkDiagnostic::ChildTlv *a2)
{
  *this = *this & 0xFE | ((ot::NetworkDiagnostic::ChildTlv::GetFlags(a2) & 0x80) != 0);
  *this = *this & 0xFD | (2 * ((ot::NetworkDiagnostic::ChildTlv::GetFlags(a2) & 0x40) != 0));
  *this = *this & 0xFB | (4 * ((ot::NetworkDiagnostic::ChildTlv::GetFlags(a2) & 0x20) != 0));
  *this = *this & 0xF7 | (8 * ((ot::NetworkDiagnostic::ChildTlv::GetFlags(a2) & 0x10) != 0));
  *this = *this & 0xEF | (16 * ((ot::NetworkDiagnostic::ChildTlv::GetFlags(a2) & 8) != 0));
  *(this + 1) = ot::NetworkDiagnostic::ChildTlv::GetRloc16(a2);
  *(this + 4) = *ot::NetworkDiagnostic::ChildTlv::GetExtAddress(a2);
  *(this + 6) = ot::NetworkDiagnostic::ChildTlv::GetVersion(a2);
  *(this + 4) = ot::NetworkDiagnostic::ChildTlv::GetTimeout(a2);
  *(this + 5) = ot::NetworkDiagnostic::ChildTlv::GetAge(a2);
  *(this + 6) = ot::NetworkDiagnostic::ChildTlv::GetConnectionTime(a2);
  *(this + 14) = ot::NetworkDiagnostic::ChildTlv::GetSupervisionInterval(a2);
  *(this + 30) = ot::NetworkDiagnostic::ChildTlv::GetLinkMargin(a2);
  *(this + 31) = ot::NetworkDiagnostic::ChildTlv::GetAverageRssi(a2);
  *(this + 32) = ot::NetworkDiagnostic::ChildTlv::GetLastRssi(a2);
  *(this + 17) = ot::NetworkDiagnostic::ChildTlv::GetFrameErrorRate(a2);
  *(this + 18) = ot::NetworkDiagnostic::ChildTlv::GetMessageErrorRate(a2);
  *(this + 19) = ot::NetworkDiagnostic::ChildTlv::GetQueuedMessageCount(a2);
  *(this + 20) = ot::NetworkDiagnostic::ChildTlv::GetCslPeriod(a2);
  *(this + 11) = ot::NetworkDiagnostic::ChildTlv::GetCslTimeout(a2);
  result = ot::NetworkDiagnostic::ChildTlv::GetCslChannel(a2);
  *(this + 48) = result;
  return result;
}

void *ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,ot::Utils::MeshDiag::ChildEntry *>(void *result, unsigned int *a2, void *a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,ot::Utils::MeshDiag::ChildEntry *>(result, a2, a3);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,ot::Utils::MeshDiag::ChildEntry *>(result, a2, a3);
}

uint64_t ot::Tlv::FindTlv<ot::NetworkDiagnostic::RouterNeighborTlv>(ot::Tlv *a1, char *a2, ot::Tlv *a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 0x1F, 0x1Au, a2, a3, a6);
}

{
  return ot::Tlv::FindTlv<ot::NetworkDiagnostic::RouterNeighborTlv>(a1, a2, a3, a4, a5, a6);
}

void *ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,decltype(nullptr)>(void *result, unsigned int *a2)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,decltype(nullptr)>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,decltype(nullptr)>(result, a2);
}

uint64_t ot::Utils::MeshDiag::RouterNeighborEntry::SetFrom(ot::Utils::MeshDiag::RouterNeighborEntry *this, const ot::NetworkDiagnostic::RouterNeighborTlv *a2)
{
  *this = *this & 0xFE | ((ot::NetworkDiagnostic::RouterNeighborTlv::GetFlags(a2) & 0x80) != 0);
  *(this + 1) = ot::NetworkDiagnostic::RouterNeighborTlv::GetRloc16(a2);
  *(this + 4) = *ot::NetworkDiagnostic::RouterNeighborTlv::GetExtAddress(a2);
  *(this + 6) = ot::NetworkDiagnostic::RouterNeighborTlv::GetVersion(a2);
  *(this + 4) = ot::NetworkDiagnostic::RouterNeighborTlv::GetConnectionTime(a2);
  *(this + 20) = ot::NetworkDiagnostic::RouterNeighborTlv::GetLinkMargin(a2);
  *(this + 21) = ot::NetworkDiagnostic::RouterNeighborTlv::GetAverageRssi(a2);
  *(this + 22) = ot::NetworkDiagnostic::RouterNeighborTlv::GetLastRssi(a2);
  *(this + 12) = ot::NetworkDiagnostic::RouterNeighborTlv::GetFrameErrorRate(a2);
  result = ot::NetworkDiagnostic::RouterNeighborTlv::GetMessageErrorRate(a2);
  *(this + 13) = result;
  return result;
}

void *ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,ot::Utils::MeshDiag::RouterNeighborEntry *>(void *result, unsigned int *a2, void *a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,ot::Utils::MeshDiag::RouterNeighborEntry *>(result, a2, a3);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,ot::Utils::MeshDiag::RouterNeighborEntry *>(result, a2, a3);
}

BOOL ot::OffsetRange::IsEmpty(ot::OffsetRange *this)
{
  return *(this + 1) == 0;
}

{
  return ot::OffsetRange::IsEmpty(this);
}

void *ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,unsigned short const&,decltype(nullptr)>(void *result, unsigned int *a2, unsigned __int16 *a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,unsigned short const&,decltype(nullptr)>(result, a2, a3);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,unsigned short const&,decltype(nullptr)>(result, a2, a3);
}

uint64_t ot::Message::Read<ot::NetworkDiagnostic::ChildIp6AddressListTlvValue>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 2u);
}

{
  return ot::Message::Read<ot::NetworkDiagnostic::ChildIp6AddressListTlvValue>(a1, a2, a3);
}

void *ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,unsigned short,ot::Utils::MeshDiag::Ip6AddrIterator *>(void *result, unsigned int *a2, unsigned __int16 *a3, void *a4)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,unsigned short,ot::Utils::MeshDiag::Ip6AddrIterator *>(result, a2, a3, a4);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,unsigned short,ot::Utils::MeshDiag::Ip6AddrIterator *>(result, a2, a3, a4);
}

uint64_t ot::NetworkDiagnostic::ChildIp6AddressListTlvValue::GetRloc16(ot::NetworkDiagnostic::ChildIp6AddressListTlvValue *this)
{
  return ot::BigEndian::HostSwap16(*this);
}

{
  return ot::NetworkDiagnostic::ChildIp6AddressListTlvValue::GetRloc16(this);
}

uint64_t ot::OffsetRange::GetEndOffset(ot::OffsetRange *this)
{
  return (*this + *(this + 1));
}

{
  return ot::OffsetRange::GetEndOffset(this);
}

uint64_t ot::Utils::MeshDiag::Cancel(ot::Utils::MeshDiag *this)
{
  if (*this && *this == 1)
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    ot::Coap::CoapBase::AbortTransaction(v1, ot::Utils::MeshDiag::HandleDiagGetResponse, this);
    IgnoreError();
  }

  *this = 0;
  return ot::TimerMilli::Stop((this + 8));
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Tmf::Agent>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
}

void *ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,decltype(nullptr)>(void *result, unsigned int *a2)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,decltype(nullptr)>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,decltype(nullptr)>(result, a2);
}

void *ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,decltype(nullptr)>(void *result, unsigned int *a2)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,decltype(nullptr)>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,decltype(nullptr)>(result, a2);
}

void *ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,unsigned short const&,decltype(nullptr)>(void *result, unsigned int *a2, unsigned __int16 *a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,unsigned short const&,decltype(nullptr)>(result, a2, a3);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,unsigned short const&,decltype(nullptr)>(result, a2, a3);
}

void *ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,decltype(nullptr)>(void *result, unsigned int *a2)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,decltype(nullptr)>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,decltype(nullptr)>(result, a2);
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::Mle::Mle>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a1);
}

void *ot::Clearable<ot::Utils::MeshDiag::RouterInfo>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Utils::MeshDiag::RouterInfo>(a1);
}

{
  return ot::Clearable<ot::Utils::MeshDiag::RouterInfo>::Clear(a1);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 1u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(a1, a2);
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Mac::ExtAddress>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 0, a2, 8);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Mac::ExtAddress>>(a1, a2);
}

uint64_t ot::Tlv::FindTlv<ot::NetworkDiagnostic::RouteTlv>(ot::Tlv *a1, char *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 5, 0x4Au, a2, a5, a6);
}

{
  return ot::Tlv::FindTlv<ot::NetworkDiagnostic::RouteTlv>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)24,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0x18u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)24,unsigned short>>(a1, a2);
}

BOOL ot::Mle::Mle::HasRloc16(ot::Mle::Mle *this, unsigned __int16 a2)
{
  return *(this + 72) == a2;
}

{
  return ot::Mle::Mle::HasRloc16(this, a2);
}

uint64_t ot::Mle::Mle::GetLeaderId(ot::Mle::Mle *this)
{
  return ot::Mle::LeaderData::GetLeaderRouterId((this + 184));
}

{
  return ot::Mle::Mle::GetLeaderId(this);
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::NetworkData::Leader>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(a1);
}

BOOL ot::Mle::RouteTlv::IsRouterIdSet(ot::Mle::RouteTlv *this, unsigned __int8 a2)
{
  return ot::Mle::RouterIdSet::Contains((this + 3), a2);
}

{
  return ot::Mle::RouteTlv::IsRouterIdSet(this, a2);
}

uint64_t ot::Mle::RouteTlv::GetLinkQualityIn(ot::Mle::RouteTlv *this, unsigned __int8 a2)
{
  return (*(this + a2 + 11) & 0x30) >> 4;
}

{
  return ot::Mle::RouteTlv::GetLinkQualityIn(this, a2);
}

uint64_t ot::Utils::MeshDiag::Ip6AddrIterator::GetNextAddress(ot::Utils::MeshDiag::Ip6AddrIterator *this, ot::Ip6::Address *a2)
{
  v4 = 0;
  if (*this)
  {
    if (ot::Message::Read<ot::Ip6::Address>(*this, (this + 8), a2))
    {
      return 23;
    }

    else
    {
      ot::OffsetRange::AdvanceOffset(this + 4, 0x10u);
    }
  }

  else
  {
    return 23;
  }

  return v4;
}

uint64_t ot::Message::Read<ot::Ip6::Address>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x10u);
}

{
  return ot::Message::Read<ot::Ip6::Address>(a1, a2, a3);
}

uint64_t ot::Utils::MeshDiag::ChildIterator::GetNextChildInfo(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  if (*a1)
  {
    if (ot::Message::Read<ot::NetworkDiagnostic::ChildTableEntry>(*a1, (a1 + 8), v12))
    {
      return 23;
    }

    else
    {
      ot::OffsetRange::AdvanceOffset((a1 + 8), 3u);
      v9 = *(a1 + 12);
      ChildId = ot::NetworkDiagnostic::ChildTableEntry::GetChildId(v12);
      *v14 = v9 + ChildId;
      Mode = ot::NetworkDiagnostic::ChildTableEntry::GetMode(v12);
      ot::Mle::DeviceMode::Get(&Mode, (v14 + 2));
      LinkQuality = ot::NetworkDiagnostic::ChildTableEntry::GetLinkQuality(v12);
      *(v14 + 3) = LinkQuality;
      v4 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(*a1);
      HasRloc16 = ot::Mle::Mle::HasRloc16(v4, *v14);
      *(v14 + 4) = *(v14 + 4) & 0xFE | HasRloc16;
      v6 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(*a1);
      v7 = ot::NetworkData::NetworkData::ContainsBorderRouterWithRloc(v6, *v14);
      *(v14 + 4) = *(v14 + 4) & 0xFD | (2 * v7);
    }
  }

  else
  {
    return 23;
  }

  return v13;
}

uint64_t ot::Message::Read<ot::NetworkDiagnostic::ChildTableEntry>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 3u);
}

{
  return ot::Message::Read<ot::NetworkDiagnostic::ChildTableEntry>(a1, a2, a3);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::GetChildId(ot::NetworkDiagnostic::ChildTableEntry *this)
{
  return ot::NetworkDiagnostic::ChildTableEntry::GetTimeoutChildId(this) & 0x1FF;
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::GetChildId(this);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::GetMode(ot::NetworkDiagnostic::ChildTableEntry *this)
{
  ot::Mle::DeviceMode::DeviceMode(&v2, *(this + 2));
  return v2;
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::GetMode(this);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::GetLinkQuality(ot::NetworkDiagnostic::ChildTableEntry *this)
{
  return (ot::NetworkDiagnostic::ChildTableEntry::GetTimeoutChildId(this) & 0x600) >> 9;
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::GetLinkQuality(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetFlags(ot::NetworkDiagnostic::ChildTlv *this)
{
  return *(this + 2);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetFlags(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetRloc16(ot::NetworkDiagnostic::ChildTlv *this)
{
  return ot::BigEndian::HostSwap16(*(this + 3));
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetRloc16(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetExtAddress(ot::NetworkDiagnostic::ChildTlv *this)
{
  return this + 5;
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetExtAddress(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetVersion(ot::NetworkDiagnostic::ChildTlv *this)
{
  return ot::BigEndian::HostSwap16(*(this + 13));
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetVersion(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetTimeout(ot::NetworkDiagnostic::ChildTlv *this)
{
  return ot::BigEndian::HostSwap32(*(this + 15));
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetTimeout(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetAge(ot::NetworkDiagnostic::ChildTlv *this)
{
  return ot::BigEndian::HostSwap32(*(this + 19));
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetAge(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetConnectionTime(ot::NetworkDiagnostic::ChildTlv *this)
{
  return ot::BigEndian::HostSwap32(*(this + 23));
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetConnectionTime(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetSupervisionInterval(ot::NetworkDiagnostic::ChildTlv *this)
{
  return ot::BigEndian::HostSwap16(*(this + 27));
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetSupervisionInterval(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetLinkMargin(ot::NetworkDiagnostic::ChildTlv *this)
{
  return *(this + 29);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetLinkMargin(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetAverageRssi(ot::NetworkDiagnostic::ChildTlv *this)
{
  return *(this + 30);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetAverageRssi(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetLastRssi(ot::NetworkDiagnostic::ChildTlv *this)
{
  return *(this + 31);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetLastRssi(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetFrameErrorRate(ot::NetworkDiagnostic::ChildTlv *this)
{
  return ot::BigEndian::HostSwap16(*(this + 16));
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetFrameErrorRate(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetMessageErrorRate(ot::NetworkDiagnostic::ChildTlv *this)
{
  return ot::BigEndian::HostSwap16(*(this + 17));
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetMessageErrorRate(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetQueuedMessageCount(ot::NetworkDiagnostic::ChildTlv *this)
{
  return ot::BigEndian::HostSwap16(*(this + 18));
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetQueuedMessageCount(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetCslPeriod(ot::NetworkDiagnostic::ChildTlv *this)
{
  return ot::BigEndian::HostSwap16(*(this + 19));
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetCslPeriod(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetCslTimeout(ot::NetworkDiagnostic::ChildTlv *this)
{
  return ot::BigEndian::HostSwap32(*(this + 10));
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetCslTimeout(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetCslChannel(ot::NetworkDiagnostic::ChildTlv *this)
{
  return *(this + 44);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetCslChannel(this);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetFlags(ot::NetworkDiagnostic::RouterNeighborTlv *this)
{
  return *(this + 2);
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetFlags(this);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetRloc16(ot::NetworkDiagnostic::RouterNeighborTlv *this)
{
  return ot::BigEndian::HostSwap16(*(this + 3));
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetRloc16(this);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetExtAddress(ot::NetworkDiagnostic::RouterNeighborTlv *this)
{
  return this + 5;
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetExtAddress(this);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetVersion(ot::NetworkDiagnostic::RouterNeighborTlv *this)
{
  return ot::BigEndian::HostSwap16(*(this + 13));
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetVersion(this);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetConnectionTime(ot::NetworkDiagnostic::RouterNeighborTlv *this)
{
  return ot::BigEndian::HostSwap32(*(this + 15));
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetConnectionTime(this);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetLinkMargin(ot::NetworkDiagnostic::RouterNeighborTlv *this)
{
  return *(this + 19);
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetLinkMargin(this);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetAverageRssi(ot::NetworkDiagnostic::RouterNeighborTlv *this)
{
  return *(this + 20);
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetAverageRssi(this);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetLastRssi(ot::NetworkDiagnostic::RouterNeighborTlv *this)
{
  return *(this + 21);
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetLastRssi(this);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetFrameErrorRate(ot::NetworkDiagnostic::RouterNeighborTlv *this)
{
  return ot::BigEndian::HostSwap16(*(this + 11));
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetFrameErrorRate(this);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetMessageErrorRate(ot::NetworkDiagnostic::RouterNeighborTlv *this)
{
  return ot::BigEndian::HostSwap16(*(this + 12));
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetMessageErrorRate(this);
}

uint64_t ot::Mle::RouterIdSet::MaskFor(ot::Mle::RouterIdSet *this)
{
  return 128 >> (this % 8);
}

{
  return ot::Mle::RouterIdSet::MaskFor(this);
}

uint64_t ot::Mle::ChildIdFromRloc16(ot::Mle *this)
{
  return this & 0x1FF;
}

{
  return ot::Mle::ChildIdFromRloc16(this);
}

BOOL ot::RouterTable::RouterIdMap::IsAllocated(ot::RouterTable::RouterIdMap *this, unsigned __int8 a2)
{
  return *(this + a2) < 0;
}

{
  return ot::RouterTable::RouterIdMap::IsAllocated(this, a2);
}

uint64_t ot::NetworkDiagnostic::AnswerTlv::GetFlagsIndex(ot::NetworkDiagnostic::AnswerTlv *this)
{
  return ot::BigEndian::HostSwap16(*(this + 1));
}

{
  return ot::NetworkDiagnostic::AnswerTlv::GetFlagsIndex(this);
}

uint64_t ot::Mle::LeaderData::GetLeaderRouterId(ot::Mle::LeaderData *this)
{
  return *(this + 7);
}

{
  return ot::Mle::LeaderData::GetLeaderRouterId(this);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::GetTimeoutChildId(ot::NetworkDiagnostic::ChildTableEntry *this)
{
  return ot::BigEndian::HostSwap16(*this);
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::GetTimeoutChildId(this);
}

uint64_t ot::BigEndian::HostSwap32(ot::BigEndian *this)
{
  return ot::Swap32(this);
}

{
  return ot::BigEndian::HostSwap32(this);
}

uint64_t ot::Swap32(ot *this)
{
  return ((this & 0xFF00) << 8) | (this << 24) | ((this & 0xFF0000) >> 8) | ((this & 0xFF000000) >> 24);
}

{
  return ot::Swap32(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::MeshDiag>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Utils::MeshDiag>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::MeshDiag>(a1);
}

uint64_t ot::Instance::Get<ot::Utils::MeshDiag>(uint64_t a1)
{
  return a1 + 156744;
}

{
  return ot::Instance::Get<ot::Utils::MeshDiag>(a1);
}

uint64_t ot::Instance::Get<ot::RouterTable>(uint64_t a1)
{
  return a1 + 122064;
}

{
  return ot::Instance::Get<ot::RouterTable>(a1);
}

uint64_t ot::Instance::Get<ot::NetworkDiagnostic::Client>(uint64_t a1)
{
  return a1 + 144280;
}

{
  return ot::Instance::Get<ot::NetworkDiagnostic::Client>(a1);
}

uint64_t ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,ot::Utils::MeshDiag::RouterInfo *>(uint64_t a1, unsigned int *a2, void *a3)
{
  return (*a1)(*a2, *a3, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,ot::Utils::MeshDiag::RouterInfo *>(a1, a2, a3);
}

uint64_t ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,decltype(nullptr)>(uint64_t a1, unsigned int *a2)
{
  return (*a1)(*a2, 0, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,decltype(nullptr)>(a1, a2);
}

uint64_t ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,ot::Utils::MeshDiag::ChildEntry *>(uint64_t a1, unsigned int *a2, void *a3)
{
  return (*a1)(*a2, *a3, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,ot::Utils::MeshDiag::ChildEntry *>(a1, a2, a3);
}

uint64_t ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,decltype(nullptr)>(uint64_t a1, unsigned int *a2)
{
  return (*a1)(*a2, 0, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,decltype(nullptr)>(a1, a2);
}

uint64_t ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,ot::Utils::MeshDiag::RouterNeighborEntry *>(uint64_t a1, unsigned int *a2, void *a3)
{
  return (*a1)(*a2, *a3, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,ot::Utils::MeshDiag::RouterNeighborEntry *>(a1, a2, a3);
}

uint64_t ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,unsigned short const&,decltype(nullptr)>(uint64_t a1, unsigned int *a2, unsigned __int16 *a3)
{
  return (*a1)(*a2, *a3, 0, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,unsigned short const&,decltype(nullptr)>(a1, a2, a3);
}

uint64_t ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,unsigned short,ot::Utils::MeshDiag::Ip6AddrIterator *>(uint64_t a1, unsigned int *a2, unsigned __int16 *a3, void *a4)
{
  return (*a1)(*a2, *a3, *a4, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,unsigned short,ot::Utils::MeshDiag::Ip6AddrIterator *>(a1, a2, a3, a4);
}

uint64_t ot::Instance::Get<ot::Tmf::Agent>(uint64_t a1)
{
  return a1 + 86104;
}

{
  return ot::Instance::Get<ot::Tmf::Agent>(a1);
}

uint64_t ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,decltype(nullptr)>(uint64_t a1, unsigned int *a2)
{
  return (*a1)(*a2, 0, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,decltype(nullptr)>(a1, a2);
}

uint64_t ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,decltype(nullptr)>(uint64_t a1, unsigned int *a2)
{
  return (*a1)(*a2, 0, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,decltype(nullptr)>(a1, a2);
}

uint64_t ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,unsigned short const&,decltype(nullptr)>(uint64_t a1, unsigned int *a2, unsigned __int16 *a3)
{
  return (*a1)(*a2, *a3, 0, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,unsigned short const&,decltype(nullptr)>(a1, a2, a3);
}

uint64_t ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,decltype(nullptr)>(uint64_t a1, unsigned int *a2)
{
  return (*a1)(*a2, 0, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,decltype(nullptr)>(a1, a2);
}

void *ot::Message::GetInstance(ot::Message *this)
{
  MessagePool = ot::Message::GetMessagePool(this);
  return ot::InstanceLocator::GetInstance(MessagePool);
}

{
  return ot::Message::GetInstance(this);
}

uint64_t ot::Message::GetMessagePool(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 16);
}

{
  return ot::Message::GetMessagePool(this);
}

void *ot::ClearAllBytes<ot::Utils::MeshDiag::RouterInfo>(void *a1)
{
  return memset(a1, 0, 0x60uLL);
}

{
  return ot::ClearAllBytes<ot::Utils::MeshDiag::RouterInfo>(a1);
}

uint64_t ot::Instance::Get<ot::NetworkData::Leader>(uint64_t a1)
{
  return a1 + 143808;
}

{
  return ot::Instance::Get<ot::NetworkData::Leader>(a1);
}

uint64_t ot::Preference::To2BitUint(ot::Preference *this)
{
  if (this)
  {
    if (this > 0)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    return 0;
  }
}

BOOL ot::Preference::IsValid(ot::Preference *this)
{
  v2 = 1;
  if (this != 1)
  {
    v2 = 1;
    if (this)
    {
      return this == -1;
    }
  }

  return v2;
}

const char *ot::Preference::ToString(ot::Preference *this)
{
  if (!this)
  {
    return "medium";
  }

  v1 = "high";
  if (this <= 0)
  {
    return "low";
  }

  return v1;
}

uint64_t ot::Instance::GetId(ot::Instance *this)
{
  return *(this + 42087);
}

{
  return ot::Instance::GetId(this);
}

unint64_t otInstanceGetUptime(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Uptime>(v1);
  return ot::Uptime::GetUptime(v2);
}

uint64_t ot::Instance::Get<ot::Uptime>(uint64_t a1)
{
  return a1 + 40;
}

{
  return ot::Instance::Get<ot::Uptime>(a1);
}

ot::StringWriter *otInstanceGetUptimeAsString(uint64_t a1, char *a2, __int16 a3)
{
  if (!a2)
  {
    __assert_rtn("otInstanceGetUptimeAsString", "instance_api.cpp", 108, "(aBuffer) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Uptime>(v3);
  return ot::Uptime::GetUptime(v4, a2, a3);
}

uint64_t otSetStateChangedCallback(uint64_t a1, void (*a2)(unint64_t, void *), uint64_t a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Notifier>(v3);
  return ot::Notifier::RegisterCallback(v4, a2, a3);
}

uint64_t ot::Instance::Get<ot::Notifier>(uint64_t a1)
{
  return a1 + 72;
}

{
  return ot::Instance::Get<ot::Notifier>(a1);
}

uint64_t otRemoveStateChangeCallback(uint64_t a1, void (*a2)(unint64_t, void *), uint64_t a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Notifier>(v3);
  return ot::Notifier::RemoveCallback(v4, a2, a3);
}

uint64_t otGetRadioVersionString(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Radio>(v1);
  return ot::Radio::GetVersionString(v2);
}

uint64_t ot::Radio::GetVersionString(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetVersionString();
}

{
  return ot::Radio::GetVersionString(this);
}

uint64_t otIp6SetEnabled(uint64_t a1, char a2)
{
  v13 = 0;
  v12 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::LinkRaw>(v12);
  if (ot::Mac::LinkRaw::IsEnabled(v2))
  {
    return 13;
  }

  else
  {
    v3 = ot::Instance::Get<ot::ThreadNetif>(v12);
    if (a2)
    {
      ot::ThreadNetif::Up(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    else
    {
      ot::ThreadNetif::Down(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return v13;
}

uint64_t ot::Instance::Get<ot::Mac::LinkRaw>(uint64_t a1)
{
  return a1 + 167168;
}

{
  return ot::Instance::Get<ot::Mac::LinkRaw>(a1);
}

BOOL ot::Mac::LinkRaw::IsEnabled(ot::Mac::LinkRaw *this)
{
  return *(this + 1) != 0;
}

{
  return ot::Mac::LinkRaw::IsEnabled(this);
}

uint64_t ot::Instance::Get<ot::ThreadNetif>(uint64_t a1)
{
  return a1 + 85536;
}

{
  return ot::Instance::Get<ot::ThreadNetif>(a1);
}

uint64_t otIp6IsEnabled(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::ThreadNetif>(v1);
  return ot::ThreadNetif::IsUp(v2);
}

uint64_t ot::ThreadNetif::IsUp(ot::ThreadNetif *this)
{
  return *(this + 560) & 1;
}

{
  return ot::ThreadNetif::IsUp(this);
}

uint64_t otIp6GetUnicastAddresses(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::ThreadNetif>(v1);
  ot::Ip6::Netif::GetUnicastAddresses(v2);
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::GetHead(v3);
}

void ot::Ip6::Netif::GetUnicastAddresses(ot::Ip6::Netif *this)
{
  ;
}

{
  ot::Ip6::Netif::GetUnicastAddresses(this);
}

uint64_t ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::GetHead(uint64_t a1)
{
  return *a1;
}

{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::GetHead(a1);
}

BOOL otIp6HasUnicastAddress(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::ThreadNetif>(v2);
  v3 = ot::AsCoreType<otIp6Address>(a2);
  return ot::Ip6::Netif::HasUnicastAddress(v5, v3);
}

uint64_t otIp6AddUnicastAddress(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::ThreadNetif>(v2);
  v3 = ot::AsCoreType<otNetifAddress>(a2);
  return ot::Ip6::Netif::AddExternalUnicastAddress(v5, v3);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otNetifAddress>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

uint64_t otIp6RemoveUnicastAddress(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::ThreadNetif>(v2);
  v3 = ot::AsCoreType<otIp6Address>(a2);
  return ot::Ip6::Netif::RemoveExternalUnicastAddress(v5, v3);
}

uint64_t otIp6GetMulticastAddresses(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::ThreadNetif>(v1);
  MulticastAddresses = ot::Ip6::Netif::GetMulticastAddresses(v2);
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::GetHead(MulticastAddresses);
}

uint64_t ot::Ip6::Netif::GetMulticastAddresses(ot::Ip6::Netif *this)
{
  return this + 8;
}

{
  return ot::Ip6::Netif::GetMulticastAddresses(this);
}

uint64_t ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::GetHead(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::GetHead(a1);
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::GetHead(a1);
}

uint64_t otIp6SubscribeMulticastAddress(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::ThreadNetif>(v2);
  v3 = ot::AsCoreType<otIp6Address>(a2);
  return ot::Ip6::Netif::SubscribeExternalMulticast(v5, v3);
}

uint64_t otIp6UnsubscribeMulticastAddress(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::ThreadNetif>(v2);
  v3 = ot::AsCoreType<otIp6Address>(a2);
  return ot::Ip6::Netif::UnsubscribeExternalMulticast(v5, v3);
}

void *otIp6SetReceiveCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Ip6::Ip6>(v3);
  return ot::Ip6::Ip6::SetReceiveDatagramCallback(v4, a2, a3);
}

uint64_t ot::Instance::Get<ot::Ip6::Ip6>(uint64_t a1)
{
  return a1 + 85224;
}

{
  return ot::Instance::Get<ot::Ip6::Ip6>(a1);
}

void *ot::Ip6::Ip6::SetReceiveDatagramCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(otMessage *,void *)>::Set((a1 + 8), a2, a3);
}

{
  return ot::Ip6::Ip6::SetReceiveDatagramCallback(a1, a2, a3);
}

uint64_t otIp6SetLargeScopeMulticastReceiveCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Ip6::Ip6>(v3);
  return ot::Ip6::Ip6::SetLargeScopeMulticastReceiveDatagramCallback(v4, a2, a3);
}

void *otIp6SetAddressCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::ThreadNetif>(v3);
  return ot::Ip6::Netif::SetAddressCallback(v4, a2, a3);
}

void *ot::Ip6::Netif::SetAddressCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(otIp6AddressInfo const*,BOOL,void *)>::Set((a1 + 16), a2, a3);
}

{
  return ot::Ip6::Netif::SetAddressCallback(a1, a2, a3);
}

uint64_t otIp6IsReceiveFilterEnabled(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Ip6::Ip6>(v1);
  return ot::Ip6::Ip6::IsReceiveIp6FilterEnabled(v2);
}

uint64_t ot::Ip6::Ip6::IsReceiveIp6FilterEnabled(ot::Ip6::Ip6 *this)
{
  return *this & 1;
}

{
  return ot::Ip6::Ip6::IsReceiveIp6FilterEnabled(this);
}

_BYTE *otIp6SetReceiveFilterEnabled(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Ip6::Ip6>(v2);
  return ot::Ip6::Ip6::SetReceiveIp6FilterEnabled(v3, a2 & 1);
}

_BYTE *ot::Ip6::Ip6::SetReceiveIp6FilterEnabled(_BYTE *this, char a2)
{
  *this = a2 & 1;
  return this;
}

{
  return ot::Ip6::Ip6::SetReceiveIp6FilterEnabled(this, a2);
}

uint64_t otIp6Send(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 0;
  v2 = ot::AsCoreType<otMessage>(a2);
  if (ot::Message::IsOriginThreadNetif (v2))
  {
    return 7;
  }

  else
  {
    v3 = ot::AsCoreType<otInstance>(v10);
    v6 = ot::Instance::Get<ot::Ip6::Ip6>(v3);
    ot::AsCoreTypePtr<otMessage>();
    ot::OwnedPtr<ot::Message>::OwnedPtr(&v7, v4);
    v8 = ot::Ip6::Ip6::SendRaw(v6, &v7);
    ot::OwnedPtr<ot::Message>::~OwnedPtr(&v7);
  }

  return v8;
}

void ot::AsCoreTypePtr<otMessage>()
{
  ;
}

{
  ot::AsCoreTypePtr<otMessage>();
}

void *ot::OwnedPtr<ot::Message>::OwnedPtr(void *a1, uint64_t a2)
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(a1, a2);
  return a1;
}

{
  ot::Ptr<ot::Message>::Ptr(a1, a2);
  return a1;
}

uint64_t otIp6GetSourceDestinationAddressandPort(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Ip6::Ip6>(v3);
  v4 = ot::AsCoreType<otMessage>(a2);
  return ot::Ip6::Ip6::extractAddressAndportfromHeader(v6, v4, a3);
}

ot::Message *otIp6NewMessage(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Ip6::Ip6>(v2);
  v3 = ot::Message::Settings::From(a2);
  return ot::Ip6::Ip6::NewMessage(v5, 0, v3);
}

ot::Message *otIp6NewMessageFromBuffer(uint64_t a1, char *a2, unsigned __int16 a3, uint64_t a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::Ip6::Ip6>(v4);
  v5 = ot::Message::Settings::From(a4);
  return ot::Ip6::Ip6::NewMessageFromData(v7, a2, a3, v5);
}

uint64_t otIp6AddUnsecurePort(uint64_t a1, __int16 a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Ip6::Filter>(v2);
  return ot::Ip6::Filter::AddUnsecurePort(v3, a2);
}

uint64_t ot::Instance::Get<ot::Ip6::Filter>(uint64_t a1)
{
  return a1 + 88034;
}

{
  return ot::Instance::Get<ot::Ip6::Filter>(a1);
}

uint64_t ot::Ip6::Filter::AddUnsecurePort(ot::Ip6::Filter *this, __int16 a2)
{
  return ot::Ip6::Filter::UpdateUnsecurePorts(this, 0, a2);
}

{
  return ot::Ip6::Filter::AddUnsecurePort(this, a2);
}

uint64_t otIp6RemoveUnsecurePort(uint64_t a1, __int16 a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Ip6::Filter>(v2);
  return ot::Ip6::Filter::RemoveUnsecurePort(v3, a2);
}

uint64_t ot::Ip6::Filter::RemoveUnsecurePort(ot::Ip6::Filter *this, __int16 a2)
{
  return ot::Ip6::Filter::UpdateUnsecurePorts(this, 1, a2);
}

{
  return ot::Ip6::Filter::RemoveUnsecurePort(this, a2);
}

uint64_t otIp6RemoveAllUnsecurePorts(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Ip6::Filter>(v1);
  return ot::Ip6::Filter::RemoveAllUnsecurePorts(v2);
}

uint64_t ot::Ip6::Filter::RemoveAllUnsecurePorts(ot::Ip6::Filter *this)
{
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::Clear(this);
}

{
  return ot::Ip6::Filter::RemoveAllUnsecurePorts(this);
}

uint64_t otIp6GetUnsecurePorts(uint64_t a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    __assert_rtn("otIp6GetUnsecurePorts", "ip6_api.cpp", 184, "(aNumEntries) != nullptr");
  }

  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Ip6::Filter>(v2);
  return ot::Ip6::Filter::GetUnsecurePorts(v3, a2);
}

uint64_t ot::Ip6::Filter::GetUnsecurePorts(ot::Ip6::Filter *this, unsigned __int8 *a2)
{
  *a2 = ot::Array<unsigned short,(unsigned short)2,unsigned char>::GetLength(this);
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::operator[](this, 0);
}

{
  return ot::Ip6::Filter::GetUnsecurePorts(this, a2);
}

BOOL otIp6IsAddressEqual(uint64_t a1, uint64_t a2)
{
  v4 = ot::AsCoreType<otIp6Address>(a1);
  v2 = ot::AsCoreType<otIp6Address>(a2);
  return ot::Equatable<ot::Ip6::Address>::operator==(v4, v2);
}

BOOL otIp6ArePrefixesEqual(uint64_t a1, uint64_t a2)
{
  v4 = ot::AsCoreType<otIp6Prefix>(a1);
  v2 = ot::AsCoreType<otIp6Prefix>(a2);
  return ot::Ip6::Prefix::operator==(v4, v2);
}

ot::StringWriter *otIp6AddressToString(uint64_t a1, char *a2, __int16 a3)
{
  if (!a2)
  {
    __assert_rtn("otIp6AddressToString", "ip6_api.cpp", 211, "(aBuffer) != nullptr");
  }

  v3 = ot::AsCoreType<otIp6Address>(a1);
  return ot::Ip6::Address::ToString(v3, a2, a3);
}

ot::StringWriter *otIp6SockAddrToString(uint64_t a1, char *a2, __int16 a3)
{
  if (!a2)
  {
    __assert_rtn("otIp6SockAddrToString", "ip6_api.cpp", 218, "(aBuffer) != nullptr");
  }

  v3 = ot::AsCoreType<otSockAddr>(a1);
  return ot::Ip6::SockAddr::ToString(v3, a2, a3);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otSockAddr>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

ot::StringWriter *otIp6PrefixToString(uint64_t a1, char *a2, __int16 a3)
{
  if (!a2)
  {
    __assert_rtn("otIp6PrefixToString", "ip6_api.cpp", 225, "(aBuffer) != nullptr");
  }

  v3 = ot::AsCoreType<otIp6Prefix>(a1);
  return ot::Ip6::Prefix::ToString(v3, a2, a3);
}

uint64_t otIp6PrefixMatch(uint64_t a1, uint64_t a2)
{
  v4 = ot::AsCoreType<otIp6Address>(a1);
  v2 = ot::AsCoreType<otIp6Address>(a2);
  return ot::Ip6::Address::PrefixMatch(v4, v2);
}

void *otIp6GetPrefix(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = ot::AsCoreType<otIp6Address>(a1);
  v3 = ot::AsCoreType<otIp6Prefix>(a3);
  return ot::Ip6::Address::GetPrefix(v5, a2, v3);
}

void *ot::Ip6::Address::GetPrefix(ot::Ip6::Address *this, unsigned __int8 a2, ot::Ip6::Prefix *a3)
{
  return ot::Ip6::Prefix::Set(a3, this, a2);
}

{
  return ot::Ip6::Address::GetPrefix(this, a2, a3);
}

uint64_t otIp6SelectSourceAddress(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Ip6::Ip6>(v2);
  v3 = ot::AsCoreType<otMessageInfo>(a2);
  return ot::Ip6::Ip6::SelectSourceAddress(v5, v3);
}

uint64_t otIp6RegisterMulticastListeners(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v6 = ot::AsCoreType<otInstance>(a1);
  v9 = ot::Instance::Get<ot::MlrManager>(v6);
  ot::AsCoreTypePtr<otIp6Address>();
  return ot::MlrManager::RegisterMulticastListeners(v9, v7, a3, a4, a5, a6);
}

uint64_t ot::Instance::Get<ot::MlrManager>(uint64_t a1)
{
  return a1 + 154384;
}

{
  return ot::Instance::Get<ot::MlrManager>(a1);
}

void ot::AsCoreTypePtr<otIp6Address>()
{
  ;
}

{
  ;
}

{
  ot::AsCoreTypePtr<otIp6Address>();
}

{
  ot::AsCoreTypePtr<otIp6Address>();
}

uint64_t otIp6IsSlaacEnabled(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::Slaac>(v1);
  return ot::Utils::Slaac::IsEnabled(v2);
}

uint64_t ot::Instance::Get<ot::Utils::Slaac>(uint64_t a1)
{
  return a1 + 86984;
}

{
  return ot::Instance::Get<ot::Utils::Slaac>(a1);
}

uint64_t ot::Utils::Slaac::IsEnabled(ot::Utils::Slaac *this)
{
  return *this & 1;
}

{
  return ot::Utils::Slaac::IsEnabled(this);
}

void otIp6SetSlaacEnabled(uint64_t a1, char a2)
{
  v10 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::Slaac>(v10);
  if (a2)
  {
    ot::Utils::Slaac::Enable(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    ot::Utils::Slaac::Disable(v2);
  }
}

void otIp6SetSlaacPrefixFilter(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Utils::Slaac>(v2);
  ot::Utils::Slaac::SetFilter(v3, a2, v4, v5, v6, v7, v8, v9);
}

void *ot::CallbackBase<void (*)(otMessage *,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otMessage *,void *)>::Set(result, a2, a3);
}

void *ot::CallbackBase<void (*)(otIp6AddressInfo const*,BOOL,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otIp6AddressInfo const*,BOOL,void *)>::Set(result, a2, a3);
}

uint64_t ot::Array<unsigned short,(unsigned short)2,unsigned char>::Clear(uint64_t result)
{
  *(result + 4) = 0;
  return result;
}

{
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::Clear(result);
}

uint64_t ot::Array<unsigned short,(unsigned short)2,unsigned char>::GetLength(uint64_t a1)
{
  return *(a1 + 4);
}

{
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::GetLength(a1);
}

uint64_t ot::Array<unsigned short,(unsigned short)2,unsigned char>::operator[](uint64_t a1, unsigned __int8 a2)
{
  return a1 + 2 * a2;
}

{
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::operator[](a1, a2);
}

uint64_t otJoinerStart(uint64_t a1, ot *a2, ot *a3, ot *a4, ot *a5, ot *a6, char *a7, uint64_t a8, uint64_t a9)
{
  v9 = ot::AsCoreType<otInstance>(a1);
  v10 = ot::Instance::Get<ot::MeshCoP::Joiner>(v9);
  return ot::MeshCoP::Joiner::Start(v10, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t ot::Instance::Get<ot::MeshCoP::Joiner>(uint64_t a1)
{
  return a1 + 146216;
}

{
  return ot::Instance::Get<ot::MeshCoP::Joiner>(a1);
}

unsigned __int8 *otJoinerStop(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Joiner>(v1);
  return ot::MeshCoP::Joiner::Stop(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t otJoinerGetState(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Joiner>(v1);
  State = ot::MeshCoP::Joiner::GetState(v2);
  return ot::MapEnum<ot::MeshCoP::Joiner::State>(State);
}

uint64_t ot::MapEnum<ot::MeshCoP::Joiner::State>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::MeshCoP::Joiner::State>(result);
}

uint64_t ot::MeshCoP::Joiner::GetState(ot::MeshCoP::Joiner *this)
{
  return *(this + 24);
}

{
  return ot::MeshCoP::Joiner::GetState(this);
}

uint64_t ot::MeshCoP::Joiner::GetRepeatScan(ot::MeshCoP::Joiner *this)
{
  return *(this + 112);
}

{
  return ot::MeshCoP::Joiner::GetRepeatScan(this);
}

uint64_t ot::MeshCoP::Joiner::SetRepeatScan(ot::MeshCoP::Joiner *this, char a2)
{
  *(this + 112) = a2;
  return 0;
}

{
  return ot::MeshCoP::Joiner::SetRepeatScan(this, a2);
}

void otJoinerGetId(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Joiner>(v1);
  ot::MeshCoP::Joiner::GetId(v2);
}

void ot::MeshCoP::Joiner::GetId(ot::MeshCoP::Joiner *this)
{
  ;
}

{
  ot::MeshCoP::Joiner::GetId(this);
}

uint64_t otJoinerSetDiscerner(uint64_t a1, uint64_t a2)
{
  *&v6[4] = a2;
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::MeshCoP::Joiner>(v2);
  if (*&v6[4])
  {
    v3 = ot::AsCoreType<otJoinerDiscerner>(*&v6[4]);
    *v6 = ot::MeshCoP::Joiner::SetDiscerner(v5, v3);
  }

  else
  {
    *v6 = ot::MeshCoP::Joiner::ClearDiscerner(v5);
  }

  return *v6;
}

uint64_t otJoinerGetDiscerner(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Joiner>(v1);
  return ot::MeshCoP::Joiner::GetDiscerner(v2);
}

char *otJoinerStateToString(int a1)
{
  if (a1 > 5)
  {
    __assert_rtn("otJoinerStateToString", "joiner_api.cpp", 112, "aState <= OT_JOINER_STATE_JOINED");
  }

  v1 = ot::MapEnum<otJoinerState>(a1);
  return ot::MeshCoP::Joiner::StateToString(v1);
}

uint64_t ot::MapEnum<otJoinerState>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<otJoinerState>(result);
}

uint64_t otLinkGetChannel(uint64_t a1)
{
  v6 = ot::AsCoreType<otInstance>(a1);
  v1 = ot::Instance::Get<ot::Mac::LinkRaw>(v6);
  if (ot::Mac::LinkRaw::IsEnabled(v1))
  {
    v2 = ot::Instance::Get<ot::Mac::LinkRaw>(v6);
    return ot::Mac::LinkRaw::GetChannel(v2);
  }

  else
  {
    v3 = ot::Instance::Get<ot::Mac::Mac>(v6);
    return ot::Mac::Mac::GetPanChannel(v3);
  }
}

uint64_t ot::Mac::LinkRaw::GetChannel(ot::Mac::LinkRaw *this)
{
  return *this;
}

{
  return ot::Mac::LinkRaw::GetChannel(this);
}

uint64_t ot::Mac::Mac::GetPanChannel(ot::Mac::Mac *this)
{
  return *(this + 10);
}

{
  return ot::Mac::Mac::GetPanChannel(this);
}

uint64_t otLinkSetChannel(uint64_t a1, char a2)
{
  v9 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::LinkRaw>(v9);
  if (ot::Mac::LinkRaw::IsEnabled(v2))
  {
    v3 = ot::Instance::Get<ot::Mac::LinkRaw>(v9);
    return ot::Mac::LinkRaw::SetChannel(v3, a2);
  }

  else
  {
    v4 = ot::Instance::Get<ot::Mle::MleRouter>(v9);
    if (ot::Mle::Mle::IsDisabled(v4))
    {
      v5 = ot::Instance::Get<ot::Mac::Mac>(v9);
      v10 = ot::Mac::Mac::SetPanChannel(v5, a2);
      if (!v10)
      {
        active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v9);
        ot::MeshCoP::DatasetManager::Clear(active);
        v7 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v9);
        ot::MeshCoP::DatasetManager::Clear(v7);
      }
    }

    else
    {
      return 13;
    }
  }

  return v10;
}

uint64_t otLinkGetSupportedChannelMask(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  SupportedChannelMask = ot::Mac::Mac::GetSupportedChannelMask(v2);
  return ot::Mac::ChannelMask::GetMask(SupportedChannelMask);
}

uint64_t ot::Mac::Mac::GetSupportedChannelMask(ot::Mac::Mac *this)
{
  return this + 12;
}

{
  return ot::Mac::Mac::GetSupportedChannelMask(this);
}

uint64_t otLinkSetSupportedChannelMask(uint64_t a1, int a2)
{
  v9 = a1;
  v8 = a2;
  v7 = 0;
  v6 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v6);
  if (ot::Mle::Mle::IsDisabled(v2))
  {
    v4 = ot::Instance::Get<ot::Mac::Mac>(v6);
    ot::Mac::ChannelMask::ChannelMask(v5, v8);
    ot::Mac::Mac::SetSupportedChannelMask(v4, v5);
  }

  else
  {
    return 13;
  }

  return v7;
}

uint64_t otLinkGetExtendedAddress(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetExtAddress(v2);
}

uint64_t otLinkSetExtendedAddress(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v7 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v7);
  if (ot::Mle::Mle::IsDisabled(v2))
  {
    v6 = ot::Instance::Get<ot::Mac::Mac>(v7);
    v3 = ot::AsCoreType<otExtAddress>(a2);
    ot::Mac::Mac::SetExtAddress(v6, v3);
    v4 = ot::Instance::Get<ot::Mle::MleRouter>(v7);
    ot::Mle::Mle::UpdateLinkLocalAddress(v4);
  }

  else
  {
    return 13;
  }

  return v8;
}

void ot::Mac::Mac::SetExtAddress(ot::Mac::Mac *this, const ot::Mac::ExtAddress *a2)
{
  ot::Mac::Links::SetExtAddress((this + 56), a2);
}

{
  ot::Mac::Mac::SetExtAddress(this, a2);
}

uint64_t otLinkGetFactoryAssignedIeeeEui64(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Radio>(v2);
  v3 = ot::AsCoreType<otExtAddress>(a2);
  return ot::Radio::GetIeeeEui64(v5, v3);
}

uint64_t ot::Radio::GetIeeeEui64(ot::Radio *this, ot::Mac::ExtAddress *a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetIeeeEui64(InstancePtr, a2);
}

{
  return ot::Radio::GetIeeeEui64(this, a2);
}

uint64_t otLinkGetPanId(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetPanId(v2);
}

uint64_t otLinkSetPanId(uint64_t a1, __int16 a2)
{
  v8 = 0;
  v7 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v7);
  if (ot::Mle::Mle::IsDisabled(v2))
  {
    v3 = ot::Instance::Get<ot::Mac::Mac>(v7);
    ot::Mac::Mac::SetPanId(v3, a2);
    active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v7);
    ot::MeshCoP::DatasetManager::Clear(active);
    v5 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v7);
    ot::MeshCoP::DatasetManager::Clear(v5);
  }

  else
  {
    return 13;
  }

  return v8;
}

uint64_t otLinkForceWEDDetach(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::CslTxScheduler>(v1);
  return ot::CslTxScheduler::ForceDetach(v2);
}

uint64_t ot::Instance::Get<ot::CslTxScheduler>(uint64_t a1)
{
  return a1 + 90224;
}

{
  return ot::Instance::Get<ot::CslTxScheduler>(a1);
}

uint64_t otLinkGetCslRequestAhead(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::CslTxScheduler>(v1);
  return ot::CslTxScheduler::GetFrameRequestAheadUs(v2);
}

uint64_t otLinkSetCslRequestAhead(uint64_t a1, int a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::CslTxScheduler>(v2);
  ot::CslTxScheduler::SetFrameRequestAheadUs(v3, a2);
  return 0;
}

uint64_t otLinkGetPollPeriod(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::DataPollSender>(v1);
  return ot::DataPollSender::GetKeepAlivePollPeriod(v2);
}

uint64_t ot::Instance::Get<ot::DataPollSender>(uint64_t a1)
{
  return a1 + 90256;
}

{
  return ot::Instance::Get<ot::DataPollSender>(a1);
}

uint64_t otLinkSetPollPeriod(uint64_t a1, unsigned int a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::DataPollSender>(v2);
  return ot::DataPollSender::SetExternalPollPeriod(v3, a2);
}

uint64_t otLinkSendDataRequest(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::DataPollSender>(v1);
  return ot::DataPollSender::SendDataPoll(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t otLinkGetShortAddress(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetShortAddress(v2);
}

uint64_t ot::Mac::Mac::GetShortAddress(ot::Mac::Mac *this)
{
  return ot::Mac::Links::GetShortAddress((this + 56));
}

{
  return ot::Mac::Mac::GetShortAddress(this);
}

uint64_t otLinkGetAlternateShortAddress(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetAlternateShortAddress(v2);
}

uint64_t ot::Mac::Mac::GetAlternateShortAddress(ot::Mac::Mac *this)
{
  return ot::Mac::Links::GetAlternateShortAddress((this + 56));
}

{
  return ot::Mac::Mac::GetAlternateShortAddress(this);
}

uint64_t otLinkGetMaxFrameRetriesDirect(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetMaxFrameRetriesDirect(v2);
}

uint64_t ot::Mac::Mac::GetMaxFrameRetriesDirect(ot::Mac::Mac *this)
{
  return *(this + 24);
}

{
  return ot::Mac::Mac::GetMaxFrameRetriesDirect(this);
}

uint64_t otLinkSetMaxFrameRetriesDirect(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  return ot::Mac::Mac::SetMaxFrameRetriesDirect(v3, a2);
}

uint64_t ot::Mac::Mac::SetMaxFrameRetriesDirect(uint64_t this, char a2)
{
  *(this + 24) = a2;
  return this;
}

{
  return ot::Mac::Mac::SetMaxFrameRetriesDirect(this, a2);
}

uint64_t otLinkGetMaxFrameRetriesIndirect(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetMaxFrameRetriesIndirect(v2);
}

uint64_t ot::Mac::Mac::GetMaxFrameRetriesIndirect(ot::Mac::Mac *this)
{
  return *(this + 25);
}

{
  return ot::Mac::Mac::GetMaxFrameRetriesIndirect(this);
}

uint64_t otLinkSetMaxFrameRetriesIndirect(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  return ot::Mac::Mac::SetMaxFrameRetriesIndirect(v3, a2);
}

uint64_t ot::Mac::Mac::SetMaxFrameRetriesIndirect(uint64_t this, char a2)
{
  *(this + 25) = a2;
  return this;
}

{
  return ot::Mac::Mac::SetMaxFrameRetriesIndirect(this, a2);
}

uint64_t otLinkGetFrameCounter(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::SubMac>(v1);
  return ot::Mac::SubMac::GetFrameCounter(v2);
}

uint64_t ot::Instance::Get<ot::Mac::SubMac>(uint64_t a1)
{
  return a1 + 88264;
}

{
  return ot::Instance::Get<ot::Mac::SubMac>(a1);
}

uint64_t ot::Mac::SubMac::GetFrameCounter(ot::Mac::SubMac *this)
{
  return *(this + 28);
}

{
  return ot::Mac::SubMac::GetFrameCounter(this);
}

uint64_t otLinkFilterGetAddressMode(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Filter>(v1);
  Mode = ot::Mac::Filter::GetMode(v2);
  return ot::MapEnum<ot::Mac::Filter::Mode>(Mode);
}

uint64_t ot::MapEnum<ot::Mac::Filter::Mode>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::Mac::Filter::Mode>(result);
}

uint64_t ot::Instance::Get<ot::Mac::Filter>(uint64_t a1)
{
  return a1 + 89564;
}

{
  return ot::Instance::Get<ot::Mac::Filter>(a1);
}

uint64_t ot::Mac::Filter::GetMode(ot::Mac::Filter *this)
{
  return *this;
}

{
  return ot::Mac::Filter::GetMode(this);
}

_BYTE *otLinkFilterSetAddressMode(uint64_t a1, unsigned int a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Mac::Filter>(v2);
  v3 = ot::MapEnum<otMacFilterAddressMode>(a2);
  return ot::Mac::Filter::SetMode(v5, v3);
}

_BYTE *ot::Mac::Filter::SetMode(_BYTE *result, char a2)
{
  *result = a2;
  return result;
}

{
  return ot::Mac::Filter::SetMode(result, a2);
}

uint64_t ot::MapEnum<otMacFilterAddressMode>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<otMacFilterAddressMode>(result);
}

uint64_t otLinkFilterAddAddress(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Mac::Filter>(v2);
  v3 = ot::AsCoreType<otExtAddress>(a2);
  return ot::Mac::Filter::AddAddress(v5, v3);
}

void otLinkFilterRemoveAddress(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mac::Filter>(v2);
  v3 = ot::AsCoreType<otExtAddress>(a2);
  ot::Mac::Filter::RemoveAddress(v4, v3);
}

uint64_t otLinkFilterClearAddresses(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Filter>(v1);
  return ot::Mac::Filter::ClearAddresses(v2);
}

uint64_t otLinkFilterGetNextAddress(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otLinkFilterGetNextAddress", "link_api.cpp", 250, "(aIterator) != nullptr");
  }

  if (!a3)
  {
    __assert_rtn("otLinkFilterGetNextAddress", "link_api.cpp", 251, "(aEntry) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mac::Filter>(v3);
  return ot::Mac::Filter::GetNextAddress(v4, a2, a3);
}

uint64_t otLinkFilterAddRssIn(uint64_t a1, uint64_t a2, char a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Mac::Filter>(v3);
  v4 = ot::AsCoreType<otExtAddress>(a2);
  return ot::Mac::Filter::AddRssIn(v6, v4, a3);
}

void otLinkFilterRemoveRssIn(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mac::Filter>(v2);
  v3 = ot::AsCoreType<otExtAddress>(a2);
  ot::Mac::Filter::RemoveRssIn(v4, v3);
}

uint64_t otLinkFilterSetDefaultRssIn(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Filter>(v2);
  return ot::Mac::Filter::SetDefaultRssIn(v3, a2);
}

uint64_t ot::Mac::Filter::SetDefaultRssIn(uint64_t this, char a2)
{
  *(this + 1) = a2;
  return this;
}

{
  return ot::Mac::Filter::SetDefaultRssIn(this, a2);
}

uint64_t otLinkFilterClearDefaultRssIn(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Filter>(v1);
  return ot::Mac::Filter::ClearDefaultRssIn(v2);
}

uint64_t ot::Mac::Filter::ClearDefaultRssIn(uint64_t this)
{
  *(this + 1) = 127;
  return this;
}

{
  return ot::Mac::Filter::ClearDefaultRssIn(this);
}

uint64_t otLinkFilterClearAllRssIn(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Filter>(v1);
  return ot::Mac::Filter::ClearAllRssIn(v2);
}

uint64_t otLinkFilterGetNextRssIn(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otLinkFilterGetNextRssIn", "link_api.cpp", 280, "(aIterator) != nullptr");
  }

  if (!a3)
  {
    __assert_rtn("otLinkFilterGetNextRssIn", "link_api.cpp", 281, "(aEntry) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mac::Filter>(v3);
  return ot::Mac::Filter::GetNextRssIn(v4, a2, a3);
}

void otLinkSetRadioFilterEnabled(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  ot::Mac::Mac::SetRadioFilterEnabled(v3, a2 & 1);
}

uint64_t otLinkIsRadioFilterEnabled(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::IsRadioFilterEnabled(v2);
}

uint64_t ot::Mac::Mac::IsRadioFilterEnabled(ot::Mac::Mac *this)
{
  SubMac = ot::Mac::Links::GetSubMac((this + 56));
  return ot::Mac::SubMac::IsRadioFilterEnabled(SubMac);
}

{
  return ot::Mac::Mac::IsRadioFilterEnabled(this);
}

uint64_t otLinkConvertRssToLinkQuality(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  v4 = ot::Mac::Mac::ComputeLinkMargin(v3, a2);
  return ot::LinkQualityForLinkMargin(v4);
}

uint64_t otLinkConvertLinkQualityToRss(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  NoiseFloor = ot::Mac::Mac::GetNoiseFloor(v3);
  return ot::GetTypicalRssForLinkQuality(NoiseFloor, a2);
}

uint64_t ot::Mac::Mac::GetNoiseFloor(ot::Mac::Mac *this)
{
  return ot::Mac::Links::GetNoiseFloor((this + 56));
}

{
  return ot::Mac::Mac::GetNoiseFloor(this);
}

uint64_t otLinkGetTxDirectRetrySuccessHistogram(uint64_t a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    __assert_rtn("otLinkGetTxDirectRetrySuccessHistogram", "link_api.cpp", 314, "(aNumberOfEntries) != nullptr");
  }

  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  return ot::Mac::Mac::GetDirectRetrySuccessHistogram(v3, a2);
}

uint64_t otLinkGetTxIndirectRetrySuccessHistogram(uint64_t a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    __assert_rtn("otLinkGetTxIndirectRetrySuccessHistogram", "link_api.cpp", 323, "(aNumberOfEntries) != nullptr");
  }

  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  return ot::Mac::Mac::GetIndirectRetrySuccessHistogram(v3, a2);
}

void *otLinkResetTxRetrySuccessHistogram(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::ResetRetrySuccessHistogram(v2);
}

uint64_t otLinkGetTxDirectErrorNoAckHistogram(uint64_t a1, unsigned __int8 *a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  return ot::Mac::Mac::GetDirectErrorNoAckHistogram(v3, a2);
}

uint64_t otLinkGetTxDirectErrorChannelAccessFailureHistogram(uint64_t a1, unsigned __int8 *a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  return ot::Mac::Mac::GetDirectErrorChannelAccessFailureHistogram(v3, a2);
}

void *otLinkResetTxErrorHistogram(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::ResetTxErrorHistogram(v2);
}

void otLinkGetTxPacketSizeHistogram(uint64_t a1, unsigned __int8 *a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  ot::Mac::Mac::GetTxSizeHistogram(v3, a2);
}

void otLinkGetRxPacketSizeHistogram(uint64_t a1, unsigned __int8 *a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  ot::Mac::Mac::GetRxSizeHistogram(v3, a2);
}

void otLinkGetLqiHistogram(uint64_t a1, unsigned __int8 *a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  ot::Mac::Mac::GetRxLqiHistogram(v3, a2);
}

void otLinkGetRouterRssiHistogram(uint64_t a1, unsigned __int8 *a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  ot::Mac::Mac::GetRouterRssiHistogram(v3, a2);
}

void otLinkGetEndDeviceRssiHistogram(uint64_t a1, unsigned __int8 *a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  ot::Mac::Mac::GetEndDeviceRssiHistogram(v3, a2);
}

void otLinkGetJoinerRssiHistogram(uint64_t a1, unsigned __int8 *a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  ot::Mac::Mac::GetJoinerRssiHistogram(v3, a2);
}

void *otLinkResetPacketSizeHistogram(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::ClearSizeHistograms(v2);
}

void *otLinkResetLqiHistogram(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::ClearLqiHistogram(v2);
}

void *otLinkResetNeighborRssiHistogram(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::ClearNeighborRssiHistograms(v2);
}

void *otLinkResetJoinerRssiHistogram(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::ClearJoinerRssiHistograms(v2);
}

void *otLinkSetPcapCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mac::Mac>(v3);
  return ot::Mac::Mac::SetPcapCallback(v4, a2, a3);
}

void *ot::Mac::Mac::SetPcapCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::Mac::Links::SetPcapCallback(a1 + 56, a2, a3);
}

{
  return ot::Mac::Mac::SetPcapCallback(a1, a2, a3);
}

uint64_t otLinkIsPromiscuous(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::IsPromiscuous(v2);
}

uint64_t ot::Mac::Mac::IsPromiscuous(ot::Mac::Mac *this)
{
  return (*this >> 3) & 1;
}

{
  return ot::Mac::Mac::IsPromiscuous(this);
}

uint64_t otLinkSetPromiscuous(uint64_t a1, char a2)
{
  v6 = 0;
  v5 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::ThreadNetif>(v5);
  if (ot::ThreadNetif::IsUp(v2))
  {
    return 13;
  }

  else
  {
    v3 = ot::Instance::Get<ot::Mac::Mac>(v5);
    ot::Mac::Mac::SetPromiscuous(v3, a2 & 1);
  }

  return v6;
}

uint64_t otLinkSetEnabled(uint64_t a1, char a2)
{
  v6 = 0;
  v5 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::ThreadNetif>(v5);
  if (ot::ThreadNetif::IsUp(v2))
  {
    return 13;
  }

  else
  {
    v3 = ot::Instance::Get<ot::Mac::Mac>(v5);
    ot::Mac::Mac::SetEnabled(v3, a2 & 1);
  }

  return v6;
}

uint64_t otLinkIsEnabled(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::IsEnabled(v2);
}

uint64_t ot::Mac::Mac::IsEnabled(ot::Mac::Mac *this)
{
  return *this & 1;
}

{
  return ot::Mac::Mac::IsEnabled(this);
}

uint64_t otLinkGetCounters(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetCounters(v2);
}

uint64_t ot::Mac::Mac::GetCounters(ot::Mac::Mac *this)
{
  return this + 336;
}

{
  return ot::Mac::Mac::GetCounters(this);
}

void *otLinkResetCounters(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::ResetCounters(v2);
}

void *ot::Mac::Mac::ResetCounters(ot::Mac::Mac *this)
{
  return ot::ClearAllBytes<otMacCounters>(this + 336);
}

{
  return ot::Mac::Mac::ResetCounters(this);
}

void otLinkRegenerateExAddr(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  ot::Mac::Mac::RegenerateExtAddr(v2);
}

uint64_t otLinkRegenerateMleIid(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GenerateMleIid(v2);
}

uint64_t otLinkActiveScan(uint64_t a1, unsigned int a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v5 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Mac::Mac>(v5);
  return ot::Mac::Mac::ActiveScan(v6, a2, a3, a4, a5);
}

BOOL otLinkIsActiveScanInProgress(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::IsActiveScanInProgress(v2);
}

BOOL ot::Mac::Mac::IsActiveScanInProgress(ot::Mac::Mac *this)
{
  return ot::Mac::Mac::IsActiveOrPending(this, 1u);
}

{
  return ot::Mac::Mac::IsActiveScanInProgress(this);
}

uint64_t otLinkEnergyScan(uint64_t a1, unsigned int a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v5 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Mac::Mac>(v5);
  return ot::Mac::Mac::EnergyScan(v6, a2, a3, a4, a5);
}

BOOL otLinkIsEnergyScanInProgress(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::IsEnergyScanInProgress(v2);
}

BOOL ot::Mac::Mac::IsEnergyScanInProgress(ot::Mac::Mac *this)
{
  return ot::Mac::Mac::IsActiveOrPending(this, 2u);
}

{
  return ot::Mac::Mac::IsEnergyScanInProgress(this);
}

uint64_t otLinkIsInTransmitState(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::IsInTransmitState(v2);
}

uint64_t otLinkGetCcaFailureRate(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetCcaFailureRate(v2);
}

uint64_t ot::Mac::Mac::GetCcaFailureRate(ot::Mac::Mac *this)
{
  return ot::SuccessRateTracker::GetFailureRate((this + 524));
}

{
  return ot::Mac::Mac::GetCcaFailureRate(this);
}

uint64_t otLinkGetMleAdvTxNum(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetMleAdvTxNum(v2);
}

uint64_t ot::Mac::Mac::GetMleAdvTxNum(ot::Mac::Mac *this)
{
  return *(this + 26);
}

{
  return ot::Mac::Mac::GetMleAdvTxNum(this);
}

uint64_t otLinkSetMleAdvTxNum(uint64_t a1, unsigned __int8 a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  return ot::Mac::Mac::SetMleAdvTxNum(v3, a2);
}

BOOL otLinkIsCslEnabled(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::IsCslEnabled(v2);
}

BOOL otLinkIsCslSupported(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::IsCslSupported(v2);
}

uint64_t otLinkGetCslChannel(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetCslChannel(v2);
}

uint64_t ot::Mac::Mac::GetCslChannel(ot::Mac::Mac *this)
{
  return *(this + 32);
}

{
  return ot::Mac::Mac::GetCslChannel(this);
}

uint64_t otLinkSetCslChannel(uint64_t a1, unsigned __int8 a2)
{
  v5 = 0;
  if (ot::Radio::IsCslChannelValid(a2))
  {
    v2 = ot::AsCoreType<otInstance>(a1);
    v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
    ot::Mac::Mac::SetCslChannel(v3, a2);
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t ot::Radio::IsCslChannelValid(ot::Radio *this)
{
  v4 = 1;
  if (this)
  {
    v3 = 1;
    if (this != 11)
    {
      v2 = 0;
      if (this > 0xBu)
      {
        v2 = this <= 0x19u;
      }

      v3 = v2;
    }

    v4 = v3;
  }

  return v4 & 1;
}

{
  return ot::Radio::IsCslChannelValid(this);
}

uint64_t otLinkCslGetPeriod(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetCslPeriod(v2);
}

uint64_t ot::Mac::Mac::GetCslPeriod(ot::Mac::Mac *this)
{
  return *(this + 17);
}

{
  return ot::Mac::Mac::GetCslPeriod(this);
}

uint64_t otLinkGetCslPeriod(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  CslPeriod = ot::Mac::Mac::GetCslPeriod(v2);
  return ot::Mac::Mac::CslPeriodToUsec(CslPeriod);
}

uint64_t otLinkSetCslPeriod(uint64_t a1, unsigned int a2)
{
  v6 = 0;
  if (!a2)
  {
    v5 = 0;
LABEL_7:
    v2 = ot::AsCoreType<otInstance>(a1);
    v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
    ot::Mac::Mac::SetCslPeriod(v3, v5);
    return v6;
  }

  if (a2 % 0xA0)
  {
    return 7;
  }

  else
  {
    v5 = ot::ClampToUint16<unsigned int>(a2 / 0xA0);
    if (v5 >= 0x3EuLL)
    {
      goto LABEL_7;
    }

    return 7;
  }
}

uint64_t ot::ClampToUint16<unsigned int>(unsigned int a1)
{
  return ot::Min<unsigned int>(a1, 0xFFFFu);
}

{
  return ot::ClampToUint16<unsigned int>(a1);
}

uint64_t otLinkGetCslTimeout(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetCslTimeout(v2);
}

uint64_t ot::Mle::Mle::GetCslTimeout(ot::Mle::Mle *this)
{
  return *(this + 40);
}

{
  return ot::Mle::Mle::GetCslTimeout(this);
}

uint64_t otLinkSetCslTimeout(uint64_t a1, unsigned int a2)
{
  v5 = 0;
  if (a2 <= 0x2710uLL)
  {
    v2 = ot::AsCoreType<otInstance>(a1);
    v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
    ot::Mle::Mle::SetCslTimeout(v3, a2);
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t otLinkWorGetChannel(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetWorChannel(v2);
}

uint64_t ot::Mac::Mac::GetWorChannel(ot::Mac::Mac *this)
{
  return *(this + 36);
}

{
  return ot::Mac::Mac::GetWorChannel(this);
}

uint64_t otLinkWorSetChannel(uint64_t a1, char a2)
{
  v8 = 0;
  v7 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v7);
  if (ot::Mle::Mle::IsDisabled(v2))
  {
    v3 = ot::Instance::Get<ot::Mac::Mac>(v7);
    ot::Mac::Mac::SetWorChannel(v3, a2);
    active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v7);
    ot::MeshCoP::DatasetManager::Clear(active);
    v5 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v7);
    ot::MeshCoP::DatasetManager::Clear(v5);
  }

  else
  {
    return 13;
  }

  return v8;
}

unsigned __int8 *otLinkSetFragmentSize(uint64_t a1, unsigned __int8 a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MeshForwarder>(v2);
  return ot::MeshForwarder::setFragmentSize(v3, a2);
}

unsigned __int8 *ot::MeshForwarder::setFragmentSize(unsigned __int8 *this, unsigned __int8 a2)
{
  if (a2 >= 0x3Fu && a2 <= 0x7Fu)
  {
    *this = a2;
  }

  return this;
}

{
  return ot::MeshForwarder::setFragmentSize(this, a2);
}

unsigned __int8 *otLinkGetFragmentSize(uint64_t a1, unsigned __int8 *a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MeshForwarder>(v2);
  return ot::MeshForwarder::getFragmentSize(v3, a2);
}

unsigned __int8 *ot::MeshForwarder::getFragmentSize(unsigned __int8 *this, unsigned __int8 *a2)
{
  *a2 = *this;
  return this;
}

{
  return ot::MeshForwarder::getFragmentSize(this, a2);
}

void otLinkSetDataPollTimeoutCoex(uint64_t a1, int a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  ot::Mac::Mac::SetDataPollTimeoutCoex(v3, a2);
}

void otLinkSetCoexLoadMap(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  ot::Mle::Mle::SetCoexLoadMapValue(v3, a2, v4, v5, v6, v7, v8, v9);
}

uint64_t otLinkSetDiscoverScanDutyCycle(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::Mle::adjustDutyCycleForSRDiscoverScan(v3, a2 & 1);
}

uint64_t otLinkSetPairingDeviceExtAddr(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = ot::AsCoreType<otInstance>(a1);
    v7 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
    v3 = ot::AsCoreType<otExtAddress>(a2);
    return ot::Mle::MleRouter::SetPairingDeviceExtAddr(v7, v3);
  }

  else
  {
    v5 = ot::AsCoreType<otInstance>(a1);
    v6 = ot::Instance::Get<ot::Mle::MleRouter>(v5);
    return ot::Mle::MleRouter::ResetPairingDeviceExtAddr(v6);
  }
}

uint64_t otLinkGetPairingDeviceExtAddr(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::GetPairingDeviceExtAddr(v2);
}

void otLinkSetB2BDataPollDelay(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::DataPollSender>(v2);
  ot::DataPollSender::SetB2BDataPollDelay(v3, a2, v4, v5, v6, v7, v8, v9);
}

void otLinkSetSessionPriority(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::DataPollSender>(v2);
  ot::DataPollSender::SetSessionPriority(v3, a2, v4, v5, v6, v7, v8, v9);
}

uint64_t otLinkGetPrioritizedWindowSize(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::getPrioritizedWindowSize(v2);
}

_WORD *otLinkGetPcapStateTable(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  return ot::Mac::Mac::GetPcapStats(v2);
}

void otLinkResetPcapStateTable(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mac::Mac>(v1);
  ot::Mac::Mac::ResetPcapStats(v2);
}

uint64_t otLinkSetRegion(uint64_t a1, unsigned __int16 a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
  return ot::Mac::Mac::SetRegion(v3, a2);
}

uint64_t otLinkGetRegion(uint64_t a1, unsigned __int16 *a2)
{
  if (a2)
  {
    v2 = ot::AsCoreType<otInstance>(a1);
    v3 = ot::Instance::Get<ot::Mac::Mac>(v2);
    return ot::Mac::Mac::GetRegion(v3, a2);
  }

  else
  {
    return 7;
  }
}

void ot::Mac::Links::SetExtAddress(ot::Mac::Links *this, const ot::Mac::ExtAddress *a2)
{
  ot::Mac::SubMac::SetExtAddress((this + 8), a2);
}

{
  ot::Mac::Links::SetExtAddress(this, a2);
}

uint64_t ot::Mac::Links::GetShortAddress(ot::Mac::Links *this)
{
  return ot::Mac::SubMac::GetShortAddress((this + 8));
}

{
  return ot::Mac::Links::GetShortAddress(this);
}

uint64_t ot::Mac::SubMac::GetShortAddress(ot::Mac::SubMac *this)
{
  return *(this + 4);
}

{
  return ot::Mac::SubMac::GetShortAddress(this);
}

uint64_t ot::Mac::Links::GetAlternateShortAddress(ot::Mac::Links *this)
{
  return ot::Mac::SubMac::GetAlternateShortAddress((this + 8));
}

{
  return ot::Mac::Links::GetAlternateShortAddress(this);
}

uint64_t ot::Mac::SubMac::GetAlternateShortAddress(ot::Mac::SubMac *this)
{
  return *(this + 5);
}

{
  return ot::Mac::SubMac::GetAlternateShortAddress(this);
}

uint64_t ot::Mac::Links::GetSubMac(ot::Mac::Links *this)
{
  return this + 8;
}

{
  return this + 8;
}

{
  return ot::Mac::Links::GetSubMac(this);
}

{
  return ot::Mac::Links::GetSubMac(this);
}

uint64_t ot::Mac::SubMac::IsRadioFilterEnabled(ot::Mac::SubMac *this)
{
  return (*(this + 20) >> 1) & 1;
}

{
  return ot::Mac::SubMac::IsRadioFilterEnabled(this);
}

uint64_t ot::Mac::Links::GetNoiseFloor(ot::Mac::Links *this)
{
  return ot::Mac::SubMac::GetNoiseFloor((this + 8));
}

{
  return ot::Mac::Links::GetNoiseFloor(this);
}

void *ot::Mac::Links::SetPcapCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::Mac::SubMac::SetPcapCallback(a1 + 8, a2, a3);
}

{
  return ot::Mac::Links::SetPcapCallback(a1, a2, a3);
}

void *ot::Mac::SubMac::SetPcapCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(otRadioFrame const*,BOOL,void *)>::Set((a1 + 48), a2, a3);
}

{
  return ot::Mac::SubMac::SetPcapCallback(a1, a2, a3);
}

void *ot::CallbackBase<void (*)(otRadioFrame const*,BOOL,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otRadioFrame const*,BOOL,void *)>::Set(result, a2, a3);
}

void *ot::ClearAllBytes<otMacCounters>(void *a1)
{
  return memset(a1, 0, 0xB8uLL);
}

{
  return ot::ClearAllBytes<otMacCounters>(a1);
}

uint64_t ot::SuccessRateTracker::GetFailureRate(ot::SuccessRateTracker *this)
{
  return *this;
}

{
  return ot::SuccessRateTracker::GetFailureRate(this);
}

uint64_t ot::Min<unsigned int>(unsigned int a1, unsigned int a2)
{
  if (a1 >= a2)
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

{
  return ot::Min<unsigned int>(a1, a2);
}

uint64_t otLinkMetricsQuery(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::LinkMetrics::Initiator>(v6);
  ot::LinkMetrics::Initiator::SetReportCallback(v7, a5, a6);
  v8 = ot::AsCoreType<otInstance>(a1);
  v12 = ot::Instance::Get<ot::LinkMetrics::Initiator>(v8);
  v11 = ot::AsCoreType<otIp6Address>(a2);
  ot::AsCoreTypePtr<otLinkMetrics>();
  return ot::LinkMetrics::Initiator::Query(v12, v11, a3, v9);
}

uint64_t ot::Instance::Get<ot::LinkMetrics::Initiator>(uint64_t a1)
{
  return a1 + 154736;
}

{
  return ot::Instance::Get<ot::LinkMetrics::Initiator>(a1);
}

void *ot::LinkMetrics::Initiator::SetReportCallback(void *a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsValues const*,otLinkMetricsStatus,void *)>::Set(a1, a2, a3);
}

{
  return ot::LinkMetrics::Initiator::SetReportCallback(a1, a2, a3);
}

void ot::AsCoreTypePtr<otLinkMetrics>()
{
  ;
}

{
  ot::AsCoreTypePtr<otLinkMetrics>();
}

uint64_t otLinkMetricsConfigForwardTrackingSeries(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a4;
  v7 = ot::AsCoreType<otInstance>(a1);
  v12 = ot::Instance::Get<ot::LinkMetrics::Initiator>(v7);
  ot::LinkMetrics::Initiator::SetMgmtResponseCallback(v12, a6, a7);
  v10 = ot::AsCoreType<otIp6Address>(a2);
  v11 = ot::AsCoreType<otLinkMetricsSeriesFlags>(&v17);
  ot::AsCoreTypePtr<otLinkMetrics>();
  return ot::LinkMetrics::Initiator::SendMgmtRequestForwardTrackingSeries(v12, v10, a3, v11, v8);
}

void *ot::LinkMetrics::Initiator::SetMgmtResponseCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsStatus,void *)>::Set((a1 + 16), a2, a3);
}

{
  return ot::LinkMetrics::Initiator::SetMgmtResponseCallback(a1, a2, a3);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otLinkMetricsSeriesFlags>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

uint64_t otLinkMetricsConfigEnhAckProbing(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = ot::AsCoreType<otInstance>(a1);
  v13 = ot::Instance::Get<ot::LinkMetrics::Initiator>(v8);
  ot::LinkMetrics::Initiator::SetMgmtResponseCallback(v13, a5, a6);
  ot::LinkMetrics::Initiator::SetEnhAckProbingCallback(v13, a7, a8);
  v11 = ot::AsCoreType<otIp6Address>(a2);
  v12 = ot::MapEnum<otLinkMetricsEnhAckFlags>(a3);
  ot::AsCoreTypePtr<otLinkMetrics>();
  return ot::LinkMetrics::Initiator::SendMgmtRequestEnhAckProbing(v13, v11, v12, v9);
}

void *ot::LinkMetrics::Initiator::SetEnhAckProbingCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(unsigned short,otExtAddress const*,otLinkMetricsValues const*,void *)>::Set((a1 + 32), a2, a3);
}

{
  return ot::LinkMetrics::Initiator::SetEnhAckProbingCallback(a1, a2, a3);
}

uint64_t ot::MapEnum<otLinkMetricsEnhAckFlags>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<otLinkMetricsEnhAckFlags>(result);
}

uint64_t otLinkMetricsSendLinkProbe(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::LinkMetrics::Initiator>(v4);
  v5 = ot::AsCoreType<otIp6Address>(a2);
  return ot::LinkMetrics::Initiator::SendLinkProbe(v7, v5, a3, a4);
}

void *ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsValues const*,otLinkMetricsStatus,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsValues const*,otLinkMetricsStatus,void *)>::Set(result, a2, a3);
}

void *ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsStatus,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsStatus,void *)>::Set(result, a2, a3);
}

void *ot::CallbackBase<void (*)(unsigned short,otExtAddress const*,otLinkMetricsValues const*,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(unsigned short,otExtAddress const*,otLinkMetricsValues const*,void *)>::Set(result, a2, a3);
}

uint64_t otPlatCryptoAesInit(uint64_t *a1)
{
  v3 = 0;
  if (a1)
  {
    if (*(a1 + 4) >= 0x120uLL)
    {
      v2 = *a1;
      mbedtls_aes_init();
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 7;
  }

  return v3;
}

uint64_t otPlatCryptoAesSetKey(uint64_t a1, const ot::Crypto::Key *a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 0;
  v7 = 0;
  ot::Crypto::LiteralKey::LiteralKey(v6, a2);
  if (v10)
  {
    if (*(v10 + 8) >= 0x120uLL)
    {
      v7 = *v10;
      v5 = v7;
      Bytes = ot::Crypto::LiteralKey::GetBytes(v6);
      Length = ot::Crypto::LiteralKey::GetLength(v6);
      if (mbedtls_aes_setkey_enc(v5, Bytes, 8 * Length))
      {
        return 1;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 7;
  }

  return v8;
}

uint64_t ot::Crypto::LiteralKey::GetBytes(ot::Crypto::LiteralKey *this)
{
  return *this;
}

{
  return ot::Crypto::LiteralKey::GetBytes(this);
}

uint64_t ot::Crypto::LiteralKey::GetLength(ot::Crypto::LiteralKey *this)
{
  return *(this + 4);
}

{
  return ot::Crypto::LiteralKey::GetLength(this);
}

uint64_t otPlatCryptoAesEncrypt(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (a1)
  {
    return *(a1 + 8) < 0x120uLL || mbedtls_aes_crypt_ecb(*a1, 1u, a2, a3) != 0;
  }

  else
  {
    return 7;
  }
}

uint64_t otPlatCryptoAesFree(uint64_t a1)
{
  v2 = 0;
  if (a1)
  {
    if (*(a1 + 8) >= 0x120uLL)
    {
      mbedtls_aes_free(*a1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 7;
  }

  return v2;
}

uint64_t otPlatCryptoHmacSha256Init(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8) >= 0x18uLL)
    {
      v2 = *a1;
      mbedtls_md_init();
      v3 = mbedtls_md_info_from_type(9);
      return mbedtls_md_setup(v2, v3, 1) != 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 7;
  }
}

uint64_t otPlatCryptoHmacSha256Deinit(uint64_t a1)
{
  v2 = 0;
  if (a1)
  {
    if (*(a1 + 8) >= 0x18uLL)
    {
      mbedtls_md_free(*a1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 7;
  }

  return v2;
}

uint64_t otPlatCryptoHmacSha256Start(uint64_t a1, const ot::Crypto::Key *a2)
{
  v9 = a1;
  v8 = a2;
  v7 = 0;
  ot::Crypto::LiteralKey::LiteralKey(v6, a2);
  if (v9)
  {
    if (*(v9 + 8) >= 0x18uLL)
    {
      v5 = *v9;
      Bytes = ot::Crypto::LiteralKey::GetBytes(v6);
      Length = ot::Crypto::LiteralKey::GetLength(v6);
      if (mbedtls_md_hmac_starts(v5, Bytes, Length))
      {
        return 1;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 7;
  }

  return v7;
}

uint64_t otPlatCryptoHmacSha256Update(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  if (a1)
  {
    return *(a1 + 8) < 0x18uLL || mbedtls_md_hmac_update(*a1, a2, a3) != 0;
  }

  else
  {
    return 7;
  }
}

uint64_t otPlatCryptoHmacSha256Finish(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 8) < 0x18uLL || mbedtls_md_hmac_finish(*a1) != 0;
  }

  else
  {
    return 7;
  }
}

uint64_t otPlatCryptoHkdfInit(uint64_t a1)
{
  v3 = 0;
  if (a1)
  {
    if (*(a1 + 8) >= 0x20uLL)
    {
      v1 = *a1;
      *v1 = 0u;
      v1[1] = 0u;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 7;
  }

  return v3;
}

uint64_t otPlatCryptoHkdfExpand(uint64_t a1, uint64_t a2, unsigned __int16 a3, char *a4, unsigned __int16 a5)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  v15 = 0;
  ot::Crypto::HmacSha256::HmacSha256(__n_4);
  __n_3 = 0;
  __n = 0;
  v11 = 0;
  if (v20)
  {
    if (*(v20 + 8) >= 0x20uLL)
    {
      v11 = *v20;
      while (v16)
      {
        ot::Crypto::Sha256::Hash::GetBytes(v11);
        ot::Crypto::Key::Set(v10, v5, 32);
        ot::Crypto::HmacSha256::Start(__n_4, v10);
        if (__n_3)
        {
          ot::Crypto::HmacSha256::Update<ot::Crypto::Sha256::Hash>(__n_4, v21);
        }

        ot::Crypto::HmacSha256::Update(__n_4, v19, v18);
        ++__n_3;
        ot::Crypto::HmacSha256::Update<unsigned char>(__n_4, &__n_3);
        ot::Crypto::HmacSha256::Finish(__n_4, v21);
        __n = ot::Min<unsigned short>(v16, 0x20u);
        __dst = v17;
        ot::Crypto::Sha256::Hash::GetBytes(v21);
        memcpy(__dst, v6, __n);
        v17 += __n;
        v16 -= __n;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 7;
  }

  v8 = v15;
  ot::Crypto::HmacSha256::~HmacSha256(__n_4);
  return v8;
}

uint64_t ot::Crypto::Key::Set(uint64_t this, const unsigned __int8 *a2, __int16 a3)
{
  *this = a2;
  *(this + 8) = a3;
  return this;
}

{
  return ot::Crypto::Key::Set(this, a2, a3);
}

void ot::Crypto::Sha256::Hash::GetBytes(ot::Crypto::Sha256::Hash *this)
{
  ;
}

{
  ot::Crypto::Sha256::Hash::GetBytes(this);
}

uint64_t ot::Crypto::HmacSha256::Update<ot::Crypto::Sha256::Hash>(ot::Crypto::HmacSha256 *a1, uint64_t a2)
{
  return ot::Crypto::HmacSha256::Update(a1, a2, 0x20u);
}

{
  return ot::Crypto::HmacSha256::Update<ot::Crypto::Sha256::Hash>(a1, a2);
}

uint64_t ot::Crypto::HmacSha256::Update<unsigned char>(ot::Crypto::HmacSha256 *a1, uint64_t a2)
{
  return ot::Crypto::HmacSha256::Update(a1, a2, 1u);
}

{
  return ot::Crypto::HmacSha256::Update<unsigned char>(a1, a2);
}

uint64_t otPlatCryptoHkdfExtract(uint64_t a1, const unsigned __int8 *a2, __int16 a3, const ot::Crypto::Key *a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = 0;
  ot::Crypto::HmacSha256::HmacSha256(v11);
  v9 = 0;
  ot::Crypto::LiteralKey::LiteralKey(v8, v13);
  if (v16)
  {
    if (*(v16 + 8) >= 0x20uLL)
    {
      v9 = *v16;
      ot::Crypto::Key::Set(v10, v15, v14);
      ot::Crypto::HmacSha256::Start(v11, v10);
      Bytes = ot::Crypto::LiteralKey::GetBytes(v8);
      Length = ot::Crypto::LiteralKey::GetLength(v8);
      ot::Crypto::HmacSha256::Update(v11, Bytes, Length);
      ot::Crypto::HmacSha256::Finish(v11, v9);
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 7;
  }

  v6 = v12;
  ot::Crypto::HmacSha256::~HmacSha256(v11);
  return v6;
}