uint64_t ot::Cli::Interpreter::Process<30907139684939619ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v23 = a1;
  v22 = a2;
  v21 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    MaxAllowedChildren = otThreadGetMaxAllowedChildren(InstancePtr);
    for (i = 0; i < MaxAllowedChildren; ++i)
    {
      v18 = 0;
      v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (!otThreadGetChildInfoByIndex(v3, i, v26) && (v28 & 8) == 0)
      {
        v18 = 0;
        while (1)
        {
          v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
          if (otThreadGetChildNextIp6Address(v4, i, &v18, v17))
          {
            break;
          }

          ot::Cli::Utils::OutputFormat((a1 + 16), "%04x: ", v27);
          ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), v17);
        }
      }
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v22, "max"))
  {
    return ot::Cli::Utils::ProcessGet<unsigned char>((a1 + 16), (v22 + 8), otThreadGetMaxChildIpAddresses);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v22, "extaddr"))
  {
    v16 = 0;
    v15 = 0;
    v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    v14 = otThreadGetMaxAllowedChildren(v5);
    v21 = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(v22 + 1, v25);
    if (!v21)
    {
      for (j = 0; j < v14; ++j)
      {
        v12 = 0;
        v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        if (!otThreadGetChildInfoByIndex(v6, j, v24) && (v24[52] & 8) == 0)
        {
          v16 = 0;
          for (k = 0; k < 8; ++k)
          {
            if (v25[k] == v24[k])
            {
              ++v16;
            }
          }

          if (v16 == 8)
          {
            v15 = 1;
            v12 = 0;
            while (1)
            {
              v7 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
              if (otThreadGetChildNextIp6Address(v7, j, &v12, v11))
              {
                break;
              }

              ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), v11);
            }
          }
        }
      }

      if ((v15 & 1) == 0)
      {
        return 7;
      }
    }
  }

  else
  {
    return 35;
  }

  return v21;
}

uint64_t ot::Cli::Utils::ProcessGet<unsigned char>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t))
{
  v8 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v6 = ot::Cli::Utils::FormatStringFor<unsigned char>();
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    v4 = a3(InstancePtr);
    ot::Cli::Utils::OutputLine(a1, v6, v4);
  }

  else
  {
    return 7;
  }

  return v8;
}

{
  return ot::Cli::Utils::ProcessGet<unsigned char>(a1, a2, a3);
}

uint64_t ot::Cli::Interpreter::Process<8059602322220575993ull>(uint64_t a1, const char **a2)
{
  v7 = 7;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "checktimeout"))
  {
    return ot::Cli::Utils::ProcessGetSet<unsigned short>((a1 + 16), (a2 + 1), otChildSupervisionGetCheckTimeout, otChildSupervisionSetCheckTimeout);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "interval"))
  {
    return ot::Cli::Utils::ProcessGetSet<unsigned short>((a1 + 16), (a2 + 1), otChildSupervisionGetInterval, otChildSupervisionSetInterval);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "failcounter"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 1)))
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      v3 = otChildSupervisionGetCheckFailureCounter(InstancePtr);
      ot::Cli::Utils::OutputLine((a1 + 16), "%u", v3);
      return 0;
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(a2 + 1, "reset"))
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otChildSupervisionResetCheckFailureCounter(v4);
      return 0;
    }
  }

  return v7;
}

uint64_t ot::Cli::Utils::ProcessGetSet<unsigned int>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t), unsigned __int8 *a4)
{
  v6 = ot::Cli::Utils::ProcessGet<unsigned int>(a1, a2, a3);
  if (v6)
  {
    return ot::Cli::Utils::ProcessSet<unsigned int>(a1, a2, a4);
  }

  return v6;
}

{
  v6 = ot::Cli::Utils::ProcessGet<unsigned int>(a1, a2, a3);
  if (v6)
  {
    return ot::Cli::Utils::ProcessSet<unsigned int>(a1, a2, a4);
  }

  return v6;
}

{
  return ot::Cli::Utils::ProcessGetSet<unsigned int>(a1, a2, a3, a4);
}

{
  return ot::Cli::Utils::ProcessGetSet<unsigned int>(a1, a2, a3, a4);
}

uint64_t ot::Cli::Interpreter::Process<1996360929ull>(uint64_t a1, const char **a2)
{
  v17 = a1;
  v16 = a2;
  CoexMetrics = 0;
  if (ot::Cli::Utils::ProcessEnableDisable((a1 + 16), a2, otPlatRadioIsCoexEnabled, otPlatRadioSetCoexEnabled))
  {
    if (ot::Utils::CmdLineParser::Arg::operator==(v16, "metrics"))
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      CoexMetrics = otPlatRadioGetCoexMetrics(InstancePtr, v13);
      if (!CoexMetrics)
      {
        v3 = "true";
        if ((v14 & 1) == 0)
        {
          v3 = "false";
        }

        ot::Cli::Utils::OutputLine((a1 + 16), "Stopped: %s", v3);
        v4 = ot::ToUlong(v13[0]);
        ot::Cli::Utils::OutputLine((a1 + 16), "Grant Glitch: %lu", v4);
        ot::Cli::Utils::OutputLine((a1 + 16), "Transmit metrics");
        for (i = &ot::Cli::Interpreter::Process<1996360929ull>(ot::Utils::CmdLineParser::Arg *)::kTxMetricNames; i != &ot::Cli::Interpreter::Process<1996360929ull>(ot::Utils::CmdLineParser::Arg *)::kRxMetricNames; i += 16)
        {
          v9 = *(i + 1);
          v5 = ot::ToUlong(*(v13 + *i));
          ot::Cli::Utils::OutputLine((a1 + 16), 4, "%s: %lu", v9, v5);
        }

        ot::Cli::Utils::OutputLine((a1 + 16), "Receive metrics");
        for (j = &ot::Cli::Interpreter::Process<1996360929ull>(ot::Utils::CmdLineParser::Arg *)::kRxMetricNames; j != &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kTxCounterNames; j += 16)
        {
          v8 = *(j + 1);
          v6 = ot::ToUlong(*(v13 + *j));
          ot::Cli::Utils::OutputLine((a1 + 16), 4, "%s: %lu", v8, v6);
        }
      }
    }

    else
    {
      return 7;
    }
  }

  return CoexMetrics;
}

uint64_t ot::Cli::Interpreter::Process<8094126837366616329ull>(uint64_t a1, const char **a2)
{
  v33 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    ot::Cli::Utils::OutputLine((a1 + 16), "ip");
    ot::Cli::Utils::OutputLine((a1 + 16), "mac");
    ot::Cli::Utils::OutputLine((a1 + 16), "mle");
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "mac"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 1)))
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      Counters = otLinkGetCounters(InstancePtr);
      v3 = ot::ToUlong(*Counters);
      ot::Cli::Utils::OutputLine((a1 + 16), "TxTotal: %lu", v3);
      for (i = &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kTxCounterNames; i != &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kRxCounterNames; i += 2)
      {
        v21 = i[1];
        v4 = ot::ToUlong(*(Counters + *i));
        ot::Cli::Utils::OutputLine((a1 + 16), 4, "%s: %lu", v21, v4);
      }

      v5 = ot::ToUlong(Counters[24]);
      ot::Cli::Utils::OutputLine((a1 + 16), "RxTotal: %lu", v5);
      for (j = &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kRxCounterNames; j != &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kCounterNames; j += 2)
      {
        v20 = j[1];
        v6 = ot::ToUlong(*(Counters + *j));
        ot::Cli::Utils::OutputLine((a1 + 16), 4, "%s: %lu", v20, v6);
      }

      ot::Cli::Utils::OutputLine((a1 + 16), 4, "RxMinCslError: %ld", Counters[41]);
      if (Counters[43])
      {
        v19 = *(Counters + 22) / Counters[43];
      }

      else
      {
        v19 = 0;
      }

      ot::Cli::Utils::OutputLine((a1 + 16), 4, "RxAvgCslError: %ld", v19);
      ot::Cli::Utils::OutputLine((a1 + 16), 4, "RxMaxCslError: %ld", Counters[42]);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(a2 + 1, "reset") && ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 2)))
    {
      v7 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otLinkResetCounters(v7);
      v8 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otThreadResetMleLinkLossCounters(v8);
    }

    else
    {
      return 7;
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "bbr"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 1)))
    {
      v9 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      BbrCounters = otThreadGetBbrCounters(v9);
      ot::Cli::Utils::OutputLine((a1 + 16), "Primary state count: %d", *BbrCounters);
      ot::Cli::Utils::OutputLine((a1 + 16), "Secondary state count: %d", BbrCounters[2]);
      ot::Cli::Utils::OutputLine((a1 + 16), "Disabled state count: %d", BbrCounters[1]);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(a2 + 1, "reset") && ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 2)))
    {
      v10 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otThreadResetBbrCounters(v10);
    }

    else
    {
      return 7;
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "mle"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 1)))
    {
      v11 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      MleCounters = otThreadGetMleCounters(v11);
      v12 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      MleLinkLossCounters = otThreadGetMleLinkLossCounters(v12);
      for (k = &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kCounterNames; k != &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kTimeCounterNames; k += 2)
      {
        ot::Cli::Utils::OutputLine((a1 + 16), "%s: %u", k[1], *&(*k)[MleCounters]);
      }

      for (m = &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kTimeCounterNames; m != &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kCounterNames; m += 2)
      {
        ot::Cli::Utils::OutputFormat((a1 + 16), "Time %s Milli: ", m[1]);
        ot::Cli::Utils::OutputUint64Line((a1 + 16), *&(*m)[MleCounters]);
      }

      ot::Cli::Utils::OutputFormat((a1 + 16), "Time Tracked Milli: ");
      ot::Cli::Utils::OutputUint64Line((a1 + 16), *(MleCounters + 56));
      ot::Cli::Utils::OutputLine((a1 + 16), "Child Link Loss: %d", *MleLinkLossCounters);
      ot::Cli::Utils::OutputLine((a1 + 16), "Router Link Loss: %d", MleLinkLossCounters[1]);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(a2 + 1, "reset") && ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 2)))
    {
      v13 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otThreadResetMleCounters(v13);
    }

    else
    {
      return 7;
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "ip"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 1)))
    {
      v14 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      Ip6Counters = otThreadGetIp6Counters(v14);
      for (n = &ot::Cli::Interpreter::Process<8094126837366616329ull>(ot::Utils::CmdLineParser::Arg *)::kCounterNames; n != ot::Cli::Interpreter::Process<8020460690342608375ull>(ot::Utils::CmdLineParser::Arg *)::kScanTableTitles; n += 2)
      {
        v18 = n[1];
        v15 = ot::ToUlong(*&(*n)[Ip6Counters]);
        ot::Cli::Utils::OutputLine((a1 + 16), "%s: %lu", v18, v15);
      }
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(a2 + 1, "reset") && ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 2)))
    {
      v16 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otThreadResetIp6Counters(v16);
    }

    else
    {
      return 7;
    }
  }

  else
  {
    return 7;
  }

  return v33;
}

uint64_t ot::Cli::Interpreter::Process<7052124ull>(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    CslChannel = otLinkGetCslChannel(InstancePtr);
    ot::Cli::Utils::OutputLine((a1 + 16), "channel: %u", CslChannel);
    v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    CslPeriod = otLinkGetCslPeriod(v4);
    v6 = ot::ToUlong(CslPeriod);
    ot::Cli::Utils::OutputLine((a1 + 16), "period: %luus", v6);
    v7 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    CslTimeout = otLinkGetCslTimeout(v7);
    v9 = ot::ToUlong(CslTimeout);
    ot::Cli::Utils::OutputLine((a1 + 16), "timeout: %lus", v9);
    v10 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    CslRequestAhead = otLinkGetCslRequestAhead(v10);
    ot::Cli::Utils::OutputLine((a1 + 16), "RequestAhead: %u", CslRequestAhead);
    ot::Cli::Utils::GetInstancePtr((a1 + 16));
    CslUncertainty = otPlatRadioGetCslUncertainty();
    ot::Cli::Utils::OutputLine((a1 + 16), "Uncertainity: %u", CslUncertainty);
    ot::Cli::Utils::GetInstancePtr((a1 + 16));
    CslAccuracy = otPlatRadioGetCslAccuracy();
    ot::Cli::Utils::OutputLine((a1 + 16), "Accuracy: %u", CslAccuracy);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "channel"))
  {
    return ot::Cli::Utils::ProcessSet<unsigned char>((a1 + 16), (a2 + 8), otLinkSetCslChannel);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "period"))
  {
    return ot::Cli::Utils::ProcessSet<unsigned int>((a1 + 16), (a2 + 8), otLinkSetCslPeriod);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "timeout"))
  {
    return ot::Cli::Utils::ProcessSet<unsigned int>((a1 + 16), (a2 + 8), otLinkSetCslTimeout);
  }

  else if (!ot::Utils::CmdLineParser::Arg::operator==(a2, "debug"))
  {
    return 7;
  }

  return v16;
}

uint64_t ot::Cli::Interpreter::Process<7441274ull>(uint64_t a1, const char **a2)
{
  v20 = a1;
  v19 = a2;
  v18 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "attach"))
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v19 + 2)))
    {
      return 7;
    }

    else
    {
      v18 = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(v19 + 1, v21);
      if (!v18)
      {
        v18 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v19 + 2, &v17, v2);
        if (!v18)
        {
          if (ot::Utils::CmdLineParser::Arg::IsEmpty((v19 + 3)))
          {
            InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
            v16 = otThreadWedWakeUpPattern(InstancePtr);
            ot::Cli::Utils::OutputLine((a1 + 16), "Set wakeupPattern as %d", v16);
          }

          else
          {
            v18 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v19 + 3, &v16, v3);
            if (v18)
            {
              return v18;
            }
          }

          v18 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v19 + 4, &v15, v5);
          if (!v18)
          {
            v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
            return otThreadAttachCslPeripheral(v6, v21, v17, v16, 3, v15);
          }
        }
      }
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v19, "configure"))
  {
    v14 = 11;
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v19 + 1)) || (v18 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v19 + 1, &v14, v7)) == 0)
    {
      v8 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otThreadConfigureWOR(v8, 0xEA60u, v14);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v19, "detach"))
  {
    v9 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadDetachEnhCslPeer(v9);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v19, "state"))
  {
    v10 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    if (otThreadIsEnhCslPeerLinked(v10))
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "linked");
    }

    else
    {
      v11 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otThreadIsEnhCslPeerLinking(v11))
      {
        ot::Cli::Utils::OutputLine((a1 + 16), "linking");
      }

      else
      {
        ot::Cli::Utils::OutputLine((a1 + 16), "disabled");
      }
    }
  }

  else
  {
    return 7;
  }

  return v18;
}

uint64_t ot::Cli::Interpreter::Process<7419947443224800644ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    Channel = otLinkWorGetChannel(InstancePtr);
    ot::Cli::Utils::OutputLine((a1 + 16), "%u", Channel);
  }

  else
  {
    return ot::Cli::Utils::ProcessSet<unsigned char>((a1 + 16), a2, otLinkWorSetChannel);
  }

  return v6;
}

uint64_t ot::Cli::Interpreter::Process<5345021259271145584ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v12 = a1;
  v11 = a2;
  v10 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    DelayTimerMinimal = otDatasetGetDelayTimerMinimal(InstancePtr);
    v4 = ot::ToUlong(DelayTimerMinimal / 0x3E8);
    ot::Cli::Utils::OutputLine((a1 + 16), "%lu", v4);
  }

  else if (ot::Utils::CmdLineParser::Arg::IsEmpty((v11 + 1)))
  {
    v9 = 0;
    v10 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v11, &v9, v5);
    if (!v10)
    {
      v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otDatasetSetDelayTimerMinimal(v6, 1000 * v9);
    }
  }

  else
  {
    return 7;
  }

  return v10;
}

uint64_t ot::Cli::Interpreter::Process<112553419349005ull>(uint64_t a1, const char **a2)
{
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "async"))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadDetachGracefully(InstancePtr, 0, 0);
  }

  else
  {
    v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    v6 = otThreadDetachGracefully(v3, ot::Cli::Interpreter::HandleDetachGracefullyResult, a1);
    if (!v6)
    {
      return 36;
    }
  }

  return v6;
}

uint64_t ot::Cli::Interpreter::Process<8020460690342608375ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  v12 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "reqcallback"))
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v13 = ot::Cli::Utils::ParseEnableOrDisable(v14 + 1, &v11, v2);
    if (!v13)
    {
      if (v11)
      {
        v10 = ot::Cli::Interpreter::HandleDiscoveryRequest;
        v9 = a1;
      }

      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otThreadSetDiscoveryRequestCallback(InstancePtr, v10, v9);
    }
  }

  else
  {
    if (!ot::Utils::CmdLineParser::Arg::IsEmpty(v14))
    {
      v8 = 0;
      v13 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v14, &v8, v4);
      if (v13)
      {
        return v13;
      }

      if (v8 >= 0x20uLL)
      {
        return 7;
      }

      v12 = 1 << v8;
    }

    v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    v13 = otThreadDiscover(v5, v12, 0xFFFFu, 0, 0, ot::Cli::Interpreter::HandleActiveScanResult, a1);
    if (!v13)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)7>((a1 + 16), ot::Cli::Interpreter::Process<8020460690342608375ull>(ot::Utils::CmdLineParser::Arg *)::kScanTableTitles, ot::Cli::Interpreter::Process<8020460690342608375ull>(ot::Utils::CmdLineParser::Arg *)::kScanTableColumnWidths);
      return 36;
    }
  }

  return v13;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)7>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 7u, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)7>(a1, a2, a3);
}

uint64_t ot::Cli::Interpreter::OutputEidCacheEntry(uint64_t a1, uint64_t a2)
{
  ot::Cli::Utils::OutputIp6Address((a1 + 16), a2);
  ot::Cli::Utils::OutputFormat((a1 + 16), " %04x", *(a2 + 16));
  v2 = ot::Cli::Utils::Stringify<otCacheEntryState,(unsigned short)4>(*(a2 + 20), ot::Cli::Interpreter::OutputEidCacheEntry(otCacheEntryInfo const&)::kStateStrings, "unknown");
  ot::Cli::Utils::OutputFormat((a1 + 16), " %s", v2);
  ot::Cli::Utils::OutputFormat((a1 + 16), " canEvict=%d", *(a2 + 24) & 1);
  if (*(a2 + 20))
  {
    ot::Cli::Utils::OutputFormat((a1 + 16), " timeout=%u", *(a2 + 48));
  }

  else if ((*(a2 + 24) & 4) != 0)
  {
    v3 = ot::ToUlong(*(a2 + 28));
    ot::Cli::Utils::OutputFormat((a1 + 16), " transTime=%lu eid=", v3);
    ot::Cli::Utils::OutputIp6Address((a1 + 16), a2 + 32);
  }

  if (*(a2 + 20) == 3)
  {
    ot::Cli::Utils::OutputFormat((a1 + 16), " retryDelay=%u rampDown=%d", *(a2 + 50), (*(a2 + 24) & 2) != 0);
  }

  return ot::Cli::Utils::OutputNewLine((a1 + 16));
}

uint64_t ot::Cli::Utils::Stringify<otCacheEntryState,(unsigned short)4>(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 4u)
  {
    return a3;
  }

  else
  {
    return *(a2 + 8 * a1);
  }
}

{
  return ot::Cli::Utils::Stringify<otCacheEntryState,(unsigned short)4>(a1, a2, a3);
}

uint64_t ot::Cli::Interpreter::Process<7109832251570096126ull>(uint64_t a1, const char **a2)
{
  v10 = a1;
  v9 = a2;
  ot::Cli::Utils::ClearAllBytes<otCacheEntryIterator>(v8);
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(v9))
  {
    while (1)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otThreadGetNextCacheEntry(InstancePtr, v7, v8))
      {
        break;
      }

      ot::Cli::Interpreter::OutputEidCacheEntry(a1, v7);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v9, "clear"))
  {
    v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otThreadClearEidCache(v3);
  }

  else
  {
    return 7;
  }

  return v6;
}

void *ot::Cli::Utils::ClearAllBytes<otCacheEntryIterator>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  return ot::Cli::Utils::ClearAllBytes<otCacheEntryIterator>(result);
}

uint64_t ot::Cli::Interpreter::Process<220771284311ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v5 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otLinkGetFactoryAssignedIeeeEui64(InstancePtr, v6);
    ot::Cli::Utils::OutputExtAddressLine((a1 + 16), v6);
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t ot::Cli::Interpreter::Process<31451632477498226ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    ExtendedAddress = otLinkGetExtendedAddress(InstancePtr);
    ot::Cli::Utils::OutputExtAddressLine((a1 + 16), ExtendedAddress);
  }

  else
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(a2, v9);
    if (!v7)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otLinkSetExtendedAddress(v4, v9);
    }
  }

  return v7;
}

uint64_t ot::Cli::Interpreter::Process<6725988ull>(uint64_t a1, const char **a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "level"))
  {
    IsEmpty = ot::Utils::CmdLineParser::Arg::IsEmpty((v9 + 1));
    if (IsEmpty)
    {
      Level = otLoggingGetLevel(IsEmpty);
      ot::Cli::Utils::OutputLine((a1 + 16), "%d", Level);
    }

    else
    {
      v7 = 0;
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v9 + 2)))
      {
        v8 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v9 + 1, &v7, v4);
        if (!v8)
        {
          return otLoggingSetLevel(v7);
        }
      }

      else
      {
        return 7;
      }
    }
  }

  else
  {
    return 7;
  }

  return v8;
}

uint64_t ot::Cli::Interpreter::Process<7040008844819482601ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otThreadGetExtendedPanId(InstancePtr);
    ot::Cli::Utils::OutputBytesLine<(unsigned char)8>((a1 + 16), v3);
  }

  else
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(a2, v9);
    if (!v7)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otThreadSetExtendedPanId(v4, v9);
    }
  }

  return v7;
}

uint64_t ot::Cli::Interpreter::Process<13321296782721747327ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v11 = a1;
  v10 = a2;
  NeighborEnhAckSolicitationEnabled = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    NeighborEnhAckSolicitationEnabled = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(v10, v12);
    if (!NeighborEnhAckSolicitationEnabled)
    {
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 8)))
      {
        v8 = 0;
        InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        NeighborEnhAckSolicitationEnabled = otThreadGetNeighborEnhAckSolicitationEnabled(InstancePtr, v12, &v8);
        if (!NeighborEnhAckSolicitationEnabled)
        {
          ot::Cli::Utils::OutputLine((a1 + 16), "%d", v8 & 1);
        }
      }

      else
      {
        v7 = 0;
        NeighborEnhAckSolicitationEnabled = ot::Utils::CmdLineParser::Arg::ParseAsBool(v10 + 1, &v7, v2);
        if (!NeighborEnhAckSolicitationEnabled)
        {
          v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
          return otThreadSetNeighborEnhAckSolicitationEnabled(v4, v12, v7);
        }
      }
    }
  }

  return NeighborEnhAckSolicitationEnabled;
}

uint64_t ot::Cli::Interpreter::Process<7113582ull>(uint64_t a1, const char **a2)
{
  v13 = a1;
  v12 = a2;
  FemLnaGain = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v10 = 0;
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    FemLnaGain = otPlatRadioGetFemLnaGain(InstancePtr, &v10);
    if (!FemLnaGain)
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "LNA gain %d dBm", v10);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v12, "lnagain"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v12 + 1)))
    {
      v9 = 0;
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      FemLnaGain = otPlatRadioGetFemLnaGain(v4, &v9);
      if (!FemLnaGain)
      {
        ot::Cli::Utils::OutputLine((a1 + 16), "%d", v9);
      }
    }

    else
    {
      v8 = 0;
      FemLnaGain = ot::Utils::CmdLineParser::Arg::ParseAsInt8(v12 + 1, &v8, v3);
      if (!FemLnaGain)
      {
        v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        return otPlatRadioSetFemLnaGain(v5, v8);
      }
    }
  }

  else
  {
    return 7;
  }

  return FemLnaGain;
}

uint64_t ot::Cli::Interpreter::Process<7250330901759102465ull>(uint64_t a1, const char **a2)
{
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    if (otIp6IsEnabled(InstancePtr))
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "up");
    }

    else
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "down");
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "up"))
  {
    v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otIp6SetEnabled(v3, 1);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "down"))
  {
    v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otIp6SetEnabled(v4, 0);
  }

  else
  {
    return 7;
  }

  return v7;
}

uint64_t ot::Cli::Interpreter::Process<1543756974943056624ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v7 = 7;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    Id = otInstanceGetId(InstancePtr);
    v4 = ot::ToUlong(Id);
    ot::Cli::Utils::OutputLine((a1 + 16), "%lu", v4);
    return 0;
  }

  return v7;
}

uint64_t ot::Cli::Interpreter::Process<123339735204840ull>(uint64_t a1, const char **a2)
{
  v22 = a1;
  v21 = a2;
  v20 = 0;
  v19 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "-v"))
  {
    ++v21;
    v19 = 1;
  }

  if (ot::Utils::CmdLineParser::Arg::IsEmpty(v21))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    UnicastAddresses = otIp6GetUnicastAddresses(InstancePtr);
    for (i = UnicastAddresses; i; i = *(i + 24))
    {
      ot::Cli::Utils::OutputIp6Address((a1 + 16), i);
      if (v19)
      {
        v3 = ot::Cli::Utils::AddressOriginToString(*(i + 17));
        ot::Cli::Utils::OutputFormat((a1 + 16), " origin:%s plen:%u preferred:%u valid:%u", v3, *(i + 16), *(i + 18) & 1, (*(i + 18) & 2) != 0);
      }

      ot::Cli::Utils::OutputNewLine((a1 + 16));
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "add"))
  {
    v20 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(v21 + 1, v15);
    if (!v20)
    {
      v15[16] = 64;
      v16 = v16 & 0xFFFE | 1;
      v16 = v16 & 0xFFFD | 2;
      v15[17] = 3;
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otIp6AddUnicastAddress(v4, v15);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "del"))
  {
    v20 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(v21 + 1, v14);
    if (!v20)
    {
      v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otIp6RemoveUnicastAddress(v5, v14);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "linklocal"))
  {
    v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    LinkLocalIp6Address = otThreadGetLinkLocalIp6Address(v6);
    ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), LinkLocalIp6Address);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "rloc"))
  {
    v8 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    Rloc = otThreadGetRloc(v8);
    ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), Rloc);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "mleid"))
  {
    v10 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    MeshLocalEid = otThreadGetMeshLocalEid(v10);
    ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), MeshLocalEid);
  }

  else
  {
    return 35;
  }

  return v20;
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(const char **a1, uint64_t a2)
{
  return ot::Utils::CmdLineParser::ParseAsIp6Address(*a1, a2);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(a1, a2);
}

uint64_t ot::Cli::Interpreter::Process<31451632477041015ull>(uint64_t a1, const char **a2)
{
  v16 = a1;
  v15 = a2;
  v14 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    for (i = otIp6GetMulticastAddresses(InstancePtr); i; i = *(i + 16))
    {
      ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), i);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v15, "add"))
  {
    v14 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(++v15, v12);
    if (!v14)
    {
      v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otIp6SubscribeMulticastAddress(v3, v12);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v15, "del"))
  {
    v14 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(v15 + 1, v11);
    if (!v14)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otIp6UnsubscribeMulticastAddress(v4, v11);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v15, "llatn"))
  {
    v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    LinkLocalAllThreadNodesMulticastAddress = otThreadGetLinkLocalAllThreadNodesMulticastAddress(v5);
    ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), LinkLocalAllThreadNodesMulticastAddress);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v15, "rlatn"))
  {
    v7 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    RealmLocalAllThreadNodesMulticastAddress = otThreadGetRealmLocalAllThreadNodesMulticastAddress(v7);
    ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), RealmLocalAllThreadNodesMulticastAddress);
  }

  else
  {
    return 35;
  }

  return v14;
}

uint64_t ot::Cli::Interpreter::Process<14182804244553304960ull>(uint64_t a1, const char **a2)
{
  v4 = 7;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "counter"))
  {
    return ot::Cli::Utils::ProcessGetSet<unsigned int>((a1 + 16), (a2 + 1), otThreadGetKeySequenceCounter, otThreadSetKeySequenceCounter);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "guardtime"))
  {
    return ot::Cli::Utils::ProcessGetSet<unsigned short>((a1 + 16), (a2 + 1), otThreadGetKeySwitchGuardTime, otThreadSetKeySwitchGuardTime);
  }

  return v4;
}

uint64_t ot::Cli::Interpreter::Process<5743589040336375053ull>(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v8 = a2;
  LeaderData = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
  LeaderData = otThreadGetLeaderData(InstancePtr, &v6);
  if (!LeaderData)
  {
    v3 = ot::ToUlong(v6);
    ot::Cli::Utils::OutputLine((a1 + 16), "Partition ID: %lu", v3);
    ot::Cli::Utils::OutputLine((a1 + 16), "Weighting: %u", BYTE4(v6));
    ot::Cli::Utils::OutputLine((a1 + 16), "Data Version: %u", BYTE5(v6));
    ot::Cli::Utils::OutputLine((a1 + 16), "Stable Data Version: %u", BYTE6(v6));
    ot::Cli::Utils::OutputLine((a1 + 16), "Leader Router ID: %u", HIBYTE(v6));
  }

  return LeaderData;
}

uint64_t ot::Cli::Interpreter::Process<1998604769390126437ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v7 = 35;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    PartitionId = otThreadGetPartitionId(InstancePtr);
    v4 = ot::ToUlong(PartitionId);
    ot::Cli::Utils::OutputLine((a1 + 16), "%lu", v4);
    return 0;
  }

  return v7;
}

uint64_t ot::Cli::Interpreter::Process<9463712713382948648ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    Mode = otPowerControlGetMode(InstancePtr);
    ot::Cli::Utils::OutputLine((a1 + 16), "Mode: %u", Mode);
  }

  else
  {
    v8 = 0;
    v9 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v10, &v8, v2);
    if (!v9)
    {
      v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otPowerControlSetMode(v5, v8);
    }
  }

  return v9;
}

uint64_t ot::Cli::Interpreter::Process<1648543237ull>(uint64_t a1, uint64_t a2)
{
  Pskc = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otThreadGetPskc(InstancePtr, v14);
    ot::Cli::Utils::OutputBytesLine<(unsigned char)16>((a1 + 16), v14);
    return Pskc;
  }

  if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 8)))
  {
    Pskc = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)16>(a2, v14);
    if (Pskc)
    {
      return Pskc;
    }

LABEL_10:
    v7 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadSetPskc(v7, v14);
  }

  if (!ot::Utils::CmdLineParser::Arg::operator==(a2, "-p"))
  {
    return 7;
  }

  CString = ot::Utils::CmdLineParser::Arg::GetCString((a2 + 8));
  v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
  otThreadGetNetworkName(v3);
  v9 = v4;
  v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
  otThreadGetExtendedPanId(v5);
  Pskc = otDatasetGeneratePskc(CString, v9, v6, v14);
  if (!Pskc)
  {
    goto LABEL_10;
  }

  return Pskc;
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)16>(ot::Utils::CmdLineParser **a1, char *a2)
{
  return ot::Utils::CmdLineParser::Arg::ParseAsHexString(a1, a2, 0x10u);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)16>(a1, a2);
}

uint64_t ot::Utils::CmdLineParser::Arg::GetCString(ot::Utils::CmdLineParser::Arg *this)
{
  return *this;
}

{
  return *this;
}

{
  return ot::Utils::CmdLineParser::Arg::GetCString(this);
}

{
  return ot::Utils::CmdLineParser::Arg::GetCString(this);
}

uint64_t ot::Cli::Interpreter::Process<7440499ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v12 = a1;
  v11 = a2;
  v10 = 35;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "reg"))
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v11 = (v11 + 8);
    do
    {
      if (ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(v11, &v13[v7]))
      {
        break;
      }

      v11 = (v11 + 8);
      ++v7;
    }

    while (v7 != 15);
    if (!ot::Utils::CmdLineParser::Arg::ParseAsUint32(v11, &v9, v2))
    {
      v11 = (v11 + 8);
      v8 = 1;
    }

    if (ot::Utils::CmdLineParser::Arg::IsEmpty(v11) && v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (v8)
      {
        v3 = otIp6RegisterMulticastListeners(InstancePtr, v13, v7, &v9, ot::Cli::Interpreter::HandleMlrRegResult, a1);
      }

      else
      {
        v3 = otIp6RegisterMulticastListeners(InstancePtr, v13, v7, 0, ot::Cli::Interpreter::HandleMlrRegResult, a1);
      }

      v10 = v3;
      if (!v3)
      {
        return 36;
      }
    }

    else
    {
      return 7;
    }
  }

  return v10;
}

void ot::Cli::Interpreter::HandleMlrRegResult(_BYTE *a1, int a2, unsigned __int8 a3, uint64_t a4, unsigned __int8 a5)
{
  ot::Cli::Interpreter::HandleMlrRegResult(a1, a2, a3, a4, a5);
}

{
  if (!a2)
  {
    ot::Cli::Utils::OutputLine((a1 + 16), "status %d, %d failed", a3, a5);
    for (i = 0; i < a5; ++i)
    {
      ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), a4 + 16 * i);
    }
  }

  ot::Cli::Interpreter::OutputResult(a1, a2);
}

uint64_t ot::Cli::Interpreter::Process<1681249789ull>(uint64_t a1, const char **a2)
{
  v14 = a1;
  v13 = a2;
  v12 = 0;
  ot::Cli::Utils::ClearAllBytes<otLinkModeConfig>(&v11);
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(v13))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    LinkMode = otThreadGetLinkMode(InstancePtr);
    v3 = ot::Cli::Utils::LinkModeToString(&LinkMode, v10);
    ot::Cli::Utils::OutputLine((a1 + 16), "%s", v3);
  }

  else
  {
    if (ot::Utils::CmdLineParser::Arg::operator!=(v13, "-"))
    {
      for (i = ot::Utils::CmdLineParser::Arg::GetCString(v13); *i; ++i)
      {
        v6 = *i;
        switch(v6)
        {
          case 'd':
            v11 = v11 & 0xFD | 2;
            break;
          case 'n':
            v11 = v11 & 0xFB | 4;
            break;
          case 'r':
            v11 = v11 & 0xFE | 1;
            break;
          default:
            return 7;
        }
      }
    }

    v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadSetLinkMode(v4, v11);
  }

  return v12;
}

_BYTE *ot::Cli::Utils::ClearAllBytes<otLinkModeConfig>(_BYTE *result)
{
  *result = 0;
  return result;
}

{
  return ot::Cli::Utils::ClearAllBytes<otLinkModeConfig>(result);
}

uint64_t ot::Cli::Interpreter::Process<11302599500980265950ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v4 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    ot::Cli::Utils::OutputFormat((a1 + 16), "[");
    ot::Cli::Utils::OutputFormat((a1 + 16), "15.4");
    ot::Cli::Utils::OutputLine((a1 + 16), "]");
  }

  else
  {
    return 35;
  }

  return v4;
}

uint64_t ot::Cli::Interpreter::Process<8023188516701246990ull>(uint64_t a1, const char **a2)
{
  v22 = a1;
  v21 = a2;
  v20 = 0;
  v18 = 0;
  v19 = ot::Utils::CmdLineParser::Arg::operator==(a2, "table");
  if (v19 || ot::Utils::CmdLineParser::Arg::operator==(v21, "list"))
  {
    if (v19)
    {
      ot::Cli::Utils::OutputNewLine((a1 + 16));
      ot::Cli::Utils::OutputTableHeader<(unsigned char)16>((a1 + 16), ot::Cli::Interpreter::Process<8023188516701246990ull>(ot::Utils::CmdLineParser::Arg *)::kNeighborTableTitles, ot::Cli::Interpreter::Process<8023188516701246990ull>(ot::Utils::CmdLineParser::Arg *)::kNeighborTableColumnWidths);
    }

    while (1)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otThreadGetNextNeighborInfo(InstancePtr, &v18, v24))
      {
        break;
      }

      if (v19)
      {
        if ((v37 & 8) != 0)
        {
          v3 = 67;
        }

        else
        {
          v3 = 82;
        }

        ot::Cli::Utils::OutputFormat((a1 + 16), "| %3c  ", v3);
        ot::Cli::Utils::OutputFormat((a1 + 16), "| 0x%04x ", v27);
        v4 = ot::ToUlong(v25);
        ot::Cli::Utils::OutputFormat((a1 + 16), "| %3lu ", v4);
        ot::Cli::Utils::OutputFormat((a1 + 16), "| %8d ", v32);
        ot::Cli::Utils::OutputFormat((a1 + 16), "| %9d ", v33);
        ot::Cli::Utils::OutputFormat((a1 + 16), "|%1d", v37 & 1);
        ot::Cli::Utils::OutputFormat((a1 + 16), "|%1d", (v37 & 2) != 0);
        ot::Cli::Utils::OutputFormat((a1 + 16), "|%1d", (v37 & 4) != 0);
        ot::Cli::Utils::OutputFormat((a1 + 16), "|%3d", v28);
        ot::Cli::Utils::OutputFormat((a1 + 16), "| ");
        ot::Cli::Utils::OutputExtAddress((a1 + 16), v24);
        ot::Cli::Utils::OutputFormat((a1 + 16), " |%3d|", v36);
        v5 = (a1 + 16);
        if ((v37 & 8) != 0)
        {
          ot::Cli::Utils::OutputFormat(v5, "         NA |");
        }

        else
        {
          ot::Cli::Utils::OutputFormat(v5, "    %7d |");
        }

        v6 = (a1 + 16);
        if ((v37 & 8) != 0)
        {
          ot::Cli::Utils::OutputFormat(v6, "          NA |");
        }

        else
        {
          ot::Cli::Utils::OutputFormat(v6, "     %7d |");
        }

        v7 = (a1 + 16);
        if ((v37 & 8) != 0)
        {
          ot::Cli::Utils::OutputFormat(v7, "          NA |", v29);
        }

        else
        {
          ot::Cli::Utils::OutputFormat(v7, "     %7d |", v29);
        }

        ot::Cli::Utils::OutputFormat((a1 + 16), " %d.%02d%%", v31 / 0x64, v31 % 0x64);
        ot::Cli::Utils::OutputLine((a1 + 16), "| %d.%02d%%", v30 / 0x64, v30 % 0x64);
      }

      else
      {
        ot::Cli::Utils::OutputFormat((a1 + 16), "0x%04x ", v27);
      }
    }

    ot::Cli::Utils::OutputNewLine((a1 + 16));
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "linkquality"))
  {
    ot::Cli::Utils::OutputTableHeader<(unsigned char)7>((a1 + 16), ot::Cli::Interpreter::Process<8023188516701246990ull>(ot::Utils::CmdLineParser::Arg *)::kLinkQualityTableTitles, ot::Cli::Interpreter::Process<8023188516701246990ull>(ot::Utils::CmdLineParser::Arg *)::kLinkQualityTableColumnWidths);
    while (1)
    {
      v8 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otThreadGetNextNeighborInfo(v8, &v18, v24))
      {
        break;
      }

      ot::Cli::Utils::OutputFormat((a1 + 16), "| 0x%04x | ", v27);
      ot::Cli::Utils::OutputExtAddress((a1 + 16), v24);
      v9 = ot::Cli::Utils::PercentageToString(v34, v17);
      ot::Cli::Utils::OutputFormat((a1 + 16), " | %9s %% ", v9);
      v10 = ot::Cli::Utils::PercentageToString(v35, v17);
      ot::Cli::Utils::OutputFormat((a1 + 16), "| %7s %% ", v10);
      ot::Cli::Utils::OutputFormat((a1 + 16), "| %7d ", v32);
      ot::Cli::Utils::OutputFormat((a1 + 16), "| %8d ", v33);
      v11 = ot::ToUlong(v25);
      ot::Cli::Utils::OutputLine((a1 + 16), "| %5lu |", v11);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "conntime"))
  {
    if (ot::Utils::CmdLineParser::Arg::operator==(v21 + 1, "list"))
    {
      v19 = 0;
    }

    else
    {
      v19 = 1;
      ot::Cli::Utils::OutputTableHeader<(unsigned char)4>((a1 + 16), ot::Cli::Interpreter::Process<8023188516701246990ull>(ot::Utils::CmdLineParser::Arg *)::kConnTimeTableTitles, ot::Cli::Interpreter::Process<8023188516701246990ull>(ot::Utils::CmdLineParser::Arg *)::kConnTimeTableColumnWidths);
    }

    while (1)
    {
      v12 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otThreadGetNextNeighborInfo(v12, &v18, v24))
      {
        break;
      }

      if (v19)
      {
        ot::Cli::Utils::OutputFormat((a1 + 16), "| 0x%04x | ", v27);
        ot::Cli::Utils::OutputExtAddress((a1 + 16), v24);
        otConvertDurationInSecondsToString(v25, v23, 21);
        ot::Cli::Utils::OutputFormat((a1 + 16), " | %16s", v23);
        otConvertDurationInSecondsToString(v26, v23, 21);
        ot::Cli::Utils::OutputLine((a1 + 16), " | %16s |", v23);
      }

      else
      {
        ot::Cli::Utils::OutputFormat((a1 + 16), "0x%04x ", v27);
        ot::Cli::Utils::OutputExtAddress((a1 + 16), v24);
        v15 = ot::ToUlong(v25);
        v13 = ot::ToUlong(v26);
        ot::Cli::Utils::OutputLine((a1 + 16), " age:%lu conn-time:%lu", v15, v13);
      }
    }
  }

  else
  {
    return 7;
  }

  return v20;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)16>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 0x10u, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)16>(a1, a2, a3);
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)4>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 4u, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)4>(a1, a2, a3);
}

uint64_t ot::Cli::Interpreter::Process<31998349810021265ull>(uint64_t a1)
{
  ot::Cli::Utils::OutputTableHeader<(unsigned char)2>((a1 + 16), ot::Cli::Interpreter::Process<31998349810021265ull>(ot::Utils::CmdLineParser::Arg *)::kNetstatTableTitles, ot::Cli::Interpreter::Process<31998349810021265ull>(ot::Utils::CmdLineParser::Arg *)::kNetstatTableColumnWidths);
  InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
  for (i = otUdpGetSockets(InstancePtr); i; i = *(i + 64))
  {
    otIp6SockAddrToString(i, v5, 48);
    ot::Cli::Utils::OutputFormat((a1 + 16), "| %-47s ", v5);
    otIp6SockAddrToString(i + 18, v5, 48);
    ot::Cli::Utils::OutputLine((a1 + 16), "| %-47s |", v5);
  }

  return 0;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)2>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 2u, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)2>(a1, a2, a3);
}

uint64_t ot::Cli::Interpreter::Process<27876329803337845ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v14 = a1;
  v13 = a2;
  v12 = 35;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v11 = 0;
    while (1)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otServerGetNextService(InstancePtr, &v11, v15))
      {
        break;
      }

      ot::Cli::NetworkData::OutputService((a1 + 112), v15);
    }

    return 0;
  }

  else
  {
    v10 = 0;
    v12 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v13 + 1, &v17, v2);
    if (!v12)
    {
      v10 = 252;
      v12 = ot::Utils::CmdLineParser::Arg::ParseAsHexString(v13 + 2, &v10, v19, v4);
      if (!v12)
      {
        if (v10)
        {
          v18 = v10;
          if (ot::Utils::CmdLineParser::Arg::operator==(v13, "add"))
          {
            if (ot::Utils::CmdLineParser::Arg::IsEmpty((v13 + 24)))
            {
              v21 = 0;
            }

            else
            {
              v10 = 248;
              v12 = ot::Utils::CmdLineParser::Arg::ParseAsHexString(v13 + 3, &v10, v22, v5);
              if (v12)
              {
                return v12;
              }

              if (!v10)
              {
                return 7;
              }

              v21 = v10;
            }

            v20 = v20 & 0xFE | 1;
            v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
            return otServerAddService(v6, v16);
          }

          if (ot::Utils::CmdLineParser::Arg::operator==(v13, "remove"))
          {
            v7 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
            return otServerRemoveService(v7, v17, v19, v18);
          }
        }

        else
        {
          return 7;
        }
      }
    }
  }

  return v12;
}

uint64_t ot::Cli::Interpreter::Process<2882870027264844783ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otThreadGetNetworkKey(InstancePtr, v9);
    ot::Cli::Utils::OutputBytesLine<(unsigned char)16>((a1 + 16), v9);
  }

  else
  {
    v6 = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)16>(a2, v8);
    if (!v6)
    {
      v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otThreadSetNetworkKey(v3, v8);
    }
  }

  return v6;
}

uint64_t ot::Cli::Interpreter::Process<30913625955023990ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v16 = a1;
  v15 = a2;
  v14 = 10;
  v13 = -2;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    ot::Cli::Utils::OutputTableHeader<(unsigned char)3>((a1 + 16), ot::Cli::Interpreter::Process<30913625955023990ull>(ot::Utils::CmdLineParser::Arg *)::kNextHopTableTitles, ot::Cli::Interpreter::Process<30913625955023990ull>(ot::Utils::CmdLineParser::Arg *)::kNextHopTableColumnWidths);
    for (i = 0; i <= 0x3Eu; ++i)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otThreadIsRouterIdAllocated(InstancePtr, i))
      {
        v11 = i << 10;
        v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        otThreadGetNextHopAndPathCost(v4, v11, &v10, &v9);
        ot::Cli::Utils::OutputFormat((a1 + 16), "| %4u | ", i);
        if (v10 == 65534)
        {
          ot::Cli::Utils::OutputLine((a1 + 16), "%4s | %4s |", "-", "-");
        }

        else
        {
          ot::Cli::Utils::OutputLine((a1 + 16), "%4u | %4u |", v10 >> 10, v9);
        }
      }
    }
  }

  else
  {
    v12 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v15, &v11, v2);
    if (!v12)
    {
      v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otThreadGetNextHopAndPathCost(v5, v11, &v10, &v9);
      ot::Cli::Utils::OutputLine((a1 + 16), "0x%04x cost:%u", v10, v9);
    }
  }

  return v12;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)3>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 3u, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)3>(a1, a2, a3);
}

uint64_t ot::Cli::Interpreter::Process<7248134557998169864ull>(uint64_t a1, const char **a2)
{
  v26 = a1;
  v25 = a2;
  ChildTable = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "topology"))
  {
    v23 &= 0xFCu;
    for (++v25; !ot::Utils::CmdLineParser::Arg::IsEmpty(v25); ++v25)
    {
      if (ot::Utils::CmdLineParser::Arg::operator==(v25, "ip6-addrs"))
      {
        v23 = v23 & 0xFE | 1;
      }

      else
      {
        if (!ot::Utils::CmdLineParser::Arg::operator==(v25, "children"))
        {
          return 7;
        }

        v23 = v23 & 0xFD | 2;
      }
    }

    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    ChildTable = otMeshDiagDiscoverTopology(InstancePtr, &v23, ot::Cli::Interpreter::HandleMeshDiagDiscoverDone, a1);
    if (!ChildTable)
    {
      return 36;
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v25, "childtable"))
  {
    v22 = 0;
    ChildTable = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v25 + 1, &v22, v3);
    if (!ChildTable)
    {
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v25 + 2)))
      {
        v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        ChildTable = otMeshDiagQueryChildTable(v4, v22, ot::Cli::Interpreter::HandleMeshDiagQueryChildTableResult, a1);
        if (!ChildTable)
        {
          return 36;
        }
      }

      else
      {
        return 7;
      }
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v25, "childip6"))
  {
    v21 = 0;
    ChildTable = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v25 + 1, &v21, v5);
    if (!ChildTable)
    {
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v25 + 2)))
      {
        v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        ChildTable = otMeshDiagQueryChildrenIp6Addrs(v6, v21, ot::Cli::Interpreter::HandleMeshDiagQueryChildIp6Addrs, a1);
        if (!ChildTable)
        {
          return 36;
        }
      }

      else
      {
        return 7;
      }
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v25, "routerneighbortable"))
  {
    v20 = 0;
    ChildTable = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v25 + 1, &v20, v7);
    if (!ChildTable)
    {
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v25 + 2)))
      {
        v8 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        ChildTable = otMeshDiagQueryRouterNeighborTable(v8, v20, ot::Cli::Interpreter::HandleMeshDiagQueryRouterNeighborTableResult, a1);
        if (!ChildTable)
        {
          return 36;
        }
      }

      else
      {
        return 7;
      }
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v25, "childtable"))
  {
    v19 = 0;
    ChildTable = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v25 + 1, &v19, v9);
    if (!ChildTable)
    {
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v25 + 2)))
      {
        v10 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        ChildTable = otMeshDiagQueryChildTable(v10, v19, ot::Cli::Interpreter::HandleMeshDiagQueryChildTableResult, a1);
        if (!ChildTable)
        {
          return 36;
        }
      }

      else
      {
        return 7;
      }
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v25, "childip6"))
  {
    v18 = 0;
    ChildTable = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v25 + 1, &v18, v11);
    if (!ChildTable)
    {
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v25 + 2)))
      {
        v12 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        ChildTable = otMeshDiagQueryChildrenIp6Addrs(v12, v18, ot::Cli::Interpreter::HandleMeshDiagQueryChildIp6Addrs, a1);
        if (!ChildTable)
        {
          return 36;
        }
      }

      else
      {
        return 7;
      }
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v25, "routerneighbortable"))
  {
    v17 = 0;
    ChildTable = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v25 + 1, &v17, v13);
    if (!ChildTable)
    {
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v25 + 2)))
      {
        v14 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        ChildTable = otMeshDiagQueryRouterNeighborTable(v14, v17, ot::Cli::Interpreter::HandleMeshDiagQueryRouterNeighborTableResult, a1);
        if (!ChildTable)
        {
          return 36;
        }
      }

      else
      {
        return 7;
      }
    }
  }

  else
  {
    return 35;
  }

  return ChildTable;
}

void ot::Cli::Interpreter::HandleMeshDiagDiscoverDone(_BYTE *a1, int a2, const unsigned __int8 *a3)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  if (a3)
  {
    ot::Cli::Utils::OutputFormat((a1 + 16), "id:%02u rloc16:0x%04x ext-addr:", v20[10], *(v20 + 4));
    ot::Cli::Utils::OutputExtAddress((a1 + 16), v20);
    if (*(v20 + 6) != 0xFFFF)
    {
      ot::Cli::Utils::OutputFormat((a1 + 16), " ver:%u", *(v20 + 6));
    }

    if (v20[14])
    {
      ot::Cli::Utils::OutputFormat((a1 + 16), " - me");
    }

    if ((v20[14] & 2) != 0)
    {
      ot::Cli::Utils::OutputFormat((a1 + 16), " - parent");
    }

    if ((v20[14] & 4) != 0)
    {
      ot::Cli::Utils::OutputFormat((a1 + 16), " - leader");
    }

    if ((v20[14] & 8) != 0)
    {
      ot::Cli::Utils::OutputFormat((a1 + 16), " - br");
    }

    ot::Cli::Utils::OutputNewLine((a1 + 16));
    for (i = 3; i; --i)
    {
      v18 = 0;
      v17 = v20 + 15;
      v16 = v20 + 15;
      v15 = v20 + 78;
      while (v16 != v15)
      {
        v14 = *v16;
        if (v14 == i)
        {
          v18 = 1;
          break;
        }

        ++v16;
      }

      if (v18)
      {
        ot::Cli::Utils::OutputFormat((a1 + 16), 4, "%u-links:{ ", i);
        for (j = 0; j < 0x3Fu; ++j)
        {
          if (v20[j + 15] == i)
          {
            ot::Cli::Utils::OutputFormat((a1 + 16), "%02u ", j);
          }
        }

        ot::Cli::Utils::OutputLine((a1 + 16), "}");
      }
    }

    if (*(v20 + 10))
    {
      ot::Cli::Utils::OutputLine((a1 + 16), 4, "ip6-addrs:");
      while (!otMeshDiagGetNextIp6Address(*(v20 + 10), v12))
      {
        ot::Cli::Utils::OutputSpaces((a1 + 16), 8);
        ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), v12);
      }
    }

    if (*(v20 + 11))
    {
      v7 = 1;
      while (!otMeshDiagGetNextChildInfo(*(v20 + 11), &v9))
      {
        if (v7)
        {
          ot::Cli::Utils::OutputLine((a1 + 16), 4, "children:");
          v7 = 0;
        }

        v4 = v9;
        v5 = v10[1];
        v3 = ot::Cli::Utils::LinkModeToString(v10, v8);
        ot::Cli::Utils::OutputFormat((a1 + 16), 8, "rloc16:0x%04x lq:%u, mode:%s", v4, v5, v3);
        if (v11)
        {
          ot::Cli::Utils::OutputFormat((a1 + 16), " - me");
        }

        if ((v11 & 2) != 0)
        {
          ot::Cli::Utils::OutputFormat((a1 + 16), " - br");
        }

        ot::Cli::Utils::OutputNewLine((a1 + 16));
      }

      if (v7)
      {
        ot::Cli::Utils::OutputLine((a1 + 16), 4, "children: none");
      }
    }
  }

  ot::Cli::Interpreter::OutputResult(a1, v21);
}

void ot::Cli::Interpreter::HandleMeshDiagQueryChildTableResult(_BYTE *a1, int a2, uint64_t a3)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  if (a3)
  {
    ot::Cli::Utils::OutputFormat((a1 + 16), "rloc16:0x%04x ext-addr:", *(v17 + 2));
    ot::Cli::Utils::OutputExtAddress((a1 + 16), (v17 + 4));
    ot::Cli::Utils::OutputLine((a1 + 16), " ver:%u", *(v17 + 12));
    v13 = ot::ToUlong(*(v17 + 16));
    v3 = ot::ToUlong(*(v17 + 20));
    ot::Cli::Utils::OutputLine((a1 + 16), 4, "timeout:%lu age:%lu supvn:%u q-msg:%u", v13, v3, *(v17 + 28), *(v17 + 38));
    v4 = "yes";
    if ((*v17 & 1) == 0)
    {
      v4 = "no";
    }

    v14 = v4;
    if ((*v17 & 2) != 0)
    {
      v12 = "ftd";
    }

    else
    {
      v12 = "mtd";
    }

    v5 = "yes";
    if ((*v17 & 4) == 0)
    {
      v5 = "no";
    }

    ot::Cli::Utils::OutputLine((a1 + 16), 4, "rx-on:%s type:%s full-net:%s", v14, v12, v5);
    ot::Cli::Utils::OutputLine((a1 + 16), 4, "rss - ave:%d last:%d margin:%d", *(v17 + 31), *(v17 + 32), *(v17 + 30));
    if ((*v17 & 0x10) != 0)
    {
      v6 = ot::Cli::Utils::PercentageToString(*(v17 + 34), v16);
      ot::Cli::Utils::OutputFormat((a1 + 16), 4, "err-rate - frame:%s%% ", v6);
      v7 = ot::Cli::Utils::PercentageToString(*(v17 + 36), v16);
      ot::Cli::Utils::OutputLine((a1 + 16), "msg:%s%% ", v7);
    }

    otConvertDurationInSecondsToString(*(v17 + 24), v20, 21);
    ot::Cli::Utils::OutputLine((a1 + 16), 4, "conn-time:%s", v20);
    v8 = "yes";
    if ((*v17 & 8) == 0)
    {
      v8 = "no";
    }

    v10 = v8;
    v11 = *(v17 + 40);
    v9 = ot::ToUlong(*(v17 + 44));
    ot::Cli::Utils::OutputLine((a1 + 16), 4, "csl - sync:%s period:%u timeout:%lu channel:%u", v10, v11, v9, *(v17 + 48));
  }

  ot::Cli::Interpreter::OutputResult(a1, v18);
}

void ot::Cli::Interpreter::HandleMeshDiagQueryRouterNeighborTableResult(_BYTE *a1, int a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  if (a3)
  {
    ot::Cli::Utils::OutputFormat((a1 + 16), "rloc16:0x%04x ext-addr:", *(v7 + 2));
    ot::Cli::Utils::OutputExtAddress((a1 + 16), (v7 + 4));
    ot::Cli::Utils::OutputLine((a1 + 16), " ver:%u", *(v7 + 12));
    ot::Cli::Utils::OutputLine((a1 + 16), 4, "rss - ave:%d last:%d margin:%d", *(v7 + 21), *(v7 + 22), *(v7 + 20));
    if (*v7)
    {
      v3 = ot::Cli::Utils::PercentageToString(*(v7 + 24), v6);
      ot::Cli::Utils::OutputFormat((a1 + 16), 4, "err-rate - frame:%s%% ", v3);
      v4 = ot::Cli::Utils::PercentageToString(*(v7 + 26), v6);
      ot::Cli::Utils::OutputLine((a1 + 16), "msg:%s%% ", v4);
    }

    otConvertDurationInSecondsToString(*(v7 + 16), v10, 21);
    ot::Cli::Utils::OutputLine((a1 + 16), 4, "conn-time:%s", v10);
  }

  ot::Cli::Interpreter::OutputResult(a1, v8);
}

void ot::Cli::Interpreter::HandleMeshDiagQueryChildIp6Addrs(_BYTE *a1, int a2, unsigned __int16 a3, uint64_t a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  if (!a2 || v8 == 36)
  {
    if (v6)
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "child-rloc16: 0x%04x", v7);
      while (!otMeshDiagGetNextIp6Address(v6, v5))
      {
        ot::Cli::Utils::OutputSpaces((a1 + 16), 4);
        ot::Cli::Utils::OutputIp6AddressLine((a1 + 16), v5);
      }
    }
  }

  ot::Cli::Interpreter::OutputResult(a1, v8);
}

uint64_t ot::Cli::Interpreter::Process<424573284472ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    PanId = otLinkGetPanId(InstancePtr);
    ot::Cli::Utils::OutputLine((a1 + 16), "0x%04x", PanId);
  }

  else
  {
    return ot::Cli::Utils::ProcessSet<unsigned short>((a1 + 16), a2, otLinkSetPanId);
  }

  return v6;
}

uint64_t ot::Cli::Interpreter::Process<125538443212822ull>(uint64_t a1, const char **a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    ParentInfo = otThreadGetParentInfo(InstancePtr, v9);
    if (!ParentInfo)
    {
      ot::Cli::Utils::OutputFormat((a1 + 16), "Ext Addr: ");
      ot::Cli::Utils::OutputExtAddressLine((a1 + 16), v9);
      ot::Cli::Utils::OutputLine((a1 + 16), "Rloc: %x", v10);
      ot::Cli::Utils::OutputLine((a1 + 16), "Link Quality In: %u", v11);
      ot::Cli::Utils::OutputLine((a1 + 16), "Link Quality Out: %u", v12);
      v3 = ot::ToUlong(v13);
      ot::Cli::Utils::OutputLine((a1 + 16), "Age: %lu", v3);
      ot::Cli::Utils::OutputLine((a1 + 16), "Version: %u", v14);
      ot::Cli::Utils::OutputLine((a1 + 16), "CSL clock accuracy: %u", v15);
      ot::Cli::Utils::OutputLine((a1 + 16), "CSL uncertainty: %u", v16);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "search"))
  {
    v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadSearchForBetterParent(v4);
  }

  else
  {
    return 7;
  }

  return ParentInfo;
}

uint64_t ot::Cli::Utils::ProcessGetSet<signed char>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t), unsigned __int8 *a4)
{
  v6 = ot::Cli::Utils::ProcessGet<signed char>(a1, a2, a3);
  if (v6)
  {
    return ot::Cli::Utils::ProcessSet<signed char>(a1, a2, a4);
  }

  return v6;
}

{
  return ot::Cli::Utils::ProcessGetSet<signed char>(a1, a2, a3, a4);
}

uint64_t ot::Cli::Interpreter::Process<14555083096433720913ull>(uint64_t a1, const char **a2)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    Promiscuous = 0;
    if (otLinkIsPromiscuous(InstancePtr))
    {
      ot::Cli::Utils::GetInstancePtr((a1 + 16));
      Promiscuous = otPlatRadioGetPromiscuous();
    }

    ot::Cli::Utils::OutputEnabledDisabledStatus((a1 + 16), Promiscuous & 1);
  }

  else
  {
    v10 = 0;
    v11 = ot::Cli::Utils::ParseEnableOrDisable(v12, &v10, v2);
    if (!v11)
    {
      if ((v10 & 1) == 0)
      {
        v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        otLinkSetPcapCallback(v4, 0, 0);
      }

      v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      v11 = otLinkSetPromiscuous(v5, v10 & 1);
      if (!v11 && (v10 & 1) != 0)
      {
        v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        otLinkSetPcapCallback(v6, ot::Cli::Interpreter::HandleLinkPcapReceive, a1);
      }
    }
  }

  return v11;
}

uint64_t ot::Cli::Interpreter::HandleLinkPcapReceive(uint64_t a1, uint64_t *a2, char a3)
{
  v9 = *a2;
  v10 = *(a2 + 4);
  if (a3)
  {
    v4 = "TX";
  }

  else
  {
    v4 = "RX";
  }

  v11 = v4;
  v13 = 0;
  logging_obg = log_get_logging_obg("com.apple.wpantund", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_4_0(v8, "void ot::Cli::Interpreter::HandleLinkPcapReceive(const otRadioFrame *, BOOL)", 6638);
      _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "%s:%d: #PARISDBG", v8, 0x12u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v7, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging Module is not defined for SubSystem: %s, Category: %s", v7, 0x16u);
  }

  ot::Cli::Utils::OutputNewLine((a1 + 16));
  while (1)
  {
    result = otLogGenerateNextHexDumpLine(&v9);
    if (result)
    {
      break;
    }

    ot::Cli::Utils::OutputLine((a1 + 16), "%s", v12);
  }

  return result;
}

uint64_t ot::Cli::Interpreter::Process<129830133337582ull>(uint64_t a1, const char **a2)
{
  v19 = a1;
  v18 = a2;
  v17 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v16 = 0;
    while (1)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otBorderRouterGetNextOnMeshPrefix(InstancePtr, &v16, v15))
      {
        break;
      }

      ot::Cli::NetworkData::OutputPrefix((a1 + 112), v15);
    }

    v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    if (!otBackboneRouterGetState(v3))
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (!otBackboneRouterGetDomainPrefix(v4, v15))
      {
        ot::Cli::Utils::OutputFormat((a1 + 16), "- ");
        ot::Cli::NetworkData::OutputPrefix((a1 + 112), v15);
      }
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v18, "add"))
  {
    v17 = ot::Cli::Utils::ParsePrefix((v18 + 1), v14);
    if (!v17)
    {
      v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otBorderRouterAddOnMeshPrefix(v5, v14);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v18, "remove"))
  {
    v17 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Prefix(v18 + 1, v13);
    if (!v17)
    {
      v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otBorderRouterRemoveOnMeshPrefix(v6, v13);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v18, "meshlocal"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v18 + 1)))
    {
      v7 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      MeshLocalPrefix = otThreadGetMeshLocalPrefix(v7);
      ot::Cli::Utils::OutputIp6PrefixLine((a1 + 16), MeshLocalPrefix);
    }

    else
    {
      v17 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Prefix(v18 + 1, v12);
      if (!v17)
      {
        if (v12[16] == 64)
        {
          v9 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
          return otThreadSetMeshLocalPrefix(v9, v12);
        }

        else
        {
          return 7;
        }
      }
    }
  }

  else
  {
    return 35;
  }

  return v17;
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsIp6Prefix(ot **a1, uint64_t a2)
{
  return ot::Utils::CmdLineParser::ParseAsIp6Prefix(*a1, a2);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsIp6Prefix(a1, a2);
}

uint64_t ot::Cli::Interpreter::Process<471083391099ull>(uint64_t a1, const char **a2)
{
  v3 = 0;
  if (ot::Cli::Utils::ProcessEnableDisable((a1 + 16), a2, otLinkSetEnabled))
  {
    return 35;
  }

  return v3;
}

uint64_t ot::Cli::Interpreter::Process<7308159ull>(uint64_t a1, const char **a2)
{
  v5 = 0;
  ot::Cli::Utils::GetInstancePtr((a1 + 16));
  VersionString = otPlatRadioGetVersionString();
  if (VersionString == otGetVersionString())
  {
    return 12;
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "version"))
  {
    ot::Cli::Utils::OutputLine((a1 + 16), "%s", VersionString);
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t ot::Cli::Interpreter::Process<119073513618444ull>(uint64_t a1, const char **a2)
{
  v10 = a1;
  v9 = a2;
  Region = 0;
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    Region = otLinkGetRegion(InstancePtr, &v7);
    if (!Region)
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "%c%c", v7 >> 8, v7);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::GetLength(v9) == 2)
  {
    v5 = *ot::Utils::CmdLineParser::Arg::GetCString(v9) << 8;
    v7 = *(ot::Utils::CmdLineParser::Arg::GetCString(v9) + 1) + v5;
    v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otLinkSetRegion(v3, v7);
  }

  else
  {
    return 7;
  }

  return Region;
}

uint64_t ot::Cli::Interpreter::Process<58431844188429ull>(uint64_t a1)
{
  v4 = (a1 + 16);
  InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
  Rloc16 = otThreadGetRloc16(InstancePtr);
  ot::Cli::Utils::OutputLine(v4, "%04x", Rloc16);
  return 0;
}

uint64_t ot::Cli::Interpreter::Process<428984388969ull>(uint64_t a1, const char **a2)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v10 = 0;
    while (1)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otBorderRouterGetNextRoute(InstancePtr, &v10, v9))
      {
        break;
      }

      ot::Cli::NetworkData::OutputRoute((a1 + 112), v9);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v12, "add"))
  {
    v11 = ot::Cli::Utils::ParseRoute((v12 + 1), v8);
    if (!v11)
    {
      v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otBorderRouterAddRoute(v3, v8);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v12, "remove"))
  {
    v11 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Prefix(v12 + 1, v7);
    if (!v11)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otBorderRouterRemoveRoute(v4, v7);
    }
  }

  else
  {
    return 35;
  }

  return v11;
}

uint64_t ot::Cli::Interpreter::Process<123344230057719ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v13 = a1;
  v12 = a2;
  RouterInfo = 0;
  v10 = 0;
  v9 = ot::Utils::CmdLineParser::Arg::operator==(a2, "table");
  if (v9 || ot::Utils::CmdLineParser::Arg::operator==(v12, "list"))
  {
    if (v9)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)9>((a1 + 16), ot::Cli::Interpreter::Process<123344230057719ull>(ot::Utils::CmdLineParser::Arg *)::kRouterTableTitles, ot::Cli::Interpreter::Process<123344230057719ull>(ot::Utils::CmdLineParser::Arg *)::kRouterTableColumnWidths);
    }

    ot::Cli::Utils::GetInstancePtr((a1 + 16));
    MaxRouterId = otThreadGetMaxRouterId();
    for (i = 0; i <= MaxRouterId; ++i)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (!otThreadGetRouterInfo(InstancePtr, i, v14))
      {
        if (v9)
        {
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %2u ", v16);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| 0x%04x ", v15);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %8u ", v17);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %9u ", v18);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %5u ", v19);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %6u ", v20);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %3u ", v21);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| ");
          ot::Cli::Utils::OutputExtAddress((a1 + 16), v14);
          ot::Cli::Utils::OutputLine((a1 + 16), " | %4d |", (v22 & 2) != 0);
        }

        else
        {
          ot::Cli::Utils::OutputFormat((a1 + 16), "%u ", i);
        }
      }
    }

    ot::Cli::Utils::OutputNewLine((a1 + 16));
  }

  else
  {
    RouterInfo = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v12, &v10, v2);
    if (!RouterInfo)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      RouterInfo = otThreadGetRouterInfo(v4, v10, v14);
      if (!RouterInfo)
      {
        ot::Cli::Utils::OutputLine((a1 + 16), "Alloc: %d", v22 & 1);
        if (v22)
        {
          ot::Cli::Utils::OutputLine((a1 + 16), "Router ID: %u", v16);
          ot::Cli::Utils::OutputLine((a1 + 16), "Rloc: %04x", v15);
          ot::Cli::Utils::OutputLine((a1 + 16), "Next Hop: %04x", v17 << 10);
          ot::Cli::Utils::OutputLine((a1 + 16), "Link: %d", (v22 & 2) != 0);
          if ((v22 & 2) != 0)
          {
            ot::Cli::Utils::OutputFormat((a1 + 16), "Ext Addr: ");
            ot::Cli::Utils::OutputExtAddressLine((a1 + 16), v14);
            ot::Cli::Utils::OutputLine((a1 + 16), "Cost: %u", v18);
            ot::Cli::Utils::OutputLine((a1 + 16), "Link Quality In: %u", v19);
            ot::Cli::Utils::OutputLine((a1 + 16), "Link Quality Out: %u", v20);
            ot::Cli::Utils::OutputLine((a1 + 16), "Age: %u", v21);
          }
        }
      }
    }
  }

  return RouterInfo;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)9>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 9u, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)9>(a1, a2, a3);
}

uint64_t ot::Cli::Interpreter::Process<9036270695828403958ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v10 = a1;
  v9 = a2;
  RssiOffset = 0;
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    RssiOffset = otPlatRadioGetRssiOffset(InstancePtr, &v7);
    if (!RssiOffset)
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "%d", v7);
    }
  }

  else
  {
    RssiOffset = ot::Utils::CmdLineParser::Arg::ParseAsInt8(v9, &v7, v2);
    if (!RssiOffset)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      RssiOffset = otPlatRadioSetRssiOffset(v4, v7);
      if (!RssiOffset)
      {
        persist_rssi_offset();
      }
    }
  }

  return RssiOffset;
}

uint64_t ot::Cli::Interpreter::Process<3745368069079870530ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v10 = a1;
  v9 = a2;
  RssiOffsetPath1 = 0;
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    RssiOffsetPath1 = otPlatRadioGetRssiOffsetPath1(InstancePtr, &v7);
    if (!RssiOffsetPath1)
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "%d", v7);
    }
  }

  else
  {
    RssiOffsetPath1 = ot::Utils::CmdLineParser::Arg::ParseAsInt8(v9, &v7, v2);
    if (!RssiOffsetPath1)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      RssiOffsetPath1 = otPlatRadioSetRssiOffsetPath1(v4, v7);
      if (!RssiOffsetPath1)
      {
        persist_rssi_offset_path_1();
      }
    }
  }

  return RssiOffsetPath1;
}

uint64_t ot::Cli::Interpreter::Process<1830284035ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v14 = a1;
  v13 = a2;
  active = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "energy"))
  {
    v9 = 1;
    if (!ot::Utils::CmdLineParser::Arg::IsEmpty(++v13))
    {
      active = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v13, &v10, v2);
      if (active)
      {
        return active;
      }

      ++v13;
    }
  }

  if (!ot::Utils::CmdLineParser::Arg::IsEmpty(v13))
  {
    v8 = 0;
    active = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v13, &v8, v3);
    if (active)
    {
      return active;
    }

    if (v8 >= 0x20uLL)
    {
      return 7;
    }

    v11 = 1 << v8;
  }

  if (v9)
  {
    ot::Cli::Utils::OutputTableHeader<(unsigned char)2>((a1 + 16), ot::Cli::Interpreter::Process<1830284035ull>(ot::Utils::CmdLineParser::Arg *)::kEnergyScanTableTitles, ot::Cli::Interpreter::Process<1830284035ull>(ot::Utils::CmdLineParser::Arg *)::kEnergyScanTableColumnWidths);
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    active = otLinkEnergyScan(InstancePtr, v11, v10, ot::Cli::Interpreter::HandleEnergyScanResult, a1);
    if (!active)
    {
      return 36;
    }
  }

  else
  {
    ot::Cli::Utils::OutputTableHeader<(unsigned char)5>((a1 + 16), ot::Cli::Interpreter::Process<1830284035ull>(ot::Utils::CmdLineParser::Arg *)::kScanTableTitles, ot::Cli::Interpreter::Process<1830284035ull>(ot::Utils::CmdLineParser::Arg *)::kScanTableColumnWidths);
    v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    active = otLinkActiveScan(v5, v11, v10, ot::Cli::Interpreter::HandleActiveScanResult, a1);
    if (!active)
    {
      return 36;
    }
  }

  return active;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)5>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 5u, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)5>(a1, a2, a3);
}

void ot::Cli::Interpreter::HandleActiveScanResult(_BYTE *a1, uint64_t a2)
{
  if (a2)
  {
    if ((*(a2 + 57) & 0x20) != 0)
    {
      ot::Cli::Utils::OutputFormat((a1 + 16), "| %-16s ", (a2 + 8));
      ot::Cli::Utils::OutputFormat((a1 + 16), "| ");
      ot::Cli::Utils::OutputBytes<(unsigned char)8>((a1 + 16), (a2 + 25));
      ot::Cli::Utils::OutputFormat((a1 + 16), " ");
    }

    ot::Cli::Utils::OutputFormat((a1 + 16), "| %04x | ", *(a2 + 50));
    ot::Cli::Utils::OutputExtAddress((a1 + 16), a2);
    ot::Cli::Utils::OutputFormat((a1 + 16), " | %2u ", *(a2 + 54));
    ot::Cli::Utils::OutputFormat((a1 + 16), "| %3d ", *(a2 + 55));
    ot::Cli::Utils::OutputLine((a1 + 16), "| %3u |", *(a2 + 56));
  }

  else
  {
    ot::Cli::Interpreter::OutputResult(a1, 0);
  }
}

ot::Cli::Utils *ot::Cli::Utils::OutputBytes<(unsigned char)8>(ot::Cli::Utils *a1, const unsigned __int8 *a2)
{
  return ot::Cli::Utils::OutputBytes(a1, a2, 8u);
}

{
  return ot::Cli::Utils::OutputBytes<(unsigned char)8>(a1, a2);
}

void ot::Cli::Interpreter::HandleEnergyScanResult(_BYTE *a1, unsigned __int8 *a2)
{
  if (a2)
  {
    ot::Cli::Utils::OutputLine((a1 + 16), "| %2u | %4d |", *a2, a2[1]);
  }

  else
  {
    ot::Cli::Interpreter::OutputResult(a1, 0);
  }
}

uint64_t ot::Cli::Interpreter::Process<603988223085374603ull>(uint64_t a1)
{
  v3 = (a1 + 16);
  InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
  if (otThreadIsSingleton(InstancePtr))
  {
    ot::Cli::Utils::OutputLine(v3, "true", v3);
  }

  else
  {
    ot::Cli::Utils::OutputLine(v3, "false", v3);
  }

  return 0;
}

uint64_t ot::Cli::Interpreter::Process<428983089745ull>(uint64_t a1, const char **a2)
{
  v11 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    DeviceRole = otThreadGetDeviceRole(InstancePtr);
    v4 = otThreadDeviceRoleToString(DeviceRole);
    ot::Cli::Utils::OutputLine((a1 + 16), "%s", v4);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "detached"))
  {
    v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadBecomeDetached(v5);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "child"))
  {
    v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadBecomeChild(v6);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "router"))
  {
    v7 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadBecomeRouter(v7);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "leader"))
  {
    v8 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadBecomeLeader(v8, 1);
  }

  else
  {
    return 7;
  }

  return v11;
}

uint64_t ot::Cli::Interpreter::Process<108232213406486ull>(uint64_t a1, const char **a2)
{
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "start"))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadSetEnabled(InstancePtr, 1);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "stop"))
  {
    v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    return otThreadSetEnabled(v3, 0);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "version"))
  {
    Version = otThreadGetVersion();
    ot::Cli::Utils::OutputLine((a1 + 16), "%u", Version);
  }

  else
  {
    return 35;
  }

  return v7;
}

uint64_t ot::Cli::Interpreter::Process<11351213666390626399ull>(uint64_t a1, const char **a2)
{
  v18 = a1;
  v17 = a2;
  v16 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v15 = 0;
    v14 = 0;
    ot::Cli::Utils::OutputTableHeader<(unsigned char)3>((a1 + 16), ot::Cli::Interpreter::Process<11351213666390626399ull>(ot::Utils::CmdLineParser::Arg *)::kTimeInQueueTableTitles, ot::Cli::Interpreter::Process<11351213666390626399ull>(ot::Utils::CmdLineParser::Arg *)::kTimeInQueueTableColumnWidths);
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    TimeInQueueHistogram = otThreadGetTimeInQueueHistogram(InstancePtr, &v15, &v14);
    for (i = 0; i < v15; ++i)
    {
      v3 = ot::ToUlong(i * v14);
      ot::Cli::Utils::OutputFormat((a1 + 16), "| %4lu | ", v3);
      if (i < v15 - 1)
      {
        v4 = ot::ToUlong((i + 1) * v14 - 1);
        ot::Cli::Utils::OutputFormat((a1 + 16), "%4lu", v4);
      }

      else
      {
        ot::Cli::Utils::OutputFormat((a1 + 16), "%4s", "inf");
      }

      v5 = ot::ToUlong(*(TimeInQueueHistogram + 4 * i));
      ot::Cli::Utils::OutputLine((a1 + 16), " | %7lu |", v5);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v17, "max"))
  {
    v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    MaxTimeInQueue = otThreadGetMaxTimeInQueue(v6);
    v8 = ot::ToUlong(MaxTimeInQueue);
    ot::Cli::Utils::OutputLine((a1 + 16), "%lu", v8);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v17, "reset"))
  {
    v9 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otThreadResetTimeInQueueStat(v9);
  }

  else
  {
    return 7;
  }

  return v16;
}

uint64_t ot::Cli::Interpreter::Process<7741096949622271262ull>(uint64_t a1, const char **a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    return ot::Cli::Dataset::PrintKeychain((a1 + 96), a2);
  }
}

uint64_t ot::Cli::Interpreter::Process<31452791250048641ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v10 = a1;
  v9 = a2;
  TransmitPower = 0;
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    TransmitPower = otPlatRadioGetTransmitPower(InstancePtr, &v7);
    if (!TransmitPower)
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "%d dBm", v7);
    }
  }

  else
  {
    TransmitPower = ot::Utils::CmdLineParser::Arg::ParseAsInt8(v9, &v7, v2);
    if (!TransmitPower)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      TransmitPower = otPlatRadioSetTransmitPower(v4, v7);
      if (TransmitPower)
      {
        persist_tx_power();
      }
    }
  }

  return TransmitPower;
}

uint64_t ot::Cli::Interpreter::Process<437456233555ull>(_BYTE *a1)
{
  a1[57] = 1;
  for (i = ot::Cli::Interpreter::Process<437456233555ull>(ot::Utils::CmdLineParser::Arg *)::kDebugCommands; i != &ot::Cli::Interpreter::OutputNetworkDiagMacCounters(unsigned char,otNetworkDiagMacCounters const&)::kCounterNames; ++i)
  {
    strncpy(__dst, *i, 0x1DuLL);
    __dst[29] = 0;
    ot::Cli::Utils::OutputLine((a1 + 16), "$ %s", __dst);
    ot::Cli::Interpreter::ProcessLine(a1, __dst);
  }

  a1[57] = 0;
  return 0;
}

uint64_t ot::Cli::Interpreter::Process<807264858141456911ull>(uint64_t a1, const char **a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "add"))
  {
    return ot::Cli::Utils::ProcessSet<unsigned short>((a1 + 16), v10 + 1, otIp6AddUnsecurePort);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v10, "remove"))
  {
    if (ot::Utils::CmdLineParser::Arg::operator==(v10 + 1, "all"))
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otIp6RemoveAllUnsecurePorts(InstancePtr);
    }

    else
    {
      return ot::Cli::Utils::ProcessSet<unsigned short>((a1 + 16), v10 + 1, otIp6RemoveUnsecurePort);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v10, "get"))
  {
    UnsecurePorts = 0;
    v7 = 0;
    v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    UnsecurePorts = otIp6GetUnsecurePorts(v3, &v7);
    if (UnsecurePorts)
    {
      for (i = 0; i < v7; ++i)
      {
        ot::Cli::Utils::OutputFormat((a1 + 16), "%u ", *(UnsecurePorts + 2 * i));
      }
    }

    ot::Cli::Utils::OutputNewLine((a1 + 16));
  }

  else
  {
    return 35;
  }

  return v9;
}

uint64_t ot::Cli::Interpreter::Process<109361222780952ull>(uint64_t a1, const char **a2)
{
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otInstanceGetUptimeAsString(InstancePtr, v9, 24);
    ot::Cli::Utils::OutputLine((a1 + 16), "%s", v9);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "ms"))
  {
    v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    Uptime = otInstanceGetUptime(v3);
    ot::Cli::Utils::OutputUint64Line((a1 + 16), Uptime);
  }

  else
  {
    return 7;
  }

  return v7;
}

uint64_t ot::Cli::Interpreter::Process<6462319ull>(uint64_t a1, const char **a2)
{
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "altshortaddr"))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    AlternateShortAddress = otLinkGetAlternateShortAddress(InstancePtr);
    ot::Cli::Utils::OutputLine((a1 + 16), "0x%04x", AlternateShortAddress);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "retries"))
  {
    if (ot::Utils::CmdLineParser::Arg::operator==(a2 + 1, "direct"))
    {
      return ot::Cli::Utils::ProcessGetSet<unsigned char>((a1 + 16), (a2 + 2), otLinkGetMaxFrameRetriesDirect, otLinkSetMaxFrameRetriesDirect);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(a2 + 1, "indirect"))
    {
      return ot::Cli::Utils::ProcessGetSet<unsigned char>((a1 + 16), (a2 + 2), otLinkGetMaxFrameRetriesIndirect, otLinkSetMaxFrameRetriesIndirect);
    }

    else
    {
      return 7;
    }
  }

  else
  {
    return 35;
  }

  return v6;
}

uint64_t ot::Cli::Interpreter::Process<1433029466759137599ull>(uint64_t a1, const char **a2)
{
  v40 = a1;
  v39 = a2;
  v38 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
  BufferStats = otMessageGetBufferStats(InstancePtr);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:dn200100](v35);
  if (ot::Utils::CmdLineParser::Arg::operator==(v39, "enable"))
  {
    v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otMessageSetIsBufferStatsEnabled(v3, 1);
    ot::Cli::Utils::OutputLine((a1 + 16), "BufferStats is enabled");
    goto LABEL_32;
  }

  if (ot::Utils::CmdLineParser::Arg::operator==(v39, "disable"))
  {
    v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otMessageSetIsBufferStatsEnabled(v4, 0);
    ot::Cli::Utils::OutputLine((a1 + 16), "BufferStats is disabled");
    goto LABEL_32;
  }

  if (!ot::Utils::CmdLineParser::Arg::IsEmpty(v39))
  {
    if (!ot::Utils::CmdLineParser::Arg::operator==(v39, "reset"))
    {
      v38 = 7;
      goto LABEL_32;
    }

    v12 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    if (otMessageGetIsBufferStatsEnabled(v12))
    {
      v13 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otMessageResetBufferStats(v13);
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
  if ((otMessageGetIsBufferStatsEnabled(v5) & 1) == 0)
  {
LABEL_26:
    ot::Cli::Utils::OutputLine((a1 + 16), "BufferStats is disabled");
    goto LABEL_32;
  }

  for (i = 0; i < 0x100u; ++i)
  {
    v6 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    BufferAt = otMessageGetBufferAt(v6, i);
    std::string::basic_string[abi:dn200100]<0>(&v32, "");
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:dn200100]();
    std::string::~string(&v32);
    v20 = std::operator<<[abi:dn200100]<std::char_traits<char>>(v36, "Buf");
    v31 = std::setw[abi:dn200100](3);
    std::operator<<[abi:dn200100]<char,std::char_traits<char>>(v20, &v31);
    v30 = std::setfill[abi:dn200100]<char>(48);
    std::operator<<[abi:dn200100]<std::char_traits<char>>(v20, &v30);
    std::ostream::operator<<();
    std::operator<<[abi:dn200100]<std::char_traits<char>>(v36, ":");
    std::ostream::operator<<();
    if ((*(BufferStats + 76 * i + 8) & 1) == 1)
    {
      std::operator<<[abi:dn200100]<std::char_traits<char>>(v36, " (A), ");
    }

    else
    {
      std::operator<<[abi:dn200100]<std::char_traits<char>>(v36, " (D), ");
    }

    v18 = std::operator<<[abi:dn200100]<std::char_traits<char>>(v36, "#A:");
    v29 = std::setw[abi:dn200100](10);
    std::operator<<[abi:dn200100]<char,std::char_traits<char>>(v18, &v29);
    v28 = std::setfill[abi:dn200100]<char>(48);
    std::operator<<[abi:dn200100]<std::char_traits<char>>(v18, &v28);
    v7 = *(BufferStats + 76 * i);
    std::ostream::operator<<();
    v19 = std::operator<<[abi:dn200100]<std::char_traits<char>>(v36, ", #D:");
    v27 = std::setw[abi:dn200100](10);
    std::operator<<[abi:dn200100]<char,std::char_traits<char>>(v19, &v27);
    v26 = std::setfill[abi:dn200100]<char>(48);
    std::operator<<[abi:dn200100]<std::char_traits<char>>(v19, &v26);
    v8 = *(BufferStats + 76 * i + 4);
    std::ostream::operator<<();
    if (*(BufferStats + 76 * i + 9))
    {
      v9 = std::operator<<[abi:dn200100]<std::char_traits<char>>(v36, ", LastAllocTimestamp: ");
      std::operator<<[abi:dn200100]<std::char_traits<char>>(v9, (BufferStats + 76 * i + 9));
    }

    if (*(BufferStats + 76 * i + 41))
    {
      v10 = std::operator<<[abi:dn200100]<std::char_traits<char>>(v36, ", LastDeallocTimestamp: ");
      std::operator<<[abi:dn200100]<std::char_traits<char>>(v10, (BufferStats + 76 * i + 41));
    }

    logging_obg = log_get_logging_obg("com.apple.wpantund", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      oslog = logging_obg;
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        log = oslog;
        v17 = type;
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:dn200100]();
        std::string::c_str[abi:dn200100](&v22);
        __os_log_helper_16_2_1_8_32(v42, v11);
        _os_log_impl(&_mh_execute_header, log, v17, "%s", v42, 0xCu);
        std::string::~string(&v22);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v41, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging Module is not defined for SubSystem: %s, Category: %s", v41, 0x16u);
    }
  }

LABEL_32:
  v15 = v38;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(v35);
  return v15;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:dn200100](uint64_t a1)
{
  std::ios::basic_ios[abi:dn200100]((a1 + 128));
  std::stringbuf::basic_stringbuf[abi:dn200100](a1 + 24, 24);
  return a1;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:dn200100]()
{
  return std::stringbuf::str();
}

{
  return std::stringbuf::str();
}

uint64_t ot::Cli::Interpreter::Process<17671613907470187241ull>(uint64_t a1, const char **a2)
{
  v7 = 0;
  bzero(v9, 0xC00uLL);
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "tx") || ot::Utils::CmdLineParser::Arg::operator==(a2, "rx"))
  {
    if (!ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 1)))
    {
      Length = ot::Utils::CmdLineParser::Arg::GetLength(a2 + 1);
      CString = ot::Utils::CmdLineParser::Arg::GetCString((a2 + 1));
      v2 = ot::Utils::CmdLineParser::Arg::operator==(a2, "tx");
      v7 = otPlatDecodeSpinel(CString, Length / 2, v9, &v10, v2);
      if (!v7)
      {
        ot::Cli::Utils::OutputLine((a1 + 16), "%s", v9);
      }
    }
  }

  else
  {
    return 35;
  }

  return v7;
}

uint64_t ot::Cli::Interpreter::Process<4003642666868174351ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 0;
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otLinkGetFragmentSize(InstancePtr, &v7);
    ot::Cli::Utils::OutputLine((a1 + 16), "Fragment Size =  %d\n", v7);
  }

  else
  {
    v8 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v9, &v7, v2);
    if (!v8)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otLinkSetFragmentSize(v4, v7);
    }
  }

  return v8;
}

uint64_t ot::Cli::Interpreter::Process<26788442918280547ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetVendorAntenna((a1 + 432), a2);
  }

  else
  {
    return ot::Cli::Vendor::ProcessSetVendorAntenna((a1 + 432), a2, v2);
  }
}

uint64_t ot::Cli::Interpreter::Process<123344279411948ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetVendorPower((a1 + 432), a2);
  }

  else
  {
    return ot::Cli::Vendor::ProcessSetVendorPower((a1 + 432), a2);
  }
}

uint64_t ot::Cli::Interpreter::Process<25344ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetVendorCC((a1 + 432), a2);
  }

  else
  {
    return ot::Cli::Vendor::ProcessSetVendorCC((a1 + 432), a2, v2);
  }
}

uint64_t ot::Cli::Interpreter::Process<1682160129ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v4 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetVendorCore((a1 + 432), a2);
  }

  else
  {
    ot::Cli::Utils::OutputLine((a1 + 16), "Core cannot be set");
  }

  return v4;
}

uint64_t ot::Cli::Interpreter::Process<1863446782ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetVendorPCAP((a1 + 432), a2);
  }

  else
  {
    return ot::Cli::Vendor::ProcessSetVendorPCAP((a1 + 432), a2, v2);
  }
}

uint64_t ot::Cli::Interpreter::Process<8515342280977991932ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetPriority((a1 + 432), a2);
  }

  else
  {
    return ot::Cli::Vendor::ProcessSetPriority((a1 + 432), a2);
  }
}

uint64_t ot::Cli::Interpreter::Process<1847388913ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetGPIO((a1 + 432), a2);
  }

  else
  {
    return ot::Cli::Vendor::ProcessSetGPIO((a1 + 432), a2);
  }
}

uint64_t ot::Cli::Interpreter::Process<28154531598088808ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Vendor::ProcessGetBackOff((a1 + 432), a2);
  }

  else
  {
    return ot::Cli::Vendor::ProcessSetBackOff((a1 + 432), a2, v2);
  }
}

uint64_t ot::Cli::Interpreter::Process<123386246804248ull>(uint64_t a1, const char **a2)
{
  v4 = 7;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "name"))
  {
    return ot::Cli::Utils::ProcessGet<char const*>((a1 + 16), (a2 + 1), otThreadGetVendorName);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "model"))
  {
    return ot::Cli::Utils::ProcessGet<char const*>((a1 + 16), (a2 + 1), otThreadGetVendorModel);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "swversion"))
  {
    return ot::Cli::Utils::ProcessGet<char const*>((a1 + 16), (a2 + 1), otThreadGetVendorSwVersion);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "appurl"))
  {
    return ot::Cli::Utils::ProcessGet<char const*>((a1 + 16), (a2 + 1), otThreadGetVendorAppUrl);
  }

  return v4;
}

uint64_t ot::Cli::Utils::ProcessGet<char const*>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t))
{
  v8 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v6 = ot::Cli::Utils::FormatStringFor<char const*>();
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    v4 = a3(InstancePtr);
    ot::Cli::Utils::OutputLine(a1, v6, v4);
  }

  else
  {
    return 7;
  }

  return v8;
}

{
  return ot::Cli::Utils::ProcessGet<char const*>(a1, a2, a3);
}

uint64_t ot::Cli::Interpreter::Process<5255620471931187573ull>(uint64_t a1, const char **a2)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  v9 = 0;
  v11 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(a2 + 1, v10);
  if (!v11)
  {
    for (i = (v12 + 2); !ot::Utils::CmdLineParser::Arg::IsEmpty(i); ++i)
    {
      if (v9 >= 0x23uLL)
      {
        return 7;
      }

      v3 = v9++;
      v11 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(i, &v14[v3], v2);
      if (v11)
      {
        return v11;
      }
    }

    if (ot::Utils::CmdLineParser::Arg::operator==(v12, "get"))
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      v11 = otThreadSendDiagnosticGet(InstancePtr, v10, v14, v9, ot::Cli::Interpreter::HandleDiagnosticGetResponse, a1);
      if (!v11)
      {
        ot::Cli::Interpreter::SetCommandTimeout(a1, 0x1388u);
        return 36;
      }
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v12, "reset"))
    {
      v5 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      otThreadSendDiagnosticReset(v5, v10, v14, v9);
      IgnoreError();
    }

    else
    {
      return 35;
    }
  }

  return v11;
}

uint64_t ot::Cli::Interpreter::SetCommandTimeout(ot::Cli::Interpreter *this, unsigned int a2)
{
  if ((*(this + 56) & 1) == 0)
  {
    __assert_rtn("SetCommandTimeout", "cli.cpp", 9560, "mCommandIsPending");
  }

  return ot::TimerMilli::Start((this + 64), a2);
}

uint64_t ot::Cli::Interpreter::HandleDiagnosticGetResponse(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v18 = result;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v8 = result;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  if (!a2)
  {
    ot::Cli::Utils::OutputFormat((result + 16), "DIAG_GET.rsp/ans from ");
    ot::Cli::Utils::OutputIp6Address((v8 + 16), v15 + 16);
    ot::Cli::Utils::OutputFormat((v8 + 16), ": ");
    Length = otMessageGetLength(v16);
    v12 = Length - otMessageGetOffset(v16);
    while (v12)
    {
      v14 = ot::Min<unsigned short>(v12, 0x10u);
      Offset = otMessageGetOffset(v16);
      otMessageRead(v16, Offset + v13, v21, v14);
      ot::Cli::Utils::OutputBytes((v8 + 16), v21, v14);
      v12 -= v14;
      v13 += v14;
    }

    ot::Cli::Utils::OutputNewLine((v8 + 16));
    while (1)
    {
      result = otThreadGetNextDiagnosticTlv(v16, &v11, v19);
      if (result)
      {
        break;
      }

      switch(v19[0])
      {
        case 0:
          ot::Cli::Utils::OutputFormat((v8 + 16), "Ext Address: ");
          ot::Cli::Utils::OutputExtAddressLine((v8 + 16), v20);
          break;
        case 1:
          ot::Cli::Utils::OutputLine((v8 + 16), "Rloc16: 0x%04x", LOWORD(v20[0]));
          break;
        case 2:
          ot::Cli::Utils::OutputLine((v8 + 16), "Mode:");
          ot::Cli::Interpreter::OutputMode(v8, 4u, v20);
          break;
        case 3:
          v5 = ot::ToUlong(LODWORD(v20[0]));
          ot::Cli::Utils::OutputLine((v8 + 16), "Timeout: %lu", v5);
          break;
        case 4:
          ot::Cli::Utils::OutputLine((v8 + 16), "Connectivity:");
          ot::Cli::Interpreter::OutputConnectivity(v8, 4u, v20);
          break;
        case 5:
          ot::Cli::Utils::OutputLine((v8 + 16), "Route:");
          ot::Cli::Interpreter::OutputRoute(v8, 4u, v20);
          break;
        case 6:
          ot::Cli::Utils::OutputLine((v8 + 16), "Leader Data:");
          ot::Cli::Interpreter::OutputLeaderData(v8, 4u, v20);
          break;
        case 7:
          ot::Cli::Utils::OutputFormat((v8 + 16), "Network Data: ");
          ot::Cli::Utils::OutputBytesLine((v8 + 16), v20 + 1, LOBYTE(v20[0]));
          break;
        case 8:
          ot::Cli::Utils::OutputLine((v8 + 16), "IP6 Address List:");
          for (i = 0; i < LOBYTE(v20[0]); ++i)
          {
            ot::Cli::Utils::OutputFormat((v8 + 16), 4, "- ");
            ot::Cli::Utils::OutputIp6AddressLine((v8 + 16), &v20[2 * i] + 1);
          }

          break;
        case 9:
          ot::Cli::Utils::OutputLine((v8 + 16), "MAC Counters:");
          ot::Cli::Interpreter::OutputNetworkDiagMacCounters(v8, 4u, v20);
          break;
        case 0xE:
          ot::Cli::Utils::OutputLine((v8 + 16), "Battery Level: %u%%", LOBYTE(v20[0]));
          break;
        case 0xF:
          ot::Cli::Utils::OutputLine((v8 + 16), "Supply Voltage: %umV", LOWORD(v20[0]));
          break;
        case 0x10:
          ot::Cli::Utils::OutputLine((v8 + 16), "Child Table:");
          for (j = 0; j < LOBYTE(v20[0]); ++j)
          {
            ot::Cli::Utils::OutputFormat((v8 + 16), 4, "- ");
            ot::Cli::Interpreter::OutputChildTableEntry(v8, 6u, v20 + 2 * j + 1);
          }

          break;
        case 0x11:
          ot::Cli::Utils::OutputFormat((v8 + 16), "Channel Pages: '");
          ot::Cli::Utils::OutputBytes((v8 + 16), v20 + 1, LOBYTE(v20[0]));
          ot::Cli::Utils::OutputLine((v8 + 16), "'");
          break;
        case 0x13:
          v6 = ot::ToUlong(LODWORD(v20[0]));
          ot::Cli::Utils::OutputLine((v8 + 16), "Max Child Timeout: %lu", v6);
          break;
        case 0x17:
          ot::Cli::Utils::OutputFormat((v8 + 16), "EUI64: ");
          ot::Cli::Utils::OutputExtAddressLine((v8 + 16), v20);
          break;
        case 0x19:
          ot::Cli::Utils::OutputLine((v8 + 16), "Vendor Name: %s", v20);
          break;
        case 0x1A:
          ot::Cli::Utils::OutputLine((v8 + 16), "Vendor Model: %s", v20);
          break;
        case 0x1B:
          ot::Cli::Utils::OutputLine((v8 + 16), "Vendor SW Version: %s", v20);
          break;
        case 0x1C:
          ot::Cli::Utils::OutputLine((v8 + 16), "Thread Stack Version: %s", v20);
          break;
        case 0x22:
          ot::Cli::Utils::OutputLine((v8 + 16), "MLE Counters:");
          ot::Cli::Interpreter::OutputNetworkDiagMleCounters(v8, 4u, v20);
          break;
        case 0x23:
          ot::Cli::Utils::OutputLine((v8 + 16), "Vendor App URL: %s", v20);
          break;
        default:
          continue;
      }
    }
  }

  return result;
}

uint64_t ot::Min<unsigned short>(unsigned __int16 a1, unsigned __int16 a2)
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
  return ot::Min<unsigned short>(a1, a2);
}

uint64_t ot::Cli::Interpreter::OutputMode(uint64_t a1, unsigned __int8 a2, _BYTE *a3)
{
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "RxOnWhenIdle: %d", *a3 & 1);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "DeviceType: %d", (*a3 & 2) != 0);
  return ot::Cli::Utils::OutputLine((a1 + 16), a2, "NetworkData: %d", (*a3 & 4) != 0);
}

uint64_t ot::Cli::Interpreter::OutputConnectivity(uint64_t a1, unsigned __int8 a2, char *a3)
{
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "ParentPriority: %d", *a3);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "LinkQuality3: %u", a3[1]);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "LinkQuality2: %u", a3[2]);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "LinkQuality1: %u", a3[3]);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "LeaderCost: %u", a3[4]);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "IdSequence: %u", a3[5]);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "ActiveRouters: %u", a3[6]);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "SedBufferSize: %u", *(a3 + 4));
  return ot::Cli::Utils::OutputLine((a1 + 16), a2, "SedDatagramCount: %u", a3[10]);
}

uint64_t ot::Cli::Interpreter::OutputRoute(uint64_t a1, unsigned __int8 a2, unsigned __int8 *a3)
{
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "IdSequence: %u", *a3);
  result = ot::Cli::Utils::OutputLine((a1 + 16), a2, "RouteData:");
  v8 = a2 + 4;
  for (i = 0; i < a3[1]; ++i)
  {
    ot::Cli::Utils::OutputFormat((a1 + 16), v8, "- ");
    result = ot::Cli::Interpreter::OutputRouteData(a1, v8 + 2, &a3[2 * i + 2]);
  }

  return result;
}

uint64_t ot::Cli::Interpreter::OutputLeaderData(uint64_t a1, unsigned __int8 a2, unsigned __int8 *a3)
{
  v5 = a2;
  v3 = ot::ToUlong(*a3);
  ot::Cli::Utils::OutputLine((a1 + 16), v5, "PartitionId: 0x%08lx", v3);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "Weighting: %u", a3[4]);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "DataVersion: %u", a3[5]);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "StableDataVersion: %u", a3[6]);
  return ot::Cli::Utils::OutputLine((a1 + 16), a2, "LeaderRouterId: 0x%02x", a3[7]);
}

uint64_t ot::Cli::Interpreter::OutputNetworkDiagMacCounters(uint64_t result, unsigned __int8 a2, uint64_t a3)
{
  v5 = result;
  for (i = &ot::Cli::Interpreter::OutputNetworkDiagMacCounters(unsigned char,otNetworkDiagMacCounters const&)::kCounterNames; i != &ot::Cli::Interpreter::OutputNetworkDiagMleCounters(unsigned char,otNetworkDiagMleCounters const&)::kCounterNames; i += 2)
  {
    v4 = i[1];
    v3 = ot::ToUlong(*(a3 + *i));
    result = ot::Cli::Utils::OutputLine((v5 + 16), a2, "%s: %lu", v4, v3);
  }

  return result;
}

uint64_t ot::Cli::Interpreter::OutputNetworkDiagMleCounters(uint64_t result, unsigned __int8 a2, uint64_t a3)
{
  v3 = result;
  for (i = &ot::Cli::Interpreter::OutputNetworkDiagMleCounters(unsigned char,otNetworkDiagMleCounters const&)::kCounterNames; i != &ot::Cli::Interpreter::OutputNetworkDiagMleCounters(unsigned char,otNetworkDiagMleCounters const&)::kTimeCounterNames; i += 2)
  {
    result = ot::Cli::Utils::OutputLine((v3 + 16), a2, "%s: %u", i[1], *&(*i)[a3]);
  }

  for (j = &ot::Cli::Interpreter::OutputNetworkDiagMleCounters(unsigned char,otNetworkDiagMleCounters const&)::kTimeCounterNames; j != &ot::Cli::Interpreter::ProcessCommand(ot::Utils::CmdLineParser::Arg *)::kCommands; j += 2)
  {
    ot::Cli::Utils::OutputFormat((v3 + 16), "%s: ", j[1]);
    result = ot::Cli::Utils::OutputUint64Line((v3 + 16), *&(*j)[a3]);
  }

  return result;
}

uint64_t ot::Cli::Interpreter::OutputChildTableEntry(uint64_t a1, unsigned __int8 a2, unsigned __int16 *a3)
{
  ot::Cli::Utils::OutputLine((a1 + 16), "ChildId: 0x%04x", *a3 >> 7);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "Timeout: %u", *a3 & 0x1F);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "Link Quality: %u", (*a3 >> 5) & 3);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "Mode:");
  return ot::Cli::Interpreter::OutputMode(a1, a2 + 4, a3 + 2);
}

uint64_t ot::Cli::Interpreter::OutputRouteData(uint64_t a1, unsigned __int8 a2, unsigned __int8 *a3)
{
  ot::Cli::Utils::OutputLine((a1 + 16), "RouteId: 0x%02x", *a3);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "LinkQualityOut: %u", a3[1] & 3);
  ot::Cli::Utils::OutputLine((a1 + 16), a2, "LinkQualityIn: %u", (a3[1] >> 2) & 3);
  return ot::Cli::Utils::OutputLine((a1 + 16), a2, "RouteCost: %u", a3[1] >> 4);
}

ot::Cli::Interpreter *ot::Cli::Interpreter::Initialize(ot::Instance *a1, int (*a2)(void *, const char *, char *), void *a3)
{
  result = ot::Cli::Interpreter::Interpreter(&ot::Cli::sInterpreterRaw, a1, a2, a3);
  ot::Cli::Interpreter::sInterpreter = &ot::Cli::sInterpreterRaw;
  return result;
}

void ot::Cli::OutputImplementer::SetEmittingCommandOutput(ot::Cli::OutputImplementer *this)
{
  ;
}

{
  ot::Cli::OutputImplementer::SetEmittingCommandOutput(this);
}

uint64_t ot::TimerMilliContext::GetContext(ot::TimerMilliContext *this)
{
  return *(this + 3);
}

{
  return ot::TimerMilliContext::GetContext(this);
}

char *ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Interpreter>,(unsigned short)121>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 0x79, 0x18u, ot::BinarySearch::Compare<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Interpreter>>, a6);
}

{
  return ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Interpreter>,(unsigned short)121>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::Utils::OutputCommandTable<ot::Cli::Interpreter,(unsigned short)121>(uint64_t result, const char **a2)
{
  v2 = result;
  v4 = a2;
  v3 = a2 + 363;
  while (v4 != v3)
  {
    result = ot::Cli::Utils::CommandEntry<ot::Cli::Interpreter>::Compare(v4, "reset");
    if (result)
    {
      result = ot::Cli::Utils::OutputLine(v2, "%s", *v4);
    }

    v4 += 3;
  }

  return result;
}

{
  return ot::Cli::Utils::OutputCommandTable<ot::Cli::Interpreter,(unsigned short)121>(result, a2);
}

uint64_t ot::Cli::Interpreter::GetInterpreter(ot::Cli::Interpreter *this)
{
  if (!ot::Cli::Interpreter::sInterpreter)
  {
    __assert_rtn("GetInterpreter", "cli.hpp", 171, "sInterpreter != nullptr");
  }

  return ot::Cli::Interpreter::sInterpreter;
}

{
  return ot::Cli::Interpreter::GetInterpreter(this);
}

void otCliAppendResult(ot::Cli::Interpreter *a1)
{
  v2 = a1;
  Interpreter = ot::Cli::Interpreter::GetInterpreter(a1);
  ot::Cli::Interpreter::OutputResult(Interpreter, v2);
}

void otCliPlatLogv(ot::Cli::Interpreter *a1, uint64_t a2, const char *a3, char *a4)
{
  IsInitialized = ot::Cli::Interpreter::IsInitialized(a1);
  if (IsInitialized)
  {
    Interpreter = ot::Cli::Interpreter::GetInterpreter(IsInitialized);
    ot::Cli::OutputImplementer::SetEmittingCommandOutput(Interpreter);
    v7 = ot::Cli::Interpreter::GetInterpreter(v6);
    v8 = ot::Cli::Utils::OutputFormatV((v7 + 16), a3, a4);
    v9 = ot::Cli::Interpreter::GetInterpreter(v8);
    v10 = ot::Cli::Utils::OutputNewLine((v9 + 16));
    v11 = ot::Cli::Interpreter::GetInterpreter(v10);
    ot::Cli::OutputImplementer::SetEmittingCommandOutput(v11);
  }
}

BOOL ot::Cli::Interpreter::IsInitialized(ot::Cli::Interpreter *this)
{
  return ot::Cli::Interpreter::sInterpreter != 0;
}

{
  return ot::Cli::Interpreter::IsInitialized(this);
}

ot::Timer *ot::Timer::Timer(ot::Timer *this, ot::Instance *a2, void (*a3)(ot::Timer *))
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  result = this;
  *this = a3;
  *(this + 2) = this;
  return result;
}

uint64_t std::stringbuf::~stringbuf(uint64_t a1)
{
  std::stringbuf::~stringbuf(a1);
  return a1;
}

{
  std::string::~string((a1 + 64));
  std::streambuf::~streambuf();
  return a1;
}

uint64_t ot::Cli::Utils::ProcessSet<char const*>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, unsigned int (*a3)(uint64_t, uint64_t))
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v8 = ot::Utils::CmdLineParser::Arg::ParseAs<char const*>(a2, &v7);
  if (!v8)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 8)))
    {
      v5 = v9;
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      return v5(InstancePtr, v7);
    }

    else
    {
      return 7;
    }
  }

  return v8;
}

{
  return ot::Cli::Utils::ProcessSet<char const*>(a1, a2, a3);
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAs<char const*>(ot::Utils::CmdLineParser::Arg *a1, void *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a1))
  {
    return 7;
  }

  else
  {
    *a2 = ot::Utils::CmdLineParser::Arg::GetCString(a1);
    return 0;
  }
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAs<char const*>(a1, a2);
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsHexString(ot::Utils::CmdLineParser **this, char *a2, unsigned __int16 a3)
{
  return ot::Utils::CmdLineParser::ParseAsHexString(*this, a2, a3);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsHexString(this, a2, a3);
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAs<unsigned char>(ot::Utils::CmdLineParser **a1, char *a2, unsigned __int8 *a3)
{
  return ot::Utils::CmdLineParser::Arg::ParseAsUint8(a1, a2, a3);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAs<unsigned char>(a1, a2, a3);
}

uint64_t ot::Cli::Utils::ProcessGet<unsigned short>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t))
{
  v8 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v6 = ot::Cli::Utils::FormatStringFor<unsigned short>();
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    v4 = a3(InstancePtr);
    ot::Cli::Utils::OutputLine(a1, v6, v4);
  }

  else
  {
    return 7;
  }

  return v8;
}

{
  return ot::Cli::Utils::ProcessGet<unsigned short>(a1, a2, a3);
}

const char *ot::Cli::Utils::FormatStringFor<unsigned short>()
{
  return "%u";
}

{
  return ot::Cli::Utils::FormatStringFor<unsigned short>();
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAs<unsigned int>(ot::Utils::CmdLineParser **a1, char *a2, unsigned __int8 *a3)
{
  return ot::Utils::CmdLineParser::Arg::ParseAsUint32(a1, a2, a3);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAs<unsigned int>(a1, a2, a3);
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAs<unsigned short>(ot::Utils::CmdLineParser **a1, char *a2, unsigned __int8 *a3)
{
  return ot::Utils::CmdLineParser::Arg::ParseAsUint16(a1, a2, a3);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAs<unsigned short>(a1, a2, a3);
}

const char *ot::Cli::Utils::FormatStringFor<unsigned char>()
{
  return "%u";
}

{
  return ot::Cli::Utils::FormatStringFor<unsigned char>();
}

uint64_t ot::Cli::Utils::ProcessGet<unsigned int>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t))
{
  v9 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v7 = ot::Cli::Utils::FormatStringFor<unsigned int>();
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    v4 = a3(InstancePtr);
    v5 = ot::ToUlong(v4);
    ot::Cli::Utils::OutputLine(a1, v7, v5);
  }

  else
  {
    return 7;
  }

  return v9;
}

{
  return ot::Cli::Utils::ProcessGet<unsigned int>(a1, a2, a3);
}

const char *ot::Cli::Utils::FormatStringFor<unsigned int>()
{
  return "%lu";
}

{
  return ot::Cli::Utils::FormatStringFor<unsigned int>();
}

uint64_t ot::Cli::Utils::ProcessGet<signed char>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t))
{
  v8 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v6 = ot::Cli::Utils::FormatStringFor<signed char>();
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    v4 = a3(InstancePtr);
    ot::Cli::Utils::OutputLine(a1, v6, v4);
  }

  else
  {
    return 7;
  }

  return v8;
}

{
  return ot::Cli::Utils::ProcessGet<signed char>(a1, a2, a3);
}

uint64_t ot::Cli::Utils::ProcessSet<signed char>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v8 = ot::Utils::CmdLineParser::Arg::ParseAs<signed char>(a2, &v7, a3);
  if (!v8)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 1)))
    {
      v5 = v9;
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      return (v5)(InstancePtr, v7);
    }

    else
    {
      return 7;
    }
  }

  return v8;
}

{
  return ot::Cli::Utils::ProcessSet<signed char>(a1, a2, a3);
}

const char *ot::Cli::Utils::FormatStringFor<signed char>()
{
  return "%d";
}

{
  return ot::Cli::Utils::FormatStringFor<signed char>();
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAs<signed char>(ot::Utils::CmdLineParser **a1, signed __int8 *a2, unsigned __int8 *a3)
{
  return ot::Utils::CmdLineParser::Arg::ParseAsInt8(a1, a2, a3);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAs<signed char>(a1, a2, a3);
}

void (__cdecl ***std::ios::basic_ios[abi:dn200100](void (__cdecl ***a1)(std::ios_base *__hidden this)))(std::ios_base *__hidden this)
{
  std::ios_base::ios_base[abi:dn200100](a1);
  result = a1;
  return result;
}

void *std::iostream::basic_iostream[abi:dn200100](void *a1, void *a2, void *a3)
{
  std::istream::basic_istream[abi:dn200100](a1, a2 + 1, a3);
  std::ostream::basic_ostream[abi:dn200100](a1 + 2, a2 + 3);
  result = a1;
  *a1 = *a2;
  *(a1 + *(*a1 - 24)) = a2[5];
  a1[2] = a2[6];
  return result;
}

uint64_t std::stringbuf::basic_stringbuf[abi:dn200100](uint64_t a1, int a2)
{
  std::stringbuf::basic_stringbuf[abi:dn200100](a1, a2);
  return a1;
}

{
  std::streambuf::basic_streambuf();
  std::string::basic_string[abi:dn200100]((a1 + 64));
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:dn200100](a1);
  return a1;
}

void (__cdecl ***std::ios_base::ios_base[abi:dn200100](void (__cdecl ***result)(std::ios_base *__hidden this)))(std::ios_base *__hidden this)
{
  result[6] = 0;
  return result;
}

void *std::istream::basic_istream[abi:dn200100](void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  *(a1 + *(*a1 - 24)) = a2[1];
  a1[1] = 0;
  std::ios::init[abi:dn200100]((a1 + *(*a1 - 24)), a3);
  return a1;
}

void *std::ostream::basic_ostream[abi:dn200100](void *result, void *a2)
{
  *result = *a2;
  *(result + *(*result - 24)) = a2[1];
  return result;
}

uint64_t std::ios::init[abi:dn200100](std::ios_base *a1, void *a2)
{
  std::ios_base::init(a1, a2);
  a1[1].__vftable = 0;
  return std::_SentinelValueFill<std::char_traits<char>>::__init[abi:dn200100](&a1[1].__fmtflags_);
}

uint64_t std::_SentinelValueFill<std::char_traits<char>>::__init[abi:dn200100](_DWORD *a1)
{
  result = std::char_traits<char>::eof[abi:dn200100]();
  *a1 = result;
  return result;
}

void std::stringbuf::__init_buf_ptrs[abi:dn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  std::string::data[abi:dn200100]((a1 + 64));
  v6 = v1;
  v5 = std::string::size[abi:dn200100](a1 + 64);
  if ((*(a1 + 96) & 8) != 0)
  {
    *(a1 + 88) = v6 + v5;
    std::streambuf::setg[abi:dn200100](a1, v6, v6, *(a1 + 88));
  }

  if ((*(a1 + 96) & 0x10) != 0)
  {
    *(a1 + 88) = v6 + v5;
    v2 = std::string::capacity[abi:dn200100](a1 + 64);
    std::string::resize[abi:dn200100]((a1 + 64), v2);
    v3 = std::string::size[abi:dn200100](a1 + 64);
    std::streambuf::setp[abi:dn200100](a1, v6, v6 + v3);
    if ((*(a1 + 96) & 3) != 0)
    {
      while (v5 > 0x7FFFFFFF)
      {
        std::streambuf::pbump[abi:dn200100](a1, 0x7FFFFFFF);
        v5 -= 0x7FFFFFFFLL;
      }

      if (v5)
      {
        std::streambuf::pbump[abi:dn200100](a1, v5);
      }
    }
  }
}

void std::streambuf::setg[abi:dn200100](void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!std::__is_valid_range[abi:dn200100]<char>(a2, a3))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/streambuf:271: assertion std::__is_valid_range(__gbeg, __gnext) failed: [gbeg, gnext) must be a valid range\n");
  }

  if (!std::__is_valid_range[abi:dn200100]<char>(a2, a4))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/streambuf:272: assertion std::__is_valid_range(__gbeg, __gend) failed: [gbeg, gend) must be a valid range\n");
  }

  if (!std::__is_valid_range[abi:dn200100]<char>(a3, a4))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/streambuf:273: assertion std::__is_valid_range(__gnext, __gend) failed: [gnext, gend) must be a valid range\n");
  }

  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
}

uint64_t std::string::capacity[abi:dn200100](uint64_t a1)
{
  if (std::string::__is_long[abi:dn200100](a1))
  {
    v2 = std::string::__get_long_cap[abi:dn200100](a1);
  }

  else
  {
    v2 = 23;
  }

  return v2 - 1;
}

void std::streambuf::setp[abi:dn200100](void *a1, uint64_t a2, uint64_t a3)
{
  if (!std::__is_valid_range[abi:dn200100]<char>(a2, a3))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/streambuf:289: assertion std::__is_valid_range(__pbeg, __pend) failed: [pbeg, pend) must be a valid range\n");
  }

  a1[6] = a2;
  a1[5] = a2;
  a1[7] = a3;
}

BOOL std::__is_valid_range[abi:dn200100]<char>(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  return !std::__less<void,void>::operator()[abi:dn200100]<char const*,char const*>(&v3, &v4, &v5);
}

void *std::__put_character_sequence[abi:dn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  std::ostream::sentry::sentry();
  if (std::ostream::sentry::operator BOOL[abi:dn200100](v12))
  {
    std::ostreambuf_iterator<char>::ostreambuf_iterator[abi:dn200100](&v10, v15);
    v9 = v14;
    if ((std::ios_base::flags[abi:dn200100](v15 + *(*v15 - 24)) & 0xB0) == 0x20)
    {
      v8 = v14 + v13;
    }

    else
    {
      v8 = v14;
    }

    v6 = v14 + v13;
    v7 = (v15 + *(*v15 - 24));
    v3 = std::ios::fill[abi:dn200100](v7);
    v11 = std::__pad_and_output[abi:dn200100]<char,std::char_traits<char>>(v10, v9, v8, v6, v7, v3);
    if (std::ostreambuf_iterator<char>::failed[abi:dn200100](&v11))
    {
      std::ios::setstate[abi:dn200100]((v15 + *(*v15 - 24)), 5);
    }
  }

  v5 = v15;
  std::ostream::sentry::~sentry();
  return v5;
}

uint64_t std::__pad_and_output[abi:dn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::string::value_type a6)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  if (!a1)
  {
    return 0;
  }

  v15 = v18 - v20;
  v14 = std::ios_base::width[abi:dn200100](v17);
  if (v14 <= v18 - v20)
  {
    v14 = 0;
  }

  else
  {
    v14 -= v15;
  }

  v13 = v19 - v20;
  if (v19 - v20 > 0 && std::streambuf::sputn[abi:dn200100](v21, v20, v13) != v13)
  {
    return 0;
  }

  if (v14 <= 0)
  {
    goto LABEL_14;
  }

  std::string::basic_string[abi:dn200100](&v12, v14, v16);
  v10 = v21;
  std::string::data[abi:dn200100](&v12);
  v7 = std::streambuf::sputn[abi:dn200100](v10, v6, v14);
  if (v7 == v14)
  {
    v11 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v11 = 1;
  }

  std::string::~string(&v12);
  if (!v11)
  {
LABEL_14:
    v13 = v18 - v19;
    if (v18 - v19 <= 0 || (v8 = std::streambuf::sputn[abi:dn200100](v21, v19, v13), v8 == v13))
    {
      std::ios_base::width[abi:dn200100](v17, 0);
      return v21;
    }

    else
    {
      v21 = 0;
      return 0;
    }
  }

  return v22;
}

uint64_t *std::ostreambuf_iterator<char>::ostreambuf_iterator[abi:dn200100](uint64_t *a1, void *a2)
{
  std::ostreambuf_iterator<char>::ostreambuf_iterator[abi:dn200100](a1, a2);
  return a1;
}

{
  v2 = std::ios::rdbuf[abi:dn200100](a2 + *(*a2 - 24));
  result = a1;
  *a1 = v2;
  return result;
}

uint64_t std::ios::fill[abi:dn200100](const std::ios_base *a1)
{
  if (!std::_SentinelValueFill<std::char_traits<char>>::__is_set[abi:dn200100](&a1[1].__fmtflags_))
  {
    v1 = std::ios::widen[abi:dn200100](a1, 32);
    ot::Mac::ChannelMask::ChannelMask(&a1[1].__fmtflags_, v1);
  }

  return std::_SentinelValueFill<std::char_traits<char>>::__get[abi:dn200100](&a1[1].__fmtflags_);
}

ot::Spinel::SpinelInterface *std::string::basic_string[abi:dn200100](ot::Spinel::SpinelInterface *a1, std::string::size_type a2, std::string::value_type a3)
{
  std::string::basic_string[abi:dn200100](a1, a2, a3);
  return a1;
}

{
  std::allocator<char>::allocator[abi:dn200100](a1);
  std::string::__init(a1, a2, a3);
  return a1;
}

uint64_t std::ios_base::width[abi:dn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a1 + 24) = a2;
  return v3;
}

uint64_t std::ios::widen[abi:dn200100](const std::ios_base *a1, char a2)
{
  v7 = a1;
  v6 = a2;
  std::ios_base::getloc(a1);
  v2 = std::use_facet[abi:dn200100]<std::ctype<char>>(&v5);
  v4 = std::ctype<char>::widen[abi:dn200100](v2, v6);
  std::locale::~locale(&v5);
  return v4;
}

uint64_t std::ios::fill[abi:dn200100](const std::ios_base *a1, char a2)
{
  if (!std::_SentinelValueFill<std::char_traits<char>>::__is_set[abi:dn200100](&a1[1].__fmtflags_))
  {
    v2 = std::ios::widen[abi:dn200100](a1, 32);
    ot::Mac::ChannelMask::ChannelMask(&a1[1].__fmtflags_, v2);
  }

  v5 = std::_SentinelValueFill<std::char_traits<char>>::__get[abi:dn200100](&a1[1].__fmtflags_);
  ot::Mac::ChannelMask::ChannelMask(&a1[1].__fmtflags_, a2);
  return v5;
}

const char *ot::Cli::Utils::FormatStringFor<char const*>()
{
  return "%s";
}

{
  return ot::Cli::Utils::FormatStringFor<char const*>();
}

uint64_t ot::Cli::Utils::CommandEntry<ot::Cli::Interpreter>::Compare(const char **a1, const char *a2)
{
  return strcmp(a2, *a1);
}

{
  return ot::Cli::Utils::CommandEntry<ot::Cli::Interpreter>::Compare(a1, a2);
}

uint64_t ot::Cli::Coap::Coap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::Cli::Utils::Utils(a1, a2, a3);
  *(a1 + 16) = 1;
  *(a1 + 17) = 1;
  ot::Cli::Utils::ClearAllBytes<otCoapResource>((a1 + 40));
  ot::Cli::Utils::ClearAllBytes<char [32]>((a1 + 72));
  strncpy((a1 + 104), "0", 0x10uLL);
  result = a1;
  *(a1 + 119) = 0;
  return result;
}

{
  ot::Cli::Coap::Coap(a1, a2, a3);
  return a1;
}

double ot::Cli::Utils::ClearAllBytes<otCoapResource>(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

{
  return ot::Cli::Utils::ClearAllBytes<otCoapResource>(a1);
}

double ot::Cli::Utils::ClearAllBytes<char [32]>(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

{
  return ot::Cli::Utils::ClearAllBytes<char [32]>(a1);
}

uint64_t ot::Cli::Coap::PrintPayload(ot::Cli::Utils *a1, uint64_t a2)
{
  v7 = 0;
  Length = otMessageGetLength(a2);
  v6 = Length - otMessageGetOffset(a2);
  if (v6)
  {
    ot::Cli::Utils::OutputFormat(a1, " with payload: ");
    while (v6)
    {
      v8 = ot::Min<unsigned short>(v6, 0x10u);
      Offset = otMessageGetOffset(a2);
      otMessageRead(a2, Offset + v7, v10, v8);
      ot::Cli::Utils::OutputBytes(a1, v10, v8);
      v6 -= v8;
      v7 += v8;
    }
  }

  return ot::Cli::Utils::OutputNewLine(a1);
}

uint64_t ot::Cli::Coap::Process<7108473799409246994ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    if (*(a1 + 40))
    {
      ot::Cli::Utils::OutputLine(a1, "%s", *(a1 + 40));
    }

    else
    {
      ot::Cli::Utils::OutputLine(a1, "%s", "");
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::GetLength(a2) < 32)
  {
    *(a1 + 40) = a1 + 72;
    *(a1 + 56) = a1;
    *(a1 + 48) = ot::Cli::Coap::HandleRequest;
    CString = ot::Utils::CmdLineParser::Arg::GetCString(a2);
    strncpy((a1 + 72), CString, 0x1FuLL);
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    otCoapAddResource(InstancePtr, a1 + 40);
  }

  else
  {
    return 7;
  }

  return v6;
}

void ot::Cli::Coap::HandleRequest(char *a1, uint64_t a2, uint64_t a3)
{
  ot::Cli::Coap::HandleRequest(a1, a2, a3);
}

{
  inited = 0;
  v11 = 0;
  v10 = 0;
  ot::Cli::Utils::OutputFormat(a1, "coap request from ");
  ot::Cli::Utils::OutputIp6Address(a1, a3 + 16);
  ot::Cli::Utils::OutputFormat(a1, " ");
  Code = otCoapMessageGetCode();
  switch(Code)
  {
    case 1:
      ot::Cli::Utils::OutputFormat(a1, "GET");
      break;
    case 2:
      ot::Cli::Utils::OutputFormat(a1, "POST");
      break;
    case 3:
      ot::Cli::Utils::OutputFormat(a1, "PUT");
      break;
    case 4:
      ot::Cli::Utils::OutputFormat(a1, "DELETE");
      break;
    default:
      ot::Cli::Utils::OutputLine(a1, "Undefined");
      inited = 6;
      goto LABEL_22;
  }

  ot::Cli::Coap::PrintPayload(a1, a2);
  if (!otCoapMessageGetType() || otCoapMessageGetCode() == 1)
  {
    if (otCoapMessageGetCode() == 1)
    {
      v10 = 69;
    }

    else
    {
      v10 = 68;
    }

    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    v11 = otCoapNewMessage(InstancePtr, 0);
    if (v11)
    {
      inited = otCoapMessageInitResponse(v11, a2, 2u, v10);
      if (!inited)
      {
        if (v10 != 69 || (inited = otCoapMessageSetPayloadMarker()) == 0 && (v4 = strlen(a1 + 104), (inited = otMessageAppend(v11, a1 + 104, v4)) == 0))
        {
          v7 = ot::Cli::Utils::GetInstancePtr(a1);
          ResponseTxParameters = ot::Cli::Coap::GetResponseTxParameters(a1);
          inited = otCoapSendResponseWithParameters(v7, v11, a3, ResponseTxParameters);
        }
      }
    }

    else
    {
      inited = 3;
    }
  }

LABEL_22:
  if (inited)
  {
    if (v11)
    {
      v6 = otThreadErrorToString(inited);
      ot::Cli::Utils::OutputLine(a1, "coap send response error %d: %s", inited, v6);
      otMessageFree(v11);
    }
  }

  else if (v10 >= 64)
  {
    ot::Cli::Utils::OutputLine(a1, "coap response sent");
  }
}

uint64_t ot::Cli::Coap::Process<7568770ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v5 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    ot::Cli::Utils::OutputLine(a1, "%s", (a1 + 104));
  }

  else if (ot::Utils::CmdLineParser::Arg::GetLength(a2) < 0x10uLL)
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(a2);
    strncpy((a1 + 104), CString, 0x10uLL);
    *(a1 + 119) = 0;
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t ot::Cli::Coap::Process<1864361470ull>(ot::Cli::Utils *a1)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  otCoapRemoveResource(InstancePtr, a1 + 40);
  v2 = ot::Cli::Utils::GetInstancePtr(a1);
  return otCoapStop(v2);
}

uint64_t ot::Cli::Coap::Process<16542423019117308726ull>(ot::Cli::Utils *a1, uint64_t a2)
{
  v12 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "request"))
  {
    v10 = a1 + 20;
    v11 = a1 + 16;
  }

  else
  {
    if (!ot::Utils::CmdLineParser::Arg::operator==(a2, "response"))
    {
      return 7;
    }

    v10 = a1 + 28;
    v11 = a1 + 17;
  }

  if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 8)))
  {
    goto LABEL_16;
  }

  if (ot::Utils::CmdLineParser::Arg::operator==((a2 + 8), "default"))
  {
    *v11 = 1;
LABEL_16:
    CString = ot::Utils::CmdLineParser::Arg::GetCString(a2);
    ot::Cli::Utils::OutputLine(a1, "Transmission parameters for %s:", CString);
    if (*v11)
    {
      ot::Cli::Utils::OutputLine(a1, "default");
    }

    else
    {
      v7 = ot::ToUlong(*v10);
      ot::Cli::Utils::OutputLine(a1, "ACK_TIMEOUT=%lu ms, ACK_RANDOM_FACTOR=%u/%u, MAX_RETRANSMIT=%u", v7, v10[4], v10[5], v10[6]);
    }

    return v12;
  }

  v12 = ot::Utils::CmdLineParser::Arg::ParseAsUint32((a2 + 8), v10, v2);
  if (!v12)
  {
    v12 = ot::Utils::CmdLineParser::Arg::ParseAsUint8((a2 + 16), v10 + 4, v3);
    if (!v12)
    {
      v12 = ot::Utils::CmdLineParser::Arg::ParseAsUint8((a2 + 24), v10 + 5, v4);
      if (!v12)
      {
        v12 = ot::Utils::CmdLineParser::Arg::ParseAsUint8((a2 + 32), v10 + 6, v5);
        if (!v12)
        {
          if (v10[4] <= v10[5])
          {
            return 7;
          }

          *v11 = 0;
          goto LABEL_16;
        }
      }
    }
  }

  return v12;
}

uint64_t ot::Cli::Coap::ProcessRequest(ot::Cli::Utils *a1, const char **a2, unsigned int a3)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  appended = 0;
  v23 = 0;
  Length = 0;
  v18 = 0;
  *__dst = *"test";
  v29 = xmmword_10044AFC9;
  v17 = 1;
  appended = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(a2, &v16);
  if (!appended)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v26 + 1)))
    {
      appended = 7;
      goto LABEL_25;
    }

    if (ot::Utils::CmdLineParser::Arg::GetLength(v26 + 1) >= 0x20uLL)
    {
      appended = 7;
      goto LABEL_25;
    }

    CString = ot::Utils::CmdLineParser::Arg::GetCString((v26 + 1));
    strcpy(__dst, CString);
    if (!ot::Utils::CmdLineParser::Arg::IsEmpty((v26 + 2)) && ot::Utils::CmdLineParser::Arg::operator==(v26 + 2, "con"))
    {
      v17 = 0;
    }

    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    v23 = otCoapNewMessage(InstancePtr, 0);
    if (!v23)
    {
      appended = 3;
      goto LABEL_25;
    }

    otCoapMessageInit(v23, v17, v25);
    otCoapMessageGenerateToken(v23, 2u);
    v18 = ot::StringFind(__dst, 0x3F);
    if (v18)
    {
      v5 = v18;
      v18 = (v18 + 1);
      *v5 = 0;
      appended = otCoapMessageAppendUriPathOptions(v23, __dst);
      if (appended)
      {
        goto LABEL_25;
      }

      appended = otCoapMessageAppendUriQueryOptions(v23, v18);
      if (appended)
      {
        goto LABEL_25;
      }
    }

    else
    {
      appended = otCoapMessageAppendUriPathOptions(v23, __dst);
      if (appended)
      {
        goto LABEL_25;
      }
    }

    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v26 + 3)) || (Length = ot::Utils::CmdLineParser::Arg::GetLength(v26 + 3)) == 0 || (appended = otCoapMessageSetPayloadMarker()) == 0)
    {
      if (!Length || (v14 = v23, v6 = ot::Utils::CmdLineParser::Arg::GetCString((v26 + 3)), (appended = otMessageAppend(v14, v6, Length)) == 0))
      {
        ot::Cli::Utils::ClearAllBytes<otMessageInfo>(v20);
        v21 = v16;
        v22 = 5683;
        if (v17 && v25 != 1)
        {
          v11 = ot::Cli::Utils::GetInstancePtr(a1);
          v10 = v23;
          ResponseTxParameters = ot::Cli::Coap::GetResponseTxParameters(a1);
          appended = otCoapSendRequestWithParameters(v11, v10, v20, 0, 0, ResponseTxParameters);
        }

        else
        {
          v13 = ot::Cli::Utils::GetInstancePtr(a1);
          v12 = v23;
          RequestTxParameters = ot::Cli::Coap::GetRequestTxParameters(a1);
          appended = otCoapSendRequestWithParameters(v13, v12, v20, ot::Cli::Coap::HandleResponse, a1, RequestTxParameters);
        }
      }
    }
  }

LABEL_25:
  if (appended && v23)
  {
    otMessageFree(v23);
  }

  return appended;
}

void *ot::Cli::Utils::ClearAllBytes<otMessageInfo>(void *a1)
{
  return memset(a1, 0, 0x26uLL);
}

{
  return ot::Cli::Utils::ClearAllBytes<otMessageInfo>(a1);
}

uint64_t ot::Cli::Coap::GetRequestTxParameters(ot::Cli::Coap *this)
{
  if (*(this + 16))
  {
    return 0;
  }

  else
  {
    return this + 20;
  }
}

{
  return ot::Cli::Coap::GetRequestTxParameters(this);
}

uint64_t ot::Cli::Coap::GetResponseTxParameters(ot::Cli::Coap *this)
{
  if (*(this + 17))
  {
    return 0;
  }

  else
  {
    return this + 28;
  }
}

{
  return ot::Cli::Coap::GetResponseTxParameters(this);
}

uint64_t ot::Cli::Coap::Process(ot::Cli::Coap *this, const char **a2)
{
  v17 = this;
  v16 = a2;
  v15 = 35;
  v14 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2) || ot::Utils::CmdLineParser::Arg::operator==(v16, "help"))
  {
    ot::Cli::Utils::OutputCommandTable<ot::Cli::Coap,(unsigned short)9>(this, &ot::Cli::Coap::Process(ot::Utils::CmdLineParser::Arg *)::kCommands);
    if (ot::Utils::CmdLineParser::Arg::IsEmpty(v16))
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(v16);
    v14 = ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Coap>,(unsigned short)9>(&CString, &ot::Cli::Coap::Process(ot::Utils::CmdLineParser::Arg *)::kCommands, v3, v4, v5, v6);
    if (v14)
    {
      v10 = *(v14 + 1);
      v7 = *(v14 + 2);
      v11 = (this + (v7 >> 1));
      if (v7)
      {
        return (*(*v11 + v10))(v11, v16 + 1);
      }

      else
      {
        return v10(v11, v16 + 1);
      }
    }
  }

  return v15;
}

uint64_t ot::Cli::Utils::OutputCommandTable<ot::Cli::Coap,(unsigned short)9>(uint64_t result, const char **a2)
{
  v2 = result;
  v4 = a2;
  v3 = a2 + 27;
  while (v4 != v3)
  {
    result = ot::Cli::Utils::CommandEntry<ot::Cli::Coap>::Compare(v4, "reset");
    if (result)
    {
      result = ot::Cli::Utils::OutputLine(v2, "%s", *v4);
    }

    v4 += 3;
  }

  return result;
}

{
  return ot::Cli::Utils::OutputCommandTable<ot::Cli::Coap,(unsigned short)9>(result, a2);
}

char *ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Coap>,(unsigned short)9>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 9, 0x18u, ot::BinarySearch::Compare<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Coap>>, a6);
}

{
  return ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Coap>,(unsigned short)9>(a1, a2, a3, a4, a5, a6);
}

ot::Cli::Utils *ot::Cli::Coap::HandleResponse(ot::Cli::Utils *result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result;
  if (a4)
  {
    v4 = otThreadErrorToString(a4);
    return ot::Cli::Utils::OutputLine(v5, "coap receive response error %d: %s", a4, v4);
  }

  else if (a3)
  {
    if (a2)
    {
      ot::Cli::Utils::OutputFormat(result, "coap response from ");
      ot::Cli::Utils::OutputIp6Address(v5, a3 + 16);
      return ot::Cli::Coap::PrintPayload(v5, a2);
    }
  }

  return result;
}

uint64_t ot::Cli::Utils::CommandEntry<ot::Cli::Coap>::Compare(const char **a1, const char *a2)
{
  return strcmp(a2, *a1);
}

{
  return ot::Cli::Utils::CommandEntry<ot::Cli::Coap>::Compare(a1, a2);
}

uint64_t ot::Cli::Commissioner::Process<7108469486593286647ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v14 = a1;
  v13 = a2;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v12 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(a2, &v11, a3);
  if (!v12)
  {
    v12 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v13 + 1, &v10, v3);
    if (!v12)
    {
      v12 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v13 + 2, &v9, v4);
      if (!v12)
      {
        v12 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(v13 + 3, v8);
        if (!v12)
        {
          InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
          return otCommissionerAnnounceBegin(InstancePtr, v11, v10, v9, v8);
        }
      }
    }
  }

  return v12;
}

uint64_t ot::Cli::Commissioner::Process<130900079721176ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v16 = a1;
  v15 = a2;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v14 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(a2, &v13, a3);
  if (!v14)
  {
    v14 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v15 + 1, &v12, v3);
    if (!v14)
    {
      v14 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v15 + 2, &v11, v4);
      if (!v14)
      {
        v14 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v15 + 3, &v10, v5);
        if (!v14)
        {
          v14 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(v15 + 4, v9);
          if (!v14)
          {
            InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
            return otCommissionerEnergyScan(InstancePtr, v13, v12, v11, v10, v9, ot::Cli::Commissioner::HandleEnergyReport, a1);
          }
        }
      }
    }
  }

  return v14;
}

uint64_t ot::Cli::Commissioner::Process<123344129789161ull>(ot::Cli::Utils *a1, const char **a2)
{
  v21 = a1;
  v20 = a2;
  v19 = 0;
  v18 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "table"))
  {
    v15 = 0;
    ot::Cli::Utils::OutputTableHeader<(unsigned char)3>(a1, ot::Cli::Commissioner::Process<123344129789161ull>(ot::Utils::CmdLineParser::Arg *)::kJoinerTableTitles, ot::Cli::Commissioner::Process<123344129789161ull>(ot::Utils::CmdLineParser::Arg *)::kJoinerTableColumnWidths);
    while (1)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      if (otCommissionerGetNextJoinerInfo(InstancePtr, &v15, v22))
      {
        break;
      }

      if (*v22)
      {
        if (*v22 == 1)
        {
          ot::Cli::Utils::OutputFormat(a1, "|      ");
          ot::Cli::Utils::OutputExtAddress(a1, &v23);
        }

        else if (*v22 == 2)
        {
          ot::Cli::Utils::OutputFormat(a1, "| 0x%08lx%08lx/%2u", HIDWORD(v23), v23, v24);
        }
      }

      else
      {
        ot::Cli::Utils::OutputFormat(a1, "| %21s", "*");
      }

      v3 = ot::ToUlong(v26);
      ot::Cli::Utils::OutputFormat(a1, " | %32s | %10lu |", v25, v3);
      ot::Cli::Utils::OutputNewLine(a1);
    }

    return 0;
  }

  else if (ot::Utils::CmdLineParser::Arg::IsEmpty((v20 + 1)))
  {
    return 7;
  }

  else
  {
    ot::Cli::Utils::ClearAllBytes<otJoinerDiscerner>(&v16);
    if (ot::Utils::CmdLineParser::Arg::operator==(v20 + 1, "*"))
    {
      goto LABEL_19;
    }

    v19 = ot::Cli::Utils::ParseJoinerDiscerner(v20 + 1, &v16);
    if (v19 == 23)
    {
      v19 = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(v20 + 1, v27);
      v18 = v27;
    }

    if (!v19)
    {
LABEL_19:
      if (ot::Utils::CmdLineParser::Arg::operator==(v20, "add"))
      {
        v14 = 120;
        if (ot::Utils::CmdLineParser::Arg::IsEmpty((v20 + 2)))
        {
          return 7;
        }

        else if (ot::Utils::CmdLineParser::Arg::IsEmpty((v20 + 3)) || (v19 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v20 + 3, &v14, v4)) == 0)
        {
          if (v17)
          {
            v12 = ot::Cli::Utils::GetInstancePtr(a1);
            CString = ot::Utils::CmdLineParser::Arg::GetCString((v20 + 2));
            return otCommissionerAddJoinerWithDiscerner(v12, &v16, CString, v14);
          }

          else
          {
            v11 = ot::Cli::Utils::GetInstancePtr(a1);
            v10 = v18;
            v6 = ot::Utils::CmdLineParser::Arg::GetCString((v20 + 2));
            return otCommissionerAddJoiner(v11, v10, v6, v14);
          }
        }
      }

      else if (ot::Utils::CmdLineParser::Arg::operator==(v20, "remove"))
      {
        if (v17)
        {
          v7 = ot::Cli::Utils::GetInstancePtr(a1);
          return otCommissionerRemoveJoinerWithDiscerner(v7, &v16);
        }

        else
        {
          v8 = ot::Cli::Utils::GetInstancePtr(a1);
          return otCommissionerRemoveJoiner(v8, v18);
        }
      }

      else
      {
        return 7;
      }
    }
  }

  return v19;
}

void *ot::Cli::Utils::ClearAllBytes<otJoinerDiscerner>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  return ot::Cli::Utils::ClearAllBytes<otJoinerDiscerner>(result);
}

uint64_t ot::Cli::Commissioner::Process<32002607674527349ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v12 = a1;
  v11 = a2;
  memset(&v10[1] + 1, 0, 5);
  while (!ot::Utils::CmdLineParser::Arg::IsEmpty(v11))
  {
    if (HIBYTE(v10[1]) >= 0x20uLL)
    {
      *&v10[2] = 3;
      return *&v10[2];
    }

    if (ot::Utils::CmdLineParser::Arg::operator==(v11, "locator"))
    {
      v2 = HIBYTE(v10[1]);
      ++HIBYTE(v10[1]);
      v13[v2] = 9;
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v11, "sessionid"))
    {
      v3 = HIBYTE(v10[1]);
      ++HIBYTE(v10[1]);
      v13[v3] = 11;
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v11, "steeringdata"))
    {
      v4 = HIBYTE(v10[1]);
      ++HIBYTE(v10[1]);
      v13[v4] = 8;
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v11, "joinerudpport"))
    {
      v5 = HIBYTE(v10[1]);
      ++HIBYTE(v10[1]);
      v13[v5] = 18;
    }

    else
    {
      if (!ot::Utils::CmdLineParser::Arg::operator==(v11, "-x"))
      {
        *&v10[2] = 7;
        return *&v10[2];
      }

      v11 = (v11 + 8);
      v10[0] = 32 - HIBYTE(v10[1]);
      *&v10[2] = ot::Utils::CmdLineParser::Arg::ParseAsHexString(v11, v10, &v13[HIBYTE(v10[1])], v6);
      if (*&v10[2])
      {
        return *&v10[2];
      }

      *(&v10[1] + 1) = (HIBYTE(v10[1]) + LOBYTE(v10[0]));
    }

    v11 = (v11 + 8);
  }

  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  *&v10[2] = otCommissionerSendMgmtGet(InstancePtr, v13, HIBYTE(v10[1]));
  return *&v10[2];
}

uint64_t ot::Cli::Commissioner::Process<32002658413534849ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  v12 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    ot::Cli::Utils::ClearAllBytes<otCommissioningDataset>(&v17);
    while (!ot::Utils::CmdLineParser::Arg::IsEmpty(v14))
    {
      if (ot::Utils::CmdLineParser::Arg::operator==(v14, "locator"))
      {
        v14 = (v14 + 8);
        v21 = v21 & 0xFE | 1;
        v13 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v14, &v17, v2);
        if (v13)
        {
          return v13;
        }
      }

      else if (ot::Utils::CmdLineParser::Arg::operator==(v14, "sessionid"))
      {
        v14 = (v14 + 8);
        v21 = v21 & 0xFD | 2;
        v13 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v14, v18, v3);
        if (v13)
        {
          return v13;
        }
      }

      else if (ot::Utils::CmdLineParser::Arg::operator==(v14, "steeringdata"))
      {
        v14 = (v14 + 8);
        v21 = v21 & 0xFB | 4;
        v11 = 16;
        v13 = ot::Utils::CmdLineParser::Arg::ParseAsHexString(v14, &v11, v19, v4);
        if (v13)
        {
          return v13;
        }

        v18[2] = v11;
      }

      else if (ot::Utils::CmdLineParser::Arg::operator==(v14, "joinerudpport"))
      {
        v14 = (v14 + 8);
        v21 = v21 & 0xF7 | 8;
        v13 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v14, v20, v5);
        if (v13)
        {
          return v13;
        }
      }

      else
      {
        if (!ot::Utils::CmdLineParser::Arg::operator==(v14, "-x"))
        {
          return 7;
        }

        v14 = (v14 + 8);
        v10 = 32;
        v13 = ot::Utils::CmdLineParser::Arg::ParseAsHexString(v14, &v10, v16, v6);
        if (v13)
        {
          return v13;
        }

        v12 = v10;
      }

      v14 = (v14 + 8);
    }

    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    return otCommissionerSendMgmtSet(InstancePtr, &v17, v16, v12);
  }
}

uint64_t ot::Cli::Utils::ClearAllBytes<otCommissioningDataset>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  return ot::Cli::Utils::ClearAllBytes<otCommissioningDataset>(result);
}

uint64_t ot::Cli::Commissioner::Process<424573284472ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v10 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(a2, &v9, a3);
  if (!v10)
  {
    v10 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v11 + 1, &v8, v3);
    if (!v10)
    {
      v10 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(v11 + 2, v7);
      if (!v10)
      {
        InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
        return otCommissionerPanIdQuery(InstancePtr, v9, v8, v7, ot::Cli::Commissioner::HandlePanIdConflict, a1);
      }
    }
  }

  return v10;
}

uint64_t ot::Cli::Commissioner::Process<7732078877527829602ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  CString = ot::Utils::CmdLineParser::Arg::GetCString(a2);
  return otCommissionerSetProvisioningUrl(InstancePtr, CString);
}

uint64_t ot::Cli::Commissioner::Process<5868095344381626993ull>(ot::Cli::Utils *a1)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  SessionId = otCommissionerGetSessionId(InstancePtr);
  ot::Cli::Utils::OutputLine(a1, "%d", SessionId);
  return 0;
}

uint64_t ot::Cli::Commissioner::Process<25605ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    Id = otCommissionerGetId(InstancePtr);
    ot::Cli::Utils::OutputLine(a1, "%s", Id);
    return 0;
  }

  else
  {
    v6 = ot::Cli::Utils::GetInstancePtr(a1);
    CString = ot::Utils::CmdLineParser::Arg::GetCString(a2);
    return otCommissionerSetId(v6, CString);
  }
}

uint64_t ot::Cli::Utils::Stringify<otCommissionerState,(unsigned short)3>(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 3u)
  {
    return a3;
  }

  else
  {
    return *(a2 + 8 * a1);
  }
}

{
  return ot::Cli::Utils::Stringify<otCommissionerState,(unsigned short)3>(a1, a2, a3);
}

uint64_t ot::Cli::Commissioner::HandleJoinerEvent(ot::Cli::Utils *a1, unsigned __int16 a2, uint64_t a3, const unsigned __int8 *a4)
{
  v4 = ot::Cli::Utils::Stringify<otCommissionerJoinerEvent,(unsigned short)5>(a2, ot::Cli::Commissioner::HandleJoinerEvent(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*)::kEventStrings, "unknown");
  ot::Cli::Utils::OutputFormat(a1, "Commissioner: Joiner %s ", v4);
  if (a4)
  {
    ot::Cli::Utils::OutputExtAddress(a1, a4);
  }

  return ot::Cli::Utils::OutputNewLine(a1);
}

uint64_t ot::Cli::Utils::Stringify<otCommissionerJoinerEvent,(unsigned short)5>(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 5u)
  {
    return a3;
  }

  else
  {
    return *(a2 + 8 * a1);
  }
}

{
  return ot::Cli::Utils::Stringify<otCommissionerJoinerEvent,(unsigned short)5>(a1, a2, a3);
}

uint64_t ot::Cli::Commissioner::Process<428983089745ull>(ot::Cli::Utils *a1)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  State = otCommissionerGetState(InstancePtr);
  v3 = ot::Cli::Commissioner::StateToString(State);
  ot::Cli::Utils::OutputLine(a1, "%s", v3);
  return 0;
}

uint64_t ot::Cli::Commissioner::Process(ot::Cli::Commissioner *this, const char **a2)
{
  v17 = this;
  v16 = a2;
  v15 = 35;
  v14 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2) || ot::Utils::CmdLineParser::Arg::operator==(v16, "help"))
  {
    ot::Cli::Utils::OutputCommandTable<ot::Cli::Commissioner,(unsigned short)12>(this, &ot::Cli::Commissioner::Process(ot::Utils::CmdLineParser::Arg *)::kCommands);
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
    v14 = ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Commissioner>,(unsigned short)12>(&CString, &ot::Cli::Commissioner::Process(ot::Utils::CmdLineParser::Arg *)::kCommands, v2, v3, v4, v5);
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

uint64_t ot::Cli::Utils::OutputCommandTable<ot::Cli::Commissioner,(unsigned short)12>(uint64_t result, const char **a2)
{
  v2 = result;
  v4 = a2;
  v3 = a2 + 36;
  while (v4 != v3)
  {
    result = ot::Cli::Utils::CommandEntry<ot::Cli::Commissioner>::Compare(v4, "reset");
    if (result)
    {
      result = ot::Cli::Utils::OutputLine(v2, "%s", *v4);
    }

    v4 += 3;
  }

  return result;
}

{
  return ot::Cli::Utils::OutputCommandTable<ot::Cli::Commissioner,(unsigned short)12>(result, a2);
}

char *ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Commissioner>,(unsigned short)12>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 0xC, 0x18u, ot::BinarySearch::Compare<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Commissioner>>, a6);
}

{
  return ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Commissioner>,(unsigned short)12>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::Commissioner::HandleEnergyReport(ot::Cli::Commissioner *this, unsigned int a2, const unsigned __int8 *a3, unsigned __int8 a4)
{
  v4 = ot::ToUlong(a2);
  ot::Cli::Utils::OutputFormat(this, "Energy: %08lx ", v4);
  for (i = 0; i < a4; ++i)
  {
    ot::Cli::Utils::OutputFormat(this, "%d ", a3[i]);
  }

  return ot::Cli::Utils::OutputNewLine(this);
}

uint64_t ot::Cli::Commissioner::HandlePanIdConflict(ot::Cli::Commissioner *this, unsigned __int16 a2, unsigned int a3)
{
  v5 = a2;
  v3 = ot::ToUlong(a3);
  return ot::Cli::Utils::OutputLine(this, "Conflict: %04x, %08lx", v5, v3);
}

uint64_t ot::Cli::Utils::CommandEntry<ot::Cli::Commissioner>::Compare(const char **a1, const char *a2)
{
  return strcmp(a2, *a1);
}

{
  return ot::Cli::Utils::CommandEntry<ot::Cli::Commissioner>::Compare(a1, a2);
}

uint64_t ot::Cli::Dataset::PrintOld(ot::Cli::Utils *a1, uint64_t a2)
{
  if (*(a2 + 121))
  {
    ot::Cli::Utils::OutputFormat(a1, "Pending Timestamp: ");
    ot::Cli::Utils::OutputUint64Line(a1, *(a2 + 16));
  }

  if (*(a2 + 120))
  {
    ot::Cli::Utils::OutputFormat(a1, "Active Timestamp: ");
    ot::Cli::Utils::OutputUint64Line(a1, *a2);
  }

  if (*(a2 + 128))
  {
    ot::Cli::Utils::OutputLine(a1, "Channel: %d", *(a2 + 90));
  }

  if (*(a2 + 131))
  {
    v2 = ot::ToUlong(*(a2 + 116));
    ot::Cli::Utils::OutputLine(a1, "Channel Mask: 0x%08lx", v2);
  }

  if (*(a2 + 126))
  {
    v3 = ot::ToUlong(*(a2 + 84));
    ot::Cli::Utils::OutputLine(a1, "Delay: %lu", v3);
  }

  if (*(a2 + 124))
  {
    ot::Cli::Utils::OutputFormat(a1, "Ext PAN ID: ");
    ot::Cli::Utils::OutputBytesLine<(unsigned char)8>(a1, (a2 + 65));
  }

  if (*(a2 + 125))
  {
    ot::Cli::Utils::OutputFormat(a1, "Mesh Local Prefix: ");
    ot::Cli::Utils::OutputIp6PrefixLine(a1, (a2 + 73));
  }

  if (*(a2 + 122))
  {
    ot::Cli::Utils::OutputFormat(a1, "Network Key: ");
    ot::Cli::Utils::OutputBytesLine<(unsigned char)16>(a1, (a2 + 32));
  }

  if (*(a2 + 123))
  {
    ot::Cli::Utils::OutputFormat(a1, "Network Name: ");
    ot::Cli::Utils::OutputLine(a1, "%s", (a2 + 48));
  }

  if (*(a2 + 127))
  {
    ot::Cli::Utils::OutputLine(a1, "PAN ID: 0x%04x", *(a2 + 88));
  }

  if (*(a2 + 129))
  {
    ot::Cli::Utils::OutputFormat(a1, "PSKc: ");
    ot::Cli::Utils::OutputBytesLine<(unsigned char)16>(a1, (a2 + 94));
  }

  if (*(a2 + 130))
  {
    ot::Cli::Utils::OutputFormat(a1, "Security Policy: ");
    ot::Cli::Dataset::OutputSecurityPolicy(a1, (a2 + 110));
  }

  return 0;
}

uint64_t ot::Cli::Dataset::OutputSecurityPolicy(ot::Cli::Utils *a1, unsigned __int16 *a2)
{
  ot::Cli::Utils::OutputFormat(a1, "%u ", *a2);
  if (a2[1])
  {
    ot::Cli::Utils::OutputFormat(a1, "o");
  }

  if ((a2[1] & 2) != 0)
  {
    ot::Cli::Utils::OutputFormat(a1, "n");
  }

  if ((a2[1] & 4) != 0)
  {
    ot::Cli::Utils::OutputFormat(a1, "r");
  }

  if ((a2[1] & 8) != 0)
  {
    ot::Cli::Utils::OutputFormat(a1, "c");
  }

  if ((a2[1] & 0x10) != 0)
  {
    ot::Cli::Utils::OutputFormat(a1, "C");
  }

  if ((a2[1] & 0x20) != 0)
  {
    ot::Cli::Utils::OutputFormat(a1, "e");
  }

  if ((a2[1] & 0x40) != 0)
  {
    ot::Cli::Utils::OutputFormat(a1, "p");
  }

  if ((a2[1] & 0x100) != 0)
  {
    ot::Cli::Utils::OutputFormat(a1, "R");
  }

  return ot::Cli::Utils::OutputLine(a1, " %u", (a2[1] >> 9) & 7);
}

char *ot::Cli::Dataset::LookupMapper(ot::Cli::Dataset *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  v7[1] = this;
  v7[0] = a2;
  return ot::BinarySearch::Find<char const*,ot::Cli::Dataset::ComponentMapper,(unsigned short)14>(v7, &ot::Cli::Dataset::LookupMapper(char const*)const::kMappers, a3, a4, a5, a6);
}

uint64_t ot::Cli::Dataset::ParseActiveTimestamp(uint64_t a1, ot::Utils::CmdLineParser ***a2, uint64_t a3)
{
  v3 = (*a2)++;
  v5 = ot::Utils::CmdLineParser::Arg::ParseAsUint64(v3, a3, a3);
  if (!v5)
  {
    *(a3 + 8) = 0;
    *(a3 + 10) = 0;
  }

  return v5;
}

uint64_t ot::Cli::Dataset::ParseMeshLocalPrefix(uint64_t a1, const char ***a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v3 = (*a2)++;
  v6 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(v3, &v5);
  if (!v6)
  {
    *(v7 + 73) = v5;
  }

  return v6;
}

uint64_t ot::Cli::Dataset::ParseNetworkName(uint64_t a1, ot::Utils::CmdLineParser::Arg **a2, uint64_t a3)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(*a2))
  {
    return 7;
  }

  else
  {
    v3 = *a2;
    *a2 = (*a2 + 8);
    CString = ot::Utils::CmdLineParser::Arg::GetCString(v3);
    return otNetworkNameFromString(a3 + 48, CString);
  }
}

uint64_t ot::Cli::Dataset::ParsePendingTimestamp(uint64_t a1, ot::Utils::CmdLineParser ***a2, uint64_t a3)
{
  v3 = (*a2)++;
  v5 = ot::Utils::CmdLineParser::Arg::ParseAsUint64(v3, (a3 + 16), a3);
  if (!v5)
  {
    *(a3 + 24) = 0;
    *(a3 + 26) = 0;
  }

  return v5;
}

uint64_t ot::Cli::Dataset::ParsePskc(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg **a2, char *a3)
{
  if (ot::Utils::CmdLineParser::Arg::operator==(*a2, "-p"))
  {
    *a2 = (*a2 + 8);
    if (ot::Utils::CmdLineParser::Arg::IsEmpty(*a2))
    {
      return 7;
    }

    else
    {
      CString = ot::Utils::CmdLineParser::Arg::GetCString(*a2);
      if (a3[123])
      {
        v10 = (a3 + 48);
      }

      else
      {
        InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
        otThreadGetNetworkName(InstancePtr);
        v10 = v4;
      }

      if (a3[124])
      {
        v9 = (a3 + 65);
      }

      else
      {
        v5 = ot::Cli::Utils::GetInstancePtr(a1);
        otThreadGetExtendedPanId(v5);
        v9 = v6;
      }

      Pskc = otDatasetGeneratePskc(CString, v10, v9, (a3 + 94));
      if (!Pskc)
      {
        *a2 = (*a2 + 8);
      }
    }
  }

  else
  {
    v7 = *a2;
    *a2 = (*a2 + 8);
    return ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)16>(v7, a3 + 94);
  }

  return Pskc;
}

char *ot::BinarySearch::Find<char const*,ot::Cli::Dataset::ComponentMapper,(unsigned short)14>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 0xE, 0x30u, ot::BinarySearch::Compare<char const*,ot::Cli::Dataset::ComponentMapper>, a6);
}

{
  return ot::BinarySearch::Find<char const*,ot::Cli::Dataset::ComponentMapper,(unsigned short)14>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::Dataset::Process<7419947443224800644ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser **a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    v5 = otDatasetParseTlvs(ot::Cli::Dataset::sDatasetTlvs, __b);
    if (!v5 && (__b[66] & 1) != 0)
    {
      ot::Cli::Utils::OutputLine(a1, "%d", __b[46]);
    }
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    v5 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(a2, &__b[46], v2);
    if (!v5)
    {
      LOBYTE(__b[66]) = 1;
      return otDatasetUpdateTlvs(__b, ot::Cli::Dataset::sDatasetTlvs);
    }
  }

  return v5;
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsUint64(ot::Utils::CmdLineParser **this, char *a2, unsigned __int8 *a3)
{
  return ot::Utils::CmdLineParser::ParseAsUint64(*this, a2, a3);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsUint64(this, a2, a3);
}

uint64_t ot::Cli::Dataset::ParseSecurityPolicy(uint64_t a1, _DWORD *a2, ot::Utils::CmdLineParser ***a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  v8 = 0;
  ot::Cli::Utils::ClearAllBytes<otSecurityPolicy>(v9);
  v10 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(*v11, v9, v3);
  if (!v10 && !ot::Utils::CmdLineParser::Arg::IsEmpty(++*v11))
  {
    for (i = ot::Utils::CmdLineParser::Arg::GetCString(*v11); *i; ++i)
    {
      v6 = *i;
      switch(v6)
      {
        case 'C':
          v9[1] = v9[1] & 0xFFEF | 0x10;
          break;
        case 'R':
          v9[1] = v9[1] & 0xFEFF | 0x100;
          break;
        case 'c':
          v9[1] = v9[1] & 0xFFF7 | 8;
          break;
        case 'e':
          v9[1] = v9[1] & 0xFFDF | 0x20;
          break;
        case 'n':
          v9[1] = v9[1] & 0xFFFD | 2;
          break;
        case 'o':
          v9[1] = v9[1] & 0xFFFE | 1;
          break;
        case 'p':
          v9[1] = v9[1] & 0xFFBF | 0x40;
          break;
        case 'r':
          v9[1] = v9[1] & 0xFFFB | 4;
          break;
        default:
          v10 = 7;
          goto LABEL_28;
      }
    }

    if (!ot::Utils::CmdLineParser::Arg::IsEmpty(++*v11))
    {
      v10 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(*v11, &v8, v4);
      if (!v10)
      {
        ++*v11;
        if (v8 <= 7u)
        {
          v9[1] = v9[1] & 0xF1FF | ((v8 & 7) << 9);
        }

        else
        {
          v10 = 7;
        }
      }
    }
  }

LABEL_28:
  if (!v10)
  {
    *v12 = *v9;
  }

  return v10;
}

uint64_t ot::Cli::Dataset::ParseTlvs(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 254;
  v6 = ot::Utils::CmdLineParser::Arg::ParseAsHexString(a2, &v5, a3, a4);
  if (!v6)
  {
    v7[254] = v5;
  }

  return v6;
}

uint64_t ot::Cli::Dataset::ProcessCommand(ot::Cli::Dataset *this, const ot::Cli::Dataset::ComponentMapper *a2, ot::Utils::CmdLineParser::Arg *a3)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a3))
  {
    v12 = otDatasetParseTlvs(ot::Cli::Dataset::sDatasetTlvs, v16);
    if (!v12 && (v16[*(v14 + 1) + 120] & 1) != 0)
    {
      v9 = *(v14 + 2);
      v3 = *(v14 + 3);
      v10 = (this + (v3 >> 1));
      if (v3)
      {
        (*(*v10 + v9))(v10, v16);
      }

      else
      {
        v9(v10, v16);
      }
    }
  }

  else
  {
    ot::Cli::Utils::ClearAllBytes<otOperationalDataset>(v16);
    v7 = *(v14 + 4);
    v4 = *(v14 + 5);
    v8 = (this + (v4 >> 1));
    if (v4)
    {
      v5 = (*(*v8 + v7))(v8, &v13, v16);
    }

    else
    {
      v5 = v7(v8, &v13, v16);
    }

    v12 = v5;
    if (!v5)
    {
      v16[*(v14 + 1) + 120] = 1;
      return otDatasetUpdateTlvs(v16, ot::Cli::Dataset::sDatasetTlvs);
    }
  }

  return v12;
}

void *ot::Cli::Utils::ClearAllBytes<otOperationalDataset>(void *a1)
{
  return memset(a1, 0, 0x88uLL);
}

{
  return ot::Cli::Utils::ClearAllBytes<otOperationalDataset>(a1);
}

uint64_t ot::Cli::Dataset::PrintKeychain(ot::Cli::Dataset *this, const char **a2)
{
  v4 = 0;
  ot::Clearable<ot::MeshCoP::Dataset::Info>::Clear(v6);
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "-a"))
  {
    if (dskeychainRcp::FindAndGetDataSet(0, v6) == 1)
    {
      ot::Cli::Utils::OutputLine(this, "ACTIVE DATASET:");
      ot::Cli::Utils::OutputLine(this, "===============");
      return ot::Cli::Dataset::PrintOld(this, v6);
    }

    else
    {
      ot::Cli::Utils::OutputLine(this, "Active dataset not found");
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "-p"))
  {
    if (dskeychainRcp::FindAndGetDataSet(1u, v6) == 1)
    {
      ot::Cli::Utils::OutputLine(this, "PENDING DATASET:");
      ot::Cli::Utils::OutputLine(this, "================");
      return ot::Cli::Dataset::PrintOld(this, v6);
    }

    else
    {
      ot::Cli::Utils::OutputLine(this, "Pending dataset not found");
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "-ap"))
  {
    if (dskeychainRcp::FindAndGetDataSet(0, v6) == 1)
    {
      ot::Cli::Utils::OutputLine(this, "ACTIVE DATASET:");
      ot::Cli::Utils::OutputLine(this, "===============");
      v4 = ot::Cli::Dataset::PrintOld(this, v6);
    }

    else
    {
      ot::Cli::Utils::OutputLine(this, "Active dataset not found");
    }

    ot::Clearable<ot::MeshCoP::Dataset::Info>::Clear(v6);
    if (dskeychainRcp::FindAndGetDataSet(1u, v6) == 1)
    {
      ot::Cli::Utils::OutputLine(this, "================");
      ot::Cli::Utils::OutputLine(this, "PENDING DATASET:");
      ot::Cli::Utils::OutputLine(this, "================");
      return ot::Cli::Dataset::PrintOld(this, v6);
    }

    else
    {
      ot::Cli::Utils::OutputLine(this, "");
      ot::Cli::Utils::OutputLine(this, "Pending dataset not found");
    }
  }

  else
  {
    return 7;
  }

  return v4;
}

void *ot::Clearable<ot::MeshCoP::Dataset::Info>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::MeshCoP::Dataset::Info>(a1);
}

{
  return ot::Clearable<ot::MeshCoP::Dataset::Info>::Clear(a1);
}

uint64_t ot::Cli::Dataset::Print(ot::Cli::Dataset *a1, uint64_t a2)
{
  v13 = otDatasetParseTlvs(a2, v14);
  if (!v13)
  {
    for (i = ot::Cli::Dataset::Print(otOperationalDatasetTlvs &)::kTitles; i != &ot::Cli::Dataset::Process(ot::Utils::CmdLineParser::Arg *)::kCommands; i += 2)
    {
      v11 = ot::Cli::Dataset::LookupMapper(a1, i[1], v2, v3, v4, v5);
      if (v14[*(v11 + 1) + 120])
      {
        ot::Cli::Utils::OutputFormat(a1, "%s: ", *i);
        v8 = *(v11 + 2);
        v6 = *(v11 + 3);
        v9 = (a1 + (v6 >> 1));
        if (v6)
        {
          (*(*v9 + v8))(v9, v14);
        }

        else
        {
          v8(v9, v14);
        }
      }
    }
  }

  return v13;
}

uint64_t ot::Cli::Dataset::Process<1930295280ull>(ot::Cli::Utils *a1, const char **a2)
{
  NewNetwork = 7;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "active"))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    return otDatasetGetActiveTlvs(InstancePtr, ot::Cli::Dataset::sDatasetTlvs);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "pending"))
  {
    v3 = ot::Cli::Utils::GetInstancePtr(a1);
    return otDatasetGetPendingTlvs(v3, ot::Cli::Dataset::sDatasetTlvs);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "new"))
  {
    v4 = ot::Cli::Utils::GetInstancePtr(a1);
    NewNetwork = otDatasetCreateNewNetwork(v4, v10);
    if (!NewNetwork)
    {
      otDatasetConvertToTlvs(v10, ot::Cli::Dataset::sDatasetTlvs);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "tlvs"))
  {
    return ot::Cli::Dataset::ParseTlvs(a1, (a2 + 1), ot::Cli::Dataset::sDatasetTlvs, v5);
  }

  return NewNetwork;
}

uint64_t ot::Cli::Dataset::Process<109399277033242ull>(ot::Cli::Utils *a1, const char **a2)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  ActiveTlvs = otDatasetGetActiveTlvs(InstancePtr, v7);
  if (!ActiveTlvs)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
    {
      return ot::Cli::Dataset::Print(a1, v7);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "-x"))
    {
      ot::Cli::Utils::OutputBytesLine(a1, v7, v8);
    }

    else
    {
      return 7;
    }
  }

  return ActiveTlvs;
}

uint64_t ot::Cli::Dataset::Process<28438073741397367ull>(ot::Cli::Utils *a1, const char **a2)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  PendingTlvs = otDatasetGetPendingTlvs(InstancePtr, v7);
  if (!PendingTlvs)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
    {
      return ot::Cli::Dataset::Print(a1, v7);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "-x"))
    {
      ot::Cli::Utils::OutputBytesLine(a1, v7, v8);
    }

    else
    {
      return 7;
    }
  }

  return PendingTlvs;
}

void *ot::Cli::Utils::ClearAllBytes<otOperationalDatasetTlvs>(void *a1)
{
  return memset(a1, 0, 0xFFuLL);
}

{
  return ot::Cli::Utils::ClearAllBytes<otOperationalDatasetTlvs>(a1);
}

uint64_t ot::Cli::Dataset::Process<125517434289129ull>(ot::Cli::Utils *a1, const char **a2)
{
  v6 = 7;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "active"))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    return otDatasetSetActiveTlvs(InstancePtr, ot::Cli::Dataset::sDatasetTlvs);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "pending"))
  {
    v3 = ot::Cli::Utils::GetInstancePtr(a1);
    return otDatasetSetPendingTlvs(v3, ot::Cli::Dataset::sDatasetTlvs);
  }

  return v6;
}

uint64_t ot::Cli::Dataset::Process<12771032504430052662ull>(ot::Cli::Dataset *a1, const char **a2)
{
  v20 = a1;
  v19 = a2;
  v18 = 0;
  ot::Cli::Utils::ClearAllBytes<otOperationalDataset>(v23);
  ot::Cli::Utils::ClearAllBytes<otOperationalDatasetTlvs>(v21);
  v17 = (v19 + 1);
  while (!ot::Utils::CmdLineParser::Arg::IsEmpty(v17))
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(v17);
    v16 = ot::Cli::Dataset::LookupMapper(a1, CString, v3, v4, v5, v6);
    if (v16)
    {
      v17 = (v17 + 8);
      v13 = *(v16 + 4);
      v7 = *(v16 + 5);
      v14 = (a1 + (v7 >> 1));
      if (v7)
      {
        v8 = (*(*v14 + v13))(v14, &v17, v23);
      }

      else
      {
        v8 = v13(v14, &v17, v23);
      }

      v18 = v8;
      if (v8)
      {
        return v18;
      }

      v23[*(v16 + 1) + 120] = 1;
    }

    else
    {
      if (!ot::Utils::CmdLineParser::Arg::operator==(v17, "-x"))
      {
        return 7;
      }

      v17 = (v17 + 8);
      v18 = ot::Cli::Dataset::ParseTlvs(a1, v17, v21, v9);
      if (v18)
      {
        return v18;
      }

      v17 = (v17 + 8);
    }
  }

  if (ot::Utils::CmdLineParser::Arg::operator==(v19, "active"))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    return otDatasetSendMgmtActiveSet(InstancePtr, v23, v21, v22, 0, 0);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v19, "pending"))
  {
    v11 = ot::Cli::Utils::GetInstancePtr(a1);
    return otDatasetSendMgmtPendingSet(v11, v23, v21, v22, 0, 0);
  }

  else
  {
    return 7;
  }
}

uint64_t ot::Cli::Dataset::Process<12771032453691045162ull>(ot::Cli::Dataset *a1, const char **a2)
{
  v21 = a1;
  v20 = a2;
  v19 = 0;
  v17 = 0;
  ot::Cli::Utils::ClearAllBytes<otOperationalDatasetComponents>(&v18);
  ot::Cli::Utils::ClearAllBytes<otOperationalDatasetTlvs>(v22);
  for (i = (v20 + 1); !ot::Utils::CmdLineParser::Arg::IsEmpty(i); i = (i + 8))
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(i);
    v14 = ot::Cli::Dataset::LookupMapper(a1, CString, v3, v4, v5, v6);
    if (v14)
    {
      *(&v18 + *(v14 + 1)) = 1;
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(i, "-x"))
    {
      i = (i + 8);
      v19 = ot::Cli::Dataset::ParseTlvs(a1, i, v22, v7);
      if (v19)
      {
        return v19;
      }
    }

    else
    {
      if (!ot::Utils::CmdLineParser::Arg::operator==(i, "address"))
      {
        return 7;
      }

      i = (i + 8);
      v19 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(i, v16);
      if (v19)
      {
        return v19;
      }

      v17 = 1;
    }
  }

  if (ot::Utils::CmdLineParser::Arg::operator==(v20, "active"))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    if (v17)
    {
      return otDatasetSendMgmtActiveGet(InstancePtr, &v18, v22, v23, v16);
    }

    else
    {
      return otDatasetSendMgmtActiveGet(InstancePtr, &v18, v22, v23, 0);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v20, "pending"))
  {
    v11 = ot::Cli::Utils::GetInstancePtr(a1);
    if (v17)
    {
      return otDatasetSendMgmtPendingGet(v11, &v18, v22, v23, v16);
    }

    else
    {
      return otDatasetSendMgmtPendingGet(v11, &v18, v22, v23, 0);
    }
  }

  else
  {
    return 7;
  }
}

void *ot::Cli::Utils::ClearAllBytes<otOperationalDatasetComponents>(void *result)
{
  *result = 0;
  *(result + 5) = 0;
  return result;
}

{
  return ot::Cli::Utils::ClearAllBytes<otOperationalDatasetComponents>(result);
}

_DWORD *ot::Cli::Utils::ClearAllBytes<otSecurityPolicy>(_DWORD *result)
{
  *result = 0;
  return result;
}

{
  return ot::Cli::Utils::ClearAllBytes<otSecurityPolicy>(result);
}

uint64_t ot::Cli::Dataset::Process<7568770ull>(ot::Cli::Utils *a1, const char **a2, uint64_t a3, unsigned __int8 *a4)
{
  v8 = ot::Cli::Dataset::ParseTlvs(a1, (a2 + 1), v10, a4);
  if (!v8)
  {
    if (ot::Utils::CmdLineParser::Arg::operator==(a2, "active"))
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      return otDatasetSetActiveTlvs(InstancePtr, v10);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "pending"))
    {
      v5 = ot::Cli::Utils::GetInstancePtr(a1);
      return otDatasetSetPendingTlvs(v5, v10);
    }

    else
    {
      return 7;
    }
  }

  return v8;
}

uint64_t ot::Cli::Dataset::Process<1914558731ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v4 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    ot::Cli::Utils::OutputBytesLine(a1, ot::Cli::Dataset::sDatasetTlvs, byte_1004E9EDE);
  }

  else
  {
    return 7;
  }

  return v4;
}

uint64_t ot::Cli::Dataset::Process(ot::Cli::Dataset *this, const char **a2)
{
  v22 = this;
  v21 = a2;
  v20 = 35;
  v19 = 0;
  v18 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return ot::Cli::Dataset::Print(this, ot::Cli::Dataset::sDatasetTlvs);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v21, "help"))
  {
    ot::Cli::Utils::OutputCommandTable<ot::Cli::Dataset,(unsigned short)10>(this, &ot::Cli::Dataset::Process(ot::Utils::CmdLineParser::Arg *)::kCommands);
    return 0;
  }

  else
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(v21);
    v18 = ot::Cli::Dataset::LookupMapper(this, CString, v3, v4, v5, v6);
    if (v18)
    {
      return ot::Cli::Dataset::ProcessCommand(this, v18, (v21 + 1));
    }

    else
    {
      v17 = ot::Utils::CmdLineParser::Arg::GetCString(v21);
      v19 = ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Dataset>,(unsigned short)10>(&v17, &ot::Cli::Dataset::Process(ot::Utils::CmdLineParser::Arg *)::kCommands, v7, v8, v9, v10);
      if (v19)
      {
        v14 = *(v19 + 1);
        v11 = *(v19 + 2);
        v15 = (this + (v11 >> 1));
        if (v11)
        {
          return (*(*v15 + v14))(v15, v21 + 1);
        }

        else
        {
          return v14(v15, v21 + 1);
        }
      }
    }
  }

  return v20;
}

uint64_t ot::Cli::Utils::OutputCommandTable<ot::Cli::Dataset,(unsigned short)10>(uint64_t result, const char **a2)
{
  v2 = result;
  v4 = a2;
  v3 = a2 + 30;
  while (v4 != v3)
  {
    result = ot::Cli::Utils::CommandEntry<ot::Cli::Dataset>::Compare(v4, "reset");
    if (result)
    {
      result = ot::Cli::Utils::OutputLine(v2, "%s", *v4);
    }

    v4 += 3;
  }

  return result;
}

{
  return ot::Cli::Utils::OutputCommandTable<ot::Cli::Dataset,(unsigned short)10>(result, a2);
}

char *ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Dataset>,(unsigned short)10>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 0xA, 0x18u, ot::BinarySearch::Compare<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Dataset>>, a6);
}

{
  return ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Dataset>,(unsigned short)10>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::Dataset::ComponentMapper::Compare(const char **this, const char *a2)
{
  return strcmp(a2, *this);
}

{
  return ot::Cli::Dataset::ComponentMapper::Compare(this, a2);
}

void *ot::ClearAllBytes<ot::MeshCoP::Dataset::Info>(void *a1)
{
  return memset(a1, 0, 0x88uLL);
}

{
  return ot::ClearAllBytes<ot::MeshCoP::Dataset::Info>(a1);
}

uint64_t ot::Cli::Utils::CommandEntry<ot::Cli::Dataset>::Compare(const char **a1, const char *a2)
{
  return strcmp(a2, *a1);
}

{
  return ot::Cli::Utils::CommandEntry<ot::Cli::Dataset>::Compare(a1, a2);
}

uint64_t __cxx_global_var_init_5()
{
  return boost::optional_ns::in_place_init_t::in_place_init_t(&boost::optional_ns::in_place_init);
}

{
  std::map<unsigned long long,ot::appPacketInfo>::map[abi:dn200100](&ot::mMatterSubscriptionInfoMap);
  return __cxa_atexit(std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::~map[abi:dn200100], &ot::mMatterSubscriptionInfoMap, &_mh_execute_header);
}

uint64_t ot::Cli::History::ParseArgs(ot::Cli::History *this, const char **a2, BOOL *a3, char *a4)
{
  v8 = a2;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "list"))
  {
    v8 = (v8 + 8);
    *a3 = 1;
  }

  else
  {
    *a3 = 0;
  }

  if (ot::Utils::CmdLineParser::Arg::ParseAsUint16(v8, a4, v4))
  {
    *a4 = 0;
  }

  else
  {
    v8 = (v8 + 8);
  }

  if (ot::Utils::CmdLineParser::Arg::IsEmpty(v8))
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

uint64_t ot::Cli::History::Process<123339735204840ull>(ot::Cli::Utils *a1, const char **a2)
{
  v32 = a1;
  v31 = a2;
  v22 = a1;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v25 = 0;
  v30 = ot::Cli::History::ParseArgs(a1, a2, &v29, &v28);
  if (!v30)
  {
    if (!v29)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)8>(v22, ot::Cli::History::Process<123339735204840ull>(ot::Utils::CmdLineParser::Arg *)::kUnicastAddrInfoTitles, ot::Cli::History::Process<123339735204840ull>(ot::Utils::CmdLineParser::Arg *)::kUnicastAddrInfoColumnWidths);
    }

    otHistoryTrackerInitIterator(v27);
    for (i = 0; ; ++i)
    {
      v21 = 1;
      if (v28)
      {
        v21 = i < v28;
      }

      if (!v21)
      {
        break;
      }

      InstancePtr = ot::Cli::Utils::GetInstancePtr(v22);
      v26 = otHistoryTrackerIterateUnicastAddressHistory(InstancePtr, v27, &v25);
      if (!v26)
      {
        break;
      }

      otHistoryTrackerEntryAgeToString(v25, v34, 0x15u);
      otIp6AddressToString(v26, __s, 44);
      if (v29)
      {
        v15 = ot::Cli::Utils::Stringify<otHistoryTrackerAddressEvent,(unsigned short)2>(*(v26 + 20), ot::Cli::kSimpleEventStrings, "unknown");
        v16 = *(v26 + 16);
        v8 = ot::Cli::Utils::AddressOriginToString(*(v26 + 17));
        v9 = *(v26 + 24) & 0xF;
        v10 = "yes";
        if ((*(v26 + 24) & 0x10) != 0)
        {
          v11 = "yes";
        }

        else
        {
          v11 = "no";
        }

        if ((*(v26 + 24) & 0x20) != 0)
        {
          v12 = "yes";
        }

        else
        {
          v12 = "no";
        }

        if ((*(v26 + 24) & 0x40) == 0)
        {
          v10 = "no";
        }

        v17 = &v14;
        ot::Cli::Utils::OutputLine(v22, "%s -> event:%s address:%s prefixlen:%d origin:%s scope:%d preferred:%s valid:%s rloc:%s", v34, v15, __s, v16, v8, v9, v11, v12, v10);
      }

      else
      {
        v19 = __s;
        v23 = strlen(__s);
        snprintf(&__s[v23], 44 - v23, "/%d", *(v26 + 16));
        v18 = ot::Cli::Utils::Stringify<otHistoryTrackerAddressEvent,(unsigned short)2>(*(v26 + 20), ot::Cli::kSimpleEventStrings, "unknown");
        v3 = ot::Cli::Utils::AddressOriginToString(*(v26 + 17));
        v4 = *(v26 + 24) & 0xF;
        if ((*(v26 + 24) & 0x10) != 0)
        {
          v5 = 89;
        }

        else
        {
          v5 = 78;
        }

        if ((*(v26 + 24) & 0x20) != 0)
        {
          v6 = 89;
        }

        else
        {
          v6 = 78;
        }

        if ((*(v26 + 24) & 0x40) != 0)
        {
          v7 = 89;
        }

        else
        {
          v7 = 78;
        }

        v20 = &v14;
        ot::Cli::Utils::OutputLine(v22, "| %20s | %-7s | %-43s | %-6s | %3d | %c | %c | %c |", v34, v18, v19, v3, v4, v5, v6, v7);
      }
    }
  }

  return v30;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)8>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 8u, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)8>(a1, a2, a3);
}

uint64_t ot::Cli::Utils::Stringify<otHistoryTrackerAddressEvent,(unsigned short)2>(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 2u)
  {
    return a3;
  }

  else
  {
    return *(a2 + 8 * a1);
  }
}

{
  return ot::Cli::Utils::Stringify<otHistoryTrackerAddressEvent,(unsigned short)2>(a1, a2, a3);
}

uint64_t ot::Cli::History::Process<31451632477041015ull>(ot::Cli::History *a1, const char **a2)
{
  v18 = a1;
  v17 = a2;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  v16 = ot::Cli::History::ParseArgs(a1, a2, &v15, &v14);
  if (!v16)
  {
    if (!v15)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)4>(a1, ot::Cli::History::Process<31451632477041015ull>(ot::Utils::CmdLineParser::Arg *)::kMulticastAddrInfoTitles, ot::Cli::History::Process<31451632477041015ull>(ot::Utils::CmdLineParser::Arg *)::kMulticastAddrInfoColumnWidths);
    }

    otHistoryTrackerInitIterator(v13);
    for (i = 0; ; ++i)
    {
      v8 = 1;
      if (v14)
      {
        v8 = i < v14;
      }

      if (!v8)
      {
        break;
      }

      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      v12 = otHistoryTrackerIterateMulticastAddressHistory(InstancePtr, v13, &v11);
      if (!v12)
      {
        break;
      }

      otHistoryTrackerEntryAgeToString(v11, v20, 0x15u);
      otIp6AddressToString(v12, v19, 40);
      v3 = "%s -> event:%s address:%s origin:%s";
      if (!v15)
      {
        v3 = "| %20s | %-12s | %-39s | %-6s |";
      }

      v7 = v3;
      v6 = ot::Cli::Utils::Stringify<otHistoryTrackerAddressEvent,(unsigned short)2>(*(v12 + 20), ot::Cli::History::Process<31451632477041015ull>(ot::Utils::CmdLineParser::Arg *)::kEventStrings, "unknown");
      v4 = ot::Cli::Utils::AddressOriginToString(*(v12 + 16));
      ot::Cli::Utils::OutputLine(a1, v7, v20, v6, v19, v4);
    }
  }

  return v16;
}

uint64_t ot::Cli::History::Process<8023188516701246990ull>(ot::Cli::History *a1, const char **a2)
{
  v18 = a1;
  v17 = a2;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  v16 = ot::Cli::History::ParseArgs(a1, a2, &v15, &v14);
  if (!v16)
  {
    if (!v15)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)7>(a1, ot::Cli::History::Process<8023188516701246990ull>(ot::Utils::CmdLineParser::Arg *)::kNeighborInfoTitles, ot::Cli::History::Process<8023188516701246990ull>(ot::Utils::CmdLineParser::Arg *)::kNeighborInfoColumnWidths);
    }

    otHistoryTrackerInitIterator(v13);
    for (i = 0; ; ++i)
    {
      v6 = 1;
      if (v14)
      {
        v6 = i < v14;
      }

      if (!v6)
      {
        break;
      }

      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      v12 = otHistoryTrackerIterateNeighborHistory(InstancePtr, v13, &v11);
      if (!v12)
      {
        break;
      }

      otHistoryTrackerEntryAgeToString(v11, v19, 0x15u);
      v10 = v10 & 0xFE | ((v12[11] & 4) != 0);
      v10 = v10 & 0xFD | (2 * ((v12[11] & 8) != 0));
      v10 = v10 & 0xFB | (4 * ((v12[11] & 0x10) != 0));
      ot::Cli::Utils::LinkModeToString(&v10, v9);
      if (v15)
      {
        v3 = "%s -> type:%s event:%s extaddr:";
      }

      else
      {
        v3 = "| %20s | %-6s | %-9s | ";
      }

      if ((v12[11] & 0x20) != 0)
      {
        v4 = "Child";
      }

      else
      {
        v4 = "Router";
      }

      ot::Cli::Utils::OutputFormat(a1, v3, v19, v4, ot::Cli::History::Process<8023188516701246990ull>(ot::Utils::CmdLineParser::Arg *)::kEventString[v12[11] & 3]);
      ot::Cli::Utils::OutputExtAddress(a1, v12);
      if (v15)
      {
        ot::Cli::Utils::OutputLine(a1, " rloc16:0x%04x mode:%s rss:%d");
      }

      else
      {
        ot::Cli::Utils::OutputLine(a1, " | 0x%04x | %-4s | %7d |");
      }
    }
  }

  return v16;
}

uint64_t ot::Cli::History::Process<123344230057719ull>(ot::Cli::History *a1, const char **a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 10;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v8 = 0;
  v7 = 0;
  v12 = ot::Cli::History::ParseArgs(a1, a2, &v11, &v10);
  if (!v12)
  {
    if (!v11)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)5>(a1, ot::Cli::History::Process<123344230057719ull>(ot::Utils::CmdLineParser::Arg *)::kRouterInfoTitles, ot::Cli::History::Process<123344230057719ull>(ot::Utils::CmdLineParser::Arg *)::kRouterInfoColumnWidths);
    }

    otHistoryTrackerInitIterator(v9);
    for (i = 0; ; ++i)
    {
      v4 = 1;
      if (v10)
      {
        v4 = i < v10;
      }

      if (!v4)
      {
        break;
      }

      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      v8 = otHistoryTrackerIterateRouterHistory(InstancePtr, v9, &v7);
      if (!v8)
      {
        break;
      }

      otHistoryTrackerEntryAgeToString(v7, v16, 0x15u);
      if (v11)
      {
        ot::Cli::Utils::OutputFormat(a1, "%s -> event:%s router:%u(0x%04x) nexthop:");
      }

      else
      {
        ot::Cli::Utils::OutputFormat(a1, "| %20s | %-14s | %2u (0x%04x) | ");
      }

      if (*(v8 + 1) == 63)
      {
        if (v11)
        {
          ot::Cli::Utils::OutputFormat(a1, "%s");
        }

        else
        {
          ot::Cli::Utils::OutputFormat(a1, "%11s");
        }
      }

      else if (v11)
      {
        ot::Cli::Utils::OutputFormat(a1, "%u(0x%04x)");
      }

      else
      {
        ot::Cli::Utils::OutputFormat(a1, "%2u (0x%04x)");
      }

      if ((*(v8 + 2) & 0xF) != 0)
      {
        if (v11)
        {
          ot::Cli::Utils::OutputFormat(a1, " old-cost:%u");
        }

        else
        {
          ot::Cli::Utils::OutputFormat(a1, " | %3u ->");
        }
      }

      else if (v11)
      {
        ot::Cli::Utils::OutputFormat(a1, " old-cost:inf");
      }

      else
      {
        ot::Cli::Utils::OutputFormat(a1, " | inf ->");
      }

      if (*(v8 + 2) >> 4)
      {
        if (v11)
        {
          ot::Cli::Utils::OutputLine(a1, " new-cost:%u");
        }

        else
        {
          ot::Cli::Utils::OutputLine(a1, " %3u |");
        }
      }

      else if (v11)
      {
        ot::Cli::Utils::OutputLine(a1, " new-cost:inf");
      }

      else
      {
        ot::Cli::Utils::OutputLine(a1, " inf |");
      }
    }
  }

  return v12;
}

uint64_t ot::Cli::History::Process<30629005309797515ull>(ot::Cli::History *a1, const char **a2)
{
  v21 = a1;
  v20 = a2;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v15 = 0;
  v14 = 0;
  v19 = ot::Cli::History::ParseArgs(a1, a2, &v18, &v17);
  if (!v19)
  {
    if (!v18)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)5>(a1, ot::Cli::History::Process<30629005309797515ull>(ot::Utils::CmdLineParser::Arg *)::kNetInfoTitles, ot::Cli::History::Process<30629005309797515ull>(ot::Utils::CmdLineParser::Arg *)::kNetInfoColumnWidths);
    }

    otHistoryTrackerInitIterator(v16);
    for (i = 0; ; ++i)
    {
      v10 = 1;
      if (v17)
      {
        v10 = i < v17;
      }

      if (!v10)
      {
        break;
      }

      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      v15 = otHistoryTrackerIterateNetInfoHistory(InstancePtr, v16, &v14);
      if (!v15)
      {
        break;
      }

      otHistoryTrackerEntryAgeToString(v14, v22, 0x15u);
      v3 = "%s -> role:%s mode:%s rloc16:0x%04x partition-id:%lu";
      if (!v18)
      {
        v3 = "| %20s | %-8s | %-4s | 0x%04x | %12lu |";
      }

      v9 = v3;
      v6 = otThreadDeviceRoleToString(*v15);
      v7 = ot::Cli::Utils::LinkModeToString((v15 + 4), v13);
      v8 = *(v15 + 6);
      v4 = ot::ToUlong(*(v15 + 8));
      ot::Cli::Utils::OutputLine(a1, v9, v22, v6, v7, v8, v4);
    }
  }

  return v19;
}

uint64_t ot::Cli::History::ProcessRxTxHistory(ot::Cli::History *a1, char a2, const char **a3)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v22 = ot::Cli::History::ParseArgs(a1, a3, &v21, &v20);
  if (!v22)
  {
    if (!v21)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)10>(a1, ot::Cli::History::ProcessRxTxHistory(ot::Cli::History::RxTx,ot::Utils::CmdLineParser::Arg *)::kTableTitles, ot::Cli::History::ProcessRxTxHistory(ot::Cli::History::RxTx,ot::Utils::CmdLineParser::Arg *)::kTableColumnWidths);
    }

    otHistoryTrackerInitIterator(v18);
    otHistoryTrackerInitIterator(v19);
    for (i = 0; ; ++i)
    {
      v8 = 1;
      if (v20)
      {
        v8 = i < v20;
      }

      if (!v8)
      {
        break;
      }

      if (v24)
      {
        if (v24 == 1)
        {
          InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
          v16 = otHistoryTrackerIterateTxHistory(InstancePtr, v18, &v13);
          v17 = 0;
        }

        else if (v24 == 2)
        {
          if (!v15)
          {
            v5 = ot::Cli::Utils::GetInstancePtr(a1);
            v15 = otHistoryTrackerIterateRxHistory(v5, v19, &v12);
          }

          if (!v14)
          {
            v6 = ot::Cli::Utils::GetInstancePtr(a1);
            v14 = otHistoryTrackerIterateTxHistory(v6, v18, &v11);
          }

          if (!v15 || v14 && v12 > v11)
          {
            v16 = v14;
            v13 = v11;
            v17 = 0;
            v14 = 0;
          }

          else
          {
            v16 = v15;
            v13 = v12;
            v17 = 1;
            v15 = 0;
          }
        }
      }

      else
      {
        v3 = ot::Cli::Utils::GetInstancePtr(a1);
        v16 = otHistoryTrackerIterateRxHistory(v3, v19, &v13);
        v17 = 1;
      }

      if (!v16)
      {
        break;
      }

      if (v21)
      {
        ot::Cli::History::OutputRxTxEntryListFormat(a1, v16, v13, v17 & 1);
      }

      else
      {
        if (i)
        {
          ot::Cli::Utils::OutputTableSeparator<(unsigned char)10>(a1, ot::Cli::History::ProcessRxTxHistory(ot::Cli::History::RxTx,ot::Utils::CmdLineParser::Arg *)::kTableColumnWidths);
        }

        ot::Cli::History::OutputRxTxEntryTableFormat(a1, v16, v13, v17 & 1);
      }
    }
  }

  return v22;
}

uint64_t ot::Cli::Utils::Stringify<unsigned char,(unsigned short)4>(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 4u)
  {
    return a3;
  }

  else
  {
    return *(a2 + 8 * a1);
  }
}

{
  return ot::Cli::Utils::Stringify<unsigned char,(unsigned short)4>(a1, a2, a3);
}

const char *ot::Cli::History::RadioTypeToString(uint64_t a1)
{
  v2 = "none";
  if ((*(a1 + 45) & 0x20) != 0 && (*(a1 + 45) & 0x10) != 0)
  {
    return "all";
  }

  if ((*(a1 + 45) & 0x10) != 0)
  {
    return "15.4";
  }

  if ((*(a1 + 45) & 0x20) != 0)
  {
    return "trel";
  }

  return v2;
}

const char *ot::Cli::History::MessageTypeToString(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  v8 = otIp6ProtoToString(*(a1 + 42), a2, a3, a4, a5, a6);
  if (*(a1 + 42) == 58)
  {
    v7 = *(a1 + 43);
    switch(v7)
    {
      case 1:
        return "ICMP6(Unreach)";
      case 2:
        return "ICMP6(TooBig)";
      case 128:
        return "ICMP6(EchoReqst)";
      case 129:
        return "ICMP6(EchoReply)";
      case 133:
        return "ICMP6(RouterSol)";
      case 134:
        return "ICMP6(RouterAdv)";
      default:
        return "ICMP6(Other)";
    }
  }

  return v8;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)10>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 0xAu, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)10>(a1, a2, a3);
}

uint64_t ot::Cli::History::OutputRxTxEntryListFormat(ot::Cli::Utils *a1, unsigned __int16 *a2, unsigned int a3, char a4)
{
  otHistoryTrackerEntryAgeToString(a3, v24, 0x15u);
  ot::Cli::Utils::OutputLine(a1, "%s", v24);
  v17 = ot::Cli::History::MessageTypeToString(a2, v4, v5, v6, v7, v8);
  v18 = *a2;
  v19 = a2[20];
  v9 = "yes";
  if ((*(a2 + 45) & 1) == 0)
  {
    v9 = "no";
  }

  v20 = v9;
  v10 = ot::Cli::History::MessagePriorityToString(((*(a2 + 45) >> 2) & 3));
  ot::Cli::Utils::OutputFormat(a1, 4, "type:%s len:%u checksum:0x%04x sec:%s prio:%s ", v17, v18, v19, v20, v10);
  if (a4)
  {
    ot::Cli::Utils::OutputFormat(a1, "rss:%d", *(a2 + 44));
  }

  else
  {
    v11 = "yes";
    if ((*(a2 + 45) & 2) == 0)
    {
      v11 = "no";
    }

    ot::Cli::Utils::OutputFormat(a1, "tx-success:%s", v11);
  }

  v12 = "from";
  if ((a4 & 1) == 0)
  {
    v12 = "to";
  }

  v15 = v12;
  v16 = a2[1];
  v13 = ot::Cli::History::RadioTypeToString(a2);
  ot::Cli::Utils::OutputLine(a1, " %s:0x%04x radio:%s", v15, v16, v13);
  ot::Cli::Utils::OutputFormat(a1, 4, "src:");
  ot::Cli::Utils::OutputSockAddrLine(a1, (a2 + 2));
  ot::Cli::Utils::OutputFormat(a1, 4, "dst:");
  return ot::Cli::Utils::OutputSockAddrLine(a1, (a2 + 11));
}

uint64_t ot::Cli::Utils::OutputTableSeparator<(unsigned char)10>(ot::Cli::Utils *a1, const unsigned __int8 *a2)
{
  return ot::Cli::Utils::OutputTableSeparator(a1, 0xAu, a2);
}

{
  return ot::Cli::Utils::OutputTableSeparator<(unsigned char)10>(a1, a2);
}

uint64_t ot::Cli::History::OutputRxTxEntryTableFormat(ot::Cli::Utils *a1, unsigned __int16 *a2, unsigned int a3, char a4)
{
  otHistoryTrackerEntryAgeToString(a3, v21, 0x15u);
  v13 = ot::Cli::History::MessageTypeToString(a2, v4, v5, v6, v7, v8);
  v14 = *a2;
  v15 = a2[20];
  v9 = "yes";
  if ((*(a2 + 45) & 1) == 0)
  {
    v9 = "no";
  }

  v16 = v9;
  v10 = ot::Cli::History::MessagePriorityToString(((*(a2 + 45) >> 2) & 3));
  ot::Cli::Utils::OutputFormat(a1, "| %20s | %-16.16s | %5u | 0x%04x | %3s | %4s | ", "", v13, v14, v15, v16, v10);
  if (a4)
  {
    ot::Cli::Utils::OutputFormat(a1, "%4d | RX ", *(a2 + 44));
  }

  else
  {
    ot::Cli::Utils::OutputFormat(a1, " NA  |");
    if ((*(a2 + 45) & 2) != 0)
    {
      ot::Cli::Utils::OutputFormat(a1, " TX ");
    }

    else
    {
      ot::Cli::Utils::OutputFormat(a1, "TX-F");
    }
  }

  if (a2[1] == 0xFFFF)
  {
    ot::Cli::Utils::OutputFormat(a1, "| bcast  ");
  }

  else if (a2[1] == 65534)
  {
    ot::Cli::Utils::OutputFormat(a1, "| unknwn ");
  }

  else
  {
    ot::Cli::Utils::OutputFormat(a1, "| 0x%04x ", a2[1]);
  }

  v11 = ot::Cli::History::RadioTypeToString(a2);
  ot::Cli::Utils::OutputLine(a1, "| %5.5s |", v11);
  otIp6SockAddrToString((a2 + 2), v20, 48);
  ot::Cli::Utils::OutputLine(a1, "| %20s | src: %-70s |", v21, v20);
  otIp6SockAddrToString((a2 + 11), v20, 48);
  return ot::Cli::Utils::OutputLine(a1, "| %20s | dst: %-70s |", "", v20);
}

uint64_t ot::Cli::History::Process<129830133337582ull>(ot::Cli::History *a1, const char **a2)
{
  v18 = a1;
  v17 = a2;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  v16 = ot::Cli::History::ParseArgs(a1, a2, &v15, &v14);
  if (!v16)
  {
    if (!v15)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)6>(a1, ot::Cli::History::Process<129830133337582ull>(ot::Utils::CmdLineParser::Arg *)::kPrefixTitles, ot::Cli::History::Process<129830133337582ull>(ot::Utils::CmdLineParser::Arg *)::kPrefixColumnWidths);
    }

    otHistoryTrackerInitIterator(v13);
    for (i = 0; ; ++i)
    {
      v8 = 1;
      if (v14)
      {
        v8 = i < v14;
      }

      if (!v8)
      {
        break;
      }

      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      v12 = otHistoryTrackerIterateOnMeshPrefixHistory(InstancePtr, v13, &v11);
      if (!v12)
      {
        break;
      }

      otHistoryTrackerEntryAgeToString(v11, v22, 0x15u);
      otIp6PrefixToString(v12, v21, 45);
      ot::Cli::NetworkData::PrefixFlagsToString(v12, v19);
      v3 = "%s -> event:%s prefix:%s flags:%s pref:%s rloc16:0x%04x";
      if (!v15)
      {
        v3 = "| %20s | %-7s | %-43s | %-9s | %-4s | 0x%04x |";
      }

      v7 = v3;
      v6 = ot::Cli::Utils::Stringify<otHistoryTrackerNetDataEvent,(unsigned short)2>(*(v12 + 24), ot::Cli::kSimpleEventStrings, "unknown");
      v4 = ot::Cli::Utils::PreferenceToString(((*(v12 + 17) << 14) >> 14));
      ot::Cli::Utils::OutputLine(a1, v7, v22, v6, v21, v19, v4, *(v12 + 20));
    }
  }

  return v16;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)6>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 6u, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)6>(a1, a2, a3);
}

uint64_t ot::Cli::Utils::Stringify<otHistoryTrackerNetDataEvent,(unsigned short)2>(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 2u)
  {
    return a3;
  }

  else
  {
    return *(a2 + 8 * a1);
  }
}

{
  return ot::Cli::Utils::Stringify<otHistoryTrackerNetDataEvent,(unsigned short)2>(a1, a2, a3);
}

uint64_t ot::Cli::History::Process<428984388969ull>(ot::Cli::History *a1, const char **a2)
{
  v18 = a1;
  v17 = a2;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  v16 = ot::Cli::History::ParseArgs(a1, a2, &v15, &v14);
  if (!v16)
  {
    if (!v15)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)6>(a1, ot::Cli::History::Process<428984388969ull>(ot::Utils::CmdLineParser::Arg *)::kRouteTitles, ot::Cli::History::Process<428984388969ull>(ot::Utils::CmdLineParser::Arg *)::kRouteColumnWidths);
    }

    otHistoryTrackerInitIterator(v13);
    for (i = 0; ; ++i)
    {
      v8 = 1;
      if (v14)
      {
        v8 = i < v14;
      }

      if (!v8)
      {
        break;
      }

      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      v12 = otHistoryTrackerIterateExternalRouteHistory(InstancePtr, v13, &v11);
      if (!v12)
      {
        break;
      }

      otHistoryTrackerEntryAgeToString(v11, v22, 0x15u);
      otIp6PrefixToString(v12, v21, 45);
      ot::Cli::NetworkData::RouteFlagsToString(v12, v19);
      v3 = "%s -> event:%s route:%s flags:%s pref:%s rloc16:0x%04x";
      if (!v15)
      {
        v3 = "| %20s | %-7s | %-43s | %-9s | %-4s | 0x%04x |";
      }

      v7 = v3;
      v6 = ot::Cli::Utils::Stringify<otHistoryTrackerNetDataEvent,(unsigned short)2>(*(v12 + 24), ot::Cli::kSimpleEventStrings, "unknown");
      v4 = ot::Cli::Utils::PreferenceToString(((*(v12 + 20) << 6) >> 6));
      ot::Cli::Utils::OutputLine(a1, v7, v22, v6, v21, v19, v4, *(v12 + 18));
    }
  }

  return v16;
}

uint64_t ot::Cli::History::Process(ot::Cli::History *this, const char **a2)
{
  v17 = this;
  v16 = a2;
  v15 = 35;
  v14 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2) || ot::Utils::CmdLineParser::Arg::operator==(v16, "help"))
  {
    ot::Cli::Utils::OutputCommandTable<ot::Cli::History,(unsigned short)10>(this, &ot::Cli::History::Process(ot::Utils::CmdLineParser::Arg *)::kCommands);
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
    v14 = ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::History>,(unsigned short)10>(&CString, &ot::Cli::History::Process(ot::Utils::CmdLineParser::Arg *)::kCommands, v2, v3, v4, v5);
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

uint64_t ot::Cli::Utils::OutputCommandTable<ot::Cli::History,(unsigned short)10>(uint64_t result, const char **a2)
{
  v2 = result;
  v4 = a2;
  v3 = a2 + 30;
  while (v4 != v3)
  {
    result = ot::Cli::Utils::CommandEntry<ot::Cli::History>::Compare(v4, "reset");
    if (result)
    {
      result = ot::Cli::Utils::OutputLine(v2, "%s", *v4);
    }

    v4 += 3;
  }

  return result;
}

{
  return ot::Cli::Utils::OutputCommandTable<ot::Cli::History,(unsigned short)10>(result, a2);
}

char *ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::History>,(unsigned short)10>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 0xA, 0x18u, ot::BinarySearch::Compare<char *,ot::Cli::Utils::CommandEntry<ot::Cli::History>>, a6);
}

{
  return ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::History>,(unsigned short)10>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::Utils::CommandEntry<ot::Cli::History>::Compare(const char **a1, const char *a2)
{
  return strcmp(a2, *a1);
}

{
  return ot::Cli::Utils::CommandEntry<ot::Cli::History>::Compare(a1, a2);
}

uint64_t ot::Cli::Joiner::Process<16073431636142911865ull>(ot::Cli::Utils *a1, char **a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 7;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    Discerner = otJoinerGetDiscerner(InstancePtr);
    if (Discerner)
    {
      if (*Discerner > 0xFFFFFFFFuLL)
      {
        ot::Cli::Utils::OutputLine(a1, "0x%lx%08lx/%u", HIDWORD(*Discerner), *Discerner, *(Discerner + 8));
      }

      else
      {
        ot::Cli::Utils::OutputLine(a1, "0x%lx/%u", *Discerner, *(Discerner + 8));
      }

      return 0;
    }

    else
    {
      return 23;
    }
  }

  else
  {
    ot::Cli::Utils::ClearAllBytes<otJoinerDiscerner>(v7);
    if (ot::Utils::CmdLineParser::Arg::operator==(v10, "clear"))
    {
      v3 = ot::Cli::Utils::GetInstancePtr(a1);
      return otJoinerSetDiscerner(v3, 0);
    }

    else if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 1)) && !ot::Cli::Utils::ParseJoinerDiscerner(v10, v7))
    {
      v4 = ot::Cli::Utils::GetInstancePtr(a1);
      return otJoinerSetDiscerner(v4, v7);
    }
  }

  return v9;
}

uint64_t ot::Cli::Joiner::Process<25605ull>(ot::Cli::Utils *a1)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  otJoinerGetId(InstancePtr);
  ot::Cli::Utils::OutputExtAddressLine(a1, v2);
  return 0;
}

uint64_t ot::Cli::Joiner::Process<13525664152328030601ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser **a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 7;
  RepeatScan = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    RepeatScan = otJoinerGetRepeatScan(InstancePtr);
    ot::Cli::Utils::OutputLine(a1, "%u", RepeatScan);
    return 0;
  }

  else
  {
    v8 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v9, &RepeatScan, v2);
    if (!v8)
    {
      v4 = ot::Cli::Utils::GetInstancePtr(a1);
      return otJoinerSetRepeatScan(v4, RepeatScan);
    }
  }

  return v8;
}

uint64_t ot::Cli::Joiner::Process<492373686370ull>(ot::Cli::Utils *a1, uint64_t a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    CString = ot::Utils::CmdLineParser::Arg::GetCString(a2);
    v2 = ot::Utils::CmdLineParser::Arg::GetCString((a2 + 8));
    return otJoinerStart(InstancePtr, CString, v2, "OPENTHREAD", "POSIX", "0.01.00", 0, ot::Cli::Joiner::HandleCallback, a1);
  }
}

uint64_t ot::Cli::Joiner::Process<1864361470ull>(ot::Cli::Utils *a1)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  otJoinerStop(InstancePtr);
  return 0;
}

uint64_t ot::Cli::Joiner::Process<428983089745ull>(ot::Cli::Utils *a1)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  State = otJoinerGetState(InstancePtr);
  v3 = otJoinerStateToString(State);
  ot::Cli::Utils::OutputLine(a1, "%s", v3);
  return 0;
}

uint64_t ot::Cli::Joiner::Process(ot::Cli::Joiner *this, const char **a2)
{
  v17 = this;
  v16 = a2;
  v15 = 35;
  v14 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2) || ot::Utils::CmdLineParser::Arg::operator==(v16, "help"))
  {
    ot::Cli::Utils::OutputCommandTable<ot::Cli::Joiner,(unsigned short)6>(this, &ot::Cli::Joiner::Process(ot::Utils::CmdLineParser::Arg *)::kCommands);
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
    v14 = ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Joiner>,(unsigned short)6>(&CString, &ot::Cli::Joiner::Process(ot::Utils::CmdLineParser::Arg *)::kCommands, v2, v3, v4, v5);
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

uint64_t ot::Cli::Utils::OutputCommandTable<ot::Cli::Joiner,(unsigned short)6>(uint64_t result, const char **a2)
{
  v2 = result;
  v4 = a2;
  v3 = a2 + 18;
  while (v4 != v3)
  {
    result = ot::Cli::Utils::CommandEntry<ot::Cli::Joiner>::Compare(v4, "reset");
    if (result)
    {
      result = ot::Cli::Utils::OutputLine(v2, "%s", *v4);
    }

    v4 += 3;
  }

  return result;
}

{
  return ot::Cli::Utils::OutputCommandTable<ot::Cli::Joiner,(unsigned short)6>(result, a2);
}

char *ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Joiner>,(unsigned short)6>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 6, 0x18u, ot::BinarySearch::Compare<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Joiner>>, a6);
}

{
  return ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Joiner>,(unsigned short)6>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::Joiner::HandleCallback(ot::Cli::Utils *a1, int a2)
{
  if (!a2)
  {
    return ot::Cli::Utils::OutputLine(a1, "Join success");
  }

  v3 = otThreadErrorToString(a2);
  return ot::Cli::Utils::OutputLine(a1, "Join failed [%s]", v3);
}

uint64_t ot::Cli::Utils::CommandEntry<ot::Cli::Joiner>::Compare(const char **a1, const char *a2)
{
  return strcmp(a2, *a1);
}

{
  return ot::Cli::Utils::CommandEntry<ot::Cli::Joiner>::Compare(a1, a2);
}

uint64_t ot::Cli::NetworkData::NetworkData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::Cli::Utils::Utils(a1, a2, a3);
  *(a1 + 16) = 0;
  otBorderRouterSetNetDataFullCallback(a2, ot::Cli::NetworkData::HandleNetdataFull, a1);
  return a1;
}

{
  ot::Cli::NetworkData::NetworkData(a1, a2, a3);
  return a1;
}

uint64_t ot::Cli::NetworkData::PrefixFlagsToString(uint64_t result, _BYTE *a2)
{
  v10 = a2;
  if ((*(result + 17) & 4) != 0)
  {
    v10 = a2 + 1;
    *a2 = 112;
  }

  if ((*(result + 17) & 8) != 0)
  {
    v2 = v10++;
    *v2 = 97;
  }

  if ((*(result + 17) & 0x10) != 0)
  {
    v3 = v10++;
    *v3 = 100;
  }

  if ((*(result + 17) & 0x20) != 0)
  {
    v4 = v10++;
    *v4 = 99;
  }

  if ((*(result + 17) & 0x40) != 0)
  {
    v5 = v10++;
    *v5 = 114;
  }

  if ((*(result + 17) & 0x80) != 0)
  {
    v6 = v10++;
    *v6 = 111;
  }

  if ((*(result + 17) & 0x100) != 0)
  {
    v7 = v10++;
    *v7 = 115;
  }

  if ((*(result + 17) & 0x200) != 0)
  {
    v8 = v10++;
    *v8 = 110;
  }

  if ((*(result + 17) & 0x400) != 0)
  {
    v9 = v10++;
    *v9 = 68;
  }

  *v10 = 0;
  return result;
}

uint64_t ot::Cli::NetworkData::OutputPrefix(ot::Cli::Utils *a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  ot::Cli::Utils::OutputIp6Prefix(a1, a2);
  ot::Cli::NetworkData::PrefixFlagsToString(a2, v6);
  if (LOBYTE(v6[0]))
  {
    ot::Cli::Utils::OutputFormat(a1, " %s", v6);
  }

  v2 = ot::Cli::Utils::PreferenceToString(((*(a2 + 17) << 14) >> 14));
  return ot::Cli::Utils::OutputLine(a1, " %s %04x", v2, *(a2 + 20));
}

uint64_t ot::Cli::NetworkData::RouteFlagsToString(uint64_t result, _BYTE *a2)
{
  v4 = a2;
  if ((*(result + 20) & 8) != 0)
  {
    v4 = a2 + 1;
    *a2 = 115;
  }

  if ((*(result + 20) & 4) != 0)
  {
    v2 = v4++;
    *v2 = 110;
  }

  if ((*(result + 20) & 0x20) != 0)
  {
    v3 = v4++;
    *v3 = 97;
  }

  *v4 = 0;
  return result;
}

uint64_t ot::Cli::NetworkData::OutputRoute(ot::Cli::Utils *a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  ot::Cli::Utils::OutputIp6Prefix(a1, a2);
  ot::Cli::NetworkData::RouteFlagsToString(a2, v6);
  if (LOBYTE(v6[0]))
  {
    ot::Cli::Utils::OutputFormat(a1, " %s", v6);
  }

  v2 = ot::Cli::Utils::PreferenceToString(((*(a2 + 20) << 6) >> 6));
  return ot::Cli::Utils::OutputLine(a1, " %s %04x", v2, *(a2 + 18));
}

uint64_t ot::Cli::NetworkData::OutputService(ot::Cli::Utils *a1, unsigned __int8 *a2)
{
  ot::Cli::Utils::OutputFormat(a1, "sid[%u] ", *a2);
  v2 = ot::ToUlong(*(a2 + 1));
  ot::Cli::Utils::OutputFormat(a1, "%lu ", v2);
  ot::Cli::Utils::OutputBytes(a1, a2 + 9, a2[8]);
  ot::Cli::Utils::OutputFormat(a1, " ");
  ot::Cli::Utils::OutputBytes(a1, a2 + 264, a2[263]);
  if (a2[262])
  {
    ot::Cli::Utils::OutputFormat(a1, " s");
  }

  return ot::Cli::Utils::OutputLine(a1, " %04x %u", *(a2 + 256), *a2);
}

uint64_t ot::Cli::NetworkData::Process<112625398707738ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    Length = otNetDataGetLength(InstancePtr);
    ot::Cli::Utils::OutputLine(a1, "%u", Length);
  }

  else
  {
    return 7;
  }

  return v6;
}

uint64_t ot::Cli::NetworkData::Process<4362819052862294378ull>(ot::Cli::Utils *a1, const char **a2)
{
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    MaxLength = otNetDataGetMaxLength(InstancePtr);
    ot::Cli::Utils::OutputLine(a1, "%u", MaxLength);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "reset"))
  {
    v4 = ot::Cli::Utils::GetInstancePtr(a1);
    otNetDataResetMaxLength(v4);
  }

  else
  {
    return 7;
  }

  return v7;
}

uint64_t ot::Cli::NetworkData::Process<3328099188798998309ull>(ot::Cli::Utils *a1, const char **a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "check"))
  {
    v8 = ot::Cli::Utils::ParseJoinerDiscerner(v9 + 1, v6);
    if (v8 == 23)
    {
      v7 = 0;
      v8 = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(v9 + 1, v11);
    }

    if (!v8)
    {
      if (v7)
      {
        InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
        return otNetDataSteeringDataCheckJoinerWithDiscerner(InstancePtr, v6);
      }

      else
      {
        v3 = ot::Cli::Utils::GetInstancePtr(a1);
        return otNetDataSteeringDataCheckJoiner(v3, v11);
      }
    }
  }

  else
  {
    return 7;
  }

  return v8;
}

uint64_t ot::Cli::NetworkData::GetNextPrefix(ot::Cli::Utils *a1, unsigned int *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    return otBorderRouterGetNextOnMeshPrefix(InstancePtr, a2, a3);
  }

  else
  {
    v5 = ot::Cli::Utils::GetInstancePtr(a1);
    return otNetDataGetNextOnMeshPrefix(v5, a2, a3);
  }
}

uint64_t ot::Cli::NetworkData::OutputNetworkData(ot::Cli::NetworkData *this, char a2, unsigned __int16 a3)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  v14 = 0;
  ot::Cli::Utils::OutputLine(this, "Prefixes:");
  while (!ot::Cli::NetworkData::GetNextPrefix(this, &v14, v12, v16 & 1))
  {
    if (v15 == 0xFFFF || v15 == v13)
    {
      ot::Cli::NetworkData::OutputPrefix(this, v12);
    }
  }

  ot::Cli::Utils::OutputLine(this, "Routes:");
  v14 = 0;
  while (!ot::Cli::NetworkData::GetNextRoute(this, &v14, v10, v16 & 1))
  {
    if (v15 == 0xFFFF || v15 == v11)
    {
      ot::Cli::NetworkData::OutputRoute(this, v10);
    }
  }

  ot::Cli::Utils::OutputLine(this, "Services:");
  v14 = 0;
  while (1)
  {
    result = ot::Cli::NetworkData::GetNextService(this, &v14, v23, v16 & 1);
    if (result)
    {
      break;
    }

    if (v15 == 0xFFFF || v15 == v24)
    {
      ot::Cli::NetworkData::OutputService(this, v23);
    }
  }

  if ((v16 & 1) == 0 && v15 == 0xFFFF)
  {
    ot::Cli::Utils::OutputLine(this, "Contexts:");
    v14 = 0;
    while (1)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      if (otNetDataGetNextLowpanContextInfo(InstancePtr, &v14, v8))
      {
        break;
      }

      ot::Cli::Utils::OutputIp6Prefix(this, &v9);
      if (v8[1])
      {
        v5 = 99;
      }

      else
      {
        v5 = 45;
      }

      ot::Cli::Utils::OutputLine(this, " %u %c", v8[0], v5);
    }

    v6 = ot::Cli::Utils::GetInstancePtr(this);
    otNetDataGetCommissioningDataset(v6, v18);
    ot::Cli::Utils::OutputLine(this, "Commissioning:");
    if ((v22 & 2) != 0)
    {
      ot::Cli::Utils::OutputFormat(this, "%u ", v18[1]);
    }

    else
    {
      ot::Cli::Utils::OutputFormat(this, "- ");
    }

    if (v22)
    {
      ot::Cli::Utils::OutputFormat(this, "%04x ", v18[0]);
    }

    else
    {
      ot::Cli::Utils::OutputFormat(this, "- ");
    }

    if ((v22 & 8) != 0)
    {
      ot::Cli::Utils::OutputFormat(this, "%u ", v21);
    }

    else
    {
      ot::Cli::Utils::OutputFormat(this, "- ");
    }

    if ((v22 & 4) != 0)
    {
      ot::Cli::Utils::OutputBytes(this, &v20, v19);
    }

    else
    {
      ot::Cli::Utils::OutputFormat(this, "-");
    }

    if ((v22 & 0x10) != 0)
    {
      ot::Cli::Utils::OutputFormat(this, " e");
    }

    return ot::Cli::Utils::OutputNewLine(this);
  }

  return result;
}

uint64_t ot::Cli::NetworkData::GetNextRoute(ot::Cli::Utils *a1, unsigned int *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    return otBorderRouterGetNextRoute(InstancePtr, a2, a3);
  }

  else
  {
    v5 = ot::Cli::Utils::GetInstancePtr(a1);
    return otNetDataGetNextRoute(v5, a2, a3);
  }
}

uint64_t ot::Cli::NetworkData::GetNextService(ot::Cli::Utils *a1, unsigned int *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    return otServerGetNextService(InstancePtr, a2, a3);
  }

  else
  {
    v5 = ot::Cli::Utils::GetInstancePtr(a1);
    return otNetDataGetNextService(v5, a2, a3);
  }
}

uint64_t ot::Cli::NetworkData::OutputBinary(ot::Cli::NetworkData *this, char a2)
{
  v7 = this;
  v6[8] = a2;
  *&v6[1] = 0;
  v6[0] = -1;
  if (a2)
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    *&v6[1] = otBorderRouterGetNetData(InstancePtr, 0, v8, v6);
  }

  else
  {
    v3 = ot::Cli::Utils::GetInstancePtr(this);
    *&v6[1] = otNetDataGet(v3, 0, v8, v6);
  }

  if (!*&v6[1])
  {
    ot::Cli::Utils::OutputBytesLine(this, v8, v6[0]);
  }

  return *&v6[1];
}

uint64_t ot::Cli::NetworkData::Process<1980428035ull>(ot::Cli::NetworkData *a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 7;
  v8 = -1;
  v7 = 0;
  v6 = 0;
  for (i = 0; !ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 8 * i)); ++i)
  {
    if (ot::Utils::CmdLineParser::Arg::operator==((v10 + 8 * i), "local"))
    {
      v7 = 1;
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==((v10 + 8 * i), "-x"))
    {
      v6 = 1;
    }

    else
    {
      v9 = ot::Utils::CmdLineParser::Arg::ParseAsUint16((v10 + 8 * i), &v8, v2);
      if (v9)
      {
        return v9;
      }
    }
  }

  if ((v7 & 1) != 0 || (v6) && v8 != 0xFFFF)
  {
    return 7;
  }

  else if (v6)
  {
    return ot::Cli::NetworkData::OutputBinary(a1, v7 & 1);
  }

  else
  {
    ot::Cli::NetworkData::OutputNetworkData(a1, v7 & 1, v8);
    return 0;
  }
}

uint64_t ot::Cli::NetworkData::Process<109323266905330ull>(ot::Cli::Utils *a1, uint64_t a2)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  DeviceRole = otThreadGetDeviceRole(InstancePtr);
  v4 = otThreadDeviceRoleToString(DeviceRole);
  if (!strcmp(v4, "disabled") || (v5 = ot::Cli::Utils::GetInstancePtr(a1), otThreadIsDeviceDetached(v5)))
  {
    v10 = 7;
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 8)))
    {
      memset(__b, 0, sizeof(__b));
      ot::Utils::CmdLineParser::Arg::CopyArgsToStringArray(a2, __b, v6);
      strcpy(__dst, __b[0]);
      v7 = strlen(__dst);
      if (!ot::Cli::NetworkData::SetNetdata(a1, __dst, v7, 0, 0))
      {
        ot::Cli::NetworkData::OutputNetworkData(a1, 0, 0xFFFFu);
        return 0;
      }
    }

    else
    {
      return 7;
    }
  }

  else
  {
    v10 = 13;
    ot::Cli::Utils::OutputLine(a1, "Invalid state. To process this decode command , device must be in offline, detached or disabled state.");
  }

  return v10;
}

uint64_t ot::Cli::NetworkData::Process<1797841137ull>(ot::Cli::Utils *a1, const char **a2)
{
  v4 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    if (*(a1 + 16))
    {
      ot::Cli::Utils::OutputLine(a1, "yes", a1);
    }

    else
    {
      ot::Cli::Utils::OutputLine(a1, "no", a1);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "reset"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 1)))
    {
      *(a1 + 16) = 0;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    return 7;
  }

  return v4;
}

uint64_t ot::Cli::NetworkData::Process(ot::Cli::NetworkData *this, const char **a2)
{
  v17 = this;
  v16 = a2;
  v15 = 35;
  v14 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2) || ot::Utils::CmdLineParser::Arg::operator==(v16, "help"))
  {
    ot::Cli::Utils::OutputCommandTable<ot::Cli::NetworkData,(unsigned short)7>(this, &ot::Cli::NetworkData::Process(ot::Utils::CmdLineParser::Arg *)::kCommands);
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
    v14 = ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::NetworkData>,(unsigned short)7>(&CString, &ot::Cli::NetworkData::Process(ot::Utils::CmdLineParser::Arg *)::kCommands, v2, v3, v4, v5);
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

uint64_t ot::Cli::Utils::OutputCommandTable<ot::Cli::NetworkData,(unsigned short)7>(uint64_t result, const char **a2)
{
  v2 = result;
  v4 = a2;
  v3 = a2 + 21;
  while (v4 != v3)
  {
    result = ot::Cli::Utils::CommandEntry<ot::Cli::NetworkData>::Compare(v4, "reset");
    if (result)
    {
      result = ot::Cli::Utils::OutputLine(v2, "%s", *v4);
    }

    v4 += 3;
  }

  return result;
}

{
  return ot::Cli::Utils::OutputCommandTable<ot::Cli::NetworkData,(unsigned short)7>(result, a2);
}

char *ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::NetworkData>,(unsigned short)7>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 7, 0x18u, ot::BinarySearch::Compare<char *,ot::Cli::Utils::CommandEntry<ot::Cli::NetworkData>>, a6);
}

{
  return ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::NetworkData>,(unsigned short)7>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::NetworkData::HandleNetdataFull(uint64_t this)
{
  *(this + 16) = 1;
  return this;
}

{
  return ot::Cli::NetworkData::HandleNetdataFull(this);
}

uint64_t ot::Cli::Utils::CommandEntry<ot::Cli::NetworkData>::Compare(const char **a1, const char *a2)
{
  return strcmp(a2, *a1);
}

{
  return ot::Cli::Utils::CommandEntry<ot::Cli::NetworkData>::Compare(a1, a2);
}

uint64_t ot::Cli::Vendor::ProcessGetVendorAssert(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  v6 = otPlatVendorGenerateAssert(InstancePtr, &v5);
  if (!v6)
  {
    ot::Cli::Utils::OutputLine(this, "VendorAssert=%u", v5);
  }

  return v6;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorAssignedHwMac(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  v5 = this;
  v9 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  AssignedHwMac = otPlatVendorGetAssignedHwMac(InstancePtr, &v9);
  if (!AssignedHwMac)
  {
    v4[9] = v4;
    ot::Cli::Utils::OutputLine(v5, "AssignedHWMac=%x:%x:%x:%x:%x:%x:%x:%x", v9, BYTE1(v9), BYTE2(v9), BYTE3(v9), BYTE4(v9), BYTE5(v9), BYTE6(v9), HIBYTE(v9));
  }

  return AssignedHwMac;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorHardFault(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  ot::Cli::Utils::GetInstancePtr(this);
  HardFault = otPlatVendorGenerateHardFault();
  if (!HardFault)
  {
    ot::Cli::Utils::OutputLine(this, "HardFault");
  }

  return HardFault;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorPower(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  Power = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  Power = otPlatVendorGetPower(InstancePtr, &v5);
  if (!Power)
  {
    ot::Cli::Utils::OutputLine(this, " Power = %f dBm", v5 * 0.25);
  }

  return Power;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorPowerLimitTableVersion(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  PowerLimitTableVersion = otPlatVendorGetPowerLimitTableVersion(InstancePtr, v6, 60);
  if (!PowerLimitTableVersion)
  {
    ot::Cli::Utils::OutputLine(this, "Version = %s", v6);
  }

  return PowerLimitTableVersion;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorPTB(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v15 = this;
  v14 = a2;
  v8 = this;
  PTB = 0;
  v12 = 1300;
  v11 = v5;
  v6 = 1312;
  __chkstk_darwin(this);
  v7 = &v5[-v6];
  v10 = v2;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(v8);
  PTB = otPlatVendorGetPTB(InstancePtr, v7, &v12);
  if (!PTB)
  {
    ot::Cli::Utils::OutputLine(v8, "RCP2 PTB Read data response Size = %d", v12);
    for (i = 0; i < v12; ++i)
    {
      ot::Cli::Utils::OutputLine(v8, "Byte[%d] = 0X%x", i, v7[i]);
    }
  }

  return PTB;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorStackOverflow(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  ot::Cli::Utils::GetInstancePtr(this);
  StackOverflow = otPlatVendorGenerateStackOverflow();
  if (!StackOverflow)
  {
    ot::Cli::Utils::OutputLine(this, "StackOverflow");
  }

  return StackOverflow;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorVersion(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  Version = otPlatVendorGetVersion(InstancePtr, v6, 500);
  if (!Version)
  {
    ot::Cli::Utils::OutputLine(this, "mVersion=%s", v6);
  }

  return Version;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorAssert(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
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
      v7 = otPlatVendorSetAssert(InstancePtr, v6);
      if (!v7)
      {
        ot::Cli::Utils::OutputLine(this, "VendorAssert=%u", v6);
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorAssignedHwMac(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v5 = this;
  *v10 = 0x807060504030201;
  v6 = 8;
  v7 = ot::Utils::CmdLineParser::Arg::ParseAsHexString(a2, v10, 8u);
  if (!v7)
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(v5);
    v7 = otPlatVendorSetAssignedHwMac(InstancePtr, v10);
    if (!v7)
    {
      v4[9] = v4;
      ot::Cli::Utils::OutputLine(v5, "AssignedHWMac=%x:%x:%x:%x:%x:%x:%x:%x", v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7]);
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorPower(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
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
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsInt8(v8, &v6, v2);
    if (!v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      v7 = otPlatVendorSetPower(InstancePtr, &v6);
      if (!v7)
      {
        ot::Cli::Utils::OutputLine(this, " Setting Power as %f dBm", v6 * 0.25);
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessHelp(ot::Cli::Vendor *this)
{
  v9 = &ot::Cli::Vendor::sGetCommands;
  v8 = &ot::Cli::Vendor::sGetCommands;
  v7 = 9;
  v6 = 4;
  ot::Cli::Utils::GetInstancePtr(this);
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    v9 = &ot::Cli::Vendor::sGetCommandsProxima;
    v8 = &ot::Cli::Vendor::sSetCommandsProxima;
    v7 = 3;
    v6 = 2;
  }

  ot::Cli::Utils::OutputLine(this, "GET PROPERTIES:", this);
  for (i = 0; i < v7; ++i)
  {
    ot::Cli::Utils::OutputLine(v3, v9[3 * i]);
  }

  ot::Cli::Utils::OutputLine(v3, "");
  ot::Cli::Utils::OutputLine(v3, "SET PROPERTIES:");
  for (j = 0; j < v6; ++j)
  {
    ot::Cli::Utils::OutputLine(v3, v8[3 * j]);
  }

  return 0;
}

uint64_t ot::Cli::Vendor::ProcessGet(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v14 = 35;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    ot::Cli::Vendor::ProcessHelp(this);
    IgnoreError();
    return 0;
  }

  else
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(a2);
    v13 = ot::Utils::LookupTable::Find<ot::Cli::Vendor::Command,(unsigned short)9>(CString, &ot::Cli::Vendor::sGetCommands, v3, v4, v5, v6);
    if (v13)
    {
      v10 = *(v13 + 1);
      v7 = *(v13 + 2);
      v11 = (this + (v7 >> 1));
      if (v7)
      {
        return (*(*v11 + v10))(v11, a2 + 8);
      }

      else
      {
        return v10(v11, a2 + 8);
      }
    }
  }

  return v14;
}

const char *ot::Utils::LookupTable::Find<ot::Cli::Vendor::Command,(unsigned short)9>(ot::Utils::LookupTable *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *(*a6)(const void *))
{
  return ot::Utils::LookupTable::Find(a1, a2, 9, 0x18u, ot::Utils::LookupTable::GetName<ot::Cli::Vendor::Command>, a6);
}

{
  return ot::Utils::LookupTable::Find<ot::Cli::Vendor::Command,(unsigned short)9>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::Vendor::ProcessSet(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v14 = 35;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    ot::Cli::Vendor::ProcessHelp(this);
    IgnoreError();
    return 0;
  }

  else
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(a2);
    v13 = ot::Utils::LookupTable::Find<ot::Cli::Vendor::Command,(unsigned short)4>(CString, &ot::Cli::Vendor::sSetCommands, v3, v4, v5, v6);
    if (v13)
    {
      v10 = *(v13 + 1);
      v7 = *(v13 + 2);
      v11 = (this + (v7 >> 1));
      if (v7)
      {
        return (*(*v11 + v10))(v11, a2 + 8);
      }

      else
      {
        return v10(v11, a2 + 8);
      }
    }
  }

  return v14;
}

const char *ot::Utils::LookupTable::Find<ot::Cli::Vendor::Command,(unsigned short)4>(ot::Utils::LookupTable *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *(*a6)(const void *))
{
  return ot::Utils::LookupTable::Find(a1, a2, 4, 0x18u, ot::Utils::LookupTable::GetName<ot::Cli::Vendor::Command>, a6);
}

{
  return ot::Utils::LookupTable::Find<ot::Cli::Vendor::Command,(unsigned short)4>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::Vendor::ProcessGetVendorPeek(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v12 = this;
  v11 = a2;
  v10 = 0;
  v9 = 0;
  v8[2] = 0;
  *v8 = ot::Utils::CmdLineParser::Arg::GetArgsLength(a2, a2);
  if (v8[0] != 2)
  {
    ot::Cli::Utils::OutputLine(this, "Usage: get peek [address:32-bit] [count:16-bit]");
  }

  v10 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v11, &v9, v2);
  if (!v10)
  {
    v10 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v11 + 1, &v8[1], v3);
    if (!v10)
    {
      v7 = 0;
      v10 = otPlatPeek(v13, &v7, v9, *&v8[1]);
      ot::Cli::Utils::OutputLine(this, "BytesRead=%u", v7);
      for (i = 0; i < v7; ++i)
      {
        ot::Cli::Utils::OutputLine(this, "Byte[%d]=%x", i, v13[i]);
      }
    }
  }

  return v10;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorCoexRx(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  CoexRxMode = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  CoexRxMode = otPlatVendorGetCoexRxMode(InstancePtr, &v5);
  if (!CoexRxMode)
  {
    switch(v5)
    {
      case 1u:
        ot::Cli::Utils::OutputLine(this, "COEX_RX_REQUEST_MODE_RESERVED");
        break;
      case 2u:
        ot::Cli::Utils::OutputLine(this, "COEX_RX_REQUEST_MODE_PREAMBLE");
        break;
      case 3u:
        ot::Cli::Utils::OutputLine(this, "COEX_RX_REQUEST_MODE_DESTINED");
        break;
      case 4u:
        ot::Cli::Utils::OutputLine(this, "COEX_RX_REQUEST_MODE_MIXED");
        break;
      default:
        ot::Cli::Utils::OutputLine(this, "Unknown Rx Coex Mode");
        break;
    }
  }

  return CoexRxMode;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorCoexRxUpperBound(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  CoexRxMixedModeUpperBound = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  CoexRxMixedModeUpperBound = otPlatVendorGetCoexRxMixedModeUpperBound(InstancePtr, &v5);
  if (!CoexRxMixedModeUpperBound)
  {
    ot::Cli::Utils::OutputLine(this, "Upper bound threshold=%u", v5);
  }

  return CoexRxMixedModeUpperBound;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorCoexRxLowerBound(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  CoexRxMixedModeLowerBound = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  CoexRxMixedModeLowerBound = otPlatVendorGetCoexRxMixedModeLowerBound(InstancePtr, &v5);
  if (!CoexRxMixedModeLowerBound)
  {
    ot::Cli::Utils::OutputLine(this, "Lower bound threshold=%u", v5);
  }

  return CoexRxMixedModeLowerBound;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorCoexTx(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  CoexTxMode = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  CoexTxMode = otPlatVendorGetCoexTxMode(InstancePtr, &v5);
  if (!CoexTxMode)
  {
    switch(v5)
    {
      case 1u:
        ot::Cli::Utils::OutputLine(this, "COEX_TX_REQUEST_MODE_FRAME_READY");
        break;
      case 2u:
        ot::Cli::Utils::OutputLine(this, "COEX_TX_REQUEST_MODE_CCA_START");
        break;
      case 3u:
        ot::Cli::Utils::OutputLine(this, "COEX_TX_REQUEST_MODE_EVERY_CCA_START");
        break;
      case 4u:
        ot::Cli::Utils::OutputLine(this, "COEX_TX_REQUEST_MODE_BEFORE_CCA_REQ_TOGGLE");
        break;
      default:
        ot::Cli::Utils::OutputLine(this, "Unknown COEX_TX_REQUEST_MODE");
        break;
    }
  }

  return CoexTxMode;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorIfsMode(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  IfsMode = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  IfsMode = otPlatVendorGetIfsMode(InstancePtr, &v5);
  if (!IfsMode)
  {
    ot::Cli::Utils::OutputLine(this, "IFSMode=%u", v5);
  }

  return IfsMode;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorIfsMinSifs(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  IfsMinSifs = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  IfsMinSifs = otPlatVendorGetIfsMinSifs(InstancePtr, &v5);
  if (!IfsMinSifs)
  {
    ot::Cli::Utils::OutputLine(this, "MinSIFS=%u", v5);
  }

  return IfsMinSifs;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorIfsMinLifs(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  IfsMinLifs = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  IfsMinLifs = otPlatVendorGetIfsMinLifs(InstancePtr, &v5);
  if (!IfsMinLifs)
  {
    ot::Cli::Utils::OutputLine(this, "MinLIFS=%u", v5);
  }

  return IfsMinLifs;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorGetIfsAckTurnAroundTime(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  IfsAckTurnAroundTime = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  IfsAckTurnAroundTime = otPlatVendorGetIfsAckTurnAroundTime(InstancePtr, &v5);
  if (!IfsAckTurnAroundTime)
  {
    ot::Cli::Utils::OutputLine(this, "AckTurnAroundTime=%u", v5);
    persist_ifs_ackturnaround_time();
  }

  return IfsAckTurnAroundTime;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorGetIfsAckTurnAroundMode(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  IfsAckTurnAroundMode = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  IfsAckTurnAroundMode = otPlatVendorGetIfsAckTurnAroundMode(InstancePtr, &v5);
  if (!IfsAckTurnAroundMode)
  {
    ot::Cli::Utils::OutputLine(this, "AckTurnAroundMode=%u", v5);
    persist_ifs_ackturnaround_mode();
  }

  return IfsAckTurnAroundMode;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorGetIfsAckTurnAroundEnable(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  IfsAckTurnAroundEnable = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  IfsAckTurnAroundEnable = otPlatVendorGetIfsAckTurnAroundEnable(InstancePtr, &v5);
  if (!IfsAckTurnAroundEnable)
  {
    ot::Cli::Utils::OutputLine(this, "AckTurnAroundEnable=%u", v5);
    persist_ifs_ackturnaround_enable();
  }

  return IfsAckTurnAroundEnable;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorIfsAckDataPerNeighbor(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v9 = __chkstk_darwin(this);
  v8 = v2;
  v4 = v9;
  IfsAckDataPerNeighbor = 0;
  v6 = 0;
  IfsAckDataPerNeighbor = otPlatVendorGetIfsAckDataPerNeighbor(v10, &v6);
  if (!IfsAckDataPerNeighbor)
  {
    for (i = 0; i < v6; ++i)
    {
      ot::Cli::Utils::OutputFormat(v4, "[%u] Neighbor Short Address = %04x | Bit field = %04x", i, v10[57 * i], v10[57 * i + 5]);
      ot::Cli::Utils::OutputFormat(v4, " | Extended Address = ");
      ot::Cli::Utils::OutputExtAddress(v4, &v10[57 * i + 1]);
      ot::Cli::Utils::OutputFormat(v4, " | IE data = ");
      ot::Cli::Utils::OutputBytesLine(v4, &v10[57 * i + 6], v10[57 * i + 56]);
    }
  }

  return IfsAckDataPerNeighbor;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorOtRadioCounters(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  OpenThreadRadioCounters = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  OpenThreadRadioCounters = otPlatVendorGetOpenThreadRadioCounters(InstancePtr, v5);
  if (!OpenThreadRadioCounters)
  {
    ot::Cli::Utils::OutputLine(this, "TransmittedFrames=%u", v5[0]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTimeslotEnded=%u", v5[1]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTimeslotDenied=%u", v5[2]);
    ot::Cli::Utils::OutputLine(this, "TxErrorBusyChannelCcaNotStarted=%u", v5[3]);
    ot::Cli::Utils::OutputLine(this, "TxErrorChannelAccessCcaBusy=%u", v5[4]);
    ot::Cli::Utils::OutputLine(this, "TxErrorChannelAccessFailure=%u", v5[5]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTxAborted=%u", v5[6]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTxAbortedCsmaCfgBackoff=%u", v5[7]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTxAbortedCsmaBackoff=%u", v5[8]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTxAbortedCsmaPrepare=%u", v5[9]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTxAbortedIfs=%u", v5[10]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTxAbortedRxAck=%u", v5[11]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTxAbortedCcaTx=%u", v5[12]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTxAbortedTx=%u", v5[13]);
    ot::Cli::Utils::OutputLine(this, "TxErrorNotGranted=%u", v5[14]);
    ot::Cli::Utils::OutputLine(this, "TxErrorInvalidAck=%u", v5[15]);
    ot::Cli::Utils::OutputLine(this, "TxErrorNoAck=%u", v5[16]);
    ot::Cli::Utils::OutputLine(this, "TxErrorAckNoMem=%u", v5[17]);
    ot::Cli::Utils::OutputLine(this, "ReceivedFrames=%u", v5[18]);
    ot::Cli::Utils::OutputLine(this, "RxErrorReceiveFailed=%u", v5[19]);
    ot::Cli::Utils::OutputLine(this, "RxErrorInvalidFrame=%u", v5[20]);
    ot::Cli::Utils::OutputLine(this, "RxErrorDelayedTimeout=%u", v5[21]);
    ot::Cli::Utils::OutputLine(this, "RxErrorInvalidFcs=%u", v5[22]);
    ot::Cli::Utils::OutputLine(this, "RxErrorDestAddrFiltered=%u", v5[24]);
    ot::Cli::Utils::OutputLine(this, "RxErrorRuntimeDelay=%u", v5[25]);
    ot::Cli::Utils::OutputLine(this, "RxErrorTimeslotEnded=%u", v5[26]);
    ot::Cli::Utils::OutputLine(this, "RxErrorAborted=%u", v5[27]);
    ot::Cli::Utils::OutputLine(this, "RxErrorDelayedTimeslotEnded=%u", v5[28]);
    ot::Cli::Utils::OutputLine(this, "RxErrorInvalidLength=%u", v5[29]);
    ot::Cli::Utils::OutputLine(this, "RxErrorInvalidData=%u", v5[30]);
    ot::Cli::Utils::OutputLine(this, "RxErrorAckFailedRadioState[PATH_0]=%u", v5[31]);
    ot::Cli::Utils::OutputLine(this, "RxErrorAckFailedRadioDelay[PATH_0]=%u", v5[33]);
    ot::Cli::Utils::OutputLine(this, "RxErrorAckDenied[PATH_0]=%u", v5[35]);
    ot::Cli::Utils::OutputLine(this, "RxErrorAckAborted[PATH_0]=%u", v5[37]);
    ot::Cli::Utils::OutputLine(this, "RxErrorAckFailedRadioState[PATH_1]=%u", v5[32]);
    ot::Cli::Utils::OutputLine(this, "RxErrorAckFailedRadioDelay[PATH_1]=%u", v5[34]);
    ot::Cli::Utils::OutputLine(this, "RxErrorAckDenied[PATH_1]=%u", v5[36]);
    ot::Cli::Utils::OutputLine(this, "RxErrorAckAborted[PATH_1]=%u", v5[38]);
    ot::Cli::Utils::OutputLine(this, "RxErrorInvalidFcsWhenSwitchingRadioPath=%u", v5[23]);
    ot::Cli::Utils::OutputLine(this, "SleepState=%u", v5[39]);
    ot::Cli::Utils::OutputLine(this, "EnergyDetectedRequests=%u", v5[40]);
    ot::Cli::Utils::OutputLine(this, "EnergyDetectedEvents=%u", v5[41]);
    ot::Cli::Utils::OutputLine(this, "Radio status double notification events=%u", v5[42]);
  }

  return OpenThreadRadioCounters;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorRadioCounters(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  RadioCounters = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  RadioCounters = otPlatVendorGetRadioCounters(InstancePtr, v5);
  if (!RadioCounters)
  {
    ot::Cli::Utils::OutputLine(this, "CcaFailedAttempts=%u", v5[0]);
    ot::Cli::Utils::OutputLine(this, "ReceivedFrames=%u", v5[1]);
    ot::Cli::Utils::OutputLine(this, "ReceivedEnergyEvents=%u", v5[2]);
    ot::Cli::Utils::OutputLine(this, "ReceivedPreambles=%u", v5[3]);
  }

  return RadioCounters;
}

uint64_t ot::Cli::Vendor::ProcessGetMSFState(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  MSFState = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  MSFState = otPlatVendorGetMSFState(InstancePtr, &v5);
  if (!MSFState)
  {
    if (v5)
    {
      ot::Cli::Utils::OutputLine(this, "MSF loaded", this);
    }

    else
    {
      ot::Cli::Utils::OutputLine(this, "MSF not loaded", this);
    }
  }

  return MSFState;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorFaultInfo(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v9 = this;
  v8 = a2;
  FaultInfo = 0;
  v5 = 0u;
  v6 = 0u;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  FaultInfo = otPlatVendorGetFaultInfo(InstancePtr, &v5);
  if (!FaultInfo)
  {
    ot::Cli::Utils::OutputLine(this, "Address=%u", v6);
    ot::Cli::Utils::OutputLine(this, "Line=%u", DWORD1(v6));
    ot::Cli::Utils::OutputLine(this, "RandomId=%u", v5);
    ot::Cli::Utils::OutputLine(this, "CrashCount=%u", WORD4(v6));
    ot::Cli::Utils::OutputLine(this, "CrashType=%u", DWORD1(v5));
    ot::Cli::Utils::OutputLine(this, "Timestamp=%u", DWORD2(v5));
  }

  return FaultInfo;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorDeepSleepFilterList(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v9 = this;
  v8 = a2;
  DeepSleepFilterList = 0;
  v6 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  DeepSleepFilterList = otPlatVendorGetDeepSleepFilterList(InstancePtr, v10, &v6);
  if (!DeepSleepFilterList)
  {
    for (i = 0; i < v6; ++i)
    {
      ot::Cli::Utils::OutputLine(this, "DeepSleepFilterList=%u", v10[i]);
    }
  }

  return DeepSleepFilterList;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorDeepSleepLogLevel(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  DeepSleepLogLevel = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  DeepSleepLogLevel = otPlatVendorGetDeepSleepLogLevel(InstancePtr, &v5);
  if (!DeepSleepLogLevel)
  {
    ot::Cli::Utils::OutputLine(this, "DeepSleepLogLevel=%u", v5);
  }

  return DeepSleepLogLevel;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorDeepSleepRegionLogLevels(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v9 = this;
  v8 = a2;
  DeepSleepRegionLogLevels = 0;
  v6 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  DeepSleepRegionLogLevels = otPlatVendorGetDeepSleepRegionLogLevels(InstancePtr, v10, &v6);
  if (!DeepSleepRegionLogLevels)
  {
    for (i = 0; i < v6; ++i)
    {
      ot::Cli::Utils::OutputLine(this, "%u", v10[i]);
    }
  }

  return DeepSleepRegionLogLevels;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorLastHostWakeReason(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  HostWakeReason = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  HostWakeReason = otPlatVendorGetHostWakeReason(InstancePtr, &v5);
  if (!HostWakeReason)
  {
    ot::Cli::Utils::OutputLine(this, "HostWakeReason=%u", v5);
  }

  return HostWakeReason;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorDeviceId(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  v5 = this;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  DeviceId = otPlatVendorGetDeviceId(InstancePtr, v9);
  if (!DeviceId)
  {
    v4[10] = v4;
    ot::Cli::Utils::OutputLine(v5, "%x:%x:%x:%x:%x:%x:%x:%x", v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7]);
  }

  return DeviceId;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorNcpStateDump(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v33 = this;
  v32 = a2;
  CoexGrantTimeout = 0;
  ot::Cli::Utils::OutputLine(this, "RCP State Dump");
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  State = otBorderAgentGetState(InstancePtr);
  ot::Cli::Utils::OutputFormat(this, "Border Agent State=%d\n", State);
  v29 = 0;
  ot::Cli::Utils::OutputFormat(this, "Role=");
  v3 = ot::Cli::Utils::GetInstancePtr(this);
  DeviceRole = otThreadGetDeviceRole(v3);
  v5 = otThreadDeviceRoleToString(DeviceRole);
  ot::Cli::Utils::OutputLine(this, "%s", v5);
  ot::Cli::Utils::OutputFormat(this, "\nRLOC16=");
  v6 = ot::Cli::Utils::GetInstancePtr(this);
  Rloc = otThreadGetRloc(v6);
  ot::Cli::Utils::OutputIp6Address(this, Rloc);
  v8 = ot::Cli::Utils::GetInstancePtr(this);
  v20 = otJoinerGetState(v8);
  if (v20)
  {
    switch(v20)
    {
      case 1:
        ot::Cli::Utils::OutputFormat(this, "\nJOINER_STATE: %s", "discover");
        break;
      case 2:
        ot::Cli::Utils::OutputFormat(this, "\nJOINER_STATE: %s", "connecting");
        break;
      case 3:
        ot::Cli::Utils::OutputFormat(this, "\nJOINER_STATE: %s", "connected");
        break;
      case 4:
        ot::Cli::Utils::OutputFormat(this, "\nJOINER_STATE: %s", "entrust");
        break;
      case 5:
        ot::Cli::Utils::OutputFormat(this, "\nJOINER_STATE: %s", "joined");
        break;
      default:
        ot::Cli::Utils::OutputFormat(this, "\nJOINER_STATE: unknown");
        break;
    }
  }

  else
  {
    ot::Cli::Utils::OutputFormat(this, "\nJOINER_STATE: %s", "idle");
  }

  v28 = 0;
  v9 = ot::Cli::Utils::GetInstancePtr(this);
  v19 = otCommissionerGetState(v9);
  if (v19)
  {
    if (v19 == 1)
    {
      v28 = 1;
    }

    else if (v19 == 2)
    {
      v28 = 2;
    }
  }

  else
  {
    v28 = 0;
  }

  ot::Cli::Utils::OutputFormat(this, "\nMESHCOP_COMMISSIONER_STATE: %d", v28);
  ot::Cli::Utils::OutputFormat(this, "\nIPV6_ADDRESS_TABLE: \n");
  v10 = ot::Cli::Utils::GetInstancePtr(this);
  for (i = otIp6GetUnicastAddresses(v10); i; i = *(i + 24))
  {
    ot::Cli::Utils::OutputIp6Address(this, i);
    ot::Cli::Utils::OutputFormat(this, "Prefix Length=%d", *(i + 16));
    if (*(i + 18))
    {
      v11 = -1;
    }

    else
    {
      v11 = 0;
    }

    ot::Cli::Utils::OutputFormat(this, "Preferred:%d", v11);
    if ((*(i + 18) & 2) != 0)
    {
      v12 = -1;
    }

    else
    {
      v12 = 0;
    }

    ot::Cli::Utils::OutputFormat(this, "Valid:%d\n", v12);
  }

  ot::Cli::Utils::OutputFormat(this, "\nMSG_BUFFER_COUNTERS\n");
  v13 = ot::Cli::Utils::GetInstancePtr(this);
  otMessageGetBufferInfo(v13, v26);
  ot::Cli::Utils::OutputFormat(this, "\nmTotalBuffers:%u", v26[0]);
  ot::Cli::Utils::OutputFormat(this, "\nmFreeBuffers:%u", v26[1]);
  ot::Cli::Utils::OutputFormat(this, "\nm6loSendMessages:%u", v26[4]);
  ot::Cli::Utils::OutputFormat(this, "\nm6loSendBuffers:%u", v26[5]);
  ot::Cli::Utils::OutputFormat(this, "\nm6loReassemblyMessages:%u", v26[8]);
  ot::Cli::Utils::OutputFormat(this, "\nm6loReassemblyBuffers:%u", v26[9]);
  ot::Cli::Utils::OutputFormat(this, "\nmIp6Messages:%u", v26[12]);
  ot::Cli::Utils::OutputFormat(this, "\nmIp6Buffers:%u", v26[13]);
  ot::Cli::Utils::OutputFormat(this, "\nmMplMessages:%u", v26[16]);
  ot::Cli::Utils::OutputFormat(this, "\nmMplBuffers:%u", v26[17]);
  ot::Cli::Utils::OutputFormat(this, "\nmMleMessages:%u", v26[20]);
  ot::Cli::Utils::OutputFormat(this, "\nmMleBuffers:%u", v26[21]);
  ot::Cli::Utils::OutputFormat(this, "\nmCoapMessages:%u", v26[24]);
  ot::Cli::Utils::OutputFormat(this, "\nmCoapBuffers:%u", v26[25]);
  ot::Cli::Utils::OutputFormat(this, "\nNeighbor Info\n");
  while (1)
  {
    v14 = ot::Cli::Utils::GetInstancePtr(this);
    if (otThreadGetNextNeighborInfo(v14, &v29, v35))
    {
      break;
    }

    ot::Cli::Utils::OutputFormat(this, " neighInfo.mIsChild:%u", (v39 & 8) != 0);
    ot::Cli::Utils::OutputFormat(this, " neighInfo.mRloc16:%u", v36);
    ot::Cli::Utils::OutputFormat(this, " neighInfo.mAverageRssi:%u", v37);
    ot::Cli::Utils::OutputFormat(this, " neighInfo.mLastRssi:%u", v38);
  }

  ot::Cli::Utils::OutputFormat(this, "\nLEADER_NETWORK_DATA\n");
  v25 = -1;
  v15 = ot::Cli::Utils::GetInstancePtr(this);
  otNetDataGet(v15, 0, v34, &v25);
  IgnoreError();
  for (j = 0; j < v25; ++j)
  {
    ot::Cli::Utils::OutputFormat(this, "%x", v34[j]);
  }

  ot::Cli::Utils::OutputFormat(this, "\nMLE_COUNTERS\n");
  v16 = ot::Cli::Utils::GetInstancePtr(this);
  MleCounters = otThreadGetMleCounters(v16);
  if (!MleCounters)
  {
    __assert_rtn("ProcessGetVendorNcpStateDump", "cli_vendor.cpp", 1424, "counters != nullptr");
  }

  ot::Cli::Utils::OutputFormat(this, "\ncounters->mDisabledRole:%u", *MleCounters);
  ot::Cli::Utils::OutputFormat(this, "\ncounters->mDetachedRole:%u", MleCounters[1]);
  ot::Cli::Utils::OutputFormat(this, "\ncounters->mChildRole:%u", MleCounters[2]);
  ot::Cli::Utils::OutputFormat(this, "\ncounters->mRouterRole:%u", MleCounters[3]);
  ot::Cli::Utils::OutputFormat(this, "\ncounters->mLeaderRole:%u", MleCounters[4]);
  ot::Cli::Utils::OutputFormat(this, "\ncounters->mAttachAttempts:%u", MleCounters[5]);
  ot::Cli::Utils::OutputFormat(this, "\ncounters->mPartitionIdChanges:%u", MleCounters[6]);
  ot::Cli::Utils::OutputFormat(this, "\ncounters->mBetterPartitionAttachAttempts:%u", MleCounters[7]);
  ot::Cli::Utils::OutputFormat(this, "\ncounters->mParentChanges:%u", MleCounters[32]);
  v22 = 0;
  v17 = ot::Cli::Utils::GetInstancePtr(this);
  CoexGrantTimeout = otPlatVendorGetCoexGrantTimeout(v17, &v22);
  if (!CoexGrantTimeout)
  {
    ot::Cli::Utils::OutputFormat(this, "\nCoexGrantTimeout:%u", v22);
  }

  return CoexGrantTimeout;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorCoexRx(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
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
      v7 = otPlatVendorSetCoexRxMode(InstancePtr, v6);
      if (!v7)
      {
        persist_coex_rxmode();
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorCoexRxUpperBound(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
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
      v7 = otPlatVendorSetCoexRxMixedModeUpperBound(InstancePtr, v6);
      if (!v7)
      {
        persist_coex_rxthresholdUpperBound();
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorCoexRxLowerBound(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
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
      v7 = otPlatVendorSetCoexRxMixedModeLowerBound(InstancePtr, v6);
      if (!v7)
      {
        persist_coex_rxthresholdLowerBound();
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorCoexTx(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
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
      v7 = otPlatVendorSetCoexTxMode(InstancePtr, v6);
      if (!v7)
      {
        persist_coex_txmode();
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorIfsMode(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
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
      v7 = otPlatVendorSetIfsMode(InstancePtr, v6);
      if (!v7)
      {
        ot::Cli::Utils::OutputLine(this, "IFSMode=%u", v6);
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorIfsMinSifs(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
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
      v7 = otPlatVendorSetIfsMinSifs(InstancePtr, v6);
      if (!v7)
      {
        ot::Cli::Utils::OutputLine(this, "MinSIFS=%u", v6);
      }
    }
  }

  return v7;
}